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
extern struct UnkStruct800FF2E4 *D_800FF2E4[];

INCLUDE_ASM(s32, "code_1D90", func_80097190);

INCLUDE_ASM(s32, "code_1D90", func_8009719C);

INCLUDE_ASM(s32, "code_1D90", func_8009721C);

INCLUDE_ASM(s32, "code_1D90", func_80097228);

INCLUDE_ASM(s32, "code_1D90", func_80097310);

INCLUDE_ASM(s32, "code_1D90", func_80097378);

INCLUDE_ASM(s32, "code_1D90", func_80097418);

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
INCLUDE_ASM(s32, "code_1D90", func_80097534);
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
INCLUDE_ASM(s32, "code_1D90", func_80097560);
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

    phi_s0 = D_800FF2E4[arg1 * 8];
    temp_v0 = temp_s0->unk4;
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
INCLUDE_ASM(s32, "code_1D90", func_800975AC);
#endif

extern u32 D_800FF360[];
s32 func_80097650(u8 arg0) {
	return D_800FF360[arg0];
}
