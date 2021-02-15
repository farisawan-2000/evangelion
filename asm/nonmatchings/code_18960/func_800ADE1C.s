.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800ADE1C
/* 18A1C 800ADE1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18A20 800ADE20 AFBF0010 */  sw         $ra, 0x10($sp)
/* 18A24 800ADE24 0C02CA17 */  jal        func_800B285C
/* 18A28 800ADE28 00000000 */   nop
/* 18A2C 800ADE2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18A30 800ADE30 03E00008 */  jr         $ra
/* 18A34 800ADE34 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18A38 800ADE38 00000000 */  nop
/* 18A3C 800ADE3C 00000000 */  nop
