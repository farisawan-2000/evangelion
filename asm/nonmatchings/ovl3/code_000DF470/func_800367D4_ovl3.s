glabel func_800367D4_ovl3
/* DFCE4 800367D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFCE8 800367D8 24020002 */  addiu      $v0, $zero, 0x2
/* DFCEC 800367DC 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* DFCF0 800367E0 30C600FF */  andi       $a2, $a2, 0xFF
/* DFCF4 800367E4 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* DFCF8 800367E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* DFCFC 800367EC 0C00DA00 */  jal        func_80036800_ovl3
/* DFD00 800367F0 AFA20010 */   sw        $v0, 0x10($sp)
/* DFD04 800367F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* DFD08 800367F8 03E00008 */  jr         $ra
/* DFD0C 800367FC 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800367D4_ovl3, . - func_800367D4_ovl3
