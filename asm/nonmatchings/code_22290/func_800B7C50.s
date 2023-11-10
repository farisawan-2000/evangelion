glabel func_800B7C50
/* 22850 800B7C50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 22854 800B7C54 A3A40010 */  sb         $a0, 0x10($sp)
/* 22858 800B7C58 24040303 */  addiu      $a0, $zero, 0x303
/* 2285C 800B7C5C AFBF0020 */  sw         $ra, 0x20($sp)
/* 22860 800B7C60 0C02E01E */  jal        func_800B8078
/* 22864 800B7C64 27A50010 */   addiu     $a1, $sp, 0x10
/* 22868 800B7C68 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2286C 800B7C6C 03E00008 */  jr         $ra
/* 22870 800B7C70 27BD0028 */   addiu     $sp, $sp, 0x28
/* 22874 800B7C74 00000000 */  nop
/* 22878 800B7C78 00000000 */  nop
/* 2287C 800B7C7C 00000000 */  nop
.size func_800B7C50, . - func_800B7C50
