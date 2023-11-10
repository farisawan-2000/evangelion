glabel func_800B0D2C
/* 1B92C 800B0D2C 90A20000 */  lbu        $v0, 0x0($a1)
/* 1B930 800B0D30 24A50001 */  addiu      $a1, $a1, 0x1
/* 1B934 800B0D34 10400003 */  beqz       $v0, .L800B0D44
/* 1B938 800B0D38 A08200B8 */   sb        $v0, 0xB8($a0)
/* 1B93C 800B0D3C C480002C */  lwc1       $f0, 0x2C($a0)
/* 1B940 800B0D40 E4800050 */  swc1       $f0, 0x50($a0)
.L800B0D44:
/* 1B944 800B0D44 03E00008 */  jr         $ra
/* 1B948 800B0D48 00A01021 */   addu      $v0, $a1, $zero
.size func_800B0D2C, . - func_800B0D2C
