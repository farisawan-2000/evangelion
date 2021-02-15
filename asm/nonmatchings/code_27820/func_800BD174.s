.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD174
/* 27D74 800BD174 44850000 */  mtc1       $a1, $f0
/* 27D78 800BD178 00000000 */  nop
/* 27D7C 800BD17C 46800020 */  cvt.s.w    $f0, $f0
/* 27D80 800BD180 C4820044 */  lwc1       $f2, 0x44($a0)
/* 27D84 800BD184 468010A0 */  cvt.s.w    $f2, $f2
/* 27D88 800BD188 46020002 */  mul.s      $f0, $f0, $f2
/* 27D8C 800BD18C 3C018010 */  lui        $at, %hi(D_800FEEB0)
/* 27D90 800BD190 D422EEB0 */  ldc1       $f2, %lo(D_800FEEB0)($at)
/* 27D94 800BD194 46000021 */  cvt.d.s    $f0, $f0
/* 27D98 800BD198 46220003 */  div.d      $f0, $f0, $f2
/* 27D9C 800BD19C 3C018010 */  lui        $at, %hi(D_800FEEB8)
/* 27DA0 800BD1A0 D422EEB8 */  ldc1       $f2, %lo(D_800FEEB8)($at)
/* 27DA4 800BD1A4 46220000 */  add.d      $f0, $f0, $f2
/* 27DA8 800BD1A8 46200020 */  cvt.s.d    $f0, $f0
/* 27DAC 800BD1AC 4600008D */  trunc.w.s  $f2, $f0
/* 27DB0 800BD1B0 44021000 */  mfc1       $v0, $f2
/* 27DB4 800BD1B4 03E00008 */  jr         $ra
/* 27DB8 800BD1B8 00000000 */   nop
