glabel func_800ADBA0
/* 187A0 800ADBA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 187A4 800ADBA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 187A8 800ADBA8 00C08021 */  addu       $s0, $a2, $zero
/* 187AC 800ADBAC 24A20001 */  addiu      $v0, $a1, 0x1
/* 187B0 800ADBB0 3C05800F */  lui        $a1, %hi(D_800F1230)
/* 187B4 800ADBB4 8CA51230 */  lw         $a1, %lo(D_800F1230)($a1)
/* 187B8 800ADBB8 2406FFFE */  addiu      $a2, $zero, -0x2
/* 187BC 800ADBBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 187C0 800ADBC0 0C02DB40 */  jal        func_800B6D00
/* 187C4 800ADBC4 00463024 */   and       $a2, $v0, $a2
/* 187C8 800ADBC8 3C04800F */  lui        $a0, %hi(D_800F1230)
/* 187CC 800ADBCC 8C841230 */  lw         $a0, %lo(D_800F1230)($a0)
/* 187D0 800ADBD0 0C02BAC1 */  jal        func_800AEB04
/* 187D4 800ADBD4 02002821 */   addu      $a1, $s0, $zero
/* 187D8 800ADBD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 187DC 800ADBDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 187E0 800ADBE0 03E00008 */  jr         $ra
/* 187E4 800ADBE4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 187E8 800ADBE8 00000000 */  nop
/* 187EC 800ADBEC 00000000 */  nop
.size func_800ADBA0, . - func_800ADBA0
