.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9E4C
/* 14A4C 800A9E4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14A50 800A9E50 AFB20018 */  sw         $s2, 0x18($sp)
/* 14A54 800A9E54 00809021 */  addu       $s2, $a0, $zero
/* 14A58 800A9E58 AFBF001C */  sw         $ra, 0x1c($sp)
/* 14A5C 800A9E5C AFB10014 */  sw         $s1, 0x14($sp)
/* 14A60 800A9E60 0C02A36B */  jal        func_800A8DAC
/* 14A64 800A9E64 AFB00010 */   sw        $s0, 0x10($sp)
/* 14A68 800A9E68 00002021 */  addu       $a0, $zero, $zero
/* 14A6C 800A9E6C 0C02DAC0 */  jal        func_800B6B00
/* 14A70 800A9E70 24050004 */   addiu     $a1, $zero, 4
/* 14A74 800A9E74 00008821 */  addu       $s1, $zero, $zero
/* 14A78 800A9E78 00008021 */  addu       $s0, $zero, $zero
.L800A9E7C:
/* 14A7C 800A9E7C 00002021 */  addu       $a0, $zero, $zero
.L800A9E80:
/* 14A80 800A9E80 02002821 */  addu       $a1, $s0, $zero
/* 14A84 800A9E84 0C02DAE0 */  jal        func_800B6B80
/* 14A88 800A9E88 02203021 */   addu      $a2, $s1, $zero
/* 14A8C 800A9E8C 3C058010 */  lui        $a1, %hi(D_800FB14C)
/* 14A90 800A9E90 24A5B14C */  addiu      $a1, $a1, %lo(D_800FB14C)
/* 14A94 800A9E94 0C02DA9C */  jal        func_800B6A70
/* 14A98 800A9E98 00002021 */   addu      $a0, $zero, $zero
/* 14A9C 800A9E9C 26100008 */  addiu      $s0, $s0, 8
/* 14AA0 800A9EA0 2A020028 */  slti       $v0, $s0, 0x28
/* 14AA4 800A9EA4 1440FFF6 */  bnez       $v0, .L800A9E80
/* 14AA8 800A9EA8 00002021 */   addu      $a0, $zero, $zero
/* 14AAC 800A9EAC 00008021 */  addu       $s0, $zero, $zero
.L800A9EB0:
/* 14AB0 800A9EB0 02002821 */  addu       $a1, $s0, $zero
/* 14AB4 800A9EB4 0C02DAE0 */  jal        func_800B6B80
/* 14AB8 800A9EB8 26260001 */   addiu     $a2, $s1, 1
/* 14ABC 800A9EBC 3C058010 */  lui        $a1, %hi(D_800FB158)
/* 14AC0 800A9EC0 24A5B158 */  addiu      $a1, $a1, %lo(D_800FB158)
/* 14AC4 800A9EC4 0C02DA9C */  jal        func_800B6A70
/* 14AC8 800A9EC8 00002021 */   addu      $a0, $zero, $zero
/* 14ACC 800A9ECC 26100008 */  addiu      $s0, $s0, 8
/* 14AD0 800A9ED0 2A020028 */  slti       $v0, $s0, 0x28
/* 14AD4 800A9ED4 5440FFF6 */  bnezl      $v0, .L800A9EB0
/* 14AD8 800A9ED8 00002021 */   addu      $a0, $zero, $zero
/* 14ADC 800A9EDC 26310002 */  addiu      $s1, $s1, 2
/* 14AE0 800A9EE0 2A22001E */  slti       $v0, $s1, 0x1e
/* 14AE4 800A9EE4 5440FFE5 */  bnezl      $v0, .L800A9E7C
/* 14AE8 800A9EE8 00008021 */   addu      $s0, $zero, $zero
/* 14AEC 800A9EEC 00002021 */  addu       $a0, $zero, $zero
/* 14AF0 800A9EF0 0C02DAC0 */  jal        func_800B6B00
/* 14AF4 800A9EF4 24050007 */   addiu     $a1, $zero, 7
/* 14AF8 800A9EF8 0C03016C */  jal        func_800C05B0
/* 14AFC 800A9EFC 02402021 */   addu      $a0, $s2, $zero
/* 14B00 800A9F00 00002021 */  addu       $a0, $zero, $zero
/* 14B04 800A9F04 00021042 */  srl        $v0, $v0, 1
/* 14B08 800A9F08 24050014 */  addiu      $a1, $zero, 0x14
/* 14B0C 800A9F0C 00A22823 */  subu       $a1, $a1, $v0
/* 14B10 800A9F10 0C02DAE0 */  jal        func_800B6B80
/* 14B14 800A9F14 2406000F */   addiu     $a2, $zero, 0xf
/* 14B18 800A9F18 00002021 */  addu       $a0, $zero, $zero
/* 14B1C 800A9F1C 0C02DA9C */  jal        func_800B6A70
/* 14B20 800A9F20 02402821 */   addu      $a1, $s2, $zero
/* 14B24 800A9F24 00002021 */  addu       $a0, $zero, $zero
/* 14B28 800A9F28 0C02DAB0 */  jal        func_800B6AC0
/* 14B2C 800A9F2C 24050001 */   addiu     $a1, $zero, 1
/* 14B30 800A9F30 24040001 */  addiu      $a0, $zero, 1
/* 14B34 800A9F34 0C02DAB0 */  jal        func_800B6AC0
/* 14B38 800A9F38 00002821 */   addu      $a1, $zero, $zero
/* 14B3C 800A9F3C 24040002 */  addiu      $a0, $zero, 2
/* 14B40 800A9F40 0C02DAB0 */  jal        func_800B6AC0
/* 14B44 800A9F44 00002821 */   addu      $a1, $zero, $zero
/* 14B48 800A9F48 24040003 */  addiu      $a0, $zero, 3
/* 14B4C 800A9F4C 0C02DAB0 */  jal        func_800B6AC0
/* 14B50 800A9F50 00002821 */   addu      $a1, $zero, $zero
/* 14B54 800A9F54 0C02DC6C */  jal        func_800B71B0
/* 14B58 800A9F58 24040001 */   addiu     $a0, $zero, 1
.L800A9F5C:
/* 14B5C 800A9F5C 0802A7D7 */  j          .L800A9F5C
/* 14B60 800A9F60 00000000 */   nop
/* 14B64 800A9F64 8FBF001C */  lw         $ra, 0x1c($sp)
/* 14B68 800A9F68 8FB20018 */  lw         $s2, 0x18($sp)
/* 14B6C 800A9F6C 8FB10014 */  lw         $s1, 0x14($sp)
/* 14B70 800A9F70 8FB00010 */  lw         $s0, 0x10($sp)
/* 14B74 800A9F74 27BD0020 */  addiu      $sp, $sp, 0x20
/* 14B78 800A9F78 03E00008 */  jr         $ra
/* 14B7C 800A9F7C 00000000 */   nop
