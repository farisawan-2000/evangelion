glabel func_800B12D8
/* 1BED8 800B12D8 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BEDC 800B12DC A08000D2 */  sb         $zero, 0xD2($a0)
/* 1BEE0 800B12E0 A08200D3 */  sb         $v0, 0xD3($a0)
/* 1BEE4 800B12E4 03E00008 */  jr         $ra
/* 1BEE8 800B12E8 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B12D8, . - func_800B12D8
