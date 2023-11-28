glabel func_80043520_ovl3
/* ECA30 80043520 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ECA34 80043524 24040102 */  addiu      $a0, $zero, 0x102
/* ECA38 80043528 24050005 */  addiu      $a1, $zero, 0x5
/* ECA3C 8004352C AFBF0010 */  sw         $ra, 0x10($sp)
/* ECA40 80043530 0C00D925 */  jal        func_80036494_ovl3
/* ECA44 80043534 24060017 */   addiu     $a2, $zero, 0x17
/* ECA48 80043538 8C44000C */  lw         $a0, 0xC($v0)
/* ECA4C 8004353C 24050080 */  addiu      $a1, $zero, 0x80
/* ECA50 80043540 0C028D89 */  jal        func_800A3624
/* ECA54 80043544 2406018C */   addiu     $a2, $zero, 0x18C
/* ECA58 80043548 8FBF0010 */  lw         $ra, 0x10($sp)
/* ECA5C 8004354C 03E00008 */  jr         $ra
/* ECA60 80043550 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80043520_ovl3, . - func_80043520_ovl3
