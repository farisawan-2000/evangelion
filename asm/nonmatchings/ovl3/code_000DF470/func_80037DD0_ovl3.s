glabel func_80037DD0_ovl3
/* E12E0 80037DD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E12E4 80037DD4 AFB00010 */  sw         $s0, 0x10($sp)
/* E12E8 80037DD8 00808021 */  addu       $s0, $a0, $zero
/* E12EC 80037DDC AFBF0014 */  sw         $ra, 0x14($sp)
/* E12F0 80037DE0 0C027E98 */  jal        func_8009FA60
/* E12F4 80037DE4 8E040004 */   lw        $a0, 0x4($s0)
/* E12F8 80037DE8 0C027880 */  jal        func_8009E200
/* E12FC 80037DEC 8E040008 */   lw        $a0, 0x8($s0)
/* E1300 80037DF0 0C027BB8 */  jal        func_8009EEE0
/* E1304 80037DF4 8E04000C */   lw        $a0, 0xC($s0)
/* E1308 80037DF8 A6000000 */  sh         $zero, 0x0($s0)
/* E130C 80037DFC AE000004 */  sw         $zero, 0x4($s0)
/* E1310 80037E00 AE000008 */  sw         $zero, 0x8($s0)
/* E1314 80037E04 AE00000C */  sw         $zero, 0xC($s0)
/* E1318 80037E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* E131C 80037E0C 8FB00010 */  lw         $s0, 0x10($sp)
/* E1320 80037E10 03E00008 */  jr         $ra
/* E1324 80037E14 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80037DD0_ovl3, . - func_80037DD0_ovl3
