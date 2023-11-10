glabel func_800AD9B4
/* 185B4 800AD9B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 185B8 800AD9B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 185BC 800AD9BC 3C108017 */  lui        $s0, %hi(D_8016D088)
/* 185C0 800AD9C0 2610D088 */  addiu      $s0, $s0, %lo(D_8016D088)
/* 185C4 800AD9C4 02002021 */  addu       $a0, $s0, $zero
/* 185C8 800AD9C8 3C058010 */  lui        $a1, %hi(D_80102910)
/* 185CC 800AD9CC 24A52910 */  addiu      $a1, $a1, %lo(D_80102910)
/* 185D0 800AD9D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 185D4 800AD9D4 0C0301A4 */  jal        func_800C0690
/* 185D8 800AD9D8 24060004 */   addiu     $a2, $zero, 0x4
/* 185DC 800AD9DC 3C048015 */  lui        $a0, %hi(D_80149D88)
/* 185E0 800AD9E0 24849D88 */  addiu      $a0, $a0, %lo(D_80149D88)
/* 185E4 800AD9E4 3C058010 */  lui        $a1, %hi(D_80102920)
/* 185E8 800AD9E8 24A52920 */  addiu      $a1, $a1, %lo(D_80102920)
/* 185EC 800AD9EC 0C0301A4 */  jal        func_800C0690
/* 185F0 800AD9F0 24060001 */   addiu     $a2, $zero, 0x1
/* 185F4 800AD9F4 3C048017 */  lui        $a0, %hi(D_8016D030)
/* 185F8 800AD9F8 2484D030 */  addiu      $a0, $a0, %lo(D_8016D030)
/* 185FC 800AD9FC 02002821 */  addu       $a1, $s0, $zero
/* 18600 800ADA00 0C02D750 */  jal        func_800B5D40
/* 18604 800ADA04 24060003 */   addiu     $a2, $zero, 0x3
/* 18608 800ADA08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1860C 800ADA0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 18610 800ADA10 03E00008 */  jr         $ra
/* 18614 800ADA14 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800AD9B4, . - func_800AD9B4
