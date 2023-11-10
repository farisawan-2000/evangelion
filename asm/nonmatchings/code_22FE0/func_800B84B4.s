glabel func_800B84B4
/* 230B4 800B84B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 230B8 800B84B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 230BC 800B84BC 3C04800F */  lui        $a0, %hi(D_800F5E08)
/* 230C0 800B84C0 0C02E0D8 */  jal        func_800B8360
/* 230C4 800B84C4 24845E08 */   addiu     $a0, $a0, %lo(D_800F5E08)
/* 230C8 800B84C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 230CC 800B84CC 03E00008 */  jr         $ra
/* 230D0 800B84D0 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B84B4, . - func_800B84B4
