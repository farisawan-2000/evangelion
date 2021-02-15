.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0F64
/* 1BB64 800B0F64 90A20000 */  lbu        $v0, ($a1)
/* 1BB68 800B0F68 A48000B2 */  sh         $zero, 0xb2($a0)
/* 1BB6C 800B0F6C A48200B4 */  sh         $v0, 0xb4($a0)
/* 1BB70 800B0F70 03E00008 */  jr         $ra
/* 1BB74 800B0F74 24A20001 */   addiu     $v0, $a1, 1
