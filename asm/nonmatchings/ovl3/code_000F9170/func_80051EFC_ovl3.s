glabel func_80051EFC_ovl3
/* FB40C 80051EFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FB410 80051F00 AFBF002C */  sw         $ra, 0x2C($sp)
/* FB414 80051F04 AFB40028 */  sw         $s4, 0x28($sp)
/* FB418 80051F08 AFB30024 */  sw         $s3, 0x24($sp)
/* FB41C 80051F0C AFB20020 */  sw         $s2, 0x20($sp)
/* FB420 80051F10 AFB1001C */  sw         $s1, 0x1C($sp)
/* FB424 80051F14 0C00E109 */  jal        func_80038424_ovl3
/* FB428 80051F18 AFB00018 */   sw        $s0, 0x18($sp)
/* FB42C 80051F1C 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* FB430 80051F20 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* FB434 80051F24 24050264 */  addiu      $a1, $zero, 0x264
/* FB438 80051F28 24060009 */  addiu      $a2, $zero, 0x9
/* FB43C 80051F2C 0C00D9E0 */  jal        func_80036780_ovl3
/* FB440 80051F30 2407001B */   addiu     $a3, $zero, 0x1B
/* FB444 80051F34 8C44000C */  lw         $a0, 0xC($v0)
/* FB448 80051F38 24050040 */  addiu      $a1, $zero, 0x40
/* FB44C 80051F3C 240600C0 */  addiu      $a2, $zero, 0xC0
/* FB450 80051F40 0C028D89 */  jal        func_800A3624
/* FB454 80051F44 00008821 */   addu      $s1, $zero, $zero
/* FB458 80051F48 323000FF */  andi       $s0, $s1, 0xFF
.L80051F4C_ovl3:
/* FB45C 80051F4C 00108040 */  sll        $s0, $s0, 1
/* FB460 80051F50 2604026D */  addiu      $a0, $s0, 0x26D
/* FB464 80051F54 24050001 */  addiu      $a1, $zero, 0x1
/* FB468 80051F58 0C00D925 */  jal        func_80036494_ovl3
/* FB46C 80051F5C 26060017 */   addiu     $a2, $s0, 0x17
/* FB470 80051F60 8C44000C */  lw         $a0, 0xC($v0)
/* FB474 80051F64 24050100 */  addiu      $a1, $zero, 0x100
/* FB478 80051F68 24060140 */  addiu      $a2, $zero, 0x140
/* FB47C 80051F6C 0C028D89 */  jal        func_800A3624
/* FB480 80051F70 26310001 */   addiu     $s1, $s1, 0x1
/* FB484 80051F74 2604026E */  addiu      $a0, $s0, 0x26E
/* FB488 80051F78 24050001 */  addiu      $a1, $zero, 0x1
/* FB48C 80051F7C 0C00D925 */  jal        func_80036494_ovl3
/* FB490 80051F80 26060018 */   addiu     $a2, $s0, 0x18
/* FB494 80051F84 8C44000C */  lw         $a0, 0xC($v0)
/* FB498 80051F88 24050240 */  addiu      $a1, $zero, 0x240
/* FB49C 80051F8C 0C028D89 */  jal        func_800A3624
/* FB4A0 80051F90 24060180 */   addiu     $a2, $zero, 0x180
/* FB4A4 80051F94 322200FF */  andi       $v0, $s1, 0xFF
/* FB4A8 80051F98 2C420002 */  sltiu      $v0, $v0, 0x2
/* FB4AC 80051F9C 1440FFEB */  bnez       $v0, .L80051F4C_ovl3
/* FB4B0 80051FA0 323000FF */   andi      $s0, $s1, 0xFF
/* FB4B4 80051FA4 27A40010 */  addiu      $a0, $sp, 0x10
/* FB4B8 80051FA8 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FB4BC 80051FAC 00003021 */  addu       $a2, $zero, $zero
/* FB4C0 80051FB0 3C028007 */  lui        $v0, %hi(D_800695C8_ovl3)
/* FB4C4 80051FB4 244295C8 */  addiu      $v0, $v0, %lo(D_800695C8_ovl3)
/* FB4C8 80051FB8 2413FFFE */  addiu      $s3, $zero, -0x2
/* FB4CC 80051FBC 24120001 */  addiu      $s2, $zero, 0x1
/* FB4D0 80051FC0 24110003 */  addiu      $s1, $zero, 0x3
/* FB4D4 80051FC4 AFA20010 */  sw         $v0, 0x10($sp)
/* FB4D8 80051FC8 A3B30014 */  sb         $s3, 0x14($sp)
/* FB4DC 80051FCC A3A00015 */  sb         $zero, 0x15($sp)
/* FB4E0 80051FD0 A3B20016 */  sb         $s2, 0x16($sp)
/* FB4E4 80051FD4 0C00DE82 */  jal        func_80037A08_ovl3
/* FB4E8 80051FD8 A3B10017 */   sb        $s1, 0x17($sp)
/* FB4EC 80051FDC 0C00D8C1 */  jal        func_80036304_ovl3
/* FB4F0 80051FE0 240420C9 */   addiu     $a0, $zero, 0x20C9
/* FB4F4 80051FE4 0040A021 */  addu       $s4, $v0, $zero
/* FB4F8 80051FE8 8E84000C */  lw         $a0, 0xC($s4)
/* FB4FC 80051FEC 8C82000C */  lw         $v0, 0xC($a0)
/* FB500 80051FF0 94450000 */  lhu        $a1, 0x0($v0)
/* FB504 80051FF4 240601B0 */  addiu      $a2, $zero, 0x1B0
/* FB508 80051FF8 241000A0 */  addiu      $s0, $zero, 0xA0
/* FB50C 80051FFC 00052842 */  srl        $a1, $a1, 1
/* FB510 80052000 02052823 */  subu       $a1, $s0, $a1
/* FB514 80052004 00052C80 */  sll        $a1, $a1, 18
/* FB518 80052008 0C028D89 */  jal        func_800A3624
/* FB51C 8005200C 00052C03 */   sra       $a1, $a1, 16
/* FB520 80052010 8E83000C */  lw         $v1, 0xC($s4)
/* FB524 80052014 240420D3 */  addiu      $a0, $zero, 0x20D3
/* FB528 80052018 2402003E */  addiu      $v0, $zero, 0x3E
/* FB52C 8005201C 0C00D8C1 */  jal        func_80036304_ovl3
/* FB530 80052020 A462001C */   sh        $v0, 0x1C($v1)
/* FB534 80052024 0040A021 */  addu       $s4, $v0, $zero
/* FB538 80052028 8E84000C */  lw         $a0, 0xC($s4)
/* FB53C 8005202C 8C82000C */  lw         $v0, 0xC($a0)
/* FB540 80052030 94420000 */  lhu        $v0, 0x0($v0)
/* FB544 80052034 240601B0 */  addiu      $a2, $zero, 0x1B0
/* FB548 80052038 00021042 */  srl        $v0, $v0, 1
/* FB54C 8005203C 02028023 */  subu       $s0, $s0, $v0
/* FB550 80052040 00108480 */  sll        $s0, $s0, 18
/* FB554 80052044 0C028D89 */  jal        func_800A3624
/* FB558 80052048 00102C03 */   sra       $a1, $s0, 16
/* FB55C 8005204C 27A40010 */  addiu      $a0, $sp, 0x10
/* FB560 80052050 240520CA */  addiu      $a1, $zero, 0x20CA
/* FB564 80052054 8E83000C */  lw         $v1, 0xC($s4)
/* FB568 80052058 24060002 */  addiu      $a2, $zero, 0x2
/* FB56C 8005205C 2402003D */  addiu      $v0, $zero, 0x3D
/* FB570 80052060 A462001C */  sh         $v0, 0x1C($v1)
/* FB574 80052064 3C028007 */  lui        $v0, %hi(D_800695D8_ovl3)
/* FB578 80052068 244295D8 */  addiu      $v0, $v0, %lo(D_800695D8_ovl3)
/* FB57C 8005206C AFA20010 */  sw         $v0, 0x10($sp)
/* FB580 80052070 A3B30014 */  sb         $s3, 0x14($sp)
/* FB584 80052074 A3A00015 */  sb         $zero, 0x15($sp)
/* FB588 80052078 A3B20016 */  sb         $s2, 0x16($sp)
/* FB58C 8005207C 0C00DE82 */  jal        func_80037A08_ovl3
/* FB590 80052080 A3B10017 */   sb        $s1, 0x17($sp)
/* FB594 80052084 8FBF002C */  lw         $ra, 0x2C($sp)
/* FB598 80052088 8FB40028 */  lw         $s4, 0x28($sp)
/* FB59C 8005208C 8FB30024 */  lw         $s3, 0x24($sp)
/* FB5A0 80052090 8FB20020 */  lw         $s2, 0x20($sp)
/* FB5A4 80052094 8FB1001C */  lw         $s1, 0x1C($sp)
/* FB5A8 80052098 8FB00018 */  lw         $s0, 0x18($sp)
/* FB5AC 8005209C 03E00008 */  jr         $ra
/* FB5B0 800520A0 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80051EFC_ovl3, . - func_80051EFC_ovl3
