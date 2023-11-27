glabel perspective_text_0170
/* 29C50 800BF050 A6220000 */  sh         $v0, 0x0($s1)
/* 29C54 800BF054 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 29C58 800BF058 14400002 */  bnez       $v0, .L800BF064
/* 29C5C 800BF05C 24020001 */   addiu     $v0, $zero, 0x1
.L800BF060:
/* 29C60 800BF060 A6220000 */  sh         $v0, 0x0($s1)
.L800BF064:
/* 29C64 800BF064 8FBF0018 */  lw         $ra, 0x18($sp)
/* 29C68 800BF068 8FB10014 */  lw         $s1, 0x14($sp)
/* 29C6C 800BF06C 8FB00010 */  lw         $s0, 0x10($sp)
/* 29C70 800BF070 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 29C74 800BF074 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 29C78 800BF078 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 29C7C 800BF07C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 29C80 800BF080 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 29C84 800BF084 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 29C88 800BF088 03E00008 */  jr         $ra
/* 29C8C 800BF08C 27BD0050 */   addiu     $sp, $sp, 0x50
.size perspective_text_0170, . - perspective_text_0170
