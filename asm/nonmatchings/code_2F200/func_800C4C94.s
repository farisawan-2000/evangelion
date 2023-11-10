glabel func_800C4C94
/* 2F894 800C4C94 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2F898 800C4C98 AFB00030 */  sw         $s0, 0x30($sp)
/* 2F89C 800C4C9C 00808021 */  addu       $s0, $a0, $zero
/* 2F8A0 800C4CA0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2F8A4 800C4CA4 92020065 */  lbu        $v0, 0x65($s0)
/* 2F8A8 800C4CA8 1040000C */  beqz       $v0, .L800C4CDC
/* 2F8AC 800C4CAC 00000000 */   nop
/* 2F8B0 800C4CB0 0C031164 */  jal        func_800C4590
/* 2F8B4 800C4CB4 00002821 */   addu      $a1, $zero, $zero
/* 2F8B8 800C4CB8 00401821 */  addu       $v1, $v0, $zero
/* 2F8BC 800C4CBC 24020002 */  addiu      $v0, $zero, 0x2
/* 2F8C0 800C4CC0 14620004 */  bne        $v1, $v0, .L800C4CD4
/* 2F8C4 800C4CC4 02002021 */   addu      $a0, $s0, $zero
/* 2F8C8 800C4CC8 0C031164 */  jal        func_800C4590
/* 2F8CC 800C4CCC 00002821 */   addu      $a1, $zero, $zero
/* 2F8D0 800C4CD0 00401821 */  addu       $v1, $v0, $zero
.L800C4CD4:
/* 2F8D4 800C4CD4 14600019 */  bnez       $v1, .L800C4D3C
/* 2F8D8 800C4CD8 00601021 */   addu      $v0, $v1, $zero
.L800C4CDC:
/* 2F8DC 800C4CDC 8E040004 */  lw         $a0, 0x4($s0)
/* 2F8E0 800C4CE0 8E050008 */  lw         $a1, 0x8($s0)
/* 2F8E4 800C4CE4 24060001 */  addiu      $a2, $zero, 0x1
/* 2F8E8 800C4CE8 0C031424 */  jal        func_800C5090
/* 2F8EC 800C4CEC 27A70010 */   addiu     $a3, $sp, 0x10
/* 2F8F0 800C4CF0 00401821 */  addu       $v1, $v0, $zero
/* 2F8F4 800C4CF4 1060000B */  beqz       $v1, .L800C4D24
/* 2F8F8 800C4CF8 24020002 */   addiu     $v0, $zero, 0x2
/* 2F8FC 800C4CFC 1462000F */  bne        $v1, $v0, .L800C4D3C
/* 2F900 800C4D00 00601021 */   addu      $v0, $v1, $zero
/* 2F904 800C4D04 8E040004 */  lw         $a0, 0x4($s0)
/* 2F908 800C4D08 8E050008 */  lw         $a1, 0x8($s0)
/* 2F90C 800C4D0C 24060001 */  addiu      $a2, $zero, 0x1
/* 2F910 800C4D10 0C031424 */  jal        func_800C5090
/* 2F914 800C4D14 27A70010 */   addiu     $a3, $sp, 0x10
/* 2F918 800C4D18 00401821 */  addu       $v1, $v0, $zero
/* 2F91C 800C4D1C 14600007 */  bnez       $v1, .L800C4D3C
/* 2F920 800C4D20 00000000 */   nop
.L800C4D24:
/* 2F924 800C4D24 2604000C */  addiu      $a0, $s0, 0xC
/* 2F928 800C4D28 27A50010 */  addiu      $a1, $sp, 0x10
/* 2F92C 800C4D2C 0C031B34 */  jal        func_800C6CD0
/* 2F930 800C4D30 24060020 */   addiu     $a2, $zero, 0x20
/* 2F934 800C4D34 0002102B */  sltu       $v0, $zero, $v0
/* 2F938 800C4D38 00021040 */  sll        $v0, $v0, 1
.L800C4D3C:
/* 2F93C 800C4D3C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2F940 800C4D40 8FB00030 */  lw         $s0, 0x30($sp)
/* 2F944 800C4D44 03E00008 */  jr         $ra
/* 2F948 800C4D48 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800C4C94, . - func_800C4C94
