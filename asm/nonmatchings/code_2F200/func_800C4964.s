.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C4964
/* 2F564 800C4964 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2F568 800C4968 AFB40038 */  sw         $s4, 0x38($sp)
/* 2F56C 800C496C 0080A021 */  addu       $s4, $a0, $zero
/* 2F570 800C4970 AFBF0040 */  sw         $ra, 0x40($sp)
/* 2F574 800C4974 AFB5003C */  sw         $s5, 0x3c($sp)
/* 2F578 800C4978 AFB30034 */  sw         $s3, 0x34($sp)
/* 2F57C 800C497C AFB20030 */  sw         $s2, 0x30($sp)
/* 2F580 800C4980 AFB1002C */  sw         $s1, 0x2c($sp)
/* 2F584 800C4984 AFB00028 */  sw         $s0, 0x28($sp)
/* 2F588 800C4988 92820065 */  lbu        $v0, 0x65($s4)
/* 2F58C 800C498C 10400005 */  beqz       $v0, .L800C49A4
/* 2F590 800C4990 00A09021 */   addu      $s2, $a1, $zero
/* 2F594 800C4994 0C031164 */  jal        func_800C4590
/* 2F598 800C4998 00002821 */   addu      $a1, $zero, $zero
/* 2F59C 800C499C 14400041 */  bnez       $v0, .L800C4AA4
/* 2F5A0 800C49A0 00000000 */   nop
.L800C49A4:
/* 2F5A4 800C49A4 24130001 */  addiu      $s3, $zero, 1
/* 2F5A8 800C49A8 27B0001A */  addiu      $s0, $sp, 0x1a
/* 2F5AC 800C49AC 24020001 */  addiu      $v0, $zero, 1
/* 2F5B0 800C49B0 A7A20018 */  sh         $v0, 0x18($sp)
/* 2F5B4 800C49B4 24020003 */  addiu      $v0, $zero, 3
/* 2F5B8 800C49B8 A7A2001A */  sh         $v0, 0x1a($sp)
/* 2F5BC 800C49BC 24020004 */  addiu      $v0, $zero, 4
/* 2F5C0 800C49C0 A7A2001C */  sh         $v0, 0x1c($sp)
/* 2F5C4 800C49C4 24020006 */  addiu      $v0, $zero, 6
/* 2F5C8 800C49C8 A7A2001E */  sh         $v0, 0x1e($sp)
.L800C49CC:
/* 2F5CC 800C49CC 8E840004 */  lw         $a0, 4($s4)
/* 2F5D0 800C49D0 8E850008 */  lw         $a1, 8($s4)
/* 2F5D4 800C49D4 96060000 */  lhu        $a2, ($s0)
/* 2F5D8 800C49D8 0C031424 */  jal        func_800C5090
/* 2F5DC 800C49DC 02403821 */   addu      $a3, $s2, $zero
/* 2F5E0 800C49E0 14400030 */  bnez       $v0, .L800C4AA4
/* 2F5E4 800C49E4 02402821 */   addu      $a1, $s2, $zero
/* 2F5E8 800C49E8 2647001C */  addiu      $a3, $s2, 0x1c
/* 2F5EC 800C49EC A7A00022 */  sh         $zero, 0x22($sp)
/* 2F5F0 800C49F0 A7A00020 */  sh         $zero, 0x20($sp)
.L800C49F4:
/* 2F5F4 800C49F4 94A20000 */  lhu        $v0, ($a1)
/* 2F5F8 800C49F8 97A30020 */  lhu        $v1, 0x20($sp)
/* 2F5FC 800C49FC 97A40022 */  lhu        $a0, 0x22($sp)
/* 2F600 800C4A00 24A50002 */  addiu      $a1, $a1, 2
/* 2F604 800C4A04 00623021 */  addu       $a2, $v1, $v0
/* 2F608 800C4A08 00021027 */  nor        $v0, $zero, $v0
/* 2F60C 800C4A0C 00822021 */  addu       $a0, $a0, $v0
/* 2F610 800C4A10 00A7102B */  sltu       $v0, $a1, $a3
/* 2F614 800C4A14 A7A60020 */  sh         $a2, 0x20($sp)
/* 2F618 800C4A18 1440FFF6 */  bnez       $v0, .L800C49F4
/* 2F61C 800C4A1C A7A40022 */   sh        $a0, 0x22($sp)
/* 2F620 800C4A20 9643001C */  lhu        $v1, 0x1c($s2)
/* 2F624 800C4A24 30C2FFFF */  andi       $v0, $a2, 0xffff
/* 2F628 800C4A28 54620006 */  bnel       $v1, $v0, .L800C4A44
/* 2F62C 800C4A2C 26730001 */   addiu     $s3, $s3, 1
/* 2F630 800C4A30 9643001E */  lhu        $v1, 0x1e($s2)
/* 2F634 800C4A34 3082FFFF */  andi       $v0, $a0, 0xffff
/* 2F638 800C4A38 10620006 */  beq        $v1, $v0, .L800C4A54
/* 2F63C 800C4A3C 24020004 */   addiu     $v0, $zero, 4
/* 2F640 800C4A40 26730001 */  addiu      $s3, $s3, 1
.L800C4A44:
/* 2F644 800C4A44 2A620004 */  slti       $v0, $s3, 4
/* 2F648 800C4A48 1440FFE0 */  bnez       $v0, .L800C49CC
/* 2F64C 800C4A4C 26100002 */   addiu     $s0, $s0, 2
/* 2F650 800C4A50 24020004 */  addiu      $v0, $zero, 4
.L800C4A54:
/* 2F654 800C4A54 16620003 */  bne        $s3, $v0, .L800C4A64
/* 2F658 800C4A58 00008021 */   addu      $s0, $zero, $zero
/* 2F65C 800C4A5C 080312A9 */  j          .L800C4AA4
/* 2F660 800C4A60 2402000A */   addiu     $v0, $zero, 0xa
.L800C4A64:
/* 2F664 800C4A64 24150001 */  addiu      $s5, $zero, 1
/* 2F668 800C4A68 27B10018 */  addiu      $s1, $sp, 0x18
.L800C4A6C:
/* 2F66C 800C4A6C 52130009 */  beql       $s0, $s3, .L800C4A94
/* 2F670 800C4A70 26100001 */   addiu     $s0, $s0, 1
/* 2F674 800C4A74 96260000 */  lhu        $a2, ($s1)
/* 2F678 800C4A78 AFB50010 */  sw         $s5, 0x10($sp)
/* 2F67C 800C4A7C 8E840004 */  lw         $a0, 4($s4)
/* 2F680 800C4A80 8E850008 */  lw         $a1, 8($s4)
/* 2F684 800C4A84 0C0314A0 */  jal        func_800C5280
/* 2F688 800C4A88 02403821 */   addu      $a3, $s2, $zero
/* 2F68C 800C4A8C 14400005 */  bnez       $v0, .L800C4AA4
/* 2F690 800C4A90 26100001 */   addiu     $s0, $s0, 1
.L800C4A94:
/* 2F694 800C4A94 2A020004 */  slti       $v0, $s0, 4
/* 2F698 800C4A98 1440FFF4 */  bnez       $v0, .L800C4A6C
/* 2F69C 800C4A9C 26310002 */   addiu     $s1, $s1, 2
/* 2F6A0 800C4AA0 00001021 */  addu       $v0, $zero, $zero
.L800C4AA4:
/* 2F6A4 800C4AA4 8FBF0040 */  lw         $ra, 0x40($sp)
/* 2F6A8 800C4AA8 8FB5003C */  lw         $s5, 0x3c($sp)
/* 2F6AC 800C4AAC 8FB40038 */  lw         $s4, 0x38($sp)
/* 2F6B0 800C4AB0 8FB30034 */  lw         $s3, 0x34($sp)
/* 2F6B4 800C4AB4 8FB20030 */  lw         $s2, 0x30($sp)
/* 2F6B8 800C4AB8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 2F6BC 800C4ABC 8FB00028 */  lw         $s0, 0x28($sp)
/* 2F6C0 800C4AC0 03E00008 */  jr         $ra
/* 2F6C4 800C4AC4 27BD0048 */   addiu     $sp, $sp, 0x48
