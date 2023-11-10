glabel func_8009F4D4
/* A0D4 8009F4D4 10800002 */  beqz       $a0, .L8009F4E0
/* A0D8 8009F4D8 24020001 */   addiu     $v0, $zero, 0x1
/* A0DC 8009F4DC A082002D */  sb         $v0, 0x2D($a0)
.L8009F4E0:
/* A0E0 8009F4E0 03E00008 */  jr         $ra
/* A0E4 8009F4E4 00000000 */   nop
.size func_8009F4D4, . - func_8009F4D4
