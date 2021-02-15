.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AE9F0
/* 195F0 800AE9F0 14800003 */  bnez       $a0, .L800AEA00
/* 195F4 800AE9F4 27BDFFF8 */   addiu     $sp, $sp, -8
/* 195F8 800AE9F8 0802BA9D */  j          .L800AEA74
/* 195FC 800AE9FC 00001021 */   addu      $v0, $zero, $zero
.L800AEA00:
/* 19600 800AEA00 1CA00003 */  bgtz       $a1, .L800AEA10
/* 19604 800AEA04 28A20101 */   slti      $v0, $a1, 0x101
/* 19608 800AEA08 0802BA86 */  j          .L800AEA18
/* 1960C 800AEA0C 24050001 */   addiu     $a1, $zero, 1
.L800AEA10:
/* 19610 800AEA10 50400001 */  beql       $v0, $zero, .L800AEA18
/* 19614 800AEA14 24050100 */   addiu     $a1, $zero, 0x100
.L800AEA18:
/* 19618 800AEA18 00003821 */  addu       $a3, $zero, $zero
/* 1961C 800AEA1C 3C028010 */  lui        $v0, %hi(D_80102944)
/* 19620 800AEA20 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 19624 800AEA24 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 19628 800AEA28 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 1962C 800AEA2C 18400010 */  blez       $v0, .L800AEA70
/* 19630 800AEA30 00003021 */   addu      $a2, $zero, $zero
/* 19634 800AEA34 00404021 */  addu       $t0, $v0, $zero
/* 19638 800AEA38 2463009C */  addiu      $v1, $v1, 0x9c
.L800AEA3C:
/* 1963C 800AEA3C 8C62FFA8 */  lw         $v0, -0x58($v1)
/* 19640 800AEA40 14440008 */  bne        $v0, $a0, .L800AEA64
/* 19644 800AEA44 24E70001 */   addiu     $a3, $a3, 1
/* 19648 800AEA48 9462000C */  lhu        $v0, 0xc($v1)
/* 1964C 800AEA4C 00450018 */  mult       $v0, $a1
/* 19650 800AEA50 00001012 */  mflo       $v0
/* 19654 800AEA54 24C60001 */  addiu      $a2, $a2, 1
/* 19658 800AEA58 A465FFFC */  sh         $a1, -4($v1)
/* 1965C 800AEA5C 000211C3 */  sra        $v0, $v0, 7
/* 19660 800AEA60 A4620000 */  sh         $v0, ($v1)
.L800AEA64:
/* 19664 800AEA64 00E8102A */  slt        $v0, $a3, $t0
/* 19668 800AEA68 1440FFF4 */  bnez       $v0, .L800AEA3C
/* 1966C 800AEA6C 2463013C */   addiu     $v1, $v1, 0x13c
.L800AEA70:
/* 19670 800AEA70 00C01021 */  addu       $v0, $a2, $zero
.L800AEA74:
/* 19674 800AEA74 03E00008 */  jr         $ra
/* 19678 800AEA78 27BD0008 */   addiu     $sp, $sp, 8
