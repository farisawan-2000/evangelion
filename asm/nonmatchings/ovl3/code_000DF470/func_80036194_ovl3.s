glabel func_80036194_ovl3
/* DF6A4 80036194 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF6A8 80036198 AFB00010 */  sw         $s0, 0x10($sp)
/* DF6AC 8003619C 00808021 */  addu       $s0, $a0, $zero
/* DF6B0 800361A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF6B4 800361A4 82020002 */  lb         $v0, 0x2($s0)
/* DF6B8 800361A8 24050001 */  addiu      $a1, $zero, 0x1
/* DF6BC 800361AC 10450019 */  beq        $v0, $a1, .L80036214_ovl3
/* DF6C0 800361B0 3C02802F */   lui       $v0, (0x802F97FF >> 16)
/* DF6C4 800361B4 8E04000C */  lw         $a0, 0xC($s0)
/* DF6C8 800361B8 8C83000C */  lw         $v1, 0xC($a0)
/* DF6CC 800361BC 344297FF */  ori        $v0, $v0, (0x802F97FF & 0xFFFF)
/* DF6D0 800361C0 0043102B */  sltu       $v0, $v0, $v1
/* DF6D4 800361C4 1440000B */  bnez       $v0, .L800361F4_ovl3
/* DF6D8 800361C8 00000000 */   nop
/* DF6DC 800361CC 82020003 */  lb         $v0, 0x3($s0)
/* DF6E0 800361D0 14450004 */  bne        $v0, $a1, .L800361E4_ovl3
/* DF6E4 800361D4 00000000 */   nop
/* DF6E8 800361D8 0C0326A1 */  jal        func_800C9A84
/* DF6EC 800361DC 8C840010 */   lw        $a0, 0x10($a0)
/* DF6F0 800361E0 8E04000C */  lw         $a0, 0xC($s0)
.L800361E4_ovl3:
/* DF6F4 800361E4 0C028D30 */  jal        func_800A34C0
/* DF6F8 800361E8 00000000 */   nop
/* DF6FC 800361EC 0800D883 */  j          .L8003620C_ovl3
/* DF700 800361F0 A6000000 */   sh        $zero, 0x0($s0)
.L800361F4_ovl3:
/* DF704 800361F4 8C840014 */  lw         $a0, 0x14($a0)
/* DF708 800361F8 0C0326A1 */  jal        func_800C9A84
/* DF70C 800361FC 00000000 */   nop
/* DF710 80036200 0C02910B */  jal        func_800A442C
/* DF714 80036204 8E04000C */   lw        $a0, 0xC($s0)
/* DF718 80036208 A6000000 */  sh         $zero, 0x0($s0)
.L8003620C_ovl3:
/* DF71C 8003620C A2000003 */  sb         $zero, 0x3($s0)
/* DF720 80036210 AE00000C */  sw         $zero, 0xC($s0)
.L80036214_ovl3:
/* DF724 80036214 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF728 80036218 8FB00010 */  lw         $s0, 0x10($sp)
/* DF72C 8003621C 03E00008 */  jr         $ra
/* DF730 80036220 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80036194_ovl3, . - func_80036194_ovl3
