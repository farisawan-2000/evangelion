glabel func_800B8720
/* 23320 800B8720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23324 800B8724 AFBF0010 */  sw         $ra, 0x10($sp)
/* 23328 800B8728 0C02E2DC */  jal        func_800B8B70
/* 2332C 800B872C 24040001 */   addiu     $a0, $zero, 0x1
/* 23330 800B8730 24030001 */  addiu      $v1, $zero, 0x1
/* 23334 800B8734 3C018015 */  lui        $at, %hi(D_80149ED0)
/* 23338 800B8738 AC239ED0 */  sw         $v1, %lo(D_80149ED0)($at)
/* 2333C 800B873C 0C02E2DC */  jal        func_800B8B70
/* 23340 800B8740 00402021 */   addu      $a0, $v0, $zero
/* 23344 800B8744 8FBF0010 */  lw         $ra, 0x10($sp)
/* 23348 800B8748 03E00008 */  jr         $ra
/* 2334C 800B874C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B8720, . - func_800B8720
