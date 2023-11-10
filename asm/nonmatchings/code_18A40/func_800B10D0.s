glabel func_800B10D0
/* 1BCD0 800B10D0 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BCD4 800B10D4 A08200B9 */  sb         $v0, 0xB9($a0)
/* 1BCD8 800B10D8 03E00008 */  jr         $ra
/* 1BCDC 800B10DC 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B10D0, . - func_800B10D0
