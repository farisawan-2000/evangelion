.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AE980
/* 19580 800AE980 44851000 */  mtc1       $a1, $f2
/* 19584 800AE984 00000000 */  nop
/* 19588 800AE988 14800003 */  bnez       $a0, .L800AE998
/* 1958C 800AE98C 27BDFFF8 */   addiu     $sp, $sp, -8
/* 19590 800AE990 0802BA7A */  j          .L800AE9E8
/* 19594 800AE994 00001021 */   addu      $v0, $zero, $zero
.L800AE998:
/* 19598 800AE998 00003021 */  addu       $a2, $zero, $zero
/* 1959C 800AE99C 3C028010 */  lui        $v0, %hi(D_80102944)
/* 195A0 800AE9A0 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 195A4 800AE9A4 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 195A8 800AE9A8 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 195AC 800AE9AC 1840000D */  blez       $v0, .L800AE9E4
/* 195B0 800AE9B0 00002821 */   addu      $a1, $zero, $zero
/* 195B4 800AE9B4 00403821 */  addu       $a3, $v0, $zero
/* 195B8 800AE9B8 24630030 */  addiu      $v1, $v1, 0x30
.L800AE9BC:
/* 195BC 800AE9BC 8C620014 */  lw         $v0, 0x14($v1)
/* 195C0 800AE9C0 14440005 */  bne        $v0, $a0, .L800AE9D8
/* 195C4 800AE9C4 24C60001 */   addiu     $a2, $a2, 1
/* 195C8 800AE9C8 C4600060 */  lwc1       $f0, 0x60($v1)
/* 195CC 800AE9CC 46001000 */  add.s      $f0, $f2, $f0
/* 195D0 800AE9D0 24A50001 */  addiu      $a1, $a1, 1
/* 195D4 800AE9D4 E4600000 */  swc1       $f0, ($v1)
.L800AE9D8:
/* 195D8 800AE9D8 00C7102A */  slt        $v0, $a2, $a3
/* 195DC 800AE9DC 1440FFF7 */  bnez       $v0, .L800AE9BC
/* 195E0 800AE9E0 2463013C */   addiu     $v1, $v1, 0x13c
.L800AE9E4:
/* 195E4 800AE9E4 00A01021 */  addu       $v0, $a1, $zero
.L800AE9E8:
/* 195E8 800AE9E8 03E00008 */  jr         $ra
/* 195EC 800AE9EC 27BD0008 */   addiu     $sp, $sp, 8
