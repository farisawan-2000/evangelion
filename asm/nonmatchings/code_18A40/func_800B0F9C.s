.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0F9C
/* 1BB9C 800B0F9C 90A20000 */  lbu        $v0, ($a1)
/* 1BBA0 800B0FA0 24A50001 */  addiu      $a1, $a1, 1
/* 1BBA4 800B0FA4 A08200B6 */  sb         $v0, 0xb6($a0)
/* 1BBA8 800B0FA8 90A20000 */  lbu        $v0, ($a1)
/* 1BBAC 800B0FAC 24A50001 */  addiu      $a1, $a1, 1
/* 1BBB0 800B0FB0 A08200D5 */  sb         $v0, 0xd5($a0)
/* 1BBB4 800B0FB4 90A20000 */  lbu        $v0, ($a1)
/* 1BBB8 800B0FB8 3C018010 */  lui        $at, %hi(D_800FEAD8)
/* 1BBBC 800B0FBC D420EAD8 */  ldc1       $f0, %lo(D_800FEAD8)($at)
/* 1BBC0 800B0FC0 44821000 */  mtc1       $v0, $f2
/* 1BBC4 800B0FC4 00000000 */  nop
/* 1BBC8 800B0FC8 468010A0 */  cvt.s.w    $f2, $f2
/* 1BBCC 800B0FCC 460010A1 */  cvt.d.s    $f2, $f2
/* 1BBD0 800B0FD0 46201083 */  div.d      $f2, $f2, $f0
/* 1BBD4 800B0FD4 908200D5 */  lbu        $v0, 0xd5($a0)
/* 1BBD8 800B0FD8 3C018010 */  lui        $at, %hi(D_800FEAE0)
/* 1BBDC 800B0FDC D424EAE0 */  ldc1       $f4, %lo(D_800FEAE0)($at)
/* 1BBE0 800B0FE0 44820000 */  mtc1       $v0, $f0
/* 1BBE4 800B0FE4 00000000 */  nop
/* 1BBE8 800B0FE8 46800020 */  cvt.s.w    $f0, $f0
/* 1BBEC 800B0FEC 46000021 */  cvt.d.s    $f0, $f0
/* 1BBF0 800B0FF0 46202103 */  div.d      $f4, $f4, $f0
/* 1BBF4 800B0FF4 24A20001 */  addiu      $v0, $a1, 1
/* 1BBF8 800B0FF8 462010A0 */  cvt.s.d    $f2, $f2
/* 1BBFC 800B0FFC E4820020 */  swc1       $f2, 0x20($a0)
/* 1BC00 800B1000 46202120 */  cvt.s.d    $f4, $f4
/* 1BC04 800B1004 03E00008 */  jr         $ra
/* 1BC08 800B1008 E48400DC */   swc1      $f4, 0xdc($a0)
