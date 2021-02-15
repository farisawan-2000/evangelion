.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7900
/* 32500 800C7900 40845800 */  mtc0       $a0, $11
/* 32504 800C7904 03E00008 */  jr         $ra
/* 32508 800C7908 00000000 */   nop
/* 3250C 800C790C 00000000 */  nop
