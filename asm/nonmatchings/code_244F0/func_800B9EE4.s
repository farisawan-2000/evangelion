.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9EE4
/* 24AE4 800B9EE4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 24AE8 800B9EE8 AFB00018 */  sw         $s0, 0x18($sp)
/* 24AEC 800B9EEC 00808021 */  addu       $s0, $a0, $zero
/* 24AF0 800B9EF0 AFB30024 */  sw         $s3, 0x24($sp)
/* 24AF4 800B9EF4 00A09821 */  addu       $s3, $a1, $zero
/* 24AF8 800B9EF8 AFB20020 */  sw         $s2, 0x20($sp)
/* 24AFC 800B9EFC 00C09021 */  addu       $s2, $a2, $zero
/* 24B00 800B9F00 3C05800C */  lui        $a1, %hi(func_800BA120)
/* 24B04 800B9F04 24A5A120 */  addiu      $a1, $a1, %lo(func_800BA120)
/* 24B08 800B9F08 3C06800C */  lui        $a2, %hi(func_800BA900)
/* 24B0C 800B9F0C 24C6A900 */  addiu      $a2, $a2, %lo(func_800BA900)
/* 24B10 800B9F10 00003821 */  addu       $a3, $zero, $zero
/* 24B14 800B9F14 AFBF0028 */  sw         $ra, 0x28($sp)
/* 24B18 800B9F18 0C02EE7C */  jal        func_800BB9F0
/* 24B1C 800B9F1C AFB1001C */   sw        $s1, 0x1c($sp)
/* 24B20 800B9F20 00002021 */  addu       $a0, $zero, $zero
/* 24B24 800B9F24 00002821 */  addu       $a1, $zero, $zero
/* 24B28 800B9F28 02403021 */  addu       $a2, $s2, $zero
/* 24B2C 800B9F2C 24070001 */  addiu      $a3, $zero, 1
/* 24B30 800B9F30 24110020 */  addiu      $s1, $zero, 0x20
/* 24B34 800B9F34 0C02F2E4 */  jal        func_800BCB90
/* 24B38 800B9F38 AFB10010 */   sw        $s1, 0x10($sp)
/* 24B3C 800B9F3C 00002021 */  addu       $a0, $zero, $zero
/* 24B40 800B9F40 00002821 */  addu       $a1, $zero, $zero
/* 24B44 800B9F44 02403021 */  addu       $a2, $s2, $zero
/* 24B48 800B9F48 24070001 */  addiu      $a3, $zero, 1
/* 24B4C 800B9F4C AE020014 */  sw         $v0, 0x14($s0)
/* 24B50 800B9F50 0C02F2E4 */  jal        func_800BCB90
/* 24B54 800B9F54 AFB10010 */   sw        $s1, 0x10($sp)
/* 24B58 800B9F58 26040034 */  addiu      $a0, $s0, 0x34
/* 24B5C 800B9F5C 0260F809 */  jalr       $s3
/* 24B60 800B9F60 AE020018 */   sw        $v0, 0x18($s0)
/* 24B64 800B9F64 AE020030 */  sw         $v0, 0x30($s0)
/* 24B68 800B9F68 24020001 */  addiu      $v0, $zero, 1
/* 24B6C 800B9F6C AE00003C */  sw         $zero, 0x3c($s0)
/* 24B70 800B9F70 AE020040 */  sw         $v0, 0x40($s0)
/* 24B74 800B9F74 AE000044 */  sw         $zero, 0x44($s0)
/* 24B78 800B9F78 8FBF0028 */  lw         $ra, 0x28($sp)
/* 24B7C 800B9F7C 8FB30024 */  lw         $s3, 0x24($sp)
/* 24B80 800B9F80 8FB20020 */  lw         $s2, 0x20($sp)
/* 24B84 800B9F84 8FB1001C */  lw         $s1, 0x1c($sp)
/* 24B88 800B9F88 8FB00018 */  lw         $s0, 0x18($sp)
/* 24B8C 800B9F8C 03E00008 */  jr         $ra
/* 24B90 800B9F90 27BD0030 */   addiu     $sp, $sp, 0x30
