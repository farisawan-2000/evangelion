.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B76F0
/* 222F0 800B76F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 222F4 800B76F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 222F8 800B76F8 3C04800F */  lui        $a0, %hi(D_800F5DB0)
/* 222FC 800B76FC 0C02E0D8 */  jal        func_800B8360
/* 22300 800B7700 24845DB0 */   addiu     $a0, $a0, %lo(D_800F5DB0)
/* 22304 800B7704 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22308 800B7708 03E00008 */  jr         $ra
/* 2230C 800B770C 27BD0018 */   addiu     $sp, $sp, 0x18
