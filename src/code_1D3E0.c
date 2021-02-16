#include "common.h"

INCLUDE_ASM(s32, "code_1D3E0", func_800B27E0);

INCLUDE_ASM(s32, "code_1D3E0", func_800B282C);

INCLUDE_ASM(s32, "code_1D3E0", func_800B285C);

INCLUDE_ASM(s32, "code_1D3E0", func_800B2874);

INCLUDE_ASM(s32, "code_1D3E0", func_800B2880);

INCLUDE_ASM(s32, "code_1D3E0", func_800B28AC);

INCLUDE_ASM(s32, "code_1D3E0", func_800B2924);


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
INCLUDE_ASM(s32, "code_1D3E0", func_800B29C4);
#endif
