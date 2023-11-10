glabel func_800A28E0
/* D4E0 800A28E0 3C018010 */  lui        $at, %hi(D_800FFF88)
/* D4E4 800A28E4 AC20FF88 */  sw         $zero, %lo(D_800FFF88)($at)
/* D4E8 800A28E8 3C018010 */  lui        $at, %hi(D_800FFFE0)
/* D4EC 800A28EC AC20FFE0 */  sw         $zero, %lo(D_800FFFE0)($at)
/* D4F0 800A28F0 3C018010 */  lui        $at, %hi(D_80100010)
/* D4F4 800A28F4 AC200010 */  sw         $zero, %lo(D_80100010)($at)
/* D4F8 800A28F8 03E00008 */  jr         $ra
/* D4FC 800A28FC 00000000 */   nop
.size func_800A28E0, . - func_800A28E0
