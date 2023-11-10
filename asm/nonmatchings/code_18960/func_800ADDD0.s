glabel func_800ADDD0
/* 189D0 800ADDD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 189D4 800ADDD4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 189D8 800ADDD8 0C02CA0B */  jal        func_800B282C
/* 189DC 800ADDDC 00000000 */   nop
/* 189E0 800ADDE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 189E4 800ADDE4 03E00008 */  jr         $ra
/* 189E8 800ADDE8 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800ADDD0, . - func_800ADDD0
