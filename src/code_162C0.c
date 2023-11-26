// c_flag_g2
#include "common.h"
#include "overlays.h"

#define OVERLAY_ENTRY(nm) { \
    &nm ## _ROM_START, \
    &nm ## _ROM_END, \
    &nm ## _VRAM, \
    &nm ## _VRAM_END, \
    &nm ## _TEXT_START, \
    &nm ## _TEXT_END, \
    &nm ## _DATA_START, \
    &nm ## _DATA_END, \
    &nm ## _BSS_START, \
    &nm ## _BSS_END, \
}

Overlay gOverlayTable[] = {
    OVERLAY_ENTRY(ovl1),
    OVERLAY_ENTRY(ovl2),
    OVERLAY_ENTRY(ovl3),
    OVERLAY_ENTRY(ovl4),
    OVERLAY_ENTRY(ovl5),
    OVERLAY_ENTRY(ovl6),
    OVERLAY_ENTRY(ovl7),
};

u16 D_800D5068[] = {
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0001,
    0x0002,
    0x0003,
    0x0004,
    0x0005,
    0x0006,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
    0x0002,
    0x0002,
    0x0001,
    0x0006,
    0x0006,
    0x0006,
    0x0002,
    0x0002,
    0x0002,
    0x0002,
    0x0002,
    0x0006,
    0x0005,
    0x0002,
    0x0002,
    0x0002,
    0x0002,
    0x0002,
    0x0004,
    0x0001,
    0x0002,
    0x0000,
    0x0002,
    0x0002,
    0x0001,
    0x0002,
    0x0002,
    0x0001,
    0x0002,
    0x0006,
    0x0002,
    0x0002,
    0x0006,
    0x0006,
    0x0006,
    0x0004,
    0x0006,
    0x0006,
    0x0005,
    0x0006,
    0x0006,
    0x0005,
    0x0006,
    0x0006,
    0x0004,
    0x0006,
    0x0006,
    0x0001,
    0x0006,
    0x0006,
    0x0005,
    0x0006,
    0x0006,
    0x0005,
    0x0006,
    0x0006,
    0x0004,
    0x0006,
    0x0006,
    0x0001,
    0x0006,
    0x0001,
    0x0006,
    0x0001,
    0x0001,
};

u16 D_800D5114 = 0;
s16 D_800D5116 = -1;
u16 D_800D5118 = 0;
u16 D_800D511A = 0;

u8 D_800D511C = 0;
u8 D_800D511D = 0;

u16 D_800D5120[] = {
    0x0000,
    0x002B,
    0x002F,
    0x0033,
    0x0037,
    0x003A,
    0x003D,
    0x0040,
    0x0043,
    0x0046,
    0x0049,
    0x004C,
    0x004F,
    0x0051,
    0x0053,
    0x0000,
};

void func_800AB6C0(s16 arg0) {
    u32 textStart;
    u32 dataStart;
    u32 dataSize;
    u32 dramStart;
    u32 bssStart;
    u32 bssSize;
    u32 romStart;
    u32 romSize;

    romStart = gOverlayTable[arg0].romStart;
    romSize = gOverlayTable[arg0].romEnd - romStart;
    dramStart = gOverlayTable[arg0].dramStart;
    textStart = gOverlayTable[arg0].textStart;
    dataStart = gOverlayTable[arg0].dataStart;
    dataSize = gOverlayTable[arg0].dataEnd - dataStart;
    bssStart = gOverlayTable[arg0].bssStart;
    bssSize = gOverlayTable[arg0].bssEnd - bssStart;
    func_800BD3C0(textStart, gOverlayTable[arg0].textEnd - textStart);
    osInvalDCache(dataStart, dataSize);
    func_80099174(romStart, dramStart, romSize);
    bzero(bssStart, bssSize);
}

INCLUDE_ASM("asm/nonmatchings/code_162C0", func_800AB7CC);

INCLUDE_ASM("asm/nonmatchings/code_162C0", func_800AB7DC);

INCLUDE_ASM("asm/nonmatchings/code_162C0", func_800AB834);

INCLUDE_ASM("asm/nonmatchings/code_162C0", func_800AB8A4);

INCLUDE_ASM("asm/nonmatchings/code_162C0", func_800AB8D4);
