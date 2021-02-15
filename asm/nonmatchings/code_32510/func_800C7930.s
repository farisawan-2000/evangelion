.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7930
/* 32530 800C7930 40849000 */  mtc0       $a0, $18
/* 32534 800C7934 00000000 */  nop
/* 32538 800C7938 03E00008 */  jr         $ra
/* 3253C 800C793C 00000000 */   nop
