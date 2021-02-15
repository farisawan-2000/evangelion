.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7420
/* 22020 800B7420 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22024 800B7424 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22028 800B7428 3C04800F */  lui        $a0, %hi(D_800F5D80)
/* 2202C 800B742C 0C02E0B0 */  jal        func_800B82C0
/* 22030 800B7430 24845D80 */   addiu     $a0, $a0, %lo(D_800F5D80)
/* 22034 800B7434 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22038 800B7438 03E00008 */  jr         $ra
/* 2203C 800B743C 27BD0018 */   addiu     $sp, $sp, 0x18
