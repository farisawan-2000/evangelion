.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7910
/* 32510 800C7910 4442F800 */  cfc1       $v0, $31
/* 32514 800C7914 44C4F800 */  ctc1       $a0, $31
/* 32518 800C7918 03E00008 */  jr         $ra
/* 3251C 800C791C 00000000 */   nop
