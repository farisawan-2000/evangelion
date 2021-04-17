#include "common.h"

extern u8 _ovl8SegmentRomEnd[];

extern u8 _ovl8SegmentStart[], _ovl8SegmentEnd[];

extern u8 _ovl8_dataSegmentStart[];

extern u8 D_803A9200[], D_803B3EC0[];

extern u8 _ovl8SegmentRomStart[];

#ifdef NON_MATCHING
void func_800AD280(void) {
    func_800BD3C0(_ovl8SegmentStart, _ovl8SegmentEnd - _ovl8SegmentStart);
    func_80099174(_ovl8SegmentRomStart, _ovl8SegmentStart, _ovl8SegmentRomEnd - _ovl8SegmentRomStart);
    func_800BD310(_ovl8_dataSegmentStart, D_803A9200 - _ovl8_dataSegmentStart);
    bzero(D_803A9200, D_803B3EC0 - D_803A9200);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_17E80/func_800AD280.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/code_17E80/func_800AD348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_17E80/func_800AD3AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_17E80/func_800AD67C.s")



