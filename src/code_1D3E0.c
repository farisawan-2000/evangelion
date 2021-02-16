#include "common.h"

extern u32 D_80102BB0, D_80102BB4;

void func_800B27E0(s32 arg0, s32 arg1) {
    func_800B2880(arg0, 0, arg1);
    func_800BCB50(&D_80102BB0, arg0, arg1);
}

void func_800BCB90(s32, f32, u32 *, u32, s32);
void func_800B282C(s32 arg0) {
    func_800BCB90(0, 0.0f, &D_80102BB0, 1, arg0);
}

s32 func_800B285C(void) {
    return D_80102BB4 - D_80102BB0;
}

#ifdef THIRD_IMPACT
u32 *func_800B2874(void) {
    return &D_80102BB0;
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B2874);
#endif

// reserves stack for some reason
#ifdef NON_MATCHING
void func_800B2880(u8 *arg0, s8 arg1, s32 arg2) {
    s32 phi_v0;

    if (arg2 != 0) {
        phi_v0 = arg2 - 1;
		do {
	        *arg0++ = arg1;
	    } while (--phi_v0 != -1);
    }
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B2880);
#endif

// it's 2 loops, what can you do?
#ifdef NON_MATCHING
void func_800B28AC(u32 arg0, u32 arg1, s32 arg2) {
    u8 *a0;
    u8 *a1;

    if (arg1 < arg0) {
        a0 = arg0 + arg2;
        a1 = arg1 + arg2;
        while (--arg2 != -1) {
            *a0-- = *a1--;
        }
    } else {
        while (--arg2 != -1) {
            *a0++ = *a1++;
        }
    }
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B28AC);
#endif

#ifdef MIPS_TO_C
s32 func_800B2924(s32 arg0, s32 arg1, u32 arg2, s32 arg3) {
    s32 temp_v1;
    u32 temp_hi;
    u32 temp_v0;

    temp_v1 = ((MULTU_HI((((arg0 * arg1) + arg2) - 1) / arg2, 0xB21642C9) >> 7) + 1) * 0xB8;
    temp_hi = MULTU_HI(temp_v1 * arg3, 0x51EB851F);
    D_80102BC0 = temp_v1;
    D_80102BC4 = temp_v1 - 0xB8;
    D_80102BC8 = temp_v1 + 0xB8;
    temp_v0 = temp_hi >> 5;
    D_80102BCC = temp_v0;
    return temp_v1 + (temp_v0 + 0xB8);
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B2924);
#endif

extern s32 D_80102BC4, D_80102BC8, D_80102BCC;
extern s32 D_800F1540;
extern s32 D_80102BC0;

// explicit returns instead of jumps to end
#ifdef NON_MATCHING
s32 func_800B29C4(u32 arg0) {
    u32 temp_v1;
    s32 toReturn;

    temp_v1 = D_80102BCC;
    if ((temp_v1 + 0xB8) < arg0) {
        if (D_800F1540 != 0) {
            D_800F1540 = 0;
            return D_80102BC4;
        }
    } else if (arg0 < temp_v1) {
        if (D_800F1540 != 0) {
            D_800F1540 = 0;
            return D_80102BC8;
        }
    } else {
        D_800F1540 = 1;
    }
    return D_80102BC0;
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B29C4);
#endif
