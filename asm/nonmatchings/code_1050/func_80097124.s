.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097124
/* 1D24 80097124 AC800000 */  sw         $zero, ($a0)
/* 1D28 80097128 03E00008 */  jr         $ra
/* 1D2C 8009712C AC800004 */   sw        $zero, 4($a0)
