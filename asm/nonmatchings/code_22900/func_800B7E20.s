glabel func_800B7E20
/* 22A20 800B7E20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22A24 800B7E24 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22A28 800B7E28 3C04800F */  lui        $a0, %hi(D_800F5DD4)
/* 22A2C 800B7E2C 0C02E0D8 */  jal        func_800B8360
/* 22A30 800B7E30 24845DD4 */   addiu     $a0, $a0, %lo(D_800F5DD4)
/* 22A34 800B7E34 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22A38 800B7E38 03E00008 */  jr         $ra
/* 22A3C 800B7E3C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B7E20, . - func_800B7E20
