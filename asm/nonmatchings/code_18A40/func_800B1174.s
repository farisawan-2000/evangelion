.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1174
/* 1BD74 800B1174 A08000D7 */  sb         $zero, 0xd7($a0)
/* 1BD78 800B1178 03E00008 */  jr         $ra
/* 1BD7C 800B117C 00A01021 */   addu      $v0, $a1, $zero
