.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009AD18
/* 5918 8009AD18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 591C 8009AD1C AFB10014 */  sw         $s1, 0x14($sp)
/* 5920 8009AD20 00008821 */  addu       $s1, $zero, $zero
/* 5924 8009AD24 AFB00010 */  sw         $s0, 0x10($sp)
/* 5928 8009AD28 3C108015 */  lui        $s0, %hi(D_8014A140)
/* 592C 8009AD2C 2610A140 */  addiu      $s0, $s0, %lo(D_8014A140)
/* 5930 8009AD30 AFBF0018 */  sw         $ra, 0x18($sp)
.L8009AD34:
/* 5934 8009AD34 8E020000 */  lw         $v0, ($s0)
/* 5938 8009AD38 14400003 */  bnez       $v0, .L8009AD48
/* 593C 8009AD3C 26310001 */   addiu     $s1, $s1, 1
/* 5940 8009AD40 0C02DF70 */  jal        func_800B7DC0
/* 5944 8009AD44 00000000 */   nop
.L8009AD48:
/* 5948 8009AD48 2A220004 */  slti       $v0, $s1, 4
/* 594C 8009AD4C 1440FFF9 */  bnez       $v0, .L8009AD34
/* 5950 8009AD50 26100004 */   addiu     $s0, $s0, 4
/* 5954 8009AD54 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5958 8009AD58 8FB10014 */  lw         $s1, 0x14($sp)
/* 595C 8009AD5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5960 8009AD60 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5964 8009AD64 03E00008 */  jr         $ra
/* 5968 8009AD68 00000000 */   nop
