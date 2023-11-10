glabel func_800AE858
/* 19458 800AE858 14800003 */  bnez       $a0, .L800AE868
/* 1945C 800AE85C 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 19460 800AE860 0802BA2A */  j          .L800AE8A8
/* 19464 800AE864 00001021 */   addu      $v0, $zero, $zero
.L800AE868:
/* 19468 800AE868 00003021 */  addu       $a2, $zero, $zero
/* 1946C 800AE86C 3C078010 */  lui        $a3, %hi(D_80102944)
/* 19470 800AE870 8CE72944 */  lw         $a3, %lo(D_80102944)($a3)
/* 19474 800AE874 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 19478 800AE878 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 1947C 800AE87C 18E00009 */  blez       $a3, .L800AE8A4
/* 19480 800AE880 00002821 */   addu      $a1, $zero, $zero
.L800AE884:
/* 19484 800AE884 8C620044 */  lw         $v0, 0x44($v1)
/* 19488 800AE888 24C60001 */  addiu      $a2, $a2, 0x1
/* 1948C 800AE88C 00441026 */  xor        $v0, $v0, $a0
/* 19490 800AE890 2C420001 */  sltiu      $v0, $v0, 0x1
/* 19494 800AE894 00A22821 */  addu       $a1, $a1, $v0
/* 19498 800AE898 00C7102A */  slt        $v0, $a2, $a3
/* 1949C 800AE89C 1440FFF9 */  bnez       $v0, .L800AE884
/* 194A0 800AE8A0 2463013C */   addiu     $v1, $v1, 0x13C
.L800AE8A4:
/* 194A4 800AE8A4 00A01021 */  addu       $v0, $a1, $zero
.L800AE8A8:
/* 194A8 800AE8A8 03E00008 */  jr         $ra
/* 194AC 800AE8AC 27BD0008 */   addiu     $sp, $sp, 0x8
.size func_800AE858, . - func_800AE858
