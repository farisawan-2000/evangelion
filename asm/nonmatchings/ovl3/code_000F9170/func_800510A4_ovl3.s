glabel func_800510A4_ovl3
/* FA5B4 800510A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FA5B8 800510A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* FA5BC 800510AC 0C00E109 */  jal        func_80038424_ovl3
/* FA5C0 800510B0 00000000 */   nop
/* FA5C4 800510B4 0C00E1B4 */  jal        func_800386D0_ovl3
/* FA5C8 800510B8 24040003 */   addiu     $a0, $zero, 0x3
/* FA5CC 800510BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* FA5D0 800510C0 03E00008 */  jr         $ra
/* FA5D4 800510C4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800510A4_ovl3, . - func_800510A4_ovl3
