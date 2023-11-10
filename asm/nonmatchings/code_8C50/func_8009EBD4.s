glabel func_8009EBD4
/* 97D4 8009EBD4 10800002 */  beqz       $a0, .L8009EBE0
/* 97D8 8009EBD8 24020001 */   addiu     $v0, $zero, 0x1
/* 97DC 8009EBDC A082002D */  sb         $v0, 0x2D($a0)
.L8009EBE0:
/* 97E0 8009EBE0 03E00008 */  jr         $ra
/* 97E4 8009EBE4 00000000 */   nop
.size func_8009EBD4, . - func_8009EBD4
