.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AFE34
/* 1AA34 800AFE34 908200D0 */  lbu        $v0, 0xd0($a0)
/* 1AA38 800AFE38 2442FFFF */  addiu      $v0, $v0, -1
/* 1AA3C 800AFE3C A08200D0 */  sb         $v0, 0xd0($a0)
/* 1AA40 800AFE40 304200FF */  andi       $v0, $v0, 0xff
/* 1AA44 800AFE44 1440000C */  bnez       $v0, .L800AFE78
/* 1AA48 800AFE48 00000000 */   nop
/* 1AA4C 800AFE4C 808200D1 */  lb         $v0, 0xd1($a0)
/* 1AA50 800AFE50 14400006 */  bnez       $v0, .L800AFE6C
/* 1AA54 800AFE54 00000000 */   nop
/* 1AA58 800AFE58 908200D8 */  lbu        $v0, 0xd8($a0)
/* 1AA5C 800AFE5C 908300CE */  lbu        $v1, 0xce($a0)
/* 1AA60 800AFE60 A08200D1 */  sb         $v0, 0xd1($a0)
/* 1AA64 800AFE64 0802BF9E */  j          .L800AFE78
/* 1AA68 800AFE68 A08300D0 */   sb        $v1, 0xd0($a0)
.L800AFE6C:
/* 1AA6C 800AFE6C 908200CF */  lbu        $v0, 0xcf($a0)
/* 1AA70 800AFE70 A08000D1 */  sb         $zero, 0xd1($a0)
/* 1AA74 800AFE74 A08200D0 */  sb         $v0, 0xd0($a0)
.L800AFE78:
/* 1AA78 800AFE78 808200D1 */  lb         $v0, 0xd1($a0)
/* 1AA7C 800AFE7C 44820000 */  mtc1       $v0, $f0
/* 1AA80 800AFE80 00000000 */  nop
/* 1AA84 800AFE84 03E00008 */  jr         $ra
/* 1AA88 800AFE88 46800020 */   cvt.s.w   $f0, $f0
