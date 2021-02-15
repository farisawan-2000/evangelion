.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AED64
/* 19964 800AED64 3C018010 */  lui        $at, %hi(D_8010297C)
/* 19968 800AED68 03E00008 */  jr         $ra
/* 1996C 800AED6C AC24297C */   sw        $a0, %lo(D_8010297C)($at)
