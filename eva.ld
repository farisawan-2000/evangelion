OUTPUT_ARCH (mips)

#define BEGIN_SEG(name, addr) \
    _##name##SegmentStart = ADDR(.name); \
    _##name##SegmentRomStart = __romPos; \
    .name addr : AT(__romPos)

#define END_SEG(name) \
    _##name##SegmentEnd = ADDR(.name) + SIZEOF(.name); \
    _##name##SegmentRomEnd = __romPos + SIZEOF(.name); \
    __romPos += SIZEOF(.name);

#define BEGIN_NOLOAD(name) \
    _##name##SegNoloadStart = ADDR(.name.noload); \
    .name.noload (NOLOAD) :

#define END_NOLOAD(name) \
    _##name##SegNoloadEnd = ADDR(.name.noload) + SIZEOF(.name.noload);


SECTIONS
{
    __romPos = 0x0;
    BEGIN_SEG(boot, 0xA4000000) {
        BUILD_DIR/asm/header.o(.header);
        BUILD_DIR/asm/boot.o(.text);
        BUILD_DIR/asm/ipl3font.o(.data);
    }
    END_SEG(boot)

    BEGIN_SEG(main, 0x80096400) SUBALIGN(8) {
        BUILD_DIR/asm/code_1000.o(.text);
        BUILD_DIR/src/code_1050.o(.text);
        BUILD_DIR/src/code_1D90.o(.text);
        BUILD_DIR/src/code_2270.o(.text);
        BUILD_DIR/src/code_2380.o(.text);
        BUILD_DIR/src/code_2F50.o(.text);
        BUILD_DIR/src/code_3A60.o(.text);
        BUILD_DIR/src/code_5A40.o(.text);
        BUILD_DIR/src/code_6B40.o(.text);
        BUILD_DIR/src/code_7570.o(.text);
        BUILD_DIR/src/code_8C50.o(.text);
        BUILD_DIR/src/code_9840.o(.text);
        BUILD_DIR/src/code_A140.o(.text);
        BUILD_DIR/src/code_A2B0.o(.text);
        BUILD_DIR/src/code_D270.o(.text);
        BUILD_DIR/src/code_D4E0.o(.text);
        BUILD_DIR/src/code_10160.o(.text);
        BUILD_DIR/src/code_132F0.o(.text);
        BUILD_DIR/src/code_13610.o(.text);
        BUILD_DIR/src/code_15150.o(.text);
        BUILD_DIR/src/code_162C0.o(.text);
        BUILD_DIR/src/code_17D80.o(.text);
        BUILD_DIR/src/code_17E80.o(.text);
        BUILD_DIR/src/entry.o(.text);
        BUILD_DIR/src/code_184F0.o(.text);
        BUILD_DIR/src/code_18770.o(.text);
        BUILD_DIR/src/code_187A0.o(.text);
        BUILD_DIR/src/code_187F0.o(.text);
        BUILD_DIR/src/code_18830.o(.text);
        BUILD_DIR/src/code_18870.o(.text);
        BUILD_DIR/src/code_188E0.o(.text);
        BUILD_DIR/src/code_18960.o(.text);
        BUILD_DIR/src/code_18A40.o(.text);
        BUILD_DIR/src/code_1CF70.o(.text);
        BUILD_DIR/src/code_1D3E0.o(.text);
        BUILD_DIR/src/code_1D650.o(.text);
        BUILD_DIR/src/code_1E5E0.o(.text);
        BUILD_DIR/src/code_1ED00.o(.text);
        BUILD_DIR/src/code_1F8D0.o(.text);
        BUILD_DIR/src/code_1FB80.o(.text);
        BUILD_DIR/src/code_1FC30.o(.text);
        BUILD_DIR/src/code_1FCC0.o(.text);
        BUILD_DIR/src/code_1FD50.o(.text);
        BUILD_DIR/src/code_1FE00.o(.text);
        BUILD_DIR/src/code_1FE90.o(.text);
        BUILD_DIR/src/code_1FF10.o(.text);
        BUILD_DIR/src/code_20470.o(.text);
        BUILD_DIR/src/code_20590.o(.text);
        BUILD_DIR/src/code_20E70.o(.text);
        BUILD_DIR/src/code_20FA0.o(.text);
        BUILD_DIR/src/code_21460.o(.text);
        BUILD_DIR/src/code_214A0.o(.text);
        BUILD_DIR/src/code_21520.o(.text);
        BUILD_DIR/src/code_21630.o(.text);
        BUILD_DIR/src/code_21660.o(.text);
        BUILD_DIR/src/code_21700.o(.text);
        BUILD_DIR/src/code_21740.o(.text);
        BUILD_DIR/src/code_21780.o(.text);
        BUILD_DIR/src/code_21850.o(.text);
        BUILD_DIR/src/code_218C0.o(.text);
        BUILD_DIR/src/code_21F80.o(.text);
        BUILD_DIR/src/code_22290.o(.text);
        BUILD_DIR/src/code_22880.o(.text);
        BUILD_DIR/src/code_22900.o(.text);
        BUILD_DIR/src/code_22B40.o(.text);
        BUILD_DIR/src/code_22BE0.o(.text);
        BUILD_DIR/src/code_22FE0.o(.text);
        BUILD_DIR/src/code_23320.o(.text);
        BUILD_DIR/src/code_23610.o(.text);
        BUILD_DIR/src/code_23700.o(.text);
        BUILD_DIR/src/code_23C30.o(.text);
        BUILD_DIR/src/code_23DB0.o(.text);
        BUILD_DIR/src/code_24170.o(.text);
        BUILD_DIR/src/code_24260.o(.text);
        BUILD_DIR/src/code_24310.o(.text);
        BUILD_DIR/src/code_24450.o(.text);
        BUILD_DIR/src/code_244F0.o(.text);
        BUILD_DIR/src/code_25830.o(.text);
        BUILD_DIR/src/code_275D0.o(.text);
        BUILD_DIR/src/code_27750.o(.text);
        BUILD_DIR/src/code_27790.o(.text);
        BUILD_DIR/src/code_277E0.o(.text);
        BUILD_DIR/src/code_27820.o(.text);
        BUILD_DIR/src/code_27E70.o(.text);
        BUILD_DIR/src/code_27F10.o(.text);
        BUILD_DIR/src/code_28040.o(.text);
        BUILD_DIR/src/code_28070.o(.text);
        BUILD_DIR/src/code_28660.o(.text);
        BUILD_DIR/src/code_28670.o(.text);
        BUILD_DIR/src/code_28B90.o(.text);
        BUILD_DIR/src/code_292A0.o(.text);
        BUILD_DIR/src/code_29430.o(.text);
        BUILD_DIR/src/code_29860.o(.text);
        BUILD_DIR/src/code_29E60.o(.text);
        BUILD_DIR/src/code_2A220.o(.text);
        BUILD_DIR/src/code_2A8C0.o(.text);
        BUILD_DIR/src/code_2ABA0.o(.text);
        BUILD_DIR/src/code_2AC70.o(.text);
        BUILD_DIR/src/code_2ADB0.o(.text);
        BUILD_DIR/src/code_2B2C0.o(.text);
        BUILD_DIR/src/code_2B400.o(.text);
        BUILD_DIR/src/code_2B530.o(.text);
        BUILD_DIR/src/code_2B950.o(.text);
        BUILD_DIR/src/code_2C480.o(.text);
        BUILD_DIR/src/code_2C570.o(.text);
        BUILD_DIR/src/code_2C660.o(.text);
        BUILD_DIR/src/code_2C730.o(.text);
        BUILD_DIR/src/code_2C850.o(.text);
        BUILD_DIR/src/code_2C910.o(.text);
        BUILD_DIR/src/code_2C950.o(.text);
        BUILD_DIR/src/code_2C9A0.o(.text);
        BUILD_DIR/src/code_2CA30.o(.text);
        BUILD_DIR/src/code_2CAD0.o(.text);
        BUILD_DIR/src/code_2CDD0.o(.text);
        BUILD_DIR/src/code_2CE90.o(.text);
        BUILD_DIR/src/code_2CED0.o(.text);
        BUILD_DIR/src/code_2CF10.o(.text);
        BUILD_DIR/src/code_2D290.o(.text);
        BUILD_DIR/src/code_2D2F0.o(.text);
        BUILD_DIR/src/code_2D4B0.o(.text);
        BUILD_DIR/src/code_2D500.o(.text);
        BUILD_DIR/src/code_2D550.o(.text);
        BUILD_DIR/src/code_2D860.o(.text);
        BUILD_DIR/src/code_2E080.o(.text);
        BUILD_DIR/src/code_2E2A0.o(.text);
        BUILD_DIR/src/code_2E880.o(.text);
        BUILD_DIR/src/code_2EA40.o(.text);
        BUILD_DIR/src/code_2EF20.o(.text);
        BUILD_DIR/src/code_2EF80.o(.text);
        BUILD_DIR/src/code_2F190.o(.text);
        BUILD_DIR/src/code_2F200.o(.text);
        BUILD_DIR/src/code_2FC90.o(.text);
        BUILD_DIR/src/code_2FE80.o(.text);
        BUILD_DIR/src/code_300F0.o(.text);
        BUILD_DIR/src/code_30400.o(.text);
        BUILD_DIR/src/code_31340.o(.text);
        BUILD_DIR/src/code_313D0.o(.text);
        BUILD_DIR/src/code_31460.o(.text);
        BUILD_DIR/src/code_316C0.o(.text);
        BUILD_DIR/src/code_31830.o(.text);
        BUILD_DIR/src/code_31850.o(.text);
        BUILD_DIR/src/code_318D0.o(.text);
        BUILD_DIR/src/code_324D0.o(.text);
        BUILD_DIR/src/code_324E0.o(.text);
        BUILD_DIR/src/code_324F0.o(.text);
        BUILD_DIR/src/code_32500.o(.text);
        BUILD_DIR/src/code_32510.o(.text);
        BUILD_DIR/src/code_32560.o(.text);
        BUILD_DIR/src/code_326E0.o(.text);
        BUILD_DIR/src/code_327D0.o(.text);
        BUILD_DIR/src/code_328B0.o(.text);
        BUILD_DIR/src/code_32910.o(.text);
        BUILD_DIR/src/code_32960.o(.text);
        BUILD_DIR/src/code_32A70.o(.text);
        BUILD_DIR/src/code_33480.o(.text);
        BUILD_DIR/src/code_34180.o(.text);
        BUILD_DIR/src/code_341A0.o(.text);
        BUILD_DIR/src/code_34360.o(.text);
        BUILD_DIR/src/code_343A0.o(.text);
        BUILD_DIR/src/code_343F0.o(.text);
        BUILD_DIR/src/code_34430.o(.text);
        BUILD_DIR/src/code_34B80.o(.text);
        BUILD_DIR/src/code_34E10.o(.text);
        BUILD_DIR/src/code_350B0.o(.text);
        BUILD_DIR/src/code_350C0.o(.text);
        BUILD_DIR/src/code_350D0.o(.text);
    }
    END_SEG(main)
    _mainSegNoloadStart = 0x800FF2E0;

    BEGIN_SEG(data, __romPos) {
        BUILD_DIR/asm/bin_354B0.o(.data);
        BUILD_DIR/asm/yay0.o(.data);
        BUILD_DIR/asm/sound_data.o(.data);
    }
    END_SEG(data)
    /DISCARD/ :
    {
        *(*);
    }
}