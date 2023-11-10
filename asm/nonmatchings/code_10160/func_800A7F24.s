glabel func_800A7F24
/* 12B24 800A7F24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B28 800A7F28 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B2C 800A7F2C 00808021 */  addu       $s0, $a0, $zero
/* 12B30 800A7F30 12000006 */  beqz       $s0, .L800A7F4C
/* 12B34 800A7F34 AFBF0014 */   sw        $ra, 0x14($sp)
/* 12B38 800A7F38 8E040000 */  lw         $a0, 0x0($s0)
/* 12B3C 800A7F3C 0C028D30 */  jal        func_800A34C0
/* 12B40 800A7F40 00000000 */   nop
/* 12B44 800A7F44 0C0326A1 */  jal        func_800C9A84
/* 12B48 800A7F48 02002021 */   addu      $a0, $s0, $zero
.L800A7F4C:
/* 12B4C 800A7F4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12B50 800A7F50 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B54 800A7F54 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12B58 800A7F58 03E00008 */  jr         $ra
/* 12B5C 800A7F5C 00000000 */   nop
.size func_800A7F24, . - func_800A7F24
