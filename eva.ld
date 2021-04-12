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
        BUILD_DIR/src/main.o(.text);
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
        
        BUILD_DIR/src/os/startthread.o(.text);
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
        BUILD_DIR/asm/code_30400.o(.text);
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
        BUILD_DIR/asm/bin_354B0.o(.data);
    }
    END_SEG(main)
    _mainSegNoloadStart = 0x800FF2E0;

    BEGIN_SEG(code_ovl1, 0x80025C00) {
        BUILD_DIR/asm/ovl1/code_00069EE0.o(.text);
        BUILD_DIR/asm/ovl1/code_0006A040.o(.text);
        BUILD_DIR/asm/ovl1/code_0006AE40.o(.text);
        BUILD_DIR/asm/ovl1/code_0006B090.o(.text);
        BUILD_DIR/asm/ovl1/code_0006B2C0.o(.text);
        BUILD_DIR/asm/ovl1/code_0006C980.o(.text);
        BUILD_DIR/asm/ovl1/code_0006D2F0.o(.text);
        BUILD_DIR/asm/ovl1/code_0006EE50.o(.text);
        BUILD_DIR/asm/ovl1/code_000702A0.o(.text);
        BUILD_DIR/asm/ovl1/code_00071530.o(.text);
        BUILD_DIR/asm/ovl1/code_00072CE0.o(.text);
    }
    END_SEG(code_ovl1)
    
    BEGIN_SEG(data_72D80, 0x8002EAA0) {
        BUILD_DIR/asm/data/ovl1/ovl1.data.o(.data);
    }
    END_SEG(data_72D80)
    
    BEGIN_SEG(code_ovl2, 0x80025C00) {
        BUILD_DIR/asm/ovl2/code_00074BB0.o(.text);
        BUILD_DIR/asm/ovl2/code_00074D60.o(.text);
        BUILD_DIR/asm/ovl2/code_00076E50.o(.text);
        BUILD_DIR/asm/ovl2/code_00078AC0.o(.text);
        BUILD_DIR/asm/ovl2/code_00079D50.o(.text);
        BUILD_DIR/asm/ovl2/code_0007BF80.o(.text);
        BUILD_DIR/asm/ovl2/code_0007C6C0.o(.text);
        BUILD_DIR/asm/ovl2/code_0007EFE0.o(.text);
        BUILD_DIR/asm/ovl2/code_00080050.o(.text);
        BUILD_DIR/asm/ovl2/code_00081610.o(.text);
        BUILD_DIR/asm/ovl2/code_00085AF0.o(.text);
        BUILD_DIR/asm/ovl2/code_00086C20.o(.text);
        BUILD_DIR/asm/ovl2/code_00087F70.o(.text);
        BUILD_DIR/asm/ovl2/code_000891F0.o(.text);
        BUILD_DIR/asm/ovl2/code_00089D20.o(.text);
        BUILD_DIR/asm/ovl2/code_0008B2A0.o(.text);
        BUILD_DIR/asm/ovl2/code_0008C710.o(.text);
        BUILD_DIR/asm/ovl2/code_0008D490.o(.text);
        BUILD_DIR/asm/ovl2/code_0008E3C0.o(.text);
        BUILD_DIR/asm/ovl2/code_0008F3B0.o(.text);
        BUILD_DIR/asm/ovl2/code_00090840.o(.text);
        BUILD_DIR/asm/ovl2/code_000B7A10.o(.text);
    }
    END_SEG(code_ovl2)
    
    BEGIN_SEG(data_B8B20, 0xB8B20) {
        BUILD_DIR/asm/ovl2/data.o(.data);
    }
    END_SEG(data_B8B20)
    
    BEGIN_SEG(code_ovl3, 0x80025C00) {
        BUILD_DIR/asm/ovl3/code_000CF110.o(.text);
        BUILD_DIR/asm/ovl3/code_000D15C0.o(.text);
        BUILD_DIR/asm/ovl3/code_000D1770.o(.text);
        BUILD_DIR/asm/ovl3/code_000D22D0.o(.text);
        BUILD_DIR/asm/ovl3/code_000D3210.o(.text);
        BUILD_DIR/asm/ovl3/code_000D57D0.o(.text);
        BUILD_DIR/asm/ovl3/code_000D6940.o(.text);
        BUILD_DIR/asm/ovl3/code_000DA750.o(.text);
        BUILD_DIR/asm/ovl3/code_000DAD10.o(.text);
        BUILD_DIR/asm/ovl3/code_000DF470.o(.text);
        BUILD_DIR/asm/ovl3/code_000E1BE0.o(.text);
        BUILD_DIR/asm/ovl3/code_000E22D0.o(.text);
        BUILD_DIR/asm/ovl3/code_000E4600.o(.text);
        BUILD_DIR/asm/ovl3/code_000E92F0.o(.text);
        BUILD_DIR/asm/ovl3/code_000EAC00.o(.text);
        BUILD_DIR/asm/ovl3/code_000ECA30.o(.text);
        BUILD_DIR/asm/ovl3/code_000F3E10.o(.text);
        BUILD_DIR/asm/ovl3/code_000F6680.o(.text);
        BUILD_DIR/asm/ovl3/code_000F7730.o(.text);
        BUILD_DIR/asm/ovl3/code_000F9170.o(.text);
        BUILD_DIR/asm/ovl3/code_000FE9A0.o(.text);
        BUILD_DIR/asm/ovl3/code_00103E10.o(.text);
        BUILD_DIR/asm/ovl3/code_00104FB0.o(.text);
        BUILD_DIR/asm/ovl3/code_0010A7A0.o(.text);
        BUILD_DIR/asm/ovl3/code_0010DC10.o(.text);
    }
    END_SEG(code_ovl3)
    
    BEGIN_SEG(data_110570, 0x110570) {
        BUILD_DIR/asm/ovl3/data.o(.data);
    }
    END_SEG(data_110570)
    
    BEGIN_SEG(code_ovl4, 0x80025C00) {
        BUILD_DIR/asm/ovl4/code_113B10.o(.text);
        BUILD_DIR/asm/ovl4/code_113CB0.o(.text);
        BUILD_DIR/asm/ovl4/code_116DD0.o(.text);
    }
    END_SEG(code_ovl4)
    
    BEGIN_SEG(data_1173C0, 0x1173C0) {
        BUILD_DIR/asm/ovl4/data.o(.data);
    }
    END_SEG(data_1173C0)
    
    BEGIN_SEG(code_ovl5, 0x80025C00) {
        BUILD_DIR/asm/ovl5/code_117A00.o(.text);
        BUILD_DIR/asm/ovl5/code_117BB0.o(.text);
        BUILD_DIR/asm/ovl5/code_118480.o(.text);
        BUILD_DIR/asm/ovl5/code_1187E0.o(.text);
        BUILD_DIR/asm/ovl5/code_118DA0.o(.text);
        BUILD_DIR/asm/ovl5/code_119720.o(.text);
        BUILD_DIR/asm/ovl5/code_11A510.o(.text);
        BUILD_DIR/asm/ovl5/code_11B0A0.o(.text);
        BUILD_DIR/asm/ovl5/code_11BC10.o(.text);
        BUILD_DIR/asm/ovl5/code_11C4F0.o(.text);
        BUILD_DIR/asm/ovl5/code_11C910.o(.text);
        BUILD_DIR/asm/ovl5/code_11CF60.o(.text);
        BUILD_DIR/asm/ovl5/code_11D1B0.o(.text);
        BUILD_DIR/asm/ovl5/code_120B90.o(.text);
        BUILD_DIR/asm/ovl5/code_1263F0.o(.text);
        BUILD_DIR/asm/ovl5/code_126830.o(.text);
        BUILD_DIR/asm/ovl5/code_126F70.o(.text);
        BUILD_DIR/asm/ovl5/code_127420.o(.text);
        BUILD_DIR/asm/ovl5/code_127850.o(.text);
        BUILD_DIR/asm/ovl5/code_127C80.o(.text);
        BUILD_DIR/asm/ovl5/code_128070.o(.text);
        BUILD_DIR/asm/ovl5/code_128830.o(.text);
        BUILD_DIR/asm/ovl5/code_1289D0.o(.text);
        BUILD_DIR/asm/ovl5/code_12A470.o(.text);
        BUILD_DIR/asm/ovl5/code_12A650.o(.text);
        BUILD_DIR/asm/ovl5/code_12A9A0.o(.text);
        BUILD_DIR/asm/ovl5/code_12B400.o(.text);
        BUILD_DIR/asm/ovl5/code_12C010.o(.text);
        BUILD_DIR/asm/ovl5/code_12C3D0.o(.text);
        BUILD_DIR/asm/ovl5/code_12C990.o(.text);
        BUILD_DIR/asm/ovl5/code_12DD50.o(.text);
        BUILD_DIR/asm/ovl5/code_12E7A0.o(.text);
        BUILD_DIR/asm/ovl5/code_12F270.o(.text);
        BUILD_DIR/asm/ovl5/code_12FE80.o(.text);
        BUILD_DIR/asm/ovl5/code_130150.o(.text);
        BUILD_DIR/asm/ovl5/code_1308F0.o(.text);
        BUILD_DIR/asm/ovl5/code_131420.o(.text);
        BUILD_DIR/asm/ovl5/code_131B70.o(.text);
        BUILD_DIR/asm/ovl5/code_132120.o(.text);
        BUILD_DIR/asm/ovl5/code_132690.o(.text);
        BUILD_DIR/asm/ovl5/code_132F30.o(.text);
        BUILD_DIR/asm/ovl5/code_1348B0.o(.text);
        BUILD_DIR/asm/ovl5/code_134D30.o(.text);
        BUILD_DIR/asm/ovl5/code_1354E0.o(.text);
        BUILD_DIR/asm/ovl5/code_135A40.o(.text);
        BUILD_DIR/asm/ovl5/code_136240.o(.text);
        BUILD_DIR/asm/ovl5/code_136FC0.o(.text);
        BUILD_DIR/asm/ovl5/code_137390.o(.text);
        BUILD_DIR/asm/ovl5/code_137A00.o(.text);
        BUILD_DIR/asm/ovl5/code_137F20.o(.text);
        BUILD_DIR/asm/ovl5/code_1383B0.o(.text);
        BUILD_DIR/asm/ovl5/code_1386B0.o(.text);
        BUILD_DIR/asm/ovl5/code_1389A0.o(.text);
        BUILD_DIR/asm/ovl5/code_138F90.o(.text);
        BUILD_DIR/asm/ovl5/code_139260.o(.text);
        BUILD_DIR/asm/ovl5/code_139C00.o(.text);
        BUILD_DIR/asm/ovl5/code_139D90.o(.text);
        BUILD_DIR/asm/ovl5/code_13A5C0.o(.text);
        BUILD_DIR/asm/ovl5/code_13AED0.o(.text);
        BUILD_DIR/asm/ovl5/code_13BD50.o(.text);
        BUILD_DIR/asm/ovl5/code_13C4F0.o(.text);
        BUILD_DIR/asm/ovl5/code_13CD10.o(.text);
        BUILD_DIR/asm/ovl5/code_13F210.o(.text);
        BUILD_DIR/asm/ovl5/code_140E50.o(.text);
        BUILD_DIR/asm/ovl5/code_141130.o(.text);
        BUILD_DIR/asm/ovl5/code_141600.o(.text);
        BUILD_DIR/asm/ovl5/code_142B90.o(.text);
        BUILD_DIR/asm/ovl5/code_142FB0.o(.text);
        BUILD_DIR/asm/ovl5/code_143360.o(.text);
    }
    END_SEG(code_ovl5)
    
    BEGIN_SEG(data_1436F0, 0x1436F0) {
        BUILD_DIR/asm/ovl5/data.o(.data);
    }
    END_SEG(data_1436F0)
    
    BEGIN_SEG(code_ovl6, 0x80025C00) {
        BUILD_DIR/asm/ovl6/code_14F960.o(.text);
        BUILD_DIR/asm/ovl6/code_14FD10.o(.text);
        BUILD_DIR/asm/ovl6/code_14FD20.o(.text);
        BUILD_DIR/asm/ovl6/code_1502F0.o(.text);
        BUILD_DIR/asm/ovl6/code_1507F0.o(.text);
        BUILD_DIR/asm/ovl6/code_151D70.o(.text);
        BUILD_DIR/asm/ovl6/code_152B70.o(.text);
        BUILD_DIR/asm/ovl6/code_153680.o(.text);
        BUILD_DIR/asm/ovl6/code_162180.o(.text);
        BUILD_DIR/asm/ovl6/code_162350.o(.text);
        BUILD_DIR/asm/ovl6/code_1643F0.o(.text);
        BUILD_DIR/asm/ovl6/code_164CD0.o(.text);
        BUILD_DIR/asm/ovl6/code_164DF0.o(.text);
        BUILD_DIR/asm/ovl6/code_165030.o(.text);
        BUILD_DIR/asm/ovl6/code_165DD0.o(.text);
        BUILD_DIR/asm/ovl6/code_166310.o(.text);
        BUILD_DIR/asm/ovl6/code_1666E0.o(.text);
        BUILD_DIR/asm/ovl6/code_167310.o(.text);
        BUILD_DIR/asm/ovl6/code_167A70.o(.text);
        BUILD_DIR/asm/ovl6/code_167CC0.o(.text);
    }
    END_SEG(code_ovl6)
    
    BEGIN_SEG(data_168230, 0x168230) {
        BUILD_DIR/asm/ovl6/data.o(.data);
    }
    END_SEG(data_168230)
    
    BEGIN_SEG(code_ovl7, 0x80025C00) {
        BUILD_DIR/asm/ovl7/code_175640.o(.text);
        BUILD_DIR/asm/ovl7/code_175860.o(.text);
        BUILD_DIR/asm/ovl7/code_179E00.o(.text);
        BUILD_DIR/asm/ovl7/code_17AEF0.o(.text);
        BUILD_DIR/asm/ovl7/code_17B260.o(.text);
        BUILD_DIR/asm/ovl7/code_17C790.o(.text);
        BUILD_DIR/asm/ovl7/code_17E370.o(.text);
        BUILD_DIR/asm/ovl7/code_17E6D0.o(.text);
        BUILD_DIR/asm/ovl7/code_17F6E0.o(.text);
        BUILD_DIR/asm/ovl7/code_17FF50.o(.text);
        BUILD_DIR/asm/ovl7/code_180240.o(.text);
        BUILD_DIR/asm/ovl7/code_181C60.o(.text);
        BUILD_DIR/asm/ovl7/code_182170.o(.text);
        BUILD_DIR/asm/ovl7/code_1822F0.o(.text);
        BUILD_DIR/asm/ovl7/code_183770.o(.text);
        BUILD_DIR/asm/ovl7/code_189240.o(.text);
        BUILD_DIR/asm/ovl7/code_18AA00.o(.text);
        BUILD_DIR/asm/ovl7/code_18D430.o(.text);
        BUILD_DIR/asm/ovl7/code_18D5A0.o(.text);
        BUILD_DIR/asm/ovl7/code_18DEE0.o(.text);
        BUILD_DIR/asm/ovl7/code_18E0D0.o(.text);
        BUILD_DIR/asm/ovl7/code_18EE00.o(.text);
        BUILD_DIR/asm/ovl7/code_18EF90.o(.text);
        BUILD_DIR/asm/ovl7/code_190050.o(.text);
    }
    END_SEG(code_ovl7)
    
    BEGIN_SEG(data_1907E0, 0x1907E0) {
        BUILD_DIR/asm/ovl7/data.o(.data);
    }
    END_SEG(data_1907E0)

    BEGIN_SEG(data, __romPos) {
        BUILD_DIR/asm/yay0.o(.data);
        BUILD_DIR/asm/sound_data.o(.data);
    }
    END_SEG(data)
    /DISCARD/ :
    {
        *(*);
    }
}