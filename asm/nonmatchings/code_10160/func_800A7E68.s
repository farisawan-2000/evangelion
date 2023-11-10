glabel func_800A7E68
/* 12A68 800A7E68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A6C 800A7E6C 24040388 */  addiu      $a0, $zero, 0x388
/* 12A70 800A7E70 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12A74 800A7E74 0C0298D4 */  jal        func_800A6350
/* 12A78 800A7E78 00002821 */   addu      $a1, $zero, $zero
/* 12A7C 800A7E7C A4400000 */  sh         $zero, 0x0($v0)
/* 12A80 800A7E80 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12A84 800A7E84 A4400002 */  sh         $zero, 0x2($v0)
/* 12A88 800A7E88 03E00008 */  jr         $ra
/* 12A8C 800A7E8C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800A7E68, . - func_800A7E68
