.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BCB1C
/* 2771C 800BCB1C 8C830000 */  lw         $v1, ($a0)
/* 27720 800BCB20 10600003 */  beqz       $v1, .L800BCB30
/* 27724 800BCB24 00000000 */   nop
/* 27728 800BCB28 8C820004 */  lw         $v0, 4($a0)
/* 2772C 800BCB2C AC620004 */  sw         $v0, 4($v1)
.L800BCB30:
/* 27730 800BCB30 8C830004 */  lw         $v1, 4($a0)
/* 27734 800BCB34 10600003 */  beqz       $v1, .L800BCB44
/* 27738 800BCB38 00000000 */   nop
/* 2773C 800BCB3C 8C820000 */  lw         $v0, ($a0)
/* 27740 800BCB40 AC620000 */  sw         $v0, ($v1)
.L800BCB44:
/* 27744 800BCB44 03E00008 */  jr         $ra
/* 27748 800BCB48 00000000 */   nop
/* 2774C 800BCB4C 00000000 */  nop
