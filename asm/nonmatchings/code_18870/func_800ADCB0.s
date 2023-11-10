glabel func_800ADCB0
/* 188B0 800ADCB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 188B4 800ADCB4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 188B8 800ADCB8 0C02B774 */  jal        func_800ADDD0
/* 188BC 800ADCBC 00000000 */   nop
/* 188C0 800ADCC0 3C01800F */  lui        $at, %hi(D_800F1240)
/* 188C4 800ADCC4 AC221240 */  sw         $v0, %lo(D_800F1240)($at)
/* 188C8 800ADCC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 188CC 800ADCCC 03E00008 */  jr         $ra
/* 188D0 800ADCD0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 188D4 800ADCD4 00000000 */  nop
/* 188D8 800ADCD8 00000000 */  nop
/* 188DC 800ADCDC 00000000 */  nop
.size func_800ADCB0, . - func_800ADCB0
