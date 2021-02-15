.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AE8B0
/* 194B0 800AE8B0 14800003 */  bnez       $a0, .L800AE8C0
/* 194B4 800AE8B4 27BDFFF8 */   addiu     $sp, $sp, -8
/* 194B8 800AE8B8 0802BA42 */  j          .L800AE908
/* 194BC 800AE8BC 00001021 */   addu      $v0, $zero, $zero
.L800AE8C0:
/* 194C0 800AE8C0 00003821 */  addu       $a3, $zero, $zero
/* 194C4 800AE8C4 3C028010 */  lui        $v0, %hi(D_80102944)
/* 194C8 800AE8C8 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 194CC 800AE8CC 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 194D0 800AE8D0 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 194D4 800AE8D4 1840000B */  blez       $v0, .L800AE904
/* 194D8 800AE8D8 00003021 */   addu      $a2, $zero, $zero
/* 194DC 800AE8DC 00404021 */  addu       $t0, $v0, $zero
/* 194E0 800AE8E0 2463009E */  addiu      $v1, $v1, 0x9e
.L800AE8E4:
/* 194E4 800AE8E4 8C62FFA6 */  lw         $v0, -0x5a($v1)
/* 194E8 800AE8E8 14440003 */  bne        $v0, $a0, .L800AE8F8
/* 194EC 800AE8EC 24E70001 */   addiu     $a3, $a3, 1
/* 194F0 800AE8F0 A4650000 */  sh         $a1, ($v1)
/* 194F4 800AE8F4 24C60001 */  addiu      $a2, $a2, 1
.L800AE8F8:
/* 194F8 800AE8F8 00E8102A */  slt        $v0, $a3, $t0
/* 194FC 800AE8FC 1440FFF9 */  bnez       $v0, .L800AE8E4
/* 19500 800AE900 2463013C */   addiu     $v1, $v1, 0x13c
.L800AE904:
/* 19504 800AE904 00C01021 */  addu       $v0, $a2, $zero
.L800AE908:
/* 19508 800AE908 03E00008 */  jr         $ra
/* 1950C 800AE90C 27BD0008 */   addiu     $sp, $sp, 8
