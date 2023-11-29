glabel func_8004E1C4_ovl3
/* F76D4 8004E1C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F76D8 8004E1C8 240401D5 */  addiu      $a0, $zero, 0x1D5
/* F76DC 8004E1CC 24050005 */  addiu      $a1, $zero, 0x5
/* F76E0 8004E1D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* F76E4 8004E1D4 0C00D925 */  jal        func_80036494_ovl3
/* F76E8 8004E1D8 24060019 */   addiu     $a2, $zero, 0x19
/* F76EC 8004E1DC 8C44000C */  lw         $a0, 0xC($v0)
/* F76F0 8004E1E0 24050040 */  addiu      $a1, $zero, 0x40
/* F76F4 8004E1E4 0C028D89 */  jal        func_800A3624
/* F76F8 8004E1E8 24060040 */   addiu     $a2, $zero, 0x40
/* F76FC 8004E1EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* F7700 8004E1F0 03E00008 */  jr         $ra
/* F7704 8004E1F4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_8004E1C4_ovl3, . - func_8004E1C4_ovl3
