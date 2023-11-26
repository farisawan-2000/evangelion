glabel func_80037464_ovl3
/* E0974 80037464 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E0978 80037468 AFB40028 */  sw         $s4, 0x28($sp)
/* E097C 8003746C 00A0A021 */  addu       $s4, $a1, $zero
/* E0980 80037470 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E0984 80037474 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E0988 80037478 00002821 */  addu       $a1, $zero, $zero
/* E098C 8003747C 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* E0990 80037480 AFBF002C */  sw         $ra, 0x2C($sp)
/* E0994 80037484 AFB30024 */  sw         $s3, 0x24($sp)
/* E0998 80037488 AFB20020 */  sw         $s2, 0x20($sp)
/* E099C 8003748C AFB1001C */  sw         $s1, 0x1C($sp)
/* E09A0 80037490 AFB00018 */  sw         $s0, 0x18($sp)
.L80037494_ovl3:
/* E09A4 80037494 94620000 */  lhu        $v0, 0x0($v1)
/* E09A8 80037498 10440016 */  beq        $v0, $a0, .L800374F4_ovl3
/* E09AC 8003749C 24A50001 */   addiu     $a1, $a1, 0x1
/* E09B0 800374A0 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* E09B4 800374A4 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E09B8 800374A8 1440FFFA */  bnez       $v0, .L80037494_ovl3
/* E09BC 800374AC 24630010 */   addiu     $v1, $v1, 0x10
/* E09C0 800374B0 00009821 */  addu       $s3, $zero, $zero
.L800374B4_ovl3:
/* E09C4 800374B4 8E62000C */  lw         $v0, 0xC($s3)
/* E09C8 800374B8 8C52000C */  lw         $s2, 0xC($v0)
/* E09CC 800374BC 92420004 */  lbu        $v0, 0x4($s2)
/* E09D0 800374C0 1440000E */  bnez       $v0, .L800374FC_ovl3
/* E09D4 800374C4 00000000 */   nop
/* E09D8 800374C8 0C032663 */  jal        func_800C998C
/* E09DC 800374CC 24040020 */   addiu     $a0, $zero, 0x20
/* E09E0 800374D0 00408821 */  addu       $s1, $v0, $zero
/* E09E4 800374D4 02202021 */  addu       $a0, $s1, $zero
/* E09E8 800374D8 0C030134 */  jal        bzero
/* E09EC 800374DC 24050020 */   addiu     $a1, $zero, 0x20
/* E09F0 800374E0 8E62000C */  lw         $v0, 0xC($s3)
/* E09F4 800374E4 8C440014 */  lw         $a0, 0x14($v0)
/* E09F8 800374E8 02202821 */  addu       $a1, $s1, $zero
/* E09FC 800374EC 0800DD49 */  j          .L80037524_ovl3
/* E0A00 800374F0 24060020 */   addiu     $a2, $zero, 0x20
.L800374F4_ovl3:
/* E0A04 800374F4 0800DD2D */  j          .L800374B4_ovl3
/* E0A08 800374F8 00609821 */   addu      $s3, $v1, $zero
.L800374FC_ovl3:
/* E0A0C 800374FC 0C032663 */  jal        func_800C998C
/* E0A10 80037500 24040200 */   addiu     $a0, $zero, 0x200
/* E0A14 80037504 00408821 */  addu       $s1, $v0, $zero
/* E0A18 80037508 02202021 */  addu       $a0, $s1, $zero
/* E0A1C 8003750C 0C030134 */  jal        bzero
/* E0A20 80037510 24050200 */   addiu     $a1, $zero, 0x200
/* E0A24 80037514 8E62000C */  lw         $v0, 0xC($s3)
/* E0A28 80037518 8C440014 */  lw         $a0, 0x14($v0)
/* E0A2C 8003751C 02202821 */  addu       $a1, $s1, $zero
/* E0A30 80037520 24060200 */  addiu      $a2, $zero, 0x200
.L80037524_ovl3:
/* E0A34 80037524 0C03006C */  jal        func_800C01B0
/* E0A38 80037528 00000000 */   nop
/* E0A3C 8003752C 8E62000C */  lw         $v0, 0xC($s3)
/* E0A40 80037530 8C500010 */  lw         $s0, 0x10($v0)
/* E0A44 80037534 0C00D8E3 */  jal        func_8003638C_ovl3
/* E0A48 80037538 3284FFFF */   andi      $a0, $s4, 0xFFFF
/* E0A4C 8003753C 8E63000C */  lw         $v1, 0xC($s3)
/* E0A50 80037540 90630020 */  lbu        $v1, 0x20($v1)
/* E0A54 80037544 00409821 */  addu       $s3, $v0, $zero
/* E0A58 80037548 2C620007 */  sltiu      $v0, $v1, 0x7
/* E0A5C 8003754C 1040005D */  beqz       $v0, .L800376C4_ovl3
/* E0A60 80037550 00031080 */   sll       $v0, $v1, 2
/* E0A64 80037554 3C018007 */  lui        $at, %hi(jtbl_80069E00_ovl3)
/* E0A68 80037558 00220821 */  addu       $at, $at, $v0
/* E0A6C 8003755C 8C229E00 */  lw         $v0, %lo(jtbl_80069E00_ovl3)($at)
/* E0A70 80037560 00400008 */  jr         $v0
/* E0A74 80037564 00000000 */   nop
glabel .L80037568_ovl3
/* E0A78 80037568 02402021 */  addu       $a0, $s2, $zero
/* E0A7C 8003756C 02002821 */  addu       $a1, $s0, $zero
/* E0A80 80037570 02203021 */  addu       $a2, $s1, $zero
/* E0A84 80037574 0C028E9B */  jal        func_800A3A6C
/* E0A88 80037578 00003821 */   addu      $a3, $zero, $zero
/* E0A8C 8003757C 0800DDB1 */  j          .L800376C4_ovl3
/* E0A90 80037580 AE62000C */   sw        $v0, 0xC($s3)
glabel .L80037584_ovl3
/* E0A94 80037584 02402021 */  addu       $a0, $s2, $zero
/* E0A98 80037588 02002821 */  addu       $a1, $s0, $zero
/* E0A9C 8003758C 02203021 */  addu       $a2, $s1, $zero
/* E0AA0 80037590 0C028E9B */  jal        func_800A3A6C
/* E0AA4 80037594 00003821 */   addu      $a3, $zero, $zero
/* E0AA8 80037598 00402021 */  addu       $a0, $v0, $zero
/* E0AAC 8003759C 24050400 */  addiu      $a1, $zero, 0x400
/* E0AB0 800375A0 24060400 */  addiu      $a2, $zero, 0x400
/* E0AB4 800375A4 0C028F9A */  jal        func_800A3E68
/* E0AB8 800375A8 AE64000C */   sw        $a0, 0xC($s3)
/* E0ABC 800375AC 8E62000C */  lw         $v0, 0xC($s3)
/* E0AC0 800375B0 8C430000 */  lw         $v1, 0x0($v0)
/* E0AC4 800375B4 24020001 */  addiu      $v0, $zero, 0x1
/* E0AC8 800375B8 0800DDB1 */  j          .L800376C4_ovl3
/* E0ACC 800375BC A062002F */   sb        $v0, 0x2F($v1)
glabel .L800375C0_ovl3
/* E0AD0 800375C0 02402021 */  addu       $a0, $s2, $zero
/* E0AD4 800375C4 02002821 */  addu       $a1, $s0, $zero
/* E0AD8 800375C8 02203021 */  addu       $a2, $s1, $zero
/* E0ADC 800375CC 0800DD7E */  j          .L800375F8_ovl3
/* E0AE0 800375D0 00003821 */   addu      $a3, $zero, $zero
glabel .L800375D4_ovl3
/* E0AE4 800375D4 02402021 */  addu       $a0, $s2, $zero
/* E0AE8 800375D8 02002821 */  addu       $a1, $s0, $zero
/* E0AEC 800375DC 02203021 */  addu       $a2, $s1, $zero
/* E0AF0 800375E0 0800DD7E */  j          .L800375F8_ovl3
/* E0AF4 800375E4 24070001 */   addiu     $a3, $zero, 0x1
glabel .L800375E8_ovl3
/* E0AF8 800375E8 02402021 */  addu       $a0, $s2, $zero
/* E0AFC 800375EC 02002821 */  addu       $a1, $s0, $zero
/* E0B00 800375F0 02203021 */  addu       $a2, $s1, $zero
/* E0B04 800375F4 24070002 */  addiu      $a3, $zero, 0x2
.L800375F8_ovl3:
/* E0B08 800375F8 0C028FA6 */  jal        func_800A3E98
/* E0B0C 800375FC AFA00010 */   sw        $zero, 0x10($sp)
/* E0B10 80037600 00402021 */  addu       $a0, $v0, $zero
/* E0B14 80037604 00002821 */  addu       $a1, $zero, $zero
/* E0B18 80037608 00003021 */  addu       $a2, $zero, $zero
/* E0B1C 8003760C 0C02912A */  jal        func_800A44A8
/* E0B20 80037610 AE64000C */   sw        $a0, 0xC($s3)
/* E0B24 80037614 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E0B28 80037618 44810000 */  mtc1       $at, $f0
/* E0B2C 8003761C 8E64000C */  lw         $a0, 0xC($s3)
/* E0B30 80037620 44060000 */  mfc1       $a2, $f0
/* E0B34 80037624 00002821 */  addu       $a1, $zero, $zero
/* E0B38 80037628 0C02915B */  jal        func_800A456C
/* E0B3C 8003762C 00C03821 */   addu      $a3, $a2, $zero
/* E0B40 80037630 0800DDB2 */  j          .L800376C8_ovl3
/* E0B44 80037634 02601021 */   addu      $v0, $s3, $zero
glabel .L80037638_ovl3
/* E0B48 80037638 02402021 */  addu       $a0, $s2, $zero
/* E0B4C 8003763C 02002821 */  addu       $a1, $s0, $zero
/* E0B50 80037640 02203021 */  addu       $a2, $s1, $zero
/* E0B54 80037644 0C02920C */  jal        func_800A4830
/* E0B58 80037648 00003821 */   addu      $a3, $zero, $zero
/* E0B5C 8003764C AE62000C */  sw         $v0, 0xC($s3)
/* E0B60 80037650 8C430000 */  lw         $v1, 0x0($v0)
/* E0B64 80037654 24020001 */  addiu      $v0, $zero, 0x1
/* E0B68 80037658 A462001A */  sh         $v0, 0x1A($v1)
/* E0B6C 8003765C 8E64000C */  lw         $a0, 0xC($s3)
/* E0B70 80037660 00002821 */  addu       $a1, $zero, $zero
/* E0B74 80037664 0C02933E */  jal        func_800A4CF8
/* E0B78 80037668 00003021 */   addu      $a2, $zero, $zero
/* E0B7C 8003766C 8E64000C */  lw         $a0, 0xC($s3)
/* E0B80 80037670 0C02932F */  jal        func_800A4CBC
/* E0B84 80037674 00000000 */   nop
/* E0B88 80037678 0800DDB2 */  j          .L800376C8_ovl3
/* E0B8C 8003767C 02601021 */   addu      $v0, $s3, $zero
glabel .L80037680_ovl3
/* E0B90 80037680 02402021 */  addu       $a0, $s2, $zero
/* E0B94 80037684 02002821 */  addu       $a1, $s0, $zero
/* E0B98 80037688 02203021 */  addu       $a2, $s1, $zero
/* E0B9C 8003768C 0C02920C */  jal        func_800A4830
/* E0BA0 80037690 00003821 */   addu      $a3, $zero, $zero
/* E0BA4 80037694 AE62000C */  sw         $v0, 0xC($s3)
/* E0BA8 80037698 8C430000 */  lw         $v1, 0x0($v0)
/* E0BAC 8003769C 24020001 */  addiu      $v0, $zero, 0x1
/* E0BB0 800376A0 A462001A */  sh         $v0, 0x1A($v1)
/* E0BB4 800376A4 8E64000C */  lw         $a0, 0xC($s3)
/* E0BB8 800376A8 24050400 */  addiu      $a1, $zero, 0x400
/* E0BBC 800376AC 0C0292D4 */  jal        func_800A4B50
/* E0BC0 800376B0 24060400 */   addiu     $a2, $zero, 0x400
/* E0BC4 800376B4 8E64000C */  lw         $a0, 0xC($s3)
/* E0BC8 800376B8 00002821 */  addu       $a1, $zero, $zero
/* E0BCC 800376BC 0C02933E */  jal        func_800A4CF8
/* E0BD0 800376C0 00003021 */   addu      $a2, $zero, $zero
.L800376C4_ovl3:
/* E0BD4 800376C4 02601021 */  addu       $v0, $s3, $zero
.L800376C8_ovl3:
/* E0BD8 800376C8 8C44000C */  lw         $a0, 0xC($v0)
/* E0BDC 800376CC 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* E0BE0 800376D0 AC430008 */  sw         $v1, 0x8($v0)
/* E0BE4 800376D4 AC430004 */  sw         $v1, 0x4($v0)
/* E0BE8 800376D8 24030063 */  addiu      $v1, $zero, 0x63
/* E0BEC 800376DC 00741823 */  subu       $v1, $v1, $s4
/* E0BF0 800376E0 A4540000 */  sh         $s4, 0x0($v0)
/* E0BF4 800376E4 A483001C */  sh         $v1, 0x1C($a0)
/* E0BF8 800376E8 8FBF002C */  lw         $ra, 0x2C($sp)
/* E0BFC 800376EC 8FB40028 */  lw         $s4, 0x28($sp)
/* E0C00 800376F0 8FB30024 */  lw         $s3, 0x24($sp)
/* E0C04 800376F4 8FB20020 */  lw         $s2, 0x20($sp)
/* E0C08 800376F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* E0C0C 800376FC 8FB00018 */  lw         $s0, 0x18($sp)
/* E0C10 80037700 03E00008 */  jr         $ra
/* E0C14 80037704 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80037464_ovl3, . - func_80037464_ovl3
