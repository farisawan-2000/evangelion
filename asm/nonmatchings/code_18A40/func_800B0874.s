glabel func_800B0874
/* 1B474 800B0874 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1B478 800B0878 AFB20018 */  sw         $s2, 0x18($sp)
/* 1B47C 800B087C 8FB20048 */  lw         $s2, 0x48($sp)
/* 1B480 800B0880 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1B484 800B0884 00809821 */  addu       $s3, $a0, $zero
/* 1B488 800B0888 AFB40020 */  sw         $s4, 0x20($sp)
/* 1B48C 800B088C 00A0A021 */  addu       $s4, $a1, $zero
/* 1B490 800B0890 AFB50024 */  sw         $s5, 0x24($sp)
/* 1B494 800B0894 00C0A821 */  addu       $s5, $a2, $zero
/* 1B498 800B0898 AFB60028 */  sw         $s6, 0x28($sp)
/* 1B49C 800B089C 00E0B021 */  addu       $s6, $a3, $zero
/* 1B4A0 800B08A0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1B4A4 800B08A4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1B4A8 800B08A8 AFB7002C */  sw         $s7, 0x2C($sp)
/* 1B4AC 800B08AC AFB10014 */  sw         $s1, 0x14($sp)
/* 1B4B0 800B08B0 16420004 */  bne        $s2, $v0, .L800B08C4
/* 1B4B4 800B08B4 AFB00010 */   sw        $s0, 0x10($sp)
/* 1B4B8 800B08B8 001410C0 */  sll        $v0, $s4, 3
/* 1B4BC 800B08BC 02621021 */  addu       $v0, $s3, $v0
/* 1B4C0 800B08C0 8C52001C */  lw         $s2, 0x1C($v0)
.L800B08C4:
/* 1B4C4 800B08C4 3C028010 */  lui        $v0, %hi(D_80102944)
/* 1B4C8 800B08C8 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 1B4CC 800B08CC 24050004 */  addiu      $a1, $zero, 0x4
/* 1B4D0 800B08D0 3C048010 */  lui        $a0, %hi(D_80102950)
/* 1B4D4 800B08D4 8C842950 */  lw         $a0, %lo(D_80102950)($a0)
/* 1B4D8 800B08D8 00A2102A */  slt        $v0, $a1, $v0
/* 1B4DC 800B08DC 1040002B */  beqz       $v0, .L800B098C
/* 1B4E0 800B08E0 26460001 */   addiu     $a2, $s2, 0x1
/* 1B4E4 800B08E4 001410C0 */  sll        $v0, $s4, 3
/* 1B4E8 800B08E8 0262B821 */  addu       $s7, $s3, $v0
/* 1B4EC 800B08EC 00808021 */  addu       $s0, $a0, $zero
.L800B08F0:
/* 1B4F0 800B08F0 8E020004 */  lw         $v0, 0x4($s0)
/* 1B4F4 800B08F4 14400016 */  bnez       $v0, .L800B0950
/* 1B4F8 800B08F8 00000000 */   nop
/* 1B4FC 800B08FC 0C02C122 */  jal        func_800B0488
/* 1B500 800B0900 00000000 */   nop
/* 1B504 800B0904 3C028010 */  lui        $v0, %hi(D_80102960)
/* 1B508 800B0908 8C422960 */  lw         $v0, %lo(D_80102960)($v0)
/* 1B50C 800B090C A61400A6 */  sh         $s4, 0xA6($s0)
/* 1B510 800B0910 AE130078 */  sw         $s3, 0x78($s0)
/* 1B514 800B0914 A615009E */  sh         $s5, 0x9E($s0)
/* 1B518 800B0918 A61600B0 */  sh         $s6, 0xB0($s0)
/* 1B51C 800B091C AE120048 */  sw         $s2, 0x48($s0)
/* 1B520 800B0920 AE020044 */  sw         $v0, 0x44($s0)
/* 1B524 800B0924 8E630010 */  lw         $v1, 0x10($s3)
/* 1B528 800B0928 24420001 */  addiu      $v0, $v0, 0x1
/* 1B52C 800B092C 3C018010 */  lui        $at, %hi(D_80102960)
/* 1B530 800B0930 AC222960 */  sw         $v0, %lo(D_80102960)($at)
/* 1B534 800B0934 54600001 */  bnel       $v1, $zero, .L800B093C
/* 1B538 800B0938 AE03007C */   sw        $v1, 0x7C($s0)
.L800B093C:
/* 1B53C 800B093C 8EE30018 */  lw         $v1, 0x18($s7)
/* 1B540 800B0940 8E020044 */  lw         $v0, 0x44($s0)
/* 1B544 800B0944 AE030080 */  sw         $v1, 0x80($s0)
/* 1B548 800B0948 0802C27C */  j          .L800B09F0
/* 1B54C 800B094C AE030004 */   sw        $v1, 0x4($s0)
.L800B0950:
/* 1B550 800B0950 8E020078 */  lw         $v0, 0x78($s0)
/* 1B554 800B0954 10400007 */  beqz       $v0, .L800B0974
/* 1B558 800B0958 24A50001 */   addiu     $a1, $a1, 0x1
/* 1B55C 800B095C 8E030048 */  lw         $v1, 0x48($s0)
/* 1B560 800B0960 0066102A */  slt        $v0, $v1, $a2
/* 1B564 800B0964 10400003 */  beqz       $v0, .L800B0974
/* 1B568 800B0968 00000000 */   nop
/* 1B56C 800B096C 00603021 */  addu       $a2, $v1, $zero
/* 1B570 800B0970 02008821 */  addu       $s1, $s0, $zero
.L800B0974:
/* 1B574 800B0974 3C028010 */  lui        $v0, %hi(D_80102944)
/* 1B578 800B0978 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 1B57C 800B097C 2610013C */  addiu      $s0, $s0, 0x13C
/* 1B580 800B0980 00A2102A */  slt        $v0, $a1, $v0
/* 1B584 800B0984 1440FFDA */  bnez       $v0, .L800B08F0
/* 1B588 800B0988 2484013C */   addiu     $a0, $a0, 0x13C
.L800B098C:
/* 1B58C 800B098C 00D2102A */  slt        $v0, $a2, $s2
/* 1B590 800B0990 10400017 */  beqz       $v0, .L800B09F0
/* 1B594 800B0994 00001021 */   addu      $v0, $zero, $zero
/* 1B598 800B0998 0C02C122 */  jal        func_800B0488
/* 1B59C 800B099C 02202021 */   addu      $a0, $s1, $zero
/* 1B5A0 800B09A0 3C028010 */  lui        $v0, %hi(D_80102960)
/* 1B5A4 800B09A4 8C422960 */  lw         $v0, %lo(D_80102960)($v0)
/* 1B5A8 800B09A8 A63400A6 */  sh         $s4, 0xA6($s1)
/* 1B5AC 800B09AC AE330078 */  sw         $s3, 0x78($s1)
/* 1B5B0 800B09B0 A635009E */  sh         $s5, 0x9E($s1)
/* 1B5B4 800B09B4 A63600B0 */  sh         $s6, 0xB0($s1)
/* 1B5B8 800B09B8 AE320048 */  sw         $s2, 0x48($s1)
/* 1B5BC 800B09BC AE220044 */  sw         $v0, 0x44($s1)
/* 1B5C0 800B09C0 8E630010 */  lw         $v1, 0x10($s3)
/* 1B5C4 800B09C4 24420001 */  addiu      $v0, $v0, 0x1
/* 1B5C8 800B09C8 3C018010 */  lui        $at, %hi(D_80102960)
/* 1B5CC 800B09CC AC222960 */  sw         $v0, %lo(D_80102960)($at)
/* 1B5D0 800B09D0 54600001 */  bnel       $v1, $zero, .L800B09D8
/* 1B5D4 800B09D4 AE23007C */   sw        $v1, 0x7C($s1)
.L800B09D8:
/* 1B5D8 800B09D8 001418C0 */  sll        $v1, $s4, 3
/* 1B5DC 800B09DC 02631821 */  addu       $v1, $s3, $v1
/* 1B5E0 800B09E0 8C630018 */  lw         $v1, 0x18($v1)
/* 1B5E4 800B09E4 8E220044 */  lw         $v0, 0x44($s1)
/* 1B5E8 800B09E8 AE230080 */  sw         $v1, 0x80($s1)
/* 1B5EC 800B09EC AE230004 */  sw         $v1, 0x4($s1)
.L800B09F0:
/* 1B5F0 800B09F0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1B5F4 800B09F4 8FB7002C */  lw         $s7, 0x2C($sp)
/* 1B5F8 800B09F8 8FB60028 */  lw         $s6, 0x28($sp)
/* 1B5FC 800B09FC 8FB50024 */  lw         $s5, 0x24($sp)
/* 1B600 800B0A00 8FB40020 */  lw         $s4, 0x20($sp)
/* 1B604 800B0A04 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1B608 800B0A08 8FB20018 */  lw         $s2, 0x18($sp)
/* 1B60C 800B0A0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1B610 800B0A10 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B614 800B0A14 03E00008 */  jr         $ra
/* 1B618 800B0A18 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800B0874, . - func_800B0874