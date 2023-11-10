glabel func_800B1090
/* 1BC90 800B1090 90A30000 */  lbu        $v1, 0x0($a1)
/* 1BC94 800B1094 28620080 */  slti       $v0, $v1, 0x80
/* 1BC98 800B1098 14400006 */  bnez       $v0, .L800B10B4
/* 1BC9C 800B109C 24A50001 */   addiu     $a1, $a1, 0x1
/* 1BCA0 800B10A0 3063007F */  andi       $v1, $v1, 0x7F
/* 1BCA4 800B10A4 90A20000 */  lbu        $v0, 0x0($a1)
/* 1BCA8 800B10A8 00031A00 */  sll        $v1, $v1, 8
/* 1BCAC 800B10AC 24A50001 */  addiu      $a1, $a1, 0x1
/* 1BCB0 800B10B0 00621825 */  or         $v1, $v1, $v0
.L800B10B4:
/* 1BCB4 800B10B4 A48300AC */  sh         $v1, 0xAC($a0)
/* 1BCB8 800B10B8 03E00008 */  jr         $ra
/* 1BCBC 800B10BC 00A01021 */   addu      $v0, $a1, $zero
.size func_800B1090, . - func_800B1090
