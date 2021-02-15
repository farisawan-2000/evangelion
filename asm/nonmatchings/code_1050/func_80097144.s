.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097144
/* 1D44 80097144 03E00008 */  jr         $ra
/* 1D48 80097148 AC850000 */   sw        $a1, ($a0)
