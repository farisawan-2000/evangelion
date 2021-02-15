.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0A1C
/* 1B61C 800B0A1C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1B620 800B0A20 AFB20038 */  sw         $s2, 0x38($sp)
/* 1B624 800B0A24 00809021 */  addu       $s2, $a0, $zero
/* 1B628 800B0A28 AFBF004C */  sw         $ra, 0x4c($sp)
/* 1B62C 800B0A2C AFB60048 */  sw         $s6, 0x48($sp)
/* 1B630 800B0A30 AFB50044 */  sw         $s5, 0x44($sp)
/* 1B634 800B0A34 AFB40040 */  sw         $s4, 0x40($sp)
/* 1B638 800B0A38 AFB3003C */  sw         $s3, 0x3c($sp)
/* 1B63C 800B0A3C AFB10034 */  sw         $s1, 0x34($sp)
/* 1B640 800B0A40 AFB00030 */  sw         $s0, 0x30($sp)
/* 1B644 800B0A44 8E420028 */  lw         $v0, 0x28($s2)
/* 1B648 800B0A48 8E540004 */  lw         $s4, 4($s2)
/* 1B64C 800B0A4C 14400035 */  bnez       $v0, .L800B0B24
/* 1B650 800B0A50 02403021 */   addu      $a2, $s2, $zero
/* 1B654 800B0A54 24020001 */  addiu      $v0, $zero, 1
/* 1B658 800B0A58 AE420028 */  sw         $v0, 0x28($s2)
/* 1B65C 800B0A5C 02402821 */  addu       $a1, $s2, $zero
/* 1B660 800B0A60 00002021 */  addu       $a0, $zero, $zero
/* 1B664 800B0A64 2643000C */  addiu      $v1, $s2, 0xc
.L800B0A68:
/* 1B668 800B0A68 8C620000 */  lw         $v0, ($v1)
/* 1B66C 800B0A6C 10400003 */  beqz       $v0, .L800B0A7C
/* 1B670 800B0A70 24840001 */   addiu     $a0, $a0, 1
/* 1B674 800B0A74 00451021 */  addu       $v0, $v0, $a1
/* 1B678 800B0A78 AC620000 */  sw         $v0, ($v1)
.L800B0A7C:
/* 1B67C 800B0A7C 28820007 */  slti       $v0, $a0, 7
/* 1B680 800B0A80 1440FFF9 */  bnez       $v0, .L800B0A68
/* 1B684 800B0A84 24630004 */   addiu     $v1, $v1, 4
/* 1B688 800B0A88 8E42000C */  lw         $v0, 0xc($s2)
/* 1B68C 800B0A8C 00002021 */  addu       $a0, $zero, $zero
/* 1B690 800B0A90 1A80000B */  blez       $s4, .L800B0AC0
/* 1B694 800B0A94 00C02821 */   addu      $a1, $a2, $zero
/* 1B698 800B0A98 00401821 */  addu       $v1, $v0, $zero
.L800B0A9C:
/* 1B69C 800B0A9C 8C620000 */  lw         $v0, ($v1)
/* 1B6A0 800B0AA0 10400003 */  beqz       $v0, .L800B0AB0
/* 1B6A4 800B0AA4 24840001 */   addiu     $a0, $a0, 1
/* 1B6A8 800B0AA8 00451021 */  addu       $v0, $v0, $a1
/* 1B6AC 800B0AAC AC620000 */  sw         $v0, ($v1)
.L800B0AB0:
/* 1B6B0 800B0AB0 0094102A */  slt        $v0, $a0, $s4
/* 1B6B4 800B0AB4 1440FFF9 */  bnez       $v0, .L800B0A9C
/* 1B6B8 800B0AB8 24630004 */   addiu     $v1, $v1, 4
/* 1B6BC 800B0ABC 00002021 */  addu       $a0, $zero, $zero
.L800B0AC0:
/* 1B6C0 800B0AC0 8E420010 */  lw         $v0, 0x10($s2)
/* 1B6C4 800B0AC4 1A80000A */  blez       $s4, .L800B0AF0
/* 1B6C8 800B0AC8 00C02821 */   addu      $a1, $a2, $zero
/* 1B6CC 800B0ACC 00401821 */  addu       $v1, $v0, $zero
.L800B0AD0:
/* 1B6D0 800B0AD0 8C620000 */  lw         $v0, ($v1)
/* 1B6D4 800B0AD4 10400003 */  beqz       $v0, .L800B0AE4
/* 1B6D8 800B0AD8 24840001 */   addiu     $a0, $a0, 1
/* 1B6DC 800B0ADC 00451021 */  addu       $v0, $v0, $a1
/* 1B6E0 800B0AE0 AC620000 */  sw         $v0, ($v1)
.L800B0AE4:
/* 1B6E4 800B0AE4 0094102A */  slt        $v0, $a0, $s4
/* 1B6E8 800B0AE8 1440FFF9 */  bnez       $v0, .L800B0AD0
/* 1B6EC 800B0AEC 24630004 */   addiu     $v1, $v1, 4
.L800B0AF0:
/* 1B6F0 800B0AF0 00002021 */  addu       $a0, $zero, $zero
/* 1B6F4 800B0AF4 8E420014 */  lw         $v0, 0x14($s2)
/* 1B6F8 800B0AF8 1A80000A */  blez       $s4, .L800B0B24
/* 1B6FC 800B0AFC 00C02821 */   addu      $a1, $a2, $zero
/* 1B700 800B0B00 00401821 */  addu       $v1, $v0, $zero
.L800B0B04:
/* 1B704 800B0B04 8C620000 */  lw         $v0, ($v1)
/* 1B708 800B0B08 10400003 */  beqz       $v0, .L800B0B18
/* 1B70C 800B0B0C 24840001 */   addiu     $a0, $a0, 1
/* 1B710 800B0B10 00451021 */  addu       $v0, $v0, $a1
/* 1B714 800B0B14 AC620000 */  sw         $v0, ($v1)
.L800B0B18:
/* 1B718 800B0B18 0094102A */  slt        $v0, $a0, $s4
/* 1B71C 800B0B1C 1440FFF9 */  bnez       $v0, .L800B0B04
/* 1B720 800B0B20 24630004 */   addiu     $v1, $v1, 4
.L800B0B24:
/* 1B724 800B0B24 3C038010 */  lui        $v1, %hi(D_80102960)
/* 1B728 800B0B28 8C632960 */  lw         $v1, %lo(D_80102960)($v1)
/* 1B72C 800B0B2C 02402021 */  addu       $a0, $s2, $zero
/* 1B730 800B0B30 2405FFFF */  addiu      $a1, $zero, -1
/* 1B734 800B0B34 24620001 */  addiu      $v0, $v1, 1
/* 1B738 800B0B38 3C018010 */  lui        $at, %hi(D_80102960)
/* 1B73C 800B0B3C AC222960 */  sw         $v0, %lo(D_80102960)($at)
/* 1B740 800B0B40 0C02C171 */  jal        func_800B05C4
/* 1B744 800B0B44 0060A821 */   addu      $s5, $v1, $zero
/* 1B748 800B0B48 00021880 */  sll        $v1, $v0, 2
/* 1B74C 800B0B4C 00621821 */  addu       $v1, $v1, $v0
/* 1B750 800B0B50 00031900 */  sll        $v1, $v1, 4
/* 1B754 800B0B54 3C048010 */  lui        $a0, %hi(D_8010294C)
/* 1B758 800B0B58 8C84294C */  lw         $a0, %lo(D_8010294C)($a0)
/* 1B75C 800B0B5C 00621823 */  subu       $v1, $v1, $v0
/* 1B760 800B0B60 00031880 */  sll        $v1, $v1, 2
/* 1B764 800B0B64 00838021 */  addu       $s0, $a0, $v1
/* 1B768 800B0B68 0C02C122 */  jal        func_800B0488
/* 1B76C 800B0B6C 02002021 */   addu      $a0, $s0, $zero
/* 1B770 800B0B70 8E030000 */  lw         $v1, ($s0)
/* 1B774 800B0B74 24020001 */  addiu      $v0, $zero, 1
/* 1B778 800B0B78 A20200D2 */  sb         $v0, 0xd2($s0)
/* 1B77C 800B0B7C AE120074 */  sw         $s2, 0x74($s0)
/* 1B780 800B0B80 34630003 */  ori        $v1, $v1, 3
/* 1B784 800B0B84 AE030000 */  sw         $v1, ($s0)
/* 1B788 800B0B88 8E420024 */  lw         $v0, 0x24($s2)
/* 1B78C 800B0B8C 00009821 */  addu       $s3, $zero, $zero
/* 1B790 800B0B90 AE150044 */  sw         $s5, 0x44($s0)
/* 1B794 800B0B94 AE020080 */  sw         $v0, 0x80($s0)
/* 1B798 800B0B98 1A80002E */  blez       $s4, .L800B0C54
/* 1B79C 800B0B9C AE020004 */   sw        $v0, 4($s0)
/* 1B7A0 800B0BA0 24160001 */  addiu      $s6, $zero, 1
.L800B0BA4:
/* 1B7A4 800B0BA4 8E42000C */  lw         $v0, 0xc($s2)
/* 1B7A8 800B0BA8 00138880 */  sll        $s1, $s3, 2
/* 1B7AC 800B0BAC 02221021 */  addu       $v0, $s1, $v0
/* 1B7B0 800B0BB0 8C420000 */  lw         $v0, ($v0)
/* 1B7B4 800B0BB4 50400024 */  beql       $v0, $zero, .L800B0C48
/* 1B7B8 800B0BB8 26730001 */   addiu     $s3, $s3, 1
/* 1B7BC 800B0BBC 02402021 */  addu       $a0, $s2, $zero
/* 1B7C0 800B0BC0 0C02C171 */  jal        func_800B05C4
/* 1B7C4 800B0BC4 02602821 */   addu      $a1, $s3, $zero
/* 1B7C8 800B0BC8 00021880 */  sll        $v1, $v0, 2
/* 1B7CC 800B0BCC 00621821 */  addu       $v1, $v1, $v0
/* 1B7D0 800B0BD0 00031900 */  sll        $v1, $v1, 4
/* 1B7D4 800B0BD4 3C048010 */  lui        $a0, %hi(D_8010294C)
/* 1B7D8 800B0BD8 8C84294C */  lw         $a0, %lo(D_8010294C)($a0)
/* 1B7DC 800B0BDC 00621823 */  subu       $v1, $v1, $v0
/* 1B7E0 800B0BE0 00031880 */  sll        $v1, $v1, 2
/* 1B7E4 800B0BE4 00838021 */  addu       $s0, $a0, $v1
/* 1B7E8 800B0BE8 0C02C122 */  jal        func_800B0488
/* 1B7EC 800B0BEC 02002021 */   addu      $a0, $s0, $zero
/* 1B7F0 800B0BF0 8E020000 */  lw         $v0, ($s0)
/* 1B7F4 800B0BF4 A21600D2 */  sb         $s6, 0xd2($s0)
/* 1B7F8 800B0BF8 AE120074 */  sw         $s2, 0x74($s0)
/* 1B7FC 800B0BFC 34420001 */  ori        $v0, $v0, 1
/* 1B800 800B0C00 AE020000 */  sw         $v0, ($s0)
/* 1B804 800B0C04 8E420010 */  lw         $v0, 0x10($s2)
/* 1B808 800B0C08 02221021 */  addu       $v0, $s1, $v0
/* 1B80C 800B0C0C 8C420000 */  lw         $v0, ($v0)
/* 1B810 800B0C10 AE02008C */  sw         $v0, 0x8c($s0)
/* 1B814 800B0C14 AE020038 */  sw         $v0, 0x38($s0)
/* 1B818 800B0C18 8E420014 */  lw         $v0, 0x14($s2)
/* 1B81C 800B0C1C 02221021 */  addu       $v0, $s1, $v0
/* 1B820 800B0C20 8C420000 */  lw         $v0, ($v0)
/* 1B824 800B0C24 AE020088 */  sw         $v0, 0x88($s0)
/* 1B828 800B0C28 AE020034 */  sw         $v0, 0x34($s0)
/* 1B82C 800B0C2C 8E42000C */  lw         $v0, 0xc($s2)
/* 1B830 800B0C30 02221021 */  addu       $v0, $s1, $v0
/* 1B834 800B0C34 8C420000 */  lw         $v0, ($v0)
/* 1B838 800B0C38 AE150044 */  sw         $s5, 0x44($s0)
/* 1B83C 800B0C3C AE020080 */  sw         $v0, 0x80($s0)
/* 1B840 800B0C40 AE020004 */  sw         $v0, 4($s0)
/* 1B844 800B0C44 26730001 */  addiu      $s3, $s3, 1
.L800B0C48:
/* 1B848 800B0C48 0274102A */  slt        $v0, $s3, $s4
/* 1B84C 800B0C4C 1440FFD5 */  bnez       $v0, .L800B0BA4
/* 1B850 800B0C50 00000000 */   nop
.L800B0C54:
/* 1B854 800B0C54 3C018010 */  lui        $at, %hi(D_80102968)
/* 1B858 800B0C58 AC202968 */  sw         $zero, %lo(D_80102968)($at)
/* 1B85C 800B0C5C 02A01021 */  addu       $v0, $s5, $zero
/* 1B860 800B0C60 8FBF004C */  lw         $ra, 0x4c($sp)
/* 1B864 800B0C64 8FB60048 */  lw         $s6, 0x48($sp)
/* 1B868 800B0C68 8FB50044 */  lw         $s5, 0x44($sp)
/* 1B86C 800B0C6C 8FB40040 */  lw         $s4, 0x40($sp)
/* 1B870 800B0C70 8FB3003C */  lw         $s3, 0x3c($sp)
/* 1B874 800B0C74 8FB20038 */  lw         $s2, 0x38($sp)
/* 1B878 800B0C78 8FB10034 */  lw         $s1, 0x34($sp)
/* 1B87C 800B0C7C 8FB00030 */  lw         $s0, 0x30($sp)
/* 1B880 800B0C80 03E00008 */  jr         $ra
/* 1B884 800B0C84 27BD0050 */   addiu     $sp, $sp, 0x50
