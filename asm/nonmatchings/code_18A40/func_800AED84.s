.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AED84
/* 19984 800AED84 03E00008 */  jr         $ra
/* 19988 800AED88 8C820010 */   lw        $v0, 0x10($a0)
