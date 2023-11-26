glabel func_800365EC_ovl3
/* DFAFC 800365EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DFB00 800365F0 AFB3001C */  sw         $s3, 0x1C($sp)
/* DFB04 800365F4 00809821 */  addu       $s3, $a0, $zero
/* DFB08 800365F8 AFB10014 */  sw         $s1, 0x14($sp)
/* DFB0C 800365FC 00E08821 */  addu       $s1, $a3, $zero
/* DFB10 80036600 AFB20018 */  sw         $s2, 0x18($sp)
/* DFB14 80036604 00009021 */  addu       $s2, $zero, $zero
/* DFB18 80036608 30C600FF */  andi       $a2, $a2, 0xFF
/* DFB1C 8003660C AFBF0030 */  sw         $ra, 0x30($sp)
/* DFB20 80036610 AFB7002C */  sw         $s7, 0x2C($sp)
/* DFB24 80036614 AFB60028 */  sw         $s6, 0x28($sp)
/* DFB28 80036618 AFB50024 */  sw         $s5, 0x24($sp)
/* DFB2C 8003661C AFB40020 */  sw         $s4, 0x20($sp)
/* DFB30 80036620 10C0004C */  beqz       $a2, .L80036754_ovl3
/* DFB34 80036624 AFB00010 */   sw        $s0, 0x10($sp)
/* DFB38 80036628 3415FFFF */  ori        $s5, $zero, 0xFFFF
/* DFB3C 8003662C 30B400FF */  andi       $s4, $a1, 0xFF
/* DFB40 80036630 3C038007 */  lui        $v1, %hi(jtbl_80069DC0_ovl3)
/* DFB44 80036634 24639DC0 */  addiu      $v1, $v1, %lo(jtbl_80069DC0_ovl3)
/* DFB48 80036638 00141080 */  sll        $v0, $s4, 2
/* DFB4C 8003663C 0043B821 */  addu       $s7, $v0, $v1
/* DFB50 80036640 00C0B021 */  addu       $s6, $a2, $zero
.L80036644_ovl3:
/* DFB54 80036644 0C00D8E3 */  jal        func_8003638C_ovl3
/* DFB58 80036648 3224FFFF */   andi      $a0, $s1, 0xFFFF
/* DFB5C 8003664C 3264FFFF */  andi       $a0, $s3, 0xFFFF
/* DFB60 80036650 02802821 */  addu       $a1, $s4, $zero
/* DFB64 80036654 00003021 */  addu       $a2, $zero, $zero
/* DFB68 80036658 00408021 */  addu       $s0, $v0, $zero
/* DFB6C 8003665C A6110000 */  sh         $s1, 0x0($s0)
/* DFB70 80036660 AE150008 */  sw         $s5, 0x8($s0)
/* DFB74 80036664 0C028CB7 */  jal        func_800A32DC
/* DFB78 80036668 AE150004 */   sw        $s5, 0x4($s0)
/* DFB7C 8003666C 24030063 */  addiu      $v1, $zero, 0x63
/* DFB80 80036670 00711823 */  subu       $v1, $v1, $s1
/* DFB84 80036674 AE02000C */  sw         $v0, 0xC($s0)
/* DFB88 80036678 A443001C */  sh         $v1, 0x1C($v0)
/* DFB8C 8003667C 2E820007 */  sltiu      $v0, $s4, 0x7
/* DFB90 80036680 5040002F */  beql       $v0, $zero, .L80036740_ovl3
/* DFB94 80036684 26730001 */   addiu     $s3, $s3, 0x1
/* DFB98 80036688 8EE20000 */  lw         $v0, 0x0($s7)
/* DFB9C 8003668C 00400008 */  jr         $v0
/* DFBA0 80036690 00000000 */   nop
glabel .L80036694_ovl3
/* DFBA4 80036694 8E04000C */  lw         $a0, 0xC($s0)
/* DFBA8 80036698 24050400 */  addiu      $a1, $zero, 0x400
/* DFBAC 8003669C 0C028F9A */  jal        func_800A3E68
/* DFBB0 800366A0 24060400 */   addiu     $a2, $zero, 0x400
/* DFBB4 800366A4 8E02000C */  lw         $v0, 0xC($s0)
/* DFBB8 800366A8 8C420000 */  lw         $v0, 0x0($v0)
/* DFBBC 800366AC 0800D9CF */  j          .L8003673C_ovl3
/* DFBC0 800366B0 A040002F */   sb        $zero, 0x2F($v0)
glabel .L800366B4_ovl3
/* DFBC4 800366B4 8E04000C */  lw         $a0, 0xC($s0)
/* DFBC8 800366B8 00002821 */  addu       $a1, $zero, $zero
/* DFBCC 800366BC 0C02912A */  jal        func_800A44A8
/* DFBD0 800366C0 00003021 */   addu      $a2, $zero, $zero
/* DFBD4 800366C4 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* DFBD8 800366C8 8E04000C */  lw         $a0, 0xC($s0)
/* DFBDC 800366CC 00002821 */  addu       $a1, $zero, $zero
/* DFBE0 800366D0 0C02915B */  jal        func_800A456C
/* DFBE4 800366D4 00C03821 */   addu      $a3, $a2, $zero
/* DFBE8 800366D8 0800D9D0 */  j          .L80036740_ovl3
/* DFBEC 800366DC 26730001 */   addiu     $s3, $s3, 0x1
glabel .L800366E0_ovl3
/* DFBF0 800366E0 8E02000C */  lw         $v0, 0xC($s0)
/* DFBF4 800366E4 8C420000 */  lw         $v0, 0x0($v0)
/* DFBF8 800366E8 A440001A */  sh         $zero, 0x1A($v0)
/* DFBFC 800366EC 8E04000C */  lw         $a0, 0xC($s0)
/* DFC00 800366F0 00002821 */  addu       $a1, $zero, $zero
/* DFC04 800366F4 0C02933E */  jal        func_800A4CF8
/* DFC08 800366F8 00003021 */   addu      $a2, $zero, $zero
/* DFC0C 800366FC 8E04000C */  lw         $a0, 0xC($s0)
/* DFC10 80036700 0C02932F */  jal        func_800A4CBC
/* DFC14 80036704 26730001 */   addiu     $s3, $s3, 0x1
/* DFC18 80036708 0800D9D1 */  j          .L80036744_ovl3
/* DFC1C 8003670C 26520001 */   addiu     $s2, $s2, 0x1
glabel .L80036710_ovl3
/* DFC20 80036710 8E02000C */  lw         $v0, 0xC($s0)
/* DFC24 80036714 8C420000 */  lw         $v0, 0x0($v0)
/* DFC28 80036718 A440001A */  sh         $zero, 0x1A($v0)
/* DFC2C 8003671C 8E04000C */  lw         $a0, 0xC($s0)
/* DFC30 80036720 24050400 */  addiu      $a1, $zero, 0x400
/* DFC34 80036724 0C0292D4 */  jal        func_800A4B50
/* DFC38 80036728 24060400 */   addiu     $a2, $zero, 0x400
/* DFC3C 8003672C 8E04000C */  lw         $a0, 0xC($s0)
/* DFC40 80036730 00002821 */  addu       $a1, $zero, $zero
/* DFC44 80036734 0C02933E */  jal        func_800A4CF8
/* DFC48 80036738 00003021 */   addu      $a2, $zero, $zero
glabel .L8003673C_ovl3
/* DFC4C 8003673C 26730001 */  addiu      $s3, $s3, 0x1
.L80036740_ovl3:
/* DFC50 80036740 26520001 */  addiu      $s2, $s2, 0x1
.L80036744_ovl3:
/* DFC54 80036744 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* DFC58 80036748 0056102B */  sltu       $v0, $v0, $s6
/* DFC5C 8003674C 1440FFBD */  bnez       $v0, .L80036644_ovl3
/* DFC60 80036750 26310001 */   addiu     $s1, $s1, 0x1
.L80036754_ovl3:
/* DFC64 80036754 8FBF0030 */  lw         $ra, 0x30($sp)
/* DFC68 80036758 8FB7002C */  lw         $s7, 0x2C($sp)
/* DFC6C 8003675C 8FB60028 */  lw         $s6, 0x28($sp)
/* DFC70 80036760 8FB50024 */  lw         $s5, 0x24($sp)
/* DFC74 80036764 8FB40020 */  lw         $s4, 0x20($sp)
/* DFC78 80036768 8FB3001C */  lw         $s3, 0x1C($sp)
/* DFC7C 8003676C 8FB20018 */  lw         $s2, 0x18($sp)
/* DFC80 80036770 8FB10014 */  lw         $s1, 0x14($sp)
/* DFC84 80036774 8FB00010 */  lw         $s0, 0x10($sp)
/* DFC88 80036778 03E00008 */  jr         $ra
/* DFC8C 8003677C 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800365EC_ovl3, . - func_800365EC_ovl3
