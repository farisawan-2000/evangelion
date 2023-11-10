glabel func_800A9848
/* 14448 800A9848 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1444C 800A984C 24040074 */  addiu      $a0, $zero, 0x74
/* 14450 800A9850 24050001 */  addiu      $a1, $zero, 0x1
/* 14454 800A9854 AFBF0010 */  sw         $ra, 0x10($sp)
/* 14458 800A9858 0C028CB7 */  jal        func_800A32DC
/* 1445C 800A985C 00003021 */   addu      $a2, $zero, $zero
/* 14460 800A9860 00402021 */  addu       $a0, $v0, $zero
/* 14464 800A9864 240503D8 */  addiu      $a1, $zero, 0x3D8
/* 14468 800A9868 3C01800D */  lui        $at, %hi(D_800D4C4C)
/* 1446C 800A986C AC244C4C */  sw         $a0, %lo(D_800D4C4C)($at)
/* 14470 800A9870 0C028D89 */  jal        func_800A3624
/* 14474 800A9874 24060330 */   addiu     $a2, $zero, 0x330
/* 14478 800A9878 3C03800D */  lui        $v1, %hi(D_800D4C4C)
/* 1447C 800A987C 8C634C4C */  lw         $v1, %lo(D_800D4C4C)($v1)
/* 14480 800A9880 9462001E */  lhu        $v0, 0x1E($v1)
/* 14484 800A9884 34420200 */  ori        $v0, $v0, 0x200
/* 14488 800A9888 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1448C 800A988C A462001E */  sh         $v0, 0x1E($v1)
/* 14490 800A9890 03E00008 */  jr         $ra
/* 14494 800A9894 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800A9848, . - func_800A9848
