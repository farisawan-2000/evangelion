glabel func_80036224_ovl3
/* DF734 80036224 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DF738 80036228 AFB10014 */  sw         $s1, 0x14($sp)
/* DF73C 8003622C 3C118007 */  lui        $s1, %hi(D_8006C588_ovl3)
/* DF740 80036230 8E31C588 */  lw         $s1, %lo(D_8006C588_ovl3)($s1)
/* DF744 80036234 AFB20018 */  sw         $s2, 0x18($sp)
/* DF748 80036238 00009021 */  addu       $s2, $zero, $zero
/* DF74C 8003623C AFB3001C */  sw         $s3, 0x1C($sp)
/* DF750 80036240 24130001 */  addiu      $s3, $zero, 0x1
/* DF754 80036244 AFB40020 */  sw         $s4, 0x20($sp)
/* DF758 80036248 3C14802F */  lui        $s4, (0x802F97FF >> 16)
/* DF75C 8003624C 369497FF */  ori        $s4, $s4, (0x802F97FF & 0xFFFF)
/* DF760 80036250 AFBF0024 */  sw         $ra, 0x24($sp)
/* DF764 80036254 AFB00010 */  sw         $s0, 0x10($sp)
/* DF768 80036258 2630000C */  addiu      $s0, $s1, 0xC
.L8003625C_ovl3:
/* DF76C 8003625C 96220000 */  lhu        $v0, 0x0($s1)
/* DF770 80036260 5040001B */  beql       $v0, $zero, .L800362D0_ovl3
/* DF774 80036264 26520001 */   addiu     $s2, $s2, 0x1
/* DF778 80036268 8202FFF6 */  lb         $v0, -0xA($s0)
/* DF77C 8003626C 50530018 */  beql       $v0, $s3, .L800362D0_ovl3
/* DF780 80036270 26520001 */   addiu     $s2, $s2, 0x1
/* DF784 80036274 8E030000 */  lw         $v1, 0x0($s0)
/* DF788 80036278 8C62000C */  lw         $v0, 0xC($v1)
/* DF78C 8003627C 0282102B */  sltu       $v0, $s4, $v0
/* DF790 80036280 1440000A */  bnez       $v0, .L800362AC_ovl3
/* DF794 80036284 00000000 */   nop
/* DF798 80036288 8202FFF7 */  lb         $v0, -0x9($s0)
/* DF79C 8003628C 14530003 */  bne        $v0, $s3, .L8003629C_ovl3
/* DF7A0 80036290 00000000 */   nop
/* DF7A4 80036294 0C0326A1 */  jal        func_800C9A84
/* DF7A8 80036298 8C640010 */   lw        $a0, 0x10($v1)
.L8003629C_ovl3:
/* DF7AC 8003629C 0C028D30 */  jal        func_800A34C0
/* DF7B0 800362A0 8E040000 */   lw        $a0, 0x0($s0)
/* DF7B4 800362A4 0800D8B1 */  j          .L800362C4_ovl3
/* DF7B8 800362A8 A6200000 */   sh        $zero, 0x0($s1)
.L800362AC_ovl3:
/* DF7BC 800362AC 8C640014 */  lw         $a0, 0x14($v1)
/* DF7C0 800362B0 0C0326A1 */  jal        func_800C9A84
/* DF7C4 800362B4 00000000 */   nop
/* DF7C8 800362B8 0C02910B */  jal        func_800A442C
/* DF7CC 800362BC 8E040000 */   lw        $a0, 0x0($s0)
/* DF7D0 800362C0 A6200000 */  sh         $zero, 0x0($s1)
.L800362C4_ovl3:
/* DF7D4 800362C4 A200FFF7 */  sb         $zero, -0x9($s0)
/* DF7D8 800362C8 AE000000 */  sw         $zero, 0x0($s0)
/* DF7DC 800362CC 26520001 */  addiu      $s2, $s2, 0x1
.L800362D0_ovl3:
/* DF7E0 800362D0 26100010 */  addiu      $s0, $s0, 0x10
/* DF7E4 800362D4 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* DF7E8 800362D8 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DF7EC 800362DC 1440FFDF */  bnez       $v0, .L8003625C_ovl3
/* DF7F0 800362E0 26310010 */   addiu     $s1, $s1, 0x10
/* DF7F4 800362E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* DF7F8 800362E8 8FB40020 */  lw         $s4, 0x20($sp)
/* DF7FC 800362EC 8FB3001C */  lw         $s3, 0x1C($sp)
/* DF800 800362F0 8FB20018 */  lw         $s2, 0x18($sp)
/* DF804 800362F4 8FB10014 */  lw         $s1, 0x14($sp)
/* DF808 800362F8 8FB00010 */  lw         $s0, 0x10($sp)
/* DF80C 800362FC 03E00008 */  jr         $ra
/* DF810 80036300 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80036224_ovl3, . - func_80036224_ovl3
