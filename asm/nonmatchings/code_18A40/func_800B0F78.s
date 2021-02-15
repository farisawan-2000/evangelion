.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0F78
/* 1BB78 800B0F78 90A30000 */  lbu        $v1, ($a1)
/* 1BB7C 800B0F7C 24A50001 */  addiu      $a1, $a1, 1
/* 1BB80 800B0F80 90A20000 */  lbu        $v0, ($a1)
/* 1BB84 800B0F84 A48000B4 */  sh         $zero, 0xb4($a0)
/* 1BB88 800B0F88 00031A00 */  sll        $v1, $v1, 8
/* 1BB8C 800B0F8C 00431025 */  or         $v0, $v0, $v1
/* 1BB90 800B0F90 A48200B2 */  sh         $v0, 0xb2($a0)
/* 1BB94 800B0F94 03E00008 */  jr         $ra
/* 1BB98 800B0F98 24A20001 */   addiu     $v0, $a1, 1
