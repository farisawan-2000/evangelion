.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002B4B0_17AEF0
/* 17AEF0 8002B4B0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17AEF4 8002B4B4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17AEF8 8002B4B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17AEFC 8002B4BC 00002021 */  addu       $a0, $zero, $zero
/* 17AF00 8002B4C0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 17AF04 8002B4C4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17AF08 8002B4C8 AFB00018 */  sw         $s0, 0x18($sp)
/* 17AF0C 8002B4CC 8C51002C */  lw         $s1, 0x2c($v0)
/* 17AF10 8002B4D0 308300FF */  andi       $v1, $a0, 0xff
.L8002B4D4:
/* 17AF14 8002B4D4 00031040 */  sll        $v0, $v1, 1
/* 17AF18 8002B4D8 00431021 */  addu       $v0, $v0, $v1
/* 17AF1C 8002B4DC 00021080 */  sll        $v0, $v0, 2
/* 17AF20 8002B4E0 00511021 */  addu       $v0, $v0, $s1
/* 17AF24 8002B4E4 8C430000 */  lw         $v1, ($v0)
/* 17AF28 8002B4E8 9462001E */  lhu        $v0, 0x1e($v1)
/* 17AF2C 8002B4EC 24840001 */  addiu      $a0, $a0, 1
/* 17AF30 8002B4F0 34420400 */  ori        $v0, $v0, 0x400
/* 17AF34 8002B4F4 A462001E */  sh         $v0, 0x1e($v1)
/* 17AF38 8002B4F8 308200FF */  andi       $v0, $a0, 0xff
/* 17AF3C 8002B4FC 2C420004 */  sltiu      $v0, $v0, 4
/* 17AF40 8002B500 5440FFF4 */  bnezl      $v0, .L8002B4D4
/* 17AF44 8002B504 308300FF */   andi      $v1, $a0, 0xff
/* 17AF48 8002B508 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17AF4C 8002B50C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17AF50 8002B510 14400015 */  bnez       $v0, .L8002B568
/* 17AF54 8002B514 24050010 */   addiu     $a1, $zero, 0x10
/* 17AF58 8002B518 3C048005 */  lui        $a0, %hi(D_8005200C)
/* 17AF5C 8002B51C 8C84200C */  lw         $a0, %lo(D_8005200C)($a0)
/* 17AF60 8002B520 24060030 */  addiu      $a2, $zero, 0x30
/* 17AF64 8002B524 24070130 */  addiu      $a3, $zero, 0x130
/* 17AF68 8002B528 241000C0 */  addiu      $s0, $zero, 0xc0
/* 17AF6C 8002B52C 3C018005 */  lui        $at, %hi(D_80051E70)
/* 17AF70 8002B530 A0201E70 */  sb         $zero, %lo(D_80051E70)($at)
/* 17AF74 8002B534 0C02939C */  jal        func_800A4E70
/* 17AF78 8002B538 AFB00010 */   sw        $s0, 0x10($sp)
/* 17AF7C 8002B53C 24050010 */  addiu      $a1, $zero, 0x10
/* 17AF80 8002B540 3C048005 */  lui        $a0, %hi(D_80052094)
/* 17AF84 8002B544 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 17AF88 8002B548 24060030 */  addiu      $a2, $zero, 0x30
/* 17AF8C 8002B54C 24070130 */  addiu      $a3, $zero, 0x130
/* 17AF90 8002B550 0C02939C */  jal        func_800A4E70
/* 17AF94 8002B554 AFB00010 */   sw        $s0, 0x10($sp)
/* 17AF98 8002B558 8E240018 */  lw         $a0, 0x18($s1)
/* 17AF9C 8002B55C 24050280 */  addiu      $a1, $zero, 0x280
/* 17AFA0 8002B560 0C028D89 */  jal        func_800A3624
/* 17AFA4 8002B564 240602A0 */   addiu     $a2, $zero, 0x2a0
.L8002B568:
/* 17AFA8 8002B568 3C038005 */  lui        $v1, %hi(D_80051E70)
/* 17AFAC 8002B56C 80631E70 */  lb         $v1, %lo(D_80051E70)($v1)
/* 17AFB0 8002B570 24020001 */  addiu      $v0, $zero, 1
/* 17AFB4 8002B574 1062001A */  beq        $v1, $v0, .L8002B5E0
/* 17AFB8 8002B578 28620002 */   slti      $v0, $v1, 2
/* 17AFBC 8002B57C 50400005 */  beql       $v0, $zero, .L8002B594
/* 17AFC0 8002B580 24020002 */   addiu     $v0, $zero, 2
/* 17AFC4 8002B584 10600009 */  beqz       $v1, .L8002B5AC
/* 17AFC8 8002B588 2404032A */   addiu     $a0, $zero, 0x32a
/* 17AFCC 8002B58C 0800ADCA */  j          .L8002B728
/* 17AFD0 8002B590 00000000 */   nop
.L8002B594:
/* 17AFD4 8002B594 10620035 */  beq        $v1, $v0, .L8002B66C
/* 17AFD8 8002B598 24020003 */   addiu     $v0, $zero, 3
/* 17AFDC 8002B59C 10620046 */  beq        $v1, $v0, .L8002B6B8
/* 17AFE0 8002B5A0 24020276 */   addiu     $v0, $zero, 0x276
/* 17AFE4 8002B5A4 0800ADCA */  j          .L8002B728
/* 17AFE8 8002B5A8 2404032A */   addiu     $a0, $zero, 0x32a
.L8002B5AC:
/* 17AFEC 8002B5AC 8E22000C */  lw         $v0, 0xc($s1)
/* 17AFF0 8002B5B0 3C048005 */  lui        $a0, %hi(D_80052038)
/* 17AFF4 8002B5B4 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 17AFF8 8002B5B8 9443001E */  lhu        $v1, 0x1e($v0)
/* 17AFFC 8002B5BC 2C8400B4 */  sltiu      $a0, $a0, 0xb4
/* 17B000 8002B5C0 3063FBFF */  andi       $v1, $v1, 0xfbff
/* 17B004 8002B5C4 14800057 */  bnez       $a0, .L8002B724
/* 17B008 8002B5C8 A443001E */   sh        $v1, 0x1e($v0)
/* 17B00C 8002B5CC 24020001 */  addiu      $v0, $zero, 1
/* 17B010 8002B5D0 3C018005 */  lui        $at, %hi(D_80051E70)
/* 17B014 8002B5D4 A0221E70 */  sb         $v0, %lo(D_80051E70)($at)
/* 17B018 8002B5D8 0800ADCA */  j          .L8002B728
/* 17B01C 8002B5DC 2404032A */   addiu     $a0, $zero, 0x32a
.L8002B5E0:
/* 17B020 8002B5E0 8E220018 */  lw         $v0, 0x18($s1)
/* 17B024 8002B5E4 8C440008 */  lw         $a0, 8($v0)
/* 17B028 8002B5E8 94830012 */  lhu        $v1, 0x12($a0)
/* 17B02C 8002B5EC 2462FFFF */  addiu      $v0, $v1, -1
/* 17B030 8002B5F0 00401821 */  addu       $v1, $v0, $zero
/* 17B034 8002B5F4 00021400 */  sll        $v0, $v0, 0x10
/* 17B038 8002B5F8 00021403 */  sra        $v0, $v0, 0x10
/* 17B03C 8002B5FC 28420120 */  slti       $v0, $v0, 0x120
/* 17B040 8002B600 54400001 */  bnezl      $v0, .L8002B608
/* 17B044 8002B604 24030120 */   addiu     $v1, $zero, 0x120
.L8002B608:
/* 17B048 8002B608 A4830012 */  sh         $v1, 0x12($a0)
/* 17B04C 8002B60C 8E220018 */  lw         $v0, 0x18($s1)
/* 17B050 8002B610 9443001E */  lhu        $v1, 0x1e($v0)
/* 17B054 8002B614 3C048005 */  lui        $a0, %hi(D_80052038)
/* 17B058 8002B618 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 17B05C 8002B61C 3063FBFF */  andi       $v1, $v1, 0xfbff
/* 17B060 8002B620 A443001E */  sh         $v1, 0x1e($v0)
/* 17B064 8002B624 2C8201A4 */  sltiu      $v0, $a0, 0x1a4
/* 17B068 8002B628 14400005 */  bnez       $v0, .L8002B640
/* 17B06C 8002B62C 2402012C */   addiu     $v0, $zero, 0x12c
/* 17B070 8002B630 24020002 */  addiu      $v0, $zero, 2
/* 17B074 8002B634 3C018005 */  lui        $at, %hi(D_80051E70)
/* 17B078 8002B638 A0221E70 */  sb         $v0, %lo(D_80051E70)($at)
/* 17B07C 8002B63C 2402012C */  addiu      $v0, $zero, 0x12c
.L8002B640:
/* 17B080 8002B640 14820039 */  bne        $a0, $v0, .L8002B728
/* 17B084 8002B644 2404032A */   addiu     $a0, $zero, 0x32a
/* 17B088 8002B648 24020064 */  addiu      $v0, $zero, 0x64
/* 17B08C 8002B64C AFA20010 */  sw         $v0, 0x10($sp)
/* 17B090 8002B650 24040104 */  addiu      $a0, $zero, 0x104
/* 17B094 8002B654 240500E0 */  addiu      $a1, $zero, 0xe0
/* 17B098 8002B658 24060080 */  addiu      $a2, $zero, 0x80
/* 17B09C 8002B65C 0C026E0C */  jal        func_8009B830
/* 17B0A0 8002B660 24070001 */   addiu     $a3, $zero, 1
/* 17B0A4 8002B664 0800ADCA */  j          .L8002B728
/* 17B0A8 8002B668 2404032A */   addiu     $a0, $zero, 0x32a
.L8002B66C:
/* 17B0AC 8002B66C 8E220024 */  lw         $v0, 0x24($s1)
/* 17B0B0 8002B670 9443001E */  lhu        $v1, 0x1e($v0)
/* 17B0B4 8002B674 3C048005 */  lui        $a0, %hi(D_80052038)
/* 17B0B8 8002B678 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 17B0BC 8002B67C 3063FBFF */  andi       $v1, $v1, 0xfbff
/* 17B0C0 8002B680 A443001E */  sh         $v1, 0x1e($v0)
/* 17B0C4 8002B684 2C82021C */  sltiu      $v0, $a0, 0x21c
/* 17B0C8 8002B688 14400005 */  bnez       $v0, .L8002B6A0
/* 17B0CC 8002B68C 240201FE */   addiu     $v0, $zero, 0x1fe
/* 17B0D0 8002B690 24020003 */  addiu      $v0, $zero, 3
/* 17B0D4 8002B694 3C018005 */  lui        $at, %hi(D_80051E70)
/* 17B0D8 8002B698 A0221E70 */  sb         $v0, %lo(D_80051E70)($at)
/* 17B0DC 8002B69C 240201FE */  addiu      $v0, $zero, 0x1fe
.L8002B6A0:
/* 17B0E0 8002B6A0 14820021 */  bne        $a0, $v0, .L8002B728
/* 17B0E4 8002B6A4 2404032A */   addiu     $a0, $zero, 0x32a
/* 17B0E8 8002B6A8 0C02A5C1 */  jal        func_800A9704
/* 17B0EC 8002B6AC 2404001E */   addiu     $a0, $zero, 0x1e
/* 17B0F0 8002B6B0 0800ADCA */  j          .L8002B728
/* 17B0F4 8002B6B4 2404032A */   addiu     $a0, $zero, 0x32a
.L8002B6B8:
/* 17B0F8 8002B6B8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17B0FC 8002B6BC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17B100 8002B6C0 1462000B */  bne        $v1, $v0, .L8002B6F0
/* 17B104 8002B6C4 2402023A */   addiu     $v0, $zero, 0x23a
/* 17B108 8002B6C8 24020064 */  addiu      $v0, $zero, 0x64
/* 17B10C 8002B6CC AFA20010 */  sw         $v0, 0x10($sp)
/* 17B110 8002B6D0 2404019F */  addiu      $a0, $zero, 0x19f
/* 17B114 8002B6D4 240500E0 */  addiu      $a1, $zero, 0xe0
/* 17B118 8002B6D8 24060080 */  addiu      $a2, $zero, 0x80
/* 17B11C 8002B6DC 0C026E0C */  jal        func_8009B830
/* 17B120 8002B6E0 24070001 */   addiu     $a3, $zero, 1
/* 17B124 8002B6E4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17B128 8002B6E8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17B12C 8002B6EC 2402023A */  addiu      $v0, $zero, 0x23a
.L8002B6F0:
/* 17B130 8002B6F0 14620003 */  bne        $v1, $v0, .L8002B700
/* 17B134 8002B6F4 00000000 */   nop
/* 17B138 8002B6F8 0C02A5AF */  jal        func_800A96BC
/* 17B13C 8002B6FC 2404001E */   addiu     $a0, $zero, 0x1e
.L8002B700:
/* 17B140 8002B700 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17B144 8002B704 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17B148 8002B708 2C42023B */  sltiu      $v0, $v0, 0x23b
/* 17B14C 8002B70C 14400006 */  bnez       $v0, .L8002B728
/* 17B150 8002B710 2404032A */   addiu     $a0, $zero, 0x32a
/* 17B154 8002B714 8E230000 */  lw         $v1, ($s1)
/* 17B158 8002B718 9462001E */  lhu        $v0, 0x1e($v1)
/* 17B15C 8002B71C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 17B160 8002B720 A462001E */  sh         $v0, 0x1e($v1)
.L8002B724:
/* 17B164 8002B724 2404032A */  addiu      $a0, $zero, 0x32a
.L8002B728:
/* 17B168 8002B728 24050004 */  addiu      $a1, $zero, 4
/* 17B16C 8002B72C 0C009EE4 */  jal        func_80027B90_1775D0
/* 17B170 8002B730 00003021 */   addu      $a2, $zero, $zero
/* 17B174 8002B734 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17B178 8002B738 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17B17C 8002B73C 8FB00018 */  lw         $s0, 0x18($sp)
/* 17B180 8002B740 03E00008 */  jr         $ra
/* 17B184 8002B744 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002B748_17B188
/* 17B188 8002B748 3C028004 */  lui        $v0, %hi(D_80044B2C)
/* 17B18C 8002B74C 90424B2C */  lbu        $v0, %lo(D_80044B2C)($v0)
/* 17B190 8002B750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17B194 8002B754 10400020 */  beqz       $v0, .L8002B7D8
/* 17B198 8002B758 AFBF0010 */   sw        $ra, 0x10($sp)
/* 17B19C 8002B75C 0C009758 */  jal        func_80025D60_1757A0
/* 17B1A0 8002B760 00000000 */   nop
/* 17B1A4 8002B764 0C02A5D2 */  jal        func_800A9748
/* 17B1A8 8002B768 24040001 */   addiu     $a0, $zero, 1
/* 17B1AC 8002B76C 24020007 */  addiu      $v0, $zero, 7
/* 17B1B0 8002B770 3C018005 */  lui        $at, %hi(D_80052061)
/* 17B1B4 8002B774 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17B1B8 8002B778 24020001 */  addiu      $v0, $zero, 1
/* 17B1BC 8002B77C 3C018005 */  lui        $at, %hi(D_80052006)
/* 17B1C0 8002B780 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17B1C4 8002B784 3C028004 */  lui        $v0, %hi(D_80044AFC)
/* 17B1C8 8002B788 24424AFC */  addiu      $v0, $v0, %lo(D_80044AFC)
/* 17B1CC 8002B78C 3C018004 */  lui        $at, %hi(D_80044B2C)
/* 17B1D0 8002B790 A0204B2C */  sb         $zero, %lo(D_80044B2C)($at)
/* 17B1D4 8002B794 3C018005 */  lui        $at, %hi(D_80052060)
/* 17B1D8 8002B798 A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17B1DC 8002B79C 3C018005 */  lui        $at, %hi(D_80052000)
/* 17B1E0 8002B7A0 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17B1E4 8002B7A4 0C032663 */  jal        func_800C998C
/* 17B1E8 8002B7A8 24040004 */   addiu     $a0, $zero, 4
/* 17B1EC 8002B7AC 00402021 */  addu       $a0, $v0, $zero
/* 17B1F0 8002B7B0 3C018005 */  lui        $at, %hi(D_80052244)
/* 17B1F4 8002B7B4 AC242244 */  sw         $a0, %lo(D_80052244)($at)
/* 17B1F8 8002B7B8 0C030134 */  jal        bzero
/* 17B1FC 8002B7BC 24050004 */   addiu     $a1, $zero, 4
/* 17B200 8002B7C0 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17B204 8002B7C4 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17B208 8002B7C8 00002821 */  addu       $a1, $zero, $zero
/* 17B20C 8002B7CC 2406012C */  addiu      $a2, $zero, 0x12c
/* 17B210 8002B7D0 0C025D06 */  jal        func_80097418
/* 17B214 8002B7D4 00003821 */   addu      $a3, $zero, $zero
.L8002B7D8:
/* 17B218 8002B7D8 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17B21C 8002B7DC 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17B220 8002B7E0 24020001 */  addiu      $v0, $zero, 1
/* 17B224 8002B7E4 14620008 */  bne        $v1, $v0, .L8002B808
/* 17B228 8002B7E8 00001021 */   addu      $v0, $zero, $zero
/* 17B22C 8002B7EC 3C048005 */  lui        $a0, %hi(D_80052244)
/* 17B230 8002B7F0 8C842244 */  lw         $a0, %lo(D_80052244)($a0)
/* 17B234 8002B7F4 24020001 */  addiu      $v0, $zero, 1
/* 17B238 8002B7F8 3C018004 */  lui        $at, %hi(D_80044B2C)
/* 17B23C 8002B7FC 0C0326A1 */  jal        func_800C9A84
/* 17B240 8002B800 A0224B2C */   sb        $v0, %lo(D_80044B2C)($at)
/* 17B244 8002B804 24020001 */  addiu      $v0, $zero, 1
.L8002B808:
/* 17B248 8002B808 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17B24C 8002B80C 03E00008 */  jr         $ra
/* 17B250 8002B810 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17B254 8002B814 00000000 */  nop
/* 17B258 8002B818 00000000 */  nop
/* 17B25C 8002B81C 00000000 */  nop