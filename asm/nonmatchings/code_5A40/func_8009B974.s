glabel func_8009B974
/* 6574 8009B974 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6578 8009B978 AFBF0010 */  sw         $ra, 0x10($sp)
/* 657C 8009B97C 00802821 */  addu       $a1, $a0, $zero
/* 6580 8009B980 0C02B996 */  jal        func_800AE658
/* 6584 8009B984 24040001 */   addiu     $a0, $zero, 0x1
/* 6588 8009B988 8FBF0010 */  lw         $ra, 0x10($sp)
/* 658C 8009B98C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6590 8009B990 03E00008 */  jr         $ra
/* 6594 8009B994 00000000 */   nop
.size func_8009B974, . - func_8009B974
