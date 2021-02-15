.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B5BE8
/* 207E8 800B5BE8 3C028017 */  lui        $v0, %hi(D_8016DCAC)
/* 207EC 800B5BEC 03E00008 */  jr         $ra
/* 207F0 800B5BF0 2442DCAC */   addiu     $v0, $v0, %lo(D_8016DCAC)
