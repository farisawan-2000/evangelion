.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80096450
/* 1050 80096450 2402000F */  addiu      $v0, $zero, 0xf
/* 1054 80096454 2442FFFF */  addiu      $v0, $v0, -1
.L80096458:
/* 1058 80096458 0443FFFF */  bgezl      $v0, .L80096458
/* 105C 8009645C 2442FFFF */   addiu     $v0, $v0, -1
/* 1060 80096460 03E00008 */  jr         $ra
/* 1064 80096464 00000000 */   nop
