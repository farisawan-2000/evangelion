glabel func_800BA0D8
/* 24CD8 800BA0D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24CDC 800BA0DC AFB00010 */  sw         $s0, 0x10($sp)
/* 24CE0 800BA0E0 00808021 */  addu       $s0, $a0, $zero
/* 24CE4 800BA0E4 3C05800C */  lui        $a1, %hi(func_800BC9D0)
/* 24CE8 800BA0E8 24A5C9D0 */  addiu      $a1, $a1, %lo(func_800BC9D0)
/* 24CEC 800BA0EC 3C06800C */  lui        $a2, %hi(func_800BCA78)
/* 24CF0 800BA0F0 24C6CA78 */  addiu      $a2, $a2, %lo(func_800BCA78)
/* 24CF4 800BA0F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24CF8 800BA0F8 0C02EE7C */  jal        func_800BB9F0
/* 24CFC 800BA0FC 24070003 */   addiu     $a3, $zero, 0x3
/* 24D00 800BA100 24020001 */  addiu      $v0, $zero, 0x1
/* 24D04 800BA104 AE000014 */  sw         $zero, 0x14($s0)
/* 24D08 800BA108 AE020018 */  sw         $v0, 0x18($s0)
/* 24D0C 800BA10C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24D10 800BA110 8FB00010 */  lw         $s0, 0x10($sp)
/* 24D14 800BA114 03E00008 */  jr         $ra
/* 24D18 800BA118 27BD0018 */   addiu     $sp, $sp, 0x18
/* 24D1C 800BA11C 00000000 */  nop
.size func_800BA0D8, . - func_800BA0D8
