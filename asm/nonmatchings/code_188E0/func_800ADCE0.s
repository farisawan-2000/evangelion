glabel func_800ADCE0
/* 188E0 800ADCE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 188E4 800ADCE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 188E8 800ADCE8 0C02B930 */  jal        func_800AE4C0
/* 188EC 800ADCEC 00000000 */   nop
/* 188F0 800ADCF0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 188F4 800ADCF4 03E00008 */  jr         $ra
/* 188F8 800ADCF8 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800ADCE0, . - func_800ADCE0
