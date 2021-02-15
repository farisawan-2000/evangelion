.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD1BC
/* 27DBC 800BD1BC 44850000 */  mtc1       $a1, $f0
/* 27DC0 800BD1C0 00000000 */  nop
/* 27DC4 800BD1C4 46800020 */  cvt.s.w    $f0, $f0
/* 27DC8 800BD1C8 C4820044 */  lwc1       $f2, 0x44($a0)
/* 27DCC 800BD1CC 468010A0 */  cvt.s.w    $f2, $f2
/* 27DD0 800BD1D0 46020002 */  mul.s      $f0, $f0, $f2
/* 27DD4 800BD1D4 3C018010 */  lui        $at, %hi(D_800FEEC0)
/* 27DD8 800BD1D8 D422EEC0 */  ldc1       $f2, %lo(D_800FEEC0)($at)
/* 27DDC 800BD1DC 46000021 */  cvt.d.s    $f0, $f0
/* 27DE0 800BD1E0 46220003 */  div.d      $f0, $f0, $f2
/* 27DE4 800BD1E4 3C018010 */  lui        $at, %hi(D_800FEEC8)
/* 27DE8 800BD1E8 D422EEC8 */  ldc1       $f2, %lo(D_800FEEC8)($at)
/* 27DEC 800BD1EC 46220000 */  add.d      $f0, $f0, $f2
/* 27DF0 800BD1F0 46200020 */  cvt.s.d    $f0, $f0
/* 27DF4 800BD1F4 4600008D */  trunc.w.s  $f2, $f0
/* 27DF8 800BD1F8 44031000 */  mfc1       $v1, $f2
/* 27DFC 800BD1FC 2402FFF0 */  addiu      $v0, $zero, -0x10
/* 27E00 800BD200 03E00008 */  jr         $ra
/* 27E04 800BD204 00621024 */   and       $v0, $v1, $v0
