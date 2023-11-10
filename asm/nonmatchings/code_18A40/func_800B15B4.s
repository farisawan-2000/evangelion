glabel func_800B15B4
/* 1C1B4 800B15B4 90A20000 */  lbu        $v0, 0x0($a1)
/* 1C1B8 800B15B8 3C018010 */  lui        $at, %hi(D_800FEB00)
/* 1C1BC 800B15BC D422EB00 */  ldc1       $f2, %lo(D_800FEB00)($at)
/* 1C1C0 800B15C0 44820000 */  mtc1       $v0, $f0
/* 1C1C4 800B15C4 00000000 */  nop
/* 1C1C8 800B15C8 46800020 */  cvt.s.w    $f0, $f0
/* 1C1CC 800B15CC 46000021 */  cvt.d.s    $f0, $f0
/* 1C1D0 800B15D0 46220002 */  mul.d      $f0, $f0, $f2
/* 1C1D4 800B15D4 C4820070 */  lwc1       $f2, 0x70($a0)
/* 1C1D8 800B15D8 46200020 */  cvt.s.d    $f0, $f0
/* 1C1DC 800B15DC 46001082 */  mul.s      $f2, $f2, $f0
/* 1C1E0 800B15E0 24A20001 */  addiu      $v0, $a1, 0x1
/* 1C1E4 800B15E4 E480006C */  swc1       $f0, 0x6C($a0)
/* 1C1E8 800B15E8 03E00008 */  jr         $ra
/* 1C1EC 800B15EC E4820024 */   swc1      $f2, 0x24($a0)
.size func_800B15B4, . - func_800B15B4
