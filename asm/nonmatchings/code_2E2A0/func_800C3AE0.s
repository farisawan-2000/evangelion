.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C3AE0
/* 2E6E0 800C3AE0 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 2E6E4 800C3AE4 AFB10134 */  sw         $s1, 0x134($sp)
/* 2E6E8 800C3AE8 00808821 */  addu       $s1, $a0, $zero
/* 2E6EC 800C3AEC AFB00130 */  sw         $s0, 0x130($sp)
/* 2E6F0 800C3AF0 00A08021 */  addu       $s0, $a1, $zero
/* 2E6F4 800C3AF4 AFBF0148 */  sw         $ra, 0x148($sp)
/* 2E6F8 800C3AF8 AFB50144 */  sw         $s5, 0x144($sp)
/* 2E6FC 800C3AFC AFB40140 */  sw         $s4, 0x140($sp)
/* 2E700 800C3B00 AFB3013C */  sw         $s3, 0x13c($sp)
/* 2E704 800C3B04 AFB20138 */  sw         $s2, 0x138($sp)
/* 2E708 800C3B08 8E220050 */  lw         $v0, 0x50($s1)
/* 2E70C 800C3B0C 00101FC2 */  srl        $v1, $s0, 0x1f
/* 2E710 800C3B10 0202102A */  slt        $v0, $s0, $v0
/* 2E714 800C3B14 38420001 */  xori       $v0, $v0, 1
/* 2E718 800C3B18 00431025 */  or         $v0, $v0, $v1
/* 2E71C 800C3B1C 1440001F */  bnez       $v0, .L800C3B9C
/* 2E720 800C3B20 00C0A021 */   addu      $s4, $a2, $zero
/* 2E724 800C3B24 8E220000 */  lw         $v0, ($s1)
/* 2E728 800C3B28 30420001 */  andi       $v0, $v0, 1
/* 2E72C 800C3B2C 10400048 */  beqz       $v0, .L800C3C50
/* 2E730 800C3B30 24020005 */   addiu     $v0, $zero, 5
/* 2E734 800C3B34 0C031325 */  jal        func_800C4C94
/* 2E738 800C3B38 02202021 */   addu      $a0, $s1, $zero
/* 2E73C 800C3B3C 14400044 */  bnez       $v0, .L800C3C50
/* 2E740 800C3B40 00000000 */   nop
/* 2E744 800C3B44 92220065 */  lbu        $v0, 0x65($s1)
/* 2E748 800C3B48 10400005 */  beqz       $v0, .L800C3B60
/* 2E74C 800C3B4C 02202021 */   addu      $a0, $s1, $zero
/* 2E750 800C3B50 0C031164 */  jal        func_800C4590
/* 2E754 800C3B54 00002821 */   addu      $a1, $zero, $zero
/* 2E758 800C3B58 1440003D */  bnez       $v0, .L800C3C50
/* 2E75C 800C3B5C 00000000 */   nop
.L800C3B60:
/* 2E760 800C3B60 8E240004 */  lw         $a0, 4($s1)
/* 2E764 800C3B64 8E26005C */  lw         $a2, 0x5c($s1)
/* 2E768 800C3B68 8E250008 */  lw         $a1, 8($s1)
/* 2E76C 800C3B6C 27A70110 */  addiu      $a3, $sp, 0x110
/* 2E770 800C3B70 00D03021 */  addu       $a2, $a2, $s0
/* 2E774 800C3B74 0C031424 */  jal        func_800C5090
/* 2E778 800C3B78 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 2E77C 800C3B7C 14400034 */  bnez       $v0, .L800C3C50
/* 2E780 800C3B80 00000000 */   nop
/* 2E784 800C3B84 97A20114 */  lhu        $v0, 0x114($sp)
/* 2E788 800C3B88 10400031 */  beqz       $v0, .L800C3C50
/* 2E78C 800C3B8C 24020005 */   addiu     $v0, $zero, 5
/* 2E790 800C3B90 8FA20110 */  lw         $v0, 0x110($sp)
/* 2E794 800C3B94 14400003 */  bnez       $v0, .L800C3BA4
/* 2E798 800C3B98 00009821 */   addu      $s3, $zero, $zero
.L800C3B9C:
/* 2E79C 800C3B9C 08030F14 */  j          .L800C3C50
/* 2E7A0 800C3BA0 24020005 */   addiu     $v0, $zero, 5
.L800C3BA4:
/* 2E7A4 800C3BA4 97B00116 */  lhu        $s0, 0x116($sp)
/* 2E7A8 800C3BA8 241200FF */  addiu      $s2, $zero, 0xff
/* 2E7AC 800C3BAC 27B50010 */  addiu      $s5, $sp, 0x10
.L800C3BB0:
/* 2E7B0 800C3BB0 8E220060 */  lw         $v0, 0x60($s1)
/* 2E7B4 800C3BB4 3203FFFF */  andi       $v1, $s0, 0xffff
/* 2E7B8 800C3BB8 0062102A */  slt        $v0, $v1, $v0
/* 2E7BC 800C3BBC 14400010 */  bnez       $v0, .L800C3C00
/* 2E7C0 800C3BC0 00031202 */   srl       $v0, $v1, 8
/* 2E7C4 800C3BC4 304700FF */  andi       $a3, $v0, 0xff
/* 2E7C8 800C3BC8 10F20007 */  beq        $a3, $s2, .L800C3BE8
/* 2E7CC 800C3BCC 02202021 */   addu      $a0, $s1, $zero
/* 2E7D0 800C3BD0 00409021 */  addu       $s2, $v0, $zero
/* 2E7D4 800C3BD4 27A50010 */  addiu      $a1, $sp, 0x10
/* 2E7D8 800C3BD8 0C031353 */  jal        func_800C4D4C
/* 2E7DC 800C3BDC 00003021 */   addu      $a2, $zero, $zero
/* 2E7E0 800C3BE0 1440001B */  bnez       $v0, .L800C3C50
/* 2E7E4 800C3BE4 00000000 */   nop
.L800C3BE8:
/* 2E7E8 800C3BE8 320200FF */  andi       $v0, $s0, 0xff
/* 2E7EC 800C3BEC 00021040 */  sll        $v0, $v0, 1
/* 2E7F0 800C3BF0 00551021 */  addu       $v0, $v0, $s5
/* 2E7F4 800C3BF4 94500000 */  lhu        $s0, ($v0)
/* 2E7F8 800C3BF8 08030EEC */  j          .L800C3BB0
/* 2E7FC 800C3BFC 26730001 */   addiu     $s3, $s3, 1
.L800C3C00:
/* 2E800 800C3C00 24020001 */  addiu      $v0, $zero, 1
/* 2E804 800C3C04 14620012 */  bne        $v1, $v0, .L800C3C50
/* 2E808 800C3C08 24020003 */   addiu     $v0, $zero, 3
/* 2E80C 800C3C0C 00131200 */  sll        $v0, $s3, 8
/* 2E810 800C3C10 AE820000 */  sw         $v0, ($s4)
/* 2E814 800C3C14 97A20114 */  lhu        $v0, 0x114($sp)
/* 2E818 800C3C18 27A40120 */  addiu      $a0, $sp, 0x120
/* 2E81C 800C3C1C A6820008 */  sh         $v0, 8($s4)
/* 2E820 800C3C20 8FA20110 */  lw         $v0, 0x110($sp)
/* 2E824 800C3C24 2685000E */  addiu      $a1, $s4, 0xe
/* 2E828 800C3C28 24060010 */  addiu      $a2, $zero, 0x10
/* 2E82C 800C3C2C 0C03006C */  jal        func_800C01B0
/* 2E830 800C3C30 AE820004 */   sw        $v0, 4($s4)
/* 2E834 800C3C34 27A4011C */  addiu      $a0, $sp, 0x11c
/* 2E838 800C3C38 2685000A */  addiu      $a1, $s4, 0xa
/* 2E83C 800C3C3C 0C03006C */  jal        func_800C01B0
/* 2E840 800C3C40 24060004 */   addiu     $a2, $zero, 4
/* 2E844 800C3C44 8E240004 */  lw         $a0, 4($s1)
/* 2E848 800C3C48 0C0310E0 */  jal        func_800C4380
/* 2E84C 800C3C4C 8E250008 */   lw        $a1, 8($s1)
.L800C3C50:
/* 2E850 800C3C50 8FBF0148 */  lw         $ra, 0x148($sp)
/* 2E854 800C3C54 8FB50144 */  lw         $s5, 0x144($sp)
/* 2E858 800C3C58 8FB40140 */  lw         $s4, 0x140($sp)
/* 2E85C 800C3C5C 8FB3013C */  lw         $s3, 0x13c($sp)
/* 2E860 800C3C60 8FB20138 */  lw         $s2, 0x138($sp)
/* 2E864 800C3C64 8FB10134 */  lw         $s1, 0x134($sp)
/* 2E868 800C3C68 8FB00130 */  lw         $s0, 0x130($sp)
/* 2E86C 800C3C6C 03E00008 */  jr         $ra
/* 2E870 800C3C70 27BD0150 */   addiu     $sp, $sp, 0x150
/* 2E874 800C3C74 00000000 */  nop
/* 2E878 800C3C78 00000000 */  nop
/* 2E87C 800C3C7C 00000000 */  nop
