.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1158
/* 1BD58 800B1158 A08000D6 */  sb         $zero, 0xd6($a0)
/* 1BD5C 800B115C 03E00008 */  jr         $ra
/* 1BD60 800B1160 00A01021 */   addu      $v0, $a1, $zero
