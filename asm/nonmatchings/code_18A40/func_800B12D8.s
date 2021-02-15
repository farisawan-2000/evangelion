.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B12D8
/* 1BED8 800B12D8 90A20000 */  lbu        $v0, ($a1)
/* 1BEDC 800B12DC A08000D2 */  sb         $zero, 0xd2($a0)
/* 1BEE0 800B12E0 A08200D3 */  sb         $v0, 0xd3($a0)
/* 1BEE4 800B12E4 03E00008 */  jr         $ra
/* 1BEE8 800B12E8 24A20001 */   addiu     $v0, $a1, 1
