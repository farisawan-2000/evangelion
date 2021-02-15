.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097130
/* 1D30 80097130 03E00008 */  jr         $ra
/* 1D34 80097134 AC850004 */   sw        $a1, 4($a0)
