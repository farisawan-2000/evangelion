.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEB8C
/* 1978C 800AEB8C 3C028010 */  lui        $v0, %hi(D_8010296C)
/* 19790 800AEB90 03E00008 */  jr         $ra
/* 19794 800AEB94 8C42296C */   lw        $v0, %lo(D_8010296C)($v0)
