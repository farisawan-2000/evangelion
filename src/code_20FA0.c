#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/code_20FA0/func_800B63A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_20FA0/func_800B64B4.s")

#ifdef _
s32 func_800B666C(s32 arg0, ?32 arg1, s32 arg2, u32 arg3) {
    s32 temp_a0;
    s32 temp_v0;
    u16 temp_a1;
    u32 temp_hi;
    void *temp_a2;
    void *temp_t0;
    u16 phi_a1;

    temp_t0 = D_8010ADA0;
    temp_a2 = (arg2 * 8) + D_8014A2C4;
    temp_t0->unk40 = arg0;
    temp_t0->unk44 = arg1;
    temp_t0->unk14 = arg3 >> 0x10;
    temp_a1 = D_800F182C;
    temp_t0->unk20 = temp_a2->unk0;
    temp_t0->unk8 = arg3 & 0xFFFF;
    temp_t0->unkC = D_8016D6B8;
    temp_t0->unk28 = temp_a2->unk4;
    if ((temp_a1 & 4) != 0) {
        D_800F182C = temp_a1 ^ 4;
        temp_t0->unk14 = temp_t0->unk14 | 2;
    }
    D_800F182C = arg3;
    if ((arg3 & 1) != 0) {
        temp_hi = (D_80149FA0 + 1) % D_800F1820;
        D_8010ADA0->unk54 = &D_8010ADA6;
        D_80149FA0 = temp_hi;
        D_8016D6B8 = *((temp_hi * 4) + D_8016D7E8);
        phi_a1 = temp_hi;
    } else {
        D_8010ADA0->unk54 = &D_8010ADA4;
        phi_a1 = temp_a1;
    }
    temp_a0 = func_800B8B70(1, phi_a1, temp_a2);
    D_8016D060 = D_8016D060 + 1;
    func_800B8B70(temp_a0);
    func_800BD440();
    func_800C0930(&D_8016DCAC, D_8010ADA0, 1);
    temp_v0 = *D_8010ADA0;
    D_8010ADA0 = temp_v0;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_20FA0/func_800B666C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/code_20FA0/func_800B67E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_20FA0/func_800B6820.s")
