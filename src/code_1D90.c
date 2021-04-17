#include "common.h"

struct UnkStruct800FF2E4 {
	struct UnkStruct800FF2E4 *unk0;
	struct UnkStruct800FF2E4 *unk4;
	void (*unk8)(struct UnkStruct800FF2E4 *);
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u16 unk1C;
};
extern struct UnkStruct800FF2E4 D_800FF2E4[];

void func_80097190(u16 *arg0) {
    arg0[0] = 0;
    arg0[1] = 0;
}

#ifdef MIPS_TO_C
s8 func_8009719C(void *arg0, s32 arg1) {
    s16 temp_v0_3;
    s8 temp_v0_2;
    s8 temp_v0_4;
    s8 temp_v0_5;
    u16 temp_v0;
    void *temp_a2;
    void *temp_a2_2;
    s8 phi_return;

    temp_a2 = arg1 + (arg0->unk2 * 2);
    phi_return = -1;
    if (*temp_a2 != -1) {
        temp_v0 = arg0->unk0 + 1;
        arg0->unk0 = temp_v0;
        temp_v0_2 = temp_v0 < *temp_a2;
        phi_return = temp_v0_2;
        if (temp_v0_2 == 0) {
            arg0->unk0 = 0;
            temp_v0_3 = arg0->unk2 + 1;
            temp_a2_2 = arg1 + ((temp_v0_3 << 0x10) >> 0xF);
            arg0->unk2 = temp_v0_3;
            temp_v0_4 = temp_a2_2->unk0;
            phi_return = temp_v0_4;
            if (temp_v0_4 == 0) {
                temp_v0_5 = temp_a2_2->unk1;
                arg0->unk2 = temp_v0_5;
                phi_return = temp_v0_5;
            }
        }
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_8009719C.s")
#endif


struct UnkStruct8009721C {
	u32 unk0;
	u16 unk4;
};

void func_8009721C(struct UnkStruct8009721C *arg0) {
    arg0->unk0 = NULL;
    arg0->unk4 = NULL;
}

#ifdef MIPS_TO_C
f32 func_80097228(void *arg0, s32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    s16 temp_v1;
    s8 temp_v0;
    s8 temp_v0_2;
    s8 temp_v1_2;
    void *temp_a2;
    void *temp_a2_2;
    void *phi_a2;
    void *phi_a2_2;
    f32 phi_return;

    temp_a2 = arg1 + (arg0->unk4 * 2);
    phi_return = (bitwise f32) -1;
    if (*temp_a2 != -1) {
        temp_f0 = arg0->unk0 + arg2;
        arg0->unk0 = temp_f0;
        temp_v0 = *temp_a2;
        phi_return = (bitwise f32) temp_v0;
        if (temp_v0 <= temp_f0) {
            phi_a2 = temp_a2;
loop_3:
            temp_v1 = arg0->unk4 + 1;
            temp_a2_2 = arg1 + ((temp_v1 << 0x10) >> 0xF);
            arg0->unk4 = temp_v1;
            arg0->unk0 = arg0->unk0 - *phi_a2;
            temp_v0_2 = temp_a2_2->unk0;
            if (temp_v0_2 == 0) {
                temp_v1_2 = temp_a2_2->unk1;
                arg0->unk4 = temp_v1_2;
                phi_a2_2 = arg1 + ((temp_v1_2 << 0x10) >> 0xF);
block_6:
                temp_f0_2 = *phi_a2_2;
                phi_a2 = phi_a2_2;
                phi_return = temp_f0_2;
                if (temp_f0_2 <= arg0->unk0) {
                    goto loop_3;
                }
            } else {
                phi_a2_2 = temp_a2_2;
                phi_return = (bitwise f32) temp_v0_2;
                if (temp_v0_2 != -1) {
                    goto block_6;
                }
            }
        }
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097228.s")
#endif

#ifdef MIPS_TO_C
void func_80097310(u8 arg0) {
    s32 temp_a0;
    s32 temp_v1;
    void *temp_v0;

    // temp_a0 = arg0 & 0xFF;
    D_800FF2E4[arg0 * 8] = D_800FF320[arg0 * 8];
    temp_v0 = _mainSegNoloadStart[arg0 * 8];
    _mainSegNoloadStart[temp_a0 * 8] = 0;
    D_800FF320[temp_a0 * 8] = temp_v0;
    D_800FF324[temp_a0 * 8] = 0;
    D_800FF360[temp_a0] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097310.s")
#endif

#ifdef MIPS_TO_C
s32 func_80097378(s32 arg0) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s0;
    void *temp_s1;
    void *temp_v1;
    void *phi_s0;
    s32 phi_return;

    temp_a0 = arg0 & 0xFF;
    temp_v1 = (temp_a0 * 4) + &D_800FF360;
    *temp_v1 = 0;
    temp_s0 = *(&D_800FF2E4 + (temp_a0 << 5));
    temp_v0 = temp_s0->unk4;
    phi_s0 = temp_s0;
    phi_return = temp_v0;
    while (temp_v0 != 0) {
loop_1:
        *temp_v1 = *temp_v1 + 1;
        temp_s1 = phi_s0->unk4;
        if (phi_s0->unk8(phi_s0) != 0) {
            func_80097534(phi_s0);
        }
        temp_v0_2 = temp_s1->unk4;
        phi_s0 = temp_s1;
        phi_return = temp_v0_2;
        if (temp_v0_2 != 0) {
            goto loop_1;
        }
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097378.s")
#endif

#ifdef MIPS_TO_C
void *func_80097418(void *arg0, ?32 arg1, s16 arg2, s8 arg3) {
    s32 temp_v1;
    void *temp_s0;
    void *temp_v0;
    void *temp_v1_2;
    void *temp_v1_3;
    void *phi_a0;
    s32 phi_v1;
    void *phi_v1_2;
    void *phi_v1_3;
    void *phi_return;

    temp_s0 = func_800C998C(0x20);
    if (temp_s0 == 0) {
        func_800CA4D0();
    }
    phi_a0 = temp_s0;
    phi_v1 = 0;
loop_3:
    *phi_a0 = 0;
    temp_v1 = phi_v1 + 1;
    phi_a0 = phi_a0 + 1;
    phi_v1 = temp_v1;
    if (temp_v1 < 0x20) {
        goto loop_3;
    }
    temp_v1_2 = *(&D_800FF2E4 + ((arg3 & 0xFF) << 5));
    phi_v1_2 = temp_v1_2;
    phi_v1_3 = temp_v1_2;
    if (temp_v1_2->unk4 != 0) {
loop_5:
        phi_v1_3 = phi_v1_2;
        if ((arg2 & 0xFFFF) >= phi_v1_2->unk10) {
            temp_v1_3 = phi_v1_2->unk4;
            phi_v1_2 = temp_v1_3;
            phi_v1_3 = temp_v1_3;
            if (temp_v1_3->unk4 != 0) {
                goto loop_5;
            }
        }
    }
    temp_v0 = *phi_v1_3;
    temp_v0->unk4 = temp_s0;
    *phi_v1_3 = temp_s0;
    temp_s0->unk0 = temp_v0;
    temp_s0->unk4 = phi_v1_3;
    temp_s0->unk8 = arg0;
    temp_s0->unkC = arg1;
    temp_s0->unk10 = arg2;
    temp_s0->unk12 = arg3;
    temp_s0->unk14 = 0;
    temp_s0->unk18 = 0;
    temp_s0->unk1C = 0;
    phi_return = temp_s0;
    if (arg0(temp_s0) != 0) {
        func_80097534(temp_s0);
        phi_return = NULL;
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097418.s")
#endif

#ifdef THIRD_IMPACT
void func_80097534(struct UnkStruct800FF2E4 *arg0) {
    struct UnkStruct800FF2E4 *temp_v0;
    struct UnkStruct800FF2E4 *temp_v1;

    temp_v1 = arg0->unk0;
    temp_v0 = arg0->unk4;
    temp_v1->unk4 = temp_v0;
    temp_v0->unk0 = temp_v1;
    func_800C9A84(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097534.s")
#endif
 
#ifdef THIRD_IMPACT
void func_80097560(struct UnkStruct800FF2E4 *arg0) {
    struct UnkStruct800FF2E4 *temp_v0;
    struct UnkStruct800FF2E4 *temp_v1;

    arg0->unk1C = 0xFFFF;
    arg0->unk8(arg0);
    temp_v1 = arg0->unk0;
    temp_v0 = arg0->unk4;
    temp_v1->unk4 = temp_v0;
    temp_v0->unk0 = temp_v1;
    func_800C9A84(arg0);
}
#else 
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097560.s")
#endif 

#ifdef MIPS_TO_C
void func_800975AC(void (*arg0)(struct UnkStruct800FF2E4 *), u8 arg1) {
    struct UnkStruct800FF2E4 *temp_v0;
    s32 temp_v0_3;
    struct UnkStruct800FF2E4 *temp_s0;
    struct UnkStruct800FF2E4 *temp_s1;
    struct UnkStruct800FF2E4 *temp_v0_2;
    struct UnkStruct800FF2E4 *temp_v1;
    struct UnkStruct800FF2E4 *phi_s0;
    s32 phi_return;

    phi_s0 = &D_800FF2E4[arg1 * 8];
    temp_v0 = phi_s0->unk4;
    while (temp_v0 != NULL) {
        if (phi_s0->unk8 == arg0) {
            phi_s0->unk1C = 0xFFFF;
            phi_s0->unk8(phi_s0);
            temp_v1 = phi_s0->unk0;
            temp_v0 = phi_s0->unk4;
            temp_v1->unk4 = temp_v0;
            temp_v0->unk0 = temp_v1;
            func_800C9A84(phi_s0);
        }
        temp_v0 = phi_s0->unk4->unk4;
        phi_s0 = phi_s0->unk4;
    }

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_800975AC.s")
#endif

#ifdef G3
extern u32 D_800FF360[];
s32 func_80097650(u8 arg0) {
	return D_800FF360[arg0];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/code_1D90/func_80097650.s")
#endif
