glabel func_800C5A20
/* 30620 800C5A20 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 30624 800C5A24 AFB1002C */  sw         $s1, 0x2C($sp)
/* 30628 800C5A28 00808821 */  addu       $s1, $a0, $zero
/* 3062C 800C5A2C AFB40038 */  sw         $s4, 0x38($sp)
/* 30630 800C5A30 00C0A021 */  addu       $s4, $a2, $zero
/* 30634 800C5A34 AFB30034 */  sw         $s3, 0x34($sp)
/* 30638 800C5A38 00A09821 */  addu       $s3, $a1, $zero
/* 3063C 800C5A3C AFBF003C */  sw         $ra, 0x3C($sp)
/* 30640 800C5A40 AFB20030 */  sw         $s2, 0x30($sp)
/* 30644 800C5A44 0C030635 */  jal        func_800C18D4
/* 30648 800C5A48 AFB00028 */   sw        $s0, 0x28($sp)
/* 3064C 800C5A4C 02202021 */  addu       $a0, $s1, $zero
/* 30650 800C5A50 0C03170C */  jal        func_800C5C30
/* 30654 800C5A54 27A50020 */   addiu     $a1, $sp, 0x20
/* 30658 800C5A58 97A30020 */  lhu        $v1, 0x20($sp)
/* 3065C 800C5A5C 3C128015 */  lui        $s2, %hi(D_8014A260)
/* 30660 800C5A60 2652A260 */  addiu      $s2, $s2, %lo(D_8014A260)
/* 30664 800C5A64 00408021 */  addu       $s0, $v0, $zero
/* 30668 800C5A68 1600003C */  bnez       $s0, .L800C5B5C
/* 3066C 800C5A6C 3063C000 */   andi      $v1, $v1, 0xC000
/* 30670 800C5A70 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 30674 800C5A74 34028000 */  ori        $v0, $zero, 0x8000
/* 30678 800C5A78 14620007 */  bne        $v1, $v0, .L800C5A98
/* 3067C 800C5A7C 3402C000 */   ori       $v0, $zero, 0xC000
/* 30680 800C5A80 326200FF */  andi       $v0, $s3, 0xFF
/* 30684 800C5A84 2C420040 */  sltiu      $v0, $v0, 0x40
/* 30688 800C5A88 50400005 */  beql       $v0, $zero, .L800C5AA0
/* 3068C 800C5A8C 2410FFFF */   addiu     $s0, $zero, -0x1
/* 30690 800C5A90 080316A8 */  j          .L800C5AA0
/* 30694 800C5A94 00000000 */   nop
.L800C5A98:
/* 30698 800C5A98 54620001 */  bnel       $v1, $v0, .L800C5AA0
/* 3069C 800C5A9C 24100008 */   addiu     $s0, $zero, 0x8
.L800C5AA0:
/* 306A0 800C5AA0 12000005 */  beqz       $s0, .L800C5AB8
/* 306A4 800C5AA4 00000000 */   nop
/* 306A8 800C5AA8 080316D7 */  j          .L800C5B5C
/* 306AC 800C5AAC 00000000 */   nop
.L800C5AB0:
/* 306B0 800C5AB0 0C03170C */  jal        func_800C5C30
/* 306B4 800C5AB4 27A50020 */   addiu     $a1, $sp, 0x20
.L800C5AB8:
/* 306B8 800C5AB8 93A20022 */  lbu        $v0, 0x22($sp)
/* 306BC 800C5ABC 30420080 */  andi       $v0, $v0, 0x80
/* 306C0 800C5AC0 1440FFFB */  bnez       $v0, .L800C5AB0
/* 306C4 800C5AC4 02202021 */   addu      $a0, $s1, $zero
/* 306C8 800C5AC8 326400FF */  andi       $a0, $s3, 0xFF
/* 306CC 800C5ACC 0C0316E2 */  jal        func_800C5B88
/* 306D0 800C5AD0 02802821 */   addu      $a1, $s4, $zero
/* 306D4 800C5AD4 24040001 */  addiu      $a0, $zero, 0x1
/* 306D8 800C5AD8 3C108015 */  lui        $s0, %hi(D_8014A260)
/* 306DC 800C5ADC 2610A260 */  addiu      $s0, $s0, %lo(D_8014A260)
/* 306E0 800C5AE0 0C0305F4 */  jal        func_800C17D0
/* 306E4 800C5AE4 02002821 */   addu      $a1, $s0, $zero
/* 306E8 800C5AE8 02202021 */  addu       $a0, $s1, $zero
/* 306EC 800C5AEC 00002821 */  addu       $a1, $zero, $zero
/* 306F0 800C5AF0 0C030200 */  jal        func_800C0800
/* 306F4 800C5AF4 24060001 */   addiu     $a2, $zero, 0x1
/* 306F8 800C5AF8 00002021 */  addu       $a0, $zero, $zero
/* 306FC 800C5AFC 0C0305F4 */  jal        func_800C17D0
/* 30700 800C5B00 02002821 */   addu      $a1, $s0, $zero
/* 30704 800C5B04 02202021 */  addu       $a0, $s1, $zero
/* 30708 800C5B08 00002821 */  addu       $a1, $zero, $zero
/* 3070C 800C5B0C 24020005 */  addiu      $v0, $zero, 0x5
/* 30710 800C5B10 3C018017 */  lui        $at, %hi(D_8016D064)
/* 30714 800C5B14 A022D064 */  sb         $v0, %lo(D_8016D064)($at)
/* 30718 800C5B18 0C030200 */  jal        func_800C0800
/* 3071C 800C5B1C 24060001 */   addiu     $a2, $zero, 0x1
/* 30720 800C5B20 8A420004 */  lwl        $v0, 0x4($s2)
/* 30724 800C5B24 9A420007 */  lwr        $v0, 0x7($s2)
/* 30728 800C5B28 8A430008 */  lwl        $v1, 0x8($s2)
/* 3072C 800C5B2C 9A43000B */  lwr        $v1, 0xB($s2)
/* 30730 800C5B30 8A44000C */  lwl        $a0, 0xC($s2)
/* 30734 800C5B34 9A44000F */  lwr        $a0, 0xF($s2)
/* 30738 800C5B38 ABA20010 */  swl        $v0, 0x10($sp)
/* 3073C 800C5B3C BBA20013 */  swr        $v0, 0x13($sp)
/* 30740 800C5B40 ABA30014 */  swl        $v1, 0x14($sp)
/* 30744 800C5B44 BBA30017 */  swr        $v1, 0x17($sp)
/* 30748 800C5B48 ABA40018 */  swl        $a0, 0x18($sp)
/* 3074C 800C5B4C BBA4001B */  swr        $a0, 0x1B($sp)
/* 30750 800C5B50 93A20011 */  lbu        $v0, 0x11($sp)
/* 30754 800C5B54 304200C0 */  andi       $v0, $v0, 0xC0
/* 30758 800C5B58 00028102 */  srl        $s0, $v0, 4
.L800C5B5C:
/* 3075C 800C5B5C 0C030650 */  jal        func_800C1940
/* 30760 800C5B60 00000000 */   nop
/* 30764 800C5B64 02001021 */  addu       $v0, $s0, $zero
/* 30768 800C5B68 8FBF003C */  lw         $ra, 0x3C($sp)
/* 3076C 800C5B6C 8FB40038 */  lw         $s4, 0x38($sp)
/* 30770 800C5B70 8FB30034 */  lw         $s3, 0x34($sp)
/* 30774 800C5B74 8FB20030 */  lw         $s2, 0x30($sp)
/* 30778 800C5B78 8FB1002C */  lw         $s1, 0x2C($sp)
/* 3077C 800C5B7C 8FB00028 */  lw         $s0, 0x28($sp)
/* 30780 800C5B80 03E00008 */  jr         $ra
/* 30784 800C5B84 27BD0040 */   addiu     $sp, $sp, 0x40
.size func_800C5A20, . - func_800C5A20
