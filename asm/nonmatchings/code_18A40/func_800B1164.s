.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1164
/* 1BD64 800B1164 24020001 */  addiu      $v0, $zero, 1
/* 1BD68 800B1168 A08200D7 */  sb         $v0, 0xd7($a0)
/* 1BD6C 800B116C 03E00008 */  jr         $ra
/* 1BD70 800B1170 00A01021 */   addu      $v0, $a1, $zero
