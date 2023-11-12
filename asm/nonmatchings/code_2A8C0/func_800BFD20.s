glabel func_800BFD20
/* 2A920 800BFD20 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 2A924 800BFD24 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 2A928 800BFD28 4485A000 */  mtc1       $a1, $f20
/* 2A92C 800BFD2C F7B60068 */  sdc1       $f22, 0x68($sp)
/* 2A930 800BFD30 4486B000 */  mtc1       $a2, $f22
/* 2A934 800BFD34 AFB10054 */  sw         $s1, 0x54($sp)
/* 2A938 800BFD38 00808821 */  addu       $s1, $a0, $zero
/* 2A93C 800BFD3C AFB00050 */  sw         $s0, 0x50($sp)
/* 2A940 800BFD40 27B00010 */  addiu      $s0, $sp, 0x10
/* 2A944 800BFD44 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 2A948 800BFD48 4487C000 */  mtc1       $a3, $f24
/* 2A94C 800BFD4C AFBF0058 */  sw         $ra, 0x58($sp)
/* 2A950 800BFD50 0C02FA9C */  jal        guMtxIdentF
/* 2A954 800BFD54 02002021 */   addu      $a0, $s0, $zero
/* 2A958 800BFD58 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2A95C 800BFD5C 44810000 */  mtc1       $at, $f0
/* 2A960 800BFD60 02002021 */  addu       $a0, $s0, $zero
/* 2A964 800BFD64 02202821 */  addu       $a1, $s1, $zero
/* 2A968 800BFD68 E7B40010 */  swc1       $f20, 0x10($sp)
/* 2A96C 800BFD6C E7B60024 */  swc1       $f22, 0x24($sp)
/* 2A970 800BFD70 E7B80038 */  swc1       $f24, 0x38($sp)
/* 2A974 800BFD74 0C02FA4C */  jal        guMtxF2L
/* 2A978 800BFD78 E7A0004C */   swc1      $f0, 0x4C($sp)
/* 2A97C 800BFD7C 8FBF0058 */  lw         $ra, 0x58($sp)
/* 2A980 800BFD80 8FB10054 */  lw         $s1, 0x54($sp)
/* 2A984 800BFD84 8FB00050 */  lw         $s0, 0x50($sp)
/* 2A988 800BFD88 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 2A98C 800BFD8C D7B60068 */  ldc1       $f22, 0x68($sp)
/* 2A990 800BFD90 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 2A994 800BFD94 03E00008 */  jr         $ra
/* 2A998 800BFD98 27BD0078 */   addiu     $sp, $sp, 0x78
/* 2A99C 800BFD9C 00000000 */  nop
.size func_800BFD20, . - func_800BFD20
