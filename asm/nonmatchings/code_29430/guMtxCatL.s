glabel guMtxCatL
/* 29430 800BE830 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* 29434 800BE834 00801021 */  addu       $v0, $a0, $zero
/* 29438 800BE838 AFB100D4 */  sw         $s1, 0xD4($sp)
/* 2943C 800BE83C 00A08821 */  addu       $s1, $a1, $zero
/* 29440 800BE840 AFB200D8 */  sw         $s2, 0xD8($sp)
/* 29444 800BE844 00C09021 */  addu       $s2, $a2, $zero
/* 29448 800BE848 27A40010 */  addiu      $a0, $sp, 0x10
/* 2944C 800BE84C 00402821 */  addu       $a1, $v0, $zero
/* 29450 800BE850 AFBF00DC */  sw         $ra, 0xDC($sp)
/* 29454 800BE854 0C02FA72 */  jal        guMtxL2F
/* 29458 800BE858 AFB000D0 */   sw        $s0, 0xD0($sp)
/* 2945C 800BE85C 27B00050 */  addiu      $s0, $sp, 0x50
/* 29460 800BE860 02002021 */  addu       $a0, $s0, $zero
/* 29464 800BE864 0C02FA72 */  jal        guMtxL2F
/* 29468 800BE868 02202821 */   addu      $a1, $s1, $zero
/* 2946C 800BE86C 27A40010 */  addiu      $a0, $sp, 0x10
/* 29470 800BE870 02002821 */  addu       $a1, $s0, $zero
/* 29474 800BE874 27B00090 */  addiu      $s0, $sp, 0x90
/* 29478 800BE878 0C02F9A8 */  jal        guMtxCatF
/* 2947C 800BE87C 02003021 */   addu      $a2, $s0, $zero
/* 29480 800BE880 02002021 */  addu       $a0, $s0, $zero
/* 29484 800BE884 0C02FA4C */  jal        guMtxF2L
/* 29488 800BE888 02402821 */   addu      $a1, $s2, $zero
/* 2948C 800BE88C 8FBF00DC */  lw         $ra, 0xDC($sp)
/* 29490 800BE890 8FB200D8 */  lw         $s2, 0xD8($sp)
/* 29494 800BE894 8FB100D4 */  lw         $s1, 0xD4($sp)
/* 29498 800BE898 8FB000D0 */  lw         $s0, 0xD0($sp)
/* 2949C 800BE89C 03E00008 */  jr         $ra
/* 294A0 800BE8A0 27BD00E0 */   addiu     $sp, $sp, 0xE0
.size guMtxCatL, . - guMtxCatL
