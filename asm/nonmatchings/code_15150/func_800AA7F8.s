.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AA7F8
/* 153F8 800AA7F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 153FC 800AA7FC AFB3001C */  sw         $s3, 0x1c($sp)
/* 15400 800AA800 00A09821 */  addu       $s3, $a1, $zero
/* 15404 800AA804 AFB20018 */  sw         $s2, 0x18($sp)
/* 15408 800AA808 00809021 */  addu       $s2, $a0, $zero
/* 1540C 800AA80C AFB00010 */  sw         $s0, 0x10($sp)
/* 15410 800AA810 00C08021 */  addu       $s0, $a2, $zero
/* 15414 800AA814 3204FFFF */  andi       $a0, $s0, 0xffff
/* 15418 800AA818 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1541C 800AA81C 0C032663 */  jal        func_800C998C
/* 15420 800AA820 AFB10014 */   sw        $s1, 0x14($sp)
/* 15424 800AA824 0C02DFA6 */  jal        func_800B7E98
/* 15428 800AA828 00408821 */   addu      $s1, $v0, $zero
/* 1542C 800AA82C 00401821 */  addu       $v1, $v0, $zero
/* 15430 800AA830 1060000E */  beqz       $v1, .L800AA86C
/* 15434 800AA834 00000000 */   nop
/* 15438 800AA838 1C600006 */  bgtz       $v1, .L800AA854
/* 1543C 800AA83C 24020001 */   addiu     $v0, $zero, 1
/* 15440 800AA840 2402FFFF */  addiu      $v0, $zero, -1
/* 15444 800AA844 1062000D */  beq        $v1, $v0, .L800AA87C
/* 15448 800AA848 324400FF */   andi      $a0, $s2, 0xff
/* 1544C 800AA84C 0802AA24 */  j          .L800AA890
/* 15450 800AA850 00000000 */   nop
.L800AA854:
/* 15454 800AA854 1462000E */  bne        $v1, $v0, .L800AA890
/* 15458 800AA858 324400FF */   andi      $a0, $s2, 0xff
/* 1545C 800AA85C 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15460 800AA860 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15464 800AA864 0802AA21 */  j          .L800AA884
/* 15468 800AA868 00000000 */   nop
.L800AA86C:
/* 1546C 800AA86C 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15470 800AA870 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15474 800AA874 0802AA21 */  j          .L800AA884
/* 15478 800AA878 00000000 */   nop
.L800AA87C:
/* 1547C 800AA87C 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15480 800AA880 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AA884:
/* 15484 800AA884 0C02A793 */  jal        func_800A9E4C
/* 15488 800AA888 00000000 */   nop
/* 1548C 800AA88C 324400FF */  andi       $a0, $s2, 0xff
.L800AA890:
/* 15490 800AA890 02202821 */  addu       $a1, $s1, $zero
/* 15494 800AA894 0C02DF90 */  jal        func_800B7E40
/* 15498 800AA898 3206FFFF */   andi      $a2, $s0, 0xffff
/* 1549C 800AA89C 00401821 */  addu       $v1, $v0, $zero
/* 154A0 800AA8A0 2402FFFF */  addiu      $v0, $zero, -1
/* 154A4 800AA8A4 10620007 */  beq        $v1, $v0, .L800AA8C4
/* 154A8 800AA8A8 24020008 */   addiu     $v0, $zero, 8
/* 154AC 800AA8AC 1462000A */  bne        $v1, $v0, .L800AA8D8
/* 154B0 800AA8B0 02202021 */   addu      $a0, $s1, $zero
/* 154B4 800AA8B4 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 154B8 800AA8B8 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 154BC 800AA8BC 0802AA33 */  j          .L800AA8CC
/* 154C0 800AA8C0 00000000 */   nop
.L800AA8C4:
/* 154C4 800AA8C4 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 154C8 800AA8C8 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AA8CC:
/* 154CC 800AA8CC 0C02A793 */  jal        func_800A9E4C
/* 154D0 800AA8D0 00000000 */   nop
/* 154D4 800AA8D4 02202021 */  addu       $a0, $s1, $zero
.L800AA8D8:
/* 154D8 800AA8D8 02602821 */  addu       $a1, $s3, $zero
/* 154DC 800AA8DC 0C0327A8 */  jal        func_800C9EA0
/* 154E0 800AA8E0 3206FFFF */   andi      $a2, $s0, 0xffff
/* 154E4 800AA8E4 10400005 */  beqz       $v0, .L800AA8FC
/* 154E8 800AA8E8 00000000 */   nop
/* 154EC 800AA8EC 3C048010 */  lui        $a0, %hi(D_800FB240)
/* 154F0 800AA8F0 2484B240 */  addiu      $a0, $a0, %lo(D_800FB240)
/* 154F4 800AA8F4 0C02A793 */  jal        func_800A9E4C
/* 154F8 800AA8F8 00000000 */   nop
.L800AA8FC:
/* 154FC 800AA8FC 0C0326A1 */  jal        func_800C9A84
/* 15500 800AA900 02202021 */   addu      $a0, $s1, $zero
/* 15504 800AA904 8FBF0020 */  lw         $ra, 0x20($sp)
/* 15508 800AA908 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1550C 800AA90C 8FB20018 */  lw         $s2, 0x18($sp)
/* 15510 800AA910 8FB10014 */  lw         $s1, 0x14($sp)
/* 15514 800AA914 8FB00010 */  lw         $s0, 0x10($sp)
/* 15518 800AA918 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1551C 800AA91C 03E00008 */  jr         $ra
/* 15520 800AA920 00000000 */   nop
