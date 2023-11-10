glabel func_800A5EB0
/* 10AB0 800A5EB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 10AB4 800A5EB4 00052C00 */  sll        $a1, $a1, 16
/* 10AB8 800A5EB8 00052C03 */  sra        $a1, $a1, 16
/* 10ABC 800A5EBC AFB20038 */  sw         $s2, 0x38($sp)
/* 10AC0 800A5EC0 30F200FF */  andi       $s2, $a3, 0xFF
/* 10AC4 800A5EC4 AFB10034 */  sw         $s1, 0x34($sp)
/* 10AC8 800A5EC8 00B2001A */  div        $zero, $a1, $s2
/* 10ACC 800A5ECC 16400002 */  bnez       $s2, .L800A5ED8
/* 10AD0 800A5ED0 00000000 */   nop
/* 10AD4 800A5ED4 0007000D */  break      7
.L800A5ED8:
/* 10AD8 800A5ED8 2401FFFF */  addiu      $at, $zero, -0x1
/* 10ADC 800A5EDC 16410004 */  bne        $s2, $at, .L800A5EF0
/* 10AE0 800A5EE0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 10AE4 800A5EE4 14A10002 */  bne        $a1, $at, .L800A5EF0
/* 10AE8 800A5EE8 00000000 */   nop
/* 10AEC 800A5EEC 0006000D */  break      6
.L800A5EF0:
/* 10AF0 800A5EF0 00008812 */  mflo       $s1
/* 10AF4 800A5EF4 00000000 */  nop
/* 10AF8 800A5EF8 00000000 */  nop
/* 10AFC 800A5EFC 00063400 */  sll        $a2, $a2, 16
/* 10B00 800A5F00 AFB3003C */  sw         $s3, 0x3C($sp)
/* 10B04 800A5F04 00069C03 */  sra        $s3, $a2, 16
/* 10B08 800A5F08 AFB00030 */  sw         $s0, 0x30($sp)
/* 10B0C 800A5F0C 00000000 */  nop
/* 10B10 800A5F10 02330018 */  mult       $s1, $s3
/* 10B14 800A5F14 00008012 */  mflo       $s0
/* 10B18 800A5F18 00000000 */  nop
/* 10B1C 800A5F1C 00000000 */  nop
/* 10B20 800A5F20 AFB50044 */  sw         $s5, 0x44($sp)
/* 10B24 800A5F24 0080A821 */  addu       $s5, $a0, $zero
/* 10B28 800A5F28 AFBF0048 */  sw         $ra, 0x48($sp)
/* 10B2C 800A5F2C AFB40040 */  sw         $s4, 0x40($sp)
/* 10B30 800A5F30 0C032663 */  jal        func_800C998C
/* 10B34 800A5F34 02002021 */   addu      $a0, $s0, $zero
/* 10B38 800A5F38 02A02021 */  addu       $a0, $s5, $zero
/* 10B3C 800A5F3C 0040A021 */  addu       $s4, $v0, $zero
/* 10B40 800A5F40 02802821 */  addu       $a1, $s4, $zero
/* 10B44 800A5F44 0C03006C */  jal        func_800C01B0
/* 10B48 800A5F48 02003021 */   addu      $a2, $s0, $zero
/* 10B4C 800A5F4C 24020001 */  addiu      $v0, $zero, 0x1
/* 10B50 800A5F50 1242001F */  beq        $s2, $v0, .L800A5FD0
/* 10B54 800A5F54 24020002 */   addiu     $v0, $zero, 0x2
/* 10B58 800A5F58 16420033 */  bne        $s2, $v0, .L800A6028
/* 10B5C 800A5F5C 00000000 */   nop
/* 10B60 800A5F60 1A600031 */  blez       $s3, .L800A6028
/* 10B64 800A5F64 00004021 */   addu      $t0, $zero, $zero
/* 10B68 800A5F68 02603021 */  addu       $a2, $s3, $zero
/* 10B6C 800A5F6C 02205021 */  addu       $t2, $s1, $zero
/* 10B70 800A5F70 00004821 */  addu       $t1, $zero, $zero
.L800A5F74:
/* 10B74 800A5F74 02893821 */  addu       $a3, $s4, $t1
/* 10B78 800A5F78 02AA1021 */  addu       $v0, $s5, $t2
/* 10B7C 800A5F7C 2445FFFF */  addiu      $a1, $v0, -0x1
/* 10B80 800A5F80 1A20000C */  blez       $s1, .L800A5FB4
/* 10B84 800A5F84 00002021 */   addu      $a0, $zero, $zero
.L800A5F88:
/* 10B88 800A5F88 90E20000 */  lbu        $v0, 0x0($a3)
/* 10B8C 800A5F8C 24E70001 */  addiu      $a3, $a3, 0x1
/* 10B90 800A5F90 24840001 */  addiu      $a0, $a0, 0x1
/* 10B94 800A5F94 3043000F */  andi       $v1, $v0, 0xF
/* 10B98 800A5F98 00031900 */  sll        $v1, $v1, 4
/* 10B9C 800A5F9C 00021102 */  srl        $v0, $v0, 4
/* 10BA0 800A5FA0 00621825 */  or         $v1, $v1, $v0
/* 10BA4 800A5FA4 A0A30000 */  sb         $v1, 0x0($a1)
/* 10BA8 800A5FA8 0091102A */  slt        $v0, $a0, $s1
/* 10BAC 800A5FAC 1440FFF6 */  bnez       $v0, .L800A5F88
/* 10BB0 800A5FB0 24A5FFFF */   addiu     $a1, $a1, -0x1
.L800A5FB4:
/* 10BB4 800A5FB4 01515021 */  addu       $t2, $t2, $s1
/* 10BB8 800A5FB8 25080001 */  addiu      $t0, $t0, 0x1
/* 10BBC 800A5FBC 0106102A */  slt        $v0, $t0, $a2
/* 10BC0 800A5FC0 1440FFEC */  bnez       $v0, .L800A5F74
/* 10BC4 800A5FC4 01314821 */   addu      $t1, $t1, $s1
/* 10BC8 800A5FC8 0802980A */  j          .L800A6028
/* 10BCC 800A5FCC 00000000 */   nop
.L800A5FD0:
/* 10BD0 800A5FD0 1A600015 */  blez       $s3, .L800A6028
/* 10BD4 800A5FD4 00004021 */   addu      $t0, $zero, $zero
/* 10BD8 800A5FD8 02603021 */  addu       $a2, $s3, $zero
/* 10BDC 800A5FDC 02204821 */  addu       $t1, $s1, $zero
/* 10BE0 800A5FE0 00001821 */  addu       $v1, $zero, $zero
.L800A5FE4:
/* 10BE4 800A5FE4 02833821 */  addu       $a3, $s4, $v1
/* 10BE8 800A5FE8 02A91021 */  addu       $v0, $s5, $t1
/* 10BEC 800A5FEC 2445FFFF */  addiu      $a1, $v0, -0x1
/* 10BF0 800A5FF0 1A200008 */  blez       $s1, .L800A6014
/* 10BF4 800A5FF4 00002021 */   addu      $a0, $zero, $zero
.L800A5FF8:
/* 10BF8 800A5FF8 90E20000 */  lbu        $v0, 0x0($a3)
/* 10BFC 800A5FFC 24E70001 */  addiu      $a3, $a3, 0x1
/* 10C00 800A6000 24840001 */  addiu      $a0, $a0, 0x1
/* 10C04 800A6004 A0A20000 */  sb         $v0, 0x0($a1)
/* 10C08 800A6008 0091102A */  slt        $v0, $a0, $s1
/* 10C0C 800A600C 1440FFFA */  bnez       $v0, .L800A5FF8
/* 10C10 800A6010 24A5FFFF */   addiu     $a1, $a1, -0x1
.L800A6014:
/* 10C14 800A6014 01314821 */  addu       $t1, $t1, $s1
/* 10C18 800A6018 25080001 */  addiu      $t0, $t0, 0x1
/* 10C1C 800A601C 0106102A */  slt        $v0, $t0, $a2
/* 10C20 800A6020 1440FFF0 */  bnez       $v0, .L800A5FE4
/* 10C24 800A6024 00711821 */   addu      $v1, $v1, $s1
.L800A6028:
/* 10C28 800A6028 0C0326A1 */  jal        func_800C9A84
/* 10C2C 800A602C 02802021 */   addu      $a0, $s4, $zero
/* 10C30 800A6030 8FBF0048 */  lw         $ra, 0x48($sp)
/* 10C34 800A6034 8FB50044 */  lw         $s5, 0x44($sp)
/* 10C38 800A6038 8FB40040 */  lw         $s4, 0x40($sp)
/* 10C3C 800A603C 8FB3003C */  lw         $s3, 0x3C($sp)
/* 10C40 800A6040 8FB20038 */  lw         $s2, 0x38($sp)
/* 10C44 800A6044 8FB10034 */  lw         $s1, 0x34($sp)
/* 10C48 800A6048 8FB00030 */  lw         $s0, 0x30($sp)
/* 10C4C 800A604C 27BD0050 */  addiu      $sp, $sp, 0x50
/* 10C50 800A6050 03E00008 */  jr         $ra
/* 10C54 800A6054 00000000 */   nop
.size func_800A5EB0, . - func_800A5EB0
