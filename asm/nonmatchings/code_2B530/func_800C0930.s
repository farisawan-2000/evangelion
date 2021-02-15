.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0930
/* 2B530 800C0930 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2B534 800C0934 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B538 800C0938 00808021 */  addu       $s0, $a0, $zero
/* 2B53C 800C093C AFB50024 */  sw         $s5, 0x24($sp)
/* 2B540 800C0940 00A0A821 */  addu       $s5, $a1, $zero
/* 2B544 800C0944 AFB20018 */  sw         $s2, 0x18($sp)
/* 2B548 800C0948 00C09021 */  addu       $s2, $a2, $zero
/* 2B54C 800C094C AFBF0028 */  sw         $ra, 0x28($sp)
/* 2B550 800C0950 AFB40020 */  sw         $s4, 0x20($sp)
/* 2B554 800C0954 AFB3001C */  sw         $s3, 0x1c($sp)
/* 2B558 800C0958 0C0319D0 */  jal        func_800C6740
/* 2B55C 800C095C AFB10014 */   sw        $s1, 0x14($sp)
/* 2B560 800C0960 8E030008 */  lw         $v1, 8($s0)
/* 2B564 800C0964 8E040010 */  lw         $a0, 0x10($s0)
/* 2B568 800C0968 0064182A */  slt        $v1, $v1, $a0
/* 2B56C 800C096C 14600012 */  bnez       $v1, .L800C09B8
/* 2B570 800C0970 00408821 */   addu      $s1, $v0, $zero
/* 2B574 800C0974 24140001 */  addiu      $s4, $zero, 1
/* 2B578 800C0978 24130008 */  addiu      $s3, $zero, 8
.L800C097C:
/* 2B57C 800C097C 12540005 */  beq        $s2, $s4, .L800C0994
/* 2B580 800C0980 26040004 */   addiu     $a0, $s0, 4
/* 2B584 800C0984 0C0319EC */  jal        func_800C67B0
/* 2B588 800C0988 02202021 */   addu      $a0, $s1, $zero
/* 2B58C 800C098C 0803028F */  j          .L800C0A3C
/* 2B590 800C0990 2402FFFF */   addiu     $v0, $zero, -1
.L800C0994:
/* 2B594 800C0994 3C02800F */  lui        $v0, %hi(D_800F69C0)
/* 2B598 800C0998 8C4269C0 */  lw         $v0, %lo(D_800F69C0)($v0)
/* 2B59C 800C099C 0C031913 */  jal        func_800C644C
/* 2B5A0 800C09A0 A4530010 */   sh        $s3, 0x10($v0)
/* 2B5A4 800C09A4 8E020008 */  lw         $v0, 8($s0)
/* 2B5A8 800C09A8 8E030010 */  lw         $v1, 0x10($s0)
/* 2B5AC 800C09AC 0043102A */  slt        $v0, $v0, $v1
/* 2B5B0 800C09B0 1040FFF2 */  beqz       $v0, .L800C097C
/* 2B5B4 800C09B4 00000000 */   nop
.L800C09B8:
/* 2B5B8 800C09B8 8E03000C */  lw         $v1, 0xc($s0)
/* 2B5BC 800C09BC 8E040008 */  lw         $a0, 8($s0)
/* 2B5C0 800C09C0 8E020010 */  lw         $v0, 0x10($s0)
/* 2B5C4 800C09C4 00641821 */  addu       $v1, $v1, $a0
/* 2B5C8 800C09C8 0062001A */  div        $zero, $v1, $v0
/* 2B5CC 800C09CC 14400002 */  bnez       $v0, .L800C09D8
/* 2B5D0 800C09D0 00000000 */   nop
/* 2B5D4 800C09D4 0007000D */  break      7
.L800C09D8:
/* 2B5D8 800C09D8 2401FFFF */   addiu     $at, $zero, -1
/* 2B5DC 800C09DC 14410004 */  bne        $v0, $at, .L800C09F0
/* 2B5E0 800C09E0 3C018000 */   lui       $at, 0x8000
/* 2B5E4 800C09E4 14610002 */  bne        $v1, $at, .L800C09F0
/* 2B5E8 800C09E8 00000000 */   nop
/* 2B5EC 800C09EC 0006000D */  break      6
.L800C09F0:
/* 2B5F0 800C09F0 00001010 */   mfhi      $v0
/* 2B5F4 800C09F4 8E030014 */  lw         $v1, 0x14($s0)
/* 2B5F8 800C09F8 00021080 */  sll        $v0, $v0, 2
/* 2B5FC 800C09FC 00431021 */  addu       $v0, $v0, $v1
/* 2B600 800C0A00 AC550000 */  sw         $s5, ($v0)
/* 2B604 800C0A04 8E020008 */  lw         $v0, 8($s0)
/* 2B608 800C0A08 8E030000 */  lw         $v1, ($s0)
/* 2B60C 800C0A0C 24420001 */  addiu      $v0, $v0, 1
/* 2B610 800C0A10 AE020008 */  sw         $v0, 8($s0)
/* 2B614 800C0A14 8C620000 */  lw         $v0, ($v1)
/* 2B618 800C0A18 10400005 */  beqz       $v0, .L800C0A30
/* 2B61C 800C0A1C 00000000 */   nop
/* 2B620 800C0A20 0C031967 */  jal        func_800C659C
/* 2B624 800C0A24 02002021 */   addu      $a0, $s0, $zero
/* 2B628 800C0A28 0C0306CC */  jal        func_800C1B30
/* 2B62C 800C0A2C 00402021 */   addu      $a0, $v0, $zero
.L800C0A30:
/* 2B630 800C0A30 0C0319EC */  jal        func_800C67B0
/* 2B634 800C0A34 02202021 */   addu      $a0, $s1, $zero
/* 2B638 800C0A38 00001021 */  addu       $v0, $zero, $zero
.L800C0A3C:
/* 2B63C 800C0A3C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 2B640 800C0A40 8FB50024 */  lw         $s5, 0x24($sp)
/* 2B644 800C0A44 8FB40020 */  lw         $s4, 0x20($sp)
/* 2B648 800C0A48 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2B64C 800C0A4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 2B650 800C0A50 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B654 800C0A54 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B658 800C0A58 03E00008 */  jr         $ra
/* 2B65C 800C0A5C 27BD0030 */   addiu     $sp, $sp, 0x30
