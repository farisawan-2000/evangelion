glabel func_800B7DE0
/* 229E0 800B7DE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 229E4 800B7DE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 229E8 800B7DE8 24040305 */  addiu      $a0, $zero, 0x305
/* 229EC 800B7DEC 0C02E01E */  jal        func_800B8078
/* 229F0 800B7DF0 00002821 */   addu      $a1, $zero, $zero
/* 229F4 800B7DF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 229F8 800B7DF8 03E00008 */  jr         $ra
/* 229FC 800B7DFC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B7DE0, . - func_800B7DE0
