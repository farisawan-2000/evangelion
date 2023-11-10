glabel func_800AECCC
/* 198CC 800AECCC 00803021 */  addu       $a2, $a0, $zero
/* 198D0 800AECD0 8CC2000C */  lw         $v0, 0xC($a2)
/* 198D4 800AECD4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 198D8 800AECD8 30420001 */  andi       $v0, $v0, 0x1
/* 198DC 800AECDC 14400019 */  bnez       $v0, .L800AED44
/* 198E0 800AECE0 00C03821 */   addu      $a3, $a2, $zero
/* 198E4 800AECE4 3C028010 */  lui        $v0, %hi(D_80102978)
/* 198E8 800AECE8 8C422978 */  lw         $v0, %lo(D_80102978)($v0)
/* 198EC 800AECEC 14400003 */  bnez       $v0, .L800AECFC
/* 198F0 800AECF0 00000000 */   nop
/* 198F4 800AECF4 3C018010 */  lui        $at, %hi(D_80102978)
/* 198F8 800AECF8 AC262978 */  sw         $a2, %lo(D_80102978)($at)
.L800AECFC:
/* 198FC 800AECFC 8CC20014 */  lw         $v0, 0x14($a2)
/* 19900 800AED00 8CC40000 */  lw         $a0, 0x0($a2)
/* 19904 800AED04 00002821 */  addu       $a1, $zero, $zero
/* 19908 800AED08 24030001 */  addiu      $v1, $zero, 0x1
/* 1990C 800AED0C ACC3000C */  sw         $v1, 0xC($a2)
/* 19910 800AED10 ACC00010 */  sw         $zero, 0x10($a2)
/* 19914 800AED14 00C21021 */  addu       $v0, $a2, $v0
/* 19918 800AED18 1880000A */  blez       $a0, .L800AED44
/* 1991C 800AED1C ACC20014 */   sw        $v0, 0x14($a2)
/* 19920 800AED20 00C01821 */  addu       $v1, $a2, $zero
.L800AED24:
/* 19924 800AED24 8C620018 */  lw         $v0, 0x18($v1)
/* 19928 800AED28 00E21021 */  addu       $v0, $a3, $v0
/* 1992C 800AED2C AC620018 */  sw         $v0, 0x18($v1)
/* 19930 800AED30 8CC20000 */  lw         $v0, 0x0($a2)
/* 19934 800AED34 24A50001 */  addiu      $a1, $a1, 0x1
/* 19938 800AED38 00A2102A */  slt        $v0, $a1, $v0
/* 1993C 800AED3C 1440FFF9 */  bnez       $v0, .L800AED24
/* 19940 800AED40 24630008 */   addiu     $v1, $v1, 0x8
.L800AED44:
/* 19944 800AED44 27BD0008 */  addiu      $sp, $sp, 0x8
/* 19948 800AED48 03E00008 */  jr         $ra
/* 1994C 800AED4C 00000000 */   nop
.size func_800AECCC, . - func_800AECCC
