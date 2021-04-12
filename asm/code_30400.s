.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_800C5800
/* 30400 800C5800 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 30404 800C5804 AFB1002C */  sw         $s1, 0x2c($sp)
/* 30408 800C5808 00808821 */  addu       $s1, $a0, $zero
/* 3040C 800C580C AFB30034 */  sw         $s3, 0x34($sp)
/* 30410 800C5810 00C09821 */  addu       $s3, $a2, $zero
/* 30414 800C5814 AFB40038 */  sw         $s4, 0x38($sp)
/* 30418 800C5818 00A0A021 */  addu       $s4, $a1, $zero
/* 3041C 800C581C AFBF003C */  sw         $ra, 0x3c($sp)
/* 30420 800C5820 AFB20030 */  sw         $s2, 0x30($sp)
/* 30424 800C5824 0C030635 */  jal        func_800C18D4
/* 30428 800C5828 AFB00028 */   sw        $s0, 0x28($sp)
/* 3042C 800C582C 02202021 */  addu       $a0, $s1, $zero
/* 30430 800C5830 0C03170C */  jal        func_800C5C30
/* 30434 800C5834 27A50010 */   addiu     $a1, $sp, 0x10
/* 30438 800C5838 97A30010 */  lhu        $v1, 0x10($sp)
/* 3043C 800C583C 3C128015 */  lui        $s2, %hi(D_8014A260)
/* 30440 800C5840 2652A260 */  addiu      $s2, $s2, %lo(D_8014A260)
/* 30444 800C5844 00408021 */  addu       $s0, $v0, $zero
/* 30448 800C5848 16000048 */  bnez       $s0, .L800C596C
/* 3044C 800C584C 3063C000 */   andi      $v1, $v1, 0xc000
/* 30450 800C5850 3063FFFF */  andi       $v1, $v1, 0xffff
/* 30454 800C5854 34028000 */  ori        $v0, $zero, 0x8000
/* 30458 800C5858 14620007 */  bne        $v1, $v0, .L800C5878
/* 3045C 800C585C 3402C000 */   ori       $v0, $zero, 0xc000
/* 30460 800C5860 328200FF */  andi       $v0, $s4, 0xff
/* 30464 800C5864 2C420040 */  sltiu      $v0, $v0, 0x40
/* 30468 800C5868 50400005 */  beql       $v0, $zero, .L800C5880
/* 3046C 800C586C 2410FFFF */   addiu     $s0, $zero, -1
/* 30470 800C5870 08031620 */  j          .L800C5880
/* 30474 800C5874 00000000 */   nop
.L800C5878:
/* 30478 800C5878 54620001 */  bnel       $v1, $v0, .L800C5880
/* 3047C 800C587C 24100008 */   addiu     $s0, $zero, 8
.L800C5880:
/* 30480 800C5880 12000005 */  beqz       $s0, .L800C5898
/* 30484 800C5884 00000000 */   nop
/* 30488 800C5888 0803165B */  j          .L800C596C
/* 3048C 800C588C 00000000 */   nop
.L800C5890:
/* 30490 800C5890 0C03170C */  jal        func_800C5C30
/* 30494 800C5894 27A50010 */   addiu     $a1, $sp, 0x10
.L800C5898:
/* 30498 800C5898 93A20012 */  lbu        $v0, 0x12($sp)
/* 3049C 800C589C 30420080 */  andi       $v0, $v0, 0x80
/* 304A0 800C58A0 1440FFFB */  bnez       $v0, .L800C5890
/* 304A4 800C58A4 02202021 */   addu      $a0, $s1, $zero
/* 304A8 800C58A8 0C031666 */  jal        func_800C5998
/* 304AC 800C58AC 328400FF */   andi      $a0, $s4, 0xff
/* 304B0 800C58B0 24040001 */  addiu      $a0, $zero, 1
/* 304B4 800C58B4 3C108015 */  lui        $s0, %hi(D_8014A260)
/* 304B8 800C58B8 2610A260 */  addiu      $s0, $s0, %lo(D_8014A260)
/* 304BC 800C58BC 0C0305F4 */  jal        func_800C17D0
/* 304C0 800C58C0 02002821 */   addu      $a1, $s0, $zero
/* 304C4 800C58C4 02202021 */  addu       $a0, $s1, $zero
/* 304C8 800C58C8 00002821 */  addu       $a1, $zero, $zero
/* 304CC 800C58CC 0C030200 */  jal        func_800C0800
/* 304D0 800C58D0 24060001 */   addiu     $a2, $zero, 1
/* 304D4 800C58D4 00002021 */  addu       $a0, $zero, $zero
/* 304D8 800C58D8 0C0305F4 */  jal        func_800C17D0
/* 304DC 800C58DC 02002821 */   addu      $a1, $s0, $zero
/* 304E0 800C58E0 24020004 */  addiu      $v0, $zero, 4
/* 304E4 800C58E4 3C018017 */  lui        $at, %hi(D_8016D064)
/* 304E8 800C58E8 A022D064 */  sb         $v0, %lo(D_8016D064)($at)
/* 304EC 800C58EC 02202021 */  addu       $a0, $s1, $zero
/* 304F0 800C58F0 00002821 */  addu       $a1, $zero, $zero
/* 304F4 800C58F4 0C030200 */  jal        func_800C0800
/* 304F8 800C58F8 24060001 */   addiu     $a2, $zero, 1
/* 304FC 800C58FC 24020003 */  addiu      $v0, $zero, 3
.L800C5900:
/* 30500 800C5900 2442FFFF */  addiu      $v0, $v0, -1
/* 30504 800C5904 0441FFFE */  bgez       $v0, .L800C5900
/* 30508 800C5908 26520001 */   addiu     $s2, $s2, 1
/* 3050C 800C590C 8A420000 */  lwl        $v0, ($s2)
/* 30510 800C5910 9A420003 */  lwr        $v0, 3($s2)
/* 30514 800C5914 8A430004 */  lwl        $v1, 4($s2)
/* 30518 800C5918 9A430007 */  lwr        $v1, 7($s2)
/* 3051C 800C591C 8A440008 */  lwl        $a0, 8($s2)
/* 30520 800C5920 9A44000B */  lwr        $a0, 0xb($s2)
/* 30524 800C5924 ABA20018 */  swl        $v0, 0x18($sp)
/* 30528 800C5928 BBA2001B */  swr        $v0, 0x1b($sp)
/* 3052C 800C592C ABA3001C */  swl        $v1, 0x1c($sp)
/* 30530 800C5930 BBA3001F */  swr        $v1, 0x1f($sp)
/* 30534 800C5934 ABA40020 */  swl        $a0, 0x20($sp)
/* 30538 800C5938 BBA40023 */  swr        $a0, 0x23($sp)
/* 3053C 800C593C 93A20019 */  lbu        $v0, 0x19($sp)
/* 30540 800C5940 304200C0 */  andi       $v0, $v0, 0xc0
/* 30544 800C5944 00028102 */  srl        $s0, $v0, 4
/* 30548 800C5948 16000008 */  bnez       $s0, .L800C596C
/* 3054C 800C594C 27A3001C */   addiu     $v1, $sp, 0x1c
/* 30550 800C5950 27A40024 */  addiu      $a0, $sp, 0x24
.L800C5954:
/* 30554 800C5954 90620000 */  lbu        $v0, ($v1)
/* 30558 800C5958 24630001 */  addiu      $v1, $v1, 1
/* 3055C 800C595C A2620000 */  sb         $v0, ($s3)
/* 30560 800C5960 0064102A */  slt        $v0, $v1, $a0
/* 30564 800C5964 1440FFFB */  bnez       $v0, .L800C5954
/* 30568 800C5968 26730001 */   addiu     $s3, $s3, 1
.L800C596C:
/* 3056C 800C596C 0C030650 */  jal        func_800C1940
/* 30570 800C5970 00000000 */   nop
/* 30574 800C5974 02001021 */  addu       $v0, $s0, $zero
/* 30578 800C5978 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3057C 800C597C 8FB40038 */  lw         $s4, 0x38($sp)
/* 30580 800C5980 8FB30034 */  lw         $s3, 0x34($sp)
/* 30584 800C5984 8FB20030 */  lw         $s2, 0x30($sp)
/* 30588 800C5988 8FB1002C */  lw         $s1, 0x2c($sp)
/* 3058C 800C598C 8FB00028 */  lw         $s0, 0x28($sp)
/* 30590 800C5990 03E00008 */  jr         $ra
/* 30594 800C5994 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800C5998
/* 30598 800C5998 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3059C 800C599C 3C068015 */  lui        $a2, %hi(D_8014A260)
/* 305A0 800C59A0 24C6A260 */  addiu      $a2, $a2, %lo(D_8014A260)
/* 305A4 800C59A4 24030003 */  addiu      $v1, $zero, 3
/* 305A8 800C59A8 24020001 */  addiu      $v0, $zero, 1
/* 305AC 800C59AC 3C018015 */  lui        $at, %hi(D_8014A29C)
/* 305B0 800C59B0 AC22A29C */  sw         $v0, %lo(D_8014A29C)($at)
/* 305B4 800C59B4 24020002 */  addiu      $v0, $zero, 2
/* 305B8 800C59B8 A3A20000 */  sb         $v0, ($sp)
/* 305BC 800C59BC 24020008 */  addiu      $v0, $zero, 8
/* 305C0 800C59C0 A3A20001 */  sb         $v0, 1($sp)
/* 305C4 800C59C4 24020004 */  addiu      $v0, $zero, 4
/* 305C8 800C59C8 A3A20002 */  sb         $v0, 2($sp)
/* 305CC 800C59CC A3A40003 */  sb         $a0, 3($sp)
.L800C59D0:
/* 305D0 800C59D0 A0C00000 */  sb         $zero, ($a2)
/* 305D4 800C59D4 2463FFFF */  addiu      $v1, $v1, -1
/* 305D8 800C59D8 0461FFFD */  bgez       $v1, .L800C59D0
/* 305DC 800C59DC 24C60001 */   addiu     $a2, $a2, 1
/* 305E0 800C59E0 8BA20000 */  lwl        $v0, ($sp)
/* 305E4 800C59E4 9BA20003 */  lwr        $v0, 3($sp)
/* 305E8 800C59E8 8BA30004 */  lwl        $v1, 4($sp)
/* 305EC 800C59EC 9BA30007 */  lwr        $v1, 7($sp)
/* 305F0 800C59F0 8BA40008 */  lwl        $a0, 8($sp)
/* 305F4 800C59F4 9BA4000B */  lwr        $a0, 0xb($sp)
/* 305F8 800C59F8 A8C20000 */  swl        $v0, ($a2)
/* 305FC 800C59FC B8C20003 */  swr        $v0, 3($a2)
/* 30600 800C5A00 A8C30004 */  swl        $v1, 4($a2)
/* 30604 800C5A04 B8C30007 */  swr        $v1, 7($a2)
/* 30608 800C5A08 A8C40008 */  swl        $a0, 8($a2)
/* 3060C 800C5A0C B8C4000B */  swr        $a0, 0xb($a2)
/* 30610 800C5A10 240200FE */  addiu      $v0, $zero, 0xfe
/* 30614 800C5A14 A0C2000C */  sb         $v0, 0xc($a2)
/* 30618 800C5A18 03E00008 */  jr         $ra
/* 3061C 800C5A1C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800C5A20
/* 30620 800C5A20 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 30624 800C5A24 AFB1002C */  sw         $s1, 0x2c($sp)
/* 30628 800C5A28 00808821 */  addu       $s1, $a0, $zero
/* 3062C 800C5A2C AFB40038 */  sw         $s4, 0x38($sp)
/* 30630 800C5A30 00C0A021 */  addu       $s4, $a2, $zero
/* 30634 800C5A34 AFB30034 */  sw         $s3, 0x34($sp)
/* 30638 800C5A38 00A09821 */  addu       $s3, $a1, $zero
/* 3063C 800C5A3C AFBF003C */  sw         $ra, 0x3c($sp)
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
/* 3066C 800C5A6C 3063C000 */   andi      $v1, $v1, 0xc000
/* 30670 800C5A70 3063FFFF */  andi       $v1, $v1, 0xffff
/* 30674 800C5A74 34028000 */  ori        $v0, $zero, 0x8000
/* 30678 800C5A78 14620007 */  bne        $v1, $v0, .L800C5A98
/* 3067C 800C5A7C 3402C000 */   ori       $v0, $zero, 0xc000
/* 30680 800C5A80 326200FF */  andi       $v0, $s3, 0xff
/* 30684 800C5A84 2C420040 */  sltiu      $v0, $v0, 0x40
/* 30688 800C5A88 50400005 */  beql       $v0, $zero, .L800C5AA0
/* 3068C 800C5A8C 2410FFFF */   addiu     $s0, $zero, -1
/* 30690 800C5A90 080316A8 */  j          .L800C5AA0
/* 30694 800C5A94 00000000 */   nop
.L800C5A98:
/* 30698 800C5A98 54620001 */  bnel       $v1, $v0, .L800C5AA0
/* 3069C 800C5A9C 24100008 */   addiu     $s0, $zero, 8
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
/* 306C8 800C5AC8 326400FF */  andi       $a0, $s3, 0xff
/* 306CC 800C5ACC 0C0316E2 */  jal        func_800C5B88
/* 306D0 800C5AD0 02802821 */   addu      $a1, $s4, $zero
/* 306D4 800C5AD4 24040001 */  addiu      $a0, $zero, 1
/* 306D8 800C5AD8 3C108015 */  lui        $s0, %hi(D_8014A260)
/* 306DC 800C5ADC 2610A260 */  addiu      $s0, $s0, %lo(D_8014A260)
/* 306E0 800C5AE0 0C0305F4 */  jal        func_800C17D0
/* 306E4 800C5AE4 02002821 */   addu      $a1, $s0, $zero
/* 306E8 800C5AE8 02202021 */  addu       $a0, $s1, $zero
/* 306EC 800C5AEC 00002821 */  addu       $a1, $zero, $zero
/* 306F0 800C5AF0 0C030200 */  jal        func_800C0800
/* 306F4 800C5AF4 24060001 */   addiu     $a2, $zero, 1
/* 306F8 800C5AF8 00002021 */  addu       $a0, $zero, $zero
/* 306FC 800C5AFC 0C0305F4 */  jal        func_800C17D0
/* 30700 800C5B00 02002821 */   addu      $a1, $s0, $zero
/* 30704 800C5B04 02202021 */  addu       $a0, $s1, $zero
/* 30708 800C5B08 00002821 */  addu       $a1, $zero, $zero
/* 3070C 800C5B0C 24020005 */  addiu      $v0, $zero, 5
/* 30710 800C5B10 3C018017 */  lui        $at, %hi(D_8016D064)
/* 30714 800C5B14 A022D064 */  sb         $v0, %lo(D_8016D064)($at)
/* 30718 800C5B18 0C030200 */  jal        func_800C0800
/* 3071C 800C5B1C 24060001 */   addiu     $a2, $zero, 1
/* 30720 800C5B20 8A420004 */  lwl        $v0, 4($s2)
/* 30724 800C5B24 9A420007 */  lwr        $v0, 7($s2)
/* 30728 800C5B28 8A430008 */  lwl        $v1, 8($s2)
/* 3072C 800C5B2C 9A43000B */  lwr        $v1, 0xb($s2)
/* 30730 800C5B30 8A44000C */  lwl        $a0, 0xc($s2)
/* 30734 800C5B34 9A44000F */  lwr        $a0, 0xf($s2)
/* 30738 800C5B38 ABA20010 */  swl        $v0, 0x10($sp)
/* 3073C 800C5B3C BBA20013 */  swr        $v0, 0x13($sp)
/* 30740 800C5B40 ABA30014 */  swl        $v1, 0x14($sp)
/* 30744 800C5B44 BBA30017 */  swr        $v1, 0x17($sp)
/* 30748 800C5B48 ABA40018 */  swl        $a0, 0x18($sp)
/* 3074C 800C5B4C BBA4001B */  swr        $a0, 0x1b($sp)
/* 30750 800C5B50 93A20011 */  lbu        $v0, 0x11($sp)
/* 30754 800C5B54 304200C0 */  andi       $v0, $v0, 0xc0
/* 30758 800C5B58 00028102 */  srl        $s0, $v0, 4
.L800C5B5C:
/* 3075C 800C5B5C 0C030650 */  jal        func_800C1940
/* 30760 800C5B60 00000000 */   nop
/* 30764 800C5B64 02001021 */  addu       $v0, $s0, $zero
/* 30768 800C5B68 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3076C 800C5B6C 8FB40038 */  lw         $s4, 0x38($sp)
/* 30770 800C5B70 8FB30034 */  lw         $s3, 0x34($sp)
/* 30774 800C5B74 8FB20030 */  lw         $s2, 0x30($sp)
/* 30778 800C5B78 8FB1002C */  lw         $s1, 0x2c($sp)
/* 3077C 800C5B7C 8FB00028 */  lw         $s0, 0x28($sp)
/* 30780 800C5B80 03E00008 */  jr         $ra
/* 30784 800C5B84 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800C5B88
/* 30788 800C5B88 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3078C 800C5B8C 3C068015 */  lui        $a2, %hi(D_8014A260)
/* 30790 800C5B90 24C6A260 */  addiu      $a2, $a2, %lo(D_8014A260)
/* 30794 800C5B94 27A30004 */  addiu      $v1, $sp, 4
/* 30798 800C5B98 27A7000C */  addiu      $a3, $sp, 0xc
/* 3079C 800C5B9C 24020001 */  addiu      $v0, $zero, 1
/* 307A0 800C5BA0 3C018015 */  lui        $at, %hi(D_8014A29C)
/* 307A4 800C5BA4 AC22A29C */  sw         $v0, %lo(D_8014A29C)($at)
/* 307A8 800C5BA8 2402000A */  addiu      $v0, $zero, 0xa
/* 307AC 800C5BAC A3A20000 */  sb         $v0, ($sp)
/* 307B0 800C5BB0 24020001 */  addiu      $v0, $zero, 1
/* 307B4 800C5BB4 A3A20001 */  sb         $v0, 1($sp)
/* 307B8 800C5BB8 24020005 */  addiu      $v0, $zero, 5
/* 307BC 800C5BBC A3A20002 */  sb         $v0, 2($sp)
/* 307C0 800C5BC0 A3A40003 */  sb         $a0, 3($sp)
.L800C5BC4:
/* 307C4 800C5BC4 90A20000 */  lbu        $v0, ($a1)
/* 307C8 800C5BC8 A0620000 */  sb         $v0, ($v1)
/* 307CC 800C5BCC 24630001 */  addiu      $v1, $v1, 1
/* 307D0 800C5BD0 0067102A */  slt        $v0, $v1, $a3
/* 307D4 800C5BD4 1440FFFB */  bnez       $v0, .L800C5BC4
/* 307D8 800C5BD8 24A50001 */   addiu     $a1, $a1, 1
/* 307DC 800C5BDC 24020003 */  addiu      $v0, $zero, 3
.L800C5BE0:
/* 307E0 800C5BE0 A0C00000 */  sb         $zero, ($a2)
/* 307E4 800C5BE4 2442FFFF */  addiu      $v0, $v0, -1
/* 307E8 800C5BE8 0441FFFD */  bgez       $v0, .L800C5BE0
/* 307EC 800C5BEC 24C60001 */   addiu     $a2, $a2, 1
/* 307F0 800C5BF0 8BA20000 */  lwl        $v0, ($sp)
/* 307F4 800C5BF4 9BA20003 */  lwr        $v0, 3($sp)
/* 307F8 800C5BF8 8BA30004 */  lwl        $v1, 4($sp)
/* 307FC 800C5BFC 9BA30007 */  lwr        $v1, 7($sp)
/* 30800 800C5C00 8BA40008 */  lwl        $a0, 8($sp)
/* 30804 800C5C04 9BA4000B */  lwr        $a0, 0xb($sp)
/* 30808 800C5C08 A8C20000 */  swl        $v0, ($a2)
/* 3080C 800C5C0C B8C20003 */  swr        $v0, 3($a2)
/* 30810 800C5C10 A8C30004 */  swl        $v1, 4($a2)
/* 30814 800C5C14 B8C30007 */  swr        $v1, 7($a2)
/* 30818 800C5C18 A8C40008 */  swl        $a0, 8($a2)
/* 3081C 800C5C1C B8C4000B */  swr        $a0, 0xb($a2)
/* 30820 800C5C20 240200FE */  addiu      $v0, $zero, 0xfe
/* 30824 800C5C24 A0C2000C */  sb         $v0, 0xc($a2)
/* 30828 800C5C28 03E00008 */  jr         $ra
/* 3082C 800C5C2C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800C5C30
/* 30830 800C5C30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30834 800C5C34 AFB30024 */  sw         $s3, 0x24($sp)
/* 30838 800C5C38 00809821 */  addu       $s3, $a0, $zero
/* 3083C 800C5C3C AFB20020 */  sw         $s2, 0x20($sp)
/* 30840 800C5C40 00A09021 */  addu       $s2, $a1, $zero
/* 30844 800C5C44 2402000F */  addiu      $v0, $zero, 0xf
/* 30848 800C5C48 3C038015 */  lui        $v1, %hi(D_8014A29C)
/* 3084C 800C5C4C 2463A29C */  addiu      $v1, $v1, %lo(D_8014A29C)
/* 30850 800C5C50 AFBF0028 */  sw         $ra, 0x28($sp)
/* 30854 800C5C54 AFB1001C */  sw         $s1, 0x1c($sp)
/* 30858 800C5C58 AFB00018 */  sw         $s0, 0x18($sp)
.L800C5C5C:
/* 3085C 800C5C5C AC600000 */  sw         $zero, ($v1)
/* 30860 800C5C60 2442FFFF */  addiu      $v0, $v0, -1
/* 30864 800C5C64 0441FFFD */  bgez       $v0, .L800C5C5C
/* 30868 800C5C68 2463FFFC */   addiu     $v1, $v1, -4
/* 3086C 800C5C6C 3C038015 */  lui        $v1, %hi(D_8014A29C)
/* 30870 800C5C70 2463A29C */  addiu      $v1, $v1, %lo(D_8014A29C)
/* 30874 800C5C74 24020001 */  addiu      $v0, $zero, 1
/* 30878 800C5C78 AC620000 */  sw         $v0, ($v1)
/* 3087C 800C5C7C 2466FFC4 */  addiu      $a2, $v1, -0x3c
/* 30880 800C5C80 24020003 */  addiu      $v0, $zero, 3
.L800C5C84:
/* 30884 800C5C84 A0C00000 */  sb         $zero, ($a2)
/* 30888 800C5C88 2442FFFF */  addiu      $v0, $v0, -1
/* 3088C 800C5C8C 0441FFFD */  bgez       $v0, .L800C5C84
/* 30890 800C5C90 24C60001 */   addiu     $a2, $a2, 1
/* 30894 800C5C94 240300FF */  addiu      $v1, $zero, 0xff
/* 30898 800C5C98 24020001 */  addiu      $v0, $zero, 1
/* 3089C 800C5C9C A3A20011 */  sb         $v0, 0x11($sp)
/* 308A0 800C5CA0 24020003 */  addiu      $v0, $zero, 3
/* 308A4 800C5CA4 A3A30010 */  sb         $v1, 0x10($sp)
/* 308A8 800C5CA8 A3A20012 */  sb         $v0, 0x12($sp)
/* 308AC 800C5CAC A3A00013 */  sb         $zero, 0x13($sp)
/* 308B0 800C5CB0 A3A30014 */  sb         $v1, 0x14($sp)
/* 308B4 800C5CB4 A3A30015 */  sb         $v1, 0x15($sp)
/* 308B8 800C5CB8 A3A30016 */  sb         $v1, 0x16($sp)
/* 308BC 800C5CBC A3A30017 */  sb         $v1, 0x17($sp)
/* 308C0 800C5CC0 8BA20010 */  lwl        $v0, 0x10($sp)
/* 308C4 800C5CC4 9BA20013 */  lwr        $v0, 0x13($sp)
/* 308C8 800C5CC8 8BA30014 */  lwl        $v1, 0x14($sp)
/* 308CC 800C5CCC 9BA30017 */  lwr        $v1, 0x17($sp)
/* 308D0 800C5CD0 A8C20000 */  swl        $v0, ($a2)
/* 308D4 800C5CD4 B8C20003 */  swr        $v0, 3($a2)
/* 308D8 800C5CD8 A8C30004 */  swl        $v1, 4($a2)
/* 308DC 800C5CDC B8C30007 */  swr        $v1, 7($a2)
/* 308E0 800C5CE0 24040001 */  addiu      $a0, $zero, 1
/* 308E4 800C5CE4 3C118015 */  lui        $s1, %hi(D_8014A260)
/* 308E8 800C5CE8 2631A260 */  addiu      $s1, $s1, %lo(D_8014A260)
/* 308EC 800C5CEC 02202821 */  addu       $a1, $s1, $zero
/* 308F0 800C5CF0 241000FE */  addiu      $s0, $zero, 0xfe
/* 308F4 800C5CF4 0C0305F4 */  jal        func_800C17D0
/* 308F8 800C5CF8 A0D00008 */   sb        $s0, 8($a2)
/* 308FC 800C5CFC 02602021 */  addu       $a0, $s3, $zero
/* 30900 800C5D00 00002821 */  addu       $a1, $zero, $zero
/* 30904 800C5D04 0C030200 */  jal        func_800C0800
/* 30908 800C5D08 24060001 */   addiu     $a2, $zero, 1
/* 3090C 800C5D0C 00002021 */  addu       $a0, $zero, $zero
/* 30910 800C5D10 3C018017 */  lui        $at, %hi(D_8016D064)
/* 30914 800C5D14 A030D064 */  sb         $s0, %lo(D_8016D064)($at)
/* 30918 800C5D18 0C0305F4 */  jal        func_800C17D0
/* 3091C 800C5D1C 02202821 */   addu      $a1, $s1, $zero
/* 30920 800C5D20 02602021 */  addu       $a0, $s3, $zero
/* 30924 800C5D24 00002821 */  addu       $a1, $zero, $zero
/* 30928 800C5D28 24060001 */  addiu      $a2, $zero, 1
/* 3092C 800C5D2C 0C030200 */  jal        func_800C0800
/* 30930 800C5D30 00408021 */   addu      $s0, $v0, $zero
/* 30934 800C5D34 1600001E */  bnez       $s0, .L800C5DB0
/* 30938 800C5D38 02001021 */   addu      $v0, $s0, $zero
/* 3093C 800C5D3C 02203021 */  addu       $a2, $s1, $zero
/* 30940 800C5D40 24020003 */  addiu      $v0, $zero, 3
.L800C5D44:
/* 30944 800C5D44 A0C00000 */  sb         $zero, ($a2)
/* 30948 800C5D48 2442FFFF */  addiu      $v0, $v0, -1
/* 3094C 800C5D4C 0441FFFD */  bgez       $v0, .L800C5D44
/* 30950 800C5D50 24C60001 */   addiu     $a2, $a2, 1
/* 30954 800C5D54 88C20000 */  lwl        $v0, ($a2)
/* 30958 800C5D58 98C20003 */  lwr        $v0, 3($a2)
/* 3095C 800C5D5C 88C30004 */  lwl        $v1, 4($a2)
/* 30960 800C5D60 98C30007 */  lwr        $v1, 7($a2)
/* 30964 800C5D64 ABA20010 */  swl        $v0, 0x10($sp)
/* 30968 800C5D68 BBA20013 */  swr        $v0, 0x13($sp)
/* 3096C 800C5D6C ABA30014 */  swl        $v1, 0x14($sp)
/* 30970 800C5D70 BBA30017 */  swr        $v1, 0x17($sp)
/* 30974 800C5D74 93A20012 */  lbu        $v0, 0x12($sp)
/* 30978 800C5D78 304200C0 */  andi       $v0, $v0, 0xc0
/* 3097C 800C5D7C 00021102 */  srl        $v0, $v0, 4
/* 30980 800C5D80 A2420003 */  sb         $v0, 3($s2)
/* 30984 800C5D84 93A20015 */  lbu        $v0, 0x15($sp)
/* 30988 800C5D88 93A30014 */  lbu        $v1, 0x14($sp)
/* 3098C 800C5D8C 92440003 */  lbu        $a0, 3($s2)
/* 30990 800C5D90 00021200 */  sll        $v0, $v0, 8
/* 30994 800C5D94 00621825 */  or         $v1, $v1, $v0
/* 30998 800C5D98 A6430000 */  sh         $v1, ($s2)
/* 3099C 800C5D9C 93A30016 */  lbu        $v1, 0x16($sp)
/* 309A0 800C5DA0 0004102B */  sltu       $v0, $zero, $a0
/* 309A4 800C5DA4 00021023 */  negu       $v0, $v0
/* 309A8 800C5DA8 00821024 */  and        $v0, $a0, $v0
/* 309AC 800C5DAC A2430002 */  sb         $v1, 2($s2)
.L800C5DB0:
/* 309B0 800C5DB0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 309B4 800C5DB4 8FB30024 */  lw         $s3, 0x24($sp)
/* 309B8 800C5DB8 8FB20020 */  lw         $s2, 0x20($sp)
/* 309BC 800C5DBC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 309C0 800C5DC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 309C4 800C5DC4 03E00008 */  jr         $ra
/* 309C8 800C5DC8 27BD0030 */   addiu     $sp, $sp, 0x30
/* 309CC 800C5DCC 00000000 */  nop

glabel func_800C5DD0
/* 309D0 800C5DD0 3C1A800C */  lui        $k0, %hi(func_800C5DE0)
/* 309D4 800C5DD4 275A5DE0 */  addiu      $k0, $k0, %lo(func_800C5DE0)
/* 309D8 800C5DD8 03400008 */  jr         $k0
/* 309DC 800C5DDC 00000000 */   nop

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
/* 30A18 800C5E18 3C1A800F */  lui        $k0, %hi(__osRunningThread)
/* 30A1C 800C5E1C 8F5A69C0 */  lw         $k0, %lo(__osRunningThread)($k0)
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
/* 30E64 800C6264 3C0A800F */  lui        $t2, %hi(__osRunQueue)
/* 30E68 800C6268 8D4A69B8 */  lw         $t2, %lo(__osRunQueue)($t2)
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
/* 30EE4 800C62E4 3C0A800F */  lui        $t2, %hi(__osRunQueue)
/* 30EE8 800C62E8 8D4A69B8 */  lw         $t2, %lo(__osRunQueue)($t2)
/* 30EEC 800C62EC 8D4B0004 */  lw         $t3, 4($t2)
/* 30EF0 800C62F0 012B082A */  slt        $at, $t1, $t3
/* 30EF4 800C62F4 10200007 */  beqz       $at, .L800C6314
/* 30EF8 800C62F8 00000000 */   nop
/* 30EFC 800C62FC 03402821 */  addu       $a1, $k0, $zero
/* 30F00 800C6300 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 30F04 800C6304 0C031955 */  jal        __osEnqueueThread
/* 30F08 800C6308 248469B8 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* 30F0C 800C630C 0803196B */  j          .L800C65AC
/* 30F10 800C6310 00000000 */   nop
.L800C6314:
/* 30F14 800C6314 3C09800F */  lui        $t1, %hi(__osRunQueue)
/* 30F18 800C6318 252969B8 */  addiu      $t1, $t1, %lo(__osRunQueue)
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

glabel func_800C635C
/* 30F5C 800C635C 03E09021 */  addu       $s2, $ra, $zero
/* 30F60 800C6360 3C0A8017 */  lui        $t2, %hi(D_8016D770)
/* 30F64 800C6364 254AD770 */  addiu      $t2, $t2, %lo(D_8016D770)
/* 30F68 800C6368 01445021 */  addu       $t2, $t2, $a0
/* 30F6C 800C636C 8D490000 */  lw         $t1, ($t2)
/* 30F70 800C6370 11200027 */  beqz       $t1, .L800C6410
/* 30F74 800C6374 00000000 */   nop
/* 30F78 800C6378 8D2B0008 */  lw         $t3, 8($t1)
/* 30F7C 800C637C 8D2C0010 */  lw         $t4, 0x10($t1)
/* 30F80 800C6380 016C082A */  slt        $at, $t3, $t4
/* 30F84 800C6384 10200022 */  beqz       $at, .L800C6410
/* 30F88 800C6388 00000000 */   nop
/* 30F8C 800C638C 8D2D000C */  lw         $t5, 0xc($t1)
/* 30F90 800C6390 01AB6821 */  addu       $t5, $t5, $t3
/* 30F94 800C6394 01AC001A */  div        $zero, $t5, $t4
/* 30F98 800C6398 15800002 */  bnez       $t4, .L800C63A4
/* 30F9C 800C639C 00000000 */   nop
/* 30FA0 800C63A0 0007000D */  break      7
.L800C63A4:
/* 30FA4 800C63A4 2401FFFF */   addiu     $at, $zero, -1
/* 30FA8 800C63A8 15810004 */  bne        $t4, $at, .L800C63BC
/* 30FAC 800C63AC 3C018000 */   lui       $at, 0x8000
/* 30FB0 800C63B0 15A10002 */  bne        $t5, $at, .L800C63BC
/* 30FB4 800C63B4 00000000 */   nop
/* 30FB8 800C63B8 0006000D */  break      6
.L800C63BC:
/* 30FBC 800C63BC 00006810 */   mfhi      $t5
/* 30FC0 800C63C0 8D2C0014 */  lw         $t4, 0x14($t1)
/* 30FC4 800C63C4 24010004 */  addiu      $at, $zero, 4
/* 30FC8 800C63C8 01A10018 */  mult       $t5, $at
/* 30FCC 800C63CC 00006812 */  mflo       $t5
/* 30FD0 800C63D0 018D6021 */  addu       $t4, $t4, $t5
/* 30FD4 800C63D4 8D4D0004 */  lw         $t5, 4($t2)
/* 30FD8 800C63D8 AD8D0000 */  sw         $t5, ($t4)
/* 30FDC 800C63DC 256A0001 */  addiu      $t2, $t3, 1
/* 30FE0 800C63E0 AD2A0008 */  sw         $t2, 8($t1)
/* 30FE4 800C63E4 8D2A0000 */  lw         $t2, ($t1)
/* 30FE8 800C63E8 8D4B0000 */  lw         $t3, ($t2)
/* 30FEC 800C63EC 11600008 */  beqz       $t3, .L800C6410
/* 30FF0 800C63F0 00000000 */   nop
/* 30FF4 800C63F4 0C031967 */  jal        __osPopThread
/* 30FF8 800C63F8 01202021 */   addu      $a0, $t1, $zero
/* 30FFC 800C63FC 00405021 */  addu       $t2, $v0, $zero
/* 31000 800C6400 01402821 */  addu       $a1, $t2, $zero
/* 31004 800C6404 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 31008 800C6408 0C031955 */  jal        __osEnqueueThread
/* 3100C 800C640C 248469B8 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L800C6410:
/* 31010 800C6410 02400008 */  jr         $s2
/* 31014 800C6414 00000000 */   nop
.L800C6418:
/* 31018 800C6418 3C013000 */  lui        $at, 0x3000
/* 3101C 800C641C 01014824 */  and        $t1, $t0, $at
/* 31020 800C6420 00094F02 */  srl        $t1, $t1, 0x1c
/* 31024 800C6424 240A0001 */  addiu      $t2, $zero, 1
/* 31028 800C6428 152AFFC0 */  bne        $t1, $t2, .L800C632C
/* 3102C 800C642C 00000000 */   nop
/* 31030 800C6430 24090001 */  addiu      $t1, $zero, 1
/* 31034 800C6434 AF490018 */  sw         $t1, 0x18($k0)
/* 31038 800C6438 8F5B0118 */  lw         $k1, 0x118($k0)
/* 3103C 800C643C 3C012000 */  lui        $at, 0x2000
/* 31040 800C6440 0361D825 */  or         $k1, $k1, $at
/* 31044 800C6444 1000FFB3 */  b          .L800C6314
/* 31048 800C6448 AF5B0118 */   sw        $k1, 0x118($k0)

glabel __osEnqueueAndYield
/* 3104C 800C644C 3C05800F */  lui        $a1, %hi(__osRunningThread)
/* 31050 800C6450 8CA569C0 */  lw         $a1, %lo(__osRunningThread)($a1)
/* 31054 800C6454 40086000 */  mfc0       $t0, $12
/* 31058 800C6458 35080002 */  ori        $t0, $t0, 2
/* 3105C 800C645C ACA80118 */  sw         $t0, 0x118($a1)
/* 31060 800C6460 FCB00098 */  sd         $s0, 0x98($a1)
/* 31064 800C6464 FCB100A0 */  sd         $s1, 0xa0($a1)
/* 31068 800C6468 FCB200A8 */  sd         $s2, 0xa8($a1)
/* 3106C 800C646C FCB300B0 */  sd         $s3, 0xb0($a1)
/* 31070 800C6470 FCB400B8 */  sd         $s4, 0xb8($a1)
/* 31074 800C6474 FCB500C0 */  sd         $s5, 0xc0($a1)
/* 31078 800C6478 FCB600C8 */  sd         $s6, 0xc8($a1)
/* 3107C 800C647C FCB700D0 */  sd         $s7, 0xd0($a1)
/* 31080 800C6480 FCBC00E8 */  sd         $gp, 0xe8($a1)
/* 31084 800C6484 FCBD00F0 */  sd         $sp, 0xf0($a1)
/* 31088 800C6488 FCBE00F8 */  sd         $fp, 0xf8($a1)
/* 3108C 800C648C FCBF0100 */  sd         $ra, 0x100($a1)
/* 31090 800C6490 ACBF011C */  sw         $ra, 0x11c($a1)
/* 31094 800C6494 8CBB0018 */  lw         $k1, 0x18($a1)
/* 31098 800C6498 1360000A */  beqz       $k1, .L800C64C4
/* 3109C 800C649C 00000000 */   nop
/* 310A0 800C64A0 445BF800 */  cfc1       $k1, $31
/* 310A4 800C64A4 00000000 */  nop
/* 310A8 800C64A8 ACBB012C */  sw         $k1, 0x12c($a1)
/* 310AC 800C64AC F4B40180 */  sdc1       $f20, 0x180($a1)
/* 310B0 800C64B0 F4B60188 */  sdc1       $f22, 0x188($a1)
/* 310B4 800C64B4 F4B80190 */  sdc1       $f24, 0x190($a1)
/* 310B8 800C64B8 F4BA0198 */  sdc1       $f26, 0x198($a1)
/* 310BC 800C64BC F4BC01A0 */  sdc1       $f28, 0x1a0($a1)
/* 310C0 800C64C0 F4BE01A8 */  sdc1       $f30, 0x1a8($a1)
.L800C64C4:
/* 310C4 800C64C4 8CBB0118 */  lw         $k1, 0x118($a1)
/* 310C8 800C64C8 3369FF00 */  andi       $t1, $k1, 0xff00
/* 310CC 800C64CC 1120000D */  beqz       $t1, .L800C6504
/* 310D0 800C64D0 00000000 */   nop
/* 310D4 800C64D4 3C08800F */  lui        $t0, %hi(D_800F7BB0)
/* 310D8 800C64D8 25087BB0 */  addiu      $t0, $t0, %lo(D_800F7BB0)
/* 310DC 800C64DC 8D080000 */  lw         $t0, ($t0)
/* 310E0 800C64E0 2401FFFF */  addiu      $at, $zero, -1
/* 310E4 800C64E4 01014026 */  xor        $t0, $t0, $at
/* 310E8 800C64E8 3108FF00 */  andi       $t0, $t0, 0xff00
/* 310EC 800C64EC 01284825 */  or         $t1, $t1, $t0
/* 310F0 800C64F0 3C01FFFF */  lui        $at, 0xffff
/* 310F4 800C64F4 342100FF */  ori        $at, $at, 0xff
/* 310F8 800C64F8 0361D824 */  and        $k1, $k1, $at
/* 310FC 800C64FC 0369D825 */  or         $k1, $k1, $t1
/* 31100 800C6500 ACBB0118 */  sw         $k1, 0x118($a1)
.L800C6504:
/* 31104 800C6504 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* 31108 800C6508 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* 3110C 800C650C 1360000B */  beqz       $k1, .L800C653C
/* 31110 800C6510 00000000 */   nop
/* 31114 800C6514 3C1A800F */  lui        $k0, %hi(D_800F7BB0)
/* 31118 800C6518 275A7BB0 */  addiu      $k0, $k0, %lo(D_800F7BB0)
/* 3111C 800C651C 8F5A0000 */  lw         $k0, ($k0)
/* 31120 800C6520 001AD402 */  srl        $k0, $k0, 0x10
/* 31124 800C6524 2401FFFF */  addiu      $at, $zero, -1
/* 31128 800C6528 0341D026 */  xor        $k0, $k0, $at
/* 3112C 800C652C 335A003F */  andi       $k0, $k0, 0x3f
/* 31130 800C6530 8CA80128 */  lw         $t0, 0x128($a1)
/* 31134 800C6534 0348D024 */  and        $k0, $k0, $t0
/* 31138 800C6538 037AD825 */  or         $k1, $k1, $k0
.L800C653C:
/* 3113C 800C653C 10800003 */  beqz       $a0, .L800C654C
/* 31140 800C6540 ACBB0128 */   sw        $k1, 0x128($a1)
/* 31144 800C6544 0C031955 */  jal        __osEnqueueThread
/* 31148 800C6548 00000000 */   nop
.L800C654C:
/* 3114C 800C654C 0803196B */  j          .L800C65AC
/* 31150 800C6550 00000000 */   nop

glabel __osEnqueueThread
/* 31154 800C6554 0080C821 */  addu       $t9, $a0, $zero
/* 31158 800C6558 8C980000 */  lw         $t8, ($a0)
/* 3115C 800C655C 8CAF0004 */  lw         $t7, 4($a1)
/* 31160 800C6560 8F0E0004 */  lw         $t6, 4($t8)
/* 31164 800C6564 01CF082A */  slt        $at, $t6, $t7
/* 31168 800C6568 14200007 */  bnez       $at, .L800C6588
/* 3116C 800C656C 00000000 */   nop
.L800C6570:
/* 31170 800C6570 0300C821 */  addu       $t9, $t8, $zero
/* 31174 800C6574 8F180000 */  lw         $t8, ($t8)
/* 31178 800C6578 8F0E0004 */  lw         $t6, 4($t8)
/* 3117C 800C657C 01CF082A */  slt        $at, $t6, $t7
/* 31180 800C6580 1020FFFB */  beqz       $at, .L800C6570
/* 31184 800C6584 00000000 */   nop
.L800C6588:
/* 31188 800C6588 8F380000 */  lw         $t8, ($t9)
/* 3118C 800C658C ACB80000 */  sw         $t8, ($a1)
/* 31190 800C6590 AF250000 */  sw         $a1, ($t9)
/* 31194 800C6594 03E00008 */  jr         $ra
/* 31198 800C6598 ACA40008 */   sw        $a0, 8($a1)

glabel __osPopThread
/* 3119C 800C659C 8C820000 */  lw         $v0, ($a0)
/* 311A0 800C65A0 8C590000 */  lw         $t9, ($v0)
/* 311A4 800C65A4 03E00008 */  jr         $ra
/* 311A8 800C65A8 AC990000 */   sw        $t9, ($a0)

glabel __osDispatchThread
.L800C65AC:
/* 311AC 800C65AC 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 311B0 800C65B0 0C031967 */  jal        __osPopThread
/* 311B4 800C65B4 248469B8 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* 311B8 800C65B8 3C01800F */  lui        $at, %hi(__osRunningThread)
/* 311BC 800C65BC AC2269C0 */  sw         $v0, %lo(__osRunningThread)($at)
/* 311C0 800C65C0 24080004 */  addiu      $t0, $zero, 4
/* 311C4 800C65C4 A4480010 */  sh         $t0, 0x10($v0)
/* 311C8 800C65C8 0040D021 */  addu       $k0, $v0, $zero
/* 311CC 800C65CC 8F5B0118 */  lw         $k1, 0x118($k0)
/* 311D0 800C65D0 3C08800F */  lui        $t0, %hi(D_800F7BB0)
/* 311D4 800C65D4 25087BB0 */  addiu      $t0, $t0, %lo(D_800F7BB0)
/* 311D8 800C65D8 8D080000 */  lw         $t0, ($t0)
/* 311DC 800C65DC 3108FF00 */  andi       $t0, $t0, 0xff00
/* 311E0 800C65E0 3369FF00 */  andi       $t1, $k1, 0xff00
/* 311E4 800C65E4 01284824 */  and        $t1, $t1, $t0
/* 311E8 800C65E8 3C01FFFF */  lui        $at, 0xffff
/* 311EC 800C65EC 342100FF */  ori        $at, $at, 0xff
/* 311F0 800C65F0 0361D824 */  and        $k1, $k1, $at
/* 311F4 800C65F4 0369D825 */  or         $k1, $k1, $t1
/* 311F8 800C65F8 409B6000 */  mtc0       $k1, $12
/* 311FC 800C65FC DF410020 */  ld         $at, 0x20($k0)
/* 31200 800C6600 DF420028 */  ld         $v0, 0x28($k0)
/* 31204 800C6604 DF430030 */  ld         $v1, 0x30($k0)
/* 31208 800C6608 DF440038 */  ld         $a0, 0x38($k0)
/* 3120C 800C660C DF450040 */  ld         $a1, 0x40($k0)
/* 31210 800C6610 DF460048 */  ld         $a2, 0x48($k0)
/* 31214 800C6614 DF470050 */  ld         $a3, 0x50($k0)
/* 31218 800C6618 DF480058 */  ld         $t0, 0x58($k0)
/* 3121C 800C661C DF490060 */  ld         $t1, 0x60($k0)
/* 31220 800C6620 DF4A0068 */  ld         $t2, 0x68($k0)
/* 31224 800C6624 DF4B0070 */  ld         $t3, 0x70($k0)
/* 31228 800C6628 DF4C0078 */  ld         $t4, 0x78($k0)
/* 3122C 800C662C DF4D0080 */  ld         $t5, 0x80($k0)
/* 31230 800C6630 DF4E0088 */  ld         $t6, 0x88($k0)
/* 31234 800C6634 DF4F0090 */  ld         $t7, 0x90($k0)
/* 31238 800C6638 DF500098 */  ld         $s0, 0x98($k0)
/* 3123C 800C663C DF5100A0 */  ld         $s1, 0xa0($k0)
/* 31240 800C6640 DF5200A8 */  ld         $s2, 0xa8($k0)
/* 31244 800C6644 DF5300B0 */  ld         $s3, 0xb0($k0)
/* 31248 800C6648 DF5400B8 */  ld         $s4, 0xb8($k0)
/* 3124C 800C664C DF5500C0 */  ld         $s5, 0xc0($k0)
/* 31250 800C6650 DF5600C8 */  ld         $s6, 0xc8($k0)
/* 31254 800C6654 DF5700D0 */  ld         $s7, 0xd0($k0)
/* 31258 800C6658 DF5800D8 */  ld         $t8, 0xd8($k0)
/* 3125C 800C665C DF5900E0 */  ld         $t9, 0xe0($k0)
/* 31260 800C6660 DF5C00E8 */  ld         $gp, 0xe8($k0)
/* 31264 800C6664 DF5D00F0 */  ld         $sp, 0xf0($k0)
/* 31268 800C6668 DF5E00F8 */  ld         $fp, 0xf8($k0)
/* 3126C 800C666C DF5F0100 */  ld         $ra, 0x100($k0)
/* 31270 800C6670 DF5B0108 */  ld         $k1, 0x108($k0)
/* 31274 800C6674 03600013 */  mtlo       $k1
/* 31278 800C6678 DF5B0110 */  ld         $k1, 0x110($k0)
/* 3127C 800C667C 03600011 */  mthi       $k1
/* 31280 800C6680 8F5B011C */  lw         $k1, 0x11c($k0)
/* 31284 800C6684 409B7000 */  mtc0       $k1, $14
/* 31288 800C6688 8F5B0018 */  lw         $k1, 0x18($k0)
/* 3128C 800C668C 13600013 */  beqz       $k1, .L800C66DC
/* 31290 800C6690 00000000 */   nop
/* 31294 800C6694 8F5B012C */  lw         $k1, 0x12c($k0)
/* 31298 800C6698 44DBF800 */  ctc1       $k1, $31
/* 3129C 800C669C D7400130 */  ldc1       $f0, 0x130($k0)
/* 312A0 800C66A0 D7420138 */  ldc1       $f2, 0x138($k0)
/* 312A4 800C66A4 D7440140 */  ldc1       $f4, 0x140($k0)
/* 312A8 800C66A8 D7460148 */  ldc1       $f6, 0x148($k0)
/* 312AC 800C66AC D7480150 */  ldc1       $f8, 0x150($k0)
/* 312B0 800C66B0 D74A0158 */  ldc1       $f10, 0x158($k0)
/* 312B4 800C66B4 D74C0160 */  ldc1       $f12, 0x160($k0)
/* 312B8 800C66B8 D74E0168 */  ldc1       $f14, 0x168($k0)
/* 312BC 800C66BC D7500170 */  ldc1       $f16, 0x170($k0)
/* 312C0 800C66C0 D7520178 */  ldc1       $f18, 0x178($k0)
/* 312C4 800C66C4 D7540180 */  ldc1       $f20, 0x180($k0)
/* 312C8 800C66C8 D7560188 */  ldc1       $f22, 0x188($k0)
/* 312CC 800C66CC D7580190 */  ldc1       $f24, 0x190($k0)
/* 312D0 800C66D0 D75A0198 */  ldc1       $f26, 0x198($k0)
/* 312D4 800C66D4 D75C01A0 */  ldc1       $f28, 0x1a0($k0)
/* 312D8 800C66D8 D75E01A8 */  ldc1       $f30, 0x1a8($k0)
.L800C66DC:
/* 312DC 800C66DC 8F5B0128 */  lw         $k1, 0x128($k0)
/* 312E0 800C66E0 3C1A800F */  lui        $k0, %hi(D_800F7BB0)
/* 312E4 800C66E4 275A7BB0 */  addiu      $k0, $k0, %lo(D_800F7BB0)
/* 312E8 800C66E8 8F5A0000 */  lw         $k0, ($k0)
/* 312EC 800C66EC 001AD402 */  srl        $k0, $k0, 0x10
/* 312F0 800C66F0 037AD824 */  and        $k1, $k1, $k0
/* 312F4 800C66F4 001BD840 */  sll        $k1, $k1, 1
/* 312F8 800C66F8 3C1A8010 */  lui        $k0, %hi(D_800FEC50)
/* 312FC 800C66FC 275AEC50 */  addiu      $k0, $k0, %lo(D_800FEC50)
/* 31300 800C6700 037AD821 */  addu       $k1, $k1, $k0
/* 31304 800C6704 977B0000 */  lhu        $k1, ($k1)
/* 31308 800C6708 3C1AA430 */  lui        $k0, 0xa430
/* 3130C 800C670C 375A000C */  ori        $k0, $k0, 0xc
/* 31310 800C6710 AF5B0000 */  sw         $k1, ($k0)
/* 31314 800C6714 00000000 */  nop
/* 31318 800C6718 00000000 */  nop
/* 3131C 800C671C 00000000 */  nop
/* 31320 800C6720 00000000 */  nop
/* 31324 800C6724 42000018 */  eret
/* 31328 800C6728 00002021 */  addu       $a0, $zero, $zero
/* 3132C 800C672C 0C031EF4 */  jal        func_800C7BD0
/* 31330 800C6730 00000000 */   nop
/* 31334 800C6734 00000000 */  nop
/* 31338 800C6738 00000000 */  nop
/* 3133C 800C673C 00000000 */  nop
