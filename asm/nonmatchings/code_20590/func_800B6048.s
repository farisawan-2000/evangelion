glabel func_800B6048
/* 20C48 800B6048 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20C4C 800B604C AFB00018 */  sw         $s0, 0x18($sp)
/* 20C50 800B6050 3C108017 */  lui        $s0, %hi(D_8016DCAC)
/* 20C54 800B6054 2610DCAC */  addiu      $s0, $s0, %lo(D_8016DCAC)
/* 20C58 800B6058 AFB1001C */  sw         $s1, 0x1C($sp)
/* 20C5C 800B605C 27B10014 */  addiu      $s1, $sp, 0x14
/* 20C60 800B6060 AFBF0020 */  sw         $ra, 0x20($sp)
/* 20C64 800B6064 02002021 */  addu       $a0, $s0, $zero
.L800B6068:
/* 20C68 800B6068 27A50010 */  addiu      $a1, $sp, 0x10
/* 20C6C 800B606C 0C030200 */  jal        func_800C0800
/* 20C70 800B6070 24060001 */   addiu     $a2, $zero, 0x1
/* 20C74 800B6074 3C028015 */  lui        $v0, %hi(D_80149BA0)
/* 20C78 800B6078 90429BA0 */  lbu        $v0, %lo(D_80149BA0)($v0)
/* 20C7C 800B607C 30420002 */  andi       $v0, $v0, 0x2
/* 20C80 800B6080 14400037 */  bnez       $v0, .L800B6160
/* 20C84 800B6084 00000000 */   nop
/* 20C88 800B6088 0C02D863 */  jal        func_800B618C
/* 20C8C 800B608C 8FA40010 */   lw        $a0, 0x10($sp)
/* 20C90 800B6090 0C02E2DC */  jal        func_800B8B70
/* 20C94 800B6094 24040001 */   addiu     $a0, $zero, 0x1
/* 20C98 800B6098 3C038017 */  lui        $v1, %hi(D_8016E2E0)
/* 20C9C 800B609C 8C63E2E0 */  lw         $v1, %lo(D_8016E2E0)($v1)
/* 20CA0 800B60A0 1060000E */  beqz       $v1, .L800B60DC
/* 20CA4 800B60A4 00402021 */   addu      $a0, $v0, $zero
/* 20CA8 800B60A8 8FA20010 */  lw         $v0, 0x10($sp)
/* 20CAC 800B60AC 3C018017 */  lui        $at, %hi(D_8016E2E4)
/* 20CB0 800B60B0 0C02E2DC */  jal        func_800B8B70
/* 20CB4 800B60B4 AC22E2E4 */   sw        $v0, %lo(D_8016E2E4)($at)
/* 20CB8 800B60B8 260400E0 */  addiu      $a0, $s0, 0xE0
/* 20CBC 800B60BC 27A50014 */  addiu      $a1, $sp, 0x14
/* 20CC0 800B60C0 0C030200 */  jal        func_800C0800
/* 20CC4 800B60C4 24060001 */   addiu     $a2, $zero, 0x1
/* 20CC8 800B60C8 0C02E2DC */  jal        func_800B8B70
/* 20CCC 800B60CC 24040001 */   addiu     $a0, $zero, 0x1
/* 20CD0 800B60D0 00402021 */  addu       $a0, $v0, $zero
/* 20CD4 800B60D4 3C018017 */  lui        $at, %hi(D_8016E2E4)
/* 20CD8 800B60D8 AC20E2E4 */  sw         $zero, %lo(D_8016E2E4)($at)
.L800B60DC:
/* 20CDC 800B60DC 0C02E2DC */  jal        func_800B8B70
/* 20CE0 800B60E0 00000000 */   nop
/* 20CE4 800B60E4 0C02E2DC */  jal        func_800B8B70
/* 20CE8 800B60E8 24040001 */   addiu     $a0, $zero, 0x1
/* 20CEC 800B60EC 8FA30010 */  lw         $v1, 0x10($sp)
/* 20CF0 800B60F0 3C018017 */  lui        $at, %hi(D_8016E2DC)
/* 20CF4 800B60F4 AC23E2DC */  sw         $v1, %lo(D_8016E2DC)($at)
/* 20CF8 800B60F8 0C02E2DC */  jal        func_800B8B70
/* 20CFC 800B60FC 00402021 */   addu      $a0, $v0, $zero
/* 20D00 800B6100 8FA40010 */  lw         $a0, 0x10($sp)
/* 20D04 800B6104 0C0302C4 */  jal        func_800C0B10
/* 20D08 800B6108 24840010 */   addiu     $a0, $a0, 0x10
/* 20D0C 800B610C 8FA40010 */  lw         $a0, 0x10($sp)
/* 20D10 800B6110 0C030347 */  jal        func_800C0D1C
/* 20D14 800B6114 24840010 */   addiu     $a0, $a0, 0x10
/* 20D18 800B6118 26040070 */  addiu      $a0, $s0, 0x70
/* 20D1C 800B611C 02202821 */  addu       $a1, $s1, $zero
/* 20D20 800B6120 0C030200 */  jal        func_800C0800
/* 20D24 800B6124 24060001 */   addiu     $a2, $zero, 0x1
/* 20D28 800B6128 0C02E2DC */  jal        func_800B8B70
/* 20D2C 800B612C 24040001 */   addiu     $a0, $zero, 0x1
/* 20D30 800B6130 3C018017 */  lui        $at, %hi(D_8016E2DC)
/* 20D34 800B6134 AC20E2DC */  sw         $zero, %lo(D_8016E2DC)($at)
/* 20D38 800B6138 0C02E2DC */  jal        func_800B8B70
/* 20D3C 800B613C 00402021 */   addu      $a0, $v0, $zero
/* 20D40 800B6140 8FA20010 */  lw         $v0, 0x10($sp)
/* 20D44 800B6144 8C420008 */  lw         $v0, 0x8($v0)
/* 20D48 800B6148 30420002 */  andi       $v0, $v0, 0x2
/* 20D4C 800B614C 14400004 */  bnez       $v0, .L800B6160
/* 20D50 800B6150 260400A8 */   addiu     $a0, $s0, 0xA8
/* 20D54 800B6154 02202821 */  addu       $a1, $s1, $zero
/* 20D58 800B6158 0C030200 */  jal        func_800C0800
/* 20D5C 800B615C 24060001 */   addiu     $a2, $zero, 0x1
.L800B6160:
/* 20D60 800B6160 8FA50010 */  lw         $a1, 0x10($sp)
/* 20D64 800B6164 8CA40050 */  lw         $a0, 0x50($a1)
/* 20D68 800B6168 0C03024C */  jal        func_800C0930
/* 20D6C 800B616C 24060001 */   addiu     $a2, $zero, 0x1
/* 20D70 800B6170 0802D81A */  j          .L800B6068
/* 20D74 800B6174 02002021 */   addu      $a0, $s0, $zero
/* 20D78 800B6178 8FBF0020 */  lw         $ra, 0x20($sp)
/* 20D7C 800B617C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 20D80 800B6180 8FB00018 */  lw         $s0, 0x18($sp)
/* 20D84 800B6184 03E00008 */  jr         $ra
/* 20D88 800B6188 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800B6048, . - func_800B6048
