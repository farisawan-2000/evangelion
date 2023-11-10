glabel func_800B5DD0
/* 209D0 800B5DD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 209D4 800B5DD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 209D8 800B5DD8 00808821 */  addu       $s1, $a0, $zero
/* 209DC 800B5DDC 24040001 */  addiu      $a0, $zero, 0x1
/* 209E0 800B5DE0 AFB00010 */  sw         $s0, 0x10($sp)
/* 209E4 800B5DE4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 209E8 800B5DE8 0C02E2DC */  jal        func_800B8B70
/* 209EC 800B5DEC 00A08021 */   addu      $s0, $a1, $zero
/* 209F0 800B5DF0 00402021 */  addu       $a0, $v0, $zero
/* 209F4 800B5DF4 0C02E2DC */  jal        func_800B8B70
/* 209F8 800B5DF8 A6300008 */   sh        $s0, 0x8($s1)
/* 209FC 800B5DFC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 20A00 800B5E00 8FB10014 */  lw         $s1, 0x14($sp)
/* 20A04 800B5E04 8FB00010 */  lw         $s0, 0x10($sp)
/* 20A08 800B5E08 03E00008 */  jr         $ra
/* 20A0C 800B5E0C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B5DD0, . - func_800B5DD0
