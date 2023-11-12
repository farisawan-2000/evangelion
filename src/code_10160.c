#include "common.h"

extern u8 gCharWidthTable[];

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A5560);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A56A8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A56CC);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A58BC);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A5C38);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A5D9C);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A5EB0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6058);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6090);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A60A8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6148);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A61E8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A620C);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6350);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6388);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A63B8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A640C);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6430);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6538);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A66F4);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6718);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A68E4);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A696C);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6A54);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6AA8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6AE4);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6B28);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6B9C);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6C60);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A6CC0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A70D0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A72A0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A730C);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7354);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A73F4);

s32 func_800A7464(s16* arg0, s8 arg1) {
    s32 temp_a2;
    s32 var_a2;
    s32 var_v1;

    var_a2 = 0;
    for (var_v1 = *arg0 - 0x10; var_v1 >= 0; var_v1 = *arg0 - 0x10) {
        arg0++;
        var_a2 += gCharWidthTable[var_v1];
        var_a2 += arg1;
    }
    
    return var_a2;
}

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A74A8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7564);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A75B0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7660);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A77D8);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7AEC);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7E68);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7E90);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7ED0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7F24);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A7F60);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A80A0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A80F0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A81C0);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A8254);

INCLUDE_ASM("asm/nonmatchings/code_10160", func_800A864C);
