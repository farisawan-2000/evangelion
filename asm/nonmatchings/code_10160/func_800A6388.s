glabel func_800A6388
/* 10F88 800A6388 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10F8C 800A638C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10F90 800A6390 00801021 */  addu       $v0, $a0, $zero
/* 10F94 800A6394 00063400 */  sll        $a2, $a2, 16
/* 10F98 800A6398 00A02021 */  addu       $a0, $a1, $zero
/* 10F9C 800A639C 00402821 */  addu       $a1, $v0, $zero
/* 10FA0 800A63A0 0C03006C */  jal        func_800C01B0
/* 10FA4 800A63A4 000633C3 */   sra       $a2, $a2, 15
/* 10FA8 800A63A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10FAC 800A63AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10FB0 800A63B0 03E00008 */  jr         $ra
/* 10FB4 800A63B4 00000000 */   nop
.size func_800A6388, . - func_800A6388
