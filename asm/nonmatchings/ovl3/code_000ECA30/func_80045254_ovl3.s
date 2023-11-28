glabel func_80045254_ovl3
/* EE764 80045254 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EE768 80045258 AFBF0010 */  sw         $ra, 0x10($sp)
/* EE76C 8004525C 0C00D889 */  jal        func_80036224_ovl3
/* EE770 80045260 00000000 */   nop
/* EE774 80045264 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* EE778 80045268 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* EE77C 8004526C 24050132 */  addiu      $a1, $zero, 0x132
/* EE780 80045270 24060009 */  addiu      $a2, $zero, 0x9
/* EE784 80045274 0C00D9E0 */  jal        func_80036780_ovl3
/* EE788 80045278 2407003F */   addiu     $a3, $zero, 0x3F
/* EE78C 8004527C 8C44000C */  lw         $a0, 0xC($v0)
/* EE790 80045280 24050040 */  addiu      $a1, $zero, 0x40
/* EE794 80045284 0C028D89 */  jal        func_800A3624
/* EE798 80045288 240600C0 */   addiu     $a2, $zero, 0xC0
/* EE79C 8004528C 8FBF0010 */  lw         $ra, 0x10($sp)
/* EE7A0 80045290 03E00008 */  jr         $ra
/* EE7A4 80045294 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80045254_ovl3, . - func_80045254_ovl3
