.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A96BC
/* 142BC 800A96BC 3C01437F */  lui        $at, 0x437f
/* 142C0 800A96C0 44811000 */  mtc1       $at, $f2
/* 142C4 800A96C4 00000000 */  nop
/* 142C8 800A96C8 44840000 */  mtc1       $a0, $f0
/* 142CC 800A96CC 00000000 */  nop
/* 142D0 800A96D0 46800020 */  cvt.s.w    $f0, $f0
/* 142D4 800A96D4 46001003 */  div.s      $f0, $f2, $f0
/* 142D8 800A96D8 3C018017 */  lui        $at, %hi(D_8016D208)
/* 142DC 800A96DC AC24D208 */  sw         $a0, %lo(D_8016D208)($at)
/* 142E0 800A96E0 3C018010 */  lui        $at, %hi(D_8010053C)
/* 142E4 800A96E4 A020053C */  sb         $zero, %lo(D_8010053C)($at)
/* 142E8 800A96E8 46000007 */  neg.s      $f0, $f0
/* 142EC 800A96EC 3C018010 */  lui        $at, %hi(D_80100540)
/* 142F0 800A96F0 E4220540 */  swc1       $f2, %lo(D_80100540)($at)
/* 142F4 800A96F4 3C018010 */  lui        $at, %hi(D_80100544)
/* 142F8 800A96F8 E4200544 */  swc1       $f0, %lo(D_80100544)($at)
/* 142FC 800A96FC 03E00008 */  jr         $ra
/* 14300 800A9700 00000000 */   nop
