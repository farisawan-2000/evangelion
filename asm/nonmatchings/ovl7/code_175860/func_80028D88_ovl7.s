glabel func_80028D88_ovl7
/* 1787C8 80028D88 3C028005 */  lui        $v0, %hi(D_80052038_ovl7)
/* 1787CC 80028D8C 94422038 */  lhu        $v0, %lo(D_80052038_ovl7)($v0)
/* 1787D0 80028D90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1787D4 80028D94 14400009 */  bnez       $v0, .L80028DBC_ovl7
/* 1787D8 80028D98 AFBF0018 */   sw        $ra, 0x18($sp)
/* 1787DC 80028D9C 0C026E5D */  jal        func_8009B974
/* 1787E0 80028DA0 24040005 */   addiu     $a0, $zero, 0x5
/* 1787E4 80028DA4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1787E8 80028DA8 2404FFFE */  addiu      $a0, $zero, -0x2
/* 1787EC 80028DAC 2405FFFF */  addiu      $a1, $zero, -0x1
/* 1787F0 80028DB0 24060005 */  addiu      $a2, $zero, 0x5
/* 1787F4 80028DB4 0C026C9A */  jal        func_8009B268
/* 1787F8 80028DB8 00003821 */   addu      $a3, $zero, $zero
.L80028DBC_ovl7:
/* 1787FC 80028DBC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 178800 80028DC0 03E00008 */  jr         $ra
/* 178804 80028DC4 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_80028D88_ovl7, . - func_80028D88_ovl7
