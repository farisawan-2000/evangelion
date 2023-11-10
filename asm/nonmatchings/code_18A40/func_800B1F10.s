glabel func_800B1F10
/* 1CB10 800B1F10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1CB14 800B1F14 AFB20020 */  sw         $s2, 0x20($sp)
/* 1CB18 800B1F18 00809021 */  addu       $s2, $a0, $zero
/* 1CB1C 800B1F1C AFB30024 */  sw         $s3, 0x24($sp)
/* 1CB20 800B1F20 00A09821 */  addu       $s3, $a1, $zero
/* 1CB24 800B1F24 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1CB28 800B1F28 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1CB2C 800B1F2C AFB40028 */  sw         $s4, 0x28($sp)
/* 1CB30 800B1F30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1CB34 800B1F34 0C02E40C */  jal        func_800B9030
/* 1CB38 800B1F38 AFB00018 */   sw        $s0, 0x18($sp)
/* 1CB3C 800B1F3C 00122040 */  sll        $a0, $s2, 1
/* 1CB40 800B1F40 00922021 */  addu       $a0, $a0, $s2
/* 1CB44 800B1F44 3C018010 */  lui        $at, %hi(D_801029D8)
/* 1CB48 800B1F48 AC2229D8 */  sw         $v0, %lo(D_801029D8)($at)
/* 1CB4C 800B1F4C 0C02CA0B */  jal        func_800B282C
/* 1CB50 800B1F50 00042100 */   sll       $a0, $a0, 4
/* 1CB54 800B1F54 3C018010 */  lui        $at, %hi(D_801029AC)
/* 1CB58 800B1F58 AC2229AC */  sw         $v0, %lo(D_801029AC)($at)
/* 1CB5C 800B1F5C 0C02CA0B */  jal        func_800B282C
/* 1CB60 800B1F60 001220C0 */   sll       $a0, $s2, 3
/* 1CB64 800B1F64 00128080 */  sll        $s0, $s2, 2
/* 1CB68 800B1F68 02128021 */  addu       $s0, $s0, $s2
/* 1CB6C 800B1F6C 00108080 */  sll        $s0, $s0, 2
/* 1CB70 800B1F70 3C018010 */  lui        $at, %hi(D_801029B0)
/* 1CB74 800B1F74 AC2229B0 */  sw         $v0, %lo(D_801029B0)($at)
/* 1CB78 800B1F78 0C02CA0B */  jal        func_800B282C
/* 1CB7C 800B1F7C 02002021 */   addu      $a0, $s0, $zero
/* 1CB80 800B1F80 00402021 */  addu       $a0, $v0, $zero
/* 1CB84 800B1F84 00002821 */  addu       $a1, $zero, $zero
/* 1CB88 800B1F88 3C018010 */  lui        $at, %hi(D_801029A8)
/* 1CB8C 800B1F8C AC2429A8 */  sw         $a0, %lo(D_801029A8)($at)
/* 1CB90 800B1F90 0C02CA20 */  jal        func_800B2880
/* 1CB94 800B1F94 02003021 */   addu      $a2, $s0, $zero
/* 1CB98 800B1F98 2642FFFF */  addiu      $v0, $s2, -0x1
/* 1CB9C 800B1F9C 18400015 */  blez       $v0, .L800B1FF4
/* 1CBA0 800B1FA0 00008821 */   addu      $s1, $zero, $zero
/* 1CBA4 800B1FA4 2415FFFF */  addiu      $s5, $zero, -0x1
/* 1CBA8 800B1FA8 0040A021 */  addu       $s4, $v0, $zero
/* 1CBAC 800B1FAC 00008021 */  addu       $s0, $zero, $zero
.L800B1FB0:
/* 1CBB0 800B1FB0 3C028010 */  lui        $v0, %hi(D_801029A8)
/* 1CBB4 800B1FB4 8C4229A8 */  lw         $v0, %lo(D_801029A8)($v0)
/* 1CBB8 800B1FB8 02602021 */  addu       $a0, $s3, $zero
/* 1CBBC 800B1FBC 02021021 */  addu       $v0, $s0, $v0
/* 1CBC0 800B1FC0 24430014 */  addiu      $v1, $v0, 0x14
/* 1CBC4 800B1FC4 AC430004 */  sw         $v1, 0x4($v0)
/* 1CBC8 800B1FC8 0C02CA0B */  jal        func_800B282C
/* 1CBCC 800B1FCC AC420014 */   sw        $v0, 0x14($v0)
/* 1CBD0 800B1FD0 3C038010 */  lui        $v1, %hi(D_801029A8)
/* 1CBD4 800B1FD4 8C6329A8 */  lw         $v1, %lo(D_801029A8)($v1)
/* 1CBD8 800B1FD8 26310001 */  addiu      $s1, $s1, 0x1
/* 1CBDC 800B1FDC 02031821 */  addu       $v1, $s0, $v1
/* 1CBE0 800B1FE0 26100014 */  addiu      $s0, $s0, 0x14
/* 1CBE4 800B1FE4 AC620010 */  sw         $v0, 0x10($v1)
/* 1CBE8 800B1FE8 0234102A */  slt        $v0, $s1, $s4
/* 1CBEC 800B1FEC 1440FFF0 */  bnez       $v0, .L800B1FB0
/* 1CBF0 800B1FF0 AC75000C */   sw        $s5, 0xC($v1)
.L800B1FF4:
/* 1CBF4 800B1FF4 0C02CA0B */  jal        func_800B282C
/* 1CBF8 800B1FF8 02602021 */   addu      $a0, $s3, $zero
/* 1CBFC 800B1FFC 3C058010 */  lui        $a1, %hi(D_801029B0)
/* 1CC00 800B2000 8CA529B0 */  lw         $a1, %lo(D_801029B0)($a1)
/* 1CC04 800B2004 3C048010 */  lui        $a0, %hi(D_801029C0)
/* 1CC08 800B2008 248429C0 */  addiu      $a0, $a0, %lo(D_801029C0)
/* 1CC0C 800B200C 3C038010 */  lui        $v1, %hi(D_801029A8)
/* 1CC10 800B2010 8C6329A8 */  lw         $v1, %lo(D_801029A8)($v1)
/* 1CC14 800B2014 00113880 */  sll        $a3, $s1, 2
/* 1CC18 800B2018 00F13821 */  addu       $a3, $a3, $s1
/* 1CC1C 800B201C 00073880 */  sll        $a3, $a3, 2
/* 1CC20 800B2020 3C018010 */  lui        $at, %hi(D_801029B4)
/* 1CC24 800B2024 AC3329B4 */  sw         $s3, %lo(D_801029B4)($at)
/* 1CC28 800B2028 3C018010 */  lui        $at, %hi(D_801029B8)
/* 1CC2C 800B202C AC2029B8 */  sw         $zero, %lo(D_801029B8)($at)
/* 1CC30 800B2030 3C018010 */  lui        $at, %hi(D_801029A0)
/* 1CC34 800B2034 AC2029A0 */  sw         $zero, %lo(D_801029A0)($at)
/* 1CC38 800B2038 00E33821 */  addu       $a3, $a3, $v1
/* 1CC3C 800B203C ACE20010 */  sw         $v0, 0x10($a3)
/* 1CC40 800B2040 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1CC44 800B2044 ACE2000C */  sw         $v0, 0xC($a3)
/* 1CC48 800B2048 3C018010 */  lui        $at, %hi(D_801029A4)
/* 1CC4C 800B204C AC2329A4 */  sw         $v1, %lo(D_801029A4)($at)
/* 1CC50 800B2050 0C0301A4 */  jal        func_800C0690
/* 1CC54 800B2054 00123040 */   sll       $a2, $s2, 1
/* 1CC58 800B2058 3C02800B */  lui        $v0, %hi(func_800B2154)
/* 1CC5C 800B205C 24422154 */  addiu      $v0, $v0, %lo(func_800B2154)
/* 1CC60 800B2060 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1CC64 800B2064 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1CC68 800B2068 8FB40028 */  lw         $s4, 0x28($sp)
/* 1CC6C 800B206C 8FB30024 */  lw         $s3, 0x24($sp)
/* 1CC70 800B2070 8FB20020 */  lw         $s2, 0x20($sp)
/* 1CC74 800B2074 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1CC78 800B2078 8FB00018 */  lw         $s0, 0x18($sp)
/* 1CC7C 800B207C 03E00008 */  jr         $ra
/* 1CC80 800B2080 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800B1F10, . - func_800B1F10
