glabel func_800BA07C
/* 24C7C 800BA07C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24C80 800BA080 AFB00010 */  sw         $s0, 0x10($sp)
/* 24C84 800BA084 00808021 */  addu       $s0, $a0, $zero
/* 24C88 800BA088 AFB20018 */  sw         $s2, 0x18($sp)
/* 24C8C 800BA08C 00A09021 */  addu       $s2, $a1, $zero
/* 24C90 800BA090 AFB10014 */  sw         $s1, 0x14($sp)
/* 24C94 800BA094 00C08821 */  addu       $s1, $a2, $zero
/* 24C98 800BA098 3C05800C */  lui        $a1, %hi(func_800BBA10)
/* 24C9C 800BA09C 24A5BA10 */  addiu      $a1, $a1, %lo(func_800BBA10)
/* 24CA0 800BA0A0 3C06800C */  lui        $a2, %hi(func_800BBB50)
/* 24CA4 800BA0A4 24C6BB50 */  addiu      $a2, $a2, %lo(func_800BBB50)
/* 24CA8 800BA0A8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 24CAC 800BA0AC 0C02EE7C */  jal        func_800BB9F0
/* 24CB0 800BA0B0 24070007 */   addiu     $a3, $zero, 0x7
/* 24CB4 800BA0B4 AE000014 */  sw         $zero, 0x14($s0)
/* 24CB8 800BA0B8 AE110018 */  sw         $s1, 0x18($s0)
/* 24CBC 800BA0BC AE12001C */  sw         $s2, 0x1C($s0)
/* 24CC0 800BA0C0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 24CC4 800BA0C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 24CC8 800BA0C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 24CCC 800BA0CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 24CD0 800BA0D0 03E00008 */  jr         $ra
/* 24CD4 800BA0D4 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800BA07C, . - func_800BA07C
