glabel func_800506AC_ovl3
/* F9BBC 800506AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9BC0 800506B0 24040277 */  addiu      $a0, $zero, 0x277
/* F9BC4 800506B4 24050005 */  addiu      $a1, $zero, 0x5
/* F9BC8 800506B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* F9BCC 800506BC 0C00D925 */  jal        func_80036494_ovl3
/* F9BD0 800506C0 24060018 */   addiu     $a2, $zero, 0x18
/* F9BD4 800506C4 8C44000C */  lw         $a0, 0xC($v0)
/* F9BD8 800506C8 24050040 */  addiu      $a1, $zero, 0x40
/* F9BDC 800506CC 0C028D89 */  jal        func_800A3624
/* F9BE0 800506D0 24060040 */   addiu     $a2, $zero, 0x40
/* F9BE4 800506D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* F9BE8 800506D8 03E00008 */  jr         $ra
/* F9BEC 800506DC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800506AC_ovl3, . - func_800506AC_ovl3
