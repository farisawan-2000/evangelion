.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9850
/* 24450 800B9850 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24454 800B9854 AFB00010 */  sw         $s0, 0x10($sp)
/* 24458 800B9858 00808021 */  addu       $s0, $a0, $zero
/* 2445C 800B985C AFB10014 */  sw         $s1, 0x14($sp)
/* 24460 800B9860 AFBF0018 */  sw         $ra, 0x18($sp)
/* 24464 800B9864 0C031B0C */  jal        func_800C6C30
/* 24468 800B9868 00A08821 */   addu      $s1, $a1, $zero
/* 2446C 800B986C 14400018 */  bnez       $v0, .L800B98D0
/* 24470 800B9870 2402FFFF */   addiu     $v0, $zero, -1
/* 24474 800B9874 3C02800F */  lui        $v0, %hi(D_800F5E70)
/* 24478 800B9878 90425E70 */  lbu        $v0, %lo(D_800F5E70)($v0)
/* 2447C 800B987C 10400002 */  beqz       $v0, .L800B9888
/* 24480 800B9880 02002021 */   addu      $a0, $s0, $zero
/* 24484 800B9884 2484E000 */  addiu      $a0, $a0, -0x2000
.L800B9888:
/* 24488 800B9888 02111021 */  addu       $v0, $s0, $s1
/* 2448C 800B988C 30421FFF */  andi       $v0, $v0, 0x1fff
/* 24490 800B9890 14400004 */  bnez       $v0, .L800B98A4
/* 24494 800B9894 24020001 */   addiu     $v0, $zero, 1
/* 24498 800B9898 3C01800F */  lui        $at, %hi(D_800F5E70)
/* 2449C 800B989C 0802E62B */  j          .L800B98AC
/* 244A0 800B98A0 A0225E70 */   sb        $v0, %lo(D_800F5E70)($at)
.L800B98A4:
/* 244A4 800B98A4 3C01800F */  lui        $at, %hi(D_800F5E70)
/* 244A8 800B98A8 A0205E70 */  sb         $zero, %lo(D_800F5E70)($at)
.L800B98AC:
/* 244AC 800B98AC 0C02F680 */  jal        func_800BDA00
/* 244B0 800B98B0 00000000 */   nop
/* 244B4 800B98B4 3C05A450 */  lui        $a1, 0xa450
/* 244B8 800B98B8 34A50004 */  ori        $a1, $a1, 4
/* 244BC 800B98BC 00402021 */  addu       $a0, $v0, $zero
/* 244C0 800B98C0 00001021 */  addu       $v0, $zero, $zero
/* 244C4 800B98C4 3C03A450 */  lui        $v1, 0xa450
/* 244C8 800B98C8 AC640000 */  sw         $a0, ($v1)
/* 244CC 800B98CC ACB10000 */  sw         $s1, ($a1)
.L800B98D0:
/* 244D0 800B98D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 244D4 800B98D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 244D8 800B98D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 244DC 800B98DC 03E00008 */  jr         $ra
/* 244E0 800B98E0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 244E4 800B98E4 00000000 */  nop
/* 244E8 800B98E8 00000000 */  nop
/* 244EC 800B98EC 00000000 */  nop
