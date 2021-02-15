.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009714C
/* 1D4C 8009714C 8C820004 */  lw         $v0, 4($a0)
/* 1D50 80097150 03E00008 */  jr         $ra
/* 1D54 80097154 AC800004 */   sw        $zero, 4($a0)
