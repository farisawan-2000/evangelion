.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B100C
/* 1BC0C 800B100C 90A20000 */  lbu        $v0, ($a1)
/* 1BC10 800B1010 24A50001 */  addiu      $a1, $a1, 1
/* 1BC14 800B1014 A08200B6 */  sb         $v0, 0xb6($a0)
/* 1BC18 800B1018 90A20000 */  lbu        $v0, ($a1)
/* 1BC1C 800B101C A08200D5 */  sb         $v0, 0xd5($a0)
/* 1BC20 800B1020 908200D5 */  lbu        $v0, 0xd5($a0)
/* 1BC24 800B1024 3C018010 */  lui        $at, %hi(D_800FEAE8)
/* 1BC28 800B1028 D422EAE8 */  ldc1       $f2, %lo(D_800FEAE8)($at)
/* 1BC2C 800B102C 44820000 */  mtc1       $v0, $f0
/* 1BC30 800B1030 00000000 */  nop
/* 1BC34 800B1034 46800020 */  cvt.s.w    $f0, $f0
/* 1BC38 800B1038 46000021 */  cvt.d.s    $f0, $f0
/* 1BC3C 800B103C 46201083 */  div.d      $f2, $f2, $f0
/* 1BC40 800B1040 24A50001 */  addiu      $a1, $a1, 1
/* 1BC44 800B1044 90A20000 */  lbu        $v0, ($a1)
/* 1BC48 800B1048 3C018010 */  lui        $at, %hi(D_800FEAF0)
/* 1BC4C 800B104C D424EAF0 */  ldc1       $f4, %lo(D_800FEAF0)($at)
/* 1BC50 800B1050 44820000 */  mtc1       $v0, $f0
/* 1BC54 800B1054 00000000 */  nop
/* 1BC58 800B1058 46800020 */  cvt.s.w    $f0, $f0
/* 1BC5C 800B105C 46000007 */  neg.s      $f0, $f0
/* 1BC60 800B1060 46000021 */  cvt.d.s    $f0, $f0
/* 1BC64 800B1064 46240003 */  div.d      $f0, $f0, $f4
/* 1BC68 800B1068 24A20001 */  addiu      $v0, $a1, 1
/* 1BC6C 800B106C 462010A0 */  cvt.s.d    $f2, $f2
/* 1BC70 800B1070 E48200DC */  swc1       $f2, 0xdc($a0)
/* 1BC74 800B1074 46200020 */  cvt.s.d    $f0, $f0
/* 1BC78 800B1078 03E00008 */  jr         $ra
/* 1BC7C 800B107C E4800020 */   swc1      $f0, 0x20($a0)
