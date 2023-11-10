glabel func_800B7EB8
/* 22AB8 800B7EB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22ABC 800B7EBC AFBF0010 */  sw         $ra, 0x10($sp)
/* 22AC0 800B7EC0 3C048017 */  lui        $a0, %hi(D_8016E550)
/* 22AC4 800B7EC4 0C02E264 */  jal        func_800B8990
/* 22AC8 800B7EC8 2484E550 */   addiu     $a0, $a0, %lo(D_8016E550)
/* 22ACC 800B7ECC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22AD0 800B7ED0 03E00008 */  jr         $ra
/* 22AD4 800B7ED4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B7EB8, . - func_800B7EB8
