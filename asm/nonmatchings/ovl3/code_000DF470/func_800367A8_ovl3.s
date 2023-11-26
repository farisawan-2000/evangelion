glabel func_800367A8_ovl3
/* DFCB8 800367A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFCBC 800367AC 24020001 */  addiu      $v0, $zero, 0x1
/* DFCC0 800367B0 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* DFCC4 800367B4 30C600FF */  andi       $a2, $a2, 0xFF
/* DFCC8 800367B8 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* DFCCC 800367BC AFBF0018 */  sw         $ra, 0x18($sp)
/* DFCD0 800367C0 0C00DA00 */  jal        func_80036800_ovl3
/* DFCD4 800367C4 AFA20010 */   sw        $v0, 0x10($sp)
/* DFCD8 800367C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* DFCDC 800367CC 03E00008 */  jr         $ra
/* DFCE0 800367D0 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800367A8_ovl3, . - func_800367A8_ovl3
