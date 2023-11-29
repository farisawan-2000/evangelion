glabel func_8004E1F8_ovl3
/* F7708 8004E1F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F770C 8004E1FC AFBF0010 */  sw         $ra, 0x10($sp)
/* F7710 8004E200 0C00E109 */  jal        func_80038424_ovl3
/* F7714 8004E204 00000000 */   nop
/* F7718 8004E208 0C00E1B4 */  jal        func_800386D0_ovl3
/* F771C 8004E20C 24040002 */   addiu     $a0, $zero, 0x2
/* F7720 8004E210 8FBF0010 */  lw         $ra, 0x10($sp)
/* F7724 8004E214 03E00008 */  jr         $ra
/* F7728 8004E218 27BD0018 */   addiu     $sp, $sp, 0x18
/* F772C 8004E21C 00000000 */  nop
.size func_8004E1F8_ovl3, . - func_8004E1F8_ovl3
