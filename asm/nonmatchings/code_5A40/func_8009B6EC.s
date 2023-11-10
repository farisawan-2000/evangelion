glabel func_8009B6EC
/* 62EC 8009B6EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62F0 8009B6F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 62F4 8009B6F4 00802821 */  addu       $a1, $a0, $zero
/* 62F8 8009B6F8 0C02B996 */  jal        func_800AE658
/* 62FC 8009B6FC 24040002 */   addiu     $a0, $zero, 0x2
/* 6300 8009B700 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6304 8009B704 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6308 8009B708 03E00008 */  jr         $ra
/* 630C 8009B70C 00000000 */   nop
.size func_8009B6EC, . - func_8009B6EC
