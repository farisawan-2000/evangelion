glabel func_80037A08_ovl3
/* E0F18 80037A08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E0F1C 80037A0C AFB20020 */  sw         $s2, 0x20($sp)
/* E0F20 80037A10 24B2000A */  addiu      $s2, $a1, 0xA
/* E0F24 80037A14 AFB1001C */  sw         $s1, 0x1C($sp)
/* E0F28 80037A18 30B1FFFF */  andi       $s1, $a1, 0xFFFF
/* E0F2C 80037A1C 02202821 */  addu       $a1, $s1, $zero
/* E0F30 80037A20 AFB00018 */  sw         $s0, 0x18($sp)
/* E0F34 80037A24 00C08021 */  addu       $s0, $a2, $zero
/* E0F38 80037A28 3246FFFF */  andi       $a2, $s2, 0xFFFF
/* E0F3C 80037A2C 00003821 */  addu       $a3, $zero, $zero
/* E0F40 80037A30 AFBF0024 */  sw         $ra, 0x24($sp)
/* E0F44 80037A34 0C00DEF7 */  jal        func_80037BDC_ovl3
/* E0F48 80037A38 AFA00010 */   sw        $zero, 0x10($sp)
/* E0F4C 80037A3C 321000FF */  andi       $s0, $s0, 0xFF
/* E0F50 80037A40 24020002 */  addiu      $v0, $zero, 0x2
/* E0F54 80037A44 12020009 */  beq        $s0, $v0, .L80037A6C_ovl3
/* E0F58 80037A48 24020003 */   addiu     $v0, $zero, 0x3
/* E0F5C 80037A4C 12020032 */  beq        $s0, $v0, .L80037B18_ovl3
/* E0F60 80037A50 00002021 */   addu      $a0, $zero, $zero
/* E0F64 80037A54 0800DEF1 */  j          .L80037BC4_ovl3
/* E0F68 80037A58 00000000 */   nop
.L80037A5C_ovl3:
/* E0F6C 80037A5C 0800DEA7 */  j          .L80037A9C_ovl3
/* E0F70 80037A60 00601021 */   addu      $v0, $v1, $zero
.L80037A64_ovl3:
/* E0F74 80037A64 0800DEBD */  j          .L80037AF4_ovl3
/* E0F78 80037A68 00601021 */   addu      $v0, $v1, $zero
.L80037A6C_ovl3:
/* E0F7C 80037A6C 00002021 */  addu       $a0, $zero, $zero
/* E0F80 80037A70 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E0F84 80037A74 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E0F88 80037A78 02202821 */  addu       $a1, $s1, $zero
.L80037A7C_ovl3:
/* E0F8C 80037A7C 94620000 */  lhu        $v0, 0x0($v1)
/* E0F90 80037A80 1045FFF6 */  beq        $v0, $a1, .L80037A5C_ovl3
/* E0F94 80037A84 24840001 */   addiu     $a0, $a0, 0x1
/* E0F98 80037A88 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* E0F9C 80037A8C 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E0FA0 80037A90 1440FFFA */  bnez       $v0, .L80037A7C_ovl3
/* E0FA4 80037A94 24630010 */   addiu     $v1, $v1, 0x10
/* E0FA8 80037A98 00001021 */  addu       $v0, $zero, $zero
.L80037A9C_ovl3:
/* E0FAC 80037A9C 8C44000C */  lw         $a0, 0xC($v0)
/* E0FB0 80037AA0 8C82000C */  lw         $v0, 0xC($a0)
/* E0FB4 80037AA4 94420000 */  lhu        $v0, 0x0($v0)
/* E0FB8 80037AA8 2406029C */  addiu      $a2, $zero, 0x29C
/* E0FBC 80037AAC 240500A0 */  addiu      $a1, $zero, 0xA0
/* E0FC0 80037AB0 00021042 */  srl        $v0, $v0, 1
/* E0FC4 80037AB4 00A22823 */  subu       $a1, $a1, $v0
/* E0FC8 80037AB8 00052C80 */  sll        $a1, $a1, 18
/* E0FCC 80037ABC 0C028D89 */  jal        func_800A3624
/* E0FD0 80037AC0 00052C03 */   sra       $a1, $a1, 16
/* E0FD4 80037AC4 00002021 */  addu       $a0, $zero, $zero
/* E0FD8 80037AC8 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E0FDC 80037ACC 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E0FE0 80037AD0 3245FFFF */  andi       $a1, $s2, 0xFFFF
.L80037AD4_ovl3:
/* E0FE4 80037AD4 94620000 */  lhu        $v0, 0x0($v1)
/* E0FE8 80037AD8 1045FFE2 */  beq        $v0, $a1, .L80037A64_ovl3
/* E0FEC 80037ADC 24840001 */   addiu     $a0, $a0, 0x1
/* E0FF0 80037AE0 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* E0FF4 80037AE4 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E0FF8 80037AE8 1440FFFA */  bnez       $v0, .L80037AD4_ovl3
/* E0FFC 80037AEC 24630010 */   addiu     $v1, $v1, 0x10
/* E1000 80037AF0 00001021 */  addu       $v0, $zero, $zero
.L80037AF4_ovl3:
/* E1004 80037AF4 8C44000C */  lw         $a0, 0xC($v0)
/* E1008 80037AF8 8C82000C */  lw         $v0, 0xC($a0)
/* E100C 80037AFC 94420000 */  lhu        $v0, 0x0($v0)
/* E1010 80037B00 0800DEEB */  j          .L80037BAC_ovl3
/* E1014 80037B04 2406029C */   addiu     $a2, $zero, 0x29C
.L80037B08_ovl3:
/* E1018 80037B08 0800DED1 */  j          .L80037B44_ovl3
/* E101C 80037B0C 00601021 */   addu      $v0, $v1, $zero
.L80037B10_ovl3:
/* E1020 80037B10 0800DEE7 */  j          .L80037B9C_ovl3
/* E1024 80037B14 00601021 */   addu      $v0, $v1, $zero
.L80037B18_ovl3:
/* E1028 80037B18 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E102C 80037B1C 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E1030 80037B20 02202821 */  addu       $a1, $s1, $zero
.L80037B24_ovl3:
/* E1034 80037B24 94620000 */  lhu        $v0, 0x0($v1)
/* E1038 80037B28 1045FFF7 */  beq        $v0, $a1, .L80037B08_ovl3
/* E103C 80037B2C 24840001 */   addiu     $a0, $a0, 0x1
/* E1040 80037B30 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* E1044 80037B34 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E1048 80037B38 1440FFFA */  bnez       $v0, .L80037B24_ovl3
/* E104C 80037B3C 24630010 */   addiu     $v1, $v1, 0x10
/* E1050 80037B40 00001021 */  addu       $v0, $zero, $zero
.L80037B44_ovl3:
/* E1054 80037B44 8C44000C */  lw         $a0, 0xC($v0)
/* E1058 80037B48 8C82000C */  lw         $v0, 0xC($a0)
/* E105C 80037B4C 94420000 */  lhu        $v0, 0x0($v0)
/* E1060 80037B50 240602BC */  addiu      $a2, $zero, 0x2BC
/* E1064 80037B54 240500A0 */  addiu      $a1, $zero, 0xA0
/* E1068 80037B58 00021042 */  srl        $v0, $v0, 1
/* E106C 80037B5C 00A22823 */  subu       $a1, $a1, $v0
/* E1070 80037B60 00052C80 */  sll        $a1, $a1, 18
/* E1074 80037B64 0C028D89 */  jal        func_800A3624
/* E1078 80037B68 00052C03 */   sra       $a1, $a1, 16
/* E107C 80037B6C 00002021 */  addu       $a0, $zero, $zero
/* E1080 80037B70 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E1084 80037B74 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E1088 80037B78 3245FFFF */  andi       $a1, $s2, 0xFFFF
.L80037B7C_ovl3:
/* E108C 80037B7C 94620000 */  lhu        $v0, 0x0($v1)
/* E1090 80037B80 1045FFE3 */  beq        $v0, $a1, .L80037B10_ovl3
/* E1094 80037B84 24840001 */   addiu     $a0, $a0, 0x1
/* E1098 80037B88 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* E109C 80037B8C 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E10A0 80037B90 1440FFFA */  bnez       $v0, .L80037B7C_ovl3
/* E10A4 80037B94 24630010 */   addiu     $v1, $v1, 0x10
/* E10A8 80037B98 00001021 */  addu       $v0, $zero, $zero
.L80037B9C_ovl3:
/* E10AC 80037B9C 8C44000C */  lw         $a0, 0xC($v0)
/* E10B0 80037BA0 8C82000C */  lw         $v0, 0xC($a0)
/* E10B4 80037BA4 94420000 */  lhu        $v0, 0x0($v0)
/* E10B8 80037BA8 240602BC */  addiu      $a2, $zero, 0x2BC
.L80037BAC_ovl3:
/* E10BC 80037BAC 240500A0 */  addiu      $a1, $zero, 0xA0
/* E10C0 80037BB0 00021042 */  srl        $v0, $v0, 1
/* E10C4 80037BB4 00A22823 */  subu       $a1, $a1, $v0
/* E10C8 80037BB8 00052C80 */  sll        $a1, $a1, 18
/* E10CC 80037BBC 0C028D89 */  jal        func_800A3624
/* E10D0 80037BC0 00052C03 */   sra       $a1, $a1, 16
.L80037BC4_ovl3:
/* E10D4 80037BC4 8FBF0024 */  lw         $ra, 0x24($sp)
/* E10D8 80037BC8 8FB20020 */  lw         $s2, 0x20($sp)
/* E10DC 80037BCC 8FB1001C */  lw         $s1, 0x1C($sp)
/* E10E0 80037BD0 8FB00018 */  lw         $s0, 0x18($sp)
/* E10E4 80037BD4 03E00008 */  jr         $ra
/* E10E8 80037BD8 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80037A08_ovl3, . - func_80037A08_ovl3
