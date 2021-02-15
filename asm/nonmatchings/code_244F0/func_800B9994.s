.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9994
/* 24594 800B9994 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 24598 800B9998 AFB30024 */  sw         $s3, 0x24($sp)
/* 2459C 800B999C 00809821 */  addu       $s3, $a0, $zero
/* 245A0 800B99A0 AFB60030 */  sw         $s6, 0x30($sp)
/* 245A4 800B99A4 00A0B021 */  addu       $s6, $a1, $zero
/* 245A8 800B99A8 AFB5002C */  sw         $s5, 0x2c($sp)
/* 245AC 800B99AC 00C0A821 */  addu       $s5, $a2, $zero
/* 245B0 800B99B0 00002821 */  addu       $a1, $zero, $zero
/* 245B4 800B99B4 3C06800C */  lui        $a2, %hi(func_800BC1A4)
/* 245B8 800B99B8 24C6C1A4 */  addiu      $a2, $a2, %lo(func_800BC1A4)
/* 245BC 800B99BC AFBF0038 */  sw         $ra, 0x38($sp)
/* 245C0 800B99C0 AFB70034 */  sw         $s7, 0x34($sp)
/* 245C4 800B99C4 AFB40028 */  sw         $s4, 0x28($sp)
/* 245C8 800B99C8 AFB20020 */  sw         $s2, 0x20($sp)
/* 245CC 800B99CC AFB1001C */  sw         $s1, 0x1c($sp)
/* 245D0 800B99D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 245D4 800B99D4 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 245D8 800B99D8 0C02EE7C */  jal        func_800BB9F0
/* 245DC 800B99DC 24070005 */   addiu     $a3, $zero, 5
/* 245E0 800B99E0 3C02800C */  lui        $v0, %hi(D_800BBE30)
/* 245E4 800B99E4 2442BE30 */  addiu      $v0, $v0, %lo(D_800BBE30)
/* 245E8 800B99E8 AE620004 */  sw         $v0, 4($s3)
/* 245EC 800B99EC 3C02800C */  lui        $v0, %hi(D_800BC1B8)
/* 245F0 800B99F0 2442C1B8 */  addiu      $v0, $v0, %lo(D_800BC1B8)
/* 245F4 800B99F4 AE620028 */  sw         $v0, 0x28($s3)
/* 245F8 800B99F8 92C2001C */  lbu        $v0, 0x1c($s6)
/* 245FC 800B99FC 2443FFFF */  addiu      $v1, $v0, -1
/* 24600 800B9A00 2C620006 */  sltiu      $v0, $v1, 6
/* 24604 800B9A04 10400017 */  beqz       $v0, .L800B9A64
/* 24608 800B9A08 00031080 */   sll       $v0, $v1, 2
/* 2460C 800B9A0C 3C018010 */  lui        $at, %hi(D_800FED08)
/* 24610 800B9A10 00220821 */  addu       $at, $at, $v0
/* 24614 800B9A14 8C22ED08 */  lw         $v0, %lo(D_800FED08)($at)
/* 24618 800B9A18 00400008 */  jr         $v0
/* 2461C 800B9A1C 00000000 */   nop
/* 24620 800B9A20 3C12800F */  lui        $s2, %hi(D_800F5E80)
/* 24624 800B9A24 0802E69B */  j          .L800B9A6C
/* 24628 800B9A28 26525E80 */   addiu     $s2, $s2, %lo(D_800F5E80)
/* 2462C 800B9A2C 3C12800F */  lui        $s2, %hi(D_800F5EE8)
/* 24630 800B9A30 0802E69B */  j          .L800B9A6C
/* 24634 800B9A34 26525EE8 */   addiu     $s2, $s2, %lo(D_800F5EE8)
/* 24638 800B9A38 3C12800F */  lui        $s2, %hi(D_800F5F70)
/* 2463C 800B9A3C 0802E69B */  j          .L800B9A6C
/* 24640 800B9A40 26525F70 */   addiu     $s2, $s2, %lo(D_800F5F70)
/* 24644 800B9A44 3C12800F */  lui        $s2, %hi(D_800F5F98)
/* 24648 800B9A48 0802E69B */  j          .L800B9A6C
/* 2464C 800B9A4C 26525F98 */   addiu     $s2, $s2, %lo(D_800F5F98)
/* 24650 800B9A50 3C12800F */  lui        $s2, %hi(D_800F5FC0)
/* 24654 800B9A54 0802E69B */  j          .L800B9A6C
/* 24658 800B9A58 26525FC0 */   addiu     $s2, $s2, %lo(D_800F5FC0)
/* 2465C 800B9A5C 0802E69B */  j          .L800B9A6C
/* 24660 800B9A60 8ED20020 */   lw        $s2, 0x20($s6)
.L800B9A64:
/* 24664 800B9A64 3C12800F */  lui        $s2, %hi(D_800F5FE8)
/* 24668 800B9A68 26525FE8 */  addiu      $s2, $s2, %lo(D_800F5FE8)
.L800B9A6C:
/* 2466C 800B9A6C 8E420000 */  lw         $v0, ($s2)
/* 24670 800B9A70 00002021 */  addu       $a0, $zero, $zero
/* 24674 800B9A74 A2620024 */  sb         $v0, 0x24($s3)
/* 24678 800B9A78 92670024 */  lbu        $a3, 0x24($s3)
/* 2467C 800B9A7C 8E420004 */  lw         $v0, 4($s2)
/* 24680 800B9A80 00002821 */  addu       $a1, $zero, $zero
/* 24684 800B9A84 02A03021 */  addu       $a2, $s5, $zero
/* 24688 800B9A88 AE62001C */  sw         $v0, 0x1c($s3)
/* 2468C 800B9A8C 24020028 */  addiu      $v0, $zero, 0x28
/* 24690 800B9A90 0C02F2E4 */  jal        func_800BCB90
/* 24694 800B9A94 AFA20010 */   sw        $v0, 0x10($sp)
/* 24698 800B9A98 00002021 */  addu       $a0, $zero, $zero
/* 2469C 800B9A9C AE620020 */  sw         $v0, 0x20($s3)
/* 246A0 800B9AA0 24020002 */  addiu      $v0, $zero, 2
/* 246A4 800B9AA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 246A8 800B9AA8 8E67001C */  lw         $a3, 0x1c($s3)
/* 246AC 800B9AAC 00002821 */  addu       $a1, $zero, $zero
/* 246B0 800B9AB0 0C02F2E4 */  jal        func_800BCB90
/* 246B4 800B9AB4 02A03021 */   addu      $a2, $s5, $zero
/* 246B8 800B9AB8 8E63001C */  lw         $v1, 0x1c($s3)
/* 246BC 800B9ABC 24110002 */  addiu      $s1, $zero, 2
/* 246C0 800B9AC0 00002021 */  addu       $a0, $zero, $zero
/* 246C4 800B9AC4 AE620014 */  sw         $v0, 0x14($s3)
/* 246C8 800B9AC8 1060000C */  beqz       $v1, .L800B9AFC
/* 246CC 800B9ACC AE620018 */   sw        $v0, 0x18($s3)
.L800B9AD0:
/* 246D0 800B9AD0 8E630014 */  lw         $v1, 0x14($s3)
/* 246D4 800B9AD4 3082FFFF */  andi       $v0, $a0, 0xffff
/* 246D8 800B9AD8 00021040 */  sll        $v0, $v0, 1
/* 246DC 800B9ADC 00431021 */  addu       $v0, $v0, $v1
/* 246E0 800B9AE0 A4400000 */  sh         $zero, ($v0)
/* 246E4 800B9AE4 8E63001C */  lw         $v1, 0x1c($s3)
/* 246E8 800B9AE8 24840001 */  addiu      $a0, $a0, 1
/* 246EC 800B9AEC 3082FFFF */  andi       $v0, $a0, 0xffff
/* 246F0 800B9AF0 0043102B */  sltu       $v0, $v0, $v1
/* 246F4 800B9AF4 1440FFF6 */  bnez       $v0, .L800B9AD0
/* 246F8 800B9AF8 00000000 */   nop
.L800B9AFC:
/* 246FC 800B9AFC 92620024 */  lbu        $v0, 0x24($s3)
/* 24700 800B9B00 104000BE */  beqz       $v0, .L800B9DFC
/* 24704 800B9B04 0000A021 */   addu      $s4, $zero, $zero
/* 24708 800B9B08 24170001 */  addiu      $s7, $zero, 1
/* 2470C 800B9B0C 3C018010 */  lui        $at, %hi(D_800FED20)
/* 24710 800B9B10 D434ED20 */  ldc1       $f20, %lo(D_800FED20)($at)
/* 24714 800B9B14 3282FFFF */  andi       $v0, $s4, 0xffff
.L800B9B18:
/* 24718 800B9B18 00021880 */  sll        $v1, $v0, 2
/* 2471C 800B9B1C 00621821 */  addu       $v1, $v1, $v0
/* 24720 800B9B20 8E650020 */  lw         $a1, 0x20($s3)
/* 24724 800B9B24 02202021 */  addu       $a0, $s1, $zero
/* 24728 800B9B28 3082FFFF */  andi       $v0, $a0, 0xffff
/* 2472C 800B9B2C 00021080 */  sll        $v0, $v0, 2
/* 24730 800B9B30 00521021 */  addu       $v0, $v0, $s2
/* 24734 800B9B34 8C420000 */  lw         $v0, ($v0)
/* 24738 800B9B38 000318C0 */  sll        $v1, $v1, 3
/* 2473C 800B9B3C 00A38021 */  addu       $s0, $a1, $v1
/* 24740 800B9B40 24850001 */  addiu      $a1, $a0, 1
/* 24744 800B9B44 AE020000 */  sw         $v0, ($s0)
/* 24748 800B9B48 30A2FFFF */  andi       $v0, $a1, 0xffff
/* 2474C 800B9B4C 00021080 */  sll        $v0, $v0, 2
/* 24750 800B9B50 00521021 */  addu       $v0, $v0, $s2
/* 24754 800B9B54 8C430000 */  lw         $v1, ($v0)
/* 24758 800B9B58 24A20001 */  addiu      $v0, $a1, 1
/* 2475C 800B9B5C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 24760 800B9B60 00021080 */  sll        $v0, $v0, 2
/* 24764 800B9B64 00521021 */  addu       $v0, $v0, $s2
/* 24768 800B9B68 AE030004 */  sw         $v1, 4($s0)
/* 2476C 800B9B6C 8C430000 */  lw         $v1, ($v0)
/* 24770 800B9B70 24A20002 */  addiu      $v0, $a1, 2
/* 24774 800B9B74 3042FFFF */  andi       $v0, $v0, 0xffff
/* 24778 800B9B78 00021080 */  sll        $v0, $v0, 2
/* 2477C 800B9B7C 00521021 */  addu       $v0, $v0, $s2
/* 24780 800B9B80 A603000A */  sh         $v1, 0xa($s0)
/* 24784 800B9B84 8C430000 */  lw         $v1, ($v0)
/* 24788 800B9B88 24A20003 */  addiu      $v0, $a1, 3
/* 2478C 800B9B8C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 24790 800B9B90 00021080 */  sll        $v0, $v0, 2
/* 24794 800B9B94 00521021 */  addu       $v0, $v0, $s2
/* 24798 800B9B98 A6030008 */  sh         $v1, 8($s0)
/* 2479C 800B9B9C 8C420000 */  lw         $v0, ($v0)
/* 247A0 800B9BA0 24B10004 */  addiu      $s1, $a1, 4
/* 247A4 800B9BA4 A602000C */  sh         $v0, 0xc($s0)
/* 247A8 800B9BA8 3222FFFF */  andi       $v0, $s1, 0xffff
/* 247AC 800B9BAC 00021080 */  sll        $v0, $v0, 2
/* 247B0 800B9BB0 00521021 */  addu       $v0, $v0, $s2
/* 247B4 800B9BB4 8C420000 */  lw         $v0, ($v0)
/* 247B8 800B9BB8 10400042 */  beqz       $v0, .L800B9CC4
/* 247BC 800B9BBC 02201021 */   addu      $v0, $s1, $zero
/* 247C0 800B9BC0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 247C4 800B9BC4 00021080 */  sll        $v0, $v0, 2
/* 247C8 800B9BC8 3C01447A */  lui        $at, 0x447a
/* 247CC 800B9BCC 44811000 */  mtc1       $at, $f2
/* 247D0 800B9BD0 00521021 */  addu       $v0, $v0, $s2
/* 247D4 800B9BD4 C4400000 */  lwc1       $f0, ($v0)
/* 247D8 800B9BD8 46800020 */  cvt.s.w    $f0, $f0
/* 247DC 800B9BDC 46020003 */  div.s      $f0, $f0, $f2
/* 247E0 800B9BE0 46000021 */  cvt.d.s    $f0, $f0
/* 247E4 800B9BE4 46200000 */  add.d      $f0, $f0, $f0
/* 247E8 800B9BE8 C6C20018 */  lwc1       $f2, 0x18($s6)
/* 247EC 800B9BEC 468010A1 */  cvt.d.w    $f2, $f2
/* 247F0 800B9BF0 46220003 */  div.d      $f0, $f0, $f2
/* 247F4 800B9BF4 8E040004 */  lw         $a0, 4($s0)
/* 247F8 800B9BF8 8E030000 */  lw         $v1, ($s0)
/* 247FC 800B9BFC 24A20005 */  addiu      $v0, $a1, 5
/* 24800 800B9C00 24B10006 */  addiu      $s1, $a1, 6
/* 24804 800B9C04 3042FFFF */  andi       $v0, $v0, 0xffff
/* 24808 800B9C08 00021080 */  sll        $v0, $v0, 2
/* 2480C 800B9C0C 00521021 */  addu       $v0, $v0, $s2
/* 24810 800B9C10 00832023 */  subu       $a0, $a0, $v1
/* 24814 800B9C14 3C018010 */  lui        $at, %hi(D_800FED28)
/* 24818 800B9C18 D422ED28 */  ldc1       $f2, %lo(D_800FED28)($at)
/* 2481C 800B9C1C 44842000 */  mtc1       $a0, $f4
/* 24820 800B9C20 00000000 */  nop
/* 24824 800B9C24 46802121 */  cvt.d.w    $f4, $f4
/* 24828 800B9C28 46200020 */  cvt.s.d    $f0, $f0
/* 2482C 800B9C2C E6000010 */  swc1       $f0, 0x10($s0)
/* 24830 800B9C30 C4400000 */  lwc1       $f0, ($v0)
/* 24834 800B9C34 46800020 */  cvt.s.w    $f0, $f0
/* 24838 800B9C38 46000021 */  cvt.d.s    $f0, $f0
/* 2483C 800B9C3C 04810004 */  bgez       $a0, .L800B9C50
/* 24840 800B9C40 46220083 */   div.d     $f2, $f0, $f2
/* 24844 800B9C44 3C018010 */  lui        $at, %hi(D_800FED30)
/* 24848 800B9C48 D420ED30 */  ldc1       $f0, %lo(D_800FED30)($at)
/* 2484C 800B9C4C 46202100 */  add.d      $f4, $f4, $f0
.L800B9C50:
/* 24850 800B9C50 00002021 */  addu       $a0, $zero, $zero
/* 24854 800B9C54 46241002 */  mul.d      $f0, $f2, $f4
/* 24858 800B9C58 00002821 */  addu       $a1, $zero, $zero
/* 2485C 800B9C5C 3C013F80 */  lui        $at, 0x3f80
/* 24860 800B9C60 44811000 */  mtc1       $at, $f2
/* 24864 800B9C64 02A03021 */  addu       $a2, $s5, $zero
/* 24868 800B9C68 24070001 */  addiu      $a3, $zero, 1
/* 2486C 800B9C6C 24020034 */  addiu      $v0, $zero, 0x34
/* 24870 800B9C70 AE000018 */  sw         $zero, 0x18($s0)
/* 24874 800B9C74 E6020014 */  swc1       $f2, 0x14($s0)
/* 24878 800B9C78 46200020 */  cvt.s.d    $f0, $f0
/* 2487C 800B9C7C E600001C */  swc1       $f0, 0x1c($s0)
/* 24880 800B9C80 0C02F2E4 */  jal        func_800BCB90
/* 24884 800B9C84 AFA20010 */   sw        $v0, 0x10($sp)
/* 24888 800B9C88 00002021 */  addu       $a0, $zero, $zero
/* 2488C 800B9C8C 00002821 */  addu       $a1, $zero, $zero
/* 24890 800B9C90 02A03021 */  addu       $a2, $s5, $zero
/* 24894 800B9C94 24070001 */  addiu      $a3, $zero, 1
/* 24898 800B9C98 AE020024 */  sw         $v0, 0x24($s0)
/* 2489C 800B9C9C 24020020 */  addiu      $v0, $zero, 0x20
/* 248A0 800B9CA0 0C02F2E4 */  jal        func_800BCB90
/* 248A4 800B9CA4 AFA20010 */   sw        $v0, 0x10($sp)
/* 248A8 800B9CA8 8E030024 */  lw         $v1, 0x24($s0)
/* 248AC 800B9CAC AC620014 */  sw         $v0, 0x14($v1)
/* 248B0 800B9CB0 8E020024 */  lw         $v0, 0x24($s0)
/* 248B4 800B9CB4 AC400020 */  sw         $zero, 0x20($v0)
/* 248B8 800B9CB8 8E020024 */  lw         $v0, 0x24($s0)
/* 248BC 800B9CBC 0802E733 */  j          .L800B9CCC
/* 248C0 800B9CC0 AC570024 */   sw        $s7, 0x24($v0)
.L800B9CC4:
/* 248C4 800B9CC4 AE000024 */  sw         $zero, 0x24($s0)
/* 248C8 800B9CC8 24B10006 */  addiu      $s1, $a1, 6
.L800B9CCC:
/* 248CC 800B9CCC 3222FFFF */  andi       $v0, $s1, 0xffff
/* 248D0 800B9CD0 00021080 */  sll        $v0, $v0, 2
/* 248D4 800B9CD4 00521021 */  addu       $v0, $v0, $s2
/* 248D8 800B9CD8 8C420000 */  lw         $v0, ($v0)
/* 248DC 800B9CDC 1040003F */  beqz       $v0, .L800B9DDC
/* 248E0 800B9CE0 00002021 */   addu      $a0, $zero, $zero
/* 248E4 800B9CE4 00002821 */  addu       $a1, $zero, $zero
/* 248E8 800B9CE8 02A03021 */  addu       $a2, $s5, $zero
/* 248EC 800B9CEC 24070001 */  addiu      $a3, $zero, 1
/* 248F0 800B9CF0 24020030 */  addiu      $v0, $zero, 0x30
/* 248F4 800B9CF4 0C02F2E4 */  jal        func_800BCB90
/* 248F8 800B9CF8 AFA20010 */   sw        $v0, 0x10($sp)
/* 248FC 800B9CFC 00002021 */  addu       $a0, $zero, $zero
/* 24900 800B9D00 00002821 */  addu       $a1, $zero, $zero
/* 24904 800B9D04 02A03021 */  addu       $a2, $s5, $zero
/* 24908 800B9D08 24070001 */  addiu      $a3, $zero, 1
/* 2490C 800B9D0C AE020020 */  sw         $v0, 0x20($s0)
/* 24910 800B9D10 24020008 */  addiu      $v0, $zero, 8
/* 24914 800B9D14 0C02F2E4 */  jal        func_800BCB90
/* 24918 800B9D18 AFA20010 */   sw        $v0, 0x10($sp)
/* 2491C 800B9D1C 8E030020 */  lw         $v1, 0x20($s0)
/* 24920 800B9D20 AC620028 */  sw         $v0, 0x28($v1)
/* 24924 800B9D24 8E030020 */  lw         $v1, 0x20($s0)
/* 24928 800B9D28 02201021 */  addu       $v0, $s1, $zero
/* 2492C 800B9D2C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 24930 800B9D30 00021080 */  sll        $v0, $v0, 2
/* 24934 800B9D34 00521021 */  addu       $v0, $v0, $s2
/* 24938 800B9D38 8C420000 */  lw         $v0, ($v0)
/* 2493C 800B9D3C A4620000 */  sh         $v0, ($v1)
/* 24940 800B9D40 8E050020 */  lw         $a1, 0x20($s0)
/* 24944 800B9D44 24040007 */  addiu      $a0, $zero, 7
/* 24948 800B9D48 26310001 */  addiu      $s1, $s1, 1
/* 2494C 800B9D4C 84A30000 */  lh         $v1, ($a1)
/* 24950 800B9D50 24024000 */  addiu      $v0, $zero, 0x4000
/* 24954 800B9D54 24A6000E */  addiu      $a2, $a1, 0xe
/* 24958 800B9D58 ACB7002C */  sw         $s7, 0x2c($a1)
/* 2495C 800B9D5C 00031843 */  sra        $v1, $v1, 1
/* 24960 800B9D60 00603821 */  addu       $a3, $v1, $zero
/* 24964 800B9D64 00431023 */  subu       $v0, $v0, $v1
/* 24968 800B9D68 A4A20002 */  sh         $v0, 2($a1)
.L800B9D6C:
/* 2496C 800B9D6C A4C00008 */  sh         $zero, 8($a2)
/* 24970 800B9D70 2484FFFF */  addiu      $a0, $a0, -1
/* 24974 800B9D74 0481FFFD */  bgez       $a0, .L800B9D6C
/* 24978 800B9D78 24C6FFFE */   addiu     $a2, $a2, -2
/* 2497C 800B9D7C 00071400 */  sll        $v0, $a3, 0x10
/* 24980 800B9D80 00021403 */  sra        $v0, $v0, 0x10
/* 24984 800B9D84 44820000 */  mtc1       $v0, $f0
/* 24988 800B9D88 00000000 */  nop
/* 2498C 800B9D8C 46800021 */  cvt.d.w    $f0, $f0
/* 24990 800B9D90 46340103 */  div.d      $f4, $f0, $f20
/* 24994 800B9D94 A4A70018 */  sh         $a3, 0x18($a1)
/* 24998 800B9D98 24040009 */  addiu      $a0, $zero, 9
/* 2499C 800B9D9C 24A50012 */  addiu      $a1, $a1, 0x12
/* 249A0 800B9DA0 46202186 */  mov.d      $f6, $f4
.L800B9DA4:
/* 249A4 800B9DA4 00000000 */  nop
/* 249A8 800B9DA8 46262102 */  mul.d      $f4, $f4, $f6
/* 249AC 800B9DAC 00000000 */  nop
/* 249B0 800B9DB0 46342002 */  mul.d      $f0, $f4, $f20
/* 249B4 800B9DB4 24840001 */  addiu      $a0, $a0, 1
/* 249B8 800B9DB8 4620008D */  trunc.w.d  $f2, $f0
/* 249BC 800B9DBC 44021000 */  mfc1       $v0, $f2
/* 249C0 800B9DC0 00000000 */  nop
/* 249C4 800B9DC4 A4A20008 */  sh         $v0, 8($a1)
/* 249C8 800B9DC8 28820010 */  slti       $v0, $a0, 0x10
/* 249CC 800B9DCC 1440FFF5 */  bnez       $v0, .L800B9DA4
/* 249D0 800B9DD0 24A50002 */   addiu     $a1, $a1, 2
/* 249D4 800B9DD4 0802E779 */  j          .L800B9DE4
/* 249D8 800B9DD8 00000000 */   nop
.L800B9DDC:
/* 249DC 800B9DDC AE000020 */  sw         $zero, 0x20($s0)
/* 249E0 800B9DE0 26310001 */  addiu      $s1, $s1, 1
.L800B9DE4:
/* 249E4 800B9DE4 92630024 */  lbu        $v1, 0x24($s3)
/* 249E8 800B9DE8 26940001 */  addiu      $s4, $s4, 1
/* 249EC 800B9DEC 3282FFFF */  andi       $v0, $s4, 0xffff
/* 249F0 800B9DF0 0043102B */  sltu       $v0, $v0, $v1
/* 249F4 800B9DF4 1440FF48 */  bnez       $v0, .L800B9B18
/* 249F8 800B9DF8 3282FFFF */   andi      $v0, $s4, 0xffff
.L800B9DFC:
/* 249FC 800B9DFC 8FBF0038 */  lw         $ra, 0x38($sp)
/* 24A00 800B9E00 8FB70034 */  lw         $s7, 0x34($sp)
/* 24A04 800B9E04 8FB60030 */  lw         $s6, 0x30($sp)
/* 24A08 800B9E08 8FB5002C */  lw         $s5, 0x2c($sp)
/* 24A0C 800B9E0C 8FB40028 */  lw         $s4, 0x28($sp)
/* 24A10 800B9E10 8FB30024 */  lw         $s3, 0x24($sp)
/* 24A14 800B9E14 8FB20020 */  lw         $s2, 0x20($sp)
/* 24A18 800B9E18 8FB1001C */  lw         $s1, 0x1c($sp)
/* 24A1C 800B9E1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 24A20 800B9E20 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 24A24 800B9E24 03E00008 */  jr         $ra
/* 24A28 800B9E28 27BD0048 */   addiu     $sp, $sp, 0x48
