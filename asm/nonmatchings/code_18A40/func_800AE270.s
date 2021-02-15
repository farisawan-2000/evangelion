.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AE270
/* 18E70 800AE270 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 18E74 800AE274 AFB40028 */  sw         $s4, 0x28($sp)
/* 18E78 800AE278 0080A021 */  addu       $s4, $a0, $zero
/* 18E7C 800AE27C AFB5002C */  sw         $s5, 0x2c($sp)
/* 18E80 800AE280 00A0A821 */  addu       $s5, $a1, $zero
/* 18E84 800AE284 AFBF0030 */  sw         $ra, 0x30($sp)
/* 18E88 800AE288 AFB30024 */  sw         $s3, 0x24($sp)
/* 18E8C 800AE28C AFB20020 */  sw         $s2, 0x20($sp)
/* 18E90 800AE290 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18E94 800AE294 0C02C287 */  jal        func_800B0A1C
/* 18E98 800AE298 AFB00018 */   sw        $s0, 0x18($sp)
/* 18E9C 800AE29C 3C118010 */  lui        $s1, %hi(D_8010294C)
/* 18EA0 800AE2A0 8E31294C */  lw         $s1, %lo(D_8010294C)($s1)
/* 18EA4 800AE2A4 3C038010 */  lui        $v1, %hi(D_80102944)
/* 18EA8 800AE2A8 8C632944 */  lw         $v1, %lo(D_80102944)($v1)
/* 18EAC 800AE2AC 00009021 */  addu       $s2, $zero, $zero
/* 18EB0 800AE2B0 18600077 */  blez       $v1, .L800AE490
/* 18EB4 800AE2B4 00409821 */   addu      $s3, $v0, $zero
/* 18EB8 800AE2B8 26300034 */  addiu      $s0, $s1, 0x34
.L800AE2BC:
/* 18EBC 800AE2BC 8E020010 */  lw         $v0, 0x10($s0)
/* 18EC0 800AE2C0 5453006D */  bnel       $v0, $s3, .L800AE478
/* 18EC4 800AE2C4 26520001 */   addiu     $s2, $s2, 1
/* 18EC8 800AE2C8 8E020040 */  lw         $v0, 0x40($s0)
/* 18ECC 800AE2CC 5454006A */  bnel       $v0, $s4, .L800AE478
/* 18ED0 800AE2D0 26520001 */   addiu     $s2, $s2, 1
/* 18ED4 800AE2D4 8E02FFD0 */  lw         $v0, -0x30($s0)
/* 18ED8 800AE2D8 50400067 */  beql       $v0, $zero, .L800AE478
/* 18EDC 800AE2DC 26520001 */   addiu     $s2, $s2, 1
.L800AE2E0:
/* 18EE0 800AE2E0 8E05FFD0 */  lw         $a1, -0x30($s0)
/* 18EE4 800AE2E4 90A40000 */  lbu        $a0, ($a1)
/* 18EE8 800AE2E8 308300FF */  andi       $v1, $a0, 0xff
/* 18EEC 800AE2EC 2C620080 */  sltiu      $v0, $v1, 0x80
/* 18EF0 800AE2F0 14400010 */  bnez       $v0, .L800AE334
/* 18EF4 800AE2F4 24A20001 */   addiu     $v0, $a1, 1
/* 18EF8 800AE2F8 240200AB */  addiu      $v0, $zero, 0xab
/* 18EFC 800AE2FC 14620004 */  bne        $v1, $v0, .L800AE310
/* 18F00 800AE300 3082007F */   andi      $v0, $a0, 0x7f
/* 18F04 800AE304 90A20001 */  lbu        $v0, 1($a1)
/* 18F08 800AE308 1055003B */  beq        $v0, $s5, .L800AE3F8
/* 18F0C 800AE30C 3082007F */   andi      $v0, $a0, 0x7f
.L800AE310:
/* 18F10 800AE310 00021080 */  sll        $v0, $v0, 2
/* 18F14 800AE314 3C01800F */  lui        $at, %hi(D_800F1250)
/* 18F18 800AE318 00220821 */  addu       $at, $at, $v0
/* 18F1C 800AE31C 8C221250 */  lw         $v0, %lo(D_800F1250)($at)
/* 18F20 800AE320 02202021 */  addu       $a0, $s1, $zero
/* 18F24 800AE324 0040F809 */  jalr       $v0
/* 18F28 800AE328 24A50001 */   addiu     $a1, $a1, 1
/* 18F2C 800AE32C 0802B8FB */  j          .L800AE3EC
/* 18F30 800AE330 AE02FFD0 */   sw        $v0, -0x30($s0)
.L800AE334:
/* 18F34 800AE334 9203009E */  lbu        $v1, 0x9e($s0)
/* 18F38 800AE338 1060000E */  beqz       $v1, .L800AE374
/* 18F3C 800AE33C AE02FFD0 */   sw        $v0, -0x30($s0)
/* 18F40 800AE340 24A20002 */  addiu      $v0, $a1, 2
/* 18F44 800AE344 AE02FFD0 */  sw         $v0, -0x30($s0)
/* 18F48 800AE348 90A50001 */  lbu        $a1, 1($a1)
/* 18F4C 800AE34C 30A200FF */  andi       $v0, $a1, 0xff
/* 18F50 800AE350 2C420080 */  sltiu      $v0, $v0, 0x80
/* 18F54 800AE354 14400009 */  bnez       $v0, .L800AE37C
/* 18F58 800AE358 A2050087 */   sb        $a1, 0x87($s0)
/* 18F5C 800AE35C 30A2007F */  andi       $v0, $a1, 0x7f
/* 18F60 800AE360 A2020087 */  sb         $v0, 0x87($s0)
/* 18F64 800AE364 92020087 */  lbu        $v0, 0x87($s0)
/* 18F68 800AE368 A200009E */  sb         $zero, 0x9e($s0)
/* 18F6C 800AE36C 0802B8DF */  j          .L800AE37C
/* 18F70 800AE370 A202009F */   sb        $v0, 0x9f($s0)
.L800AE374:
/* 18F74 800AE374 9202009F */  lbu        $v0, 0x9f($s0)
/* 18F78 800AE378 A2020087 */  sb         $v0, 0x87($s0)
.L800AE37C:
/* 18F7C 800AE37C 96030078 */  lhu        $v1, 0x78($s0)
/* 18F80 800AE380 10600004 */  beqz       $v1, .L800AE394
/* 18F84 800AE384 00000000 */   nop
/* 18F88 800AE388 92020083 */  lbu        $v0, 0x83($s0)
/* 18F8C 800AE38C 50400012 */  beql       $v0, $zero, .L800AE3D8
/* 18F90 800AE390 A6030066 */   sh        $v1, 0x66($s0)
.L800AE394:
/* 18F94 800AE394 8E03FFD0 */  lw         $v1, -0x30($s0)
/* 18F98 800AE398 A2000083 */  sb         $zero, 0x83($s0)
/* 18F9C 800AE39C 24620001 */  addiu      $v0, $v1, 1
/* 18FA0 800AE3A0 AE02FFD0 */  sw         $v0, -0x30($s0)
/* 18FA4 800AE3A4 90640000 */  lbu        $a0, ($v1)
/* 18FA8 800AE3A8 308200FF */  andi       $v0, $a0, 0xff
/* 18FAC 800AE3AC 2C420080 */  sltiu      $v0, $v0, 0x80
/* 18FB0 800AE3B0 10400003 */  beqz       $v0, .L800AE3C0
/* 18FB4 800AE3B4 24620002 */   addiu     $v0, $v1, 2
/* 18FB8 800AE3B8 0802B8F6 */  j          .L800AE3D8
/* 18FBC 800AE3BC A6040066 */   sh        $a0, 0x66($s0)
.L800AE3C0:
/* 18FC0 800AE3C0 AE02FFD0 */  sw         $v0, -0x30($s0)
/* 18FC4 800AE3C4 90630001 */  lbu        $v1, 1($v1)
/* 18FC8 800AE3C8 3082007F */  andi       $v0, $a0, 0x7f
/* 18FCC 800AE3CC 00021200 */  sll        $v0, $v0, 8
/* 18FD0 800AE3D0 00621821 */  addu       $v1, $v1, $v0
/* 18FD4 800AE3D4 A6030066 */  sh         $v1, 0x66($s0)
.L800AE3D8:
/* 18FD8 800AE3D8 96020066 */  lhu        $v0, 0x66($s0)
/* 18FDC 800AE3DC 8E03FFD8 */  lw         $v1, -0x28($s0)
/* 18FE0 800AE3E0 00021200 */  sll        $v0, $v0, 8
/* 18FE4 800AE3E4 00621821 */  addu       $v1, $v1, $v0
/* 18FE8 800AE3E8 AE03FFD8 */  sw         $v1, -0x28($s0)
.L800AE3EC:
/* 18FEC 800AE3EC 8E02FFD0 */  lw         $v0, -0x30($s0)
/* 18FF0 800AE3F0 1440FFBB */  bnez       $v0, .L800AE2E0
/* 18FF4 800AE3F4 00000000 */   nop
.L800AE3F8:
/* 18FF8 800AE3F8 8E02FFD8 */  lw         $v0, -0x28($s0)
/* 18FFC 800AE3FC 8E03FFD0 */  lw         $v1, -0x30($s0)
/* 19000 800AE400 10600011 */  beqz       $v1, .L800AE448
/* 19004 800AE404 AE020008 */   sw        $v0, 8($s0)
/* 19008 800AE408 90640002 */  lbu        $a0, 2($v1)
/* 1900C 800AE40C 28820080 */  slti       $v0, $a0, 0x80
/* 19010 800AE410 14400006 */  bnez       $v0, .L800AE42C
/* 19014 800AE414 24650003 */   addiu     $a1, $v1, 3
/* 19018 800AE418 3084007F */  andi       $a0, $a0, 0x7f
/* 1901C 800AE41C 90620003 */  lbu        $v0, 3($v1)
/* 19020 800AE420 00042200 */  sll        $a0, $a0, 8
/* 19024 800AE424 24650004 */  addiu      $a1, $v1, 4
/* 19028 800AE428 00822025 */  or         $a0, $a0, $v0
.L800AE42C:
/* 1902C 800AE42C 8E03FFD8 */  lw         $v1, -0x28($s0)
/* 19030 800AE430 00041200 */  sll        $v0, $a0, 8
/* 19034 800AE434 A6000076 */  sh         $zero, 0x76($s0)
/* 19038 800AE438 A6040066 */  sh         $a0, 0x66($s0)
/* 1903C 800AE43C AE05FFD0 */  sw         $a1, -0x30($s0)
/* 19040 800AE440 00621823 */  subu       $v1, $v1, $v0
/* 19044 800AE444 AE03FFD8 */  sw         $v1, -0x28($s0)
.L800AE448:
/* 19048 800AE448 8E02FFD8 */  lw         $v0, -0x28($s0)
/* 1904C 800AE44C 8E030004 */  lw         $v1, 4($s0)
/* 19050 800AE450 10600003 */  beqz       $v1, .L800AE460
/* 19054 800AE454 AE02000C */   sw        $v0, 0xc($s0)
/* 19058 800AE458 0C02BFBC */  jal        func_800AFEF0
/* 1905C 800AE45C 02202021 */   addu      $a0, $s1, $zero
.L800AE460:
/* 19060 800AE460 8E020000 */  lw         $v0, ($s0)
/* 19064 800AE464 50400004 */  beql       $v0, $zero, .L800AE478
/* 19068 800AE468 26520001 */   addiu     $s2, $s2, 1
/* 1906C 800AE46C 0C02BFED */  jal        func_800AFFB4
/* 19070 800AE470 02202021 */   addu      $a0, $s1, $zero
/* 19074 800AE474 26520001 */  addiu      $s2, $s2, 1
.L800AE478:
/* 19078 800AE478 3C028010 */  lui        $v0, %hi(D_80102944)
/* 1907C 800AE47C 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 19080 800AE480 2610013C */  addiu      $s0, $s0, 0x13c
/* 19084 800AE484 0242102A */  slt        $v0, $s2, $v0
/* 19088 800AE488 1440FF8C */  bnez       $v0, .L800AE2BC
/* 1908C 800AE48C 2631013C */   addiu     $s1, $s1, 0x13c
.L800AE490:
/* 19090 800AE490 0C02BB06 */  jal        func_800AEC18
/* 19094 800AE494 02602021 */   addu      $a0, $s3, $zero
/* 19098 800AE498 02601021 */  addu       $v0, $s3, $zero
/* 1909C 800AE49C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 190A0 800AE4A0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 190A4 800AE4A4 8FB40028 */  lw         $s4, 0x28($sp)
/* 190A8 800AE4A8 8FB30024 */  lw         $s3, 0x24($sp)
/* 190AC 800AE4AC 8FB20020 */  lw         $s2, 0x20($sp)
/* 190B0 800AE4B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 190B4 800AE4B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 190B8 800AE4B8 03E00008 */  jr         $ra
/* 190BC 800AE4BC 27BD0038 */   addiu     $sp, $sp, 0x38
