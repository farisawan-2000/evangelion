glabel func_80044DD4_ovl3
/* EE2E4 80044DD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EE2E8 80044DD8 AFBF0010 */  sw         $ra, 0x10($sp)
/* EE2EC 80044DDC 0C00E109 */  jal        func_80038424_ovl3
/* EE2F0 80044DE0 00000000 */   nop
/* EE2F4 80044DE4 0C00E1B4 */  jal        func_800386D0_ovl3
/* EE2F8 80044DE8 24040001 */   addiu     $a0, $zero, 0x1
/* EE2FC 80044DEC 8FBF0010 */  lw         $ra, 0x10($sp)
/* EE300 80044DF0 03E00008 */  jr         $ra
/* EE304 80044DF4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80044DD4_ovl3, . - func_80044DD4_ovl3
