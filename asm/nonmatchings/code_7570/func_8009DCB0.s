.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009DCB0
/* 88B0 8009DCB0 AC850004 */  sw         $a1, 4($a0)
/* 88B4 8009DCB4 03E00008 */  jr         $ra
/* 88B8 8009DCB8 AC860008 */   sw        $a2, 8($a0)
