.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002FCA0_17F6E0
/* 17F6E0 8002FCA0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F6E4 8002FCA4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F6E8 8002FCA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17F6EC 8002FCAC 14400015 */  bnez       $v0, .L8002FD04
/* 17F6F0 8002FCB0 AFBF0018 */   sw        $ra, 0x18($sp)
/* 17F6F4 8002FCB4 240400AA */  addiu      $a0, $zero, 0xaa
/* 17F6F8 8002FCB8 24050060 */  addiu      $a1, $zero, 0x60
/* 17F6FC 8002FCBC 24060080 */  addiu      $a2, $zero, 0x80
/* 17F700 8002FCC0 24070001 */  addiu      $a3, $zero, 1
/* 17F704 8002FCC4 24020062 */  addiu      $v0, $zero, 0x62
/* 17F708 8002FCC8 0C026E0C */  jal        func_8009B830
/* 17F70C 8002FCCC AFA20010 */   sw        $v0, 0x10($sp)
/* 17F710 8002FCD0 240400AB */  addiu      $a0, $zero, 0xab
/* 17F714 8002FCD4 24050060 */  addiu      $a1, $zero, 0x60
/* 17F718 8002FCD8 3C038005 */  lui        $v1, %hi(D_80052244)
/* 17F71C 8002FCDC 8C632244 */  lw         $v1, %lo(D_80052244)($v1)
/* 17F720 8002FCE0 24060080 */  addiu      $a2, $zero, 0x80
/* 17F724 8002FCE4 24070001 */  addiu      $a3, $zero, 1
/* 17F728 8002FCE8 AC620000 */  sw         $v0, ($v1)
/* 17F72C 8002FCEC 24020063 */  addiu      $v0, $zero, 0x63
/* 17F730 8002FCF0 0C026E0C */  jal        func_8009B830
/* 17F734 8002FCF4 AFA20010 */   sw        $v0, 0x10($sp)
/* 17F738 8002FCF8 3C038005 */  lui        $v1, %hi(D_80052244)
/* 17F73C 8002FCFC 8C632244 */  lw         $v1, %lo(D_80052244)($v1)
/* 17F740 8002FD00 AC620004 */  sw         $v0, 4($v1)
.L8002FD04:
/* 17F744 8002FD04 0C02591A */  jal        func_80096468
/* 17F748 8002FD08 2404000F */   addiu     $a0, $zero, 0xf
/* 17F74C 8002FD0C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17F750 8002FD10 03E00008 */  jr         $ra
/* 17F754 8002FD14 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002FD18_17F758
/* 17F758 8002FD18 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17F75C 8002FD1C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17F760 8002FD20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17F764 8002FD24 240200F0 */  addiu      $v0, $zero, 0xf0
/* 17F768 8002FD28 10620016 */  beq        $v1, $v0, .L8002FD84
/* 17F76C 8002FD2C AFBF0018 */   sw        $ra, 0x18($sp)
/* 17F770 8002FD30 286200F1 */  slti       $v0, $v1, 0xf1
/* 17F774 8002FD34 50400005 */  beql       $v0, $zero, .L8002FD4C
/* 17F778 8002FD38 24020168 */   addiu     $v0, $zero, 0x168
/* 17F77C 8002FD3C 10600007 */  beqz       $v1, .L8002FD5C
/* 17F780 8002FD40 2404011B */   addiu     $a0, $zero, 0x11b
/* 17F784 8002FD44 0800BF6E */  j          .L8002FDB8
/* 17F788 8002FD48 00000000 */   nop
.L8002FD4C:
/* 17F78C 8002FD4C 10620014 */  beq        $v1, $v0, .L8002FDA0
/* 17F790 8002FD50 24020064 */   addiu     $v0, $zero, 0x64
/* 17F794 8002FD54 0800BF6E */  j          .L8002FDB8
/* 17F798 8002FD58 00000000 */   nop
.L8002FD5C:
/* 17F79C 8002FD5C 24050080 */  addiu      $a1, $zero, 0x80
/* 17F7A0 8002FD60 24060080 */  addiu      $a2, $zero, 0x80
/* 17F7A4 8002FD64 24070001 */  addiu      $a3, $zero, 1
/* 17F7A8 8002FD68 24020064 */  addiu      $v0, $zero, 0x64
/* 17F7AC 8002FD6C 0C026E0C */  jal        func_8009B830
/* 17F7B0 8002FD70 AFA20010 */   sw        $v0, 0x10($sp)
/* 17F7B4 8002FD74 3C038005 */  lui        $v1, %hi(D_80052244)
/* 17F7B8 8002FD78 8C632244 */  lw         $v1, %lo(D_80052244)($v1)
/* 17F7BC 8002FD7C 0800BF6E */  j          .L8002FDB8
/* 17F7C0 8002FD80 AC620008 */   sw        $v0, 8($v1)
.L8002FD84:
/* 17F7C4 8002FD84 3C028005 */  lui        $v0, %hi(D_80052244)
/* 17F7C8 8002FD88 8C422244 */  lw         $v0, %lo(D_80052244)($v0)
/* 17F7CC 8002FD8C 8C440008 */  lw         $a0, 8($v0)
/* 17F7D0 8002FD90 0C026E46 */  jal        func_8009B918
/* 17F7D4 8002FD94 24050096 */   addiu     $a1, $zero, 0x96
/* 17F7D8 8002FD98 0800BF6E */  j          .L8002FDB8
/* 17F7DC 8002FD9C 00000000 */   nop
.L8002FDA0:
/* 17F7E0 8002FDA0 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F7E4 8002FDA4 2404010D */  addiu      $a0, $zero, 0x10d
/* 17F7E8 8002FDA8 24050080 */  addiu      $a1, $zero, 0x80
/* 17F7EC 8002FDAC 24060080 */  addiu      $a2, $zero, 0x80
/* 17F7F0 8002FDB0 0C026E0C */  jal        func_8009B830
/* 17F7F4 8002FDB4 24070001 */   addiu     $a3, $zero, 1
.L8002FDB8:
/* 17F7F8 8002FDB8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17F7FC 8002FDBC 03E00008 */  jr         $ra
/* 17F800 8002FDC0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002FDC4_17F804
/* 17F804 8002FDC4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17F808 8002FDC8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17F80C 8002FDCC 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17F810 8002FDD0 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17F814 8002FDD4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 17F818 8002FDD8 2407000A */  addiu      $a3, $zero, 0xa
/* 17F81C 8002FDDC AFB00030 */  sw         $s0, 0x30($sp)
/* 17F820 8002FDE0 00008021 */  addu       $s0, $zero, $zero
/* 17F824 8002FDE4 AFBF003C */  sw         $ra, 0x3c($sp)
/* 17F828 8002FDE8 AFB20038 */  sw         $s2, 0x38($sp)
/* 17F82C 8002FDEC AFB10034 */  sw         $s1, 0x34($sp)
/* 17F830 8002FDF0 2452FFC4 */  addiu      $s2, $v0, -0x3c
/* 17F834 8002FDF4 8C62002C */  lw         $v0, 0x2c($v1)
/* 17F838 8002FDF8 3C088005 */  lui        $t0, %hi(D_80052038)
/* 17F83C 8002FDFC 95082038 */  lhu        $t0, %lo(D_80052038)($t0)
/* 17F840 8002FE00 3C068005 */  lui        $a2, %hi(D_80050D24)
/* 17F844 8002FE04 24C60D24 */  addiu      $a2, $a2, %lo(D_80050D24)
/* 17F848 8002FE08 88C30000 */  lwl        $v1, ($a2)
/* 17F84C 8002FE0C 98C30003 */  lwr        $v1, 3($a2)
/* 17F850 8002FE10 88C40004 */  lwl        $a0, 4($a2)
/* 17F854 8002FE14 98C40007 */  lwr        $a0, 7($a2)
/* 17F858 8002FE18 88C50008 */  lwl        $a1, 8($a2)
/* 17F85C 8002FE1C 98C5000B */  lwr        $a1, 0xb($a2)
/* 17F860 8002FE20 ABA30018 */  swl        $v1, 0x18($sp)
/* 17F864 8002FE24 BBA3001B */  swr        $v1, 0x1b($sp)
/* 17F868 8002FE28 ABA4001C */  swl        $a0, 0x1c($sp)
/* 17F86C 8002FE2C BBA4001F */  swr        $a0, 0x1f($sp)
/* 17F870 8002FE30 ABA50020 */  swl        $a1, 0x20($sp)
/* 17F874 8002FE34 BBA50023 */  swr        $a1, 0x23($sp)
/* 17F878 8002FE38 88C3000C */  lwl        $v1, 0xc($a2)
/* 17F87C 8002FE3C 98C3000F */  lwr        $v1, 0xf($a2)
/* 17F880 8002FE40 88C40010 */  lwl        $a0, 0x10($a2)
/* 17F884 8002FE44 98C40013 */  lwr        $a0, 0x13($a2)
/* 17F888 8002FE48 ABA30024 */  swl        $v1, 0x24($sp)
/* 17F88C 8002FE4C BBA30027 */  swr        $v1, 0x27($sp)
/* 17F890 8002FE50 ABA40028 */  swl        $a0, 0x28($sp)
/* 17F894 8002FE54 BBA4002B */  swr        $a0, 0x2b($sp)
/* 17F898 8002FE58 15000012 */  bnez       $t0, .L8002FEA4
/* 17F89C 8002FE5C 24510018 */   addiu     $s1, $v0, 0x18
/* 17F8A0 8002FE60 3C068005 */  lui        $a2, %hi(D_80052000)
/* 17F8A4 8002FE64 8CC62000 */  lw         $a2, %lo(D_80052000)($a2)
/* 17F8A8 8002FE68 94C2000E */  lhu        $v0, 0xe($a2)
/* 17F8AC 8002FE6C 8CC4002C */  lw         $a0, 0x2c($a2)
/* 17F8B0 8002FE70 0102102B */  sltu       $v0, $t0, $v0
/* 17F8B4 8002FE74 1040000B */  beqz       $v0, .L8002FEA4
/* 17F8B8 8002FE78 00002821 */   addu      $a1, $zero, $zero
.L8002FE7C:
/* 17F8BC 8002FE7C 8C830000 */  lw         $v1, ($a0)
/* 17F8C0 8002FE80 9462001E */  lhu        $v0, 0x1e($v1)
/* 17F8C4 8002FE84 24A50001 */  addiu      $a1, $a1, 1
/* 17F8C8 8002FE88 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 17F8CC 8002FE8C A462001E */  sh         $v0, 0x1e($v1)
/* 17F8D0 8002FE90 94C3000E */  lhu        $v1, 0xe($a2)
/* 17F8D4 8002FE94 30A200FF */  andi       $v0, $a1, 0xff
/* 17F8D8 8002FE98 0043102B */  sltu       $v0, $v0, $v1
/* 17F8DC 8002FE9C 1440FFF7 */  bnez       $v0, .L8002FE7C
/* 17F8E0 8002FEA0 2484000C */   addiu     $a0, $a0, 0xc
.L8002FEA4:
/* 17F8E4 8002FEA4 3C048005 */  lui        $a0, %hi(D_80052038)
/* 17F8E8 8002FEA8 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 17F8EC 8002FEAC 30E300FF */  andi       $v1, $a3, 0xff
/* 17F8F0 8002FEB0 320200FF */  andi       $v0, $s0, 0xff
/* 17F8F4 8002FEB4 2C420005 */  sltiu      $v0, $v0, 5
/* 17F8F8 8002FEB8 0064182B */  sltu       $v1, $v1, $a0
/* 17F8FC 8002FEBC 00621824 */  and        $v1, $v1, $v0
/* 17F900 8002FEC0 1060000A */  beqz       $v1, .L8002FEEC
/* 17F904 8002FEC4 00000000 */   nop
.L8002FEC8:
/* 17F908 8002FEC8 26100001 */  addiu      $s0, $s0, 1
/* 17F90C 8002FECC 24E70005 */  addiu      $a3, $a3, 5
/* 17F910 8002FED0 30E300FF */  andi       $v1, $a3, 0xff
/* 17F914 8002FED4 0064182B */  sltu       $v1, $v1, $a0
/* 17F918 8002FED8 320200FF */  andi       $v0, $s0, 0xff
/* 17F91C 8002FEDC 2C420005 */  sltiu      $v0, $v0, 5
/* 17F920 8002FEE0 00621824 */  and        $v1, $v1, $v0
/* 17F924 8002FEE4 1460FFF8 */  bnez       $v1, .L8002FEC8
/* 17F928 8002FEE8 2631000C */   addiu     $s1, $s1, 0xc
.L8002FEEC:
/* 17F92C 8002FEEC 8E240000 */  lw         $a0, ($s1)
/* 17F930 8002FEF0 0C028A40 */  jal        func_800A2900
/* 17F934 8002FEF4 2631000C */   addiu     $s1, $s1, 0xc
/* 17F938 8002FEF8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17F93C 8002FEFC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17F940 8002FF00 2402003C */  addiu      $v0, $zero, 0x3c
/* 17F944 8002FF04 1062001B */  beq        $v1, $v0, .L8002FF74
/* 17F948 8002FF08 2862003D */   slti      $v0, $v1, 0x3d
/* 17F94C 8002FF0C 50400005 */  beql       $v0, $zero, .L8002FF24
/* 17F950 8002FF10 24020096 */   addiu     $v0, $zero, 0x96
/* 17F954 8002FF14 50600007 */  beql       $v1, $zero, .L8002FF34
/* 17F958 8002FF18 00008021 */   addu      $s0, $zero, $zero
/* 17F95C 8002FF1C 0800BFF1 */  j          .L8002FFC4
/* 17F960 8002FF20 320300FF */   andi      $v1, $s0, 0xff
.L8002FF24:
/* 17F964 8002FF24 1062001C */  beq        $v1, $v0, .L8002FF98
/* 17F968 8002FF28 320300FF */   andi      $v1, $s0, 0xff
/* 17F96C 8002FF2C 0800BFF1 */  j          .L8002FFC4
/* 17F970 8002FF30 00000000 */   nop
.L8002FF34:
/* 17F974 8002FF34 320300FF */  andi       $v1, $s0, 0xff
.L8002FF38:
/* 17F978 8002FF38 00031040 */  sll        $v0, $v1, 1
/* 17F97C 8002FF3C 00431021 */  addu       $v0, $v0, $v1
/* 17F980 8002FF40 00021080 */  sll        $v0, $v0, 2
/* 17F984 8002FF44 00511021 */  addu       $v0, $v0, $s1
/* 17F988 8002FF48 8C430000 */  lw         $v1, ($v0)
/* 17F98C 8002FF4C 9462001E */  lhu        $v0, 0x1e($v1)
/* 17F990 8002FF50 26100001 */  addiu      $s0, $s0, 1
/* 17F994 8002FF54 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 17F998 8002FF58 A462001E */  sh         $v0, 0x1e($v1)
/* 17F99C 8002FF5C 320200FF */  andi       $v0, $s0, 0xff
/* 17F9A0 8002FF60 2C420003 */  sltiu      $v0, $v0, 3
/* 17F9A4 8002FF64 1440FFF4 */  bnez       $v0, .L8002FF38
/* 17F9A8 8002FF68 320300FF */   andi      $v1, $s0, 0xff
/* 17F9AC 8002FF6C 0800BFF2 */  j          .L8002FFC8
/* 17F9B0 8002FF70 24020005 */   addiu     $v0, $zero, 5
.L8002FF74:
/* 17F9B4 8002FF74 24020064 */  addiu      $v0, $zero, 0x64
/* 17F9B8 8002FF78 AFA20010 */  sw         $v0, 0x10($sp)
/* 17F9BC 8002FF7C 2404010E */  addiu      $a0, $zero, 0x10e
/* 17F9C0 8002FF80 24050080 */  addiu      $a1, $zero, 0x80
/* 17F9C4 8002FF84 24060080 */  addiu      $a2, $zero, 0x80
/* 17F9C8 8002FF88 0C026E0C */  jal        func_8009B830
/* 17F9CC 8002FF8C 24070001 */   addiu     $a3, $zero, 1
/* 17F9D0 8002FF90 0800BFF1 */  j          .L8002FFC4
/* 17F9D4 8002FF94 320300FF */   andi      $v1, $s0, 0xff
.L8002FF98:
/* 17F9D8 8002FF98 3C028005 */  lui        $v0, %hi(D_80052244)
/* 17F9DC 8002FF9C 8C422244 */  lw         $v0, %lo(D_80052244)($v0)
/* 17F9E0 8002FFA0 8C440000 */  lw         $a0, ($v0)
/* 17F9E4 8002FFA4 0C026E46 */  jal        func_8009B918
/* 17F9E8 8002FFA8 24050078 */   addiu     $a1, $zero, 0x78
/* 17F9EC 8002FFAC 3C028005 */  lui        $v0, %hi(D_80052244)
/* 17F9F0 8002FFB0 8C422244 */  lw         $v0, %lo(D_80052244)($v0)
/* 17F9F4 8002FFB4 8C440004 */  lw         $a0, 4($v0)
/* 17F9F8 8002FFB8 0C026E46 */  jal        func_8009B918
/* 17F9FC 8002FFBC 24050078 */   addiu     $a1, $zero, 0x78
/* 17FA00 8002FFC0 320300FF */  andi       $v1, $s0, 0xff
.L8002FFC4:
/* 17FA04 8002FFC4 24020005 */  addiu      $v0, $zero, 5
.L8002FFC8:
/* 17FA08 8002FFC8 14620014 */  bne        $v1, $v0, .L8003001C
/* 17FA0C 8002FFCC 2642FFFF */   addiu     $v0, $s2, -1
/* 17FA10 8002FFD0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 17FA14 8002FFD4 2C42004F */  sltiu      $v0, $v0, 0x4f
/* 17FA18 8002FFD8 1040000D */  beqz       $v0, .L80030010
/* 17FA1C 8002FFDC 00121400 */   sll       $v0, $s2, 0x10
/* 17FA20 8002FFE0 00021403 */  sra        $v0, $v0, 0x10
/* 17FA24 8002FFE4 04420001 */  bltzl      $v0, .L8002FFEC
/* 17FA28 8002FFE8 24420003 */   addiu     $v0, $v0, 3
.L8002FFEC:
/* 17FA2C 8002FFEC 00021083 */  sra        $v0, $v0, 2
/* 17FA30 8002FFF0 03A21021 */  addu       $v0, $sp, $v0
/* 17FA34 8002FFF4 90430018 */  lbu        $v1, 0x18($v0)
/* 17FA38 8002FFF8 00031040 */  sll        $v0, $v1, 1
/* 17FA3C 8002FFFC 00431021 */  addu       $v0, $v0, $v1
/* 17FA40 80030000 00021080 */  sll        $v0, $v0, 2
/* 17FA44 80030004 00511021 */  addu       $v0, $v0, $s1
/* 17FA48 80030008 0800C005 */  j          .L80030014
/* 17FA4C 8003000C 8C440000 */   lw        $a0, ($v0)
.L80030010:
/* 17FA50 80030010 8E240000 */  lw         $a0, ($s1)
.L80030014:
/* 17FA54 80030014 0C028A40 */  jal        func_800A2900
/* 17FA58 80030018 00000000 */   nop
.L8003001C:
/* 17FA5C 8003001C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 17FA60 80030020 8FB20038 */  lw         $s2, 0x38($sp)
/* 17FA64 80030024 8FB10034 */  lw         $s1, 0x34($sp)
/* 17FA68 80030028 8FB00030 */  lw         $s0, 0x30($sp)
/* 17FA6C 8003002C 03E00008 */  jr         $ra
/* 17FA70 80030030 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80030034_17FA74
/* 17FA74 80030034 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17FA78 80030038 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17FA7C 8003003C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17FA80 80030040 14400003 */  bnez       $v0, .L80030050
/* 17FA84 80030044 AFBF0010 */   sw        $ra, 0x10($sp)
/* 17FA88 80030048 0C0099DA */  jal        func_80026768_1761A8
/* 17FA8C 8003004C 00002021 */   addu      $a0, $zero, $zero
.L80030050:
/* 17FA90 80030050 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17FA94 80030054 03E00008 */  jr         $ra
/* 17FA98 80030058 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003005C_17FA9C
/* 17FA9C 8003005C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17FAA0 80030060 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17FAA4 80030064 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17FAA8 80030068 10600006 */  beqz       $v1, .L80030084
/* 17FAAC 8003006C AFBF0018 */   sw        $ra, 0x18($sp)
/* 17FAB0 80030070 240200F0 */  addiu      $v0, $zero, 0xf0
/* 17FAB4 80030074 1062000E */  beq        $v1, $v0, .L800300B0
/* 17FAB8 80030078 00000000 */   nop
/* 17FABC 8003007C 0800C031 */  j          .L800300C4
/* 17FAC0 80030080 00000000 */   nop
.L80030084:
/* 17FAC4 80030084 240400AC */  addiu      $a0, $zero, 0xac
/* 17FAC8 80030088 24050060 */  addiu      $a1, $zero, 0x60
/* 17FACC 8003008C 24020064 */  addiu      $v0, $zero, 0x64
/* 17FAD0 80030090 24060080 */  addiu      $a2, $zero, 0x80
/* 17FAD4 80030094 24070001 */  addiu      $a3, $zero, 1
/* 17FAD8 80030098 0C026E0C */  jal        func_8009B830
/* 17FADC 8003009C AFA20010 */   sw        $v0, 0x10($sp)
/* 17FAE0 800300A0 3C038005 */  lui        $v1, %hi(D_80052244)
/* 17FAE4 800300A4 8C632244 */  lw         $v1, %lo(D_80052244)($v1)
/* 17FAE8 800300A8 0800C031 */  j          .L800300C4
/* 17FAEC 800300AC AC62000C */   sw        $v0, 0xc($v1)
.L800300B0:
/* 17FAF0 800300B0 3C028005 */  lui        $v0, %hi(D_80052244)
/* 17FAF4 800300B4 8C422244 */  lw         $v0, %lo(D_80052244)($v0)
/* 17FAF8 800300B8 8C44000C */  lw         $a0, 0xc($v0)
/* 17FAFC 800300BC 0C026E46 */  jal        func_8009B918
/* 17FB00 800300C0 24050078 */   addiu     $a1, $zero, 0x78
.L800300C4:
/* 17FB04 800300C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17FB08 800300C8 03E00008 */  jr         $ra
/* 17FB0C 800300CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800300D0_17FB10
/* 17FB10 800300D0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17FB14 800300D4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17FB18 800300D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17FB1C 800300DC 14400009 */  bnez       $v0, .L80030104
/* 17FB20 800300E0 AFBF0018 */   sw        $ra, 0x18($sp)
/* 17FB24 800300E4 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17FB28 800300E8 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17FB2C 800300EC 240200C0 */  addiu      $v0, $zero, 0xc0
/* 17FB30 800300F0 24050010 */  addiu      $a1, $zero, 0x10
/* 17FB34 800300F4 24060030 */  addiu      $a2, $zero, 0x30
/* 17FB38 800300F8 24070130 */  addiu      $a3, $zero, 0x130
/* 17FB3C 800300FC 0C02939C */  jal        func_800A4E70
/* 17FB40 80030100 AFA20010 */   sw        $v0, 0x10($sp)
.L80030104:
/* 17FB44 80030104 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17FB48 80030108 03E00008 */  jr         $ra
/* 17FB4C 8003010C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80030110_17FB50
/* 17FB50 80030110 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17FB54 80030114 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17FB58 80030118 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17FB5C 8003011C AFBF0020 */  sw         $ra, 0x20($sp)
/* 17FB60 80030120 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17FB64 80030124 AFB00018 */  sw         $s0, 0x18($sp)
/* 17FB68 80030128 8C42002C */  lw         $v0, 0x2c($v0)
/* 17FB6C 8003012C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17FB70 80030130 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17FB74 80030134 1460000C */  bnez       $v1, .L80030168
/* 17FB78 80030138 24510024 */   addiu     $s1, $v0, 0x24
/* 17FB7C 8003013C 24050010 */  addiu      $a1, $zero, 0x10
/* 17FB80 80030140 24060030 */  addiu      $a2, $zero, 0x30
/* 17FB84 80030144 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17FB88 80030148 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17FB8C 8003014C 24070130 */  addiu      $a3, $zero, 0x130
/* 17FB90 80030150 240200C0 */  addiu      $v0, $zero, 0xc0
/* 17FB94 80030154 0C02939C */  jal        func_800A4E70
/* 17FB98 80030158 AFA20010 */   sw        $v0, 0x10($sp)
/* 17FB9C 8003015C 240200FF */  addiu      $v0, $zero, 0xff
/* 17FBA0 80030160 3C018005 */  lui        $at, %hi(D_80051EC0)
/* 17FBA4 80030164 A0221EC0 */  sb         $v0, %lo(D_80051EC0)($at)
.L80030168:
/* 17FBA8 80030168 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17FBAC 8003016C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17FBB0 80030170 2442FFA5 */  addiu      $v0, $v0, -0x5b
/* 17FBB4 80030174 2C42001E */  sltiu      $v0, $v0, 0x1e
/* 17FBB8 80030178 1040000B */  beqz       $v0, .L800301A8
/* 17FBBC 8003017C 00000000 */   nop
/* 17FBC0 80030180 3C038005 */  lui        $v1, %hi(D_80051EC0)
/* 17FBC4 80030184 90631EC0 */  lbu        $v1, %lo(D_80051EC0)($v1)
/* 17FBC8 80030188 2C620008 */  sltiu      $v0, $v1, 8
/* 17FBCC 8003018C 10400004 */  beqz       $v0, .L800301A0
/* 17FBD0 80030190 2462FFF8 */   addiu     $v0, $v1, -8
/* 17FBD4 80030194 3C018005 */  lui        $at, %hi(D_80051EC0)
/* 17FBD8 80030198 0800C06A */  j          .L800301A8
/* 17FBDC 8003019C A0201EC0 */   sb        $zero, %lo(D_80051EC0)($at)
.L800301A0:
/* 17FBE0 800301A0 3C018005 */  lui        $at, %hi(D_80051EC0)
/* 17FBE4 800301A4 A0221EC0 */  sb         $v0, %lo(D_80051EC0)($at)
.L800301A8:
/* 17FBE8 800301A8 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17FBEC 800301AC 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17FBF0 800301B0 2442FF0F */  addiu      $v0, $v0, -0xf1
/* 17FBF4 800301B4 2C42001E */  sltiu      $v0, $v0, 0x1e
/* 17FBF8 800301B8 1040000A */  beqz       $v0, .L800301E4
/* 17FBFC 800301BC 00008021 */   addu      $s0, $zero, $zero
/* 17FC00 800301C0 3C038005 */  lui        $v1, %hi(D_80051EC0)
/* 17FC04 800301C4 90631EC0 */  lbu        $v1, %lo(D_80051EC0)($v1)
/* 17FC08 800301C8 2C6200F8 */  sltiu      $v0, $v1, 0xf8
/* 17FC0C 800301CC 14400002 */  bnez       $v0, .L800301D8
/* 17FC10 800301D0 24620008 */   addiu     $v0, $v1, 8
/* 17FC14 800301D4 240200FF */  addiu      $v0, $zero, 0xff
.L800301D8:
/* 17FC18 800301D8 3C018005 */  lui        $at, %hi(D_80051EC0)
/* 17FC1C 800301DC A0221EC0 */  sb         $v0, %lo(D_80051EC0)($at)
/* 17FC20 800301E0 00008021 */  addu       $s0, $zero, $zero
.L800301E4:
/* 17FC24 800301E4 240500FF */  addiu      $a1, $zero, 0xff
.L800301E8:
/* 17FC28 800301E8 3C028005 */  lui        $v0, %hi(D_80051EC0)
/* 17FC2C 800301EC 90421EC0 */  lbu        $v0, %lo(D_80051EC0)($v0)
/* 17FC30 800301F0 240600FF */  addiu      $a2, $zero, 0xff
/* 17FC34 800301F4 240700FF */  addiu      $a3, $zero, 0xff
/* 17FC38 800301F8 AFA20010 */  sw         $v0, 0x10($sp)
/* 17FC3C 800301FC 8E240000 */  lw         $a0, ($s1)
/* 17FC40 80030200 26100001 */  addiu      $s0, $s0, 1
/* 17FC44 80030204 0C028E41 */  jal        func_800A3904
/* 17FC48 80030208 2631000C */   addiu     $s1, $s1, 0xc
/* 17FC4C 8003020C 320200FF */  andi       $v0, $s0, 0xff
/* 17FC50 80030210 2C420002 */  sltiu      $v0, $v0, 2
/* 17FC54 80030214 1440FFF4 */  bnez       $v0, .L800301E8
/* 17FC58 80030218 240500FF */   addiu     $a1, $zero, 0xff
/* 17FC5C 8003021C 3C028005 */  lui        $v0, %hi(D_80051EC0)
/* 17FC60 80030220 90421EC0 */  lbu        $v0, %lo(D_80051EC0)($v0)
/* 17FC64 80030224 00021027 */  nor        $v0, $zero, $v0
/* 17FC68 80030228 304200FF */  andi       $v0, $v0, 0xff
/* 17FC6C 8003022C AFA20010 */  sw         $v0, 0x10($sp)
/* 17FC70 80030230 8E240000 */  lw         $a0, ($s1)
/* 17FC74 80030234 240600FF */  addiu      $a2, $zero, 0xff
/* 17FC78 80030238 0C028E41 */  jal        func_800A3904
/* 17FC7C 8003023C 240700FF */   addiu     $a3, $zero, 0xff
/* 17FC80 80030240 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17FC84 80030244 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17FC88 80030248 8FB00018 */  lw         $s0, 0x18($sp)
/* 17FC8C 8003024C 03E00008 */  jr         $ra
/* 17FC90 80030250 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80030254_17FC94
/* 17FC94 80030254 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17FC98 80030258 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17FC9C 8003025C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17FCA0 80030260 14400011 */  bnez       $v0, .L800302A8
/* 17FCA4 80030264 AFBF0018 */   sw        $ra, 0x18($sp)
/* 17FCA8 80030268 24040015 */  addiu      $a0, $zero, 0x15
/* 17FCAC 8003026C 2405FFFF */  addiu      $a1, $zero, -1
/* 17FCB0 80030270 00003021 */  addu       $a2, $zero, $zero
/* 17FCB4 80030274 24070050 */  addiu      $a3, $zero, 0x50
/* 17FCB8 80030278 0C026C9A */  jal        func_8009B268
/* 17FCBC 8003027C AFA00010 */   sw        $zero, 0x10($sp)
/* 17FCC0 80030280 24040018 */  addiu      $a0, $zero, 0x18
/* 17FCC4 80030284 24050060 */  addiu      $a1, $zero, 0x60
/* 17FCC8 80030288 24060080 */  addiu      $a2, $zero, 0x80
/* 17FCCC 8003028C 24070001 */  addiu      $a3, $zero, 1
/* 17FCD0 80030290 24020064 */  addiu      $v0, $zero, 0x64
/* 17FCD4 80030294 0C026E0C */  jal        func_8009B830
/* 17FCD8 80030298 AFA20010 */   sw        $v0, 0x10($sp)
/* 17FCDC 8003029C 3C038005 */  lui        $v1, %hi(D_80052244)
/* 17FCE0 800302A0 8C632244 */  lw         $v1, %lo(D_80052244)($v1)
/* 17FCE4 800302A4 AC620010 */  sw         $v0, 0x10($v1)
.L800302A8:
/* 17FCE8 800302A8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17FCEC 800302AC 03E00008 */  jr         $ra
/* 17FCF0 800302B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800302B4_17FCF4
/* 17FCF4 800302B4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17FCF8 800302B8 27A70030 */  addiu      $a3, $sp, 0x30
/* 17FCFC 800302BC 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17FD00 800302C0 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17FD04 800302C4 3C068005 */  lui        $a2, %hi(D_80050D38)
/* 17FD08 800302C8 24C60D38 */  addiu      $a2, $a2, %lo(D_80050D38)
/* 17FD0C 800302CC 24C80020 */  addiu      $t0, $a2, 0x20
/* 17FD10 800302D0 AFBF0064 */  sw         $ra, 0x64($sp)
/* 17FD14 800302D4 AFB00060 */  sw         $s0, 0x60($sp)
/* 17FD18 800302D8 8C500028 */  lw         $s0, 0x28($v0)
.L800302DC:
/* 17FD1C 800302DC 8CC20000 */  lw         $v0, ($a2)
/* 17FD20 800302E0 8CC30004 */  lw         $v1, 4($a2)
/* 17FD24 800302E4 8CC40008 */  lw         $a0, 8($a2)
/* 17FD28 800302E8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17FD2C 800302EC ACE20000 */  sw         $v0, ($a3)
/* 17FD30 800302F0 ACE30004 */  sw         $v1, 4($a3)
/* 17FD34 800302F4 ACE40008 */  sw         $a0, 8($a3)
/* 17FD38 800302F8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17FD3C 800302FC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17FD40 80030300 14C8FFF6 */  bne        $a2, $t0, .L800302DC
/* 17FD44 80030304 24E70010 */   addiu     $a3, $a3, 0x10
/* 17FD48 80030308 8CC20000 */  lw         $v0, ($a2)
/* 17FD4C 8003030C 8CC30004 */  lw         $v1, 4($a2)
/* 17FD50 80030310 8CC40008 */  lw         $a0, 8($a2)
/* 17FD54 80030314 ACE20000 */  sw         $v0, ($a3)
/* 17FD58 80030318 ACE30004 */  sw         $v1, 4($a3)
/* 17FD5C 8003031C ACE40008 */  sw         $a0, 8($a3)
/* 17FD60 80030320 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17FD64 80030324 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17FD68 80030328 24020001 */  addiu      $v0, $zero, 1
/* 17FD6C 8003032C 10620022 */  beq        $v1, $v0, .L800303B8
/* 17FD70 80030330 28620002 */   slti      $v0, $v1, 2
/* 17FD74 80030334 50400005 */  beql       $v0, $zero, .L8003034C
/* 17FD78 80030338 24020078 */   addiu     $v0, $zero, 0x78
/* 17FD7C 8003033C 10600007 */  beqz       $v1, .L8003035C
/* 17FD80 80030340 00000000 */   nop
/* 17FD84 80030344 0800C0FE */  j          .L800303F8
/* 17FD88 80030348 00000000 */   nop
.L8003034C:
/* 17FD8C 8003034C 10620023 */  beq        $v1, $v0, .L800303DC
/* 17FD90 80030350 00000000 */   nop
/* 17FD94 80030354 0800C0FE */  j          .L800303F8
/* 17FD98 80030358 00000000 */   nop
.L8003035C:
/* 17FD9C 8003035C 8FA20040 */  lw         $v0, 0x40($sp)
/* 17FDA0 80030360 8FA30044 */  lw         $v1, 0x44($sp)
/* 17FDA4 80030364 8FA40048 */  lw         $a0, 0x48($sp)
/* 17FDA8 80030368 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17FDAC 8003036C AFA20010 */  sw         $v0, 0x10($sp)
/* 17FDB0 80030370 AFA30014 */  sw         $v1, 0x14($sp)
/* 17FDB4 80030374 AFA40018 */  sw         $a0, 0x18($sp)
/* 17FDB8 80030378 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17FDBC 8003037C 8FA20050 */  lw         $v0, 0x50($sp)
/* 17FDC0 80030380 8FA30054 */  lw         $v1, 0x54($sp)
/* 17FDC4 80030384 8FA40058 */  lw         $a0, 0x58($sp)
/* 17FDC8 80030388 AFA20020 */  sw         $v0, 0x20($sp)
/* 17FDCC 8003038C AFA30024 */  sw         $v1, 0x24($sp)
/* 17FDD0 80030390 AFA40028 */  sw         $a0, 0x28($sp)
/* 17FDD4 80030394 8FA40030 */  lw         $a0, 0x30($sp)
/* 17FDD8 80030398 8FA50034 */  lw         $a1, 0x34($sp)
/* 17FDDC 8003039C 8FA60038 */  lw         $a2, 0x38($sp)
/* 17FDE0 800303A0 0C0099F7 */  jal        func_800267DC_17621C
/* 17FDE4 800303A4 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17FDE8 800303A8 0C026E5D */  jal        func_8009B974
/* 17FDEC 800303AC 24040005 */   addiu     $a0, $zero, 5
/* 17FDF0 800303B0 0800C0FE */  j          .L800303F8
/* 17FDF4 800303B4 00000000 */   nop
.L800303B8:
/* 17FDF8 800303B8 24020064 */  addiu      $v0, $zero, 0x64
/* 17FDFC 800303BC AFA20010 */  sw         $v0, 0x10($sp)
/* 17FE00 800303C0 24040112 */  addiu      $a0, $zero, 0x112
/* 17FE04 800303C4 24050080 */  addiu      $a1, $zero, 0x80
/* 17FE08 800303C8 24060080 */  addiu      $a2, $zero, 0x80
/* 17FE0C 800303CC 0C026E0C */  jal        func_8009B830
/* 17FE10 800303D0 24070001 */   addiu     $a3, $zero, 1
/* 17FE14 800303D4 0800C0FE */  j          .L800303F8
/* 17FE18 800303D8 00000000 */   nop
.L800303DC:
/* 17FE1C 800303DC 3C028005 */  lui        $v0, %hi(D_80052244)
/* 17FE20 800303E0 8C422244 */  lw         $v0, %lo(D_80052244)($v0)
/* 17FE24 800303E4 8C440010 */  lw         $a0, 0x10($v0)
/* 17FE28 800303E8 0C026E46 */  jal        func_8009B918
/* 17FE2C 800303EC 24050078 */   addiu     $a1, $zero, 0x78
/* 17FE30 800303F0 0C026DBB */  jal        func_8009B6EC
/* 17FE34 800303F4 24040078 */   addiu     $a0, $zero, 0x78
.L800303F8:
/* 17FE38 800303F8 C604001C */  lwc1       $f4, 0x1c($s0)
/* 17FE3C 800303FC 3C013D23 */  lui        $at, 0x3d23
/* 17FE40 80030400 3421D70A */  ori        $at, $at, 0xd70a
/* 17FE44 80030404 44810000 */  mtc1       $at, $f0
/* 17FE48 80030408 C6020094 */  lwc1       $f2, 0x94($s0)
/* 17FE4C 8003040C 46002101 */  sub.s      $f4, $f4, $f0
/* 17FE50 80030410 3C013CA3 */  lui        $at, 0x3ca3
/* 17FE54 80030414 3421D70A */  ori        $at, $at, 0xd70a
/* 17FE58 80030418 44810000 */  mtc1       $at, $f0
/* 17FE5C 8003041C 00000000 */  nop
/* 17FE60 80030420 46001080 */  add.s      $f2, $f2, $f0
/* 17FE64 80030424 E604001C */  swc1       $f4, 0x1c($s0)
/* 17FE68 80030428 E6020094 */  swc1       $f2, 0x94($s0)
/* 17FE6C 8003042C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17FE70 80030430 8FB00060 */  lw         $s0, 0x60($sp)
/* 17FE74 80030434 03E00008 */  jr         $ra
/* 17FE78 80030438 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8003043C_17FE7C
/* 17FE7C 8003043C 3C028004 */  lui        $v0, %hi(D_80047A44)
/* 17FE80 80030440 90427A44 */  lbu        $v0, %lo(D_80047A44)($v0)
/* 17FE84 80030444 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17FE88 80030448 10400020 */  beqz       $v0, .L800304CC
/* 17FE8C 8003044C AFBF0010 */   sw        $ra, 0x10($sp)
/* 17FE90 80030450 0C009758 */  jal        func_80025D60_1757A0
/* 17FE94 80030454 00000000 */   nop
/* 17FE98 80030458 0C02A5D2 */  jal        func_800A9748
/* 17FE9C 8003045C 24040001 */   addiu     $a0, $zero, 1
/* 17FEA0 80030460 2402000B */  addiu      $v0, $zero, 0xb
/* 17FEA4 80030464 3C018005 */  lui        $at, %hi(D_80052061)
/* 17FEA8 80030468 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17FEAC 8003046C 24020001 */  addiu      $v0, $zero, 1
/* 17FEB0 80030470 3C018005 */  lui        $at, %hi(D_80052006)
/* 17FEB4 80030474 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17FEB8 80030478 3C028004 */  lui        $v0, %hi(D_80047A14)
/* 17FEBC 8003047C 24427A14 */  addiu      $v0, $v0, %lo(D_80047A14)
/* 17FEC0 80030480 3C018004 */  lui        $at, %hi(D_80047A44)
/* 17FEC4 80030484 A0207A44 */  sb         $zero, %lo(D_80047A44)($at)
/* 17FEC8 80030488 3C018005 */  lui        $at, %hi(D_80052060)
/* 17FECC 8003048C A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17FED0 80030490 3C018005 */  lui        $at, %hi(D_80052000)
/* 17FED4 80030494 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17FED8 80030498 0C032663 */  jal        func_800C998C
/* 17FEDC 8003049C 24040014 */   addiu     $a0, $zero, 0x14
/* 17FEE0 800304A0 00402021 */  addu       $a0, $v0, $zero
/* 17FEE4 800304A4 3C018005 */  lui        $at, %hi(D_80052244)
/* 17FEE8 800304A8 AC242244 */  sw         $a0, %lo(D_80052244)($at)
/* 17FEEC 800304AC 0C030134 */  jal        bzero
/* 17FEF0 800304B0 24050014 */   addiu     $a1, $zero, 0x14
/* 17FEF4 800304B4 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17FEF8 800304B8 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17FEFC 800304BC 00002821 */  addu       $a1, $zero, $zero
/* 17FF00 800304C0 2406012C */  addiu      $a2, $zero, 0x12c
/* 17FF04 800304C4 0C025D06 */  jal        func_80097418
/* 17FF08 800304C8 00003821 */   addu      $a3, $zero, $zero
.L800304CC:
/* 17FF0C 800304CC 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17FF10 800304D0 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17FF14 800304D4 24020001 */  addiu      $v0, $zero, 1
/* 17FF18 800304D8 14620008 */  bne        $v1, $v0, .L800304FC
/* 17FF1C 800304DC 00001021 */   addu      $v0, $zero, $zero
/* 17FF20 800304E0 3C048005 */  lui        $a0, %hi(D_80052244)
/* 17FF24 800304E4 8C842244 */  lw         $a0, %lo(D_80052244)($a0)
/* 17FF28 800304E8 24020001 */  addiu      $v0, $zero, 1
/* 17FF2C 800304EC 3C018004 */  lui        $at, %hi(D_80047A44)
/* 17FF30 800304F0 0C0326A1 */  jal        func_800C9A84
/* 17FF34 800304F4 A0227A44 */   sb        $v0, %lo(D_80047A44)($at)
/* 17FF38 800304F8 24020001 */  addiu      $v0, $zero, 1
.L800304FC:
/* 17FF3C 800304FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17FF40 80030500 03E00008 */  jr         $ra
/* 17FF44 80030504 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17FF48 80030508 00000000 */  nop
/* 17FF4C 8003050C 00000000 */  nop