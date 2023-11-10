glabel func_800B84FC
/* 230FC 800B84FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23100 800B8500 AFBF0010 */  sw         $ra, 0x10($sp)
/* 23104 800B8504 3C048017 */  lui        $a0, %hi(D_801765C0)
/* 23108 800B8508 248465C0 */  addiu      $a0, $a0, %lo(D_801765C0)
/* 2310C 800B850C 00002821 */  addu       $a1, $zero, $zero
/* 23110 800B8510 0C030200 */  jal        func_800C0800
/* 23114 800B8514 24060001 */   addiu     $a2, $zero, 0x1
/* 23118 800B8518 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2311C 800B851C 03E00008 */  jr         $ra
/* 23120 800B8520 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B84FC, . - func_800B84FC
