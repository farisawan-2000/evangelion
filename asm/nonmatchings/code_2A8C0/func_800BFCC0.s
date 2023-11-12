glabel func_800BFCC0
/* 2A8C0 800BFCC0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2A8C4 800BFCC4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2A8C8 800BFCC8 4485A000 */  mtc1       $a1, $f20
/* 2A8CC 800BFCCC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 2A8D0 800BFCD0 4486B000 */  mtc1       $a2, $f22
/* 2A8D4 800BFCD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2A8D8 800BFCD8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 2A8DC 800BFCDC 4487C000 */  mtc1       $a3, $f24
/* 2A8E0 800BFCE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2A8E4 800BFCE4 0C02FA9C */  jal        guMtxIdentF
/* 2A8E8 800BFCE8 00808021 */   addu      $s0, $a0, $zero
/* 2A8EC 800BFCEC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2A8F0 800BFCF0 44810000 */  mtc1       $at, $f0
/* 2A8F4 800BFCF4 E6140000 */  swc1       $f20, 0x0($s0)
/* 2A8F8 800BFCF8 E6160014 */  swc1       $f22, 0x14($s0)
/* 2A8FC 800BFCFC E6180028 */  swc1       $f24, 0x28($s0)
/* 2A900 800BFD00 E600003C */  swc1       $f0, 0x3C($s0)
/* 2A904 800BFD04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2A908 800BFD08 8FB00010 */  lw         $s0, 0x10($sp)
/* 2A90C 800BFD0C D7B80028 */  ldc1       $f24, 0x28($sp)
/* 2A910 800BFD10 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2A914 800BFD14 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2A918 800BFD18 03E00008 */  jr         $ra
/* 2A91C 800BFD1C 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800BFCC0, . - func_800BFCC0
