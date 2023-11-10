glabel func_800B80FC
/* 22CFC 800B80FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22D00 800B8100 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22D04 800B8104 3C048014 */  lui        $a0, %hi(D_80145480)
/* 22D08 800B8108 0C0306CC */  jal        osStartThread
/* 22D0C 800B810C 24845480 */   addiu     $a0, $a0, %lo(D_80145480)
/* 22D10 800B8110 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22D14 800B8114 03E00008 */  jr         $ra
/* 22D18 800B8118 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B80FC, . - func_800B80FC
