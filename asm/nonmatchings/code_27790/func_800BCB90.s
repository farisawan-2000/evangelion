.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BCB90
/* 27790 800BCB90 8FA20010 */  lw         $v0, 0x10($sp)
/* 27794 800BCB94 00E20018 */  mult       $a3, $v0
/* 27798 800BCB98 00003812 */  mflo       $a3
/* 2779C 800BCB9C 8CC30008 */  lw         $v1, 8($a2)
/* 277A0 800BCBA0 8CC20000 */  lw         $v0, ($a2)
/* 277A4 800BCBA4 2404FFF0 */  addiu      $a0, $zero, -0x10
/* 277A8 800BCBA8 8CC50004 */  lw         $a1, 4($a2)
/* 277AC 800BCBAC 00431021 */  addu       $v0, $v0, $v1
/* 277B0 800BCBB0 24E7000F */  addiu      $a3, $a3, 0xf
/* 277B4 800BCBB4 00E43824 */  and        $a3, $a3, $a0
/* 277B8 800BCBB8 00A72021 */  addu       $a0, $a1, $a3
/* 277BC 800BCBBC 0044102B */  sltu       $v0, $v0, $a0
/* 277C0 800BCBC0 14400003 */  bnez       $v0, .L800BCBD0
/* 277C4 800BCBC4 00004021 */   addu      $t0, $zero, $zero
/* 277C8 800BCBC8 00A04021 */  addu       $t0, $a1, $zero
/* 277CC 800BCBCC ACC40004 */  sw         $a0, 4($a2)
.L800BCBD0:
/* 277D0 800BCBD0 03E00008 */  jr         $ra
/* 277D4 800BCBD4 01001021 */   addu      $v0, $t0, $zero
/* 277D8 800BCBD8 00000000 */  nop
/* 277DC 800BCBDC 00000000 */  nop
