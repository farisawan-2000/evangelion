.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD4F0
/* 280F0 800BD4F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 280F4 800BD4F4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 280F8 800BD4F8 00802821 */  addu       $a1, $a0, $zero
/* 280FC 800BD4FC 0C02F623 */  jal        func_800BD88C
/* 28100 800BD500 27A40010 */   addiu     $a0, $sp, 0x10
/* 28104 800BD504 8FBF0018 */  lw         $ra, 0x18($sp)
/* 28108 800BD508 03E00008 */  jr         $ra
/* 2810C 800BD50C 27BD0020 */   addiu     $sp, $sp, 0x20
