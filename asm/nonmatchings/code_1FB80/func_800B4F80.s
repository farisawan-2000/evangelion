glabel func_800B4F80
/* 1FB80 800B4F80 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FB84 800B4F84 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FB88 800B4F88 03E00008 */  jr         $ra
/* 1FB8C 800B4F8C AC400000 */   sw        $zero, 0x0($v0)
.size func_800B4F80, . - func_800B4F80
