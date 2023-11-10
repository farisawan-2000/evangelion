glabel func_800B13D4
/* 1BFD4 800B13D4 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BFD8 800B13D8 A08200CA */  sb         $v0, 0xCA($a0)
/* 1BFDC 800B13DC 03E00008 */  jr         $ra
/* 1BFE0 800B13E0 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B13D4, . - func_800B13D4
