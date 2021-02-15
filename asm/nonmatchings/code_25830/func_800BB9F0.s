.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BB9F0
/* 265F0 800BB9F0 AC800000 */  sw         $zero, ($a0)
/* 265F4 800BB9F4 AC850004 */  sw         $a1, 4($a0)
/* 265F8 800BB9F8 AC860008 */  sw         $a2, 8($a0)
/* 265FC 800BB9FC A480000C */  sh         $zero, 0xc($a0)
/* 26600 800BBA00 A480000E */  sh         $zero, 0xe($a0)
/* 26604 800BBA04 03E00008 */  jr         $ra
/* 26608 800BBA08 AC870010 */   sw        $a3, 0x10($a0)
/* 2660C 800BBA0C 00000000 */  nop
