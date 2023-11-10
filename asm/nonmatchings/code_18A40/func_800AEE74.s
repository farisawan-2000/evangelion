glabel func_800AEE74
/* 19A74 800AEE74 3C018010 */  lui        $at, %hi(D_80102980)
/* 19A78 800AEE78 03E00008 */  jr         $ra
/* 19A7C 800AEE7C AC242980 */   sw        $a0, %lo(D_80102980)($at)
.size func_800AEE74, . - func_800AEE74
