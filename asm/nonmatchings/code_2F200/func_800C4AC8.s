glabel func_800C4AC8
/* 2F6C8 800C4AC8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 2F6CC 800C4ACC AFB00058 */  sw         $s0, 0x58($sp)
/* 2F6D0 800C4AD0 00808021 */  addu       $s0, $a0, $zero
/* 2F6D4 800C4AD4 AFBF0060 */  sw         $ra, 0x60($sp)
/* 2F6D8 800C4AD8 AFB1005C */  sw         $s1, 0x5C($sp)
/* 2F6DC 800C4ADC 92020065 */  lbu        $v0, 0x65($s0)
/* 2F6E0 800C4AE0 10400006 */  beqz       $v0, .L800C4AFC
/* 2F6E4 800C4AE4 00000000 */   nop
/* 2F6E8 800C4AE8 0C031164 */  jal        func_800C4590
/* 2F6EC 800C4AEC 00002821 */   addu      $a1, $zero, $zero
/* 2F6F0 800C4AF0 00401821 */  addu       $v1, $v0, $zero
/* 2F6F4 800C4AF4 14600062 */  bnez       $v1, .L800C4C80
/* 2F6F8 800C4AF8 00000000 */   nop
.L800C4AFC:
/* 2F6FC 800C4AFC 8E040004 */  lw         $a0, 0x4($s0)
/* 2F700 800C4B00 8E050008 */  lw         $a1, 0x8($s0)
/* 2F704 800C4B04 24060001 */  addiu      $a2, $zero, 0x1
/* 2F708 800C4B08 0C031424 */  jal        func_800C5090
/* 2F70C 800C4B0C 27A70010 */   addiu     $a3, $sp, 0x10
/* 2F710 800C4B10 00401821 */  addu       $v1, $v0, $zero
/* 2F714 800C4B14 1460005A */  bnez       $v1, .L800C4C80
/* 2F718 800C4B18 27A50010 */   addiu     $a1, $sp, 0x10
/* 2F71C 800C4B1C 27A7002C */  addiu      $a3, $sp, 0x2C
/* 2F720 800C4B20 A7A00052 */  sh         $zero, 0x52($sp)
/* 2F724 800C4B24 A7A00050 */  sh         $zero, 0x50($sp)
.L800C4B28:
/* 2F728 800C4B28 94A20000 */  lhu        $v0, 0x0($a1)
/* 2F72C 800C4B2C 97A30050 */  lhu        $v1, 0x50($sp)
/* 2F730 800C4B30 97A40052 */  lhu        $a0, 0x52($sp)
/* 2F734 800C4B34 24A50002 */  addiu      $a1, $a1, 0x2
/* 2F738 800C4B38 00623021 */  addu       $a2, $v1, $v0
/* 2F73C 800C4B3C 00021027 */  nor        $v0, $zero, $v0
/* 2F740 800C4B40 00822021 */  addu       $a0, $a0, $v0
/* 2F744 800C4B44 00A7102B */  sltu       $v0, $a1, $a3
/* 2F748 800C4B48 A7A60050 */  sh         $a2, 0x50($sp)
/* 2F74C 800C4B4C 1440FFF6 */  bnez       $v0, .L800C4B28
/* 2F750 800C4B50 A7A40052 */   sh        $a0, 0x52($sp)
/* 2F754 800C4B54 97A3002C */  lhu        $v1, 0x2C($sp)
/* 2F758 800C4B58 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 2F75C 800C4B5C 14620005 */  bne        $v1, $v0, .L800C4B74
/* 2F760 800C4B60 27B10010 */   addiu     $s1, $sp, 0x10
/* 2F764 800C4B64 97A3002E */  lhu        $v1, 0x2E($sp)
/* 2F768 800C4B68 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 2F76C 800C4B6C 10620013 */  beq        $v1, $v0, .L800C4BBC
/* 2F770 800C4B70 00000000 */   nop
.L800C4B74:
/* 2F774 800C4B74 02002021 */  addu       $a0, $s0, $zero
/* 2F778 800C4B78 0C031259 */  jal        func_800C4964
/* 2F77C 800C4B7C 02202821 */   addu      $a1, $s1, $zero
/* 2F780 800C4B80 00401821 */  addu       $v1, $v0, $zero
/* 2F784 800C4B84 2402000A */  addiu      $v0, $zero, 0xA
/* 2F788 800C4B88 1462000A */  bne        $v1, $v0, .L800C4BB4
/* 2F78C 800C4B8C 02002021 */   addu      $a0, $s0, $zero
/* 2F790 800C4B90 02202821 */  addu       $a1, $s1, $zero
/* 2F794 800C4B94 27B10030 */  addiu      $s1, $sp, 0x30
/* 2F798 800C4B98 0C03119E */  jal        func_800C4678
/* 2F79C 800C4B9C 02203021 */   addu      $a2, $s1, $zero
/* 2F7A0 800C4BA0 00401821 */  addu       $v1, $v0, $zero
/* 2F7A4 800C4BA4 10600005 */  beqz       $v1, .L800C4BBC
/* 2F7A8 800C4BA8 00000000 */   nop
/* 2F7AC 800C4BAC 08031320 */  j          .L800C4C80
/* 2F7B0 800C4BB0 00000000 */   nop
.L800C4BB4:
/* 2F7B4 800C4BB4 14600032 */  bnez       $v1, .L800C4C80
/* 2F7B8 800C4BB8 00601021 */   addu      $v0, $v1, $zero
.L800C4BBC:
/* 2F7BC 800C4BBC 96220018 */  lhu        $v0, 0x18($s1)
/* 2F7C0 800C4BC0 30420001 */  andi       $v0, $v0, 0x1
/* 2F7C4 800C4BC4 1440000F */  bnez       $v0, .L800C4C04
/* 2F7C8 800C4BC8 02202021 */   addu      $a0, $s1, $zero
/* 2F7CC 800C4BCC 02002021 */  addu       $a0, $s0, $zero
/* 2F7D0 800C4BD0 02202821 */  addu       $a1, $s1, $zero
/* 2F7D4 800C4BD4 27B10030 */  addiu      $s1, $sp, 0x30
/* 2F7D8 800C4BD8 0C03119E */  jal        func_800C4678
/* 2F7DC 800C4BDC 02203021 */   addu      $a2, $s1, $zero
/* 2F7E0 800C4BE0 00401821 */  addu       $v1, $v0, $zero
/* 2F7E4 800C4BE4 14600026 */  bnez       $v1, .L800C4C80
/* 2F7E8 800C4BE8 00000000 */   nop
/* 2F7EC 800C4BEC 97A20048 */  lhu        $v0, 0x48($sp)
/* 2F7F0 800C4BF0 30420001 */  andi       $v0, $v0, 0x1
/* 2F7F4 800C4BF4 14400003 */  bnez       $v0, .L800C4C04
/* 2F7F8 800C4BF8 02202021 */   addu      $a0, $s1, $zero
/* 2F7FC 800C4BFC 08031320 */  j          .L800C4C80
/* 2F800 800C4C00 2402000B */   addiu     $v0, $zero, 0xB
.L800C4C04:
/* 2F804 800C4C04 2605000C */  addiu      $a1, $s0, 0xC
/* 2F808 800C4C08 0C03006C */  jal        func_800C01B0
/* 2F80C 800C4C0C 24060020 */   addiu     $a2, $zero, 0x20
/* 2F810 800C4C10 8E040004 */  lw         $a0, 0x4($s0)
/* 2F814 800C4C14 8E050008 */  lw         $a1, 0x8($s0)
/* 2F818 800C4C18 9222001B */  lbu        $v0, 0x1B($s1)
/* 2F81C 800C4C1C 24060007 */  addiu      $a2, $zero, 0x7
/* 2F820 800C4C20 AE02004C */  sw         $v0, 0x4C($s0)
/* 2F824 800C4C24 9223001A */  lbu        $v1, 0x1A($s1)
/* 2F828 800C4C28 2607002C */  addiu      $a3, $s0, 0x2C
/* 2F82C 800C4C2C 24020010 */  addiu      $v0, $zero, 0x10
/* 2F830 800C4C30 AE020050 */  sw         $v0, 0x50($s0)
/* 2F834 800C4C34 24020008 */  addiu      $v0, $zero, 0x8
/* 2F838 800C4C38 AE020054 */  sw         $v0, 0x54($s0)
/* 2F83C 800C4C3C A2030064 */  sb         $v1, 0x64($s0)
/* 2F840 800C4C40 92020064 */  lbu        $v0, 0x64($s0)
/* 2F844 800C4C44 00031840 */  sll        $v1, $v1, 1
/* 2F848 800C4C48 24630003 */  addiu      $v1, $v1, 0x3
/* 2F84C 800C4C4C AE030060 */  sw         $v1, 0x60($s0)
/* 2F850 800C4C50 92030064 */  lbu        $v1, 0x64($s0)
/* 2F854 800C4C54 24420001 */  addiu      $v0, $v0, 0x1
/* 2F858 800C4C58 000210C0 */  sll        $v0, $v0, 3
/* 2F85C 800C4C5C 000318C0 */  sll        $v1, $v1, 3
/* 2F860 800C4C60 AE020058 */  sw         $v0, 0x58($s0)
/* 2F864 800C4C64 00431021 */  addu       $v0, $v0, $v1
/* 2F868 800C4C68 0C031424 */  jal        func_800C5090
/* 2F86C 800C4C6C AE02005C */   sw        $v0, 0x5C($s0)
/* 2F870 800C4C70 00401821 */  addu       $v1, $v0, $zero
/* 2F874 800C4C74 0003102B */  sltu       $v0, $zero, $v1
/* 2F878 800C4C78 00021023 */  negu       $v0, $v0
/* 2F87C 800C4C7C 00621024 */  and        $v0, $v1, $v0
.L800C4C80:
/* 2F880 800C4C80 8FBF0060 */  lw         $ra, 0x60($sp)
/* 2F884 800C4C84 8FB1005C */  lw         $s1, 0x5C($sp)
/* 2F888 800C4C88 8FB00058 */  lw         $s0, 0x58($sp)
/* 2F88C 800C4C8C 03E00008 */  jr         $ra
/* 2F890 800C4C90 27BD0068 */   addiu     $sp, $sp, 0x68
.size func_800C4AC8, . - func_800C4AC8
