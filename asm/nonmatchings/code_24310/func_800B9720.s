.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9720
/* 24320 800B9720 3C02A450 */  lui        $v0, 0xa450
/* 24324 800B9724 3442000C */  ori        $v0, $v0, 0xc
/* 24328 800B9728 03E00008 */  jr         $ra
/* 2432C 800B972C 8C420000 */   lw        $v0, ($v0)
