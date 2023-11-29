glabel func_800510C8_ovl3
/* FA5D8 800510C8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA5DC 800510CC AFBF0034 */  sw         $ra, 0x34($sp)
/* FA5E0 800510D0 AFB40030 */  sw         $s4, 0x30($sp)
/* FA5E4 800510D4 AFB3002C */  sw         $s3, 0x2C($sp)
/* FA5E8 800510D8 AFB20028 */  sw         $s2, 0x28($sp)
/* FA5EC 800510DC AFB10024 */  sw         $s1, 0x24($sp)
/* FA5F0 800510E0 0C00E109 */  jal        func_80038424_ovl3
/* FA5F4 800510E4 AFB00020 */   sw        $s0, 0x20($sp)
/* FA5F8 800510E8 24040248 */  addiu      $a0, $zero, 0x248
/* FA5FC 800510EC 24050002 */  addiu      $a1, $zero, 0x2
/* FA600 800510F0 0C00D925 */  jal        func_80036494_ovl3
/* FA604 800510F4 24060036 */   addiu     $a2, $zero, 0x36
/* FA608 800510F8 00409021 */  addu       $s2, $v0, $zero
/* FA60C 800510FC 8E44000C */  lw         $a0, 0xC($s2)
/* FA610 80051100 24050040 */  addiu      $a1, $zero, 0x40
/* FA614 80051104 0C028D89 */  jal        func_800A3624
/* FA618 80051108 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA61C 8005110C 8E43000C */  lw         $v1, 0xC($s2)
/* FA620 80051110 9462001E */  lhu        $v0, 0x1E($v1)
/* FA624 80051114 24040036 */  addiu      $a0, $zero, 0x36
/* FA628 80051118 24050037 */  addiu      $a1, $zero, 0x37
/* FA62C 8005111C 34420004 */  ori        $v0, $v0, 0x4
/* FA630 80051120 0C00DD19 */  jal        func_80037464_ovl3
/* FA634 80051124 A462001E */   sh        $v0, 0x1E($v1)
/* FA638 80051128 00409021 */  addu       $s2, $v0, $zero
/* FA63C 8005112C 8E44000C */  lw         $a0, 0xC($s2)
/* FA640 80051130 24050040 */  addiu      $a1, $zero, 0x40
/* FA644 80051134 0C028D89 */  jal        func_800A3624
/* FA648 80051138 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA64C 8005113C 8E43000C */  lw         $v1, 0xC($s2)
/* FA650 80051140 9462001E */  lhu        $v0, 0x1E($v1)
/* FA654 80051144 24110006 */  addiu      $s1, $zero, 0x6
/* FA658 80051148 34420004 */  ori        $v0, $v0, 0x4
/* FA65C 8005114C A462001E */  sh         $v0, 0x1E($v1)
.L80051150_ovl3:
/* FA660 80051150 8E44000C */  lw         $a0, 0xC($s2)
/* FA664 80051154 323000FF */  andi       $s0, $s1, 0xFF
/* FA668 80051158 02002821 */  addu       $a1, $s0, $zero
/* FA66C 8005115C 0C00DE7C */  jal        func_800379F0_ovl3
/* FA670 80051160 26310001 */   addiu     $s1, $s1, 0x1
/* FA674 80051164 8E44000C */  lw         $a0, 0xC($s2)
/* FA678 80051168 02002821 */  addu       $a1, $s0, $zero
/* FA67C 8005116C 24420842 */  addiu      $v0, $v0, 0x842
/* FA680 80051170 0C00DE6C */  jal        func_800379B0_ovl3
/* FA684 80051174 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FA688 80051178 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FA68C 8005117C 2C42000E */  sltiu      $v0, $v0, 0xE
/* FA690 80051180 1440FFF3 */  bnez       $v0, .L80051150_ovl3
/* FA694 80051184 2405FFFE */   addiu     $a1, $zero, -0x2
/* FA698 80051188 3C048007 */  lui        $a0, %hi(D_800693F4_ovl3)
/* FA69C 8005118C 248493F4 */  addiu      $a0, $a0, %lo(D_800693F4_ovl3)
/* FA6A0 80051190 2414FFFE */  addiu      $s4, $zero, -0x2
/* FA6A4 80051194 24130001 */  addiu      $s3, $zero, 0x1
/* FA6A8 80051198 24120002 */  addiu      $s2, $zero, 0x2
/* FA6AC 8005119C AFA40018 */  sw         $a0, 0x18($sp)
/* FA6B0 800511A0 A3B4001C */  sb         $s4, 0x1C($sp)
/* FA6B4 800511A4 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA6B8 800511A8 A3B3001E */  sb         $s3, 0x1E($sp)
/* FA6BC 800511AC 0C029D2A */  jal        func_800A74A8
/* FA6C0 800511B0 A3B2001F */   sb        $s2, 0x1F($sp)
/* FA6C4 800511B4 27A40018 */  addiu      $a0, $sp, 0x18
/* FA6C8 800511B8 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FA6CC 800511BC 240620D3 */  addiu      $a2, $zero, 0x20D3
/* FA6D0 800511C0 00023FC2 */  srl        $a3, $v0, 31
/* FA6D4 800511C4 00E23821 */  addu       $a3, $a3, $v0
/* FA6D8 800511C8 00073843 */  sra        $a3, $a3, 1
/* FA6DC 800511CC 241000A0 */  addiu      $s0, $zero, 0xA0
/* FA6E0 800511D0 02073823 */  subu       $a3, $s0, $a3
/* FA6E4 800511D4 00073C00 */  sll        $a3, $a3, 16
/* FA6E8 800511D8 00073C03 */  sra        $a3, $a3, 16
/* FA6EC 800511DC 241100A7 */  addiu      $s1, $zero, 0xA7
/* FA6F0 800511E0 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FA6F4 800511E4 AFB10010 */   sw        $s1, 0x10($sp)
/* FA6F8 800511E8 3C048007 */  lui        $a0, %hi(D_80069420_ovl3)
/* FA6FC 800511EC 24849420 */  addiu      $a0, $a0, %lo(D_80069420_ovl3)
/* FA700 800511F0 2405FFFE */  addiu      $a1, $zero, -0x2
/* FA704 800511F4 AFA40018 */  sw         $a0, 0x18($sp)
/* FA708 800511F8 A3B4001C */  sb         $s4, 0x1C($sp)
/* FA70C 800511FC A3A0001D */  sb         $zero, 0x1D($sp)
/* FA710 80051200 A3B3001E */  sb         $s3, 0x1E($sp)
/* FA714 80051204 0C029D2A */  jal        func_800A74A8
/* FA718 80051208 A3B2001F */   sb        $s2, 0x1F($sp)
/* FA71C 8005120C 27A40018 */  addiu      $a0, $sp, 0x18
/* FA720 80051210 240520CA */  addiu      $a1, $zero, 0x20CA
/* FA724 80051214 240620D4 */  addiu      $a2, $zero, 0x20D4
/* FA728 80051218 00023FC2 */  srl        $a3, $v0, 31
/* FA72C 8005121C 00E23821 */  addu       $a3, $a3, $v0
/* FA730 80051220 00073843 */  sra        $a3, $a3, 1
/* FA734 80051224 02073823 */  subu       $a3, $s0, $a3
/* FA738 80051228 00073C00 */  sll        $a3, $a3, 16
/* FA73C 8005122C 00073C03 */  sra        $a3, $a3, 16
/* FA740 80051230 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FA744 80051234 AFB10010 */   sw        $s1, 0x10($sp)
/* FA748 80051238 3C048007 */  lui        $a0, %hi(D_8006944C_ovl3)
/* FA74C 8005123C 2484944C */  addiu      $a0, $a0, %lo(D_8006944C_ovl3)
/* FA750 80051240 2405FFFD */  addiu      $a1, $zero, -0x3
/* FA754 80051244 2414FFFD */  addiu      $s4, $zero, -0x3
/* FA758 80051248 AFA40018 */  sw         $a0, 0x18($sp)
/* FA75C 8005124C A3B4001C */  sb         $s4, 0x1C($sp)
/* FA760 80051250 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA764 80051254 A3B3001E */  sb         $s3, 0x1E($sp)
/* FA768 80051258 0C029D2A */  jal        func_800A74A8
/* FA76C 8005125C A3B2001F */   sb        $s2, 0x1F($sp)
/* FA770 80051260 27A40018 */  addiu      $a0, $sp, 0x18
/* FA774 80051264 240520CB */  addiu      $a1, $zero, 0x20CB
/* FA778 80051268 240620D5 */  addiu      $a2, $zero, 0x20D5
/* FA77C 8005126C 00023FC2 */  srl        $a3, $v0, 31
/* FA780 80051270 00E23821 */  addu       $a3, $a3, $v0
/* FA784 80051274 00073843 */  sra        $a3, $a3, 1
/* FA788 80051278 02073823 */  subu       $a3, $s0, $a3
/* FA78C 8005127C 00073C00 */  sll        $a3, $a3, 16
/* FA790 80051280 00073C03 */  sra        $a3, $a3, 16
/* FA794 80051284 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FA798 80051288 AFB10010 */   sw        $s1, 0x10($sp)
/* FA79C 8005128C 3C048007 */  lui        $a0, %hi(D_80069474_ovl3)
/* FA7A0 80051290 24849474 */  addiu      $a0, $a0, %lo(D_80069474_ovl3)
/* FA7A4 80051294 2405FFFD */  addiu      $a1, $zero, -0x3
/* FA7A8 80051298 AFA40018 */  sw         $a0, 0x18($sp)
/* FA7AC 8005129C A3B4001C */  sb         $s4, 0x1C($sp)
/* FA7B0 800512A0 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA7B4 800512A4 A3B3001E */  sb         $s3, 0x1E($sp)
/* FA7B8 800512A8 0C029D2A */  jal        func_800A74A8
/* FA7BC 800512AC A3B2001F */   sb        $s2, 0x1F($sp)
/* FA7C0 800512B0 27A40018 */  addiu      $a0, $sp, 0x18
/* FA7C4 800512B4 240520CC */  addiu      $a1, $zero, 0x20CC
/* FA7C8 800512B8 240620D6 */  addiu      $a2, $zero, 0x20D6
/* FA7CC 800512BC 00021FC2 */  srl        $v1, $v0, 31
/* FA7D0 800512C0 00621821 */  addu       $v1, $v1, $v0
/* FA7D4 800512C4 00031843 */  sra        $v1, $v1, 1
/* FA7D8 800512C8 02038023 */  subu       $s0, $s0, $v1
/* FA7DC 800512CC 00108400 */  sll        $s0, $s0, 16
/* FA7E0 800512D0 00103C03 */  sra        $a3, $s0, 16
/* FA7E4 800512D4 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FA7E8 800512D8 AFB10010 */   sw        $s1, 0x10($sp)
/* FA7EC 800512DC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FA7F0 800512E0 8FB40030 */  lw         $s4, 0x30($sp)
/* FA7F4 800512E4 8FB3002C */  lw         $s3, 0x2C($sp)
/* FA7F8 800512E8 8FB20028 */  lw         $s2, 0x28($sp)
/* FA7FC 800512EC 8FB10024 */  lw         $s1, 0x24($sp)
/* FA800 800512F0 8FB00020 */  lw         $s0, 0x20($sp)
/* FA804 800512F4 03E00008 */  jr         $ra
/* FA808 800512F8 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800510C8_ovl3, . - func_800510C8_ovl3
