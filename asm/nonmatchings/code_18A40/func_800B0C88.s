.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0C88
/* 1B888 800B0C88 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1B88C 800B0C8C 3C028010 */  lui        $v0, %hi(D_80102944)
/* 1B890 800B0C90 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 1B894 800B0C94 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 1B898 800B0C98 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 1B89C 800B0C9C 1840000C */  blez       $v0, .L800B0CD0
/* 1B8A0 800B0CA0 00003821 */   addu      $a3, $zero, $zero
/* 1B8A4 800B0CA4 00404021 */  addu       $t0, $v0, $zero
.L800B0CA8:
/* 1B8A8 800B0CA8 8C620044 */  lw         $v0, 0x44($v1)
/* 1B8AC 800B0CAC 14440005 */  bne        $v0, $a0, .L800B0CC4
/* 1B8B0 800B0CB0 24E70001 */   addiu     $a3, $a3, 1
/* 1B8B4 800B0CB4 8C620000 */  lw         $v0, ($v1)
/* 1B8B8 800B0CB8 00451024 */  and        $v0, $v0, $a1
/* 1B8BC 800B0CBC 00461025 */  or         $v0, $v0, $a2
/* 1B8C0 800B0CC0 AC620000 */  sw         $v0, ($v1)
.L800B0CC4:
/* 1B8C4 800B0CC4 00E8102A */  slt        $v0, $a3, $t0
/* 1B8C8 800B0CC8 1440FFF7 */  bnez       $v0, .L800B0CA8
/* 1B8CC 800B0CCC 2463013C */   addiu     $v1, $v1, 0x13c
.L800B0CD0:
/* 1B8D0 800B0CD0 27BD0008 */  addiu      $sp, $sp, 8
/* 1B8D4 800B0CD4 03E00008 */  jr         $ra
/* 1B8D8 800B0CD8 00000000 */   nop
