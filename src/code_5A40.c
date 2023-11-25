// c_flag_g2
#include "common.h"

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009AE40);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B048);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B268);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B43C);

typedef struct {
    u8 *romStart;
    u8 *romEnd;
} BankTable;
extern BankTable PointerBankTables[];
extern BankTable WaveBankTables[];

void func_8009B538(s32 arg0) {
    func_800ADBA0(
        PointerBankTables[arg0].romStart,
        PointerBankTables[arg0].romEnd - PointerBankTables[arg0].romStart,
        WaveBankTables[arg0].romStart
    );
}

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B584);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B5C0);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B654);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B6C4);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B6EC);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B710);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B754);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B830);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B918);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B938);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B974);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B998);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B9D4);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009BA10);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009BAE0);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009BB08);
