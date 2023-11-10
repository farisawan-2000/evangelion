glabel func_800B15F0
/* 1C1F0 800B15F0 90A20000 */  lbu        $v0, 0x0($a1)
/* 1C1F4 800B15F4 A08200D4 */  sb         $v0, 0xD4($a0)
/* 1C1F8 800B15F8 03E00008 */  jr         $ra
/* 1C1FC 800B15FC 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B15F0, . - func_800B15F0
