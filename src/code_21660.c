#include "common.h"

extern u32 D_80149FC8;
void func_800B6A60(void) {
    D_80149FC8 = 0x80;
}

// void func_800B6A70(s32 arg0, u8 *arg1) {
//     while (*arg1 != 0) {
//         func_800B7F40(arg0, *arg1);

//         arg1++;
//     }
// }
#pragma GLOBAL_ASM("asm/nonmatchings/code_21660/func_800B6A70.s")
