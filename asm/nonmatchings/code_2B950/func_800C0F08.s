glabel func_800C0F08
/* 2BB08 800C0F08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BB0C 800C0F0C AFB20018 */  sw         $s2, 0x18($sp)
/* 2BB10 800C0F10 00809021 */  addu       $s2, $a0, $zero
/* 2BB14 800C0F14 AFB00010 */  sw         $s0, 0x10($sp)
/* 2BB18 800C0F18 00A08021 */  addu       $s0, $a1, $zero
/* 2BB1C 800C0F1C AFB10014 */  sw         $s1, 0x14($sp)
/* 2BB20 800C0F20 00C08821 */  addu       $s1, $a2, $zero
/* 2BB24 800C0F24 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2BB28 800C0F28 0C02E2DC */  jal        func_800B8B70
/* 2BB2C 800C0F2C 24040001 */   addiu     $a0, $zero, 0x1
/* 2BB30 800C0F30 AE110004 */  sw         $s1, 0x4($s0)
/* 2BB34 800C0F34 8E430260 */  lw         $v1, 0x260($s2)
/* 2BB38 800C0F38 00402021 */  addu       $a0, $v0, $zero
/* 2BB3C 800C0F3C AE030000 */  sw         $v1, 0x0($s0)
/* 2BB40 800C0F40 0C02E2DC */  jal        func_800B8B70
/* 2BB44 800C0F44 AE500260 */   sw        $s0, 0x260($s2)
/* 2BB48 800C0F48 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2BB4C 800C0F4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 2BB50 800C0F50 8FB10014 */  lw         $s1, 0x14($sp)
/* 2BB54 800C0F54 8FB00010 */  lw         $s0, 0x10($sp)
/* 2BB58 800C0F58 03E00008 */  jr         $ra
/* 2BB5C 800C0F5C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800C0F08, . - func_800C0F08
