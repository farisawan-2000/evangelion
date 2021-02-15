.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B12EC
/* 1BEEC 800B12EC 90A20000 */  lbu        $v0, ($a1)
/* 1BEF0 800B12F0 00021042 */  srl        $v0, $v0, 1
/* 1BEF4 800B12F4 A08200BD */  sb         $v0, 0xbd($a0)
/* 1BEF8 800B12F8 03E00008 */  jr         $ra
/* 1BEFC 800B12FC 24A20001 */   addiu     $v0, $a1, 1
