glabel func_8009719C
/* 1D9C 8009719C 84820002 */  lh         $v0, 0x2($a0)
/* 1DA0 800971A0 00021040 */  sll        $v0, $v0, 1
/* 1DA4 800971A4 00A23021 */  addu       $a2, $a1, $v0
/* 1DA8 800971A8 80C30000 */  lb         $v1, 0x0($a2)
/* 1DAC 800971AC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1DB0 800971B0 10620018 */  beq        $v1, $v0, .L80097214
/* 1DB4 800971B4 00000000 */   nop
/* 1DB8 800971B8 94820000 */  lhu        $v0, 0x0($a0)
/* 1DBC 800971BC 24420001 */  addiu      $v0, $v0, 0x1
/* 1DC0 800971C0 A4820000 */  sh         $v0, 0x0($a0)
/* 1DC4 800971C4 80C30000 */  lb         $v1, 0x0($a2)
/* 1DC8 800971C8 00021400 */  sll        $v0, $v0, 16
/* 1DCC 800971CC 00021403 */  sra        $v0, $v0, 16
/* 1DD0 800971D0 0043102A */  slt        $v0, $v0, $v1
/* 1DD4 800971D4 1440000F */  bnez       $v0, .L80097214
/* 1DD8 800971D8 00000000 */   nop
/* 1DDC 800971DC 94820002 */  lhu        $v0, 0x2($a0)
/* 1DE0 800971E0 A4800000 */  sh         $zero, 0x0($a0)
/* 1DE4 800971E4 24420001 */  addiu      $v0, $v0, 0x1
/* 1DE8 800971E8 00021C00 */  sll        $v1, $v0, 16
/* 1DEC 800971EC 00031BC3 */  sra        $v1, $v1, 15
/* 1DF0 800971F0 00A33021 */  addu       $a2, $a1, $v1
/* 1DF4 800971F4 A4820002 */  sh         $v0, 0x2($a0)
/* 1DF8 800971F8 80C20000 */  lb         $v0, 0x0($a2)
/* 1DFC 800971FC 14400005 */  bnez       $v0, .L80097214
/* 1E00 80097200 00000000 */   nop
/* 1E04 80097204 90C20001 */  lbu        $v0, 0x1($a2)
/* 1E08 80097208 00021600 */  sll        $v0, $v0, 24
/* 1E0C 8009720C 00021603 */  sra        $v0, $v0, 24
/* 1E10 80097210 A4820002 */  sh         $v0, 0x2($a0)
.L80097214:
/* 1E14 80097214 03E00008 */  jr         $ra
/* 1E18 80097218 00000000 */   nop
.size func_8009719C, . - func_8009719C