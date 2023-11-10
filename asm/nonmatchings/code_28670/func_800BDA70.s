glabel func_800BDA70
/* 28670 800BDA70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 28674 800BDA74 AFB00010 */  sw         $s0, 0x10($sp)
/* 28678 800BDA78 00808021 */  addu       $s0, $a0, $zero
/* 2867C 800BDA7C 27A40050 */  addiu      $a0, $sp, 0x50
/* 28680 800BDA80 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 28684 800BDA84 4485A000 */  mtc1       $a1, $f20
/* 28688 800BDA88 27A50054 */  addiu      $a1, $sp, 0x54
/* 2868C 800BDA8C AFA60050 */  sw         $a2, 0x50($sp)
/* 28690 800BDA90 27A60058 */  addiu      $a2, $sp, 0x58
/* 28694 800BDA94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 28698 800BDA98 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 2869C 800BDA9C F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 286A0 800BDAA0 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 286A4 800BDAA4 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 286A8 800BDAA8 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 286AC 800BDAAC 0C02FAEC */  jal        func_800BEBB0
/* 286B0 800BDAB0 AFA70054 */   sw        $a3, 0x54($sp)
/* 286B4 800BDAB4 3C01800F */  lui        $at, %hi(D_800F6150)
/* 286B8 800BDAB8 C4206150 */  lwc1       $f0, %lo(D_800F6150)($at)
/* 286BC 800BDABC 4600A502 */  mul.s      $f20, $f20, $f0
/* 286C0 800BDAC0 0C02FF68 */  jal        func_800BFDA0
/* 286C4 800BDAC4 4600A306 */   mov.s     $f12, $f20
/* 286C8 800BDAC8 4600A306 */  mov.s      $f12, $f20
/* 286CC 800BDACC 0C02F784 */  jal        func_800BDE10
/* 286D0 800BDAD0 46000686 */   mov.s     $f26, $f0
/* 286D4 800BDAD4 C7A40050 */  lwc1       $f4, 0x50($sp)
/* 286D8 800BDAD8 46042102 */  mul.s      $f4, $f4, $f4
/* 286DC 800BDADC C7A20058 */  lwc1       $f2, 0x58($sp)
/* 286E0 800BDAE0 46021082 */  mul.s      $f2, $f2, $f2
/* 286E4 800BDAE4 46022300 */  add.s      $f12, $f4, $f2
/* 286E8 800BDAE8 46006604 */  sqrt.s     $f24, $f12
/* 286EC 800BDAEC 4618C032 */  c.eq.s     $f24, $f24
/* 286F0 800BDAF0 00000000 */  nop
/* 286F4 800BDAF4 00000000 */  nop
/* 286F8 800BDAF8 45010004 */  bc1t       .L800BDB0C
/* 286FC 800BDAFC 46000786 */   mov.s     $f30, $f0
/* 28700 800BDB00 0C02F698 */  jal        func_800BDA60
/* 28704 800BDB04 00000000 */   nop
/* 28708 800BDB08 46000606 */  mov.s      $f24, $f0
.L800BDB0C:
/* 2870C 800BDB0C 0C02FA9C */  jal        func_800BEA70
/* 28710 800BDB10 02002021 */   addu      $a0, $s0, $zero
/* 28714 800BDB14 4480E000 */  mtc1       $zero, $f28
/* 28718 800BDB18 00000000 */  nop
/* 2871C 800BDB1C 461CC032 */  c.eq.s     $f24, $f28
/* 28720 800BDB20 00000000 */  nop
/* 28724 800BDB24 4501003B */  bc1t       .L800BDC14
/* 28728 800BDB28 00000000 */   nop
/* 2872C 800BDB2C C7A00054 */  lwc1       $f0, 0x54($sp)
/* 28730 800BDB30 4600D002 */  mul.s      $f0, $f26, $f0
/* 28734 800BDB34 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 28738 800BDB38 4481B000 */  mtc1       $at, $f22
/* 2873C 800BDB3C C7A20058 */  lwc1       $f2, 0x58($sp)
/* 28740 800BDB40 4618B403 */  div.s      $f16, $f22, $f24
/* 28744 800BDB44 46001087 */  neg.s      $f2, $f2
/* 28748 800BDB48 461E1082 */  mul.s      $f2, $f2, $f30
/* 2874C 800BDB4C C7A40050 */  lwc1       $f4, 0x50($sp)
/* 28750 800BDB50 46040002 */  mul.s      $f0, $f0, $f4
/* 28754 800BDB54 00000000 */  nop
/* 28758 800BDB58 4618D502 */  mul.s      $f20, $f26, $f24
/* 2875C 800BDB5C 46001081 */  sub.s      $f2, $f2, $f0
/* 28760 800BDB60 46101082 */  mul.s      $f2, $f2, $f16
/* 28764 800BDB64 00000000 */  nop
/* 28768 800BDB68 4618F482 */  mul.s      $f18, $f30, $f24
/* 2876C 800BDB6C E6020000 */  swc1       $f2, 0x0($s0)
/* 28770 800BDB70 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 28774 800BDB74 461A5382 */  mul.s      $f14, $f10, $f26
/* 28778 800BDB78 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 2877C 800BDB7C 460CF102 */  mul.s      $f4, $f30, $f12
/* 28780 800BDB80 00000000 */  nop
/* 28784 800BDB84 460CD082 */  mul.s      $f2, $f26, $f12
/* 28788 800BDB88 C7A60050 */  lwc1       $f6, 0x50($sp)
/* 2878C 800BDB8C 4606F202 */  mul.s      $f8, $f30, $f6
/* 28790 800BDB90 00000000 */  nop
/* 28794 800BDB94 46062002 */  mul.s      $f0, $f4, $f6
/* 28798 800BDB98 00000000 */  nop
/* 2879C 800BDB9C 460A1082 */  mul.s      $f2, $f2, $f10
/* 287A0 800BDBA0 00000000 */  nop
/* 287A4 800BDBA4 460A2102 */  mul.s      $f4, $f4, $f10
/* 287A8 800BDBA8 46007381 */  sub.s      $f14, $f14, $f0
/* 287AC 800BDBAC 4600D007 */  neg.s      $f0, $f26
/* 287B0 800BDBB0 46060002 */  mul.s      $f0, $f0, $f6
/* 287B4 800BDBB4 00000000 */  nop
/* 287B8 800BDBB8 46107382 */  mul.s      $f14, $f14, $f16
/* 287BC 800BDBBC E61C0034 */  swc1       $f28, 0x34($s0)
/* 287C0 800BDBC0 E61C0038 */  swc1       $f28, 0x38($s0)
/* 287C4 800BDBC4 46024201 */  sub.s      $f8, $f8, $f2
/* 287C8 800BDBC8 E61C000C */  swc1       $f28, 0xC($s0)
/* 287CC 800BDBCC E61C001C */  swc1       $f28, 0x1C($s0)
/* 287D0 800BDBD0 E61C002C */  swc1       $f28, 0x2C($s0)
/* 287D4 800BDBD4 46104202 */  mul.s      $f8, $f8, $f16
/* 287D8 800BDBD8 46040001 */  sub.s      $f0, $f0, $f4
/* 287DC 800BDBDC E616003C */  swc1       $f22, 0x3C($s0)
/* 287E0 800BDBE0 E6140004 */  swc1       $f20, 0x4($s0)
/* 287E4 800BDBE4 E6120014 */  swc1       $f18, 0x14($s0)
/* 287E8 800BDBE8 46006307 */  neg.s      $f12, $f12
/* 287EC 800BDBEC E61C0030 */  swc1       $f28, 0x30($s0)
/* 287F0 800BDBF0 46005287 */  neg.s      $f10, $f10
/* 287F4 800BDBF4 46100002 */  mul.s      $f0, $f0, $f16
/* 287F8 800BDBF8 E60C0024 */  swc1       $f12, 0x24($s0)
/* 287FC 800BDBFC 46003187 */  neg.s      $f6, $f6
/* 28800 800BDC00 E60A0028 */  swc1       $f10, 0x28($s0)
/* 28804 800BDC04 E6060020 */  swc1       $f6, 0x20($s0)
/* 28808 800BDC08 E60E0010 */  swc1       $f14, 0x10($s0)
/* 2880C 800BDC0C E6080008 */  swc1       $f8, 0x8($s0)
/* 28810 800BDC10 E6000018 */  swc1       $f0, 0x18($s0)
.L800BDC14:
/* 28814 800BDC14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 28818 800BDC18 8FB00010 */  lw         $s0, 0x10($sp)
/* 2881C 800BDC1C D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 28820 800BDC20 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 28824 800BDC24 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 28828 800BDC28 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 2882C 800BDC2C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 28830 800BDC30 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 28834 800BDC34 03E00008 */  jr         $ra
/* 28838 800BDC38 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_800BDA70, . - func_800BDA70
