.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9710
/* 24310 800B9710 3C02A450 */  lui        $v0, 0xa450
/* 24314 800B9714 34420004 */  ori        $v0, $v0, 4
/* 24318 800B9718 03E00008 */  jr         $ra
/* 2431C 800B971C 8C420000 */   lw        $v0, ($v0)
