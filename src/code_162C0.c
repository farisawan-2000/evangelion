// c_flag_g2
#include "common.h"
#include "overlays.h"

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
