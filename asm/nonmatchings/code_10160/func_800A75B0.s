glabel func_800A75B0
/* 121B0 800A75B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 121B4 800A75B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 121B8 800A75B8 00808021 */  addu       $s0, $a0, $zero
/* 121BC 800A75BC 3C04001C */  lui        $a0, %hi(yay0_001BB280)
/* 121C0 800A75C0 2484B280 */  addiu      $a0, $a0, %lo(yay0_001BB280)
/* 121C4 800A75C4 00053400 */  sll        $a2, $a1, 16
/* 121C8 800A75C8 00063403 */  sra        $a2, $a2, 16
/* 121CC 800A75CC 3C05800D */  lui        $a1, %hi(D_800D5190)
/* 121D0 800A75D0 24A55190 */  addiu      $a1, $a1, %lo(D_800D5190)
/* 121D4 800A75D4 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 121D8 800A75D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 121DC 800A75DC 0C02648E */  jal        func_80099238
/* 121E0 800A75E0 00003821 */   addu      $a3, $zero, $zero
/* 121E4 800A75E4 00402021 */  addu       $a0, $v0, $zero
/* 121E8 800A75E8 00003021 */  addu       $a2, $zero, $zero
/* 121EC 800A75EC 00002821 */  addu       $a1, $zero, $zero
.L800A75F0:
/* 121F0 800A75F0 00001821 */  addu       $v1, $zero, $zero
.L800A75F4:
/* 121F4 800A75F4 00A31021 */  addu       $v0, $a1, $v1
/* 121F8 800A75F8 00821021 */  addu       $v0, $a0, $v0
/* 121FC 800A75FC 90420000 */  lbu        $v0, 0x0($v0)
/* 12200 800A7600 24630001 */  addiu      $v1, $v1, 0x1
/* 12204 800A7604 A2020000 */  sb         $v0, 0x0($s0)
/* 12208 800A7608 2862000C */  slti       $v0, $v1, 0xC
/* 1220C 800A760C 1440FFF9 */  bnez       $v0, .L800A75F4
/* 12210 800A7610 26100001 */   addiu     $s0, $s0, 0x1
/* 12214 800A7614 2C620010 */  sltiu      $v0, $v1, 0x10
/* 12218 800A7618 50400007 */  beql       $v0, $zero, .L800A7638
/* 1221C 800A761C 24C60001 */   addiu     $a2, $a2, 0x1
.L800A7620:
/* 12220 800A7620 A2000000 */  sb         $zero, 0x0($s0)
/* 12224 800A7624 24630001 */  addiu      $v1, $v1, 0x1
/* 12228 800A7628 2C620010 */  sltiu      $v0, $v1, 0x10
/* 1222C 800A762C 1440FFFC */  bnez       $v0, .L800A7620
/* 12230 800A7630 26100001 */   addiu     $s0, $s0, 0x1
/* 12234 800A7634 24C60001 */  addiu      $a2, $a2, 0x1
.L800A7638:
/* 12238 800A7638 28C20018 */  slti       $v0, $a2, 0x18
/* 1223C 800A763C 1440FFEC */  bnez       $v0, .L800A75F0
/* 12240 800A7640 24A5000C */   addiu     $a1, $a1, 0xC
/* 12244 800A7644 0C0326A1 */  jal        func_800C9A84
/* 12248 800A7648 00000000 */   nop
/* 1224C 800A764C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12250 800A7650 8FB00010 */  lw         $s0, 0x10($sp)
/* 12254 800A7654 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12258 800A7658 03E00008 */  jr         $ra
/* 1225C 800A765C 00000000 */   nop
.size func_800A75B0, . - func_800A75B0