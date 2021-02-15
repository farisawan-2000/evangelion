.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BCAFC
/* 276FC 800BCAFC 8CA20000 */  lw         $v0, ($a1)
/* 27700 800BCB00 AC850004 */  sw         $a1, 4($a0)
/* 27704 800BCB04 AC820000 */  sw         $v0, ($a0)
/* 27708 800BCB08 8CA20000 */  lw         $v0, ($a1)
/* 2770C 800BCB0C 54400001 */  bnezl      $v0, .L800BCB14
/* 27710 800BCB10 AC440004 */   sw        $a0, 4($v0)
.L800BCB14:
/* 27714 800BCB14 03E00008 */  jr         $ra
/* 27718 800BCB18 ACA40000 */   sw        $a0, ($a1)
