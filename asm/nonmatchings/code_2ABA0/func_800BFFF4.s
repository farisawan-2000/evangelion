glabel func_800BFFF4
/* 2ABF4 800BFFF4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 2ABF8 800BFFF8 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 2ABFC 800BFFFC 4485A000 */  mtc1       $a1, $f20
/* 2AC00 800C0000 F7B60068 */  sdc1       $f22, 0x68($sp)
/* 2AC04 800C0004 4486B000 */  mtc1       $a2, $f22
/* 2AC08 800C0008 AFB10054 */  sw         $s1, 0x54($sp)
/* 2AC0C 800C000C 00808821 */  addu       $s1, $a0, $zero
/* 2AC10 800C0010 AFB00050 */  sw         $s0, 0x50($sp)
/* 2AC14 800C0014 27B00010 */  addiu      $s0, $sp, 0x10
/* 2AC18 800C0018 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 2AC1C 800C001C 4487C000 */  mtc1       $a3, $f24
/* 2AC20 800C0020 AFBF0058 */  sw         $ra, 0x58($sp)
/* 2AC24 800C0024 0C02FA9C */  jal        guMtxIdentF
/* 2AC28 800C0028 02002021 */   addu      $a0, $s0, $zero
/* 2AC2C 800C002C 02002021 */  addu       $a0, $s0, $zero
/* 2AC30 800C0030 02202821 */  addu       $a1, $s1, $zero
/* 2AC34 800C0034 E7B40040 */  swc1       $f20, 0x40($sp)
/* 2AC38 800C0038 E7B60044 */  swc1       $f22, 0x44($sp)
/* 2AC3C 800C003C 0C02FA4C */  jal        guMtxF2L
/* 2AC40 800C0040 E7B80048 */   swc1      $f24, 0x48($sp)
/* 2AC44 800C0044 8FBF0058 */  lw         $ra, 0x58($sp)
/* 2AC48 800C0048 8FB10054 */  lw         $s1, 0x54($sp)
/* 2AC4C 800C004C 8FB00050 */  lw         $s0, 0x50($sp)
/* 2AC50 800C0050 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 2AC54 800C0054 D7B60068 */  ldc1       $f22, 0x68($sp)
/* 2AC58 800C0058 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 2AC5C 800C005C 03E00008 */  jr         $ra
/* 2AC60 800C0060 27BD0078 */   addiu     $sp, $sp, 0x78
/* 2AC64 800C0064 00000000 */  nop
/* 2AC68 800C0068 00000000 */  nop
/* 2AC6C 800C006C 00000000 */  nop
.size func_800BFFF4, . - func_800BFFF4
