.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AED50
/* 19950 800AED50 03E00008 */  jr         $ra
/* 19954 800AED54 8C820004 */   lw        $v0, 4($a0)
