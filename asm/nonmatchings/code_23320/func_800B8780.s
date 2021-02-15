.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8780
/* 23380 800B8780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23384 800B8784 AFBF0010 */  sw         $ra, 0x10($sp)
/* 23388 800B8788 24040103 */  addiu      $a0, $zero, 0x103
/* 2338C 800B878C 0C02E01E */  jal        func_800B8078
/* 23390 800B8790 00002821 */   addu      $a1, $zero, $zero
/* 23394 800B8794 8FBF0010 */  lw         $ra, 0x10($sp)
/* 23398 800B8798 03E00008 */  jr         $ra
/* 2339C 800B879C 27BD0018 */   addiu     $sp, $sp, 0x18
