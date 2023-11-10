glabel func_800B14D4
/* 1C0D4 800B14D4 90A20000 */  lbu        $v0, 0x0($a1)
/* 1C0D8 800B14D8 A08200BC */  sb         $v0, 0xBC($a0)
/* 1C0DC 800B14DC 03E00008 */  jr         $ra
/* 1C0E0 800B14E0 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B14D4, . - func_800B14D4
