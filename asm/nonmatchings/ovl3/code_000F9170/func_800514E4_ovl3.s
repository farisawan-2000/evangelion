glabel func_800514E4_ovl3
/* FA9F4 800514E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FA9F8 800514E8 AFBF002C */  sw         $ra, 0x2C($sp)
/* FA9FC 800514EC AFB20028 */  sw         $s2, 0x28($sp)
/* FAA00 800514F0 AFB10024 */  sw         $s1, 0x24($sp)
/* FAA04 800514F4 0C00E109 */  jal        func_80038424_ovl3
/* FAA08 800514F8 AFB00020 */   sw        $s0, 0x20($sp)
/* FAA0C 800514FC 2404024C */  addiu      $a0, $zero, 0x24C
/* FAA10 80051500 24050002 */  addiu      $a1, $zero, 0x2
/* FAA14 80051504 0C00D925 */  jal        func_80036494_ovl3
/* FAA18 80051508 24060036 */   addiu     $a2, $zero, 0x36
/* FAA1C 8005150C 00409021 */  addu       $s2, $v0, $zero
/* FAA20 80051510 8E44000C */  lw         $a0, 0xC($s2)
/* FAA24 80051514 24050040 */  addiu      $a1, $zero, 0x40
/* FAA28 80051518 0C028D89 */  jal        func_800A3624
/* FAA2C 8005151C 240600C0 */   addiu     $a2, $zero, 0xC0
/* FAA30 80051520 8E43000C */  lw         $v1, 0xC($s2)
/* FAA34 80051524 9462001E */  lhu        $v0, 0x1E($v1)
/* FAA38 80051528 24040036 */  addiu      $a0, $zero, 0x36
/* FAA3C 8005152C 24050037 */  addiu      $a1, $zero, 0x37
/* FAA40 80051530 34420004 */  ori        $v0, $v0, 0x4
/* FAA44 80051534 0C00DD19 */  jal        func_80037464_ovl3
/* FAA48 80051538 A462001E */   sh        $v0, 0x1E($v1)
/* FAA4C 8005153C 00409021 */  addu       $s2, $v0, $zero
/* FAA50 80051540 8E44000C */  lw         $a0, 0xC($s2)
/* FAA54 80051544 24050040 */  addiu      $a1, $zero, 0x40
/* FAA58 80051548 0C028D89 */  jal        func_800A3624
/* FAA5C 8005154C 240600C0 */   addiu     $a2, $zero, 0xC0
/* FAA60 80051550 8E43000C */  lw         $v1, 0xC($s2)
/* FAA64 80051554 9462001E */  lhu        $v0, 0x1E($v1)
/* FAA68 80051558 24110007 */  addiu      $s1, $zero, 0x7
/* FAA6C 8005155C 34420004 */  ori        $v0, $v0, 0x4
/* FAA70 80051560 A462001E */  sh         $v0, 0x1E($v1)
.L80051564_ovl3:
/* FAA74 80051564 8E44000C */  lw         $a0, 0xC($s2)
/* FAA78 80051568 323000FF */  andi       $s0, $s1, 0xFF
/* FAA7C 8005156C 02002821 */  addu       $a1, $s0, $zero
/* FAA80 80051570 0C00DE7C */  jal        func_800379F0_ovl3
/* FAA84 80051574 26310001 */   addiu     $s1, $s1, 0x1
/* FAA88 80051578 8E44000C */  lw         $a0, 0xC($s2)
/* FAA8C 8005157C 02002821 */  addu       $a1, $s0, $zero
/* FAA90 80051580 24420842 */  addiu      $v0, $v0, 0x842
/* FAA94 80051584 0C00DE6C */  jal        func_800379B0_ovl3
/* FAA98 80051588 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FAA9C 8005158C 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FAAA0 80051590 2C42000B */  sltiu      $v0, $v0, 0xB
/* FAAA4 80051594 1440FFF3 */  bnez       $v0, .L80051564_ovl3
/* FAAA8 80051598 2405FFFE */   addiu     $a1, $zero, -0x2
/* FAAAC 8005159C 3C048007 */  lui        $a0, %hi(D_80069504_ovl3)
/* FAAB0 800515A0 24849504 */  addiu      $a0, $a0, %lo(D_80069504_ovl3)
/* FAAB4 800515A4 2402FFFE */  addiu      $v0, $zero, -0x2
/* FAAB8 800515A8 A3A2001C */  sb         $v0, 0x1C($sp)
/* FAABC 800515AC 24020001 */  addiu      $v0, $zero, 0x1
/* FAAC0 800515B0 A3A2001E */  sb         $v0, 0x1E($sp)
/* FAAC4 800515B4 24020002 */  addiu      $v0, $zero, 0x2
/* FAAC8 800515B8 AFA40018 */  sw         $a0, 0x18($sp)
/* FAACC 800515BC A3A0001D */  sb         $zero, 0x1D($sp)
/* FAAD0 800515C0 0C029D2A */  jal        func_800A74A8
/* FAAD4 800515C4 A3A2001F */   sb        $v0, 0x1F($sp)
/* FAAD8 800515C8 27A40018 */  addiu      $a0, $sp, 0x18
/* FAADC 800515CC 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FAAE0 800515D0 240620D3 */  addiu      $a2, $zero, 0x20D3
/* FAAE4 800515D4 240300A7 */  addiu      $v1, $zero, 0xA7
/* FAAE8 800515D8 AFA30010 */  sw         $v1, 0x10($sp)
/* FAAEC 800515DC 00021FC2 */  srl        $v1, $v0, 31
/* FAAF0 800515E0 00621821 */  addu       $v1, $v1, $v0
/* FAAF4 800515E4 00031843 */  sra        $v1, $v1, 1
/* FAAF8 800515E8 240700A0 */  addiu      $a3, $zero, 0xA0
/* FAAFC 800515EC 00E33823 */  subu       $a3, $a3, $v1
/* FAB00 800515F0 00073C00 */  sll        $a3, $a3, 16
/* FAB04 800515F4 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FAB08 800515F8 00073C03 */   sra       $a3, $a3, 16
/* FAB0C 800515FC 8FBF002C */  lw         $ra, 0x2C($sp)
/* FAB10 80051600 8FB20028 */  lw         $s2, 0x28($sp)
/* FAB14 80051604 8FB10024 */  lw         $s1, 0x24($sp)
/* FAB18 80051608 8FB00020 */  lw         $s0, 0x20($sp)
/* FAB1C 8005160C 03E00008 */  jr         $ra
/* FAB20 80051610 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800514E4_ovl3, . - func_800514E4_ovl3
