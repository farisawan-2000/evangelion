glabel func_800A97DC
/* 143DC 800A97DC 3C018010 */  lui        $at, %hi(D_80100548)
/* 143E0 800A97E0 A4240548 */  sh         $a0, %lo(D_80100548)($at)
/* 143E4 800A97E4 03E00008 */  jr         $ra
/* 143E8 800A97E8 00000000 */   nop
.size func_800A97DC, . - func_800A97DC
