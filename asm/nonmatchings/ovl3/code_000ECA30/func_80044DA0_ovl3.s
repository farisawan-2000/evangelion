glabel func_80044DA0_ovl3
/* EE2B0 80044DA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EE2B4 80044DA4 24040131 */  addiu      $a0, $zero, 0x131
/* EE2B8 80044DA8 24050005 */  addiu      $a1, $zero, 0x5
/* EE2BC 80044DAC AFBF0010 */  sw         $ra, 0x10($sp)
/* EE2C0 80044DB0 0C00D925 */  jal        func_80036494_ovl3
/* EE2C4 80044DB4 24060017 */   addiu     $a2, $zero, 0x17
/* EE2C8 80044DB8 8C44000C */  lw         $a0, 0xC($v0)
/* EE2CC 80044DBC 24050040 */  addiu      $a1, $zero, 0x40
/* EE2D0 80044DC0 0C028D89 */  jal        func_800A3624
/* EE2D4 80044DC4 24060040 */   addiu     $a2, $zero, 0x40
/* EE2D8 80044DC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* EE2DC 80044DCC 03E00008 */  jr         $ra
/* EE2E0 80044DD0 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80044DA0_ovl3, . - func_80044DA0_ovl3
