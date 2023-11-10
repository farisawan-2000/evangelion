glabel func_800B28AC
/* 1D4AC 800B28AC 00A4102B */  sltu       $v0, $a1, $a0
/* 1D4B0 800B28B0 1040000F */  beqz       $v0, .L800B28F0
/* 1D4B4 800B28B4 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1D4B8 800B28B8 00862021 */  addu       $a0, $a0, $a2
/* 1D4BC 800B28BC 00A62821 */  addu       $a1, $a1, $a2
/* 1D4C0 800B28C0 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1D4C4 800B28C4 10C20014 */  beq        $a2, $v0, .L800B2918
/* 1D4C8 800B28C8 00000000 */   nop
/* 1D4CC 800B28CC 2403FFFF */  addiu      $v1, $zero, -0x1
.L800B28D0:
/* 1D4D0 800B28D0 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 1D4D4 800B28D4 90A20000 */  lbu        $v0, 0x0($a1)
/* 1D4D8 800B28D8 2484FFFF */  addiu      $a0, $a0, -0x1
/* 1D4DC 800B28DC 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1D4E0 800B28E0 14C3FFFB */  bne        $a2, $v1, .L800B28D0
/* 1D4E4 800B28E4 A0820000 */   sb        $v0, 0x0($a0)
/* 1D4E8 800B28E8 0802CA46 */  j          .L800B2918
/* 1D4EC 800B28EC 00000000 */   nop
.L800B28F0:
/* 1D4F0 800B28F0 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1D4F4 800B28F4 10C20008 */  beq        $a2, $v0, .L800B2918
/* 1D4F8 800B28F8 00000000 */   nop
/* 1D4FC 800B28FC 2403FFFF */  addiu      $v1, $zero, -0x1
.L800B2900:
/* 1D500 800B2900 90A20000 */  lbu        $v0, 0x0($a1)
/* 1D504 800B2904 24A50001 */  addiu      $a1, $a1, 0x1
/* 1D508 800B2908 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1D50C 800B290C A0820000 */  sb         $v0, 0x0($a0)
/* 1D510 800B2910 14C3FFFB */  bne        $a2, $v1, .L800B2900
/* 1D514 800B2914 24840001 */   addiu     $a0, $a0, 0x1
.L800B2918:
/* 1D518 800B2918 03E00008 */  jr         $ra
/* 1D51C 800B291C 00000000 */   nop
.size func_800B28AC, . - func_800B28AC
