glabel func_800B68A0
/* 214A0 800B68A0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 214A4 800B68A4 AFB10044 */  sw         $s1, 0x44($sp)
/* 214A8 800B68A8 00808821 */  addu       $s1, $a0, $zero
/* 214AC 800B68AC AFB00040 */  sw         $s0, 0x40($sp)
/* 214B0 800B68B0 27B00020 */  addiu      $s0, $sp, 0x20
/* 214B4 800B68B4 02002021 */  addu       $a0, $s0, $zero
/* 214B8 800B68B8 27A50038 */  addiu      $a1, $sp, 0x38
/* 214BC 800B68BC AFBF0048 */  sw         $ra, 0x48($sp)
/* 214C0 800B68C0 0C0301A4 */  jal        func_800C0690
/* 214C4 800B68C4 24060001 */   addiu     $a2, $zero, 0x1
/* 214C8 800B68C8 27A40010 */  addiu      $a0, $sp, 0x10
/* 214CC 800B68CC 02002821 */  addu       $a1, $s0, $zero
/* 214D0 800B68D0 0C02D750 */  jal        func_800B5D40
/* 214D4 800B68D4 24060001 */   addiu     $a2, $zero, 0x1
/* 214D8 800B68D8 12200007 */  beqz       $s1, .L800B68F8
/* 214DC 800B68DC 27A40020 */   addiu     $a0, $sp, 0x20
.L800B68E0:
/* 214E0 800B68E0 00002821 */  addu       $a1, $zero, $zero
/* 214E4 800B68E4 0C030200 */  jal        func_800C0800
/* 214E8 800B68E8 24060001 */   addiu     $a2, $zero, 0x1
/* 214EC 800B68EC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 214F0 800B68F0 1620FFFB */  bnez       $s1, .L800B68E0
/* 214F4 800B68F4 27A40020 */   addiu     $a0, $sp, 0x20
.L800B68F8:
/* 214F8 800B68F8 0C02D784 */  jal        func_800B5E10
/* 214FC 800B68FC 27A40010 */   addiu     $a0, $sp, 0x10
/* 21500 800B6900 8FBF0048 */  lw         $ra, 0x48($sp)
/* 21504 800B6904 8FB10044 */  lw         $s1, 0x44($sp)
/* 21508 800B6908 8FB00040 */  lw         $s0, 0x40($sp)
/* 2150C 800B690C 03E00008 */  jr         $ra
/* 21510 800B6910 27BD0050 */   addiu     $sp, $sp, 0x50
/* 21514 800B6914 00000000 */  nop
/* 21518 800B6918 00000000 */  nop
/* 2151C 800B691C 00000000 */  nop
.size func_800B68A0, . - func_800B68A0
