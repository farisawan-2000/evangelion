.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7DC0
/* 229C0 800B7DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 229C4 800B7DC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 229C8 800B7DC8 24040304 */  addiu      $a0, $zero, 0x304
/* 229CC 800B7DCC 0C02E01E */  jal        func_800B8078
/* 229D0 800B7DD0 00002821 */   addu      $a1, $zero, $zero
/* 229D4 800B7DD4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 229D8 800B7DD8 03E00008 */  jr         $ra
/* 229DC 800B7DDC 27BD0018 */   addiu     $sp, $sp, 0x18
