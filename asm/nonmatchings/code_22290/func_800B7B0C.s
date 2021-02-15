.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7B0C
/* 2270C 800B7B0C 00002021 */  addu       $a0, $zero, $zero
/* 22710 800B7B10 3C038015 */  lui        $v1, %hi(D_8014A007)
/* 22714 800B7B14 2463A007 */  addiu      $v1, $v1, %lo(D_8014A007)
.L800B7B18:
/* 22718 800B7B18 90620000 */  lbu        $v0, ($v1)
/* 2271C 800B7B1C 24840001 */  addiu      $a0, $a0, 1
/* 22720 800B7B20 3042007F */  andi       $v0, $v0, 0x7f
/* 22724 800B7B24 A0620000 */  sb         $v0, ($v1)
/* 22728 800B7B28 2C820004 */  sltiu      $v0, $a0, 4
/* 2272C 800B7B2C 1440FFFA */  bnez       $v0, .L800B7B18
/* 22730 800B7B30 2463000A */   addiu     $v1, $v1, 0xa
/* 22734 800B7B34 03E00008 */  jr         $ra
/* 22738 800B7B38 00001021 */   addu      $v0, $zero, $zero
