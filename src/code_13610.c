#include "common.h"

void func_800A8D78(void);
extern Gfx *D_801001D8[];
extern Gfx *D_801001F0[];
void func_800A8B34(void);
extern s32 D_800D4960;


#ifdef G3
void thread3_main(void *arg) {
    s32 i;

    func_800B6230(func_800A8D78);
    func_800B6A30();
    func_800A9140();
    func_80098E60();
    func_800A9180();
    func_800A91F4();
    func_800A9258();
    func_800A93C4();
    func_800A97EC();
    func_800A97FC();
    func_800A9848();
    func_800A9898(0);

    for (i = 0; i < 5; i++) {
        D_801001D8[i] = 0;
        D_801001F0[i] = 0;
    }
    func_800A8DAC();
    func_800B6AC0(1, 0);
    func_800B6AC0(2, 0);
    func_800B6AC0(3, 0);
    func_800B6A60();
    func_800B67E0(&func_800A8B34);
    while (D_800D4960 == 0);
    while (1) {
        func_800B6A30();
        func_800A9140();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/thread3_main.s")
#endif

#ifdef MIPS_TO_C
void func_800A8B34(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_s0;
    u32 temp_a0_6;
    u32 temp_s0_2;

    temp_s0 = D_80149FC0;
    func_8009B048();
    if (D_80149FC4 != 0) {
        D_8014A2CC = D_8014A2CC ^ 1;
    }
    D_801001D0 = &D_8016E5A0;
    D_8014A0C4 = D_8014A0C4 ^ 1;
    func_800A8DAC();
    func_8009953C();
    func_800A93B4();
    func_800A99B4();
    if (D_80149FC4 != 0) {
        func_800A8E40();
        func_800A8F14();
        func_800A9098();
    }
    if (D_800D4960 == 0) {
        temp_a0 = D_801001D8;
        temp_a1 = ((D_801001F0 - temp_a0) >> 3) * 8;
        if (temp_a1 != 0) {
            func_800B666C(temp_a0, temp_a1, 5, 0);
        }
        temp_a0_2 = D_801001DC;
        temp_a1_2 = ((D_801001F4 - temp_a0_2) >> 3) * 8;
        if (temp_a1_2 != 0) {
            func_800B666C(temp_a0_2, temp_a1_2, 0, 0);
        }
        temp_a0_3 = D_801001E0;
        temp_a1_3 = ((D_801001F8 - temp_a0_3) >> 3) * 8;
        if (temp_a1_3 != 0) {
            func_800B666C(temp_a0_3, temp_a1_3, 5, 0);
        }
        if ((D_80149BBC != 0) && (D_80149FC4 == 0)) {
            func_800A9010();
            temp_a0_4 = D_801001E8;
            func_800B666C(temp_a0_4, ((D_80100200 - temp_a0_4) >> 3) * 8, 5, 0);
        }
        if (D_8016D16C != 0) {
            temp_a0_5 = D_801001E4;
            temp_a1_4 = ((D_801001FC - temp_a0_5) >> 3) * 8;
            if (temp_a1_4 != 0) {
                func_800B666C(temp_a0_5, temp_a1_4, 4, 0);
            }
        }
        func_800B6880();
        temp_a0_6 = D_80149F90;
        temp_s0_2 = D_80149FC0 - temp_s0;
        if ((temp_s0_2 < temp_a0_6) && (temp_a0_6 >= 2)) {
            func_800B68A0(temp_a0_6 - temp_s0_2);
        }
        func_800A93AC();
        func_800A93BC();
        func_800B6AC0(0, D_8016D5B4 != 0);
        func_800B71B0(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A8B34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A8D78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A8DAC.s")

extern Gfx *gDisplayListHead;

extern Gfx *D_801001E0[], *D_801001F4[], *D_801001F8[];
extern Gfx *D_801001D0, *D_801001DC;
extern s32 D_80149BA4;

extern s32 *D_8016D0E8;


s32 func_8009C06C();
#ifdef G3
void func_800A8E40(void) {
    D_801001DC = gDisplayListHead = D_801001D0;

    if (0) {
        func_8009C06C();
    }

    func_8009C06C();
    func_8009CA18(&D_8016D0E8);
    D_80149BA4++;
    func_80097378(0);
    func_800AB8D4();
    func_80097378(1);
    func_800A87F0(0);
    func_8009CBC0(&D_8016D0E8);
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);
    D_801001F4[0] = gDisplayListHead;
    D_801001D0 = gDisplayListHead;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A8E40.s")
#endif

#ifdef _
void func_800A8F14(void) {
    func_800A9470();
    func_800A97F4();
    func_800A9804();
    gDisplayListHead = D_801001D0;
    D_801001E0[0] = gDisplayListHead;
    func_800A2B04(0);
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);
    D_801001D8[0] =
    D_801001D0 =
    D_801001F8[0] =
        gDisplayListHead;
    func_800A2B04(1);
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);
    D_801001D0 =
    D_801001F0[0] =
    gDisplayListHead;
    func_800A28E0();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A8F14.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9098.s")

#ifdef _
void func_800A9140(void) {
    bzero(0x802D4000, 0x96000);
    bzero(0x8036A000, 0x96000);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9140.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9180.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A91F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A93AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A93B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A93BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A93C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9470.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A96BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9748.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A97DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A97EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A97F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A97FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A980C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9848.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A99B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9E4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800A9FA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_13610/func_800AA0D0.s")
