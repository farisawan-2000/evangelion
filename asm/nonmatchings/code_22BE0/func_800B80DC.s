.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B80DC
/* 22CDC 800B80DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22CE0 800B80E0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22CE4 800B80E4 24047F00 */  addiu      $a0, $zero, 0x7f00
/* 22CE8 800B80E8 0C02E01E */  jal        func_800B8078
/* 22CEC 800B80EC 00002821 */   addu      $a1, $zero, $zero
/* 22CF0 800B80F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22CF4 800B80F4 03E00008 */  jr         $ra
/* 22CF8 800B80F8 27BD0018 */   addiu     $sp, $sp, 0x18
