.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009E570
/* 9170 8009E570 44850000 */  mtc1       $a1, $f0
/* 9174 8009E574 00000000 */  nop
/* 9178 8009E578 54800001 */  bnezl      $a0, .L8009E580
/* 917C 8009E57C E4800028 */   swc1      $f0, 0x28($a0)
.L8009E580:
/* 9180 8009E580 03E00008 */  jr         $ra
/* 9184 8009E584 00000000 */   nop
