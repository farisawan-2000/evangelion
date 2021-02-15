.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A4E8C
/* FA8C 800A4E8C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* FA90 800A4E90 AFB20040 */  sw         $s2, 0x40($sp)
/* FA94 800A4E94 A7A40016 */  sh         $a0, 0x16($sp)
/* FA98 800A4E98 97B20016 */  lhu        $s2, 0x16($sp)
/* FA9C 800A4E9C A7A5001E */  sh         $a1, 0x1e($sp)
/* FAA0 800A4EA0 97A2001E */  lhu        $v0, 0x1e($sp)
/* FAA4 800A4EA4 A3A7002F */  sb         $a3, 0x2f($sp)
/* FAA8 800A4EA8 24070010 */  addiu      $a3, $zero, 0x10
/* FAAC 800A4EAC AFBF005C */  sw         $ra, 0x5c($sp)
/* FAB0 800A4EB0 AFBE0058 */  sw         $fp, 0x58($sp)
/* FAB4 800A4EB4 AFB70054 */  sw         $s7, 0x54($sp)
/* FAB8 800A4EB8 AFB60050 */  sw         $s6, 0x50($sp)
/* FABC 800A4EBC AFB5004C */  sw         $s5, 0x4c($sp)
/* FAC0 800A4EC0 AFB40048 */  sw         $s4, 0x48($sp)
/* FAC4 800A4EC4 AFB30044 */  sw         $s3, 0x44($sp)
/* FAC8 800A4EC8 AFB1003C */  sw         $s1, 0x3c($sp)
/* FACC 800A4ECC AFB00038 */  sw         $s0, 0x38($sp)
/* FAD0 800A4ED0 02421821 */  addu       $v1, $s2, $v0
/* FAD4 800A4ED4 0243102A */  slt        $v0, $s2, $v1
/* FAD8 800A4ED8 10400013 */  beqz       $v0, .L800A4F28
/* FADC 800A4EDC A3A60027 */   sb        $a2, 0x27($sp)
/* FAE0 800A4EE0 00602021 */  addu       $a0, $v1, $zero
/* FAE4 800A4EE4 00122880 */  sll        $a1, $s2, 2
.L800A4EE8:
/* FAE8 800A4EE8 3C03800E */  lui        $v1, %hi(D_800E2080)
/* FAEC 800A4EEC 00651821 */  addu       $v1, $v1, $a1
/* FAF0 800A4EF0 94632080 */  lhu        $v1, %lo(D_800E2080)($v1)
/* FAF4 800A4EF4 00031040 */  sll        $v0, $v1, 1
/* FAF8 800A4EF8 00431021 */  addu       $v0, $v0, $v1
/* FAFC 800A4EFC 00021080 */  sll        $v0, $v0, 2
/* FB00 800A4F00 3C01800D */  lui        $at, %hi(D_800D6AD8)
/* FB04 800A4F04 00220821 */  addu       $at, $at, $v0
/* FB08 800A4F08 8C226AD8 */  lw         $v0, %lo(D_800D6AD8)($at)
/* FB0C 800A4F0C 26520001 */  addiu      $s2, $s2, 1
/* FB10 800A4F10 2442FFF0 */  addiu      $v0, $v0, -0x10
/* FB14 800A4F14 00021040 */  sll        $v0, $v0, 1
/* FB18 800A4F18 00E23821 */  addu       $a3, $a3, $v0
/* FB1C 800A4F1C 0244102A */  slt        $v0, $s2, $a0
/* FB20 800A4F20 1440FFF1 */  bnez       $v0, .L800A4EE8
/* FB24 800A4F24 24A50004 */   addiu     $a1, $a1, 4
.L800A4F28:
/* FB28 800A4F28 93A3002F */  lbu        $v1, 0x2f($sp)
/* FB2C 800A4F2C 24020001 */  addiu      $v0, $zero, 1
/* FB30 800A4F30 1062000F */  beq        $v1, $v0, .L800A4F70
/* FB34 800A4F34 28620002 */   slti      $v0, $v1, 2
/* FB38 800A4F38 50400005 */  beql       $v0, $zero, .L800A4F50
/* FB3C 800A4F3C 24020002 */   addiu     $v0, $zero, 2
/* FB40 800A4F40 10600007 */  beqz       $v1, .L800A4F60
/* FB44 800A4F44 00000000 */   nop
/* FB48 800A4F48 080293E3 */  j          .L800A4F8C
/* FB4C 800A4F4C 00000000 */   nop
.L800A4F50:
/* FB50 800A4F50 1062000B */  beq        $v1, $v0, .L800A4F80
/* FB54 800A4F54 00000000 */   nop
/* FB58 800A4F58 080293E3 */  j          .L800A4F8C
/* FB5C 800A4F5C 00000000 */   nop
.L800A4F60:
/* FB60 800A4F60 0C032663 */  jal        func_800C998C
/* FB64 800A4F64 00E02021 */   addu      $a0, $a3, $zero
/* FB68 800A4F68 080293E3 */  j          .L800A4F8C
/* FB6C 800A4F6C 0040A821 */   addu      $s5, $v0, $zero
.L800A4F70:
/* FB70 800A4F70 0C025E63 */  jal        func_8009798C
/* FB74 800A4F74 00E02021 */   addu      $a0, $a3, $zero
/* FB78 800A4F78 080293E3 */  j          .L800A4F8C
/* FB7C 800A4F7C 0040A821 */   addu      $s5, $v0, $zero
.L800A4F80:
/* FB80 800A4F80 0C026127 */  jal        func_8009849C
/* FB84 800A4F84 00E02021 */   addu      $a0, $a3, $zero
/* FB88 800A4F88 0040A821 */  addu       $s5, $v0, $zero
.L800A4F8C:
/* FB8C 800A4F8C 97B20016 */  lhu        $s2, 0x16($sp)
/* FB90 800A4F90 97A2001E */  lhu        $v0, 0x1e($sp)
/* FB94 800A4F94 26B10010 */  addiu      $s1, $s5, 0x10
/* FB98 800A4F98 02421821 */  addu       $v1, $s2, $v0
/* FB9C 800A4F9C 0243102A */  slt        $v0, $s2, $v1
/* FBA0 800A4FA0 10400032 */  beqz       $v0, .L800A506C
/* FBA4 800A4FA4 0000A021 */   addu      $s4, $zero, $zero
/* FBA8 800A4FA8 0240F021 */  addu       $fp, $s2, $zero
/* FBAC 800A4FAC 0060B821 */  addu       $s7, $v1, $zero
/* FBB0 800A4FB0 00129880 */  sll        $s3, $s2, 2
.L800A4FB4:
/* FBB4 800A4FB4 3C04001E */  lui        $a0, 0x1e
/* FBB8 800A4FB8 24849000 */  addiu      $a0, $a0, -0x7000
/* FBBC 800A4FBC 3C10800E */  lui        $s0, %hi(D_800E2080)
/* FBC0 800A4FC0 02138021 */  addu       $s0, $s0, $s3
/* FBC4 800A4FC4 96102080 */  lhu        $s0, %lo(D_800E2080)($s0)
/* FBC8 800A4FC8 3C05800D */  lui        $a1, %hi(D_800D6AD0)
/* FBCC 800A4FCC 24A56AD0 */  addiu      $a1, $a1, %lo(D_800D6AD0)
/* FBD0 800A4FD0 00003821 */  addu       $a3, $zero, $zero
/* FBD4 800A4FD4 0C02648E */  jal        func_80099238
/* FBD8 800A4FD8 02003021 */   addu      $a2, $s0, $zero
/* FBDC 800A4FDC 00402021 */  addu       $a0, $v0, $zero
/* FBE0 800A4FE0 24860010 */  addiu      $a2, $a0, 0x10
/* FBE4 800A4FE4 94830002 */  lhu        $v1, 2($a0)
/* FBE8 800A4FE8 00101040 */  sll        $v0, $s0, 1
/* FBEC 800A4FEC 00501021 */  addu       $v0, $v0, $s0
/* FBF0 800A4FF0 00021080 */  sll        $v0, $v0, 2
/* FBF4 800A4FF4 3C01800D */  lui        $at, %hi(D_800D6AD8)
/* FBF8 800A4FF8 00220821 */  addu       $at, $at, $v0
/* FBFC 800A4FFC 8C226AD8 */  lw         $v0, %lo(D_800D6AD8)($at)
/* FC00 800A5000 00002821 */  addu       $a1, $zero, $zero
/* FC04 800A5004 94900000 */  lhu        $s0, ($a0)
/* FC08 800A5008 2447FFF0 */  addiu      $a3, $v0, -0x10
/* FC0C 800A500C 10E00011 */  beqz       $a3, .L800A5054
/* FC10 800A5010 0283A021 */   addu      $s4, $s4, $v1
/* FC14 800A5014 025E1023 */  subu       $v0, $s2, $fp
/* FC18 800A5018 00021900 */  sll        $v1, $v0, 4
.L800A501C:
/* FC1C 800A501C 90C20000 */  lbu        $v0, ($a2)
/* FC20 800A5020 24A50001 */  addiu      $a1, $a1, 1
/* FC24 800A5024 00021102 */  srl        $v0, $v0, 4
/* FC28 800A5028 00431021 */  addu       $v0, $v0, $v1
/* FC2C 800A502C A2220000 */  sb         $v0, ($s1)
/* FC30 800A5030 90C20000 */  lbu        $v0, ($a2)
/* FC34 800A5034 26310001 */  addiu      $s1, $s1, 1
/* FC38 800A5038 24C60001 */  addiu      $a2, $a2, 1
/* FC3C 800A503C 3042000F */  andi       $v0, $v0, 0xf
/* FC40 800A5040 00431021 */  addu       $v0, $v0, $v1
/* FC44 800A5044 A2220000 */  sb         $v0, ($s1)
/* FC48 800A5048 00A7102B */  sltu       $v0, $a1, $a3
/* FC4C 800A504C 1440FFF3 */  bnez       $v0, .L800A501C
/* FC50 800A5050 26310001 */   addiu     $s1, $s1, 1
.L800A5054:
/* FC54 800A5054 0C0326A1 */  jal        func_800C9A84
/* FC58 800A5058 26730004 */   addiu     $s3, $s3, 4
/* FC5C 800A505C 26520001 */  addiu      $s2, $s2, 1
/* FC60 800A5060 0257102A */  slt        $v0, $s2, $s7
/* FC64 800A5064 1440FFD3 */  bnez       $v0, .L800A4FB4
/* FC68 800A5068 00000000 */   nop
.L800A506C:
/* FC6C 800A506C 26A40008 */  addiu      $a0, $s5, 8
/* FC70 800A5070 3C058010 */  lui        $a1, %hi(D_800F9E8C)
/* FC74 800A5074 24A59E8C */  addiu      $a1, $a1, %lo(D_800F9E8C)
/* FC78 800A5078 24020001 */  addiu      $v0, $zero, 1
/* FC7C 800A507C A6B00000 */  sh         $s0, ($s5)
/* FC80 800A5080 A6B40002 */  sh         $s4, 2($s5)
/* FC84 800A5084 0C030180 */  jal        func_800C0600
/* FC88 800A5088 A2A20004 */   sb        $v0, 4($s5)
/* FC8C 800A508C 93A3002F */  lbu        $v1, 0x2f($sp)
/* FC90 800A5090 24020001 */  addiu      $v0, $zero, 1
/* FC94 800A5094 1062000F */  beq        $v1, $v0, .L800A50D4
/* FC98 800A5098 28620002 */   slti      $v0, $v1, 2
/* FC9C 800A509C 50400005 */  beql       $v0, $zero, .L800A50B4
/* FCA0 800A50A0 24020002 */   addiu     $v0, $zero, 2
/* FCA4 800A50A4 10600007 */  beqz       $v1, .L800A50C4
/* FCA8 800A50A8 00000000 */   nop
/* FCAC 800A50AC 0802943C */  j          .L800A50F0
/* FCB0 800A50B0 00000000 */   nop
.L800A50B4:
/* FCB4 800A50B4 1062000B */  beq        $v1, $v0, .L800A50E4
/* FCB8 800A50B8 00000000 */   nop
/* FCBC 800A50BC 0802943C */  j          .L800A50F0
/* FCC0 800A50C0 00000000 */   nop
.L800A50C4:
/* FCC4 800A50C4 0C032663 */  jal        func_800C998C
/* FCC8 800A50C8 24040200 */   addiu     $a0, $zero, 0x200
/* FCCC 800A50CC 0802943C */  j          .L800A50F0
/* FCD0 800A50D0 0040B021 */   addu      $s6, $v0, $zero
.L800A50D4:
/* FCD4 800A50D4 0C025E63 */  jal        func_8009798C
/* FCD8 800A50D8 24040200 */   addiu     $a0, $zero, 0x200
/* FCDC 800A50DC 0802943C */  j          .L800A50F0
/* FCE0 800A50E0 0040B021 */   addu      $s6, $v0, $zero
.L800A50E4:
/* FCE4 800A50E4 0C026127 */  jal        func_8009849C
/* FCE8 800A50E8 24040200 */   addiu     $a0, $zero, 0x200
/* FCEC 800A50EC 0040B021 */  addu       $s6, $v0, $zero
.L800A50F0:
/* FCF0 800A50F0 97B20016 */  lhu        $s2, 0x16($sp)
/* FCF4 800A50F4 97A2001E */  lhu        $v0, 0x1e($sp)
/* FCF8 800A50F8 02421821 */  addu       $v1, $s2, $v0
/* FCFC 800A50FC 0243102A */  slt        $v0, $s2, $v1
/* FD00 800A5100 10400011 */  beqz       $v0, .L800A5148
/* FD04 800A5104 02C08821 */   addu      $s1, $s6, $zero
/* FD08 800A5108 00128080 */  sll        $s0, $s2, 2
/* FD0C 800A510C 00039080 */  sll        $s2, $v1, 2
/* FD10 800A5110 02202021 */  addu       $a0, $s1, $zero
.L800A5114:
/* FD14 800A5114 3C050061 */  lui        $a1, 0x61
/* FD18 800A5118 24A5CB80 */  addiu      $a1, $a1, -0x3480
/* FD1C 800A511C 3C07800E */  lui        $a3, %hi(D_800E2082)
/* FD20 800A5120 00F03821 */  addu       $a3, $a3, $s0
/* FD24 800A5124 94E72082 */  lhu        $a3, %lo(D_800E2082)($a3)
/* FD28 800A5128 3C06800E */  lui        $a2, %hi(D_800DD820)
/* FD2C 800A512C 24C6D820 */  addiu      $a2, $a2, %lo(D_800DD820)
/* FD30 800A5130 0C0264C3 */  jal        func_8009930C
/* FD34 800A5134 26100004 */   addiu     $s0, $s0, 4
/* FD38 800A5138 02228821 */  addu       $s1, $s1, $v0
/* FD3C 800A513C 0212102A */  slt        $v0, $s0, $s2
/* FD40 800A5140 1440FFF4 */  bnez       $v0, .L800A5114
/* FD44 800A5144 02202021 */   addu      $a0, $s1, $zero
.L800A5148:
/* FD48 800A5148 93A60027 */  lbu        $a2, 0x27($sp)
/* FD4C 800A514C 93A7002F */  lbu        $a3, 0x2f($sp)
/* FD50 800A5150 02A02021 */  addu       $a0, $s5, $zero
/* FD54 800A5154 0C028CEA */  jal        func_800A33A8
/* FD58 800A5158 02C02821 */   addu      $a1, $s6, $zero
/* FD5C 800A515C 8FBF005C */  lw         $ra, 0x5c($sp)
/* FD60 800A5160 8FBE0058 */  lw         $fp, 0x58($sp)
/* FD64 800A5164 8FB70054 */  lw         $s7, 0x54($sp)
/* FD68 800A5168 8FB60050 */  lw         $s6, 0x50($sp)
/* FD6C 800A516C 8FB5004C */  lw         $s5, 0x4c($sp)
/* FD70 800A5170 8FB40048 */  lw         $s4, 0x48($sp)
/* FD74 800A5174 8FB30044 */  lw         $s3, 0x44($sp)
/* FD78 800A5178 8FB20040 */  lw         $s2, 0x40($sp)
/* FD7C 800A517C 8FB1003C */  lw         $s1, 0x3c($sp)
/* FD80 800A5180 8FB00038 */  lw         $s0, 0x38($sp)
/* FD84 800A5184 27BD0060 */  addiu      $sp, $sp, 0x60
/* FD88 800A5188 03E00008 */  jr         $ra
/* FD8C 800A518C 00000000 */   nop
