glabel func_80036304_ovl3
/* DF814 80036304 00002821 */  addu       $a1, $zero, $zero
/* DF818 80036308 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* DF81C 8003630C 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* DF820 80036310 3084FFFF */  andi       $a0, $a0, 0xFFFF
.L80036314_ovl3:
/* DF824 80036314 94620000 */  lhu        $v0, 0x0($v1)
/* DF828 80036318 54440003 */  bnel       $v0, $a0, .L80036328_ovl3
/* DF82C 8003631C 24A50001 */   addiu     $a1, $a1, 0x1
/* DF830 80036320 0800D8CF */  j          .L8003633C_ovl3
/* DF834 80036324 00601021 */   addu      $v0, $v1, $zero
.L80036328_ovl3:
/* DF838 80036328 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* DF83C 8003632C 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DF840 80036330 1440FFF8 */  bnez       $v0, .L80036314_ovl3
/* DF844 80036334 24630010 */   addiu     $v1, $v1, 0x10
/* DF848 80036338 00001021 */  addu       $v0, $zero, $zero
.L8003633C_ovl3:
/* DF84C 8003633C 03E00008 */  jr         $ra
/* DF850 80036340 00000000 */   nop
.size func_80036304_ovl3, . - func_80036304_ovl3
