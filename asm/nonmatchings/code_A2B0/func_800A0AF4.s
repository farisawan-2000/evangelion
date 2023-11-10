glabel func_800A0AF4
/* B6F4 800A0AF4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B6F8 800A0AF8 AFB40020 */  sw         $s4, 0x20($sp)
/* B6FC 800A0AFC 0080A021 */  addu       $s4, $a0, $zero
/* B700 800A0B00 AFB20018 */  sw         $s2, 0x18($sp)
/* B704 800A0B04 00A09021 */  addu       $s2, $a1, $zero
/* B708 800A0B08 AFB50024 */  sw         $s5, 0x24($sp)
/* B70C 800A0B0C 00C0A821 */  addu       $s5, $a2, $zero
/* B710 800A0B10 AFB3001C */  sw         $s3, 0x1C($sp)
/* B714 800A0B14 00009821 */  addu       $s3, $zero, $zero
/* B718 800A0B18 AFB60028 */  sw         $s6, 0x28($sp)
/* B71C 800A0B1C 00E0B021 */  addu       $s6, $a3, $zero
/* B720 800A0B20 00073C00 */  sll        $a3, $a3, 16
/* B724 800A0B24 AFB00010 */  sw         $s0, 0x10($sp)
/* B728 800A0B28 00078403 */  sra        $s0, $a3, 16
/* B72C 800A0B2C AFBF002C */  sw         $ra, 0x2C($sp)
/* B730 800A0B30 16000007 */  bnez       $s0, .L800A0B50
/* B734 800A0B34 AFB10014 */   sw        $s1, 0x14($sp)
/* B738 800A0B38 3C01800D */  lui        $at, %hi(D_800D3DB8)
/* B73C 800A0B3C AC203DB8 */  sw         $zero, %lo(D_800D3DB8)($at)
/* B740 800A0B40 3C048010 */  lui        $a0, %hi(D_800FF3F0)
/* B744 800A0B44 2484F3F0 */  addiu      $a0, $a0, %lo(D_800FF3F0)
/* B748 800A0B48 0C02FAB0 */  jal        func_800BEAC0
/* B74C 800A0B4C 00000000 */   nop
.L800A0B50:
/* B750 800A0B50 8E450008 */  lw         $a1, 0x8($s2)
/* B754 800A0B54 00101080 */  sll        $v0, $s0, 2
/* B758 800A0B58 00451021 */  addu       $v0, $v0, $a1
/* B75C 800A0B5C 8C510000 */  lw         $s1, 0x0($v0)
/* B760 800A0B60 8E230000 */  lw         $v1, 0x0($s1)
/* B764 800A0B64 8466000A */  lh         $a2, 0xA($v1)
/* B768 800A0B68 28C20012 */  slti       $v0, $a2, 0x12
/* B76C 800A0B6C 10400089 */  beqz       $v0, .L800A0D94
/* B770 800A0B70 00000000 */   nop
/* B774 800A0B74 96420064 */  lhu        $v0, 0x64($s2)
/* B778 800A0B78 2442FFFF */  addiu      $v0, $v0, -0x1
/* B77C 800A0B7C 00021400 */  sll        $v0, $v0, 16
/* B780 800A0B80 00022403 */  sra        $a0, $v0, 16
/* B784 800A0B84 0204102A */  slt        $v0, $s0, $a0
/* B788 800A0B88 5040000E */  beql       $v0, $zero, .L800A0BC4
/* B78C 800A0B8C 26300020 */   addiu     $s0, $s1, 0x20
/* B790 800A0B90 8463000C */  lh         $v1, 0xC($v1)
/* B794 800A0B94 00701821 */  addu       $v1, $v1, $s0
/* B798 800A0B98 00031080 */  sll        $v0, $v1, 2
/* B79C 800A0B9C 00451021 */  addu       $v0, $v0, $a1
/* B7A0 800A0BA0 8C420004 */  lw         $v0, 0x4($v0)
/* B7A4 800A0BA4 0064182A */  slt        $v1, $v1, $a0
/* B7A8 800A0BA8 50600006 */  beql       $v1, $zero, .L800A0BC4
/* B7AC 800A0BAC 26300020 */   addiu     $s0, $s1, 0x20
/* B7B0 800A0BB0 8C420000 */  lw         $v0, 0x0($v0)
/* B7B4 800A0BB4 8442000A */  lh         $v0, 0xA($v0)
/* B7B8 800A0BB8 50C20001 */  beql       $a2, $v0, .L800A0BC0
/* B7BC 800A0BBC 24130001 */   addiu     $s3, $zero, 0x1
.L800A0BC0:
/* B7C0 800A0BC0 26300020 */  addiu      $s0, $s1, 0x20
.L800A0BC4:
/* B7C4 800A0BC4 86220014 */  lh         $v0, 0x14($s1)
/* B7C8 800A0BC8 86230016 */  lh         $v1, 0x16($s1)
/* B7CC 800A0BCC 86270018 */  lh         $a3, 0x18($s1)
/* B7D0 800A0BD0 44820000 */  mtc1       $v0, $f0
/* B7D4 800A0BD4 00000000 */  nop
/* B7D8 800A0BD8 46800020 */  cvt.s.w    $f0, $f0
/* B7DC 800A0BDC 44050000 */  mfc1       $a1, $f0
/* B7E0 800A0BE0 00000000 */  nop
/* B7E4 800A0BE4 44830000 */  mtc1       $v1, $f0
/* B7E8 800A0BE8 00000000 */  nop
/* B7EC 800A0BEC 46800020 */  cvt.s.w    $f0, $f0
/* B7F0 800A0BF0 44060000 */  mfc1       $a2, $f0
/* B7F4 800A0BF4 00000000 */  nop
/* B7F8 800A0BF8 44870000 */  mtc1       $a3, $f0
/* B7FC 800A0BFC 00000000 */  nop
/* B800 800A0C00 46800020 */  cvt.s.w    $f0, $f0
/* B804 800A0C04 44070000 */  mfc1       $a3, $f0
/* B808 800A0C08 00000000 */  nop
/* B80C 800A0C0C 0C02FFFD */  jal        func_800BFFF4
/* B810 800A0C10 02002021 */   addu      $a0, $s0, $zero
/* B814 800A0C14 02601021 */  addu       $v0, $s3, $zero
/* B818 800A0C18 1040001C */  beqz       $v0, .L800A0C8C
/* B81C 800A0C1C 02002021 */   addu      $a0, $s0, $zero
/* B820 800A0C20 3C02800D */  lui        $v0, %hi(D_800D3DB8)
/* B824 800A0C24 8C423DB8 */  lw         $v0, %lo(D_800D3DB8)($v0)
/* B828 800A0C28 3C038010 */  lui        $v1, %hi(D_800FF3F0)
/* B82C 800A0C2C 2463F3F0 */  addiu      $v1, $v1, %lo(D_800FF3F0)
/* B830 800A0C30 24420001 */  addiu      $v0, $v0, 0x1
/* B834 800A0C34 00022180 */  sll        $a0, $v0, 6
/* B838 800A0C38 00833821 */  addu       $a3, $a0, $v1
/* B83C 800A0C3C 2463FFC0 */  addiu      $v1, $v1, -0x40
/* B840 800A0C40 00833021 */  addu       $a2, $a0, $v1
/* B844 800A0C44 24C80040 */  addiu      $t0, $a2, 0x40
/* B848 800A0C48 3C01800D */  lui        $at, %hi(D_800D3DB8)
/* B84C 800A0C4C AC223DB8 */  sw         $v0, %lo(D_800D3DB8)($at)
.L800A0C50:
/* B850 800A0C50 8CC20000 */  lw         $v0, 0x0($a2)
/* B854 800A0C54 8CC30004 */  lw         $v1, 0x4($a2)
/* B858 800A0C58 8CC40008 */  lw         $a0, 0x8($a2)
/* B85C 800A0C5C 8CC5000C */  lw         $a1, 0xC($a2)
/* B860 800A0C60 ACE20000 */  sw         $v0, 0x0($a3)
/* B864 800A0C64 ACE30004 */  sw         $v1, 0x4($a3)
/* B868 800A0C68 ACE40008 */  sw         $a0, 0x8($a3)
/* B86C 800A0C6C ACE5000C */  sw         $a1, 0xC($a3)
/* B870 800A0C70 24C60010 */  addiu      $a2, $a2, 0x10
/* B874 800A0C74 14C8FFF6 */  bne        $a2, $t0, .L800A0C50
/* B878 800A0C78 24E70010 */   addiu     $a3, $a3, 0x10
/* B87C 800A0C7C 3C05800D */  lui        $a1, %hi(D_800D3DB8)
/* B880 800A0C80 8CA53DB8 */  lw         $a1, %lo(D_800D3DB8)($a1)
/* B884 800A0C84 08028325 */  j          .L800A0C94
/* B888 800A0C88 26240020 */   addiu     $a0, $s1, 0x20
.L800A0C8C:
/* B88C 800A0C8C 3C05800D */  lui        $a1, %hi(D_800D3DB8)
/* B890 800A0C90 8CA53DB8 */  lw         $a1, %lo(D_800D3DB8)($a1)
.L800A0C94:
/* B894 800A0C94 3C028010 */  lui        $v0, %hi(D_800FF3F0)
/* B898 800A0C98 2442F3F0 */  addiu      $v0, $v0, %lo(D_800FF3F0)
/* B89C 800A0C9C 00052980 */  sll        $a1, $a1, 6
/* B8A0 800A0CA0 00A22821 */  addu       $a1, $a1, $v0
/* B8A4 800A0CA4 0C02FA0C */  jal        func_800BE830
/* B8A8 800A0CA8 00A03021 */   addu      $a2, $a1, $zero
/* B8AC 800A0CAC 12A00009 */  beqz       $s5, .L800A0CD4
/* B8B0 800A0CB0 26240060 */   addiu     $a0, $s1, 0x60
/* B8B4 800A0CB4 3C05800D */  lui        $a1, %hi(D_800D3DB8)
/* B8B8 800A0CB8 8CA53DB8 */  lw         $a1, %lo(D_800D3DB8)($a1)
/* B8BC 800A0CBC 3C028010 */  lui        $v0, %hi(D_800FF3F0)
/* B8C0 800A0CC0 2442F3F0 */  addiu      $v0, $v0, %lo(D_800FF3F0)
/* B8C4 800A0CC4 00052980 */  sll        $a1, $a1, 6
/* B8C8 800A0CC8 00A22821 */  addu       $a1, $a1, $v0
/* B8CC 800A0CCC 0C02FA0C */  jal        func_800BE830
/* B8D0 800A0CD0 00A03021 */   addu      $a2, $a1, $zero
.L800A0CD4:
/* B8D4 800A0CD4 00161400 */  sll        $v0, $s6, 16
/* B8D8 800A0CD8 00021283 */  sra        $v0, $v0, 10
/* B8DC 800A0CDC 3C03800D */  lui        $v1, %hi(D_800D3DB8)
/* B8E0 800A0CE0 8C633DB8 */  lw         $v1, %lo(D_800D3DB8)($v1)
/* B8E4 800A0CE4 00543821 */  addu       $a3, $v0, $s4
/* B8E8 800A0CE8 3C028010 */  lui        $v0, %hi(D_800FF3F0)
/* B8EC 800A0CEC 2442F3F0 */  addiu      $v0, $v0, %lo(D_800FF3F0)
/* B8F0 800A0CF0 00031980 */  sll        $v1, $v1, 6
/* B8F4 800A0CF4 00623021 */  addu       $a2, $v1, $v0
/* B8F8 800A0CF8 24C80040 */  addiu      $t0, $a2, 0x40
.L800A0CFC:
/* B8FC 800A0CFC 8CC20000 */  lw         $v0, 0x0($a2)
/* B900 800A0D00 8CC30004 */  lw         $v1, 0x4($a2)
/* B904 800A0D04 8CC40008 */  lw         $a0, 0x8($a2)
/* B908 800A0D08 8CC5000C */  lw         $a1, 0xC($a2)
/* B90C 800A0D0C ACE20000 */  sw         $v0, 0x0($a3)
/* B910 800A0D10 ACE30004 */  sw         $v1, 0x4($a3)
/* B914 800A0D14 ACE40008 */  sw         $a0, 0x8($a3)
/* B918 800A0D18 ACE5000C */  sw         $a1, 0xC($a3)
/* B91C 800A0D1C 24C60010 */  addiu      $a2, $a2, 0x10
/* B920 800A0D20 14C8FFF6 */  bne        $a2, $t0, .L800A0CFC
/* B924 800A0D24 24E70010 */   addiu     $a3, $a3, 0x10
/* B928 800A0D28 8E220000 */  lw         $v0, 0x0($s1)
/* B92C 800A0D2C 8442000C */  lh         $v0, 0xC($v0)
/* B930 800A0D30 10400007 */  beqz       $v0, .L800A0D50
/* B934 800A0D34 02802021 */   addu      $a0, $s4, $zero
/* B938 800A0D38 02402821 */  addu       $a1, $s2, $zero
/* B93C 800A0D3C 02A03021 */  addu       $a2, $s5, $zero
/* B940 800A0D40 26C70001 */  addiu      $a3, $s6, 0x1
/* B944 800A0D44 00073C00 */  sll        $a3, $a3, 16
/* B948 800A0D48 0C0282BD */  jal        func_800A0AF4
/* B94C 800A0D4C 00073C03 */   sra       $a3, $a3, 16
.L800A0D50:
/* B950 800A0D50 02601021 */  addu       $v0, $s3, $zero
/* B954 800A0D54 1040000F */  beqz       $v0, .L800A0D94
/* B958 800A0D58 02802021 */   addu      $a0, $s4, $zero
/* B95C 800A0D5C 8E230000 */  lw         $v1, 0x0($s1)
/* B960 800A0D60 02402821 */  addu       $a1, $s2, $zero
/* B964 800A0D64 3C02800D */  lui        $v0, %hi(D_800D3DB8)
/* B968 800A0D68 8C423DB8 */  lw         $v0, %lo(D_800D3DB8)($v0)
/* B96C 800A0D6C 9467000C */  lhu        $a3, 0xC($v1)
/* B970 800A0D70 02A03021 */  addu       $a2, $s5, $zero
/* B974 800A0D74 2442FFFF */  addiu      $v0, $v0, -0x1
/* B978 800A0D78 3C01800D */  lui        $at, %hi(D_800D3DB8)
/* B97C 800A0D7C AC223DB8 */  sw         $v0, %lo(D_800D3DB8)($at)
/* B980 800A0D80 24E70001 */  addiu      $a3, $a3, 0x1
/* B984 800A0D84 02C73821 */  addu       $a3, $s6, $a3
/* B988 800A0D88 00073C00 */  sll        $a3, $a3, 16
/* B98C 800A0D8C 0C0282BD */  jal        func_800A0AF4
/* B990 800A0D90 00073C03 */   sra       $a3, $a3, 16
.L800A0D94:
/* B994 800A0D94 8FBF002C */  lw         $ra, 0x2C($sp)
/* B998 800A0D98 8FB60028 */  lw         $s6, 0x28($sp)
/* B99C 800A0D9C 8FB50024 */  lw         $s5, 0x24($sp)
/* B9A0 800A0DA0 8FB40020 */  lw         $s4, 0x20($sp)
/* B9A4 800A0DA4 8FB3001C */  lw         $s3, 0x1C($sp)
/* B9A8 800A0DA8 8FB20018 */  lw         $s2, 0x18($sp)
/* B9AC 800A0DAC 8FB10014 */  lw         $s1, 0x14($sp)
/* B9B0 800A0DB0 8FB00010 */  lw         $s0, 0x10($sp)
/* B9B4 800A0DB4 27BD0030 */  addiu      $sp, $sp, 0x30
/* B9B8 800A0DB8 03E00008 */  jr         $ra
/* B9BC 800A0DBC 00000000 */   nop
.size func_800A0AF4, . - func_800A0AF4
