glabel func_800C4590
/* 2F190 800C4590 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2F194 800C4594 AFB00038 */  sw         $s0, 0x38($sp)
/* 2F198 800C4598 00808021 */  addu       $s0, $a0, $zero
/* 2F19C 800C459C AFB1003C */  sw         $s1, 0x3C($sp)
/* 2F1A0 800C45A0 00A08821 */  addu       $s1, $a1, $zero
/* 2F1A4 800C45A4 2403001F */  addiu      $v1, $zero, 0x1F
/* 2F1A8 800C45A8 27A20037 */  addiu      $v0, $sp, 0x37
/* 2F1AC 800C45AC AFBF0040 */  sw         $ra, 0x40($sp)
.L800C45B0:
/* 2F1B0 800C45B0 A0510000 */  sb         $s1, 0x0($v0)
/* 2F1B4 800C45B4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 2F1B8 800C45B8 0461FFFD */  bgez       $v1, .L800C45B0
/* 2F1BC 800C45BC 2442FFFF */   addiu     $v0, $v0, -0x1
/* 2F1C0 800C45C0 AFA00010 */  sw         $zero, 0x10($sp)
/* 2F1C4 800C45C4 8E040004 */  lw         $a0, 0x4($s0)
/* 2F1C8 800C45C8 8E050008 */  lw         $a1, 0x8($s0)
/* 2F1CC 800C45CC 24060400 */  addiu      $a2, $zero, 0x400
/* 2F1D0 800C45D0 0C0314A0 */  jal        func_800C5280
/* 2F1D4 800C45D4 27A70018 */   addiu     $a3, $sp, 0x18
/* 2F1D8 800C45D8 50400001 */  beql       $v0, $zero, .L800C45E0
/* 2F1DC 800C45DC A2110065 */   sb        $s1, 0x65($s0)
.L800C45E0:
/* 2F1E0 800C45E0 8FBF0040 */  lw         $ra, 0x40($sp)
/* 2F1E4 800C45E4 8FB1003C */  lw         $s1, 0x3C($sp)
/* 2F1E8 800C45E8 8FB00038 */  lw         $s0, 0x38($sp)
/* 2F1EC 800C45EC 03E00008 */  jr         $ra
/* 2F1F0 800C45F0 27BD0048 */   addiu     $sp, $sp, 0x48
/* 2F1F4 800C45F4 00000000 */  nop
/* 2F1F8 800C45F8 00000000 */  nop
/* 2F1FC 800C45FC 00000000 */  nop
.size func_800C4590, . - func_800C4590
