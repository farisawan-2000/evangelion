glabel func_800BFFA0
/* 2ABA0 800BFFA0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2ABA4 800BFFA4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2ABA8 800BFFA8 4485A000 */  mtc1       $a1, $f20
/* 2ABAC 800BFFAC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 2ABB0 800BFFB0 4486B000 */  mtc1       $a2, $f22
/* 2ABB4 800BFFB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2ABB8 800BFFB8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 2ABBC 800BFFBC 4487C000 */  mtc1       $a3, $f24
/* 2ABC0 800BFFC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2ABC4 800BFFC4 0C02FA9C */  jal        guMtxIdentF
/* 2ABC8 800BFFC8 00808021 */   addu      $s0, $a0, $zero
/* 2ABCC 800BFFCC E6140030 */  swc1       $f20, 0x30($s0)
/* 2ABD0 800BFFD0 E6160034 */  swc1       $f22, 0x34($s0)
/* 2ABD4 800BFFD4 E6180038 */  swc1       $f24, 0x38($s0)
/* 2ABD8 800BFFD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2ABDC 800BFFDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2ABE0 800BFFE0 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 2ABE4 800BFFE4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2ABE8 800BFFE8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2ABEC 800BFFEC 03E00008 */  jr         $ra
/* 2ABF0 800BFFF0 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800BFFA0, . - func_800BFFA0
