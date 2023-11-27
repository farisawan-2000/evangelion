glabel perspective_text_0328
/* 29E08 800BF208 A6220000 */  sh         $v0, 0x0($s1)
/* 29E0C 800BF20C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 29E10 800BF210 14400004 */  bnez       $v0, .L800BF224
/* 29E14 800BF214 27A40010 */   addiu     $a0, $sp, 0x10
/* 29E18 800BF218 24020001 */  addiu      $v0, $zero, 0x1
.L800BF21C:
/* 29E1C 800BF21C A6220000 */  sh         $v0, 0x0($s1)
/* 29E20 800BF220 27A40010 */  addiu      $a0, $sp, 0x10
.L800BF224:
/* 29E24 800BF224 0C02FA4C */  jal        guMtxF2L
/* 29E28 800BF228 02402821 */   addu      $a1, $s2, $zero
/* 29E2C 800BF22C 8FBF005C */  lw         $ra, 0x5C($sp)
/* 29E30 800BF230 8FB20058 */  lw         $s2, 0x58($sp)
/* 29E34 800BF234 8FB10054 */  lw         $s1, 0x54($sp)
/* 29E38 800BF238 8FB00050 */  lw         $s0, 0x50($sp)
/* 29E3C 800BF23C D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 29E40 800BF240 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 29E44 800BF244 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 29E48 800BF248 D7B60068 */  ldc1       $f22, 0x68($sp)
/* 29E4C 800BF24C D7B40060 */  ldc1       $f20, 0x60($sp)
/* 29E50 800BF250 03E00008 */  jr         $ra
/* 29E54 800BF254 27BD0088 */   addiu     $sp, $sp, 0x88
/* 29E58 800BF258 00000000 */  nop
/* 29E5C 800BF25C 00000000 */  nop
.size perspective_text_0328, . - perspective_text_0328
