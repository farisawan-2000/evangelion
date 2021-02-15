.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0D70
/* 2B970 800C0D70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B974 800C0D74 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B978 800C0D78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B97C 800C0D7C 0C031E58 */  jal        func_800C7960
/* 2B980 800C0D80 00808021 */   addu      $s0, $a0, $zero
/* 2B984 800C0D84 00022202 */  srl        $a0, $v0, 8
/* 2B988 800C0D88 30420080 */  andi       $v0, $v0, 0x80
/* 2B98C 800C0D8C 10400006 */  beqz       $v0, .L800C0DA8
/* 2B990 800C0D90 30840001 */   andi      $a0, $a0, 1
/* 2B994 800C0D94 8E020004 */  lw         $v0, 4($s0)
/* 2B998 800C0D98 2403FFFD */  addiu      $v1, $zero, -3
/* 2B99C 800C0D9C 00441025 */  or         $v0, $v0, $a0
/* 2B9A0 800C0DA0 00431024 */  and        $v0, $v0, $v1
/* 2B9A4 800C0DA4 AE020004 */  sw         $v0, 4($s0)
.L800C0DA8:
/* 2B9A8 800C0DA8 00801021 */  addu       $v0, $a0, $zero
/* 2B9AC 800C0DAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B9B0 800C0DB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B9B4 800C0DB4 03E00008 */  jr         $ra
/* 2B9B8 800C0DB8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2B9BC 800C0DBC 00000000 */  nop
