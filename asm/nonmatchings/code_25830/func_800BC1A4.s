glabel func_800BC1A4
/* 26DA4 800BC1A4 24020001 */  addiu      $v0, $zero, 0x1
/* 26DA8 800BC1A8 50A20001 */  beql       $a1, $v0, .L800BC1B0
/* 26DAC 800BC1AC AC860000 */   sw        $a2, 0x0($a0)
.L800BC1B0:
/* 26DB0 800BC1B0 03E00008 */  jr         $ra
/* 26DB4 800BC1B4 00001021 */   addu      $v0, $zero, $zero
.size func_800BC1A4, . - func_800BC1A4
