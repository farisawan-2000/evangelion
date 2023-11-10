glabel func_800B74D8
/* 220D8 800B74D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 220DC 800B74DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 220E0 800B74E0 8C83000C */  lw         $v1, 0xC($a0)
/* 220E4 800B74E4 8C620008 */  lw         $v0, 0x8($v1)
/* 220E8 800B74E8 8C650000 */  lw         $a1, 0x0($v1)
/* 220EC 800B74EC 9066000C */  lbu        $a2, 0xC($v1)
/* 220F0 800B74F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 220F4 800B74F4 8C620010 */  lw         $v0, 0x10($v1)
/* 220F8 800B74F8 AFA20014 */  sw         $v0, 0x14($sp)
/* 220FC 800B74FC 8CA40000 */  lw         $a0, 0x0($a1)
/* 22100 800B7500 8CA50004 */  lw         $a1, 0x4($a1)
/* 22104 800B7504 0C030DA8 */  jal        func_800C36A0
/* 22108 800B7508 8C670004 */   lw        $a3, 0x4($v1)
/* 2210C 800B750C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 22110 800B7510 03E00008 */  jr         $ra
/* 22114 800B7514 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B74D8, . - func_800B74D8
