.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025FB0_14FD10
/* 14FD10 80025FB0 03E00008 */  jr         $ra
/* 14FD14 80025FB4 00000000 */   nop
/* 14FD18 80025FB8 00000000 */  nop
/* 14FD1C 80025FBC 00000000 */  nop
