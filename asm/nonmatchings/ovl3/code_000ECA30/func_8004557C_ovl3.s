glabel func_8004557C_ovl3
/* EEA8C 8004557C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* EEA90 80045580 AFBF002C */  sw         $ra, 0x2C($sp)
/* EEA94 80045584 AFB20028 */  sw         $s2, 0x28($sp)
/* EEA98 80045588 AFB10024 */  sw         $s1, 0x24($sp)
/* EEA9C 8004558C 0C00D889 */  jal        func_80036224_ovl3
/* EEAA0 80045590 AFB00020 */   sw        $s0, 0x20($sp)
/* EEAA4 80045594 2404016A */  addiu      $a0, $zero, 0x16A
/* EEAA8 80045598 24050001 */  addiu      $a1, $zero, 0x1
/* EEAAC 8004559C 0C00D925 */  jal        func_80036494_ovl3
/* EEAB0 800455A0 24060044 */   addiu     $a2, $zero, 0x44
/* EEAB4 800455A4 00408021 */  addu       $s0, $v0, $zero
/* EEAB8 800455A8 8E04000C */  lw         $a0, 0xC($s0)
/* EEABC 800455AC 24050038 */  addiu      $a1, $zero, 0x38
/* EEAC0 800455B0 0C028F9A */  jal        func_800A3E68
/* EEAC4 800455B4 24060071 */   addiu     $a2, $zero, 0x71
/* EEAC8 800455B8 8E04000C */  lw         $a0, 0xC($s0)
/* EEACC 800455BC 24050040 */  addiu      $a1, $zero, 0x40
/* EEAD0 800455C0 0C028D89 */  jal        func_800A3624
/* EEAD4 800455C4 240600C0 */   addiu     $a2, $zero, 0xC0
/* EEAD8 800455C8 3C048034 */  lui        $a0, (0x80343E50 >> 16)
/* EEADC 800455CC 34843E50 */  ori        $a0, $a0, (0x80343E50 & 0xFFFF)
/* EEAE0 800455D0 2405016D */  addiu      $a1, $zero, 0x16D
/* EEAE4 800455D4 24060002 */  addiu      $a2, $zero, 0x2
/* EEAE8 800455D8 0C00D9E0 */  jal        func_80036780_ovl3
/* EEAEC 800455DC 2407003F */   addiu     $a3, $zero, 0x3F
/* EEAF0 800455E0 00408021 */  addu       $s0, $v0, $zero
/* EEAF4 800455E4 8E02000C */  lw         $v0, 0xC($s0)
/* EEAF8 800455E8 00008821 */  addu       $s1, $zero, $zero
/* EEAFC 800455EC 9443001E */  lhu        $v1, 0x1E($v0)
/* EEB00 800455F0 241200FF */  addiu      $s2, $zero, 0xFF
/* EEB04 800455F4 240500FF */  addiu      $a1, $zero, 0xFF
/* EEB08 800455F8 3063FFF7 */  andi       $v1, $v1, 0xFFF7
/* EEB0C 800455FC A443001E */  sh         $v1, 0x1E($v0)
/* EEB10 80045600 240200FF */  addiu      $v0, $zero, 0xFF
/* EEB14 80045604 AFA20010 */  sw         $v0, 0x10($sp)
/* EEB18 80045608 8E04000C */  lw         $a0, 0xC($s0)
/* EEB1C 8004560C 240600FF */  addiu      $a2, $zero, 0xFF
/* EEB20 80045610 0C028E41 */  jal        func_800A3904
/* EEB24 80045614 240700FF */   addiu     $a3, $zero, 0xFF
/* EEB28 80045618 322600FF */  andi       $a2, $s1, 0xFF
.L8004561C_ovl3:
/* EEB2C 8004561C 24C4016B */  addiu      $a0, $a2, 0x16B
/* EEB30 80045620 24050002 */  addiu      $a1, $zero, 0x2
/* EEB34 80045624 0C00D925 */  jal        func_80036494_ovl3
/* EEB38 80045628 24C6003A */   addiu     $a2, $a2, 0x3A
/* EEB3C 8004562C AFB20010 */  sw         $s2, 0x10($sp)
/* EEB40 80045630 8C44000C */  lw         $a0, 0xC($v0)
/* EEB44 80045634 240500FF */  addiu      $a1, $zero, 0xFF
/* EEB48 80045638 240600FF */  addiu      $a2, $zero, 0xFF
/* EEB4C 8004563C 240700FF */  addiu      $a3, $zero, 0xFF
/* EEB50 80045640 0C028E41 */  jal        func_800A3904
/* EEB54 80045644 26310001 */   addiu     $s1, $s1, 0x1
/* EEB58 80045648 322200FF */  andi       $v0, $s1, 0xFF
/* EEB5C 8004564C 2C420002 */  sltiu      $v0, $v0, 0x2
/* EEB60 80045650 1440FFF2 */  bnez       $v0, .L8004561C_ovl3
/* EEB64 80045654 322600FF */   andi      $a2, $s1, 0xFF
/* EEB68 80045658 27A40018 */  addiu      $a0, $sp, 0x18
/* EEB6C 8004565C 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EEB70 80045660 24060002 */  addiu      $a2, $zero, 0x2
/* EEB74 80045664 3C028007 */  lui        $v0, %hi(D_80069164_ovl3)
/* EEB78 80045668 24429164 */  addiu      $v0, $v0, %lo(D_80069164_ovl3)
/* EEB7C 8004566C AFA20018 */  sw         $v0, 0x18($sp)
/* EEB80 80045670 2402FFFE */  addiu      $v0, $zero, -0x2
/* EEB84 80045674 A3A2001C */  sb         $v0, 0x1C($sp)
/* EEB88 80045678 24020001 */  addiu      $v0, $zero, 0x1
/* EEB8C 8004567C A3A2001E */  sb         $v0, 0x1E($sp)
/* EEB90 80045680 24020003 */  addiu      $v0, $zero, 0x3
/* EEB94 80045684 A3A0001D */  sb         $zero, 0x1D($sp)
/* EEB98 80045688 0C00DE82 */  jal        func_80037A08_ovl3
/* EEB9C 8004568C A3A2001F */   sb        $v0, 0x1F($sp)
/* EEBA0 80045690 8FBF002C */  lw         $ra, 0x2C($sp)
/* EEBA4 80045694 8FB20028 */  lw         $s2, 0x28($sp)
/* EEBA8 80045698 8FB10024 */  lw         $s1, 0x24($sp)
/* EEBAC 8004569C 8FB00020 */  lw         $s0, 0x20($sp)
/* EEBB0 800456A0 03E00008 */  jr         $ra
/* EEBB4 800456A4 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_8004557C_ovl3, . - func_8004557C_ovl3
