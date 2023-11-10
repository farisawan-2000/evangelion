glabel func_800C4D4C
/* 2F94C 800C4D4C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2F950 800C4D50 AFB20030 */  sw         $s2, 0x30($sp)
/* 2F954 800C4D54 00809021 */  addu       $s2, $a0, $zero
/* 2F958 800C4D58 AFB40038 */  sw         $s4, 0x38($sp)
/* 2F95C 800C4D5C 00A0A021 */  addu       $s4, $a1, $zero
/* 2F960 800C4D60 AFB60040 */  sw         $s6, 0x40($sp)
/* 2F964 800C4D64 00C0B021 */  addu       $s6, $a2, $zero
/* 2F968 800C4D68 AFB70044 */  sw         $s7, 0x44($sp)
/* 2F96C 800C4D6C 00E0B821 */  addu       $s7, $a3, $zero
/* 2F970 800C4D70 32C200FF */  andi       $v0, $s6, 0xFF
/* 2F974 800C4D74 AFBF004C */  sw         $ra, 0x4C($sp)
/* 2F978 800C4D78 AFBE0048 */  sw         $fp, 0x48($sp)
/* 2F97C 800C4D7C AFB5003C */  sw         $s5, 0x3C($sp)
/* 2F980 800C4D80 AFB30034 */  sw         $s3, 0x34($sp)
/* 2F984 800C4D84 AFB1002C */  sw         $s1, 0x2C($sp)
/* 2F988 800C4D88 14400011 */  bnez       $v0, .L800C4DD0
/* 2F98C 800C4D8C AFB00028 */   sw        $s0, 0x28($sp)
/* 2F990 800C4D90 3C03800F */  lui        $v1, %hi(D_800F7B84)
/* 2F994 800C4D94 90637B84 */  lbu        $v1, %lo(D_800F7B84)($v1)
/* 2F998 800C4D98 32E200FF */  andi       $v0, $s7, 0xFF
/* 2F99C 800C4D9C 1443000C */  bne        $v0, $v1, .L800C4DD0
/* 2F9A0 800C4DA0 00000000 */   nop
/* 2F9A4 800C4DA4 8E430008 */  lw         $v1, 0x8($s2)
/* 2F9A8 800C4DA8 3C02800F */  lui        $v0, %hi(D_800F7B80)
/* 2F9AC 800C4DAC 8C427B80 */  lw         $v0, %lo(D_800F7B80)($v0)
/* 2F9B0 800C4DB0 14620007 */  bne        $v1, $v0, .L800C4DD0
/* 2F9B4 800C4DB4 00000000 */   nop
/* 2F9B8 800C4DB8 3C048017 */  lui        $a0, %hi(D_8016D5B8)
/* 2F9BC 800C4DBC 2484D5B8 */  addiu      $a0, $a0, %lo(D_8016D5B8)
/* 2F9C0 800C4DC0 0C03006C */  jal        func_800C01B0
/* 2F9C4 800C4DC4 24060100 */   addiu     $a2, $zero, 0x100
/* 2F9C8 800C4DC8 08031415 */  j          .L800C5054
/* 2F9CC 800C4DCC 00001021 */   addu      $v0, $zero, $zero
.L800C4DD0:
/* 2F9D0 800C4DD0 92420065 */  lbu        $v0, 0x65($s2)
/* 2F9D4 800C4DD4 10400006 */  beqz       $v0, .L800C4DF0
/* 2F9D8 800C4DD8 02402021 */   addu      $a0, $s2, $zero
/* 2F9DC 800C4DDC 0C031164 */  jal        func_800C4590
/* 2F9E0 800C4DE0 00002821 */   addu      $a1, $zero, $zero
/* 2F9E4 800C4DE4 00401821 */  addu       $v1, $v0, $zero
/* 2F9E8 800C4DE8 1460009A */  bnez       $v1, .L800C5054
/* 2F9EC 800C4DEC 00000000 */   nop
.L800C4DF0:
/* 2F9F0 800C4DF0 32E200FF */  andi       $v0, $s7, 0xFF
/* 2F9F4 800C4DF4 14400002 */  bnez       $v0, .L800C4E00
/* 2F9F8 800C4DF8 24150001 */   addiu     $s5, $zero, 0x1
/* 2F9FC 800C4DFC 8E550060 */  lw         $s5, 0x60($s2)
.L800C4E00:
/* 2FA00 800C4E00 32C300FF */  andi       $v1, $s6, 0xFF
/* 2FA04 800C4E04 24020001 */  addiu      $v0, $zero, 0x1
/* 2FA08 800C4E08 14620011 */  bne        $v1, $v0, .L800C4E50
/* 2FA0C 800C4E0C 00008021 */   addu      $s0, $zero, $zero
/* 2FA10 800C4E10 00151040 */  sll        $v0, $s5, 1
/* 2FA14 800C4E14 00542821 */  addu       $a1, $v0, $s4
/* 2FA18 800C4E18 00002021 */  addu       $a0, $zero, $zero
/* 2FA1C 800C4E1C 24020080 */  addiu      $v0, $zero, 0x80
/* 2FA20 800C4E20 00551023 */  subu       $v0, $v0, $s5
/* 2FA24 800C4E24 00023040 */  sll        $a2, $v0, 1
/* 2FA28 800C4E28 18C00007 */  blez       $a2, .L800C4E48
/* 2FA2C 800C4E2C 00001821 */   addu      $v1, $zero, $zero
.L800C4E30:
/* 2FA30 800C4E30 90A20000 */  lbu        $v0, 0x0($a1)
/* 2FA34 800C4E34 24840001 */  addiu      $a0, $a0, 0x1
/* 2FA38 800C4E38 00621821 */  addu       $v1, $v1, $v0
/* 2FA3C 800C4E3C 0086102A */  slt        $v0, $a0, $a2
/* 2FA40 800C4E40 1440FFFB */  bnez       $v0, .L800C4E30
/* 2FA44 800C4E44 24A50001 */   addiu     $a1, $a1, 0x1
.L800C4E48:
/* 2FA48 800C4E48 A2830001 */  sb         $v1, 0x1($s4)
/* 2FA4C 800C4E4C 00008021 */  addu       $s0, $zero, $zero
.L800C4E50:
/* 2FA50 800C4E50 32DE00FF */  andi       $fp, $s6, 0xFF
/* 2FA54 800C4E54 32E200FF */  andi       $v0, $s7, 0xFF
/* 2FA58 800C4E58 000298C0 */  sll        $s3, $v0, 3
/* 2FA5C 800C4E5C 00101140 */  sll        $v0, $s0, 5
.L800C4E60:
/* 2FA60 800C4E60 24080001 */  addiu      $t0, $zero, 0x1
/* 2FA64 800C4E64 17C80015 */  bne        $fp, $t0, .L800C4EBC
/* 2FA68 800C4E68 02828821 */   addu      $s1, $s4, $v0
/* 2FA6C 800C4E6C 8E460054 */  lw         $a2, 0x54($s2)
/* 2FA70 800C4E70 AFA00010 */  sw         $zero, 0x10($sp)
/* 2FA74 800C4E74 8E440004 */  lw         $a0, 0x4($s2)
/* 2FA78 800C4E78 8E450008 */  lw         $a1, 0x8($s2)
/* 2FA7C 800C4E7C 02203821 */  addu       $a3, $s1, $zero
/* 2FA80 800C4E80 00D33021 */  addu       $a2, $a2, $s3
/* 2FA84 800C4E84 00D03021 */  addu       $a2, $a2, $s0
/* 2FA88 800C4E88 0C0314A0 */  jal        func_800C5280
/* 2FA8C 800C4E8C 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2FA90 800C4E90 8E460058 */  lw         $a2, 0x58($s2)
/* 2FA94 800C4E94 AFA00010 */  sw         $zero, 0x10($sp)
/* 2FA98 800C4E98 8E440004 */  lw         $a0, 0x4($s2)
/* 2FA9C 800C4E9C 8E450008 */  lw         $a1, 0x8($s2)
/* 2FAA0 800C4EA0 02203821 */  addu       $a3, $s1, $zero
/* 2FAA4 800C4EA4 00D33021 */  addu       $a2, $a2, $s3
/* 2FAA8 800C4EA8 00D03021 */  addu       $a2, $a2, $s0
/* 2FAAC 800C4EAC 0C0314A0 */  jal        func_800C5280
/* 2FAB0 800C4EB0 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2FAB4 800C4EB4 080313B8 */  j          .L800C4EE0
/* 2FAB8 800C4EB8 00401821 */   addu      $v1, $v0, $zero
.L800C4EBC:
/* 2FABC 800C4EBC 8E440004 */  lw         $a0, 0x4($s2)
/* 2FAC0 800C4EC0 8E460054 */  lw         $a2, 0x54($s2)
/* 2FAC4 800C4EC4 8E450008 */  lw         $a1, 0x8($s2)
/* 2FAC8 800C4EC8 02203821 */  addu       $a3, $s1, $zero
/* 2FACC 800C4ECC 00D33021 */  addu       $a2, $a2, $s3
/* 2FAD0 800C4ED0 00D03021 */  addu       $a2, $a2, $s0
/* 2FAD4 800C4ED4 0C031424 */  jal        func_800C5090
/* 2FAD8 800C4ED8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2FADC 800C4EDC 00401821 */  addu       $v1, $v0, $zero
.L800C4EE0:
/* 2FAE0 800C4EE0 1460003D */  bnez       $v1, .L800C4FD8
/* 2FAE4 800C4EE4 26100001 */   addiu     $s0, $s0, 0x1
/* 2FAE8 800C4EE8 2A020008 */  slti       $v0, $s0, 0x8
/* 2FAEC 800C4EEC 1440FFDC */  bnez       $v0, .L800C4E60
/* 2FAF0 800C4EF0 00101140 */   sll       $v0, $s0, 5
/* 2FAF4 800C4EF4 32C200FF */  andi       $v0, $s6, 0xFF
/* 2FAF8 800C4EF8 5440004C */  bnel       $v0, $zero, .L800C502C
/* 2FAFC 800C4EFC 02802021 */   addu      $a0, $s4, $zero
/* 2FB00 800C4F00 00003821 */  addu       $a3, $zero, $zero
/* 2FB04 800C4F04 00151040 */  sll        $v0, $s5, 1
/* 2FB08 800C4F08 00542821 */  addu       $a1, $v0, $s4
/* 2FB0C 800C4F0C 24020080 */  addiu      $v0, $zero, 0x80
/* 2FB10 800C4F10 00551023 */  subu       $v0, $v0, $s5
/* 2FB14 800C4F14 00023040 */  sll        $a2, $v0, 1
/* 2FB18 800C4F18 0066102A */  slt        $v0, $v1, $a2
/* 2FB1C 800C4F1C 10400007 */  beqz       $v0, .L800C4F3C
/* 2FB20 800C4F20 00002021 */   addu      $a0, $zero, $zero
.L800C4F24:
/* 2FB24 800C4F24 90A20000 */  lbu        $v0, 0x0($a1)
/* 2FB28 800C4F28 24840001 */  addiu      $a0, $a0, 0x1
/* 2FB2C 800C4F2C 00E23821 */  addu       $a3, $a3, $v0
/* 2FB30 800C4F30 0086102A */  slt        $v0, $a0, $a2
/* 2FB34 800C4F34 1440FFFB */  bnez       $v0, .L800C4F24
/* 2FB38 800C4F38 24A50001 */   addiu     $a1, $a1, 0x1
.L800C4F3C:
/* 2FB3C 800C4F3C 92830001 */  lbu        $v1, 0x1($s4)
/* 2FB40 800C4F40 30E200FF */  andi       $v0, $a3, 0xFF
/* 2FB44 800C4F44 10430038 */  beq        $v0, $v1, .L800C5028
/* 2FB48 800C4F48 32E200FF */   andi      $v0, $s7, 0xFF
/* 2FB4C 800C4F4C 00008021 */  addu       $s0, $zero, $zero
/* 2FB50 800C4F50 000298C0 */  sll        $s3, $v0, 3
/* 2FB54 800C4F54 02808821 */  addu       $s1, $s4, $zero
.L800C4F58:
/* 2FB58 800C4F58 8E440004 */  lw         $a0, 0x4($s2)
/* 2FB5C 800C4F5C 8E450008 */  lw         $a1, 0x8($s2)
/* 2FB60 800C4F60 8E460058 */  lw         $a2, 0x58($s2)
/* 2FB64 800C4F64 02203821 */  addu       $a3, $s1, $zero
/* 2FB68 800C4F68 26310020 */  addiu      $s1, $s1, 0x20
/* 2FB6C 800C4F6C 00D33021 */  addu       $a2, $a2, $s3
/* 2FB70 800C4F70 00D03021 */  addu       $a2, $a2, $s0
/* 2FB74 800C4F74 0C031424 */  jal        func_800C5090
/* 2FB78 800C4F78 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2FB7C 800C4F7C 26100001 */  addiu      $s0, $s0, 0x1
/* 2FB80 800C4F80 2A020008 */  slti       $v0, $s0, 0x8
/* 2FB84 800C4F84 1440FFF4 */  bnez       $v0, .L800C4F58
/* 2FB88 800C4F88 24030080 */   addiu     $v1, $zero, 0x80
/* 2FB8C 800C4F8C 00151040 */  sll        $v0, $s5, 1
/* 2FB90 800C4F90 00543021 */  addu       $a2, $v0, $s4
/* 2FB94 800C4F94 00002021 */  addu       $a0, $zero, $zero
/* 2FB98 800C4F98 00751823 */  subu       $v1, $v1, $s5
/* 2FB9C 800C4F9C 00031840 */  sll        $v1, $v1, 1
/* 2FBA0 800C4FA0 18600007 */  blez       $v1, .L800C4FC0
/* 2FBA4 800C4FA4 00002821 */   addu      $a1, $zero, $zero
.L800C4FA8:
/* 2FBA8 800C4FA8 90C20000 */  lbu        $v0, 0x0($a2)
/* 2FBAC 800C4FAC 24840001 */  addiu      $a0, $a0, 0x1
/* 2FBB0 800C4FB0 00A22821 */  addu       $a1, $a1, $v0
/* 2FBB4 800C4FB4 0083102A */  slt        $v0, $a0, $v1
/* 2FBB8 800C4FB8 1440FFFB */  bnez       $v0, .L800C4FA8
/* 2FBBC 800C4FBC 24C60001 */   addiu     $a2, $a2, 0x1
.L800C4FC0:
/* 2FBC0 800C4FC0 92830001 */  lbu        $v1, 0x1($s4)
/* 2FBC4 800C4FC4 30A200FF */  andi       $v0, $a1, 0xFF
/* 2FBC8 800C4FC8 10430005 */  beq        $v0, $v1, .L800C4FE0
/* 2FBCC 800C4FCC 24020003 */   addiu     $v0, $zero, 0x3
/* 2FBD0 800C4FD0 08031415 */  j          .L800C5054
/* 2FBD4 800C4FD4 00000000 */   nop
.L800C4FD8:
/* 2FBD8 800C4FD8 08031415 */  j          .L800C5054
/* 2FBDC 800C4FDC 00601021 */   addu      $v0, $v1, $zero
.L800C4FE0:
/* 2FBE0 800C4FE0 00008021 */  addu       $s0, $zero, $zero
/* 2FBE4 800C4FE4 32E200FF */  andi       $v0, $s7, 0xFF
/* 2FBE8 800C4FE8 000298C0 */  sll        $s3, $v0, 3
/* 2FBEC 800C4FEC 02808821 */  addu       $s1, $s4, $zero
.L800C4FF0:
/* 2FBF0 800C4FF0 8E460054 */  lw         $a2, 0x54($s2)
/* 2FBF4 800C4FF4 AFA00010 */  sw         $zero, 0x10($sp)
/* 2FBF8 800C4FF8 8E440004 */  lw         $a0, 0x4($s2)
/* 2FBFC 800C4FFC 8E450008 */  lw         $a1, 0x8($s2)
/* 2FC00 800C5000 02203821 */  addu       $a3, $s1, $zero
/* 2FC04 800C5004 26310020 */  addiu      $s1, $s1, 0x20
/* 2FC08 800C5008 00D33021 */  addu       $a2, $a2, $s3
/* 2FC0C 800C500C 00D03021 */  addu       $a2, $a2, $s0
/* 2FC10 800C5010 0C0314A0 */  jal        func_800C5280
/* 2FC14 800C5014 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2FC18 800C5018 26100001 */  addiu      $s0, $s0, 0x1
/* 2FC1C 800C501C 2A020008 */  slti       $v0, $s0, 0x8
/* 2FC20 800C5020 1440FFF3 */  bnez       $v0, .L800C4FF0
/* 2FC24 800C5024 00000000 */   nop
.L800C5028:
/* 2FC28 800C5028 02802021 */  addu       $a0, $s4, $zero
.L800C502C:
/* 2FC2C 800C502C 3C058017 */  lui        $a1, %hi(D_8016D5B8)
/* 2FC30 800C5030 24A5D5B8 */  addiu      $a1, $a1, %lo(D_8016D5B8)
/* 2FC34 800C5034 3C01800F */  lui        $at, %hi(D_800F7B84)
/* 2FC38 800C5038 A0377B84 */  sb         $s7, %lo(D_800F7B84)($at)
/* 2FC3C 800C503C 0C03006C */  jal        func_800C01B0
/* 2FC40 800C5040 24060100 */   addiu     $a2, $zero, 0x100
/* 2FC44 800C5044 8E430008 */  lw         $v1, 0x8($s2)
/* 2FC48 800C5048 00001021 */  addu       $v0, $zero, $zero
/* 2FC4C 800C504C 3C01800F */  lui        $at, %hi(D_800F7B80)
/* 2FC50 800C5050 AC237B80 */  sw         $v1, %lo(D_800F7B80)($at)
.L800C5054:
/* 2FC54 800C5054 8FBF004C */  lw         $ra, 0x4C($sp)
/* 2FC58 800C5058 8FBE0048 */  lw         $fp, 0x48($sp)
/* 2FC5C 800C505C 8FB70044 */  lw         $s7, 0x44($sp)
/* 2FC60 800C5060 8FB60040 */  lw         $s6, 0x40($sp)
/* 2FC64 800C5064 8FB5003C */  lw         $s5, 0x3C($sp)
/* 2FC68 800C5068 8FB40038 */  lw         $s4, 0x38($sp)
/* 2FC6C 800C506C 8FB30034 */  lw         $s3, 0x34($sp)
/* 2FC70 800C5070 8FB20030 */  lw         $s2, 0x30($sp)
/* 2FC74 800C5074 8FB1002C */  lw         $s1, 0x2C($sp)
/* 2FC78 800C5078 8FB00028 */  lw         $s0, 0x28($sp)
/* 2FC7C 800C507C 03E00008 */  jr         $ra
/* 2FC80 800C5080 27BD0050 */   addiu     $sp, $sp, 0x50
/* 2FC84 800C5084 00000000 */  nop
/* 2FC88 800C5088 00000000 */  nop
/* 2FC8C 800C508C 00000000 */  nop
.size func_800C4D4C, . - func_800C4D4C
