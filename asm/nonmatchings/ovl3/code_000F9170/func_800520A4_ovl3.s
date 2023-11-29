glabel func_800520A4_ovl3
/* FB5B4 800520A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FB5B8 800520A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* FB5BC 800520AC AFB20020 */  sw         $s2, 0x20($sp)
/* FB5C0 800520B0 AFB1001C */  sw         $s1, 0x1C($sp)
/* FB5C4 800520B4 0C00E109 */  jal        func_80038424_ovl3
/* FB5C8 800520B8 AFB00018 */   sw        $s0, 0x18($sp)
/* FB5CC 800520BC 24040011 */  addiu      $a0, $zero, 0x11
/* FB5D0 800520C0 24050001 */  addiu      $a1, $zero, 0x1
/* FB5D4 800520C4 0C00D925 */  jal        func_80036494_ovl3
/* FB5D8 800520C8 2406001E */   addiu     $a2, $zero, 0x1E
/* FB5DC 800520CC 00408821 */  addu       $s1, $v0, $zero
/* FB5E0 800520D0 8E24000C */  lw         $a0, 0xC($s1)
/* FB5E4 800520D4 24050038 */  addiu      $a1, $zero, 0x38
/* FB5E8 800520D8 24060071 */  addiu      $a2, $zero, 0x71
/* FB5EC 800520DC 0C028F9A */  jal        func_800A3E68
/* FB5F0 800520E0 00009021 */   addu      $s2, $zero, $zero
/* FB5F4 800520E4 8E24000C */  lw         $a0, 0xC($s1)
/* FB5F8 800520E8 24050040 */  addiu      $a1, $zero, 0x40
/* FB5FC 800520EC 0C028D89 */  jal        func_800A3624
/* FB600 800520F0 240600C0 */   addiu     $a2, $zero, 0xC0
/* FB604 800520F4 2404000F */  addiu      $a0, $zero, 0xF
/* FB608 800520F8 24050001 */  addiu      $a1, $zero, 0x1
/* FB60C 800520FC 0C00D925 */  jal        func_80036494_ovl3
/* FB610 80052100 2406001C */   addiu     $a2, $zero, 0x1C
/* FB614 80052104 8C44000C */  lw         $a0, 0xC($v0)
/* FB618 80052108 24050038 */  addiu      $a1, $zero, 0x38
/* FB61C 8005210C 0C028F9A */  jal        func_800A3E68
/* FB620 80052110 24060071 */   addiu     $a2, $zero, 0x71
/* FB624 80052114 2404001C */  addiu      $a0, $zero, 0x1C
/* FB628 80052118 0C00DD19 */  jal        func_80037464_ovl3
/* FB62C 8005211C 2405001D */   addiu     $a1, $zero, 0x1D
/* FB630 80052120 8C44000C */  lw         $a0, 0xC($v0)
/* FB634 80052124 24050038 */  addiu      $a1, $zero, 0x38
/* FB638 80052128 0C028F9A */  jal        func_800A3E68
/* FB63C 8005212C 24060071 */   addiu     $a2, $zero, 0x71
/* FB640 80052130 24040271 */  addiu      $a0, $zero, 0x271
/* FB644 80052134 24050002 */  addiu      $a1, $zero, 0x2
/* FB648 80052138 0C00D925 */  jal        func_80036494_ovl3
/* FB64C 8005213C 24060024 */   addiu     $a2, $zero, 0x24
/* FB650 80052140 8C44000C */  lw         $a0, 0xC($v0)
/* FB654 80052144 24050040 */  addiu      $a1, $zero, 0x40
/* FB658 80052148 0C028D89 */  jal        func_800A3624
/* FB65C 8005214C 240600C0 */   addiu     $a2, $zero, 0xC0
/* FB660 80052150 325000FF */  andi       $s0, $s2, 0xFF
.L80052154_ovl3:
/* FB664 80052154 26040272 */  addiu      $a0, $s0, 0x272
/* FB668 80052158 24050002 */  addiu      $a1, $zero, 0x2
/* FB66C 8005215C 0C00D925 */  jal        func_80036494_ovl3
/* FB670 80052160 2606001F */   addiu     $a2, $s0, 0x1F
/* FB674 80052164 00408821 */  addu       $s1, $v0, $zero
/* FB678 80052168 8E24000C */  lw         $a0, 0xC($s1)
/* FB67C 8005216C 24050040 */  addiu      $a1, $zero, 0x40
/* FB680 80052170 0C028D89 */  jal        func_800A3624
/* FB684 80052174 240600C0 */   addiu     $a2, $zero, 0xC0
/* FB688 80052178 8E22000C */  lw         $v0, 0xC($s1)
/* FB68C 8005217C 26520001 */  addiu      $s2, $s2, 0x1
/* FB690 80052180 26100040 */  addiu      $s0, $s0, 0x40
/* FB694 80052184 A450001C */  sh         $s0, 0x1C($v0)
/* FB698 80052188 324200FF */  andi       $v0, $s2, 0xFF
/* FB69C 8005218C 2C420005 */  sltiu      $v0, $v0, 0x5
/* FB6A0 80052190 1440FFF0 */  bnez       $v0, .L80052154_ovl3
/* FB6A4 80052194 325000FF */   andi      $s0, $s2, 0xFF
/* FB6A8 80052198 2404049A */  addiu      $a0, $zero, 0x49A
/* FB6AC 8005219C 24050002 */  addiu      $a1, $zero, 0x2
/* FB6B0 800521A0 0C00D925 */  jal        func_80036494_ovl3
/* FB6B4 800521A4 240620CB */   addiu     $a2, $zero, 0x20CB
/* FB6B8 800521A8 00408821 */  addu       $s1, $v0, $zero
/* FB6BC 800521AC 8E24000C */  lw         $a0, 0xC($s1)
/* FB6C0 800521B0 8C82000C */  lw         $v0, 0xC($a0)
/* FB6C4 800521B4 94460002 */  lhu        $a2, 0x2($v0)
/* FB6C8 800521B8 00002821 */  addu       $a1, $zero, $zero
/* FB6CC 800521BC 0C02912A */  jal        func_800A44A8
/* FB6D0 800521C0 00063042 */   srl       $a2, $a2, 1
/* FB6D4 800521C4 8E22000C */  lw         $v0, 0xC($s1)
/* FB6D8 800521C8 2410004B */  addiu      $s0, $zero, 0x4B
/* FB6DC 800521CC A450001C */  sh         $s0, 0x1C($v0)
/* FB6E0 800521D0 8E23000C */  lw         $v1, 0xC($s1)
/* FB6E4 800521D4 240404AD */  addiu      $a0, $zero, 0x4AD
/* FB6E8 800521D8 9462001E */  lhu        $v0, 0x1E($v1)
/* FB6EC 800521DC 24050002 */  addiu      $a1, $zero, 0x2
/* FB6F0 800521E0 240620CC */  addiu      $a2, $zero, 0x20CC
/* FB6F4 800521E4 34420004 */  ori        $v0, $v0, 0x4
/* FB6F8 800521E8 0C00D925 */  jal        func_80036494_ovl3
/* FB6FC 800521EC A462001E */   sh        $v0, 0x1E($v1)
/* FB700 800521F0 00408821 */  addu       $s1, $v0, $zero
/* FB704 800521F4 8E24000C */  lw         $a0, 0xC($s1)
/* FB708 800521F8 8C82000C */  lw         $v0, 0xC($a0)
/* FB70C 800521FC 94460002 */  lhu        $a2, 0x2($v0)
/* FB710 80052200 00002821 */  addu       $a1, $zero, $zero
/* FB714 80052204 0C02912A */  jal        func_800A44A8
/* FB718 80052208 00063042 */   srl       $a2, $a2, 1
/* FB71C 8005220C 8E22000C */  lw         $v0, 0xC($s1)
/* FB720 80052210 A450001C */  sh         $s0, 0x1C($v0)
/* FB724 80052214 8E23000C */  lw         $v1, 0xC($s1)
/* FB728 80052218 2404049B */  addiu      $a0, $zero, 0x49B
/* FB72C 8005221C 9462001E */  lhu        $v0, 0x1E($v1)
/* FB730 80052220 24050002 */  addiu      $a1, $zero, 0x2
/* FB734 80052224 240620CD */  addiu      $a2, $zero, 0x20CD
/* FB738 80052228 34420004 */  ori        $v0, $v0, 0x4
/* FB73C 8005222C 0C00D925 */  jal        func_80036494_ovl3
/* FB740 80052230 A462001E */   sh        $v0, 0x1E($v1)
/* FB744 80052234 00408821 */  addu       $s1, $v0, $zero
/* FB748 80052238 8E24000C */  lw         $a0, 0xC($s1)
/* FB74C 8005223C 8C82000C */  lw         $v0, 0xC($a0)
/* FB750 80052240 94460002 */  lhu        $a2, 0x2($v0)
/* FB754 80052244 00002821 */  addu       $a1, $zero, $zero
/* FB758 80052248 0C02912A */  jal        func_800A44A8
/* FB75C 8005224C 00063042 */   srl       $a2, $a2, 1
/* FB760 80052250 8E22000C */  lw         $v0, 0xC($s1)
/* FB764 80052254 A450001C */  sh         $s0, 0x1C($v0)
/* FB768 80052258 8E23000C */  lw         $v1, 0xC($s1)
/* FB76C 8005225C 2404049F */  addiu      $a0, $zero, 0x49F
/* FB770 80052260 9462001E */  lhu        $v0, 0x1E($v1)
/* FB774 80052264 24050002 */  addiu      $a1, $zero, 0x2
/* FB778 80052268 240620CE */  addiu      $a2, $zero, 0x20CE
/* FB77C 8005226C 34420004 */  ori        $v0, $v0, 0x4
/* FB780 80052270 0C00D925 */  jal        func_80036494_ovl3
/* FB784 80052274 A462001E */   sh        $v0, 0x1E($v1)
/* FB788 80052278 00408821 */  addu       $s1, $v0, $zero
/* FB78C 8005227C 8E24000C */  lw         $a0, 0xC($s1)
/* FB790 80052280 8C82000C */  lw         $v0, 0xC($a0)
/* FB794 80052284 94460002 */  lhu        $a2, 0x2($v0)
/* FB798 80052288 00002821 */  addu       $a1, $zero, $zero
/* FB79C 8005228C 0C02912A */  jal        func_800A44A8
/* FB7A0 80052290 00063042 */   srl       $a2, $a2, 1
/* FB7A4 80052294 8E22000C */  lw         $v0, 0xC($s1)
/* FB7A8 80052298 A450001C */  sh         $s0, 0x1C($v0)
/* FB7AC 8005229C 8E23000C */  lw         $v1, 0xC($s1)
/* FB7B0 800522A0 24040499 */  addiu      $a0, $zero, 0x499
/* FB7B4 800522A4 9462001E */  lhu        $v0, 0x1E($v1)
/* FB7B8 800522A8 24050002 */  addiu      $a1, $zero, 0x2
/* FB7BC 800522AC 240620CF */  addiu      $a2, $zero, 0x20CF
/* FB7C0 800522B0 34420004 */  ori        $v0, $v0, 0x4
/* FB7C4 800522B4 0C00D925 */  jal        func_80036494_ovl3
/* FB7C8 800522B8 A462001E */   sh        $v0, 0x1E($v1)
/* FB7CC 800522BC 00408821 */  addu       $s1, $v0, $zero
/* FB7D0 800522C0 8E24000C */  lw         $a0, 0xC($s1)
/* FB7D4 800522C4 8C82000C */  lw         $v0, 0xC($a0)
/* FB7D8 800522C8 94450000 */  lhu        $a1, 0x0($v0)
/* FB7DC 800522CC 00003021 */  addu       $a2, $zero, $zero
/* FB7E0 800522D0 0C02912A */  jal        func_800A44A8
/* FB7E4 800522D4 00052842 */   srl       $a1, $a1, 1
/* FB7E8 800522D8 8E22000C */  lw         $v0, 0xC($s1)
/* FB7EC 800522DC A450001C */  sh         $s0, 0x1C($v0)
/* FB7F0 800522E0 8E23000C */  lw         $v1, 0xC($s1)
/* FB7F4 800522E4 9462001E */  lhu        $v0, 0x1E($v1)
/* FB7F8 800522E8 34420004 */  ori        $v0, $v0, 0x4
/* FB7FC 800522EC A462001E */  sh         $v0, 0x1E($v1)
/* FB800 800522F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* FB804 800522F4 8FB20020 */  lw         $s2, 0x20($sp)
/* FB808 800522F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* FB80C 800522FC 8FB00018 */  lw         $s0, 0x18($sp)
/* FB810 80052300 03E00008 */  jr         $ra
/* FB814 80052304 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800520A4_ovl3, . - func_800520A4_ovl3
