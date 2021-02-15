.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B10E0
/* 1BCE0 800B10E0 24020001 */  addiu      $v0, $zero, 1
/* 1BCE4 800B10E4 A08200BA */  sb         $v0, 0xba($a0)
/* 1BCE8 800B10E8 03E00008 */  jr         $ra
/* 1BCEC 800B10EC 00A01021 */   addu      $v0, $a1, $zero
