.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003C9A0_12E7A0
/* 12E7A0 8003C9A0 2407FFFF */  addiu      $a3, $zero, -1
/* 12E7A4 8003C9A4 24050002 */  addiu      $a1, $zero, 2
/* 12E7A8 8003C9A8 3C068006 */  lui        $a2, %hi(D_8005E142)
/* 12E7AC 8003C9AC 84C6E142 */  lh         $a2, %lo(D_8005E142)($a2)
/* 12E7B0 8003C9B0 00051400 */  sll        $v0, $a1, 0x10
.L8003C9B4:
/* 12E7B4 8003C9B4 00021403 */  sra        $v0, $v0, 0x10
/* 12E7B8 8003C9B8 00021840 */  sll        $v1, $v0, 1
/* 12E7BC 8003C9BC 00621821 */  addu       $v1, $v1, $v0
/* 12E7C0 8003C9C0 00031880 */  sll        $v1, $v1, 2
/* 12E7C4 8003C9C4 3C048006 */  lui        $a0, %hi(D_8005E1E8)
/* 12E7C8 8003C9C8 00832021 */  addu       $a0, $a0, $v1
/* 12E7CC 8003C9CC 8484E1E8 */  lh         $a0, %lo(D_8005E1E8)($a0)
/* 12E7D0 8003C9D0 00C4102A */  slt        $v0, $a2, $a0
/* 12E7D4 8003C9D4 1440000A */  bnez       $v0, .L8003CA00
/* 12E7D8 8003C9D8 24A20001 */   addiu     $v0, $a1, 1
/* 12E7DC 8003C9DC 3C028006 */  lui        $v0, %hi(D_8005E1EA)
/* 12E7E0 8003C9E0 00431021 */  addu       $v0, $v0, $v1
/* 12E7E4 8003C9E4 8442E1EA */  lh         $v0, %lo(D_8005E1EA)($v0)
/* 12E7E8 8003C9E8 00821021 */  addu       $v0, $a0, $v0
/* 12E7EC 8003C9EC 00C2102A */  slt        $v0, $a2, $v0
/* 12E7F0 8003C9F0 50400003 */  beql       $v0, $zero, .L8003CA00
/* 12E7F4 8003C9F4 24A20001 */   addiu     $v0, $a1, 1
/* 12E7F8 8003C9F8 0800F286 */  j          .L8003CA18
/* 12E7FC 8003C9FC 00A03821 */   addu      $a3, $a1, $zero
.L8003CA00:
/* 12E800 8003CA00 00402821 */  addu       $a1, $v0, $zero
/* 12E804 8003CA04 00021400 */  sll        $v0, $v0, 0x10
/* 12E808 8003CA08 00021403 */  sra        $v0, $v0, 0x10
/* 12E80C 8003CA0C 28420005 */  slti       $v0, $v0, 5
/* 12E810 8003CA10 5440FFE8 */  bnezl      $v0, .L8003C9B4
/* 12E814 8003CA14 00051400 */   sll       $v0, $a1, 0x10
.L8003CA18:
/* 12E818 8003CA18 00071400 */  sll        $v0, $a3, 0x10
/* 12E81C 8003CA1C 03E00008 */  jr         $ra
/* 12E820 8003CA20 00021403 */   sra       $v0, $v0, 0x10

glabel func_8003CA24_12E824
/* 12E824 8003CA24 3C028005 */  lui        $v0, %hi(D_80051EC6)
/* 12E828 8003CA28 90421EC6 */  lbu        $v0, %lo(D_80051EC6)($v0)
/* 12E82C 8003CA2C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 12E830 8003CA30 AFB20030 */  sw         $s2, 0x30($sp)
/* 12E834 8003CA34 AFBF0034 */  sw         $ra, 0x34($sp)
/* 12E838 8003CA38 AFB1002C */  sw         $s1, 0x2c($sp)
/* 12E83C 8003CA3C AFB00028 */  sw         $s0, 0x28($sp)
/* 12E840 8003CA40 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 12E844 8003CA44 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 12E848 8003CA48 104000DF */  beqz       $v0, .L8003CDC8
/* 12E84C 8003CA4C 00809021 */   addu      $s2, $a0, $zero
/* 12E850 8003CA50 0C02A5D2 */  jal        func_800A9748
/* 12E854 8003CA54 24040001 */   addiu     $a0, $zero, 1
/* 12E858 8003CA58 0C02725C */  jal        func_8009C970
/* 12E85C 8003CA5C 00000000 */   nop
/* 12E860 8003CA60 3C014190 */  lui        $at, 0x4190
/* 12E864 8003CA64 44810000 */  mtc1       $at, $f0
/* 12E868 8003CA68 3C014228 */  lui        $at, 0x4228
/* 12E86C 8003CA6C 44811000 */  mtc1       $at, $f2
/* 12E870 8003CA70 3C01C080 */  lui        $at, 0xc080
/* 12E874 8003CA74 44812000 */  mtc1       $at, $f4
/* 12E878 8003CA78 3C014264 */  lui        $at, 0x4264
/* 12E87C 8003CA7C 44813000 */  mtc1       $at, $f6
/* 12E880 8003CA80 3C01C2D6 */  lui        $at, 0xc2d6
/* 12E884 8003CA84 44814000 */  mtc1       $at, $f8
/* 12E888 8003CA88 24040053 */  addiu      $a0, $zero, 0x53
/* 12E88C 8003CA8C 24050048 */  addiu      $a1, $zero, 0x48
/* 12E890 8003CA90 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12E894 8003CA94 AFA20010 */  sw         $v0, 0x10($sp)
/* 12E898 8003CA98 240200DC */  addiu      $v0, $zero, 0xdc
/* 12E89C 8003CA9C 24060053 */  addiu      $a2, $zero, 0x53
/* 12E8A0 8003CAA0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12E8A4 8003CAA4 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 12E8A8 8003CAA8 3C018015 */  lui        $at, %hi(D_8014A084)
/* 12E8AC 8003CAAC AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 12E8B0 8003CAB0 AFA20014 */  sw         $v0, 0x14($sp)
/* 12E8B4 8003CAB4 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12E8B8 8003CAB8 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12E8BC 8003CABC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12E8C0 8003CAC0 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 12E8C4 8003CAC4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12E8C8 8003CAC8 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 12E8CC 8003CACC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12E8D0 8003CAD0 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 12E8D4 8003CAD4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12E8D8 8003CAD8 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
/* 12E8DC 8003CADC 0C027101 */  jal        func_8009C404
/* 12E8E0 8003CAE0 240700FF */   addiu     $a3, $zero, 0xff
/* 12E8E4 8003CAE4 3C014170 */  lui        $at, 0x4170
/* 12E8E8 8003CAE8 44810000 */  mtc1       $at, $f0
/* 12E8EC 8003CAEC 3C014180 */  lui        $at, 0x4180
/* 12E8F0 8003CAF0 44811000 */  mtc1       $at, $f2
/* 12E8F4 8003CAF4 3C01C1C0 */  lui        $at, 0xc1c0
/* 12E8F8 8003CAF8 44812000 */  mtc1       $at, $f4
/* 12E8FC 8003CAFC 3C014130 */  lui        $at, 0x4130
/* 12E900 8003CB00 44813000 */  mtc1       $at, $f6
/* 12E904 8003CB04 3C0140A0 */  lui        $at, 0x40a0
/* 12E908 8003CB08 44814000 */  mtc1       $at, $f8
/* 12E90C 8003CB0C 3C01C190 */  lui        $at, 0xc190
/* 12E910 8003CB10 44815000 */  mtc1       $at, $f10
/* 12E914 8003CB14 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12E918 8003CB18 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12E91C 8003CB1C 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12E920 8003CB20 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12E924 8003CB24 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12E928 8003CB28 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12E92C 8003CB2C 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12E930 8003CB30 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12E934 8003CB34 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12E938 8003CB38 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 12E93C 8003CB3C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12E940 8003CB40 0C00F45D */  jal        func_8003D174_12EF74
/* 12E944 8003CB44 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 12E948 8003CB48 3C018006 */  lui        $at, %hi(D_8005DE40)
/* 12E94C 8003CB4C 0C00ACDB */  jal        func_8002B36C_11D16C
/* 12E950 8003CB50 AC22DE40 */   sw        $v0, %lo(D_8005DE40)($at)
/* 12E954 8003CB54 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12E958 8003CB58 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12E95C 8003CB5C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12E960 8003CB60 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12E964 8003CB64 AC20DE44 */  sw         $zero, %lo(D_8005DE44)($at)
/* 12E968 8003CB68 AC620024 */  sw         $v0, 0x24($v1)
.L8003CB6C:
/* 12E96C 8003CB6C 3C038006 */  lui        $v1, %hi(D_8005DE44)
/* 12E970 8003CB70 8C63DE44 */  lw         $v1, %lo(D_8005DE44)($v1)
/* 12E974 8003CB74 00031040 */  sll        $v0, $v1, 1
/* 12E978 8003CB78 00431021 */  addu       $v0, $v0, $v1
/* 12E97C 8003CB7C 00021080 */  sll        $v0, $v0, 2
/* 12E980 8003CB80 24630001 */  addiu      $v1, $v1, 1
/* 12E984 8003CB84 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12E988 8003CB88 AC23DE44 */  sw         $v1, %lo(D_8005DE44)($at)
/* 12E98C 8003CB8C 28630008 */  slti       $v1, $v1, 8
/* 12E990 8003CB90 3C018006 */  lui        $at, %hi(D_8005E1E8)
/* 12E994 8003CB94 00220821 */  addu       $at, $at, $v0
/* 12E998 8003CB98 A420E1E8 */  sh         $zero, %lo(D_8005E1E8)($at)
/* 12E99C 8003CB9C 3C018006 */  lui        $at, %hi(D_8005E1EA)
/* 12E9A0 8003CBA0 00220821 */  addu       $at, $at, $v0
/* 12E9A4 8003CBA4 A420E1EA */  sh         $zero, %lo(D_8005E1EA)($at)
/* 12E9A8 8003CBA8 3C018006 */  lui        $at, %hi(D_8005E1EC)
/* 12E9AC 8003CBAC 00220821 */  addu       $at, $at, $v0
/* 12E9B0 8003CBB0 A420E1EC */  sh         $zero, %lo(D_8005E1EC)($at)
/* 12E9B4 8003CBB4 1460FFED */  bnez       $v1, .L8003CB6C
/* 12E9B8 8003CBB8 24020020 */   addiu     $v0, $zero, 0x20
/* 12E9BC 8003CBBC 3C018006 */  lui        $at, %hi(D_8005E1E8)
/* 12E9C0 8003CBC0 A422E1E8 */  sh         $v0, %lo(D_8005E1E8)($at)
/* 12E9C4 8003CBC4 24020008 */  addiu      $v0, $zero, 8
/* 12E9C8 8003CBC8 3C018006 */  lui        $at, %hi(D_8005E1EA)
/* 12E9CC 8003CBCC A422E1EA */  sh         $v0, %lo(D_8005E1EA)($at)
/* 12E9D0 8003CBD0 24020028 */  addiu      $v0, $zero, 0x28
/* 12E9D4 8003CBD4 3C018006 */  lui        $at, %hi(D_8005E1F4)
/* 12E9D8 8003CBD8 A422E1F4 */  sh         $v0, %lo(D_8005E1F4)($at)
/* 12E9DC 8003CBDC 24020038 */  addiu      $v0, $zero, 0x38
/* 12E9E0 8003CBE0 3C018006 */  lui        $at, %hi(D_8005E1F6)
/* 12E9E4 8003CBE4 A422E1F6 */  sh         $v0, %lo(D_8005E1F6)($at)
/* 12E9E8 8003CBE8 0C02591A */  jal        func_80096468
/* 12E9EC 8003CBEC 24040040 */   addiu     $a0, $zero, 0x40
/* 12E9F0 8003CBF0 3C038006 */  lui        $v1, %hi(D_8005E1F4)
/* 12E9F4 8003CBF4 8463E1F4 */  lh         $v1, %lo(D_8005E1F4)($v1)
/* 12E9F8 8003CBF8 3C058006 */  lui        $a1, %hi(D_8005E1F6)
/* 12E9FC 8003CBFC 84A5E1F6 */  lh         $a1, %lo(D_8005E1F6)($a1)
/* 12EA00 8003CC00 24040020 */  addiu      $a0, $zero, 0x20
/* 12EA04 8003CC04 3C068006 */  lui        $a2, %hi(D_8005DE40)
/* 12EA08 8003CC08 8CC6DE40 */  lw         $a2, %lo(D_8005DE40)($a2)
/* 12EA0C 8003CC0C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EA10 8003CC10 00651821 */  addu       $v1, $v1, $a1
/* 12EA14 8003CC14 00621821 */  addu       $v1, $v1, $v0
/* 12EA18 8003CC18 24630040 */  addiu      $v1, $v1, 0x40
/* 12EA1C 8003CC1C 44830000 */  mtc1       $v1, $f0
/* 12EA20 8003CC20 00000000 */  nop
/* 12EA24 8003CC24 46800020 */  cvt.s.w    $f0, $f0
/* 12EA28 8003CC28 0C02591A */  jal        func_80096468
/* 12EA2C 8003CC2C E4C00070 */   swc1      $f0, 0x70($a2)
/* 12EA30 8003CC30 24040040 */  addiu      $a0, $zero, 0x40
/* 12EA34 8003CC34 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EA38 8003CC38 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EA3C 8003CC3C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EA40 8003CC40 24420020 */  addiu      $v0, $v0, 0x20
/* 12EA44 8003CC44 44820000 */  mtc1       $v0, $f0
/* 12EA48 8003CC48 00000000 */  nop
/* 12EA4C 8003CC4C 46800020 */  cvt.s.w    $f0, $f0
/* 12EA50 8003CC50 0C02591A */  jal        func_80096468
/* 12EA54 8003CC54 E4600090 */   swc1      $f0, 0x90($v1)
/* 12EA58 8003CC58 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EA5C 8003CC5C 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EA60 8003CC60 C4600070 */  lwc1       $f0, 0x70($v1)
/* 12EA64 8003CC64 C4620090 */  lwc1       $f2, 0x90($v1)
/* 12EA68 8003CC68 46020000 */  add.s      $f0, $f0, $f2
/* 12EA6C 8003CC6C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EA70 8003CC70 44821000 */  mtc1       $v0, $f2
/* 12EA74 8003CC74 00000000 */  nop
/* 12EA78 8003CC78 468010A0 */  cvt.s.w    $f2, $f2
/* 12EA7C 8003CC7C 46020000 */  add.s      $f0, $f0, $f2
/* 12EA80 8003CC80 3C014280 */  lui        $at, 0x4280
/* 12EA84 8003CC84 4481A000 */  mtc1       $at, $f20
/* 12EA88 8003CC88 00000000 */  nop
/* 12EA8C 8003CC8C 46140000 */  add.s      $f0, $f0, $f20
/* 12EA90 8003CC90 24040020 */  addiu      $a0, $zero, 0x20
/* 12EA94 8003CC94 0C02591A */  jal        func_80096468
/* 12EA98 8003CC98 E4600074 */   swc1      $f0, 0x74($v1)
/* 12EA9C 8003CC9C 24040040 */  addiu      $a0, $zero, 0x40
/* 12EAA0 8003CCA0 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EAA4 8003CCA4 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EAA8 8003CCA8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EAAC 8003CCAC 24420020 */  addiu      $v0, $v0, 0x20
/* 12EAB0 8003CCB0 44820000 */  mtc1       $v0, $f0
/* 12EAB4 8003CCB4 00000000 */  nop
/* 12EAB8 8003CCB8 46800020 */  cvt.s.w    $f0, $f0
/* 12EABC 8003CCBC 0C02591A */  jal        func_80096468
/* 12EAC0 8003CCC0 E4600094 */   swc1      $f0, 0x94($v1)
/* 12EAC4 8003CCC4 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EAC8 8003CCC8 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EACC 8003CCCC C4600074 */  lwc1       $f0, 0x74($v1)
/* 12EAD0 8003CCD0 C4620094 */  lwc1       $f2, 0x94($v1)
/* 12EAD4 8003CCD4 46020000 */  add.s      $f0, $f0, $f2
/* 12EAD8 8003CCD8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EADC 8003CCDC 44821000 */  mtc1       $v0, $f2
/* 12EAE0 8003CCE0 00000000 */  nop
/* 12EAE4 8003CCE4 468010A0 */  cvt.s.w    $f2, $f2
/* 12EAE8 8003CCE8 46020000 */  add.s      $f0, $f0, $f2
/* 12EAEC 8003CCEC 46140000 */  add.s      $f0, $f0, $f20
/* 12EAF0 8003CCF0 3C018006 */  lui        $at, %hi(D_8005C550)
/* 12EAF4 8003CCF4 D434C550 */  ldc1       $f20, %lo(D_8005C550)($at)
/* 12EAF8 8003CCF8 24040020 */  addiu      $a0, $zero, 0x20
/* 12EAFC 8003CCFC 0C02591A */  jal        func_80096468
/* 12EB00 8003CD00 E4600078 */   swc1      $f0, 0x78($v1)
/* 12EB04 8003CD04 24030002 */  addiu      $v1, $zero, 2
/* 12EB08 8003CD08 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12EB0C 8003CD0C AC23DE44 */  sw         $v1, %lo(D_8005DE44)($at)
/* 12EB10 8003CD10 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EB14 8003CD14 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EB18 8003CD18 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EB1C 8003CD1C 24420020 */  addiu      $v0, $v0, 0x20
/* 12EB20 8003CD20 44820000 */  mtc1       $v0, $f0
/* 12EB24 8003CD24 00000000 */  nop
/* 12EB28 8003CD28 46800020 */  cvt.s.w    $f0, $f0
/* 12EB2C 8003CD2C E4600098 */  swc1       $f0, 0x98($v1)
.L8003CD30:
/* 12EB30 8003CD30 3C028006 */  lui        $v0, %hi(D_8005DE44)
/* 12EB34 8003CD34 8C42DE44 */  lw         $v0, %lo(D_8005DE44)($v0)
/* 12EB38 8003CD38 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EB3C 8003CD3C 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EB40 8003CD40 2404000A */  addiu      $a0, $zero, 0xa
/* 12EB44 8003CD44 00021080 */  sll        $v0, $v0, 2
/* 12EB48 8003CD48 00431021 */  addu       $v0, $v0, $v1
/* 12EB4C 8003CD4C 0C02591A */  jal        func_80096468
/* 12EB50 8003CD50 AC400028 */   sw        $zero, 0x28($v0)
/* 12EB54 8003CD54 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12EB58 8003CD58 2442000A */  addiu      $v0, $v0, 0xa
/* 12EB5C 8003CD5C 44820000 */  mtc1       $v0, $f0
/* 12EB60 8003CD60 00000000 */  nop
/* 12EB64 8003CD64 46800021 */  cvt.d.w    $f0, $f0
/* 12EB68 8003CD68 4620A003 */  div.d      $f0, $f20, $f0
/* 12EB6C 8003CD6C 3C028006 */  lui        $v0, %hi(D_8005DE44)
/* 12EB70 8003CD70 8C42DE44 */  lw         $v0, %lo(D_8005DE44)($v0)
/* 12EB74 8003CD74 3C048006 */  lui        $a0, %hi(D_8005DE40)
/* 12EB78 8003CD78 8C84DE40 */  lw         $a0, %lo(D_8005DE40)($a0)
/* 12EB7C 8003CD7C 24430001 */  addiu      $v1, $v0, 1
/* 12EB80 8003CD80 00021080 */  sll        $v0, $v0, 2
/* 12EB84 8003CD84 00441021 */  addu       $v0, $v0, $a0
/* 12EB88 8003CD88 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12EB8C 8003CD8C AC23DE44 */  sw         $v1, %lo(D_8005DE44)($at)
/* 12EB90 8003CD90 28630005 */  slti       $v1, $v1, 5
/* 12EB94 8003CD94 46200020 */  cvt.s.d    $f0, $f0
/* 12EB98 8003CD98 1460FFE5 */  bnez       $v1, .L8003CD30
/* 12EB9C 8003CD9C E4400048 */   swc1      $f0, 0x48($v0)
/* 12EBA0 8003CDA0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12EBA4 8003CDA4 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12EBA8 8003CDA8 0C00A157 */  jal        func_8002855C_11A35C
/* 12EBAC 8003CDAC 24050007 */   addiu     $a1, $zero, 7
/* 12EBB0 8003CDB0 3C014200 */  lui        $at, 0x4200
/* 12EBB4 8003CDB4 44810000 */  mtc1       $at, $f0
/* 12EBB8 8003CDB8 3C018005 */  lui        $at, %hi(D_80051EC6)
/* 12EBBC 8003CDBC A0201EC6 */  sb         $zero, %lo(D_80051EC6)($at)
/* 12EBC0 8003CDC0 3C018008 */  lui        $at, %hi(D_80080758)
/* 12EBC4 8003CDC4 E4200758 */  swc1       $f0, %lo(D_80080758)($at)
.L8003CDC8:
/* 12EBC8 8003CDC8 3C048006 */  lui        $a0, %hi(D_8005E142)
/* 12EBCC 8003CDCC 8484E142 */  lh         $a0, %lo(D_8005E142)($a0)
/* 12EBD0 8003CDD0 28820010 */  slti       $v0, $a0, 0x10
/* 12EBD4 8003CDD4 10400003 */  beqz       $v0, .L8003CDE4
/* 12EBD8 8003CDD8 24020001 */   addiu     $v0, $zero, 1
/* 12EBDC 8003CDDC 3C018005 */  lui        $at, %hi(D_80051EC8)
/* 12EBE0 8003CDE0 AC221EC8 */  sw         $v0, %lo(D_80051EC8)($at)
.L8003CDE4:
/* 12EBE4 8003CDE4 3C028006 */  lui        $v0, %hi(D_8005E1F4)
/* 12EBE8 8003CDE8 8442E1F4 */  lh         $v0, %lo(D_8005E1F4)($v0)
/* 12EBEC 8003CDEC 3C038006 */  lui        $v1, %hi(D_8005E1F6)
/* 12EBF0 8003CDF0 8463E1F6 */  lh         $v1, %lo(D_8005E1F6)($v1)
/* 12EBF4 8003CDF4 00431021 */  addu       $v0, $v0, $v1
/* 12EBF8 8003CDF8 0082102A */  slt        $v0, $a0, $v0
/* 12EBFC 8003CDFC 10400008 */  beqz       $v0, .L8003CE20
/* 12EC00 8003CE00 00000000 */   nop
/* 12EC04 8003CE04 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 12EC08 8003CE08 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 12EC0C 8003CE0C 30428000 */  andi       $v0, $v0, 0x8000
/* 12EC10 8003CE10 10400003 */  beqz       $v0, .L8003CE20
/* 12EC14 8003CE14 24020001 */   addiu     $v0, $zero, 1
/* 12EC18 8003CE18 3C018005 */  lui        $at, %hi(D_80051EC8)
/* 12EC1C 8003CE1C AC221EC8 */  sw         $v0, %lo(D_80051EC8)($at)
.L8003CE20:
/* 12EC20 8003CE20 3C014200 */  lui        $at, 0x4200
/* 12EC24 8003CE24 4481A000 */  mtc1       $at, $f20
/* 12EC28 8003CE28 3C014000 */  lui        $at, 0x4000
/* 12EC2C 8003CE2C 4481B000 */  mtc1       $at, $f22
/* 12EC30 8003CE30 24020002 */  addiu      $v0, $zero, 2
/* 12EC34 8003CE34 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12EC38 8003CE38 AC22DE44 */  sw         $v0, %lo(D_8005DE44)($at)
.L8003CE3C:
/* 12EC3C 8003CE3C 3C028006 */  lui        $v0, %hi(D_8005DE44)
/* 12EC40 8003CE40 8C42DE44 */  lw         $v0, %lo(D_8005DE44)($v0)
/* 12EC44 8003CE44 3C038006 */  lui        $v1, %hi(D_8005DE40)
/* 12EC48 8003CE48 8C63DE40 */  lw         $v1, %lo(D_8005DE40)($v1)
/* 12EC4C 8003CE4C 00028080 */  sll        $s0, $v0, 2
/* 12EC50 8003CE50 02038021 */  addu       $s0, $s0, $v1
/* 12EC54 8003CE54 C60C0028 */  lwc1       $f12, 0x28($s0)
/* 12EC58 8003CE58 00028840 */  sll        $s1, $v0, 1
/* 12EC5C 8003CE5C 02228821 */  addu       $s1, $s1, $v0
/* 12EC60 8003CE60 0C02FF68 */  jal        func_800BFDA0
/* 12EC64 8003CE64 00118880 */   sll       $s1, $s1, 2
/* 12EC68 8003CE68 00000000 */  nop
/* 12EC6C 8003CE6C 46140002 */  mul.s      $f0, $f0, $f20
/* 12EC70 8003CE70 46160003 */  div.s      $f0, $f0, $f22
/* 12EC74 8003CE74 C6020068 */  lwc1       $f2, 0x68($s0)
/* 12EC78 8003CE78 3C038006 */  lui        $v1, %hi(D_8005DE44)
/* 12EC7C 8003CE7C 8C63DE44 */  lw         $v1, %lo(D_8005DE44)($v1)
/* 12EC80 8003CE80 3C048006 */  lui        $a0, %hi(D_8005DE40)
/* 12EC84 8003CE84 8C84DE40 */  lw         $a0, %lo(D_8005DE40)($a0)
/* 12EC88 8003CE88 46001081 */  sub.s      $f2, $f2, $f0
/* 12EC8C 8003CE8C 00038080 */  sll        $s0, $v1, 2
/* 12EC90 8003CE90 02048021 */  addu       $s0, $s0, $a0
/* 12EC94 8003CE94 4600100D */  trunc.w.s  $f0, $f2
/* 12EC98 8003CE98 44020000 */  mfc1       $v0, $f0
/* 12EC9C 8003CE9C 3C018006 */  lui        $at, %hi(D_8005E1E8)
/* 12ECA0 8003CEA0 00310821 */  addu       $at, $at, $s1
/* 12ECA4 8003CEA4 A422E1E8 */  sh         $v0, %lo(D_8005E1E8)($at)
/* 12ECA8 8003CEA8 C60C0028 */  lwc1       $f12, 0x28($s0)
/* 12ECAC 8003CEAC 00038840 */  sll        $s1, $v1, 1
/* 12ECB0 8003CEB0 02238821 */  addu       $s1, $s1, $v1
/* 12ECB4 8003CEB4 0C02FF68 */  jal        func_800BFDA0
/* 12ECB8 8003CEB8 00118880 */   sll       $s1, $s1, 2
/* 12ECBC 8003CEBC 00000000 */  nop
/* 12ECC0 8003CEC0 46140002 */  mul.s      $f0, $f0, $f20
/* 12ECC4 8003CEC4 C6020088 */  lwc1       $f2, 0x88($s0)
/* 12ECC8 8003CEC8 46001080 */  add.s      $f2, $f2, $f0
/* 12ECCC 8003CECC 3C048006 */  lui        $a0, %hi(D_8005DE40)
/* 12ECD0 8003CED0 8C84DE40 */  lw         $a0, %lo(D_8005DE40)($a0)
/* 12ECD4 8003CED4 3C038006 */  lui        $v1, %hi(D_8005DE44)
/* 12ECD8 8003CED8 8C63DE44 */  lw         $v1, %lo(D_8005DE44)($v1)
/* 12ECDC 8003CEDC 4600100D */  trunc.w.s  $f0, $f2
/* 12ECE0 8003CEE0 44020000 */  mfc1       $v0, $f0
/* 12ECE4 8003CEE4 3C018006 */  lui        $at, %hi(D_8005E1EA)
/* 12ECE8 8003CEE8 00310821 */  addu       $at, $at, $s1
/* 12ECEC 8003CEEC A422E1EA */  sh         $v0, %lo(D_8005E1EA)($at)
/* 12ECF0 8003CEF0 00031080 */  sll        $v0, $v1, 2
/* 12ECF4 8003CEF4 00441021 */  addu       $v0, $v0, $a0
/* 12ECF8 8003CEF8 C4420028 */  lwc1       $f2, 0x28($v0)
/* 12ECFC 8003CEFC C4400048 */  lwc1       $f0, 0x48($v0)
/* 12ED00 8003CF00 46001080 */  add.s      $f2, $f2, $f0
/* 12ED04 8003CF04 24630001 */  addiu      $v1, $v1, 1
/* 12ED08 8003CF08 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12ED0C 8003CF0C AC23DE44 */  sw         $v1, %lo(D_8005DE44)($at)
/* 12ED10 8003CF10 28630005 */  slti       $v1, $v1, 5
/* 12ED14 8003CF14 1460FFC9 */  bnez       $v1, .L8003CE3C
/* 12ED18 8003CF18 E4420028 */   swc1      $f2, 0x28($v0)
/* 12ED1C 8003CF1C 3C028005 */  lui        $v0, %hi(D_80051EC8)
/* 12ED20 8003CF20 8C421EC8 */  lw         $v0, %lo(D_80051EC8)($v0)
/* 12ED24 8003CF24 1440006C */  bnez       $v0, .L8003D0D8
/* 12ED28 8003CF28 00000000 */   nop
/* 12ED2C 8003CF2C 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 12ED30 8003CF30 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 12ED34 8003CF34 30428000 */  andi       $v0, $v0, 0x8000
/* 12ED38 8003CF38 10400067 */  beqz       $v0, .L8003D0D8
/* 12ED3C 8003CF3C 2407FFFF */   addiu     $a3, $zero, -1
/* 12ED40 8003CF40 24050002 */  addiu      $a1, $zero, 2
/* 12ED44 8003CF44 3C068006 */  lui        $a2, %hi(D_8005E142)
/* 12ED48 8003CF48 84C6E142 */  lh         $a2, %lo(D_8005E142)($a2)
/* 12ED4C 8003CF4C 00051400 */  sll        $v0, $a1, 0x10
.L8003CF50:
/* 12ED50 8003CF50 00021403 */  sra        $v0, $v0, 0x10
/* 12ED54 8003CF54 00021840 */  sll        $v1, $v0, 1
/* 12ED58 8003CF58 00621821 */  addu       $v1, $v1, $v0
/* 12ED5C 8003CF5C 00031880 */  sll        $v1, $v1, 2
/* 12ED60 8003CF60 3C048006 */  lui        $a0, %hi(D_8005E1E8)
/* 12ED64 8003CF64 00832021 */  addu       $a0, $a0, $v1
/* 12ED68 8003CF68 8484E1E8 */  lh         $a0, %lo(D_8005E1E8)($a0)
/* 12ED6C 8003CF6C 00C4102A */  slt        $v0, $a2, $a0
/* 12ED70 8003CF70 14400008 */  bnez       $v0, .L8003CF94
/* 12ED74 8003CF74 24A20001 */   addiu     $v0, $a1, 1
/* 12ED78 8003CF78 3C028006 */  lui        $v0, %hi(D_8005E1EA)
/* 12ED7C 8003CF7C 00431021 */  addu       $v0, $v0, $v1
/* 12ED80 8003CF80 8442E1EA */  lh         $v0, %lo(D_8005E1EA)($v0)
/* 12ED84 8003CF84 00821021 */  addu       $v0, $a0, $v0
/* 12ED88 8003CF88 00C2102A */  slt        $v0, $a2, $v0
/* 12ED8C 8003CF8C 14400038 */  bnez       $v0, .L8003D070
/* 12ED90 8003CF90 24A20001 */   addiu     $v0, $a1, 1
.L8003CF94:
/* 12ED94 8003CF94 00402821 */  addu       $a1, $v0, $zero
/* 12ED98 8003CF98 00021400 */  sll        $v0, $v0, 0x10
/* 12ED9C 8003CF9C 00021403 */  sra        $v0, $v0, 0x10
/* 12EDA0 8003CFA0 28420005 */  slti       $v0, $v0, 5
/* 12EDA4 8003CFA4 1440FFEA */  bnez       $v0, .L8003CF50
/* 12EDA8 8003CFA8 00051400 */   sll       $v0, $a1, 0x10
.L8003CFAC:
/* 12EDAC 8003CFAC 00071400 */  sll        $v0, $a3, 0x10
/* 12EDB0 8003CFB0 00021403 */  sra        $v0, $v0, 0x10
/* 12EDB4 8003CFB4 3C018006 */  lui        $at, %hi(D_8005DE44)
/* 12EDB8 8003CFB8 1840002F */  blez       $v0, .L8003D078
/* 12EDBC 8003CFBC AC22DE44 */   sw        $v0, %lo(D_8005DE44)($at)
/* 12EDC0 8003CFC0 3C038006 */  lui        $v1, %hi(D_8005E1EA)
/* 12EDC4 8003CFC4 2463E1EA */  addiu      $v1, $v1, %lo(D_8005E1EA)
/* 12EDC8 8003CFC8 84620000 */  lh         $v0, ($v1)
/* 12EDCC 8003CFCC 00402021 */  addu       $a0, $v0, $zero
/* 12EDD0 8003CFD0 28420040 */  slti       $v0, $v0, 0x40
/* 12EDD4 8003CFD4 10400040 */  beqz       $v0, .L8003D0D8
/* 12EDD8 8003CFD8 00000000 */   nop
/* 12EDDC 8003CFDC 3C028006 */  lui        $v0, %hi(D_8005DE40)
/* 12EDE0 8003CFE0 8C42DE40 */  lw         $v0, %lo(D_8005DE40)($v0)
/* 12EDE4 8003CFE4 8C420024 */  lw         $v0, 0x24($v0)
/* 12EDE8 8003CFE8 00021040 */  sll        $v0, $v0, 1
/* 12EDEC 8003CFEC 3C018005 */  lui        $at, %hi(D_80051EC0)
/* 12EDF0 8003CFF0 00220821 */  addu       $at, $at, $v0
/* 12EDF4 8003CFF4 94221EC0 */  lhu        $v0, %lo(D_80051EC0)($at)
/* 12EDF8 8003CFF8 00821021 */  addu       $v0, $a0, $v0
/* 12EDFC 8003CFFC A4620000 */  sh         $v0, ($v1)
/* 12EE00 8003D000 00021400 */  sll        $v0, $v0, 0x10
/* 12EE04 8003D004 00021403 */  sra        $v0, $v0, 0x10
/* 12EE08 8003D008 28420040 */  slti       $v0, $v0, 0x40
/* 12EE0C 8003D00C 14400002 */  bnez       $v0, .L8003D018
/* 12EE10 8003D010 24020040 */   addiu     $v0, $zero, 0x40
/* 12EE14 8003D014 A4620000 */  sh         $v0, ($v1)
.L8003D018:
/* 12EE18 8003D018 3C028006 */  lui        $v0, %hi(D_8005E1E8)
/* 12EE1C 8003D01C 9442E1E8 */  lhu        $v0, %lo(D_8005E1E8)($v0)
/* 12EE20 8003D020 94630000 */  lhu        $v1, ($v1)
/* 12EE24 8003D024 00431021 */  addu       $v0, $v0, $v1
/* 12EE28 8003D028 3C018006 */  lui        $at, %hi(D_8005E1F4)
/* 12EE2C 8003D02C A422E1F4 */  sh         $v0, %lo(D_8005E1F4)($at)
/* 12EE30 8003D030 24020040 */  addiu      $v0, $zero, 0x40
/* 12EE34 8003D034 00431023 */  subu       $v0, $v0, $v1
/* 12EE38 8003D038 3C018006 */  lui        $at, %hi(D_8005E1F6)
/* 12EE3C 8003D03C A422E1F6 */  sh         $v0, %lo(D_8005E1F6)($at)
/* 12EE40 8003D040 0C026DD5 */  jal        func_8009B754
/* 12EE44 8003D044 2404001D */   addiu     $a0, $zero, 0x1d
/* 12EE48 8003D048 3C038006 */  lui        $v1, %hi(D_8005DE44)
/* 12EE4C 8003D04C 8C63DE44 */  lw         $v1, %lo(D_8005DE44)($v1)
/* 12EE50 8003D050 00031040 */  sll        $v0, $v1, 1
/* 12EE54 8003D054 00431021 */  addu       $v0, $v0, $v1
/* 12EE58 8003D058 00021080 */  sll        $v0, $v0, 2
/* 12EE5C 8003D05C 24030001 */  addiu      $v1, $zero, 1
/* 12EE60 8003D060 3C018006 */  lui        $at, %hi(D_8005E1EC)
/* 12EE64 8003D064 00220821 */  addu       $at, $at, $v0
/* 12EE68 8003D068 0800F436 */  j          .L8003D0D8
/* 12EE6C 8003D06C A423E1EC */   sh        $v1, %lo(D_8005E1EC)($at)
.L8003D070:
/* 12EE70 8003D070 0800F3EB */  j          .L8003CFAC
/* 12EE74 8003D074 00A03821 */   addu      $a3, $a1, $zero
.L8003D078:
/* 12EE78 8003D078 3C038006 */  lui        $v1, %hi(D_8005E1EA)
/* 12EE7C 8003D07C 2463E1EA */  addiu      $v1, $v1, %lo(D_8005E1EA)
/* 12EE80 8003D080 84620000 */  lh         $v0, ($v1)
/* 12EE84 8003D084 00402021 */  addu       $a0, $v0, $zero
/* 12EE88 8003D088 28420009 */  slti       $v0, $v0, 9
/* 12EE8C 8003D08C 14400012 */  bnez       $v0, .L8003D0D8
/* 12EE90 8003D090 2482FFF8 */   addiu     $v0, $a0, -8
/* 12EE94 8003D094 A4620000 */  sh         $v0, ($v1)
/* 12EE98 8003D098 00021400 */  sll        $v0, $v0, 0x10
/* 12EE9C 8003D09C 00021403 */  sra        $v0, $v0, 0x10
/* 12EEA0 8003D0A0 28420008 */  slti       $v0, $v0, 8
/* 12EEA4 8003D0A4 10400002 */  beqz       $v0, .L8003D0B0
/* 12EEA8 8003D0A8 24020008 */   addiu     $v0, $zero, 8
/* 12EEAC 8003D0AC A4620000 */  sh         $v0, ($v1)
.L8003D0B0:
/* 12EEB0 8003D0B0 3C028006 */  lui        $v0, %hi(D_8005E1E8)
/* 12EEB4 8003D0B4 9442E1E8 */  lhu        $v0, %lo(D_8005E1E8)($v0)
/* 12EEB8 8003D0B8 94630000 */  lhu        $v1, ($v1)
/* 12EEBC 8003D0BC 00431021 */  addu       $v0, $v0, $v1
/* 12EEC0 8003D0C0 3C018006 */  lui        $at, %hi(D_8005E1F4)
/* 12EEC4 8003D0C4 A422E1F4 */  sh         $v0, %lo(D_8005E1F4)($at)
/* 12EEC8 8003D0C8 24020040 */  addiu      $v0, $zero, 0x40
/* 12EECC 8003D0CC 00431023 */  subu       $v0, $v0, $v1
/* 12EED0 8003D0D0 3C018006 */  lui        $at, %hi(D_8005E1F6)
/* 12EED4 8003D0D4 A422E1F6 */  sh         $v0, %lo(D_8005E1F6)($at)
.L8003D0D8:
/* 12EED8 8003D0D8 16400003 */  bnez       $s2, .L8003D0E8
/* 12EEDC 8003D0DC 24020001 */   addiu     $v0, $zero, 1
/* 12EEE0 8003D0E0 3C018005 */  lui        $at, %hi(D_80051EC8)
/* 12EEE4 8003D0E4 AC221EC8 */  sw         $v0, %lo(D_80051EC8)($at)
.L8003D0E8:
/* 12EEE8 8003D0E8 3C028005 */  lui        $v0, %hi(D_80051EC8)
/* 12EEEC 8003D0EC 8C421EC8 */  lw         $v0, %lo(D_80051EC8)($v0)
/* 12EEF0 8003D0F0 1440000C */  bnez       $v0, .L8003D124
/* 12EEF4 8003D0F4 00000000 */   nop
/* 12EEF8 8003D0F8 3C048006 */  lui        $a0, %hi(D_8005DE40)
/* 12EEFC 8003D0FC 0C00F4AC */  jal        func_8003D2B0_12F0B0
/* 12EF00 8003D100 8C84DE40 */   lw        $a0, %lo(D_8005DE40)($a0)
/* 12EF04 8003D104 3C018005 */  lui        $at, %hi(D_80051EC8)
/* 12EF08 8003D108 0C009767 */  jal        func_80025D9C_117B9C
/* 12EF0C 8003D10C AC221EC8 */   sw        $v0, %lo(D_80051EC8)($at)
/* 12EF10 8003D110 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12EF14 8003D114 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 12EF18 8003D118 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12EF1C 8003D11C 0800F455 */  j          .L8003D154
/* 12EF20 8003D120 00001021 */   addu      $v0, $zero, $zero
.L8003D124:
/* 12EF24 8003D124 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12EF28 8003D128 0C00A16B */  jal        func_800285AC_11A3AC
/* 12EF2C 8003D12C 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12EF30 8003D130 3C048006 */  lui        $a0, %hi(D_8005DE40)
/* 12EF34 8003D134 0C00F4FA */  jal        func_8003D3E8_12F1E8
/* 12EF38 8003D138 2484DE40 */   addiu     $a0, $a0, %lo(D_8005DE40)
/* 12EF3C 8003D13C 24020001 */  addiu      $v0, $zero, 1
/* 12EF40 8003D140 24030001 */  addiu      $v1, $zero, 1
/* 12EF44 8003D144 3C018005 */  lui        $at, %hi(D_80051EC8)
/* 12EF48 8003D148 AC201EC8 */  sw         $zero, %lo(D_80051EC8)($at)
/* 12EF4C 8003D14C 3C018005 */  lui        $at, %hi(D_80051EC6)
/* 12EF50 8003D150 A0231EC6 */  sb         $v1, %lo(D_80051EC6)($at)
.L8003D154:
/* 12EF54 8003D154 8FBF0034 */  lw         $ra, 0x34($sp)
/* 12EF58 8003D158 8FB20030 */  lw         $s2, 0x30($sp)
/* 12EF5C 8003D15C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 12EF60 8003D160 8FB00028 */  lw         $s0, 0x28($sp)
/* 12EF64 8003D164 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 12EF68 8003D168 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 12EF6C 8003D16C 03E00008 */  jr         $ra
/* 12EF70 8003D170 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8003D174_12EF74
/* 12EF74 8003D174 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12EF78 8003D178 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12EF7C 8003D17C AFB3001C */  sw         $s3, 0x1c($sp)
/* 12EF80 8003D180 AFB20018 */  sw         $s2, 0x18($sp)
/* 12EF84 8003D184 AFB10014 */  sw         $s1, 0x14($sp)
/* 12EF88 8003D188 AFB00010 */  sw         $s0, 0x10($sp)
/* 12EF8C 8003D18C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 12EF90 8003D190 0C032663 */  jal        func_800C998C
/* 12EF94 8003D194 240400A8 */   addiu     $a0, $zero, 0xa8
/* 12EF98 8003D198 00408821 */  addu       $s1, $v0, $zero
/* 12EF9C 8003D19C 02202021 */  addu       $a0, $s1, $zero
/* 12EFA0 8003D1A0 0C030134 */  jal        bzero
/* 12EFA4 8003D1A4 240500A8 */   addiu     $a1, $zero, 0xa8
/* 12EFA8 8003D1A8 24020300 */  addiu      $v0, $zero, 0x300
/* 12EFAC 8003D1AC 3C018006 */  lui        $at, %hi(D_8005E142)
/* 12EFB0 8003D1B0 A422E142 */  sh         $v0, %lo(D_8005E142)($at)
/* 12EFB4 8003D1B4 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12EFB8 8003D1B8 00008021 */   addu      $s0, $zero, $zero
/* 12EFBC 8003D1BC 00403021 */  addu       $a2, $v0, $zero
/* 12EFC0 8003D1C0 3C0142B4 */  lui        $at, 0x42b4
/* 12EFC4 8003D1C4 4481A000 */  mtc1       $at, $f20
/* 12EFC8 8003D1C8 3C038006 */  lui        $v1, %hi(D_8005E1DA)
/* 12EFCC 8003D1CC 9463E1DA */  lhu        $v1, %lo(D_8005E1DA)($v1)
/* 12EFD0 8003D1D0 3C01C2B4 */  lui        $at, 0xc2b4
/* 12EFD4 8003D1D4 44810000 */  mtc1       $at, $f0
/* 12EFD8 8003D1D8 24130015 */  addiu      $s3, $zero, 0x15
/* 12EFDC 8003D1DC 24120104 */  addiu      $s2, $zero, 0x104
/* 12EFE0 8003D1E0 24020007 */  addiu      $v0, $zero, 7
/* 12EFE4 8003D1E4 AE260000 */  sw         $a2, ($s1)
/* 12EFE8 8003D1E8 ACC2001C */  sw         $v0, 0x1c($a2)
/* 12EFEC 8003D1EC 24020070 */  addiu      $v0, $zero, 0x70
/* 12EFF0 8003D1F0 ACC20008 */  sw         $v0, 8($a2)
/* 12EFF4 8003D1F4 24020001 */  addiu      $v0, $zero, 1
/* 12EFF8 8003D1F8 ACC00044 */  sw         $zero, 0x44($a2)
/* 12EFFC 8003D1FC ACC2000C */  sw         $v0, 0xc($a2)
/* 12F000 8003D200 ACC30004 */  sw         $v1, 4($a2)
/* 12F004 8003D204 E4C00054 */  swc1       $f0, 0x54($a2)
.L8003D208:
/* 12F008 8003D208 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12F00C 8003D20C 00000000 */   nop
/* 12F010 8003D210 00403021 */  addu       $a2, $v0, $zero
/* 12F014 8003D214 00101C00 */  sll        $v1, $s0, 0x10
/* 12F018 8003D218 26040001 */  addiu      $a0, $s0, 1
/* 12F01C 8003D21C 00808021 */  addu       $s0, $a0, $zero
/* 12F020 8003D220 00031C03 */  sra        $v1, $v1, 0x10
/* 12F024 8003D224 00031080 */  sll        $v0, $v1, 2
/* 12F028 8003D228 3C058006 */  lui        $a1, %hi(D_8005E142)
/* 12F02C 8003D22C 84A5E142 */  lh         $a1, %lo(D_8005E142)($a1)
/* 12F030 8003D230 00511021 */  addu       $v0, $v0, $s1
/* 12F034 8003D234 2463FFFF */  addiu      $v1, $v1, -1
/* 12F038 8003D238 AC460004 */  sw         $a2, 4($v0)
/* 12F03C 8003D23C 00031080 */  sll        $v0, $v1, 2
/* 12F040 8003D240 00431021 */  addu       $v0, $v0, $v1
/* 12F044 8003D244 00021100 */  sll        $v0, $v0, 4
/* 12F048 8003D248 44820000 */  mtc1       $v0, $f0
/* 12F04C 8003D24C 00000000 */  nop
/* 12F050 8003D250 46800020 */  cvt.s.w    $f0, $f0
/* 12F054 8003D254 00042400 */  sll        $a0, $a0, 0x10
/* 12F058 8003D258 00042403 */  sra        $a0, $a0, 0x10
/* 12F05C 8003D25C 28840008 */  slti       $a0, $a0, 8
/* 12F060 8003D260 ACD3001C */  sw         $s3, 0x1c($a2)
/* 12F064 8003D264 ACD20004 */  sw         $s2, 4($a2)
/* 12F068 8003D268 ACC00008 */  sw         $zero, 8($a2)
/* 12F06C 8003D26C E4C0004C */  swc1       $f0, 0x4c($a2)
/* 12F070 8003D270 E4D40054 */  swc1       $f20, 0x54($a2)
/* 12F074 8003D274 ACC00010 */  sw         $zero, 0x10($a2)
/* 12F078 8003D278 44850000 */  mtc1       $a1, $f0
/* 12F07C 8003D27C 00000000 */  nop
/* 12F080 8003D280 46800020 */  cvt.s.w    $f0, $f0
/* 12F084 8003D284 1480FFE0 */  bnez       $a0, .L8003D208
/* 12F088 8003D288 E4C00044 */   swc1      $f0, 0x44($a2)
/* 12F08C 8003D28C 02201021 */  addu       $v0, $s1, $zero
/* 12F090 8003D290 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12F094 8003D294 8FB3001C */  lw         $s3, 0x1c($sp)
/* 12F098 8003D298 8FB20018 */  lw         $s2, 0x18($sp)
/* 12F09C 8003D29C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F0A0 8003D2A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F0A4 8003D2A4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 12F0A8 8003D2A8 03E00008 */  jr         $ra
/* 12F0AC 8003D2AC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8003D2B0_12F0B0
/* 12F0B0 8003D2B0 3C05C100 */  lui        $a1, 0xc100
/* 12F0B4 8003D2B4 44800000 */  mtc1       $zero, $f0
/* 12F0B8 8003D2B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12F0BC 8003D2BC AFB10014 */  sw         $s1, 0x14($sp)
/* 12F0C0 8003D2C0 00808821 */  addu       $s1, $a0, $zero
/* 12F0C4 8003D2C4 44060000 */  mfc1       $a2, $f0
/* 12F0C8 8003D2C8 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12F0CC 8003D2CC 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12F0D0 8003D2D0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12F0D4 8003D2D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 12F0D8 8003D2D8 0C00A18C */  jal        func_80028630_11A430
/* 12F0DC 8003D2DC 00C03821 */   addu      $a3, $a2, $zero
/* 12F0E0 8003D2E0 3C028006 */  lui        $v0, %hi(D_8005E142)
/* 12F0E4 8003D2E4 8442E142 */  lh         $v0, %lo(D_8005E142)($v0)
/* 12F0E8 8003D2E8 3C014100 */  lui        $at, 0x4100
/* 12F0EC 8003D2EC 44811000 */  mtc1       $at, $f2
/* 12F0F0 8003D2F0 44820000 */  mtc1       $v0, $f0
/* 12F0F4 8003D2F4 00000000 */  nop
/* 12F0F8 8003D2F8 46800020 */  cvt.s.w    $f0, $f0
/* 12F0FC 8003D2FC 46020001 */  sub.s      $f0, $f0, $f2
/* 12F100 8003D300 00008021 */  addu       $s0, $zero, $zero
/* 12F104 8003D304 4600008D */  trunc.w.s  $f2, $f0
/* 12F108 8003D308 44031000 */  mfc1       $v1, $f2
/* 12F10C 8003D30C 00000000 */  nop
/* 12F110 8003D310 00031400 */  sll        $v0, $v1, 0x10
/* 12F114 8003D314 00021403 */  sra        $v0, $v0, 0x10
/* 12F118 8003D318 44820000 */  mtc1       $v0, $f0
/* 12F11C 8003D31C 00000000 */  nop
/* 12F120 8003D320 46800020 */  cvt.s.w    $f0, $f0
/* 12F124 8003D324 3C018006 */  lui        $at, %hi(D_8005E142)
/* 12F128 8003D328 A423E142 */  sh         $v1, %lo(D_8005E142)($at)
.L8003D32C:
/* 12F12C 8003D32C 00101400 */  sll        $v0, $s0, 0x10
/* 12F130 8003D330 00021383 */  sra        $v0, $v0, 0xe
/* 12F134 8003D334 00511021 */  addu       $v0, $v0, $s1
/* 12F138 8003D338 8C430004 */  lw         $v1, 4($v0)
/* 12F13C 8003D33C 26020001 */  addiu      $v0, $s0, 1
/* 12F140 8003D340 00408021 */  addu       $s0, $v0, $zero
/* 12F144 8003D344 00021400 */  sll        $v0, $v0, 0x10
/* 12F148 8003D348 00021403 */  sra        $v0, $v0, 0x10
/* 12F14C 8003D34C 28420008 */  slti       $v0, $v0, 8
/* 12F150 8003D350 1440FFF6 */  bnez       $v0, .L8003D32C
/* 12F154 8003D354 E4600044 */   swc1      $f0, 0x44($v1)
/* 12F158 8003D358 8E240000 */  lw         $a0, ($s1)
/* 12F15C 8003D35C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12F160 8003D360 00008021 */   addu      $s0, $zero, $zero
/* 12F164 8003D364 00101400 */  sll        $v0, $s0, 0x10
.L8003D368:
/* 12F168 8003D368 00021383 */  sra        $v0, $v0, 0xe
/* 12F16C 8003D36C 00511021 */  addu       $v0, $v0, $s1
/* 12F170 8003D370 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12F174 8003D374 8C440004 */   lw        $a0, 4($v0)
/* 12F178 8003D378 26020001 */  addiu      $v0, $s0, 1
/* 12F17C 8003D37C 00408021 */  addu       $s0, $v0, $zero
/* 12F180 8003D380 00021400 */  sll        $v0, $v0, 0x10
/* 12F184 8003D384 00021403 */  sra        $v0, $v0, 0x10
/* 12F188 8003D388 28420008 */  slti       $v0, $v0, 8
/* 12F18C 8003D38C 1440FFF6 */  bnez       $v0, .L8003D368
/* 12F190 8003D390 00101400 */   sll       $v0, $s0, 0x10
/* 12F194 8003D394 8E240000 */  lw         $a0, ($s1)
/* 12F198 8003D398 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12F19C 8003D39C 00008021 */   addu      $s0, $zero, $zero
/* 12F1A0 8003D3A0 00101400 */  sll        $v0, $s0, 0x10
.L8003D3A4:
/* 12F1A4 8003D3A4 00021383 */  sra        $v0, $v0, 0xe
/* 12F1A8 8003D3A8 00511021 */  addu       $v0, $v0, $s1
/* 12F1AC 8003D3AC 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12F1B0 8003D3B0 8C440004 */   lw        $a0, 4($v0)
/* 12F1B4 8003D3B4 26020001 */  addiu      $v0, $s0, 1
/* 12F1B8 8003D3B8 00408021 */  addu       $s0, $v0, $zero
/* 12F1BC 8003D3BC 00021400 */  sll        $v0, $v0, 0x10
/* 12F1C0 8003D3C0 00021403 */  sra        $v0, $v0, 0x10
/* 12F1C4 8003D3C4 28420008 */  slti       $v0, $v0, 8
/* 12F1C8 8003D3C8 1440FFF6 */  bnez       $v0, .L8003D3A4
/* 12F1CC 8003D3CC 00101400 */   sll       $v0, $s0, 0x10
/* 12F1D0 8003D3D0 00001021 */  addu       $v0, $zero, $zero
/* 12F1D4 8003D3D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12F1D8 8003D3D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F1DC 8003D3DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F1E0 8003D3E0 03E00008 */  jr         $ra
/* 12F1E4 8003D3E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003D3E8_12F1E8
/* 12F1E8 8003D3E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12F1EC 8003D3EC AFB10014 */  sw         $s1, 0x14($sp)
/* 12F1F0 8003D3F0 00808821 */  addu       $s1, $a0, $zero
/* 12F1F4 8003D3F4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12F1F8 8003D3F8 12200017 */  beqz       $s1, .L8003D458
/* 12F1FC 8003D3FC AFB00010 */   sw        $s0, 0x10($sp)
/* 12F200 8003D400 8E240000 */  lw         $a0, ($s1)
/* 12F204 8003D404 10800014 */  beqz       $a0, .L8003D458
/* 12F208 8003D408 00000000 */   nop
/* 12F20C 8003D40C 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12F210 8003D410 00008021 */   addu      $s0, $zero, $zero
/* 12F214 8003D414 00102400 */  sll        $a0, $s0, 0x10
.L8003D418:
/* 12F218 8003D418 8E220000 */  lw         $v0, ($s1)
/* 12F21C 8003D41C 00042383 */  sra        $a0, $a0, 0xe
/* 12F220 8003D420 24840004 */  addiu      $a0, $a0, 4
/* 12F224 8003D424 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12F228 8003D428 00442021 */   addu      $a0, $v0, $a0
/* 12F22C 8003D42C 26020001 */  addiu      $v0, $s0, 1
/* 12F230 8003D430 00408021 */  addu       $s0, $v0, $zero
/* 12F234 8003D434 00021400 */  sll        $v0, $v0, 0x10
/* 12F238 8003D438 00021403 */  sra        $v0, $v0, 0x10
/* 12F23C 8003D43C 28420008 */  slti       $v0, $v0, 8
/* 12F240 8003D440 1440FFF5 */  bnez       $v0, .L8003D418
/* 12F244 8003D444 00102400 */   sll       $a0, $s0, 0x10
/* 12F248 8003D448 8E240000 */  lw         $a0, ($s1)
/* 12F24C 8003D44C 0C0326A1 */  jal        func_800C9A84
/* 12F250 8003D450 00000000 */   nop
/* 12F254 8003D454 AE200000 */  sw         $zero, ($s1)
.L8003D458:
/* 12F258 8003D458 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12F25C 8003D45C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12F260 8003D460 8FB00010 */  lw         $s0, 0x10($sp)
/* 12F264 8003D464 03E00008 */  jr         $ra
/* 12F268 8003D468 27BD0020 */   addiu     $sp, $sp, 0x20
/* 12F26C 8003D46C 00000000 */  nop