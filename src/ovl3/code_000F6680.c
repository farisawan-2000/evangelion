#include "common.h"
#include "evangelion_types.h"
#include "segments.h"

String D_800691D0_ovl3 = R"(東京地方を中心とした
関東・中部の全域に)";
String D_800691FC_ovl3 = R"(特別非常事態宣言が発令。)";
String D_80069218_ovl3 = R"(サキエル殲滅から3週間後)";
String D_80069234_ovl3 = R"(新たなる使徒の襲来か…。)";
String D_80069250_ovl3 = R"(「総員、 第一種戦闘配置」)";

void func_8004D170_ovl3(void) {
    FontParams sp18;
    u32 temp_v0;

    func_80038424_ovl3();
    func_800A3624(((UnkStruct80036494*)func_80036780_ovl3(SEG_802F9800, 0x1B3, 9, 0x19))->unkC, 0x40, 0xC0);
    sp18.str = &D_800691D0_ovl3;
    sp18.wdSpacing = -2;
    sp18.htSpacing = -2;
    sp18.p3 = 1;
    sp18.p4 = 2;
    temp_v0 = func_800A74A8(&D_800691D0_ovl3, -2);
    func_80037BDC_ovl3(&sp18.str, 0x20C9, 0x20D3, 0xA0 - ((s32)((temp_v0 >> 0x1F) + temp_v0) >> 1), 0x000000A7);
    sp18.str = &D_800691FC_ovl3;
    sp18.wdSpacing = -2;
    sp18.htSpacing = -2;
    sp18.p3 = 1;
    sp18.p4 = 3;
    func_80037A08_ovl3(&sp18.str, 0x20CA, 2);
}

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004D254_ovl3);

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004D560_ovl3);

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004DA18_ovl3);

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004DD30_ovl3);

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004DF20_ovl3);

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004E1C4_ovl3);

INCLUDE_ASM("asm/nonmatchings/ovl3/code_000F6680", func_8004E1F8_ovl3);
