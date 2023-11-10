glabel func_800B5EEC
/* 20AEC 800B5EEC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 20AF0 800B5EF0 AFB40028 */  sw         $s4, 0x28($sp)
/* 20AF4 800B5EF4 3C148017 */  lui        $s4, %hi(D_8016DC74)
/* 20AF8 800B5EF8 2694DC74 */  addiu      $s4, $s4, %lo(D_8016DC74)
/* 20AFC 800B5EFC AFB30024 */  sw         $s3, 0x24($sp)
/* 20B00 800B5F00 2693066C */  addiu      $s3, $s4, 0x66C
/* 20B04 800B5F04 AFB5002C */  sw         $s5, 0x2C($sp)
/* 20B08 800B5F08 269500A8 */  addiu      $s5, $s4, 0xA8
/* 20B0C 800B5F0C AFB20020 */  sw         $s2, 0x20($sp)
/* 20B10 800B5F10 27B20014 */  addiu      $s2, $sp, 0x14
/* 20B14 800B5F14 AFBF0030 */  sw         $ra, 0x30($sp)
/* 20B18 800B5F18 AFB1001C */  sw         $s1, 0x1C($sp)
/* 20B1C 800B5F1C AFB00018 */  sw         $s0, 0x18($sp)
/* 20B20 800B5F20 02802021 */  addu       $a0, $s4, $zero
.L800B5F24:
/* 20B24 800B5F24 27A50010 */  addiu      $a1, $sp, 0x10
/* 20B28 800B5F28 0C030200 */  jal        func_800C0800
/* 20B2C 800B5F2C 24060001 */   addiu     $a2, $zero, 0x1
/* 20B30 800B5F30 3C028015 */  lui        $v0, %hi(D_80149BA0)
/* 20B34 800B5F34 90429BA0 */  lbu        $v0, %lo(D_80149BA0)($v0)
/* 20B38 800B5F38 30420002 */  andi       $v0, $v0, 0x2
/* 20B3C 800B5F3C 14400032 */  bnez       $v0, .L800B6008
/* 20B40 800B5F40 00000000 */   nop
/* 20B44 800B5F44 0C02F510 */  jal        func_800BD440
/* 20B48 800B5F48 00008021 */   addu      $s0, $zero, $zero
/* 20B4C 800B5F4C 3C118017 */  lui        $s1, %hi(D_8016E2DC)
/* 20B50 800B5F50 8E31E2DC */  lw         $s1, %lo(D_8016E2DC)($s1)
/* 20B54 800B5F54 1220000B */  beqz       $s1, .L800B5F84
/* 20B58 800B5F58 00000000 */   nop
/* 20B5C 800B5F5C 0C030354 */  jal        func_800C0D50
/* 20B60 800B5F60 24100002 */   addiu     $s0, $zero, 0x2
/* 20B64 800B5F64 268400A8 */  addiu      $a0, $s4, 0xA8
/* 20B68 800B5F68 27A50014 */  addiu      $a1, $sp, 0x14
/* 20B6C 800B5F6C 0C030200 */  jal        func_800C0800
/* 20B70 800B5F70 24060001 */   addiu     $a2, $zero, 0x1
/* 20B74 800B5F74 0C03035C */  jal        func_800C0D70
/* 20B78 800B5F78 26240010 */   addiu     $a0, $s1, 0x10
/* 20B7C 800B5F7C 54400001 */  bnel       $v0, $zero, .L800B5F84
/* 20B80 800B5F80 24100001 */   addiu     $s0, $zero, 0x1
.L800B5F84:
/* 20B84 800B5F84 8FA20010 */  lw         $v0, 0x10($sp)
/* 20B88 800B5F88 24440010 */  addiu      $a0, $v0, 0x10
/* 20B8C 800B5F8C 0C0302C4 */  jal        func_800C0B10
/* 20B90 800B5F90 AE620000 */   sw        $v0, 0x0($s3)
/* 20B94 800B5F94 8FA40010 */  lw         $a0, 0x10($sp)
/* 20B98 800B5F98 0C030347 */  jal        func_800C0D1C
/* 20B9C 800B5F9C 24840010 */   addiu     $a0, $a0, 0x10
/* 20BA0 800B5FA0 02A02021 */  addu       $a0, $s5, $zero
/* 20BA4 800B5FA4 02402821 */  addu       $a1, $s2, $zero
/* 20BA8 800B5FA8 0C030200 */  jal        func_800C0800
/* 20BAC 800B5FAC 24060001 */   addiu     $a2, $zero, 0x1
/* 20BB0 800B5FB0 8E620004 */  lw         $v0, 0x4($s3)
/* 20BB4 800B5FB4 10400005 */  beqz       $v0, .L800B5FCC
/* 20BB8 800B5FB8 AE600000 */   sw        $zero, 0x0($s3)
/* 20BBC 800B5FBC 2664FAAC */  addiu      $a0, $s3, -0x554
/* 20BC0 800B5FC0 02402821 */  addu       $a1, $s2, $zero
/* 20BC4 800B5FC4 0C03024C */  jal        func_800C0930
/* 20BC8 800B5FC8 24060001 */   addiu     $a2, $zero, 0x1
.L800B5FCC:
/* 20BCC 800B5FCC 24020001 */  addiu      $v0, $zero, 0x1
/* 20BD0 800B5FD0 16020008 */  bne        $s0, $v0, .L800B5FF4
/* 20BD4 800B5FD4 24020002 */   addiu     $v0, $zero, 0x2
/* 20BD8 800B5FD8 26300010 */  addiu      $s0, $s1, 0x10
/* 20BDC 800B5FDC 0C0302C4 */  jal        func_800C0B10
/* 20BE0 800B5FE0 02002021 */   addu      $a0, $s0, $zero
/* 20BE4 800B5FE4 0C030347 */  jal        func_800C0D1C
/* 20BE8 800B5FE8 02002021 */   addu      $a0, $s0, $zero
/* 20BEC 800B5FEC 0802D802 */  j          .L800B6008
/* 20BF0 800B5FF0 00000000 */   nop
.L800B5FF4:
/* 20BF4 800B5FF4 16020004 */  bne        $s0, $v0, .L800B6008
/* 20BF8 800B5FF8 02A02021 */   addu      $a0, $s5, $zero
/* 20BFC 800B5FFC 02402821 */  addu       $a1, $s2, $zero
/* 20C00 800B6000 0C03024C */  jal        func_800C0930
/* 20C04 800B6004 24060001 */   addiu     $a2, $zero, 0x1
.L800B6008:
/* 20C08 800B6008 8FA20010 */  lw         $v0, 0x10($sp)
/* 20C0C 800B600C 8C440050 */  lw         $a0, 0x50($v0)
/* 20C10 800B6010 8C450054 */  lw         $a1, 0x54($v0)
/* 20C14 800B6014 0C03024C */  jal        func_800C0930
/* 20C18 800B6018 24060001 */   addiu     $a2, $zero, 0x1
/* 20C1C 800B601C 0802D7C9 */  j          .L800B5F24
/* 20C20 800B6020 02802021 */   addu      $a0, $s4, $zero
/* 20C24 800B6024 8FBF0030 */  lw         $ra, 0x30($sp)
/* 20C28 800B6028 8FB5002C */  lw         $s5, 0x2C($sp)
/* 20C2C 800B602C 8FB40028 */  lw         $s4, 0x28($sp)
/* 20C30 800B6030 8FB30024 */  lw         $s3, 0x24($sp)
/* 20C34 800B6034 8FB20020 */  lw         $s2, 0x20($sp)
/* 20C38 800B6038 8FB1001C */  lw         $s1, 0x1C($sp)
/* 20C3C 800B603C 8FB00018 */  lw         $s0, 0x18($sp)
/* 20C40 800B6040 03E00008 */  jr         $ra
/* 20C44 800B6044 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800B5EEC, . - func_800B5EEC
