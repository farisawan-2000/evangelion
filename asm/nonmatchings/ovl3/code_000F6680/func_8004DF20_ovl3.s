glabel func_8004DF20_ovl3
/* F7430 8004DF20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F7434 8004DF24 AFBF002C */  sw         $ra, 0x2C($sp)
/* F7438 8004DF28 AFB20028 */  sw         $s2, 0x28($sp)
/* F743C 8004DF2C AFB10024 */  sw         $s1, 0x24($sp)
/* F7440 8004DF30 0C00E109 */  jal        func_80038424_ovl3
/* F7444 8004DF34 AFB00020 */   sw        $s0, 0x20($sp)
/* F7448 8004DF38 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F744C 8004DF3C 24040007 */   addiu     $a0, $zero, 0x7
/* F7450 8004DF40 00408021 */  addu       $s0, $v0, $zero
/* F7454 8004DF44 3C014130 */  lui        $at, (0x41300000 >> 16)
/* F7458 8004DF48 44810000 */  mtc1       $at, $f0
/* F745C 8004DF4C 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* F7460 8004DF50 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* F7464 8004DF54 44811000 */  mtc1       $at, $f2
/* F7468 8004DF58 02002021 */  addu       $a0, $s0, $zero
/* F746C 8004DF5C 24050001 */  addiu      $a1, $zero, 0x1
/* F7470 8004DF60 240200FF */  addiu      $v0, $zero, 0xFF
/* F7474 8004DF64 A6020074 */  sh         $v0, 0x74($s0)
/* F7478 8004DF68 A6020076 */  sh         $v0, 0x76($s0)
/* F747C 8004DF6C A6020078 */  sh         $v0, 0x78($s0)
/* F7480 8004DF70 A602007A */  sh         $v0, 0x7A($s0)
/* F7484 8004DF74 2402FFFF */  addiu      $v0, $zero, -0x1
/* F7488 8004DF78 AE000010 */  sw         $zero, 0x10($s0)
/* F748C 8004DF7C AE000014 */  sw         $zero, 0x14($s0)
/* F7490 8004DF80 AE00001C */  sw         $zero, 0x1C($s0)
/* F7494 8004DF84 AE000020 */  sw         $zero, 0x20($s0)
/* F7498 8004DF88 AE000024 */  sw         $zero, 0x24($s0)
/* F749C 8004DF8C A6020070 */  sh         $v0, 0x70($s0)
/* F74A0 8004DF90 E6000018 */  swc1       $f0, 0x18($s0)
/* F74A4 8004DF94 0C00DFE6 */  jal        func_80037F98_ovl3
/* F74A8 8004DF98 E6020028 */   swc1      $f2, 0x28($s0)
/* F74AC 8004DF9C 8E020004 */  lw         $v0, 0x4($s0)
/* F74B0 8004DFA0 00002021 */  addu       $a0, $zero, $zero
/* F74B4 8004DFA4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F74B8 8004DFA8 44810000 */  mtc1       $at, $f0
/* F74BC 8004DFAC 3C014240 */  lui        $at, (0x42400000 >> 16)
/* F74C0 8004DFB0 44811000 */  mtc1       $at, $f2
/* F74C4 8004DFB4 240501D4 */  addiu      $a1, $zero, 0x1D4
/* F74C8 8004DFB8 24060003 */  addiu      $a2, $zero, 0x3
/* F74CC 8004DFBC A0400067 */  sb         $zero, 0x67($v0)
/* F74D0 8004DFC0 8E030004 */  lw         $v1, 0x4($s0)
/* F74D4 8004DFC4 3C014234 */  lui        $at, (0x42340000 >> 16)
/* F74D8 8004DFC8 44812000 */  mtc1       $at, $f4
/* F74DC 8004DFCC 3C01C324 */  lui        $at, (0xC3240000 >> 16)
/* F74E0 8004DFD0 44813000 */  mtc1       $at, $f6
/* F74E4 8004DFD4 90620066 */  lbu        $v0, 0x66($v1)
/* F74E8 8004DFD8 24070002 */  addiu      $a3, $zero, 0x2
/* F74EC 8004DFDC 24110001 */  addiu      $s1, $zero, 0x1
/* F74F0 8004DFE0 34420011 */  ori        $v0, $v0, 0x11
/* F74F4 8004DFE4 A0620066 */  sb         $v0, 0x66($v1)
/* F74F8 8004DFE8 24020033 */  addiu      $v0, $zero, 0x33
/* F74FC 8004DFEC 3C018015 */  lui        $at, %hi(D_8014A064)
/* F7500 8004DFF0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F7504 8004DFF4 3C018015 */  lui        $at, %hi(D_8014A068)
/* F7508 8004DFF8 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* F750C 8004DFFC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F7510 8004E000 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F7514 8004E004 3C018015 */  lui        $at, %hi(D_8014A070)
/* F7518 8004E008 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F751C 8004E00C 3C018015 */  lui        $at, %hi(D_8014A074)
/* F7520 8004E010 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F7524 8004E014 3C018015 */  lui        $at, %hi(D_8014A078)
/* F7528 8004E018 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F752C 8004E01C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F7530 8004E020 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F7534 8004E024 3C018015 */  lui        $at, %hi(D_8014A080)
/* F7538 8004E028 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F753C 8004E02C 3C018015 */  lui        $at, %hi(D_8014A084)
/* F7540 8004E030 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F7544 8004E034 3C018015 */  lui        $at, %hi(D_8014A088)
/* F7548 8004E038 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F754C 8004E03C AFB10010 */  sw         $s1, 0x10($sp)
/* F7550 8004E040 0C00DB46 */  jal        func_80036D18_ovl3
/* F7554 8004E044 AFA20014 */   sw        $v0, 0x14($sp)
/* F7558 8004E048 00409021 */  addu       $s2, $v0, $zero
/* F755C 8004E04C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* F7560 8004E050 44810000 */  mtc1       $at, $f0
/* F7564 8004E054 8E44000C */  lw         $a0, 0xC($s2)
/* F7568 8004E058 44060000 */  mfc1       $a2, $f0
/* F756C 8004E05C 00002821 */  addu       $a1, $zero, $zero
/* F7570 8004E060 0C02915B */  jal        func_800A456C
/* F7574 8004E064 00C03821 */   addu      $a3, $a2, $zero
/* F7578 8004E068 8E43000C */  lw         $v1, 0xC($s2)
/* F757C 8004E06C 00002021 */  addu       $a0, $zero, $zero
/* F7580 8004E070 9462001E */  lhu        $v0, 0x1E($v1)
/* F7584 8004E074 240501D3 */  addiu      $a1, $zero, 0x1D3
/* F7588 8004E078 24060006 */  addiu      $a2, $zero, 0x6
/* F758C 8004E07C 34420104 */  ori        $v0, $v0, 0x104
/* F7590 8004E080 A462001E */  sh         $v0, 0x1E($v1)
/* F7594 8004E084 8E43000C */  lw         $v1, 0xC($s2)
/* F7598 8004E088 24070005 */  addiu      $a3, $zero, 0x5
/* F759C 8004E08C 24020001 */  addiu      $v0, $zero, 0x1
/* F75A0 8004E090 A462001C */  sh         $v0, 0x1C($v1)
/* F75A4 8004E094 24020036 */  addiu      $v0, $zero, 0x36
/* F75A8 8004E098 AFA00010 */  sw         $zero, 0x10($sp)
/* F75AC 8004E09C 0C00DB46 */  jal        func_80036D18_ovl3
/* F75B0 8004E0A0 AFA20014 */   sw        $v0, 0x14($sp)
/* F75B4 8004E0A4 00409021 */  addu       $s2, $v0, $zero
/* F75B8 8004E0A8 8E44000C */  lw         $a0, 0xC($s2)
/* F75BC 8004E0AC 24050040 */  addiu      $a1, $zero, 0x40
/* F75C0 8004E0B0 0C028D89 */  jal        func_800A3624
/* F75C4 8004E0B4 24060001 */   addiu     $a2, $zero, 0x1
/* F75C8 8004E0B8 24040036 */  addiu      $a0, $zero, 0x36
/* F75CC 8004E0BC 8E43000C */  lw         $v1, 0xC($s2)
/* F75D0 8004E0C0 24050037 */  addiu      $a1, $zero, 0x37
/* F75D4 8004E0C4 2402004B */  addiu      $v0, $zero, 0x4B
/* F75D8 8004E0C8 0C00DD19 */  jal        func_80037464_ovl3
/* F75DC 8004E0CC A462001C */   sh        $v0, 0x1C($v1)
/* F75E0 8004E0D0 00409021 */  addu       $s2, $v0, $zero
/* F75E4 8004E0D4 8E44000C */  lw         $a0, 0xC($s2)
/* F75E8 8004E0D8 24050038 */  addiu      $a1, $zero, 0x38
/* F75EC 8004E0DC 0C028D89 */  jal        func_800A3624
/* F75F0 8004E0E0 24060001 */   addiu     $a2, $zero, 0x1
/* F75F4 8004E0E4 AFB10010 */  sw         $s1, 0x10($sp)
/* F75F8 8004E0E8 8E44000C */  lw         $a0, 0xC($s2)
/* F75FC 8004E0EC 240500FF */  addiu      $a1, $zero, 0xFF
/* F7600 8004E0F0 240600FF */  addiu      $a2, $zero, 0xFF
/* F7604 8004E0F4 0C028E41 */  jal        func_800A3904
/* F7608 8004E0F8 240700FF */   addiu     $a3, $zero, 0xFF
/* F760C 8004E0FC 24040036 */  addiu      $a0, $zero, 0x36
/* F7610 8004E100 8E42000C */  lw         $v0, 0xC($s2)
/* F7614 8004E104 24050038 */  addiu      $a1, $zero, 0x38
/* F7618 8004E108 2410004A */  addiu      $s0, $zero, 0x4A
/* F761C 8004E10C 0C00DD19 */  jal        func_80037464_ovl3
/* F7620 8004E110 A450001C */   sh        $s0, 0x1C($v0)
/* F7624 8004E114 00409021 */  addu       $s2, $v0, $zero
/* F7628 8004E118 8E44000C */  lw         $a0, 0xC($s2)
/* F762C 8004E11C 24050048 */  addiu      $a1, $zero, 0x48
/* F7630 8004E120 0C028D89 */  jal        func_800A3624
/* F7634 8004E124 24060001 */   addiu     $a2, $zero, 0x1
/* F7638 8004E128 AFB10010 */  sw         $s1, 0x10($sp)
/* F763C 8004E12C 8E44000C */  lw         $a0, 0xC($s2)
/* F7640 8004E130 240500FF */  addiu      $a1, $zero, 0xFF
/* F7644 8004E134 240600FF */  addiu      $a2, $zero, 0xFF
/* F7648 8004E138 0C028E41 */  jal        func_800A3904
/* F764C 8004E13C 240700FF */   addiu     $a3, $zero, 0xFF
/* F7650 8004E140 8E42000C */  lw         $v0, 0xC($s2)
/* F7654 8004E144 3C048007 */  lui        $a0, %hi(D_80069250_ovl3)
/* F7658 8004E148 24849250 */  addiu      $a0, $a0, %lo(D_80069250_ovl3)
/* F765C 8004E14C 2405FFFE */  addiu      $a1, $zero, -0x2
/* F7660 8004E150 A450001C */  sh         $s0, 0x1C($v0)
/* F7664 8004E154 2402FFFE */  addiu      $v0, $zero, -0x2
/* F7668 8004E158 A3A2001C */  sb         $v0, 0x1C($sp)
/* F766C 8004E15C 24020001 */  addiu      $v0, $zero, 0x1
/* F7670 8004E160 A3A2001E */  sb         $v0, 0x1E($sp)
/* F7674 8004E164 24020002 */  addiu      $v0, $zero, 0x2
/* F7678 8004E168 AFA40018 */  sw         $a0, 0x18($sp)
/* F767C 8004E16C A3A0001D */  sb         $zero, 0x1D($sp)
/* F7680 8004E170 0C029D2A */  jal        func_800A74A8
/* F7684 8004E174 A3A2001F */   sb        $v0, 0x1F($sp)
/* F7688 8004E178 27A40018 */  addiu      $a0, $sp, 0x18
/* F768C 8004E17C 240520C9 */  addiu      $a1, $zero, 0x20C9
/* F7690 8004E180 240620D3 */  addiu      $a2, $zero, 0x20D3
/* F7694 8004E184 00021FC2 */  srl        $v1, $v0, 31
/* F7698 8004E188 00621821 */  addu       $v1, $v1, $v0
/* F769C 8004E18C 00031843 */  sra        $v1, $v1, 1
/* F76A0 8004E190 240700A0 */  addiu      $a3, $zero, 0xA0
/* F76A4 8004E194 00E33823 */  subu       $a3, $a3, $v1
/* F76A8 8004E198 00073C00 */  sll        $a3, $a3, 16
/* F76AC 8004E19C 00073C03 */  sra        $a3, $a3, 16
/* F76B0 8004E1A0 240200AF */  addiu      $v0, $zero, 0xAF
/* F76B4 8004E1A4 0C00DEF7 */  jal        func_80037BDC_ovl3
/* F76B8 8004E1A8 AFA20010 */   sw        $v0, 0x10($sp)
/* F76BC 8004E1AC 8FBF002C */  lw         $ra, 0x2C($sp)
/* F76C0 8004E1B0 8FB20028 */  lw         $s2, 0x28($sp)
/* F76C4 8004E1B4 8FB10024 */  lw         $s1, 0x24($sp)
/* F76C8 8004E1B8 8FB00020 */  lw         $s0, 0x20($sp)
/* F76CC 8004E1BC 03E00008 */  jr         $ra
/* F76D0 8004E1C0 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_8004DF20_ovl3, . - func_8004DF20_ovl3
