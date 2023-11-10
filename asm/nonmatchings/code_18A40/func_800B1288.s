glabel func_800B1288
/* 1BE88 800B1288 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BE8C 800B128C 24A50001 */  addiu      $a1, $a1, 0x1
/* 1BE90 800B1290 A08200D8 */  sb         $v0, 0xD8($a0)
/* 1BE94 800B1294 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BE98 800B1298 24A50001 */  addiu      $a1, $a1, 0x1
/* 1BE9C 800B129C A08200CE */  sb         $v0, 0xCE($a0)
/* 1BEA0 800B12A0 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BEA4 800B12A4 A08200CF */  sb         $v0, 0xCF($a0)
/* 1BEA8 800B12A8 03E00008 */  jr         $ra
/* 1BEAC 800B12AC 24A20001 */   addiu     $v0, $a1, 0x1
.size func_800B1288, . - func_800B1288
