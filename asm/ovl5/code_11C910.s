.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002AB10_11C910
/* 11C910 8002AB10 3C028005 */  lui        $v0, %hi(D_80051A10)
/* 11C914 8002AB14 90421A10 */  lbu        $v0, %lo(D_80051A10)($v0)
/* 11C918 8002AB18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11C91C 8002AB1C AFB00018 */  sw         $s0, 0x18($sp)
/* 11C920 8002AB20 00808021 */  addu       $s0, $a0, $zero
/* 11C924 8002AB24 1040004B */  beqz       $v0, .L8002AC54
/* 11C928 8002AB28 AFBF001C */   sw        $ra, 0x1c($sp)
/* 11C92C 8002AB2C 0C02A5D2 */  jal        func_800A9748
/* 11C930 8002AB30 24040001 */   addiu     $a0, $zero, 1
/* 11C934 8002AB34 0C02725C */  jal        func_8009C970
/* 11C938 8002AB38 00000000 */   nop
/* 11C93C 8002AB3C 24040053 */  addiu      $a0, $zero, 0x53
/* 11C940 8002AB40 3C01C000 */  lui        $at, 0xc000
/* 11C944 8002AB44 44810000 */  mtc1       $at, $f0
/* 11C948 8002AB48 3C014218 */  lui        $at, 0x4218
/* 11C94C 8002AB4C 44811000 */  mtc1       $at, $f2
/* 11C950 8002AB50 3C01C0C0 */  lui        $at, 0xc0c0
/* 11C954 8002AB54 44812000 */  mtc1       $at, $f4
/* 11C958 8002AB58 3C01C2C2 */  lui        $at, 0xc2c2
/* 11C95C 8002AB5C 44813000 */  mtc1       $at, $f6
/* 11C960 8002AB60 3C01C1C0 */  lui        $at, 0xc1c0
/* 11C964 8002AB64 44814000 */  mtc1       $at, $f8
/* 11C968 8002AB68 3C0143AC */  lui        $at, 0x43ac
/* 11C96C 8002AB6C 34218000 */  ori        $at, $at, 0x8000
/* 11C970 8002AB70 44815000 */  mtc1       $at, $f10
/* 11C974 8002AB74 24050048 */  addiu      $a1, $zero, 0x48
/* 11C978 8002AB78 240200E6 */  addiu      $v0, $zero, 0xe6
/* 11C97C 8002AB7C AFA20010 */  sw         $v0, 0x10($sp)
/* 11C980 8002AB80 240200DC */  addiu      $v0, $zero, 0xdc
/* 11C984 8002AB84 24060053 */  addiu      $a2, $zero, 0x53
/* 11C988 8002AB88 AFA20014 */  sw         $v0, 0x14($sp)
/* 11C98C 8002AB8C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11C990 8002AB90 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 11C994 8002AB94 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11C998 8002AB98 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 11C99C 8002AB9C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11C9A0 8002ABA0 E424A06C */  swc1       $f4, %lo(D_8014A06C)($at)
/* 11C9A4 8002ABA4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 11C9A8 8002ABA8 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* 11C9AC 8002ABAC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 11C9B0 8002ABB0 E428A07C */  swc1       $f8, %lo(D_8014A07C)($at)
/* 11C9B4 8002ABB4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 11C9B8 8002ABB8 E42AA080 */  swc1       $f10, %lo(D_8014A080)($at)
/* 11C9BC 8002ABBC 0C027101 */  jal        func_8009C404
/* 11C9C0 8002ABC0 240700FF */   addiu     $a3, $zero, 0xff
/* 11C9C4 8002ABC4 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11C9C8 8002ABC8 C422A068 */  lwc1       $f2, %lo(D_8014A068)($at)
/* 11C9CC 8002ABCC 3C0141A0 */  lui        $at, 0x41a0
/* 11C9D0 8002ABD0 44810000 */  mtc1       $at, $f0
/* 11C9D4 8002ABD4 3C01C320 */  lui        $at, 0xc320
/* 11C9D8 8002ABD8 44812000 */  mtc1       $at, $f4
/* 11C9DC 8002ABDC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11C9E0 8002ABE0 C426A06C */  lwc1       $f6, %lo(D_8014A06C)($at)
/* 11C9E4 8002ABE4 3C018017 */  lui        $at, %hi(D_8016E568)
/* 11C9E8 8002ABE8 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* 11C9EC 8002ABEC 3C018015 */  lui        $at, %hi(D_8014A054)
/* 11C9F0 8002ABF0 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* 11C9F4 8002ABF4 46001000 */  add.s      $f0, $f2, $f0
/* 11C9F8 8002ABF8 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 11C9FC 8002ABFC E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 11CA00 8002AC00 3C018015 */  lui        $at, %hi(D_8014A050)
/* 11CA04 8002AC04 E422A050 */  swc1       $f2, %lo(D_8014A050)($at)
/* 11CA08 8002AC08 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 11CA0C 8002AC0C E426D1A8 */  swc1       $f6, %lo(D_8016D1A8)($at)
/* 11CA10 8002AC10 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 11CA14 8002AC14 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* 11CA18 8002AC18 0C026DD5 */  jal        func_8009B754
/* 11CA1C 8002AC1C 24040077 */   addiu     $a0, $zero, 0x77
/* 11CA20 8002AC20 3C018006 */  lui        $at, %hi(D_8005DC64)
/* 11CA24 8002AC24 0C00AB3C */  jal        func_8002ACF0_11CAF0
/* 11CA28 8002AC28 AC22DC64 */   sw        $v0, %lo(D_8005DC64)($at)
/* 11CA2C 8002AC2C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 11CA30 8002AC30 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 11CA34 8002AC34 24050004 */  addiu      $a1, $zero, 4
/* 11CA38 8002AC38 24030028 */  addiu      $v1, $zero, 0x28
/* 11CA3C 8002AC3C 3C018006 */  lui        $at, %hi(D_8005DC60)
/* 11CA40 8002AC40 AC22DC60 */  sw         $v0, %lo(D_8005DC60)($at)
/* 11CA44 8002AC44 0C00A157 */  jal        func_8002855C_11A35C
/* 11CA48 8002AC48 A4430044 */   sh        $v1, 0x44($v0)
/* 11CA4C 8002AC4C 3C018005 */  lui        $at, %hi(D_80051A10)
/* 11CA50 8002AC50 A0201A10 */  sb         $zero, %lo(D_80051A10)($at)
.L8002AC54:
/* 11CA54 8002AC54 16000003 */  bnez       $s0, .L8002AC64
/* 11CA58 8002AC58 24020001 */   addiu     $v0, $zero, 1
/* 11CA5C 8002AC5C 3C018005 */  lui        $at, %hi(D_80051A14)
/* 11CA60 8002AC60 AC221A14 */  sw         $v0, %lo(D_80051A14)($at)
.L8002AC64:
/* 11CA64 8002AC64 3C028005 */  lui        $v0, %hi(D_80051A14)
/* 11CA68 8002AC68 8C421A14 */  lw         $v0, %lo(D_80051A14)($v0)
/* 11CA6C 8002AC6C 1440000C */  bnez       $v0, .L8002ACA0
/* 11CA70 8002AC70 00000000 */   nop
/* 11CA74 8002AC74 3C048006 */  lui        $a0, %hi(D_8005DC60)
/* 11CA78 8002AC78 0C00AB95 */  jal        func_8002AE54_11CC54
/* 11CA7C 8002AC7C 8C84DC60 */   lw        $a0, %lo(D_8005DC60)($a0)
/* 11CA80 8002AC80 3C018005 */  lui        $at, %hi(D_80051A14)
/* 11CA84 8002AC84 0C009767 */  jal        func_80025D9C_117B9C
/* 11CA88 8002AC88 AC221A14 */   sw        $v0, %lo(D_80051A14)($at)
/* 11CA8C 8002AC8C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 11CA90 8002AC90 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 11CA94 8002AC94 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 11CA98 8002AC98 0800AB38 */  j          .L8002ACE0
/* 11CA9C 8002AC9C 00001021 */   addu      $v0, $zero, $zero
.L8002ACA0:
/* 11CAA0 8002ACA0 3C048006 */  lui        $a0, %hi(D_8005DC64)
/* 11CAA4 8002ACA4 8C84DC64 */  lw         $a0, %lo(D_8005DC64)($a0)
/* 11CAA8 8002ACA8 0C026E46 */  jal        func_8009B918
/* 11CAAC 8002ACAC 00002821 */   addu      $a1, $zero, $zero
/* 11CAB0 8002ACB0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 11CAB4 8002ACB4 0C00A16B */  jal        func_800285AC_11A3AC
/* 11CAB8 8002ACB8 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 11CABC 8002ACBC 3C048006 */  lui        $a0, %hi(D_8005DC60)
/* 11CAC0 8002ACC0 0C00AC38 */  jal        func_8002B0E0_11CEE0
/* 11CAC4 8002ACC4 2484DC60 */   addiu     $a0, $a0, %lo(D_8005DC60)
/* 11CAC8 8002ACC8 24020001 */  addiu      $v0, $zero, 1
/* 11CACC 8002ACCC 24030001 */  addiu      $v1, $zero, 1
/* 11CAD0 8002ACD0 3C018005 */  lui        $at, %hi(D_80051A14)
/* 11CAD4 8002ACD4 AC201A14 */  sw         $zero, %lo(D_80051A14)($at)
/* 11CAD8 8002ACD8 3C018005 */  lui        $at, %hi(D_80051A10)
/* 11CADC 8002ACDC A0231A10 */  sb         $v1, %lo(D_80051A10)($at)
.L8002ACE0:
/* 11CAE0 8002ACE0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11CAE4 8002ACE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 11CAE8 8002ACE8 03E00008 */  jr         $ra
/* 11CAEC 8002ACEC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002ACF0_11CAF0
/* 11CAF0 8002ACF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11CAF4 8002ACF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11CAF8 8002ACF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 11CAFC 8002ACFC AFB10014 */  sw         $s1, 0x14($sp)
/* 11CB00 8002AD00 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CB04 8002AD04 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 11CB08 8002AD08 0C032663 */  jal        func_800C998C
/* 11CB0C 8002AD0C 24040048 */   addiu     $a0, $zero, 0x48
/* 11CB10 8002AD10 00408021 */  addu       $s0, $v0, $zero
/* 11CB14 8002AD14 02002021 */  addu       $a0, $s0, $zero
/* 11CB18 8002AD18 0C030134 */  jal        bzero
/* 11CB1C 8002AD1C 24050048 */   addiu     $a1, $zero, 0x48
/* 11CB20 8002AD20 3C0142B4 */  lui        $at, 0x42b4
/* 11CB24 8002AD24 4481A000 */  mtc1       $at, $f20
/* 11CB28 8002AD28 00000000 */  nop
/* 11CB2C 8002AD2C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11CB30 8002AD30 24110007 */   addiu     $s1, $zero, 7
/* 11CB34 8002AD34 2403008D */  addiu      $v1, $zero, 0x8d
/* 11CB38 8002AD38 AE020000 */  sw         $v0, ($s0)
/* 11CB3C 8002AD3C AC430004 */  sw         $v1, 4($v0)
/* 11CB40 8002AD40 240300AD */  addiu      $v1, $zero, 0xad
/* 11CB44 8002AD44 24120005 */  addiu      $s2, $zero, 5
/* 11CB48 8002AD48 AC51001C */  sw         $s1, 0x1c($v0)
/* 11CB4C 8002AD4C AC430008 */  sw         $v1, 8($v0)
/* 11CB50 8002AD50 AC400044 */  sw         $zero, 0x44($v0)
/* 11CB54 8002AD54 AC52000C */  sw         $s2, 0xc($v0)
/* 11CB58 8002AD58 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11CB5C 8002AD5C E4540054 */   swc1      $f20, 0x54($v0)
/* 11CB60 8002AD60 24030058 */  addiu      $v1, $zero, 0x58
/* 11CB64 8002AD64 AE020004 */  sw         $v0, 4($s0)
/* 11CB68 8002AD68 AC51001C */  sw         $s1, 0x1c($v0)
/* 11CB6C 8002AD6C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11CB70 8002AD70 AC430004 */   sw        $v1, 4($v0)
/* 11CB74 8002AD74 2403005A */  addiu      $v1, $zero, 0x5a
/* 11CB78 8002AD78 AE020008 */  sw         $v0, 8($s0)
/* 11CB7C 8002AD7C AC51001C */  sw         $s1, 0x1c($v0)
/* 11CB80 8002AD80 AC430004 */  sw         $v1, 4($v0)
/* 11CB84 8002AD84 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11CB88 8002AD88 8E040000 */   lw        $a0, ($s0)
/* 11CB8C 8002AD8C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11CB90 8002AD90 8E040004 */   lw        $a0, 4($s0)
/* 11CB94 8002AD94 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11CB98 8002AD98 8E040008 */   lw        $a0, 8($s0)
/* 11CB9C 8002AD9C 8E020000 */  lw         $v0, ($s0)
/* 11CBA0 8002ADA0 8E030004 */  lw         $v1, 4($s0)
/* 11CBA4 8002ADA4 8C440034 */  lw         $a0, 0x34($v0)
/* 11CBA8 8002ADA8 8C660034 */  lw         $a2, 0x34($v1)
/* 11CBAC 8002ADAC 3C058006 */  lui        $a1, %hi(D_8005AA40)
/* 11CBB0 8002ADB0 24A5AA40 */  addiu      $a1, $a1, %lo(D_8005AA40)
/* 11CBB4 8002ADB4 0C02864D */  jal        func_800A1934
/* 11CBB8 8002ADB8 00A03821 */   addu      $a3, $a1, $zero
/* 11CBBC 8002ADBC 8E020000 */  lw         $v0, ($s0)
/* 11CBC0 8002ADC0 8E030008 */  lw         $v1, 8($s0)
/* 11CBC4 8002ADC4 8C440034 */  lw         $a0, 0x34($v0)
/* 11CBC8 8002ADC8 8C660034 */  lw         $a2, 0x34($v1)
/* 11CBCC 8002ADCC 3C058006 */  lui        $a1, %hi(D_8005AA48)
/* 11CBD0 8002ADD0 24A5AA48 */  addiu      $a1, $a1, %lo(D_8005AA48)
/* 11CBD4 8002ADD4 0C02864D */  jal        func_800A1934
/* 11CBD8 8002ADD8 00A03821 */   addu      $a3, $a1, $zero
/* 11CBDC 8002ADDC 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11CBE0 8002ADE0 00000000 */   nop
/* 11CBE4 8002ADE4 240300BF */  addiu      $v1, $zero, 0xbf
/* 11CBE8 8002ADE8 AE02000C */  sw         $v0, 0xc($s0)
/* 11CBEC 8002ADEC AC430004 */  sw         $v1, 4($v0)
/* 11CBF0 8002ADF0 24030001 */  addiu      $v1, $zero, 1
/* 11CBF4 8002ADF4 AC51001C */  sw         $s1, 0x1c($v0)
/* 11CBF8 8002ADF8 AC430008 */  sw         $v1, 8($v0)
/* 11CBFC 8002ADFC AC400044 */  sw         $zero, 0x44($v0)
/* 11CC00 8002AE00 E4540054 */  swc1       $f20, 0x54($v0)
/* 11CC04 8002AE04 8E02000C */  lw         $v0, 0xc($s0)
/* 11CC08 8002AE08 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11CC0C 8002AE0C AC52000C */   sw        $s2, 0xc($v0)
/* 11CC10 8002AE10 3C013F80 */  lui        $at, 0x3f80
/* 11CC14 8002AE14 44810000 */  mtc1       $at, $f0
/* 11CC18 8002AE18 00402021 */  addu       $a0, $v0, $zero
/* 11CC1C 8002AE1C 02001021 */  addu       $v0, $s0, $zero
/* 11CC20 8002AE20 240300C0 */  addiu      $v1, $zero, 0xc0
/* 11CC24 8002AE24 AC440010 */  sw         $a0, 0x10($v0)
/* 11CC28 8002AE28 AC91001C */  sw         $s1, 0x1c($a0)
/* 11CC2C 8002AE2C AC830004 */  sw         $v1, 4($a0)
/* 11CC30 8002AE30 AC800008 */  sw         $zero, 8($a0)
/* 11CC34 8002AE34 E480005C */  swc1       $f0, 0x5c($a0)
/* 11CC38 8002AE38 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11CC3C 8002AE3C 8FB20018 */  lw         $s2, 0x18($sp)
/* 11CC40 8002AE40 8FB10014 */  lw         $s1, 0x14($sp)
/* 11CC44 8002AE44 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CC48 8002AE48 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 11CC4C 8002AE4C 03E00008 */  jr         $ra
/* 11CC50 8002AE50 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002AE54_11CC54
/* 11CC54 8002AE54 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11CC58 8002AE58 AFB1001C */  sw         $s1, 0x1c($sp)
/* 11CC5C 8002AE5C 00808821 */  addu       $s1, $a0, $zero
/* 11CC60 8002AE60 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11CC64 8002AE64 AFB00018 */  sw         $s0, 0x18($sp)
/* 11CC68 8002AE68 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 11CC6C 8002AE6C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 11CC70 8002AE70 8E220000 */  lw         $v0, ($s1)
/* 11CC74 8002AE74 8C420038 */  lw         $v0, 0x38($v0)
/* 11CC78 8002AE78 8443001E */  lh         $v1, 0x1e($v0)
/* 11CC7C 8002AE7C 240200FF */  addiu      $v0, $zero, 0xff
/* 11CC80 8002AE80 1462000B */  bne        $v1, $v0, .L8002AEB0
/* 11CC84 8002AE84 00002021 */   addu      $a0, $zero, $zero
/* 11CC88 8002AE88 0C026B46 */  jal        func_8009AD18
/* 11CC8C 8002AE8C 00000000 */   nop
/* 11CC90 8002AE90 86220044 */  lh         $v0, 0x44($s1)
/* 11CC94 8002AE94 10400004 */  beqz       $v0, .L8002AEA8
/* 11CC98 8002AE98 00401821 */   addu      $v1, $v0, $zero
/* 11CC9C 8002AE9C 2462FFFF */  addiu      $v0, $v1, -1
/* 11CCA0 8002AEA0 0800AC18 */  j          .L8002B060
/* 11CCA4 8002AEA4 A6220044 */   sh        $v0, 0x44($s1)
.L8002AEA8:
/* 11CCA8 8002AEA8 0800AC31 */  j          .L8002B0C4
/* 11CCAC 8002AEAC 24020001 */   addiu     $v0, $zero, 1
.L8002AEB0:
/* 11CCB0 8002AEB0 24050080 */  addiu      $a1, $zero, 0x80
/* 11CCB4 8002AEB4 0C026B15 */  jal        func_8009AC54
/* 11CCB8 8002AEB8 240603E7 */   addiu     $a2, $zero, 0x3e7
/* 11CCBC 8002AEBC 24040032 */  addiu      $a0, $zero, 0x32
/* 11CCC0 8002AEC0 0C02591A */  jal        func_80096468
/* 11CCC4 8002AEC4 AE200014 */   sw        $zero, 0x14($s1)
/* 11CCC8 8002AEC8 3C014120 */  lui        $at, 0x4120
/* 11CCCC 8002AECC 4481A000 */  mtc1       $at, $f20
/* 11CCD0 8002AED0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CCD4 8002AED4 44820000 */  mtc1       $v0, $f0
/* 11CCD8 8002AED8 00000000 */  nop
/* 11CCDC 8002AEDC 46800020 */  cvt.s.w    $f0, $f0
/* 11CCE0 8002AEE0 46140003 */  div.s      $f0, $f0, $f20
/* 11CCE4 8002AEE4 3C014040 */  lui        $at, 0x4040
/* 11CCE8 8002AEE8 44811000 */  mtc1       $at, $f2
/* 11CCEC 8002AEEC 00000000 */  nop
/* 11CCF0 8002AEF0 46020000 */  add.s      $f0, $f0, $f2
/* 11CCF4 8002AEF4 2404012C */  addiu      $a0, $zero, 0x12c
/* 11CCF8 8002AEF8 0C02591A */  jal        func_80096468
/* 11CCFC 8002AEFC E6200018 */   swc1      $f0, 0x18($s1)
/* 11CD00 8002AF00 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CD04 8002AF04 44820000 */  mtc1       $v0, $f0
/* 11CD08 8002AF08 00000000 */  nop
/* 11CD0C 8002AF0C 46800020 */  cvt.s.w    $f0, $f0
/* 11CD10 8002AF10 46140003 */  div.s      $f0, $f0, $f20
/* 11CD14 8002AF14 3C014170 */  lui        $at, 0x4170
/* 11CD18 8002AF18 44811000 */  mtc1       $at, $f2
/* 11CD1C 8002AF1C 00000000 */  nop
/* 11CD20 8002AF20 46020001 */  sub.s      $f0, $f0, $f2
/* 11CD24 8002AF24 24040028 */  addiu      $a0, $zero, 0x28
/* 11CD28 8002AF28 0C02591A */  jal        func_80096468
/* 11CD2C 8002AF2C E620001C */   swc1      $f0, 0x1c($s1)
/* 11CD30 8002AF30 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CD34 8002AF34 44820000 */  mtc1       $v0, $f0
/* 11CD38 8002AF38 00000000 */  nop
/* 11CD3C 8002AF3C 46800020 */  cvt.s.w    $f0, $f0
/* 11CD40 8002AF40 46140003 */  div.s      $f0, $f0, $f20
/* 11CD44 8002AF44 3C014000 */  lui        $at, 0x4000
/* 11CD48 8002AF48 4481B000 */  mtc1       $at, $f22
/* 11CD4C 8002AF4C 00000000 */  nop
/* 11CD50 8002AF50 46160001 */  sub.s      $f0, $f0, $f22
/* 11CD54 8002AF54 2404000A */  addiu      $a0, $zero, 0xa
/* 11CD58 8002AF58 0C02591A */  jal        func_80096468
/* 11CD5C 8002AF5C E6200020 */   swc1      $f0, 0x20($s1)
/* 11CD60 8002AF60 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CD64 8002AF64 44820000 */  mtc1       $v0, $f0
/* 11CD68 8002AF68 00000000 */  nop
/* 11CD6C 8002AF6C 46800020 */  cvt.s.w    $f0, $f0
/* 11CD70 8002AF70 46140003 */  div.s      $f0, $f0, $f20
/* 11CD74 8002AF74 3C048003 */  lui        $a0, %hi(D_80034A30_126830)
/* 11CD78 8002AF78 24844A30 */  addiu      $a0, $a0, %lo(D_80034A30_126830)
/* 11CD7C 8002AF7C 26300014 */  addiu      $s0, $s1, 0x14
/* 11CD80 8002AF80 02002821 */  addu       $a1, $s0, $zero
/* 11CD84 8002AF84 3C013B80 */  lui        $at, 0x3b80
/* 11CD88 8002AF88 44811000 */  mtc1       $at, $f2
/* 11CD8C 8002AF8C 3C013A03 */  lui        $at, 0x3a03
/* 11CD90 8002AF90 3421126F */  ori        $at, $at, 0x126f
/* 11CD94 8002AF94 44812000 */  mtc1       $at, $f4
/* 11CD98 8002AF98 2406012C */  addiu      $a2, $zero, 0x12c
/* 11CD9C 8002AF9C 24070001 */  addiu      $a3, $zero, 1
/* 11CDA0 8002AFA0 AE200028 */  sw         $zero, 0x28($s1)
/* 11CDA4 8002AFA4 E622002C */  swc1       $f2, 0x2c($s1)
/* 11CDA8 8002AFA8 E6240030 */  swc1       $f4, 0x30($s1)
/* 11CDAC 8002AFAC 0C025D06 */  jal        func_80097418
/* 11CDB0 8002AFB0 E6200024 */   swc1      $f0, 0x24($s1)
/* 11CDB4 8002AFB4 24040028 */  addiu      $a0, $zero, 0x28
/* 11CDB8 8002AFB8 AE200014 */  sw         $zero, 0x14($s1)
/* 11CDBC 8002AFBC E6340018 */  swc1       $f20, 0x18($s1)
/* 11CDC0 8002AFC0 0C02591A */  jal        func_80096468
/* 11CDC4 8002AFC4 AE20001C */   sw        $zero, 0x1c($s1)
/* 11CDC8 8002AFC8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CDCC 8002AFCC 44820000 */  mtc1       $v0, $f0
/* 11CDD0 8002AFD0 00000000 */  nop
/* 11CDD4 8002AFD4 46800020 */  cvt.s.w    $f0, $f0
/* 11CDD8 8002AFD8 46140003 */  div.s      $f0, $f0, $f20
/* 11CDDC 8002AFDC 46160001 */  sub.s      $f0, $f0, $f22
/* 11CDE0 8002AFE0 24040014 */  addiu      $a0, $zero, 0x14
/* 11CDE4 8002AFE4 0C02591A */  jal        func_80096468
/* 11CDE8 8002AFE8 E6200020 */   swc1      $f0, 0x20($s1)
/* 11CDEC 8002AFEC 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CDF0 8002AFF0 44820000 */  mtc1       $v0, $f0
/* 11CDF4 8002AFF4 00000000 */  nop
/* 11CDF8 8002AFF8 46800020 */  cvt.s.w    $f0, $f0
/* 11CDFC 8002AFFC 46140003 */  div.s      $f0, $f0, $f20
/* 11CE00 8002B000 24040028 */  addiu      $a0, $zero, 0x28
/* 11CE04 8002B004 0C02591A */  jal        func_80096468
/* 11CE08 8002B008 E6200024 */   swc1      $f0, 0x24($s1)
/* 11CE0C 8002B00C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11CE10 8002B010 44820000 */  mtc1       $v0, $f0
/* 11CE14 8002B014 00000000 */  nop
/* 11CE18 8002B018 46800020 */  cvt.s.w    $f0, $f0
/* 11CE1C 8002B01C 46140003 */  div.s      $f0, $f0, $f20
/* 11CE20 8002B020 46160001 */  sub.s      $f0, $f0, $f22
/* 11CE24 8002B024 24040002 */  addiu      $a0, $zero, 2
/* 11CE28 8002B028 0C02591A */  jal        func_80096468
/* 11CE2C 8002B02C E6200028 */   swc1      $f0, 0x28($s1)
/* 11CE30 8002B030 3C048003 */  lui        $a0, %hi(D_80034E30_126C30)
/* 11CE34 8002B034 24844E30 */  addiu      $a0, $a0, %lo(D_80034E30_126C30)
/* 11CE38 8002B038 02002821 */  addu       $a1, $s0, $zero
/* 11CE3C 8002B03C 2406012C */  addiu      $a2, $zero, 0x12c
/* 11CE40 8002B040 24070001 */  addiu      $a3, $zero, 1
/* 11CE44 8002B044 30420001 */  andi       $v0, $v0, 1
/* 11CE48 8002B048 2C420001 */  sltiu      $v0, $v0, 1
/* 11CE4C 8002B04C 00021023 */  negu       $v0, $v0
/* 11CE50 8002B050 30420083 */  andi       $v0, $v0, 0x83
/* 11CE54 8002B054 34420082 */  ori        $v0, $v0, 0x82
/* 11CE58 8002B058 0C025D06 */  jal        func_80097418
/* 11CE5C 8002B05C AE220034 */   sw        $v0, 0x34($s1)
.L8002B060:
/* 11CE60 8002B060 8E240000 */  lw         $a0, ($s1)
/* 11CE64 8002B064 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11CE68 8002B068 00000000 */   nop
/* 11CE6C 8002B06C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11CE70 8002B070 8E24000C */   lw        $a0, 0xc($s1)
/* 11CE74 8002B074 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11CE78 8002B078 8E240010 */   lw        $a0, 0x10($s1)
/* 11CE7C 8002B07C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 11CE80 8002B080 8E240000 */   lw        $a0, ($s1)
/* 11CE84 8002B084 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 11CE88 8002B088 8E24000C */   lw        $a0, 0xc($s1)
/* 11CE8C 8002B08C 8E24000C */  lw         $a0, 0xc($s1)
/* 11CE90 8002B090 8E270010 */  lw         $a3, 0x10($s1)
/* 11CE94 8002B094 3C058006 */  lui        $a1, %hi(D_8005AA50)
/* 11CE98 8002B098 24A5AA50 */  addiu      $a1, $a1, %lo(D_8005AA50)
/* 11CE9C 8002B09C 00003021 */  addu       $a2, $zero, $zero
/* 11CEA0 8002B0A0 0C00B361 */  jal        func_8002CD84_11EB84
/* 11CEA4 8002B0A4 24E70060 */   addiu     $a3, $a3, 0x60
/* 11CEA8 8002B0A8 8E230010 */  lw         $v1, 0x10($s1)
/* 11CEAC 8002B0AC 8C620000 */  lw         $v0, ($v1)
/* 11CEB0 8002B0B0 34420001 */  ori        $v0, $v0, 1
/* 11CEB4 8002B0B4 AC620000 */  sw         $v0, ($v1)
/* 11CEB8 8002B0B8 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 11CEBC 8002B0BC 8E240010 */   lw        $a0, 0x10($s1)
/* 11CEC0 8002B0C0 00001021 */  addu       $v0, $zero, $zero
.L8002B0C4:
/* 11CEC4 8002B0C4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11CEC8 8002B0C8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11CECC 8002B0CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 11CED0 8002B0D0 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 11CED4 8002B0D4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 11CED8 8002B0D8 03E00008 */  jr         $ra
/* 11CEDC 8002B0DC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8002B0E0_11CEE0
/* 11CEE0 8002B0E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11CEE4 8002B0E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11CEE8 8002B0E8 00808021 */  addu       $s0, $a0, $zero
/* 11CEEC 8002B0EC 12000016 */  beqz       $s0, .L8002B148
/* 11CEF0 8002B0F0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 11CEF4 8002B0F4 8E040000 */  lw         $a0, ($s0)
/* 11CEF8 8002B0F8 10800013 */  beqz       $a0, .L8002B148
/* 11CEFC 8002B0FC 00000000 */   nop
/* 11CF00 8002B100 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11CF04 8002B104 00000000 */   nop
/* 11CF08 8002B108 8E040000 */  lw         $a0, ($s0)
/* 11CF0C 8002B10C 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11CF10 8002B110 24840004 */   addiu     $a0, $a0, 4
/* 11CF14 8002B114 8E040000 */  lw         $a0, ($s0)
/* 11CF18 8002B118 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11CF1C 8002B11C 24840008 */   addiu     $a0, $a0, 8
/* 11CF20 8002B120 8E040000 */  lw         $a0, ($s0)
/* 11CF24 8002B124 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11CF28 8002B128 2484000C */   addiu     $a0, $a0, 0xc
/* 11CF2C 8002B12C 8E040000 */  lw         $a0, ($s0)
/* 11CF30 8002B130 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11CF34 8002B134 24840010 */   addiu     $a0, $a0, 0x10
/* 11CF38 8002B138 8E040000 */  lw         $a0, ($s0)
/* 11CF3C 8002B13C 0C0326A1 */  jal        func_800C9A84
/* 11CF40 8002B140 00000000 */   nop
/* 11CF44 8002B144 AE000000 */  sw         $zero, ($s0)
.L8002B148:
/* 11CF48 8002B148 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CF4C 8002B14C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11CF50 8002B150 03E00008 */  jr         $ra
/* 11CF54 8002B154 27BD0018 */   addiu     $sp, $sp, 0x18
/* 11CF58 8002B158 00000000 */  nop
/* 11CF5C 8002B15C 00000000 */  nop