.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2880
/* 1D480 800B2880 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1D484 800B2884 10C00006 */  beqz       $a2, .L800B28A0
/* 1D488 800B2888 24C2FFFF */   addiu     $v0, $a2, -1
/* 1D48C 800B288C 2403FFFF */  addiu      $v1, $zero, -1
.L800B2890:
/* 1D490 800B2890 A0850000 */  sb         $a1, ($a0)
/* 1D494 800B2894 2442FFFF */  addiu      $v0, $v0, -1
/* 1D498 800B2898 1443FFFD */  bne        $v0, $v1, .L800B2890
/* 1D49C 800B289C 24840001 */   addiu     $a0, $a0, 1
.L800B28A0:
/* 1D4A0 800B28A0 27BD0008 */  addiu      $sp, $sp, 8
/* 1D4A4 800B28A4 03E00008 */  jr         $ra
/* 1D4A8 800B28A8 00000000 */   nop
