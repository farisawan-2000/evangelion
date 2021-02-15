.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800CA850
.L800CA850:
/* 35450 800CA850 14C00003 */  bnez       $a2, .L800CA860
/* 35454 800CA854 00000000 */   nop
/* 35458 800CA858 08032985 */  j          .L800CA614
/* 3545C 800CA85C 00000000 */   nop
.L800CA860:
/* 35460 800CA860 08032946 */  j          .L800CA518
/* 35464 800CA864 00000000 */   nop
/* 35468 800CA868 00000000 */  nop
/* 3546C 800CA86C 00000000 */  nop
