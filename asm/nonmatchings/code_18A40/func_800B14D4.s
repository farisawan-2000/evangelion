.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B14D4
/* 1C0D4 800B14D4 90A20000 */  lbu        $v0, ($a1)
/* 1C0D8 800B14D8 A08200BC */  sb         $v0, 0xbc($a0)
/* 1C0DC 800B14DC 03E00008 */  jr         $ra
/* 1C0E0 800B14E0 24A20001 */   addiu     $v0, $a1, 1
