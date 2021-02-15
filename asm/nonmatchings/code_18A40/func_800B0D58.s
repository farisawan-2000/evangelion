.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0D58
/* 1B958 800B0D58 90A60000 */  lbu        $a2, ($a1)
/* 1B95C 800B0D5C 14C00002 */  bnez       $a2, .L800B0D68
/* 1B960 800B0D60 24A50001 */   addiu     $a1, $a1, 1
/* 1B964 800B0D64 24060001 */  addiu      $a2, $zero, 1
.L800B0D68:
/* 1B968 800B0D68 24020400 */  addiu      $v0, $zero, 0x400
/* 1B96C 800B0D6C 0046001A */  div        $zero, $v0, $a2
/* 1B970 800B0D70 14C00002 */  bnez       $a2, .L800B0D7C
/* 1B974 800B0D74 00000000 */   nop
/* 1B978 800B0D78 0007000D */  break      7
.L800B0D7C:
/* 1B97C 800B0D7C 2401FFFF */   addiu     $at, $zero, -1
/* 1B980 800B0D80 14C10004 */  bne        $a2, $at, .L800B0D94
/* 1B984 800B0D84 3C018000 */   lui       $at, 0x8000
/* 1B988 800B0D88 14410002 */  bne        $v0, $at, .L800B0D94
/* 1B98C 800B0D8C 00000000 */   nop
/* 1B990 800B0D90 0006000D */  break      6
.L800B0D94:
/* 1B994 800B0D94 00001012 */   mflo      $v0
/* 1B998 800B0D98 A08600BF */  sb         $a2, 0xbf($a0)
/* 1B99C 800B0D9C AC820064 */  sw         $v0, 0x64($a0)
/* 1B9A0 800B0DA0 90A20000 */  lbu        $v0, ($a1)
/* 1B9A4 800B0DA4 24A50001 */  addiu      $a1, $a1, 1
/* 1B9A8 800B0DA8 A08200C0 */  sb         $v0, 0xc0($a0)
/* 1B9AC 800B0DAC 90A60000 */  lbu        $a2, ($a1)
/* 1B9B0 800B0DB0 3C018010 */  lui        $at, %hi(D_800FEAD0)
/* 1B9B4 800B0DB4 D424EAD0 */  ldc1       $f4, %lo(D_800FEAD0)($at)
/* 1B9B8 800B0DB8 44861000 */  mtc1       $a2, $f2
/* 1B9BC 800B0DBC 00000000 */  nop
/* 1B9C0 800B0DC0 468010A0 */  cvt.s.w    $f2, $f2
/* 1B9C4 800B0DC4 460010A1 */  cvt.d.s    $f2, $f2
/* 1B9C8 800B0DC8 46222083 */  div.d      $f2, $f4, $f2
/* 1B9CC 800B0DCC 908200C0 */  lbu        $v0, 0xc0($a0)
/* 1B9D0 800B0DD0 24A50001 */  addiu      $a1, $a1, 1
/* 1B9D4 800B0DD4 A08600C6 */  sb         $a2, 0xc6($a0)
/* 1B9D8 800B0DD8 90A30000 */  lbu        $v1, ($a1)
/* 1B9DC 800B0DDC 00621023 */  subu       $v0, $v1, $v0
/* 1B9E0 800B0DE0 44820000 */  mtc1       $v0, $f0
/* 1B9E4 800B0DE4 00000000 */  nop
/* 1B9E8 800B0DE8 46800020 */  cvt.s.w    $f0, $f0
/* 1B9EC 800B0DEC 46000021 */  cvt.d.s    $f0, $f0
/* 1B9F0 800B0DF0 46201082 */  mul.d      $f2, $f2, $f0
/* 1B9F4 800B0DF4 24A50001 */  addiu      $a1, $a1, 1
/* 1B9F8 800B0DF8 A08300C1 */  sb         $v1, 0xc1($a0)
/* 1B9FC 800B0DFC 462010A0 */  cvt.s.d    $f2, $f2
/* 1BA00 800B0E00 E4820058 */  swc1       $f2, 0x58($a0)
/* 1BA04 800B0E04 90A60000 */  lbu        $a2, ($a1)
/* 1BA08 800B0E08 44861000 */  mtc1       $a2, $f2
/* 1BA0C 800B0E0C 00000000 */  nop
/* 1BA10 800B0E10 468010A0 */  cvt.s.w    $f2, $f2
/* 1BA14 800B0E14 460010A1 */  cvt.d.s    $f2, $f2
/* 1BA18 800B0E18 46222083 */  div.d      $f2, $f4, $f2
/* 1BA1C 800B0E1C 908200C1 */  lbu        $v0, 0xc1($a0)
/* 1BA20 800B0E20 24A50001 */  addiu      $a1, $a1, 1
/* 1BA24 800B0E24 A08600C7 */  sb         $a2, 0xc7($a0)
/* 1BA28 800B0E28 90A30000 */  lbu        $v1, ($a1)
/* 1BA2C 800B0E2C 00621023 */  subu       $v0, $v1, $v0
/* 1BA30 800B0E30 44820000 */  mtc1       $v0, $f0
/* 1BA34 800B0E34 00000000 */  nop
/* 1BA38 800B0E38 46800020 */  cvt.s.w    $f0, $f0
/* 1BA3C 800B0E3C 46000021 */  cvt.d.s    $f0, $f0
/* 1BA40 800B0E40 46201082 */  mul.d      $f2, $f2, $f0
/* 1BA44 800B0E44 24A50001 */  addiu      $a1, $a1, 1
/* 1BA48 800B0E48 A08300C2 */  sb         $v1, 0xc2($a0)
/* 1BA4C 800B0E4C 462010A0 */  cvt.s.d    $f2, $f2
/* 1BA50 800B0E50 E482005C */  swc1       $f2, 0x5c($a0)
/* 1BA54 800B0E54 90A60000 */  lbu        $a2, ($a1)
/* 1BA58 800B0E58 44860000 */  mtc1       $a2, $f0
/* 1BA5C 800B0E5C 00000000 */  nop
/* 1BA60 800B0E60 46800020 */  cvt.s.w    $f0, $f0
/* 1BA64 800B0E64 46000021 */  cvt.d.s    $f0, $f0
/* 1BA68 800B0E68 46202103 */  div.d      $f4, $f4, $f0
/* 1BA6C 800B0E6C 24A20001 */  addiu      $v0, $a1, 1
/* 1BA70 800B0E70 A08600C8 */  sb         $a2, 0xc8($a0)
/* 1BA74 800B0E74 46202120 */  cvt.s.d    $f4, $f4
/* 1BA78 800B0E78 03E00008 */  jr         $ra
/* 1BA7C 800B0E7C E4840060 */   swc1      $f4, 0x60($a0)
