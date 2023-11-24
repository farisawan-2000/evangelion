#include "common.h"
#include "overlays.h"


INCLUDE_ASM("asm/nonmatchings/code_17E80", func_800AD280);
// void func_800AD280(void) {
//     func_800BD3C0(&ovl8_VRAM, &ovl8_VRAM_END - &ovl8_VRAM);
//     osInvalDCache(&ovl8_BSS_START, &ovl8_BSS_END - &ovl8_BSS_START);
//     func_80099174(&ovl8_ROM_START, &ovl8_VRAM, &ovl8_ROM_END - &ovl8_ROM_START);
//     bzero(&ovl8_BSS_START, &ovl8_BSS_END - &ovl8_BSS_START);
// }


INCLUDE_ASM("asm/nonmatchings/code_17E80", func_800AD348);

INCLUDE_ASM("asm/nonmatchings/code_17E80", func_800AD3AC);

INCLUDE_ASM("asm/nonmatchings/code_17E80", func_800AD67C);
