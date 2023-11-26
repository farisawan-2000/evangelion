#include "common.h"

extern u16 *D_80068D40_ovl3;  // EVA_STR("目    標 :")
extern u16 D_80068EA4_ovl3[];
extern u8 D_800D3BC0, D_800D3BC1, D_800D3BC2, D_800D3BC3, D_800D3BC4, D_800D3BC5, D_800D3BC6;
extern f32 D_800D3BD8, D_800D3BDC, D_800D3BE0;

typedef struct {
    u16 *str;
    s8 p1;
    s8 p2;
    u8 p3;
    u8 p4;
} FontParams;

typedef struct {
    u32 _000;
    u32 _004;
    u32 _008;
    u32 _00C;
    u32 _010;
    u32 _014;
    u32 _018;
    u32 _01C;
    u32 _020;
    u32 _024;
    u32 _028;
    u8 _02C;
    u8 _02D;
    u8 _02E;
    u8 unk2F;
} UnkStruct80036494_1C_00;

typedef struct {
    UnkStruct80036494_1C_00 *unk0;
    u32 _004;
    u32 _008;
    u32 _00C;
    u32 _010;
    u32 _014;
    u32 _018;
    u16 unk1C;
} UnkStruct80036494_1C;

typedef struct {
    u32 _000;
    u32 _004;
    u32 _008;
    UnkStruct80036494_1C *unkC;
} UnkStruct80036494;

UnkStruct80036494 *func_80036494_ovl3(u16, s32, s32);
UnkStruct80036494 *func_80036304_ovl3(u16 arg0);

typedef struct {
    s16 *angelName;
    s16 *machineType;
    s16 *description;
} MissionText;

extern MissionText D_80069E60_ovl3[15];

void func_800386D0_ovl3(u8 mission) {
    FontParams parms;
    MissionText sp20[15];
    UnkStruct80036494* temp_v0;
    u8 temp;

    memcpy(sp20, D_80069E60_ovl3, sizeof(D_80069E60_ovl3));

    if (mission == 4) {
        parms.str = &D_80068D40_ovl3;
        parms.p1 = -4;
        parms.p2 = 0;
        parms.p3 = 1;
        parms.p4 = 2;
        func_80037BDC_ovl3(&parms, 0x40C9, 0x40CC, 0x17, 0x18);
        func_80036304_ovl3(0x40C9)->unkC->unk1C = 0x58;
    } else {
        temp_v0 = func_80036494_ovl3(0x199U, 5, 0x40C9);
        temp_v0->unkC->unk1C = 0x58;
        func_800A3624(temp_v0->unkC, 0x50, 0x60);
    }
    temp_v0 = func_80036494_ovl3(0x198U, 5, 0x40CD);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x50, 0xD0);
    
    temp_v0 = func_80036494_ovl3(0x197U, 5, 0x40D0);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x50, 0x140);

    temp = mission - 1;
    parms.str = sp20[temp].angelName;
    parms.p1 = -4;
    parms.p2 = 0;
    parms.p3 = 1;
    parms.p4 = 2;
    func_80037BDC_ovl3(&parms, 0x40CA, 0x40CB, 0x6C, 0x18);
    func_80036304_ovl3(0x40CA)->unkC->unk1C = 0x58;
    func_80036304_ovl3(0x40CB)->unkC->unk1C = 0x57;
    
    parms.str = sp20[temp].machineType;
    parms.p1 = -4;
    parms.p2 = 0;
    parms.p3 = 1;
    parms.p4 = 2;
    func_80037BDC_ovl3(&parms, 0x40CE, 0x40CF, 0x6C, 0x34);
    func_80036304_ovl3(0x40CE)->unkC->unk1C = 0x58;
    func_80036304_ovl3(0x40CF)->unkC->unk1C = 0x57;
    
    parms.str = sp20[temp].description;
    parms.p1 = -4;
    parms.p2 = -2;
    parms.p3 = 1;
    parms.p4 = 2;
    func_80037BDC_ovl3(&parms, 0x40D1, 0x40D2, 0x6C, 0x50);
    func_80036304_ovl3(0x40D1)->unkC->unk1C = 0x58;
    func_80036304_ovl3(0x40D2)->unkC->unk1C = 0x57;
    
    temp_v0 = func_80036494_ovl3(0x18BU, 5, 0x40D3);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x200, 0x2C8);
    
    temp_v0 = func_80036494_ovl3(((mission / 10) & 0xFF) + 0x18C, 5, 0x40D4);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x400, 0x2C8);
    
    temp_v0 = func_80036494_ovl3(((mission % 10) & 0xFF) + 0x18C, 5, 0x40D5);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x440, 0x2C8);
    
    temp_v0 = func_80036494_ovl3(0x18AU, 6, 0x40D6);
    temp_v0->unkC->unk1C = 0x56;
    func_800A3624(temp_v0->unkC, 0x70, 0x1E8);
    
    temp_v0 = func_80036494_ovl3(0xF7U, 1, 0x40D7);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x260, 0x358);
    
    temp_v0 = func_80036494_ovl3(0xF7U, 1, 0x40D8);
    temp_v0->unkC->unk0->unk2F = 0x10;
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0x260, 0x40);
    
    temp_v0 = func_80036494_ovl3(D_80068EA4_ovl3[mission], 6, 0x40D9);
    temp_v0->unkC->unk1C = 0x58;
    func_800A3624(temp_v0->unkC, 0, 0);
}

void func_80038B08_ovl3(void) {
    UnkStruct80036494 *temp_v0;

    temp_v0 = func_80036494_ovl3(0x11, 1, 0x30F1);
    func_800A3E68(temp_v0->unkC, 0x33, 0x400);
    func_800A3624(temp_v0->unkC, 0x20, 0x20);
    func_800A3904(temp_v0->unkC, 0xFF, 0xFF, 0xFF, 1);
    temp_v0->unkC->unk1C = 0;

    temp_v0 = func_80036494_ovl3(0x11, 1, 0x30F2);
    func_800A3E68(temp_v0->unkC, 0x400, 0x44);
    func_800A3624(temp_v0->unkC, 0x20, 0x20);
    func_800A3904(temp_v0->unkC, 0xFF, 0xFF, 0xFF, 1);
    temp_v0->unkC->unk1C = 0;

    temp_v0 = func_80036494_ovl3(0x11, 1, 0x30F3);
    func_800A3E68(temp_v0->unkC, 0x33, 0x400);
    func_800A3624(temp_v0->unkC, 0x20, 0x35C);
    func_800A3904(temp_v0->unkC, 0xFF, 0xFF, 0xFF, 1);
    temp_v0->unkC->unk1C = 0;

    temp_v0 = func_80036494_ovl3(0x11, 1, 0x30F4);
    func_800A3E68(temp_v0->unkC, 0x400, 0x44);
    func_800A3624(temp_v0->unkC, 0x49C, 0x20);
    func_800A3904(temp_v0->unkC, 0xFF, 0xFF, 0xFF, 1);
    temp_v0->unkC->unk1C = 0;
}

void func_80038C80_ovl3(void) {
    func_800A2900(func_80036304_ovl3(0x30F1)->unkC);
    func_800A2900(func_80036304_ovl3(0x30F2)->unkC);
    func_800A2900(func_80036304_ovl3(0x30F3)->unkC);
    func_800A2900(func_80036304_ovl3(0x30F4)->unkC);
}

void func_80038CE4_ovl3(void) {
    D_800D3BC0 = 0x7F;
    D_800D3BC1 = 0x7F;
    D_800D3BC2 = 0x7F;
    D_800D3BC4 = 0x7F;
    D_800D3BC5 = 0x7F;
    D_800D3BC6 = 0x7F;
    D_800D3BD8 = 255.0f;
    D_800D3BDC = 255.0f;
    D_800D3BE0 = 255.0f;
}

void func_80038D3C_ovl3(s8 arg0, s8 arg1, s8 arg2, u8 arg3, u8 arg4, u8 arg5) {
    D_800D3BC0 = arg0;
    D_800D3BC1 = arg1;
    D_800D3BC2 = arg2;
    D_800D3BC4 = arg0;
    D_800D3BC5 = arg1;
    D_800D3BC6 = arg2;
    D_800D3BD8 = arg3;
    D_800D3BDC = arg4;
    D_800D3BE0 = arg5;
}
