glabel func_800C3E40
/* 2EA40 800C3E40 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 2EA44 800C3E44 AFB20118 */  sw         $s2, 0x118($sp)
/* 2EA48 800C3E48 00809021 */  addu       $s2, $a0, $zero
/* 2EA4C 800C3E4C AFBF0128 */  sw         $ra, 0x128($sp)
/* 2EA50 800C3E50 AFB50124 */  sw         $s5, 0x124($sp)
/* 2EA54 800C3E54 AFB40120 */  sw         $s4, 0x120($sp)
/* 2EA58 800C3E58 AFB3011C */  sw         $s3, 0x11C($sp)
/* 2EA5C 800C3E5C AFB10114 */  sw         $s1, 0x114($sp)
/* 2EA60 800C3E60 AFB00110 */  sw         $s0, 0x110($sp)
/* 2EA64 800C3E64 8E420000 */  lw         $v0, 0x0($s2)
/* 2EA68 800C3E68 00A0A821 */  addu       $s5, $a1, $zero
/* 2EA6C 800C3E6C 30420001 */  andi       $v0, $v0, 0x1
/* 2EA70 800C3E70 14400003 */  bnez       $v0, .L800C3E80
/* 2EA74 800C3E74 00009821 */   addu      $s3, $zero, $zero
/* 2EA78 800C3E78 08030FCA */  j          .L800C3F28
/* 2EA7C 800C3E7C 24020005 */   addiu     $v0, $zero, 0x5
.L800C3E80:
/* 2EA80 800C3E80 0C031325 */  jal        func_800C4C94
/* 2EA84 800C3E84 02402021 */   addu      $a0, $s2, $zero
/* 2EA88 800C3E88 14400027 */  bnez       $v0, .L800C3F28
/* 2EA8C 800C3E8C 00000000 */   nop
/* 2EA90 800C3E90 92420064 */  lbu        $v0, 0x64($s2)
/* 2EA94 800C3E94 0262102B */  sltu       $v0, $s3, $v0
/* 2EA98 800C3E98 10400020 */  beqz       $v0, .L800C3F1C
/* 2EA9C 800C3E9C 00008821 */   addu      $s1, $zero, $zero
/* 2EAA0 800C3EA0 27B40010 */  addiu      $s4, $sp, 0x10
/* 2EAA4 800C3EA4 02402021 */  addu       $a0, $s2, $zero
.L800C3EA8:
/* 2EAA8 800C3EA8 323000FF */  andi       $s0, $s1, 0xFF
/* 2EAAC 800C3EAC 27A50010 */  addiu      $a1, $sp, 0x10
/* 2EAB0 800C3EB0 00003021 */  addu       $a2, $zero, $zero
/* 2EAB4 800C3EB4 0C031353 */  jal        func_800C4D4C
/* 2EAB8 800C3EB8 02003821 */   addu      $a3, $s0, $zero
/* 2EABC 800C3EBC 1440001A */  bnez       $v0, .L800C3F28
/* 2EAC0 800C3EC0 00000000 */   nop
/* 2EAC4 800C3EC4 16000002 */  bnez       $s0, .L800C3ED0
/* 2EAC8 800C3EC8 24020001 */   addiu     $v0, $zero, 0x1
/* 2EACC 800C3ECC 8E420060 */  lw         $v0, 0x60($s2)
.L800C3ED0:
/* 2EAD0 800C3ED0 00402021 */  addu       $a0, $v0, $zero
/* 2EAD4 800C3ED4 28820080 */  slti       $v0, $a0, 0x80
/* 2EAD8 800C3ED8 1040000A */  beqz       $v0, .L800C3F04
/* 2EADC 800C3EDC 00041040 */   sll       $v0, $a0, 1
/* 2EAE0 800C3EE0 00541821 */  addu       $v1, $v0, $s4
.L800C3EE4:
/* 2EAE4 800C3EE4 94620000 */  lhu        $v0, 0x0($v1)
/* 2EAE8 800C3EE8 24840001 */  addiu      $a0, $a0, 0x1
/* 2EAEC 800C3EEC 38420003 */  xori       $v0, $v0, 0x3
/* 2EAF0 800C3EF0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 2EAF4 800C3EF4 02629821 */  addu       $s3, $s3, $v0
/* 2EAF8 800C3EF8 28820080 */  slti       $v0, $a0, 0x80
/* 2EAFC 800C3EFC 1440FFF9 */  bnez       $v0, .L800C3EE4
/* 2EB00 800C3F00 24630002 */   addiu     $v1, $v1, 0x2
.L800C3F04:
/* 2EB04 800C3F04 92430064 */  lbu        $v1, 0x64($s2)
/* 2EB08 800C3F08 26310001 */  addiu      $s1, $s1, 0x1
/* 2EB0C 800C3F0C 322200FF */  andi       $v0, $s1, 0xFF
/* 2EB10 800C3F10 0043102B */  sltu       $v0, $v0, $v1
/* 2EB14 800C3F14 5440FFE4 */  bnel       $v0, $zero, .L800C3EA8
/* 2EB18 800C3F18 02402021 */   addu      $a0, $s2, $zero
.L800C3F1C:
/* 2EB1C 800C3F1C 00131200 */  sll        $v0, $s3, 8
/* 2EB20 800C3F20 AEA20000 */  sw         $v0, 0x0($s5)
/* 2EB24 800C3F24 00001021 */  addu       $v0, $zero, $zero
.L800C3F28:
/* 2EB28 800C3F28 8FBF0128 */  lw         $ra, 0x128($sp)
/* 2EB2C 800C3F2C 8FB50124 */  lw         $s5, 0x124($sp)
/* 2EB30 800C3F30 8FB40120 */  lw         $s4, 0x120($sp)
/* 2EB34 800C3F34 8FB3011C */  lw         $s3, 0x11C($sp)
/* 2EB38 800C3F38 8FB20118 */  lw         $s2, 0x118($sp)
/* 2EB3C 800C3F3C 8FB10114 */  lw         $s1, 0x114($sp)
/* 2EB40 800C3F40 8FB00110 */  lw         $s0, 0x110($sp)
/* 2EB44 800C3F44 03E00008 */  jr         $ra
/* 2EB48 800C3F48 27BD0130 */   addiu     $sp, $sp, 0x130
/* 2EB4C 800C3F4C 00000000 */  nop
.size func_800C3E40, . - func_800C3E40
