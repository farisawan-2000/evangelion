.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C36A0
/* 2E2A0 800C36A0 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 2E2A4 800C36A4 AFB60158 */  sw         $s6, 0x158($sp)
/* 2E2A8 800C36A8 8FB60170 */  lw         $s6, 0x170($sp)
/* 2E2AC 800C36AC AFB00140 */  sw         $s0, 0x140($sp)
/* 2E2B0 800C36B0 00808021 */  addu       $s0, $a0, $zero
/* 2E2B4 800C36B4 AFB50154 */  sw         $s5, 0x154($sp)
/* 2E2B8 800C36B8 00A0A821 */  addu       $s5, $a1, $zero
/* 2E2BC 800C36BC AFB10144 */  sw         $s1, 0x144($sp)
/* 2E2C0 800C36C0 00E08821 */  addu       $s1, $a3, $zero
/* 2E2C4 800C36C4 AFBF015C */  sw         $ra, 0x15c($sp)
/* 2E2C8 800C36C8 AFB40150 */  sw         $s4, 0x150($sp)
/* 2E2CC 800C36CC AFB3014C */  sw         $s3, 0x14c($sp)
/* 2E2D0 800C36D0 AFB20148 */  sw         $s2, 0x148($sp)
/* 2E2D4 800C36D4 8E020050 */  lw         $v0, 0x50($s0)
/* 2E2D8 800C36D8 00151FC2 */  srl        $v1, $s5, 0x1f
/* 2E2DC 800C36DC 02A2102A */  slt        $v0, $s5, $v0
/* 2E2E0 800C36E0 38420001 */  xori       $v0, $v0, 1
/* 2E2E4 800C36E4 00431025 */  or         $v0, $v0, $v1
/* 2E2E8 800C36E8 1440003F */  bnez       $v0, .L800C37E8
/* 2E2EC 800C36EC 00C0A021 */   addu      $s4, $a2, $zero
/* 2E2F0 800C36F0 1AC0003D */  blez       $s6, .L800C37E8
/* 2E2F4 800C36F4 32C2001F */   andi      $v0, $s6, 0x1f
/* 2E2F8 800C36F8 544000EF */  bnezl      $v0, .L800C3AB8
/* 2E2FC 800C36FC 24020005 */   addiu     $v0, $zero, 5
/* 2E300 800C3700 06200039 */  bltz       $s1, .L800C37E8
/* 2E304 800C3704 3222001F */   andi      $v0, $s1, 0x1f
/* 2E308 800C3708 144000EB */  bnez       $v0, .L800C3AB8
/* 2E30C 800C370C 24020005 */   addiu     $v0, $zero, 5
/* 2E310 800C3710 8E020000 */  lw         $v0, ($s0)
/* 2E314 800C3714 30420001 */  andi       $v0, $v0, 1
/* 2E318 800C3718 104000E7 */  beqz       $v0, .L800C3AB8
/* 2E31C 800C371C 24020005 */   addiu     $v0, $zero, 5
/* 2E320 800C3720 0C031325 */  jal        func_800C4C94
/* 2E324 800C3724 02002021 */   addu      $a0, $s0, $zero
/* 2E328 800C3728 24030002 */  addiu      $v1, $zero, 2
/* 2E32C 800C372C 104300E2 */  beq        $v0, $v1, .L800C3AB8
/* 2E330 800C3730 24020002 */   addiu     $v0, $zero, 2
/* 2E334 800C3734 92020065 */  lbu        $v0, 0x65($s0)
/* 2E338 800C3738 10400006 */  beqz       $v0, .L800C3754
/* 2E33C 800C373C 02002021 */   addu      $a0, $s0, $zero
/* 2E340 800C3740 0C031164 */  jal        func_800C4590
/* 2E344 800C3744 00002821 */   addu      $a1, $zero, $zero
/* 2E348 800C3748 00401821 */  addu       $v1, $v0, $zero
/* 2E34C 800C374C 146000DA */  bnez       $v1, .L800C3AB8
/* 2E350 800C3750 00000000 */   nop
.L800C3754:
/* 2E354 800C3754 8E040004 */  lw         $a0, 4($s0)
/* 2E358 800C3758 8E06005C */  lw         $a2, 0x5c($s0)
/* 2E35C 800C375C 8E050008 */  lw         $a1, 8($s0)
/* 2E360 800C3760 27A70018 */  addiu      $a3, $sp, 0x18
/* 2E364 800C3764 00D53021 */  addu       $a2, $a2, $s5
/* 2E368 800C3768 0C031424 */  jal        func_800C5090
/* 2E36C 800C376C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 2E370 800C3770 00401821 */  addu       $v1, $v0, $zero
/* 2E374 800C3774 146000D0 */  bnez       $v1, .L800C3AB8
/* 2E378 800C3778 00000000 */   nop
/* 2E37C 800C377C 97A2001C */  lhu        $v0, 0x1c($sp)
/* 2E380 800C3780 104000CD */  beqz       $v0, .L800C3AB8
/* 2E384 800C3784 24020005 */   addiu     $v0, $zero, 5
/* 2E388 800C3788 8FA20018 */  lw         $v0, 0x18($sp)
/* 2E38C 800C378C 104000CA */  beqz       $v0, .L800C3AB8
/* 2E390 800C3790 24020005 */   addiu     $v0, $zero, 5
/* 2E394 800C3794 97A2001E */  lhu        $v0, 0x1e($sp)
/* 2E398 800C3798 8E030060 */  lw         $v1, 0x60($s0)
/* 2E39C 800C379C 0043102A */  slt        $v0, $v0, $v1
/* 2E3A0 800C37A0 1440000D */  bnez       $v0, .L800C37D8
/* 2E3A4 800C37A4 00000000 */   nop
/* 2E3A8 800C37A8 93A2001E */  lbu        $v0, 0x1e($sp)
/* 2E3AC 800C37AC 92030064 */  lbu        $v1, 0x64($s0)
/* 2E3B0 800C37B0 0043102B */  sltu       $v0, $v0, $v1
/* 2E3B4 800C37B4 10400008 */  beqz       $v0, .L800C37D8
/* 2E3B8 800C37B8 00000000 */   nop
/* 2E3BC 800C37BC 93A2001F */  lbu        $v0, 0x1f($sp)
/* 2E3C0 800C37C0 2C430001 */  sltiu      $v1, $v0, 1
/* 2E3C4 800C37C4 2C420080 */  sltiu      $v0, $v0, 0x80
/* 2E3C8 800C37C8 38420001 */  xori       $v0, $v0, 1
/* 2E3CC 800C37CC 00621825 */  or         $v1, $v1, $v0
/* 2E3D0 800C37D0 50600007 */  beql       $v1, $zero, .L800C37F0
/* 2E3D4 800C37D4 328200FF */   andi      $v0, $s4, 0xff
.L800C37D8:
/* 2E3D8 800C37D8 97A4001E */  lhu        $a0, 0x1e($sp)
/* 2E3DC 800C37DC 24030001 */  addiu      $v1, $zero, 1
/* 2E3E0 800C37E0 148300B5 */  bne        $a0, $v1, .L800C3AB8
/* 2E3E4 800C37E4 24020003 */   addiu     $v0, $zero, 3
.L800C37E8:
/* 2E3E8 800C37E8 08030EAE */  j          .L800C3AB8
/* 2E3EC 800C37EC 24020005 */   addiu     $v0, $zero, 5
.L800C37F0:
/* 2E3F0 800C37F0 14400007 */  bnez       $v0, .L800C3810
/* 2E3F4 800C37F4 240200FF */   addiu     $v0, $zero, 0xff
/* 2E3F8 800C37F8 93A20020 */  lbu        $v0, 0x20($sp)
/* 2E3FC 800C37FC 30420002 */  andi       $v0, $v0, 2
/* 2E400 800C3800 14400003 */  bnez       $v0, .L800C3810
/* 2E404 800C3804 240200FF */   addiu     $v0, $zero, 0xff
/* 2E408 800C3808 08030EAE */  j          .L800C3AB8
/* 2E40C 800C380C 24020006 */   addiu     $v0, $zero, 6
.L800C3810:
/* 2E410 800C3810 02203821 */  addu       $a3, $s1, $zero
/* 2E414 800C3814 04E10002 */  bgez       $a3, .L800C3820
/* 2E418 800C3818 A3A20138 */   sb        $v0, 0x138($sp)
/* 2E41C 800C381C 24E7001F */  addiu      $a3, $a3, 0x1f
.L800C3820:
/* 2E420 800C3820 97A2001E */  lhu        $v0, 0x1e($sp)
/* 2E424 800C3824 00078943 */  sra        $s1, $a3, 5
/* 2E428 800C3828 A7A2013A */  sh         $v0, 0x13a($sp)
/* 2E42C 800C382C 2A220008 */  slti       $v0, $s1, 8
/* 2E430 800C3830 1440002C */  bnez       $v0, .L800C38E4
/* 2E434 800C3834 02C01021 */   addu      $v0, $s6, $zero
/* 2E438 800C3838 27B20038 */  addiu      $s2, $sp, 0x38
/* 2E43C 800C383C 24130001 */  addiu      $s3, $zero, 1
.L800C3840:
/* 2E440 800C3840 93A3013A */  lbu        $v1, 0x13a($sp)
/* 2E444 800C3844 93A20138 */  lbu        $v0, 0x138($sp)
/* 2E448 800C3848 306700FF */  andi       $a3, $v1, 0xff
/* 2E44C 800C384C 10E20007 */  beq        $a3, $v0, .L800C386C
/* 2E450 800C3850 02002021 */   addu      $a0, $s0, $zero
/* 2E454 800C3854 A3A30138 */  sb         $v1, 0x138($sp)
/* 2E458 800C3858 02402821 */  addu       $a1, $s2, $zero
/* 2E45C 800C385C 0C031353 */  jal        func_800C4D4C
/* 2E460 800C3860 00003021 */   addu      $a2, $zero, $zero
/* 2E464 800C3864 1440001A */  bnez       $v0, .L800C38D0
/* 2E468 800C3868 00401821 */   addu      $v1, $v0, $zero
.L800C386C:
/* 2E46C 800C386C 93A2013B */  lbu        $v0, 0x13b($sp)
/* 2E470 800C3870 00021040 */  sll        $v0, $v0, 1
/* 2E474 800C3874 00521021 */  addu       $v0, $v0, $s2
/* 2E478 800C3878 94430000 */  lhu        $v1, ($v0)
/* 2E47C 800C387C A7A3013A */  sh         $v1, 0x13a($sp)
/* 2E480 800C3880 8E020060 */  lw         $v0, 0x60($s0)
/* 2E484 800C3884 0062182A */  slt        $v1, $v1, $v0
/* 2E488 800C3888 1460000D */  bnez       $v1, .L800C38C0
/* 2E48C 800C388C 00000000 */   nop
/* 2E490 800C3890 93A2013A */  lbu        $v0, 0x13a($sp)
/* 2E494 800C3894 92030064 */  lbu        $v1, 0x64($s0)
/* 2E498 800C3898 0043102B */  sltu       $v0, $v0, $v1
/* 2E49C 800C389C 10400008 */  beqz       $v0, .L800C38C0
/* 2E4A0 800C38A0 00000000 */   nop
/* 2E4A4 800C38A4 93A2013B */  lbu        $v0, 0x13b($sp)
/* 2E4A8 800C38A8 2C430001 */  sltiu      $v1, $v0, 1
/* 2E4AC 800C38AC 2C420080 */  sltiu      $v0, $v0, 0x80
/* 2E4B0 800C38B0 38420001 */  xori       $v0, $v0, 1
/* 2E4B4 800C38B4 00621825 */  or         $v1, $v1, $v0
/* 2E4B8 800C38B8 50600005 */  beql       $v1, $zero, .L800C38D0
/* 2E4BC 800C38BC 00001821 */   addu      $v1, $zero, $zero
.L800C38C0:
/* 2E4C0 800C38C0 97A2013A */  lhu        $v0, 0x13a($sp)
/* 2E4C4 800C38C4 14530002 */  bne        $v0, $s3, .L800C38D0
/* 2E4C8 800C38C8 24030003 */   addiu     $v1, $zero, 3
/* 2E4CC 800C38CC 24030005 */  addiu      $v1, $zero, 5
.L800C38D0:
/* 2E4D0 800C38D0 14600074 */  bnez       $v1, .L800C3AA4
/* 2E4D4 800C38D4 2631FFF8 */   addiu     $s1, $s1, -8
/* 2E4D8 800C38D8 2A220008 */  slti       $v0, $s1, 8
/* 2E4DC 800C38DC 1040FFD8 */  beqz       $v0, .L800C3840
/* 2E4E0 800C38E0 02C01021 */   addu      $v0, $s6, $zero
.L800C38E4:
/* 2E4E4 800C38E4 04420001 */  bltzl      $v0, .L800C38EC
/* 2E4E8 800C38E8 2442001F */   addiu     $v0, $v0, 0x1f
.L800C38EC:
/* 2E4EC 800C38EC 00029943 */  sra        $s3, $v0, 5
/* 2E4F0 800C38F0 8FB20174 */  lw         $s2, 0x174($sp)
/* 2E4F4 800C38F4 5A60004E */  blezl      $s3, .L800C3A30
/* 2E4F8 800C38F8 328300FF */   andi      $v1, $s4, 0xff
/* 2E4FC 800C38FC 24160001 */  addiu      $s6, $zero, 1
.L800C3900:
/* 2E500 800C3900 24020008 */  addiu      $v0, $zero, 8
/* 2E504 800C3904 16220028 */  bne        $s1, $v0, .L800C39A8
/* 2E508 800C3908 00000000 */   nop
/* 2E50C 800C390C 93A3013A */  lbu        $v1, 0x13a($sp)
/* 2E510 800C3910 93A20138 */  lbu        $v0, 0x138($sp)
/* 2E514 800C3914 306700FF */  andi       $a3, $v1, 0xff
/* 2E518 800C3918 10E20008 */  beq        $a3, $v0, .L800C393C
/* 2E51C 800C391C 27B10038 */   addiu     $s1, $sp, 0x38
/* 2E520 800C3920 A3A30138 */  sb         $v1, 0x138($sp)
/* 2E524 800C3924 02002021 */  addu       $a0, $s0, $zero
/* 2E528 800C3928 02202821 */  addu       $a1, $s1, $zero
/* 2E52C 800C392C 0C031353 */  jal        func_800C4D4C
/* 2E530 800C3930 00003021 */   addu      $a2, $zero, $zero
/* 2E534 800C3934 1440001A */  bnez       $v0, .L800C39A0
/* 2E538 800C3938 00401821 */   addu      $v1, $v0, $zero
.L800C393C:
/* 2E53C 800C393C 93A2013B */  lbu        $v0, 0x13b($sp)
/* 2E540 800C3940 00021040 */  sll        $v0, $v0, 1
/* 2E544 800C3944 00511021 */  addu       $v0, $v0, $s1
/* 2E548 800C3948 94430000 */  lhu        $v1, ($v0)
/* 2E54C 800C394C A7A3013A */  sh         $v1, 0x13a($sp)
/* 2E550 800C3950 8E020060 */  lw         $v0, 0x60($s0)
/* 2E554 800C3954 0062182A */  slt        $v1, $v1, $v0
/* 2E558 800C3958 1460000D */  bnez       $v1, .L800C3990
/* 2E55C 800C395C 00000000 */   nop
/* 2E560 800C3960 93A2013A */  lbu        $v0, 0x13a($sp)
/* 2E564 800C3964 92030064 */  lbu        $v1, 0x64($s0)
/* 2E568 800C3968 0043102B */  sltu       $v0, $v0, $v1
/* 2E56C 800C396C 10400008 */  beqz       $v0, .L800C3990
/* 2E570 800C3970 00000000 */   nop
/* 2E574 800C3974 93A2013B */  lbu        $v0, 0x13b($sp)
/* 2E578 800C3978 2C430001 */  sltiu      $v1, $v0, 1
/* 2E57C 800C397C 2C420080 */  sltiu      $v0, $v0, 0x80
/* 2E580 800C3980 38420001 */  xori       $v0, $v0, 1
/* 2E584 800C3984 00621825 */  or         $v1, $v1, $v0
/* 2E588 800C3988 50600005 */  beql       $v1, $zero, .L800C39A0
/* 2E58C 800C398C 00001821 */   addu      $v1, $zero, $zero
.L800C3990:
/* 2E590 800C3990 97A2013A */  lhu        $v0, 0x13a($sp)
/* 2E594 800C3994 14560002 */  bne        $v0, $s6, .L800C39A0
/* 2E598 800C3998 24030003 */   addiu     $v1, $zero, 3
/* 2E59C 800C399C 24030005 */  addiu      $v1, $zero, 5
.L800C39A0:
/* 2E5A0 800C39A0 14600040 */  bnez       $v1, .L800C3AA4
/* 2E5A4 800C39A4 00008821 */   addu      $s1, $zero, $zero
.L800C39A8:
/* 2E5A8 800C39A8 92020065 */  lbu        $v0, 0x65($s0)
/* 2E5AC 800C39AC 93A5013A */  lbu        $a1, 0x13a($sp)
/* 2E5B0 800C39B0 10450006 */  beq        $v0, $a1, .L800C39CC
/* 2E5B4 800C39B4 00000000 */   nop
/* 2E5B8 800C39B8 0C031164 */  jal        func_800C4590
/* 2E5BC 800C39BC 02002021 */   addu      $a0, $s0, $zero
/* 2E5C0 800C39C0 00401821 */  addu       $v1, $v0, $zero
/* 2E5C4 800C39C4 1460003C */  bnez       $v1, .L800C3AB8
/* 2E5C8 800C39C8 00601021 */   addu      $v0, $v1, $zero
.L800C39CC:
/* 2E5CC 800C39CC 93A2013B */  lbu        $v0, 0x13b($sp)
/* 2E5D0 800C39D0 000210C0 */  sll        $v0, $v0, 3
/* 2E5D4 800C39D4 00513021 */  addu       $a2, $v0, $s1
/* 2E5D8 800C39D8 328200FF */  andi       $v0, $s4, 0xff
/* 2E5DC 800C39DC 54400008 */  bnezl      $v0, .L800C3A00
/* 2E5E0 800C39E0 AFA00010 */   sw        $zero, 0x10($sp)
/* 2E5E4 800C39E4 8E040004 */  lw         $a0, 4($s0)
/* 2E5E8 800C39E8 8E050008 */  lw         $a1, 8($s0)
/* 2E5EC 800C39EC 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 2E5F0 800C39F0 0C031424 */  jal        func_800C5090
/* 2E5F4 800C39F4 02403821 */   addu      $a3, $s2, $zero
/* 2E5F8 800C39F8 08030E86 */  j          .L800C3A18
/* 2E5FC 800C39FC 00401821 */   addu      $v1, $v0, $zero
.L800C3A00:
/* 2E600 800C3A00 8E040004 */  lw         $a0, 4($s0)
/* 2E604 800C3A04 8E050008 */  lw         $a1, 8($s0)
/* 2E608 800C3A08 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 2E60C 800C3A0C 0C0314A0 */  jal        func_800C5280
/* 2E610 800C3A10 02403821 */   addu      $a3, $s2, $zero
/* 2E614 800C3A14 00401821 */  addu       $v1, $v0, $zero
.L800C3A18:
/* 2E618 800C3A18 14600022 */  bnez       $v1, .L800C3AA4
/* 2E61C 800C3A1C 26520020 */   addiu     $s2, $s2, 0x20
/* 2E620 800C3A20 2673FFFF */  addiu      $s3, $s3, -1
/* 2E624 800C3A24 1E60FFB6 */  bgtz       $s3, .L800C3900
/* 2E628 800C3A28 26310001 */   addiu     $s1, $s1, 1
/* 2E62C 800C3A2C 328300FF */  andi       $v1, $s4, 0xff
.L800C3A30:
/* 2E630 800C3A30 24020001 */  addiu      $v0, $zero, 1
/* 2E634 800C3A34 1462001D */  bne        $v1, $v0, .L800C3AAC
/* 2E638 800C3A38 00000000 */   nop
/* 2E63C 800C3A3C 93A30020 */  lbu        $v1, 0x20($sp)
/* 2E640 800C3A40 30620002 */  andi       $v0, $v1, 2
/* 2E644 800C3A44 14400019 */  bnez       $v0, .L800C3AAC
/* 2E648 800C3A48 34620002 */   ori       $v0, $v1, 2
/* 2E64C 800C3A4C A3A20020 */  sb         $v0, 0x20($sp)
/* 2E650 800C3A50 92020065 */  lbu        $v0, 0x65($s0)
/* 2E654 800C3A54 10400006 */  beqz       $v0, .L800C3A70
/* 2E658 800C3A58 02002021 */   addu      $a0, $s0, $zero
/* 2E65C 800C3A5C 0C031164 */  jal        func_800C4590
/* 2E660 800C3A60 00002821 */   addu      $a1, $zero, $zero
/* 2E664 800C3A64 00401821 */  addu       $v1, $v0, $zero
/* 2E668 800C3A68 14600013 */  bnez       $v1, .L800C3AB8
/* 2E66C 800C3A6C 00000000 */   nop
.L800C3A70:
/* 2E670 800C3A70 8E06005C */  lw         $a2, 0x5c($s0)
/* 2E674 800C3A74 AFA00010 */  sw         $zero, 0x10($sp)
/* 2E678 800C3A78 8E040004 */  lw         $a0, 4($s0)
/* 2E67C 800C3A7C 8E050008 */  lw         $a1, 8($s0)
/* 2E680 800C3A80 27A70018 */  addiu      $a3, $sp, 0x18
/* 2E684 800C3A84 00D53021 */  addu       $a2, $a2, $s5
/* 2E688 800C3A88 0C0314A0 */  jal        func_800C5280
/* 2E68C 800C3A8C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 2E690 800C3A90 00401821 */  addu       $v1, $v0, $zero
/* 2E694 800C3A94 10600005 */  beqz       $v1, .L800C3AAC
/* 2E698 800C3A98 00000000 */   nop
/* 2E69C 800C3A9C 08030EAE */  j          .L800C3AB8
/* 2E6A0 800C3AA0 00000000 */   nop
.L800C3AA4:
/* 2E6A4 800C3AA4 08030EAE */  j          .L800C3AB8
/* 2E6A8 800C3AA8 00601021 */   addu      $v0, $v1, $zero
.L800C3AAC:
/* 2E6AC 800C3AAC 8E040004 */  lw         $a0, 4($s0)
/* 2E6B0 800C3AB0 0C0310E0 */  jal        func_800C4380
/* 2E6B4 800C3AB4 8E050008 */   lw        $a1, 8($s0)
.L800C3AB8:
/* 2E6B8 800C3AB8 8FBF015C */  lw         $ra, 0x15c($sp)
/* 2E6BC 800C3ABC 8FB60158 */  lw         $s6, 0x158($sp)
/* 2E6C0 800C3AC0 8FB50154 */  lw         $s5, 0x154($sp)
/* 2E6C4 800C3AC4 8FB40150 */  lw         $s4, 0x150($sp)
/* 2E6C8 800C3AC8 8FB3014C */  lw         $s3, 0x14c($sp)
/* 2E6CC 800C3ACC 8FB20148 */  lw         $s2, 0x148($sp)
/* 2E6D0 800C3AD0 8FB10144 */  lw         $s1, 0x144($sp)
/* 2E6D4 800C3AD4 8FB00140 */  lw         $s0, 0x140($sp)
/* 2E6D8 800C3AD8 03E00008 */  jr         $ra
/* 2E6DC 800C3ADC 27BD0160 */   addiu     $sp, $sp, 0x160
