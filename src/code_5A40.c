// c_flag_g2
#include "common.h"

typedef struct {
    u8 *romStart;
    u8 *romEnd;
} BankTable;

#define EXTERN_SOUND(nm) \
        extern u8 *Sound_ ## nm ## _wbk_ROM_START; \
        extern u8 *Sound_ ## nm ## _wbk_ROM_END; \
        extern u8 *Sound_ ## nm ## _ptr_ROM_START; \
        extern u8 *Sound_ ## nm ## _ptr_ROM_END; \
        extern u8 *Sound_ ## nm ## _tbl_ROM_START; \
        extern u8 *Sound_ ## nm ## _tbl_ROM_END; \
        extern u8 *Sound_ ## nm ## _bfx_ROM_START; \
        extern u8 *Sound_ ## nm ## _bfx_ROM_END;

EXTERN_SOUND(effects);
EXTERN_SOUND(voice);
EXTERN_SOUND(sndfnt1);
EXTERN_SOUND(sndfnt2);

EXTERN_SOUND(soundbank_01);
EXTERN_SOUND(soundbank_02);
EXTERN_SOUND(soundbank_03);
EXTERN_SOUND(soundbank_04);
EXTERN_SOUND(soundbank_05);
EXTERN_SOUND(soundbank_06);
EXTERN_SOUND(soundbank_07);
EXTERN_SOUND(soundbank_08);
EXTERN_SOUND(soundbank_09);
EXTERN_SOUND(soundbank_10);
EXTERN_SOUND(soundbank_11);
EXTERN_SOUND(soundbank_12);
EXTERN_SOUND(soundbank_13);
EXTERN_SOUND(soundbank_14);
EXTERN_SOUND(soundbank_15);
EXTERN_SOUND(soundbank_16);
EXTERN_SOUND(soundbank_17);
EXTERN_SOUND(soundbank_18);
EXTERN_SOUND(soundbank_19);
EXTERN_SOUND(soundbank_20);
EXTERN_SOUND(soundbank_21);
EXTERN_SOUND(soundbank_22);
EXTERN_SOUND(soundbank_23);
EXTERN_SOUND(soundbank_24);

#define BANK_ENTRY(type, nm) {&Sound_ ## nm ## _ ## type ## _ROM_START, &Sound_ ## nm ## _ ## type ## _ROM_END}
BankTable WaveBankTables[] = {
    BANK_ENTRY(wbk, effects),
    BANK_ENTRY(wbk, voice),
    BANK_ENTRY(wbk, sndfnt1),
    BANK_ENTRY(wbk, sndfnt2),
};

BankTable PointerBankTables[] = {
    BANK_ENTRY(ptr, effects),
    BANK_ENTRY(ptr, voice),
    BANK_ENTRY(ptr, sndfnt1),
    BANK_ENTRY(ptr, sndfnt2),
    BANK_ENTRY(tbl, effects),
    BANK_ENTRY(tbl, voice),
};

BankTable SoundFXTables[] = {
    BANK_ENTRY(bfx, soundbank_01),
    BANK_ENTRY(bfx, soundbank_02),
    BANK_ENTRY(bfx, soundbank_03),
    BANK_ENTRY(bfx, soundbank_04),
    BANK_ENTRY(bfx, soundbank_05),
    BANK_ENTRY(bfx, soundbank_06),
    BANK_ENTRY(bfx, soundbank_07),
    BANK_ENTRY(bfx, soundbank_08),
    BANK_ENTRY(bfx, soundbank_09),
    BANK_ENTRY(bfx, soundbank_10),
    BANK_ENTRY(bfx, soundbank_11),
    BANK_ENTRY(bfx, soundbank_12),
    BANK_ENTRY(bfx, soundbank_13),
    BANK_ENTRY(bfx, soundbank_14),
    BANK_ENTRY(bfx, soundbank_15),
    BANK_ENTRY(bfx, soundbank_16),
    BANK_ENTRY(bfx, soundbank_17),
    BANK_ENTRY(bfx, soundbank_18),
    BANK_ENTRY(bfx, soundbank_19),
    BANK_ENTRY(bfx, soundbank_20),
    BANK_ENTRY(bfx, soundbank_21),
    BANK_ENTRY(bfx, soundbank_22),
    BANK_ENTRY(bfx, soundbank_23),
    BANK_ENTRY(bfx, soundbank_24),
};

int D_800D3B80 = -1;
int D_800D3B84 = -1;
float D_800D3B88 = 0;
float D_800D3B8C = 0;
float D_800D3B90 = 0;
float D_800D3B94 = 0;
float D_800D3B98 = 0;
float D_800D3B9C = 256;
u16 D_800D3BA0 = 0;
u8 D_800D3BA2 = 0;

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009AE40);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B048);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B268);

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B43C);

extern BankTable PointerBankTables[];
extern BankTable WaveBankTables[];
extern BankTable SoundFXTables[];

void func_8009B538(s32 arg0) {
    func_800ADBA0(
        PointerBankTables[arg0].romStart,
        PointerBankTables[arg0].romEnd - PointerBankTables[arg0].romStart,
        WaveBankTables[arg0].romStart
    );
}

INCLUDE_ASM("asm/nonmatchings/code_5A40", func_8009B584);

extern u16 D_800D4134[];

void func_8009B5C0(u32 arg0) {
    s32 ptrRomStart;
    s32 sfxRomStart;
    s32 temp_v0;

    if (arg0 < 24) {
        temp_v0 = D_800D4134[arg0];
        ptrRomStart = PointerBankTables[temp_v0].romStart;
        func_800ADBA0(ptrRomStart, PointerBankTables[temp_v0].romEnd - ptrRomStart, WaveBankTables[temp_v0].romStart);
        sfxRomStart = SoundFXTables[arg0].romStart;
        func_800ADC30(0, sfxRomStart, SoundFXTables[arg0].romEnd - sfxRomStart);
    }
}

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
