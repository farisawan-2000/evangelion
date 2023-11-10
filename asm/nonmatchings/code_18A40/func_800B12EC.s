glabel func_800B12EC
/* 1BEEC 800B12EC 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BEF0 800B12F0 00021042 */  srl        $v0, $v0, 1
/* 1BEF4 800B12F4 A08200BD */  sb         $v0, 0xBD($a0)
/* 1BEF8 800B12F8 03E00008 */  jr         $ra
/* 1BEFC 800B12FC 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B12EC, . - func_800B12EC
