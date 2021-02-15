.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AA628
/* 15228 800AA628 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1522C 800AA62C AFB10014 */  sw         $s1, 0x14($sp)
/* 15230 800AA630 00A08821 */  addu       $s1, $a1, $zero
/* 15234 800AA634 AFB00010 */  sw         $s0, 0x10($sp)
/* 15238 800AA638 00808021 */  addu       $s0, $a0, $zero
/* 1523C 800AA63C AFB20018 */  sw         $s2, 0x18($sp)
/* 15240 800AA640 AFBF001C */  sw         $ra, 0x1c($sp)
/* 15244 800AA644 0C02DFA6 */  jal        func_800B7E98
/* 15248 800AA648 00C09021 */   addu      $s2, $a2, $zero
/* 1524C 800AA64C 00401821 */  addu       $v1, $v0, $zero
/* 15250 800AA650 1060000E */  beqz       $v1, .L800AA68C
/* 15254 800AA654 00000000 */   nop
/* 15258 800AA658 1C600006 */  bgtz       $v1, .L800AA674
/* 1525C 800AA65C 24020001 */   addiu     $v0, $zero, 1
/* 15260 800AA660 2402FFFF */  addiu      $v0, $zero, -1
/* 15264 800AA664 1062000D */  beq        $v1, $v0, .L800AA69C
/* 15268 800AA668 320400FF */   andi      $a0, $s0, 0xff
/* 1526C 800AA66C 0802A9AC */  j          .L800AA6B0
/* 15270 800AA670 00000000 */   nop
.L800AA674:
/* 15274 800AA674 1462000E */  bne        $v1, $v0, .L800AA6B0
/* 15278 800AA678 320400FF */   andi      $a0, $s0, 0xff
/* 1527C 800AA67C 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15280 800AA680 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15284 800AA684 0802A9A9 */  j          .L800AA6A4
/* 15288 800AA688 00000000 */   nop
.L800AA68C:
/* 1528C 800AA68C 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15290 800AA690 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15294 800AA694 0802A9A9 */  j          .L800AA6A4
/* 15298 800AA698 00000000 */   nop
.L800AA69C:
/* 1529C 800AA69C 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 152A0 800AA6A0 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AA6A4:
/* 152A4 800AA6A4 0C02A793 */  jal        func_800A9E4C
/* 152A8 800AA6A8 00000000 */   nop
/* 152AC 800AA6AC 320400FF */  andi       $a0, $s0, 0xff
.L800AA6B0:
/* 152B0 800AA6B0 02202821 */  addu       $a1, $s1, $zero
/* 152B4 800AA6B4 0C02DF90 */  jal        func_800B7E40
/* 152B8 800AA6B8 3246FFFF */   andi      $a2, $s2, 0xffff
/* 152BC 800AA6BC 00401821 */  addu       $v1, $v0, $zero
/* 152C0 800AA6C0 2402FFFF */  addiu      $v0, $zero, -1
/* 152C4 800AA6C4 10620007 */  beq        $v1, $v0, .L800AA6E4
/* 152C8 800AA6C8 24020008 */   addiu     $v0, $zero, 8
/* 152CC 800AA6CC 14620009 */  bne        $v1, $v0, .L800AA6F4
/* 152D0 800AA6D0 00000000 */   nop
/* 152D4 800AA6D4 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 152D8 800AA6D8 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 152DC 800AA6DC 0802A9BB */  j          .L800AA6EC
/* 152E0 800AA6E0 00000000 */   nop
.L800AA6E4:
/* 152E4 800AA6E4 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 152E8 800AA6E8 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AA6EC:
/* 152EC 800AA6EC 0C02A793 */  jal        func_800A9E4C
/* 152F0 800AA6F0 00000000 */   nop
.L800AA6F4:
/* 152F4 800AA6F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 152F8 800AA6F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 152FC 800AA6FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 15300 800AA700 8FB00010 */  lw         $s0, 0x10($sp)
/* 15304 800AA704 27BD0020 */  addiu      $sp, $sp, 0x20
/* 15308 800AA708 03E00008 */  jr         $ra
/* 1530C 800AA70C 00000000 */   nop
