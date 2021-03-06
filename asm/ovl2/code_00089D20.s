.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003AD70_89D20
/* 89D20 8003AD70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 89D24 8003AD74 AFBF0020 */  sw         $ra, 0x20($sp)
/* 89D28 8003AD78 C480000C */  lwc1       $f0, 0xc($a0)
/* 89D2C 8003AD7C 44801000 */  mtc1       $zero, $f2
/* 89D30 8003AD80 00000000 */  nop
/* 89D34 8003AD84 46020032 */  c.eq.s     $f0, $f2
/* 89D38 8003AD88 00000000 */  nop
/* 89D3C 8003AD8C 00000000 */  nop
/* 89D40 8003AD90 4501000F */  bc1t       .L8003ADD0
/* 89D44 8003AD94 00002821 */   addu      $a1, $zero, $zero
/* 89D48 8003AD98 4600103C */  c.lt.s     $f2, $f0
/* 89D4C 8003AD9C 00000000 */  nop
/* 89D50 8003ADA0 00000000 */  nop
/* 89D54 8003ADA4 45000006 */  bc1f       .L8003ADC0
/* 89D58 8003ADA8 24020001 */   addiu     $v0, $zero, 1
/* 89D5C 8003ADAC 80830001 */  lb         $v1, 1($a0)
/* 89D60 8003ADB0 14620007 */  bne        $v1, $v0, .L8003ADD0
/* 89D64 8003ADB4 24050002 */   addiu     $a1, $zero, 2
/* 89D68 8003ADB8 0800EB74 */  j          .L8003ADD0
/* 89D6C 8003ADBC 24050001 */   addiu     $a1, $zero, 1
.L8003ADC0:
/* 89D70 8003ADC0 80830001 */  lb         $v1, 1($a0)
/* 89D74 8003ADC4 14620002 */  bne        $v1, $v0, .L8003ADD0
/* 89D78 8003ADC8 24050001 */   addiu     $a1, $zero, 1
/* 89D7C 8003ADCC 24050002 */  addiu      $a1, $zero, 2
.L8003ADD0:
/* 89D80 8003ADD0 80820001 */  lb         $v0, 1($a0)
/* 89D84 8003ADD4 3C014110 */  lui        $at, 0x4110
/* 89D88 8003ADD8 44813000 */  mtc1       $at, $f6
/* 89D8C 8003ADDC 00000000 */  nop
/* 89D90 8003ADE0 C4840008 */  lwc1       $f4, 8($a0)
/* 89D94 8003ADE4 3C014100 */  lui        $at, 0x4100
/* 89D98 8003ADE8 44810000 */  mtc1       $at, $f0
/* 89D9C 8003ADEC 00000000 */  nop
/* 89DA0 8003ADF0 44821000 */  mtc1       $v0, $f2
/* 89DA4 8003ADF4 00000000 */  nop
/* 89DA8 8003ADF8 468010A0 */  cvt.s.w    $f2, $f2
/* 89DAC 8003ADFC 46061082 */  mul.s      $f2, $f2, $f6
/* 89DB0 8003AE00 24060064 */  addiu      $a2, $zero, 0x64
/* 89DB4 8003AE04 46002100 */  add.s      $f4, $f4, $f0
/* 89DB8 8003AE08 C4800004 */  lwc1       $f0, 4($a0)
/* 89DBC 8003AE0C C486000C */  lwc1       $f6, 0xc($a0)
/* 89DC0 8003AE10 24020154 */  addiu      $v0, $zero, 0x154
/* 89DC4 8003AE14 46020000 */  add.s      $f0, $f0, $f2
/* 89DC8 8003AE18 AFA20010 */  sw         $v0, 0x10($sp)
/* 89DCC 8003AE1C 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 89DD0 8003AE20 E4263E2C */  swc1       $f6, %lo(D_803B3E2C)($at)
/* 89DD4 8003AE24 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 89DD8 8003AE28 E4243EB0 */  swc1       $f4, %lo(D_803B3EB0)($at)
/* 89DDC 8003AE2C 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 89DE0 8003AE30 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 89DE4 8003AE34 80820001 */  lb         $v0, 1($a0)
/* 89DE8 8003AE38 2407000A */  addiu      $a3, $zero, 0xa
/* 89DEC 8003AE3C 24040028 */  addiu      $a0, $zero, 0x28
/* 89DF0 8003AE40 AFA50018 */  sw         $a1, 0x18($sp)
/* 89DF4 8003AE44 24050014 */  addiu      $a1, $zero, 0x14
/* 89DF8 8003AE48 00021840 */  sll        $v1, $v0, 1
/* 89DFC 8003AE4C 00621821 */  addu       $v1, $v1, $v0
/* 89E00 8003AE50 00031100 */  sll        $v0, $v1, 4
/* 89E04 8003AE54 00431023 */  subu       $v0, $v0, $v1
/* 89E08 8003AE58 00021040 */  sll        $v0, $v0, 1
/* 89E0C 8003AE5C 0C0E6C7D */  jal        func_8039B1F4
/* 89E10 8003AE60 AFA20014 */   sw        $v0, 0x14($sp)
/* 89E14 8003AE64 8FBF0020 */  lw         $ra, 0x20($sp)
/* 89E18 8003AE68 27BD0028 */  addiu      $sp, $sp, 0x28
/* 89E1C 8003AE6C 03E00008 */  jr         $ra
/* 89E20 8003AE70 00000000 */   nop

glabel func_8003AE74_89E24
/* 89E24 8003AE74 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 89E28 8003AE78 AFB00010 */  sw         $s0, 0x10($sp)
/* 89E2C 8003AE7C 00008021 */  addu       $s0, $zero, $zero
/* 89E30 8003AE80 AFB40020 */  sw         $s4, 0x20($sp)
/* 89E34 8003AE84 3C14001E */  lui        $s4, 0x1e
/* 89E38 8003AE88 26949000 */  addiu      $s4, $s4, -0x7000
/* 89E3C 8003AE8C AFB50024 */  sw         $s5, 0x24($sp)
/* 89E40 8003AE90 3C15800D */  lui        $s5, %hi(D_800D6AD0)
/* 89E44 8003AE94 26B56AD0 */  addiu      $s5, $s5, %lo(D_800D6AD0)
/* 89E48 8003AE98 AFB20018 */  sw         $s2, 0x18($sp)
/* 89E4C 8003AE9C 3C128008 */  lui        $s2, %hi(D_80080280)
/* 89E50 8003AEA0 26520280 */  addiu      $s2, $s2, %lo(D_80080280)
/* 89E54 8003AEA4 AFB10014 */  sw         $s1, 0x14($sp)
/* 89E58 8003AEA8 3C118008 */  lui        $s1, %hi(D_80080270)
/* 89E5C 8003AEAC 26310270 */  addiu      $s1, $s1, %lo(D_80080270)
/* 89E60 8003AEB0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 89E64 8003AEB4 AFB3001C */  sw         $s3, 0x1c($sp)
.L8003AEB8:
/* 89E68 8003AEB8 02802021 */  addu       $a0, $s4, $zero
/* 89E6C 8003AEBC 02A02821 */  addu       $a1, $s5, $zero
/* 89E70 8003AEC0 2606086A */  addiu      $a2, $s0, 0x86a
/* 89E74 8003AEC4 0C02648E */  jal        func_80099238
/* 89E78 8003AEC8 00003821 */   addu      $a3, $zero, $zero
/* 89E7C 8003AECC 02802021 */  addu       $a0, $s4, $zero
/* 89E80 8003AED0 02A02821 */  addu       $a1, $s5, $zero
/* 89E84 8003AED4 26060866 */  addiu      $a2, $s0, 0x866
/* 89E88 8003AED8 00003821 */  addu       $a3, $zero, $zero
/* 89E8C 8003AEDC 0C02648E */  jal        func_80099238
/* 89E90 8003AEE0 AE220000 */   sw        $v0, ($s1)
/* 89E94 8003AEE4 AE420000 */  sw         $v0, ($s2)
/* 89E98 8003AEE8 26520004 */  addiu      $s2, $s2, 4
/* 89E9C 8003AEEC 26100001 */  addiu      $s0, $s0, 1
/* 89EA0 8003AEF0 2A020004 */  slti       $v0, $s0, 4
/* 89EA4 8003AEF4 1440FFF0 */  bnez       $v0, .L8003AEB8
/* 89EA8 8003AEF8 26310004 */   addiu     $s1, $s1, 4
/* 89EAC 8003AEFC 0C032663 */  jal        func_800C998C
/* 89EB0 8003AF00 24040820 */   addiu     $a0, $zero, 0x820
/* 89EB4 8003AF04 24040420 */  addiu      $a0, $zero, 0x420
/* 89EB8 8003AF08 3C128008 */  lui        $s2, %hi(D_80080290)
/* 89EBC 8003AF0C 26520290 */  addiu      $s2, $s2, %lo(D_80080290)
/* 89EC0 8003AF10 0C032663 */  jal        func_800C998C
/* 89EC4 8003AF14 AE420000 */   sw        $v0, ($s2)
/* 89EC8 8003AF18 3C018008 */  lui        $at, %hi(D_80080294)
/* 89ECC 8003AF1C AC220294 */  sw         $v0, %lo(D_80080294)($at)
/* 89ED0 8003AF20 0C032663 */  jal        func_800C998C
/* 89ED4 8003AF24 24040820 */   addiu     $a0, $zero, 0x820
/* 89ED8 8003AF28 3C018008 */  lui        $at, %hi(D_80080298)
/* 89EDC 8003AF2C AC220298 */  sw         $v0, %lo(D_80080298)($at)
/* 89EE0 8003AF30 0C032663 */  jal        func_800C998C
/* 89EE4 8003AF34 24040820 */   addiu     $a0, $zero, 0x820
/* 89EE8 8003AF38 24040420 */  addiu      $a0, $zero, 0x420
/* 89EEC 8003AF3C 3C138008 */  lui        $s3, %hi(D_8008029C)
/* 89EF0 8003AF40 2673029C */  addiu      $s3, $s3, %lo(D_8008029C)
/* 89EF4 8003AF44 0C032663 */  jal        func_800C998C
/* 89EF8 8003AF48 AE620000 */   sw        $v0, ($s3)
/* 89EFC 8003AF4C 3C018008 */  lui        $at, %hi(D_800802A0)
/* 89F00 8003AF50 AC2202A0 */  sw         $v0, %lo(D_800802A0)($at)
/* 89F04 8003AF54 0C032663 */  jal        func_800C998C
/* 89F08 8003AF58 24040820 */   addiu     $a0, $zero, 0x820
/* 89F0C 8003AF5C 8E440000 */  lw         $a0, ($s2)
/* 89F10 8003AF60 3C110061 */  lui        $s1, 0x61
/* 89F14 8003AF64 2631CB80 */  addiu      $s1, $s1, -0x3480
/* 89F18 8003AF68 02202821 */  addu       $a1, $s1, $zero
/* 89F1C 8003AF6C 3C10800E */  lui        $s0, %hi(D_800DD820)
/* 89F20 8003AF70 2610D820 */  addiu      $s0, $s0, %lo(D_800DD820)
/* 89F24 8003AF74 02003021 */  addu       $a2, $s0, $zero
/* 89F28 8003AF78 3C018008 */  lui        $at, %hi(D_800802A4)
/* 89F2C 8003AF7C AC2202A4 */  sw         $v0, %lo(D_800802A4)($at)
/* 89F30 8003AF80 0C0264C3 */  jal        func_8009930C
/* 89F34 8003AF84 240705C0 */   addiu     $a3, $zero, 0x5c0
/* 89F38 8003AF88 3C048008 */  lui        $a0, %hi(D_80080294)
/* 89F3C 8003AF8C 8C840294 */  lw         $a0, %lo(D_80080294)($a0)
/* 89F40 8003AF90 02202821 */  addu       $a1, $s1, $zero
/* 89F44 8003AF94 02003021 */  addu       $a2, $s0, $zero
/* 89F48 8003AF98 0C0264C3 */  jal        func_8009930C
/* 89F4C 8003AF9C 240705C1 */   addiu     $a3, $zero, 0x5c1
/* 89F50 8003AFA0 3C048008 */  lui        $a0, %hi(D_80080298)
/* 89F54 8003AFA4 8C840298 */  lw         $a0, %lo(D_80080298)($a0)
/* 89F58 8003AFA8 02202821 */  addu       $a1, $s1, $zero
/* 89F5C 8003AFAC 02003021 */  addu       $a2, $s0, $zero
/* 89F60 8003AFB0 0C0264C3 */  jal        func_8009930C
/* 89F64 8003AFB4 240705C2 */   addiu     $a3, $zero, 0x5c2
/* 89F68 8003AFB8 02802021 */  addu       $a0, $s4, $zero
/* 89F6C 8003AFBC 02A02821 */  addu       $a1, $s5, $zero
/* 89F70 8003AFC0 2406086E */  addiu      $a2, $zero, 0x86e
/* 89F74 8003AFC4 0C02648E */  jal        func_80099238
/* 89F78 8003AFC8 00003821 */   addu      $a3, $zero, $zero
/* 89F7C 8003AFCC 00408021 */  addu       $s0, $v0, $zero
/* 89F80 8003AFD0 8E450000 */  lw         $a1, ($s2)
/* 89F84 8003AFD4 26040010 */  addiu      $a0, $s0, 0x10
/* 89F88 8003AFD8 24060800 */  addiu      $a2, $zero, 0x800
/* 89F8C 8003AFDC 0C03006C */  jal        func_800C01B0
/* 89F90 8003AFE0 24A50020 */   addiu     $a1, $a1, 0x20
/* 89F94 8003AFE4 0C0326A1 */  jal        func_800C9A84
/* 89F98 8003AFE8 02002021 */   addu      $a0, $s0, $zero
/* 89F9C 8003AFEC 02802021 */  addu       $a0, $s4, $zero
/* 89FA0 8003AFF0 02A02821 */  addu       $a1, $s5, $zero
/* 89FA4 8003AFF4 2406086F */  addiu      $a2, $zero, 0x86f
/* 89FA8 8003AFF8 0C02648E */  jal        func_80099238
/* 89FAC 8003AFFC 00003821 */   addu      $a3, $zero, $zero
/* 89FB0 8003B000 00408021 */  addu       $s0, $v0, $zero
/* 89FB4 8003B004 3C058008 */  lui        $a1, %hi(D_80080294)
/* 89FB8 8003B008 8CA50294 */  lw         $a1, %lo(D_80080294)($a1)
/* 89FBC 8003B00C 26040010 */  addiu      $a0, $s0, 0x10
/* 89FC0 8003B010 24060400 */  addiu      $a2, $zero, 0x400
/* 89FC4 8003B014 0C03006C */  jal        func_800C01B0
/* 89FC8 8003B018 24A50020 */   addiu     $a1, $a1, 0x20
/* 89FCC 8003B01C 0C0326A1 */  jal        func_800C9A84
/* 89FD0 8003B020 02002021 */   addu      $a0, $s0, $zero
/* 89FD4 8003B024 02802021 */  addu       $a0, $s4, $zero
/* 89FD8 8003B028 02A02821 */  addu       $a1, $s5, $zero
/* 89FDC 8003B02C 24060870 */  addiu      $a2, $zero, 0x870
/* 89FE0 8003B030 0C02648E */  jal        func_80099238
/* 89FE4 8003B034 00003821 */   addu      $a3, $zero, $zero
/* 89FE8 8003B038 00408021 */  addu       $s0, $v0, $zero
/* 89FEC 8003B03C 3C058008 */  lui        $a1, %hi(D_80080298)
/* 89FF0 8003B040 8CA50298 */  lw         $a1, %lo(D_80080298)($a1)
/* 89FF4 8003B044 26040010 */  addiu      $a0, $s0, 0x10
/* 89FF8 8003B048 24060800 */  addiu      $a2, $zero, 0x800
/* 89FFC 8003B04C 0C03006C */  jal        func_800C01B0
/* 8A000 8003B050 24A50020 */   addiu     $a1, $a1, 0x20
/* 8A004 8003B054 0C0326A1 */  jal        func_800C9A84
/* 8A008 8003B058 02002021 */   addu      $a0, $s0, $zero
/* 8A00C 8003B05C 2404012F */  addiu      $a0, $zero, 0x12f
/* 8A010 8003B060 00002821 */  addu       $a1, $zero, $zero
/* 8A014 8003B064 0C027DAC */  jal        func_8009F6B0
/* 8A018 8003B068 00003021 */   addu      $a2, $zero, $zero
/* 8A01C 8003B06C 00408021 */  addu       $s0, $v0, $zero
/* 8A020 8003B070 3C058008 */  lui        $a1, %hi(D_8007E2D0_CD280)
/* 8A024 8003B074 24A5E2D0 */  addiu      $a1, $a1, %lo(D_8007E2D0_CD280)
/* 8A028 8003B078 0C0285D4 */  jal        func_800A1750
/* 8A02C 8003B07C 02002021 */   addu      $a0, $s0, $zero
/* 8A030 8003B080 8E650000 */  lw         $a1, ($s3)
/* 8A034 8003B084 00402021 */  addu       $a0, $v0, $zero
/* 8A038 8003B088 0C03006C */  jal        func_800C01B0
/* 8A03C 8003B08C 24060820 */   addiu     $a2, $zero, 0x820
/* 8A040 8003B090 3C058008 */  lui        $a1, %hi(D_8007E2D8_CD288)
/* 8A044 8003B094 24A5E2D8 */  addiu      $a1, $a1, %lo(D_8007E2D8_CD288)
/* 8A048 8003B098 0C0285D4 */  jal        func_800A1750
/* 8A04C 8003B09C 02002021 */   addu      $a0, $s0, $zero
/* 8A050 8003B0A0 3C058008 */  lui        $a1, %hi(D_800802A0)
/* 8A054 8003B0A4 8CA502A0 */  lw         $a1, %lo(D_800802A0)($a1)
/* 8A058 8003B0A8 00402021 */  addu       $a0, $v0, $zero
/* 8A05C 8003B0AC 0C03006C */  jal        func_800C01B0
/* 8A060 8003B0B0 24060420 */   addiu     $a2, $zero, 0x420
/* 8A064 8003B0B4 3C058008 */  lui        $a1, %hi(D_8007E2E0_CD290)
/* 8A068 8003B0B8 24A5E2E0 */  addiu      $a1, $a1, %lo(D_8007E2E0_CD290)
/* 8A06C 8003B0BC 0C0285D4 */  jal        func_800A1750
/* 8A070 8003B0C0 02002021 */   addu      $a0, $s0, $zero
/* 8A074 8003B0C4 3C058008 */  lui        $a1, %hi(D_800802A4)
/* 8A078 8003B0C8 8CA502A4 */  lw         $a1, %lo(D_800802A4)($a1)
/* 8A07C 8003B0CC 00402021 */  addu       $a0, $v0, $zero
/* 8A080 8003B0D0 0C03006C */  jal        func_800C01B0
/* 8A084 8003B0D4 24060820 */   addiu     $a2, $zero, 0x820
/* 8A088 8003B0D8 0C027E98 */  jal        func_8009FA60
/* 8A08C 8003B0DC 02002021 */   addu      $a0, $s0, $zero
/* 8A090 8003B0E0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8A094 8003B0E4 8FB50024 */  lw         $s5, 0x24($sp)
/* 8A098 8003B0E8 8FB40020 */  lw         $s4, 0x20($sp)
/* 8A09C 8003B0EC 8FB3001C */  lw         $s3, 0x1c($sp)
/* 8A0A0 8003B0F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A0A4 8003B0F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A0A8 8003B0F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A0AC 8003B0FC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8A0B0 8003B100 03E00008 */  jr         $ra
/* 8A0B4 8003B104 00000000 */   nop

glabel func_8003B108_8A0B8
/* 8A0B8 8003B108 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8A0BC 8003B10C AFB00010 */  sw         $s0, 0x10($sp)
/* 8A0C0 8003B110 00008021 */  addu       $s0, $zero, $zero
/* 8A0C4 8003B114 AFB20018 */  sw         $s2, 0x18($sp)
/* 8A0C8 8003B118 3C128008 */  lui        $s2, %hi(D_80080280)
/* 8A0CC 8003B11C 26520280 */  addiu      $s2, $s2, %lo(D_80080280)
/* 8A0D0 8003B120 AFB10014 */  sw         $s1, 0x14($sp)
/* 8A0D4 8003B124 3C118008 */  lui        $s1, %hi(D_80080270)
/* 8A0D8 8003B128 26310270 */  addiu      $s1, $s1, %lo(D_80080270)
/* 8A0DC 8003B12C AFBF001C */  sw         $ra, 0x1c($sp)
.L8003B130:
/* 8A0E0 8003B130 8E240000 */  lw         $a0, ($s1)
/* 8A0E4 8003B134 0C0326A1 */  jal        func_800C9A84
/* 8A0E8 8003B138 26310004 */   addiu     $s1, $s1, 4
/* 8A0EC 8003B13C 8E440000 */  lw         $a0, ($s2)
/* 8A0F0 8003B140 26100001 */  addiu      $s0, $s0, 1
/* 8A0F4 8003B144 0C0326A1 */  jal        func_800C9A84
/* 8A0F8 8003B148 26520004 */   addiu     $s2, $s2, 4
/* 8A0FC 8003B14C 2A020004 */  slti       $v0, $s0, 4
/* 8A100 8003B150 1440FFF7 */  bnez       $v0, .L8003B130
/* 8A104 8003B154 00000000 */   nop
/* 8A108 8003B158 00008021 */  addu       $s0, $zero, $zero
/* 8A10C 8003B15C 3C128008 */  lui        $s2, %hi(D_8008029C)
/* 8A110 8003B160 2652029C */  addiu      $s2, $s2, %lo(D_8008029C)
/* 8A114 8003B164 3C118008 */  lui        $s1, %hi(D_80080290)
/* 8A118 8003B168 26310290 */  addiu      $s1, $s1, %lo(D_80080290)
.L8003B16C:
/* 8A11C 8003B16C 8E240000 */  lw         $a0, ($s1)
/* 8A120 8003B170 0C0326A1 */  jal        func_800C9A84
/* 8A124 8003B174 26310004 */   addiu     $s1, $s1, 4
/* 8A128 8003B178 8E440000 */  lw         $a0, ($s2)
/* 8A12C 8003B17C 26100001 */  addiu      $s0, $s0, 1
/* 8A130 8003B180 0C0326A1 */  jal        func_800C9A84
/* 8A134 8003B184 26520004 */   addiu     $s2, $s2, 4
/* 8A138 8003B188 2A020003 */  slti       $v0, $s0, 3
/* 8A13C 8003B18C 1440FFF7 */  bnez       $v0, .L8003B16C
/* 8A140 8003B190 00000000 */   nop
/* 8A144 8003B194 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8A148 8003B198 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A14C 8003B19C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A150 8003B1A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A154 8003B1A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8A158 8003B1A8 03E00008 */  jr         $ra
/* 8A15C 8003B1AC 00000000 */   nop

glabel func_8003B1B0_8A160
/* 8A160 8003B1B0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 8A164 8003B1B4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8A168 8003B1B8 93B10053 */  lbu        $s1, 0x53($sp)
/* 8A16C 8003B1BC AFB30024 */  sw         $s3, 0x24($sp)
/* 8A170 8003B1C0 00809821 */  addu       $s3, $a0, $zero
/* 8A174 8003B1C4 AFB40028 */  sw         $s4, 0x28($sp)
/* 8A178 8003B1C8 00A0A021 */  addu       $s4, $a1, $zero
/* 8A17C 8003B1CC AFB5002C */  sw         $s5, 0x2c($sp)
/* 8A180 8003B1D0 00C0A821 */  addu       $s5, $a2, $zero
/* 8A184 8003B1D4 AFB20020 */  sw         $s2, 0x20($sp)
/* 8A188 8003B1D8 00E09021 */  addu       $s2, $a3, $zero
/* 8A18C 8003B1DC AFBF0030 */  sw         $ra, 0x30($sp)
/* 8A190 8003B1E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 8A194 8003B1E4 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 8A198 8003B1E8 0C032663 */  jal        func_800C998C
/* 8A19C 8003B1EC 240400F0 */   addiu     $a0, $zero, 0xf0
/* 8A1A0 8003B1F0 00408021 */  addu       $s0, $v0, $zero
/* 8A1A4 8003B1F4 02002021 */  addu       $a0, $s0, $zero
/* 8A1A8 8003B1F8 0C030134 */  jal        bzero
/* 8A1AC 8003B1FC 240500F0 */   addiu     $a1, $zero, 0xf0
/* 8A1B0 8003B200 2404012F */  addiu      $a0, $zero, 0x12f
/* 8A1B4 8003B204 00002821 */  addu       $a1, $zero, $zero
/* 8A1B8 8003B208 00003021 */  addu       $a2, $zero, $zero
/* 8A1BC 8003B20C 0C027DAC */  jal        func_8009F6B0
/* 8A1C0 8003B210 A2110021 */   sb        $s1, 0x21($s0)
/* 8A1C4 8003B214 2404012D */  addiu      $a0, $zero, 0x12d
/* 8A1C8 8003B218 AE020044 */  sw         $v0, 0x44($s0)
/* 8A1CC 8003B21C 90430066 */  lbu        $v1, 0x66($v0)
/* 8A1D0 8003B220 00002821 */  addu       $a1, $zero, $zero
/* 8A1D4 8003B224 00003021 */  addu       $a2, $zero, $zero
/* 8A1D8 8003B228 34630007 */  ori        $v1, $v1, 7
/* 8A1DC 8003B22C 0C027DAC */  jal        func_8009F6B0
/* 8A1E0 8003B230 A0430066 */   sb        $v1, 0x66($v0)
/* 8A1E4 8003B234 3C013F80 */  lui        $at, 0x3f80
/* 8A1E8 8003B238 4481A000 */  mtc1       $at, $f20
/* 8A1EC 8003B23C 00000000 */  nop
/* 8A1F0 8003B240 24040450 */  addiu      $a0, $zero, 0x450
/* 8A1F4 8003B244 AE020090 */  sw         $v0, 0x90($s0)
/* 8A1F8 8003B248 90430066 */  lbu        $v1, 0x66($v0)
/* 8A1FC 8003B24C 00003021 */  addu       $a2, $zero, $zero
/* 8A200 8003B250 4405A000 */  mfc1       $a1, $f20
/* 8A204 8003B254 00000000 */  nop
/* 8A208 8003B258 34630007 */  ori        $v1, $v1, 7
/* 8A20C 8003B25C 0C027814 */  jal        func_8009E050
/* 8A210 8003B260 A0430066 */   sb        $v1, 0x66($v0)
/* 8A214 8003B264 24040449 */  addiu      $a0, $zero, 0x449
/* 8A218 8003B268 4405A000 */  mfc1       $a1, $f20
/* 8A21C 8003B26C 00000000 */  nop
/* 8A220 8003B270 00003021 */  addu       $a2, $zero, $zero
/* 8A224 8003B274 0C027814 */  jal        func_8009E050
/* 8A228 8003B278 AE020048 */   sw        $v0, 0x48($s0)
/* 8A22C 8003B27C 8E040044 */  lw         $a0, 0x44($s0)
/* 8A230 8003B280 3C118008 */  lui        $s1, %hi(D_8007E2E8_CD298)
/* 8A234 8003B284 2631E2E8 */  addiu      $s1, $s1, %lo(D_8007E2E8_CD298)
/* 8A238 8003B288 02202821 */  addu       $a1, $s1, $zero
/* 8A23C 8003B28C 0C0285D4 */  jal        func_800A1750
/* 8A240 8003B290 AE020094 */   sw        $v0, 0x94($s0)
/* 8A244 8003B294 00402021 */  addu       $a0, $v0, $zero
/* 8A248 8003B298 3C050061 */  lui        $a1, 0x61
/* 8A24C 8003B29C 24A5CB80 */  addiu      $a1, $a1, -0x3480
/* 8A250 8003B2A0 3C06800E */  lui        $a2, %hi(D_800DD820)
/* 8A254 8003B2A4 24C6D820 */  addiu      $a2, $a2, %lo(D_800DD820)
/* 8A258 8003B2A8 0C0264C3 */  jal        func_8009930C
/* 8A25C 8003B2AC 240705BF */   addiu     $a3, $zero, 0x5bf
/* 8A260 8003B2B0 8E040044 */  lw         $a0, 0x44($s0)
/* 8A264 8003B2B4 0C0285D4 */  jal        func_800A1750
/* 8A268 8003B2B8 02202821 */   addu      $a1, $s1, $zero
/* 8A26C 8003B2BC 8E040044 */  lw         $a0, 0x44($s0)
/* 8A270 8003B2C0 3C058008 */  lui        $a1, %hi(D_8007E2F0_CD2A0)
/* 8A274 8003B2C4 24A5E2F0 */  addiu      $a1, $a1, %lo(D_8007E2F0_CD2A0)
/* 8A278 8003B2C8 24420020 */  addiu      $v0, $v0, 0x20
/* 8A27C 8003B2CC 0C0285D4 */  jal        func_800A1750
/* 8A280 8003B2D0 AE0200D8 */   sw        $v0, 0xd8($s0)
/* 8A284 8003B2D4 8E040044 */  lw         $a0, 0x44($s0)
/* 8A288 8003B2D8 3C058008 */  lui        $a1, %hi(D_8007E2D0_CD280)
/* 8A28C 8003B2DC 24A5E2D0 */  addiu      $a1, $a1, %lo(D_8007E2D0_CD280)
/* 8A290 8003B2E0 24420020 */  addiu      $v0, $v0, 0x20
/* 8A294 8003B2E4 0C0285D4 */  jal        func_800A1750
/* 8A298 8003B2E8 AE0200DC */   sw        $v0, 0xdc($s0)
/* 8A29C 8003B2EC 8E040044 */  lw         $a0, 0x44($s0)
/* 8A2A0 8003B2F0 3C058008 */  lui        $a1, %hi(D_8007E2D8_CD288)
/* 8A2A4 8003B2F4 24A5E2D8 */  addiu      $a1, $a1, %lo(D_8007E2D8_CD288)
/* 8A2A8 8003B2F8 0C0285D4 */  jal        func_800A1750
/* 8A2AC 8003B2FC AE0200E4 */   sw        $v0, 0xe4($s0)
/* 8A2B0 8003B300 8E040044 */  lw         $a0, 0x44($s0)
/* 8A2B4 8003B304 3C058008 */  lui        $a1, %hi(D_8007E2E0_CD290)
/* 8A2B8 8003B308 24A5E2E0 */  addiu      $a1, $a1, %lo(D_8007E2E0_CD290)
/* 8A2BC 8003B30C 0C0285D4 */  jal        func_800A1750
/* 8A2C0 8003B310 AE0200E8 */   sw        $v0, 0xe8($s0)
/* 8A2C4 8003B314 02002021 */  addu       $a0, $s0, $zero
/* 8A2C8 8003B318 00139C00 */  sll        $s3, $s3, 0x10
/* 8A2CC 8003B31C 00132C03 */  sra        $a1, $s3, 0x10
/* 8A2D0 8003B320 0014A400 */  sll        $s4, $s4, 0x10
/* 8A2D4 8003B324 00143403 */  sra        $a2, $s4, 0x10
/* 8A2D8 8003B328 0015AC00 */  sll        $s5, $s5, 0x10
/* 8A2DC 8003B32C 00153C03 */  sra        $a3, $s5, 0x10
/* 8A2E0 8003B330 00129600 */  sll        $s2, $s2, 0x18
/* 8A2E4 8003B334 00129603 */  sra        $s2, $s2, 0x18
/* 8A2E8 8003B338 AE0200EC */  sw         $v0, 0xec($s0)
/* 8A2EC 8003B33C 0C00ECDD */  jal        func_8003B374_8A324
/* 8A2F0 8003B340 AFB20010 */   sw        $s2, 0x10($sp)
/* 8A2F4 8003B344 02001021 */  addu       $v0, $s0, $zero
/* 8A2F8 8003B348 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8A2FC 8003B34C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 8A300 8003B350 8FB40028 */  lw         $s4, 0x28($sp)
/* 8A304 8003B354 8FB30024 */  lw         $s3, 0x24($sp)
/* 8A308 8003B358 8FB20020 */  lw         $s2, 0x20($sp)
/* 8A30C 8003B35C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8A310 8003B360 8FB00018 */  lw         $s0, 0x18($sp)
/* 8A314 8003B364 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 8A318 8003B368 27BD0040 */  addiu      $sp, $sp, 0x40
/* 8A31C 8003B36C 03E00008 */  jr         $ra
/* 8A320 8003B370 00000000 */   nop

glabel func_8003B374_8A324
/* 8A324 8003B374 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A328 8003B378 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A32C 8003B37C 00808021 */  addu       $s0, $a0, $zero
/* 8A330 8003B380 93A2002B */  lbu        $v0, 0x2b($sp)
/* 8A334 8003B384 26040014 */  addiu      $a0, $s0, 0x14
/* 8A338 8003B388 00052C00 */  sll        $a1, $a1, 0x10
/* 8A33C 8003B38C 00052C03 */  sra        $a1, $a1, 0x10
/* 8A340 8003B390 44850000 */  mtc1       $a1, $f0
/* 8A344 8003B394 00000000 */  nop
/* 8A348 8003B398 46800020 */  cvt.s.w    $f0, $f0
/* 8A34C 8003B39C 00063400 */  sll        $a2, $a2, 0x10
/* 8A350 8003B3A0 00063403 */  sra        $a2, $a2, 0x10
/* 8A354 8003B3A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A358 8003B3A8 E6000004 */  swc1       $f0, 4($s0)
/* 8A35C 8003B3AC 44860000 */  mtc1       $a2, $f0
/* 8A360 8003B3B0 00000000 */  nop
/* 8A364 8003B3B4 46800020 */  cvt.s.w    $f0, $f0
/* 8A368 8003B3B8 00073C00 */  sll        $a3, $a3, 0x10
/* 8A36C 8003B3BC 00073C03 */  sra        $a3, $a3, 0x10
/* 8A370 8003B3C0 E6000008 */  swc1       $f0, 8($s0)
/* 8A374 8003B3C4 44870000 */  mtc1       $a3, $f0
/* 8A378 8003B3C8 00000000 */  nop
/* 8A37C 8003B3CC 46800020 */  cvt.s.w    $f0, $f0
/* 8A380 8003B3D0 A2000000 */  sb         $zero, ($s0)
/* 8A384 8003B3D4 E600000C */  swc1       $f0, 0xc($s0)
/* 8A388 8003B3D8 AE000010 */  sw         $zero, 0x10($s0)
/* 8A38C 8003B3DC 0C026E4E */  jal        func_8009B938
/* 8A390 8003B3E0 A2020001 */   sb        $v0, 1($s0)
/* 8A394 8003B3E4 24040005 */  addiu      $a0, $zero, 5
/* 8A398 8003B3E8 0C02591A */  jal        func_80096468
/* 8A39C 8003B3EC A6000018 */   sh        $zero, 0x18($s0)
/* 8A3A0 8003B3F0 24040005 */  addiu      $a0, $zero, 5
/* 8A3A4 8003B3F4 3042FFFF */  andi       $v0, $v0, 0xffff
/* 8A3A8 8003B3F8 00021880 */  sll        $v1, $v0, 2
/* 8A3AC 8003B3FC 00621821 */  addu       $v1, $v1, $v0
/* 8A3B0 8003B400 00031840 */  sll        $v1, $v1, 1
/* 8A3B4 8003B404 24630032 */  addiu      $v1, $v1, 0x32
/* 8A3B8 8003B408 0C02591A */  jal        func_80096468
/* 8A3BC 8003B40C A603001A */   sh        $v1, 0x1a($s0)
/* 8A3C0 8003B410 02002021 */  addu       $a0, $s0, $zero
/* 8A3C4 8003B414 3042FFFF */  andi       $v0, $v0, 0xffff
/* 8A3C8 8003B418 00021880 */  sll        $v1, $v0, 2
/* 8A3CC 8003B41C 00621821 */  addu       $v1, $v1, $v0
/* 8A3D0 8003B420 00031840 */  sll        $v1, $v1, 1
/* 8A3D4 8003B424 24630064 */  addiu      $v1, $v1, 0x64
/* 8A3D8 8003B428 24020014 */  addiu      $v0, $zero, 0x14
/* 8A3DC 8003B42C A603001C */  sh         $v1, 0x1c($s0)
/* 8A3E0 8003B430 A602001E */  sh         $v0, 0x1e($s0)
/* 8A3E4 8003B434 A2000020 */  sb         $zero, 0x20($s0)
/* 8A3E8 8003B438 0C00ED2E */  jal        func_8003B4B8_8A468
/* 8A3EC 8003B43C A2000022 */   sb        $zero, 0x22($s0)
/* 8A3F0 8003B440 8E040048 */  lw         $a0, 0x48($s0)
/* 8A3F4 8003B444 24020003 */  addiu      $v0, $zero, 3
/* 8A3F8 8003B448 A6020028 */  sh         $v0, 0x28($s0)
/* 8A3FC 8003B44C 24020002 */  addiu      $v0, $zero, 2
/* 8A400 8003B450 A602002A */  sh         $v0, 0x2a($s0)
/* 8A404 8003B454 2402FFFF */  addiu      $v0, $zero, -1
/* 8A408 8003B458 A602003C */  sh         $v0, 0x3c($s0)
/* 8A40C 8003B45C 2402FFFD */  addiu      $v0, $zero, -3
/* 8A410 8003B460 A2020034 */  sb         $v0, 0x34($s0)
/* 8A414 8003B464 24020006 */  addiu      $v0, $zero, 6
/* 8A418 8003B468 A2020036 */  sb         $v0, 0x36($s0)
/* 8A41C 8003B46C 24020005 */  addiu      $v0, $zero, 5
/* 8A420 8003B470 A2000035 */  sb         $zero, 0x35($s0)
/* 8A424 8003B474 0C027880 */  jal        func_8009E200
/* 8A428 8003B478 A2020037 */   sb        $v0, 0x37($s0)
/* 8A42C 8003B47C 3C053F80 */  lui        $a1, 0x3f80
/* 8A430 8003B480 24040450 */  addiu      $a0, $zero, 0x450
/* 8A434 8003B484 0C027814 */  jal        func_8009E050
/* 8A438 8003B488 00003021 */   addu      $a2, $zero, $zero
/* 8A43C 8003B48C 8E040094 */  lw         $a0, 0x94($s0)
/* 8A440 8003B490 0C027ABB */  jal        func_8009EAEC
/* 8A444 8003B494 AE020048 */   sw        $v0, 0x48($s0)
/* 8A448 8003B498 02002021 */  addu       $a0, $s0, $zero
/* 8A44C 8003B49C 0C00ED4F */  jal        func_8003B53C_8A4EC
/* 8A450 8003B4A0 00002821 */   addu      $a1, $zero, $zero
/* 8A454 8003B4A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8A458 8003B4A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A45C 8003B4AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8A460 8003B4B0 03E00008 */  jr         $ra
/* 8A464 8003B4B4 00000000 */   nop

glabel func_8003B4B8_8A468
/* 8A468 8003B4B8 24020003 */  addiu      $v0, $zero, 3
/* 8A46C 8003B4BC 24840003 */  addiu      $a0, $a0, 3
.L8003B4C0:
/* 8A470 8003B4C0 A0800023 */  sb         $zero, 0x23($a0)
/* 8A474 8003B4C4 2442FFFF */  addiu      $v0, $v0, -1
/* 8A478 8003B4C8 0441FFFD */  bgez       $v0, .L8003B4C0
/* 8A47C 8003B4CC 2484FFFF */   addiu     $a0, $a0, -1
/* 8A480 8003B4D0 03E00008 */  jr         $ra
/* 8A484 8003B4D4 00000000 */   nop

glabel func_8003B4D8_8A488
/* 8A488 8003B4D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A48C 8003B4DC AFB00010 */  sw         $s0, 0x10($sp)
/* 8A490 8003B4E0 00808021 */  addu       $s0, $a0, $zero
/* 8A494 8003B4E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A498 8003B4E8 0C026E4E */  jal        func_8009B938
/* 8A49C 8003B4EC 26040014 */   addiu     $a0, $s0, 0x14
/* 8A4A0 8003B4F0 8E040044 */  lw         $a0, 0x44($s0)
/* 8A4A4 8003B4F4 0C027E98 */  jal        func_8009FA60
/* 8A4A8 8003B4F8 00000000 */   nop
/* 8A4AC 8003B4FC 8E040048 */  lw         $a0, 0x48($s0)
/* 8A4B0 8003B500 0C027880 */  jal        func_8009E200
/* 8A4B4 8003B504 00000000 */   nop
/* 8A4B8 8003B508 8E040090 */  lw         $a0, 0x90($s0)
/* 8A4BC 8003B50C 0C027E98 */  jal        func_8009FA60
/* 8A4C0 8003B510 00000000 */   nop
/* 8A4C4 8003B514 8E040094 */  lw         $a0, 0x94($s0)
/* 8A4C8 8003B518 0C027880 */  jal        func_8009E200
/* 8A4CC 8003B51C 00000000 */   nop
/* 8A4D0 8003B520 0C0326A1 */  jal        func_800C9A84
/* 8A4D4 8003B524 02002021 */   addu      $a0, $s0, $zero
/* 8A4D8 8003B528 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8A4DC 8003B52C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A4E0 8003B530 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8A4E4 8003B534 03E00008 */  jr         $ra
/* 8A4E8 8003B538 00000000 */   nop

glabel func_8003B53C_8A4EC
/* 8A4EC 8003B53C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 8A4F0 8003B540 AFB10024 */  sw         $s1, 0x24($sp)
/* 8A4F4 8003B544 00808821 */  addu       $s1, $a0, $zero
/* 8A4F8 8003B548 AFBF002C */  sw         $ra, 0x2c($sp)
/* 8A4FC 8003B54C AFB20028 */  sw         $s2, 0x28($sp)
/* 8A500 8003B550 AFB00020 */  sw         $s0, 0x20($sp)
/* 8A504 8003B554 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 8A508 8003B558 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 8A50C 8003B55C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 8A510 8003B560 122000CE */  beqz       $s1, .L8003B89C
/* 8A514 8003B564 00A01021 */   addu      $v0, $a1, $zero
/* 8A518 8003B568 A2220000 */  sb         $v0, ($s1)
/* 8A51C 8003B56C 00051400 */  sll        $v0, $a1, 0x10
/* 8A520 8003B570 00021C03 */  sra        $v1, $v0, 0x10
/* 8A524 8003B574 2C620005 */  sltiu      $v0, $v1, 5
/* 8A528 8003B578 104000C4 */  beqz       $v0, .L8003B88C
/* 8A52C 8003B57C 00031080 */   sll       $v0, $v1, 2
/* 8A530 8003B580 3C018008 */  lui        $at, %hi(jtbl_8007E2F8_CD2A8)
/* 8A534 8003B584 00220821 */  addu       $at, $at, $v0
/* 8A538 8003B588 8C22E2F8 */  lw         $v0, %lo(jtbl_8007E2F8_CD2A8)($at)
/* 8A53C 8003B58C 00400008 */  jr         $v0
/* 8A540 8003B590 00000000 */   nop
glabel L8003B594_8A544
/* 8A544 8003B594 8E240048 */  lw         $a0, 0x48($s1)
/* 8A548 8003B598 0C027AF5 */  jal        func_8009EBD4
/* 8A54C 8003B59C 00000000 */   nop
/* 8A550 8003B5A0 0800EE24 */  j          .L8003B890
/* 8A554 8003B5A4 24020003 */   addiu     $v0, $zero, 3
glabel L8003B5A8_8A558
/* 8A558 8003B5A8 8E240048 */  lw         $a0, 0x48($s1)
/* 8A55C 8003B5AC 0C027AFA */  jal        func_8009EBE8
/* 8A560 8003B5B0 00000000 */   nop
/* 8A564 8003B5B4 0800EE24 */  j          .L8003B890
/* 8A568 8003B5B8 24020003 */   addiu     $v0, $zero, 3
glabel L8003B5BC_8A56C
/* 8A56C 8003B5BC 8E240048 */  lw         $a0, 0x48($s1)
/* 8A570 8003B5C0 0C027AFA */  jal        func_8009EBE8
/* 8A574 8003B5C4 24120001 */   addiu     $s2, $zero, 1
/* 8A578 8003B5C8 8E240048 */  lw         $a0, 0x48($s1)
/* 8A57C 8003B5CC 0C027962 */  jal        func_8009E588
/* 8A580 8003B5D0 24050004 */   addiu     $a1, $zero, 4
/* 8A584 8003B5D4 3C05C1F0 */  lui        $a1, 0xc1f0
/* 8A588 8003B5D8 82220001 */  lb         $v0, 1($s1)
/* 8A58C 8003B5DC 3C0142B4 */  lui        $at, 0x42b4
/* 8A590 8003B5E0 44811000 */  mtc1       $at, $f2
/* 8A594 8003B5E4 00000000 */  nop
/* 8A598 8003B5E8 3C013CA3 */  lui        $at, 0x3ca3
/* 8A59C 8003B5EC 3421D70A */  ori        $at, $at, 0xd70a
/* 8A5A0 8003B5F0 4481B000 */  mtc1       $at, $f22
/* 8A5A4 8003B5F4 00000000 */  nop
/* 8A5A8 8003B5F8 3C014100 */  lui        $at, 0x4100
/* 8A5AC 8003B5FC 4481A000 */  mtc1       $at, $f20
/* 8A5B0 8003B600 00000000 */  nop
/* 8A5B4 8003B604 44820000 */  mtc1       $v0, $f0
/* 8A5B8 8003B608 00000000 */  nop
/* 8A5BC 8003B60C 46800020 */  cvt.s.w    $f0, $f0
/* 8A5C0 8003B610 46020002 */  mul.s      $f0, $f0, $f2
/* 8A5C4 8003B614 E7B60010 */  swc1       $f22, 0x10($sp)
/* 8A5C8 8003B618 C6220004 */  lwc1       $f2, 4($s1)
/* 8A5CC 8003B61C 82230001 */  lb         $v1, 1($s1)
/* 8A5D0 8003B620 4480C000 */  mtc1       $zero, $f24
/* 8A5D4 8003B624 00000000 */  nop
/* 8A5D8 8003B628 44060000 */  mfc1       $a2, $f0
/* 8A5DC 8003B62C 00000000 */  nop
/* 8A5E0 8003B630 C6200010 */  lwc1       $f0, 0x10($s1)
/* 8A5E4 8003B634 3C10803B */  lui        $s0, %hi(D_803B3E68)
/* 8A5E8 8003B638 26103E68 */  addiu      $s0, $s0, %lo(D_803B3E68)
/* 8A5EC 8003B63C 4407C000 */  mfc1       $a3, $f24
/* 8A5F0 8003B640 00000000 */  nop
/* 8A5F4 8003B644 46001080 */  add.s      $f2, $f2, $f0
/* 8A5F8 8003B648 000310C0 */  sll        $v0, $v1, 3
/* 8A5FC 8003B64C 00431021 */  addu       $v0, $v0, $v1
/* 8A600 8003B650 44820000 */  mtc1       $v0, $f0
/* 8A604 8003B654 00000000 */  nop
/* 8A608 8003B658 46800020 */  cvt.s.w    $f0, $f0
/* 8A60C 8003B65C 46001080 */  add.s      $f2, $f2, $f0
/* 8A610 8003B660 02002021 */  addu       $a0, $s0, $zero
/* 8A614 8003B664 E7B40018 */  swc1       $f20, 0x18($sp)
/* 8A618 8003B668 E7B8001C */  swc1       $f24, 0x1c($sp)
/* 8A61C 8003B66C 0C02FD0E */  jal        func_800BF438
/* 8A620 8003B670 E7A20014 */   swc1      $f2, 0x14($sp)
/* 8A624 8003B674 24040003 */  addiu      $a0, $zero, 3
/* 8A628 8003B678 24050014 */  addiu      $a1, $zero, 0x14
/* 8A62C 8003B67C 24060002 */  addiu      $a2, $zero, 2
/* 8A630 8003B680 24070005 */  addiu      $a3, $zero, 5
/* 8A634 8003B684 2402000F */  addiu      $v0, $zero, 0xf
/* 8A638 8003B688 AFB20010 */  sw         $s2, 0x10($sp)
/* 8A63C 8003B68C AFA00014 */  sw         $zero, 0x14($sp)
/* 8A640 8003B690 AFA20018 */  sw         $v0, 0x18($sp)
/* 8A644 8003B694 0C0E6035 */  jal        func_803980D4
/* 8A648 8003B698 AFB2001C */   sw        $s2, 0x1c($sp)
/* 8A64C 8003B69C 3C0541F0 */  lui        $a1, 0x41f0
/* 8A650 8003B6A0 82220001 */  lb         $v0, 1($s1)
/* 8A654 8003B6A4 3C01C2B4 */  lui        $at, 0xc2b4
/* 8A658 8003B6A8 44812000 */  mtc1       $at, $f4
/* 8A65C 8003B6AC 00000000 */  nop
/* 8A660 8003B6B0 E7B60010 */  swc1       $f22, 0x10($sp)
/* 8A664 8003B6B4 C6220004 */  lwc1       $f2, 4($s1)
/* 8A668 8003B6B8 C6200010 */  lwc1       $f0, 0x10($s1)
/* 8A66C 8003B6BC 82230001 */  lb         $v1, 1($s1)
/* 8A670 8003B6C0 44823000 */  mtc1       $v0, $f6
/* 8A674 8003B6C4 00000000 */  nop
/* 8A678 8003B6C8 468031A0 */  cvt.s.w    $f6, $f6
/* 8A67C 8003B6CC 46043182 */  mul.s      $f6, $f6, $f4
/* 8A680 8003B6D0 4407C000 */  mfc1       $a3, $f24
/* 8A684 8003B6D4 00000000 */  nop
/* 8A688 8003B6D8 46001080 */  add.s      $f2, $f2, $f0
/* 8A68C 8003B6DC 000310C0 */  sll        $v0, $v1, 3
/* 8A690 8003B6E0 00431021 */  addu       $v0, $v0, $v1
/* 8A694 8003B6E4 44820000 */  mtc1       $v0, $f0
/* 8A698 8003B6E8 00000000 */  nop
/* 8A69C 8003B6EC 46800020 */  cvt.s.w    $f0, $f0
/* 8A6A0 8003B6F0 46001080 */  add.s      $f2, $f2, $f0
/* 8A6A4 8003B6F4 44063000 */  mfc1       $a2, $f6
/* 8A6A8 8003B6F8 00000000 */  nop
/* 8A6AC 8003B6FC 02002021 */  addu       $a0, $s0, $zero
/* 8A6B0 8003B700 E7B40018 */  swc1       $f20, 0x18($sp)
/* 8A6B4 8003B704 E7B8001C */  swc1       $f24, 0x1c($sp)
/* 8A6B8 8003B708 0C02FD0E */  jal        func_800BF438
/* 8A6BC 8003B70C E7A20014 */   swc1      $f2, 0x14($sp)
/* 8A6C0 8003B710 24040003 */  addiu      $a0, $zero, 3
/* 8A6C4 8003B714 24050014 */  addiu      $a1, $zero, 0x14
/* 8A6C8 8003B718 24060002 */  addiu      $a2, $zero, 2
/* 8A6CC 8003B71C 24070003 */  addiu      $a3, $zero, 3
/* 8A6D0 8003B720 2402002D */  addiu      $v0, $zero, 0x2d
/* 8A6D4 8003B724 AFB20010 */  sw         $s2, 0x10($sp)
/* 8A6D8 8003B728 AFA00014 */  sw         $zero, 0x14($sp)
/* 8A6DC 8003B72C AFA20018 */  sw         $v0, 0x18($sp)
/* 8A6E0 8003B730 0C0E6035 */  jal        func_803980D4
/* 8A6E4 8003B734 AFB2001C */   sw        $s2, 0x1c($sp)
/* 8A6E8 8003B738 3C048008 */  lui        $a0, %hi(D_80080290)
/* 8A6EC 8003B73C 8C840290 */  lw         $a0, %lo(D_80080290)($a0)
/* 8A6F0 8003B740 8E2500E4 */  lw         $a1, 0xe4($s1)
/* 8A6F4 8003B744 0C03006C */  jal        func_800C01B0
/* 8A6F8 8003B748 24060820 */   addiu     $a2, $zero, 0x820
/* 8A6FC 8003B74C 3C048008 */  lui        $a0, %hi(D_80080294)
/* 8A700 8003B750 8C840294 */  lw         $a0, %lo(D_80080294)($a0)
/* 8A704 8003B754 8E2500E8 */  lw         $a1, 0xe8($s1)
/* 8A708 8003B758 0C03006C */  jal        func_800C01B0
/* 8A70C 8003B75C 24060420 */   addiu     $a2, $zero, 0x420
/* 8A710 8003B760 3C048008 */  lui        $a0, %hi(D_80080298)
/* 8A714 8003B764 8C840298 */  lw         $a0, %lo(D_80080298)($a0)
/* 8A718 8003B768 8E2500EC */  lw         $a1, 0xec($s1)
/* 8A71C 8003B76C 0C03006C */  jal        func_800C01B0
/* 8A720 8003B770 24060820 */   addiu     $a2, $zero, 0x820
/* 8A724 8003B774 C620000C */  lwc1       $f0, 0xc($s1)
/* 8A728 8003B778 46180032 */  c.eq.s     $f0, $f24
/* 8A72C 8003B77C 00000000 */  nop
/* 8A730 8003B780 00000000 */  nop
/* 8A734 8003B784 4501000E */  bc1t       .L8003B7C0
/* 8A738 8003B788 00001821 */   addu      $v1, $zero, $zero
/* 8A73C 8003B78C 4600C03C */  c.lt.s     $f24, $f0
/* 8A740 8003B790 00000000 */  nop
/* 8A744 8003B794 45000006 */  bc1f       .L8003B7B0
/* 8A748 8003B798 00000000 */   nop
/* 8A74C 8003B79C 82220001 */  lb         $v0, 1($s1)
/* 8A750 8003B7A0 14520008 */  bne        $v0, $s2, .L8003B7C4
/* 8A754 8003B7A4 24030002 */   addiu     $v1, $zero, 2
/* 8A758 8003B7A8 0800EDF1 */  j          .L8003B7C4
/* 8A75C 8003B7AC 24030001 */   addiu     $v1, $zero, 1
.L8003B7B0:
/* 8A760 8003B7B0 82220001 */  lb         $v0, 1($s1)
/* 8A764 8003B7B4 14520003 */  bne        $v0, $s2, .L8003B7C4
/* 8A768 8003B7B8 24030001 */   addiu     $v1, $zero, 1
/* 8A76C 8003B7BC 24030002 */  addiu      $v1, $zero, 2
.L8003B7C0:
/* 8A770 8003B7C0 82220001 */  lb         $v0, 1($s1)
.L8003B7C4:
/* 8A774 8003B7C4 3C014110 */  lui        $at, 0x4110
/* 8A778 8003B7C8 44810000 */  mtc1       $at, $f0
/* 8A77C 8003B7CC 00000000 */  nop
/* 8A780 8003B7D0 C6240008 */  lwc1       $f4, 8($s1)
/* 8A784 8003B7D4 3C014100 */  lui        $at, 0x4100
/* 8A788 8003B7D8 44813000 */  mtc1       $at, $f6
/* 8A78C 8003B7DC 00000000 */  nop
/* 8A790 8003B7E0 44821000 */  mtc1       $v0, $f2
/* 8A794 8003B7E4 00000000 */  nop
/* 8A798 8003B7E8 468010A0 */  cvt.s.w    $f2, $f2
/* 8A79C 8003B7EC 46001082 */  mul.s      $f2, $f2, $f0
/* 8A7A0 8003B7F0 24040028 */  addiu      $a0, $zero, 0x28
/* 8A7A4 8003B7F4 24050014 */  addiu      $a1, $zero, 0x14
/* 8A7A8 8003B7F8 46062100 */  add.s      $f4, $f4, $f6
/* 8A7AC 8003B7FC C6200004 */  lwc1       $f0, 4($s1)
/* 8A7B0 8003B800 C626000C */  lwc1       $f6, 0xc($s1)
/* 8A7B4 8003B804 24020154 */  addiu      $v0, $zero, 0x154
/* 8A7B8 8003B808 46020000 */  add.s      $f0, $f0, $f2
/* 8A7BC 8003B80C AFA20010 */  sw         $v0, 0x10($sp)
/* 8A7C0 8003B810 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8A7C4 8003B814 E4263E2C */  swc1       $f6, %lo(D_803B3E2C)($at)
/* 8A7C8 8003B818 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8A7CC 8003B81C E4243EB0 */  swc1       $f4, %lo(D_803B3EB0)($at)
/* 8A7D0 8003B820 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8A7D4 8003B824 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8A7D8 8003B828 82220001 */  lb         $v0, 1($s1)
/* 8A7DC 8003B82C 24060064 */  addiu      $a2, $zero, 0x64
/* 8A7E0 8003B830 2407000A */  addiu      $a3, $zero, 0xa
/* 8A7E4 8003B834 AFA30018 */  sw         $v1, 0x18($sp)
/* 8A7E8 8003B838 00021840 */  sll        $v1, $v0, 1
/* 8A7EC 8003B83C 00621821 */  addu       $v1, $v1, $v0
/* 8A7F0 8003B840 00031100 */  sll        $v0, $v1, 4
/* 8A7F4 8003B844 00431023 */  subu       $v0, $v0, $v1
/* 8A7F8 8003B848 00021040 */  sll        $v0, $v0, 1
/* 8A7FC 8003B84C 0C0E6C7D */  jal        func_8039B1F4
/* 8A800 8003B850 AFA20014 */   sw        $v0, 0x14($sp)
/* 8A804 8003B854 0800EE24 */  j          .L8003B890
/* 8A808 8003B858 24020003 */   addiu     $v0, $zero, 3
glabel L8003B85C_8A80C
/* 8A80C 8003B85C 8E240048 */  lw         $a0, 0x48($s1)
/* 8A810 8003B860 0C027880 */  jal        func_8009E200
/* 8A814 8003B864 00000000 */   nop
/* 8A818 8003B868 3C053F80 */  lui        $a1, 0x3f80
/* 8A81C 8003B86C 24040451 */  addiu      $a0, $zero, 0x451
/* 8A820 8003B870 0C027814 */  jal        func_8009E050
/* 8A824 8003B874 00003021 */   addu      $a2, $zero, $zero
/* 8A828 8003B878 26240014 */  addiu      $a0, $s1, 0x14
/* 8A82C 8003B87C 0C026E4E */  jal        func_8009B938
/* 8A830 8003B880 AE220048 */   sw        $v0, 0x48($s1)
/* 8A834 8003B884 0C026DD5 */  jal        func_8009B754
/* 8A838 8003B888 24040009 */   addiu     $a0, $zero, 9
.L8003B88C:
/* 8A83C 8003B88C 24020003 */  addiu      $v0, $zero, 3
.L8003B890:
/* 8A840 8003B890 A6220028 */  sh         $v0, 0x28($s1)
/* 8A844 8003B894 2402FFFF */  addiu      $v0, $zero, -1
/* 8A848 8003B898 A622003C */  sh         $v0, 0x3c($s1)
.L8003B89C:
/* 8A84C 8003B89C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 8A850 8003B8A0 8FB20028 */  lw         $s2, 0x28($sp)
/* 8A854 8003B8A4 8FB10024 */  lw         $s1, 0x24($sp)
/* 8A858 8003B8A8 8FB00020 */  lw         $s0, 0x20($sp)
/* 8A85C 8003B8AC D7B80040 */  ldc1       $f24, 0x40($sp)
/* 8A860 8003B8B0 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 8A864 8003B8B4 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 8A868 8003B8B8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 8A86C 8003B8BC 03E00008 */  jr         $ra
/* 8A870 8003B8C0 00000000 */   nop

glabel func_8003B8C4_8A874
/* 8A874 8003B8C4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8A878 8003B8C8 AFB10024 */  sw         $s1, 0x24($sp)
/* 8A87C 8003B8CC 00808821 */  addu       $s1, $a0, $zero
/* 8A880 8003B8D0 24030003 */  addiu      $v1, $zero, 3
/* 8A884 8003B8D4 26220003 */  addiu      $v0, $s1, 3
/* 8A888 8003B8D8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 8A88C 8003B8DC AFB20028 */  sw         $s2, 0x28($sp)
/* 8A890 8003B8E0 AFB00020 */  sw         $s0, 0x20($sp)
.L8003B8E4:
/* 8A894 8003B8E4 A0400023 */  sb         $zero, 0x23($v0)
/* 8A898 8003B8E8 2463FFFF */  addiu      $v1, $v1, -1
/* 8A89C 8003B8EC 0461FFFD */  bgez       $v1, .L8003B8E4
/* 8A8A0 8003B8F0 2442FFFF */   addiu     $v0, $v0, -1
/* 8A8A4 8003B8F4 3C028008 */  lui        $v0, %hi(D_80082FF0)
/* 8A8A8 8003B8F8 8C422FF0 */  lw         $v0, %lo(D_80082FF0)($v0)
/* 8A8AC 8003B8FC 10400005 */  beqz       $v0, .L8003B914
/* 8A8B0 8003B900 00000000 */   nop
/* 8A8B4 8003B904 0C00EF3A */  jal        func_8003BCE8_8AC98
/* 8A8B8 8003B908 02202021 */   addu      $a0, $s1, $zero
/* 8A8BC 8003B90C 0800EE47 */  j          .L8003B91C
/* 8A8C0 8003B910 00000000 */   nop
.L8003B914:
/* 8A8C4 8003B914 0C00EF5E */  jal        func_8003BD78_8AD28
/* 8A8C8 8003B918 02202021 */   addu      $a0, $s1, $zero
.L8003B91C:
/* 8A8CC 8003B91C 92230000 */  lbu        $v1, ($s1)
/* 8A8D0 8003B920 2C620005 */  sltiu      $v0, $v1, 5
/* 8A8D4 8003B924 104000E8 */  beqz       $v0, .L8003BCC8
/* 8A8D8 8003B928 00031080 */   sll       $v0, $v1, 2
/* 8A8DC 8003B92C 3C018008 */  lui        $at, %hi(jtbl_8007E310_CD2C0)
/* 8A8E0 8003B930 00220821 */  addu       $at, $at, $v0
/* 8A8E4 8003B934 8C22E310 */  lw         $v0, %lo(jtbl_8007E310_CD2C0)($at)
/* 8A8E8 8003B938 00400008 */  jr         $v0
/* 8A8EC 8003B93C 00000000 */   nop
glabel L8003B940_8A8F0
/* 8A8F0 8003B940 8623003C */  lh         $v1, 0x3c($s1)
/* 8A8F4 8003B944 2402FFFF */  addiu      $v0, $zero, -1
/* 8A8F8 8003B948 10620002 */  beq        $v1, $v0, .L8003B954
/* 8A8FC 8003B94C 24020001 */   addiu     $v0, $zero, 1
/* 8A900 8003B950 A2220026 */  sb         $v0, 0x26($s1)
.L8003B954:
/* 8A904 8003B954 C6220010 */  lwc1       $f2, 0x10($s1)
/* 8A908 8003B958 44802000 */  mtc1       $zero, $f4
/* 8A90C 8003B95C 00000000 */  nop
/* 8A910 8003B960 4602203C */  c.lt.s     $f4, $f2
/* 8A914 8003B964 00000000 */  nop
/* 8A918 8003B968 4500000B */  bc1f       .L8003B998
/* 8A91C 8003B96C 00000000 */   nop
/* 8A920 8003B970 3C013DCC */  lui        $at, 0x3dcc
/* 8A924 8003B974 3421CCCD */  ori        $at, $at, 0xcccd
/* 8A928 8003B978 44810000 */  mtc1       $at, $f0
/* 8A92C 8003B97C 00000000 */  nop
/* 8A930 8003B980 46001001 */  sub.s      $f0, $f2, $f0
/* 8A934 8003B984 4604003C */  c.lt.s     $f0, $f4
/* 8A938 8003B988 00000000 */  nop
/* 8A93C 8003B98C 00000000 */  nop
/* 8A940 8003B990 0800EE70 */  j          .L8003B9C0
/* 8A944 8003B994 00000000 */   nop
.L8003B998:
/* 8A948 8003B998 4604103C */  c.lt.s     $f2, $f4
/* 8A94C 8003B99C 00000000 */  nop
/* 8A950 8003B9A0 4500000C */  bc1f       .L8003B9D4
/* 8A954 8003B9A4 00000000 */   nop
/* 8A958 8003B9A8 3C013DCC */  lui        $at, 0x3dcc
/* 8A95C 8003B9AC 3421CCCD */  ori        $at, $at, 0xcccd
/* 8A960 8003B9B0 44810000 */  mtc1       $at, $f0
/* 8A964 8003B9B4 00000000 */  nop
/* 8A968 8003B9B8 46001000 */  add.s      $f0, $f2, $f0
/* 8A96C 8003B9BC 4600203C */  c.lt.s     $f4, $f0
.L8003B9C0:
/* 8A970 8003B9C0 00000000 */  nop
/* 8A974 8003B9C4 00000000 */  nop
/* 8A978 8003B9C8 45000002 */  bc1f       .L8003B9D4
/* 8A97C 8003B9CC E6200010 */   swc1      $f0, 0x10($s1)
/* 8A980 8003B9D0 E6240010 */  swc1       $f4, 0x10($s1)
.L8003B9D4:
/* 8A984 8003B9D4 C6220010 */  lwc1       $f2, 0x10($s1)
/* 8A988 8003B9D8 44800000 */  mtc1       $zero, $f0
/* 8A98C 8003B9DC 00000000 */  nop
/* 8A990 8003B9E0 46001032 */  c.eq.s     $f2, $f0
/* 8A994 8003B9E4 00000000 */  nop
/* 8A998 8003B9E8 45000003 */  bc1f       .L8003B9F8
/* 8A99C 8003B9EC 00000000 */   nop
/* 8A9A0 8003B9F0 0C026E4E */  jal        func_8009B938
/* 8A9A4 8003B9F4 26240014 */   addiu     $a0, $s1, 0x14
.L8003B9F8:
/* 8A9A8 8003B9F8 0C00EFC4 */  jal        func_8003BF10_8AEC0
/* 8A9AC 8003B9FC 02202021 */   addu      $a0, $s1, $zero
/* 8A9B0 8003BA00 144000B1 */  bnez       $v0, .L8003BCC8
/* 8A9B4 8003BA04 00000000 */   nop
/* 8A9B8 8003BA08 0C00EFA7 */  jal        func_8003BE9C_8AE4C
/* 8A9BC 8003BA0C 02202021 */   addu      $a0, $s1, $zero
/* 8A9C0 8003BA10 0800EEAE */  j          .L8003BAB8
/* 8A9C4 8003BA14 00000000 */   nop
glabel L8003BA18_8A9C8
/* 8A9C8 8003BA18 8623003C */  lh         $v1, 0x3c($s1)
/* 8A9CC 8003BA1C 2402FFFF */  addiu      $v0, $zero, -1
/* 8A9D0 8003BA20 10620002 */  beq        $v1, $v0, .L8003BA2C
/* 8A9D4 8003BA24 24020001 */   addiu     $v0, $zero, 1
/* 8A9D8 8003BA28 A2220026 */  sb         $v0, 0x26($s1)
.L8003BA2C:
/* 8A9DC 8003BA2C 82220001 */  lb         $v0, 1($s1)
/* 8A9E0 8003BA30 3C013DCC */  lui        $at, 0x3dcc
/* 8A9E4 8003BA34 3421CCCD */  ori        $at, $at, 0xcccd
/* 8A9E8 8003BA38 44811000 */  mtc1       $at, $f2
/* 8A9EC 8003BA3C 00000000 */  nop
/* 8A9F0 8003BA40 44820000 */  mtc1       $v0, $f0
/* 8A9F4 8003BA44 00000000 */  nop
/* 8A9F8 8003BA48 46800020 */  cvt.s.w    $f0, $f0
/* 8A9FC 8003BA4C 46020002 */  mul.s      $f0, $f0, $f2
/* 8AA00 8003BA50 C6220010 */  lwc1       $f2, 0x10($s1)
/* 8AA04 8003BA54 0800EEA7 */  j          .L8003BA9C
/* 8AA08 8003BA58 46001080 */   add.s     $f2, $f2, $f0
glabel L8003BA5C_8AA0C
/* 8AA0C 8003BA5C 8623003C */  lh         $v1, 0x3c($s1)
/* 8AA10 8003BA60 2402FFFF */  addiu      $v0, $zero, -1
/* 8AA14 8003BA64 10620002 */  beq        $v1, $v0, .L8003BA70
/* 8AA18 8003BA68 24020001 */   addiu     $v0, $zero, 1
/* 8AA1C 8003BA6C A2220026 */  sb         $v0, 0x26($s1)
.L8003BA70:
/* 8AA20 8003BA70 82220001 */  lb         $v0, 1($s1)
/* 8AA24 8003BA74 3C013DCC */  lui        $at, 0x3dcc
/* 8AA28 8003BA78 3421CCCD */  ori        $at, $at, 0xcccd
/* 8AA2C 8003BA7C 44811000 */  mtc1       $at, $f2
/* 8AA30 8003BA80 00000000 */  nop
/* 8AA34 8003BA84 44820000 */  mtc1       $v0, $f0
/* 8AA38 8003BA88 00000000 */  nop
/* 8AA3C 8003BA8C 46800020 */  cvt.s.w    $f0, $f0
/* 8AA40 8003BA90 46020002 */  mul.s      $f0, $f0, $f2
/* 8AA44 8003BA94 C6220010 */  lwc1       $f2, 0x10($s1)
/* 8AA48 8003BA98 46001081 */  sub.s      $f2, $f2, $f0
.L8003BA9C:
/* 8AA4C 8003BA9C 02202021 */  addu       $a0, $s1, $zero
/* 8AA50 8003BAA0 0C00EF99 */  jal        func_8003BE64_8AE14
/* 8AA54 8003BAA4 E6220010 */   swc1      $f2, 0x10($s1)
/* 8AA58 8003BAA8 14400087 */  bnez       $v0, .L8003BCC8
/* 8AA5C 8003BAAC 00000000 */   nop
/* 8AA60 8003BAB0 0C00EFC4 */  jal        func_8003BF10_8AEC0
/* 8AA64 8003BAB4 02202021 */   addu      $a0, $s1, $zero
.L8003BAB8:
/* 8AA68 8003BAB8 14400083 */  bnez       $v0, .L8003BCC8
/* 8AA6C 8003BABC 00000000 */   nop
/* 8AA70 8003BAC0 0C00EFB8 */  jal        func_8003BEE0_8AE90
/* 8AA74 8003BAC4 02202021 */   addu      $a0, $s1, $zero
/* 8AA78 8003BAC8 0800EF32 */  j          .L8003BCC8
/* 8AA7C 8003BACC 00000000 */   nop
glabel L8003BAD0_8AA80
/* 8AA80 8003BAD0 8623003C */  lh         $v1, 0x3c($s1)
/* 8AA84 8003BAD4 2402FFFF */  addiu      $v0, $zero, -1
/* 8AA88 8003BAD8 10620002 */  beq        $v1, $v0, .L8003BAE4
/* 8AA8C 8003BADC 24020001 */   addiu     $v0, $zero, 1
/* 8AA90 8003BAE0 A2220026 */  sb         $v0, 0x26($s1)
.L8003BAE4:
/* 8AA94 8003BAE4 8E220048 */  lw         $v0, 0x48($s1)
/* 8AA98 8003BAE8 84430024 */  lh         $v1, 0x24($v0)
/* 8AA9C 8003BAEC 24020015 */  addiu      $v0, $zero, 0x15
/* 8AAA0 8003BAF0 14620010 */  bne        $v1, $v0, .L8003BB34
/* 8AAA4 8003BAF4 00000000 */   nop
/* 8AAA8 8003BAF8 3C048008 */  lui        $a0, %hi(D_8008029C)
/* 8AAAC 8003BAFC 8C84029C */  lw         $a0, %lo(D_8008029C)($a0)
/* 8AAB0 8003BB00 8E2500E4 */  lw         $a1, 0xe4($s1)
/* 8AAB4 8003BB04 0C03006C */  jal        func_800C01B0
/* 8AAB8 8003BB08 24060820 */   addiu     $a2, $zero, 0x820
/* 8AABC 8003BB0C 3C048008 */  lui        $a0, %hi(D_800802A0)
/* 8AAC0 8003BB10 8C8402A0 */  lw         $a0, %lo(D_800802A0)($a0)
/* 8AAC4 8003BB14 8E2500E8 */  lw         $a1, 0xe8($s1)
/* 8AAC8 8003BB18 0C03006C */  jal        func_800C01B0
/* 8AACC 8003BB1C 24060420 */   addiu     $a2, $zero, 0x420
/* 8AAD0 8003BB20 3C048008 */  lui        $a0, %hi(D_800802A4)
/* 8AAD4 8003BB24 8C8402A4 */  lw         $a0, %lo(D_800802A4)($a0)
/* 8AAD8 8003BB28 8E2500EC */  lw         $a1, 0xec($s1)
/* 8AADC 8003BB2C 0C03006C */  jal        func_800C01B0
/* 8AAE0 8003BB30 24060820 */   addiu     $a2, $zero, 0x820
.L8003BB34:
/* 8AAE4 8003BB34 0C00EFC4 */  jal        func_8003BF10_8AEC0
/* 8AAE8 8003BB38 02202021 */   addu      $a0, $s1, $zero
/* 8AAEC 8003BB3C 14400062 */  bnez       $v0, .L8003BCC8
/* 8AAF0 8003BB40 00000000 */   nop
/* 8AAF4 8003BB44 8E220048 */  lw         $v0, 0x48($s1)
/* 8AAF8 8003BB48 8443001E */  lh         $v1, 0x1e($v0)
/* 8AAFC 8003BB4C 240200FF */  addiu      $v0, $zero, 0xff
/* 8AB00 8003BB50 1462005D */  bne        $v1, $v0, .L8003BCC8
/* 8AB04 8003BB54 00000000 */   nop
/* 8AB08 8003BB58 0C00EFA7 */  jal        func_8003BE9C_8AE4C
/* 8AB0C 8003BB5C 02202021 */   addu      $a0, $s1, $zero
/* 8AB10 8003BB60 14400059 */  bnez       $v0, .L8003BCC8
/* 8AB14 8003BB64 02202021 */   addu      $a0, $s1, $zero
/* 8AB18 8003BB68 0C00ED4F */  jal        func_8003B53C_8A4EC
/* 8AB1C 8003BB6C 00002821 */   addu      $a1, $zero, $zero
/* 8AB20 8003BB70 0800EF32 */  j          .L8003BCC8
/* 8AB24 8003BB74 00000000 */   nop
glabel L8003BB78_8AB28
/* 8AB28 8003BB78 8E220048 */  lw         $v0, 0x48($s1)
/* 8AB2C 8003BB7C 84430024 */  lh         $v1, 0x24($v0)
/* 8AB30 8003BB80 2402000F */  addiu      $v0, $zero, 0xf
/* 8AB34 8003BB84 50620001 */  beql       $v1, $v0, .L8003BB8C
/* 8AB38 8003BB88 AE200010 */   sw        $zero, 0x10($s1)
.L8003BB8C:
/* 8AB3C 8003BB8C 86240018 */  lh         $a0, 0x18($s1)
/* 8AB40 8003BB90 2882000F */  slti       $v0, $a0, 0xf
/* 8AB44 8003BB94 1440001E */  bnez       $v0, .L8003BC10
/* 8AB48 8003BB98 00000000 */   nop
/* 8AB4C 8003BB9C 3C038017 */  lui        $v1, %hi(D_8016D168)
/* 8AB50 8003BBA0 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* 8AB54 8003BBA4 00031040 */  sll        $v0, $v1, 1
/* 8AB58 8003BBA8 00431021 */  addu       $v0, $v0, $v1
/* 8AB5C 8003BBAC 2442FFF6 */  addiu      $v0, $v0, -0xa
/* 8AB60 8003BBB0 0082102A */  slt        $v0, $a0, $v0
/* 8AB64 8003BBB4 10400016 */  beqz       $v0, .L8003BC10
/* 8AB68 8003BBB8 24040007 */   addiu     $a0, $zero, 7
/* 8AB6C 8003BBBC 24050001 */  addiu      $a1, $zero, 1
/* 8AB70 8003BBC0 C6200004 */  lwc1       $f0, 4($s1)
/* 8AB74 8003BBC4 3C014080 */  lui        $at, 0x4080
/* 8AB78 8003BBC8 44811000 */  mtc1       $at, $f2
/* 8AB7C 8003BBCC 00000000 */  nop
/* 8AB80 8003BBD0 C624000C */  lwc1       $f4, 0xc($s1)
/* 8AB84 8003BBD4 2406000A */  addiu      $a2, $zero, 0xa
/* 8AB88 8003BBD8 24020005 */  addiu      $v0, $zero, 5
/* 8AB8C 8003BBDC AFA20010 */  sw         $v0, 0x10($sp)
/* 8AB90 8003BBE0 24020168 */  addiu      $v0, $zero, 0x168
/* 8AB94 8003BBE4 AFA00014 */  sw         $zero, 0x14($sp)
/* 8AB98 8003BBE8 AFA00018 */  sw         $zero, 0x18($sp)
/* 8AB9C 8003BBEC AFA2001C */  sw         $v0, 0x1c($sp)
/* 8ABA0 8003BBF0 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8ABA4 8003BBF4 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8ABA8 8003BBF8 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8ABAC 8003BBFC E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 8ABB0 8003BC00 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8ABB4 8003BC04 E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 8ABB8 8003BC08 0C0E64B4 */  jal        func_803992D0
/* 8ABBC 8003BC0C 24070004 */   addiu     $a3, $zero, 4
.L8003BC10:
/* 8ABC0 8003BC10 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 8ABC4 8003BC14 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 8ABC8 8003BC18 86240018 */  lh         $a0, 0x18($s1)
/* 8ABCC 8003BC1C 00021840 */  sll        $v1, $v0, 1
/* 8ABD0 8003BC20 00621821 */  addu       $v1, $v1, $v0
/* 8ABD4 8003BC24 14830025 */  bne        $a0, $v1, .L8003BCBC
/* 8ABD8 8003BC28 00000000 */   nop
/* 8ABDC 8003BC2C 0C026DD5 */  jal        func_8009B754
/* 8ABE0 8003BC30 2404000D */   addiu     $a0, $zero, 0xd
/* 8ABE4 8003BC34 24040009 */  addiu      $a0, $zero, 9
/* 8ABE8 8003BC38 2405000F */  addiu      $a1, $zero, 0xf
/* 8ABEC 8003BC3C C6200004 */  lwc1       $f0, 4($s1)
/* 8ABF0 8003BC40 3C0140A0 */  lui        $at, 0x40a0
/* 8ABF4 8003BC44 44811000 */  mtc1       $at, $f2
/* 8ABF8 8003BC48 00000000 */  nop
/* 8ABFC 8003BC4C C624000C */  lwc1       $f4, 0xc($s1)
/* 8AC00 8003BC50 00003021 */  addu       $a2, $zero, $zero
/* 8AC04 8003BC54 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8AC08 8003BC58 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8AC0C 8003BC5C 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8AC10 8003BC60 E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 8AC14 8003BC64 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8AC18 8003BC68 E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 8AC1C 8003BC6C 0C0E6731 */  jal        func_80399CC4
/* 8AC20 8003BC70 00009021 */   addu      $s2, $zero, $zero
.L8003BC74:
/* 8AC24 8003BC74 0C02591A */  jal        func_80096468
/* 8AC28 8003BC78 24040005 */   addiu     $a0, $zero, 5
/* 8AC2C 8003BC7C 24040004 */  addiu      $a0, $zero, 4
/* 8AC30 8003BC80 24500005 */  addiu      $s0, $v0, 5
/* 8AC34 8003BC84 00108400 */  sll        $s0, $s0, 0x10
/* 8AC38 8003BC88 0C02591A */  jal        func_80096468
/* 8AC3C 8003BC8C 00108403 */   sra       $s0, $s0, 0x10
/* 8AC40 8003BC90 02002021 */  addu       $a0, $s0, $zero
/* 8AC44 8003BC94 24420004 */  addiu      $v0, $v0, 4
/* 8AC48 8003BC98 00021400 */  sll        $v0, $v0, 0x10
/* 8AC4C 8003BC9C 00022C03 */  sra        $a1, $v0, 0x10
/* 8AC50 8003BCA0 0C0E6731 */  jal        func_80399CC4
/* 8AC54 8003BCA4 24060028 */   addiu     $a2, $zero, 0x28
/* 8AC58 8003BCA8 26520001 */  addiu      $s2, $s2, 1
/* 8AC5C 8003BCAC 2A42000A */  slti       $v0, $s2, 0xa
/* 8AC60 8003BCB0 1440FFF0 */  bnez       $v0, .L8003BC74
/* 8AC64 8003BCB4 24020001 */   addiu     $v0, $zero, 1
/* 8AC68 8003BCB8 A2220022 */  sb         $v0, 0x22($s1)
.L8003BCBC:
/* 8AC6C 8003BCBC 96220018 */  lhu        $v0, 0x18($s1)
/* 8AC70 8003BCC0 24420001 */  addiu      $v0, $v0, 1
/* 8AC74 8003BCC4 A6220018 */  sh         $v0, 0x18($s1)
.L8003BCC8:
/* 8AC78 8003BCC8 92220022 */  lbu        $v0, 0x22($s1)
/* 8AC7C 8003BCCC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 8AC80 8003BCD0 8FB20028 */  lw         $s2, 0x28($sp)
/* 8AC84 8003BCD4 8FB10024 */  lw         $s1, 0x24($sp)
/* 8AC88 8003BCD8 8FB00020 */  lw         $s0, 0x20($sp)
/* 8AC8C 8003BCDC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8AC90 8003BCE0 03E00008 */  jr         $ra
/* 8AC94 8003BCE4 00000000 */   nop

glabel func_8003BCE8_8AC98
/* 8AC98 8003BCE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AC9C 8003BCEC AFB00010 */  sw         $s0, 0x10($sp)
/* 8ACA0 8003BCF0 00808021 */  addu       $s0, $a0, $zero
/* 8ACA4 8003BCF4 24040003 */  addiu      $a0, $zero, 3
/* 8ACA8 8003BCF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8ACAC 8003BCFC 0C026962 */  jal        func_8009A588
/* 8ACB0 8003BD00 24050004 */   addiu     $a1, $zero, 4
/* 8ACB4 8003BD04 00021400 */  sll        $v0, $v0, 0x10
/* 8ACB8 8003BD08 00021C03 */  sra        $v1, $v0, 0x10
/* 8ACBC 8003BD0C 10600008 */  beqz       $v1, .L8003BD30
/* 8ACC0 8003BD10 24020002 */   addiu     $v0, $zero, 2
/* 8ACC4 8003BD14 1462000D */  bne        $v1, $v0, .L8003BD4C
/* 8ACC8 8003BD18 24020001 */   addiu     $v0, $zero, 1
/* 8ACCC 8003BD1C 82030001 */  lb         $v1, 1($s0)
/* 8ACD0 8003BD20 10620009 */  beq        $v1, $v0, .L8003BD48
/* 8ACD4 8003BD24 24020001 */   addiu     $v0, $zero, 1
/* 8ACD8 8003BD28 0800EF53 */  j          .L8003BD4C
/* 8ACDC 8003BD2C A2020024 */   sb        $v0, 0x24($s0)
.L8003BD30:
/* 8ACE0 8003BD30 82030001 */  lb         $v1, 1($s0)
/* 8ACE4 8003BD34 24020001 */  addiu      $v0, $zero, 1
/* 8ACE8 8003BD38 14620003 */  bne        $v1, $v0, .L8003BD48
/* 8ACEC 8003BD3C 24020001 */   addiu     $v0, $zero, 1
/* 8ACF0 8003BD40 0800EF53 */  j          .L8003BD4C
/* 8ACF4 8003BD44 A2020024 */   sb        $v0, 0x24($s0)
.L8003BD48:
/* 8ACF8 8003BD48 A2020023 */  sb         $v0, 0x23($s0)
.L8003BD4C:
/* 8ACFC 8003BD4C 3C028015 */  lui        $v0, %hi(D_8014D00A)
/* 8AD00 8003BD50 9442D00A */  lhu        $v0, %lo(D_8014D00A)($v0)
/* 8AD04 8003BD54 30428000 */  andi       $v0, $v0, 0x8000
/* 8AD08 8003BD58 10400002 */  beqz       $v0, .L8003BD64
/* 8AD0C 8003BD5C 24020001 */   addiu     $v0, $zero, 1
/* 8AD10 8003BD60 A2020025 */  sb         $v0, 0x25($s0)
.L8003BD64:
/* 8AD14 8003BD64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8AD18 8003BD68 8FB00010 */  lw         $s0, 0x10($sp)
/* 8AD1C 8003BD6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8AD20 8003BD70 03E00008 */  jr         $ra
/* 8AD24 8003BD74 00000000 */   nop

glabel func_8003BD78_8AD28
/* 8AD28 8003BD78 90820020 */  lbu        $v0, 0x20($a0)
/* 8AD2C 8003BD7C 10400004 */  beqz       $v0, .L8003BD90
/* 8AD30 8003BD80 27BDFFF8 */   addiu     $sp, $sp, -8
/* 8AD34 8003BD84 24020001 */  addiu      $v0, $zero, 1
/* 8AD38 8003BD88 0800EF96 */  j          .L8003BE58
/* 8AD3C 8003BD8C A0820024 */   sb        $v0, 0x24($a0)
.L8003BD90:
/* 8AD40 8003BD90 3C028008 */  lui        $v0, %hi(D_80084614)
/* 8AD44 8003BD94 8C424614 */  lw         $v0, %lo(D_80084614)($v0)
/* 8AD48 8003BD98 C4800004 */  lwc1       $f0, 4($a0)
/* 8AD4C 8003BD9C C4420008 */  lwc1       $f2, 8($v0)
/* 8AD50 8003BDA0 46001081 */  sub.s      $f2, $f2, $f0
/* 8AD54 8003BDA4 44800000 */  mtc1       $zero, $f0
/* 8AD58 8003BDA8 00000000 */  nop
/* 8AD5C 8003BDAC 4602003C */  c.lt.s     $f0, $f2
/* 8AD60 8003BDB0 00000000 */  nop
/* 8AD64 8003BDB4 00000000 */  nop
/* 8AD68 8003BDB8 45010002 */  bc1t       .L8003BDC4
/* 8AD6C 8003BDBC 46001006 */   mov.s     $f0, $f2
/* 8AD70 8003BDC0 46001007 */  neg.s      $f0, $f2
.L8003BDC4:
/* 8AD74 8003BDC4 8482001A */  lh         $v0, 0x1a($a0)
/* 8AD78 8003BDC8 46000086 */  mov.s      $f2, $f0
/* 8AD7C 8003BDCC 44820000 */  mtc1       $v0, $f0
/* 8AD80 8003BDD0 00000000 */  nop
/* 8AD84 8003BDD4 46800020 */  cvt.s.w    $f0, $f0
/* 8AD88 8003BDD8 4600103C */  c.lt.s     $f2, $f0
/* 8AD8C 8003BDDC 00000000 */  nop
/* 8AD90 8003BDE0 00000000 */  nop
/* 8AD94 8003BDE4 45000005 */  bc1f       .L8003BDFC
/* 8AD98 8003BDE8 24030001 */   addiu     $v1, $zero, 1
/* 8AD9C 8003BDEC 90820000 */  lbu        $v0, ($a0)
/* 8ADA0 8003BDF0 A0830024 */  sb         $v1, 0x24($a0)
/* 8ADA4 8003BDF4 0800EF8B */  j          .L8003BE2C
/* 8ADA8 8003BDF8 24030002 */   addiu     $v1, $zero, 2
.L8003BDFC:
/* 8ADAC 8003BDFC 8482001C */  lh         $v0, 0x1c($a0)
/* 8ADB0 8003BE00 44820000 */  mtc1       $v0, $f0
/* 8ADB4 8003BE04 00000000 */  nop
/* 8ADB8 8003BE08 46800020 */  cvt.s.w    $f0, $f0
/* 8ADBC 8003BE0C 4602003C */  c.lt.s     $f0, $f2
/* 8ADC0 8003BE10 00000000 */  nop
/* 8ADC4 8003BE14 45000008 */  bc1f       .L8003BE38
/* 8ADC8 8003BE18 00000000 */   nop
/* 8ADCC 8003BE1C 90820000 */  lbu        $v0, ($a0)
/* 8ADD0 8003BE20 24030001 */  addiu      $v1, $zero, 1
/* 8ADD4 8003BE24 A0830023 */  sb         $v1, 0x23($a0)
/* 8ADD8 8003BE28 24030001 */  addiu      $v1, $zero, 1
.L8003BE2C:
/* 8ADDC 8003BE2C 10430002 */  beq        $v0, $v1, .L8003BE38
/* 8ADE0 8003BE30 24020014 */   addiu     $v0, $zero, 0x14
/* 8ADE4 8003BE34 A482001E */  sh         $v0, 0x1e($a0)
.L8003BE38:
/* 8ADE8 8003BE38 8482001E */  lh         $v0, 0x1e($a0)
/* 8ADEC 8003BE3C 14400004 */  bnez       $v0, .L8003BE50
/* 8ADF0 8003BE40 00401821 */   addu      $v1, $v0, $zero
/* 8ADF4 8003BE44 24020001 */  addiu      $v0, $zero, 1
/* 8ADF8 8003BE48 0800EF96 */  j          .L8003BE58
/* 8ADFC 8003BE4C A0820025 */   sb        $v0, 0x25($a0)
.L8003BE50:
/* 8AE00 8003BE50 2462FFFF */  addiu      $v0, $v1, -1
/* 8AE04 8003BE54 A482001E */  sh         $v0, 0x1e($a0)
.L8003BE58:
/* 8AE08 8003BE58 27BD0008 */  addiu      $sp, $sp, 8
/* 8AE0C 8003BE5C 03E00008 */  jr         $ra
/* 8AE10 8003BE60 00000000 */   nop

glabel func_8003BE64_8AE14
/* 8AE14 8003BE64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AE18 8003BE68 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8AE1C 8003BE6C 90820023 */  lbu        $v0, 0x23($a0)
/* 8AE20 8003BE70 14400006 */  bnez       $v0, .L8003BE8C
/* 8AE24 8003BE74 00000000 */   nop
/* 8AE28 8003BE78 90820024 */  lbu        $v0, 0x24($a0)
/* 8AE2C 8003BE7C 14400003 */  bnez       $v0, .L8003BE8C
/* 8AE30 8003BE80 00000000 */   nop
/* 8AE34 8003BE84 0C00ED4F */  jal        func_8003B53C_8A4EC
/* 8AE38 8003BE88 00002821 */   addu      $a1, $zero, $zero
.L8003BE8C:
/* 8AE3C 8003BE8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8AE40 8003BE90 00001021 */  addu       $v0, $zero, $zero
/* 8AE44 8003BE94 03E00008 */  jr         $ra
/* 8AE48 8003BE98 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003BE9C_8AE4C
/* 8AE4C 8003BE9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AE50 8003BEA0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8AE54 8003BEA4 90820023 */  lbu        $v0, 0x23($a0)
/* 8AE58 8003BEA8 14400006 */  bnez       $v0, .L8003BEC4
/* 8AE5C 8003BEAC 24050001 */   addiu     $a1, $zero, 1
/* 8AE60 8003BEB0 90820024 */  lbu        $v0, 0x24($a0)
/* 8AE64 8003BEB4 14400003 */  bnez       $v0, .L8003BEC4
/* 8AE68 8003BEB8 24050002 */   addiu     $a1, $zero, 2
/* 8AE6C 8003BEBC 0800EFB4 */  j          .L8003BED0
/* 8AE70 8003BEC0 00001021 */   addu      $v0, $zero, $zero
.L8003BEC4:
/* 8AE74 8003BEC4 0C00ED4F */  jal        func_8003B53C_8A4EC
/* 8AE78 8003BEC8 00000000 */   nop
/* 8AE7C 8003BECC 24020001 */  addiu      $v0, $zero, 1
.L8003BED0:
/* 8AE80 8003BED0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8AE84 8003BED4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8AE88 8003BED8 03E00008 */  jr         $ra
/* 8AE8C 8003BEDC 00000000 */   nop

glabel func_8003BEE0_8AE90
/* 8AE90 8003BEE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AE94 8003BEE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8AE98 8003BEE8 90820025 */  lbu        $v0, 0x25($a0)
/* 8AE9C 8003BEEC 10400004 */  beqz       $v0, .L8003BF00
/* 8AEA0 8003BEF0 00001021 */   addu      $v0, $zero, $zero
/* 8AEA4 8003BEF4 0C00ED4F */  jal        func_8003B53C_8A4EC
/* 8AEA8 8003BEF8 24050003 */   addiu     $a1, $zero, 3
/* 8AEAC 8003BEFC 24020001 */  addiu      $v0, $zero, 1
.L8003BF00:
/* 8AEB0 8003BF00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8AEB4 8003BF04 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8AEB8 8003BF08 03E00008 */  jr         $ra
/* 8AEBC 8003BF0C 00000000 */   nop

glabel func_8003BF10_8AEC0
/* 8AEC0 8003BF10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AEC4 8003BF14 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8AEC8 8003BF18 90820026 */  lbu        $v0, 0x26($a0)
/* 8AECC 8003BF1C 10400004 */  beqz       $v0, .L8003BF30
/* 8AED0 8003BF20 00001021 */   addu      $v0, $zero, $zero
/* 8AED4 8003BF24 0C00ED4F */  jal        func_8003B53C_8A4EC
/* 8AED8 8003BF28 24050004 */   addiu     $a1, $zero, 4
/* 8AEDC 8003BF2C 24020001 */  addiu      $v0, $zero, 1
.L8003BF30:
/* 8AEE0 8003BF30 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8AEE4 8003BF34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8AEE8 8003BF38 03E00008 */  jr         $ra
/* 8AEEC 8003BF3C 00000000 */   nop

glabel func_8003BF40_8AEF0
/* 8AEF0 8003BF40 C4800010 */  lwc1       $f0, 0x10($a0)
/* 8AEF4 8003BF44 3C013F80 */  lui        $at, 0x3f80
/* 8AEF8 8003BF48 44811000 */  mtc1       $at, $f2
/* 8AEFC 8003BF4C 00000000 */  nop
/* 8AF00 8003BF50 4600103C */  c.lt.s     $f2, $f0
/* 8AF04 8003BF54 00000000 */  nop
/* 8AF08 8003BF58 00000000 */  nop
/* 8AF0C 8003BF5C 45030009 */  bc1tl      .L8003BF84
/* 8AF10 8003BF60 E4820010 */   swc1      $f2, 0x10($a0)
/* 8AF14 8003BF64 3C01BF80 */  lui        $at, 0xbf80
/* 8AF18 8003BF68 44811000 */  mtc1       $at, $f2
/* 8AF1C 8003BF6C 00000000 */  nop
/* 8AF20 8003BF70 4602003C */  c.lt.s     $f0, $f2
/* 8AF24 8003BF74 00000000 */  nop
/* 8AF28 8003BF78 00000000 */  nop
/* 8AF2C 8003BF7C 45030001 */  bc1tl      .L8003BF84
/* 8AF30 8003BF80 E4820010 */   swc1      $f2, 0x10($a0)
.L8003BF84:
/* 8AF34 8003BF84 C4820004 */  lwc1       $f2, 4($a0)
/* 8AF38 8003BF88 C4800010 */  lwc1       $f0, 0x10($a0)
/* 8AF3C 8003BF8C C4840010 */  lwc1       $f4, 0x10($a0)
/* 8AF40 8003BF90 46001080 */  add.s      $f2, $f2, $f0
/* 8AF44 8003BF94 3C013DCC */  lui        $at, 0x3dcc
/* 8AF48 8003BF98 3421CCCD */  ori        $at, $at, 0xcccd
/* 8AF4C 8003BF9C 44810000 */  mtc1       $at, $f0
/* 8AF50 8003BFA0 00000000 */  nop
/* 8AF54 8003BFA4 4604003C */  c.lt.s     $f0, $f4
/* 8AF58 8003BFA8 00000000 */  nop
/* 8AF5C 8003BFAC 00000000 */  nop
/* 8AF60 8003BFB0 45000005 */  bc1f       .L8003BFC8
/* 8AF64 8003BFB4 E4820004 */   swc1      $f2, 4($a0)
/* 8AF68 8003BFB8 80830001 */  lb         $v1, 1($a0)
/* 8AF6C 8003BFBC 908200E0 */  lbu        $v0, 0xe0($a0)
/* 8AF70 8003BFC0 00431023 */  subu       $v0, $v0, $v1
/* 8AF74 8003BFC4 A08200E0 */  sb         $v0, 0xe0($a0)
.L8003BFC8:
/* 8AF78 8003BFC8 C4820010 */  lwc1       $f2, 0x10($a0)
/* 8AF7C 8003BFCC 3C01BDCC */  lui        $at, 0xbdcc
/* 8AF80 8003BFD0 3421CCCD */  ori        $at, $at, 0xcccd
/* 8AF84 8003BFD4 44810000 */  mtc1       $at, $f0
/* 8AF88 8003BFD8 00000000 */  nop
/* 8AF8C 8003BFDC 4600103C */  c.lt.s     $f2, $f0
/* 8AF90 8003BFE0 00000000 */  nop
/* 8AF94 8003BFE4 45000005 */  bc1f       .L8003BFFC
/* 8AF98 8003BFE8 00000000 */   nop
/* 8AF9C 8003BFEC 908200E0 */  lbu        $v0, 0xe0($a0)
/* 8AFA0 8003BFF0 90830001 */  lbu        $v1, 1($a0)
/* 8AFA4 8003BFF4 00431021 */  addu       $v0, $v0, $v1
/* 8AFA8 8003BFF8 A08200E0 */  sb         $v0, 0xe0($a0)
.L8003BFFC:
/* 8AFAC 8003BFFC 03E00008 */  jr         $ra
/* 8AFB0 8003C000 00000000 */   nop

glabel func_8003C004_8AFB4
/* 8AFB4 8003C004 C4800004 */  lwc1       $f0, 4($a0)
/* 8AFB8 8003C008 3C018008 */  lui        $at, %hi(D_80083A3C)
/* 8AFBC 8003C00C C4223A3C */  lwc1       $f2, %lo(D_80083A3C)($at)
/* 8AFC0 8003C010 46020000 */  add.s      $f0, $f0, $f2
/* 8AFC4 8003C014 03E00008 */  jr         $ra
/* 8AFC8 8003C018 E4800004 */   swc1      $f0, 4($a0)

glabel func_8003C01C_8AFCC
/* 8AFCC 8003C01C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 8AFD0 8003C020 AFB1002C */  sw         $s1, 0x2c($sp)
/* 8AFD4 8003C024 00808821 */  addu       $s1, $a0, $zero
/* 8AFD8 8003C028 AFBF0034 */  sw         $ra, 0x34($sp)
/* 8AFDC 8003C02C AFB20030 */  sw         $s2, 0x30($sp)
/* 8AFE0 8003C030 AFB00028 */  sw         $s0, 0x28($sp)
/* 8AFE4 8003C034 F7B80048 */  sdc1       $f24, 0x48($sp)
/* 8AFE8 8003C038 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 8AFEC 8003C03C F7B40038 */  sdc1       $f20, 0x38($sp)
/* 8AFF0 8003C040 92220022 */  lbu        $v0, 0x22($s1)
/* 8AFF4 8003C044 1440009D */  bnez       $v0, .L8003C2BC
/* 8AFF8 8003C048 00000000 */   nop
/* 8AFFC 8003C04C 92220000 */  lbu        $v0, ($s1)
/* 8B000 8003C050 2C420004 */  sltiu      $v0, $v0, 4
/* 8B004 8003C054 10400007 */  beqz       $v0, .L8003C074
/* 8B008 8003C058 24020013 */   addiu     $v0, $zero, 0x13
/* 8B00C 8003C05C 8E240048 */  lw         $a0, 0x48($s1)
/* 8B010 8003C060 84830024 */  lh         $v1, 0x24($a0)
/* 8B014 8003C064 14620003 */  bne        $v1, $v0, .L8003C074
/* 8B018 8003C068 00000000 */   nop
/* 8B01C 8003C06C 0C027ABB */  jal        func_8009EAEC
/* 8B020 8003C070 00000000 */   nop
.L8003C074:
/* 8B024 8003C074 822400E0 */  lb         $a0, 0xe0($s1)
/* 8B028 8003C078 28820004 */  slti       $v0, $a0, 4
/* 8B02C 8003C07C 14400003 */  bnez       $v0, .L8003C08C
/* 8B030 8003C080 00801821 */   addu      $v1, $a0, $zero
/* 8B034 8003C084 0800F025 */  j          .L8003C094
/* 8B038 8003C088 2462FFFC */   addiu     $v0, $v1, -4
.L8003C08C:
/* 8B03C 8003C08C 04810002 */  bgez       $a0, .L8003C098
/* 8B040 8003C090 24620004 */   addiu     $v0, $v1, 4
.L8003C094:
/* 8B044 8003C094 A22200E0 */  sb         $v0, 0xe0($s1)
.L8003C098:
/* 8B048 8003C098 822200E0 */  lb         $v0, 0xe0($s1)
/* 8B04C 8003C09C 00021080 */  sll        $v0, $v0, 2
/* 8B050 8003C0A0 3C048008 */  lui        $a0, %hi(D_80080270)
/* 8B054 8003C0A4 00822021 */  addu       $a0, $a0, $v0
/* 8B058 8003C0A8 8C840270 */  lw         $a0, %lo(D_80080270)($a0)
/* 8B05C 8003C0AC 8E2500D8 */  lw         $a1, 0xd8($s1)
/* 8B060 8003C0B0 24060800 */  addiu      $a2, $zero, 0x800
/* 8B064 8003C0B4 0C03006C */  jal        func_800C01B0
/* 8B068 8003C0B8 24840010 */   addiu     $a0, $a0, 0x10
/* 8B06C 8003C0BC 822200E0 */  lb         $v0, 0xe0($s1)
/* 8B070 8003C0C0 00021080 */  sll        $v0, $v0, 2
/* 8B074 8003C0C4 3C048008 */  lui        $a0, %hi(D_80080280)
/* 8B078 8003C0C8 00822021 */  addu       $a0, $a0, $v0
/* 8B07C 8003C0CC 8C840280 */  lw         $a0, %lo(D_80080280)($a0)
/* 8B080 8003C0D0 8E2500DC */  lw         $a1, 0xdc($s1)
/* 8B084 8003C0D4 24060100 */  addiu      $a2, $zero, 0x100
/* 8B088 8003C0D8 0C03006C */  jal        func_800C01B0
/* 8B08C 8003C0DC 24840010 */   addiu     $a0, $a0, 0x10
/* 8B090 8003C0E0 C6220004 */  lwc1       $f2, 4($s1)
/* 8B094 8003C0E4 3C014000 */  lui        $at, 0x4000
/* 8B098 8003C0E8 44812000 */  mtc1       $at, $f4
/* 8B09C 8003C0EC 00000000 */  nop
/* 8B0A0 8003C0F0 46041083 */  div.s      $f2, $f2, $f4
/* 8B0A4 8003C0F4 C6200008 */  lwc1       $f0, 8($s1)
/* 8B0A8 8003C0F8 46040003 */  div.s      $f0, $f0, $f4
/* 8B0AC 8003C0FC 26240028 */  addiu      $a0, $s1, 0x28
/* 8B0B0 8003C100 4600110D */  trunc.w.s  $f4, $f2
/* 8B0B4 8003C104 E624002C */  swc1       $f4, 0x2c($s1)
/* 8B0B8 8003C108 4600008D */  trunc.w.s  $f2, $f0
/* 8B0BC 8003C10C E6220030 */  swc1       $f2, 0x30($s1)
/* 8B0C0 8003C110 0C02A1E2 */  jal        func_800A8788
/* 8B0C4 8003C114 00002821 */   addu      $a1, $zero, $zero
/* 8B0C8 8003C118 C6260004 */  lwc1       $f6, 4($s1)
/* 8B0CC 8003C11C C6280008 */  lwc1       $f8, 8($s1)
/* 8B0D0 8003C120 C62A000C */  lwc1       $f10, 0xc($s1)
/* 8B0D4 8003C124 C62C0004 */  lwc1       $f12, 4($s1)
/* 8B0D8 8003C128 C6200008 */  lwc1       $f0, 8($s1)
/* 8B0DC 8003C12C 3C013F80 */  lui        $at, 0x3f80
/* 8B0E0 8003C130 44811000 */  mtc1       $at, $f2
/* 8B0E4 8003C134 00000000 */  nop
/* 8B0E8 8003C138 C624000C */  lwc1       $f4, 0xc($s1)
/* 8B0EC 8003C13C 3C013CA3 */  lui        $at, 0x3ca3
/* 8B0F0 8003C140 3421D70A */  ori        $at, $at, 0xd70a
/* 8B0F4 8003C144 4481C000 */  mtc1       $at, $f24
/* 8B0F8 8003C148 00000000 */  nop
/* 8B0FC 8003C14C 3C0142B4 */  lui        $at, 0x42b4
/* 8B100 8003C150 4481B000 */  mtc1       $at, $f22
/* 8B104 8003C154 00000000 */  nop
/* 8B108 8003C158 46020000 */  add.s      $f0, $f0, $f2
/* 8B10C 8003C15C 3C018015 */  lui        $at, %hi(D_8014A054)
/* 8B110 8003C160 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 8B114 8003C164 3C018015 */  lui        $at, %hi(D_8014A050)
/* 8B118 8003C168 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 8B11C 8003C16C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 8B120 8003C170 E42AD1A8 */  swc1       $f10, %lo(D_8016D1A8)($at)
/* 8B124 8003C174 3C018017 */  lui        $at, %hi(D_8016E568)
/* 8B128 8003C178 E42CE568 */  swc1       $f12, %lo(D_8016E568)($at)
/* 8B12C 8003C17C 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 8B130 8003C180 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 8B134 8003C184 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 8B138 8003C188 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* 8B13C 8003C18C 82220001 */  lb         $v0, 1($s1)
/* 8B140 8003C190 E7B80010 */  swc1       $f24, 0x10($sp)
/* 8B144 8003C194 C6200004 */  lwc1       $f0, 4($s1)
/* 8B148 8003C198 E7A00014 */  swc1       $f0, 0x14($sp)
/* 8B14C 8003C19C 44820000 */  mtc1       $v0, $f0
/* 8B150 8003C1A0 00000000 */  nop
/* 8B154 8003C1A4 46800020 */  cvt.s.w    $f0, $f0
/* 8B158 8003C1A8 46160002 */  mul.s      $f0, $f0, $f22
/* 8B15C 8003C1AC C6220008 */  lwc1       $f2, 8($s1)
/* 8B160 8003C1B0 4480A000 */  mtc1       $zero, $f20
/* 8B164 8003C1B4 00000000 */  nop
/* 8B168 8003C1B8 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8B16C 8003C1BC 44060000 */  mfc1       $a2, $f0
/* 8B170 8003C1C0 00000000 */  nop
/* 8B174 8003C1C4 C620000C */  lwc1       $f0, 0xc($s1)
/* 8B178 8003C1C8 26300050 */  addiu      $s0, $s1, 0x50
/* 8B17C 8003C1CC 4405A000 */  mfc1       $a1, $f20
/* 8B180 8003C1D0 00000000 */  nop
/* 8B184 8003C1D4 4407A000 */  mfc1       $a3, $f20
/* 8B188 8003C1D8 00000000 */  nop
/* 8B18C 8003C1DC 02002021 */  addu       $a0, $s0, $zero
/* 8B190 8003C1E0 0C02FD0E */  jal        func_800BF438
/* 8B194 8003C1E4 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 8B198 8003C1E8 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 8B19C 8003C1EC 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 8B1A0 8003C1F0 3C12DA38 */  lui        $s2, 0xda38
/* 8B1A4 8003C1F4 36520003 */  ori        $s2, $s2, 3
/* 8B1A8 8003C1F8 AC520000 */  sw         $s2, ($v0)
/* 8B1AC 8003C1FC AC500004 */  sw         $s0, 4($v0)
/* 8B1B0 8003C200 8E240048 */  lw         $a0, 0x48($s1)
/* 8B1B4 8003C204 24420008 */  addiu      $v0, $v0, 8
/* 8B1B8 8003C208 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 8B1BC 8003C20C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 8B1C0 8003C210 0C027A93 */  jal        func_8009EA4C
/* 8B1C4 8003C214 00000000 */   nop
/* 8B1C8 8003C218 8E240044 */  lw         $a0, 0x44($s1)
/* 8B1CC 8003C21C 8E250048 */  lw         $a1, 0x48($s1)
/* 8B1D0 8003C220 0C027F77 */  jal        func_8009FDDC
/* 8B1D4 8003C224 00000000 */   nop
/* 8B1D8 8003C228 92230000 */  lbu        $v1, ($s1)
/* 8B1DC 8003C22C 24020004 */  addiu      $v0, $zero, 4
/* 8B1E0 8003C230 14620022 */  bne        $v1, $v0, .L8003C2BC
/* 8B1E4 8003C234 26300098 */   addiu     $s0, $s1, 0x98
/* 8B1E8 8003C238 82220001 */  lb         $v0, 1($s1)
/* 8B1EC 8003C23C E7B80010 */  swc1       $f24, 0x10($sp)
/* 8B1F0 8003C240 C6200004 */  lwc1       $f0, 4($s1)
/* 8B1F4 8003C244 E7A00014 */  swc1       $f0, 0x14($sp)
/* 8B1F8 8003C248 44820000 */  mtc1       $v0, $f0
/* 8B1FC 8003C24C 00000000 */  nop
/* 8B200 8003C250 46800020 */  cvt.s.w    $f0, $f0
/* 8B204 8003C254 46160002 */  mul.s      $f0, $f0, $f22
/* 8B208 8003C258 C6220008 */  lwc1       $f2, 8($s1)
/* 8B20C 8003C25C 4405A000 */  mfc1       $a1, $f20
/* 8B210 8003C260 00000000 */  nop
/* 8B214 8003C264 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8B218 8003C268 44060000 */  mfc1       $a2, $f0
/* 8B21C 8003C26C 00000000 */  nop
/* 8B220 8003C270 C620000C */  lwc1       $f0, 0xc($s1)
/* 8B224 8003C274 02002021 */  addu       $a0, $s0, $zero
/* 8B228 8003C278 00A03821 */  addu       $a3, $a1, $zero
/* 8B22C 8003C27C 0C02FD0E */  jal        func_800BF438
/* 8B230 8003C280 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 8B234 8003C284 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 8B238 8003C288 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 8B23C 8003C28C AC520000 */  sw         $s2, ($v0)
/* 8B240 8003C290 AC500004 */  sw         $s0, 4($v0)
/* 8B244 8003C294 8E240094 */  lw         $a0, 0x94($s1)
/* 8B248 8003C298 24420008 */  addiu      $v0, $v0, 8
/* 8B24C 8003C29C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 8B250 8003C2A0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 8B254 8003C2A4 0C027A93 */  jal        func_8009EA4C
/* 8B258 8003C2A8 00000000 */   nop
/* 8B25C 8003C2AC 8E240090 */  lw         $a0, 0x90($s1)
/* 8B260 8003C2B0 8E250094 */  lw         $a1, 0x94($s1)
/* 8B264 8003C2B4 0C027F77 */  jal        func_8009FDDC
/* 8B268 8003C2B8 00000000 */   nop
.L8003C2BC:
/* 8B26C 8003C2BC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8B270 8003C2C0 8FB20030 */  lw         $s2, 0x30($sp)
/* 8B274 8003C2C4 8FB1002C */  lw         $s1, 0x2c($sp)
/* 8B278 8003C2C8 8FB00028 */  lw         $s0, 0x28($sp)
/* 8B27C 8003C2CC D7B80048 */  ldc1       $f24, 0x48($sp)
/* 8B280 8003C2D0 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 8B284 8003C2D4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 8B288 8003C2D8 27BD0050 */  addiu      $sp, $sp, 0x50
/* 8B28C 8003C2DC 03E00008 */  jr         $ra
/* 8B290 8003C2E0 00000000 */   nop
/* 8B294 8003C2E4 00000000 */  nop
/* 8B298 8003C2E8 00000000 */  nop
/* 8B29C 8003C2EC 00000000 */  nop
