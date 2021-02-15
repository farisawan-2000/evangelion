.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AED58
/* 19958 800AED58 3C018010 */  lui        $at, %hi(D_80102978)
/* 1995C 800AED5C 03E00008 */  jr         $ra
/* 19960 800AED60 AC242978 */   sw        $a0, %lo(D_80102978)($at)
