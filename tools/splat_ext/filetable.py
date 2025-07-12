from pathlib import Path
from typing import Optional

from splat.segtypes.n64.segment import N64Segment
from splat.segtypes.n64.rgba16 import N64SegRgba16
from splat.segtypes.n64.i4 import N64SegI4

from splat.util import options, log
from splat.util.n64.Yay0decompress import Yay0Decompressor

import sys
sys.path.append(str(options.opts.base_path / "tools"))

class N64SegFiletable(N64Segment):
    def __init__(self, rom_start, rom_end, type, name, vram_start, args, yaml):
        self.logname = "filetable"
        super().__init__(rom_start, rom_end, type, name, vram_start, args=args, yaml=yaml),
        if len(self.args) > 0:
            self.name = self.args[0]
        elif isinstance(yaml, dict):
            self.subtype = None
            pass
        else:
            self.subtype = None

    def out_path(self) -> Optional[Path]:
        return options.opts.asset_path / self.dir / f"{self.name}"

    def split(self, rom_bytes):
        # stage 1: decompression
        pass
