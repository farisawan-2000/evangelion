.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9F80
/* 14B80 800A9F80 24030003 */  addiu      $v1, $zero, 3
/* 14B84 800A9F84 3C028010 */  lui        $v0, %hi(D_8010055E)
/* 14B88 800A9F88 2442055E */  addiu      $v0, $v0, %lo(D_8010055E)
.L800A9F8C:
/* 14B8C 800A9F8C A4400000 */  sh         $zero, ($v0)
/* 14B90 800A9F90 2463FFFF */  addiu      $v1, $v1, -1
/* 14B94 800A9F94 0461FFFD */  bgez       $v1, .L800A9F8C
/* 14B98 800A9F98 2442FFFE */   addiu     $v0, $v0, -2
/* 14B9C 800A9F9C 03E00008 */  jr         $ra
/* 14BA0 800A9FA0 00000000 */   nop
