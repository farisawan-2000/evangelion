.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2370
/* 1CF70 800B2370 3C018010 */  lui        $at, %hi(D_801029E0)
/* 1CF74 800B2374 03E00008 */  jr         $ra
/* 1CF78 800B2378 AC2429E0 */   sw        $a0, %lo(D_801029E0)($at)
