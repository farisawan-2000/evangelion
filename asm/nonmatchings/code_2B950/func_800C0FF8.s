.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0FF8
/* 2BBF8 800C0FF8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2BBFC 800C0FFC AFB1001C */  sw         $s1, 0x1c($sp)
/* 2BC00 800C1000 00808821 */  addu       $s1, $a0, $zero
/* 2BC04 800C1004 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2BC08 800C1008 2415029B */  addiu      $s5, $zero, 0x29b
/* 2BC0C 800C100C AFB40028 */  sw         $s4, 0x28($sp)
/* 2BC10 800C1010 2414029A */  addiu      $s4, $zero, 0x29a
/* 2BC14 800C1014 AFB30024 */  sw         $s3, 0x24($sp)
/* 2BC18 800C1018 2413029C */  addiu      $s3, $zero, 0x29c
/* 2BC1C 800C101C AFB20020 */  sw         $s2, 0x20($sp)
/* 2BC20 800C1020 2412029D */  addiu      $s2, $zero, 0x29d
/* 2BC24 800C1024 AFBF0030 */  sw         $ra, 0x30($sp)
/* 2BC28 800C1028 AFB00018 */  sw         $s0, 0x18($sp)
/* 2BC2C 800C102C 26240040 */  addiu      $a0, $s1, 0x40
.L800C1030:
/* 2BC30 800C1030 27A50010 */  addiu      $a1, $sp, 0x10
/* 2BC34 800C1034 0C030200 */  jal        func_800C0800
/* 2BC38 800C1038 24060001 */   addiu     $a2, $zero, 1
/* 2BC3C 800C103C 8FA30010 */  lw         $v1, 0x10($sp)
/* 2BC40 800C1040 10750011 */  beq        $v1, $s5, .L800C1088
/* 2BC44 800C1044 2862029C */   slti      $v0, $v1, 0x29c
/* 2BC48 800C1048 10400005 */  beqz       $v0, .L800C1060
/* 2BC4C 800C104C 00000000 */   nop
/* 2BC50 800C1050 10740009 */  beq        $v1, $s4, .L800C1078
/* 2BC54 800C1054 26240040 */   addiu     $a0, $s1, 0x40
/* 2BC58 800C1058 0803040C */  j          .L800C1030
/* 2BC5C 800C105C 00000000 */   nop
.L800C1060:
/* 2BC60 800C1060 1073000D */  beq        $v1, $s3, .L800C1098
/* 2BC64 800C1064 00000000 */   nop
/* 2BC68 800C1068 1072000F */  beq        $v1, $s2, .L800C10A8
/* 2BC6C 800C106C 26240040 */   addiu     $a0, $s1, 0x40
/* 2BC70 800C1070 0803040C */  j          .L800C1030
/* 2BC74 800C1074 00000000 */   nop
.L800C1078:
/* 2BC78 800C1078 0C03043F */  jal        func_800C10FC
/* 2BC7C 800C107C 02202021 */   addu      $a0, $s1, $zero
/* 2BC80 800C1080 0803040C */  j          .L800C1030
/* 2BC84 800C1084 26240040 */   addiu     $a0, $s1, 0x40
.L800C1088:
/* 2BC88 800C1088 0C03047F */  jal        func_800C11FC
/* 2BC8C 800C108C 02202021 */   addu      $a0, $s1, $zero
/* 2BC90 800C1090 0803040C */  j          .L800C1030
/* 2BC94 800C1094 26240040 */   addiu     $a0, $s1, 0x40
.L800C1098:
/* 2BC98 800C1098 0C0304BB */  jal        func_800C12EC
/* 2BC9C 800C109C 02202021 */   addu      $a0, $s1, $zero
/* 2BCA0 800C10A0 0803040C */  j          .L800C1030
/* 2BCA4 800C10A4 26240040 */   addiu     $a0, $s1, 0x40
.L800C10A8:
/* 2BCA8 800C10A8 8E300260 */  lw         $s0, 0x260($s1)
/* 2BCAC 800C10AC 1200FFE0 */  beqz       $s0, .L800C1030
/* 2BCB0 800C10B0 00000000 */   nop
.L800C10B4:
/* 2BCB4 800C10B4 8E040004 */  lw         $a0, 4($s0)
/* 2BCB8 800C10B8 26250020 */  addiu      $a1, $s1, 0x20
/* 2BCBC 800C10BC 0C03024C */  jal        func_800C0930
/* 2BCC0 800C10C0 00003021 */   addu      $a2, $zero, $zero
/* 2BCC4 800C10C4 8E100000 */  lw         $s0, ($s0)
/* 2BCC8 800C10C8 1600FFFA */  bnez       $s0, .L800C10B4
/* 2BCCC 800C10CC 26240040 */   addiu     $a0, $s1, 0x40
/* 2BCD0 800C10D0 0803040C */  j          .L800C1030
/* 2BCD4 800C10D4 00000000 */   nop
/* 2BCD8 800C10D8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 2BCDC 800C10DC 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2BCE0 800C10E0 8FB40028 */  lw         $s4, 0x28($sp)
/* 2BCE4 800C10E4 8FB30024 */  lw         $s3, 0x24($sp)
/* 2BCE8 800C10E8 8FB20020 */  lw         $s2, 0x20($sp)
/* 2BCEC 800C10EC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2BCF0 800C10F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BCF4 800C10F4 03E00008 */  jr         $ra
/* 2BCF8 800C10F8 27BD0038 */   addiu     $sp, $sp, 0x38
