.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B12B0
/* 1BEB0 800B12B0 A08000CE */  sb         $zero, 0xce($a0)
/* 1BEB4 800B12B4 03E00008 */  jr         $ra
/* 1BEB8 800B12B8 00A01021 */   addu      $v0, $a1, $zero
