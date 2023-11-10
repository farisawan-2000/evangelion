glabel func_800B7440
/* 22040 800B7440 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22044 800B7444 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22048 800B7448 3C04800F */  lui        $a0, %hi(D_800F5D80)
/* 2204C 800B744C 0C02E0D8 */  jal        func_800B8360
/* 22050 800B7450 24845D80 */   addiu     $a0, $a0, %lo(D_800F5D80)
/* 22054 800B7454 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22058 800B7458 03E00008 */  jr         $ra
/* 2205C 800B745C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B7440, . - func_800B7440
