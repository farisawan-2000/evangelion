.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AED7C
/* 1997C 800AED7C 03E00008 */  jr         $ra
/* 19980 800AED80 AC850010 */   sw        $a1, 0x10($a0)
