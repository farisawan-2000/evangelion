#include "common.h"

void func_800A8D78(void);

#ifdef MIPS_TO_C
void thread3_main(void) {
    func_800B6230(&func_800A8D78);
    func_800B6A30();
    func_800A9140();
    func_80098E60();
    func_800A9180();
    func_800A91F4();
    func_800A9258();
    func_800A93C4();
    func_800A97EC();
    func_800A97FC();
    func_800A9848();
    func_800A9898(0);
    for (phi_a1 = 0; phi_a1 < 5, phi_a1++) {
        D_801001D8[i] = 0;
        D_801001F0[i] = 0;
    }
    func_800A8DAC(temp_a0, temp_a1);
    func_800B6AC0(1, 0);
    func_800B6AC0(2, 0);
    func_800B6AC0(3, 0);
    func_800B6A60();
    func_800B67E0(&func_800A8B34);
    if (D_800D4960 == 0) {
        while (0 == 0);
    }
    while (1) {
        func_800B6A30();
        func_800A9140();
    }
}
#else
INCLUDE_ASM(s32, "code_13610", thread3_main);
#endif

#ifdef MIPS_TO_C
s32 func_800A8B34(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_s0;
    s32 temp_v0;
    u32 temp_a0_6;
    u32 temp_s0_2;
    s32 phi_return;

    temp_s0 = D_80149FC0;
    func_8009B048();
    if (D_80149FC4 != 0) {
        D_8014A2CC = D_8014A2CC ^ 1;
    }
    D_801001D0 = &D_8016E5A0;
    D_8014A0C4 = D_8014A0C4 ^ 1;
    func_800A8DAC();
    func_8009953C();
    func_800A93B4();
    func_800A99B4();
    if (D_80149FC4 != 0) {
        func_800A8E40();
        func_800A8F14();
        func_800A9098();
    }
    temp_v0 = D_800D4960;
    phi_return = temp_v0;
    if (temp_v0 == 0) {
        temp_a0 = D_801001D8;
        temp_a1 = ((D_801001F0 - temp_a0) >> 3) * 8;
        if (temp_a1 != 0) {
            func_800B666C(temp_a0, temp_a1, 5, 0);
        }
        temp_a0_2 = D_801001DC;
        temp_a1_2 = ((D_801001F4 - temp_a0_2) >> 3) * 8;
        if (temp_a1_2 != 0) {
            func_800B666C(temp_a0_2, temp_a1_2, 0, 0);
        }
        temp_a0_3 = D_801001E0;
        temp_a1_3 = ((D_801001F8 - temp_a0_3) >> 3) * 8;
        if (temp_a1_3 != 0) {
            func_800B666C(temp_a0_3, temp_a1_3, 5, 0);
        }
        if ((D_80149BBC != 0) && (D_80149FC4 == 0)) {
            func_800A9010();
            temp_a0_4 = D_801001E8;
            func_800B666C(temp_a0_4, ((D_80100200 - temp_a0_4) >> 3) * 8, 5, 0);
        }
        if (D_8016D16C != 0) {
            temp_a0_5 = D_801001E4;
            temp_a1_4 = ((D_801001FC - temp_a0_5) >> 3) * 8;
            if (temp_a1_4 != 0) {
                func_800B666C(temp_a0_5, temp_a1_4, 4, 0);
            }
        }
        func_800B6880();
        temp_a0_6 = D_80149F90;
        temp_s0_2 = D_80149FC0 - temp_s0;
        if ((temp_s0_2 < temp_a0_6) && (temp_a0_6 >= 2)) {
            func_800B68A0(temp_a0_6 - temp_s0_2);
        }
        func_800A93AC();
        func_800A93BC();
        func_800B6AC0(0, D_8016D5B4 != 0);
        phi_return = func_800B71B0(1);
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A8B34);
#endif

#ifdef MIPS_TO_C
?32 func_800A8D78(void) {
    func_800B6A30();
    func_800B67E0(0);
    D_800D4960 = 1;
    return 1;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A8D78);
#endif

#ifdef MIPS_TO_C
void func_800A8DAC(void) {
    s32 temp_a1;
    void *temp_v1;

    gDisplayListHead = &D_8014A150;
    func_8009C06C();
    func_8009C1C0();
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_a1 = temp_v1 + 0x10;
    temp_v1->unk0 = 0xE9000000;
    gDisplayListHead = temp_a1;
    temp_v1->unk4 = 0;
    temp_v1->unk8 = 0xDF000000;
    temp_v1->unkC = 0;
    func_800B666C(&D_8014A150, ((temp_a1 - &D_8014A150) >> 3) * 8, 0, 0);
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A8DAC);
#endif

#ifdef MIPS_TO_C
?32 func_800A8E40(void) {
    s32 temp_a0;
    s32 temp_v0;
    void *temp_v1;

    temp_v0 = D_801001D0;
    gDisplayListHead = temp_v0;
    D_801001DC = temp_v0;
    func_8009C06C();
    func_8009CA18(&D_8016D0E8);
    D_80149BA4 = D_80149BA4 + 1;
    func_80097378(0);
    func_800AB8D4();
    func_80097378(1);
    func_800A87F0(0);
    func_8009CBC0(&D_8016D0E8);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_a0 = temp_v1 + 0x10;
    temp_v1->unk0 = 0xE9000000;
    temp_v1->unk4 = 0;
    gDisplayListHead = temp_a0;
    temp_v1->unk8 = 0xDF000000;
    temp_v1->unkC = 0;
    D_801001F4 = temp_a0;
    D_801001D0 = temp_a0;
    return 0xDF000000;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A8E40);
#endif

#ifdef MIPS_TO_C
void func_800A8F14(void) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;

    func_800A9470();
    func_800A97F4();
    func_800A9804();
    temp_v0 = D_801001D0;
    gDisplayListHead = temp_v0;
    D_801001E0 = temp_v0;
    func_800A2B04(0);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v0_2 = temp_v1 + 0x10;
    temp_v1->unk0 = 0xE9000000;
    temp_v1->unk4 = 0;
    gDisplayListHead = temp_v0_2;
    temp_v1->unk8 = 0xDF000000;
    temp_v1->unkC = 0;
    D_801001F8 = temp_v0_2;
    D_801001D0 = temp_v0_2;
    gDisplayListHead = temp_v0_2;
    D_801001D8 = temp_v0_2;
    func_800A2B04(1);
    temp_v1_2 = gDisplayListHead;
    gDisplayListHead = temp_v1_2 + 8;
    temp_v0_3 = temp_v1_2 + 0x10;
    temp_v1_2->unk0 = 0xE9000000;
    temp_v1_2->unk4 = 0;
    gDisplayListHead = temp_v0_3;
    temp_v1_2->unk8 = 0xDF000000;
    temp_v1_2->unkC = 0;
    D_801001F0 = temp_v0_3;
    D_801001D0 = temp_v0_3;
    func_800A28E0();
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A8F14);
#endif


extern Gfx *gDisplayListHead, *D_80100208, *D_80100200, *D_801001E8;
#ifdef MIPS_TO_C
void func_800A9010(void) {
	Gfx *temp;

    gDisplayListHead = D_80100208;
    D_801001E8 = D_80100208;
    func_800A9B94();
    func_800A2B04(2);
    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead += 2);
    D_80100200 = gDisplayListHead;
    func_800A28E0();
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9010);
#endif

#ifdef MIPS_TO_C
?32 func_800A9098(void) {
    s32 temp_a0;
    s32 temp_v0;
    void *temp_v1;

    temp_v0 = D_801001D0;
    gDisplayListHead = temp_v0;
    D_801001E4 = temp_v0;
    func_8009C06C();
    func_8009CA18(&D_8016D0E8);
    func_800AA0D0();
    func_8009CBC0(&D_8016D0E8);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_a0 = temp_v1 + 0x10;
    temp_v1->unk0 = 0xE9000000;
    temp_v1->unk4 = 0;
    gDisplayListHead = temp_a0;
    temp_v1->unk8 = 0xDF000000;
    temp_v1->unkC = 0;
    D_801001FC = temp_a0;
    D_801001D0 = temp_a0;
    return 0xDF000000;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9098);
#endif

#ifdef MIPS_TO_C
void func_800A9140(void) {
    func_800C04D0(0x802D4000, 0x96000);
    func_800C04D0(0x8036A000, 0x96000);
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9140);
#endif

#ifdef MIPS_TO_C
s32 func_800A9180(void) {
    s32 temp_v0;
    s32 temp_v1;
    void *phi_a0;
    s32 phi_return;

    temp_v1 = D_80000300;
    phi_return = 1;
    if (temp_v1 != 1) {
        temp_v0 = temp_v1 < 2;
        if (temp_v0 == 0) {
            if (temp_v1 != 2) {
                return 2;
            }
            phi_a0 = &D_800FAF5C;
        } else {
            if (temp_v1 != 0) {
                return temp_v0;
            }
            phi_a0 = &D_800FAF50;
        }
        phi_return = func_800A9E4C(phi_a0);
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9180);
#endif

#ifdef MIPS_TO_C
s32 func_800A91F4(void) {
    s32 temp_s1;
    s32 temp_v0;
    s32 phi_s0;
    s32 phi_s1;

    func_800AA924();
    func_800AACAC();
    func_800AAFE0();
    D_8016D5A0 = 0;
    phi_s0 = 0 & 0xFF;
    phi_s1 = 0;
loop_1:
    func_800AB158(phi_s0);
    func_800AB468(phi_s0);
    temp_s1 = phi_s1 + 1;
    temp_v0 = temp_s1 < 3;
    phi_s0 = temp_s1 & 0xFF;
    phi_s1 = temp_s1;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A91F4);
#endif

#ifdef MIPS_TO_C
?32 func_800A9258(void) {
    D_80149FC4 = 1;
    D_80149BA4 = 0;
    D_8016D768 = 0;
    D_8016E594 = 0;
    D_8016D7F0 = 0;
    D_8014A0C0 = 0;
    D_801765B8 = 0;
    D_80149F9C = 0;
    D_80149DBC = 0;
    D_8016D828 = 0;
    D_80149BBC = 0;
    D_80149F98 = 1;
    D_8016D204 = 0;
    D_80149F1C = 0;
    D_8014A0B8 = 0;
    D_8016D16C = 0;
    D_8014A048 = 0;
    D_8014C370 = 0;
    D_8016D6BC = 0;
    D_8016D5B4 = 0;
    D_8016D5A4 = 0;
    D_80149FAC = 1;
    D_8016D7EC = 0;
    D_80149D78 = 0;
    D_8016E58C = 0;
    return 1;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9258);
#endif

#ifdef MIPS_TO_C
?32 func_800A9330(void) {
    func_8009B974(1);
    func_800AE214(1, 0x7FFF);
    func_800AE214(2, 0x7FFF);
    func_8009AD18();
    func_8009C970();
    D_80149FB0 = 0x10;
    D_80149FA4 = 0x10;
    D_8016D040 = 0x130;
    D_8014A2C8 = 0xE0;
    D_80149BBC = 0;
    return 0xE0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9330);
#endif

#ifdef MIPS_TO_C
void func_800A93AC(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A93AC);
#endif

#ifdef MIPS_TO_C
void func_800A93B4(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A93B4);
#endif

#ifdef MIPS_TO_C
void func_800A93BC(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A93BC);
#endif

#ifdef MIPS_TO_C
s16 func_800A93C4(void) {
    D_80100530 = func_800A4DD4();
    D_80100534 = func_800A32DC(0xF, 1, 0);
    D_80100538 = func_800A32DC(0x11, 1, 0);
    func_800A3E68(D_80100534, 0x33, 0x44);
    func_800A3E68(D_80100538, 0x33, 0x44);
    D_8016D208 = 0;
    D_80100540 = 0;
    D_80100544 = 0;
    D_8010053C = 0;
    D_80100548 = 0x63;
    return 0x63;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A93C4);
#endif

#ifdef MIPS_TO_C
s32 func_800A9470(void) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a0;
    void *temp_a0_2;
    f32 phi_f2;
    s32 phi_t0;
    s32 phi_t0_2;
    s16 phi_v0;
    void *phi_a0;
    s32 phi_return;

    temp_a0 = D_80100530;
    temp_a0->unk1C = D_80100548;
    func_800A2900(temp_a0);
    temp_v0 = D_8016D208;
    if (temp_v0 != 0) {
        temp_f0 = D_80100540 + D_80100544;
        D_8016D208 = temp_v0 - 1;
        D_80100540 = temp_f0;
        phi_f2 = 255.0f;
        if ((temp_f0 > 255.0f) || (phi_f2 = 0.0f, (temp_f0 < 0.0f))) {
            D_80100540 = phi_f2;
        }
    }
    temp_f2 = D_80100540;
    if (temp_f2 != 0.0f) {
        if (D_8010053C == 0) {
            D_80100534->unk1C = D_80100548;
            if (!(temp_f2 >= 2.1474836e9f)) {
                phi_t0 = temp_f2;
            } else {
                phi_t0 = (temp_f2 - 2.1474836e9f) | 0x80000000;
            }
            func_800A3904(D_80100534, 0xFF, 0xFF, 0xFF, phi_t0 & 0xFF);
            phi_v0 = -(D_8016D208 != 0) & 0x42;
            phi_a0 = D_80100534;
        } else {
            D_80100538->unk1C = D_80100548;
            if (!(temp_f2 >= 2.1474836e9f)) {
                phi_t0_2 = temp_f2;
            } else {
                phi_t0_2 = (temp_f2 - 2.1474836e9f) | 0x80000000;
            }
            func_800A3904(D_80100538, 0xFF, 0xFF, 0xFF, phi_t0_2 & 0xFF);
            phi_v0 = -(D_8016D208 != 0) & 0x42;
            phi_a0 = D_80100538;
        }
block_16:
        phi_a0->unk1E = phi_v0;
        phi_return = func_800A2900(phi_a0);
    } else {
        temp_v0_2 = D_8016D5A4;
        phi_return = temp_v0_2;
        if (temp_v0_2 != 0) {
            temp_a0_2 = D_80100534;
            temp_a0_2->unk1C = 0x63;
            func_800A3904(temp_a0_2, 0xFF, 0xFF, 0xFF, 0x80);
            phi_v0 = 0x42;
            phi_a0 = D_80100534;
            goto block_16;
        }
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9470);
#endif

#ifdef MIPS_TO_C
f32 func_800A96BC(s32 arg0) {
    f32 temp_f0;

    D_8016D208 = arg0;
    D_8010053C = 0;
    temp_f0 = -(255.0f / arg0);
    D_80100540 = 255.0f;
    D_80100544 = temp_f0;
    return temp_f0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A96BC);
#endif

#ifdef MIPS_TO_C
f32 func_800A9704(s32 arg0) {
    f32 temp_f0;

    temp_f0 = arg0;
    D_8016D208 = arg0;
    D_80100540 = 0;
    D_8010053C = 0;
    D_80100544 = 255.0f / temp_f0;
    return temp_f0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9704);
#endif

#ifdef MIPS_TO_C
f32 func_800A9748(s32 arg0) {
    f32 temp_f0;

    D_8016D208 = arg0;
    D_8010053C = 1;
    temp_f0 = -(255.0f / arg0);
    D_80100540 = 255.0f;
    D_80100544 = temp_f0;
    return temp_f0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9748);
#endif

#ifdef MIPS_TO_C
s8 func_800A9794(s32 arg0) {
    D_8016D208 = arg0;
    D_80100540 = 0;
    D_8010053C = 1;
    D_80100544 = 255.0f / arg0;
    return 1;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9794);
#endif

#ifdef MIPS_TO_C
void func_800A97DC(s16 arg0) {
    D_80100548 = arg0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A97DC);
#endif

#ifdef MIPS_TO_C
void func_800A97EC(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A97EC);
#endif

#ifdef MIPS_TO_C
void func_800A97F4(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A97F4);
#endif

#ifdef MIPS_TO_C
void func_800A97FC(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A97FC);
#endif

#ifdef MIPS_TO_C
void func_800A9804(void) {

}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9804);
#endif

#ifdef MIPS_TO_C
void func_800A980C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4, u8 arg5) {
    func_8009C404(arg0 & 0xFF, arg1 & 0xFF, arg2 & 0xFF, arg3 & 0xFF, arg4, arg5);
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A980C);
#endif

#ifdef MIPS_TO_C
u16 func_800A9848(void) {
    s32 temp_a0;
    u16 temp_v0;
    void *temp_v1;

    temp_a0 = func_800A32DC(0x74, 1, 0);
    D_800D4C4C = temp_a0;
    func_800A3624(temp_a0, 0x3D8, 0x330);
    temp_v1 = D_800D4C4C;
    temp_v0 = temp_v1->unk1E | 0x200;
    temp_v1->unk1E = temp_v0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9848);
#endif

#ifdef MIPS_TO_C
u16 func_800A9898(s32 arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_2;
    u16 temp_s1;
    u16 temp_v0;
    void *temp_v1;

    temp_a0 = D_800D4C50;
    if (temp_a0 != 0) {
        func_800A442C(temp_a0);
    }
    temp_v0_2 = *(&D_800D4C2C + ((arg0 << 0x18) >> 0x17)) * 4;
    temp_s1 = *(&D_800E2082 + temp_v0_2);
    func_8009930C(&D_803DAA00, 0x1D9000, &D_800D6AD0, *(&D_800E2080 + temp_v0_2));
    func_8009930C(&D_803DA800, 0x60CB80, &D_800DD820, temp_s1);
    temp_a0_2 = func_800A33A8(&D_803DAA00, &D_803DA800, 2, 0);
    D_800D4C50 = temp_a0_2;
    func_800A3624(temp_a0_2, 0x280, 0x1E0);
    func_800A3904(D_800D4C50, 0xFF, 0xFF, 0xFF, 0xD0);
    temp_v1 = D_800D4C50;
    temp_v0 = temp_v1->unk1E | 0x200;
    temp_v1->unk1E = temp_v0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9898);
#endif

#ifdef MIPS_TO_C
s8 func_800A99B4(void) {
    f64 temp_f0;
    f64 temp_f0_2;
    s32 temp_v0_2;
    s8 temp_v0;

    if ((D_80149BBC != 0) && ((D_8014CF92 & 0x1000) != 0)) {
        if (D_8016D7F0 == 0) {
            if (D_800D4C54 == 0) {
                temp_v0_2 = D_8016D168;
                temp_f0 = temp_v0_2 * D_800FB118;
                D_8010054A = 0;
                D_8010054E = 0;
                D_80100554 = 0;
                D_800D4C58 = 0;
                D_800D4C54 = (bitwise f32) temp_f0;
                D_8010054C = D_800FB120 / temp_f0;
                D_80100550 = 0xFF / temp_v0_2;
                func_8009B754(0x9F);
                func_800AE214(1, 0x5FFF);
                func_800AE214(2, 0x5FFF);
                func_8009AD18();
                D_8016D7F0 = 1;
            }
        } else if (D_800D4C54 == 0) {
            temp_f0_2 = (bitwise s32) D_8016D168 * D_800FB128;
            D_800D4C58 = 1;
            D_800D4C54 = (bitwise f32) temp_f0_2;
            D_8010054C = D_800FB130 / temp_f0_2;
            D_800D4C5C = func_8009B754(0x95);
            func_800AE214(1, 0x7FFF);
            func_800AE214(2, 0x7FFF);
        }
    }
    temp_v0 = (D_8016D7F0 | D_8014A0C0) == 0;
    D_80149FC4 = temp_v0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A99B4);
#endif

#ifdef MIPS_TO_C
u8 func_800A9B94(void) {
    s16 temp_a0_3;
    s16 temp_v0;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v1_2;
    s16 temp_v1_5;
    s32 temp_a0;
    s32 temp_v0_2;
    s32 temp_v1;
    u16 temp_a0_2;
    u8 temp_v0_3;
    void *temp_v1_3;
    void *temp_v1_4;
    s16 phi_v0;
    void *phi_v1;
    s32 phi_v0_2;
    s16 phi_v1_2;
    s32 phi_a0;
    u16 phi_v1_3;
    u8 phi_return;

    temp_a0 = D_80100554 + 1;
    D_80100554 = temp_a0;
    if (temp_a0 == (D_8016D168 * 0x12C)) {
        func_8009B754(0x14A);
    }
    temp_v1 = D_800D4C54;
    if (temp_v1 != 0) {
        D_800D4C54 = temp_v1 - 1;
        temp_v0 = D_8010054A + D_8010054C;
        D_8010054A = temp_v0;
        temp_v1_2 = temp_v0;
        if (temp_v1_2 >= 0xD1) {
            D_8010054A = 0xD0;
        } else if (temp_v1_2 < 0) {
            D_8010054A = 0;
        }
        func_800A3904(D_800D4C50, 0xFF, 0xFF, 0xFF, D_8010054B);
        if (D_8010054A >= 0x61) {
            temp_v1_3 = D_800D4C50;
            phi_v0 = temp_v1_3->unk1E & 0xFFFD;
            phi_v1 = temp_v1_3;
        } else {
            temp_v1_4 = D_800D4C50;
            phi_v0 = temp_v1_4->unk1E | 2;
            phi_v1 = temp_v1_4;
        }
        phi_v1->unk1E = phi_v0;
        if ((D_800D4C54 == 0) && (D_800D4C58 == 1)) {
            func_8009B938(&D_800D4C5C);
            D_8016D7F0 = 0;
        }
    }
    func_800A2900(D_800D4C50);
    temp_v0_2 = D_800D4C54;
    phi_return = temp_v0_2;
    if (temp_v0_2 == 0) {
        temp_v0_3 = D_800D4C58;
        phi_return = temp_v0_3;
        if (temp_v0_3 == 0) {
            temp_a0_2 = D_80100550;
            temp_v1_5 = D_8010054E + temp_a0_2;
            D_8010054E = temp_v1_5;
            if (((temp_a0_2 << 0x10) <= 0) || (phi_v0_2 = 0x258, phi_v1_2 = temp_v1_5, phi_a0 = temp_a0_2, ((temp_v1_5 < 0x12D) != 0))) {
                temp_v0_4 = D_80100550;
                if (temp_v0_4 < 0) {
                    temp_v0_5 = D_8010054E;
                    phi_v0_2 = -0xC8;
                    phi_v1_2 = temp_v0_5;
                    phi_a0 = temp_v0_4;
                    if (temp_v0_5 < -0x64) {
block_19:
                        D_8010054E = phi_v0_2 - phi_v1_2;
                        D_80100550 = -phi_a0;
                    }
                }
            } else {
                goto block_19;
            }
            temp_a0_3 = D_8010054E;
            if (temp_a0_3 >= 0x100) {
                phi_v1_3 = 0xFF;
            } else {
                phi_v1_3 = D_8010054E;
                if (temp_a0_3 < 8) {
                    phi_v1_3 = 8;
                }
            }
            func_800A3904(D_800D4C4C, 0xFF, 0xFF, 0xFF, phi_v1_3 & 0xFF);
            phi_return = func_800A2900(D_800D4C4C);
        }
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9B94);
#endif

#ifdef MIPS_TO_C
s32 func_800A9DEC(void) {
    u16 temp_v1;
    s32 phi_return;

    func_800B6B00(0, 0xC);
    func_800B6B80(0, 0xA, 0xF);
    func_800B6A70(0, &D_800FB138);
    temp_v1 = D_8014CF92;
    phi_return = -1;
    if ((temp_v1 & 0x8000) == 0) {
        phi_return = (temp_v1 & 0x4000) != 0;
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9DEC);
#endif

#ifdef MIPS_TO_C
void func_800A9E4C(s32 arg0) {
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s1;
    s32 phi_s0;
    s32 phi_s1;
    s32 phi_s0_2;

    func_800A8DAC();
    func_800B6B00(0, 4);
    phi_s1 = 0;
loop_1:
    phi_s0 = 0;
loop_2:
    func_800B6B80(0, phi_s0, phi_s1);
    func_800B6A70(0, &D_800FB14C);
    temp_s0 = phi_s0 + 8;
    phi_s0 = temp_s0;
    if (temp_s0 < 0x28) {
        goto loop_2;
    }
    phi_s0_2 = 0;
loop_4:
    func_800B6B80(0, phi_s0_2, phi_s1 + 1);
    func_800B6A70(0, &D_800FB158);
    temp_s0_2 = phi_s0_2 + 8;
    if (temp_s0_2 < 0x28) {
        phi_s0_2 = temp_s0_2;
        goto loop_4;
    }
    temp_s1 = phi_s1 + 2;
    phi_s1 = temp_s1;
    if (temp_s1 < 0x1E) {
        goto loop_1;
    }
    func_800B6B00(0, 7);
    func_800B6B80(0, 0x14 - (func_800C05B0(arg0) >> 1), 0xF);
    func_800B6A70(0, arg0);
    func_800B6AC0(0, 1);
    func_800B6AC0(1, 0);
    func_800B6AC0(2, 0);
    func_800B6AC0(3, 0);
    func_800B71B0(1);
loop_9:
    goto loop_9;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9E4C);
#endif

#ifdef MIPS_TO_C
void *func_800A9F80(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = &D_8010055E;
    phi_v1 = 3;
loop_1:
    *phi_v0 = 0;
    temp_v1 = phi_v1 - 1;
    temp_v0 = phi_v0 - 2;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 >= 0) {
        goto loop_1;
    }
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9F80);
#endif

#ifdef MIPS_TO_C
? func_800A9FA4(s32 arg0) {
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 phi_v1;
    s32 phi_v0;
    s32 phi_v0_2;
    ? phi_a1;
    ? phi_a1_2;
    ? phi_a1_3;

    temp_v1 = arg0 & 0xFFFF;
    phi_v1 = temp_v1;
    if ((*(&D_80100558 + (temp_v1 * 2)) & 0x8000) != 0) {
        temp_v1_2 = temp_v1 * 0x28;
        if (((*(&D_8014CF90 + temp_v1_2) & 0x8000) != 0) || ((*(&D_8014CF92 + temp_v1_2) & 4) == 0)) {
            phi_v1 = arg0 & 0xFFFF;
block_4:
            phi_a1_3 = 0;
            if ((*(&D_80100558 + (phi_v1 * 2)) & 4) != 0) {
                temp_v1_3 = ((phi_v1 * 4) + phi_v1) * 8;
                phi_v0 = arg0 & 0xFFFF;
                phi_a1_3 = 0;
                if ((*(&D_8014CF90 + temp_v1_3) & 4) == 0) {
                    phi_v0_2 = arg0 & 0xFFFF;
                    phi_a1_2 = 0;
                    if ((*(&D_8014CF92 + temp_v1_3) & 0x8000) != 0) {
block_7:
                        phi_a1_3 = 1;
block_8:
                        phi_v0 = arg0 & 0xFFFF;
block_9:
                        phi_a1 = phi_a1_3;
                        if ((*(&D_8014CF92 + (((phi_v0 * 4) + phi_v0) * 8)) & 0x8000) == 0) {
                            phi_v0_2 = arg0 & 0xFFFF;
                            phi_a1_2 = phi_a1_3;
block_11:
                            phi_a1 = phi_a1_2;
                            phi_a1 = phi_a1_2;
                            if ((*(&D_8014CF92 + (((phi_v0_2 * 4) + phi_v0_2) * 8)) & 4) != 0) {
block_12:
                                *(&D_80100558 + ((arg0 & 0xFFFF) * 2)) = D_8014CF92;
                            }
                        } else {
                            goto block_12;
                        }
                    } else {
                        goto block_11;
                    }
                } else {
                    goto block_9;
                }
            } else {
                goto block_8;
            }
        } else {
            goto block_7;
        }
    } else {
        goto block_4;
    }
    return phi_a1;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800A9FA4);
#endif

#ifdef MIPS_TO_C
?32 func_800AA0D0(void) {
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    s32 temp_f0;
    s32 temp_f12_2;
    s32 temp_f14;
    s32 temp_f14_2;
    s32 temp_f14_3;
    s32 temp_f2;
    s32 temp_f2_2;
    s32 temp_f2_3;
    s32 temp_f2_4;
    s32 temp_f8_2;
    s32 temp_f8_3;
    s32 temp_f8_4;
    void *temp_v1;

    temp_f4 = D_8016E568;
    temp_f6 = D_8016D0D0;
    temp_f10 = D_8016D0D4;
    temp_f8 = D_8014A050;
    temp_f12 = D_8016D1A8;
    temp_f2 = temp_f6;
    temp_f2_2 = temp_f10;
    temp_f2_3 = temp_f4;
    temp_f2_4 = temp_f8;
    temp_f2_5 = D_8014A054;
    temp_f14 = temp_f12;
    D_800D4CC2 = temp_f2;
    D_800D4CD2 = temp_f2;
    D_800D4CC4 = temp_f2_2;
    D_800D4CD4 = temp_f2_2;
    D_800D4CE0 = temp_f2_3;
    D_800D4CF0 = temp_f2_3;
    D_800D4CE4 = temp_f2_2;
    D_800D4CF4 = temp_f2_2;
    D_800D4D00 = temp_f2_3;
    D_800D4D10 = temp_f2_3;
    temp_f14_2 = temp_f2_5;
    D_800D4D02 = temp_f2;
    D_800D4D12 = temp_f2;
    D_800D4D22 = temp_f2_4;
    D_800D4D32 = temp_f2_4;
    D_800D4D24 = temp_f14;
    D_800D4D34 = temp_f14;
    D_800D4D40 = temp_f14_2;
    D_800D4D50 = temp_f14_2;
    D_800D4CC0 = temp_f4 - 30.0f;
    D_800D4CD0 = temp_f4 + 30.0f;
    D_800D4CE2 = temp_f6 - 30.0f;
    D_800D4CF2 = temp_f6 + 30.0f;
    D_800D4D04 = temp_f10 - 30.0f;
    D_800D4D14 = temp_f10 + 30.0f;
    D_800D4D20 = temp_f2_5 - 30.0f;
    D_800D4D30 = temp_f2_5 + 30.0f;
    D_800D4D42 = temp_f8 - 30.0f;
    D_800D4D52 = temp_f8 + 30.0f;
    temp_f6_2 = D_8014A06C;
    temp_f4_2 = D_8014A068;
    temp_f2_6 = D_8014A064;
    D_800D4D44 = temp_f14;
    D_800D4D54 = temp_f14;
    D_800D4D60 = temp_f14_2;
    D_800D4D70 = temp_f14_2;
    D_800D4D62 = temp_f2_4;
    D_800D4D72 = temp_f2_4;
    D_800D4D80 = temp_f2_3;
    D_800D4D90 = temp_f14_2;
    D_800D4D92 = temp_f2_4;
    D_800D4D94 = temp_f14;
    temp_f8_2 = temp_f4_2;
    temp_f8_3 = temp_f6_2;
    temp_f8_4 = temp_f2_6;
    D_800D4D82 = temp_f2;
    D_800D4D84 = temp_f2_2;
    D_800D4D64 = temp_f12 - 30.0f;
    D_800D4D74 = temp_f12 + 30.0f;
    D_800D4DA2 = temp_f8_2;
    D_800D4DB2 = temp_f8_2;
    D_800D4DA4 = temp_f8_3;
    D_800D4DB4 = temp_f8_3;
    D_800D4DC0 = temp_f8_4;
    D_800D4DD0 = temp_f8_4;
    D_800D4DC4 = temp_f8_3;
    D_800D4DD4 = temp_f8_3;
    D_800D4DE0 = temp_f8_4;
    D_800D4DF0 = temp_f8_4;
    D_800D4DE2 = temp_f8_2;
    D_800D4DF2 = temp_f8_2;
    temp_f14_3 = temp_f2_6 - 30.0f;
    temp_f12_2 = temp_f2_6 + 30.0f;
    temp_f0 = temp_f6_2 + 30.0f;
    D_800D4DA0 = temp_f14_3;
    D_800D4DB0 = temp_f12_2;
    D_800D4DC2 = temp_f4_2 - 30.0f;
    D_800D4DD2 = temp_f4_2 + 30.0f;
    D_800D4DE4 = temp_f6_2 - 30.0f;
    D_800D4DF4 = temp_f0;
    func_800BEAC0(temp_f12_2, temp_f14_3, &D_80100560, temp_f0, temp_f14_3, temp_f12_2);
    temp_v1 = gDisplayListHead;
    gDisplayListHead = temp_v1 + 8;
    temp_v1->unk4 = 0x100560;
    gDisplayListHead = temp_v1 + 0x10;
    temp_v1->unk8 = 0xDE000000;
    temp_v1->unk0 = 0xDA380003;
    temp_v1->unkC = 0xD4E60;
    return 0xD4E60;
}
#else
INCLUDE_ASM(s32, "code_13610", func_800AA0D0);
#endif
