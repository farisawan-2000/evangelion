glabel func_800B67E0
/* 213E0 800B67E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 213E4 800B67E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 213E8 800B67E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 213EC 800B67EC 0C02DA20 */  jal        func_800B6880
/* 213F0 800B67F0 00808021 */   addu      $s0, $a0, $zero
/* 213F4 800B67F4 0C02E2DC */  jal        func_800B8B70
/* 213F8 800B67F8 24040001 */   addiu     $a0, $zero, 0x1
/* 213FC 800B67FC 3C01800F */  lui        $at, %hi(D_800F1810)
/* 21400 800B6800 AC301810 */  sw         $s0, %lo(D_800F1810)($at)
/* 21404 800B6804 0C02E2DC */  jal        func_800B8B70
/* 21408 800B6808 00402021 */   addu      $a0, $v0, $zero
/* 2140C 800B680C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21410 800B6810 8FB00010 */  lw         $s0, 0x10($sp)
/* 21414 800B6814 03E00008 */  jr         $ra
/* 21418 800B6818 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2141C 800B681C 00000000 */  nop
.size func_800B67E0, . - func_800B67E0
