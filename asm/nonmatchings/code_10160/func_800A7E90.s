glabel func_800A7E90
/* 12A90 800A7E90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A94 800A7E94 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12A98 800A7E98 24040388 */  addiu      $a0, $zero, 0x388
/* 12A9C 800A7E9C 0C0298D4 */  jal        func_800A6350
/* 12AA0 800A7EA0 00002821 */   addu      $a1, $zero, $zero
/* 12AA4 800A7EA4 24050001 */  addiu      $a1, $zero, 0x1
/* 12AA8 800A7EA8 2404000F */  addiu      $a0, $zero, 0xF
/* 12AAC 800A7EAC 2443001E */  addiu      $v1, $v0, 0x1E
.L800A7EB0:
/* 12AB0 800A7EB0 A4650000 */  sh         $a1, 0x0($v1)
/* 12AB4 800A7EB4 2484FFFF */  addiu      $a0, $a0, -0x1
/* 12AB8 800A7EB8 0481FFFD */  bgez       $a0, .L800A7EB0
/* 12ABC 800A7EBC 2463FFFE */   addiu     $v1, $v1, -0x2
/* 12AC0 800A7EC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12AC4 800A7EC4 A4400000 */  sh         $zero, 0x0($v0)
/* 12AC8 800A7EC8 03E00008 */  jr         $ra
/* 12ACC 800A7ECC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800A7E90, . - func_800A7E90
