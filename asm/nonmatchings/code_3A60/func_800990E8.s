glabel func_800990E8
/* 3CE8 800990E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3CEC 800990EC 00A4202A */  slt        $a0, $a1, $a0
/* 3CF0 800990F0 10800003 */  beqz       $a0, .L80099100
/* 3CF4 800990F4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 3CF8 800990F8 0C032934 */  jal        func_800CA4D0
/* 3CFC 800990FC 00000000 */   nop
.L80099100:
/* 3D00 80099100 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3D04 80099104 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3D08 80099108 03E00008 */  jr         $ra
/* 3D0C 8009910C 00000000 */   nop
.size func_800990E8, . - func_800990E8
