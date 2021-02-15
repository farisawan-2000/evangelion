.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B135C
/* 1BF5C 800B135C 03E00008 */  jr         $ra
/* 1BF60 800B1360 24A20001 */   addiu     $v0, $a1, 1
