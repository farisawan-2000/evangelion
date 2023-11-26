glabel func_8003638C_ovl3
/* DF89C 8003638C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF8A0 80036390 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* DF8A4 80036394 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF8A8 80036398 1080002D */  beqz       $a0, .L80036450_ovl3
/* DF8AC 8003639C AFB00010 */   sw        $s0, 0x10($sp)
/* DF8B0 800363A0 00002821 */  addu       $a1, $zero, $zero
/* DF8B4 800363A4 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* DF8B8 800363A8 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
.L800363AC_ovl3:
/* DF8BC 800363AC 94620000 */  lhu        $v0, 0x0($v1)
/* DF8C0 800363B0 1044001B */  beq        $v0, $a0, .L80036420_ovl3
/* DF8C4 800363B4 24A50001 */   addiu     $a1, $a1, 0x1
/* DF8C8 800363B8 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* DF8CC 800363BC 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DF8D0 800363C0 1440FFFA */  bnez       $v0, .L800363AC_ovl3
/* DF8D4 800363C4 24630010 */   addiu     $v1, $v1, 0x10
/* DF8D8 800363C8 00008021 */  addu       $s0, $zero, $zero
.L800363CC_ovl3:
/* DF8DC 800363CC 12000020 */  beqz       $s0, .L80036450_ovl3
/* DF8E0 800363D0 24050001 */   addiu     $a1, $zero, 0x1
/* DF8E4 800363D4 82020002 */  lb         $v0, 0x2($s0)
/* DF8E8 800363D8 1045001B */  beq        $v0, $a1, .L80036448_ovl3
/* DF8EC 800363DC 3C02802F */   lui       $v0, (0x802F97FF >> 16)
/* DF8F0 800363E0 8E04000C */  lw         $a0, 0xC($s0)
/* DF8F4 800363E4 8C83000C */  lw         $v1, 0xC($a0)
/* DF8F8 800363E8 344297FF */  ori        $v0, $v0, (0x802F97FF & 0xFFFF)
/* DF8FC 800363EC 0043102B */  sltu       $v0, $v0, $v1
/* DF900 800363F0 1440000D */  bnez       $v0, .L80036428_ovl3
/* DF904 800363F4 00000000 */   nop
/* DF908 800363F8 82020003 */  lb         $v0, 0x3($s0)
/* DF90C 800363FC 14450004 */  bne        $v0, $a1, .L80036410_ovl3
/* DF910 80036400 00000000 */   nop
/* DF914 80036404 0C0326A1 */  jal        func_800C9A84
/* DF918 80036408 8C840010 */   lw        $a0, 0x10($a0)
/* DF91C 8003640C 8E04000C */  lw         $a0, 0xC($s0)
.L80036410_ovl3:
/* DF920 80036410 0C028D30 */  jal        func_800A34C0
/* DF924 80036414 00000000 */   nop
/* DF928 80036418 0800D910 */  j          .L80036440_ovl3
/* DF92C 8003641C A6000000 */   sh        $zero, 0x0($s0)
.L80036420_ovl3:
/* DF930 80036420 0800D8F3 */  j          .L800363CC_ovl3
/* DF934 80036424 00608021 */   addu      $s0, $v1, $zero
.L80036428_ovl3:
/* DF938 80036428 8C840014 */  lw         $a0, 0x14($a0)
/* DF93C 8003642C 0C0326A1 */  jal        func_800C9A84
/* DF940 80036430 00000000 */   nop
/* DF944 80036434 0C02910B */  jal        func_800A442C
/* DF948 80036438 8E04000C */   lw        $a0, 0xC($s0)
/* DF94C 8003643C A6000000 */  sh         $zero, 0x0($s0)
.L80036440_ovl3:
/* DF950 80036440 A2000003 */  sb         $zero, 0x3($s0)
/* DF954 80036444 AE00000C */  sw         $zero, 0xC($s0)
.L80036448_ovl3:
/* DF958 80036448 0800D921 */  j          .L80036484_ovl3
/* DF95C 8003644C 02001021 */   addu      $v0, $s0, $zero
.L80036450_ovl3:
/* DF960 80036450 00002021 */  addu       $a0, $zero, $zero
/* DF964 80036454 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* DF968 80036458 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
.L8003645C_ovl3:
/* DF96C 8003645C 94620000 */  lhu        $v0, 0x0($v1)
/* DF970 80036460 10400007 */  beqz       $v0, .L80036480_ovl3
/* DF974 80036464 24840001 */   addiu     $a0, $a0, 0x1
/* DF978 80036468 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* DF97C 8003646C 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DF980 80036470 1440FFFA */  bnez       $v0, .L8003645C_ovl3
/* DF984 80036474 24630010 */   addiu     $v1, $v1, 0x10
/* DF988 80036478 0C032934 */  jal        func_800CA4D0
/* DF98C 8003647C 00000000 */   nop
.L80036480_ovl3:
/* DF990 80036480 00601021 */  addu       $v0, $v1, $zero
.L80036484_ovl3:
/* DF994 80036484 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF998 80036488 8FB00010 */  lw         $s0, 0x10($sp)
/* DF99C 8003648C 03E00008 */  jr         $ra
/* DF9A0 80036490 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_8003638C_ovl3, . - func_8003638C_ovl3
