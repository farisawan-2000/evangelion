glabel func_80036780_ovl3
/* DFC90 80036780 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFC94 80036784 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* DFC98 80036788 30C600FF */  andi       $a2, $a2, 0xFF
/* DFC9C 8003678C 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* DFCA0 80036790 AFBF0018 */  sw         $ra, 0x18($sp)
/* DFCA4 80036794 0C00DA00 */  jal        func_80036800_ovl3
/* DFCA8 80036798 AFA00010 */   sw        $zero, 0x10($sp)
/* DFCAC 8003679C 8FBF0018 */  lw         $ra, 0x18($sp)
/* DFCB0 800367A0 03E00008 */  jr         $ra
/* DFCB4 800367A4 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_80036780_ovl3, . - func_80036780_ovl3
