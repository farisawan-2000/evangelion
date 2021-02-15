.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009DCA4
/* 88A4 8009DCA4 AC850004 */  sw         $a1, 4($a0)
/* 88A8 8009DCA8 03E00008 */  jr         $ra
/* 88AC 8009DCAC AC860008 */   sw        $a2, 8($a0)
