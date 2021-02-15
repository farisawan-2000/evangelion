.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B5E10
/* 20A10 800B5E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20A14 800B5E14 AFB00010 */  sw         $s0, 0x10($sp)
/* 20A18 800B5E18 00808021 */  addu       $s0, $a0, $zero
/* 20A1C 800B5E1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 20A20 800B5E20 0C02E2DC */  jal        func_800B8B70
/* 20A24 800B5E24 24040001 */   addiu     $a0, $zero, 1
/* 20A28 800B5E28 3C068017 */  lui        $a2, %hi(D_8016E2D8)
/* 20A2C 800B5E2C 24C6E2D8 */  addiu      $a2, $a2, %lo(D_8016E2D8)
/* 20A30 800B5E30 8CC30000 */  lw         $v1, ($a2)
/* 20A34 800B5E34 00002821 */  addu       $a1, $zero, $zero
/* 20A38 800B5E38 1060000E */  beqz       $v1, .L800B5E74
/* 20A3C 800B5E3C 00402021 */   addu      $a0, $v0, $zero
.L800B5E40:
/* 20A40 800B5E40 54700009 */  bnel       $v1, $s0, .L800B5E68
/* 20A44 800B5E44 00602821 */   addu      $a1, $v1, $zero
/* 20A48 800B5E48 10A00004 */  beqz       $a1, .L800B5E5C
/* 20A4C 800B5E4C 00000000 */   nop
/* 20A50 800B5E50 8C620000 */  lw         $v0, ($v1)
/* 20A54 800B5E54 0802D79D */  j          .L800B5E74
/* 20A58 800B5E58 ACA20000 */   sw        $v0, ($a1)
.L800B5E5C:
/* 20A5C 800B5E5C 8C620000 */  lw         $v0, ($v1)
/* 20A60 800B5E60 0802D79D */  j          .L800B5E74
/* 20A64 800B5E64 ACC20000 */   sw        $v0, ($a2)
.L800B5E68:
/* 20A68 800B5E68 8C630000 */  lw         $v1, ($v1)
/* 20A6C 800B5E6C 1460FFF4 */  bnez       $v1, .L800B5E40
/* 20A70 800B5E70 00000000 */   nop
.L800B5E74:
/* 20A74 800B5E74 0C02E2DC */  jal        func_800B8B70
/* 20A78 800B5E78 00000000 */   nop
/* 20A7C 800B5E7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20A80 800B5E80 8FB00010 */  lw         $s0, 0x10($sp)
/* 20A84 800B5E84 03E00008 */  jr         $ra
/* 20A88 800B5E88 27BD0018 */   addiu     $sp, $sp, 0x18
