.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BDA60
/* 28660 800BDA60 03E00008 */  jr         $ra
/* 28664 800BDA64 46006004 */   sqrt.s    $f0, $f12
/* 28668 800BDA68 00000000 */  nop
/* 2866C 800BDA6C 00000000 */  nop
