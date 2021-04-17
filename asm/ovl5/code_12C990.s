.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003AB90_12C990
/* 12C990 8003AB90 3C028005 */  lui        $v0, %hi(D_80051E70_143C70)
/* 12C994 8003AB94 90421E70 */  lbu        $v0, %lo(D_80051E70_143C70)($v0)
/* 12C998 8003AB98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12C99C 8003AB9C AFB00018 */  sw         $s0, 0x18($sp)
/* 12C9A0 8003ABA0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 12C9A4 8003ABA4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 12C9A8 8003ABA8 10400041 */  beqz       $v0, .L8003ACB0
/* 12C9AC 8003ABAC 00808021 */   addu      $s0, $a0, $zero
/* 12C9B0 8003ABB0 0C02A5D2 */  jal        func_800A9748
/* 12C9B4 8003ABB4 24040001 */   addiu     $a0, $zero, 1
/* 12C9B8 8003ABB8 0C02725C */  jal        func_8009C970
/* 12C9BC 8003ABBC 00000000 */   nop
/* 12C9C0 8003ABC0 3C014120 */  lui        $at, 0x4120
/* 12C9C4 8003ABC4 44810000 */  mtc1       $at, $f0
/* 12C9C8 8003ABC8 3C0140A0 */  lui        $at, 0x40a0
/* 12C9CC 8003ABCC 4481A000 */  mtc1       $at, $f20
/* 12C9D0 8003ABD0 3C01C348 */  lui        $at, 0xc348
/* 12C9D4 8003ABD4 44811000 */  mtc1       $at, $f2
/* 12C9D8 8003ABD8 24040053 */  addiu      $a0, $zero, 0x53
/* 12C9DC 8003ABDC 24050048 */  addiu      $a1, $zero, 0x48
/* 12C9E0 8003ABE0 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12C9E4 8003ABE4 AFA20010 */  sw         $v0, 0x10($sp)
/* 12C9E8 8003ABE8 240200DC */  addiu      $v0, $zero, 0xdc
/* 12C9EC 8003ABEC 24060053 */  addiu      $a2, $zero, 0x53
/* 12C9F0 8003ABF0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12C9F4 8003ABF4 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 12C9F8 8003ABF8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12C9FC 8003ABFC AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 12CA00 8003AC00 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12CA04 8003AC04 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 12CA08 8003AC08 3C018015 */  lui        $at, %hi(D_8014A084)
/* 12CA0C 8003AC0C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 12CA10 8003AC10 AFA20014 */  sw         $v0, 0x14($sp)
/* 12CA14 8003AC14 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12CA18 8003AC18 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12CA1C 8003AC1C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12CA20 8003AC20 E434A068 */  swc1       $f20, %lo(D_8014A068)($at)
/* 12CA24 8003AC24 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12CA28 8003AC28 E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* 12CA2C 8003AC2C 0C027101 */  jal        func_8009C404
/* 12CA30 8003AC30 240700FF */   addiu     $a3, $zero, 0xff
/* 12CA34 8003AC34 3C014170 */  lui        $at, 0x4170
/* 12CA38 8003AC38 44810000 */  mtc1       $at, $f0
/* 12CA3C 8003AC3C 3C014180 */  lui        $at, 0x4180
/* 12CA40 8003AC40 44811000 */  mtc1       $at, $f2
/* 12CA44 8003AC44 3C01C1C0 */  lui        $at, 0xc1c0
/* 12CA48 8003AC48 44812000 */  mtc1       $at, $f4
/* 12CA4C 8003AC4C 3C014130 */  lui        $at, 0x4130
/* 12CA50 8003AC50 44813000 */  mtc1       $at, $f6
/* 12CA54 8003AC54 3C01C190 */  lui        $at, 0xc190
/* 12CA58 8003AC58 44814000 */  mtc1       $at, $f8
/* 12CA5C 8003AC5C 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12CA60 8003AC60 E434A050 */  swc1       $f20, %lo(D_8014A050)($at)
/* 12CA64 8003AC64 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12CA68 8003AC68 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12CA6C 8003AC6C 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12CA70 8003AC70 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12CA74 8003AC74 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12CA78 8003AC78 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12CA7C 8003AC7C 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12CA80 8003AC80 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12CA84 8003AC84 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12CA88 8003AC88 0C00EB66 */  jal        func_8003AD98_12CB98
/* 12CA8C 8003AC8C E428D1A8 */   swc1      $f8, %lo(D_8016D1A8)($at)
/* 12CA90 8003AC90 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12CA94 8003AC94 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12CA98 8003AC98 3C018006 */  lui        $at, %hi(D_8005DDF0)
/* 12CA9C 8003AC9C AC22DDF0 */  sw         $v0, %lo(D_8005DDF0)($at)
/* 12CAA0 8003ACA0 0C00A157 */  jal        func_8002855C_11A35C
/* 12CAA4 8003ACA4 24050009 */   addiu     $a1, $zero, 9
/* 12CAA8 8003ACA8 3C018005 */  lui        $at, %hi(D_80051E70_143C70)
/* 12CAAC 8003ACAC A0201E70 */  sb         $zero, %lo(D_80051E70_143C70)($at)
.L8003ACB0:
/* 12CAB0 8003ACB0 16000003 */  bnez       $s0, .L8003ACC0
/* 12CAB4 8003ACB4 24020001 */   addiu     $v0, $zero, 1
/* 12CAB8 8003ACB8 3C018005 */  lui        $at, %hi(D_80051E74_143C74)
/* 12CABC 8003ACBC AC221E74 */  sw         $v0, %lo(D_80051E74_143C74)($at)
.L8003ACC0:
/* 12CAC0 8003ACC0 3C028005 */  lui        $v0, %hi(D_80051E74_143C74)
/* 12CAC4 8003ACC4 8C421E74 */  lw         $v0, %lo(D_80051E74_143C74)($v0)
/* 12CAC8 8003ACC8 10400024 */  beqz       $v0, .L8003AD5C
/* 12CACC 8003ACCC 00000000 */   nop
/* 12CAD0 8003ACD0 3C028006 */  lui        $v0, %hi(D_8005DDF0)
/* 12CAD4 8003ACD4 8C42DDF0 */  lw         $v0, %lo(D_8005DDF0)($v0)
/* 12CAD8 8003ACD8 0C029393 */  jal        func_800A4E4C
/* 12CADC 8003ACDC 8C440014 */   lw        $a0, 0x14($v0)
/* 12CAE0 8003ACE0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12CAE4 8003ACE4 0C00A16B */  jal        func_800285AC_11A3AC
/* 12CAE8 8003ACE8 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12CAEC 8003ACEC 3C018006 */  lui        $at, %hi(D_8005DDF4)
/* 12CAF0 8003ACF0 AC20DDF4 */  sw         $zero, %lo(D_8005DDF4)($at)
.L8003ACF4:
/* 12CAF4 8003ACF4 3C028006 */  lui        $v0, %hi(D_8005DDF4)
/* 12CAF8 8003ACF8 8C42DDF4 */  lw         $v0, %lo(D_8005DDF4)($v0)
/* 12CAFC 8003ACFC 3C038006 */  lui        $v1, %hi(D_8005DDF0)
/* 12CB00 8003AD00 8C63DDF0 */  lw         $v1, %lo(D_8005DDF0)($v1)
/* 12CB04 8003AD04 00021080 */  sll        $v0, $v0, 2
/* 12CB08 8003AD08 00431021 */  addu       $v0, $v0, $v1
/* 12CB0C 8003AD0C 0C028D30 */  jal        func_800A34C0
/* 12CB10 8003AD10 8C440004 */   lw        $a0, 4($v0)
/* 12CB14 8003AD14 3C028006 */  lui        $v0, %hi(D_8005DDF4)
/* 12CB18 8003AD18 8C42DDF4 */  lw         $v0, %lo(D_8005DDF4)($v0)
/* 12CB1C 8003AD1C 24420001 */  addiu      $v0, $v0, 1
/* 12CB20 8003AD20 3C018006 */  lui        $at, %hi(D_8005DDF4)
/* 12CB24 8003AD24 AC22DDF4 */  sw         $v0, %lo(D_8005DDF4)($at)
/* 12CB28 8003AD28 2C420004 */  sltiu      $v0, $v0, 4
/* 12CB2C 8003AD2C 1440FFF1 */  bnez       $v0, .L8003ACF4
/* 12CB30 8003AD30 00000000 */   nop
/* 12CB34 8003AD34 3C048006 */  lui        $a0, %hi(D_8005DDF0)
/* 12CB38 8003AD38 0C00EBFF */  jal        func_8003AFFC_12CDFC
/* 12CB3C 8003AD3C 2484DDF0 */   addiu     $a0, $a0, %lo(D_8005DDF0)
/* 12CB40 8003AD40 24030001 */  addiu      $v1, $zero, 1
/* 12CB44 8003AD44 3C018005 */  lui        $at, %hi(D_80051E74_143C74)
/* 12CB48 8003AD48 AC201E74 */  sw         $zero, %lo(D_80051E74_143C74)($at)
/* 12CB4C 8003AD4C 3C018005 */  lui        $at, %hi(D_80051E70_143C70)
/* 12CB50 8003AD50 A0231E70 */  sb         $v1, %lo(D_80051E70_143C70)($at)
/* 12CB54 8003AD54 0800EB61 */  j          .L8003AD84
/* 12CB58 8003AD58 24020001 */   addiu     $v0, $zero, 1
.L8003AD5C:
/* 12CB5C 8003AD5C 3C048006 */  lui        $a0, %hi(D_8005DDF0)
/* 12CB60 8003AD60 0C00EBD8 */  jal        func_8003AF60_12CD60
/* 12CB64 8003AD64 8C84DDF0 */   lw        $a0, %lo(D_8005DDF0)($a0)
/* 12CB68 8003AD68 3C018005 */  lui        $at, %hi(D_80051E74_143C74)
/* 12CB6C 8003AD6C 0C009767 */  jal        func_80025D9C_117B9C
/* 12CB70 8003AD70 AC221E74 */   sw        $v0, %lo(D_80051E74_143C74)($at)
/* 12CB74 8003AD74 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12CB78 8003AD78 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 12CB7C 8003AD7C 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12CB80 8003AD80 00001021 */  addu       $v0, $zero, $zero
.L8003AD84:
/* 12CB84 8003AD84 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12CB88 8003AD88 8FB00018 */  lw         $s0, 0x18($sp)
/* 12CB8C 8003AD8C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12CB90 8003AD90 03E00008 */  jr         $ra
/* 12CB94 8003AD94 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003AD98_12CB98
/* 12CB98 8003AD98 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12CB9C 8003AD9C AFBF002C */  sw         $ra, 0x2c($sp)
/* 12CBA0 8003ADA0 AFB40028 */  sw         $s4, 0x28($sp)
/* 12CBA4 8003ADA4 AFB30024 */  sw         $s3, 0x24($sp)
/* 12CBA8 8003ADA8 AFB20020 */  sw         $s2, 0x20($sp)
/* 12CBAC 8003ADAC AFB1001C */  sw         $s1, 0x1c($sp)
/* 12CBB0 8003ADB0 AFB00018 */  sw         $s0, 0x18($sp)
/* 12CBB4 8003ADB4 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 12CBB8 8003ADB8 0C032663 */  jal        func_800C998C
/* 12CBBC 8003ADBC 2404001C */   addiu     $a0, $zero, 0x1c
/* 12CBC0 8003ADC0 0040A021 */  addu       $s4, $v0, $zero
/* 12CBC4 8003ADC4 02802021 */  addu       $a0, $s4, $zero
/* 12CBC8 8003ADC8 0C030134 */  jal        bzero
/* 12CBCC 8003ADCC 2405001C */   addiu     $a1, $zero, 0x1c
/* 12CBD0 8003ADD0 3C014080 */  lui        $at, 0x4080
/* 12CBD4 8003ADD4 4481A000 */  mtc1       $at, $f20
/* 12CBD8 8003ADD8 00009821 */  addu       $s3, $zero, $zero
/* 12CBDC 8003ADDC 24020050 */  addiu      $v0, $zero, 0x50
/* 12CBE0 8003ADE0 AE820018 */  sw         $v0, 0x18($s4)
.L8003ADE4:
/* 12CBE4 8003ADE4 3271FFFF */  andi       $s1, $s3, 0xffff
/* 12CBE8 8003ADE8 001180C0 */  sll        $s0, $s1, 3
/* 12CBEC 8003ADEC 02118023 */  subu       $s0, $s0, $s1
/* 12CBF0 8003ADF0 00108080 */  sll        $s0, $s0, 2
/* 12CBF4 8003ADF4 3C048006 */  lui        $a0, %hi(D_8005C3C0_14E1C0)
/* 12CBF8 8003ADF8 00902021 */  addu       $a0, $a0, $s0
/* 12CBFC 8003ADFC 9484C3C0 */  lhu        $a0, %lo(D_8005C3C0_14E1C0)($a0)
/* 12CC00 8003AE00 24050002 */  addiu      $a1, $zero, 2
/* 12CC04 8003AE04 0C028CB7 */  jal        func_800A32DC
/* 12CC08 8003AE08 00003021 */   addu      $a2, $zero, $zero
/* 12CC0C 8003AE0C 00409021 */  addu       $s2, $v0, $zero
/* 12CC10 8003AE10 02402021 */  addu       $a0, $s2, $zero
/* 12CC14 8003AE14 3C068006 */  lui        $a2, %hi(D_8005C3D4_14E1D4)
/* 12CC18 8003AE18 00D03021 */  addu       $a2, $a2, $s0
/* 12CC1C 8003AE1C 8CC6C3D4 */  lw         $a2, %lo(D_8005C3D4_14E1D4)($a2)
/* 12CC20 8003AE20 3C078006 */  lui        $a3, %hi(D_8005C3D8_14E1D8)
/* 12CC24 8003AE24 00F03821 */  addu       $a3, $a3, $s0
/* 12CC28 8003AE28 8CE7C3D8 */  lw         $a3, %lo(D_8005C3D8_14E1D8)($a3)
/* 12CC2C 8003AE2C 9642001E */  lhu        $v0, 0x1e($s2)
/* 12CC30 8003AE30 3C038006 */  lui        $v1, %hi(D_8005C3C4_14E1C4)
/* 12CC34 8003AE34 00701821 */  addu       $v1, $v1, $s0
/* 12CC38 8003AE38 9463C3C4 */  lhu        $v1, %lo(D_8005C3C4_14E1C4)($v1)
/* 12CC3C 8003AE3C 3C088006 */  lui        $t0, %hi(D_8005C3C2_14E1C2)
/* 12CC40 8003AE40 01104021 */  addu       $t0, $t0, $s0
/* 12CC44 8003AE44 9508C3C2 */  lhu        $t0, %lo(D_8005C3C2_14E1C2)($t0)
/* 12CC48 8003AE48 00002821 */  addu       $a1, $zero, $zero
/* 12CC4C 8003AE4C 00431025 */  or         $v0, $v0, $v1
/* 12CC50 8003AE50 A642001E */  sh         $v0, 0x1e($s2)
/* 12CC54 8003AE54 0C02915B */  jal        func_800A456C
/* 12CC58 8003AE58 A648001C */   sh        $t0, 0x1c($s2)
/* 12CC5C 8003AE5C 3C018006 */  lui        $at, %hi(D_8005C3C8_14E1C8)
/* 12CC60 8003AE60 00300821 */  addu       $at, $at, $s0
/* 12CC64 8003AE64 C420C3C8 */  lwc1       $f0, %lo(D_8005C3C8_14E1C8)($at)
/* 12CC68 8003AE68 46140002 */  mul.s      $f0, $f0, $f20
/* 12CC6C 8003AE6C 3C018006 */  lui        $at, %hi(D_8005C3CC_14E1CC)
/* 12CC70 8003AE70 00300821 */  addu       $at, $at, $s0
/* 12CC74 8003AE74 C422C3CC */  lwc1       $f2, %lo(D_8005C3CC_14E1CC)($at)
/* 12CC78 8003AE78 46141082 */  mul.s      $f2, $f2, $f20
/* 12CC7C 8003AE7C 26730001 */  addiu      $s3, $s3, 1
/* 12CC80 8003AE80 02402021 */  addu       $a0, $s2, $zero
/* 12CC84 8003AE84 4600010D */  trunc.w.s  $f4, $f0
/* 12CC88 8003AE88 44052000 */  mfc1       $a1, $f4
/* 12CC8C 8003AE8C 00000000 */  nop
/* 12CC90 8003AE90 00052C00 */  sll        $a1, $a1, 0x10
/* 12CC94 8003AE94 00052C03 */  sra        $a1, $a1, 0x10
/* 12CC98 8003AE98 4600100D */  trunc.w.s  $f0, $f2
/* 12CC9C 8003AE9C 44060000 */  mfc1       $a2, $f0
/* 12CCA0 8003AEA0 00000000 */  nop
/* 12CCA4 8003AEA4 00063400 */  sll        $a2, $a2, 0x10
/* 12CCA8 8003AEA8 0C028D89 */  jal        func_800A3624
/* 12CCAC 8003AEAC 00063403 */   sra       $a2, $a2, 0x10
/* 12CCB0 8003AEB0 00118880 */  sll        $s1, $s1, 2
/* 12CCB4 8003AEB4 02348821 */  addu       $s1, $s1, $s4
/* 12CCB8 8003AEB8 3262FFFF */  andi       $v0, $s3, 0xffff
/* 12CCBC 8003AEBC 2C420004 */  sltiu      $v0, $v0, 4
/* 12CCC0 8003AEC0 1440FFC8 */  bnez       $v0, .L8003ADE4
/* 12CCC4 8003AEC4 AE320004 */   sw        $s2, 4($s1)
/* 12CCC8 8003AEC8 8E820004 */  lw         $v0, 4($s4)
/* 12CCCC 8003AECC 8C430014 */  lw         $v1, 0x14($v0)
/* 12CCD0 8003AED0 240212F0 */  addiu      $v0, $zero, 0x12f0
/* 12CCD4 8003AED4 0C029375 */  jal        func_800A4DD4
/* 12CCD8 8003AED8 A4620000 */   sh        $v0, ($v1)
/* 12CCDC 8003AEDC AE820014 */  sw         $v0, 0x14($s4)
/* 12CCE0 8003AEE0 A440001C */  sh         $zero, 0x1c($v0)
/* 12CCE4 8003AEE4 240200E0 */  addiu      $v0, $zero, 0xe0
/* 12CCE8 8003AEE8 AFA20010 */  sw         $v0, 0x10($sp)
/* 12CCEC 8003AEEC 8E840014 */  lw         $a0, 0x14($s4)
/* 12CCF0 8003AEF0 24050010 */  addiu      $a1, $zero, 0x10
/* 12CCF4 8003AEF4 24060010 */  addiu      $a2, $zero, 0x10
/* 12CCF8 8003AEF8 0C02939C */  jal        func_800A4E70
/* 12CCFC 8003AEFC 24070130 */   addiu     $a3, $zero, 0x130
/* 12CD00 8003AF00 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12CD04 8003AF04 00000000 */   nop
/* 12CD08 8003AF08 00401821 */  addu       $v1, $v0, $zero
/* 12CD0C 8003AF0C 02801021 */  addu       $v0, $s4, $zero
/* 12CD10 8003AF10 24040007 */  addiu      $a0, $zero, 7
/* 12CD14 8003AF14 AC430000 */  sw         $v1, ($v0)
/* 12CD18 8003AF18 AC64001C */  sw         $a0, 0x1c($v1)
/* 12CD1C 8003AF1C 2404000F */  addiu      $a0, $zero, 0xf
/* 12CD20 8003AF20 AC640004 */  sw         $a0, 4($v1)
/* 12CD24 8003AF24 24040004 */  addiu      $a0, $zero, 4
/* 12CD28 8003AF28 AC640008 */  sw         $a0, 8($v1)
/* 12CD2C 8003AF2C 24040001 */  addiu      $a0, $zero, 1
/* 12CD30 8003AF30 AC600044 */  sw         $zero, 0x44($v1)
/* 12CD34 8003AF34 AC600054 */  sw         $zero, 0x54($v1)
/* 12CD38 8003AF38 AC64000C */  sw         $a0, 0xc($v1)
/* 12CD3C 8003AF3C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 12CD40 8003AF40 8FB40028 */  lw         $s4, 0x28($sp)
/* 12CD44 8003AF44 8FB30024 */  lw         $s3, 0x24($sp)
/* 12CD48 8003AF48 8FB20020 */  lw         $s2, 0x20($sp)
/* 12CD4C 8003AF4C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 12CD50 8003AF50 8FB00018 */  lw         $s0, 0x18($sp)
/* 12CD54 8003AF54 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 12CD58 8003AF58 03E00008 */  jr         $ra
/* 12CD5C 8003AF5C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003AF60_12CD60
/* 12CD60 8003AF60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12CD64 8003AF64 AFB10014 */  sw         $s1, 0x14($sp)
/* 12CD68 8003AF68 00808821 */  addu       $s1, $a0, $zero
/* 12CD6C 8003AF6C AFBF0018 */  sw         $ra, 0x18($sp)
/* 12CD70 8003AF70 AFB00010 */  sw         $s0, 0x10($sp)
/* 12CD74 8003AF74 8E220018 */  lw         $v0, 0x18($s1)
/* 12CD78 8003AF78 8E240000 */  lw         $a0, ($s1)
/* 12CD7C 8003AF7C 2442FFFF */  addiu      $v0, $v0, -1
/* 12CD80 8003AF80 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12CD84 8003AF84 AE220018 */   sw        $v0, 0x18($s1)
/* 12CD88 8003AF88 8E240000 */  lw         $a0, ($s1)
/* 12CD8C 8003AF8C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12CD90 8003AF90 00008021 */   addu      $s0, $zero, $zero
/* 12CD94 8003AF94 3202FFFF */  andi       $v0, $s0, 0xffff
.L8003AF98:
/* 12CD98 8003AF98 00021080 */  sll        $v0, $v0, 2
/* 12CD9C 8003AF9C 00511021 */  addu       $v0, $v0, $s1
/* 12CDA0 8003AFA0 8C440004 */  lw         $a0, 4($v0)
/* 12CDA4 8003AFA4 0C028A40 */  jal        func_800A2900
/* 12CDA8 8003AFA8 26100001 */   addiu     $s0, $s0, 1
/* 12CDAC 8003AFAC 3202FFFF */  andi       $v0, $s0, 0xffff
/* 12CDB0 8003AFB0 2C420004 */  sltiu      $v0, $v0, 4
/* 12CDB4 8003AFB4 1440FFF8 */  bnez       $v0, .L8003AF98
/* 12CDB8 8003AFB8 3202FFFF */   andi      $v0, $s0, 0xffff
/* 12CDBC 8003AFBC 8E230018 */  lw         $v1, 0x18($s1)
/* 12CDC0 8003AFC0 24020014 */  addiu      $v0, $zero, 0x14
/* 12CDC4 8003AFC4 14620003 */  bne        $v1, $v0, .L8003AFD4
/* 12CDC8 8003AFC8 00000000 */   nop
/* 12CDCC 8003AFCC 0C02A5E5 */  jal        func_800A9794
/* 12CDD0 8003AFD0 24040014 */   addiu     $a0, $zero, 0x14
.L8003AFD4:
/* 12CDD4 8003AFD4 8E240014 */  lw         $a0, 0x14($s1)
/* 12CDD8 8003AFD8 0C028A40 */  jal        func_800A2900
/* 12CDDC 8003AFDC 00000000 */   nop
/* 12CDE0 8003AFE0 8E220018 */  lw         $v0, 0x18($s1)
/* 12CDE4 8003AFE4 2C420001 */  sltiu      $v0, $v0, 1
/* 12CDE8 8003AFE8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12CDEC 8003AFEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 12CDF0 8003AFF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CDF4 8003AFF4 03E00008 */  jr         $ra
/* 12CDF8 8003AFF8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003AFFC_12CDFC
/* 12CDFC 8003AFFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12CE00 8003B000 AFB00010 */  sw         $s0, 0x10($sp)
/* 12CE04 8003B004 00808021 */  addu       $s0, $a0, $zero
/* 12CE08 8003B008 12000009 */  beqz       $s0, .L8003B030
/* 12CE0C 8003B00C AFBF0014 */   sw        $ra, 0x14($sp)
/* 12CE10 8003B010 8E040000 */  lw         $a0, ($s0)
/* 12CE14 8003B014 10800006 */  beqz       $a0, .L8003B030
/* 12CE18 8003B018 00000000 */   nop
/* 12CE1C 8003B01C 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12CE20 8003B020 00000000 */   nop
/* 12CE24 8003B024 0C0326A1 */  jal        func_800C9A84
/* 12CE28 8003B028 8E040000 */   lw        $a0, ($s0)
/* 12CE2C 8003B02C AE000000 */  sw         $zero, ($s0)
.L8003B030:
/* 12CE30 8003B030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12CE34 8003B034 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CE38 8003B038 03E00008 */  jr         $ra
/* 12CE3C 8003B03C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003B040_12CE40
/* 12CE40 8003B040 3C028005 */  lui        $v0, %hi(D_80051E80_143C80)
/* 12CE44 8003B044 90421E80 */  lbu        $v0, %lo(D_80051E80_143C80)($v0)
/* 12CE48 8003B048 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12CE4C 8003B04C AFB00018 */  sw         $s0, 0x18($sp)
/* 12CE50 8003B050 00808021 */  addu       $s0, $a0, $zero
/* 12CE54 8003B054 1040003B */  beqz       $v0, .L8003B144
/* 12CE58 8003B058 AFBF001C */   sw        $ra, 0x1c($sp)
/* 12CE5C 8003B05C 0C02A5D2 */  jal        func_800A9748
/* 12CE60 8003B060 24040001 */   addiu     $a0, $zero, 1
/* 12CE64 8003B064 0C02725C */  jal        func_8009C970
/* 12CE68 8003B068 00000000 */   nop
/* 12CE6C 8003B06C 0C026DD5 */  jal        func_8009B754
/* 12CE70 8003B070 24040015 */   addiu     $a0, $zero, 0x15
/* 12CE74 8003B074 3C0141A0 */  lui        $at, 0x41a0
/* 12CE78 8003B078 44810000 */  mtc1       $at, $f0
/* 12CE7C 8003B07C 3C01C2C8 */  lui        $at, 0xc2c8
/* 12CE80 8003B080 44811000 */  mtc1       $at, $f2
/* 12CE84 8003B084 24040053 */  addiu      $a0, $zero, 0x53
/* 12CE88 8003B088 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12CE8C 8003B08C AFA20010 */  sw         $v0, 0x10($sp)
/* 12CE90 8003B090 240200DC */  addiu      $v0, $zero, 0xdc
/* 12CE94 8003B094 24050048 */  addiu      $a1, $zero, 0x48
/* 12CE98 8003B098 24060053 */  addiu      $a2, $zero, 0x53
/* 12CE9C 8003B09C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12CEA0 8003B0A0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 12CEA4 8003B0A4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12CEA8 8003B0A8 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 12CEAC 8003B0AC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12CEB0 8003B0B0 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 12CEB4 8003B0B4 AFA20014 */  sw         $v0, 0x14($sp)
/* 12CEB8 8003B0B8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12CEBC 8003B0BC E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 12CEC0 8003B0C0 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12CEC4 8003B0C4 E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* 12CEC8 8003B0C8 0C027101 */  jal        func_8009C404
/* 12CECC 8003B0CC 240700FF */   addiu     $a3, $zero, 0xff
/* 12CED0 8003B0D0 3C014170 */  lui        $at, 0x4170
/* 12CED4 8003B0D4 44810000 */  mtc1       $at, $f0
/* 12CED8 8003B0D8 3C014180 */  lui        $at, 0x4180
/* 12CEDC 8003B0DC 44811000 */  mtc1       $at, $f2
/* 12CEE0 8003B0E0 3C01C1C0 */  lui        $at, 0xc1c0
/* 12CEE4 8003B0E4 44812000 */  mtc1       $at, $f4
/* 12CEE8 8003B0E8 3C014130 */  lui        $at, 0x4130
/* 12CEEC 8003B0EC 44813000 */  mtc1       $at, $f6
/* 12CEF0 8003B0F0 3C0140A0 */  lui        $at, 0x40a0
/* 12CEF4 8003B0F4 44814000 */  mtc1       $at, $f8
/* 12CEF8 8003B0F8 3C01C190 */  lui        $at, 0xc190
/* 12CEFC 8003B0FC 44815000 */  mtc1       $at, $f10
/* 12CF00 8003B100 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12CF04 8003B104 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12CF08 8003B108 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12CF0C 8003B10C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12CF10 8003B110 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12CF14 8003B114 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12CF18 8003B118 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12CF1C 8003B11C E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12CF20 8003B120 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12CF24 8003B124 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 12CF28 8003B128 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12CF2C 8003B12C 0C00EC9A */  jal        func_8003B268_12D068
/* 12CF30 8003B130 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 12CF34 8003B134 3C018006 */  lui        $at, %hi(D_8005DE00)
/* 12CF38 8003B138 AC22DE00 */  sw         $v0, %lo(D_8005DE00)($at)
/* 12CF3C 8003B13C 3C018005 */  lui        $at, %hi(D_80051E80_143C80)
/* 12CF40 8003B140 A0201E80 */  sb         $zero, %lo(D_80051E80_143C80)($at)
.L8003B144:
/* 12CF44 8003B144 16000003 */  bnez       $s0, .L8003B154
/* 12CF48 8003B148 24020001 */   addiu     $v0, $zero, 1
/* 12CF4C 8003B14C 3C018005 */  lui        $at, %hi(D_80051E84_143C84)
/* 12CF50 8003B150 AC221E84 */  sw         $v0, %lo(D_80051E84_143C84)($at)
.L8003B154:
/* 12CF54 8003B154 3C028005 */  lui        $v0, %hi(D_80051E84_143C84)
/* 12CF58 8003B158 8C421E84 */  lw         $v0, %lo(D_80051E84_143C84)($v0)
/* 12CF5C 8003B15C 10400037 */  beqz       $v0, .L8003B23C
/* 12CF60 8003B160 00000000 */   nop
/* 12CF64 8003B164 3C028006 */  lui        $v0, %hi(D_8005DE00)
/* 12CF68 8003B168 8C42DE00 */  lw         $v0, %lo(D_8005DE00)($v0)
/* 12CF6C 8003B16C 0C0295AA */  jal        func_800A56A8
/* 12CF70 8003B170 8C440040 */   lw        $a0, 0x40($v0)
/* 12CF74 8003B174 3C028006 */  lui        $v0, %hi(D_8005DE00)
/* 12CF78 8003B178 8C42DE00 */  lw         $v0, %lo(D_8005DE00)($v0)
/* 12CF7C 8003B17C 0C029393 */  jal        func_800A4E4C
/* 12CF80 8003B180 8C44003C */   lw        $a0, 0x3c($v0)
/* 12CF84 8003B184 3C018006 */  lui        $at, %hi(D_8005DE04)
/* 12CF88 8003B188 AC20DE04 */  sw         $zero, %lo(D_8005DE04)($at)
.L8003B18C:
/* 12CF8C 8003B18C 3C028006 */  lui        $v0, %hi(D_8005DE04)
/* 12CF90 8003B190 8C42DE04 */  lw         $v0, %lo(D_8005DE04)($v0)
/* 12CF94 8003B194 3C038006 */  lui        $v1, %hi(D_8005DE00)
/* 12CF98 8003B198 8C63DE00 */  lw         $v1, %lo(D_8005DE00)($v1)
/* 12CF9C 8003B19C 00021080 */  sll        $v0, $v0, 2
/* 12CFA0 8003B1A0 00431021 */  addu       $v0, $v0, $v1
/* 12CFA4 8003B1A4 0C028D30 */  jal        func_800A34C0
/* 12CFA8 8003B1A8 8C44000C */   lw        $a0, 0xc($v0)
/* 12CFAC 8003B1AC 3C028006 */  lui        $v0, %hi(D_8005DE04)
/* 12CFB0 8003B1B0 8C42DE04 */  lw         $v0, %lo(D_8005DE04)($v0)
/* 12CFB4 8003B1B4 24420001 */  addiu      $v0, $v0, 1
/* 12CFB8 8003B1B8 3C018006 */  lui        $at, %hi(D_8005DE04)
/* 12CFBC 8003B1BC AC22DE04 */  sw         $v0, %lo(D_8005DE04)($at)
/* 12CFC0 8003B1C0 2C420006 */  sltiu      $v0, $v0, 6
/* 12CFC4 8003B1C4 1440FFF1 */  bnez       $v0, .L8003B18C
/* 12CFC8 8003B1C8 00000000 */   nop
/* 12CFCC 8003B1CC 3C018006 */  lui        $at, %hi(D_8005DE04)
/* 12CFD0 8003B1D0 AC20DE04 */  sw         $zero, %lo(D_8005DE04)($at)
.L8003B1D4:
/* 12CFD4 8003B1D4 3C028006 */  lui        $v0, %hi(D_8005DE04)
/* 12CFD8 8003B1D8 8C42DE04 */  lw         $v0, %lo(D_8005DE04)($v0)
/* 12CFDC 8003B1DC 3C038006 */  lui        $v1, %hi(D_8005DE00)
/* 12CFE0 8003B1E0 8C63DE00 */  lw         $v1, %lo(D_8005DE00)($v1)
/* 12CFE4 8003B1E4 00021080 */  sll        $v0, $v0, 2
/* 12CFE8 8003B1E8 00431021 */  addu       $v0, $v0, $v1
/* 12CFEC 8003B1EC 0C028D30 */  jal        func_800A34C0
/* 12CFF0 8003B1F0 8C440024 */   lw        $a0, 0x24($v0)
/* 12CFF4 8003B1F4 3C028006 */  lui        $v0, %hi(D_8005DE04)
/* 12CFF8 8003B1F8 8C42DE04 */  lw         $v0, %lo(D_8005DE04)($v0)
/* 12CFFC 8003B1FC 24420001 */  addiu      $v0, $v0, 1
/* 12D000 8003B200 3C018006 */  lui        $at, %hi(D_8005DE04)
/* 12D004 8003B204 AC22DE04 */  sw         $v0, %lo(D_8005DE04)($at)
/* 12D008 8003B208 2C420002 */  sltiu      $v0, $v0, 2
/* 12D00C 8003B20C 1440FFF1 */  bnez       $v0, .L8003B1D4
/* 12D010 8003B210 00000000 */   nop
/* 12D014 8003B214 3C048006 */  lui        $a0, %hi(D_8005DE00)
/* 12D018 8003B218 0C00EE73 */  jal        func_8003B9CC_12D7CC
/* 12D01C 8003B21C 2484DE00 */   addiu     $a0, $a0, %lo(D_8005DE00)
/* 12D020 8003B220 24030001 */  addiu      $v1, $zero, 1
/* 12D024 8003B224 3C018005 */  lui        $at, %hi(D_80051E84_143C84)
/* 12D028 8003B228 AC201E84 */  sw         $zero, %lo(D_80051E84_143C84)($at)
/* 12D02C 8003B22C 3C018005 */  lui        $at, %hi(D_80051E80_143C80)
/* 12D030 8003B230 A0231E80 */  sb         $v1, %lo(D_80051E80_143C80)($at)
/* 12D034 8003B234 0800EC96 */  j          .L8003B258
/* 12D038 8003B238 24020001 */   addiu     $v0, $zero, 1
.L8003B23C:
/* 12D03C 8003B23C 3C048006 */  lui        $a0, %hi(D_8005DE00)
/* 12D040 8003B240 0C00EDE0 */  jal        func_8003B780_12D580
/* 12D044 8003B244 8C84DE00 */   lw        $a0, %lo(D_8005DE00)($a0)
/* 12D048 8003B248 3C018005 */  lui        $at, %hi(D_80051E84_143C84)
/* 12D04C 8003B24C 0C009767 */  jal        func_80025D9C_117B9C
/* 12D050 8003B250 AC221E84 */   sw        $v0, %lo(D_80051E84_143C84)($at)
/* 12D054 8003B254 00001021 */  addu       $v0, $zero, $zero
.L8003B258:
/* 12D058 8003B258 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12D05C 8003B25C 8FB00018 */  lw         $s0, 0x18($sp)
/* 12D060 8003B260 03E00008 */  jr         $ra
/* 12D064 8003B264 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003B268_12D068
/* 12D068 8003B268 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 12D06C 8003B26C AFBF002C */  sw         $ra, 0x2c($sp)
/* 12D070 8003B270 AFB40028 */  sw         $s4, 0x28($sp)
/* 12D074 8003B274 AFB30024 */  sw         $s3, 0x24($sp)
/* 12D078 8003B278 AFB20020 */  sw         $s2, 0x20($sp)
/* 12D07C 8003B27C AFB1001C */  sw         $s1, 0x1c($sp)
/* 12D080 8003B280 AFB00018 */  sw         $s0, 0x18($sp)
/* 12D084 8003B284 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 12D088 8003B288 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 12D08C 8003B28C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 12D090 8003B290 0C032663 */  jal        func_800C998C
/* 12D094 8003B294 24040078 */   addiu     $a0, $zero, 0x78
/* 12D098 8003B298 0040A021 */  addu       $s4, $v0, $zero
/* 12D09C 8003B29C 02802021 */  addu       $a0, $s4, $zero
/* 12D0A0 8003B2A0 0C030134 */  jal        bzero
/* 12D0A4 8003B2A4 24050078 */   addiu     $a1, $zero, 0x78
/* 12D0A8 8003B2A8 3C014080 */  lui        $at, 0x4080
/* 12D0AC 8003B2AC 4481A000 */  mtc1       $at, $f20
/* 12D0B0 8003B2B0 00009821 */  addu       $s3, $zero, $zero
/* 12D0B4 8003B2B4 240200A0 */  addiu      $v0, $zero, 0xa0
/* 12D0B8 8003B2B8 A6820044 */  sh         $v0, 0x44($s4)
.L8003B2BC:
/* 12D0BC 8003B2BC 3271FFFF */  andi       $s1, $s3, 0xffff
/* 12D0C0 8003B2C0 001180C0 */  sll        $s0, $s1, 3
/* 12D0C4 8003B2C4 02118023 */  subu       $s0, $s0, $s1
/* 12D0C8 8003B2C8 00108080 */  sll        $s0, $s0, 2
/* 12D0CC 8003B2CC 3C048006 */  lui        $a0, %hi(D_8005C430_14E230)
/* 12D0D0 8003B2D0 00902021 */  addu       $a0, $a0, $s0
/* 12D0D4 8003B2D4 9484C430 */  lhu        $a0, %lo(D_8005C430_14E230)($a0)
/* 12D0D8 8003B2D8 24050002 */  addiu      $a1, $zero, 2
/* 12D0DC 8003B2DC 0C028CB7 */  jal        func_800A32DC
/* 12D0E0 8003B2E0 00003021 */   addu      $a2, $zero, $zero
/* 12D0E4 8003B2E4 00409021 */  addu       $s2, $v0, $zero
/* 12D0E8 8003B2E8 02402021 */  addu       $a0, $s2, $zero
/* 12D0EC 8003B2EC 3C068006 */  lui        $a2, %hi(D_8005C444_14E244)
/* 12D0F0 8003B2F0 00D03021 */  addu       $a2, $a2, $s0
/* 12D0F4 8003B2F4 8CC6C444 */  lw         $a2, %lo(D_8005C444_14E244)($a2)
/* 12D0F8 8003B2F8 3C078006 */  lui        $a3, %hi(D_8005C448_14E248)
/* 12D0FC 8003B2FC 00F03821 */  addu       $a3, $a3, $s0
/* 12D100 8003B300 8CE7C448 */  lw         $a3, %lo(D_8005C448_14E248)($a3)
/* 12D104 8003B304 9642001E */  lhu        $v0, 0x1e($s2)
/* 12D108 8003B308 3C038006 */  lui        $v1, %hi(D_8005C434_14E234)
/* 12D10C 8003B30C 00701821 */  addu       $v1, $v1, $s0
/* 12D110 8003B310 9463C434 */  lhu        $v1, %lo(D_8005C434_14E234)($v1)
/* 12D114 8003B314 3C088006 */  lui        $t0, %hi(D_8005C432_14E232)
/* 12D118 8003B318 01104021 */  addu       $t0, $t0, $s0
/* 12D11C 8003B31C 9508C432 */  lhu        $t0, %lo(D_8005C432_14E232)($t0)
/* 12D120 8003B320 00002821 */  addu       $a1, $zero, $zero
/* 12D124 8003B324 00431025 */  or         $v0, $v0, $v1
/* 12D128 8003B328 A642001E */  sh         $v0, 0x1e($s2)
/* 12D12C 8003B32C 0C02915B */  jal        func_800A456C
/* 12D130 8003B330 A648001C */   sh        $t0, 0x1c($s2)
/* 12D134 8003B334 3C018006 */  lui        $at, %hi(D_8005C438_14E238)
/* 12D138 8003B338 00300821 */  addu       $at, $at, $s0
/* 12D13C 8003B33C C420C438 */  lwc1       $f0, %lo(D_8005C438_14E238)($at)
/* 12D140 8003B340 46140002 */  mul.s      $f0, $f0, $f20
/* 12D144 8003B344 3C018006 */  lui        $at, %hi(D_8005C43C_14E23C)
/* 12D148 8003B348 00300821 */  addu       $at, $at, $s0
/* 12D14C 8003B34C C422C43C */  lwc1       $f2, %lo(D_8005C43C_14E23C)($at)
/* 12D150 8003B350 46141082 */  mul.s      $f2, $f2, $f20
/* 12D154 8003B354 26730001 */  addiu      $s3, $s3, 1
/* 12D158 8003B358 02402021 */  addu       $a0, $s2, $zero
/* 12D15C 8003B35C 4600010D */  trunc.w.s  $f4, $f0
/* 12D160 8003B360 44052000 */  mfc1       $a1, $f4
/* 12D164 8003B364 00000000 */  nop
/* 12D168 8003B368 00052C00 */  sll        $a1, $a1, 0x10
/* 12D16C 8003B36C 00052C03 */  sra        $a1, $a1, 0x10
/* 12D170 8003B370 4600100D */  trunc.w.s  $f0, $f2
/* 12D174 8003B374 44060000 */  mfc1       $a2, $f0
/* 12D178 8003B378 00000000 */  nop
/* 12D17C 8003B37C 00063400 */  sll        $a2, $a2, 0x10
/* 12D180 8003B380 0C028D89 */  jal        func_800A3624
/* 12D184 8003B384 00063403 */   sra       $a2, $a2, 0x10
/* 12D188 8003B388 00118880 */  sll        $s1, $s1, 2
/* 12D18C 8003B38C 02348821 */  addu       $s1, $s1, $s4
/* 12D190 8003B390 3262FFFF */  andi       $v0, $s3, 0xffff
/* 12D194 8003B394 2C420006 */  sltiu      $v0, $v0, 6
/* 12D198 8003B398 1440FFC8 */  bnez       $v0, .L8003B2BC
/* 12D19C 8003B39C AE32000C */   sw        $s2, 0xc($s1)
/* 12D1A0 8003B3A0 00009821 */  addu       $s3, $zero, $zero
/* 12D1A4 8003B3A4 3C014480 */  lui        $at, 0x4480
/* 12D1A8 8003B3A8 4481C000 */  mtc1       $at, $f24
/* 12D1AC 8003B3AC 3C014F00 */  lui        $at, 0x4f00
/* 12D1B0 8003B3B0 4481A000 */  mtc1       $at, $f20
/* 12D1B4 8003B3B4 3C118000 */  lui        $s1, 0x8000
/* 12D1B8 8003B3B8 3C014080 */  lui        $at, 0x4080
/* 12D1BC 8003B3BC 4481B000 */  mtc1       $at, $f22
.L8003B3C0:
/* 12D1C0 8003B3C0 3262FFFF */  andi       $v0, $s3, 0xffff
/* 12D1C4 8003B3C4 000280C0 */  sll        $s0, $v0, 3
/* 12D1C8 8003B3C8 02028023 */  subu       $s0, $s0, $v0
/* 12D1CC 8003B3CC 00108080 */  sll        $s0, $s0, 2
/* 12D1D0 8003B3D0 3C048006 */  lui        $a0, %hi(D_8005C4D8_14E2D8)
/* 12D1D4 8003B3D4 00902021 */  addu       $a0, $a0, $s0
/* 12D1D8 8003B3D8 9484C4D8 */  lhu        $a0, %lo(D_8005C4D8_14E2D8)($a0)
/* 12D1DC 8003B3DC 24050006 */  addiu      $a1, $zero, 6
/* 12D1E0 8003B3E0 0C028CB7 */  jal        func_800A32DC
/* 12D1E4 8003B3E4 00003021 */   addu      $a2, $zero, $zero
/* 12D1E8 8003B3E8 3C018006 */  lui        $at, %hi(D_8005C4EC_14E2EC)
/* 12D1EC 8003B3EC 00300821 */  addu       $at, $at, $s0
/* 12D1F0 8003B3F0 C420C4EC */  lwc1       $f0, %lo(D_8005C4EC_14E2EC)($at)
/* 12D1F4 8003B3F4 4600C083 */  div.s      $f2, $f24, $f0
/* 12D1F8 8003B3F8 00409021 */  addu       $s2, $v0, $zero
/* 12D1FC 8003B3FC 9642001E */  lhu        $v0, 0x1e($s2)
/* 12D200 8003B400 3C038006 */  lui        $v1, %hi(D_8005C4DC_14E2DC)
/* 12D204 8003B404 00701821 */  addu       $v1, $v1, $s0
/* 12D208 8003B408 9463C4DC */  lhu        $v1, %lo(D_8005C4DC_14E2DC)($v1)
/* 12D20C 8003B40C 3C048006 */  lui        $a0, %hi(D_8005C4DA_14E2DA)
/* 12D210 8003B410 00902021 */  addu       $a0, $a0, $s0
/* 12D214 8003B414 9484C4DA */  lhu        $a0, %lo(D_8005C4DA_14E2DA)($a0)
/* 12D218 8003B418 00431025 */  or         $v0, $v0, $v1
/* 12D21C 8003B41C 4602A03E */  c.le.s     $f20, $f2
/* 12D220 8003B420 A642001E */  sh         $v0, 0x1e($s2)
/* 12D224 8003B424 00000000 */  nop
/* 12D228 8003B428 45010006 */  bc1t       .L8003B444
/* 12D22C 8003B42C A644001C */   sh        $a0, 0x1c($s2)
/* 12D230 8003B430 4600100D */  trunc.w.s  $f0, $f2
/* 12D234 8003B434 44050000 */  mfc1       $a1, $f0
/* 12D238 8003B438 00000000 */  nop
/* 12D23C 8003B43C 0800ED17 */  j          .L8003B45C
/* 12D240 8003B440 3262FFFF */   andi      $v0, $s3, 0xffff
.L8003B444:
/* 12D244 8003B444 46141001 */  sub.s      $f0, $f2, $f20
/* 12D248 8003B448 4600008D */  trunc.w.s  $f2, $f0
/* 12D24C 8003B44C 44051000 */  mfc1       $a1, $f2
/* 12D250 8003B450 00000000 */  nop
/* 12D254 8003B454 00B12825 */  or         $a1, $a1, $s1
/* 12D258 8003B458 3262FFFF */  andi       $v0, $s3, 0xffff
.L8003B45C:
/* 12D25C 8003B45C 000218C0 */  sll        $v1, $v0, 3
/* 12D260 8003B460 00621823 */  subu       $v1, $v1, $v0
/* 12D264 8003B464 00031880 */  sll        $v1, $v1, 2
/* 12D268 8003B468 3C018006 */  lui        $at, %hi(D_8005C4F0_14E2F0)
/* 12D26C 8003B46C 00230821 */  addu       $at, $at, $v1
/* 12D270 8003B470 C420C4F0 */  lwc1       $f0, %lo(D_8005C4F0_14E2F0)($at)
/* 12D274 8003B474 4600C083 */  div.s      $f2, $f24, $f0
/* 12D278 8003B478 4602A03E */  c.le.s     $f20, $f2
/* 12D27C 8003B47C 00000000 */  nop
/* 12D280 8003B480 00000000 */  nop
/* 12D284 8003B484 45010006 */  bc1t       .L8003B4A0
/* 12D288 8003B488 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 12D28C 8003B48C 4600100D */  trunc.w.s  $f0, $f2
/* 12D290 8003B490 44060000 */  mfc1       $a2, $f0
/* 12D294 8003B494 00000000 */  nop
/* 12D298 8003B498 0800ED2E */  j          .L8003B4B8
/* 12D29C 8003B49C 02402021 */   addu      $a0, $s2, $zero
.L8003B4A0:
/* 12D2A0 8003B4A0 46141001 */  sub.s      $f0, $f2, $f20
/* 12D2A4 8003B4A4 4600008D */  trunc.w.s  $f2, $f0
/* 12D2A8 8003B4A8 44061000 */  mfc1       $a2, $f2
/* 12D2AC 8003B4AC 00000000 */  nop
/* 12D2B0 8003B4B0 00D13025 */  or         $a2, $a2, $s1
/* 12D2B4 8003B4B4 02402021 */  addu       $a0, $s2, $zero
.L8003B4B8:
/* 12D2B8 8003B4B8 0C0292D4 */  jal        func_800A4B50
/* 12D2BC 8003B4BC 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 12D2C0 8003B4C0 3270FFFF */  andi       $s0, $s3, 0xffff
/* 12D2C4 8003B4C4 001010C0 */  sll        $v0, $s0, 3
/* 12D2C8 8003B4C8 00501023 */  subu       $v0, $v0, $s0
/* 12D2CC 8003B4CC 00021080 */  sll        $v0, $v0, 2
/* 12D2D0 8003B4D0 3C018006 */  lui        $at, %hi(D_8005C4E0_14E2E0)
/* 12D2D4 8003B4D4 00220821 */  addu       $at, $at, $v0
/* 12D2D8 8003B4D8 C420C4E0 */  lwc1       $f0, %lo(D_8005C4E0_14E2E0)($at)
/* 12D2DC 8003B4DC 46160002 */  mul.s      $f0, $f0, $f22
/* 12D2E0 8003B4E0 3C018006 */  lui        $at, %hi(D_8005C4E4_14E2E4)
/* 12D2E4 8003B4E4 00220821 */  addu       $at, $at, $v0
/* 12D2E8 8003B4E8 C422C4E4 */  lwc1       $f2, %lo(D_8005C4E4_14E2E4)($at)
/* 12D2EC 8003B4EC 46161082 */  mul.s      $f2, $f2, $f22
/* 12D2F0 8003B4F0 02402021 */  addu       $a0, $s2, $zero
/* 12D2F4 8003B4F4 26730001 */  addiu      $s3, $s3, 1
/* 12D2F8 8003B4F8 4600010D */  trunc.w.s  $f4, $f0
/* 12D2FC 8003B4FC 44052000 */  mfc1       $a1, $f4
/* 12D300 8003B500 00000000 */  nop
/* 12D304 8003B504 00052C00 */  sll        $a1, $a1, 0x10
/* 12D308 8003B508 00052C03 */  sra        $a1, $a1, 0x10
/* 12D30C 8003B50C 4600100D */  trunc.w.s  $f0, $f2
/* 12D310 8003B510 44060000 */  mfc1       $a2, $f0
/* 12D314 8003B514 00000000 */  nop
/* 12D318 8003B518 00063400 */  sll        $a2, $a2, 0x10
/* 12D31C 8003B51C 0C028D89 */  jal        func_800A3624
/* 12D320 8003B520 00063403 */   sra       $a2, $a2, 0x10
/* 12D324 8003B524 00108080 */  sll        $s0, $s0, 2
/* 12D328 8003B528 02148021 */  addu       $s0, $s0, $s4
/* 12D32C 8003B52C 3262FFFF */  andi       $v0, $s3, 0xffff
/* 12D330 8003B530 2C420002 */  sltiu      $v0, $v0, 2
/* 12D334 8003B534 1440FFA2 */  bnez       $v0, .L8003B3C0
/* 12D338 8003B538 AE120024 */   sw        $s2, 0x24($s0)
/* 12D33C 8003B53C 0C02A5D2 */  jal        func_800A9748
/* 12D340 8003B540 24040014 */   addiu     $a0, $zero, 0x14
/* 12D344 8003B544 00009821 */  addu       $s3, $zero, $zero
/* 12D348 8003B548 24040125 */  addiu      $a0, $zero, 0x125
.L8003B54C:
/* 12D34C 8003B54C 0C0298D4 */  jal        func_800A6350
/* 12D350 8003B550 00002821 */   addu      $a1, $zero, $zero
/* 12D354 8003B554 3263FFFF */  andi       $v1, $s3, 0xffff
/* 12D358 8003B558 00031880 */  sll        $v1, $v1, 2
/* 12D35C 8003B55C 00741821 */  addu       $v1, $v1, $s4
/* 12D360 8003B560 8C630024 */  lw         $v1, 0x24($v1)
/* 12D364 8003B564 00408021 */  addu       $s0, $v0, $zero
/* 12D368 8003B568 02002821 */  addu       $a1, $s0, $zero
/* 12D36C 8003B56C 8C640014 */  lw         $a0, 0x14($v1)
/* 12D370 8003B570 24060010 */  addiu      $a2, $zero, 0x10
/* 12D374 8003B574 0C0298E2 */  jal        func_800A6388
/* 12D378 8003B578 26730001 */   addiu     $s3, $s3, 1
/* 12D37C 8003B57C 0C0326A1 */  jal        func_800C9A84
/* 12D380 8003B580 02002021 */   addu      $a0, $s0, $zero
/* 12D384 8003B584 3262FFFF */  andi       $v0, $s3, 0xffff
/* 12D388 8003B588 2C420002 */  sltiu      $v0, $v0, 2
/* 12D38C 8003B58C 1440FFEF */  bnez       $v0, .L8003B54C
/* 12D390 8003B590 24040125 */   addiu     $a0, $zero, 0x125
/* 12D394 8003B594 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12D398 8003B598 24100001 */   addiu     $s0, $zero, 1
/* 12D39C 8003B59C 3C014334 */  lui        $at, 0x4334
/* 12D3A0 8003B5A0 44810000 */  mtc1       $at, $f0
/* 12D3A4 8003B5A4 2403000B */  addiu      $v1, $zero, 0xb
/* 12D3A8 8003B5A8 AE820000 */  sw         $v0, ($s4)
/* 12D3AC 8003B5AC AC43001C */  sw         $v1, 0x1c($v0)
/* 12D3B0 8003B5B0 24030022 */  addiu      $v1, $zero, 0x22
/* 12D3B4 8003B5B4 AC430004 */  sw         $v1, 4($v0)
/* 12D3B8 8003B5B8 24030005 */  addiu      $v1, $zero, 5
/* 12D3BC 8003B5BC AC400008 */  sw         $zero, 8($v0)
/* 12D3C0 8003B5C0 AC400044 */  sw         $zero, 0x44($v0)
/* 12D3C4 8003B5C4 AC50000C */  sw         $s0, 0xc($v0)
/* 12D3C8 8003B5C8 AC430020 */  sw         $v1, 0x20($v0)
/* 12D3CC 8003B5CC E4400054 */  swc1       $f0, 0x54($v0)
/* 12D3D0 8003B5D0 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12D3D4 8003B5D4 8E840000 */   lw        $a0, ($s4)
/* 12D3D8 8003B5D8 8E820000 */  lw         $v0, ($s4)
/* 12D3DC 8003B5DC 8C440034 */  lw         $a0, 0x34($v0)
/* 12D3E0 8003B5E0 0C0285CC */  jal        func_800A1730
/* 12D3E4 8003B5E4 00002821 */   addu      $a1, $zero, $zero
/* 12D3E8 8003B5E8 24440020 */  addiu      $a0, $v0, 0x20
/* 12D3EC 8003B5EC 24050040 */  addiu      $a1, $zero, 0x40
/* 12D3F0 8003B5F0 24060040 */  addiu      $a2, $zero, 0x40
/* 12D3F4 8003B5F4 0C029558 */  jal        func_800A5560
/* 12D3F8 8003B5F8 24070002 */   addiu     $a3, $zero, 2
/* 12D3FC 8003B5FC AE820040 */  sw         $v0, 0x40($s4)
/* 12D400 8003B600 AC400018 */  sw         $zero, 0x18($v0)
/* 12D404 8003B604 8E820040 */  lw         $v0, 0x40($s4)
/* 12D408 8003B608 3C0141A0 */  lui        $at, 0x41a0
/* 12D40C 8003B60C 44810000 */  mtc1       $at, $f0
/* 12D410 8003B610 3C01C248 */  lui        $at, 0xc248
/* 12D414 8003B614 44811000 */  mtc1       $at, $f2
/* 12D418 8003B618 3C014320 */  lui        $at, 0x4320
/* 12D41C 8003B61C 4481A000 */  mtc1       $at, $f20
/* 12D420 8003B620 AC500014 */  sw         $s0, 0x14($v0)
/* 12D424 8003B624 8E830040 */  lw         $v1, 0x40($s4)
/* 12D428 8003B628 24020008 */  addiu      $v0, $zero, 8
/* 12D42C 8003B62C AC62001C */  sw         $v0, 0x1c($v1)
/* 12D430 8003B630 AE800064 */  sw         $zero, 0x64($s4)
/* 12D434 8003B634 E680006C */  swc1       $f0, 0x6c($s4)
/* 12D438 8003B638 E682005C */  swc1       $f2, 0x5c($s4)
/* 12D43C 8003B63C AE800054 */  sw         $zero, 0x54($s4)
/* 12D440 8003B640 AE80004C */  sw         $zero, 0x4c($s4)
/* 12D444 8003B644 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12D448 8003B648 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 12D44C 8003B64C C68E004C */  lwc1       $f14, 0x4c($s4)
/* 12D450 8003B650 4406A000 */  mfc1       $a2, $f20
/* 12D454 8003B654 0C00AC58 */  jal        func_8002B160_11CF60
/* 12D458 8003B658 00000000 */   nop
/* 12D45C 8003B65C E6800048 */  swc1       $f0, 0x48($s4)
/* 12D460 8003B660 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12D464 8003B664 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12D468 8003B668 C68E0054 */  lwc1       $f14, 0x54($s4)
/* 12D46C 8003B66C 4406A000 */  mfc1       $a2, $f20
/* 12D470 8003B670 0C00AC58 */  jal        func_8002B160_11CF60
/* 12D474 8003B674 00000000 */   nop
/* 12D478 8003B678 E6800050 */  swc1       $f0, 0x50($s4)
/* 12D47C 8003B67C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12D480 8003B680 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 12D484 8003B684 C6820064 */  lwc1       $f2, 0x64($s4)
/* 12D488 8003B688 46020001 */  sub.s      $f0, $f0, $f2
/* 12D48C 8003B68C 3C018006 */  lui        $at, %hi(D_8005C510_14E310)
/* 12D490 8003B690 D424C510 */  ldc1       $f4, %lo(D_8005C510_14E310)($at)
/* 12D494 8003B694 46000021 */  cvt.d.s    $f0, $f0
/* 12D498 8003B698 46200005 */  abs.d      $f0, $f0
/* 12D49C 8003B69C 46240003 */  div.d      $f0, $f0, $f4
/* 12D4A0 8003B6A0 C682006C */  lwc1       $f2, 0x6c($s4)
/* 12D4A4 8003B6A4 46200020 */  cvt.s.d    $f0, $f0
/* 12D4A8 8003B6A8 E6800060 */  swc1       $f0, 0x60($s4)
/* 12D4AC 8003B6AC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12D4B0 8003B6B0 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 12D4B4 8003B6B4 46020001 */  sub.s      $f0, $f0, $f2
/* 12D4B8 8003B6B8 46000021 */  cvt.d.s    $f0, $f0
/* 12D4BC 8003B6BC 46200005 */  abs.d      $f0, $f0
/* 12D4C0 8003B6C0 46240003 */  div.d      $f0, $f0, $f4
/* 12D4C4 8003B6C4 C6820074 */  lwc1       $f2, 0x74($s4)
/* 12D4C8 8003B6C8 46200020 */  cvt.s.d    $f0, $f0
/* 12D4CC 8003B6CC E6800068 */  swc1       $f0, 0x68($s4)
/* 12D4D0 8003B6D0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12D4D4 8003B6D4 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 12D4D8 8003B6D8 46020001 */  sub.s      $f0, $f0, $f2
/* 12D4DC 8003B6DC 46000021 */  cvt.d.s    $f0, $f0
/* 12D4E0 8003B6E0 46200005 */  abs.d      $f0, $f0
/* 12D4E4 8003B6E4 46240003 */  div.d      $f0, $f0, $f4
/* 12D4E8 8003B6E8 C682005C */  lwc1       $f2, 0x5c($s4)
/* 12D4EC 8003B6EC 46200020 */  cvt.s.d    $f0, $f0
/* 12D4F0 8003B6F0 E6800070 */  swc1       $f0, 0x70($s4)
/* 12D4F4 8003B6F4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12D4F8 8003B6F8 C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 12D4FC 8003B6FC 46020001 */  sub.s      $f0, $f0, $f2
/* 12D500 8003B700 46000021 */  cvt.d.s    $f0, $f0
/* 12D504 8003B704 46200005 */  abs.d      $f0, $f0
/* 12D508 8003B708 46240003 */  div.d      $f0, $f0, $f4
/* 12D50C 8003B70C 46200020 */  cvt.s.d    $f0, $f0
/* 12D510 8003B710 0C029375 */  jal        func_800A4DD4
/* 12D514 8003B714 E6800058 */   swc1      $f0, 0x58($s4)
/* 12D518 8003B718 AE82003C */  sw         $v0, 0x3c($s4)
/* 12D51C 8003B71C 240200E0 */  addiu      $v0, $zero, 0xe0
/* 12D520 8003B720 AFA20010 */  sw         $v0, 0x10($sp)
/* 12D524 8003B724 8E84003C */  lw         $a0, 0x3c($s4)
/* 12D528 8003B728 24050010 */  addiu      $a1, $zero, 0x10
/* 12D52C 8003B72C 24060010 */  addiu      $a2, $zero, 0x10
/* 12D530 8003B730 0C02939C */  jal        func_800A4E70
/* 12D534 8003B734 24070130 */   addiu     $a3, $zero, 0x130
/* 12D538 8003B738 8E82003C */  lw         $v0, 0x3c($s4)
/* 12D53C 8003B73C A440001C */  sh         $zero, 0x1c($v0)
/* 12D540 8003B740 8E84003C */  lw         $a0, 0x3c($s4)
/* 12D544 8003B744 9483001E */  lhu        $v1, 0x1e($a0)
/* 12D548 8003B748 02801021 */  addu       $v0, $s4, $zero
/* 12D54C 8003B74C 34630100 */  ori        $v1, $v1, 0x100
/* 12D550 8003B750 A483001E */  sh         $v1, 0x1e($a0)
/* 12D554 8003B754 8FBF002C */  lw         $ra, 0x2c($sp)
/* 12D558 8003B758 8FB40028 */  lw         $s4, 0x28($sp)
/* 12D55C 8003B75C 8FB30024 */  lw         $s3, 0x24($sp)
/* 12D560 8003B760 8FB20020 */  lw         $s2, 0x20($sp)
/* 12D564 8003B764 8FB1001C */  lw         $s1, 0x1c($sp)
/* 12D568 8003B768 8FB00018 */  lw         $s0, 0x18($sp)
/* 12D56C 8003B76C D7B80040 */  ldc1       $f24, 0x40($sp)
/* 12D570 8003B770 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 12D574 8003B774 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 12D578 8003B778 03E00008 */  jr         $ra
/* 12D57C 8003B77C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8003B780_12D580
/* 12D580 8003B780 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12D584 8003B784 AFB1001C */  sw         $s1, 0x1c($sp)
/* 12D588 8003B788 00808821 */  addu       $s1, $a0, $zero
/* 12D58C 8003B78C AFBF0020 */  sw         $ra, 0x20($sp)
/* 12D590 8003B790 AFB00018 */  sw         $s0, 0x18($sp)
/* 12D594 8003B794 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 12D598 8003B798 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 12D59C 8003B79C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 12D5A0 8003B7A0 96220044 */  lhu        $v0, 0x44($s1)
/* 12D5A4 8003B7A4 C62E004C */  lwc1       $f14, 0x4c($s1)
/* 12D5A8 8003B7A8 3C108015 */  lui        $s0, %hi(D_8014A080)
/* 12D5AC 8003B7AC 2610A080 */  addiu      $s0, $s0, %lo(D_8014A080)
/* 12D5B0 8003B7B0 2442FFFF */  addiu      $v0, $v0, -1
/* 12D5B4 8003B7B4 A6220044 */  sh         $v0, 0x44($s1)
/* 12D5B8 8003B7B8 C6140000 */  lwc1       $f20, ($s0)
/* 12D5BC 8003B7BC 8E260048 */  lw         $a2, 0x48($s1)
/* 12D5C0 8003B7C0 0C00AC89 */  jal        func_8002B224_11D024
/* 12D5C4 8003B7C4 4600A306 */   mov.s     $f12, $f20
/* 12D5C8 8003B7C8 46140501 */  sub.s      $f20, $f0, $f20
/* 12D5CC 8003B7CC 4480C000 */  mtc1       $zero, $f24
/* 12D5D0 8003B7D0 00000000 */  nop
/* 12D5D4 8003B7D4 4618A03C */  c.lt.s     $f20, $f24
/* 12D5D8 8003B7D8 00000000 */  nop
/* 12D5DC 8003B7DC 00000000 */  nop
/* 12D5E0 8003B7E0 45000005 */  bc1f       .L8003B7F8
/* 12D5E4 8003B7E4 E6000000 */   swc1      $f0, ($s0)
/* 12D5E8 8003B7E8 3C0143B4 */  lui        $at, 0x43b4
/* 12D5EC 8003B7EC 44810000 */  mtc1       $at, $f0
/* 12D5F0 8003B7F0 00000000 */  nop
/* 12D5F4 8003B7F4 4600A500 */  add.s      $f20, $f20, $f0
.L8003B7F8:
/* 12D5F8 8003B7F8 3C014334 */  lui        $at, 0x4334
/* 12D5FC 8003B7FC 4481B000 */  mtc1       $at, $f22
/* 12D600 8003B800 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12D604 8003B804 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12D608 8003B808 C62E0054 */  lwc1       $f14, 0x54($s1)
/* 12D60C 8003B80C 0C00AC89 */  jal        func_8002B224_11D024
/* 12D610 8003B810 8E260050 */   lw        $a2, 0x50($s1)
/* 12D614 8003B814 46000086 */  mov.s      $f2, $f0
/* 12D618 8003B818 4602B03E */  c.le.s     $f22, $f2
/* 12D61C 8003B81C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12D620 8003B820 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 12D624 8003B824 45000007 */  bc1f       .L8003B844
/* 12D628 8003B828 00000000 */   nop
/* 12D62C 8003B82C 3C0143B4 */  lui        $at, 0x43b4
/* 12D630 8003B830 44810000 */  mtc1       $at, $f0
/* 12D634 8003B834 00000000 */  nop
/* 12D638 8003B838 46001001 */  sub.s      $f0, $f2, $f0
/* 12D63C 8003B83C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12D640 8003B840 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
.L8003B844:
/* 12D644 8003B844 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12D648 8003B848 C42CA064 */  lwc1       $f12, %lo(D_8014A064)($at)
/* 12D64C 8003B84C C62E0064 */  lwc1       $f14, 0x64($s1)
/* 12D650 8003B850 0C00BC51 */  jal        func_8002F144_120F44
/* 12D654 8003B854 8E260060 */   lw        $a2, 0x60($s1)
/* 12D658 8003B858 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12D65C 8003B85C E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12D660 8003B860 C6220064 */  lwc1       $f2, 0x64($s1)
/* 12D664 8003B864 46020032 */  c.eq.s     $f0, $f2
/* 12D668 8003B868 00000000 */  nop
/* 12D66C 8003B86C 00000000 */  nop
/* 12D670 8003B870 45030001 */  bc1tl      .L8003B878
/* 12D674 8003B874 E6380060 */   swc1      $f24, 0x60($s1)
.L8003B878:
/* 12D678 8003B878 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12D67C 8003B87C C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 12D680 8003B880 C62E006C */  lwc1       $f14, 0x6c($s1)
/* 12D684 8003B884 0C00BC51 */  jal        func_8002F144_120F44
/* 12D688 8003B888 8E260068 */   lw        $a2, 0x68($s1)
/* 12D68C 8003B88C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12D690 8003B890 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 12D694 8003B894 C622006C */  lwc1       $f2, 0x6c($s1)
/* 12D698 8003B898 46020032 */  c.eq.s     $f0, $f2
/* 12D69C 8003B89C 00000000 */  nop
/* 12D6A0 8003B8A0 00000000 */  nop
/* 12D6A4 8003B8A4 45030001 */  bc1tl      .L8003B8AC
/* 12D6A8 8003B8A8 E6380068 */   swc1      $f24, 0x68($s1)
.L8003B8AC:
/* 12D6AC 8003B8AC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12D6B0 8003B8B0 C42CA06C */  lwc1       $f12, %lo(D_8014A06C)($at)
/* 12D6B4 8003B8B4 C62E0074 */  lwc1       $f14, 0x74($s1)
/* 12D6B8 8003B8B8 0C00BC51 */  jal        func_8002F144_120F44
/* 12D6BC 8003B8BC 8E260070 */   lw        $a2, 0x70($s1)
/* 12D6C0 8003B8C0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12D6C4 8003B8C4 E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 12D6C8 8003B8C8 C6220074 */  lwc1       $f2, 0x74($s1)
/* 12D6CC 8003B8CC 46020032 */  c.eq.s     $f0, $f2
/* 12D6D0 8003B8D0 00000000 */  nop
/* 12D6D4 8003B8D4 00000000 */  nop
/* 12D6D8 8003B8D8 45030001 */  bc1tl      .L8003B8E0
/* 12D6DC 8003B8DC E6380070 */   swc1      $f24, 0x70($s1)
.L8003B8E0:
/* 12D6E0 8003B8E0 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12D6E4 8003B8E4 C42CA088 */  lwc1       $f12, %lo(D_8014A088)($at)
/* 12D6E8 8003B8E8 C62E005C */  lwc1       $f14, 0x5c($s1)
/* 12D6EC 8003B8EC 8E260058 */  lw         $a2, 0x58($s1)
/* 12D6F0 8003B8F0 0C00BC51 */  jal        func_8002F144_120F44
/* 12D6F4 8003B8F4 24100003 */   addiu     $s0, $zero, 3
/* 12D6F8 8003B8F8 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12D6FC 8003B8FC E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 12D700 8003B900 0C02970E */  jal        func_800A5C38
/* 12D704 8003B904 8E240040 */   lw        $a0, 0x40($s1)
/* 12D708 8003B908 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12D70C 8003B90C 8E240000 */   lw        $a0, ($s1)
/* 12D710 8003B910 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12D714 8003B914 8E240000 */   lw        $a0, ($s1)
/* 12D718 8003B918 0C028A40 */  jal        func_800A2900
/* 12D71C 8003B91C 8E24003C */   lw        $a0, 0x3c($s1)
/* 12D720 8003B920 3202FFFF */  andi       $v0, $s0, 0xffff
.L8003B924:
/* 12D724 8003B924 00021080 */  sll        $v0, $v0, 2
/* 12D728 8003B928 00511021 */  addu       $v0, $v0, $s1
/* 12D72C 8003B92C 8C44000C */  lw         $a0, 0xc($v0)
/* 12D730 8003B930 0C028A40 */  jal        func_800A2900
/* 12D734 8003B934 26100001 */   addiu     $s0, $s0, 1
/* 12D738 8003B938 3202FFFF */  andi       $v0, $s0, 0xffff
/* 12D73C 8003B93C 2C420006 */  sltiu      $v0, $v0, 6
/* 12D740 8003B940 1440FFF8 */  bnez       $v0, .L8003B924
/* 12D744 8003B944 3202FFFF */   andi      $v0, $s0, 0xffff
/* 12D748 8003B948 00008021 */  addu       $s0, $zero, $zero
/* 12D74C 8003B94C 3202FFFF */  andi       $v0, $s0, 0xffff
.L8003B950:
/* 12D750 8003B950 00021080 */  sll        $v0, $v0, 2
/* 12D754 8003B954 00511021 */  addu       $v0, $v0, $s1
/* 12D758 8003B958 8C440024 */  lw         $a0, 0x24($v0)
/* 12D75C 8003B95C 0C028A40 */  jal        func_800A2900
/* 12D760 8003B960 26100001 */   addiu     $s0, $s0, 1
/* 12D764 8003B964 3202FFFF */  andi       $v0, $s0, 0xffff
/* 12D768 8003B968 2C420002 */  sltiu      $v0, $v0, 2
/* 12D76C 8003B96C 1440FFF8 */  bnez       $v0, .L8003B950
/* 12D770 8003B970 3202FFFF */   andi      $v0, $s0, 0xffff
/* 12D774 8003B974 96230044 */  lhu        $v1, 0x44($s1)
/* 12D778 8003B978 24020014 */  addiu      $v0, $zero, 0x14
/* 12D77C 8003B97C 14620009 */  bne        $v1, $v0, .L8003B9A4
/* 12D780 8003B980 00000000 */   nop
/* 12D784 8003B984 0C02A5C1 */  jal        func_800A9704
/* 12D788 8003B988 24040014 */   addiu     $a0, $zero, 0x14
/* 12D78C 8003B98C AFA00010 */  sw         $zero, 0x10($sp)
/* 12D790 8003B990 2404FFFE */  addiu      $a0, $zero, -2
/* 12D794 8003B994 24060014 */  addiu      $a2, $zero, 0x14
/* 12D798 8003B998 2405FFFF */  addiu      $a1, $zero, -1
/* 12D79C 8003B99C 0C026C9A */  jal        func_8009B268
/* 12D7A0 8003B9A0 00003821 */   addu      $a3, $zero, $zero
.L8003B9A4:
/* 12D7A4 8003B9A4 96220044 */  lhu        $v0, 0x44($s1)
/* 12D7A8 8003B9A8 2C420001 */  sltiu      $v0, $v0, 1
/* 12D7AC 8003B9AC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12D7B0 8003B9B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 12D7B4 8003B9B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 12D7B8 8003B9B8 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 12D7BC 8003B9BC D7B60030 */  ldc1       $f22, 0x30($sp)
/* 12D7C0 8003B9C0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 12D7C4 8003B9C4 03E00008 */  jr         $ra
/* 12D7C8 8003B9C8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8003B9CC_12D7CC
/* 12D7CC 8003B9CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12D7D0 8003B9D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D7D4 8003B9D4 00808021 */  addu       $s0, $a0, $zero
/* 12D7D8 8003B9D8 12000009 */  beqz       $s0, .L8003BA00
/* 12D7DC 8003B9DC AFBF0014 */   sw        $ra, 0x14($sp)
/* 12D7E0 8003B9E0 8E040000 */  lw         $a0, ($s0)
/* 12D7E4 8003B9E4 10800006 */  beqz       $a0, .L8003BA00
/* 12D7E8 8003B9E8 00000000 */   nop
/* 12D7EC 8003B9EC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12D7F0 8003B9F0 00000000 */   nop
/* 12D7F4 8003B9F4 0C0326A1 */  jal        func_800C9A84
/* 12D7F8 8003B9F8 8E040000 */   lw        $a0, ($s0)
/* 12D7FC 8003B9FC AE000000 */  sw         $zero, ($s0)
.L8003BA00:
/* 12D800 8003BA00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12D804 8003BA04 8FB00010 */  lw         $s0, 0x10($sp)
/* 12D808 8003BA08 03E00008 */  jr         $ra
/* 12D80C 8003BA0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003BA10_12D810
/* 12D810 8003BA10 3C028005 */  lui        $v0, %hi(D_80051E90_143C90)
/* 12D814 8003BA14 90421E90 */  lbu        $v0, %lo(D_80051E90_143C90)($v0)
/* 12D818 8003BA18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12D81C 8003BA1C AFB00018 */  sw         $s0, 0x18($sp)
/* 12D820 8003BA20 00808021 */  addu       $s0, $a0, $zero
/* 12D824 8003BA24 10400043 */  beqz       $v0, .L8003BB34
/* 12D828 8003BA28 AFBF001C */   sw        $ra, 0x1c($sp)
/* 12D82C 8003BA2C 0C02A5D2 */  jal        func_800A9748
/* 12D830 8003BA30 24040001 */   addiu     $a0, $zero, 1
/* 12D834 8003BA34 0C02725C */  jal        func_8009C970
/* 12D838 8003BA38 00000000 */   nop
/* 12D83C 8003BA3C 24040053 */  addiu      $a0, $zero, 0x53
/* 12D840 8003BA40 3C01C0A0 */  lui        $at, 0xc0a0
/* 12D844 8003BA44 44810000 */  mtc1       $at, $f0
/* 12D848 8003BA48 3C014264 */  lui        $at, 0x4264
/* 12D84C 8003BA4C 44811000 */  mtc1       $at, $f2
/* 12D850 8003BA50 3C01C2D4 */  lui        $at, 0xc2d4
/* 12D854 8003BA54 44812000 */  mtc1       $at, $f4
/* 12D858 8003BA58 3C01C160 */  lui        $at, 0xc160
/* 12D85C 8003BA5C 44813000 */  mtc1       $at, $f6
/* 12D860 8003BA60 3C0142AE */  lui        $at, 0x42ae
/* 12D864 8003BA64 44814000 */  mtc1       $at, $f8
/* 12D868 8003BA68 24050048 */  addiu      $a1, $zero, 0x48
/* 12D86C 8003BA6C 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12D870 8003BA70 AFA20010 */  sw         $v0, 0x10($sp)
/* 12D874 8003BA74 240200DC */  addiu      $v0, $zero, 0xdc
/* 12D878 8003BA78 24060053 */  addiu      $a2, $zero, 0x53
/* 12D87C 8003BA7C AFA20014 */  sw         $v0, 0x14($sp)
/* 12D880 8003BA80 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12D884 8003BA84 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12D888 8003BA88 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12D88C 8003BA8C E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 12D890 8003BA90 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12D894 8003BA94 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* 12D898 8003BA98 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12D89C 8003BA9C E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* 12D8A0 8003BAA0 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12D8A4 8003BAA4 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* 12D8A8 8003BAA8 0C027101 */  jal        func_8009C404
/* 12D8AC 8003BAAC 240700FF */   addiu     $a3, $zero, 0xff
/* 12D8B0 8003BAB0 3C014170 */  lui        $at, 0x4170
/* 12D8B4 8003BAB4 44810000 */  mtc1       $at, $f0
/* 12D8B8 8003BAB8 3C014180 */  lui        $at, 0x4180
/* 12D8BC 8003BABC 44811000 */  mtc1       $at, $f2
/* 12D8C0 8003BAC0 3C01C1C0 */  lui        $at, 0xc1c0
/* 12D8C4 8003BAC4 44812000 */  mtc1       $at, $f4
/* 12D8C8 8003BAC8 3C014130 */  lui        $at, 0x4130
/* 12D8CC 8003BACC 44813000 */  mtc1       $at, $f6
/* 12D8D0 8003BAD0 3C0140A0 */  lui        $at, 0x40a0
/* 12D8D4 8003BAD4 44814000 */  mtc1       $at, $f8
/* 12D8D8 8003BAD8 3C01C190 */  lui        $at, 0xc190
/* 12D8DC 8003BADC 44815000 */  mtc1       $at, $f10
/* 12D8E0 8003BAE0 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12D8E4 8003BAE4 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12D8E8 8003BAE8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12D8EC 8003BAEC E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12D8F0 8003BAF0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12D8F4 8003BAF4 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12D8F8 8003BAF8 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12D8FC 8003BAFC E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12D900 8003BB00 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12D904 8003BB04 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 12D908 8003BB08 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12D90C 8003BB0C 0C00EEF0 */  jal        func_8003BBC0_12D9C0
/* 12D910 8003BB10 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 12D914 8003BB14 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12D918 8003BB18 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12D91C 8003BB1C 3C018006 */  lui        $at, %hi(D_8005DE10)
/* 12D920 8003BB20 AC22DE10 */  sw         $v0, %lo(D_8005DE10)($at)
/* 12D924 8003BB24 0C00A157 */  jal        func_8002855C_11A35C
/* 12D928 8003BB28 24050005 */   addiu     $a1, $zero, 5
/* 12D92C 8003BB2C 3C018005 */  lui        $at, %hi(D_80051E90_143C90)
/* 12D930 8003BB30 A0201E90 */  sb         $zero, %lo(D_80051E90_143C90)($at)
.L8003BB34:
/* 12D934 8003BB34 16000003 */  bnez       $s0, .L8003BB44
/* 12D938 8003BB38 24020001 */   addiu     $v0, $zero, 1
/* 12D93C 8003BB3C 3C018005 */  lui        $at, %hi(D_80051E94_143C94)
/* 12D940 8003BB40 AC221E94 */  sw         $v0, %lo(D_80051E94_143C94)($at)
.L8003BB44:
/* 12D944 8003BB44 3C028005 */  lui        $v0, %hi(D_80051E94_143C94)
/* 12D948 8003BB48 8C421E94 */  lw         $v0, %lo(D_80051E94_143C94)($v0)
/* 12D94C 8003BB4C 1440000C */  bnez       $v0, .L8003BB80
/* 12D950 8003BB50 00000000 */   nop
/* 12D954 8003BB54 3C048006 */  lui        $a0, %hi(D_8005DE10)
/* 12D958 8003BB58 0C00EF54 */  jal        func_8003BD50_12DB50
/* 12D95C 8003BB5C 8C84DE10 */   lw        $a0, %lo(D_8005DE10)($a0)
/* 12D960 8003BB60 3C018005 */  lui        $at, %hi(D_80051E94_143C94)
/* 12D964 8003BB64 0C009767 */  jal        func_80025D9C_117B9C
/* 12D968 8003BB68 AC221E94 */   sw        $v0, %lo(D_80051E94_143C94)($at)
/* 12D96C 8003BB6C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12D970 8003BB70 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 12D974 8003BB74 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12D978 8003BB78 0800EEEC */  j          .L8003BBB0
/* 12D97C 8003BB7C 00001021 */   addu      $v0, $zero, $zero
.L8003BB80:
/* 12D980 8003BB80 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12D984 8003BB84 0C00A16B */  jal        func_800285AC_11A3AC
/* 12D988 8003BB88 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12D98C 8003BB8C 3C048006 */  lui        $a0, %hi(D_8005DE10)
/* 12D990 8003BB90 0C00EFC2 */  jal        func_8003BF08_12DD08
/* 12D994 8003BB94 2484DE10 */   addiu     $a0, $a0, %lo(D_8005DE10)
/* 12D998 8003BB98 24020001 */  addiu      $v0, $zero, 1
/* 12D99C 8003BB9C 24030001 */  addiu      $v1, $zero, 1
/* 12D9A0 8003BBA0 3C018005 */  lui        $at, %hi(D_80051E94_143C94)
/* 12D9A4 8003BBA4 AC201E94 */  sw         $zero, %lo(D_80051E94_143C94)($at)
/* 12D9A8 8003BBA8 3C018005 */  lui        $at, %hi(D_80051E90_143C90)
/* 12D9AC 8003BBAC A0231E90 */  sb         $v1, %lo(D_80051E90_143C90)($at)
.L8003BBB0:
/* 12D9B0 8003BBB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12D9B4 8003BBB4 8FB00018 */  lw         $s0, 0x18($sp)
/* 12D9B8 8003BBB8 03E00008 */  jr         $ra
/* 12D9BC 8003BBBC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003BBC0_12D9C0
/* 12D9C0 8003BBC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12D9C4 8003BBC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12D9C8 8003BBC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 12D9CC 8003BBCC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 12D9D0 8003BBD0 0C032663 */  jal        func_800C998C
/* 12D9D4 8003BBD4 24040048 */   addiu     $a0, $zero, 0x48
/* 12D9D8 8003BBD8 00408021 */  addu       $s0, $v0, $zero
/* 12D9DC 8003BBDC 02002021 */  addu       $a0, $s0, $zero
/* 12D9E0 8003BBE0 0C030134 */  jal        bzero
/* 12D9E4 8003BBE4 24050048 */   addiu     $a1, $zero, 0x48
/* 12D9E8 8003BBE8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12D9EC 8003BBEC 00000000 */   nop
/* 12D9F0 8003BBF0 3C0142B4 */  lui        $at, 0x42b4
/* 12D9F4 8003BBF4 44810000 */  mtc1       $at, $f0
/* 12D9F8 8003BBF8 3C01C0A0 */  lui        $at, 0xc0a0
/* 12D9FC 8003BBFC 44811000 */  mtc1       $at, $f2
/* 12DA00 8003BC00 3C014264 */  lui        $at, 0x4264
/* 12DA04 8003BC04 44812000 */  mtc1       $at, $f4
/* 12DA08 8003BC08 3C0142AE */  lui        $at, 0x42ae
/* 12DA0C 8003BC0C 44813000 */  mtc1       $at, $f6
/* 12DA10 8003BC10 3C01C268 */  lui        $at, 0xc268
/* 12DA14 8003BC14 44814000 */  mtc1       $at, $f8
/* 12DA18 8003BC18 3C01C160 */  lui        $at, 0xc160
/* 12DA1C 8003BC1C 44815000 */  mtc1       $at, $f10
/* 12DA20 8003BC20 3C014220 */  lui        $at, 0x4220
/* 12DA24 8003BC24 4481A000 */  mtc1       $at, $f20
/* 12DA28 8003BC28 24030007 */  addiu      $v1, $zero, 7
/* 12DA2C 8003BC2C AE020000 */  sw         $v0, ($s0)
/* 12DA30 8003BC30 AC43001C */  sw         $v1, 0x1c($v0)
/* 12DA34 8003BC34 2403008A */  addiu      $v1, $zero, 0x8a
/* 12DA38 8003BC38 AC430004 */  sw         $v1, 4($v0)
/* 12DA3C 8003BC3C 24030070 */  addiu      $v1, $zero, 0x70
/* 12DA40 8003BC40 AC430008 */  sw         $v1, 8($v0)
/* 12DA44 8003BC44 24030001 */  addiu      $v1, $zero, 1
/* 12DA48 8003BC48 AC400044 */  sw         $zero, 0x44($v0)
/* 12DA4C 8003BC4C AC43000C */  sw         $v1, 0xc($v0)
/* 12DA50 8003BC50 E4400054 */  swc1       $f0, 0x54($v0)
/* 12DA54 8003BC54 E6020034 */  swc1       $f2, 0x34($s0)
/* 12DA58 8003BC58 E604003C */  swc1       $f4, 0x3c($s0)
/* 12DA5C 8003BC5C E606001C */  swc1       $f6, 0x1c($s0)
/* 12DA60 8003BC60 E608002C */  swc1       $f8, 0x2c($s0)
/* 12DA64 8003BC64 E60A0024 */  swc1       $f10, 0x24($s0)
/* 12DA68 8003BC68 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12DA6C 8003BC6C C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 12DA70 8003BC70 C60E001C */  lwc1       $f14, 0x1c($s0)
/* 12DA74 8003BC74 4406A000 */  mfc1       $a2, $f20
/* 12DA78 8003BC78 0C00AC58 */  jal        func_8002B160_11CF60
/* 12DA7C 8003BC7C 00000000 */   nop
/* 12DA80 8003BC80 E6000018 */  swc1       $f0, 0x18($s0)
/* 12DA84 8003BC84 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12DA88 8003BC88 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12DA8C 8003BC8C C60E0024 */  lwc1       $f14, 0x24($s0)
/* 12DA90 8003BC90 4406A000 */  mfc1       $a2, $f20
/* 12DA94 8003BC94 0C00AC58 */  jal        func_8002B160_11CF60
/* 12DA98 8003BC98 00000000 */   nop
/* 12DA9C 8003BC9C E6000020 */  swc1       $f0, 0x20($s0)
/* 12DAA0 8003BCA0 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12DAA4 8003BCA4 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 12DAA8 8003BCA8 C6020034 */  lwc1       $f2, 0x34($s0)
/* 12DAAC 8003BCAC 46020001 */  sub.s      $f0, $f0, $f2
/* 12DAB0 8003BCB0 3C018006 */  lui        $at, %hi(D_8005C520_14E320)
/* 12DAB4 8003BCB4 D424C520 */  ldc1       $f4, %lo(D_8005C520_14E320)($at)
/* 12DAB8 8003BCB8 46000021 */  cvt.d.s    $f0, $f0
/* 12DABC 8003BCBC 46200005 */  abs.d      $f0, $f0
/* 12DAC0 8003BCC0 46240003 */  div.d      $f0, $f0, $f4
/* 12DAC4 8003BCC4 C602003C */  lwc1       $f2, 0x3c($s0)
/* 12DAC8 8003BCC8 46200020 */  cvt.s.d    $f0, $f0
/* 12DACC 8003BCCC E6000030 */  swc1       $f0, 0x30($s0)
/* 12DAD0 8003BCD0 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12DAD4 8003BCD4 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 12DAD8 8003BCD8 46020001 */  sub.s      $f0, $f0, $f2
/* 12DADC 8003BCDC 46000021 */  cvt.d.s    $f0, $f0
/* 12DAE0 8003BCE0 46200005 */  abs.d      $f0, $f0
/* 12DAE4 8003BCE4 46240003 */  div.d      $f0, $f0, $f4
/* 12DAE8 8003BCE8 C6020044 */  lwc1       $f2, 0x44($s0)
/* 12DAEC 8003BCEC 46200020 */  cvt.s.d    $f0, $f0
/* 12DAF0 8003BCF0 E6000038 */  swc1       $f0, 0x38($s0)
/* 12DAF4 8003BCF4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12DAF8 8003BCF8 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 12DAFC 8003BCFC 46020001 */  sub.s      $f0, $f0, $f2
/* 12DB00 8003BD00 46000021 */  cvt.d.s    $f0, $f0
/* 12DB04 8003BD04 46200005 */  abs.d      $f0, $f0
/* 12DB08 8003BD08 46240003 */  div.d      $f0, $f0, $f4
/* 12DB0C 8003BD0C C602002C */  lwc1       $f2, 0x2c($s0)
/* 12DB10 8003BD10 46200020 */  cvt.s.d    $f0, $f0
/* 12DB14 8003BD14 E6000040 */  swc1       $f0, 0x40($s0)
/* 12DB18 8003BD18 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12DB1C 8003BD1C C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 12DB20 8003BD20 46020001 */  sub.s      $f0, $f0, $f2
/* 12DB24 8003BD24 46000021 */  cvt.d.s    $f0, $f0
/* 12DB28 8003BD28 46200005 */  abs.d      $f0, $f0
/* 12DB2C 8003BD2C 46240003 */  div.d      $f0, $f0, $f4
/* 12DB30 8003BD30 02001021 */  addu       $v0, $s0, $zero
/* 12DB34 8003BD34 46200020 */  cvt.s.d    $f0, $f0
/* 12DB38 8003BD38 E4400028 */  swc1       $f0, 0x28($v0)
/* 12DB3C 8003BD3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12DB40 8003BD40 8FB00010 */  lw         $s0, 0x10($sp)
/* 12DB44 8003BD44 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 12DB48 8003BD48 03E00008 */  jr         $ra
/* 12DB4C 8003BD4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003BD50_12DB50
/* 12DB50 8003BD50 3C054100 */  lui        $a1, 0x4100
/* 12DB54 8003BD54 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12DB58 8003BD58 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 12DB5C 8003BD5C 4480C000 */  mtc1       $zero, $f24
/* 12DB60 8003BD60 AFB10014 */  sw         $s1, 0x14($sp)
/* 12DB64 8003BD64 00808821 */  addu       $s1, $a0, $zero
/* 12DB68 8003BD68 4406C000 */  mfc1       $a2, $f24
/* 12DB6C 8003BD6C 4407C000 */  mfc1       $a3, $f24
/* 12DB70 8003BD70 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12DB74 8003BD74 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12DB78 8003BD78 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12DB7C 8003BD7C AFB00010 */  sw         $s0, 0x10($sp)
/* 12DB80 8003BD80 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 12DB84 8003BD84 0C00A18C */  jal        func_80028630_11A430
/* 12DB88 8003BD88 F7B40020 */   sdc1      $f20, 0x20($sp)
/* 12DB8C 8003BD8C 3C108015 */  lui        $s0, %hi(D_8014A080)
/* 12DB90 8003BD90 2610A080 */  addiu      $s0, $s0, %lo(D_8014A080)
/* 12DB94 8003BD94 C6140000 */  lwc1       $f20, ($s0)
/* 12DB98 8003BD98 C62E001C */  lwc1       $f14, 0x1c($s1)
/* 12DB9C 8003BD9C 8E260018 */  lw         $a2, 0x18($s1)
/* 12DBA0 8003BDA0 0C00AC89 */  jal        func_8002B224_11D024
/* 12DBA4 8003BDA4 4600A306 */   mov.s     $f12, $f20
/* 12DBA8 8003BDA8 46140501 */  sub.s      $f20, $f0, $f20
/* 12DBAC 8003BDAC 4618A03C */  c.lt.s     $f20, $f24
/* 12DBB0 8003BDB0 00000000 */  nop
/* 12DBB4 8003BDB4 00000000 */  nop
/* 12DBB8 8003BDB8 45000005 */  bc1f       .L8003BDD0
/* 12DBBC 8003BDBC E6000000 */   swc1      $f0, ($s0)
/* 12DBC0 8003BDC0 3C0143B4 */  lui        $at, 0x43b4
/* 12DBC4 8003BDC4 44810000 */  mtc1       $at, $f0
/* 12DBC8 8003BDC8 00000000 */  nop
/* 12DBCC 8003BDCC 4600A500 */  add.s      $f20, $f20, $f0
.L8003BDD0:
/* 12DBD0 8003BDD0 3C014334 */  lui        $at, 0x4334
/* 12DBD4 8003BDD4 4481B000 */  mtc1       $at, $f22
/* 12DBD8 8003BDD8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12DBDC 8003BDDC C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12DBE0 8003BDE0 C62E0024 */  lwc1       $f14, 0x24($s1)
/* 12DBE4 8003BDE4 0C00AC89 */  jal        func_8002B224_11D024
/* 12DBE8 8003BDE8 8E260020 */   lw        $a2, 0x20($s1)
/* 12DBEC 8003BDEC 46000086 */  mov.s      $f2, $f0
/* 12DBF0 8003BDF0 4602B03E */  c.le.s     $f22, $f2
/* 12DBF4 8003BDF4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12DBF8 8003BDF8 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 12DBFC 8003BDFC 45000007 */  bc1f       .L8003BE1C
/* 12DC00 8003BE00 00000000 */   nop
/* 12DC04 8003BE04 3C0143B4 */  lui        $at, 0x43b4
/* 12DC08 8003BE08 44810000 */  mtc1       $at, $f0
/* 12DC0C 8003BE0C 00000000 */  nop
/* 12DC10 8003BE10 46001001 */  sub.s      $f0, $f2, $f0
/* 12DC14 8003BE14 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12DC18 8003BE18 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
.L8003BE1C:
/* 12DC1C 8003BE1C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12DC20 8003BE20 C42CA064 */  lwc1       $f12, %lo(D_8014A064)($at)
/* 12DC24 8003BE24 C62E0034 */  lwc1       $f14, 0x34($s1)
/* 12DC28 8003BE28 0C00BC51 */  jal        func_8002F144_120F44
/* 12DC2C 8003BE2C 8E260030 */   lw        $a2, 0x30($s1)
/* 12DC30 8003BE30 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12DC34 8003BE34 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12DC38 8003BE38 C6220034 */  lwc1       $f2, 0x34($s1)
/* 12DC3C 8003BE3C 46020032 */  c.eq.s     $f0, $f2
/* 12DC40 8003BE40 00000000 */  nop
/* 12DC44 8003BE44 00000000 */  nop
/* 12DC48 8003BE48 45030001 */  bc1tl      .L8003BE50
/* 12DC4C 8003BE4C E6380030 */   swc1      $f24, 0x30($s1)
.L8003BE50:
/* 12DC50 8003BE50 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12DC54 8003BE54 C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 12DC58 8003BE58 C62E003C */  lwc1       $f14, 0x3c($s1)
/* 12DC5C 8003BE5C 0C00BC51 */  jal        func_8002F144_120F44
/* 12DC60 8003BE60 8E260038 */   lw        $a2, 0x38($s1)
/* 12DC64 8003BE64 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12DC68 8003BE68 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 12DC6C 8003BE6C C622003C */  lwc1       $f2, 0x3c($s1)
/* 12DC70 8003BE70 46020032 */  c.eq.s     $f0, $f2
/* 12DC74 8003BE74 00000000 */  nop
/* 12DC78 8003BE78 00000000 */  nop
/* 12DC7C 8003BE7C 45030001 */  bc1tl      .L8003BE84
/* 12DC80 8003BE80 E6380038 */   swc1      $f24, 0x38($s1)
.L8003BE84:
/* 12DC84 8003BE84 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12DC88 8003BE88 C42CA06C */  lwc1       $f12, %lo(D_8014A06C)($at)
/* 12DC8C 8003BE8C C62E0044 */  lwc1       $f14, 0x44($s1)
/* 12DC90 8003BE90 0C00BC51 */  jal        func_8002F144_120F44
/* 12DC94 8003BE94 8E260040 */   lw        $a2, 0x40($s1)
/* 12DC98 8003BE98 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12DC9C 8003BE9C E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 12DCA0 8003BEA0 C6220044 */  lwc1       $f2, 0x44($s1)
/* 12DCA4 8003BEA4 46020032 */  c.eq.s     $f0, $f2
/* 12DCA8 8003BEA8 00000000 */  nop
/* 12DCAC 8003BEAC 00000000 */  nop
/* 12DCB0 8003BEB0 45030001 */  bc1tl      .L8003BEB8
/* 12DCB4 8003BEB4 E6380040 */   swc1      $f24, 0x40($s1)
.L8003BEB8:
/* 12DCB8 8003BEB8 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12DCBC 8003BEBC C42CA088 */  lwc1       $f12, %lo(D_8014A088)($at)
/* 12DCC0 8003BEC0 C62E002C */  lwc1       $f14, 0x2c($s1)
/* 12DCC4 8003BEC4 0C00BC51 */  jal        func_8002F144_120F44
/* 12DCC8 8003BEC8 8E260028 */   lw        $a2, 0x28($s1)
/* 12DCCC 8003BECC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12DCD0 8003BED0 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 12DCD4 8003BED4 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12DCD8 8003BED8 8E240000 */   lw        $a0, ($s1)
/* 12DCDC 8003BEDC 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12DCE0 8003BEE0 8E240000 */   lw        $a0, ($s1)
/* 12DCE4 8003BEE4 00001021 */  addu       $v0, $zero, $zero
/* 12DCE8 8003BEE8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12DCEC 8003BEEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 12DCF0 8003BEF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12DCF4 8003BEF4 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 12DCF8 8003BEF8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 12DCFC 8003BEFC D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12DD00 8003BF00 03E00008 */  jr         $ra
/* 12DD04 8003BF04 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003BF08_12DD08
/* 12DD08 8003BF08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12DD0C 8003BF0C AFB00010 */  sw         $s0, 0x10($sp)
/* 12DD10 8003BF10 00808021 */  addu       $s0, $a0, $zero
/* 12DD14 8003BF14 12000009 */  beqz       $s0, .L8003BF3C
/* 12DD18 8003BF18 AFBF0014 */   sw        $ra, 0x14($sp)
/* 12DD1C 8003BF1C 8E040000 */  lw         $a0, ($s0)
/* 12DD20 8003BF20 10800006 */  beqz       $a0, .L8003BF3C
/* 12DD24 8003BF24 00000000 */   nop
/* 12DD28 8003BF28 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12DD2C 8003BF2C 00000000 */   nop
/* 12DD30 8003BF30 0C0326A1 */  jal        func_800C9A84
/* 12DD34 8003BF34 8E040000 */   lw        $a0, ($s0)
/* 12DD38 8003BF38 AE000000 */  sw         $zero, ($s0)
.L8003BF3C:
/* 12DD3C 8003BF3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12DD40 8003BF40 8FB00010 */  lw         $s0, 0x10($sp)
/* 12DD44 8003BF44 03E00008 */  jr         $ra
/* 12DD48 8003BF48 27BD0018 */   addiu     $sp, $sp, 0x18
/* 12DD4C 8003BF4C 00000000 */  nop
