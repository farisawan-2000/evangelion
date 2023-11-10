glabel func_800B7E98
/* 22A98 800B7E98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22A9C 800B7E9C AFBF0010 */  sw         $ra, 0x10($sp)
/* 22AA0 800B7EA0 24040401 */  addiu      $a0, $zero, 0x401
/* 22AA4 800B7EA4 0C02E01E */  jal        func_800B8078
/* 22AA8 800B7EA8 00002821 */   addu      $a1, $zero, $zero
/* 22AAC 800B7EAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22AB0 800B7EB0 03E00008 */  jr         $ra
/* 22AB4 800B7EB4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B7E98, . - func_800B7E98
