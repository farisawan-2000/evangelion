glabel func_800B5310
/* 1FF10 800B5310 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1FF14 800B5314 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1FF18 800B5318 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1FF1C 800B531C AFB20030 */  sw         $s2, 0x30($sp)
/* 1FF20 800B5320 00809021 */  addu       $s2, $a0, $zero
/* 1FF24 800B5324 AFBF0038 */  sw         $ra, 0x38($sp)
/* 1FF28 800B5328 AFB30034 */  sw         $s3, 0x34($sp)
/* 1FF2C 800B532C AFB1002C */  sw         $s1, 0x2C($sp)
/* 1FF30 800B5330 AFB00028 */  sw         $s0, 0x28($sp)
/* 1FF34 800B5334 8E530014 */  lw         $s3, 0x14($s2)
/* 1FF38 800B5338 AC600000 */  sw         $zero, 0x0($v1)
/* 1FF3C 800B533C 8E420004 */  lw         $v0, 0x4($s2)
/* 1FF40 800B5340 00002021 */  addu       $a0, $zero, $zero
/* 1FF44 800B5344 00002821 */  addu       $a1, $zero, $zero
/* 1FF48 800B5348 AC600020 */  sw         $zero, 0x20($v1)
/* 1FF4C 800B534C AC60001C */  sw         $zero, 0x1C($v1)
/* 1FF50 800B5350 AC620038 */  sw         $v0, 0x38($v1)
/* 1FF54 800B5354 8E460018 */  lw         $a2, 0x18($s2)
/* 1FF58 800B5358 24070001 */  addiu      $a3, $zero, 0x1
/* 1FF5C 800B535C 240200B8 */  addiu      $v0, $zero, 0xB8
/* 1FF60 800B5360 AC620044 */  sw         $v0, 0x44($v1)
/* 1FF64 800B5364 AC660040 */  sw         $a2, 0x40($v1)
/* 1FF68 800B5368 8E480010 */  lw         $t0, 0x10($s2)
/* 1FF6C 800B536C 24020001 */  addiu      $v0, $zero, 0x1
/* 1FF70 800B5370 02603021 */  addu       $a2, $s3, $zero
/* 1FF74 800B5374 AC62004C */  sw         $v0, 0x4C($v1)
/* 1FF78 800B5378 24020044 */  addiu      $v0, $zero, 0x44
/* 1FF7C 800B537C AC600048 */  sw         $zero, 0x48($v1)
/* 1FF80 800B5380 AC680024 */  sw         $t0, 0x24($v1)
/* 1FF84 800B5384 0C02F2E4 */  jal        func_800BCB90
/* 1FF88 800B5388 AFA20010 */   sw        $v0, 0x10($sp)
/* 1FF8C 800B538C 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1FF90 800B5390 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1FF94 800B5394 AC620034 */  sw         $v0, 0x34($v1)
/* 1FF98 800B5398 AC400014 */  sw         $zero, 0x14($v0)
/* 1FF9C 800B539C 8C630034 */  lw         $v1, 0x34($v1)
/* 1FFA0 800B53A0 8E420004 */  lw         $v0, 0x4($s2)
/* 1FFA4 800B53A4 00002021 */  addu       $a0, $zero, $zero
/* 1FFA8 800B53A8 AC620018 */  sw         $v0, 0x18($v1)
/* 1FFAC 800B53AC 24020004 */  addiu      $v0, $zero, 0x4
/* 1FFB0 800B53B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 1FFB4 800B53B4 8E470004 */  lw         $a3, 0x4($s2)
/* 1FFB8 800B53B8 00002821 */  addu       $a1, $zero, $zero
/* 1FFBC 800B53BC 0C02F2E4 */  jal        func_800BCB90
/* 1FFC0 800B53C0 02603021 */   addu      $a2, $s3, $zero
/* 1FFC4 800B53C4 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1FFC8 800B53C8 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1FFCC 800B53CC 00002021 */  addu       $a0, $zero, $zero
/* 1FFD0 800B53D0 00002821 */  addu       $a1, $zero, $zero
/* 1FFD4 800B53D4 8C630034 */  lw         $v1, 0x34($v1)
/* 1FFD8 800B53D8 02603021 */  addu       $a2, $s3, $zero
/* 1FFDC 800B53DC 24070001 */  addiu      $a3, $zero, 0x1
/* 1FFE0 800B53E0 AC62001C */  sw         $v0, 0x1C($v1)
/* 1FFE4 800B53E4 24020014 */  addiu      $v0, $zero, 0x14
/* 1FFE8 800B53E8 0C02F2E4 */  jal        func_800BCB90
/* 1FFEC 800B53EC AFA20010 */   sw        $v0, 0x10($sp)
/* 1FFF0 800B53F0 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1FFF4 800B53F4 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1FFF8 800B53F8 00402021 */  addu       $a0, $v0, $zero
/* 1FFFC 800B53FC AC640030 */  sw         $a0, 0x30($v1)
/* 20000 800B5400 9242001C */  lbu        $v0, 0x1C($s2)
/* 20004 800B5404 1040000D */  beqz       $v0, .L800B543C
/* 20008 800B5408 02402821 */   addu      $a1, $s2, $zero
/* 2000C 800B540C 00002021 */  addu       $a0, $zero, $zero
/* 20010 800B5410 0C02D630 */  jal        func_800B58C0
/* 20014 800B5414 02603021 */   addu      $a2, $s3, $zero
/* 20018 800B5418 3C04800F */  lui        $a0, %hi(D_800F17F4)
/* 2001C 800B541C 8C8417F4 */  lw         $a0, %lo(D_800F17F4)($a0)
/* 20020 800B5420 8C830034 */  lw         $v1, 0x34($a0)
/* 20024 800B5424 AC620020 */  sw         $v0, 0x20($v1)
/* 20028 800B5428 8C830030 */  lw         $v1, 0x30($a0)
/* 2002C 800B542C 3C02800B */  lui        $v0, %hi(func_800B42E0)
/* 20030 800B5430 244242E0 */  addiu      $v0, $v0, %lo(func_800B42E0)
/* 20034 800B5434 0802D512 */  j          .L800B5448
/* 20038 800B5438 AC620004 */   sw        $v0, 0x4($v1)
.L800B543C:
/* 2003C 800B543C 3C02800B */  lui        $v0, %hi(func_800B2A50)
/* 20040 800B5440 24422A50 */  addiu      $v0, $v0, %lo(func_800B2A50)
/* 20044 800B5444 AC820004 */  sw         $v0, 0x4($a0)
.L800B5448:
/* 20048 800B5448 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 2004C 800B544C 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 20050 800B5450 00002021 */  addu       $a0, $zero, $zero
/* 20054 800B5454 AC400004 */  sw         $zero, 0x4($v0)
/* 20058 800B5458 AC400008 */  sw         $zero, 0x8($v0)
/* 2005C 800B545C AC400014 */  sw         $zero, 0x14($v0)
/* 20060 800B5460 AC400018 */  sw         $zero, 0x18($v0)
/* 20064 800B5464 AC40000C */  sw         $zero, 0xC($v0)
/* 20068 800B5468 AC400010 */  sw         $zero, 0x10($v0)
/* 2006C 800B546C 2402008C */  addiu      $v0, $zero, 0x8C
/* 20070 800B5470 AFA20010 */  sw         $v0, 0x10($sp)
/* 20074 800B5474 8E470004 */  lw         $a3, 0x4($s2)
/* 20078 800B5478 00002821 */  addu       $a1, $zero, $zero
/* 2007C 800B547C 0C02F2E4 */  jal        func_800BCB90
/* 20080 800B5480 02603021 */   addu      $a2, $s3, $zero
/* 20084 800B5484 8E430004 */  lw         $v1, 0x4($s2)
/* 20088 800B5488 1860001D */  blez       $v1, .L800B5500
/* 2008C 800B548C 00008021 */   addu      $s0, $zero, $zero
/* 20090 800B5490 00408821 */  addu       $s1, $v0, $zero
.L800B5494:
/* 20094 800B5494 3C05800F */  lui        $a1, %hi(D_800F17F4)
/* 20098 800B5498 8CA517F4 */  lw         $a1, %lo(D_800F17F4)($a1)
/* 2009C 800B549C 02202021 */  addu       $a0, $s1, $zero
/* 200A0 800B54A0 0C02F2BF */  jal        func_800BCAFC
/* 200A4 800B54A4 24A50004 */   addiu     $a1, $a1, 0x4
/* 200A8 800B54A8 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 200AC 800B54AC 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 200B0 800B54B0 AE200008 */  sw         $zero, 0x8($s1)
/* 200B4 800B54B4 8C450024 */  lw         $a1, 0x24($v0)
/* 200B8 800B54B8 02202021 */  addu       $a0, $s1, $zero
/* 200BC 800B54BC 0C02CBB7 */  jal        func_800B2EDC
/* 200C0 800B54C0 02603021 */   addu      $a2, $s3, $zero
/* 200C4 800B54C4 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 200C8 800B54C8 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 200CC 800B54CC 8C440034 */  lw         $a0, 0x34($v0)
/* 200D0 800B54D0 8C830014 */  lw         $v1, 0x14($a0)
/* 200D4 800B54D4 8C85001C */  lw         $a1, 0x1C($a0)
/* 200D8 800B54D8 24620001 */  addiu      $v0, $v1, 0x1
/* 200DC 800B54DC 00031880 */  sll        $v1, $v1, 2
/* 200E0 800B54E0 00651821 */  addu       $v1, $v1, $a1
/* 200E4 800B54E4 AC820014 */  sw         $v0, 0x14($a0)
/* 200E8 800B54E8 AC710000 */  sw         $s1, 0x0($v1)
/* 200EC 800B54EC 8E420004 */  lw         $v0, 0x4($s2)
/* 200F0 800B54F0 26100001 */  addiu      $s0, $s0, 0x1
/* 200F4 800B54F4 0202102A */  slt        $v0, $s0, $v0
/* 200F8 800B54F8 1440FFE6 */  bnez       $v0, .L800B5494
/* 200FC 800B54FC 2631008C */   addiu     $s1, $s1, 0x8C
.L800B5500:
/* 20100 800B5500 00002021 */  addu       $a0, $zero, $zero
/* 20104 800B5504 2402001C */  addiu      $v0, $zero, 0x1C
/* 20108 800B5508 AFA20010 */  sw         $v0, 0x10($sp)
/* 2010C 800B550C 8E470008 */  lw         $a3, 0x8($s2)
/* 20110 800B5510 00002821 */  addu       $a1, $zero, $zero
/* 20114 800B5514 0C02F2E4 */  jal        func_800BCB90
/* 20118 800B5518 02603021 */   addu      $a2, $s3, $zero
/* 2011C 800B551C 3C04800F */  lui        $a0, %hi(D_800F17F4)
/* 20120 800B5520 8C8417F4 */  lw         $a0, %lo(D_800F17F4)($a0)
/* 20124 800B5524 AC80002C */  sw         $zero, 0x2C($a0)
/* 20128 800B5528 8E430008 */  lw         $v1, 0x8($s2)
/* 2012C 800B552C 1860000A */  blez       $v1, .L800B5558
/* 20130 800B5530 00008021 */   addu      $s0, $zero, $zero
/* 20134 800B5534 00401821 */  addu       $v1, $v0, $zero
.L800B5538:
/* 20138 800B5538 8C82002C */  lw         $v0, 0x2C($a0)
/* 2013C 800B553C AC620000 */  sw         $v0, 0x0($v1)
/* 20140 800B5540 AC83002C */  sw         $v1, 0x2C($a0)
/* 20144 800B5544 8E420008 */  lw         $v0, 0x8($s2)
/* 20148 800B5548 26100001 */  addiu      $s0, $s0, 0x1
/* 2014C 800B554C 0202102A */  slt        $v0, $s0, $v0
/* 20150 800B5550 1440FFF9 */  bnez       $v0, .L800B5538
/* 20154 800B5554 2463001C */   addiu     $v1, $v1, 0x1C
.L800B5558:
/* 20158 800B5558 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 2015C 800B555C 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 20160 800B5560 AC530028 */  sw         $s3, 0x28($v0)
/* 20164 800B5564 8FBF0038 */  lw         $ra, 0x38($sp)
/* 20168 800B5568 8FB30034 */  lw         $s3, 0x34($sp)
/* 2016C 800B556C 8FB20030 */  lw         $s2, 0x30($sp)
/* 20170 800B5570 8FB1002C */  lw         $s1, 0x2C($sp)
/* 20174 800B5574 8FB00028 */  lw         $s0, 0x28($sp)
/* 20178 800B5578 03E00008 */  jr         $ra
/* 2017C 800B557C 27BD0040 */   addiu     $sp, $sp, 0x40
.size func_800B5310, . - func_800B5310