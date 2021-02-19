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

u32 *func_800B2874(void) {
    return &D_80102BB0;
}

void func_800B2880(u8 *arg0, s8 arg1, s32 arg2) {
    s32 pad[2];
    s32 phi_v0;

    for (phi_v0 = arg2 - 1; phi_v0 != -1; phi_v0--) {
        *arg0++ = arg1;
    }
}

// it's 2 loops, what can you do?
#ifdef NON_MATCHING
void func_800B28AC(u32 arg0, u32 arg1, s32 arg2) {
    u8 *a0;
    u8 *a1;
    s32 i;

    if (arg1 < arg0) {
        a0 = arg0 + arg2;
        a1 = arg1 + arg2;
        for (i = arg2 - 1; i != -1; i--)
            *a0-- = *a1--;
    } else {
        for (i = arg2 - 1; i != -1; i--)
            *a0++ = *a1++;
    }
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B28AC);
#endif

extern u32 D_80102BC0, D_80102BC4, D_80102BC8, D_80102BCC;

#ifdef MIPS_TO_C
s32 func_800B2920(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    s32 tmp;

    D_80102BC0 = ((((arg0 * arg1 + arg2) - 1) / arg2) / 0xb8 + 1) * 0xb8;
    D_80102BCC = (u32)(D_80102BC0 * arg3) / 100;
    D_80102BC4 = D_80102BC0 + -0xb8;
    D_80102BC8 = D_80102BC0 + 0xb8;
    tmp = D_80102BC0 + D_80102BCC + 0xb8;

    return tmp;
}
#else
INCLUDE_ASM(s32, "code_1D3E0", func_800B2924);
#endif

extern s32 D_800F1540;

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
