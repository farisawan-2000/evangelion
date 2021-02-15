.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B16B4
/* 1C2B4 800B16B4 A48000AC */  sh         $zero, 0xac($a0)
/* 1C2B8 800B16B8 03E00008 */  jr         $ra
/* 1C2BC 800B16BC 00A01021 */   addu      $v0, $a1, $zero
