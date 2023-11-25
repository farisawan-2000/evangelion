glabel func_800BEA70
/* 29670 800BEA70 00003021 */  addu       $a2, $zero, $zero
/* 29674 800BEA74 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 29678 800BEA78 44810000 */  mtc1       $at, $f0
/* 2967C 800BEA7C 00803821 */  addu       $a3, $a0, $zero
.L800BEA80:
/* 29680 800BEA80 00001821 */  addu       $v1, $zero, $zero
/* 29684 800BEA84 00802821 */  addu       $a1, $a0, $zero
.L800BEA88:
/* 29688 800BEA88 54C30002 */  bnel       $a2, $v1, .L800BEA94
/* 2968C 800BEA8C ACA00000 */   sw        $zero, 0x0($a1)
/* 29690 800BEA90 E4E00000 */  swc1       $f0, 0x0($a3)
.L800BEA94:
/* 29694 800BEA94 24630001 */  addiu      $v1, $v1, 0x1
/* 29698 800BEA98 28620004 */  slti       $v0, $v1, 0x4
/* 2969C 800BEA9C 1440FFFA */  bnez       $v0, .L800BEA88
/* 296A0 800BEAA0 24A50004 */   addiu     $a1, $a1, 0x4
/* 296A4 800BEAA4 24E70014 */  addiu      $a3, $a3, 0x14
/* 296A8 800BEAA8 24C60001 */  addiu      $a2, $a2, 0x1
/* 296AC 800BEAAC 28C20004 */  slti       $v0, $a2, 0x4
/* 296B0 800BEAB0 1440FFF3 */  bnez       $v0, .L800BEA80
/* 296B4 800BEAB4 24840010 */   addiu     $a0, $a0, 0x10
/* 296B8 800BEAB8 03E00008 */  jr         $ra
/* 296BC 800BEABC 00000000 */   nop
.size func_800BEA70, . - func_800BEA70
