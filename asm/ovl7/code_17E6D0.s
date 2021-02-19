.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002EC90_17E6D0
/* 17E6D0 8002EC90 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17E6D4 8002EC94 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17E6D8 8002EC98 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17E6DC 8002EC9C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17E6E0 8002ECA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17E6E4 8002ECA4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 17E6E8 8002ECA8 AFB20020 */  sw         $s2, 0x20($sp)
/* 17E6EC 8002ECAC AFB1001C */  sw         $s1, 0x1c($sp)
/* 17E6F0 8002ECB0 AFB00018 */  sw         $s0, 0x18($sp)
/* 17E6F4 8002ECB4 8C72002C */  lw         $s2, 0x2c($v1)
/* 17E6F8 8002ECB8 1440006F */  bnez       $v0, .L8002EE78
/* 17E6FC 8002ECBC 24020001 */   addiu     $v0, $zero, 1
/* 17E700 8002ECC0 9463000E */  lhu        $v1, 0xe($v1)
/* 17E704 8002ECC4 0043102B */  sltu       $v0, $v0, $v1
/* 17E708 8002ECC8 10400012 */  beqz       $v0, .L8002ED14
/* 17E70C 8002ECCC 24100001 */   addiu     $s0, $zero, 1
/* 17E710 8002ECD0 320300FF */  andi       $v1, $s0, 0xff
.L8002ECD4:
/* 17E714 8002ECD4 00031040 */  sll        $v0, $v1, 1
/* 17E718 8002ECD8 00431021 */  addu       $v0, $v0, $v1
/* 17E71C 8002ECDC 00021080 */  sll        $v0, $v0, 2
/* 17E720 8002ECE0 00521021 */  addu       $v0, $v0, $s2
/* 17E724 8002ECE4 8C440000 */  lw         $a0, ($v0)
/* 17E728 8002ECE8 00002821 */  addu       $a1, $zero, $zero
/* 17E72C 8002ECEC 0C02912A */  jal        func_800A44A8
/* 17E730 8002ECF0 00003021 */   addu      $a2, $zero, $zero
/* 17E734 8002ECF4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17E738 8002ECF8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17E73C 8002ECFC 9443000E */  lhu        $v1, 0xe($v0)
/* 17E740 8002ED00 26100001 */  addiu      $s0, $s0, 1
/* 17E744 8002ED04 320200FF */  andi       $v0, $s0, 0xff
/* 17E748 8002ED08 0043102B */  sltu       $v0, $v0, $v1
/* 17E74C 8002ED0C 1440FFF1 */  bnez       $v0, .L8002ECD4
/* 17E750 8002ED10 320300FF */   andi      $v1, $s0, 0xff
.L8002ED14:
/* 17E754 8002ED14 00008021 */  addu       $s0, $zero, $zero
/* 17E758 8002ED18 24110060 */  addiu      $s1, $zero, 0x60
/* 17E75C 8002ED1C 320300FF */  andi       $v1, $s0, 0xff
.L8002ED20:
/* 17E760 8002ED20 00031040 */  sll        $v0, $v1, 1
/* 17E764 8002ED24 00431021 */  addu       $v0, $v0, $v1
/* 17E768 8002ED28 00021080 */  sll        $v0, $v0, 2
/* 17E76C 8002ED2C 00521021 */  addu       $v0, $v0, $s2
/* 17E770 8002ED30 8C440030 */  lw         $a0, 0x30($v0)
/* 17E774 8002ED34 26250010 */  addiu      $a1, $s1, 0x10
/* 17E778 8002ED38 00052C80 */  sll        $a1, $a1, 0x12
/* 17E77C 8002ED3C 00052C03 */  sra        $a1, $a1, 0x10
/* 17E780 8002ED40 240601C0 */  addiu      $a2, $zero, 0x1c0
/* 17E784 8002ED44 26100001 */  addiu      $s0, $s0, 1
/* 17E788 8002ED48 0C028D89 */  jal        func_800A3624
/* 17E78C 8002ED4C 26310058 */   addiu     $s1, $s1, 0x58
/* 17E790 8002ED50 320200FF */  andi       $v0, $s0, 0xff
/* 17E794 8002ED54 2C420002 */  sltiu      $v0, $v0, 2
/* 17E798 8002ED58 1440FFF1 */  bnez       $v0, .L8002ED20
/* 17E79C 8002ED5C 320300FF */   andi      $v1, $s0, 0xff
/* 17E7A0 8002ED60 00008021 */  addu       $s0, $zero, $zero
/* 17E7A4 8002ED64 24110030 */  addiu      $s1, $zero, 0x30
/* 17E7A8 8002ED68 320300FF */  andi       $v1, $s0, 0xff
.L8002ED6C:
/* 17E7AC 8002ED6C 00031040 */  sll        $v0, $v1, 1
/* 17E7B0 8002ED70 00431021 */  addu       $v0, $v0, $v1
/* 17E7B4 8002ED74 00021080 */  sll        $v0, $v0, 2
/* 17E7B8 8002ED78 00521021 */  addu       $v0, $v0, $s2
/* 17E7BC 8002ED7C 8C440048 */  lw         $a0, 0x48($v0)
/* 17E7C0 8002ED80 26250010 */  addiu      $a1, $s1, 0x10
/* 17E7C4 8002ED84 00052C80 */  sll        $a1, $a1, 0x12
/* 17E7C8 8002ED88 00052C03 */  sra        $a1, $a1, 0x10
/* 17E7CC 8002ED8C 24060120 */  addiu      $a2, $zero, 0x120
/* 17E7D0 8002ED90 26100001 */  addiu      $s0, $s0, 1
/* 17E7D4 8002ED94 0C028D89 */  jal        func_800A3624
/* 17E7D8 8002ED98 26310058 */   addiu     $s1, $s1, 0x58
/* 17E7DC 8002ED9C 320200FF */  andi       $v0, $s0, 0xff
/* 17E7E0 8002EDA0 2C420003 */  sltiu      $v0, $v0, 3
/* 17E7E4 8002EDA4 1440FFF1 */  bnez       $v0, .L8002ED6C
/* 17E7E8 8002EDA8 320300FF */   andi      $v1, $s0, 0xff
/* 17E7EC 8002EDAC 00008021 */  addu       $s0, $zero, $zero
/* 17E7F0 8002EDB0 24110008 */  addiu      $s1, $zero, 8
/* 17E7F4 8002EDB4 320300FF */  andi       $v1, $s0, 0xff
.L8002EDB8:
/* 17E7F8 8002EDB8 00031040 */  sll        $v0, $v1, 1
/* 17E7FC 8002EDBC 00431021 */  addu       $v0, $v0, $v1
/* 17E800 8002EDC0 00021080 */  sll        $v0, $v0, 2
/* 17E804 8002EDC4 00521021 */  addu       $v0, $v0, $s2
/* 17E808 8002EDC8 8C44006C */  lw         $a0, 0x6c($v0)
/* 17E80C 8002EDCC 26250010 */  addiu      $a1, $s1, 0x10
/* 17E810 8002EDD0 00052C80 */  sll        $a1, $a1, 0x12
/* 17E814 8002EDD4 00052C03 */  sra        $a1, $a1, 0x10
/* 17E818 8002EDD8 240601C0 */  addiu      $a2, $zero, 0x1c0
/* 17E81C 8002EDDC 26100001 */  addiu      $s0, $s0, 1
/* 17E820 8002EDE0 0C028D89 */  jal        func_800A3624
/* 17E824 8002EDE4 26310108 */   addiu     $s1, $s1, 0x108
/* 17E828 8002EDE8 320200FF */  andi       $v0, $s0, 0xff
/* 17E82C 8002EDEC 2C420002 */  sltiu      $v0, $v0, 2
/* 17E830 8002EDF0 1440FFF1 */  bnez       $v0, .L8002EDB8
/* 17E834 8002EDF4 320300FF */   andi      $v1, $s0, 0xff
/* 17E838 8002EDF8 00008021 */  addu       $s0, $zero, $zero
/* 17E83C 8002EDFC 24110030 */  addiu      $s1, $zero, 0x30
/* 17E840 8002EE00 320300FF */  andi       $v1, $s0, 0xff
.L8002EE04:
/* 17E844 8002EE04 00031040 */  sll        $v0, $v1, 1
/* 17E848 8002EE08 00431021 */  addu       $v0, $v0, $v1
/* 17E84C 8002EE0C 00021080 */  sll        $v0, $v0, 2
/* 17E850 8002EE10 00521021 */  addu       $v0, $v0, $s2
/* 17E854 8002EE14 8C440084 */  lw         $a0, 0x84($v0)
/* 17E858 8002EE18 26250010 */  addiu      $a1, $s1, 0x10
/* 17E85C 8002EE1C 00052C80 */  sll        $a1, $a1, 0x12
/* 17E860 8002EE20 00052C03 */  sra        $a1, $a1, 0x10
/* 17E864 8002EE24 24060260 */  addiu      $a2, $zero, 0x260
/* 17E868 8002EE28 26100001 */  addiu      $s0, $s0, 1
/* 17E86C 8002EE2C 0C028D89 */  jal        func_800A3624
/* 17E870 8002EE30 26310058 */   addiu     $s1, $s1, 0x58
/* 17E874 8002EE34 320200FF */  andi       $v0, $s0, 0xff
/* 17E878 8002EE38 2C420002 */  sltiu      $v0, $v0, 2
/* 17E87C 8002EE3C 1440FFF1 */  bnez       $v0, .L8002EE04
/* 17E880 8002EE40 320300FF */   andi      $v1, $s0, 0xff
/* 17E884 8002EE44 2404000B */  addiu      $a0, $zero, 0xb
/* 17E888 8002EE48 2405FFFF */  addiu      $a1, $zero, -1
/* 17E88C 8002EE4C 00003021 */  addu       $a2, $zero, $zero
/* 17E890 8002EE50 24070050 */  addiu      $a3, $zero, 0x50
/* 17E894 8002EE54 0C026C9A */  jal        func_8009B268
/* 17E898 8002EE58 AFA00010 */   sw        $zero, 0x10($sp)
/* 17E89C 8002EE5C 2404009F */  addiu      $a0, $zero, 0x9f
/* 17E8A0 8002EE60 24050080 */  addiu      $a1, $zero, 0x80
/* 17E8A4 8002EE64 24060080 */  addiu      $a2, $zero, 0x80
/* 17E8A8 8002EE68 24070001 */  addiu      $a3, $zero, 1
/* 17E8AC 8002EE6C 24020064 */  addiu      $v0, $zero, 0x64
/* 17E8B0 8002EE70 0C026E0C */  jal        func_8009B830
/* 17E8B4 8002EE74 AFA20010 */   sw        $v0, 0x10($sp)
.L8002EE78:
/* 17E8B8 8002EE78 0C02591A */  jal        func_80096468
/* 17E8BC 8002EE7C 2404001F */   addiu     $a0, $zero, 0x1f
/* 17E8C0 8002EE80 245000E0 */  addiu      $s0, $v0, 0xe0
/* 17E8C4 8002EE84 321000FF */  andi       $s0, $s0, 0xff
/* 17E8C8 8002EE88 AFB00010 */  sw         $s0, 0x10($sp)
/* 17E8CC 8002EE8C 8E440000 */  lw         $a0, ($s2)
/* 17E8D0 8002EE90 240500FF */  addiu      $a1, $zero, 0xff
/* 17E8D4 8002EE94 240600FF */  addiu      $a2, $zero, 0xff
/* 17E8D8 8002EE98 0C028E41 */  jal        func_800A3904
/* 17E8DC 8002EE9C 240700FF */   addiu     $a3, $zero, 0xff
/* 17E8E0 8002EEA0 AFB00010 */  sw         $s0, 0x10($sp)
/* 17E8E4 8002EEA4 8E44000C */  lw         $a0, 0xc($s2)
/* 17E8E8 8002EEA8 240500FF */  addiu      $a1, $zero, 0xff
/* 17E8EC 8002EEAC 240600FF */  addiu      $a2, $zero, 0xff
/* 17E8F0 8002EEB0 0C028E41 */  jal        func_800A3904
/* 17E8F4 8002EEB4 240700FF */   addiu     $a3, $zero, 0xff
/* 17E8F8 8002EEB8 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17E8FC 8002EEBC 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17E900 8002EEC0 9442000A */  lhu        $v0, 0xa($v0)
/* 17E904 8002EEC4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17E908 8002EEC8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17E90C 8002EECC 2442FFE2 */  addiu      $v0, $v0, -0x1e
/* 17E910 8002EED0 14620006 */  bne        $v1, $v0, .L8002EEEC
/* 17E914 8002EED4 2404FFFE */   addiu     $a0, $zero, -2
/* 17E918 8002EED8 AFA00010 */  sw         $zero, 0x10($sp)
/* 17E91C 8002EEDC 2405FFFF */  addiu      $a1, $zero, -1
/* 17E920 8002EEE0 2406001E */  addiu      $a2, $zero, 0x1e
/* 17E924 8002EEE4 0C026C9A */  jal        func_8009B268
/* 17E928 8002EEE8 00003821 */   addu      $a3, $zero, $zero
.L8002EEEC:
/* 17E92C 8002EEEC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 17E930 8002EEF0 8FB20020 */  lw         $s2, 0x20($sp)
/* 17E934 8002EEF4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17E938 8002EEF8 8FB00018 */  lw         $s0, 0x18($sp)
/* 17E93C 8002EEFC 03E00008 */  jr         $ra
/* 17E940 8002EF00 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002EF04_17E944
/* 17E944 8002EF04 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17E948 8002EF08 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17E94C 8002EF0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17E950 8002EF10 14400003 */  bnez       $v0, .L8002EF20
/* 17E954 8002EF14 AFBF0010 */   sw        $ra, 0x10($sp)
/* 17E958 8002EF18 0C0099DA */  jal        func_80026768_1761A8
/* 17E95C 8002EF1C 00002021 */   addu      $a0, $zero, $zero
.L8002EF20:
/* 17E960 8002EF20 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17E964 8002EF24 03E00008 */  jr         $ra
/* 17E968 8002EF28 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002EF2C_17E96C
/* 17E96C 8002EF2C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17E970 8002EF30 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17E974 8002EF34 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17E978 8002EF38 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17E97C 8002EF3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17E980 8002EF40 AFBF001C */  sw         $ra, 0x1c($sp)
/* 17E984 8002EF44 AFB00018 */  sw         $s0, 0x18($sp)
/* 17E988 8002EF48 8C50002C */  lw         $s0, 0x2c($v0)
/* 17E98C 8002EF4C 1460000D */  bnez       $v1, .L8002EF84
/* 17E990 8002EF50 24040010 */   addiu     $a0, $zero, 0x10
/* 17E994 8002EF54 2405FFFF */  addiu      $a1, $zero, -1
/* 17E998 8002EF58 00003021 */  addu       $a2, $zero, $zero
/* 17E99C 8002EF5C 24070050 */  addiu      $a3, $zero, 0x50
/* 17E9A0 8002EF60 0C026C9A */  jal        func_8009B268
/* 17E9A4 8002EF64 AFA00010 */   sw        $zero, 0x10($sp)
/* 17E9A8 8002EF68 240400A0 */  addiu      $a0, $zero, 0xa0
/* 17E9AC 8002EF6C 24050080 */  addiu      $a1, $zero, 0x80
/* 17E9B0 8002EF70 24060080 */  addiu      $a2, $zero, 0x80
/* 17E9B4 8002EF74 24070001 */  addiu      $a3, $zero, 1
/* 17E9B8 8002EF78 24020064 */  addiu      $v0, $zero, 0x64
/* 17E9BC 8002EF7C 0C026E0C */  jal        func_8009B830
/* 17E9C0 8002EF80 AFA20010 */   sw        $v0, 0x10($sp)
.L8002EF84:
/* 17E9C4 8002EF84 0C02591A */  jal        func_80096468
/* 17E9C8 8002EF88 2404001F */   addiu     $a0, $zero, 0x1f
/* 17E9CC 8002EF8C 244200E0 */  addiu      $v0, $v0, 0xe0
/* 17E9D0 8002EF90 304200FF */  andi       $v0, $v0, 0xff
/* 17E9D4 8002EF94 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E9D8 8002EF98 8E040000 */  lw         $a0, ($s0)
/* 17E9DC 8002EF9C 240500FF */  addiu      $a1, $zero, 0xff
/* 17E9E0 8002EFA0 240600FF */  addiu      $a2, $zero, 0xff
/* 17E9E4 8002EFA4 0C028E41 */  jal        func_800A3904
/* 17E9E8 8002EFA8 240700FF */   addiu     $a3, $zero, 0xff
/* 17E9EC 8002EFAC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 17E9F0 8002EFB0 8FB00018 */  lw         $s0, 0x18($sp)
/* 17E9F4 8002EFB4 03E00008 */  jr         $ra
/* 17E9F8 8002EFB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002EFBC_17E9FC
/* 17E9FC 8002EFBC 3C048005 */  lui        $a0, %hi(D_80052214)
/* 17EA00 8002EFC0 8C842214 */  lw         $a0, %lo(D_80052214)($a0)
/* 17EA04 8002EFC4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17EA08 8002EFC8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17EA0C 8002EFCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17EA10 8002EFD0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 17EA14 8002EFD4 AFB00018 */  sw         $s0, 0x18($sp)
/* 17EA18 8002EFD8 90830000 */  lbu        $v1, ($a0)
/* 17EA1C 8002EFDC 8C50002C */  lw         $s0, 0x2c($v0)
/* 17EA20 8002EFE0 10600003 */  beqz       $v1, .L8002EFF0
/* 17EA24 8002EFE4 2462FFFF */   addiu     $v0, $v1, -1
/* 17EA28 8002EFE8 0800BC06 */  j          .L8002F018
/* 17EA2C 8002EFEC A0820000 */   sb        $v0, ($a0)
.L8002EFF0:
/* 17EA30 8002EFF0 0C02591A */  jal        func_80096468
/* 17EA34 8002EFF4 24040004 */   addiu     $a0, $zero, 4
/* 17EA38 8002EFF8 3C038005 */  lui        $v1, %hi(D_80052214)
/* 17EA3C 8002EFFC 8C632214 */  lw         $v1, %lo(D_80052214)($v1)
/* 17EA40 8002F000 A0620000 */  sb         $v0, ($v1)
/* 17EA44 8002F004 3C038005 */  lui        $v1, %hi(D_80052214)
/* 17EA48 8002F008 8C632214 */  lw         $v1, %lo(D_80052214)($v1)
/* 17EA4C 8002F00C 90620001 */  lbu        $v0, 1($v1)
/* 17EA50 8002F010 2C420001 */  sltiu      $v0, $v0, 1
/* 17EA54 8002F014 A0620001 */  sb         $v0, 1($v1)
.L8002F018:
/* 17EA58 8002F018 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17EA5C 8002F01C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17EA60 8002F020 14400007 */  bnez       $v0, .L8002F040
/* 17EA64 8002F024 24020064 */   addiu     $v0, $zero, 0x64
/* 17EA68 8002F028 AFA20010 */  sw         $v0, 0x10($sp)
/* 17EA6C 8002F02C 240400CF */  addiu      $a0, $zero, 0xcf
/* 17EA70 8002F030 24050080 */  addiu      $a1, $zero, 0x80
/* 17EA74 8002F034 24060080 */  addiu      $a2, $zero, 0x80
/* 17EA78 8002F038 0C026E0C */  jal        func_8009B830
/* 17EA7C 8002F03C 24070001 */   addiu     $a3, $zero, 1
.L8002F040:
/* 17EA80 8002F040 0C02591A */  jal        func_80096468
/* 17EA84 8002F044 2404002F */   addiu     $a0, $zero, 0x2f
/* 17EA88 8002F048 3C038005 */  lui        $v1, %hi(D_80052214)
/* 17EA8C 8002F04C 8C632214 */  lw         $v1, %lo(D_80052214)($v1)
/* 17EA90 8002F050 240500FF */  addiu      $a1, $zero, 0xff
/* 17EA94 8002F054 90630001 */  lbu        $v1, 1($v1)
/* 17EA98 8002F058 244200D0 */  addiu      $v0, $v0, 0xd0
/* 17EA9C 8002F05C 304200FF */  andi       $v0, $v0, 0xff
/* 17EAA0 8002F060 AFA20010 */  sw         $v0, 0x10($sp)
/* 17EAA4 8002F064 00031040 */  sll        $v0, $v1, 1
/* 17EAA8 8002F068 00431021 */  addu       $v0, $v0, $v1
/* 17EAAC 8002F06C 00021080 */  sll        $v0, $v0, 2
/* 17EAB0 8002F070 00501021 */  addu       $v0, $v0, $s0
/* 17EAB4 8002F074 8C440000 */  lw         $a0, ($v0)
/* 17EAB8 8002F078 240600FF */  addiu      $a2, $zero, 0xff
/* 17EABC 8002F07C 0C028E41 */  jal        func_800A3904
/* 17EAC0 8002F080 240700FF */   addiu     $a3, $zero, 0xff
/* 17EAC4 8002F084 3C028005 */  lui        $v0, %hi(D_80052214)
/* 17EAC8 8002F088 8C422214 */  lw         $v0, %lo(D_80052214)($v0)
/* 17EACC 8002F08C 90430001 */  lbu        $v1, 1($v0)
/* 17EAD0 8002F090 00031040 */  sll        $v0, $v1, 1
/* 17EAD4 8002F094 00431021 */  addu       $v0, $v0, $v1
/* 17EAD8 8002F098 00021080 */  sll        $v0, $v0, 2
/* 17EADC 8002F09C 00501021 */  addu       $v0, $v0, $s0
/* 17EAE0 8002F0A0 0C028A40 */  jal        func_800A2900
/* 17EAE4 8002F0A4 8C440000 */   lw        $a0, ($v0)
/* 17EAE8 8002F0A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 17EAEC 8002F0AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 17EAF0 8002F0B0 03E00008 */  jr         $ra
/* 17EAF4 8002F0B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002F0B8_17EAF8
/* 17EAF8 8002F0B8 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17EAFC 8002F0BC 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17EB00 8002F0C0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17EB04 8002F0C4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17EB08 8002F0C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17EB0C 8002F0CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 17EB10 8002F0D0 8C64002C */  lw         $a0, 0x2c($v1)
/* 17EB14 8002F0D4 30420002 */  andi       $v0, $v0, 2
/* 17EB18 8002F0D8 10400003 */  beqz       $v0, .L8002F0E8
/* 17EB1C 8002F0DC 00000000 */   nop
/* 17EB20 8002F0E0 0800BC3B */  j          .L8002F0EC
/* 17EB24 8002F0E4 8C840000 */   lw        $a0, ($a0)
.L8002F0E8:
/* 17EB28 8002F0E8 8C84000C */  lw         $a0, 0xc($a0)
.L8002F0EC:
/* 17EB2C 8002F0EC 0C028A40 */  jal        func_800A2900
/* 17EB30 8002F0F0 00000000 */   nop
/* 17EB34 8002F0F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17EB38 8002F0F8 03E00008 */  jr         $ra
/* 17EB3C 8002F0FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F100_17EB40
/* 17EB40 8002F100 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17EB44 8002F104 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17EB48 8002F108 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 17EB4C 8002F10C AFB5002C */  sw         $s5, 0x2c($sp)
/* 17EB50 8002F110 3C158005 */  lui        $s5, %hi(D_80052214)
/* 17EB54 8002F114 8EB52214 */  lw         $s5, %lo(D_80052214)($s5)
/* 17EB58 8002F118 AFBF0038 */  sw         $ra, 0x38($sp)
/* 17EB5C 8002F11C AFB70034 */  sw         $s7, 0x34($sp)
/* 17EB60 8002F120 AFB60030 */  sw         $s6, 0x30($sp)
/* 17EB64 8002F124 AFB40028 */  sw         $s4, 0x28($sp)
/* 17EB68 8002F128 AFB30024 */  sw         $s3, 0x24($sp)
/* 17EB6C 8002F12C AFB20020 */  sw         $s2, 0x20($sp)
/* 17EB70 8002F130 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17EB74 8002F134 AFB00018 */  sw         $s0, 0x18($sp)
/* 17EB78 8002F138 8C42002C */  lw         $v0, 0x2c($v0)
/* 17EB7C 8002F13C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17EB80 8002F140 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17EB84 8002F144 26B70014 */  addiu      $s7, $s5, 0x14
/* 17EB88 8002F148 1460002F */  bnez       $v1, .L8002F208
/* 17EB8C 8002F14C 2456000C */   addiu     $s6, $v0, 0xc
/* 17EB90 8002F150 24020064 */  addiu      $v0, $zero, 0x64
/* 17EB94 8002F154 AFA20010 */  sw         $v0, 0x10($sp)
/* 17EB98 8002F158 2404006B */  addiu      $a0, $zero, 0x6b
/* 17EB9C 8002F15C 24050080 */  addiu      $a1, $zero, 0x80
/* 17EBA0 8002F160 24060080 */  addiu      $a2, $zero, 0x80
/* 17EBA4 8002F164 0C026E0C */  jal        func_8009B830
/* 17EBA8 8002F168 24070001 */   addiu     $a3, $zero, 1
/* 17EBAC 8002F16C 00009821 */  addu       $s3, $zero, $zero
/* 17EBB0 8002F170 0000A021 */  addu       $s4, $zero, $zero
/* 17EBB4 8002F174 327200FF */  andi       $s2, $s3, 0xff
.L8002F178:
/* 17EBB8 8002F178 00128040 */  sll        $s0, $s2, 1
/* 17EBBC 8002F17C 02128021 */  addu       $s0, $s0, $s2
/* 17EBC0 8002F180 00108080 */  sll        $s0, $s0, 2
/* 17EBC4 8002F184 02168021 */  addu       $s0, $s0, $s6
/* 17EBC8 8002F188 8E040000 */  lw         $a0, ($s0)
/* 17EBCC 8002F18C 00148C80 */  sll        $s1, $s4, 0x12
/* 17EBD0 8002F190 00118C03 */  sra        $s1, $s1, 0x10
/* 17EBD4 8002F194 02202821 */  addu       $a1, $s1, $zero
/* 17EBD8 8002F198 24060040 */  addiu      $a2, $zero, 0x40
/* 17EBDC 8002F19C 26730001 */  addiu      $s3, $s3, 1
/* 17EBE0 8002F1A0 0C028D89 */  jal        func_800A3624
/* 17EBE4 8002F1A4 26940010 */   addiu     $s4, $s4, 0x10
/* 17EBE8 8002F1A8 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 17EBEC 8002F1AC 02202821 */  addu       $a1, $s1, $zero
/* 17EBF0 8002F1B0 0C028D89 */  jal        func_800A3624
/* 17EBF4 8002F1B4 24060040 */   addiu     $a2, $zero, 0x40
/* 17EBF8 8002F1B8 0C02591A */  jal        func_80096468
/* 17EBFC 8002F1BC 24040064 */   addiu     $a0, $zero, 0x64
/* 17EC00 8002F1C0 24040002 */  addiu      $a0, $zero, 2
/* 17EC04 8002F1C4 02B21821 */  addu       $v1, $s5, $s2
/* 17EC08 8002F1C8 0C02591A */  jal        func_80096468
/* 17EC0C 8002F1CC A0620000 */   sb        $v0, ($v1)
/* 17EC10 8002F1D0 02F29021 */  addu       $s2, $s7, $s2
/* 17EC14 8002F1D4 A2420000 */  sb         $v0, ($s2)
/* 17EC18 8002F1D8 326200FF */  andi       $v0, $s3, 0xff
/* 17EC1C 8002F1DC 2C420014 */  sltiu      $v0, $v0, 0x14
/* 17EC20 8002F1E0 1440FFE5 */  bnez       $v0, .L8002F178
/* 17EC24 8002F1E4 327200FF */   andi      $s2, $s3, 0xff
/* 17EC28 8002F1E8 24050010 */  addiu      $a1, $zero, 0x10
/* 17EC2C 8002F1EC 24060030 */  addiu      $a2, $zero, 0x30
/* 17EC30 8002F1F0 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17EC34 8002F1F4 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17EC38 8002F1F8 24070130 */  addiu      $a3, $zero, 0x130
/* 17EC3C 8002F1FC 240200C0 */  addiu      $v0, $zero, 0xc0
/* 17EC40 8002F200 0C02939C */  jal        func_800A4E70
/* 17EC44 8002F204 AFA20010 */   sw        $v0, 0x10($sp)
.L8002F208:
/* 17EC48 8002F208 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17EC4C 8002F20C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17EC50 8002F210 9442000A */  lhu        $v0, 0xa($v0)
/* 17EC54 8002F214 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17EC58 8002F218 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17EC5C 8002F21C 2442FFFF */  addiu      $v0, $v0, -1
/* 17EC60 8002F220 14620003 */  bne        $v1, $v0, .L8002F230
/* 17EC64 8002F224 00000000 */   nop
/* 17EC68 8002F228 0C026E5D */  jal        func_8009B974
/* 17EC6C 8002F22C 24040005 */   addiu     $a0, $zero, 5
.L8002F230:
/* 17EC70 8002F230 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17EC74 8002F234 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17EC78 8002F238 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17EC7C 8002F23C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17EC80 8002F240 9442000A */  lhu        $v0, 0xa($v0)
/* 17EC84 8002F244 14620009 */  bne        $v1, $v0, .L8002F26C
/* 17EC88 8002F248 00009821 */   addu      $s3, $zero, $zero
/* 17EC8C 8002F24C 24020064 */  addiu      $v0, $zero, 0x64
/* 17EC90 8002F250 AFA20010 */  sw         $v0, 0x10($sp)
/* 17EC94 8002F254 24040068 */  addiu      $a0, $zero, 0x68
/* 17EC98 8002F258 24050080 */  addiu      $a1, $zero, 0x80
/* 17EC9C 8002F25C 24060080 */  addiu      $a2, $zero, 0x80
/* 17ECA0 8002F260 0C026E0C */  jal        func_8009B830
/* 17ECA4 8002F264 24070001 */   addiu     $a3, $zero, 1
/* 17ECA8 8002F268 00009821 */  addu       $s3, $zero, $zero
.L8002F26C:
/* 17ECAC 8002F26C 24110003 */  addiu      $s1, $zero, 3
/* 17ECB0 8002F270 326300FF */  andi       $v1, $s3, 0xff
.L8002F274:
/* 17ECB4 8002F274 02A31021 */  addu       $v0, $s5, $v1
/* 17ECB8 8002F278 90440000 */  lbu        $a0, ($v0)
/* 17ECBC 8002F27C 02E31021 */  addu       $v0, $s7, $v1
/* 17ECC0 8002F280 90420000 */  lbu        $v0, ($v0)
/* 17ECC4 8002F284 00031840 */  sll        $v1, $v1, 1
/* 17ECC8 8002F288 00442007 */  srav       $a0, $a0, $v0
/* 17ECCC 8002F28C 30850003 */  andi       $a1, $a0, 3
/* 17ECD0 8002F290 00053043 */  sra        $a2, $a1, 1
/* 17ECD4 8002F294 00661821 */  addu       $v1, $v1, $a2
/* 17ECD8 8002F298 00031040 */  sll        $v0, $v1, 1
/* 17ECDC 8002F29C 00431021 */  addu       $v0, $v0, $v1
/* 17ECE0 8002F2A0 00021080 */  sll        $v0, $v0, 2
/* 17ECE4 8002F2A4 00561021 */  addu       $v0, $v0, $s6
/* 17ECE8 8002F2A8 8C420000 */  lw         $v0, ($v0)
/* 17ECEC 8002F2AC 8C430000 */  lw         $v1, ($v0)
/* 17ECF0 8002F2B0 14B10002 */  bne        $a1, $s1, .L8002F2BC
/* 17ECF4 8002F2B4 30820001 */   andi      $v0, $a0, 1
/* 17ECF8 8002F2B8 34420010 */  ori        $v0, $v0, 0x10
.L8002F2BC:
/* 17ECFC 8002F2BC A062002F */  sb         $v0, 0x2f($v1)
/* 17ED00 8002F2C0 327000FF */  andi       $s0, $s3, 0xff
/* 17ED04 8002F2C4 00101840 */  sll        $v1, $s0, 1
/* 17ED08 8002F2C8 00661821 */  addu       $v1, $v1, $a2
/* 17ED0C 8002F2CC 00031040 */  sll        $v0, $v1, 1
/* 17ED10 8002F2D0 00431021 */  addu       $v0, $v0, $v1
/* 17ED14 8002F2D4 00021080 */  sll        $v0, $v0, 2
/* 17ED18 8002F2D8 00561021 */  addu       $v0, $v0, $s6
/* 17ED1C 8002F2DC 8C440000 */  lw         $a0, ($v0)
/* 17ED20 8002F2E0 0C028A40 */  jal        func_800A2900
/* 17ED24 8002F2E4 02B08021 */   addu      $s0, $s5, $s0
/* 17ED28 8002F2E8 92020000 */  lbu        $v0, ($s0)
/* 17ED2C 8002F2EC 26730001 */  addiu      $s3, $s3, 1
/* 17ED30 8002F2F0 24420001 */  addiu      $v0, $v0, 1
/* 17ED34 8002F2F4 A2020000 */  sb         $v0, ($s0)
/* 17ED38 8002F2F8 326200FF */  andi       $v0, $s3, 0xff
/* 17ED3C 8002F2FC 2C420014 */  sltiu      $v0, $v0, 0x14
/* 17ED40 8002F300 1440FFDC */  bnez       $v0, .L8002F274
/* 17ED44 8002F304 326300FF */   andi      $v1, $s3, 0xff
/* 17ED48 8002F308 8FBF0038 */  lw         $ra, 0x38($sp)
/* 17ED4C 8002F30C 8FB70034 */  lw         $s7, 0x34($sp)
/* 17ED50 8002F310 8FB60030 */  lw         $s6, 0x30($sp)
/* 17ED54 8002F314 8FB5002C */  lw         $s5, 0x2c($sp)
/* 17ED58 8002F318 8FB40028 */  lw         $s4, 0x28($sp)
/* 17ED5C 8002F31C 8FB30024 */  lw         $s3, 0x24($sp)
/* 17ED60 8002F320 8FB20020 */  lw         $s2, 0x20($sp)
/* 17ED64 8002F324 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17ED68 8002F328 8FB00018 */  lw         $s0, 0x18($sp)
/* 17ED6C 8002F32C 03E00008 */  jr         $ra
/* 17ED70 8002F330 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002F334_17ED74
/* 17ED74 8002F334 3C048005 */  lui        $a0, %hi(D_80052000)
/* 17ED78 8002F338 8C842000 */  lw         $a0, %lo(D_80052000)($a0)
/* 17ED7C 8002F33C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17ED80 8002F340 AFBF0020 */  sw         $ra, 0x20($sp)
/* 17ED84 8002F344 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17ED88 8002F348 AFB00018 */  sw         $s0, 0x18($sp)
/* 17ED8C 8002F34C 8C82002C */  lw         $v0, 0x2c($a0)
/* 17ED90 8002F350 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17ED94 8002F354 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17ED98 8002F358 14600035 */  bnez       $v1, .L8002F430
/* 17ED9C 8002F35C 2451000C */   addiu     $s1, $v0, 0xc
/* 17EDA0 8002F360 9483000E */  lhu        $v1, 0xe($a0)
/* 17EDA4 8002F364 24100001 */  addiu      $s0, $zero, 1
/* 17EDA8 8002F368 0800BCEC */  j          .L8002F3B0
/* 17EDAC 8002F36C 24020001 */   addiu     $v0, $zero, 1
.L8002F370:
/* 17EDB0 8002F370 00031E03 */  sra        $v1, $v1, 0x18
/* 17EDB4 8002F374 00031040 */  sll        $v0, $v1, 1
/* 17EDB8 8002F378 00431021 */  addu       $v0, $v0, $v1
/* 17EDBC 8002F37C 00021080 */  sll        $v0, $v0, 2
/* 17EDC0 8002F380 00511021 */  addu       $v0, $v0, $s1
/* 17EDC4 8002F384 8C440000 */  lw         $a0, ($v0)
/* 17EDC8 8002F388 00002821 */  addu       $a1, $zero, $zero
/* 17EDCC 8002F38C 0C02912A */  jal        func_800A44A8
/* 17EDD0 8002F390 00003021 */   addu      $a2, $zero, $zero
/* 17EDD4 8002F394 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17EDD8 8002F398 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17EDDC 8002F39C 26020001 */  addiu      $v0, $s0, 1
/* 17EDE0 8002F3A0 00408021 */  addu       $s0, $v0, $zero
/* 17EDE4 8002F3A4 9463000E */  lhu        $v1, 0xe($v1)
/* 17EDE8 8002F3A8 00021600 */  sll        $v0, $v0, 0x18
/* 17EDEC 8002F3AC 00021603 */  sra        $v0, $v0, 0x18
.L8002F3B0:
/* 17EDF0 8002F3B0 2463FFFF */  addiu      $v1, $v1, -1
/* 17EDF4 8002F3B4 0043102A */  slt        $v0, $v0, $v1
/* 17EDF8 8002F3B8 1440FFED */  bnez       $v0, .L8002F370
/* 17EDFC 8002F3BC 00101E00 */   sll       $v1, $s0, 0x18
/* 17EE00 8002F3C0 24100001 */  addiu      $s0, $zero, 1
/* 17EE04 8002F3C4 3C038005 */  lui        $v1, %hi(D_80052094)
/* 17EE08 8002F3C8 8C632094 */  lw         $v1, %lo(D_80052094)($v1)
/* 17EE0C 8002F3CC 24040001 */  addiu      $a0, $zero, 1
/* 17EE10 8002F3D0 24020003 */  addiu      $v0, $zero, 3
/* 17EE14 8002F3D4 A462001C */  sh         $v0, 0x1c($v1)
.L8002F3D8:
/* 17EE18 8002F3D8 3C038005 */  lui        $v1, %hi(D_80052050)
/* 17EE1C 8002F3DC 8C632050 */  lw         $v1, %lo(D_80052050)($v1)
/* 17EE20 8002F3E0 00101600 */  sll        $v0, $s0, 0x18
/* 17EE24 8002F3E4 00021583 */  sra        $v0, $v0, 0x16
/* 17EE28 8002F3E8 00431021 */  addu       $v0, $v0, $v1
/* 17EE2C 8002F3EC 8C430000 */  lw         $v1, ($v0)
/* 17EE30 8002F3F0 2602FFFF */  addiu      $v0, $s0, -1
/* 17EE34 8002F3F4 00408021 */  addu       $s0, $v0, $zero
/* 17EE38 8002F3F8 00021600 */  sll        $v0, $v0, 0x18
/* 17EE3C 8002F3FC 0441FFF6 */  bgez       $v0, .L8002F3D8
/* 17EE40 8002F400 A464001C */   sh        $a0, 0x1c($v1)
/* 17EE44 8002F404 3C028005 */  lui        $v0, %hi(D_80052214)
/* 17EE48 8002F408 8C422214 */  lw         $v0, %lo(D_80052214)($v0)
/* 17EE4C 8002F40C 24050010 */  addiu      $a1, $zero, 0x10
/* 17EE50 8002F410 24060030 */  addiu      $a2, $zero, 0x30
/* 17EE54 8002F414 A0400000 */  sb         $zero, ($v0)
/* 17EE58 8002F418 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17EE5C 8002F41C 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17EE60 8002F420 24070010 */  addiu      $a3, $zero, 0x10
/* 17EE64 8002F424 240200C0 */  addiu      $v0, $zero, 0xc0
/* 17EE68 8002F428 0C02939C */  jal        func_800A4E70
/* 17EE6C 8002F42C AFA20010 */   sw        $v0, 0x10($sp)
.L8002F430:
/* 17EE70 8002F430 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17EE74 8002F434 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17EE78 8002F438 2C42003D */  sltiu      $v0, $v0, 0x3d
/* 17EE7C 8002F43C 14400007 */  bnez       $v0, .L8002F45C
/* 17EE80 8002F440 00000000 */   nop
/* 17EE84 8002F444 3C038005 */  lui        $v1, %hi(D_80052214)
/* 17EE88 8002F448 8C632214 */  lw         $v1, %lo(D_80052214)($v1)
/* 17EE8C 8002F44C 90620000 */  lbu        $v0, ($v1)
/* 17EE90 8002F450 14400002 */  bnez       $v0, .L8002F45C
/* 17EE94 8002F454 24020001 */   addiu     $v0, $zero, 1
/* 17EE98 8002F458 A0620000 */  sb         $v0, ($v1)
.L8002F45C:
/* 17EE9C 8002F45C 3C048005 */  lui        $a0, %hi(D_80052214)
/* 17EEA0 8002F460 8C842214 */  lw         $a0, %lo(D_80052214)($a0)
/* 17EEA4 8002F464 90830000 */  lbu        $v1, ($a0)
/* 17EEA8 8002F468 24020001 */  addiu      $v0, $zero, 1
/* 17EEAC 8002F46C 14620018 */  bne        $v1, $v0, .L8002F4D0
/* 17EEB0 8002F470 00000000 */   nop
/* 17EEB4 8002F474 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17EEB8 8002F478 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17EEBC 8002F47C 2442FFC4 */  addiu      $v0, $v0, -0x3c
/* 17EEC0 8002F480 00420018 */  mult       $v0, $v0
/* 17EEC4 8002F484 00001012 */  mflo       $v0
/* 17EEC8 8002F488 00023840 */  sll        $a3, $v0, 1
/* 17EECC 8002F48C 00021440 */  sll        $v0, $v0, 0x11
/* 17EED0 8002F490 00021403 */  sra        $v0, $v0, 0x10
/* 17EED4 8002F494 28420120 */  slti       $v0, $v0, 0x120
/* 17EED8 8002F498 14400004 */  bnez       $v0, .L8002F4AC
/* 17EEDC 8002F49C 24050010 */   addiu     $a1, $zero, 0x10
/* 17EEE0 8002F4A0 24070120 */  addiu      $a3, $zero, 0x120
/* 17EEE4 8002F4A4 24020002 */  addiu      $v0, $zero, 2
/* 17EEE8 8002F4A8 A0820000 */  sb         $v0, ($a0)
.L8002F4AC:
/* 17EEEC 8002F4AC 24060030 */  addiu      $a2, $zero, 0x30
/* 17EEF0 8002F4B0 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17EEF4 8002F4B4 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17EEF8 8002F4B8 24E70010 */  addiu      $a3, $a3, 0x10
/* 17EEFC 8002F4BC 00073C00 */  sll        $a3, $a3, 0x10
/* 17EF00 8002F4C0 00073C03 */  sra        $a3, $a3, 0x10
/* 17EF04 8002F4C4 240200C0 */  addiu      $v0, $zero, 0xc0
/* 17EF08 8002F4C8 0C02939C */  jal        func_800A4E70
/* 17EF0C 8002F4CC AFA20010 */   sw        $v0, 0x10($sp)
.L8002F4D0:
/* 17EF10 8002F4D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17EF14 8002F4D4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17EF18 8002F4D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 17EF1C 8002F4DC 03E00008 */  jr         $ra
/* 17EF20 8002F4E0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002F4E4_17EF24
/* 17EF24 8002F4E4 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17EF28 8002F4E8 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17EF2C 8002F4EC 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17EF30 8002F4F0 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17EF34 8002F4F4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17EF38 8002F4F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 17EF3C 8002F4FC AFB20020 */  sw         $s2, 0x20($sp)
/* 17EF40 8002F500 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17EF44 8002F504 AFB00018 */  sw         $s0, 0x18($sp)
/* 17EF48 8002F508 8C72002C */  lw         $s2, 0x2c($v1)
/* 17EF4C 8002F50C 14400051 */  bnez       $v0, .L8002F654
/* 17EF50 8002F510 24020002 */   addiu     $v0, $zero, 2
/* 17EF54 8002F514 9463000E */  lhu        $v1, 0xe($v1)
/* 17EF58 8002F518 0043102B */  sltu       $v0, $v0, $v1
/* 17EF5C 8002F51C 10400012 */  beqz       $v0, .L8002F568
/* 17EF60 8002F520 24100002 */   addiu     $s0, $zero, 2
/* 17EF64 8002F524 320300FF */  andi       $v1, $s0, 0xff
.L8002F528:
/* 17EF68 8002F528 00031040 */  sll        $v0, $v1, 1
/* 17EF6C 8002F52C 00431021 */  addu       $v0, $v0, $v1
/* 17EF70 8002F530 00021080 */  sll        $v0, $v0, 2
/* 17EF74 8002F534 00521021 */  addu       $v0, $v0, $s2
/* 17EF78 8002F538 8C440000 */  lw         $a0, ($v0)
/* 17EF7C 8002F53C 00002821 */  addu       $a1, $zero, $zero
/* 17EF80 8002F540 0C02912A */  jal        func_800A44A8
/* 17EF84 8002F544 00003021 */   addu      $a2, $zero, $zero
/* 17EF88 8002F548 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17EF8C 8002F54C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17EF90 8002F550 9443000E */  lhu        $v1, 0xe($v0)
/* 17EF94 8002F554 26100001 */  addiu      $s0, $s0, 1
/* 17EF98 8002F558 320200FF */  andi       $v0, $s0, 0xff
/* 17EF9C 8002F55C 0043102B */  sltu       $v0, $v0, $v1
/* 17EFA0 8002F560 1440FFF1 */  bnez       $v0, .L8002F528
/* 17EFA4 8002F564 320300FF */   andi      $v1, $s0, 0xff
.L8002F568:
/* 17EFA8 8002F568 2404003D */  addiu      $a0, $zero, 0x3d
/* 17EFAC 8002F56C 24050080 */  addiu      $a1, $zero, 0x80
/* 17EFB0 8002F570 24060080 */  addiu      $a2, $zero, 0x80
/* 17EFB4 8002F574 24070001 */  addiu      $a3, $zero, 1
/* 17EFB8 8002F578 24020064 */  addiu      $v0, $zero, 0x64
/* 17EFBC 8002F57C 0C026E0C */  jal        func_8009B830
/* 17EFC0 8002F580 AFA20010 */   sw        $v0, 0x10($sp)
/* 17EFC4 8002F584 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17EFC8 8002F588 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17EFCC 8002F58C 8C42002C */  lw         $v0, 0x2c($v0)
/* 17EFD0 8002F590 00008021 */  addu       $s0, $zero, $zero
/* 17EFD4 8002F594 24110018 */  addiu      $s1, $zero, 0x18
/* 17EFD8 8002F598 245200F0 */  addiu      $s2, $v0, 0xf0
.L8002F59C:
/* 17EFDC 8002F59C 8E440000 */  lw         $a0, ($s2)
/* 17EFE0 8002F5A0 26250010 */  addiu      $a1, $s1, 0x10
/* 17EFE4 8002F5A4 00052C80 */  sll        $a1, $a1, 0x12
/* 17EFE8 8002F5A8 00052C03 */  sra        $a1, $a1, 0x10
/* 17EFEC 8002F5AC 24060120 */  addiu      $a2, $zero, 0x120
/* 17EFF0 8002F5B0 26100001 */  addiu      $s0, $s0, 1
/* 17EFF4 8002F5B4 26310070 */  addiu      $s1, $s1, 0x70
/* 17EFF8 8002F5B8 0C028D89 */  jal        func_800A3624
/* 17EFFC 8002F5BC 2652000C */   addiu     $s2, $s2, 0xc
/* 17F000 8002F5C0 320200FF */  andi       $v0, $s0, 0xff
/* 17F004 8002F5C4 2C420003 */  sltiu      $v0, $v0, 3
/* 17F008 8002F5C8 1440FFF4 */  bnez       $v0, .L8002F59C
/* 17F00C 8002F5CC 00000000 */   nop
/* 17F010 8002F5D0 00008021 */  addu       $s0, $zero, $zero
/* 17F014 8002F5D4 24110050 */  addiu      $s1, $zero, 0x50
.L8002F5D8:
/* 17F018 8002F5D8 8E440000 */  lw         $a0, ($s2)
/* 17F01C 8002F5DC 26250010 */  addiu      $a1, $s1, 0x10
/* 17F020 8002F5E0 00052C80 */  sll        $a1, $a1, 0x12
/* 17F024 8002F5E4 00052C03 */  sra        $a1, $a1, 0x10
/* 17F028 8002F5E8 240601E0 */  addiu      $a2, $zero, 0x1e0
/* 17F02C 8002F5EC 26100001 */  addiu      $s0, $s0, 1
/* 17F030 8002F5F0 26310070 */  addiu      $s1, $s1, 0x70
/* 17F034 8002F5F4 0C028D89 */  jal        func_800A3624
/* 17F038 8002F5F8 2652000C */   addiu     $s2, $s2, 0xc
/* 17F03C 8002F5FC 320200FF */  andi       $v0, $s0, 0xff
/* 17F040 8002F600 2C420002 */  sltiu      $v0, $v0, 2
/* 17F044 8002F604 1440FFF4 */  bnez       $v0, .L8002F5D8
/* 17F048 8002F608 00000000 */   nop
/* 17F04C 8002F60C 00008021 */  addu       $s0, $zero, $zero
/* 17F050 8002F610 24110018 */  addiu      $s1, $zero, 0x18
.L8002F614:
/* 17F054 8002F614 8E440000 */  lw         $a0, ($s2)
/* 17F058 8002F618 26250010 */  addiu      $a1, $s1, 0x10
/* 17F05C 8002F61C 00052C80 */  sll        $a1, $a1, 0x12
/* 17F060 8002F620 00052C03 */  sra        $a1, $a1, 0x10
/* 17F064 8002F624 240602A0 */  addiu      $a2, $zero, 0x2a0
/* 17F068 8002F628 26100001 */  addiu      $s0, $s0, 1
/* 17F06C 8002F62C 26310070 */  addiu      $s1, $s1, 0x70
/* 17F070 8002F630 0C028D89 */  jal        func_800A3624
/* 17F074 8002F634 2652000C */   addiu     $s2, $s2, 0xc
/* 17F078 8002F638 320200FF */  andi       $v0, $s0, 0xff
/* 17F07C 8002F63C 2C420002 */  sltiu      $v0, $v0, 2
/* 17F080 8002F640 1440FFF4 */  bnez       $v0, .L8002F614
/* 17F084 8002F644 00000000 */   nop
/* 17F088 8002F648 3C028005 */  lui        $v0, %hi(D_80052214)
/* 17F08C 8002F64C 8C422214 */  lw         $v0, %lo(D_80052214)($v0)
/* 17F090 8002F650 A0400000 */  sb         $zero, ($v0)
.L8002F654:
/* 17F094 8002F654 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17F098 8002F658 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17F09C 8002F65C 24020014 */  addiu      $v0, $zero, 0x14
/* 17F0A0 8002F660 14620007 */  bne        $v1, $v0, .L8002F680
/* 17F0A4 8002F664 24020064 */   addiu     $v0, $zero, 0x64
/* 17F0A8 8002F668 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F0AC 8002F66C 24040012 */  addiu      $a0, $zero, 0x12
/* 17F0B0 8002F670 24050080 */  addiu      $a1, $zero, 0x80
/* 17F0B4 8002F674 24060080 */  addiu      $a2, $zero, 0x80
/* 17F0B8 8002F678 0C026E0C */  jal        func_8009B830
/* 17F0BC 8002F67C 24070001 */   addiu     $a3, $zero, 1
.L8002F680:
/* 17F0C0 8002F680 3C028005 */  lui        $v0, %hi(D_80052214)
/* 17F0C4 8002F684 8C422214 */  lw         $v0, %lo(D_80052214)($v0)
/* 17F0C8 8002F688 90420000 */  lbu        $v0, ($v0)
/* 17F0CC 8002F68C 14400038 */  bnez       $v0, .L8002F770
/* 17F0D0 8002F690 24050010 */   addiu     $a1, $zero, 0x10
/* 17F0D4 8002F694 24060030 */  addiu      $a2, $zero, 0x30
/* 17F0D8 8002F698 3C048005 */  lui        $a0, %hi(D_8005200C)
/* 17F0DC 8002F69C 8C84200C */  lw         $a0, %lo(D_8005200C)($a0)
/* 17F0E0 8002F6A0 24070130 */  addiu      $a3, $zero, 0x130
/* 17F0E4 8002F6A4 241000C0 */  addiu      $s0, $zero, 0xc0
/* 17F0E8 8002F6A8 0C02939C */  jal        func_800A4E70
/* 17F0EC 8002F6AC AFB00010 */   sw        $s0, 0x10($sp)
/* 17F0F0 8002F6B0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F0F4 8002F6B4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F0F8 8002F6B8 24032710 */  addiu      $v1, $zero, 0x2710
/* 17F0FC 8002F6BC 24420001 */  addiu      $v0, $v0, 1
/* 17F100 8002F6C0 00021400 */  sll        $v0, $v0, 0x10
/* 17F104 8002F6C4 00021403 */  sra        $v0, $v0, 0x10
/* 17F108 8002F6C8 0062001A */  div        $zero, $v1, $v0
/* 17F10C 8002F6CC 14400002 */  bnez       $v0, .L8002F6D8
/* 17F110 8002F6D0 00000000 */   nop
/* 17F114 8002F6D4 0007000D */  break      7
.L8002F6D8:
/* 17F118 8002F6D8 2401FFFF */   addiu     $at, $zero, -1
/* 17F11C 8002F6DC 14410004 */  bne        $v0, $at, .L8002F6F0
/* 17F120 8002F6E0 3C018000 */   lui       $at, 0x8000
/* 17F124 8002F6E4 14610002 */  bne        $v1, $at, .L8002F6F0
/* 17F128 8002F6E8 00000000 */   nop
/* 17F12C 8002F6EC 0006000D */  break      6
.L8002F6F0:
/* 17F130 8002F6F0 00001812 */   mflo      $v1
/* 17F134 8002F6F4 24020120 */  addiu      $v0, $zero, 0x120
/* 17F138 8002F6F8 00431023 */  subu       $v0, $v0, $v1
/* 17F13C 8002F6FC 00408821 */  addu       $s1, $v0, $zero
/* 17F140 8002F700 00021400 */  sll        $v0, $v0, 0x10
/* 17F144 8002F704 00021403 */  sra        $v0, $v0, 0x10
/* 17F148 8002F708 28420121 */  slti       $v0, $v0, 0x121
/* 17F14C 8002F70C 50400001 */  beql       $v0, $zero, .L8002F714
/* 17F150 8002F710 24110120 */   addiu     $s1, $zero, 0x120
.L8002F714:
/* 17F154 8002F714 24050010 */  addiu      $a1, $zero, 0x10
/* 17F158 8002F718 24060030 */  addiu      $a2, $zero, 0x30
/* 17F15C 8002F71C 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17F160 8002F720 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17F164 8002F724 26270010 */  addiu      $a3, $s1, 0x10
/* 17F168 8002F728 00073C00 */  sll        $a3, $a3, 0x10
/* 17F16C 8002F72C 00073C03 */  sra        $a3, $a3, 0x10
/* 17F170 8002F730 0C02939C */  jal        func_800A4E70
/* 17F174 8002F734 AFB00010 */   sw        $s0, 0x10($sp)
/* 17F178 8002F738 3C048005 */  lui        $a0, %hi(D_80052224)
/* 17F17C 8002F73C 8C842224 */  lw         $a0, %lo(D_80052224)($a0)
/* 17F180 8002F740 24050010 */  addiu      $a1, $zero, 0x10
/* 17F184 8002F744 24060030 */  addiu      $a2, $zero, 0x30
/* 17F188 8002F748 9483001E */  lhu        $v1, 0x1e($a0)
/* 17F18C 8002F74C 24070130 */  addiu      $a3, $zero, 0x130
/* 17F190 8002F750 24020003 */  addiu      $v0, $zero, 3
/* 17F194 8002F754 A482001C */  sh         $v0, 0x1c($a0)
/* 17F198 8002F758 A483001E */  sh         $v1, 0x1e($a0)
/* 17F19C 8002F75C 0C02939C */  jal        func_800A4E70
/* 17F1A0 8002F760 AFB00010 */   sw        $s0, 0x10($sp)
/* 17F1A4 8002F764 3C048005 */  lui        $a0, %hi(D_80052224)
/* 17F1A8 8002F768 0C028A40 */  jal        func_800A2900
/* 17F1AC 8002F76C 8C842224 */   lw        $a0, %lo(D_80052224)($a0)
.L8002F770:
/* 17F1B0 8002F770 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17F1B4 8002F774 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17F1B8 8002F778 8C50002C */  lw         $s0, 0x2c($v0)
/* 17F1BC 8002F77C 0C02591A */  jal        func_80096468
/* 17F1C0 8002F780 2404003F */   addiu     $a0, $zero, 0x3f
/* 17F1C4 8002F784 240500FF */  addiu      $a1, $zero, 0xff
/* 17F1C8 8002F788 244200C0 */  addiu      $v0, $v0, 0xc0
/* 17F1CC 8002F78C 304200FF */  andi       $v0, $v0, 0xff
/* 17F1D0 8002F790 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F1D4 8002F794 8E0400E4 */  lw         $a0, 0xe4($s0)
/* 17F1D8 8002F798 240600FF */  addiu      $a2, $zero, 0xff
/* 17F1DC 8002F79C 0C028E41 */  jal        func_800A3904
/* 17F1E0 8002F7A0 240700FF */   addiu     $a3, $zero, 0xff
/* 17F1E4 8002F7A4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 17F1E8 8002F7A8 8FB20020 */  lw         $s2, 0x20($sp)
/* 17F1EC 8002F7AC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17F1F0 8002F7B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 17F1F4 8002F7B4 03E00008 */  jr         $ra
/* 17F1F8 8002F7B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002F7BC_17F1FC
/* 17F1FC 8002F7BC 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F200 8002F7C0 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F204 8002F7C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17F208 8002F7C8 14400003 */  bnez       $v0, .L8002F7D8
/* 17F20C 8002F7CC AFBF0010 */   sw        $ra, 0x10($sp)
/* 17F210 8002F7D0 0C026E5D */  jal        func_8009B974
/* 17F214 8002F7D4 24040005 */   addiu     $a0, $zero, 5
.L8002F7D8:
/* 17F218 8002F7D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17F21C 8002F7DC 03E00008 */  jr         $ra
/* 17F220 8002F7E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F7E4_17F224
/* 17F224 8002F7E4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17F228 8002F7E8 27A70030 */  addiu      $a3, $sp, 0x30
/* 17F22C 8002F7EC 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17F230 8002F7F0 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17F234 8002F7F4 3C068005 */  lui        $a2, %hi(D_80050CA0)
/* 17F238 8002F7F8 24C60CA0 */  addiu      $a2, $a2, %lo(D_80050CA0)
/* 17F23C 8002F7FC 24C80020 */  addiu      $t0, $a2, 0x20
/* 17F240 8002F800 AFBF0064 */  sw         $ra, 0x64($sp)
/* 17F244 8002F804 AFB00060 */  sw         $s0, 0x60($sp)
/* 17F248 8002F808 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 17F24C 8002F80C 8C500028 */  lw         $s0, 0x28($v0)
.L8002F810:
/* 17F250 8002F810 8CC20000 */  lw         $v0, ($a2)
/* 17F254 8002F814 8CC30004 */  lw         $v1, 4($a2)
/* 17F258 8002F818 8CC40008 */  lw         $a0, 8($a2)
/* 17F25C 8002F81C 8CC5000C */  lw         $a1, 0xc($a2)
/* 17F260 8002F820 ACE20000 */  sw         $v0, ($a3)
/* 17F264 8002F824 ACE30004 */  sw         $v1, 4($a3)
/* 17F268 8002F828 ACE40008 */  sw         $a0, 8($a3)
/* 17F26C 8002F82C ACE5000C */  sw         $a1, 0xc($a3)
/* 17F270 8002F830 24C60010 */  addiu      $a2, $a2, 0x10
/* 17F274 8002F834 14C8FFF6 */  bne        $a2, $t0, .L8002F810
/* 17F278 8002F838 24E70010 */   addiu     $a3, $a3, 0x10
/* 17F27C 8002F83C 8CC20000 */  lw         $v0, ($a2)
/* 17F280 8002F840 8CC30004 */  lw         $v1, 4($a2)
/* 17F284 8002F844 8CC40008 */  lw         $a0, 8($a2)
/* 17F288 8002F848 ACE20000 */  sw         $v0, ($a3)
/* 17F28C 8002F84C ACE30004 */  sw         $v1, 4($a3)
/* 17F290 8002F850 ACE40008 */  sw         $a0, 8($a3)
/* 17F294 8002F854 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F298 8002F858 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F29C 8002F85C 1440002A */  bnez       $v0, .L8002F908
/* 17F2A0 8002F860 00000000 */   nop
/* 17F2A4 8002F864 8FA20040 */  lw         $v0, 0x40($sp)
/* 17F2A8 8002F868 8FA30044 */  lw         $v1, 0x44($sp)
/* 17F2AC 8002F86C 8FA40048 */  lw         $a0, 0x48($sp)
/* 17F2B0 8002F870 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17F2B4 8002F874 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F2B8 8002F878 AFA30014 */  sw         $v1, 0x14($sp)
/* 17F2BC 8002F87C AFA40018 */  sw         $a0, 0x18($sp)
/* 17F2C0 8002F880 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17F2C4 8002F884 8FA20050 */  lw         $v0, 0x50($sp)
/* 17F2C8 8002F888 8FA30054 */  lw         $v1, 0x54($sp)
/* 17F2CC 8002F88C 8FA40058 */  lw         $a0, 0x58($sp)
/* 17F2D0 8002F890 AFA20020 */  sw         $v0, 0x20($sp)
/* 17F2D4 8002F894 AFA30024 */  sw         $v1, 0x24($sp)
/* 17F2D8 8002F898 AFA40028 */  sw         $a0, 0x28($sp)
/* 17F2DC 8002F89C 8FA40030 */  lw         $a0, 0x30($sp)
/* 17F2E0 8002F8A0 8FA50034 */  lw         $a1, 0x34($sp)
/* 17F2E4 8002F8A4 8FA60038 */  lw         $a2, 0x38($sp)
/* 17F2E8 8002F8A8 0C0099F7 */  jal        func_800267DC_17621C
/* 17F2EC 8002F8AC 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17F2F0 8002F8B0 24040050 */  addiu      $a0, $zero, 0x50
/* 17F2F4 8002F8B4 24050050 */  addiu      $a1, $zero, 0x50
/* 17F2F8 8002F8B8 24060050 */  addiu      $a2, $zero, 0x50
/* 17F2FC 8002F8BC 240700FF */  addiu      $a3, $zero, 0xff
/* 17F300 8002F8C0 240200FF */  addiu      $v0, $zero, 0xff
/* 17F304 8002F8C4 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F308 8002F8C8 0C027101 */  jal        func_8009C404
/* 17F30C 8002F8CC AFA20014 */   sw        $v0, 0x14($sp)
/* 17F310 8002F8D0 0C027224 */  jal        func_8009C890
/* 17F314 8002F8D4 00000000 */   nop
/* 17F318 8002F8D8 3C013F80 */  lui        $at, 0x3f80
/* 17F31C 8002F8DC 4481A000 */  mtc1       $at, $f20
/* 17F320 8002F8E0 8E04006C */  lw         $a0, 0x6c($s0)
/* 17F324 8002F8E4 4405A000 */  mfc1       $a1, $f20
/* 17F328 8002F8E8 0C02795C */  jal        func_8009E570
/* 17F32C 8002F8EC 00000000 */   nop
/* 17F330 8002F8F0 8E040070 */  lw         $a0, 0x70($s0)
/* 17F334 8002F8F4 4405A000 */  mfc1       $a1, $f20
/* 17F338 8002F8F8 0C027C5E */  jal        func_8009F178
/* 17F33C 8002F8FC 00000000 */   nop
/* 17F340 8002F900 0800BE53 */  j          .L8002F94C
/* 17F344 8002F904 00000000 */   nop
.L8002F908:
/* 17F348 8002F908 3C028015 */  lui        $v0, %hi(D_8014A068)
/* 17F34C 8002F90C 2442A068 */  addiu      $v0, $v0, %lo(D_8014A068)
/* 17F350 8002F910 C4420000 */  lwc1       $f2, ($v0)
/* 17F354 8002F914 3C014240 */  lui        $at, 0x4240
/* 17F358 8002F918 44810000 */  mtc1       $at, $f0
/* 17F35C 8002F91C 00000000 */  nop
/* 17F360 8002F920 4600103C */  c.lt.s     $f2, $f0
/* 17F364 8002F924 00000000 */  nop
/* 17F368 8002F928 00000000 */  nop
/* 17F36C 8002F92C 45020007 */  bc1fl      .L8002F94C
/* 17F370 8002F930 E4400000 */   swc1      $f0, ($v0)
/* 17F374 8002F934 3C013D4C */  lui        $at, 0x3d4c
/* 17F378 8002F938 3421CCCD */  ori        $at, $at, 0xcccd
/* 17F37C 8002F93C 44810000 */  mtc1       $at, $f0
/* 17F380 8002F940 00000000 */  nop
/* 17F384 8002F944 46001000 */  add.s      $f0, $f2, $f0
/* 17F388 8002F948 E4400000 */  swc1       $f0, ($v0)
.L8002F94C:
/* 17F38C 8002F94C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17F390 8002F950 8FB00060 */  lw         $s0, 0x60($sp)
/* 17F394 8002F954 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 17F398 8002F958 03E00008 */  jr         $ra
/* 17F39C 8002F95C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002F960_17F3A0
/* 17F3A0 8002F960 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17F3A4 8002F964 AFBF0060 */  sw         $ra, 0x60($sp)
/* 17F3A8 8002F968 27A70030 */  addiu      $a3, $sp, 0x30
/* 17F3AC 8002F96C 3C068005 */  lui        $a2, %hi(D_80050CCC)
/* 17F3B0 8002F970 24C60CCC */  addiu      $a2, $a2, %lo(D_80050CCC)
/* 17F3B4 8002F974 24C80020 */  addiu      $t0, $a2, 0x20
.L8002F978:
/* 17F3B8 8002F978 8CC20000 */  lw         $v0, ($a2)
/* 17F3BC 8002F97C 8CC30004 */  lw         $v1, 4($a2)
/* 17F3C0 8002F980 8CC40008 */  lw         $a0, 8($a2)
/* 17F3C4 8002F984 8CC5000C */  lw         $a1, 0xc($a2)
/* 17F3C8 8002F988 ACE20000 */  sw         $v0, ($a3)
/* 17F3CC 8002F98C ACE30004 */  sw         $v1, 4($a3)
/* 17F3D0 8002F990 ACE40008 */  sw         $a0, 8($a3)
/* 17F3D4 8002F994 ACE5000C */  sw         $a1, 0xc($a3)
/* 17F3D8 8002F998 24C60010 */  addiu      $a2, $a2, 0x10
/* 17F3DC 8002F99C 14C8FFF6 */  bne        $a2, $t0, .L8002F978
/* 17F3E0 8002F9A0 24E70010 */   addiu     $a3, $a3, 0x10
/* 17F3E4 8002F9A4 8CC20000 */  lw         $v0, ($a2)
/* 17F3E8 8002F9A8 8CC30004 */  lw         $v1, 4($a2)
/* 17F3EC 8002F9AC 8CC40008 */  lw         $a0, 8($a2)
/* 17F3F0 8002F9B0 ACE20000 */  sw         $v0, ($a3)
/* 17F3F4 8002F9B4 ACE30004 */  sw         $v1, 4($a3)
/* 17F3F8 8002F9B8 ACE40008 */  sw         $a0, 8($a3)
/* 17F3FC 8002F9BC 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F400 8002F9C0 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F404 8002F9C4 14400025 */  bnez       $v0, .L8002FA5C
/* 17F408 8002F9C8 00000000 */   nop
/* 17F40C 8002F9CC 8FA20040 */  lw         $v0, 0x40($sp)
/* 17F410 8002F9D0 8FA30044 */  lw         $v1, 0x44($sp)
/* 17F414 8002F9D4 8FA40048 */  lw         $a0, 0x48($sp)
/* 17F418 8002F9D8 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17F41C 8002F9DC AFA20010 */  sw         $v0, 0x10($sp)
/* 17F420 8002F9E0 AFA30014 */  sw         $v1, 0x14($sp)
/* 17F424 8002F9E4 AFA40018 */  sw         $a0, 0x18($sp)
/* 17F428 8002F9E8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17F42C 8002F9EC 8FA20050 */  lw         $v0, 0x50($sp)
/* 17F430 8002F9F0 8FA30054 */  lw         $v1, 0x54($sp)
/* 17F434 8002F9F4 8FA40058 */  lw         $a0, 0x58($sp)
/* 17F438 8002F9F8 AFA20020 */  sw         $v0, 0x20($sp)
/* 17F43C 8002F9FC AFA30024 */  sw         $v1, 0x24($sp)
/* 17F440 8002FA00 AFA40028 */  sw         $a0, 0x28($sp)
/* 17F444 8002FA04 8FA40030 */  lw         $a0, 0x30($sp)
/* 17F448 8002FA08 8FA50034 */  lw         $a1, 0x34($sp)
/* 17F44C 8002FA0C 8FA60038 */  lw         $a2, 0x38($sp)
/* 17F450 8002FA10 0C0099F7 */  jal        func_800267DC_17621C
/* 17F454 8002FA14 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17F458 8002FA18 24040050 */  addiu      $a0, $zero, 0x50
/* 17F45C 8002FA1C 24050050 */  addiu      $a1, $zero, 0x50
/* 17F460 8002FA20 24060050 */  addiu      $a2, $zero, 0x50
/* 17F464 8002FA24 240700FF */  addiu      $a3, $zero, 0xff
/* 17F468 8002FA28 240200FF */  addiu      $v0, $zero, 0xff
/* 17F46C 8002FA2C AFA20010 */  sw         $v0, 0x10($sp)
/* 17F470 8002FA30 0C027101 */  jal        func_8009C404
/* 17F474 8002FA34 AFA20014 */   sw        $v0, 0x14($sp)
/* 17F478 8002FA38 0C027224 */  jal        func_8009C890
/* 17F47C 8002FA3C 00000000 */   nop
/* 17F480 8002FA40 240400A8 */  addiu      $a0, $zero, 0xa8
/* 17F484 8002FA44 24050080 */  addiu      $a1, $zero, 0x80
/* 17F488 8002FA48 24060080 */  addiu      $a2, $zero, 0x80
/* 17F48C 8002FA4C 24070001 */  addiu      $a3, $zero, 1
/* 17F490 8002FA50 24020064 */  addiu      $v0, $zero, 0x64
/* 17F494 8002FA54 0C026E0C */  jal        func_8009B830
/* 17F498 8002FA58 AFA20010 */   sw        $v0, 0x10($sp)
.L8002FA5C:
/* 17F49C 8002FA5C 8FBF0060 */  lw         $ra, 0x60($sp)
/* 17F4A0 8002FA60 03E00008 */  jr         $ra
/* 17F4A4 8002FA64 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002FA68_17F4A8
/* 17F4A8 8002FA68 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17F4AC 8002FA6C AFBF0060 */  sw         $ra, 0x60($sp)
/* 17F4B0 8002FA70 27A70030 */  addiu      $a3, $sp, 0x30
/* 17F4B4 8002FA74 3C068005 */  lui        $a2, %hi(D_80050CF8)
/* 17F4B8 8002FA78 24C60CF8 */  addiu      $a2, $a2, %lo(D_80050CF8)
/* 17F4BC 8002FA7C 24C80020 */  addiu      $t0, $a2, 0x20
.L8002FA80:
/* 17F4C0 8002FA80 8CC20000 */  lw         $v0, ($a2)
/* 17F4C4 8002FA84 8CC30004 */  lw         $v1, 4($a2)
/* 17F4C8 8002FA88 8CC40008 */  lw         $a0, 8($a2)
/* 17F4CC 8002FA8C 8CC5000C */  lw         $a1, 0xc($a2)
/* 17F4D0 8002FA90 ACE20000 */  sw         $v0, ($a3)
/* 17F4D4 8002FA94 ACE30004 */  sw         $v1, 4($a3)
/* 17F4D8 8002FA98 ACE40008 */  sw         $a0, 8($a3)
/* 17F4DC 8002FA9C ACE5000C */  sw         $a1, 0xc($a3)
/* 17F4E0 8002FAA0 24C60010 */  addiu      $a2, $a2, 0x10
/* 17F4E4 8002FAA4 14C8FFF6 */  bne        $a2, $t0, .L8002FA80
/* 17F4E8 8002FAA8 24E70010 */   addiu     $a3, $a3, 0x10
/* 17F4EC 8002FAAC 8CC20000 */  lw         $v0, ($a2)
/* 17F4F0 8002FAB0 8CC30004 */  lw         $v1, 4($a2)
/* 17F4F4 8002FAB4 8CC40008 */  lw         $a0, 8($a2)
/* 17F4F8 8002FAB8 ACE20000 */  sw         $v0, ($a3)
/* 17F4FC 8002FABC ACE30004 */  sw         $v1, 4($a3)
/* 17F500 8002FAC0 ACE40008 */  sw         $a0, 8($a3)
/* 17F504 8002FAC4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F508 8002FAC8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F50C 8002FACC 14400020 */  bnez       $v0, .L8002FB50
/* 17F510 8002FAD0 00000000 */   nop
/* 17F514 8002FAD4 8FA20040 */  lw         $v0, 0x40($sp)
/* 17F518 8002FAD8 8FA30044 */  lw         $v1, 0x44($sp)
/* 17F51C 8002FADC 8FA40048 */  lw         $a0, 0x48($sp)
/* 17F520 8002FAE0 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17F524 8002FAE4 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F528 8002FAE8 AFA30014 */  sw         $v1, 0x14($sp)
/* 17F52C 8002FAEC AFA40018 */  sw         $a0, 0x18($sp)
/* 17F530 8002FAF0 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17F534 8002FAF4 8FA20050 */  lw         $v0, 0x50($sp)
/* 17F538 8002FAF8 8FA30054 */  lw         $v1, 0x54($sp)
/* 17F53C 8002FAFC 8FA40058 */  lw         $a0, 0x58($sp)
/* 17F540 8002FB00 AFA20020 */  sw         $v0, 0x20($sp)
/* 17F544 8002FB04 AFA30024 */  sw         $v1, 0x24($sp)
/* 17F548 8002FB08 AFA40028 */  sw         $a0, 0x28($sp)
/* 17F54C 8002FB0C 8FA40030 */  lw         $a0, 0x30($sp)
/* 17F550 8002FB10 8FA50034 */  lw         $a1, 0x34($sp)
/* 17F554 8002FB14 8FA60038 */  lw         $a2, 0x38($sp)
/* 17F558 8002FB18 0C0099F7 */  jal        func_800267DC_17621C
/* 17F55C 8002FB1C 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17F560 8002FB20 24040050 */  addiu      $a0, $zero, 0x50
/* 17F564 8002FB24 24050050 */  addiu      $a1, $zero, 0x50
/* 17F568 8002FB28 24060050 */  addiu      $a2, $zero, 0x50
/* 17F56C 8002FB2C 240700FF */  addiu      $a3, $zero, 0xff
/* 17F570 8002FB30 240200FF */  addiu      $v0, $zero, 0xff
/* 17F574 8002FB34 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F578 8002FB38 0C027101 */  jal        func_8009C404
/* 17F57C 8002FB3C AFA20014 */   sw        $v0, 0x14($sp)
/* 17F580 8002FB40 0C027224 */  jal        func_8009C890
/* 17F584 8002FB44 00000000 */   nop
/* 17F588 8002FB48 0C026E5D */  jal        func_8009B974
/* 17F58C 8002FB4C 24040005 */   addiu     $a0, $zero, 5
.L8002FB50:
/* 17F590 8002FB50 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17F594 8002FB54 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17F598 8002FB58 24020001 */  addiu      $v0, $zero, 1
/* 17F59C 8002FB5C 14620007 */  bne        $v1, $v0, .L8002FB7C
/* 17F5A0 8002FB60 24020064 */   addiu     $v0, $zero, 0x64
/* 17F5A4 8002FB64 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F5A8 8002FB68 240400A9 */  addiu      $a0, $zero, 0xa9
/* 17F5AC 8002FB6C 24050080 */  addiu      $a1, $zero, 0x80
/* 17F5B0 8002FB70 24060080 */  addiu      $a2, $zero, 0x80
/* 17F5B4 8002FB74 0C026E0C */  jal        func_8009B830
/* 17F5B8 8002FB78 24070001 */   addiu     $a3, $zero, 1
.L8002FB7C:
/* 17F5BC 8002FB7C 0C0099DA */  jal        func_80026768_1761A8
/* 17F5C0 8002FB80 2404001E */   addiu     $a0, $zero, 0x1e
/* 17F5C4 8002FB84 10400006 */  beqz       $v0, .L8002FBA0
/* 17F5C8 8002FB88 2404FFFE */   addiu     $a0, $zero, -2
/* 17F5CC 8002FB8C AFA00010 */  sw         $zero, 0x10($sp)
/* 17F5D0 8002FB90 2405FFFF */  addiu      $a1, $zero, -1
/* 17F5D4 8002FB94 2406001E */  addiu      $a2, $zero, 0x1e
/* 17F5D8 8002FB98 0C026C9A */  jal        func_8009B268
/* 17F5DC 8002FB9C 00003821 */   addu      $a3, $zero, $zero
.L8002FBA0:
/* 17F5E0 8002FBA0 8FBF0060 */  lw         $ra, 0x60($sp)
/* 17F5E4 8002FBA4 03E00008 */  jr         $ra
/* 17F5E8 8002FBA8 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002FBAC_17F5EC
/* 17F5EC 8002FBAC 3C028004 */  lui        $v0, %hi(D_800471E0)
/* 17F5F0 8002FBB0 904271E0 */  lbu        $v0, %lo(D_800471E0)($v0)
/* 17F5F4 8002FBB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17F5F8 8002FBB8 10400024 */  beqz       $v0, .L8002FC4C
/* 17F5FC 8002FBBC AFBF0010 */   sw        $ra, 0x10($sp)
/* 17F600 8002FBC0 0C009758 */  jal        func_80025D60_1757A0
/* 17F604 8002FBC4 00000000 */   nop
/* 17F608 8002FBC8 0C02A5D2 */  jal        func_800A9748
/* 17F60C 8002FBCC 24040001 */   addiu     $a0, $zero, 1
/* 17F610 8002FBD0 3C018004 */  lui        $at, %hi(D_800471E0)
/* 17F614 8002FBD4 A02071E0 */  sb         $zero, %lo(D_800471E0)($at)
/* 17F618 8002FBD8 3C018005 */  lui        $at, %hi(D_80052060)
/* 17F61C 8002FBDC A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17F620 8002FBE0 0C032663 */  jal        func_800C998C
/* 17F624 8002FBE4 24040028 */   addiu     $a0, $zero, 0x28
/* 17F628 8002FBE8 00402021 */  addu       $a0, $v0, $zero
/* 17F62C 8002FBEC 3C018005 */  lui        $at, %hi(D_80052214)
/* 17F630 8002FBF0 AC242214 */  sw         $a0, %lo(D_80052214)($at)
/* 17F634 8002FBF4 0C030134 */  jal        bzero
/* 17F638 8002FBF8 24050028 */   addiu     $a1, $zero, 0x28
/* 17F63C 8002FBFC 0C029375 */  jal        func_800A4DD4
/* 17F640 8002FC00 00000000 */   nop
/* 17F644 8002FC04 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17F648 8002FC08 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17F64C 8002FC0C 00002821 */  addu       $a1, $zero, $zero
/* 17F650 8002FC10 3C018005 */  lui        $at, %hi(D_80052224)
/* 17F654 8002FC14 AC222224 */  sw         $v0, %lo(D_80052224)($at)
/* 17F658 8002FC18 24020001 */  addiu      $v0, $zero, 1
/* 17F65C 8002FC1C 3C018005 */  lui        $at, %hi(D_80052006)
/* 17F660 8002FC20 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17F664 8002FC24 2402000A */  addiu      $v0, $zero, 0xa
/* 17F668 8002FC28 3C018005 */  lui        $at, %hi(D_80052061)
/* 17F66C 8002FC2C A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17F670 8002FC30 3C028004 */  lui        $v0, %hi(D_800471B0)
/* 17F674 8002FC34 244271B0 */  addiu      $v0, $v0, %lo(D_800471B0)
/* 17F678 8002FC38 2406012C */  addiu      $a2, $zero, 0x12c
/* 17F67C 8002FC3C 3C018005 */  lui        $at, %hi(D_80052000)
/* 17F680 8002FC40 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17F684 8002FC44 0C025D06 */  jal        func_80097418
/* 17F688 8002FC48 00003821 */   addu      $a3, $zero, $zero
.L8002FC4C:
/* 17F68C 8002FC4C 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17F690 8002FC50 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17F694 8002FC54 24020001 */  addiu      $v0, $zero, 1
/* 17F698 8002FC58 1462000B */  bne        $v1, $v0, .L8002FC88
/* 17F69C 8002FC5C 00001021 */   addu      $v0, $zero, $zero
/* 17F6A0 8002FC60 3C048005 */  lui        $a0, %hi(D_80052214)
/* 17F6A4 8002FC64 8C842214 */  lw         $a0, %lo(D_80052214)($a0)
/* 17F6A8 8002FC68 24020001 */  addiu      $v0, $zero, 1
/* 17F6AC 8002FC6C 3C018004 */  lui        $at, %hi(D_800471E0)
/* 17F6B0 8002FC70 0C0326A1 */  jal        func_800C9A84
/* 17F6B4 8002FC74 A02271E0 */   sb        $v0, %lo(D_800471E0)($at)
/* 17F6B8 8002FC78 3C048005 */  lui        $a0, %hi(D_80052224)
/* 17F6BC 8002FC7C 0C029393 */  jal        func_800A4E4C
/* 17F6C0 8002FC80 8C842224 */   lw        $a0, %lo(D_80052224)($a0)
/* 17F6C4 8002FC84 24020001 */  addiu      $v0, $zero, 1
.L8002FC88:
/* 17F6C8 8002FC88 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17F6CC 8002FC8C 03E00008 */  jr         $ra
/* 17F6D0 8002FC90 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17F6D4 8002FC94 00000000 */  nop
/* 17F6D8 8002FC98 00000000 */  nop
/* 17F6DC 8002FC9C 00000000 */  nop
