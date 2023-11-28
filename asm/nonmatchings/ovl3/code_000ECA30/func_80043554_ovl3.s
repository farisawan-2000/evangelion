glabel func_80043554_ovl3
/* ECA64 80043554 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* ECA68 80043558 AFBF0024 */  sw         $ra, 0x24($sp)
/* ECA6C 8004355C AFB20020 */  sw         $s2, 0x20($sp)
/* ECA70 80043560 AFB1001C */  sw         $s1, 0x1C($sp)
/* ECA74 80043564 0C00E109 */  jal        func_80038424_ovl3
/* ECA78 80043568 AFB00018 */   sw        $s0, 0x18($sp)
/* ECA7C 8004356C 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* ECA80 80043570 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* ECA84 80043574 24050103 */  addiu      $a1, $zero, 0x103
/* ECA88 80043578 24060015 */  addiu      $a2, $zero, 0x15
/* ECA8C 8004357C 0C00D9E0 */  jal        func_80036780_ovl3
/* ECA90 80043580 24070020 */   addiu     $a3, $zero, 0x20
/* ECA94 80043584 8C42000C */  lw         $v0, 0xC($v0)
/* ECA98 80043588 240600A0 */  addiu      $a2, $zero, 0xA0
/* ECA9C 8004358C 8C500014 */  lw         $s0, 0x14($v0)
/* ECAA0 80043590 00008821 */  addu       $s1, $zero, $zero
/* ECAA4 80043594 24120047 */  addiu      $s2, $zero, 0x47
/* ECAA8 80043598 02002021 */  addu       $a0, $s0, $zero
/* ECAAC 8004359C 0C03006C */  jal        func_800C01B0
/* ECAB0 800435A0 26050300 */   addiu     $a1, $s0, 0x300
/* ECAB4 800435A4 26040200 */  addiu      $a0, $s0, 0x200
/* ECAB8 800435A8 02002821 */  addu       $a1, $s0, $zero
/* ECABC 800435AC 0C03006C */  jal        func_800C01B0
/* ECAC0 800435B0 240600A0 */   addiu     $a2, $zero, 0xA0
/* ECAC4 800435B4 26040300 */  addiu      $a0, $s0, 0x300
/* ECAC8 800435B8 26050200 */  addiu      $a1, $s0, 0x200
/* ECACC 800435BC 0C03006C */  jal        func_800C01B0
/* ECAD0 800435C0 240600A0 */   addiu     $a2, $zero, 0xA0
/* ECAD4 800435C4 322300FF */  andi       $v1, $s1, 0xFF
.L800435C8_ovl3:
/* ECAD8 800435C8 00031040 */  sll        $v0, $v1, 1
/* ECADC 800435CC 00431021 */  addu       $v0, $v0, $v1
/* ECAE0 800435D0 00021040 */  sll        $v0, $v0, 1
/* ECAE4 800435D4 3C048007 */  lui        $a0, %hi(D_80069F84_ovl3)
/* ECAE8 800435D8 00822021 */  addu       $a0, $a0, $v0
/* ECAEC 800435DC 94849F84 */  lhu        $a0, %lo(D_80069F84_ovl3)($a0)
/* ECAF0 800435E0 24050002 */  addiu      $a1, $zero, 0x2
/* ECAF4 800435E4 322600FF */  andi       $a2, $s1, 0xFF
/* ECAF8 800435E8 0C00D925 */  jal        func_80036494_ovl3
/* ECAFC 800435EC 24C60021 */   addiu     $a2, $a2, 0x21
/* ECB00 800435F0 00408021 */  addu       $s0, $v0, $zero
/* ECB04 800435F4 8E02000C */  lw         $v0, 0xC($s0)
/* ECB08 800435F8 A452001C */  sh         $s2, 0x1C($v0)
/* ECB0C 800435FC 8E04000C */  lw         $a0, 0xC($s0)
/* ECB10 80043600 26310001 */  addiu      $s1, $s1, 0x1
/* ECB14 80043604 0C00DE7C */  jal        func_800379F0_ovl3
/* ECB18 80043608 24050001 */   addiu     $a1, $zero, 0x1
/* ECB1C 8004360C 8E04000C */  lw         $a0, 0xC($s0)
/* ECB20 80043610 00002821 */  addu       $a1, $zero, $zero
/* ECB24 80043614 2442FFFF */  addiu      $v0, $v0, -0x1
/* ECB28 80043618 0C00DE6C */  jal        func_800379B0_ovl3
/* ECB2C 8004361C 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* ECB30 80043620 322200FF */  andi       $v0, $s1, 0xFF
/* ECB34 80043624 2C42002B */  sltiu      $v0, $v0, 0x2B
/* ECB38 80043628 1440FFE7 */  bnez       $v0, .L800435C8_ovl3
/* ECB3C 8004362C 322300FF */   andi      $v1, $s1, 0xFF
/* ECB40 80043630 24040118 */  addiu      $a0, $zero, 0x118
/* ECB44 80043634 24050002 */  addiu      $a1, $zero, 0x2
/* ECB48 80043638 24060003 */  addiu      $a2, $zero, 0x3
/* ECB4C 8004363C 0C00D97B */  jal        func_800365EC_ovl3
/* ECB50 80043640 2407001D */   addiu     $a3, $zero, 0x1D
/* ECB54 80043644 27A40010 */  addiu      $a0, $sp, 0x10
/* ECB58 80043648 240520C9 */  addiu      $a1, $zero, 0x20C9
/* ECB5C 8004364C 24060002 */  addiu      $a2, $zero, 0x2
/* ECB60 80043650 3C028007 */  lui        $v0, %hi(D_80068FB0_ovl3)
/* ECB64 80043654 24428FB0 */  addiu      $v0, $v0, %lo(D_80068FB0_ovl3)
/* ECB68 80043658 2412FFFE */  addiu      $s2, $zero, -0x2
/* ECB6C 8004365C 24110001 */  addiu      $s1, $zero, 0x1
/* ECB70 80043660 24100003 */  addiu      $s0, $zero, 0x3
/* ECB74 80043664 AFA20010 */  sw         $v0, 0x10($sp)
/* ECB78 80043668 A3B20014 */  sb         $s2, 0x14($sp)
/* ECB7C 8004366C A3A00015 */  sb         $zero, 0x15($sp)
/* ECB80 80043670 A3B10016 */  sb         $s1, 0x16($sp)
/* ECB84 80043674 0C00DE82 */  jal        func_80037A08_ovl3
/* ECB88 80043678 A3B00017 */   sb        $s0, 0x17($sp)
/* ECB8C 8004367C 27A40010 */  addiu      $a0, $sp, 0x10
/* ECB90 80043680 240520CA */  addiu      $a1, $zero, 0x20CA
/* ECB94 80043684 24060002 */  addiu      $a2, $zero, 0x2
/* ECB98 80043688 3C028007 */  lui        $v0, %hi(D_80068FD0_ovl3)
/* ECB9C 8004368C 24428FD0 */  addiu      $v0, $v0, %lo(D_80068FD0_ovl3)
/* ECBA0 80043690 AFA20010 */  sw         $v0, 0x10($sp)
/* ECBA4 80043694 A3B20014 */  sb         $s2, 0x14($sp)
/* ECBA8 80043698 A3A00015 */  sb         $zero, 0x15($sp)
/* ECBAC 8004369C A3B10016 */  sb         $s1, 0x16($sp)
/* ECBB0 800436A0 0C00DE82 */  jal        func_80037A08_ovl3
/* ECBB4 800436A4 A3B00017 */   sb        $s0, 0x17($sp)
/* ECBB8 800436A8 8FBF0024 */  lw         $ra, 0x24($sp)
/* ECBBC 800436AC 8FB20020 */  lw         $s2, 0x20($sp)
/* ECBC0 800436B0 8FB1001C */  lw         $s1, 0x1C($sp)
/* ECBC4 800436B4 8FB00018 */  lw         $s0, 0x18($sp)
/* ECBC8 800436B8 03E00008 */  jr         $ra
/* ECBCC 800436BC 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80043554_ovl3, . - func_80043554_ovl3
