.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2874
/* 1D474 800B2874 3C028010 */  lui        $v0, %hi(D_80102BB0)
/* 1D478 800B2878 03E00008 */  jr         $ra
/* 1D47C 800B287C 24422BB0 */   addiu     $v0, $v0, %lo(D_80102BB0)
