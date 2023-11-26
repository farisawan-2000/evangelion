glabel func_80037F58_ovl3
/* E1468 80037F58 00002821 */  addu       $a1, $zero, $zero
/* E146C 80037F5C 3C038007 */  lui        $v1, %hi(D_8006C3C4_ovl3)
/* E1470 80037F60 8C63C3C4 */  lw         $v1, %lo(D_8006C3C4_ovl3)($v1)
/* E1474 80037F64 3084FFFF */  andi       $a0, $a0, 0xFFFF
.L80037F68_ovl3:
/* E1478 80037F68 94620000 */  lhu        $v0, 0x0($v1)
/* E147C 80037F6C 54440003 */  bnel       $v0, $a0, .L80037F7C_ovl3
/* E1480 80037F70 24A50001 */   addiu     $a1, $a1, 0x1
/* E1484 80037F74 0800DFE4 */  j          .L80037F90_ovl3
/* E1488 80037F78 00601021 */   addu      $v0, $v1, $zero
.L80037F7C_ovl3:
/* E148C 80037F7C 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* E1490 80037F80 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1494 80037F84 1440FFF8 */  bnez       $v0, .L80037F68_ovl3
/* E1498 80037F88 24630080 */   addiu     $v1, $v1, 0x80
/* E149C 80037F8C 00001021 */  addu       $v0, $zero, $zero
.L80037F90_ovl3:
/* E14A0 80037F90 03E00008 */  jr         $ra
/* E14A4 80037F94 00000000 */   nop
.size func_80037F58_ovl3, . - func_80037F58_ovl3
