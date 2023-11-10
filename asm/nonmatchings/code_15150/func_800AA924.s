glabel func_800AA924
/* 15524 800AA924 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 15528 800AA928 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1552C 800AA92C AFB40020 */  sw         $s4, 0x20($sp)
/* 15530 800AA930 AFB3001C */  sw         $s3, 0x1C($sp)
/* 15534 800AA934 AFB20018 */  sw         $s2, 0x18($sp)
/* 15538 800AA938 AFB10014 */  sw         $s1, 0x14($sp)
/* 1553C 800AA93C 0C02DFA6 */  jal        func_800B7E98
/* 15540 800AA940 AFB00010 */   sw        $s0, 0x10($sp)
/* 15544 800AA944 00401821 */  addu       $v1, $v0, $zero
/* 15548 800AA948 1060000E */  beqz       $v1, .L800AA984
/* 1554C 800AA94C 00000000 */   nop
/* 15550 800AA950 1C600006 */  bgtz       $v1, .L800AA96C
/* 15554 800AA954 24020001 */   addiu     $v0, $zero, 0x1
/* 15558 800AA958 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1555C 800AA95C 1062000D */  beq        $v1, $v0, .L800AA994
/* 15560 800AA960 2404001C */   addiu     $a0, $zero, 0x1C
/* 15564 800AA964 0802AA6A */  j          .L800AA9A8
/* 15568 800AA968 00000000 */   nop
.L800AA96C:
/* 1556C 800AA96C 1462000E */  bne        $v1, $v0, .L800AA9A8
/* 15570 800AA970 2404001C */   addiu     $a0, $zero, 0x1C
/* 15574 800AA974 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15578 800AA978 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 1557C 800AA97C 0802AA67 */  j          .L800AA99C
/* 15580 800AA980 00000000 */   nop
.L800AA984:
/* 15584 800AA984 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15588 800AA988 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 1558C 800AA98C 0802AA67 */  j          .L800AA99C
/* 15590 800AA990 00000000 */   nop
.L800AA994:
/* 15594 800AA994 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15598 800AA998 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AA99C:
/* 1559C 800AA99C 0C02A793 */  jal        func_800A9E4C
/* 155A0 800AA9A0 00000000 */   nop
/* 155A4 800AA9A4 2404001C */  addiu      $a0, $zero, 0x1C
.L800AA9A8:
/* 155A8 800AA9A8 3C058015 */  lui        $a1, %hi(D_80149ED8)
/* 155AC 800AA9AC 24A59ED8 */  addiu      $a1, $a1, %lo(D_80149ED8)
/* 155B0 800AA9B0 0C02DF90 */  jal        func_800B7E40
/* 155B4 800AA9B4 24060028 */   addiu     $a2, $zero, 0x28
/* 155B8 800AA9B8 00401821 */  addu       $v1, $v0, $zero
/* 155BC 800AA9BC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 155C0 800AA9C0 10620007 */  beq        $v1, $v0, .L800AA9E0
/* 155C4 800AA9C4 24020008 */   addiu     $v0, $zero, 0x8
/* 155C8 800AA9C8 14620009 */  bne        $v1, $v0, .L800AA9F0
/* 155CC 800AA9CC 00000000 */   nop
/* 155D0 800AA9D0 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 155D4 800AA9D4 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 155D8 800AA9D8 0802AA7A */  j          .L800AA9E8
/* 155DC 800AA9DC 00000000 */   nop
.L800AA9E0:
/* 155E0 800AA9E0 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 155E4 800AA9E4 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AA9E8:
/* 155E8 800AA9E8 0C02A793 */  jal        func_800A9E4C
/* 155EC 800AA9EC 00000000 */   nop
.L800AA9F0:
/* 155F0 800AA9F0 3C118015 */  lui        $s1, %hi(D_80149ED8)
/* 155F4 800AA9F4 26319ED8 */  addiu      $s1, $s1, %lo(D_80149ED8)
/* 155F8 800AA9F8 02202021 */  addu       $a0, $s1, $zero
/* 155FC 800AA9FC 3C138010 */  lui        $s3, %hi(D_800FB258)
/* 15600 800AAA00 2673B258 */  addiu      $s3, $s3, %lo(D_800FB258)
/* 15604 800AAA04 02602821 */  addu       $a1, $s3, $zero
/* 15608 800AAA08 0C0327A8 */  jal        func_800C9EA0
/* 1560C 800AAA0C 24060008 */   addiu     $a2, $zero, 0x8
/* 15610 800AAA10 00408021 */  addu       $s0, $v0, $zero
/* 15614 800AAA14 26340008 */  addiu      $s4, $s1, 0x8
/* 15618 800AAA18 02802021 */  addu       $a0, $s4, $zero
/* 1561C 800AAA1C 3C128010 */  lui        $s2, %hi(D_800FB260)
/* 15620 800AAA20 2652B260 */  addiu      $s2, $s2, %lo(D_800FB260)
/* 15624 800AAA24 02402821 */  addu       $a1, $s2, $zero
/* 15628 800AAA28 0C0327A8 */  jal        func_800C9EA0
/* 1562C 800AAA2C 24060008 */   addiu     $a2, $zero, 0x8
/* 15630 800AAA30 02028025 */  or         $s0, $s0, $v0
/* 15634 800AAA34 1200000B */  beqz       $s0, .L800AAA64
/* 15638 800AAA38 02202021 */   addu      $a0, $s1, $zero
/* 1563C 800AAA3C 0C030134 */  jal        bzero
/* 15640 800AAA40 24050028 */   addiu     $a1, $zero, 0x28
/* 15644 800AAA44 02602021 */  addu       $a0, $s3, $zero
/* 15648 800AAA48 02202821 */  addu       $a1, $s1, $zero
/* 1564C 800AAA4C 0C03006C */  jal        func_800C01B0
/* 15650 800AAA50 24060008 */   addiu     $a2, $zero, 0x8
/* 15654 800AAA54 02402021 */  addu       $a0, $s2, $zero
/* 15658 800AAA58 02802821 */  addu       $a1, $s4, $zero
/* 1565C 800AAA5C 0C03006C */  jal        func_800C01B0
/* 15660 800AAA60 24060008 */   addiu     $a2, $zero, 0x8
.L800AAA64:
/* 15664 800AAA64 8FBF0024 */  lw         $ra, 0x24($sp)
/* 15668 800AAA68 8FB40020 */  lw         $s4, 0x20($sp)
/* 1566C 800AAA6C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 15670 800AAA70 8FB20018 */  lw         $s2, 0x18($sp)
/* 15674 800AAA74 8FB10014 */  lw         $s1, 0x14($sp)
/* 15678 800AAA78 8FB00010 */  lw         $s0, 0x10($sp)
/* 1567C 800AAA7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 15680 800AAA80 03E00008 */  jr         $ra
/* 15684 800AAA84 00000000 */   nop
.size func_800AA924, . - func_800AA924
