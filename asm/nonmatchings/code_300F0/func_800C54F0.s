glabel func_800C54F0
/* 300F0 800C54F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 300F4 800C54F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 300F8 800C54F8 0C031E60 */  jal        func_800C7980
/* 300FC 800C54FC 00002021 */   addu      $a0, $zero, $zero
/* 30100 800C5500 8FBF0010 */  lw         $ra, 0x10($sp)
/* 30104 800C5504 03E00008 */  jr         $ra
/* 30108 800C5508 27BD0018 */   addiu     $sp, $sp, 0x18
/* 3010C 800C550C 00000000 */  nop
.size func_800C54F0, . - func_800C54F0
