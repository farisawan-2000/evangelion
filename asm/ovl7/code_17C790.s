.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002CD50_17C790
/* 17C790 8002CD50 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17C794 8002CD54 27A70030 */  addiu      $a3, $sp, 0x30
/* 17C798 8002CD58 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17C79C 8002CD5C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17C7A0 8002CD60 3C068005 */  lui        $a2, %hi(D_80050A58)
/* 17C7A4 8002CD64 24C60A58 */  addiu      $a2, $a2, %lo(D_80050A58)
/* 17C7A8 8002CD68 24C80020 */  addiu      $t0, $a2, 0x20
/* 17C7AC 8002CD6C AFBF0064 */  sw         $ra, 0x64($sp)
/* 17C7B0 8002CD70 AFB00060 */  sw         $s0, 0x60($sp)
/* 17C7B4 8002CD74 8C50002C */  lw         $s0, 0x2c($v0)
.L8002CD78:
/* 17C7B8 8002CD78 8CC20000 */  lw         $v0, ($a2)
/* 17C7BC 8002CD7C 8CC30004 */  lw         $v1, 4($a2)
/* 17C7C0 8002CD80 8CC40008 */  lw         $a0, 8($a2)
/* 17C7C4 8002CD84 8CC5000C */  lw         $a1, 0xc($a2)
/* 17C7C8 8002CD88 ACE20000 */  sw         $v0, ($a3)
/* 17C7CC 8002CD8C ACE30004 */  sw         $v1, 4($a3)
/* 17C7D0 8002CD90 ACE40008 */  sw         $a0, 8($a3)
/* 17C7D4 8002CD94 ACE5000C */  sw         $a1, 0xc($a3)
/* 17C7D8 8002CD98 24C60010 */  addiu      $a2, $a2, 0x10
/* 17C7DC 8002CD9C 14C8FFF6 */  bne        $a2, $t0, .L8002CD78
/* 17C7E0 8002CDA0 24E70010 */   addiu     $a3, $a3, 0x10
/* 17C7E4 8002CDA4 8CC20000 */  lw         $v0, ($a2)
/* 17C7E8 8002CDA8 8CC30004 */  lw         $v1, 4($a2)
/* 17C7EC 8002CDAC 8CC40008 */  lw         $a0, 8($a2)
/* 17C7F0 8002CDB0 ACE20000 */  sw         $v0, ($a3)
/* 17C7F4 8002CDB4 ACE30004 */  sw         $v1, 4($a3)
/* 17C7F8 8002CDB8 ACE40008 */  sw         $a0, 8($a3)
/* 17C7FC 8002CDBC 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C800 8002CDC0 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C804 8002CDC4 1440001B */  bnez       $v0, .L8002CE34
/* 17C808 8002CDC8 00000000 */   nop
/* 17C80C 8002CDCC 8FA20040 */  lw         $v0, 0x40($sp)
/* 17C810 8002CDD0 8FA30044 */  lw         $v1, 0x44($sp)
/* 17C814 8002CDD4 8FA40048 */  lw         $a0, 0x48($sp)
/* 17C818 8002CDD8 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17C81C 8002CDDC AFA20010 */  sw         $v0, 0x10($sp)
/* 17C820 8002CDE0 AFA30014 */  sw         $v1, 0x14($sp)
/* 17C824 8002CDE4 AFA40018 */  sw         $a0, 0x18($sp)
/* 17C828 8002CDE8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17C82C 8002CDEC 8FA20050 */  lw         $v0, 0x50($sp)
/* 17C830 8002CDF0 8FA30054 */  lw         $v1, 0x54($sp)
/* 17C834 8002CDF4 8FA40058 */  lw         $a0, 0x58($sp)
/* 17C838 8002CDF8 AFA20020 */  sw         $v0, 0x20($sp)
/* 17C83C 8002CDFC AFA30024 */  sw         $v1, 0x24($sp)
/* 17C840 8002CE00 AFA40028 */  sw         $a0, 0x28($sp)
/* 17C844 8002CE04 8FA40030 */  lw         $a0, 0x30($sp)
/* 17C848 8002CE08 8FA50034 */  lw         $a1, 0x34($sp)
/* 17C84C 8002CE0C 8FA60038 */  lw         $a2, 0x38($sp)
/* 17C850 8002CE10 0C0099F7 */  jal        func_800267DC_17621C
/* 17C854 8002CE14 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17C858 8002CE18 24040073 */  addiu      $a0, $zero, 0x73
/* 17C85C 8002CE1C 24050060 */  addiu      $a1, $zero, 0x60
/* 17C860 8002CE20 24060080 */  addiu      $a2, $zero, 0x80
/* 17C864 8002CE24 24070001 */  addiu      $a3, $zero, 1
/* 17C868 8002CE28 24020064 */  addiu      $v0, $zero, 0x64
/* 17C86C 8002CE2C 0C026E0C */  jal        func_8009B830
/* 17C870 8002CE30 AFA20010 */   sw        $v0, 0x10($sp)
.L8002CE34:
/* 17C874 8002CE34 3C068005 */  lui        $a2, %hi(D_80052038)
/* 17C878 8002CE38 94C62038 */  lhu        $a2, %lo(D_80052038)($a2)
/* 17C87C 8002CE3C 8E040018 */  lw         $a0, 0x18($s0)
/* 17C880 8002CE40 24050280 */  addiu      $a1, $zero, 0x280
/* 17C884 8002CE44 24C602FB */  addiu      $a2, $a2, 0x2fb
/* 17C888 8002CE48 00063400 */  sll        $a2, $a2, 0x10
/* 17C88C 8002CE4C 0C028D89 */  jal        func_800A3624
/* 17C890 8002CE50 00063403 */   sra       $a2, $a2, 0x10
/* 17C894 8002CE54 3C028015 */  lui        $v0, %hi(D_8014A06C)
/* 17C898 8002CE58 2442A06C */  addiu      $v0, $v0, %lo(D_8014A06C)
/* 17C89C 8002CE5C C4400000 */  lwc1       $f0, ($v0)
/* 17C8A0 8002CE60 3C013ECC */  lui        $at, 0x3ecc
/* 17C8A4 8002CE64 3421CCCD */  ori        $at, $at, 0xcccd
/* 17C8A8 8002CE68 44811000 */  mtc1       $at, $f2
/* 17C8AC 8002CE6C 00000000 */  nop
/* 17C8B0 8002CE70 46020001 */  sub.s      $f0, $f0, $f2
/* 17C8B4 8002CE74 E4400000 */  swc1       $f0, ($v0)
/* 17C8B8 8002CE78 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17C8BC 8002CE7C 8FB00060 */  lw         $s0, 0x60($sp)
/* 17C8C0 8002CE80 03E00008 */  jr         $ra
/* 17C8C4 8002CE84 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002CE88_17C8C8
/* 17C8C8 8002CE88 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 17C8CC 8002CE8C 27A70030 */  addiu      $a3, $sp, 0x30
/* 17C8D0 8002CE90 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17C8D4 8002CE94 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17C8D8 8002CE98 3C068005 */  lui        $a2, %hi(D_80050A84)
/* 17C8DC 8002CE9C 24C60A84 */  addiu      $a2, $a2, %lo(D_80050A84)
/* 17C8E0 8002CEA0 24C80020 */  addiu      $t0, $a2, 0x20
/* 17C8E4 8002CEA4 AFBF0070 */  sw         $ra, 0x70($sp)
/* 17C8E8 8002CEA8 AFB1006C */  sw         $s1, 0x6c($sp)
/* 17C8EC 8002CEAC AFB00068 */  sw         $s0, 0x68($sp)
/* 17C8F0 8002CEB0 8C50002C */  lw         $s0, 0x2c($v0)
/* 17C8F4 8002CEB4 8C510028 */  lw         $s1, 0x28($v0)
.L8002CEB8:
/* 17C8F8 8002CEB8 8CC20000 */  lw         $v0, ($a2)
/* 17C8FC 8002CEBC 8CC30004 */  lw         $v1, 4($a2)
/* 17C900 8002CEC0 8CC40008 */  lw         $a0, 8($a2)
/* 17C904 8002CEC4 8CC5000C */  lw         $a1, 0xc($a2)
/* 17C908 8002CEC8 ACE20000 */  sw         $v0, ($a3)
/* 17C90C 8002CECC ACE30004 */  sw         $v1, 4($a3)
/* 17C910 8002CED0 ACE40008 */  sw         $a0, 8($a3)
/* 17C914 8002CED4 ACE5000C */  sw         $a1, 0xc($a3)
/* 17C918 8002CED8 24C60010 */  addiu      $a2, $a2, 0x10
/* 17C91C 8002CEDC 14C8FFF6 */  bne        $a2, $t0, .L8002CEB8
/* 17C920 8002CEE0 24E70010 */   addiu     $a3, $a3, 0x10
/* 17C924 8002CEE4 8CC20000 */  lw         $v0, ($a2)
/* 17C928 8002CEE8 8CC30004 */  lw         $v1, 4($a2)
/* 17C92C 8002CEEC 8CC40008 */  lw         $a0, 8($a2)
/* 17C930 8002CEF0 ACE20000 */  sw         $v0, ($a3)
/* 17C934 8002CEF4 ACE30004 */  sw         $v1, 4($a3)
/* 17C938 8002CEF8 ACE40008 */  sw         $a0, 8($a3)
/* 17C93C 8002CEFC 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C940 8002CF00 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C944 8002CF04 1440002D */  bnez       $v0, .L8002CFBC
/* 17C948 8002CF08 3843001E */   xori      $v1, $v0, 0x1e
/* 17C94C 8002CF0C 8FA20040 */  lw         $v0, 0x40($sp)
/* 17C950 8002CF10 8FA30044 */  lw         $v1, 0x44($sp)
/* 17C954 8002CF14 8FA40048 */  lw         $a0, 0x48($sp)
/* 17C958 8002CF18 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17C95C 8002CF1C AFA20010 */  sw         $v0, 0x10($sp)
/* 17C960 8002CF20 AFA30014 */  sw         $v1, 0x14($sp)
/* 17C964 8002CF24 AFA40018 */  sw         $a0, 0x18($sp)
/* 17C968 8002CF28 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17C96C 8002CF2C 8FA20050 */  lw         $v0, 0x50($sp)
/* 17C970 8002CF30 8FA30054 */  lw         $v1, 0x54($sp)
/* 17C974 8002CF34 8FA40058 */  lw         $a0, 0x58($sp)
/* 17C978 8002CF38 AFA20020 */  sw         $v0, 0x20($sp)
/* 17C97C 8002CF3C AFA30024 */  sw         $v1, 0x24($sp)
/* 17C980 8002CF40 AFA40028 */  sw         $a0, 0x28($sp)
/* 17C984 8002CF44 8FA40030 */  lw         $a0, 0x30($sp)
/* 17C988 8002CF48 8FA50034 */  lw         $a1, 0x34($sp)
/* 17C98C 8002CF4C 8FA60038 */  lw         $a2, 0x38($sp)
/* 17C990 8002CF50 0C0099F7 */  jal        func_800267DC_17621C
/* 17C994 8002CF54 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17C998 8002CF58 8E04000C */  lw         $a0, 0xc($s0)
/* 17C99C 8002CF5C 8C82000C */  lw         $v0, 0xc($a0)
/* 17C9A0 8002CF60 94460002 */  lhu        $a2, 2($v0)
/* 17C9A4 8002CF64 84450000 */  lh         $a1, ($v0)
/* 17C9A8 8002CF68 0C02912A */  jal        func_800A44A8
/* 17C9AC 8002CF6C 00063042 */   srl       $a2, $a2, 1
/* 17C9B0 8002CF70 8E240068 */  lw         $a0, 0x68($s1)
/* 17C9B4 8002CF74 3C058005 */  lui        $a1, %hi(D_80050AB0)
/* 17C9B8 8002CF78 24A50AB0 */  addiu      $a1, $a1, %lo(D_80050AB0)
/* 17C9BC 8002CF7C 3C018005 */  lui        $at, %hi(D_80051E90)
/* 17C9C0 8002CF80 A4201E90 */  sh         $zero, %lo(D_80051E90)($at)
/* 17C9C4 8002CF84 0C0286A4 */  jal        func_800A1A90
/* 17C9C8 8002CF88 00003021 */   addu      $a2, $zero, $zero
/* 17C9CC 8002CF8C 8E040000 */  lw         $a0, ($s0)
/* 17C9D0 8002CF90 3C064080 */  lui        $a2, 0x4080
/* 17C9D4 8002CF94 3C074000 */  lui        $a3, 0x4000
/* 17C9D8 8002CF98 0C02915B */  jal        func_800A456C
/* 17C9DC 8002CF9C 00002821 */   addu      $a1, $zero, $zero
/* 17C9E0 8002CFA0 8E040000 */  lw         $a0, ($s0)
/* 17C9E4 8002CFA4 24050168 */  addiu      $a1, $zero, 0x168
/* 17C9E8 8002CFA8 0C028D89 */  jal        func_800A3624
/* 17C9EC 8002CFAC 240601E0 */   addiu     $a2, $zero, 0x1e0
/* 17C9F0 8002CFB0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C9F4 8002CFB4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C9F8 8002CFB8 3843001E */  xori       $v1, $v0, 0x1e
.L8002CFBC:
/* 17C9FC 8002CFBC 2C630001 */  sltiu      $v1, $v1, 1
/* 17CA00 8002CFC0 3842005A */  xori       $v0, $v0, 0x5a
/* 17CA04 8002CFC4 2C420001 */  sltiu      $v0, $v0, 1
/* 17CA08 8002CFC8 00621825 */  or         $v1, $v1, $v0
/* 17CA0C 8002CFCC 10600003 */  beqz       $v1, .L8002CFDC
/* 17CA10 8002CFD0 24020001 */   addiu     $v0, $zero, 1
/* 17CA14 8002CFD4 3C018005 */  lui        $at, %hi(D_80051E90)
/* 17CA18 8002CFD8 A4221E90 */  sh         $v0, %lo(D_80051E90)($at)
.L8002CFDC:
/* 17CA1C 8002CFDC 3C028005 */  lui        $v0, %hi(D_80051E90)
/* 17CA20 8002CFE0 94421E90 */  lhu        $v0, %lo(D_80051E90)($v0)
/* 17CA24 8002CFE4 00022400 */  sll        $a0, $v0, 0x10
/* 17CA28 8002CFE8 00041C03 */  sra        $v1, $a0, 0x10
/* 17CA2C 8002CFEC 14600003 */  bnez       $v1, .L8002CFFC
/* 17CA30 8002CFF0 28620181 */   slti      $v0, $v1, 0x181
/* 17CA34 8002CFF4 0800B410 */  j          .L8002D040
/* 17CA38 8002CFF8 2402006E */   addiu     $v0, $zero, 0x6e
.L8002CFFC:
/* 17CA3C 8002CFFC 10400003 */  beqz       $v0, .L8002D00C
/* 17CA40 8002D000 00041443 */   sra       $v0, $a0, 0x11
/* 17CA44 8002D004 0800B410 */  j          .L8002D040
/* 17CA48 8002D008 2442003F */   addiu     $v0, $v0, 0x3f
.L8002D00C:
/* 17CA4C 8002D00C 2462FE80 */  addiu      $v0, $v1, -0x180
/* 17CA50 8002D010 00021FC2 */  srl        $v1, $v0, 0x1f
/* 17CA54 8002D014 00431021 */  addu       $v0, $v0, $v1
/* 17CA58 8002D018 00021043 */  sra        $v0, $v0, 1
/* 17CA5C 8002D01C 00401821 */  addu       $v1, $v0, $zero
/* 17CA60 8002D020 00021400 */  sll        $v0, $v0, 0x10
/* 17CA64 8002D024 00021403 */  sra        $v0, $v0, 0x10
/* 17CA68 8002D028 28420100 */  slti       $v0, $v0, 0x100
/* 17CA6C 8002D02C 14400004 */  bnez       $v0, .L8002D040
/* 17CA70 8002D030 00031027 */   nor       $v0, $zero, $v1
/* 17CA74 8002D034 3C018005 */  lui        $at, %hi(D_80051E92)
/* 17CA78 8002D038 0800B412 */  j          .L8002D048
/* 17CA7C 8002D03C A0201E92 */   sb        $zero, %lo(D_80051E92)($at)
.L8002D040:
/* 17CA80 8002D040 3C018005 */  lui        $at, %hi(D_80051E92)
/* 17CA84 8002D044 A0221E92 */  sb         $v0, %lo(D_80051E92)($at)
.L8002D048:
/* 17CA88 8002D048 3C028005 */  lui        $v0, %hi(D_80051E90)
/* 17CA8C 8002D04C 84421E90 */  lh         $v0, %lo(D_80051E90)($v0)
/* 17CA90 8002D050 1040000F */  beqz       $v0, .L8002D090
/* 17CA94 8002D054 00402821 */   addu      $a1, $v0, $zero
/* 17CA98 8002D058 8E04000C */  lw         $a0, 0xc($s0)
/* 17CA9C 8002D05C 00052C80 */  sll        $a1, $a1, 0x12
/* 17CAA0 8002D060 00052C03 */  sra        $a1, $a1, 0x10
/* 17CAA4 8002D064 0C028D89 */  jal        func_800A3624
/* 17CAA8 8002D068 240601E0 */   addiu     $a2, $zero, 0x1e0
/* 17CAAC 8002D06C 8E04000C */  lw         $a0, 0xc($s0)
/* 17CAB0 8002D070 0C028A40 */  jal        func_800A2900
/* 17CAB4 8002D074 00000000 */   nop
/* 17CAB8 8002D078 3C028005 */  lui        $v0, %hi(D_80051E90)
/* 17CABC 8002D07C 94421E90 */  lhu        $v0, %lo(D_80051E90)($v0)
/* 17CAC0 8002D080 24420014 */  addiu      $v0, $v0, 0x14
/* 17CAC4 8002D084 3C018005 */  lui        $at, %hi(D_80051E90)
/* 17CAC8 8002D088 0800B426 */  j          .L8002D098
/* 17CACC 8002D08C A4221E90 */   sh        $v0, %lo(D_80051E90)($at)
.L8002D090:
/* 17CAD0 8002D090 3C018005 */  lui        $at, %hi(D_80051E90)
/* 17CAD4 8002D094 A4201E90 */  sh         $zero, %lo(D_80051E90)($at)
.L8002D098:
/* 17CAD8 8002D098 3C028005 */  lui        $v0, %hi(D_80051E92)
/* 17CADC 8002D09C 90421E92 */  lbu        $v0, %lo(D_80051E92)($v0)
/* 17CAE0 8002D0A0 240500FF */  addiu      $a1, $zero, 0xff
/* 17CAE4 8002D0A4 AFA20010 */  sw         $v0, 0x10($sp)
/* 17CAE8 8002D0A8 8E04000C */  lw         $a0, 0xc($s0)
/* 17CAEC 8002D0AC 240600FF */  addiu      $a2, $zero, 0xff
/* 17CAF0 8002D0B0 0C028E41 */  jal        func_800A3904
/* 17CAF4 8002D0B4 240700FF */   addiu     $a3, $zero, 0xff
/* 17CAF8 8002D0B8 8E020000 */  lw         $v0, ($s0)
/* 17CAFC 8002D0BC 8C430008 */  lw         $v1, 8($v0)
/* 17CB00 8002D0C0 94620010 */  lhu        $v0, 0x10($v1)
/* 17CB04 8002D0C4 24420004 */  addiu      $v0, $v0, 4
/* 17CB08 8002D0C8 A4620010 */  sh         $v0, 0x10($v1)
/* 17CB0C 8002D0CC 8FBF0070 */  lw         $ra, 0x70($sp)
/* 17CB10 8002D0D0 8FB1006C */  lw         $s1, 0x6c($sp)
/* 17CB14 8002D0D4 8FB00068 */  lw         $s0, 0x68($sp)
/* 17CB18 8002D0D8 03E00008 */  jr         $ra
/* 17CB1C 8002D0DC 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8002D0E0_17CB20
/* 17CB20 8002D0E0 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17CB24 8002D0E4 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17CB28 8002D0E8 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17CB2C 8002D0EC 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17CB30 8002D0F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17CB34 8002D0F4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 17CB38 8002D0F8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17CB3C 8002D0FC AFB00018 */  sw         $s0, 0x18($sp)
/* 17CB40 8002D100 8C71002C */  lw         $s1, 0x2c($v1)
/* 17CB44 8002D104 1440001F */  bnez       $v0, .L8002D184
/* 17CB48 8002D108 24020001 */   addiu     $v0, $zero, 1
/* 17CB4C 8002D10C 9463000E */  lhu        $v1, 0xe($v1)
/* 17CB50 8002D110 0043102B */  sltu       $v0, $v0, $v1
/* 17CB54 8002D114 10400012 */  beqz       $v0, .L8002D160
/* 17CB58 8002D118 24100001 */   addiu     $s0, $zero, 1
/* 17CB5C 8002D11C 320300FF */  andi       $v1, $s0, 0xff
.L8002D120:
/* 17CB60 8002D120 00031040 */  sll        $v0, $v1, 1
/* 17CB64 8002D124 00431021 */  addu       $v0, $v0, $v1
/* 17CB68 8002D128 00021080 */  sll        $v0, $v0, 2
/* 17CB6C 8002D12C 00511021 */  addu       $v0, $v0, $s1
/* 17CB70 8002D130 8C440000 */  lw         $a0, ($v0)
/* 17CB74 8002D134 00002821 */  addu       $a1, $zero, $zero
/* 17CB78 8002D138 0C02912A */  jal        func_800A44A8
/* 17CB7C 8002D13C 00003021 */   addu      $a2, $zero, $zero
/* 17CB80 8002D140 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17CB84 8002D144 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17CB88 8002D148 9443000E */  lhu        $v1, 0xe($v0)
/* 17CB8C 8002D14C 26100001 */  addiu      $s0, $s0, 1
/* 17CB90 8002D150 320200FF */  andi       $v0, $s0, 0xff
/* 17CB94 8002D154 0043102B */  sltu       $v0, $v0, $v1
/* 17CB98 8002D158 1440FFF1 */  bnez       $v0, .L8002D120
/* 17CB9C 8002D15C 320300FF */   andi      $v1, $s0, 0xff
.L8002D160:
/* 17CBA0 8002D160 3C013F80 */  lui        $at, 0x3f80
/* 17CBA4 8002D164 44810000 */  mtc1       $at, $f0
/* 17CBA8 8002D168 240200FF */  addiu      $v0, $zero, 0xff
/* 17CBAC 8002D16C 3C018005 */  lui        $at, %hi(D_80051E93)
/* 17CBB0 8002D170 A0201E93 */  sb         $zero, %lo(D_80051E93)($at)
/* 17CBB4 8002D174 3C018005 */  lui        $at, %hi(D_80051E94)
/* 17CBB8 8002D178 A0221E94 */  sb         $v0, %lo(D_80051E94)($at)
/* 17CBBC 8002D17C 3C018005 */  lui        $at, %hi(D_80051E98)
/* 17CBC0 8002D180 E4201E98 */  swc1       $f0, %lo(D_80051E98)($at)
.L8002D184:
/* 17CBC4 8002D184 3C038005 */  lui        $v1, %hi(D_80051E94)
/* 17CBC8 8002D188 90631E94 */  lbu        $v1, %lo(D_80051E94)($v1)
/* 17CBCC 8002D18C 24020004 */  addiu      $v0, $zero, 4
/* 17CBD0 8002D190 0043102B */  sltu       $v0, $v0, $v1
/* 17CBD4 8002D194 10400004 */  beqz       $v0, .L8002D1A8
/* 17CBD8 8002D198 2462FFFC */   addiu     $v0, $v1, -4
/* 17CBDC 8002D19C 3C018005 */  lui        $at, %hi(D_80051E94)
/* 17CBE0 8002D1A0 0800B46C */  j          .L8002D1B0
/* 17CBE4 8002D1A4 A0221E94 */   sb        $v0, %lo(D_80051E94)($at)
.L8002D1A8:
/* 17CBE8 8002D1A8 3C018005 */  lui        $at, %hi(D_80051E94)
/* 17CBEC 8002D1AC A0201E94 */  sb         $zero, %lo(D_80051E94)($at)
.L8002D1B0:
/* 17CBF0 8002D1B0 3C028005 */  lui        $v0, %hi(D_80051E94)
/* 17CBF4 8002D1B4 90421E94 */  lbu        $v0, %lo(D_80051E94)($v0)
/* 17CBF8 8002D1B8 240500FF */  addiu      $a1, $zero, 0xff
/* 17CBFC 8002D1BC AFA20010 */  sw         $v0, 0x10($sp)
/* 17CC00 8002D1C0 8E240048 */  lw         $a0, 0x48($s1)
/* 17CC04 8002D1C4 240600FF */  addiu      $a2, $zero, 0xff
/* 17CC08 8002D1C8 0C028E41 */  jal        func_800A3904
/* 17CC0C 8002D1CC 240700FF */   addiu     $a3, $zero, 0xff
/* 17CC10 8002D1D0 3C018005 */  lui        $at, %hi(D_80051E98)
/* 17CC14 8002D1D4 C4221E98 */  lwc1       $f2, %lo(D_80051E98)($at)
/* 17CC18 8002D1D8 3C013F00 */  lui        $at, 0x3f00
/* 17CC1C 8002D1DC 44810000 */  mtc1       $at, $f0
/* 17CC20 8002D1E0 00000000 */  nop
/* 17CC24 8002D1E4 4602003C */  c.lt.s     $f0, $f2
/* 17CC28 8002D1E8 00000000 */  nop
/* 17CC2C 8002D1EC 45000006 */  bc1f       .L8002D208
/* 17CC30 8002D1F0 00000000 */   nop
/* 17CC34 8002D1F4 3C013C23 */  lui        $at, 0x3c23
/* 17CC38 8002D1F8 3421D70A */  ori        $at, $at, 0xd70a
/* 17CC3C 8002D1FC 44810000 */  mtc1       $at, $f0
/* 17CC40 8002D200 00000000 */  nop
/* 17CC44 8002D204 46001001 */  sub.s      $f0, $f2, $f0
.L8002D208:
/* 17CC48 8002D208 3C018005 */  lui        $at, %hi(D_80051E98)
/* 17CC4C 8002D20C E4201E98 */  swc1       $f0, %lo(D_80051E98)($at)
/* 17CC50 8002D210 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17CC54 8002D214 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17CC58 8002D218 2402003C */  addiu      $v0, $zero, 0x3c
/* 17CC5C 8002D21C 1462000A */  bne        $v1, $v0, .L8002D248
/* 17CC60 8002D220 2404006A */   addiu     $a0, $zero, 0x6a
/* 17CC64 8002D224 24050080 */  addiu      $a1, $zero, 0x80
/* 17CC68 8002D228 24060080 */  addiu      $a2, $zero, 0x80
/* 17CC6C 8002D22C 24070001 */  addiu      $a3, $zero, 1
/* 17CC70 8002D230 24020001 */  addiu      $v0, $zero, 1
/* 17CC74 8002D234 3C018005 */  lui        $at, %hi(D_80051E93)
/* 17CC78 8002D238 A0221E93 */  sb         $v0, %lo(D_80051E93)($at)
/* 17CC7C 8002D23C 24020064 */  addiu      $v0, $zero, 0x64
/* 17CC80 8002D240 0C026E0C */  jal        func_8009B830
/* 17CC84 8002D244 AFA20010 */   sw        $v0, 0x10($sp)
.L8002D248:
/* 17CC88 8002D248 3C028005 */  lui        $v0, %hi(D_80051E93)
/* 17CC8C 8002D24C 90421E93 */  lbu        $v0, %lo(D_80051E93)($v0)
/* 17CC90 8002D250 10400023 */  beqz       $v0, .L8002D2E0
/* 17CC94 8002D254 24420001 */   addiu     $v0, $v0, 1
/* 17CC98 8002D258 3C018005 */  lui        $at, %hi(D_80051E93)
/* 17CC9C 8002D25C A0221E93 */  sb         $v0, %lo(D_80051E93)($at)
/* 17CCA0 8002D260 304200FF */  andi       $v0, $v0, 0xff
/* 17CCA4 8002D264 2443FFFF */  addiu      $v1, $v0, -1
/* 17CCA8 8002D268 2C620012 */  sltiu      $v0, $v1, 0x12
/* 17CCAC 8002D26C 1040001A */  beqz       $v0, .L8002D2D8
/* 17CCB0 8002D270 00031080 */   sll       $v0, $v1, 2
/* 17CCB4 8002D274 3C018005 */  lui        $at, %hi(D_80050AB8)
/* 17CCB8 8002D278 00220821 */  addu       $at, $at, $v0
/* 17CCBC 8002D27C 8C220AB8 */  lw         $v0, %lo(D_80050AB8)($at)
/* 17CCC0 8002D280 00400008 */  jr         $v0
/* 17CCC4 8002D284 00000000 */   nop
/* 17CCC8 8002D288 0C028A40 */  jal        func_800A2900
/* 17CCCC 8002D28C 8E240018 */   lw        $a0, 0x18($s1)
/* 17CCD0 8002D290 0800B4B8 */  j          .L8002D2E0
/* 17CCD4 8002D294 00000000 */   nop
/* 17CCD8 8002D298 0C028A40 */  jal        func_800A2900
/* 17CCDC 8002D29C 8E24000C */   lw        $a0, 0xc($s1)
/* 17CCE0 8002D2A0 0800B4B8 */  j          .L8002D2E0
/* 17CCE4 8002D2A4 00000000 */   nop
/* 17CCE8 8002D2A8 0C028A40 */  jal        func_800A2900
/* 17CCEC 8002D2AC 8E240024 */   lw        $a0, 0x24($s1)
/* 17CCF0 8002D2B0 0800B4B8 */  j          .L8002D2E0
/* 17CCF4 8002D2B4 00000000 */   nop
/* 17CCF8 8002D2B8 0C028A40 */  jal        func_800A2900
/* 17CCFC 8002D2BC 8E240030 */   lw        $a0, 0x30($s1)
/* 17CD00 8002D2C0 0800B4B8 */  j          .L8002D2E0
/* 17CD04 8002D2C4 00000000 */   nop
/* 17CD08 8002D2C8 0C028A40 */  jal        func_800A2900
/* 17CD0C 8002D2CC 8E24003C */   lw        $a0, 0x3c($s1)
/* 17CD10 8002D2D0 0800B4B8 */  j          .L8002D2E0
/* 17CD14 8002D2D4 00000000 */   nop
.L8002D2D8:
/* 17CD18 8002D2D8 3C018005 */  lui        $at, %hi(D_80051E93)
/* 17CD1C 8002D2DC A0201E93 */  sb         $zero, %lo(D_80051E93)($at)
.L8002D2E0:
/* 17CD20 8002D2E0 0C0099DA */  jal        func_80026768_1761A8
/* 17CD24 8002D2E4 2404005A */   addiu     $a0, $zero, 0x5a
/* 17CD28 8002D2E8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17CD2C 8002D2EC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17CD30 8002D2F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 17CD34 8002D2F4 03E00008 */  jr         $ra
/* 17CD38 8002D2F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002D2FC_17CD3C
/* 17CD3C 8002D2FC 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17CD40 8002D300 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17CD44 8002D304 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17CD48 8002D308 14400003 */  bnez       $v0, .L8002D318
/* 17CD4C 8002D30C AFBF0010 */   sw        $ra, 0x10($sp)
/* 17CD50 8002D310 0C0099DA */  jal        func_80026768_1761A8
/* 17CD54 8002D314 00002021 */   addu      $a0, $zero, $zero
.L8002D318:
/* 17CD58 8002D318 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17CD5C 8002D31C 03E00008 */  jr         $ra
/* 17CD60 8002D320 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D324_17CD64
/* 17CD64 8002D324 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17CD68 8002D328 27A70030 */  addiu      $a3, $sp, 0x30
/* 17CD6C 8002D32C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17CD70 8002D330 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17CD74 8002D334 3C068005 */  lui        $a2, %hi(D_80050B00)
/* 17CD78 8002D338 24C60B00 */  addiu      $a2, $a2, %lo(D_80050B00)
/* 17CD7C 8002D33C 24C80020 */  addiu      $t0, $a2, 0x20
/* 17CD80 8002D340 AFBF0064 */  sw         $ra, 0x64($sp)
/* 17CD84 8002D344 AFB00060 */  sw         $s0, 0x60($sp)
/* 17CD88 8002D348 8C500028 */  lw         $s0, 0x28($v0)
.L8002D34C:
/* 17CD8C 8002D34C 8CC20000 */  lw         $v0, ($a2)
/* 17CD90 8002D350 8CC30004 */  lw         $v1, 4($a2)
/* 17CD94 8002D354 8CC40008 */  lw         $a0, 8($a2)
/* 17CD98 8002D358 8CC5000C */  lw         $a1, 0xc($a2)
/* 17CD9C 8002D35C ACE20000 */  sw         $v0, ($a3)
/* 17CDA0 8002D360 ACE30004 */  sw         $v1, 4($a3)
/* 17CDA4 8002D364 ACE40008 */  sw         $a0, 8($a3)
/* 17CDA8 8002D368 ACE5000C */  sw         $a1, 0xc($a3)
/* 17CDAC 8002D36C 24C60010 */  addiu      $a2, $a2, 0x10
/* 17CDB0 8002D370 14C8FFF6 */  bne        $a2, $t0, .L8002D34C
/* 17CDB4 8002D374 24E70010 */   addiu     $a3, $a3, 0x10
/* 17CDB8 8002D378 8CC20000 */  lw         $v0, ($a2)
/* 17CDBC 8002D37C 8CC30004 */  lw         $v1, 4($a2)
/* 17CDC0 8002D380 8CC40008 */  lw         $a0, 8($a2)
/* 17CDC4 8002D384 ACE20000 */  sw         $v0, ($a3)
/* 17CDC8 8002D388 ACE30004 */  sw         $v1, 4($a3)
/* 17CDCC 8002D38C ACE40008 */  sw         $a0, 8($a3)
/* 17CDD0 8002D390 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17CDD4 8002D394 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17CDD8 8002D398 14400020 */  bnez       $v0, .L8002D41C
/* 17CDDC 8002D39C 00000000 */   nop
/* 17CDE0 8002D3A0 8FA20040 */  lw         $v0, 0x40($sp)
/* 17CDE4 8002D3A4 8FA30044 */  lw         $v1, 0x44($sp)
/* 17CDE8 8002D3A8 8FA40048 */  lw         $a0, 0x48($sp)
/* 17CDEC 8002D3AC 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17CDF0 8002D3B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 17CDF4 8002D3B4 AFA30014 */  sw         $v1, 0x14($sp)
/* 17CDF8 8002D3B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 17CDFC 8002D3BC AFA5001C */  sw         $a1, 0x1c($sp)
/* 17CE00 8002D3C0 8FA20050 */  lw         $v0, 0x50($sp)
/* 17CE04 8002D3C4 8FA30054 */  lw         $v1, 0x54($sp)
/* 17CE08 8002D3C8 8FA40058 */  lw         $a0, 0x58($sp)
/* 17CE0C 8002D3CC AFA20020 */  sw         $v0, 0x20($sp)
/* 17CE10 8002D3D0 AFA30024 */  sw         $v1, 0x24($sp)
/* 17CE14 8002D3D4 AFA40028 */  sw         $a0, 0x28($sp)
/* 17CE18 8002D3D8 8FA40030 */  lw         $a0, 0x30($sp)
/* 17CE1C 8002D3DC 8FA50034 */  lw         $a1, 0x34($sp)
/* 17CE20 8002D3E0 8FA60038 */  lw         $a2, 0x38($sp)
/* 17CE24 8002D3E4 0C0099F7 */  jal        func_800267DC_17621C
/* 17CE28 8002D3E8 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17CE2C 8002D3EC 24040017 */  addiu      $a0, $zero, 0x17
/* 17CE30 8002D3F0 2405FFFF */  addiu      $a1, $zero, -1
/* 17CE34 8002D3F4 24060001 */  addiu      $a2, $zero, 1
/* 17CE38 8002D3F8 2407003C */  addiu      $a3, $zero, 0x3c
/* 17CE3C 8002D3FC 24020032 */  addiu      $v0, $zero, 0x32
/* 17CE40 8002D400 0C026C9A */  jal        func_8009B268
/* 17CE44 8002D404 AFA20010 */   sw        $v0, 0x10($sp)
/* 17CE48 8002D408 8E040068 */  lw         $a0, 0x68($s0)
/* 17CE4C 8002D40C 3C058005 */  lui        $a1, %hi(D_80050AB0)
/* 17CE50 8002D410 24A50AB0 */  addiu      $a1, $a1, %lo(D_80050AB0)
/* 17CE54 8002D414 0C0286A4 */  jal        func_800A1A90
/* 17CE58 8002D418 00003021 */   addu      $a2, $zero, $zero
.L8002D41C:
/* 17CE5C 8002D41C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17CE60 8002D420 8FB00060 */  lw         $s0, 0x60($sp)
/* 17CE64 8002D424 03E00008 */  jr         $ra
/* 17CE68 8002D428 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002D42C_17CE6C
/* 17CE6C 8002D42C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17CE70 8002D430 AFBF0060 */  sw         $ra, 0x60($sp)
/* 17CE74 8002D434 27A70030 */  addiu      $a3, $sp, 0x30
/* 17CE78 8002D438 3C068005 */  lui        $a2, %hi(D_80050B2C)
/* 17CE7C 8002D43C 24C60B2C */  addiu      $a2, $a2, %lo(D_80050B2C)
/* 17CE80 8002D440 24C80020 */  addiu      $t0, $a2, 0x20
.L8002D444:
/* 17CE84 8002D444 8CC20000 */  lw         $v0, ($a2)
/* 17CE88 8002D448 8CC30004 */  lw         $v1, 4($a2)
/* 17CE8C 8002D44C 8CC40008 */  lw         $a0, 8($a2)
/* 17CE90 8002D450 8CC5000C */  lw         $a1, 0xc($a2)
/* 17CE94 8002D454 ACE20000 */  sw         $v0, ($a3)
/* 17CE98 8002D458 ACE30004 */  sw         $v1, 4($a3)
/* 17CE9C 8002D45C ACE40008 */  sw         $a0, 8($a3)
/* 17CEA0 8002D460 ACE5000C */  sw         $a1, 0xc($a3)
/* 17CEA4 8002D464 24C60010 */  addiu      $a2, $a2, 0x10
/* 17CEA8 8002D468 14C8FFF6 */  bne        $a2, $t0, .L8002D444
/* 17CEAC 8002D46C 24E70010 */   addiu     $a3, $a3, 0x10
/* 17CEB0 8002D470 8CC20000 */  lw         $v0, ($a2)
/* 17CEB4 8002D474 8CC30004 */  lw         $v1, 4($a2)
/* 17CEB8 8002D478 8CC40008 */  lw         $a0, 8($a2)
/* 17CEBC 8002D47C ACE20000 */  sw         $v0, ($a3)
/* 17CEC0 8002D480 ACE30004 */  sw         $v1, 4($a3)
/* 17CEC4 8002D484 ACE40008 */  sw         $a0, 8($a3)
/* 17CEC8 8002D488 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17CECC 8002D48C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17CED0 8002D490 14400014 */  bnez       $v0, .L8002D4E4
/* 17CED4 8002D494 00000000 */   nop
/* 17CED8 8002D498 8FA20040 */  lw         $v0, 0x40($sp)
/* 17CEDC 8002D49C 8FA30044 */  lw         $v1, 0x44($sp)
/* 17CEE0 8002D4A0 8FA40048 */  lw         $a0, 0x48($sp)
/* 17CEE4 8002D4A4 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17CEE8 8002D4A8 AFA20010 */  sw         $v0, 0x10($sp)
/* 17CEEC 8002D4AC AFA30014 */  sw         $v1, 0x14($sp)
/* 17CEF0 8002D4B0 AFA40018 */  sw         $a0, 0x18($sp)
/* 17CEF4 8002D4B4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17CEF8 8002D4B8 8FA20050 */  lw         $v0, 0x50($sp)
/* 17CEFC 8002D4BC 8FA30054 */  lw         $v1, 0x54($sp)
/* 17CF00 8002D4C0 8FA40058 */  lw         $a0, 0x58($sp)
/* 17CF04 8002D4C4 AFA20020 */  sw         $v0, 0x20($sp)
/* 17CF08 8002D4C8 AFA30024 */  sw         $v1, 0x24($sp)
/* 17CF0C 8002D4CC AFA40028 */  sw         $a0, 0x28($sp)
/* 17CF10 8002D4D0 8FA40030 */  lw         $a0, 0x30($sp)
/* 17CF14 8002D4D4 8FA50034 */  lw         $a1, 0x34($sp)
/* 17CF18 8002D4D8 8FA60038 */  lw         $a2, 0x38($sp)
/* 17CF1C 8002D4DC 0C0099F7 */  jal        func_800267DC_17621C
/* 17CF20 8002D4E0 8FA7003C */   lw        $a3, 0x3c($sp)
.L8002D4E4:
/* 17CF24 8002D4E4 8FBF0060 */  lw         $ra, 0x60($sp)
/* 17CF28 8002D4E8 03E00008 */  jr         $ra
/* 17CF2C 8002D4EC 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002D4F0_17CF30
/* 17CF30 8002D4F0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17CF34 8002D4F4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17CF38 8002D4F8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17CF3C 8002D4FC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17CF40 8002D500 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 17CF44 8002D504 AFBF0028 */  sw         $ra, 0x28($sp)
/* 17CF48 8002D508 AFB30024 */  sw         $s3, 0x24($sp)
/* 17CF4C 8002D50C AFB20020 */  sw         $s2, 0x20($sp)
/* 17CF50 8002D510 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17CF54 8002D514 AFB00018 */  sw         $s0, 0x18($sp)
/* 17CF58 8002D518 8C53002C */  lw         $s3, 0x2c($v0)
/* 17CF5C 8002D51C 14600080 */  bnez       $v1, .L8002D720
/* 17CF60 8002D520 2402FF62 */   addiu     $v0, $zero, -0x9e
/* 17CF64 8002D524 00008821 */  addu       $s1, $zero, $zero
/* 17CF68 8002D528 3C018005 */  lui        $at, %hi(D_80051E9C)
/* 17CF6C 8002D52C A4201E9C */  sh         $zero, %lo(D_80051E9C)($at)
/* 17CF70 8002D530 3C018005 */  lui        $at, %hi(D_80051E9E)
/* 17CF74 8002D534 A4221E9E */  sh         $v0, %lo(D_80051E9E)($at)
/* 17CF78 8002D538 322200FF */  andi       $v0, $s1, 0xff
.L8002D53C:
/* 17CF7C 8002D53C 00021840 */  sll        $v1, $v0, 1
/* 17CF80 8002D540 00621821 */  addu       $v1, $v1, $v0
/* 17CF84 8002D544 00031880 */  sll        $v1, $v1, 2
/* 17CF88 8002D548 00731821 */  addu       $v1, $v1, $s3
/* 17CF8C 8002D54C 8C640000 */  lw         $a0, ($v1)
/* 17CF90 8002D550 00002821 */  addu       $a1, $zero, $zero
/* 17CF94 8002D554 00003021 */  addu       $a2, $zero, $zero
/* 17CF98 8002D558 0C02912A */  jal        func_800A44A8
/* 17CF9C 8002D55C 26310001 */   addiu     $s1, $s1, 1
/* 17CFA0 8002D560 322200FF */  andi       $v0, $s1, 0xff
/* 17CFA4 8002D564 2C420030 */  sltiu      $v0, $v0, 0x30
/* 17CFA8 8002D568 1440FFF4 */  bnez       $v0, .L8002D53C
/* 17CFAC 8002D56C 322200FF */   andi      $v0, $s1, 0xff
/* 17CFB0 8002D570 00008821 */  addu       $s1, $zero, $zero
/* 17CFB4 8002D574 00009021 */  addu       $s2, $zero, $zero
/* 17CFB8 8002D578 322200FF */  andi       $v0, $s1, 0xff
.L8002D57C:
/* 17CFBC 8002D57C 00028040 */  sll        $s0, $v0, 1
/* 17CFC0 8002D580 02028021 */  addu       $s0, $s0, $v0
/* 17CFC4 8002D584 00108080 */  sll        $s0, $s0, 2
/* 17CFC8 8002D588 02138021 */  addu       $s0, $s0, $s3
/* 17CFCC 8002D58C 8E04009C */  lw         $a0, 0x9c($s0)
/* 17CFD0 8002D590 26450010 */  addiu      $a1, $s2, 0x10
/* 17CFD4 8002D594 00052C80 */  sll        $a1, $a1, 0x12
/* 17CFD8 8002D598 00052C03 */  sra        $a1, $a1, 0x10
/* 17CFDC 8002D59C 24060300 */  addiu      $a2, $zero, 0x300
/* 17CFE0 8002D5A0 0C028D89 */  jal        func_800A3624
/* 17CFE4 8002D5A4 26310001 */   addiu     $s1, $s1, 1
/* 17CFE8 8002D5A8 8E0400CC */  lw         $a0, 0xcc($s0)
/* 17CFEC 8002D5AC 264500B0 */  addiu      $a1, $s2, 0xb0
/* 17CFF0 8002D5B0 00052C80 */  sll        $a1, $a1, 0x12
/* 17CFF4 8002D5B4 00052C03 */  sra        $a1, $a1, 0x10
/* 17CFF8 8002D5B8 24060300 */  addiu      $a2, $zero, 0x300
/* 17CFFC 8002D5BC 0C028D89 */  jal        func_800A3624
/* 17D000 8002D5C0 26520020 */   addiu     $s2, $s2, 0x20
/* 17D004 8002D5C4 322200FF */  andi       $v0, $s1, 0xff
/* 17D008 8002D5C8 2C420004 */  sltiu      $v0, $v0, 4
/* 17D00C 8002D5CC 1440FFEB */  bnez       $v0, .L8002D57C
/* 17D010 8002D5D0 322200FF */   andi      $v0, $s1, 0xff
/* 17D014 8002D5D4 00008821 */  addu       $s1, $zero, $zero
/* 17D018 8002D5D8 24120020 */  addiu      $s2, $zero, 0x20
/* 17D01C 8002D5DC 322300FF */  andi       $v1, $s1, 0xff
.L8002D5E0:
/* 17D020 8002D5E0 00031040 */  sll        $v0, $v1, 1
/* 17D024 8002D5E4 00431021 */  addu       $v0, $v0, $v1
/* 17D028 8002D5E8 00021080 */  sll        $v0, $v0, 2
/* 17D02C 8002D5EC 00531021 */  addu       $v0, $v0, $s3
/* 17D030 8002D5F0 8C44000C */  lw         $a0, 0xc($v0)
/* 17D034 8002D5F4 26450010 */  addiu      $a1, $s2, 0x10
/* 17D038 8002D5F8 00052C80 */  sll        $a1, $a1, 0x12
/* 17D03C 8002D5FC 00052C03 */  sra        $a1, $a1, 0x10
/* 17D040 8002D600 24060080 */  addiu      $a2, $zero, 0x80
/* 17D044 8002D604 26310001 */  addiu      $s1, $s1, 1
/* 17D048 8002D608 0C028D89 */  jal        func_800A3624
/* 17D04C 8002D60C 26520048 */   addiu     $s2, $s2, 0x48
/* 17D050 8002D610 322200FF */  andi       $v0, $s1, 0xff
/* 17D054 8002D614 2C420004 */  sltiu      $v0, $v0, 4
/* 17D058 8002D618 1440FFF1 */  bnez       $v0, .L8002D5E0
/* 17D05C 8002D61C 322300FF */   andi      $v1, $s1, 0xff
/* 17D060 8002D620 00008821 */  addu       $s1, $zero, $zero
/* 17D064 8002D624 24120020 */  addiu      $s2, $zero, 0x20
/* 17D068 8002D628 322300FF */  andi       $v1, $s1, 0xff
.L8002D62C:
/* 17D06C 8002D62C 00031040 */  sll        $v0, $v1, 1
/* 17D070 8002D630 00431021 */  addu       $v0, $v0, $v1
/* 17D074 8002D634 00021080 */  sll        $v0, $v0, 2
/* 17D078 8002D638 00531021 */  addu       $v0, $v0, $s3
/* 17D07C 8002D63C 8C44003C */  lw         $a0, 0x3c($v0)
/* 17D080 8002D640 26450010 */  addiu      $a1, $s2, 0x10
/* 17D084 8002D644 00052C80 */  sll        $a1, $a1, 0x12
/* 17D088 8002D648 00052C03 */  sra        $a1, $a1, 0x10
/* 17D08C 8002D64C 240601A0 */  addiu      $a2, $zero, 0x1a0
/* 17D090 8002D650 26310001 */  addiu      $s1, $s1, 1
/* 17D094 8002D654 0C028D89 */  jal        func_800A3624
/* 17D098 8002D658 26520048 */   addiu     $s2, $s2, 0x48
/* 17D09C 8002D65C 322200FF */  andi       $v0, $s1, 0xff
/* 17D0A0 8002D660 2C420004 */  sltiu      $v0, $v0, 4
/* 17D0A4 8002D664 1440FFF1 */  bnez       $v0, .L8002D62C
/* 17D0A8 8002D668 322300FF */   andi      $v1, $s1, 0xff
/* 17D0AC 8002D66C 00008821 */  addu       $s1, $zero, $zero
/* 17D0B0 8002D670 24120020 */  addiu      $s2, $zero, 0x20
/* 17D0B4 8002D674 322300FF */  andi       $v1, $s1, 0xff
.L8002D678:
/* 17D0B8 8002D678 00031040 */  sll        $v0, $v1, 1
/* 17D0BC 8002D67C 00431021 */  addu       $v0, $v0, $v1
/* 17D0C0 8002D680 00021080 */  sll        $v0, $v0, 2
/* 17D0C4 8002D684 00531021 */  addu       $v0, $v0, $s3
/* 17D0C8 8002D688 8C44006C */  lw         $a0, 0x6c($v0)
/* 17D0CC 8002D68C 26450010 */  addiu      $a1, $s2, 0x10
/* 17D0D0 8002D690 00052C80 */  sll        $a1, $a1, 0x12
/* 17D0D4 8002D694 00052C03 */  sra        $a1, $a1, 0x10
/* 17D0D8 8002D698 240602C0 */  addiu      $a2, $zero, 0x2c0
/* 17D0DC 8002D69C 26310001 */  addiu      $s1, $s1, 1
/* 17D0E0 8002D6A0 0C028D89 */  jal        func_800A3624
/* 17D0E4 8002D6A4 26520048 */   addiu     $s2, $s2, 0x48
/* 17D0E8 8002D6A8 322200FF */  andi       $v0, $s1, 0xff
/* 17D0EC 8002D6AC 2C420004 */  sltiu      $v0, $v0, 4
/* 17D0F0 8002D6B0 1440FFF1 */  bnez       $v0, .L8002D678
/* 17D0F4 8002D6B4 322300FF */   andi      $v1, $s1, 0xff
/* 17D0F8 8002D6B8 00008821 */  addu       $s1, $zero, $zero
/* 17D0FC 8002D6BC 24120008 */  addiu      $s2, $zero, 8
/* 17D100 8002D6C0 322300FF */  andi       $v1, $s1, 0xff
.L8002D6C4:
/* 17D104 8002D6C4 00031040 */  sll        $v0, $v1, 1
/* 17D108 8002D6C8 00431021 */  addu       $v0, $v0, $v1
/* 17D10C 8002D6CC 00021080 */  sll        $v0, $v0, 2
/* 17D110 8002D6D0 00531021 */  addu       $v0, $v0, $s3
/* 17D114 8002D6D4 8C4400FC */  lw         $a0, 0xfc($v0)
/* 17D118 8002D6D8 24050080 */  addiu      $a1, $zero, 0x80
/* 17D11C 8002D6DC 26460010 */  addiu      $a2, $s2, 0x10
/* 17D120 8002D6E0 00063480 */  sll        $a2, $a2, 0x12
/* 17D124 8002D6E4 00063403 */  sra        $a2, $a2, 0x10
/* 17D128 8002D6E8 26310001 */  addiu      $s1, $s1, 1
/* 17D12C 8002D6EC 0C028D89 */  jal        func_800A3624
/* 17D130 8002D6F0 26520008 */   addiu     $s2, $s2, 8
/* 17D134 8002D6F4 322200FF */  andi       $v0, $s1, 0xff
/* 17D138 8002D6F8 2C420015 */  sltiu      $v0, $v0, 0x15
/* 17D13C 8002D6FC 1440FFF1 */  bnez       $v0, .L8002D6C4
/* 17D140 8002D700 322300FF */   andi      $v1, $s1, 0xff
/* 17D144 8002D704 24020062 */  addiu      $v0, $zero, 0x62
/* 17D148 8002D708 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D14C 8002D70C 24040016 */  addiu      $a0, $zero, 0x16
/* 17D150 8002D710 24050040 */  addiu      $a1, $zero, 0x40
/* 17D154 8002D714 24060080 */  addiu      $a2, $zero, 0x80
/* 17D158 8002D718 0C026E0C */  jal        func_8009B830
/* 17D15C 8002D71C 24070001 */   addiu     $a3, $zero, 1
.L8002D720:
/* 17D160 8002D720 8E64024C */  lw         $a0, 0x24c($s3)
/* 17D164 8002D724 3C058005 */  lui        $a1, %hi(D_80051E9E)
/* 17D168 8002D728 94A51E9E */  lhu        $a1, %lo(D_80051E9E)($a1)
/* 17D16C 8002D72C 240600A0 */  addiu      $a2, $zero, 0xa0
/* 17D170 8002D730 24100010 */  addiu      $s0, $zero, 0x10
/* 17D174 8002D734 02052823 */  subu       $a1, $s0, $a1
/* 17D178 8002D738 00052C80 */  sll        $a1, $a1, 0x12
/* 17D17C 8002D73C 0C028D89 */  jal        func_800A3624
/* 17D180 8002D740 00052C03 */   sra       $a1, $a1, 0x10
/* 17D184 8002D744 8E640240 */  lw         $a0, 0x240($s3)
/* 17D188 8002D748 3C028005 */  lui        $v0, %hi(D_80051E9E)
/* 17D18C 8002D74C 94421E9E */  lhu        $v0, %lo(D_80051E9E)($v0)
/* 17D190 8002D750 240600A0 */  addiu      $a2, $zero, 0xa0
/* 17D194 8002D754 240500B0 */  addiu      $a1, $zero, 0xb0
/* 17D198 8002D758 00A22823 */  subu       $a1, $a1, $v0
/* 17D19C 8002D75C 00052C80 */  sll        $a1, $a1, 0x12
/* 17D1A0 8002D760 0C028D89 */  jal        func_800A3624
/* 17D1A4 8002D764 00052C03 */   sra       $a1, $a1, 0x10
/* 17D1A8 8002D768 8E640258 */  lw         $a0, 0x258($s3)
/* 17D1AC 8002D76C 3C028005 */  lui        $v0, %hi(D_80051E9E)
/* 17D1B0 8002D770 94421E9E */  lhu        $v0, %lo(D_80051E9E)($v0)
/* 17D1B4 8002D774 240600A0 */  addiu      $a2, $zero, 0xa0
/* 17D1B8 8002D778 2405FF72 */  addiu      $a1, $zero, -0x8e
/* 17D1BC 8002D77C 00A22823 */  subu       $a1, $a1, $v0
/* 17D1C0 8002D780 00052C80 */  sll        $a1, $a1, 0x12
/* 17D1C4 8002D784 0C028D89 */  jal        func_800A3624
/* 17D1C8 8002D788 00052C03 */   sra       $a1, $a1, 0x10
/* 17D1CC 8002D78C 3C028005 */  lui        $v0, %hi(D_80051E9C)
/* 17D1D0 8002D790 94421E9C */  lhu        $v0, %lo(D_80051E9C)($v0)
/* 17D1D4 8002D794 8E640264 */  lw         $a0, 0x264($s3)
/* 17D1D8 8002D798 240600A0 */  addiu      $a2, $zero, 0xa0
/* 17D1DC 8002D79C 02028023 */  subu       $s0, $s0, $v0
/* 17D1E0 8002D7A0 00108480 */  sll        $s0, $s0, 0x12
/* 17D1E4 8002D7A4 0C028D89 */  jal        func_800A3624
/* 17D1E8 8002D7A8 00102C03 */   sra       $a1, $s0, 0x10
/* 17D1EC 8002D7AC 8E640270 */  lw         $a0, 0x270($s3)
/* 17D1F0 8002D7B0 3C028005 */  lui        $v0, %hi(D_80051E9C)
/* 17D1F4 8002D7B4 94421E9C */  lhu        $v0, %lo(D_80051E9C)($v0)
/* 17D1F8 8002D7B8 240600A0 */  addiu      $a2, $zero, 0xa0
/* 17D1FC 8002D7BC 240500AE */  addiu      $a1, $zero, 0xae
/* 17D200 8002D7C0 00A22823 */  subu       $a1, $a1, $v0
/* 17D204 8002D7C4 00052C80 */  sll        $a1, $a1, 0x12
/* 17D208 8002D7C8 0C028D89 */  jal        func_800A3624
/* 17D20C 8002D7CC 00052C03 */   sra       $a1, $a1, 0x10
/* 17D210 8002D7D0 8E64027C */  lw         $a0, 0x27c($s3)
/* 17D214 8002D7D4 3C028005 */  lui        $v0, %hi(D_80051E9C)
/* 17D218 8002D7D8 94421E9C */  lhu        $v0, %lo(D_80051E9C)($v0)
/* 17D21C 8002D7DC 240600A0 */  addiu      $a2, $zero, 0xa0
/* 17D220 8002D7E0 2405FF70 */  addiu      $a1, $zero, -0x90
/* 17D224 8002D7E4 00A22823 */  subu       $a1, $a1, $v0
/* 17D228 8002D7E8 00052C80 */  sll        $a1, $a1, 0x12
/* 17D22C 8002D7EC 0C028D89 */  jal        func_800A3624
/* 17D230 8002D7F0 00052C03 */   sra       $a1, $a1, 0x10
/* 17D234 8002D7F4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17D238 8002D7F8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17D23C 8002D7FC 30420001 */  andi       $v0, $v0, 1
/* 17D240 8002D800 1440000B */  bnez       $v0, .L8002D830
/* 17D244 8002D804 00000000 */   nop
/* 17D248 8002D808 3C028005 */  lui        $v0, %hi(D_80051E9C)
/* 17D24C 8002D80C 94421E9C */  lhu        $v0, %lo(D_80051E9C)($v0)
/* 17D250 8002D810 3C038005 */  lui        $v1, %hi(D_80051E9E)
/* 17D254 8002D814 94631E9E */  lhu        $v1, %lo(D_80051E9E)($v1)
/* 17D258 8002D818 2442FFFF */  addiu      $v0, $v0, -1
/* 17D25C 8002D81C 24630001 */  addiu      $v1, $v1, 1
/* 17D260 8002D820 3C018005 */  lui        $at, %hi(D_80051E9C)
/* 17D264 8002D824 A4221E9C */  sh         $v0, %lo(D_80051E9C)($at)
/* 17D268 8002D828 3C018005 */  lui        $at, %hi(D_80051E9E)
/* 17D26C 8002D82C A4231E9E */  sh         $v1, %lo(D_80051E9E)($at)
.L8002D830:
/* 17D270 8002D830 8FBF0028 */  lw         $ra, 0x28($sp)
/* 17D274 8002D834 8FB30024 */  lw         $s3, 0x24($sp)
/* 17D278 8002D838 8FB20020 */  lw         $s2, 0x20($sp)
/* 17D27C 8002D83C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17D280 8002D840 8FB00018 */  lw         $s0, 0x18($sp)
/* 17D284 8002D844 03E00008 */  jr         $ra
/* 17D288 8002D848 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002D84C_17D28C
/* 17D28C 8002D84C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17D290 8002D850 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17D294 8002D854 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D298 8002D858 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D29C 8002D85C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 17D2A0 8002D860 AFBF0030 */  sw         $ra, 0x30($sp)
/* 17D2A4 8002D864 AFB1002C */  sw         $s1, 0x2c($sp)
/* 17D2A8 8002D868 AFB00028 */  sw         $s0, 0x28($sp)
/* 17D2AC 8002D86C 8C51002C */  lw         $s1, 0x2c($v0)
/* 17D2B0 8002D870 3C068005 */  lui        $a2, %hi(D_80050B58)
/* 17D2B4 8002D874 24C60B58 */  addiu      $a2, $a2, %lo(D_80050B58)
/* 17D2B8 8002D878 88C20000 */  lwl        $v0, ($a2)
/* 17D2BC 8002D87C 98C20003 */  lwr        $v0, 3($a2)
/* 17D2C0 8002D880 88C40004 */  lwl        $a0, 4($a2)
/* 17D2C4 8002D884 98C40007 */  lwr        $a0, 7($a2)
/* 17D2C8 8002D888 88C50008 */  lwl        $a1, 8($a2)
/* 17D2CC 8002D88C 98C5000B */  lwr        $a1, 0xb($a2)
/* 17D2D0 8002D890 ABA20018 */  swl        $v0, 0x18($sp)
/* 17D2D4 8002D894 BBA2001B */  swr        $v0, 0x1b($sp)
/* 17D2D8 8002D898 ABA4001C */  swl        $a0, 0x1c($sp)
/* 17D2DC 8002D89C BBA4001F */  swr        $a0, 0x1f($sp)
/* 17D2E0 8002D8A0 ABA50020 */  swl        $a1, 0x20($sp)
/* 17D2E4 8002D8A4 BBA50023 */  swr        $a1, 0x23($sp)
/* 17D2E8 8002D8A8 80C2000C */  lb         $v0, 0xc($a2)
/* 17D2EC 8002D8AC 80C4000D */  lb         $a0, 0xd($a2)
/* 17D2F0 8002D8B0 80C5000E */  lb         $a1, 0xe($a2)
/* 17D2F4 8002D8B4 A3A20024 */  sb         $v0, 0x24($sp)
/* 17D2F8 8002D8B8 A3A40025 */  sb         $a0, 0x25($sp)
/* 17D2FC 8002D8BC 14600014 */  bnez       $v1, .L8002D910
/* 17D300 8002D8C0 A3A50026 */   sb        $a1, 0x26($sp)
/* 17D304 8002D8C4 00008021 */  addu       $s0, $zero, $zero
.L8002D8C8:
/* 17D308 8002D8C8 8E240000 */  lw         $a0, ($s1)
/* 17D30C 8002D8CC 00002821 */  addu       $a1, $zero, $zero
/* 17D310 8002D8D0 0C02912A */  jal        func_800A44A8
/* 17D314 8002D8D4 00003021 */   addu      $a2, $zero, $zero
/* 17D318 8002D8D8 320300FF */  andi       $v1, $s0, 0xff
/* 17D31C 8002D8DC 00031040 */  sll        $v0, $v1, 1
/* 17D320 8002D8E0 00431021 */  addu       $v0, $v0, $v1
/* 17D324 8002D8E4 00021080 */  sll        $v0, $v0, 2
/* 17D328 8002D8E8 00511021 */  addu       $v0, $v0, $s1
/* 17D32C 8002D8EC 8C430000 */  lw         $v1, ($v0)
/* 17D330 8002D8F0 9462001E */  lhu        $v0, 0x1e($v1)
/* 17D334 8002D8F4 26100001 */  addiu      $s0, $s0, 1
/* 17D338 8002D8F8 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 17D33C 8002D8FC A462001E */  sh         $v0, 0x1e($v1)
/* 17D340 8002D900 320200FF */  andi       $v0, $s0, 0xff
/* 17D344 8002D904 2C420003 */  sltiu      $v0, $v0, 3
/* 17D348 8002D908 1440FFEF */  bnez       $v0, .L8002D8C8
/* 17D34C 8002D90C 2631000C */   addiu     $s1, $s1, 0xc
.L8002D910:
/* 17D350 8002D910 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D354 8002D914 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D358 8002D918 2402003C */  addiu      $v0, $zero, 0x3c
/* 17D35C 8002D91C 14620007 */  bne        $v1, $v0, .L8002D93C
/* 17D360 8002D920 24020064 */   addiu     $v0, $zero, 0x64
/* 17D364 8002D924 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D368 8002D928 240401A8 */  addiu      $a0, $zero, 0x1a8
/* 17D36C 8002D92C 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17D370 8002D930 24060080 */  addiu      $a2, $zero, 0x80
/* 17D374 8002D934 0C026E0C */  jal        func_8009B830
/* 17D378 8002D938 24070001 */   addiu     $a3, $zero, 1
.L8002D93C:
/* 17D37C 8002D93C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D380 8002D940 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D384 8002D944 2C62003C */  sltiu      $v0, $v1, 0x3c
/* 17D388 8002D948 1440000E */  bnez       $v0, .L8002D984
/* 17D38C 8002D94C 2462FFC4 */   addiu     $v0, $v1, -0x3c
/* 17D390 8002D950 3043FFFF */  andi       $v1, $v0, 0xffff
/* 17D394 8002D954 2C62003C */  sltiu      $v0, $v1, 0x3c
/* 17D398 8002D958 1040000A */  beqz       $v0, .L8002D984
/* 17D39C 8002D95C 00031082 */   srl       $v0, $v1, 2
/* 17D3A0 8002D960 03A21021 */  addu       $v0, $sp, $v0
/* 17D3A4 8002D964 90430018 */  lbu        $v1, 0x18($v0)
/* 17D3A8 8002D968 10600006 */  beqz       $v1, .L8002D984
/* 17D3AC 8002D96C 00031040 */   sll       $v0, $v1, 1
/* 17D3B0 8002D970 00431021 */  addu       $v0, $v0, $v1
/* 17D3B4 8002D974 00021080 */  sll        $v0, $v0, 2
/* 17D3B8 8002D978 00511021 */  addu       $v0, $v0, $s1
/* 17D3BC 8002D97C 0C028A40 */  jal        func_800A2900
/* 17D3C0 8002D980 8C440000 */   lw        $a0, ($v0)
.L8002D984:
/* 17D3C4 8002D984 8FBF0030 */  lw         $ra, 0x30($sp)
/* 17D3C8 8002D988 8FB1002C */  lw         $s1, 0x2c($sp)
/* 17D3CC 8002D98C 8FB00028 */  lw         $s0, 0x28($sp)
/* 17D3D0 8002D990 03E00008 */  jr         $ra
/* 17D3D4 8002D994 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8002D998_17D3D8
/* 17D3D8 8002D998 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17D3DC 8002D99C AFBF0060 */  sw         $ra, 0x60($sp)
/* 17D3E0 8002D9A0 27A70030 */  addiu      $a3, $sp, 0x30
/* 17D3E4 8002D9A4 3C068005 */  lui        $a2, %hi(D_80050B68)
/* 17D3E8 8002D9A8 24C60B68 */  addiu      $a2, $a2, %lo(D_80050B68)
/* 17D3EC 8002D9AC 24C80020 */  addiu      $t0, $a2, 0x20
.L8002D9B0:
/* 17D3F0 8002D9B0 8CC20000 */  lw         $v0, ($a2)
/* 17D3F4 8002D9B4 8CC30004 */  lw         $v1, 4($a2)
/* 17D3F8 8002D9B8 8CC40008 */  lw         $a0, 8($a2)
/* 17D3FC 8002D9BC 8CC5000C */  lw         $a1, 0xc($a2)
/* 17D400 8002D9C0 ACE20000 */  sw         $v0, ($a3)
/* 17D404 8002D9C4 ACE30004 */  sw         $v1, 4($a3)
/* 17D408 8002D9C8 ACE40008 */  sw         $a0, 8($a3)
/* 17D40C 8002D9CC ACE5000C */  sw         $a1, 0xc($a3)
/* 17D410 8002D9D0 24C60010 */  addiu      $a2, $a2, 0x10
/* 17D414 8002D9D4 14C8FFF6 */  bne        $a2, $t0, .L8002D9B0
/* 17D418 8002D9D8 24E70010 */   addiu     $a3, $a3, 0x10
/* 17D41C 8002D9DC 8CC20000 */  lw         $v0, ($a2)
/* 17D420 8002D9E0 8CC30004 */  lw         $v1, 4($a2)
/* 17D424 8002D9E4 8CC40008 */  lw         $a0, 8($a2)
/* 17D428 8002D9E8 ACE20000 */  sw         $v0, ($a3)
/* 17D42C 8002D9EC ACE30004 */  sw         $v1, 4($a3)
/* 17D430 8002D9F0 ACE40008 */  sw         $a0, 8($a3)
/* 17D434 8002D9F4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D438 8002D9F8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D43C 8002D9FC 10600005 */  beqz       $v1, .L8002DA14
/* 17D440 8002DA00 2402000A */   addiu     $v0, $zero, 0xa
/* 17D444 8002DA04 10620018 */  beq        $v1, $v0, .L8002DA68
/* 17D448 8002DA08 24020063 */   addiu     $v0, $zero, 0x63
/* 17D44C 8002DA0C 0800B6A0 */  j          .L8002DA80
/* 17D450 8002DA10 00000000 */   nop
.L8002DA14:
/* 17D454 8002DA14 8FA20040 */  lw         $v0, 0x40($sp)
/* 17D458 8002DA18 8FA30044 */  lw         $v1, 0x44($sp)
/* 17D45C 8002DA1C 8FA40048 */  lw         $a0, 0x48($sp)
/* 17D460 8002DA20 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17D464 8002DA24 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D468 8002DA28 AFA30014 */  sw         $v1, 0x14($sp)
/* 17D46C 8002DA2C AFA40018 */  sw         $a0, 0x18($sp)
/* 17D470 8002DA30 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17D474 8002DA34 8FA20050 */  lw         $v0, 0x50($sp)
/* 17D478 8002DA38 8FA30054 */  lw         $v1, 0x54($sp)
/* 17D47C 8002DA3C 8FA40058 */  lw         $a0, 0x58($sp)
/* 17D480 8002DA40 AFA20020 */  sw         $v0, 0x20($sp)
/* 17D484 8002DA44 AFA30024 */  sw         $v1, 0x24($sp)
/* 17D488 8002DA48 AFA40028 */  sw         $a0, 0x28($sp)
/* 17D48C 8002DA4C 8FA40030 */  lw         $a0, 0x30($sp)
/* 17D490 8002DA50 8FA50034 */  lw         $a1, 0x34($sp)
/* 17D494 8002DA54 8FA60038 */  lw         $a2, 0x38($sp)
/* 17D498 8002DA58 0C0099F7 */  jal        func_800267DC_17621C
/* 17D49C 8002DA5C 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17D4A0 8002DA60 0800B6A0 */  j          .L8002DA80
/* 17D4A4 8002DA64 00000000 */   nop
.L8002DA68:
/* 17D4A8 8002DA68 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D4AC 8002DA6C 24040098 */  addiu      $a0, $zero, 0x98
/* 17D4B0 8002DA70 24050080 */  addiu      $a1, $zero, 0x80
/* 17D4B4 8002DA74 24060080 */  addiu      $a2, $zero, 0x80
/* 17D4B8 8002DA78 0C026E0C */  jal        func_8009B830
/* 17D4BC 8002DA7C 24070001 */   addiu     $a3, $zero, 1
.L8002DA80:
/* 17D4C0 8002DA80 8FBF0060 */  lw         $ra, 0x60($sp)
/* 17D4C4 8002DA84 03E00008 */  jr         $ra
/* 17D4C8 8002DA88 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002DA8C_17D4CC
/* 17D4CC 8002DA8C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17D4D0 8002DA90 27A70030 */  addiu      $a3, $sp, 0x30
/* 17D4D4 8002DA94 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17D4D8 8002DA98 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17D4DC 8002DA9C 3C068005 */  lui        $a2, %hi(D_80050B94)
/* 17D4E0 8002DAA0 24C60B94 */  addiu      $a2, $a2, %lo(D_80050B94)
/* 17D4E4 8002DAA4 24C80020 */  addiu      $t0, $a2, 0x20
/* 17D4E8 8002DAA8 AFBF0068 */  sw         $ra, 0x68($sp)
/* 17D4EC 8002DAAC AFB10064 */  sw         $s1, 0x64($sp)
/* 17D4F0 8002DAB0 AFB00060 */  sw         $s0, 0x60($sp)
/* 17D4F4 8002DAB4 8C51002C */  lw         $s1, 0x2c($v0)
/* 17D4F8 8002DAB8 8C500028 */  lw         $s0, 0x28($v0)
.L8002DABC:
/* 17D4FC 8002DABC 8CC20000 */  lw         $v0, ($a2)
/* 17D500 8002DAC0 8CC30004 */  lw         $v1, 4($a2)
/* 17D504 8002DAC4 8CC40008 */  lw         $a0, 8($a2)
/* 17D508 8002DAC8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17D50C 8002DACC ACE20000 */  sw         $v0, ($a3)
/* 17D510 8002DAD0 ACE30004 */  sw         $v1, 4($a3)
/* 17D514 8002DAD4 ACE40008 */  sw         $a0, 8($a3)
/* 17D518 8002DAD8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17D51C 8002DADC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17D520 8002DAE0 14C8FFF6 */  bne        $a2, $t0, .L8002DABC
/* 17D524 8002DAE4 24E70010 */   addiu     $a3, $a3, 0x10
/* 17D528 8002DAE8 8CC20000 */  lw         $v0, ($a2)
/* 17D52C 8002DAEC 8CC30004 */  lw         $v1, 4($a2)
/* 17D530 8002DAF0 8CC40008 */  lw         $a0, 8($a2)
/* 17D534 8002DAF4 ACE20000 */  sw         $v0, ($a3)
/* 17D538 8002DAF8 ACE30004 */  sw         $v1, 4($a3)
/* 17D53C 8002DAFC ACE40008 */  sw         $a0, 8($a3)
/* 17D540 8002DB00 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D544 8002DB04 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D548 8002DB08 10600005 */  beqz       $v1, .L8002DB20
/* 17D54C 8002DB0C 2402003C */   addiu     $v0, $zero, 0x3c
/* 17D550 8002DB10 1062001F */  beq        $v1, $v0, .L8002DB90
/* 17D554 8002DB14 24020064 */   addiu     $v0, $zero, 0x64
/* 17D558 8002DB18 0800B6EA */  j          .L8002DBA8
/* 17D55C 8002DB1C 00000000 */   nop
.L8002DB20:
/* 17D560 8002DB20 8FA20040 */  lw         $v0, 0x40($sp)
/* 17D564 8002DB24 8FA30044 */  lw         $v1, 0x44($sp)
/* 17D568 8002DB28 8FA40048 */  lw         $a0, 0x48($sp)
/* 17D56C 8002DB2C 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17D570 8002DB30 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D574 8002DB34 AFA30014 */  sw         $v1, 0x14($sp)
/* 17D578 8002DB38 AFA40018 */  sw         $a0, 0x18($sp)
/* 17D57C 8002DB3C AFA5001C */  sw         $a1, 0x1c($sp)
/* 17D580 8002DB40 8FA20050 */  lw         $v0, 0x50($sp)
/* 17D584 8002DB44 8FA30054 */  lw         $v1, 0x54($sp)
/* 17D588 8002DB48 8FA40058 */  lw         $a0, 0x58($sp)
/* 17D58C 8002DB4C AFA20020 */  sw         $v0, 0x20($sp)
/* 17D590 8002DB50 AFA30024 */  sw         $v1, 0x24($sp)
/* 17D594 8002DB54 AFA40028 */  sw         $a0, 0x28($sp)
/* 17D598 8002DB58 8FA40030 */  lw         $a0, 0x30($sp)
/* 17D59C 8002DB5C 8FA50034 */  lw         $a1, 0x34($sp)
/* 17D5A0 8002DB60 8FA60038 */  lw         $a2, 0x38($sp)
/* 17D5A4 8002DB64 0C0099F7 */  jal        func_800267DC_17621C
/* 17D5A8 8002DB68 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17D5AC 8002DB6C 8E040068 */  lw         $a0, 0x68($s0)
/* 17D5B0 8002DB70 3C058005 */  lui        $a1, %hi(D_80050AB0)
/* 17D5B4 8002DB74 24A50AB0 */  addiu      $a1, $a1, %lo(D_80050AB0)
/* 17D5B8 8002DB78 3C018005 */  lui        $at, %hi(D_80051EA0)
/* 17D5BC 8002DB7C A0201EA0 */  sb         $zero, %lo(D_80051EA0)($at)
/* 17D5C0 8002DB80 0C0286A4 */  jal        func_800A1A90
/* 17D5C4 8002DB84 00003021 */   addu      $a2, $zero, $zero
/* 17D5C8 8002DB88 0800B6EA */  j          .L8002DBA8
/* 17D5CC 8002DB8C 00000000 */   nop
.L8002DB90:
/* 17D5D0 8002DB90 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D5D4 8002DB94 240401A3 */  addiu      $a0, $zero, 0x1a3
/* 17D5D8 8002DB98 240500E0 */  addiu      $a1, $zero, 0xe0
/* 17D5DC 8002DB9C 24060080 */  addiu      $a2, $zero, 0x80
/* 17D5E0 8002DBA0 0C026E0C */  jal        func_8009B830
/* 17D5E4 8002DBA4 24070001 */   addiu     $a3, $zero, 1
.L8002DBA8:
/* 17D5E8 8002DBA8 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17D5EC 8002DBAC 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17D5F0 8002DBB0 2C42003C */  sltiu      $v0, $v0, 0x3c
/* 17D5F4 8002DBB4 14400009 */  bnez       $v0, .L8002DBDC
/* 17D5F8 8002DBB8 00000000 */   nop
/* 17D5FC 8002DBBC 3C038005 */  lui        $v1, %hi(D_80051EA0)
/* 17D600 8002DBC0 90631EA0 */  lbu        $v1, %lo(D_80051EA0)($v1)
/* 17D604 8002DBC4 2C6200F8 */  sltiu      $v0, $v1, 0xf8
/* 17D608 8002DBC8 14400002 */  bnez       $v0, .L8002DBD4
/* 17D60C 8002DBCC 24620008 */   addiu     $v0, $v1, 8
/* 17D610 8002DBD0 240200FF */  addiu      $v0, $zero, 0xff
.L8002DBD4:
/* 17D614 8002DBD4 3C018005 */  lui        $at, %hi(D_80051EA0)
/* 17D618 8002DBD8 A0221EA0 */  sb         $v0, %lo(D_80051EA0)($at)
.L8002DBDC:
/* 17D61C 8002DBDC 3C028005 */  lui        $v0, %hi(D_80051EA0)
/* 17D620 8002DBE0 90421EA0 */  lbu        $v0, %lo(D_80051EA0)($v0)
/* 17D624 8002DBE4 240500FF */  addiu      $a1, $zero, 0xff
/* 17D628 8002DBE8 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D62C 8002DBEC 8E24000C */  lw         $a0, 0xc($s1)
/* 17D630 8002DBF0 240600FF */  addiu      $a2, $zero, 0xff
/* 17D634 8002DBF4 0C028E41 */  jal        func_800A3904
/* 17D638 8002DBF8 240700FF */   addiu     $a3, $zero, 0xff
/* 17D63C 8002DBFC 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17D640 8002DC00 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17D644 8002DC04 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D648 8002DC08 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D64C 8002DC0C 9442000A */  lhu        $v0, 0xa($v0)
/* 17D650 8002DC10 14620008 */  bne        $v1, $v0, .L8002DC34
/* 17D654 8002DC14 2404FFFE */   addiu     $a0, $zero, -2
/* 17D658 8002DC18 AFA00010 */  sw         $zero, 0x10($sp)
/* 17D65C 8002DC1C 2405FFFF */  addiu      $a1, $zero, -1
/* 17D660 8002DC20 2406001E */  addiu      $a2, $zero, 0x1e
/* 17D664 8002DC24 0C026C9A */  jal        func_8009B268
/* 17D668 8002DC28 00003821 */   addu      $a3, $zero, $zero
/* 17D66C 8002DC2C 0C026E5D */  jal        func_8009B974
/* 17D670 8002DC30 2404001E */   addiu     $a0, $zero, 0x1e
.L8002DC34:
/* 17D674 8002DC34 8FBF0068 */  lw         $ra, 0x68($sp)
/* 17D678 8002DC38 8FB10064 */  lw         $s1, 0x64($sp)
/* 17D67C 8002DC3C 8FB00060 */  lw         $s0, 0x60($sp)
/* 17D680 8002DC40 03E00008 */  jr         $ra
/* 17D684 8002DC44 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002DC48_17D688
/* 17D688 8002DC48 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17D68C 8002DC4C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17D690 8002DC50 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D694 8002DC54 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D698 8002DC58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17D69C 8002DC5C AFBF001C */  sw         $ra, 0x1c($sp)
/* 17D6A0 8002DC60 AFB20018 */  sw         $s2, 0x18($sp)
/* 17D6A4 8002DC64 AFB10014 */  sw         $s1, 0x14($sp)
/* 17D6A8 8002DC68 AFB00010 */  sw         $s0, 0x10($sp)
/* 17D6AC 8002DC6C 1460006F */  bnez       $v1, .L8002DE2C
/* 17D6B0 8002DC70 8C52002C */   lw        $s2, 0x2c($v0)
/* 17D6B4 8002DC74 24100006 */  addiu      $s0, $zero, 6
/* 17D6B8 8002DC78 24110018 */  addiu      $s1, $zero, 0x18
/* 17D6BC 8002DC7C 320300FF */  andi       $v1, $s0, 0xff
.L8002DC80:
/* 17D6C0 8002DC80 00031040 */  sll        $v0, $v1, 1
/* 17D6C4 8002DC84 00431021 */  addu       $v0, $v0, $v1
/* 17D6C8 8002DC88 00021080 */  sll        $v0, $v0, 2
/* 17D6CC 8002DC8C 00521021 */  addu       $v0, $v0, $s2
/* 17D6D0 8002DC90 8C440000 */  lw         $a0, ($v0)
/* 17D6D4 8002DC94 26250010 */  addiu      $a1, $s1, 0x10
/* 17D6D8 8002DC98 00052C80 */  sll        $a1, $a1, 0x12
/* 17D6DC 8002DC9C 00052C03 */  sra        $a1, $a1, 0x10
/* 17D6E0 8002DCA0 24060040 */  addiu      $a2, $zero, 0x40
/* 17D6E4 8002DCA4 26100001 */  addiu      $s0, $s0, 1
/* 17D6E8 8002DCA8 0C028D89 */  jal        func_800A3624
/* 17D6EC 8002DCAC 26310060 */   addiu     $s1, $s1, 0x60
/* 17D6F0 8002DCB0 320200FF */  andi       $v0, $s0, 0xff
/* 17D6F4 8002DCB4 2C420009 */  sltiu      $v0, $v0, 9
/* 17D6F8 8002DCB8 1440FFF1 */  bnez       $v0, .L8002DC80
/* 17D6FC 8002DCBC 320300FF */   andi      $v1, $s0, 0xff
/* 17D700 8002DCC0 24100009 */  addiu      $s0, $zero, 9
/* 17D704 8002DCC4 24110048 */  addiu      $s1, $zero, 0x48
/* 17D708 8002DCC8 320300FF */  andi       $v1, $s0, 0xff
.L8002DCCC:
/* 17D70C 8002DCCC 00031040 */  sll        $v0, $v1, 1
/* 17D710 8002DCD0 00431021 */  addu       $v0, $v0, $v1
/* 17D714 8002DCD4 00021080 */  sll        $v0, $v0, 2
/* 17D718 8002DCD8 00521021 */  addu       $v0, $v0, $s2
/* 17D71C 8002DCDC 8C440000 */  lw         $a0, ($v0)
/* 17D720 8002DCE0 26250010 */  addiu      $a1, $s1, 0x10
/* 17D724 8002DCE4 00052C80 */  sll        $a1, $a1, 0x12
/* 17D728 8002DCE8 00052C03 */  sra        $a1, $a1, 0x10
/* 17D72C 8002DCEC 24060100 */  addiu      $a2, $zero, 0x100
/* 17D730 8002DCF0 26100001 */  addiu      $s0, $s0, 1
/* 17D734 8002DCF4 0C028D89 */  jal        func_800A3624
/* 17D738 8002DCF8 26310060 */   addiu     $s1, $s1, 0x60
/* 17D73C 8002DCFC 320200FF */  andi       $v0, $s0, 0xff
/* 17D740 8002DD00 2C42000C */  sltiu      $v0, $v0, 0xc
/* 17D744 8002DD04 1440FFF1 */  bnez       $v0, .L8002DCCC
/* 17D748 8002DD08 320300FF */   andi      $v1, $s0, 0xff
/* 17D74C 8002DD0C 2410000C */  addiu      $s0, $zero, 0xc
/* 17D750 8002DD10 24110018 */  addiu      $s1, $zero, 0x18
/* 17D754 8002DD14 320300FF */  andi       $v1, $s0, 0xff
.L8002DD18:
/* 17D758 8002DD18 00031040 */  sll        $v0, $v1, 1
/* 17D75C 8002DD1C 00431021 */  addu       $v0, $v0, $v1
/* 17D760 8002DD20 00021080 */  sll        $v0, $v0, 2
/* 17D764 8002DD24 00521021 */  addu       $v0, $v0, $s2
/* 17D768 8002DD28 8C440000 */  lw         $a0, ($v0)
/* 17D76C 8002DD2C 26250010 */  addiu      $a1, $s1, 0x10
/* 17D770 8002DD30 00052C80 */  sll        $a1, $a1, 0x12
/* 17D774 8002DD34 00052C03 */  sra        $a1, $a1, 0x10
/* 17D778 8002DD38 240601C0 */  addiu      $a2, $zero, 0x1c0
/* 17D77C 8002DD3C 26100001 */  addiu      $s0, $s0, 1
/* 17D780 8002DD40 0C028D89 */  jal        func_800A3624
/* 17D784 8002DD44 26310060 */   addiu     $s1, $s1, 0x60
/* 17D788 8002DD48 320200FF */  andi       $v0, $s0, 0xff
/* 17D78C 8002DD4C 2C42000F */  sltiu      $v0, $v0, 0xf
/* 17D790 8002DD50 1440FFF1 */  bnez       $v0, .L8002DD18
/* 17D794 8002DD54 320300FF */   andi      $v1, $s0, 0xff
/* 17D798 8002DD58 2410000F */  addiu      $s0, $zero, 0xf
/* 17D79C 8002DD5C 24110048 */  addiu      $s1, $zero, 0x48
/* 17D7A0 8002DD60 320300FF */  andi       $v1, $s0, 0xff
.L8002DD64:
/* 17D7A4 8002DD64 00031040 */  sll        $v0, $v1, 1
/* 17D7A8 8002DD68 00431021 */  addu       $v0, $v0, $v1
/* 17D7AC 8002DD6C 00021080 */  sll        $v0, $v0, 2
/* 17D7B0 8002DD70 00521021 */  addu       $v0, $v0, $s2
/* 17D7B4 8002DD74 8C440000 */  lw         $a0, ($v0)
/* 17D7B8 8002DD78 26250010 */  addiu      $a1, $s1, 0x10
/* 17D7BC 8002DD7C 00052C80 */  sll        $a1, $a1, 0x12
/* 17D7C0 8002DD80 00052C03 */  sra        $a1, $a1, 0x10
/* 17D7C4 8002DD84 24060280 */  addiu      $a2, $zero, 0x280
/* 17D7C8 8002DD88 26100001 */  addiu      $s0, $s0, 1
/* 17D7CC 8002DD8C 0C028D89 */  jal        func_800A3624
/* 17D7D0 8002DD90 26310060 */   addiu     $s1, $s1, 0x60
/* 17D7D4 8002DD94 320200FF */  andi       $v0, $s0, 0xff
/* 17D7D8 8002DD98 2C420011 */  sltiu      $v0, $v0, 0x11
/* 17D7DC 8002DD9C 1440FFF1 */  bnez       $v0, .L8002DD64
/* 17D7E0 8002DDA0 320300FF */   andi      $v1, $s0, 0xff
/* 17D7E4 8002DDA4 24100011 */  addiu      $s0, $zero, 0x11
/* 17D7E8 8002DDA8 24110018 */  addiu      $s1, $zero, 0x18
/* 17D7EC 8002DDAC 320300FF */  andi       $v1, $s0, 0xff
.L8002DDB0:
/* 17D7F0 8002DDB0 00031040 */  sll        $v0, $v1, 1
/* 17D7F4 8002DDB4 00431021 */  addu       $v0, $v0, $v1
/* 17D7F8 8002DDB8 00021080 */  sll        $v0, $v0, 2
/* 17D7FC 8002DDBC 00521021 */  addu       $v0, $v0, $s2
/* 17D800 8002DDC0 8C440000 */  lw         $a0, ($v0)
/* 17D804 8002DDC4 26250010 */  addiu      $a1, $s1, 0x10
/* 17D808 8002DDC8 00052C80 */  sll        $a1, $a1, 0x12
/* 17D80C 8002DDCC 00052C03 */  sra        $a1, $a1, 0x10
/* 17D810 8002DDD0 24060340 */  addiu      $a2, $zero, 0x340
/* 17D814 8002DDD4 26100001 */  addiu      $s0, $s0, 1
/* 17D818 8002DDD8 0C028D89 */  jal        func_800A3624
/* 17D81C 8002DDDC 26310060 */   addiu     $s1, $s1, 0x60
/* 17D820 8002DDE0 320200FF */  andi       $v0, $s0, 0xff
/* 17D824 8002DDE4 2C420014 */  sltiu      $v0, $v0, 0x14
/* 17D828 8002DDE8 1440FFF1 */  bnez       $v0, .L8002DDB0
/* 17D82C 8002DDEC 320300FF */   andi      $v1, $s0, 0xff
/* 17D830 8002DDF0 24100001 */  addiu      $s0, $zero, 1
/* 17D834 8002DDF4 320200FF */  andi       $v0, $s0, 0xff
.L8002DDF8:
/* 17D838 8002DDF8 00021840 */  sll        $v1, $v0, 1
/* 17D83C 8002DDFC 00621821 */  addu       $v1, $v1, $v0
/* 17D840 8002DE00 00031880 */  sll        $v1, $v1, 2
/* 17D844 8002DE04 00721821 */  addu       $v1, $v1, $s2
/* 17D848 8002DE08 8C640000 */  lw         $a0, ($v1)
/* 17D84C 8002DE0C 00002821 */  addu       $a1, $zero, $zero
/* 17D850 8002DE10 00003021 */  addu       $a2, $zero, $zero
/* 17D854 8002DE14 0C02912A */  jal        func_800A44A8
/* 17D858 8002DE18 26100001 */   addiu     $s0, $s0, 1
/* 17D85C 8002DE1C 320200FF */  andi       $v0, $s0, 0xff
/* 17D860 8002DE20 2C420003 */  sltiu      $v0, $v0, 3
/* 17D864 8002DE24 1440FFF4 */  bnez       $v0, .L8002DDF8
/* 17D868 8002DE28 320200FF */   andi      $v0, $s0, 0xff
.L8002DE2C:
/* 17D86C 8002DE2C 8E44000C */  lw         $a0, 0xc($s2)
/* 17D870 8002DE30 24050240 */  addiu      $a1, $zero, 0x240
/* 17D874 8002DE34 0C028D89 */  jal        func_800A3624
/* 17D878 8002DE38 24060040 */   addiu     $a2, $zero, 0x40
/* 17D87C 8002DE3C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 17D880 8002DE40 8FB20018 */  lw         $s2, 0x18($sp)
/* 17D884 8002DE44 8FB10014 */  lw         $s1, 0x14($sp)
/* 17D888 8002DE48 8FB00010 */  lw         $s0, 0x10($sp)
/* 17D88C 8002DE4C 03E00008 */  jr         $ra
/* 17D890 8002DE50 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002DE54_17D894
/* 17D894 8002DE54 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17D898 8002DE58 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17D89C 8002DE5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17D8A0 8002DE60 2402003C */  addiu      $v0, $zero, 0x3c
/* 17D8A4 8002DE64 14620008 */  bne        $v1, $v0, .L8002DE88
/* 17D8A8 8002DE68 AFBF0018 */   sw        $ra, 0x18($sp)
/* 17D8AC 8002DE6C 24020064 */  addiu      $v0, $zero, 0x64
/* 17D8B0 8002DE70 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D8B4 8002DE74 24040101 */  addiu      $a0, $zero, 0x101
/* 17D8B8 8002DE78 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17D8BC 8002DE7C 24060080 */  addiu      $a2, $zero, 0x80
/* 17D8C0 8002DE80 0C026E0C */  jal        func_8009B830
/* 17D8C4 8002DE84 24070001 */   addiu     $a3, $zero, 1
.L8002DE88:
/* 17D8C8 8002DE88 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17D8CC 8002DE8C 03E00008 */  jr         $ra
/* 17D8D0 8002DE90 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002DE94_17D8D4
/* 17D8D4 8002DE94 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17D8D8 8002DE98 27A70030 */  addiu      $a3, $sp, 0x30
/* 17D8DC 8002DE9C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17D8E0 8002DEA0 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17D8E4 8002DEA4 3C068005 */  lui        $a2, %hi(D_80050BC0)
/* 17D8E8 8002DEA8 24C60BC0 */  addiu      $a2, $a2, %lo(D_80050BC0)
/* 17D8EC 8002DEAC 24C80020 */  addiu      $t0, $a2, 0x20
/* 17D8F0 8002DEB0 AFBF006C */  sw         $ra, 0x6c($sp)
/* 17D8F4 8002DEB4 AFB20068 */  sw         $s2, 0x68($sp)
/* 17D8F8 8002DEB8 AFB10064 */  sw         $s1, 0x64($sp)
/* 17D8FC 8002DEBC AFB00060 */  sw         $s0, 0x60($sp)
/* 17D900 8002DEC0 8C51002C */  lw         $s1, 0x2c($v0)
.L8002DEC4:
/* 17D904 8002DEC4 8CC20000 */  lw         $v0, ($a2)
/* 17D908 8002DEC8 8CC30004 */  lw         $v1, 4($a2)
/* 17D90C 8002DECC 8CC40008 */  lw         $a0, 8($a2)
/* 17D910 8002DED0 8CC5000C */  lw         $a1, 0xc($a2)
/* 17D914 8002DED4 ACE20000 */  sw         $v0, ($a3)
/* 17D918 8002DED8 ACE30004 */  sw         $v1, 4($a3)
/* 17D91C 8002DEDC ACE40008 */  sw         $a0, 8($a3)
/* 17D920 8002DEE0 ACE5000C */  sw         $a1, 0xc($a3)
/* 17D924 8002DEE4 24C60010 */  addiu      $a2, $a2, 0x10
/* 17D928 8002DEE8 14C8FFF6 */  bne        $a2, $t0, .L8002DEC4
/* 17D92C 8002DEEC 24E70010 */   addiu     $a3, $a3, 0x10
/* 17D930 8002DEF0 8CC20000 */  lw         $v0, ($a2)
/* 17D934 8002DEF4 8CC30004 */  lw         $v1, 4($a2)
/* 17D938 8002DEF8 8CC40008 */  lw         $a0, 8($a2)
/* 17D93C 8002DEFC ACE20000 */  sw         $v0, ($a3)
/* 17D940 8002DF00 ACE30004 */  sw         $v1, 4($a3)
/* 17D944 8002DF04 ACE40008 */  sw         $a0, 8($a3)
/* 17D948 8002DF08 3C128005 */  lui        $s2, %hi(D_80052038)
/* 17D94C 8002DF0C 96522038 */  lhu        $s2, %lo(D_80052038)($s2)
/* 17D950 8002DF10 1640003A */  bnez       $s2, .L8002DFFC
/* 17D954 8002DF14 00000000 */   nop
/* 17D958 8002DF18 8FA20040 */  lw         $v0, 0x40($sp)
/* 17D95C 8002DF1C 8FA30044 */  lw         $v1, 0x44($sp)
/* 17D960 8002DF20 8FA40048 */  lw         $a0, 0x48($sp)
/* 17D964 8002DF24 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17D968 8002DF28 AFA20010 */  sw         $v0, 0x10($sp)
/* 17D96C 8002DF2C AFA30014 */  sw         $v1, 0x14($sp)
/* 17D970 8002DF30 AFA40018 */  sw         $a0, 0x18($sp)
/* 17D974 8002DF34 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17D978 8002DF38 8FA20050 */  lw         $v0, 0x50($sp)
/* 17D97C 8002DF3C 8FA30054 */  lw         $v1, 0x54($sp)
/* 17D980 8002DF40 8FA40058 */  lw         $a0, 0x58($sp)
/* 17D984 8002DF44 AFA20020 */  sw         $v0, 0x20($sp)
/* 17D988 8002DF48 AFA30024 */  sw         $v1, 0x24($sp)
/* 17D98C 8002DF4C AFA40028 */  sw         $a0, 0x28($sp)
/* 17D990 8002DF50 8FA40030 */  lw         $a0, 0x30($sp)
/* 17D994 8002DF54 8FA50034 */  lw         $a1, 0x34($sp)
/* 17D998 8002DF58 8FA60038 */  lw         $a2, 0x38($sp)
/* 17D99C 8002DF5C 8FA7003C */  lw         $a3, 0x3c($sp)
/* 17D9A0 8002DF60 0C0099F7 */  jal        func_800267DC_17621C
/* 17D9A4 8002DF64 00008021 */   addu      $s0, $zero, $zero
/* 17D9A8 8002DF68 24040020 */  addiu      $a0, $zero, 0x20
/* 17D9AC 8002DF6C 00002821 */  addu       $a1, $zero, $zero
/* 17D9B0 8002DF70 00003021 */  addu       $a2, $zero, $zero
/* 17D9B4 8002DF74 240700FF */  addiu      $a3, $zero, 0xff
/* 17D9B8 8002DF78 240200FF */  addiu      $v0, $zero, 0xff
/* 17D9BC 8002DF7C AFA20010 */  sw         $v0, 0x10($sp)
/* 17D9C0 8002DF80 0C027101 */  jal        func_8009C404
/* 17D9C4 8002DF84 AFA20014 */   sw        $v0, 0x14($sp)
/* 17D9C8 8002DF88 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17D9CC 8002DF8C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17D9D0 8002DF90 9442000E */  lhu        $v0, 0xe($v0)
/* 17D9D4 8002DF94 0242102B */  sltu       $v0, $s2, $v0
/* 17D9D8 8002DF98 50400013 */  beql       $v0, $zero, .L8002DFE8
/* 17D9DC 8002DF9C AFA00010 */   sw        $zero, 0x10($sp)
/* 17D9E0 8002DFA0 320300FF */  andi       $v1, $s0, 0xff
.L8002DFA4:
/* 17D9E4 8002DFA4 00031040 */  sll        $v0, $v1, 1
/* 17D9E8 8002DFA8 00431021 */  addu       $v0, $v0, $v1
/* 17D9EC 8002DFAC 00021080 */  sll        $v0, $v0, 2
/* 17D9F0 8002DFB0 00511021 */  addu       $v0, $v0, $s1
/* 17D9F4 8002DFB4 8C440000 */  lw         $a0, ($v0)
/* 17D9F8 8002DFB8 00002821 */  addu       $a1, $zero, $zero
/* 17D9FC 8002DFBC 0C02912A */  jal        func_800A44A8
/* 17DA00 8002DFC0 00003021 */   addu      $a2, $zero, $zero
/* 17DA04 8002DFC4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17DA08 8002DFC8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17DA0C 8002DFCC 9443000E */  lhu        $v1, 0xe($v0)
/* 17DA10 8002DFD0 26100001 */  addiu      $s0, $s0, 1
/* 17DA14 8002DFD4 320200FF */  andi       $v0, $s0, 0xff
/* 17DA18 8002DFD8 0043102B */  sltu       $v0, $v0, $v1
/* 17DA1C 8002DFDC 1440FFF1 */  bnez       $v0, .L8002DFA4
/* 17DA20 8002DFE0 320300FF */   andi      $v1, $s0, 0xff
/* 17DA24 8002DFE4 AFA00010 */  sw         $zero, 0x10($sp)
.L8002DFE8:
/* 17DA28 8002DFE8 24040010 */  addiu      $a0, $zero, 0x10
/* 17DA2C 8002DFEC 2405FFFF */  addiu      $a1, $zero, -1
/* 17DA30 8002DFF0 2406001E */  addiu      $a2, $zero, 0x1e
/* 17DA34 8002DFF4 0C026C9A */  jal        func_8009B268
/* 17DA38 8002DFF8 2407003C */   addiu     $a3, $zero, 0x3c
.L8002DFFC:
/* 17DA3C 8002DFFC 8E240030 */  lw         $a0, 0x30($s1)
/* 17DA40 8002E000 00002821 */  addu       $a1, $zero, $zero
/* 17DA44 8002E004 0C02933E */  jal        func_800A4CF8
/* 17DA48 8002E008 2406000A */   addiu     $a2, $zero, 0xa
/* 17DA4C 8002E00C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17DA50 8002E010 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17DA54 8002E014 3C028888 */  lui        $v0, 0x8888
/* 17DA58 8002E018 34428889 */  ori        $v0, $v0, 0x8889
/* 17DA5C 8002E01C 00620019 */  multu      $v1, $v0
/* 17DA60 8002E020 00004810 */  mfhi       $t1
/* 17DA64 8002E024 00092142 */  srl        $a0, $t1, 5
/* 17DA68 8002E028 00041100 */  sll        $v0, $a0, 4
/* 17DA6C 8002E02C 00441023 */  subu       $v0, $v0, $a0
/* 17DA70 8002E030 00021080 */  sll        $v0, $v0, 2
/* 17DA74 8002E034 00621823 */  subu       $v1, $v1, $v0
/* 17DA78 8002E038 3063FFFF */  andi       $v1, $v1, 0xffff
/* 17DA7C 8002E03C 14600007 */  bnez       $v1, .L8002E05C
/* 17DA80 8002E040 24020064 */   addiu     $v0, $zero, 0x64
/* 17DA84 8002E044 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DA88 8002E048 24040021 */  addiu      $a0, $zero, 0x21
/* 17DA8C 8002E04C 24050080 */  addiu      $a1, $zero, 0x80
/* 17DA90 8002E050 24060080 */  addiu      $a2, $zero, 0x80
/* 17DA94 8002E054 0C026E0C */  jal        func_8009B830
/* 17DA98 8002E058 24070001 */   addiu     $a3, $zero, 1
.L8002E05C:
/* 17DA9C 8002E05C 8FBF006C */  lw         $ra, 0x6c($sp)
/* 17DAA0 8002E060 8FB20068 */  lw         $s2, 0x68($sp)
/* 17DAA4 8002E064 8FB10064 */  lw         $s1, 0x64($sp)
/* 17DAA8 8002E068 8FB00060 */  lw         $s0, 0x60($sp)
/* 17DAAC 8002E06C 03E00008 */  jr         $ra
/* 17DAB0 8002E070 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002E074_17DAB4
/* 17DAB4 8002E074 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17DAB8 8002E078 27A70030 */  addiu      $a3, $sp, 0x30
/* 17DABC 8002E07C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17DAC0 8002E080 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17DAC4 8002E084 3C068005 */  lui        $a2, %hi(D_80050BEC)
/* 17DAC8 8002E088 24C60BEC */  addiu      $a2, $a2, %lo(D_80050BEC)
/* 17DACC 8002E08C 24C80020 */  addiu      $t0, $a2, 0x20
/* 17DAD0 8002E090 AFBF0064 */  sw         $ra, 0x64($sp)
/* 17DAD4 8002E094 AFB00060 */  sw         $s0, 0x60($sp)
/* 17DAD8 8002E098 8C50002C */  lw         $s0, 0x2c($v0)
.L8002E09C:
/* 17DADC 8002E09C 8CC20000 */  lw         $v0, ($a2)
/* 17DAE0 8002E0A0 8CC30004 */  lw         $v1, 4($a2)
/* 17DAE4 8002E0A4 8CC40008 */  lw         $a0, 8($a2)
/* 17DAE8 8002E0A8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17DAEC 8002E0AC ACE20000 */  sw         $v0, ($a3)
/* 17DAF0 8002E0B0 ACE30004 */  sw         $v1, 4($a3)
/* 17DAF4 8002E0B4 ACE40008 */  sw         $a0, 8($a3)
/* 17DAF8 8002E0B8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17DAFC 8002E0BC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17DB00 8002E0C0 14C8FFF6 */  bne        $a2, $t0, .L8002E09C
/* 17DB04 8002E0C4 24E70010 */   addiu     $a3, $a3, 0x10
/* 17DB08 8002E0C8 8CC20000 */  lw         $v0, ($a2)
/* 17DB0C 8002E0CC 8CC30004 */  lw         $v1, 4($a2)
/* 17DB10 8002E0D0 8CC40008 */  lw         $a0, 8($a2)
/* 17DB14 8002E0D4 ACE20000 */  sw         $v0, ($a3)
/* 17DB18 8002E0D8 ACE30004 */  sw         $v1, 4($a3)
/* 17DB1C 8002E0DC ACE40008 */  sw         $a0, 8($a3)
/* 17DB20 8002E0E0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17DB24 8002E0E4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17DB28 8002E0E8 10600005 */  beqz       $v1, .L8002E100
/* 17DB2C 8002E0EC 24020014 */   addiu     $v0, $zero, 0x14
/* 17DB30 8002E0F0 10620029 */  beq        $v1, $v0, .L8002E198
/* 17DB34 8002E0F4 2404000C */   addiu     $a0, $zero, 0xc
/* 17DB38 8002E0F8 0800B887 */  j          .L8002E21C
/* 17DB3C 8002E0FC 00000000 */   nop
.L8002E100:
/* 17DB40 8002E100 8FA20040 */  lw         $v0, 0x40($sp)
/* 17DB44 8002E104 8FA30044 */  lw         $v1, 0x44($sp)
/* 17DB48 8002E108 8FA40048 */  lw         $a0, 0x48($sp)
/* 17DB4C 8002E10C 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17DB50 8002E110 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DB54 8002E114 AFA30014 */  sw         $v1, 0x14($sp)
/* 17DB58 8002E118 AFA40018 */  sw         $a0, 0x18($sp)
/* 17DB5C 8002E11C AFA5001C */  sw         $a1, 0x1c($sp)
/* 17DB60 8002E120 8FA20050 */  lw         $v0, 0x50($sp)
/* 17DB64 8002E124 8FA30054 */  lw         $v1, 0x54($sp)
/* 17DB68 8002E128 8FA40058 */  lw         $a0, 0x58($sp)
/* 17DB6C 8002E12C AFA20020 */  sw         $v0, 0x20($sp)
/* 17DB70 8002E130 AFA30024 */  sw         $v1, 0x24($sp)
/* 17DB74 8002E134 AFA40028 */  sw         $a0, 0x28($sp)
/* 17DB78 8002E138 8FA40030 */  lw         $a0, 0x30($sp)
/* 17DB7C 8002E13C 8FA50034 */  lw         $a1, 0x34($sp)
/* 17DB80 8002E140 8FA60038 */  lw         $a2, 0x38($sp)
/* 17DB84 8002E144 0C0099F7 */  jal        func_800267DC_17621C
/* 17DB88 8002E148 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17DB8C 8002E14C 24040080 */  addiu      $a0, $zero, 0x80
/* 17DB90 8002E150 24050040 */  addiu      $a1, $zero, 0x40
/* 17DB94 8002E154 00003021 */  addu       $a2, $zero, $zero
/* 17DB98 8002E158 240700FF */  addiu      $a3, $zero, 0xff
/* 17DB9C 8002E15C 240200FF */  addiu      $v0, $zero, 0xff
/* 17DBA0 8002E160 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DBA4 8002E164 0C027101 */  jal        func_8009C404
/* 17DBA8 8002E168 AFA20014 */   sw        $v0, 0x14($sp)
/* 17DBAC 8002E16C 8E040000 */  lw         $a0, ($s0)
/* 17DBB0 8002E170 8C82000C */  lw         $v0, 0xc($a0)
/* 17DBB4 8002E174 84460002 */  lh         $a2, 2($v0)
/* 17DBB8 8002E178 0C02912A */  jal        func_800A44A8
/* 17DBBC 8002E17C 00002821 */   addu      $a1, $zero, $zero
/* 17DBC0 8002E180 8E040000 */  lw         $a0, ($s0)
/* 17DBC4 8002E184 00002821 */  addu       $a1, $zero, $zero
/* 17DBC8 8002E188 0C028D89 */  jal        func_800A3624
/* 17DBCC 8002E18C 2406047C */   addiu     $a2, $zero, 0x47c
/* 17DBD0 8002E190 0800B887 */  j          .L8002E21C
/* 17DBD4 8002E194 00000000 */   nop
.L8002E198:
/* 17DBD8 8002E198 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17DBDC 8002E19C 24060080 */  addiu      $a2, $zero, 0x80
/* 17DBE0 8002E1A0 24070001 */  addiu      $a3, $zero, 1
/* 17DBE4 8002E1A4 24020064 */  addiu      $v0, $zero, 0x64
/* 17DBE8 8002E1A8 0C026E0C */  jal        func_8009B830
/* 17DBEC 8002E1AC AFA20010 */   sw        $v0, 0x10($sp)
/* 17DBF0 8002E1B0 3C10803A */  lui        $s0, %hi(D_803987C0)
/* 17DBF4 8002E1B4 261087C0 */  addiu      $s0, $s0, %lo(D_803987C0)
/* 17DBF8 8002E1B8 02002021 */  addu       $a0, $s0, $zero
/* 17DBFC 8002E1BC 00002821 */  addu       $a1, $zero, $zero
/* 17DC00 8002E1C0 2406012C */  addiu      $a2, $zero, 0x12c
/* 17DC04 8002E1C4 3C01C1E8 */  lui        $at, 0xc1e8
/* 17DC08 8002E1C8 44810000 */  mtc1       $at, $f0
/* 17DC0C 8002E1CC 3C01C188 */  lui        $at, 0xc188
/* 17DC10 8002E1D0 44811000 */  mtc1       $at, $f2
/* 17DC14 8002E1D4 3C01C228 */  lui        $at, 0xc228
/* 17DC18 8002E1D8 44812000 */  mtc1       $at, $f4
/* 17DC1C 8002E1DC 2402000A */  addiu      $v0, $zero, 0xa
/* 17DC20 8002E1E0 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 17DC24 8002E1E4 AC223E20 */  sw         $v0, %lo(D_803B3E20)($at)
/* 17DC28 8002E1E8 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 17DC2C 8002E1EC E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 17DC30 8002E1F0 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 17DC34 8002E1F4 E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 17DC38 8002E1F8 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 17DC3C 8002E1FC E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 17DC40 8002E200 0C025D06 */  jal        func_80097418
/* 17DC44 8002E204 24070001 */   addiu     $a3, $zero, 1
/* 17DC48 8002E208 02002021 */  addu       $a0, $s0, $zero
/* 17DC4C 8002E20C 00002821 */  addu       $a1, $zero, $zero
/* 17DC50 8002E210 2406012C */  addiu      $a2, $zero, 0x12c
/* 17DC54 8002E214 0C025D06 */  jal        func_80097418
/* 17DC58 8002E218 24070001 */   addiu     $a3, $zero, 1
.L8002E21C:
/* 17DC5C 8002E21C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17DC60 8002E220 8FB00060 */  lw         $s0, 0x60($sp)
/* 17DC64 8002E224 03E00008 */  jr         $ra
/* 17DC68 8002E228 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002E22C_17DC6C
/* 17DC6C 8002E22C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17DC70 8002E230 27A70030 */  addiu      $a3, $sp, 0x30
/* 17DC74 8002E234 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17DC78 8002E238 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17DC7C 8002E23C 3C068005 */  lui        $a2, %hi(D_80050C18)
/* 17DC80 8002E240 24C60C18 */  addiu      $a2, $a2, %lo(D_80050C18)
/* 17DC84 8002E244 24C80020 */  addiu      $t0, $a2, 0x20
/* 17DC88 8002E248 AFBF0064 */  sw         $ra, 0x64($sp)
/* 17DC8C 8002E24C AFB00060 */  sw         $s0, 0x60($sp)
/* 17DC90 8002E250 8C50002C */  lw         $s0, 0x2c($v0)
.L8002E254:
/* 17DC94 8002E254 8CC20000 */  lw         $v0, ($a2)
/* 17DC98 8002E258 8CC30004 */  lw         $v1, 4($a2)
/* 17DC9C 8002E25C 8CC40008 */  lw         $a0, 8($a2)
/* 17DCA0 8002E260 8CC5000C */  lw         $a1, 0xc($a2)
/* 17DCA4 8002E264 ACE20000 */  sw         $v0, ($a3)
/* 17DCA8 8002E268 ACE30004 */  sw         $v1, 4($a3)
/* 17DCAC 8002E26C ACE40008 */  sw         $a0, 8($a3)
/* 17DCB0 8002E270 ACE5000C */  sw         $a1, 0xc($a3)
/* 17DCB4 8002E274 24C60010 */  addiu      $a2, $a2, 0x10
/* 17DCB8 8002E278 14C8FFF6 */  bne        $a2, $t0, .L8002E254
/* 17DCBC 8002E27C 24E70010 */   addiu     $a3, $a3, 0x10
/* 17DCC0 8002E280 8CC20000 */  lw         $v0, ($a2)
/* 17DCC4 8002E284 8CC30004 */  lw         $v1, 4($a2)
/* 17DCC8 8002E288 8CC40008 */  lw         $a0, 8($a2)
/* 17DCCC 8002E28C ACE20000 */  sw         $v0, ($a3)
/* 17DCD0 8002E290 ACE30004 */  sw         $v1, 4($a3)
/* 17DCD4 8002E294 ACE40008 */  sw         $a0, 8($a3)
/* 17DCD8 8002E298 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17DCDC 8002E29C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17DCE0 8002E2A0 10600005 */  beqz       $v1, .L8002E2B8
/* 17DCE4 8002E2A4 24020028 */   addiu     $v0, $zero, 0x28
/* 17DCE8 8002E2A8 1062002E */  beq        $v1, $v0, .L8002E364
/* 17DCEC 8002E2AC 24020064 */   addiu     $v0, $zero, 0x64
/* 17DCF0 8002E2B0 0800B8E0 */  j          .L8002E380
/* 17DCF4 8002E2B4 00000000 */   nop
.L8002E2B8:
/* 17DCF8 8002E2B8 8FA20040 */  lw         $v0, 0x40($sp)
/* 17DCFC 8002E2BC 8FA30044 */  lw         $v1, 0x44($sp)
/* 17DD00 8002E2C0 8FA40048 */  lw         $a0, 0x48($sp)
/* 17DD04 8002E2C4 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17DD08 8002E2C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DD0C 8002E2CC AFA30014 */  sw         $v1, 0x14($sp)
/* 17DD10 8002E2D0 AFA40018 */  sw         $a0, 0x18($sp)
/* 17DD14 8002E2D4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17DD18 8002E2D8 8FA20050 */  lw         $v0, 0x50($sp)
/* 17DD1C 8002E2DC 8FA30054 */  lw         $v1, 0x54($sp)
/* 17DD20 8002E2E0 8FA40058 */  lw         $a0, 0x58($sp)
/* 17DD24 8002E2E4 AFA20020 */  sw         $v0, 0x20($sp)
/* 17DD28 8002E2E8 AFA30024 */  sw         $v1, 0x24($sp)
/* 17DD2C 8002E2EC AFA40028 */  sw         $a0, 0x28($sp)
/* 17DD30 8002E2F0 8FA40030 */  lw         $a0, 0x30($sp)
/* 17DD34 8002E2F4 8FA50034 */  lw         $a1, 0x34($sp)
/* 17DD38 8002E2F8 8FA60038 */  lw         $a2, 0x38($sp)
/* 17DD3C 8002E2FC 0C0099F7 */  jal        func_800267DC_17621C
/* 17DD40 8002E300 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17DD44 8002E304 24040080 */  addiu      $a0, $zero, 0x80
/* 17DD48 8002E308 24050040 */  addiu      $a1, $zero, 0x40
/* 17DD4C 8002E30C 00003021 */  addu       $a2, $zero, $zero
/* 17DD50 8002E310 240700FF */  addiu      $a3, $zero, 0xff
/* 17DD54 8002E314 240200FF */  addiu      $v0, $zero, 0xff
/* 17DD58 8002E318 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DD5C 8002E31C 0C027101 */  jal        func_8009C404
/* 17DD60 8002E320 AFA20014 */   sw        $v0, 0x14($sp)
/* 17DD64 8002E324 8E040000 */  lw         $a0, ($s0)
/* 17DD68 8002E328 8C82000C */  lw         $v0, 0xc($a0)
/* 17DD6C 8002E32C 84460002 */  lh         $a2, 2($v0)
/* 17DD70 8002E330 0C02912A */  jal        func_800A44A8
/* 17DD74 8002E334 00002821 */   addu      $a1, $zero, $zero
/* 17DD78 8002E338 8E040000 */  lw         $a0, ($s0)
/* 17DD7C 8002E33C 00002821 */  addu       $a1, $zero, $zero
/* 17DD80 8002E340 0C028D89 */  jal        func_800A3624
/* 17DD84 8002E344 240603FC */   addiu     $a2, $zero, 0x3fc
/* 17DD88 8002E348 24040098 */  addiu      $a0, $zero, 0x98
/* 17DD8C 8002E34C 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17DD90 8002E350 24060080 */  addiu      $a2, $zero, 0x80
/* 17DD94 8002E354 24070001 */  addiu      $a3, $zero, 1
/* 17DD98 8002E358 24020064 */  addiu      $v0, $zero, 0x64
/* 17DD9C 8002E35C 0800B8DE */  j          .L8002E378
/* 17DDA0 8002E360 AFA20010 */   sw        $v0, 0x10($sp)
.L8002E364:
/* 17DDA4 8002E364 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DDA8 8002E368 24040025 */  addiu      $a0, $zero, 0x25
/* 17DDAC 8002E36C 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17DDB0 8002E370 24060080 */  addiu      $a2, $zero, 0x80
/* 17DDB4 8002E374 24070001 */  addiu      $a3, $zero, 1
.L8002E378:
/* 17DDB8 8002E378 0C026E0C */  jal        func_8009B830
/* 17DDBC 8002E37C 00000000 */   nop
.L8002E380:
/* 17DDC0 8002E380 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17DDC4 8002E384 8FB00060 */  lw         $s0, 0x60($sp)
/* 17DDC8 8002E388 03E00008 */  jr         $ra
/* 17DDCC 8002E38C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002E390_17DDD0
/* 17DDD0 8002E390 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17DDD4 8002E394 27A70030 */  addiu      $a3, $sp, 0x30
/* 17DDD8 8002E398 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17DDDC 8002E39C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17DDE0 8002E3A0 3C068005 */  lui        $a2, %hi(D_80050C44)
/* 17DDE4 8002E3A4 24C60C44 */  addiu      $a2, $a2, %lo(D_80050C44)
/* 17DDE8 8002E3A8 24C80020 */  addiu      $t0, $a2, 0x20
/* 17DDEC 8002E3AC AFBF0064 */  sw         $ra, 0x64($sp)
/* 17DDF0 8002E3B0 AFB00060 */  sw         $s0, 0x60($sp)
/* 17DDF4 8002E3B4 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 17DDF8 8002E3B8 8C50002C */  lw         $s0, 0x2c($v0)
.L8002E3BC:
/* 17DDFC 8002E3BC 8CC20000 */  lw         $v0, ($a2)
/* 17DE00 8002E3C0 8CC30004 */  lw         $v1, 4($a2)
/* 17DE04 8002E3C4 8CC40008 */  lw         $a0, 8($a2)
/* 17DE08 8002E3C8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17DE0C 8002E3CC ACE20000 */  sw         $v0, ($a3)
/* 17DE10 8002E3D0 ACE30004 */  sw         $v1, 4($a3)
/* 17DE14 8002E3D4 ACE40008 */  sw         $a0, 8($a3)
/* 17DE18 8002E3D8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17DE1C 8002E3DC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17DE20 8002E3E0 14C8FFF6 */  bne        $a2, $t0, .L8002E3BC
/* 17DE24 8002E3E4 24E70010 */   addiu     $a3, $a3, 0x10
/* 17DE28 8002E3E8 8CC20000 */  lw         $v0, ($a2)
/* 17DE2C 8002E3EC 8CC30004 */  lw         $v1, 4($a2)
/* 17DE30 8002E3F0 8CC40008 */  lw         $a0, 8($a2)
/* 17DE34 8002E3F4 ACE20000 */  sw         $v0, ($a3)
/* 17DE38 8002E3F8 ACE30004 */  sw         $v1, 4($a3)
/* 17DE3C 8002E3FC ACE40008 */  sw         $a0, 8($a3)
/* 17DE40 8002E400 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17DE44 8002E404 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17DE48 8002E408 1440004A */  bnez       $v0, .L8002E534
/* 17DE4C 8002E40C 00000000 */   nop
/* 17DE50 8002E410 8FA20040 */  lw         $v0, 0x40($sp)
/* 17DE54 8002E414 8FA30044 */  lw         $v1, 0x44($sp)
/* 17DE58 8002E418 8FA40048 */  lw         $a0, 0x48($sp)
/* 17DE5C 8002E41C 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17DE60 8002E420 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DE64 8002E424 AFA30014 */  sw         $v1, 0x14($sp)
/* 17DE68 8002E428 AFA40018 */  sw         $a0, 0x18($sp)
/* 17DE6C 8002E42C AFA5001C */  sw         $a1, 0x1c($sp)
/* 17DE70 8002E430 8FA20050 */  lw         $v0, 0x50($sp)
/* 17DE74 8002E434 8FA30054 */  lw         $v1, 0x54($sp)
/* 17DE78 8002E438 8FA40058 */  lw         $a0, 0x58($sp)
/* 17DE7C 8002E43C AFA20020 */  sw         $v0, 0x20($sp)
/* 17DE80 8002E440 AFA30024 */  sw         $v1, 0x24($sp)
/* 17DE84 8002E444 AFA40028 */  sw         $a0, 0x28($sp)
/* 17DE88 8002E448 8FA40030 */  lw         $a0, 0x30($sp)
/* 17DE8C 8002E44C 8FA50034 */  lw         $a1, 0x34($sp)
/* 17DE90 8002E450 8FA60038 */  lw         $a2, 0x38($sp)
/* 17DE94 8002E454 0C0099F7 */  jal        func_800267DC_17621C
/* 17DE98 8002E458 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17DE9C 8002E45C 24040080 */  addiu      $a0, $zero, 0x80
/* 17DEA0 8002E460 24050040 */  addiu      $a1, $zero, 0x40
/* 17DEA4 8002E464 00003021 */  addu       $a2, $zero, $zero
/* 17DEA8 8002E468 240700FF */  addiu      $a3, $zero, 0xff
/* 17DEAC 8002E46C 240200FF */  addiu      $v0, $zero, 0xff
/* 17DEB0 8002E470 AFA20010 */  sw         $v0, 0x10($sp)
/* 17DEB4 8002E474 0C027101 */  jal        func_8009C404
/* 17DEB8 8002E478 AFA20014 */   sw        $v0, 0x14($sp)
/* 17DEBC 8002E47C 8E040000 */  lw         $a0, ($s0)
/* 17DEC0 8002E480 8C82000C */  lw         $v0, 0xc($a0)
/* 17DEC4 8002E484 84460002 */  lh         $a2, 2($v0)
/* 17DEC8 8002E488 0C02912A */  jal        func_800A44A8
/* 17DECC 8002E48C 00002821 */   addu      $a1, $zero, $zero
/* 17DED0 8002E490 8E040000 */  lw         $a0, ($s0)
/* 17DED4 8002E494 00002821 */  addu       $a1, $zero, $zero
/* 17DED8 8002E498 0C028D89 */  jal        func_800A3624
/* 17DEDC 8002E49C 2406041C */   addiu     $a2, $zero, 0x41c
/* 17DEE0 8002E4A0 3C10803A */  lui        $s0, %hi(D_803987C0)
/* 17DEE4 8002E4A4 261087C0 */  addiu      $s0, $s0, %lo(D_803987C0)
/* 17DEE8 8002E4A8 02002021 */  addu       $a0, $s0, $zero
/* 17DEEC 8002E4AC 00002821 */  addu       $a1, $zero, $zero
/* 17DEF0 8002E4B0 2406012C */  addiu      $a2, $zero, 0x12c
/* 17DEF4 8002E4B4 3C01C0A0 */  lui        $at, 0xc0a0
/* 17DEF8 8002E4B8 44811000 */  mtc1       $at, $f2
/* 17DEFC 8002E4BC 3C01C200 */  lui        $at, 0xc200
/* 17DF00 8002E4C0 4481A000 */  mtc1       $at, $f20
/* 17DF04 8002E4C4 3C01C1A8 */  lui        $at, 0xc1a8
/* 17DF08 8002E4C8 44810000 */  mtc1       $at, $f0
/* 17DF0C 8002E4CC 24020006 */  addiu      $v0, $zero, 6
/* 17DF10 8002E4D0 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 17DF14 8002E4D4 AC223E20 */  sw         $v0, %lo(D_803B3E20)($at)
/* 17DF18 8002E4D8 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 17DF1C 8002E4DC E4343EB0 */  swc1       $f20, %lo(D_803B3EB0)($at)
/* 17DF20 8002E4E0 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 17DF24 8002E4E4 E4223EBC */  swc1       $f2, %lo(D_803B3EBC)($at)
/* 17DF28 8002E4E8 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 17DF2C 8002E4EC E4203E2C */  swc1       $f0, %lo(D_803B3E2C)($at)
/* 17DF30 8002E4F0 0C025D06 */  jal        func_80097418
/* 17DF34 8002E4F4 24070001 */   addiu     $a3, $zero, 1
/* 17DF38 8002E4F8 02002021 */  addu       $a0, $s0, $zero
/* 17DF3C 8002E4FC 00002821 */  addu       $a1, $zero, $zero
/* 17DF40 8002E500 3C014160 */  lui        $at, 0x4160
/* 17DF44 8002E504 44810000 */  mtc1       $at, $f0
/* 17DF48 8002E508 3C014040 */  lui        $at, 0x4040
/* 17DF4C 8002E50C 44811000 */  mtc1       $at, $f2
/* 17DF50 8002E510 2406012C */  addiu      $a2, $zero, 0x12c
/* 17DF54 8002E514 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 17DF58 8002E518 E4343EB0 */  swc1       $f20, %lo(D_803B3EB0)($at)
/* 17DF5C 8002E51C 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 17DF60 8002E520 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 17DF64 8002E524 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 17DF68 8002E528 E4223E2C */  swc1       $f2, %lo(D_803B3E2C)($at)
/* 17DF6C 8002E52C 0C025D06 */  jal        func_80097418
/* 17DF70 8002E530 24070001 */   addiu     $a3, $zero, 1
.L8002E534:
/* 17DF74 8002E534 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17DF78 8002E538 8FB00060 */  lw         $s0, 0x60($sp)
/* 17DF7C 8002E53C D7B40068 */  ldc1       $f20, 0x68($sp)
/* 17DF80 8002E540 03E00008 */  jr         $ra
/* 17DF84 8002E544 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002E548_17DF88
/* 17DF88 8002E548 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17DF8C 8002E54C 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17DF90 8002E550 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17DF94 8002E554 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17DF98 8002E558 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17DF9C 8002E55C AFBF0020 */  sw         $ra, 0x20($sp)
/* 17DFA0 8002E560 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17DFA4 8002E564 AFB00018 */  sw         $s0, 0x18($sp)
/* 17DFA8 8002E568 8C71002C */  lw         $s1, 0x2c($v1)
/* 17DFAC 8002E56C 1440001A */  bnez       $v0, .L8002E5D8
/* 17DFB0 8002E570 24020001 */   addiu     $v0, $zero, 1
/* 17DFB4 8002E574 9463000E */  lhu        $v1, 0xe($v1)
/* 17DFB8 8002E578 0043102B */  sltu       $v0, $v0, $v1
/* 17DFBC 8002E57C 10400014 */  beqz       $v0, .L8002E5D0
/* 17DFC0 8002E580 24100001 */   addiu     $s0, $zero, 1
/* 17DFC4 8002E584 320300FF */  andi       $v1, $s0, 0xff
.L8002E588:
/* 17DFC8 8002E588 00031040 */  sll        $v0, $v1, 1
/* 17DFCC 8002E58C 00431021 */  addu       $v0, $v0, $v1
/* 17DFD0 8002E590 00021080 */  sll        $v0, $v0, 2
/* 17DFD4 8002E594 00511021 */  addu       $v0, $v0, $s1
/* 17DFD8 8002E598 8C440000 */  lw         $a0, ($v0)
/* 17DFDC 8002E59C 8C82000C */  lw         $v0, 0xc($a0)
/* 17DFE0 8002E5A0 94460002 */  lhu        $a2, 2($v0)
/* 17DFE4 8002E5A4 00002821 */  addu       $a1, $zero, $zero
/* 17DFE8 8002E5A8 0C02912A */  jal        func_800A44A8
/* 17DFEC 8002E5AC 00063042 */   srl       $a2, $a2, 1
/* 17DFF0 8002E5B0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17DFF4 8002E5B4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17DFF8 8002E5B8 9443000E */  lhu        $v1, 0xe($v0)
/* 17DFFC 8002E5BC 26100001 */  addiu      $s0, $s0, 1
/* 17E000 8002E5C0 320200FF */  andi       $v0, $s0, 0xff
/* 17E004 8002E5C4 0043102B */  sltu       $v0, $v0, $v1
/* 17E008 8002E5C8 1440FFEF */  bnez       $v0, .L8002E588
/* 17E00C 8002E5CC 320300FF */   andi      $v1, $s0, 0xff
.L8002E5D0:
/* 17E010 8002E5D0 3C018005 */  lui        $at, %hi(D_80051EA1)
/* 17E014 8002E5D4 A0201EA1 */  sb         $zero, %lo(D_80051EA1)($at)
.L8002E5D8:
/* 17E018 8002E5D8 3C048005 */  lui        $a0, %hi(D_80052038)
/* 17E01C 8002E5DC 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 17E020 8002E5E0 2C82003C */  sltiu      $v0, $a0, 0x3c
/* 17E024 8002E5E4 10400016 */  beqz       $v0, .L8002E640
/* 17E028 8002E5E8 00000000 */   nop
/* 17E02C 8002E5EC 3C02AAAA */  lui        $v0, 0xaaaa
/* 17E030 8002E5F0 3442AAAB */  ori        $v0, $v0, 0xaaab
/* 17E034 8002E5F4 00820019 */  multu      $a0, $v0
/* 17E038 8002E5F8 00004010 */  mfhi       $t0
/* 17E03C 8002E5FC 00081882 */  srl        $v1, $t0, 2
/* 17E040 8002E600 00031040 */  sll        $v0, $v1, 1
/* 17E044 8002E604 00431021 */  addu       $v0, $v0, $v1
/* 17E048 8002E608 00021040 */  sll        $v0, $v0, 1
/* 17E04C 8002E60C 00821823 */  subu       $v1, $a0, $v0
/* 17E050 8002E610 3062FFFF */  andi       $v0, $v1, 0xffff
/* 17E054 8002E614 2C420003 */  sltiu      $v0, $v0, 3
/* 17E058 8002E618 10400005 */  beqz       $v0, .L8002E630
/* 17E05C 8002E61C 00000000 */   nop
/* 17E060 8002E620 0C028A40 */  jal        func_800A2900
/* 17E064 8002E624 8E24000C */   lw        $a0, 0xc($s1)
/* 17E068 8002E628 0800B9A6 */  j          .L8002E698
/* 17E06C 8002E62C 8E240018 */   lw        $a0, 0x18($s1)
.L8002E630:
/* 17E070 8002E630 0C028A40 */  jal        func_800A2900
/* 17E074 8002E634 8E240024 */   lw        $a0, 0x24($s1)
/* 17E078 8002E638 0800B9A6 */  j          .L8002E698
/* 17E07C 8002E63C 8E240030 */   lw        $a0, 0x30($s1)
.L8002E640:
/* 17E080 8002E640 3C02CCCC */  lui        $v0, 0xcccc
/* 17E084 8002E644 3442CCCD */  ori        $v0, $v0, 0xcccd
/* 17E088 8002E648 00820019 */  multu      $a0, $v0
/* 17E08C 8002E64C 00004010 */  mfhi       $t0
/* 17E090 8002E650 000818C2 */  srl        $v1, $t0, 3
/* 17E094 8002E654 00031080 */  sll        $v0, $v1, 2
/* 17E098 8002E658 00431021 */  addu       $v0, $v0, $v1
/* 17E09C 8002E65C 00021040 */  sll        $v0, $v0, 1
/* 17E0A0 8002E660 00821823 */  subu       $v1, $a0, $v0
/* 17E0A4 8002E664 2C820064 */  sltiu      $v0, $a0, 0x64
/* 17E0A8 8002E668 10400008 */  beqz       $v0, .L8002E68C
/* 17E0AC 8002E66C 3062FFFF */   andi      $v0, $v1, 0xffff
/* 17E0B0 8002E670 2C420005 */  sltiu      $v0, $v0, 5
/* 17E0B4 8002E674 10400005 */  beqz       $v0, .L8002E68C
/* 17E0B8 8002E678 00000000 */   nop
/* 17E0BC 8002E67C 0C028A40 */  jal        func_800A2900
/* 17E0C0 8002E680 8E24003C */   lw        $a0, 0x3c($s1)
/* 17E0C4 8002E684 0800B9A6 */  j          .L8002E698
/* 17E0C8 8002E688 8E240048 */   lw        $a0, 0x48($s1)
.L8002E68C:
/* 17E0CC 8002E68C 0C028A40 */  jal        func_800A2900
/* 17E0D0 8002E690 8E240054 */   lw        $a0, 0x54($s1)
/* 17E0D4 8002E694 8E240060 */  lw         $a0, 0x60($s1)
.L8002E698:
/* 17E0D8 8002E698 0C028A40 */  jal        func_800A2900
/* 17E0DC 8002E69C 00000000 */   nop
/* 17E0E0 8002E6A0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17E0E4 8002E6A4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17E0E8 8002E6A8 24020014 */  addiu      $v0, $zero, 0x14
/* 17E0EC 8002E6AC 14620007 */  bne        $v1, $v0, .L8002E6CC
/* 17E0F0 8002E6B0 24020064 */   addiu     $v0, $zero, 0x64
/* 17E0F4 8002E6B4 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E0F8 8002E6B8 24040194 */  addiu      $a0, $zero, 0x194
/* 17E0FC 8002E6BC 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17E100 8002E6C0 24060080 */  addiu      $a2, $zero, 0x80
/* 17E104 8002E6C4 0C026E0C */  jal        func_8009B830
/* 17E108 8002E6C8 24070001 */   addiu     $a3, $zero, 1
.L8002E6CC:
/* 17E10C 8002E6CC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17E110 8002E6D0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17E114 8002E6D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 17E118 8002E6D8 03E00008 */  jr         $ra
/* 17E11C 8002E6DC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002E6E0_17E120
/* 17E120 8002E6E0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17E124 8002E6E4 27A70030 */  addiu      $a3, $sp, 0x30
/* 17E128 8002E6E8 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17E12C 8002E6EC 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17E130 8002E6F0 3C068005 */  lui        $a2, %hi(func_80050C70_9FC20)
/* 17E134 8002E6F4 24C60C70 */  addiu      $a2, $a2, %lo(func_80050C70_9FC20)
/* 17E138 8002E6F8 24C80020 */  addiu      $t0, $a2, 0x20
/* 17E13C 8002E6FC AFBF0064 */  sw         $ra, 0x64($sp)
/* 17E140 8002E700 AFB00060 */  sw         $s0, 0x60($sp)
/* 17E144 8002E704 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 17E148 8002E708 8C500028 */  lw         $s0, 0x28($v0)
.L8002E70C:
/* 17E14C 8002E70C 8CC20000 */  lw         $v0, ($a2)
/* 17E150 8002E710 8CC30004 */  lw         $v1, 4($a2)
/* 17E154 8002E714 8CC40008 */  lw         $a0, 8($a2)
/* 17E158 8002E718 8CC5000C */  lw         $a1, 0xc($a2)
/* 17E15C 8002E71C ACE20000 */  sw         $v0, ($a3)
/* 17E160 8002E720 ACE30004 */  sw         $v1, 4($a3)
/* 17E164 8002E724 ACE40008 */  sw         $a0, 8($a3)
/* 17E168 8002E728 ACE5000C */  sw         $a1, 0xc($a3)
/* 17E16C 8002E72C 24C60010 */  addiu      $a2, $a2, 0x10
/* 17E170 8002E730 14C8FFF6 */  bne        $a2, $t0, .L8002E70C
/* 17E174 8002E734 24E70010 */   addiu     $a3, $a3, 0x10
/* 17E178 8002E738 8CC20000 */  lw         $v0, ($a2)
/* 17E17C 8002E73C 8CC30004 */  lw         $v1, 4($a2)
/* 17E180 8002E740 8CC40008 */  lw         $a0, 8($a2)
/* 17E184 8002E744 ACE20000 */  sw         $v0, ($a3)
/* 17E188 8002E748 ACE30004 */  sw         $v1, 4($a3)
/* 17E18C 8002E74C ACE40008 */  sw         $a0, 8($a3)
/* 17E190 8002E750 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17E194 8002E754 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17E198 8002E758 1440002D */  bnez       $v0, .L8002E810
/* 17E19C 8002E75C 00000000 */   nop
/* 17E1A0 8002E760 8FA20040 */  lw         $v0, 0x40($sp)
/* 17E1A4 8002E764 8FA30044 */  lw         $v1, 0x44($sp)
/* 17E1A8 8002E768 8FA40048 */  lw         $a0, 0x48($sp)
/* 17E1AC 8002E76C 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17E1B0 8002E770 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E1B4 8002E774 AFA30014 */  sw         $v1, 0x14($sp)
/* 17E1B8 8002E778 AFA40018 */  sw         $a0, 0x18($sp)
/* 17E1BC 8002E77C AFA5001C */  sw         $a1, 0x1c($sp)
/* 17E1C0 8002E780 8FA20050 */  lw         $v0, 0x50($sp)
/* 17E1C4 8002E784 8FA30054 */  lw         $v1, 0x54($sp)
/* 17E1C8 8002E788 8FA40058 */  lw         $a0, 0x58($sp)
/* 17E1CC 8002E78C AFA20020 */  sw         $v0, 0x20($sp)
/* 17E1D0 8002E790 AFA30024 */  sw         $v1, 0x24($sp)
/* 17E1D4 8002E794 AFA40028 */  sw         $a0, 0x28($sp)
/* 17E1D8 8002E798 8FA40030 */  lw         $a0, 0x30($sp)
/* 17E1DC 8002E79C 8FA50034 */  lw         $a1, 0x34($sp)
/* 17E1E0 8002E7A0 8FA60038 */  lw         $a2, 0x38($sp)
/* 17E1E4 8002E7A4 0C0099F7 */  jal        func_800267DC_17621C
/* 17E1E8 8002E7A8 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17E1EC 8002E7AC 24040080 */  addiu      $a0, $zero, 0x80
/* 17E1F0 8002E7B0 24050040 */  addiu      $a1, $zero, 0x40
/* 17E1F4 8002E7B4 00003021 */  addu       $a2, $zero, $zero
/* 17E1F8 8002E7B8 240700FF */  addiu      $a3, $zero, 0xff
/* 17E1FC 8002E7BC 240200FF */  addiu      $v0, $zero, 0xff
/* 17E200 8002E7C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E204 8002E7C4 0C027101 */  jal        func_8009C404
/* 17E208 8002E7C8 AFA20014 */   sw        $v0, 0x14($sp)
/* 17E20C 8002E7CC 24040020 */  addiu      $a0, $zero, 0x20
/* 17E210 8002E7D0 24050080 */  addiu      $a1, $zero, 0x80
/* 17E214 8002E7D4 24060080 */  addiu      $a2, $zero, 0x80
/* 17E218 8002E7D8 24070001 */  addiu      $a3, $zero, 1
/* 17E21C 8002E7DC 24020064 */  addiu      $v0, $zero, 0x64
/* 17E220 8002E7E0 0C026E0C */  jal        func_8009B830
/* 17E224 8002E7E4 AFA20010 */   sw        $v0, 0x10($sp)
/* 17E228 8002E7E8 3C014000 */  lui        $at, 0x4000
/* 17E22C 8002E7EC 4481A000 */  mtc1       $at, $f20
/* 17E230 8002E7F0 8E04006C */  lw         $a0, 0x6c($s0)
/* 17E234 8002E7F4 4405A000 */  mfc1       $a1, $f20
/* 17E238 8002E7F8 0C02795C */  jal        func_8009E570
/* 17E23C 8002E7FC 00000000 */   nop
/* 17E240 8002E800 8E040070 */  lw         $a0, 0x70($s0)
/* 17E244 8002E804 4405A000 */  mfc1       $a1, $f20
/* 17E248 8002E808 0C027C5E */  jal        func_8009F178
/* 17E24C 8002E80C 00000000 */   nop
.L8002E810:
/* 17E250 8002E810 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17E254 8002E814 8FB00060 */  lw         $s0, 0x60($sp)
/* 17E258 8002E818 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 17E25C 8002E81C 03E00008 */  jr         $ra
/* 17E260 8002E820 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002E824_17E264
/* 17E264 8002E824 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17E268 8002E828 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17E26C 8002E82C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17E270 8002E830 10600006 */  beqz       $v1, .L8002E84C
/* 17E274 8002E834 AFBF0018 */   sw        $ra, 0x18($sp)
/* 17E278 8002E838 2402001E */  addiu      $v0, $zero, 0x1e
/* 17E27C 8002E83C 1062000C */  beq        $v1, $v0, .L8002E870
/* 17E280 8002E840 00000000 */   nop
/* 17E284 8002E844 0800BA1E */  j          .L8002E878
/* 17E288 8002E848 00000000 */   nop
.L8002E84C:
/* 17E28C 8002E84C 24020064 */  addiu      $v0, $zero, 0x64
/* 17E290 8002E850 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E294 8002E854 24040105 */  addiu      $a0, $zero, 0x105
/* 17E298 8002E858 240500C0 */  addiu      $a1, $zero, 0xc0
/* 17E29C 8002E85C 24060080 */  addiu      $a2, $zero, 0x80
/* 17E2A0 8002E860 0C026E0C */  jal        func_8009B830
/* 17E2A4 8002E864 24070001 */   addiu     $a3, $zero, 1
/* 17E2A8 8002E868 0800BA1E */  j          .L8002E878
/* 17E2AC 8002E86C 00000000 */   nop
.L8002E870:
/* 17E2B0 8002E870 0C026DBB */  jal        func_8009B6EC
/* 17E2B4 8002E874 24040078 */   addiu     $a0, $zero, 0x78
.L8002E878:
/* 17E2B8 8002E878 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17E2BC 8002E87C 03E00008 */  jr         $ra
/* 17E2C0 8002E880 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002E884_17E2C4
/* 17E2C4 8002E884 3C028004 */  lui        $v0, %hi(D_8004652C)
/* 17E2C8 8002E888 9042652C */  lbu        $v0, %lo(D_8004652C)($v0)
/* 17E2CC 8002E88C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17E2D0 8002E890 10400019 */  beqz       $v0, .L8002E8F8
/* 17E2D4 8002E894 AFBF0010 */   sw        $ra, 0x10($sp)
/* 17E2D8 8002E898 0C009758 */  jal        func_80025D60_1757A0
/* 17E2DC 8002E89C 00000000 */   nop
/* 17E2E0 8002E8A0 0C02A5D2 */  jal        func_800A9748
/* 17E2E4 8002E8A4 24040001 */   addiu     $a0, $zero, 1
/* 17E2E8 8002E8A8 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17E2EC 8002E8AC 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17E2F0 8002E8B0 24020001 */  addiu      $v0, $zero, 1
/* 17E2F4 8002E8B4 3C018005 */  lui        $at, %hi(D_80052006)
/* 17E2F8 8002E8B8 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17E2FC 8002E8BC 24020008 */  addiu      $v0, $zero, 8
/* 17E300 8002E8C0 3C018005 */  lui        $at, %hi(D_80052061)
/* 17E304 8002E8C4 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17E308 8002E8C8 3C028004 */  lui        $v0, %hi(D_800464FC)
/* 17E30C 8002E8CC 244264FC */  addiu      $v0, $v0, %lo(D_800464FC)
/* 17E310 8002E8D0 00002821 */  addu       $a1, $zero, $zero
/* 17E314 8002E8D4 2406012C */  addiu      $a2, $zero, 0x12c
/* 17E318 8002E8D8 3C018004 */  lui        $at, %hi(D_8004652C)
/* 17E31C 8002E8DC A020652C */  sb         $zero, %lo(D_8004652C)($at)
/* 17E320 8002E8E0 3C018005 */  lui        $at, %hi(D_80052060)
/* 17E324 8002E8E4 A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17E328 8002E8E8 3C018005 */  lui        $at, %hi(D_80052000)
/* 17E32C 8002E8EC AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17E330 8002E8F0 0C025D06 */  jal        func_80097418
/* 17E334 8002E8F4 00003821 */   addu      $a3, $zero, $zero
.L8002E8F8:
/* 17E338 8002E8F8 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17E33C 8002E8FC 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17E340 8002E900 24020001 */  addiu      $v0, $zero, 1
/* 17E344 8002E904 14620005 */  bne        $v1, $v0, .L8002E91C
/* 17E348 8002E908 00001021 */   addu      $v0, $zero, $zero
/* 17E34C 8002E90C 24020001 */  addiu      $v0, $zero, 1
/* 17E350 8002E910 3C018004 */  lui        $at, %hi(D_8004652C)
/* 17E354 8002E914 A022652C */  sb         $v0, %lo(D_8004652C)($at)
/* 17E358 8002E918 24020001 */  addiu      $v0, $zero, 1
.L8002E91C:
/* 17E35C 8002E91C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17E360 8002E920 03E00008 */  jr         $ra
/* 17E364 8002E924 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17E368 8002E928 00000000 */  nop
/* 17E36C 8002E92C 00000000 */  nop