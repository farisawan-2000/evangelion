glabel func_8009ADC0
/* 59C0 8009ADC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 59C4 8009ADC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 59C8 8009ADC8 00008021 */  addu       $s0, $zero, $zero
/* 59CC 8009ADCC AFB10014 */  sw         $s1, 0x14($sp)
/* 59D0 8009ADD0 3C118015 */  lui        $s1, %hi(D_8014A140)
/* 59D4 8009ADD4 2631A140 */  addiu      $s1, $s1, %lo(D_8014A140)
/* 59D8 8009ADD8 AFBF0018 */  sw         $ra, 0x18($sp)
.L8009ADDC:
/* 59DC 8009ADDC 3C028015 */  lui        $v0, %hi(D_80149BB4)
/* 59E0 8009ADE0 90429BB4 */  lbu        $v0, %lo(D_80149BB4)($v0)
/* 59E4 8009ADE4 02021007 */  srav       $v0, $v0, $s0
/* 59E8 8009ADE8 30420001 */  andi       $v0, $v0, 0x1
/* 59EC 8009ADEC 50400009 */  beql       $v0, $zero, .L8009AE14
/* 59F0 8009ADF0 26100001 */   addiu     $s0, $s0, 0x1
/* 59F4 8009ADF4 0C02DF20 */  jal        func_800B7C80
/* 59F8 8009ADF8 02002021 */   addu      $a0, $s0, $zero
/* 59FC 8009ADFC 14400004 */  bnez       $v0, .L8009AE10
/* 5A00 8009AE00 AE220000 */   sw        $v0, 0x0($s1)
/* 5A04 8009AE04 02002021 */  addu       $a0, $s0, $zero
/* 5A08 8009AE08 0C02DF40 */  jal        func_800B7D00
/* 5A0C 8009AE0C 24050001 */   addiu     $a1, $zero, 0x1
.L8009AE10:
/* 5A10 8009AE10 26100001 */  addiu      $s0, $s0, 0x1
.L8009AE14:
/* 5A14 8009AE14 2A020004 */  slti       $v0, $s0, 0x4
/* 5A18 8009AE18 1440FFF0 */  bnez       $v0, .L8009ADDC
/* 5A1C 8009AE1C 26310004 */   addiu     $s1, $s1, 0x4
/* 5A20 8009AE20 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5A24 8009AE24 8FB10014 */  lw         $s1, 0x14($sp)
/* 5A28 8009AE28 8FB00010 */  lw         $s0, 0x10($sp)
/* 5A2C 8009AE2C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5A30 8009AE30 03E00008 */  jr         $ra
/* 5A34 8009AE34 00000000 */   nop
/* 5A38 8009AE38 00000000 */  nop
/* 5A3C 8009AE3C 00000000 */  nop
.size func_8009ADC0, . - func_8009ADC0
