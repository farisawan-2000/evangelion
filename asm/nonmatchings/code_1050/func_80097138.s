.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097138
/* 1D38 80097138 8C820000 */  lw         $v0, ($a0)
/* 1D3C 8009713C 03E00008 */  jr         $ra
/* 1D40 80097140 AC800000 */   sw        $zero, ($a0)
