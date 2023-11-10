glabel func_800AEB40
/* 19740 800AEB40 10800006 */  beqz       $a0, .L800AEB5C
/* 19744 800AEB44 00000000 */   nop
/* 19748 800AEB48 8C820010 */  lw         $v0, 0x10($a0)
/* 1974C 800AEB4C 04410003 */  bgez       $v0, .L800AEB5C
/* 19750 800AEB50 00000000 */   nop
/* 19754 800AEB54 3C018010 */  lui        $at, %hi(D_80102968)
/* 19758 800AEB58 AC242968 */  sw         $a0, %lo(D_80102968)($at)
.L800AEB5C:
/* 1975C 800AEB5C 3C028010 */  lui        $v0, %hi(D_80102968)
/* 19760 800AEB60 03E00008 */  jr         $ra
/* 19764 800AEB64 8C422968 */   lw        $v0, %lo(D_80102968)($v0)
.size func_800AEB40, . - func_800AEB40
