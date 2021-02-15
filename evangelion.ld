#ifndef SPLAT_BEGIN_SEG
#ifndef SHIFT
#define SPLAT_BEGIN_SEG(name, start, vram, subalign) \
    . = start;\
    name##_ROM_START = .;\
    name##_VRAM = ADDR(.name);\
    .name vram : AT(name##_ROM_START) subalign {
#else
#define SPLAT_BEGIN_SEG(name, start, vram, subalign) \
    name##_ROM_START = .;\
    name##_VRAM = ADDR(.name);\
    .name vram : AT(name##_ROM_START) subalign {
#endif
#endif

#ifndef SPLAT_END_SEG
#ifndef SHIFT
#define SPLAT_END_SEG(name, end) \
    } \
    . = end;\
    name##_ROM_END = .;
#else
#define SPLAT_END_SEG(name, end) \
    } \
    name##_ROM_END = .;
#endif
#endif

SECTIONS
{
    SPLAT_BEGIN_SEG(header, 0x0, 0x0, )
        header_s = .;
        BUILD_DIR/asm/header.s.o(.data);
    SPLAT_END_SEG(header, 0x40)
    
    SPLAT_BEGIN_SEG(code_boot, 0x40, 0xA4000040, )
        boot_s = .;
        BUILD_DIR/asm/boot.s.o(.text);
        bootcode_font_bin = .;
        BUILD_DIR/bin/bootcode_font.bin.o(.data);
    SPLAT_END_SEG(code_boot, 0x1000)
    
    SPLAT_BEGIN_SEG(code_main, 0x1000, 0x80096400, )
        main_1000_s = .;
        BUILD_DIR/asm/main_1000.s.o(.text);
        main_1050_code_1050 = .;
        BUILD_DIR/code_1050/main_1050.code_1050.o(.text);
        main_1D90_code_1D90 = .;
        BUILD_DIR/code_1D90/main_1D90.code_1D90.o(.text);
        main_2270_code_2270 = .;
        BUILD_DIR/code_2270/main_2270.code_2270.o(.text);
        main_2380_code_2380 = .;
        BUILD_DIR/code_2380/main_2380.code_2380.o(.text);
        main_2F50_code_2F50 = .;
        BUILD_DIR/code_2F50/main_2F50.code_2F50.o(.text);
        main_3A60_code_3A60 = .;
        BUILD_DIR/code_3A60/main_3A60.code_3A60.o(.text);
        main_5A40_code_5A40 = .;
        BUILD_DIR/code_5A40/main_5A40.code_5A40.o(.text);
        main_6B40_code_6B40 = .;
        BUILD_DIR/code_6B40/main_6B40.code_6B40.o(.text);
        main_7570_code_7570 = .;
        BUILD_DIR/code_7570/main_7570.code_7570.o(.text);
        main_8C50_code_8C50 = .;
        BUILD_DIR/code_8C50/main_8C50.code_8C50.o(.text);
        main_9840_code_9840 = .;
        BUILD_DIR/code_9840/main_9840.code_9840.o(.text);
        main_A140_code_A140 = .;
        BUILD_DIR/code_A140/main_A140.code_A140.o(.text);
        main_A2B0_code_A2B0 = .;
        BUILD_DIR/code_A2B0/main_A2B0.code_A2B0.o(.text);
        main_D270_code_D270 = .;
        BUILD_DIR/code_D270/main_D270.code_D270.o(.text);
        main_D4E0_code_D4E0 = .;
        BUILD_DIR/code_D4E0/main_D4E0.code_D4E0.o(.text);
        main_10160_code_10160 = .;
        BUILD_DIR/code_10160/main_10160.code_10160.o(.text);
        main_132F0_code_132F0 = .;
        BUILD_DIR/code_132F0/main_132F0.code_132F0.o(.text);
        main_13610_code_13610 = .;
        BUILD_DIR/code_13610/main_13610.code_13610.o(.text);
        main_15150_code_15150 = .;
        BUILD_DIR/code_15150/main_15150.code_15150.o(.text);
        main_162C0_code_162C0 = .;
        BUILD_DIR/code_162C0/main_162C0.code_162C0.o(.text);
        main_17D80_code_17D80 = .;
        BUILD_DIR/code_17D80/main_17D80.code_17D80.o(.text);
        main_17E80_code_17E80 = .;
        BUILD_DIR/code_17E80/main_17E80.code_17E80.o(.text);
        main_183B0_code_183B0 = .;
        BUILD_DIR/code_183B0/main_183B0.code_183B0.o(.text);
        main_184F0_code_184F0 = .;
        BUILD_DIR/code_184F0/main_184F0.code_184F0.o(.text);
        main_18770_code_18770 = .;
        BUILD_DIR/code_18770/main_18770.code_18770.o(.text);
        main_187A0_code_187A0 = .;
        BUILD_DIR/code_187A0/main_187A0.code_187A0.o(.text);
        main_187F0_code_187F0 = .;
        BUILD_DIR/code_187F0/main_187F0.code_187F0.o(.text);
        main_18830_code_18830 = .;
        BUILD_DIR/code_18830/main_18830.code_18830.o(.text);
        main_18870_code_18870 = .;
        BUILD_DIR/code_18870/main_18870.code_18870.o(.text);
        main_188E0_code_188E0 = .;
        BUILD_DIR/code_188E0/main_188E0.code_188E0.o(.text);
        main_18960_code_18960 = .;
        BUILD_DIR/code_18960/main_18960.code_18960.o(.text);
        main_18A40_code_18A40 = .;
        BUILD_DIR/code_18A40/main_18A40.code_18A40.o(.text);
        main_1CF70_code_1CF70 = .;
        BUILD_DIR/code_1CF70/main_1CF70.code_1CF70.o(.text);
        main_1D3E0_code_1D3E0 = .;
        BUILD_DIR/code_1D3E0/main_1D3E0.code_1D3E0.o(.text);
    }
    SPLAT_BEGIN_SEG(main_1D524_code_1D524, 0x1D524, 0x800B2924, )
        main_1D524_code_1D524 = .;
        BUILD_DIR/code_1D524/main_1D524.code_1D524.o(.text);
        main_1D650_code_1D650 = .;
        BUILD_DIR/code_1D650/main_1D650.code_1D650.o(.text);
        main_1E5E0_code_1E5E0 = .;
        BUILD_DIR/code_1E5E0/main_1E5E0.code_1E5E0.o(.text);
        main_1ED00_code_1ED00 = .;
        BUILD_DIR/code_1ED00/main_1ED00.code_1ED00.o(.text);
        main_1F8D0_code_1F8D0 = .;
        BUILD_DIR/code_1F8D0/main_1F8D0.code_1F8D0.o(.text);
        main_1FB80_code_1FB80 = .;
        BUILD_DIR/code_1FB80/main_1FB80.code_1FB80.o(.text);
        main_1FC30_code_1FC30 = .;
        BUILD_DIR/code_1FC30/main_1FC30.code_1FC30.o(.text);
        main_1FCC0_code_1FCC0 = .;
        BUILD_DIR/code_1FCC0/main_1FCC0.code_1FCC0.o(.text);
        main_1FD50_code_1FD50 = .;
        BUILD_DIR/code_1FD50/main_1FD50.code_1FD50.o(.text);
        main_1FE00_code_1FE00 = .;
        BUILD_DIR/code_1FE00/main_1FE00.code_1FE00.o(.text);
        main_1FE90_code_1FE90 = .;
        BUILD_DIR/code_1FE90/main_1FE90.code_1FE90.o(.text);
        main_1FF10_code_1FF10 = .;
        BUILD_DIR/code_1FF10/main_1FF10.code_1FF10.o(.text);
        main_20470_code_20470 = .;
        BUILD_DIR/code_20470/main_20470.code_20470.o(.text);
        main_20590_code_20590 = .;
        BUILD_DIR/code_20590/main_20590.code_20590.o(.text);
        main_20E70_code_20E70 = .;
        BUILD_DIR/code_20E70/main_20E70.code_20E70.o(.text);
        main_20FA0_code_20FA0 = .;
        BUILD_DIR/code_20FA0/main_20FA0.code_20FA0.o(.text);
        main_21460_code_21460 = .;
        BUILD_DIR/code_21460/main_21460.code_21460.o(.text);
        main_214A0_code_214A0 = .;
        BUILD_DIR/code_214A0/main_214A0.code_214A0.o(.text);
        main_21520_code_21520 = .;
        BUILD_DIR/code_21520/main_21520.code_21520.o(.text);
        main_21630_code_21630 = .;
        BUILD_DIR/code_21630/main_21630.code_21630.o(.text);
        main_21660_code_21660 = .;
        BUILD_DIR/code_21660/main_21660.code_21660.o(.text);
        main_21700_code_21700 = .;
        BUILD_DIR/code_21700/main_21700.code_21700.o(.text);
        main_21740_code_21740 = .;
        BUILD_DIR/code_21740/main_21740.code_21740.o(.text);
        main_21780_code_21780 = .;
        BUILD_DIR/code_21780/main_21780.code_21780.o(.text);
        main_21850_code_21850 = .;
        BUILD_DIR/code_21850/main_21850.code_21850.o(.text);
        main_218C0_code_218C0 = .;
        BUILD_DIR/code_218C0/main_218C0.code_218C0.o(.text);
        main_21F80_code_21F80 = .;
        BUILD_DIR/code_21F80/main_21F80.code_21F80.o(.text);
        main_22290_code_22290 = .;
        BUILD_DIR/code_22290/main_22290.code_22290.o(.text);
        main_22880_code_22880 = .;
        BUILD_DIR/code_22880/main_22880.code_22880.o(.text);
        main_22900_code_22900 = .;
        BUILD_DIR/code_22900/main_22900.code_22900.o(.text);
        main_22B40_code_22B40 = .;
        BUILD_DIR/code_22B40/main_22B40.code_22B40.o(.text);
        main_22BE0_code_22BE0 = .;
        BUILD_DIR/code_22BE0/main_22BE0.code_22BE0.o(.text);
        main_22FE0_code_22FE0 = .;
        BUILD_DIR/code_22FE0/main_22FE0.code_22FE0.o(.text);
        main_23320_code_23320 = .;
        BUILD_DIR/code_23320/main_23320.code_23320.o(.text);
        main_23610_code_23610 = .;
        BUILD_DIR/code_23610/main_23610.code_23610.o(.text);
        main_23700_code_23700 = .;
        BUILD_DIR/code_23700/main_23700.code_23700.o(.text);
        main_23C30_code_23C30 = .;
        BUILD_DIR/code_23C30/main_23C30.code_23C30.o(.text);
        main_23DB0_code_23DB0 = .;
        BUILD_DIR/code_23DB0/main_23DB0.code_23DB0.o(.text);
        main_24170_code_24170 = .;
        BUILD_DIR/code_24170/main_24170.code_24170.o(.text);
        main_24260_code_24260 = .;
        BUILD_DIR/code_24260/main_24260.code_24260.o(.text);
        main_24310_code_24310 = .;
        BUILD_DIR/code_24310/main_24310.code_24310.o(.text);
        main_24450_code_24450 = .;
        BUILD_DIR/code_24450/main_24450.code_24450.o(.text);
        main_244F0_code_244F0 = .;
        BUILD_DIR/code_244F0/main_244F0.code_244F0.o(.text);
        main_25830_code_25830 = .;
        BUILD_DIR/code_25830/main_25830.code_25830.o(.text);
        main_275D0_code_275D0 = .;
        BUILD_DIR/code_275D0/main_275D0.code_275D0.o(.text);
        main_27750_code_27750 = .;
        BUILD_DIR/code_27750/main_27750.code_27750.o(.text);
        main_27790_code_27790 = .;
        BUILD_DIR/code_27790/main_27790.code_27790.o(.text);
        main_277E0_code_277E0 = .;
        BUILD_DIR/code_277E0/main_277E0.code_277E0.o(.text);
        main_27820_code_27820 = .;
        BUILD_DIR/code_27820/main_27820.code_27820.o(.text);
        main_27E70_code_27E70 = .;
        BUILD_DIR/code_27E70/main_27E70.code_27E70.o(.text);
        main_27F10_code_27F10 = .;
        BUILD_DIR/code_27F10/main_27F10.code_27F10.o(.text);
        main_28040_code_28040 = .;
        BUILD_DIR/code_28040/main_28040.code_28040.o(.text);
        main_28070_code_28070 = .;
        BUILD_DIR/code_28070/main_28070.code_28070.o(.text);
        main_28660_code_28660 = .;
        BUILD_DIR/code_28660/main_28660.code_28660.o(.text);
        main_28670_code_28670 = .;
        BUILD_DIR/code_28670/main_28670.code_28670.o(.text);
        main_28B90_code_28B90 = .;
        BUILD_DIR/code_28B90/main_28B90.code_28B90.o(.text);
        main_292A0_code_292A0 = .;
        BUILD_DIR/code_292A0/main_292A0.code_292A0.o(.text);
        main_29430_code_29430 = .;
        BUILD_DIR/code_29430/main_29430.code_29430.o(.text);
        main_29860_code_29860 = .;
        BUILD_DIR/code_29860/main_29860.code_29860.o(.text);
        main_29E60_code_29E60 = .;
        BUILD_DIR/code_29E60/main_29E60.code_29E60.o(.text);
        main_2A220_code_2A220 = .;
        BUILD_DIR/code_2A220/main_2A220.code_2A220.o(.text);
        main_2A8C0_code_2A8C0 = .;
        BUILD_DIR/code_2A8C0/main_2A8C0.code_2A8C0.o(.text);
        main_2ABA0_code_2ABA0 = .;
        BUILD_DIR/code_2ABA0/main_2ABA0.code_2ABA0.o(.text);
        main_2AC70_code_2AC70 = .;
        BUILD_DIR/code_2AC70/main_2AC70.code_2AC70.o(.text);
        main_2ADB0_code_2ADB0 = .;
        BUILD_DIR/code_2ADB0/main_2ADB0.code_2ADB0.o(.text);
        main_2B2C0_code_2B2C0 = .;
        BUILD_DIR/code_2B2C0/main_2B2C0.code_2B2C0.o(.text);
        main_2B400_code_2B400 = .;
        BUILD_DIR/code_2B400/main_2B400.code_2B400.o(.text);
        main_2B530_code_2B530 = .;
        BUILD_DIR/code_2B530/main_2B530.code_2B530.o(.text);
        main_2B950_code_2B950 = .;
        BUILD_DIR/code_2B950/main_2B950.code_2B950.o(.text);
        main_2C480_code_2C480 = .;
        BUILD_DIR/code_2C480/main_2C480.code_2C480.o(.text);
        main_2C570_code_2C570 = .;
        BUILD_DIR/code_2C570/main_2C570.code_2C570.o(.text);
        main_2C660_code_2C660 = .;
        BUILD_DIR/code_2C660/main_2C660.code_2C660.o(.text);
        main_2C730_code_2C730 = .;
        BUILD_DIR/code_2C730/main_2C730.code_2C730.o(.text);
        main_2C850_code_2C850 = .;
        BUILD_DIR/code_2C850/main_2C850.code_2C850.o(.text);
        main_2C910_code_2C910 = .;
        BUILD_DIR/code_2C910/main_2C910.code_2C910.o(.text);
        main_2C950_code_2C950 = .;
        BUILD_DIR/code_2C950/main_2C950.code_2C950.o(.text);
        main_2C9A0_code_2C9A0 = .;
        BUILD_DIR/code_2C9A0/main_2C9A0.code_2C9A0.o(.text);
        main_2CA30_code_2CA30 = .;
        BUILD_DIR/code_2CA30/main_2CA30.code_2CA30.o(.text);
        main_2CAD0_code_2CAD0 = .;
        BUILD_DIR/code_2CAD0/main_2CAD0.code_2CAD0.o(.text);
        main_2CDD0_code_2CDD0 = .;
        BUILD_DIR/code_2CDD0/main_2CDD0.code_2CDD0.o(.text);
        main_2CE90_code_2CE90 = .;
        BUILD_DIR/code_2CE90/main_2CE90.code_2CE90.o(.text);
        main_2CED0_code_2CED0 = .;
        BUILD_DIR/code_2CED0/main_2CED0.code_2CED0.o(.text);
        main_2CF10_code_2CF10 = .;
        BUILD_DIR/code_2CF10/main_2CF10.code_2CF10.o(.text);
        main_2D290_code_2D290 = .;
        BUILD_DIR/code_2D290/main_2D290.code_2D290.o(.text);
        main_2D2F0_code_2D2F0 = .;
        BUILD_DIR/code_2D2F0/main_2D2F0.code_2D2F0.o(.text);
        main_2D4B0_code_2D4B0 = .;
        BUILD_DIR/code_2D4B0/main_2D4B0.code_2D4B0.o(.text);
        main_2D500_code_2D500 = .;
        BUILD_DIR/code_2D500/main_2D500.code_2D500.o(.text);
        main_2D550_code_2D550 = .;
        BUILD_DIR/code_2D550/main_2D550.code_2D550.o(.text);
        main_2D860_code_2D860 = .;
        BUILD_DIR/code_2D860/main_2D860.code_2D860.o(.text);
        main_2E080_code_2E080 = .;
        BUILD_DIR/code_2E080/main_2E080.code_2E080.o(.text);
        main_2E2A0_code_2E2A0 = .;
        BUILD_DIR/code_2E2A0/main_2E2A0.code_2E2A0.o(.text);
        main_2E880_code_2E880 = .;
        BUILD_DIR/code_2E880/main_2E880.code_2E880.o(.text);
        main_2EA40_code_2EA40 = .;
        BUILD_DIR/code_2EA40/main_2EA40.code_2EA40.o(.text);
        main_2EF20_code_2EF20 = .;
        BUILD_DIR/code_2EF20/main_2EF20.code_2EF20.o(.text);
        main_2EF80_code_2EF80 = .;
        BUILD_DIR/code_2EF80/main_2EF80.code_2EF80.o(.text);
        main_2F190_code_2F190 = .;
        BUILD_DIR/code_2F190/main_2F190.code_2F190.o(.text);
        main_2F200_code_2F200 = .;
        BUILD_DIR/code_2F200/main_2F200.code_2F200.o(.text);
        main_2FC90_code_2FC90 = .;
        BUILD_DIR/code_2FC90/main_2FC90.code_2FC90.o(.text);
        main_2FE80_code_2FE80 = .;
        BUILD_DIR/code_2FE80/main_2FE80.code_2FE80.o(.text);
        main_300F0_code_300F0 = .;
        BUILD_DIR/code_300F0/main_300F0.code_300F0.o(.text);
        main_30400_code_30400 = .;
        BUILD_DIR/code_30400/main_30400.code_30400.o(.text);
        main_31340_code_31340 = .;
        BUILD_DIR/code_31340/main_31340.code_31340.o(.text);
        main_313D0_code_313D0 = .;
        BUILD_DIR/code_313D0/main_313D0.code_313D0.o(.text);
        main_31460_code_31460 = .;
        BUILD_DIR/code_31460/main_31460.code_31460.o(.text);
        main_316C0_code_316C0 = .;
        BUILD_DIR/code_316C0/main_316C0.code_316C0.o(.text);
        main_31830_code_31830 = .;
        BUILD_DIR/code_31830/main_31830.code_31830.o(.text);
        main_31850_code_31850 = .;
        BUILD_DIR/code_31850/main_31850.code_31850.o(.text);
        main_318D0_code_318D0 = .;
        BUILD_DIR/code_318D0/main_318D0.code_318D0.o(.text);
        main_324D0_code_324D0 = .;
        BUILD_DIR/code_324D0/main_324D0.code_324D0.o(.text);
        main_324E0_code_324E0 = .;
        BUILD_DIR/code_324E0/main_324E0.code_324E0.o(.text);
        main_324F0_code_324F0 = .;
        BUILD_DIR/code_324F0/main_324F0.code_324F0.o(.text);
        main_32500_code_32500 = .;
        BUILD_DIR/code_32500/main_32500.code_32500.o(.text);
        main_32510_code_32510 = .;
        BUILD_DIR/code_32510/main_32510.code_32510.o(.text);
        main_32560_code_32560 = .;
        BUILD_DIR/code_32560/main_32560.code_32560.o(.text);
        main_326E0_code_326E0 = .;
        BUILD_DIR/code_326E0/main_326E0.code_326E0.o(.text);
        main_327D0_code_327D0 = .;
        BUILD_DIR/code_327D0/main_327D0.code_327D0.o(.text);
        main_328B0_code_328B0 = .;
        BUILD_DIR/code_328B0/main_328B0.code_328B0.o(.text);
        main_32910_code_32910 = .;
        BUILD_DIR/code_32910/main_32910.code_32910.o(.text);
        main_32960_code_32960 = .;
        BUILD_DIR/code_32960/main_32960.code_32960.o(.text);
        main_32A70_code_32A70 = .;
        BUILD_DIR/code_32A70/main_32A70.code_32A70.o(.text);
        main_33480_code_33480 = .;
        BUILD_DIR/code_33480/main_33480.code_33480.o(.text);
        main_34180_code_34180 = .;
        BUILD_DIR/code_34180/main_34180.code_34180.o(.text);
        main_341A0_code_341A0 = .;
        BUILD_DIR/code_341A0/main_341A0.code_341A0.o(.text);
        main_34360_code_34360 = .;
        BUILD_DIR/code_34360/main_34360.code_34360.o(.text);
        main_343A0_code_343A0 = .;
        BUILD_DIR/code_343A0/main_343A0.code_343A0.o(.text);
        main_343F0_code_343F0 = .;
        BUILD_DIR/code_343F0/main_343F0.code_343F0.o(.text);
        main_34430_code_34430 = .;
        BUILD_DIR/code_34430/main_34430.code_34430.o(.text);
        main_34B80_code_34B80 = .;
        BUILD_DIR/code_34B80/main_34B80.code_34B80.o(.text);
        main_34E10_code_34E10 = .;
        BUILD_DIR/code_34E10/main_34E10.code_34E10.o(.text);
        main_350B0_code_350B0 = .;
        BUILD_DIR/code_350B0/main_350B0.code_350B0.o(.text);
        main_350C0_code_350C0 = .;
        BUILD_DIR/code_350C0/main_350C0.code_350C0.o(.text);
        main_350D0_code_350D0 = .;
        BUILD_DIR/code_350D0/main_350D0.code_350D0.o(.text);
    SPLAT_END_SEG(code_main, 0x35450)
    
    SPLAT_BEGIN_SEG(data_35450, 0x35450, 0x35450, )
        bin_35450_bin = .;
        BUILD_DIR/bin/bin_35450.bin.o(.data);
    SPLAT_END_SEG(data_35450, 0x1BB280)
    
    SPLAT_BEGIN_SEG(data_1BB280, 0x1BB280, 0x1BB280, )
        Yay0_1BB280_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB280.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB280, 0x1BB2A0)
    
    SPLAT_BEGIN_SEG(data_1BB2A0, 0x1BB2A0, 0x1BB2A0, )
        Yay0_1BB2A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB2A0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB2A0, 0x1BB2F0)
    
    SPLAT_BEGIN_SEG(data_1BB2F0, 0x1BB2F0, 0x1BB2F0, )
        Yay0_1BB2F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB2F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB2F0, 0x1BB330)
    
    SPLAT_BEGIN_SEG(data_1BB330, 0x1BB330, 0x1BB330, )
        Yay0_1BB330_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB330.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB330, 0x1BB380)
    
    SPLAT_BEGIN_SEG(data_1BB380, 0x1BB380, 0x1BB380, )
        Yay0_1BB380_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB380.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB380, 0x1BB3E0)
    
    SPLAT_BEGIN_SEG(data_1BB3E0, 0x1BB3E0, 0x1BB3E0, )
        Yay0_1BB3E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB3E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB3E0, 0x1BB470)
    
    SPLAT_BEGIN_SEG(data_1BB470, 0x1BB470, 0x1BB470, )
        Yay0_1BB470_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB470.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB470, 0x1BB4F0)
    
    SPLAT_BEGIN_SEG(data_1BB4F0, 0x1BB4F0, 0x1BB4F0, )
        Yay0_1BB4F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB4F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB4F0, 0x1BB5A8)
    
    SPLAT_BEGIN_SEG(data_1BB5A8, 0x1BB5A8, 0x1BB5A8, )
        Yay0_1BB5A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB5A8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB5A8, 0x1BB608)
    
    SPLAT_BEGIN_SEG(data_1BB608, 0x1BB608, 0x1BB608, )
        Yay0_1BB608_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB608.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB608, 0x1BB658)
    
    SPLAT_BEGIN_SEG(data_1BB658, 0x1BB658, 0x1BB658, )
        Yay0_1BB658_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB658.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB658, 0x1BB698)
    
    SPLAT_BEGIN_SEG(data_1BB698, 0x1BB698, 0x1BB698, )
        Yay0_1BB698_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB698.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB698, 0x1BB748)
    
    SPLAT_BEGIN_SEG(data_1BB748, 0x1BB748, 0x1BB748, )
        Yay0_1BB748_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB748.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB748, 0x1BB7B0)
    
    SPLAT_BEGIN_SEG(data_1BB7B0, 0x1BB7B0, 0x1BB7B0, )
        Yay0_1BB7B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB7B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB7B0, 0x1BB848)
    
    SPLAT_BEGIN_SEG(data_1BB848, 0x1BB848, 0x1BB848, )
        Yay0_1BB848_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB848.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB848, 0x1BB8E8)
    
    SPLAT_BEGIN_SEG(data_1BB8E8, 0x1BB8E8, 0x1BB8E8, )
        Yay0_1BB8E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB8E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB8E8, 0x1BB980)
    
    SPLAT_BEGIN_SEG(data_1BB980, 0x1BB980, 0x1BB980, )
        Yay0_1BB980_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BB980.Yay0.o(.data);
    SPLAT_END_SEG(data_1BB980, 0x1BBA18)
    
    SPLAT_BEGIN_SEG(data_1BBA18, 0x1BBA18, 0x1BBA18, )
        Yay0_1BBA18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBA18.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBA18, 0x1BBAC0)
    
    SPLAT_BEGIN_SEG(data_1BBAC0, 0x1BBAC0, 0x1BBAC0, )
        Yay0_1BBAC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBAC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBAC0, 0x1BBB50)
    
    SPLAT_BEGIN_SEG(data_1BBB50, 0x1BBB50, 0x1BBB50, )
        Yay0_1BBB50_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBB50.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBB50, 0x1BBC00)
    
    SPLAT_BEGIN_SEG(data_1BBC00, 0x1BBC00, 0x1BBC00, )
        Yay0_1BBC00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBC00.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBC00, 0x1BBCA8)
    
    SPLAT_BEGIN_SEG(data_1BBCA8, 0x1BBCA8, 0x1BBCA8, )
        Yay0_1BBCA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBCA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBCA8, 0x1BBD60)
    
    SPLAT_BEGIN_SEG(data_1BBD60, 0x1BBD60, 0x1BBD60, )
        Yay0_1BBD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBD60.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBD60, 0x1BBDF8)
    
    SPLAT_BEGIN_SEG(data_1BBDF8, 0x1BBDF8, 0x1BBDF8, )
        Yay0_1BBDF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBDF8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBDF8, 0x1BBE68)
    
    SPLAT_BEGIN_SEG(data_1BBE68, 0x1BBE68, 0x1BBE68, )
        Yay0_1BBE68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBE68.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBE68, 0x1BBF20)
    
    SPLAT_BEGIN_SEG(data_1BBF20, 0x1BBF20, 0x1BBF20, )
        Yay0_1BBF20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBF20.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBF20, 0x1BBFD0)
    
    SPLAT_BEGIN_SEG(data_1BBFD0, 0x1BBFD0, 0x1BBFD0, )
        Yay0_1BBFD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BBFD0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BBFD0, 0x1BC060)
    
    SPLAT_BEGIN_SEG(data_1BC060, 0x1BC060, 0x1BC060, )
        Yay0_1BC060_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC060.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC060, 0x1BC110)
    
    SPLAT_BEGIN_SEG(data_1BC110, 0x1BC110, 0x1BC110, )
        Yay0_1BC110_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC110.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC110, 0x1BC1F8)
    
    SPLAT_BEGIN_SEG(data_1BC1F8, 0x1BC1F8, 0x1BC1F8, )
        Yay0_1BC1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC1F8, 0x1BC2C8)
    
    SPLAT_BEGIN_SEG(data_1BC2C8, 0x1BC2C8, 0x1BC2C8, )
        Yay0_1BC2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC2C8, 0x1BC388)
    
    SPLAT_BEGIN_SEG(data_1BC388, 0x1BC388, 0x1BC388, )
        Yay0_1BC388_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC388.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC388, 0x1BC470)
    
    SPLAT_BEGIN_SEG(data_1BC470, 0x1BC470, 0x1BC470, )
        Yay0_1BC470_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC470.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC470, 0x1BC560)
    
    SPLAT_BEGIN_SEG(data_1BC560, 0x1BC560, 0x1BC560, )
        Yay0_1BC560_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC560.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC560, 0x1BC5F0)
    
    SPLAT_BEGIN_SEG(data_1BC5F0, 0x1BC5F0, 0x1BC5F0, )
        Yay0_1BC5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC5F0, 0x1BC6D0)
    
    SPLAT_BEGIN_SEG(data_1BC6D0, 0x1BC6D0, 0x1BC6D0, )
        Yay0_1BC6D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC6D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC6D0, 0x1BC788)
    
    SPLAT_BEGIN_SEG(data_1BC788, 0x1BC788, 0x1BC788, )
        Yay0_1BC788_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC788.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC788, 0x1BC860)
    
    SPLAT_BEGIN_SEG(data_1BC860, 0x1BC860, 0x1BC860, )
        Yay0_1BC860_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC860.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC860, 0x1BC940)
    
    SPLAT_BEGIN_SEG(data_1BC940, 0x1BC940, 0x1BC940, )
        Yay0_1BC940_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC940.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC940, 0x1BC9F8)
    
    SPLAT_BEGIN_SEG(data_1BC9F8, 0x1BC9F8, 0x1BC9F8, )
        Yay0_1BC9F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BC9F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BC9F8, 0x1BCAB8)
    
    SPLAT_BEGIN_SEG(data_1BCAB8, 0x1BCAB8, 0x1BCAB8, )
        Yay0_1BCAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCAB8, 0x1BCB88)
    
    SPLAT_BEGIN_SEG(data_1BCB88, 0x1BCB88, 0x1BCB88, )
        Yay0_1BCB88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCB88.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCB88, 0x1BCC60)
    
    SPLAT_BEGIN_SEG(data_1BCC60, 0x1BCC60, 0x1BCC60, )
        Yay0_1BCC60_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCC60.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCC60, 0x1BCD40)
    
    SPLAT_BEGIN_SEG(data_1BCD40, 0x1BCD40, 0x1BCD40, )
        Yay0_1BCD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCD40.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCD40, 0x1BCE38)
    
    SPLAT_BEGIN_SEG(data_1BCE38, 0x1BCE38, 0x1BCE38, )
        Yay0_1BCE38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCE38.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCE38, 0x1BCED0)
    
    SPLAT_BEGIN_SEG(data_1BCED0, 0x1BCED0, 0x1BCED0, )
        Yay0_1BCED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCED0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCED0, 0x1BCF80)
    
    SPLAT_BEGIN_SEG(data_1BCF80, 0x1BCF80, 0x1BCF80, )
        Yay0_1BCF80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BCF80.Yay0.o(.data);
    SPLAT_END_SEG(data_1BCF80, 0x1BD030)
    
    SPLAT_BEGIN_SEG(data_1BD030, 0x1BD030, 0x1BD030, )
        Yay0_1BD030_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD030.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD030, 0x1BD0F8)
    
    SPLAT_BEGIN_SEG(data_1BD0F8, 0x1BD0F8, 0x1BD0F8, )
        Yay0_1BD0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD0F8, 0x1BD1B0)
    
    SPLAT_BEGIN_SEG(data_1BD1B0, 0x1BD1B0, 0x1BD1B0, )
        Yay0_1BD1B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD1B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD1B0, 0x1BD288)
    
    SPLAT_BEGIN_SEG(data_1BD288, 0x1BD288, 0x1BD288, )
        Yay0_1BD288_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD288.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD288, 0x1BD358)
    
    SPLAT_BEGIN_SEG(data_1BD358, 0x1BD358, 0x1BD358, )
        Yay0_1BD358_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD358.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD358, 0x1BD448)
    
    SPLAT_BEGIN_SEG(data_1BD448, 0x1BD448, 0x1BD448, )
        Yay0_1BD448_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD448.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD448, 0x1BD540)
    
    SPLAT_BEGIN_SEG(data_1BD540, 0x1BD540, 0x1BD540, )
        Yay0_1BD540_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD540.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD540, 0x1BD618)
    
    SPLAT_BEGIN_SEG(data_1BD618, 0x1BD618, 0x1BD618, )
        Yay0_1BD618_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD618.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD618, 0x1BD708)
    
    SPLAT_BEGIN_SEG(data_1BD708, 0x1BD708, 0x1BD708, )
        Yay0_1BD708_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD708.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD708, 0x1BD800)
    
    SPLAT_BEGIN_SEG(data_1BD800, 0x1BD800, 0x1BD800, )
        Yay0_1BD800_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD800.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD800, 0x1BD8E0)
    
    SPLAT_BEGIN_SEG(data_1BD8E0, 0x1BD8E0, 0x1BD8E0, )
        Yay0_1BD8E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD8E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD8E0, 0x1BD988)
    
    SPLAT_BEGIN_SEG(data_1BD988, 0x1BD988, 0x1BD988, )
        Yay0_1BD988_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BD988.Yay0.o(.data);
    SPLAT_END_SEG(data_1BD988, 0x1BDA58)
    
    SPLAT_BEGIN_SEG(data_1BDA58, 0x1BDA58, 0x1BDA58, )
        Yay0_1BDA58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDA58.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDA58, 0x1BDB40)
    
    SPLAT_BEGIN_SEG(data_1BDB40, 0x1BDB40, 0x1BDB40, )
        Yay0_1BDB40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDB40.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDB40, 0x1BDC30)
    
    SPLAT_BEGIN_SEG(data_1BDC30, 0x1BDC30, 0x1BDC30, )
        Yay0_1BDC30_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDC30.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDC30, 0x1BDD20)
    
    SPLAT_BEGIN_SEG(data_1BDD20, 0x1BDD20, 0x1BDD20, )
        Yay0_1BDD20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDD20.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDD20, 0x1BDDE8)
    
    SPLAT_BEGIN_SEG(data_1BDDE8, 0x1BDDE8, 0x1BDDE8, )
        Yay0_1BDDE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDDE8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDDE8, 0x1BDE98)
    
    SPLAT_BEGIN_SEG(data_1BDE98, 0x1BDE98, 0x1BDE98, )
        Yay0_1BDE98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDE98.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDE98, 0x1BDF68)
    
    SPLAT_BEGIN_SEG(data_1BDF68, 0x1BDF68, 0x1BDF68, )
        Yay0_1BDF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BDF68.Yay0.o(.data);
    SPLAT_END_SEG(data_1BDF68, 0x1BE028)
    
    SPLAT_BEGIN_SEG(data_1BE028, 0x1BE028, 0x1BE028, )
        Yay0_1BE028_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE028.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE028, 0x1BE108)
    
    SPLAT_BEGIN_SEG(data_1BE108, 0x1BE108, 0x1BE108, )
        Yay0_1BE108_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE108.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE108, 0x1BE1F8)
    
    SPLAT_BEGIN_SEG(data_1BE1F8, 0x1BE1F8, 0x1BE1F8, )
        Yay0_1BE1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE1F8, 0x1BE2D8)
    
    SPLAT_BEGIN_SEG(data_1BE2D8, 0x1BE2D8, 0x1BE2D8, )
        Yay0_1BE2D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE2D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE2D8, 0x1BE3B8)
    
    SPLAT_BEGIN_SEG(data_1BE3B8, 0x1BE3B8, 0x1BE3B8, )
        Yay0_1BE3B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE3B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE3B8, 0x1BE490)
    
    SPLAT_BEGIN_SEG(data_1BE490, 0x1BE490, 0x1BE490, )
        Yay0_1BE490_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE490.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE490, 0x1BE538)
    
    SPLAT_BEGIN_SEG(data_1BE538, 0x1BE538, 0x1BE538, )
        Yay0_1BE538_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE538.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE538, 0x1BE5F0)
    
    SPLAT_BEGIN_SEG(data_1BE5F0, 0x1BE5F0, 0x1BE5F0, )
        Yay0_1BE5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE5F0, 0x1BE680)
    
    SPLAT_BEGIN_SEG(data_1BE680, 0x1BE680, 0x1BE680, )
        Yay0_1BE680_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE680.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE680, 0x1BE728)
    
    SPLAT_BEGIN_SEG(data_1BE728, 0x1BE728, 0x1BE728, )
        Yay0_1BE728_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE728.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE728, 0x1BE7C0)
    
    SPLAT_BEGIN_SEG(data_1BE7C0, 0x1BE7C0, 0x1BE7C0, )
        Yay0_1BE7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE7C0, 0x1BE870)
    
    SPLAT_BEGIN_SEG(data_1BE870, 0x1BE870, 0x1BE870, )
        Yay0_1BE870_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE870.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE870, 0x1BE928)
    
    SPLAT_BEGIN_SEG(data_1BE928, 0x1BE928, 0x1BE928, )
        Yay0_1BE928_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BE928.Yay0.o(.data);
    SPLAT_END_SEG(data_1BE928, 0x1BEA10)
    
    SPLAT_BEGIN_SEG(data_1BEA10, 0x1BEA10, 0x1BEA10, )
        Yay0_1BEA10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEA10.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEA10, 0x1BEAD8)
    
    SPLAT_BEGIN_SEG(data_1BEAD8, 0x1BEAD8, 0x1BEAD8, )
        Yay0_1BEAD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEAD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEAD8, 0x1BEBB0)
    
    SPLAT_BEGIN_SEG(data_1BEBB0, 0x1BEBB0, 0x1BEBB0, )
        Yay0_1BEBB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEBB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEBB0, 0x1BEC70)
    
    SPLAT_BEGIN_SEG(data_1BEC70, 0x1BEC70, 0x1BEC70, )
        Yay0_1BEC70_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEC70.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEC70, 0x1BED40)
    
    SPLAT_BEGIN_SEG(data_1BED40, 0x1BED40, 0x1BED40, )
        Yay0_1BED40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BED40.Yay0.o(.data);
    SPLAT_END_SEG(data_1BED40, 0x1BEE20)
    
    SPLAT_BEGIN_SEG(data_1BEE20, 0x1BEE20, 0x1BEE20, )
        Yay0_1BEE20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEE20.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEE20, 0x1BEEC8)
    
    SPLAT_BEGIN_SEG(data_1BEEC8, 0x1BEEC8, 0x1BEEC8, )
        Yay0_1BEEC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEEC8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEEC8, 0x1BEF98)
    
    SPLAT_BEGIN_SEG(data_1BEF98, 0x1BEF98, 0x1BEF98, )
        Yay0_1BEF98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BEF98.Yay0.o(.data);
    SPLAT_END_SEG(data_1BEF98, 0x1BF050)
    
    SPLAT_BEGIN_SEG(data_1BF050, 0x1BF050, 0x1BF050, )
        Yay0_1BF050_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF050.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF050, 0x1BF128)
    
    SPLAT_BEGIN_SEG(data_1BF128, 0x1BF128, 0x1BF128, )
        Yay0_1BF128_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF128.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF128, 0x1BF200)
    
    SPLAT_BEGIN_SEG(data_1BF200, 0x1BF200, 0x1BF200, )
        Yay0_1BF200_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF200.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF200, 0x1BF2D0)
    
    SPLAT_BEGIN_SEG(data_1BF2D0, 0x1BF2D0, 0x1BF2D0, )
        Yay0_1BF2D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF2D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF2D0, 0x1BF380)
    
    SPLAT_BEGIN_SEG(data_1BF380, 0x1BF380, 0x1BF380, )
        Yay0_1BF380_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF380.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF380, 0x1BF438)
    
    SPLAT_BEGIN_SEG(data_1BF438, 0x1BF438, 0x1BF438, )
        Yay0_1BF438_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF438.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF438, 0x1BF4C8)
    
    SPLAT_BEGIN_SEG(data_1BF4C8, 0x1BF4C8, 0x1BF4C8, )
        Yay0_1BF4C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF4C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF4C8, 0x1BF578)
    
    SPLAT_BEGIN_SEG(data_1BF578, 0x1BF578, 0x1BF578, )
        Yay0_1BF578_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF578.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF578, 0x1BF658)
    
    SPLAT_BEGIN_SEG(data_1BF658, 0x1BF658, 0x1BF658, )
        Yay0_1BF658_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF658.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF658, 0x1BF720)
    
    SPLAT_BEGIN_SEG(data_1BF720, 0x1BF720, 0x1BF720, )
        Yay0_1BF720_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF720.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF720, 0x1BF7F0)
    
    SPLAT_BEGIN_SEG(data_1BF7F0, 0x1BF7F0, 0x1BF7F0, )
        Yay0_1BF7F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF7F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF7F0, 0x1BF8A8)
    
    SPLAT_BEGIN_SEG(data_1BF8A8, 0x1BF8A8, 0x1BF8A8, )
        Yay0_1BF8A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF8A8.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF8A8, 0x1BF990)
    
    SPLAT_BEGIN_SEG(data_1BF990, 0x1BF990, 0x1BF990, )
        Yay0_1BF990_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BF990.Yay0.o(.data);
    SPLAT_END_SEG(data_1BF990, 0x1BFA78)
    
    SPLAT_BEGIN_SEG(data_1BFA78, 0x1BFA78, 0x1BFA78, )
        Yay0_1BFA78_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFA78.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFA78, 0x1BFB38)
    
    SPLAT_BEGIN_SEG(data_1BFB38, 0x1BFB38, 0x1BFB38, )
        Yay0_1BFB38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFB38.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFB38, 0x1BFC10)
    
    SPLAT_BEGIN_SEG(data_1BFC10, 0x1BFC10, 0x1BFC10, )
        Yay0_1BFC10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFC10.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFC10, 0x1BFCC0)
    
    SPLAT_BEGIN_SEG(data_1BFCC0, 0x1BFCC0, 0x1BFCC0, )
        Yay0_1BFCC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFCC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFCC0, 0x1BFD90)
    
    SPLAT_BEGIN_SEG(data_1BFD90, 0x1BFD90, 0x1BFD90, )
        Yay0_1BFD90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFD90.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFD90, 0x1BFE40)
    
    SPLAT_BEGIN_SEG(data_1BFE40, 0x1BFE40, 0x1BFE40, )
        Yay0_1BFE40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFE40.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFE40, 0x1BFF18)
    
    SPLAT_BEGIN_SEG(data_1BFF18, 0x1BFF18, 0x1BFF18, )
        Yay0_1BFF18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFF18.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFF18, 0x1BFFC0)
    
    SPLAT_BEGIN_SEG(data_1BFFC0, 0x1BFFC0, 0x1BFFC0, )
        Yay0_1BFFC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1BFFC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1BFFC0, 0x1C0070)
    
    SPLAT_BEGIN_SEG(data_1C0070, 0x1C0070, 0x1C0070, )
        Yay0_1C0070_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0070.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0070, 0x1C0128)
    
    SPLAT_BEGIN_SEG(data_1C0128, 0x1C0128, 0x1C0128, )
        Yay0_1C0128_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0128.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0128, 0x1C0328)
    
    SPLAT_BEGIN_SEG(data_1C0328, 0x1C0328, 0x1C0328, )
        Yay0_1C0328_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0328.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0328, 0x1C0438)
    
    SPLAT_BEGIN_SEG(data_1C0438, 0x1C0438, 0x1C0438, )
        Yay0_1C0438_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0438.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0438, 0x1C0538)
    
    SPLAT_BEGIN_SEG(data_1C0538, 0x1C0538, 0x1C0538, )
        Yay0_1C0538_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0538.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0538, 0x1C0650)
    
    SPLAT_BEGIN_SEG(data_1C0650, 0x1C0650, 0x1C0650, )
        Yay0_1C0650_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0650.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0650, 0x1C0768)
    
    SPLAT_BEGIN_SEG(data_1C0768, 0x1C0768, 0x1C0768, )
        Yay0_1C0768_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0768.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0768, 0x1C07B8)
    
    SPLAT_BEGIN_SEG(data_1C07B8, 0x1C07B8, 0x1C07B8, )
        Yay0_1C07B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C07B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C07B8, 0x1C09F0)
    
    SPLAT_BEGIN_SEG(data_1C09F0, 0x1C09F0, 0x1C09F0, )
        Yay0_1C09F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C09F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C09F0, 0x1C0AD8)
    
    SPLAT_BEGIN_SEG(data_1C0AD8, 0x1C0AD8, 0x1C0AD8, )
        Yay0_1C0AD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0AD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0AD8, 0x1C0BD0)
    
    SPLAT_BEGIN_SEG(data_1C0BD0, 0x1C0BD0, 0x1C0BD0, )
        Yay0_1C0BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0BD0, 0x1C0C70)
    
    SPLAT_BEGIN_SEG(data_1C0C70, 0x1C0C70, 0x1C0C70, )
        Yay0_1C0C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0C70.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0C70, 0x1C0D50)
    
    SPLAT_BEGIN_SEG(data_1C0D50, 0x1C0D50, 0x1C0D50, )
        Yay0_1C0D50_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0D50.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0D50, 0x1C0E20)
    
    SPLAT_BEGIN_SEG(data_1C0E20, 0x1C0E20, 0x1C0E20, )
        Yay0_1C0E20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0E20.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0E20, 0x1C0F20)
    
    SPLAT_BEGIN_SEG(data_1C0F20, 0x1C0F20, 0x1C0F20, )
        Yay0_1C0F20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C0F20.Yay0.o(.data);
    SPLAT_END_SEG(data_1C0F20, 0x1C1008)
    
    SPLAT_BEGIN_SEG(data_1C1008, 0x1C1008, 0x1C1008, )
        Yay0_1C1008_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1008.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1008, 0x1C1118)
    
    SPLAT_BEGIN_SEG(data_1C1118, 0x1C1118, 0x1C1118, )
        Yay0_1C1118_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1118.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1118, 0x1C1218)
    
    SPLAT_BEGIN_SEG(data_1C1218, 0x1C1218, 0x1C1218, )
        Yay0_1C1218_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1218.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1218, 0x1C1330)
    
    SPLAT_BEGIN_SEG(data_1C1330, 0x1C1330, 0x1C1330, )
        Yay0_1C1330_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1330.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1330, 0x1C1410)
    
    SPLAT_BEGIN_SEG(data_1C1410, 0x1C1410, 0x1C1410, )
        Yay0_1C1410_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1410.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1410, 0x1C1500)
    
    SPLAT_BEGIN_SEG(data_1C1500, 0x1C1500, 0x1C1500, )
        Yay0_1C1500_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1500.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1500, 0x1C15F0)
    
    SPLAT_BEGIN_SEG(data_1C15F0, 0x1C15F0, 0x1C15F0, )
        Yay0_1C15F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C15F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C15F0, 0x1C1700)
    
    SPLAT_BEGIN_SEG(data_1C1700, 0x1C1700, 0x1C1700, )
        Yay0_1C1700_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1700.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1700, 0x1C17F0)
    
    SPLAT_BEGIN_SEG(data_1C17F0, 0x1C17F0, 0x1C17F0, )
        Yay0_1C17F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C17F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C17F0, 0x1C18F0)
    
    SPLAT_BEGIN_SEG(data_1C18F0, 0x1C18F0, 0x1C18F0, )
        Yay0_1C18F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C18F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C18F0, 0x1C1A00)
    
    SPLAT_BEGIN_SEG(data_1C1A00, 0x1C1A00, 0x1C1A00, )
        Yay0_1C1A00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1A00.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1A00, 0x1C1B00)
    
    SPLAT_BEGIN_SEG(data_1C1B00, 0x1C1B00, 0x1C1B00, )
        Yay0_1C1B00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1B00.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1B00, 0x1C1C00)
    
    SPLAT_BEGIN_SEG(data_1C1C00, 0x1C1C00, 0x1C1C00, )
        Yay0_1C1C00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1C00.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1C00, 0x1C1CC0)
    
    SPLAT_BEGIN_SEG(data_1C1CC0, 0x1C1CC0, 0x1C1CC0, )
        Yay0_1C1CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1CC0, 0x1C1DA0)
    
    SPLAT_BEGIN_SEG(data_1C1DA0, 0x1C1DA0, 0x1C1DA0, )
        Yay0_1C1DA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1DA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1DA0, 0x1C1E98)
    
    SPLAT_BEGIN_SEG(data_1C1E98, 0x1C1E98, 0x1C1E98, )
        Yay0_1C1E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C1E98.Yay0.o(.data);
    SPLAT_END_SEG(data_1C1E98, 0x1C20B8)
    
    SPLAT_BEGIN_SEG(data_1C20B8, 0x1C20B8, 0x1C20B8, )
        Yay0_1C20B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C20B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C20B8, 0x1C21A8)
    
    SPLAT_BEGIN_SEG(data_1C21A8, 0x1C21A8, 0x1C21A8, )
        Yay0_1C21A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C21A8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C21A8, 0x1C22B0)
    
    SPLAT_BEGIN_SEG(data_1C22B0, 0x1C22B0, 0x1C22B0, )
        Yay0_1C22B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C22B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C22B0, 0x1C23C8)
    
    SPLAT_BEGIN_SEG(data_1C23C8, 0x1C23C8, 0x1C23C8, )
        Yay0_1C23C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C23C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C23C8, 0x1C24A0)
    
    SPLAT_BEGIN_SEG(data_1C24A0, 0x1C24A0, 0x1C24A0, )
        Yay0_1C24A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C24A0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C24A0, 0x1C2598)
    
    SPLAT_BEGIN_SEG(data_1C2598, 0x1C2598, 0x1C2598, )
        Yay0_1C2598_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2598.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2598, 0x1C2678)
    
    SPLAT_BEGIN_SEG(data_1C2678, 0x1C2678, 0x1C2678, )
        Yay0_1C2678_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2678.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2678, 0x1C2790)
    
    SPLAT_BEGIN_SEG(data_1C2790, 0x1C2790, 0x1C2790, )
        Yay0_1C2790_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2790.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2790, 0x1C28A8)
    
    SPLAT_BEGIN_SEG(data_1C28A8, 0x1C28A8, 0x1C28A8, )
        Yay0_1C28A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C28A8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C28A8, 0x1C29C0)
    
    SPLAT_BEGIN_SEG(data_1C29C0, 0x1C29C0, 0x1C29C0, )
        Yay0_1C29C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C29C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C29C0, 0x1C2AD8)
    
    SPLAT_BEGIN_SEG(data_1C2AD8, 0x1C2AD8, 0x1C2AD8, )
        Yay0_1C2AD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2AD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2AD8, 0x1C2BD0)
    
    SPLAT_BEGIN_SEG(data_1C2BD0, 0x1C2BD0, 0x1C2BD0, )
        Yay0_1C2BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2BD0, 0x1C2CC8)
    
    SPLAT_BEGIN_SEG(data_1C2CC8, 0x1C2CC8, 0x1C2CC8, )
        Yay0_1C2CC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2CC8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2CC8, 0x1C2DB8)
    
    SPLAT_BEGIN_SEG(data_1C2DB8, 0x1C2DB8, 0x1C2DB8, )
        Yay0_1C2DB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2DB8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2DB8, 0x1C2E98)
    
    SPLAT_BEGIN_SEG(data_1C2E98, 0x1C2E98, 0x1C2E98, )
        Yay0_1C2E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2E98.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2E98, 0x1C2F88)
    
    SPLAT_BEGIN_SEG(data_1C2F88, 0x1C2F88, 0x1C2F88, )
        Yay0_1C2F88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C2F88.Yay0.o(.data);
    SPLAT_END_SEG(data_1C2F88, 0x1C30A0)
    
    SPLAT_BEGIN_SEG(data_1C30A0, 0x1C30A0, 0x1C30A0, )
        Yay0_1C30A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C30A0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C30A0, 0x1C3170)
    
    SPLAT_BEGIN_SEG(data_1C3170, 0x1C3170, 0x1C3170, )
        Yay0_1C3170_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3170.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3170, 0x1C3270)
    
    SPLAT_BEGIN_SEG(data_1C3270, 0x1C3270, 0x1C3270, )
        Yay0_1C3270_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3270.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3270, 0x1C3320)
    
    SPLAT_BEGIN_SEG(data_1C3320, 0x1C3320, 0x1C3320, )
        Yay0_1C3320_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3320.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3320, 0x1C3518)
    
    SPLAT_BEGIN_SEG(data_1C3518, 0x1C3518, 0x1C3518, )
        Yay0_1C3518_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3518.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3518, 0x1C3610)
    
    SPLAT_BEGIN_SEG(data_1C3610, 0x1C3610, 0x1C3610, )
        Yay0_1C3610_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3610.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3610, 0x1C3718)
    
    SPLAT_BEGIN_SEG(data_1C3718, 0x1C3718, 0x1C3718, )
        Yay0_1C3718_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3718.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3718, 0x1C3810)
    
    SPLAT_BEGIN_SEG(data_1C3810, 0x1C3810, 0x1C3810, )
        Yay0_1C3810_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3810.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3810, 0x1C3898)
    
    SPLAT_BEGIN_SEG(data_1C3898, 0x1C3898, 0x1C3898, )
        Yay0_1C3898_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3898.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3898, 0x1C39A0)
    
    SPLAT_BEGIN_SEG(data_1C39A0, 0x1C39A0, 0x1C39A0, )
        Yay0_1C39A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C39A0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C39A0, 0x1C3A80)
    
    SPLAT_BEGIN_SEG(data_1C3A80, 0x1C3A80, 0x1C3A80, )
        Yay0_1C3A80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3A80.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3A80, 0x1C3B80)
    
    SPLAT_BEGIN_SEG(data_1C3B80, 0x1C3B80, 0x1C3B80, )
        Yay0_1C3B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3B80.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3B80, 0x1C3C68)
    
    SPLAT_BEGIN_SEG(data_1C3C68, 0x1C3C68, 0x1C3C68, )
        Yay0_1C3C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3C68.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3C68, 0x1C3D18)
    
    SPLAT_BEGIN_SEG(data_1C3D18, 0x1C3D18, 0x1C3D18, )
        Yay0_1C3D18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3D18.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3D18, 0x1C3E20)
    
    SPLAT_BEGIN_SEG(data_1C3E20, 0x1C3E20, 0x1C3E20, )
        Yay0_1C3E20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3E20.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3E20, 0x1C3F18)
    
    SPLAT_BEGIN_SEG(data_1C3F18, 0x1C3F18, 0x1C3F18, )
        Yay0_1C3F18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C3F18.Yay0.o(.data);
    SPLAT_END_SEG(data_1C3F18, 0x1C4030)
    
    SPLAT_BEGIN_SEG(data_1C4030, 0x1C4030, 0x1C4030, )
        Yay0_1C4030_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4030.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4030, 0x1C4110)
    
    SPLAT_BEGIN_SEG(data_1C4110, 0x1C4110, 0x1C4110, )
        Yay0_1C4110_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4110.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4110, 0x1C4228)
    
    SPLAT_BEGIN_SEG(data_1C4228, 0x1C4228, 0x1C4228, )
        Yay0_1C4228_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4228.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4228, 0x1C4328)
    
    SPLAT_BEGIN_SEG(data_1C4328, 0x1C4328, 0x1C4328, )
        Yay0_1C4328_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4328.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4328, 0x1C43E0)
    
    SPLAT_BEGIN_SEG(data_1C43E0, 0x1C43E0, 0x1C43E0, )
        Yay0_1C43E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C43E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C43E0, 0x1C4618)
    
    SPLAT_BEGIN_SEG(data_1C4618, 0x1C4618, 0x1C4618, )
        Yay0_1C4618_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4618.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4618, 0x1C46D0)
    
    SPLAT_BEGIN_SEG(data_1C46D0, 0x1C46D0, 0x1C46D0, )
        Yay0_1C46D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C46D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C46D0, 0x1C4788)
    
    SPLAT_BEGIN_SEG(data_1C4788, 0x1C4788, 0x1C4788, )
        Yay0_1C4788_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4788.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4788, 0x1C4940)
    
    SPLAT_BEGIN_SEG(data_1C4940, 0x1C4940, 0x1C4940, )
        Yay0_1C4940_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4940.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4940, 0x1C4A38)
    
    SPLAT_BEGIN_SEG(data_1C4A38, 0x1C4A38, 0x1C4A38, )
        Yay0_1C4A38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4A38.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4A38, 0x1C4B40)
    
    SPLAT_BEGIN_SEG(data_1C4B40, 0x1C4B40, 0x1C4B40, )
        Yay0_1C4B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4B40.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4B40, 0x1C4D38)
    
    SPLAT_BEGIN_SEG(data_1C4D38, 0x1C4D38, 0x1C4D38, )
        Yay0_1C4D38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4D38.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4D38, 0x1C4DC0)
    
    SPLAT_BEGIN_SEG(data_1C4DC0, 0x1C4DC0, 0x1C4DC0, )
        Yay0_1C4DC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4DC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4DC0, 0x1C4E80)
    
    SPLAT_BEGIN_SEG(data_1C4E80, 0x1C4E80, 0x1C4E80, )
        Yay0_1C4E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4E80.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4E80, 0x1C4F88)
    
    SPLAT_BEGIN_SEG(data_1C4F88, 0x1C4F88, 0x1C4F88, )
        Yay0_1C4F88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C4F88.Yay0.o(.data);
    SPLAT_END_SEG(data_1C4F88, 0x1C5078)
    
    SPLAT_BEGIN_SEG(data_1C5078, 0x1C5078, 0x1C5078, )
        Yay0_1C5078_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5078.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5078, 0x1C5150)
    
    SPLAT_BEGIN_SEG(data_1C5150, 0x1C5150, 0x1C5150, )
        Yay0_1C5150_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5150.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5150, 0x1C5218)
    
    SPLAT_BEGIN_SEG(data_1C5218, 0x1C5218, 0x1C5218, )
        Yay0_1C5218_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5218.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5218, 0x1C5318)
    
    SPLAT_BEGIN_SEG(data_1C5318, 0x1C5318, 0x1C5318, )
        Yay0_1C5318_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5318.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5318, 0x1C5548)
    
    SPLAT_BEGIN_SEG(data_1C5548, 0x1C5548, 0x1C5548, )
        Yay0_1C5548_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5548.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5548, 0x1C5770)
    
    SPLAT_BEGIN_SEG(data_1C5770, 0x1C5770, 0x1C5770, )
        Yay0_1C5770_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5770.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5770, 0x1C5840)
    
    SPLAT_BEGIN_SEG(data_1C5840, 0x1C5840, 0x1C5840, )
        Yay0_1C5840_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5840.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5840, 0x1C58E8)
    
    SPLAT_BEGIN_SEG(data_1C58E8, 0x1C58E8, 0x1C58E8, )
        Yay0_1C58E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C58E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C58E8, 0x1C59D8)
    
    SPLAT_BEGIN_SEG(data_1C59D8, 0x1C59D8, 0x1C59D8, )
        Yay0_1C59D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C59D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C59D8, 0x1C5AE8)
    
    SPLAT_BEGIN_SEG(data_1C5AE8, 0x1C5AE8, 0x1C5AE8, )
        Yay0_1C5AE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5AE8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5AE8, 0x1C5BE8)
    
    SPLAT_BEGIN_SEG(data_1C5BE8, 0x1C5BE8, 0x1C5BE8, )
        Yay0_1C5BE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5BE8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5BE8, 0x1C5CE0)
    
    SPLAT_BEGIN_SEG(data_1C5CE0, 0x1C5CE0, 0x1C5CE0, )
        Yay0_1C5CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5CE0, 0x1C5DE0)
    
    SPLAT_BEGIN_SEG(data_1C5DE0, 0x1C5DE0, 0x1C5DE0, )
        Yay0_1C5DE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5DE0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5DE0, 0x1C5E68)
    
    SPLAT_BEGIN_SEG(data_1C5E68, 0x1C5E68, 0x1C5E68, )
        Yay0_1C5E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5E68.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5E68, 0x1C5F80)
    
    SPLAT_BEGIN_SEG(data_1C5F80, 0x1C5F80, 0x1C5F80, )
        Yay0_1C5F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C5F80.Yay0.o(.data);
    SPLAT_END_SEG(data_1C5F80, 0x1C6080)
    
    SPLAT_BEGIN_SEG(data_1C6080, 0x1C6080, 0x1C6080, )
        Yay0_1C6080_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6080.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6080, 0x1C6168)
    
    SPLAT_BEGIN_SEG(data_1C6168, 0x1C6168, 0x1C6168, )
        Yay0_1C6168_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6168.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6168, 0x1C6240)
    
    SPLAT_BEGIN_SEG(data_1C6240, 0x1C6240, 0x1C6240, )
        Yay0_1C6240_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6240.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6240, 0x1C6340)
    
    SPLAT_BEGIN_SEG(data_1C6340, 0x1C6340, 0x1C6340, )
        Yay0_1C6340_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6340.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6340, 0x1C6430)
    
    SPLAT_BEGIN_SEG(data_1C6430, 0x1C6430, 0x1C6430, )
        Yay0_1C6430_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6430.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6430, 0x1C64F0)
    
    SPLAT_BEGIN_SEG(data_1C64F0, 0x1C64F0, 0x1C64F0, )
        Yay0_1C64F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C64F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C64F0, 0x1C65C8)
    
    SPLAT_BEGIN_SEG(data_1C65C8, 0x1C65C8, 0x1C65C8, )
        Yay0_1C65C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C65C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C65C8, 0x1C66D8)
    
    SPLAT_BEGIN_SEG(data_1C66D8, 0x1C66D8, 0x1C66D8, )
        Yay0_1C66D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C66D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C66D8, 0x1C6770)
    
    SPLAT_BEGIN_SEG(data_1C6770, 0x1C6770, 0x1C6770, )
        Yay0_1C6770_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6770.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6770, 0x1C6880)
    
    SPLAT_BEGIN_SEG(data_1C6880, 0x1C6880, 0x1C6880, )
        Yay0_1C6880_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6880.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6880, 0x1C6958)
    
    SPLAT_BEGIN_SEG(data_1C6958, 0x1C6958, 0x1C6958, )
        Yay0_1C6958_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6958.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6958, 0x1C6B80)
    
    SPLAT_BEGIN_SEG(data_1C6B80, 0x1C6B80, 0x1C6B80, )
        Yay0_1C6B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6B80.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6B80, 0x1C6C68)
    
    SPLAT_BEGIN_SEG(data_1C6C68, 0x1C6C68, 0x1C6C68, )
        Yay0_1C6C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6C68.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6C68, 0x1C6D80)
    
    SPLAT_BEGIN_SEG(data_1C6D80, 0x1C6D80, 0x1C6D80, )
        Yay0_1C6D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6D80.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6D80, 0x1C6E90)
    
    SPLAT_BEGIN_SEG(data_1C6E90, 0x1C6E90, 0x1C6E90, )
        Yay0_1C6E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6E90.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6E90, 0x1C6F68)
    
    SPLAT_BEGIN_SEG(data_1C6F68, 0x1C6F68, 0x1C6F68, )
        Yay0_1C6F68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C6F68.Yay0.o(.data);
    SPLAT_END_SEG(data_1C6F68, 0x1C7060)
    
    SPLAT_BEGIN_SEG(data_1C7060, 0x1C7060, 0x1C7060, )
        Yay0_1C7060_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7060.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7060, 0x1C7158)
    
    SPLAT_BEGIN_SEG(data_1C7158, 0x1C7158, 0x1C7158, )
        Yay0_1C7158_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7158.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7158, 0x1C7268)
    
    SPLAT_BEGIN_SEG(data_1C7268, 0x1C7268, 0x1C7268, )
        Yay0_1C7268_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7268.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7268, 0x1C7368)
    
    SPLAT_BEGIN_SEG(data_1C7368, 0x1C7368, 0x1C7368, )
        Yay0_1C7368_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7368.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7368, 0x1C7470)
    
    SPLAT_BEGIN_SEG(data_1C7470, 0x1C7470, 0x1C7470, )
        Yay0_1C7470_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7470.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7470, 0x1C7578)
    
    SPLAT_BEGIN_SEG(data_1C7578, 0x1C7578, 0x1C7578, )
        Yay0_1C7578_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7578.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7578, 0x1C7680)
    
    SPLAT_BEGIN_SEG(data_1C7680, 0x1C7680, 0x1C7680, )
        Yay0_1C7680_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7680.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7680, 0x1C7758)
    
    SPLAT_BEGIN_SEG(data_1C7758, 0x1C7758, 0x1C7758, )
        Yay0_1C7758_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7758.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7758, 0x1C7838)
    
    SPLAT_BEGIN_SEG(data_1C7838, 0x1C7838, 0x1C7838, )
        Yay0_1C7838_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7838.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7838, 0x1C7920)
    
    SPLAT_BEGIN_SEG(data_1C7920, 0x1C7920, 0x1C7920, )
        Yay0_1C7920_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7920.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7920, 0x1C79C8)
    
    SPLAT_BEGIN_SEG(data_1C79C8, 0x1C79C8, 0x1C79C8, )
        Yay0_1C79C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C79C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C79C8, 0x1C7AB0)
    
    SPLAT_BEGIN_SEG(data_1C7AB0, 0x1C7AB0, 0x1C7AB0, )
        Yay0_1C7AB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7AB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7AB0, 0x1C7B70)
    
    SPLAT_BEGIN_SEG(data_1C7B70, 0x1C7B70, 0x1C7B70, )
        Yay0_1C7B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7B70.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7B70, 0x1C7C60)
    
    SPLAT_BEGIN_SEG(data_1C7C60, 0x1C7C60, 0x1C7C60, )
        Yay0_1C7C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7C60.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7C60, 0x1C7D58)
    
    SPLAT_BEGIN_SEG(data_1C7D58, 0x1C7D58, 0x1C7D58, )
        Yay0_1C7D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7D58.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7D58, 0x1C7E48)
    
    SPLAT_BEGIN_SEG(data_1C7E48, 0x1C7E48, 0x1C7E48, )
        Yay0_1C7E48_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7E48.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7E48, 0x1C7F58)
    
    SPLAT_BEGIN_SEG(data_1C7F58, 0x1C7F58, 0x1C7F58, )
        Yay0_1C7F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C7F58.Yay0.o(.data);
    SPLAT_END_SEG(data_1C7F58, 0x1C8068)
    
    SPLAT_BEGIN_SEG(data_1C8068, 0x1C8068, 0x1C8068, )
        Yay0_1C8068_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8068.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8068, 0x1C8168)
    
    SPLAT_BEGIN_SEG(data_1C8168, 0x1C8168, 0x1C8168, )
        Yay0_1C8168_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8168.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8168, 0x1C8240)
    
    SPLAT_BEGIN_SEG(data_1C8240, 0x1C8240, 0x1C8240, )
        Yay0_1C8240_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8240.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8240, 0x1C8338)
    
    SPLAT_BEGIN_SEG(data_1C8338, 0x1C8338, 0x1C8338, )
        Yay0_1C8338_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8338.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8338, 0x1C8430)
    
    SPLAT_BEGIN_SEG(data_1C8430, 0x1C8430, 0x1C8430, )
        Yay0_1C8430_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8430.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8430, 0x1C8538)
    
    SPLAT_BEGIN_SEG(data_1C8538, 0x1C8538, 0x1C8538, )
        Yay0_1C8538_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8538.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8538, 0x1C8628)
    
    SPLAT_BEGIN_SEG(data_1C8628, 0x1C8628, 0x1C8628, )
        Yay0_1C8628_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8628.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8628, 0x1C8738)
    
    SPLAT_BEGIN_SEG(data_1C8738, 0x1C8738, 0x1C8738, )
        Yay0_1C8738_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8738.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8738, 0x1C8820)
    
    SPLAT_BEGIN_SEG(data_1C8820, 0x1C8820, 0x1C8820, )
        Yay0_1C8820_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8820.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8820, 0x1C88F8)
    
    SPLAT_BEGIN_SEG(data_1C88F8, 0x1C88F8, 0x1C88F8, )
        Yay0_1C88F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C88F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C88F8, 0x1C89E0)
    
    SPLAT_BEGIN_SEG(data_1C89E0, 0x1C89E0, 0x1C89E0, )
        Yay0_1C89E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C89E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C89E0, 0x1C8AF0)
    
    SPLAT_BEGIN_SEG(data_1C8AF0, 0x1C8AF0, 0x1C8AF0, )
        Yay0_1C8AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8AF0, 0x1C8BA0)
    
    SPLAT_BEGIN_SEG(data_1C8BA0, 0x1C8BA0, 0x1C8BA0, )
        Yay0_1C8BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8BA0, 0x1C8CA8)
    
    SPLAT_BEGIN_SEG(data_1C8CA8, 0x1C8CA8, 0x1C8CA8, )
        Yay0_1C8CA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8CA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8CA8, 0x1C8DB0)
    
    SPLAT_BEGIN_SEG(data_1C8DB0, 0x1C8DB0, 0x1C8DB0, )
        Yay0_1C8DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8DB0, 0x1C8FA8)
    
    SPLAT_BEGIN_SEG(data_1C8FA8, 0x1C8FA8, 0x1C8FA8, )
        Yay0_1C8FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C8FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1C8FA8, 0x1C9028)
    
    SPLAT_BEGIN_SEG(data_1C9028, 0x1C9028, 0x1C9028, )
        Yay0_1C9028_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9028.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9028, 0x1C9128)
    
    SPLAT_BEGIN_SEG(data_1C9128, 0x1C9128, 0x1C9128, )
        Yay0_1C9128_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9128.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9128, 0x1C91B0)
    
    SPLAT_BEGIN_SEG(data_1C91B0, 0x1C91B0, 0x1C91B0, )
        Yay0_1C91B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C91B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1C91B0, 0x1C9288)
    
    SPLAT_BEGIN_SEG(data_1C9288, 0x1C9288, 0x1C9288, )
        Yay0_1C9288_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9288.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9288, 0x1C9370)
    
    SPLAT_BEGIN_SEG(data_1C9370, 0x1C9370, 0x1C9370, )
        Yay0_1C9370_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9370.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9370, 0x1C9480)
    
    SPLAT_BEGIN_SEG(data_1C9480, 0x1C9480, 0x1C9480, )
        Yay0_1C9480_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9480.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9480, 0x1C9550)
    
    SPLAT_BEGIN_SEG(data_1C9550, 0x1C9550, 0x1C9550, )
        Yay0_1C9550_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9550.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9550, 0x1C9658)
    
    SPLAT_BEGIN_SEG(data_1C9658, 0x1C9658, 0x1C9658, )
        Yay0_1C9658_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9658.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9658, 0x1C9760)
    
    SPLAT_BEGIN_SEG(data_1C9760, 0x1C9760, 0x1C9760, )
        Yay0_1C9760_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9760.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9760, 0x1C9878)
    
    SPLAT_BEGIN_SEG(data_1C9878, 0x1C9878, 0x1C9878, )
        Yay0_1C9878_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9878.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9878, 0x1C9960)
    
    SPLAT_BEGIN_SEG(data_1C9960, 0x1C9960, 0x1C9960, )
        Yay0_1C9960_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9960.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9960, 0x1C9A58)
    
    SPLAT_BEGIN_SEG(data_1C9A58, 0x1C9A58, 0x1C9A58, )
        Yay0_1C9A58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9A58.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9A58, 0x1C9C58)
    
    SPLAT_BEGIN_SEG(data_1C9C58, 0x1C9C58, 0x1C9C58, )
        Yay0_1C9C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9C58.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9C58, 0x1C9D68)
    
    SPLAT_BEGIN_SEG(data_1C9D68, 0x1C9D68, 0x1C9D68, )
        Yay0_1C9D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9D68.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9D68, 0x1C9E78)
    
    SPLAT_BEGIN_SEG(data_1C9E78, 0x1C9E78, 0x1C9E78, )
        Yay0_1C9E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9E78.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9E78, 0x1C9F50)
    
    SPLAT_BEGIN_SEG(data_1C9F50, 0x1C9F50, 0x1C9F50, )
        Yay0_1C9F50_Yay0 = .;
        BUILD_DIR/bin/Yay0/1C9F50.Yay0.o(.data);
    SPLAT_END_SEG(data_1C9F50, 0x1CA060)
    
    SPLAT_BEGIN_SEG(data_1CA060, 0x1CA060, 0x1CA060, )
        Yay0_1CA060_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA060.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA060, 0x1CA150)
    
    SPLAT_BEGIN_SEG(data_1CA150, 0x1CA150, 0x1CA150, )
        Yay0_1CA150_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA150.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA150, 0x1CA258)
    
    SPLAT_BEGIN_SEG(data_1CA258, 0x1CA258, 0x1CA258, )
        Yay0_1CA258_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA258.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA258, 0x1CA318)
    
    SPLAT_BEGIN_SEG(data_1CA318, 0x1CA318, 0x1CA318, )
        Yay0_1CA318_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA318.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA318, 0x1CA428)
    
    SPLAT_BEGIN_SEG(data_1CA428, 0x1CA428, 0x1CA428, )
        Yay0_1CA428_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA428.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA428, 0x1CA540)
    
    SPLAT_BEGIN_SEG(data_1CA540, 0x1CA540, 0x1CA540, )
        Yay0_1CA540_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA540.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA540, 0x1CA658)
    
    SPLAT_BEGIN_SEG(data_1CA658, 0x1CA658, 0x1CA658, )
        Yay0_1CA658_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA658.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA658, 0x1CA720)
    
    SPLAT_BEGIN_SEG(data_1CA720, 0x1CA720, 0x1CA720, )
        Yay0_1CA720_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA720.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA720, 0x1CA808)
    
    SPLAT_BEGIN_SEG(data_1CA808, 0x1CA808, 0x1CA808, )
        Yay0_1CA808_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA808.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA808, 0x1CA900)
    
    SPLAT_BEGIN_SEG(data_1CA900, 0x1CA900, 0x1CA900, )
        Yay0_1CA900_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA900.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA900, 0x1CA9E8)
    
    SPLAT_BEGIN_SEG(data_1CA9E8, 0x1CA9E8, 0x1CA9E8, )
        Yay0_1CA9E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CA9E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CA9E8, 0x1CAAE0)
    
    SPLAT_BEGIN_SEG(data_1CAAE0, 0x1CAAE0, 0x1CAAE0, )
        Yay0_1CAAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CAAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CAAE0, 0x1CABC0)
    
    SPLAT_BEGIN_SEG(data_1CABC0, 0x1CABC0, 0x1CABC0, )
        Yay0_1CABC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CABC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CABC0, 0x1CACA0)
    
    SPLAT_BEGIN_SEG(data_1CACA0, 0x1CACA0, 0x1CACA0, )
        Yay0_1CACA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CACA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CACA0, 0x1CAEB0)
    
    SPLAT_BEGIN_SEG(data_1CAEB0, 0x1CAEB0, 0x1CAEB0, )
        Yay0_1CAEB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CAEB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CAEB0, 0x1CAF90)
    
    SPLAT_BEGIN_SEG(data_1CAF90, 0x1CAF90, 0x1CAF90, )
        Yay0_1CAF90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CAF90.Yay0.o(.data);
    SPLAT_END_SEG(data_1CAF90, 0x1CB098)
    
    SPLAT_BEGIN_SEG(data_1CB098, 0x1CB098, 0x1CB098, )
        Yay0_1CB098_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB098.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB098, 0x1CB118)
    
    SPLAT_BEGIN_SEG(data_1CB118, 0x1CB118, 0x1CB118, )
        Yay0_1CB118_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB118.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB118, 0x1CB220)
    
    SPLAT_BEGIN_SEG(data_1CB220, 0x1CB220, 0x1CB220, )
        Yay0_1CB220_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB220.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB220, 0x1CB2F0)
    
    SPLAT_BEGIN_SEG(data_1CB2F0, 0x1CB2F0, 0x1CB2F0, )
        Yay0_1CB2F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB2F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB2F0, 0x1CB3E0)
    
    SPLAT_BEGIN_SEG(data_1CB3E0, 0x1CB3E0, 0x1CB3E0, )
        Yay0_1CB3E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB3E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB3E0, 0x1CB4D8)
    
    SPLAT_BEGIN_SEG(data_1CB4D8, 0x1CB4D8, 0x1CB4D8, )
        Yay0_1CB4D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB4D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB4D8, 0x1CB708)
    
    SPLAT_BEGIN_SEG(data_1CB708, 0x1CB708, 0x1CB708, )
        Yay0_1CB708_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB708.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB708, 0x1CB7C0)
    
    SPLAT_BEGIN_SEG(data_1CB7C0, 0x1CB7C0, 0x1CB7C0, )
        Yay0_1CB7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB7C0, 0x1CB8B0)
    
    SPLAT_BEGIN_SEG(data_1CB8B0, 0x1CB8B0, 0x1CB8B0, )
        Yay0_1CB8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB8B0, 0x1CB9B8)
    
    SPLAT_BEGIN_SEG(data_1CB9B8, 0x1CB9B8, 0x1CB9B8, )
        Yay0_1CB9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CB9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CB9B8, 0x1CBA98)
    
    SPLAT_BEGIN_SEG(data_1CBA98, 0x1CBA98, 0x1CBA98, )
        Yay0_1CBA98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CBA98.Yay0.o(.data);
    SPLAT_END_SEG(data_1CBA98, 0x1CBBA0)
    
    SPLAT_BEGIN_SEG(data_1CBBA0, 0x1CBBA0, 0x1CBBA0, )
        Yay0_1CBBA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CBBA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CBBA0, 0x1CBC88)
    
    SPLAT_BEGIN_SEG(data_1CBC88, 0x1CBC88, 0x1CBC88, )
        Yay0_1CBC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CBC88.Yay0.o(.data);
    SPLAT_END_SEG(data_1CBC88, 0x1CBD90)
    
    SPLAT_BEGIN_SEG(data_1CBD90, 0x1CBD90, 0x1CBD90, )
        Yay0_1CBD90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CBD90.Yay0.o(.data);
    SPLAT_END_SEG(data_1CBD90, 0x1CBE90)
    
    SPLAT_BEGIN_SEG(data_1CBE90, 0x1CBE90, 0x1CBE90, )
        Yay0_1CBE90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CBE90.Yay0.o(.data);
    SPLAT_END_SEG(data_1CBE90, 0x1CC090)
    
    SPLAT_BEGIN_SEG(data_1CC090, 0x1CC090, 0x1CC090, )
        Yay0_1CC090_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC090.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC090, 0x1CC170)
    
    SPLAT_BEGIN_SEG(data_1CC170, 0x1CC170, 0x1CC170, )
        Yay0_1CC170_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC170.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC170, 0x1CC240)
    
    SPLAT_BEGIN_SEG(data_1CC240, 0x1CC240, 0x1CC240, )
        Yay0_1CC240_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC240.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC240, 0x1CC348)
    
    SPLAT_BEGIN_SEG(data_1CC348, 0x1CC348, 0x1CC348, )
        Yay0_1CC348_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC348.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC348, 0x1CC448)
    
    SPLAT_BEGIN_SEG(data_1CC448, 0x1CC448, 0x1CC448, )
        Yay0_1CC448_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC448.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC448, 0x1CC660)
    
    SPLAT_BEGIN_SEG(data_1CC660, 0x1CC660, 0x1CC660, )
        Yay0_1CC660_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC660.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC660, 0x1CC878)
    
    SPLAT_BEGIN_SEG(data_1CC878, 0x1CC878, 0x1CC878, )
        Yay0_1CC878_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC878.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC878, 0x1CC8B0)
    
    SPLAT_BEGIN_SEG(data_1CC8B0, 0x1CC8B0, 0x1CC8B0, )
        Yay0_1CC8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC8B0, 0x1CC980)
    
    SPLAT_BEGIN_SEG(data_1CC980, 0x1CC980, 0x1CC980, )
        Yay0_1CC980_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CC980.Yay0.o(.data);
    SPLAT_END_SEG(data_1CC980, 0x1CCA70)
    
    SPLAT_BEGIN_SEG(data_1CCA70, 0x1CCA70, 0x1CCA70, )
        Yay0_1CCA70_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCA70.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCA70, 0x1CCB50)
    
    SPLAT_BEGIN_SEG(data_1CCB50, 0x1CCB50, 0x1CCB50, )
        Yay0_1CCB50_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCB50.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCB50, 0x1CCBE8)
    
    SPLAT_BEGIN_SEG(data_1CCBE8, 0x1CCBE8, 0x1CCBE8, )
        Yay0_1CCBE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCBE8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCBE8, 0x1CCCC0)
    
    SPLAT_BEGIN_SEG(data_1CCCC0, 0x1CCCC0, 0x1CCCC0, )
        Yay0_1CCCC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCCC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCCC0, 0x1CCDD8)
    
    SPLAT_BEGIN_SEG(data_1CCDD8, 0x1CCDD8, 0x1CCDD8, )
        Yay0_1CCDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCDD8, 0x1CCEA8)
    
    SPLAT_BEGIN_SEG(data_1CCEA8, 0x1CCEA8, 0x1CCEA8, )
        Yay0_1CCEA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCEA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCEA8, 0x1CCF68)
    
    SPLAT_BEGIN_SEG(data_1CCF68, 0x1CCF68, 0x1CCF68, )
        Yay0_1CCF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CCF68.Yay0.o(.data);
    SPLAT_END_SEG(data_1CCF68, 0x1CD048)
    
    SPLAT_BEGIN_SEG(data_1CD048, 0x1CD048, 0x1CD048, )
        Yay0_1CD048_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD048.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD048, 0x1CD240)
    
    SPLAT_BEGIN_SEG(data_1CD240, 0x1CD240, 0x1CD240, )
        Yay0_1CD240_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD240.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD240, 0x1CD330)
    
    SPLAT_BEGIN_SEG(data_1CD330, 0x1CD330, 0x1CD330, )
        Yay0_1CD330_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD330.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD330, 0x1CD448)
    
    SPLAT_BEGIN_SEG(data_1CD448, 0x1CD448, 0x1CD448, )
        Yay0_1CD448_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD448.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD448, 0x1CD4E0)
    
    SPLAT_BEGIN_SEG(data_1CD4E0, 0x1CD4E0, 0x1CD4E0, )
        Yay0_1CD4E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD4E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD4E0, 0x1CD5E8)
    
    SPLAT_BEGIN_SEG(data_1CD5E8, 0x1CD5E8, 0x1CD5E8, )
        Yay0_1CD5E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD5E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD5E8, 0x1CD700)
    
    SPLAT_BEGIN_SEG(data_1CD700, 0x1CD700, 0x1CD700, )
        Yay0_1CD700_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD700.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD700, 0x1CD7B8)
    
    SPLAT_BEGIN_SEG(data_1CD7B8, 0x1CD7B8, 0x1CD7B8, )
        Yay0_1CD7B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD7B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD7B8, 0x1CD8C8)
    
    SPLAT_BEGIN_SEG(data_1CD8C8, 0x1CD8C8, 0x1CD8C8, )
        Yay0_1CD8C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD8C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD8C8, 0x1CD998)
    
    SPLAT_BEGIN_SEG(data_1CD998, 0x1CD998, 0x1CD998, )
        Yay0_1CD998_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CD998.Yay0.o(.data);
    SPLAT_END_SEG(data_1CD998, 0x1CDA90)
    
    SPLAT_BEGIN_SEG(data_1CDA90, 0x1CDA90, 0x1CDA90, )
        Yay0_1CDA90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CDA90.Yay0.o(.data);
    SPLAT_END_SEG(data_1CDA90, 0x1CDC98)
    
    SPLAT_BEGIN_SEG(data_1CDC98, 0x1CDC98, 0x1CDC98, )
        Yay0_1CDC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CDC98.Yay0.o(.data);
    SPLAT_END_SEG(data_1CDC98, 0x1CDD18)
    
    SPLAT_BEGIN_SEG(data_1CDD18, 0x1CDD18, 0x1CDD18, )
        Yay0_1CDD18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CDD18.Yay0.o(.data);
    SPLAT_END_SEG(data_1CDD18, 0x1CDE28)
    
    SPLAT_BEGIN_SEG(data_1CDE28, 0x1CDE28, 0x1CDE28, )
        Yay0_1CDE28_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CDE28.Yay0.o(.data);
    SPLAT_END_SEG(data_1CDE28, 0x1CDF10)
    
    SPLAT_BEGIN_SEG(data_1CDF10, 0x1CDF10, 0x1CDF10, )
        Yay0_1CDF10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CDF10.Yay0.o(.data);
    SPLAT_END_SEG(data_1CDF10, 0x1CE020)
    
    SPLAT_BEGIN_SEG(data_1CE020, 0x1CE020, 0x1CE020, )
        Yay0_1CE020_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE020.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE020, 0x1CE108)
    
    SPLAT_BEGIN_SEG(data_1CE108, 0x1CE108, 0x1CE108, )
        Yay0_1CE108_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE108.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE108, 0x1CE210)
    
    SPLAT_BEGIN_SEG(data_1CE210, 0x1CE210, 0x1CE210, )
        Yay0_1CE210_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE210.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE210, 0x1CE2E8)
    
    SPLAT_BEGIN_SEG(data_1CE2E8, 0x1CE2E8, 0x1CE2E8, )
        Yay0_1CE2E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE2E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE2E8, 0x1CE3D0)
    
    SPLAT_BEGIN_SEG(data_1CE3D0, 0x1CE3D0, 0x1CE3D0, )
        Yay0_1CE3D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE3D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE3D0, 0x1CE450)
    
    SPLAT_BEGIN_SEG(data_1CE450, 0x1CE450, 0x1CE450, )
        Yay0_1CE450_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE450.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE450, 0x1CE508)
    
    SPLAT_BEGIN_SEG(data_1CE508, 0x1CE508, 0x1CE508, )
        Yay0_1CE508_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE508.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE508, 0x1CE5F8)
    
    SPLAT_BEGIN_SEG(data_1CE5F8, 0x1CE5F8, 0x1CE5F8, )
        Yay0_1CE5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE5F8, 0x1CE6D0)
    
    SPLAT_BEGIN_SEG(data_1CE6D0, 0x1CE6D0, 0x1CE6D0, )
        Yay0_1CE6D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE6D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE6D0, 0x1CE7D8)
    
    SPLAT_BEGIN_SEG(data_1CE7D8, 0x1CE7D8, 0x1CE7D8, )
        Yay0_1CE7D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE7D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE7D8, 0x1CE8D0)
    
    SPLAT_BEGIN_SEG(data_1CE8D0, 0x1CE8D0, 0x1CE8D0, )
        Yay0_1CE8D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE8D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE8D0, 0x1CE988)
    
    SPLAT_BEGIN_SEG(data_1CE988, 0x1CE988, 0x1CE988, )
        Yay0_1CE988_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CE988.Yay0.o(.data);
    SPLAT_END_SEG(data_1CE988, 0x1CEA68)
    
    SPLAT_BEGIN_SEG(data_1CEA68, 0x1CEA68, 0x1CEA68, )
        Yay0_1CEA68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEA68.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEA68, 0x1CEAA8)
    
    SPLAT_BEGIN_SEG(data_1CEAA8, 0x1CEAA8, 0x1CEAA8, )
        Yay0_1CEAA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEAA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEAA8, 0x1CEB38)
    
    SPLAT_BEGIN_SEG(data_1CEB38, 0x1CEB38, 0x1CEB38, )
        Yay0_1CEB38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEB38.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEB38, 0x1CEC30)
    
    SPLAT_BEGIN_SEG(data_1CEC30, 0x1CEC30, 0x1CEC30, )
        Yay0_1CEC30_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEC30.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEC30, 0x1CED10)
    
    SPLAT_BEGIN_SEG(data_1CED10, 0x1CED10, 0x1CED10, )
        Yay0_1CED10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CED10.Yay0.o(.data);
    SPLAT_END_SEG(data_1CED10, 0x1CEDA8)
    
    SPLAT_BEGIN_SEG(data_1CEDA8, 0x1CEDA8, 0x1CEDA8, )
        Yay0_1CEDA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEDA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEDA8, 0x1CEEA0)
    
    SPLAT_BEGIN_SEG(data_1CEEA0, 0x1CEEA0, 0x1CEEA0, )
        Yay0_1CEEA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEEA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEEA0, 0x1CEF68)
    
    SPLAT_BEGIN_SEG(data_1CEF68, 0x1CEF68, 0x1CEF68, )
        Yay0_1CEF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CEF68.Yay0.o(.data);
    SPLAT_END_SEG(data_1CEF68, 0x1CF060)
    
    SPLAT_BEGIN_SEG(data_1CF060, 0x1CF060, 0x1CF060, )
        Yay0_1CF060_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF060.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF060, 0x1CF170)
    
    SPLAT_BEGIN_SEG(data_1CF170, 0x1CF170, 0x1CF170, )
        Yay0_1CF170_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF170.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF170, 0x1CF268)
    
    SPLAT_BEGIN_SEG(data_1CF268, 0x1CF268, 0x1CF268, )
        Yay0_1CF268_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF268.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF268, 0x1CF340)
    
    SPLAT_BEGIN_SEG(data_1CF340, 0x1CF340, 0x1CF340, )
        Yay0_1CF340_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF340.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF340, 0x1CF3A8)
    
    SPLAT_BEGIN_SEG(data_1CF3A8, 0x1CF3A8, 0x1CF3A8, )
        Yay0_1CF3A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF3A8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF3A8, 0x1CF438)
    
    SPLAT_BEGIN_SEG(data_1CF438, 0x1CF438, 0x1CF438, )
        Yay0_1CF438_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF438.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF438, 0x1CF520)
    
    SPLAT_BEGIN_SEG(data_1CF520, 0x1CF520, 0x1CF520, )
        Yay0_1CF520_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF520.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF520, 0x1CF630)
    
    SPLAT_BEGIN_SEG(data_1CF630, 0x1CF630, 0x1CF630, )
        Yay0_1CF630_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF630.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF630, 0x1CF700)
    
    SPLAT_BEGIN_SEG(data_1CF700, 0x1CF700, 0x1CF700, )
        Yay0_1CF700_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF700.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF700, 0x1CF7F8)
    
    SPLAT_BEGIN_SEG(data_1CF7F8, 0x1CF7F8, 0x1CF7F8, )
        Yay0_1CF7F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF7F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF7F8, 0x1CF8B0)
    
    SPLAT_BEGIN_SEG(data_1CF8B0, 0x1CF8B0, 0x1CF8B0, )
        Yay0_1CF8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF8B0, 0x1CF998)
    
    SPLAT_BEGIN_SEG(data_1CF998, 0x1CF998, 0x1CF998, )
        Yay0_1CF998_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CF998.Yay0.o(.data);
    SPLAT_END_SEG(data_1CF998, 0x1CFAA0)
    
    SPLAT_BEGIN_SEG(data_1CFAA0, 0x1CFAA0, 0x1CFAA0, )
        Yay0_1CFAA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CFAA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CFAA0, 0x1CFBB0)
    
    SPLAT_BEGIN_SEG(data_1CFBB0, 0x1CFBB0, 0x1CFBB0, )
        Yay0_1CFBB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CFBB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1CFBB0, 0x1CFC90)
    
    SPLAT_BEGIN_SEG(data_1CFC90, 0x1CFC90, 0x1CFC90, )
        Yay0_1CFC90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CFC90.Yay0.o(.data);
    SPLAT_END_SEG(data_1CFC90, 0x1CFD90)
    
    SPLAT_BEGIN_SEG(data_1CFD90, 0x1CFD90, 0x1CFD90, )
        Yay0_1CFD90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CFD90.Yay0.o(.data);
    SPLAT_END_SEG(data_1CFD90, 0x1CFE98)
    
    SPLAT_BEGIN_SEG(data_1CFE98, 0x1CFE98, 0x1CFE98, )
        Yay0_1CFE98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CFE98.Yay0.o(.data);
    SPLAT_END_SEG(data_1CFE98, 0x1CFF30)
    
    SPLAT_BEGIN_SEG(data_1CFF30, 0x1CFF30, 0x1CFF30, )
        Yay0_1CFF30_Yay0 = .;
        BUILD_DIR/bin/Yay0/1CFF30.Yay0.o(.data);
    SPLAT_END_SEG(data_1CFF30, 0x1D0018)
    
    SPLAT_BEGIN_SEG(data_1D0018, 0x1D0018, 0x1D0018, )
        Yay0_1D0018_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0018.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0018, 0x1D0108)
    
    SPLAT_BEGIN_SEG(data_1D0108, 0x1D0108, 0x1D0108, )
        Yay0_1D0108_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0108.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0108, 0x1D0200)
    
    SPLAT_BEGIN_SEG(data_1D0200, 0x1D0200, 0x1D0200, )
        Yay0_1D0200_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0200.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0200, 0x1D02D0)
    
    SPLAT_BEGIN_SEG(data_1D02D0, 0x1D02D0, 0x1D02D0, )
        Yay0_1D02D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D02D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D02D0, 0x1D03D0)
    
    SPLAT_BEGIN_SEG(data_1D03D0, 0x1D03D0, 0x1D03D0, )
        Yay0_1D03D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D03D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D03D0, 0x1D04C0)
    
    SPLAT_BEGIN_SEG(data_1D04C0, 0x1D04C0, 0x1D04C0, )
        Yay0_1D04C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D04C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D04C0, 0x1D0588)
    
    SPLAT_BEGIN_SEG(data_1D0588, 0x1D0588, 0x1D0588, )
        Yay0_1D0588_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0588.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0588, 0x1D0698)
    
    SPLAT_BEGIN_SEG(data_1D0698, 0x1D0698, 0x1D0698, )
        Yay0_1D0698_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0698.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0698, 0x1D0778)
    
    SPLAT_BEGIN_SEG(data_1D0778, 0x1D0778, 0x1D0778, )
        Yay0_1D0778_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0778.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0778, 0x1D0880)
    
    SPLAT_BEGIN_SEG(data_1D0880, 0x1D0880, 0x1D0880, )
        Yay0_1D0880_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0880.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0880, 0x1D0998)
    
    SPLAT_BEGIN_SEG(data_1D0998, 0x1D0998, 0x1D0998, )
        Yay0_1D0998_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0998.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0998, 0x1D0A58)
    
    SPLAT_BEGIN_SEG(data_1D0A58, 0x1D0A58, 0x1D0A58, )
        Yay0_1D0A58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0A58.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0A58, 0x1D0B58)
    
    SPLAT_BEGIN_SEG(data_1D0B58, 0x1D0B58, 0x1D0B58, )
        Yay0_1D0B58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0B58.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0B58, 0x1D0C38)
    
    SPLAT_BEGIN_SEG(data_1D0C38, 0x1D0C38, 0x1D0C38, )
        Yay0_1D0C38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0C38.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0C38, 0x1D0D28)
    
    SPLAT_BEGIN_SEG(data_1D0D28, 0x1D0D28, 0x1D0D28, )
        Yay0_1D0D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0D28.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0D28, 0x1D0DF8)
    
    SPLAT_BEGIN_SEG(data_1D0DF8, 0x1D0DF8, 0x1D0DF8, )
        Yay0_1D0DF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0DF8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0DF8, 0x1D0F10)
    
    SPLAT_BEGIN_SEG(data_1D0F10, 0x1D0F10, 0x1D0F10, )
        Yay0_1D0F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D0F10.Yay0.o(.data);
    SPLAT_END_SEG(data_1D0F10, 0x1D1008)
    
    SPLAT_BEGIN_SEG(data_1D1008, 0x1D1008, 0x1D1008, )
        Yay0_1D1008_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1008.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1008, 0x1D1110)
    
    SPLAT_BEGIN_SEG(data_1D1110, 0x1D1110, 0x1D1110, )
        Yay0_1D1110_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1110.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1110, 0x1D11F0)
    
    SPLAT_BEGIN_SEG(data_1D11F0, 0x1D11F0, 0x1D11F0, )
        Yay0_1D11F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D11F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D11F0, 0x1D12B8)
    
    SPLAT_BEGIN_SEG(data_1D12B8, 0x1D12B8, 0x1D12B8, )
        Yay0_1D12B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D12B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D12B8, 0x1D14D0)
    
    SPLAT_BEGIN_SEG(data_1D14D0, 0x1D14D0, 0x1D14D0, )
        Yay0_1D14D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D14D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D14D0, 0x1D15C8)
    
    SPLAT_BEGIN_SEG(data_1D15C8, 0x1D15C8, 0x1D15C8, )
        Yay0_1D15C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D15C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D15C8, 0x1D16D0)
    
    SPLAT_BEGIN_SEG(data_1D16D0, 0x1D16D0, 0x1D16D0, )
        Yay0_1D16D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D16D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D16D0, 0x1D17B0)
    
    SPLAT_BEGIN_SEG(data_1D17B0, 0x1D17B0, 0x1D17B0, )
        Yay0_1D17B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D17B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D17B0, 0x1D1898)
    
    SPLAT_BEGIN_SEG(data_1D1898, 0x1D1898, 0x1D1898, )
        Yay0_1D1898_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1898.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1898, 0x1D1930)
    
    SPLAT_BEGIN_SEG(data_1D1930, 0x1D1930, 0x1D1930, )
        Yay0_1D1930_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1930.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1930, 0x1D1A30)
    
    SPLAT_BEGIN_SEG(data_1D1A30, 0x1D1A30, 0x1D1A30, )
        Yay0_1D1A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1A30.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1A30, 0x1D1B20)
    
    SPLAT_BEGIN_SEG(data_1D1B20, 0x1D1B20, 0x1D1B20, )
        Yay0_1D1B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1B20.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1B20, 0x1D1C10)
    
    SPLAT_BEGIN_SEG(data_1D1C10, 0x1D1C10, 0x1D1C10, )
        Yay0_1D1C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1C10.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1C10, 0x1D1D10)
    
    SPLAT_BEGIN_SEG(data_1D1D10, 0x1D1D10, 0x1D1D10, )
        Yay0_1D1D10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1D10.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1D10, 0x1D1E20)
    
    SPLAT_BEGIN_SEG(data_1D1E20, 0x1D1E20, 0x1D1E20, )
        Yay0_1D1E20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1E20.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1E20, 0x1D1F38)
    
    SPLAT_BEGIN_SEG(data_1D1F38, 0x1D1F38, 0x1D1F38, )
        Yay0_1D1F38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D1F38.Yay0.o(.data);
    SPLAT_END_SEG(data_1D1F38, 0x1D2050)
    
    SPLAT_BEGIN_SEG(data_1D2050, 0x1D2050, 0x1D2050, )
        Yay0_1D2050_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2050.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2050, 0x1D2130)
    
    SPLAT_BEGIN_SEG(data_1D2130, 0x1D2130, 0x1D2130, )
        Yay0_1D2130_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2130.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2130, 0x1D2248)
    
    SPLAT_BEGIN_SEG(data_1D2248, 0x1D2248, 0x1D2248, )
        Yay0_1D2248_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2248.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2248, 0x1D2328)
    
    SPLAT_BEGIN_SEG(data_1D2328, 0x1D2328, 0x1D2328, )
        Yay0_1D2328_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2328.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2328, 0x1D2428)
    
    SPLAT_BEGIN_SEG(data_1D2428, 0x1D2428, 0x1D2428, )
        Yay0_1D2428_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2428.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2428, 0x1D2528)
    
    SPLAT_BEGIN_SEG(data_1D2528, 0x1D2528, 0x1D2528, )
        Yay0_1D2528_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2528.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2528, 0x1D2600)
    
    SPLAT_BEGIN_SEG(data_1D2600, 0x1D2600, 0x1D2600, )
        Yay0_1D2600_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2600.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2600, 0x1D26C0)
    
    SPLAT_BEGIN_SEG(data_1D26C0, 0x1D26C0, 0x1D26C0, )
        Yay0_1D26C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D26C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D26C0, 0x1D27B8)
    
    SPLAT_BEGIN_SEG(data_1D27B8, 0x1D27B8, 0x1D27B8, )
        Yay0_1D27B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D27B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D27B8, 0x1D29F0)
    
    SPLAT_BEGIN_SEG(data_1D29F0, 0x1D29F0, 0x1D29F0, )
        Yay0_1D29F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D29F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D29F0, 0x1D2AF0)
    
    SPLAT_BEGIN_SEG(data_1D2AF0, 0x1D2AF0, 0x1D2AF0, )
        Yay0_1D2AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2AF0, 0x1D2BD8)
    
    SPLAT_BEGIN_SEG(data_1D2BD8, 0x1D2BD8, 0x1D2BD8, )
        Yay0_1D2BD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2BD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2BD8, 0x1D2CD8)
    
    SPLAT_BEGIN_SEG(data_1D2CD8, 0x1D2CD8, 0x1D2CD8, )
        Yay0_1D2CD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2CD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2CD8, 0x1D2DB0)
    
    SPLAT_BEGIN_SEG(data_1D2DB0, 0x1D2DB0, 0x1D2DB0, )
        Yay0_1D2DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2DB0, 0x1D2FA0)
    
    SPLAT_BEGIN_SEG(data_1D2FA0, 0x1D2FA0, 0x1D2FA0, )
        Yay0_1D2FA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D2FA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D2FA0, 0x1D3078)
    
    SPLAT_BEGIN_SEG(data_1D3078, 0x1D3078, 0x1D3078, )
        Yay0_1D3078_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3078.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3078, 0x1D3188)
    
    SPLAT_BEGIN_SEG(data_1D3188, 0x1D3188, 0x1D3188, )
        Yay0_1D3188_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3188.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3188, 0x1D3278)
    
    SPLAT_BEGIN_SEG(data_1D3278, 0x1D3278, 0x1D3278, )
        Yay0_1D3278_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3278.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3278, 0x1D3360)
    
    SPLAT_BEGIN_SEG(data_1D3360, 0x1D3360, 0x1D3360, )
        Yay0_1D3360_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3360.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3360, 0x1D3470)
    
    SPLAT_BEGIN_SEG(data_1D3470, 0x1D3470, 0x1D3470, )
        Yay0_1D3470_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3470.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3470, 0x1D3568)
    
    SPLAT_BEGIN_SEG(data_1D3568, 0x1D3568, 0x1D3568, )
        Yay0_1D3568_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3568.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3568, 0x1D3678)
    
    SPLAT_BEGIN_SEG(data_1D3678, 0x1D3678, 0x1D3678, )
        Yay0_1D3678_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3678.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3678, 0x1D3778)
    
    SPLAT_BEGIN_SEG(data_1D3778, 0x1D3778, 0x1D3778, )
        Yay0_1D3778_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3778.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3778, 0x1D3870)
    
    SPLAT_BEGIN_SEG(data_1D3870, 0x1D3870, 0x1D3870, )
        Yay0_1D3870_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3870.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3870, 0x1D3980)
    
    SPLAT_BEGIN_SEG(data_1D3980, 0x1D3980, 0x1D3980, )
        Yay0_1D3980_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3980.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3980, 0x1D3BA0)
    
    SPLAT_BEGIN_SEG(data_1D3BA0, 0x1D3BA0, 0x1D3BA0, )
        Yay0_1D3BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3BA0, 0x1D3C88)
    
    SPLAT_BEGIN_SEG(data_1D3C88, 0x1D3C88, 0x1D3C88, )
        Yay0_1D3C88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3C88.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3C88, 0x1D3EC0)
    
    SPLAT_BEGIN_SEG(data_1D3EC0, 0x1D3EC0, 0x1D3EC0, )
        Yay0_1D3EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3EC0, 0x1D3F70)
    
    SPLAT_BEGIN_SEG(data_1D3F70, 0x1D3F70, 0x1D3F70, )
        Yay0_1D3F70_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D3F70.Yay0.o(.data);
    SPLAT_END_SEG(data_1D3F70, 0x1D4078)
    
    SPLAT_BEGIN_SEG(data_1D4078, 0x1D4078, 0x1D4078, )
        Yay0_1D4078_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4078.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4078, 0x1D4190)
    
    SPLAT_BEGIN_SEG(data_1D4190, 0x1D4190, 0x1D4190, )
        Yay0_1D4190_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4190.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4190, 0x1D4270)
    
    SPLAT_BEGIN_SEG(data_1D4270, 0x1D4270, 0x1D4270, )
        Yay0_1D4270_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4270.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4270, 0x1D4338)
    
    SPLAT_BEGIN_SEG(data_1D4338, 0x1D4338, 0x1D4338, )
        Yay0_1D4338_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4338.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4338, 0x1D4400)
    
    SPLAT_BEGIN_SEG(data_1D4400, 0x1D4400, 0x1D4400, )
        Yay0_1D4400_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4400.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4400, 0x1D4510)
    
    SPLAT_BEGIN_SEG(data_1D4510, 0x1D4510, 0x1D4510, )
        Yay0_1D4510_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4510.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4510, 0x1D4720)
    
    SPLAT_BEGIN_SEG(data_1D4720, 0x1D4720, 0x1D4720, )
        Yay0_1D4720_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4720.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4720, 0x1D4838)
    
    SPLAT_BEGIN_SEG(data_1D4838, 0x1D4838, 0x1D4838, )
        Yay0_1D4838_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4838.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4838, 0x1D4938)
    
    SPLAT_BEGIN_SEG(data_1D4938, 0x1D4938, 0x1D4938, )
        Yay0_1D4938_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4938.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4938, 0x1D4A30)
    
    SPLAT_BEGIN_SEG(data_1D4A30, 0x1D4A30, 0x1D4A30, )
        Yay0_1D4A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4A30.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4A30, 0x1D4B00)
    
    SPLAT_BEGIN_SEG(data_1D4B00, 0x1D4B00, 0x1D4B00, )
        Yay0_1D4B00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4B00.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4B00, 0x1D4BA0)
    
    SPLAT_BEGIN_SEG(data_1D4BA0, 0x1D4BA0, 0x1D4BA0, )
        Yay0_1D4BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4BA0, 0x1D4C60)
    
    SPLAT_BEGIN_SEG(data_1D4C60, 0x1D4C60, 0x1D4C60, )
        Yay0_1D4C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4C60.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4C60, 0x1D4D68)
    
    SPLAT_BEGIN_SEG(data_1D4D68, 0x1D4D68, 0x1D4D68, )
        Yay0_1D4D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4D68.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4D68, 0x1D4E28)
    
    SPLAT_BEGIN_SEG(data_1D4E28, 0x1D4E28, 0x1D4E28, )
        Yay0_1D4E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4E28.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4E28, 0x1D4F38)
    
    SPLAT_BEGIN_SEG(data_1D4F38, 0x1D4F38, 0x1D4F38, )
        Yay0_1D4F38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D4F38.Yay0.o(.data);
    SPLAT_END_SEG(data_1D4F38, 0x1D5050)
    
    SPLAT_BEGIN_SEG(data_1D5050, 0x1D5050, 0x1D5050, )
        Yay0_1D5050_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5050.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5050, 0x1D5168)
    
    SPLAT_BEGIN_SEG(data_1D5168, 0x1D5168, 0x1D5168, )
        Yay0_1D5168_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5168.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5168, 0x1D5250)
    
    SPLAT_BEGIN_SEG(data_1D5250, 0x1D5250, 0x1D5250, )
        Yay0_1D5250_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5250.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5250, 0x1D5358)
    
    SPLAT_BEGIN_SEG(data_1D5358, 0x1D5358, 0x1D5358, )
        Yay0_1D5358_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5358.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5358, 0x1D5588)
    
    SPLAT_BEGIN_SEG(data_1D5588, 0x1D5588, 0x1D5588, )
        Yay0_1D5588_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5588.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5588, 0x1D5678)
    
    SPLAT_BEGIN_SEG(data_1D5678, 0x1D5678, 0x1D5678, )
        Yay0_1D5678_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5678.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5678, 0x1D5790)
    
    SPLAT_BEGIN_SEG(data_1D5790, 0x1D5790, 0x1D5790, )
        Yay0_1D5790_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5790.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5790, 0x1D5A90)
    
    SPLAT_BEGIN_SEG(data_1D5A90, 0x1D5A90, 0x1D5A90, )
        Yay0_1D5A90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5A90.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5A90, 0x1D5B80)
    
    SPLAT_BEGIN_SEG(data_1D5B80, 0x1D5B80, 0x1D5B80, )
        Yay0_1D5B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5B80.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5B80, 0x1D5C98)
    
    SPLAT_BEGIN_SEG(data_1D5C98, 0x1D5C98, 0x1D5C98, )
        Yay0_1D5C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5C98.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5C98, 0x1D5D78)
    
    SPLAT_BEGIN_SEG(data_1D5D78, 0x1D5D78, 0x1D5D78, )
        Yay0_1D5D78_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5D78.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5D78, 0x1D5E88)
    
    SPLAT_BEGIN_SEG(data_1D5E88, 0x1D5E88, 0x1D5E88, )
        Yay0_1D5E88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5E88.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5E88, 0x1D5F98)
    
    SPLAT_BEGIN_SEG(data_1D5F98, 0x1D5F98, 0x1D5F98, )
        Yay0_1D5F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D5F98.Yay0.o(.data);
    SPLAT_END_SEG(data_1D5F98, 0x1D60A0)
    
    SPLAT_BEGIN_SEG(data_1D60A0, 0x1D60A0, 0x1D60A0, )
        Yay0_1D60A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D60A0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D60A0, 0x1D6170)
    
    SPLAT_BEGIN_SEG(data_1D6170, 0x1D6170, 0x1D6170, )
        Yay0_1D6170_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6170.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6170, 0x1D6258)
    
    SPLAT_BEGIN_SEG(data_1D6258, 0x1D6258, 0x1D6258, )
        Yay0_1D6258_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6258.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6258, 0x1D6308)
    
    SPLAT_BEGIN_SEG(data_1D6308, 0x1D6308, 0x1D6308, )
        Yay0_1D6308_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6308.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6308, 0x1D6420)
    
    SPLAT_BEGIN_SEG(data_1D6420, 0x1D6420, 0x1D6420, )
        Yay0_1D6420_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6420.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6420, 0x1D6528)
    
    SPLAT_BEGIN_SEG(data_1D6528, 0x1D6528, 0x1D6528, )
        Yay0_1D6528_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6528.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6528, 0x1D6620)
    
    SPLAT_BEGIN_SEG(data_1D6620, 0x1D6620, 0x1D6620, )
        Yay0_1D6620_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6620.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6620, 0x1D6720)
    
    SPLAT_BEGIN_SEG(data_1D6720, 0x1D6720, 0x1D6720, )
        Yay0_1D6720_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6720.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6720, 0x1D6930)
    
    SPLAT_BEGIN_SEG(data_1D6930, 0x1D6930, 0x1D6930, )
        Yay0_1D6930_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6930.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6930, 0x1D6A38)
    
    SPLAT_BEGIN_SEG(data_1D6A38, 0x1D6A38, 0x1D6A38, )
        Yay0_1D6A38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6A38.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6A38, 0x1D6B18)
    
    SPLAT_BEGIN_SEG(data_1D6B18, 0x1D6B18, 0x1D6B18, )
        Yay0_1D6B18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6B18.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6B18, 0x1D6C18)
    
    SPLAT_BEGIN_SEG(data_1D6C18, 0x1D6C18, 0x1D6C18, )
        Yay0_1D6C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6C18.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6C18, 0x1D6CD0)
    
    SPLAT_BEGIN_SEG(data_1D6CD0, 0x1D6CD0, 0x1D6CD0, )
        Yay0_1D6CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6CD0, 0x1D6DA8)
    
    SPLAT_BEGIN_SEG(data_1D6DA8, 0x1D6DA8, 0x1D6DA8, )
        Yay0_1D6DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6DA8, 0x1D6EB0)
    
    SPLAT_BEGIN_SEG(data_1D6EB0, 0x1D6EB0, 0x1D6EB0, )
        Yay0_1D6EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6EB0, 0x1D6F88)
    
    SPLAT_BEGIN_SEG(data_1D6F88, 0x1D6F88, 0x1D6F88, )
        Yay0_1D6F88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D6F88.Yay0.o(.data);
    SPLAT_END_SEG(data_1D6F88, 0x1D7098)
    
    SPLAT_BEGIN_SEG(data_1D7098, 0x1D7098, 0x1D7098, )
        Yay0_1D7098_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7098.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7098, 0x1D7290)
    
    SPLAT_BEGIN_SEG(data_1D7290, 0x1D7290, 0x1D7290, )
        Yay0_1D7290_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7290.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7290, 0x1D7390)
    
    SPLAT_BEGIN_SEG(data_1D7390, 0x1D7390, 0x1D7390, )
        Yay0_1D7390_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7390.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7390, 0x1D7490)
    
    SPLAT_BEGIN_SEG(data_1D7490, 0x1D7490, 0x1D7490, )
        Yay0_1D7490_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7490.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7490, 0x1D7590)
    
    SPLAT_BEGIN_SEG(data_1D7590, 0x1D7590, 0x1D7590, )
        Yay0_1D7590_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7590.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7590, 0x1D7640)
    
    SPLAT_BEGIN_SEG(data_1D7640, 0x1D7640, 0x1D7640, )
        Yay0_1D7640_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7640.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7640, 0x1D76D0)
    
    SPLAT_BEGIN_SEG(data_1D76D0, 0x1D76D0, 0x1D76D0, )
        Yay0_1D76D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D76D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D76D0, 0x1D7798)
    
    SPLAT_BEGIN_SEG(data_1D7798, 0x1D7798, 0x1D7798, )
        Yay0_1D7798_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7798.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7798, 0x1D7890)
    
    SPLAT_BEGIN_SEG(data_1D7890, 0x1D7890, 0x1D7890, )
        Yay0_1D7890_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7890.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7890, 0x1D7940)
    
    SPLAT_BEGIN_SEG(data_1D7940, 0x1D7940, 0x1D7940, )
        Yay0_1D7940_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7940.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7940, 0x1D7A00)
    
    SPLAT_BEGIN_SEG(data_1D7A00, 0x1D7A00, 0x1D7A00, )
        Yay0_1D7A00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7A00.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7A00, 0x1D7AC8)
    
    SPLAT_BEGIN_SEG(data_1D7AC8, 0x1D7AC8, 0x1D7AC8, )
        Yay0_1D7AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7AC8, 0x1D7B80)
    
    SPLAT_BEGIN_SEG(data_1D7B80, 0x1D7B80, 0x1D7B80, )
        Yay0_1D7B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7B80.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7B80, 0x1D7C40)
    
    SPLAT_BEGIN_SEG(data_1D7C40, 0x1D7C40, 0x1D7C40, )
        Yay0_1D7C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7C40.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7C40, 0x1D7D00)
    
    SPLAT_BEGIN_SEG(data_1D7D00, 0x1D7D00, 0x1D7D00, )
        Yay0_1D7D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7D00.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7D00, 0x1D7DC8)
    
    SPLAT_BEGIN_SEG(data_1D7DC8, 0x1D7DC8, 0x1D7DC8, )
        Yay0_1D7DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7DC8, 0x1D7ED8)
    
    SPLAT_BEGIN_SEG(data_1D7ED8, 0x1D7ED8, 0x1D7ED8, )
        Yay0_1D7ED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7ED8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7ED8, 0x1D7FF0)
    
    SPLAT_BEGIN_SEG(data_1D7FF0, 0x1D7FF0, 0x1D7FF0, )
        Yay0_1D7FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D7FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D7FF0, 0x1D80D0)
    
    SPLAT_BEGIN_SEG(data_1D80D0, 0x1D80D0, 0x1D80D0, )
        Yay0_1D80D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D80D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D80D0, 0x1D82F0)
    
    SPLAT_BEGIN_SEG(data_1D82F0, 0x1D82F0, 0x1D82F0, )
        Yay0_1D82F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D82F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D82F0, 0x1D83E0)
    
    SPLAT_BEGIN_SEG(data_1D83E0, 0x1D83E0, 0x1D83E0, )
        Yay0_1D83E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D83E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D83E0, 0x1D8490)
    
    SPLAT_BEGIN_SEG(data_1D8490, 0x1D8490, 0x1D8490, )
        Yay0_1D8490_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8490.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8490, 0x1D85A0)
    
    SPLAT_BEGIN_SEG(data_1D85A0, 0x1D85A0, 0x1D85A0, )
        Yay0_1D85A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D85A0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D85A0, 0x1D85E8)
    
    SPLAT_BEGIN_SEG(data_1D85E8, 0x1D85E8, 0x1D85E8, )
        Yay0_1D85E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D85E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D85E8, 0x1D86B8)
    
    SPLAT_BEGIN_SEG(data_1D86B8, 0x1D86B8, 0x1D86B8, )
        Yay0_1D86B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D86B8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D86B8, 0x1D88F0)
    
    SPLAT_BEGIN_SEG(data_1D88F0, 0x1D88F0, 0x1D88F0, )
        Yay0_1D88F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D88F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D88F0, 0x1D89C8)
    
    SPLAT_BEGIN_SEG(data_1D89C8, 0x1D89C8, 0x1D89C8, )
        Yay0_1D89C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D89C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D89C8, 0x1D8A78)
    
    SPLAT_BEGIN_SEG(data_1D8A78, 0x1D8A78, 0x1D8A78, )
        Yay0_1D8A78_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8A78.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8A78, 0x1D8B08)
    
    SPLAT_BEGIN_SEG(data_1D8B08, 0x1D8B08, 0x1D8B08, )
        Yay0_1D8B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8B08.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8B08, 0x1D8C10)
    
    SPLAT_BEGIN_SEG(data_1D8C10, 0x1D8C10, 0x1D8C10, )
        Yay0_1D8C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8C10.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8C10, 0x1D8D20)
    
    SPLAT_BEGIN_SEG(data_1D8D20, 0x1D8D20, 0x1D8D20, )
        Yay0_1D8D20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8D20.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8D20, 0x1D8DF8)
    
    SPLAT_BEGIN_SEG(data_1D8DF8, 0x1D8DF8, 0x1D8DF8, )
        Yay0_1D8DF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8DF8.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8DF8, 0x1D8F10)
    
    SPLAT_BEGIN_SEG(data_1D8F10, 0x1D8F10, 0x1D8F10, )
        Yay0_1D8F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D8F10.Yay0.o(.data);
    SPLAT_END_SEG(data_1D8F10, 0x1D9000)
    
    SPLAT_BEGIN_SEG(data_1D9000, 0x1D9000, 0x1D9000, )
        Yay0_1D9000_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D9000.Yay0.o(.data);
    SPLAT_END_SEG(data_1D9000, 0x1D9040)
    
    SPLAT_BEGIN_SEG(data_1D9040, 0x1D9040, 0x1D9040, )
        Yay0_1D9040_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D9040.Yay0.o(.data);
    SPLAT_END_SEG(data_1D9040, 0x1D9068)
    
    SPLAT_BEGIN_SEG(data_1D9068, 0x1D9068, 0x1D9068, )
        Yay0_1D9068_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D9068.Yay0.o(.data);
    SPLAT_END_SEG(data_1D9068, 0x1D9090)
    
    SPLAT_BEGIN_SEG(data_1D9090, 0x1D9090, 0x1D9090, )
        Yay0_1D9090_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D9090.Yay0.o(.data);
    SPLAT_END_SEG(data_1D9090, 0x1D90C0)
    
    SPLAT_BEGIN_SEG(data_1D90C0, 0x1D90C0, 0x1D90C0, )
        Yay0_1D90C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D90C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D90C0, 0x1D91E0)
    
    SPLAT_BEGIN_SEG(data_1D91E0, 0x1D91E0, 0x1D91E0, )
        Yay0_1D91E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D91E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1D91E0, 0x1D9218)
    
    SPLAT_BEGIN_SEG(data_1D9218, 0x1D9218, 0x1D9218, )
        Yay0_1D9218_Yay0 = .;
        BUILD_DIR/bin/Yay0/1D9218.Yay0.o(.data);
    SPLAT_END_SEG(data_1D9218, 0x1DA600)
    
    SPLAT_BEGIN_SEG(data_1DA600, 0x1DA600, 0x1DA600, )
        Yay0_1DA600_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DA600.Yay0.o(.data);
    SPLAT_END_SEG(data_1DA600, 0x1DA628)
    
    SPLAT_BEGIN_SEG(data_1DA628, 0x1DA628, 0x1DA628, )
        Yay0_1DA628_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DA628.Yay0.o(.data);
    SPLAT_END_SEG(data_1DA628, 0x1DBDF8)
    
    SPLAT_BEGIN_SEG(data_1DBDF8, 0x1DBDF8, 0x1DBDF8, )
        Yay0_1DBDF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DBDF8.Yay0.o(.data);
    SPLAT_END_SEG(data_1DBDF8, 0x1DD360)
    
    SPLAT_BEGIN_SEG(data_1DD360, 0x1DD360, 0x1DD360, )
        Yay0_1DD360_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD360.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD360, 0x1DD538)
    
    SPLAT_BEGIN_SEG(data_1DD538, 0x1DD538, 0x1DD538, )
        Yay0_1DD538_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD538.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD538, 0x1DD628)
    
    SPLAT_BEGIN_SEG(data_1DD628, 0x1DD628, 0x1DD628, )
        Yay0_1DD628_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD628.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD628, 0x1DD670)
    
    SPLAT_BEGIN_SEG(data_1DD670, 0x1DD670, 0x1DD670, )
        Yay0_1DD670_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD670.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD670, 0x1DD698)
    
    SPLAT_BEGIN_SEG(data_1DD698, 0x1DD698, 0x1DD698, )
        Yay0_1DD698_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD698.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD698, 0x1DD6C8)
    
    SPLAT_BEGIN_SEG(data_1DD6C8, 0x1DD6C8, 0x1DD6C8, )
        Yay0_1DD6C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD6C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD6C8, 0x1DD6F0)
    
    SPLAT_BEGIN_SEG(data_1DD6F0, 0x1DD6F0, 0x1DD6F0, )
        Yay0_1DD6F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD6F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD6F0, 0x1DD768)
    
    SPLAT_BEGIN_SEG(data_1DD768, 0x1DD768, 0x1DD768, )
        Yay0_1DD768_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD768.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD768, 0x1DD7E0)
    
    SPLAT_BEGIN_SEG(data_1DD7E0, 0x1DD7E0, 0x1DD7E0, )
        Yay0_1DD7E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD7E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD7E0, 0x1DD858)
    
    SPLAT_BEGIN_SEG(data_1DD858, 0x1DD858, 0x1DD858, )
        Yay0_1DD858_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD858.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD858, 0x1DD8D0)
    
    SPLAT_BEGIN_SEG(data_1DD8D0, 0x1DD8D0, 0x1DD8D0, )
        Yay0_1DD8D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD8D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD8D0, 0x1DD948)
    
    SPLAT_BEGIN_SEG(data_1DD948, 0x1DD948, 0x1DD948, )
        Yay0_1DD948_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD948.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD948, 0x1DD9C8)
    
    SPLAT_BEGIN_SEG(data_1DD9C8, 0x1DD9C8, 0x1DD9C8, )
        Yay0_1DD9C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DD9C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1DD9C8, 0x1DDB40)
    
    SPLAT_BEGIN_SEG(data_1DDB40, 0x1DDB40, 0x1DDB40, )
        Yay0_1DDB40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DDB40.Yay0.o(.data);
    SPLAT_END_SEG(data_1DDB40, 0x1DDB80)
    
    SPLAT_BEGIN_SEG(data_1DDB80, 0x1DDB80, 0x1DDB80, )
        Yay0_1DDB80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DDB80.Yay0.o(.data);
    SPLAT_END_SEG(data_1DDB80, 0x1DDBC8)
    
    SPLAT_BEGIN_SEG(data_1DDBC8, 0x1DDBC8, 0x1DDBC8, )
        Yay0_1DDBC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DDBC8.Yay0.o(.data);
    SPLAT_END_SEG(data_1DDBC8, 0x1DDC10)
    
    SPLAT_BEGIN_SEG(data_1DDC10, 0x1DDC10, 0x1DDC10, )
        Yay0_1DDC10_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DDC10.Yay0.o(.data);
    SPLAT_END_SEG(data_1DDC10, 0x1DE038)
    
    SPLAT_BEGIN_SEG(data_1DE038, 0x1DE038, 0x1DE038, )
        Yay0_1DE038_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DE038.Yay0.o(.data);
    SPLAT_END_SEG(data_1DE038, 0x1DE398)
    
    SPLAT_BEGIN_SEG(data_1DE398, 0x1DE398, 0x1DE398, )
        Yay0_1DE398_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DE398.Yay0.o(.data);
    SPLAT_END_SEG(data_1DE398, 0x1DF510)
    
    SPLAT_BEGIN_SEG(data_1DF510, 0x1DF510, 0x1DF510, )
        Yay0_1DF510_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DF510.Yay0.o(.data);
    SPLAT_END_SEG(data_1DF510, 0x1DF7E8)
    
    SPLAT_BEGIN_SEG(data_1DF7E8, 0x1DF7E8, 0x1DF7E8, )
        Yay0_1DF7E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DF7E8.Yay0.o(.data);
    SPLAT_END_SEG(data_1DF7E8, 0x1DFC88)
    
    SPLAT_BEGIN_SEG(data_1DFC88, 0x1DFC88, 0x1DFC88, )
        Yay0_1DFC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1DFC88.Yay0.o(.data);
    SPLAT_END_SEG(data_1DFC88, 0x1E05F8)
    
    SPLAT_BEGIN_SEG(data_1E05F8, 0x1E05F8, 0x1E05F8, )
        Yay0_1E05F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E05F8.Yay0.o(.data);
    SPLAT_END_SEG(data_1E05F8, 0x1E0648)
    
    SPLAT_BEGIN_SEG(data_1E0648, 0x1E0648, 0x1E0648, )
        Yay0_1E0648_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E0648.Yay0.o(.data);
    SPLAT_END_SEG(data_1E0648, 0x1E09C8)
    
    SPLAT_BEGIN_SEG(data_1E09C8, 0x1E09C8, 0x1E09C8, )
        Yay0_1E09C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E09C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1E09C8, 0x1E0D38)
    
    SPLAT_BEGIN_SEG(data_1E0D38, 0x1E0D38, 0x1E0D38, )
        Yay0_1E0D38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E0D38.Yay0.o(.data);
    SPLAT_END_SEG(data_1E0D38, 0x1E0EA8)
    
    SPLAT_BEGIN_SEG(data_1E0EA8, 0x1E0EA8, 0x1E0EA8, )
        Yay0_1E0EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E0EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_1E0EA8, 0x1E1018)
    
    SPLAT_BEGIN_SEG(data_1E1018, 0x1E1018, 0x1E1018, )
        Yay0_1E1018_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E1018.Yay0.o(.data);
    SPLAT_END_SEG(data_1E1018, 0x1E1500)
    
    SPLAT_BEGIN_SEG(data_1E1500, 0x1E1500, 0x1E1500, )
        Yay0_1E1500_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E1500.Yay0.o(.data);
    SPLAT_END_SEG(data_1E1500, 0x1E1A20)
    
    SPLAT_BEGIN_SEG(data_1E1A20, 0x1E1A20, 0x1E1A20, )
        Yay0_1E1A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E1A20.Yay0.o(.data);
    SPLAT_END_SEG(data_1E1A20, 0x1E1F30)
    
    SPLAT_BEGIN_SEG(data_1E1F30, 0x1E1F30, 0x1E1F30, )
        Yay0_1E1F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E1F30.Yay0.o(.data);
    SPLAT_END_SEG(data_1E1F30, 0x1E2158)
    
    SPLAT_BEGIN_SEG(data_1E2158, 0x1E2158, 0x1E2158, )
        Yay0_1E2158_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E2158.Yay0.o(.data);
    SPLAT_END_SEG(data_1E2158, 0x1E2418)
    
    SPLAT_BEGIN_SEG(data_1E2418, 0x1E2418, 0x1E2418, )
        Yay0_1E2418_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E2418.Yay0.o(.data);
    SPLAT_END_SEG(data_1E2418, 0x1E27C8)
    
    SPLAT_BEGIN_SEG(data_1E27C8, 0x1E27C8, 0x1E27C8, )
        Yay0_1E27C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E27C8.Yay0.o(.data);
    SPLAT_END_SEG(data_1E27C8, 0x1E2B80)
    
    SPLAT_BEGIN_SEG(data_1E2B80, 0x1E2B80, 0x1E2B80, )
        Yay0_1E2B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E2B80.Yay0.o(.data);
    SPLAT_END_SEG(data_1E2B80, 0x1E2F40)
    
    SPLAT_BEGIN_SEG(data_1E2F40, 0x1E2F40, 0x1E2F40, )
        Yay0_1E2F40_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E2F40.Yay0.o(.data);
    SPLAT_END_SEG(data_1E2F40, 0x1E3358)
    
    SPLAT_BEGIN_SEG(data_1E3358, 0x1E3358, 0x1E3358, )
        Yay0_1E3358_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E3358.Yay0.o(.data);
    SPLAT_END_SEG(data_1E3358, 0x1E37D0)
    
    SPLAT_BEGIN_SEG(data_1E37D0, 0x1E37D0, 0x1E37D0, )
        Yay0_1E37D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E37D0.Yay0.o(.data);
    SPLAT_END_SEG(data_1E37D0, 0x1E3C88)
    
    SPLAT_BEGIN_SEG(data_1E3C88, 0x1E3C88, 0x1E3C88, )
        Yay0_1E3C88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E3C88.Yay0.o(.data);
    SPLAT_END_SEG(data_1E3C88, 0x1E3E88)
    
    SPLAT_BEGIN_SEG(data_1E3E88, 0x1E3E88, 0x1E3E88, )
        Yay0_1E3E88_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E3E88.Yay0.o(.data);
    SPLAT_END_SEG(data_1E3E88, 0x1E41E0)
    
    SPLAT_BEGIN_SEG(data_1E41E0, 0x1E41E0, 0x1E41E0, )
        Yay0_1E41E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E41E0.Yay0.o(.data);
    SPLAT_END_SEG(data_1E41E0, 0x1E4580)
    
    SPLAT_BEGIN_SEG(data_1E4580, 0x1E4580, 0x1E4580, )
        Yay0_1E4580_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E4580.Yay0.o(.data);
    SPLAT_END_SEG(data_1E4580, 0x1E49B0)
    
    SPLAT_BEGIN_SEG(data_1E49B0, 0x1E49B0, 0x1E49B0, )
        Yay0_1E49B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E49B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1E49B0, 0x1E4E08)
    
    SPLAT_BEGIN_SEG(data_1E4E08, 0x1E4E08, 0x1E4E08, )
        Yay0_1E4E08_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E4E08.Yay0.o(.data);
    SPLAT_END_SEG(data_1E4E08, 0x1E52B0)
    
    SPLAT_BEGIN_SEG(data_1E52B0, 0x1E52B0, 0x1E52B0, )
        Yay0_1E52B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E52B0.Yay0.o(.data);
    SPLAT_END_SEG(data_1E52B0, 0x1E5788)
    
    SPLAT_BEGIN_SEG(data_1E5788, 0x1E5788, 0x1E5788, )
        Yay0_1E5788_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E5788.Yay0.o(.data);
    SPLAT_END_SEG(data_1E5788, 0x1E5C60)
    
    SPLAT_BEGIN_SEG(data_1E5C60, 0x1E5C60, 0x1E5C60, )
        Yay0_1E5C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E5C60.Yay0.o(.data);
    SPLAT_END_SEG(data_1E5C60, 0x1E6200)
    
    SPLAT_BEGIN_SEG(data_1E6200, 0x1E6200, 0x1E6200, )
        Yay0_1E6200_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E6200.Yay0.o(.data);
    SPLAT_END_SEG(data_1E6200, 0x1E67F0)
    
    SPLAT_BEGIN_SEG(data_1E67F0, 0x1E67F0, 0x1E67F0, )
        Yay0_1E67F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E67F0.Yay0.o(.data);
    SPLAT_END_SEG(data_1E67F0, 0x1E6DB0)
    
    SPLAT_BEGIN_SEG(data_1E6DB0, 0x1E6DB0, 0x1E6DB0, )
        Yay0_1E6DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E6DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_1E6DB0, 0x1E6DE8)
    
    SPLAT_BEGIN_SEG(data_1E6DE8, 0x1E6DE8, 0x1E6DE8, )
        Yay0_1E6DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E6DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_1E6DE8, 0x1E6E20)
    
    SPLAT_BEGIN_SEG(data_1E6E20, 0x1E6E20, 0x1E6E20, )
        Yay0_1E6E20_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E6E20.Yay0.o(.data);
    SPLAT_END_SEG(data_1E6E20, 0x1E6F38)
    
    SPLAT_BEGIN_SEG(data_1E6F38, 0x1E6F38, 0x1E6F38, )
        Yay0_1E6F38_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E6F38.Yay0.o(.data);
    SPLAT_END_SEG(data_1E6F38, 0x1E7190)
    
    SPLAT_BEGIN_SEG(data_1E7190, 0x1E7190, 0x1E7190, )
        Yay0_1E7190_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E7190.Yay0.o(.data);
    SPLAT_END_SEG(data_1E7190, 0x1E7428)
    
    SPLAT_BEGIN_SEG(data_1E7428, 0x1E7428, 0x1E7428, )
        Yay0_1E7428_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E7428.Yay0.o(.data);
    SPLAT_END_SEG(data_1E7428, 0x1E7798)
    
    SPLAT_BEGIN_SEG(data_1E7798, 0x1E7798, 0x1E7798, )
        Yay0_1E7798_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E7798.Yay0.o(.data);
    SPLAT_END_SEG(data_1E7798, 0x1E7C60)
    
    SPLAT_BEGIN_SEG(data_1E7C60, 0x1E7C60, 0x1E7C60, )
        Yay0_1E7C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E7C60.Yay0.o(.data);
    SPLAT_END_SEG(data_1E7C60, 0x1E7F90)
    
    SPLAT_BEGIN_SEG(data_1E7F90, 0x1E7F90, 0x1E7F90, )
        Yay0_1E7F90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E7F90.Yay0.o(.data);
    SPLAT_END_SEG(data_1E7F90, 0x1E8420)
    
    SPLAT_BEGIN_SEG(data_1E8420, 0x1E8420, 0x1E8420, )
        Yay0_1E8420_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E8420.Yay0.o(.data);
    SPLAT_END_SEG(data_1E8420, 0x1E8950)
    
    SPLAT_BEGIN_SEG(data_1E8950, 0x1E8950, 0x1E8950, )
        Yay0_1E8950_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E8950.Yay0.o(.data);
    SPLAT_END_SEG(data_1E8950, 0x1E8B90)
    
    SPLAT_BEGIN_SEG(data_1E8B90, 0x1E8B90, 0x1E8B90, )
        Yay0_1E8B90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E8B90.Yay0.o(.data);
    SPLAT_END_SEG(data_1E8B90, 0x1E8D28)
    
    SPLAT_BEGIN_SEG(data_1E8D28, 0x1E8D28, 0x1E8D28, )
        Yay0_1E8D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E8D28.Yay0.o(.data);
    SPLAT_END_SEG(data_1E8D28, 0x1E8D90)
    
    SPLAT_BEGIN_SEG(data_1E8D90, 0x1E8D90, 0x1E8D90, )
        Yay0_1E8D90_Yay0 = .;
        BUILD_DIR/bin/Yay0/1E8D90.Yay0.o(.data);
    SPLAT_END_SEG(data_1E8D90, 0x1EDF08)
    
    SPLAT_BEGIN_SEG(data_1EDF08, 0x1EDF08, 0x1EDF08, )
        Yay0_1EDF08_Yay0 = .;
        BUILD_DIR/bin/Yay0/1EDF08.Yay0.o(.data);
    SPLAT_END_SEG(data_1EDF08, 0x1F1CB8)
    
    SPLAT_BEGIN_SEG(data_1F1CB8, 0x1F1CB8, 0x1F1CB8, )
        Yay0_1F1CB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1F1CB8.Yay0.o(.data);
    SPLAT_END_SEG(data_1F1CB8, 0x1F29D8)
    
    SPLAT_BEGIN_SEG(data_1F29D8, 0x1F29D8, 0x1F29D8, )
        Yay0_1F29D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1F29D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1F29D8, 0x1F58C0)
    
    SPLAT_BEGIN_SEG(data_1F58C0, 0x1F58C0, 0x1F58C0, )
        Yay0_1F58C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1F58C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1F58C0, 0x1FB368)
    
    SPLAT_BEGIN_SEG(data_1FB368, 0x1FB368, 0x1FB368, )
        Yay0_1FB368_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FB368.Yay0.o(.data);
    SPLAT_END_SEG(data_1FB368, 0x1FB4C0)
    
    SPLAT_BEGIN_SEG(data_1FB4C0, 0x1FB4C0, 0x1FB4C0, )
        Yay0_1FB4C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FB4C0.Yay0.o(.data);
    SPLAT_END_SEG(data_1FB4C0, 0x1FBBB8)
    
    SPLAT_BEGIN_SEG(data_1FBBB8, 0x1FBBB8, 0x1FBBB8, )
        Yay0_1FBBB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FBBB8.Yay0.o(.data);
    SPLAT_END_SEG(data_1FBBB8, 0x1FBDF8)
    
    SPLAT_BEGIN_SEG(data_1FBDF8, 0x1FBDF8, 0x1FBDF8, )
        Yay0_1FBDF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FBDF8.Yay0.o(.data);
    SPLAT_END_SEG(data_1FBDF8, 0x1FBFF0)
    
    SPLAT_BEGIN_SEG(data_1FBFF0, 0x1FBFF0, 0x1FBFF0, )
        Yay0_1FBFF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FBFF0.Yay0.o(.data);
    SPLAT_END_SEG(data_1FBFF0, 0x1FC678)
    
    SPLAT_BEGIN_SEG(data_1FC678, 0x1FC678, 0x1FC678, )
        Yay0_1FC678_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FC678.Yay0.o(.data);
    SPLAT_END_SEG(data_1FC678, 0x1FCD58)
    
    SPLAT_BEGIN_SEG(data_1FCD58, 0x1FCD58, 0x1FCD58, )
        Yay0_1FCD58_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FCD58.Yay0.o(.data);
    SPLAT_END_SEG(data_1FCD58, 0x1FD100)
    
    SPLAT_BEGIN_SEG(data_1FD100, 0x1FD100, 0x1FD100, )
        Yay0_1FD100_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FD100.Yay0.o(.data);
    SPLAT_END_SEG(data_1FD100, 0x1FD480)
    
    SPLAT_BEGIN_SEG(data_1FD480, 0x1FD480, 0x1FD480, )
        Yay0_1FD480_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FD480.Yay0.o(.data);
    SPLAT_END_SEG(data_1FD480, 0x1FE5D8)
    
    SPLAT_BEGIN_SEG(data_1FE5D8, 0x1FE5D8, 0x1FE5D8, )
        Yay0_1FE5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FE5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_1FE5D8, 0x1FEBD0)
    
    SPLAT_BEGIN_SEG(data_1FEBD0, 0x1FEBD0, 0x1FEBD0, )
        Yay0_1FEBD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FEBD0.Yay0.o(.data);
    SPLAT_END_SEG(data_1FEBD0, 0x1FFAD8)
    
    SPLAT_BEGIN_SEG(data_1FFAD8, 0x1FFAD8, 0x1FFAD8, )
        Yay0_1FFAD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/1FFAD8.Yay0.o(.data);
    SPLAT_END_SEG(data_1FFAD8, 0x202888)
    
    SPLAT_BEGIN_SEG(data_202888, 0x202888, 0x202888, )
        Yay0_202888_Yay0 = .;
        BUILD_DIR/bin/Yay0/202888.Yay0.o(.data);
    SPLAT_END_SEG(data_202888, 0x2034B8)
    
    SPLAT_BEGIN_SEG(data_2034B8, 0x2034B8, 0x2034B8, )
        Yay0_2034B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2034B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2034B8, 0x203840)
    
    SPLAT_BEGIN_SEG(data_203840, 0x203840, 0x203840, )
        Yay0_203840_Yay0 = .;
        BUILD_DIR/bin/Yay0/203840.Yay0.o(.data);
    SPLAT_END_SEG(data_203840, 0x203A38)
    
    SPLAT_BEGIN_SEG(data_203A38, 0x203A38, 0x203A38, )
        Yay0_203A38_Yay0 = .;
        BUILD_DIR/bin/Yay0/203A38.Yay0.o(.data);
    SPLAT_END_SEG(data_203A38, 0x203C58)
    
    SPLAT_BEGIN_SEG(data_203C58, 0x203C58, 0x203C58, )
        Yay0_203C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/203C58.Yay0.o(.data);
    SPLAT_END_SEG(data_203C58, 0x203E78)
    
    SPLAT_BEGIN_SEG(data_203E78, 0x203E78, 0x203E78, )
        Yay0_203E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/203E78.Yay0.o(.data);
    SPLAT_END_SEG(data_203E78, 0x204098)
    
    SPLAT_BEGIN_SEG(data_204098, 0x204098, 0x204098, )
        Yay0_204098_Yay0 = .;
        BUILD_DIR/bin/Yay0/204098.Yay0.o(.data);
    SPLAT_END_SEG(data_204098, 0x2042B8)
    
    SPLAT_BEGIN_SEG(data_2042B8, 0x2042B8, 0x2042B8, )
        Yay0_2042B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2042B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2042B8, 0x2044E0)
    
    SPLAT_BEGIN_SEG(data_2044E0, 0x2044E0, 0x2044E0, )
        Yay0_2044E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2044E0.Yay0.o(.data);
    SPLAT_END_SEG(data_2044E0, 0x204700)
    
    SPLAT_BEGIN_SEG(data_204700, 0x204700, 0x204700, )
        Yay0_204700_Yay0 = .;
        BUILD_DIR/bin/Yay0/204700.Yay0.o(.data);
    SPLAT_END_SEG(data_204700, 0x204928)
    
    SPLAT_BEGIN_SEG(data_204928, 0x204928, 0x204928, )
        Yay0_204928_Yay0 = .;
        BUILD_DIR/bin/Yay0/204928.Yay0.o(.data);
    SPLAT_END_SEG(data_204928, 0x204B50)
    
    SPLAT_BEGIN_SEG(data_204B50, 0x204B50, 0x204B50, )
        Yay0_204B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/204B50.Yay0.o(.data);
    SPLAT_END_SEG(data_204B50, 0x204D50)
    
    SPLAT_BEGIN_SEG(data_204D50, 0x204D50, 0x204D50, )
        Yay0_204D50_Yay0 = .;
        BUILD_DIR/bin/Yay0/204D50.Yay0.o(.data);
    SPLAT_END_SEG(data_204D50, 0x204F18)
    
    SPLAT_BEGIN_SEG(data_204F18, 0x204F18, 0x204F18, )
        Yay0_204F18_Yay0 = .;
        BUILD_DIR/bin/Yay0/204F18.Yay0.o(.data);
    SPLAT_END_SEG(data_204F18, 0x205110)
    
    SPLAT_BEGIN_SEG(data_205110, 0x205110, 0x205110, )
        Yay0_205110_Yay0 = .;
        BUILD_DIR/bin/Yay0/205110.Yay0.o(.data);
    SPLAT_END_SEG(data_205110, 0x205358)
    
    SPLAT_BEGIN_SEG(data_205358, 0x205358, 0x205358, )
        Yay0_205358_Yay0 = .;
        BUILD_DIR/bin/Yay0/205358.Yay0.o(.data);
    SPLAT_END_SEG(data_205358, 0x205558)
    
    SPLAT_BEGIN_SEG(data_205558, 0x205558, 0x205558, )
        Yay0_205558_Yay0 = .;
        BUILD_DIR/bin/Yay0/205558.Yay0.o(.data);
    SPLAT_END_SEG(data_205558, 0x2056B8)
    
    SPLAT_BEGIN_SEG(data_2056B8, 0x2056B8, 0x2056B8, )
        Yay0_2056B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2056B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2056B8, 0x205AE0)
    
    SPLAT_BEGIN_SEG(data_205AE0, 0x205AE0, 0x205AE0, )
        Yay0_205AE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/205AE0.Yay0.o(.data);
    SPLAT_END_SEG(data_205AE0, 0x2064A8)
    
    SPLAT_BEGIN_SEG(data_2064A8, 0x2064A8, 0x2064A8, )
        Yay0_2064A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2064A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2064A8, 0x207208)
    
    SPLAT_BEGIN_SEG(data_207208, 0x207208, 0x207208, )
        Yay0_207208_Yay0 = .;
        BUILD_DIR/bin/Yay0/207208.Yay0.o(.data);
    SPLAT_END_SEG(data_207208, 0x207BC0)
    
    SPLAT_BEGIN_SEG(data_207BC0, 0x207BC0, 0x207BC0, )
        Yay0_207BC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/207BC0.Yay0.o(.data);
    SPLAT_END_SEG(data_207BC0, 0x208820)
    
    SPLAT_BEGIN_SEG(data_208820, 0x208820, 0x208820, )
        Yay0_208820_Yay0 = .;
        BUILD_DIR/bin/Yay0/208820.Yay0.o(.data);
    SPLAT_END_SEG(data_208820, 0x209400)
    
    SPLAT_BEGIN_SEG(data_209400, 0x209400, 0x209400, )
        Yay0_209400_Yay0 = .;
        BUILD_DIR/bin/Yay0/209400.Yay0.o(.data);
    SPLAT_END_SEG(data_209400, 0x20AF50)
    
    SPLAT_BEGIN_SEG(data_20AF50, 0x20AF50, 0x20AF50, )
        Yay0_20AF50_Yay0 = .;
        BUILD_DIR/bin/Yay0/20AF50.Yay0.o(.data);
    SPLAT_END_SEG(data_20AF50, 0x20CB90)
    
    SPLAT_BEGIN_SEG(data_20CB90, 0x20CB90, 0x20CB90, )
        Yay0_20CB90_Yay0 = .;
        BUILD_DIR/bin/Yay0/20CB90.Yay0.o(.data);
    SPLAT_END_SEG(data_20CB90, 0x20E5B0)
    
    SPLAT_BEGIN_SEG(data_20E5B0, 0x20E5B0, 0x20E5B0, )
        Yay0_20E5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/20E5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_20E5B0, 0x20F6F8)
    
    SPLAT_BEGIN_SEG(data_20F6F8, 0x20F6F8, 0x20F6F8, )
        Yay0_20F6F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/20F6F8.Yay0.o(.data);
    SPLAT_END_SEG(data_20F6F8, 0x210DF0)
    
    SPLAT_BEGIN_SEG(data_210DF0, 0x210DF0, 0x210DF0, )
        Yay0_210DF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/210DF0.Yay0.o(.data);
    SPLAT_END_SEG(data_210DF0, 0x210F20)
    
    SPLAT_BEGIN_SEG(data_210F20, 0x210F20, 0x210F20, )
        Yay0_210F20_Yay0 = .;
        BUILD_DIR/bin/Yay0/210F20.Yay0.o(.data);
    SPLAT_END_SEG(data_210F20, 0x211058)
    
    SPLAT_BEGIN_SEG(data_211058, 0x211058, 0x211058, )
        Yay0_211058_Yay0 = .;
        BUILD_DIR/bin/Yay0/211058.Yay0.o(.data);
    SPLAT_END_SEG(data_211058, 0x211198)
    
    SPLAT_BEGIN_SEG(data_211198, 0x211198, 0x211198, )
        Yay0_211198_Yay0 = .;
        BUILD_DIR/bin/Yay0/211198.Yay0.o(.data);
    SPLAT_END_SEG(data_211198, 0x2112D8)
    
    SPLAT_BEGIN_SEG(data_2112D8, 0x2112D8, 0x2112D8, )
        Yay0_2112D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2112D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2112D8, 0x2113B8)
    
    SPLAT_BEGIN_SEG(data_2113B8, 0x2113B8, 0x2113B8, )
        Yay0_2113B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2113B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2113B8, 0x211498)
    
    SPLAT_BEGIN_SEG(data_211498, 0x211498, 0x211498, )
        Yay0_211498_Yay0 = .;
        BUILD_DIR/bin/Yay0/211498.Yay0.o(.data);
    SPLAT_END_SEG(data_211498, 0x211580)
    
    SPLAT_BEGIN_SEG(data_211580, 0x211580, 0x211580, )
        Yay0_211580_Yay0 = .;
        BUILD_DIR/bin/Yay0/211580.Yay0.o(.data);
    SPLAT_END_SEG(data_211580, 0x211670)
    
    SPLAT_BEGIN_SEG(data_211670, 0x211670, 0x211670, )
        Yay0_211670_Yay0 = .;
        BUILD_DIR/bin/Yay0/211670.Yay0.o(.data);
    SPLAT_END_SEG(data_211670, 0x211768)
    
    SPLAT_BEGIN_SEG(data_211768, 0x211768, 0x211768, )
        Yay0_211768_Yay0 = .;
        BUILD_DIR/bin/Yay0/211768.Yay0.o(.data);
    SPLAT_END_SEG(data_211768, 0x211860)
    
    SPLAT_BEGIN_SEG(data_211860, 0x211860, 0x211860, )
        Yay0_211860_Yay0 = .;
        BUILD_DIR/bin/Yay0/211860.Yay0.o(.data);
    SPLAT_END_SEG(data_211860, 0x211910)
    
    SPLAT_BEGIN_SEG(data_211910, 0x211910, 0x211910, )
        Yay0_211910_Yay0 = .;
        BUILD_DIR/bin/Yay0/211910.Yay0.o(.data);
    SPLAT_END_SEG(data_211910, 0x2119D8)
    
    SPLAT_BEGIN_SEG(data_2119D8, 0x2119D8, 0x2119D8, )
        Yay0_2119D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2119D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2119D8, 0x211A58)
    
    SPLAT_BEGIN_SEG(data_211A58, 0x211A58, 0x211A58, )
        Yay0_211A58_Yay0 = .;
        BUILD_DIR/bin/Yay0/211A58.Yay0.o(.data);
    SPLAT_END_SEG(data_211A58, 0x212920)
    
    SPLAT_BEGIN_SEG(data_212920, 0x212920, 0x212920, )
        Yay0_212920_Yay0 = .;
        BUILD_DIR/bin/Yay0/212920.Yay0.o(.data);
    SPLAT_END_SEG(data_212920, 0x212B68)
    
    SPLAT_BEGIN_SEG(data_212B68, 0x212B68, 0x212B68, )
        Yay0_212B68_Yay0 = .;
        BUILD_DIR/bin/Yay0/212B68.Yay0.o(.data);
    SPLAT_END_SEG(data_212B68, 0x212F98)
    
    SPLAT_BEGIN_SEG(data_212F98, 0x212F98, 0x212F98, )
        Yay0_212F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/212F98.Yay0.o(.data);
    SPLAT_END_SEG(data_212F98, 0x213448)
    
    SPLAT_BEGIN_SEG(data_213448, 0x213448, 0x213448, )
        Yay0_213448_Yay0 = .;
        BUILD_DIR/bin/Yay0/213448.Yay0.o(.data);
    SPLAT_END_SEG(data_213448, 0x214648)
    
    SPLAT_BEGIN_SEG(data_214648, 0x214648, 0x214648, )
        Yay0_214648_Yay0 = .;
        BUILD_DIR/bin/Yay0/214648.Yay0.o(.data);
    SPLAT_END_SEG(data_214648, 0x214EA8)
    
    SPLAT_BEGIN_SEG(data_214EA8, 0x214EA8, 0x214EA8, )
        Yay0_214EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/214EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_214EA8, 0x215608)
    
    SPLAT_BEGIN_SEG(data_215608, 0x215608, 0x215608, )
        Yay0_215608_Yay0 = .;
        BUILD_DIR/bin/Yay0/215608.Yay0.o(.data);
    SPLAT_END_SEG(data_215608, 0x215DE0)
    
    SPLAT_BEGIN_SEG(data_215DE0, 0x215DE0, 0x215DE0, )
        Yay0_215DE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/215DE0.Yay0.o(.data);
    SPLAT_END_SEG(data_215DE0, 0x216628)
    
    SPLAT_BEGIN_SEG(data_216628, 0x216628, 0x216628, )
        Yay0_216628_Yay0 = .;
        BUILD_DIR/bin/Yay0/216628.Yay0.o(.data);
    SPLAT_END_SEG(data_216628, 0x216C88)
    
    SPLAT_BEGIN_SEG(data_216C88, 0x216C88, 0x216C88, )
        Yay0_216C88_Yay0 = .;
        BUILD_DIR/bin/Yay0/216C88.Yay0.o(.data);
    SPLAT_END_SEG(data_216C88, 0x2172B0)
    
    SPLAT_BEGIN_SEG(data_2172B0, 0x2172B0, 0x2172B0, )
        Yay0_2172B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2172B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2172B0, 0x217A00)
    
    SPLAT_BEGIN_SEG(data_217A00, 0x217A00, 0x217A00, )
        Yay0_217A00_Yay0 = .;
        BUILD_DIR/bin/Yay0/217A00.Yay0.o(.data);
    SPLAT_END_SEG(data_217A00, 0x217D48)
    
    SPLAT_BEGIN_SEG(data_217D48, 0x217D48, 0x217D48, )
        Yay0_217D48_Yay0 = .;
        BUILD_DIR/bin/Yay0/217D48.Yay0.o(.data);
    SPLAT_END_SEG(data_217D48, 0x218A88)
    
    SPLAT_BEGIN_SEG(data_218A88, 0x218A88, 0x218A88, )
        Yay0_218A88_Yay0 = .;
        BUILD_DIR/bin/Yay0/218A88.Yay0.o(.data);
    SPLAT_END_SEG(data_218A88, 0x219220)
    
    SPLAT_BEGIN_SEG(data_219220, 0x219220, 0x219220, )
        Yay0_219220_Yay0 = .;
        BUILD_DIR/bin/Yay0/219220.Yay0.o(.data);
    SPLAT_END_SEG(data_219220, 0x2199C0)
    
    SPLAT_BEGIN_SEG(data_2199C0, 0x2199C0, 0x2199C0, )
        Yay0_2199C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2199C0.Yay0.o(.data);
    SPLAT_END_SEG(data_2199C0, 0x21A178)
    
    SPLAT_BEGIN_SEG(data_21A178, 0x21A178, 0x21A178, )
        Yay0_21A178_Yay0 = .;
        BUILD_DIR/bin/Yay0/21A178.Yay0.o(.data);
    SPLAT_END_SEG(data_21A178, 0x21A960)
    
    SPLAT_BEGIN_SEG(data_21A960, 0x21A960, 0x21A960, )
        Yay0_21A960_Yay0 = .;
        BUILD_DIR/bin/Yay0/21A960.Yay0.o(.data);
    SPLAT_END_SEG(data_21A960, 0x21B158)
    
    SPLAT_BEGIN_SEG(data_21B158, 0x21B158, 0x21B158, )
        Yay0_21B158_Yay0 = .;
        BUILD_DIR/bin/Yay0/21B158.Yay0.o(.data);
    SPLAT_END_SEG(data_21B158, 0x21B940)
    
    SPLAT_BEGIN_SEG(data_21B940, 0x21B940, 0x21B940, )
        Yay0_21B940_Yay0 = .;
        BUILD_DIR/bin/Yay0/21B940.Yay0.o(.data);
    SPLAT_END_SEG(data_21B940, 0x21C150)
    
    SPLAT_BEGIN_SEG(data_21C150, 0x21C150, 0x21C150, )
        Yay0_21C150_Yay0 = .;
        BUILD_DIR/bin/Yay0/21C150.Yay0.o(.data);
    SPLAT_END_SEG(data_21C150, 0x21C918)
    
    SPLAT_BEGIN_SEG(data_21C918, 0x21C918, 0x21C918, )
        Yay0_21C918_Yay0 = .;
        BUILD_DIR/bin/Yay0/21C918.Yay0.o(.data);
    SPLAT_END_SEG(data_21C918, 0x21D370)
    
    SPLAT_BEGIN_SEG(data_21D370, 0x21D370, 0x21D370, )
        Yay0_21D370_Yay0 = .;
        BUILD_DIR/bin/Yay0/21D370.Yay0.o(.data);
    SPLAT_END_SEG(data_21D370, 0x21D5B8)
    
    SPLAT_BEGIN_SEG(data_21D5B8, 0x21D5B8, 0x21D5B8, )
        Yay0_21D5B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/21D5B8.Yay0.o(.data);
    SPLAT_END_SEG(data_21D5B8, 0x21DA30)
    
    SPLAT_BEGIN_SEG(data_21DA30, 0x21DA30, 0x21DA30, )
        Yay0_21DA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/21DA30.Yay0.o(.data);
    SPLAT_END_SEG(data_21DA30, 0x21F228)
    
    SPLAT_BEGIN_SEG(data_21F228, 0x21F228, 0x21F228, )
        Yay0_21F228_Yay0 = .;
        BUILD_DIR/bin/Yay0/21F228.Yay0.o(.data);
    SPLAT_END_SEG(data_21F228, 0x220018)
    
    SPLAT_BEGIN_SEG(data_220018, 0x220018, 0x220018, )
        Yay0_220018_Yay0 = .;
        BUILD_DIR/bin/Yay0/220018.Yay0.o(.data);
    SPLAT_END_SEG(data_220018, 0x220E00)
    
    SPLAT_BEGIN_SEG(data_220E00, 0x220E00, 0x220E00, )
        Yay0_220E00_Yay0 = .;
        BUILD_DIR/bin/Yay0/220E00.Yay0.o(.data);
    SPLAT_END_SEG(data_220E00, 0x221C00)
    
    SPLAT_BEGIN_SEG(data_221C00, 0x221C00, 0x221C00, )
        Yay0_221C00_Yay0 = .;
        BUILD_DIR/bin/Yay0/221C00.Yay0.o(.data);
    SPLAT_END_SEG(data_221C00, 0x222A20)
    
    SPLAT_BEGIN_SEG(data_222A20, 0x222A20, 0x222A20, )
        Yay0_222A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/222A20.Yay0.o(.data);
    SPLAT_END_SEG(data_222A20, 0x223840)
    
    SPLAT_BEGIN_SEG(data_223840, 0x223840, 0x223840, )
        Yay0_223840_Yay0 = .;
        BUILD_DIR/bin/Yay0/223840.Yay0.o(.data);
    SPLAT_END_SEG(data_223840, 0x224590)
    
    SPLAT_BEGIN_SEG(data_224590, 0x224590, 0x224590, )
        Yay0_224590_Yay0 = .;
        BUILD_DIR/bin/Yay0/224590.Yay0.o(.data);
    SPLAT_END_SEG(data_224590, 0x225338)
    
    SPLAT_BEGIN_SEG(data_225338, 0x225338, 0x225338, )
        Yay0_225338_Yay0 = .;
        BUILD_DIR/bin/Yay0/225338.Yay0.o(.data);
    SPLAT_END_SEG(data_225338, 0x2260C8)
    
    SPLAT_BEGIN_SEG(data_2260C8, 0x2260C8, 0x2260C8, )
        Yay0_2260C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2260C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2260C8, 0x226328)
    
    SPLAT_BEGIN_SEG(data_226328, 0x226328, 0x226328, )
        Yay0_226328_Yay0 = .;
        BUILD_DIR/bin/Yay0/226328.Yay0.o(.data);
    SPLAT_END_SEG(data_226328, 0x2265C8)
    
    SPLAT_BEGIN_SEG(data_2265C8, 0x2265C8, 0x2265C8, )
        Yay0_2265C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2265C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2265C8, 0x2268B0)
    
    SPLAT_BEGIN_SEG(data_2268B0, 0x2268B0, 0x2268B0, )
        Yay0_2268B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2268B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2268B0, 0x226CB8)
    
    SPLAT_BEGIN_SEG(data_226CB8, 0x226CB8, 0x226CB8, )
        Yay0_226CB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/226CB8.Yay0.o(.data);
    SPLAT_END_SEG(data_226CB8, 0x227188)
    
    SPLAT_BEGIN_SEG(data_227188, 0x227188, 0x227188, )
        Yay0_227188_Yay0 = .;
        BUILD_DIR/bin/Yay0/227188.Yay0.o(.data);
    SPLAT_END_SEG(data_227188, 0x2276F0)
    
    SPLAT_BEGIN_SEG(data_2276F0, 0x2276F0, 0x2276F0, )
        Yay0_2276F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2276F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2276F0, 0x227C20)
    
    SPLAT_BEGIN_SEG(data_227C20, 0x227C20, 0x227C20, )
        Yay0_227C20_Yay0 = .;
        BUILD_DIR/bin/Yay0/227C20.Yay0.o(.data);
    SPLAT_END_SEG(data_227C20, 0x228180)
    
    SPLAT_BEGIN_SEG(data_228180, 0x228180, 0x228180, )
        Yay0_228180_Yay0 = .;
        BUILD_DIR/bin/Yay0/228180.Yay0.o(.data);
    SPLAT_END_SEG(data_228180, 0x2285C8)
    
    SPLAT_BEGIN_SEG(data_2285C8, 0x2285C8, 0x2285C8, )
        Yay0_2285C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2285C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2285C8, 0x228A70)
    
    SPLAT_BEGIN_SEG(data_228A70, 0x228A70, 0x228A70, )
        Yay0_228A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/228A70.Yay0.o(.data);
    SPLAT_END_SEG(data_228A70, 0x228FE8)
    
    SPLAT_BEGIN_SEG(data_228FE8, 0x228FE8, 0x228FE8, )
        Yay0_228FE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/228FE8.Yay0.o(.data);
    SPLAT_END_SEG(data_228FE8, 0x229590)
    
    SPLAT_BEGIN_SEG(data_229590, 0x229590, 0x229590, )
        Yay0_229590_Yay0 = .;
        BUILD_DIR/bin/Yay0/229590.Yay0.o(.data);
    SPLAT_END_SEG(data_229590, 0x229B40)
    
    SPLAT_BEGIN_SEG(data_229B40, 0x229B40, 0x229B40, )
        Yay0_229B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/229B40.Yay0.o(.data);
    SPLAT_END_SEG(data_229B40, 0x22A128)
    
    SPLAT_BEGIN_SEG(data_22A128, 0x22A128, 0x22A128, )
        Yay0_22A128_Yay0 = .;
        BUILD_DIR/bin/Yay0/22A128.Yay0.o(.data);
    SPLAT_END_SEG(data_22A128, 0x22B418)
    
    SPLAT_BEGIN_SEG(data_22B418, 0x22B418, 0x22B418, )
        Yay0_22B418_Yay0 = .;
        BUILD_DIR/bin/Yay0/22B418.Yay0.o(.data);
    SPLAT_END_SEG(data_22B418, 0x22C638)
    
    SPLAT_BEGIN_SEG(data_22C638, 0x22C638, 0x22C638, )
        Yay0_22C638_Yay0 = .;
        BUILD_DIR/bin/Yay0/22C638.Yay0.o(.data);
    SPLAT_END_SEG(data_22C638, 0x22CD08)
    
    SPLAT_BEGIN_SEG(data_22CD08, 0x22CD08, 0x22CD08, )
        Yay0_22CD08_Yay0 = .;
        BUILD_DIR/bin/Yay0/22CD08.Yay0.o(.data);
    SPLAT_END_SEG(data_22CD08, 0x22D0C8)
    
    SPLAT_BEGIN_SEG(data_22D0C8, 0x22D0C8, 0x22D0C8, )
        Yay0_22D0C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/22D0C8.Yay0.o(.data);
    SPLAT_END_SEG(data_22D0C8, 0x22D0F0)
    
    SPLAT_BEGIN_SEG(data_22D0F0, 0x22D0F0, 0x22D0F0, )
        Yay0_22D0F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/22D0F0.Yay0.o(.data);
    SPLAT_END_SEG(data_22D0F0, 0x22EAF8)
    
    SPLAT_BEGIN_SEG(data_22EAF8, 0x22EAF8, 0x22EAF8, )
        Yay0_22EAF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/22EAF8.Yay0.o(.data);
    SPLAT_END_SEG(data_22EAF8, 0x230308)
    
    SPLAT_BEGIN_SEG(data_230308, 0x230308, 0x230308, )
        Yay0_230308_Yay0 = .;
        BUILD_DIR/bin/Yay0/230308.Yay0.o(.data);
    SPLAT_END_SEG(data_230308, 0x231360)
    
    SPLAT_BEGIN_SEG(data_231360, 0x231360, 0x231360, )
        Yay0_231360_Yay0 = .;
        BUILD_DIR/bin/Yay0/231360.Yay0.o(.data);
    SPLAT_END_SEG(data_231360, 0x2325C0)
    
    SPLAT_BEGIN_SEG(data_2325C0, 0x2325C0, 0x2325C0, )
        Yay0_2325C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2325C0.Yay0.o(.data);
    SPLAT_END_SEG(data_2325C0, 0x233730)
    
    SPLAT_BEGIN_SEG(data_233730, 0x233730, 0x233730, )
        Yay0_233730_Yay0 = .;
        BUILD_DIR/bin/Yay0/233730.Yay0.o(.data);
    SPLAT_END_SEG(data_233730, 0x234D78)
    
    SPLAT_BEGIN_SEG(data_234D78, 0x234D78, 0x234D78, )
        Yay0_234D78_Yay0 = .;
        BUILD_DIR/bin/Yay0/234D78.Yay0.o(.data);
    SPLAT_END_SEG(data_234D78, 0x235178)
    
    SPLAT_BEGIN_SEG(data_235178, 0x235178, 0x235178, )
        Yay0_235178_Yay0 = .;
        BUILD_DIR/bin/Yay0/235178.Yay0.o(.data);
    SPLAT_END_SEG(data_235178, 0x235570)
    
    SPLAT_BEGIN_SEG(data_235570, 0x235570, 0x235570, )
        Yay0_235570_Yay0 = .;
        BUILD_DIR/bin/Yay0/235570.Yay0.o(.data);
    SPLAT_END_SEG(data_235570, 0x235978)
    
    SPLAT_BEGIN_SEG(data_235978, 0x235978, 0x235978, )
        Yay0_235978_Yay0 = .;
        BUILD_DIR/bin/Yay0/235978.Yay0.o(.data);
    SPLAT_END_SEG(data_235978, 0x238AC8)
    
    SPLAT_BEGIN_SEG(data_238AC8, 0x238AC8, 0x238AC8, )
        Yay0_238AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/238AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_238AC8, 0x239830)
    
    SPLAT_BEGIN_SEG(data_239830, 0x239830, 0x239830, )
        Yay0_239830_Yay0 = .;
        BUILD_DIR/bin/Yay0/239830.Yay0.o(.data);
    SPLAT_END_SEG(data_239830, 0x239960)
    
    SPLAT_BEGIN_SEG(data_239960, 0x239960, 0x239960, )
        Yay0_239960_Yay0 = .;
        BUILD_DIR/bin/Yay0/239960.Yay0.o(.data);
    SPLAT_END_SEG(data_239960, 0x239AA8)
    
    SPLAT_BEGIN_SEG(data_239AA8, 0x239AA8, 0x239AA8, )
        Yay0_239AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/239AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_239AA8, 0x239BE0)
    
    SPLAT_BEGIN_SEG(data_239BE0, 0x239BE0, 0x239BE0, )
        Yay0_239BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/239BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_239BE0, 0x239C28)
    
    SPLAT_BEGIN_SEG(data_239C28, 0x239C28, 0x239C28, )
        Yay0_239C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/239C28.Yay0.o(.data);
    SPLAT_END_SEG(data_239C28, 0x239C98)
    
    SPLAT_BEGIN_SEG(data_239C98, 0x239C98, 0x239C98, )
        Yay0_239C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/239C98.Yay0.o(.data);
    SPLAT_END_SEG(data_239C98, 0x23A0A0)
    
    SPLAT_BEGIN_SEG(data_23A0A0, 0x23A0A0, 0x23A0A0, )
        Yay0_23A0A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/23A0A0.Yay0.o(.data);
    SPLAT_END_SEG(data_23A0A0, 0x23A858)
    
    SPLAT_BEGIN_SEG(data_23A858, 0x23A858, 0x23A858, )
        Yay0_23A858_Yay0 = .;
        BUILD_DIR/bin/Yay0/23A858.Yay0.o(.data);
    SPLAT_END_SEG(data_23A858, 0x23AC30)
    
    SPLAT_BEGIN_SEG(data_23AC30, 0x23AC30, 0x23AC30, )
        Yay0_23AC30_Yay0 = .;
        BUILD_DIR/bin/Yay0/23AC30.Yay0.o(.data);
    SPLAT_END_SEG(data_23AC30, 0x23AFF0)
    
    SPLAT_BEGIN_SEG(data_23AFF0, 0x23AFF0, 0x23AFF0, )
        Yay0_23AFF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/23AFF0.Yay0.o(.data);
    SPLAT_END_SEG(data_23AFF0, 0x23B498)
    
    SPLAT_BEGIN_SEG(data_23B498, 0x23B498, 0x23B498, )
        Yay0_23B498_Yay0 = .;
        BUILD_DIR/bin/Yay0/23B498.Yay0.o(.data);
    SPLAT_END_SEG(data_23B498, 0x23B870)
    
    SPLAT_BEGIN_SEG(data_23B870, 0x23B870, 0x23B870, )
        Yay0_23B870_Yay0 = .;
        BUILD_DIR/bin/Yay0/23B870.Yay0.o(.data);
    SPLAT_END_SEG(data_23B870, 0x23BA90)
    
    SPLAT_BEGIN_SEG(data_23BA90, 0x23BA90, 0x23BA90, )
        Yay0_23BA90_Yay0 = .;
        BUILD_DIR/bin/Yay0/23BA90.Yay0.o(.data);
    SPLAT_END_SEG(data_23BA90, 0x23BC50)
    
    SPLAT_BEGIN_SEG(data_23BC50, 0x23BC50, 0x23BC50, )
        Yay0_23BC50_Yay0 = .;
        BUILD_DIR/bin/Yay0/23BC50.Yay0.o(.data);
    SPLAT_END_SEG(data_23BC50, 0x23BD88)
    
    SPLAT_BEGIN_SEG(data_23BD88, 0x23BD88, 0x23BD88, )
        Yay0_23BD88_Yay0 = .;
        BUILD_DIR/bin/Yay0/23BD88.Yay0.o(.data);
    SPLAT_END_SEG(data_23BD88, 0x23CF40)
    
    SPLAT_BEGIN_SEG(data_23CF40, 0x23CF40, 0x23CF40, )
        Yay0_23CF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/23CF40.Yay0.o(.data);
    SPLAT_END_SEG(data_23CF40, 0x23D1B8)
    
    SPLAT_BEGIN_SEG(data_23D1B8, 0x23D1B8, 0x23D1B8, )
        Yay0_23D1B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/23D1B8.Yay0.o(.data);
    SPLAT_END_SEG(data_23D1B8, 0x23EDD8)
    
    SPLAT_BEGIN_SEG(data_23EDD8, 0x23EDD8, 0x23EDD8, )
        Yay0_23EDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/23EDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_23EDD8, 0x23EF48)
    
    SPLAT_BEGIN_SEG(data_23EF48, 0x23EF48, 0x23EF48, )
        Yay0_23EF48_Yay0 = .;
        BUILD_DIR/bin/Yay0/23EF48.Yay0.o(.data);
    SPLAT_END_SEG(data_23EF48, 0x23F0F0)
    
    SPLAT_BEGIN_SEG(data_23F0F0, 0x23F0F0, 0x23F0F0, )
        Yay0_23F0F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/23F0F0.Yay0.o(.data);
    SPLAT_END_SEG(data_23F0F0, 0x23F348)
    
    SPLAT_BEGIN_SEG(data_23F348, 0x23F348, 0x23F348, )
        Yay0_23F348_Yay0 = .;
        BUILD_DIR/bin/Yay0/23F348.Yay0.o(.data);
    SPLAT_END_SEG(data_23F348, 0x23F600)
    
    SPLAT_BEGIN_SEG(data_23F600, 0x23F600, 0x23F600, )
        Yay0_23F600_Yay0 = .;
        BUILD_DIR/bin/Yay0/23F600.Yay0.o(.data);
    SPLAT_END_SEG(data_23F600, 0x23F8F0)
    
    SPLAT_BEGIN_SEG(data_23F8F0, 0x23F8F0, 0x23F8F0, )
        Yay0_23F8F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/23F8F0.Yay0.o(.data);
    SPLAT_END_SEG(data_23F8F0, 0x23FC48)
    
    SPLAT_BEGIN_SEG(data_23FC48, 0x23FC48, 0x23FC48, )
        Yay0_23FC48_Yay0 = .;
        BUILD_DIR/bin/Yay0/23FC48.Yay0.o(.data);
    SPLAT_END_SEG(data_23FC48, 0x240000)
    
    SPLAT_BEGIN_SEG(data_240000, 0x240000, 0x240000, )
        Yay0_240000_Yay0 = .;
        BUILD_DIR/bin/Yay0/240000.Yay0.o(.data);
    SPLAT_END_SEG(data_240000, 0x2403B0)
    
    SPLAT_BEGIN_SEG(data_2403B0, 0x2403B0, 0x2403B0, )
        Yay0_2403B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2403B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2403B0, 0x240738)
    
    SPLAT_BEGIN_SEG(data_240738, 0x240738, 0x240738, )
        Yay0_240738_Yay0 = .;
        BUILD_DIR/bin/Yay0/240738.Yay0.o(.data);
    SPLAT_END_SEG(data_240738, 0x240A30)
    
    SPLAT_BEGIN_SEG(data_240A30, 0x240A30, 0x240A30, )
        Yay0_240A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/240A30.Yay0.o(.data);
    SPLAT_END_SEG(data_240A30, 0x241558)
    
    SPLAT_BEGIN_SEG(data_241558, 0x241558, 0x241558, )
        Yay0_241558_Yay0 = .;
        BUILD_DIR/bin/Yay0/241558.Yay0.o(.data);
    SPLAT_END_SEG(data_241558, 0x241910)
    
    SPLAT_BEGIN_SEG(data_241910, 0x241910, 0x241910, )
        Yay0_241910_Yay0 = .;
        BUILD_DIR/bin/Yay0/241910.Yay0.o(.data);
    SPLAT_END_SEG(data_241910, 0x241D28)
    
    SPLAT_BEGIN_SEG(data_241D28, 0x241D28, 0x241D28, )
        Yay0_241D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/241D28.Yay0.o(.data);
    SPLAT_END_SEG(data_241D28, 0x242128)
    
    SPLAT_BEGIN_SEG(data_242128, 0x242128, 0x242128, )
        Yay0_242128_Yay0 = .;
        BUILD_DIR/bin/Yay0/242128.Yay0.o(.data);
    SPLAT_END_SEG(data_242128, 0x242590)
    
    SPLAT_BEGIN_SEG(data_242590, 0x242590, 0x242590, )
        Yay0_242590_Yay0 = .;
        BUILD_DIR/bin/Yay0/242590.Yay0.o(.data);
    SPLAT_END_SEG(data_242590, 0x2429C8)
    
    SPLAT_BEGIN_SEG(data_2429C8, 0x2429C8, 0x2429C8, )
        Yay0_2429C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2429C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2429C8, 0x242EC0)
    
    SPLAT_BEGIN_SEG(data_242EC0, 0x242EC0, 0x242EC0, )
        Yay0_242EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/242EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_242EC0, 0x2433A0)
    
    SPLAT_BEGIN_SEG(data_2433A0, 0x2433A0, 0x2433A0, )
        Yay0_2433A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2433A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2433A0, 0x243928)
    
    SPLAT_BEGIN_SEG(data_243928, 0x243928, 0x243928, )
        Yay0_243928_Yay0 = .;
        BUILD_DIR/bin/Yay0/243928.Yay0.o(.data);
    SPLAT_END_SEG(data_243928, 0x243EE0)
    
    SPLAT_BEGIN_SEG(data_243EE0, 0x243EE0, 0x243EE0, )
        Yay0_243EE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/243EE0.Yay0.o(.data);
    SPLAT_END_SEG(data_243EE0, 0x2444A8)
    
    SPLAT_BEGIN_SEG(data_2444A8, 0x2444A8, 0x2444A8, )
        Yay0_2444A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2444A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2444A8, 0x244A98)
    
    SPLAT_BEGIN_SEG(data_244A98, 0x244A98, 0x244A98, )
        Yay0_244A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/244A98.Yay0.o(.data);
    SPLAT_END_SEG(data_244A98, 0x2450F0)
    
    SPLAT_BEGIN_SEG(data_2450F0, 0x2450F0, 0x2450F0, )
        Yay0_2450F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2450F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2450F0, 0x245760)
    
    SPLAT_BEGIN_SEG(data_245760, 0x245760, 0x245760, )
        Yay0_245760_Yay0 = .;
        BUILD_DIR/bin/Yay0/245760.Yay0.o(.data);
    SPLAT_END_SEG(data_245760, 0x245E18)
    
    SPLAT_BEGIN_SEG(data_245E18, 0x245E18, 0x245E18, )
        Yay0_245E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/245E18.Yay0.o(.data);
    SPLAT_END_SEG(data_245E18, 0x246400)
    
    SPLAT_BEGIN_SEG(data_246400, 0x246400, 0x246400, )
        Yay0_246400_Yay0 = .;
        BUILD_DIR/bin/Yay0/246400.Yay0.o(.data);
    SPLAT_END_SEG(data_246400, 0x2469B0)
    
    SPLAT_BEGIN_SEG(data_2469B0, 0x2469B0, 0x2469B0, )
        Yay0_2469B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2469B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2469B0, 0x246F08)
    
    SPLAT_BEGIN_SEG(data_246F08, 0x246F08, 0x246F08, )
        Yay0_246F08_Yay0 = .;
        BUILD_DIR/bin/Yay0/246F08.Yay0.o(.data);
    SPLAT_END_SEG(data_246F08, 0x2474D0)
    
    SPLAT_BEGIN_SEG(data_2474D0, 0x2474D0, 0x2474D0, )
        Yay0_2474D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2474D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2474D0, 0x247A90)
    
    SPLAT_BEGIN_SEG(data_247A90, 0x247A90, 0x247A90, )
        Yay0_247A90_Yay0 = .;
        BUILD_DIR/bin/Yay0/247A90.Yay0.o(.data);
    SPLAT_END_SEG(data_247A90, 0x248050)
    
    SPLAT_BEGIN_SEG(data_248050, 0x248050, 0x248050, )
        Yay0_248050_Yay0 = .;
        BUILD_DIR/bin/Yay0/248050.Yay0.o(.data);
    SPLAT_END_SEG(data_248050, 0x2485C8)
    
    SPLAT_BEGIN_SEG(data_2485C8, 0x2485C8, 0x2485C8, )
        Yay0_2485C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2485C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2485C8, 0x248E78)
    
    SPLAT_BEGIN_SEG(data_248E78, 0x248E78, 0x248E78, )
        Yay0_248E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/248E78.Yay0.o(.data);
    SPLAT_END_SEG(data_248E78, 0x249738)
    
    SPLAT_BEGIN_SEG(data_249738, 0x249738, 0x249738, )
        Yay0_249738_Yay0 = .;
        BUILD_DIR/bin/Yay0/249738.Yay0.o(.data);
    SPLAT_END_SEG(data_249738, 0x249FE0)
    
    SPLAT_BEGIN_SEG(data_249FE0, 0x249FE0, 0x249FE0, )
        Yay0_249FE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/249FE0.Yay0.o(.data);
    SPLAT_END_SEG(data_249FE0, 0x24A040)
    
    SPLAT_BEGIN_SEG(data_24A040, 0x24A040, 0x24A040, )
        Yay0_24A040_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A040.Yay0.o(.data);
    SPLAT_END_SEG(data_24A040, 0x24A080)
    
    SPLAT_BEGIN_SEG(data_24A080, 0x24A080, 0x24A080, )
        Yay0_24A080_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A080.Yay0.o(.data);
    SPLAT_END_SEG(data_24A080, 0x24A0C0)
    
    SPLAT_BEGIN_SEG(data_24A0C0, 0x24A0C0, 0x24A0C0, )
        Yay0_24A0C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A0C0.Yay0.o(.data);
    SPLAT_END_SEG(data_24A0C0, 0x24A0F8)
    
    SPLAT_BEGIN_SEG(data_24A0F8, 0x24A0F8, 0x24A0F8, )
        Yay0_24A0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_24A0F8, 0x24A158)
    
    SPLAT_BEGIN_SEG(data_24A158, 0x24A158, 0x24A158, )
        Yay0_24A158_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A158.Yay0.o(.data);
    SPLAT_END_SEG(data_24A158, 0x24A1B0)
    
    SPLAT_BEGIN_SEG(data_24A1B0, 0x24A1B0, 0x24A1B0, )
        Yay0_24A1B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A1B0.Yay0.o(.data);
    SPLAT_END_SEG(data_24A1B0, 0x24A208)
    
    SPLAT_BEGIN_SEG(data_24A208, 0x24A208, 0x24A208, )
        Yay0_24A208_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A208.Yay0.o(.data);
    SPLAT_END_SEG(data_24A208, 0x24A240)
    
    SPLAT_BEGIN_SEG(data_24A240, 0x24A240, 0x24A240, )
        Yay0_24A240_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A240.Yay0.o(.data);
    SPLAT_END_SEG(data_24A240, 0x24A278)
    
    SPLAT_BEGIN_SEG(data_24A278, 0x24A278, 0x24A278, )
        Yay0_24A278_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A278.Yay0.o(.data);
    SPLAT_END_SEG(data_24A278, 0x24A6F8)
    
    SPLAT_BEGIN_SEG(data_24A6F8, 0x24A6F8, 0x24A6F8, )
        Yay0_24A6F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24A6F8.Yay0.o(.data);
    SPLAT_END_SEG(data_24A6F8, 0x24AA10)
    
    SPLAT_BEGIN_SEG(data_24AA10, 0x24AA10, 0x24AA10, )
        Yay0_24AA10_Yay0 = .;
        BUILD_DIR/bin/Yay0/24AA10.Yay0.o(.data);
    SPLAT_END_SEG(data_24AA10, 0x24ACB8)
    
    SPLAT_BEGIN_SEG(data_24ACB8, 0x24ACB8, 0x24ACB8, )
        Yay0_24ACB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24ACB8.Yay0.o(.data);
    SPLAT_END_SEG(data_24ACB8, 0x24B098)
    
    SPLAT_BEGIN_SEG(data_24B098, 0x24B098, 0x24B098, )
        Yay0_24B098_Yay0 = .;
        BUILD_DIR/bin/Yay0/24B098.Yay0.o(.data);
    SPLAT_END_SEG(data_24B098, 0x24B3A8)
    
    SPLAT_BEGIN_SEG(data_24B3A8, 0x24B3A8, 0x24B3A8, )
        Yay0_24B3A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24B3A8.Yay0.o(.data);
    SPLAT_END_SEG(data_24B3A8, 0x24B800)
    
    SPLAT_BEGIN_SEG(data_24B800, 0x24B800, 0x24B800, )
        Yay0_24B800_Yay0 = .;
        BUILD_DIR/bin/Yay0/24B800.Yay0.o(.data);
    SPLAT_END_SEG(data_24B800, 0x24BAF0)
    
    SPLAT_BEGIN_SEG(data_24BAF0, 0x24BAF0, 0x24BAF0, )
        Yay0_24BAF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24BAF0.Yay0.o(.data);
    SPLAT_END_SEG(data_24BAF0, 0x24BEA0)
    
    SPLAT_BEGIN_SEG(data_24BEA0, 0x24BEA0, 0x24BEA0, )
        Yay0_24BEA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24BEA0.Yay0.o(.data);
    SPLAT_END_SEG(data_24BEA0, 0x24C138)
    
    SPLAT_BEGIN_SEG(data_24C138, 0x24C138, 0x24C138, )
        Yay0_24C138_Yay0 = .;
        BUILD_DIR/bin/Yay0/24C138.Yay0.o(.data);
    SPLAT_END_SEG(data_24C138, 0x24C218)
    
    SPLAT_BEGIN_SEG(data_24C218, 0x24C218, 0x24C218, )
        Yay0_24C218_Yay0 = .;
        BUILD_DIR/bin/Yay0/24C218.Yay0.o(.data);
    SPLAT_END_SEG(data_24C218, 0x24C2F8)
    
    SPLAT_BEGIN_SEG(data_24C2F8, 0x24C2F8, 0x24C2F8, )
        Yay0_24C2F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24C2F8.Yay0.o(.data);
    SPLAT_END_SEG(data_24C2F8, 0x24C6A8)
    
    SPLAT_BEGIN_SEG(data_24C6A8, 0x24C6A8, 0x24C6A8, )
        Yay0_24C6A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24C6A8.Yay0.o(.data);
    SPLAT_END_SEG(data_24C6A8, 0x24C810)
    
    SPLAT_BEGIN_SEG(data_24C810, 0x24C810, 0x24C810, )
        Yay0_24C810_Yay0 = .;
        BUILD_DIR/bin/Yay0/24C810.Yay0.o(.data);
    SPLAT_END_SEG(data_24C810, 0x24DBD0)
    
    SPLAT_BEGIN_SEG(data_24DBD0, 0x24DBD0, 0x24DBD0, )
        Yay0_24DBD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24DBD0.Yay0.o(.data);
    SPLAT_END_SEG(data_24DBD0, 0x24DD60)
    
    SPLAT_BEGIN_SEG(data_24DD60, 0x24DD60, 0x24DD60, )
        Yay0_24DD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/24DD60.Yay0.o(.data);
    SPLAT_END_SEG(data_24DD60, 0x24DE70)
    
    SPLAT_BEGIN_SEG(data_24DE70, 0x24DE70, 0x24DE70, )
        Yay0_24DE70_Yay0 = .;
        BUILD_DIR/bin/Yay0/24DE70.Yay0.o(.data);
    SPLAT_END_SEG(data_24DE70, 0x24E058)
    
    SPLAT_BEGIN_SEG(data_24E058, 0x24E058, 0x24E058, )
        Yay0_24E058_Yay0 = .;
        BUILD_DIR/bin/Yay0/24E058.Yay0.o(.data);
    SPLAT_END_SEG(data_24E058, 0x24E200)
    
    SPLAT_BEGIN_SEG(data_24E200, 0x24E200, 0x24E200, )
        Yay0_24E200_Yay0 = .;
        BUILD_DIR/bin/Yay0/24E200.Yay0.o(.data);
    SPLAT_END_SEG(data_24E200, 0x24E550)
    
    SPLAT_BEGIN_SEG(data_24E550, 0x24E550, 0x24E550, )
        Yay0_24E550_Yay0 = .;
        BUILD_DIR/bin/Yay0/24E550.Yay0.o(.data);
    SPLAT_END_SEG(data_24E550, 0x24E890)
    
    SPLAT_BEGIN_SEG(data_24E890, 0x24E890, 0x24E890, )
        Yay0_24E890_Yay0 = .;
        BUILD_DIR/bin/Yay0/24E890.Yay0.o(.data);
    SPLAT_END_SEG(data_24E890, 0x24EB48)
    
    SPLAT_BEGIN_SEG(data_24EB48, 0x24EB48, 0x24EB48, )
        Yay0_24EB48_Yay0 = .;
        BUILD_DIR/bin/Yay0/24EB48.Yay0.o(.data);
    SPLAT_END_SEG(data_24EB48, 0x24ED58)
    
    SPLAT_BEGIN_SEG(data_24ED58, 0x24ED58, 0x24ED58, )
        Yay0_24ED58_Yay0 = .;
        BUILD_DIR/bin/Yay0/24ED58.Yay0.o(.data);
    SPLAT_END_SEG(data_24ED58, 0x24F018)
    
    SPLAT_BEGIN_SEG(data_24F018, 0x24F018, 0x24F018, )
        Yay0_24F018_Yay0 = .;
        BUILD_DIR/bin/Yay0/24F018.Yay0.o(.data);
    SPLAT_END_SEG(data_24F018, 0x24F0D8)
    
    SPLAT_BEGIN_SEG(data_24F0D8, 0x24F0D8, 0x24F0D8, )
        Yay0_24F0D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24F0D8.Yay0.o(.data);
    SPLAT_END_SEG(data_24F0D8, 0x24F1C0)
    
    SPLAT_BEGIN_SEG(data_24F1C0, 0x24F1C0, 0x24F1C0, )
        Yay0_24F1C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24F1C0.Yay0.o(.data);
    SPLAT_END_SEG(data_24F1C0, 0x24F2B0)
    
    SPLAT_BEGIN_SEG(data_24F2B0, 0x24F2B0, 0x24F2B0, )
        Yay0_24F2B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/24F2B0.Yay0.o(.data);
    SPLAT_END_SEG(data_24F2B0, 0x24F680)
    
    SPLAT_BEGIN_SEG(data_24F680, 0x24F680, 0x24F680, )
        Yay0_24F680_Yay0 = .;
        BUILD_DIR/bin/Yay0/24F680.Yay0.o(.data);
    SPLAT_END_SEG(data_24F680, 0x24F9B8)
    
    SPLAT_BEGIN_SEG(data_24F9B8, 0x24F9B8, 0x24F9B8, )
        Yay0_24F9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/24F9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_24F9B8, 0x24FD80)
    
    SPLAT_BEGIN_SEG(data_24FD80, 0x24FD80, 0x24FD80, )
        Yay0_24FD80_Yay0 = .;
        BUILD_DIR/bin/Yay0/24FD80.Yay0.o(.data);
    SPLAT_END_SEG(data_24FD80, 0x250200)
    
    SPLAT_BEGIN_SEG(data_250200, 0x250200, 0x250200, )
        Yay0_250200_Yay0 = .;
        BUILD_DIR/bin/Yay0/250200.Yay0.o(.data);
    SPLAT_END_SEG(data_250200, 0x250568)
    
    SPLAT_BEGIN_SEG(data_250568, 0x250568, 0x250568, )
        Yay0_250568_Yay0 = .;
        BUILD_DIR/bin/Yay0/250568.Yay0.o(.data);
    SPLAT_END_SEG(data_250568, 0x250830)
    
    SPLAT_BEGIN_SEG(data_250830, 0x250830, 0x250830, )
        Yay0_250830_Yay0 = .;
        BUILD_DIR/bin/Yay0/250830.Yay0.o(.data);
    SPLAT_END_SEG(data_250830, 0x250A88)
    
    SPLAT_BEGIN_SEG(data_250A88, 0x250A88, 0x250A88, )
        Yay0_250A88_Yay0 = .;
        BUILD_DIR/bin/Yay0/250A88.Yay0.o(.data);
    SPLAT_END_SEG(data_250A88, 0x250CA8)
    
    SPLAT_BEGIN_SEG(data_250CA8, 0x250CA8, 0x250CA8, )
        Yay0_250CA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/250CA8.Yay0.o(.data);
    SPLAT_END_SEG(data_250CA8, 0x250FB8)
    
    SPLAT_BEGIN_SEG(data_250FB8, 0x250FB8, 0x250FB8, )
        Yay0_250FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/250FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_250FB8, 0x251370)
    
    SPLAT_BEGIN_SEG(data_251370, 0x251370, 0x251370, )
        Yay0_251370_Yay0 = .;
        BUILD_DIR/bin/Yay0/251370.Yay0.o(.data);
    SPLAT_END_SEG(data_251370, 0x2517E8)
    
    SPLAT_BEGIN_SEG(data_2517E8, 0x2517E8, 0x2517E8, )
        Yay0_2517E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2517E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2517E8, 0x251BF0)
    
    SPLAT_BEGIN_SEG(data_251BF0, 0x251BF0, 0x251BF0, )
        Yay0_251BF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/251BF0.Yay0.o(.data);
    SPLAT_END_SEG(data_251BF0, 0x251FB0)
    
    SPLAT_BEGIN_SEG(data_251FB0, 0x251FB0, 0x251FB0, )
        Yay0_251FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/251FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_251FB0, 0x2522D8)
    
    SPLAT_BEGIN_SEG(data_2522D8, 0x2522D8, 0x2522D8, )
        Yay0_2522D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2522D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2522D8, 0x252570)
    
    SPLAT_BEGIN_SEG(data_252570, 0x252570, 0x252570, )
        Yay0_252570_Yay0 = .;
        BUILD_DIR/bin/Yay0/252570.Yay0.o(.data);
    SPLAT_END_SEG(data_252570, 0x252880)
    
    SPLAT_BEGIN_SEG(data_252880, 0x252880, 0x252880, )
        Yay0_252880_Yay0 = .;
        BUILD_DIR/bin/Yay0/252880.Yay0.o(.data);
    SPLAT_END_SEG(data_252880, 0x252B78)
    
    SPLAT_BEGIN_SEG(data_252B78, 0x252B78, 0x252B78, )
        Yay0_252B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/252B78.Yay0.o(.data);
    SPLAT_END_SEG(data_252B78, 0x252E18)
    
    SPLAT_BEGIN_SEG(data_252E18, 0x252E18, 0x252E18, )
        Yay0_252E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/252E18.Yay0.o(.data);
    SPLAT_END_SEG(data_252E18, 0x252F48)
    
    SPLAT_BEGIN_SEG(data_252F48, 0x252F48, 0x252F48, )
        Yay0_252F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/252F48.Yay0.o(.data);
    SPLAT_END_SEG(data_252F48, 0x253080)
    
    SPLAT_BEGIN_SEG(data_253080, 0x253080, 0x253080, )
        Yay0_253080_Yay0 = .;
        BUILD_DIR/bin/Yay0/253080.Yay0.o(.data);
    SPLAT_END_SEG(data_253080, 0x2531B0)
    
    SPLAT_BEGIN_SEG(data_2531B0, 0x2531B0, 0x2531B0, )
        Yay0_2531B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2531B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2531B0, 0x253468)
    
    SPLAT_BEGIN_SEG(data_253468, 0x253468, 0x253468, )
        Yay0_253468_Yay0 = .;
        BUILD_DIR/bin/Yay0/253468.Yay0.o(.data);
    SPLAT_END_SEG(data_253468, 0x2536F8)
    
    SPLAT_BEGIN_SEG(data_2536F8, 0x2536F8, 0x2536F8, )
        Yay0_2536F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2536F8.Yay0.o(.data);
    SPLAT_END_SEG(data_2536F8, 0x253A10)
    
    SPLAT_BEGIN_SEG(data_253A10, 0x253A10, 0x253A10, )
        Yay0_253A10_Yay0 = .;
        BUILD_DIR/bin/Yay0/253A10.Yay0.o(.data);
    SPLAT_END_SEG(data_253A10, 0x253C80)
    
    SPLAT_BEGIN_SEG(data_253C80, 0x253C80, 0x253C80, )
        Yay0_253C80_Yay0 = .;
        BUILD_DIR/bin/Yay0/253C80.Yay0.o(.data);
    SPLAT_END_SEG(data_253C80, 0x253E88)
    
    SPLAT_BEGIN_SEG(data_253E88, 0x253E88, 0x253E88, )
        Yay0_253E88_Yay0 = .;
        BUILD_DIR/bin/Yay0/253E88.Yay0.o(.data);
    SPLAT_END_SEG(data_253E88, 0x2541A8)
    
    SPLAT_BEGIN_SEG(data_2541A8, 0x2541A8, 0x2541A8, )
        Yay0_2541A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2541A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2541A8, 0x254470)
    
    SPLAT_BEGIN_SEG(data_254470, 0x254470, 0x254470, )
        Yay0_254470_Yay0 = .;
        BUILD_DIR/bin/Yay0/254470.Yay0.o(.data);
    SPLAT_END_SEG(data_254470, 0x254708)
    
    SPLAT_BEGIN_SEG(data_254708, 0x254708, 0x254708, )
        Yay0_254708_Yay0 = .;
        BUILD_DIR/bin/Yay0/254708.Yay0.o(.data);
    SPLAT_END_SEG(data_254708, 0x254998)
    
    SPLAT_BEGIN_SEG(data_254998, 0x254998, 0x254998, )
        Yay0_254998_Yay0 = .;
        BUILD_DIR/bin/Yay0/254998.Yay0.o(.data);
    SPLAT_END_SEG(data_254998, 0x254C90)
    
    SPLAT_BEGIN_SEG(data_254C90, 0x254C90, 0x254C90, )
        Yay0_254C90_Yay0 = .;
        BUILD_DIR/bin/Yay0/254C90.Yay0.o(.data);
    SPLAT_END_SEG(data_254C90, 0x254F80)
    
    SPLAT_BEGIN_SEG(data_254F80, 0x254F80, 0x254F80, )
        Yay0_254F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/254F80.Yay0.o(.data);
    SPLAT_END_SEG(data_254F80, 0x2552B8)
    
    SPLAT_BEGIN_SEG(data_2552B8, 0x2552B8, 0x2552B8, )
        Yay0_2552B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2552B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2552B8, 0x2556A0)
    
    SPLAT_BEGIN_SEG(data_2556A0, 0x2556A0, 0x2556A0, )
        Yay0_2556A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2556A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2556A0, 0x2559E8)
    
    SPLAT_BEGIN_SEG(data_2559E8, 0x2559E8, 0x2559E8, )
        Yay0_2559E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2559E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2559E8, 0x255C20)
    
    SPLAT_BEGIN_SEG(data_255C20, 0x255C20, 0x255C20, )
        Yay0_255C20_Yay0 = .;
        BUILD_DIR/bin/Yay0/255C20.Yay0.o(.data);
    SPLAT_END_SEG(data_255C20, 0x255D40)
    
    SPLAT_BEGIN_SEG(data_255D40, 0x255D40, 0x255D40, )
        Yay0_255D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/255D40.Yay0.o(.data);
    SPLAT_END_SEG(data_255D40, 0x255E78)
    
    SPLAT_BEGIN_SEG(data_255E78, 0x255E78, 0x255E78, )
        Yay0_255E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/255E78.Yay0.o(.data);
    SPLAT_END_SEG(data_255E78, 0x256018)
    
    SPLAT_BEGIN_SEG(data_256018, 0x256018, 0x256018, )
        Yay0_256018_Yay0 = .;
        BUILD_DIR/bin/Yay0/256018.Yay0.o(.data);
    SPLAT_END_SEG(data_256018, 0x2561E8)
    
    SPLAT_BEGIN_SEG(data_2561E8, 0x2561E8, 0x2561E8, )
        Yay0_2561E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2561E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2561E8, 0x2563F0)
    
    SPLAT_BEGIN_SEG(data_2563F0, 0x2563F0, 0x2563F0, )
        Yay0_2563F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2563F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2563F0, 0x256610)
    
    SPLAT_BEGIN_SEG(data_256610, 0x256610, 0x256610, )
        Yay0_256610_Yay0 = .;
        BUILD_DIR/bin/Yay0/256610.Yay0.o(.data);
    SPLAT_END_SEG(data_256610, 0x256820)
    
    SPLAT_BEGIN_SEG(data_256820, 0x256820, 0x256820, )
        Yay0_256820_Yay0 = .;
        BUILD_DIR/bin/Yay0/256820.Yay0.o(.data);
    SPLAT_END_SEG(data_256820, 0x256A48)
    
    SPLAT_BEGIN_SEG(data_256A48, 0x256A48, 0x256A48, )
        Yay0_256A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/256A48.Yay0.o(.data);
    SPLAT_END_SEG(data_256A48, 0x256A70)
    
    SPLAT_BEGIN_SEG(data_256A70, 0x256A70, 0x256A70, )
        Yay0_256A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/256A70.Yay0.o(.data);
    SPLAT_END_SEG(data_256A70, 0x256E50)
    
    SPLAT_BEGIN_SEG(data_256E50, 0x256E50, 0x256E50, )
        Yay0_256E50_Yay0 = .;
        BUILD_DIR/bin/Yay0/256E50.Yay0.o(.data);
    SPLAT_END_SEG(data_256E50, 0x257220)
    
    SPLAT_BEGIN_SEG(data_257220, 0x257220, 0x257220, )
        Yay0_257220_Yay0 = .;
        BUILD_DIR/bin/Yay0/257220.Yay0.o(.data);
    SPLAT_END_SEG(data_257220, 0x257BE0)
    
    SPLAT_BEGIN_SEG(data_257BE0, 0x257BE0, 0x257BE0, )
        Yay0_257BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/257BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_257BE0, 0x258158)
    
    SPLAT_BEGIN_SEG(data_258158, 0x258158, 0x258158, )
        Yay0_258158_Yay0 = .;
        BUILD_DIR/bin/Yay0/258158.Yay0.o(.data);
    SPLAT_END_SEG(data_258158, 0x258D88)
    
    SPLAT_BEGIN_SEG(data_258D88, 0x258D88, 0x258D88, )
        Yay0_258D88_Yay0 = .;
        BUILD_DIR/bin/Yay0/258D88.Yay0.o(.data);
    SPLAT_END_SEG(data_258D88, 0x259CE0)
    
    SPLAT_BEGIN_SEG(data_259CE0, 0x259CE0, 0x259CE0, )
        Yay0_259CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/259CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_259CE0, 0x259D70)
    
    SPLAT_BEGIN_SEG(data_259D70, 0x259D70, 0x259D70, )
        Yay0_259D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/259D70.Yay0.o(.data);
    SPLAT_END_SEG(data_259D70, 0x259E58)
    
    SPLAT_BEGIN_SEG(data_259E58, 0x259E58, 0x259E58, )
        Yay0_259E58_Yay0 = .;
        BUILD_DIR/bin/Yay0/259E58.Yay0.o(.data);
    SPLAT_END_SEG(data_259E58, 0x259F80)
    
    SPLAT_BEGIN_SEG(data_259F80, 0x259F80, 0x259F80, )
        Yay0_259F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/259F80.Yay0.o(.data);
    SPLAT_END_SEG(data_259F80, 0x25A098)
    
    SPLAT_BEGIN_SEG(data_25A098, 0x25A098, 0x25A098, )
        Yay0_25A098_Yay0 = .;
        BUILD_DIR/bin/Yay0/25A098.Yay0.o(.data);
    SPLAT_END_SEG(data_25A098, 0x25A168)
    
    SPLAT_BEGIN_SEG(data_25A168, 0x25A168, 0x25A168, )
        Yay0_25A168_Yay0 = .;
        BUILD_DIR/bin/Yay0/25A168.Yay0.o(.data);
    SPLAT_END_SEG(data_25A168, 0x25A198)
    
    SPLAT_BEGIN_SEG(data_25A198, 0x25A198, 0x25A198, )
        Yay0_25A198_Yay0 = .;
        BUILD_DIR/bin/Yay0/25A198.Yay0.o(.data);
    SPLAT_END_SEG(data_25A198, 0x25A1C8)
    
    SPLAT_BEGIN_SEG(data_25A1C8, 0x25A1C8, 0x25A1C8, )
        Yay0_25A1C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/25A1C8.Yay0.o(.data);
    SPLAT_END_SEG(data_25A1C8, 0x25A200)
    
    SPLAT_BEGIN_SEG(data_25A200, 0x25A200, 0x25A200, )
        Yay0_25A200_Yay0 = .;
        BUILD_DIR/bin/Yay0/25A200.Yay0.o(.data);
    SPLAT_END_SEG(data_25A200, 0x25AD50)
    
    SPLAT_BEGIN_SEG(data_25AD50, 0x25AD50, 0x25AD50, )
        Yay0_25AD50_Yay0 = .;
        BUILD_DIR/bin/Yay0/25AD50.Yay0.o(.data);
    SPLAT_END_SEG(data_25AD50, 0x25BC58)
    
    SPLAT_BEGIN_SEG(data_25BC58, 0x25BC58, 0x25BC58, )
        Yay0_25BC58_Yay0 = .;
        BUILD_DIR/bin/Yay0/25BC58.Yay0.o(.data);
    SPLAT_END_SEG(data_25BC58, 0x25C8D8)
    
    SPLAT_BEGIN_SEG(data_25C8D8, 0x25C8D8, 0x25C8D8, )
        Yay0_25C8D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/25C8D8.Yay0.o(.data);
    SPLAT_END_SEG(data_25C8D8, 0x25C928)
    
    SPLAT_BEGIN_SEG(data_25C928, 0x25C928, 0x25C928, )
        Yay0_25C928_Yay0 = .;
        BUILD_DIR/bin/Yay0/25C928.Yay0.o(.data);
    SPLAT_END_SEG(data_25C928, 0x25CA30)
    
    SPLAT_BEGIN_SEG(data_25CA30, 0x25CA30, 0x25CA30, )
        Yay0_25CA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/25CA30.Yay0.o(.data);
    SPLAT_END_SEG(data_25CA30, 0x25CD00)
    
    SPLAT_BEGIN_SEG(data_25CD00, 0x25CD00, 0x25CD00, )
        Yay0_25CD00_Yay0 = .;
        BUILD_DIR/bin/Yay0/25CD00.Yay0.o(.data);
    SPLAT_END_SEG(data_25CD00, 0x25D000)
    
    SPLAT_BEGIN_SEG(data_25D000, 0x25D000, 0x25D000, )
        Yay0_25D000_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D000.Yay0.o(.data);
    SPLAT_END_SEG(data_25D000, 0x25D2D0)
    
    SPLAT_BEGIN_SEG(data_25D2D0, 0x25D2D0, 0x25D2D0, )
        Yay0_25D2D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D2D0.Yay0.o(.data);
    SPLAT_END_SEG(data_25D2D0, 0x25D4D0)
    
    SPLAT_BEGIN_SEG(data_25D4D0, 0x25D4D0, 0x25D4D0, )
        Yay0_25D4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_25D4D0, 0x25D690)
    
    SPLAT_BEGIN_SEG(data_25D690, 0x25D690, 0x25D690, )
        Yay0_25D690_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D690.Yay0.o(.data);
    SPLAT_END_SEG(data_25D690, 0x25D730)
    
    SPLAT_BEGIN_SEG(data_25D730, 0x25D730, 0x25D730, )
        Yay0_25D730_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D730.Yay0.o(.data);
    SPLAT_END_SEG(data_25D730, 0x25D8C0)
    
    SPLAT_BEGIN_SEG(data_25D8C0, 0x25D8C0, 0x25D8C0, )
        Yay0_25D8C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D8C0.Yay0.o(.data);
    SPLAT_END_SEG(data_25D8C0, 0x25D970)
    
    SPLAT_BEGIN_SEG(data_25D970, 0x25D970, 0x25D970, )
        Yay0_25D970_Yay0 = .;
        BUILD_DIR/bin/Yay0/25D970.Yay0.o(.data);
    SPLAT_END_SEG(data_25D970, 0x25DA20)
    
    SPLAT_BEGIN_SEG(data_25DA20, 0x25DA20, 0x25DA20, )
        Yay0_25DA20_Yay0 = .;
        BUILD_DIR/bin/Yay0/25DA20.Yay0.o(.data);
    SPLAT_END_SEG(data_25DA20, 0x25DB38)
    
    SPLAT_BEGIN_SEG(data_25DB38, 0x25DB38, 0x25DB38, )
        Yay0_25DB38_Yay0 = .;
        BUILD_DIR/bin/Yay0/25DB38.Yay0.o(.data);
    SPLAT_END_SEG(data_25DB38, 0x25DD88)
    
    SPLAT_BEGIN_SEG(data_25DD88, 0x25DD88, 0x25DD88, )
        Yay0_25DD88_Yay0 = .;
        BUILD_DIR/bin/Yay0/25DD88.Yay0.o(.data);
    SPLAT_END_SEG(data_25DD88, 0x25E2F0)
    
    SPLAT_BEGIN_SEG(data_25E2F0, 0x25E2F0, 0x25E2F0, )
        Yay0_25E2F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25E2F0.Yay0.o(.data);
    SPLAT_END_SEG(data_25E2F0, 0x25E808)
    
    SPLAT_BEGIN_SEG(data_25E808, 0x25E808, 0x25E808, )
        Yay0_25E808_Yay0 = .;
        BUILD_DIR/bin/Yay0/25E808.Yay0.o(.data);
    SPLAT_END_SEG(data_25E808, 0x25E8F8)
    
    SPLAT_BEGIN_SEG(data_25E8F8, 0x25E8F8, 0x25E8F8, )
        Yay0_25E8F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/25E8F8.Yay0.o(.data);
    SPLAT_END_SEG(data_25E8F8, 0x25E968)
    
    SPLAT_BEGIN_SEG(data_25E968, 0x25E968, 0x25E968, )
        Yay0_25E968_Yay0 = .;
        BUILD_DIR/bin/Yay0/25E968.Yay0.o(.data);
    SPLAT_END_SEG(data_25E968, 0x25EA60)
    
    SPLAT_BEGIN_SEG(data_25EA60, 0x25EA60, 0x25EA60, )
        Yay0_25EA60_Yay0 = .;
        BUILD_DIR/bin/Yay0/25EA60.Yay0.o(.data);
    SPLAT_END_SEG(data_25EA60, 0x25EB68)
    
    SPLAT_BEGIN_SEG(data_25EB68, 0x25EB68, 0x25EB68, )
        Yay0_25EB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/25EB68.Yay0.o(.data);
    SPLAT_END_SEG(data_25EB68, 0x25EC28)
    
    SPLAT_BEGIN_SEG(data_25EC28, 0x25EC28, 0x25EC28, )
        Yay0_25EC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/25EC28.Yay0.o(.data);
    SPLAT_END_SEG(data_25EC28, 0x25ED08)
    
    SPLAT_BEGIN_SEG(data_25ED08, 0x25ED08, 0x25ED08, )
        Yay0_25ED08_Yay0 = .;
        BUILD_DIR/bin/Yay0/25ED08.Yay0.o(.data);
    SPLAT_END_SEG(data_25ED08, 0x25EE20)
    
    SPLAT_BEGIN_SEG(data_25EE20, 0x25EE20, 0x25EE20, )
        Yay0_25EE20_Yay0 = .;
        BUILD_DIR/bin/Yay0/25EE20.Yay0.o(.data);
    SPLAT_END_SEG(data_25EE20, 0x25EEE0)
    
    SPLAT_BEGIN_SEG(data_25EEE0, 0x25EEE0, 0x25EEE0, )
        Yay0_25EEE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25EEE0.Yay0.o(.data);
    SPLAT_END_SEG(data_25EEE0, 0x25EFE0)
    
    SPLAT_BEGIN_SEG(data_25EFE0, 0x25EFE0, 0x25EFE0, )
        Yay0_25EFE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25EFE0.Yay0.o(.data);
    SPLAT_END_SEG(data_25EFE0, 0x25F0F0)
    
    SPLAT_BEGIN_SEG(data_25F0F0, 0x25F0F0, 0x25F0F0, )
        Yay0_25F0F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25F0F0.Yay0.o(.data);
    SPLAT_END_SEG(data_25F0F0, 0x25F2C8)
    
    SPLAT_BEGIN_SEG(data_25F2C8, 0x25F2C8, 0x25F2C8, )
        Yay0_25F2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/25F2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_25F2C8, 0x25F5B0)
    
    SPLAT_BEGIN_SEG(data_25F5B0, 0x25F5B0, 0x25F5B0, )
        Yay0_25F5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/25F5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_25F5B0, 0x25F810)
    
    SPLAT_BEGIN_SEG(data_25F810, 0x25F810, 0x25F810, )
        Yay0_25F810_Yay0 = .;
        BUILD_DIR/bin/Yay0/25F810.Yay0.o(.data);
    SPLAT_END_SEG(data_25F810, 0x25FAE8)
    
    SPLAT_BEGIN_SEG(data_25FAE8, 0x25FAE8, 0x25FAE8, )
        Yay0_25FAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/25FAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_25FAE8, 0x25FE10)
    
    SPLAT_BEGIN_SEG(data_25FE10, 0x25FE10, 0x25FE10, )
        Yay0_25FE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/25FE10.Yay0.o(.data);
    SPLAT_END_SEG(data_25FE10, 0x2601C8)
    
    SPLAT_BEGIN_SEG(data_2601C8, 0x2601C8, 0x2601C8, )
        Yay0_2601C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2601C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2601C8, 0x2604A8)
    
    SPLAT_BEGIN_SEG(data_2604A8, 0x2604A8, 0x2604A8, )
        Yay0_2604A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2604A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2604A8, 0x2608D0)
    
    SPLAT_BEGIN_SEG(data_2608D0, 0x2608D0, 0x2608D0, )
        Yay0_2608D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2608D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2608D0, 0x260CB0)
    
    SPLAT_BEGIN_SEG(data_260CB0, 0x260CB0, 0x260CB0, )
        Yay0_260CB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/260CB0.Yay0.o(.data);
    SPLAT_END_SEG(data_260CB0, 0x260FA0)
    
    SPLAT_BEGIN_SEG(data_260FA0, 0x260FA0, 0x260FA0, )
        Yay0_260FA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/260FA0.Yay0.o(.data);
    SPLAT_END_SEG(data_260FA0, 0x260FD8)
    
    SPLAT_BEGIN_SEG(data_260FD8, 0x260FD8, 0x260FD8, )
        Yay0_260FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/260FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_260FD8, 0x261E68)
    
    SPLAT_BEGIN_SEG(data_261E68, 0x261E68, 0x261E68, )
        Yay0_261E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/261E68.Yay0.o(.data);
    SPLAT_END_SEG(data_261E68, 0x262E20)
    
    SPLAT_BEGIN_SEG(data_262E20, 0x262E20, 0x262E20, )
        Yay0_262E20_Yay0 = .;
        BUILD_DIR/bin/Yay0/262E20.Yay0.o(.data);
    SPLAT_END_SEG(data_262E20, 0x262F40)
    
    SPLAT_BEGIN_SEG(data_262F40, 0x262F40, 0x262F40, )
        Yay0_262F40_Yay0 = .;
        BUILD_DIR/bin/Yay0/262F40.Yay0.o(.data);
    SPLAT_END_SEG(data_262F40, 0x2631A0)
    
    SPLAT_BEGIN_SEG(data_2631A0, 0x2631A0, 0x2631A0, )
        Yay0_2631A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2631A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2631A0, 0x263388)
    
    SPLAT_BEGIN_SEG(data_263388, 0x263388, 0x263388, )
        Yay0_263388_Yay0 = .;
        BUILD_DIR/bin/Yay0/263388.Yay0.o(.data);
    SPLAT_END_SEG(data_263388, 0x2636B8)
    
    SPLAT_BEGIN_SEG(data_2636B8, 0x2636B8, 0x2636B8, )
        Yay0_2636B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2636B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2636B8, 0x263A98)
    
    SPLAT_BEGIN_SEG(data_263A98, 0x263A98, 0x263A98, )
        Yay0_263A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/263A98.Yay0.o(.data);
    SPLAT_END_SEG(data_263A98, 0x263EF0)
    
    SPLAT_BEGIN_SEG(data_263EF0, 0x263EF0, 0x263EF0, )
        Yay0_263EF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/263EF0.Yay0.o(.data);
    SPLAT_END_SEG(data_263EF0, 0x2642C8)
    
    SPLAT_BEGIN_SEG(data_2642C8, 0x2642C8, 0x2642C8, )
        Yay0_2642C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2642C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2642C8, 0x264578)
    
    SPLAT_BEGIN_SEG(data_264578, 0x264578, 0x264578, )
        Yay0_264578_Yay0 = .;
        BUILD_DIR/bin/Yay0/264578.Yay0.o(.data);
    SPLAT_END_SEG(data_264578, 0x265010)
    
    SPLAT_BEGIN_SEG(data_265010, 0x265010, 0x265010, )
        Yay0_265010_Yay0 = .;
        BUILD_DIR/bin/Yay0/265010.Yay0.o(.data);
    SPLAT_END_SEG(data_265010, 0x2654C0)
    
    SPLAT_BEGIN_SEG(data_2654C0, 0x2654C0, 0x2654C0, )
        Yay0_2654C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2654C0.Yay0.o(.data);
    SPLAT_END_SEG(data_2654C0, 0x265708)
    
    SPLAT_BEGIN_SEG(data_265708, 0x265708, 0x265708, )
        Yay0_265708_Yay0 = .;
        BUILD_DIR/bin/Yay0/265708.Yay0.o(.data);
    SPLAT_END_SEG(data_265708, 0x265810)
    
    SPLAT_BEGIN_SEG(data_265810, 0x265810, 0x265810, )
        Yay0_265810_Yay0 = .;
        BUILD_DIR/bin/Yay0/265810.Yay0.o(.data);
    SPLAT_END_SEG(data_265810, 0x2663E0)
    
    SPLAT_BEGIN_SEG(data_2663E0, 0x2663E0, 0x2663E0, )
        Yay0_2663E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2663E0.Yay0.o(.data);
    SPLAT_END_SEG(data_2663E0, 0x266E60)
    
    SPLAT_BEGIN_SEG(data_266E60, 0x266E60, 0x266E60, )
        Yay0_266E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/266E60.Yay0.o(.data);
    SPLAT_END_SEG(data_266E60, 0x267BB8)
    
    SPLAT_BEGIN_SEG(data_267BB8, 0x267BB8, 0x267BB8, )
        Yay0_267BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/267BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_267BB8, 0x26F0D0)
    
    SPLAT_BEGIN_SEG(data_26F0D0, 0x26F0D0, 0x26F0D0, )
        Yay0_26F0D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/26F0D0.Yay0.o(.data);
    SPLAT_END_SEG(data_26F0D0, 0x26F5D0)
    
    SPLAT_BEGIN_SEG(data_26F5D0, 0x26F5D0, 0x26F5D0, )
        Yay0_26F5D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/26F5D0.Yay0.o(.data);
    SPLAT_END_SEG(data_26F5D0, 0x26FC98)
    
    SPLAT_BEGIN_SEG(data_26FC98, 0x26FC98, 0x26FC98, )
        Yay0_26FC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/26FC98.Yay0.o(.data);
    SPLAT_END_SEG(data_26FC98, 0x272090)
    
    SPLAT_BEGIN_SEG(data_272090, 0x272090, 0x272090, )
        Yay0_272090_Yay0 = .;
        BUILD_DIR/bin/Yay0/272090.Yay0.o(.data);
    SPLAT_END_SEG(data_272090, 0x2728A8)
    
    SPLAT_BEGIN_SEG(data_2728A8, 0x2728A8, 0x2728A8, )
        Yay0_2728A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2728A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2728A8, 0x272FA8)
    
    SPLAT_BEGIN_SEG(data_272FA8, 0x272FA8, 0x272FA8, )
        Yay0_272FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/272FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_272FA8, 0x2737E0)
    
    SPLAT_BEGIN_SEG(data_2737E0, 0x2737E0, 0x2737E0, )
        Yay0_2737E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2737E0.Yay0.o(.data);
    SPLAT_END_SEG(data_2737E0, 0x275BA8)
    
    SPLAT_BEGIN_SEG(data_275BA8, 0x275BA8, 0x275BA8, )
        Yay0_275BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/275BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_275BA8, 0x275D28)
    
    SPLAT_BEGIN_SEG(data_275D28, 0x275D28, 0x275D28, )
        Yay0_275D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/275D28.Yay0.o(.data);
    SPLAT_END_SEG(data_275D28, 0x275E38)
    
    SPLAT_BEGIN_SEG(data_275E38, 0x275E38, 0x275E38, )
        Yay0_275E38_Yay0 = .;
        BUILD_DIR/bin/Yay0/275E38.Yay0.o(.data);
    SPLAT_END_SEG(data_275E38, 0x275FD0)
    
    SPLAT_BEGIN_SEG(data_275FD0, 0x275FD0, 0x275FD0, )
        Yay0_275FD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/275FD0.Yay0.o(.data);
    SPLAT_END_SEG(data_275FD0, 0x276078)
    
    SPLAT_BEGIN_SEG(data_276078, 0x276078, 0x276078, )
        Yay0_276078_Yay0 = .;
        BUILD_DIR/bin/Yay0/276078.Yay0.o(.data);
    SPLAT_END_SEG(data_276078, 0x276150)
    
    SPLAT_BEGIN_SEG(data_276150, 0x276150, 0x276150, )
        Yay0_276150_Yay0 = .;
        BUILD_DIR/bin/Yay0/276150.Yay0.o(.data);
    SPLAT_END_SEG(data_276150, 0x276620)
    
    SPLAT_BEGIN_SEG(data_276620, 0x276620, 0x276620, )
        Yay0_276620_Yay0 = .;
        BUILD_DIR/bin/Yay0/276620.Yay0.o(.data);
    SPLAT_END_SEG(data_276620, 0x276B40)
    
    SPLAT_BEGIN_SEG(data_276B40, 0x276B40, 0x276B40, )
        Yay0_276B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/276B40.Yay0.o(.data);
    SPLAT_END_SEG(data_276B40, 0x277ED8)
    
    SPLAT_BEGIN_SEG(data_277ED8, 0x277ED8, 0x277ED8, )
        Yay0_277ED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/277ED8.Yay0.o(.data);
    SPLAT_END_SEG(data_277ED8, 0x2784D8)
    
    SPLAT_BEGIN_SEG(data_2784D8, 0x2784D8, 0x2784D8, )
        Yay0_2784D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2784D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2784D8, 0x278960)
    
    SPLAT_BEGIN_SEG(data_278960, 0x278960, 0x278960, )
        Yay0_278960_Yay0 = .;
        BUILD_DIR/bin/Yay0/278960.Yay0.o(.data);
    SPLAT_END_SEG(data_278960, 0x279440)
    
    SPLAT_BEGIN_SEG(data_279440, 0x279440, 0x279440, )
        Yay0_279440_Yay0 = .;
        BUILD_DIR/bin/Yay0/279440.Yay0.o(.data);
    SPLAT_END_SEG(data_279440, 0x279820)
    
    SPLAT_BEGIN_SEG(data_279820, 0x279820, 0x279820, )
        Yay0_279820_Yay0 = .;
        BUILD_DIR/bin/Yay0/279820.Yay0.o(.data);
    SPLAT_END_SEG(data_279820, 0x279C28)
    
    SPLAT_BEGIN_SEG(data_279C28, 0x279C28, 0x279C28, )
        Yay0_279C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/279C28.Yay0.o(.data);
    SPLAT_END_SEG(data_279C28, 0x279FA0)
    
    SPLAT_BEGIN_SEG(data_279FA0, 0x279FA0, 0x279FA0, )
        Yay0_279FA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/279FA0.Yay0.o(.data);
    SPLAT_END_SEG(data_279FA0, 0x27A348)
    
    SPLAT_BEGIN_SEG(data_27A348, 0x27A348, 0x27A348, )
        Yay0_27A348_Yay0 = .;
        BUILD_DIR/bin/Yay0/27A348.Yay0.o(.data);
    SPLAT_END_SEG(data_27A348, 0x27ABA0)
    
    SPLAT_BEGIN_SEG(data_27ABA0, 0x27ABA0, 0x27ABA0, )
        Yay0_27ABA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/27ABA0.Yay0.o(.data);
    SPLAT_END_SEG(data_27ABA0, 0x27AE30)
    
    SPLAT_BEGIN_SEG(data_27AE30, 0x27AE30, 0x27AE30, )
        Yay0_27AE30_Yay0 = .;
        BUILD_DIR/bin/Yay0/27AE30.Yay0.o(.data);
    SPLAT_END_SEG(data_27AE30, 0x27B670)
    
    SPLAT_BEGIN_SEG(data_27B670, 0x27B670, 0x27B670, )
        Yay0_27B670_Yay0 = .;
        BUILD_DIR/bin/Yay0/27B670.Yay0.o(.data);
    SPLAT_END_SEG(data_27B670, 0x27C190)
    
    SPLAT_BEGIN_SEG(data_27C190, 0x27C190, 0x27C190, )
        Yay0_27C190_Yay0 = .;
        BUILD_DIR/bin/Yay0/27C190.Yay0.o(.data);
    SPLAT_END_SEG(data_27C190, 0x27C478)
    
    SPLAT_BEGIN_SEG(data_27C478, 0x27C478, 0x27C478, )
        Yay0_27C478_Yay0 = .;
        BUILD_DIR/bin/Yay0/27C478.Yay0.o(.data);
    SPLAT_END_SEG(data_27C478, 0x27CDD8)
    
    SPLAT_BEGIN_SEG(data_27CDD8, 0x27CDD8, 0x27CDD8, )
        Yay0_27CDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/27CDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_27CDD8, 0x27E600)
    
    SPLAT_BEGIN_SEG(data_27E600, 0x27E600, 0x27E600, )
        Yay0_27E600_Yay0 = .;
        BUILD_DIR/bin/Yay0/27E600.Yay0.o(.data);
    SPLAT_END_SEG(data_27E600, 0x27F0C0)
    
    SPLAT_BEGIN_SEG(data_27F0C0, 0x27F0C0, 0x27F0C0, )
        Yay0_27F0C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/27F0C0.Yay0.o(.data);
    SPLAT_END_SEG(data_27F0C0, 0x27F6A0)
    
    SPLAT_BEGIN_SEG(data_27F6A0, 0x27F6A0, 0x27F6A0, )
        Yay0_27F6A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/27F6A0.Yay0.o(.data);
    SPLAT_END_SEG(data_27F6A0, 0x27FAD0)
    
    SPLAT_BEGIN_SEG(data_27FAD0, 0x27FAD0, 0x27FAD0, )
        Yay0_27FAD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/27FAD0.Yay0.o(.data);
    SPLAT_END_SEG(data_27FAD0, 0x280D00)
    
    SPLAT_BEGIN_SEG(data_280D00, 0x280D00, 0x280D00, )
        Yay0_280D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/280D00.Yay0.o(.data);
    SPLAT_END_SEG(data_280D00, 0x2814B0)
    
    SPLAT_BEGIN_SEG(data_2814B0, 0x2814B0, 0x2814B0, )
        Yay0_2814B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2814B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2814B0, 0x285AD0)
    
    SPLAT_BEGIN_SEG(data_285AD0, 0x285AD0, 0x285AD0, )
        Yay0_285AD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/285AD0.Yay0.o(.data);
    SPLAT_END_SEG(data_285AD0, 0x28AEE8)
    
    SPLAT_BEGIN_SEG(data_28AEE8, 0x28AEE8, 0x28AEE8, )
        Yay0_28AEE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/28AEE8.Yay0.o(.data);
    SPLAT_END_SEG(data_28AEE8, 0x28AFF8)
    
    SPLAT_BEGIN_SEG(data_28AFF8, 0x28AFF8, 0x28AFF8, )
        Yay0_28AFF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/28AFF8.Yay0.o(.data);
    SPLAT_END_SEG(data_28AFF8, 0x28B108)
    
    SPLAT_BEGIN_SEG(data_28B108, 0x28B108, 0x28B108, )
        Yay0_28B108_Yay0 = .;
        BUILD_DIR/bin/Yay0/28B108.Yay0.o(.data);
    SPLAT_END_SEG(data_28B108, 0x28F138)
    
    SPLAT_BEGIN_SEG(data_28F138, 0x28F138, 0x28F138, )
        Yay0_28F138_Yay0 = .;
        BUILD_DIR/bin/Yay0/28F138.Yay0.o(.data);
    SPLAT_END_SEG(data_28F138, 0x28F2B0)
    
    SPLAT_BEGIN_SEG(data_28F2B0, 0x28F2B0, 0x28F2B0, )
        Yay0_28F2B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/28F2B0.Yay0.o(.data);
    SPLAT_END_SEG(data_28F2B0, 0x28F458)
    
    SPLAT_BEGIN_SEG(data_28F458, 0x28F458, 0x28F458, )
        Yay0_28F458_Yay0 = .;
        BUILD_DIR/bin/Yay0/28F458.Yay0.o(.data);
    SPLAT_END_SEG(data_28F458, 0x28FDA8)
    
    SPLAT_BEGIN_SEG(data_28FDA8, 0x28FDA8, 0x28FDA8, )
        Yay0_28FDA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/28FDA8.Yay0.o(.data);
    SPLAT_END_SEG(data_28FDA8, 0x2966A8)
    
    SPLAT_BEGIN_SEG(data_2966A8, 0x2966A8, 0x2966A8, )
        Yay0_2966A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2966A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2966A8, 0x296830)
    
    SPLAT_BEGIN_SEG(data_296830, 0x296830, 0x296830, )
        Yay0_296830_Yay0 = .;
        BUILD_DIR/bin/Yay0/296830.Yay0.o(.data);
    SPLAT_END_SEG(data_296830, 0x296AB0)
    
    SPLAT_BEGIN_SEG(data_296AB0, 0x296AB0, 0x296AB0, )
        Yay0_296AB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/296AB0.Yay0.o(.data);
    SPLAT_END_SEG(data_296AB0, 0x296E28)
    
    SPLAT_BEGIN_SEG(data_296E28, 0x296E28, 0x296E28, )
        Yay0_296E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/296E28.Yay0.o(.data);
    SPLAT_END_SEG(data_296E28, 0x2971B8)
    
    SPLAT_BEGIN_SEG(data_2971B8, 0x2971B8, 0x2971B8, )
        Yay0_2971B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2971B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2971B8, 0x297340)
    
    SPLAT_BEGIN_SEG(data_297340, 0x297340, 0x297340, )
        Yay0_297340_Yay0 = .;
        BUILD_DIR/bin/Yay0/297340.Yay0.o(.data);
    SPLAT_END_SEG(data_297340, 0x297688)
    
    SPLAT_BEGIN_SEG(data_297688, 0x297688, 0x297688, )
        Yay0_297688_Yay0 = .;
        BUILD_DIR/bin/Yay0/297688.Yay0.o(.data);
    SPLAT_END_SEG(data_297688, 0x297908)
    
    SPLAT_BEGIN_SEG(data_297908, 0x297908, 0x297908, )
        Yay0_297908_Yay0 = .;
        BUILD_DIR/bin/Yay0/297908.Yay0.o(.data);
    SPLAT_END_SEG(data_297908, 0x297970)
    
    SPLAT_BEGIN_SEG(data_297970, 0x297970, 0x297970, )
        Yay0_297970_Yay0 = .;
        BUILD_DIR/bin/Yay0/297970.Yay0.o(.data);
    SPLAT_END_SEG(data_297970, 0x297C50)
    
    SPLAT_BEGIN_SEG(data_297C50, 0x297C50, 0x297C50, )
        Yay0_297C50_Yay0 = .;
        BUILD_DIR/bin/Yay0/297C50.Yay0.o(.data);
    SPLAT_END_SEG(data_297C50, 0x297F98)
    
    SPLAT_BEGIN_SEG(data_297F98, 0x297F98, 0x297F98, )
        Yay0_297F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/297F98.Yay0.o(.data);
    SPLAT_END_SEG(data_297F98, 0x298328)
    
    SPLAT_BEGIN_SEG(data_298328, 0x298328, 0x298328, )
        Yay0_298328_Yay0 = .;
        BUILD_DIR/bin/Yay0/298328.Yay0.o(.data);
    SPLAT_END_SEG(data_298328, 0x298610)
    
    SPLAT_BEGIN_SEG(data_298610, 0x298610, 0x298610, )
        Yay0_298610_Yay0 = .;
        BUILD_DIR/bin/Yay0/298610.Yay0.o(.data);
    SPLAT_END_SEG(data_298610, 0x2988B0)
    
    SPLAT_BEGIN_SEG(data_2988B0, 0x2988B0, 0x2988B0, )
        Yay0_2988B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2988B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2988B0, 0x298B38)
    
    SPLAT_BEGIN_SEG(data_298B38, 0x298B38, 0x298B38, )
        Yay0_298B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/298B38.Yay0.o(.data);
    SPLAT_END_SEG(data_298B38, 0x298D00)
    
    SPLAT_BEGIN_SEG(data_298D00, 0x298D00, 0x298D00, )
        Yay0_298D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/298D00.Yay0.o(.data);
    SPLAT_END_SEG(data_298D00, 0x2997B0)
    
    SPLAT_BEGIN_SEG(data_2997B0, 0x2997B0, 0x2997B0, )
        Yay0_2997B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2997B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2997B0, 0x299DC0)
    
    SPLAT_BEGIN_SEG(data_299DC0, 0x299DC0, 0x299DC0, )
        Yay0_299DC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/299DC0.Yay0.o(.data);
    SPLAT_END_SEG(data_299DC0, 0x29A3F0)
    
    SPLAT_BEGIN_SEG(data_29A3F0, 0x29A3F0, 0x29A3F0, )
        Yay0_29A3F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/29A3F0.Yay0.o(.data);
    SPLAT_END_SEG(data_29A3F0, 0x29AA68)
    
    SPLAT_BEGIN_SEG(data_29AA68, 0x29AA68, 0x29AA68, )
        Yay0_29AA68_Yay0 = .;
        BUILD_DIR/bin/Yay0/29AA68.Yay0.o(.data);
    SPLAT_END_SEG(data_29AA68, 0x29B068)
    
    SPLAT_BEGIN_SEG(data_29B068, 0x29B068, 0x29B068, )
        Yay0_29B068_Yay0 = .;
        BUILD_DIR/bin/Yay0/29B068.Yay0.o(.data);
    SPLAT_END_SEG(data_29B068, 0x29B6B0)
    
    SPLAT_BEGIN_SEG(data_29B6B0, 0x29B6B0, 0x29B6B0, )
        Yay0_29B6B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/29B6B0.Yay0.o(.data);
    SPLAT_END_SEG(data_29B6B0, 0x29BCF8)
    
    SPLAT_BEGIN_SEG(data_29BCF8, 0x29BCF8, 0x29BCF8, )
        Yay0_29BCF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29BCF8.Yay0.o(.data);
    SPLAT_END_SEG(data_29BCF8, 0x29C438)
    
    SPLAT_BEGIN_SEG(data_29C438, 0x29C438, 0x29C438, )
        Yay0_29C438_Yay0 = .;
        BUILD_DIR/bin/Yay0/29C438.Yay0.o(.data);
    SPLAT_END_SEG(data_29C438, 0x29CAE8)
    
    SPLAT_BEGIN_SEG(data_29CAE8, 0x29CAE8, 0x29CAE8, )
        Yay0_29CAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29CAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_29CAE8, 0x29D210)
    
    SPLAT_BEGIN_SEG(data_29D210, 0x29D210, 0x29D210, )
        Yay0_29D210_Yay0 = .;
        BUILD_DIR/bin/Yay0/29D210.Yay0.o(.data);
    SPLAT_END_SEG(data_29D210, 0x29D5D8)
    
    SPLAT_BEGIN_SEG(data_29D5D8, 0x29D5D8, 0x29D5D8, )
        Yay0_29D5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29D5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_29D5D8, 0x29D9F8)
    
    SPLAT_BEGIN_SEG(data_29D9F8, 0x29D9F8, 0x29D9F8, )
        Yay0_29D9F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29D9F8.Yay0.o(.data);
    SPLAT_END_SEG(data_29D9F8, 0x29DDD8)
    
    SPLAT_BEGIN_SEG(data_29DDD8, 0x29DDD8, 0x29DDD8, )
        Yay0_29DDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29DDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_29DDD8, 0x29E240)
    
    SPLAT_BEGIN_SEG(data_29E240, 0x29E240, 0x29E240, )
        Yay0_29E240_Yay0 = .;
        BUILD_DIR/bin/Yay0/29E240.Yay0.o(.data);
    SPLAT_END_SEG(data_29E240, 0x29E798)
    
    SPLAT_BEGIN_SEG(data_29E798, 0x29E798, 0x29E798, )
        Yay0_29E798_Yay0 = .;
        BUILD_DIR/bin/Yay0/29E798.Yay0.o(.data);
    SPLAT_END_SEG(data_29E798, 0x29EC80)
    
    SPLAT_BEGIN_SEG(data_29EC80, 0x29EC80, 0x29EC80, )
        Yay0_29EC80_Yay0 = .;
        BUILD_DIR/bin/Yay0/29EC80.Yay0.o(.data);
    SPLAT_END_SEG(data_29EC80, 0x29F1E0)
    
    SPLAT_BEGIN_SEG(data_29F1E0, 0x29F1E0, 0x29F1E0, )
        Yay0_29F1E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/29F1E0.Yay0.o(.data);
    SPLAT_END_SEG(data_29F1E0, 0x29F5F8)
    
    SPLAT_BEGIN_SEG(data_29F5F8, 0x29F5F8, 0x29F5F8, )
        Yay0_29F5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29F5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_29F5F8, 0x29F9B8)
    
    SPLAT_BEGIN_SEG(data_29F9B8, 0x29F9B8, 0x29F9B8, )
        Yay0_29F9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29F9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_29F9B8, 0x29FEB8)
    
    SPLAT_BEGIN_SEG(data_29FEB8, 0x29FEB8, 0x29FEB8, )
        Yay0_29FEB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/29FEB8.Yay0.o(.data);
    SPLAT_END_SEG(data_29FEB8, 0x2A05F0)
    
    SPLAT_BEGIN_SEG(data_2A05F0, 0x2A05F0, 0x2A05F0, )
        Yay0_2A05F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A05F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2A05F0, 0x2A0D98)
    
    SPLAT_BEGIN_SEG(data_2A0D98, 0x2A0D98, 0x2A0D98, )
        Yay0_2A0D98_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A0D98.Yay0.o(.data);
    SPLAT_END_SEG(data_2A0D98, 0x2A1468)
    
    SPLAT_BEGIN_SEG(data_2A1468, 0x2A1468, 0x2A1468, )
        Yay0_2A1468_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A1468.Yay0.o(.data);
    SPLAT_END_SEG(data_2A1468, 0x2A1B38)
    
    SPLAT_BEGIN_SEG(data_2A1B38, 0x2A1B38, 0x2A1B38, )
        Yay0_2A1B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A1B38.Yay0.o(.data);
    SPLAT_END_SEG(data_2A1B38, 0x2A3B08)
    
    SPLAT_BEGIN_SEG(data_2A3B08, 0x2A3B08, 0x2A3B08, )
        Yay0_2A3B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A3B08.Yay0.o(.data);
    SPLAT_END_SEG(data_2A3B08, 0x2A3E18)
    
    SPLAT_BEGIN_SEG(data_2A3E18, 0x2A3E18, 0x2A3E18, )
        Yay0_2A3E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A3E18.Yay0.o(.data);
    SPLAT_END_SEG(data_2A3E18, 0x2A4220)
    
    SPLAT_BEGIN_SEG(data_2A4220, 0x2A4220, 0x2A4220, )
        Yay0_2A4220_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A4220.Yay0.o(.data);
    SPLAT_END_SEG(data_2A4220, 0x2A45D0)
    
    SPLAT_BEGIN_SEG(data_2A45D0, 0x2A45D0, 0x2A45D0, )
        Yay0_2A45D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A45D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2A45D0, 0x2A4930)
    
    SPLAT_BEGIN_SEG(data_2A4930, 0x2A4930, 0x2A4930, )
        Yay0_2A4930_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A4930.Yay0.o(.data);
    SPLAT_END_SEG(data_2A4930, 0x2A4B50)
    
    SPLAT_BEGIN_SEG(data_2A4B50, 0x2A4B50, 0x2A4B50, )
        Yay0_2A4B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A4B50.Yay0.o(.data);
    SPLAT_END_SEG(data_2A4B50, 0x2A4C90)
    
    SPLAT_BEGIN_SEG(data_2A4C90, 0x2A4C90, 0x2A4C90, )
        Yay0_2A4C90_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A4C90.Yay0.o(.data);
    SPLAT_END_SEG(data_2A4C90, 0x2A4EA0)
    
    SPLAT_BEGIN_SEG(data_2A4EA0, 0x2A4EA0, 0x2A4EA0, )
        Yay0_2A4EA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A4EA0.Yay0.o(.data);
    SPLAT_END_SEG(data_2A4EA0, 0x2A5170)
    
    SPLAT_BEGIN_SEG(data_2A5170, 0x2A5170, 0x2A5170, )
        Yay0_2A5170_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A5170.Yay0.o(.data);
    SPLAT_END_SEG(data_2A5170, 0x2A5490)
    
    SPLAT_BEGIN_SEG(data_2A5490, 0x2A5490, 0x2A5490, )
        Yay0_2A5490_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A5490.Yay0.o(.data);
    SPLAT_END_SEG(data_2A5490, 0x2A57D0)
    
    SPLAT_BEGIN_SEG(data_2A57D0, 0x2A57D0, 0x2A57D0, )
        Yay0_2A57D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A57D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2A57D0, 0x2A5C30)
    
    SPLAT_BEGIN_SEG(data_2A5C30, 0x2A5C30, 0x2A5C30, )
        Yay0_2A5C30_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A5C30.Yay0.o(.data);
    SPLAT_END_SEG(data_2A5C30, 0x2A60B8)
    
    SPLAT_BEGIN_SEG(data_2A60B8, 0x2A60B8, 0x2A60B8, )
        Yay0_2A60B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A60B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2A60B8, 0x2A6568)
    
    SPLAT_BEGIN_SEG(data_2A6568, 0x2A6568, 0x2A6568, )
        Yay0_2A6568_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A6568.Yay0.o(.data);
    SPLAT_END_SEG(data_2A6568, 0x2A68E8)
    
    SPLAT_BEGIN_SEG(data_2A68E8, 0x2A68E8, 0x2A68E8, )
        Yay0_2A68E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A68E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2A68E8, 0x2A6D28)
    
    SPLAT_BEGIN_SEG(data_2A6D28, 0x2A6D28, 0x2A6D28, )
        Yay0_2A6D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A6D28.Yay0.o(.data);
    SPLAT_END_SEG(data_2A6D28, 0x2A7198)
    
    SPLAT_BEGIN_SEG(data_2A7198, 0x2A7198, 0x2A7198, )
        Yay0_2A7198_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A7198.Yay0.o(.data);
    SPLAT_END_SEG(data_2A7198, 0x2A74C8)
    
    SPLAT_BEGIN_SEG(data_2A74C8, 0x2A74C8, 0x2A74C8, )
        Yay0_2A74C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A74C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2A74C8, 0x2A7820)
    
    SPLAT_BEGIN_SEG(data_2A7820, 0x2A7820, 0x2A7820, )
        Yay0_2A7820_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A7820.Yay0.o(.data);
    SPLAT_END_SEG(data_2A7820, 0x2A7C38)
    
    SPLAT_BEGIN_SEG(data_2A7C38, 0x2A7C38, 0x2A7C38, )
        Yay0_2A7C38_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A7C38.Yay0.o(.data);
    SPLAT_END_SEG(data_2A7C38, 0x2A8118)
    
    SPLAT_BEGIN_SEG(data_2A8118, 0x2A8118, 0x2A8118, )
        Yay0_2A8118_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A8118.Yay0.o(.data);
    SPLAT_END_SEG(data_2A8118, 0x2A9488)
    
    SPLAT_BEGIN_SEG(data_2A9488, 0x2A9488, 0x2A9488, )
        Yay0_2A9488_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A9488.Yay0.o(.data);
    SPLAT_END_SEG(data_2A9488, 0x2A98A8)
    
    SPLAT_BEGIN_SEG(data_2A98A8, 0x2A98A8, 0x2A98A8, )
        Yay0_2A98A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A98A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2A98A8, 0x2A9930)
    
    SPLAT_BEGIN_SEG(data_2A9930, 0x2A9930, 0x2A9930, )
        Yay0_2A9930_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A9930.Yay0.o(.data);
    SPLAT_END_SEG(data_2A9930, 0x2A9A28)
    
    SPLAT_BEGIN_SEG(data_2A9A28, 0x2A9A28, 0x2A9A28, )
        Yay0_2A9A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A9A28.Yay0.o(.data);
    SPLAT_END_SEG(data_2A9A28, 0x2A9B08)
    
    SPLAT_BEGIN_SEG(data_2A9B08, 0x2A9B08, 0x2A9B08, )
        Yay0_2A9B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A9B08.Yay0.o(.data);
    SPLAT_END_SEG(data_2A9B08, 0x2A9C48)
    
    SPLAT_BEGIN_SEG(data_2A9C48, 0x2A9C48, 0x2A9C48, )
        Yay0_2A9C48_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A9C48.Yay0.o(.data);
    SPLAT_END_SEG(data_2A9C48, 0x2A9E60)
    
    SPLAT_BEGIN_SEG(data_2A9E60, 0x2A9E60, 0x2A9E60, )
        Yay0_2A9E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/2A9E60.Yay0.o(.data);
    SPLAT_END_SEG(data_2A9E60, 0x2AA068)
    
    SPLAT_BEGIN_SEG(data_2AA068, 0x2AA068, 0x2AA068, )
        Yay0_2AA068_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AA068.Yay0.o(.data);
    SPLAT_END_SEG(data_2AA068, 0x2AA2A0)
    
    SPLAT_BEGIN_SEG(data_2AA2A0, 0x2AA2A0, 0x2AA2A0, )
        Yay0_2AA2A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AA2A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2AA2A0, 0x2AA500)
    
    SPLAT_BEGIN_SEG(data_2AA500, 0x2AA500, 0x2AA500, )
        Yay0_2AA500_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AA500.Yay0.o(.data);
    SPLAT_END_SEG(data_2AA500, 0x2AA7C8)
    
    SPLAT_BEGIN_SEG(data_2AA7C8, 0x2AA7C8, 0x2AA7C8, )
        Yay0_2AA7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AA7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AA7C8, 0x2AAAF0)
    
    SPLAT_BEGIN_SEG(data_2AAAF0, 0x2AAAF0, 0x2AAAF0, )
        Yay0_2AAAF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AAAF0.Yay0.o(.data);
    SPLAT_END_SEG(data_2AAAF0, 0x2AADE8)
    
    SPLAT_BEGIN_SEG(data_2AADE8, 0x2AADE8, 0x2AADE8, )
        Yay0_2AADE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AADE8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AADE8, 0x2AB0F0)
    
    SPLAT_BEGIN_SEG(data_2AB0F0, 0x2AB0F0, 0x2AB0F0, )
        Yay0_2AB0F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AB0F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2AB0F0, 0x2AB378)
    
    SPLAT_BEGIN_SEG(data_2AB378, 0x2AB378, 0x2AB378, )
        Yay0_2AB378_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AB378.Yay0.o(.data);
    SPLAT_END_SEG(data_2AB378, 0x2AB590)
    
    SPLAT_BEGIN_SEG(data_2AB590, 0x2AB590, 0x2AB590, )
        Yay0_2AB590_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AB590.Yay0.o(.data);
    SPLAT_END_SEG(data_2AB590, 0x2AB998)
    
    SPLAT_BEGIN_SEG(data_2AB998, 0x2AB998, 0x2AB998, )
        Yay0_2AB998_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AB998.Yay0.o(.data);
    SPLAT_END_SEG(data_2AB998, 0x2ABE28)
    
    SPLAT_BEGIN_SEG(data_2ABE28, 0x2ABE28, 0x2ABE28, )
        Yay0_2ABE28_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ABE28.Yay0.o(.data);
    SPLAT_END_SEG(data_2ABE28, 0x2AC1D8)
    
    SPLAT_BEGIN_SEG(data_2AC1D8, 0x2AC1D8, 0x2AC1D8, )
        Yay0_2AC1D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AC1D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AC1D8, 0x2AC318)
    
    SPLAT_BEGIN_SEG(data_2AC318, 0x2AC318, 0x2AC318, )
        Yay0_2AC318_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AC318.Yay0.o(.data);
    SPLAT_END_SEG(data_2AC318, 0x2AC4B0)
    
    SPLAT_BEGIN_SEG(data_2AC4B0, 0x2AC4B0, 0x2AC4B0, )
        Yay0_2AC4B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AC4B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2AC4B0, 0x2AC650)
    
    SPLAT_BEGIN_SEG(data_2AC650, 0x2AC650, 0x2AC650, )
        Yay0_2AC650_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AC650.Yay0.o(.data);
    SPLAT_END_SEG(data_2AC650, 0x2AC7F8)
    
    SPLAT_BEGIN_SEG(data_2AC7F8, 0x2AC7F8, 0x2AC7F8, )
        Yay0_2AC7F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AC7F8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AC7F8, 0x2AC960)
    
    SPLAT_BEGIN_SEG(data_2AC960, 0x2AC960, 0x2AC960, )
        Yay0_2AC960_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AC960.Yay0.o(.data);
    SPLAT_END_SEG(data_2AC960, 0x2ACAE8)
    
    SPLAT_BEGIN_SEG(data_2ACAE8, 0x2ACAE8, 0x2ACAE8, )
        Yay0_2ACAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ACAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_2ACAE8, 0x2ACC48)
    
    SPLAT_BEGIN_SEG(data_2ACC48, 0x2ACC48, 0x2ACC48, )
        Yay0_2ACC48_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ACC48.Yay0.o(.data);
    SPLAT_END_SEG(data_2ACC48, 0x2ACD98)
    
    SPLAT_BEGIN_SEG(data_2ACD98, 0x2ACD98, 0x2ACD98, )
        Yay0_2ACD98_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ACD98.Yay0.o(.data);
    SPLAT_END_SEG(data_2ACD98, 0x2ACEA0)
    
    SPLAT_BEGIN_SEG(data_2ACEA0, 0x2ACEA0, 0x2ACEA0, )
        Yay0_2ACEA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ACEA0.Yay0.o(.data);
    SPLAT_END_SEG(data_2ACEA0, 0x2ACFB0)
    
    SPLAT_BEGIN_SEG(data_2ACFB0, 0x2ACFB0, 0x2ACFB0, )
        Yay0_2ACFB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ACFB0.Yay0.o(.data);
    SPLAT_END_SEG(data_2ACFB0, 0x2AD1A8)
    
    SPLAT_BEGIN_SEG(data_2AD1A8, 0x2AD1A8, 0x2AD1A8, )
        Yay0_2AD1A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AD1A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AD1A8, 0x2AD498)
    
    SPLAT_BEGIN_SEG(data_2AD498, 0x2AD498, 0x2AD498, )
        Yay0_2AD498_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AD498.Yay0.o(.data);
    SPLAT_END_SEG(data_2AD498, 0x2AD6B8)
    
    SPLAT_BEGIN_SEG(data_2AD6B8, 0x2AD6B8, 0x2AD6B8, )
        Yay0_2AD6B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AD6B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AD6B8, 0x2AD950)
    
    SPLAT_BEGIN_SEG(data_2AD950, 0x2AD950, 0x2AD950, )
        Yay0_2AD950_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AD950.Yay0.o(.data);
    SPLAT_END_SEG(data_2AD950, 0x2ADC20)
    
    SPLAT_BEGIN_SEG(data_2ADC20, 0x2ADC20, 0x2ADC20, )
        Yay0_2ADC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ADC20.Yay0.o(.data);
    SPLAT_END_SEG(data_2ADC20, 0x2ADE90)
    
    SPLAT_BEGIN_SEG(data_2ADE90, 0x2ADE90, 0x2ADE90, )
        Yay0_2ADE90_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ADE90.Yay0.o(.data);
    SPLAT_END_SEG(data_2ADE90, 0x2AE0F8)
    
    SPLAT_BEGIN_SEG(data_2AE0F8, 0x2AE0F8, 0x2AE0F8, )
        Yay0_2AE0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AE0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_2AE0F8, 0x2AE338)
    
    SPLAT_BEGIN_SEG(data_2AE338, 0x2AE338, 0x2AE338, )
        Yay0_2AE338_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AE338.Yay0.o(.data);
    SPLAT_END_SEG(data_2AE338, 0x2AE538)
    
    SPLAT_BEGIN_SEG(data_2AE538, 0x2AE538, 0x2AE538, )
        Yay0_2AE538_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AE538.Yay0.o(.data);
    SPLAT_END_SEG(data_2AE538, 0x2AE6E0)
    
    SPLAT_BEGIN_SEG(data_2AE6E0, 0x2AE6E0, 0x2AE6E0, )
        Yay0_2AE6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AE6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_2AE6E0, 0x2AE898)
    
    SPLAT_BEGIN_SEG(data_2AE898, 0x2AE898, 0x2AE898, )
        Yay0_2AE898_Yay0 = .;
        BUILD_DIR/bin/Yay0/2AE898.Yay0.o(.data);
    SPLAT_END_SEG(data_2AE898, 0x2B0328)
    
    SPLAT_BEGIN_SEG(data_2B0328, 0x2B0328, 0x2B0328, )
        Yay0_2B0328_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B0328.Yay0.o(.data);
    SPLAT_END_SEG(data_2B0328, 0x2B23F8)
    
    SPLAT_BEGIN_SEG(data_2B23F8, 0x2B23F8, 0x2B23F8, )
        Yay0_2B23F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B23F8.Yay0.o(.data);
    SPLAT_END_SEG(data_2B23F8, 0x2B2608)
    
    SPLAT_BEGIN_SEG(data_2B2608, 0x2B2608, 0x2B2608, )
        Yay0_2B2608_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B2608.Yay0.o(.data);
    SPLAT_END_SEG(data_2B2608, 0x2B2808)
    
    SPLAT_BEGIN_SEG(data_2B2808, 0x2B2808, 0x2B2808, )
        Yay0_2B2808_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B2808.Yay0.o(.data);
    SPLAT_END_SEG(data_2B2808, 0x2B39E8)
    
    SPLAT_BEGIN_SEG(data_2B39E8, 0x2B39E8, 0x2B39E8, )
        Yay0_2B39E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B39E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2B39E8, 0x2B4690)
    
    SPLAT_BEGIN_SEG(data_2B4690, 0x2B4690, 0x2B4690, )
        Yay0_2B4690_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B4690.Yay0.o(.data);
    SPLAT_END_SEG(data_2B4690, 0x2B5B08)
    
    SPLAT_BEGIN_SEG(data_2B5B08, 0x2B5B08, 0x2B5B08, )
        Yay0_2B5B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B5B08.Yay0.o(.data);
    SPLAT_END_SEG(data_2B5B08, 0x2B5BC0)
    
    SPLAT_BEGIN_SEG(data_2B5BC0, 0x2B5BC0, 0x2B5BC0, )
        Yay0_2B5BC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B5BC0.Yay0.o(.data);
    SPLAT_END_SEG(data_2B5BC0, 0x2B5DA8)
    
    SPLAT_BEGIN_SEG(data_2B5DA8, 0x2B5DA8, 0x2B5DA8, )
        Yay0_2B5DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B5DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_2B5DA8, 0x2B60C0)
    
    SPLAT_BEGIN_SEG(data_2B60C0, 0x2B60C0, 0x2B60C0, )
        Yay0_2B60C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B60C0.Yay0.o(.data);
    SPLAT_END_SEG(data_2B60C0, 0x2B62F8)
    
    SPLAT_BEGIN_SEG(data_2B62F8, 0x2B62F8, 0x2B62F8, )
        Yay0_2B62F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B62F8.Yay0.o(.data);
    SPLAT_END_SEG(data_2B62F8, 0x2B6568)
    
    SPLAT_BEGIN_SEG(data_2B6568, 0x2B6568, 0x2B6568, )
        Yay0_2B6568_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B6568.Yay0.o(.data);
    SPLAT_END_SEG(data_2B6568, 0x2B8228)
    
    SPLAT_BEGIN_SEG(data_2B8228, 0x2B8228, 0x2B8228, )
        Yay0_2B8228_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B8228.Yay0.o(.data);
    SPLAT_END_SEG(data_2B8228, 0x2B9198)
    
    SPLAT_BEGIN_SEG(data_2B9198, 0x2B9198, 0x2B9198, )
        Yay0_2B9198_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B9198.Yay0.o(.data);
    SPLAT_END_SEG(data_2B9198, 0x2B9ED8)
    
    SPLAT_BEGIN_SEG(data_2B9ED8, 0x2B9ED8, 0x2B9ED8, )
        Yay0_2B9ED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B9ED8.Yay0.o(.data);
    SPLAT_END_SEG(data_2B9ED8, 0x2B9FB0)
    
    SPLAT_BEGIN_SEG(data_2B9FB0, 0x2B9FB0, 0x2B9FB0, )
        Yay0_2B9FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B9FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_2B9FB0, 0x2B9FD8)
    
    SPLAT_BEGIN_SEG(data_2B9FD8, 0x2B9FD8, 0x2B9FD8, )
        Yay0_2B9FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2B9FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_2B9FD8, 0x2BA040)
    
    SPLAT_BEGIN_SEG(data_2BA040, 0x2BA040, 0x2BA040, )
        Yay0_2BA040_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BA040.Yay0.o(.data);
    SPLAT_END_SEG(data_2BA040, 0x2BA4D0)
    
    SPLAT_BEGIN_SEG(data_2BA4D0, 0x2BA4D0, 0x2BA4D0, )
        Yay0_2BA4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BA4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BA4D0, 0x2BA528)
    
    SPLAT_BEGIN_SEG(data_2BA528, 0x2BA528, 0x2BA528, )
        Yay0_2BA528_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BA528.Yay0.o(.data);
    SPLAT_END_SEG(data_2BA528, 0x2BA950)
    
    SPLAT_BEGIN_SEG(data_2BA950, 0x2BA950, 0x2BA950, )
        Yay0_2BA950_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BA950.Yay0.o(.data);
    SPLAT_END_SEG(data_2BA950, 0x2BAA10)
    
    SPLAT_BEGIN_SEG(data_2BAA10, 0x2BAA10, 0x2BAA10, )
        Yay0_2BAA10_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BAA10.Yay0.o(.data);
    SPLAT_END_SEG(data_2BAA10, 0x2BAA90)
    
    SPLAT_BEGIN_SEG(data_2BAA90, 0x2BAA90, 0x2BAA90, )
        Yay0_2BAA90_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BAA90.Yay0.o(.data);
    SPLAT_END_SEG(data_2BAA90, 0x2BAAE0)
    
    SPLAT_BEGIN_SEG(data_2BAAE0, 0x2BAAE0, 0x2BAAE0, )
        Yay0_2BAAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BAAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BAAE0, 0x2BAB68)
    
    SPLAT_BEGIN_SEG(data_2BAB68, 0x2BAB68, 0x2BAB68, )
        Yay0_2BAB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BAB68.Yay0.o(.data);
    SPLAT_END_SEG(data_2BAB68, 0x2BABE0)
    
    SPLAT_BEGIN_SEG(data_2BABE0, 0x2BABE0, 0x2BABE0, )
        Yay0_2BABE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BABE0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BABE0, 0x2BAC48)
    
    SPLAT_BEGIN_SEG(data_2BAC48, 0x2BAC48, 0x2BAC48, )
        Yay0_2BAC48_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BAC48.Yay0.o(.data);
    SPLAT_END_SEG(data_2BAC48, 0x2BACA0)
    
    SPLAT_BEGIN_SEG(data_2BACA0, 0x2BACA0, 0x2BACA0, )
        Yay0_2BACA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BACA0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BACA0, 0x2BB038)
    
    SPLAT_BEGIN_SEG(data_2BB038, 0x2BB038, 0x2BB038, )
        Yay0_2BB038_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BB038.Yay0.o(.data);
    SPLAT_END_SEG(data_2BB038, 0x2BB388)
    
    SPLAT_BEGIN_SEG(data_2BB388, 0x2BB388, 0x2BB388, )
        Yay0_2BB388_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BB388.Yay0.o(.data);
    SPLAT_END_SEG(data_2BB388, 0x2BB7B0)
    
    SPLAT_BEGIN_SEG(data_2BB7B0, 0x2BB7B0, 0x2BB7B0, )
        Yay0_2BB7B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BB7B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BB7B0, 0x2BBB58)
    
    SPLAT_BEGIN_SEG(data_2BBB58, 0x2BBB58, 0x2BBB58, )
        Yay0_2BBB58_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BBB58.Yay0.o(.data);
    SPLAT_END_SEG(data_2BBB58, 0x2BBE40)
    
    SPLAT_BEGIN_SEG(data_2BBE40, 0x2BBE40, 0x2BBE40, )
        Yay0_2BBE40_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BBE40.Yay0.o(.data);
    SPLAT_END_SEG(data_2BBE40, 0x2BC188)
    
    SPLAT_BEGIN_SEG(data_2BC188, 0x2BC188, 0x2BC188, )
        Yay0_2BC188_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BC188.Yay0.o(.data);
    SPLAT_END_SEG(data_2BC188, 0x2BC438)
    
    SPLAT_BEGIN_SEG(data_2BC438, 0x2BC438, 0x2BC438, )
        Yay0_2BC438_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BC438.Yay0.o(.data);
    SPLAT_END_SEG(data_2BC438, 0x2BC700)
    
    SPLAT_BEGIN_SEG(data_2BC700, 0x2BC700, 0x2BC700, )
        Yay0_2BC700_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BC700.Yay0.o(.data);
    SPLAT_END_SEG(data_2BC700, 0x2BC9A0)
    
    SPLAT_BEGIN_SEG(data_2BC9A0, 0x2BC9A0, 0x2BC9A0, )
        Yay0_2BC9A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BC9A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BC9A0, 0x2BCAE0)
    
    SPLAT_BEGIN_SEG(data_2BCAE0, 0x2BCAE0, 0x2BCAE0, )
        Yay0_2BCAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BCAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BCAE0, 0x2BCC08)
    
    SPLAT_BEGIN_SEG(data_2BCC08, 0x2BCC08, 0x2BCC08, )
        Yay0_2BCC08_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BCC08.Yay0.o(.data);
    SPLAT_END_SEG(data_2BCC08, 0x2BCD40)
    
    SPLAT_BEGIN_SEG(data_2BCD40, 0x2BCD40, 0x2BCD40, )
        Yay0_2BCD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BCD40.Yay0.o(.data);
    SPLAT_END_SEG(data_2BCD40, 0x2BCE58)
    
    SPLAT_BEGIN_SEG(data_2BCE58, 0x2BCE58, 0x2BCE58, )
        Yay0_2BCE58_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BCE58.Yay0.o(.data);
    SPLAT_END_SEG(data_2BCE58, 0x2BDCD0)
    
    SPLAT_BEGIN_SEG(data_2BDCD0, 0x2BDCD0, 0x2BDCD0, )
        Yay0_2BDCD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BDCD0.Yay0.o(.data);
    SPLAT_END_SEG(data_2BDCD0, 0x2BF828)
    
    SPLAT_BEGIN_SEG(data_2BF828, 0x2BF828, 0x2BF828, )
        Yay0_2BF828_Yay0 = .;
        BUILD_DIR/bin/Yay0/2BF828.Yay0.o(.data);
    SPLAT_END_SEG(data_2BF828, 0x2C13A8)
    
    SPLAT_BEGIN_SEG(data_2C13A8, 0x2C13A8, 0x2C13A8, )
        Yay0_2C13A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C13A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2C13A8, 0x2C2F58)
    
    SPLAT_BEGIN_SEG(data_2C2F58, 0x2C2F58, 0x2C2F58, )
        Yay0_2C2F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C2F58.Yay0.o(.data);
    SPLAT_END_SEG(data_2C2F58, 0x2C4C10)
    
    SPLAT_BEGIN_SEG(data_2C4C10, 0x2C4C10, 0x2C4C10, )
        Yay0_2C4C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C4C10.Yay0.o(.data);
    SPLAT_END_SEG(data_2C4C10, 0x2C6708)
    
    SPLAT_BEGIN_SEG(data_2C6708, 0x2C6708, 0x2C6708, )
        Yay0_2C6708_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C6708.Yay0.o(.data);
    SPLAT_END_SEG(data_2C6708, 0x2C82D0)
    
    SPLAT_BEGIN_SEG(data_2C82D0, 0x2C82D0, 0x2C82D0, )
        Yay0_2C82D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C82D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2C82D0, 0x2C8660)
    
    SPLAT_BEGIN_SEG(data_2C8660, 0x2C8660, 0x2C8660, )
        Yay0_2C8660_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C8660.Yay0.o(.data);
    SPLAT_END_SEG(data_2C8660, 0x2C8A28)
    
    SPLAT_BEGIN_SEG(data_2C8A28, 0x2C8A28, 0x2C8A28, )
        Yay0_2C8A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C8A28.Yay0.o(.data);
    SPLAT_END_SEG(data_2C8A28, 0x2C8D68)
    
    SPLAT_BEGIN_SEG(data_2C8D68, 0x2C8D68, 0x2C8D68, )
        Yay0_2C8D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C8D68.Yay0.o(.data);
    SPLAT_END_SEG(data_2C8D68, 0x2C8F10)
    
    SPLAT_BEGIN_SEG(data_2C8F10, 0x2C8F10, 0x2C8F10, )
        Yay0_2C8F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C8F10.Yay0.o(.data);
    SPLAT_END_SEG(data_2C8F10, 0x2C90B0)
    
    SPLAT_BEGIN_SEG(data_2C90B0, 0x2C90B0, 0x2C90B0, )
        Yay0_2C90B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C90B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2C90B0, 0x2C9270)
    
    SPLAT_BEGIN_SEG(data_2C9270, 0x2C9270, 0x2C9270, )
        Yay0_2C9270_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C9270.Yay0.o(.data);
    SPLAT_END_SEG(data_2C9270, 0x2C97D8)
    
    SPLAT_BEGIN_SEG(data_2C97D8, 0x2C97D8, 0x2C97D8, )
        Yay0_2C97D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C97D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2C97D8, 0x2C9DD8)
    
    SPLAT_BEGIN_SEG(data_2C9DD8, 0x2C9DD8, 0x2C9DD8, )
        Yay0_2C9DD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2C9DD8.Yay0.o(.data);
    SPLAT_END_SEG(data_2C9DD8, 0x2CA250)
    
    SPLAT_BEGIN_SEG(data_2CA250, 0x2CA250, 0x2CA250, )
        Yay0_2CA250_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CA250.Yay0.o(.data);
    SPLAT_END_SEG(data_2CA250, 0x2CA6E8)
    
    SPLAT_BEGIN_SEG(data_2CA6E8, 0x2CA6E8, 0x2CA6E8, )
        Yay0_2CA6E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CA6E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2CA6E8, 0x2CAC50)
    
    SPLAT_BEGIN_SEG(data_2CAC50, 0x2CAC50, 0x2CAC50, )
        Yay0_2CAC50_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CAC50.Yay0.o(.data);
    SPLAT_END_SEG(data_2CAC50, 0x2CB6B8)
    
    SPLAT_BEGIN_SEG(data_2CB6B8, 0x2CB6B8, 0x2CB6B8, )
        Yay0_2CB6B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CB6B8.Yay0.o(.data);
    SPLAT_END_SEG(data_2CB6B8, 0x2CC100)
    
    SPLAT_BEGIN_SEG(data_2CC100, 0x2CC100, 0x2CC100, )
        Yay0_2CC100_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CC100.Yay0.o(.data);
    SPLAT_END_SEG(data_2CC100, 0x2CD200)
    
    SPLAT_BEGIN_SEG(data_2CD200, 0x2CD200, 0x2CD200, )
        Yay0_2CD200_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CD200.Yay0.o(.data);
    SPLAT_END_SEG(data_2CD200, 0x2CECB0)
    
    SPLAT_BEGIN_SEG(data_2CECB0, 0x2CECB0, 0x2CECB0, )
        Yay0_2CECB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2CECB0.Yay0.o(.data);
    SPLAT_END_SEG(data_2CECB0, 0x2D2858)
    
    SPLAT_BEGIN_SEG(data_2D2858, 0x2D2858, 0x2D2858, )
        Yay0_2D2858_Yay0 = .;
        BUILD_DIR/bin/Yay0/2D2858.Yay0.o(.data);
    SPLAT_END_SEG(data_2D2858, 0x2D3B08)
    
    SPLAT_BEGIN_SEG(data_2D3B08, 0x2D3B08, 0x2D3B08, )
        Yay0_2D3B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/2D3B08.Yay0.o(.data);
    SPLAT_END_SEG(data_2D3B08, 0x2D41D8)
    
    SPLAT_BEGIN_SEG(data_2D41D8, 0x2D41D8, 0x2D41D8, )
        Yay0_2D41D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2D41D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2D41D8, 0x2D5160)
    
    SPLAT_BEGIN_SEG(data_2D5160, 0x2D5160, 0x2D5160, )
        Yay0_2D5160_Yay0 = .;
        BUILD_DIR/bin/Yay0/2D5160.Yay0.o(.data);
    SPLAT_END_SEG(data_2D5160, 0x2D83B0)
    
    SPLAT_BEGIN_SEG(data_2D83B0, 0x2D83B0, 0x2D83B0, )
        Yay0_2D83B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2D83B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2D83B0, 0x2D8E08)
    
    SPLAT_BEGIN_SEG(data_2D8E08, 0x2D8E08, 0x2D8E08, )
        Yay0_2D8E08_Yay0 = .;
        BUILD_DIR/bin/Yay0/2D8E08.Yay0.o(.data);
    SPLAT_END_SEG(data_2D8E08, 0x2DAC10)
    
    SPLAT_BEGIN_SEG(data_2DAC10, 0x2DAC10, 0x2DAC10, )
        Yay0_2DAC10_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DAC10.Yay0.o(.data);
    SPLAT_END_SEG(data_2DAC10, 0x2DBE68)
    
    SPLAT_BEGIN_SEG(data_2DBE68, 0x2DBE68, 0x2DBE68, )
        Yay0_2DBE68_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DBE68.Yay0.o(.data);
    SPLAT_END_SEG(data_2DBE68, 0x2DBEC0)
    
    SPLAT_BEGIN_SEG(data_2DBEC0, 0x2DBEC0, 0x2DBEC0, )
        Yay0_2DBEC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DBEC0.Yay0.o(.data);
    SPLAT_END_SEG(data_2DBEC0, 0x2DC158)
    
    SPLAT_BEGIN_SEG(data_2DC158, 0x2DC158, 0x2DC158, )
        Yay0_2DC158_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DC158.Yay0.o(.data);
    SPLAT_END_SEG(data_2DC158, 0x2DC628)
    
    SPLAT_BEGIN_SEG(data_2DC628, 0x2DC628, 0x2DC628, )
        Yay0_2DC628_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DC628.Yay0.o(.data);
    SPLAT_END_SEG(data_2DC628, 0x2DCBE0)
    
    SPLAT_BEGIN_SEG(data_2DCBE0, 0x2DCBE0, 0x2DCBE0, )
        Yay0_2DCBE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DCBE0.Yay0.o(.data);
    SPLAT_END_SEG(data_2DCBE0, 0x2DD198)
    
    SPLAT_BEGIN_SEG(data_2DD198, 0x2DD198, 0x2DD198, )
        Yay0_2DD198_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DD198.Yay0.o(.data);
    SPLAT_END_SEG(data_2DD198, 0x2DD658)
    
    SPLAT_BEGIN_SEG(data_2DD658, 0x2DD658, 0x2DD658, )
        Yay0_2DD658_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DD658.Yay0.o(.data);
    SPLAT_END_SEG(data_2DD658, 0x2DDC30)
    
    SPLAT_BEGIN_SEG(data_2DDC30, 0x2DDC30, 0x2DDC30, )
        Yay0_2DDC30_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DDC30.Yay0.o(.data);
    SPLAT_END_SEG(data_2DDC30, 0x2DE1F0)
    
    SPLAT_BEGIN_SEG(data_2DE1F0, 0x2DE1F0, 0x2DE1F0, )
        Yay0_2DE1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DE1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2DE1F0, 0x2DE740)
    
    SPLAT_BEGIN_SEG(data_2DE740, 0x2DE740, 0x2DE740, )
        Yay0_2DE740_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DE740.Yay0.o(.data);
    SPLAT_END_SEG(data_2DE740, 0x2DEB28)
    
    SPLAT_BEGIN_SEG(data_2DEB28, 0x2DEB28, 0x2DEB28, )
        Yay0_2DEB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DEB28.Yay0.o(.data);
    SPLAT_END_SEG(data_2DEB28, 0x2DF230)
    
    SPLAT_BEGIN_SEG(data_2DF230, 0x2DF230, 0x2DF230, )
        Yay0_2DF230_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DF230.Yay0.o(.data);
    SPLAT_END_SEG(data_2DF230, 0x2DFD38)
    
    SPLAT_BEGIN_SEG(data_2DFD38, 0x2DFD38, 0x2DFD38, )
        Yay0_2DFD38_Yay0 = .;
        BUILD_DIR/bin/Yay0/2DFD38.Yay0.o(.data);
    SPLAT_END_SEG(data_2DFD38, 0x2E0220)
    
    SPLAT_BEGIN_SEG(data_2E0220, 0x2E0220, 0x2E0220, )
        Yay0_2E0220_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E0220.Yay0.o(.data);
    SPLAT_END_SEG(data_2E0220, 0x2E0768)
    
    SPLAT_BEGIN_SEG(data_2E0768, 0x2E0768, 0x2E0768, )
        Yay0_2E0768_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E0768.Yay0.o(.data);
    SPLAT_END_SEG(data_2E0768, 0x2E13A8)
    
    SPLAT_BEGIN_SEG(data_2E13A8, 0x2E13A8, 0x2E13A8, )
        Yay0_2E13A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E13A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E13A8, 0x2E1728)
    
    SPLAT_BEGIN_SEG(data_2E1728, 0x2E1728, 0x2E1728, )
        Yay0_2E1728_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E1728.Yay0.o(.data);
    SPLAT_END_SEG(data_2E1728, 0x2E1890)
    
    SPLAT_BEGIN_SEG(data_2E1890, 0x2E1890, 0x2E1890, )
        Yay0_2E1890_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E1890.Yay0.o(.data);
    SPLAT_END_SEG(data_2E1890, 0x2E18E8)
    
    SPLAT_BEGIN_SEG(data_2E18E8, 0x2E18E8, 0x2E18E8, )
        Yay0_2E18E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E18E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E18E8, 0x2E1ED0)
    
    SPLAT_BEGIN_SEG(data_2E1ED0, 0x2E1ED0, 0x2E1ED0, )
        Yay0_2E1ED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E1ED0.Yay0.o(.data);
    SPLAT_END_SEG(data_2E1ED0, 0x2E2230)
    
    SPLAT_BEGIN_SEG(data_2E2230, 0x2E2230, 0x2E2230, )
        Yay0_2E2230_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E2230.Yay0.o(.data);
    SPLAT_END_SEG(data_2E2230, 0x2E2508)
    
    SPLAT_BEGIN_SEG(data_2E2508, 0x2E2508, 0x2E2508, )
        Yay0_2E2508_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E2508.Yay0.o(.data);
    SPLAT_END_SEG(data_2E2508, 0x2E2790)
    
    SPLAT_BEGIN_SEG(data_2E2790, 0x2E2790, 0x2E2790, )
        Yay0_2E2790_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E2790.Yay0.o(.data);
    SPLAT_END_SEG(data_2E2790, 0x2E2A48)
    
    SPLAT_BEGIN_SEG(data_2E2A48, 0x2E2A48, 0x2E2A48, )
        Yay0_2E2A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E2A48.Yay0.o(.data);
    SPLAT_END_SEG(data_2E2A48, 0x2E2C78)
    
    SPLAT_BEGIN_SEG(data_2E2C78, 0x2E2C78, 0x2E2C78, )
        Yay0_2E2C78_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E2C78.Yay0.o(.data);
    SPLAT_END_SEG(data_2E2C78, 0x2E3098)
    
    SPLAT_BEGIN_SEG(data_2E3098, 0x2E3098, 0x2E3098, )
        Yay0_2E3098_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E3098.Yay0.o(.data);
    SPLAT_END_SEG(data_2E3098, 0x2E30D8)
    
    SPLAT_BEGIN_SEG(data_2E30D8, 0x2E30D8, 0x2E30D8, )
        Yay0_2E30D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E30D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E30D8, 0x2E3238)
    
    SPLAT_BEGIN_SEG(data_2E3238, 0x2E3238, 0x2E3238, )
        Yay0_2E3238_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E3238.Yay0.o(.data);
    SPLAT_END_SEG(data_2E3238, 0x2E3480)
    
    SPLAT_BEGIN_SEG(data_2E3480, 0x2E3480, 0x2E3480, )
        Yay0_2E3480_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E3480.Yay0.o(.data);
    SPLAT_END_SEG(data_2E3480, 0x2E36A0)
    
    SPLAT_BEGIN_SEG(data_2E36A0, 0x2E36A0, 0x2E36A0, )
        Yay0_2E36A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E36A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2E36A0, 0x2E3858)
    
    SPLAT_BEGIN_SEG(data_2E3858, 0x2E3858, 0x2E3858, )
        Yay0_2E3858_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E3858.Yay0.o(.data);
    SPLAT_END_SEG(data_2E3858, 0x2E3A98)
    
    SPLAT_BEGIN_SEG(data_2E3A98, 0x2E3A98, 0x2E3A98, )
        Yay0_2E3A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E3A98.Yay0.o(.data);
    SPLAT_END_SEG(data_2E3A98, 0x2E3E68)
    
    SPLAT_BEGIN_SEG(data_2E3E68, 0x2E3E68, 0x2E3E68, )
        Yay0_2E3E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E3E68.Yay0.o(.data);
    SPLAT_END_SEG(data_2E3E68, 0x2E4190)
    
    SPLAT_BEGIN_SEG(data_2E4190, 0x2E4190, 0x2E4190, )
        Yay0_2E4190_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E4190.Yay0.o(.data);
    SPLAT_END_SEG(data_2E4190, 0x2E43A8)
    
    SPLAT_BEGIN_SEG(data_2E43A8, 0x2E43A8, 0x2E43A8, )
        Yay0_2E43A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E43A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E43A8, 0x2E46A8)
    
    SPLAT_BEGIN_SEG(data_2E46A8, 0x2E46A8, 0x2E46A8, )
        Yay0_2E46A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E46A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E46A8, 0x2E5888)
    
    SPLAT_BEGIN_SEG(data_2E5888, 0x2E5888, 0x2E5888, )
        Yay0_2E5888_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E5888.Yay0.o(.data);
    SPLAT_END_SEG(data_2E5888, 0x2E61C8)
    
    SPLAT_BEGIN_SEG(data_2E61C8, 0x2E61C8, 0x2E61C8, )
        Yay0_2E61C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E61C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E61C8, 0x2E6C40)
    
    SPLAT_BEGIN_SEG(data_2E6C40, 0x2E6C40, 0x2E6C40, )
        Yay0_2E6C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E6C40.Yay0.o(.data);
    SPLAT_END_SEG(data_2E6C40, 0x2E77D8)
    
    SPLAT_BEGIN_SEG(data_2E77D8, 0x2E77D8, 0x2E77D8, )
        Yay0_2E77D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E77D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E77D8, 0x2E82F8)
    
    SPLAT_BEGIN_SEG(data_2E82F8, 0x2E82F8, 0x2E82F8, )
        Yay0_2E82F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E82F8.Yay0.o(.data);
    SPLAT_END_SEG(data_2E82F8, 0x2E8EE0)
    
    SPLAT_BEGIN_SEG(data_2E8EE0, 0x2E8EE0, 0x2E8EE0, )
        Yay0_2E8EE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E8EE0.Yay0.o(.data);
    SPLAT_END_SEG(data_2E8EE0, 0x2E9C28)
    
    SPLAT_BEGIN_SEG(data_2E9C28, 0x2E9C28, 0x2E9C28, )
        Yay0_2E9C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/2E9C28.Yay0.o(.data);
    SPLAT_END_SEG(data_2E9C28, 0x2EA708)
    
    SPLAT_BEGIN_SEG(data_2EA708, 0x2EA708, 0x2EA708, )
        Yay0_2EA708_Yay0 = .;
        BUILD_DIR/bin/Yay0/2EA708.Yay0.o(.data);
    SPLAT_END_SEG(data_2EA708, 0x2EA748)
    
    SPLAT_BEGIN_SEG(data_2EA748, 0x2EA748, 0x2EA748, )
        Yay0_2EA748_Yay0 = .;
        BUILD_DIR/bin/Yay0/2EA748.Yay0.o(.data);
    SPLAT_END_SEG(data_2EA748, 0x2EA7A8)
    
    SPLAT_BEGIN_SEG(data_2EA7A8, 0x2EA7A8, 0x2EA7A8, )
        Yay0_2EA7A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2EA7A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2EA7A8, 0x2ECF98)
    
    SPLAT_BEGIN_SEG(data_2ECF98, 0x2ECF98, 0x2ECF98, )
        Yay0_2ECF98_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ECF98.Yay0.o(.data);
    SPLAT_END_SEG(data_2ECF98, 0x2ED288)
    
    SPLAT_BEGIN_SEG(data_2ED288, 0x2ED288, 0x2ED288, )
        Yay0_2ED288_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ED288.Yay0.o(.data);
    SPLAT_END_SEG(data_2ED288, 0x2ED598)
    
    SPLAT_BEGIN_SEG(data_2ED598, 0x2ED598, 0x2ED598, )
        Yay0_2ED598_Yay0 = .;
        BUILD_DIR/bin/Yay0/2ED598.Yay0.o(.data);
    SPLAT_END_SEG(data_2ED598, 0x2F1258)
    
    SPLAT_BEGIN_SEG(data_2F1258, 0x2F1258, 0x2F1258, )
        Yay0_2F1258_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F1258.Yay0.o(.data);
    SPLAT_END_SEG(data_2F1258, 0x2F1520)
    
    SPLAT_BEGIN_SEG(data_2F1520, 0x2F1520, 0x2F1520, )
        Yay0_2F1520_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F1520.Yay0.o(.data);
    SPLAT_END_SEG(data_2F1520, 0x2F1818)
    
    SPLAT_BEGIN_SEG(data_2F1818, 0x2F1818, 0x2F1818, )
        Yay0_2F1818_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F1818.Yay0.o(.data);
    SPLAT_END_SEG(data_2F1818, 0x2F2CA0)
    
    SPLAT_BEGIN_SEG(data_2F2CA0, 0x2F2CA0, 0x2F2CA0, )
        Yay0_2F2CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F2CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F2CA0, 0x2F36B0)
    
    SPLAT_BEGIN_SEG(data_2F36B0, 0x2F36B0, 0x2F36B0, )
        Yay0_2F36B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F36B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F36B0, 0x2F3968)
    
    SPLAT_BEGIN_SEG(data_2F3968, 0x2F3968, 0x2F3968, )
        Yay0_2F3968_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F3968.Yay0.o(.data);
    SPLAT_END_SEG(data_2F3968, 0x2F39A0)
    
    SPLAT_BEGIN_SEG(data_2F39A0, 0x2F39A0, 0x2F39A0, )
        Yay0_2F39A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F39A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F39A0, 0x2F3B68)
    
    SPLAT_BEGIN_SEG(data_2F3B68, 0x2F3B68, 0x2F3B68, )
        Yay0_2F3B68_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F3B68.Yay0.o(.data);
    SPLAT_END_SEG(data_2F3B68, 0x2F3EB0)
    
    SPLAT_BEGIN_SEG(data_2F3EB0, 0x2F3EB0, 0x2F3EB0, )
        Yay0_2F3EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F3EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F3EB0, 0x2F4088)
    
    SPLAT_BEGIN_SEG(data_2F4088, 0x2F4088, 0x2F4088, )
        Yay0_2F4088_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F4088.Yay0.o(.data);
    SPLAT_END_SEG(data_2F4088, 0x2F4AD0)
    
    SPLAT_BEGIN_SEG(data_2F4AD0, 0x2F4AD0, 0x2F4AD0, )
        Yay0_2F4AD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F4AD0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F4AD0, 0x2F4FB0)
    
    SPLAT_BEGIN_SEG(data_2F4FB0, 0x2F4FB0, 0x2F4FB0, )
        Yay0_2F4FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F4FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F4FB0, 0x2F5240)
    
    SPLAT_BEGIN_SEG(data_2F5240, 0x2F5240, 0x2F5240, )
        Yay0_2F5240_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F5240.Yay0.o(.data);
    SPLAT_END_SEG(data_2F5240, 0x2F52B0)
    
    SPLAT_BEGIN_SEG(data_2F52B0, 0x2F52B0, 0x2F52B0, )
        Yay0_2F52B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F52B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F52B0, 0x2F5338)
    
    SPLAT_BEGIN_SEG(data_2F5338, 0x2F5338, 0x2F5338, )
        Yay0_2F5338_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F5338.Yay0.o(.data);
    SPLAT_END_SEG(data_2F5338, 0x2F5A48)
    
    SPLAT_BEGIN_SEG(data_2F5A48, 0x2F5A48, 0x2F5A48, )
        Yay0_2F5A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F5A48.Yay0.o(.data);
    SPLAT_END_SEG(data_2F5A48, 0x2F60D8)
    
    SPLAT_BEGIN_SEG(data_2F60D8, 0x2F60D8, 0x2F60D8, )
        Yay0_2F60D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F60D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2F60D8, 0x2F6760)
    
    SPLAT_BEGIN_SEG(data_2F6760, 0x2F6760, 0x2F6760, )
        Yay0_2F6760_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F6760.Yay0.o(.data);
    SPLAT_END_SEG(data_2F6760, 0x2F6790)
    
    SPLAT_BEGIN_SEG(data_2F6790, 0x2F6790, 0x2F6790, )
        Yay0_2F6790_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F6790.Yay0.o(.data);
    SPLAT_END_SEG(data_2F6790, 0x2F67C0)
    
    SPLAT_BEGIN_SEG(data_2F67C0, 0x2F67C0, 0x2F67C0, )
        Yay0_2F67C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F67C0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F67C0, 0x2F68A0)
    
    SPLAT_BEGIN_SEG(data_2F68A0, 0x2F68A0, 0x2F68A0, )
        Yay0_2F68A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F68A0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F68A0, 0x2F6C38)
    
    SPLAT_BEGIN_SEG(data_2F6C38, 0x2F6C38, 0x2F6C38, )
        Yay0_2F6C38_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F6C38.Yay0.o(.data);
    SPLAT_END_SEG(data_2F6C38, 0x2F7358)
    
    SPLAT_BEGIN_SEG(data_2F7358, 0x2F7358, 0x2F7358, )
        Yay0_2F7358_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F7358.Yay0.o(.data);
    SPLAT_END_SEG(data_2F7358, 0x2F7B10)
    
    SPLAT_BEGIN_SEG(data_2F7B10, 0x2F7B10, 0x2F7B10, )
        Yay0_2F7B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F7B10.Yay0.o(.data);
    SPLAT_END_SEG(data_2F7B10, 0x2F82E0)
    
    SPLAT_BEGIN_SEG(data_2F82E0, 0x2F82E0, 0x2F82E0, )
        Yay0_2F82E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F82E0.Yay0.o(.data);
    SPLAT_END_SEG(data_2F82E0, 0x2F8A70)
    
    SPLAT_BEGIN_SEG(data_2F8A70, 0x2F8A70, 0x2F8A70, )
        Yay0_2F8A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F8A70.Yay0.o(.data);
    SPLAT_END_SEG(data_2F8A70, 0x2F9288)
    
    SPLAT_BEGIN_SEG(data_2F9288, 0x2F9288, 0x2F9288, )
        Yay0_2F9288_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F9288.Yay0.o(.data);
    SPLAT_END_SEG(data_2F9288, 0x2F9A40)
    
    SPLAT_BEGIN_SEG(data_2F9A40, 0x2F9A40, 0x2F9A40, )
        Yay0_2F9A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/2F9A40.Yay0.o(.data);
    SPLAT_END_SEG(data_2F9A40, 0x2FA240)
    
    SPLAT_BEGIN_SEG(data_2FA240, 0x2FA240, 0x2FA240, )
        Yay0_2FA240_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FA240.Yay0.o(.data);
    SPLAT_END_SEG(data_2FA240, 0x2FA9A8)
    
    SPLAT_BEGIN_SEG(data_2FA9A8, 0x2FA9A8, 0x2FA9A8, )
        Yay0_2FA9A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FA9A8.Yay0.o(.data);
    SPLAT_END_SEG(data_2FA9A8, 0x2FB0C8)
    
    SPLAT_BEGIN_SEG(data_2FB0C8, 0x2FB0C8, 0x2FB0C8, )
        Yay0_2FB0C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FB0C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2FB0C8, 0x2FB830)
    
    SPLAT_BEGIN_SEG(data_2FB830, 0x2FB830, 0x2FB830, )
        Yay0_2FB830_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FB830.Yay0.o(.data);
    SPLAT_END_SEG(data_2FB830, 0x2FB870)
    
    SPLAT_BEGIN_SEG(data_2FB870, 0x2FB870, 0x2FB870, )
        Yay0_2FB870_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FB870.Yay0.o(.data);
    SPLAT_END_SEG(data_2FB870, 0x2FB8B0)
    
    SPLAT_BEGIN_SEG(data_2FB8B0, 0x2FB8B0, 0x2FB8B0, )
        Yay0_2FB8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FB8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_2FB8B0, 0x2FB8F0)
    
    SPLAT_BEGIN_SEG(data_2FB8F0, 0x2FB8F0, 0x2FB8F0, )
        Yay0_2FB8F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FB8F0.Yay0.o(.data);
    SPLAT_END_SEG(data_2FB8F0, 0x2FB990)
    
    SPLAT_BEGIN_SEG(data_2FB990, 0x2FB990, 0x2FB990, )
        Yay0_2FB990_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FB990.Yay0.o(.data);
    SPLAT_END_SEG(data_2FB990, 0x2FBDD0)
    
    SPLAT_BEGIN_SEG(data_2FBDD0, 0x2FBDD0, 0x2FBDD0, )
        Yay0_2FBDD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FBDD0.Yay0.o(.data);
    SPLAT_END_SEG(data_2FBDD0, 0x2FC3C8)
    
    SPLAT_BEGIN_SEG(data_2FC3C8, 0x2FC3C8, 0x2FC3C8, )
        Yay0_2FC3C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FC3C8.Yay0.o(.data);
    SPLAT_END_SEG(data_2FC3C8, 0x2FC9D0)
    
    SPLAT_BEGIN_SEG(data_2FC9D0, 0x2FC9D0, 0x2FC9D0, )
        Yay0_2FC9D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FC9D0.Yay0.o(.data);
    SPLAT_END_SEG(data_2FC9D0, 0x2FCFE0)
    
    SPLAT_BEGIN_SEG(data_2FCFE0, 0x2FCFE0, 0x2FCFE0, )
        Yay0_2FCFE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FCFE0.Yay0.o(.data);
    SPLAT_END_SEG(data_2FCFE0, 0x2FD540)
    
    SPLAT_BEGIN_SEG(data_2FD540, 0x2FD540, 0x2FD540, )
        Yay0_2FD540_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FD540.Yay0.o(.data);
    SPLAT_END_SEG(data_2FD540, 0x2FD948)
    
    SPLAT_BEGIN_SEG(data_2FD948, 0x2FD948, 0x2FD948, )
        Yay0_2FD948_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FD948.Yay0.o(.data);
    SPLAT_END_SEG(data_2FD948, 0x2FD988)
    
    SPLAT_BEGIN_SEG(data_2FD988, 0x2FD988, 0x2FD988, )
        Yay0_2FD988_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FD988.Yay0.o(.data);
    SPLAT_END_SEG(data_2FD988, 0x2FD9D8)
    
    SPLAT_BEGIN_SEG(data_2FD9D8, 0x2FD9D8, 0x2FD9D8, )
        Yay0_2FD9D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FD9D8.Yay0.o(.data);
    SPLAT_END_SEG(data_2FD9D8, 0x2FE0E8)
    
    SPLAT_BEGIN_SEG(data_2FE0E8, 0x2FE0E8, 0x2FE0E8, )
        Yay0_2FE0E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FE0E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2FE0E8, 0x2FE190)
    
    SPLAT_BEGIN_SEG(data_2FE190, 0x2FE190, 0x2FE190, )
        Yay0_2FE190_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FE190.Yay0.o(.data);
    SPLAT_END_SEG(data_2FE190, 0x2FE220)
    
    SPLAT_BEGIN_SEG(data_2FE220, 0x2FE220, 0x2FE220, )
        Yay0_2FE220_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FE220.Yay0.o(.data);
    SPLAT_END_SEG(data_2FE220, 0x2FE770)
    
    SPLAT_BEGIN_SEG(data_2FE770, 0x2FE770, 0x2FE770, )
        Yay0_2FE770_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FE770.Yay0.o(.data);
    SPLAT_END_SEG(data_2FE770, 0x2FE7E8)
    
    SPLAT_BEGIN_SEG(data_2FE7E8, 0x2FE7E8, 0x2FE7E8, )
        Yay0_2FE7E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/2FE7E8.Yay0.o(.data);
    SPLAT_END_SEG(data_2FE7E8, 0x303968)
    
    SPLAT_BEGIN_SEG(data_303968, 0x303968, 0x303968, )
        Yay0_303968_Yay0 = .;
        BUILD_DIR/bin/Yay0/303968.Yay0.o(.data);
    SPLAT_END_SEG(data_303968, 0x304E80)
    
    SPLAT_BEGIN_SEG(data_304E80, 0x304E80, 0x304E80, )
        Yay0_304E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/304E80.Yay0.o(.data);
    SPLAT_END_SEG(data_304E80, 0x309038)
    
    SPLAT_BEGIN_SEG(data_309038, 0x309038, 0x309038, )
        Yay0_309038_Yay0 = .;
        BUILD_DIR/bin/Yay0/309038.Yay0.o(.data);
    SPLAT_END_SEG(data_309038, 0x30EA78)
    
    SPLAT_BEGIN_SEG(data_30EA78, 0x30EA78, 0x30EA78, )
        Yay0_30EA78_Yay0 = .;
        BUILD_DIR/bin/Yay0/30EA78.Yay0.o(.data);
    SPLAT_END_SEG(data_30EA78, 0x3139B0)
    
    SPLAT_BEGIN_SEG(data_3139B0, 0x3139B0, 0x3139B0, )
        Yay0_3139B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3139B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3139B0, 0x31A310)
    
    SPLAT_BEGIN_SEG(data_31A310, 0x31A310, 0x31A310, )
        Yay0_31A310_Yay0 = .;
        BUILD_DIR/bin/Yay0/31A310.Yay0.o(.data);
    SPLAT_END_SEG(data_31A310, 0x31AD18)
    
    SPLAT_BEGIN_SEG(data_31AD18, 0x31AD18, 0x31AD18, )
        Yay0_31AD18_Yay0 = .;
        BUILD_DIR/bin/Yay0/31AD18.Yay0.o(.data);
    SPLAT_END_SEG(data_31AD18, 0x31C668)
    
    SPLAT_BEGIN_SEG(data_31C668, 0x31C668, 0x31C668, )
        Yay0_31C668_Yay0 = .;
        BUILD_DIR/bin/Yay0/31C668.Yay0.o(.data);
    SPLAT_END_SEG(data_31C668, 0x31E100)
    
    SPLAT_BEGIN_SEG(data_31E100, 0x31E100, 0x31E100, )
        Yay0_31E100_Yay0 = .;
        BUILD_DIR/bin/Yay0/31E100.Yay0.o(.data);
    SPLAT_END_SEG(data_31E100, 0x31F188)
    
    SPLAT_BEGIN_SEG(data_31F188, 0x31F188, 0x31F188, )
        Yay0_31F188_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F188.Yay0.o(.data);
    SPLAT_END_SEG(data_31F188, 0x31F330)
    
    SPLAT_BEGIN_SEG(data_31F330, 0x31F330, 0x31F330, )
        Yay0_31F330_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F330.Yay0.o(.data);
    SPLAT_END_SEG(data_31F330, 0x31F488)
    
    SPLAT_BEGIN_SEG(data_31F488, 0x31F488, 0x31F488, )
        Yay0_31F488_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F488.Yay0.o(.data);
    SPLAT_END_SEG(data_31F488, 0x31F720)
    
    SPLAT_BEGIN_SEG(data_31F720, 0x31F720, 0x31F720, )
        Yay0_31F720_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F720.Yay0.o(.data);
    SPLAT_END_SEG(data_31F720, 0x31F840)
    
    SPLAT_BEGIN_SEG(data_31F840, 0x31F840, 0x31F840, )
        Yay0_31F840_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F840.Yay0.o(.data);
    SPLAT_END_SEG(data_31F840, 0x31F930)
    
    SPLAT_BEGIN_SEG(data_31F930, 0x31F930, 0x31F930, )
        Yay0_31F930_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F930.Yay0.o(.data);
    SPLAT_END_SEG(data_31F930, 0x31F9B8)
    
    SPLAT_BEGIN_SEG(data_31F9B8, 0x31F9B8, 0x31F9B8, )
        Yay0_31F9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/31F9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_31F9B8, 0x320500)
    
    SPLAT_BEGIN_SEG(data_320500, 0x320500, 0x320500, )
        Yay0_320500_Yay0 = .;
        BUILD_DIR/bin/Yay0/320500.Yay0.o(.data);
    SPLAT_END_SEG(data_320500, 0x320530)
    
    SPLAT_BEGIN_SEG(data_320530, 0x320530, 0x320530, )
        Yay0_320530_Yay0 = .;
        BUILD_DIR/bin/Yay0/320530.Yay0.o(.data);
    SPLAT_END_SEG(data_320530, 0x320568)
    
    SPLAT_BEGIN_SEG(data_320568, 0x320568, 0x320568, )
        Yay0_320568_Yay0 = .;
        BUILD_DIR/bin/Yay0/320568.Yay0.o(.data);
    SPLAT_END_SEG(data_320568, 0x3205A0)
    
    SPLAT_BEGIN_SEG(data_3205A0, 0x3205A0, 0x3205A0, )
        Yay0_3205A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3205A0.Yay0.o(.data);
    SPLAT_END_SEG(data_3205A0, 0x3205E0)
    
    SPLAT_BEGIN_SEG(data_3205E0, 0x3205E0, 0x3205E0, )
        Yay0_3205E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3205E0.Yay0.o(.data);
    SPLAT_END_SEG(data_3205E0, 0x320638)
    
    SPLAT_BEGIN_SEG(data_320638, 0x320638, 0x320638, )
        Yay0_320638_Yay0 = .;
        BUILD_DIR/bin/Yay0/320638.Yay0.o(.data);
    SPLAT_END_SEG(data_320638, 0x3206B0)
    
    SPLAT_BEGIN_SEG(data_3206B0, 0x3206B0, 0x3206B0, )
        Yay0_3206B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3206B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3206B0, 0x320758)
    
    SPLAT_BEGIN_SEG(data_320758, 0x320758, 0x320758, )
        Yay0_320758_Yay0 = .;
        BUILD_DIR/bin/Yay0/320758.Yay0.o(.data);
    SPLAT_END_SEG(data_320758, 0x320810)
    
    SPLAT_BEGIN_SEG(data_320810, 0x320810, 0x320810, )
        Yay0_320810_Yay0 = .;
        BUILD_DIR/bin/Yay0/320810.Yay0.o(.data);
    SPLAT_END_SEG(data_320810, 0x322008)
    
    SPLAT_BEGIN_SEG(data_322008, 0x322008, 0x322008, )
        Yay0_322008_Yay0 = .;
        BUILD_DIR/bin/Yay0/322008.Yay0.o(.data);
    SPLAT_END_SEG(data_322008, 0x3220C0)
    
    SPLAT_BEGIN_SEG(data_3220C0, 0x3220C0, 0x3220C0, )
        Yay0_3220C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3220C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3220C0, 0x3221A0)
    
    SPLAT_BEGIN_SEG(data_3221A0, 0x3221A0, 0x3221A0, )
        Yay0_3221A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3221A0.Yay0.o(.data);
    SPLAT_END_SEG(data_3221A0, 0x322278)
    
    SPLAT_BEGIN_SEG(data_322278, 0x322278, 0x322278, )
        Yay0_322278_Yay0 = .;
        BUILD_DIR/bin/Yay0/322278.Yay0.o(.data);
    SPLAT_END_SEG(data_322278, 0x3230C0)
    
    SPLAT_BEGIN_SEG(data_3230C0, 0x3230C0, 0x3230C0, )
        Yay0_3230C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3230C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3230C0, 0x3232E0)
    
    SPLAT_BEGIN_SEG(data_3232E0, 0x3232E0, 0x3232E0, )
        Yay0_3232E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3232E0.Yay0.o(.data);
    SPLAT_END_SEG(data_3232E0, 0x3233F8)
    
    SPLAT_BEGIN_SEG(data_3233F8, 0x3233F8, 0x3233F8, )
        Yay0_3233F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3233F8.Yay0.o(.data);
    SPLAT_END_SEG(data_3233F8, 0x323770)
    
    SPLAT_BEGIN_SEG(data_323770, 0x323770, 0x323770, )
        Yay0_323770_Yay0 = .;
        BUILD_DIR/bin/Yay0/323770.Yay0.o(.data);
    SPLAT_END_SEG(data_323770, 0x323B08)
    
    SPLAT_BEGIN_SEG(data_323B08, 0x323B08, 0x323B08, )
        Yay0_323B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/323B08.Yay0.o(.data);
    SPLAT_END_SEG(data_323B08, 0x323B60)
    
    SPLAT_BEGIN_SEG(data_323B60, 0x323B60, 0x323B60, )
        Yay0_323B60_Yay0 = .;
        BUILD_DIR/bin/Yay0/323B60.Yay0.o(.data);
    SPLAT_END_SEG(data_323B60, 0x323EB8)
    
    SPLAT_BEGIN_SEG(data_323EB8, 0x323EB8, 0x323EB8, )
        Yay0_323EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/323EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_323EB8, 0x324100)
    
    SPLAT_BEGIN_SEG(data_324100, 0x324100, 0x324100, )
        Yay0_324100_Yay0 = .;
        BUILD_DIR/bin/Yay0/324100.Yay0.o(.data);
    SPLAT_END_SEG(data_324100, 0x324440)
    
    SPLAT_BEGIN_SEG(data_324440, 0x324440, 0x324440, )
        Yay0_324440_Yay0 = .;
        BUILD_DIR/bin/Yay0/324440.Yay0.o(.data);
    SPLAT_END_SEG(data_324440, 0x325170)
    
    SPLAT_BEGIN_SEG(data_325170, 0x325170, 0x325170, )
        Yay0_325170_Yay0 = .;
        BUILD_DIR/bin/Yay0/325170.Yay0.o(.data);
    SPLAT_END_SEG(data_325170, 0x326170)
    
    SPLAT_BEGIN_SEG(data_326170, 0x326170, 0x326170, )
        Yay0_326170_Yay0 = .;
        BUILD_DIR/bin/Yay0/326170.Yay0.o(.data);
    SPLAT_END_SEG(data_326170, 0x326EA8)
    
    SPLAT_BEGIN_SEG(data_326EA8, 0x326EA8, 0x326EA8, )
        Yay0_326EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/326EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_326EA8, 0x327EB0)
    
    SPLAT_BEGIN_SEG(data_327EB0, 0x327EB0, 0x327EB0, )
        Yay0_327EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/327EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_327EB0, 0x328BD8)
    
    SPLAT_BEGIN_SEG(data_328BD8, 0x328BD8, 0x328BD8, )
        Yay0_328BD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/328BD8.Yay0.o(.data);
    SPLAT_END_SEG(data_328BD8, 0x329BE0)
    
    SPLAT_BEGIN_SEG(data_329BE0, 0x329BE0, 0x329BE0, )
        Yay0_329BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/329BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_329BE0, 0x32A8E8)
    
    SPLAT_BEGIN_SEG(data_32A8E8, 0x32A8E8, 0x32A8E8, )
        Yay0_32A8E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/32A8E8.Yay0.o(.data);
    SPLAT_END_SEG(data_32A8E8, 0x32B998)
    
    SPLAT_BEGIN_SEG(data_32B998, 0x32B998, 0x32B998, )
        Yay0_32B998_Yay0 = .;
        BUILD_DIR/bin/Yay0/32B998.Yay0.o(.data);
    SPLAT_END_SEG(data_32B998, 0x32BD70)
    
    SPLAT_BEGIN_SEG(data_32BD70, 0x32BD70, 0x32BD70, )
        Yay0_32BD70_Yay0 = .;
        BUILD_DIR/bin/Yay0/32BD70.Yay0.o(.data);
    SPLAT_END_SEG(data_32BD70, 0x32C0F8)
    
    SPLAT_BEGIN_SEG(data_32C0F8, 0x32C0F8, 0x32C0F8, )
        Yay0_32C0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/32C0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_32C0F8, 0x32C448)
    
    SPLAT_BEGIN_SEG(data_32C448, 0x32C448, 0x32C448, )
        Yay0_32C448_Yay0 = .;
        BUILD_DIR/bin/Yay0/32C448.Yay0.o(.data);
    SPLAT_END_SEG(data_32C448, 0x32C710)
    
    SPLAT_BEGIN_SEG(data_32C710, 0x32C710, 0x32C710, )
        Yay0_32C710_Yay0 = .;
        BUILD_DIR/bin/Yay0/32C710.Yay0.o(.data);
    SPLAT_END_SEG(data_32C710, 0x32C9A0)
    
    SPLAT_BEGIN_SEG(data_32C9A0, 0x32C9A0, 0x32C9A0, )
        Yay0_32C9A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/32C9A0.Yay0.o(.data);
    SPLAT_END_SEG(data_32C9A0, 0x32CD28)
    
    SPLAT_BEGIN_SEG(data_32CD28, 0x32CD28, 0x32CD28, )
        Yay0_32CD28_Yay0 = .;
        BUILD_DIR/bin/Yay0/32CD28.Yay0.o(.data);
    SPLAT_END_SEG(data_32CD28, 0x32D220)
    
    SPLAT_BEGIN_SEG(data_32D220, 0x32D220, 0x32D220, )
        Yay0_32D220_Yay0 = .;
        BUILD_DIR/bin/Yay0/32D220.Yay0.o(.data);
    SPLAT_END_SEG(data_32D220, 0x32D800)
    
    SPLAT_BEGIN_SEG(data_32D800, 0x32D800, 0x32D800, )
        Yay0_32D800_Yay0 = .;
        BUILD_DIR/bin/Yay0/32D800.Yay0.o(.data);
    SPLAT_END_SEG(data_32D800, 0x32DDB0)
    
    SPLAT_BEGIN_SEG(data_32DDB0, 0x32DDB0, 0x32DDB0, )
        Yay0_32DDB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/32DDB0.Yay0.o(.data);
    SPLAT_END_SEG(data_32DDB0, 0x32E568)
    
    SPLAT_BEGIN_SEG(data_32E568, 0x32E568, 0x32E568, )
        Yay0_32E568_Yay0 = .;
        BUILD_DIR/bin/Yay0/32E568.Yay0.o(.data);
    SPLAT_END_SEG(data_32E568, 0x32EB80)
    
    SPLAT_BEGIN_SEG(data_32EB80, 0x32EB80, 0x32EB80, )
        Yay0_32EB80_Yay0 = .;
        BUILD_DIR/bin/Yay0/32EB80.Yay0.o(.data);
    SPLAT_END_SEG(data_32EB80, 0x32EC10)
    
    SPLAT_BEGIN_SEG(data_32EC10, 0x32EC10, 0x32EC10, )
        Yay0_32EC10_Yay0 = .;
        BUILD_DIR/bin/Yay0/32EC10.Yay0.o(.data);
    SPLAT_END_SEG(data_32EC10, 0x3307C0)
    
    SPLAT_BEGIN_SEG(data_3307C0, 0x3307C0, 0x3307C0, )
        Yay0_3307C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3307C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3307C0, 0x331800)
    
    SPLAT_BEGIN_SEG(data_331800, 0x331800, 0x331800, )
        Yay0_331800_Yay0 = .;
        BUILD_DIR/bin/Yay0/331800.Yay0.o(.data);
    SPLAT_END_SEG(data_331800, 0x331B98)
    
    SPLAT_BEGIN_SEG(data_331B98, 0x331B98, 0x331B98, )
        Yay0_331B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/331B98.Yay0.o(.data);
    SPLAT_END_SEG(data_331B98, 0x331E68)
    
    SPLAT_BEGIN_SEG(data_331E68, 0x331E68, 0x331E68, )
        Yay0_331E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/331E68.Yay0.o(.data);
    SPLAT_END_SEG(data_331E68, 0x3326B8)
    
    SPLAT_BEGIN_SEG(data_3326B8, 0x3326B8, 0x3326B8, )
        Yay0_3326B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3326B8.Yay0.o(.data);
    SPLAT_END_SEG(data_3326B8, 0x332C98)
    
    SPLAT_BEGIN_SEG(data_332C98, 0x332C98, 0x332C98, )
        Yay0_332C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/332C98.Yay0.o(.data);
    SPLAT_END_SEG(data_332C98, 0x333248)
    
    SPLAT_BEGIN_SEG(data_333248, 0x333248, 0x333248, )
        Yay0_333248_Yay0 = .;
        BUILD_DIR/bin/Yay0/333248.Yay0.o(.data);
    SPLAT_END_SEG(data_333248, 0x33B640)
    
    SPLAT_BEGIN_SEG(data_33B640, 0x33B640, 0x33B640, )
        Yay0_33B640_Yay0 = .;
        BUILD_DIR/bin/Yay0/33B640.Yay0.o(.data);
    SPLAT_END_SEG(data_33B640, 0x33C5A0)
    
    SPLAT_BEGIN_SEG(data_33C5A0, 0x33C5A0, 0x33C5A0, )
        Yay0_33C5A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/33C5A0.Yay0.o(.data);
    SPLAT_END_SEG(data_33C5A0, 0x33E5D0)
    
    SPLAT_BEGIN_SEG(data_33E5D0, 0x33E5D0, 0x33E5D0, )
        Yay0_33E5D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/33E5D0.Yay0.o(.data);
    SPLAT_END_SEG(data_33E5D0, 0x33E708)
    
    SPLAT_BEGIN_SEG(data_33E708, 0x33E708, 0x33E708, )
        Yay0_33E708_Yay0 = .;
        BUILD_DIR/bin/Yay0/33E708.Yay0.o(.data);
    SPLAT_END_SEG(data_33E708, 0x33E868)
    
    SPLAT_BEGIN_SEG(data_33E868, 0x33E868, 0x33E868, )
        Yay0_33E868_Yay0 = .;
        BUILD_DIR/bin/Yay0/33E868.Yay0.o(.data);
    SPLAT_END_SEG(data_33E868, 0x33F750)
    
    SPLAT_BEGIN_SEG(data_33F750, 0x33F750, 0x33F750, )
        Yay0_33F750_Yay0 = .;
        BUILD_DIR/bin/Yay0/33F750.Yay0.o(.data);
    SPLAT_END_SEG(data_33F750, 0x33F810)
    
    SPLAT_BEGIN_SEG(data_33F810, 0x33F810, 0x33F810, )
        Yay0_33F810_Yay0 = .;
        BUILD_DIR/bin/Yay0/33F810.Yay0.o(.data);
    SPLAT_END_SEG(data_33F810, 0x33F870)
    
    SPLAT_BEGIN_SEG(data_33F870, 0x33F870, 0x33F870, )
        Yay0_33F870_Yay0 = .;
        BUILD_DIR/bin/Yay0/33F870.Yay0.o(.data);
    SPLAT_END_SEG(data_33F870, 0x33F928)
    
    SPLAT_BEGIN_SEG(data_33F928, 0x33F928, 0x33F928, )
        Yay0_33F928_Yay0 = .;
        BUILD_DIR/bin/Yay0/33F928.Yay0.o(.data);
    SPLAT_END_SEG(data_33F928, 0x33F9F8)
    
    SPLAT_BEGIN_SEG(data_33F9F8, 0x33F9F8, 0x33F9F8, )
        Yay0_33F9F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/33F9F8.Yay0.o(.data);
    SPLAT_END_SEG(data_33F9F8, 0x33FA98)
    
    SPLAT_BEGIN_SEG(data_33FA98, 0x33FA98, 0x33FA98, )
        Yay0_33FA98_Yay0 = .;
        BUILD_DIR/bin/Yay0/33FA98.Yay0.o(.data);
    SPLAT_END_SEG(data_33FA98, 0x33FB50)
    
    SPLAT_BEGIN_SEG(data_33FB50, 0x33FB50, 0x33FB50, )
        Yay0_33FB50_Yay0 = .;
        BUILD_DIR/bin/Yay0/33FB50.Yay0.o(.data);
    SPLAT_END_SEG(data_33FB50, 0x33FC20)
    
    SPLAT_BEGIN_SEG(data_33FC20, 0x33FC20, 0x33FC20, )
        Yay0_33FC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/33FC20.Yay0.o(.data);
    SPLAT_END_SEG(data_33FC20, 0x33FCB0)
    
    SPLAT_BEGIN_SEG(data_33FCB0, 0x33FCB0, 0x33FCB0, )
        Yay0_33FCB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/33FCB0.Yay0.o(.data);
    SPLAT_END_SEG(data_33FCB0, 0x33FD80)
    
    SPLAT_BEGIN_SEG(data_33FD80, 0x33FD80, 0x33FD80, )
        Yay0_33FD80_Yay0 = .;
        BUILD_DIR/bin/Yay0/33FD80.Yay0.o(.data);
    SPLAT_END_SEG(data_33FD80, 0x33FE58)
    
    SPLAT_BEGIN_SEG(data_33FE58, 0x33FE58, 0x33FE58, )
        Yay0_33FE58_Yay0 = .;
        BUILD_DIR/bin/Yay0/33FE58.Yay0.o(.data);
    SPLAT_END_SEG(data_33FE58, 0x3400B8)
    
    SPLAT_BEGIN_SEG(data_3400B8, 0x3400B8, 0x3400B8, )
        Yay0_3400B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3400B8.Yay0.o(.data);
    SPLAT_END_SEG(data_3400B8, 0x340258)
    
    SPLAT_BEGIN_SEG(data_340258, 0x340258, 0x340258, )
        Yay0_340258_Yay0 = .;
        BUILD_DIR/bin/Yay0/340258.Yay0.o(.data);
    SPLAT_END_SEG(data_340258, 0x3402E8)
    
    SPLAT_BEGIN_SEG(data_3402E8, 0x3402E8, 0x3402E8, )
        Yay0_3402E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3402E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3402E8, 0x340378)
    
    SPLAT_BEGIN_SEG(data_340378, 0x340378, 0x340378, )
        Yay0_340378_Yay0 = .;
        BUILD_DIR/bin/Yay0/340378.Yay0.o(.data);
    SPLAT_END_SEG(data_340378, 0x340440)
    
    SPLAT_BEGIN_SEG(data_340440, 0x340440, 0x340440, )
        Yay0_340440_Yay0 = .;
        BUILD_DIR/bin/Yay0/340440.Yay0.o(.data);
    SPLAT_END_SEG(data_340440, 0x340598)
    
    SPLAT_BEGIN_SEG(data_340598, 0x340598, 0x340598, )
        Yay0_340598_Yay0 = .;
        BUILD_DIR/bin/Yay0/340598.Yay0.o(.data);
    SPLAT_END_SEG(data_340598, 0x340640)
    
    SPLAT_BEGIN_SEG(data_340640, 0x340640, 0x340640, )
        Yay0_340640_Yay0 = .;
        BUILD_DIR/bin/Yay0/340640.Yay0.o(.data);
    SPLAT_END_SEG(data_340640, 0x340AF0)
    
    SPLAT_BEGIN_SEG(data_340AF0, 0x340AF0, 0x340AF0, )
        Yay0_340AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/340AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_340AF0, 0x340D40)
    
    SPLAT_BEGIN_SEG(data_340D40, 0x340D40, 0x340D40, )
        Yay0_340D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/340D40.Yay0.o(.data);
    SPLAT_END_SEG(data_340D40, 0x340D98)
    
    SPLAT_BEGIN_SEG(data_340D98, 0x340D98, 0x340D98, )
        Yay0_340D98_Yay0 = .;
        BUILD_DIR/bin/Yay0/340D98.Yay0.o(.data);
    SPLAT_END_SEG(data_340D98, 0x341348)
    
    SPLAT_BEGIN_SEG(data_341348, 0x341348, 0x341348, )
        Yay0_341348_Yay0 = .;
        BUILD_DIR/bin/Yay0/341348.Yay0.o(.data);
    SPLAT_END_SEG(data_341348, 0x3413A0)
    
    SPLAT_BEGIN_SEG(data_3413A0, 0x3413A0, 0x3413A0, )
        Yay0_3413A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3413A0.Yay0.o(.data);
    SPLAT_END_SEG(data_3413A0, 0x3415D8)
    
    SPLAT_BEGIN_SEG(data_3415D8, 0x3415D8, 0x3415D8, )
        Yay0_3415D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3415D8.Yay0.o(.data);
    SPLAT_END_SEG(data_3415D8, 0x341638)
    
    SPLAT_BEGIN_SEG(data_341638, 0x341638, 0x341638, )
        Yay0_341638_Yay0 = .;
        BUILD_DIR/bin/Yay0/341638.Yay0.o(.data);
    SPLAT_END_SEG(data_341638, 0x3478D0)
    
    SPLAT_BEGIN_SEG(data_3478D0, 0x3478D0, 0x3478D0, )
        Yay0_3478D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3478D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3478D0, 0x34D9D0)
    
    SPLAT_BEGIN_SEG(data_34D9D0, 0x34D9D0, 0x34D9D0, )
        Yay0_34D9D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/34D9D0.Yay0.o(.data);
    SPLAT_END_SEG(data_34D9D0, 0x353A70)
    
    SPLAT_BEGIN_SEG(data_353A70, 0x353A70, 0x353A70, )
        Yay0_353A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/353A70.Yay0.o(.data);
    SPLAT_END_SEG(data_353A70, 0x35A5F0)
    
    SPLAT_BEGIN_SEG(data_35A5F0, 0x35A5F0, 0x35A5F0, )
        Yay0_35A5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/35A5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_35A5F0, 0x360F78)
    
    SPLAT_BEGIN_SEG(data_360F78, 0x360F78, 0x360F78, )
        Yay0_360F78_Yay0 = .;
        BUILD_DIR/bin/Yay0/360F78.Yay0.o(.data);
    SPLAT_END_SEG(data_360F78, 0x3614D8)
    
    SPLAT_BEGIN_SEG(data_3614D8, 0x3614D8, 0x3614D8, )
        Yay0_3614D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3614D8.Yay0.o(.data);
    SPLAT_END_SEG(data_3614D8, 0x361A88)
    
    SPLAT_BEGIN_SEG(data_361A88, 0x361A88, 0x361A88, )
        Yay0_361A88_Yay0 = .;
        BUILD_DIR/bin/Yay0/361A88.Yay0.o(.data);
    SPLAT_END_SEG(data_361A88, 0x3620D0)
    
    SPLAT_BEGIN_SEG(data_3620D0, 0x3620D0, 0x3620D0, )
        Yay0_3620D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3620D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3620D0, 0x362870)
    
    SPLAT_BEGIN_SEG(data_362870, 0x362870, 0x362870, )
        Yay0_362870_Yay0 = .;
        BUILD_DIR/bin/Yay0/362870.Yay0.o(.data);
    SPLAT_END_SEG(data_362870, 0x363060)
    
    SPLAT_BEGIN_SEG(data_363060, 0x363060, 0x363060, )
        Yay0_363060_Yay0 = .;
        BUILD_DIR/bin/Yay0/363060.Yay0.o(.data);
    SPLAT_END_SEG(data_363060, 0x363710)
    
    SPLAT_BEGIN_SEG(data_363710, 0x363710, 0x363710, )
        Yay0_363710_Yay0 = .;
        BUILD_DIR/bin/Yay0/363710.Yay0.o(.data);
    SPLAT_END_SEG(data_363710, 0x363DD0)
    
    SPLAT_BEGIN_SEG(data_363DD0, 0x363DD0, 0x363DD0, )
        Yay0_363DD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/363DD0.Yay0.o(.data);
    SPLAT_END_SEG(data_363DD0, 0x364358)
    
    SPLAT_BEGIN_SEG(data_364358, 0x364358, 0x364358, )
        Yay0_364358_Yay0 = .;
        BUILD_DIR/bin/Yay0/364358.Yay0.o(.data);
    SPLAT_END_SEG(data_364358, 0x3648C8)
    
    SPLAT_BEGIN_SEG(data_3648C8, 0x3648C8, 0x3648C8, )
        Yay0_3648C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3648C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3648C8, 0x3649A0)
    
    SPLAT_BEGIN_SEG(data_3649A0, 0x3649A0, 0x3649A0, )
        Yay0_3649A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3649A0.Yay0.o(.data);
    SPLAT_END_SEG(data_3649A0, 0x364C40)
    
    SPLAT_BEGIN_SEG(data_364C40, 0x364C40, 0x364C40, )
        Yay0_364C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/364C40.Yay0.o(.data);
    SPLAT_END_SEG(data_364C40, 0x365078)
    
    SPLAT_BEGIN_SEG(data_365078, 0x365078, 0x365078, )
        Yay0_365078_Yay0 = .;
        BUILD_DIR/bin/Yay0/365078.Yay0.o(.data);
    SPLAT_END_SEG(data_365078, 0x3652B0)
    
    SPLAT_BEGIN_SEG(data_3652B0, 0x3652B0, 0x3652B0, )
        Yay0_3652B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3652B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3652B0, 0x365A40)
    
    SPLAT_BEGIN_SEG(data_365A40, 0x365A40, 0x365A40, )
        Yay0_365A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/365A40.Yay0.o(.data);
    SPLAT_END_SEG(data_365A40, 0x365AF0)
    
    SPLAT_BEGIN_SEG(data_365AF0, 0x365AF0, 0x365AF0, )
        Yay0_365AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/365AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_365AF0, 0x365DA0)
    
    SPLAT_BEGIN_SEG(data_365DA0, 0x365DA0, 0x365DA0, )
        Yay0_365DA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/365DA0.Yay0.o(.data);
    SPLAT_END_SEG(data_365DA0, 0x365EB8)
    
    SPLAT_BEGIN_SEG(data_365EB8, 0x365EB8, 0x365EB8, )
        Yay0_365EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/365EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_365EB8, 0x365FB0)
    
    SPLAT_BEGIN_SEG(data_365FB0, 0x365FB0, 0x365FB0, )
        Yay0_365FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/365FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_365FB0, 0x366080)
    
    SPLAT_BEGIN_SEG(data_366080, 0x366080, 0x366080, )
        Yay0_366080_Yay0 = .;
        BUILD_DIR/bin/Yay0/366080.Yay0.o(.data);
    SPLAT_END_SEG(data_366080, 0x366130)
    
    SPLAT_BEGIN_SEG(data_366130, 0x366130, 0x366130, )
        Yay0_366130_Yay0 = .;
        BUILD_DIR/bin/Yay0/366130.Yay0.o(.data);
    SPLAT_END_SEG(data_366130, 0x3661C8)
    
    SPLAT_BEGIN_SEG(data_3661C8, 0x3661C8, 0x3661C8, )
        Yay0_3661C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3661C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3661C8, 0x366248)
    
    SPLAT_BEGIN_SEG(data_366248, 0x366248, 0x366248, )
        Yay0_366248_Yay0 = .;
        BUILD_DIR/bin/Yay0/366248.Yay0.o(.data);
    SPLAT_END_SEG(data_366248, 0x366410)
    
    SPLAT_BEGIN_SEG(data_366410, 0x366410, 0x366410, )
        Yay0_366410_Yay0 = .;
        BUILD_DIR/bin/Yay0/366410.Yay0.o(.data);
    SPLAT_END_SEG(data_366410, 0x366478)
    
    SPLAT_BEGIN_SEG(data_366478, 0x366478, 0x366478, )
        Yay0_366478_Yay0 = .;
        BUILD_DIR/bin/Yay0/366478.Yay0.o(.data);
    SPLAT_END_SEG(data_366478, 0x3664F0)
    
    SPLAT_BEGIN_SEG(data_3664F0, 0x3664F0, 0x3664F0, )
        Yay0_3664F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3664F0.Yay0.o(.data);
    SPLAT_END_SEG(data_3664F0, 0x366558)
    
    SPLAT_BEGIN_SEG(data_366558, 0x366558, 0x366558, )
        Yay0_366558_Yay0 = .;
        BUILD_DIR/bin/Yay0/366558.Yay0.o(.data);
    SPLAT_END_SEG(data_366558, 0x3665C0)
    
    SPLAT_BEGIN_SEG(data_3665C0, 0x3665C0, 0x3665C0, )
        Yay0_3665C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3665C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3665C0, 0x366638)
    
    SPLAT_BEGIN_SEG(data_366638, 0x366638, 0x366638, )
        Yay0_366638_Yay0 = .;
        BUILD_DIR/bin/Yay0/366638.Yay0.o(.data);
    SPLAT_END_SEG(data_366638, 0x3666A0)
    
    SPLAT_BEGIN_SEG(data_3666A0, 0x3666A0, 0x3666A0, )
        Yay0_3666A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3666A0.Yay0.o(.data);
    SPLAT_END_SEG(data_3666A0, 0x3666E8)
    
    SPLAT_BEGIN_SEG(data_3666E8, 0x3666E8, 0x3666E8, )
        Yay0_3666E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3666E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3666E8, 0x3669E0)
    
    SPLAT_BEGIN_SEG(data_3669E0, 0x3669E0, 0x3669E0, )
        Yay0_3669E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3669E0.Yay0.o(.data);
    SPLAT_END_SEG(data_3669E0, 0x366DA8)
    
    SPLAT_BEGIN_SEG(data_366DA8, 0x366DA8, 0x366DA8, )
        Yay0_366DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/366DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_366DA8, 0x367188)
    
    SPLAT_BEGIN_SEG(data_367188, 0x367188, 0x367188, )
        Yay0_367188_Yay0 = .;
        BUILD_DIR/bin/Yay0/367188.Yay0.o(.data);
    SPLAT_END_SEG(data_367188, 0x3674E8)
    
    SPLAT_BEGIN_SEG(data_3674E8, 0x3674E8, 0x3674E8, )
        Yay0_3674E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3674E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3674E8, 0x367848)
    
    SPLAT_BEGIN_SEG(data_367848, 0x367848, 0x367848, )
        Yay0_367848_Yay0 = .;
        BUILD_DIR/bin/Yay0/367848.Yay0.o(.data);
    SPLAT_END_SEG(data_367848, 0x367BF0)
    
    SPLAT_BEGIN_SEG(data_367BF0, 0x367BF0, 0x367BF0, )
        Yay0_367BF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/367BF0.Yay0.o(.data);
    SPLAT_END_SEG(data_367BF0, 0x367EA8)
    
    SPLAT_BEGIN_SEG(data_367EA8, 0x367EA8, 0x367EA8, )
        Yay0_367EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/367EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_367EA8, 0x368138)
    
    SPLAT_BEGIN_SEG(data_368138, 0x368138, 0x368138, )
        Yay0_368138_Yay0 = .;
        BUILD_DIR/bin/Yay0/368138.Yay0.o(.data);
    SPLAT_END_SEG(data_368138, 0x3683E8)
    
    SPLAT_BEGIN_SEG(data_3683E8, 0x3683E8, 0x3683E8, )
        Yay0_3683E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3683E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3683E8, 0x3689A0)
    
    SPLAT_BEGIN_SEG(data_3689A0, 0x3689A0, 0x3689A0, )
        Yay0_3689A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3689A0.Yay0.o(.data);
    SPLAT_END_SEG(data_3689A0, 0x368C20)
    
    SPLAT_BEGIN_SEG(data_368C20, 0x368C20, 0x368C20, )
        Yay0_368C20_Yay0 = .;
        BUILD_DIR/bin/Yay0/368C20.Yay0.o(.data);
    SPLAT_END_SEG(data_368C20, 0x36A508)
    
    SPLAT_BEGIN_SEG(data_36A508, 0x36A508, 0x36A508, )
        Yay0_36A508_Yay0 = .;
        BUILD_DIR/bin/Yay0/36A508.Yay0.o(.data);
    SPLAT_END_SEG(data_36A508, 0x36AD20)
    
    SPLAT_BEGIN_SEG(data_36AD20, 0x36AD20, 0x36AD20, )
        Yay0_36AD20_Yay0 = .;
        BUILD_DIR/bin/Yay0/36AD20.Yay0.o(.data);
    SPLAT_END_SEG(data_36AD20, 0x36B000)
    
    SPLAT_BEGIN_SEG(data_36B000, 0x36B000, 0x36B000, )
        Yay0_36B000_Yay0 = .;
        BUILD_DIR/bin/Yay0/36B000.Yay0.o(.data);
    SPLAT_END_SEG(data_36B000, 0x3723E0)
    
    SPLAT_BEGIN_SEG(data_3723E0, 0x3723E0, 0x3723E0, )
        Yay0_3723E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3723E0.Yay0.o(.data);
    SPLAT_END_SEG(data_3723E0, 0x376560)
    
    SPLAT_BEGIN_SEG(data_376560, 0x376560, 0x376560, )
        Yay0_376560_Yay0 = .;
        BUILD_DIR/bin/Yay0/376560.Yay0.o(.data);
    SPLAT_END_SEG(data_376560, 0x377BB8)
    
    SPLAT_BEGIN_SEG(data_377BB8, 0x377BB8, 0x377BB8, )
        Yay0_377BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/377BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_377BB8, 0x377BE0)
    
    SPLAT_BEGIN_SEG(data_377BE0, 0x377BE0, 0x377BE0, )
        Yay0_377BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/377BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_377BE0, 0x37A4C0)
    
    SPLAT_BEGIN_SEG(data_37A4C0, 0x37A4C0, 0x37A4C0, )
        Yay0_37A4C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/37A4C0.Yay0.o(.data);
    SPLAT_END_SEG(data_37A4C0, 0x37AA08)
    
    SPLAT_BEGIN_SEG(data_37AA08, 0x37AA08, 0x37AA08, )
        Yay0_37AA08_Yay0 = .;
        BUILD_DIR/bin/Yay0/37AA08.Yay0.o(.data);
    SPLAT_END_SEG(data_37AA08, 0x37B7D0)
    
    SPLAT_BEGIN_SEG(data_37B7D0, 0x37B7D0, 0x37B7D0, )
        Yay0_37B7D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/37B7D0.Yay0.o(.data);
    SPLAT_END_SEG(data_37B7D0, 0x37B8F8)
    
    SPLAT_BEGIN_SEG(data_37B8F8, 0x37B8F8, 0x37B8F8, )
        Yay0_37B8F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/37B8F8.Yay0.o(.data);
    SPLAT_END_SEG(data_37B8F8, 0x37D238)
    
    SPLAT_BEGIN_SEG(data_37D238, 0x37D238, 0x37D238, )
        Yay0_37D238_Yay0 = .;
        BUILD_DIR/bin/Yay0/37D238.Yay0.o(.data);
    SPLAT_END_SEG(data_37D238, 0x37D938)
    
    SPLAT_BEGIN_SEG(data_37D938, 0x37D938, 0x37D938, )
        Yay0_37D938_Yay0 = .;
        BUILD_DIR/bin/Yay0/37D938.Yay0.o(.data);
    SPLAT_END_SEG(data_37D938, 0x37DDD8)
    
    SPLAT_BEGIN_SEG(data_37DDD8, 0x37DDD8, 0x37DDD8, )
        Yay0_37DDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/37DDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_37DDD8, 0x37E140)
    
    SPLAT_BEGIN_SEG(data_37E140, 0x37E140, 0x37E140, )
        Yay0_37E140_Yay0 = .;
        BUILD_DIR/bin/Yay0/37E140.Yay0.o(.data);
    SPLAT_END_SEG(data_37E140, 0x37E598)
    
    SPLAT_BEGIN_SEG(data_37E598, 0x37E598, 0x37E598, )
        Yay0_37E598_Yay0 = .;
        BUILD_DIR/bin/Yay0/37E598.Yay0.o(.data);
    SPLAT_END_SEG(data_37E598, 0x37EA48)
    
    SPLAT_BEGIN_SEG(data_37EA48, 0x37EA48, 0x37EA48, )
        Yay0_37EA48_Yay0 = .;
        BUILD_DIR/bin/Yay0/37EA48.Yay0.o(.data);
    SPLAT_END_SEG(data_37EA48, 0x37EF40)
    
    SPLAT_BEGIN_SEG(data_37EF40, 0x37EF40, 0x37EF40, )
        Yay0_37EF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/37EF40.Yay0.o(.data);
    SPLAT_END_SEG(data_37EF40, 0x37F400)
    
    SPLAT_BEGIN_SEG(data_37F400, 0x37F400, 0x37F400, )
        Yay0_37F400_Yay0 = .;
        BUILD_DIR/bin/Yay0/37F400.Yay0.o(.data);
    SPLAT_END_SEG(data_37F400, 0x37FB28)
    
    SPLAT_BEGIN_SEG(data_37FB28, 0x37FB28, 0x37FB28, )
        Yay0_37FB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/37FB28.Yay0.o(.data);
    SPLAT_END_SEG(data_37FB28, 0x380178)
    
    SPLAT_BEGIN_SEG(data_380178, 0x380178, 0x380178, )
        Yay0_380178_Yay0 = .;
        BUILD_DIR/bin/Yay0/380178.Yay0.o(.data);
    SPLAT_END_SEG(data_380178, 0x380620)
    
    SPLAT_BEGIN_SEG(data_380620, 0x380620, 0x380620, )
        Yay0_380620_Yay0 = .;
        BUILD_DIR/bin/Yay0/380620.Yay0.o(.data);
    SPLAT_END_SEG(data_380620, 0x380968)
    
    SPLAT_BEGIN_SEG(data_380968, 0x380968, 0x380968, )
        Yay0_380968_Yay0 = .;
        BUILD_DIR/bin/Yay0/380968.Yay0.o(.data);
    SPLAT_END_SEG(data_380968, 0x380FB8)
    
    SPLAT_BEGIN_SEG(data_380FB8, 0x380FB8, 0x380FB8, )
        Yay0_380FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/380FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_380FB8, 0x3812C8)
    
    SPLAT_BEGIN_SEG(data_3812C8, 0x3812C8, 0x3812C8, )
        Yay0_3812C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3812C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3812C8, 0x3815C0)
    
    SPLAT_BEGIN_SEG(data_3815C0, 0x3815C0, 0x3815C0, )
        Yay0_3815C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3815C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3815C0, 0x3817C0)
    
    SPLAT_BEGIN_SEG(data_3817C0, 0x3817C0, 0x3817C0, )
        Yay0_3817C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3817C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3817C0, 0x381998)
    
    SPLAT_BEGIN_SEG(data_381998, 0x381998, 0x381998, )
        Yay0_381998_Yay0 = .;
        BUILD_DIR/bin/Yay0/381998.Yay0.o(.data);
    SPLAT_END_SEG(data_381998, 0x381B90)
    
    SPLAT_BEGIN_SEG(data_381B90, 0x381B90, 0x381B90, )
        Yay0_381B90_Yay0 = .;
        BUILD_DIR/bin/Yay0/381B90.Yay0.o(.data);
    SPLAT_END_SEG(data_381B90, 0x381D60)
    
    SPLAT_BEGIN_SEG(data_381D60, 0x381D60, 0x381D60, )
        Yay0_381D60_Yay0 = .;
        BUILD_DIR/bin/Yay0/381D60.Yay0.o(.data);
    SPLAT_END_SEG(data_381D60, 0x381F50)
    
    SPLAT_BEGIN_SEG(data_381F50, 0x381F50, 0x381F50, )
        Yay0_381F50_Yay0 = .;
        BUILD_DIR/bin/Yay0/381F50.Yay0.o(.data);
    SPLAT_END_SEG(data_381F50, 0x382148)
    
    SPLAT_BEGIN_SEG(data_382148, 0x382148, 0x382148, )
        Yay0_382148_Yay0 = .;
        BUILD_DIR/bin/Yay0/382148.Yay0.o(.data);
    SPLAT_END_SEG(data_382148, 0x3823D0)
    
    SPLAT_BEGIN_SEG(data_3823D0, 0x3823D0, 0x3823D0, )
        Yay0_3823D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3823D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3823D0, 0x382600)
    
    SPLAT_BEGIN_SEG(data_382600, 0x382600, 0x382600, )
        Yay0_382600_Yay0 = .;
        BUILD_DIR/bin/Yay0/382600.Yay0.o(.data);
    SPLAT_END_SEG(data_382600, 0x3827C8)
    
    SPLAT_BEGIN_SEG(data_3827C8, 0x3827C8, 0x3827C8, )
        Yay0_3827C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3827C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3827C8, 0x382A28)
    
    SPLAT_BEGIN_SEG(data_382A28, 0x382A28, 0x382A28, )
        Yay0_382A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/382A28.Yay0.o(.data);
    SPLAT_END_SEG(data_382A28, 0x382C28)
    
    SPLAT_BEGIN_SEG(data_382C28, 0x382C28, 0x382C28, )
        Yay0_382C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/382C28.Yay0.o(.data);
    SPLAT_END_SEG(data_382C28, 0x382DC8)
    
    SPLAT_BEGIN_SEG(data_382DC8, 0x382DC8, 0x382DC8, )
        Yay0_382DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/382DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_382DC8, 0x382F78)
    
    SPLAT_BEGIN_SEG(data_382F78, 0x382F78, 0x382F78, )
        Yay0_382F78_Yay0 = .;
        BUILD_DIR/bin/Yay0/382F78.Yay0.o(.data);
    SPLAT_END_SEG(data_382F78, 0x383150)
    
    SPLAT_BEGIN_SEG(data_383150, 0x383150, 0x383150, )
        Yay0_383150_Yay0 = .;
        BUILD_DIR/bin/Yay0/383150.Yay0.o(.data);
    SPLAT_END_SEG(data_383150, 0x383388)
    
    SPLAT_BEGIN_SEG(data_383388, 0x383388, 0x383388, )
        Yay0_383388_Yay0 = .;
        BUILD_DIR/bin/Yay0/383388.Yay0.o(.data);
    SPLAT_END_SEG(data_383388, 0x383680)
    
    SPLAT_BEGIN_SEG(data_383680, 0x383680, 0x383680, )
        Yay0_383680_Yay0 = .;
        BUILD_DIR/bin/Yay0/383680.Yay0.o(.data);
    SPLAT_END_SEG(data_383680, 0x3839A8)
    
    SPLAT_BEGIN_SEG(data_3839A8, 0x3839A8, 0x3839A8, )
        Yay0_3839A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3839A8.Yay0.o(.data);
    SPLAT_END_SEG(data_3839A8, 0x383C90)
    
    SPLAT_BEGIN_SEG(data_383C90, 0x383C90, 0x383C90, )
        Yay0_383C90_Yay0 = .;
        BUILD_DIR/bin/Yay0/383C90.Yay0.o(.data);
    SPLAT_END_SEG(data_383C90, 0x384D58)
    
    SPLAT_BEGIN_SEG(data_384D58, 0x384D58, 0x384D58, )
        Yay0_384D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/384D58.Yay0.o(.data);
    SPLAT_END_SEG(data_384D58, 0x3862F0)
    
    SPLAT_BEGIN_SEG(data_3862F0, 0x3862F0, 0x3862F0, )
        Yay0_3862F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3862F0.Yay0.o(.data);
    SPLAT_END_SEG(data_3862F0, 0x387958)
    
    SPLAT_BEGIN_SEG(data_387958, 0x387958, 0x387958, )
        Yay0_387958_Yay0 = .;
        BUILD_DIR/bin/Yay0/387958.Yay0.o(.data);
    SPLAT_END_SEG(data_387958, 0x388F10)
    
    SPLAT_BEGIN_SEG(data_388F10, 0x388F10, 0x388F10, )
        Yay0_388F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/388F10.Yay0.o(.data);
    SPLAT_END_SEG(data_388F10, 0x38A568)
    
    SPLAT_BEGIN_SEG(data_38A568, 0x38A568, 0x38A568, )
        Yay0_38A568_Yay0 = .;
        BUILD_DIR/bin/Yay0/38A568.Yay0.o(.data);
    SPLAT_END_SEG(data_38A568, 0x38BC48)
    
    SPLAT_BEGIN_SEG(data_38BC48, 0x38BC48, 0x38BC48, )
        Yay0_38BC48_Yay0 = .;
        BUILD_DIR/bin/Yay0/38BC48.Yay0.o(.data);
    SPLAT_END_SEG(data_38BC48, 0x38BCD0)
    
    SPLAT_BEGIN_SEG(data_38BCD0, 0x38BCD0, 0x38BCD0, )
        Yay0_38BCD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/38BCD0.Yay0.o(.data);
    SPLAT_END_SEG(data_38BCD0, 0x38BD88)
    
    SPLAT_BEGIN_SEG(data_38BD88, 0x38BD88, 0x38BD88, )
        Yay0_38BD88_Yay0 = .;
        BUILD_DIR/bin/Yay0/38BD88.Yay0.o(.data);
    SPLAT_END_SEG(data_38BD88, 0x38BE50)
    
    SPLAT_BEGIN_SEG(data_38BE50, 0x38BE50, 0x38BE50, )
        Yay0_38BE50_Yay0 = .;
        BUILD_DIR/bin/Yay0/38BE50.Yay0.o(.data);
    SPLAT_END_SEG(data_38BE50, 0x38DB90)
    
    SPLAT_BEGIN_SEG(data_38DB90, 0x38DB90, 0x38DB90, )
        Yay0_38DB90_Yay0 = .;
        BUILD_DIR/bin/Yay0/38DB90.Yay0.o(.data);
    SPLAT_END_SEG(data_38DB90, 0x38E128)
    
    SPLAT_BEGIN_SEG(data_38E128, 0x38E128, 0x38E128, )
        Yay0_38E128_Yay0 = .;
        BUILD_DIR/bin/Yay0/38E128.Yay0.o(.data);
    SPLAT_END_SEG(data_38E128, 0x38E5A0)
    
    SPLAT_BEGIN_SEG(data_38E5A0, 0x38E5A0, 0x38E5A0, )
        Yay0_38E5A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/38E5A0.Yay0.o(.data);
    SPLAT_END_SEG(data_38E5A0, 0x38E8B8)
    
    SPLAT_BEGIN_SEG(data_38E8B8, 0x38E8B8, 0x38E8B8, )
        Yay0_38E8B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/38E8B8.Yay0.o(.data);
    SPLAT_END_SEG(data_38E8B8, 0x38EB78)
    
    SPLAT_BEGIN_SEG(data_38EB78, 0x38EB78, 0x38EB78, )
        Yay0_38EB78_Yay0 = .;
        BUILD_DIR/bin/Yay0/38EB78.Yay0.o(.data);
    SPLAT_END_SEG(data_38EB78, 0x38EE40)
    
    SPLAT_BEGIN_SEG(data_38EE40, 0x38EE40, 0x38EE40, )
        Yay0_38EE40_Yay0 = .;
        BUILD_DIR/bin/Yay0/38EE40.Yay0.o(.data);
    SPLAT_END_SEG(data_38EE40, 0x38F1F0)
    
    SPLAT_BEGIN_SEG(data_38F1F0, 0x38F1F0, 0x38F1F0, )
        Yay0_38F1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/38F1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_38F1F0, 0x38F608)
    
    SPLAT_BEGIN_SEG(data_38F608, 0x38F608, 0x38F608, )
        Yay0_38F608_Yay0 = .;
        BUILD_DIR/bin/Yay0/38F608.Yay0.o(.data);
    SPLAT_END_SEG(data_38F608, 0x38F978)
    
    SPLAT_BEGIN_SEG(data_38F978, 0x38F978, 0x38F978, )
        Yay0_38F978_Yay0 = .;
        BUILD_DIR/bin/Yay0/38F978.Yay0.o(.data);
    SPLAT_END_SEG(data_38F978, 0x38FB90)
    
    SPLAT_BEGIN_SEG(data_38FB90, 0x38FB90, 0x38FB90, )
        Yay0_38FB90_Yay0 = .;
        BUILD_DIR/bin/Yay0/38FB90.Yay0.o(.data);
    SPLAT_END_SEG(data_38FB90, 0x38FD30)
    
    SPLAT_BEGIN_SEG(data_38FD30, 0x38FD30, 0x38FD30, )
        Yay0_38FD30_Yay0 = .;
        BUILD_DIR/bin/Yay0/38FD30.Yay0.o(.data);
    SPLAT_END_SEG(data_38FD30, 0x38FED8)
    
    SPLAT_BEGIN_SEG(data_38FED8, 0x38FED8, 0x38FED8, )
        Yay0_38FED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/38FED8.Yay0.o(.data);
    SPLAT_END_SEG(data_38FED8, 0x391168)
    
    SPLAT_BEGIN_SEG(data_391168, 0x391168, 0x391168, )
        Yay0_391168_Yay0 = .;
        BUILD_DIR/bin/Yay0/391168.Yay0.o(.data);
    SPLAT_END_SEG(data_391168, 0x391380)
    
    SPLAT_BEGIN_SEG(data_391380, 0x391380, 0x391380, )
        Yay0_391380_Yay0 = .;
        BUILD_DIR/bin/Yay0/391380.Yay0.o(.data);
    SPLAT_END_SEG(data_391380, 0x391718)
    
    SPLAT_BEGIN_SEG(data_391718, 0x391718, 0x391718, )
        Yay0_391718_Yay0 = .;
        BUILD_DIR/bin/Yay0/391718.Yay0.o(.data);
    SPLAT_END_SEG(data_391718, 0x391940)
    
    SPLAT_BEGIN_SEG(data_391940, 0x391940, 0x391940, )
        Yay0_391940_Yay0 = .;
        BUILD_DIR/bin/Yay0/391940.Yay0.o(.data);
    SPLAT_END_SEG(data_391940, 0x391EE8)
    
    SPLAT_BEGIN_SEG(data_391EE8, 0x391EE8, 0x391EE8, )
        Yay0_391EE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/391EE8.Yay0.o(.data);
    SPLAT_END_SEG(data_391EE8, 0x392318)
    
    SPLAT_BEGIN_SEG(data_392318, 0x392318, 0x392318, )
        Yay0_392318_Yay0 = .;
        BUILD_DIR/bin/Yay0/392318.Yay0.o(.data);
    SPLAT_END_SEG(data_392318, 0x394520)
    
    SPLAT_BEGIN_SEG(data_394520, 0x394520, 0x394520, )
        Yay0_394520_Yay0 = .;
        BUILD_DIR/bin/Yay0/394520.Yay0.o(.data);
    SPLAT_END_SEG(data_394520, 0x394560)
    
    SPLAT_BEGIN_SEG(data_394560, 0x394560, 0x394560, )
        Yay0_394560_Yay0 = .;
        BUILD_DIR/bin/Yay0/394560.Yay0.o(.data);
    SPLAT_END_SEG(data_394560, 0x394648)
    
    SPLAT_BEGIN_SEG(data_394648, 0x394648, 0x394648, )
        Yay0_394648_Yay0 = .;
        BUILD_DIR/bin/Yay0/394648.Yay0.o(.data);
    SPLAT_END_SEG(data_394648, 0x3949B0)
    
    SPLAT_BEGIN_SEG(data_3949B0, 0x3949B0, 0x3949B0, )
        Yay0_3949B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3949B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3949B0, 0x394E68)
    
    SPLAT_BEGIN_SEG(data_394E68, 0x394E68, 0x394E68, )
        Yay0_394E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/394E68.Yay0.o(.data);
    SPLAT_END_SEG(data_394E68, 0x395290)
    
    SPLAT_BEGIN_SEG(data_395290, 0x395290, 0x395290, )
        Yay0_395290_Yay0 = .;
        BUILD_DIR/bin/Yay0/395290.Yay0.o(.data);
    SPLAT_END_SEG(data_395290, 0x395730)
    
    SPLAT_BEGIN_SEG(data_395730, 0x395730, 0x395730, )
        Yay0_395730_Yay0 = .;
        BUILD_DIR/bin/Yay0/395730.Yay0.o(.data);
    SPLAT_END_SEG(data_395730, 0x395B00)
    
    SPLAT_BEGIN_SEG(data_395B00, 0x395B00, 0x395B00, )
        Yay0_395B00_Yay0 = .;
        BUILD_DIR/bin/Yay0/395B00.Yay0.o(.data);
    SPLAT_END_SEG(data_395B00, 0x395E50)
    
    SPLAT_BEGIN_SEG(data_395E50, 0x395E50, 0x395E50, )
        Yay0_395E50_Yay0 = .;
        BUILD_DIR/bin/Yay0/395E50.Yay0.o(.data);
    SPLAT_END_SEG(data_395E50, 0x396190)
    
    SPLAT_BEGIN_SEG(data_396190, 0x396190, 0x396190, )
        Yay0_396190_Yay0 = .;
        BUILD_DIR/bin/Yay0/396190.Yay0.o(.data);
    SPLAT_END_SEG(data_396190, 0x396458)
    
    SPLAT_BEGIN_SEG(data_396458, 0x396458, 0x396458, )
        Yay0_396458_Yay0 = .;
        BUILD_DIR/bin/Yay0/396458.Yay0.o(.data);
    SPLAT_END_SEG(data_396458, 0x396688)
    
    SPLAT_BEGIN_SEG(data_396688, 0x396688, 0x396688, )
        Yay0_396688_Yay0 = .;
        BUILD_DIR/bin/Yay0/396688.Yay0.o(.data);
    SPLAT_END_SEG(data_396688, 0x396850)
    
    SPLAT_BEGIN_SEG(data_396850, 0x396850, 0x396850, )
        Yay0_396850_Yay0 = .;
        BUILD_DIR/bin/Yay0/396850.Yay0.o(.data);
    SPLAT_END_SEG(data_396850, 0x396B18)
    
    SPLAT_BEGIN_SEG(data_396B18, 0x396B18, 0x396B18, )
        Yay0_396B18_Yay0 = .;
        BUILD_DIR/bin/Yay0/396B18.Yay0.o(.data);
    SPLAT_END_SEG(data_396B18, 0x396E30)
    
    SPLAT_BEGIN_SEG(data_396E30, 0x396E30, 0x396E30, )
        Yay0_396E30_Yay0 = .;
        BUILD_DIR/bin/Yay0/396E30.Yay0.o(.data);
    SPLAT_END_SEG(data_396E30, 0x397138)
    
    SPLAT_BEGIN_SEG(data_397138, 0x397138, 0x397138, )
        Yay0_397138_Yay0 = .;
        BUILD_DIR/bin/Yay0/397138.Yay0.o(.data);
    SPLAT_END_SEG(data_397138, 0x3975B8)
    
    SPLAT_BEGIN_SEG(data_3975B8, 0x3975B8, 0x3975B8, )
        Yay0_3975B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3975B8.Yay0.o(.data);
    SPLAT_END_SEG(data_3975B8, 0x397950)
    
    SPLAT_BEGIN_SEG(data_397950, 0x397950, 0x397950, )
        Yay0_397950_Yay0 = .;
        BUILD_DIR/bin/Yay0/397950.Yay0.o(.data);
    SPLAT_END_SEG(data_397950, 0x397DF8)
    
    SPLAT_BEGIN_SEG(data_397DF8, 0x397DF8, 0x397DF8, )
        Yay0_397DF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/397DF8.Yay0.o(.data);
    SPLAT_END_SEG(data_397DF8, 0x3981A8)
    
    SPLAT_BEGIN_SEG(data_3981A8, 0x3981A8, 0x3981A8, )
        Yay0_3981A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3981A8.Yay0.o(.data);
    SPLAT_END_SEG(data_3981A8, 0x398518)
    
    SPLAT_BEGIN_SEG(data_398518, 0x398518, 0x398518, )
        Yay0_398518_Yay0 = .;
        BUILD_DIR/bin/Yay0/398518.Yay0.o(.data);
    SPLAT_END_SEG(data_398518, 0x3987C0)
    
    SPLAT_BEGIN_SEG(data_3987C0, 0x3987C0, 0x3987C0, )
        Yay0_3987C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3987C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3987C0, 0x398AD0)
    
    SPLAT_BEGIN_SEG(data_398AD0, 0x398AD0, 0x398AD0, )
        Yay0_398AD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/398AD0.Yay0.o(.data);
    SPLAT_END_SEG(data_398AD0, 0x398EA0)
    
    SPLAT_BEGIN_SEG(data_398EA0, 0x398EA0, 0x398EA0, )
        Yay0_398EA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/398EA0.Yay0.o(.data);
    SPLAT_END_SEG(data_398EA0, 0x399270)
    
    SPLAT_BEGIN_SEG(data_399270, 0x399270, 0x399270, )
        Yay0_399270_Yay0 = .;
        BUILD_DIR/bin/Yay0/399270.Yay0.o(.data);
    SPLAT_END_SEG(data_399270, 0x399678)
    
    SPLAT_BEGIN_SEG(data_399678, 0x399678, 0x399678, )
        Yay0_399678_Yay0 = .;
        BUILD_DIR/bin/Yay0/399678.Yay0.o(.data);
    SPLAT_END_SEG(data_399678, 0x399B30)
    
    SPLAT_BEGIN_SEG(data_399B30, 0x399B30, 0x399B30, )
        Yay0_399B30_Yay0 = .;
        BUILD_DIR/bin/Yay0/399B30.Yay0.o(.data);
    SPLAT_END_SEG(data_399B30, 0x399FA8)
    
    SPLAT_BEGIN_SEG(data_399FA8, 0x399FA8, 0x399FA8, )
        Yay0_399FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/399FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_399FA8, 0x39A348)
    
    SPLAT_BEGIN_SEG(data_39A348, 0x39A348, 0x39A348, )
        Yay0_39A348_Yay0 = .;
        BUILD_DIR/bin/Yay0/39A348.Yay0.o(.data);
    SPLAT_END_SEG(data_39A348, 0x39A688)
    
    SPLAT_BEGIN_SEG(data_39A688, 0x39A688, 0x39A688, )
        Yay0_39A688_Yay0 = .;
        BUILD_DIR/bin/Yay0/39A688.Yay0.o(.data);
    SPLAT_END_SEG(data_39A688, 0x39DC38)
    
    SPLAT_BEGIN_SEG(data_39DC38, 0x39DC38, 0x39DC38, )
        Yay0_39DC38_Yay0 = .;
        BUILD_DIR/bin/Yay0/39DC38.Yay0.o(.data);
    SPLAT_END_SEG(data_39DC38, 0x39DE38)
    
    SPLAT_BEGIN_SEG(data_39DE38, 0x39DE38, 0x39DE38, )
        Yay0_39DE38_Yay0 = .;
        BUILD_DIR/bin/Yay0/39DE38.Yay0.o(.data);
    SPLAT_END_SEG(data_39DE38, 0x39E068)
    
    SPLAT_BEGIN_SEG(data_39E068, 0x39E068, 0x39E068, )
        Yay0_39E068_Yay0 = .;
        BUILD_DIR/bin/Yay0/39E068.Yay0.o(.data);
    SPLAT_END_SEG(data_39E068, 0x39E228)
    
    SPLAT_BEGIN_SEG(data_39E228, 0x39E228, 0x39E228, )
        Yay0_39E228_Yay0 = .;
        BUILD_DIR/bin/Yay0/39E228.Yay0.o(.data);
    SPLAT_END_SEG(data_39E228, 0x39E440)
    
    SPLAT_BEGIN_SEG(data_39E440, 0x39E440, 0x39E440, )
        Yay0_39E440_Yay0 = .;
        BUILD_DIR/bin/Yay0/39E440.Yay0.o(.data);
    SPLAT_END_SEG(data_39E440, 0x39E720)
    
    SPLAT_BEGIN_SEG(data_39E720, 0x39E720, 0x39E720, )
        Yay0_39E720_Yay0 = .;
        BUILD_DIR/bin/Yay0/39E720.Yay0.o(.data);
    SPLAT_END_SEG(data_39E720, 0x39EA78)
    
    SPLAT_BEGIN_SEG(data_39EA78, 0x39EA78, 0x39EA78, )
        Yay0_39EA78_Yay0 = .;
        BUILD_DIR/bin/Yay0/39EA78.Yay0.o(.data);
    SPLAT_END_SEG(data_39EA78, 0x39ED40)
    
    SPLAT_BEGIN_SEG(data_39ED40, 0x39ED40, 0x39ED40, )
        Yay0_39ED40_Yay0 = .;
        BUILD_DIR/bin/Yay0/39ED40.Yay0.o(.data);
    SPLAT_END_SEG(data_39ED40, 0x39EF40)
    
    SPLAT_BEGIN_SEG(data_39EF40, 0x39EF40, 0x39EF40, )
        Yay0_39EF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/39EF40.Yay0.o(.data);
    SPLAT_END_SEG(data_39EF40, 0x39F110)
    
    SPLAT_BEGIN_SEG(data_39F110, 0x39F110, 0x39F110, )
        Yay0_39F110_Yay0 = .;
        BUILD_DIR/bin/Yay0/39F110.Yay0.o(.data);
    SPLAT_END_SEG(data_39F110, 0x39F4C8)
    
    SPLAT_BEGIN_SEG(data_39F4C8, 0x39F4C8, 0x39F4C8, )
        Yay0_39F4C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/39F4C8.Yay0.o(.data);
    SPLAT_END_SEG(data_39F4C8, 0x39F7C0)
    
    SPLAT_BEGIN_SEG(data_39F7C0, 0x39F7C0, 0x39F7C0, )
        Yay0_39F7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/39F7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_39F7C0, 0x39F890)
    
    SPLAT_BEGIN_SEG(data_39F890, 0x39F890, 0x39F890, )
        Yay0_39F890_Yay0 = .;
        BUILD_DIR/bin/Yay0/39F890.Yay0.o(.data);
    SPLAT_END_SEG(data_39F890, 0x39F9B0)
    
    SPLAT_BEGIN_SEG(data_39F9B0, 0x39F9B0, 0x39F9B0, )
        Yay0_39F9B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/39F9B0.Yay0.o(.data);
    SPLAT_END_SEG(data_39F9B0, 0x39FAE8)
    
    SPLAT_BEGIN_SEG(data_39FAE8, 0x39FAE8, 0x39FAE8, )
        Yay0_39FAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/39FAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_39FAE8, 0x3A0340)
    
    SPLAT_BEGIN_SEG(data_3A0340, 0x3A0340, 0x3A0340, )
        Yay0_3A0340_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A0340.Yay0.o(.data);
    SPLAT_END_SEG(data_3A0340, 0x3A03C8)
    
    SPLAT_BEGIN_SEG(data_3A03C8, 0x3A03C8, 0x3A03C8, )
        Yay0_3A03C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A03C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3A03C8, 0x3A1360)
    
    SPLAT_BEGIN_SEG(data_3A1360, 0x3A1360, 0x3A1360, )
        Yay0_3A1360_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A1360.Yay0.o(.data);
    SPLAT_END_SEG(data_3A1360, 0x3A8908)
    
    SPLAT_BEGIN_SEG(data_3A8908, 0x3A8908, 0x3A8908, )
        Yay0_3A8908_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A8908.Yay0.o(.data);
    SPLAT_END_SEG(data_3A8908, 0x3A8E28)
    
    SPLAT_BEGIN_SEG(data_3A8E28, 0x3A8E28, 0x3A8E28, )
        Yay0_3A8E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A8E28.Yay0.o(.data);
    SPLAT_END_SEG(data_3A8E28, 0x3A93D0)
    
    SPLAT_BEGIN_SEG(data_3A93D0, 0x3A93D0, 0x3A93D0, )
        Yay0_3A93D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A93D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3A93D0, 0x3A9B10)
    
    SPLAT_BEGIN_SEG(data_3A9B10, 0x3A9B10, 0x3A9B10, )
        Yay0_3A9B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/3A9B10.Yay0.o(.data);
    SPLAT_END_SEG(data_3A9B10, 0x3AAAC8)
    
    SPLAT_BEGIN_SEG(data_3AAAC8, 0x3AAAC8, 0x3AAAC8, )
        Yay0_3AAAC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AAAC8.Yay0.o(.data);
    SPLAT_END_SEG(data_3AAAC8, 0x3AAC20)
    
    SPLAT_BEGIN_SEG(data_3AAC20, 0x3AAC20, 0x3AAC20, )
        Yay0_3AAC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AAC20.Yay0.o(.data);
    SPLAT_END_SEG(data_3AAC20, 0x3AB870)
    
    SPLAT_BEGIN_SEG(data_3AB870, 0x3AB870, 0x3AB870, )
        Yay0_3AB870_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AB870.Yay0.o(.data);
    SPLAT_END_SEG(data_3AB870, 0x3ABC80)
    
    SPLAT_BEGIN_SEG(data_3ABC80, 0x3ABC80, 0x3ABC80, )
        Yay0_3ABC80_Yay0 = .;
        BUILD_DIR/bin/Yay0/3ABC80.Yay0.o(.data);
    SPLAT_END_SEG(data_3ABC80, 0x3AC080)
    
    SPLAT_BEGIN_SEG(data_3AC080, 0x3AC080, 0x3AC080, )
        Yay0_3AC080_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AC080.Yay0.o(.data);
    SPLAT_END_SEG(data_3AC080, 0x3AC7C0)
    
    SPLAT_BEGIN_SEG(data_3AC7C0, 0x3AC7C0, 0x3AC7C0, )
        Yay0_3AC7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AC7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3AC7C0, 0x3ADCA0)
    
    SPLAT_BEGIN_SEG(data_3ADCA0, 0x3ADCA0, 0x3ADCA0, )
        Yay0_3ADCA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3ADCA0.Yay0.o(.data);
    SPLAT_END_SEG(data_3ADCA0, 0x3AEA90)
    
    SPLAT_BEGIN_SEG(data_3AEA90, 0x3AEA90, 0x3AEA90, )
        Yay0_3AEA90_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AEA90.Yay0.o(.data);
    SPLAT_END_SEG(data_3AEA90, 0x3AECE8)
    
    SPLAT_BEGIN_SEG(data_3AECE8, 0x3AECE8, 0x3AECE8, )
        Yay0_3AECE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AECE8.Yay0.o(.data);
    SPLAT_END_SEG(data_3AECE8, 0x3AEDD0)
    
    SPLAT_BEGIN_SEG(data_3AEDD0, 0x3AEDD0, 0x3AEDD0, )
        Yay0_3AEDD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AEDD0.Yay0.o(.data);
    SPLAT_END_SEG(data_3AEDD0, 0x3AF008)
    
    SPLAT_BEGIN_SEG(data_3AF008, 0x3AF008, 0x3AF008, )
        Yay0_3AF008_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AF008.Yay0.o(.data);
    SPLAT_END_SEG(data_3AF008, 0x3AF270)
    
    SPLAT_BEGIN_SEG(data_3AF270, 0x3AF270, 0x3AF270, )
        Yay0_3AF270_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AF270.Yay0.o(.data);
    SPLAT_END_SEG(data_3AF270, 0x3AF4E8)
    
    SPLAT_BEGIN_SEG(data_3AF4E8, 0x3AF4E8, 0x3AF4E8, )
        Yay0_3AF4E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AF4E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3AF4E8, 0x3AF758)
    
    SPLAT_BEGIN_SEG(data_3AF758, 0x3AF758, 0x3AF758, )
        Yay0_3AF758_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AF758.Yay0.o(.data);
    SPLAT_END_SEG(data_3AF758, 0x3AF9F0)
    
    SPLAT_BEGIN_SEG(data_3AF9F0, 0x3AF9F0, 0x3AF9F0, )
        Yay0_3AF9F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AF9F0.Yay0.o(.data);
    SPLAT_END_SEG(data_3AF9F0, 0x3AFC70)
    
    SPLAT_BEGIN_SEG(data_3AFC70, 0x3AFC70, 0x3AFC70, )
        Yay0_3AFC70_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AFC70.Yay0.o(.data);
    SPLAT_END_SEG(data_3AFC70, 0x3AFEF0)
    
    SPLAT_BEGIN_SEG(data_3AFEF0, 0x3AFEF0, 0x3AFEF0, )
        Yay0_3AFEF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3AFEF0.Yay0.o(.data);
    SPLAT_END_SEG(data_3AFEF0, 0x3B0148)
    
    SPLAT_BEGIN_SEG(data_3B0148, 0x3B0148, 0x3B0148, )
        Yay0_3B0148_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B0148.Yay0.o(.data);
    SPLAT_END_SEG(data_3B0148, 0x3B03D8)
    
    SPLAT_BEGIN_SEG(data_3B03D8, 0x3B03D8, 0x3B03D8, )
        Yay0_3B03D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B03D8.Yay0.o(.data);
    SPLAT_END_SEG(data_3B03D8, 0x3B0660)
    
    SPLAT_BEGIN_SEG(data_3B0660, 0x3B0660, 0x3B0660, )
        Yay0_3B0660_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B0660.Yay0.o(.data);
    SPLAT_END_SEG(data_3B0660, 0x3B0B18)
    
    SPLAT_BEGIN_SEG(data_3B0B18, 0x3B0B18, 0x3B0B18, )
        Yay0_3B0B18_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B0B18.Yay0.o(.data);
    SPLAT_END_SEG(data_3B0B18, 0x3B0FA0)
    
    SPLAT_BEGIN_SEG(data_3B0FA0, 0x3B0FA0, 0x3B0FA0, )
        Yay0_3B0FA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B0FA0.Yay0.o(.data);
    SPLAT_END_SEG(data_3B0FA0, 0x3B14C0)
    
    SPLAT_BEGIN_SEG(data_3B14C0, 0x3B14C0, 0x3B14C0, )
        Yay0_3B14C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B14C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3B14C0, 0x3B19B8)
    
    SPLAT_BEGIN_SEG(data_3B19B8, 0x3B19B8, 0x3B19B8, )
        Yay0_3B19B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B19B8.Yay0.o(.data);
    SPLAT_END_SEG(data_3B19B8, 0x3B1E48)
    
    SPLAT_BEGIN_SEG(data_3B1E48, 0x3B1E48, 0x3B1E48, )
        Yay0_3B1E48_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B1E48.Yay0.o(.data);
    SPLAT_END_SEG(data_3B1E48, 0x3B2310)
    
    SPLAT_BEGIN_SEG(data_3B2310, 0x3B2310, 0x3B2310, )
        Yay0_3B2310_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B2310.Yay0.o(.data);
    SPLAT_END_SEG(data_3B2310, 0x3B27D0)
    
    SPLAT_BEGIN_SEG(data_3B27D0, 0x3B27D0, 0x3B27D0, )
        Yay0_3B27D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B27D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3B27D0, 0x3B2C68)
    
    SPLAT_BEGIN_SEG(data_3B2C68, 0x3B2C68, 0x3B2C68, )
        Yay0_3B2C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B2C68.Yay0.o(.data);
    SPLAT_END_SEG(data_3B2C68, 0x3B3188)
    
    SPLAT_BEGIN_SEG(data_3B3188, 0x3B3188, 0x3B3188, )
        Yay0_3B3188_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B3188.Yay0.o(.data);
    SPLAT_END_SEG(data_3B3188, 0x3B3678)
    
    SPLAT_BEGIN_SEG(data_3B3678, 0x3B3678, 0x3B3678, )
        Yay0_3B3678_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B3678.Yay0.o(.data);
    SPLAT_END_SEG(data_3B3678, 0x3B55E8)
    
    SPLAT_BEGIN_SEG(data_3B55E8, 0x3B55E8, 0x3B55E8, )
        Yay0_3B55E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3B55E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3B55E8, 0x3BA2F0)
    
    SPLAT_BEGIN_SEG(data_3BA2F0, 0x3BA2F0, 0x3BA2F0, )
        Yay0_3BA2F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3BA2F0.Yay0.o(.data);
    SPLAT_END_SEG(data_3BA2F0, 0x3BE550)
    
    SPLAT_BEGIN_SEG(data_3BE550, 0x3BE550, 0x3BE550, )
        Yay0_3BE550_Yay0 = .;
        BUILD_DIR/bin/Yay0/3BE550.Yay0.o(.data);
    SPLAT_END_SEG(data_3BE550, 0x3BE838)
    
    SPLAT_BEGIN_SEG(data_3BE838, 0x3BE838, 0x3BE838, )
        Yay0_3BE838_Yay0 = .;
        BUILD_DIR/bin/Yay0/3BE838.Yay0.o(.data);
    SPLAT_END_SEG(data_3BE838, 0x3BFDC0)
    
    SPLAT_BEGIN_SEG(data_3BFDC0, 0x3BFDC0, 0x3BFDC0, )
        Yay0_3BFDC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3BFDC0.Yay0.o(.data);
    SPLAT_END_SEG(data_3BFDC0, 0x3C1380)
    
    SPLAT_BEGIN_SEG(data_3C1380, 0x3C1380, 0x3C1380, )
        Yay0_3C1380_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C1380.Yay0.o(.data);
    SPLAT_END_SEG(data_3C1380, 0x3C2910)
    
    SPLAT_BEGIN_SEG(data_3C2910, 0x3C2910, 0x3C2910, )
        Yay0_3C2910_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C2910.Yay0.o(.data);
    SPLAT_END_SEG(data_3C2910, 0x3C3D70)
    
    SPLAT_BEGIN_SEG(data_3C3D70, 0x3C3D70, 0x3C3D70, )
        Yay0_3C3D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C3D70.Yay0.o(.data);
    SPLAT_END_SEG(data_3C3D70, 0x3C3E20)
    
    SPLAT_BEGIN_SEG(data_3C3E20, 0x3C3E20, 0x3C3E20, )
        Yay0_3C3E20_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C3E20.Yay0.o(.data);
    SPLAT_END_SEG(data_3C3E20, 0x3C3ED0)
    
    SPLAT_BEGIN_SEG(data_3C3ED0, 0x3C3ED0, 0x3C3ED0, )
        Yay0_3C3ED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C3ED0.Yay0.o(.data);
    SPLAT_END_SEG(data_3C3ED0, 0x3C3F80)
    
    SPLAT_BEGIN_SEG(data_3C3F80, 0x3C3F80, 0x3C3F80, )
        Yay0_3C3F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C3F80.Yay0.o(.data);
    SPLAT_END_SEG(data_3C3F80, 0x3C4038)
    
    SPLAT_BEGIN_SEG(data_3C4038, 0x3C4038, 0x3C4038, )
        Yay0_3C4038_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C4038.Yay0.o(.data);
    SPLAT_END_SEG(data_3C4038, 0x3C4070)
    
    SPLAT_BEGIN_SEG(data_3C4070, 0x3C4070, 0x3C4070, )
        Yay0_3C4070_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C4070.Yay0.o(.data);
    SPLAT_END_SEG(data_3C4070, 0x3C40B0)
    
    SPLAT_BEGIN_SEG(data_3C40B0, 0x3C40B0, 0x3C40B0, )
        Yay0_3C40B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C40B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3C40B0, 0x3C40E8)
    
    SPLAT_BEGIN_SEG(data_3C40E8, 0x3C40E8, 0x3C40E8, )
        Yay0_3C40E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C40E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3C40E8, 0x3C4120)
    
    SPLAT_BEGIN_SEG(data_3C4120, 0x3C4120, 0x3C4120, )
        Yay0_3C4120_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C4120.Yay0.o(.data);
    SPLAT_END_SEG(data_3C4120, 0x3C4580)
    
    SPLAT_BEGIN_SEG(data_3C4580, 0x3C4580, 0x3C4580, )
        Yay0_3C4580_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C4580.Yay0.o(.data);
    SPLAT_END_SEG(data_3C4580, 0x3C4CC0)
    
    SPLAT_BEGIN_SEG(data_3C4CC0, 0x3C4CC0, 0x3C4CC0, )
        Yay0_3C4CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C4CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_3C4CC0, 0x3C5258)
    
    SPLAT_BEGIN_SEG(data_3C5258, 0x3C5258, 0x3C5258, )
        Yay0_3C5258_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C5258.Yay0.o(.data);
    SPLAT_END_SEG(data_3C5258, 0x3C57B8)
    
    SPLAT_BEGIN_SEG(data_3C57B8, 0x3C57B8, 0x3C57B8, )
        Yay0_3C57B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C57B8.Yay0.o(.data);
    SPLAT_END_SEG(data_3C57B8, 0x3C5E48)
    
    SPLAT_BEGIN_SEG(data_3C5E48, 0x3C5E48, 0x3C5E48, )
        Yay0_3C5E48_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C5E48.Yay0.o(.data);
    SPLAT_END_SEG(data_3C5E48, 0x3C62D0)
    
    SPLAT_BEGIN_SEG(data_3C62D0, 0x3C62D0, 0x3C62D0, )
        Yay0_3C62D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C62D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3C62D0, 0x3C66F8)
    
    SPLAT_BEGIN_SEG(data_3C66F8, 0x3C66F8, 0x3C66F8, )
        Yay0_3C66F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C66F8.Yay0.o(.data);
    SPLAT_END_SEG(data_3C66F8, 0x3C6A50)
    
    SPLAT_BEGIN_SEG(data_3C6A50, 0x3C6A50, 0x3C6A50, )
        Yay0_3C6A50_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C6A50.Yay0.o(.data);
    SPLAT_END_SEG(data_3C6A50, 0x3C6E78)
    
    SPLAT_BEGIN_SEG(data_3C6E78, 0x3C6E78, 0x3C6E78, )
        Yay0_3C6E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C6E78.Yay0.o(.data);
    SPLAT_END_SEG(data_3C6E78, 0x3C6F30)
    
    SPLAT_BEGIN_SEG(data_3C6F30, 0x3C6F30, 0x3C6F30, )
        Yay0_3C6F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C6F30.Yay0.o(.data);
    SPLAT_END_SEG(data_3C6F30, 0x3C7380)
    
    SPLAT_BEGIN_SEG(data_3C7380, 0x3C7380, 0x3C7380, )
        Yay0_3C7380_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C7380.Yay0.o(.data);
    SPLAT_END_SEG(data_3C7380, 0x3C77D0)
    
    SPLAT_BEGIN_SEG(data_3C77D0, 0x3C77D0, 0x3C77D0, )
        Yay0_3C77D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3C77D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3C77D0, 0x3CA4C0)
    
    SPLAT_BEGIN_SEG(data_3CA4C0, 0x3CA4C0, 0x3CA4C0, )
        Yay0_3CA4C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CA4C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3CA4C0, 0x3CA790)
    
    SPLAT_BEGIN_SEG(data_3CA790, 0x3CA790, 0x3CA790, )
        Yay0_3CA790_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CA790.Yay0.o(.data);
    SPLAT_END_SEG(data_3CA790, 0x3CAA98)
    
    SPLAT_BEGIN_SEG(data_3CAA98, 0x3CAA98, 0x3CAA98, )
        Yay0_3CAA98_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CAA98.Yay0.o(.data);
    SPLAT_END_SEG(data_3CAA98, 0x3CAE00)
    
    SPLAT_BEGIN_SEG(data_3CAE00, 0x3CAE00, 0x3CAE00, )
        Yay0_3CAE00_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CAE00.Yay0.o(.data);
    SPLAT_END_SEG(data_3CAE00, 0x3CB240)
    
    SPLAT_BEGIN_SEG(data_3CB240, 0x3CB240, 0x3CB240, )
        Yay0_3CB240_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CB240.Yay0.o(.data);
    SPLAT_END_SEG(data_3CB240, 0x3CB5C8)
    
    SPLAT_BEGIN_SEG(data_3CB5C8, 0x3CB5C8, 0x3CB5C8, )
        Yay0_3CB5C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CB5C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3CB5C8, 0x3CB810)
    
    SPLAT_BEGIN_SEG(data_3CB810, 0x3CB810, 0x3CB810, )
        Yay0_3CB810_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CB810.Yay0.o(.data);
    SPLAT_END_SEG(data_3CB810, 0x3CC4C8)
    
    SPLAT_BEGIN_SEG(data_3CC4C8, 0x3CC4C8, 0x3CC4C8, )
        Yay0_3CC4C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3CC4C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3CC4C8, 0x3D4D98)
    
    SPLAT_BEGIN_SEG(data_3D4D98, 0x3D4D98, 0x3D4D98, )
        Yay0_3D4D98_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D4D98.Yay0.o(.data);
    SPLAT_END_SEG(data_3D4D98, 0x3D52D8)
    
    SPLAT_BEGIN_SEG(data_3D52D8, 0x3D52D8, 0x3D52D8, )
        Yay0_3D52D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D52D8.Yay0.o(.data);
    SPLAT_END_SEG(data_3D52D8, 0x3D5B78)
    
    SPLAT_BEGIN_SEG(data_3D5B78, 0x3D5B78, 0x3D5B78, )
        Yay0_3D5B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D5B78.Yay0.o(.data);
    SPLAT_END_SEG(data_3D5B78, 0x3D64F8)
    
    SPLAT_BEGIN_SEG(data_3D64F8, 0x3D64F8, 0x3D64F8, )
        Yay0_3D64F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D64F8.Yay0.o(.data);
    SPLAT_END_SEG(data_3D64F8, 0x3D7658)
    
    SPLAT_BEGIN_SEG(data_3D7658, 0x3D7658, 0x3D7658, )
        Yay0_3D7658_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D7658.Yay0.o(.data);
    SPLAT_END_SEG(data_3D7658, 0x3D79D0)
    
    SPLAT_BEGIN_SEG(data_3D79D0, 0x3D79D0, 0x3D79D0, )
        Yay0_3D79D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D79D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3D79D0, 0x3D7F90)
    
    SPLAT_BEGIN_SEG(data_3D7F90, 0x3D7F90, 0x3D7F90, )
        Yay0_3D7F90_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D7F90.Yay0.o(.data);
    SPLAT_END_SEG(data_3D7F90, 0x3D8588)
    
    SPLAT_BEGIN_SEG(data_3D8588, 0x3D8588, 0x3D8588, )
        Yay0_3D8588_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D8588.Yay0.o(.data);
    SPLAT_END_SEG(data_3D8588, 0x3D9098)
    
    SPLAT_BEGIN_SEG(data_3D9098, 0x3D9098, 0x3D9098, )
        Yay0_3D9098_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D9098.Yay0.o(.data);
    SPLAT_END_SEG(data_3D9098, 0x3D9298)
    
    SPLAT_BEGIN_SEG(data_3D9298, 0x3D9298, 0x3D9298, )
        Yay0_3D9298_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D9298.Yay0.o(.data);
    SPLAT_END_SEG(data_3D9298, 0x3D96E0)
    
    SPLAT_BEGIN_SEG(data_3D96E0, 0x3D96E0, 0x3D96E0, )
        Yay0_3D96E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D96E0.Yay0.o(.data);
    SPLAT_END_SEG(data_3D96E0, 0x3D9990)
    
    SPLAT_BEGIN_SEG(data_3D9990, 0x3D9990, 0x3D9990, )
        Yay0_3D9990_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D9990.Yay0.o(.data);
    SPLAT_END_SEG(data_3D9990, 0x3D9D10)
    
    SPLAT_BEGIN_SEG(data_3D9D10, 0x3D9D10, 0x3D9D10, )
        Yay0_3D9D10_Yay0 = .;
        BUILD_DIR/bin/Yay0/3D9D10.Yay0.o(.data);
    SPLAT_END_SEG(data_3D9D10, 0x3DA9D0)
    
    SPLAT_BEGIN_SEG(data_3DA9D0, 0x3DA9D0, 0x3DA9D0, )
        Yay0_3DA9D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3DA9D0.Yay0.o(.data);
    SPLAT_END_SEG(data_3DA9D0, 0x3DC748)
    
    SPLAT_BEGIN_SEG(data_3DC748, 0x3DC748, 0x3DC748, )
        Yay0_3DC748_Yay0 = .;
        BUILD_DIR/bin/Yay0/3DC748.Yay0.o(.data);
    SPLAT_END_SEG(data_3DC748, 0x3DF7D8)
    
    SPLAT_BEGIN_SEG(data_3DF7D8, 0x3DF7D8, 0x3DF7D8, )
        Yay0_3DF7D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3DF7D8.Yay0.o(.data);
    SPLAT_END_SEG(data_3DF7D8, 0x3E0D40)
    
    SPLAT_BEGIN_SEG(data_3E0D40, 0x3E0D40, 0x3E0D40, )
        Yay0_3E0D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E0D40.Yay0.o(.data);
    SPLAT_END_SEG(data_3E0D40, 0x3E1D68)
    
    SPLAT_BEGIN_SEG(data_3E1D68, 0x3E1D68, 0x3E1D68, )
        Yay0_3E1D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E1D68.Yay0.o(.data);
    SPLAT_END_SEG(data_3E1D68, 0x3E2B60)
    
    SPLAT_BEGIN_SEG(data_3E2B60, 0x3E2B60, 0x3E2B60, )
        Yay0_3E2B60_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E2B60.Yay0.o(.data);
    SPLAT_END_SEG(data_3E2B60, 0x3E3560)
    
    SPLAT_BEGIN_SEG(data_3E3560, 0x3E3560, 0x3E3560, )
        Yay0_3E3560_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E3560.Yay0.o(.data);
    SPLAT_END_SEG(data_3E3560, 0x3E4060)
    
    SPLAT_BEGIN_SEG(data_3E4060, 0x3E4060, 0x3E4060, )
        Yay0_3E4060_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E4060.Yay0.o(.data);
    SPLAT_END_SEG(data_3E4060, 0x3E43C0)
    
    SPLAT_BEGIN_SEG(data_3E43C0, 0x3E43C0, 0x3E43C0, )
        Yay0_3E43C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E43C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3E43C0, 0x3E47C0)
    
    SPLAT_BEGIN_SEG(data_3E47C0, 0x3E47C0, 0x3E47C0, )
        Yay0_3E47C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E47C0.Yay0.o(.data);
    SPLAT_END_SEG(data_3E47C0, 0x3E4BE8)
    
    SPLAT_BEGIN_SEG(data_3E4BE8, 0x3E4BE8, 0x3E4BE8, )
        Yay0_3E4BE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E4BE8.Yay0.o(.data);
    SPLAT_END_SEG(data_3E4BE8, 0x3E4F10)
    
    SPLAT_BEGIN_SEG(data_3E4F10, 0x3E4F10, 0x3E4F10, )
        Yay0_3E4F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E4F10.Yay0.o(.data);
    SPLAT_END_SEG(data_3E4F10, 0x3E4FA8)
    
    SPLAT_BEGIN_SEG(data_3E4FA8, 0x3E4FA8, 0x3E4FA8, )
        Yay0_3E4FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E4FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_3E4FA8, 0x3E5B98)
    
    SPLAT_BEGIN_SEG(data_3E5B98, 0x3E5B98, 0x3E5B98, )
        Yay0_3E5B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E5B98.Yay0.o(.data);
    SPLAT_END_SEG(data_3E5B98, 0x3E6938)
    
    SPLAT_BEGIN_SEG(data_3E6938, 0x3E6938, 0x3E6938, )
        Yay0_3E6938_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E6938.Yay0.o(.data);
    SPLAT_END_SEG(data_3E6938, 0x3E7518)
    
    SPLAT_BEGIN_SEG(data_3E7518, 0x3E7518, 0x3E7518, )
        Yay0_3E7518_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E7518.Yay0.o(.data);
    SPLAT_END_SEG(data_3E7518, 0x3E7CE0)
    
    SPLAT_BEGIN_SEG(data_3E7CE0, 0x3E7CE0, 0x3E7CE0, )
        Yay0_3E7CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3E7CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_3E7CE0, 0x3ED3D8)
    
    SPLAT_BEGIN_SEG(data_3ED3D8, 0x3ED3D8, 0x3ED3D8, )
        Yay0_3ED3D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3ED3D8.Yay0.o(.data);
    SPLAT_END_SEG(data_3ED3D8, 0x3F36F0)
    
    SPLAT_BEGIN_SEG(data_3F36F0, 0x3F36F0, 0x3F36F0, )
        Yay0_3F36F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F36F0.Yay0.o(.data);
    SPLAT_END_SEG(data_3F36F0, 0x3F4978)
    
    SPLAT_BEGIN_SEG(data_3F4978, 0x3F4978, 0x3F4978, )
        Yay0_3F4978_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F4978.Yay0.o(.data);
    SPLAT_END_SEG(data_3F4978, 0x3F4C98)
    
    SPLAT_BEGIN_SEG(data_3F4C98, 0x3F4C98, 0x3F4C98, )
        Yay0_3F4C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F4C98.Yay0.o(.data);
    SPLAT_END_SEG(data_3F4C98, 0x3F5010)
    
    SPLAT_BEGIN_SEG(data_3F5010, 0x3F5010, 0x3F5010, )
        Yay0_3F5010_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F5010.Yay0.o(.data);
    SPLAT_END_SEG(data_3F5010, 0x3F5428)
    
    SPLAT_BEGIN_SEG(data_3F5428, 0x3F5428, 0x3F5428, )
        Yay0_3F5428_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F5428.Yay0.o(.data);
    SPLAT_END_SEG(data_3F5428, 0x3F5798)
    
    SPLAT_BEGIN_SEG(data_3F5798, 0x3F5798, 0x3F5798, )
        Yay0_3F5798_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F5798.Yay0.o(.data);
    SPLAT_END_SEG(data_3F5798, 0x3F59F8)
    
    SPLAT_BEGIN_SEG(data_3F59F8, 0x3F59F8, 0x3F59F8, )
        Yay0_3F59F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F59F8.Yay0.o(.data);
    SPLAT_END_SEG(data_3F59F8, 0x3F5CA0)
    
    SPLAT_BEGIN_SEG(data_3F5CA0, 0x3F5CA0, 0x3F5CA0, )
        Yay0_3F5CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F5CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_3F5CA0, 0x3F5DC8)
    
    SPLAT_BEGIN_SEG(data_3F5DC8, 0x3F5DC8, 0x3F5DC8, )
        Yay0_3F5DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F5DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_3F5DC8, 0x3F5F48)
    
    SPLAT_BEGIN_SEG(data_3F5F48, 0x3F5F48, 0x3F5F48, )
        Yay0_3F5F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F5F48.Yay0.o(.data);
    SPLAT_END_SEG(data_3F5F48, 0x3F60B0)
    
    SPLAT_BEGIN_SEG(data_3F60B0, 0x3F60B0, 0x3F60B0, )
        Yay0_3F60B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F60B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3F60B0, 0x3F6258)
    
    SPLAT_BEGIN_SEG(data_3F6258, 0x3F6258, 0x3F6258, )
        Yay0_3F6258_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F6258.Yay0.o(.data);
    SPLAT_END_SEG(data_3F6258, 0x3F6918)
    
    SPLAT_BEGIN_SEG(data_3F6918, 0x3F6918, 0x3F6918, )
        Yay0_3F6918_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F6918.Yay0.o(.data);
    SPLAT_END_SEG(data_3F6918, 0x3F6C70)
    
    SPLAT_BEGIN_SEG(data_3F6C70, 0x3F6C70, 0x3F6C70, )
        Yay0_3F6C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F6C70.Yay0.o(.data);
    SPLAT_END_SEG(data_3F6C70, 0x3F7318)
    
    SPLAT_BEGIN_SEG(data_3F7318, 0x3F7318, 0x3F7318, )
        Yay0_3F7318_Yay0 = .;
        BUILD_DIR/bin/Yay0/3F7318.Yay0.o(.data);
    SPLAT_END_SEG(data_3F7318, 0x3FB920)
    
    SPLAT_BEGIN_SEG(data_3FB920, 0x3FB920, 0x3FB920, )
        Yay0_3FB920_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FB920.Yay0.o(.data);
    SPLAT_END_SEG(data_3FB920, 0x3FBA28)
    
    SPLAT_BEGIN_SEG(data_3FBA28, 0x3FBA28, 0x3FBA28, )
        Yay0_3FBA28_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FBA28.Yay0.o(.data);
    SPLAT_END_SEG(data_3FBA28, 0x3FBB20)
    
    SPLAT_BEGIN_SEG(data_3FBB20, 0x3FBB20, 0x3FBB20, )
        Yay0_3FBB20_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FBB20.Yay0.o(.data);
    SPLAT_END_SEG(data_3FBB20, 0x3FC288)
    
    SPLAT_BEGIN_SEG(data_3FC288, 0x3FC288, 0x3FC288, )
        Yay0_3FC288_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FC288.Yay0.o(.data);
    SPLAT_END_SEG(data_3FC288, 0x3FCA18)
    
    SPLAT_BEGIN_SEG(data_3FCA18, 0x3FCA18, 0x3FCA18, )
        Yay0_3FCA18_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FCA18.Yay0.o(.data);
    SPLAT_END_SEG(data_3FCA18, 0x3FCBD8)
    
    SPLAT_BEGIN_SEG(data_3FCBD8, 0x3FCBD8, 0x3FCBD8, )
        Yay0_3FCBD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FCBD8.Yay0.o(.data);
    SPLAT_END_SEG(data_3FCBD8, 0x3FCDC8)
    
    SPLAT_BEGIN_SEG(data_3FCDC8, 0x3FCDC8, 0x3FCDC8, )
        Yay0_3FCDC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FCDC8.Yay0.o(.data);
    SPLAT_END_SEG(data_3FCDC8, 0x3FCF90)
    
    SPLAT_BEGIN_SEG(data_3FCF90, 0x3FCF90, 0x3FCF90, )
        Yay0_3FCF90_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FCF90.Yay0.o(.data);
    SPLAT_END_SEG(data_3FCF90, 0x3FD168)
    
    SPLAT_BEGIN_SEG(data_3FD168, 0x3FD168, 0x3FD168, )
        Yay0_3FD168_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FD168.Yay0.o(.data);
    SPLAT_END_SEG(data_3FD168, 0x3FD360)
    
    SPLAT_BEGIN_SEG(data_3FD360, 0x3FD360, 0x3FD360, )
        Yay0_3FD360_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FD360.Yay0.o(.data);
    SPLAT_END_SEG(data_3FD360, 0x3FD5C8)
    
    SPLAT_BEGIN_SEG(data_3FD5C8, 0x3FD5C8, 0x3FD5C8, )
        Yay0_3FD5C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FD5C8.Yay0.o(.data);
    SPLAT_END_SEG(data_3FD5C8, 0x3FD8B0)
    
    SPLAT_BEGIN_SEG(data_3FD8B0, 0x3FD8B0, 0x3FD8B0, )
        Yay0_3FD8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FD8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_3FD8B0, 0x3FDC00)
    
    SPLAT_BEGIN_SEG(data_3FDC00, 0x3FDC00, 0x3FDC00, )
        Yay0_3FDC00_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FDC00.Yay0.o(.data);
    SPLAT_END_SEG(data_3FDC00, 0x3FE050)
    
    SPLAT_BEGIN_SEG(data_3FE050, 0x3FE050, 0x3FE050, )
        Yay0_3FE050_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FE050.Yay0.o(.data);
    SPLAT_END_SEG(data_3FE050, 0x3FE490)
    
    SPLAT_BEGIN_SEG(data_3FE490, 0x3FE490, 0x3FE490, )
        Yay0_3FE490_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FE490.Yay0.o(.data);
    SPLAT_END_SEG(data_3FE490, 0x3FE6E8)
    
    SPLAT_BEGIN_SEG(data_3FE6E8, 0x3FE6E8, 0x3FE6E8, )
        Yay0_3FE6E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FE6E8.Yay0.o(.data);
    SPLAT_END_SEG(data_3FE6E8, 0x3FE928)
    
    SPLAT_BEGIN_SEG(data_3FE928, 0x3FE928, 0x3FE928, )
        Yay0_3FE928_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FE928.Yay0.o(.data);
    SPLAT_END_SEG(data_3FE928, 0x3FEB20)
    
    SPLAT_BEGIN_SEG(data_3FEB20, 0x3FEB20, 0x3FEB20, )
        Yay0_3FEB20_Yay0 = .;
        BUILD_DIR/bin/Yay0/3FEB20.Yay0.o(.data);
    SPLAT_END_SEG(data_3FEB20, 0x405250)
    
    SPLAT_BEGIN_SEG(data_405250, 0x405250, 0x405250, )
        Yay0_405250_Yay0 = .;
        BUILD_DIR/bin/Yay0/405250.Yay0.o(.data);
    SPLAT_END_SEG(data_405250, 0x405458)
    
    SPLAT_BEGIN_SEG(data_405458, 0x405458, 0x405458, )
        Yay0_405458_Yay0 = .;
        BUILD_DIR/bin/Yay0/405458.Yay0.o(.data);
    SPLAT_END_SEG(data_405458, 0x4056F0)
    
    SPLAT_BEGIN_SEG(data_4056F0, 0x4056F0, 0x4056F0, )
        Yay0_4056F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4056F0.Yay0.o(.data);
    SPLAT_END_SEG(data_4056F0, 0x405870)
    
    SPLAT_BEGIN_SEG(data_405870, 0x405870, 0x405870, )
        Yay0_405870_Yay0 = .;
        BUILD_DIR/bin/Yay0/405870.Yay0.o(.data);
    SPLAT_END_SEG(data_405870, 0x409138)
    
    SPLAT_BEGIN_SEG(data_409138, 0x409138, 0x409138, )
        Yay0_409138_Yay0 = .;
        BUILD_DIR/bin/Yay0/409138.Yay0.o(.data);
    SPLAT_END_SEG(data_409138, 0x4096C8)
    
    SPLAT_BEGIN_SEG(data_4096C8, 0x4096C8, 0x4096C8, )
        Yay0_4096C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4096C8.Yay0.o(.data);
    SPLAT_END_SEG(data_4096C8, 0x409BB0)
    
    SPLAT_BEGIN_SEG(data_409BB0, 0x409BB0, 0x409BB0, )
        Yay0_409BB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/409BB0.Yay0.o(.data);
    SPLAT_END_SEG(data_409BB0, 0x410C50)
    
    SPLAT_BEGIN_SEG(data_410C50, 0x410C50, 0x410C50, )
        Yay0_410C50_Yay0 = .;
        BUILD_DIR/bin/Yay0/410C50.Yay0.o(.data);
    SPLAT_END_SEG(data_410C50, 0x417328)
    
    SPLAT_BEGIN_SEG(data_417328, 0x417328, 0x417328, )
        Yay0_417328_Yay0 = .;
        BUILD_DIR/bin/Yay0/417328.Yay0.o(.data);
    SPLAT_END_SEG(data_417328, 0x4176C0)
    
    SPLAT_BEGIN_SEG(data_4176C0, 0x4176C0, 0x4176C0, )
        Yay0_4176C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4176C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4176C0, 0x4178E8)
    
    SPLAT_BEGIN_SEG(data_4178E8, 0x4178E8, 0x4178E8, )
        Yay0_4178E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4178E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4178E8, 0x4179D0)
    
    SPLAT_BEGIN_SEG(data_4179D0, 0x4179D0, 0x4179D0, )
        Yay0_4179D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4179D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4179D0, 0x418BD8)
    
    SPLAT_BEGIN_SEG(data_418BD8, 0x418BD8, 0x418BD8, )
        Yay0_418BD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/418BD8.Yay0.o(.data);
    SPLAT_END_SEG(data_418BD8, 0x419DE0)
    
    SPLAT_BEGIN_SEG(data_419DE0, 0x419DE0, 0x419DE0, )
        Yay0_419DE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/419DE0.Yay0.o(.data);
    SPLAT_END_SEG(data_419DE0, 0x41D150)
    
    SPLAT_BEGIN_SEG(data_41D150, 0x41D150, 0x41D150, )
        Yay0_41D150_Yay0 = .;
        BUILD_DIR/bin/Yay0/41D150.Yay0.o(.data);
    SPLAT_END_SEG(data_41D150, 0x41D4E8)
    
    SPLAT_BEGIN_SEG(data_41D4E8, 0x41D4E8, 0x41D4E8, )
        Yay0_41D4E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/41D4E8.Yay0.o(.data);
    SPLAT_END_SEG(data_41D4E8, 0x41D718)
    
    SPLAT_BEGIN_SEG(data_41D718, 0x41D718, 0x41D718, )
        Yay0_41D718_Yay0 = .;
        BUILD_DIR/bin/Yay0/41D718.Yay0.o(.data);
    SPLAT_END_SEG(data_41D718, 0x41DCF0)
    
    SPLAT_BEGIN_SEG(data_41DCF0, 0x41DCF0, 0x41DCF0, )
        Yay0_41DCF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/41DCF0.Yay0.o(.data);
    SPLAT_END_SEG(data_41DCF0, 0x41E848)
    
    SPLAT_BEGIN_SEG(data_41E848, 0x41E848, 0x41E848, )
        Yay0_41E848_Yay0 = .;
        BUILD_DIR/bin/Yay0/41E848.Yay0.o(.data);
    SPLAT_END_SEG(data_41E848, 0x41EE40)
    
    SPLAT_BEGIN_SEG(data_41EE40, 0x41EE40, 0x41EE40, )
        Yay0_41EE40_Yay0 = .;
        BUILD_DIR/bin/Yay0/41EE40.Yay0.o(.data);
    SPLAT_END_SEG(data_41EE40, 0x41F020)
    
    SPLAT_BEGIN_SEG(data_41F020, 0x41F020, 0x41F020, )
        Yay0_41F020_Yay0 = .;
        BUILD_DIR/bin/Yay0/41F020.Yay0.o(.data);
    SPLAT_END_SEG(data_41F020, 0x41F318)
    
    SPLAT_BEGIN_SEG(data_41F318, 0x41F318, 0x41F318, )
        Yay0_41F318_Yay0 = .;
        BUILD_DIR/bin/Yay0/41F318.Yay0.o(.data);
    SPLAT_END_SEG(data_41F318, 0x41F960)
    
    SPLAT_BEGIN_SEG(data_41F960, 0x41F960, 0x41F960, )
        Yay0_41F960_Yay0 = .;
        BUILD_DIR/bin/Yay0/41F960.Yay0.o(.data);
    SPLAT_END_SEG(data_41F960, 0x41FD10)
    
    SPLAT_BEGIN_SEG(data_41FD10, 0x41FD10, 0x41FD10, )
        Yay0_41FD10_Yay0 = .;
        BUILD_DIR/bin/Yay0/41FD10.Yay0.o(.data);
    SPLAT_END_SEG(data_41FD10, 0x420268)
    
    SPLAT_BEGIN_SEG(data_420268, 0x420268, 0x420268, )
        Yay0_420268_Yay0 = .;
        BUILD_DIR/bin/Yay0/420268.Yay0.o(.data);
    SPLAT_END_SEG(data_420268, 0x420600)
    
    SPLAT_BEGIN_SEG(data_420600, 0x420600, 0x420600, )
        Yay0_420600_Yay0 = .;
        BUILD_DIR/bin/Yay0/420600.Yay0.o(.data);
    SPLAT_END_SEG(data_420600, 0x420AF0)
    
    SPLAT_BEGIN_SEG(data_420AF0, 0x420AF0, 0x420AF0, )
        Yay0_420AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/420AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_420AF0, 0x421078)
    
    SPLAT_BEGIN_SEG(data_421078, 0x421078, 0x421078, )
        Yay0_421078_Yay0 = .;
        BUILD_DIR/bin/Yay0/421078.Yay0.o(.data);
    SPLAT_END_SEG(data_421078, 0x421540)
    
    SPLAT_BEGIN_SEG(data_421540, 0x421540, 0x421540, )
        Yay0_421540_Yay0 = .;
        BUILD_DIR/bin/Yay0/421540.Yay0.o(.data);
    SPLAT_END_SEG(data_421540, 0x421A70)
    
    SPLAT_BEGIN_SEG(data_421A70, 0x421A70, 0x421A70, )
        Yay0_421A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/421A70.Yay0.o(.data);
    SPLAT_END_SEG(data_421A70, 0x421E58)
    
    SPLAT_BEGIN_SEG(data_421E58, 0x421E58, 0x421E58, )
        Yay0_421E58_Yay0 = .;
        BUILD_DIR/bin/Yay0/421E58.Yay0.o(.data);
    SPLAT_END_SEG(data_421E58, 0x4221E8)
    
    SPLAT_BEGIN_SEG(data_4221E8, 0x4221E8, 0x4221E8, )
        Yay0_4221E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4221E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4221E8, 0x422558)
    
    SPLAT_BEGIN_SEG(data_422558, 0x422558, 0x422558, )
        Yay0_422558_Yay0 = .;
        BUILD_DIR/bin/Yay0/422558.Yay0.o(.data);
    SPLAT_END_SEG(data_422558, 0x422B68)
    
    SPLAT_BEGIN_SEG(data_422B68, 0x422B68, 0x422B68, )
        Yay0_422B68_Yay0 = .;
        BUILD_DIR/bin/Yay0/422B68.Yay0.o(.data);
    SPLAT_END_SEG(data_422B68, 0x422C58)
    
    SPLAT_BEGIN_SEG(data_422C58, 0x422C58, 0x422C58, )
        Yay0_422C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/422C58.Yay0.o(.data);
    SPLAT_END_SEG(data_422C58, 0x422CC8)
    
    SPLAT_BEGIN_SEG(data_422CC8, 0x422CC8, 0x422CC8, )
        Yay0_422CC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/422CC8.Yay0.o(.data);
    SPLAT_END_SEG(data_422CC8, 0x422DE0)
    
    SPLAT_BEGIN_SEG(data_422DE0, 0x422DE0, 0x422DE0, )
        Yay0_422DE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/422DE0.Yay0.o(.data);
    SPLAT_END_SEG(data_422DE0, 0x422F10)
    
    SPLAT_BEGIN_SEG(data_422F10, 0x422F10, 0x422F10, )
        Yay0_422F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/422F10.Yay0.o(.data);
    SPLAT_END_SEG(data_422F10, 0x422FD0)
    
    SPLAT_BEGIN_SEG(data_422FD0, 0x422FD0, 0x422FD0, )
        Yay0_422FD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/422FD0.Yay0.o(.data);
    SPLAT_END_SEG(data_422FD0, 0x4230D0)
    
    SPLAT_BEGIN_SEG(data_4230D0, 0x4230D0, 0x4230D0, )
        Yay0_4230D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4230D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4230D0, 0x4231F8)
    
    SPLAT_BEGIN_SEG(data_4231F8, 0x4231F8, 0x4231F8, )
        Yay0_4231F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4231F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4231F8, 0x4232D8)
    
    SPLAT_BEGIN_SEG(data_4232D8, 0x4232D8, 0x4232D8, )
        Yay0_4232D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4232D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4232D8, 0x423410)
    
    SPLAT_BEGIN_SEG(data_423410, 0x423410, 0x423410, )
        Yay0_423410_Yay0 = .;
        BUILD_DIR/bin/Yay0/423410.Yay0.o(.data);
    SPLAT_END_SEG(data_423410, 0x423540)
    
    SPLAT_BEGIN_SEG(data_423540, 0x423540, 0x423540, )
        Yay0_423540_Yay0 = .;
        BUILD_DIR/bin/Yay0/423540.Yay0.o(.data);
    SPLAT_END_SEG(data_423540, 0x423C18)
    
    SPLAT_BEGIN_SEG(data_423C18, 0x423C18, 0x423C18, )
        Yay0_423C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/423C18.Yay0.o(.data);
    SPLAT_END_SEG(data_423C18, 0x427000)
    
    SPLAT_BEGIN_SEG(data_427000, 0x427000, 0x427000, )
        Yay0_427000_Yay0 = .;
        BUILD_DIR/bin/Yay0/427000.Yay0.o(.data);
    SPLAT_END_SEG(data_427000, 0x427090)
    
    SPLAT_BEGIN_SEG(data_427090, 0x427090, 0x427090, )
        Yay0_427090_Yay0 = .;
        BUILD_DIR/bin/Yay0/427090.Yay0.o(.data);
    SPLAT_END_SEG(data_427090, 0x427148)
    
    SPLAT_BEGIN_SEG(data_427148, 0x427148, 0x427148, )
        Yay0_427148_Yay0 = .;
        BUILD_DIR/bin/Yay0/427148.Yay0.o(.data);
    SPLAT_END_SEG(data_427148, 0x42D9C8)
    
    SPLAT_BEGIN_SEG(data_42D9C8, 0x42D9C8, 0x42D9C8, )
        Yay0_42D9C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/42D9C8.Yay0.o(.data);
    SPLAT_END_SEG(data_42D9C8, 0x42E5D8)
    
    SPLAT_BEGIN_SEG(data_42E5D8, 0x42E5D8, 0x42E5D8, )
        Yay0_42E5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/42E5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_42E5D8, 0x42F158)
    
    SPLAT_BEGIN_SEG(data_42F158, 0x42F158, 0x42F158, )
        Yay0_42F158_Yay0 = .;
        BUILD_DIR/bin/Yay0/42F158.Yay0.o(.data);
    SPLAT_END_SEG(data_42F158, 0x42FC28)
    
    SPLAT_BEGIN_SEG(data_42FC28, 0x42FC28, 0x42FC28, )
        Yay0_42FC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/42FC28.Yay0.o(.data);
    SPLAT_END_SEG(data_42FC28, 0x430718)
    
    SPLAT_BEGIN_SEG(data_430718, 0x430718, 0x430718, )
        Yay0_430718_Yay0 = .;
        BUILD_DIR/bin/Yay0/430718.Yay0.o(.data);
    SPLAT_END_SEG(data_430718, 0x433268)
    
    SPLAT_BEGIN_SEG(data_433268, 0x433268, 0x433268, )
        Yay0_433268_Yay0 = .;
        BUILD_DIR/bin/Yay0/433268.Yay0.o(.data);
    SPLAT_END_SEG(data_433268, 0x435290)
    
    SPLAT_BEGIN_SEG(data_435290, 0x435290, 0x435290, )
        Yay0_435290_Yay0 = .;
        BUILD_DIR/bin/Yay0/435290.Yay0.o(.data);
    SPLAT_END_SEG(data_435290, 0x4379D8)
    
    SPLAT_BEGIN_SEG(data_4379D8, 0x4379D8, 0x4379D8, )
        Yay0_4379D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4379D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4379D8, 0x43A5F8)
    
    SPLAT_BEGIN_SEG(data_43A5F8, 0x43A5F8, 0x43A5F8, )
        Yay0_43A5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/43A5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_43A5F8, 0x43D5D8)
    
    SPLAT_BEGIN_SEG(data_43D5D8, 0x43D5D8, 0x43D5D8, )
        Yay0_43D5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/43D5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_43D5D8, 0x43F338)
    
    SPLAT_BEGIN_SEG(data_43F338, 0x43F338, 0x43F338, )
        Yay0_43F338_Yay0 = .;
        BUILD_DIR/bin/Yay0/43F338.Yay0.o(.data);
    SPLAT_END_SEG(data_43F338, 0x440E10)
    
    SPLAT_BEGIN_SEG(data_440E10, 0x440E10, 0x440E10, )
        Yay0_440E10_Yay0 = .;
        BUILD_DIR/bin/Yay0/440E10.Yay0.o(.data);
    SPLAT_END_SEG(data_440E10, 0x443530)
    
    SPLAT_BEGIN_SEG(data_443530, 0x443530, 0x443530, )
        Yay0_443530_Yay0 = .;
        BUILD_DIR/bin/Yay0/443530.Yay0.o(.data);
    SPLAT_END_SEG(data_443530, 0x445DC8)
    
    SPLAT_BEGIN_SEG(data_445DC8, 0x445DC8, 0x445DC8, )
        Yay0_445DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/445DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_445DC8, 0x447BB8)
    
    SPLAT_BEGIN_SEG(data_447BB8, 0x447BB8, 0x447BB8, )
        Yay0_447BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/447BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_447BB8, 0x449E90)
    
    SPLAT_BEGIN_SEG(data_449E90, 0x449E90, 0x449E90, )
        Yay0_449E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/449E90.Yay0.o(.data);
    SPLAT_END_SEG(data_449E90, 0x44C018)
    
    SPLAT_BEGIN_SEG(data_44C018, 0x44C018, 0x44C018, )
        Yay0_44C018_Yay0 = .;
        BUILD_DIR/bin/Yay0/44C018.Yay0.o(.data);
    SPLAT_END_SEG(data_44C018, 0x44DBA8)
    
    SPLAT_BEGIN_SEG(data_44DBA8, 0x44DBA8, 0x44DBA8, )
        Yay0_44DBA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/44DBA8.Yay0.o(.data);
    SPLAT_END_SEG(data_44DBA8, 0x450A30)
    
    SPLAT_BEGIN_SEG(data_450A30, 0x450A30, 0x450A30, )
        Yay0_450A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/450A30.Yay0.o(.data);
    SPLAT_END_SEG(data_450A30, 0x4528D8)
    
    SPLAT_BEGIN_SEG(data_4528D8, 0x4528D8, 0x4528D8, )
        Yay0_4528D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4528D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4528D8, 0x454C60)
    
    SPLAT_BEGIN_SEG(data_454C60, 0x454C60, 0x454C60, )
        Yay0_454C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/454C60.Yay0.o(.data);
    SPLAT_END_SEG(data_454C60, 0x4574B8)
    
    SPLAT_BEGIN_SEG(data_4574B8, 0x4574B8, 0x4574B8, )
        Yay0_4574B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4574B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4574B8, 0x458E60)
    
    SPLAT_BEGIN_SEG(data_458E60, 0x458E60, 0x458E60, )
        Yay0_458E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/458E60.Yay0.o(.data);
    SPLAT_END_SEG(data_458E60, 0x45ADD8)
    
    SPLAT_BEGIN_SEG(data_45ADD8, 0x45ADD8, 0x45ADD8, )
        Yay0_45ADD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/45ADD8.Yay0.o(.data);
    SPLAT_END_SEG(data_45ADD8, 0x45CC40)
    
    SPLAT_BEGIN_SEG(data_45CC40, 0x45CC40, 0x45CC40, )
        Yay0_45CC40_Yay0 = .;
        BUILD_DIR/bin/Yay0/45CC40.Yay0.o(.data);
    SPLAT_END_SEG(data_45CC40, 0x45EAE0)
    
    SPLAT_BEGIN_SEG(data_45EAE0, 0x45EAE0, 0x45EAE0, )
        Yay0_45EAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/45EAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_45EAE0, 0x460988)
    
    SPLAT_BEGIN_SEG(data_460988, 0x460988, 0x460988, )
        Yay0_460988_Yay0 = .;
        BUILD_DIR/bin/Yay0/460988.Yay0.o(.data);
    SPLAT_END_SEG(data_460988, 0x4628A8)
    
    SPLAT_BEGIN_SEG(data_4628A8, 0x4628A8, 0x4628A8, )
        Yay0_4628A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4628A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4628A8, 0x468B00)
    
    SPLAT_BEGIN_SEG(data_468B00, 0x468B00, 0x468B00, )
        Yay0_468B00_Yay0 = .;
        BUILD_DIR/bin/Yay0/468B00.Yay0.o(.data);
    SPLAT_END_SEG(data_468B00, 0x469DF0)
    
    SPLAT_BEGIN_SEG(data_469DF0, 0x469DF0, 0x469DF0, )
        Yay0_469DF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/469DF0.Yay0.o(.data);
    SPLAT_END_SEG(data_469DF0, 0x46E1A8)
    
    SPLAT_BEGIN_SEG(data_46E1A8, 0x46E1A8, 0x46E1A8, )
        Yay0_46E1A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/46E1A8.Yay0.o(.data);
    SPLAT_END_SEG(data_46E1A8, 0x475FB8)
    
    SPLAT_BEGIN_SEG(data_475FB8, 0x475FB8, 0x475FB8, )
        Yay0_475FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/475FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_475FB8, 0x476A68)
    
    SPLAT_BEGIN_SEG(data_476A68, 0x476A68, 0x476A68, )
        Yay0_476A68_Yay0 = .;
        BUILD_DIR/bin/Yay0/476A68.Yay0.o(.data);
    SPLAT_END_SEG(data_476A68, 0x477860)
    
    SPLAT_BEGIN_SEG(data_477860, 0x477860, 0x477860, )
        Yay0_477860_Yay0 = .;
        BUILD_DIR/bin/Yay0/477860.Yay0.o(.data);
    SPLAT_END_SEG(data_477860, 0x4784B0)
    
    SPLAT_BEGIN_SEG(data_4784B0, 0x4784B0, 0x4784B0, )
        Yay0_4784B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4784B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4784B0, 0x47DBA8)
    
    SPLAT_BEGIN_SEG(data_47DBA8, 0x47DBA8, 0x47DBA8, )
        Yay0_47DBA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/47DBA8.Yay0.o(.data);
    SPLAT_END_SEG(data_47DBA8, 0x47DC88)
    
    SPLAT_BEGIN_SEG(data_47DC88, 0x47DC88, 0x47DC88, )
        Yay0_47DC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/47DC88.Yay0.o(.data);
    SPLAT_END_SEG(data_47DC88, 0x47DD78)
    
    SPLAT_BEGIN_SEG(data_47DD78, 0x47DD78, 0x47DD78, )
        Yay0_47DD78_Yay0 = .;
        BUILD_DIR/bin/Yay0/47DD78.Yay0.o(.data);
    SPLAT_END_SEG(data_47DD78, 0x47DF50)
    
    SPLAT_BEGIN_SEG(data_47DF50, 0x47DF50, 0x47DF50, )
        Yay0_47DF50_Yay0 = .;
        BUILD_DIR/bin/Yay0/47DF50.Yay0.o(.data);
    SPLAT_END_SEG(data_47DF50, 0x47E3B0)
    
    SPLAT_BEGIN_SEG(data_47E3B0, 0x47E3B0, 0x47E3B0, )
        Yay0_47E3B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/47E3B0.Yay0.o(.data);
    SPLAT_END_SEG(data_47E3B0, 0x47E7A8)
    
    SPLAT_BEGIN_SEG(data_47E7A8, 0x47E7A8, 0x47E7A8, )
        Yay0_47E7A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/47E7A8.Yay0.o(.data);
    SPLAT_END_SEG(data_47E7A8, 0x47EA50)
    
    SPLAT_BEGIN_SEG(data_47EA50, 0x47EA50, 0x47EA50, )
        Yay0_47EA50_Yay0 = .;
        BUILD_DIR/bin/Yay0/47EA50.Yay0.o(.data);
    SPLAT_END_SEG(data_47EA50, 0x47EC28)
    
    SPLAT_BEGIN_SEG(data_47EC28, 0x47EC28, 0x47EC28, )
        Yay0_47EC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/47EC28.Yay0.o(.data);
    SPLAT_END_SEG(data_47EC28, 0x47EF68)
    
    SPLAT_BEGIN_SEG(data_47EF68, 0x47EF68, 0x47EF68, )
        Yay0_47EF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/47EF68.Yay0.o(.data);
    SPLAT_END_SEG(data_47EF68, 0x47F190)
    
    SPLAT_BEGIN_SEG(data_47F190, 0x47F190, 0x47F190, )
        Yay0_47F190_Yay0 = .;
        BUILD_DIR/bin/Yay0/47F190.Yay0.o(.data);
    SPLAT_END_SEG(data_47F190, 0x47F3A0)
    
    SPLAT_BEGIN_SEG(data_47F3A0, 0x47F3A0, 0x47F3A0, )
        Yay0_47F3A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/47F3A0.Yay0.o(.data);
    SPLAT_END_SEG(data_47F3A0, 0x47F4C8)
    
    SPLAT_BEGIN_SEG(data_47F4C8, 0x47F4C8, 0x47F4C8, )
        Yay0_47F4C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/47F4C8.Yay0.o(.data);
    SPLAT_END_SEG(data_47F4C8, 0x47F798)
    
    SPLAT_BEGIN_SEG(data_47F798, 0x47F798, 0x47F798, )
        Yay0_47F798_Yay0 = .;
        BUILD_DIR/bin/Yay0/47F798.Yay0.o(.data);
    SPLAT_END_SEG(data_47F798, 0x47F9B8)
    
    SPLAT_BEGIN_SEG(data_47F9B8, 0x47F9B8, 0x47F9B8, )
        Yay0_47F9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/47F9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_47F9B8, 0x47FC98)
    
    SPLAT_BEGIN_SEG(data_47FC98, 0x47FC98, 0x47FC98, )
        Yay0_47FC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/47FC98.Yay0.o(.data);
    SPLAT_END_SEG(data_47FC98, 0x47FDB8)
    
    SPLAT_BEGIN_SEG(data_47FDB8, 0x47FDB8, 0x47FDB8, )
        Yay0_47FDB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/47FDB8.Yay0.o(.data);
    SPLAT_END_SEG(data_47FDB8, 0x480088)
    
    SPLAT_BEGIN_SEG(data_480088, 0x480088, 0x480088, )
        Yay0_480088_Yay0 = .;
        BUILD_DIR/bin/Yay0/480088.Yay0.o(.data);
    SPLAT_END_SEG(data_480088, 0x480280)
    
    SPLAT_BEGIN_SEG(data_480280, 0x480280, 0x480280, )
        Yay0_480280_Yay0 = .;
        BUILD_DIR/bin/Yay0/480280.Yay0.o(.data);
    SPLAT_END_SEG(data_480280, 0x480530)
    
    SPLAT_BEGIN_SEG(data_480530, 0x480530, 0x480530, )
        Yay0_480530_Yay0 = .;
        BUILD_DIR/bin/Yay0/480530.Yay0.o(.data);
    SPLAT_END_SEG(data_480530, 0x480840)
    
    SPLAT_BEGIN_SEG(data_480840, 0x480840, 0x480840, )
        Yay0_480840_Yay0 = .;
        BUILD_DIR/bin/Yay0/480840.Yay0.o(.data);
    SPLAT_END_SEG(data_480840, 0x480A20)
    
    SPLAT_BEGIN_SEG(data_480A20, 0x480A20, 0x480A20, )
        Yay0_480A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/480A20.Yay0.o(.data);
    SPLAT_END_SEG(data_480A20, 0x480C80)
    
    SPLAT_BEGIN_SEG(data_480C80, 0x480C80, 0x480C80, )
        Yay0_480C80_Yay0 = .;
        BUILD_DIR/bin/Yay0/480C80.Yay0.o(.data);
    SPLAT_END_SEG(data_480C80, 0x480F48)
    
    SPLAT_BEGIN_SEG(data_480F48, 0x480F48, 0x480F48, )
        Yay0_480F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/480F48.Yay0.o(.data);
    SPLAT_END_SEG(data_480F48, 0x481188)
    
    SPLAT_BEGIN_SEG(data_481188, 0x481188, 0x481188, )
        Yay0_481188_Yay0 = .;
        BUILD_DIR/bin/Yay0/481188.Yay0.o(.data);
    SPLAT_END_SEG(data_481188, 0x481438)
    
    SPLAT_BEGIN_SEG(data_481438, 0x481438, 0x481438, )
        Yay0_481438_Yay0 = .;
        BUILD_DIR/bin/Yay0/481438.Yay0.o(.data);
    SPLAT_END_SEG(data_481438, 0x481610)
    
    SPLAT_BEGIN_SEG(data_481610, 0x481610, 0x481610, )
        Yay0_481610_Yay0 = .;
        BUILD_DIR/bin/Yay0/481610.Yay0.o(.data);
    SPLAT_END_SEG(data_481610, 0x481AC0)
    
    SPLAT_BEGIN_SEG(data_481AC0, 0x481AC0, 0x481AC0, )
        Yay0_481AC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/481AC0.Yay0.o(.data);
    SPLAT_END_SEG(data_481AC0, 0x481BE8)
    
    SPLAT_BEGIN_SEG(data_481BE8, 0x481BE8, 0x481BE8, )
        Yay0_481BE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/481BE8.Yay0.o(.data);
    SPLAT_END_SEG(data_481BE8, 0x482038)
    
    SPLAT_BEGIN_SEG(data_482038, 0x482038, 0x482038, )
        Yay0_482038_Yay0 = .;
        BUILD_DIR/bin/Yay0/482038.Yay0.o(.data);
    SPLAT_END_SEG(data_482038, 0x4821F0)
    
    SPLAT_BEGIN_SEG(data_4821F0, 0x4821F0, 0x4821F0, )
        Yay0_4821F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4821F0.Yay0.o(.data);
    SPLAT_END_SEG(data_4821F0, 0x4824A8)
    
    SPLAT_BEGIN_SEG(data_4824A8, 0x4824A8, 0x4824A8, )
        Yay0_4824A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4824A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4824A8, 0x4826E8)
    
    SPLAT_BEGIN_SEG(data_4826E8, 0x4826E8, 0x4826E8, )
        Yay0_4826E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4826E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4826E8, 0x4828E8)
    
    SPLAT_BEGIN_SEG(data_4828E8, 0x4828E8, 0x4828E8, )
        Yay0_4828E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4828E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4828E8, 0x482C20)
    
    SPLAT_BEGIN_SEG(data_482C20, 0x482C20, 0x482C20, )
        Yay0_482C20_Yay0 = .;
        BUILD_DIR/bin/Yay0/482C20.Yay0.o(.data);
    SPLAT_END_SEG(data_482C20, 0x482EA8)
    
    SPLAT_BEGIN_SEG(data_482EA8, 0x482EA8, 0x482EA8, )
        Yay0_482EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/482EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_482EA8, 0x483138)
    
    SPLAT_BEGIN_SEG(data_483138, 0x483138, 0x483138, )
        Yay0_483138_Yay0 = .;
        BUILD_DIR/bin/Yay0/483138.Yay0.o(.data);
    SPLAT_END_SEG(data_483138, 0x483398)
    
    SPLAT_BEGIN_SEG(data_483398, 0x483398, 0x483398, )
        Yay0_483398_Yay0 = .;
        BUILD_DIR/bin/Yay0/483398.Yay0.o(.data);
    SPLAT_END_SEG(data_483398, 0x483630)
    
    SPLAT_BEGIN_SEG(data_483630, 0x483630, 0x483630, )
        Yay0_483630_Yay0 = .;
        BUILD_DIR/bin/Yay0/483630.Yay0.o(.data);
    SPLAT_END_SEG(data_483630, 0x483908)
    
    SPLAT_BEGIN_SEG(data_483908, 0x483908, 0x483908, )
        Yay0_483908_Yay0 = .;
        BUILD_DIR/bin/Yay0/483908.Yay0.o(.data);
    SPLAT_END_SEG(data_483908, 0x483B78)
    
    SPLAT_BEGIN_SEG(data_483B78, 0x483B78, 0x483B78, )
        Yay0_483B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/483B78.Yay0.o(.data);
    SPLAT_END_SEG(data_483B78, 0x483D58)
    
    SPLAT_BEGIN_SEG(data_483D58, 0x483D58, 0x483D58, )
        Yay0_483D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/483D58.Yay0.o(.data);
    SPLAT_END_SEG(data_483D58, 0x483ED0)
    
    SPLAT_BEGIN_SEG(data_483ED0, 0x483ED0, 0x483ED0, )
        Yay0_483ED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/483ED0.Yay0.o(.data);
    SPLAT_END_SEG(data_483ED0, 0x484090)
    
    SPLAT_BEGIN_SEG(data_484090, 0x484090, 0x484090, )
        Yay0_484090_Yay0 = .;
        BUILD_DIR/bin/Yay0/484090.Yay0.o(.data);
    SPLAT_END_SEG(data_484090, 0x4841F8)
    
    SPLAT_BEGIN_SEG(data_4841F8, 0x4841F8, 0x4841F8, )
        Yay0_4841F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4841F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4841F8, 0x484310)
    
    SPLAT_BEGIN_SEG(data_484310, 0x484310, 0x484310, )
        Yay0_484310_Yay0 = .;
        BUILD_DIR/bin/Yay0/484310.Yay0.o(.data);
    SPLAT_END_SEG(data_484310, 0x4849B8)
    
    SPLAT_BEGIN_SEG(data_4849B8, 0x4849B8, 0x4849B8, )
        Yay0_4849B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4849B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4849B8, 0x484C08)
    
    SPLAT_BEGIN_SEG(data_484C08, 0x484C08, 0x484C08, )
        Yay0_484C08_Yay0 = .;
        BUILD_DIR/bin/Yay0/484C08.Yay0.o(.data);
    SPLAT_END_SEG(data_484C08, 0x484EA8)
    
    SPLAT_BEGIN_SEG(data_484EA8, 0x484EA8, 0x484EA8, )
        Yay0_484EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/484EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_484EA8, 0x485078)
    
    SPLAT_BEGIN_SEG(data_485078, 0x485078, 0x485078, )
        Yay0_485078_Yay0 = .;
        BUILD_DIR/bin/Yay0/485078.Yay0.o(.data);
    SPLAT_END_SEG(data_485078, 0x485328)
    
    SPLAT_BEGIN_SEG(data_485328, 0x485328, 0x485328, )
        Yay0_485328_Yay0 = .;
        BUILD_DIR/bin/Yay0/485328.Yay0.o(.data);
    SPLAT_END_SEG(data_485328, 0x4854F8)
    
    SPLAT_BEGIN_SEG(data_4854F8, 0x4854F8, 0x4854F8, )
        Yay0_4854F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4854F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4854F8, 0x4856D0)
    
    SPLAT_BEGIN_SEG(data_4856D0, 0x4856D0, 0x4856D0, )
        Yay0_4856D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4856D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4856D0, 0x4859A0)
    
    SPLAT_BEGIN_SEG(data_4859A0, 0x4859A0, 0x4859A0, )
        Yay0_4859A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4859A0.Yay0.o(.data);
    SPLAT_END_SEG(data_4859A0, 0x485BA8)
    
    SPLAT_BEGIN_SEG(data_485BA8, 0x485BA8, 0x485BA8, )
        Yay0_485BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/485BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_485BA8, 0x485E88)
    
    SPLAT_BEGIN_SEG(data_485E88, 0x485E88, 0x485E88, )
        Yay0_485E88_Yay0 = .;
        BUILD_DIR/bin/Yay0/485E88.Yay0.o(.data);
    SPLAT_END_SEG(data_485E88, 0x4860F8)
    
    SPLAT_BEGIN_SEG(data_4860F8, 0x4860F8, 0x4860F8, )
        Yay0_4860F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4860F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4860F8, 0x4863D0)
    
    SPLAT_BEGIN_SEG(data_4863D0, 0x4863D0, 0x4863D0, )
        Yay0_4863D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4863D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4863D0, 0x4866E0)
    
    SPLAT_BEGIN_SEG(data_4866E0, 0x4866E0, 0x4866E0, )
        Yay0_4866E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4866E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4866E0, 0x486980)
    
    SPLAT_BEGIN_SEG(data_486980, 0x486980, 0x486980, )
        Yay0_486980_Yay0 = .;
        BUILD_DIR/bin/Yay0/486980.Yay0.o(.data);
    SPLAT_END_SEG(data_486980, 0x486C20)
    
    SPLAT_BEGIN_SEG(data_486C20, 0x486C20, 0x486C20, )
        Yay0_486C20_Yay0 = .;
        BUILD_DIR/bin/Yay0/486C20.Yay0.o(.data);
    SPLAT_END_SEG(data_486C20, 0x486EF8)
    
    SPLAT_BEGIN_SEG(data_486EF8, 0x486EF8, 0x486EF8, )
        Yay0_486EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/486EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_486EF8, 0x487208)
    
    SPLAT_BEGIN_SEG(data_487208, 0x487208, 0x487208, )
        Yay0_487208_Yay0 = .;
        BUILD_DIR/bin/Yay0/487208.Yay0.o(.data);
    SPLAT_END_SEG(data_487208, 0x4874A8)
    
    SPLAT_BEGIN_SEG(data_4874A8, 0x4874A8, 0x4874A8, )
        Yay0_4874A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4874A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4874A8, 0x487860)
    
    SPLAT_BEGIN_SEG(data_487860, 0x487860, 0x487860, )
        Yay0_487860_Yay0 = .;
        BUILD_DIR/bin/Yay0/487860.Yay0.o(.data);
    SPLAT_END_SEG(data_487860, 0x487CD8)
    
    SPLAT_BEGIN_SEG(data_487CD8, 0x487CD8, 0x487CD8, )
        Yay0_487CD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/487CD8.Yay0.o(.data);
    SPLAT_END_SEG(data_487CD8, 0x488168)
    
    SPLAT_BEGIN_SEG(data_488168, 0x488168, 0x488168, )
        Yay0_488168_Yay0 = .;
        BUILD_DIR/bin/Yay0/488168.Yay0.o(.data);
    SPLAT_END_SEG(data_488168, 0x4882F8)
    
    SPLAT_BEGIN_SEG(data_4882F8, 0x4882F8, 0x4882F8, )
        Yay0_4882F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4882F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4882F8, 0x488730)
    
    SPLAT_BEGIN_SEG(data_488730, 0x488730, 0x488730, )
        Yay0_488730_Yay0 = .;
        BUILD_DIR/bin/Yay0/488730.Yay0.o(.data);
    SPLAT_END_SEG(data_488730, 0x488968)
    
    SPLAT_BEGIN_SEG(data_488968, 0x488968, 0x488968, )
        Yay0_488968_Yay0 = .;
        BUILD_DIR/bin/Yay0/488968.Yay0.o(.data);
    SPLAT_END_SEG(data_488968, 0x488C68)
    
    SPLAT_BEGIN_SEG(data_488C68, 0x488C68, 0x488C68, )
        Yay0_488C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/488C68.Yay0.o(.data);
    SPLAT_END_SEG(data_488C68, 0x488F08)
    
    SPLAT_BEGIN_SEG(data_488F08, 0x488F08, 0x488F08, )
        Yay0_488F08_Yay0 = .;
        BUILD_DIR/bin/Yay0/488F08.Yay0.o(.data);
    SPLAT_END_SEG(data_488F08, 0x489158)
    
    SPLAT_BEGIN_SEG(data_489158, 0x489158, 0x489158, )
        Yay0_489158_Yay0 = .;
        BUILD_DIR/bin/Yay0/489158.Yay0.o(.data);
    SPLAT_END_SEG(data_489158, 0x4894B8)
    
    SPLAT_BEGIN_SEG(data_4894B8, 0x4894B8, 0x4894B8, )
        Yay0_4894B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4894B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4894B8, 0x4899F8)
    
    SPLAT_BEGIN_SEG(data_4899F8, 0x4899F8, 0x4899F8, )
        Yay0_4899F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4899F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4899F8, 0x489F58)
    
    SPLAT_BEGIN_SEG(data_489F58, 0x489F58, 0x489F58, )
        Yay0_489F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/489F58.Yay0.o(.data);
    SPLAT_END_SEG(data_489F58, 0x48A3F0)
    
    SPLAT_BEGIN_SEG(data_48A3F0, 0x48A3F0, 0x48A3F0, )
        Yay0_48A3F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/48A3F0.Yay0.o(.data);
    SPLAT_END_SEG(data_48A3F0, 0x48A6D0)
    
    SPLAT_BEGIN_SEG(data_48A6D0, 0x48A6D0, 0x48A6D0, )
        Yay0_48A6D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/48A6D0.Yay0.o(.data);
    SPLAT_END_SEG(data_48A6D0, 0x48AA28)
    
    SPLAT_BEGIN_SEG(data_48AA28, 0x48AA28, 0x48AA28, )
        Yay0_48AA28_Yay0 = .;
        BUILD_DIR/bin/Yay0/48AA28.Yay0.o(.data);
    SPLAT_END_SEG(data_48AA28, 0x48ADC8)
    
    SPLAT_BEGIN_SEG(data_48ADC8, 0x48ADC8, 0x48ADC8, )
        Yay0_48ADC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/48ADC8.Yay0.o(.data);
    SPLAT_END_SEG(data_48ADC8, 0x48B280)
    
    SPLAT_BEGIN_SEG(data_48B280, 0x48B280, 0x48B280, )
        Yay0_48B280_Yay0 = .;
        BUILD_DIR/bin/Yay0/48B280.Yay0.o(.data);
    SPLAT_END_SEG(data_48B280, 0x48B300)
    
    SPLAT_BEGIN_SEG(data_48B300, 0x48B300, 0x48B300, )
        Yay0_48B300_Yay0 = .;
        BUILD_DIR/bin/Yay0/48B300.Yay0.o(.data);
    SPLAT_END_SEG(data_48B300, 0x48B478)
    
    SPLAT_BEGIN_SEG(data_48B478, 0x48B478, 0x48B478, )
        Yay0_48B478_Yay0 = .;
        BUILD_DIR/bin/Yay0/48B478.Yay0.o(.data);
    SPLAT_END_SEG(data_48B478, 0x48B798)
    
    SPLAT_BEGIN_SEG(data_48B798, 0x48B798, 0x48B798, )
        Yay0_48B798_Yay0 = .;
        BUILD_DIR/bin/Yay0/48B798.Yay0.o(.data);
    SPLAT_END_SEG(data_48B798, 0x48BD88)
    
    SPLAT_BEGIN_SEG(data_48BD88, 0x48BD88, 0x48BD88, )
        Yay0_48BD88_Yay0 = .;
        BUILD_DIR/bin/Yay0/48BD88.Yay0.o(.data);
    SPLAT_END_SEG(data_48BD88, 0x48BE10)
    
    SPLAT_BEGIN_SEG(data_48BE10, 0x48BE10, 0x48BE10, )
        Yay0_48BE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/48BE10.Yay0.o(.data);
    SPLAT_END_SEG(data_48BE10, 0x48C1C8)
    
    SPLAT_BEGIN_SEG(data_48C1C8, 0x48C1C8, 0x48C1C8, )
        Yay0_48C1C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/48C1C8.Yay0.o(.data);
    SPLAT_END_SEG(data_48C1C8, 0x48C570)
    
    SPLAT_BEGIN_SEG(data_48C570, 0x48C570, 0x48C570, )
        Yay0_48C570_Yay0 = .;
        BUILD_DIR/bin/Yay0/48C570.Yay0.o(.data);
    SPLAT_END_SEG(data_48C570, 0x48C940)
    
    SPLAT_BEGIN_SEG(data_48C940, 0x48C940, 0x48C940, )
        Yay0_48C940_Yay0 = .;
        BUILD_DIR/bin/Yay0/48C940.Yay0.o(.data);
    SPLAT_END_SEG(data_48C940, 0x48CB58)
    
    SPLAT_BEGIN_SEG(data_48CB58, 0x48CB58, 0x48CB58, )
        Yay0_48CB58_Yay0 = .;
        BUILD_DIR/bin/Yay0/48CB58.Yay0.o(.data);
    SPLAT_END_SEG(data_48CB58, 0x48CC08)
    
    SPLAT_BEGIN_SEG(data_48CC08, 0x48CC08, 0x48CC08, )
        Yay0_48CC08_Yay0 = .;
        BUILD_DIR/bin/Yay0/48CC08.Yay0.o(.data);
    SPLAT_END_SEG(data_48CC08, 0x48CD80)
    
    SPLAT_BEGIN_SEG(data_48CD80, 0x48CD80, 0x48CD80, )
        Yay0_48CD80_Yay0 = .;
        BUILD_DIR/bin/Yay0/48CD80.Yay0.o(.data);
    SPLAT_END_SEG(data_48CD80, 0x4954D8)
    
    SPLAT_BEGIN_SEG(data_4954D8, 0x4954D8, 0x4954D8, )
        Yay0_4954D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4954D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4954D8, 0x4955C0)
    
    SPLAT_BEGIN_SEG(data_4955C0, 0x4955C0, 0x4955C0, )
        Yay0_4955C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4955C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4955C0, 0x4956E8)
    
    SPLAT_BEGIN_SEG(data_4956E8, 0x4956E8, 0x4956E8, )
        Yay0_4956E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4956E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4956E8, 0x495830)
    
    SPLAT_BEGIN_SEG(data_495830, 0x495830, 0x495830, )
        Yay0_495830_Yay0 = .;
        BUILD_DIR/bin/Yay0/495830.Yay0.o(.data);
    SPLAT_END_SEG(data_495830, 0x4959F0)
    
    SPLAT_BEGIN_SEG(data_4959F0, 0x4959F0, 0x4959F0, )
        Yay0_4959F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4959F0.Yay0.o(.data);
    SPLAT_END_SEG(data_4959F0, 0x495A88)
    
    SPLAT_BEGIN_SEG(data_495A88, 0x495A88, 0x495A88, )
        Yay0_495A88_Yay0 = .;
        BUILD_DIR/bin/Yay0/495A88.Yay0.o(.data);
    SPLAT_END_SEG(data_495A88, 0x495B28)
    
    SPLAT_BEGIN_SEG(data_495B28, 0x495B28, 0x495B28, )
        Yay0_495B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/495B28.Yay0.o(.data);
    SPLAT_END_SEG(data_495B28, 0x496640)
    
    SPLAT_BEGIN_SEG(data_496640, 0x496640, 0x496640, )
        Yay0_496640_Yay0 = .;
        BUILD_DIR/bin/Yay0/496640.Yay0.o(.data);
    SPLAT_END_SEG(data_496640, 0x497B78)
    
    SPLAT_BEGIN_SEG(data_497B78, 0x497B78, 0x497B78, )
        Yay0_497B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/497B78.Yay0.o(.data);
    SPLAT_END_SEG(data_497B78, 0x497DB8)
    
    SPLAT_BEGIN_SEG(data_497DB8, 0x497DB8, 0x497DB8, )
        Yay0_497DB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/497DB8.Yay0.o(.data);
    SPLAT_END_SEG(data_497DB8, 0x497E58)
    
    SPLAT_BEGIN_SEG(data_497E58, 0x497E58, 0x497E58, )
        Yay0_497E58_Yay0 = .;
        BUILD_DIR/bin/Yay0/497E58.Yay0.o(.data);
    SPLAT_END_SEG(data_497E58, 0x4A1618)
    
    SPLAT_BEGIN_SEG(data_4A1618, 0x4A1618, 0x4A1618, )
        Yay0_4A1618_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A1618.Yay0.o(.data);
    SPLAT_END_SEG(data_4A1618, 0x4A1AC8)
    
    SPLAT_BEGIN_SEG(data_4A1AC8, 0x4A1AC8, 0x4A1AC8, )
        Yay0_4A1AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A1AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A1AC8, 0x4A2218)
    
    SPLAT_BEGIN_SEG(data_4A2218, 0x4A2218, 0x4A2218, )
        Yay0_4A2218_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2218.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2218, 0x4A2760)
    
    SPLAT_BEGIN_SEG(data_4A2760, 0x4A2760, 0x4A2760, )
        Yay0_4A2760_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2760.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2760, 0x4A2898)
    
    SPLAT_BEGIN_SEG(data_4A2898, 0x4A2898, 0x4A2898, )
        Yay0_4A2898_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2898.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2898, 0x4A2988)
    
    SPLAT_BEGIN_SEG(data_4A2988, 0x4A2988, 0x4A2988, )
        Yay0_4A2988_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2988.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2988, 0x4A2AE0)
    
    SPLAT_BEGIN_SEG(data_4A2AE0, 0x4A2AE0, 0x4A2AE0, )
        Yay0_4A2AE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2AE0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2AE0, 0x4A2C58)
    
    SPLAT_BEGIN_SEG(data_4A2C58, 0x4A2C58, 0x4A2C58, )
        Yay0_4A2C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2C58.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2C58, 0x4A2F10)
    
    SPLAT_BEGIN_SEG(data_4A2F10, 0x4A2F10, 0x4A2F10, )
        Yay0_4A2F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2F10.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2F10, 0x4A2FC0)
    
    SPLAT_BEGIN_SEG(data_4A2FC0, 0x4A2FC0, 0x4A2FC0, )
        Yay0_4A2FC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A2FC0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A2FC0, 0x4A3028)
    
    SPLAT_BEGIN_SEG(data_4A3028, 0x4A3028, 0x4A3028, )
        Yay0_4A3028_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3028.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3028, 0x4A30D8)
    
    SPLAT_BEGIN_SEG(data_4A30D8, 0x4A30D8, 0x4A30D8, )
        Yay0_4A30D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A30D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A30D8, 0x4A3198)
    
    SPLAT_BEGIN_SEG(data_4A3198, 0x4A3198, 0x4A3198, )
        Yay0_4A3198_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3198.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3198, 0x4A3228)
    
    SPLAT_BEGIN_SEG(data_4A3228, 0x4A3228, 0x4A3228, )
        Yay0_4A3228_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3228.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3228, 0x4A32C8)
    
    SPLAT_BEGIN_SEG(data_4A32C8, 0x4A32C8, 0x4A32C8, )
        Yay0_4A32C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A32C8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A32C8, 0x4A3310)
    
    SPLAT_BEGIN_SEG(data_4A3310, 0x4A3310, 0x4A3310, )
        Yay0_4A3310_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3310.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3310, 0x4A3548)
    
    SPLAT_BEGIN_SEG(data_4A3548, 0x4A3548, 0x4A3548, )
        Yay0_4A3548_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3548.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3548, 0x4A3660)
    
    SPLAT_BEGIN_SEG(data_4A3660, 0x4A3660, 0x4A3660, )
        Yay0_4A3660_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3660.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3660, 0x4A3830)
    
    SPLAT_BEGIN_SEG(data_4A3830, 0x4A3830, 0x4A3830, )
        Yay0_4A3830_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3830.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3830, 0x4A3AA8)
    
    SPLAT_BEGIN_SEG(data_4A3AA8, 0x4A3AA8, 0x4A3AA8, )
        Yay0_4A3AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3AA8, 0x4A3C58)
    
    SPLAT_BEGIN_SEG(data_4A3C58, 0x4A3C58, 0x4A3C58, )
        Yay0_4A3C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3C58.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3C58, 0x4A3E40)
    
    SPLAT_BEGIN_SEG(data_4A3E40, 0x4A3E40, 0x4A3E40, )
        Yay0_4A3E40_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3E40.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3E40, 0x4A3F68)
    
    SPLAT_BEGIN_SEG(data_4A3F68, 0x4A3F68, 0x4A3F68, )
        Yay0_4A3F68_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A3F68.Yay0.o(.data);
    SPLAT_END_SEG(data_4A3F68, 0x4A4128)
    
    SPLAT_BEGIN_SEG(data_4A4128, 0x4A4128, 0x4A4128, )
        Yay0_4A4128_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A4128.Yay0.o(.data);
    SPLAT_END_SEG(data_4A4128, 0x4A4268)
    
    SPLAT_BEGIN_SEG(data_4A4268, 0x4A4268, 0x4A4268, )
        Yay0_4A4268_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A4268.Yay0.o(.data);
    SPLAT_END_SEG(data_4A4268, 0x4A42B0)
    
    SPLAT_BEGIN_SEG(data_4A42B0, 0x4A42B0, 0x4A42B0, )
        Yay0_4A42B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A42B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A42B0, 0x4A43A0)
    
    SPLAT_BEGIN_SEG(data_4A43A0, 0x4A43A0, 0x4A43A0, )
        Yay0_4A43A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A43A0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A43A0, 0x4A4880)
    
    SPLAT_BEGIN_SEG(data_4A4880, 0x4A4880, 0x4A4880, )
        Yay0_4A4880_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A4880.Yay0.o(.data);
    SPLAT_END_SEG(data_4A4880, 0x4A4CB8)
    
    SPLAT_BEGIN_SEG(data_4A4CB8, 0x4A4CB8, 0x4A4CB8, )
        Yay0_4A4CB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A4CB8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A4CB8, 0x4A5098)
    
    SPLAT_BEGIN_SEG(data_4A5098, 0x4A5098, 0x4A5098, )
        Yay0_4A5098_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A5098.Yay0.o(.data);
    SPLAT_END_SEG(data_4A5098, 0x4A51E8)
    
    SPLAT_BEGIN_SEG(data_4A51E8, 0x4A51E8, 0x4A51E8, )
        Yay0_4A51E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A51E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A51E8, 0x4A53C8)
    
    SPLAT_BEGIN_SEG(data_4A53C8, 0x4A53C8, 0x4A53C8, )
        Yay0_4A53C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A53C8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A53C8, 0x4A5510)
    
    SPLAT_BEGIN_SEG(data_4A5510, 0x4A5510, 0x4A5510, )
        Yay0_4A5510_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A5510.Yay0.o(.data);
    SPLAT_END_SEG(data_4A5510, 0x4A5988)
    
    SPLAT_BEGIN_SEG(data_4A5988, 0x4A5988, 0x4A5988, )
        Yay0_4A5988_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A5988.Yay0.o(.data);
    SPLAT_END_SEG(data_4A5988, 0x4A5C48)
    
    SPLAT_BEGIN_SEG(data_4A5C48, 0x4A5C48, 0x4A5C48, )
        Yay0_4A5C48_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A5C48.Yay0.o(.data);
    SPLAT_END_SEG(data_4A5C48, 0x4A5DA8)
    
    SPLAT_BEGIN_SEG(data_4A5DA8, 0x4A5DA8, 0x4A5DA8, )
        Yay0_4A5DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A5DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A5DA8, 0x4A5EF0)
    
    SPLAT_BEGIN_SEG(data_4A5EF0, 0x4A5EF0, 0x4A5EF0, )
        Yay0_4A5EF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A5EF0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A5EF0, 0x4A6050)
    
    SPLAT_BEGIN_SEG(data_4A6050, 0x4A6050, 0x4A6050, )
        Yay0_4A6050_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6050.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6050, 0x4A6108)
    
    SPLAT_BEGIN_SEG(data_4A6108, 0x4A6108, 0x4A6108, )
        Yay0_4A6108_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6108.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6108, 0x4A61E8)
    
    SPLAT_BEGIN_SEG(data_4A61E8, 0x4A61E8, 0x4A61E8, )
        Yay0_4A61E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A61E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A61E8, 0x4A62C8)
    
    SPLAT_BEGIN_SEG(data_4A62C8, 0x4A62C8, 0x4A62C8, )
        Yay0_4A62C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A62C8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A62C8, 0x4A6398)
    
    SPLAT_BEGIN_SEG(data_4A6398, 0x4A6398, 0x4A6398, )
        Yay0_4A6398_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6398.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6398, 0x4A6478)
    
    SPLAT_BEGIN_SEG(data_4A6478, 0x4A6478, 0x4A6478, )
        Yay0_4A6478_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6478.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6478, 0x4A6560)
    
    SPLAT_BEGIN_SEG(data_4A6560, 0x4A6560, 0x4A6560, )
        Yay0_4A6560_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6560.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6560, 0x4A6638)
    
    SPLAT_BEGIN_SEG(data_4A6638, 0x4A6638, 0x4A6638, )
        Yay0_4A6638_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6638.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6638, 0x4A6720)
    
    SPLAT_BEGIN_SEG(data_4A6720, 0x4A6720, 0x4A6720, )
        Yay0_4A6720_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6720.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6720, 0x4A6808)
    
    SPLAT_BEGIN_SEG(data_4A6808, 0x4A6808, 0x4A6808, )
        Yay0_4A6808_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6808.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6808, 0x4A68C0)
    
    SPLAT_BEGIN_SEG(data_4A68C0, 0x4A68C0, 0x4A68C0, )
        Yay0_4A68C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A68C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A68C0, 0x4A6928)
    
    SPLAT_BEGIN_SEG(data_4A6928, 0x4A6928, 0x4A6928, )
        Yay0_4A6928_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6928.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6928, 0x4A69E0)
    
    SPLAT_BEGIN_SEG(data_4A69E0, 0x4A69E0, 0x4A69E0, )
        Yay0_4A69E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A69E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A69E0, 0x4A6AF0)
    
    SPLAT_BEGIN_SEG(data_4A6AF0, 0x4A6AF0, 0x4A6AF0, )
        Yay0_4A6AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6AF0, 0x4A6BA0)
    
    SPLAT_BEGIN_SEG(data_4A6BA0, 0x4A6BA0, 0x4A6BA0, )
        Yay0_4A6BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6BA0, 0x4A6C18)
    
    SPLAT_BEGIN_SEG(data_4A6C18, 0x4A6C18, 0x4A6C18, )
        Yay0_4A6C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6C18.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6C18, 0x4A6D80)
    
    SPLAT_BEGIN_SEG(data_4A6D80, 0x4A6D80, 0x4A6D80, )
        Yay0_4A6D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6D80.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6D80, 0x4A6EF8)
    
    SPLAT_BEGIN_SEG(data_4A6EF8, 0x4A6EF8, 0x4A6EF8, )
        Yay0_4A6EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A6EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A6EF8, 0x4A7070)
    
    SPLAT_BEGIN_SEG(data_4A7070, 0x4A7070, 0x4A7070, )
        Yay0_4A7070_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7070.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7070, 0x4A7140)
    
    SPLAT_BEGIN_SEG(data_4A7140, 0x4A7140, 0x4A7140, )
        Yay0_4A7140_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7140.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7140, 0x4A71A0)
    
    SPLAT_BEGIN_SEG(data_4A71A0, 0x4A71A0, 0x4A71A0, )
        Yay0_4A71A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A71A0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A71A0, 0x4A7288)
    
    SPLAT_BEGIN_SEG(data_4A7288, 0x4A7288, 0x4A7288, )
        Yay0_4A7288_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7288.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7288, 0x4A7368)
    
    SPLAT_BEGIN_SEG(data_4A7368, 0x4A7368, 0x4A7368, )
        Yay0_4A7368_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7368.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7368, 0x4A7418)
    
    SPLAT_BEGIN_SEG(data_4A7418, 0x4A7418, 0x4A7418, )
        Yay0_4A7418_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7418.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7418, 0x4A74D0)
    
    SPLAT_BEGIN_SEG(data_4A74D0, 0x4A74D0, 0x4A74D0, )
        Yay0_4A74D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A74D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4A74D0, 0x4A75B8)
    
    SPLAT_BEGIN_SEG(data_4A75B8, 0x4A75B8, 0x4A75B8, )
        Yay0_4A75B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A75B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4A75B8, 0x4A7670)
    
    SPLAT_BEGIN_SEG(data_4A7670, 0x4A7670, 0x4A7670, )
        Yay0_4A7670_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7670.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7670, 0x4A7768)
    
    SPLAT_BEGIN_SEG(data_4A7768, 0x4A7768, 0x4A7768, )
        Yay0_4A7768_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7768.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7768, 0x4A7858)
    
    SPLAT_BEGIN_SEG(data_4A7858, 0x4A7858, 0x4A7858, )
        Yay0_4A7858_Yay0 = .;
        BUILD_DIR/bin/Yay0/4A7858.Yay0.o(.data);
    SPLAT_END_SEG(data_4A7858, 0x4AA178)
    
    SPLAT_BEGIN_SEG(data_4AA178, 0x4AA178, 0x4AA178, )
        Yay0_4AA178_Yay0 = .;
        BUILD_DIR/bin/Yay0/4AA178.Yay0.o(.data);
    SPLAT_END_SEG(data_4AA178, 0x4AFFA0)
    
    SPLAT_BEGIN_SEG(data_4AFFA0, 0x4AFFA0, 0x4AFFA0, )
        Yay0_4AFFA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4AFFA0.Yay0.o(.data);
    SPLAT_END_SEG(data_4AFFA0, 0x4B0BD8)
    
    SPLAT_BEGIN_SEG(data_4B0BD8, 0x4B0BD8, 0x4B0BD8, )
        Yay0_4B0BD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B0BD8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B0BD8, 0x4B1090)
    
    SPLAT_BEGIN_SEG(data_4B1090, 0x4B1090, 0x4B1090, )
        Yay0_4B1090_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B1090.Yay0.o(.data);
    SPLAT_END_SEG(data_4B1090, 0x4B1240)
    
    SPLAT_BEGIN_SEG(data_4B1240, 0x4B1240, 0x4B1240, )
        Yay0_4B1240_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B1240.Yay0.o(.data);
    SPLAT_END_SEG(data_4B1240, 0x4B13A8)
    
    SPLAT_BEGIN_SEG(data_4B13A8, 0x4B13A8, 0x4B13A8, )
        Yay0_4B13A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B13A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B13A8, 0x4B17F8)
    
    SPLAT_BEGIN_SEG(data_4B17F8, 0x4B17F8, 0x4B17F8, )
        Yay0_4B17F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B17F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B17F8, 0x4B1A30)
    
    SPLAT_BEGIN_SEG(data_4B1A30, 0x4B1A30, 0x4B1A30, )
        Yay0_4B1A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B1A30.Yay0.o(.data);
    SPLAT_END_SEG(data_4B1A30, 0x4B1FB0)
    
    SPLAT_BEGIN_SEG(data_4B1FB0, 0x4B1FB0, 0x4B1FB0, )
        Yay0_4B1FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B1FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_4B1FB0, 0x4B2040)
    
    SPLAT_BEGIN_SEG(data_4B2040, 0x4B2040, 0x4B2040, )
        Yay0_4B2040_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2040.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2040, 0x4B2080)
    
    SPLAT_BEGIN_SEG(data_4B2080, 0x4B2080, 0x4B2080, )
        Yay0_4B2080_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2080.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2080, 0x4B20E8)
    
    SPLAT_BEGIN_SEG(data_4B20E8, 0x4B20E8, 0x4B20E8, )
        Yay0_4B20E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B20E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B20E8, 0x4B21B0)
    
    SPLAT_BEGIN_SEG(data_4B21B0, 0x4B21B0, 0x4B21B0, )
        Yay0_4B21B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B21B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4B21B0, 0x4B23D8)
    
    SPLAT_BEGIN_SEG(data_4B23D8, 0x4B23D8, 0x4B23D8, )
        Yay0_4B23D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B23D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B23D8, 0x4B2610)
    
    SPLAT_BEGIN_SEG(data_4B2610, 0x4B2610, 0x4B2610, )
        Yay0_4B2610_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2610.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2610, 0x4B2688)
    
    SPLAT_BEGIN_SEG(data_4B2688, 0x4B2688, 0x4B2688, )
        Yay0_4B2688_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2688.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2688, 0x4B26E0)
    
    SPLAT_BEGIN_SEG(data_4B26E0, 0x4B26E0, 0x4B26E0, )
        Yay0_4B26E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B26E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4B26E0, 0x4B28B8)
    
    SPLAT_BEGIN_SEG(data_4B28B8, 0x4B28B8, 0x4B28B8, )
        Yay0_4B28B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B28B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B28B8, 0x4B2948)
    
    SPLAT_BEGIN_SEG(data_4B2948, 0x4B2948, 0x4B2948, )
        Yay0_4B2948_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2948.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2948, 0x4B29D0)
    
    SPLAT_BEGIN_SEG(data_4B29D0, 0x4B29D0, 0x4B29D0, )
        Yay0_4B29D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B29D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4B29D0, 0x4B2A60)
    
    SPLAT_BEGIN_SEG(data_4B2A60, 0x4B2A60, 0x4B2A60, )
        Yay0_4B2A60_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2A60.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2A60, 0x4B2AF0)
    
    SPLAT_BEGIN_SEG(data_4B2AF0, 0x4B2AF0, 0x4B2AF0, )
        Yay0_4B2AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2AF0, 0x4B2B68)
    
    SPLAT_BEGIN_SEG(data_4B2B68, 0x4B2B68, 0x4B2B68, )
        Yay0_4B2B68_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2B68.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2B68, 0x4B2BA8)
    
    SPLAT_BEGIN_SEG(data_4B2BA8, 0x4B2BA8, 0x4B2BA8, )
        Yay0_4B2BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2BA8, 0x4B2F78)
    
    SPLAT_BEGIN_SEG(data_4B2F78, 0x4B2F78, 0x4B2F78, )
        Yay0_4B2F78_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2F78.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2F78, 0x4B2FA8)
    
    SPLAT_BEGIN_SEG(data_4B2FA8, 0x4B2FA8, 0x4B2FA8, )
        Yay0_4B2FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B2FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_4B2FA8, 0x4B9970)
    
    SPLAT_BEGIN_SEG(data_4B9970, 0x4B9970, 0x4B9970, )
        Yay0_4B9970_Yay0 = .;
        BUILD_DIR/bin/Yay0/4B9970.Yay0.o(.data);
    SPLAT_END_SEG(data_4B9970, 0x4BA4F8)
    
    SPLAT_BEGIN_SEG(data_4BA4F8, 0x4BA4F8, 0x4BA4F8, )
        Yay0_4BA4F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4BA4F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4BA4F8, 0x4BF3A8)
    
    SPLAT_BEGIN_SEG(data_4BF3A8, 0x4BF3A8, 0x4BF3A8, )
        Yay0_4BF3A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4BF3A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4BF3A8, 0x4C4DA8)
    
    SPLAT_BEGIN_SEG(data_4C4DA8, 0x4C4DA8, 0x4C4DA8, )
        Yay0_4C4DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C4DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_4C4DA8, 0x4C4E50)
    
    SPLAT_BEGIN_SEG(data_4C4E50, 0x4C4E50, 0x4C4E50, )
        Yay0_4C4E50_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C4E50.Yay0.o(.data);
    SPLAT_END_SEG(data_4C4E50, 0x4C4EF0)
    
    SPLAT_BEGIN_SEG(data_4C4EF0, 0x4C4EF0, 0x4C4EF0, )
        Yay0_4C4EF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C4EF0.Yay0.o(.data);
    SPLAT_END_SEG(data_4C4EF0, 0x4C4F98)
    
    SPLAT_BEGIN_SEG(data_4C4F98, 0x4C4F98, 0x4C4F98, )
        Yay0_4C4F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C4F98.Yay0.o(.data);
    SPLAT_END_SEG(data_4C4F98, 0x4C5038)
    
    SPLAT_BEGIN_SEG(data_4C5038, 0x4C5038, 0x4C5038, )
        Yay0_4C5038_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5038.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5038, 0x4C50E0)
    
    SPLAT_BEGIN_SEG(data_4C50E0, 0x4C50E0, 0x4C50E0, )
        Yay0_4C50E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C50E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4C50E0, 0x4C5188)
    
    SPLAT_BEGIN_SEG(data_4C5188, 0x4C5188, 0x4C5188, )
        Yay0_4C5188_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5188.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5188, 0x4C5230)
    
    SPLAT_BEGIN_SEG(data_4C5230, 0x4C5230, 0x4C5230, )
        Yay0_4C5230_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5230.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5230, 0x4C52D8)
    
    SPLAT_BEGIN_SEG(data_4C52D8, 0x4C52D8, 0x4C52D8, )
        Yay0_4C52D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C52D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4C52D8, 0x4C5380)
    
    SPLAT_BEGIN_SEG(data_4C5380, 0x4C5380, 0x4C5380, )
        Yay0_4C5380_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5380.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5380, 0x4C5408)
    
    SPLAT_BEGIN_SEG(data_4C5408, 0x4C5408, 0x4C5408, )
        Yay0_4C5408_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5408.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5408, 0x4C5468)
    
    SPLAT_BEGIN_SEG(data_4C5468, 0x4C5468, 0x4C5468, )
        Yay0_4C5468_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5468.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5468, 0x4C5930)
    
    SPLAT_BEGIN_SEG(data_4C5930, 0x4C5930, 0x4C5930, )
        Yay0_4C5930_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5930.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5930, 0x4C5EE0)
    
    SPLAT_BEGIN_SEG(data_4C5EE0, 0x4C5EE0, 0x4C5EE0, )
        Yay0_4C5EE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C5EE0.Yay0.o(.data);
    SPLAT_END_SEG(data_4C5EE0, 0x4C6688)
    
    SPLAT_BEGIN_SEG(data_4C6688, 0x4C6688, 0x4C6688, )
        Yay0_4C6688_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C6688.Yay0.o(.data);
    SPLAT_END_SEG(data_4C6688, 0x4C6E78)
    
    SPLAT_BEGIN_SEG(data_4C6E78, 0x4C6E78, 0x4C6E78, )
        Yay0_4C6E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C6E78.Yay0.o(.data);
    SPLAT_END_SEG(data_4C6E78, 0x4C7880)
    
    SPLAT_BEGIN_SEG(data_4C7880, 0x4C7880, 0x4C7880, )
        Yay0_4C7880_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C7880.Yay0.o(.data);
    SPLAT_END_SEG(data_4C7880, 0x4C8298)
    
    SPLAT_BEGIN_SEG(data_4C8298, 0x4C8298, 0x4C8298, )
        Yay0_4C8298_Yay0 = .;
        BUILD_DIR/bin/Yay0/4C8298.Yay0.o(.data);
    SPLAT_END_SEG(data_4C8298, 0x4CADB8)
    
    SPLAT_BEGIN_SEG(data_4CADB8, 0x4CADB8, 0x4CADB8, )
        Yay0_4CADB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CADB8.Yay0.o(.data);
    SPLAT_END_SEG(data_4CADB8, 0x4CD9A8)
    
    SPLAT_BEGIN_SEG(data_4CD9A8, 0x4CD9A8, 0x4CD9A8, )
        Yay0_4CD9A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CD9A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4CD9A8, 0x4CDCB8)
    
    SPLAT_BEGIN_SEG(data_4CDCB8, 0x4CDCB8, 0x4CDCB8, )
        Yay0_4CDCB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CDCB8.Yay0.o(.data);
    SPLAT_END_SEG(data_4CDCB8, 0x4CDE58)
    
    SPLAT_BEGIN_SEG(data_4CDE58, 0x4CDE58, 0x4CDE58, )
        Yay0_4CDE58_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CDE58.Yay0.o(.data);
    SPLAT_END_SEG(data_4CDE58, 0x4CE1D0)
    
    SPLAT_BEGIN_SEG(data_4CE1D0, 0x4CE1D0, 0x4CE1D0, )
        Yay0_4CE1D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CE1D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4CE1D0, 0x4CE488)
    
    SPLAT_BEGIN_SEG(data_4CE488, 0x4CE488, 0x4CE488, )
        Yay0_4CE488_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CE488.Yay0.o(.data);
    SPLAT_END_SEG(data_4CE488, 0x4CE648)
    
    SPLAT_BEGIN_SEG(data_4CE648, 0x4CE648, 0x4CE648, )
        Yay0_4CE648_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CE648.Yay0.o(.data);
    SPLAT_END_SEG(data_4CE648, 0x4CE9C0)
    
    SPLAT_BEGIN_SEG(data_4CE9C0, 0x4CE9C0, 0x4CE9C0, )
        Yay0_4CE9C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CE9C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4CE9C0, 0x4CEAC8)
    
    SPLAT_BEGIN_SEG(data_4CEAC8, 0x4CEAC8, 0x4CEAC8, )
        Yay0_4CEAC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CEAC8.Yay0.o(.data);
    SPLAT_END_SEG(data_4CEAC8, 0x4CEB80)
    
    SPLAT_BEGIN_SEG(data_4CEB80, 0x4CEB80, 0x4CEB80, )
        Yay0_4CEB80_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CEB80.Yay0.o(.data);
    SPLAT_END_SEG(data_4CEB80, 0x4CEBC8)
    
    SPLAT_BEGIN_SEG(data_4CEBC8, 0x4CEBC8, 0x4CEBC8, )
        Yay0_4CEBC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CEBC8.Yay0.o(.data);
    SPLAT_END_SEG(data_4CEBC8, 0x4CED00)
    
    SPLAT_BEGIN_SEG(data_4CED00, 0x4CED00, 0x4CED00, )
        Yay0_4CED00_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CED00.Yay0.o(.data);
    SPLAT_END_SEG(data_4CED00, 0x4CEE50)
    
    SPLAT_BEGIN_SEG(data_4CEE50, 0x4CEE50, 0x4CEE50, )
        Yay0_4CEE50_Yay0 = .;
        BUILD_DIR/bin/Yay0/4CEE50.Yay0.o(.data);
    SPLAT_END_SEG(data_4CEE50, 0x4D54D0)
    
    SPLAT_BEGIN_SEG(data_4D54D0, 0x4D54D0, 0x4D54D0, )
        Yay0_4D54D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4D54D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4D54D0, 0x4DC0B8)
    
    SPLAT_BEGIN_SEG(data_4DC0B8, 0x4DC0B8, 0x4DC0B8, )
        Yay0_4DC0B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DC0B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4DC0B8, 0x4DC258)
    
    SPLAT_BEGIN_SEG(data_4DC258, 0x4DC258, 0x4DC258, )
        Yay0_4DC258_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DC258.Yay0.o(.data);
    SPLAT_END_SEG(data_4DC258, 0x4DC438)
    
    SPLAT_BEGIN_SEG(data_4DC438, 0x4DC438, 0x4DC438, )
        Yay0_4DC438_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DC438.Yay0.o(.data);
    SPLAT_END_SEG(data_4DC438, 0x4DC6E0)
    
    SPLAT_BEGIN_SEG(data_4DC6E0, 0x4DC6E0, 0x4DC6E0, )
        Yay0_4DC6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DC6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4DC6E0, 0x4DCA00)
    
    SPLAT_BEGIN_SEG(data_4DCA00, 0x4DCA00, 0x4DCA00, )
        Yay0_4DCA00_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DCA00.Yay0.o(.data);
    SPLAT_END_SEG(data_4DCA00, 0x4DCE50)
    
    SPLAT_BEGIN_SEG(data_4DCE50, 0x4DCE50, 0x4DCE50, )
        Yay0_4DCE50_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DCE50.Yay0.o(.data);
    SPLAT_END_SEG(data_4DCE50, 0x4DD2F8)
    
    SPLAT_BEGIN_SEG(data_4DD2F8, 0x4DD2F8, 0x4DD2F8, )
        Yay0_4DD2F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DD2F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4DD2F8, 0x4DD768)
    
    SPLAT_BEGIN_SEG(data_4DD768, 0x4DD768, 0x4DD768, )
        Yay0_4DD768_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DD768.Yay0.o(.data);
    SPLAT_END_SEG(data_4DD768, 0x4DDB88)
    
    SPLAT_BEGIN_SEG(data_4DDB88, 0x4DDB88, 0x4DDB88, )
        Yay0_4DDB88_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DDB88.Yay0.o(.data);
    SPLAT_END_SEG(data_4DDB88, 0x4DDEF8)
    
    SPLAT_BEGIN_SEG(data_4DDEF8, 0x4DDEF8, 0x4DDEF8, )
        Yay0_4DDEF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DDEF8.Yay0.o(.data);
    SPLAT_END_SEG(data_4DDEF8, 0x4DE008)
    
    SPLAT_BEGIN_SEG(data_4DE008, 0x4DE008, 0x4DE008, )
        Yay0_4DE008_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE008.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE008, 0x4DE338)
    
    SPLAT_BEGIN_SEG(data_4DE338, 0x4DE338, 0x4DE338, )
        Yay0_4DE338_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE338.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE338, 0x4DE3A0)
    
    SPLAT_BEGIN_SEG(data_4DE3A0, 0x4DE3A0, 0x4DE3A0, )
        Yay0_4DE3A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE3A0.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE3A0, 0x4DE3D8)
    
    SPLAT_BEGIN_SEG(data_4DE3D8, 0x4DE3D8, 0x4DE3D8, )
        Yay0_4DE3D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE3D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE3D8, 0x4DE408)
    
    SPLAT_BEGIN_SEG(data_4DE408, 0x4DE408, 0x4DE408, )
        Yay0_4DE408_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE408.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE408, 0x4DE438)
    
    SPLAT_BEGIN_SEG(data_4DE438, 0x4DE438, 0x4DE438, )
        Yay0_4DE438_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE438.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE438, 0x4DE478)
    
    SPLAT_BEGIN_SEG(data_4DE478, 0x4DE478, 0x4DE478, )
        Yay0_4DE478_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE478.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE478, 0x4DE4B8)
    
    SPLAT_BEGIN_SEG(data_4DE4B8, 0x4DE4B8, 0x4DE4B8, )
        Yay0_4DE4B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE4B8.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE4B8, 0x4DE938)
    
    SPLAT_BEGIN_SEG(data_4DE938, 0x4DE938, 0x4DE938, )
        Yay0_4DE938_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DE938.Yay0.o(.data);
    SPLAT_END_SEG(data_4DE938, 0x4DEA28)
    
    SPLAT_BEGIN_SEG(data_4DEA28, 0x4DEA28, 0x4DEA28, )
        Yay0_4DEA28_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DEA28.Yay0.o(.data);
    SPLAT_END_SEG(data_4DEA28, 0x4DEB08)
    
    SPLAT_BEGIN_SEG(data_4DEB08, 0x4DEB08, 0x4DEB08, )
        Yay0_4DEB08_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DEB08.Yay0.o(.data);
    SPLAT_END_SEG(data_4DEB08, 0x4DEC28)
    
    SPLAT_BEGIN_SEG(data_4DEC28, 0x4DEC28, 0x4DEC28, )
        Yay0_4DEC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DEC28.Yay0.o(.data);
    SPLAT_END_SEG(data_4DEC28, 0x4DEE30)
    
    SPLAT_BEGIN_SEG(data_4DEE30, 0x4DEE30, 0x4DEE30, )
        Yay0_4DEE30_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DEE30.Yay0.o(.data);
    SPLAT_END_SEG(data_4DEE30, 0x4DF020)
    
    SPLAT_BEGIN_SEG(data_4DF020, 0x4DF020, 0x4DF020, )
        Yay0_4DF020_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DF020.Yay0.o(.data);
    SPLAT_END_SEG(data_4DF020, 0x4DF448)
    
    SPLAT_BEGIN_SEG(data_4DF448, 0x4DF448, 0x4DF448, )
        Yay0_4DF448_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DF448.Yay0.o(.data);
    SPLAT_END_SEG(data_4DF448, 0x4DF830)
    
    SPLAT_BEGIN_SEG(data_4DF830, 0x4DF830, 0x4DF830, )
        Yay0_4DF830_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DF830.Yay0.o(.data);
    SPLAT_END_SEG(data_4DF830, 0x4DFC28)
    
    SPLAT_BEGIN_SEG(data_4DFC28, 0x4DFC28, 0x4DFC28, )
        Yay0_4DFC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/4DFC28.Yay0.o(.data);
    SPLAT_END_SEG(data_4DFC28, 0x4E0030)
    
    SPLAT_BEGIN_SEG(data_4E0030, 0x4E0030, 0x4E0030, )
        Yay0_4E0030_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E0030.Yay0.o(.data);
    SPLAT_END_SEG(data_4E0030, 0x4E0410)
    
    SPLAT_BEGIN_SEG(data_4E0410, 0x4E0410, 0x4E0410, )
        Yay0_4E0410_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E0410.Yay0.o(.data);
    SPLAT_END_SEG(data_4E0410, 0x4E0798)
    
    SPLAT_BEGIN_SEG(data_4E0798, 0x4E0798, 0x4E0798, )
        Yay0_4E0798_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E0798.Yay0.o(.data);
    SPLAT_END_SEG(data_4E0798, 0x4E08F0)
    
    SPLAT_BEGIN_SEG(data_4E08F0, 0x4E08F0, 0x4E08F0, )
        Yay0_4E08F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E08F0.Yay0.o(.data);
    SPLAT_END_SEG(data_4E08F0, 0x4E0B98)
    
    SPLAT_BEGIN_SEG(data_4E0B98, 0x4E0B98, 0x4E0B98, )
        Yay0_4E0B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E0B98.Yay0.o(.data);
    SPLAT_END_SEG(data_4E0B98, 0x4E0EF8)
    
    SPLAT_BEGIN_SEG(data_4E0EF8, 0x4E0EF8, 0x4E0EF8, )
        Yay0_4E0EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E0EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_4E0EF8, 0x4E1648)
    
    SPLAT_BEGIN_SEG(data_4E1648, 0x4E1648, 0x4E1648, )
        Yay0_4E1648_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E1648.Yay0.o(.data);
    SPLAT_END_SEG(data_4E1648, 0x4E1700)
    
    SPLAT_BEGIN_SEG(data_4E1700, 0x4E1700, 0x4E1700, )
        Yay0_4E1700_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E1700.Yay0.o(.data);
    SPLAT_END_SEG(data_4E1700, 0x4E17C0)
    
    SPLAT_BEGIN_SEG(data_4E17C0, 0x4E17C0, 0x4E17C0, )
        Yay0_4E17C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E17C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4E17C0, 0x4E17F8)
    
    SPLAT_BEGIN_SEG(data_4E17F8, 0x4E17F8, 0x4E17F8, )
        Yay0_4E17F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E17F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4E17F8, 0x4E1C50)
    
    SPLAT_BEGIN_SEG(data_4E1C50, 0x4E1C50, 0x4E1C50, )
        Yay0_4E1C50_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E1C50.Yay0.o(.data);
    SPLAT_END_SEG(data_4E1C50, 0x4E2100)
    
    SPLAT_BEGIN_SEG(data_4E2100, 0x4E2100, 0x4E2100, )
        Yay0_4E2100_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2100.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2100, 0x4E2148)
    
    SPLAT_BEGIN_SEG(data_4E2148, 0x4E2148, 0x4E2148, )
        Yay0_4E2148_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2148.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2148, 0x4E21B0)
    
    SPLAT_BEGIN_SEG(data_4E21B0, 0x4E21B0, 0x4E21B0, )
        Yay0_4E21B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E21B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4E21B0, 0x4E2328)
    
    SPLAT_BEGIN_SEG(data_4E2328, 0x4E2328, 0x4E2328, )
        Yay0_4E2328_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2328.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2328, 0x4E23B0)
    
    SPLAT_BEGIN_SEG(data_4E23B0, 0x4E23B0, 0x4E23B0, )
        Yay0_4E23B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E23B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4E23B0, 0x4E2540)
    
    SPLAT_BEGIN_SEG(data_4E2540, 0x4E2540, 0x4E2540, )
        Yay0_4E2540_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2540.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2540, 0x4E2668)
    
    SPLAT_BEGIN_SEG(data_4E2668, 0x4E2668, 0x4E2668, )
        Yay0_4E2668_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2668.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2668, 0x4E2A20)
    
    SPLAT_BEGIN_SEG(data_4E2A20, 0x4E2A20, 0x4E2A20, )
        Yay0_4E2A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2A20.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2A20, 0x4E2B70)
    
    SPLAT_BEGIN_SEG(data_4E2B70, 0x4E2B70, 0x4E2B70, )
        Yay0_4E2B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2B70.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2B70, 0x4E2D58)
    
    SPLAT_BEGIN_SEG(data_4E2D58, 0x4E2D58, 0x4E2D58, )
        Yay0_4E2D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E2D58.Yay0.o(.data);
    SPLAT_END_SEG(data_4E2D58, 0x4E9730)
    
    SPLAT_BEGIN_SEG(data_4E9730, 0x4E9730, 0x4E9730, )
        Yay0_4E9730_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9730.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9730, 0x4E9770)
    
    SPLAT_BEGIN_SEG(data_4E9770, 0x4E9770, 0x4E9770, )
        Yay0_4E9770_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9770.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9770, 0x4E97B0)
    
    SPLAT_BEGIN_SEG(data_4E97B0, 0x4E97B0, 0x4E97B0, )
        Yay0_4E97B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E97B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4E97B0, 0x4E9800)
    
    SPLAT_BEGIN_SEG(data_4E9800, 0x4E9800, 0x4E9800, )
        Yay0_4E9800_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9800.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9800, 0x4E9840)
    
    SPLAT_BEGIN_SEG(data_4E9840, 0x4E9840, 0x4E9840, )
        Yay0_4E9840_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9840.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9840, 0x4E9898)
    
    SPLAT_BEGIN_SEG(data_4E9898, 0x4E9898, 0x4E9898, )
        Yay0_4E9898_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9898.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9898, 0x4E98D8)
    
    SPLAT_BEGIN_SEG(data_4E98D8, 0x4E98D8, 0x4E98D8, )
        Yay0_4E98D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E98D8.Yay0.o(.data);
    SPLAT_END_SEG(data_4E98D8, 0x4E9930)
    
    SPLAT_BEGIN_SEG(data_4E9930, 0x4E9930, 0x4E9930, )
        Yay0_4E9930_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9930.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9930, 0x4E9968)
    
    SPLAT_BEGIN_SEG(data_4E9968, 0x4E9968, 0x4E9968, )
        Yay0_4E9968_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9968.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9968, 0x4E99B0)
    
    SPLAT_BEGIN_SEG(data_4E99B0, 0x4E99B0, 0x4E99B0, )
        Yay0_4E99B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E99B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4E99B0, 0x4E99E8)
    
    SPLAT_BEGIN_SEG(data_4E99E8, 0x4E99E8, 0x4E99E8, )
        Yay0_4E99E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E99E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4E99E8, 0x4E9A38)
    
    SPLAT_BEGIN_SEG(data_4E9A38, 0x4E9A38, 0x4E9A38, )
        Yay0_4E9A38_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9A38.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9A38, 0x4E9AF8)
    
    SPLAT_BEGIN_SEG(data_4E9AF8, 0x4E9AF8, 0x4E9AF8, )
        Yay0_4E9AF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9AF8.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9AF8, 0x4E9BC8)
    
    SPLAT_BEGIN_SEG(data_4E9BC8, 0x4E9BC8, 0x4E9BC8, )
        Yay0_4E9BC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9BC8.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9BC8, 0x4E9C28)
    
    SPLAT_BEGIN_SEG(data_4E9C28, 0x4E9C28, 0x4E9C28, )
        Yay0_4E9C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/4E9C28.Yay0.o(.data);
    SPLAT_END_SEG(data_4E9C28, 0x4EC1E0)
    
    SPLAT_BEGIN_SEG(data_4EC1E0, 0x4EC1E0, 0x4EC1E0, )
        Yay0_4EC1E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC1E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC1E0, 0x4EC238)
    
    SPLAT_BEGIN_SEG(data_4EC238, 0x4EC238, 0x4EC238, )
        Yay0_4EC238_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC238.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC238, 0x4EC290)
    
    SPLAT_BEGIN_SEG(data_4EC290, 0x4EC290, 0x4EC290, )
        Yay0_4EC290_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC290.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC290, 0x4EC2C8)
    
    SPLAT_BEGIN_SEG(data_4EC2C8, 0x4EC2C8, 0x4EC2C8, )
        Yay0_4EC2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC2C8, 0x4EC308)
    
    SPLAT_BEGIN_SEG(data_4EC308, 0x4EC308, 0x4EC308, )
        Yay0_4EC308_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC308.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC308, 0x4EC380)
    
    SPLAT_BEGIN_SEG(data_4EC380, 0x4EC380, 0x4EC380, )
        Yay0_4EC380_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC380.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC380, 0x4EC400)
    
    SPLAT_BEGIN_SEG(data_4EC400, 0x4EC400, 0x4EC400, )
        Yay0_4EC400_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC400.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC400, 0x4EC460)
    
    SPLAT_BEGIN_SEG(data_4EC460, 0x4EC460, 0x4EC460, )
        Yay0_4EC460_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC460.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC460, 0x4EC4C0)
    
    SPLAT_BEGIN_SEG(data_4EC4C0, 0x4EC4C0, 0x4EC4C0, )
        Yay0_4EC4C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC4C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC4C0, 0x4EC590)
    
    SPLAT_BEGIN_SEG(data_4EC590, 0x4EC590, 0x4EC590, )
        Yay0_4EC590_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC590.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC590, 0x4EC660)
    
    SPLAT_BEGIN_SEG(data_4EC660, 0x4EC660, 0x4EC660, )
        Yay0_4EC660_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC660.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC660, 0x4EC710)
    
    SPLAT_BEGIN_SEG(data_4EC710, 0x4EC710, 0x4EC710, )
        Yay0_4EC710_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC710.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC710, 0x4EC790)
    
    SPLAT_BEGIN_SEG(data_4EC790, 0x4EC790, 0x4EC790, )
        Yay0_4EC790_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EC790.Yay0.o(.data);
    SPLAT_END_SEG(data_4EC790, 0x4ECB88)
    
    SPLAT_BEGIN_SEG(data_4ECB88, 0x4ECB88, 0x4ECB88, )
        Yay0_4ECB88_Yay0 = .;
        BUILD_DIR/bin/Yay0/4ECB88.Yay0.o(.data);
    SPLAT_END_SEG(data_4ECB88, 0x4ED658)
    
    SPLAT_BEGIN_SEG(data_4ED658, 0x4ED658, 0x4ED658, )
        Yay0_4ED658_Yay0 = .;
        BUILD_DIR/bin/Yay0/4ED658.Yay0.o(.data);
    SPLAT_END_SEG(data_4ED658, 0x4EE6E0)
    
    SPLAT_BEGIN_SEG(data_4EE6E0, 0x4EE6E0, 0x4EE6E0, )
        Yay0_4EE6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EE6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_4EE6E0, 0x4EF0B0)
    
    SPLAT_BEGIN_SEG(data_4EF0B0, 0x4EF0B0, 0x4EF0B0, )
        Yay0_4EF0B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EF0B0.Yay0.o(.data);
    SPLAT_END_SEG(data_4EF0B0, 0x4EFF00)
    
    SPLAT_BEGIN_SEG(data_4EFF00, 0x4EFF00, 0x4EFF00, )
        Yay0_4EFF00_Yay0 = .;
        BUILD_DIR/bin/Yay0/4EFF00.Yay0.o(.data);
    SPLAT_END_SEG(data_4EFF00, 0x4F1C40)
    
    SPLAT_BEGIN_SEG(data_4F1C40, 0x4F1C40, 0x4F1C40, )
        Yay0_4F1C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F1C40.Yay0.o(.data);
    SPLAT_END_SEG(data_4F1C40, 0x4F2320)
    
    SPLAT_BEGIN_SEG(data_4F2320, 0x4F2320, 0x4F2320, )
        Yay0_4F2320_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F2320.Yay0.o(.data);
    SPLAT_END_SEG(data_4F2320, 0x4F38E8)
    
    SPLAT_BEGIN_SEG(data_4F38E8, 0x4F38E8, 0x4F38E8, )
        Yay0_4F38E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F38E8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F38E8, 0x4F3E10)
    
    SPLAT_BEGIN_SEG(data_4F3E10, 0x4F3E10, 0x4F3E10, )
        Yay0_4F3E10_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F3E10.Yay0.o(.data);
    SPLAT_END_SEG(data_4F3E10, 0x4F4230)
    
    SPLAT_BEGIN_SEG(data_4F4230, 0x4F4230, 0x4F4230, )
        Yay0_4F4230_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F4230.Yay0.o(.data);
    SPLAT_END_SEG(data_4F4230, 0x4F45D0)
    
    SPLAT_BEGIN_SEG(data_4F45D0, 0x4F45D0, 0x4F45D0, )
        Yay0_4F45D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F45D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F45D0, 0x4F4A00)
    
    SPLAT_BEGIN_SEG(data_4F4A00, 0x4F4A00, 0x4F4A00, )
        Yay0_4F4A00_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F4A00.Yay0.o(.data);
    SPLAT_END_SEG(data_4F4A00, 0x4F4E30)
    
    SPLAT_BEGIN_SEG(data_4F4E30, 0x4F4E30, 0x4F4E30, )
        Yay0_4F4E30_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F4E30.Yay0.o(.data);
    SPLAT_END_SEG(data_4F4E30, 0x4F5230)
    
    SPLAT_BEGIN_SEG(data_4F5230, 0x4F5230, 0x4F5230, )
        Yay0_4F5230_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F5230.Yay0.o(.data);
    SPLAT_END_SEG(data_4F5230, 0x4F55F0)
    
    SPLAT_BEGIN_SEG(data_4F55F0, 0x4F55F0, 0x4F55F0, )
        Yay0_4F55F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F55F0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F55F0, 0x4F5900)
    
    SPLAT_BEGIN_SEG(data_4F5900, 0x4F5900, 0x4F5900, )
        Yay0_4F5900_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F5900.Yay0.o(.data);
    SPLAT_END_SEG(data_4F5900, 0x4F5CB0)
    
    SPLAT_BEGIN_SEG(data_4F5CB0, 0x4F5CB0, 0x4F5CB0, )
        Yay0_4F5CB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F5CB0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F5CB0, 0x4F60A8)
    
    SPLAT_BEGIN_SEG(data_4F60A8, 0x4F60A8, 0x4F60A8, )
        Yay0_4F60A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F60A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F60A8, 0x4F6508)
    
    SPLAT_BEGIN_SEG(data_4F6508, 0x4F6508, 0x4F6508, )
        Yay0_4F6508_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F6508.Yay0.o(.data);
    SPLAT_END_SEG(data_4F6508, 0x4F68F0)
    
    SPLAT_BEGIN_SEG(data_4F68F0, 0x4F68F0, 0x4F68F0, )
        Yay0_4F68F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F68F0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F68F0, 0x4F6CC0)
    
    SPLAT_BEGIN_SEG(data_4F6CC0, 0x4F6CC0, 0x4F6CC0, )
        Yay0_4F6CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F6CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F6CC0, 0x4F7070)
    
    SPLAT_BEGIN_SEG(data_4F7070, 0x4F7070, 0x4F7070, )
        Yay0_4F7070_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F7070.Yay0.o(.data);
    SPLAT_END_SEG(data_4F7070, 0x4F7380)
    
    SPLAT_BEGIN_SEG(data_4F7380, 0x4F7380, 0x4F7380, )
        Yay0_4F7380_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F7380.Yay0.o(.data);
    SPLAT_END_SEG(data_4F7380, 0x4F76A8)
    
    SPLAT_BEGIN_SEG(data_4F76A8, 0x4F76A8, 0x4F76A8, )
        Yay0_4F76A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F76A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F76A8, 0x4F79C8)
    
    SPLAT_BEGIN_SEG(data_4F79C8, 0x4F79C8, 0x4F79C8, )
        Yay0_4F79C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F79C8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F79C8, 0x4F7D20)
    
    SPLAT_BEGIN_SEG(data_4F7D20, 0x4F7D20, 0x4F7D20, )
        Yay0_4F7D20_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F7D20.Yay0.o(.data);
    SPLAT_END_SEG(data_4F7D20, 0x4F8050)
    
    SPLAT_BEGIN_SEG(data_4F8050, 0x4F8050, 0x4F8050, )
        Yay0_4F8050_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F8050.Yay0.o(.data);
    SPLAT_END_SEG(data_4F8050, 0x4F8360)
    
    SPLAT_BEGIN_SEG(data_4F8360, 0x4F8360, 0x4F8360, )
        Yay0_4F8360_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F8360.Yay0.o(.data);
    SPLAT_END_SEG(data_4F8360, 0x4F86C0)
    
    SPLAT_BEGIN_SEG(data_4F86C0, 0x4F86C0, 0x4F86C0, )
        Yay0_4F86C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F86C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F86C0, 0x4F88F8)
    
    SPLAT_BEGIN_SEG(data_4F88F8, 0x4F88F8, 0x4F88F8, )
        Yay0_4F88F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F88F8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F88F8, 0x4F8AC8)
    
    SPLAT_BEGIN_SEG(data_4F8AC8, 0x4F8AC8, 0x4F8AC8, )
        Yay0_4F8AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F8AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F8AC8, 0x4F8CF8)
    
    SPLAT_BEGIN_SEG(data_4F8CF8, 0x4F8CF8, 0x4F8CF8, )
        Yay0_4F8CF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F8CF8.Yay0.o(.data);
    SPLAT_END_SEG(data_4F8CF8, 0x4F8F40)
    
    SPLAT_BEGIN_SEG(data_4F8F40, 0x4F8F40, 0x4F8F40, )
        Yay0_4F8F40_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F8F40.Yay0.o(.data);
    SPLAT_END_SEG(data_4F8F40, 0x4F93D0)
    
    SPLAT_BEGIN_SEG(data_4F93D0, 0x4F93D0, 0x4F93D0, )
        Yay0_4F93D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F93D0.Yay0.o(.data);
    SPLAT_END_SEG(data_4F93D0, 0x4F9918)
    
    SPLAT_BEGIN_SEG(data_4F9918, 0x4F9918, 0x4F9918, )
        Yay0_4F9918_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F9918.Yay0.o(.data);
    SPLAT_END_SEG(data_4F9918, 0x4F9E78)
    
    SPLAT_BEGIN_SEG(data_4F9E78, 0x4F9E78, 0x4F9E78, )
        Yay0_4F9E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/4F9E78.Yay0.o(.data);
    SPLAT_END_SEG(data_4F9E78, 0x4FA010)
    
    SPLAT_BEGIN_SEG(data_4FA010, 0x4FA010, 0x4FA010, )
        Yay0_4FA010_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FA010.Yay0.o(.data);
    SPLAT_END_SEG(data_4FA010, 0x4FA348)
    
    SPLAT_BEGIN_SEG(data_4FA348, 0x4FA348, 0x4FA348, )
        Yay0_4FA348_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FA348.Yay0.o(.data);
    SPLAT_END_SEG(data_4FA348, 0x4FAB28)
    
    SPLAT_BEGIN_SEG(data_4FAB28, 0x4FAB28, 0x4FAB28, )
        Yay0_4FAB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FAB28.Yay0.o(.data);
    SPLAT_END_SEG(data_4FAB28, 0x4FABE8)
    
    SPLAT_BEGIN_SEG(data_4FABE8, 0x4FABE8, 0x4FABE8, )
        Yay0_4FABE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FABE8.Yay0.o(.data);
    SPLAT_END_SEG(data_4FABE8, 0x4FB140)
    
    SPLAT_BEGIN_SEG(data_4FB140, 0x4FB140, 0x4FB140, )
        Yay0_4FB140_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FB140.Yay0.o(.data);
    SPLAT_END_SEG(data_4FB140, 0x4FD690)
    
    SPLAT_BEGIN_SEG(data_4FD690, 0x4FD690, 0x4FD690, )
        Yay0_4FD690_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FD690.Yay0.o(.data);
    SPLAT_END_SEG(data_4FD690, 0x4FE4A8)
    
    SPLAT_BEGIN_SEG(data_4FE4A8, 0x4FE4A8, 0x4FE4A8, )
        Yay0_4FE4A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FE4A8.Yay0.o(.data);
    SPLAT_END_SEG(data_4FE4A8, 0x4FF320)
    
    SPLAT_BEGIN_SEG(data_4FF320, 0x4FF320, 0x4FF320, )
        Yay0_4FF320_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FF320.Yay0.o(.data);
    SPLAT_END_SEG(data_4FF320, 0x4FF478)
    
    SPLAT_BEGIN_SEG(data_4FF478, 0x4FF478, 0x4FF478, )
        Yay0_4FF478_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FF478.Yay0.o(.data);
    SPLAT_END_SEG(data_4FF478, 0x4FF948)
    
    SPLAT_BEGIN_SEG(data_4FF948, 0x4FF948, 0x4FF948, )
        Yay0_4FF948_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FF948.Yay0.o(.data);
    SPLAT_END_SEG(data_4FF948, 0x4FF9C0)
    
    SPLAT_BEGIN_SEG(data_4FF9C0, 0x4FF9C0, 0x4FF9C0, )
        Yay0_4FF9C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/4FF9C0.Yay0.o(.data);
    SPLAT_END_SEG(data_4FF9C0, 0x500058)
    
    SPLAT_BEGIN_SEG(data_500058, 0x500058, 0x500058, )
        Yay0_500058_Yay0 = .;
        BUILD_DIR/bin/Yay0/500058.Yay0.o(.data);
    SPLAT_END_SEG(data_500058, 0x500178)
    
    SPLAT_BEGIN_SEG(data_500178, 0x500178, 0x500178, )
        Yay0_500178_Yay0 = .;
        BUILD_DIR/bin/Yay0/500178.Yay0.o(.data);
    SPLAT_END_SEG(data_500178, 0x500318)
    
    SPLAT_BEGIN_SEG(data_500318, 0x500318, 0x500318, )
        Yay0_500318_Yay0 = .;
        BUILD_DIR/bin/Yay0/500318.Yay0.o(.data);
    SPLAT_END_SEG(data_500318, 0x500480)
    
    SPLAT_BEGIN_SEG(data_500480, 0x500480, 0x500480, )
        Yay0_500480_Yay0 = .;
        BUILD_DIR/bin/Yay0/500480.Yay0.o(.data);
    SPLAT_END_SEG(data_500480, 0x500658)
    
    SPLAT_BEGIN_SEG(data_500658, 0x500658, 0x500658, )
        Yay0_500658_Yay0 = .;
        BUILD_DIR/bin/Yay0/500658.Yay0.o(.data);
    SPLAT_END_SEG(data_500658, 0x500810)
    
    SPLAT_BEGIN_SEG(data_500810, 0x500810, 0x500810, )
        Yay0_500810_Yay0 = .;
        BUILD_DIR/bin/Yay0/500810.Yay0.o(.data);
    SPLAT_END_SEG(data_500810, 0x5012C0)
    
    SPLAT_BEGIN_SEG(data_5012C0, 0x5012C0, 0x5012C0, )
        Yay0_5012C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5012C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5012C0, 0x507420)
    
    SPLAT_BEGIN_SEG(data_507420, 0x507420, 0x507420, )
        Yay0_507420_Yay0 = .;
        BUILD_DIR/bin/Yay0/507420.Yay0.o(.data);
    SPLAT_END_SEG(data_507420, 0x5079C8)
    
    SPLAT_BEGIN_SEG(data_5079C8, 0x5079C8, 0x5079C8, )
        Yay0_5079C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5079C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5079C8, 0x507EB8)
    
    SPLAT_BEGIN_SEG(data_507EB8, 0x507EB8, 0x507EB8, )
        Yay0_507EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/507EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_507EB8, 0x509950)
    
    SPLAT_BEGIN_SEG(data_509950, 0x509950, 0x509950, )
        Yay0_509950_Yay0 = .;
        BUILD_DIR/bin/Yay0/509950.Yay0.o(.data);
    SPLAT_END_SEG(data_509950, 0x50AE80)
    
    SPLAT_BEGIN_SEG(data_50AE80, 0x50AE80, 0x50AE80, )
        Yay0_50AE80_Yay0 = .;
        BUILD_DIR/bin/Yay0/50AE80.Yay0.o(.data);
    SPLAT_END_SEG(data_50AE80, 0x50D2D0)
    
    SPLAT_BEGIN_SEG(data_50D2D0, 0x50D2D0, 0x50D2D0, )
        Yay0_50D2D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/50D2D0.Yay0.o(.data);
    SPLAT_END_SEG(data_50D2D0, 0x5100A8)
    
    SPLAT_BEGIN_SEG(data_5100A8, 0x5100A8, 0x5100A8, )
        Yay0_5100A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5100A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5100A8, 0x5104D8)
    
    SPLAT_BEGIN_SEG(data_5104D8, 0x5104D8, 0x5104D8, )
        Yay0_5104D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5104D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5104D8, 0x510908)
    
    SPLAT_BEGIN_SEG(data_510908, 0x510908, 0x510908, )
        Yay0_510908_Yay0 = .;
        BUILD_DIR/bin/Yay0/510908.Yay0.o(.data);
    SPLAT_END_SEG(data_510908, 0x510D48)
    
    SPLAT_BEGIN_SEG(data_510D48, 0x510D48, 0x510D48, )
        Yay0_510D48_Yay0 = .;
        BUILD_DIR/bin/Yay0/510D48.Yay0.o(.data);
    SPLAT_END_SEG(data_510D48, 0x511148)
    
    SPLAT_BEGIN_SEG(data_511148, 0x511148, 0x511148, )
        Yay0_511148_Yay0 = .;
        BUILD_DIR/bin/Yay0/511148.Yay0.o(.data);
    SPLAT_END_SEG(data_511148, 0x511540)
    
    SPLAT_BEGIN_SEG(data_511540, 0x511540, 0x511540, )
        Yay0_511540_Yay0 = .;
        BUILD_DIR/bin/Yay0/511540.Yay0.o(.data);
    SPLAT_END_SEG(data_511540, 0x5118E0)
    
    SPLAT_BEGIN_SEG(data_5118E0, 0x5118E0, 0x5118E0, )
        Yay0_5118E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5118E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5118E0, 0x511D00)
    
    SPLAT_BEGIN_SEG(data_511D00, 0x511D00, 0x511D00, )
        Yay0_511D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/511D00.Yay0.o(.data);
    SPLAT_END_SEG(data_511D00, 0x512180)
    
    SPLAT_BEGIN_SEG(data_512180, 0x512180, 0x512180, )
        Yay0_512180_Yay0 = .;
        BUILD_DIR/bin/Yay0/512180.Yay0.o(.data);
    SPLAT_END_SEG(data_512180, 0x512708)
    
    SPLAT_BEGIN_SEG(data_512708, 0x512708, 0x512708, )
        Yay0_512708_Yay0 = .;
        BUILD_DIR/bin/Yay0/512708.Yay0.o(.data);
    SPLAT_END_SEG(data_512708, 0x512798)
    
    SPLAT_BEGIN_SEG(data_512798, 0x512798, 0x512798, )
        Yay0_512798_Yay0 = .;
        BUILD_DIR/bin/Yay0/512798.Yay0.o(.data);
    SPLAT_END_SEG(data_512798, 0x512938)
    
    SPLAT_BEGIN_SEG(data_512938, 0x512938, 0x512938, )
        Yay0_512938_Yay0 = .;
        BUILD_DIR/bin/Yay0/512938.Yay0.o(.data);
    SPLAT_END_SEG(data_512938, 0x512B80)
    
    SPLAT_BEGIN_SEG(data_512B80, 0x512B80, 0x512B80, )
        Yay0_512B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/512B80.Yay0.o(.data);
    SPLAT_END_SEG(data_512B80, 0x512C08)
    
    SPLAT_BEGIN_SEG(data_512C08, 0x512C08, 0x512C08, )
        Yay0_512C08_Yay0 = .;
        BUILD_DIR/bin/Yay0/512C08.Yay0.o(.data);
    SPLAT_END_SEG(data_512C08, 0x512DE8)
    
    SPLAT_BEGIN_SEG(data_512DE8, 0x512DE8, 0x512DE8, )
        Yay0_512DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/512DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_512DE8, 0x519A28)
    
    SPLAT_BEGIN_SEG(data_519A28, 0x519A28, 0x519A28, )
        Yay0_519A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/519A28.Yay0.o(.data);
    SPLAT_END_SEG(data_519A28, 0x519C00)
    
    SPLAT_BEGIN_SEG(data_519C00, 0x519C00, 0x519C00, )
        Yay0_519C00_Yay0 = .;
        BUILD_DIR/bin/Yay0/519C00.Yay0.o(.data);
    SPLAT_END_SEG(data_519C00, 0x519C40)
    
    SPLAT_BEGIN_SEG(data_519C40, 0x519C40, 0x519C40, )
        Yay0_519C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/519C40.Yay0.o(.data);
    SPLAT_END_SEG(data_519C40, 0x519C98)
    
    SPLAT_BEGIN_SEG(data_519C98, 0x519C98, 0x519C98, )
        Yay0_519C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/519C98.Yay0.o(.data);
    SPLAT_END_SEG(data_519C98, 0x519D98)
    
    SPLAT_BEGIN_SEG(data_519D98, 0x519D98, 0x519D98, )
        Yay0_519D98_Yay0 = .;
        BUILD_DIR/bin/Yay0/519D98.Yay0.o(.data);
    SPLAT_END_SEG(data_519D98, 0x519E48)
    
    SPLAT_BEGIN_SEG(data_519E48, 0x519E48, 0x519E48, )
        Yay0_519E48_Yay0 = .;
        BUILD_DIR/bin/Yay0/519E48.Yay0.o(.data);
    SPLAT_END_SEG(data_519E48, 0x519E98)
    
    SPLAT_BEGIN_SEG(data_519E98, 0x519E98, 0x519E98, )
        Yay0_519E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/519E98.Yay0.o(.data);
    SPLAT_END_SEG(data_519E98, 0x51A460)
    
    SPLAT_BEGIN_SEG(data_51A460, 0x51A460, 0x51A460, )
        Yay0_51A460_Yay0 = .;
        BUILD_DIR/bin/Yay0/51A460.Yay0.o(.data);
    SPLAT_END_SEG(data_51A460, 0x51AAF0)
    
    SPLAT_BEGIN_SEG(data_51AAF0, 0x51AAF0, 0x51AAF0, )
        Yay0_51AAF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/51AAF0.Yay0.o(.data);
    SPLAT_END_SEG(data_51AAF0, 0x51B1E8)
    
    SPLAT_BEGIN_SEG(data_51B1E8, 0x51B1E8, 0x51B1E8, )
        Yay0_51B1E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/51B1E8.Yay0.o(.data);
    SPLAT_END_SEG(data_51B1E8, 0x51B928)
    
    SPLAT_BEGIN_SEG(data_51B928, 0x51B928, 0x51B928, )
        Yay0_51B928_Yay0 = .;
        BUILD_DIR/bin/Yay0/51B928.Yay0.o(.data);
    SPLAT_END_SEG(data_51B928, 0x51C0B8)
    
    SPLAT_BEGIN_SEG(data_51C0B8, 0x51C0B8, 0x51C0B8, )
        Yay0_51C0B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/51C0B8.Yay0.o(.data);
    SPLAT_END_SEG(data_51C0B8, 0x51C7A0)
    
    SPLAT_BEGIN_SEG(data_51C7A0, 0x51C7A0, 0x51C7A0, )
        Yay0_51C7A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/51C7A0.Yay0.o(.data);
    SPLAT_END_SEG(data_51C7A0, 0x51CE10)
    
    SPLAT_BEGIN_SEG(data_51CE10, 0x51CE10, 0x51CE10, )
        Yay0_51CE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/51CE10.Yay0.o(.data);
    SPLAT_END_SEG(data_51CE10, 0x51D5F0)
    
    SPLAT_BEGIN_SEG(data_51D5F0, 0x51D5F0, 0x51D5F0, )
        Yay0_51D5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/51D5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_51D5F0, 0x51DB48)
    
    SPLAT_BEGIN_SEG(data_51DB48, 0x51DB48, 0x51DB48, )
        Yay0_51DB48_Yay0 = .;
        BUILD_DIR/bin/Yay0/51DB48.Yay0.o(.data);
    SPLAT_END_SEG(data_51DB48, 0x51E028)
    
    SPLAT_BEGIN_SEG(data_51E028, 0x51E028, 0x51E028, )
        Yay0_51E028_Yay0 = .;
        BUILD_DIR/bin/Yay0/51E028.Yay0.o(.data);
    SPLAT_END_SEG(data_51E028, 0x51E4D0)
    
    SPLAT_BEGIN_SEG(data_51E4D0, 0x51E4D0, 0x51E4D0, )
        Yay0_51E4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/51E4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_51E4D0, 0x51EAB8)
    
    SPLAT_BEGIN_SEG(data_51EAB8, 0x51EAB8, 0x51EAB8, )
        Yay0_51EAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/51EAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_51EAB8, 0x51EE80)
    
    SPLAT_BEGIN_SEG(data_51EE80, 0x51EE80, 0x51EE80, )
        Yay0_51EE80_Yay0 = .;
        BUILD_DIR/bin/Yay0/51EE80.Yay0.o(.data);
    SPLAT_END_SEG(data_51EE80, 0x51F428)
    
    SPLAT_BEGIN_SEG(data_51F428, 0x51F428, 0x51F428, )
        Yay0_51F428_Yay0 = .;
        BUILD_DIR/bin/Yay0/51F428.Yay0.o(.data);
    SPLAT_END_SEG(data_51F428, 0x51F950)
    
    SPLAT_BEGIN_SEG(data_51F950, 0x51F950, 0x51F950, )
        Yay0_51F950_Yay0 = .;
        BUILD_DIR/bin/Yay0/51F950.Yay0.o(.data);
    SPLAT_END_SEG(data_51F950, 0x51FEE8)
    
    SPLAT_BEGIN_SEG(data_51FEE8, 0x51FEE8, 0x51FEE8, )
        Yay0_51FEE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/51FEE8.Yay0.o(.data);
    SPLAT_END_SEG(data_51FEE8, 0x520358)
    
    SPLAT_BEGIN_SEG(data_520358, 0x520358, 0x520358, )
        Yay0_520358_Yay0 = .;
        BUILD_DIR/bin/Yay0/520358.Yay0.o(.data);
    SPLAT_END_SEG(data_520358, 0x520698)
    
    SPLAT_BEGIN_SEG(data_520698, 0x520698, 0x520698, )
        Yay0_520698_Yay0 = .;
        BUILD_DIR/bin/Yay0/520698.Yay0.o(.data);
    SPLAT_END_SEG(data_520698, 0x5209F0)
    
    SPLAT_BEGIN_SEG(data_5209F0, 0x5209F0, 0x5209F0, )
        Yay0_5209F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5209F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5209F0, 0x520D60)
    
    SPLAT_BEGIN_SEG(data_520D60, 0x520D60, 0x520D60, )
        Yay0_520D60_Yay0 = .;
        BUILD_DIR/bin/Yay0/520D60.Yay0.o(.data);
    SPLAT_END_SEG(data_520D60, 0x5210C8)
    
    SPLAT_BEGIN_SEG(data_5210C8, 0x5210C8, 0x5210C8, )
        Yay0_5210C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5210C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5210C8, 0x521138)
    
    SPLAT_BEGIN_SEG(data_521138, 0x521138, 0x521138, )
        Yay0_521138_Yay0 = .;
        BUILD_DIR/bin/Yay0/521138.Yay0.o(.data);
    SPLAT_END_SEG(data_521138, 0x5211C0)
    
    SPLAT_BEGIN_SEG(data_5211C0, 0x5211C0, 0x5211C0, )
        Yay0_5211C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5211C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5211C0, 0x521268)
    
    SPLAT_BEGIN_SEG(data_521268, 0x521268, 0x521268, )
        Yay0_521268_Yay0 = .;
        BUILD_DIR/bin/Yay0/521268.Yay0.o(.data);
    SPLAT_END_SEG(data_521268, 0x5214D0)
    
    SPLAT_BEGIN_SEG(data_5214D0, 0x5214D0, 0x5214D0, )
        Yay0_5214D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5214D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5214D0, 0x521718)
    
    SPLAT_BEGIN_SEG(data_521718, 0x521718, 0x521718, )
        Yay0_521718_Yay0 = .;
        BUILD_DIR/bin/Yay0/521718.Yay0.o(.data);
    SPLAT_END_SEG(data_521718, 0x5218C0)
    
    SPLAT_BEGIN_SEG(data_5218C0, 0x5218C0, 0x5218C0, )
        Yay0_5218C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5218C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5218C0, 0x521A60)
    
    SPLAT_BEGIN_SEG(data_521A60, 0x521A60, 0x521A60, )
        Yay0_521A60_Yay0 = .;
        BUILD_DIR/bin/Yay0/521A60.Yay0.o(.data);
    SPLAT_END_SEG(data_521A60, 0x521C68)
    
    SPLAT_BEGIN_SEG(data_521C68, 0x521C68, 0x521C68, )
        Yay0_521C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/521C68.Yay0.o(.data);
    SPLAT_END_SEG(data_521C68, 0x5236A8)
    
    SPLAT_BEGIN_SEG(data_5236A8, 0x5236A8, 0x5236A8, )
        Yay0_5236A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5236A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5236A8, 0x524710)
    
    SPLAT_BEGIN_SEG(data_524710, 0x524710, 0x524710, )
        Yay0_524710_Yay0 = .;
        BUILD_DIR/bin/Yay0/524710.Yay0.o(.data);
    SPLAT_END_SEG(data_524710, 0x525630)
    
    SPLAT_BEGIN_SEG(data_525630, 0x525630, 0x525630, )
        Yay0_525630_Yay0 = .;
        BUILD_DIR/bin/Yay0/525630.Yay0.o(.data);
    SPLAT_END_SEG(data_525630, 0x525B10)
    
    SPLAT_BEGIN_SEG(data_525B10, 0x525B10, 0x525B10, )
        Yay0_525B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/525B10.Yay0.o(.data);
    SPLAT_END_SEG(data_525B10, 0x525C98)
    
    SPLAT_BEGIN_SEG(data_525C98, 0x525C98, 0x525C98, )
        Yay0_525C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/525C98.Yay0.o(.data);
    SPLAT_END_SEG(data_525C98, 0x525CF0)
    
    SPLAT_BEGIN_SEG(data_525CF0, 0x525CF0, 0x525CF0, )
        Yay0_525CF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/525CF0.Yay0.o(.data);
    SPLAT_END_SEG(data_525CF0, 0x525D20)
    
    SPLAT_BEGIN_SEG(data_525D20, 0x525D20, 0x525D20, )
        Yay0_525D20_Yay0 = .;
        BUILD_DIR/bin/Yay0/525D20.Yay0.o(.data);
    SPLAT_END_SEG(data_525D20, 0x525E10)
    
    SPLAT_BEGIN_SEG(data_525E10, 0x525E10, 0x525E10, )
        Yay0_525E10_Yay0 = .;
        BUILD_DIR/bin/Yay0/525E10.Yay0.o(.data);
    SPLAT_END_SEG(data_525E10, 0x525E60)
    
    SPLAT_BEGIN_SEG(data_525E60, 0x525E60, 0x525E60, )
        Yay0_525E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/525E60.Yay0.o(.data);
    SPLAT_END_SEG(data_525E60, 0x525E98)
    
    SPLAT_BEGIN_SEG(data_525E98, 0x525E98, 0x525E98, )
        Yay0_525E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/525E98.Yay0.o(.data);
    SPLAT_END_SEG(data_525E98, 0x525EE0)
    
    SPLAT_BEGIN_SEG(data_525EE0, 0x525EE0, 0x525EE0, )
        Yay0_525EE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/525EE0.Yay0.o(.data);
    SPLAT_END_SEG(data_525EE0, 0x525F80)
    
    SPLAT_BEGIN_SEG(data_525F80, 0x525F80, 0x525F80, )
        Yay0_525F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/525F80.Yay0.o(.data);
    SPLAT_END_SEG(data_525F80, 0x525FB8)
    
    SPLAT_BEGIN_SEG(data_525FB8, 0x525FB8, 0x525FB8, )
        Yay0_525FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/525FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_525FB8, 0x525FF0)
    
    SPLAT_BEGIN_SEG(data_525FF0, 0x525FF0, 0x525FF0, )
        Yay0_525FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/525FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_525FF0, 0x52CF20)
    
    SPLAT_BEGIN_SEG(data_52CF20, 0x52CF20, 0x52CF20, )
        Yay0_52CF20_Yay0 = .;
        BUILD_DIR/bin/Yay0/52CF20.Yay0.o(.data);
    SPLAT_END_SEG(data_52CF20, 0x52CFD8)
    
    SPLAT_BEGIN_SEG(data_52CFD8, 0x52CFD8, 0x52CFD8, )
        Yay0_52CFD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/52CFD8.Yay0.o(.data);
    SPLAT_END_SEG(data_52CFD8, 0x52D030)
    
    SPLAT_BEGIN_SEG(data_52D030, 0x52D030, 0x52D030, )
        Yay0_52D030_Yay0 = .;
        BUILD_DIR/bin/Yay0/52D030.Yay0.o(.data);
    SPLAT_END_SEG(data_52D030, 0x52D198)
    
    SPLAT_BEGIN_SEG(data_52D198, 0x52D198, 0x52D198, )
        Yay0_52D198_Yay0 = .;
        BUILD_DIR/bin/Yay0/52D198.Yay0.o(.data);
    SPLAT_END_SEG(data_52D198, 0x52E1B0)
    
    SPLAT_BEGIN_SEG(data_52E1B0, 0x52E1B0, 0x52E1B0, )
        Yay0_52E1B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/52E1B0.Yay0.o(.data);
    SPLAT_END_SEG(data_52E1B0, 0x52E7E0)
    
    SPLAT_BEGIN_SEG(data_52E7E0, 0x52E7E0, 0x52E7E0, )
        Yay0_52E7E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/52E7E0.Yay0.o(.data);
    SPLAT_END_SEG(data_52E7E0, 0x52ED50)
    
    SPLAT_BEGIN_SEG(data_52ED50, 0x52ED50, 0x52ED50, )
        Yay0_52ED50_Yay0 = .;
        BUILD_DIR/bin/Yay0/52ED50.Yay0.o(.data);
    SPLAT_END_SEG(data_52ED50, 0x52F310)
    
    SPLAT_BEGIN_SEG(data_52F310, 0x52F310, 0x52F310, )
        Yay0_52F310_Yay0 = .;
        BUILD_DIR/bin/Yay0/52F310.Yay0.o(.data);
    SPLAT_END_SEG(data_52F310, 0x52F7E0)
    
    SPLAT_BEGIN_SEG(data_52F7E0, 0x52F7E0, 0x52F7E0, )
        Yay0_52F7E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/52F7E0.Yay0.o(.data);
    SPLAT_END_SEG(data_52F7E0, 0x52FCB8)
    
    SPLAT_BEGIN_SEG(data_52FCB8, 0x52FCB8, 0x52FCB8, )
        Yay0_52FCB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/52FCB8.Yay0.o(.data);
    SPLAT_END_SEG(data_52FCB8, 0x530230)
    
    SPLAT_BEGIN_SEG(data_530230, 0x530230, 0x530230, )
        Yay0_530230_Yay0 = .;
        BUILD_DIR/bin/Yay0/530230.Yay0.o(.data);
    SPLAT_END_SEG(data_530230, 0x530708)
    
    SPLAT_BEGIN_SEG(data_530708, 0x530708, 0x530708, )
        Yay0_530708_Yay0 = .;
        BUILD_DIR/bin/Yay0/530708.Yay0.o(.data);
    SPLAT_END_SEG(data_530708, 0x530BB8)
    
    SPLAT_BEGIN_SEG(data_530BB8, 0x530BB8, 0x530BB8, )
        Yay0_530BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/530BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_530BB8, 0x531110)
    
    SPLAT_BEGIN_SEG(data_531110, 0x531110, 0x531110, )
        Yay0_531110_Yay0 = .;
        BUILD_DIR/bin/Yay0/531110.Yay0.o(.data);
    SPLAT_END_SEG(data_531110, 0x531610)
    
    SPLAT_BEGIN_SEG(data_531610, 0x531610, 0x531610, )
        Yay0_531610_Yay0 = .;
        BUILD_DIR/bin/Yay0/531610.Yay0.o(.data);
    SPLAT_END_SEG(data_531610, 0x531B18)
    
    SPLAT_BEGIN_SEG(data_531B18, 0x531B18, 0x531B18, )
        Yay0_531B18_Yay0 = .;
        BUILD_DIR/bin/Yay0/531B18.Yay0.o(.data);
    SPLAT_END_SEG(data_531B18, 0x5321D8)
    
    SPLAT_BEGIN_SEG(data_5321D8, 0x5321D8, 0x5321D8, )
        Yay0_5321D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5321D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5321D8, 0x532860)
    
    SPLAT_BEGIN_SEG(data_532860, 0x532860, 0x532860, )
        Yay0_532860_Yay0 = .;
        BUILD_DIR/bin/Yay0/532860.Yay0.o(.data);
    SPLAT_END_SEG(data_532860, 0x532FA8)
    
    SPLAT_BEGIN_SEG(data_532FA8, 0x532FA8, 0x532FA8, )
        Yay0_532FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/532FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_532FA8, 0x5337A8)
    
    SPLAT_BEGIN_SEG(data_5337A8, 0x5337A8, 0x5337A8, )
        Yay0_5337A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5337A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5337A8, 0x533F18)
    
    SPLAT_BEGIN_SEG(data_533F18, 0x533F18, 0x533F18, )
        Yay0_533F18_Yay0 = .;
        BUILD_DIR/bin/Yay0/533F18.Yay0.o(.data);
    SPLAT_END_SEG(data_533F18, 0x5346B0)
    
    SPLAT_BEGIN_SEG(data_5346B0, 0x5346B0, 0x5346B0, )
        Yay0_5346B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5346B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5346B0, 0x534E80)
    
    SPLAT_BEGIN_SEG(data_534E80, 0x534E80, 0x534E80, )
        Yay0_534E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/534E80.Yay0.o(.data);
    SPLAT_END_SEG(data_534E80, 0x535128)
    
    SPLAT_BEGIN_SEG(data_535128, 0x535128, 0x535128, )
        Yay0_535128_Yay0 = .;
        BUILD_DIR/bin/Yay0/535128.Yay0.o(.data);
    SPLAT_END_SEG(data_535128, 0x535498)
    
    SPLAT_BEGIN_SEG(data_535498, 0x535498, 0x535498, )
        Yay0_535498_Yay0 = .;
        BUILD_DIR/bin/Yay0/535498.Yay0.o(.data);
    SPLAT_END_SEG(data_535498, 0x535990)
    
    SPLAT_BEGIN_SEG(data_535990, 0x535990, 0x535990, )
        Yay0_535990_Yay0 = .;
        BUILD_DIR/bin/Yay0/535990.Yay0.o(.data);
    SPLAT_END_SEG(data_535990, 0x535E78)
    
    SPLAT_BEGIN_SEG(data_535E78, 0x535E78, 0x535E78, )
        Yay0_535E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/535E78.Yay0.o(.data);
    SPLAT_END_SEG(data_535E78, 0x536348)
    
    SPLAT_BEGIN_SEG(data_536348, 0x536348, 0x536348, )
        Yay0_536348_Yay0 = .;
        BUILD_DIR/bin/Yay0/536348.Yay0.o(.data);
    SPLAT_END_SEG(data_536348, 0x536808)
    
    SPLAT_BEGIN_SEG(data_536808, 0x536808, 0x536808, )
        Yay0_536808_Yay0 = .;
        BUILD_DIR/bin/Yay0/536808.Yay0.o(.data);
    SPLAT_END_SEG(data_536808, 0x536CD0)
    
    SPLAT_BEGIN_SEG(data_536CD0, 0x536CD0, 0x536CD0, )
        Yay0_536CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/536CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_536CD0, 0x537140)
    
    SPLAT_BEGIN_SEG(data_537140, 0x537140, 0x537140, )
        Yay0_537140_Yay0 = .;
        BUILD_DIR/bin/Yay0/537140.Yay0.o(.data);
    SPLAT_END_SEG(data_537140, 0x5375E0)
    
    SPLAT_BEGIN_SEG(data_5375E0, 0x5375E0, 0x5375E0, )
        Yay0_5375E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5375E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5375E0, 0x5393A8)
    
    SPLAT_BEGIN_SEG(data_5393A8, 0x5393A8, 0x5393A8, )
        Yay0_5393A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5393A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5393A8, 0x539EA8)
    
    SPLAT_BEGIN_SEG(data_539EA8, 0x539EA8, 0x539EA8, )
        Yay0_539EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/539EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_539EA8, 0x53A020)
    
    SPLAT_BEGIN_SEG(data_53A020, 0x53A020, 0x53A020, )
        Yay0_53A020_Yay0 = .;
        BUILD_DIR/bin/Yay0/53A020.Yay0.o(.data);
    SPLAT_END_SEG(data_53A020, 0x53A188)
    
    SPLAT_BEGIN_SEG(data_53A188, 0x53A188, 0x53A188, )
        Yay0_53A188_Yay0 = .;
        BUILD_DIR/bin/Yay0/53A188.Yay0.o(.data);
    SPLAT_END_SEG(data_53A188, 0x53AA68)
    
    SPLAT_BEGIN_SEG(data_53AA68, 0x53AA68, 0x53AA68, )
        Yay0_53AA68_Yay0 = .;
        BUILD_DIR/bin/Yay0/53AA68.Yay0.o(.data);
    SPLAT_END_SEG(data_53AA68, 0x53ABD8)
    
    SPLAT_BEGIN_SEG(data_53ABD8, 0x53ABD8, 0x53ABD8, )
        Yay0_53ABD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/53ABD8.Yay0.o(.data);
    SPLAT_END_SEG(data_53ABD8, 0x53AD20)
    
    SPLAT_BEGIN_SEG(data_53AD20, 0x53AD20, 0x53AD20, )
        Yay0_53AD20_Yay0 = .;
        BUILD_DIR/bin/Yay0/53AD20.Yay0.o(.data);
    SPLAT_END_SEG(data_53AD20, 0x53ADE8)
    
    SPLAT_BEGIN_SEG(data_53ADE8, 0x53ADE8, 0x53ADE8, )
        Yay0_53ADE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/53ADE8.Yay0.o(.data);
    SPLAT_END_SEG(data_53ADE8, 0x53AEB0)
    
    SPLAT_BEGIN_SEG(data_53AEB0, 0x53AEB0, 0x53AEB0, )
        Yay0_53AEB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/53AEB0.Yay0.o(.data);
    SPLAT_END_SEG(data_53AEB0, 0x53B1F8)
    
    SPLAT_BEGIN_SEG(data_53B1F8, 0x53B1F8, 0x53B1F8, )
        Yay0_53B1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/53B1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_53B1F8, 0x53B560)
    
    SPLAT_BEGIN_SEG(data_53B560, 0x53B560, 0x53B560, )
        Yay0_53B560_Yay0 = .;
        BUILD_DIR/bin/Yay0/53B560.Yay0.o(.data);
    SPLAT_END_SEG(data_53B560, 0x53B918)
    
    SPLAT_BEGIN_SEG(data_53B918, 0x53B918, 0x53B918, )
        Yay0_53B918_Yay0 = .;
        BUILD_DIR/bin/Yay0/53B918.Yay0.o(.data);
    SPLAT_END_SEG(data_53B918, 0x53BD40)
    
    SPLAT_BEGIN_SEG(data_53BD40, 0x53BD40, 0x53BD40, )
        Yay0_53BD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/53BD40.Yay0.o(.data);
    SPLAT_END_SEG(data_53BD40, 0x53C190)
    
    SPLAT_BEGIN_SEG(data_53C190, 0x53C190, 0x53C190, )
        Yay0_53C190_Yay0 = .;
        BUILD_DIR/bin/Yay0/53C190.Yay0.o(.data);
    SPLAT_END_SEG(data_53C190, 0x53C548)
    
    SPLAT_BEGIN_SEG(data_53C548, 0x53C548, 0x53C548, )
        Yay0_53C548_Yay0 = .;
        BUILD_DIR/bin/Yay0/53C548.Yay0.o(.data);
    SPLAT_END_SEG(data_53C548, 0x53C900)
    
    SPLAT_BEGIN_SEG(data_53C900, 0x53C900, 0x53C900, )
        Yay0_53C900_Yay0 = .;
        BUILD_DIR/bin/Yay0/53C900.Yay0.o(.data);
    SPLAT_END_SEG(data_53C900, 0x53CBF0)
    
    SPLAT_BEGIN_SEG(data_53CBF0, 0x53CBF0, 0x53CBF0, )
        Yay0_53CBF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/53CBF0.Yay0.o(.data);
    SPLAT_END_SEG(data_53CBF0, 0x53CE78)
    
    SPLAT_BEGIN_SEG(data_53CE78, 0x53CE78, 0x53CE78, )
        Yay0_53CE78_Yay0 = .;
        BUILD_DIR/bin/Yay0/53CE78.Yay0.o(.data);
    SPLAT_END_SEG(data_53CE78, 0x53D568)
    
    SPLAT_BEGIN_SEG(data_53D568, 0x53D568, 0x53D568, )
        Yay0_53D568_Yay0 = .;
        BUILD_DIR/bin/Yay0/53D568.Yay0.o(.data);
    SPLAT_END_SEG(data_53D568, 0x53DC80)
    
    SPLAT_BEGIN_SEG(data_53DC80, 0x53DC80, 0x53DC80, )
        Yay0_53DC80_Yay0 = .;
        BUILD_DIR/bin/Yay0/53DC80.Yay0.o(.data);
    SPLAT_END_SEG(data_53DC80, 0x53DCD8)
    
    SPLAT_BEGIN_SEG(data_53DCD8, 0x53DCD8, 0x53DCD8, )
        Yay0_53DCD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/53DCD8.Yay0.o(.data);
    SPLAT_END_SEG(data_53DCD8, 0x53DD48)
    
    SPLAT_BEGIN_SEG(data_53DD48, 0x53DD48, 0x53DD48, )
        Yay0_53DD48_Yay0 = .;
        BUILD_DIR/bin/Yay0/53DD48.Yay0.o(.data);
    SPLAT_END_SEG(data_53DD48, 0x53DF78)
    
    SPLAT_BEGIN_SEG(data_53DF78, 0x53DF78, 0x53DF78, )
        Yay0_53DF78_Yay0 = .;
        BUILD_DIR/bin/Yay0/53DF78.Yay0.o(.data);
    SPLAT_END_SEG(data_53DF78, 0x53E1F0)
    
    SPLAT_BEGIN_SEG(data_53E1F0, 0x53E1F0, 0x53E1F0, )
        Yay0_53E1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/53E1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_53E1F0, 0x53E620)
    
    SPLAT_BEGIN_SEG(data_53E620, 0x53E620, 0x53E620, )
        Yay0_53E620_Yay0 = .;
        BUILD_DIR/bin/Yay0/53E620.Yay0.o(.data);
    SPLAT_END_SEG(data_53E620, 0x53EA20)
    
    SPLAT_BEGIN_SEG(data_53EA20, 0x53EA20, 0x53EA20, )
        Yay0_53EA20_Yay0 = .;
        BUILD_DIR/bin/Yay0/53EA20.Yay0.o(.data);
    SPLAT_END_SEG(data_53EA20, 0x53EF50)
    
    SPLAT_BEGIN_SEG(data_53EF50, 0x53EF50, 0x53EF50, )
        Yay0_53EF50_Yay0 = .;
        BUILD_DIR/bin/Yay0/53EF50.Yay0.o(.data);
    SPLAT_END_SEG(data_53EF50, 0x53F4D8)
    
    SPLAT_BEGIN_SEG(data_53F4D8, 0x53F4D8, 0x53F4D8, )
        Yay0_53F4D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/53F4D8.Yay0.o(.data);
    SPLAT_END_SEG(data_53F4D8, 0x540B28)
    
    SPLAT_BEGIN_SEG(data_540B28, 0x540B28, 0x540B28, )
        Yay0_540B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/540B28.Yay0.o(.data);
    SPLAT_END_SEG(data_540B28, 0x54BBB0)
    
    SPLAT_BEGIN_SEG(data_54BBB0, 0x54BBB0, 0x54BBB0, )
        Yay0_54BBB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/54BBB0.Yay0.o(.data);
    SPLAT_END_SEG(data_54BBB0, 0x54BFD0)
    
    SPLAT_BEGIN_SEG(data_54BFD0, 0x54BFD0, 0x54BFD0, )
        Yay0_54BFD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/54BFD0.Yay0.o(.data);
    SPLAT_END_SEG(data_54BFD0, 0x54C430)
    
    SPLAT_BEGIN_SEG(data_54C430, 0x54C430, 0x54C430, )
        Yay0_54C430_Yay0 = .;
        BUILD_DIR/bin/Yay0/54C430.Yay0.o(.data);
    SPLAT_END_SEG(data_54C430, 0x54C8A0)
    
    SPLAT_BEGIN_SEG(data_54C8A0, 0x54C8A0, 0x54C8A0, )
        Yay0_54C8A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/54C8A0.Yay0.o(.data);
    SPLAT_END_SEG(data_54C8A0, 0x54D130)
    
    SPLAT_BEGIN_SEG(data_54D130, 0x54D130, 0x54D130, )
        Yay0_54D130_Yay0 = .;
        BUILD_DIR/bin/Yay0/54D130.Yay0.o(.data);
    SPLAT_END_SEG(data_54D130, 0x54D288)
    
    SPLAT_BEGIN_SEG(data_54D288, 0x54D288, 0x54D288, )
        Yay0_54D288_Yay0 = .;
        BUILD_DIR/bin/Yay0/54D288.Yay0.o(.data);
    SPLAT_END_SEG(data_54D288, 0x54D3E0)
    
    SPLAT_BEGIN_SEG(data_54D3E0, 0x54D3E0, 0x54D3E0, )
        Yay0_54D3E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/54D3E0.Yay0.o(.data);
    SPLAT_END_SEG(data_54D3E0, 0x54D538)
    
    SPLAT_BEGIN_SEG(data_54D538, 0x54D538, 0x54D538, )
        Yay0_54D538_Yay0 = .;
        BUILD_DIR/bin/Yay0/54D538.Yay0.o(.data);
    SPLAT_END_SEG(data_54D538, 0x54DC38)
    
    SPLAT_BEGIN_SEG(data_54DC38, 0x54DC38, 0x54DC38, )
        Yay0_54DC38_Yay0 = .;
        BUILD_DIR/bin/Yay0/54DC38.Yay0.o(.data);
    SPLAT_END_SEG(data_54DC38, 0x54E318)
    
    SPLAT_BEGIN_SEG(data_54E318, 0x54E318, 0x54E318, )
        Yay0_54E318_Yay0 = .;
        BUILD_DIR/bin/Yay0/54E318.Yay0.o(.data);
    SPLAT_END_SEG(data_54E318, 0x54EA00)
    
    SPLAT_BEGIN_SEG(data_54EA00, 0x54EA00, 0x54EA00, )
        Yay0_54EA00_Yay0 = .;
        BUILD_DIR/bin/Yay0/54EA00.Yay0.o(.data);
    SPLAT_END_SEG(data_54EA00, 0x54EAE8)
    
    SPLAT_BEGIN_SEG(data_54EAE8, 0x54EAE8, 0x54EAE8, )
        Yay0_54EAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/54EAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_54EAE8, 0x54EBE8)
    
    SPLAT_BEGIN_SEG(data_54EBE8, 0x54EBE8, 0x54EBE8, )
        Yay0_54EBE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/54EBE8.Yay0.o(.data);
    SPLAT_END_SEG(data_54EBE8, 0x54ECD0)
    
    SPLAT_BEGIN_SEG(data_54ECD0, 0x54ECD0, 0x54ECD0, )
        Yay0_54ECD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/54ECD0.Yay0.o(.data);
    SPLAT_END_SEG(data_54ECD0, 0x54ED98)
    
    SPLAT_BEGIN_SEG(data_54ED98, 0x54ED98, 0x54ED98, )
        Yay0_54ED98_Yay0 = .;
        BUILD_DIR/bin/Yay0/54ED98.Yay0.o(.data);
    SPLAT_END_SEG(data_54ED98, 0x54EE60)
    
    SPLAT_BEGIN_SEG(data_54EE60, 0x54EE60, 0x54EE60, )
        Yay0_54EE60_Yay0 = .;
        BUILD_DIR/bin/Yay0/54EE60.Yay0.o(.data);
    SPLAT_END_SEG(data_54EE60, 0x54F2D8)
    
    SPLAT_BEGIN_SEG(data_54F2D8, 0x54F2D8, 0x54F2D8, )
        Yay0_54F2D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/54F2D8.Yay0.o(.data);
    SPLAT_END_SEG(data_54F2D8, 0x54F740)
    
    SPLAT_BEGIN_SEG(data_54F740, 0x54F740, 0x54F740, )
        Yay0_54F740_Yay0 = .;
        BUILD_DIR/bin/Yay0/54F740.Yay0.o(.data);
    SPLAT_END_SEG(data_54F740, 0x54FBB8)
    
    SPLAT_BEGIN_SEG(data_54FBB8, 0x54FBB8, 0x54FBB8, )
        Yay0_54FBB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/54FBB8.Yay0.o(.data);
    SPLAT_END_SEG(data_54FBB8, 0x550508)
    
    SPLAT_BEGIN_SEG(data_550508, 0x550508, 0x550508, )
        Yay0_550508_Yay0 = .;
        BUILD_DIR/bin/Yay0/550508.Yay0.o(.data);
    SPLAT_END_SEG(data_550508, 0x5506E0)
    
    SPLAT_BEGIN_SEG(data_5506E0, 0x5506E0, 0x5506E0, )
        Yay0_5506E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5506E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5506E0, 0x5508D0)
    
    SPLAT_BEGIN_SEG(data_5508D0, 0x5508D0, 0x5508D0, )
        Yay0_5508D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5508D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5508D0, 0x550AA8)
    
    SPLAT_BEGIN_SEG(data_550AA8, 0x550AA8, 0x550AA8, )
        Yay0_550AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/550AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_550AA8, 0x550DE0)
    
    SPLAT_BEGIN_SEG(data_550DE0, 0x550DE0, 0x550DE0, )
        Yay0_550DE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/550DE0.Yay0.o(.data);
    SPLAT_END_SEG(data_550DE0, 0x551108)
    
    SPLAT_BEGIN_SEG(data_551108, 0x551108, 0x551108, )
        Yay0_551108_Yay0 = .;
        BUILD_DIR/bin/Yay0/551108.Yay0.o(.data);
    SPLAT_END_SEG(data_551108, 0x5514A8)
    
    SPLAT_BEGIN_SEG(data_5514A8, 0x5514A8, 0x5514A8, )
        Yay0_5514A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5514A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5514A8, 0x551520)
    
    SPLAT_BEGIN_SEG(data_551520, 0x551520, 0x551520, )
        Yay0_551520_Yay0 = .;
        BUILD_DIR/bin/Yay0/551520.Yay0.o(.data);
    SPLAT_END_SEG(data_551520, 0x551598)
    
    SPLAT_BEGIN_SEG(data_551598, 0x551598, 0x551598, )
        Yay0_551598_Yay0 = .;
        BUILD_DIR/bin/Yay0/551598.Yay0.o(.data);
    SPLAT_END_SEG(data_551598, 0x551610)
    
    SPLAT_BEGIN_SEG(data_551610, 0x551610, 0x551610, )
        Yay0_551610_Yay0 = .;
        BUILD_DIR/bin/Yay0/551610.Yay0.o(.data);
    SPLAT_END_SEG(data_551610, 0x551680)
    
    SPLAT_BEGIN_SEG(data_551680, 0x551680, 0x551680, )
        Yay0_551680_Yay0 = .;
        BUILD_DIR/bin/Yay0/551680.Yay0.o(.data);
    SPLAT_END_SEG(data_551680, 0x551728)
    
    SPLAT_BEGIN_SEG(data_551728, 0x551728, 0x551728, )
        Yay0_551728_Yay0 = .;
        BUILD_DIR/bin/Yay0/551728.Yay0.o(.data);
    SPLAT_END_SEG(data_551728, 0x5517E8)
    
    SPLAT_BEGIN_SEG(data_5517E8, 0x5517E8, 0x5517E8, )
        Yay0_5517E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5517E8.Yay0.o(.data);
    SPLAT_END_SEG(data_5517E8, 0x551890)
    
    SPLAT_BEGIN_SEG(data_551890, 0x551890, 0x551890, )
        Yay0_551890_Yay0 = .;
        BUILD_DIR/bin/Yay0/551890.Yay0.o(.data);
    SPLAT_END_SEG(data_551890, 0x551940)
    
    SPLAT_BEGIN_SEG(data_551940, 0x551940, 0x551940, )
        Yay0_551940_Yay0 = .;
        BUILD_DIR/bin/Yay0/551940.Yay0.o(.data);
    SPLAT_END_SEG(data_551940, 0x5519E0)
    
    SPLAT_BEGIN_SEG(data_5519E0, 0x5519E0, 0x5519E0, )
        Yay0_5519E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5519E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5519E0, 0x5541A0)
    
    SPLAT_BEGIN_SEG(data_5541A0, 0x5541A0, 0x5541A0, )
        Yay0_5541A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5541A0.Yay0.o(.data);
    SPLAT_END_SEG(data_5541A0, 0x554300)
    
    SPLAT_BEGIN_SEG(data_554300, 0x554300, 0x554300, )
        Yay0_554300_Yay0 = .;
        BUILD_DIR/bin/Yay0/554300.Yay0.o(.data);
    SPLAT_END_SEG(data_554300, 0x554460)
    
    SPLAT_BEGIN_SEG(data_554460, 0x554460, 0x554460, )
        Yay0_554460_Yay0 = .;
        BUILD_DIR/bin/Yay0/554460.Yay0.o(.data);
    SPLAT_END_SEG(data_554460, 0x5545C8)
    
    SPLAT_BEGIN_SEG(data_5545C8, 0x5545C8, 0x5545C8, )
        Yay0_5545C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5545C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5545C8, 0x5546B8)
    
    SPLAT_BEGIN_SEG(data_5546B8, 0x5546B8, 0x5546B8, )
        Yay0_5546B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5546B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5546B8, 0x554780)
    
    SPLAT_BEGIN_SEG(data_554780, 0x554780, 0x554780, )
        Yay0_554780_Yay0 = .;
        BUILD_DIR/bin/Yay0/554780.Yay0.o(.data);
    SPLAT_END_SEG(data_554780, 0x554868)
    
    SPLAT_BEGIN_SEG(data_554868, 0x554868, 0x554868, )
        Yay0_554868_Yay0 = .;
        BUILD_DIR/bin/Yay0/554868.Yay0.o(.data);
    SPLAT_END_SEG(data_554868, 0x554B20)
    
    SPLAT_BEGIN_SEG(data_554B20, 0x554B20, 0x554B20, )
        Yay0_554B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/554B20.Yay0.o(.data);
    SPLAT_END_SEG(data_554B20, 0x554DA8)
    
    SPLAT_BEGIN_SEG(data_554DA8, 0x554DA8, 0x554DA8, )
        Yay0_554DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/554DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_554DA8, 0x554FF0)
    
    SPLAT_BEGIN_SEG(data_554FF0, 0x554FF0, 0x554FF0, )
        Yay0_554FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/554FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_554FF0, 0x5551D0)
    
    SPLAT_BEGIN_SEG(data_5551D0, 0x5551D0, 0x5551D0, )
        Yay0_5551D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5551D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5551D0, 0x5553B0)
    
    SPLAT_BEGIN_SEG(data_5553B0, 0x5553B0, 0x5553B0, )
        Yay0_5553B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5553B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5553B0, 0x555590)
    
    SPLAT_BEGIN_SEG(data_555590, 0x555590, 0x555590, )
        Yay0_555590_Yay0 = .;
        BUILD_DIR/bin/Yay0/555590.Yay0.o(.data);
    SPLAT_END_SEG(data_555590, 0x5582B0)
    
    SPLAT_BEGIN_SEG(data_5582B0, 0x5582B0, 0x5582B0, )
        Yay0_5582B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5582B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5582B0, 0x5588D0)
    
    SPLAT_BEGIN_SEG(data_5588D0, 0x5588D0, 0x5588D0, )
        Yay0_5588D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5588D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5588D0, 0x558B70)
    
    SPLAT_BEGIN_SEG(data_558B70, 0x558B70, 0x558B70, )
        Yay0_558B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/558B70.Yay0.o(.data);
    SPLAT_END_SEG(data_558B70, 0x558E18)
    
    SPLAT_BEGIN_SEG(data_558E18, 0x558E18, 0x558E18, )
        Yay0_558E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/558E18.Yay0.o(.data);
    SPLAT_END_SEG(data_558E18, 0x558E70)
    
    SPLAT_BEGIN_SEG(data_558E70, 0x558E70, 0x558E70, )
        Yay0_558E70_Yay0 = .;
        BUILD_DIR/bin/Yay0/558E70.Yay0.o(.data);
    SPLAT_END_SEG(data_558E70, 0x55C268)
    
    SPLAT_BEGIN_SEG(data_55C268, 0x55C268, 0x55C268, )
        Yay0_55C268_Yay0 = .;
        BUILD_DIR/bin/Yay0/55C268.Yay0.o(.data);
    SPLAT_END_SEG(data_55C268, 0x55CF88)
    
    SPLAT_BEGIN_SEG(data_55CF88, 0x55CF88, 0x55CF88, )
        Yay0_55CF88_Yay0 = .;
        BUILD_DIR/bin/Yay0/55CF88.Yay0.o(.data);
    SPLAT_END_SEG(data_55CF88, 0x5635E0)
    
    SPLAT_BEGIN_SEG(data_5635E0, 0x5635E0, 0x5635E0, )
        Yay0_5635E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5635E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5635E0, 0x569C60)
    
    SPLAT_BEGIN_SEG(data_569C60, 0x569C60, 0x569C60, )
        Yay0_569C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/569C60.Yay0.o(.data);
    SPLAT_END_SEG(data_569C60, 0x569F88)
    
    SPLAT_BEGIN_SEG(data_569F88, 0x569F88, 0x569F88, )
        Yay0_569F88_Yay0 = .;
        BUILD_DIR/bin/Yay0/569F88.Yay0.o(.data);
    SPLAT_END_SEG(data_569F88, 0x56A2C0)
    
    SPLAT_BEGIN_SEG(data_56A2C0, 0x56A2C0, 0x56A2C0, )
        Yay0_56A2C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56A2C0.Yay0.o(.data);
    SPLAT_END_SEG(data_56A2C0, 0x56A5A8)
    
    SPLAT_BEGIN_SEG(data_56A5A8, 0x56A5A8, 0x56A5A8, )
        Yay0_56A5A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56A5A8.Yay0.o(.data);
    SPLAT_END_SEG(data_56A5A8, 0x56BAD0)
    
    SPLAT_BEGIN_SEG(data_56BAD0, 0x56BAD0, 0x56BAD0, )
        Yay0_56BAD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BAD0.Yay0.o(.data);
    SPLAT_END_SEG(data_56BAD0, 0x56BCD0)
    
    SPLAT_BEGIN_SEG(data_56BCD0, 0x56BCD0, 0x56BCD0, )
        Yay0_56BCD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BCD0.Yay0.o(.data);
    SPLAT_END_SEG(data_56BCD0, 0x56BD60)
    
    SPLAT_BEGIN_SEG(data_56BD60, 0x56BD60, 0x56BD60, )
        Yay0_56BD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BD60.Yay0.o(.data);
    SPLAT_END_SEG(data_56BD60, 0x56BDE8)
    
    SPLAT_BEGIN_SEG(data_56BDE8, 0x56BDE8, 0x56BDE8, )
        Yay0_56BDE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BDE8.Yay0.o(.data);
    SPLAT_END_SEG(data_56BDE8, 0x56BE20)
    
    SPLAT_BEGIN_SEG(data_56BE20, 0x56BE20, 0x56BE20, )
        Yay0_56BE20_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BE20.Yay0.o(.data);
    SPLAT_END_SEG(data_56BE20, 0x56BED8)
    
    SPLAT_BEGIN_SEG(data_56BED8, 0x56BED8, 0x56BED8, )
        Yay0_56BED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BED8.Yay0.o(.data);
    SPLAT_END_SEG(data_56BED8, 0x56BF88)
    
    SPLAT_BEGIN_SEG(data_56BF88, 0x56BF88, 0x56BF88, )
        Yay0_56BF88_Yay0 = .;
        BUILD_DIR/bin/Yay0/56BF88.Yay0.o(.data);
    SPLAT_END_SEG(data_56BF88, 0x56C0D8)
    
    SPLAT_BEGIN_SEG(data_56C0D8, 0x56C0D8, 0x56C0D8, )
        Yay0_56C0D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56C0D8.Yay0.o(.data);
    SPLAT_END_SEG(data_56C0D8, 0x56C558)
    
    SPLAT_BEGIN_SEG(data_56C558, 0x56C558, 0x56C558, )
        Yay0_56C558_Yay0 = .;
        BUILD_DIR/bin/Yay0/56C558.Yay0.o(.data);
    SPLAT_END_SEG(data_56C558, 0x56CC98)
    
    SPLAT_BEGIN_SEG(data_56CC98, 0x56CC98, 0x56CC98, )
        Yay0_56CC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/56CC98.Yay0.o(.data);
    SPLAT_END_SEG(data_56CC98, 0x56CEC8)
    
    SPLAT_BEGIN_SEG(data_56CEC8, 0x56CEC8, 0x56CEC8, )
        Yay0_56CEC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56CEC8.Yay0.o(.data);
    SPLAT_END_SEG(data_56CEC8, 0x56D0E8)
    
    SPLAT_BEGIN_SEG(data_56D0E8, 0x56D0E8, 0x56D0E8, )
        Yay0_56D0E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D0E8.Yay0.o(.data);
    SPLAT_END_SEG(data_56D0E8, 0x56D160)
    
    SPLAT_BEGIN_SEG(data_56D160, 0x56D160, 0x56D160, )
        Yay0_56D160_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D160.Yay0.o(.data);
    SPLAT_END_SEG(data_56D160, 0x56D290)
    
    SPLAT_BEGIN_SEG(data_56D290, 0x56D290, 0x56D290, )
        Yay0_56D290_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D290.Yay0.o(.data);
    SPLAT_END_SEG(data_56D290, 0x56D3C8)
    
    SPLAT_BEGIN_SEG(data_56D3C8, 0x56D3C8, 0x56D3C8, )
        Yay0_56D3C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D3C8.Yay0.o(.data);
    SPLAT_END_SEG(data_56D3C8, 0x56D4F8)
    
    SPLAT_BEGIN_SEG(data_56D4F8, 0x56D4F8, 0x56D4F8, )
        Yay0_56D4F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D4F8.Yay0.o(.data);
    SPLAT_END_SEG(data_56D4F8, 0x56D670)
    
    SPLAT_BEGIN_SEG(data_56D670, 0x56D670, 0x56D670, )
        Yay0_56D670_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D670.Yay0.o(.data);
    SPLAT_END_SEG(data_56D670, 0x56D990)
    
    SPLAT_BEGIN_SEG(data_56D990, 0x56D990, 0x56D990, )
        Yay0_56D990_Yay0 = .;
        BUILD_DIR/bin/Yay0/56D990.Yay0.o(.data);
    SPLAT_END_SEG(data_56D990, 0x56DCA8)
    
    SPLAT_BEGIN_SEG(data_56DCA8, 0x56DCA8, 0x56DCA8, )
        Yay0_56DCA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56DCA8.Yay0.o(.data);
    SPLAT_END_SEG(data_56DCA8, 0x56DDD8)
    
    SPLAT_BEGIN_SEG(data_56DDD8, 0x56DDD8, 0x56DDD8, )
        Yay0_56DDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56DDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_56DDD8, 0x56DE48)
    
    SPLAT_BEGIN_SEG(data_56DE48, 0x56DE48, 0x56DE48, )
        Yay0_56DE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/56DE48.Yay0.o(.data);
    SPLAT_END_SEG(data_56DE48, 0x56DED8)
    
    SPLAT_BEGIN_SEG(data_56DED8, 0x56DED8, 0x56DED8, )
        Yay0_56DED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56DED8.Yay0.o(.data);
    SPLAT_END_SEG(data_56DED8, 0x56DF88)
    
    SPLAT_BEGIN_SEG(data_56DF88, 0x56DF88, 0x56DF88, )
        Yay0_56DF88_Yay0 = .;
        BUILD_DIR/bin/Yay0/56DF88.Yay0.o(.data);
    SPLAT_END_SEG(data_56DF88, 0x56E0A0)
    
    SPLAT_BEGIN_SEG(data_56E0A0, 0x56E0A0, 0x56E0A0, )
        Yay0_56E0A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E0A0.Yay0.o(.data);
    SPLAT_END_SEG(data_56E0A0, 0x56E240)
    
    SPLAT_BEGIN_SEG(data_56E240, 0x56E240, 0x56E240, )
        Yay0_56E240_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E240.Yay0.o(.data);
    SPLAT_END_SEG(data_56E240, 0x56E398)
    
    SPLAT_BEGIN_SEG(data_56E398, 0x56E398, 0x56E398, )
        Yay0_56E398_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E398.Yay0.o(.data);
    SPLAT_END_SEG(data_56E398, 0x56E3E0)
    
    SPLAT_BEGIN_SEG(data_56E3E0, 0x56E3E0, 0x56E3E0, )
        Yay0_56E3E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E3E0.Yay0.o(.data);
    SPLAT_END_SEG(data_56E3E0, 0x56E450)
    
    SPLAT_BEGIN_SEG(data_56E450, 0x56E450, 0x56E450, )
        Yay0_56E450_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E450.Yay0.o(.data);
    SPLAT_END_SEG(data_56E450, 0x56E4A0)
    
    SPLAT_BEGIN_SEG(data_56E4A0, 0x56E4A0, 0x56E4A0, )
        Yay0_56E4A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E4A0.Yay0.o(.data);
    SPLAT_END_SEG(data_56E4A0, 0x56E508)
    
    SPLAT_BEGIN_SEG(data_56E508, 0x56E508, 0x56E508, )
        Yay0_56E508_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E508.Yay0.o(.data);
    SPLAT_END_SEG(data_56E508, 0x56E5E0)
    
    SPLAT_BEGIN_SEG(data_56E5E0, 0x56E5E0, 0x56E5E0, )
        Yay0_56E5E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E5E0.Yay0.o(.data);
    SPLAT_END_SEG(data_56E5E0, 0x56E648)
    
    SPLAT_BEGIN_SEG(data_56E648, 0x56E648, 0x56E648, )
        Yay0_56E648_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E648.Yay0.o(.data);
    SPLAT_END_SEG(data_56E648, 0x56E688)
    
    SPLAT_BEGIN_SEG(data_56E688, 0x56E688, 0x56E688, )
        Yay0_56E688_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E688.Yay0.o(.data);
    SPLAT_END_SEG(data_56E688, 0x56E708)
    
    SPLAT_BEGIN_SEG(data_56E708, 0x56E708, 0x56E708, )
        Yay0_56E708_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E708.Yay0.o(.data);
    SPLAT_END_SEG(data_56E708, 0x56E788)
    
    SPLAT_BEGIN_SEG(data_56E788, 0x56E788, 0x56E788, )
        Yay0_56E788_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E788.Yay0.o(.data);
    SPLAT_END_SEG(data_56E788, 0x56E7F0)
    
    SPLAT_BEGIN_SEG(data_56E7F0, 0x56E7F0, 0x56E7F0, )
        Yay0_56E7F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E7F0.Yay0.o(.data);
    SPLAT_END_SEG(data_56E7F0, 0x56E868)
    
    SPLAT_BEGIN_SEG(data_56E868, 0x56E868, 0x56E868, )
        Yay0_56E868_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E868.Yay0.o(.data);
    SPLAT_END_SEG(data_56E868, 0x56E8F0)
    
    SPLAT_BEGIN_SEG(data_56E8F0, 0x56E8F0, 0x56E8F0, )
        Yay0_56E8F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E8F0.Yay0.o(.data);
    SPLAT_END_SEG(data_56E8F0, 0x56E958)
    
    SPLAT_BEGIN_SEG(data_56E958, 0x56E958, 0x56E958, )
        Yay0_56E958_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E958.Yay0.o(.data);
    SPLAT_END_SEG(data_56E958, 0x56E9D8)
    
    SPLAT_BEGIN_SEG(data_56E9D8, 0x56E9D8, 0x56E9D8, )
        Yay0_56E9D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/56E9D8.Yay0.o(.data);
    SPLAT_END_SEG(data_56E9D8, 0x56EA58)
    
    SPLAT_BEGIN_SEG(data_56EA58, 0x56EA58, 0x56EA58, )
        Yay0_56EA58_Yay0 = .;
        BUILD_DIR/bin/Yay0/56EA58.Yay0.o(.data);
    SPLAT_END_SEG(data_56EA58, 0x56EDE0)
    
    SPLAT_BEGIN_SEG(data_56EDE0, 0x56EDE0, 0x56EDE0, )
        Yay0_56EDE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/56EDE0.Yay0.o(.data);
    SPLAT_END_SEG(data_56EDE0, 0x56EE28)
    
    SPLAT_BEGIN_SEG(data_56EE28, 0x56EE28, 0x56EE28, )
        Yay0_56EE28_Yay0 = .;
        BUILD_DIR/bin/Yay0/56EE28.Yay0.o(.data);
    SPLAT_END_SEG(data_56EE28, 0x5705D8)
    
    SPLAT_BEGIN_SEG(data_5705D8, 0x5705D8, 0x5705D8, )
        Yay0_5705D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5705D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5705D8, 0x5720A8)
    
    SPLAT_BEGIN_SEG(data_5720A8, 0x5720A8, 0x5720A8, )
        Yay0_5720A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5720A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5720A8, 0x573B78)
    
    SPLAT_BEGIN_SEG(data_573B78, 0x573B78, 0x573B78, )
        Yay0_573B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/573B78.Yay0.o(.data);
    SPLAT_END_SEG(data_573B78, 0x574B20)
    
    SPLAT_BEGIN_SEG(data_574B20, 0x574B20, 0x574B20, )
        Yay0_574B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/574B20.Yay0.o(.data);
    SPLAT_END_SEG(data_574B20, 0x5761C8)
    
    SPLAT_BEGIN_SEG(data_5761C8, 0x5761C8, 0x5761C8, )
        Yay0_5761C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5761C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5761C8, 0x57A3D8)
    
    SPLAT_BEGIN_SEG(data_57A3D8, 0x57A3D8, 0x57A3D8, )
        Yay0_57A3D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/57A3D8.Yay0.o(.data);
    SPLAT_END_SEG(data_57A3D8, 0x57A450)
    
    SPLAT_BEGIN_SEG(data_57A450, 0x57A450, 0x57A450, )
        Yay0_57A450_Yay0 = .;
        BUILD_DIR/bin/Yay0/57A450.Yay0.o(.data);
    SPLAT_END_SEG(data_57A450, 0x57A558)
    
    SPLAT_BEGIN_SEG(data_57A558, 0x57A558, 0x57A558, )
        Yay0_57A558_Yay0 = .;
        BUILD_DIR/bin/Yay0/57A558.Yay0.o(.data);
    SPLAT_END_SEG(data_57A558, 0x57B298)
    
    SPLAT_BEGIN_SEG(data_57B298, 0x57B298, 0x57B298, )
        Yay0_57B298_Yay0 = .;
        BUILD_DIR/bin/Yay0/57B298.Yay0.o(.data);
    SPLAT_END_SEG(data_57B298, 0x57B7F0)
    
    SPLAT_BEGIN_SEG(data_57B7F0, 0x57B7F0, 0x57B7F0, )
        Yay0_57B7F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/57B7F0.Yay0.o(.data);
    SPLAT_END_SEG(data_57B7F0, 0x57B870)
    
    SPLAT_BEGIN_SEG(data_57B870, 0x57B870, 0x57B870, )
        Yay0_57B870_Yay0 = .;
        BUILD_DIR/bin/Yay0/57B870.Yay0.o(.data);
    SPLAT_END_SEG(data_57B870, 0x57F040)
    
    SPLAT_BEGIN_SEG(data_57F040, 0x57F040, 0x57F040, )
        Yay0_57F040_Yay0 = .;
        BUILD_DIR/bin/Yay0/57F040.Yay0.o(.data);
    SPLAT_END_SEG(data_57F040, 0x57F498)
    
    SPLAT_BEGIN_SEG(data_57F498, 0x57F498, 0x57F498, )
        Yay0_57F498_Yay0 = .;
        BUILD_DIR/bin/Yay0/57F498.Yay0.o(.data);
    SPLAT_END_SEG(data_57F498, 0x5807D8)
    
    SPLAT_BEGIN_SEG(data_5807D8, 0x5807D8, 0x5807D8, )
        Yay0_5807D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5807D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5807D8, 0x580FD8)
    
    SPLAT_BEGIN_SEG(data_580FD8, 0x580FD8, 0x580FD8, )
        Yay0_580FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/580FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_580FD8, 0x5810B0)
    
    SPLAT_BEGIN_SEG(data_5810B0, 0x5810B0, 0x5810B0, )
        Yay0_5810B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5810B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5810B0, 0x581148)
    
    SPLAT_BEGIN_SEG(data_581148, 0x581148, 0x581148, )
        Yay0_581148_Yay0 = .;
        BUILD_DIR/bin/Yay0/581148.Yay0.o(.data);
    SPLAT_END_SEG(data_581148, 0x581198)
    
    SPLAT_BEGIN_SEG(data_581198, 0x581198, 0x581198, )
        Yay0_581198_Yay0 = .;
        BUILD_DIR/bin/Yay0/581198.Yay0.o(.data);
    SPLAT_END_SEG(data_581198, 0x5811E8)
    
    SPLAT_BEGIN_SEG(data_5811E8, 0x5811E8, 0x5811E8, )
        Yay0_5811E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5811E8.Yay0.o(.data);
    SPLAT_END_SEG(data_5811E8, 0x5812C8)
    
    SPLAT_BEGIN_SEG(data_5812C8, 0x5812C8, 0x5812C8, )
        Yay0_5812C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5812C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5812C8, 0x585860)
    
    SPLAT_BEGIN_SEG(data_585860, 0x585860, 0x585860, )
        Yay0_585860_Yay0 = .;
        BUILD_DIR/bin/Yay0/585860.Yay0.o(.data);
    SPLAT_END_SEG(data_585860, 0x585F50)
    
    SPLAT_BEGIN_SEG(data_585F50, 0x585F50, 0x585F50, )
        Yay0_585F50_Yay0 = .;
        BUILD_DIR/bin/Yay0/585F50.Yay0.o(.data);
    SPLAT_END_SEG(data_585F50, 0x586CE0)
    
    SPLAT_BEGIN_SEG(data_586CE0, 0x586CE0, 0x586CE0, )
        Yay0_586CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/586CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_586CE0, 0x589B50)
    
    SPLAT_BEGIN_SEG(data_589B50, 0x589B50, 0x589B50, )
        Yay0_589B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/589B50.Yay0.o(.data);
    SPLAT_END_SEG(data_589B50, 0x58A460)
    
    SPLAT_BEGIN_SEG(data_58A460, 0x58A460, 0x58A460, )
        Yay0_58A460_Yay0 = .;
        BUILD_DIR/bin/Yay0/58A460.Yay0.o(.data);
    SPLAT_END_SEG(data_58A460, 0x58A7B8)
    
    SPLAT_BEGIN_SEG(data_58A7B8, 0x58A7B8, 0x58A7B8, )
        Yay0_58A7B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/58A7B8.Yay0.o(.data);
    SPLAT_END_SEG(data_58A7B8, 0x58A9A0)
    
    SPLAT_BEGIN_SEG(data_58A9A0, 0x58A9A0, 0x58A9A0, )
        Yay0_58A9A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/58A9A0.Yay0.o(.data);
    SPLAT_END_SEG(data_58A9A0, 0x58ADC8)
    
    SPLAT_BEGIN_SEG(data_58ADC8, 0x58ADC8, 0x58ADC8, )
        Yay0_58ADC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/58ADC8.Yay0.o(.data);
    SPLAT_END_SEG(data_58ADC8, 0x58AE58)
    
    SPLAT_BEGIN_SEG(data_58AE58, 0x58AE58, 0x58AE58, )
        Yay0_58AE58_Yay0 = .;
        BUILD_DIR/bin/Yay0/58AE58.Yay0.o(.data);
    SPLAT_END_SEG(data_58AE58, 0x58AEC0)
    
    SPLAT_BEGIN_SEG(data_58AEC0, 0x58AEC0, 0x58AEC0, )
        Yay0_58AEC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/58AEC0.Yay0.o(.data);
    SPLAT_END_SEG(data_58AEC0, 0x58AF50)
    
    SPLAT_BEGIN_SEG(data_58AF50, 0x58AF50, 0x58AF50, )
        Yay0_58AF50_Yay0 = .;
        BUILD_DIR/bin/Yay0/58AF50.Yay0.o(.data);
    SPLAT_END_SEG(data_58AF50, 0x58AFE0)
    
    SPLAT_BEGIN_SEG(data_58AFE0, 0x58AFE0, 0x58AFE0, )
        Yay0_58AFE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/58AFE0.Yay0.o(.data);
    SPLAT_END_SEG(data_58AFE0, 0x58B010)
    
    SPLAT_BEGIN_SEG(data_58B010, 0x58B010, 0x58B010, )
        Yay0_58B010_Yay0 = .;
        BUILD_DIR/bin/Yay0/58B010.Yay0.o(.data);
    SPLAT_END_SEG(data_58B010, 0x58B040)
    
    SPLAT_BEGIN_SEG(data_58B040, 0x58B040, 0x58B040, )
        Yay0_58B040_Yay0 = .;
        BUILD_DIR/bin/Yay0/58B040.Yay0.o(.data);
    SPLAT_END_SEG(data_58B040, 0x58B070)
    
    SPLAT_BEGIN_SEG(data_58B070, 0x58B070, 0x58B070, )
        Yay0_58B070_Yay0 = .;
        BUILD_DIR/bin/Yay0/58B070.Yay0.o(.data);
    SPLAT_END_SEG(data_58B070, 0x58B0E8)
    
    SPLAT_BEGIN_SEG(data_58B0E8, 0x58B0E8, 0x58B0E8, )
        Yay0_58B0E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/58B0E8.Yay0.o(.data);
    SPLAT_END_SEG(data_58B0E8, 0x5921B0)
    
    SPLAT_BEGIN_SEG(data_5921B0, 0x5921B0, 0x5921B0, )
        Yay0_5921B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5921B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5921B0, 0x598188)
    
    SPLAT_BEGIN_SEG(data_598188, 0x598188, 0x598188, )
        Yay0_598188_Yay0 = .;
        BUILD_DIR/bin/Yay0/598188.Yay0.o(.data);
    SPLAT_END_SEG(data_598188, 0x598240)
    
    SPLAT_BEGIN_SEG(data_598240, 0x598240, 0x598240, )
        Yay0_598240_Yay0 = .;
        BUILD_DIR/bin/Yay0/598240.Yay0.o(.data);
    SPLAT_END_SEG(data_598240, 0x598338)
    
    SPLAT_BEGIN_SEG(data_598338, 0x598338, 0x598338, )
        Yay0_598338_Yay0 = .;
        BUILD_DIR/bin/Yay0/598338.Yay0.o(.data);
    SPLAT_END_SEG(data_598338, 0x598418)
    
    SPLAT_BEGIN_SEG(data_598418, 0x598418, 0x598418, )
        Yay0_598418_Yay0 = .;
        BUILD_DIR/bin/Yay0/598418.Yay0.o(.data);
    SPLAT_END_SEG(data_598418, 0x5985E0)
    
    SPLAT_BEGIN_SEG(data_5985E0, 0x5985E0, 0x5985E0, )
        Yay0_5985E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5985E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5985E0, 0x598860)
    
    SPLAT_BEGIN_SEG(data_598860, 0x598860, 0x598860, )
        Yay0_598860_Yay0 = .;
        BUILD_DIR/bin/Yay0/598860.Yay0.o(.data);
    SPLAT_END_SEG(data_598860, 0x598918)
    
    SPLAT_BEGIN_SEG(data_598918, 0x598918, 0x598918, )
        Yay0_598918_Yay0 = .;
        BUILD_DIR/bin/Yay0/598918.Yay0.o(.data);
    SPLAT_END_SEG(data_598918, 0x599878)
    
    SPLAT_BEGIN_SEG(data_599878, 0x599878, 0x599878, )
        Yay0_599878_Yay0 = .;
        BUILD_DIR/bin/Yay0/599878.Yay0.o(.data);
    SPLAT_END_SEG(data_599878, 0x599AF0)
    
    SPLAT_BEGIN_SEG(data_599AF0, 0x599AF0, 0x599AF0, )
        Yay0_599AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/599AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_599AF0, 0x599BB0)
    
    SPLAT_BEGIN_SEG(data_599BB0, 0x599BB0, 0x599BB0, )
        Yay0_599BB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/599BB0.Yay0.o(.data);
    SPLAT_END_SEG(data_599BB0, 0x59C1E8)
    
    SPLAT_BEGIN_SEG(data_59C1E8, 0x59C1E8, 0x59C1E8, )
        Yay0_59C1E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/59C1E8.Yay0.o(.data);
    SPLAT_END_SEG(data_59C1E8, 0x59C700)
    
    SPLAT_BEGIN_SEG(data_59C700, 0x59C700, 0x59C700, )
        Yay0_59C700_Yay0 = .;
        BUILD_DIR/bin/Yay0/59C700.Yay0.o(.data);
    SPLAT_END_SEG(data_59C700, 0x59CE48)
    
    SPLAT_BEGIN_SEG(data_59CE48, 0x59CE48, 0x59CE48, )
        Yay0_59CE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/59CE48.Yay0.o(.data);
    SPLAT_END_SEG(data_59CE48, 0x59D2B0)
    
    SPLAT_BEGIN_SEG(data_59D2B0, 0x59D2B0, 0x59D2B0, )
        Yay0_59D2B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/59D2B0.Yay0.o(.data);
    SPLAT_END_SEG(data_59D2B0, 0x59DB50)
    
    SPLAT_BEGIN_SEG(data_59DB50, 0x59DB50, 0x59DB50, )
        Yay0_59DB50_Yay0 = .;
        BUILD_DIR/bin/Yay0/59DB50.Yay0.o(.data);
    SPLAT_END_SEG(data_59DB50, 0x59E0B0)
    
    SPLAT_BEGIN_SEG(data_59E0B0, 0x59E0B0, 0x59E0B0, )
        Yay0_59E0B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/59E0B0.Yay0.o(.data);
    SPLAT_END_SEG(data_59E0B0, 0x59E320)
    
    SPLAT_BEGIN_SEG(data_59E320, 0x59E320, 0x59E320, )
        Yay0_59E320_Yay0 = .;
        BUILD_DIR/bin/Yay0/59E320.Yay0.o(.data);
    SPLAT_END_SEG(data_59E320, 0x59E810)
    
    SPLAT_BEGIN_SEG(data_59E810, 0x59E810, 0x59E810, )
        Yay0_59E810_Yay0 = .;
        BUILD_DIR/bin/Yay0/59E810.Yay0.o(.data);
    SPLAT_END_SEG(data_59E810, 0x59EBF8)
    
    SPLAT_BEGIN_SEG(data_59EBF8, 0x59EBF8, 0x59EBF8, )
        Yay0_59EBF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/59EBF8.Yay0.o(.data);
    SPLAT_END_SEG(data_59EBF8, 0x59EE30)
    
    SPLAT_BEGIN_SEG(data_59EE30, 0x59EE30, 0x59EE30, )
        Yay0_59EE30_Yay0 = .;
        BUILD_DIR/bin/Yay0/59EE30.Yay0.o(.data);
    SPLAT_END_SEG(data_59EE30, 0x5A3650)
    
    SPLAT_BEGIN_SEG(data_5A3650, 0x5A3650, 0x5A3650, )
        Yay0_5A3650_Yay0 = .;
        BUILD_DIR/bin/Yay0/5A3650.Yay0.o(.data);
    SPLAT_END_SEG(data_5A3650, 0x5AA538)
    
    SPLAT_BEGIN_SEG(data_5AA538, 0x5AA538, 0x5AA538, )
        Yay0_5AA538_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AA538.Yay0.o(.data);
    SPLAT_END_SEG(data_5AA538, 0x5AA9C8)
    
    SPLAT_BEGIN_SEG(data_5AA9C8, 0x5AA9C8, 0x5AA9C8, )
        Yay0_5AA9C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AA9C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5AA9C8, 0x5AABD0)
    
    SPLAT_BEGIN_SEG(data_5AABD0, 0x5AABD0, 0x5AABD0, )
        Yay0_5AABD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AABD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5AABD0, 0x5AADE0)
    
    SPLAT_BEGIN_SEG(data_5AADE0, 0x5AADE0, 0x5AADE0, )
        Yay0_5AADE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AADE0.Yay0.o(.data);
    SPLAT_END_SEG(data_5AADE0, 0x5AC6B8)
    
    SPLAT_BEGIN_SEG(data_5AC6B8, 0x5AC6B8, 0x5AC6B8, )
        Yay0_5AC6B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AC6B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5AC6B8, 0x5ACB30)
    
    SPLAT_BEGIN_SEG(data_5ACB30, 0x5ACB30, 0x5ACB30, )
        Yay0_5ACB30_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ACB30.Yay0.o(.data);
    SPLAT_END_SEG(data_5ACB30, 0x5ACED8)
    
    SPLAT_BEGIN_SEG(data_5ACED8, 0x5ACED8, 0x5ACED8, )
        Yay0_5ACED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ACED8.Yay0.o(.data);
    SPLAT_END_SEG(data_5ACED8, 0x5AD028)
    
    SPLAT_BEGIN_SEG(data_5AD028, 0x5AD028, 0x5AD028, )
        Yay0_5AD028_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AD028.Yay0.o(.data);
    SPLAT_END_SEG(data_5AD028, 0x5ADDA0)
    
    SPLAT_BEGIN_SEG(data_5ADDA0, 0x5ADDA0, 0x5ADDA0, )
        Yay0_5ADDA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ADDA0.Yay0.o(.data);
    SPLAT_END_SEG(data_5ADDA0, 0x5AECA0)
    
    SPLAT_BEGIN_SEG(data_5AECA0, 0x5AECA0, 0x5AECA0, )
        Yay0_5AECA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AECA0.Yay0.o(.data);
    SPLAT_END_SEG(data_5AECA0, 0x5AED70)
    
    SPLAT_BEGIN_SEG(data_5AED70, 0x5AED70, 0x5AED70, )
        Yay0_5AED70_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AED70.Yay0.o(.data);
    SPLAT_END_SEG(data_5AED70, 0x5AF060)
    
    SPLAT_BEGIN_SEG(data_5AF060, 0x5AF060, 0x5AF060, )
        Yay0_5AF060_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AF060.Yay0.o(.data);
    SPLAT_END_SEG(data_5AF060, 0x5AF4B0)
    
    SPLAT_BEGIN_SEG(data_5AF4B0, 0x5AF4B0, 0x5AF4B0, )
        Yay0_5AF4B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AF4B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5AF4B0, 0x5AFE38)
    
    SPLAT_BEGIN_SEG(data_5AFE38, 0x5AFE38, 0x5AFE38, )
        Yay0_5AFE38_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AFE38.Yay0.o(.data);
    SPLAT_END_SEG(data_5AFE38, 0x5AFF78)
    
    SPLAT_BEGIN_SEG(data_5AFF78, 0x5AFF78, 0x5AFF78, )
        Yay0_5AFF78_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AFF78.Yay0.o(.data);
    SPLAT_END_SEG(data_5AFF78, 0x5AFFF0)
    
    SPLAT_BEGIN_SEG(data_5AFFF0, 0x5AFFF0, 0x5AFFF0, )
        Yay0_5AFFF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5AFFF0.Yay0.o(.data);
    SPLAT_END_SEG(data_5AFFF0, 0x5B0070)
    
    SPLAT_BEGIN_SEG(data_5B0070, 0x5B0070, 0x5B0070, )
        Yay0_5B0070_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0070.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0070, 0x5B00F0)
    
    SPLAT_BEGIN_SEG(data_5B00F0, 0x5B00F0, 0x5B00F0, )
        Yay0_5B00F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B00F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5B00F0, 0x5B02F8)
    
    SPLAT_BEGIN_SEG(data_5B02F8, 0x5B02F8, 0x5B02F8, )
        Yay0_5B02F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B02F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5B02F8, 0x5B0348)
    
    SPLAT_BEGIN_SEG(data_5B0348, 0x5B0348, 0x5B0348, )
        Yay0_5B0348_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0348.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0348, 0x5B0390)
    
    SPLAT_BEGIN_SEG(data_5B0390, 0x5B0390, 0x5B0390, )
        Yay0_5B0390_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0390.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0390, 0x5B03F0)
    
    SPLAT_BEGIN_SEG(data_5B03F0, 0x5B03F0, 0x5B03F0, )
        Yay0_5B03F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B03F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5B03F0, 0x5B0450)
    
    SPLAT_BEGIN_SEG(data_5B0450, 0x5B0450, 0x5B0450, )
        Yay0_5B0450_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0450.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0450, 0x5B04A8)
    
    SPLAT_BEGIN_SEG(data_5B04A8, 0x5B04A8, 0x5B04A8, )
        Yay0_5B04A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B04A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5B04A8, 0x5B0508)
    
    SPLAT_BEGIN_SEG(data_5B0508, 0x5B0508, 0x5B0508, )
        Yay0_5B0508_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0508.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0508, 0x5B0560)
    
    SPLAT_BEGIN_SEG(data_5B0560, 0x5B0560, 0x5B0560, )
        Yay0_5B0560_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0560.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0560, 0x5B05B8)
    
    SPLAT_BEGIN_SEG(data_5B05B8, 0x5B05B8, 0x5B05B8, )
        Yay0_5B05B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B05B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5B05B8, 0x5B0610)
    
    SPLAT_BEGIN_SEG(data_5B0610, 0x5B0610, 0x5B0610, )
        Yay0_5B0610_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0610.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0610, 0x5B0670)
    
    SPLAT_BEGIN_SEG(data_5B0670, 0x5B0670, 0x5B0670, )
        Yay0_5B0670_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B0670.Yay0.o(.data);
    SPLAT_END_SEG(data_5B0670, 0x5B6C18)
    
    SPLAT_BEGIN_SEG(data_5B6C18, 0x5B6C18, 0x5B6C18, )
        Yay0_5B6C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B6C18.Yay0.o(.data);
    SPLAT_END_SEG(data_5B6C18, 0x5B7060)
    
    SPLAT_BEGIN_SEG(data_5B7060, 0x5B7060, 0x5B7060, )
        Yay0_5B7060_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B7060.Yay0.o(.data);
    SPLAT_END_SEG(data_5B7060, 0x5B77F8)
    
    SPLAT_BEGIN_SEG(data_5B77F8, 0x5B77F8, 0x5B77F8, )
        Yay0_5B77F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B77F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5B77F8, 0x5B7980)
    
    SPLAT_BEGIN_SEG(data_5B7980, 0x5B7980, 0x5B7980, )
        Yay0_5B7980_Yay0 = .;
        BUILD_DIR/bin/Yay0/5B7980.Yay0.o(.data);
    SPLAT_END_SEG(data_5B7980, 0x5BDBE0)
    
    SPLAT_BEGIN_SEG(data_5BDBE0, 0x5BDBE0, 0x5BDBE0, )
        Yay0_5BDBE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5BDBE0.Yay0.o(.data);
    SPLAT_END_SEG(data_5BDBE0, 0x5C3E28)
    
    SPLAT_BEGIN_SEG(data_5C3E28, 0x5C3E28, 0x5C3E28, )
        Yay0_5C3E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5C3E28.Yay0.o(.data);
    SPLAT_END_SEG(data_5C3E28, 0x5CA4A8)
    
    SPLAT_BEGIN_SEG(data_5CA4A8, 0x5CA4A8, 0x5CA4A8, )
        Yay0_5CA4A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5CA4A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5CA4A8, 0x5D0258)
    
    SPLAT_BEGIN_SEG(data_5D0258, 0x5D0258, 0x5D0258, )
        Yay0_5D0258_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D0258.Yay0.o(.data);
    SPLAT_END_SEG(data_5D0258, 0x5D06D0)
    
    SPLAT_BEGIN_SEG(data_5D06D0, 0x5D06D0, 0x5D06D0, )
        Yay0_5D06D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D06D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D06D0, 0x5D0C38)
    
    SPLAT_BEGIN_SEG(data_5D0C38, 0x5D0C38, 0x5D0C38, )
        Yay0_5D0C38_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D0C38.Yay0.o(.data);
    SPLAT_END_SEG(data_5D0C38, 0x5D0CB0)
    
    SPLAT_BEGIN_SEG(data_5D0CB0, 0x5D0CB0, 0x5D0CB0, )
        Yay0_5D0CB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D0CB0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D0CB0, 0x5D1128)
    
    SPLAT_BEGIN_SEG(data_5D1128, 0x5D1128, 0x5D1128, )
        Yay0_5D1128_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D1128.Yay0.o(.data);
    SPLAT_END_SEG(data_5D1128, 0x5D1690)
    
    SPLAT_BEGIN_SEG(data_5D1690, 0x5D1690, 0x5D1690, )
        Yay0_5D1690_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D1690.Yay0.o(.data);
    SPLAT_END_SEG(data_5D1690, 0x5D1708)
    
    SPLAT_BEGIN_SEG(data_5D1708, 0x5D1708, 0x5D1708, )
        Yay0_5D1708_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D1708.Yay0.o(.data);
    SPLAT_END_SEG(data_5D1708, 0x5D1B80)
    
    SPLAT_BEGIN_SEG(data_5D1B80, 0x5D1B80, 0x5D1B80, )
        Yay0_5D1B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D1B80.Yay0.o(.data);
    SPLAT_END_SEG(data_5D1B80, 0x5D20E8)
    
    SPLAT_BEGIN_SEG(data_5D20E8, 0x5D20E8, 0x5D20E8, )
        Yay0_5D20E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D20E8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D20E8, 0x5D2160)
    
    SPLAT_BEGIN_SEG(data_5D2160, 0x5D2160, 0x5D2160, )
        Yay0_5D2160_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D2160.Yay0.o(.data);
    SPLAT_END_SEG(data_5D2160, 0x5D25D8)
    
    SPLAT_BEGIN_SEG(data_5D25D8, 0x5D25D8, 0x5D25D8, )
        Yay0_5D25D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D25D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D25D8, 0x5D2B40)
    
    SPLAT_BEGIN_SEG(data_5D2B40, 0x5D2B40, 0x5D2B40, )
        Yay0_5D2B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D2B40.Yay0.o(.data);
    SPLAT_END_SEG(data_5D2B40, 0x5D2BB8)
    
    SPLAT_BEGIN_SEG(data_5D2BB8, 0x5D2BB8, 0x5D2BB8, )
        Yay0_5D2BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D2BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D2BB8, 0x5D3030)
    
    SPLAT_BEGIN_SEG(data_5D3030, 0x5D3030, 0x5D3030, )
        Yay0_5D3030_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D3030.Yay0.o(.data);
    SPLAT_END_SEG(data_5D3030, 0x5D3598)
    
    SPLAT_BEGIN_SEG(data_5D3598, 0x5D3598, 0x5D3598, )
        Yay0_5D3598_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D3598.Yay0.o(.data);
    SPLAT_END_SEG(data_5D3598, 0x5D3610)
    
    SPLAT_BEGIN_SEG(data_5D3610, 0x5D3610, 0x5D3610, )
        Yay0_5D3610_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D3610.Yay0.o(.data);
    SPLAT_END_SEG(data_5D3610, 0x5D39F0)
    
    SPLAT_BEGIN_SEG(data_5D39F0, 0x5D39F0, 0x5D39F0, )
        Yay0_5D39F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D39F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D39F0, 0x5D3EF8)
    
    SPLAT_BEGIN_SEG(data_5D3EF8, 0x5D3EF8, 0x5D3EF8, )
        Yay0_5D3EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D3EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D3EF8, 0x5D4518)
    
    SPLAT_BEGIN_SEG(data_5D4518, 0x5D4518, 0x5D4518, )
        Yay0_5D4518_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D4518.Yay0.o(.data);
    SPLAT_END_SEG(data_5D4518, 0x5D4730)
    
    SPLAT_BEGIN_SEG(data_5D4730, 0x5D4730, 0x5D4730, )
        Yay0_5D4730_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D4730.Yay0.o(.data);
    SPLAT_END_SEG(data_5D4730, 0x5D48E0)
    
    SPLAT_BEGIN_SEG(data_5D48E0, 0x5D48E0, 0x5D48E0, )
        Yay0_5D48E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D48E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D48E0, 0x5D4AF8)
    
    SPLAT_BEGIN_SEG(data_5D4AF8, 0x5D4AF8, 0x5D4AF8, )
        Yay0_5D4AF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D4AF8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D4AF8, 0x5D4CA0)
    
    SPLAT_BEGIN_SEG(data_5D4CA0, 0x5D4CA0, 0x5D4CA0, )
        Yay0_5D4CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D4CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D4CA0, 0x5D4E30)
    
    SPLAT_BEGIN_SEG(data_5D4E30, 0x5D4E30, 0x5D4E30, )
        Yay0_5D4E30_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D4E30.Yay0.o(.data);
    SPLAT_END_SEG(data_5D4E30, 0x5D4F98)
    
    SPLAT_BEGIN_SEG(data_5D4F98, 0x5D4F98, 0x5D4F98, )
        Yay0_5D4F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D4F98.Yay0.o(.data);
    SPLAT_END_SEG(data_5D4F98, 0x5D5238)
    
    SPLAT_BEGIN_SEG(data_5D5238, 0x5D5238, 0x5D5238, )
        Yay0_5D5238_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5238.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5238, 0x5D53E0)
    
    SPLAT_BEGIN_SEG(data_5D53E0, 0x5D53E0, 0x5D53E0, )
        Yay0_5D53E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D53E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D53E0, 0x5D5518)
    
    SPLAT_BEGIN_SEG(data_5D5518, 0x5D5518, 0x5D5518, )
        Yay0_5D5518_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5518.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5518, 0x5D55D0)
    
    SPLAT_BEGIN_SEG(data_5D55D0, 0x5D55D0, 0x5D55D0, )
        Yay0_5D55D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D55D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D55D0, 0x5D5778)
    
    SPLAT_BEGIN_SEG(data_5D5778, 0x5D5778, 0x5D5778, )
        Yay0_5D5778_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5778.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5778, 0x5D58D0)
    
    SPLAT_BEGIN_SEG(data_5D58D0, 0x5D58D0, 0x5D58D0, )
        Yay0_5D58D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D58D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D58D0, 0x5D5990)
    
    SPLAT_BEGIN_SEG(data_5D5990, 0x5D5990, 0x5D5990, )
        Yay0_5D5990_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5990.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5990, 0x5D5B38)
    
    SPLAT_BEGIN_SEG(data_5D5B38, 0x5D5B38, 0x5D5B38, )
        Yay0_5D5B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5B38.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5B38, 0x5D5CA0)
    
    SPLAT_BEGIN_SEG(data_5D5CA0, 0x5D5CA0, 0x5D5CA0, )
        Yay0_5D5CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5CA0, 0x5D5D60)
    
    SPLAT_BEGIN_SEG(data_5D5D60, 0x5D5D60, 0x5D5D60, )
        Yay0_5D5D60_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5D60.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5D60, 0x5D5E28)
    
    SPLAT_BEGIN_SEG(data_5D5E28, 0x5D5E28, 0x5D5E28, )
        Yay0_5D5E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D5E28.Yay0.o(.data);
    SPLAT_END_SEG(data_5D5E28, 0x5D6020)
    
    SPLAT_BEGIN_SEG(data_5D6020, 0x5D6020, 0x5D6020, )
        Yay0_5D6020_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D6020.Yay0.o(.data);
    SPLAT_END_SEG(data_5D6020, 0x5D60D0)
    
    SPLAT_BEGIN_SEG(data_5D60D0, 0x5D60D0, 0x5D60D0, )
        Yay0_5D60D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D60D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D60D0, 0x5D6268)
    
    SPLAT_BEGIN_SEG(data_5D6268, 0x5D6268, 0x5D6268, )
        Yay0_5D6268_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D6268.Yay0.o(.data);
    SPLAT_END_SEG(data_5D6268, 0x5D64A8)
    
    SPLAT_BEGIN_SEG(data_5D64A8, 0x5D64A8, 0x5D64A8, )
        Yay0_5D64A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D64A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D64A8, 0x5D6568)
    
    SPLAT_BEGIN_SEG(data_5D6568, 0x5D6568, 0x5D6568, )
        Yay0_5D6568_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D6568.Yay0.o(.data);
    SPLAT_END_SEG(data_5D6568, 0x5D67E8)
    
    SPLAT_BEGIN_SEG(data_5D67E8, 0x5D67E8, 0x5D67E8, )
        Yay0_5D67E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D67E8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D67E8, 0x5D6A88)
    
    SPLAT_BEGIN_SEG(data_5D6A88, 0x5D6A88, 0x5D6A88, )
        Yay0_5D6A88_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D6A88.Yay0.o(.data);
    SPLAT_END_SEG(data_5D6A88, 0x5D6D10)
    
    SPLAT_BEGIN_SEG(data_5D6D10, 0x5D6D10, 0x5D6D10, )
        Yay0_5D6D10_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D6D10.Yay0.o(.data);
    SPLAT_END_SEG(data_5D6D10, 0x5D7040)
    
    SPLAT_BEGIN_SEG(data_5D7040, 0x5D7040, 0x5D7040, )
        Yay0_5D7040_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D7040.Yay0.o(.data);
    SPLAT_END_SEG(data_5D7040, 0x5D7280)
    
    SPLAT_BEGIN_SEG(data_5D7280, 0x5D7280, 0x5D7280, )
        Yay0_5D7280_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D7280.Yay0.o(.data);
    SPLAT_END_SEG(data_5D7280, 0x5D7518)
    
    SPLAT_BEGIN_SEG(data_5D7518, 0x5D7518, 0x5D7518, )
        Yay0_5D7518_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D7518.Yay0.o(.data);
    SPLAT_END_SEG(data_5D7518, 0x5D7950)
    
    SPLAT_BEGIN_SEG(data_5D7950, 0x5D7950, 0x5D7950, )
        Yay0_5D7950_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D7950.Yay0.o(.data);
    SPLAT_END_SEG(data_5D7950, 0x5D7D68)
    
    SPLAT_BEGIN_SEG(data_5D7D68, 0x5D7D68, 0x5D7D68, )
        Yay0_5D7D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D7D68.Yay0.o(.data);
    SPLAT_END_SEG(data_5D7D68, 0x5D81A8)
    
    SPLAT_BEGIN_SEG(data_5D81A8, 0x5D81A8, 0x5D81A8, )
        Yay0_5D81A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D81A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D81A8, 0x5D85B0)
    
    SPLAT_BEGIN_SEG(data_5D85B0, 0x5D85B0, 0x5D85B0, )
        Yay0_5D85B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D85B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D85B0, 0x5D89F0)
    
    SPLAT_BEGIN_SEG(data_5D89F0, 0x5D89F0, 0x5D89F0, )
        Yay0_5D89F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D89F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5D89F0, 0x5D8B20)
    
    SPLAT_BEGIN_SEG(data_5D8B20, 0x5D8B20, 0x5D8B20, )
        Yay0_5D8B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D8B20.Yay0.o(.data);
    SPLAT_END_SEG(data_5D8B20, 0x5D8CE8)
    
    SPLAT_BEGIN_SEG(data_5D8CE8, 0x5D8CE8, 0x5D8CE8, )
        Yay0_5D8CE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D8CE8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D8CE8, 0x5D8FE8)
    
    SPLAT_BEGIN_SEG(data_5D8FE8, 0x5D8FE8, 0x5D8FE8, )
        Yay0_5D8FE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D8FE8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D8FE8, 0x5D9748)
    
    SPLAT_BEGIN_SEG(data_5D9748, 0x5D9748, 0x5D9748, )
        Yay0_5D9748_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D9748.Yay0.o(.data);
    SPLAT_END_SEG(data_5D9748, 0x5D9BB8)
    
    SPLAT_BEGIN_SEG(data_5D9BB8, 0x5D9BB8, 0x5D9BB8, )
        Yay0_5D9BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D9BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D9BB8, 0x5D9CD8)
    
    SPLAT_BEGIN_SEG(data_5D9CD8, 0x5D9CD8, 0x5D9CD8, )
        Yay0_5D9CD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D9CD8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D9CD8, 0x5D9D70)
    
    SPLAT_BEGIN_SEG(data_5D9D70, 0x5D9D70, 0x5D9D70, )
        Yay0_5D9D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D9D70.Yay0.o(.data);
    SPLAT_END_SEG(data_5D9D70, 0x5D9E98)
    
    SPLAT_BEGIN_SEG(data_5D9E98, 0x5D9E98, 0x5D9E98, )
        Yay0_5D9E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D9E98.Yay0.o(.data);
    SPLAT_END_SEG(data_5D9E98, 0x5D9FC8)
    
    SPLAT_BEGIN_SEG(data_5D9FC8, 0x5D9FC8, 0x5D9FC8, )
        Yay0_5D9FC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5D9FC8.Yay0.o(.data);
    SPLAT_END_SEG(data_5D9FC8, 0x5DA0C0)
    
    SPLAT_BEGIN_SEG(data_5DA0C0, 0x5DA0C0, 0x5DA0C0, )
        Yay0_5DA0C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DA0C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DA0C0, 0x5DA1F0)
    
    SPLAT_BEGIN_SEG(data_5DA1F0, 0x5DA1F0, 0x5DA1F0, )
        Yay0_5DA1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DA1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DA1F0, 0x5DA278)
    
    SPLAT_BEGIN_SEG(data_5DA278, 0x5DA278, 0x5DA278, )
        Yay0_5DA278_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DA278.Yay0.o(.data);
    SPLAT_END_SEG(data_5DA278, 0x5DA2E8)
    
    SPLAT_BEGIN_SEG(data_5DA2E8, 0x5DA2E8, 0x5DA2E8, )
        Yay0_5DA2E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DA2E8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DA2E8, 0x5DA340)
    
    SPLAT_BEGIN_SEG(data_5DA340, 0x5DA340, 0x5DA340, )
        Yay0_5DA340_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DA340.Yay0.o(.data);
    SPLAT_END_SEG(data_5DA340, 0x5DA588)
    
    SPLAT_BEGIN_SEG(data_5DA588, 0x5DA588, 0x5DA588, )
        Yay0_5DA588_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DA588.Yay0.o(.data);
    SPLAT_END_SEG(data_5DA588, 0x5DAB58)
    
    SPLAT_BEGIN_SEG(data_5DAB58, 0x5DAB58, 0x5DAB58, )
        Yay0_5DAB58_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAB58.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAB58, 0x5DACD0)
    
    SPLAT_BEGIN_SEG(data_5DACD0, 0x5DACD0, 0x5DACD0, )
        Yay0_5DACD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DACD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DACD0, 0x5DAD60)
    
    SPLAT_BEGIN_SEG(data_5DAD60, 0x5DAD60, 0x5DAD60, )
        Yay0_5DAD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAD60.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAD60, 0x5DADB8)
    
    SPLAT_BEGIN_SEG(data_5DADB8, 0x5DADB8, 0x5DADB8, )
        Yay0_5DADB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DADB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DADB8, 0x5DADF0)
    
    SPLAT_BEGIN_SEG(data_5DADF0, 0x5DADF0, 0x5DADF0, )
        Yay0_5DADF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DADF0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DADF0, 0x5DAE48)
    
    SPLAT_BEGIN_SEG(data_5DAE48, 0x5DAE48, 0x5DAE48, )
        Yay0_5DAE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAE48.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAE48, 0x5DAE90)
    
    SPLAT_BEGIN_SEG(data_5DAE90, 0x5DAE90, 0x5DAE90, )
        Yay0_5DAE90_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAE90.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAE90, 0x5DAEE8)
    
    SPLAT_BEGIN_SEG(data_5DAEE8, 0x5DAEE8, 0x5DAEE8, )
        Yay0_5DAEE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAEE8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAEE8, 0x5DAF40)
    
    SPLAT_BEGIN_SEG(data_5DAF40, 0x5DAF40, 0x5DAF40, )
        Yay0_5DAF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAF40.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAF40, 0x5DAF98)
    
    SPLAT_BEGIN_SEG(data_5DAF98, 0x5DAF98, 0x5DAF98, )
        Yay0_5DAF98_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAF98.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAF98, 0x5DAFE8)
    
    SPLAT_BEGIN_SEG(data_5DAFE8, 0x5DAFE8, 0x5DAFE8, )
        Yay0_5DAFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DAFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DAFE8, 0x5DB038)
    
    SPLAT_BEGIN_SEG(data_5DB038, 0x5DB038, 0x5DB038, )
        Yay0_5DB038_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB038.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB038, 0x5DB090)
    
    SPLAT_BEGIN_SEG(data_5DB090, 0x5DB090, 0x5DB090, )
        Yay0_5DB090_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB090.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB090, 0x5DB0C8)
    
    SPLAT_BEGIN_SEG(data_5DB0C8, 0x5DB0C8, 0x5DB0C8, )
        Yay0_5DB0C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB0C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB0C8, 0x5DB158)
    
    SPLAT_BEGIN_SEG(data_5DB158, 0x5DB158, 0x5DB158, )
        Yay0_5DB158_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB158.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB158, 0x5DB1A8)
    
    SPLAT_BEGIN_SEG(data_5DB1A8, 0x5DB1A8, 0x5DB1A8, )
        Yay0_5DB1A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB1A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB1A8, 0x5DB1F8)
    
    SPLAT_BEGIN_SEG(data_5DB1F8, 0x5DB1F8, 0x5DB1F8, )
        Yay0_5DB1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB1F8, 0x5DB260)
    
    SPLAT_BEGIN_SEG(data_5DB260, 0x5DB260, 0x5DB260, )
        Yay0_5DB260_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB260.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB260, 0x5DB290)
    
    SPLAT_BEGIN_SEG(data_5DB290, 0x5DB290, 0x5DB290, )
        Yay0_5DB290_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB290.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB290, 0x5DB2C0)
    
    SPLAT_BEGIN_SEG(data_5DB2C0, 0x5DB2C0, 0x5DB2C0, )
        Yay0_5DB2C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB2C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB2C0, 0x5DB328)
    
    SPLAT_BEGIN_SEG(data_5DB328, 0x5DB328, 0x5DB328, )
        Yay0_5DB328_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB328.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB328, 0x5DB358)
    
    SPLAT_BEGIN_SEG(data_5DB358, 0x5DB358, 0x5DB358, )
        Yay0_5DB358_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB358.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB358, 0x5DB388)
    
    SPLAT_BEGIN_SEG(data_5DB388, 0x5DB388, 0x5DB388, )
        Yay0_5DB388_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB388.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB388, 0x5DB3B8)
    
    SPLAT_BEGIN_SEG(data_5DB3B8, 0x5DB3B8, 0x5DB3B8, )
        Yay0_5DB3B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB3B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB3B8, 0x5DB3E8)
    
    SPLAT_BEGIN_SEG(data_5DB3E8, 0x5DB3E8, 0x5DB3E8, )
        Yay0_5DB3E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB3E8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB3E8, 0x5DB4B0)
    
    SPLAT_BEGIN_SEG(data_5DB4B0, 0x5DB4B0, 0x5DB4B0, )
        Yay0_5DB4B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DB4B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DB4B0, 0x5DCDD8)
    
    SPLAT_BEGIN_SEG(data_5DCDD8, 0x5DCDD8, 0x5DCDD8, )
        Yay0_5DCDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DCDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DCDD8, 0x5DD028)
    
    SPLAT_BEGIN_SEG(data_5DD028, 0x5DD028, 0x5DD028, )
        Yay0_5DD028_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD028.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD028, 0x5DD078)
    
    SPLAT_BEGIN_SEG(data_5DD078, 0x5DD078, 0x5DD078, )
        Yay0_5DD078_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD078.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD078, 0x5DD0D0)
    
    SPLAT_BEGIN_SEG(data_5DD0D0, 0x5DD0D0, 0x5DD0D0, )
        Yay0_5DD0D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD0D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD0D0, 0x5DD128)
    
    SPLAT_BEGIN_SEG(data_5DD128, 0x5DD128, 0x5DD128, )
        Yay0_5DD128_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD128.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD128, 0x5DD178)
    
    SPLAT_BEGIN_SEG(data_5DD178, 0x5DD178, 0x5DD178, )
        Yay0_5DD178_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD178.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD178, 0x5DD450)
    
    SPLAT_BEGIN_SEG(data_5DD450, 0x5DD450, 0x5DD450, )
        Yay0_5DD450_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD450.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD450, 0x5DD4B8)
    
    SPLAT_BEGIN_SEG(data_5DD4B8, 0x5DD4B8, 0x5DD4B8, )
        Yay0_5DD4B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD4B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD4B8, 0x5DD500)
    
    SPLAT_BEGIN_SEG(data_5DD500, 0x5DD500, 0x5DD500, )
        Yay0_5DD500_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DD500.Yay0.o(.data);
    SPLAT_END_SEG(data_5DD500, 0x5DDA10)
    
    SPLAT_BEGIN_SEG(data_5DDA10, 0x5DDA10, 0x5DDA10, )
        Yay0_5DDA10_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DDA10.Yay0.o(.data);
    SPLAT_END_SEG(data_5DDA10, 0x5DDAB8)
    
    SPLAT_BEGIN_SEG(data_5DDAB8, 0x5DDAB8, 0x5DDAB8, )
        Yay0_5DDAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DDAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DDAB8, 0x5DDB18)
    
    SPLAT_BEGIN_SEG(data_5DDB18, 0x5DDB18, 0x5DDB18, )
        Yay0_5DDB18_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DDB18.Yay0.o(.data);
    SPLAT_END_SEG(data_5DDB18, 0x5DDDE0)
    
    SPLAT_BEGIN_SEG(data_5DDDE0, 0x5DDDE0, 0x5DDDE0, )
        Yay0_5DDDE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DDDE0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DDDE0, 0x5DE0A8)
    
    SPLAT_BEGIN_SEG(data_5DE0A8, 0x5DE0A8, 0x5DE0A8, )
        Yay0_5DE0A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DE0A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DE0A8, 0x5DE480)
    
    SPLAT_BEGIN_SEG(data_5DE480, 0x5DE480, 0x5DE480, )
        Yay0_5DE480_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DE480.Yay0.o(.data);
    SPLAT_END_SEG(data_5DE480, 0x5DE868)
    
    SPLAT_BEGIN_SEG(data_5DE868, 0x5DE868, 0x5DE868, )
        Yay0_5DE868_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DE868.Yay0.o(.data);
    SPLAT_END_SEG(data_5DE868, 0x5DEB38)
    
    SPLAT_BEGIN_SEG(data_5DEB38, 0x5DEB38, 0x5DEB38, )
        Yay0_5DEB38_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DEB38.Yay0.o(.data);
    SPLAT_END_SEG(data_5DEB38, 0x5DEF18)
    
    SPLAT_BEGIN_SEG(data_5DEF18, 0x5DEF18, 0x5DEF18, )
        Yay0_5DEF18_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DEF18.Yay0.o(.data);
    SPLAT_END_SEG(data_5DEF18, 0x5DF1F0)
    
    SPLAT_BEGIN_SEG(data_5DF1F0, 0x5DF1F0, 0x5DF1F0, )
        Yay0_5DF1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DF1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DF1F0, 0x5DF4F8)
    
    SPLAT_BEGIN_SEG(data_5DF4F8, 0x5DF4F8, 0x5DF4F8, )
        Yay0_5DF4F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DF4F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DF4F8, 0x5DF7D0)
    
    SPLAT_BEGIN_SEG(data_5DF7D0, 0x5DF7D0, 0x5DF7D0, )
        Yay0_5DF7D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DF7D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5DF7D0, 0x5DFCC8)
    
    SPLAT_BEGIN_SEG(data_5DFCC8, 0x5DFCC8, 0x5DFCC8, )
        Yay0_5DFCC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DFCC8.Yay0.o(.data);
    SPLAT_END_SEG(data_5DFCC8, 0x5DFE20)
    
    SPLAT_BEGIN_SEG(data_5DFE20, 0x5DFE20, 0x5DFE20, )
        Yay0_5DFE20_Yay0 = .;
        BUILD_DIR/bin/Yay0/5DFE20.Yay0.o(.data);
    SPLAT_END_SEG(data_5DFE20, 0x5E01D8)
    
    SPLAT_BEGIN_SEG(data_5E01D8, 0x5E01D8, 0x5E01D8, )
        Yay0_5E01D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E01D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E01D8, 0x5E07F8)
    
    SPLAT_BEGIN_SEG(data_5E07F8, 0x5E07F8, 0x5E07F8, )
        Yay0_5E07F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E07F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E07F8, 0x5E0C28)
    
    SPLAT_BEGIN_SEG(data_5E0C28, 0x5E0C28, 0x5E0C28, )
        Yay0_5E0C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E0C28.Yay0.o(.data);
    SPLAT_END_SEG(data_5E0C28, 0x5E0FB8)
    
    SPLAT_BEGIN_SEG(data_5E0FB8, 0x5E0FB8, 0x5E0FB8, )
        Yay0_5E0FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E0FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E0FB8, 0x5E13D8)
    
    SPLAT_BEGIN_SEG(data_5E13D8, 0x5E13D8, 0x5E13D8, )
        Yay0_5E13D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E13D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E13D8, 0x5E1878)
    
    SPLAT_BEGIN_SEG(data_5E1878, 0x5E1878, 0x5E1878, )
        Yay0_5E1878_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E1878.Yay0.o(.data);
    SPLAT_END_SEG(data_5E1878, 0x5E1C58)
    
    SPLAT_BEGIN_SEG(data_5E1C58, 0x5E1C58, 0x5E1C58, )
        Yay0_5E1C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E1C58.Yay0.o(.data);
    SPLAT_END_SEG(data_5E1C58, 0x5E20B0)
    
    SPLAT_BEGIN_SEG(data_5E20B0, 0x5E20B0, 0x5E20B0, )
        Yay0_5E20B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E20B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E20B0, 0x5E2460)
    
    SPLAT_BEGIN_SEG(data_5E2460, 0x5E2460, 0x5E2460, )
        Yay0_5E2460_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E2460.Yay0.o(.data);
    SPLAT_END_SEG(data_5E2460, 0x5E28D8)
    
    SPLAT_BEGIN_SEG(data_5E28D8, 0x5E28D8, 0x5E28D8, )
        Yay0_5E28D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E28D8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E28D8, 0x5E2CD0)
    
    SPLAT_BEGIN_SEG(data_5E2CD0, 0x5E2CD0, 0x5E2CD0, )
        Yay0_5E2CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E2CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E2CD0, 0x5E2F70)
    
    SPLAT_BEGIN_SEG(data_5E2F70, 0x5E2F70, 0x5E2F70, )
        Yay0_5E2F70_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E2F70.Yay0.o(.data);
    SPLAT_END_SEG(data_5E2F70, 0x5E3360)
    
    SPLAT_BEGIN_SEG(data_5E3360, 0x5E3360, 0x5E3360, )
        Yay0_5E3360_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E3360.Yay0.o(.data);
    SPLAT_END_SEG(data_5E3360, 0x5E3610)
    
    SPLAT_BEGIN_SEG(data_5E3610, 0x5E3610, 0x5E3610, )
        Yay0_5E3610_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E3610.Yay0.o(.data);
    SPLAT_END_SEG(data_5E3610, 0x5E3A80)
    
    SPLAT_BEGIN_SEG(data_5E3A80, 0x5E3A80, 0x5E3A80, )
        Yay0_5E3A80_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E3A80.Yay0.o(.data);
    SPLAT_END_SEG(data_5E3A80, 0x5E3C68)
    
    SPLAT_BEGIN_SEG(data_5E3C68, 0x5E3C68, 0x5E3C68, )
        Yay0_5E3C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E3C68.Yay0.o(.data);
    SPLAT_END_SEG(data_5E3C68, 0x5E3FF0)
    
    SPLAT_BEGIN_SEG(data_5E3FF0, 0x5E3FF0, 0x5E3FF0, )
        Yay0_5E3FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E3FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E3FF0, 0x5E4230)
    
    SPLAT_BEGIN_SEG(data_5E4230, 0x5E4230, 0x5E4230, )
        Yay0_5E4230_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E4230.Yay0.o(.data);
    SPLAT_END_SEG(data_5E4230, 0x5E4598)
    
    SPLAT_BEGIN_SEG(data_5E4598, 0x5E4598, 0x5E4598, )
        Yay0_5E4598_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E4598.Yay0.o(.data);
    SPLAT_END_SEG(data_5E4598, 0x5E4860)
    
    SPLAT_BEGIN_SEG(data_5E4860, 0x5E4860, 0x5E4860, )
        Yay0_5E4860_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E4860.Yay0.o(.data);
    SPLAT_END_SEG(data_5E4860, 0x5E4A68)
    
    SPLAT_BEGIN_SEG(data_5E4A68, 0x5E4A68, 0x5E4A68, )
        Yay0_5E4A68_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E4A68.Yay0.o(.data);
    SPLAT_END_SEG(data_5E4A68, 0x5E4CC0)
    
    SPLAT_BEGIN_SEG(data_5E4CC0, 0x5E4CC0, 0x5E4CC0, )
        Yay0_5E4CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E4CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E4CC0, 0x5E4FB8)
    
    SPLAT_BEGIN_SEG(data_5E4FB8, 0x5E4FB8, 0x5E4FB8, )
        Yay0_5E4FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E4FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E4FB8, 0x5E52C8)
    
    SPLAT_BEGIN_SEG(data_5E52C8, 0x5E52C8, 0x5E52C8, )
        Yay0_5E52C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E52C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E52C8, 0x5E5358)
    
    SPLAT_BEGIN_SEG(data_5E5358, 0x5E5358, 0x5E5358, )
        Yay0_5E5358_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E5358.Yay0.o(.data);
    SPLAT_END_SEG(data_5E5358, 0x5E5530)
    
    SPLAT_BEGIN_SEG(data_5E5530, 0x5E5530, 0x5E5530, )
        Yay0_5E5530_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E5530.Yay0.o(.data);
    SPLAT_END_SEG(data_5E5530, 0x5E5758)
    
    SPLAT_BEGIN_SEG(data_5E5758, 0x5E5758, 0x5E5758, )
        Yay0_5E5758_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E5758.Yay0.o(.data);
    SPLAT_END_SEG(data_5E5758, 0x5E5998)
    
    SPLAT_BEGIN_SEG(data_5E5998, 0x5E5998, 0x5E5998, )
        Yay0_5E5998_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E5998.Yay0.o(.data);
    SPLAT_END_SEG(data_5E5998, 0x5E5BE0)
    
    SPLAT_BEGIN_SEG(data_5E5BE0, 0x5E5BE0, 0x5E5BE0, )
        Yay0_5E5BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E5BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E5BE0, 0x5E5E90)
    
    SPLAT_BEGIN_SEG(data_5E5E90, 0x5E5E90, 0x5E5E90, )
        Yay0_5E5E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E5E90.Yay0.o(.data);
    SPLAT_END_SEG(data_5E5E90, 0x5E61B8)
    
    SPLAT_BEGIN_SEG(data_5E61B8, 0x5E61B8, 0x5E61B8, )
        Yay0_5E61B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E61B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E61B8, 0x5E6468)
    
    SPLAT_BEGIN_SEG(data_5E6468, 0x5E6468, 0x5E6468, )
        Yay0_5E6468_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E6468.Yay0.o(.data);
    SPLAT_END_SEG(data_5E6468, 0x5E6668)
    
    SPLAT_BEGIN_SEG(data_5E6668, 0x5E6668, 0x5E6668, )
        Yay0_5E6668_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E6668.Yay0.o(.data);
    SPLAT_END_SEG(data_5E6668, 0x5E6770)
    
    SPLAT_BEGIN_SEG(data_5E6770, 0x5E6770, 0x5E6770, )
        Yay0_5E6770_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E6770.Yay0.o(.data);
    SPLAT_END_SEG(data_5E6770, 0x5E69A8)
    
    SPLAT_BEGIN_SEG(data_5E69A8, 0x5E69A8, 0x5E69A8, )
        Yay0_5E69A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E69A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E69A8, 0x5E6C08)
    
    SPLAT_BEGIN_SEG(data_5E6C08, 0x5E6C08, 0x5E6C08, )
        Yay0_5E6C08_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E6C08.Yay0.o(.data);
    SPLAT_END_SEG(data_5E6C08, 0x5E6E98)
    
    SPLAT_BEGIN_SEG(data_5E6E98, 0x5E6E98, 0x5E6E98, )
        Yay0_5E6E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E6E98.Yay0.o(.data);
    SPLAT_END_SEG(data_5E6E98, 0x5E7128)
    
    SPLAT_BEGIN_SEG(data_5E7128, 0x5E7128, 0x5E7128, )
        Yay0_5E7128_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E7128.Yay0.o(.data);
    SPLAT_END_SEG(data_5E7128, 0x5E76C8)
    
    SPLAT_BEGIN_SEG(data_5E76C8, 0x5E76C8, 0x5E76C8, )
        Yay0_5E76C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E76C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E76C8, 0x5E7C68)
    
    SPLAT_BEGIN_SEG(data_5E7C68, 0x5E7C68, 0x5E7C68, )
        Yay0_5E7C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E7C68.Yay0.o(.data);
    SPLAT_END_SEG(data_5E7C68, 0x5E8208)
    
    SPLAT_BEGIN_SEG(data_5E8208, 0x5E8208, 0x5E8208, )
        Yay0_5E8208_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E8208.Yay0.o(.data);
    SPLAT_END_SEG(data_5E8208, 0x5E87A0)
    
    SPLAT_BEGIN_SEG(data_5E87A0, 0x5E87A0, 0x5E87A0, )
        Yay0_5E87A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E87A0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E87A0, 0x5E8AE8)
    
    SPLAT_BEGIN_SEG(data_5E8AE8, 0x5E8AE8, 0x5E8AE8, )
        Yay0_5E8AE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E8AE8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E8AE8, 0x5E8DD8)
    
    SPLAT_BEGIN_SEG(data_5E8DD8, 0x5E8DD8, 0x5E8DD8, )
        Yay0_5E8DD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E8DD8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E8DD8, 0x5E8EF8)
    
    SPLAT_BEGIN_SEG(data_5E8EF8, 0x5E8EF8, 0x5E8EF8, )
        Yay0_5E8EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E8EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E8EF8, 0x5E8F80)
    
    SPLAT_BEGIN_SEG(data_5E8F80, 0x5E8F80, 0x5E8F80, )
        Yay0_5E8F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E8F80.Yay0.o(.data);
    SPLAT_END_SEG(data_5E8F80, 0x5E9380)
    
    SPLAT_BEGIN_SEG(data_5E9380, 0x5E9380, 0x5E9380, )
        Yay0_5E9380_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E9380.Yay0.o(.data);
    SPLAT_END_SEG(data_5E9380, 0x5E9590)
    
    SPLAT_BEGIN_SEG(data_5E9590, 0x5E9590, 0x5E9590, )
        Yay0_5E9590_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E9590.Yay0.o(.data);
    SPLAT_END_SEG(data_5E9590, 0x5E97B0)
    
    SPLAT_BEGIN_SEG(data_5E97B0, 0x5E97B0, 0x5E97B0, )
        Yay0_5E97B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E97B0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E97B0, 0x5E99C0)
    
    SPLAT_BEGIN_SEG(data_5E99C0, 0x5E99C0, 0x5E99C0, )
        Yay0_5E99C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E99C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5E99C0, 0x5E9BC8)
    
    SPLAT_BEGIN_SEG(data_5E9BC8, 0x5E9BC8, 0x5E9BC8, )
        Yay0_5E9BC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E9BC8.Yay0.o(.data);
    SPLAT_END_SEG(data_5E9BC8, 0x5E9E90)
    
    SPLAT_BEGIN_SEG(data_5E9E90, 0x5E9E90, 0x5E9E90, )
        Yay0_5E9E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/5E9E90.Yay0.o(.data);
    SPLAT_END_SEG(data_5E9E90, 0x5EA0F8)
    
    SPLAT_BEGIN_SEG(data_5EA0F8, 0x5EA0F8, 0x5EA0F8, )
        Yay0_5EA0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EA0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5EA0F8, 0x5EA340)
    
    SPLAT_BEGIN_SEG(data_5EA340, 0x5EA340, 0x5EA340, )
        Yay0_5EA340_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EA340.Yay0.o(.data);
    SPLAT_END_SEG(data_5EA340, 0x5EA5D0)
    
    SPLAT_BEGIN_SEG(data_5EA5D0, 0x5EA5D0, 0x5EA5D0, )
        Yay0_5EA5D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EA5D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5EA5D0, 0x5EA808)
    
    SPLAT_BEGIN_SEG(data_5EA808, 0x5EA808, 0x5EA808, )
        Yay0_5EA808_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EA808.Yay0.o(.data);
    SPLAT_END_SEG(data_5EA808, 0x5EAA38)
    
    SPLAT_BEGIN_SEG(data_5EAA38, 0x5EAA38, 0x5EAA38, )
        Yay0_5EAA38_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EAA38.Yay0.o(.data);
    SPLAT_END_SEG(data_5EAA38, 0x5EAD20)
    
    SPLAT_BEGIN_SEG(data_5EAD20, 0x5EAD20, 0x5EAD20, )
        Yay0_5EAD20_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EAD20.Yay0.o(.data);
    SPLAT_END_SEG(data_5EAD20, 0x5EAFE8)
    
    SPLAT_BEGIN_SEG(data_5EAFE8, 0x5EAFE8, 0x5EAFE8, )
        Yay0_5EAFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EAFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_5EAFE8, 0x5EB300)
    
    SPLAT_BEGIN_SEG(data_5EB300, 0x5EB300, 0x5EB300, )
        Yay0_5EB300_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EB300.Yay0.o(.data);
    SPLAT_END_SEG(data_5EB300, 0x5EB638)
    
    SPLAT_BEGIN_SEG(data_5EB638, 0x5EB638, 0x5EB638, )
        Yay0_5EB638_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EB638.Yay0.o(.data);
    SPLAT_END_SEG(data_5EB638, 0x5EB9B8)
    
    SPLAT_BEGIN_SEG(data_5EB9B8, 0x5EB9B8, 0x5EB9B8, )
        Yay0_5EB9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EB9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5EB9B8, 0x5EBD28)
    
    SPLAT_BEGIN_SEG(data_5EBD28, 0x5EBD28, 0x5EBD28, )
        Yay0_5EBD28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EBD28.Yay0.o(.data);
    SPLAT_END_SEG(data_5EBD28, 0x5EC088)
    
    SPLAT_BEGIN_SEG(data_5EC088, 0x5EC088, 0x5EC088, )
        Yay0_5EC088_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EC088.Yay0.o(.data);
    SPLAT_END_SEG(data_5EC088, 0x5EC3E0)
    
    SPLAT_BEGIN_SEG(data_5EC3E0, 0x5EC3E0, 0x5EC3E0, )
        Yay0_5EC3E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EC3E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5EC3E0, 0x5EC710)
    
    SPLAT_BEGIN_SEG(data_5EC710, 0x5EC710, 0x5EC710, )
        Yay0_5EC710_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EC710.Yay0.o(.data);
    SPLAT_END_SEG(data_5EC710, 0x5EC9C0)
    
    SPLAT_BEGIN_SEG(data_5EC9C0, 0x5EC9C0, 0x5EC9C0, )
        Yay0_5EC9C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EC9C0.Yay0.o(.data);
    SPLAT_END_SEG(data_5EC9C0, 0x5ECAD0)
    
    SPLAT_BEGIN_SEG(data_5ECAD0, 0x5ECAD0, 0x5ECAD0, )
        Yay0_5ECAD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ECAD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5ECAD0, 0x5ECBD0)
    
    SPLAT_BEGIN_SEG(data_5ECBD0, 0x5ECBD0, 0x5ECBD0, )
        Yay0_5ECBD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ECBD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5ECBD0, 0x5ECC88)
    
    SPLAT_BEGIN_SEG(data_5ECC88, 0x5ECC88, 0x5ECC88, )
        Yay0_5ECC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ECC88.Yay0.o(.data);
    SPLAT_END_SEG(data_5ECC88, 0x5ECD40)
    
    SPLAT_BEGIN_SEG(data_5ECD40, 0x5ECD40, 0x5ECD40, )
        Yay0_5ECD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ECD40.Yay0.o(.data);
    SPLAT_END_SEG(data_5ECD40, 0x5ECDF8)
    
    SPLAT_BEGIN_SEG(data_5ECDF8, 0x5ECDF8, 0x5ECDF8, )
        Yay0_5ECDF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ECDF8.Yay0.o(.data);
    SPLAT_END_SEG(data_5ECDF8, 0x5ECEB0)
    
    SPLAT_BEGIN_SEG(data_5ECEB0, 0x5ECEB0, 0x5ECEB0, )
        Yay0_5ECEB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ECEB0.Yay0.o(.data);
    SPLAT_END_SEG(data_5ECEB0, 0x5ED3A8)
    
    SPLAT_BEGIN_SEG(data_5ED3A8, 0x5ED3A8, 0x5ED3A8, )
        Yay0_5ED3A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ED3A8.Yay0.o(.data);
    SPLAT_END_SEG(data_5ED3A8, 0x5ED928)
    
    SPLAT_BEGIN_SEG(data_5ED928, 0x5ED928, 0x5ED928, )
        Yay0_5ED928_Yay0 = .;
        BUILD_DIR/bin/Yay0/5ED928.Yay0.o(.data);
    SPLAT_END_SEG(data_5ED928, 0x5EDEB8)
    
    SPLAT_BEGIN_SEG(data_5EDEB8, 0x5EDEB8, 0x5EDEB8, )
        Yay0_5EDEB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EDEB8.Yay0.o(.data);
    SPLAT_END_SEG(data_5EDEB8, 0x5EE448)
    
    SPLAT_BEGIN_SEG(data_5EE448, 0x5EE448, 0x5EE448, )
        Yay0_5EE448_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EE448.Yay0.o(.data);
    SPLAT_END_SEG(data_5EE448, 0x5EE8D0)
    
    SPLAT_BEGIN_SEG(data_5EE8D0, 0x5EE8D0, 0x5EE8D0, )
        Yay0_5EE8D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EE8D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5EE8D0, 0x5EEC28)
    
    SPLAT_BEGIN_SEG(data_5EEC28, 0x5EEC28, 0x5EEC28, )
        Yay0_5EEC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EEC28.Yay0.o(.data);
    SPLAT_END_SEG(data_5EEC28, 0x5EF0E0)
    
    SPLAT_BEGIN_SEG(data_5EF0E0, 0x5EF0E0, 0x5EF0E0, )
        Yay0_5EF0E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5EF0E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5EF0E0, 0x5F0290)
    
    SPLAT_BEGIN_SEG(data_5F0290, 0x5F0290, 0x5F0290, )
        Yay0_5F0290_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F0290.Yay0.o(.data);
    SPLAT_END_SEG(data_5F0290, 0x5F1288)
    
    SPLAT_BEGIN_SEG(data_5F1288, 0x5F1288, 0x5F1288, )
        Yay0_5F1288_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F1288.Yay0.o(.data);
    SPLAT_END_SEG(data_5F1288, 0x5F2900)
    
    SPLAT_BEGIN_SEG(data_5F2900, 0x5F2900, 0x5F2900, )
        Yay0_5F2900_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2900.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2900, 0x5F2960)
    
    SPLAT_BEGIN_SEG(data_5F2960, 0x5F2960, 0x5F2960, )
        Yay0_5F2960_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2960.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2960, 0x5F29B8)
    
    SPLAT_BEGIN_SEG(data_5F29B8, 0x5F29B8, 0x5F29B8, )
        Yay0_5F29B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F29B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5F29B8, 0x5F2A28)
    
    SPLAT_BEGIN_SEG(data_5F2A28, 0x5F2A28, 0x5F2A28, )
        Yay0_5F2A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2A28.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2A28, 0x5F2AA0)
    
    SPLAT_BEGIN_SEG(data_5F2AA0, 0x5F2AA0, 0x5F2AA0, )
        Yay0_5F2AA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2AA0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2AA0, 0x5F2B20)
    
    SPLAT_BEGIN_SEG(data_5F2B20, 0x5F2B20, 0x5F2B20, )
        Yay0_5F2B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2B20.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2B20, 0x5F2B98)
    
    SPLAT_BEGIN_SEG(data_5F2B98, 0x5F2B98, 0x5F2B98, )
        Yay0_5F2B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2B98.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2B98, 0x5F2C10)
    
    SPLAT_BEGIN_SEG(data_5F2C10, 0x5F2C10, 0x5F2C10, )
        Yay0_5F2C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2C10.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2C10, 0x5F2C70)
    
    SPLAT_BEGIN_SEG(data_5F2C70, 0x5F2C70, 0x5F2C70, )
        Yay0_5F2C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2C70.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2C70, 0x5F2CD0)
    
    SPLAT_BEGIN_SEG(data_5F2CD0, 0x5F2CD0, 0x5F2CD0, )
        Yay0_5F2CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2CD0, 0x5F2D48)
    
    SPLAT_BEGIN_SEG(data_5F2D48, 0x5F2D48, 0x5F2D48, )
        Yay0_5F2D48_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2D48.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2D48, 0x5F2F30)
    
    SPLAT_BEGIN_SEG(data_5F2F30, 0x5F2F30, 0x5F2F30, )
        Yay0_5F2F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2F30.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2F30, 0x5F2F68)
    
    SPLAT_BEGIN_SEG(data_5F2F68, 0x5F2F68, 0x5F2F68, )
        Yay0_5F2F68_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F2F68.Yay0.o(.data);
    SPLAT_END_SEG(data_5F2F68, 0x5F3350)
    
    SPLAT_BEGIN_SEG(data_5F3350, 0x5F3350, 0x5F3350, )
        Yay0_5F3350_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F3350.Yay0.o(.data);
    SPLAT_END_SEG(data_5F3350, 0x5F3E28)
    
    SPLAT_BEGIN_SEG(data_5F3E28, 0x5F3E28, 0x5F3E28, )
        Yay0_5F3E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F3E28.Yay0.o(.data);
    SPLAT_END_SEG(data_5F3E28, 0x5F4190)
    
    SPLAT_BEGIN_SEG(data_5F4190, 0x5F4190, 0x5F4190, )
        Yay0_5F4190_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F4190.Yay0.o(.data);
    SPLAT_END_SEG(data_5F4190, 0x5F41F0)
    
    SPLAT_BEGIN_SEG(data_5F41F0, 0x5F41F0, 0x5F41F0, )
        Yay0_5F41F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F41F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F41F0, 0x5F4540)
    
    SPLAT_BEGIN_SEG(data_5F4540, 0x5F4540, 0x5F4540, )
        Yay0_5F4540_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F4540.Yay0.o(.data);
    SPLAT_END_SEG(data_5F4540, 0x5F4890)
    
    SPLAT_BEGIN_SEG(data_5F4890, 0x5F4890, 0x5F4890, )
        Yay0_5F4890_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F4890.Yay0.o(.data);
    SPLAT_END_SEG(data_5F4890, 0x5F4BD8)
    
    SPLAT_BEGIN_SEG(data_5F4BD8, 0x5F4BD8, 0x5F4BD8, )
        Yay0_5F4BD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F4BD8.Yay0.o(.data);
    SPLAT_END_SEG(data_5F4BD8, 0x5F4F20)
    
    SPLAT_BEGIN_SEG(data_5F4F20, 0x5F4F20, 0x5F4F20, )
        Yay0_5F4F20_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F4F20.Yay0.o(.data);
    SPLAT_END_SEG(data_5F4F20, 0x5F5260)
    
    SPLAT_BEGIN_SEG(data_5F5260, 0x5F5260, 0x5F5260, )
        Yay0_5F5260_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F5260.Yay0.o(.data);
    SPLAT_END_SEG(data_5F5260, 0x5F55B8)
    
    SPLAT_BEGIN_SEG(data_5F55B8, 0x5F55B8, 0x5F55B8, )
        Yay0_5F55B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F55B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5F55B8, 0x5F5908)
    
    SPLAT_BEGIN_SEG(data_5F5908, 0x5F5908, 0x5F5908, )
        Yay0_5F5908_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F5908.Yay0.o(.data);
    SPLAT_END_SEG(data_5F5908, 0x5F5C58)
    
    SPLAT_BEGIN_SEG(data_5F5C58, 0x5F5C58, 0x5F5C58, )
        Yay0_5F5C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F5C58.Yay0.o(.data);
    SPLAT_END_SEG(data_5F5C58, 0x5F5F90)
    
    SPLAT_BEGIN_SEG(data_5F5F90, 0x5F5F90, 0x5F5F90, )
        Yay0_5F5F90_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F5F90.Yay0.o(.data);
    SPLAT_END_SEG(data_5F5F90, 0x5F62B8)
    
    SPLAT_BEGIN_SEG(data_5F62B8, 0x5F62B8, 0x5F62B8, )
        Yay0_5F62B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F62B8.Yay0.o(.data);
    SPLAT_END_SEG(data_5F62B8, 0x5F6608)
    
    SPLAT_BEGIN_SEG(data_5F6608, 0x5F6608, 0x5F6608, )
        Yay0_5F6608_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F6608.Yay0.o(.data);
    SPLAT_END_SEG(data_5F6608, 0x5F6948)
    
    SPLAT_BEGIN_SEG(data_5F6948, 0x5F6948, 0x5F6948, )
        Yay0_5F6948_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F6948.Yay0.o(.data);
    SPLAT_END_SEG(data_5F6948, 0x5F6C90)
    
    SPLAT_BEGIN_SEG(data_5F6C90, 0x5F6C90, 0x5F6C90, )
        Yay0_5F6C90_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F6C90.Yay0.o(.data);
    SPLAT_END_SEG(data_5F6C90, 0x5F6D28)
    
    SPLAT_BEGIN_SEG(data_5F6D28, 0x5F6D28, 0x5F6D28, )
        Yay0_5F6D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F6D28.Yay0.o(.data);
    SPLAT_END_SEG(data_5F6D28, 0x5F7770)
    
    SPLAT_BEGIN_SEG(data_5F7770, 0x5F7770, 0x5F7770, )
        Yay0_5F7770_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F7770.Yay0.o(.data);
    SPLAT_END_SEG(data_5F7770, 0x5F7830)
    
    SPLAT_BEGIN_SEG(data_5F7830, 0x5F7830, 0x5F7830, )
        Yay0_5F7830_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F7830.Yay0.o(.data);
    SPLAT_END_SEG(data_5F7830, 0x5F7B50)
    
    SPLAT_BEGIN_SEG(data_5F7B50, 0x5F7B50, 0x5F7B50, )
        Yay0_5F7B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F7B50.Yay0.o(.data);
    SPLAT_END_SEG(data_5F7B50, 0x5F7E78)
    
    SPLAT_BEGIN_SEG(data_5F7E78, 0x5F7E78, 0x5F7E78, )
        Yay0_5F7E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F7E78.Yay0.o(.data);
    SPLAT_END_SEG(data_5F7E78, 0x5F7FA0)
    
    SPLAT_BEGIN_SEG(data_5F7FA0, 0x5F7FA0, 0x5F7FA0, )
        Yay0_5F7FA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F7FA0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F7FA0, 0x5F82D0)
    
    SPLAT_BEGIN_SEG(data_5F82D0, 0x5F82D0, 0x5F82D0, )
        Yay0_5F82D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F82D0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F82D0, 0x5F8610)
    
    SPLAT_BEGIN_SEG(data_5F8610, 0x5F8610, 0x5F8610, )
        Yay0_5F8610_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F8610.Yay0.o(.data);
    SPLAT_END_SEG(data_5F8610, 0x5F88E0)
    
    SPLAT_BEGIN_SEG(data_5F88E0, 0x5F88E0, 0x5F88E0, )
        Yay0_5F88E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F88E0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F88E0, 0x5F8BB0)
    
    SPLAT_BEGIN_SEG(data_5F8BB0, 0x5F8BB0, 0x5F8BB0, )
        Yay0_5F8BB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F8BB0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F8BB0, 0x5F8E70)
    
    SPLAT_BEGIN_SEG(data_5F8E70, 0x5F8E70, 0x5F8E70, )
        Yay0_5F8E70_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F8E70.Yay0.o(.data);
    SPLAT_END_SEG(data_5F8E70, 0x5F9138)
    
    SPLAT_BEGIN_SEG(data_5F9138, 0x5F9138, 0x5F9138, )
        Yay0_5F9138_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F9138.Yay0.o(.data);
    SPLAT_END_SEG(data_5F9138, 0x5F9430)
    
    SPLAT_BEGIN_SEG(data_5F9430, 0x5F9430, 0x5F9430, )
        Yay0_5F9430_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F9430.Yay0.o(.data);
    SPLAT_END_SEG(data_5F9430, 0x5F96F8)
    
    SPLAT_BEGIN_SEG(data_5F96F8, 0x5F96F8, 0x5F96F8, )
        Yay0_5F96F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F96F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5F96F8, 0x5F99F0)
    
    SPLAT_BEGIN_SEG(data_5F99F0, 0x5F99F0, 0x5F99F0, )
        Yay0_5F99F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F99F0.Yay0.o(.data);
    SPLAT_END_SEG(data_5F99F0, 0x5F9CA8)
    
    SPLAT_BEGIN_SEG(data_5F9CA8, 0x5F9CA8, 0x5F9CA8, )
        Yay0_5F9CA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F9CA8.Yay0.o(.data);
    SPLAT_END_SEG(data_5F9CA8, 0x5F9F38)
    
    SPLAT_BEGIN_SEG(data_5F9F38, 0x5F9F38, 0x5F9F38, )
        Yay0_5F9F38_Yay0 = .;
        BUILD_DIR/bin/Yay0/5F9F38.Yay0.o(.data);
    SPLAT_END_SEG(data_5F9F38, 0x5FA220)
    
    SPLAT_BEGIN_SEG(data_5FA220, 0x5FA220, 0x5FA220, )
        Yay0_5FA220_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FA220.Yay0.o(.data);
    SPLAT_END_SEG(data_5FA220, 0x5FA538)
    
    SPLAT_BEGIN_SEG(data_5FA538, 0x5FA538, 0x5FA538, )
        Yay0_5FA538_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FA538.Yay0.o(.data);
    SPLAT_END_SEG(data_5FA538, 0x5FA848)
    
    SPLAT_BEGIN_SEG(data_5FA848, 0x5FA848, 0x5FA848, )
        Yay0_5FA848_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FA848.Yay0.o(.data);
    SPLAT_END_SEG(data_5FA848, 0x5FA8A0)
    
    SPLAT_BEGIN_SEG(data_5FA8A0, 0x5FA8A0, 0x5FA8A0, )
        Yay0_5FA8A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FA8A0.Yay0.o(.data);
    SPLAT_END_SEG(data_5FA8A0, 0x5FAA28)
    
    SPLAT_BEGIN_SEG(data_5FAA28, 0x5FAA28, 0x5FAA28, )
        Yay0_5FAA28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FAA28.Yay0.o(.data);
    SPLAT_END_SEG(data_5FAA28, 0x5FAC68)
    
    SPLAT_BEGIN_SEG(data_5FAC68, 0x5FAC68, 0x5FAC68, )
        Yay0_5FAC68_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FAC68.Yay0.o(.data);
    SPLAT_END_SEG(data_5FAC68, 0x5FAE88)
    
    SPLAT_BEGIN_SEG(data_5FAE88, 0x5FAE88, 0x5FAE88, )
        Yay0_5FAE88_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FAE88.Yay0.o(.data);
    SPLAT_END_SEG(data_5FAE88, 0x5FB0A0)
    
    SPLAT_BEGIN_SEG(data_5FB0A0, 0x5FB0A0, 0x5FB0A0, )
        Yay0_5FB0A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FB0A0.Yay0.o(.data);
    SPLAT_END_SEG(data_5FB0A0, 0x5FB2C8)
    
    SPLAT_BEGIN_SEG(data_5FB2C8, 0x5FB2C8, 0x5FB2C8, )
        Yay0_5FB2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FB2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5FB2C8, 0x5FB520)
    
    SPLAT_BEGIN_SEG(data_5FB520, 0x5FB520, 0x5FB520, )
        Yay0_5FB520_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FB520.Yay0.o(.data);
    SPLAT_END_SEG(data_5FB520, 0x5FB718)
    
    SPLAT_BEGIN_SEG(data_5FB718, 0x5FB718, 0x5FB718, )
        Yay0_5FB718_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FB718.Yay0.o(.data);
    SPLAT_END_SEG(data_5FB718, 0x5FB928)
    
    SPLAT_BEGIN_SEG(data_5FB928, 0x5FB928, 0x5FB928, )
        Yay0_5FB928_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FB928.Yay0.o(.data);
    SPLAT_END_SEG(data_5FB928, 0x5FBAE0)
    
    SPLAT_BEGIN_SEG(data_5FBAE0, 0x5FBAE0, 0x5FBAE0, )
        Yay0_5FBAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FBAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_5FBAE0, 0x5FBE18)
    
    SPLAT_BEGIN_SEG(data_5FBE18, 0x5FBE18, 0x5FBE18, )
        Yay0_5FBE18_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FBE18.Yay0.o(.data);
    SPLAT_END_SEG(data_5FBE18, 0x5FC148)
    
    SPLAT_BEGIN_SEG(data_5FC148, 0x5FC148, 0x5FC148, )
        Yay0_5FC148_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FC148.Yay0.o(.data);
    SPLAT_END_SEG(data_5FC148, 0x5FC480)
    
    SPLAT_BEGIN_SEG(data_5FC480, 0x5FC480, 0x5FC480, )
        Yay0_5FC480_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FC480.Yay0.o(.data);
    SPLAT_END_SEG(data_5FC480, 0x5FCBF0)
    
    SPLAT_BEGIN_SEG(data_5FCBF0, 0x5FCBF0, 0x5FCBF0, )
        Yay0_5FCBF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FCBF0.Yay0.o(.data);
    SPLAT_END_SEG(data_5FCBF0, 0x5FCF58)
    
    SPLAT_BEGIN_SEG(data_5FCF58, 0x5FCF58, 0x5FCF58, )
        Yay0_5FCF58_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FCF58.Yay0.o(.data);
    SPLAT_END_SEG(data_5FCF58, 0x5FD010)
    
    SPLAT_BEGIN_SEG(data_5FD010, 0x5FD010, 0x5FD010, )
        Yay0_5FD010_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FD010.Yay0.o(.data);
    SPLAT_END_SEG(data_5FD010, 0x5FD338)
    
    SPLAT_BEGIN_SEG(data_5FD338, 0x5FD338, 0x5FD338, )
        Yay0_5FD338_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FD338.Yay0.o(.data);
    SPLAT_END_SEG(data_5FD338, 0x5FD658)
    
    SPLAT_BEGIN_SEG(data_5FD658, 0x5FD658, 0x5FD658, )
        Yay0_5FD658_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FD658.Yay0.o(.data);
    SPLAT_END_SEG(data_5FD658, 0x5FD788)
    
    SPLAT_BEGIN_SEG(data_5FD788, 0x5FD788, 0x5FD788, )
        Yay0_5FD788_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FD788.Yay0.o(.data);
    SPLAT_END_SEG(data_5FD788, 0x5FDAD0)
    
    SPLAT_BEGIN_SEG(data_5FDAD0, 0x5FDAD0, 0x5FDAD0, )
        Yay0_5FDAD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FDAD0.Yay0.o(.data);
    SPLAT_END_SEG(data_5FDAD0, 0x5FDE28)
    
    SPLAT_BEGIN_SEG(data_5FDE28, 0x5FDE28, 0x5FDE28, )
        Yay0_5FDE28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FDE28.Yay0.o(.data);
    SPLAT_END_SEG(data_5FDE28, 0x5FE0F8)
    
    SPLAT_BEGIN_SEG(data_5FE0F8, 0x5FE0F8, 0x5FE0F8, )
        Yay0_5FE0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FE0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_5FE0F8, 0x5FE3C8)
    
    SPLAT_BEGIN_SEG(data_5FE3C8, 0x5FE3C8, 0x5FE3C8, )
        Yay0_5FE3C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FE3C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5FE3C8, 0x5FE678)
    
    SPLAT_BEGIN_SEG(data_5FE678, 0x5FE678, 0x5FE678, )
        Yay0_5FE678_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FE678.Yay0.o(.data);
    SPLAT_END_SEG(data_5FE678, 0x5FE928)
    
    SPLAT_BEGIN_SEG(data_5FE928, 0x5FE928, 0x5FE928, )
        Yay0_5FE928_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FE928.Yay0.o(.data);
    SPLAT_END_SEG(data_5FE928, 0x5FEC28)
    
    SPLAT_BEGIN_SEG(data_5FEC28, 0x5FEC28, 0x5FEC28, )
        Yay0_5FEC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FEC28.Yay0.o(.data);
    SPLAT_END_SEG(data_5FEC28, 0x5FEF18)
    
    SPLAT_BEGIN_SEG(data_5FEF18, 0x5FEF18, 0x5FEF18, )
        Yay0_5FEF18_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FEF18.Yay0.o(.data);
    SPLAT_END_SEG(data_5FEF18, 0x5FF210)
    
    SPLAT_BEGIN_SEG(data_5FF210, 0x5FF210, 0x5FF210, )
        Yay0_5FF210_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FF210.Yay0.o(.data);
    SPLAT_END_SEG(data_5FF210, 0x5FF4C8)
    
    SPLAT_BEGIN_SEG(data_5FF4C8, 0x5FF4C8, 0x5FF4C8, )
        Yay0_5FF4C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FF4C8.Yay0.o(.data);
    SPLAT_END_SEG(data_5FF4C8, 0x5FF748)
    
    SPLAT_BEGIN_SEG(data_5FF748, 0x5FF748, 0x5FF748, )
        Yay0_5FF748_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FF748.Yay0.o(.data);
    SPLAT_END_SEG(data_5FF748, 0x5FFA30)
    
    SPLAT_BEGIN_SEG(data_5FFA30, 0x5FFA30, 0x5FFA30, )
        Yay0_5FFA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FFA30.Yay0.o(.data);
    SPLAT_END_SEG(data_5FFA30, 0x5FFD48)
    
    SPLAT_BEGIN_SEG(data_5FFD48, 0x5FFD48, 0x5FFD48, )
        Yay0_5FFD48_Yay0 = .;
        BUILD_DIR/bin/Yay0/5FFD48.Yay0.o(.data);
    SPLAT_END_SEG(data_5FFD48, 0x600058)
    
    SPLAT_BEGIN_SEG(data_600058, 0x600058, 0x600058, )
        Yay0_600058_Yay0 = .;
        BUILD_DIR/bin/Yay0/600058.Yay0.o(.data);
    SPLAT_END_SEG(data_600058, 0x600368)
    
    SPLAT_BEGIN_SEG(data_600368, 0x600368, 0x600368, )
        Yay0_600368_Yay0 = .;
        BUILD_DIR/bin/Yay0/600368.Yay0.o(.data);
    SPLAT_END_SEG(data_600368, 0x6003D8)
    
    SPLAT_BEGIN_SEG(data_6003D8, 0x6003D8, 0x6003D8, )
        Yay0_6003D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6003D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6003D8, 0x6006F0)
    
    SPLAT_BEGIN_SEG(data_6006F0, 0x6006F0, 0x6006F0, )
        Yay0_6006F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6006F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6006F0, 0x600A08)
    
    SPLAT_BEGIN_SEG(data_600A08, 0x600A08, 0x600A08, )
        Yay0_600A08_Yay0 = .;
        BUILD_DIR/bin/Yay0/600A08.Yay0.o(.data);
    SPLAT_END_SEG(data_600A08, 0x600D18)
    
    SPLAT_BEGIN_SEG(data_600D18, 0x600D18, 0x600D18, )
        Yay0_600D18_Yay0 = .;
        BUILD_DIR/bin/Yay0/600D18.Yay0.o(.data);
    SPLAT_END_SEG(data_600D18, 0x600DA0)
    
    SPLAT_BEGIN_SEG(data_600DA0, 0x600DA0, 0x600DA0, )
        Yay0_600DA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/600DA0.Yay0.o(.data);
    SPLAT_END_SEG(data_600DA0, 0x601098)
    
    SPLAT_BEGIN_SEG(data_601098, 0x601098, 0x601098, )
        Yay0_601098_Yay0 = .;
        BUILD_DIR/bin/Yay0/601098.Yay0.o(.data);
    SPLAT_END_SEG(data_601098, 0x601390)
    
    SPLAT_BEGIN_SEG(data_601390, 0x601390, 0x601390, )
        Yay0_601390_Yay0 = .;
        BUILD_DIR/bin/Yay0/601390.Yay0.o(.data);
    SPLAT_END_SEG(data_601390, 0x601480)
    
    SPLAT_BEGIN_SEG(data_601480, 0x601480, 0x601480, )
        Yay0_601480_Yay0 = .;
        BUILD_DIR/bin/Yay0/601480.Yay0.o(.data);
    SPLAT_END_SEG(data_601480, 0x6017A8)
    
    SPLAT_BEGIN_SEG(data_6017A8, 0x6017A8, 0x6017A8, )
        Yay0_6017A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6017A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6017A8, 0x601AD0)
    
    SPLAT_BEGIN_SEG(data_601AD0, 0x601AD0, 0x601AD0, )
        Yay0_601AD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/601AD0.Yay0.o(.data);
    SPLAT_END_SEG(data_601AD0, 0x601CA0)
    
    SPLAT_BEGIN_SEG(data_601CA0, 0x601CA0, 0x601CA0, )
        Yay0_601CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/601CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_601CA0, 0x601FD8)
    
    SPLAT_BEGIN_SEG(data_601FD8, 0x601FD8, 0x601FD8, )
        Yay0_601FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/601FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_601FD8, 0x602328)
    
    SPLAT_BEGIN_SEG(data_602328, 0x602328, 0x602328, )
        Yay0_602328_Yay0 = .;
        BUILD_DIR/bin/Yay0/602328.Yay0.o(.data);
    SPLAT_END_SEG(data_602328, 0x6025F0)
    
    SPLAT_BEGIN_SEG(data_6025F0, 0x6025F0, 0x6025F0, )
        Yay0_6025F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6025F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6025F0, 0x6028C8)
    
    SPLAT_BEGIN_SEG(data_6028C8, 0x6028C8, 0x6028C8, )
        Yay0_6028C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6028C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6028C8, 0x602BA0)
    
    SPLAT_BEGIN_SEG(data_602BA0, 0x602BA0, 0x602BA0, )
        Yay0_602BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/602BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_602BA0, 0x602E80)
    
    SPLAT_BEGIN_SEG(data_602E80, 0x602E80, 0x602E80, )
        Yay0_602E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/602E80.Yay0.o(.data);
    SPLAT_END_SEG(data_602E80, 0x603168)
    
    SPLAT_BEGIN_SEG(data_603168, 0x603168, 0x603168, )
        Yay0_603168_Yay0 = .;
        BUILD_DIR/bin/Yay0/603168.Yay0.o(.data);
    SPLAT_END_SEG(data_603168, 0x603498)
    
    SPLAT_BEGIN_SEG(data_603498, 0x603498, 0x603498, )
        Yay0_603498_Yay0 = .;
        BUILD_DIR/bin/Yay0/603498.Yay0.o(.data);
    SPLAT_END_SEG(data_603498, 0x6038C8)
    
    SPLAT_BEGIN_SEG(data_6038C8, 0x6038C8, 0x6038C8, )
        Yay0_6038C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6038C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6038C8, 0x603AB0)
    
    SPLAT_BEGIN_SEG(data_603AB0, 0x603AB0, 0x603AB0, )
        Yay0_603AB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/603AB0.Yay0.o(.data);
    SPLAT_END_SEG(data_603AB0, 0x603D68)
    
    SPLAT_BEGIN_SEG(data_603D68, 0x603D68, 0x603D68, )
        Yay0_603D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/603D68.Yay0.o(.data);
    SPLAT_END_SEG(data_603D68, 0x604020)
    
    SPLAT_BEGIN_SEG(data_604020, 0x604020, 0x604020, )
        Yay0_604020_Yay0 = .;
        BUILD_DIR/bin/Yay0/604020.Yay0.o(.data);
    SPLAT_END_SEG(data_604020, 0x6042C8)
    
    SPLAT_BEGIN_SEG(data_6042C8, 0x6042C8, 0x6042C8, )
        Yay0_6042C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6042C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6042C8, 0x604370)
    
    SPLAT_BEGIN_SEG(data_604370, 0x604370, 0x604370, )
        Yay0_604370_Yay0 = .;
        BUILD_DIR/bin/Yay0/604370.Yay0.o(.data);
    SPLAT_END_SEG(data_604370, 0x604688)
    
    SPLAT_BEGIN_SEG(data_604688, 0x604688, 0x604688, )
        Yay0_604688_Yay0 = .;
        BUILD_DIR/bin/Yay0/604688.Yay0.o(.data);
    SPLAT_END_SEG(data_604688, 0x6049B0)
    
    SPLAT_BEGIN_SEG(data_6049B0, 0x6049B0, 0x6049B0, )
        Yay0_6049B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6049B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6049B0, 0x604D08)
    
    SPLAT_BEGIN_SEG(data_604D08, 0x604D08, 0x604D08, )
        Yay0_604D08_Yay0 = .;
        BUILD_DIR/bin/Yay0/604D08.Yay0.o(.data);
    SPLAT_END_SEG(data_604D08, 0x605060)
    
    SPLAT_BEGIN_SEG(data_605060, 0x605060, 0x605060, )
        Yay0_605060_Yay0 = .;
        BUILD_DIR/bin/Yay0/605060.Yay0.o(.data);
    SPLAT_END_SEG(data_605060, 0x605228)
    
    SPLAT_BEGIN_SEG(data_605228, 0x605228, 0x605228, )
        Yay0_605228_Yay0 = .;
        BUILD_DIR/bin/Yay0/605228.Yay0.o(.data);
    SPLAT_END_SEG(data_605228, 0x605520)
    
    SPLAT_BEGIN_SEG(data_605520, 0x605520, 0x605520, )
        Yay0_605520_Yay0 = .;
        BUILD_DIR/bin/Yay0/605520.Yay0.o(.data);
    SPLAT_END_SEG(data_605520, 0x605808)
    
    SPLAT_BEGIN_SEG(data_605808, 0x605808, 0x605808, )
        Yay0_605808_Yay0 = .;
        BUILD_DIR/bin/Yay0/605808.Yay0.o(.data);
    SPLAT_END_SEG(data_605808, 0x605B28)
    
    SPLAT_BEGIN_SEG(data_605B28, 0x605B28, 0x605B28, )
        Yay0_605B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/605B28.Yay0.o(.data);
    SPLAT_END_SEG(data_605B28, 0x605E48)
    
    SPLAT_BEGIN_SEG(data_605E48, 0x605E48, 0x605E48, )
        Yay0_605E48_Yay0 = .;
        BUILD_DIR/bin/Yay0/605E48.Yay0.o(.data);
    SPLAT_END_SEG(data_605E48, 0x606148)
    
    SPLAT_BEGIN_SEG(data_606148, 0x606148, 0x606148, )
        Yay0_606148_Yay0 = .;
        BUILD_DIR/bin/Yay0/606148.Yay0.o(.data);
    SPLAT_END_SEG(data_606148, 0x606440)
    
    SPLAT_BEGIN_SEG(data_606440, 0x606440, 0x606440, )
        Yay0_606440_Yay0 = .;
        BUILD_DIR/bin/Yay0/606440.Yay0.o(.data);
    SPLAT_END_SEG(data_606440, 0x606728)
    
    SPLAT_BEGIN_SEG(data_606728, 0x606728, 0x606728, )
        Yay0_606728_Yay0 = .;
        BUILD_DIR/bin/Yay0/606728.Yay0.o(.data);
    SPLAT_END_SEG(data_606728, 0x606A10)
    
    SPLAT_BEGIN_SEG(data_606A10, 0x606A10, 0x606A10, )
        Yay0_606A10_Yay0 = .;
        BUILD_DIR/bin/Yay0/606A10.Yay0.o(.data);
    SPLAT_END_SEG(data_606A10, 0x606CE0)
    
    SPLAT_BEGIN_SEG(data_606CE0, 0x606CE0, 0x606CE0, )
        Yay0_606CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/606CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_606CE0, 0x607018)
    
    SPLAT_BEGIN_SEG(data_607018, 0x607018, 0x607018, )
        Yay0_607018_Yay0 = .;
        BUILD_DIR/bin/Yay0/607018.Yay0.o(.data);
    SPLAT_END_SEG(data_607018, 0x607308)
    
    SPLAT_BEGIN_SEG(data_607308, 0x607308, 0x607308, )
        Yay0_607308_Yay0 = .;
        BUILD_DIR/bin/Yay0/607308.Yay0.o(.data);
    SPLAT_END_SEG(data_607308, 0x607370)
    
    SPLAT_BEGIN_SEG(data_607370, 0x607370, 0x607370, )
        Yay0_607370_Yay0 = .;
        BUILD_DIR/bin/Yay0/607370.Yay0.o(.data);
    SPLAT_END_SEG(data_607370, 0x607628)
    
    SPLAT_BEGIN_SEG(data_607628, 0x607628, 0x607628, )
        Yay0_607628_Yay0 = .;
        BUILD_DIR/bin/Yay0/607628.Yay0.o(.data);
    SPLAT_END_SEG(data_607628, 0x6076E8)
    
    SPLAT_BEGIN_SEG(data_6076E8, 0x6076E8, 0x6076E8, )
        Yay0_6076E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6076E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6076E8, 0x6079A8)
    
    SPLAT_BEGIN_SEG(data_6079A8, 0x6079A8, 0x6079A8, )
        Yay0_6079A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6079A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6079A8, 0x607A78)
    
    SPLAT_BEGIN_SEG(data_607A78, 0x607A78, 0x607A78, )
        Yay0_607A78_Yay0 = .;
        BUILD_DIR/bin/Yay0/607A78.Yay0.o(.data);
    SPLAT_END_SEG(data_607A78, 0x607DA0)
    
    SPLAT_BEGIN_SEG(data_607DA0, 0x607DA0, 0x607DA0, )
        Yay0_607DA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/607DA0.Yay0.o(.data);
    SPLAT_END_SEG(data_607DA0, 0x608140)
    
    SPLAT_BEGIN_SEG(data_608140, 0x608140, 0x608140, )
        Yay0_608140_Yay0 = .;
        BUILD_DIR/bin/Yay0/608140.Yay0.o(.data);
    SPLAT_END_SEG(data_608140, 0x608450)
    
    SPLAT_BEGIN_SEG(data_608450, 0x608450, 0x608450, )
        Yay0_608450_Yay0 = .;
        BUILD_DIR/bin/Yay0/608450.Yay0.o(.data);
    SPLAT_END_SEG(data_608450, 0x6084B0)
    
    SPLAT_BEGIN_SEG(data_6084B0, 0x6084B0, 0x6084B0, )
        Yay0_6084B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6084B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6084B0, 0x6087C8)
    
    SPLAT_BEGIN_SEG(data_6087C8, 0x6087C8, 0x6087C8, )
        Yay0_6087C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6087C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6087C8, 0x608A50)
    
    SPLAT_BEGIN_SEG(data_608A50, 0x608A50, 0x608A50, )
        Yay0_608A50_Yay0 = .;
        BUILD_DIR/bin/Yay0/608A50.Yay0.o(.data);
    SPLAT_END_SEG(data_608A50, 0x608AE0)
    
    SPLAT_BEGIN_SEG(data_608AE0, 0x608AE0, 0x608AE0, )
        Yay0_608AE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/608AE0.Yay0.o(.data);
    SPLAT_END_SEG(data_608AE0, 0x608DB8)
    
    SPLAT_BEGIN_SEG(data_608DB8, 0x608DB8, 0x608DB8, )
        Yay0_608DB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/608DB8.Yay0.o(.data);
    SPLAT_END_SEG(data_608DB8, 0x609100)
    
    SPLAT_BEGIN_SEG(data_609100, 0x609100, 0x609100, )
        Yay0_609100_Yay0 = .;
        BUILD_DIR/bin/Yay0/609100.Yay0.o(.data);
    SPLAT_END_SEG(data_609100, 0x609400)
    
    SPLAT_BEGIN_SEG(data_609400, 0x609400, 0x609400, )
        Yay0_609400_Yay0 = .;
        BUILD_DIR/bin/Yay0/609400.Yay0.o(.data);
    SPLAT_END_SEG(data_609400, 0x6094A8)
    
    SPLAT_BEGIN_SEG(data_6094A8, 0x6094A8, 0x6094A8, )
        Yay0_6094A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6094A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6094A8, 0x609768)
    
    SPLAT_BEGIN_SEG(data_609768, 0x609768, 0x609768, )
        Yay0_609768_Yay0 = .;
        BUILD_DIR/bin/Yay0/609768.Yay0.o(.data);
    SPLAT_END_SEG(data_609768, 0x609848)
    
    SPLAT_BEGIN_SEG(data_609848, 0x609848, 0x609848, )
        Yay0_609848_Yay0 = .;
        BUILD_DIR/bin/Yay0/609848.Yay0.o(.data);
    SPLAT_END_SEG(data_609848, 0x609B18)
    
    SPLAT_BEGIN_SEG(data_609B18, 0x609B18, 0x609B18, )
        Yay0_609B18_Yay0 = .;
        BUILD_DIR/bin/Yay0/609B18.Yay0.o(.data);
    SPLAT_END_SEG(data_609B18, 0x609BA8)
    
    SPLAT_BEGIN_SEG(data_609BA8, 0x609BA8, 0x609BA8, )
        Yay0_609BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/609BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_609BA8, 0x609ED0)
    
    SPLAT_BEGIN_SEG(data_609ED0, 0x609ED0, 0x609ED0, )
        Yay0_609ED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/609ED0.Yay0.o(.data);
    SPLAT_END_SEG(data_609ED0, 0x609F38)
    
    SPLAT_BEGIN_SEG(data_609F38, 0x609F38, 0x609F38, )
        Yay0_609F38_Yay0 = .;
        BUILD_DIR/bin/Yay0/609F38.Yay0.o(.data);
    SPLAT_END_SEG(data_609F38, 0x60A078)
    
    SPLAT_BEGIN_SEG(data_60A078, 0x60A078, 0x60A078, )
        Yay0_60A078_Yay0 = .;
        BUILD_DIR/bin/Yay0/60A078.Yay0.o(.data);
    SPLAT_END_SEG(data_60A078, 0x60A5B0)
    
    SPLAT_BEGIN_SEG(data_60A5B0, 0x60A5B0, 0x60A5B0, )
        Yay0_60A5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/60A5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_60A5B0, 0x60AB10)
    
    SPLAT_BEGIN_SEG(data_60AB10, 0x60AB10, 0x60AB10, )
        Yay0_60AB10_Yay0 = .;
        BUILD_DIR/bin/Yay0/60AB10.Yay0.o(.data);
    SPLAT_END_SEG(data_60AB10, 0x60B038)
    
    SPLAT_BEGIN_SEG(data_60B038, 0x60B038, 0x60B038, )
        Yay0_60B038_Yay0 = .;
        BUILD_DIR/bin/Yay0/60B038.Yay0.o(.data);
    SPLAT_END_SEG(data_60B038, 0x60B5F0)
    
    SPLAT_BEGIN_SEG(data_60B5F0, 0x60B5F0, 0x60B5F0, )
        Yay0_60B5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/60B5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_60B5F0, 0x60BB38)
    
    SPLAT_BEGIN_SEG(data_60BB38, 0x60BB38, 0x60BB38, )
        Yay0_60BB38_Yay0 = .;
        BUILD_DIR/bin/Yay0/60BB38.Yay0.o(.data);
    SPLAT_END_SEG(data_60BB38, 0x60C0B8)
    
    SPLAT_BEGIN_SEG(data_60C0B8, 0x60C0B8, 0x60C0B8, )
        Yay0_60C0B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/60C0B8.Yay0.o(.data);
    SPLAT_END_SEG(data_60C0B8, 0x60C648)
    
    SPLAT_BEGIN_SEG(data_60C648, 0x60C648, 0x60C648, )
        Yay0_60C648_Yay0 = .;
        BUILD_DIR/bin/Yay0/60C648.Yay0.o(.data);
    SPLAT_END_SEG(data_60C648, 0x60CE80)
    
    SPLAT_BEGIN_SEG(data_60CE80, 0x60CE80, 0x60CE80, )
        Yay0_60CE80_Yay0 = .;
        BUILD_DIR/bin/Yay0/60CE80.Yay0.o(.data);
    SPLAT_END_SEG(data_60CE80, 0x60D068)
    
    SPLAT_BEGIN_SEG(data_60D068, 0x60D068, 0x60D068, )
        Yay0_60D068_Yay0 = .;
        BUILD_DIR/bin/Yay0/60D068.Yay0.o(.data);
    SPLAT_END_SEG(data_60D068, 0x60D4B8)
    
    SPLAT_BEGIN_SEG(data_60D4B8, 0x60D4B8, 0x60D4B8, )
        Yay0_60D4B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/60D4B8.Yay0.o(.data);
    SPLAT_END_SEG(data_60D4B8, 0x60D680)
    
    SPLAT_BEGIN_SEG(data_60D680, 0x60D680, 0x60D680, )
        Yay0_60D680_Yay0 = .;
        BUILD_DIR/bin/Yay0/60D680.Yay0.o(.data);
    SPLAT_END_SEG(data_60D680, 0x60D868)
    
    SPLAT_BEGIN_SEG(data_60D868, 0x60D868, 0x60D868, )
        Yay0_60D868_Yay0 = .;
        BUILD_DIR/bin/Yay0/60D868.Yay0.o(.data);
    SPLAT_END_SEG(data_60D868, 0x611940)
    
    SPLAT_BEGIN_SEG(data_611940, 0x611940, 0x611940, )
        Yay0_611940_Yay0 = .;
        BUILD_DIR/bin/Yay0/611940.Yay0.o(.data);
    SPLAT_END_SEG(data_611940, 0x6119E0)
    
    SPLAT_BEGIN_SEG(data_6119E0, 0x6119E0, 0x6119E0, )
        Yay0_6119E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6119E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6119E0, 0x614800)
    
    SPLAT_BEGIN_SEG(data_614800, 0x614800, 0x614800, )
        Yay0_614800_Yay0 = .;
        BUILD_DIR/bin/Yay0/614800.Yay0.o(.data);
    SPLAT_END_SEG(data_614800, 0x6149D8)
    
    SPLAT_BEGIN_SEG(data_6149D8, 0x6149D8, 0x6149D8, )
        Yay0_6149D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6149D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6149D8, 0x614B80)
    
    SPLAT_BEGIN_SEG(data_614B80, 0x614B80, 0x614B80, )
        Yay0_614B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/614B80.Yay0.o(.data);
    SPLAT_END_SEG(data_614B80, 0x615E80)
    
    SPLAT_BEGIN_SEG(data_615E80, 0x615E80, 0x615E80, )
        Yay0_615E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/615E80.Yay0.o(.data);
    SPLAT_END_SEG(data_615E80, 0x6178F0)
    
    SPLAT_BEGIN_SEG(data_6178F0, 0x6178F0, 0x6178F0, )
        Yay0_6178F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6178F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6178F0, 0x6185E8)
    
    SPLAT_BEGIN_SEG(data_6185E8, 0x6185E8, 0x6185E8, )
        Yay0_6185E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6185E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6185E8, 0x619378)
    
    SPLAT_BEGIN_SEG(data_619378, 0x619378, 0x619378, )
        Yay0_619378_Yay0 = .;
        BUILD_DIR/bin/Yay0/619378.Yay0.o(.data);
    SPLAT_END_SEG(data_619378, 0x619A68)
    
    SPLAT_BEGIN_SEG(data_619A68, 0x619A68, 0x619A68, )
        Yay0_619A68_Yay0 = .;
        BUILD_DIR/bin/Yay0/619A68.Yay0.o(.data);
    SPLAT_END_SEG(data_619A68, 0x619AC0)
    
    SPLAT_BEGIN_SEG(data_619AC0, 0x619AC0, 0x619AC0, )
        Yay0_619AC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/619AC0.Yay0.o(.data);
    SPLAT_END_SEG(data_619AC0, 0x61A910)
    
    SPLAT_BEGIN_SEG(data_61A910, 0x61A910, 0x61A910, )
        Yay0_61A910_Yay0 = .;
        BUILD_DIR/bin/Yay0/61A910.Yay0.o(.data);
    SPLAT_END_SEG(data_61A910, 0x61A988)
    
    SPLAT_BEGIN_SEG(data_61A988, 0x61A988, 0x61A988, )
        Yay0_61A988_Yay0 = .;
        BUILD_DIR/bin/Yay0/61A988.Yay0.o(.data);
    SPLAT_END_SEG(data_61A988, 0x61ACC0)
    
    SPLAT_BEGIN_SEG(data_61ACC0, 0x61ACC0, 0x61ACC0, )
        Yay0_61ACC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/61ACC0.Yay0.o(.data);
    SPLAT_END_SEG(data_61ACC0, 0x61B4E0)
    
    SPLAT_BEGIN_SEG(data_61B4E0, 0x61B4E0, 0x61B4E0, )
        Yay0_61B4E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/61B4E0.Yay0.o(.data);
    SPLAT_END_SEG(data_61B4E0, 0x61B678)
    
    SPLAT_BEGIN_SEG(data_61B678, 0x61B678, 0x61B678, )
        Yay0_61B678_Yay0 = .;
        BUILD_DIR/bin/Yay0/61B678.Yay0.o(.data);
    SPLAT_END_SEG(data_61B678, 0x61B948)
    
    SPLAT_BEGIN_SEG(data_61B948, 0x61B948, 0x61B948, )
        Yay0_61B948_Yay0 = .;
        BUILD_DIR/bin/Yay0/61B948.Yay0.o(.data);
    SPLAT_END_SEG(data_61B948, 0x61BFE8)
    
    SPLAT_BEGIN_SEG(data_61BFE8, 0x61BFE8, 0x61BFE8, )
        Yay0_61BFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/61BFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_61BFE8, 0x61E0D8)
    
    SPLAT_BEGIN_SEG(data_61E0D8, 0x61E0D8, 0x61E0D8, )
        Yay0_61E0D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/61E0D8.Yay0.o(.data);
    SPLAT_END_SEG(data_61E0D8, 0x61E870)
    
    SPLAT_BEGIN_SEG(data_61E870, 0x61E870, 0x61E870, )
        Yay0_61E870_Yay0 = .;
        BUILD_DIR/bin/Yay0/61E870.Yay0.o(.data);
    SPLAT_END_SEG(data_61E870, 0x61EB28)
    
    SPLAT_BEGIN_SEG(data_61EB28, 0x61EB28, 0x61EB28, )
        Yay0_61EB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/61EB28.Yay0.o(.data);
    SPLAT_END_SEG(data_61EB28, 0x61ECC8)
    
    SPLAT_BEGIN_SEG(data_61ECC8, 0x61ECC8, 0x61ECC8, )
        Yay0_61ECC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/61ECC8.Yay0.o(.data);
    SPLAT_END_SEG(data_61ECC8, 0x6202F0)
    
    SPLAT_BEGIN_SEG(data_6202F0, 0x6202F0, 0x6202F0, )
        Yay0_6202F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6202F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6202F0, 0x6206C8)
    
    SPLAT_BEGIN_SEG(data_6206C8, 0x6206C8, 0x6206C8, )
        Yay0_6206C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6206C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6206C8, 0x620AC8)
    
    SPLAT_BEGIN_SEG(data_620AC8, 0x620AC8, 0x620AC8, )
        Yay0_620AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/620AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_620AC8, 0x6212A8)
    
    SPLAT_BEGIN_SEG(data_6212A8, 0x6212A8, 0x6212A8, )
        Yay0_6212A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6212A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6212A8, 0x621C60)
    
    SPLAT_BEGIN_SEG(data_621C60, 0x621C60, 0x621C60, )
        Yay0_621C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/621C60.Yay0.o(.data);
    SPLAT_END_SEG(data_621C60, 0x6225B0)
    
    SPLAT_BEGIN_SEG(data_6225B0, 0x6225B0, 0x6225B0, )
        Yay0_6225B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6225B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6225B0, 0x622700)
    
    SPLAT_BEGIN_SEG(data_622700, 0x622700, 0x622700, )
        Yay0_622700_Yay0 = .;
        BUILD_DIR/bin/Yay0/622700.Yay0.o(.data);
    SPLAT_END_SEG(data_622700, 0x623398)
    
    SPLAT_BEGIN_SEG(data_623398, 0x623398, 0x623398, )
        Yay0_623398_Yay0 = .;
        BUILD_DIR/bin/Yay0/623398.Yay0.o(.data);
    SPLAT_END_SEG(data_623398, 0x624640)
    
    SPLAT_BEGIN_SEG(data_624640, 0x624640, 0x624640, )
        Yay0_624640_Yay0 = .;
        BUILD_DIR/bin/Yay0/624640.Yay0.o(.data);
    SPLAT_END_SEG(data_624640, 0x624770)
    
    SPLAT_BEGIN_SEG(data_624770, 0x624770, 0x624770, )
        Yay0_624770_Yay0 = .;
        BUILD_DIR/bin/Yay0/624770.Yay0.o(.data);
    SPLAT_END_SEG(data_624770, 0x6248A8)
    
    SPLAT_BEGIN_SEG(data_6248A8, 0x6248A8, 0x6248A8, )
        Yay0_6248A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6248A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6248A8, 0x6249C0)
    
    SPLAT_BEGIN_SEG(data_6249C0, 0x6249C0, 0x6249C0, )
        Yay0_6249C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6249C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6249C0, 0x6256D0)
    
    SPLAT_BEGIN_SEG(data_6256D0, 0x6256D0, 0x6256D0, )
        Yay0_6256D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6256D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6256D0, 0x625890)
    
    SPLAT_BEGIN_SEG(data_625890, 0x625890, 0x625890, )
        Yay0_625890_Yay0 = .;
        BUILD_DIR/bin/Yay0/625890.Yay0.o(.data);
    SPLAT_END_SEG(data_625890, 0x625900)
    
    SPLAT_BEGIN_SEG(data_625900, 0x625900, 0x625900, )
        Yay0_625900_Yay0 = .;
        BUILD_DIR/bin/Yay0/625900.Yay0.o(.data);
    SPLAT_END_SEG(data_625900, 0x625968)
    
    SPLAT_BEGIN_SEG(data_625968, 0x625968, 0x625968, )
        Yay0_625968_Yay0 = .;
        BUILD_DIR/bin/Yay0/625968.Yay0.o(.data);
    SPLAT_END_SEG(data_625968, 0x6259D8)
    
    SPLAT_BEGIN_SEG(data_6259D8, 0x6259D8, 0x6259D8, )
        Yay0_6259D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6259D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6259D8, 0x625A50)
    
    SPLAT_BEGIN_SEG(data_625A50, 0x625A50, 0x625A50, )
        Yay0_625A50_Yay0 = .;
        BUILD_DIR/bin/Yay0/625A50.Yay0.o(.data);
    SPLAT_END_SEG(data_625A50, 0x625B20)
    
    SPLAT_BEGIN_SEG(data_625B20, 0x625B20, 0x625B20, )
        Yay0_625B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/625B20.Yay0.o(.data);
    SPLAT_END_SEG(data_625B20, 0x625B88)
    
    SPLAT_BEGIN_SEG(data_625B88, 0x625B88, 0x625B88, )
        Yay0_625B88_Yay0 = .;
        BUILD_DIR/bin/Yay0/625B88.Yay0.o(.data);
    SPLAT_END_SEG(data_625B88, 0x625BD0)
    
    SPLAT_BEGIN_SEG(data_625BD0, 0x625BD0, 0x625BD0, )
        Yay0_625BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/625BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_625BD0, 0x625C10)
    
    SPLAT_BEGIN_SEG(data_625C10, 0x625C10, 0x625C10, )
        Yay0_625C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/625C10.Yay0.o(.data);
    SPLAT_END_SEG(data_625C10, 0x625F58)
    
    SPLAT_BEGIN_SEG(data_625F58, 0x625F58, 0x625F58, )
        Yay0_625F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/625F58.Yay0.o(.data);
    SPLAT_END_SEG(data_625F58, 0x6265D8)
    
    SPLAT_BEGIN_SEG(data_6265D8, 0x6265D8, 0x6265D8, )
        Yay0_6265D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6265D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6265D8, 0x626B40)
    
    SPLAT_BEGIN_SEG(data_626B40, 0x626B40, 0x626B40, )
        Yay0_626B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/626B40.Yay0.o(.data);
    SPLAT_END_SEG(data_626B40, 0x627138)
    
    SPLAT_BEGIN_SEG(data_627138, 0x627138, 0x627138, )
        Yay0_627138_Yay0 = .;
        BUILD_DIR/bin/Yay0/627138.Yay0.o(.data);
    SPLAT_END_SEG(data_627138, 0x6276F0)
    
    SPLAT_BEGIN_SEG(data_6276F0, 0x6276F0, 0x6276F0, )
        Yay0_6276F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6276F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6276F0, 0x627CA0)
    
    SPLAT_BEGIN_SEG(data_627CA0, 0x627CA0, 0x627CA0, )
        Yay0_627CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/627CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_627CA0, 0x6281C0)
    
    SPLAT_BEGIN_SEG(data_6281C0, 0x6281C0, 0x6281C0, )
        Yay0_6281C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6281C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6281C0, 0x6286F8)
    
    SPLAT_BEGIN_SEG(data_6286F8, 0x6286F8, 0x6286F8, )
        Yay0_6286F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6286F8.Yay0.o(.data);
    SPLAT_END_SEG(data_6286F8, 0x628A48)
    
    SPLAT_BEGIN_SEG(data_628A48, 0x628A48, 0x628A48, )
        Yay0_628A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/628A48.Yay0.o(.data);
    SPLAT_END_SEG(data_628A48, 0x628DC8)
    
    SPLAT_BEGIN_SEG(data_628DC8, 0x628DC8, 0x628DC8, )
        Yay0_628DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/628DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_628DC8, 0x628E68)
    
    SPLAT_BEGIN_SEG(data_628E68, 0x628E68, 0x628E68, )
        Yay0_628E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/628E68.Yay0.o(.data);
    SPLAT_END_SEG(data_628E68, 0x629068)
    
    SPLAT_BEGIN_SEG(data_629068, 0x629068, 0x629068, )
        Yay0_629068_Yay0 = .;
        BUILD_DIR/bin/Yay0/629068.Yay0.o(.data);
    SPLAT_END_SEG(data_629068, 0x629220)
    
    SPLAT_BEGIN_SEG(data_629220, 0x629220, 0x629220, )
        Yay0_629220_Yay0 = .;
        BUILD_DIR/bin/Yay0/629220.Yay0.o(.data);
    SPLAT_END_SEG(data_629220, 0x6294A8)
    
    SPLAT_BEGIN_SEG(data_6294A8, 0x6294A8, 0x6294A8, )
        Yay0_6294A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6294A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6294A8, 0x6296C0)
    
    SPLAT_BEGIN_SEG(data_6296C0, 0x6296C0, 0x6296C0, )
        Yay0_6296C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6296C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6296C0, 0x629908)
    
    SPLAT_BEGIN_SEG(data_629908, 0x629908, 0x629908, )
        Yay0_629908_Yay0 = .;
        BUILD_DIR/bin/Yay0/629908.Yay0.o(.data);
    SPLAT_END_SEG(data_629908, 0x6299C0)
    
    SPLAT_BEGIN_SEG(data_6299C0, 0x6299C0, 0x6299C0, )
        Yay0_6299C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6299C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6299C0, 0x629BE0)
    
    SPLAT_BEGIN_SEG(data_629BE0, 0x629BE0, 0x629BE0, )
        Yay0_629BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/629BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_629BE0, 0x629E88)
    
    SPLAT_BEGIN_SEG(data_629E88, 0x629E88, 0x629E88, )
        Yay0_629E88_Yay0 = .;
        BUILD_DIR/bin/Yay0/629E88.Yay0.o(.data);
    SPLAT_END_SEG(data_629E88, 0x62A0F0)
    
    SPLAT_BEGIN_SEG(data_62A0F0, 0x62A0F0, 0x62A0F0, )
        Yay0_62A0F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/62A0F0.Yay0.o(.data);
    SPLAT_END_SEG(data_62A0F0, 0x62A728)
    
    SPLAT_BEGIN_SEG(data_62A728, 0x62A728, 0x62A728, )
        Yay0_62A728_Yay0 = .;
        BUILD_DIR/bin/Yay0/62A728.Yay0.o(.data);
    SPLAT_END_SEG(data_62A728, 0x62A978)
    
    SPLAT_BEGIN_SEG(data_62A978, 0x62A978, 0x62A978, )
        Yay0_62A978_Yay0 = .;
        BUILD_DIR/bin/Yay0/62A978.Yay0.o(.data);
    SPLAT_END_SEG(data_62A978, 0x62ABE0)
    
    SPLAT_BEGIN_SEG(data_62ABE0, 0x62ABE0, 0x62ABE0, )
        Yay0_62ABE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/62ABE0.Yay0.o(.data);
    SPLAT_END_SEG(data_62ABE0, 0x62AE78)
    
    SPLAT_BEGIN_SEG(data_62AE78, 0x62AE78, 0x62AE78, )
        Yay0_62AE78_Yay0 = .;
        BUILD_DIR/bin/Yay0/62AE78.Yay0.o(.data);
    SPLAT_END_SEG(data_62AE78, 0x62AFD0)
    
    SPLAT_BEGIN_SEG(data_62AFD0, 0x62AFD0, 0x62AFD0, )
        Yay0_62AFD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/62AFD0.Yay0.o(.data);
    SPLAT_END_SEG(data_62AFD0, 0x62B108)
    
    SPLAT_BEGIN_SEG(data_62B108, 0x62B108, 0x62B108, )
        Yay0_62B108_Yay0 = .;
        BUILD_DIR/bin/Yay0/62B108.Yay0.o(.data);
    SPLAT_END_SEG(data_62B108, 0x62B588)
    
    SPLAT_BEGIN_SEG(data_62B588, 0x62B588, 0x62B588, )
        Yay0_62B588_Yay0 = .;
        BUILD_DIR/bin/Yay0/62B588.Yay0.o(.data);
    SPLAT_END_SEG(data_62B588, 0x62BB68)
    
    SPLAT_BEGIN_SEG(data_62BB68, 0x62BB68, 0x62BB68, )
        Yay0_62BB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/62BB68.Yay0.o(.data);
    SPLAT_END_SEG(data_62BB68, 0x62C260)
    
    SPLAT_BEGIN_SEG(data_62C260, 0x62C260, 0x62C260, )
        Yay0_62C260_Yay0 = .;
        BUILD_DIR/bin/Yay0/62C260.Yay0.o(.data);
    SPLAT_END_SEG(data_62C260, 0x62C5F8)
    
    SPLAT_BEGIN_SEG(data_62C5F8, 0x62C5F8, 0x62C5F8, )
        Yay0_62C5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/62C5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_62C5F8, 0x62C8F0)
    
    SPLAT_BEGIN_SEG(data_62C8F0, 0x62C8F0, 0x62C8F0, )
        Yay0_62C8F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/62C8F0.Yay0.o(.data);
    SPLAT_END_SEG(data_62C8F0, 0x62CBB0)
    
    SPLAT_BEGIN_SEG(data_62CBB0, 0x62CBB0, 0x62CBB0, )
        Yay0_62CBB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/62CBB0.Yay0.o(.data);
    SPLAT_END_SEG(data_62CBB0, 0x62CCE8)
    
    SPLAT_BEGIN_SEG(data_62CCE8, 0x62CCE8, 0x62CCE8, )
        Yay0_62CCE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/62CCE8.Yay0.o(.data);
    SPLAT_END_SEG(data_62CCE8, 0x62CF50)
    
    SPLAT_BEGIN_SEG(data_62CF50, 0x62CF50, 0x62CF50, )
        Yay0_62CF50_Yay0 = .;
        BUILD_DIR/bin/Yay0/62CF50.Yay0.o(.data);
    SPLAT_END_SEG(data_62CF50, 0x62DA38)
    
    SPLAT_BEGIN_SEG(data_62DA38, 0x62DA38, 0x62DA38, )
        Yay0_62DA38_Yay0 = .;
        BUILD_DIR/bin/Yay0/62DA38.Yay0.o(.data);
    SPLAT_END_SEG(data_62DA38, 0x62DDD8)
    
    SPLAT_BEGIN_SEG(data_62DDD8, 0x62DDD8, 0x62DDD8, )
        Yay0_62DDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/62DDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_62DDD8, 0x62E0E8)
    
    SPLAT_BEGIN_SEG(data_62E0E8, 0x62E0E8, 0x62E0E8, )
        Yay0_62E0E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/62E0E8.Yay0.o(.data);
    SPLAT_END_SEG(data_62E0E8, 0x62E320)
    
    SPLAT_BEGIN_SEG(data_62E320, 0x62E320, 0x62E320, )
        Yay0_62E320_Yay0 = .;
        BUILD_DIR/bin/Yay0/62E320.Yay0.o(.data);
    SPLAT_END_SEG(data_62E320, 0x62E6F8)
    
    SPLAT_BEGIN_SEG(data_62E6F8, 0x62E6F8, 0x62E6F8, )
        Yay0_62E6F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/62E6F8.Yay0.o(.data);
    SPLAT_END_SEG(data_62E6F8, 0x62EC88)
    
    SPLAT_BEGIN_SEG(data_62EC88, 0x62EC88, 0x62EC88, )
        Yay0_62EC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/62EC88.Yay0.o(.data);
    SPLAT_END_SEG(data_62EC88, 0x62FBE0)
    
    SPLAT_BEGIN_SEG(data_62FBE0, 0x62FBE0, 0x62FBE0, )
        Yay0_62FBE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/62FBE0.Yay0.o(.data);
    SPLAT_END_SEG(data_62FBE0, 0x6300A0)
    
    SPLAT_BEGIN_SEG(data_6300A0, 0x6300A0, 0x6300A0, )
        Yay0_6300A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6300A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6300A0, 0x6301E8)
    
    SPLAT_BEGIN_SEG(data_6301E8, 0x6301E8, 0x6301E8, )
        Yay0_6301E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6301E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6301E8, 0x630340)
    
    SPLAT_BEGIN_SEG(data_630340, 0x630340, 0x630340, )
        Yay0_630340_Yay0 = .;
        BUILD_DIR/bin/Yay0/630340.Yay0.o(.data);
    SPLAT_END_SEG(data_630340, 0x630428)
    
    SPLAT_BEGIN_SEG(data_630428, 0x630428, 0x630428, )
        Yay0_630428_Yay0 = .;
        BUILD_DIR/bin/Yay0/630428.Yay0.o(.data);
    SPLAT_END_SEG(data_630428, 0x630558)
    
    SPLAT_BEGIN_SEG(data_630558, 0x630558, 0x630558, )
        Yay0_630558_Yay0 = .;
        BUILD_DIR/bin/Yay0/630558.Yay0.o(.data);
    SPLAT_END_SEG(data_630558, 0x630760)
    
    SPLAT_BEGIN_SEG(data_630760, 0x630760, 0x630760, )
        Yay0_630760_Yay0 = .;
        BUILD_DIR/bin/Yay0/630760.Yay0.o(.data);
    SPLAT_END_SEG(data_630760, 0x630BD0)
    
    SPLAT_BEGIN_SEG(data_630BD0, 0x630BD0, 0x630BD0, )
        Yay0_630BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/630BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_630BD0, 0x631110)
    
    SPLAT_BEGIN_SEG(data_631110, 0x631110, 0x631110, )
        Yay0_631110_Yay0 = .;
        BUILD_DIR/bin/Yay0/631110.Yay0.o(.data);
    SPLAT_END_SEG(data_631110, 0x631590)
    
    SPLAT_BEGIN_SEG(data_631590, 0x631590, 0x631590, )
        Yay0_631590_Yay0 = .;
        BUILD_DIR/bin/Yay0/631590.Yay0.o(.data);
    SPLAT_END_SEG(data_631590, 0x631938)
    
    SPLAT_BEGIN_SEG(data_631938, 0x631938, 0x631938, )
        Yay0_631938_Yay0 = .;
        BUILD_DIR/bin/Yay0/631938.Yay0.o(.data);
    SPLAT_END_SEG(data_631938, 0x631E10)
    
    SPLAT_BEGIN_SEG(data_631E10, 0x631E10, 0x631E10, )
        Yay0_631E10_Yay0 = .;
        BUILD_DIR/bin/Yay0/631E10.Yay0.o(.data);
    SPLAT_END_SEG(data_631E10, 0x632168)
    
    SPLAT_BEGIN_SEG(data_632168, 0x632168, 0x632168, )
        Yay0_632168_Yay0 = .;
        BUILD_DIR/bin/Yay0/632168.Yay0.o(.data);
    SPLAT_END_SEG(data_632168, 0x6323A8)
    
    SPLAT_BEGIN_SEG(data_6323A8, 0x6323A8, 0x6323A8, )
        Yay0_6323A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6323A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6323A8, 0x632430)
    
    SPLAT_BEGIN_SEG(data_632430, 0x632430, 0x632430, )
        Yay0_632430_Yay0 = .;
        BUILD_DIR/bin/Yay0/632430.Yay0.o(.data);
    SPLAT_END_SEG(data_632430, 0x632710)
    
    SPLAT_BEGIN_SEG(data_632710, 0x632710, 0x632710, )
        Yay0_632710_Yay0 = .;
        BUILD_DIR/bin/Yay0/632710.Yay0.o(.data);
    SPLAT_END_SEG(data_632710, 0x632858)
    
    SPLAT_BEGIN_SEG(data_632858, 0x632858, 0x632858, )
        Yay0_632858_Yay0 = .;
        BUILD_DIR/bin/Yay0/632858.Yay0.o(.data);
    SPLAT_END_SEG(data_632858, 0x6328D0)
    
    SPLAT_BEGIN_SEG(data_6328D0, 0x6328D0, 0x6328D0, )
        Yay0_6328D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6328D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6328D0, 0x632948)
    
    SPLAT_BEGIN_SEG(data_632948, 0x632948, 0x632948, )
        Yay0_632948_Yay0 = .;
        BUILD_DIR/bin/Yay0/632948.Yay0.o(.data);
    SPLAT_END_SEG(data_632948, 0x6329C0)
    
    SPLAT_BEGIN_SEG(data_6329C0, 0x6329C0, 0x6329C0, )
        Yay0_6329C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6329C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6329C0, 0x632A20)
    
    SPLAT_BEGIN_SEG(data_632A20, 0x632A20, 0x632A20, )
        Yay0_632A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/632A20.Yay0.o(.data);
    SPLAT_END_SEG(data_632A20, 0x632AB8)
    
    SPLAT_BEGIN_SEG(data_632AB8, 0x632AB8, 0x632AB8, )
        Yay0_632AB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/632AB8.Yay0.o(.data);
    SPLAT_END_SEG(data_632AB8, 0x632B30)
    
    SPLAT_BEGIN_SEG(data_632B30, 0x632B30, 0x632B30, )
        Yay0_632B30_Yay0 = .;
        BUILD_DIR/bin/Yay0/632B30.Yay0.o(.data);
    SPLAT_END_SEG(data_632B30, 0x632F08)
    
    SPLAT_BEGIN_SEG(data_632F08, 0x632F08, 0x632F08, )
        Yay0_632F08_Yay0 = .;
        BUILD_DIR/bin/Yay0/632F08.Yay0.o(.data);
    SPLAT_END_SEG(data_632F08, 0x632F48)
    
    SPLAT_BEGIN_SEG(data_632F48, 0x632F48, 0x632F48, )
        Yay0_632F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/632F48.Yay0.o(.data);
    SPLAT_END_SEG(data_632F48, 0x632FD8)
    
    SPLAT_BEGIN_SEG(data_632FD8, 0x632FD8, 0x632FD8, )
        Yay0_632FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/632FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_632FD8, 0x633038)
    
    SPLAT_BEGIN_SEG(data_633038, 0x633038, 0x633038, )
        Yay0_633038_Yay0 = .;
        BUILD_DIR/bin/Yay0/633038.Yay0.o(.data);
    SPLAT_END_SEG(data_633038, 0x633160)
    
    SPLAT_BEGIN_SEG(data_633160, 0x633160, 0x633160, )
        Yay0_633160_Yay0 = .;
        BUILD_DIR/bin/Yay0/633160.Yay0.o(.data);
    SPLAT_END_SEG(data_633160, 0x6331C8)
    
    SPLAT_BEGIN_SEG(data_6331C8, 0x6331C8, 0x6331C8, )
        Yay0_6331C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6331C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6331C8, 0x633240)
    
    SPLAT_BEGIN_SEG(data_633240, 0x633240, 0x633240, )
        Yay0_633240_Yay0 = .;
        BUILD_DIR/bin/Yay0/633240.Yay0.o(.data);
    SPLAT_END_SEG(data_633240, 0x6333B0)
    
    SPLAT_BEGIN_SEG(data_6333B0, 0x6333B0, 0x6333B0, )
        Yay0_6333B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6333B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6333B0, 0x633560)
    
    SPLAT_BEGIN_SEG(data_633560, 0x633560, 0x633560, )
        Yay0_633560_Yay0 = .;
        BUILD_DIR/bin/Yay0/633560.Yay0.o(.data);
    SPLAT_END_SEG(data_633560, 0x633938)
    
    SPLAT_BEGIN_SEG(data_633938, 0x633938, 0x633938, )
        Yay0_633938_Yay0 = .;
        BUILD_DIR/bin/Yay0/633938.Yay0.o(.data);
    SPLAT_END_SEG(data_633938, 0x633DB0)
    
    SPLAT_BEGIN_SEG(data_633DB0, 0x633DB0, 0x633DB0, )
        Yay0_633DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/633DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_633DB0, 0x633E90)
    
    SPLAT_BEGIN_SEG(data_633E90, 0x633E90, 0x633E90, )
        Yay0_633E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/633E90.Yay0.o(.data);
    SPLAT_END_SEG(data_633E90, 0x6340D0)
    
    SPLAT_BEGIN_SEG(data_6340D0, 0x6340D0, 0x6340D0, )
        Yay0_6340D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6340D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6340D0, 0x634518)
    
    SPLAT_BEGIN_SEG(data_634518, 0x634518, 0x634518, )
        Yay0_634518_Yay0 = .;
        BUILD_DIR/bin/Yay0/634518.Yay0.o(.data);
    SPLAT_END_SEG(data_634518, 0x634800)
    
    SPLAT_BEGIN_SEG(data_634800, 0x634800, 0x634800, )
        Yay0_634800_Yay0 = .;
        BUILD_DIR/bin/Yay0/634800.Yay0.o(.data);
    SPLAT_END_SEG(data_634800, 0x634BC0)
    
    SPLAT_BEGIN_SEG(data_634BC0, 0x634BC0, 0x634BC0, )
        Yay0_634BC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/634BC0.Yay0.o(.data);
    SPLAT_END_SEG(data_634BC0, 0x6350F8)
    
    SPLAT_BEGIN_SEG(data_6350F8, 0x6350F8, 0x6350F8, )
        Yay0_6350F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6350F8.Yay0.o(.data);
    SPLAT_END_SEG(data_6350F8, 0x635288)
    
    SPLAT_BEGIN_SEG(data_635288, 0x635288, 0x635288, )
        Yay0_635288_Yay0 = .;
        BUILD_DIR/bin/Yay0/635288.Yay0.o(.data);
    SPLAT_END_SEG(data_635288, 0x6356A8)
    
    SPLAT_BEGIN_SEG(data_6356A8, 0x6356A8, 0x6356A8, )
        Yay0_6356A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6356A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6356A8, 0x6357E8)
    
    SPLAT_BEGIN_SEG(data_6357E8, 0x6357E8, 0x6357E8, )
        Yay0_6357E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6357E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6357E8, 0x635988)
    
    SPLAT_BEGIN_SEG(data_635988, 0x635988, 0x635988, )
        Yay0_635988_Yay0 = .;
        BUILD_DIR/bin/Yay0/635988.Yay0.o(.data);
    SPLAT_END_SEG(data_635988, 0x635A70)
    
    SPLAT_BEGIN_SEG(data_635A70, 0x635A70, 0x635A70, )
        Yay0_635A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/635A70.Yay0.o(.data);
    SPLAT_END_SEG(data_635A70, 0x635B00)
    
    SPLAT_BEGIN_SEG(data_635B00, 0x635B00, 0x635B00, )
        Yay0_635B00_Yay0 = .;
        BUILD_DIR/bin/Yay0/635B00.Yay0.o(.data);
    SPLAT_END_SEG(data_635B00, 0x635C60)
    
    SPLAT_BEGIN_SEG(data_635C60, 0x635C60, 0x635C60, )
        Yay0_635C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/635C60.Yay0.o(.data);
    SPLAT_END_SEG(data_635C60, 0x635CF0)
    
    SPLAT_BEGIN_SEG(data_635CF0, 0x635CF0, 0x635CF0, )
        Yay0_635CF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/635CF0.Yay0.o(.data);
    SPLAT_END_SEG(data_635CF0, 0x635E18)
    
    SPLAT_BEGIN_SEG(data_635E18, 0x635E18, 0x635E18, )
        Yay0_635E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/635E18.Yay0.o(.data);
    SPLAT_END_SEG(data_635E18, 0x636000)
    
    SPLAT_BEGIN_SEG(data_636000, 0x636000, 0x636000, )
        Yay0_636000_Yay0 = .;
        BUILD_DIR/bin/Yay0/636000.Yay0.o(.data);
    SPLAT_END_SEG(data_636000, 0x636380)
    
    SPLAT_BEGIN_SEG(data_636380, 0x636380, 0x636380, )
        Yay0_636380_Yay0 = .;
        BUILD_DIR/bin/Yay0/636380.Yay0.o(.data);
    SPLAT_END_SEG(data_636380, 0x6366D0)
    
    SPLAT_BEGIN_SEG(data_6366D0, 0x6366D0, 0x6366D0, )
        Yay0_6366D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6366D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6366D0, 0x636788)
    
    SPLAT_BEGIN_SEG(data_636788, 0x636788, 0x636788, )
        Yay0_636788_Yay0 = .;
        BUILD_DIR/bin/Yay0/636788.Yay0.o(.data);
    SPLAT_END_SEG(data_636788, 0x6367E8)
    
    SPLAT_BEGIN_SEG(data_6367E8, 0x6367E8, 0x6367E8, )
        Yay0_6367E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6367E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6367E8, 0x636860)
    
    SPLAT_BEGIN_SEG(data_636860, 0x636860, 0x636860, )
        Yay0_636860_Yay0 = .;
        BUILD_DIR/bin/Yay0/636860.Yay0.o(.data);
    SPLAT_END_SEG(data_636860, 0x636B98)
    
    SPLAT_BEGIN_SEG(data_636B98, 0x636B98, 0x636B98, )
        Yay0_636B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/636B98.Yay0.o(.data);
    SPLAT_END_SEG(data_636B98, 0x636C10)
    
    SPLAT_BEGIN_SEG(data_636C10, 0x636C10, 0x636C10, )
        Yay0_636C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/636C10.Yay0.o(.data);
    SPLAT_END_SEG(data_636C10, 0x6372A8)
    
    SPLAT_BEGIN_SEG(data_6372A8, 0x6372A8, 0x6372A8, )
        Yay0_6372A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6372A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6372A8, 0x637330)
    
    SPLAT_BEGIN_SEG(data_637330, 0x637330, 0x637330, )
        Yay0_637330_Yay0 = .;
        BUILD_DIR/bin/Yay0/637330.Yay0.o(.data);
    SPLAT_END_SEG(data_637330, 0x6373C0)
    
    SPLAT_BEGIN_SEG(data_6373C0, 0x6373C0, 0x6373C0, )
        Yay0_6373C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6373C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6373C0, 0x637450)
    
    SPLAT_BEGIN_SEG(data_637450, 0x637450, 0x637450, )
        Yay0_637450_Yay0 = .;
        BUILD_DIR/bin/Yay0/637450.Yay0.o(.data);
    SPLAT_END_SEG(data_637450, 0x637870)
    
    SPLAT_BEGIN_SEG(data_637870, 0x637870, 0x637870, )
        Yay0_637870_Yay0 = .;
        BUILD_DIR/bin/Yay0/637870.Yay0.o(.data);
    SPLAT_END_SEG(data_637870, 0x6378B0)
    
    SPLAT_BEGIN_SEG(data_6378B0, 0x6378B0, 0x6378B0, )
        Yay0_6378B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6378B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6378B0, 0x6378E8)
    
    SPLAT_BEGIN_SEG(data_6378E8, 0x6378E8, 0x6378E8, )
        Yay0_6378E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6378E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6378E8, 0x637970)
    
    SPLAT_BEGIN_SEG(data_637970, 0x637970, 0x637970, )
        Yay0_637970_Yay0 = .;
        BUILD_DIR/bin/Yay0/637970.Yay0.o(.data);
    SPLAT_END_SEG(data_637970, 0x637B70)
    
    SPLAT_BEGIN_SEG(data_637B70, 0x637B70, 0x637B70, )
        Yay0_637B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/637B70.Yay0.o(.data);
    SPLAT_END_SEG(data_637B70, 0x637BF8)
    
    SPLAT_BEGIN_SEG(data_637BF8, 0x637BF8, 0x637BF8, )
        Yay0_637BF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/637BF8.Yay0.o(.data);
    SPLAT_END_SEG(data_637BF8, 0x637C88)
    
    SPLAT_BEGIN_SEG(data_637C88, 0x637C88, 0x637C88, )
        Yay0_637C88_Yay0 = .;
        BUILD_DIR/bin/Yay0/637C88.Yay0.o(.data);
    SPLAT_END_SEG(data_637C88, 0x637F18)
    
    SPLAT_BEGIN_SEG(data_637F18, 0x637F18, 0x637F18, )
        Yay0_637F18_Yay0 = .;
        BUILD_DIR/bin/Yay0/637F18.Yay0.o(.data);
    SPLAT_END_SEG(data_637F18, 0x638130)
    
    SPLAT_BEGIN_SEG(data_638130, 0x638130, 0x638130, )
        Yay0_638130_Yay0 = .;
        BUILD_DIR/bin/Yay0/638130.Yay0.o(.data);
    SPLAT_END_SEG(data_638130, 0x638170)
    
    SPLAT_BEGIN_SEG(data_638170, 0x638170, 0x638170, )
        Yay0_638170_Yay0 = .;
        BUILD_DIR/bin/Yay0/638170.Yay0.o(.data);
    SPLAT_END_SEG(data_638170, 0x6381B0)
    
    SPLAT_BEGIN_SEG(data_6381B0, 0x6381B0, 0x6381B0, )
        Yay0_6381B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6381B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6381B0, 0x638478)
    
    SPLAT_BEGIN_SEG(data_638478, 0x638478, 0x638478, )
        Yay0_638478_Yay0 = .;
        BUILD_DIR/bin/Yay0/638478.Yay0.o(.data);
    SPLAT_END_SEG(data_638478, 0x638740)
    
    SPLAT_BEGIN_SEG(data_638740, 0x638740, 0x638740, )
        Yay0_638740_Yay0 = .;
        BUILD_DIR/bin/Yay0/638740.Yay0.o(.data);
    SPLAT_END_SEG(data_638740, 0x638808)
    
    SPLAT_BEGIN_SEG(data_638808, 0x638808, 0x638808, )
        Yay0_638808_Yay0 = .;
        BUILD_DIR/bin/Yay0/638808.Yay0.o(.data);
    SPLAT_END_SEG(data_638808, 0x6388D0)
    
    SPLAT_BEGIN_SEG(data_6388D0, 0x6388D0, 0x6388D0, )
        Yay0_6388D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6388D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6388D0, 0x638B40)
    
    SPLAT_BEGIN_SEG(data_638B40, 0x638B40, 0x638B40, )
        Yay0_638B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/638B40.Yay0.o(.data);
    SPLAT_END_SEG(data_638B40, 0x638C10)
    
    SPLAT_BEGIN_SEG(data_638C10, 0x638C10, 0x638C10, )
        Yay0_638C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/638C10.Yay0.o(.data);
    SPLAT_END_SEG(data_638C10, 0x638CC8)
    
    SPLAT_BEGIN_SEG(data_638CC8, 0x638CC8, 0x638CC8, )
        Yay0_638CC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/638CC8.Yay0.o(.data);
    SPLAT_END_SEG(data_638CC8, 0x638F48)
    
    SPLAT_BEGIN_SEG(data_638F48, 0x638F48, 0x638F48, )
        Yay0_638F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/638F48.Yay0.o(.data);
    SPLAT_END_SEG(data_638F48, 0x639018)
    
    SPLAT_BEGIN_SEG(data_639018, 0x639018, 0x639018, )
        Yay0_639018_Yay0 = .;
        BUILD_DIR/bin/Yay0/639018.Yay0.o(.data);
    SPLAT_END_SEG(data_639018, 0x6392E0)
    
    SPLAT_BEGIN_SEG(data_6392E0, 0x6392E0, 0x6392E0, )
        Yay0_6392E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6392E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6392E0, 0x6395A0)
    
    SPLAT_BEGIN_SEG(data_6395A0, 0x6395A0, 0x6395A0, )
        Yay0_6395A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6395A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6395A0, 0x639E18)
    
    SPLAT_BEGIN_SEG(data_639E18, 0x639E18, 0x639E18, )
        Yay0_639E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/639E18.Yay0.o(.data);
    SPLAT_END_SEG(data_639E18, 0x639E98)
    
    SPLAT_BEGIN_SEG(data_639E98, 0x639E98, 0x639E98, )
        Yay0_639E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/639E98.Yay0.o(.data);
    SPLAT_END_SEG(data_639E98, 0x639F60)
    
    SPLAT_BEGIN_SEG(data_639F60, 0x639F60, 0x639F60, )
        Yay0_639F60_Yay0 = .;
        BUILD_DIR/bin/Yay0/639F60.Yay0.o(.data);
    SPLAT_END_SEG(data_639F60, 0x639FD8)
    
    SPLAT_BEGIN_SEG(data_639FD8, 0x639FD8, 0x639FD8, )
        Yay0_639FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/639FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_639FD8, 0x63A1C8)
    
    SPLAT_BEGIN_SEG(data_63A1C8, 0x63A1C8, 0x63A1C8, )
        Yay0_63A1C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/63A1C8.Yay0.o(.data);
    SPLAT_END_SEG(data_63A1C8, 0x63A7A8)
    
    SPLAT_BEGIN_SEG(data_63A7A8, 0x63A7A8, 0x63A7A8, )
        Yay0_63A7A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/63A7A8.Yay0.o(.data);
    SPLAT_END_SEG(data_63A7A8, 0x63AB68)
    
    SPLAT_BEGIN_SEG(data_63AB68, 0x63AB68, 0x63AB68, )
        Yay0_63AB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/63AB68.Yay0.o(.data);
    SPLAT_END_SEG(data_63AB68, 0x63ABB0)
    
    SPLAT_BEGIN_SEG(data_63ABB0, 0x63ABB0, 0x63ABB0, )
        Yay0_63ABB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/63ABB0.Yay0.o(.data);
    SPLAT_END_SEG(data_63ABB0, 0x63AC20)
    
    SPLAT_BEGIN_SEG(data_63AC20, 0x63AC20, 0x63AC20, )
        Yay0_63AC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/63AC20.Yay0.o(.data);
    SPLAT_END_SEG(data_63AC20, 0x63AD40)
    
    SPLAT_BEGIN_SEG(data_63AD40, 0x63AD40, 0x63AD40, )
        Yay0_63AD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/63AD40.Yay0.o(.data);
    SPLAT_END_SEG(data_63AD40, 0x63ADB8)
    
    SPLAT_BEGIN_SEG(data_63ADB8, 0x63ADB8, 0x63ADB8, )
        Yay0_63ADB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/63ADB8.Yay0.o(.data);
    SPLAT_END_SEG(data_63ADB8, 0x63B0D8)
    
    SPLAT_BEGIN_SEG(data_63B0D8, 0x63B0D8, 0x63B0D8, )
        Yay0_63B0D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/63B0D8.Yay0.o(.data);
    SPLAT_END_SEG(data_63B0D8, 0x63B2A0)
    
    SPLAT_BEGIN_SEG(data_63B2A0, 0x63B2A0, 0x63B2A0, )
        Yay0_63B2A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/63B2A0.Yay0.o(.data);
    SPLAT_END_SEG(data_63B2A0, 0x63BD80)
    
    SPLAT_BEGIN_SEG(data_63BD80, 0x63BD80, 0x63BD80, )
        Yay0_63BD80_Yay0 = .;
        BUILD_DIR/bin/Yay0/63BD80.Yay0.o(.data);
    SPLAT_END_SEG(data_63BD80, 0x63C438)
    
    SPLAT_BEGIN_SEG(data_63C438, 0x63C438, 0x63C438, )
        Yay0_63C438_Yay0 = .;
        BUILD_DIR/bin/Yay0/63C438.Yay0.o(.data);
    SPLAT_END_SEG(data_63C438, 0x63CA28)
    
    SPLAT_BEGIN_SEG(data_63CA28, 0x63CA28, 0x63CA28, )
        Yay0_63CA28_Yay0 = .;
        BUILD_DIR/bin/Yay0/63CA28.Yay0.o(.data);
    SPLAT_END_SEG(data_63CA28, 0x63D510)
    
    SPLAT_BEGIN_SEG(data_63D510, 0x63D510, 0x63D510, )
        Yay0_63D510_Yay0 = .;
        BUILD_DIR/bin/Yay0/63D510.Yay0.o(.data);
    SPLAT_END_SEG(data_63D510, 0x63DDF8)
    
    SPLAT_BEGIN_SEG(data_63DDF8, 0x63DDF8, 0x63DDF8, )
        Yay0_63DDF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/63DDF8.Yay0.o(.data);
    SPLAT_END_SEG(data_63DDF8, 0x63F2C8)
    
    SPLAT_BEGIN_SEG(data_63F2C8, 0x63F2C8, 0x63F2C8, )
        Yay0_63F2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/63F2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_63F2C8, 0x640A28)
    
    SPLAT_BEGIN_SEG(data_640A28, 0x640A28, 0x640A28, )
        Yay0_640A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/640A28.Yay0.o(.data);
    SPLAT_END_SEG(data_640A28, 0x6415D8)
    
    SPLAT_BEGIN_SEG(data_6415D8, 0x6415D8, 0x6415D8, )
        Yay0_6415D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6415D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6415D8, 0x643358)
    
    SPLAT_BEGIN_SEG(data_643358, 0x643358, 0x643358, )
        Yay0_643358_Yay0 = .;
        BUILD_DIR/bin/Yay0/643358.Yay0.o(.data);
    SPLAT_END_SEG(data_643358, 0x644370)
    
    SPLAT_BEGIN_SEG(data_644370, 0x644370, 0x644370, )
        Yay0_644370_Yay0 = .;
        BUILD_DIR/bin/Yay0/644370.Yay0.o(.data);
    SPLAT_END_SEG(data_644370, 0x6467E8)
    
    SPLAT_BEGIN_SEG(data_6467E8, 0x6467E8, 0x6467E8, )
        Yay0_6467E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6467E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6467E8, 0x6471F0)
    
    SPLAT_BEGIN_SEG(data_6471F0, 0x6471F0, 0x6471F0, )
        Yay0_6471F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6471F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6471F0, 0x6482E8)
    
    SPLAT_BEGIN_SEG(data_6482E8, 0x6482E8, 0x6482E8, )
        Yay0_6482E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6482E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6482E8, 0x648A30)
    
    SPLAT_BEGIN_SEG(data_648A30, 0x648A30, 0x648A30, )
        Yay0_648A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/648A30.Yay0.o(.data);
    SPLAT_END_SEG(data_648A30, 0x648DF0)
    
    SPLAT_BEGIN_SEG(data_648DF0, 0x648DF0, 0x648DF0, )
        Yay0_648DF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/648DF0.Yay0.o(.data);
    SPLAT_END_SEG(data_648DF0, 0x648F78)
    
    SPLAT_BEGIN_SEG(data_648F78, 0x648F78, 0x648F78, )
        Yay0_648F78_Yay0 = .;
        BUILD_DIR/bin/Yay0/648F78.Yay0.o(.data);
    SPLAT_END_SEG(data_648F78, 0x6496C0)
    
    SPLAT_BEGIN_SEG(data_6496C0, 0x6496C0, 0x6496C0, )
        Yay0_6496C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6496C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6496C0, 0x64A448)
    
    SPLAT_BEGIN_SEG(data_64A448, 0x64A448, 0x64A448, )
        Yay0_64A448_Yay0 = .;
        BUILD_DIR/bin/Yay0/64A448.Yay0.o(.data);
    SPLAT_END_SEG(data_64A448, 0x64A958)
    
    SPLAT_BEGIN_SEG(data_64A958, 0x64A958, 0x64A958, )
        Yay0_64A958_Yay0 = .;
        BUILD_DIR/bin/Yay0/64A958.Yay0.o(.data);
    SPLAT_END_SEG(data_64A958, 0x64AB10)
    
    SPLAT_BEGIN_SEG(data_64AB10, 0x64AB10, 0x64AB10, )
        Yay0_64AB10_Yay0 = .;
        BUILD_DIR/bin/Yay0/64AB10.Yay0.o(.data);
    SPLAT_END_SEG(data_64AB10, 0x64B1D8)
    
    SPLAT_BEGIN_SEG(data_64B1D8, 0x64B1D8, 0x64B1D8, )
        Yay0_64B1D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/64B1D8.Yay0.o(.data);
    SPLAT_END_SEG(data_64B1D8, 0x64B870)
    
    SPLAT_BEGIN_SEG(data_64B870, 0x64B870, 0x64B870, )
        Yay0_64B870_Yay0 = .;
        BUILD_DIR/bin/Yay0/64B870.Yay0.o(.data);
    SPLAT_END_SEG(data_64B870, 0x64BFA0)
    
    SPLAT_BEGIN_SEG(data_64BFA0, 0x64BFA0, 0x64BFA0, )
        Yay0_64BFA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/64BFA0.Yay0.o(.data);
    SPLAT_END_SEG(data_64BFA0, 0x64CB58)
    
    SPLAT_BEGIN_SEG(data_64CB58, 0x64CB58, 0x64CB58, )
        Yay0_64CB58_Yay0 = .;
        BUILD_DIR/bin/Yay0/64CB58.Yay0.o(.data);
    SPLAT_END_SEG(data_64CB58, 0x64CF38)
    
    SPLAT_BEGIN_SEG(data_64CF38, 0x64CF38, 0x64CF38, )
        Yay0_64CF38_Yay0 = .;
        BUILD_DIR/bin/Yay0/64CF38.Yay0.o(.data);
    SPLAT_END_SEG(data_64CF38, 0x64D520)
    
    SPLAT_BEGIN_SEG(data_64D520, 0x64D520, 0x64D520, )
        Yay0_64D520_Yay0 = .;
        BUILD_DIR/bin/Yay0/64D520.Yay0.o(.data);
    SPLAT_END_SEG(data_64D520, 0x64D8A0)
    
    SPLAT_BEGIN_SEG(data_64D8A0, 0x64D8A0, 0x64D8A0, )
        Yay0_64D8A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/64D8A0.Yay0.o(.data);
    SPLAT_END_SEG(data_64D8A0, 0x64DC00)
    
    SPLAT_BEGIN_SEG(data_64DC00, 0x64DC00, 0x64DC00, )
        Yay0_64DC00_Yay0 = .;
        BUILD_DIR/bin/Yay0/64DC00.Yay0.o(.data);
    SPLAT_END_SEG(data_64DC00, 0x64DDE8)
    
    SPLAT_BEGIN_SEG(data_64DDE8, 0x64DDE8, 0x64DDE8, )
        Yay0_64DDE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/64DDE8.Yay0.o(.data);
    SPLAT_END_SEG(data_64DDE8, 0x64E1A8)
    
    SPLAT_BEGIN_SEG(data_64E1A8, 0x64E1A8, 0x64E1A8, )
        Yay0_64E1A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/64E1A8.Yay0.o(.data);
    SPLAT_END_SEG(data_64E1A8, 0x64EC20)
    
    SPLAT_BEGIN_SEG(data_64EC20, 0x64EC20, 0x64EC20, )
        Yay0_64EC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/64EC20.Yay0.o(.data);
    SPLAT_END_SEG(data_64EC20, 0x64F108)
    
    SPLAT_BEGIN_SEG(data_64F108, 0x64F108, 0x64F108, )
        Yay0_64F108_Yay0 = .;
        BUILD_DIR/bin/Yay0/64F108.Yay0.o(.data);
    SPLAT_END_SEG(data_64F108, 0x650678)
    
    SPLAT_BEGIN_SEG(data_650678, 0x650678, 0x650678, )
        Yay0_650678_Yay0 = .;
        BUILD_DIR/bin/Yay0/650678.Yay0.o(.data);
    SPLAT_END_SEG(data_650678, 0x650B08)
    
    SPLAT_BEGIN_SEG(data_650B08, 0x650B08, 0x650B08, )
        Yay0_650B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/650B08.Yay0.o(.data);
    SPLAT_END_SEG(data_650B08, 0x6521B8)
    
    SPLAT_BEGIN_SEG(data_6521B8, 0x6521B8, 0x6521B8, )
        Yay0_6521B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6521B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6521B8, 0x6524E8)
    
    SPLAT_BEGIN_SEG(data_6524E8, 0x6524E8, 0x6524E8, )
        Yay0_6524E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6524E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6524E8, 0x652A40)
    
    SPLAT_BEGIN_SEG(data_652A40, 0x652A40, 0x652A40, )
        Yay0_652A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/652A40.Yay0.o(.data);
    SPLAT_END_SEG(data_652A40, 0x652C00)
    
    SPLAT_BEGIN_SEG(data_652C00, 0x652C00, 0x652C00, )
        Yay0_652C00_Yay0 = .;
        BUILD_DIR/bin/Yay0/652C00.Yay0.o(.data);
    SPLAT_END_SEG(data_652C00, 0x652D70)
    
    SPLAT_BEGIN_SEG(data_652D70, 0x652D70, 0x652D70, )
        Yay0_652D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/652D70.Yay0.o(.data);
    SPLAT_END_SEG(data_652D70, 0x653060)
    
    SPLAT_BEGIN_SEG(data_653060, 0x653060, 0x653060, )
        Yay0_653060_Yay0 = .;
        BUILD_DIR/bin/Yay0/653060.Yay0.o(.data);
    SPLAT_END_SEG(data_653060, 0x654088)
    
    SPLAT_BEGIN_SEG(data_654088, 0x654088, 0x654088, )
        Yay0_654088_Yay0 = .;
        BUILD_DIR/bin/Yay0/654088.Yay0.o(.data);
    SPLAT_END_SEG(data_654088, 0x6547E8)
    
    SPLAT_BEGIN_SEG(data_6547E8, 0x6547E8, 0x6547E8, )
        Yay0_6547E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6547E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6547E8, 0x654B70)
    
    SPLAT_BEGIN_SEG(data_654B70, 0x654B70, 0x654B70, )
        Yay0_654B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/654B70.Yay0.o(.data);
    SPLAT_END_SEG(data_654B70, 0x654F58)
    
    SPLAT_BEGIN_SEG(data_654F58, 0x654F58, 0x654F58, )
        Yay0_654F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/654F58.Yay0.o(.data);
    SPLAT_END_SEG(data_654F58, 0x655588)
    
    SPLAT_BEGIN_SEG(data_655588, 0x655588, 0x655588, )
        Yay0_655588_Yay0 = .;
        BUILD_DIR/bin/Yay0/655588.Yay0.o(.data);
    SPLAT_END_SEG(data_655588, 0x6560F8)
    
    SPLAT_BEGIN_SEG(data_6560F8, 0x6560F8, 0x6560F8, )
        Yay0_6560F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6560F8.Yay0.o(.data);
    SPLAT_END_SEG(data_6560F8, 0x656470)
    
    SPLAT_BEGIN_SEG(data_656470, 0x656470, 0x656470, )
        Yay0_656470_Yay0 = .;
        BUILD_DIR/bin/Yay0/656470.Yay0.o(.data);
    SPLAT_END_SEG(data_656470, 0x6564B0)
    
    SPLAT_BEGIN_SEG(data_6564B0, 0x6564B0, 0x6564B0, )
        Yay0_6564B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6564B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6564B0, 0x6564F0)
    
    SPLAT_BEGIN_SEG(data_6564F0, 0x6564F0, 0x6564F0, )
        Yay0_6564F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6564F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6564F0, 0x656540)
    
    SPLAT_BEGIN_SEG(data_656540, 0x656540, 0x656540, )
        Yay0_656540_Yay0 = .;
        BUILD_DIR/bin/Yay0/656540.Yay0.o(.data);
    SPLAT_END_SEG(data_656540, 0x656590)
    
    SPLAT_BEGIN_SEG(data_656590, 0x656590, 0x656590, )
        Yay0_656590_Yay0 = .;
        BUILD_DIR/bin/Yay0/656590.Yay0.o(.data);
    SPLAT_END_SEG(data_656590, 0x656C30)
    
    SPLAT_BEGIN_SEG(data_656C30, 0x656C30, 0x656C30, )
        Yay0_656C30_Yay0 = .;
        BUILD_DIR/bin/Yay0/656C30.Yay0.o(.data);
    SPLAT_END_SEG(data_656C30, 0x657390)
    
    SPLAT_BEGIN_SEG(data_657390, 0x657390, 0x657390, )
        Yay0_657390_Yay0 = .;
        BUILD_DIR/bin/Yay0/657390.Yay0.o(.data);
    SPLAT_END_SEG(data_657390, 0x657418)
    
    SPLAT_BEGIN_SEG(data_657418, 0x657418, 0x657418, )
        Yay0_657418_Yay0 = .;
        BUILD_DIR/bin/Yay0/657418.Yay0.o(.data);
    SPLAT_END_SEG(data_657418, 0x6574A0)
    
    SPLAT_BEGIN_SEG(data_6574A0, 0x6574A0, 0x6574A0, )
        Yay0_6574A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6574A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6574A0, 0x657538)
    
    SPLAT_BEGIN_SEG(data_657538, 0x657538, 0x657538, )
        Yay0_657538_Yay0 = .;
        BUILD_DIR/bin/Yay0/657538.Yay0.o(.data);
    SPLAT_END_SEG(data_657538, 0x6575A8)
    
    SPLAT_BEGIN_SEG(data_6575A8, 0x6575A8, 0x6575A8, )
        Yay0_6575A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6575A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6575A8, 0x657698)
    
    SPLAT_BEGIN_SEG(data_657698, 0x657698, 0x657698, )
        Yay0_657698_Yay0 = .;
        BUILD_DIR/bin/Yay0/657698.Yay0.o(.data);
    SPLAT_END_SEG(data_657698, 0x657700)
    
    SPLAT_BEGIN_SEG(data_657700, 0x657700, 0x657700, )
        Yay0_657700_Yay0 = .;
        BUILD_DIR/bin/Yay0/657700.Yay0.o(.data);
    SPLAT_END_SEG(data_657700, 0x6577D0)
    
    SPLAT_BEGIN_SEG(data_6577D0, 0x6577D0, 0x6577D0, )
        Yay0_6577D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6577D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6577D0, 0x657930)
    
    SPLAT_BEGIN_SEG(data_657930, 0x657930, 0x657930, )
        Yay0_657930_Yay0 = .;
        BUILD_DIR/bin/Yay0/657930.Yay0.o(.data);
    SPLAT_END_SEG(data_657930, 0x657990)
    
    SPLAT_BEGIN_SEG(data_657990, 0x657990, 0x657990, )
        Yay0_657990_Yay0 = .;
        BUILD_DIR/bin/Yay0/657990.Yay0.o(.data);
    SPLAT_END_SEG(data_657990, 0x657B08)
    
    SPLAT_BEGIN_SEG(data_657B08, 0x657B08, 0x657B08, )
        Yay0_657B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/657B08.Yay0.o(.data);
    SPLAT_END_SEG(data_657B08, 0x657BF8)
    
    SPLAT_BEGIN_SEG(data_657BF8, 0x657BF8, 0x657BF8, )
        Yay0_657BF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/657BF8.Yay0.o(.data);
    SPLAT_END_SEG(data_657BF8, 0x657D90)
    
    SPLAT_BEGIN_SEG(data_657D90, 0x657D90, 0x657D90, )
        Yay0_657D90_Yay0 = .;
        BUILD_DIR/bin/Yay0/657D90.Yay0.o(.data);
    SPLAT_END_SEG(data_657D90, 0x657FE8)
    
    SPLAT_BEGIN_SEG(data_657FE8, 0x657FE8, 0x657FE8, )
        Yay0_657FE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/657FE8.Yay0.o(.data);
    SPLAT_END_SEG(data_657FE8, 0x658310)
    
    SPLAT_BEGIN_SEG(data_658310, 0x658310, 0x658310, )
        Yay0_658310_Yay0 = .;
        BUILD_DIR/bin/Yay0/658310.Yay0.o(.data);
    SPLAT_END_SEG(data_658310, 0x6583F0)
    
    SPLAT_BEGIN_SEG(data_6583F0, 0x6583F0, 0x6583F0, )
        Yay0_6583F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6583F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6583F0, 0x6584A8)
    
    SPLAT_BEGIN_SEG(data_6584A8, 0x6584A8, 0x6584A8, )
        Yay0_6584A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6584A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6584A8, 0x658520)
    
    SPLAT_BEGIN_SEG(data_658520, 0x658520, 0x658520, )
        Yay0_658520_Yay0 = .;
        BUILD_DIR/bin/Yay0/658520.Yay0.o(.data);
    SPLAT_END_SEG(data_658520, 0x6585E0)
    
    SPLAT_BEGIN_SEG(data_6585E0, 0x6585E0, 0x6585E0, )
        Yay0_6585E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6585E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6585E0, 0x658820)
    
    SPLAT_BEGIN_SEG(data_658820, 0x658820, 0x658820, )
        Yay0_658820_Yay0 = .;
        BUILD_DIR/bin/Yay0/658820.Yay0.o(.data);
    SPLAT_END_SEG(data_658820, 0x6588A8)
    
    SPLAT_BEGIN_SEG(data_6588A8, 0x6588A8, 0x6588A8, )
        Yay0_6588A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6588A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6588A8, 0x658928)
    
    SPLAT_BEGIN_SEG(data_658928, 0x658928, 0x658928, )
        Yay0_658928_Yay0 = .;
        BUILD_DIR/bin/Yay0/658928.Yay0.o(.data);
    SPLAT_END_SEG(data_658928, 0x6589F0)
    
    SPLAT_BEGIN_SEG(data_6589F0, 0x6589F0, 0x6589F0, )
        Yay0_6589F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6589F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6589F0, 0x658AA0)
    
    SPLAT_BEGIN_SEG(data_658AA0, 0x658AA0, 0x658AA0, )
        Yay0_658AA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/658AA0.Yay0.o(.data);
    SPLAT_END_SEG(data_658AA0, 0x658B58)
    
    SPLAT_BEGIN_SEG(data_658B58, 0x658B58, 0x658B58, )
        Yay0_658B58_Yay0 = .;
        BUILD_DIR/bin/Yay0/658B58.Yay0.o(.data);
    SPLAT_END_SEG(data_658B58, 0x658D70)
    
    SPLAT_BEGIN_SEG(data_658D70, 0x658D70, 0x658D70, )
        Yay0_658D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/658D70.Yay0.o(.data);
    SPLAT_END_SEG(data_658D70, 0x658DF8)
    
    SPLAT_BEGIN_SEG(data_658DF8, 0x658DF8, 0x658DF8, )
        Yay0_658DF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/658DF8.Yay0.o(.data);
    SPLAT_END_SEG(data_658DF8, 0x658F68)
    
    SPLAT_BEGIN_SEG(data_658F68, 0x658F68, 0x658F68, )
        Yay0_658F68_Yay0 = .;
        BUILD_DIR/bin/Yay0/658F68.Yay0.o(.data);
    SPLAT_END_SEG(data_658F68, 0x658FC8)
    
    SPLAT_BEGIN_SEG(data_658FC8, 0x658FC8, 0x658FC8, )
        Yay0_658FC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/658FC8.Yay0.o(.data);
    SPLAT_END_SEG(data_658FC8, 0x659018)
    
    SPLAT_BEGIN_SEG(data_659018, 0x659018, 0x659018, )
        Yay0_659018_Yay0 = .;
        BUILD_DIR/bin/Yay0/659018.Yay0.o(.data);
    SPLAT_END_SEG(data_659018, 0x659170)
    
    SPLAT_BEGIN_SEG(data_659170, 0x659170, 0x659170, )
        Yay0_659170_Yay0 = .;
        BUILD_DIR/bin/Yay0/659170.Yay0.o(.data);
    SPLAT_END_SEG(data_659170, 0x659240)
    
    SPLAT_BEGIN_SEG(data_659240, 0x659240, 0x659240, )
        Yay0_659240_Yay0 = .;
        BUILD_DIR/bin/Yay0/659240.Yay0.o(.data);
    SPLAT_END_SEG(data_659240, 0x6592E8)
    
    SPLAT_BEGIN_SEG(data_6592E8, 0x6592E8, 0x6592E8, )
        Yay0_6592E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6592E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6592E8, 0x6593C0)
    
    SPLAT_BEGIN_SEG(data_6593C0, 0x6593C0, 0x6593C0, )
        Yay0_6593C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6593C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6593C0, 0x659418)
    
    SPLAT_BEGIN_SEG(data_659418, 0x659418, 0x659418, )
        Yay0_659418_Yay0 = .;
        BUILD_DIR/bin/Yay0/659418.Yay0.o(.data);
    SPLAT_END_SEG(data_659418, 0x659478)
    
    SPLAT_BEGIN_SEG(data_659478, 0x659478, 0x659478, )
        Yay0_659478_Yay0 = .;
        BUILD_DIR/bin/Yay0/659478.Yay0.o(.data);
    SPLAT_END_SEG(data_659478, 0x6594A0)
    
    SPLAT_BEGIN_SEG(data_6594A0, 0x6594A0, 0x6594A0, )
        Yay0_6594A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6594A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6594A0, 0x659588)
    
    SPLAT_BEGIN_SEG(data_659588, 0x659588, 0x659588, )
        Yay0_659588_Yay0 = .;
        BUILD_DIR/bin/Yay0/659588.Yay0.o(.data);
    SPLAT_END_SEG(data_659588, 0x659670)
    
    SPLAT_BEGIN_SEG(data_659670, 0x659670, 0x659670, )
        Yay0_659670_Yay0 = .;
        BUILD_DIR/bin/Yay0/659670.Yay0.o(.data);
    SPLAT_END_SEG(data_659670, 0x659700)
    
    SPLAT_BEGIN_SEG(data_659700, 0x659700, 0x659700, )
        Yay0_659700_Yay0 = .;
        BUILD_DIR/bin/Yay0/659700.Yay0.o(.data);
    SPLAT_END_SEG(data_659700, 0x6597D0)
    
    SPLAT_BEGIN_SEG(data_6597D0, 0x6597D0, 0x6597D0, )
        Yay0_6597D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6597D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6597D0, 0x6598E0)
    
    SPLAT_BEGIN_SEG(data_6598E0, 0x6598E0, 0x6598E0, )
        Yay0_6598E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6598E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6598E0, 0x659908)
    
    SPLAT_BEGIN_SEG(data_659908, 0x659908, 0x659908, )
        Yay0_659908_Yay0 = .;
        BUILD_DIR/bin/Yay0/659908.Yay0.o(.data);
    SPLAT_END_SEG(data_659908, 0x659990)
    
    SPLAT_BEGIN_SEG(data_659990, 0x659990, 0x659990, )
        Yay0_659990_Yay0 = .;
        BUILD_DIR/bin/Yay0/659990.Yay0.o(.data);
    SPLAT_END_SEG(data_659990, 0x659A18)
    
    SPLAT_BEGIN_SEG(data_659A18, 0x659A18, 0x659A18, )
        Yay0_659A18_Yay0 = .;
        BUILD_DIR/bin/Yay0/659A18.Yay0.o(.data);
    SPLAT_END_SEG(data_659A18, 0x659AD8)
    
    SPLAT_BEGIN_SEG(data_659AD8, 0x659AD8, 0x659AD8, )
        Yay0_659AD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/659AD8.Yay0.o(.data);
    SPLAT_END_SEG(data_659AD8, 0x659BA8)
    
    SPLAT_BEGIN_SEG(data_659BA8, 0x659BA8, 0x659BA8, )
        Yay0_659BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/659BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_659BA8, 0x659C78)
    
    SPLAT_BEGIN_SEG(data_659C78, 0x659C78, 0x659C78, )
        Yay0_659C78_Yay0 = .;
        BUILD_DIR/bin/Yay0/659C78.Yay0.o(.data);
    SPLAT_END_SEG(data_659C78, 0x659CF0)
    
    SPLAT_BEGIN_SEG(data_659CF0, 0x659CF0, 0x659CF0, )
        Yay0_659CF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/659CF0.Yay0.o(.data);
    SPLAT_END_SEG(data_659CF0, 0x659D50)
    
    SPLAT_BEGIN_SEG(data_659D50, 0x659D50, 0x659D50, )
        Yay0_659D50_Yay0 = .;
        BUILD_DIR/bin/Yay0/659D50.Yay0.o(.data);
    SPLAT_END_SEG(data_659D50, 0x659DD8)
    
    SPLAT_BEGIN_SEG(data_659DD8, 0x659DD8, 0x659DD8, )
        Yay0_659DD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/659DD8.Yay0.o(.data);
    SPLAT_END_SEG(data_659DD8, 0x659F40)
    
    SPLAT_BEGIN_SEG(data_659F40, 0x659F40, 0x659F40, )
        Yay0_659F40_Yay0 = .;
        BUILD_DIR/bin/Yay0/659F40.Yay0.o(.data);
    SPLAT_END_SEG(data_659F40, 0x65A208)
    
    SPLAT_BEGIN_SEG(data_65A208, 0x65A208, 0x65A208, )
        Yay0_65A208_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A208.Yay0.o(.data);
    SPLAT_END_SEG(data_65A208, 0x65A288)
    
    SPLAT_BEGIN_SEG(data_65A288, 0x65A288, 0x65A288, )
        Yay0_65A288_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A288.Yay0.o(.data);
    SPLAT_END_SEG(data_65A288, 0x65A3A0)
    
    SPLAT_BEGIN_SEG(data_65A3A0, 0x65A3A0, 0x65A3A0, )
        Yay0_65A3A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A3A0.Yay0.o(.data);
    SPLAT_END_SEG(data_65A3A0, 0x65A498)
    
    SPLAT_BEGIN_SEG(data_65A498, 0x65A498, 0x65A498, )
        Yay0_65A498_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A498.Yay0.o(.data);
    SPLAT_END_SEG(data_65A498, 0x65A518)
    
    SPLAT_BEGIN_SEG(data_65A518, 0x65A518, 0x65A518, )
        Yay0_65A518_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A518.Yay0.o(.data);
    SPLAT_END_SEG(data_65A518, 0x65A580)
    
    SPLAT_BEGIN_SEG(data_65A580, 0x65A580, 0x65A580, )
        Yay0_65A580_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A580.Yay0.o(.data);
    SPLAT_END_SEG(data_65A580, 0x65A618)
    
    SPLAT_BEGIN_SEG(data_65A618, 0x65A618, 0x65A618, )
        Yay0_65A618_Yay0 = .;
        BUILD_DIR/bin/Yay0/65A618.Yay0.o(.data);
    SPLAT_END_SEG(data_65A618, 0x65AC58)
    
    SPLAT_BEGIN_SEG(data_65AC58, 0x65AC58, 0x65AC58, )
        Yay0_65AC58_Yay0 = .;
        BUILD_DIR/bin/Yay0/65AC58.Yay0.o(.data);
    SPLAT_END_SEG(data_65AC58, 0x65CED8)
    
    SPLAT_BEGIN_SEG(data_65CED8, 0x65CED8, 0x65CED8, )
        Yay0_65CED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65CED8.Yay0.o(.data);
    SPLAT_END_SEG(data_65CED8, 0x65D380)
    
    SPLAT_BEGIN_SEG(data_65D380, 0x65D380, 0x65D380, )
        Yay0_65D380_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D380.Yay0.o(.data);
    SPLAT_END_SEG(data_65D380, 0x65D410)
    
    SPLAT_BEGIN_SEG(data_65D410, 0x65D410, 0x65D410, )
        Yay0_65D410_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D410.Yay0.o(.data);
    SPLAT_END_SEG(data_65D410, 0x65D4A0)
    
    SPLAT_BEGIN_SEG(data_65D4A0, 0x65D4A0, 0x65D4A0, )
        Yay0_65D4A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D4A0.Yay0.o(.data);
    SPLAT_END_SEG(data_65D4A0, 0x65D5C8)
    
    SPLAT_BEGIN_SEG(data_65D5C8, 0x65D5C8, 0x65D5C8, )
        Yay0_65D5C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D5C8.Yay0.o(.data);
    SPLAT_END_SEG(data_65D5C8, 0x65D6E0)
    
    SPLAT_BEGIN_SEG(data_65D6E0, 0x65D6E0, 0x65D6E0, )
        Yay0_65D6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_65D6E0, 0x65D7F8)
    
    SPLAT_BEGIN_SEG(data_65D7F8, 0x65D7F8, 0x65D7F8, )
        Yay0_65D7F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D7F8.Yay0.o(.data);
    SPLAT_END_SEG(data_65D7F8, 0x65D890)
    
    SPLAT_BEGIN_SEG(data_65D890, 0x65D890, 0x65D890, )
        Yay0_65D890_Yay0 = .;
        BUILD_DIR/bin/Yay0/65D890.Yay0.o(.data);
    SPLAT_END_SEG(data_65D890, 0x65DFE0)
    
    SPLAT_BEGIN_SEG(data_65DFE0, 0x65DFE0, 0x65DFE0, )
        Yay0_65DFE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/65DFE0.Yay0.o(.data);
    SPLAT_END_SEG(data_65DFE0, 0x65E1D8)
    
    SPLAT_BEGIN_SEG(data_65E1D8, 0x65E1D8, 0x65E1D8, )
        Yay0_65E1D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65E1D8.Yay0.o(.data);
    SPLAT_END_SEG(data_65E1D8, 0x65E6F8)
    
    SPLAT_BEGIN_SEG(data_65E6F8, 0x65E6F8, 0x65E6F8, )
        Yay0_65E6F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65E6F8.Yay0.o(.data);
    SPLAT_END_SEG(data_65E6F8, 0x65EE38)
    
    SPLAT_BEGIN_SEG(data_65EE38, 0x65EE38, 0x65EE38, )
        Yay0_65EE38_Yay0 = .;
        BUILD_DIR/bin/Yay0/65EE38.Yay0.o(.data);
    SPLAT_END_SEG(data_65EE38, 0x65F938)
    
    SPLAT_BEGIN_SEG(data_65F938, 0x65F938, 0x65F938, )
        Yay0_65F938_Yay0 = .;
        BUILD_DIR/bin/Yay0/65F938.Yay0.o(.data);
    SPLAT_END_SEG(data_65F938, 0x65F978)
    
    SPLAT_BEGIN_SEG(data_65F978, 0x65F978, 0x65F978, )
        Yay0_65F978_Yay0 = .;
        BUILD_DIR/bin/Yay0/65F978.Yay0.o(.data);
    SPLAT_END_SEG(data_65F978, 0x65F9D8)
    
    SPLAT_BEGIN_SEG(data_65F9D8, 0x65F9D8, 0x65F9D8, )
        Yay0_65F9D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65F9D8.Yay0.o(.data);
    SPLAT_END_SEG(data_65F9D8, 0x65FA08)
    
    SPLAT_BEGIN_SEG(data_65FA08, 0x65FA08, 0x65FA08, )
        Yay0_65FA08_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FA08.Yay0.o(.data);
    SPLAT_END_SEG(data_65FA08, 0x65FA40)
    
    SPLAT_BEGIN_SEG(data_65FA40, 0x65FA40, 0x65FA40, )
        Yay0_65FA40_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FA40.Yay0.o(.data);
    SPLAT_END_SEG(data_65FA40, 0x65FA88)
    
    SPLAT_BEGIN_SEG(data_65FA88, 0x65FA88, 0x65FA88, )
        Yay0_65FA88_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FA88.Yay0.o(.data);
    SPLAT_END_SEG(data_65FA88, 0x65FAE8)
    
    SPLAT_BEGIN_SEG(data_65FAE8, 0x65FAE8, 0x65FAE8, )
        Yay0_65FAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_65FAE8, 0x65FED0)
    
    SPLAT_BEGIN_SEG(data_65FED0, 0x65FED0, 0x65FED0, )
        Yay0_65FED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FED0.Yay0.o(.data);
    SPLAT_END_SEG(data_65FED0, 0x65FF00)
    
    SPLAT_BEGIN_SEG(data_65FF00, 0x65FF00, 0x65FF00, )
        Yay0_65FF00_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FF00.Yay0.o(.data);
    SPLAT_END_SEG(data_65FF00, 0x65FF40)
    
    SPLAT_BEGIN_SEG(data_65FF40, 0x65FF40, 0x65FF40, )
        Yay0_65FF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FF40.Yay0.o(.data);
    SPLAT_END_SEG(data_65FF40, 0x65FF98)
    
    SPLAT_BEGIN_SEG(data_65FF98, 0x65FF98, 0x65FF98, )
        Yay0_65FF98_Yay0 = .;
        BUILD_DIR/bin/Yay0/65FF98.Yay0.o(.data);
    SPLAT_END_SEG(data_65FF98, 0x660018)
    
    SPLAT_BEGIN_SEG(data_660018, 0x660018, 0x660018, )
        Yay0_660018_Yay0 = .;
        BUILD_DIR/bin/Yay0/660018.Yay0.o(.data);
    SPLAT_END_SEG(data_660018, 0x6601E8)
    
    SPLAT_BEGIN_SEG(data_6601E8, 0x6601E8, 0x6601E8, )
        Yay0_6601E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6601E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6601E8, 0x660400)
    
    SPLAT_BEGIN_SEG(data_660400, 0x660400, 0x660400, )
        Yay0_660400_Yay0 = .;
        BUILD_DIR/bin/Yay0/660400.Yay0.o(.data);
    SPLAT_END_SEG(data_660400, 0x6609A8)
    
    SPLAT_BEGIN_SEG(data_6609A8, 0x6609A8, 0x6609A8, )
        Yay0_6609A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6609A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6609A8, 0x660D20)
    
    SPLAT_BEGIN_SEG(data_660D20, 0x660D20, 0x660D20, )
        Yay0_660D20_Yay0 = .;
        BUILD_DIR/bin/Yay0/660D20.Yay0.o(.data);
    SPLAT_END_SEG(data_660D20, 0x660DC8)
    
    SPLAT_BEGIN_SEG(data_660DC8, 0x660DC8, 0x660DC8, )
        Yay0_660DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/660DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_660DC8, 0x662000)
    
    SPLAT_BEGIN_SEG(data_662000, 0x662000, 0x662000, )
        Yay0_662000_Yay0 = .;
        BUILD_DIR/bin/Yay0/662000.Yay0.o(.data);
    SPLAT_END_SEG(data_662000, 0x663080)
    
    SPLAT_BEGIN_SEG(data_663080, 0x663080, 0x663080, )
        Yay0_663080_Yay0 = .;
        BUILD_DIR/bin/Yay0/663080.Yay0.o(.data);
    SPLAT_END_SEG(data_663080, 0x6631B0)
    
    SPLAT_BEGIN_SEG(data_6631B0, 0x6631B0, 0x6631B0, )
        Yay0_6631B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6631B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6631B0, 0x6632D8)
    
    SPLAT_BEGIN_SEG(data_6632D8, 0x6632D8, 0x6632D8, )
        Yay0_6632D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6632D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6632D8, 0x663408)
    
    SPLAT_BEGIN_SEG(data_663408, 0x663408, 0x663408, )
        Yay0_663408_Yay0 = .;
        BUILD_DIR/bin/Yay0/663408.Yay0.o(.data);
    SPLAT_END_SEG(data_663408, 0x663440)
    
    SPLAT_BEGIN_SEG(data_663440, 0x663440, 0x663440, )
        Yay0_663440_Yay0 = .;
        BUILD_DIR/bin/Yay0/663440.Yay0.o(.data);
    SPLAT_END_SEG(data_663440, 0x6634E8)
    
    SPLAT_BEGIN_SEG(data_6634E8, 0x6634E8, 0x6634E8, )
        Yay0_6634E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6634E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6634E8, 0x663540)
    
    SPLAT_BEGIN_SEG(data_663540, 0x663540, 0x663540, )
        Yay0_663540_Yay0 = .;
        BUILD_DIR/bin/Yay0/663540.Yay0.o(.data);
    SPLAT_END_SEG(data_663540, 0x6635E0)
    
    SPLAT_BEGIN_SEG(data_6635E0, 0x6635E0, 0x6635E0, )
        Yay0_6635E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6635E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6635E0, 0x663728)
    
    SPLAT_BEGIN_SEG(data_663728, 0x663728, 0x663728, )
        Yay0_663728_Yay0 = .;
        BUILD_DIR/bin/Yay0/663728.Yay0.o(.data);
    SPLAT_END_SEG(data_663728, 0x6637F0)
    
    SPLAT_BEGIN_SEG(data_6637F0, 0x6637F0, 0x6637F0, )
        Yay0_6637F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6637F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6637F0, 0x663828)
    
    SPLAT_BEGIN_SEG(data_663828, 0x663828, 0x663828, )
        Yay0_663828_Yay0 = .;
        BUILD_DIR/bin/Yay0/663828.Yay0.o(.data);
    SPLAT_END_SEG(data_663828, 0x663870)
    
    SPLAT_BEGIN_SEG(data_663870, 0x663870, 0x663870, )
        Yay0_663870_Yay0 = .;
        BUILD_DIR/bin/Yay0/663870.Yay0.o(.data);
    SPLAT_END_SEG(data_663870, 0x6638A0)
    
    SPLAT_BEGIN_SEG(data_6638A0, 0x6638A0, 0x6638A0, )
        Yay0_6638A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6638A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6638A0, 0x6639E8)
    
    SPLAT_BEGIN_SEG(data_6639E8, 0x6639E8, 0x6639E8, )
        Yay0_6639E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6639E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6639E8, 0x663A28)
    
    SPLAT_BEGIN_SEG(data_663A28, 0x663A28, 0x663A28, )
        Yay0_663A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/663A28.Yay0.o(.data);
    SPLAT_END_SEG(data_663A28, 0x663AB8)
    
    SPLAT_BEGIN_SEG(data_663AB8, 0x663AB8, 0x663AB8, )
        Yay0_663AB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/663AB8.Yay0.o(.data);
    SPLAT_END_SEG(data_663AB8, 0x663AF0)
    
    SPLAT_BEGIN_SEG(data_663AF0, 0x663AF0, 0x663AF0, )
        Yay0_663AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/663AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_663AF0, 0x663C30)
    
    SPLAT_BEGIN_SEG(data_663C30, 0x663C30, 0x663C30, )
        Yay0_663C30_Yay0 = .;
        BUILD_DIR/bin/Yay0/663C30.Yay0.o(.data);
    SPLAT_END_SEG(data_663C30, 0x663CC0)
    
    SPLAT_BEGIN_SEG(data_663CC0, 0x663CC0, 0x663CC0, )
        Yay0_663CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/663CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_663CC0, 0x663CE8)
    
    SPLAT_BEGIN_SEG(data_663CE8, 0x663CE8, 0x663CE8, )
        Yay0_663CE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/663CE8.Yay0.o(.data);
    SPLAT_END_SEG(data_663CE8, 0x664058)
    
    SPLAT_BEGIN_SEG(data_664058, 0x664058, 0x664058, )
        Yay0_664058_Yay0 = .;
        BUILD_DIR/bin/Yay0/664058.Yay0.o(.data);
    SPLAT_END_SEG(data_664058, 0x6655E8)
    
    SPLAT_BEGIN_SEG(data_6655E8, 0x6655E8, 0x6655E8, )
        Yay0_6655E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6655E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6655E8, 0x665D18)
    
    SPLAT_BEGIN_SEG(data_665D18, 0x665D18, 0x665D18, )
        Yay0_665D18_Yay0 = .;
        BUILD_DIR/bin/Yay0/665D18.Yay0.o(.data);
    SPLAT_END_SEG(data_665D18, 0x666DB8)
    
    SPLAT_BEGIN_SEG(data_666DB8, 0x666DB8, 0x666DB8, )
        Yay0_666DB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/666DB8.Yay0.o(.data);
    SPLAT_END_SEG(data_666DB8, 0x6672B0)
    
    SPLAT_BEGIN_SEG(data_6672B0, 0x6672B0, 0x6672B0, )
        Yay0_6672B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6672B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6672B0, 0x667B50)
    
    SPLAT_BEGIN_SEG(data_667B50, 0x667B50, 0x667B50, )
        Yay0_667B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/667B50.Yay0.o(.data);
    SPLAT_END_SEG(data_667B50, 0x667CB8)
    
    SPLAT_BEGIN_SEG(data_667CB8, 0x667CB8, 0x667CB8, )
        Yay0_667CB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/667CB8.Yay0.o(.data);
    SPLAT_END_SEG(data_667CB8, 0x667D48)
    
    SPLAT_BEGIN_SEG(data_667D48, 0x667D48, 0x667D48, )
        Yay0_667D48_Yay0 = .;
        BUILD_DIR/bin/Yay0/667D48.Yay0.o(.data);
    SPLAT_END_SEG(data_667D48, 0x668160)
    
    SPLAT_BEGIN_SEG(data_668160, 0x668160, 0x668160, )
        Yay0_668160_Yay0 = .;
        BUILD_DIR/bin/Yay0/668160.Yay0.o(.data);
    SPLAT_END_SEG(data_668160, 0x6685C8)
    
    SPLAT_BEGIN_SEG(data_6685C8, 0x6685C8, 0x6685C8, )
        Yay0_6685C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6685C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6685C8, 0x668600)
    
    SPLAT_BEGIN_SEG(data_668600, 0x668600, 0x668600, )
        Yay0_668600_Yay0 = .;
        BUILD_DIR/bin/Yay0/668600.Yay0.o(.data);
    SPLAT_END_SEG(data_668600, 0x6686F0)
    
    SPLAT_BEGIN_SEG(data_6686F0, 0x6686F0, 0x6686F0, )
        Yay0_6686F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6686F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6686F0, 0x6687B8)
    
    SPLAT_BEGIN_SEG(data_6687B8, 0x6687B8, 0x6687B8, )
        Yay0_6687B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6687B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6687B8, 0x668848)
    
    SPLAT_BEGIN_SEG(data_668848, 0x668848, 0x668848, )
        Yay0_668848_Yay0 = .;
        BUILD_DIR/bin/Yay0/668848.Yay0.o(.data);
    SPLAT_END_SEG(data_668848, 0x668888)
    
    SPLAT_BEGIN_SEG(data_668888, 0x668888, 0x668888, )
        Yay0_668888_Yay0 = .;
        BUILD_DIR/bin/Yay0/668888.Yay0.o(.data);
    SPLAT_END_SEG(data_668888, 0x6688B8)
    
    SPLAT_BEGIN_SEG(data_6688B8, 0x6688B8, 0x6688B8, )
        Yay0_6688B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6688B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6688B8, 0x668900)
    
    SPLAT_BEGIN_SEG(data_668900, 0x668900, 0x668900, )
        Yay0_668900_Yay0 = .;
        BUILD_DIR/bin/Yay0/668900.Yay0.o(.data);
    SPLAT_END_SEG(data_668900, 0x668978)
    
    SPLAT_BEGIN_SEG(data_668978, 0x668978, 0x668978, )
        Yay0_668978_Yay0 = .;
        BUILD_DIR/bin/Yay0/668978.Yay0.o(.data);
    SPLAT_END_SEG(data_668978, 0x6689C8)
    
    SPLAT_BEGIN_SEG(data_6689C8, 0x6689C8, 0x6689C8, )
        Yay0_6689C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6689C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6689C8, 0x668A40)
    
    SPLAT_BEGIN_SEG(data_668A40, 0x668A40, 0x668A40, )
        Yay0_668A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/668A40.Yay0.o(.data);
    SPLAT_END_SEG(data_668A40, 0x668A70)
    
    SPLAT_BEGIN_SEG(data_668A70, 0x668A70, 0x668A70, )
        Yay0_668A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/668A70.Yay0.o(.data);
    SPLAT_END_SEG(data_668A70, 0x668AA8)
    
    SPLAT_BEGIN_SEG(data_668AA8, 0x668AA8, 0x668AA8, )
        Yay0_668AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/668AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_668AA8, 0x668AD8)
    
    SPLAT_BEGIN_SEG(data_668AD8, 0x668AD8, 0x668AD8, )
        Yay0_668AD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/668AD8.Yay0.o(.data);
    SPLAT_END_SEG(data_668AD8, 0x668CE8)
    
    SPLAT_BEGIN_SEG(data_668CE8, 0x668CE8, 0x668CE8, )
        Yay0_668CE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/668CE8.Yay0.o(.data);
    SPLAT_END_SEG(data_668CE8, 0x668D58)
    
    SPLAT_BEGIN_SEG(data_668D58, 0x668D58, 0x668D58, )
        Yay0_668D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/668D58.Yay0.o(.data);
    SPLAT_END_SEG(data_668D58, 0x668DC8)
    
    SPLAT_BEGIN_SEG(data_668DC8, 0x668DC8, 0x668DC8, )
        Yay0_668DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/668DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_668DC8, 0x668FD8)
    
    SPLAT_BEGIN_SEG(data_668FD8, 0x668FD8, 0x668FD8, )
        Yay0_668FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/668FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_668FD8, 0x669110)
    
    SPLAT_BEGIN_SEG(data_669110, 0x669110, 0x669110, )
        Yay0_669110_Yay0 = .;
        BUILD_DIR/bin/Yay0/669110.Yay0.o(.data);
    SPLAT_END_SEG(data_669110, 0x669480)
    
    SPLAT_BEGIN_SEG(data_669480, 0x669480, 0x669480, )
        Yay0_669480_Yay0 = .;
        BUILD_DIR/bin/Yay0/669480.Yay0.o(.data);
    SPLAT_END_SEG(data_669480, 0x669600)
    
    SPLAT_BEGIN_SEG(data_669600, 0x669600, 0x669600, )
        Yay0_669600_Yay0 = .;
        BUILD_DIR/bin/Yay0/669600.Yay0.o(.data);
    SPLAT_END_SEG(data_669600, 0x669868)
    
    SPLAT_BEGIN_SEG(data_669868, 0x669868, 0x669868, )
        Yay0_669868_Yay0 = .;
        BUILD_DIR/bin/Yay0/669868.Yay0.o(.data);
    SPLAT_END_SEG(data_669868, 0x669AB8)
    
    SPLAT_BEGIN_SEG(data_669AB8, 0x669AB8, 0x669AB8, )
        Yay0_669AB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/669AB8.Yay0.o(.data);
    SPLAT_END_SEG(data_669AB8, 0x66A0B0)
    
    SPLAT_BEGIN_SEG(data_66A0B0, 0x66A0B0, 0x66A0B0, )
        Yay0_66A0B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66A0B0.Yay0.o(.data);
    SPLAT_END_SEG(data_66A0B0, 0x66A160)
    
    SPLAT_BEGIN_SEG(data_66A160, 0x66A160, 0x66A160, )
        Yay0_66A160_Yay0 = .;
        BUILD_DIR/bin/Yay0/66A160.Yay0.o(.data);
    SPLAT_END_SEG(data_66A160, 0x66A318)
    
    SPLAT_BEGIN_SEG(data_66A318, 0x66A318, 0x66A318, )
        Yay0_66A318_Yay0 = .;
        BUILD_DIR/bin/Yay0/66A318.Yay0.o(.data);
    SPLAT_END_SEG(data_66A318, 0x66A3C8)
    
    SPLAT_BEGIN_SEG(data_66A3C8, 0x66A3C8, 0x66A3C8, )
        Yay0_66A3C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/66A3C8.Yay0.o(.data);
    SPLAT_END_SEG(data_66A3C8, 0x66BBD8)
    
    SPLAT_BEGIN_SEG(data_66BBD8, 0x66BBD8, 0x66BBD8, )
        Yay0_66BBD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/66BBD8.Yay0.o(.data);
    SPLAT_END_SEG(data_66BBD8, 0x66BD40)
    
    SPLAT_BEGIN_SEG(data_66BD40, 0x66BD40, 0x66BD40, )
        Yay0_66BD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/66BD40.Yay0.o(.data);
    SPLAT_END_SEG(data_66BD40, 0x66C5B0)
    
    SPLAT_BEGIN_SEG(data_66C5B0, 0x66C5B0, 0x66C5B0, )
        Yay0_66C5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66C5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_66C5B0, 0x66D3B0)
    
    SPLAT_BEGIN_SEG(data_66D3B0, 0x66D3B0, 0x66D3B0, )
        Yay0_66D3B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66D3B0.Yay0.o(.data);
    SPLAT_END_SEG(data_66D3B0, 0x66D570)
    
    SPLAT_BEGIN_SEG(data_66D570, 0x66D570, 0x66D570, )
        Yay0_66D570_Yay0 = .;
        BUILD_DIR/bin/Yay0/66D570.Yay0.o(.data);
    SPLAT_END_SEG(data_66D570, 0x66D6A0)
    
    SPLAT_BEGIN_SEG(data_66D6A0, 0x66D6A0, 0x66D6A0, )
        Yay0_66D6A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66D6A0.Yay0.o(.data);
    SPLAT_END_SEG(data_66D6A0, 0x66D7C0)
    
    SPLAT_BEGIN_SEG(data_66D7C0, 0x66D7C0, 0x66D7C0, )
        Yay0_66D7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66D7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_66D7C0, 0x66DA60)
    
    SPLAT_BEGIN_SEG(data_66DA60, 0x66DA60, 0x66DA60, )
        Yay0_66DA60_Yay0 = .;
        BUILD_DIR/bin/Yay0/66DA60.Yay0.o(.data);
    SPLAT_END_SEG(data_66DA60, 0x66E810)
    
    SPLAT_BEGIN_SEG(data_66E810, 0x66E810, 0x66E810, )
        Yay0_66E810_Yay0 = .;
        BUILD_DIR/bin/Yay0/66E810.Yay0.o(.data);
    SPLAT_END_SEG(data_66E810, 0x66F1B0)
    
    SPLAT_BEGIN_SEG(data_66F1B0, 0x66F1B0, 0x66F1B0, )
        Yay0_66F1B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66F1B0.Yay0.o(.data);
    SPLAT_END_SEG(data_66F1B0, 0x66F7A0)
    
    SPLAT_BEGIN_SEG(data_66F7A0, 0x66F7A0, 0x66F7A0, )
        Yay0_66F7A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/66F7A0.Yay0.o(.data);
    SPLAT_END_SEG(data_66F7A0, 0x66FF90)
    
    SPLAT_BEGIN_SEG(data_66FF90, 0x66FF90, 0x66FF90, )
        Yay0_66FF90_Yay0 = .;
        BUILD_DIR/bin/Yay0/66FF90.Yay0.o(.data);
    SPLAT_END_SEG(data_66FF90, 0x6704F0)
    
    SPLAT_BEGIN_SEG(data_6704F0, 0x6704F0, 0x6704F0, )
        Yay0_6704F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6704F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6704F0, 0x670E98)
    
    SPLAT_BEGIN_SEG(data_670E98, 0x670E98, 0x670E98, )
        Yay0_670E98_Yay0 = .;
        BUILD_DIR/bin/Yay0/670E98.Yay0.o(.data);
    SPLAT_END_SEG(data_670E98, 0x6725D8)
    
    SPLAT_BEGIN_SEG(data_6725D8, 0x6725D8, 0x6725D8, )
        Yay0_6725D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6725D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6725D8, 0x672BA8)
    
    SPLAT_BEGIN_SEG(data_672BA8, 0x672BA8, 0x672BA8, )
        Yay0_672BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/672BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_672BA8, 0x672E90)
    
    SPLAT_BEGIN_SEG(data_672E90, 0x672E90, 0x672E90, )
        Yay0_672E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/672E90.Yay0.o(.data);
    SPLAT_END_SEG(data_672E90, 0x673720)
    
    SPLAT_BEGIN_SEG(data_673720, 0x673720, 0x673720, )
        Yay0_673720_Yay0 = .;
        BUILD_DIR/bin/Yay0/673720.Yay0.o(.data);
    SPLAT_END_SEG(data_673720, 0x6746C8)
    
    SPLAT_BEGIN_SEG(data_6746C8, 0x6746C8, 0x6746C8, )
        Yay0_6746C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6746C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6746C8, 0x6750A0)
    
    SPLAT_BEGIN_SEG(data_6750A0, 0x6750A0, 0x6750A0, )
        Yay0_6750A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6750A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6750A0, 0x675250)
    
    SPLAT_BEGIN_SEG(data_675250, 0x675250, 0x675250, )
        Yay0_675250_Yay0 = .;
        BUILD_DIR/bin/Yay0/675250.Yay0.o(.data);
    SPLAT_END_SEG(data_675250, 0x675440)
    
    SPLAT_BEGIN_SEG(data_675440, 0x675440, 0x675440, )
        Yay0_675440_Yay0 = .;
        BUILD_DIR/bin/Yay0/675440.Yay0.o(.data);
    SPLAT_END_SEG(data_675440, 0x675C98)
    
    SPLAT_BEGIN_SEG(data_675C98, 0x675C98, 0x675C98, )
        Yay0_675C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/675C98.Yay0.o(.data);
    SPLAT_END_SEG(data_675C98, 0x6761C0)
    
    SPLAT_BEGIN_SEG(data_6761C0, 0x6761C0, 0x6761C0, )
        Yay0_6761C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6761C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6761C0, 0x676588)
    
    SPLAT_BEGIN_SEG(data_676588, 0x676588, 0x676588, )
        Yay0_676588_Yay0 = .;
        BUILD_DIR/bin/Yay0/676588.Yay0.o(.data);
    SPLAT_END_SEG(data_676588, 0x676710)
    
    SPLAT_BEGIN_SEG(data_676710, 0x676710, 0x676710, )
        Yay0_676710_Yay0 = .;
        BUILD_DIR/bin/Yay0/676710.Yay0.o(.data);
    SPLAT_END_SEG(data_676710, 0x6768A8)
    
    SPLAT_BEGIN_SEG(data_6768A8, 0x6768A8, 0x6768A8, )
        Yay0_6768A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6768A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6768A8, 0x676F10)
    
    SPLAT_BEGIN_SEG(data_676F10, 0x676F10, 0x676F10, )
        Yay0_676F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/676F10.Yay0.o(.data);
    SPLAT_END_SEG(data_676F10, 0x677668)
    
    SPLAT_BEGIN_SEG(data_677668, 0x677668, 0x677668, )
        Yay0_677668_Yay0 = .;
        BUILD_DIR/bin/Yay0/677668.Yay0.o(.data);
    SPLAT_END_SEG(data_677668, 0x677C08)
    
    SPLAT_BEGIN_SEG(data_677C08, 0x677C08, 0x677C08, )
        Yay0_677C08_Yay0 = .;
        BUILD_DIR/bin/Yay0/677C08.Yay0.o(.data);
    SPLAT_END_SEG(data_677C08, 0x6787C0)
    
    SPLAT_BEGIN_SEG(data_6787C0, 0x6787C0, 0x6787C0, )
        Yay0_6787C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6787C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6787C0, 0x679080)
    
    SPLAT_BEGIN_SEG(data_679080, 0x679080, 0x679080, )
        Yay0_679080_Yay0 = .;
        BUILD_DIR/bin/Yay0/679080.Yay0.o(.data);
    SPLAT_END_SEG(data_679080, 0x679208)
    
    SPLAT_BEGIN_SEG(data_679208, 0x679208, 0x679208, )
        Yay0_679208_Yay0 = .;
        BUILD_DIR/bin/Yay0/679208.Yay0.o(.data);
    SPLAT_END_SEG(data_679208, 0x679858)
    
    SPLAT_BEGIN_SEG(data_679858, 0x679858, 0x679858, )
        Yay0_679858_Yay0 = .;
        BUILD_DIR/bin/Yay0/679858.Yay0.o(.data);
    SPLAT_END_SEG(data_679858, 0x679E28)
    
    SPLAT_BEGIN_SEG(data_679E28, 0x679E28, 0x679E28, )
        Yay0_679E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/679E28.Yay0.o(.data);
    SPLAT_END_SEG(data_679E28, 0x67AC00)
    
    SPLAT_BEGIN_SEG(data_67AC00, 0x67AC00, 0x67AC00, )
        Yay0_67AC00_Yay0 = .;
        BUILD_DIR/bin/Yay0/67AC00.Yay0.o(.data);
    SPLAT_END_SEG(data_67AC00, 0x67B150)
    
    SPLAT_BEGIN_SEG(data_67B150, 0x67B150, 0x67B150, )
        Yay0_67B150_Yay0 = .;
        BUILD_DIR/bin/Yay0/67B150.Yay0.o(.data);
    SPLAT_END_SEG(data_67B150, 0x67B838)
    
    SPLAT_BEGIN_SEG(data_67B838, 0x67B838, 0x67B838, )
        Yay0_67B838_Yay0 = .;
        BUILD_DIR/bin/Yay0/67B838.Yay0.o(.data);
    SPLAT_END_SEG(data_67B838, 0x67BAB0)
    
    SPLAT_BEGIN_SEG(data_67BAB0, 0x67BAB0, 0x67BAB0, )
        Yay0_67BAB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/67BAB0.Yay0.o(.data);
    SPLAT_END_SEG(data_67BAB0, 0x67C0E8)
    
    SPLAT_BEGIN_SEG(data_67C0E8, 0x67C0E8, 0x67C0E8, )
        Yay0_67C0E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/67C0E8.Yay0.o(.data);
    SPLAT_END_SEG(data_67C0E8, 0x67C650)
    
    SPLAT_BEGIN_SEG(data_67C650, 0x67C650, 0x67C650, )
        Yay0_67C650_Yay0 = .;
        BUILD_DIR/bin/Yay0/67C650.Yay0.o(.data);
    SPLAT_END_SEG(data_67C650, 0x67C990)
    
    SPLAT_BEGIN_SEG(data_67C990, 0x67C990, 0x67C990, )
        Yay0_67C990_Yay0 = .;
        BUILD_DIR/bin/Yay0/67C990.Yay0.o(.data);
    SPLAT_END_SEG(data_67C990, 0x67D5E0)
    
    SPLAT_BEGIN_SEG(data_67D5E0, 0x67D5E0, 0x67D5E0, )
        Yay0_67D5E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/67D5E0.Yay0.o(.data);
    SPLAT_END_SEG(data_67D5E0, 0x67E400)
    
    SPLAT_BEGIN_SEG(data_67E400, 0x67E400, 0x67E400, )
        Yay0_67E400_Yay0 = .;
        BUILD_DIR/bin/Yay0/67E400.Yay0.o(.data);
    SPLAT_END_SEG(data_67E400, 0x67E628)
    
    SPLAT_BEGIN_SEG(data_67E628, 0x67E628, 0x67E628, )
        Yay0_67E628_Yay0 = .;
        BUILD_DIR/bin/Yay0/67E628.Yay0.o(.data);
    SPLAT_END_SEG(data_67E628, 0x67EFA0)
    
    SPLAT_BEGIN_SEG(data_67EFA0, 0x67EFA0, 0x67EFA0, )
        Yay0_67EFA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/67EFA0.Yay0.o(.data);
    SPLAT_END_SEG(data_67EFA0, 0x67F550)
    
    SPLAT_BEGIN_SEG(data_67F550, 0x67F550, 0x67F550, )
        Yay0_67F550_Yay0 = .;
        BUILD_DIR/bin/Yay0/67F550.Yay0.o(.data);
    SPLAT_END_SEG(data_67F550, 0x680308)
    
    SPLAT_BEGIN_SEG(data_680308, 0x680308, 0x680308, )
        Yay0_680308_Yay0 = .;
        BUILD_DIR/bin/Yay0/680308.Yay0.o(.data);
    SPLAT_END_SEG(data_680308, 0x680BB8)
    
    SPLAT_BEGIN_SEG(data_680BB8, 0x680BB8, 0x680BB8, )
        Yay0_680BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/680BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_680BB8, 0x6811D0)
    
    SPLAT_BEGIN_SEG(data_6811D0, 0x6811D0, 0x6811D0, )
        Yay0_6811D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6811D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6811D0, 0x681AE8)
    
    SPLAT_BEGIN_SEG(data_681AE8, 0x681AE8, 0x681AE8, )
        Yay0_681AE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/681AE8.Yay0.o(.data);
    SPLAT_END_SEG(data_681AE8, 0x682558)
    
    SPLAT_BEGIN_SEG(data_682558, 0x682558, 0x682558, )
        Yay0_682558_Yay0 = .;
        BUILD_DIR/bin/Yay0/682558.Yay0.o(.data);
    SPLAT_END_SEG(data_682558, 0x682B70)
    
    SPLAT_BEGIN_SEG(data_682B70, 0x682B70, 0x682B70, )
        Yay0_682B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/682B70.Yay0.o(.data);
    SPLAT_END_SEG(data_682B70, 0x6837B0)
    
    SPLAT_BEGIN_SEG(data_6837B0, 0x6837B0, 0x6837B0, )
        Yay0_6837B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6837B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6837B0, 0x6846A8)
    
    SPLAT_BEGIN_SEG(data_6846A8, 0x6846A8, 0x6846A8, )
        Yay0_6846A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6846A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6846A8, 0x685018)
    
    SPLAT_BEGIN_SEG(data_685018, 0x685018, 0x685018, )
        Yay0_685018_Yay0 = .;
        BUILD_DIR/bin/Yay0/685018.Yay0.o(.data);
    SPLAT_END_SEG(data_685018, 0x6857E0)
    
    SPLAT_BEGIN_SEG(data_6857E0, 0x6857E0, 0x6857E0, )
        Yay0_6857E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6857E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6857E0, 0x685A18)
    
    SPLAT_BEGIN_SEG(data_685A18, 0x685A18, 0x685A18, )
        Yay0_685A18_Yay0 = .;
        BUILD_DIR/bin/Yay0/685A18.Yay0.o(.data);
    SPLAT_END_SEG(data_685A18, 0x685C40)
    
    SPLAT_BEGIN_SEG(data_685C40, 0x685C40, 0x685C40, )
        Yay0_685C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/685C40.Yay0.o(.data);
    SPLAT_END_SEG(data_685C40, 0x685E90)
    
    SPLAT_BEGIN_SEG(data_685E90, 0x685E90, 0x685E90, )
        Yay0_685E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/685E90.Yay0.o(.data);
    SPLAT_END_SEG(data_685E90, 0x686308)
    
    SPLAT_BEGIN_SEG(data_686308, 0x686308, 0x686308, )
        Yay0_686308_Yay0 = .;
        BUILD_DIR/bin/Yay0/686308.Yay0.o(.data);
    SPLAT_END_SEG(data_686308, 0x687170)
    
    SPLAT_BEGIN_SEG(data_687170, 0x687170, 0x687170, )
        Yay0_687170_Yay0 = .;
        BUILD_DIR/bin/Yay0/687170.Yay0.o(.data);
    SPLAT_END_SEG(data_687170, 0x687238)
    
    SPLAT_BEGIN_SEG(data_687238, 0x687238, 0x687238, )
        Yay0_687238_Yay0 = .;
        BUILD_DIR/bin/Yay0/687238.Yay0.o(.data);
    SPLAT_END_SEG(data_687238, 0x687CE0)
    
    SPLAT_BEGIN_SEG(data_687CE0, 0x687CE0, 0x687CE0, )
        Yay0_687CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/687CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_687CE0, 0x688308)
    
    SPLAT_BEGIN_SEG(data_688308, 0x688308, 0x688308, )
        Yay0_688308_Yay0 = .;
        BUILD_DIR/bin/Yay0/688308.Yay0.o(.data);
    SPLAT_END_SEG(data_688308, 0x688850)
    
    SPLAT_BEGIN_SEG(data_688850, 0x688850, 0x688850, )
        Yay0_688850_Yay0 = .;
        BUILD_DIR/bin/Yay0/688850.Yay0.o(.data);
    SPLAT_END_SEG(data_688850, 0x688E68)
    
    SPLAT_BEGIN_SEG(data_688E68, 0x688E68, 0x688E68, )
        Yay0_688E68_Yay0 = .;
        BUILD_DIR/bin/Yay0/688E68.Yay0.o(.data);
    SPLAT_END_SEG(data_688E68, 0x6894E0)
    
    SPLAT_BEGIN_SEG(data_6894E0, 0x6894E0, 0x6894E0, )
        Yay0_6894E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6894E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6894E0, 0x689E70)
    
    SPLAT_BEGIN_SEG(data_689E70, 0x689E70, 0x689E70, )
        Yay0_689E70_Yay0 = .;
        BUILD_DIR/bin/Yay0/689E70.Yay0.o(.data);
    SPLAT_END_SEG(data_689E70, 0x68A0C8)
    
    SPLAT_BEGIN_SEG(data_68A0C8, 0x68A0C8, 0x68A0C8, )
        Yay0_68A0C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/68A0C8.Yay0.o(.data);
    SPLAT_END_SEG(data_68A0C8, 0x68A160)
    
    SPLAT_BEGIN_SEG(data_68A160, 0x68A160, 0x68A160, )
        Yay0_68A160_Yay0 = .;
        BUILD_DIR/bin/Yay0/68A160.Yay0.o(.data);
    SPLAT_END_SEG(data_68A160, 0x68A370)
    
    SPLAT_BEGIN_SEG(data_68A370, 0x68A370, 0x68A370, )
        Yay0_68A370_Yay0 = .;
        BUILD_DIR/bin/Yay0/68A370.Yay0.o(.data);
    SPLAT_END_SEG(data_68A370, 0x68A6F8)
    
    SPLAT_BEGIN_SEG(data_68A6F8, 0x68A6F8, 0x68A6F8, )
        Yay0_68A6F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/68A6F8.Yay0.o(.data);
    SPLAT_END_SEG(data_68A6F8, 0x68AAC8)
    
    SPLAT_BEGIN_SEG(data_68AAC8, 0x68AAC8, 0x68AAC8, )
        Yay0_68AAC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/68AAC8.Yay0.o(.data);
    SPLAT_END_SEG(data_68AAC8, 0x68ABF0)
    
    SPLAT_BEGIN_SEG(data_68ABF0, 0x68ABF0, 0x68ABF0, )
        Yay0_68ABF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/68ABF0.Yay0.o(.data);
    SPLAT_END_SEG(data_68ABF0, 0x68AE10)
    
    SPLAT_BEGIN_SEG(data_68AE10, 0x68AE10, 0x68AE10, )
        Yay0_68AE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/68AE10.Yay0.o(.data);
    SPLAT_END_SEG(data_68AE10, 0x68B9F8)
    
    SPLAT_BEGIN_SEG(data_68B9F8, 0x68B9F8, 0x68B9F8, )
        Yay0_68B9F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/68B9F8.Yay0.o(.data);
    SPLAT_END_SEG(data_68B9F8, 0x68C250)
    
    SPLAT_BEGIN_SEG(data_68C250, 0x68C250, 0x68C250, )
        Yay0_68C250_Yay0 = .;
        BUILD_DIR/bin/Yay0/68C250.Yay0.o(.data);
    SPLAT_END_SEG(data_68C250, 0x68CE58)
    
    SPLAT_BEGIN_SEG(data_68CE58, 0x68CE58, 0x68CE58, )
        Yay0_68CE58_Yay0 = .;
        BUILD_DIR/bin/Yay0/68CE58.Yay0.o(.data);
    SPLAT_END_SEG(data_68CE58, 0x68D3B8)
    
    SPLAT_BEGIN_SEG(data_68D3B8, 0x68D3B8, 0x68D3B8, )
        Yay0_68D3B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/68D3B8.Yay0.o(.data);
    SPLAT_END_SEG(data_68D3B8, 0x68DDE0)
    
    SPLAT_BEGIN_SEG(data_68DDE0, 0x68DDE0, 0x68DDE0, )
        Yay0_68DDE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/68DDE0.Yay0.o(.data);
    SPLAT_END_SEG(data_68DDE0, 0x68EAA0)
    
    SPLAT_BEGIN_SEG(data_68EAA0, 0x68EAA0, 0x68EAA0, )
        Yay0_68EAA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/68EAA0.Yay0.o(.data);
    SPLAT_END_SEG(data_68EAA0, 0x68F370)
    
    SPLAT_BEGIN_SEG(data_68F370, 0x68F370, 0x68F370, )
        Yay0_68F370_Yay0 = .;
        BUILD_DIR/bin/Yay0/68F370.Yay0.o(.data);
    SPLAT_END_SEG(data_68F370, 0x68F710)
    
    SPLAT_BEGIN_SEG(data_68F710, 0x68F710, 0x68F710, )
        Yay0_68F710_Yay0 = .;
        BUILD_DIR/bin/Yay0/68F710.Yay0.o(.data);
    SPLAT_END_SEG(data_68F710, 0x68FE48)
    
    SPLAT_BEGIN_SEG(data_68FE48, 0x68FE48, 0x68FE48, )
        Yay0_68FE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/68FE48.Yay0.o(.data);
    SPLAT_END_SEG(data_68FE48, 0x690EF8)
    
    SPLAT_BEGIN_SEG(data_690EF8, 0x690EF8, 0x690EF8, )
        Yay0_690EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/690EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_690EF8, 0x691C98)
    
    SPLAT_BEGIN_SEG(data_691C98, 0x691C98, 0x691C98, )
        Yay0_691C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/691C98.Yay0.o(.data);
    SPLAT_END_SEG(data_691C98, 0x692610)
    
    SPLAT_BEGIN_SEG(data_692610, 0x692610, 0x692610, )
        Yay0_692610_Yay0 = .;
        BUILD_DIR/bin/Yay0/692610.Yay0.o(.data);
    SPLAT_END_SEG(data_692610, 0x692A20)
    
    SPLAT_BEGIN_SEG(data_692A20, 0x692A20, 0x692A20, )
        Yay0_692A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/692A20.Yay0.o(.data);
    SPLAT_END_SEG(data_692A20, 0x692E50)
    
    SPLAT_BEGIN_SEG(data_692E50, 0x692E50, 0x692E50, )
        Yay0_692E50_Yay0 = .;
        BUILD_DIR/bin/Yay0/692E50.Yay0.o(.data);
    SPLAT_END_SEG(data_692E50, 0x693310)
    
    SPLAT_BEGIN_SEG(data_693310, 0x693310, 0x693310, )
        Yay0_693310_Yay0 = .;
        BUILD_DIR/bin/Yay0/693310.Yay0.o(.data);
    SPLAT_END_SEG(data_693310, 0x693388)
    
    SPLAT_BEGIN_SEG(data_693388, 0x693388, 0x693388, )
        Yay0_693388_Yay0 = .;
        BUILD_DIR/bin/Yay0/693388.Yay0.o(.data);
    SPLAT_END_SEG(data_693388, 0x693590)
    
    SPLAT_BEGIN_SEG(data_693590, 0x693590, 0x693590, )
        Yay0_693590_Yay0 = .;
        BUILD_DIR/bin/Yay0/693590.Yay0.o(.data);
    SPLAT_END_SEG(data_693590, 0x693968)
    
    SPLAT_BEGIN_SEG(data_693968, 0x693968, 0x693968, )
        Yay0_693968_Yay0 = .;
        BUILD_DIR/bin/Yay0/693968.Yay0.o(.data);
    SPLAT_END_SEG(data_693968, 0x693B68)
    
    SPLAT_BEGIN_SEG(data_693B68, 0x693B68, 0x693B68, )
        Yay0_693B68_Yay0 = .;
        BUILD_DIR/bin/Yay0/693B68.Yay0.o(.data);
    SPLAT_END_SEG(data_693B68, 0x694828)
    
    SPLAT_BEGIN_SEG(data_694828, 0x694828, 0x694828, )
        Yay0_694828_Yay0 = .;
        BUILD_DIR/bin/Yay0/694828.Yay0.o(.data);
    SPLAT_END_SEG(data_694828, 0x695720)
    
    SPLAT_BEGIN_SEG(data_695720, 0x695720, 0x695720, )
        Yay0_695720_Yay0 = .;
        BUILD_DIR/bin/Yay0/695720.Yay0.o(.data);
    SPLAT_END_SEG(data_695720, 0x696300)
    
    SPLAT_BEGIN_SEG(data_696300, 0x696300, 0x696300, )
        Yay0_696300_Yay0 = .;
        BUILD_DIR/bin/Yay0/696300.Yay0.o(.data);
    SPLAT_END_SEG(data_696300, 0x696DA8)
    
    SPLAT_BEGIN_SEG(data_696DA8, 0x696DA8, 0x696DA8, )
        Yay0_696DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/696DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_696DA8, 0x6973B0)
    
    SPLAT_BEGIN_SEG(data_6973B0, 0x6973B0, 0x6973B0, )
        Yay0_6973B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6973B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6973B0, 0x697FD0)
    
    SPLAT_BEGIN_SEG(data_697FD0, 0x697FD0, 0x697FD0, )
        Yay0_697FD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/697FD0.Yay0.o(.data);
    SPLAT_END_SEG(data_697FD0, 0x698EB8)
    
    SPLAT_BEGIN_SEG(data_698EB8, 0x698EB8, 0x698EB8, )
        Yay0_698EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/698EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_698EB8, 0x6999B0)
    
    SPLAT_BEGIN_SEG(data_6999B0, 0x6999B0, 0x6999B0, )
        Yay0_6999B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6999B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6999B0, 0x699B28)
    
    SPLAT_BEGIN_SEG(data_699B28, 0x699B28, 0x699B28, )
        Yay0_699B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/699B28.Yay0.o(.data);
    SPLAT_END_SEG(data_699B28, 0x69A0F8)
    
    SPLAT_BEGIN_SEG(data_69A0F8, 0x69A0F8, 0x69A0F8, )
        Yay0_69A0F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/69A0F8.Yay0.o(.data);
    SPLAT_END_SEG(data_69A0F8, 0x69A300)
    
    SPLAT_BEGIN_SEG(data_69A300, 0x69A300, 0x69A300, )
        Yay0_69A300_Yay0 = .;
        BUILD_DIR/bin/Yay0/69A300.Yay0.o(.data);
    SPLAT_END_SEG(data_69A300, 0x69A668)
    
    SPLAT_BEGIN_SEG(data_69A668, 0x69A668, 0x69A668, )
        Yay0_69A668_Yay0 = .;
        BUILD_DIR/bin/Yay0/69A668.Yay0.o(.data);
    SPLAT_END_SEG(data_69A668, 0x69BD60)
    
    SPLAT_BEGIN_SEG(data_69BD60, 0x69BD60, 0x69BD60, )
        Yay0_69BD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/69BD60.Yay0.o(.data);
    SPLAT_END_SEG(data_69BD60, 0x69C108)
    
    SPLAT_BEGIN_SEG(data_69C108, 0x69C108, 0x69C108, )
        Yay0_69C108_Yay0 = .;
        BUILD_DIR/bin/Yay0/69C108.Yay0.o(.data);
    SPLAT_END_SEG(data_69C108, 0x69C2C0)
    
    SPLAT_BEGIN_SEG(data_69C2C0, 0x69C2C0, 0x69C2C0, )
        Yay0_69C2C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/69C2C0.Yay0.o(.data);
    SPLAT_END_SEG(data_69C2C0, 0x69CC38)
    
    SPLAT_BEGIN_SEG(data_69CC38, 0x69CC38, 0x69CC38, )
        Yay0_69CC38_Yay0 = .;
        BUILD_DIR/bin/Yay0/69CC38.Yay0.o(.data);
    SPLAT_END_SEG(data_69CC38, 0x69D0A0)
    
    SPLAT_BEGIN_SEG(data_69D0A0, 0x69D0A0, 0x69D0A0, )
        Yay0_69D0A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/69D0A0.Yay0.o(.data);
    SPLAT_END_SEG(data_69D0A0, 0x69D200)
    
    SPLAT_BEGIN_SEG(data_69D200, 0x69D200, 0x69D200, )
        Yay0_69D200_Yay0 = .;
        BUILD_DIR/bin/Yay0/69D200.Yay0.o(.data);
    SPLAT_END_SEG(data_69D200, 0x69DA80)
    
    SPLAT_BEGIN_SEG(data_69DA80, 0x69DA80, 0x69DA80, )
        Yay0_69DA80_Yay0 = .;
        BUILD_DIR/bin/Yay0/69DA80.Yay0.o(.data);
    SPLAT_END_SEG(data_69DA80, 0x69E1E0)
    
    SPLAT_BEGIN_SEG(data_69E1E0, 0x69E1E0, 0x69E1E0, )
        Yay0_69E1E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/69E1E0.Yay0.o(.data);
    SPLAT_END_SEG(data_69E1E0, 0x69E568)
    
    SPLAT_BEGIN_SEG(data_69E568, 0x69E568, 0x69E568, )
        Yay0_69E568_Yay0 = .;
        BUILD_DIR/bin/Yay0/69E568.Yay0.o(.data);
    SPLAT_END_SEG(data_69E568, 0x69E690)
    
    SPLAT_BEGIN_SEG(data_69E690, 0x69E690, 0x69E690, )
        Yay0_69E690_Yay0 = .;
        BUILD_DIR/bin/Yay0/69E690.Yay0.o(.data);
    SPLAT_END_SEG(data_69E690, 0x69EC08)
    
    SPLAT_BEGIN_SEG(data_69EC08, 0x69EC08, 0x69EC08, )
        Yay0_69EC08_Yay0 = .;
        BUILD_DIR/bin/Yay0/69EC08.Yay0.o(.data);
    SPLAT_END_SEG(data_69EC08, 0x69EDA8)
    
    SPLAT_BEGIN_SEG(data_69EDA8, 0x69EDA8, 0x69EDA8, )
        Yay0_69EDA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/69EDA8.Yay0.o(.data);
    SPLAT_END_SEG(data_69EDA8, 0x69F718)
    
    SPLAT_BEGIN_SEG(data_69F718, 0x69F718, 0x69F718, )
        Yay0_69F718_Yay0 = .;
        BUILD_DIR/bin/Yay0/69F718.Yay0.o(.data);
    SPLAT_END_SEG(data_69F718, 0x69FA00)
    
    SPLAT_BEGIN_SEG(data_69FA00, 0x69FA00, 0x69FA00, )
        Yay0_69FA00_Yay0 = .;
        BUILD_DIR/bin/Yay0/69FA00.Yay0.o(.data);
    SPLAT_END_SEG(data_69FA00, 0x6A0448)
    
    SPLAT_BEGIN_SEG(data_6A0448, 0x6A0448, 0x6A0448, )
        Yay0_6A0448_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A0448.Yay0.o(.data);
    SPLAT_END_SEG(data_6A0448, 0x6A05E0)
    
    SPLAT_BEGIN_SEG(data_6A05E0, 0x6A05E0, 0x6A05E0, )
        Yay0_6A05E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A05E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A05E0, 0x6A0CA8)
    
    SPLAT_BEGIN_SEG(data_6A0CA8, 0x6A0CA8, 0x6A0CA8, )
        Yay0_6A0CA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A0CA8.Yay0.o(.data);
    SPLAT_END_SEG(data_6A0CA8, 0x6A0D28)
    
    SPLAT_BEGIN_SEG(data_6A0D28, 0x6A0D28, 0x6A0D28, )
        Yay0_6A0D28_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A0D28.Yay0.o(.data);
    SPLAT_END_SEG(data_6A0D28, 0x6A0DB0)
    
    SPLAT_BEGIN_SEG(data_6A0DB0, 0x6A0DB0, 0x6A0DB0, )
        Yay0_6A0DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A0DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A0DB0, 0x6A14C8)
    
    SPLAT_BEGIN_SEG(data_6A14C8, 0x6A14C8, 0x6A14C8, )
        Yay0_6A14C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A14C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6A14C8, 0x6A16D0)
    
    SPLAT_BEGIN_SEG(data_6A16D0, 0x6A16D0, 0x6A16D0, )
        Yay0_6A16D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A16D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A16D0, 0x6A1ED8)
    
    SPLAT_BEGIN_SEG(data_6A1ED8, 0x6A1ED8, 0x6A1ED8, )
        Yay0_6A1ED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A1ED8.Yay0.o(.data);
    SPLAT_END_SEG(data_6A1ED8, 0x6A2D88)
    
    SPLAT_BEGIN_SEG(data_6A2D88, 0x6A2D88, 0x6A2D88, )
        Yay0_6A2D88_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A2D88.Yay0.o(.data);
    SPLAT_END_SEG(data_6A2D88, 0x6A3728)
    
    SPLAT_BEGIN_SEG(data_6A3728, 0x6A3728, 0x6A3728, )
        Yay0_6A3728_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A3728.Yay0.o(.data);
    SPLAT_END_SEG(data_6A3728, 0x6A3B70)
    
    SPLAT_BEGIN_SEG(data_6A3B70, 0x6A3B70, 0x6A3B70, )
        Yay0_6A3B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A3B70.Yay0.o(.data);
    SPLAT_END_SEG(data_6A3B70, 0x6A3DD0)
    
    SPLAT_BEGIN_SEG(data_6A3DD0, 0x6A3DD0, 0x6A3DD0, )
        Yay0_6A3DD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A3DD0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A3DD0, 0x6A4130)
    
    SPLAT_BEGIN_SEG(data_6A4130, 0x6A4130, 0x6A4130, )
        Yay0_6A4130_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A4130.Yay0.o(.data);
    SPLAT_END_SEG(data_6A4130, 0x6A4608)
    
    SPLAT_BEGIN_SEG(data_6A4608, 0x6A4608, 0x6A4608, )
        Yay0_6A4608_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A4608.Yay0.o(.data);
    SPLAT_END_SEG(data_6A4608, 0x6A4FA8)
    
    SPLAT_BEGIN_SEG(data_6A4FA8, 0x6A4FA8, 0x6A4FA8, )
        Yay0_6A4FA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A4FA8.Yay0.o(.data);
    SPLAT_END_SEG(data_6A4FA8, 0x6A5168)
    
    SPLAT_BEGIN_SEG(data_6A5168, 0x6A5168, 0x6A5168, )
        Yay0_6A5168_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A5168.Yay0.o(.data);
    SPLAT_END_SEG(data_6A5168, 0x6A5400)
    
    SPLAT_BEGIN_SEG(data_6A5400, 0x6A5400, 0x6A5400, )
        Yay0_6A5400_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A5400.Yay0.o(.data);
    SPLAT_END_SEG(data_6A5400, 0x6A5560)
    
    SPLAT_BEGIN_SEG(data_6A5560, 0x6A5560, 0x6A5560, )
        Yay0_6A5560_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A5560.Yay0.o(.data);
    SPLAT_END_SEG(data_6A5560, 0x6A6358)
    
    SPLAT_BEGIN_SEG(data_6A6358, 0x6A6358, 0x6A6358, )
        Yay0_6A6358_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A6358.Yay0.o(.data);
    SPLAT_END_SEG(data_6A6358, 0x6A6528)
    
    SPLAT_BEGIN_SEG(data_6A6528, 0x6A6528, 0x6A6528, )
        Yay0_6A6528_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A6528.Yay0.o(.data);
    SPLAT_END_SEG(data_6A6528, 0x6A67C0)
    
    SPLAT_BEGIN_SEG(data_6A67C0, 0x6A67C0, 0x6A67C0, )
        Yay0_6A67C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A67C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A67C0, 0x6A6BC8)
    
    SPLAT_BEGIN_SEG(data_6A6BC8, 0x6A6BC8, 0x6A6BC8, )
        Yay0_6A6BC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A6BC8.Yay0.o(.data);
    SPLAT_END_SEG(data_6A6BC8, 0x6A7678)
    
    SPLAT_BEGIN_SEG(data_6A7678, 0x6A7678, 0x6A7678, )
        Yay0_6A7678_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A7678.Yay0.o(.data);
    SPLAT_END_SEG(data_6A7678, 0x6A7D70)
    
    SPLAT_BEGIN_SEG(data_6A7D70, 0x6A7D70, 0x6A7D70, )
        Yay0_6A7D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A7D70.Yay0.o(.data);
    SPLAT_END_SEG(data_6A7D70, 0x6A7F08)
    
    SPLAT_BEGIN_SEG(data_6A7F08, 0x6A7F08, 0x6A7F08, )
        Yay0_6A7F08_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A7F08.Yay0.o(.data);
    SPLAT_END_SEG(data_6A7F08, 0x6A8000)
    
    SPLAT_BEGIN_SEG(data_6A8000, 0x6A8000, 0x6A8000, )
        Yay0_6A8000_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A8000.Yay0.o(.data);
    SPLAT_END_SEG(data_6A8000, 0x6A8258)
    
    SPLAT_BEGIN_SEG(data_6A8258, 0x6A8258, 0x6A8258, )
        Yay0_6A8258_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A8258.Yay0.o(.data);
    SPLAT_END_SEG(data_6A8258, 0x6A84B8)
    
    SPLAT_BEGIN_SEG(data_6A84B8, 0x6A84B8, 0x6A84B8, )
        Yay0_6A84B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A84B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6A84B8, 0x6A87F0)
    
    SPLAT_BEGIN_SEG(data_6A87F0, 0x6A87F0, 0x6A87F0, )
        Yay0_6A87F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A87F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A87F0, 0x6A90C0)
    
    SPLAT_BEGIN_SEG(data_6A90C0, 0x6A90C0, 0x6A90C0, )
        Yay0_6A90C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6A90C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6A90C0, 0x6AA3B0)
    
    SPLAT_BEGIN_SEG(data_6AA3B0, 0x6AA3B0, 0x6AA3B0, )
        Yay0_6AA3B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AA3B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6AA3B0, 0x6AACF0)
    
    SPLAT_BEGIN_SEG(data_6AACF0, 0x6AACF0, 0x6AACF0, )
        Yay0_6AACF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AACF0.Yay0.o(.data);
    SPLAT_END_SEG(data_6AACF0, 0x6AB310)
    
    SPLAT_BEGIN_SEG(data_6AB310, 0x6AB310, 0x6AB310, )
        Yay0_6AB310_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AB310.Yay0.o(.data);
    SPLAT_END_SEG(data_6AB310, 0x6AB8A8)
    
    SPLAT_BEGIN_SEG(data_6AB8A8, 0x6AB8A8, 0x6AB8A8, )
        Yay0_6AB8A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AB8A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6AB8A8, 0x6AB9C0)
    
    SPLAT_BEGIN_SEG(data_6AB9C0, 0x6AB9C0, 0x6AB9C0, )
        Yay0_6AB9C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AB9C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6AB9C0, 0x6ABBA0)
    
    SPLAT_BEGIN_SEG(data_6ABBA0, 0x6ABBA0, 0x6ABBA0, )
        Yay0_6ABBA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ABBA0.Yay0.o(.data);
    SPLAT_END_SEG(data_6ABBA0, 0x6ABEA0)
    
    SPLAT_BEGIN_SEG(data_6ABEA0, 0x6ABEA0, 0x6ABEA0, )
        Yay0_6ABEA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ABEA0.Yay0.o(.data);
    SPLAT_END_SEG(data_6ABEA0, 0x6AC158)
    
    SPLAT_BEGIN_SEG(data_6AC158, 0x6AC158, 0x6AC158, )
        Yay0_6AC158_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AC158.Yay0.o(.data);
    SPLAT_END_SEG(data_6AC158, 0x6AC2D0)
    
    SPLAT_BEGIN_SEG(data_6AC2D0, 0x6AC2D0, 0x6AC2D0, )
        Yay0_6AC2D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AC2D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6AC2D0, 0x6AC460)
    
    SPLAT_BEGIN_SEG(data_6AC460, 0x6AC460, 0x6AC460, )
        Yay0_6AC460_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AC460.Yay0.o(.data);
    SPLAT_END_SEG(data_6AC460, 0x6AC5D8)
    
    SPLAT_BEGIN_SEG(data_6AC5D8, 0x6AC5D8, 0x6AC5D8, )
        Yay0_6AC5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AC5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6AC5D8, 0x6ACAE0)
    
    SPLAT_BEGIN_SEG(data_6ACAE0, 0x6ACAE0, 0x6ACAE0, )
        Yay0_6ACAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ACAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_6ACAE0, 0x6ACC68)
    
    SPLAT_BEGIN_SEG(data_6ACC68, 0x6ACC68, 0x6ACC68, )
        Yay0_6ACC68_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ACC68.Yay0.o(.data);
    SPLAT_END_SEG(data_6ACC68, 0x6ACCB0)
    
    SPLAT_BEGIN_SEG(data_6ACCB0, 0x6ACCB0, 0x6ACCB0, )
        Yay0_6ACCB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ACCB0.Yay0.o(.data);
    SPLAT_END_SEG(data_6ACCB0, 0x6AD160)
    
    SPLAT_BEGIN_SEG(data_6AD160, 0x6AD160, 0x6AD160, )
        Yay0_6AD160_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AD160.Yay0.o(.data);
    SPLAT_END_SEG(data_6AD160, 0x6AD760)
    
    SPLAT_BEGIN_SEG(data_6AD760, 0x6AD760, 0x6AD760, )
        Yay0_6AD760_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AD760.Yay0.o(.data);
    SPLAT_END_SEG(data_6AD760, 0x6ADA30)
    
    SPLAT_BEGIN_SEG(data_6ADA30, 0x6ADA30, 0x6ADA30, )
        Yay0_6ADA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ADA30.Yay0.o(.data);
    SPLAT_END_SEG(data_6ADA30, 0x6ADE20)
    
    SPLAT_BEGIN_SEG(data_6ADE20, 0x6ADE20, 0x6ADE20, )
        Yay0_6ADE20_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ADE20.Yay0.o(.data);
    SPLAT_END_SEG(data_6ADE20, 0x6AE1E8)
    
    SPLAT_BEGIN_SEG(data_6AE1E8, 0x6AE1E8, 0x6AE1E8, )
        Yay0_6AE1E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AE1E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6AE1E8, 0x6AE5B0)
    
    SPLAT_BEGIN_SEG(data_6AE5B0, 0x6AE5B0, 0x6AE5B0, )
        Yay0_6AE5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AE5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6AE5B0, 0x6AE6D8)
    
    SPLAT_BEGIN_SEG(data_6AE6D8, 0x6AE6D8, 0x6AE6D8, )
        Yay0_6AE6D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AE6D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6AE6D8, 0x6AF108)
    
    SPLAT_BEGIN_SEG(data_6AF108, 0x6AF108, 0x6AF108, )
        Yay0_6AF108_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AF108.Yay0.o(.data);
    SPLAT_END_SEG(data_6AF108, 0x6AF708)
    
    SPLAT_BEGIN_SEG(data_6AF708, 0x6AF708, 0x6AF708, )
        Yay0_6AF708_Yay0 = .;
        BUILD_DIR/bin/Yay0/6AF708.Yay0.o(.data);
    SPLAT_END_SEG(data_6AF708, 0x6B01F8)
    
    SPLAT_BEGIN_SEG(data_6B01F8, 0x6B01F8, 0x6B01F8, )
        Yay0_6B01F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B01F8.Yay0.o(.data);
    SPLAT_END_SEG(data_6B01F8, 0x6B07C0)
    
    SPLAT_BEGIN_SEG(data_6B07C0, 0x6B07C0, 0x6B07C0, )
        Yay0_6B07C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B07C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6B07C0, 0x6B0EA8)
    
    SPLAT_BEGIN_SEG(data_6B0EA8, 0x6B0EA8, 0x6B0EA8, )
        Yay0_6B0EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B0EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_6B0EA8, 0x6B16F8)
    
    SPLAT_BEGIN_SEG(data_6B16F8, 0x6B16F8, 0x6B16F8, )
        Yay0_6B16F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B16F8.Yay0.o(.data);
    SPLAT_END_SEG(data_6B16F8, 0x6B1CF8)
    
    SPLAT_BEGIN_SEG(data_6B1CF8, 0x6B1CF8, 0x6B1CF8, )
        Yay0_6B1CF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B1CF8.Yay0.o(.data);
    SPLAT_END_SEG(data_6B1CF8, 0x6B2890)
    
    SPLAT_BEGIN_SEG(data_6B2890, 0x6B2890, 0x6B2890, )
        Yay0_6B2890_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B2890.Yay0.o(.data);
    SPLAT_END_SEG(data_6B2890, 0x6B2A98)
    
    SPLAT_BEGIN_SEG(data_6B2A98, 0x6B2A98, 0x6B2A98, )
        Yay0_6B2A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B2A98.Yay0.o(.data);
    SPLAT_END_SEG(data_6B2A98, 0x6B2E80)
    
    SPLAT_BEGIN_SEG(data_6B2E80, 0x6B2E80, 0x6B2E80, )
        Yay0_6B2E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B2E80.Yay0.o(.data);
    SPLAT_END_SEG(data_6B2E80, 0x6B4438)
    
    SPLAT_BEGIN_SEG(data_6B4438, 0x6B4438, 0x6B4438, )
        Yay0_6B4438_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B4438.Yay0.o(.data);
    SPLAT_END_SEG(data_6B4438, 0x6B5620)
    
    SPLAT_BEGIN_SEG(data_6B5620, 0x6B5620, 0x6B5620, )
        Yay0_6B5620_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B5620.Yay0.o(.data);
    SPLAT_END_SEG(data_6B5620, 0x6B57B8)
    
    SPLAT_BEGIN_SEG(data_6B57B8, 0x6B57B8, 0x6B57B8, )
        Yay0_6B57B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B57B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6B57B8, 0x6B7090)
    
    SPLAT_BEGIN_SEG(data_6B7090, 0x6B7090, 0x6B7090, )
        Yay0_6B7090_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B7090.Yay0.o(.data);
    SPLAT_END_SEG(data_6B7090, 0x6B7300)
    
    SPLAT_BEGIN_SEG(data_6B7300, 0x6B7300, 0x6B7300, )
        Yay0_6B7300_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B7300.Yay0.o(.data);
    SPLAT_END_SEG(data_6B7300, 0x6B77A0)
    
    SPLAT_BEGIN_SEG(data_6B77A0, 0x6B77A0, 0x6B77A0, )
        Yay0_6B77A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B77A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6B77A0, 0x6B85C8)
    
    SPLAT_BEGIN_SEG(data_6B85C8, 0x6B85C8, 0x6B85C8, )
        Yay0_6B85C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6B85C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6B85C8, 0x6BA3F0)
    
    SPLAT_BEGIN_SEG(data_6BA3F0, 0x6BA3F0, 0x6BA3F0, )
        Yay0_6BA3F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BA3F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6BA3F0, 0x6BA818)
    
    SPLAT_BEGIN_SEG(data_6BA818, 0x6BA818, 0x6BA818, )
        Yay0_6BA818_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BA818.Yay0.o(.data);
    SPLAT_END_SEG(data_6BA818, 0x6BAD60)
    
    SPLAT_BEGIN_SEG(data_6BAD60, 0x6BAD60, 0x6BAD60, )
        Yay0_6BAD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BAD60.Yay0.o(.data);
    SPLAT_END_SEG(data_6BAD60, 0x6BC158)
    
    SPLAT_BEGIN_SEG(data_6BC158, 0x6BC158, 0x6BC158, )
        Yay0_6BC158_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BC158.Yay0.o(.data);
    SPLAT_END_SEG(data_6BC158, 0x6BC758)
    
    SPLAT_BEGIN_SEG(data_6BC758, 0x6BC758, 0x6BC758, )
        Yay0_6BC758_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BC758.Yay0.o(.data);
    SPLAT_END_SEG(data_6BC758, 0x6BCAD8)
    
    SPLAT_BEGIN_SEG(data_6BCAD8, 0x6BCAD8, 0x6BCAD8, )
        Yay0_6BCAD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BCAD8.Yay0.o(.data);
    SPLAT_END_SEG(data_6BCAD8, 0x6BD118)
    
    SPLAT_BEGIN_SEG(data_6BD118, 0x6BD118, 0x6BD118, )
        Yay0_6BD118_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BD118.Yay0.o(.data);
    SPLAT_END_SEG(data_6BD118, 0x6BD618)
    
    SPLAT_BEGIN_SEG(data_6BD618, 0x6BD618, 0x6BD618, )
        Yay0_6BD618_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BD618.Yay0.o(.data);
    SPLAT_END_SEG(data_6BD618, 0x6BE378)
    
    SPLAT_BEGIN_SEG(data_6BE378, 0x6BE378, 0x6BE378, )
        Yay0_6BE378_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BE378.Yay0.o(.data);
    SPLAT_END_SEG(data_6BE378, 0x6BE570)
    
    SPLAT_BEGIN_SEG(data_6BE570, 0x6BE570, 0x6BE570, )
        Yay0_6BE570_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BE570.Yay0.o(.data);
    SPLAT_END_SEG(data_6BE570, 0x6BE6D8)
    
    SPLAT_BEGIN_SEG(data_6BE6D8, 0x6BE6D8, 0x6BE6D8, )
        Yay0_6BE6D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BE6D8.Yay0.o(.data);
    SPLAT_END_SEG(data_6BE6D8, 0x6BE9A8)
    
    SPLAT_BEGIN_SEG(data_6BE9A8, 0x6BE9A8, 0x6BE9A8, )
        Yay0_6BE9A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BE9A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6BE9A8, 0x6BF030)
    
    SPLAT_BEGIN_SEG(data_6BF030, 0x6BF030, 0x6BF030, )
        Yay0_6BF030_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BF030.Yay0.o(.data);
    SPLAT_END_SEG(data_6BF030, 0x6BF940)
    
    SPLAT_BEGIN_SEG(data_6BF940, 0x6BF940, 0x6BF940, )
        Yay0_6BF940_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BF940.Yay0.o(.data);
    SPLAT_END_SEG(data_6BF940, 0x6BFAE8)
    
    SPLAT_BEGIN_SEG(data_6BFAE8, 0x6BFAE8, 0x6BFAE8, )
        Yay0_6BFAE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6BFAE8.Yay0.o(.data);
    SPLAT_END_SEG(data_6BFAE8, 0x6C0758)
    
    SPLAT_BEGIN_SEG(data_6C0758, 0x6C0758, 0x6C0758, )
        Yay0_6C0758_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C0758.Yay0.o(.data);
    SPLAT_END_SEG(data_6C0758, 0x6C09B8)
    
    SPLAT_BEGIN_SEG(data_6C09B8, 0x6C09B8, 0x6C09B8, )
        Yay0_6C09B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C09B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6C09B8, 0x6C0B20)
    
    SPLAT_BEGIN_SEG(data_6C0B20, 0x6C0B20, 0x6C0B20, )
        Yay0_6C0B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C0B20.Yay0.o(.data);
    SPLAT_END_SEG(data_6C0B20, 0x6C0C78)
    
    SPLAT_BEGIN_SEG(data_6C0C78, 0x6C0C78, 0x6C0C78, )
        Yay0_6C0C78_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C0C78.Yay0.o(.data);
    SPLAT_END_SEG(data_6C0C78, 0x6C0D98)
    
    SPLAT_BEGIN_SEG(data_6C0D98, 0x6C0D98, 0x6C0D98, )
        Yay0_6C0D98_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C0D98.Yay0.o(.data);
    SPLAT_END_SEG(data_6C0D98, 0x6C0DE8)
    
    SPLAT_BEGIN_SEG(data_6C0DE8, 0x6C0DE8, 0x6C0DE8, )
        Yay0_6C0DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C0DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_6C0DE8, 0x6C1478)
    
    SPLAT_BEGIN_SEG(data_6C1478, 0x6C1478, 0x6C1478, )
        Yay0_6C1478_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C1478.Yay0.o(.data);
    SPLAT_END_SEG(data_6C1478, 0x6C1838)
    
    SPLAT_BEGIN_SEG(data_6C1838, 0x6C1838, 0x6C1838, )
        Yay0_6C1838_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C1838.Yay0.o(.data);
    SPLAT_END_SEG(data_6C1838, 0x6C1A70)
    
    SPLAT_BEGIN_SEG(data_6C1A70, 0x6C1A70, 0x6C1A70, )
        Yay0_6C1A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C1A70.Yay0.o(.data);
    SPLAT_END_SEG(data_6C1A70, 0x6C1DC8)
    
    SPLAT_BEGIN_SEG(data_6C1DC8, 0x6C1DC8, 0x6C1DC8, )
        Yay0_6C1DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C1DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_6C1DC8, 0x6C26C8)
    
    SPLAT_BEGIN_SEG(data_6C26C8, 0x6C26C8, 0x6C26C8, )
        Yay0_6C26C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C26C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6C26C8, 0x6C2B70)
    
    SPLAT_BEGIN_SEG(data_6C2B70, 0x6C2B70, 0x6C2B70, )
        Yay0_6C2B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C2B70.Yay0.o(.data);
    SPLAT_END_SEG(data_6C2B70, 0x6C32C8)
    
    SPLAT_BEGIN_SEG(data_6C32C8, 0x6C32C8, 0x6C32C8, )
        Yay0_6C32C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C32C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6C32C8, 0x6C4730)
    
    SPLAT_BEGIN_SEG(data_6C4730, 0x6C4730, 0x6C4730, )
        Yay0_6C4730_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C4730.Yay0.o(.data);
    SPLAT_END_SEG(data_6C4730, 0x6C4D90)
    
    SPLAT_BEGIN_SEG(data_6C4D90, 0x6C4D90, 0x6C4D90, )
        Yay0_6C4D90_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C4D90.Yay0.o(.data);
    SPLAT_END_SEG(data_6C4D90, 0x6C4E60)
    
    SPLAT_BEGIN_SEG(data_6C4E60, 0x6C4E60, 0x6C4E60, )
        Yay0_6C4E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C4E60.Yay0.o(.data);
    SPLAT_END_SEG(data_6C4E60, 0x6C5C50)
    
    SPLAT_BEGIN_SEG(data_6C5C50, 0x6C5C50, 0x6C5C50, )
        Yay0_6C5C50_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C5C50.Yay0.o(.data);
    SPLAT_END_SEG(data_6C5C50, 0x6C6BC0)
    
    SPLAT_BEGIN_SEG(data_6C6BC0, 0x6C6BC0, 0x6C6BC0, )
        Yay0_6C6BC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C6BC0.Yay0.o(.data);
    SPLAT_END_SEG(data_6C6BC0, 0x6C7348)
    
    SPLAT_BEGIN_SEG(data_6C7348, 0x6C7348, 0x6C7348, )
        Yay0_6C7348_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C7348.Yay0.o(.data);
    SPLAT_END_SEG(data_6C7348, 0x6C9E70)
    
    SPLAT_BEGIN_SEG(data_6C9E70, 0x6C9E70, 0x6C9E70, )
        Yay0_6C9E70_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C9E70.Yay0.o(.data);
    SPLAT_END_SEG(data_6C9E70, 0x6C9FE8)
    
    SPLAT_BEGIN_SEG(data_6C9FE8, 0x6C9FE8, 0x6C9FE8, )
        Yay0_6C9FE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6C9FE8.Yay0.o(.data);
    SPLAT_END_SEG(data_6C9FE8, 0x6CA748)
    
    SPLAT_BEGIN_SEG(data_6CA748, 0x6CA748, 0x6CA748, )
        Yay0_6CA748_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CA748.Yay0.o(.data);
    SPLAT_END_SEG(data_6CA748, 0x6CA988)
    
    SPLAT_BEGIN_SEG(data_6CA988, 0x6CA988, 0x6CA988, )
        Yay0_6CA988_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CA988.Yay0.o(.data);
    SPLAT_END_SEG(data_6CA988, 0x6CABC8)
    
    SPLAT_BEGIN_SEG(data_6CABC8, 0x6CABC8, 0x6CABC8, )
        Yay0_6CABC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CABC8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CABC8, 0x6CB108)
    
    SPLAT_BEGIN_SEG(data_6CB108, 0x6CB108, 0x6CB108, )
        Yay0_6CB108_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CB108.Yay0.o(.data);
    SPLAT_END_SEG(data_6CB108, 0x6CB3F0)
    
    SPLAT_BEGIN_SEG(data_6CB3F0, 0x6CB3F0, 0x6CB3F0, )
        Yay0_6CB3F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CB3F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6CB3F0, 0x6CB6E0)
    
    SPLAT_BEGIN_SEG(data_6CB6E0, 0x6CB6E0, 0x6CB6E0, )
        Yay0_6CB6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CB6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6CB6E0, 0x6CBFD8)
    
    SPLAT_BEGIN_SEG(data_6CBFD8, 0x6CBFD8, 0x6CBFD8, )
        Yay0_6CBFD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CBFD8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CBFD8, 0x6CC4D0)
    
    SPLAT_BEGIN_SEG(data_6CC4D0, 0x6CC4D0, 0x6CC4D0, )
        Yay0_6CC4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CC4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_6CC4D0, 0x6CCAB8)
    
    SPLAT_BEGIN_SEG(data_6CCAB8, 0x6CCAB8, 0x6CCAB8, )
        Yay0_6CCAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CCAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CCAB8, 0x6CCE48)
    
    SPLAT_BEGIN_SEG(data_6CCE48, 0x6CCE48, 0x6CCE48, )
        Yay0_6CCE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CCE48.Yay0.o(.data);
    SPLAT_END_SEG(data_6CCE48, 0x6CD250)
    
    SPLAT_BEGIN_SEG(data_6CD250, 0x6CD250, 0x6CD250, )
        Yay0_6CD250_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CD250.Yay0.o(.data);
    SPLAT_END_SEG(data_6CD250, 0x6CD510)
    
    SPLAT_BEGIN_SEG(data_6CD510, 0x6CD510, 0x6CD510, )
        Yay0_6CD510_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CD510.Yay0.o(.data);
    SPLAT_END_SEG(data_6CD510, 0x6CDC40)
    
    SPLAT_BEGIN_SEG(data_6CDC40, 0x6CDC40, 0x6CDC40, )
        Yay0_6CDC40_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CDC40.Yay0.o(.data);
    SPLAT_END_SEG(data_6CDC40, 0x6CDFB0)
    
    SPLAT_BEGIN_SEG(data_6CDFB0, 0x6CDFB0, 0x6CDFB0, )
        Yay0_6CDFB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CDFB0.Yay0.o(.data);
    SPLAT_END_SEG(data_6CDFB0, 0x6CE618)
    
    SPLAT_BEGIN_SEG(data_6CE618, 0x6CE618, 0x6CE618, )
        Yay0_6CE618_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CE618.Yay0.o(.data);
    SPLAT_END_SEG(data_6CE618, 0x6CE988)
    
    SPLAT_BEGIN_SEG(data_6CE988, 0x6CE988, 0x6CE988, )
        Yay0_6CE988_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CE988.Yay0.o(.data);
    SPLAT_END_SEG(data_6CE988, 0x6CF2E8)
    
    SPLAT_BEGIN_SEG(data_6CF2E8, 0x6CF2E8, 0x6CF2E8, )
        Yay0_6CF2E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CF2E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CF2E8, 0x6CF4E8)
    
    SPLAT_BEGIN_SEG(data_6CF4E8, 0x6CF4E8, 0x6CF4E8, )
        Yay0_6CF4E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CF4E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CF4E8, 0x6CF798)
    
    SPLAT_BEGIN_SEG(data_6CF798, 0x6CF798, 0x6CF798, )
        Yay0_6CF798_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CF798.Yay0.o(.data);
    SPLAT_END_SEG(data_6CF798, 0x6CF8E8)
    
    SPLAT_BEGIN_SEG(data_6CF8E8, 0x6CF8E8, 0x6CF8E8, )
        Yay0_6CF8E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CF8E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CF8E8, 0x6CFAC8)
    
    SPLAT_BEGIN_SEG(data_6CFAC8, 0x6CFAC8, 0x6CFAC8, )
        Yay0_6CFAC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6CFAC8.Yay0.o(.data);
    SPLAT_END_SEG(data_6CFAC8, 0x6D02F8)
    
    SPLAT_BEGIN_SEG(data_6D02F8, 0x6D02F8, 0x6D02F8, )
        Yay0_6D02F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D02F8.Yay0.o(.data);
    SPLAT_END_SEG(data_6D02F8, 0x6D0938)
    
    SPLAT_BEGIN_SEG(data_6D0938, 0x6D0938, 0x6D0938, )
        Yay0_6D0938_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D0938.Yay0.o(.data);
    SPLAT_END_SEG(data_6D0938, 0x6D0DC8)
    
    SPLAT_BEGIN_SEG(data_6D0DC8, 0x6D0DC8, 0x6D0DC8, )
        Yay0_6D0DC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D0DC8.Yay0.o(.data);
    SPLAT_END_SEG(data_6D0DC8, 0x6D1218)
    
    SPLAT_BEGIN_SEG(data_6D1218, 0x6D1218, 0x6D1218, )
        Yay0_6D1218_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D1218.Yay0.o(.data);
    SPLAT_END_SEG(data_6D1218, 0x6D1808)
    
    SPLAT_BEGIN_SEG(data_6D1808, 0x6D1808, 0x6D1808, )
        Yay0_6D1808_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D1808.Yay0.o(.data);
    SPLAT_END_SEG(data_6D1808, 0x6D2428)
    
    SPLAT_BEGIN_SEG(data_6D2428, 0x6D2428, 0x6D2428, )
        Yay0_6D2428_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D2428.Yay0.o(.data);
    SPLAT_END_SEG(data_6D2428, 0x6D3958)
    
    SPLAT_BEGIN_SEG(data_6D3958, 0x6D3958, 0x6D3958, )
        Yay0_6D3958_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D3958.Yay0.o(.data);
    SPLAT_END_SEG(data_6D3958, 0x6D3E28)
    
    SPLAT_BEGIN_SEG(data_6D3E28, 0x6D3E28, 0x6D3E28, )
        Yay0_6D3E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D3E28.Yay0.o(.data);
    SPLAT_END_SEG(data_6D3E28, 0x6D4EB8)
    
    SPLAT_BEGIN_SEG(data_6D4EB8, 0x6D4EB8, 0x6D4EB8, )
        Yay0_6D4EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D4EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_6D4EB8, 0x6D5448)
    
    SPLAT_BEGIN_SEG(data_6D5448, 0x6D5448, 0x6D5448, )
        Yay0_6D5448_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D5448.Yay0.o(.data);
    SPLAT_END_SEG(data_6D5448, 0x6D5D58)
    
    SPLAT_BEGIN_SEG(data_6D5D58, 0x6D5D58, 0x6D5D58, )
        Yay0_6D5D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D5D58.Yay0.o(.data);
    SPLAT_END_SEG(data_6D5D58, 0x6D6428)
    
    SPLAT_BEGIN_SEG(data_6D6428, 0x6D6428, 0x6D6428, )
        Yay0_6D6428_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D6428.Yay0.o(.data);
    SPLAT_END_SEG(data_6D6428, 0x6D6C30)
    
    SPLAT_BEGIN_SEG(data_6D6C30, 0x6D6C30, 0x6D6C30, )
        Yay0_6D6C30_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D6C30.Yay0.o(.data);
    SPLAT_END_SEG(data_6D6C30, 0x6D7658)
    
    SPLAT_BEGIN_SEG(data_6D7658, 0x6D7658, 0x6D7658, )
        Yay0_6D7658_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D7658.Yay0.o(.data);
    SPLAT_END_SEG(data_6D7658, 0x6D7C60)
    
    SPLAT_BEGIN_SEG(data_6D7C60, 0x6D7C60, 0x6D7C60, )
        Yay0_6D7C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D7C60.Yay0.o(.data);
    SPLAT_END_SEG(data_6D7C60, 0x6D91E8)
    
    SPLAT_BEGIN_SEG(data_6D91E8, 0x6D91E8, 0x6D91E8, )
        Yay0_6D91E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D91E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6D91E8, 0x6D9AF8)
    
    SPLAT_BEGIN_SEG(data_6D9AF8, 0x6D9AF8, 0x6D9AF8, )
        Yay0_6D9AF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6D9AF8.Yay0.o(.data);
    SPLAT_END_SEG(data_6D9AF8, 0x6DB140)
    
    SPLAT_BEGIN_SEG(data_6DB140, 0x6DB140, 0x6DB140, )
        Yay0_6DB140_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DB140.Yay0.o(.data);
    SPLAT_END_SEG(data_6DB140, 0x6DBAC0)
    
    SPLAT_BEGIN_SEG(data_6DBAC0, 0x6DBAC0, 0x6DBAC0, )
        Yay0_6DBAC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DBAC0.Yay0.o(.data);
    SPLAT_END_SEG(data_6DBAC0, 0x6DC710)
    
    SPLAT_BEGIN_SEG(data_6DC710, 0x6DC710, 0x6DC710, )
        Yay0_6DC710_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DC710.Yay0.o(.data);
    SPLAT_END_SEG(data_6DC710, 0x6DD5E8)
    
    SPLAT_BEGIN_SEG(data_6DD5E8, 0x6DD5E8, 0x6DD5E8, )
        Yay0_6DD5E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DD5E8.Yay0.o(.data);
    SPLAT_END_SEG(data_6DD5E8, 0x6DDBF8)
    
    SPLAT_BEGIN_SEG(data_6DDBF8, 0x6DDBF8, 0x6DDBF8, )
        Yay0_6DDBF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DDBF8.Yay0.o(.data);
    SPLAT_END_SEG(data_6DDBF8, 0x6DE720)
    
    SPLAT_BEGIN_SEG(data_6DE720, 0x6DE720, 0x6DE720, )
        Yay0_6DE720_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DE720.Yay0.o(.data);
    SPLAT_END_SEG(data_6DE720, 0x6DF350)
    
    SPLAT_BEGIN_SEG(data_6DF350, 0x6DF350, 0x6DF350, )
        Yay0_6DF350_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DF350.Yay0.o(.data);
    SPLAT_END_SEG(data_6DF350, 0x6DF838)
    
    SPLAT_BEGIN_SEG(data_6DF838, 0x6DF838, 0x6DF838, )
        Yay0_6DF838_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DF838.Yay0.o(.data);
    SPLAT_END_SEG(data_6DF838, 0x6DFD78)
    
    SPLAT_BEGIN_SEG(data_6DFD78, 0x6DFD78, 0x6DFD78, )
        Yay0_6DFD78_Yay0 = .;
        BUILD_DIR/bin/Yay0/6DFD78.Yay0.o(.data);
    SPLAT_END_SEG(data_6DFD78, 0x6E0238)
    
    SPLAT_BEGIN_SEG(data_6E0238, 0x6E0238, 0x6E0238, )
        Yay0_6E0238_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E0238.Yay0.o(.data);
    SPLAT_END_SEG(data_6E0238, 0x6E0880)
    
    SPLAT_BEGIN_SEG(data_6E0880, 0x6E0880, 0x6E0880, )
        Yay0_6E0880_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E0880.Yay0.o(.data);
    SPLAT_END_SEG(data_6E0880, 0x6E13C0)
    
    SPLAT_BEGIN_SEG(data_6E13C0, 0x6E13C0, 0x6E13C0, )
        Yay0_6E13C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E13C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6E13C0, 0x6E2008)
    
    SPLAT_BEGIN_SEG(data_6E2008, 0x6E2008, 0x6E2008, )
        Yay0_6E2008_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E2008.Yay0.o(.data);
    SPLAT_END_SEG(data_6E2008, 0x6E2BB8)
    
    SPLAT_BEGIN_SEG(data_6E2BB8, 0x6E2BB8, 0x6E2BB8, )
        Yay0_6E2BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E2BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_6E2BB8, 0x6E3AE0)
    
    SPLAT_BEGIN_SEG(data_6E3AE0, 0x6E3AE0, 0x6E3AE0, )
        Yay0_6E3AE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E3AE0.Yay0.o(.data);
    SPLAT_END_SEG(data_6E3AE0, 0x6E51B0)
    
    SPLAT_BEGIN_SEG(data_6E51B0, 0x6E51B0, 0x6E51B0, )
        Yay0_6E51B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E51B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6E51B0, 0x6E6C18)
    
    SPLAT_BEGIN_SEG(data_6E6C18, 0x6E6C18, 0x6E6C18, )
        Yay0_6E6C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E6C18.Yay0.o(.data);
    SPLAT_END_SEG(data_6E6C18, 0x6E7BD8)
    
    SPLAT_BEGIN_SEG(data_6E7BD8, 0x6E7BD8, 0x6E7BD8, )
        Yay0_6E7BD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E7BD8.Yay0.o(.data);
    SPLAT_END_SEG(data_6E7BD8, 0x6E94C8)
    
    SPLAT_BEGIN_SEG(data_6E94C8, 0x6E94C8, 0x6E94C8, )
        Yay0_6E94C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6E94C8.Yay0.o(.data);
    SPLAT_END_SEG(data_6E94C8, 0x6EABD0)
    
    SPLAT_BEGIN_SEG(data_6EABD0, 0x6EABD0, 0x6EABD0, )
        Yay0_6EABD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6EABD0.Yay0.o(.data);
    SPLAT_END_SEG(data_6EABD0, 0x6EAE68)
    
    SPLAT_BEGIN_SEG(data_6EAE68, 0x6EAE68, 0x6EAE68, )
        Yay0_6EAE68_Yay0 = .;
        BUILD_DIR/bin/Yay0/6EAE68.Yay0.o(.data);
    SPLAT_END_SEG(data_6EAE68, 0x6ED538)
    
    SPLAT_BEGIN_SEG(data_6ED538, 0x6ED538, 0x6ED538, )
        Yay0_6ED538_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ED538.Yay0.o(.data);
    SPLAT_END_SEG(data_6ED538, 0x6ED8A8)
    
    SPLAT_BEGIN_SEG(data_6ED8A8, 0x6ED8A8, 0x6ED8A8, )
        Yay0_6ED8A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6ED8A8.Yay0.o(.data);
    SPLAT_END_SEG(data_6ED8A8, 0x6EDBB8)
    
    SPLAT_BEGIN_SEG(data_6EDBB8, 0x6EDBB8, 0x6EDBB8, )
        Yay0_6EDBB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6EDBB8.Yay0.o(.data);
    SPLAT_END_SEG(data_6EDBB8, 0x6EF180)
    
    SPLAT_BEGIN_SEG(data_6EF180, 0x6EF180, 0x6EF180, )
        Yay0_6EF180_Yay0 = .;
        BUILD_DIR/bin/Yay0/6EF180.Yay0.o(.data);
    SPLAT_END_SEG(data_6EF180, 0x6F0C70)
    
    SPLAT_BEGIN_SEG(data_6F0C70, 0x6F0C70, 0x6F0C70, )
        Yay0_6F0C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F0C70.Yay0.o(.data);
    SPLAT_END_SEG(data_6F0C70, 0x6F1060)
    
    SPLAT_BEGIN_SEG(data_6F1060, 0x6F1060, 0x6F1060, )
        Yay0_6F1060_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F1060.Yay0.o(.data);
    SPLAT_END_SEG(data_6F1060, 0x6F1288)
    
    SPLAT_BEGIN_SEG(data_6F1288, 0x6F1288, 0x6F1288, )
        Yay0_6F1288_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F1288.Yay0.o(.data);
    SPLAT_END_SEG(data_6F1288, 0x6F1360)
    
    SPLAT_BEGIN_SEG(data_6F1360, 0x6F1360, 0x6F1360, )
        Yay0_6F1360_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F1360.Yay0.o(.data);
    SPLAT_END_SEG(data_6F1360, 0x6F1508)
    
    SPLAT_BEGIN_SEG(data_6F1508, 0x6F1508, 0x6F1508, )
        Yay0_6F1508_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F1508.Yay0.o(.data);
    SPLAT_END_SEG(data_6F1508, 0x6F16C0)
    
    SPLAT_BEGIN_SEG(data_6F16C0, 0x6F16C0, 0x6F16C0, )
        Yay0_6F16C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F16C0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F16C0, 0x6F1868)
    
    SPLAT_BEGIN_SEG(data_6F1868, 0x6F1868, 0x6F1868, )
        Yay0_6F1868_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F1868.Yay0.o(.data);
    SPLAT_END_SEG(data_6F1868, 0x6F1AE0)
    
    SPLAT_BEGIN_SEG(data_6F1AE0, 0x6F1AE0, 0x6F1AE0, )
        Yay0_6F1AE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F1AE0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F1AE0, 0x6F2338)
    
    SPLAT_BEGIN_SEG(data_6F2338, 0x6F2338, 0x6F2338, )
        Yay0_6F2338_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F2338.Yay0.o(.data);
    SPLAT_END_SEG(data_6F2338, 0x6F2548)
    
    SPLAT_BEGIN_SEG(data_6F2548, 0x6F2548, 0x6F2548, )
        Yay0_6F2548_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F2548.Yay0.o(.data);
    SPLAT_END_SEG(data_6F2548, 0x6F2A48)
    
    SPLAT_BEGIN_SEG(data_6F2A48, 0x6F2A48, 0x6F2A48, )
        Yay0_6F2A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F2A48.Yay0.o(.data);
    SPLAT_END_SEG(data_6F2A48, 0x6F2FE0)
    
    SPLAT_BEGIN_SEG(data_6F2FE0, 0x6F2FE0, 0x6F2FE0, )
        Yay0_6F2FE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F2FE0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F2FE0, 0x6F35E0)
    
    SPLAT_BEGIN_SEG(data_6F35E0, 0x6F35E0, 0x6F35E0, )
        Yay0_6F35E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F35E0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F35E0, 0x6F3C80)
    
    SPLAT_BEGIN_SEG(data_6F3C80, 0x6F3C80, 0x6F3C80, )
        Yay0_6F3C80_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F3C80.Yay0.o(.data);
    SPLAT_END_SEG(data_6F3C80, 0x6F3F18)
    
    SPLAT_BEGIN_SEG(data_6F3F18, 0x6F3F18, 0x6F3F18, )
        Yay0_6F3F18_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F3F18.Yay0.o(.data);
    SPLAT_END_SEG(data_6F3F18, 0x6F4070)
    
    SPLAT_BEGIN_SEG(data_6F4070, 0x6F4070, 0x6F4070, )
        Yay0_6F4070_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4070.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4070, 0x6F4260)
    
    SPLAT_BEGIN_SEG(data_6F4260, 0x6F4260, 0x6F4260, )
        Yay0_6F4260_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4260.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4260, 0x6F4598)
    
    SPLAT_BEGIN_SEG(data_6F4598, 0x6F4598, 0x6F4598, )
        Yay0_6F4598_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4598.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4598, 0x6F4760)
    
    SPLAT_BEGIN_SEG(data_6F4760, 0x6F4760, 0x6F4760, )
        Yay0_6F4760_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4760.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4760, 0x6F4A38)
    
    SPLAT_BEGIN_SEG(data_6F4A38, 0x6F4A38, 0x6F4A38, )
        Yay0_6F4A38_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4A38.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4A38, 0x6F4CD8)
    
    SPLAT_BEGIN_SEG(data_6F4CD8, 0x6F4CD8, 0x6F4CD8, )
        Yay0_6F4CD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4CD8.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4CD8, 0x6F4E58)
    
    SPLAT_BEGIN_SEG(data_6F4E58, 0x6F4E58, 0x6F4E58, )
        Yay0_6F4E58_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4E58.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4E58, 0x6F4FD8)
    
    SPLAT_BEGIN_SEG(data_6F4FD8, 0x6F4FD8, 0x6F4FD8, )
        Yay0_6F4FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F4FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_6F4FD8, 0x6F5150)
    
    SPLAT_BEGIN_SEG(data_6F5150, 0x6F5150, 0x6F5150, )
        Yay0_6F5150_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F5150.Yay0.o(.data);
    SPLAT_END_SEG(data_6F5150, 0x6F5BE0)
    
    SPLAT_BEGIN_SEG(data_6F5BE0, 0x6F5BE0, 0x6F5BE0, )
        Yay0_6F5BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F5BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F5BE0, 0x6F6150)
    
    SPLAT_BEGIN_SEG(data_6F6150, 0x6F6150, 0x6F6150, )
        Yay0_6F6150_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F6150.Yay0.o(.data);
    SPLAT_END_SEG(data_6F6150, 0x6F64B0)
    
    SPLAT_BEGIN_SEG(data_6F64B0, 0x6F64B0, 0x6F64B0, )
        Yay0_6F64B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F64B0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F64B0, 0x6F67A0)
    
    SPLAT_BEGIN_SEG(data_6F67A0, 0x6F67A0, 0x6F67A0, )
        Yay0_6F67A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F67A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F67A0, 0x6F6C50)
    
    SPLAT_BEGIN_SEG(data_6F6C50, 0x6F6C50, 0x6F6C50, )
        Yay0_6F6C50_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F6C50.Yay0.o(.data);
    SPLAT_END_SEG(data_6F6C50, 0x6F6D80)
    
    SPLAT_BEGIN_SEG(data_6F6D80, 0x6F6D80, 0x6F6D80, )
        Yay0_6F6D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F6D80.Yay0.o(.data);
    SPLAT_END_SEG(data_6F6D80, 0x6F6FF0)
    
    SPLAT_BEGIN_SEG(data_6F6FF0, 0x6F6FF0, 0x6F6FF0, )
        Yay0_6F6FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F6FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F6FF0, 0x6F74A0)
    
    SPLAT_BEGIN_SEG(data_6F74A0, 0x6F74A0, 0x6F74A0, )
        Yay0_6F74A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F74A0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F74A0, 0x6F7628)
    
    SPLAT_BEGIN_SEG(data_6F7628, 0x6F7628, 0x6F7628, )
        Yay0_6F7628_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F7628.Yay0.o(.data);
    SPLAT_END_SEG(data_6F7628, 0x6F76F0)
    
    SPLAT_BEGIN_SEG(data_6F76F0, 0x6F76F0, 0x6F76F0, )
        Yay0_6F76F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F76F0.Yay0.o(.data);
    SPLAT_END_SEG(data_6F76F0, 0x6F7730)
    
    SPLAT_BEGIN_SEG(data_6F7730, 0x6F7730, 0x6F7730, )
        Yay0_6F7730_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F7730.Yay0.o(.data);
    SPLAT_END_SEG(data_6F7730, 0x6F8D60)
    
    SPLAT_BEGIN_SEG(data_6F8D60, 0x6F8D60, 0x6F8D60, )
        Yay0_6F8D60_Yay0 = .;
        BUILD_DIR/bin/Yay0/6F8D60.Yay0.o(.data);
    SPLAT_END_SEG(data_6F8D60, 0x6FA760)
    
    SPLAT_BEGIN_SEG(data_6FA760, 0x6FA760, 0x6FA760, )
        Yay0_6FA760_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FA760.Yay0.o(.data);
    SPLAT_END_SEG(data_6FA760, 0x6FBAD0)
    
    SPLAT_BEGIN_SEG(data_6FBAD0, 0x6FBAD0, 0x6FBAD0, )
        Yay0_6FBAD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FBAD0.Yay0.o(.data);
    SPLAT_END_SEG(data_6FBAD0, 0x6FD520)
    
    SPLAT_BEGIN_SEG(data_6FD520, 0x6FD520, 0x6FD520, )
        Yay0_6FD520_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FD520.Yay0.o(.data);
    SPLAT_END_SEG(data_6FD520, 0x6FDB68)
    
    SPLAT_BEGIN_SEG(data_6FDB68, 0x6FDB68, 0x6FDB68, )
        Yay0_6FDB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FDB68.Yay0.o(.data);
    SPLAT_END_SEG(data_6FDB68, 0x6FE1B8)
    
    SPLAT_BEGIN_SEG(data_6FE1B8, 0x6FE1B8, 0x6FE1B8, )
        Yay0_6FE1B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FE1B8.Yay0.o(.data);
    SPLAT_END_SEG(data_6FE1B8, 0x6FF628)
    
    SPLAT_BEGIN_SEG(data_6FF628, 0x6FF628, 0x6FF628, )
        Yay0_6FF628_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FF628.Yay0.o(.data);
    SPLAT_END_SEG(data_6FF628, 0x6FFDF0)
    
    SPLAT_BEGIN_SEG(data_6FFDF0, 0x6FFDF0, 0x6FFDF0, )
        Yay0_6FFDF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/6FFDF0.Yay0.o(.data);
    SPLAT_END_SEG(data_6FFDF0, 0x701748)
    
    SPLAT_BEGIN_SEG(data_701748, 0x701748, 0x701748, )
        Yay0_701748_Yay0 = .;
        BUILD_DIR/bin/Yay0/701748.Yay0.o(.data);
    SPLAT_END_SEG(data_701748, 0x702A68)
    
    SPLAT_BEGIN_SEG(data_702A68, 0x702A68, 0x702A68, )
        Yay0_702A68_Yay0 = .;
        BUILD_DIR/bin/Yay0/702A68.Yay0.o(.data);
    SPLAT_END_SEG(data_702A68, 0x703470)
    
    SPLAT_BEGIN_SEG(data_703470, 0x703470, 0x703470, )
        Yay0_703470_Yay0 = .;
        BUILD_DIR/bin/Yay0/703470.Yay0.o(.data);
    SPLAT_END_SEG(data_703470, 0x704490)
    
    SPLAT_BEGIN_SEG(data_704490, 0x704490, 0x704490, )
        Yay0_704490_Yay0 = .;
        BUILD_DIR/bin/Yay0/704490.Yay0.o(.data);
    SPLAT_END_SEG(data_704490, 0x7044C8)
    
    SPLAT_BEGIN_SEG(data_7044C8, 0x7044C8, 0x7044C8, )
        Yay0_7044C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7044C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7044C8, 0x705A08)
    
    SPLAT_BEGIN_SEG(data_705A08, 0x705A08, 0x705A08, )
        Yay0_705A08_Yay0 = .;
        BUILD_DIR/bin/Yay0/705A08.Yay0.o(.data);
    SPLAT_END_SEG(data_705A08, 0x705B78)
    
    SPLAT_BEGIN_SEG(data_705B78, 0x705B78, 0x705B78, )
        Yay0_705B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/705B78.Yay0.o(.data);
    SPLAT_END_SEG(data_705B78, 0x705F60)
    
    SPLAT_BEGIN_SEG(data_705F60, 0x705F60, 0x705F60, )
        Yay0_705F60_Yay0 = .;
        BUILD_DIR/bin/Yay0/705F60.Yay0.o(.data);
    SPLAT_END_SEG(data_705F60, 0x7060C8)
    
    SPLAT_BEGIN_SEG(data_7060C8, 0x7060C8, 0x7060C8, )
        Yay0_7060C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7060C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7060C8, 0x7067B8)
    
    SPLAT_BEGIN_SEG(data_7067B8, 0x7067B8, 0x7067B8, )
        Yay0_7067B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7067B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7067B8, 0x707100)
    
    SPLAT_BEGIN_SEG(data_707100, 0x707100, 0x707100, )
        Yay0_707100_Yay0 = .;
        BUILD_DIR/bin/Yay0/707100.Yay0.o(.data);
    SPLAT_END_SEG(data_707100, 0x707920)
    
    SPLAT_BEGIN_SEG(data_707920, 0x707920, 0x707920, )
        Yay0_707920_Yay0 = .;
        BUILD_DIR/bin/Yay0/707920.Yay0.o(.data);
    SPLAT_END_SEG(data_707920, 0x707ED0)
    
    SPLAT_BEGIN_SEG(data_707ED0, 0x707ED0, 0x707ED0, )
        Yay0_707ED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/707ED0.Yay0.o(.data);
    SPLAT_END_SEG(data_707ED0, 0x708A18)
    
    SPLAT_BEGIN_SEG(data_708A18, 0x708A18, 0x708A18, )
        Yay0_708A18_Yay0 = .;
        BUILD_DIR/bin/Yay0/708A18.Yay0.o(.data);
    SPLAT_END_SEG(data_708A18, 0x708D70)
    
    SPLAT_BEGIN_SEG(data_708D70, 0x708D70, 0x708D70, )
        Yay0_708D70_Yay0 = .;
        BUILD_DIR/bin/Yay0/708D70.Yay0.o(.data);
    SPLAT_END_SEG(data_708D70, 0x709048)
    
    SPLAT_BEGIN_SEG(data_709048, 0x709048, 0x709048, )
        Yay0_709048_Yay0 = .;
        BUILD_DIR/bin/Yay0/709048.Yay0.o(.data);
    SPLAT_END_SEG(data_709048, 0x7090B0)
    
    SPLAT_BEGIN_SEG(data_7090B0, 0x7090B0, 0x7090B0, )
        Yay0_7090B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7090B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7090B0, 0x7091F0)
    
    SPLAT_BEGIN_SEG(data_7091F0, 0x7091F0, 0x7091F0, )
        Yay0_7091F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7091F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7091F0, 0x709398)
    
    SPLAT_BEGIN_SEG(data_709398, 0x709398, 0x709398, )
        Yay0_709398_Yay0 = .;
        BUILD_DIR/bin/Yay0/709398.Yay0.o(.data);
    SPLAT_END_SEG(data_709398, 0x70A908)
    
    SPLAT_BEGIN_SEG(data_70A908, 0x70A908, 0x70A908, )
        Yay0_70A908_Yay0 = .;
        BUILD_DIR/bin/Yay0/70A908.Yay0.o(.data);
    SPLAT_END_SEG(data_70A908, 0x70B5E8)
    
    SPLAT_BEGIN_SEG(data_70B5E8, 0x70B5E8, 0x70B5E8, )
        Yay0_70B5E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/70B5E8.Yay0.o(.data);
    SPLAT_END_SEG(data_70B5E8, 0x70B7C8)
    
    SPLAT_BEGIN_SEG(data_70B7C8, 0x70B7C8, 0x70B7C8, )
        Yay0_70B7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/70B7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_70B7C8, 0x70C7E0)
    
    SPLAT_BEGIN_SEG(data_70C7E0, 0x70C7E0, 0x70C7E0, )
        Yay0_70C7E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/70C7E0.Yay0.o(.data);
    SPLAT_END_SEG(data_70C7E0, 0x70D470)
    
    SPLAT_BEGIN_SEG(data_70D470, 0x70D470, 0x70D470, )
        Yay0_70D470_Yay0 = .;
        BUILD_DIR/bin/Yay0/70D470.Yay0.o(.data);
    SPLAT_END_SEG(data_70D470, 0x70DF28)
    
    SPLAT_BEGIN_SEG(data_70DF28, 0x70DF28, 0x70DF28, )
        Yay0_70DF28_Yay0 = .;
        BUILD_DIR/bin/Yay0/70DF28.Yay0.o(.data);
    SPLAT_END_SEG(data_70DF28, 0x70E228)
    
    SPLAT_BEGIN_SEG(data_70E228, 0x70E228, 0x70E228, )
        Yay0_70E228_Yay0 = .;
        BUILD_DIR/bin/Yay0/70E228.Yay0.o(.data);
    SPLAT_END_SEG(data_70E228, 0x70EA08)
    
    SPLAT_BEGIN_SEG(data_70EA08, 0x70EA08, 0x70EA08, )
        Yay0_70EA08_Yay0 = .;
        BUILD_DIR/bin/Yay0/70EA08.Yay0.o(.data);
    SPLAT_END_SEG(data_70EA08, 0x710918)
    
    SPLAT_BEGIN_SEG(data_710918, 0x710918, 0x710918, )
        Yay0_710918_Yay0 = .;
        BUILD_DIR/bin/Yay0/710918.Yay0.o(.data);
    SPLAT_END_SEG(data_710918, 0x7110B0)
    
    SPLAT_BEGIN_SEG(data_7110B0, 0x7110B0, 0x7110B0, )
        Yay0_7110B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7110B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7110B0, 0x711D50)
    
    SPLAT_BEGIN_SEG(data_711D50, 0x711D50, 0x711D50, )
        Yay0_711D50_Yay0 = .;
        BUILD_DIR/bin/Yay0/711D50.Yay0.o(.data);
    SPLAT_END_SEG(data_711D50, 0x713320)
    
    SPLAT_BEGIN_SEG(data_713320, 0x713320, 0x713320, )
        Yay0_713320_Yay0 = .;
        BUILD_DIR/bin/Yay0/713320.Yay0.o(.data);
    SPLAT_END_SEG(data_713320, 0x714610)
    
    SPLAT_BEGIN_SEG(data_714610, 0x714610, 0x714610, )
        Yay0_714610_Yay0 = .;
        BUILD_DIR/bin/Yay0/714610.Yay0.o(.data);
    SPLAT_END_SEG(data_714610, 0x715FB0)
    
    SPLAT_BEGIN_SEG(data_715FB0, 0x715FB0, 0x715FB0, )
        Yay0_715FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/715FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_715FB0, 0x718B80)
    
    SPLAT_BEGIN_SEG(data_718B80, 0x718B80, 0x718B80, )
        Yay0_718B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/718B80.Yay0.o(.data);
    SPLAT_END_SEG(data_718B80, 0x71A360)
    
    SPLAT_BEGIN_SEG(data_71A360, 0x71A360, 0x71A360, )
        Yay0_71A360_Yay0 = .;
        BUILD_DIR/bin/Yay0/71A360.Yay0.o(.data);
    SPLAT_END_SEG(data_71A360, 0x71CDC0)
    
    SPLAT_BEGIN_SEG(data_71CDC0, 0x71CDC0, 0x71CDC0, )
        Yay0_71CDC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/71CDC0.Yay0.o(.data);
    SPLAT_END_SEG(data_71CDC0, 0x71D4A0)
    
    SPLAT_BEGIN_SEG(data_71D4A0, 0x71D4A0, 0x71D4A0, )
        Yay0_71D4A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/71D4A0.Yay0.o(.data);
    SPLAT_END_SEG(data_71D4A0, 0x71FEC8)
    
    SPLAT_BEGIN_SEG(data_71FEC8, 0x71FEC8, 0x71FEC8, )
        Yay0_71FEC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/71FEC8.Yay0.o(.data);
    SPLAT_END_SEG(data_71FEC8, 0x7201E0)
    
    SPLAT_BEGIN_SEG(data_7201E0, 0x7201E0, 0x7201E0, )
        Yay0_7201E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7201E0.Yay0.o(.data);
    SPLAT_END_SEG(data_7201E0, 0x722730)
    
    SPLAT_BEGIN_SEG(data_722730, 0x722730, 0x722730, )
        Yay0_722730_Yay0 = .;
        BUILD_DIR/bin/Yay0/722730.Yay0.o(.data);
    SPLAT_END_SEG(data_722730, 0x724D78)
    
    SPLAT_BEGIN_SEG(data_724D78, 0x724D78, 0x724D78, )
        Yay0_724D78_Yay0 = .;
        BUILD_DIR/bin/Yay0/724D78.Yay0.o(.data);
    SPLAT_END_SEG(data_724D78, 0x727730)
    
    SPLAT_BEGIN_SEG(data_727730, 0x727730, 0x727730, )
        Yay0_727730_Yay0 = .;
        BUILD_DIR/bin/Yay0/727730.Yay0.o(.data);
    SPLAT_END_SEG(data_727730, 0x729658)
    
    SPLAT_BEGIN_SEG(data_729658, 0x729658, 0x729658, )
        Yay0_729658_Yay0 = .;
        BUILD_DIR/bin/Yay0/729658.Yay0.o(.data);
    SPLAT_END_SEG(data_729658, 0x72B070)
    
    SPLAT_BEGIN_SEG(data_72B070, 0x72B070, 0x72B070, )
        Yay0_72B070_Yay0 = .;
        BUILD_DIR/bin/Yay0/72B070.Yay0.o(.data);
    SPLAT_END_SEG(data_72B070, 0x72CC08)
    
    SPLAT_BEGIN_SEG(data_72CC08, 0x72CC08, 0x72CC08, )
        Yay0_72CC08_Yay0 = .;
        BUILD_DIR/bin/Yay0/72CC08.Yay0.o(.data);
    SPLAT_END_SEG(data_72CC08, 0x72F768)
    
    SPLAT_BEGIN_SEG(data_72F768, 0x72F768, 0x72F768, )
        Yay0_72F768_Yay0 = .;
        BUILD_DIR/bin/Yay0/72F768.Yay0.o(.data);
    SPLAT_END_SEG(data_72F768, 0x72FE30)
    
    SPLAT_BEGIN_SEG(data_72FE30, 0x72FE30, 0x72FE30, )
        Yay0_72FE30_Yay0 = .;
        BUILD_DIR/bin/Yay0/72FE30.Yay0.o(.data);
    SPLAT_END_SEG(data_72FE30, 0x730F50)
    
    SPLAT_BEGIN_SEG(data_730F50, 0x730F50, 0x730F50, )
        Yay0_730F50_Yay0 = .;
        BUILD_DIR/bin/Yay0/730F50.Yay0.o(.data);
    SPLAT_END_SEG(data_730F50, 0x732458)
    
    SPLAT_BEGIN_SEG(data_732458, 0x732458, 0x732458, )
        Yay0_732458_Yay0 = .;
        BUILD_DIR/bin/Yay0/732458.Yay0.o(.data);
    SPLAT_END_SEG(data_732458, 0x732C88)
    
    SPLAT_BEGIN_SEG(data_732C88, 0x732C88, 0x732C88, )
        Yay0_732C88_Yay0 = .;
        BUILD_DIR/bin/Yay0/732C88.Yay0.o(.data);
    SPLAT_END_SEG(data_732C88, 0x733B90)
    
    SPLAT_BEGIN_SEG(data_733B90, 0x733B90, 0x733B90, )
        Yay0_733B90_Yay0 = .;
        BUILD_DIR/bin/Yay0/733B90.Yay0.o(.data);
    SPLAT_END_SEG(data_733B90, 0x733DB8)
    
    SPLAT_BEGIN_SEG(data_733DB8, 0x733DB8, 0x733DB8, )
        Yay0_733DB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/733DB8.Yay0.o(.data);
    SPLAT_END_SEG(data_733DB8, 0x7347C0)
    
    SPLAT_BEGIN_SEG(data_7347C0, 0x7347C0, 0x7347C0, )
        Yay0_7347C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7347C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7347C0, 0x734F88)
    
    SPLAT_BEGIN_SEG(data_734F88, 0x734F88, 0x734F88, )
        Yay0_734F88_Yay0 = .;
        BUILD_DIR/bin/Yay0/734F88.Yay0.o(.data);
    SPLAT_END_SEG(data_734F88, 0x7353A0)
    
    SPLAT_BEGIN_SEG(data_7353A0, 0x7353A0, 0x7353A0, )
        Yay0_7353A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7353A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7353A0, 0x735DD0)
    
    SPLAT_BEGIN_SEG(data_735DD0, 0x735DD0, 0x735DD0, )
        Yay0_735DD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/735DD0.Yay0.o(.data);
    SPLAT_END_SEG(data_735DD0, 0x736D00)
    
    SPLAT_BEGIN_SEG(data_736D00, 0x736D00, 0x736D00, )
        Yay0_736D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/736D00.Yay0.o(.data);
    SPLAT_END_SEG(data_736D00, 0x737788)
    
    SPLAT_BEGIN_SEG(data_737788, 0x737788, 0x737788, )
        Yay0_737788_Yay0 = .;
        BUILD_DIR/bin/Yay0/737788.Yay0.o(.data);
    SPLAT_END_SEG(data_737788, 0x738660)
    
    SPLAT_BEGIN_SEG(data_738660, 0x738660, 0x738660, )
        Yay0_738660_Yay0 = .;
        BUILD_DIR/bin/Yay0/738660.Yay0.o(.data);
    SPLAT_END_SEG(data_738660, 0x738C00)
    
    SPLAT_BEGIN_SEG(data_738C00, 0x738C00, 0x738C00, )
        Yay0_738C00_Yay0 = .;
        BUILD_DIR/bin/Yay0/738C00.Yay0.o(.data);
    SPLAT_END_SEG(data_738C00, 0x739590)
    
    SPLAT_BEGIN_SEG(data_739590, 0x739590, 0x739590, )
        Yay0_739590_Yay0 = .;
        BUILD_DIR/bin/Yay0/739590.Yay0.o(.data);
    SPLAT_END_SEG(data_739590, 0x739F10)
    
    SPLAT_BEGIN_SEG(data_739F10, 0x739F10, 0x739F10, )
        Yay0_739F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/739F10.Yay0.o(.data);
    SPLAT_END_SEG(data_739F10, 0x73B710)
    
    SPLAT_BEGIN_SEG(data_73B710, 0x73B710, 0x73B710, )
        Yay0_73B710_Yay0 = .;
        BUILD_DIR/bin/Yay0/73B710.Yay0.o(.data);
    SPLAT_END_SEG(data_73B710, 0x73BE50)
    
    SPLAT_BEGIN_SEG(data_73BE50, 0x73BE50, 0x73BE50, )
        Yay0_73BE50_Yay0 = .;
        BUILD_DIR/bin/Yay0/73BE50.Yay0.o(.data);
    SPLAT_END_SEG(data_73BE50, 0x73C508)
    
    SPLAT_BEGIN_SEG(data_73C508, 0x73C508, 0x73C508, )
        Yay0_73C508_Yay0 = .;
        BUILD_DIR/bin/Yay0/73C508.Yay0.o(.data);
    SPLAT_END_SEG(data_73C508, 0x73DAC0)
    
    SPLAT_BEGIN_SEG(data_73DAC0, 0x73DAC0, 0x73DAC0, )
        Yay0_73DAC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/73DAC0.Yay0.o(.data);
    SPLAT_END_SEG(data_73DAC0, 0x73E720)
    
    SPLAT_BEGIN_SEG(data_73E720, 0x73E720, 0x73E720, )
        Yay0_73E720_Yay0 = .;
        BUILD_DIR/bin/Yay0/73E720.Yay0.o(.data);
    SPLAT_END_SEG(data_73E720, 0x73F980)
    
    SPLAT_BEGIN_SEG(data_73F980, 0x73F980, 0x73F980, )
        Yay0_73F980_Yay0 = .;
        BUILD_DIR/bin/Yay0/73F980.Yay0.o(.data);
    SPLAT_END_SEG(data_73F980, 0x741A70)
    
    SPLAT_BEGIN_SEG(data_741A70, 0x741A70, 0x741A70, )
        Yay0_741A70_Yay0 = .;
        BUILD_DIR/bin/Yay0/741A70.Yay0.o(.data);
    SPLAT_END_SEG(data_741A70, 0x741BA0)
    
    SPLAT_BEGIN_SEG(data_741BA0, 0x741BA0, 0x741BA0, )
        Yay0_741BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/741BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_741BA0, 0x742E00)
    
    SPLAT_BEGIN_SEG(data_742E00, 0x742E00, 0x742E00, )
        Yay0_742E00_Yay0 = .;
        BUILD_DIR/bin/Yay0/742E00.Yay0.o(.data);
    SPLAT_END_SEG(data_742E00, 0x7431F8)
    
    SPLAT_BEGIN_SEG(data_7431F8, 0x7431F8, 0x7431F8, )
        Yay0_7431F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7431F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7431F8, 0x743340)
    
    SPLAT_BEGIN_SEG(data_743340, 0x743340, 0x743340, )
        Yay0_743340_Yay0 = .;
        BUILD_DIR/bin/Yay0/743340.Yay0.o(.data);
    SPLAT_END_SEG(data_743340, 0x743508)
    
    SPLAT_BEGIN_SEG(data_743508, 0x743508, 0x743508, )
        Yay0_743508_Yay0 = .;
        BUILD_DIR/bin/Yay0/743508.Yay0.o(.data);
    SPLAT_END_SEG(data_743508, 0x7438A8)
    
    SPLAT_BEGIN_SEG(data_7438A8, 0x7438A8, 0x7438A8, )
        Yay0_7438A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7438A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7438A8, 0x7458A8)
    
    SPLAT_BEGIN_SEG(data_7458A8, 0x7458A8, 0x7458A8, )
        Yay0_7458A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7458A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7458A8, 0x745998)
    
    SPLAT_BEGIN_SEG(data_745998, 0x745998, 0x745998, )
        Yay0_745998_Yay0 = .;
        BUILD_DIR/bin/Yay0/745998.Yay0.o(.data);
    SPLAT_END_SEG(data_745998, 0x745B90)
    
    SPLAT_BEGIN_SEG(data_745B90, 0x745B90, 0x745B90, )
        Yay0_745B90_Yay0 = .;
        BUILD_DIR/bin/Yay0/745B90.Yay0.o(.data);
    SPLAT_END_SEG(data_745B90, 0x745E88)
    
    SPLAT_BEGIN_SEG(data_745E88, 0x745E88, 0x745E88, )
        Yay0_745E88_Yay0 = .;
        BUILD_DIR/bin/Yay0/745E88.Yay0.o(.data);
    SPLAT_END_SEG(data_745E88, 0x746B80)
    
    SPLAT_BEGIN_SEG(data_746B80, 0x746B80, 0x746B80, )
        Yay0_746B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/746B80.Yay0.o(.data);
    SPLAT_END_SEG(data_746B80, 0x747580)
    
    SPLAT_BEGIN_SEG(data_747580, 0x747580, 0x747580, )
        Yay0_747580_Yay0 = .;
        BUILD_DIR/bin/Yay0/747580.Yay0.o(.data);
    SPLAT_END_SEG(data_747580, 0x7475A0)
    
    SPLAT_BEGIN_SEG(data_7475A0, 0x7475A0, 0x7475A0, )
        Yay0_7475A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7475A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7475A0, 0x747760)
    
    SPLAT_BEGIN_SEG(data_747760, 0x747760, 0x747760, )
        Yay0_747760_Yay0 = .;
        BUILD_DIR/bin/Yay0/747760.Yay0.o(.data);
    SPLAT_END_SEG(data_747760, 0x747948)
    
    SPLAT_BEGIN_SEG(data_747948, 0x747948, 0x747948, )
        Yay0_747948_Yay0 = .;
        BUILD_DIR/bin/Yay0/747948.Yay0.o(.data);
    SPLAT_END_SEG(data_747948, 0x747CD0)
    
    SPLAT_BEGIN_SEG(data_747CD0, 0x747CD0, 0x747CD0, )
        Yay0_747CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/747CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_747CD0, 0x748060)
    
    SPLAT_BEGIN_SEG(data_748060, 0x748060, 0x748060, )
        Yay0_748060_Yay0 = .;
        BUILD_DIR/bin/Yay0/748060.Yay0.o(.data);
    SPLAT_END_SEG(data_748060, 0x748690)
    
    SPLAT_BEGIN_SEG(data_748690, 0x748690, 0x748690, )
        Yay0_748690_Yay0 = .;
        BUILD_DIR/bin/Yay0/748690.Yay0.o(.data);
    SPLAT_END_SEG(data_748690, 0x748E80)
    
    SPLAT_BEGIN_SEG(data_748E80, 0x748E80, 0x748E80, )
        Yay0_748E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/748E80.Yay0.o(.data);
    SPLAT_END_SEG(data_748E80, 0x748FB0)
    
    SPLAT_BEGIN_SEG(data_748FB0, 0x748FB0, 0x748FB0, )
        Yay0_748FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/748FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_748FB0, 0x749440)
    
    SPLAT_BEGIN_SEG(data_749440, 0x749440, 0x749440, )
        Yay0_749440_Yay0 = .;
        BUILD_DIR/bin/Yay0/749440.Yay0.o(.data);
    SPLAT_END_SEG(data_749440, 0x749B28)
    
    SPLAT_BEGIN_SEG(data_749B28, 0x749B28, 0x749B28, )
        Yay0_749B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/749B28.Yay0.o(.data);
    SPLAT_END_SEG(data_749B28, 0x749EB8)
    
    SPLAT_BEGIN_SEG(data_749EB8, 0x749EB8, 0x749EB8, )
        Yay0_749EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/749EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_749EB8, 0x74A400)
    
    SPLAT_BEGIN_SEG(data_74A400, 0x74A400, 0x74A400, )
        Yay0_74A400_Yay0 = .;
        BUILD_DIR/bin/Yay0/74A400.Yay0.o(.data);
    SPLAT_END_SEG(data_74A400, 0x74A670)
    
    SPLAT_BEGIN_SEG(data_74A670, 0x74A670, 0x74A670, )
        Yay0_74A670_Yay0 = .;
        BUILD_DIR/bin/Yay0/74A670.Yay0.o(.data);
    SPLAT_END_SEG(data_74A670, 0x74A6D8)
    
    SPLAT_BEGIN_SEG(data_74A6D8, 0x74A6D8, 0x74A6D8, )
        Yay0_74A6D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74A6D8.Yay0.o(.data);
    SPLAT_END_SEG(data_74A6D8, 0x74A740)
    
    SPLAT_BEGIN_SEG(data_74A740, 0x74A740, 0x74A740, )
        Yay0_74A740_Yay0 = .;
        BUILD_DIR/bin/Yay0/74A740.Yay0.o(.data);
    SPLAT_END_SEG(data_74A740, 0x74AB30)
    
    SPLAT_BEGIN_SEG(data_74AB30, 0x74AB30, 0x74AB30, )
        Yay0_74AB30_Yay0 = .;
        BUILD_DIR/bin/Yay0/74AB30.Yay0.o(.data);
    SPLAT_END_SEG(data_74AB30, 0x74ADE0)
    
    SPLAT_BEGIN_SEG(data_74ADE0, 0x74ADE0, 0x74ADE0, )
        Yay0_74ADE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74ADE0.Yay0.o(.data);
    SPLAT_END_SEG(data_74ADE0, 0x74B6D0)
    
    SPLAT_BEGIN_SEG(data_74B6D0, 0x74B6D0, 0x74B6D0, )
        Yay0_74B6D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74B6D0.Yay0.o(.data);
    SPLAT_END_SEG(data_74B6D0, 0x74B9F8)
    
    SPLAT_BEGIN_SEG(data_74B9F8, 0x74B9F8, 0x74B9F8, )
        Yay0_74B9F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74B9F8.Yay0.o(.data);
    SPLAT_END_SEG(data_74B9F8, 0x74BB70)
    
    SPLAT_BEGIN_SEG(data_74BB70, 0x74BB70, 0x74BB70, )
        Yay0_74BB70_Yay0 = .;
        BUILD_DIR/bin/Yay0/74BB70.Yay0.o(.data);
    SPLAT_END_SEG(data_74BB70, 0x74BD48)
    
    SPLAT_BEGIN_SEG(data_74BD48, 0x74BD48, 0x74BD48, )
        Yay0_74BD48_Yay0 = .;
        BUILD_DIR/bin/Yay0/74BD48.Yay0.o(.data);
    SPLAT_END_SEG(data_74BD48, 0x74BF28)
    
    SPLAT_BEGIN_SEG(data_74BF28, 0x74BF28, 0x74BF28, )
        Yay0_74BF28_Yay0 = .;
        BUILD_DIR/bin/Yay0/74BF28.Yay0.o(.data);
    SPLAT_END_SEG(data_74BF28, 0x74C028)
    
    SPLAT_BEGIN_SEG(data_74C028, 0x74C028, 0x74C028, )
        Yay0_74C028_Yay0 = .;
        BUILD_DIR/bin/Yay0/74C028.Yay0.o(.data);
    SPLAT_END_SEG(data_74C028, 0x74C1A0)
    
    SPLAT_BEGIN_SEG(data_74C1A0, 0x74C1A0, 0x74C1A0, )
        Yay0_74C1A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74C1A0.Yay0.o(.data);
    SPLAT_END_SEG(data_74C1A0, 0x74C2E0)
    
    SPLAT_BEGIN_SEG(data_74C2E0, 0x74C2E0, 0x74C2E0, )
        Yay0_74C2E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74C2E0.Yay0.o(.data);
    SPLAT_END_SEG(data_74C2E0, 0x74C530)
    
    SPLAT_BEGIN_SEG(data_74C530, 0x74C530, 0x74C530, )
        Yay0_74C530_Yay0 = .;
        BUILD_DIR/bin/Yay0/74C530.Yay0.o(.data);
    SPLAT_END_SEG(data_74C530, 0x74C7C8)
    
    SPLAT_BEGIN_SEG(data_74C7C8, 0x74C7C8, 0x74C7C8, )
        Yay0_74C7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74C7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_74C7C8, 0x74CAB0)
    
    SPLAT_BEGIN_SEG(data_74CAB0, 0x74CAB0, 0x74CAB0, )
        Yay0_74CAB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74CAB0.Yay0.o(.data);
    SPLAT_END_SEG(data_74CAB0, 0x74CF20)
    
    SPLAT_BEGIN_SEG(data_74CF20, 0x74CF20, 0x74CF20, )
        Yay0_74CF20_Yay0 = .;
        BUILD_DIR/bin/Yay0/74CF20.Yay0.o(.data);
    SPLAT_END_SEG(data_74CF20, 0x74D1F0)
    
    SPLAT_BEGIN_SEG(data_74D1F0, 0x74D1F0, 0x74D1F0, )
        Yay0_74D1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74D1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_74D1F0, 0x74D4D8)
    
    SPLAT_BEGIN_SEG(data_74D4D8, 0x74D4D8, 0x74D4D8, )
        Yay0_74D4D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74D4D8.Yay0.o(.data);
    SPLAT_END_SEG(data_74D4D8, 0x74D6D8)
    
    SPLAT_BEGIN_SEG(data_74D6D8, 0x74D6D8, 0x74D6D8, )
        Yay0_74D6D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74D6D8.Yay0.o(.data);
    SPLAT_END_SEG(data_74D6D8, 0x74D8D8)
    
    SPLAT_BEGIN_SEG(data_74D8D8, 0x74D8D8, 0x74D8D8, )
        Yay0_74D8D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74D8D8.Yay0.o(.data);
    SPLAT_END_SEG(data_74D8D8, 0x74DB70)
    
    SPLAT_BEGIN_SEG(data_74DB70, 0x74DB70, 0x74DB70, )
        Yay0_74DB70_Yay0 = .;
        BUILD_DIR/bin/Yay0/74DB70.Yay0.o(.data);
    SPLAT_END_SEG(data_74DB70, 0x74DF68)
    
    SPLAT_BEGIN_SEG(data_74DF68, 0x74DF68, 0x74DF68, )
        Yay0_74DF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/74DF68.Yay0.o(.data);
    SPLAT_END_SEG(data_74DF68, 0x74E1D0)
    
    SPLAT_BEGIN_SEG(data_74E1D0, 0x74E1D0, 0x74E1D0, )
        Yay0_74E1D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74E1D0.Yay0.o(.data);
    SPLAT_END_SEG(data_74E1D0, 0x74E370)
    
    SPLAT_BEGIN_SEG(data_74E370, 0x74E370, 0x74E370, )
        Yay0_74E370_Yay0 = .;
        BUILD_DIR/bin/Yay0/74E370.Yay0.o(.data);
    SPLAT_END_SEG(data_74E370, 0x74E690)
    
    SPLAT_BEGIN_SEG(data_74E690, 0x74E690, 0x74E690, )
        Yay0_74E690_Yay0 = .;
        BUILD_DIR/bin/Yay0/74E690.Yay0.o(.data);
    SPLAT_END_SEG(data_74E690, 0x74E8B8)
    
    SPLAT_BEGIN_SEG(data_74E8B8, 0x74E8B8, 0x74E8B8, )
        Yay0_74E8B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74E8B8.Yay0.o(.data);
    SPLAT_END_SEG(data_74E8B8, 0x74EB20)
    
    SPLAT_BEGIN_SEG(data_74EB20, 0x74EB20, 0x74EB20, )
        Yay0_74EB20_Yay0 = .;
        BUILD_DIR/bin/Yay0/74EB20.Yay0.o(.data);
    SPLAT_END_SEG(data_74EB20, 0x74ECB0)
    
    SPLAT_BEGIN_SEG(data_74ECB0, 0x74ECB0, 0x74ECB0, )
        Yay0_74ECB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74ECB0.Yay0.o(.data);
    SPLAT_END_SEG(data_74ECB0, 0x74EFB0)
    
    SPLAT_BEGIN_SEG(data_74EFB0, 0x74EFB0, 0x74EFB0, )
        Yay0_74EFB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74EFB0.Yay0.o(.data);
    SPLAT_END_SEG(data_74EFB0, 0x74F110)
    
    SPLAT_BEGIN_SEG(data_74F110, 0x74F110, 0x74F110, )
        Yay0_74F110_Yay0 = .;
        BUILD_DIR/bin/Yay0/74F110.Yay0.o(.data);
    SPLAT_END_SEG(data_74F110, 0x74F3D0)
    
    SPLAT_BEGIN_SEG(data_74F3D0, 0x74F3D0, 0x74F3D0, )
        Yay0_74F3D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74F3D0.Yay0.o(.data);
    SPLAT_END_SEG(data_74F3D0, 0x74F5A8)
    
    SPLAT_BEGIN_SEG(data_74F5A8, 0x74F5A8, 0x74F5A8, )
        Yay0_74F5A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74F5A8.Yay0.o(.data);
    SPLAT_END_SEG(data_74F5A8, 0x74F790)
    
    SPLAT_BEGIN_SEG(data_74F790, 0x74F790, 0x74F790, )
        Yay0_74F790_Yay0 = .;
        BUILD_DIR/bin/Yay0/74F790.Yay0.o(.data);
    SPLAT_END_SEG(data_74F790, 0x74F898)
    
    SPLAT_BEGIN_SEG(data_74F898, 0x74F898, 0x74F898, )
        Yay0_74F898_Yay0 = .;
        BUILD_DIR/bin/Yay0/74F898.Yay0.o(.data);
    SPLAT_END_SEG(data_74F898, 0x74F9A8)
    
    SPLAT_BEGIN_SEG(data_74F9A8, 0x74F9A8, 0x74F9A8, )
        Yay0_74F9A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/74F9A8.Yay0.o(.data);
    SPLAT_END_SEG(data_74F9A8, 0x74FBC0)
    
    SPLAT_BEGIN_SEG(data_74FBC0, 0x74FBC0, 0x74FBC0, )
        Yay0_74FBC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74FBC0.Yay0.o(.data);
    SPLAT_END_SEG(data_74FBC0, 0x74FDE0)
    
    SPLAT_BEGIN_SEG(data_74FDE0, 0x74FDE0, 0x74FDE0, )
        Yay0_74FDE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/74FDE0.Yay0.o(.data);
    SPLAT_END_SEG(data_74FDE0, 0x750108)
    
    SPLAT_BEGIN_SEG(data_750108, 0x750108, 0x750108, )
        Yay0_750108_Yay0 = .;
        BUILD_DIR/bin/Yay0/750108.Yay0.o(.data);
    SPLAT_END_SEG(data_750108, 0x7503A0)
    
    SPLAT_BEGIN_SEG(data_7503A0, 0x7503A0, 0x7503A0, )
        Yay0_7503A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7503A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7503A0, 0x7504F8)
    
    SPLAT_BEGIN_SEG(data_7504F8, 0x7504F8, 0x7504F8, )
        Yay0_7504F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7504F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7504F8, 0x7515B8)
    
    SPLAT_BEGIN_SEG(data_7515B8, 0x7515B8, 0x7515B8, )
        Yay0_7515B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7515B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7515B8, 0x752E80)
    
    SPLAT_BEGIN_SEG(data_752E80, 0x752E80, 0x752E80, )
        Yay0_752E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/752E80.Yay0.o(.data);
    SPLAT_END_SEG(data_752E80, 0x754200)
    
    SPLAT_BEGIN_SEG(data_754200, 0x754200, 0x754200, )
        Yay0_754200_Yay0 = .;
        BUILD_DIR/bin/Yay0/754200.Yay0.o(.data);
    SPLAT_END_SEG(data_754200, 0x756048)
    
    SPLAT_BEGIN_SEG(data_756048, 0x756048, 0x756048, )
        Yay0_756048_Yay0 = .;
        BUILD_DIR/bin/Yay0/756048.Yay0.o(.data);
    SPLAT_END_SEG(data_756048, 0x757888)
    
    SPLAT_BEGIN_SEG(data_757888, 0x757888, 0x757888, )
        Yay0_757888_Yay0 = .;
        BUILD_DIR/bin/Yay0/757888.Yay0.o(.data);
    SPLAT_END_SEG(data_757888, 0x759900)
    
    SPLAT_BEGIN_SEG(data_759900, 0x759900, 0x759900, )
        Yay0_759900_Yay0 = .;
        BUILD_DIR/bin/Yay0/759900.Yay0.o(.data);
    SPLAT_END_SEG(data_759900, 0x759CA0)
    
    SPLAT_BEGIN_SEG(data_759CA0, 0x759CA0, 0x759CA0, )
        Yay0_759CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/759CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_759CA0, 0x759E50)
    
    SPLAT_BEGIN_SEG(data_759E50, 0x759E50, 0x759E50, )
        Yay0_759E50_Yay0 = .;
        BUILD_DIR/bin/Yay0/759E50.Yay0.o(.data);
    SPLAT_END_SEG(data_759E50, 0x75A340)
    
    SPLAT_BEGIN_SEG(data_75A340, 0x75A340, 0x75A340, )
        Yay0_75A340_Yay0 = .;
        BUILD_DIR/bin/Yay0/75A340.Yay0.o(.data);
    SPLAT_END_SEG(data_75A340, 0x75B348)
    
    SPLAT_BEGIN_SEG(data_75B348, 0x75B348, 0x75B348, )
        Yay0_75B348_Yay0 = .;
        BUILD_DIR/bin/Yay0/75B348.Yay0.o(.data);
    SPLAT_END_SEG(data_75B348, 0x75B508)
    
    SPLAT_BEGIN_SEG(data_75B508, 0x75B508, 0x75B508, )
        Yay0_75B508_Yay0 = .;
        BUILD_DIR/bin/Yay0/75B508.Yay0.o(.data);
    SPLAT_END_SEG(data_75B508, 0x75BD50)
    
    SPLAT_BEGIN_SEG(data_75BD50, 0x75BD50, 0x75BD50, )
        Yay0_75BD50_Yay0 = .;
        BUILD_DIR/bin/Yay0/75BD50.Yay0.o(.data);
    SPLAT_END_SEG(data_75BD50, 0x75C078)
    
    SPLAT_BEGIN_SEG(data_75C078, 0x75C078, 0x75C078, )
        Yay0_75C078_Yay0 = .;
        BUILD_DIR/bin/Yay0/75C078.Yay0.o(.data);
    SPLAT_END_SEG(data_75C078, 0x75C3C8)
    
    SPLAT_BEGIN_SEG(data_75C3C8, 0x75C3C8, 0x75C3C8, )
        Yay0_75C3C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/75C3C8.Yay0.o(.data);
    SPLAT_END_SEG(data_75C3C8, 0x75D038)
    
    SPLAT_BEGIN_SEG(data_75D038, 0x75D038, 0x75D038, )
        Yay0_75D038_Yay0 = .;
        BUILD_DIR/bin/Yay0/75D038.Yay0.o(.data);
    SPLAT_END_SEG(data_75D038, 0x75E4F8)
    
    SPLAT_BEGIN_SEG(data_75E4F8, 0x75E4F8, 0x75E4F8, )
        Yay0_75E4F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/75E4F8.Yay0.o(.data);
    SPLAT_END_SEG(data_75E4F8, 0x75EDE0)
    
    SPLAT_BEGIN_SEG(data_75EDE0, 0x75EDE0, 0x75EDE0, )
        Yay0_75EDE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/75EDE0.Yay0.o(.data);
    SPLAT_END_SEG(data_75EDE0, 0x75F6B8)
    
    SPLAT_BEGIN_SEG(data_75F6B8, 0x75F6B8, 0x75F6B8, )
        Yay0_75F6B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/75F6B8.Yay0.o(.data);
    SPLAT_END_SEG(data_75F6B8, 0x75FED0)
    
    SPLAT_BEGIN_SEG(data_75FED0, 0x75FED0, 0x75FED0, )
        Yay0_75FED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/75FED0.Yay0.o(.data);
    SPLAT_END_SEG(data_75FED0, 0x761FD8)
    
    SPLAT_BEGIN_SEG(data_761FD8, 0x761FD8, 0x761FD8, )
        Yay0_761FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/761FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_761FD8, 0x764338)
    
    SPLAT_BEGIN_SEG(data_764338, 0x764338, 0x764338, )
        Yay0_764338_Yay0 = .;
        BUILD_DIR/bin/Yay0/764338.Yay0.o(.data);
    SPLAT_END_SEG(data_764338, 0x766798)
    
    SPLAT_BEGIN_SEG(data_766798, 0x766798, 0x766798, )
        Yay0_766798_Yay0 = .;
        BUILD_DIR/bin/Yay0/766798.Yay0.o(.data);
    SPLAT_END_SEG(data_766798, 0x767340)
    
    SPLAT_BEGIN_SEG(data_767340, 0x767340, 0x767340, )
        Yay0_767340_Yay0 = .;
        BUILD_DIR/bin/Yay0/767340.Yay0.o(.data);
    SPLAT_END_SEG(data_767340, 0x767988)
    
    SPLAT_BEGIN_SEG(data_767988, 0x767988, 0x767988, )
        Yay0_767988_Yay0 = .;
        BUILD_DIR/bin/Yay0/767988.Yay0.o(.data);
    SPLAT_END_SEG(data_767988, 0x769670)
    
    SPLAT_BEGIN_SEG(data_769670, 0x769670, 0x769670, )
        Yay0_769670_Yay0 = .;
        BUILD_DIR/bin/Yay0/769670.Yay0.o(.data);
    SPLAT_END_SEG(data_769670, 0x769F48)
    
    SPLAT_BEGIN_SEG(data_769F48, 0x769F48, 0x769F48, )
        Yay0_769F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/769F48.Yay0.o(.data);
    SPLAT_END_SEG(data_769F48, 0x76A6E0)
    
    SPLAT_BEGIN_SEG(data_76A6E0, 0x76A6E0, 0x76A6E0, )
        Yay0_76A6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/76A6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_76A6E0, 0x76B440)
    
    SPLAT_BEGIN_SEG(data_76B440, 0x76B440, 0x76B440, )
        Yay0_76B440_Yay0 = .;
        BUILD_DIR/bin/Yay0/76B440.Yay0.o(.data);
    SPLAT_END_SEG(data_76B440, 0x76C290)
    
    SPLAT_BEGIN_SEG(data_76C290, 0x76C290, 0x76C290, )
        Yay0_76C290_Yay0 = .;
        BUILD_DIR/bin/Yay0/76C290.Yay0.o(.data);
    SPLAT_END_SEG(data_76C290, 0x76D780)
    
    SPLAT_BEGIN_SEG(data_76D780, 0x76D780, 0x76D780, )
        Yay0_76D780_Yay0 = .;
        BUILD_DIR/bin/Yay0/76D780.Yay0.o(.data);
    SPLAT_END_SEG(data_76D780, 0x76F118)
    
    SPLAT_BEGIN_SEG(data_76F118, 0x76F118, 0x76F118, )
        Yay0_76F118_Yay0 = .;
        BUILD_DIR/bin/Yay0/76F118.Yay0.o(.data);
    SPLAT_END_SEG(data_76F118, 0x76FE48)
    
    SPLAT_BEGIN_SEG(data_76FE48, 0x76FE48, 0x76FE48, )
        Yay0_76FE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/76FE48.Yay0.o(.data);
    SPLAT_END_SEG(data_76FE48, 0x771768)
    
    SPLAT_BEGIN_SEG(data_771768, 0x771768, 0x771768, )
        Yay0_771768_Yay0 = .;
        BUILD_DIR/bin/Yay0/771768.Yay0.o(.data);
    SPLAT_END_SEG(data_771768, 0x773A58)
    
    SPLAT_BEGIN_SEG(data_773A58, 0x773A58, 0x773A58, )
        Yay0_773A58_Yay0 = .;
        BUILD_DIR/bin/Yay0/773A58.Yay0.o(.data);
    SPLAT_END_SEG(data_773A58, 0x7754B0)
    
    SPLAT_BEGIN_SEG(data_7754B0, 0x7754B0, 0x7754B0, )
        Yay0_7754B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7754B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7754B0, 0x776C28)
    
    SPLAT_BEGIN_SEG(data_776C28, 0x776C28, 0x776C28, )
        Yay0_776C28_Yay0 = .;
        BUILD_DIR/bin/Yay0/776C28.Yay0.o(.data);
    SPLAT_END_SEG(data_776C28, 0x778080)
    
    SPLAT_BEGIN_SEG(data_778080, 0x778080, 0x778080, )
        Yay0_778080_Yay0 = .;
        BUILD_DIR/bin/Yay0/778080.Yay0.o(.data);
    SPLAT_END_SEG(data_778080, 0x779018)
    
    SPLAT_BEGIN_SEG(data_779018, 0x779018, 0x779018, )
        Yay0_779018_Yay0 = .;
        BUILD_DIR/bin/Yay0/779018.Yay0.o(.data);
    SPLAT_END_SEG(data_779018, 0x77B0B0)
    
    SPLAT_BEGIN_SEG(data_77B0B0, 0x77B0B0, 0x77B0B0, )
        Yay0_77B0B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/77B0B0.Yay0.o(.data);
    SPLAT_END_SEG(data_77B0B0, 0x77C518)
    
    SPLAT_BEGIN_SEG(data_77C518, 0x77C518, 0x77C518, )
        Yay0_77C518_Yay0 = .;
        BUILD_DIR/bin/Yay0/77C518.Yay0.o(.data);
    SPLAT_END_SEG(data_77C518, 0x77CCE0)
    
    SPLAT_BEGIN_SEG(data_77CCE0, 0x77CCE0, 0x77CCE0, )
        Yay0_77CCE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/77CCE0.Yay0.o(.data);
    SPLAT_END_SEG(data_77CCE0, 0x77E590)
    
    SPLAT_BEGIN_SEG(data_77E590, 0x77E590, 0x77E590, )
        Yay0_77E590_Yay0 = .;
        BUILD_DIR/bin/Yay0/77E590.Yay0.o(.data);
    SPLAT_END_SEG(data_77E590, 0x77E9F0)
    
    SPLAT_BEGIN_SEG(data_77E9F0, 0x77E9F0, 0x77E9F0, )
        Yay0_77E9F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/77E9F0.Yay0.o(.data);
    SPLAT_END_SEG(data_77E9F0, 0x781388)
    
    SPLAT_BEGIN_SEG(data_781388, 0x781388, 0x781388, )
        Yay0_781388_Yay0 = .;
        BUILD_DIR/bin/Yay0/781388.Yay0.o(.data);
    SPLAT_END_SEG(data_781388, 0x784110)
    
    SPLAT_BEGIN_SEG(data_784110, 0x784110, 0x784110, )
        Yay0_784110_Yay0 = .;
        BUILD_DIR/bin/Yay0/784110.Yay0.o(.data);
    SPLAT_END_SEG(data_784110, 0x786990)
    
    SPLAT_BEGIN_SEG(data_786990, 0x786990, 0x786990, )
        Yay0_786990_Yay0 = .;
        BUILD_DIR/bin/Yay0/786990.Yay0.o(.data);
    SPLAT_END_SEG(data_786990, 0x788668)
    
    SPLAT_BEGIN_SEG(data_788668, 0x788668, 0x788668, )
        Yay0_788668_Yay0 = .;
        BUILD_DIR/bin/Yay0/788668.Yay0.o(.data);
    SPLAT_END_SEG(data_788668, 0x78C060)
    
    SPLAT_BEGIN_SEG(data_78C060, 0x78C060, 0x78C060, )
        Yay0_78C060_Yay0 = .;
        BUILD_DIR/bin/Yay0/78C060.Yay0.o(.data);
    SPLAT_END_SEG(data_78C060, 0x78DDA0)
    
    SPLAT_BEGIN_SEG(data_78DDA0, 0x78DDA0, 0x78DDA0, )
        Yay0_78DDA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/78DDA0.Yay0.o(.data);
    SPLAT_END_SEG(data_78DDA0, 0x78F360)
    
    SPLAT_BEGIN_SEG(data_78F360, 0x78F360, 0x78F360, )
        Yay0_78F360_Yay0 = .;
        BUILD_DIR/bin/Yay0/78F360.Yay0.o(.data);
    SPLAT_END_SEG(data_78F360, 0x7914E8)
    
    SPLAT_BEGIN_SEG(data_7914E8, 0x7914E8, 0x7914E8, )
        Yay0_7914E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7914E8.Yay0.o(.data);
    SPLAT_END_SEG(data_7914E8, 0x792478)
    
    SPLAT_BEGIN_SEG(data_792478, 0x792478, 0x792478, )
        Yay0_792478_Yay0 = .;
        BUILD_DIR/bin/Yay0/792478.Yay0.o(.data);
    SPLAT_END_SEG(data_792478, 0x793B38)
    
    SPLAT_BEGIN_SEG(data_793B38, 0x793B38, 0x793B38, )
        Yay0_793B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/793B38.Yay0.o(.data);
    SPLAT_END_SEG(data_793B38, 0x793E90)
    
    SPLAT_BEGIN_SEG(data_793E90, 0x793E90, 0x793E90, )
        Yay0_793E90_Yay0 = .;
        BUILD_DIR/bin/Yay0/793E90.Yay0.o(.data);
    SPLAT_END_SEG(data_793E90, 0x794868)
    
    SPLAT_BEGIN_SEG(data_794868, 0x794868, 0x794868, )
        Yay0_794868_Yay0 = .;
        BUILD_DIR/bin/Yay0/794868.Yay0.o(.data);
    SPLAT_END_SEG(data_794868, 0x795050)
    
    SPLAT_BEGIN_SEG(data_795050, 0x795050, 0x795050, )
        Yay0_795050_Yay0 = .;
        BUILD_DIR/bin/Yay0/795050.Yay0.o(.data);
    SPLAT_END_SEG(data_795050, 0x796F30)
    
    SPLAT_BEGIN_SEG(data_796F30, 0x796F30, 0x796F30, )
        Yay0_796F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/796F30.Yay0.o(.data);
    SPLAT_END_SEG(data_796F30, 0x797170)
    
    SPLAT_BEGIN_SEG(data_797170, 0x797170, 0x797170, )
        Yay0_797170_Yay0 = .;
        BUILD_DIR/bin/Yay0/797170.Yay0.o(.data);
    SPLAT_END_SEG(data_797170, 0x797650)
    
    SPLAT_BEGIN_SEG(data_797650, 0x797650, 0x797650, )
        Yay0_797650_Yay0 = .;
        BUILD_DIR/bin/Yay0/797650.Yay0.o(.data);
    SPLAT_END_SEG(data_797650, 0x797AA8)
    
    SPLAT_BEGIN_SEG(data_797AA8, 0x797AA8, 0x797AA8, )
        Yay0_797AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/797AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_797AA8, 0x797CF8)
    
    SPLAT_BEGIN_SEG(data_797CF8, 0x797CF8, 0x797CF8, )
        Yay0_797CF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/797CF8.Yay0.o(.data);
    SPLAT_END_SEG(data_797CF8, 0x797FD8)
    
    SPLAT_BEGIN_SEG(data_797FD8, 0x797FD8, 0x797FD8, )
        Yay0_797FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/797FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_797FD8, 0x7982C0)
    
    SPLAT_BEGIN_SEG(data_7982C0, 0x7982C0, 0x7982C0, )
        Yay0_7982C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7982C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7982C0, 0x7985E8)
    
    SPLAT_BEGIN_SEG(data_7985E8, 0x7985E8, 0x7985E8, )
        Yay0_7985E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7985E8.Yay0.o(.data);
    SPLAT_END_SEG(data_7985E8, 0x798670)
    
    SPLAT_BEGIN_SEG(data_798670, 0x798670, 0x798670, )
        Yay0_798670_Yay0 = .;
        BUILD_DIR/bin/Yay0/798670.Yay0.o(.data);
    SPLAT_END_SEG(data_798670, 0x7986F8)
    
    SPLAT_BEGIN_SEG(data_7986F8, 0x7986F8, 0x7986F8, )
        Yay0_7986F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7986F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7986F8, 0x798780)
    
    SPLAT_BEGIN_SEG(data_798780, 0x798780, 0x798780, )
        Yay0_798780_Yay0 = .;
        BUILD_DIR/bin/Yay0/798780.Yay0.o(.data);
    SPLAT_END_SEG(data_798780, 0x7987F8)
    
    SPLAT_BEGIN_SEG(data_7987F8, 0x7987F8, 0x7987F8, )
        Yay0_7987F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7987F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7987F8, 0x798880)
    
    SPLAT_BEGIN_SEG(data_798880, 0x798880, 0x798880, )
        Yay0_798880_Yay0 = .;
        BUILD_DIR/bin/Yay0/798880.Yay0.o(.data);
    SPLAT_END_SEG(data_798880, 0x798F80)
    
    SPLAT_BEGIN_SEG(data_798F80, 0x798F80, 0x798F80, )
        Yay0_798F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/798F80.Yay0.o(.data);
    SPLAT_END_SEG(data_798F80, 0x799088)
    
    SPLAT_BEGIN_SEG(data_799088, 0x799088, 0x799088, )
        Yay0_799088_Yay0 = .;
        BUILD_DIR/bin/Yay0/799088.Yay0.o(.data);
    SPLAT_END_SEG(data_799088, 0x7994C8)
    
    SPLAT_BEGIN_SEG(data_7994C8, 0x7994C8, 0x7994C8, )
        Yay0_7994C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7994C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7994C8, 0x7995C8)
    
    SPLAT_BEGIN_SEG(data_7995C8, 0x7995C8, 0x7995C8, )
        Yay0_7995C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7995C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7995C8, 0x7996E0)
    
    SPLAT_BEGIN_SEG(data_7996E0, 0x7996E0, 0x7996E0, )
        Yay0_7996E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7996E0.Yay0.o(.data);
    SPLAT_END_SEG(data_7996E0, 0x7997F8)
    
    SPLAT_BEGIN_SEG(data_7997F8, 0x7997F8, 0x7997F8, )
        Yay0_7997F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7997F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7997F8, 0x799BD0)
    
    SPLAT_BEGIN_SEG(data_799BD0, 0x799BD0, 0x799BD0, )
        Yay0_799BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/799BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_799BD0, 0x79AF60)
    
    SPLAT_BEGIN_SEG(data_79AF60, 0x79AF60, 0x79AF60, )
        Yay0_79AF60_Yay0 = .;
        BUILD_DIR/bin/Yay0/79AF60.Yay0.o(.data);
    SPLAT_END_SEG(data_79AF60, 0x79C328)
    
    SPLAT_BEGIN_SEG(data_79C328, 0x79C328, 0x79C328, )
        Yay0_79C328_Yay0 = .;
        BUILD_DIR/bin/Yay0/79C328.Yay0.o(.data);
    SPLAT_END_SEG(data_79C328, 0x79C638)
    
    SPLAT_BEGIN_SEG(data_79C638, 0x79C638, 0x79C638, )
        Yay0_79C638_Yay0 = .;
        BUILD_DIR/bin/Yay0/79C638.Yay0.o(.data);
    SPLAT_END_SEG(data_79C638, 0x79C980)
    
    SPLAT_BEGIN_SEG(data_79C980, 0x79C980, 0x79C980, )
        Yay0_79C980_Yay0 = .;
        BUILD_DIR/bin/Yay0/79C980.Yay0.o(.data);
    SPLAT_END_SEG(data_79C980, 0x79CDB0)
    
    SPLAT_BEGIN_SEG(data_79CDB0, 0x79CDB0, 0x79CDB0, )
        Yay0_79CDB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/79CDB0.Yay0.o(.data);
    SPLAT_END_SEG(data_79CDB0, 0x79E390)
    
    SPLAT_BEGIN_SEG(data_79E390, 0x79E390, 0x79E390, )
        Yay0_79E390_Yay0 = .;
        BUILD_DIR/bin/Yay0/79E390.Yay0.o(.data);
    SPLAT_END_SEG(data_79E390, 0x79FF40)
    
    SPLAT_BEGIN_SEG(data_79FF40, 0x79FF40, 0x79FF40, )
        Yay0_79FF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/79FF40.Yay0.o(.data);
    SPLAT_END_SEG(data_79FF40, 0x7A1A50)
    
    SPLAT_BEGIN_SEG(data_7A1A50, 0x7A1A50, 0x7A1A50, )
        Yay0_7A1A50_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A1A50.Yay0.o(.data);
    SPLAT_END_SEG(data_7A1A50, 0x7A2670)
    
    SPLAT_BEGIN_SEG(data_7A2670, 0x7A2670, 0x7A2670, )
        Yay0_7A2670_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A2670.Yay0.o(.data);
    SPLAT_END_SEG(data_7A2670, 0x7A3878)
    
    SPLAT_BEGIN_SEG(data_7A3878, 0x7A3878, 0x7A3878, )
        Yay0_7A3878_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A3878.Yay0.o(.data);
    SPLAT_END_SEG(data_7A3878, 0x7A42B8)
    
    SPLAT_BEGIN_SEG(data_7A42B8, 0x7A42B8, 0x7A42B8, )
        Yay0_7A42B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A42B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7A42B8, 0x7A54C0)
    
    SPLAT_BEGIN_SEG(data_7A54C0, 0x7A54C0, 0x7A54C0, )
        Yay0_7A54C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A54C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7A54C0, 0x7A5C78)
    
    SPLAT_BEGIN_SEG(data_7A5C78, 0x7A5C78, 0x7A5C78, )
        Yay0_7A5C78_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A5C78.Yay0.o(.data);
    SPLAT_END_SEG(data_7A5C78, 0x7A7280)
    
    SPLAT_BEGIN_SEG(data_7A7280, 0x7A7280, 0x7A7280, )
        Yay0_7A7280_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A7280.Yay0.o(.data);
    SPLAT_END_SEG(data_7A7280, 0x7A83B0)
    
    SPLAT_BEGIN_SEG(data_7A83B0, 0x7A83B0, 0x7A83B0, )
        Yay0_7A83B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A83B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7A83B0, 0x7A96B8)
    
    SPLAT_BEGIN_SEG(data_7A96B8, 0x7A96B8, 0x7A96B8, )
        Yay0_7A96B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7A96B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7A96B8, 0x7AA608)
    
    SPLAT_BEGIN_SEG(data_7AA608, 0x7AA608, 0x7AA608, )
        Yay0_7AA608_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AA608.Yay0.o(.data);
    SPLAT_END_SEG(data_7AA608, 0x7AACE0)
    
    SPLAT_BEGIN_SEG(data_7AACE0, 0x7AACE0, 0x7AACE0, )
        Yay0_7AACE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AACE0.Yay0.o(.data);
    SPLAT_END_SEG(data_7AACE0, 0x7AB408)
    
    SPLAT_BEGIN_SEG(data_7AB408, 0x7AB408, 0x7AB408, )
        Yay0_7AB408_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AB408.Yay0.o(.data);
    SPLAT_END_SEG(data_7AB408, 0x7AC9B8)
    
    SPLAT_BEGIN_SEG(data_7AC9B8, 0x7AC9B8, 0x7AC9B8, )
        Yay0_7AC9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AC9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7AC9B8, 0x7AD298)
    
    SPLAT_BEGIN_SEG(data_7AD298, 0x7AD298, 0x7AD298, )
        Yay0_7AD298_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AD298.Yay0.o(.data);
    SPLAT_END_SEG(data_7AD298, 0x7AD5A0)
    
    SPLAT_BEGIN_SEG(data_7AD5A0, 0x7AD5A0, 0x7AD5A0, )
        Yay0_7AD5A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AD5A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7AD5A0, 0x7AD998)
    
    SPLAT_BEGIN_SEG(data_7AD998, 0x7AD998, 0x7AD998, )
        Yay0_7AD998_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AD998.Yay0.o(.data);
    SPLAT_END_SEG(data_7AD998, 0x7ADE40)
    
    SPLAT_BEGIN_SEG(data_7ADE40, 0x7ADE40, 0x7ADE40, )
        Yay0_7ADE40_Yay0 = .;
        BUILD_DIR/bin/Yay0/7ADE40.Yay0.o(.data);
    SPLAT_END_SEG(data_7ADE40, 0x7AE370)
    
    SPLAT_BEGIN_SEG(data_7AE370, 0x7AE370, 0x7AE370, )
        Yay0_7AE370_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AE370.Yay0.o(.data);
    SPLAT_END_SEG(data_7AE370, 0x7AEAF8)
    
    SPLAT_BEGIN_SEG(data_7AEAF8, 0x7AEAF8, 0x7AEAF8, )
        Yay0_7AEAF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AEAF8.Yay0.o(.data);
    SPLAT_END_SEG(data_7AEAF8, 0x7AF140)
    
    SPLAT_BEGIN_SEG(data_7AF140, 0x7AF140, 0x7AF140, )
        Yay0_7AF140_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AF140.Yay0.o(.data);
    SPLAT_END_SEG(data_7AF140, 0x7AF680)
    
    SPLAT_BEGIN_SEG(data_7AF680, 0x7AF680, 0x7AF680, )
        Yay0_7AF680_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AF680.Yay0.o(.data);
    SPLAT_END_SEG(data_7AF680, 0x7AFDA8)
    
    SPLAT_BEGIN_SEG(data_7AFDA8, 0x7AFDA8, 0x7AFDA8, )
        Yay0_7AFDA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AFDA8.Yay0.o(.data);
    SPLAT_END_SEG(data_7AFDA8, 0x7AFFB0)
    
    SPLAT_BEGIN_SEG(data_7AFFB0, 0x7AFFB0, 0x7AFFB0, )
        Yay0_7AFFB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7AFFB0.Yay0.o(.data);
    SPLAT_END_SEG(data_7AFFB0, 0x7B0290)
    
    SPLAT_BEGIN_SEG(data_7B0290, 0x7B0290, 0x7B0290, )
        Yay0_7B0290_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B0290.Yay0.o(.data);
    SPLAT_END_SEG(data_7B0290, 0x7B0A20)
    
    SPLAT_BEGIN_SEG(data_7B0A20, 0x7B0A20, 0x7B0A20, )
        Yay0_7B0A20_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B0A20.Yay0.o(.data);
    SPLAT_END_SEG(data_7B0A20, 0x7B0F00)
    
    SPLAT_BEGIN_SEG(data_7B0F00, 0x7B0F00, 0x7B0F00, )
        Yay0_7B0F00_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B0F00.Yay0.o(.data);
    SPLAT_END_SEG(data_7B0F00, 0x7B1140)
    
    SPLAT_BEGIN_SEG(data_7B1140, 0x7B1140, 0x7B1140, )
        Yay0_7B1140_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1140.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1140, 0x7B1508)
    
    SPLAT_BEGIN_SEG(data_7B1508, 0x7B1508, 0x7B1508, )
        Yay0_7B1508_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1508.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1508, 0x7B1A30)
    
    SPLAT_BEGIN_SEG(data_7B1A30, 0x7B1A30, 0x7B1A30, )
        Yay0_7B1A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1A30.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1A30, 0x7B1B90)
    
    SPLAT_BEGIN_SEG(data_7B1B90, 0x7B1B90, 0x7B1B90, )
        Yay0_7B1B90_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1B90.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1B90, 0x7B1C68)
    
    SPLAT_BEGIN_SEG(data_7B1C68, 0x7B1C68, 0x7B1C68, )
        Yay0_7B1C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1C68.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1C68, 0x7B1D90)
    
    SPLAT_BEGIN_SEG(data_7B1D90, 0x7B1D90, 0x7B1D90, )
        Yay0_7B1D90_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1D90.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1D90, 0x7B1FB8)
    
    SPLAT_BEGIN_SEG(data_7B1FB8, 0x7B1FB8, 0x7B1FB8, )
        Yay0_7B1FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B1FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B1FB8, 0x7B2050)
    
    SPLAT_BEGIN_SEG(data_7B2050, 0x7B2050, 0x7B2050, )
        Yay0_7B2050_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B2050.Yay0.o(.data);
    SPLAT_END_SEG(data_7B2050, 0x7B20C0)
    
    SPLAT_BEGIN_SEG(data_7B20C0, 0x7B20C0, 0x7B20C0, )
        Yay0_7B20C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B20C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B20C0, 0x7B22A0)
    
    SPLAT_BEGIN_SEG(data_7B22A0, 0x7B22A0, 0x7B22A0, )
        Yay0_7B22A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B22A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B22A0, 0x7B2330)
    
    SPLAT_BEGIN_SEG(data_7B2330, 0x7B2330, 0x7B2330, )
        Yay0_7B2330_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B2330.Yay0.o(.data);
    SPLAT_END_SEG(data_7B2330, 0x7B26D8)
    
    SPLAT_BEGIN_SEG(data_7B26D8, 0x7B26D8, 0x7B26D8, )
        Yay0_7B26D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B26D8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B26D8, 0x7B29E8)
    
    SPLAT_BEGIN_SEG(data_7B29E8, 0x7B29E8, 0x7B29E8, )
        Yay0_7B29E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B29E8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B29E8, 0x7B2F90)
    
    SPLAT_BEGIN_SEG(data_7B2F90, 0x7B2F90, 0x7B2F90, )
        Yay0_7B2F90_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B2F90.Yay0.o(.data);
    SPLAT_END_SEG(data_7B2F90, 0x7B3408)
    
    SPLAT_BEGIN_SEG(data_7B3408, 0x7B3408, 0x7B3408, )
        Yay0_7B3408_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B3408.Yay0.o(.data);
    SPLAT_END_SEG(data_7B3408, 0x7B39D0)
    
    SPLAT_BEGIN_SEG(data_7B39D0, 0x7B39D0, 0x7B39D0, )
        Yay0_7B39D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B39D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B39D0, 0x7B40D8)
    
    SPLAT_BEGIN_SEG(data_7B40D8, 0x7B40D8, 0x7B40D8, )
        Yay0_7B40D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B40D8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B40D8, 0x7B4120)
    
    SPLAT_BEGIN_SEG(data_7B4120, 0x7B4120, 0x7B4120, )
        Yay0_7B4120_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4120.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4120, 0x7B4168)
    
    SPLAT_BEGIN_SEG(data_7B4168, 0x7B4168, 0x7B4168, )
        Yay0_7B4168_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4168.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4168, 0x7B4300)
    
    SPLAT_BEGIN_SEG(data_7B4300, 0x7B4300, 0x7B4300, )
        Yay0_7B4300_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4300.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4300, 0x7B4538)
    
    SPLAT_BEGIN_SEG(data_7B4538, 0x7B4538, 0x7B4538, )
        Yay0_7B4538_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4538.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4538, 0x7B47B0)
    
    SPLAT_BEGIN_SEG(data_7B47B0, 0x7B47B0, 0x7B47B0, )
        Yay0_7B47B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B47B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B47B0, 0x7B47F8)
    
    SPLAT_BEGIN_SEG(data_7B47F8, 0x7B47F8, 0x7B47F8, )
        Yay0_7B47F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B47F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B47F8, 0x7B4C58)
    
    SPLAT_BEGIN_SEG(data_7B4C58, 0x7B4C58, 0x7B4C58, )
        Yay0_7B4C58_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4C58.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4C58, 0x7B4EA8)
    
    SPLAT_BEGIN_SEG(data_7B4EA8, 0x7B4EA8, 0x7B4EA8, )
        Yay0_7B4EA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4EA8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4EA8, 0x7B4EE0)
    
    SPLAT_BEGIN_SEG(data_7B4EE0, 0x7B4EE0, 0x7B4EE0, )
        Yay0_7B4EE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4EE0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4EE0, 0x7B4F30)
    
    SPLAT_BEGIN_SEG(data_7B4F30, 0x7B4F30, 0x7B4F30, )
        Yay0_7B4F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B4F30.Yay0.o(.data);
    SPLAT_END_SEG(data_7B4F30, 0x7B5040)
    
    SPLAT_BEGIN_SEG(data_7B5040, 0x7B5040, 0x7B5040, )
        Yay0_7B5040_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B5040.Yay0.o(.data);
    SPLAT_END_SEG(data_7B5040, 0x7B51A8)
    
    SPLAT_BEGIN_SEG(data_7B51A8, 0x7B51A8, 0x7B51A8, )
        Yay0_7B51A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B51A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B51A8, 0x7B56F0)
    
    SPLAT_BEGIN_SEG(data_7B56F0, 0x7B56F0, 0x7B56F0, )
        Yay0_7B56F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B56F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B56F0, 0x7B5780)
    
    SPLAT_BEGIN_SEG(data_7B5780, 0x7B5780, 0x7B5780, )
        Yay0_7B5780_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B5780.Yay0.o(.data);
    SPLAT_END_SEG(data_7B5780, 0x7B5908)
    
    SPLAT_BEGIN_SEG(data_7B5908, 0x7B5908, 0x7B5908, )
        Yay0_7B5908_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B5908.Yay0.o(.data);
    SPLAT_END_SEG(data_7B5908, 0x7B5948)
    
    SPLAT_BEGIN_SEG(data_7B5948, 0x7B5948, 0x7B5948, )
        Yay0_7B5948_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B5948.Yay0.o(.data);
    SPLAT_END_SEG(data_7B5948, 0x7B5EB0)
    
    SPLAT_BEGIN_SEG(data_7B5EB0, 0x7B5EB0, 0x7B5EB0, )
        Yay0_7B5EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B5EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B5EB0, 0x7B6350)
    
    SPLAT_BEGIN_SEG(data_7B6350, 0x7B6350, 0x7B6350, )
        Yay0_7B6350_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B6350.Yay0.o(.data);
    SPLAT_END_SEG(data_7B6350, 0x7B66C0)
    
    SPLAT_BEGIN_SEG(data_7B66C0, 0x7B66C0, 0x7B66C0, )
        Yay0_7B66C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B66C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B66C0, 0x7B6A80)
    
    SPLAT_BEGIN_SEG(data_7B6A80, 0x7B6A80, 0x7B6A80, )
        Yay0_7B6A80_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B6A80.Yay0.o(.data);
    SPLAT_END_SEG(data_7B6A80, 0x7B6C40)
    
    SPLAT_BEGIN_SEG(data_7B6C40, 0x7B6C40, 0x7B6C40, )
        Yay0_7B6C40_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B6C40.Yay0.o(.data);
    SPLAT_END_SEG(data_7B6C40, 0x7B6DE8)
    
    SPLAT_BEGIN_SEG(data_7B6DE8, 0x7B6DE8, 0x7B6DE8, )
        Yay0_7B6DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B6DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B6DE8, 0x7B7068)
    
    SPLAT_BEGIN_SEG(data_7B7068, 0x7B7068, 0x7B7068, )
        Yay0_7B7068_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7068.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7068, 0x7B7120)
    
    SPLAT_BEGIN_SEG(data_7B7120, 0x7B7120, 0x7B7120, )
        Yay0_7B7120_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7120.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7120, 0x7B7260)
    
    SPLAT_BEGIN_SEG(data_7B7260, 0x7B7260, 0x7B7260, )
        Yay0_7B7260_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7260.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7260, 0x7B73D8)
    
    SPLAT_BEGIN_SEG(data_7B73D8, 0x7B73D8, 0x7B73D8, )
        Yay0_7B73D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B73D8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B73D8, 0x7B74A8)
    
    SPLAT_BEGIN_SEG(data_7B74A8, 0x7B74A8, 0x7B74A8, )
        Yay0_7B74A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B74A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B74A8, 0x7B7530)
    
    SPLAT_BEGIN_SEG(data_7B7530, 0x7B7530, 0x7B7530, )
        Yay0_7B7530_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7530.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7530, 0x7B7710)
    
    SPLAT_BEGIN_SEG(data_7B7710, 0x7B7710, 0x7B7710, )
        Yay0_7B7710_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7710.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7710, 0x7B7758)
    
    SPLAT_BEGIN_SEG(data_7B7758, 0x7B7758, 0x7B7758, )
        Yay0_7B7758_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7758.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7758, 0x7B77F0)
    
    SPLAT_BEGIN_SEG(data_7B77F0, 0x7B77F0, 0x7B77F0, )
        Yay0_7B77F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B77F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B77F0, 0x7B7BA8)
    
    SPLAT_BEGIN_SEG(data_7B7BA8, 0x7B7BA8, 0x7B7BA8, )
        Yay0_7B7BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B7BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B7BA8, 0x7B8188)
    
    SPLAT_BEGIN_SEG(data_7B8188, 0x7B8188, 0x7B8188, )
        Yay0_7B8188_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B8188.Yay0.o(.data);
    SPLAT_END_SEG(data_7B8188, 0x7B8240)
    
    SPLAT_BEGIN_SEG(data_7B8240, 0x7B8240, 0x7B8240, )
        Yay0_7B8240_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B8240.Yay0.o(.data);
    SPLAT_END_SEG(data_7B8240, 0x7B8280)
    
    SPLAT_BEGIN_SEG(data_7B8280, 0x7B8280, 0x7B8280, )
        Yay0_7B8280_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B8280.Yay0.o(.data);
    SPLAT_END_SEG(data_7B8280, 0x7B9128)
    
    SPLAT_BEGIN_SEG(data_7B9128, 0x7B9128, 0x7B9128, )
        Yay0_7B9128_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9128.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9128, 0x7B9238)
    
    SPLAT_BEGIN_SEG(data_7B9238, 0x7B9238, 0x7B9238, )
        Yay0_7B9238_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9238.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9238, 0x7B94A0)
    
    SPLAT_BEGIN_SEG(data_7B94A0, 0x7B94A0, 0x7B94A0, )
        Yay0_7B94A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B94A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B94A0, 0x7B9620)
    
    SPLAT_BEGIN_SEG(data_7B9620, 0x7B9620, 0x7B9620, )
        Yay0_7B9620_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9620.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9620, 0x7B98A0)
    
    SPLAT_BEGIN_SEG(data_7B98A0, 0x7B98A0, 0x7B98A0, )
        Yay0_7B98A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B98A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B98A0, 0x7B98D0)
    
    SPLAT_BEGIN_SEG(data_7B98D0, 0x7B98D0, 0x7B98D0, )
        Yay0_7B98D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B98D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7B98D0, 0x7B98F8)
    
    SPLAT_BEGIN_SEG(data_7B98F8, 0x7B98F8, 0x7B98F8, )
        Yay0_7B98F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B98F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7B98F8, 0x7B9930)
    
    SPLAT_BEGIN_SEG(data_7B9930, 0x7B9930, 0x7B9930, )
        Yay0_7B9930_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9930.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9930, 0x7B9B50)
    
    SPLAT_BEGIN_SEG(data_7B9B50, 0x7B9B50, 0x7B9B50, )
        Yay0_7B9B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9B50.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9B50, 0x7B9C18)
    
    SPLAT_BEGIN_SEG(data_7B9C18, 0x7B9C18, 0x7B9C18, )
        Yay0_7B9C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9C18.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9C18, 0x7B9F30)
    
    SPLAT_BEGIN_SEG(data_7B9F30, 0x7B9F30, 0x7B9F30, )
        Yay0_7B9F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/7B9F30.Yay0.o(.data);
    SPLAT_END_SEG(data_7B9F30, 0x7BA300)
    
    SPLAT_BEGIN_SEG(data_7BA300, 0x7BA300, 0x7BA300, )
        Yay0_7BA300_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BA300.Yay0.o(.data);
    SPLAT_END_SEG(data_7BA300, 0x7BA4B8)
    
    SPLAT_BEGIN_SEG(data_7BA4B8, 0x7BA4B8, 0x7BA4B8, )
        Yay0_7BA4B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BA4B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BA4B8, 0x7BA4F0)
    
    SPLAT_BEGIN_SEG(data_7BA4F0, 0x7BA4F0, 0x7BA4F0, )
        Yay0_7BA4F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BA4F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BA4F0, 0x7BA7C8)
    
    SPLAT_BEGIN_SEG(data_7BA7C8, 0x7BA7C8, 0x7BA7C8, )
        Yay0_7BA7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BA7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BA7C8, 0x7BAAB8)
    
    SPLAT_BEGIN_SEG(data_7BAAB8, 0x7BAAB8, 0x7BAAB8, )
        Yay0_7BAAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BAAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BAAB8, 0x7BAB88)
    
    SPLAT_BEGIN_SEG(data_7BAB88, 0x7BAB88, 0x7BAB88, )
        Yay0_7BAB88_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BAB88.Yay0.o(.data);
    SPLAT_END_SEG(data_7BAB88, 0x7BABE8)
    
    SPLAT_BEGIN_SEG(data_7BABE8, 0x7BABE8, 0x7BABE8, )
        Yay0_7BABE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BABE8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BABE8, 0x7BADA0)
    
    SPLAT_BEGIN_SEG(data_7BADA0, 0x7BADA0, 0x7BADA0, )
        Yay0_7BADA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BADA0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BADA0, 0x7BAF58)
    
    SPLAT_BEGIN_SEG(data_7BAF58, 0x7BAF58, 0x7BAF58, )
        Yay0_7BAF58_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BAF58.Yay0.o(.data);
    SPLAT_END_SEG(data_7BAF58, 0x7BB1A0)
    
    SPLAT_BEGIN_SEG(data_7BB1A0, 0x7BB1A0, 0x7BB1A0, )
        Yay0_7BB1A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BB1A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BB1A0, 0x7BB210)
    
    SPLAT_BEGIN_SEG(data_7BB210, 0x7BB210, 0x7BB210, )
        Yay0_7BB210_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BB210.Yay0.o(.data);
    SPLAT_END_SEG(data_7BB210, 0x7BB818)
    
    SPLAT_BEGIN_SEG(data_7BB818, 0x7BB818, 0x7BB818, )
        Yay0_7BB818_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BB818.Yay0.o(.data);
    SPLAT_END_SEG(data_7BB818, 0x7BB968)
    
    SPLAT_BEGIN_SEG(data_7BB968, 0x7BB968, 0x7BB968, )
        Yay0_7BB968_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BB968.Yay0.o(.data);
    SPLAT_END_SEG(data_7BB968, 0x7BBAB8)
    
    SPLAT_BEGIN_SEG(data_7BBAB8, 0x7BBAB8, 0x7BBAB8, )
        Yay0_7BBAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBAB8, 0x7BBAF8)
    
    SPLAT_BEGIN_SEG(data_7BBAF8, 0x7BBAF8, 0x7BBAF8, )
        Yay0_7BBAF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBAF8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBAF8, 0x7BBB38)
    
    SPLAT_BEGIN_SEG(data_7BBB38, 0x7BBB38, 0x7BBB38, )
        Yay0_7BBB38_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBB38.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBB38, 0x7BBB98)
    
    SPLAT_BEGIN_SEG(data_7BBB98, 0x7BBB98, 0x7BBB98, )
        Yay0_7BBB98_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBB98.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBB98, 0x7BBBC8)
    
    SPLAT_BEGIN_SEG(data_7BBBC8, 0x7BBBC8, 0x7BBBC8, )
        Yay0_7BBBC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBBC8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBBC8, 0x7BBCB0)
    
    SPLAT_BEGIN_SEG(data_7BBCB0, 0x7BBCB0, 0x7BBCB0, )
        Yay0_7BBCB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBCB0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBCB0, 0x7BBCF0)
    
    SPLAT_BEGIN_SEG(data_7BBCF0, 0x7BBCF0, 0x7BBCF0, )
        Yay0_7BBCF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBCF0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBCF0, 0x7BBD30)
    
    SPLAT_BEGIN_SEG(data_7BBD30, 0x7BBD30, 0x7BBD30, )
        Yay0_7BBD30_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBD30.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBD30, 0x7BBD60)
    
    SPLAT_BEGIN_SEG(data_7BBD60, 0x7BBD60, 0x7BBD60, )
        Yay0_7BBD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBD60.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBD60, 0x7BBD90)
    
    SPLAT_BEGIN_SEG(data_7BBD90, 0x7BBD90, 0x7BBD90, )
        Yay0_7BBD90_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBD90.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBD90, 0x7BBEE8)
    
    SPLAT_BEGIN_SEG(data_7BBEE8, 0x7BBEE8, 0x7BBEE8, )
        Yay0_7BBEE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BBEE8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BBEE8, 0x7BC040)
    
    SPLAT_BEGIN_SEG(data_7BC040, 0x7BC040, 0x7BC040, )
        Yay0_7BC040_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC040.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC040, 0x7BC198)
    
    SPLAT_BEGIN_SEG(data_7BC198, 0x7BC198, 0x7BC198, )
        Yay0_7BC198_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC198.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC198, 0x7BC1D0)
    
    SPLAT_BEGIN_SEG(data_7BC1D0, 0x7BC1D0, 0x7BC1D0, )
        Yay0_7BC1D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC1D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC1D0, 0x7BC208)
    
    SPLAT_BEGIN_SEG(data_7BC208, 0x7BC208, 0x7BC208, )
        Yay0_7BC208_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC208.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC208, 0x7BC250)
    
    SPLAT_BEGIN_SEG(data_7BC250, 0x7BC250, 0x7BC250, )
        Yay0_7BC250_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC250.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC250, 0x7BC298)
    
    SPLAT_BEGIN_SEG(data_7BC298, 0x7BC298, 0x7BC298, )
        Yay0_7BC298_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC298.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC298, 0x7BC2D8)
    
    SPLAT_BEGIN_SEG(data_7BC2D8, 0x7BC2D8, 0x7BC2D8, )
        Yay0_7BC2D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC2D8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC2D8, 0x7BC320)
    
    SPLAT_BEGIN_SEG(data_7BC320, 0x7BC320, 0x7BC320, )
        Yay0_7BC320_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC320.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC320, 0x7BC368)
    
    SPLAT_BEGIN_SEG(data_7BC368, 0x7BC368, 0x7BC368, )
        Yay0_7BC368_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC368.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC368, 0x7BC3B8)
    
    SPLAT_BEGIN_SEG(data_7BC3B8, 0x7BC3B8, 0x7BC3B8, )
        Yay0_7BC3B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC3B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC3B8, 0x7BC408)
    
    SPLAT_BEGIN_SEG(data_7BC408, 0x7BC408, 0x7BC408, )
        Yay0_7BC408_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC408.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC408, 0x7BC440)
    
    SPLAT_BEGIN_SEG(data_7BC440, 0x7BC440, 0x7BC440, )
        Yay0_7BC440_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC440.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC440, 0x7BC480)
    
    SPLAT_BEGIN_SEG(data_7BC480, 0x7BC480, 0x7BC480, )
        Yay0_7BC480_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC480.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC480, 0x7BC4F0)
    
    SPLAT_BEGIN_SEG(data_7BC4F0, 0x7BC4F0, 0x7BC4F0, )
        Yay0_7BC4F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC4F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC4F0, 0x7BC550)
    
    SPLAT_BEGIN_SEG(data_7BC550, 0x7BC550, 0x7BC550, )
        Yay0_7BC550_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC550.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC550, 0x7BC5B0)
    
    SPLAT_BEGIN_SEG(data_7BC5B0, 0x7BC5B0, 0x7BC5B0, )
        Yay0_7BC5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC5B0, 0x7BC628)
    
    SPLAT_BEGIN_SEG(data_7BC628, 0x7BC628, 0x7BC628, )
        Yay0_7BC628_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC628.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC628, 0x7BC688)
    
    SPLAT_BEGIN_SEG(data_7BC688, 0x7BC688, 0x7BC688, )
        Yay0_7BC688_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC688.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC688, 0x7BC700)
    
    SPLAT_BEGIN_SEG(data_7BC700, 0x7BC700, 0x7BC700, )
        Yay0_7BC700_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC700.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC700, 0x7BC770)
    
    SPLAT_BEGIN_SEG(data_7BC770, 0x7BC770, 0x7BC770, )
        Yay0_7BC770_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC770.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC770, 0x7BC798)
    
    SPLAT_BEGIN_SEG(data_7BC798, 0x7BC798, 0x7BC798, )
        Yay0_7BC798_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC798.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC798, 0x7BC7C8)
    
    SPLAT_BEGIN_SEG(data_7BC7C8, 0x7BC7C8, 0x7BC7C8, )
        Yay0_7BC7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BC7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BC7C8, 0x7BD7C0)
    
    SPLAT_BEGIN_SEG(data_7BD7C0, 0x7BD7C0, 0x7BD7C0, )
        Yay0_7BD7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BD7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BD7C0, 0x7BE2C8)
    
    SPLAT_BEGIN_SEG(data_7BE2C8, 0x7BE2C8, 0x7BE2C8, )
        Yay0_7BE2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BE2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BE2C8, 0x7BE6D0)
    
    SPLAT_BEGIN_SEG(data_7BE6D0, 0x7BE6D0, 0x7BE6D0, )
        Yay0_7BE6D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BE6D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BE6D0, 0x7BF1E8)
    
    SPLAT_BEGIN_SEG(data_7BF1E8, 0x7BF1E8, 0x7BF1E8, )
        Yay0_7BF1E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF1E8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF1E8, 0x7BF5F0)
    
    SPLAT_BEGIN_SEG(data_7BF5F0, 0x7BF5F0, 0x7BF5F0, )
        Yay0_7BF5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF5F0, 0x7BF638)
    
    SPLAT_BEGIN_SEG(data_7BF638, 0x7BF638, 0x7BF638, )
        Yay0_7BF638_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF638.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF638, 0x7BF680)
    
    SPLAT_BEGIN_SEG(data_7BF680, 0x7BF680, 0x7BF680, )
        Yay0_7BF680_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF680.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF680, 0x7BF6A8)
    
    SPLAT_BEGIN_SEG(data_7BF6A8, 0x7BF6A8, 0x7BF6A8, )
        Yay0_7BF6A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF6A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF6A8, 0x7BF6D0)
    
    SPLAT_BEGIN_SEG(data_7BF6D0, 0x7BF6D0, 0x7BF6D0, )
        Yay0_7BF6D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF6D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF6D0, 0x7BF8A0)
    
    SPLAT_BEGIN_SEG(data_7BF8A0, 0x7BF8A0, 0x7BF8A0, )
        Yay0_7BF8A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BF8A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7BF8A0, 0x7BFA88)
    
    SPLAT_BEGIN_SEG(data_7BFA88, 0x7BFA88, 0x7BFA88, )
        Yay0_7BFA88_Yay0 = .;
        BUILD_DIR/bin/Yay0/7BFA88.Yay0.o(.data);
    SPLAT_END_SEG(data_7BFA88, 0x7C02D8)
    
    SPLAT_BEGIN_SEG(data_7C02D8, 0x7C02D8, 0x7C02D8, )
        Yay0_7C02D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C02D8.Yay0.o(.data);
    SPLAT_END_SEG(data_7C02D8, 0x7C0BC0)
    
    SPLAT_BEGIN_SEG(data_7C0BC0, 0x7C0BC0, 0x7C0BC0, )
        Yay0_7C0BC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C0BC0.Yay0.o(.data);
    SPLAT_END_SEG(data_7C0BC0, 0x7C1080)
    
    SPLAT_BEGIN_SEG(data_7C1080, 0x7C1080, 0x7C1080, )
        Yay0_7C1080_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C1080.Yay0.o(.data);
    SPLAT_END_SEG(data_7C1080, 0x7C1610)
    
    SPLAT_BEGIN_SEG(data_7C1610, 0x7C1610, 0x7C1610, )
        Yay0_7C1610_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C1610.Yay0.o(.data);
    SPLAT_END_SEG(data_7C1610, 0x7C1948)
    
    SPLAT_BEGIN_SEG(data_7C1948, 0x7C1948, 0x7C1948, )
        Yay0_7C1948_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C1948.Yay0.o(.data);
    SPLAT_END_SEG(data_7C1948, 0x7C19C8)
    
    SPLAT_BEGIN_SEG(data_7C19C8, 0x7C19C8, 0x7C19C8, )
        Yay0_7C19C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C19C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7C19C8, 0x7C1D38)
    
    SPLAT_BEGIN_SEG(data_7C1D38, 0x7C1D38, 0x7C1D38, )
        Yay0_7C1D38_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C1D38.Yay0.o(.data);
    SPLAT_END_SEG(data_7C1D38, 0x7C2710)
    
    SPLAT_BEGIN_SEG(data_7C2710, 0x7C2710, 0x7C2710, )
        Yay0_7C2710_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C2710.Yay0.o(.data);
    SPLAT_END_SEG(data_7C2710, 0x7C3210)
    
    SPLAT_BEGIN_SEG(data_7C3210, 0x7C3210, 0x7C3210, )
        Yay0_7C3210_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C3210.Yay0.o(.data);
    SPLAT_END_SEG(data_7C3210, 0x7C3580)
    
    SPLAT_BEGIN_SEG(data_7C3580, 0x7C3580, 0x7C3580, )
        Yay0_7C3580_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C3580.Yay0.o(.data);
    SPLAT_END_SEG(data_7C3580, 0x7C4AC0)
    
    SPLAT_BEGIN_SEG(data_7C4AC0, 0x7C4AC0, 0x7C4AC0, )
        Yay0_7C4AC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C4AC0.Yay0.o(.data);
    SPLAT_END_SEG(data_7C4AC0, 0x7C51B0)
    
    SPLAT_BEGIN_SEG(data_7C51B0, 0x7C51B0, 0x7C51B0, )
        Yay0_7C51B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C51B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7C51B0, 0x7C5530)
    
    SPLAT_BEGIN_SEG(data_7C5530, 0x7C5530, 0x7C5530, )
        Yay0_7C5530_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C5530.Yay0.o(.data);
    SPLAT_END_SEG(data_7C5530, 0x7C58C0)
    
    SPLAT_BEGIN_SEG(data_7C58C0, 0x7C58C0, 0x7C58C0, )
        Yay0_7C58C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C58C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7C58C0, 0x7C5D50)
    
    SPLAT_BEGIN_SEG(data_7C5D50, 0x7C5D50, 0x7C5D50, )
        Yay0_7C5D50_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C5D50.Yay0.o(.data);
    SPLAT_END_SEG(data_7C5D50, 0x7C6230)
    
    SPLAT_BEGIN_SEG(data_7C6230, 0x7C6230, 0x7C6230, )
        Yay0_7C6230_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C6230.Yay0.o(.data);
    SPLAT_END_SEG(data_7C6230, 0x7C6590)
    
    SPLAT_BEGIN_SEG(data_7C6590, 0x7C6590, 0x7C6590, )
        Yay0_7C6590_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C6590.Yay0.o(.data);
    SPLAT_END_SEG(data_7C6590, 0x7C6F20)
    
    SPLAT_BEGIN_SEG(data_7C6F20, 0x7C6F20, 0x7C6F20, )
        Yay0_7C6F20_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C6F20.Yay0.o(.data);
    SPLAT_END_SEG(data_7C6F20, 0x7C7488)
    
    SPLAT_BEGIN_SEG(data_7C7488, 0x7C7488, 0x7C7488, )
        Yay0_7C7488_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C7488.Yay0.o(.data);
    SPLAT_END_SEG(data_7C7488, 0x7C77D0)
    
    SPLAT_BEGIN_SEG(data_7C77D0, 0x7C77D0, 0x7C77D0, )
        Yay0_7C77D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C77D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7C77D0, 0x7C7FC0)
    
    SPLAT_BEGIN_SEG(data_7C7FC0, 0x7C7FC0, 0x7C7FC0, )
        Yay0_7C7FC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C7FC0.Yay0.o(.data);
    SPLAT_END_SEG(data_7C7FC0, 0x7C8D20)
    
    SPLAT_BEGIN_SEG(data_7C8D20, 0x7C8D20, 0x7C8D20, )
        Yay0_7C8D20_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C8D20.Yay0.o(.data);
    SPLAT_END_SEG(data_7C8D20, 0x7C8E38)
    
    SPLAT_BEGIN_SEG(data_7C8E38, 0x7C8E38, 0x7C8E38, )
        Yay0_7C8E38_Yay0 = .;
        BUILD_DIR/bin/Yay0/7C8E38.Yay0.o(.data);
    SPLAT_END_SEG(data_7C8E38, 0x7CA218)
    
    SPLAT_BEGIN_SEG(data_7CA218, 0x7CA218, 0x7CA218, )
        Yay0_7CA218_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CA218.Yay0.o(.data);
    SPLAT_END_SEG(data_7CA218, 0x7CA8E0)
    
    SPLAT_BEGIN_SEG(data_7CA8E0, 0x7CA8E0, 0x7CA8E0, )
        Yay0_7CA8E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CA8E0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CA8E0, 0x7CB080)
    
    SPLAT_BEGIN_SEG(data_7CB080, 0x7CB080, 0x7CB080, )
        Yay0_7CB080_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB080.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB080, 0x7CB768)
    
    SPLAT_BEGIN_SEG(data_7CB768, 0x7CB768, 0x7CB768, )
        Yay0_7CB768_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB768.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB768, 0x7CB7A8)
    
    SPLAT_BEGIN_SEG(data_7CB7A8, 0x7CB7A8, 0x7CB7A8, )
        Yay0_7CB7A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB7A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB7A8, 0x7CB818)
    
    SPLAT_BEGIN_SEG(data_7CB818, 0x7CB818, 0x7CB818, )
        Yay0_7CB818_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB818.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB818, 0x7CB898)
    
    SPLAT_BEGIN_SEG(data_7CB898, 0x7CB898, 0x7CB898, )
        Yay0_7CB898_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB898.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB898, 0x7CB8C8)
    
    SPLAT_BEGIN_SEG(data_7CB8C8, 0x7CB8C8, 0x7CB8C8, )
        Yay0_7CB8C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB8C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB8C8, 0x7CB900)
    
    SPLAT_BEGIN_SEG(data_7CB900, 0x7CB900, 0x7CB900, )
        Yay0_7CB900_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB900.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB900, 0x7CB960)
    
    SPLAT_BEGIN_SEG(data_7CB960, 0x7CB960, 0x7CB960, )
        Yay0_7CB960_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB960.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB960, 0x7CB9F0)
    
    SPLAT_BEGIN_SEG(data_7CB9F0, 0x7CB9F0, 0x7CB9F0, )
        Yay0_7CB9F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CB9F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CB9F0, 0x7CBA38)
    
    SPLAT_BEGIN_SEG(data_7CBA38, 0x7CBA38, 0x7CBA38, )
        Yay0_7CBA38_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBA38.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBA38, 0x7CBA70)
    
    SPLAT_BEGIN_SEG(data_7CBA70, 0x7CBA70, 0x7CBA70, )
        Yay0_7CBA70_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBA70.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBA70, 0x7CBAC0)
    
    SPLAT_BEGIN_SEG(data_7CBAC0, 0x7CBAC0, 0x7CBAC0, )
        Yay0_7CBAC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBAC0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBAC0, 0x7CBAF8)
    
    SPLAT_BEGIN_SEG(data_7CBAF8, 0x7CBAF8, 0x7CBAF8, )
        Yay0_7CBAF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBAF8.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBAF8, 0x7CBD50)
    
    SPLAT_BEGIN_SEG(data_7CBD50, 0x7CBD50, 0x7CBD50, )
        Yay0_7CBD50_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBD50.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBD50, 0x7CBE40)
    
    SPLAT_BEGIN_SEG(data_7CBE40, 0x7CBE40, 0x7CBE40, )
        Yay0_7CBE40_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBE40.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBE40, 0x7CBF00)
    
    SPLAT_BEGIN_SEG(data_7CBF00, 0x7CBF00, 0x7CBF00, )
        Yay0_7CBF00_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CBF00.Yay0.o(.data);
    SPLAT_END_SEG(data_7CBF00, 0x7CC028)
    
    SPLAT_BEGIN_SEG(data_7CC028, 0x7CC028, 0x7CC028, )
        Yay0_7CC028_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC028.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC028, 0x7CC088)
    
    SPLAT_BEGIN_SEG(data_7CC088, 0x7CC088, 0x7CC088, )
        Yay0_7CC088_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC088.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC088, 0x7CC160)
    
    SPLAT_BEGIN_SEG(data_7CC160, 0x7CC160, 0x7CC160, )
        Yay0_7CC160_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC160.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC160, 0x7CC1C0)
    
    SPLAT_BEGIN_SEG(data_7CC1C0, 0x7CC1C0, 0x7CC1C0, )
        Yay0_7CC1C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC1C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC1C0, 0x7CC280)
    
    SPLAT_BEGIN_SEG(data_7CC280, 0x7CC280, 0x7CC280, )
        Yay0_7CC280_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC280.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC280, 0x7CC308)
    
    SPLAT_BEGIN_SEG(data_7CC308, 0x7CC308, 0x7CC308, )
        Yay0_7CC308_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC308.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC308, 0x7CC3A8)
    
    SPLAT_BEGIN_SEG(data_7CC3A8, 0x7CC3A8, 0x7CC3A8, )
        Yay0_7CC3A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC3A8.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC3A8, 0x7CC420)
    
    SPLAT_BEGIN_SEG(data_7CC420, 0x7CC420, 0x7CC420, )
        Yay0_7CC420_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC420.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC420, 0x7CC480)
    
    SPLAT_BEGIN_SEG(data_7CC480, 0x7CC480, 0x7CC480, )
        Yay0_7CC480_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC480.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC480, 0x7CC4C8)
    
    SPLAT_BEGIN_SEG(data_7CC4C8, 0x7CC4C8, 0x7CC4C8, )
        Yay0_7CC4C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC4C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC4C8, 0x7CC508)
    
    SPLAT_BEGIN_SEG(data_7CC508, 0x7CC508, 0x7CC508, )
        Yay0_7CC508_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC508.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC508, 0x7CC560)
    
    SPLAT_BEGIN_SEG(data_7CC560, 0x7CC560, 0x7CC560, )
        Yay0_7CC560_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC560.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC560, 0x7CC5B0)
    
    SPLAT_BEGIN_SEG(data_7CC5B0, 0x7CC5B0, 0x7CC5B0, )
        Yay0_7CC5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC5B0, 0x7CC5F0)
    
    SPLAT_BEGIN_SEG(data_7CC5F0, 0x7CC5F0, 0x7CC5F0, )
        Yay0_7CC5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC5F0, 0x7CC630)
    
    SPLAT_BEGIN_SEG(data_7CC630, 0x7CC630, 0x7CC630, )
        Yay0_7CC630_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC630.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC630, 0x7CC660)
    
    SPLAT_BEGIN_SEG(data_7CC660, 0x7CC660, 0x7CC660, )
        Yay0_7CC660_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC660.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC660, 0x7CC6A0)
    
    SPLAT_BEGIN_SEG(data_7CC6A0, 0x7CC6A0, 0x7CC6A0, )
        Yay0_7CC6A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CC6A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CC6A0, 0x7CCFC0)
    
    SPLAT_BEGIN_SEG(data_7CCFC0, 0x7CCFC0, 0x7CCFC0, )
        Yay0_7CCFC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CCFC0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CCFC0, 0x7CD8A0)
    
    SPLAT_BEGIN_SEG(data_7CD8A0, 0x7CD8A0, 0x7CD8A0, )
        Yay0_7CD8A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CD8A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CD8A0, 0x7CE4F0)
    
    SPLAT_BEGIN_SEG(data_7CE4F0, 0x7CE4F0, 0x7CE4F0, )
        Yay0_7CE4F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CE4F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CE4F0, 0x7CE818)
    
    SPLAT_BEGIN_SEG(data_7CE818, 0x7CE818, 0x7CE818, )
        Yay0_7CE818_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CE818.Yay0.o(.data);
    SPLAT_END_SEG(data_7CE818, 0x7CEB28)
    
    SPLAT_BEGIN_SEG(data_7CEB28, 0x7CEB28, 0x7CEB28, )
        Yay0_7CEB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CEB28.Yay0.o(.data);
    SPLAT_END_SEG(data_7CEB28, 0x7CEFC0)
    
    SPLAT_BEGIN_SEG(data_7CEFC0, 0x7CEFC0, 0x7CEFC0, )
        Yay0_7CEFC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CEFC0.Yay0.o(.data);
    SPLAT_END_SEG(data_7CEFC0, 0x7CF250)
    
    SPLAT_BEGIN_SEG(data_7CF250, 0x7CF250, 0x7CF250, )
        Yay0_7CF250_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CF250.Yay0.o(.data);
    SPLAT_END_SEG(data_7CF250, 0x7CFA30)
    
    SPLAT_BEGIN_SEG(data_7CFA30, 0x7CFA30, 0x7CFA30, )
        Yay0_7CFA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CFA30.Yay0.o(.data);
    SPLAT_END_SEG(data_7CFA30, 0x7CFE58)
    
    SPLAT_BEGIN_SEG(data_7CFE58, 0x7CFE58, 0x7CFE58, )
        Yay0_7CFE58_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CFE58.Yay0.o(.data);
    SPLAT_END_SEG(data_7CFE58, 0x7CFF78)
    
    SPLAT_BEGIN_SEG(data_7CFF78, 0x7CFF78, 0x7CFF78, )
        Yay0_7CFF78_Yay0 = .;
        BUILD_DIR/bin/Yay0/7CFF78.Yay0.o(.data);
    SPLAT_END_SEG(data_7CFF78, 0x7D03C0)
    
    SPLAT_BEGIN_SEG(data_7D03C0, 0x7D03C0, 0x7D03C0, )
        Yay0_7D03C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D03C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D03C0, 0x7D0450)
    
    SPLAT_BEGIN_SEG(data_7D0450, 0x7D0450, 0x7D0450, )
        Yay0_7D0450_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D0450.Yay0.o(.data);
    SPLAT_END_SEG(data_7D0450, 0x7D04E0)
    
    SPLAT_BEGIN_SEG(data_7D04E0, 0x7D04E0, 0x7D04E0, )
        Yay0_7D04E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D04E0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D04E0, 0x7D05A0)
    
    SPLAT_BEGIN_SEG(data_7D05A0, 0x7D05A0, 0x7D05A0, )
        Yay0_7D05A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D05A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D05A0, 0x7D0648)
    
    SPLAT_BEGIN_SEG(data_7D0648, 0x7D0648, 0x7D0648, )
        Yay0_7D0648_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D0648.Yay0.o(.data);
    SPLAT_END_SEG(data_7D0648, 0x7D06E0)
    
    SPLAT_BEGIN_SEG(data_7D06E0, 0x7D06E0, 0x7D06E0, )
        Yay0_7D06E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D06E0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D06E0, 0x7D07C8)
    
    SPLAT_BEGIN_SEG(data_7D07C8, 0x7D07C8, 0x7D07C8, )
        Yay0_7D07C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D07C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D07C8, 0x7D0EF8)
    
    SPLAT_BEGIN_SEG(data_7D0EF8, 0x7D0EF8, 0x7D0EF8, )
        Yay0_7D0EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D0EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D0EF8, 0x7D1578)
    
    SPLAT_BEGIN_SEG(data_7D1578, 0x7D1578, 0x7D1578, )
        Yay0_7D1578_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D1578.Yay0.o(.data);
    SPLAT_END_SEG(data_7D1578, 0x7D1C18)
    
    SPLAT_BEGIN_SEG(data_7D1C18, 0x7D1C18, 0x7D1C18, )
        Yay0_7D1C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D1C18.Yay0.o(.data);
    SPLAT_END_SEG(data_7D1C18, 0x7D1EC8)
    
    SPLAT_BEGIN_SEG(data_7D1EC8, 0x7D1EC8, 0x7D1EC8, )
        Yay0_7D1EC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D1EC8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D1EC8, 0x7D2728)
    
    SPLAT_BEGIN_SEG(data_7D2728, 0x7D2728, 0x7D2728, )
        Yay0_7D2728_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D2728.Yay0.o(.data);
    SPLAT_END_SEG(data_7D2728, 0x7D2A90)
    
    SPLAT_BEGIN_SEG(data_7D2A90, 0x7D2A90, 0x7D2A90, )
        Yay0_7D2A90_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D2A90.Yay0.o(.data);
    SPLAT_END_SEG(data_7D2A90, 0x7D2F68)
    
    SPLAT_BEGIN_SEG(data_7D2F68, 0x7D2F68, 0x7D2F68, )
        Yay0_7D2F68_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D2F68.Yay0.o(.data);
    SPLAT_END_SEG(data_7D2F68, 0x7D3520)
    
    SPLAT_BEGIN_SEG(data_7D3520, 0x7D3520, 0x7D3520, )
        Yay0_7D3520_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D3520.Yay0.o(.data);
    SPLAT_END_SEG(data_7D3520, 0x7D3AE8)
    
    SPLAT_BEGIN_SEG(data_7D3AE8, 0x7D3AE8, 0x7D3AE8, )
        Yay0_7D3AE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D3AE8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D3AE8, 0x7D4138)
    
    SPLAT_BEGIN_SEG(data_7D4138, 0x7D4138, 0x7D4138, )
        Yay0_7D4138_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D4138.Yay0.o(.data);
    SPLAT_END_SEG(data_7D4138, 0x7D47C0)
    
    SPLAT_BEGIN_SEG(data_7D47C0, 0x7D47C0, 0x7D47C0, )
        Yay0_7D47C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D47C0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D47C0, 0x7D4CE8)
    
    SPLAT_BEGIN_SEG(data_7D4CE8, 0x7D4CE8, 0x7D4CE8, )
        Yay0_7D4CE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D4CE8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D4CE8, 0x7D4FB0)
    
    SPLAT_BEGIN_SEG(data_7D4FB0, 0x7D4FB0, 0x7D4FB0, )
        Yay0_7D4FB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D4FB0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D4FB0, 0x7D5270)
    
    SPLAT_BEGIN_SEG(data_7D5270, 0x7D5270, 0x7D5270, )
        Yay0_7D5270_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D5270.Yay0.o(.data);
    SPLAT_END_SEG(data_7D5270, 0x7D58F0)
    
    SPLAT_BEGIN_SEG(data_7D58F0, 0x7D58F0, 0x7D58F0, )
        Yay0_7D58F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D58F0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D58F0, 0x7D5920)
    
    SPLAT_BEGIN_SEG(data_7D5920, 0x7D5920, 0x7D5920, )
        Yay0_7D5920_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D5920.Yay0.o(.data);
    SPLAT_END_SEG(data_7D5920, 0x7D5B58)
    
    SPLAT_BEGIN_SEG(data_7D5B58, 0x7D5B58, 0x7D5B58, )
        Yay0_7D5B58_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D5B58.Yay0.o(.data);
    SPLAT_END_SEG(data_7D5B58, 0x7D5BB8)
    
    SPLAT_BEGIN_SEG(data_7D5BB8, 0x7D5BB8, 0x7D5BB8, )
        Yay0_7D5BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D5BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D5BB8, 0x7D5FF8)
    
    SPLAT_BEGIN_SEG(data_7D5FF8, 0x7D5FF8, 0x7D5FF8, )
        Yay0_7D5FF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D5FF8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D5FF8, 0x7D6158)
    
    SPLAT_BEGIN_SEG(data_7D6158, 0x7D6158, 0x7D6158, )
        Yay0_7D6158_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6158.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6158, 0x7D6250)
    
    SPLAT_BEGIN_SEG(data_7D6250, 0x7D6250, 0x7D6250, )
        Yay0_7D6250_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6250.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6250, 0x7D6288)
    
    SPLAT_BEGIN_SEG(data_7D6288, 0x7D6288, 0x7D6288, )
        Yay0_7D6288_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6288.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6288, 0x7D6550)
    
    SPLAT_BEGIN_SEG(data_7D6550, 0x7D6550, 0x7D6550, )
        Yay0_7D6550_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6550.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6550, 0x7D65A0)
    
    SPLAT_BEGIN_SEG(data_7D65A0, 0x7D65A0, 0x7D65A0, )
        Yay0_7D65A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D65A0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D65A0, 0x7D6710)
    
    SPLAT_BEGIN_SEG(data_7D6710, 0x7D6710, 0x7D6710, )
        Yay0_7D6710_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6710.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6710, 0x7D6750)
    
    SPLAT_BEGIN_SEG(data_7D6750, 0x7D6750, 0x7D6750, )
        Yay0_7D6750_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6750.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6750, 0x7D6780)
    
    SPLAT_BEGIN_SEG(data_7D6780, 0x7D6780, 0x7D6780, )
        Yay0_7D6780_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6780.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6780, 0x7D67D8)
    
    SPLAT_BEGIN_SEG(data_7D67D8, 0x7D67D8, 0x7D67D8, )
        Yay0_7D67D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D67D8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D67D8, 0x7D6830)
    
    SPLAT_BEGIN_SEG(data_7D6830, 0x7D6830, 0x7D6830, )
        Yay0_7D6830_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6830.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6830, 0x7D6938)
    
    SPLAT_BEGIN_SEG(data_7D6938, 0x7D6938, 0x7D6938, )
        Yay0_7D6938_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6938.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6938, 0x7D6978)
    
    SPLAT_BEGIN_SEG(data_7D6978, 0x7D6978, 0x7D6978, )
        Yay0_7D6978_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6978.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6978, 0x7D6AA0)
    
    SPLAT_BEGIN_SEG(data_7D6AA0, 0x7D6AA0, 0x7D6AA0, )
        Yay0_7D6AA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6AA0.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6AA0, 0x7D6B00)
    
    SPLAT_BEGIN_SEG(data_7D6B00, 0x7D6B00, 0x7D6B00, )
        Yay0_7D6B00_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D6B00.Yay0.o(.data);
    SPLAT_END_SEG(data_7D6B00, 0x7D7728)
    
    SPLAT_BEGIN_SEG(data_7D7728, 0x7D7728, 0x7D7728, )
        Yay0_7D7728_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D7728.Yay0.o(.data);
    SPLAT_END_SEG(data_7D7728, 0x7D78F8)
    
    SPLAT_BEGIN_SEG(data_7D78F8, 0x7D78F8, 0x7D78F8, )
        Yay0_7D78F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D78F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D78F8, 0x7D7A40)
    
    SPLAT_BEGIN_SEG(data_7D7A40, 0x7D7A40, 0x7D7A40, )
        Yay0_7D7A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D7A40.Yay0.o(.data);
    SPLAT_END_SEG(data_7D7A40, 0x7D7C10)
    
    SPLAT_BEGIN_SEG(data_7D7C10, 0x7D7C10, 0x7D7C10, )
        Yay0_7D7C10_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D7C10.Yay0.o(.data);
    SPLAT_END_SEG(data_7D7C10, 0x7D7E08)
    
    SPLAT_BEGIN_SEG(data_7D7E08, 0x7D7E08, 0x7D7E08, )
        Yay0_7D7E08_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D7E08.Yay0.o(.data);
    SPLAT_END_SEG(data_7D7E08, 0x7D8180)
    
    SPLAT_BEGIN_SEG(data_7D8180, 0x7D8180, 0x7D8180, )
        Yay0_7D8180_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D8180.Yay0.o(.data);
    SPLAT_END_SEG(data_7D8180, 0x7D88B8)
    
    SPLAT_BEGIN_SEG(data_7D88B8, 0x7D88B8, 0x7D88B8, )
        Yay0_7D88B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D88B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7D88B8, 0x7D9868)
    
    SPLAT_BEGIN_SEG(data_7D9868, 0x7D9868, 0x7D9868, )
        Yay0_7D9868_Yay0 = .;
        BUILD_DIR/bin/Yay0/7D9868.Yay0.o(.data);
    SPLAT_END_SEG(data_7D9868, 0x7DBC20)
    
    SPLAT_BEGIN_SEG(data_7DBC20, 0x7DBC20, 0x7DBC20, )
        Yay0_7DBC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/7DBC20.Yay0.o(.data);
    SPLAT_END_SEG(data_7DBC20, 0x7E0BB8)
    
    SPLAT_BEGIN_SEG(data_7E0BB8, 0x7E0BB8, 0x7E0BB8, )
        Yay0_7E0BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7E0BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_7E0BB8, 0x7E4018)
    
    SPLAT_BEGIN_SEG(data_7E4018, 0x7E4018, 0x7E4018, )
        Yay0_7E4018_Yay0 = .;
        BUILD_DIR/bin/Yay0/7E4018.Yay0.o(.data);
    SPLAT_END_SEG(data_7E4018, 0x7E55C8)
    
    SPLAT_BEGIN_SEG(data_7E55C8, 0x7E55C8, 0x7E55C8, )
        Yay0_7E55C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7E55C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7E55C8, 0x7E7490)
    
    SPLAT_BEGIN_SEG(data_7E7490, 0x7E7490, 0x7E7490, )
        Yay0_7E7490_Yay0 = .;
        BUILD_DIR/bin/Yay0/7E7490.Yay0.o(.data);
    SPLAT_END_SEG(data_7E7490, 0x7E8BB0)
    
    SPLAT_BEGIN_SEG(data_7E8BB0, 0x7E8BB0, 0x7E8BB0, )
        Yay0_7E8BB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7E8BB0.Yay0.o(.data);
    SPLAT_END_SEG(data_7E8BB0, 0x7EA348)
    
    SPLAT_BEGIN_SEG(data_7EA348, 0x7EA348, 0x7EA348, )
        Yay0_7EA348_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EA348.Yay0.o(.data);
    SPLAT_END_SEG(data_7EA348, 0x7EB138)
    
    SPLAT_BEGIN_SEG(data_7EB138, 0x7EB138, 0x7EB138, )
        Yay0_7EB138_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EB138.Yay0.o(.data);
    SPLAT_END_SEG(data_7EB138, 0x7EB478)
    
    SPLAT_BEGIN_SEG(data_7EB478, 0x7EB478, 0x7EB478, )
        Yay0_7EB478_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EB478.Yay0.o(.data);
    SPLAT_END_SEG(data_7EB478, 0x7EBBD8)
    
    SPLAT_BEGIN_SEG(data_7EBBD8, 0x7EBBD8, 0x7EBBD8, )
        Yay0_7EBBD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EBBD8.Yay0.o(.data);
    SPLAT_END_SEG(data_7EBBD8, 0x7EC230)
    
    SPLAT_BEGIN_SEG(data_7EC230, 0x7EC230, 0x7EC230, )
        Yay0_7EC230_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EC230.Yay0.o(.data);
    SPLAT_END_SEG(data_7EC230, 0x7EC9B8)
    
    SPLAT_BEGIN_SEG(data_7EC9B8, 0x7EC9B8, 0x7EC9B8, )
        Yay0_7EC9B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EC9B8.Yay0.o(.data);
    SPLAT_END_SEG(data_7EC9B8, 0x7ED0E0)
    
    SPLAT_BEGIN_SEG(data_7ED0E0, 0x7ED0E0, 0x7ED0E0, )
        Yay0_7ED0E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7ED0E0.Yay0.o(.data);
    SPLAT_END_SEG(data_7ED0E0, 0x7ED7F8)
    
    SPLAT_BEGIN_SEG(data_7ED7F8, 0x7ED7F8, 0x7ED7F8, )
        Yay0_7ED7F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7ED7F8.Yay0.o(.data);
    SPLAT_END_SEG(data_7ED7F8, 0x7EE548)
    
    SPLAT_BEGIN_SEG(data_7EE548, 0x7EE548, 0x7EE548, )
        Yay0_7EE548_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EE548.Yay0.o(.data);
    SPLAT_END_SEG(data_7EE548, 0x7EF190)
    
    SPLAT_BEGIN_SEG(data_7EF190, 0x7EF190, 0x7EF190, )
        Yay0_7EF190_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EF190.Yay0.o(.data);
    SPLAT_END_SEG(data_7EF190, 0x7EF950)
    
    SPLAT_BEGIN_SEG(data_7EF950, 0x7EF950, 0x7EF950, )
        Yay0_7EF950_Yay0 = .;
        BUILD_DIR/bin/Yay0/7EF950.Yay0.o(.data);
    SPLAT_END_SEG(data_7EF950, 0x7F00C8)
    
    SPLAT_BEGIN_SEG(data_7F00C8, 0x7F00C8, 0x7F00C8, )
        Yay0_7F00C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F00C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7F00C8, 0x7F0538)
    
    SPLAT_BEGIN_SEG(data_7F0538, 0x7F0538, 0x7F0538, )
        Yay0_7F0538_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F0538.Yay0.o(.data);
    SPLAT_END_SEG(data_7F0538, 0x7F0788)
    
    SPLAT_BEGIN_SEG(data_7F0788, 0x7F0788, 0x7F0788, )
        Yay0_7F0788_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F0788.Yay0.o(.data);
    SPLAT_END_SEG(data_7F0788, 0x7F1378)
    
    SPLAT_BEGIN_SEG(data_7F1378, 0x7F1378, 0x7F1378, )
        Yay0_7F1378_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F1378.Yay0.o(.data);
    SPLAT_END_SEG(data_7F1378, 0x7F2128)
    
    SPLAT_BEGIN_SEG(data_7F2128, 0x7F2128, 0x7F2128, )
        Yay0_7F2128_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F2128.Yay0.o(.data);
    SPLAT_END_SEG(data_7F2128, 0x7F7390)
    
    SPLAT_BEGIN_SEG(data_7F7390, 0x7F7390, 0x7F7390, )
        Yay0_7F7390_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F7390.Yay0.o(.data);
    SPLAT_END_SEG(data_7F7390, 0x7F7B78)
    
    SPLAT_BEGIN_SEG(data_7F7B78, 0x7F7B78, 0x7F7B78, )
        Yay0_7F7B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F7B78.Yay0.o(.data);
    SPLAT_END_SEG(data_7F7B78, 0x7F90C8)
    
    SPLAT_BEGIN_SEG(data_7F90C8, 0x7F90C8, 0x7F90C8, )
        Yay0_7F90C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F90C8.Yay0.o(.data);
    SPLAT_END_SEG(data_7F90C8, 0x7F99D0)
    
    SPLAT_BEGIN_SEG(data_7F99D0, 0x7F99D0, 0x7F99D0, )
        Yay0_7F99D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/7F99D0.Yay0.o(.data);
    SPLAT_END_SEG(data_7F99D0, 0x7FA598)
    
    SPLAT_BEGIN_SEG(data_7FA598, 0x7FA598, 0x7FA598, )
        Yay0_7FA598_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FA598.Yay0.o(.data);
    SPLAT_END_SEG(data_7FA598, 0x7FC430)
    
    SPLAT_BEGIN_SEG(data_7FC430, 0x7FC430, 0x7FC430, )
        Yay0_7FC430_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FC430.Yay0.o(.data);
    SPLAT_END_SEG(data_7FC430, 0x7FE7E8)
    
    SPLAT_BEGIN_SEG(data_7FE7E8, 0x7FE7E8, 0x7FE7E8, )
        Yay0_7FE7E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FE7E8.Yay0.o(.data);
    SPLAT_END_SEG(data_7FE7E8, 0x7FEE08)
    
    SPLAT_BEGIN_SEG(data_7FEE08, 0x7FEE08, 0x7FEE08, )
        Yay0_7FEE08_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FEE08.Yay0.o(.data);
    SPLAT_END_SEG(data_7FEE08, 0x7FF240)
    
    SPLAT_BEGIN_SEG(data_7FF240, 0x7FF240, 0x7FF240, )
        Yay0_7FF240_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FF240.Yay0.o(.data);
    SPLAT_END_SEG(data_7FF240, 0x7FF560)
    
    SPLAT_BEGIN_SEG(data_7FF560, 0x7FF560, 0x7FF560, )
        Yay0_7FF560_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FF560.Yay0.o(.data);
    SPLAT_END_SEG(data_7FF560, 0x7FFC80)
    
    SPLAT_BEGIN_SEG(data_7FFC80, 0x7FFC80, 0x7FFC80, )
        Yay0_7FFC80_Yay0 = .;
        BUILD_DIR/bin/Yay0/7FFC80.Yay0.o(.data);
    SPLAT_END_SEG(data_7FFC80, 0x800728)
    
    SPLAT_BEGIN_SEG(data_800728, 0x800728, 0x800728, )
        Yay0_800728_Yay0 = .;
        BUILD_DIR/bin/Yay0/800728.Yay0.o(.data);
    SPLAT_END_SEG(data_800728, 0x801A80)
    
    SPLAT_BEGIN_SEG(data_801A80, 0x801A80, 0x801A80, )
        Yay0_801A80_Yay0 = .;
        BUILD_DIR/bin/Yay0/801A80.Yay0.o(.data);
    SPLAT_END_SEG(data_801A80, 0x8024E0)
    
    SPLAT_BEGIN_SEG(data_8024E0, 0x8024E0, 0x8024E0, )
        Yay0_8024E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8024E0.Yay0.o(.data);
    SPLAT_END_SEG(data_8024E0, 0x8033D8)
    
    SPLAT_BEGIN_SEG(data_8033D8, 0x8033D8, 0x8033D8, )
        Yay0_8033D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8033D8.Yay0.o(.data);
    SPLAT_END_SEG(data_8033D8, 0x804338)
    
    SPLAT_BEGIN_SEG(data_804338, 0x804338, 0x804338, )
        Yay0_804338_Yay0 = .;
        BUILD_DIR/bin/Yay0/804338.Yay0.o(.data);
    SPLAT_END_SEG(data_804338, 0x804BA0)
    
    SPLAT_BEGIN_SEG(data_804BA0, 0x804BA0, 0x804BA0, )
        Yay0_804BA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/804BA0.Yay0.o(.data);
    SPLAT_END_SEG(data_804BA0, 0x805270)
    
    SPLAT_BEGIN_SEG(data_805270, 0x805270, 0x805270, )
        Yay0_805270_Yay0 = .;
        BUILD_DIR/bin/Yay0/805270.Yay0.o(.data);
    SPLAT_END_SEG(data_805270, 0x8054B0)
    
    SPLAT_BEGIN_SEG(data_8054B0, 0x8054B0, 0x8054B0, )
        Yay0_8054B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8054B0.Yay0.o(.data);
    SPLAT_END_SEG(data_8054B0, 0x806CF8)
    
    SPLAT_BEGIN_SEG(data_806CF8, 0x806CF8, 0x806CF8, )
        Yay0_806CF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/806CF8.Yay0.o(.data);
    SPLAT_END_SEG(data_806CF8, 0x807120)
    
    SPLAT_BEGIN_SEG(data_807120, 0x807120, 0x807120, )
        Yay0_807120_Yay0 = .;
        BUILD_DIR/bin/Yay0/807120.Yay0.o(.data);
    SPLAT_END_SEG(data_807120, 0x8073A8)
    
    SPLAT_BEGIN_SEG(data_8073A8, 0x8073A8, 0x8073A8, )
        Yay0_8073A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8073A8.Yay0.o(.data);
    SPLAT_END_SEG(data_8073A8, 0x807630)
    
    SPLAT_BEGIN_SEG(data_807630, 0x807630, 0x807630, )
        Yay0_807630_Yay0 = .;
        BUILD_DIR/bin/Yay0/807630.Yay0.o(.data);
    SPLAT_END_SEG(data_807630, 0x8078B8)
    
    SPLAT_BEGIN_SEG(data_8078B8, 0x8078B8, 0x8078B8, )
        Yay0_8078B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8078B8.Yay0.o(.data);
    SPLAT_END_SEG(data_8078B8, 0x807AA0)
    
    SPLAT_BEGIN_SEG(data_807AA0, 0x807AA0, 0x807AA0, )
        Yay0_807AA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/807AA0.Yay0.o(.data);
    SPLAT_END_SEG(data_807AA0, 0x807DE8)
    
    SPLAT_BEGIN_SEG(data_807DE8, 0x807DE8, 0x807DE8, )
        Yay0_807DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/807DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_807DE8, 0x8089E8)
    
    SPLAT_BEGIN_SEG(data_8089E8, 0x8089E8, 0x8089E8, )
        Yay0_8089E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8089E8.Yay0.o(.data);
    SPLAT_END_SEG(data_8089E8, 0x808D00)
    
    SPLAT_BEGIN_SEG(data_808D00, 0x808D00, 0x808D00, )
        Yay0_808D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/808D00.Yay0.o(.data);
    SPLAT_END_SEG(data_808D00, 0x808EE8)
    
    SPLAT_BEGIN_SEG(data_808EE8, 0x808EE8, 0x808EE8, )
        Yay0_808EE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/808EE8.Yay0.o(.data);
    SPLAT_END_SEG(data_808EE8, 0x80B228)
    
    SPLAT_BEGIN_SEG(data_80B228, 0x80B228, 0x80B228, )
        Yay0_80B228_Yay0 = .;
        BUILD_DIR/bin/Yay0/80B228.Yay0.o(.data);
    SPLAT_END_SEG(data_80B228, 0x80B418)
    
    SPLAT_BEGIN_SEG(data_80B418, 0x80B418, 0x80B418, )
        Yay0_80B418_Yay0 = .;
        BUILD_DIR/bin/Yay0/80B418.Yay0.o(.data);
    SPLAT_END_SEG(data_80B418, 0x80B6A0)
    
    SPLAT_BEGIN_SEG(data_80B6A0, 0x80B6A0, 0x80B6A0, )
        Yay0_80B6A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/80B6A0.Yay0.o(.data);
    SPLAT_END_SEG(data_80B6A0, 0x80BED0)
    
    SPLAT_BEGIN_SEG(data_80BED0, 0x80BED0, 0x80BED0, )
        Yay0_80BED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/80BED0.Yay0.o(.data);
    SPLAT_END_SEG(data_80BED0, 0x80C830)
    
    SPLAT_BEGIN_SEG(data_80C830, 0x80C830, 0x80C830, )
        Yay0_80C830_Yay0 = .;
        BUILD_DIR/bin/Yay0/80C830.Yay0.o(.data);
    SPLAT_END_SEG(data_80C830, 0x80D788)
    
    SPLAT_BEGIN_SEG(data_80D788, 0x80D788, 0x80D788, )
        Yay0_80D788_Yay0 = .;
        BUILD_DIR/bin/Yay0/80D788.Yay0.o(.data);
    SPLAT_END_SEG(data_80D788, 0x80EA58)
    
    SPLAT_BEGIN_SEG(data_80EA58, 0x80EA58, 0x80EA58, )
        Yay0_80EA58_Yay0 = .;
        BUILD_DIR/bin/Yay0/80EA58.Yay0.o(.data);
    SPLAT_END_SEG(data_80EA58, 0x80EF80)
    
    SPLAT_BEGIN_SEG(data_80EF80, 0x80EF80, 0x80EF80, )
        Yay0_80EF80_Yay0 = .;
        BUILD_DIR/bin/Yay0/80EF80.Yay0.o(.data);
    SPLAT_END_SEG(data_80EF80, 0x80FCA8)
    
    SPLAT_BEGIN_SEG(data_80FCA8, 0x80FCA8, 0x80FCA8, )
        Yay0_80FCA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/80FCA8.Yay0.o(.data);
    SPLAT_END_SEG(data_80FCA8, 0x811288)
    
    SPLAT_BEGIN_SEG(data_811288, 0x811288, 0x811288, )
        Yay0_811288_Yay0 = .;
        BUILD_DIR/bin/Yay0/811288.Yay0.o(.data);
    SPLAT_END_SEG(data_811288, 0x813F30)
    
    SPLAT_BEGIN_SEG(data_813F30, 0x813F30, 0x813F30, )
        Yay0_813F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/813F30.Yay0.o(.data);
    SPLAT_END_SEG(data_813F30, 0x8158D8)
    
    SPLAT_BEGIN_SEG(data_8158D8, 0x8158D8, 0x8158D8, )
        Yay0_8158D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8158D8.Yay0.o(.data);
    SPLAT_END_SEG(data_8158D8, 0x8169B8)
    
    SPLAT_BEGIN_SEG(data_8169B8, 0x8169B8, 0x8169B8, )
        Yay0_8169B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8169B8.Yay0.o(.data);
    SPLAT_END_SEG(data_8169B8, 0x817028)
    
    SPLAT_BEGIN_SEG(data_817028, 0x817028, 0x817028, )
        Yay0_817028_Yay0 = .;
        BUILD_DIR/bin/Yay0/817028.Yay0.o(.data);
    SPLAT_END_SEG(data_817028, 0x817938)
    
    SPLAT_BEGIN_SEG(data_817938, 0x817938, 0x817938, )
        Yay0_817938_Yay0 = .;
        BUILD_DIR/bin/Yay0/817938.Yay0.o(.data);
    SPLAT_END_SEG(data_817938, 0x817DE8)
    
    SPLAT_BEGIN_SEG(data_817DE8, 0x817DE8, 0x817DE8, )
        Yay0_817DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/817DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_817DE8, 0x8180E0)
    
    SPLAT_BEGIN_SEG(data_8180E0, 0x8180E0, 0x8180E0, )
        Yay0_8180E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8180E0.Yay0.o(.data);
    SPLAT_END_SEG(data_8180E0, 0x818658)
    
    SPLAT_BEGIN_SEG(data_818658, 0x818658, 0x818658, )
        Yay0_818658_Yay0 = .;
        BUILD_DIR/bin/Yay0/818658.Yay0.o(.data);
    SPLAT_END_SEG(data_818658, 0x818930)
    
    SPLAT_BEGIN_SEG(data_818930, 0x818930, 0x818930, )
        Yay0_818930_Yay0 = .;
        BUILD_DIR/bin/Yay0/818930.Yay0.o(.data);
    SPLAT_END_SEG(data_818930, 0x819110)
    
    SPLAT_BEGIN_SEG(data_819110, 0x819110, 0x819110, )
        Yay0_819110_Yay0 = .;
        BUILD_DIR/bin/Yay0/819110.Yay0.o(.data);
    SPLAT_END_SEG(data_819110, 0x819D40)
    
    SPLAT_BEGIN_SEG(data_819D40, 0x819D40, 0x819D40, )
        Yay0_819D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/819D40.Yay0.o(.data);
    SPLAT_END_SEG(data_819D40, 0x81A980)
    
    SPLAT_BEGIN_SEG(data_81A980, 0x81A980, 0x81A980, )
        Yay0_81A980_Yay0 = .;
        BUILD_DIR/bin/Yay0/81A980.Yay0.o(.data);
    SPLAT_END_SEG(data_81A980, 0x81BCB0)
    
    SPLAT_BEGIN_SEG(data_81BCB0, 0x81BCB0, 0x81BCB0, )
        Yay0_81BCB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/81BCB0.Yay0.o(.data);
    SPLAT_END_SEG(data_81BCB0, 0x81BF80)
    
    SPLAT_BEGIN_SEG(data_81BF80, 0x81BF80, 0x81BF80, )
        Yay0_81BF80_Yay0 = .;
        BUILD_DIR/bin/Yay0/81BF80.Yay0.o(.data);
    SPLAT_END_SEG(data_81BF80, 0x81C1B8)
    
    SPLAT_BEGIN_SEG(data_81C1B8, 0x81C1B8, 0x81C1B8, )
        Yay0_81C1B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/81C1B8.Yay0.o(.data);
    SPLAT_END_SEG(data_81C1B8, 0x81C3A0)
    
    SPLAT_BEGIN_SEG(data_81C3A0, 0x81C3A0, 0x81C3A0, )
        Yay0_81C3A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/81C3A0.Yay0.o(.data);
    SPLAT_END_SEG(data_81C3A0, 0x81CD98)
    
    SPLAT_BEGIN_SEG(data_81CD98, 0x81CD98, 0x81CD98, )
        Yay0_81CD98_Yay0 = .;
        BUILD_DIR/bin/Yay0/81CD98.Yay0.o(.data);
    SPLAT_END_SEG(data_81CD98, 0x81D020)
    
    SPLAT_BEGIN_SEG(data_81D020, 0x81D020, 0x81D020, )
        Yay0_81D020_Yay0 = .;
        BUILD_DIR/bin/Yay0/81D020.Yay0.o(.data);
    SPLAT_END_SEG(data_81D020, 0x81EE70)
    
    SPLAT_BEGIN_SEG(data_81EE70, 0x81EE70, 0x81EE70, )
        Yay0_81EE70_Yay0 = .;
        BUILD_DIR/bin/Yay0/81EE70.Yay0.o(.data);
    SPLAT_END_SEG(data_81EE70, 0x81F178)
    
    SPLAT_BEGIN_SEG(data_81F178, 0x81F178, 0x81F178, )
        Yay0_81F178_Yay0 = .;
        BUILD_DIR/bin/Yay0/81F178.Yay0.o(.data);
    SPLAT_END_SEG(data_81F178, 0x81F538)
    
    SPLAT_BEGIN_SEG(data_81F538, 0x81F538, 0x81F538, )
        Yay0_81F538_Yay0 = .;
        BUILD_DIR/bin/Yay0/81F538.Yay0.o(.data);
    SPLAT_END_SEG(data_81F538, 0x81F8F0)
    
    SPLAT_BEGIN_SEG(data_81F8F0, 0x81F8F0, 0x81F8F0, )
        Yay0_81F8F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/81F8F0.Yay0.o(.data);
    SPLAT_END_SEG(data_81F8F0, 0x8261C0)
    
    SPLAT_BEGIN_SEG(data_8261C0, 0x8261C0, 0x8261C0, )
        Yay0_8261C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8261C0.Yay0.o(.data);
    SPLAT_END_SEG(data_8261C0, 0x826C78)
    
    SPLAT_BEGIN_SEG(data_826C78, 0x826C78, 0x826C78, )
        Yay0_826C78_Yay0 = .;
        BUILD_DIR/bin/Yay0/826C78.Yay0.o(.data);
    SPLAT_END_SEG(data_826C78, 0x827170)
    
    SPLAT_BEGIN_SEG(data_827170, 0x827170, 0x827170, )
        Yay0_827170_Yay0 = .;
        BUILD_DIR/bin/Yay0/827170.Yay0.o(.data);
    SPLAT_END_SEG(data_827170, 0x8290C8)
    
    SPLAT_BEGIN_SEG(data_8290C8, 0x8290C8, 0x8290C8, )
        Yay0_8290C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8290C8.Yay0.o(.data);
    SPLAT_END_SEG(data_8290C8, 0x82A8E8)
    
    SPLAT_BEGIN_SEG(data_82A8E8, 0x82A8E8, 0x82A8E8, )
        Yay0_82A8E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/82A8E8.Yay0.o(.data);
    SPLAT_END_SEG(data_82A8E8, 0x82C1F0)
    
    SPLAT_BEGIN_SEG(data_82C1F0, 0x82C1F0, 0x82C1F0, )
        Yay0_82C1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/82C1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_82C1F0, 0x82EE78)
    
    SPLAT_BEGIN_SEG(data_82EE78, 0x82EE78, 0x82EE78, )
        Yay0_82EE78_Yay0 = .;
        BUILD_DIR/bin/Yay0/82EE78.Yay0.o(.data);
    SPLAT_END_SEG(data_82EE78, 0x832540)
    
    SPLAT_BEGIN_SEG(data_832540, 0x832540, 0x832540, )
        Yay0_832540_Yay0 = .;
        BUILD_DIR/bin/Yay0/832540.Yay0.o(.data);
    SPLAT_END_SEG(data_832540, 0x832DC0)
    
    SPLAT_BEGIN_SEG(data_832DC0, 0x832DC0, 0x832DC0, )
        Yay0_832DC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/832DC0.Yay0.o(.data);
    SPLAT_END_SEG(data_832DC0, 0x833630)
    
    SPLAT_BEGIN_SEG(data_833630, 0x833630, 0x833630, )
        Yay0_833630_Yay0 = .;
        BUILD_DIR/bin/Yay0/833630.Yay0.o(.data);
    SPLAT_END_SEG(data_833630, 0x834A40)
    
    SPLAT_BEGIN_SEG(data_834A40, 0x834A40, 0x834A40, )
        Yay0_834A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/834A40.Yay0.o(.data);
    SPLAT_END_SEG(data_834A40, 0x835E48)
    
    SPLAT_BEGIN_SEG(data_835E48, 0x835E48, 0x835E48, )
        Yay0_835E48_Yay0 = .;
        BUILD_DIR/bin/Yay0/835E48.Yay0.o(.data);
    SPLAT_END_SEG(data_835E48, 0x8379C0)
    
    SPLAT_BEGIN_SEG(data_8379C0, 0x8379C0, 0x8379C0, )
        Yay0_8379C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8379C0.Yay0.o(.data);
    SPLAT_END_SEG(data_8379C0, 0x839548)
    
    SPLAT_BEGIN_SEG(data_839548, 0x839548, 0x839548, )
        Yay0_839548_Yay0 = .;
        BUILD_DIR/bin/Yay0/839548.Yay0.o(.data);
    SPLAT_END_SEG(data_839548, 0x83A660)
    
    SPLAT_BEGIN_SEG(data_83A660, 0x83A660, 0x83A660, )
        Yay0_83A660_Yay0 = .;
        BUILD_DIR/bin/Yay0/83A660.Yay0.o(.data);
    SPLAT_END_SEG(data_83A660, 0x83B708)
    
    SPLAT_BEGIN_SEG(data_83B708, 0x83B708, 0x83B708, )
        Yay0_83B708_Yay0 = .;
        BUILD_DIR/bin/Yay0/83B708.Yay0.o(.data);
    SPLAT_END_SEG(data_83B708, 0x83DE68)
    
    SPLAT_BEGIN_SEG(data_83DE68, 0x83DE68, 0x83DE68, )
        Yay0_83DE68_Yay0 = .;
        BUILD_DIR/bin/Yay0/83DE68.Yay0.o(.data);
    SPLAT_END_SEG(data_83DE68, 0x83EE60)
    
    SPLAT_BEGIN_SEG(data_83EE60, 0x83EE60, 0x83EE60, )
        Yay0_83EE60_Yay0 = .;
        BUILD_DIR/bin/Yay0/83EE60.Yay0.o(.data);
    SPLAT_END_SEG(data_83EE60, 0x83FC20)
    
    SPLAT_BEGIN_SEG(data_83FC20, 0x83FC20, 0x83FC20, )
        Yay0_83FC20_Yay0 = .;
        BUILD_DIR/bin/Yay0/83FC20.Yay0.o(.data);
    SPLAT_END_SEG(data_83FC20, 0x842810)
    
    SPLAT_BEGIN_SEG(data_842810, 0x842810, 0x842810, )
        Yay0_842810_Yay0 = .;
        BUILD_DIR/bin/Yay0/842810.Yay0.o(.data);
    SPLAT_END_SEG(data_842810, 0x842FD0)
    
    SPLAT_BEGIN_SEG(data_842FD0, 0x842FD0, 0x842FD0, )
        Yay0_842FD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/842FD0.Yay0.o(.data);
    SPLAT_END_SEG(data_842FD0, 0x844580)
    
    SPLAT_BEGIN_SEG(data_844580, 0x844580, 0x844580, )
        Yay0_844580_Yay0 = .;
        BUILD_DIR/bin/Yay0/844580.Yay0.o(.data);
    SPLAT_END_SEG(data_844580, 0x844778)
    
    SPLAT_BEGIN_SEG(data_844778, 0x844778, 0x844778, )
        Yay0_844778_Yay0 = .;
        BUILD_DIR/bin/Yay0/844778.Yay0.o(.data);
    SPLAT_END_SEG(data_844778, 0x844AB0)
    
    SPLAT_BEGIN_SEG(data_844AB0, 0x844AB0, 0x844AB0, )
        Yay0_844AB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/844AB0.Yay0.o(.data);
    SPLAT_END_SEG(data_844AB0, 0x845158)
    
    SPLAT_BEGIN_SEG(data_845158, 0x845158, 0x845158, )
        Yay0_845158_Yay0 = .;
        BUILD_DIR/bin/Yay0/845158.Yay0.o(.data);
    SPLAT_END_SEG(data_845158, 0x8470A8)
    
    SPLAT_BEGIN_SEG(data_8470A8, 0x8470A8, 0x8470A8, )
        Yay0_8470A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8470A8.Yay0.o(.data);
    SPLAT_END_SEG(data_8470A8, 0x848358)
    
    SPLAT_BEGIN_SEG(data_848358, 0x848358, 0x848358, )
        Yay0_848358_Yay0 = .;
        BUILD_DIR/bin/Yay0/848358.Yay0.o(.data);
    SPLAT_END_SEG(data_848358, 0x848598)
    
    SPLAT_BEGIN_SEG(data_848598, 0x848598, 0x848598, )
        Yay0_848598_Yay0 = .;
        BUILD_DIR/bin/Yay0/848598.Yay0.o(.data);
    SPLAT_END_SEG(data_848598, 0x848750)
    
    SPLAT_BEGIN_SEG(data_848750, 0x848750, 0x848750, )
        Yay0_848750_Yay0 = .;
        BUILD_DIR/bin/Yay0/848750.Yay0.o(.data);
    SPLAT_END_SEG(data_848750, 0x848980)
    
    SPLAT_BEGIN_SEG(data_848980, 0x848980, 0x848980, )
        Yay0_848980_Yay0 = .;
        BUILD_DIR/bin/Yay0/848980.Yay0.o(.data);
    SPLAT_END_SEG(data_848980, 0x849BB0)
    
    SPLAT_BEGIN_SEG(data_849BB0, 0x849BB0, 0x849BB0, )
        Yay0_849BB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/849BB0.Yay0.o(.data);
    SPLAT_END_SEG(data_849BB0, 0x84A2F8)
    
    SPLAT_BEGIN_SEG(data_84A2F8, 0x84A2F8, 0x84A2F8, )
        Yay0_84A2F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/84A2F8.Yay0.o(.data);
    SPLAT_END_SEG(data_84A2F8, 0x84BDA0)
    
    SPLAT_BEGIN_SEG(data_84BDA0, 0x84BDA0, 0x84BDA0, )
        Yay0_84BDA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/84BDA0.Yay0.o(.data);
    SPLAT_END_SEG(data_84BDA0, 0x84CEC8)
    
    SPLAT_BEGIN_SEG(data_84CEC8, 0x84CEC8, 0x84CEC8, )
        Yay0_84CEC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/84CEC8.Yay0.o(.data);
    SPLAT_END_SEG(data_84CEC8, 0x84E250)
    
    SPLAT_BEGIN_SEG(data_84E250, 0x84E250, 0x84E250, )
        Yay0_84E250_Yay0 = .;
        BUILD_DIR/bin/Yay0/84E250.Yay0.o(.data);
    SPLAT_END_SEG(data_84E250, 0x852078)
    
    SPLAT_BEGIN_SEG(data_852078, 0x852078, 0x852078, )
        Yay0_852078_Yay0 = .;
        BUILD_DIR/bin/Yay0/852078.Yay0.o(.data);
    SPLAT_END_SEG(data_852078, 0x853968)
    
    SPLAT_BEGIN_SEG(data_853968, 0x853968, 0x853968, )
        Yay0_853968_Yay0 = .;
        BUILD_DIR/bin/Yay0/853968.Yay0.o(.data);
    SPLAT_END_SEG(data_853968, 0x859038)
    
    SPLAT_BEGIN_SEG(data_859038, 0x859038, 0x859038, )
        Yay0_859038_Yay0 = .;
        BUILD_DIR/bin/Yay0/859038.Yay0.o(.data);
    SPLAT_END_SEG(data_859038, 0x860B38)
    
    SPLAT_BEGIN_SEG(data_860B38, 0x860B38, 0x860B38, )
        Yay0_860B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/860B38.Yay0.o(.data);
    SPLAT_END_SEG(data_860B38, 0x865098)
    
    SPLAT_BEGIN_SEG(data_865098, 0x865098, 0x865098, )
        Yay0_865098_Yay0 = .;
        BUILD_DIR/bin/Yay0/865098.Yay0.o(.data);
    SPLAT_END_SEG(data_865098, 0x8708E8)
    
    SPLAT_BEGIN_SEG(data_8708E8, 0x8708E8, 0x8708E8, )
        Yay0_8708E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8708E8.Yay0.o(.data);
    SPLAT_END_SEG(data_8708E8, 0x876340)
    
    SPLAT_BEGIN_SEG(data_876340, 0x876340, 0x876340, )
        Yay0_876340_Yay0 = .;
        BUILD_DIR/bin/Yay0/876340.Yay0.o(.data);
    SPLAT_END_SEG(data_876340, 0x880888)
    
    SPLAT_BEGIN_SEG(data_880888, 0x880888, 0x880888, )
        Yay0_880888_Yay0 = .;
        BUILD_DIR/bin/Yay0/880888.Yay0.o(.data);
    SPLAT_END_SEG(data_880888, 0x883B60)
    
    SPLAT_BEGIN_SEG(data_883B60, 0x883B60, 0x883B60, )
        Yay0_883B60_Yay0 = .;
        BUILD_DIR/bin/Yay0/883B60.Yay0.o(.data);
    SPLAT_END_SEG(data_883B60, 0x889B58)
    
    SPLAT_BEGIN_SEG(data_889B58, 0x889B58, 0x889B58, )
        Yay0_889B58_Yay0 = .;
        BUILD_DIR/bin/Yay0/889B58.Yay0.o(.data);
    SPLAT_END_SEG(data_889B58, 0x88D298)
    
    SPLAT_BEGIN_SEG(data_88D298, 0x88D298, 0x88D298, )
        Yay0_88D298_Yay0 = .;
        BUILD_DIR/bin/Yay0/88D298.Yay0.o(.data);
    SPLAT_END_SEG(data_88D298, 0x88EFE8)
    
    SPLAT_BEGIN_SEG(data_88EFE8, 0x88EFE8, 0x88EFE8, )
        Yay0_88EFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/88EFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_88EFE8, 0x88FF68)
    
    SPLAT_BEGIN_SEG(data_88FF68, 0x88FF68, 0x88FF68, )
        Yay0_88FF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/88FF68.Yay0.o(.data);
    SPLAT_END_SEG(data_88FF68, 0x8916E0)
    
    SPLAT_BEGIN_SEG(data_8916E0, 0x8916E0, 0x8916E0, )
        Yay0_8916E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8916E0.Yay0.o(.data);
    SPLAT_END_SEG(data_8916E0, 0x891DA8)
    
    SPLAT_BEGIN_SEG(data_891DA8, 0x891DA8, 0x891DA8, )
        Yay0_891DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/891DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_891DA8, 0x893B78)
    
    SPLAT_BEGIN_SEG(data_893B78, 0x893B78, 0x893B78, )
        Yay0_893B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/893B78.Yay0.o(.data);
    SPLAT_END_SEG(data_893B78, 0x8954C0)
    
    SPLAT_BEGIN_SEG(data_8954C0, 0x8954C0, 0x8954C0, )
        Yay0_8954C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8954C0.Yay0.o(.data);
    SPLAT_END_SEG(data_8954C0, 0x897410)
    
    SPLAT_BEGIN_SEG(data_897410, 0x897410, 0x897410, )
        Yay0_897410_Yay0 = .;
        BUILD_DIR/bin/Yay0/897410.Yay0.o(.data);
    SPLAT_END_SEG(data_897410, 0x899588)
    
    SPLAT_BEGIN_SEG(data_899588, 0x899588, 0x899588, )
        Yay0_899588_Yay0 = .;
        BUILD_DIR/bin/Yay0/899588.Yay0.o(.data);
    SPLAT_END_SEG(data_899588, 0x89A4D0)
    
    SPLAT_BEGIN_SEG(data_89A4D0, 0x89A4D0, 0x89A4D0, )
        Yay0_89A4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/89A4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_89A4D0, 0x89B958)
    
    SPLAT_BEGIN_SEG(data_89B958, 0x89B958, 0x89B958, )
        Yay0_89B958_Yay0 = .;
        BUILD_DIR/bin/Yay0/89B958.Yay0.o(.data);
    SPLAT_END_SEG(data_89B958, 0x89C848)
    
    SPLAT_BEGIN_SEG(data_89C848, 0x89C848, 0x89C848, )
        Yay0_89C848_Yay0 = .;
        BUILD_DIR/bin/Yay0/89C848.Yay0.o(.data);
    SPLAT_END_SEG(data_89C848, 0x89D4B8)
    
    SPLAT_BEGIN_SEG(data_89D4B8, 0x89D4B8, 0x89D4B8, )
        Yay0_89D4B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/89D4B8.Yay0.o(.data);
    SPLAT_END_SEG(data_89D4B8, 0x89DE10)
    
    SPLAT_BEGIN_SEG(data_89DE10, 0x89DE10, 0x89DE10, )
        Yay0_89DE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/89DE10.Yay0.o(.data);
    SPLAT_END_SEG(data_89DE10, 0x89EAF8)
    
    SPLAT_BEGIN_SEG(data_89EAF8, 0x89EAF8, 0x89EAF8, )
        Yay0_89EAF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/89EAF8.Yay0.o(.data);
    SPLAT_END_SEG(data_89EAF8, 0x8A0F00)
    
    SPLAT_BEGIN_SEG(data_8A0F00, 0x8A0F00, 0x8A0F00, )
        Yay0_8A0F00_Yay0 = .;
        BUILD_DIR/bin/Yay0/8A0F00.Yay0.o(.data);
    SPLAT_END_SEG(data_8A0F00, 0x8A23A0)
    
    SPLAT_BEGIN_SEG(data_8A23A0, 0x8A23A0, 0x8A23A0, )
        Yay0_8A23A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8A23A0.Yay0.o(.data);
    SPLAT_END_SEG(data_8A23A0, 0x8A8188)
    
    SPLAT_BEGIN_SEG(data_8A8188, 0x8A8188, 0x8A8188, )
        Yay0_8A8188_Yay0 = .;
        BUILD_DIR/bin/Yay0/8A8188.Yay0.o(.data);
    SPLAT_END_SEG(data_8A8188, 0x8A93D0)
    
    SPLAT_BEGIN_SEG(data_8A93D0, 0x8A93D0, 0x8A93D0, )
        Yay0_8A93D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8A93D0.Yay0.o(.data);
    SPLAT_END_SEG(data_8A93D0, 0x8AD808)
    
    SPLAT_BEGIN_SEG(data_8AD808, 0x8AD808, 0x8AD808, )
        Yay0_8AD808_Yay0 = .;
        BUILD_DIR/bin/Yay0/8AD808.Yay0.o(.data);
    SPLAT_END_SEG(data_8AD808, 0x8AE6A8)
    
    SPLAT_BEGIN_SEG(data_8AE6A8, 0x8AE6A8, 0x8AE6A8, )
        Yay0_8AE6A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8AE6A8.Yay0.o(.data);
    SPLAT_END_SEG(data_8AE6A8, 0x8AEF48)
    
    SPLAT_BEGIN_SEG(data_8AEF48, 0x8AEF48, 0x8AEF48, )
        Yay0_8AEF48_Yay0 = .;
        BUILD_DIR/bin/Yay0/8AEF48.Yay0.o(.data);
    SPLAT_END_SEG(data_8AEF48, 0x8AF160)
    
    SPLAT_BEGIN_SEG(data_8AF160, 0x8AF160, 0x8AF160, )
        Yay0_8AF160_Yay0 = .;
        BUILD_DIR/bin/Yay0/8AF160.Yay0.o(.data);
    SPLAT_END_SEG(data_8AF160, 0x8AF510)
    
    SPLAT_BEGIN_SEG(data_8AF510, 0x8AF510, 0x8AF510, )
        Yay0_8AF510_Yay0 = .;
        BUILD_DIR/bin/Yay0/8AF510.Yay0.o(.data);
    SPLAT_END_SEG(data_8AF510, 0x8B3D88)
    
    SPLAT_BEGIN_SEG(data_8B3D88, 0x8B3D88, 0x8B3D88, )
        Yay0_8B3D88_Yay0 = .;
        BUILD_DIR/bin/Yay0/8B3D88.Yay0.o(.data);
    SPLAT_END_SEG(data_8B3D88, 0x8B67E8)
    
    SPLAT_BEGIN_SEG(data_8B67E8, 0x8B67E8, 0x8B67E8, )
        Yay0_8B67E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8B67E8.Yay0.o(.data);
    SPLAT_END_SEG(data_8B67E8, 0x8B7008)
    
    SPLAT_BEGIN_SEG(data_8B7008, 0x8B7008, 0x8B7008, )
        Yay0_8B7008_Yay0 = .;
        BUILD_DIR/bin/Yay0/8B7008.Yay0.o(.data);
    SPLAT_END_SEG(data_8B7008, 0x8B7888)
    
    SPLAT_BEGIN_SEG(data_8B7888, 0x8B7888, 0x8B7888, )
        Yay0_8B7888_Yay0 = .;
        BUILD_DIR/bin/Yay0/8B7888.Yay0.o(.data);
    SPLAT_END_SEG(data_8B7888, 0x8B9748)
    
    SPLAT_BEGIN_SEG(data_8B9748, 0x8B9748, 0x8B9748, )
        Yay0_8B9748_Yay0 = .;
        BUILD_DIR/bin/Yay0/8B9748.Yay0.o(.data);
    SPLAT_END_SEG(data_8B9748, 0x8BA5F8)
    
    SPLAT_BEGIN_SEG(data_8BA5F8, 0x8BA5F8, 0x8BA5F8, )
        Yay0_8BA5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BA5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_8BA5F8, 0x8BB788)
    
    SPLAT_BEGIN_SEG(data_8BB788, 0x8BB788, 0x8BB788, )
        Yay0_8BB788_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BB788.Yay0.o(.data);
    SPLAT_END_SEG(data_8BB788, 0x8BC908)
    
    SPLAT_BEGIN_SEG(data_8BC908, 0x8BC908, 0x8BC908, )
        Yay0_8BC908_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BC908.Yay0.o(.data);
    SPLAT_END_SEG(data_8BC908, 0x8BCC80)
    
    SPLAT_BEGIN_SEG(data_8BCC80, 0x8BCC80, 0x8BCC80, )
        Yay0_8BCC80_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BCC80.Yay0.o(.data);
    SPLAT_END_SEG(data_8BCC80, 0x8BCFF8)
    
    SPLAT_BEGIN_SEG(data_8BCFF8, 0x8BCFF8, 0x8BCFF8, )
        Yay0_8BCFF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BCFF8.Yay0.o(.data);
    SPLAT_END_SEG(data_8BCFF8, 0x8BD1B0)
    
    SPLAT_BEGIN_SEG(data_8BD1B0, 0x8BD1B0, 0x8BD1B0, )
        Yay0_8BD1B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BD1B0.Yay0.o(.data);
    SPLAT_END_SEG(data_8BD1B0, 0x8BD320)
    
    SPLAT_BEGIN_SEG(data_8BD320, 0x8BD320, 0x8BD320, )
        Yay0_8BD320_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BD320.Yay0.o(.data);
    SPLAT_END_SEG(data_8BD320, 0x8BDBC8)
    
    SPLAT_BEGIN_SEG(data_8BDBC8, 0x8BDBC8, 0x8BDBC8, )
        Yay0_8BDBC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BDBC8.Yay0.o(.data);
    SPLAT_END_SEG(data_8BDBC8, 0x8BFC00)
    
    SPLAT_BEGIN_SEG(data_8BFC00, 0x8BFC00, 0x8BFC00, )
        Yay0_8BFC00_Yay0 = .;
        BUILD_DIR/bin/Yay0/8BFC00.Yay0.o(.data);
    SPLAT_END_SEG(data_8BFC00, 0x8C0EB8)
    
    SPLAT_BEGIN_SEG(data_8C0EB8, 0x8C0EB8, 0x8C0EB8, )
        Yay0_8C0EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C0EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_8C0EB8, 0x8C1338)
    
    SPLAT_BEGIN_SEG(data_8C1338, 0x8C1338, 0x8C1338, )
        Yay0_8C1338_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C1338.Yay0.o(.data);
    SPLAT_END_SEG(data_8C1338, 0x8C2BB0)
    
    SPLAT_BEGIN_SEG(data_8C2BB0, 0x8C2BB0, 0x8C2BB0, )
        Yay0_8C2BB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C2BB0.Yay0.o(.data);
    SPLAT_END_SEG(data_8C2BB0, 0x8C3FC8)
    
    SPLAT_BEGIN_SEG(data_8C3FC8, 0x8C3FC8, 0x8C3FC8, )
        Yay0_8C3FC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C3FC8.Yay0.o(.data);
    SPLAT_END_SEG(data_8C3FC8, 0x8C5A08)
    
    SPLAT_BEGIN_SEG(data_8C5A08, 0x8C5A08, 0x8C5A08, )
        Yay0_8C5A08_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C5A08.Yay0.o(.data);
    SPLAT_END_SEG(data_8C5A08, 0x8C8758)
    
    SPLAT_BEGIN_SEG(data_8C8758, 0x8C8758, 0x8C8758, )
        Yay0_8C8758_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C8758.Yay0.o(.data);
    SPLAT_END_SEG(data_8C8758, 0x8C8EC0)
    
    SPLAT_BEGIN_SEG(data_8C8EC0, 0x8C8EC0, 0x8C8EC0, )
        Yay0_8C8EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8C8EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_8C8EC0, 0x8CA2B8)
    
    SPLAT_BEGIN_SEG(data_8CA2B8, 0x8CA2B8, 0x8CA2B8, )
        Yay0_8CA2B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CA2B8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CA2B8, 0x8CB330)
    
    SPLAT_BEGIN_SEG(data_8CB330, 0x8CB330, 0x8CB330, )
        Yay0_8CB330_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CB330.Yay0.o(.data);
    SPLAT_END_SEG(data_8CB330, 0x8CBB40)
    
    SPLAT_BEGIN_SEG(data_8CBB40, 0x8CBB40, 0x8CBB40, )
        Yay0_8CBB40_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CBB40.Yay0.o(.data);
    SPLAT_END_SEG(data_8CBB40, 0x8CBD38)
    
    SPLAT_BEGIN_SEG(data_8CBD38, 0x8CBD38, 0x8CBD38, )
        Yay0_8CBD38_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CBD38.Yay0.o(.data);
    SPLAT_END_SEG(data_8CBD38, 0x8CC2F8)
    
    SPLAT_BEGIN_SEG(data_8CC2F8, 0x8CC2F8, 0x8CC2F8, )
        Yay0_8CC2F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CC2F8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CC2F8, 0x8CC5D8)
    
    SPLAT_BEGIN_SEG(data_8CC5D8, 0x8CC5D8, 0x8CC5D8, )
        Yay0_8CC5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CC5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CC5D8, 0x8CC7E0)
    
    SPLAT_BEGIN_SEG(data_8CC7E0, 0x8CC7E0, 0x8CC7E0, )
        Yay0_8CC7E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CC7E0.Yay0.o(.data);
    SPLAT_END_SEG(data_8CC7E0, 0x8CCB28)
    
    SPLAT_BEGIN_SEG(data_8CCB28, 0x8CCB28, 0x8CCB28, )
        Yay0_8CCB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CCB28.Yay0.o(.data);
    SPLAT_END_SEG(data_8CCB28, 0x8CCE30)
    
    SPLAT_BEGIN_SEG(data_8CCE30, 0x8CCE30, 0x8CCE30, )
        Yay0_8CCE30_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CCE30.Yay0.o(.data);
    SPLAT_END_SEG(data_8CCE30, 0x8CD110)
    
    SPLAT_BEGIN_SEG(data_8CD110, 0x8CD110, 0x8CD110, )
        Yay0_8CD110_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CD110.Yay0.o(.data);
    SPLAT_END_SEG(data_8CD110, 0x8CDA98)
    
    SPLAT_BEGIN_SEG(data_8CDA98, 0x8CDA98, 0x8CDA98, )
        Yay0_8CDA98_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CDA98.Yay0.o(.data);
    SPLAT_END_SEG(data_8CDA98, 0x8CDC90)
    
    SPLAT_BEGIN_SEG(data_8CDC90, 0x8CDC90, 0x8CDC90, )
        Yay0_8CDC90_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CDC90.Yay0.o(.data);
    SPLAT_END_SEG(data_8CDC90, 0x8CE210)
    
    SPLAT_BEGIN_SEG(data_8CE210, 0x8CE210, 0x8CE210, )
        Yay0_8CE210_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CE210.Yay0.o(.data);
    SPLAT_END_SEG(data_8CE210, 0x8CE300)
    
    SPLAT_BEGIN_SEG(data_8CE300, 0x8CE300, 0x8CE300, )
        Yay0_8CE300_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CE300.Yay0.o(.data);
    SPLAT_END_SEG(data_8CE300, 0x8CE440)
    
    SPLAT_BEGIN_SEG(data_8CE440, 0x8CE440, 0x8CE440, )
        Yay0_8CE440_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CE440.Yay0.o(.data);
    SPLAT_END_SEG(data_8CE440, 0x8CED88)
    
    SPLAT_BEGIN_SEG(data_8CED88, 0x8CED88, 0x8CED88, )
        Yay0_8CED88_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CED88.Yay0.o(.data);
    SPLAT_END_SEG(data_8CED88, 0x8CF1F8)
    
    SPLAT_BEGIN_SEG(data_8CF1F8, 0x8CF1F8, 0x8CF1F8, )
        Yay0_8CF1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF1F8, 0x8CF288)
    
    SPLAT_BEGIN_SEG(data_8CF288, 0x8CF288, 0x8CF288, )
        Yay0_8CF288_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF288.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF288, 0x8CF318)
    
    SPLAT_BEGIN_SEG(data_8CF318, 0x8CF318, 0x8CF318, )
        Yay0_8CF318_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF318.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF318, 0x8CF460)
    
    SPLAT_BEGIN_SEG(data_8CF460, 0x8CF460, 0x8CF460, )
        Yay0_8CF460_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF460.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF460, 0x8CF5C0)
    
    SPLAT_BEGIN_SEG(data_8CF5C0, 0x8CF5C0, 0x8CF5C0, )
        Yay0_8CF5C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF5C0.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF5C0, 0x8CF6A8)
    
    SPLAT_BEGIN_SEG(data_8CF6A8, 0x8CF6A8, 0x8CF6A8, )
        Yay0_8CF6A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF6A8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF6A8, 0x8CF7D0)
    
    SPLAT_BEGIN_SEG(data_8CF7D0, 0x8CF7D0, 0x8CF7D0, )
        Yay0_8CF7D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF7D0.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF7D0, 0x8CF938)
    
    SPLAT_BEGIN_SEG(data_8CF938, 0x8CF938, 0x8CF938, )
        Yay0_8CF938_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF938.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF938, 0x8CF998)
    
    SPLAT_BEGIN_SEG(data_8CF998, 0x8CF998, 0x8CF998, )
        Yay0_8CF998_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CF998.Yay0.o(.data);
    SPLAT_END_SEG(data_8CF998, 0x8CFA30)
    
    SPLAT_BEGIN_SEG(data_8CFA30, 0x8CFA30, 0x8CFA30, )
        Yay0_8CFA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFA30.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFA30, 0x8CFAC8)
    
    SPLAT_BEGIN_SEG(data_8CFAC8, 0x8CFAC8, 0x8CFAC8, )
        Yay0_8CFAC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFAC8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFAC8, 0x8CFB80)
    
    SPLAT_BEGIN_SEG(data_8CFB80, 0x8CFB80, 0x8CFB80, )
        Yay0_8CFB80_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFB80.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFB80, 0x8CFD08)
    
    SPLAT_BEGIN_SEG(data_8CFD08, 0x8CFD08, 0x8CFD08, )
        Yay0_8CFD08_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFD08.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFD08, 0x8CFD90)
    
    SPLAT_BEGIN_SEG(data_8CFD90, 0x8CFD90, 0x8CFD90, )
        Yay0_8CFD90_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFD90.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFD90, 0x8CFE18)
    
    SPLAT_BEGIN_SEG(data_8CFE18, 0x8CFE18, 0x8CFE18, )
        Yay0_8CFE18_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFE18.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFE18, 0x8CFEE8)
    
    SPLAT_BEGIN_SEG(data_8CFEE8, 0x8CFEE8, 0x8CFEE8, )
        Yay0_8CFEE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8CFEE8.Yay0.o(.data);
    SPLAT_END_SEG(data_8CFEE8, 0x8D0050)
    
    SPLAT_BEGIN_SEG(data_8D0050, 0x8D0050, 0x8D0050, )
        Yay0_8D0050_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D0050.Yay0.o(.data);
    SPLAT_END_SEG(data_8D0050, 0x8D0218)
    
    SPLAT_BEGIN_SEG(data_8D0218, 0x8D0218, 0x8D0218, )
        Yay0_8D0218_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D0218.Yay0.o(.data);
    SPLAT_END_SEG(data_8D0218, 0x8D02F8)
    
    SPLAT_BEGIN_SEG(data_8D02F8, 0x8D02F8, 0x8D02F8, )
        Yay0_8D02F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D02F8.Yay0.o(.data);
    SPLAT_END_SEG(data_8D02F8, 0x8D0490)
    
    SPLAT_BEGIN_SEG(data_8D0490, 0x8D0490, 0x8D0490, )
        Yay0_8D0490_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D0490.Yay0.o(.data);
    SPLAT_END_SEG(data_8D0490, 0x8D0610)
    
    SPLAT_BEGIN_SEG(data_8D0610, 0x8D0610, 0x8D0610, )
        Yay0_8D0610_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D0610.Yay0.o(.data);
    SPLAT_END_SEG(data_8D0610, 0x8D06C8)
    
    SPLAT_BEGIN_SEG(data_8D06C8, 0x8D06C8, 0x8D06C8, )
        Yay0_8D06C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D06C8.Yay0.o(.data);
    SPLAT_END_SEG(data_8D06C8, 0x8D0758)
    
    SPLAT_BEGIN_SEG(data_8D0758, 0x8D0758, 0x8D0758, )
        Yay0_8D0758_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D0758.Yay0.o(.data);
    SPLAT_END_SEG(data_8D0758, 0x8D0810)
    
    SPLAT_BEGIN_SEG(data_8D0810, 0x8D0810, 0x8D0810, )
        Yay0_8D0810_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D0810.Yay0.o(.data);
    SPLAT_END_SEG(data_8D0810, 0x8D1A98)
    
    SPLAT_BEGIN_SEG(data_8D1A98, 0x8D1A98, 0x8D1A98, )
        Yay0_8D1A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D1A98.Yay0.o(.data);
    SPLAT_END_SEG(data_8D1A98, 0x8D4758)
    
    SPLAT_BEGIN_SEG(data_8D4758, 0x8D4758, 0x8D4758, )
        Yay0_8D4758_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D4758.Yay0.o(.data);
    SPLAT_END_SEG(data_8D4758, 0x8D52D8)
    
    SPLAT_BEGIN_SEG(data_8D52D8, 0x8D52D8, 0x8D52D8, )
        Yay0_8D52D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D52D8.Yay0.o(.data);
    SPLAT_END_SEG(data_8D52D8, 0x8D57C8)
    
    SPLAT_BEGIN_SEG(data_8D57C8, 0x8D57C8, 0x8D57C8, )
        Yay0_8D57C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D57C8.Yay0.o(.data);
    SPLAT_END_SEG(data_8D57C8, 0x8D5CB0)
    
    SPLAT_BEGIN_SEG(data_8D5CB0, 0x8D5CB0, 0x8D5CB0, )
        Yay0_8D5CB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D5CB0.Yay0.o(.data);
    SPLAT_END_SEG(data_8D5CB0, 0x8D5F30)
    
    SPLAT_BEGIN_SEG(data_8D5F30, 0x8D5F30, 0x8D5F30, )
        Yay0_8D5F30_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D5F30.Yay0.o(.data);
    SPLAT_END_SEG(data_8D5F30, 0x8D6168)
    
    SPLAT_BEGIN_SEG(data_8D6168, 0x8D6168, 0x8D6168, )
        Yay0_8D6168_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D6168.Yay0.o(.data);
    SPLAT_END_SEG(data_8D6168, 0x8D63A0)
    
    SPLAT_BEGIN_SEG(data_8D63A0, 0x8D63A0, 0x8D63A0, )
        Yay0_8D63A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D63A0.Yay0.o(.data);
    SPLAT_END_SEG(data_8D63A0, 0x8D97C8)
    
    SPLAT_BEGIN_SEG(data_8D97C8, 0x8D97C8, 0x8D97C8, )
        Yay0_8D97C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8D97C8.Yay0.o(.data);
    SPLAT_END_SEG(data_8D97C8, 0x8DAB28)
    
    SPLAT_BEGIN_SEG(data_8DAB28, 0x8DAB28, 0x8DAB28, )
        Yay0_8DAB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DAB28.Yay0.o(.data);
    SPLAT_END_SEG(data_8DAB28, 0x8DE4B8)
    
    SPLAT_BEGIN_SEG(data_8DE4B8, 0x8DE4B8, 0x8DE4B8, )
        Yay0_8DE4B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DE4B8.Yay0.o(.data);
    SPLAT_END_SEG(data_8DE4B8, 0x8DE738)
    
    SPLAT_BEGIN_SEG(data_8DE738, 0x8DE738, 0x8DE738, )
        Yay0_8DE738_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DE738.Yay0.o(.data);
    SPLAT_END_SEG(data_8DE738, 0x8DE888)
    
    SPLAT_BEGIN_SEG(data_8DE888, 0x8DE888, 0x8DE888, )
        Yay0_8DE888_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DE888.Yay0.o(.data);
    SPLAT_END_SEG(data_8DE888, 0x8DE9E0)
    
    SPLAT_BEGIN_SEG(data_8DE9E0, 0x8DE9E0, 0x8DE9E0, )
        Yay0_8DE9E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DE9E0.Yay0.o(.data);
    SPLAT_END_SEG(data_8DE9E0, 0x8DEB40)
    
    SPLAT_BEGIN_SEG(data_8DEB40, 0x8DEB40, 0x8DEB40, )
        Yay0_8DEB40_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DEB40.Yay0.o(.data);
    SPLAT_END_SEG(data_8DEB40, 0x8DEDC0)
    
    SPLAT_BEGIN_SEG(data_8DEDC0, 0x8DEDC0, 0x8DEDC0, )
        Yay0_8DEDC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DEDC0.Yay0.o(.data);
    SPLAT_END_SEG(data_8DEDC0, 0x8DF080)
    
    SPLAT_BEGIN_SEG(data_8DF080, 0x8DF080, 0x8DF080, )
        Yay0_8DF080_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DF080.Yay0.o(.data);
    SPLAT_END_SEG(data_8DF080, 0x8DF690)
    
    SPLAT_BEGIN_SEG(data_8DF690, 0x8DF690, 0x8DF690, )
        Yay0_8DF690_Yay0 = .;
        BUILD_DIR/bin/Yay0/8DF690.Yay0.o(.data);
    SPLAT_END_SEG(data_8DF690, 0x8E0040)
    
    SPLAT_BEGIN_SEG(data_8E0040, 0x8E0040, 0x8E0040, )
        Yay0_8E0040_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E0040.Yay0.o(.data);
    SPLAT_END_SEG(data_8E0040, 0x8E26A0)
    
    SPLAT_BEGIN_SEG(data_8E26A0, 0x8E26A0, 0x8E26A0, )
        Yay0_8E26A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E26A0.Yay0.o(.data);
    SPLAT_END_SEG(data_8E26A0, 0x8E2780)
    
    SPLAT_BEGIN_SEG(data_8E2780, 0x8E2780, 0x8E2780, )
        Yay0_8E2780_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E2780.Yay0.o(.data);
    SPLAT_END_SEG(data_8E2780, 0x8E2B88)
    
    SPLAT_BEGIN_SEG(data_8E2B88, 0x8E2B88, 0x8E2B88, )
        Yay0_8E2B88_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E2B88.Yay0.o(.data);
    SPLAT_END_SEG(data_8E2B88, 0x8E2D40)
    
    SPLAT_BEGIN_SEG(data_8E2D40, 0x8E2D40, 0x8E2D40, )
        Yay0_8E2D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E2D40.Yay0.o(.data);
    SPLAT_END_SEG(data_8E2D40, 0x8E4F38)
    
    SPLAT_BEGIN_SEG(data_8E4F38, 0x8E4F38, 0x8E4F38, )
        Yay0_8E4F38_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E4F38.Yay0.o(.data);
    SPLAT_END_SEG(data_8E4F38, 0x8E53A8)
    
    SPLAT_BEGIN_SEG(data_8E53A8, 0x8E53A8, 0x8E53A8, )
        Yay0_8E53A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E53A8.Yay0.o(.data);
    SPLAT_END_SEG(data_8E53A8, 0x8E5F58)
    
    SPLAT_BEGIN_SEG(data_8E5F58, 0x8E5F58, 0x8E5F58, )
        Yay0_8E5F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/8E5F58.Yay0.o(.data);
    SPLAT_END_SEG(data_8E5F58, 0x8EE3C0)
    
    SPLAT_BEGIN_SEG(data_8EE3C0, 0x8EE3C0, 0x8EE3C0, )
        Yay0_8EE3C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8EE3C0.Yay0.o(.data);
    SPLAT_END_SEG(data_8EE3C0, 0x8EFAE0)
    
    SPLAT_BEGIN_SEG(data_8EFAE0, 0x8EFAE0, 0x8EFAE0, )
        Yay0_8EFAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8EFAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_8EFAE0, 0x8F5698)
    
    SPLAT_BEGIN_SEG(data_8F5698, 0x8F5698, 0x8F5698, )
        Yay0_8F5698_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F5698.Yay0.o(.data);
    SPLAT_END_SEG(data_8F5698, 0x8F6FC0)
    
    SPLAT_BEGIN_SEG(data_8F6FC0, 0x8F6FC0, 0x8F6FC0, )
        Yay0_8F6FC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F6FC0.Yay0.o(.data);
    SPLAT_END_SEG(data_8F6FC0, 0x8F7BB8)
    
    SPLAT_BEGIN_SEG(data_8F7BB8, 0x8F7BB8, 0x8F7BB8, )
        Yay0_8F7BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F7BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_8F7BB8, 0x8F8190)
    
    SPLAT_BEGIN_SEG(data_8F8190, 0x8F8190, 0x8F8190, )
        Yay0_8F8190_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F8190.Yay0.o(.data);
    SPLAT_END_SEG(data_8F8190, 0x8F89C0)
    
    SPLAT_BEGIN_SEG(data_8F89C0, 0x8F89C0, 0x8F89C0, )
        Yay0_8F89C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F89C0.Yay0.o(.data);
    SPLAT_END_SEG(data_8F89C0, 0x8F94A8)
    
    SPLAT_BEGIN_SEG(data_8F94A8, 0x8F94A8, 0x8F94A8, )
        Yay0_8F94A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F94A8.Yay0.o(.data);
    SPLAT_END_SEG(data_8F94A8, 0x8F9578)
    
    SPLAT_BEGIN_SEG(data_8F9578, 0x8F9578, 0x8F9578, )
        Yay0_8F9578_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F9578.Yay0.o(.data);
    SPLAT_END_SEG(data_8F9578, 0x8F9770)
    
    SPLAT_BEGIN_SEG(data_8F9770, 0x8F9770, 0x8F9770, )
        Yay0_8F9770_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F9770.Yay0.o(.data);
    SPLAT_END_SEG(data_8F9770, 0x8F9A48)
    
    SPLAT_BEGIN_SEG(data_8F9A48, 0x8F9A48, 0x8F9A48, )
        Yay0_8F9A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F9A48.Yay0.o(.data);
    SPLAT_END_SEG(data_8F9A48, 0x8F9E78)
    
    SPLAT_BEGIN_SEG(data_8F9E78, 0x8F9E78, 0x8F9E78, )
        Yay0_8F9E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/8F9E78.Yay0.o(.data);
    SPLAT_END_SEG(data_8F9E78, 0x8FA458)
    
    SPLAT_BEGIN_SEG(data_8FA458, 0x8FA458, 0x8FA458, )
        Yay0_8FA458_Yay0 = .;
        BUILD_DIR/bin/Yay0/8FA458.Yay0.o(.data);
    SPLAT_END_SEG(data_8FA458, 0x8FA658)
    
    SPLAT_BEGIN_SEG(data_8FA658, 0x8FA658, 0x8FA658, )
        Yay0_8FA658_Yay0 = .;
        BUILD_DIR/bin/Yay0/8FA658.Yay0.o(.data);
    SPLAT_END_SEG(data_8FA658, 0x8FC4D0)
    
    SPLAT_BEGIN_SEG(data_8FC4D0, 0x8FC4D0, 0x8FC4D0, )
        Yay0_8FC4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/8FC4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_8FC4D0, 0x8FE460)
    
    SPLAT_BEGIN_SEG(data_8FE460, 0x8FE460, 0x8FE460, )
        Yay0_8FE460_Yay0 = .;
        BUILD_DIR/bin/Yay0/8FE460.Yay0.o(.data);
    SPLAT_END_SEG(data_8FE460, 0x8FE770)
    
    SPLAT_BEGIN_SEG(data_8FE770, 0x8FE770, 0x8FE770, )
        Yay0_8FE770_Yay0 = .;
        BUILD_DIR/bin/Yay0/8FE770.Yay0.o(.data);
    SPLAT_END_SEG(data_8FE770, 0x8FEE38)
    
    SPLAT_BEGIN_SEG(data_8FEE38, 0x8FEE38, 0x8FEE38, )
        Yay0_8FEE38_Yay0 = .;
        BUILD_DIR/bin/Yay0/8FEE38.Yay0.o(.data);
    SPLAT_END_SEG(data_8FEE38, 0x900DD0)
    
    SPLAT_BEGIN_SEG(data_900DD0, 0x900DD0, 0x900DD0, )
        Yay0_900DD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/900DD0.Yay0.o(.data);
    SPLAT_END_SEG(data_900DD0, 0x903A30)
    
    SPLAT_BEGIN_SEG(data_903A30, 0x903A30, 0x903A30, )
        Yay0_903A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/903A30.Yay0.o(.data);
    SPLAT_END_SEG(data_903A30, 0x9043F8)
    
    SPLAT_BEGIN_SEG(data_9043F8, 0x9043F8, 0x9043F8, )
        Yay0_9043F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9043F8.Yay0.o(.data);
    SPLAT_END_SEG(data_9043F8, 0x909B10)
    
    SPLAT_BEGIN_SEG(data_909B10, 0x909B10, 0x909B10, )
        Yay0_909B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/909B10.Yay0.o(.data);
    SPLAT_END_SEG(data_909B10, 0x90A1F8)
    
    SPLAT_BEGIN_SEG(data_90A1F8, 0x90A1F8, 0x90A1F8, )
        Yay0_90A1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/90A1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_90A1F8, 0x90A438)
    
    SPLAT_BEGIN_SEG(data_90A438, 0x90A438, 0x90A438, )
        Yay0_90A438_Yay0 = .;
        BUILD_DIR/bin/Yay0/90A438.Yay0.o(.data);
    SPLAT_END_SEG(data_90A438, 0x90BED0)
    
    SPLAT_BEGIN_SEG(data_90BED0, 0x90BED0, 0x90BED0, )
        Yay0_90BED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/90BED0.Yay0.o(.data);
    SPLAT_END_SEG(data_90BED0, 0x90D518)
    
    SPLAT_BEGIN_SEG(data_90D518, 0x90D518, 0x90D518, )
        Yay0_90D518_Yay0 = .;
        BUILD_DIR/bin/Yay0/90D518.Yay0.o(.data);
    SPLAT_END_SEG(data_90D518, 0x90E030)
    
    SPLAT_BEGIN_SEG(data_90E030, 0x90E030, 0x90E030, )
        Yay0_90E030_Yay0 = .;
        BUILD_DIR/bin/Yay0/90E030.Yay0.o(.data);
    SPLAT_END_SEG(data_90E030, 0x911A30)
    
    SPLAT_BEGIN_SEG(data_911A30, 0x911A30, 0x911A30, )
        Yay0_911A30_Yay0 = .;
        BUILD_DIR/bin/Yay0/911A30.Yay0.o(.data);
    SPLAT_END_SEG(data_911A30, 0x914648)
    
    SPLAT_BEGIN_SEG(data_914648, 0x914648, 0x914648, )
        Yay0_914648_Yay0 = .;
        BUILD_DIR/bin/Yay0/914648.Yay0.o(.data);
    SPLAT_END_SEG(data_914648, 0x916408)
    
    SPLAT_BEGIN_SEG(data_916408, 0x916408, 0x916408, )
        Yay0_916408_Yay0 = .;
        BUILD_DIR/bin/Yay0/916408.Yay0.o(.data);
    SPLAT_END_SEG(data_916408, 0x916A00)
    
    SPLAT_BEGIN_SEG(data_916A00, 0x916A00, 0x916A00, )
        Yay0_916A00_Yay0 = .;
        BUILD_DIR/bin/Yay0/916A00.Yay0.o(.data);
    SPLAT_END_SEG(data_916A00, 0x916E80)
    
    SPLAT_BEGIN_SEG(data_916E80, 0x916E80, 0x916E80, )
        Yay0_916E80_Yay0 = .;
        BUILD_DIR/bin/Yay0/916E80.Yay0.o(.data);
    SPLAT_END_SEG(data_916E80, 0x918E08)
    
    SPLAT_BEGIN_SEG(data_918E08, 0x918E08, 0x918E08, )
        Yay0_918E08_Yay0 = .;
        BUILD_DIR/bin/Yay0/918E08.Yay0.o(.data);
    SPLAT_END_SEG(data_918E08, 0x919D58)
    
    SPLAT_BEGIN_SEG(data_919D58, 0x919D58, 0x919D58, )
        Yay0_919D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/919D58.Yay0.o(.data);
    SPLAT_END_SEG(data_919D58, 0x91BF48)
    
    SPLAT_BEGIN_SEG(data_91BF48, 0x91BF48, 0x91BF48, )
        Yay0_91BF48_Yay0 = .;
        BUILD_DIR/bin/Yay0/91BF48.Yay0.o(.data);
    SPLAT_END_SEG(data_91BF48, 0x91DC78)
    
    SPLAT_BEGIN_SEG(data_91DC78, 0x91DC78, 0x91DC78, )
        Yay0_91DC78_Yay0 = .;
        BUILD_DIR/bin/Yay0/91DC78.Yay0.o(.data);
    SPLAT_END_SEG(data_91DC78, 0x91F2F8)
    
    SPLAT_BEGIN_SEG(data_91F2F8, 0x91F2F8, 0x91F2F8, )
        Yay0_91F2F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/91F2F8.Yay0.o(.data);
    SPLAT_END_SEG(data_91F2F8, 0x91FFB8)
    
    SPLAT_BEGIN_SEG(data_91FFB8, 0x91FFB8, 0x91FFB8, )
        Yay0_91FFB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/91FFB8.Yay0.o(.data);
    SPLAT_END_SEG(data_91FFB8, 0x9213B0)
    
    SPLAT_BEGIN_SEG(data_9213B0, 0x9213B0, 0x9213B0, )
        Yay0_9213B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9213B0.Yay0.o(.data);
    SPLAT_END_SEG(data_9213B0, 0x922588)
    
    SPLAT_BEGIN_SEG(data_922588, 0x922588, 0x922588, )
        Yay0_922588_Yay0 = .;
        BUILD_DIR/bin/Yay0/922588.Yay0.o(.data);
    SPLAT_END_SEG(data_922588, 0x9239A8)
    
    SPLAT_BEGIN_SEG(data_9239A8, 0x9239A8, 0x9239A8, )
        Yay0_9239A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9239A8.Yay0.o(.data);
    SPLAT_END_SEG(data_9239A8, 0x926AD0)
    
    SPLAT_BEGIN_SEG(data_926AD0, 0x926AD0, 0x926AD0, )
        Yay0_926AD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/926AD0.Yay0.o(.data);
    SPLAT_END_SEG(data_926AD0, 0x9273F8)
    
    SPLAT_BEGIN_SEG(data_9273F8, 0x9273F8, 0x9273F8, )
        Yay0_9273F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9273F8.Yay0.o(.data);
    SPLAT_END_SEG(data_9273F8, 0x929558)
    
    SPLAT_BEGIN_SEG(data_929558, 0x929558, 0x929558, )
        Yay0_929558_Yay0 = .;
        BUILD_DIR/bin/Yay0/929558.Yay0.o(.data);
    SPLAT_END_SEG(data_929558, 0x92DF08)
    
    SPLAT_BEGIN_SEG(data_92DF08, 0x92DF08, 0x92DF08, )
        Yay0_92DF08_Yay0 = .;
        BUILD_DIR/bin/Yay0/92DF08.Yay0.o(.data);
    SPLAT_END_SEG(data_92DF08, 0x92EF60)
    
    SPLAT_BEGIN_SEG(data_92EF60, 0x92EF60, 0x92EF60, )
        Yay0_92EF60_Yay0 = .;
        BUILD_DIR/bin/Yay0/92EF60.Yay0.o(.data);
    SPLAT_END_SEG(data_92EF60, 0x933540)
    
    SPLAT_BEGIN_SEG(data_933540, 0x933540, 0x933540, )
        Yay0_933540_Yay0 = .;
        BUILD_DIR/bin/Yay0/933540.Yay0.o(.data);
    SPLAT_END_SEG(data_933540, 0x935B10)
    
    SPLAT_BEGIN_SEG(data_935B10, 0x935B10, 0x935B10, )
        Yay0_935B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/935B10.Yay0.o(.data);
    SPLAT_END_SEG(data_935B10, 0x937DA8)
    
    SPLAT_BEGIN_SEG(data_937DA8, 0x937DA8, 0x937DA8, )
        Yay0_937DA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/937DA8.Yay0.o(.data);
    SPLAT_END_SEG(data_937DA8, 0x939338)
    
    SPLAT_BEGIN_SEG(data_939338, 0x939338, 0x939338, )
        Yay0_939338_Yay0 = .;
        BUILD_DIR/bin/Yay0/939338.Yay0.o(.data);
    SPLAT_END_SEG(data_939338, 0x93A8E0)
    
    SPLAT_BEGIN_SEG(data_93A8E0, 0x93A8E0, 0x93A8E0, )
        Yay0_93A8E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/93A8E0.Yay0.o(.data);
    SPLAT_END_SEG(data_93A8E0, 0x93ABF0)
    
    SPLAT_BEGIN_SEG(data_93ABF0, 0x93ABF0, 0x93ABF0, )
        Yay0_93ABF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/93ABF0.Yay0.o(.data);
    SPLAT_END_SEG(data_93ABF0, 0x93AEE8)
    
    SPLAT_BEGIN_SEG(data_93AEE8, 0x93AEE8, 0x93AEE8, )
        Yay0_93AEE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/93AEE8.Yay0.o(.data);
    SPLAT_END_SEG(data_93AEE8, 0x93B1F8)
    
    SPLAT_BEGIN_SEG(data_93B1F8, 0x93B1F8, 0x93B1F8, )
        Yay0_93B1F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/93B1F8.Yay0.o(.data);
    SPLAT_END_SEG(data_93B1F8, 0x93EB28)
    
    SPLAT_BEGIN_SEG(data_93EB28, 0x93EB28, 0x93EB28, )
        Yay0_93EB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/93EB28.Yay0.o(.data);
    SPLAT_END_SEG(data_93EB28, 0x93FDA8)
    
    SPLAT_BEGIN_SEG(data_93FDA8, 0x93FDA8, 0x93FDA8, )
        Yay0_93FDA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/93FDA8.Yay0.o(.data);
    SPLAT_END_SEG(data_93FDA8, 0x940D80)
    
    SPLAT_BEGIN_SEG(data_940D80, 0x940D80, 0x940D80, )
        Yay0_940D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/940D80.Yay0.o(.data);
    SPLAT_END_SEG(data_940D80, 0x9425F8)
    
    SPLAT_BEGIN_SEG(data_9425F8, 0x9425F8, 0x9425F8, )
        Yay0_9425F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9425F8.Yay0.o(.data);
    SPLAT_END_SEG(data_9425F8, 0x943EE0)
    
    SPLAT_BEGIN_SEG(data_943EE0, 0x943EE0, 0x943EE0, )
        Yay0_943EE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/943EE0.Yay0.o(.data);
    SPLAT_END_SEG(data_943EE0, 0x944CF8)
    
    SPLAT_BEGIN_SEG(data_944CF8, 0x944CF8, 0x944CF8, )
        Yay0_944CF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/944CF8.Yay0.o(.data);
    SPLAT_END_SEG(data_944CF8, 0x9464B0)
    
    SPLAT_BEGIN_SEG(data_9464B0, 0x9464B0, 0x9464B0, )
        Yay0_9464B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9464B0.Yay0.o(.data);
    SPLAT_END_SEG(data_9464B0, 0x946CE0)
    
    SPLAT_BEGIN_SEG(data_946CE0, 0x946CE0, 0x946CE0, )
        Yay0_946CE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/946CE0.Yay0.o(.data);
    SPLAT_END_SEG(data_946CE0, 0x949F40)
    
    SPLAT_BEGIN_SEG(data_949F40, 0x949F40, 0x949F40, )
        Yay0_949F40_Yay0 = .;
        BUILD_DIR/bin/Yay0/949F40.Yay0.o(.data);
    SPLAT_END_SEG(data_949F40, 0x94BB68)
    
    SPLAT_BEGIN_SEG(data_94BB68, 0x94BB68, 0x94BB68, )
        Yay0_94BB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/94BB68.Yay0.o(.data);
    SPLAT_END_SEG(data_94BB68, 0x94CC88)
    
    SPLAT_BEGIN_SEG(data_94CC88, 0x94CC88, 0x94CC88, )
        Yay0_94CC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/94CC88.Yay0.o(.data);
    SPLAT_END_SEG(data_94CC88, 0x94E6B0)
    
    SPLAT_BEGIN_SEG(data_94E6B0, 0x94E6B0, 0x94E6B0, )
        Yay0_94E6B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/94E6B0.Yay0.o(.data);
    SPLAT_END_SEG(data_94E6B0, 0x94F270)
    
    SPLAT_BEGIN_SEG(data_94F270, 0x94F270, 0x94F270, )
        Yay0_94F270_Yay0 = .;
        BUILD_DIR/bin/Yay0/94F270.Yay0.o(.data);
    SPLAT_END_SEG(data_94F270, 0x94F738)
    
    SPLAT_BEGIN_SEG(data_94F738, 0x94F738, 0x94F738, )
        Yay0_94F738_Yay0 = .;
        BUILD_DIR/bin/Yay0/94F738.Yay0.o(.data);
    SPLAT_END_SEG(data_94F738, 0x94FFA8)
    
    SPLAT_BEGIN_SEG(data_94FFA8, 0x94FFA8, 0x94FFA8, )
        Yay0_94FFA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/94FFA8.Yay0.o(.data);
    SPLAT_END_SEG(data_94FFA8, 0x9534B8)
    
    SPLAT_BEGIN_SEG(data_9534B8, 0x9534B8, 0x9534B8, )
        Yay0_9534B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9534B8.Yay0.o(.data);
    SPLAT_END_SEG(data_9534B8, 0x954D08)
    
    SPLAT_BEGIN_SEG(data_954D08, 0x954D08, 0x954D08, )
        Yay0_954D08_Yay0 = .;
        BUILD_DIR/bin/Yay0/954D08.Yay0.o(.data);
    SPLAT_END_SEG(data_954D08, 0x956060)
    
    SPLAT_BEGIN_SEG(data_956060, 0x956060, 0x956060, )
        Yay0_956060_Yay0 = .;
        BUILD_DIR/bin/Yay0/956060.Yay0.o(.data);
    SPLAT_END_SEG(data_956060, 0x956FE8)
    
    SPLAT_BEGIN_SEG(data_956FE8, 0x956FE8, 0x956FE8, )
        Yay0_956FE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/956FE8.Yay0.o(.data);
    SPLAT_END_SEG(data_956FE8, 0x9575F8)
    
    SPLAT_BEGIN_SEG(data_9575F8, 0x9575F8, 0x9575F8, )
        Yay0_9575F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9575F8.Yay0.o(.data);
    SPLAT_END_SEG(data_9575F8, 0x957870)
    
    SPLAT_BEGIN_SEG(data_957870, 0x957870, 0x957870, )
        Yay0_957870_Yay0 = .;
        BUILD_DIR/bin/Yay0/957870.Yay0.o(.data);
    SPLAT_END_SEG(data_957870, 0x957B30)
    
    SPLAT_BEGIN_SEG(data_957B30, 0x957B30, 0x957B30, )
        Yay0_957B30_Yay0 = .;
        BUILD_DIR/bin/Yay0/957B30.Yay0.o(.data);
    SPLAT_END_SEG(data_957B30, 0x958DB0)
    
    SPLAT_BEGIN_SEG(data_958DB0, 0x958DB0, 0x958DB0, )
        Yay0_958DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/958DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_958DB0, 0x95C120)
    
    SPLAT_BEGIN_SEG(data_95C120, 0x95C120, 0x95C120, )
        Yay0_95C120_Yay0 = .;
        BUILD_DIR/bin/Yay0/95C120.Yay0.o(.data);
    SPLAT_END_SEG(data_95C120, 0x95EFD8)
    
    SPLAT_BEGIN_SEG(data_95EFD8, 0x95EFD8, 0x95EFD8, )
        Yay0_95EFD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/95EFD8.Yay0.o(.data);
    SPLAT_END_SEG(data_95EFD8, 0x960980)
    
    SPLAT_BEGIN_SEG(data_960980, 0x960980, 0x960980, )
        Yay0_960980_Yay0 = .;
        BUILD_DIR/bin/Yay0/960980.Yay0.o(.data);
    SPLAT_END_SEG(data_960980, 0x961E18)
    
    SPLAT_BEGIN_SEG(data_961E18, 0x961E18, 0x961E18, )
        Yay0_961E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/961E18.Yay0.o(.data);
    SPLAT_END_SEG(data_961E18, 0x962DB8)
    
    SPLAT_BEGIN_SEG(data_962DB8, 0x962DB8, 0x962DB8, )
        Yay0_962DB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/962DB8.Yay0.o(.data);
    SPLAT_END_SEG(data_962DB8, 0x965C68)
    
    SPLAT_BEGIN_SEG(data_965C68, 0x965C68, 0x965C68, )
        Yay0_965C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/965C68.Yay0.o(.data);
    SPLAT_END_SEG(data_965C68, 0x968000)
    
    SPLAT_BEGIN_SEG(data_968000, 0x968000, 0x968000, )
        Yay0_968000_Yay0 = .;
        BUILD_DIR/bin/Yay0/968000.Yay0.o(.data);
    SPLAT_END_SEG(data_968000, 0x9685F8)
    
    SPLAT_BEGIN_SEG(data_9685F8, 0x9685F8, 0x9685F8, )
        Yay0_9685F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9685F8.Yay0.o(.data);
    SPLAT_END_SEG(data_9685F8, 0x96EF58)
    
    SPLAT_BEGIN_SEG(data_96EF58, 0x96EF58, 0x96EF58, )
        Yay0_96EF58_Yay0 = .;
        BUILD_DIR/bin/Yay0/96EF58.Yay0.o(.data);
    SPLAT_END_SEG(data_96EF58, 0x973128)
    
    SPLAT_BEGIN_SEG(data_973128, 0x973128, 0x973128, )
        Yay0_973128_Yay0 = .;
        BUILD_DIR/bin/Yay0/973128.Yay0.o(.data);
    SPLAT_END_SEG(data_973128, 0x973FB8)
    
    SPLAT_BEGIN_SEG(data_973FB8, 0x973FB8, 0x973FB8, )
        Yay0_973FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/973FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_973FB8, 0x9781D8)
    
    SPLAT_BEGIN_SEG(data_9781D8, 0x9781D8, 0x9781D8, )
        Yay0_9781D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9781D8.Yay0.o(.data);
    SPLAT_END_SEG(data_9781D8, 0x978500)
    
    SPLAT_BEGIN_SEG(data_978500, 0x978500, 0x978500, )
        Yay0_978500_Yay0 = .;
        BUILD_DIR/bin/Yay0/978500.Yay0.o(.data);
    SPLAT_END_SEG(data_978500, 0x979920)
    
    SPLAT_BEGIN_SEG(data_979920, 0x979920, 0x979920, )
        Yay0_979920_Yay0 = .;
        BUILD_DIR/bin/Yay0/979920.Yay0.o(.data);
    SPLAT_END_SEG(data_979920, 0x97E0E0)
    
    SPLAT_BEGIN_SEG(data_97E0E0, 0x97E0E0, 0x97E0E0, )
        Yay0_97E0E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/97E0E0.Yay0.o(.data);
    SPLAT_END_SEG(data_97E0E0, 0x97EF78)
    
    SPLAT_BEGIN_SEG(data_97EF78, 0x97EF78, 0x97EF78, )
        Yay0_97EF78_Yay0 = .;
        BUILD_DIR/bin/Yay0/97EF78.Yay0.o(.data);
    SPLAT_END_SEG(data_97EF78, 0x97F6C0)
    
    SPLAT_BEGIN_SEG(data_97F6C0, 0x97F6C0, 0x97F6C0, )
        Yay0_97F6C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/97F6C0.Yay0.o(.data);
    SPLAT_END_SEG(data_97F6C0, 0x980830)
    
    SPLAT_BEGIN_SEG(data_980830, 0x980830, 0x980830, )
        Yay0_980830_Yay0 = .;
        BUILD_DIR/bin/Yay0/980830.Yay0.o(.data);
    SPLAT_END_SEG(data_980830, 0x980AA8)
    
    SPLAT_BEGIN_SEG(data_980AA8, 0x980AA8, 0x980AA8, )
        Yay0_980AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/980AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_980AA8, 0x981438)
    
    SPLAT_BEGIN_SEG(data_981438, 0x981438, 0x981438, )
        Yay0_981438_Yay0 = .;
        BUILD_DIR/bin/Yay0/981438.Yay0.o(.data);
    SPLAT_END_SEG(data_981438, 0x9817B8)
    
    SPLAT_BEGIN_SEG(data_9817B8, 0x9817B8, 0x9817B8, )
        Yay0_9817B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9817B8.Yay0.o(.data);
    SPLAT_END_SEG(data_9817B8, 0x9845B8)
    
    SPLAT_BEGIN_SEG(data_9845B8, 0x9845B8, 0x9845B8, )
        Yay0_9845B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9845B8.Yay0.o(.data);
    SPLAT_END_SEG(data_9845B8, 0x984BB8)
    
    SPLAT_BEGIN_SEG(data_984BB8, 0x984BB8, 0x984BB8, )
        Yay0_984BB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/984BB8.Yay0.o(.data);
    SPLAT_END_SEG(data_984BB8, 0x987270)
    
    SPLAT_BEGIN_SEG(data_987270, 0x987270, 0x987270, )
        Yay0_987270_Yay0 = .;
        BUILD_DIR/bin/Yay0/987270.Yay0.o(.data);
    SPLAT_END_SEG(data_987270, 0x988108)
    
    SPLAT_BEGIN_SEG(data_988108, 0x988108, 0x988108, )
        Yay0_988108_Yay0 = .;
        BUILD_DIR/bin/Yay0/988108.Yay0.o(.data);
    SPLAT_END_SEG(data_988108, 0x989490)
    
    SPLAT_BEGIN_SEG(data_989490, 0x989490, 0x989490, )
        Yay0_989490_Yay0 = .;
        BUILD_DIR/bin/Yay0/989490.Yay0.o(.data);
    SPLAT_END_SEG(data_989490, 0x996D00)
    
    SPLAT_BEGIN_SEG(data_996D00, 0x996D00, 0x996D00, )
        Yay0_996D00_Yay0 = .;
        BUILD_DIR/bin/Yay0/996D00.Yay0.o(.data);
    SPLAT_END_SEG(data_996D00, 0x998D90)
    
    SPLAT_BEGIN_SEG(data_998D90, 0x998D90, 0x998D90, )
        Yay0_998D90_Yay0 = .;
        BUILD_DIR/bin/Yay0/998D90.Yay0.o(.data);
    SPLAT_END_SEG(data_998D90, 0x99A018)
    
    SPLAT_BEGIN_SEG(data_99A018, 0x99A018, 0x99A018, )
        Yay0_99A018_Yay0 = .;
        BUILD_DIR/bin/Yay0/99A018.Yay0.o(.data);
    SPLAT_END_SEG(data_99A018, 0x99AA30)
    
    SPLAT_BEGIN_SEG(data_99AA30, 0x99AA30, 0x99AA30, )
        Yay0_99AA30_Yay0 = .;
        BUILD_DIR/bin/Yay0/99AA30.Yay0.o(.data);
    SPLAT_END_SEG(data_99AA30, 0x99AF60)
    
    SPLAT_BEGIN_SEG(data_99AF60, 0x99AF60, 0x99AF60, )
        Yay0_99AF60_Yay0 = .;
        BUILD_DIR/bin/Yay0/99AF60.Yay0.o(.data);
    SPLAT_END_SEG(data_99AF60, 0x99B870)
    
    SPLAT_BEGIN_SEG(data_99B870, 0x99B870, 0x99B870, )
        Yay0_99B870_Yay0 = .;
        BUILD_DIR/bin/Yay0/99B870.Yay0.o(.data);
    SPLAT_END_SEG(data_99B870, 0x99C318)
    
    SPLAT_BEGIN_SEG(data_99C318, 0x99C318, 0x99C318, )
        Yay0_99C318_Yay0 = .;
        BUILD_DIR/bin/Yay0/99C318.Yay0.o(.data);
    SPLAT_END_SEG(data_99C318, 0x99C5F8)
    
    SPLAT_BEGIN_SEG(data_99C5F8, 0x99C5F8, 0x99C5F8, )
        Yay0_99C5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/99C5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_99C5F8, 0x99CBC0)
    
    SPLAT_BEGIN_SEG(data_99CBC0, 0x99CBC0, 0x99CBC0, )
        Yay0_99CBC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/99CBC0.Yay0.o(.data);
    SPLAT_END_SEG(data_99CBC0, 0x99CDF8)
    
    SPLAT_BEGIN_SEG(data_99CDF8, 0x99CDF8, 0x99CDF8, )
        Yay0_99CDF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/99CDF8.Yay0.o(.data);
    SPLAT_END_SEG(data_99CDF8, 0x99D208)
    
    SPLAT_BEGIN_SEG(data_99D208, 0x99D208, 0x99D208, )
        Yay0_99D208_Yay0 = .;
        BUILD_DIR/bin/Yay0/99D208.Yay0.o(.data);
    SPLAT_END_SEG(data_99D208, 0x99DB10)
    
    SPLAT_BEGIN_SEG(data_99DB10, 0x99DB10, 0x99DB10, )
        Yay0_99DB10_Yay0 = .;
        BUILD_DIR/bin/Yay0/99DB10.Yay0.o(.data);
    SPLAT_END_SEG(data_99DB10, 0x99E568)
    
    SPLAT_BEGIN_SEG(data_99E568, 0x99E568, 0x99E568, )
        Yay0_99E568_Yay0 = .;
        BUILD_DIR/bin/Yay0/99E568.Yay0.o(.data);
    SPLAT_END_SEG(data_99E568, 0x99EB10)
    
    SPLAT_BEGIN_SEG(data_99EB10, 0x99EB10, 0x99EB10, )
        Yay0_99EB10_Yay0 = .;
        BUILD_DIR/bin/Yay0/99EB10.Yay0.o(.data);
    SPLAT_END_SEG(data_99EB10, 0x99F260)
    
    SPLAT_BEGIN_SEG(data_99F260, 0x99F260, 0x99F260, )
        Yay0_99F260_Yay0 = .;
        BUILD_DIR/bin/Yay0/99F260.Yay0.o(.data);
    SPLAT_END_SEG(data_99F260, 0x99F8C8)
    
    SPLAT_BEGIN_SEG(data_99F8C8, 0x99F8C8, 0x99F8C8, )
        Yay0_99F8C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/99F8C8.Yay0.o(.data);
    SPLAT_END_SEG(data_99F8C8, 0x9A1588)
    
    SPLAT_BEGIN_SEG(data_9A1588, 0x9A1588, 0x9A1588, )
        Yay0_9A1588_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A1588.Yay0.o(.data);
    SPLAT_END_SEG(data_9A1588, 0x9A22C8)
    
    SPLAT_BEGIN_SEG(data_9A22C8, 0x9A22C8, 0x9A22C8, )
        Yay0_9A22C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A22C8.Yay0.o(.data);
    SPLAT_END_SEG(data_9A22C8, 0x9A2C98)
    
    SPLAT_BEGIN_SEG(data_9A2C98, 0x9A2C98, 0x9A2C98, )
        Yay0_9A2C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A2C98.Yay0.o(.data);
    SPLAT_END_SEG(data_9A2C98, 0x9A7210)
    
    SPLAT_BEGIN_SEG(data_9A7210, 0x9A7210, 0x9A7210, )
        Yay0_9A7210_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A7210.Yay0.o(.data);
    SPLAT_END_SEG(data_9A7210, 0x9A7440)
    
    SPLAT_BEGIN_SEG(data_9A7440, 0x9A7440, 0x9A7440, )
        Yay0_9A7440_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A7440.Yay0.o(.data);
    SPLAT_END_SEG(data_9A7440, 0x9A8168)
    
    SPLAT_BEGIN_SEG(data_9A8168, 0x9A8168, 0x9A8168, )
        Yay0_9A8168_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A8168.Yay0.o(.data);
    SPLAT_END_SEG(data_9A8168, 0x9A8998)
    
    SPLAT_BEGIN_SEG(data_9A8998, 0x9A8998, 0x9A8998, )
        Yay0_9A8998_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A8998.Yay0.o(.data);
    SPLAT_END_SEG(data_9A8998, 0x9A8BC8)
    
    SPLAT_BEGIN_SEG(data_9A8BC8, 0x9A8BC8, 0x9A8BC8, )
        Yay0_9A8BC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A8BC8.Yay0.o(.data);
    SPLAT_END_SEG(data_9A8BC8, 0x9A8DF0)
    
    SPLAT_BEGIN_SEG(data_9A8DF0, 0x9A8DF0, 0x9A8DF0, )
        Yay0_9A8DF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A8DF0.Yay0.o(.data);
    SPLAT_END_SEG(data_9A8DF0, 0x9A9250)
    
    SPLAT_BEGIN_SEG(data_9A9250, 0x9A9250, 0x9A9250, )
        Yay0_9A9250_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A9250.Yay0.o(.data);
    SPLAT_END_SEG(data_9A9250, 0x9A9860)
    
    SPLAT_BEGIN_SEG(data_9A9860, 0x9A9860, 0x9A9860, )
        Yay0_9A9860_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A9860.Yay0.o(.data);
    SPLAT_END_SEG(data_9A9860, 0x9A9E60)
    
    SPLAT_BEGIN_SEG(data_9A9E60, 0x9A9E60, 0x9A9E60, )
        Yay0_9A9E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/9A9E60.Yay0.o(.data);
    SPLAT_END_SEG(data_9A9E60, 0x9AA248)
    
    SPLAT_BEGIN_SEG(data_9AA248, 0x9AA248, 0x9AA248, )
        Yay0_9AA248_Yay0 = .;
        BUILD_DIR/bin/Yay0/9AA248.Yay0.o(.data);
    SPLAT_END_SEG(data_9AA248, 0x9AB0E8)
    
    SPLAT_BEGIN_SEG(data_9AB0E8, 0x9AB0E8, 0x9AB0E8, )
        Yay0_9AB0E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9AB0E8.Yay0.o(.data);
    SPLAT_END_SEG(data_9AB0E8, 0x9ABC28)
    
    SPLAT_BEGIN_SEG(data_9ABC28, 0x9ABC28, 0x9ABC28, )
        Yay0_9ABC28_Yay0 = .;
        BUILD_DIR/bin/Yay0/9ABC28.Yay0.o(.data);
    SPLAT_END_SEG(data_9ABC28, 0x9ABF80)
    
    SPLAT_BEGIN_SEG(data_9ABF80, 0x9ABF80, 0x9ABF80, )
        Yay0_9ABF80_Yay0 = .;
        BUILD_DIR/bin/Yay0/9ABF80.Yay0.o(.data);
    SPLAT_END_SEG(data_9ABF80, 0x9B1378)
    
    SPLAT_BEGIN_SEG(data_9B1378, 0x9B1378, 0x9B1378, )
        Yay0_9B1378_Yay0 = .;
        BUILD_DIR/bin/Yay0/9B1378.Yay0.o(.data);
    SPLAT_END_SEG(data_9B1378, 0x9B6848)
    
    SPLAT_BEGIN_SEG(data_9B6848, 0x9B6848, 0x9B6848, )
        Yay0_9B6848_Yay0 = .;
        BUILD_DIR/bin/Yay0/9B6848.Yay0.o(.data);
    SPLAT_END_SEG(data_9B6848, 0x9B7CB8)
    
    SPLAT_BEGIN_SEG(data_9B7CB8, 0x9B7CB8, 0x9B7CB8, )
        Yay0_9B7CB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9B7CB8.Yay0.o(.data);
    SPLAT_END_SEG(data_9B7CB8, 0x9B8398)
    
    SPLAT_BEGIN_SEG(data_9B8398, 0x9B8398, 0x9B8398, )
        Yay0_9B8398_Yay0 = .;
        BUILD_DIR/bin/Yay0/9B8398.Yay0.o(.data);
    SPLAT_END_SEG(data_9B8398, 0x9BC8C8)
    
    SPLAT_BEGIN_SEG(data_9BC8C8, 0x9BC8C8, 0x9BC8C8, )
        Yay0_9BC8C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9BC8C8.Yay0.o(.data);
    SPLAT_END_SEG(data_9BC8C8, 0x9BD248)
    
    SPLAT_BEGIN_SEG(data_9BD248, 0x9BD248, 0x9BD248, )
        Yay0_9BD248_Yay0 = .;
        BUILD_DIR/bin/Yay0/9BD248.Yay0.o(.data);
    SPLAT_END_SEG(data_9BD248, 0x9BE490)
    
    SPLAT_BEGIN_SEG(data_9BE490, 0x9BE490, 0x9BE490, )
        Yay0_9BE490_Yay0 = .;
        BUILD_DIR/bin/Yay0/9BE490.Yay0.o(.data);
    SPLAT_END_SEG(data_9BE490, 0x9C20B0)
    
    SPLAT_BEGIN_SEG(data_9C20B0, 0x9C20B0, 0x9C20B0, )
        Yay0_9C20B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9C20B0.Yay0.o(.data);
    SPLAT_END_SEG(data_9C20B0, 0x9CA678)
    
    SPLAT_BEGIN_SEG(data_9CA678, 0x9CA678, 0x9CA678, )
        Yay0_9CA678_Yay0 = .;
        BUILD_DIR/bin/Yay0/9CA678.Yay0.o(.data);
    SPLAT_END_SEG(data_9CA678, 0x9CC7C0)
    
    SPLAT_BEGIN_SEG(data_9CC7C0, 0x9CC7C0, 0x9CC7C0, )
        Yay0_9CC7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9CC7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_9CC7C0, 0x9D3150)
    
    SPLAT_BEGIN_SEG(data_9D3150, 0x9D3150, 0x9D3150, )
        Yay0_9D3150_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D3150.Yay0.o(.data);
    SPLAT_END_SEG(data_9D3150, 0x9D3B50)
    
    SPLAT_BEGIN_SEG(data_9D3B50, 0x9D3B50, 0x9D3B50, )
        Yay0_9D3B50_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D3B50.Yay0.o(.data);
    SPLAT_END_SEG(data_9D3B50, 0x9D4330)
    
    SPLAT_BEGIN_SEG(data_9D4330, 0x9D4330, 0x9D4330, )
        Yay0_9D4330_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D4330.Yay0.o(.data);
    SPLAT_END_SEG(data_9D4330, 0x9D51C8)
    
    SPLAT_BEGIN_SEG(data_9D51C8, 0x9D51C8, 0x9D51C8, )
        Yay0_9D51C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D51C8.Yay0.o(.data);
    SPLAT_END_SEG(data_9D51C8, 0x9D59C0)
    
    SPLAT_BEGIN_SEG(data_9D59C0, 0x9D59C0, 0x9D59C0, )
        Yay0_9D59C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D59C0.Yay0.o(.data);
    SPLAT_END_SEG(data_9D59C0, 0x9D93B8)
    
    SPLAT_BEGIN_SEG(data_9D93B8, 0x9D93B8, 0x9D93B8, )
        Yay0_9D93B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D93B8.Yay0.o(.data);
    SPLAT_END_SEG(data_9D93B8, 0x9D96C8)
    
    SPLAT_BEGIN_SEG(data_9D96C8, 0x9D96C8, 0x9D96C8, )
        Yay0_9D96C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D96C8.Yay0.o(.data);
    SPLAT_END_SEG(data_9D96C8, 0x9D99B0)
    
    SPLAT_BEGIN_SEG(data_9D99B0, 0x9D99B0, 0x9D99B0, )
        Yay0_9D99B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9D99B0.Yay0.o(.data);
    SPLAT_END_SEG(data_9D99B0, 0x9DA090)
    
    SPLAT_BEGIN_SEG(data_9DA090, 0x9DA090, 0x9DA090, )
        Yay0_9DA090_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DA090.Yay0.o(.data);
    SPLAT_END_SEG(data_9DA090, 0x9DAE98)
    
    SPLAT_BEGIN_SEG(data_9DAE98, 0x9DAE98, 0x9DAE98, )
        Yay0_9DAE98_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DAE98.Yay0.o(.data);
    SPLAT_END_SEG(data_9DAE98, 0x9DC618)
    
    SPLAT_BEGIN_SEG(data_9DC618, 0x9DC618, 0x9DC618, )
        Yay0_9DC618_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DC618.Yay0.o(.data);
    SPLAT_END_SEG(data_9DC618, 0x9DC928)
    
    SPLAT_BEGIN_SEG(data_9DC928, 0x9DC928, 0x9DC928, )
        Yay0_9DC928_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DC928.Yay0.o(.data);
    SPLAT_END_SEG(data_9DC928, 0x9DE240)
    
    SPLAT_BEGIN_SEG(data_9DE240, 0x9DE240, 0x9DE240, )
        Yay0_9DE240_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DE240.Yay0.o(.data);
    SPLAT_END_SEG(data_9DE240, 0x9DE940)
    
    SPLAT_BEGIN_SEG(data_9DE940, 0x9DE940, 0x9DE940, )
        Yay0_9DE940_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DE940.Yay0.o(.data);
    SPLAT_END_SEG(data_9DE940, 0x9DEB40)
    
    SPLAT_BEGIN_SEG(data_9DEB40, 0x9DEB40, 0x9DEB40, )
        Yay0_9DEB40_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DEB40.Yay0.o(.data);
    SPLAT_END_SEG(data_9DEB40, 0x9DED38)
    
    SPLAT_BEGIN_SEG(data_9DED38, 0x9DED38, 0x9DED38, )
        Yay0_9DED38_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DED38.Yay0.o(.data);
    SPLAT_END_SEG(data_9DED38, 0x9DF5D8)
    
    SPLAT_BEGIN_SEG(data_9DF5D8, 0x9DF5D8, 0x9DF5D8, )
        Yay0_9DF5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/9DF5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_9DF5D8, 0x9E00F0)
    
    SPLAT_BEGIN_SEG(data_9E00F0, 0x9E00F0, 0x9E00F0, )
        Yay0_9E00F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9E00F0.Yay0.o(.data);
    SPLAT_END_SEG(data_9E00F0, 0x9E6258)
    
    SPLAT_BEGIN_SEG(data_9E6258, 0x9E6258, 0x9E6258, )
        Yay0_9E6258_Yay0 = .;
        BUILD_DIR/bin/Yay0/9E6258.Yay0.o(.data);
    SPLAT_END_SEG(data_9E6258, 0x9E69C0)
    
    SPLAT_BEGIN_SEG(data_9E69C0, 0x9E69C0, 0x9E69C0, )
        Yay0_9E69C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/9E69C0.Yay0.o(.data);
    SPLAT_END_SEG(data_9E69C0, 0x9E7540)
    
    SPLAT_BEGIN_SEG(data_9E7540, 0x9E7540, 0x9E7540, )
        Yay0_9E7540_Yay0 = .;
        BUILD_DIR/bin/Yay0/9E7540.Yay0.o(.data);
    SPLAT_END_SEG(data_9E7540, 0x9E7B08)
    
    SPLAT_BEGIN_SEG(data_9E7B08, 0x9E7B08, 0x9E7B08, )
        Yay0_9E7B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/9E7B08.Yay0.o(.data);
    SPLAT_END_SEG(data_9E7B08, 0x9E8918)
    
    SPLAT_BEGIN_SEG(data_9E8918, 0x9E8918, 0x9E8918, )
        Yay0_9E8918_Yay0 = .;
        BUILD_DIR/bin/Yay0/9E8918.Yay0.o(.data);
    SPLAT_END_SEG(data_9E8918, 0x9F2570)
    
    SPLAT_BEGIN_SEG(data_9F2570, 0x9F2570, 0x9F2570, )
        Yay0_9F2570_Yay0 = .;
        BUILD_DIR/bin/Yay0/9F2570.Yay0.o(.data);
    SPLAT_END_SEG(data_9F2570, 0x9F7E18)
    
    SPLAT_BEGIN_SEG(data_9F7E18, 0x9F7E18, 0x9F7E18, )
        Yay0_9F7E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/9F7E18.Yay0.o(.data);
    SPLAT_END_SEG(data_9F7E18, 0x9F9700)
    
    SPLAT_BEGIN_SEG(data_9F9700, 0x9F9700, 0x9F9700, )
        Yay0_9F9700_Yay0 = .;
        BUILD_DIR/bin/Yay0/9F9700.Yay0.o(.data);
    SPLAT_END_SEG(data_9F9700, 0x9FA498)
    
    SPLAT_BEGIN_SEG(data_9FA498, 0x9FA498, 0x9FA498, )
        Yay0_9FA498_Yay0 = .;
        BUILD_DIR/bin/Yay0/9FA498.Yay0.o(.data);
    SPLAT_END_SEG(data_9FA498, 0x9FB320)
    
    SPLAT_BEGIN_SEG(data_9FB320, 0x9FB320, 0x9FB320, )
        Yay0_9FB320_Yay0 = .;
        BUILD_DIR/bin/Yay0/9FB320.Yay0.o(.data);
    SPLAT_END_SEG(data_9FB320, 0x9FCC58)
    
    SPLAT_BEGIN_SEG(data_9FCC58, 0x9FCC58, 0x9FCC58, )
        Yay0_9FCC58_Yay0 = .;
        BUILD_DIR/bin/Yay0/9FCC58.Yay0.o(.data);
    SPLAT_END_SEG(data_9FCC58, 0xA0E868)
    
    SPLAT_BEGIN_SEG(data_A0E868, 0xA0E868, 0xA0E868, )
        Yay0_A0E868_Yay0 = .;
        BUILD_DIR/bin/Yay0/A0E868.Yay0.o(.data);
    SPLAT_END_SEG(data_A0E868, 0xA11048)
    
    SPLAT_BEGIN_SEG(data_A11048, 0xA11048, 0xA11048, )
        Yay0_A11048_Yay0 = .;
        BUILD_DIR/bin/Yay0/A11048.Yay0.o(.data);
    SPLAT_END_SEG(data_A11048, 0xA11248)
    
    SPLAT_BEGIN_SEG(data_A11248, 0xA11248, 0xA11248, )
        Yay0_A11248_Yay0 = .;
        BUILD_DIR/bin/Yay0/A11248.Yay0.o(.data);
    SPLAT_END_SEG(data_A11248, 0xA11D68)
    
    SPLAT_BEGIN_SEG(data_A11D68, 0xA11D68, 0xA11D68, )
        Yay0_A11D68_Yay0 = .;
        BUILD_DIR/bin/Yay0/A11D68.Yay0.o(.data);
    SPLAT_END_SEG(data_A11D68, 0xA122E8)
    
    SPLAT_BEGIN_SEG(data_A122E8, 0xA122E8, 0xA122E8, )
        Yay0_A122E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A122E8.Yay0.o(.data);
    SPLAT_END_SEG(data_A122E8, 0xA12CA8)
    
    SPLAT_BEGIN_SEG(data_A12CA8, 0xA12CA8, 0xA12CA8, )
        Yay0_A12CA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A12CA8.Yay0.o(.data);
    SPLAT_END_SEG(data_A12CA8, 0xA13750)
    
    SPLAT_BEGIN_SEG(data_A13750, 0xA13750, 0xA13750, )
        Yay0_A13750_Yay0 = .;
        BUILD_DIR/bin/Yay0/A13750.Yay0.o(.data);
    SPLAT_END_SEG(data_A13750, 0xA15C80)
    
    SPLAT_BEGIN_SEG(data_A15C80, 0xA15C80, 0xA15C80, )
        Yay0_A15C80_Yay0 = .;
        BUILD_DIR/bin/Yay0/A15C80.Yay0.o(.data);
    SPLAT_END_SEG(data_A15C80, 0xA180C8)
    
    SPLAT_BEGIN_SEG(data_A180C8, 0xA180C8, 0xA180C8, )
        Yay0_A180C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A180C8.Yay0.o(.data);
    SPLAT_END_SEG(data_A180C8, 0xA18398)
    
    SPLAT_BEGIN_SEG(data_A18398, 0xA18398, 0xA18398, )
        Yay0_A18398_Yay0 = .;
        BUILD_DIR/bin/Yay0/A18398.Yay0.o(.data);
    SPLAT_END_SEG(data_A18398, 0xA188A0)
    
    SPLAT_BEGIN_SEG(data_A188A0, 0xA188A0, 0xA188A0, )
        Yay0_A188A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A188A0.Yay0.o(.data);
    SPLAT_END_SEG(data_A188A0, 0xA19F08)
    
    SPLAT_BEGIN_SEG(data_A19F08, 0xA19F08, 0xA19F08, )
        Yay0_A19F08_Yay0 = .;
        BUILD_DIR/bin/Yay0/A19F08.Yay0.o(.data);
    SPLAT_END_SEG(data_A19F08, 0xA1C4A0)
    
    SPLAT_BEGIN_SEG(data_A1C4A0, 0xA1C4A0, 0xA1C4A0, )
        Yay0_A1C4A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A1C4A0.Yay0.o(.data);
    SPLAT_END_SEG(data_A1C4A0, 0xA1E2C8)
    
    SPLAT_BEGIN_SEG(data_A1E2C8, 0xA1E2C8, 0xA1E2C8, )
        Yay0_A1E2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A1E2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_A1E2C8, 0xA1E920)
    
    SPLAT_BEGIN_SEG(data_A1E920, 0xA1E920, 0xA1E920, )
        Yay0_A1E920_Yay0 = .;
        BUILD_DIR/bin/Yay0/A1E920.Yay0.o(.data);
    SPLAT_END_SEG(data_A1E920, 0xA203C8)
    
    SPLAT_BEGIN_SEG(data_A203C8, 0xA203C8, 0xA203C8, )
        Yay0_A203C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A203C8.Yay0.o(.data);
    SPLAT_END_SEG(data_A203C8, 0xA24B98)
    
    SPLAT_BEGIN_SEG(data_A24B98, 0xA24B98, 0xA24B98, )
        Yay0_A24B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/A24B98.Yay0.o(.data);
    SPLAT_END_SEG(data_A24B98, 0xA278A8)
    
    SPLAT_BEGIN_SEG(data_A278A8, 0xA278A8, 0xA278A8, )
        Yay0_A278A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A278A8.Yay0.o(.data);
    SPLAT_END_SEG(data_A278A8, 0xA2B250)
    
    SPLAT_BEGIN_SEG(data_A2B250, 0xA2B250, 0xA2B250, )
        Yay0_A2B250_Yay0 = .;
        BUILD_DIR/bin/Yay0/A2B250.Yay0.o(.data);
    SPLAT_END_SEG(data_A2B250, 0xA2CCA8)
    
    SPLAT_BEGIN_SEG(data_A2CCA8, 0xA2CCA8, 0xA2CCA8, )
        Yay0_A2CCA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A2CCA8.Yay0.o(.data);
    SPLAT_END_SEG(data_A2CCA8, 0xA2D790)
    
    SPLAT_BEGIN_SEG(data_A2D790, 0xA2D790, 0xA2D790, )
        Yay0_A2D790_Yay0 = .;
        BUILD_DIR/bin/Yay0/A2D790.Yay0.o(.data);
    SPLAT_END_SEG(data_A2D790, 0xA2E8D0)
    
    SPLAT_BEGIN_SEG(data_A2E8D0, 0xA2E8D0, 0xA2E8D0, )
        Yay0_A2E8D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A2E8D0.Yay0.o(.data);
    SPLAT_END_SEG(data_A2E8D0, 0xA2F448)
    
    SPLAT_BEGIN_SEG(data_A2F448, 0xA2F448, 0xA2F448, )
        Yay0_A2F448_Yay0 = .;
        BUILD_DIR/bin/Yay0/A2F448.Yay0.o(.data);
    SPLAT_END_SEG(data_A2F448, 0xA2FA68)
    
    SPLAT_BEGIN_SEG(data_A2FA68, 0xA2FA68, 0xA2FA68, )
        Yay0_A2FA68_Yay0 = .;
        BUILD_DIR/bin/Yay0/A2FA68.Yay0.o(.data);
    SPLAT_END_SEG(data_A2FA68, 0xA309A8)
    
    SPLAT_BEGIN_SEG(data_A309A8, 0xA309A8, 0xA309A8, )
        Yay0_A309A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A309A8.Yay0.o(.data);
    SPLAT_END_SEG(data_A309A8, 0xA31810)
    
    SPLAT_BEGIN_SEG(data_A31810, 0xA31810, 0xA31810, )
        Yay0_A31810_Yay0 = .;
        BUILD_DIR/bin/Yay0/A31810.Yay0.o(.data);
    SPLAT_END_SEG(data_A31810, 0xA328D8)
    
    SPLAT_BEGIN_SEG(data_A328D8, 0xA328D8, 0xA328D8, )
        Yay0_A328D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A328D8.Yay0.o(.data);
    SPLAT_END_SEG(data_A328D8, 0xA33A10)
    
    SPLAT_BEGIN_SEG(data_A33A10, 0xA33A10, 0xA33A10, )
        Yay0_A33A10_Yay0 = .;
        BUILD_DIR/bin/Yay0/A33A10.Yay0.o(.data);
    SPLAT_END_SEG(data_A33A10, 0xA3A668)
    
    SPLAT_BEGIN_SEG(data_A3A668, 0xA3A668, 0xA3A668, )
        Yay0_A3A668_Yay0 = .;
        BUILD_DIR/bin/Yay0/A3A668.Yay0.o(.data);
    SPLAT_END_SEG(data_A3A668, 0xA3B038)
    
    SPLAT_BEGIN_SEG(data_A3B038, 0xA3B038, 0xA3B038, )
        Yay0_A3B038_Yay0 = .;
        BUILD_DIR/bin/Yay0/A3B038.Yay0.o(.data);
    SPLAT_END_SEG(data_A3B038, 0xA3CF90)
    
    SPLAT_BEGIN_SEG(data_A3CF90, 0xA3CF90, 0xA3CF90, )
        Yay0_A3CF90_Yay0 = .;
        BUILD_DIR/bin/Yay0/A3CF90.Yay0.o(.data);
    SPLAT_END_SEG(data_A3CF90, 0xA3D580)
    
    SPLAT_BEGIN_SEG(data_A3D580, 0xA3D580, 0xA3D580, )
        Yay0_A3D580_Yay0 = .;
        BUILD_DIR/bin/Yay0/A3D580.Yay0.o(.data);
    SPLAT_END_SEG(data_A3D580, 0xA404D0)
    
    SPLAT_BEGIN_SEG(data_A404D0, 0xA404D0, 0xA404D0, )
        Yay0_A404D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A404D0.Yay0.o(.data);
    SPLAT_END_SEG(data_A404D0, 0xA498F8)
    
    SPLAT_BEGIN_SEG(data_A498F8, 0xA498F8, 0xA498F8, )
        Yay0_A498F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A498F8.Yay0.o(.data);
    SPLAT_END_SEG(data_A498F8, 0xA49C08)
    
    SPLAT_BEGIN_SEG(data_A49C08, 0xA49C08, 0xA49C08, )
        Yay0_A49C08_Yay0 = .;
        BUILD_DIR/bin/Yay0/A49C08.Yay0.o(.data);
    SPLAT_END_SEG(data_A49C08, 0xA4A840)
    
    SPLAT_BEGIN_SEG(data_A4A840, 0xA4A840, 0xA4A840, )
        Yay0_A4A840_Yay0 = .;
        BUILD_DIR/bin/Yay0/A4A840.Yay0.o(.data);
    SPLAT_END_SEG(data_A4A840, 0xA4AA70)
    
    SPLAT_BEGIN_SEG(data_A4AA70, 0xA4AA70, 0xA4AA70, )
        Yay0_A4AA70_Yay0 = .;
        BUILD_DIR/bin/Yay0/A4AA70.Yay0.o(.data);
    SPLAT_END_SEG(data_A4AA70, 0xA4AC98)
    
    SPLAT_BEGIN_SEG(data_A4AC98, 0xA4AC98, 0xA4AC98, )
        Yay0_A4AC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/A4AC98.Yay0.o(.data);
    SPLAT_END_SEG(data_A4AC98, 0xA50C00)
    
    SPLAT_BEGIN_SEG(data_A50C00, 0xA50C00, 0xA50C00, )
        Yay0_A50C00_Yay0 = .;
        BUILD_DIR/bin/Yay0/A50C00.Yay0.o(.data);
    SPLAT_END_SEG(data_A50C00, 0xA570A0)
    
    SPLAT_BEGIN_SEG(data_A570A0, 0xA570A0, 0xA570A0, )
        Yay0_A570A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A570A0.Yay0.o(.data);
    SPLAT_END_SEG(data_A570A0, 0xA5ACB8)
    
    SPLAT_BEGIN_SEG(data_A5ACB8, 0xA5ACB8, 0xA5ACB8, )
        Yay0_A5ACB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5ACB8.Yay0.o(.data);
    SPLAT_END_SEG(data_A5ACB8, 0xA5B278)
    
    SPLAT_BEGIN_SEG(data_A5B278, 0xA5B278, 0xA5B278, )
        Yay0_A5B278_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5B278.Yay0.o(.data);
    SPLAT_END_SEG(data_A5B278, 0xA5B548)
    
    SPLAT_BEGIN_SEG(data_A5B548, 0xA5B548, 0xA5B548, )
        Yay0_A5B548_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5B548.Yay0.o(.data);
    SPLAT_END_SEG(data_A5B548, 0xA5BAC8)
    
    SPLAT_BEGIN_SEG(data_A5BAC8, 0xA5BAC8, 0xA5BAC8, )
        Yay0_A5BAC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5BAC8.Yay0.o(.data);
    SPLAT_END_SEG(data_A5BAC8, 0xA5C128)
    
    SPLAT_BEGIN_SEG(data_A5C128, 0xA5C128, 0xA5C128, )
        Yay0_A5C128_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5C128.Yay0.o(.data);
    SPLAT_END_SEG(data_A5C128, 0xA5C358)
    
    SPLAT_BEGIN_SEG(data_A5C358, 0xA5C358, 0xA5C358, )
        Yay0_A5C358_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5C358.Yay0.o(.data);
    SPLAT_END_SEG(data_A5C358, 0xA5D078)
    
    SPLAT_BEGIN_SEG(data_A5D078, 0xA5D078, 0xA5D078, )
        Yay0_A5D078_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5D078.Yay0.o(.data);
    SPLAT_END_SEG(data_A5D078, 0xA5D8B0)
    
    SPLAT_BEGIN_SEG(data_A5D8B0, 0xA5D8B0, 0xA5D8B0, )
        Yay0_A5D8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5D8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_A5D8B0, 0xA5DAE0)
    
    SPLAT_BEGIN_SEG(data_A5DAE0, 0xA5DAE0, 0xA5DAE0, )
        Yay0_A5DAE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5DAE0.Yay0.o(.data);
    SPLAT_END_SEG(data_A5DAE0, 0xA5DD08)
    
    SPLAT_BEGIN_SEG(data_A5DD08, 0xA5DD08, 0xA5DD08, )
        Yay0_A5DD08_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5DD08.Yay0.o(.data);
    SPLAT_END_SEG(data_A5DD08, 0xA5E188)
    
    SPLAT_BEGIN_SEG(data_A5E188, 0xA5E188, 0xA5E188, )
        Yay0_A5E188_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5E188.Yay0.o(.data);
    SPLAT_END_SEG(data_A5E188, 0xA5FBC0)
    
    SPLAT_BEGIN_SEG(data_A5FBC0, 0xA5FBC0, 0xA5FBC0, )
        Yay0_A5FBC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A5FBC0.Yay0.o(.data);
    SPLAT_END_SEG(data_A5FBC0, 0xA60398)
    
    SPLAT_BEGIN_SEG(data_A60398, 0xA60398, 0xA60398, )
        Yay0_A60398_Yay0 = .;
        BUILD_DIR/bin/Yay0/A60398.Yay0.o(.data);
    SPLAT_END_SEG(data_A60398, 0xA60970)
    
    SPLAT_BEGIN_SEG(data_A60970, 0xA60970, 0xA60970, )
        Yay0_A60970_Yay0 = .;
        BUILD_DIR/bin/Yay0/A60970.Yay0.o(.data);
    SPLAT_END_SEG(data_A60970, 0xA60C38)
    
    SPLAT_BEGIN_SEG(data_A60C38, 0xA60C38, 0xA60C38, )
        Yay0_A60C38_Yay0 = .;
        BUILD_DIR/bin/Yay0/A60C38.Yay0.o(.data);
    SPLAT_END_SEG(data_A60C38, 0xA61340)
    
    SPLAT_BEGIN_SEG(data_A61340, 0xA61340, 0xA61340, )
        Yay0_A61340_Yay0 = .;
        BUILD_DIR/bin/Yay0/A61340.Yay0.o(.data);
    SPLAT_END_SEG(data_A61340, 0xA61548)
    
    SPLAT_BEGIN_SEG(data_A61548, 0xA61548, 0xA61548, )
        Yay0_A61548_Yay0 = .;
        BUILD_DIR/bin/Yay0/A61548.Yay0.o(.data);
    SPLAT_END_SEG(data_A61548, 0xA68980)
    
    SPLAT_BEGIN_SEG(data_A68980, 0xA68980, 0xA68980, )
        Yay0_A68980_Yay0 = .;
        BUILD_DIR/bin/Yay0/A68980.Yay0.o(.data);
    SPLAT_END_SEG(data_A68980, 0xA6A990)
    
    SPLAT_BEGIN_SEG(data_A6A990, 0xA6A990, 0xA6A990, )
        Yay0_A6A990_Yay0 = .;
        BUILD_DIR/bin/Yay0/A6A990.Yay0.o(.data);
    SPLAT_END_SEG(data_A6A990, 0xA6CDD0)
    
    SPLAT_BEGIN_SEG(data_A6CDD0, 0xA6CDD0, 0xA6CDD0, )
        Yay0_A6CDD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A6CDD0.Yay0.o(.data);
    SPLAT_END_SEG(data_A6CDD0, 0xA6E808)
    
    SPLAT_BEGIN_SEG(data_A6E808, 0xA6E808, 0xA6E808, )
        Yay0_A6E808_Yay0 = .;
        BUILD_DIR/bin/Yay0/A6E808.Yay0.o(.data);
    SPLAT_END_SEG(data_A6E808, 0xA70A98)
    
    SPLAT_BEGIN_SEG(data_A70A98, 0xA70A98, 0xA70A98, )
        Yay0_A70A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/A70A98.Yay0.o(.data);
    SPLAT_END_SEG(data_A70A98, 0xA722E8)
    
    SPLAT_BEGIN_SEG(data_A722E8, 0xA722E8, 0xA722E8, )
        Yay0_A722E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A722E8.Yay0.o(.data);
    SPLAT_END_SEG(data_A722E8, 0xA72550)
    
    SPLAT_BEGIN_SEG(data_A72550, 0xA72550, 0xA72550, )
        Yay0_A72550_Yay0 = .;
        BUILD_DIR/bin/Yay0/A72550.Yay0.o(.data);
    SPLAT_END_SEG(data_A72550, 0xA737B0)
    
    SPLAT_BEGIN_SEG(data_A737B0, 0xA737B0, 0xA737B0, )
        Yay0_A737B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A737B0.Yay0.o(.data);
    SPLAT_END_SEG(data_A737B0, 0xA739F0)
    
    SPLAT_BEGIN_SEG(data_A739F0, 0xA739F0, 0xA739F0, )
        Yay0_A739F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A739F0.Yay0.o(.data);
    SPLAT_END_SEG(data_A739F0, 0xA747F0)
    
    SPLAT_BEGIN_SEG(data_A747F0, 0xA747F0, 0xA747F0, )
        Yay0_A747F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A747F0.Yay0.o(.data);
    SPLAT_END_SEG(data_A747F0, 0xA785D0)
    
    SPLAT_BEGIN_SEG(data_A785D0, 0xA785D0, 0xA785D0, )
        Yay0_A785D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A785D0.Yay0.o(.data);
    SPLAT_END_SEG(data_A785D0, 0xA78DE8)
    
    SPLAT_BEGIN_SEG(data_A78DE8, 0xA78DE8, 0xA78DE8, )
        Yay0_A78DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A78DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_A78DE8, 0xA79C70)
    
    SPLAT_BEGIN_SEG(data_A79C70, 0xA79C70, 0xA79C70, )
        Yay0_A79C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/A79C70.Yay0.o(.data);
    SPLAT_END_SEG(data_A79C70, 0xA7A6B8)
    
    SPLAT_BEGIN_SEG(data_A7A6B8, 0xA7A6B8, 0xA7A6B8, )
        Yay0_A7A6B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A7A6B8.Yay0.o(.data);
    SPLAT_END_SEG(data_A7A6B8, 0xA7B9E0)
    
    SPLAT_BEGIN_SEG(data_A7B9E0, 0xA7B9E0, 0xA7B9E0, )
        Yay0_A7B9E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A7B9E0.Yay0.o(.data);
    SPLAT_END_SEG(data_A7B9E0, 0xA7E428)
    
    SPLAT_BEGIN_SEG(data_A7E428, 0xA7E428, 0xA7E428, )
        Yay0_A7E428_Yay0 = .;
        BUILD_DIR/bin/Yay0/A7E428.Yay0.o(.data);
    SPLAT_END_SEG(data_A7E428, 0xA7F378)
    
    SPLAT_BEGIN_SEG(data_A7F378, 0xA7F378, 0xA7F378, )
        Yay0_A7F378_Yay0 = .;
        BUILD_DIR/bin/Yay0/A7F378.Yay0.o(.data);
    SPLAT_END_SEG(data_A7F378, 0xA7FF68)
    
    SPLAT_BEGIN_SEG(data_A7FF68, 0xA7FF68, 0xA7FF68, )
        Yay0_A7FF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/A7FF68.Yay0.o(.data);
    SPLAT_END_SEG(data_A7FF68, 0xA80EC0)
    
    SPLAT_BEGIN_SEG(data_A80EC0, 0xA80EC0, 0xA80EC0, )
        Yay0_A80EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A80EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_A80EC0, 0xA81C70)
    
    SPLAT_BEGIN_SEG(data_A81C70, 0xA81C70, 0xA81C70, )
        Yay0_A81C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/A81C70.Yay0.o(.data);
    SPLAT_END_SEG(data_A81C70, 0xA83920)
    
    SPLAT_BEGIN_SEG(data_A83920, 0xA83920, 0xA83920, )
        Yay0_A83920_Yay0 = .;
        BUILD_DIR/bin/Yay0/A83920.Yay0.o(.data);
    SPLAT_END_SEG(data_A83920, 0xA84590)
    
    SPLAT_BEGIN_SEG(data_A84590, 0xA84590, 0xA84590, )
        Yay0_A84590_Yay0 = .;
        BUILD_DIR/bin/Yay0/A84590.Yay0.o(.data);
    SPLAT_END_SEG(data_A84590, 0xA86B38)
    
    SPLAT_BEGIN_SEG(data_A86B38, 0xA86B38, 0xA86B38, )
        Yay0_A86B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/A86B38.Yay0.o(.data);
    SPLAT_END_SEG(data_A86B38, 0xA898D0)
    
    SPLAT_BEGIN_SEG(data_A898D0, 0xA898D0, 0xA898D0, )
        Yay0_A898D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/A898D0.Yay0.o(.data);
    SPLAT_END_SEG(data_A898D0, 0xA8C638)
    
    SPLAT_BEGIN_SEG(data_A8C638, 0xA8C638, 0xA8C638, )
        Yay0_A8C638_Yay0 = .;
        BUILD_DIR/bin/Yay0/A8C638.Yay0.o(.data);
    SPLAT_END_SEG(data_A8C638, 0xA8E3A8)
    
    SPLAT_BEGIN_SEG(data_A8E3A8, 0xA8E3A8, 0xA8E3A8, )
        Yay0_A8E3A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A8E3A8.Yay0.o(.data);
    SPLAT_END_SEG(data_A8E3A8, 0xA91750)
    
    SPLAT_BEGIN_SEG(data_A91750, 0xA91750, 0xA91750, )
        Yay0_A91750_Yay0 = .;
        BUILD_DIR/bin/Yay0/A91750.Yay0.o(.data);
    SPLAT_END_SEG(data_A91750, 0xA92110)
    
    SPLAT_BEGIN_SEG(data_A92110, 0xA92110, 0xA92110, )
        Yay0_A92110_Yay0 = .;
        BUILD_DIR/bin/Yay0/A92110.Yay0.o(.data);
    SPLAT_END_SEG(data_A92110, 0xA944E8)
    
    SPLAT_BEGIN_SEG(data_A944E8, 0xA944E8, 0xA944E8, )
        Yay0_A944E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/A944E8.Yay0.o(.data);
    SPLAT_END_SEG(data_A944E8, 0xA94B80)
    
    SPLAT_BEGIN_SEG(data_A94B80, 0xA94B80, 0xA94B80, )
        Yay0_A94B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/A94B80.Yay0.o(.data);
    SPLAT_END_SEG(data_A94B80, 0xA97528)
    
    SPLAT_BEGIN_SEG(data_A97528, 0xA97528, 0xA97528, )
        Yay0_A97528_Yay0 = .;
        BUILD_DIR/bin/Yay0/A97528.Yay0.o(.data);
    SPLAT_END_SEG(data_A97528, 0xA99408)
    
    SPLAT_BEGIN_SEG(data_A99408, 0xA99408, 0xA99408, )
        Yay0_A99408_Yay0 = .;
        BUILD_DIR/bin/Yay0/A99408.Yay0.o(.data);
    SPLAT_END_SEG(data_A99408, 0xA9E298)
    
    SPLAT_BEGIN_SEG(data_A9E298, 0xA9E298, 0xA9E298, )
        Yay0_A9E298_Yay0 = .;
        BUILD_DIR/bin/Yay0/A9E298.Yay0.o(.data);
    SPLAT_END_SEG(data_A9E298, 0xAA2240)
    
    SPLAT_BEGIN_SEG(data_AA2240, 0xAA2240, 0xAA2240, )
        Yay0_AA2240_Yay0 = .;
        BUILD_DIR/bin/Yay0/AA2240.Yay0.o(.data);
    SPLAT_END_SEG(data_AA2240, 0xAAAB90)
    
    SPLAT_BEGIN_SEG(data_AAAB90, 0xAAAB90, 0xAAAB90, )
        Yay0_AAAB90_Yay0 = .;
        BUILD_DIR/bin/Yay0/AAAB90.Yay0.o(.data);
    SPLAT_END_SEG(data_AAAB90, 0xAABD28)
    
    SPLAT_BEGIN_SEG(data_AABD28, 0xAABD28, 0xAABD28, )
        Yay0_AABD28_Yay0 = .;
        BUILD_DIR/bin/Yay0/AABD28.Yay0.o(.data);
    SPLAT_END_SEG(data_AABD28, 0xAAC400)
    
    SPLAT_BEGIN_SEG(data_AAC400, 0xAAC400, 0xAAC400, )
        Yay0_AAC400_Yay0 = .;
        BUILD_DIR/bin/Yay0/AAC400.Yay0.o(.data);
    SPLAT_END_SEG(data_AAC400, 0xAB0090)
    
    SPLAT_BEGIN_SEG(data_AB0090, 0xAB0090, 0xAB0090, )
        Yay0_AB0090_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB0090.Yay0.o(.data);
    SPLAT_END_SEG(data_AB0090, 0xAB13D0)
    
    SPLAT_BEGIN_SEG(data_AB13D0, 0xAB13D0, 0xAB13D0, )
        Yay0_AB13D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB13D0.Yay0.o(.data);
    SPLAT_END_SEG(data_AB13D0, 0xAB2570)
    
    SPLAT_BEGIN_SEG(data_AB2570, 0xAB2570, 0xAB2570, )
        Yay0_AB2570_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB2570.Yay0.o(.data);
    SPLAT_END_SEG(data_AB2570, 0xAB4690)
    
    SPLAT_BEGIN_SEG(data_AB4690, 0xAB4690, 0xAB4690, )
        Yay0_AB4690_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB4690.Yay0.o(.data);
    SPLAT_END_SEG(data_AB4690, 0xAB4EF8)
    
    SPLAT_BEGIN_SEG(data_AB4EF8, 0xAB4EF8, 0xAB4EF8, )
        Yay0_AB4EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB4EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_AB4EF8, 0xAB65A0)
    
    SPLAT_BEGIN_SEG(data_AB65A0, 0xAB65A0, 0xAB65A0, )
        Yay0_AB65A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB65A0.Yay0.o(.data);
    SPLAT_END_SEG(data_AB65A0, 0xAB7CC0)
    
    SPLAT_BEGIN_SEG(data_AB7CC0, 0xAB7CC0, 0xAB7CC0, )
        Yay0_AB7CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB7CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_AB7CC0, 0xAB9F10)
    
    SPLAT_BEGIN_SEG(data_AB9F10, 0xAB9F10, 0xAB9F10, )
        Yay0_AB9F10_Yay0 = .;
        BUILD_DIR/bin/Yay0/AB9F10.Yay0.o(.data);
    SPLAT_END_SEG(data_AB9F10, 0xABB288)
    
    SPLAT_BEGIN_SEG(data_ABB288, 0xABB288, 0xABB288, )
        Yay0_ABB288_Yay0 = .;
        BUILD_DIR/bin/Yay0/ABB288.Yay0.o(.data);
    SPLAT_END_SEG(data_ABB288, 0xABC378)
    
    SPLAT_BEGIN_SEG(data_ABC378, 0xABC378, 0xABC378, )
        Yay0_ABC378_Yay0 = .;
        BUILD_DIR/bin/Yay0/ABC378.Yay0.o(.data);
    SPLAT_END_SEG(data_ABC378, 0xABDCE0)
    
    SPLAT_BEGIN_SEG(data_ABDCE0, 0xABDCE0, 0xABDCE0, )
        Yay0_ABDCE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/ABDCE0.Yay0.o(.data);
    SPLAT_END_SEG(data_ABDCE0, 0xABF7A8)
    
    SPLAT_BEGIN_SEG(data_ABF7A8, 0xABF7A8, 0xABF7A8, )
        Yay0_ABF7A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/ABF7A8.Yay0.o(.data);
    SPLAT_END_SEG(data_ABF7A8, 0xAC0D88)
    
    SPLAT_BEGIN_SEG(data_AC0D88, 0xAC0D88, 0xAC0D88, )
        Yay0_AC0D88_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC0D88.Yay0.o(.data);
    SPLAT_END_SEG(data_AC0D88, 0xAC40F8)
    
    SPLAT_BEGIN_SEG(data_AC40F8, 0xAC40F8, 0xAC40F8, )
        Yay0_AC40F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC40F8.Yay0.o(.data);
    SPLAT_END_SEG(data_AC40F8, 0xAC42F0)
    
    SPLAT_BEGIN_SEG(data_AC42F0, 0xAC42F0, 0xAC42F0, )
        Yay0_AC42F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC42F0.Yay0.o(.data);
    SPLAT_END_SEG(data_AC42F0, 0xAC5D80)
    
    SPLAT_BEGIN_SEG(data_AC5D80, 0xAC5D80, 0xAC5D80, )
        Yay0_AC5D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC5D80.Yay0.o(.data);
    SPLAT_END_SEG(data_AC5D80, 0xAC64C0)
    
    SPLAT_BEGIN_SEG(data_AC64C0, 0xAC64C0, 0xAC64C0, )
        Yay0_AC64C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC64C0.Yay0.o(.data);
    SPLAT_END_SEG(data_AC64C0, 0xAC6758)
    
    SPLAT_BEGIN_SEG(data_AC6758, 0xAC6758, 0xAC6758, )
        Yay0_AC6758_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC6758.Yay0.o(.data);
    SPLAT_END_SEG(data_AC6758, 0xAC6A90)
    
    SPLAT_BEGIN_SEG(data_AC6A90, 0xAC6A90, 0xAC6A90, )
        Yay0_AC6A90_Yay0 = .;
        BUILD_DIR/bin/Yay0/AC6A90.Yay0.o(.data);
    SPLAT_END_SEG(data_AC6A90, 0xAD33B8)
    
    SPLAT_BEGIN_SEG(data_AD33B8, 0xAD33B8, 0xAD33B8, )
        Yay0_AD33B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD33B8.Yay0.o(.data);
    SPLAT_END_SEG(data_AD33B8, 0xAD3650)
    
    SPLAT_BEGIN_SEG(data_AD3650, 0xAD3650, 0xAD3650, )
        Yay0_AD3650_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD3650.Yay0.o(.data);
    SPLAT_END_SEG(data_AD3650, 0xAD3968)
    
    SPLAT_BEGIN_SEG(data_AD3968, 0xAD3968, 0xAD3968, )
        Yay0_AD3968_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD3968.Yay0.o(.data);
    SPLAT_END_SEG(data_AD3968, 0xAD51E8)
    
    SPLAT_BEGIN_SEG(data_AD51E8, 0xAD51E8, 0xAD51E8, )
        Yay0_AD51E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD51E8.Yay0.o(.data);
    SPLAT_END_SEG(data_AD51E8, 0xAD53B8)
    
    SPLAT_BEGIN_SEG(data_AD53B8, 0xAD53B8, 0xAD53B8, )
        Yay0_AD53B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD53B8.Yay0.o(.data);
    SPLAT_END_SEG(data_AD53B8, 0xAD68C0)
    
    SPLAT_BEGIN_SEG(data_AD68C0, 0xAD68C0, 0xAD68C0, )
        Yay0_AD68C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD68C0.Yay0.o(.data);
    SPLAT_END_SEG(data_AD68C0, 0xAD6C68)
    
    SPLAT_BEGIN_SEG(data_AD6C68, 0xAD6C68, 0xAD6C68, )
        Yay0_AD6C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/AD6C68.Yay0.o(.data);
    SPLAT_END_SEG(data_AD6C68, 0xADC0E0)
    
    SPLAT_BEGIN_SEG(data_ADC0E0, 0xADC0E0, 0xADC0E0, )
        Yay0_ADC0E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/ADC0E0.Yay0.o(.data);
    SPLAT_END_SEG(data_ADC0E0, 0xAE3038)
    
    SPLAT_BEGIN_SEG(data_AE3038, 0xAE3038, 0xAE3038, )
        Yay0_AE3038_Yay0 = .;
        BUILD_DIR/bin/Yay0/AE3038.Yay0.o(.data);
    SPLAT_END_SEG(data_AE3038, 0xAF9DC0)
    
    SPLAT_BEGIN_SEG(data_AF9DC0, 0xAF9DC0, 0xAF9DC0, )
        Yay0_AF9DC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/AF9DC0.Yay0.o(.data);
    SPLAT_END_SEG(data_AF9DC0, 0xB039C8)
    
    SPLAT_BEGIN_SEG(data_B039C8, 0xB039C8, 0xB039C8, )
        Yay0_B039C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/B039C8.Yay0.o(.data);
    SPLAT_END_SEG(data_B039C8, 0xB12718)
    
    SPLAT_BEGIN_SEG(data_B12718, 0xB12718, 0xB12718, )
        Yay0_B12718_Yay0 = .;
        BUILD_DIR/bin/Yay0/B12718.Yay0.o(.data);
    SPLAT_END_SEG(data_B12718, 0xB19BC8)
    
    SPLAT_BEGIN_SEG(data_B19BC8, 0xB19BC8, 0xB19BC8, )
        Yay0_B19BC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/B19BC8.Yay0.o(.data);
    SPLAT_END_SEG(data_B19BC8, 0xB24800)
    
    SPLAT_BEGIN_SEG(data_B24800, 0xB24800, 0xB24800, )
        Yay0_B24800_Yay0 = .;
        BUILD_DIR/bin/Yay0/B24800.Yay0.o(.data);
    SPLAT_END_SEG(data_B24800, 0xB27008)
    
    SPLAT_BEGIN_SEG(data_B27008, 0xB27008, 0xB27008, )
        Yay0_B27008_Yay0 = .;
        BUILD_DIR/bin/Yay0/B27008.Yay0.o(.data);
    SPLAT_END_SEG(data_B27008, 0xB27CB8)
    
    SPLAT_BEGIN_SEG(data_B27CB8, 0xB27CB8, 0xB27CB8, )
        Yay0_B27CB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/B27CB8.Yay0.o(.data);
    SPLAT_END_SEG(data_B27CB8, 0xB2A608)
    
    SPLAT_BEGIN_SEG(data_B2A608, 0xB2A608, 0xB2A608, )
        Yay0_B2A608_Yay0 = .;
        BUILD_DIR/bin/Yay0/B2A608.Yay0.o(.data);
    SPLAT_END_SEG(data_B2A608, 0xB316C8)
    
    SPLAT_BEGIN_SEG(data_B316C8, 0xB316C8, 0xB316C8, )
        Yay0_B316C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/B316C8.Yay0.o(.data);
    SPLAT_END_SEG(data_B316C8, 0xB31F78)
    
    SPLAT_BEGIN_SEG(data_B31F78, 0xB31F78, 0xB31F78, )
        Yay0_B31F78_Yay0 = .;
        BUILD_DIR/bin/Yay0/B31F78.Yay0.o(.data);
    SPLAT_END_SEG(data_B31F78, 0xB34198)
    
    SPLAT_BEGIN_SEG(data_B34198, 0xB34198, 0xB34198, )
        Yay0_B34198_Yay0 = .;
        BUILD_DIR/bin/Yay0/B34198.Yay0.o(.data);
    SPLAT_END_SEG(data_B34198, 0xB353F0)
    
    SPLAT_BEGIN_SEG(data_B353F0, 0xB353F0, 0xB353F0, )
        Yay0_B353F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B353F0.Yay0.o(.data);
    SPLAT_END_SEG(data_B353F0, 0xB36110)
    
    SPLAT_BEGIN_SEG(data_B36110, 0xB36110, 0xB36110, )
        Yay0_B36110_Yay0 = .;
        BUILD_DIR/bin/Yay0/B36110.Yay0.o(.data);
    SPLAT_END_SEG(data_B36110, 0xB388C0)
    
    SPLAT_BEGIN_SEG(data_B388C0, 0xB388C0, 0xB388C0, )
        Yay0_B388C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B388C0.Yay0.o(.data);
    SPLAT_END_SEG(data_B388C0, 0xB3C0D8)
    
    SPLAT_BEGIN_SEG(data_B3C0D8, 0xB3C0D8, 0xB3C0D8, )
        Yay0_B3C0D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/B3C0D8.Yay0.o(.data);
    SPLAT_END_SEG(data_B3C0D8, 0xB3E258)
    
    SPLAT_BEGIN_SEG(data_B3E258, 0xB3E258, 0xB3E258, )
        Yay0_B3E258_Yay0 = .;
        BUILD_DIR/bin/Yay0/B3E258.Yay0.o(.data);
    SPLAT_END_SEG(data_B3E258, 0xB40888)
    
    SPLAT_BEGIN_SEG(data_B40888, 0xB40888, 0xB40888, )
        Yay0_B40888_Yay0 = .;
        BUILD_DIR/bin/Yay0/B40888.Yay0.o(.data);
    SPLAT_END_SEG(data_B40888, 0xB43350)
    
    SPLAT_BEGIN_SEG(data_B43350, 0xB43350, 0xB43350, )
        Yay0_B43350_Yay0 = .;
        BUILD_DIR/bin/Yay0/B43350.Yay0.o(.data);
    SPLAT_END_SEG(data_B43350, 0xB495B0)
    
    SPLAT_BEGIN_SEG(data_B495B0, 0xB495B0, 0xB495B0, )
        Yay0_B495B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B495B0.Yay0.o(.data);
    SPLAT_END_SEG(data_B495B0, 0xB4EAD0)
    
    SPLAT_BEGIN_SEG(data_B4EAD0, 0xB4EAD0, 0xB4EAD0, )
        Yay0_B4EAD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B4EAD0.Yay0.o(.data);
    SPLAT_END_SEG(data_B4EAD0, 0xB5A428)
    
    SPLAT_BEGIN_SEG(data_B5A428, 0xB5A428, 0xB5A428, )
        Yay0_B5A428_Yay0 = .;
        BUILD_DIR/bin/Yay0/B5A428.Yay0.o(.data);
    SPLAT_END_SEG(data_B5A428, 0xB5EBB0)
    
    SPLAT_BEGIN_SEG(data_B5EBB0, 0xB5EBB0, 0xB5EBB0, )
        Yay0_B5EBB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B5EBB0.Yay0.o(.data);
    SPLAT_END_SEG(data_B5EBB0, 0xB62860)
    
    SPLAT_BEGIN_SEG(data_B62860, 0xB62860, 0xB62860, )
        Yay0_B62860_Yay0 = .;
        BUILD_DIR/bin/Yay0/B62860.Yay0.o(.data);
    SPLAT_END_SEG(data_B62860, 0xB6B5C0)
    
    SPLAT_BEGIN_SEG(data_B6B5C0, 0xB6B5C0, 0xB6B5C0, )
        Yay0_B6B5C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B6B5C0.Yay0.o(.data);
    SPLAT_END_SEG(data_B6B5C0, 0xB70400)
    
    SPLAT_BEGIN_SEG(data_B70400, 0xB70400, 0xB70400, )
        Yay0_B70400_Yay0 = .;
        BUILD_DIR/bin/Yay0/B70400.Yay0.o(.data);
    SPLAT_END_SEG(data_B70400, 0xB739A0)
    
    SPLAT_BEGIN_SEG(data_B739A0, 0xB739A0, 0xB739A0, )
        Yay0_B739A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B739A0.Yay0.o(.data);
    SPLAT_END_SEG(data_B739A0, 0xB78790)
    
    SPLAT_BEGIN_SEG(data_B78790, 0xB78790, 0xB78790, )
        Yay0_B78790_Yay0 = .;
        BUILD_DIR/bin/Yay0/B78790.Yay0.o(.data);
    SPLAT_END_SEG(data_B78790, 0xB7CB28)
    
    SPLAT_BEGIN_SEG(data_B7CB28, 0xB7CB28, 0xB7CB28, )
        Yay0_B7CB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/B7CB28.Yay0.o(.data);
    SPLAT_END_SEG(data_B7CB28, 0xB82F80)
    
    SPLAT_BEGIN_SEG(data_B82F80, 0xB82F80, 0xB82F80, )
        Yay0_B82F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/B82F80.Yay0.o(.data);
    SPLAT_END_SEG(data_B82F80, 0xB8ADD0)
    
    SPLAT_BEGIN_SEG(data_B8ADD0, 0xB8ADD0, 0xB8ADD0, )
        Yay0_B8ADD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/B8ADD0.Yay0.o(.data);
    SPLAT_END_SEG(data_B8ADD0, 0xB8FB28)
    
    SPLAT_BEGIN_SEG(data_B8FB28, 0xB8FB28, 0xB8FB28, )
        Yay0_B8FB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/B8FB28.Yay0.o(.data);
    SPLAT_END_SEG(data_B8FB28, 0xB97A78)
    
    SPLAT_BEGIN_SEG(data_B97A78, 0xB97A78, 0xB97A78, )
        Yay0_B97A78_Yay0 = .;
        BUILD_DIR/bin/Yay0/B97A78.Yay0.o(.data);
    SPLAT_END_SEG(data_B97A78, 0xBA37B0)
    
    SPLAT_BEGIN_SEG(data_BA37B0, 0xBA37B0, 0xBA37B0, )
        Yay0_BA37B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/BA37B0.Yay0.o(.data);
    SPLAT_END_SEG(data_BA37B0, 0xBB2280)
    
    SPLAT_BEGIN_SEG(data_BB2280, 0xBB2280, 0xBB2280, )
        Yay0_BB2280_Yay0 = .;
        BUILD_DIR/bin/Yay0/BB2280.Yay0.o(.data);
    SPLAT_END_SEG(data_BB2280, 0xBBABF8)
    
    SPLAT_BEGIN_SEG(data_BBABF8, 0xBBABF8, 0xBBABF8, )
        Yay0_BBABF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/BBABF8.Yay0.o(.data);
    SPLAT_END_SEG(data_BBABF8, 0xBC0668)
    
    SPLAT_BEGIN_SEG(data_BC0668, 0xBC0668, 0xBC0668, )
        Yay0_BC0668_Yay0 = .;
        BUILD_DIR/bin/Yay0/BC0668.Yay0.o(.data);
    SPLAT_END_SEG(data_BC0668, 0xBC52C0)
    
    SPLAT_BEGIN_SEG(data_BC52C0, 0xBC52C0, 0xBC52C0, )
        Yay0_BC52C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/BC52C0.Yay0.o(.data);
    SPLAT_END_SEG(data_BC52C0, 0xBCAEA0)
    
    SPLAT_BEGIN_SEG(data_BCAEA0, 0xBCAEA0, 0xBCAEA0, )
        Yay0_BCAEA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/BCAEA0.Yay0.o(.data);
    SPLAT_END_SEG(data_BCAEA0, 0xBCEB98)
    
    SPLAT_BEGIN_SEG(data_BCEB98, 0xBCEB98, 0xBCEB98, )
        Yay0_BCEB98_Yay0 = .;
        BUILD_DIR/bin/Yay0/BCEB98.Yay0.o(.data);
    SPLAT_END_SEG(data_BCEB98, 0xBD1220)
    
    SPLAT_BEGIN_SEG(data_BD1220, 0xBD1220, 0xBD1220, )
        Yay0_BD1220_Yay0 = .;
        BUILD_DIR/bin/Yay0/BD1220.Yay0.o(.data);
    SPLAT_END_SEG(data_BD1220, 0xBDA850)
    
    SPLAT_BEGIN_SEG(data_BDA850, 0xBDA850, 0xBDA850, )
        Yay0_BDA850_Yay0 = .;
        BUILD_DIR/bin/Yay0/BDA850.Yay0.o(.data);
    SPLAT_END_SEG(data_BDA850, 0xBDF280)
    
    SPLAT_BEGIN_SEG(data_BDF280, 0xBDF280, 0xBDF280, )
        Yay0_BDF280_Yay0 = .;
        BUILD_DIR/bin/Yay0/BDF280.Yay0.o(.data);
    SPLAT_END_SEG(data_BDF280, 0xBEE900)
    
    SPLAT_BEGIN_SEG(data_BEE900, 0xBEE900, 0xBEE900, )
        Yay0_BEE900_Yay0 = .;
        BUILD_DIR/bin/Yay0/BEE900.Yay0.o(.data);
    SPLAT_END_SEG(data_BEE900, 0xC003A0)
    
    SPLAT_BEGIN_SEG(data_C003A0, 0xC003A0, 0xC003A0, )
        Yay0_C003A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/C003A0.Yay0.o(.data);
    SPLAT_END_SEG(data_C003A0, 0xC0E480)
    
    SPLAT_BEGIN_SEG(data_C0E480, 0xC0E480, 0xC0E480, )
        Yay0_C0E480_Yay0 = .;
        BUILD_DIR/bin/Yay0/C0E480.Yay0.o(.data);
    SPLAT_END_SEG(data_C0E480, 0xC1BC70)
    
    SPLAT_BEGIN_SEG(data_C1BC70, 0xC1BC70, 0xC1BC70, )
        Yay0_C1BC70_Yay0 = .;
        BUILD_DIR/bin/Yay0/C1BC70.Yay0.o(.data);
    SPLAT_END_SEG(data_C1BC70, 0xC304E8)
    
    SPLAT_BEGIN_SEG(data_C304E8, 0xC304E8, 0xC304E8, )
        Yay0_C304E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C304E8.Yay0.o(.data);
    SPLAT_END_SEG(data_C304E8, 0xC41BC8)
    
    SPLAT_BEGIN_SEG(data_C41BC8, 0xC41BC8, 0xC41BC8, )
        Yay0_C41BC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C41BC8.Yay0.o(.data);
    SPLAT_END_SEG(data_C41BC8, 0xC49EC0)
    
    SPLAT_BEGIN_SEG(data_C49EC0, 0xC49EC0, 0xC49EC0, )
        Yay0_C49EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/C49EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_C49EC0, 0xC54100)
    
    SPLAT_BEGIN_SEG(data_C54100, 0xC54100, 0xC54100, )
        Yay0_C54100_Yay0 = .;
        BUILD_DIR/bin/Yay0/C54100.Yay0.o(.data);
    SPLAT_END_SEG(data_C54100, 0xC5D470)
    
    SPLAT_BEGIN_SEG(data_C5D470, 0xC5D470, 0xC5D470, )
        Yay0_C5D470_Yay0 = .;
        BUILD_DIR/bin/Yay0/C5D470.Yay0.o(.data);
    SPLAT_END_SEG(data_C5D470, 0xC60F70)
    
    SPLAT_BEGIN_SEG(data_C60F70, 0xC60F70, 0xC60F70, )
        Yay0_C60F70_Yay0 = .;
        BUILD_DIR/bin/Yay0/C60F70.Yay0.o(.data);
    SPLAT_END_SEG(data_C60F70, 0xC66090)
    
    SPLAT_BEGIN_SEG(data_C66090, 0xC66090, 0xC66090, )
        Yay0_C66090_Yay0 = .;
        BUILD_DIR/bin/Yay0/C66090.Yay0.o(.data);
    SPLAT_END_SEG(data_C66090, 0xC6A1B8)
    
    SPLAT_BEGIN_SEG(data_C6A1B8, 0xC6A1B8, 0xC6A1B8, )
        Yay0_C6A1B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C6A1B8.Yay0.o(.data);
    SPLAT_END_SEG(data_C6A1B8, 0xC74990)
    
    SPLAT_BEGIN_SEG(data_C74990, 0xC74990, 0xC74990, )
        Yay0_C74990_Yay0 = .;
        BUILD_DIR/bin/Yay0/C74990.Yay0.o(.data);
    SPLAT_END_SEG(data_C74990, 0xC759B8)
    
    SPLAT_BEGIN_SEG(data_C759B8, 0xC759B8, 0xC759B8, )
        Yay0_C759B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C759B8.Yay0.o(.data);
    SPLAT_END_SEG(data_C759B8, 0xC795C8)
    
    SPLAT_BEGIN_SEG(data_C795C8, 0xC795C8, 0xC795C8, )
        Yay0_C795C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C795C8.Yay0.o(.data);
    SPLAT_END_SEG(data_C795C8, 0xC7BAD8)
    
    SPLAT_BEGIN_SEG(data_C7BAD8, 0xC7BAD8, 0xC7BAD8, )
        Yay0_C7BAD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C7BAD8.Yay0.o(.data);
    SPLAT_END_SEG(data_C7BAD8, 0xC7CDD8)
    
    SPLAT_BEGIN_SEG(data_C7CDD8, 0xC7CDD8, 0xC7CDD8, )
        Yay0_C7CDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C7CDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_C7CDD8, 0xC7DDA0)
    
    SPLAT_BEGIN_SEG(data_C7DDA0, 0xC7DDA0, 0xC7DDA0, )
        Yay0_C7DDA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/C7DDA0.Yay0.o(.data);
    SPLAT_END_SEG(data_C7DDA0, 0xC7EFA8)
    
    SPLAT_BEGIN_SEG(data_C7EFA8, 0xC7EFA8, 0xC7EFA8, )
        Yay0_C7EFA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C7EFA8.Yay0.o(.data);
    SPLAT_END_SEG(data_C7EFA8, 0xC80198)
    
    SPLAT_BEGIN_SEG(data_C80198, 0xC80198, 0xC80198, )
        Yay0_C80198_Yay0 = .;
        BUILD_DIR/bin/Yay0/C80198.Yay0.o(.data);
    SPLAT_END_SEG(data_C80198, 0xC80858)
    
    SPLAT_BEGIN_SEG(data_C80858, 0xC80858, 0xC80858, )
        Yay0_C80858_Yay0 = .;
        BUILD_DIR/bin/Yay0/C80858.Yay0.o(.data);
    SPLAT_END_SEG(data_C80858, 0xC80EF8)
    
    SPLAT_BEGIN_SEG(data_C80EF8, 0xC80EF8, 0xC80EF8, )
        Yay0_C80EF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C80EF8.Yay0.o(.data);
    SPLAT_END_SEG(data_C80EF8, 0xC815A0)
    
    SPLAT_BEGIN_SEG(data_C815A0, 0xC815A0, 0xC815A0, )
        Yay0_C815A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/C815A0.Yay0.o(.data);
    SPLAT_END_SEG(data_C815A0, 0xC81C60)
    
    SPLAT_BEGIN_SEG(data_C81C60, 0xC81C60, 0xC81C60, )
        Yay0_C81C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/C81C60.Yay0.o(.data);
    SPLAT_END_SEG(data_C81C60, 0xC82300)
    
    SPLAT_BEGIN_SEG(data_C82300, 0xC82300, 0xC82300, )
        Yay0_C82300_Yay0 = .;
        BUILD_DIR/bin/Yay0/C82300.Yay0.o(.data);
    SPLAT_END_SEG(data_C82300, 0xC870A0)
    
    SPLAT_BEGIN_SEG(data_C870A0, 0xC870A0, 0xC870A0, )
        Yay0_C870A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/C870A0.Yay0.o(.data);
    SPLAT_END_SEG(data_C870A0, 0xC87B98)
    
    SPLAT_BEGIN_SEG(data_C87B98, 0xC87B98, 0xC87B98, )
        Yay0_C87B98_Yay0 = .;
        BUILD_DIR/bin/Yay0/C87B98.Yay0.o(.data);
    SPLAT_END_SEG(data_C87B98, 0xC88880)
    
    SPLAT_BEGIN_SEG(data_C88880, 0xC88880, 0xC88880, )
        Yay0_C88880_Yay0 = .;
        BUILD_DIR/bin/Yay0/C88880.Yay0.o(.data);
    SPLAT_END_SEG(data_C88880, 0xC88E60)
    
    SPLAT_BEGIN_SEG(data_C88E60, 0xC88E60, 0xC88E60, )
        Yay0_C88E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/C88E60.Yay0.o(.data);
    SPLAT_END_SEG(data_C88E60, 0xC894A0)
    
    SPLAT_BEGIN_SEG(data_C894A0, 0xC894A0, 0xC894A0, )
        Yay0_C894A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/C894A0.Yay0.o(.data);
    SPLAT_END_SEG(data_C894A0, 0xC89AE8)
    
    SPLAT_BEGIN_SEG(data_C89AE8, 0xC89AE8, 0xC89AE8, )
        Yay0_C89AE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C89AE8.Yay0.o(.data);
    SPLAT_END_SEG(data_C89AE8, 0xC8A7C8)
    
    SPLAT_BEGIN_SEG(data_C8A7C8, 0xC8A7C8, 0xC8A7C8, )
        Yay0_C8A7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C8A7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_C8A7C8, 0xC8FE30)
    
    SPLAT_BEGIN_SEG(data_C8FE30, 0xC8FE30, 0xC8FE30, )
        Yay0_C8FE30_Yay0 = .;
        BUILD_DIR/bin/Yay0/C8FE30.Yay0.o(.data);
    SPLAT_END_SEG(data_C8FE30, 0xC950C8)
    
    SPLAT_BEGIN_SEG(data_C950C8, 0xC950C8, 0xC950C8, )
        Yay0_C950C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C950C8.Yay0.o(.data);
    SPLAT_END_SEG(data_C950C8, 0xC97AD8)
    
    SPLAT_BEGIN_SEG(data_C97AD8, 0xC97AD8, 0xC97AD8, )
        Yay0_C97AD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C97AD8.Yay0.o(.data);
    SPLAT_END_SEG(data_C97AD8, 0xC995B8)
    
    SPLAT_BEGIN_SEG(data_C995B8, 0xC995B8, 0xC995B8, )
        Yay0_C995B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/C995B8.Yay0.o(.data);
    SPLAT_END_SEG(data_C995B8, 0xC9B090)
    
    SPLAT_BEGIN_SEG(data_C9B090, 0xC9B090, 0xC9B090, )
        Yay0_C9B090_Yay0 = .;
        BUILD_DIR/bin/Yay0/C9B090.Yay0.o(.data);
    SPLAT_END_SEG(data_C9B090, 0xCA22B8)
    
    SPLAT_BEGIN_SEG(data_CA22B8, 0xCA22B8, 0xCA22B8, )
        Yay0_CA22B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CA22B8.Yay0.o(.data);
    SPLAT_END_SEG(data_CA22B8, 0xCAB6F8)
    
    SPLAT_BEGIN_SEG(data_CAB6F8, 0xCAB6F8, 0xCAB6F8, )
        Yay0_CAB6F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CAB6F8.Yay0.o(.data);
    SPLAT_END_SEG(data_CAB6F8, 0xCB3400)
    
    SPLAT_BEGIN_SEG(data_CB3400, 0xCB3400, 0xCB3400, )
        Yay0_CB3400_Yay0 = .;
        BUILD_DIR/bin/Yay0/CB3400.Yay0.o(.data);
    SPLAT_END_SEG(data_CB3400, 0xCB94E8)
    
    SPLAT_BEGIN_SEG(data_CB94E8, 0xCB94E8, 0xCB94E8, )
        Yay0_CB94E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CB94E8.Yay0.o(.data);
    SPLAT_END_SEG(data_CB94E8, 0xCC1248)
    
    SPLAT_BEGIN_SEG(data_CC1248, 0xCC1248, 0xCC1248, )
        Yay0_CC1248_Yay0 = .;
        BUILD_DIR/bin/Yay0/CC1248.Yay0.o(.data);
    SPLAT_END_SEG(data_CC1248, 0xCC6078)
    
    SPLAT_BEGIN_SEG(data_CC6078, 0xCC6078, 0xCC6078, )
        Yay0_CC6078_Yay0 = .;
        BUILD_DIR/bin/Yay0/CC6078.Yay0.o(.data);
    SPLAT_END_SEG(data_CC6078, 0xCCE808)
    
    SPLAT_BEGIN_SEG(data_CCE808, 0xCCE808, 0xCCE808, )
        Yay0_CCE808_Yay0 = .;
        BUILD_DIR/bin/Yay0/CCE808.Yay0.o(.data);
    SPLAT_END_SEG(data_CCE808, 0xCD2F08)
    
    SPLAT_BEGIN_SEG(data_CD2F08, 0xCD2F08, 0xCD2F08, )
        Yay0_CD2F08_Yay0 = .;
        BUILD_DIR/bin/Yay0/CD2F08.Yay0.o(.data);
    SPLAT_END_SEG(data_CD2F08, 0xCD98F8)
    
    SPLAT_BEGIN_SEG(data_CD98F8, 0xCD98F8, 0xCD98F8, )
        Yay0_CD98F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CD98F8.Yay0.o(.data);
    SPLAT_END_SEG(data_CD98F8, 0xCDF910)
    
    SPLAT_BEGIN_SEG(data_CDF910, 0xCDF910, 0xCDF910, )
        Yay0_CDF910_Yay0 = .;
        BUILD_DIR/bin/Yay0/CDF910.Yay0.o(.data);
    SPLAT_END_SEG(data_CDF910, 0xCE6010)
    
    SPLAT_BEGIN_SEG(data_CE6010, 0xCE6010, 0xCE6010, )
        Yay0_CE6010_Yay0 = .;
        BUILD_DIR/bin/Yay0/CE6010.Yay0.o(.data);
    SPLAT_END_SEG(data_CE6010, 0xCEC168)
    
    SPLAT_BEGIN_SEG(data_CEC168, 0xCEC168, 0xCEC168, )
        Yay0_CEC168_Yay0 = .;
        BUILD_DIR/bin/Yay0/CEC168.Yay0.o(.data);
    SPLAT_END_SEG(data_CEC168, 0xCEF828)
    
    SPLAT_BEGIN_SEG(data_CEF828, 0xCEF828, 0xCEF828, )
        Yay0_CEF828_Yay0 = .;
        BUILD_DIR/bin/Yay0/CEF828.Yay0.o(.data);
    SPLAT_END_SEG(data_CEF828, 0xCF23A8)
    
    SPLAT_BEGIN_SEG(data_CF23A8, 0xCF23A8, 0xCF23A8, )
        Yay0_CF23A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CF23A8.Yay0.o(.data);
    SPLAT_END_SEG(data_CF23A8, 0xCF8B10)
    
    SPLAT_BEGIN_SEG(data_CF8B10, 0xCF8B10, 0xCF8B10, )
        Yay0_CF8B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/CF8B10.Yay0.o(.data);
    SPLAT_END_SEG(data_CF8B10, 0xCFCC88)
    
    SPLAT_BEGIN_SEG(data_CFCC88, 0xCFCC88, 0xCFCC88, )
        Yay0_CFCC88_Yay0 = .;
        BUILD_DIR/bin/Yay0/CFCC88.Yay0.o(.data);
    SPLAT_END_SEG(data_CFCC88, 0xCFD300)
    
    SPLAT_BEGIN_SEG(data_CFD300, 0xCFD300, 0xCFD300, )
        Yay0_CFD300_Yay0 = .;
        BUILD_DIR/bin/Yay0/CFD300.Yay0.o(.data);
    SPLAT_END_SEG(data_CFD300, 0xCFDB78)
    
    SPLAT_BEGIN_SEG(data_CFDB78, 0xCFDB78, 0xCFDB78, )
        Yay0_CFDB78_Yay0 = .;
        BUILD_DIR/bin/Yay0/CFDB78.Yay0.o(.data);
    SPLAT_END_SEG(data_CFDB78, 0xCFE8C8)
    
    SPLAT_BEGIN_SEG(data_CFE8C8, 0xCFE8C8, 0xCFE8C8, )
        Yay0_CFE8C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CFE8C8.Yay0.o(.data);
    SPLAT_END_SEG(data_CFE8C8, 0xCFF268)
    
    SPLAT_BEGIN_SEG(data_CFF268, 0xCFF268, 0xCFF268, )
        Yay0_CFF268_Yay0 = .;
        BUILD_DIR/bin/Yay0/CFF268.Yay0.o(.data);
    SPLAT_END_SEG(data_CFF268, 0xCFFFF8)
    
    SPLAT_BEGIN_SEG(data_CFFFF8, 0xCFFFF8, 0xCFFFF8, )
        Yay0_CFFFF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/CFFFF8.Yay0.o(.data);
    SPLAT_END_SEG(data_CFFFF8, 0xD00898)
    
    SPLAT_BEGIN_SEG(data_D00898, 0xD00898, 0xD00898, )
        Yay0_D00898_Yay0 = .;
        BUILD_DIR/bin/Yay0/D00898.Yay0.o(.data);
    SPLAT_END_SEG(data_D00898, 0xD01070)
    
    SPLAT_BEGIN_SEG(data_D01070, 0xD01070, 0xD01070, )
        Yay0_D01070_Yay0 = .;
        BUILD_DIR/bin/Yay0/D01070.Yay0.o(.data);
    SPLAT_END_SEG(data_D01070, 0xD01D90)
    
    SPLAT_BEGIN_SEG(data_D01D90, 0xD01D90, 0xD01D90, )
        Yay0_D01D90_Yay0 = .;
        BUILD_DIR/bin/Yay0/D01D90.Yay0.o(.data);
    SPLAT_END_SEG(data_D01D90, 0xD02218)
    
    SPLAT_BEGIN_SEG(data_D02218, 0xD02218, 0xD02218, )
        Yay0_D02218_Yay0 = .;
        BUILD_DIR/bin/Yay0/D02218.Yay0.o(.data);
    SPLAT_END_SEG(data_D02218, 0xD02810)
    
    SPLAT_BEGIN_SEG(data_D02810, 0xD02810, 0xD02810, )
        Yay0_D02810_Yay0 = .;
        BUILD_DIR/bin/Yay0/D02810.Yay0.o(.data);
    SPLAT_END_SEG(data_D02810, 0xD044E0)
    
    SPLAT_BEGIN_SEG(data_D044E0, 0xD044E0, 0xD044E0, )
        Yay0_D044E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D044E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D044E0, 0xD052D8)
    
    SPLAT_BEGIN_SEG(data_D052D8, 0xD052D8, 0xD052D8, )
        Yay0_D052D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D052D8.Yay0.o(.data);
    SPLAT_END_SEG(data_D052D8, 0xD068C8)
    
    SPLAT_BEGIN_SEG(data_D068C8, 0xD068C8, 0xD068C8, )
        Yay0_D068C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D068C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D068C8, 0xD09330)
    
    SPLAT_BEGIN_SEG(data_D09330, 0xD09330, 0xD09330, )
        Yay0_D09330_Yay0 = .;
        BUILD_DIR/bin/Yay0/D09330.Yay0.o(.data);
    SPLAT_END_SEG(data_D09330, 0xD09B20)
    
    SPLAT_BEGIN_SEG(data_D09B20, 0xD09B20, 0xD09B20, )
        Yay0_D09B20_Yay0 = .;
        BUILD_DIR/bin/Yay0/D09B20.Yay0.o(.data);
    SPLAT_END_SEG(data_D09B20, 0xD09F48)
    
    SPLAT_BEGIN_SEG(data_D09F48, 0xD09F48, 0xD09F48, )
        Yay0_D09F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/D09F48.Yay0.o(.data);
    SPLAT_END_SEG(data_D09F48, 0xD0AB58)
    
    SPLAT_BEGIN_SEG(data_D0AB58, 0xD0AB58, 0xD0AB58, )
        Yay0_D0AB58_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0AB58.Yay0.o(.data);
    SPLAT_END_SEG(data_D0AB58, 0xD0ABF8)
    
    SPLAT_BEGIN_SEG(data_D0ABF8, 0xD0ABF8, 0xD0ABF8, )
        Yay0_D0ABF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0ABF8.Yay0.o(.data);
    SPLAT_END_SEG(data_D0ABF8, 0xD0B0C8)
    
    SPLAT_BEGIN_SEG(data_D0B0C8, 0xD0B0C8, 0xD0B0C8, )
        Yay0_D0B0C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0B0C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D0B0C8, 0xD0C160)
    
    SPLAT_BEGIN_SEG(data_D0C160, 0xD0C160, 0xD0C160, )
        Yay0_D0C160_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0C160.Yay0.o(.data);
    SPLAT_END_SEG(data_D0C160, 0xD0CF98)
    
    SPLAT_BEGIN_SEG(data_D0CF98, 0xD0CF98, 0xD0CF98, )
        Yay0_D0CF98_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0CF98.Yay0.o(.data);
    SPLAT_END_SEG(data_D0CF98, 0xD0D780)
    
    SPLAT_BEGIN_SEG(data_D0D780, 0xD0D780, 0xD0D780, )
        Yay0_D0D780_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0D780.Yay0.o(.data);
    SPLAT_END_SEG(data_D0D780, 0xD0EF68)
    
    SPLAT_BEGIN_SEG(data_D0EF68, 0xD0EF68, 0xD0EF68, )
        Yay0_D0EF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0EF68.Yay0.o(.data);
    SPLAT_END_SEG(data_D0EF68, 0xD0F240)
    
    SPLAT_BEGIN_SEG(data_D0F240, 0xD0F240, 0xD0F240, )
        Yay0_D0F240_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0F240.Yay0.o(.data);
    SPLAT_END_SEG(data_D0F240, 0xD0F3A0)
    
    SPLAT_BEGIN_SEG(data_D0F3A0, 0xD0F3A0, 0xD0F3A0, )
        Yay0_D0F3A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0F3A0.Yay0.o(.data);
    SPLAT_END_SEG(data_D0F3A0, 0xD0F7A0)
    
    SPLAT_BEGIN_SEG(data_D0F7A0, 0xD0F7A0, 0xD0F7A0, )
        Yay0_D0F7A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0F7A0.Yay0.o(.data);
    SPLAT_END_SEG(data_D0F7A0, 0xD0F840)
    
    SPLAT_BEGIN_SEG(data_D0F840, 0xD0F840, 0xD0F840, )
        Yay0_D0F840_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0F840.Yay0.o(.data);
    SPLAT_END_SEG(data_D0F840, 0xD0FD90)
    
    SPLAT_BEGIN_SEG(data_D0FD90, 0xD0FD90, 0xD0FD90, )
        Yay0_D0FD90_Yay0 = .;
        BUILD_DIR/bin/Yay0/D0FD90.Yay0.o(.data);
    SPLAT_END_SEG(data_D0FD90, 0xD10478)
    
    SPLAT_BEGIN_SEG(data_D10478, 0xD10478, 0xD10478, )
        Yay0_D10478_Yay0 = .;
        BUILD_DIR/bin/Yay0/D10478.Yay0.o(.data);
    SPLAT_END_SEG(data_D10478, 0xD10A00)
    
    SPLAT_BEGIN_SEG(data_D10A00, 0xD10A00, 0xD10A00, )
        Yay0_D10A00_Yay0 = .;
        BUILD_DIR/bin/Yay0/D10A00.Yay0.o(.data);
    SPLAT_END_SEG(data_D10A00, 0xD13010)
    
    SPLAT_BEGIN_SEG(data_D13010, 0xD13010, 0xD13010, )
        Yay0_D13010_Yay0 = .;
        BUILD_DIR/bin/Yay0/D13010.Yay0.o(.data);
    SPLAT_END_SEG(data_D13010, 0xD145A8)
    
    SPLAT_BEGIN_SEG(data_D145A8, 0xD145A8, 0xD145A8, )
        Yay0_D145A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D145A8.Yay0.o(.data);
    SPLAT_END_SEG(data_D145A8, 0xD14938)
    
    SPLAT_BEGIN_SEG(data_D14938, 0xD14938, 0xD14938, )
        Yay0_D14938_Yay0 = .;
        BUILD_DIR/bin/Yay0/D14938.Yay0.o(.data);
    SPLAT_END_SEG(data_D14938, 0xD14AA8)
    
    SPLAT_BEGIN_SEG(data_D14AA8, 0xD14AA8, 0xD14AA8, )
        Yay0_D14AA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D14AA8.Yay0.o(.data);
    SPLAT_END_SEG(data_D14AA8, 0xD14D40)
    
    SPLAT_BEGIN_SEG(data_D14D40, 0xD14D40, 0xD14D40, )
        Yay0_D14D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/D14D40.Yay0.o(.data);
    SPLAT_END_SEG(data_D14D40, 0xD15760)
    
    SPLAT_BEGIN_SEG(data_D15760, 0xD15760, 0xD15760, )
        Yay0_D15760_Yay0 = .;
        BUILD_DIR/bin/Yay0/D15760.Yay0.o(.data);
    SPLAT_END_SEG(data_D15760, 0xD15CC0)
    
    SPLAT_BEGIN_SEG(data_D15CC0, 0xD15CC0, 0xD15CC0, )
        Yay0_D15CC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D15CC0.Yay0.o(.data);
    SPLAT_END_SEG(data_D15CC0, 0xD16EE8)
    
    SPLAT_BEGIN_SEG(data_D16EE8, 0xD16EE8, 0xD16EE8, )
        Yay0_D16EE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D16EE8.Yay0.o(.data);
    SPLAT_END_SEG(data_D16EE8, 0xD18500)
    
    SPLAT_BEGIN_SEG(data_D18500, 0xD18500, 0xD18500, )
        Yay0_D18500_Yay0 = .;
        BUILD_DIR/bin/Yay0/D18500.Yay0.o(.data);
    SPLAT_END_SEG(data_D18500, 0xD18FB8)
    
    SPLAT_BEGIN_SEG(data_D18FB8, 0xD18FB8, 0xD18FB8, )
        Yay0_D18FB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D18FB8.Yay0.o(.data);
    SPLAT_END_SEG(data_D18FB8, 0xD191A8)
    
    SPLAT_BEGIN_SEG(data_D191A8, 0xD191A8, 0xD191A8, )
        Yay0_D191A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D191A8.Yay0.o(.data);
    SPLAT_END_SEG(data_D191A8, 0xD1A5E0)
    
    SPLAT_BEGIN_SEG(data_D1A5E0, 0xD1A5E0, 0xD1A5E0, )
        Yay0_D1A5E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1A5E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D1A5E0, 0xD1B8F8)
    
    SPLAT_BEGIN_SEG(data_D1B8F8, 0xD1B8F8, 0xD1B8F8, )
        Yay0_D1B8F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1B8F8.Yay0.o(.data);
    SPLAT_END_SEG(data_D1B8F8, 0xD1BC78)
    
    SPLAT_BEGIN_SEG(data_D1BC78, 0xD1BC78, 0xD1BC78, )
        Yay0_D1BC78_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1BC78.Yay0.o(.data);
    SPLAT_END_SEG(data_D1BC78, 0xD1C410)
    
    SPLAT_BEGIN_SEG(data_D1C410, 0xD1C410, 0xD1C410, )
        Yay0_D1C410_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1C410.Yay0.o(.data);
    SPLAT_END_SEG(data_D1C410, 0xD1CD80)
    
    SPLAT_BEGIN_SEG(data_D1CD80, 0xD1CD80, 0xD1CD80, )
        Yay0_D1CD80_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1CD80.Yay0.o(.data);
    SPLAT_END_SEG(data_D1CD80, 0xD1D6C0)
    
    SPLAT_BEGIN_SEG(data_D1D6C0, 0xD1D6C0, 0xD1D6C0, )
        Yay0_D1D6C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1D6C0.Yay0.o(.data);
    SPLAT_END_SEG(data_D1D6C0, 0xD1DA38)
    
    SPLAT_BEGIN_SEG(data_D1DA38, 0xD1DA38, 0xD1DA38, )
        Yay0_D1DA38_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1DA38.Yay0.o(.data);
    SPLAT_END_SEG(data_D1DA38, 0xD1E040)
    
    SPLAT_BEGIN_SEG(data_D1E040, 0xD1E040, 0xD1E040, )
        Yay0_D1E040_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1E040.Yay0.o(.data);
    SPLAT_END_SEG(data_D1E040, 0xD1EE20)
    
    SPLAT_BEGIN_SEG(data_D1EE20, 0xD1EE20, 0xD1EE20, )
        Yay0_D1EE20_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1EE20.Yay0.o(.data);
    SPLAT_END_SEG(data_D1EE20, 0xD1F5A8)
    
    SPLAT_BEGIN_SEG(data_D1F5A8, 0xD1F5A8, 0xD1F5A8, )
        Yay0_D1F5A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1F5A8.Yay0.o(.data);
    SPLAT_END_SEG(data_D1F5A8, 0xD1F788)
    
    SPLAT_BEGIN_SEG(data_D1F788, 0xD1F788, 0xD1F788, )
        Yay0_D1F788_Yay0 = .;
        BUILD_DIR/bin/Yay0/D1F788.Yay0.o(.data);
    SPLAT_END_SEG(data_D1F788, 0xD22778)
    
    SPLAT_BEGIN_SEG(data_D22778, 0xD22778, 0xD22778, )
        Yay0_D22778_Yay0 = .;
        BUILD_DIR/bin/Yay0/D22778.Yay0.o(.data);
    SPLAT_END_SEG(data_D22778, 0xD22B28)
    
    SPLAT_BEGIN_SEG(data_D22B28, 0xD22B28, 0xD22B28, )
        Yay0_D22B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/D22B28.Yay0.o(.data);
    SPLAT_END_SEG(data_D22B28, 0xD22EB0)
    
    SPLAT_BEGIN_SEG(data_D22EB0, 0xD22EB0, 0xD22EB0, )
        Yay0_D22EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D22EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_D22EB0, 0xD235F8)
    
    SPLAT_BEGIN_SEG(data_D235F8, 0xD235F8, 0xD235F8, )
        Yay0_D235F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D235F8.Yay0.o(.data);
    SPLAT_END_SEG(data_D235F8, 0xD24350)
    
    SPLAT_BEGIN_SEG(data_D24350, 0xD24350, 0xD24350, )
        Yay0_D24350_Yay0 = .;
        BUILD_DIR/bin/Yay0/D24350.Yay0.o(.data);
    SPLAT_END_SEG(data_D24350, 0xD250F8)
    
    SPLAT_BEGIN_SEG(data_D250F8, 0xD250F8, 0xD250F8, )
        Yay0_D250F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D250F8.Yay0.o(.data);
    SPLAT_END_SEG(data_D250F8, 0xD25E60)
    
    SPLAT_BEGIN_SEG(data_D25E60, 0xD25E60, 0xD25E60, )
        Yay0_D25E60_Yay0 = .;
        BUILD_DIR/bin/Yay0/D25E60.Yay0.o(.data);
    SPLAT_END_SEG(data_D25E60, 0xD265C8)
    
    SPLAT_BEGIN_SEG(data_D265C8, 0xD265C8, 0xD265C8, )
        Yay0_D265C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D265C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D265C8, 0xD26EF0)
    
    SPLAT_BEGIN_SEG(data_D26EF0, 0xD26EF0, 0xD26EF0, )
        Yay0_D26EF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D26EF0.Yay0.o(.data);
    SPLAT_END_SEG(data_D26EF0, 0xD279A8)
    
    SPLAT_BEGIN_SEG(data_D279A8, 0xD279A8, 0xD279A8, )
        Yay0_D279A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D279A8.Yay0.o(.data);
    SPLAT_END_SEG(data_D279A8, 0xD29230)
    
    SPLAT_BEGIN_SEG(data_D29230, 0xD29230, 0xD29230, )
        Yay0_D29230_Yay0 = .;
        BUILD_DIR/bin/Yay0/D29230.Yay0.o(.data);
    SPLAT_END_SEG(data_D29230, 0xD2A6E0)
    
    SPLAT_BEGIN_SEG(data_D2A6E0, 0xD2A6E0, 0xD2A6E0, )
        Yay0_D2A6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2A6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D2A6E0, 0xD2C620)
    
    SPLAT_BEGIN_SEG(data_D2C620, 0xD2C620, 0xD2C620, )
        Yay0_D2C620_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2C620.Yay0.o(.data);
    SPLAT_END_SEG(data_D2C620, 0xD2D230)
    
    SPLAT_BEGIN_SEG(data_D2D230, 0xD2D230, 0xD2D230, )
        Yay0_D2D230_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2D230.Yay0.o(.data);
    SPLAT_END_SEG(data_D2D230, 0xD2D820)
    
    SPLAT_BEGIN_SEG(data_D2D820, 0xD2D820, 0xD2D820, )
        Yay0_D2D820_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2D820.Yay0.o(.data);
    SPLAT_END_SEG(data_D2D820, 0xD2DE10)
    
    SPLAT_BEGIN_SEG(data_D2DE10, 0xD2DE10, 0xD2DE10, )
        Yay0_D2DE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2DE10.Yay0.o(.data);
    SPLAT_END_SEG(data_D2DE10, 0xD2E580)
    
    SPLAT_BEGIN_SEG(data_D2E580, 0xD2E580, 0xD2E580, )
        Yay0_D2E580_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2E580.Yay0.o(.data);
    SPLAT_END_SEG(data_D2E580, 0xD2EE48)
    
    SPLAT_BEGIN_SEG(data_D2EE48, 0xD2EE48, 0xD2EE48, )
        Yay0_D2EE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2EE48.Yay0.o(.data);
    SPLAT_END_SEG(data_D2EE48, 0xD2F3F0)
    
    SPLAT_BEGIN_SEG(data_D2F3F0, 0xD2F3F0, 0xD2F3F0, )
        Yay0_D2F3F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D2F3F0.Yay0.o(.data);
    SPLAT_END_SEG(data_D2F3F0, 0xD30D98)
    
    SPLAT_BEGIN_SEG(data_D30D98, 0xD30D98, 0xD30D98, )
        Yay0_D30D98_Yay0 = .;
        BUILD_DIR/bin/Yay0/D30D98.Yay0.o(.data);
    SPLAT_END_SEG(data_D30D98, 0xD312F0)
    
    SPLAT_BEGIN_SEG(data_D312F0, 0xD312F0, 0xD312F0, )
        Yay0_D312F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D312F0.Yay0.o(.data);
    SPLAT_END_SEG(data_D312F0, 0xD35908)
    
    SPLAT_BEGIN_SEG(data_D35908, 0xD35908, 0xD35908, )
        Yay0_D35908_Yay0 = .;
        BUILD_DIR/bin/Yay0/D35908.Yay0.o(.data);
    SPLAT_END_SEG(data_D35908, 0xD36518)
    
    SPLAT_BEGIN_SEG(data_D36518, 0xD36518, 0xD36518, )
        Yay0_D36518_Yay0 = .;
        BUILD_DIR/bin/Yay0/D36518.Yay0.o(.data);
    SPLAT_END_SEG(data_D36518, 0xD37100)
    
    SPLAT_BEGIN_SEG(data_D37100, 0xD37100, 0xD37100, )
        Yay0_D37100_Yay0 = .;
        BUILD_DIR/bin/Yay0/D37100.Yay0.o(.data);
    SPLAT_END_SEG(data_D37100, 0xD37B40)
    
    SPLAT_BEGIN_SEG(data_D37B40, 0xD37B40, 0xD37B40, )
        Yay0_D37B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/D37B40.Yay0.o(.data);
    SPLAT_END_SEG(data_D37B40, 0xD380C8)
    
    SPLAT_BEGIN_SEG(data_D380C8, 0xD380C8, 0xD380C8, )
        Yay0_D380C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D380C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D380C8, 0xD394F8)
    
    SPLAT_BEGIN_SEG(data_D394F8, 0xD394F8, 0xD394F8, )
        Yay0_D394F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D394F8.Yay0.o(.data);
    SPLAT_END_SEG(data_D394F8, 0xD3AA18)
    
    SPLAT_BEGIN_SEG(data_D3AA18, 0xD3AA18, 0xD3AA18, )
        Yay0_D3AA18_Yay0 = .;
        BUILD_DIR/bin/Yay0/D3AA18.Yay0.o(.data);
    SPLAT_END_SEG(data_D3AA18, 0xD3C438)
    
    SPLAT_BEGIN_SEG(data_D3C438, 0xD3C438, 0xD3C438, )
        Yay0_D3C438_Yay0 = .;
        BUILD_DIR/bin/Yay0/D3C438.Yay0.o(.data);
    SPLAT_END_SEG(data_D3C438, 0xD41E38)
    
    SPLAT_BEGIN_SEG(data_D41E38, 0xD41E38, 0xD41E38, )
        Yay0_D41E38_Yay0 = .;
        BUILD_DIR/bin/Yay0/D41E38.Yay0.o(.data);
    SPLAT_END_SEG(data_D41E38, 0xD42790)
    
    SPLAT_BEGIN_SEG(data_D42790, 0xD42790, 0xD42790, )
        Yay0_D42790_Yay0 = .;
        BUILD_DIR/bin/Yay0/D42790.Yay0.o(.data);
    SPLAT_END_SEG(data_D42790, 0xD428E8)
    
    SPLAT_BEGIN_SEG(data_D428E8, 0xD428E8, 0xD428E8, )
        Yay0_D428E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D428E8.Yay0.o(.data);
    SPLAT_END_SEG(data_D428E8, 0xD44B80)
    
    SPLAT_BEGIN_SEG(data_D44B80, 0xD44B80, 0xD44B80, )
        Yay0_D44B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/D44B80.Yay0.o(.data);
    SPLAT_END_SEG(data_D44B80, 0xD45718)
    
    SPLAT_BEGIN_SEG(data_D45718, 0xD45718, 0xD45718, )
        Yay0_D45718_Yay0 = .;
        BUILD_DIR/bin/Yay0/D45718.Yay0.o(.data);
    SPLAT_END_SEG(data_D45718, 0xD457C8)
    
    SPLAT_BEGIN_SEG(data_D457C8, 0xD457C8, 0xD457C8, )
        Yay0_D457C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D457C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D457C8, 0xD458D0)
    
    SPLAT_BEGIN_SEG(data_D458D0, 0xD458D0, 0xD458D0, )
        Yay0_D458D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D458D0.Yay0.o(.data);
    SPLAT_END_SEG(data_D458D0, 0xD459E0)
    
    SPLAT_BEGIN_SEG(data_D459E0, 0xD459E0, 0xD459E0, )
        Yay0_D459E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D459E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D459E0, 0xD465E8)
    
    SPLAT_BEGIN_SEG(data_D465E8, 0xD465E8, 0xD465E8, )
        Yay0_D465E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D465E8.Yay0.o(.data);
    SPLAT_END_SEG(data_D465E8, 0xD46ED0)
    
    SPLAT_BEGIN_SEG(data_D46ED0, 0xD46ED0, 0xD46ED0, )
        Yay0_D46ED0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D46ED0.Yay0.o(.data);
    SPLAT_END_SEG(data_D46ED0, 0xD49F98)
    
    SPLAT_BEGIN_SEG(data_D49F98, 0xD49F98, 0xD49F98, )
        Yay0_D49F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/D49F98.Yay0.o(.data);
    SPLAT_END_SEG(data_D49F98, 0xD4BCD0)
    
    SPLAT_BEGIN_SEG(data_D4BCD0, 0xD4BCD0, 0xD4BCD0, )
        Yay0_D4BCD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4BCD0.Yay0.o(.data);
    SPLAT_END_SEG(data_D4BCD0, 0xD4D7A8)
    
    SPLAT_BEGIN_SEG(data_D4D7A8, 0xD4D7A8, 0xD4D7A8, )
        Yay0_D4D7A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4D7A8.Yay0.o(.data);
    SPLAT_END_SEG(data_D4D7A8, 0xD4DA80)
    
    SPLAT_BEGIN_SEG(data_D4DA80, 0xD4DA80, 0xD4DA80, )
        Yay0_D4DA80_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4DA80.Yay0.o(.data);
    SPLAT_END_SEG(data_D4DA80, 0xD4E068)
    
    SPLAT_BEGIN_SEG(data_D4E068, 0xD4E068, 0xD4E068, )
        Yay0_D4E068_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4E068.Yay0.o(.data);
    SPLAT_END_SEG(data_D4E068, 0xD4E2B0)
    
    SPLAT_BEGIN_SEG(data_D4E2B0, 0xD4E2B0, 0xD4E2B0, )
        Yay0_D4E2B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4E2B0.Yay0.o(.data);
    SPLAT_END_SEG(data_D4E2B0, 0xD4E388)
    
    SPLAT_BEGIN_SEG(data_D4E388, 0xD4E388, 0xD4E388, )
        Yay0_D4E388_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4E388.Yay0.o(.data);
    SPLAT_END_SEG(data_D4E388, 0xD4E540)
    
    SPLAT_BEGIN_SEG(data_D4E540, 0xD4E540, 0xD4E540, )
        Yay0_D4E540_Yay0 = .;
        BUILD_DIR/bin/Yay0/D4E540.Yay0.o(.data);
    SPLAT_END_SEG(data_D4E540, 0xD50588)
    
    SPLAT_BEGIN_SEG(data_D50588, 0xD50588, 0xD50588, )
        Yay0_D50588_Yay0 = .;
        BUILD_DIR/bin/Yay0/D50588.Yay0.o(.data);
    SPLAT_END_SEG(data_D50588, 0xD51FD0)
    
    SPLAT_BEGIN_SEG(data_D51FD0, 0xD51FD0, 0xD51FD0, )
        Yay0_D51FD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D51FD0.Yay0.o(.data);
    SPLAT_END_SEG(data_D51FD0, 0xD53B10)
    
    SPLAT_BEGIN_SEG(data_D53B10, 0xD53B10, 0xD53B10, )
        Yay0_D53B10_Yay0 = .;
        BUILD_DIR/bin/Yay0/D53B10.Yay0.o(.data);
    SPLAT_END_SEG(data_D53B10, 0xD55338)
    
    SPLAT_BEGIN_SEG(data_D55338, 0xD55338, 0xD55338, )
        Yay0_D55338_Yay0 = .;
        BUILD_DIR/bin/Yay0/D55338.Yay0.o(.data);
    SPLAT_END_SEG(data_D55338, 0xD57428)
    
    SPLAT_BEGIN_SEG(data_D57428, 0xD57428, 0xD57428, )
        Yay0_D57428_Yay0 = .;
        BUILD_DIR/bin/Yay0/D57428.Yay0.o(.data);
    SPLAT_END_SEG(data_D57428, 0xD5B318)
    
    SPLAT_BEGIN_SEG(data_D5B318, 0xD5B318, 0xD5B318, )
        Yay0_D5B318_Yay0 = .;
        BUILD_DIR/bin/Yay0/D5B318.Yay0.o(.data);
    SPLAT_END_SEG(data_D5B318, 0xD5C888)
    
    SPLAT_BEGIN_SEG(data_D5C888, 0xD5C888, 0xD5C888, )
        Yay0_D5C888_Yay0 = .;
        BUILD_DIR/bin/Yay0/D5C888.Yay0.o(.data);
    SPLAT_END_SEG(data_D5C888, 0xD5E2E0)
    
    SPLAT_BEGIN_SEG(data_D5E2E0, 0xD5E2E0, 0xD5E2E0, )
        Yay0_D5E2E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D5E2E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D5E2E0, 0xD5E6C8)
    
    SPLAT_BEGIN_SEG(data_D5E6C8, 0xD5E6C8, 0xD5E6C8, )
        Yay0_D5E6C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D5E6C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D5E6C8, 0xD5F1F0)
    
    SPLAT_BEGIN_SEG(data_D5F1F0, 0xD5F1F0, 0xD5F1F0, )
        Yay0_D5F1F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D5F1F0.Yay0.o(.data);
    SPLAT_END_SEG(data_D5F1F0, 0xD60C70)
    
    SPLAT_BEGIN_SEG(data_D60C70, 0xD60C70, 0xD60C70, )
        Yay0_D60C70_Yay0 = .;
        BUILD_DIR/bin/Yay0/D60C70.Yay0.o(.data);
    SPLAT_END_SEG(data_D60C70, 0xD63F98)
    
    SPLAT_BEGIN_SEG(data_D63F98, 0xD63F98, 0xD63F98, )
        Yay0_D63F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/D63F98.Yay0.o(.data);
    SPLAT_END_SEG(data_D63F98, 0xD642D8)
    
    SPLAT_BEGIN_SEG(data_D642D8, 0xD642D8, 0xD642D8, )
        Yay0_D642D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D642D8.Yay0.o(.data);
    SPLAT_END_SEG(data_D642D8, 0xD64A28)
    
    SPLAT_BEGIN_SEG(data_D64A28, 0xD64A28, 0xD64A28, )
        Yay0_D64A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/D64A28.Yay0.o(.data);
    SPLAT_END_SEG(data_D64A28, 0xD64F98)
    
    SPLAT_BEGIN_SEG(data_D64F98, 0xD64F98, 0xD64F98, )
        Yay0_D64F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/D64F98.Yay0.o(.data);
    SPLAT_END_SEG(data_D64F98, 0xD657F0)
    
    SPLAT_BEGIN_SEG(data_D657F0, 0xD657F0, 0xD657F0, )
        Yay0_D657F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D657F0.Yay0.o(.data);
    SPLAT_END_SEG(data_D657F0, 0xD65D80)
    
    SPLAT_BEGIN_SEG(data_D65D80, 0xD65D80, 0xD65D80, )
        Yay0_D65D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/D65D80.Yay0.o(.data);
    SPLAT_END_SEG(data_D65D80, 0xD66058)
    
    SPLAT_BEGIN_SEG(data_D66058, 0xD66058, 0xD66058, )
        Yay0_D66058_Yay0 = .;
        BUILD_DIR/bin/Yay0/D66058.Yay0.o(.data);
    SPLAT_END_SEG(data_D66058, 0xD661D0)
    
    SPLAT_BEGIN_SEG(data_D661D0, 0xD661D0, 0xD661D0, )
        Yay0_D661D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D661D0.Yay0.o(.data);
    SPLAT_END_SEG(data_D661D0, 0xD663E8)
    
    SPLAT_BEGIN_SEG(data_D663E8, 0xD663E8, 0xD663E8, )
        Yay0_D663E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D663E8.Yay0.o(.data);
    SPLAT_END_SEG(data_D663E8, 0xD666A8)
    
    SPLAT_BEGIN_SEG(data_D666A8, 0xD666A8, 0xD666A8, )
        Yay0_D666A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D666A8.Yay0.o(.data);
    SPLAT_END_SEG(data_D666A8, 0xD66828)
    
    SPLAT_BEGIN_SEG(data_D66828, 0xD66828, 0xD66828, )
        Yay0_D66828_Yay0 = .;
        BUILD_DIR/bin/Yay0/D66828.Yay0.o(.data);
    SPLAT_END_SEG(data_D66828, 0xD66910)
    
    SPLAT_BEGIN_SEG(data_D66910, 0xD66910, 0xD66910, )
        Yay0_D66910_Yay0 = .;
        BUILD_DIR/bin/Yay0/D66910.Yay0.o(.data);
    SPLAT_END_SEG(data_D66910, 0xD66C60)
    
    SPLAT_BEGIN_SEG(data_D66C60, 0xD66C60, 0xD66C60, )
        Yay0_D66C60_Yay0 = .;
        BUILD_DIR/bin/Yay0/D66C60.Yay0.o(.data);
    SPLAT_END_SEG(data_D66C60, 0xD676C8)
    
    SPLAT_BEGIN_SEG(data_D676C8, 0xD676C8, 0xD676C8, )
        Yay0_D676C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D676C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D676C8, 0xD67B58)
    
    SPLAT_BEGIN_SEG(data_D67B58, 0xD67B58, 0xD67B58, )
        Yay0_D67B58_Yay0 = .;
        BUILD_DIR/bin/Yay0/D67B58.Yay0.o(.data);
    SPLAT_END_SEG(data_D67B58, 0xD68990)
    
    SPLAT_BEGIN_SEG(data_D68990, 0xD68990, 0xD68990, )
        Yay0_D68990_Yay0 = .;
        BUILD_DIR/bin/Yay0/D68990.Yay0.o(.data);
    SPLAT_END_SEG(data_D68990, 0xD68B70)
    
    SPLAT_BEGIN_SEG(data_D68B70, 0xD68B70, 0xD68B70, )
        Yay0_D68B70_Yay0 = .;
        BUILD_DIR/bin/Yay0/D68B70.Yay0.o(.data);
    SPLAT_END_SEG(data_D68B70, 0xD68E78)
    
    SPLAT_BEGIN_SEG(data_D68E78, 0xD68E78, 0xD68E78, )
        Yay0_D68E78_Yay0 = .;
        BUILD_DIR/bin/Yay0/D68E78.Yay0.o(.data);
    SPLAT_END_SEG(data_D68E78, 0xD69520)
    
    SPLAT_BEGIN_SEG(data_D69520, 0xD69520, 0xD69520, )
        Yay0_D69520_Yay0 = .;
        BUILD_DIR/bin/Yay0/D69520.Yay0.o(.data);
    SPLAT_END_SEG(data_D69520, 0xD69AB0)
    
    SPLAT_BEGIN_SEG(data_D69AB0, 0xD69AB0, 0xD69AB0, )
        Yay0_D69AB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D69AB0.Yay0.o(.data);
    SPLAT_END_SEG(data_D69AB0, 0xD6A098)
    
    SPLAT_BEGIN_SEG(data_D6A098, 0xD6A098, 0xD6A098, )
        Yay0_D6A098_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6A098.Yay0.o(.data);
    SPLAT_END_SEG(data_D6A098, 0xD6A658)
    
    SPLAT_BEGIN_SEG(data_D6A658, 0xD6A658, 0xD6A658, )
        Yay0_D6A658_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6A658.Yay0.o(.data);
    SPLAT_END_SEG(data_D6A658, 0xD6ACA0)
    
    SPLAT_BEGIN_SEG(data_D6ACA0, 0xD6ACA0, 0xD6ACA0, )
        Yay0_D6ACA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6ACA0.Yay0.o(.data);
    SPLAT_END_SEG(data_D6ACA0, 0xD6B428)
    
    SPLAT_BEGIN_SEG(data_D6B428, 0xD6B428, 0xD6B428, )
        Yay0_D6B428_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6B428.Yay0.o(.data);
    SPLAT_END_SEG(data_D6B428, 0xD6C3E0)
    
    SPLAT_BEGIN_SEG(data_D6C3E0, 0xD6C3E0, 0xD6C3E0, )
        Yay0_D6C3E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6C3E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D6C3E0, 0xD6CC60)
    
    SPLAT_BEGIN_SEG(data_D6CC60, 0xD6CC60, 0xD6CC60, )
        Yay0_D6CC60_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6CC60.Yay0.o(.data);
    SPLAT_END_SEG(data_D6CC60, 0xD6DD60)
    
    SPLAT_BEGIN_SEG(data_D6DD60, 0xD6DD60, 0xD6DD60, )
        Yay0_D6DD60_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6DD60.Yay0.o(.data);
    SPLAT_END_SEG(data_D6DD60, 0xD6E2A0)
    
    SPLAT_BEGIN_SEG(data_D6E2A0, 0xD6E2A0, 0xD6E2A0, )
        Yay0_D6E2A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6E2A0.Yay0.o(.data);
    SPLAT_END_SEG(data_D6E2A0, 0xD6E398)
    
    SPLAT_BEGIN_SEG(data_D6E398, 0xD6E398, 0xD6E398, )
        Yay0_D6E398_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6E398.Yay0.o(.data);
    SPLAT_END_SEG(data_D6E398, 0xD6E428)
    
    SPLAT_BEGIN_SEG(data_D6E428, 0xD6E428, 0xD6E428, )
        Yay0_D6E428_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6E428.Yay0.o(.data);
    SPLAT_END_SEG(data_D6E428, 0xD6E6C8)
    
    SPLAT_BEGIN_SEG(data_D6E6C8, 0xD6E6C8, 0xD6E6C8, )
        Yay0_D6E6C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6E6C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D6E6C8, 0xD6E968)
    
    SPLAT_BEGIN_SEG(data_D6E968, 0xD6E968, 0xD6E968, )
        Yay0_D6E968_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6E968.Yay0.o(.data);
    SPLAT_END_SEG(data_D6E968, 0xD6EB50)
    
    SPLAT_BEGIN_SEG(data_D6EB50, 0xD6EB50, 0xD6EB50, )
        Yay0_D6EB50_Yay0 = .;
        BUILD_DIR/bin/Yay0/D6EB50.Yay0.o(.data);
    SPLAT_END_SEG(data_D6EB50, 0xD71808)
    
    SPLAT_BEGIN_SEG(data_D71808, 0xD71808, 0xD71808, )
        Yay0_D71808_Yay0 = .;
        BUILD_DIR/bin/Yay0/D71808.Yay0.o(.data);
    SPLAT_END_SEG(data_D71808, 0xD73090)
    
    SPLAT_BEGIN_SEG(data_D73090, 0xD73090, 0xD73090, )
        Yay0_D73090_Yay0 = .;
        BUILD_DIR/bin/Yay0/D73090.Yay0.o(.data);
    SPLAT_END_SEG(data_D73090, 0xD7A638)
    
    SPLAT_BEGIN_SEG(data_D7A638, 0xD7A638, 0xD7A638, )
        Yay0_D7A638_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7A638.Yay0.o(.data);
    SPLAT_END_SEG(data_D7A638, 0xD7A880)
    
    SPLAT_BEGIN_SEG(data_D7A880, 0xD7A880, 0xD7A880, )
        Yay0_D7A880_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7A880.Yay0.o(.data);
    SPLAT_END_SEG(data_D7A880, 0xD7AD88)
    
    SPLAT_BEGIN_SEG(data_D7AD88, 0xD7AD88, 0xD7AD88, )
        Yay0_D7AD88_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7AD88.Yay0.o(.data);
    SPLAT_END_SEG(data_D7AD88, 0xD7B410)
    
    SPLAT_BEGIN_SEG(data_D7B410, 0xD7B410, 0xD7B410, )
        Yay0_D7B410_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7B410.Yay0.o(.data);
    SPLAT_END_SEG(data_D7B410, 0xD7B968)
    
    SPLAT_BEGIN_SEG(data_D7B968, 0xD7B968, 0xD7B968, )
        Yay0_D7B968_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7B968.Yay0.o(.data);
    SPLAT_END_SEG(data_D7B968, 0xD7BC10)
    
    SPLAT_BEGIN_SEG(data_D7BC10, 0xD7BC10, 0xD7BC10, )
        Yay0_D7BC10_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7BC10.Yay0.o(.data);
    SPLAT_END_SEG(data_D7BC10, 0xD7C640)
    
    SPLAT_BEGIN_SEG(data_D7C640, 0xD7C640, 0xD7C640, )
        Yay0_D7C640_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7C640.Yay0.o(.data);
    SPLAT_END_SEG(data_D7C640, 0xD7CFE0)
    
    SPLAT_BEGIN_SEG(data_D7CFE0, 0xD7CFE0, 0xD7CFE0, )
        Yay0_D7CFE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7CFE0.Yay0.o(.data);
    SPLAT_END_SEG(data_D7CFE0, 0xD7D5D8)
    
    SPLAT_BEGIN_SEG(data_D7D5D8, 0xD7D5D8, 0xD7D5D8, )
        Yay0_D7D5D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7D5D8.Yay0.o(.data);
    SPLAT_END_SEG(data_D7D5D8, 0xD7DF60)
    
    SPLAT_BEGIN_SEG(data_D7DF60, 0xD7DF60, 0xD7DF60, )
        Yay0_D7DF60_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7DF60.Yay0.o(.data);
    SPLAT_END_SEG(data_D7DF60, 0xD7EC90)
    
    SPLAT_BEGIN_SEG(data_D7EC90, 0xD7EC90, 0xD7EC90, )
        Yay0_D7EC90_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7EC90.Yay0.o(.data);
    SPLAT_END_SEG(data_D7EC90, 0xD7F168)
    
    SPLAT_BEGIN_SEG(data_D7F168, 0xD7F168, 0xD7F168, )
        Yay0_D7F168_Yay0 = .;
        BUILD_DIR/bin/Yay0/D7F168.Yay0.o(.data);
    SPLAT_END_SEG(data_D7F168, 0xD82E18)
    
    SPLAT_BEGIN_SEG(data_D82E18, 0xD82E18, 0xD82E18, )
        Yay0_D82E18_Yay0 = .;
        BUILD_DIR/bin/Yay0/D82E18.Yay0.o(.data);
    SPLAT_END_SEG(data_D82E18, 0xD861D0)
    
    SPLAT_BEGIN_SEG(data_D861D0, 0xD861D0, 0xD861D0, )
        Yay0_D861D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D861D0.Yay0.o(.data);
    SPLAT_END_SEG(data_D861D0, 0xD864E8)
    
    SPLAT_BEGIN_SEG(data_D864E8, 0xD864E8, 0xD864E8, )
        Yay0_D864E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D864E8.Yay0.o(.data);
    SPLAT_END_SEG(data_D864E8, 0xD86608)
    
    SPLAT_BEGIN_SEG(data_D86608, 0xD86608, 0xD86608, )
        Yay0_D86608_Yay0 = .;
        BUILD_DIR/bin/Yay0/D86608.Yay0.o(.data);
    SPLAT_END_SEG(data_D86608, 0xD86B28)
    
    SPLAT_BEGIN_SEG(data_D86B28, 0xD86B28, 0xD86B28, )
        Yay0_D86B28_Yay0 = .;
        BUILD_DIR/bin/Yay0/D86B28.Yay0.o(.data);
    SPLAT_END_SEG(data_D86B28, 0xD876D8)
    
    SPLAT_BEGIN_SEG(data_D876D8, 0xD876D8, 0xD876D8, )
        Yay0_D876D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D876D8.Yay0.o(.data);
    SPLAT_END_SEG(data_D876D8, 0xD879D0)
    
    SPLAT_BEGIN_SEG(data_D879D0, 0xD879D0, 0xD879D0, )
        Yay0_D879D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D879D0.Yay0.o(.data);
    SPLAT_END_SEG(data_D879D0, 0xD88D80)
    
    SPLAT_BEGIN_SEG(data_D88D80, 0xD88D80, 0xD88D80, )
        Yay0_D88D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/D88D80.Yay0.o(.data);
    SPLAT_END_SEG(data_D88D80, 0xD88FD8)
    
    SPLAT_BEGIN_SEG(data_D88FD8, 0xD88FD8, 0xD88FD8, )
        Yay0_D88FD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D88FD8.Yay0.o(.data);
    SPLAT_END_SEG(data_D88FD8, 0xD894E0)
    
    SPLAT_BEGIN_SEG(data_D894E0, 0xD894E0, 0xD894E0, )
        Yay0_D894E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D894E0.Yay0.o(.data);
    SPLAT_END_SEG(data_D894E0, 0xD899F8)
    
    SPLAT_BEGIN_SEG(data_D899F8, 0xD899F8, 0xD899F8, )
        Yay0_D899F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D899F8.Yay0.o(.data);
    SPLAT_END_SEG(data_D899F8, 0xD89F18)
    
    SPLAT_BEGIN_SEG(data_D89F18, 0xD89F18, 0xD89F18, )
        Yay0_D89F18_Yay0 = .;
        BUILD_DIR/bin/Yay0/D89F18.Yay0.o(.data);
    SPLAT_END_SEG(data_D89F18, 0xD8B8C8)
    
    SPLAT_BEGIN_SEG(data_D8B8C8, 0xD8B8C8, 0xD8B8C8, )
        Yay0_D8B8C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8B8C8.Yay0.o(.data);
    SPLAT_END_SEG(data_D8B8C8, 0xD8D210)
    
    SPLAT_BEGIN_SEG(data_D8D210, 0xD8D210, 0xD8D210, )
        Yay0_D8D210_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8D210.Yay0.o(.data);
    SPLAT_END_SEG(data_D8D210, 0xD8D8B0)
    
    SPLAT_BEGIN_SEG(data_D8D8B0, 0xD8D8B0, 0xD8D8B0, )
        Yay0_D8D8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8D8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_D8D8B0, 0xD8DE90)
    
    SPLAT_BEGIN_SEG(data_D8DE90, 0xD8DE90, 0xD8DE90, )
        Yay0_D8DE90_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8DE90.Yay0.o(.data);
    SPLAT_END_SEG(data_D8DE90, 0xD8E528)
    
    SPLAT_BEGIN_SEG(data_D8E528, 0xD8E528, 0xD8E528, )
        Yay0_D8E528_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8E528.Yay0.o(.data);
    SPLAT_END_SEG(data_D8E528, 0xD8EB10)
    
    SPLAT_BEGIN_SEG(data_D8EB10, 0xD8EB10, 0xD8EB10, )
        Yay0_D8EB10_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8EB10.Yay0.o(.data);
    SPLAT_END_SEG(data_D8EB10, 0xD8F590)
    
    SPLAT_BEGIN_SEG(data_D8F590, 0xD8F590, 0xD8F590, )
        Yay0_D8F590_Yay0 = .;
        BUILD_DIR/bin/Yay0/D8F590.Yay0.o(.data);
    SPLAT_END_SEG(data_D8F590, 0xD90190)
    
    SPLAT_BEGIN_SEG(data_D90190, 0xD90190, 0xD90190, )
        Yay0_D90190_Yay0 = .;
        BUILD_DIR/bin/Yay0/D90190.Yay0.o(.data);
    SPLAT_END_SEG(data_D90190, 0xD917E8)
    
    SPLAT_BEGIN_SEG(data_D917E8, 0xD917E8, 0xD917E8, )
        Yay0_D917E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D917E8.Yay0.o(.data);
    SPLAT_END_SEG(data_D917E8, 0xD945D8)
    
    SPLAT_BEGIN_SEG(data_D945D8, 0xD945D8, 0xD945D8, )
        Yay0_D945D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D945D8.Yay0.o(.data);
    SPLAT_END_SEG(data_D945D8, 0xD94C68)
    
    SPLAT_BEGIN_SEG(data_D94C68, 0xD94C68, 0xD94C68, )
        Yay0_D94C68_Yay0 = .;
        BUILD_DIR/bin/Yay0/D94C68.Yay0.o(.data);
    SPLAT_END_SEG(data_D94C68, 0xD95248)
    
    SPLAT_BEGIN_SEG(data_D95248, 0xD95248, 0xD95248, )
        Yay0_D95248_Yay0 = .;
        BUILD_DIR/bin/Yay0/D95248.Yay0.o(.data);
    SPLAT_END_SEG(data_D95248, 0xD958D8)
    
    SPLAT_BEGIN_SEG(data_D958D8, 0xD958D8, 0xD958D8, )
        Yay0_D958D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D958D8.Yay0.o(.data);
    SPLAT_END_SEG(data_D958D8, 0xD95EB8)
    
    SPLAT_BEGIN_SEG(data_D95EB8, 0xD95EB8, 0xD95EB8, )
        Yay0_D95EB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D95EB8.Yay0.o(.data);
    SPLAT_END_SEG(data_D95EB8, 0xD96458)
    
    SPLAT_BEGIN_SEG(data_D96458, 0xD96458, 0xD96458, )
        Yay0_D96458_Yay0 = .;
        BUILD_DIR/bin/Yay0/D96458.Yay0.o(.data);
    SPLAT_END_SEG(data_D96458, 0xD96760)
    
    SPLAT_BEGIN_SEG(data_D96760, 0xD96760, 0xD96760, )
        Yay0_D96760_Yay0 = .;
        BUILD_DIR/bin/Yay0/D96760.Yay0.o(.data);
    SPLAT_END_SEG(data_D96760, 0xD96CE8)
    
    SPLAT_BEGIN_SEG(data_D96CE8, 0xD96CE8, 0xD96CE8, )
        Yay0_D96CE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D96CE8.Yay0.o(.data);
    SPLAT_END_SEG(data_D96CE8, 0xD97338)
    
    SPLAT_BEGIN_SEG(data_D97338, 0xD97338, 0xD97338, )
        Yay0_D97338_Yay0 = .;
        BUILD_DIR/bin/Yay0/D97338.Yay0.o(.data);
    SPLAT_END_SEG(data_D97338, 0xD99790)
    
    SPLAT_BEGIN_SEG(data_D99790, 0xD99790, 0xD99790, )
        Yay0_D99790_Yay0 = .;
        BUILD_DIR/bin/Yay0/D99790.Yay0.o(.data);
    SPLAT_END_SEG(data_D99790, 0xD99BD0)
    
    SPLAT_BEGIN_SEG(data_D99BD0, 0xD99BD0, 0xD99BD0, )
        Yay0_D99BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D99BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_D99BD0, 0xD99F58)
    
    SPLAT_BEGIN_SEG(data_D99F58, 0xD99F58, 0xD99F58, )
        Yay0_D99F58_Yay0 = .;
        BUILD_DIR/bin/Yay0/D99F58.Yay0.o(.data);
    SPLAT_END_SEG(data_D99F58, 0xD9A5F8)
    
    SPLAT_BEGIN_SEG(data_D9A5F8, 0xD9A5F8, 0xD9A5F8, )
        Yay0_D9A5F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9A5F8.Yay0.o(.data);
    SPLAT_END_SEG(data_D9A5F8, 0xD9ABE0)
    
    SPLAT_BEGIN_SEG(data_D9ABE0, 0xD9ABE0, 0xD9ABE0, )
        Yay0_D9ABE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9ABE0.Yay0.o(.data);
    SPLAT_END_SEG(data_D9ABE0, 0xD9B158)
    
    SPLAT_BEGIN_SEG(data_D9B158, 0xD9B158, 0xD9B158, )
        Yay0_D9B158_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9B158.Yay0.o(.data);
    SPLAT_END_SEG(data_D9B158, 0xD9B7F0)
    
    SPLAT_BEGIN_SEG(data_D9B7F0, 0xD9B7F0, 0xD9B7F0, )
        Yay0_D9B7F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9B7F0.Yay0.o(.data);
    SPLAT_END_SEG(data_D9B7F0, 0xD9BDE0)
    
    SPLAT_BEGIN_SEG(data_D9BDE0, 0xD9BDE0, 0xD9BDE0, )
        Yay0_D9BDE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9BDE0.Yay0.o(.data);
    SPLAT_END_SEG(data_D9BDE0, 0xD9C388)
    
    SPLAT_BEGIN_SEG(data_D9C388, 0xD9C388, 0xD9C388, )
        Yay0_D9C388_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9C388.Yay0.o(.data);
    SPLAT_END_SEG(data_D9C388, 0xD9ECC8)
    
    SPLAT_BEGIN_SEG(data_D9ECC8, 0xD9ECC8, 0xD9ECC8, )
        Yay0_D9ECC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/D9ECC8.Yay0.o(.data);
    SPLAT_END_SEG(data_D9ECC8, 0xDA0328)
    
    SPLAT_BEGIN_SEG(data_DA0328, 0xDA0328, 0xDA0328, )
        Yay0_DA0328_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA0328.Yay0.o(.data);
    SPLAT_END_SEG(data_DA0328, 0xDA09C0)
    
    SPLAT_BEGIN_SEG(data_DA09C0, 0xDA09C0, 0xDA09C0, )
        Yay0_DA09C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA09C0.Yay0.o(.data);
    SPLAT_END_SEG(data_DA09C0, 0xDA0FA0)
    
    SPLAT_BEGIN_SEG(data_DA0FA0, 0xDA0FA0, 0xDA0FA0, )
        Yay0_DA0FA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA0FA0.Yay0.o(.data);
    SPLAT_END_SEG(data_DA0FA0, 0xDA1638)
    
    SPLAT_BEGIN_SEG(data_DA1638, 0xDA1638, 0xDA1638, )
        Yay0_DA1638_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA1638.Yay0.o(.data);
    SPLAT_END_SEG(data_DA1638, 0xDA1C20)
    
    SPLAT_BEGIN_SEG(data_DA1C20, 0xDA1C20, 0xDA1C20, )
        Yay0_DA1C20_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA1C20.Yay0.o(.data);
    SPLAT_END_SEG(data_DA1C20, 0xDA2160)
    
    SPLAT_BEGIN_SEG(data_DA2160, 0xDA2160, 0xDA2160, )
        Yay0_DA2160_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA2160.Yay0.o(.data);
    SPLAT_END_SEG(data_DA2160, 0xDA27E8)
    
    SPLAT_BEGIN_SEG(data_DA27E8, 0xDA27E8, 0xDA27E8, )
        Yay0_DA27E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA27E8.Yay0.o(.data);
    SPLAT_END_SEG(data_DA27E8, 0xDA2E10)
    
    SPLAT_BEGIN_SEG(data_DA2E10, 0xDA2E10, 0xDA2E10, )
        Yay0_DA2E10_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA2E10.Yay0.o(.data);
    SPLAT_END_SEG(data_DA2E10, 0xDA4CF0)
    
    SPLAT_BEGIN_SEG(data_DA4CF0, 0xDA4CF0, 0xDA4CF0, )
        Yay0_DA4CF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA4CF0.Yay0.o(.data);
    SPLAT_END_SEG(data_DA4CF0, 0xDA4FE8)
    
    SPLAT_BEGIN_SEG(data_DA4FE8, 0xDA4FE8, 0xDA4FE8, )
        Yay0_DA4FE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA4FE8.Yay0.o(.data);
    SPLAT_END_SEG(data_DA4FE8, 0xDA5848)
    
    SPLAT_BEGIN_SEG(data_DA5848, 0xDA5848, 0xDA5848, )
        Yay0_DA5848_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA5848.Yay0.o(.data);
    SPLAT_END_SEG(data_DA5848, 0xDA6620)
    
    SPLAT_BEGIN_SEG(data_DA6620, 0xDA6620, 0xDA6620, )
        Yay0_DA6620_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA6620.Yay0.o(.data);
    SPLAT_END_SEG(data_DA6620, 0xDA6888)
    
    SPLAT_BEGIN_SEG(data_DA6888, 0xDA6888, 0xDA6888, )
        Yay0_DA6888_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA6888.Yay0.o(.data);
    SPLAT_END_SEG(data_DA6888, 0xDA6D88)
    
    SPLAT_BEGIN_SEG(data_DA6D88, 0xDA6D88, 0xDA6D88, )
        Yay0_DA6D88_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA6D88.Yay0.o(.data);
    SPLAT_END_SEG(data_DA6D88, 0xDA7118)
    
    SPLAT_BEGIN_SEG(data_DA7118, 0xDA7118, 0xDA7118, )
        Yay0_DA7118_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA7118.Yay0.o(.data);
    SPLAT_END_SEG(data_DA7118, 0xDA7A98)
    
    SPLAT_BEGIN_SEG(data_DA7A98, 0xDA7A98, 0xDA7A98, )
        Yay0_DA7A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA7A98.Yay0.o(.data);
    SPLAT_END_SEG(data_DA7A98, 0xDA8898)
    
    SPLAT_BEGIN_SEG(data_DA8898, 0xDA8898, 0xDA8898, )
        Yay0_DA8898_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA8898.Yay0.o(.data);
    SPLAT_END_SEG(data_DA8898, 0xDA8DD8)
    
    SPLAT_BEGIN_SEG(data_DA8DD8, 0xDA8DD8, 0xDA8DD8, )
        Yay0_DA8DD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA8DD8.Yay0.o(.data);
    SPLAT_END_SEG(data_DA8DD8, 0xDA9190)
    
    SPLAT_BEGIN_SEG(data_DA9190, 0xDA9190, 0xDA9190, )
        Yay0_DA9190_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA9190.Yay0.o(.data);
    SPLAT_END_SEG(data_DA9190, 0xDA9228)
    
    SPLAT_BEGIN_SEG(data_DA9228, 0xDA9228, 0xDA9228, )
        Yay0_DA9228_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA9228.Yay0.o(.data);
    SPLAT_END_SEG(data_DA9228, 0xDA9490)
    
    SPLAT_BEGIN_SEG(data_DA9490, 0xDA9490, 0xDA9490, )
        Yay0_DA9490_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA9490.Yay0.o(.data);
    SPLAT_END_SEG(data_DA9490, 0xDA9618)
    
    SPLAT_BEGIN_SEG(data_DA9618, 0xDA9618, 0xDA9618, )
        Yay0_DA9618_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA9618.Yay0.o(.data);
    SPLAT_END_SEG(data_DA9618, 0xDA97B0)
    
    SPLAT_BEGIN_SEG(data_DA97B0, 0xDA97B0, 0xDA97B0, )
        Yay0_DA97B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA97B0.Yay0.o(.data);
    SPLAT_END_SEG(data_DA97B0, 0xDA9910)
    
    SPLAT_BEGIN_SEG(data_DA9910, 0xDA9910, 0xDA9910, )
        Yay0_DA9910_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA9910.Yay0.o(.data);
    SPLAT_END_SEG(data_DA9910, 0xDA9CB0)
    
    SPLAT_BEGIN_SEG(data_DA9CB0, 0xDA9CB0, 0xDA9CB0, )
        Yay0_DA9CB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DA9CB0.Yay0.o(.data);
    SPLAT_END_SEG(data_DA9CB0, 0xDAA020)
    
    SPLAT_BEGIN_SEG(data_DAA020, 0xDAA020, 0xDAA020, )
        Yay0_DAA020_Yay0 = .;
        BUILD_DIR/bin/Yay0/DAA020.Yay0.o(.data);
    SPLAT_END_SEG(data_DAA020, 0xDAA2C8)
    
    SPLAT_BEGIN_SEG(data_DAA2C8, 0xDAA2C8, 0xDAA2C8, )
        Yay0_DAA2C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DAA2C8.Yay0.o(.data);
    SPLAT_END_SEG(data_DAA2C8, 0xDAA638)
    
    SPLAT_BEGIN_SEG(data_DAA638, 0xDAA638, 0xDAA638, )
        Yay0_DAA638_Yay0 = .;
        BUILD_DIR/bin/Yay0/DAA638.Yay0.o(.data);
    SPLAT_END_SEG(data_DAA638, 0xDAF538)
    
    SPLAT_BEGIN_SEG(data_DAF538, 0xDAF538, 0xDAF538, )
        Yay0_DAF538_Yay0 = .;
        BUILD_DIR/bin/Yay0/DAF538.Yay0.o(.data);
    SPLAT_END_SEG(data_DAF538, 0xDB76D0)
    
    SPLAT_BEGIN_SEG(data_DB76D0, 0xDB76D0, 0xDB76D0, )
        Yay0_DB76D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DB76D0.Yay0.o(.data);
    SPLAT_END_SEG(data_DB76D0, 0xDBC6B8)
    
    SPLAT_BEGIN_SEG(data_DBC6B8, 0xDBC6B8, 0xDBC6B8, )
        Yay0_DBC6B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DBC6B8.Yay0.o(.data);
    SPLAT_END_SEG(data_DBC6B8, 0xDC6000)
    
    SPLAT_BEGIN_SEG(data_DC6000, 0xDC6000, 0xDC6000, )
        Yay0_DC6000_Yay0 = .;
        BUILD_DIR/bin/Yay0/DC6000.Yay0.o(.data);
    SPLAT_END_SEG(data_DC6000, 0xDCFCA0)
    
    SPLAT_BEGIN_SEG(data_DCFCA0, 0xDCFCA0, 0xDCFCA0, )
        Yay0_DCFCA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DCFCA0.Yay0.o(.data);
    SPLAT_END_SEG(data_DCFCA0, 0xDD4A98)
    
    SPLAT_BEGIN_SEG(data_DD4A98, 0xDD4A98, 0xDD4A98, )
        Yay0_DD4A98_Yay0 = .;
        BUILD_DIR/bin/Yay0/DD4A98.Yay0.o(.data);
    SPLAT_END_SEG(data_DD4A98, 0xDDD0B8)
    
    SPLAT_BEGIN_SEG(data_DDD0B8, 0xDDD0B8, 0xDDD0B8, )
        Yay0_DDD0B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DDD0B8.Yay0.o(.data);
    SPLAT_END_SEG(data_DDD0B8, 0xDE2028)
    
    SPLAT_BEGIN_SEG(data_DE2028, 0xDE2028, 0xDE2028, )
        Yay0_DE2028_Yay0 = .;
        BUILD_DIR/bin/Yay0/DE2028.Yay0.o(.data);
    SPLAT_END_SEG(data_DE2028, 0xDE7E70)
    
    SPLAT_BEGIN_SEG(data_DE7E70, 0xDE7E70, 0xDE7E70, )
        Yay0_DE7E70_Yay0 = .;
        BUILD_DIR/bin/Yay0/DE7E70.Yay0.o(.data);
    SPLAT_END_SEG(data_DE7E70, 0xDEA178)
    
    SPLAT_BEGIN_SEG(data_DEA178, 0xDEA178, 0xDEA178, )
        Yay0_DEA178_Yay0 = .;
        BUILD_DIR/bin/Yay0/DEA178.Yay0.o(.data);
    SPLAT_END_SEG(data_DEA178, 0xDF29B8)
    
    SPLAT_BEGIN_SEG(data_DF29B8, 0xDF29B8, 0xDF29B8, )
        Yay0_DF29B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/DF29B8.Yay0.o(.data);
    SPLAT_END_SEG(data_DF29B8, 0xDF79B0)
    
    SPLAT_BEGIN_SEG(data_DF79B0, 0xDF79B0, 0xDF79B0, )
        Yay0_DF79B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/DF79B0.Yay0.o(.data);
    SPLAT_END_SEG(data_DF79B0, 0xDF9A40)
    
    SPLAT_BEGIN_SEG(data_DF9A40, 0xDF9A40, 0xDF9A40, )
        Yay0_DF9A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/DF9A40.Yay0.o(.data);
    SPLAT_END_SEG(data_DF9A40, 0xDFE920)
    
    SPLAT_BEGIN_SEG(data_DFE920, 0xDFE920, 0xDFE920, )
        Yay0_DFE920_Yay0 = .;
        BUILD_DIR/bin/Yay0/DFE920.Yay0.o(.data);
    SPLAT_END_SEG(data_DFE920, 0xE02390)
    
    SPLAT_BEGIN_SEG(data_E02390, 0xE02390, 0xE02390, )
        Yay0_E02390_Yay0 = .;
        BUILD_DIR/bin/Yay0/E02390.Yay0.o(.data);
    SPLAT_END_SEG(data_E02390, 0xE071E8)
    
    SPLAT_BEGIN_SEG(data_E071E8, 0xE071E8, 0xE071E8, )
        Yay0_E071E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E071E8.Yay0.o(.data);
    SPLAT_END_SEG(data_E071E8, 0xE0B718)
    
    SPLAT_BEGIN_SEG(data_E0B718, 0xE0B718, 0xE0B718, )
        Yay0_E0B718_Yay0 = .;
        BUILD_DIR/bin/Yay0/E0B718.Yay0.o(.data);
    SPLAT_END_SEG(data_E0B718, 0xE0C038)
    
    SPLAT_BEGIN_SEG(data_E0C038, 0xE0C038, 0xE0C038, )
        Yay0_E0C038_Yay0 = .;
        BUILD_DIR/bin/Yay0/E0C038.Yay0.o(.data);
    SPLAT_END_SEG(data_E0C038, 0xE0CD38)
    
    SPLAT_BEGIN_SEG(data_E0CD38, 0xE0CD38, 0xE0CD38, )
        Yay0_E0CD38_Yay0 = .;
        BUILD_DIR/bin/Yay0/E0CD38.Yay0.o(.data);
    SPLAT_END_SEG(data_E0CD38, 0xE0DD40)
    
    SPLAT_BEGIN_SEG(data_E0DD40, 0xE0DD40, 0xE0DD40, )
        Yay0_E0DD40_Yay0 = .;
        BUILD_DIR/bin/Yay0/E0DD40.Yay0.o(.data);
    SPLAT_END_SEG(data_E0DD40, 0xE0EE00)
    
    SPLAT_BEGIN_SEG(data_E0EE00, 0xE0EE00, 0xE0EE00, )
        Yay0_E0EE00_Yay0 = .;
        BUILD_DIR/bin/Yay0/E0EE00.Yay0.o(.data);
    SPLAT_END_SEG(data_E0EE00, 0xE0FE10)
    
    SPLAT_BEGIN_SEG(data_E0FE10, 0xE0FE10, 0xE0FE10, )
        Yay0_E0FE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/E0FE10.Yay0.o(.data);
    SPLAT_END_SEG(data_E0FE10, 0xE11488)
    
    SPLAT_BEGIN_SEG(data_E11488, 0xE11488, 0xE11488, )
        Yay0_E11488_Yay0 = .;
        BUILD_DIR/bin/Yay0/E11488.Yay0.o(.data);
    SPLAT_END_SEG(data_E11488, 0xE119C8)
    
    SPLAT_BEGIN_SEG(data_E119C8, 0xE119C8, 0xE119C8, )
        Yay0_E119C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E119C8.Yay0.o(.data);
    SPLAT_END_SEG(data_E119C8, 0xE140A0)
    
    SPLAT_BEGIN_SEG(data_E140A0, 0xE140A0, 0xE140A0, )
        Yay0_E140A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E140A0.Yay0.o(.data);
    SPLAT_END_SEG(data_E140A0, 0xE157C8)
    
    SPLAT_BEGIN_SEG(data_E157C8, 0xE157C8, 0xE157C8, )
        Yay0_E157C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E157C8.Yay0.o(.data);
    SPLAT_END_SEG(data_E157C8, 0xE17F28)
    
    SPLAT_BEGIN_SEG(data_E17F28, 0xE17F28, 0xE17F28, )
        Yay0_E17F28_Yay0 = .;
        BUILD_DIR/bin/Yay0/E17F28.Yay0.o(.data);
    SPLAT_END_SEG(data_E17F28, 0xE18420)
    
    SPLAT_BEGIN_SEG(data_E18420, 0xE18420, 0xE18420, )
        Yay0_E18420_Yay0 = .;
        BUILD_DIR/bin/Yay0/E18420.Yay0.o(.data);
    SPLAT_END_SEG(data_E18420, 0xE184E8)
    
    SPLAT_BEGIN_SEG(data_E184E8, 0xE184E8, 0xE184E8, )
        Yay0_E184E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E184E8.Yay0.o(.data);
    SPLAT_END_SEG(data_E184E8, 0xE18F20)
    
    SPLAT_BEGIN_SEG(data_E18F20, 0xE18F20, 0xE18F20, )
        Yay0_E18F20_Yay0 = .;
        BUILD_DIR/bin/Yay0/E18F20.Yay0.o(.data);
    SPLAT_END_SEG(data_E18F20, 0xE19A28)
    
    SPLAT_BEGIN_SEG(data_E19A28, 0xE19A28, 0xE19A28, )
        Yay0_E19A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/E19A28.Yay0.o(.data);
    SPLAT_END_SEG(data_E19A28, 0xE1B798)
    
    SPLAT_BEGIN_SEG(data_E1B798, 0xE1B798, 0xE1B798, )
        Yay0_E1B798_Yay0 = .;
        BUILD_DIR/bin/Yay0/E1B798.Yay0.o(.data);
    SPLAT_END_SEG(data_E1B798, 0xE1F458)
    
    SPLAT_BEGIN_SEG(data_E1F458, 0xE1F458, 0xE1F458, )
        Yay0_E1F458_Yay0 = .;
        BUILD_DIR/bin/Yay0/E1F458.Yay0.o(.data);
    SPLAT_END_SEG(data_E1F458, 0xE21238)
    
    SPLAT_BEGIN_SEG(data_E21238, 0xE21238, 0xE21238, )
        Yay0_E21238_Yay0 = .;
        BUILD_DIR/bin/Yay0/E21238.Yay0.o(.data);
    SPLAT_END_SEG(data_E21238, 0xE21720)
    
    SPLAT_BEGIN_SEG(data_E21720, 0xE21720, 0xE21720, )
        Yay0_E21720_Yay0 = .;
        BUILD_DIR/bin/Yay0/E21720.Yay0.o(.data);
    SPLAT_END_SEG(data_E21720, 0xE21C08)
    
    SPLAT_BEGIN_SEG(data_E21C08, 0xE21C08, 0xE21C08, )
        Yay0_E21C08_Yay0 = .;
        BUILD_DIR/bin/Yay0/E21C08.Yay0.o(.data);
    SPLAT_END_SEG(data_E21C08, 0xE22398)
    
    SPLAT_BEGIN_SEG(data_E22398, 0xE22398, 0xE22398, )
        Yay0_E22398_Yay0 = .;
        BUILD_DIR/bin/Yay0/E22398.Yay0.o(.data);
    SPLAT_END_SEG(data_E22398, 0xE22738)
    
    SPLAT_BEGIN_SEG(data_E22738, 0xE22738, 0xE22738, )
        Yay0_E22738_Yay0 = .;
        BUILD_DIR/bin/Yay0/E22738.Yay0.o(.data);
    SPLAT_END_SEG(data_E22738, 0xE22A58)
    
    SPLAT_BEGIN_SEG(data_E22A58, 0xE22A58, 0xE22A58, )
        Yay0_E22A58_Yay0 = .;
        BUILD_DIR/bin/Yay0/E22A58.Yay0.o(.data);
    SPLAT_END_SEG(data_E22A58, 0xE23028)
    
    SPLAT_BEGIN_SEG(data_E23028, 0xE23028, 0xE23028, )
        Yay0_E23028_Yay0 = .;
        BUILD_DIR/bin/Yay0/E23028.Yay0.o(.data);
    SPLAT_END_SEG(data_E23028, 0xE23570)
    
    SPLAT_BEGIN_SEG(data_E23570, 0xE23570, 0xE23570, )
        Yay0_E23570_Yay0 = .;
        BUILD_DIR/bin/Yay0/E23570.Yay0.o(.data);
    SPLAT_END_SEG(data_E23570, 0xE23A48)
    
    SPLAT_BEGIN_SEG(data_E23A48, 0xE23A48, 0xE23A48, )
        Yay0_E23A48_Yay0 = .;
        BUILD_DIR/bin/Yay0/E23A48.Yay0.o(.data);
    SPLAT_END_SEG(data_E23A48, 0xE24260)
    
    SPLAT_BEGIN_SEG(data_E24260, 0xE24260, 0xE24260, )
        Yay0_E24260_Yay0 = .;
        BUILD_DIR/bin/Yay0/E24260.Yay0.o(.data);
    SPLAT_END_SEG(data_E24260, 0xE28868)
    
    SPLAT_BEGIN_SEG(data_E28868, 0xE28868, 0xE28868, )
        Yay0_E28868_Yay0 = .;
        BUILD_DIR/bin/Yay0/E28868.Yay0.o(.data);
    SPLAT_END_SEG(data_E28868, 0xE28A68)
    
    SPLAT_BEGIN_SEG(data_E28A68, 0xE28A68, 0xE28A68, )
        Yay0_E28A68_Yay0 = .;
        BUILD_DIR/bin/Yay0/E28A68.Yay0.o(.data);
    SPLAT_END_SEG(data_E28A68, 0xE28B08)
    
    SPLAT_BEGIN_SEG(data_E28B08, 0xE28B08, 0xE28B08, )
        Yay0_E28B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/E28B08.Yay0.o(.data);
    SPLAT_END_SEG(data_E28B08, 0xE28BA8)
    
    SPLAT_BEGIN_SEG(data_E28BA8, 0xE28BA8, 0xE28BA8, )
        Yay0_E28BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E28BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_E28BA8, 0xE28CD8)
    
    SPLAT_BEGIN_SEG(data_E28CD8, 0xE28CD8, 0xE28CD8, )
        Yay0_E28CD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E28CD8.Yay0.o(.data);
    SPLAT_END_SEG(data_E28CD8, 0xE295A0)
    
    SPLAT_BEGIN_SEG(data_E295A0, 0xE295A0, 0xE295A0, )
        Yay0_E295A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E295A0.Yay0.o(.data);
    SPLAT_END_SEG(data_E295A0, 0xE29CA0)
    
    SPLAT_BEGIN_SEG(data_E29CA0, 0xE29CA0, 0xE29CA0, )
        Yay0_E29CA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E29CA0.Yay0.o(.data);
    SPLAT_END_SEG(data_E29CA0, 0xE29EB0)
    
    SPLAT_BEGIN_SEG(data_E29EB0, 0xE29EB0, 0xE29EB0, )
        Yay0_E29EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E29EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_E29EB0, 0xE2A098)
    
    SPLAT_BEGIN_SEG(data_E2A098, 0xE2A098, 0xE2A098, )
        Yay0_E2A098_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2A098.Yay0.o(.data);
    SPLAT_END_SEG(data_E2A098, 0xE2A280)
    
    SPLAT_BEGIN_SEG(data_E2A280, 0xE2A280, 0xE2A280, )
        Yay0_E2A280_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2A280.Yay0.o(.data);
    SPLAT_END_SEG(data_E2A280, 0xE2AB58)
    
    SPLAT_BEGIN_SEG(data_E2AB58, 0xE2AB58, 0xE2AB58, )
        Yay0_E2AB58_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2AB58.Yay0.o(.data);
    SPLAT_END_SEG(data_E2AB58, 0xE2B018)
    
    SPLAT_BEGIN_SEG(data_E2B018, 0xE2B018, 0xE2B018, )
        Yay0_E2B018_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2B018.Yay0.o(.data);
    SPLAT_END_SEG(data_E2B018, 0xE2DE10)
    
    SPLAT_BEGIN_SEG(data_E2DE10, 0xE2DE10, 0xE2DE10, )
        Yay0_E2DE10_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2DE10.Yay0.o(.data);
    SPLAT_END_SEG(data_E2DE10, 0xE2F080)
    
    SPLAT_BEGIN_SEG(data_E2F080, 0xE2F080, 0xE2F080, )
        Yay0_E2F080_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2F080.Yay0.o(.data);
    SPLAT_END_SEG(data_E2F080, 0xE2F858)
    
    SPLAT_BEGIN_SEG(data_E2F858, 0xE2F858, 0xE2F858, )
        Yay0_E2F858_Yay0 = .;
        BUILD_DIR/bin/Yay0/E2F858.Yay0.o(.data);
    SPLAT_END_SEG(data_E2F858, 0xE34A28)
    
    SPLAT_BEGIN_SEG(data_E34A28, 0xE34A28, 0xE34A28, )
        Yay0_E34A28_Yay0 = .;
        BUILD_DIR/bin/Yay0/E34A28.Yay0.o(.data);
    SPLAT_END_SEG(data_E34A28, 0xE34C38)
    
    SPLAT_BEGIN_SEG(data_E34C38, 0xE34C38, 0xE34C38, )
        Yay0_E34C38_Yay0 = .;
        BUILD_DIR/bin/Yay0/E34C38.Yay0.o(.data);
    SPLAT_END_SEG(data_E34C38, 0xE35478)
    
    SPLAT_BEGIN_SEG(data_E35478, 0xE35478, 0xE35478, )
        Yay0_E35478_Yay0 = .;
        BUILD_DIR/bin/Yay0/E35478.Yay0.o(.data);
    SPLAT_END_SEG(data_E35478, 0xE35B48)
    
    SPLAT_BEGIN_SEG(data_E35B48, 0xE35B48, 0xE35B48, )
        Yay0_E35B48_Yay0 = .;
        BUILD_DIR/bin/Yay0/E35B48.Yay0.o(.data);
    SPLAT_END_SEG(data_E35B48, 0xE37258)
    
    SPLAT_BEGIN_SEG(data_E37258, 0xE37258, 0xE37258, )
        Yay0_E37258_Yay0 = .;
        BUILD_DIR/bin/Yay0/E37258.Yay0.o(.data);
    SPLAT_END_SEG(data_E37258, 0xE373D0)
    
    SPLAT_BEGIN_SEG(data_E373D0, 0xE373D0, 0xE373D0, )
        Yay0_E373D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E373D0.Yay0.o(.data);
    SPLAT_END_SEG(data_E373D0, 0xE37F40)
    
    SPLAT_BEGIN_SEG(data_E37F40, 0xE37F40, 0xE37F40, )
        Yay0_E37F40_Yay0 = .;
        BUILD_DIR/bin/Yay0/E37F40.Yay0.o(.data);
    SPLAT_END_SEG(data_E37F40, 0xE3ABB0)
    
    SPLAT_BEGIN_SEG(data_E3ABB0, 0xE3ABB0, 0xE3ABB0, )
        Yay0_E3ABB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3ABB0.Yay0.o(.data);
    SPLAT_END_SEG(data_E3ABB0, 0xE3B4D8)
    
    SPLAT_BEGIN_SEG(data_E3B4D8, 0xE3B4D8, 0xE3B4D8, )
        Yay0_E3B4D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3B4D8.Yay0.o(.data);
    SPLAT_END_SEG(data_E3B4D8, 0xE3B680)
    
    SPLAT_BEGIN_SEG(data_E3B680, 0xE3B680, 0xE3B680, )
        Yay0_E3B680_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3B680.Yay0.o(.data);
    SPLAT_END_SEG(data_E3B680, 0xE3BCC0)
    
    SPLAT_BEGIN_SEG(data_E3BCC0, 0xE3BCC0, 0xE3BCC0, )
        Yay0_E3BCC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3BCC0.Yay0.o(.data);
    SPLAT_END_SEG(data_E3BCC0, 0xE3C630)
    
    SPLAT_BEGIN_SEG(data_E3C630, 0xE3C630, 0xE3C630, )
        Yay0_E3C630_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3C630.Yay0.o(.data);
    SPLAT_END_SEG(data_E3C630, 0xE3CF90)
    
    SPLAT_BEGIN_SEG(data_E3CF90, 0xE3CF90, 0xE3CF90, )
        Yay0_E3CF90_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3CF90.Yay0.o(.data);
    SPLAT_END_SEG(data_E3CF90, 0xE3E440)
    
    SPLAT_BEGIN_SEG(data_E3E440, 0xE3E440, 0xE3E440, )
        Yay0_E3E440_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3E440.Yay0.o(.data);
    SPLAT_END_SEG(data_E3E440, 0xE3E7C8)
    
    SPLAT_BEGIN_SEG(data_E3E7C8, 0xE3E7C8, 0xE3E7C8, )
        Yay0_E3E7C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3E7C8.Yay0.o(.data);
    SPLAT_END_SEG(data_E3E7C8, 0xE3E8B0)
    
    SPLAT_BEGIN_SEG(data_E3E8B0, 0xE3E8B0, 0xE3E8B0, )
        Yay0_E3E8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3E8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_E3E8B0, 0xE3F040)
    
    SPLAT_BEGIN_SEG(data_E3F040, 0xE3F040, 0xE3F040, )
        Yay0_E3F040_Yay0 = .;
        BUILD_DIR/bin/Yay0/E3F040.Yay0.o(.data);
    SPLAT_END_SEG(data_E3F040, 0xE40918)
    
    SPLAT_BEGIN_SEG(data_E40918, 0xE40918, 0xE40918, )
        Yay0_E40918_Yay0 = .;
        BUILD_DIR/bin/Yay0/E40918.Yay0.o(.data);
    SPLAT_END_SEG(data_E40918, 0xE43538)
    
    SPLAT_BEGIN_SEG(data_E43538, 0xE43538, 0xE43538, )
        Yay0_E43538_Yay0 = .;
        BUILD_DIR/bin/Yay0/E43538.Yay0.o(.data);
    SPLAT_END_SEG(data_E43538, 0xE43BA8)
    
    SPLAT_BEGIN_SEG(data_E43BA8, 0xE43BA8, 0xE43BA8, )
        Yay0_E43BA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E43BA8.Yay0.o(.data);
    SPLAT_END_SEG(data_E43BA8, 0xE43D58)
    
    SPLAT_BEGIN_SEG(data_E43D58, 0xE43D58, 0xE43D58, )
        Yay0_E43D58_Yay0 = .;
        BUILD_DIR/bin/Yay0/E43D58.Yay0.o(.data);
    SPLAT_END_SEG(data_E43D58, 0xE44B38)
    
    SPLAT_BEGIN_SEG(data_E44B38, 0xE44B38, 0xE44B38, )
        Yay0_E44B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/E44B38.Yay0.o(.data);
    SPLAT_END_SEG(data_E44B38, 0xE45A40)
    
    SPLAT_BEGIN_SEG(data_E45A40, 0xE45A40, 0xE45A40, )
        Yay0_E45A40_Yay0 = .;
        BUILD_DIR/bin/Yay0/E45A40.Yay0.o(.data);
    SPLAT_END_SEG(data_E45A40, 0xE46A50)
    
    SPLAT_BEGIN_SEG(data_E46A50, 0xE46A50, 0xE46A50, )
        Yay0_E46A50_Yay0 = .;
        BUILD_DIR/bin/Yay0/E46A50.Yay0.o(.data);
    SPLAT_END_SEG(data_E46A50, 0xE47040)
    
    SPLAT_BEGIN_SEG(data_E47040, 0xE47040, 0xE47040, )
        Yay0_E47040_Yay0 = .;
        BUILD_DIR/bin/Yay0/E47040.Yay0.o(.data);
    SPLAT_END_SEG(data_E47040, 0xE47390)
    
    SPLAT_BEGIN_SEG(data_E47390, 0xE47390, 0xE47390, )
        Yay0_E47390_Yay0 = .;
        BUILD_DIR/bin/Yay0/E47390.Yay0.o(.data);
    SPLAT_END_SEG(data_E47390, 0xE48B78)
    
    SPLAT_BEGIN_SEG(data_E48B78, 0xE48B78, 0xE48B78, )
        Yay0_E48B78_Yay0 = .;
        BUILD_DIR/bin/Yay0/E48B78.Yay0.o(.data);
    SPLAT_END_SEG(data_E48B78, 0xE4C338)
    
    SPLAT_BEGIN_SEG(data_E4C338, 0xE4C338, 0xE4C338, )
        Yay0_E4C338_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4C338.Yay0.o(.data);
    SPLAT_END_SEG(data_E4C338, 0xE4C5A8)
    
    SPLAT_BEGIN_SEG(data_E4C5A8, 0xE4C5A8, 0xE4C5A8, )
        Yay0_E4C5A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4C5A8.Yay0.o(.data);
    SPLAT_END_SEG(data_E4C5A8, 0xE4C878)
    
    SPLAT_BEGIN_SEG(data_E4C878, 0xE4C878, 0xE4C878, )
        Yay0_E4C878_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4C878.Yay0.o(.data);
    SPLAT_END_SEG(data_E4C878, 0xE4CB70)
    
    SPLAT_BEGIN_SEG(data_E4CB70, 0xE4CB70, 0xE4CB70, )
        Yay0_E4CB70_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4CB70.Yay0.o(.data);
    SPLAT_END_SEG(data_E4CB70, 0xE4CFB8)
    
    SPLAT_BEGIN_SEG(data_E4CFB8, 0xE4CFB8, 0xE4CFB8, )
        Yay0_E4CFB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4CFB8.Yay0.o(.data);
    SPLAT_END_SEG(data_E4CFB8, 0xE4D438)
    
    SPLAT_BEGIN_SEG(data_E4D438, 0xE4D438, 0xE4D438, )
        Yay0_E4D438_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4D438.Yay0.o(.data);
    SPLAT_END_SEG(data_E4D438, 0xE4D8B0)
    
    SPLAT_BEGIN_SEG(data_E4D8B0, 0xE4D8B0, 0xE4D8B0, )
        Yay0_E4D8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4D8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_E4D8B0, 0xE4DFE8)
    
    SPLAT_BEGIN_SEG(data_E4DFE8, 0xE4DFE8, 0xE4DFE8, )
        Yay0_E4DFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4DFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_E4DFE8, 0xE4E498)
    
    SPLAT_BEGIN_SEG(data_E4E498, 0xE4E498, 0xE4E498, )
        Yay0_E4E498_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4E498.Yay0.o(.data);
    SPLAT_END_SEG(data_E4E498, 0xE4E7F8)
    
    SPLAT_BEGIN_SEG(data_E4E7F8, 0xE4E7F8, 0xE4E7F8, )
        Yay0_E4E7F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4E7F8.Yay0.o(.data);
    SPLAT_END_SEG(data_E4E7F8, 0xE4EB28)
    
    SPLAT_BEGIN_SEG(data_E4EB28, 0xE4EB28, 0xE4EB28, )
        Yay0_E4EB28_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4EB28.Yay0.o(.data);
    SPLAT_END_SEG(data_E4EB28, 0xE4ED20)
    
    SPLAT_BEGIN_SEG(data_E4ED20, 0xE4ED20, 0xE4ED20, )
        Yay0_E4ED20_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4ED20.Yay0.o(.data);
    SPLAT_END_SEG(data_E4ED20, 0xE4F088)
    
    SPLAT_BEGIN_SEG(data_E4F088, 0xE4F088, 0xE4F088, )
        Yay0_E4F088_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4F088.Yay0.o(.data);
    SPLAT_END_SEG(data_E4F088, 0xE4F300)
    
    SPLAT_BEGIN_SEG(data_E4F300, 0xE4F300, 0xE4F300, )
        Yay0_E4F300_Yay0 = .;
        BUILD_DIR/bin/Yay0/E4F300.Yay0.o(.data);
    SPLAT_END_SEG(data_E4F300, 0xE50360)
    
    SPLAT_BEGIN_SEG(data_E50360, 0xE50360, 0xE50360, )
        Yay0_E50360_Yay0 = .;
        BUILD_DIR/bin/Yay0/E50360.Yay0.o(.data);
    SPLAT_END_SEG(data_E50360, 0xE51090)
    
    SPLAT_BEGIN_SEG(data_E51090, 0xE51090, 0xE51090, )
        Yay0_E51090_Yay0 = .;
        BUILD_DIR/bin/Yay0/E51090.Yay0.o(.data);
    SPLAT_END_SEG(data_E51090, 0xE528F0)
    
    SPLAT_BEGIN_SEG(data_E528F0, 0xE528F0, 0xE528F0, )
        Yay0_E528F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E528F0.Yay0.o(.data);
    SPLAT_END_SEG(data_E528F0, 0xE52DD0)
    
    SPLAT_BEGIN_SEG(data_E52DD0, 0xE52DD0, 0xE52DD0, )
        Yay0_E52DD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E52DD0.Yay0.o(.data);
    SPLAT_END_SEG(data_E52DD0, 0xE53148)
    
    SPLAT_BEGIN_SEG(data_E53148, 0xE53148, 0xE53148, )
        Yay0_E53148_Yay0 = .;
        BUILD_DIR/bin/Yay0/E53148.Yay0.o(.data);
    SPLAT_END_SEG(data_E53148, 0xE538C0)
    
    SPLAT_BEGIN_SEG(data_E538C0, 0xE538C0, 0xE538C0, )
        Yay0_E538C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E538C0.Yay0.o(.data);
    SPLAT_END_SEG(data_E538C0, 0xE541A0)
    
    SPLAT_BEGIN_SEG(data_E541A0, 0xE541A0, 0xE541A0, )
        Yay0_E541A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E541A0.Yay0.o(.data);
    SPLAT_END_SEG(data_E541A0, 0xE54500)
    
    SPLAT_BEGIN_SEG(data_E54500, 0xE54500, 0xE54500, )
        Yay0_E54500_Yay0 = .;
        BUILD_DIR/bin/Yay0/E54500.Yay0.o(.data);
    SPLAT_END_SEG(data_E54500, 0xE547A0)
    
    SPLAT_BEGIN_SEG(data_E547A0, 0xE547A0, 0xE547A0, )
        Yay0_E547A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E547A0.Yay0.o(.data);
    SPLAT_END_SEG(data_E547A0, 0xE56638)
    
    SPLAT_BEGIN_SEG(data_E56638, 0xE56638, 0xE56638, )
        Yay0_E56638_Yay0 = .;
        BUILD_DIR/bin/Yay0/E56638.Yay0.o(.data);
    SPLAT_END_SEG(data_E56638, 0xE56948)
    
    SPLAT_BEGIN_SEG(data_E56948, 0xE56948, 0xE56948, )
        Yay0_E56948_Yay0 = .;
        BUILD_DIR/bin/Yay0/E56948.Yay0.o(.data);
    SPLAT_END_SEG(data_E56948, 0xE56B40)
    
    SPLAT_BEGIN_SEG(data_E56B40, 0xE56B40, 0xE56B40, )
        Yay0_E56B40_Yay0 = .;
        BUILD_DIR/bin/Yay0/E56B40.Yay0.o(.data);
    SPLAT_END_SEG(data_E56B40, 0xE56F48)
    
    SPLAT_BEGIN_SEG(data_E56F48, 0xE56F48, 0xE56F48, )
        Yay0_E56F48_Yay0 = .;
        BUILD_DIR/bin/Yay0/E56F48.Yay0.o(.data);
    SPLAT_END_SEG(data_E56F48, 0xE57140)
    
    SPLAT_BEGIN_SEG(data_E57140, 0xE57140, 0xE57140, )
        Yay0_E57140_Yay0 = .;
        BUILD_DIR/bin/Yay0/E57140.Yay0.o(.data);
    SPLAT_END_SEG(data_E57140, 0xE57528)
    
    SPLAT_BEGIN_SEG(data_E57528, 0xE57528, 0xE57528, )
        Yay0_E57528_Yay0 = .;
        BUILD_DIR/bin/Yay0/E57528.Yay0.o(.data);
    SPLAT_END_SEG(data_E57528, 0xE57810)
    
    SPLAT_BEGIN_SEG(data_E57810, 0xE57810, 0xE57810, )
        Yay0_E57810_Yay0 = .;
        BUILD_DIR/bin/Yay0/E57810.Yay0.o(.data);
    SPLAT_END_SEG(data_E57810, 0xE5DC98)
    
    SPLAT_BEGIN_SEG(data_E5DC98, 0xE5DC98, 0xE5DC98, )
        Yay0_E5DC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/E5DC98.Yay0.o(.data);
    SPLAT_END_SEG(data_E5DC98, 0xE61B08)
    
    SPLAT_BEGIN_SEG(data_E61B08, 0xE61B08, 0xE61B08, )
        Yay0_E61B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/E61B08.Yay0.o(.data);
    SPLAT_END_SEG(data_E61B08, 0xE621A0)
    
    SPLAT_BEGIN_SEG(data_E621A0, 0xE621A0, 0xE621A0, )
        Yay0_E621A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E621A0.Yay0.o(.data);
    SPLAT_END_SEG(data_E621A0, 0xE622F0)
    
    SPLAT_BEGIN_SEG(data_E622F0, 0xE622F0, 0xE622F0, )
        Yay0_E622F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E622F0.Yay0.o(.data);
    SPLAT_END_SEG(data_E622F0, 0xE625D8)
    
    SPLAT_BEGIN_SEG(data_E625D8, 0xE625D8, 0xE625D8, )
        Yay0_E625D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E625D8.Yay0.o(.data);
    SPLAT_END_SEG(data_E625D8, 0xE628C8)
    
    SPLAT_BEGIN_SEG(data_E628C8, 0xE628C8, 0xE628C8, )
        Yay0_E628C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E628C8.Yay0.o(.data);
    SPLAT_END_SEG(data_E628C8, 0xE62DB0)
    
    SPLAT_BEGIN_SEG(data_E62DB0, 0xE62DB0, 0xE62DB0, )
        Yay0_E62DB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E62DB0.Yay0.o(.data);
    SPLAT_END_SEG(data_E62DB0, 0xE62EB0)
    
    SPLAT_BEGIN_SEG(data_E62EB0, 0xE62EB0, 0xE62EB0, )
        Yay0_E62EB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E62EB0.Yay0.o(.data);
    SPLAT_END_SEG(data_E62EB0, 0xE63560)
    
    SPLAT_BEGIN_SEG(data_E63560, 0xE63560, 0xE63560, )
        Yay0_E63560_Yay0 = .;
        BUILD_DIR/bin/Yay0/E63560.Yay0.o(.data);
    SPLAT_END_SEG(data_E63560, 0xE637E0)
    
    SPLAT_BEGIN_SEG(data_E637E0, 0xE637E0, 0xE637E0, )
        Yay0_E637E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E637E0.Yay0.o(.data);
    SPLAT_END_SEG(data_E637E0, 0xE63B08)
    
    SPLAT_BEGIN_SEG(data_E63B08, 0xE63B08, 0xE63B08, )
        Yay0_E63B08_Yay0 = .;
        BUILD_DIR/bin/Yay0/E63B08.Yay0.o(.data);
    SPLAT_END_SEG(data_E63B08, 0xE65280)
    
    SPLAT_BEGIN_SEG(data_E65280, 0xE65280, 0xE65280, )
        Yay0_E65280_Yay0 = .;
        BUILD_DIR/bin/Yay0/E65280.Yay0.o(.data);
    SPLAT_END_SEG(data_E65280, 0xE667F8)
    
    SPLAT_BEGIN_SEG(data_E667F8, 0xE667F8, 0xE667F8, )
        Yay0_E667F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E667F8.Yay0.o(.data);
    SPLAT_END_SEG(data_E667F8, 0xE69138)
    
    SPLAT_BEGIN_SEG(data_E69138, 0xE69138, 0xE69138, )
        Yay0_E69138_Yay0 = .;
        BUILD_DIR/bin/Yay0/E69138.Yay0.o(.data);
    SPLAT_END_SEG(data_E69138, 0xE6A600)
    
    SPLAT_BEGIN_SEG(data_E6A600, 0xE6A600, 0xE6A600, )
        Yay0_E6A600_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6A600.Yay0.o(.data);
    SPLAT_END_SEG(data_E6A600, 0xE6A6E0)
    
    SPLAT_BEGIN_SEG(data_E6A6E0, 0xE6A6E0, 0xE6A6E0, )
        Yay0_E6A6E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6A6E0.Yay0.o(.data);
    SPLAT_END_SEG(data_E6A6E0, 0xE6A7C0)
    
    SPLAT_BEGIN_SEG(data_E6A7C0, 0xE6A7C0, 0xE6A7C0, )
        Yay0_E6A7C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6A7C0.Yay0.o(.data);
    SPLAT_END_SEG(data_E6A7C0, 0xE6BF08)
    
    SPLAT_BEGIN_SEG(data_E6BF08, 0xE6BF08, 0xE6BF08, )
        Yay0_E6BF08_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6BF08.Yay0.o(.data);
    SPLAT_END_SEG(data_E6BF08, 0xE6C678)
    
    SPLAT_BEGIN_SEG(data_E6C678, 0xE6C678, 0xE6C678, )
        Yay0_E6C678_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6C678.Yay0.o(.data);
    SPLAT_END_SEG(data_E6C678, 0xE6C9C0)
    
    SPLAT_BEGIN_SEG(data_E6C9C0, 0xE6C9C0, 0xE6C9C0, )
        Yay0_E6C9C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6C9C0.Yay0.o(.data);
    SPLAT_END_SEG(data_E6C9C0, 0xE6ED90)
    
    SPLAT_BEGIN_SEG(data_E6ED90, 0xE6ED90, 0xE6ED90, )
        Yay0_E6ED90_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6ED90.Yay0.o(.data);
    SPLAT_END_SEG(data_E6ED90, 0xE6F180)
    
    SPLAT_BEGIN_SEG(data_E6F180, 0xE6F180, 0xE6F180, )
        Yay0_E6F180_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6F180.Yay0.o(.data);
    SPLAT_END_SEG(data_E6F180, 0xE6F3B0)
    
    SPLAT_BEGIN_SEG(data_E6F3B0, 0xE6F3B0, 0xE6F3B0, )
        Yay0_E6F3B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6F3B0.Yay0.o(.data);
    SPLAT_END_SEG(data_E6F3B0, 0xE6FE08)
    
    SPLAT_BEGIN_SEG(data_E6FE08, 0xE6FE08, 0xE6FE08, )
        Yay0_E6FE08_Yay0 = .;
        BUILD_DIR/bin/Yay0/E6FE08.Yay0.o(.data);
    SPLAT_END_SEG(data_E6FE08, 0xE70670)
    
    SPLAT_BEGIN_SEG(data_E70670, 0xE70670, 0xE70670, )
        Yay0_E70670_Yay0 = .;
        BUILD_DIR/bin/Yay0/E70670.Yay0.o(.data);
    SPLAT_END_SEG(data_E70670, 0xE70EC0)
    
    SPLAT_BEGIN_SEG(data_E70EC0, 0xE70EC0, 0xE70EC0, )
        Yay0_E70EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E70EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_E70EC0, 0xE737F8)
    
    SPLAT_BEGIN_SEG(data_E737F8, 0xE737F8, 0xE737F8, )
        Yay0_E737F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E737F8.Yay0.o(.data);
    SPLAT_END_SEG(data_E737F8, 0xE73AC8)
    
    SPLAT_BEGIN_SEG(data_E73AC8, 0xE73AC8, 0xE73AC8, )
        Yay0_E73AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E73AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_E73AC8, 0xE74828)
    
    SPLAT_BEGIN_SEG(data_E74828, 0xE74828, 0xE74828, )
        Yay0_E74828_Yay0 = .;
        BUILD_DIR/bin/Yay0/E74828.Yay0.o(.data);
    SPLAT_END_SEG(data_E74828, 0xE74FF0)
    
    SPLAT_BEGIN_SEG(data_E74FF0, 0xE74FF0, 0xE74FF0, )
        Yay0_E74FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E74FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_E74FF0, 0xE77790)
    
    SPLAT_BEGIN_SEG(data_E77790, 0xE77790, 0xE77790, )
        Yay0_E77790_Yay0 = .;
        BUILD_DIR/bin/Yay0/E77790.Yay0.o(.data);
    SPLAT_END_SEG(data_E77790, 0xE78730)
    
    SPLAT_BEGIN_SEG(data_E78730, 0xE78730, 0xE78730, )
        Yay0_E78730_Yay0 = .;
        BUILD_DIR/bin/Yay0/E78730.Yay0.o(.data);
    SPLAT_END_SEG(data_E78730, 0xE796C8)
    
    SPLAT_BEGIN_SEG(data_E796C8, 0xE796C8, 0xE796C8, )
        Yay0_E796C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E796C8.Yay0.o(.data);
    SPLAT_END_SEG(data_E796C8, 0xE7A3B0)
    
    SPLAT_BEGIN_SEG(data_E7A3B0, 0xE7A3B0, 0xE7A3B0, )
        Yay0_E7A3B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7A3B0.Yay0.o(.data);
    SPLAT_END_SEG(data_E7A3B0, 0xE7A8B8)
    
    SPLAT_BEGIN_SEG(data_E7A8B8, 0xE7A8B8, 0xE7A8B8, )
        Yay0_E7A8B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7A8B8.Yay0.o(.data);
    SPLAT_END_SEG(data_E7A8B8, 0xE7AEB8)
    
    SPLAT_BEGIN_SEG(data_E7AEB8, 0xE7AEB8, 0xE7AEB8, )
        Yay0_E7AEB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7AEB8.Yay0.o(.data);
    SPLAT_END_SEG(data_E7AEB8, 0xE7BFE8)
    
    SPLAT_BEGIN_SEG(data_E7BFE8, 0xE7BFE8, 0xE7BFE8, )
        Yay0_E7BFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7BFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_E7BFE8, 0xE7C930)
    
    SPLAT_BEGIN_SEG(data_E7C930, 0xE7C930, 0xE7C930, )
        Yay0_E7C930_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7C930.Yay0.o(.data);
    SPLAT_END_SEG(data_E7C930, 0xE7D300)
    
    SPLAT_BEGIN_SEG(data_E7D300, 0xE7D300, 0xE7D300, )
        Yay0_E7D300_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7D300.Yay0.o(.data);
    SPLAT_END_SEG(data_E7D300, 0xE7D410)
    
    SPLAT_BEGIN_SEG(data_E7D410, 0xE7D410, 0xE7D410, )
        Yay0_E7D410_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7D410.Yay0.o(.data);
    SPLAT_END_SEG(data_E7D410, 0xE7D5B0)
    
    SPLAT_BEGIN_SEG(data_E7D5B0, 0xE7D5B0, 0xE7D5B0, )
        Yay0_E7D5B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7D5B0.Yay0.o(.data);
    SPLAT_END_SEG(data_E7D5B0, 0xE7D708)
    
    SPLAT_BEGIN_SEG(data_E7D708, 0xE7D708, 0xE7D708, )
        Yay0_E7D708_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7D708.Yay0.o(.data);
    SPLAT_END_SEG(data_E7D708, 0xE7DE78)
    
    SPLAT_BEGIN_SEG(data_E7DE78, 0xE7DE78, 0xE7DE78, )
        Yay0_E7DE78_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7DE78.Yay0.o(.data);
    SPLAT_END_SEG(data_E7DE78, 0xE7E608)
    
    SPLAT_BEGIN_SEG(data_E7E608, 0xE7E608, 0xE7E608, )
        Yay0_E7E608_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7E608.Yay0.o(.data);
    SPLAT_END_SEG(data_E7E608, 0xE7ED20)
    
    SPLAT_BEGIN_SEG(data_E7ED20, 0xE7ED20, 0xE7ED20, )
        Yay0_E7ED20_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7ED20.Yay0.o(.data);
    SPLAT_END_SEG(data_E7ED20, 0xE7FE90)
    
    SPLAT_BEGIN_SEG(data_E7FE90, 0xE7FE90, 0xE7FE90, )
        Yay0_E7FE90_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7FE90.Yay0.o(.data);
    SPLAT_END_SEG(data_E7FE90, 0xE7FFF8)
    
    SPLAT_BEGIN_SEG(data_E7FFF8, 0xE7FFF8, 0xE7FFF8, )
        Yay0_E7FFF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E7FFF8.Yay0.o(.data);
    SPLAT_END_SEG(data_E7FFF8, 0xE803A8)
    
    SPLAT_BEGIN_SEG(data_E803A8, 0xE803A8, 0xE803A8, )
        Yay0_E803A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E803A8.Yay0.o(.data);
    SPLAT_END_SEG(data_E803A8, 0xE81140)
    
    SPLAT_BEGIN_SEG(data_E81140, 0xE81140, 0xE81140, )
        Yay0_E81140_Yay0 = .;
        BUILD_DIR/bin/Yay0/E81140.Yay0.o(.data);
    SPLAT_END_SEG(data_E81140, 0xE81830)
    
    SPLAT_BEGIN_SEG(data_E81830, 0xE81830, 0xE81830, )
        Yay0_E81830_Yay0 = .;
        BUILD_DIR/bin/Yay0/E81830.Yay0.o(.data);
    SPLAT_END_SEG(data_E81830, 0xE84318)
    
    SPLAT_BEGIN_SEG(data_E84318, 0xE84318, 0xE84318, )
        Yay0_E84318_Yay0 = .;
        BUILD_DIR/bin/Yay0/E84318.Yay0.o(.data);
    SPLAT_END_SEG(data_E84318, 0xE85CB0)
    
    SPLAT_BEGIN_SEG(data_E85CB0, 0xE85CB0, 0xE85CB0, )
        Yay0_E85CB0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E85CB0.Yay0.o(.data);
    SPLAT_END_SEG(data_E85CB0, 0xE87968)
    
    SPLAT_BEGIN_SEG(data_E87968, 0xE87968, 0xE87968, )
        Yay0_E87968_Yay0 = .;
        BUILD_DIR/bin/Yay0/E87968.Yay0.o(.data);
    SPLAT_END_SEG(data_E87968, 0xE88238)
    
    SPLAT_BEGIN_SEG(data_E88238, 0xE88238, 0xE88238, )
        Yay0_E88238_Yay0 = .;
        BUILD_DIR/bin/Yay0/E88238.Yay0.o(.data);
    SPLAT_END_SEG(data_E88238, 0xE88BD0)
    
    SPLAT_BEGIN_SEG(data_E88BD0, 0xE88BD0, 0xE88BD0, )
        Yay0_E88BD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E88BD0.Yay0.o(.data);
    SPLAT_END_SEG(data_E88BD0, 0xE89308)
    
    SPLAT_BEGIN_SEG(data_E89308, 0xE89308, 0xE89308, )
        Yay0_E89308_Yay0 = .;
        BUILD_DIR/bin/Yay0/E89308.Yay0.o(.data);
    SPLAT_END_SEG(data_E89308, 0xE89630)
    
    SPLAT_BEGIN_SEG(data_E89630, 0xE89630, 0xE89630, )
        Yay0_E89630_Yay0 = .;
        BUILD_DIR/bin/Yay0/E89630.Yay0.o(.data);
    SPLAT_END_SEG(data_E89630, 0xE89CD0)
    
    SPLAT_BEGIN_SEG(data_E89CD0, 0xE89CD0, 0xE89CD0, )
        Yay0_E89CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E89CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_E89CD0, 0xE8A238)
    
    SPLAT_BEGIN_SEG(data_E8A238, 0xE8A238, 0xE8A238, )
        Yay0_E8A238_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8A238.Yay0.o(.data);
    SPLAT_END_SEG(data_E8A238, 0xE8A818)
    
    SPLAT_BEGIN_SEG(data_E8A818, 0xE8A818, 0xE8A818, )
        Yay0_E8A818_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8A818.Yay0.o(.data);
    SPLAT_END_SEG(data_E8A818, 0xE8B3C0)
    
    SPLAT_BEGIN_SEG(data_E8B3C0, 0xE8B3C0, 0xE8B3C0, )
        Yay0_E8B3C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8B3C0.Yay0.o(.data);
    SPLAT_END_SEG(data_E8B3C0, 0xE8B6C8)
    
    SPLAT_BEGIN_SEG(data_E8B6C8, 0xE8B6C8, 0xE8B6C8, )
        Yay0_E8B6C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8B6C8.Yay0.o(.data);
    SPLAT_END_SEG(data_E8B6C8, 0xE8B9E0)
    
    SPLAT_BEGIN_SEG(data_E8B9E0, 0xE8B9E0, 0xE8B9E0, )
        Yay0_E8B9E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8B9E0.Yay0.o(.data);
    SPLAT_END_SEG(data_E8B9E0, 0xE8BF10)
    
    SPLAT_BEGIN_SEG(data_E8BF10, 0xE8BF10, 0xE8BF10, )
        Yay0_E8BF10_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8BF10.Yay0.o(.data);
    SPLAT_END_SEG(data_E8BF10, 0xE8C0C0)
    
    SPLAT_BEGIN_SEG(data_E8C0C0, 0xE8C0C0, 0xE8C0C0, )
        Yay0_E8C0C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8C0C0.Yay0.o(.data);
    SPLAT_END_SEG(data_E8C0C0, 0xE8CB20)
    
    SPLAT_BEGIN_SEG(data_E8CB20, 0xE8CB20, 0xE8CB20, )
        Yay0_E8CB20_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8CB20.Yay0.o(.data);
    SPLAT_END_SEG(data_E8CB20, 0xE8CDD8)
    
    SPLAT_BEGIN_SEG(data_E8CDD8, 0xE8CDD8, 0xE8CDD8, )
        Yay0_E8CDD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8CDD8.Yay0.o(.data);
    SPLAT_END_SEG(data_E8CDD8, 0xE8F850)
    
    SPLAT_BEGIN_SEG(data_E8F850, 0xE8F850, 0xE8F850, )
        Yay0_E8F850_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8F850.Yay0.o(.data);
    SPLAT_END_SEG(data_E8F850, 0xE8FC98)
    
    SPLAT_BEGIN_SEG(data_E8FC98, 0xE8FC98, 0xE8FC98, )
        Yay0_E8FC98_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8FC98.Yay0.o(.data);
    SPLAT_END_SEG(data_E8FC98, 0xE8FED8)
    
    SPLAT_BEGIN_SEG(data_E8FED8, 0xE8FED8, 0xE8FED8, )
        Yay0_E8FED8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E8FED8.Yay0.o(.data);
    SPLAT_END_SEG(data_E8FED8, 0xE92068)
    
    SPLAT_BEGIN_SEG(data_E92068, 0xE92068, 0xE92068, )
        Yay0_E92068_Yay0 = .;
        BUILD_DIR/bin/Yay0/E92068.Yay0.o(.data);
    SPLAT_END_SEG(data_E92068, 0xE95F80)
    
    SPLAT_BEGIN_SEG(data_E95F80, 0xE95F80, 0xE95F80, )
        Yay0_E95F80_Yay0 = .;
        BUILD_DIR/bin/Yay0/E95F80.Yay0.o(.data);
    SPLAT_END_SEG(data_E95F80, 0xE960F0)
    
    SPLAT_BEGIN_SEG(data_E960F0, 0xE960F0, 0xE960F0, )
        Yay0_E960F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E960F0.Yay0.o(.data);
    SPLAT_END_SEG(data_E960F0, 0xE98F98)
    
    SPLAT_BEGIN_SEG(data_E98F98, 0xE98F98, 0xE98F98, )
        Yay0_E98F98_Yay0 = .;
        BUILD_DIR/bin/Yay0/E98F98.Yay0.o(.data);
    SPLAT_END_SEG(data_E98F98, 0xE99380)
    
    SPLAT_BEGIN_SEG(data_E99380, 0xE99380, 0xE99380, )
        Yay0_E99380_Yay0 = .;
        BUILD_DIR/bin/Yay0/E99380.Yay0.o(.data);
    SPLAT_END_SEG(data_E99380, 0xE99AE0)
    
    SPLAT_BEGIN_SEG(data_E99AE0, 0xE99AE0, 0xE99AE0, )
        Yay0_E99AE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E99AE0.Yay0.o(.data);
    SPLAT_END_SEG(data_E99AE0, 0xE9A078)
    
    SPLAT_BEGIN_SEG(data_E9A078, 0xE9A078, 0xE9A078, )
        Yay0_E9A078_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9A078.Yay0.o(.data);
    SPLAT_END_SEG(data_E9A078, 0xE9A758)
    
    SPLAT_BEGIN_SEG(data_E9A758, 0xE9A758, 0xE9A758, )
        Yay0_E9A758_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9A758.Yay0.o(.data);
    SPLAT_END_SEG(data_E9A758, 0xE9ABE8)
    
    SPLAT_BEGIN_SEG(data_E9ABE8, 0xE9ABE8, 0xE9ABE8, )
        Yay0_E9ABE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9ABE8.Yay0.o(.data);
    SPLAT_END_SEG(data_E9ABE8, 0xE9AF38)
    
    SPLAT_BEGIN_SEG(data_E9AF38, 0xE9AF38, 0xE9AF38, )
        Yay0_E9AF38_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9AF38.Yay0.o(.data);
    SPLAT_END_SEG(data_E9AF38, 0xE9B208)
    
    SPLAT_BEGIN_SEG(data_E9B208, 0xE9B208, 0xE9B208, )
        Yay0_E9B208_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9B208.Yay0.o(.data);
    SPLAT_END_SEG(data_E9B208, 0xE9B4A0)
    
    SPLAT_BEGIN_SEG(data_E9B4A0, 0xE9B4A0, 0xE9B4A0, )
        Yay0_E9B4A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9B4A0.Yay0.o(.data);
    SPLAT_END_SEG(data_E9B4A0, 0xE9B948)
    
    SPLAT_BEGIN_SEG(data_E9B948, 0xE9B948, 0xE9B948, )
        Yay0_E9B948_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9B948.Yay0.o(.data);
    SPLAT_END_SEG(data_E9B948, 0xE9BE18)
    
    SPLAT_BEGIN_SEG(data_E9BE18, 0xE9BE18, 0xE9BE18, )
        Yay0_E9BE18_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9BE18.Yay0.o(.data);
    SPLAT_END_SEG(data_E9BE18, 0xE9C028)
    
    SPLAT_BEGIN_SEG(data_E9C028, 0xE9C028, 0xE9C028, )
        Yay0_E9C028_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9C028.Yay0.o(.data);
    SPLAT_END_SEG(data_E9C028, 0xE9CA90)
    
    SPLAT_BEGIN_SEG(data_E9CA90, 0xE9CA90, 0xE9CA90, )
        Yay0_E9CA90_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9CA90.Yay0.o(.data);
    SPLAT_END_SEG(data_E9CA90, 0xE9CBC0)
    
    SPLAT_BEGIN_SEG(data_E9CBC0, 0xE9CBC0, 0xE9CBC0, )
        Yay0_E9CBC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9CBC0.Yay0.o(.data);
    SPLAT_END_SEG(data_E9CBC0, 0xE9CFE8)
    
    SPLAT_BEGIN_SEG(data_E9CFE8, 0xE9CFE8, 0xE9CFE8, )
        Yay0_E9CFE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9CFE8.Yay0.o(.data);
    SPLAT_END_SEG(data_E9CFE8, 0xE9D660)
    
    SPLAT_BEGIN_SEG(data_E9D660, 0xE9D660, 0xE9D660, )
        Yay0_E9D660_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9D660.Yay0.o(.data);
    SPLAT_END_SEG(data_E9D660, 0xE9D8F8)
    
    SPLAT_BEGIN_SEG(data_E9D8F8, 0xE9D8F8, 0xE9D8F8, )
        Yay0_E9D8F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9D8F8.Yay0.o(.data);
    SPLAT_END_SEG(data_E9D8F8, 0xE9DEA0)
    
    SPLAT_BEGIN_SEG(data_E9DEA0, 0xE9DEA0, 0xE9DEA0, )
        Yay0_E9DEA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9DEA0.Yay0.o(.data);
    SPLAT_END_SEG(data_E9DEA0, 0xE9E120)
    
    SPLAT_BEGIN_SEG(data_E9E120, 0xE9E120, 0xE9E120, )
        Yay0_E9E120_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9E120.Yay0.o(.data);
    SPLAT_END_SEG(data_E9E120, 0xE9E300)
    
    SPLAT_BEGIN_SEG(data_E9E300, 0xE9E300, 0xE9E300, )
        Yay0_E9E300_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9E300.Yay0.o(.data);
    SPLAT_END_SEG(data_E9E300, 0xE9E548)
    
    SPLAT_BEGIN_SEG(data_E9E548, 0xE9E548, 0xE9E548, )
        Yay0_E9E548_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9E548.Yay0.o(.data);
    SPLAT_END_SEG(data_E9E548, 0xE9E728)
    
    SPLAT_BEGIN_SEG(data_E9E728, 0xE9E728, 0xE9E728, )
        Yay0_E9E728_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9E728.Yay0.o(.data);
    SPLAT_END_SEG(data_E9E728, 0xE9EC60)
    
    SPLAT_BEGIN_SEG(data_E9EC60, 0xE9EC60, 0xE9EC60, )
        Yay0_E9EC60_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9EC60.Yay0.o(.data);
    SPLAT_END_SEG(data_E9EC60, 0xE9EE00)
    
    SPLAT_BEGIN_SEG(data_E9EE00, 0xE9EE00, 0xE9EE00, )
        Yay0_E9EE00_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9EE00.Yay0.o(.data);
    SPLAT_END_SEG(data_E9EE00, 0xE9F328)
    
    SPLAT_BEGIN_SEG(data_E9F328, 0xE9F328, 0xE9F328, )
        Yay0_E9F328_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9F328.Yay0.o(.data);
    SPLAT_END_SEG(data_E9F328, 0xE9F558)
    
    SPLAT_BEGIN_SEG(data_E9F558, 0xE9F558, 0xE9F558, )
        Yay0_E9F558_Yay0 = .;
        BUILD_DIR/bin/Yay0/E9F558.Yay0.o(.data);
    SPLAT_END_SEG(data_E9F558, 0xEA0030)
    
    SPLAT_BEGIN_SEG(data_EA0030, 0xEA0030, 0xEA0030, )
        Yay0_EA0030_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0030.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0030, 0xEA0170)
    
    SPLAT_BEGIN_SEG(data_EA0170, 0xEA0170, 0xEA0170, )
        Yay0_EA0170_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0170.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0170, 0xEA0200)
    
    SPLAT_BEGIN_SEG(data_EA0200, 0xEA0200, 0xEA0200, )
        Yay0_EA0200_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0200.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0200, 0xEA0578)
    
    SPLAT_BEGIN_SEG(data_EA0578, 0xEA0578, 0xEA0578, )
        Yay0_EA0578_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0578.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0578, 0xEA06B8)
    
    SPLAT_BEGIN_SEG(data_EA06B8, 0xEA06B8, 0xEA06B8, )
        Yay0_EA06B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA06B8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA06B8, 0xEA0898)
    
    SPLAT_BEGIN_SEG(data_EA0898, 0xEA0898, 0xEA0898, )
        Yay0_EA0898_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0898.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0898, 0xEA0AC8)
    
    SPLAT_BEGIN_SEG(data_EA0AC8, 0xEA0AC8, 0xEA0AC8, )
        Yay0_EA0AC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0AC8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0AC8, 0xEA0E28)
    
    SPLAT_BEGIN_SEG(data_EA0E28, 0xEA0E28, 0xEA0E28, )
        Yay0_EA0E28_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA0E28.Yay0.o(.data);
    SPLAT_END_SEG(data_EA0E28, 0xEA1560)
    
    SPLAT_BEGIN_SEG(data_EA1560, 0xEA1560, 0xEA1560, )
        Yay0_EA1560_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA1560.Yay0.o(.data);
    SPLAT_END_SEG(data_EA1560, 0xEA1628)
    
    SPLAT_BEGIN_SEG(data_EA1628, 0xEA1628, 0xEA1628, )
        Yay0_EA1628_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA1628.Yay0.o(.data);
    SPLAT_END_SEG(data_EA1628, 0xEA18F0)
    
    SPLAT_BEGIN_SEG(data_EA18F0, 0xEA18F0, 0xEA18F0, )
        Yay0_EA18F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA18F0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA18F0, 0xEA1C88)
    
    SPLAT_BEGIN_SEG(data_EA1C88, 0xEA1C88, 0xEA1C88, )
        Yay0_EA1C88_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA1C88.Yay0.o(.data);
    SPLAT_END_SEG(data_EA1C88, 0xEA1FF8)
    
    SPLAT_BEGIN_SEG(data_EA1FF8, 0xEA1FF8, 0xEA1FF8, )
        Yay0_EA1FF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA1FF8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA1FF8, 0xEA2748)
    
    SPLAT_BEGIN_SEG(data_EA2748, 0xEA2748, 0xEA2748, )
        Yay0_EA2748_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA2748.Yay0.o(.data);
    SPLAT_END_SEG(data_EA2748, 0xEA28E8)
    
    SPLAT_BEGIN_SEG(data_EA28E8, 0xEA28E8, 0xEA28E8, )
        Yay0_EA28E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA28E8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA28E8, 0xEA2AC0)
    
    SPLAT_BEGIN_SEG(data_EA2AC0, 0xEA2AC0, 0xEA2AC0, )
        Yay0_EA2AC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA2AC0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA2AC0, 0xEA2D40)
    
    SPLAT_BEGIN_SEG(data_EA2D40, 0xEA2D40, 0xEA2D40, )
        Yay0_EA2D40_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA2D40.Yay0.o(.data);
    SPLAT_END_SEG(data_EA2D40, 0xEA3710)
    
    SPLAT_BEGIN_SEG(data_EA3710, 0xEA3710, 0xEA3710, )
        Yay0_EA3710_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA3710.Yay0.o(.data);
    SPLAT_END_SEG(data_EA3710, 0xEA3C90)
    
    SPLAT_BEGIN_SEG(data_EA3C90, 0xEA3C90, 0xEA3C90, )
        Yay0_EA3C90_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA3C90.Yay0.o(.data);
    SPLAT_END_SEG(data_EA3C90, 0xEA47C8)
    
    SPLAT_BEGIN_SEG(data_EA47C8, 0xEA47C8, 0xEA47C8, )
        Yay0_EA47C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA47C8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA47C8, 0xEA4C30)
    
    SPLAT_BEGIN_SEG(data_EA4C30, 0xEA4C30, 0xEA4C30, )
        Yay0_EA4C30_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA4C30.Yay0.o(.data);
    SPLAT_END_SEG(data_EA4C30, 0xEA54B0)
    
    SPLAT_BEGIN_SEG(data_EA54B0, 0xEA54B0, 0xEA54B0, )
        Yay0_EA54B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA54B0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA54B0, 0xEA5B38)
    
    SPLAT_BEGIN_SEG(data_EA5B38, 0xEA5B38, 0xEA5B38, )
        Yay0_EA5B38_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA5B38.Yay0.o(.data);
    SPLAT_END_SEG(data_EA5B38, 0xEA5CC8)
    
    SPLAT_BEGIN_SEG(data_EA5CC8, 0xEA5CC8, 0xEA5CC8, )
        Yay0_EA5CC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA5CC8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA5CC8, 0xEA5FF0)
    
    SPLAT_BEGIN_SEG(data_EA5FF0, 0xEA5FF0, 0xEA5FF0, )
        Yay0_EA5FF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA5FF0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA5FF0, 0xEA6118)
    
    SPLAT_BEGIN_SEG(data_EA6118, 0xEA6118, 0xEA6118, )
        Yay0_EA6118_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA6118.Yay0.o(.data);
    SPLAT_END_SEG(data_EA6118, 0xEA64C0)
    
    SPLAT_BEGIN_SEG(data_EA64C0, 0xEA64C0, 0xEA64C0, )
        Yay0_EA64C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA64C0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA64C0, 0xEA6538)
    
    SPLAT_BEGIN_SEG(data_EA6538, 0xEA6538, 0xEA6538, )
        Yay0_EA6538_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA6538.Yay0.o(.data);
    SPLAT_END_SEG(data_EA6538, 0xEA6AE8)
    
    SPLAT_BEGIN_SEG(data_EA6AE8, 0xEA6AE8, 0xEA6AE8, )
        Yay0_EA6AE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA6AE8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA6AE8, 0xEA7AF0)
    
    SPLAT_BEGIN_SEG(data_EA7AF0, 0xEA7AF0, 0xEA7AF0, )
        Yay0_EA7AF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA7AF0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA7AF0, 0xEA84F8)
    
    SPLAT_BEGIN_SEG(data_EA84F8, 0xEA84F8, 0xEA84F8, )
        Yay0_EA84F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA84F8.Yay0.o(.data);
    SPLAT_END_SEG(data_EA84F8, 0xEA93F0)
    
    SPLAT_BEGIN_SEG(data_EA93F0, 0xEA93F0, 0xEA93F0, )
        Yay0_EA93F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EA93F0.Yay0.o(.data);
    SPLAT_END_SEG(data_EA93F0, 0xEAA298)
    
    SPLAT_BEGIN_SEG(data_EAA298, 0xEAA298, 0xEAA298, )
        Yay0_EAA298_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAA298.Yay0.o(.data);
    SPLAT_END_SEG(data_EAA298, 0xEAAC70)
    
    SPLAT_BEGIN_SEG(data_EAAC70, 0xEAAC70, 0xEAAC70, )
        Yay0_EAAC70_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAAC70.Yay0.o(.data);
    SPLAT_END_SEG(data_EAAC70, 0xEABBE8)
    
    SPLAT_BEGIN_SEG(data_EABBE8, 0xEABBE8, 0xEABBE8, )
        Yay0_EABBE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EABBE8.Yay0.o(.data);
    SPLAT_END_SEG(data_EABBE8, 0xEAC5F0)
    
    SPLAT_BEGIN_SEG(data_EAC5F0, 0xEAC5F0, 0xEAC5F0, )
        Yay0_EAC5F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAC5F0.Yay0.o(.data);
    SPLAT_END_SEG(data_EAC5F0, 0xEAD090)
    
    SPLAT_BEGIN_SEG(data_EAD090, 0xEAD090, 0xEAD090, )
        Yay0_EAD090_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAD090.Yay0.o(.data);
    SPLAT_END_SEG(data_EAD090, 0xEAD3A0)
    
    SPLAT_BEGIN_SEG(data_EAD3A0, 0xEAD3A0, 0xEAD3A0, )
        Yay0_EAD3A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAD3A0.Yay0.o(.data);
    SPLAT_END_SEG(data_EAD3A0, 0xEAE1E8)
    
    SPLAT_BEGIN_SEG(data_EAE1E8, 0xEAE1E8, 0xEAE1E8, )
        Yay0_EAE1E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAE1E8.Yay0.o(.data);
    SPLAT_END_SEG(data_EAE1E8, 0xEAEBD8)
    
    SPLAT_BEGIN_SEG(data_EAEBD8, 0xEAEBD8, 0xEAEBD8, )
        Yay0_EAEBD8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAEBD8.Yay0.o(.data);
    SPLAT_END_SEG(data_EAEBD8, 0xEAEF90)
    
    SPLAT_BEGIN_SEG(data_EAEF90, 0xEAEF90, 0xEAEF90, )
        Yay0_EAEF90_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAEF90.Yay0.o(.data);
    SPLAT_END_SEG(data_EAEF90, 0xEAF938)
    
    SPLAT_BEGIN_SEG(data_EAF938, 0xEAF938, 0xEAF938, )
        Yay0_EAF938_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAF938.Yay0.o(.data);
    SPLAT_END_SEG(data_EAF938, 0xEAFF40)
    
    SPLAT_BEGIN_SEG(data_EAFF40, 0xEAFF40, 0xEAFF40, )
        Yay0_EAFF40_Yay0 = .;
        BUILD_DIR/bin/Yay0/EAFF40.Yay0.o(.data);
    SPLAT_END_SEG(data_EAFF40, 0xEB0958)
    
    SPLAT_BEGIN_SEG(data_EB0958, 0xEB0958, 0xEB0958, )
        Yay0_EB0958_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB0958.Yay0.o(.data);
    SPLAT_END_SEG(data_EB0958, 0xEB1408)
    
    SPLAT_BEGIN_SEG(data_EB1408, 0xEB1408, 0xEB1408, )
        Yay0_EB1408_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1408.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1408, 0xEB1528)
    
    SPLAT_BEGIN_SEG(data_EB1528, 0xEB1528, 0xEB1528, )
        Yay0_EB1528_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1528.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1528, 0xEB1578)
    
    SPLAT_BEGIN_SEG(data_EB1578, 0xEB1578, 0xEB1578, )
        Yay0_EB1578_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1578.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1578, 0xEB15C8)
    
    SPLAT_BEGIN_SEG(data_EB15C8, 0xEB15C8, 0xEB15C8, )
        Yay0_EB15C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB15C8.Yay0.o(.data);
    SPLAT_END_SEG(data_EB15C8, 0xEB1618)
    
    SPLAT_BEGIN_SEG(data_EB1618, 0xEB1618, 0xEB1618, )
        Yay0_EB1618_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1618.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1618, 0xEB16E0)
    
    SPLAT_BEGIN_SEG(data_EB16E0, 0xEB16E0, 0xEB16E0, )
        Yay0_EB16E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB16E0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB16E0, 0xEB1B68)
    
    SPLAT_BEGIN_SEG(data_EB1B68, 0xEB1B68, 0xEB1B68, )
        Yay0_EB1B68_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1B68.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1B68, 0xEB1C18)
    
    SPLAT_BEGIN_SEG(data_EB1C18, 0xEB1C18, 0xEB1C18, )
        Yay0_EB1C18_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1C18.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1C18, 0xEB1E30)
    
    SPLAT_BEGIN_SEG(data_EB1E30, 0xEB1E30, 0xEB1E30, )
        Yay0_EB1E30_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1E30.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1E30, 0xEB1F20)
    
    SPLAT_BEGIN_SEG(data_EB1F20, 0xEB1F20, 0xEB1F20, )
        Yay0_EB1F20_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB1F20.Yay0.o(.data);
    SPLAT_END_SEG(data_EB1F20, 0xEB2128)
    
    SPLAT_BEGIN_SEG(data_EB2128, 0xEB2128, 0xEB2128, )
        Yay0_EB2128_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB2128.Yay0.o(.data);
    SPLAT_END_SEG(data_EB2128, 0xEB24C0)
    
    SPLAT_BEGIN_SEG(data_EB24C0, 0xEB24C0, 0xEB24C0, )
        Yay0_EB24C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB24C0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB24C0, 0xEB2BE0)
    
    SPLAT_BEGIN_SEG(data_EB2BE0, 0xEB2BE0, 0xEB2BE0, )
        Yay0_EB2BE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB2BE0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB2BE0, 0xEB2C98)
    
    SPLAT_BEGIN_SEG(data_EB2C98, 0xEB2C98, 0xEB2C98, )
        Yay0_EB2C98_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB2C98.Yay0.o(.data);
    SPLAT_END_SEG(data_EB2C98, 0xEB3108)
    
    SPLAT_BEGIN_SEG(data_EB3108, 0xEB3108, 0xEB3108, )
        Yay0_EB3108_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB3108.Yay0.o(.data);
    SPLAT_END_SEG(data_EB3108, 0xEB3708)
    
    SPLAT_BEGIN_SEG(data_EB3708, 0xEB3708, 0xEB3708, )
        Yay0_EB3708_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB3708.Yay0.o(.data);
    SPLAT_END_SEG(data_EB3708, 0xEB3AD0)
    
    SPLAT_BEGIN_SEG(data_EB3AD0, 0xEB3AD0, 0xEB3AD0, )
        Yay0_EB3AD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB3AD0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB3AD0, 0xEB3EC0)
    
    SPLAT_BEGIN_SEG(data_EB3EC0, 0xEB3EC0, 0xEB3EC0, )
        Yay0_EB3EC0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB3EC0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB3EC0, 0xEB3F70)
    
    SPLAT_BEGIN_SEG(data_EB3F70, 0xEB3F70, 0xEB3F70, )
        Yay0_EB3F70_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB3F70.Yay0.o(.data);
    SPLAT_END_SEG(data_EB3F70, 0xEB3FE0)
    
    SPLAT_BEGIN_SEG(data_EB3FE0, 0xEB3FE0, 0xEB3FE0, )
        Yay0_EB3FE0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB3FE0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB3FE0, 0xEB4260)
    
    SPLAT_BEGIN_SEG(data_EB4260, 0xEB4260, 0xEB4260, )
        Yay0_EB4260_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB4260.Yay0.o(.data);
    SPLAT_END_SEG(data_EB4260, 0xEB4478)
    
    SPLAT_BEGIN_SEG(data_EB4478, 0xEB4478, 0xEB4478, )
        Yay0_EB4478_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB4478.Yay0.o(.data);
    SPLAT_END_SEG(data_EB4478, 0xEB57C8)
    
    SPLAT_BEGIN_SEG(data_EB57C8, 0xEB57C8, 0xEB57C8, )
        Yay0_EB57C8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB57C8.Yay0.o(.data);
    SPLAT_END_SEG(data_EB57C8, 0xEB58E8)
    
    SPLAT_BEGIN_SEG(data_EB58E8, 0xEB58E8, 0xEB58E8, )
        Yay0_EB58E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB58E8.Yay0.o(.data);
    SPLAT_END_SEG(data_EB58E8, 0xEB5A60)
    
    SPLAT_BEGIN_SEG(data_EB5A60, 0xEB5A60, 0xEB5A60, )
        Yay0_EB5A60_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB5A60.Yay0.o(.data);
    SPLAT_END_SEG(data_EB5A60, 0xEB5B80)
    
    SPLAT_BEGIN_SEG(data_EB5B80, 0xEB5B80, 0xEB5B80, )
        Yay0_EB5B80_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB5B80.Yay0.o(.data);
    SPLAT_END_SEG(data_EB5B80, 0xEB5CD0)
    
    SPLAT_BEGIN_SEG(data_EB5CD0, 0xEB5CD0, 0xEB5CD0, )
        Yay0_EB5CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB5CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB5CD0, 0xEB5DE8)
    
    SPLAT_BEGIN_SEG(data_EB5DE8, 0xEB5DE8, 0xEB5DE8, )
        Yay0_EB5DE8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB5DE8.Yay0.o(.data);
    SPLAT_END_SEG(data_EB5DE8, 0xEB5F60)
    
    SPLAT_BEGIN_SEG(data_EB5F60, 0xEB5F60, 0xEB5F60, )
        Yay0_EB5F60_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB5F60.Yay0.o(.data);
    SPLAT_END_SEG(data_EB5F60, 0xEB61A0)
    
    SPLAT_BEGIN_SEG(data_EB61A0, 0xEB61A0, 0xEB61A0, )
        Yay0_EB61A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB61A0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB61A0, 0xEB64C0)
    
    SPLAT_BEGIN_SEG(data_EB64C0, 0xEB64C0, 0xEB64C0, )
        Yay0_EB64C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB64C0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB64C0, 0xEB66F0)
    
    SPLAT_BEGIN_SEG(data_EB66F0, 0xEB66F0, 0xEB66F0, )
        Yay0_EB66F0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB66F0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB66F0, 0xEB6900)
    
    SPLAT_BEGIN_SEG(data_EB6900, 0xEB6900, 0xEB6900, )
        Yay0_EB6900_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB6900.Yay0.o(.data);
    SPLAT_END_SEG(data_EB6900, 0xEB6A08)
    
    SPLAT_BEGIN_SEG(data_EB6A08, 0xEB6A08, 0xEB6A08, )
        Yay0_EB6A08_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB6A08.Yay0.o(.data);
    SPLAT_END_SEG(data_EB6A08, 0xEB6CF0)
    
    SPLAT_BEGIN_SEG(data_EB6CF0, 0xEB6CF0, 0xEB6CF0, )
        Yay0_EB6CF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB6CF0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB6CF0, 0xEB7200)
    
    SPLAT_BEGIN_SEG(data_EB7200, 0xEB7200, 0xEB7200, )
        Yay0_EB7200_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB7200.Yay0.o(.data);
    SPLAT_END_SEG(data_EB7200, 0xEB7260)
    
    SPLAT_BEGIN_SEG(data_EB7260, 0xEB7260, 0xEB7260, )
        Yay0_EB7260_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB7260.Yay0.o(.data);
    SPLAT_END_SEG(data_EB7260, 0xEB75A0)
    
    SPLAT_BEGIN_SEG(data_EB75A0, 0xEB75A0, 0xEB75A0, )
        Yay0_EB75A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB75A0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB75A0, 0xEB7838)
    
    SPLAT_BEGIN_SEG(data_EB7838, 0xEB7838, 0xEB7838, )
        Yay0_EB7838_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB7838.Yay0.o(.data);
    SPLAT_END_SEG(data_EB7838, 0xEB7A38)
    
    SPLAT_BEGIN_SEG(data_EB7A38, 0xEB7A38, 0xEB7A38, )
        Yay0_EB7A38_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB7A38.Yay0.o(.data);
    SPLAT_END_SEG(data_EB7A38, 0xEB7D80)
    
    SPLAT_BEGIN_SEG(data_EB7D80, 0xEB7D80, 0xEB7D80, )
        Yay0_EB7D80_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB7D80.Yay0.o(.data);
    SPLAT_END_SEG(data_EB7D80, 0xEB8CA8)
    
    SPLAT_BEGIN_SEG(data_EB8CA8, 0xEB8CA8, 0xEB8CA8, )
        Yay0_EB8CA8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB8CA8.Yay0.o(.data);
    SPLAT_END_SEG(data_EB8CA8, 0xEB8E00)
    
    SPLAT_BEGIN_SEG(data_EB8E00, 0xEB8E00, 0xEB8E00, )
        Yay0_EB8E00_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB8E00.Yay0.o(.data);
    SPLAT_END_SEG(data_EB8E00, 0xEB94C0)
    
    SPLAT_BEGIN_SEG(data_EB94C0, 0xEB94C0, 0xEB94C0, )
        Yay0_EB94C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB94C0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB94C0, 0xEB9CD0)
    
    SPLAT_BEGIN_SEG(data_EB9CD0, 0xEB9CD0, 0xEB9CD0, )
        Yay0_EB9CD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB9CD0.Yay0.o(.data);
    SPLAT_END_SEG(data_EB9CD0, 0xEB9D38)
    
    SPLAT_BEGIN_SEG(data_EB9D38, 0xEB9D38, 0xEB9D38, )
        Yay0_EB9D38_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB9D38.Yay0.o(.data);
    SPLAT_END_SEG(data_EB9D38, 0xEB9E08)
    
    SPLAT_BEGIN_SEG(data_EB9E08, 0xEB9E08, 0xEB9E08, )
        Yay0_EB9E08_Yay0 = .;
        BUILD_DIR/bin/Yay0/EB9E08.Yay0.o(.data);
    SPLAT_END_SEG(data_EB9E08, 0xEBA2E8)
    
    SPLAT_BEGIN_SEG(data_EBA2E8, 0xEBA2E8, 0xEBA2E8, )
        Yay0_EBA2E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBA2E8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBA2E8, 0xEBA3D8)
    
    SPLAT_BEGIN_SEG(data_EBA3D8, 0xEBA3D8, 0xEBA3D8, )
        Yay0_EBA3D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBA3D8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBA3D8, 0xEBA918)
    
    SPLAT_BEGIN_SEG(data_EBA918, 0xEBA918, 0xEBA918, )
        Yay0_EBA918_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBA918.Yay0.o(.data);
    SPLAT_END_SEG(data_EBA918, 0xEBA990)
    
    SPLAT_BEGIN_SEG(data_EBA990, 0xEBA990, 0xEBA990, )
        Yay0_EBA990_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBA990.Yay0.o(.data);
    SPLAT_END_SEG(data_EBA990, 0xEBAD00)
    
    SPLAT_BEGIN_SEG(data_EBAD00, 0xEBAD00, 0xEBAD00, )
        Yay0_EBAD00_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBAD00.Yay0.o(.data);
    SPLAT_END_SEG(data_EBAD00, 0xEBB190)
    
    SPLAT_BEGIN_SEG(data_EBB190, 0xEBB190, 0xEBB190, )
        Yay0_EBB190_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBB190.Yay0.o(.data);
    SPLAT_END_SEG(data_EBB190, 0xEBB4A0)
    
    SPLAT_BEGIN_SEG(data_EBB4A0, 0xEBB4A0, 0xEBB4A0, )
        Yay0_EBB4A0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBB4A0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBB4A0, 0xEBB7B8)
    
    SPLAT_BEGIN_SEG(data_EBB7B8, 0xEBB7B8, 0xEBB7B8, )
        Yay0_EBB7B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBB7B8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBB7B8, 0xEBB8D8)
    
    SPLAT_BEGIN_SEG(data_EBB8D8, 0xEBB8D8, 0xEBB8D8, )
        Yay0_EBB8D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBB8D8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBB8D8, 0xEBBB10)
    
    SPLAT_BEGIN_SEG(data_EBBB10, 0xEBBB10, 0xEBBB10, )
        Yay0_EBBB10_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBBB10.Yay0.o(.data);
    SPLAT_END_SEG(data_EBBB10, 0xEBBDF0)
    
    SPLAT_BEGIN_SEG(data_EBBDF0, 0xEBBDF0, 0xEBBDF0, )
        Yay0_EBBDF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBBDF0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBBDF0, 0xEBBF68)
    
    SPLAT_BEGIN_SEG(data_EBBF68, 0xEBBF68, 0xEBBF68, )
        Yay0_EBBF68_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBBF68.Yay0.o(.data);
    SPLAT_END_SEG(data_EBBF68, 0xEBC278)
    
    SPLAT_BEGIN_SEG(data_EBC278, 0xEBC278, 0xEBC278, )
        Yay0_EBC278_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC278.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC278, 0xEBC2E8)
    
    SPLAT_BEGIN_SEG(data_EBC2E8, 0xEBC2E8, 0xEBC2E8, )
        Yay0_EBC2E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC2E8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC2E8, 0xEBC360)
    
    SPLAT_BEGIN_SEG(data_EBC360, 0xEBC360, 0xEBC360, )
        Yay0_EBC360_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC360.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC360, 0xEBC3D8)
    
    SPLAT_BEGIN_SEG(data_EBC3D8, 0xEBC3D8, 0xEBC3D8, )
        Yay0_EBC3D8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC3D8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC3D8, 0xEBC4D0)
    
    SPLAT_BEGIN_SEG(data_EBC4D0, 0xEBC4D0, 0xEBC4D0, )
        Yay0_EBC4D0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC4D0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC4D0, 0xEBC610)
    
    SPLAT_BEGIN_SEG(data_EBC610, 0xEBC610, 0xEBC610, )
        Yay0_EBC610_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC610.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC610, 0xEBC940)
    
    SPLAT_BEGIN_SEG(data_EBC940, 0xEBC940, 0xEBC940, )
        Yay0_EBC940_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBC940.Yay0.o(.data);
    SPLAT_END_SEG(data_EBC940, 0xEBCAB8)
    
    SPLAT_BEGIN_SEG(data_EBCAB8, 0xEBCAB8, 0xEBCAB8, )
        Yay0_EBCAB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBCAB8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBCAB8, 0xEBCDB8)
    
    SPLAT_BEGIN_SEG(data_EBCDB8, 0xEBCDB8, 0xEBCDB8, )
        Yay0_EBCDB8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBCDB8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBCDB8, 0xEBCE48)
    
    SPLAT_BEGIN_SEG(data_EBCE48, 0xEBCE48, 0xEBCE48, )
        Yay0_EBCE48_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBCE48.Yay0.o(.data);
    SPLAT_END_SEG(data_EBCE48, 0xEBD388)
    
    SPLAT_BEGIN_SEG(data_EBD388, 0xEBD388, 0xEBD388, )
        Yay0_EBD388_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBD388.Yay0.o(.data);
    SPLAT_END_SEG(data_EBD388, 0xEBD480)
    
    SPLAT_BEGIN_SEG(data_EBD480, 0xEBD480, 0xEBD480, )
        Yay0_EBD480_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBD480.Yay0.o(.data);
    SPLAT_END_SEG(data_EBD480, 0xEBD8B0)
    
    SPLAT_BEGIN_SEG(data_EBD8B0, 0xEBD8B0, 0xEBD8B0, )
        Yay0_EBD8B0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBD8B0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBD8B0, 0xEBDAA0)
    
    SPLAT_BEGIN_SEG(data_EBDAA0, 0xEBDAA0, 0xEBDAA0, )
        Yay0_EBDAA0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBDAA0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBDAA0, 0xEBE338)
    
    SPLAT_BEGIN_SEG(data_EBE338, 0xEBE338, 0xEBE338, )
        Yay0_EBE338_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBE338.Yay0.o(.data);
    SPLAT_END_SEG(data_EBE338, 0xEBE610)
    
    SPLAT_BEGIN_SEG(data_EBE610, 0xEBE610, 0xEBE610, )
        Yay0_EBE610_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBE610.Yay0.o(.data);
    SPLAT_END_SEG(data_EBE610, 0xEBEF88)
    
    SPLAT_BEGIN_SEG(data_EBEF88, 0xEBEF88, 0xEBEF88, )
        Yay0_EBEF88_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBEF88.Yay0.o(.data);
    SPLAT_END_SEG(data_EBEF88, 0xEBF700)
    
    SPLAT_BEGIN_SEG(data_EBF700, 0xEBF700, 0xEBF700, )
        Yay0_EBF700_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF700.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF700, 0xEBF758)
    
    SPLAT_BEGIN_SEG(data_EBF758, 0xEBF758, 0xEBF758, )
        Yay0_EBF758_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF758.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF758, 0xEBF798)
    
    SPLAT_BEGIN_SEG(data_EBF798, 0xEBF798, 0xEBF798, )
        Yay0_EBF798_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF798.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF798, 0xEBF7E8)
    
    SPLAT_BEGIN_SEG(data_EBF7E8, 0xEBF7E8, 0xEBF7E8, )
        Yay0_EBF7E8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF7E8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF7E8, 0xEBF840)
    
    SPLAT_BEGIN_SEG(data_EBF840, 0xEBF840, 0xEBF840, )
        Yay0_EBF840_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF840.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF840, 0xEBF888)
    
    SPLAT_BEGIN_SEG(data_EBF888, 0xEBF888, 0xEBF888, )
        Yay0_EBF888_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF888.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF888, 0xEBF8E0)
    
    SPLAT_BEGIN_SEG(data_EBF8E0, 0xEBF8E0, 0xEBF8E0, )
        Yay0_EBF8E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF8E0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF8E0, 0xEBF940)
    
    SPLAT_BEGIN_SEG(data_EBF940, 0xEBF940, 0xEBF940, )
        Yay0_EBF940_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF940.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF940, 0xEBF9A8)
    
    SPLAT_BEGIN_SEG(data_EBF9A8, 0xEBF9A8, 0xEBF9A8, )
        Yay0_EBF9A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF9A8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF9A8, 0xEBF9F8)
    
    SPLAT_BEGIN_SEG(data_EBF9F8, 0xEBF9F8, 0xEBF9F8, )
        Yay0_EBF9F8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBF9F8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBF9F8, 0xEBFA38)
    
    SPLAT_BEGIN_SEG(data_EBFA38, 0xEBFA38, 0xEBFA38, )
        Yay0_EBFA38_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFA38.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFA38, 0xEBFA90)
    
    SPLAT_BEGIN_SEG(data_EBFA90, 0xEBFA90, 0xEBFA90, )
        Yay0_EBFA90_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFA90.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFA90, 0xEBFAF0)
    
    SPLAT_BEGIN_SEG(data_EBFAF0, 0xEBFAF0, 0xEBFAF0, )
        Yay0_EBFAF0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFAF0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFAF0, 0xEBFB68)
    
    SPLAT_BEGIN_SEG(data_EBFB68, 0xEBFB68, 0xEBFB68, )
        Yay0_EBFB68_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFB68.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFB68, 0xEBFBC8)
    
    SPLAT_BEGIN_SEG(data_EBFBC8, 0xEBFBC8, 0xEBFBC8, )
        Yay0_EBFBC8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFBC8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFBC8, 0xEBFC30)
    
    SPLAT_BEGIN_SEG(data_EBFC30, 0xEBFC30, 0xEBFC30, )
        Yay0_EBFC30_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFC30.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFC30, 0xEBFC90)
    
    SPLAT_BEGIN_SEG(data_EBFC90, 0xEBFC90, 0xEBFC90, )
        Yay0_EBFC90_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFC90.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFC90, 0xEBFCD0)
    
    SPLAT_BEGIN_SEG(data_EBFCD0, 0xEBFCD0, 0xEBFCD0, )
        Yay0_EBFCD0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFCD0.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFCD0, 0xEBFE98)
    
    SPLAT_BEGIN_SEG(data_EBFE98, 0xEBFE98, 0xEBFE98, )
        Yay0_EBFE98_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFE98.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFE98, 0xEBFFF8)
    
    SPLAT_BEGIN_SEG(data_EBFFF8, 0xEBFFF8, 0xEBFFF8, )
        Yay0_EBFFF8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EBFFF8.Yay0.o(.data);
    SPLAT_END_SEG(data_EBFFF8, 0xEC0158)
    
    SPLAT_BEGIN_SEG(data_EC0158, 0xEC0158, 0xEC0158, )
        Yay0_EC0158_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0158.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0158, 0xEC0210)
    
    SPLAT_BEGIN_SEG(data_EC0210, 0xEC0210, 0xEC0210, )
        Yay0_EC0210_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0210.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0210, 0xEC0300)
    
    SPLAT_BEGIN_SEG(data_EC0300, 0xEC0300, 0xEC0300, )
        Yay0_EC0300_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0300.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0300, 0xEC0358)
    
    SPLAT_BEGIN_SEG(data_EC0358, 0xEC0358, 0xEC0358, )
        Yay0_EC0358_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0358.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0358, 0xEC0380)
    
    SPLAT_BEGIN_SEG(data_EC0380, 0xEC0380, 0xEC0380, )
        Yay0_EC0380_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0380.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0380, 0xEC03E0)
    
    SPLAT_BEGIN_SEG(data_EC03E0, 0xEC03E0, 0xEC03E0, )
        Yay0_EC03E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC03E0.Yay0.o(.data);
    SPLAT_END_SEG(data_EC03E0, 0xEC0458)
    
    SPLAT_BEGIN_SEG(data_EC0458, 0xEC0458, 0xEC0458, )
        Yay0_EC0458_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0458.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0458, 0xEC0508)
    
    SPLAT_BEGIN_SEG(data_EC0508, 0xEC0508, 0xEC0508, )
        Yay0_EC0508_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0508.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0508, 0xEC0558)
    
    SPLAT_BEGIN_SEG(data_EC0558, 0xEC0558, 0xEC0558, )
        Yay0_EC0558_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0558.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0558, 0xEC05A8)
    
    SPLAT_BEGIN_SEG(data_EC05A8, 0xEC05A8, 0xEC05A8, )
        Yay0_EC05A8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC05A8.Yay0.o(.data);
    SPLAT_END_SEG(data_EC05A8, 0xEC0638)
    
    SPLAT_BEGIN_SEG(data_EC0638, 0xEC0638, 0xEC0638, )
        Yay0_EC0638_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0638.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0638, 0xEC06B8)
    
    SPLAT_BEGIN_SEG(data_EC06B8, 0xEC06B8, 0xEC06B8, )
        Yay0_EC06B8_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC06B8.Yay0.o(.data);
    SPLAT_END_SEG(data_EC06B8, 0xEC06E0)
    
    SPLAT_BEGIN_SEG(data_EC06E0, 0xEC06E0, 0xEC06E0, )
        Yay0_EC06E0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC06E0.Yay0.o(.data);
    SPLAT_END_SEG(data_EC06E0, 0xEC0708)
    
    SPLAT_BEGIN_SEG(data_EC0708, 0xEC0708, 0xEC0708, )
        Yay0_EC0708_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0708.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0708, 0xEC0758)
    
    SPLAT_BEGIN_SEG(data_EC0758, 0xEC0758, 0xEC0758, )
        Yay0_EC0758_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0758.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0758, 0xEC0780)
    
    SPLAT_BEGIN_SEG(data_EC0780, 0xEC0780, 0xEC0780, )
        Yay0_EC0780_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC0780.Yay0.o(.data);
    SPLAT_END_SEG(data_EC0780, 0xEC07C0)
    
    SPLAT_BEGIN_SEG(data_EC07C0, 0xEC07C0, 0xEC07C0, )
        Yay0_EC07C0_Yay0 = .;
        BUILD_DIR/bin/Yay0/EC07C0.Yay0.o(.data);
    SPLAT_END_SEG(data_EC07C0, 0x2000000)
}
