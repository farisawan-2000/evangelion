.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B10C0
/* 1BCC0 800B10C0 24020001 */  addiu      $v0, $zero, 1
/* 1BCC4 800B10C4 A08200B7 */  sb         $v0, 0xb7($a0)
/* 1BCC8 800B10C8 03E00008 */  jr         $ra
/* 1BCCC 800B10CC 00A01021 */   addu      $v0, $a1, $zero
