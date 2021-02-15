.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0D4C
/* 1B94C 800B0D4C A08000B8 */  sb         $zero, 0xb8($a0)
/* 1B950 800B0D50 03E00008 */  jr         $ra
/* 1B954 800B0D54 00A01021 */   addu      $v0, $a1, $zero
