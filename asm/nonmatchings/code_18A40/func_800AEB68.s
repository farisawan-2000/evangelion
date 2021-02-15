.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEB68
/* 19768 800AEB68 10800006 */  beqz       $a0, .L800AEB84
/* 1976C 800AEB6C 00000000 */   nop
/* 19770 800AEB70 8C820010 */  lw         $v0, 0x10($a0)
/* 19774 800AEB74 04410003 */  bgez       $v0, .L800AEB84
/* 19778 800AEB78 00000000 */   nop
/* 1977C 800AEB7C 3C018010 */  lui        $at, %hi(D_8010296C)
/* 19780 800AEB80 AC24296C */  sw         $a0, %lo(D_8010296C)($at)
.L800AEB84:
/* 19784 800AEB84 03E00008 */  jr         $ra
/* 19788 800AEB88 00000000 */   nop
