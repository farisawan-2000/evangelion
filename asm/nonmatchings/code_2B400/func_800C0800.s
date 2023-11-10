glabel func_800C0800
/* 2B400 800C0800 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2B404 800C0804 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B408 800C0808 00808021 */  addu       $s0, $a0, $zero
/* 2B40C 800C080C AFB40020 */  sw         $s4, 0x20($sp)
/* 2B410 800C0810 00A0A021 */  addu       $s4, $a1, $zero
/* 2B414 800C0814 AFB10014 */  sw         $s1, 0x14($sp)
/* 2B418 800C0818 00C08821 */  addu       $s1, $a2, $zero
/* 2B41C 800C081C AFBF0024 */  sw         $ra, 0x24($sp)
/* 2B420 800C0820 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2B424 800C0824 0C0319D0 */  jal        __osDisableInt
/* 2B428 800C0828 AFB20018 */   sw        $s2, 0x18($sp)
/* 2B42C 800C082C 8E030008 */  lw         $v1, 0x8($s0)
/* 2B430 800C0830 1460000F */  bnez       $v1, .L800C0870
/* 2B434 800C0834 00409021 */   addu      $s2, $v0, $zero
/* 2B438 800C0838 24130008 */  addiu      $s3, $zero, 0x8
.L800C083C:
/* 2B43C 800C083C 16200005 */  bnez       $s1, .L800C0854
/* 2B440 800C0840 02002021 */   addu      $a0, $s0, $zero
/* 2B444 800C0844 0C0319EC */  jal        __osRestoreInt
/* 2B448 800C0848 02402021 */   addu      $a0, $s2, $zero
/* 2B44C 800C084C 08030241 */  j          .L800C0904
/* 2B450 800C0850 2402FFFF */   addiu     $v0, $zero, -0x1
.L800C0854:
/* 2B454 800C0854 3C02800F */  lui        $v0, %hi(__osRunningThread)
/* 2B458 800C0858 8C4269C0 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 2B45C 800C085C 0C031913 */  jal        __osEnqueueAndYield
/* 2B460 800C0860 A4530010 */   sh        $s3, 0x10($v0)
/* 2B464 800C0864 8E020008 */  lw         $v0, 0x8($s0)
/* 2B468 800C0868 1040FFF4 */  beqz       $v0, .L800C083C
/* 2B46C 800C086C 00000000 */   nop
.L800C0870:
/* 2B470 800C0870 12800007 */  beqz       $s4, .L800C0890
/* 2B474 800C0874 00000000 */   nop
/* 2B478 800C0878 8E02000C */  lw         $v0, 0xC($s0)
/* 2B47C 800C087C 8E030014 */  lw         $v1, 0x14($s0)
/* 2B480 800C0880 00021080 */  sll        $v0, $v0, 2
/* 2B484 800C0884 00431021 */  addu       $v0, $v0, $v1
/* 2B488 800C0888 8C420000 */  lw         $v0, 0x0($v0)
/* 2B48C 800C088C AE820000 */  sw         $v0, 0x0($s4)
.L800C0890:
/* 2B490 800C0890 8E02000C */  lw         $v0, 0xC($s0)
/* 2B494 800C0894 8E030010 */  lw         $v1, 0x10($s0)
/* 2B498 800C0898 24420001 */  addiu      $v0, $v0, 0x1
/* 2B49C 800C089C 0043001A */  div        $zero, $v0, $v1
/* 2B4A0 800C08A0 14600002 */  bnez       $v1, .L800C08AC
/* 2B4A4 800C08A4 00000000 */   nop
/* 2B4A8 800C08A8 0007000D */  break      7
.L800C08AC:
/* 2B4AC 800C08AC 2401FFFF */  addiu      $at, $zero, -0x1
/* 2B4B0 800C08B0 14610004 */  bne        $v1, $at, .L800C08C4
/* 2B4B4 800C08B4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2B4B8 800C08B8 14410002 */  bne        $v0, $at, .L800C08C4
/* 2B4BC 800C08BC 00000000 */   nop
/* 2B4C0 800C08C0 0006000D */  break      6
.L800C08C4:
/* 2B4C4 800C08C4 00002010 */  mfhi       $a0
/* 2B4C8 800C08C8 8E020008 */  lw         $v0, 0x8($s0)
/* 2B4CC 800C08CC 8E030004 */  lw         $v1, 0x4($s0)
/* 2B4D0 800C08D0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 2B4D4 800C08D4 AE020008 */  sw         $v0, 0x8($s0)
/* 2B4D8 800C08D8 AE04000C */  sw         $a0, 0xC($s0)
/* 2B4DC 800C08DC 8C620000 */  lw         $v0, 0x0($v1)
/* 2B4E0 800C08E0 10400005 */  beqz       $v0, .L800C08F8
/* 2B4E4 800C08E4 00000000 */   nop
/* 2B4E8 800C08E8 0C031967 */  jal        __osPopThread
/* 2B4EC 800C08EC 26040004 */   addiu     $a0, $s0, 0x4
/* 2B4F0 800C08F0 0C0306CC */  jal        osStartThread
/* 2B4F4 800C08F4 00402021 */   addu      $a0, $v0, $zero
.L800C08F8:
/* 2B4F8 800C08F8 0C0319EC */  jal        __osRestoreInt
/* 2B4FC 800C08FC 02402021 */   addu      $a0, $s2, $zero
/* 2B500 800C0900 00001021 */  addu       $v0, $zero, $zero
.L800C0904:
/* 2B504 800C0904 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2B508 800C0908 8FB40020 */  lw         $s4, 0x20($sp)
/* 2B50C 800C090C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2B510 800C0910 8FB20018 */  lw         $s2, 0x18($sp)
/* 2B514 800C0914 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B518 800C0918 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B51C 800C091C 03E00008 */  jr         $ra
/* 2B520 800C0920 27BD0028 */   addiu     $sp, $sp, 0x28
/* 2B524 800C0924 00000000 */  nop
/* 2B528 800C0928 00000000 */  nop
/* 2B52C 800C092C 00000000 */  nop
.size func_800C0800, . - func_800C0800
