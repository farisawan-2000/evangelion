glabel func_8009F190
/* 9D90 8009F190 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9D94 8009F194 10800003 */  beqz       $a0, .L8009F1A4
/* 9D98 8009F198 AFBF0010 */   sw        $ra, 0x10($sp)
/* 9D9C 8009F19C 0C027BE3 */  jal        func_8009EF8C
/* 9DA0 8009F1A0 A4850020 */   sh        $a1, 0x20($a0)
.L8009F1A4:
/* 9DA4 8009F1A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9DA8 8009F1A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9DAC 8009F1AC 03E00008 */  jr         $ra
/* 9DB0 8009F1B0 00000000 */   nop
.size func_8009F190, . - func_8009F190
