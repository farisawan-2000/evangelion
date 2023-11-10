glabel func_800B1EB0
/* 1CAB0 800B1EB0 3C02800F */  lui        $v0, %hi(D_800F1500)
/* 1CAB4 800B1EB4 8C421500 */  lw         $v0, %lo(D_800F1500)($v0)
/* 1CAB8 800B1EB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CABC 800B1EBC 0082102A */  slt        $v0, $a0, $v0
/* 1CAC0 800B1EC0 1040000E */  beqz       $v0, .L800B1EFC
/* 1CAC4 800B1EC4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1CAC8 800B1EC8 00041080 */  sll        $v0, $a0, 2
/* 1CACC 800B1ECC 3C04800F */  lui        $a0, %hi(D_800F1504)
/* 1CAD0 800B1ED0 00822021 */  addu       $a0, $a0, $v0
/* 1CAD4 800B1ED4 0C02C6CC */  jal        func_800B1B30
/* 1CAD8 800B1ED8 8C841504 */   lw        $a0, %lo(D_800F1504)($a0)
/* 1CADC 800B1EDC 3C028017 */  lui        $v0, %hi(D_8016D7F8)
/* 1CAE0 800B1EE0 8C42D7F8 */  lw         $v0, %lo(D_8016D7F8)($v0)
/* 1CAE4 800B1EE4 8C460034 */  lw         $a2, 0x34($v0)
/* 1CAE8 800B1EE8 8CC40020 */  lw         $a0, 0x20($a2)
/* 1CAEC 800B1EEC 0C02F069 */  jal        func_800BC1A4
/* 1CAF0 800B1EF0 24050001 */   addiu     $a1, $zero, 0x1
/* 1CAF4 800B1EF4 0802C7C0 */  j          .L800B1F00
/* 1CAF8 800B1EF8 00001021 */   addu      $v0, $zero, $zero
.L800B1EFC:
/* 1CAFC 800B1EFC 24020001 */  addiu      $v0, $zero, 0x1
.L800B1F00:
/* 1CB00 800B1F00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1CB04 800B1F04 03E00008 */  jr         $ra
/* 1CB08 800B1F08 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1CB0C 800B1F0C 00000000 */  nop
.size func_800B1EB0, . - func_800B1EB0
