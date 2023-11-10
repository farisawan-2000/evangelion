glabel func_800C06C0
/* 2B2C0 800C06C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2B2C4 800C06C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B2C8 800C06C8 00808021 */  addu       $s0, $a0, $zero
/* 2B2CC 800C06CC AFB50024 */  sw         $s5, 0x24($sp)
/* 2B2D0 800C06D0 00A0A821 */  addu       $s5, $a1, $zero
/* 2B2D4 800C06D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 2B2D8 800C06D8 00C09021 */  addu       $s2, $a2, $zero
/* 2B2DC 800C06DC AFBF0028 */  sw         $ra, 0x28($sp)
/* 2B2E0 800C06E0 AFB40020 */  sw         $s4, 0x20($sp)
/* 2B2E4 800C06E4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2B2E8 800C06E8 0C0319D0 */  jal        __osDisableInt
/* 2B2EC 800C06EC AFB10014 */   sw        $s1, 0x14($sp)
/* 2B2F0 800C06F0 8E030008 */  lw         $v1, 0x8($s0)
/* 2B2F4 800C06F4 8E040010 */  lw         $a0, 0x10($s0)
/* 2B2F8 800C06F8 0064182A */  slt        $v1, $v1, $a0
/* 2B2FC 800C06FC 14600012 */  bnez       $v1, .L800C0748
/* 2B300 800C0700 00408821 */   addu      $s1, $v0, $zero
/* 2B304 800C0704 24140001 */  addiu      $s4, $zero, 0x1
/* 2B308 800C0708 24130008 */  addiu      $s3, $zero, 0x8
.L800C070C:
/* 2B30C 800C070C 12540005 */  beq        $s2, $s4, .L800C0724
/* 2B310 800C0710 26040004 */   addiu     $a0, $s0, 0x4
/* 2B314 800C0714 0C0319EC */  jal        __osRestoreInt
/* 2B318 800C0718 02202021 */   addu      $a0, $s1, $zero
/* 2B31C 800C071C 080301F4 */  j          .L800C07D0
/* 2B320 800C0720 2402FFFF */   addiu     $v0, $zero, -0x1
.L800C0724:
/* 2B324 800C0724 3C02800F */  lui        $v0, %hi(__osRunningThread)
/* 2B328 800C0728 8C4269C0 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 2B32C 800C072C 0C031913 */  jal        __osEnqueueAndYield
/* 2B330 800C0730 A4530010 */   sh        $s3, 0x10($v0)
/* 2B334 800C0734 8E020008 */  lw         $v0, 0x8($s0)
/* 2B338 800C0738 8E030010 */  lw         $v1, 0x10($s0)
/* 2B33C 800C073C 0043102A */  slt        $v0, $v0, $v1
/* 2B340 800C0740 1040FFF2 */  beqz       $v0, .L800C070C
/* 2B344 800C0744 00000000 */   nop
.L800C0748:
/* 2B348 800C0748 8E02000C */  lw         $v0, 0xC($s0)
/* 2B34C 800C074C 8E030010 */  lw         $v1, 0x10($s0)
/* 2B350 800C0750 00431021 */  addu       $v0, $v0, $v1
/* 2B354 800C0754 2442FFFF */  addiu      $v0, $v0, -0x1
/* 2B358 800C0758 0043001A */  div        $zero, $v0, $v1
/* 2B35C 800C075C 14600002 */  bnez       $v1, .L800C0768
/* 2B360 800C0760 00000000 */   nop
/* 2B364 800C0764 0007000D */  break      7
.L800C0768:
/* 2B368 800C0768 2401FFFF */  addiu      $at, $zero, -0x1
/* 2B36C 800C076C 14610004 */  bne        $v1, $at, .L800C0780
/* 2B370 800C0770 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2B374 800C0774 14410002 */  bne        $v0, $at, .L800C0780
/* 2B378 800C0778 00000000 */   nop
/* 2B37C 800C077C 0006000D */  break      6
.L800C0780:
/* 2B380 800C0780 00001810 */  mfhi       $v1
/* 2B384 800C0784 8E020014 */  lw         $v0, 0x14($s0)
/* 2B388 800C0788 AE03000C */  sw         $v1, 0xC($s0)
/* 2B38C 800C078C 00031880 */  sll        $v1, $v1, 2
/* 2B390 800C0790 00621821 */  addu       $v1, $v1, $v0
/* 2B394 800C0794 AC750000 */  sw         $s5, 0x0($v1)
/* 2B398 800C0798 8E020008 */  lw         $v0, 0x8($s0)
/* 2B39C 800C079C 8E030000 */  lw         $v1, 0x0($s0)
/* 2B3A0 800C07A0 24420001 */  addiu      $v0, $v0, 0x1
/* 2B3A4 800C07A4 AE020008 */  sw         $v0, 0x8($s0)
/* 2B3A8 800C07A8 8C620000 */  lw         $v0, 0x0($v1)
/* 2B3AC 800C07AC 10400005 */  beqz       $v0, .L800C07C4
/* 2B3B0 800C07B0 00000000 */   nop
/* 2B3B4 800C07B4 0C031967 */  jal        __osPopThread
/* 2B3B8 800C07B8 02002021 */   addu      $a0, $s0, $zero
/* 2B3BC 800C07BC 0C0306CC */  jal        osStartThread
/* 2B3C0 800C07C0 00402021 */   addu      $a0, $v0, $zero
.L800C07C4:
/* 2B3C4 800C07C4 0C0319EC */  jal        __osRestoreInt
/* 2B3C8 800C07C8 02202021 */   addu      $a0, $s1, $zero
/* 2B3CC 800C07CC 00001021 */  addu       $v0, $zero, $zero
.L800C07D0:
/* 2B3D0 800C07D0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 2B3D4 800C07D4 8FB50024 */  lw         $s5, 0x24($sp)
/* 2B3D8 800C07D8 8FB40020 */  lw         $s4, 0x20($sp)
/* 2B3DC 800C07DC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2B3E0 800C07E0 8FB20018 */  lw         $s2, 0x18($sp)
/* 2B3E4 800C07E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B3E8 800C07E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B3EC 800C07EC 03E00008 */  jr         $ra
/* 2B3F0 800C07F0 27BD0030 */   addiu     $sp, $sp, 0x30
/* 2B3F4 800C07F4 00000000 */  nop
/* 2B3F8 800C07F8 00000000 */  nop
/* 2B3FC 800C07FC 00000000 */  nop
.size func_800C06C0, . - func_800C06C0
