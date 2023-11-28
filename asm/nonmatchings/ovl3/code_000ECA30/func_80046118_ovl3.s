glabel func_80046118_ovl3
/* EF628 80046118 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* EF62C 8004611C F7B40030 */  sdc1       $f20, 0x30($sp)
/* EF630 80046120 3C014000 */  lui        $at, (0x40000000 >> 16)
/* EF634 80046124 4481A000 */  mtc1       $at, $f20
/* EF638 80046128 AFB1001C */  sw         $s1, 0x1C($sp)
/* EF63C 8004612C 00008821 */  addu       $s1, $zero, $zero
/* EF640 80046130 AFB40028 */  sw         $s4, 0x28($sp)
/* EF644 80046134 24140016 */  addiu      $s4, $zero, 0x16
/* EF648 80046138 AFB30024 */  sw         $s3, 0x24($sp)
/* EF64C 8004613C 24130015 */  addiu      $s3, $zero, 0x15
/* EF650 80046140 AFBF002C */  sw         $ra, 0x2C($sp)
/* EF654 80046144 AFB20020 */  sw         $s2, 0x20($sp)
/* EF658 80046148 AFB00018 */  sw         $s0, 0x18($sp)
/* EF65C 8004614C 322600FF */  andi       $a2, $s1, 0xFF
.L80046150_ovl3:
/* EF660 80046150 24C4017D */  addiu      $a0, $a2, 0x17D
/* EF664 80046154 24050002 */  addiu      $a1, $zero, 0x2
/* EF668 80046158 0C00D925 */  jal        func_80036494_ovl3
/* EF66C 8004615C 24C60049 */   addiu     $a2, $a2, 0x49
/* EF670 80046160 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EF674 80046164 44810000 */  mtc1       $at, $f0
/* EF678 80046168 323200FF */  andi       $s2, $s1, 0xFF
/* EF67C 8004616C 12400002 */  beqz       $s2, .L80046178_ovl3
/* EF680 80046170 00408021 */   addu      $s0, $v0, $zero
/* EF684 80046174 4600A006 */  mov.s      $f0, $f20
.L80046178_ovl3:
/* EF688 80046178 8E04000C */  lw         $a0, 0xC($s0)
/* EF68C 8004617C 4406A000 */  mfc1       $a2, $f20
/* EF690 80046180 44070000 */  mfc1       $a3, $f0
/* EF694 80046184 00000000 */  nop
/* EF698 80046188 0C02915B */  jal        func_800A456C
/* EF69C 8004618C 00002821 */   addu      $a1, $zero, $zero
/* EF6A0 80046190 240200FF */  addiu      $v0, $zero, 0xFF
/* EF6A4 80046194 AFA20010 */  sw         $v0, 0x10($sp)
/* EF6A8 80046198 8E04000C */  lw         $a0, 0xC($s0)
/* EF6AC 8004619C 240500FF */  addiu      $a1, $zero, 0xFF
/* EF6B0 800461A0 240600FF */  addiu      $a2, $zero, 0xFF
/* EF6B4 800461A4 0C028E41 */  jal        func_800A3904
/* EF6B8 800461A8 240700FF */   addiu     $a3, $zero, 0xFF
/* EF6BC 800461AC 8E03000C */  lw         $v1, 0xC($s0)
/* EF6C0 800461B0 9462001E */  lhu        $v0, 0x1E($v1)
/* EF6C4 800461B4 34420086 */  ori        $v0, $v0, 0x86
/* EF6C8 800461B8 A462001E */  sh         $v0, 0x1E($v1)
/* EF6CC 800461BC 8E02000C */  lw         $v0, 0xC($s0)
/* EF6D0 800461C0 56400002 */  bnel       $s2, $zero, .L800461CC_ovl3
/* EF6D4 800461C4 A453001C */   sh        $s3, 0x1C($v0)
/* EF6D8 800461C8 A454001C */  sh         $s4, 0x1C($v0)
.L800461CC_ovl3:
/* EF6DC 800461CC 322600FF */  andi       $a2, $s1, 0xFF
/* EF6E0 800461D0 24C4017D */  addiu      $a0, $a2, 0x17D
/* EF6E4 800461D4 24050002 */  addiu      $a1, $zero, 0x2
/* EF6E8 800461D8 0C00D925 */  jal        func_80036494_ovl3
/* EF6EC 800461DC 24C6004F */   addiu     $a2, $a2, 0x4F
/* EF6F0 800461E0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EF6F4 800461E4 44810000 */  mtc1       $at, $f0
/* EF6F8 800461E8 323200FF */  andi       $s2, $s1, 0xFF
/* EF6FC 800461EC 12400002 */  beqz       $s2, .L800461F8_ovl3
/* EF700 800461F0 00408021 */   addu      $s0, $v0, $zero
/* EF704 800461F4 4600A006 */  mov.s      $f0, $f20
.L800461F8_ovl3:
/* EF708 800461F8 8E04000C */  lw         $a0, 0xC($s0)
/* EF70C 800461FC 4406A000 */  mfc1       $a2, $f20
/* EF710 80046200 44070000 */  mfc1       $a3, $f0
/* EF714 80046204 00000000 */  nop
/* EF718 80046208 0C02915B */  jal        func_800A456C
/* EF71C 8004620C 00002821 */   addu      $a1, $zero, $zero
/* EF720 80046210 24020080 */  addiu      $v0, $zero, 0x80
/* EF724 80046214 AFA20010 */  sw         $v0, 0x10($sp)
/* EF728 80046218 8E04000C */  lw         $a0, 0xC($s0)
/* EF72C 8004621C 240500FF */  addiu      $a1, $zero, 0xFF
/* EF730 80046220 240600FF */  addiu      $a2, $zero, 0xFF
/* EF734 80046224 0C028E41 */  jal        func_800A3904
/* EF738 80046228 240700FF */   addiu     $a3, $zero, 0xFF
/* EF73C 8004622C 8E03000C */  lw         $v1, 0xC($s0)
/* EF740 80046230 9462001E */  lhu        $v0, 0x1E($v1)
/* EF744 80046234 34420086 */  ori        $v0, $v0, 0x86
/* EF748 80046238 A462001E */  sh         $v0, 0x1E($v1)
/* EF74C 8004623C 8E02000C */  lw         $v0, 0xC($s0)
/* EF750 80046240 56400002 */  bnel       $s2, $zero, .L8004624C_ovl3
/* EF754 80046244 A453001C */   sh        $s3, 0x1C($v0)
/* EF758 80046248 A454001C */  sh         $s4, 0x1C($v0)
.L8004624C_ovl3:
/* EF75C 8004624C 322400FF */  andi       $a0, $s1, 0xFF
/* EF760 80046250 0C00D8C1 */  jal        func_80036304_ovl3
/* EF764 80046254 24840049 */   addiu     $a0, $a0, 0x49
/* EF768 80046258 00408021 */  addu       $s0, $v0, $zero
/* EF76C 8004625C 8E04000C */  lw         $a0, 0xC($s0)
/* EF770 80046260 24050001 */  addiu      $a1, $zero, 0x1
/* EF774 80046264 00003021 */  addu       $a2, $zero, $zero
/* EF778 80046268 0C00DE72 */  jal        func_800379C8_ovl3
/* EF77C 8004626C 26310001 */   addiu     $s1, $s1, 0x1
/* EF780 80046270 8E04000C */  lw         $a0, 0xC($s0)
/* EF784 80046274 24050002 */  addiu      $a1, $zero, 0x2
/* EF788 80046278 0C00DE72 */  jal        func_800379C8_ovl3
/* EF78C 8004627C 00003021 */   addu      $a2, $zero, $zero
/* EF790 80046280 322200FF */  andi       $v0, $s1, 0xFF
/* EF794 80046284 2C420006 */  sltiu      $v0, $v0, 0x6
/* EF798 80046288 1440FFB1 */  bnez       $v0, .L80046150_ovl3
/* EF79C 8004628C 322600FF */   andi      $a2, $s1, 0xFF
/* EF7A0 80046290 8FBF002C */  lw         $ra, 0x2C($sp)
/* EF7A4 80046294 8FB40028 */  lw         $s4, 0x28($sp)
/* EF7A8 80046298 8FB30024 */  lw         $s3, 0x24($sp)
/* EF7AC 8004629C 8FB20020 */  lw         $s2, 0x20($sp)
/* EF7B0 800462A0 8FB1001C */  lw         $s1, 0x1C($sp)
/* EF7B4 800462A4 8FB00018 */  lw         $s0, 0x18($sp)
/* EF7B8 800462A8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* EF7BC 800462AC 03E00008 */  jr         $ra
/* EF7C0 800462B0 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_80046118_ovl3, . - func_80046118_ovl3
