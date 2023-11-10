glabel func_8009D110
/* 7D10 8009D110 3C018010 */  lui        $at, %hi(D_800FF3E0)
/* 7D14 8009D114 AC24F3E0 */  sw         $a0, %lo(D_800FF3E0)($at)
/* 7D18 8009D118 03E00008 */  jr         $ra
/* 7D1C 8009D11C 00000000 */   nop
.size func_8009D110, . - func_8009D110
