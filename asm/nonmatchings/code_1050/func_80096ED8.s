glabel func_80096ED8
/* 1AD8 80096ED8 2482FF9F */  addiu      $v0, $a0, -0x61
/* 1ADC 80096EDC 304200FF */  andi       $v0, $v0, 0xFF
/* 1AE0 80096EE0 2C42001A */  sltiu      $v0, $v0, 0x1A
/* 1AE4 80096EE4 10400004 */  beqz       $v0, .L80096EF8
/* 1AE8 80096EE8 00801821 */   addu      $v1, $a0, $zero
/* 1AEC 80096EEC 248200E0 */  addiu      $v0, $a0, 0xE0
/* 1AF0 80096EF0 08025BBF */  j          .L80096EFC
/* 1AF4 80096EF4 304200FF */   andi      $v0, $v0, 0xFF
.L80096EF8:
/* 1AF8 80096EF8 306200FF */  andi       $v0, $v1, 0xFF
.L80096EFC:
/* 1AFC 80096EFC 03E00008 */  jr         $ra
/* 1B00 80096F00 00000000 */   nop
.size func_80096ED8, . - func_80096ED8
