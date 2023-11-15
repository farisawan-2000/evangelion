// c_flag_g2
#include "common.h"
#include <PR/gu.h>

extern s32 func_8009798C(s32);
extern s32 func_8009849C(s32);
extern s32 func_8009930C(s32, u8*, u8*, s32);
extern s32 func_800C998C(s32);
extern void func_800C9760(int, int);
extern void func_800C97A0(int, int, int);
extern void func_800C9EA0(int, int, int);
extern void func_800C9F80(f64, f64);
extern void func_800CA210(f32, f32);
extern void func_800B7BF0(s32, u16, u16);

extern s32 D_80149BB8;
extern s32 D_80149DB8;
extern s32 D_80149ECC;
extern s32 D_80149FA4;
extern s32 D_80149FB0;
extern s32 D_8014A02C;
extern s32 D_8014A050;
extern s32 D_8014A054;
extern s32 D_8014A0BC;
extern s32 D_8014A0C4;
extern f32 D_8014A2A0;
extern s32 D_8014A2C8;
extern s32 D_8014A2CC;
extern s32 D_8016D040;
extern s32 D_8016D0D0;
extern s32 D_8016D0D4;
extern s32 D_8016D1A8;
extern s32 D_8016D5A8;
extern s32 D_8016D5AC;
extern s32 D_8016D5B0;
extern s8 D_8016D7F1;
extern s32 D_8016D824;
extern s32 D_8016E568;
extern f64 D_800F9B40;
extern s32 D_80149FE8;
extern s32 D_80149F90;
extern s32 D_8016D168;
extern u8 D_80149BB4;
extern s32 D_8014A140[];
extern s32 D_8014A028;

void func_80098E60(void) {
    D_8014A0BC = 0x140;
    D_80149DB8 = 0xF0;
    D_80149FB0 = 0;
    D_80149FA4 = 0;
    D_8016D040 = 0x140;
    D_8014A2C8 = 0xF0;
    D_8016D7F1 = 0;
    func_80099110(0);
    func_80099124(2);
    func_800C9870(0x801F0000, 0x80000);
    func_800C998C(1);
    func_8009AE40();
    D_8014A2CC = 0;
    D_8014A0C4 = 0;
    D_8016D5A8 = 0;
    D_8016D5AC = 0;
    D_8016D5B0 = 0;
    D_80149BB8 = 0;
    D_8016E568 = 0;
    D_8016D0D0 = 0;
    D_8016D0D4 = 0;
    D_8014A054 = 0;
    D_8014A050 = 0;
    D_8016D1A8 = 0;
    D_80149ECC = 0;
    D_8014A02C = 0;
    D_8016D824 = 0;
    D_8014A2A0 = -1.0f;
    func_8009C890();
    func_80097670();
    func_8009BF40();
    func_800994A0();
    func_800B7E00();
    func_800A28E0();
    func_80097310(0);
    func_80097310(1);
    func_800A86F0();
}

void func_80098FB8(void) {
    Mtx sp20;

    func_800C9EA0(0, 0, 0);
    func_800C97A0(0, 0, 0);
    func_800C9760(0, 0);
    func_800C9F80(D_800F9B40, D_800F9B40);
    func_800CA210(1.0f, 1.0f);
    guRotateRPY(&sp20, 0.0f, 0.0f, 0.0f);
    guScale(&sp20, 1.0f, 1.0f, 1.0f);
    guAlign(&sp20, 0.0f, 1.0f, 1.0f, 1.0f);
    guOrtho(&sp20, -160.0f, 160.0f, -120.0f, 120.0f, -2000.0f, (f32) D_80149FE8, 1.0f);
}

void func_800990E8(int arg0, int arg1) {
    if (arg1 < arg0) {
        func_800CA4D0();
    }
}

void func_80099110(u8 arg0) {
    D_8016D7F1 = arg0 | 0x80;
}

void func_80099124(s32 arg0) {
    D_80149F90 = arg0;
    D_8016D168 = 0x3C / arg0;
}

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

extern s8 D_8016E588;
extern s32 D_8014CF90; // size 0xA0+
extern s32 D_8016E4A8; // size 0xA0+
extern s32 D_800FF390; // size 8
extern s32 D_800FF398; // size 8
extern s32 D_800FF3A0; // size 8
void func_800994A0(void) {
    D_80149BB4 = func_800B7380();
    D_8014A028 = 1;
    func_8009ADC0();
    func_8009AD18();
    bzero(&D_8014CF90, 0xA0);
    bzero(&D_8016E4A8, 0xA0);
    D_8016E588 = 0;
    bzero(&D_800FF390, 8);
    bzero(&D_800FF398, 8);
    bzero(&D_800FF3A0, 8);
}

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

void func_8009AC54(s32 arg0, s32 arg1, s32 arg2) {
    if (D_8014A028 != 0) {
        if (D_8014A140[arg0] == 0) {
            func_800B7C50();
            func_800B7DE0();
            func_800B7BF0(arg0, arg1, arg2);
        }
    }
}

void func_8009ACD4(s32 arg0) {
    if (D_8014A028 != 0) {
        if (D_8014A140[arg0] == 0) {
            func_800B7C50();
        }
    }
}

void func_8009AD18(void) {
    s32 i;
    s32* var_s0;

    for (i = 0; i < 4; i++) {
        if (D_8014A140[i] == 0) {
            func_800B7DC0();
        }
    }
}

void func_8009AD6C(void) {
    s32 i;
    s32* var_s0;

    for (i = 0; i < 4; i++) {
        if (D_8014A140[i] == 0) {
            func_800B7DE0();
        }
    }
}

extern s32 func_800B7C80(s32);
extern void func_800B7D00(s32, s32);

void func_8009ADC0(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (((s32) D_80149BB4 >> i) & 1) {
            s32 temp_v0 = func_800B7C80(i);
            
            D_8014A140[i] = temp_v0;
            if (temp_v0 == 0) {
                func_800B7D00(i, 1);
            }
        }
    }
}

