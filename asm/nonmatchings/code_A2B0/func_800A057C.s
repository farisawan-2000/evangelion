glabel func_800A057C
/* B17C 800A057C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B180 800A0580 AFB3002C */  sw         $s3, 0x2C($sp)
/* B184 800A0584 00809821 */  addu       $s3, $a0, $zero
/* B188 800A0588 00061400 */  sll        $v0, $a2, 16
/* B18C 800A058C AFBF003C */  sw         $ra, 0x3C($sp)
/* B190 800A0590 AFB60038 */  sw         $s6, 0x38($sp)
/* B194 800A0594 AFB50034 */  sw         $s5, 0x34($sp)
/* B198 800A0598 AFB40030 */  sw         $s4, 0x30($sp)
/* B19C 800A059C AFB20028 */  sw         $s2, 0x28($sp)
/* B1A0 800A05A0 AFB10024 */  sw         $s1, 0x24($sp)
/* B1A4 800A05A4 AFB00020 */  sw         $s0, 0x20($sp)
/* B1A8 800A05A8 8E690008 */  lw         $t1, 0x8($s3)
/* B1AC 800A05AC 00022403 */  sra        $a0, $v0, 16
/* B1B0 800A05B0 00041080 */  sll        $v0, $a0, 2
/* B1B4 800A05B4 00491021 */  addu       $v0, $v0, $t1
/* B1B8 800A05B8 8C520000 */  lw         $s2, 0x0($v0)
/* B1BC 800A05BC 00A0A021 */  addu       $s4, $a1, $zero
/* B1C0 800A05C0 8E470000 */  lw         $a3, 0x0($s2)
/* B1C4 800A05C4 0000B021 */  addu       $s6, $zero, $zero
/* B1C8 800A05C8 96620064 */  lhu        $v0, 0x64($s3)
/* B1CC 800A05CC 84E8000A */  lh         $t0, 0xA($a3)
/* B1D0 800A05D0 2443FFFF */  addiu      $v1, $v0, -0x1
/* B1D4 800A05D4 29020012 */  slti       $v0, $t0, 0x12
/* B1D8 800A05D8 104000E6 */  beqz       $v0, .L800A0974
/* B1DC 800A05DC 00C0A821 */   addu      $s5, $a2, $zero
/* B1E0 800A05E0 00031400 */  sll        $v0, $v1, 16
/* B1E4 800A05E4 00022C03 */  sra        $a1, $v0, 16
/* B1E8 800A05E8 0085102A */  slt        $v0, $a0, $a1
/* B1EC 800A05EC 1040000E */  beqz       $v0, .L800A0628
/* B1F0 800A05F0 26500020 */   addiu     $s0, $s2, 0x20
/* B1F4 800A05F4 84E3000C */  lh         $v1, 0xC($a3)
/* B1F8 800A05F8 00641821 */  addu       $v1, $v1, $a0
/* B1FC 800A05FC 00031080 */  sll        $v0, $v1, 2
/* B200 800A0600 00491021 */  addu       $v0, $v0, $t1
/* B204 800A0604 8C420004 */  lw         $v0, 0x4($v0)
/* B208 800A0608 0065182A */  slt        $v1, $v1, $a1
/* B20C 800A060C 10600006 */  beqz       $v1, .L800A0628
/* B210 800A0610 00000000 */   nop
/* B214 800A0614 8C420000 */  lw         $v0, 0x0($v0)
/* B218 800A0618 8442000A */  lh         $v0, 0xA($v0)
/* B21C 800A061C 01021026 */  xor        $v0, $t0, $v0
/* B220 800A0620 2C420001 */  sltiu      $v0, $v0, 0x1
/* B224 800A0624 0040B021 */  addu       $s6, $v0, $zero
.L800A0628:
/* B228 800A0628 86420014 */  lh         $v0, 0x14($s2)
/* B22C 800A062C 86430016 */  lh         $v1, 0x16($s2)
/* B230 800A0630 86470018 */  lh         $a3, 0x18($s2)
/* B234 800A0634 44821000 */  mtc1       $v0, $f2
/* B238 800A0638 00000000 */  nop
/* B23C 800A063C 468010A0 */  cvt.s.w    $f2, $f2
/* B240 800A0640 44051000 */  mfc1       $a1, $f2
/* B244 800A0644 00000000 */  nop
/* B248 800A0648 44831000 */  mtc1       $v1, $f2
/* B24C 800A064C 00000000 */  nop
/* B250 800A0650 468010A0 */  cvt.s.w    $f2, $f2
/* B254 800A0654 44061000 */  mfc1       $a2, $f2
/* B258 800A0658 00000000 */  nop
/* B25C 800A065C 44871000 */  mtc1       $a3, $f2
/* B260 800A0660 00000000 */  nop
/* B264 800A0664 468010A0 */  cvt.s.w    $f2, $f2
/* B268 800A0668 44071000 */  mfc1       $a3, $f2
/* B26C 800A066C 00000000 */  nop
/* B270 800A0670 0C02FFFD */  jal        func_800BFFF4
/* B274 800A0674 02002021 */   addu      $a0, $s0, $zero
/* B278 800A0678 02C01021 */  addu       $v0, $s6, $zero
/* B27C 800A067C 10400009 */  beqz       $v0, .L800A06A4
/* B280 800A0680 3C04DA38 */   lui       $a0, (0xDA380001 >> 16)
/* B284 800A0684 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* B288 800A0688 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* B28C 800A068C 24430008 */  addiu      $v1, $v0, 0x8
/* B290 800A0690 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B294 800A0694 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B298 800A0698 3C03DA38 */  lui        $v1, (0xDA380000 >> 16)
/* B29C 800A069C 080281B0 */  j          .L800A06C0
/* B2A0 800A06A0 AC430000 */   sw        $v1, 0x0($v0)
.L800A06A4:
/* B2A4 800A06A4 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* B2A8 800A06A8 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* B2AC 800A06AC 34840001 */  ori        $a0, $a0, (0xDA380001 & 0xFFFF)
/* B2B0 800A06B0 24430008 */  addiu      $v1, $v0, 0x8
/* B2B4 800A06B4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B2B8 800A06B8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B2BC 800A06BC AC440000 */  sw         $a0, 0x0($v0)
.L800A06C0:
/* B2C0 800A06C0 1280002E */  beqz       $s4, .L800A077C
/* B2C4 800A06C4 AC500004 */   sw        $s0, 0x4($v0)
/* B2C8 800A06C8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* B2CC 800A06CC 44810000 */  mtc1       $at, $f0
/* B2D0 800A06D0 00000000 */  nop
/* B2D4 800A06D4 8E830014 */  lw         $v1, 0x14($s4)
/* B2D8 800A06D8 00158400 */  sll        $s0, $s5, 16
/* B2DC 800A06DC 00108403 */  sra        $s0, $s0, 16
/* B2E0 800A06E0 00101040 */  sll        $v0, $s0, 1
/* B2E4 800A06E4 00501021 */  addu       $v0, $v0, $s0
/* B2E8 800A06E8 000210C0 */  sll        $v0, $v0, 3
/* B2EC 800A06EC 00621821 */  addu       $v1, $v1, $v0
/* B2F0 800A06F0 E7A00010 */  swc1       $f0, 0x10($sp)
/* B2F4 800A06F4 C4600000 */  lwc1       $f0, 0x0($v1)
/* B2F8 800A06F8 E7A00014 */  swc1       $f0, 0x14($sp)
/* B2FC 800A06FC C4600004 */  lwc1       $f0, 0x4($v1)
/* B300 800A0700 E7A00018 */  swc1       $f0, 0x18($sp)
/* B304 800A0704 C4600008 */  lwc1       $f0, 0x8($v1)
/* B308 800A0708 E7A0001C */  swc1       $f0, 0x1C($sp)
/* B30C 800A070C 8C65000C */  lw         $a1, 0xC($v1)
/* B310 800A0710 8C660010 */  lw         $a2, 0x10($v1)
/* B314 800A0714 8C670014 */  lw         $a3, 0x14($v1)
/* B318 800A0718 26510060 */  addiu      $s1, $s2, 0x60
/* B31C 800A071C 0C02FD0E */  jal        guPosition
/* B320 800A0720 02202021 */   addu      $a0, $s1, $zero
/* B324 800A0724 3C048015 */  lui        $a0, %hi(gDisplayListHead)
/* B328 800A0728 8C849F94 */  lw         $a0, %lo(gDisplayListHead)($a0)
/* B32C 800A072C 3C02DA38 */  lui        $v0, (0xDA380001 >> 16)
/* B330 800A0730 34420001 */  ori        $v0, $v0, (0xDA380001 & 0xFFFF)
/* B334 800A0734 AC820000 */  sw         $v0, 0x0($a0)
/* B338 800A0738 AC910004 */  sw         $s1, 0x4($a0)
/* B33C 800A073C 8E830008 */  lw         $v1, 0x8($s4)
/* B340 800A0740 00108080 */  sll        $s0, $s0, 2
/* B344 800A0744 24820008 */  addiu      $v0, $a0, 0x8
/* B348 800A0748 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B34C 800A074C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B350 800A0750 02038021 */  addu       $s0, $s0, $v1
/* B354 800A0754 92020000 */  lbu        $v0, 0x0($s0)
/* B358 800A0758 10400008 */  beqz       $v0, .L800A077C
/* B35C 800A075C 3C02DA38 */   lui       $v0, (0xDA380002 >> 16)
/* B360 800A0760 34420002 */  ori        $v0, $v0, (0xDA380002 & 0xFFFF)
/* B364 800A0764 24830010 */  addiu      $v1, $a0, 0x10
/* B368 800A0768 AC820008 */  sw         $v0, 0x8($a0)
/* B36C 800A076C 26620010 */  addiu      $v0, $s3, 0x10
/* B370 800A0770 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B374 800A0774 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B378 800A0778 AC82000C */  sw         $v0, 0xC($a0)
.L800A077C:
/* B37C 800A077C 3C038015 */  lui        $v1, %hi(D_80149BA8)
/* B380 800A0780 8C639BA8 */  lw         $v1, %lo(D_80149BA8)($v1)
/* B384 800A0784 2402FFFF */  addiu      $v0, $zero, -0x1
/* B388 800A0788 10620004 */  beq        $v1, $v0, .L800A079C
/* B38C 800A078C 00151400 */   sll       $v0, $s5, 16
/* B390 800A0790 00021403 */  sra        $v0, $v0, 16
/* B394 800A0794 14620048 */  bne        $v1, $v0, .L800A08B8
/* B398 800A0798 00000000 */   nop
.L800A079C:
/* B39C 800A079C 92620066 */  lbu        $v0, 0x66($s3)
/* B3A0 800A07A0 30420004 */  andi       $v0, $v0, 0x4
/* B3A4 800A07A4 1040001B */  beqz       $v0, .L800A0814
/* B3A8 800A07A8 00000000 */   nop
/* B3AC 800A07AC 924200A4 */  lbu        $v0, 0xA4($s2)
/* B3B0 800A07B0 14400018 */  bnez       $v0, .L800A0814
/* B3B4 800A07B4 3C04D9FD */   lui       $a0, (0xD9FDFFFF >> 16)
/* B3B8 800A07B8 3484FFFF */  ori        $a0, $a0, (0xD9FDFFFF & 0xFFFF)
/* B3BC 800A07BC 3C06FCFF */  lui        $a2, (0xFCFFFFFF >> 16)
/* B3C0 800A07C0 34C6FFFF */  ori        $a2, $a2, (0xFCFFFFFF & 0xFFFF)
/* B3C4 800A07C4 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* B3C8 800A07C8 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* B3CC 800A07CC 3C05FFFC */  lui        $a1, (0xFFFCF279 >> 16)
/* B3D0 800A07D0 34A5F279 */  ori        $a1, $a1, (0xFFFCF279 & 0xFFFF)
/* B3D4 800A07D4 24430008 */  addiu      $v1, $v0, 0x8
/* B3D8 800A07D8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B3DC 800A07DC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B3E0 800A07E0 3C03E700 */  lui        $v1, (0xE7000000 >> 16)
/* B3E4 800A07E4 AC430000 */  sw         $v1, 0x0($v0)
/* B3E8 800A07E8 24430010 */  addiu      $v1, $v0, 0x10
/* B3EC 800A07EC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B3F0 800A07F0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B3F4 800A07F4 24430018 */  addiu      $v1, $v0, 0x18
/* B3F8 800A07F8 AC400004 */  sw         $zero, 0x4($v0)
/* B3FC 800A07FC AC440008 */  sw         $a0, 0x8($v0)
/* B400 800A0800 AC40000C */  sw         $zero, 0xC($v0)
/* B404 800A0804 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B408 800A0808 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B40C 800A080C AC460010 */  sw         $a2, 0x10($v0)
/* B410 800A0810 AC450014 */  sw         $a1, 0x14($v0)
.L800A0814:
/* B414 800A0814 8E4200A0 */  lw         $v0, 0xA0($s2)
/* B418 800A0818 10400009 */  beqz       $v0, .L800A0840
/* B41C 800A081C 3C02DE00 */   lui       $v0, (0xDE000000 >> 16)
/* B420 800A0820 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B424 800A0824 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B428 800A0828 AC620000 */  sw         $v0, 0x0($v1)
/* B42C 800A082C 8E4400A0 */  lw         $a0, 0xA0($s2)
/* B430 800A0830 24620008 */  addiu      $v0, $v1, 0x8
/* B434 800A0834 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B438 800A0838 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B43C 800A083C AC640004 */  sw         $a0, 0x4($v1)
.L800A0840:
/* B440 800A0840 92620066 */  lbu        $v0, 0x66($s3)
/* B444 800A0844 30420004 */  andi       $v0, $v0, 0x4
/* B448 800A0848 1040001B */  beqz       $v0, .L800A08B8
/* B44C 800A084C 00000000 */   nop
/* B450 800A0850 924200A4 */  lbu        $v0, 0xA4($s2)
/* B454 800A0854 14400018 */  bnez       $v0, .L800A08B8
/* B458 800A0858 3C04D9FF */   lui       $a0, (0xD9FFFFFF >> 16)
/* B45C 800A085C 3484FFFF */  ori        $a0, $a0, (0xD9FFFFFF & 0xFFFF)
/* B460 800A0860 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B464 800A0864 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B468 800A0868 3C05FC12 */  lui        $a1, (0xFC127E24 >> 16)
/* B46C 800A086C 34A57E24 */  ori        $a1, $a1, (0xFC127E24 & 0xFFFF)
/* B470 800A0870 24620008 */  addiu      $v0, $v1, 0x8
/* B474 800A0874 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B478 800A0878 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B47C 800A087C 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
/* B480 800A0880 AC620000 */  sw         $v0, 0x0($v1)
/* B484 800A0884 24620010 */  addiu      $v0, $v1, 0x10
/* B488 800A0888 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B48C 800A088C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B490 800A0890 3C020002 */  lui        $v0, (0x20000 >> 16)
/* B494 800A0894 AC62000C */  sw         $v0, 0xC($v1)
/* B498 800A0898 24620018 */  addiu      $v0, $v1, 0x18
/* B49C 800A089C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B4A0 800A08A0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B4A4 800A08A4 2402F3F9 */  addiu      $v0, $zero, -0xC07
/* B4A8 800A08A8 AC600004 */  sw         $zero, 0x4($v1)
/* B4AC 800A08AC AC640008 */  sw         $a0, 0x8($v1)
/* B4B0 800A08B0 AC650010 */  sw         $a1, 0x10($v1)
/* B4B4 800A08B4 AC620014 */  sw         $v0, 0x14($v1)
.L800A08B8:
/* B4B8 800A08B8 12800010 */  beqz       $s4, .L800A08FC
/* B4BC 800A08BC 00151C00 */   sll       $v1, $s5, 16
/* B4C0 800A08C0 8E820008 */  lw         $v0, 0x8($s4)
/* B4C4 800A08C4 00031B83 */  sra        $v1, $v1, 14
/* B4C8 800A08C8 00621821 */  addu       $v1, $v1, $v0
/* B4CC 800A08CC 90620000 */  lbu        $v0, 0x0($v1)
/* B4D0 800A08D0 1040000A */  beqz       $v0, .L800A08FC
/* B4D4 800A08D4 3C04D838 */   lui       $a0, (0xD8380002 >> 16)
/* B4D8 800A08D8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B4DC 800A08DC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B4E0 800A08E0 34840002 */  ori        $a0, $a0, (0xD8380002 & 0xFFFF)
/* B4E4 800A08E4 24620008 */  addiu      $v0, $v1, 0x8
/* B4E8 800A08E8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B4EC 800A08EC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B4F0 800A08F0 24020040 */  addiu      $v0, $zero, 0x40
/* B4F4 800A08F4 AC640000 */  sw         $a0, 0x0($v1)
/* B4F8 800A08F8 AC620004 */  sw         $v0, 0x4($v1)
.L800A08FC:
/* B4FC 800A08FC 8E420000 */  lw         $v0, 0x0($s2)
/* B500 800A0900 8442000C */  lh         $v0, 0xC($v0)
/* B504 800A0904 10400006 */  beqz       $v0, .L800A0920
/* B508 800A0908 02602021 */   addu      $a0, $s3, $zero
/* B50C 800A090C 02802821 */  addu       $a1, $s4, $zero
/* B510 800A0910 26A60001 */  addiu      $a2, $s5, 0x1
/* B514 800A0914 00063400 */  sll        $a2, $a2, 16
/* B518 800A0918 0C02815F */  jal        func_800A057C
/* B51C 800A091C 00063403 */   sra       $a2, $a2, 16
.L800A0920:
/* B520 800A0920 02C01021 */  addu       $v0, $s6, $zero
/* B524 800A0924 10400013 */  beqz       $v0, .L800A0974
/* B528 800A0928 3C02D838 */   lui       $v0, (0xD8380002 >> 16)
/* B52C 800A092C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B530 800A0930 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B534 800A0934 34420002 */  ori        $v0, $v0, (0xD8380002 & 0xFFFF)
/* B538 800A0938 AC620000 */  sw         $v0, 0x0($v1)
/* B53C 800A093C 24020040 */  addiu      $v0, $zero, 0x40
/* B540 800A0940 AC620004 */  sw         $v0, 0x4($v1)
/* B544 800A0944 8E420000 */  lw         $v0, 0x0($s2)
/* B548 800A0948 02602021 */  addu       $a0, $s3, $zero
/* B54C 800A094C 9446000C */  lhu        $a2, 0xC($v0)
/* B550 800A0950 02802821 */  addu       $a1, $s4, $zero
/* B554 800A0954 24630008 */  addiu      $v1, $v1, 0x8
/* B558 800A0958 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B55C 800A095C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* B560 800A0960 24C60001 */  addiu      $a2, $a2, 0x1
/* B564 800A0964 02A63021 */  addu       $a2, $s5, $a2
/* B568 800A0968 00063400 */  sll        $a2, $a2, 16
/* B56C 800A096C 0C02815F */  jal        func_800A057C
/* B570 800A0970 00063403 */   sra       $a2, $a2, 16
.L800A0974:
/* B574 800A0974 8FBF003C */  lw         $ra, 0x3C($sp)
/* B578 800A0978 8FB60038 */  lw         $s6, 0x38($sp)
/* B57C 800A097C 8FB50034 */  lw         $s5, 0x34($sp)
/* B580 800A0980 8FB40030 */  lw         $s4, 0x30($sp)
/* B584 800A0984 8FB3002C */  lw         $s3, 0x2C($sp)
/* B588 800A0988 8FB20028 */  lw         $s2, 0x28($sp)
/* B58C 800A098C 8FB10024 */  lw         $s1, 0x24($sp)
/* B590 800A0990 8FB00020 */  lw         $s0, 0x20($sp)
/* B594 800A0994 27BD0040 */  addiu      $sp, $sp, 0x40
/* B598 800A0998 03E00008 */  jr         $ra
/* B59C 800A099C 00000000 */   nop
.size func_800A057C, . - func_800A057C
