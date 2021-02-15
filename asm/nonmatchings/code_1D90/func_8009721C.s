.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009721C
/* 1E1C 8009721C AC800000 */  sw         $zero, ($a0)
/* 1E20 80097220 03E00008 */  jr         $ra
/* 1E24 80097224 A4800004 */   sh        $zero, 4($a0)
