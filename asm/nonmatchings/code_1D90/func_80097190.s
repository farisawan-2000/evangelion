.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097190
/* 1D90 80097190 A4800000 */  sh         $zero, ($a0)
/* 1D94 80097194 03E00008 */  jr         $ra
/* 1D98 80097198 A4800002 */   sh        $zero, 2($a0)
