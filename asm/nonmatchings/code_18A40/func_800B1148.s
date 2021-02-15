.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1148
/* 1BD48 800B1148 24020001 */  addiu      $v0, $zero, 1
/* 1BD4C 800B114C A08200D6 */  sb         $v0, 0xd6($a0)
/* 1BD50 800B1150 03E00008 */  jr         $ra
/* 1BD54 800B1154 00A01021 */   addu      $v0, $a1, $zero
