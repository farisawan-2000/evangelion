.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C5DE0
/* 309E0 800C5DE0 3C1A8015 */  lui        $k0, %hi(D_80149BC8)
/* 309E4 800C5DE4 275A9BC8 */  addiu      $k0, $k0, %lo(D_80149BC8)
/* 309E8 800C5DE8 FF410020 */  sd         $at, 0x20($k0)
/* 309EC 800C5DEC 401B6000 */  mfc0       $k1, $12
/* 309F0 800C5DF0 AF5B0118 */  sw         $k1, 0x118($k0)
/* 309F4 800C5DF4 2401FFFC */  addiu      $at, $zero, -4
/* 309F8 800C5DF8 0361D824 */  and        $k1, $k1, $at
/* 309FC 800C5DFC 409B6000 */  mtc0       $k1, $12
/* 30A00 800C5E00 FF480058 */  sd         $t0, 0x58($k0)
/* 30A04 800C5E04 FF490060 */  sd         $t1, 0x60($k0)
/* 30A08 800C5E08 FF4A0068 */  sd         $t2, 0x68($k0)
/* 30A0C 800C5E0C AF400018 */  sw         $zero, 0x18($k0)
/* 30A10 800C5E10 40086800 */  mfc0       $t0, $13
/* 30A14 800C5E14 03404021 */  addu       $t0, $k0, $zero
/* 30A18 800C5E18 3C1A800F */  lui        $k0, %hi(D_800F69C0)
/* 30A1C 800C5E1C 8F5A69C0 */  lw         $k0, %lo(D_800F69C0)($k0)
/* 30A20 800C5E20 DD090020 */  ld         $t1, 0x20($t0)
/* 30A24 800C5E24 FF490020 */  sd         $t1, 0x20($k0)
/* 30A28 800C5E28 DD090118 */  ld         $t1, 0x118($t0)
/* 30A2C 800C5E2C FF490118 */  sd         $t1, 0x118($k0)
/* 30A30 800C5E30 DD090058 */  ld         $t1, 0x58($t0)
/* 30A34 800C5E34 FF490058 */  sd         $t1, 0x58($k0)
/* 30A38 800C5E38 DD090060 */  ld         $t1, 0x60($t0)
/* 30A3C 800C5E3C FF490060 */  sd         $t1, 0x60($k0)
/* 30A40 800C5E40 DD090068 */  ld         $t1, 0x68($t0)
/* 30A44 800C5E44 FF490068 */  sd         $t1, 0x68($k0)
/* 30A48 800C5E48 FF420028 */  sd         $v0, 0x28($k0)
/* 30A4C 800C5E4C FF430030 */  sd         $v1, 0x30($k0)
/* 30A50 800C5E50 FF440038 */  sd         $a0, 0x38($k0)
/* 30A54 800C5E54 FF450040 */  sd         $a1, 0x40($k0)
/* 30A58 800C5E58 FF460048 */  sd         $a2, 0x48($k0)
/* 30A5C 800C5E5C FF470050 */  sd         $a3, 0x50($k0)
/* 30A60 800C5E60 FF4B0070 */  sd         $t3, 0x70($k0)
/* 30A64 800C5E64 FF4C0078 */  sd         $t4, 0x78($k0)
/* 30A68 800C5E68 FF4D0080 */  sd         $t5, 0x80($k0)
/* 30A6C 800C5E6C FF4E0088 */  sd         $t6, 0x88($k0)
/* 30A70 800C5E70 FF4F0090 */  sd         $t7, 0x90($k0)
/* 30A74 800C5E74 FF500098 */  sd         $s0, 0x98($k0)
/* 30A78 800C5E78 FF5100A0 */  sd         $s1, 0xa0($k0)
/* 30A7C 800C5E7C FF5200A8 */  sd         $s2, 0xa8($k0)
/* 30A80 800C5E80 FF5300B0 */  sd         $s3, 0xb0($k0)
/* 30A84 800C5E84 FF5400B8 */  sd         $s4, 0xb8($k0)
/* 30A88 800C5E88 FF5500C0 */  sd         $s5, 0xc0($k0)
/* 30A8C 800C5E8C FF5600C8 */  sd         $s6, 0xc8($k0)
/* 30A90 800C5E90 FF5700D0 */  sd         $s7, 0xd0($k0)
/* 30A94 800C5E94 FF5800D8 */  sd         $t8, 0xd8($k0)
/* 30A98 800C5E98 FF5900E0 */  sd         $t9, 0xe0($k0)
/* 30A9C 800C5E9C FF5C00E8 */  sd         $gp, 0xe8($k0)
/* 30AA0 800C5EA0 FF5D00F0 */  sd         $sp, 0xf0($k0)
/* 30AA4 800C5EA4 FF5E00F8 */  sd         $fp, 0xf8($k0)
/* 30AA8 800C5EA8 FF5F0100 */  sd         $ra, 0x100($k0)
/* 30AAC 800C5EAC 00004012 */  mflo       $t0
/* 30AB0 800C5EB0 FF480108 */  sd         $t0, 0x108($k0)
/* 30AB4 800C5EB4 00004010 */  mfhi       $t0
/* 30AB8 800C5EB8 FF480110 */  sd         $t0, 0x110($k0)
/* 30ABC 800C5EBC 8F5B0118 */  lw         $k1, 0x118($k0)
/* 30AC0 800C5EC0 3369FF00 */  andi       $t1, $k1, 0xff00
/* 30AC4 800C5EC4 11200013 */  beqz       $t1, .L800C5F14
/* 30AC8 800C5EC8 00000000 */   nop
/* 30ACC 800C5ECC 3C08800F */  lui        $t0, %hi(D_800F7BB0)
/* 30AD0 800C5ED0 25087BB0 */  addiu      $t0, $t0, %lo(D_800F7BB0)
/* 30AD4 800C5ED4 8D080000 */  lw         $t0, ($t0)
/* 30AD8 800C5ED8 2401FFFF */  addiu      $at, $zero, -1
/* 30ADC 800C5EDC 01015026 */  xor        $t2, $t0, $at
/* 30AE0 800C5EE0 314AFF00 */  andi       $t2, $t2, 0xff00
/* 30AE4 800C5EE4 012A6025 */  or         $t4, $t1, $t2
/* 30AE8 800C5EE8 3C01FFFF */  lui        $at, 0xffff
/* 30AEC 800C5EEC 342100FF */  ori        $at, $at, 0xff
/* 30AF0 800C5EF0 03615824 */  and        $t3, $k1, $at
/* 30AF4 800C5EF4 016C5825 */  or         $t3, $t3, $t4
/* 30AF8 800C5EF8 AF4B0118 */  sw         $t3, 0x118($k0)
/* 30AFC 800C5EFC 3108FF00 */  andi       $t0, $t0, 0xff00
/* 30B00 800C5F00 01284824 */  and        $t1, $t1, $t0
/* 30B04 800C5F04 3C01FFFF */  lui        $at, 0xffff
/* 30B08 800C5F08 342100FF */  ori        $at, $at, 0xff
/* 30B0C 800C5F0C 0361D824 */  and        $k1, $k1, $at
/* 30B10 800C5F10 0369D825 */  or         $k1, $k1, $t1
.L800C5F14:
/* 30B14 800C5F14 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* 30B18 800C5F18 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* 30B1C 800C5F1C 1120000B */  beqz       $t1, .L800C5F4C
/* 30B20 800C5F20 00000000 */   nop
/* 30B24 800C5F24 3C08800F */  lui        $t0, %hi(D_800F7BB0)
/* 30B28 800C5F28 25087BB0 */  addiu      $t0, $t0, %lo(D_800F7BB0)
/* 30B2C 800C5F2C 8D080000 */  lw         $t0, ($t0)
/* 30B30 800C5F30 00084402 */  srl        $t0, $t0, 0x10
/* 30B34 800C5F34 2401FFFF */  addiu      $at, $zero, -1
/* 30B38 800C5F38 01014026 */  xor        $t0, $t0, $at
/* 30B3C 800C5F3C 3108003F */  andi       $t0, $t0, 0x3f
/* 30B40 800C5F40 8F4C0128 */  lw         $t4, 0x128($k0)
/* 30B44 800C5F44 010C4024 */  and        $t0, $t0, $t4
/* 30B48 800C5F48 01284825 */  or         $t1, $t1, $t0
.L800C5F4C:
/* 30B4C 800C5F4C AF490128 */  sw         $t1, 0x128($k0)
/* 30B50 800C5F50 40087000 */  mfc0       $t0, $14
/* 30B54 800C5F54 AF48011C */  sw         $t0, 0x11c($k0)
/* 30B58 800C5F58 8F480018 */  lw         $t0, 0x18($k0)
/* 30B5C 800C5F5C 11000014 */  beqz       $t0, .L800C5FB0
/* 30B60 800C5F60 00000000 */   nop
/* 30B64 800C5F64 4448F800 */  cfc1       $t0, $31
/* 30B68 800C5F68 00000000 */  nop
/* 30B6C 800C5F6C AF48012C */  sw         $t0, 0x12c($k0)
/* 30B70 800C5F70 F7400130 */  sdc1       $f0, 0x130($k0)
/* 30B74 800C5F74 F7420138 */  sdc1       $f2, 0x138($k0)
/* 30B78 800C5F78 F7440140 */  sdc1       $f4, 0x140($k0)
/* 30B7C 800C5F7C F7460148 */  sdc1       $f6, 0x148($k0)
/* 30B80 800C5F80 F7480150 */  sdc1       $f8, 0x150($k0)
/* 30B84 800C5F84 F74A0158 */  sdc1       $f10, 0x158($k0)
/* 30B88 800C5F88 F74C0160 */  sdc1       $f12, 0x160($k0)
/* 30B8C 800C5F8C F74E0168 */  sdc1       $f14, 0x168($k0)
/* 30B90 800C5F90 F7500170 */  sdc1       $f16, 0x170($k0)
/* 30B94 800C5F94 F7520178 */  sdc1       $f18, 0x178($k0)
/* 30B98 800C5F98 F7540180 */  sdc1       $f20, 0x180($k0)
/* 30B9C 800C5F9C F7560188 */  sdc1       $f22, 0x188($k0)
/* 30BA0 800C5FA0 F7580190 */  sdc1       $f24, 0x190($k0)
/* 30BA4 800C5FA4 F75A0198 */  sdc1       $f26, 0x198($k0)
/* 30BA8 800C5FA8 F75C01A0 */  sdc1       $f28, 0x1a0($k0)
/* 30BAC 800C5FAC F75E01A8 */  sdc1       $f30, 0x1a8($k0)
.L800C5FB0:
/* 30BB0 800C5FB0 40086800 */  mfc0       $t0, $13
/* 30BB4 800C5FB4 AF480120 */  sw         $t0, 0x120($k0)
/* 30BB8 800C5FB8 24090002 */  addiu      $t1, $zero, 2
/* 30BBC 800C5FBC A7490010 */  sh         $t1, 0x10($k0)
/* 30BC0 800C5FC0 3109007C */  andi       $t1, $t0, 0x7c
/* 30BC4 800C5FC4 240A0024 */  addiu      $t2, $zero, 0x24
/* 30BC8 800C5FC8 112A00BF */  beq        $t1, $t2, .L800C62C8
/* 30BCC 800C5FCC 00000000 */   nop
/* 30BD0 800C5FD0 240A002C */  addiu      $t2, $zero, 0x2c
/* 30BD4 800C5FD4 112A0110 */  beq        $t1, $t2, .L800C6418
/* 30BD8 800C5FD8 00000000 */   nop
/* 30BDC 800C5FDC 240A0000 */  addiu      $t2, $zero, 0
/* 30BE0 800C5FE0 152A00D2 */  bne        $t1, $t2, .L800C632C
/* 30BE4 800C5FE4 00000000 */   nop
/* 30BE8 800C5FE8 03688024 */  and        $s0, $k1, $t0
.L800C5FEC:
/* 30BEC 800C5FEC 3209FF00 */  andi       $t1, $s0, 0xff00
/* 30BF0 800C5FF0 00095302 */  srl        $t2, $t1, 0xc
/* 30BF4 800C5FF4 15400003 */  bnez       $t2, .L800C6004
/* 30BF8 800C5FF8 00000000 */   nop
/* 30BFC 800C5FFC 00095202 */  srl        $t2, $t1, 8
/* 30C00 800C6000 214A0010 */  addi       $t2, $t2, 0x10
.L800C6004:
/* 30C04 800C6004 3C018010 */  lui        $at, %hi(D_800FF030)
/* 30C08 800C6008 002A0821 */  addu       $at, $at, $t2
/* 30C0C 800C600C 902AF030 */  lbu        $t2, %lo(D_800FF030)($at)
/* 30C10 800C6010 3C018010 */  lui        $at, %hi(D_800FF050)
/* 30C14 800C6014 002A0821 */  addu       $at, $at, $t2
/* 30C18 800C6018 8C2AF050 */  lw         $t2, %lo(D_800FF050)($at)
/* 30C1C 800C601C 01400008 */  jr         $t2
/* 30C20 800C6020 00000000 */   nop
/* 30C24 800C6024 2401DFFF */  addiu      $at, $zero, -0x2001
/* 30C28 800C6028 1000FFF0 */  b          .L800C5FEC
/* 30C2C 800C602C 02018024 */   and       $s0, $s0, $at
/* 30C30 800C6030 2401BFFF */  addiu      $at, $zero, -0x4001
/* 30C34 800C6034 1000FFED */  b          .L800C5FEC
/* 30C38 800C6038 02018024 */   and       $s0, $s0, $at
/* 30C3C 800C603C 40095800 */  mfc0       $t1, $11
/* 30C40 800C6040 40895800 */  mtc0       $t1, $11
/* 30C44 800C6044 24040018 */  addiu      $a0, $zero, 0x18
/* 30C48 800C6048 0C0318D7 */  jal        func_800C635C
/* 30C4C 800C604C 00000000 */   nop
/* 30C50 800C6050 3C01FFFF */  lui        $at, 0xffff
/* 30C54 800C6054 34217FFF */  ori        $at, $at, 0x7fff
/* 30C58 800C6058 1000FFE4 */  b          .L800C5FEC
/* 30C5C 800C605C 02018024 */   and       $s0, $s0, $at
/* 30C60 800C6060 2401F7FF */  addiu      $at, $zero, -0x801
/* 30C64 800C6064 02018024 */  and        $s0, $s0, $at
/* 30C68 800C6068 3C09800F */  lui        $t1, %hi(D_800F7BC0)
/* 30C6C 800C606C 25297BC0 */  addiu      $t1, $t1, %lo(D_800F7BC0)
/* 30C70 800C6070 21290008 */  addi       $t1, $t1, 8
/* 30C74 800C6074 8D2A0000 */  lw         $t2, ($t1)
/* 30C78 800C6078 11400007 */  beqz       $t2, .L800C6098
/* 30C7C 800C607C 00000000 */   nop
/* 30C80 800C6080 0140F809 */  jalr       $t2
/* 30C84 800C6084 8D3D0004 */   lw        $sp, 4($t1)
/* 30C88 800C6088 10400003 */  beqz       $v0, .L800C6098
/* 30C8C 800C608C 00000000 */   nop
/* 30C90 800C6090 10000093 */  b          .L800C62E0
/* 30C94 800C6094 00000000 */   nop
.L800C6098:
/* 30C98 800C6098 0C0318D7 */  jal        func_800C635C
/* 30C9C 800C609C 24040010 */   addiu     $a0, $zero, 0x10
/* 30CA0 800C60A0 1000FFD2 */  b          .L800C5FEC
/* 30CA4 800C60A4 00000000 */   nop
/* 30CA8 800C60A8 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* 30CAC 800C60AC 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* 30CB0 800C60B0 3C08800F */  lui        $t0, %hi(D_800F7BB0)
/* 30CB4 800C60B4 25087BB0 */  addiu      $t0, $t0, %lo(D_800F7BB0)
/* 30CB8 800C60B8 8D080000 */  lw         $t0, ($t0)
/* 30CBC 800C60BC 00084402 */  srl        $t0, $t0, 0x10
/* 30CC0 800C60C0 02288824 */  and        $s1, $s1, $t0
/* 30CC4 800C60C4 32290001 */  andi       $t1, $s1, 1
/* 30CC8 800C60C8 11200014 */  beqz       $t1, .L800C611C
/* 30CCC 800C60CC 00000000 */   nop
/* 30CD0 800C60D0 3231003E */  andi       $s1, $s1, 0x3e
/* 30CD4 800C60D4 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* 30CD8 800C60D8 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* 30CDC 800C60DC 34098008 */  ori        $t1, $zero, 0x8008
/* 30CE0 800C60E0 3C01A404 */  lui        $at, %hi(D_A4040010)
/* 30CE4 800C60E4 AC290010 */  sw         $t1, %lo(D_A4040010)($at)
/* 30CE8 800C60E8 318C0300 */  andi       $t4, $t4, 0x300
/* 30CEC 800C60EC 11800007 */  beqz       $t4, .L800C610C
/* 30CF0 800C60F0 00000000 */   nop
/* 30CF4 800C60F4 0C0318D7 */  jal        func_800C635C
/* 30CF8 800C60F8 24040020 */   addiu     $a0, $zero, 0x20
/* 30CFC 800C60FC 12200044 */  beqz       $s1, .L800C6210
/* 30D00 800C6100 00000000 */   nop
/* 30D04 800C6104 10000005 */  b          .L800C611C
/* 30D08 800C6108 00000000 */   nop
.L800C610C:
/* 30D0C 800C610C 0C0318D7 */  jal        func_800C635C
/* 30D10 800C6110 24040058 */   addiu     $a0, $zero, 0x58
/* 30D14 800C6114 1220003E */  beqz       $s1, .L800C6210
/* 30D18 800C6118 00000000 */   nop
.L800C611C:
/* 30D1C 800C611C 32290008 */  andi       $t1, $s1, 8
/* 30D20 800C6120 11200008 */  beqz       $t1, .L800C6144
/* 30D24 800C6124 00000000 */   nop
/* 30D28 800C6128 32310037 */  andi       $s1, $s1, 0x37
/* 30D2C 800C612C 3C01A440 */  lui        $at, %hi(D_A4400010)
/* 30D30 800C6130 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* 30D34 800C6134 0C0318D7 */  jal        func_800C635C
/* 30D38 800C6138 24040038 */   addiu     $a0, $zero, 0x38
/* 30D3C 800C613C 12200034 */  beqz       $s1, .L800C6210
/* 30D40 800C6140 00000000 */   nop
.L800C6144:
/* 30D44 800C6144 32290004 */  andi       $t1, $s1, 4
/* 30D48 800C6148 11200009 */  beqz       $t1, .L800C6170
/* 30D4C 800C614C 00000000 */   nop
/* 30D50 800C6150 3231003B */  andi       $s1, $s1, 0x3b
/* 30D54 800C6154 24090001 */  addiu      $t1, $zero, 1
/* 30D58 800C6158 3C01A450 */  lui        $at, %hi(D_A450000C)
/* 30D5C 800C615C AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* 30D60 800C6160 0C0318D7 */  jal        func_800C635C
/* 30D64 800C6164 24040030 */   addiu     $a0, $zero, 0x30
/* 30D68 800C6168 12200029 */  beqz       $s1, .L800C6210
/* 30D6C 800C616C 00000000 */   nop
.L800C6170:
/* 30D70 800C6170 32290002 */  andi       $t1, $s1, 2
/* 30D74 800C6174 11200008 */  beqz       $t1, .L800C6198
/* 30D78 800C6178 00000000 */   nop
/* 30D7C 800C617C 3231003D */  andi       $s1, $s1, 0x3d
/* 30D80 800C6180 3C01A480 */  lui        $at, %hi(D_A4800018)
/* 30D84 800C6184 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* 30D88 800C6188 0C0318D7 */  jal        func_800C635C
/* 30D8C 800C618C 24040028 */   addiu     $a0, $zero, 0x28
/* 30D90 800C6190 1220001F */  beqz       $s1, .L800C6210
/* 30D94 800C6194 00000000 */   nop
.L800C6198:
/* 30D98 800C6198 32290010 */  andi       $t1, $s1, 0x10
/* 30D9C 800C619C 11200013 */  beqz       $t1, .L800C61EC
/* 30DA0 800C61A0 00000000 */   nop
/* 30DA4 800C61A4 3231002F */  andi       $s1, $s1, 0x2f
/* 30DA8 800C61A8 24090002 */  addiu      $t1, $zero, 2
/* 30DAC 800C61AC 3C01A460 */  lui        $at, %hi(D_A4600010)
/* 30DB0 800C61B0 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* 30DB4 800C61B4 3C09800F */  lui        $t1, %hi(D_800F7BE8)
/* 30DB8 800C61B8 25297BE8 */  addiu      $t1, $t1, %lo(D_800F7BE8)
/* 30DBC 800C61BC 8D2A0000 */  lw         $t2, ($t1)
/* 30DC0 800C61C0 11400006 */  beqz       $t2, .L800C61DC
/* 30DC4 800C61C4 00000000 */   nop
/* 30DC8 800C61C8 8D3D0004 */  lw         $sp, 4($t1)
/* 30DCC 800C61CC 0140F809 */  jalr       $t2
/* 30DD0 800C61D0 00402021 */   addu      $a0, $v0, $zero
/* 30DD4 800C61D4 14400003 */  bnez       $v0, .L800C61E4
/* 30DD8 800C61D8 00000000 */   nop
.L800C61DC:
/* 30DDC 800C61DC 0C0318D7 */  jal        func_800C635C
/* 30DE0 800C61E0 24040040 */   addiu     $a0, $zero, 0x40
.L800C61E4:
/* 30DE4 800C61E4 1220000A */  beqz       $s1, .L800C6210
/* 30DE8 800C61E8 00000000 */   nop
.L800C61EC:
/* 30DEC 800C61EC 32290020 */  andi       $t1, $s1, 0x20
/* 30DF0 800C61F0 11200007 */  beqz       $t1, .L800C6210
/* 30DF4 800C61F4 00000000 */   nop
/* 30DF8 800C61F8 3231001F */  andi       $s1, $s1, 0x1f
/* 30DFC 800C61FC 24090800 */  addiu      $t1, $zero, 0x800
/* 30E00 800C6200 3C01A430 */  lui        $at, 0xa430
/* 30E04 800C6204 AC290000 */  sw         $t1, ($at)
/* 30E08 800C6208 0C0318D7 */  jal        func_800C635C
/* 30E0C 800C620C 24040048 */   addiu     $a0, $zero, 0x48
.L800C6210:
/* 30E10 800C6210 2401FBFF */  addiu      $at, $zero, -0x401
/* 30E14 800C6214 1000FF75 */  b          .L800C5FEC
/* 30E18 800C6218 02018024 */   and       $s0, $s0, $at
/* 30E1C 800C621C 8F5B0118 */  lw         $k1, 0x118($k0)
/* 30E20 800C6220 2401EFFF */  addiu      $at, $zero, -0x1001
/* 30E24 800C6224 0361D824 */  and        $k1, $k1, $at
/* 30E28 800C6228 AF5B0118 */  sw         $k1, 0x118($k0)
/* 30E2C 800C622C 3C09800F */  lui        $t1, %hi(D_800F7BAC)
/* 30E30 800C6230 25297BAC */  addiu      $t1, $t1, %lo(D_800F7BAC)
/* 30E34 800C6234 8D2A0000 */  lw         $t2, ($t1)
/* 30E38 800C6238 11400004 */  beqz       $t2, .L800C624C
/* 30E3C 800C623C 00000000 */   nop
/* 30E40 800C6240 2401EFFF */  addiu      $at, $zero, -0x1001
/* 30E44 800C6244 10000026 */  b          .L800C62E0
/* 30E48 800C6248 02018024 */   and       $s0, $s0, $at
.L800C624C:
/* 30E4C 800C624C 240A0001 */  addiu      $t2, $zero, 1
/* 30E50 800C6250 AD2A0000 */  sw         $t2, ($t1)
/* 30E54 800C6254 0C0318D7 */  jal        func_800C635C
/* 30E58 800C6258 24040070 */   addiu     $a0, $zero, 0x70
/* 30E5C 800C625C 2401EFFF */  addiu      $at, $zero, -0x1001
/* 30E60 800C6260 02018024 */  and        $s0, $s0, $at
/* 30E64 800C6264 3C0A800F */  lui        $t2, %hi(D_800F69B8)
/* 30E68 800C6268 8D4A69B8 */  lw         $t2, %lo(D_800F69B8)($t2)
/* 30E6C 800C626C 8D5B0118 */  lw         $k1, 0x118($t2)
/* 30E70 800C6270 2401EFFF */  addiu      $at, $zero, -0x1001
/* 30E74 800C6274 0361D824 */  and        $k1, $k1, $at
/* 30E78 800C6278 10000019 */  b          .L800C62E0
/* 30E7C 800C627C AD5B0118 */   sw        $k1, 0x118($t2)
/* 30E80 800C6280 2401FDFF */  addiu      $at, $zero, -0x201
/* 30E84 800C6284 01014024 */  and        $t0, $t0, $at
/* 30E88 800C6288 40886800 */  mtc0       $t0, $13
/* 30E8C 800C628C 24040008 */  addiu      $a0, $zero, 8
/* 30E90 800C6290 0C0318D7 */  jal        func_800C635C
/* 30E94 800C6294 00000000 */   nop
/* 30E98 800C6298 2401FDFF */  addiu      $at, $zero, -0x201
/* 30E9C 800C629C 1000FF53 */  b          .L800C5FEC
/* 30EA0 800C62A0 02018024 */   and       $s0, $s0, $at
/* 30EA4 800C62A4 2401FEFF */  addiu      $at, $zero, -0x101
/* 30EA8 800C62A8 01014024 */  and        $t0, $t0, $at
/* 30EAC 800C62AC 40886800 */  mtc0       $t0, $13
/* 30EB0 800C62B0 24040000 */  addiu      $a0, $zero, 0
/* 30EB4 800C62B4 0C0318D7 */  jal        func_800C635C
/* 30EB8 800C62B8 00000000 */   nop
/* 30EBC 800C62BC 2401FEFF */  addiu      $at, $zero, -0x101
/* 30EC0 800C62C0 1000FF4A */  b          .L800C5FEC
/* 30EC4 800C62C4 02018024 */   and       $s0, $s0, $at
.L800C62C8:
/* 30EC8 800C62C8 24090001 */  addiu      $t1, $zero, 1
/* 30ECC 800C62CC A7490012 */  sh         $t1, 0x12($k0)
/* 30ED0 800C62D0 0C0318D7 */  jal        func_800C635C
/* 30ED4 800C62D4 24040050 */   addiu     $a0, $zero, 0x50
/* 30ED8 800C62D8 10000001 */  b          .L800C62E0
/* 30EDC 800C62DC 00000000 */   nop
.L800C62E0:
/* 30EE0 800C62E0 8F490004 */  lw         $t1, 4($k0)
/* 30EE4 800C62E4 3C0A800F */  lui        $t2, %hi(D_800F69B8)
/* 30EE8 800C62E8 8D4A69B8 */  lw         $t2, %lo(D_800F69B8)($t2)
/* 30EEC 800C62EC 8D4B0004 */  lw         $t3, 4($t2)
/* 30EF0 800C62F0 012B082A */  slt        $at, $t1, $t3
/* 30EF4 800C62F4 10200007 */  beqz       $at, .L800C6314
/* 30EF8 800C62F8 00000000 */   nop
/* 30EFC 800C62FC 03402821 */  addu       $a1, $k0, $zero
/* 30F00 800C6300 3C04800F */  lui        $a0, %hi(D_800F69B8)
/* 30F04 800C6304 0C031955 */  jal        func_800C6554
/* 30F08 800C6308 248469B8 */   addiu     $a0, $a0, %lo(D_800F69B8)
/* 30F0C 800C630C 0803196B */  j          .L800C65AC
/* 30F10 800C6310 00000000 */   nop
.L800C6314:
/* 30F14 800C6314 3C09800F */  lui        $t1, %hi(D_800F69B8)
/* 30F18 800C6318 252969B8 */  addiu      $t1, $t1, %lo(D_800F69B8)
/* 30F1C 800C631C 8D2A0000 */  lw         $t2, ($t1)
/* 30F20 800C6320 AF4A0000 */  sw         $t2, ($k0)
/* 30F24 800C6324 0803196B */  j          .L800C65AC
/* 30F28 800C6328 AD3A0000 */   sw        $k0, ($t1)
.L800C632C:
/* 30F2C 800C632C 3C01800F */  lui        $at, %hi(D_800F69C4)
/* 30F30 800C6330 AC3A69C4 */  sw         $k0, %lo(D_800F69C4)($at)
/* 30F34 800C6334 24090001 */  addiu      $t1, $zero, 1
/* 30F38 800C6338 A7490010 */  sh         $t1, 0x10($k0)
/* 30F3C 800C633C 24090002 */  addiu      $t1, $zero, 2
/* 30F40 800C6340 A7490012 */  sh         $t1, 0x12($k0)
/* 30F44 800C6344 400A4000 */  mfc0       $t2, $8
/* 30F48 800C6348 AF4A0124 */  sw         $t2, 0x124($k0)
/* 30F4C 800C634C 0C0318D7 */  jal        func_800C635C
/* 30F50 800C6350 24040060 */   addiu     $a0, $zero, 0x60
/* 30F54 800C6354 0803196B */  j          .L800C65AC
/* 30F58 800C6358 00000000 */   nop
