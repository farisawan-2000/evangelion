glabel func_800B7F08
/* 22B08 800B7F08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22B0C 800B7F0C AFBF0010 */  sw         $ra, 0x10($sp)
/* 22B10 800B7F10 8C82000C */  lw         $v0, 0xC($a0)
/* 22B14 800B7F14 90450008 */  lbu        $a1, 0x8($v0)
/* 22B18 800B7F18 8C460000 */  lw         $a2, 0x0($v0)
/* 22B1C 800B7F1C 9447000A */  lhu        $a3, 0xA($v0)
/* 22B20 800B7F20 3C048017 */  lui        $a0, %hi(D_8016E550)
/* 22B24 800B7F24 0C02E284 */  jal        func_800B8A10
/* 22B28 800B7F28 2484E550 */   addiu     $a0, $a0, %lo(D_8016E550)
/* 22B2C 800B7F2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22B30 800B7F30 03E00008 */  jr         $ra
/* 22B34 800B7F34 27BD0018 */   addiu     $sp, $sp, 0x18
/* 22B38 800B7F38 00000000 */  nop
/* 22B3C 800B7F3C 00000000 */  nop
.size func_800B7F08, . - func_800B7F08
