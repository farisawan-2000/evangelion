from pathlib import Path
from typing import Optional

from splat.segtypes.segment import Segment
from splat.segtypes.n64.rgba16 import N64SegRgba16
from splat.segtypes.n64.i4 import N64SegI4

from splat.util import options, log

import sys
sys.path.append(str(options.opts.base_path / "tools"))

# from rncu import RncUnpackerMethod1


from ctypes import CDLL, Structure, byref, c_bool, c_uint32, c_uint8, cdll
from struct import pack, unpack_from
from typing import Literal, Optional

from splat.util import options, log
# try:
#     from .. import log
    # from .decompressor import Decompressor
# except ImportError:
#     print(f"Run as python3 -m util.n64.Yay0decompress")
#     sys.exit(1)

tried_loading = False
lib: Optional[CDLL] = None


def setup_lib():
    global lib
    global tried_loading
    if lib:
        return True
    if tried_loading:
        return False
    tried_loading = True
    try:
        lib = cdll.LoadLibrary(
            os.path.dirname(os.path.realpath(__file__)) + "/Yay0decompress"
        )
        return True
    except Exception:
        log.write(
            "Failed to load Yay0 C library; falling back to Python method",
            status="warn",
        )
        tried_loading = True
        return False


class Yay0Decompressor():
    @staticmethod
    def decompress(in_bytes, byte_order: Literal["little", "big"] = "big") -> bytearray:
        # attempt to load the library only once per execution
        global lib
        if not setup_lib():
            return Yay0Decompressor.decompress_python(in_bytes, byte_order)
        assert lib is not None

        class Yay0(Structure):
            _fields_ = [
                ("magic", c_uint32),
                ("uncompressedLength", c_uint32),
                ("opPtr", c_uint32),
                ("dataPtr", c_uint32),
            ]

        # read the file header
        bigEndian = byte_order == "big"
        if bigEndian:
            # the struct is only a view, so when passed to C it will keep
            # its BigEndian values and crash. Explicitly convert them here to little
            hdr = Yay0.from_buffer_copy(
                pack("<IIII", *unpack_from(">IIII", in_bytes, 0))
            )
        else:
            hdr = Yay0.from_buffer_copy(in_bytes, 0)

        magic = getattr(hdr, hdr._fields_[0][0])
        if magic != int.from_bytes(str.encode("Yay0"), byteorder="big"):
            log.error(f"Yay0 magic is incorrect: {magic}")

        # create the input/output buffers, copying data to in
        src = (c_uint8 * len(in_bytes)).from_buffer_copy(in_bytes, 0)
        dst = (c_uint8 * hdr.uncompressedLength)()

        # call decompress, equivilant to, in C:
        # decompress(&hdr, &src, &dst, bigEndian)
        lib.decompress(byref(hdr), byref(src), byref(dst), c_bool(bigEndian))

        # other functions want the results back as a non-ctypes type
        return bytearray(dst)

    @staticmethod
    def decompress_python(in_bytes, byte_order: Literal["little", "big"] = "big"):
        if in_bytes[:4] != b"Yay0":
            log.error("Input file is not Yay0")

        decompressed_size = int.from_bytes(in_bytes[4:8], byteorder=byte_order)
        link_table_offset = int.from_bytes(in_bytes[8:12], byteorder=byte_order)
        chunk_offset = int.from_bytes(in_bytes[12:16], byteorder=byte_order)

        link_table_idx = link_table_offset
        chunk_idx = chunk_offset
        other_idx = 16

        mask_bit_counter = 0
        current_mask = 0

        # preallocate result and index into it
        idx = 0
        ret = bytearray(decompressed_size)

        while idx < decompressed_size:
            # If we're out of bits, get the next mask
            if mask_bit_counter == 0:
                current_mask = int.from_bytes(
                    in_bytes[other_idx : other_idx + 4], byteorder=byte_order
                )
                other_idx += 4
                mask_bit_counter = 32

            if current_mask & 0x80000000:
                ret[idx] = in_bytes[chunk_idx]
                idx += 1
                chunk_idx += 1
            else:
                link = int.from_bytes(
                    in_bytes[link_table_idx : link_table_idx + 2], byteorder=byte_order
                )
                link_table_idx += 2

                offset = idx - (link & 0xFFF)

                count = link >> 12

                if count == 0:
                    count_modifier = in_bytes[chunk_idx]
                    chunk_idx += 1
                    count = count_modifier + 18
                else:
                    count += 2

                # Copy the block
                for i in range(count):
                    ret[idx] = ret[offset + i - 1]
                    idx += 1

            current_mask <<= 1
            mask_bit_counter -= 1

        return ret





IMAGE_FORMAT_LOOKUP = {
    "rgba16": N64SegRgba16,
    "i4": N64SegI4,
}

def get_mipmap_size(width, height, typ):
    # FIXME
    return 0xab8


class N64SegYay0_image(Segment):
    def __init__(self, rom_start, rom_end, type, name, vram_start, args, yaml):
        self.logname = "yay0_image"
        super().__init__(rom_start, rom_end, type, name, vram_start, args=args, yaml=yaml),
        if len(self.args) > 0:
            self.subtype = self.args[0]
            if self.subtype in ("i4", "rgba16"):
                if len(self.args) < 3:
                    log.error(f"Error: {self.name} is missing 'width' and 'height' parameters")
                self.width = self.args[1]
                self.height = self.args[2]
                # append type to filename
                self.name += f".{self.subtype}"
            else:
                log.error(f"Error: '{self.logname}' segment only supports 'i4' and 'rgba16' subtypes in list form")
        elif isinstance(yaml, dict):
            self.subtype = yaml["subtype"]
            if self.subtype == "mipmap":
                log.write("mipmap found")
                self.name += f".{self.subtype}"
                self.subsegments = yaml["subsegments"]
            else:
                log.error(f"Error: '{self.logname}' segment only supports 'mipmap' subtype in list form")
        else:
            self.subtype = None
        # append .yay0
        self.name += ".yay0"

    def out_path(self) -> Optional[Path]:
        return options.opts.asset_path / self.dir / f"{self.name}"

    def split(self, rom_bytes):
        # stage 1: decompression
        path = self.out_path()
        path.parent.mkdir(parents=True, exist_ok=True)
        y0d = Yay0Decompressor();
        unpacked = y0d.decompress(rom_bytes[self.rom_start:self.rom_end])
        # with path.open("wb") as f:
        #     f.write(unpacked)

        # stage 2: decoding
        if self.subtype is not None:
            if self.subtype == "rgba16":
                yaml = [None, None, None, self.width, self.height]
                seg = N64SegRgba16(0, len(unpacked), self.subtype, self.name, self.vram_start, [], yaml)
                seg.split(unpacked)
            elif self.subtype == "i4":
                yaml = [None, None, None, self.width, self.height]
                seg = N64SegI4(0, len(unpacked), self.subtype, self.name, self.vram_start, [], yaml)
                seg.split(unpacked)
            # elif self.subtype == "ci4":
            #     yaml = [None, None, None, self.width, self.height]
            #     seg = N64SegCI4(0, len(unpacked), self.subtype, self.name, self.vram_start, [], yaml)
            #     seg.split(unpacked)
            elif self.subtype == "mipmap":
                offset = 0
                for subsegment in self.subsegments:
                    id, typ, width, height = subsegment
                    expected_len = get_mipmap_size(width, height, typ)
                    yaml = {
                        "width": width,
                        "height": height,
                        "mipmap": True,
                    }

                    name = self.name + f".{id}.{typ}"

                    img_func = IMAGE_FORMAT_LOOKUP.get(typ, None)
                    if img_func is None:
                        log.error(f"Error: Unexpected image format for mipmap: {typ}")

                    seg = img_func(0, expected_len, typ, name, self.vram_start, [], yaml)
                    seg.split(unpacked[offset:offset+expected_len])
                    offset += expected_len
            else:
                log.error(f"Error: Unsupported subtype: {self.subtype}")
