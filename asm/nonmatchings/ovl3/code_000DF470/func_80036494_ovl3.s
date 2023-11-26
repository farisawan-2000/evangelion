glabel func_80036494_ovl3
/* DF9A4 80036494 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DF9A8 80036498 AFB3001C */  sw         $s3, 0x1C($sp)
/* DF9AC 8003649C 00C09821 */  addu       $s3, $a2, $zero
/* DF9B0 800364A0 AFB00010 */  sw         $s0, 0x10($sp)
/* DF9B4 800364A4 00808021 */  addu       $s0, $a0, $zero
/* DF9B8 800364A8 AFB10014 */  sw         $s1, 0x14($sp)
/* DF9BC 800364AC 00A08821 */  addu       $s1, $a1, $zero
/* DF9C0 800364B0 AFB20018 */  sw         $s2, 0x18($sp)
/* DF9C4 800364B4 02609021 */  addu       $s2, $s3, $zero
/* DF9C8 800364B8 AFBF0020 */  sw         $ra, 0x20($sp)
/* DF9CC 800364BC 0C00D8E3 */  jal        func_8003638C_ovl3
/* DF9D0 800364C0 3244FFFF */   andi      $a0, $s2, 0xFFFF
/* DF9D4 800364C4 3204FFFF */  andi       $a0, $s0, 0xFFFF
/* DF9D8 800364C8 323100FF */  andi       $s1, $s1, 0xFF
/* DF9DC 800364CC 02202821 */  addu       $a1, $s1, $zero
/* DF9E0 800364D0 00003021 */  addu       $a2, $zero, $zero
/* DF9E4 800364D4 00408021 */  addu       $s0, $v0, $zero
/* DF9E8 800364D8 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* DF9EC 800364DC A6120000 */  sh         $s2, 0x0($s0)
/* DF9F0 800364E0 AE020008 */  sw         $v0, 0x8($s0)
/* DF9F4 800364E4 0C028CB7 */  jal        func_800A32DC
/* DF9F8 800364E8 AE020004 */   sw        $v0, 0x4($s0)
/* DF9FC 800364EC 24030063 */  addiu      $v1, $zero, 0x63
/* DFA00 800364F0 00731823 */  subu       $v1, $v1, $s3
/* DFA04 800364F4 AE02000C */  sw         $v0, 0xC($s0)
/* DFA08 800364F8 A443001C */  sh         $v1, 0x1C($v0)
/* DFA0C 800364FC 2E220007 */  sltiu      $v0, $s1, 0x7
/* DFA10 80036500 10400032 */  beqz       $v0, .L800365CC_ovl3
/* DFA14 80036504 00111080 */   sll       $v0, $s1, 2
/* DFA18 80036508 3C018007 */  lui        $at, %hi(jtbl_80069DA0_ovl3)
/* DFA1C 8003650C 00220821 */  addu       $at, $at, $v0
/* DFA20 80036510 8C229DA0 */  lw         $v0, %lo(jtbl_80069DA0_ovl3)($at)
/* DFA24 80036514 00400008 */  jr         $v0
/* DFA28 80036518 00000000 */   nop
glabel .L8003651C_ovl3
/* DFA2C 8003651C 8E04000C */  lw         $a0, 0xC($s0)
/* DFA30 80036520 24050400 */  addiu      $a1, $zero, 0x400
/* DFA34 80036524 0C028F9A */  jal        func_800A3E68
/* DFA38 80036528 24060400 */   addiu     $a2, $zero, 0x400
/* DFA3C 8003652C 8E02000C */  lw         $v0, 0xC($s0)
/* DFA40 80036530 8C420000 */  lw         $v0, 0x0($v0)
/* DFA44 80036534 0800D973 */  j          .L800365CC_ovl3
/* DFA48 80036538 A040002F */   sb        $zero, 0x2F($v0)
glabel .L8003653C_ovl3
/* DFA4C 8003653C 8E04000C */  lw         $a0, 0xC($s0)
/* DFA50 80036540 00002821 */  addu       $a1, $zero, $zero
/* DFA54 80036544 0C02912A */  jal        func_800A44A8
/* DFA58 80036548 00003021 */   addu      $a2, $zero, $zero
/* DFA5C 8003654C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DFA60 80036550 44810000 */  mtc1       $at, $f0
/* DFA64 80036554 8E04000C */  lw         $a0, 0xC($s0)
/* DFA68 80036558 44060000 */  mfc1       $a2, $f0
/* DFA6C 8003655C 00002821 */  addu       $a1, $zero, $zero
/* DFA70 80036560 0C02915B */  jal        func_800A456C
/* DFA74 80036564 00C03821 */   addu      $a3, $a2, $zero
/* DFA78 80036568 0800D974 */  j          .L800365D0_ovl3
/* DFA7C 8003656C 02001021 */   addu      $v0, $s0, $zero
glabel .L80036570_ovl3
/* DFA80 80036570 8E02000C */  lw         $v0, 0xC($s0)
/* DFA84 80036574 8C420000 */  lw         $v0, 0x0($v0)
/* DFA88 80036578 A440001A */  sh         $zero, 0x1A($v0)
/* DFA8C 8003657C 8E04000C */  lw         $a0, 0xC($s0)
/* DFA90 80036580 00002821 */  addu       $a1, $zero, $zero
/* DFA94 80036584 0C02933E */  jal        func_800A4CF8
/* DFA98 80036588 00003021 */   addu      $a2, $zero, $zero
/* DFA9C 8003658C 8E04000C */  lw         $a0, 0xC($s0)
/* DFAA0 80036590 0C02932F */  jal        func_800A4CBC
/* DFAA4 80036594 00000000 */   nop
/* DFAA8 80036598 0800D974 */  j          .L800365D0_ovl3
/* DFAAC 8003659C 02001021 */   addu      $v0, $s0, $zero
glabel .L800365A0_ovl3
/* DFAB0 800365A0 8E02000C */  lw         $v0, 0xC($s0)
/* DFAB4 800365A4 8C420000 */  lw         $v0, 0x0($v0)
/* DFAB8 800365A8 A440001A */  sh         $zero, 0x1A($v0)
/* DFABC 800365AC 8E04000C */  lw         $a0, 0xC($s0)
/* DFAC0 800365B0 24050400 */  addiu      $a1, $zero, 0x400
/* DFAC4 800365B4 0C0292D4 */  jal        func_800A4B50
/* DFAC8 800365B8 24060400 */   addiu     $a2, $zero, 0x400
/* DFACC 800365BC 8E04000C */  lw         $a0, 0xC($s0)
/* DFAD0 800365C0 00002821 */  addu       $a1, $zero, $zero
/* DFAD4 800365C4 0C02933E */  jal        func_800A4CF8
/* DFAD8 800365C8 00003021 */   addu      $a2, $zero, $zero
glabel .L800365CC_ovl3
/* DFADC 800365CC 02001021 */  addu       $v0, $s0, $zero
.L800365D0_ovl3:
/* DFAE0 800365D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* DFAE4 800365D4 8FB3001C */  lw         $s3, 0x1C($sp)
/* DFAE8 800365D8 8FB20018 */  lw         $s2, 0x18($sp)
/* DFAEC 800365DC 8FB10014 */  lw         $s1, 0x14($sp)
/* DFAF0 800365E0 8FB00010 */  lw         $s0, 0x10($sp)
/* DFAF4 800365E4 03E00008 */  jr         $ra
/* DFAF8 800365E8 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80036494_ovl3, . - func_80036494_ovl3
