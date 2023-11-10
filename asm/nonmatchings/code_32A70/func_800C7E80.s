glabel func_800C7E80
/* 32A80 800C7E80 27BDFB60 */  addiu      $sp, $sp, -0x4A0
/* 32A84 800C7E84 AFB1047C */  sw         $s1, 0x47C($sp)
/* 32A88 800C7E88 00808821 */  addu       $s1, $a0, $zero
/* 32A8C 800C7E8C AFBE0498 */  sw         $fp, 0x498($sp)
/* 32A90 800C7E90 0000F021 */  addu       $fp, $zero, $zero
/* 32A94 800C7E94 AFB60490 */  sw         $s6, 0x490($sp)
/* 32A98 800C7E98 241600FE */  addiu      $s6, $zero, 0xFE
/* 32A9C 800C7E9C AFBF049C */  sw         $ra, 0x49C($sp)
/* 32AA0 800C7EA0 AFB70494 */  sw         $s7, 0x494($sp)
/* 32AA4 800C7EA4 AFB5048C */  sw         $s5, 0x48C($sp)
/* 32AA8 800C7EA8 AFB40488 */  sw         $s4, 0x488($sp)
/* 32AAC 800C7EAC AFB30484 */  sw         $s3, 0x484($sp)
/* 32AB0 800C7EB0 AFB20480 */  sw         $s2, 0x480($sp)
/* 32AB4 800C7EB4 0C031325 */  jal        func_800C4C94
/* 32AB8 800C7EB8 AFB00478 */   sw        $s0, 0x478($sp)
/* 32ABC 800C7EBC 00408021 */  addu       $s0, $v0, $zero
/* 32AC0 800C7EC0 24020002 */  addiu      $v0, $zero, 0x2
/* 32AC4 800C7EC4 16020004 */  bne        $s0, $v0, .L800C7ED8
/* 32AC8 800C7EC8 00000000 */   nop
/* 32ACC 800C7ECC 0C0312B2 */  jal        func_800C4AC8
/* 32AD0 800C7ED0 02202021 */   addu      $a0, $s1, $zero
/* 32AD4 800C7ED4 00408021 */  addu       $s0, $v0, $zero
.L800C7ED8:
/* 32AD8 800C7ED8 12000003 */  beqz       $s0, .L800C7EE8
/* 32ADC 800C7EDC 02202021 */   addu      $a0, $s1, $zero
.L800C7EE0:
/* 32AE0 800C7EE0 080320AC */  j          .L800C82B0
/* 32AE4 800C7EE4 02001021 */   addu      $v0, $s0, $zero
.L800C7EE8:
/* 32AE8 800C7EE8 0C0320B8 */  jal        func_800C82E0
/* 32AEC 800C7EEC 27A50258 */   addiu     $a1, $sp, 0x258
/* 32AF0 800C7EF0 00408021 */  addu       $s0, $v0, $zero
/* 32AF4 800C7EF4 160000EE */  bnez       $s0, .L800C82B0
/* 32AF8 800C7EF8 00000000 */   nop
/* 32AFC 800C7EFC 8E220050 */  lw         $v0, 0x50($s1)
/* 32B00 800C7F00 0202102A */  slt        $v0, $s0, $v0
/* 32B04 800C7F04 1040006B */  beqz       $v0, .L800C80B4
/* 32B08 800C7F08 00009021 */   addu      $s2, $zero, $zero
/* 32B0C 800C7F0C 27B70018 */  addiu      $s7, $sp, 0x18
.L800C7F10:
/* 32B10 800C7F10 8E240004 */  lw         $a0, 0x4($s1)
/* 32B14 800C7F14 8E26005C */  lw         $a2, 0x5C($s1)
/* 32B18 800C7F18 8E250008 */  lw         $a1, 0x8($s1)
/* 32B1C 800C7F1C 27A70218 */  addiu      $a3, $sp, 0x218
/* 32B20 800C7F20 00D23021 */  addu       $a2, $a2, $s2
/* 32B24 800C7F24 0C031424 */  jal        func_800C5090
/* 32B28 800C7F28 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 32B2C 800C7F2C 00408021 */  addu       $s0, $v0, $zero
/* 32B30 800C7F30 160000DF */  bnez       $s0, .L800C82B0
/* 32B34 800C7F34 02001021 */   addu      $v0, $s0, $zero
/* 32B38 800C7F38 97A2021C */  lhu        $v0, 0x21C($sp)
/* 32B3C 800C7F3C 14400006 */  bnez       $v0, .L800C7F58
/* 32B40 800C7F40 00000000 */   nop
/* 32B44 800C7F44 8FA20218 */  lw         $v0, 0x218($sp)
/* 32B48 800C7F48 10400055 */  beqz       $v0, .L800C80A0
/* 32B4C 800C7F4C 2405FFFF */   addiu     $a1, $zero, -0x1
/* 32B50 800C7F50 0803200C */  j          .L800C8030
/* 32B54 800C7F54 00000000 */   nop
.L800C7F58:
/* 32B58 800C7F58 8FA20218 */  lw         $v0, 0x218($sp)
/* 32B5C 800C7F5C 14400003 */  bnez       $v0, .L800C7F6C
/* 32B60 800C7F60 00002821 */   addu      $a1, $zero, $zero
/* 32B64 800C7F64 0803200C */  j          .L800C8030
/* 32B68 800C7F68 2405FFFF */   addiu     $a1, $zero, -0x1
.L800C7F6C:
/* 32B6C 800C7F6C 97B4021E */  lhu        $s4, 0x21E($sp)
/* 32B70 800C7F70 0000A821 */  addu       $s5, $zero, $zero
/* 32B74 800C7F74 8E220060 */  lw         $v0, 0x60($s1)
/* 32B78 800C7F78 08032004 */  j          .L800C8010
/* 32B7C 800C7F7C 241300FF */   addiu     $s3, $zero, 0xFF
.L800C7F80:
/* 32B80 800C7F80 0002182B */  sltu       $v1, $zero, $v0
/* 32B84 800C7F84 2C420080 */  sltiu      $v0, $v0, 0x80
/* 32B88 800C7F88 00621824 */  and        $v1, $v1, $v0
/* 32B8C 800C7F8C 10600028 */  beqz       $v1, .L800C8030
/* 32B90 800C7F90 00041A02 */   srl       $v1, $a0, 8
/* 32B94 800C7F94 326200FF */  andi       $v0, $s3, 0xFF
/* 32B98 800C7F98 306700FF */  andi       $a3, $v1, 0xFF
/* 32B9C 800C7F9C 1047000F */  beq        $v0, $a3, .L800C7FDC
/* 32BA0 800C7FA0 32C200FF */   andi      $v0, $s6, 0xFF
/* 32BA4 800C7FA4 10470007 */  beq        $v0, $a3, .L800C7FC4
/* 32BA8 800C7FA8 00609821 */   addu      $s3, $v1, $zero
/* 32BAC 800C7FAC 02202021 */  addu       $a0, $s1, $zero
/* 32BB0 800C7FB0 27A50118 */  addiu      $a1, $sp, 0x118
/* 32BB4 800C7FB4 0C031353 */  jal        func_800C4D4C
/* 32BB8 800C7FB8 00003021 */   addu      $a2, $zero, $zero
/* 32BBC 800C7FBC 00408021 */  addu       $s0, $v0, $zero
/* 32BC0 800C7FC0 0260B021 */  addu       $s6, $s3, $zero
.L800C7FC4:
/* 32BC4 800C7FC4 0010182B */  sltu       $v1, $zero, $s0
/* 32BC8 800C7FC8 3A020003 */  xori       $v0, $s0, 0x3
/* 32BCC 800C7FCC 0002102B */  sltu       $v0, $zero, $v0
/* 32BD0 800C7FD0 00621824 */  and        $v1, $v1, $v0
/* 32BD4 800C7FD4 146000B6 */  bnez       $v1, .L800C82B0
/* 32BD8 800C7FD8 02001021 */   addu      $v0, $s0, $zero
.L800C7FDC:
/* 32BDC 800C7FDC 02202021 */  addu       $a0, $s1, $zero
/* 32BE0 800C7FE0 02802821 */  addu       $a1, $s4, $zero
/* 32BE4 800C7FE4 27A60258 */  addiu      $a2, $sp, 0x258
/* 32BE8 800C7FE8 0C03210E */  jal        func_800C8438
/* 32BEC 800C7FEC 00052C00 */   sll       $a1, $a1, 16
/* 32BF0 800C7FF0 00552823 */  subu       $a1, $v0, $s5
/* 32BF4 800C7FF4 14A00014 */  bnez       $a1, .L800C8048
/* 32BF8 800C7FF8 328200FF */   andi      $v0, $s4, 0xFF
/* 32BFC 800C7FFC 00021040 */  sll        $v0, $v0, 1
/* 32C00 800C8000 00571021 */  addu       $v0, $v0, $s7
/* 32C04 800C8004 94540100 */  lhu        $s4, 0x100($v0)
/* 32C08 800C8008 8E220060 */  lw         $v0, 0x60($s1)
/* 32C0C 800C800C 24150001 */  addiu      $s5, $zero, 0x1
.L800C8010:
/* 32C10 800C8010 3284FFFF */  andi       $a0, $s4, 0xFFFF
/* 32C14 800C8014 0082102A */  slt        $v0, $a0, $v0
/* 32C18 800C8018 14400005 */  bnez       $v0, .L800C8030
/* 32C1C 800C801C 00041202 */   srl       $v0, $a0, 8
/* 32C20 800C8020 92230064 */  lbu        $v1, 0x64($s1)
/* 32C24 800C8024 0043102B */  sltu       $v0, $v0, $v1
/* 32C28 800C8028 1440FFD5 */  bnez       $v0, .L800C7F80
/* 32C2C 800C802C 328200FF */   andi      $v0, $s4, 0xFF
.L800C8030:
/* 32C30 800C8030 54A00006 */  bnel       $a1, $zero, .L800C804C
/* 32C34 800C8034 27A40218 */   addiu     $a0, $sp, 0x218
/* 32C38 800C8038 3283FFFF */  andi       $v1, $s4, 0xFFFF
/* 32C3C 800C803C 24020001 */  addiu      $v0, $zero, 0x1
/* 32C40 800C8040 10620017 */  beq        $v1, $v0, .L800C80A0
/* 32C44 800C8044 00000000 */   nop
.L800C8048:
/* 32C48 800C8048 27A40218 */  addiu      $a0, $sp, 0x218
.L800C804C:
/* 32C4C 800C804C 0C030134 */  jal        bzero
/* 32C50 800C8050 24050020 */   addiu     $a1, $zero, 0x20
/* 32C54 800C8054 92220065 */  lbu        $v0, 0x65($s1)
/* 32C58 800C8058 10400006 */  beqz       $v0, .L800C8074
/* 32C5C 800C805C 02202021 */   addu      $a0, $s1, $zero
/* 32C60 800C8060 0C031164 */  jal        func_800C4590
/* 32C64 800C8064 00002821 */   addu      $a1, $zero, $zero
/* 32C68 800C8068 00408021 */  addu       $s0, $v0, $zero
/* 32C6C 800C806C 16000090 */  bnez       $s0, .L800C82B0
/* 32C70 800C8070 02001021 */   addu      $v0, $s0, $zero
.L800C8074:
/* 32C74 800C8074 8E26005C */  lw         $a2, 0x5C($s1)
/* 32C78 800C8078 AFA00010 */  sw         $zero, 0x10($sp)
/* 32C7C 800C807C 8E240004 */  lw         $a0, 0x4($s1)
/* 32C80 800C8080 8E250008 */  lw         $a1, 0x8($s1)
/* 32C84 800C8084 27A70218 */  addiu      $a3, $sp, 0x218
/* 32C88 800C8088 00D23021 */  addu       $a2, $a2, $s2
/* 32C8C 800C808C 0C0314A0 */  jal        func_800C5280
/* 32C90 800C8090 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 32C94 800C8094 00408021 */  addu       $s0, $v0, $zero
/* 32C98 800C8098 1600FF91 */  bnez       $s0, .L800C7EE0
/* 32C9C 800C809C 27DE0001 */   addiu     $fp, $fp, 0x1
.L800C80A0:
/* 32CA0 800C80A0 8E220050 */  lw         $v0, 0x50($s1)
/* 32CA4 800C80A4 26520001 */  addiu      $s2, $s2, 0x1
/* 32CA8 800C80A8 0242102A */  slt        $v0, $s2, $v0
/* 32CAC 800C80AC 1440FF98 */  bnez       $v0, .L800C7F10
/* 32CB0 800C80B0 00000000 */   nop
.L800C80B4:
/* 32CB4 800C80B4 8E220050 */  lw         $v0, 0x50($s1)
/* 32CB8 800C80B8 1840001D */  blez       $v0, .L800C8130
/* 32CBC 800C80BC 00009021 */   addu      $s2, $zero, $zero
/* 32CC0 800C80C0 27B30238 */  addiu      $s3, $sp, 0x238
.L800C80C4:
/* 32CC4 800C80C4 8E240004 */  lw         $a0, 0x4($s1)
/* 32CC8 800C80C8 8E26005C */  lw         $a2, 0x5C($s1)
/* 32CCC 800C80CC 8E250008 */  lw         $a1, 0x8($s1)
/* 32CD0 800C80D0 27A70218 */  addiu      $a3, $sp, 0x218
/* 32CD4 800C80D4 00D23021 */  addu       $a2, $a2, $s2
/* 32CD8 800C80D8 0C031424 */  jal        func_800C5090
/* 32CDC 800C80DC 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 32CE0 800C80E0 00408021 */  addu       $s0, $v0, $zero
/* 32CE4 800C80E4 16000072 */  bnez       $s0, .L800C82B0
/* 32CE8 800C80E8 02001021 */   addu      $v0, $s0, $zero
/* 32CEC 800C80EC 97A2021C */  lhu        $v0, 0x21C($sp)
/* 32CF0 800C80F0 5040000A */  beql       $v0, $zero, .L800C811C
/* 32CF4 800C80F4 A6600000 */   sh        $zero, 0x0($s3)
/* 32CF8 800C80F8 8FA20218 */  lw         $v0, 0x218($sp)
/* 32CFC 800C80FC 50400007 */  beql       $v0, $zero, .L800C811C
/* 32D00 800C8100 A6600000 */   sh        $zero, 0x0($s3)
/* 32D04 800C8104 97A3021E */  lhu        $v1, 0x21E($sp)
/* 32D08 800C8108 96220062 */  lhu        $v0, 0x62($s1)
/* 32D0C 800C810C 0062102B */  sltu       $v0, $v1, $v0
/* 32D10 800C8110 54400002 */  bnel       $v0, $zero, .L800C811C
/* 32D14 800C8114 A6600000 */   sh        $zero, 0x0($s3)
/* 32D18 800C8118 A6630000 */  sh         $v1, 0x0($s3)
.L800C811C:
/* 32D1C 800C811C 8E220050 */  lw         $v0, 0x50($s1)
/* 32D20 800C8120 26520001 */  addiu      $s2, $s2, 0x1
/* 32D24 800C8124 0242102A */  slt        $v0, $s2, $v0
/* 32D28 800C8128 1440FFE6 */  bnez       $v0, .L800C80C4
/* 32D2C 800C812C 26730002 */   addiu     $s3, $s3, 0x2
.L800C8130:
/* 32D30 800C8130 92220064 */  lbu        $v0, 0x64($s1)
/* 32D34 800C8134 10400055 */  beqz       $v0, .L800C828C
/* 32D38 800C8138 00009821 */   addu      $s3, $zero, $zero
/* 32D3C 800C813C 27B40018 */  addiu      $s4, $sp, 0x18
/* 32D40 800C8140 27B60118 */  addiu      $s6, $sp, 0x118
/* 32D44 800C8144 27B50238 */  addiu      $s5, $sp, 0x238
/* 32D48 800C8148 02202021 */  addu       $a0, $s1, $zero
.L800C814C:
/* 32D4C 800C814C 27A50118 */  addiu      $a1, $sp, 0x118
/* 32D50 800C8150 00003021 */  addu       $a2, $zero, $zero
/* 32D54 800C8154 327200FF */  andi       $s2, $s3, 0xFF
/* 32D58 800C8158 0C031353 */  jal        func_800C4D4C
/* 32D5C 800C815C 02403821 */   addu      $a3, $s2, $zero
/* 32D60 800C8160 00408021 */  addu       $s0, $v0, $zero
/* 32D64 800C8164 0010182B */  sltu       $v1, $zero, $s0
/* 32D68 800C8168 3A020003 */  xori       $v0, $s0, 0x3
/* 32D6C 800C816C 0002102B */  sltu       $v0, $zero, $v0
/* 32D70 800C8170 00621824 */  and        $v1, $v1, $v0
/* 32D74 800C8174 5460004E */  bnel       $v1, $zero, .L800C82B0
/* 32D78 800C8178 02001021 */   addu      $v0, $s0, $zero
/* 32D7C 800C817C 16400002 */  bnez       $s2, .L800C8188
/* 32D80 800C8180 24050001 */   addiu     $a1, $zero, 0x1
/* 32D84 800C8184 8E250060 */  lw         $a1, 0x60($s1)
.L800C8188:
/* 32D88 800C8188 18A0000A */  blez       $a1, .L800C81B4
/* 32D8C 800C818C 00009021 */   addu      $s2, $zero, $zero
/* 32D90 800C8190 02802021 */  addu       $a0, $s4, $zero
/* 32D94 800C8194 02C01821 */  addu       $v1, $s6, $zero
.L800C8198:
/* 32D98 800C8198 94620000 */  lhu        $v0, 0x0($v1)
/* 32D9C 800C819C 24630002 */  addiu      $v1, $v1, 0x2
/* 32DA0 800C81A0 26520001 */  addiu      $s2, $s2, 0x1
/* 32DA4 800C81A4 A4820000 */  sh         $v0, 0x0($a0)
/* 32DA8 800C81A8 0245102A */  slt        $v0, $s2, $a1
/* 32DAC 800C81AC 1440FFFA */  bnez       $v0, .L800C8198
/* 32DB0 800C81B0 24840002 */   addiu     $a0, $a0, 0x2
.L800C81B4:
/* 32DB4 800C81B4 2A420080 */  slti       $v0, $s2, 0x80
/* 32DB8 800C81B8 10400008 */  beqz       $v0, .L800C81DC
/* 32DBC 800C81BC 00121040 */   sll       $v0, $s2, 1
/* 32DC0 800C81C0 24040003 */  addiu      $a0, $zero, 0x3
/* 32DC4 800C81C4 00541821 */  addu       $v1, $v0, $s4
.L800C81C8:
/* 32DC8 800C81C8 A4640000 */  sh         $a0, 0x0($v1)
/* 32DCC 800C81CC 26520001 */  addiu      $s2, $s2, 0x1
/* 32DD0 800C81D0 2A420080 */  slti       $v0, $s2, 0x80
/* 32DD4 800C81D4 1440FFFC */  bnez       $v0, .L800C81C8
/* 32DD8 800C81D8 24630002 */   addiu     $v1, $v1, 0x2
.L800C81DC:
/* 32DDC 800C81DC 8E220050 */  lw         $v0, 0x50($s1)
/* 32DE0 800C81E0 1840001D */  blez       $v0, .L800C8258
/* 32DE4 800C81E4 00009021 */   addu      $s2, $zero, $zero
/* 32DE8 800C81E8 326800FF */  andi       $t0, $s3, 0xFF
/* 32DEC 800C81EC 00003021 */  addu       $a2, $zero, $zero
/* 32DF0 800C81F0 02A03821 */  addu       $a3, $s5, $zero
.L800C81F4:
/* 32DF4 800C81F4 90E20000 */  lbu        $v0, 0x0($a3)
/* 32DF8 800C81F8 14480011 */  bne        $v0, $t0, .L800C8240
/* 32DFC 800C81FC 02A02821 */   addu      $a1, $s5, $zero
.L800C8200:
/* 32E00 800C8200 00A62021 */  addu       $a0, $a1, $a2
/* 32E04 800C8204 94830000 */  lhu        $v1, 0x0($a0)
/* 32E08 800C8208 96220062 */  lhu        $v0, 0x62($s1)
/* 32E0C 800C820C 0062182B */  sltu       $v1, $v1, $v0
/* 32E10 800C8210 5460000C */  bnel       $v1, $zero, .L800C8244
/* 32E14 800C8214 24C60002 */   addiu     $a2, $a2, 0x2
/* 32E18 800C8218 90820001 */  lbu        $v0, 0x1($a0)
/* 32E1C 800C821C 00021040 */  sll        $v0, $v0, 1
/* 32E20 800C8220 00541021 */  addu       $v0, $v0, $s4
/* 32E24 800C8224 94430100 */  lhu        $v1, 0x100($v0)
/* 32E28 800C8228 A4430000 */  sh         $v1, 0x0($v0)
/* 32E2C 800C822C 00D41021 */  addu       $v0, $a2, $s4
/* 32E30 800C8230 A4430220 */  sh         $v1, 0x220($v0)
/* 32E34 800C8234 90820000 */  lbu        $v0, 0x0($a0)
/* 32E38 800C8238 1048FFF1 */  beq        $v0, $t0, .L800C8200
/* 32E3C 800C823C 00000000 */   nop
.L800C8240:
/* 32E40 800C8240 24C60002 */  addiu      $a2, $a2, 0x2
.L800C8244:
/* 32E44 800C8244 8E220050 */  lw         $v0, 0x50($s1)
/* 32E48 800C8248 26520001 */  addiu      $s2, $s2, 0x1
/* 32E4C 800C824C 0242102A */  slt        $v0, $s2, $v0
/* 32E50 800C8250 1440FFE8 */  bnez       $v0, .L800C81F4
/* 32E54 800C8254 24E70002 */   addiu     $a3, $a3, 0x2
.L800C8258:
/* 32E58 800C8258 02202021 */  addu       $a0, $s1, $zero
/* 32E5C 800C825C 27A50018 */  addiu      $a1, $sp, 0x18
/* 32E60 800C8260 24060001 */  addiu      $a2, $zero, 0x1
/* 32E64 800C8264 0C031353 */  jal        func_800C4D4C
/* 32E68 800C8268 326700FF */   andi      $a3, $s3, 0xFF
/* 32E6C 800C826C 00408021 */  addu       $s0, $v0, $zero
/* 32E70 800C8270 1600FF1B */  bnez       $s0, .L800C7EE0
/* 32E74 800C8274 26730001 */   addiu     $s3, $s3, 0x1
/* 32E78 800C8278 92230064 */  lbu        $v1, 0x64($s1)
/* 32E7C 800C827C 326200FF */  andi       $v0, $s3, 0xFF
/* 32E80 800C8280 0043102B */  sltu       $v0, $v0, $v1
/* 32E84 800C8284 1440FFB1 */  bnez       $v0, .L800C814C
/* 32E88 800C8288 02202021 */   addu      $a0, $s1, $zero
.L800C828C:
/* 32E8C 800C828C 13C00004 */  beqz       $fp, .L800C82A0
/* 32E90 800C8290 2403FFFD */   addiu     $v1, $zero, -0x3
/* 32E94 800C8294 8E220000 */  lw         $v0, 0x0($s1)
/* 32E98 800C8298 080320AA */  j          .L800C82A8
/* 32E9C 800C829C 34420002 */   ori       $v0, $v0, 0x2
.L800C82A0:
/* 32EA0 800C82A0 8E220000 */  lw         $v0, 0x0($s1)
/* 32EA4 800C82A4 00431024 */  and        $v0, $v0, $v1
.L800C82A8:
/* 32EA8 800C82A8 AE220000 */  sw         $v0, 0x0($s1)
/* 32EAC 800C82AC 00001021 */  addu       $v0, $zero, $zero
.L800C82B0:
/* 32EB0 800C82B0 8FBF049C */  lw         $ra, 0x49C($sp)
/* 32EB4 800C82B4 8FBE0498 */  lw         $fp, 0x498($sp)
/* 32EB8 800C82B8 8FB70494 */  lw         $s7, 0x494($sp)
/* 32EBC 800C82BC 8FB60490 */  lw         $s6, 0x490($sp)
/* 32EC0 800C82C0 8FB5048C */  lw         $s5, 0x48C($sp)
/* 32EC4 800C82C4 8FB40488 */  lw         $s4, 0x488($sp)
/* 32EC8 800C82C8 8FB30484 */  lw         $s3, 0x484($sp)
/* 32ECC 800C82CC 8FB20480 */  lw         $s2, 0x480($sp)
/* 32ED0 800C82D0 8FB1047C */  lw         $s1, 0x47C($sp)
/* 32ED4 800C82D4 8FB00478 */  lw         $s0, 0x478($sp)
/* 32ED8 800C82D8 03E00008 */  jr         $ra
/* 32EDC 800C82DC 27BD04A0 */   addiu     $sp, $sp, 0x4A0
.size func_800C7E80, . - func_800C7E80
