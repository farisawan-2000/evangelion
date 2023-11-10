glabel func_800AEC18
/* 19818 800AEC18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1981C 800AEC1C 24020001 */  addiu      $v0, $zero, 0x1
/* 19820 800AEC20 AFA40014 */  sw         $a0, 0x14($sp)
/* 19824 800AEC24 27A40010 */  addiu      $a0, $sp, 0x10
/* 19828 800AEC28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1982C 800AEC2C 0C02BBD9 */  jal        func_800AEF64
/* 19830 800AEC30 A3A20010 */   sb        $v0, 0x10($sp)
/* 19834 800AEC34 8FBF0018 */  lw         $ra, 0x18($sp)
/* 19838 800AEC38 03E00008 */  jr         $ra
/* 1983C 800AEC3C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800AEC18, . - func_800AEC18
