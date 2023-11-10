glabel func_80096E64
/* 1A64 80096E64 0085102B */  sltu       $v0, $a0, $a1
/* 1A68 80096E68 1440000F */  bnez       $v0, .L80096EA8
/* 1A6C 80096E6C 00803821 */   addu      $a3, $a0, $zero
/* 1A70 80096E70 00C01021 */  addu       $v0, $a2, $zero
/* 1A74 80096E74 18400016 */  blez       $v0, .L80096ED0
/* 1A78 80096E78 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 1A7C 80096E7C 00C43821 */  addu       $a3, $a2, $a0
/* 1A80 80096E80 00C52821 */  addu       $a1, $a2, $a1
.L80096E84:
/* 1A84 80096E84 90A20000 */  lbu        $v0, 0x0($a1)
/* 1A88 80096E88 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 1A8C 80096E8C 00C01821 */  addu       $v1, $a2, $zero
/* 1A90 80096E90 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1A94 80096E94 A0E20000 */  sb         $v0, 0x0($a3)
/* 1A98 80096E98 1C60FFFA */  bgtz       $v1, .L80096E84
/* 1A9C 80096E9C 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 1AA0 80096EA0 08025BB4 */  j          .L80096ED0
/* 1AA4 80096EA4 00000000 */   nop
.L80096EA8:
/* 1AA8 80096EA8 00C01021 */  addu       $v0, $a2, $zero
/* 1AAC 80096EAC 18400008 */  blez       $v0, .L80096ED0
/* 1AB0 80096EB0 24C6FFFF */   addiu     $a2, $a2, -0x1
.L80096EB4:
/* 1AB4 80096EB4 90A20000 */  lbu        $v0, 0x0($a1)
/* 1AB8 80096EB8 24A50001 */  addiu      $a1, $a1, 0x1
/* 1ABC 80096EBC 00C01821 */  addu       $v1, $a2, $zero
/* 1AC0 80096EC0 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1AC4 80096EC4 A0E20000 */  sb         $v0, 0x0($a3)
/* 1AC8 80096EC8 1C60FFFA */  bgtz       $v1, .L80096EB4
/* 1ACC 80096ECC 24E70001 */   addiu     $a3, $a3, 0x1
.L80096ED0:
/* 1AD0 80096ED0 03E00008 */  jr         $ra
/* 1AD4 80096ED4 00801021 */   addu      $v0, $a0, $zero
.size func_80096E64, . - func_80096E64
