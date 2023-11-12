// c_flag_g2
#include "common.h"

s32 func_8009798C(s32);
s32 func_8009849C(s32);
s32 func_8009930C(s32, u8*, u8*, s32);
s32 func_800C998C(s32);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_80098E60);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_80098FB8);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_800990E8);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_80099110);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_80099124);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_80099174);

s32 func_80099238(u8* arg0, s32* arg1, s32 arg2, u8 arg3) {
    s32 temp_a0;
    s32 var_s0;

    temp_a0 = arg1[(arg2 * 3) + 2];
    switch (arg3) {
        case 0:
            var_s0 = func_800C998C(temp_a0);
            break;
        case 1:
            var_s0 = func_8009798C(temp_a0);
            break;
        case 2: 
            var_s0 = func_8009849C(temp_a0);
            break;
    }

    func_8009930C(var_s0, arg0, arg1, arg2);
    return var_s0;
}


INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009930C);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_800994A0);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009953C);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009961C);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_80099B58);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A0B0);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A148);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A4C4);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A588);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A6A0);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A7E0);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009A9E8);

void func_8009AC4C(void) {
}

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009AC54);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009ACD4);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009AD18);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009AD6C);

INCLUDE_ASM("asm/nonmatchings/code_3A60", func_8009ADC0);
