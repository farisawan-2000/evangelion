glabel func_800B42BC
/* 1EEBC 800B42BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EEC0 800B42C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1EEC4 800B42C4 0C02CF8A */  jal        func_800B3E28
/* 1EEC8 800B42C8 00000000 */   nop
/* 1EECC 800B42CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1EED0 800B42D0 00001021 */  addu       $v0, $zero, $zero
/* 1EED4 800B42D4 03E00008 */  jr         $ra
/* 1EED8 800B42D8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1EEDC 800B42DC 00000000 */  nop
.size func_800B42BC, . - func_800B42BC
