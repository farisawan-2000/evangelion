glabel func_800AADC8
/* 159C8 800AADC8 3C028015 */  lui        $v0, %hi(D_80149E2D)
/* 159CC 800AADCC 90429E2D */  lbu        $v0, %lo(D_80149E2D)($v0)
/* 159D0 800AADD0 3C038015 */  lui        $v1, %hi(D_80149E2E)
/* 159D4 800AADD4 90639E2E */  lbu        $v1, %lo(D_80149E2E)($v1)
/* 159D8 800AADD8 3C048015 */  lui        $a0, %hi(D_80149E2B)
/* 159DC 800AADDC 90849E2B */  lbu        $a0, %lo(D_80149E2B)($a0)
/* 159E0 800AADE0 3C058015 */  lui        $a1, %hi(D_80149E29)
/* 159E4 800AADE4 90A59E29 */  lbu        $a1, %lo(D_80149E29)($a1)
/* 159E8 800AADE8 3C068015 */  lui        $a2, %hi(D_80149E2A)
/* 159EC 800AADEC 90C69E2A */  lbu        $a2, %lo(D_80149E2A)($a2)
/* 159F0 800AADF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 159F4 800AADF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 159F8 800AADF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 159FC 800AADFC 3C018017 */  lui        $at, %hi(D_8016E590)
/* 15A00 800AAE00 AC22E590 */  sw         $v0, %lo(D_8016E590)($at)
/* 15A04 800AAE04 3C018015 */  lui        $at, %hi(D_80149BC0)
/* 15A08 800AAE08 AC239BC0 */  sw         $v1, %lo(D_80149BC0)($at)
/* 15A0C 800AAE0C 3C018015 */  lui        $at, %hi(D_8014A2D0)
/* 15A10 800AAE10 A424A2D0 */  sh         $a0, %lo(D_8014A2D0)($at)
/* 15A14 800AAE14 3C018015 */  lui        $at, %hi(D_80149F8C)
/* 15A18 800AAE18 A4259F8C */  sh         $a1, %lo(D_80149F8C)($at)
/* 15A1C 800AAE1C 3C018017 */  lui        $at, %hi(D_8016D0C0)
/* 15A20 800AAE20 A426D0C0 */  sh         $a2, %lo(D_8016D0C0)($at)
/* 15A24 800AAE24 0C02DFA6 */  jal        func_800B7E98
/* 15A28 800AAE28 00000000 */   nop
/* 15A2C 800AAE2C 00401821 */  addu       $v1, $v0, $zero
/* 15A30 800AAE30 1060000E */  beqz       $v1, .L800AAE6C
/* 15A34 800AAE34 00000000 */   nop
/* 15A38 800AAE38 1C600006 */  bgtz       $v1, .L800AAE54
/* 15A3C 800AAE3C 24020001 */   addiu     $v0, $zero, 0x1
/* 15A40 800AAE40 2402FFFF */  addiu      $v0, $zero, -0x1
/* 15A44 800AAE44 1062000D */  beq        $v1, $v0, .L800AAE7C
/* 15A48 800AAE48 00002021 */   addu      $a0, $zero, $zero
/* 15A4C 800AAE4C 0802ABA4 */  j          .L800AAE90
/* 15A50 800AAE50 00000000 */   nop
.L800AAE54:
/* 15A54 800AAE54 1462000E */  bne        $v1, $v0, .L800AAE90
/* 15A58 800AAE58 00002021 */   addu      $a0, $zero, $zero
/* 15A5C 800AAE5C 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15A60 800AAE60 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15A64 800AAE64 0802ABA1 */  j          .L800AAE84
/* 15A68 800AAE68 00000000 */   nop
.L800AAE6C:
/* 15A6C 800AAE6C 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15A70 800AAE70 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15A74 800AAE74 0802ABA1 */  j          .L800AAE84
/* 15A78 800AAE78 00000000 */   nop
.L800AAE7C:
/* 15A7C 800AAE7C 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15A80 800AAE80 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AAE84:
/* 15A84 800AAE84 0C02A793 */  jal        func_800A9E4C
/* 15A88 800AAE88 00000000 */   nop
/* 15A8C 800AAE8C 00002021 */  addu       $a0, $zero, $zero
.L800AAE90:
/* 15A90 800AAE90 3C058015 */  lui        $a1, %hi(D_80149E18)
/* 15A94 800AAE94 24A59E18 */  addiu      $a1, $a1, %lo(D_80149E18)
/* 15A98 800AAE98 0C02DF9B */  jal        func_800B7E6C
/* 15A9C 800AAE9C 24060038 */   addiu     $a2, $zero, 0x38
/* 15AA0 800AAEA0 00401821 */  addu       $v1, $v0, $zero
/* 15AA4 800AAEA4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 15AA8 800AAEA8 10620007 */  beq        $v1, $v0, .L800AAEC8
/* 15AAC 800AAEAC 24020008 */   addiu     $v0, $zero, 0x8
/* 15AB0 800AAEB0 14620009 */  bne        $v1, $v0, .L800AAED8
/* 15AB4 800AAEB4 00000000 */   nop
/* 15AB8 800AAEB8 3C048010 */  lui        $a0, %hi(D_800FB200)
/* 15ABC 800AAEBC 2484B200 */  addiu      $a0, $a0, %lo(D_800FB200)
/* 15AC0 800AAEC0 0802ABB4 */  j          .L800AAED0
/* 15AC4 800AAEC4 00000000 */   nop
.L800AAEC8:
/* 15AC8 800AAEC8 3C048010 */  lui        $a0, %hi(D_800FB224)
/* 15ACC 800AAECC 2484B224 */  addiu      $a0, $a0, %lo(D_800FB224)
.L800AAED0:
/* 15AD0 800AAED0 0C02A793 */  jal        func_800A9E4C
/* 15AD4 800AAED4 00000000 */   nop
.L800AAED8:
/* 15AD8 800AAED8 0C032663 */  jal        func_800C998C
/* 15ADC 800AAEDC 24040038 */   addiu     $a0, $zero, 0x38
/* 15AE0 800AAEE0 0C02DFA6 */  jal        func_800B7E98
/* 15AE4 800AAEE4 00408021 */   addu      $s0, $v0, $zero
/* 15AE8 800AAEE8 00401821 */  addu       $v1, $v0, $zero
/* 15AEC 800AAEEC 1060000E */  beqz       $v1, .L800AAF28
/* 15AF0 800AAEF0 00000000 */   nop
/* 15AF4 800AAEF4 1C600006 */  bgtz       $v1, .L800AAF10
/* 15AF8 800AAEF8 24020001 */   addiu     $v0, $zero, 0x1
/* 15AFC 800AAEFC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 15B00 800AAF00 1062000D */  beq        $v1, $v0, .L800AAF38
/* 15B04 800AAF04 00002021 */   addu      $a0, $zero, $zero
/* 15B08 800AAF08 0802ABD3 */  j          .L800AAF4C
/* 15B0C 800AAF0C 00000000 */   nop
.L800AAF10:
/* 15B10 800AAF10 1462000E */  bne        $v1, $v0, .L800AAF4C
/* 15B14 800AAF14 00002021 */   addu      $a0, $zero, $zero
/* 15B18 800AAF18 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15B1C 800AAF1C 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15B20 800AAF20 0802ABD0 */  j          .L800AAF40
/* 15B24 800AAF24 00000000 */   nop
.L800AAF28:
/* 15B28 800AAF28 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15B2C 800AAF2C 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15B30 800AAF30 0802ABD0 */  j          .L800AAF40
/* 15B34 800AAF34 00000000 */   nop
.L800AAF38:
/* 15B38 800AAF38 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15B3C 800AAF3C 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AAF40:
/* 15B40 800AAF40 0C02A793 */  jal        func_800A9E4C
/* 15B44 800AAF44 00000000 */   nop
/* 15B48 800AAF48 00002021 */  addu       $a0, $zero, $zero
.L800AAF4C:
/* 15B4C 800AAF4C 02002821 */  addu       $a1, $s0, $zero
/* 15B50 800AAF50 0C02DF90 */  jal        func_800B7E40
/* 15B54 800AAF54 24060038 */   addiu     $a2, $zero, 0x38
/* 15B58 800AAF58 00401821 */  addu       $v1, $v0, $zero
/* 15B5C 800AAF5C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 15B60 800AAF60 10620007 */  beq        $v1, $v0, .L800AAF80
/* 15B64 800AAF64 24020008 */   addiu     $v0, $zero, 0x8
/* 15B68 800AAF68 1462000A */  bne        $v1, $v0, .L800AAF94
/* 15B6C 800AAF6C 02002021 */   addu      $a0, $s0, $zero
/* 15B70 800AAF70 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 15B74 800AAF74 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 15B78 800AAF78 0802ABE2 */  j          .L800AAF88
/* 15B7C 800AAF7C 00000000 */   nop
.L800AAF80:
/* 15B80 800AAF80 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 15B84 800AAF84 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AAF88:
/* 15B88 800AAF88 0C02A793 */  jal        func_800A9E4C
/* 15B8C 800AAF8C 00000000 */   nop
/* 15B90 800AAF90 02002021 */  addu       $a0, $s0, $zero
.L800AAF94:
/* 15B94 800AAF94 3C058015 */  lui        $a1, %hi(D_80149E18)
/* 15B98 800AAF98 24A59E18 */  addiu      $a1, $a1, %lo(D_80149E18)
/* 15B9C 800AAF9C 0C0327A8 */  jal        func_800C9EA0
/* 15BA0 800AAFA0 24060038 */   addiu     $a2, $zero, 0x38
/* 15BA4 800AAFA4 10400005 */  beqz       $v0, .L800AAFBC
/* 15BA8 800AAFA8 00000000 */   nop
/* 15BAC 800AAFAC 3C048010 */  lui        $a0, %hi(D_800FB240)
/* 15BB0 800AAFB0 2484B240 */  addiu      $a0, $a0, %lo(D_800FB240)
/* 15BB4 800AAFB4 0C02A793 */  jal        func_800A9E4C
/* 15BB8 800AAFB8 00000000 */   nop
.L800AAFBC:
/* 15BBC 800AAFBC 0C0326A1 */  jal        func_800C9A84
/* 15BC0 800AAFC0 02002021 */   addu      $a0, $s0, $zero
/* 15BC4 800AAFC4 0C02AAA2 */  jal        func_800AAA88
/* 15BC8 800AAFC8 00002021 */   addu      $a0, $zero, $zero
/* 15BCC 800AAFCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15BD0 800AAFD0 8FB00010 */  lw         $s0, 0x10($sp)
/* 15BD4 800AAFD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15BD8 800AAFD8 03E00008 */  jr         $ra
/* 15BDC 800AAFDC 00000000 */   nop
.size func_800AADC8, . - func_800AADC8
