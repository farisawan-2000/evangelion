.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1E6C
/* 1CA6C 800B1E6C 3C03800F */  lui        $v1, %hi(D_800F1504)
/* 1CA70 800B1E70 24631504 */  addiu      $v1, $v1, %lo(D_800F1504)
/* 1CA74 800B1E74 8C620000 */  lw         $v0, ($v1)
/* 1CA78 800B1E78 1040000B */  beqz       $v0, .L800B1EA8
/* 1CA7C 800B1E7C 00002821 */   addu      $a1, $zero, $zero
/* 1CA80 800B1E80 00602021 */  addu       $a0, $v1, $zero
.L800B1E84:
/* 1CA84 800B1E84 8C820000 */  lw         $v0, ($a0)
/* 1CA88 800B1E88 8C430004 */  lw         $v1, 4($v0)
/* 1CA8C 800B1E8C 00A3102A */  slt        $v0, $a1, $v1
/* 1CA90 800B1E90 54400001 */  bnezl      $v0, .L800B1E98
/* 1CA94 800B1E94 00602821 */   addu      $a1, $v1, $zero
.L800B1E98:
/* 1CA98 800B1E98 24840004 */  addiu      $a0, $a0, 4
/* 1CA9C 800B1E9C 8C820000 */  lw         $v0, ($a0)
/* 1CAA0 800B1EA0 1440FFF8 */  bnez       $v0, .L800B1E84
/* 1CAA4 800B1EA4 00000000 */   nop
.L800B1EA8:
/* 1CAA8 800B1EA8 03E00008 */  jr         $ra
/* 1CAAC 800B1EAC 00A01021 */   addu      $v0, $a1, $zero
