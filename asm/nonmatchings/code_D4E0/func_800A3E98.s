glabel func_800A3E98
/* EA98 800A3E98 27BDFF88 */  addiu      $sp, $sp, -0x78
/* EA9C 800A3E9C AFB00050 */  sw         $s0, 0x50($sp)
/* EAA0 800A3EA0 00808021 */  addu       $s0, $a0, $zero
/* EAA4 800A3EA4 AFB3005C */  sw         $s3, 0x5C($sp)
/* EAA8 800A3EA8 93B3008B */  lbu        $s3, 0x8B($sp)
/* EAAC 800A3EAC 00071600 */  sll        $v0, $a3, 24
/* EAB0 800A3EB0 00021E03 */  sra        $v1, $v0, 24
/* EAB4 800A3EB4 28620003 */  slti       $v0, $v1, 0x3
/* EAB8 800A3EB8 AFBF0074 */  sw         $ra, 0x74($sp)
/* EABC 800A3EBC AFBE0070 */  sw         $fp, 0x70($sp)
/* EAC0 800A3EC0 AFB7006C */  sw         $s7, 0x6C($sp)
/* EAC4 800A3EC4 AFB60068 */  sw         $s6, 0x68($sp)
/* EAC8 800A3EC8 AFB50064 */  sw         $s5, 0x64($sp)
/* EACC 800A3ECC AFB40060 */  sw         $s4, 0x60($sp)
/* EAD0 800A3ED0 AFB20058 */  sw         $s2, 0x58($sp)
/* EAD4 800A3ED4 AFB10054 */  sw         $s1, 0x54($sp)
/* EAD8 800A3ED8 AFA50014 */  sw         $a1, 0x14($sp)
/* EADC 800A3EDC 14400003 */  bnez       $v0, .L800A3EEC
/* EAE0 800A3EE0 AFA6001C */   sw        $a2, 0x1C($sp)
/* EAE4 800A3EE4 08028FBE */  j          .L800A3EF8
/* EAE8 800A3EE8 24160002 */   addiu     $s6, $zero, 0x2
.L800A3EEC:
/* EAEC 800A3EEC 00031027 */  nor        $v0, $zero, $v1
/* EAF0 800A3EF0 000217C3 */  sra        $v0, $v0, 31
/* EAF4 800A3EF4 00E2B024 */  and        $s6, $a3, $v0
.L800A3EF8:
/* EAF8 800A3EF8 96170000 */  lhu        $s7, 0x0($s0)
/* EAFC 800A3EFC 92120004 */  lbu        $s2, 0x4($s0)
/* EB00 800A3F00 02571004 */  sllv       $v0, $s7, $s2
/* EB04 800A3F04 00021FC2 */  srl        $v1, $v0, 31
/* EB08 800A3F08 00431021 */  addu       $v0, $v0, $v1
/* EB0C 800A3F0C 00021042 */  srl        $v0, $v0, 1
/* EB10 800A3F10 A7A2002E */  sh         $v0, 0x2E($sp)
/* EB14 800A3F14 97A3002E */  lhu        $v1, 0x2E($sp)
/* EB18 800A3F18 24020800 */  addiu      $v0, $zero, 0x800
/* EB1C 800A3F1C 0043001A */  div        $zero, $v0, $v1
/* EB20 800A3F20 14600002 */  bnez       $v1, .L800A3F2C
/* EB24 800A3F24 00000000 */   nop
/* EB28 800A3F28 0007000D */  break      7
.L800A3F2C:
/* EB2C 800A3F2C 2401FFFF */  addiu      $at, $zero, -0x1
/* EB30 800A3F30 14610004 */  bne        $v1, $at, .L800A3F44
/* EB34 800A3F34 3C018000 */   lui       $at, (0x80000000 >> 16)
/* EB38 800A3F38 14410002 */  bne        $v0, $at, .L800A3F44
/* EB3C 800A3F3C 00000000 */   nop
/* EB40 800A3F40 0006000D */  break      6
.L800A3F44:
/* EB44 800A3F44 00001012 */  mflo       $v0
/* EB48 800A3F48 00000000 */  nop
/* EB4C 800A3F4C 00000000 */  nop
/* EB50 800A3F50 96030002 */  lhu        $v1, 0x2($s0)
/* EB54 800A3F54 0040F021 */  addu       $fp, $v0, $zero
/* EB58 800A3F58 00161600 */  sll        $v0, $s6, 24
/* EB5C 800A3F5C 00021603 */  sra        $v0, $v0, 24
/* EB60 800A3F60 03C21023 */  subu       $v0, $fp, $v0
/* EB64 800A3F64 0062001A */  div        $zero, $v1, $v0
/* EB68 800A3F68 14400002 */  bnez       $v0, .L800A3F74
/* EB6C 800A3F6C 00000000 */   nop
/* EB70 800A3F70 0007000D */  break      7
.L800A3F74:
/* EB74 800A3F74 2401FFFF */  addiu      $at, $zero, -0x1
/* EB78 800A3F78 14410004 */  bne        $v0, $at, .L800A3F8C
/* EB7C 800A3F7C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* EB80 800A3F80 14610002 */  bne        $v1, $at, .L800A3F8C
/* EB84 800A3F84 00000000 */   nop
/* EB88 800A3F88 0006000D */  break      6
.L800A3F8C:
/* EB8C 800A3F8C 00001812 */  mflo       $v1
/* EB90 800A3F90 00000000 */  nop
/* EB94 800A3F94 00000000 */  nop
/* EB98 800A3F98 00001010 */  mfhi       $v0
/* EB9C 800A3F9C 00000000 */  nop
/* EBA0 800A3FA0 00000000 */  nop
/* EBA4 800A3FA4 0040A021 */  addu       $s4, $v0, $zero
/* EBA8 800A3FA8 16800002 */  bnez       $s4, .L800A3FB4
/* EBAC 800A3FAC 24710001 */   addiu     $s1, $v1, 0x1
/* EBB0 800A3FB0 00608821 */  addu       $s1, $v1, $zero
.L800A3FB4:
/* EBB4 800A3FB4 3243FFFF */  andi       $v1, $s2, 0xFFFF
/* EBB8 800A3FB8 24020001 */  addiu      $v0, $zero, 0x1
/* EBBC 800A3FBC 1062000B */  beq        $v1, $v0, .L800A3FEC
/* EBC0 800A3FC0 28620002 */   slti      $v0, $v1, 0x2
/* EBC4 800A3FC4 50400005 */  beql       $v0, $zero, .L800A3FDC
/* EBC8 800A3FC8 28620004 */   slti      $v0, $v1, 0x4
/* EBCC 800A3FCC 10600008 */  beqz       $v1, .L800A3FF0
/* EBD0 800A3FD0 24180002 */   addiu     $t8, $zero, 0x2
/* EBD4 800A3FD4 08028FFE */  j          .L800A3FF8
/* EBD8 800A3FD8 3222FFFF */   andi      $v0, $s1, 0xFFFF
.L800A3FDC:
/* EBDC 800A3FDC 10400006 */  beqz       $v0, .L800A3FF8
/* EBE0 800A3FE0 3222FFFF */   andi      $v0, $s1, 0xFFFF
/* EBE4 800A3FE4 08028FFE */  j          .L800A3FF8
/* EBE8 800A3FE8 A7A00026 */   sh        $zero, 0x26($sp)
.L800A3FEC:
/* EBEC 800A3FEC 24180002 */  addiu      $t8, $zero, 0x2
.L800A3FF0:
/* EBF0 800A3FF0 A7B80026 */  sh         $t8, 0x26($sp)
/* EBF4 800A3FF4 3222FFFF */  andi       $v0, $s1, 0xFFFF
.L800A3FF8:
/* EBF8 800A3FF8 00021840 */  sll        $v1, $v0, 1
/* EBFC 800A3FFC 00621821 */  addu       $v1, $v1, $v0
/* EC00 800A4000 00031900 */  sll        $v1, $v1, 4
/* EC04 800A4004 326500FF */  andi       $a1, $s3, 0xFF
/* EC08 800A4008 24020001 */  addiu      $v0, $zero, 0x1
/* EC0C 800A400C 10A20010 */  beq        $a1, $v0, .L800A4050
/* EC10 800A4010 24640060 */   addiu     $a0, $v1, 0x60
/* EC14 800A4014 28A20002 */  slti       $v0, $a1, 0x2
/* EC18 800A4018 50400005 */  beql       $v0, $zero, .L800A4030
/* EC1C 800A401C 24020002 */   addiu     $v0, $zero, 0x2
/* EC20 800A4020 10A00007 */  beqz       $a1, .L800A4040
/* EC24 800A4024 250C0030 */   addiu     $t4, $t0, 0x30
/* EC28 800A4028 0802901C */  j          .L800A4070
/* EC2C 800A402C 00000000 */   nop
.L800A4030:
/* EC30 800A4030 10A2000B */  beq        $a1, $v0, .L800A4060
/* EC34 800A4034 250C0030 */   addiu     $t4, $t0, 0x30
/* EC38 800A4038 0802901C */  j          .L800A4070
/* EC3C 800A403C 00000000 */   nop
.L800A4040:
/* EC40 800A4040 0C032663 */  jal        func_800C998C
/* EC44 800A4044 00000000 */   nop
/* EC48 800A4048 0802901B */  j          .L800A406C
/* EC4C 800A404C 00404021 */   addu      $t0, $v0, $zero
.L800A4050:
/* EC50 800A4050 0C025E63 */  jal        func_8009798C
/* EC54 800A4054 00000000 */   nop
/* EC58 800A4058 0802901B */  j          .L800A406C
/* EC5C 800A405C 00404021 */   addu      $t0, $v0, $zero
.L800A4060:
/* EC60 800A4060 0C026127 */  jal        func_8009849C
/* EC64 800A4064 00000000 */   nop
/* EC68 800A4068 00404021 */  addu       $t0, $v0, $zero
.L800A406C:
/* EC6C 800A406C 250C0030 */  addiu      $t4, $t0, 0x30
.L800A4070:
/* EC70 800A4070 3223FFFF */  andi       $v1, $s1, 0xFFFF
/* EC74 800A4074 00031040 */  sll        $v0, $v1, 1
/* EC78 800A4078 00431021 */  addu       $v0, $v0, $v1
/* EC7C 800A407C 00021100 */  sll        $v0, $v0, 4
/* EC80 800A4080 01826821 */  addu       $t5, $t4, $v0
/* EC84 800A4084 25AF0018 */  addiu      $t7, $t5, 0x18
/* EC88 800A4088 AD0C0000 */  sw         $t4, 0x0($t0)
/* EC8C 800A408C AD0D0004 */  sw         $t5, 0x4($t0)
/* EC90 800A4090 AD0F0008 */  sw         $t7, 0x8($t0)
/* EC94 800A4094 AD10000C */  sw         $s0, 0xC($t0)
/* EC98 800A4098 8FB80014 */  lw         $t8, 0x14($sp)
/* EC9C 800A409C AD180010 */  sw         $t8, 0x10($t0)
/* ECA0 800A40A0 8FB8001C */  lw         $t8, 0x1C($sp)
/* ECA4 800A40A4 240200FF */  addiu      $v0, $zero, 0xFF
/* ECA8 800A40A8 A1020018 */  sb         $v0, 0x18($t0)
/* ECAC 800A40AC A1020019 */  sb         $v0, 0x19($t0)
/* ECB0 800A40B0 A102001A */  sb         $v0, 0x1A($t0)
/* ECB4 800A40B4 A102001B */  sb         $v0, 0x1B($t0)
/* ECB8 800A40B8 2402000A */  addiu      $v0, $zero, 0xA
/* ECBC 800A40BC A502001C */  sh         $v0, 0x1C($t0)
/* ECC0 800A40C0 00161600 */  sll        $v0, $s6, 24
/* ECC4 800A40C4 00021E03 */  sra        $v1, $v0, 24
/* ECC8 800A40C8 24020001 */  addiu      $v0, $zero, 0x1
/* ECCC 800A40CC A1110021 */  sb         $s1, 0x21($t0)
/* ECD0 800A40D0 A1130022 */  sb         $s3, 0x22($t0)
/* ECD4 800A40D4 1062000F */  beq        $v1, $v0, .L800A4114
/* ECD8 800A40D8 AD180014 */   sw        $t8, 0x14($t0)
/* ECDC 800A40DC 28620002 */  slti       $v0, $v1, 0x2
/* ECE0 800A40E0 50400005 */  beql       $v0, $zero, .L800A40F8
/* ECE4 800A40E4 24020002 */   addiu     $v0, $zero, 0x2
/* ECE8 800A40E8 10600007 */  beqz       $v1, .L800A4108
/* ECEC 800A40EC 24020002 */   addiu     $v0, $zero, 0x2
/* ECF0 800A40F0 0802904F */  j          .L800A413C
/* ECF4 800A40F4 00002821 */   addu      $a1, $zero, $zero
.L800A40F8:
/* ECF8 800A40F8 1062000C */  beq        $v1, $v0, .L800A412C
/* ECFC 800A40FC 24020004 */   addiu     $v0, $zero, 0x4
/* ED00 800A4100 0802904F */  j          .L800A413C
/* ED04 800A4104 00002821 */   addu      $a1, $zero, $zero
.L800A4108:
/* ED08 800A4108 A1020020 */  sb         $v0, 0x20($t0)
/* ED0C 800A410C 0802904E */  j          .L800A4138
/* ED10 800A4110 A500001E */   sh        $zero, 0x1E($t0)
.L800A4114:
/* ED14 800A4114 24020003 */  addiu      $v0, $zero, 0x3
/* ED18 800A4118 A1020020 */  sb         $v0, 0x20($t0)
/* ED1C 800A411C 0802904D */  j          .L800A4134
/* ED20 800A4120 2402000C */   addiu     $v0, $zero, 0xC
.L800A4124:
/* ED24 800A4124 08029073 */  j          .L800A41CC
/* ED28 800A4128 240B1033 */   addiu     $t3, $zero, 0x1033
.L800A412C:
/* ED2C 800A412C A1020020 */  sb         $v0, 0x20($t0)
/* ED30 800A4130 24020014 */  addiu      $v0, $zero, 0x14
.L800A4134:
/* ED34 800A4134 A502001E */  sh         $v0, 0x1E($t0)
.L800A4138:
/* ED38 800A4138 00002821 */  addu       $a1, $zero, $zero
.L800A413C:
/* ED3C 800A413C 240B0001 */  addiu      $t3, $zero, 0x1
/* ED40 800A4140 02401821 */  addu       $v1, $s2, $zero
/* ED44 800A4144 28670002 */  slti       $a3, $v1, 0x2
/* ED48 800A4148 240A0002 */  addiu      $t2, $zero, 0x2
/* ED4C 800A414C 24090003 */  addiu      $t1, $zero, 0x3
/* ED50 800A4150 32E6FFFF */  andi       $a2, $s7, 0xFFFF
/* ED54 800A4154 3C04800D */  lui        $a0, %hi(D_800D3DC0)
/* ED58 800A4158 24843DC0 */  addiu      $a0, $a0, %lo(D_800D3DC0)
.L800A415C:
/* ED5C 800A415C 94820000 */  lhu        $v0, 0x0($a0)
/* ED60 800A4160 506B000F */  beql       $v1, $t3, .L800A41A0
/* ED64 800A4164 3042FFFF */   andi      $v0, $v0, 0xFFFF
/* ED68 800A4168 10E00005 */  beqz       $a3, .L800A4180
/* ED6C 800A416C 00000000 */   nop
/* ED70 800A4170 10600009 */  beqz       $v1, .L800A4198
/* ED74 800A4174 3042FFFF */   andi      $v0, $v0, 0xFFFF
/* ED78 800A4178 0802906C */  j          .L800A41B0
/* ED7C 800A417C 00000000 */   nop
.L800A4180:
/* ED80 800A4180 106A000B */  beq        $v1, $t2, .L800A41B0
/* ED84 800A4184 3042FFFF */   andi      $v0, $v0, 0xFFFF
/* ED88 800A4188 10690007 */  beq        $v1, $t1, .L800A41A8
/* ED8C 800A418C 00000000 */   nop
/* ED90 800A4190 0802906C */  j          .L800A41B0
/* ED94 800A4194 00000000 */   nop
.L800A4198:
/* ED98 800A4198 0802906B */  j          .L800A41AC
/* ED9C 800A419C 00021080 */   sll       $v0, $v0, 2
.L800A41A0:
/* EDA0 800A41A0 0802906B */  j          .L800A41AC
/* EDA4 800A41A4 00021040 */   sll       $v0, $v0, 1
.L800A41A8:
/* EDA8 800A41A8 00021042 */  srl        $v0, $v0, 1
.L800A41AC:
/* EDAC 800A41AC 3042FFFF */  andi       $v0, $v0, 0xFFFF
.L800A41B0:
/* EDB0 800A41B0 10C2FFDC */  beq        $a2, $v0, .L800A4124
/* EDB4 800A41B4 24A50001 */   addiu     $a1, $a1, 0x1
/* EDB8 800A41B8 28A20020 */  slti       $v0, $a1, 0x20
/* EDBC 800A41BC 1440FFE7 */  bnez       $v0, .L800A415C
/* EDC0 800A41C0 24840002 */   addiu     $a0, $a0, 0x2
/* EDC4 800A41C4 3C0B00FC */  lui        $t3, (0xFC1034 >> 16)
/* EDC8 800A41C8 356B1034 */  ori        $t3, $t3, (0xFC1034 & 0xFFFF)
.L800A41CC:
/* EDCC 800A41CC 3224FFFF */  andi       $a0, $s1, 0xFFFF
/* EDD0 800A41D0 10800069 */  beqz       $a0, .L800A4378
/* EDD4 800A41D4 00004821 */   addu      $t1, $zero, $zero
/* EDD8 800A41D8 3293FFFF */  andi       $s3, $s4, 0xFFFF
/* EDDC 800A41DC 0013C02B */  sltu       $t8, $zero, $s3
/* EDE0 800A41E0 2415FFFF */  addiu      $s5, $zero, -0x1
/* EDE4 800A41E4 24020004 */  addiu      $v0, $zero, 0x4
/* EDE8 800A41E8 0052C823 */  subu       $t9, $v0, $s2
/* EDEC 800A41EC 32F0FFFF */  andi       $s0, $s7, 0xFFFF
/* EDF0 800A41F0 03305007 */  srav       $t2, $s0, $t9
/* EDF4 800A41F4 000A1080 */  sll        $v0, $t2, 2
/* EDF8 800A41F8 2442FFFF */  addiu      $v0, $v0, -0x1
/* EDFC 800A41FC 24140400 */  addiu      $s4, $zero, 0x400
/* EE00 800A4200 8FA50014 */  lw         $a1, 0x14($sp)
/* EE04 800A4204 97A3002E */  lhu        $v1, 0x2E($sp)
/* EE08 800A4208 00007021 */  addu       $t6, $zero, $zero
/* EE0C 800A420C 2586002F */  addiu      $a2, $t4, 0x2F
/* EE10 800A4210 AFA2003C */  sw         $v0, 0x3C($sp)
/* EE14 800A4214 00161600 */  sll        $v0, $s6, 24
/* EE18 800A4218 00021603 */  sra        $v0, $v0, 24
/* EE1C 800A421C 03C21023 */  subu       $v0, $fp, $v0
/* EE20 800A4220 AFB80034 */  sw         $t8, 0x34($sp)
/* EE24 800A4224 AFA2004C */  sw         $v0, 0x4C($sp)
/* EE28 800A4228 00620018 */  mult       $v1, $v0
/* EE2C 800A422C 0000B012 */  mflo       $s6
.L800A4230:
/* EE30 800A4230 00000000 */  nop
/* EE34 800A4234 00000000 */  nop
/* EE38 800A4238 2482FFFF */  addiu      $v0, $a0, -0x1
/* EE3C 800A423C 8FB80034 */  lw         $t8, 0x34($sp)
/* EE40 800A4240 01221026 */  xor        $v0, $t1, $v0
/* EE44 800A4244 2C420001 */  sltiu      $v0, $v0, 0x1
/* EE48 800A4248 00581024 */  and        $v0, $v0, $t8
/* EE4C 800A424C 14400002 */  bnez       $v0, .L800A4258
/* EE50 800A4250 02603821 */   addu      $a3, $s3, $zero
/* EE54 800A4254 33C7FFFF */  andi       $a3, $fp, 0xFFFF
.L800A4258:
/* EE58 800A4258 24181033 */  addiu      $t8, $zero, 0x1033
/* EE5C 800A425C 15780020 */  bne        $t3, $t8, .L800A42E0
/* EE60 800A4260 AD8B0000 */   sw        $t3, 0x0($t4)
/* EE64 800A4264 240307FF */  addiu      $v1, $zero, 0x7FF
/* EE68 800A4268 006A001A */  div        $zero, $v1, $t2
/* EE6C 800A426C 15400002 */  bnez       $t2, .L800A4278
/* EE70 800A4270 00000000 */   nop
/* EE74 800A4274 0007000D */  break      7
.L800A4278:
/* EE78 800A4278 2401FFFF */  addiu      $at, $zero, -0x1
/* EE7C 800A427C 15410004 */  bne        $t2, $at, .L800A4290
/* EE80 800A4280 3C018000 */   lui       $at, (0x80000000 >> 16)
/* EE84 800A4284 14610002 */  bne        $v1, $at, .L800A4290
/* EE88 800A4288 00000000 */   nop
/* EE8C 800A428C 0006000D */  break      6
.L800A4290:
/* EE90 800A4290 00001812 */  mflo       $v1
/* EE94 800A4294 00000000 */  nop
/* EE98 800A4298 00000000 */  nop
/* EE9C 800A429C 00000000 */  nop
/* EEA0 800A42A0 02070018 */  mult       $s0, $a3
/* EEA4 800A42A4 00001012 */  mflo       $v0
/* EEA8 800A42A8 00000000 */  nop
/* EEAC 800A42AC 00000000 */  nop
/* EEB0 800A42B0 ACC5FFD5 */  sw         $a1, -0x2B($a2)
/* EEB4 800A42B4 8CC4FFD5 */  lw         $a0, -0x2B($a2)
/* EEB8 800A42B8 A4C0FFD9 */  sh         $zero, -0x27($a2)
/* EEBC 800A42BC A4C0FFDF */  sh         $zero, -0x21($a2)
/* EEC0 800A42C0 ACD5FFE5 */  sw         $s5, -0x1B($a2)
/* EEC4 800A42C4 ACC4FFE1 */  sw         $a0, -0x1F($a2)
/* EEC8 800A42C8 03221007 */  srav       $v0, $v0, $t9
/* EECC 800A42CC 2442FFFF */  addiu      $v0, $v0, -0x1
/* EED0 800A42D0 A4C2FFDB */  sh         $v0, -0x25($a2)
/* EED4 800A42D4 24630001 */  addiu      $v1, $v1, 0x1
/* EED8 800A42D8 080290C3 */  j          .L800A430C
/* EEDC 800A42DC A4C3FFDD */   sh        $v1, -0x23($a2)
.L800A42E0:
/* EEE0 800A42E0 ACC5FFD5 */  sw         $a1, -0x2B($a2)
/* EEE4 800A42E4 A4C0FFD9 */  sh         $zero, -0x27($a2)
/* EEE8 800A42E8 97B8003E */  lhu        $t8, 0x3E($sp)
/* EEEC 800A42EC 8CC3FFD5 */  lw         $v1, -0x2B($a2)
/* EEF0 800A42F0 00071080 */  sll        $v0, $a3, 2
/* EEF4 800A42F4 2442FFFF */  addiu      $v0, $v0, -0x1
/* EEF8 800A42F8 A4C2FFDD */  sh         $v0, -0x23($a2)
/* EEFC 800A42FC A4C0FFDF */  sh         $zero, -0x21($a2)
/* EF00 800A4300 ACD5FFE5 */  sw         $s5, -0x1B($a2)
/* EF04 800A4304 A4D8FFDB */  sh         $t8, -0x25($a2)
/* EF08 800A4308 ACC3FFE1 */  sw         $v1, -0x1F($a2)
.L800A430C:
/* EF0C 800A430C 00171140 */  sll        $v0, $s7, 5
/* EF10 800A4310 A4C2FFED */  sh         $v0, -0x13($a2)
/* EF14 800A4314 000E1080 */  sll        $v0, $t6, 2
/* EF18 800A4318 A4C2FFF1 */  sh         $v0, -0xF($a2)
/* EF1C 800A431C 00071140 */  sll        $v0, $a3, 5
/* EF20 800A4320 A4C0FFE9 */  sh         $zero, -0x17($a2)
/* EF24 800A4324 A4D4FFEB */  sh         $s4, -0x15($a2)
/* EF28 800A4328 A4C0FFEF */  sh         $zero, -0x11($a2)
/* EF2C 800A432C A4D4FFF3 */  sh         $s4, -0xD($a2)
/* EF30 800A4330 A4C2FFF5 */  sh         $v0, -0xB($a2)
/* EF34 800A4334 A4C0FFF7 */  sh         $zero, -0x9($a2)
/* EF38 800A4338 A4CAFFF9 */  sh         $t2, -0x7($a2)
/* EF3C 800A433C A4C0FFFB */  sh         $zero, -0x5($a2)
/* EF40 800A4340 93B80027 */  lbu        $t8, 0x27($sp)
/* EF44 800A4344 258C0030 */  addiu      $t4, $t4, 0x30
/* EF48 800A4348 00B62821 */  addu       $a1, $a1, $s6
/* EF4C 800A434C 25290001 */  addiu      $t1, $t1, 0x1
/* EF50 800A4350 3224FFFF */  andi       $a0, $s1, 0xFFFF
/* EF54 800A4354 A0D2FFFE */  sb         $s2, -0x2($a2)
/* EF58 800A4358 A0C0FFFF */  sb         $zero, -0x1($a2)
/* EF5C 800A435C A0C00000 */  sb         $zero, 0x0($a2)
/* EF60 800A4360 A0D8FFFD */  sb         $t8, -0x3($a2)
/* EF64 800A4364 8FB8004C */  lw         $t8, 0x4C($sp)
/* EF68 800A4368 0124102A */  slt        $v0, $t1, $a0
/* EF6C 800A436C 24C60030 */  addiu      $a2, $a2, 0x30
/* EF70 800A4370 1440FFAF */  bnez       $v0, .L800A4230
/* EF74 800A4374 01D87021 */   addu      $t6, $t6, $t8
.L800A4378:
/* EF78 800A4378 24020030 */  addiu      $v0, $zero, 0x30
/* EF7C 800A437C ADA20000 */  sw         $v0, 0x0($t5)
/* EF80 800A4380 8FB8001C */  lw         $t8, 0x1C($sp)
/* EF84 800A4384 24020100 */  addiu      $v0, $zero, 0x100
/* EF88 800A4388 3243FFFF */  andi       $v1, $s2, 0xFFFF
/* EF8C 800A438C ADB80004 */  sw         $t8, 0x4($t5)
/* EF90 800A4390 10600006 */  beqz       $v1, .L800A43AC
/* EF94 800A4394 A5A20008 */   sh        $v0, 0x8($t5)
/* EF98 800A4398 24020001 */  addiu      $v0, $zero, 0x1
/* EF9C 800A439C 10620004 */  beq        $v1, $v0, .L800A43B0
/* EFA0 800A43A0 240200FF */   addiu     $v0, $zero, 0xFF
/* EFA4 800A43A4 080290ED */  j          .L800A43B4
/* EFA8 800A43A8 00000000 */   nop
.L800A43AC:
/* EFAC 800A43AC 2402000F */  addiu      $v0, $zero, 0xF
.L800A43B0:
/* EFB0 800A43B0 A5A2000A */  sh         $v0, 0xA($t5)
.L800A43B4:
/* EFB4 800A43B4 8DA40004 */  lw         $a0, 0x4($t5)
/* EFB8 800A43B8 01001021 */  addu       $v0, $t0, $zero
/* EFBC 800A43BC 2403FFFF */  addiu      $v1, $zero, -0x1
/* EFC0 800A43C0 ADA30014 */  sw         $v1, 0x14($t5)
/* EFC4 800A43C4 3C030001 */  lui        $v1, (0x10000 >> 16)
/* EFC8 800A43C8 A5A0000C */  sh         $zero, 0xC($t5)
/* EFCC 800A43CC A5A0000E */  sh         $zero, 0xE($t5)
/* EFD0 800A43D0 ADA40010 */  sw         $a0, 0x10($t5)
/* EFD4 800A43D4 ADE30000 */  sw         $v1, 0x0($t7)
/* EFD8 800A43D8 ADE3000C */  sw         $v1, 0xC($t7)
/* EFDC 800A43DC 24030400 */  addiu      $v1, $zero, 0x400
/* EFE0 800A43E0 ADE00004 */  sw         $zero, 0x4($t7)
/* EFE4 800A43E4 ADE00008 */  sw         $zero, 0x8($t7)
/* EFE8 800A43E8 A5E00010 */  sh         $zero, 0x10($t7)
/* EFEC 800A43EC A5E00012 */  sh         $zero, 0x12($t7)
/* EFF0 800A43F0 A5E30014 */  sh         $v1, 0x14($t7)
/* EFF4 800A43F4 A5E30016 */  sh         $v1, 0x16($t7)
/* EFF8 800A43F8 8FBF0074 */  lw         $ra, 0x74($sp)
/* EFFC 800A43FC 8FBE0070 */  lw         $fp, 0x70($sp)
/* F000 800A4400 8FB7006C */  lw         $s7, 0x6C($sp)
/* F004 800A4404 8FB60068 */  lw         $s6, 0x68($sp)
/* F008 800A4408 8FB50064 */  lw         $s5, 0x64($sp)
/* F00C 800A440C 8FB40060 */  lw         $s4, 0x60($sp)
/* F010 800A4410 8FB3005C */  lw         $s3, 0x5C($sp)
/* F014 800A4414 8FB20058 */  lw         $s2, 0x58($sp)
/* F018 800A4418 8FB10054 */  lw         $s1, 0x54($sp)
/* F01C 800A441C 8FB00050 */  lw         $s0, 0x50($sp)
/* F020 800A4420 27BD0078 */  addiu      $sp, $sp, 0x78
/* F024 800A4424 03E00008 */  jr         $ra
/* F028 800A4428 00000000 */   nop
.size func_800A3E98, . - func_800A3E98
