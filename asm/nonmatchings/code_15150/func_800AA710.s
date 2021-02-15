.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AA710
/* 15310 800AA710 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15314 800AA714 AFB10014 */  sw         $s1, 0x14($sp)
/* 15318 800AA718 00A08821 */  addu       $s1, $a1, $zero
/* 1531C 800AA71C AFB00010 */  sw         $s0, 0x10($sp)
/* 15320 800AA720 00808021 */  addu       $s0, $a0, $zero
/* 15324 800AA724 AFB20018 */  sw         $s2, 0x18($sp)
/* 15328 800AA728 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1532C 800AA72C 0C02DFA6 */  jal        func_800B7E98
/* 15330 800AA730 00C09021 */   addu      $s2, $a2, $zero
/* 15334 800AA734 00401821 */  addu       $v1, $v0, $zero
/* 15338 800AA738 1060000E */  beqz       $v1, .L800AA774
/* 1533C 800AA73C 00000000 */   nop
/* 15340 800AA740 1C600006 */  bgtz       $v1, .L800AA75C
/* 15344 800AA744 24020001 */   addiu     $v0, $zero, 1
/* 15348 800AA748 2402FFFF */  addiu      $v0, $zero, -1
/* 1534C 800AA74C 1062000D */  beq        $v1, $v0, .L800AA784
/* 15350 800AA750 320400FF */   andi      $a0, $s0, 0xff
/* 15354 800AA754 0802A9E6 */  j          .L800AA798
/* 15358 800AA758 00000000 */   nop
.L800AA75C:
/* 1535C 800AA75C 1462000E */  bne        $v1, $v0, .L800AA798
/* 15360 800AA760 320400FF */   andi      $a0, $s0, 0xff
/* 15364 800AA764 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15368 800AA768 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 1536C 800AA76C 0802A9E3 */  j          .L800AA78C
/* 15370 800AA770 00000000 */   nop
.L800AA774:
/* 15374 800AA774 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15378 800AA778 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 1537C 800AA77C 0802A9E3 */  j          .L800AA78C
/* 15380 800AA780 00000000 */   nop
.L800AA784:
/* 15384 800AA784 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15388 800AA788 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AA78C:
/* 1538C 800AA78C 0C02A793 */  jal        func_800A9E4C
/* 15390 800AA790 00000000 */   nop
/* 15394 800AA794 320400FF */  andi       $a0, $s0, 0xff
.L800AA798:
/* 15398 800AA798 02202821 */  addu       $a1, $s1, $zero
/* 1539C 800AA79C 0C02DF9B */  jal        func_800B7E6C
/* 153A0 800AA7A0 3246FFFF */   andi      $a2, $s2, 0xffff
/* 153A4 800AA7A4 00401821 */  addu       $v1, $v0, $zero
/* 153A8 800AA7A8 2402FFFF */  addiu      $v0, $zero, -1
/* 153AC 800AA7AC 10620007 */  beq        $v1, $v0, .L800AA7CC
/* 153B0 800AA7B0 24020008 */   addiu     $v0, $zero, 8
/* 153B4 800AA7B4 14620009 */  bne        $v1, $v0, .L800AA7DC
/* 153B8 800AA7B8 00000000 */   nop
/* 153BC 800AA7BC 3C048010 */  lui        $a0, %hi(D_800FB200)
/* 153C0 800AA7C0 2484B200 */  addiu      $a0, $a0, %lo(D_800FB200)
/* 153C4 800AA7C4 0802A9F5 */  j          .L800AA7D4
/* 153C8 800AA7C8 00000000 */   nop
.L800AA7CC:
/* 153CC 800AA7CC 3C048010 */  lui        $a0, %hi(D_800FB224)
/* 153D0 800AA7D0 2484B224 */  addiu      $a0, $a0, %lo(D_800FB224)
.L800AA7D4:
/* 153D4 800AA7D4 0C02A793 */  jal        func_800A9E4C
/* 153D8 800AA7D8 00000000 */   nop
.L800AA7DC:
/* 153DC 800AA7DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 153E0 800AA7E0 8FB20018 */  lw         $s2, 0x18($sp)
/* 153E4 800AA7E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 153E8 800AA7E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 153EC 800AA7EC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 153F0 800AA7F0 03E00008 */  jr         $ra
/* 153F4 800AA7F4 00000000 */   nop
