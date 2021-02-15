.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7920
/* 32520 800C7920 40846000 */  mtc0       $a0, $12
/* 32524 800C7924 00000000 */  nop
/* 32528 800C7928 03E00008 */  jr         $ra
/* 3252C 800C792C 00000000 */   nop
