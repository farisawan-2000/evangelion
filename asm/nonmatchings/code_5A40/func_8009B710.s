.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B710
/* 6310 8009B710 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6314 8009B714 28A20100 */  slti       $v0, $a1, 0x100
/* 6318 8009B718 14400003 */  bnez       $v0, .L8009B728
/* 631C 8009B71C AFBF0010 */   sw        $ra, 0x10($sp)
/* 6320 8009B720 08026DCD */  j          .L8009B734
/* 6324 8009B724 240500FF */   addiu     $a1, $zero, 0xff
.L8009B728:
/* 6328 8009B728 00051027 */  nor        $v0, $zero, $a1
/* 632C 8009B72C 000217C3 */  sra        $v0, $v0, 0x1f
/* 6330 8009B730 00A22824 */  and        $a1, $a1, $v0
.L8009B734:
/* 6334 8009B734 3C048015 */  lui        $a0, %hi(D_80149FF0)
/* 6338 8009B738 8C849FF0 */  lw         $a0, %lo(D_80149FF0)($a0)
/* 633C 8009B73C 0C02BA2C */  jal        func_800AE8B0
/* 6340 8009B740 00000000 */   nop
/* 6344 8009B744 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6348 8009B748 27BD0018 */  addiu      $sp, $sp, 0x18
/* 634C 8009B74C 03E00008 */  jr         $ra
/* 6350 8009B750 00000000 */   nop
