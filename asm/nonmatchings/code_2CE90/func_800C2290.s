glabel func_800C2290
/* 2CE90 800C2290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CE94 800C2294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CE98 800C2298 0C0319D0 */  jal        __osDisableInt
/* 2CE9C 800C229C AFB00010 */   sw        $s0, 0x10($sp)
/* 2CEA0 800C22A0 3C03800F */  lui        $v1, %hi(D_800F7CA0)
/* 2CEA4 800C22A4 8C637CA0 */  lw         $v1, %lo(D_800F7CA0)($v1)
/* 2CEA8 800C22A8 8C700004 */  lw         $s0, 0x4($v1)
/* 2CEAC 800C22AC 0C0319EC */  jal        __osRestoreInt
/* 2CEB0 800C22B0 00402021 */   addu      $a0, $v0, $zero
/* 2CEB4 800C22B4 02001021 */  addu       $v0, $s0, $zero
/* 2CEB8 800C22B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CEBC 800C22BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CEC0 800C22C0 03E00008 */  jr         $ra
/* 2CEC4 800C22C4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2CEC8 800C22C8 00000000 */  nop
/* 2CECC 800C22CC 00000000 */  nop
.size func_800C2290, . - func_800C2290
