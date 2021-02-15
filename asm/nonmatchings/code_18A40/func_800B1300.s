.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1300
/* 1BF00 800B1300 03E00008 */  jr         $ra
/* 1BF04 800B1304 24A20002 */   addiu     $v0, $a1, 2
