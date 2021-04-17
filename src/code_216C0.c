#include "common.h"

extern u8 D_800F1830[][0x976];

void func_800B6AC0(s32 arg0, s8 arg1) {
    D_800F1830[arg0][0] = arg1;
}
