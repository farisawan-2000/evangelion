glabel func_800C2690
/* 2D290 800C2690 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D294 800C2694 AFB00010 */  sw         $s0, 0x10($sp)
/* 2D298 800C2698 00808021 */  addu       $s0, $a0, $zero
/* 2D29C 800C269C AFB10014 */  sw         $s1, 0x14($sp)
/* 2D2A0 800C26A0 00A08821 */  addu       $s1, $a1, $zero
/* 2D2A4 800C26A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 2D2A8 800C26A8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2D2AC 800C26AC 0C0319D0 */  jal        __osDisableInt
/* 2D2B0 800C26B0 00C09021 */   addu      $s2, $a2, $zero
/* 2D2B4 800C26B4 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D2B8 800C26B8 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D2BC 800C26BC 00402021 */  addu       $a0, $v0, $zero
/* 2D2C0 800C26C0 AC700010 */  sw         $s0, 0x10($v1)
/* 2D2C4 800C26C4 AC710014 */  sw         $s1, 0x14($v1)
/* 2D2C8 800C26C8 0C0319EC */  jal        __osRestoreInt
/* 2D2CC 800C26CC A4720002 */   sh        $s2, 0x2($v1)
/* 2D2D0 800C26D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2D2D4 800C26D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 2D2D8 800C26D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 2D2DC 800C26DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D2E0 800C26E0 03E00008 */  jr         $ra
/* 2D2E4 800C26E4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2D2E8 800C26E8 00000000 */  nop
/* 2D2EC 800C26EC 00000000 */  nop
.size func_800C2690, . - func_800C2690
