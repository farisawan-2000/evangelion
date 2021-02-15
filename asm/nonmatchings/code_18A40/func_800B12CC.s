.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B12CC
/* 1BECC 800B12CC A08000D2 */  sb         $zero, 0xd2($a0)
/* 1BED0 800B12D0 03E00008 */  jr         $ra
/* 1BED4 800B12D4 00A01021 */   addu      $v0, $a1, $zero
