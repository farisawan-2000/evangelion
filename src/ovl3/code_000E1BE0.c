#include "common.h"
#include "evangelion_types.h"

String _S01 = R"(攻撃目標 :)";
String _S02 = R"(使用EVA:)";
String _S03 = R"(作戦内容 :)";
String mission4GoalText = R"(目    標 :)";

String TEXT_SACHIEL = R"(第3使徒サキエル)";
String TEXT_UNIT_01 = R"(初号機)";
String TEXT_SACHIEL_DESCRIPTION = R"(NERV本部直上での
使徒の殲滅。)";
String TEXT_SHAMSHIEL = R"(第4使徒シャムシエル)";
String TEXT_UNIT_01_2 = R"(初号機)";
String TEXT_SHAMSHIEL_DESCRIPTION = R"(第3新東京市上での
使徒の殲滅。)";
String TEXT_RAMIEL = R"(第5使徒ラミエル)";
String TEXT_UNIT_01_UNIT_00 = R"(初号機 ・ 零号機)";
String TEXT_RAMIEL_DESCRIPTION = R"(ポジトロンライフルに
よる、 長々距離からの
直接攻撃。)";
String TEXT_JET_ALONE = R"(ジェットアローン)";
String TEXT_UNIT_01_3 = R"(初号機)";
String TEXT_JA_DESCRIPTION = R"(葛城一尉をJA内に
送り込み、 JAの活動が
停止するまでJAを
抑え込む)";

const MissionText D_80069E60_ovl3[15] = {
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SHAMSHIEL, TEXT_UNIT_01_2, TEXT_SHAMSHIEL_DESCRIPTION},
    {TEXT_RAMIEL, TEXT_UNIT_01_UNIT_00, TEXT_RAMIEL_DESCRIPTION},
    {TEXT_JET_ALONE, TEXT_UNIT_01_3, TEXT_JA_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {TEXT_SACHIEL, TEXT_UNIT_01, TEXT_SACHIEL_DESCRIPTION},
    {NULL, NULL, NULL},
};

u16 D_80068EA4_ovl3[] = {
    0x05CF,
    0x05CF,
    0x05D0,
    0x0600,
    0x066A,
    0x0000,
};

void func_800386D0_ovl3(u8 mission) {
    FontParams parms;
    MissionText sp20[15];
    UnkStruct80036494* temp_v0;
    u8 temp;

    memcpy(sp20, D_80069E60_ovl3, sizeof(D_80069E60_ovl3));

    if (mission == 4) {
        parms.str = &mission4GoalText;
        parms.wdSpacing = -4;
        parms.htSpacing = 0;
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
    parms.wdSpacing = -4;
    parms.htSpacing = 0;
    parms.p3 = 1;
    parms.p4 = 2;
    func_80037BDC_ovl3(&parms, 0x40CA, 0x40CB, 0x6C, 0x18);
    func_80036304_ovl3(0x40CA)->unkC->unk1C = 0x58;
    func_80036304_ovl3(0x40CB)->unkC->unk1C = 0x57;
    
    parms.str = sp20[temp].machineType;
    parms.wdSpacing = -4;
    parms.htSpacing = 0;
    parms.p3 = 1;
    parms.p4 = 2;
    func_80037BDC_ovl3(&parms, 0x40CE, 0x40CF, 0x6C, 0x34);
    func_80036304_ovl3(0x40CE)->unkC->unk1C = 0x58;
    func_80036304_ovl3(0x40CF)->unkC->unk1C = 0x57;
    
    parms.str = sp20[temp].description;
    parms.wdSpacing = -4;
    parms.htSpacing = -2;
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
