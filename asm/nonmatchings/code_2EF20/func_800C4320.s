glabel func_800C4320
/* 2EF20 800C4320 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2EF24 800C4324 AFB00010 */  sw         $s0, 0x10($sp)
/* 2EF28 800C4328 00808021 */  addu       $s0, $a0, $zero
/* 2EF2C 800C432C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2EF30 800C4330 8E020000 */  lw         $v0, 0x0($s0)
/* 2EF34 800C4334 30420005 */  andi       $v0, $v0, 0x5
/* 2EF38 800C4338 5040000A */  beql       $v0, $zero, .L800C4364
/* 2EF3C 800C433C 24040005 */   addiu     $a0, $zero, 0x5
/* 2EF40 800C4340 0C0312B2 */  jal        func_800C4AC8
/* 2EF44 800C4344 00000000 */   nop
/* 2EF48 800C4348 00402021 */  addu       $a0, $v0, $zero
/* 2EF4C 800C434C 14800006 */  bnez       $a0, .L800C4368
/* 2EF50 800C4350 00801021 */   addu      $v0, $a0, $zero
/* 2EF54 800C4354 8E020000 */  lw         $v0, 0x0($s0)
/* 2EF58 800C4358 2403FFFB */  addiu      $v1, $zero, -0x5
/* 2EF5C 800C435C 00431024 */  and        $v0, $v0, $v1
/* 2EF60 800C4360 AE020000 */  sw         $v0, 0x0($s0)
.L800C4364:
/* 2EF64 800C4364 00801021 */  addu       $v0, $a0, $zero
.L800C4368:
/* 2EF68 800C4368 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2EF6C 800C436C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2EF70 800C4370 03E00008 */  jr         $ra
/* 2EF74 800C4374 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2EF78 800C4378 00000000 */  nop
/* 2EF7C 800C437C 00000000 */  nop
.size func_800C4320, . - func_800C4320
