glabel func_800B2EDC
/* 1DADC 800B2EDC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1DAE0 800B2EE0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1DAE4 800B2EE4 00808021 */  addu       $s0, $a0, $zero
/* 1DAE8 800B2EE8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1DAEC 800B2EEC 00A08821 */  addu       $s1, $a1, $zero
/* 1DAF0 800B2EF0 AFB30024 */  sw         $s3, 0x24($sp)
/* 1DAF4 800B2EF4 00C09821 */  addu       $s3, $a2, $zero
/* 1DAF8 800B2EF8 00002021 */  addu       $a0, $zero, $zero
/* 1DAFC 800B2EFC 00002821 */  addu       $a1, $zero, $zero
/* 1DB00 800B2F00 24070001 */  addiu      $a3, $zero, 0x1
/* 1DB04 800B2F04 AFB20020 */  sw         $s2, 0x20($sp)
/* 1DB08 800B2F08 24120020 */  addiu      $s2, $zero, 0x20
/* 1DB0C 800B2F0C AFBF0028 */  sw         $ra, 0x28($sp)
/* 1DB10 800B2F10 0C02F2E4 */  jal        func_800BCB90
/* 1DB14 800B2F14 AFB20010 */   sw        $s2, 0x10($sp)
/* 1DB18 800B2F18 00002021 */  addu       $a0, $zero, $zero
/* 1DB1C 800B2F1C 00002821 */  addu       $a1, $zero, $zero
/* 1DB20 800B2F20 02603021 */  addu       $a2, $s3, $zero
/* 1DB24 800B2F24 24070001 */  addiu      $a3, $zero, 0x1
/* 1DB28 800B2F28 AE02000C */  sw         $v0, 0xC($s0)
/* 1DB2C 800B2F2C 0C02F2E4 */  jal        func_800BCB90
/* 1DB30 800B2F30 AFB20010 */   sw        $s2, 0x10($sp)
/* 1DB34 800B2F34 2604002C */  addiu      $a0, $s0, 0x2C
/* 1DB38 800B2F38 0220F809 */  jalr       $s1
/* 1DB3C 800B2F3C AE020010 */   sw        $v0, 0x10($s0)
/* 1DB40 800B2F40 00002021 */  addu       $a0, $zero, $zero
/* 1DB44 800B2F44 00002821 */  addu       $a1, $zero, $zero
/* 1DB48 800B2F48 02603021 */  addu       $a2, $s3, $zero
/* 1DB4C 800B2F4C 24070001 */  addiu      $a3, $zero, 0x1
/* 1DB50 800B2F50 24110001 */  addiu      $s1, $zero, 0x1
/* 1DB54 800B2F54 AE020028 */  sw         $v0, 0x28($s0)
/* 1DB58 800B2F58 AE000034 */  sw         $zero, 0x34($s0)
/* 1DB5C 800B2F5C AE110038 */  sw         $s1, 0x38($s0)
/* 1DB60 800B2F60 AE00003C */  sw         $zero, 0x3C($s0)
/* 1DB64 800B2F64 0C02F2E4 */  jal        func_800BCB90
/* 1DB68 800B2F68 AFB20010 */   sw        $s2, 0x10($sp)
/* 1DB6C 800B2F6C 00002021 */  addu       $a0, $zero, $zero
/* 1DB70 800B2F70 00002821 */  addu       $a1, $zero, $zero
/* 1DB74 800B2F74 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1DB78 800B2F78 44810000 */  mtc1       $at, $f0
/* 1DB7C 800B2F7C 02603021 */  addu       $a2, $s3, $zero
/* 1DB80 800B2F80 24070001 */  addiu      $a3, $zero, 0x1
/* 1DB84 800B2F84 AE020040 */  sw         $v0, 0x40($s0)
/* 1DB88 800B2F88 24020050 */  addiu      $v0, $zero, 0x50
/* 1DB8C 800B2F8C AE00004C */  sw         $zero, 0x4C($s0)
/* 1DB90 800B2F90 AE110050 */  sw         $s1, 0x50($s0)
/* 1DB94 800B2F94 AE000048 */  sw         $zero, 0x48($s0)
/* 1DB98 800B2F98 E6000044 */  swc1       $f0, 0x44($s0)
/* 1DB9C 800B2F9C 0C02F2E4 */  jal        func_800BCB90
/* 1DBA0 800B2FA0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1DBA4 800B2FA4 AE020054 */  sw         $v0, 0x54($s0)
/* 1DBA8 800B2FA8 24020001 */  addiu      $v0, $zero, 0x1
/* 1DBAC 800B2FAC AE110078 */  sw         $s1, 0x78($s0)
/* 1DBB0 800B2FB0 AE000084 */  sw         $zero, 0x84($s0)
/* 1DBB4 800B2FB4 A602005A */  sh         $v0, 0x5A($s0)
/* 1DBB8 800B2FB8 A6020068 */  sh         $v0, 0x68($s0)
/* 1DBBC 800B2FBC A602006E */  sh         $v0, 0x6E($s0)
/* 1DBC0 800B2FC0 A602005C */  sh         $v0, 0x5C($s0)
/* 1DBC4 800B2FC4 A602005E */  sh         $v0, 0x5E($s0)
/* 1DBC8 800B2FC8 A6000060 */  sh         $zero, 0x60($s0)
/* 1DBCC 800B2FCC A6000062 */  sh         $zero, 0x62($s0)
/* 1DBD0 800B2FD0 A6020066 */  sh         $v0, 0x66($s0)
/* 1DBD4 800B2FD4 A6000064 */  sh         $zero, 0x64($s0)
/* 1DBD8 800B2FD8 A6020066 */  sh         $v0, 0x66($s0)
/* 1DBDC 800B2FDC A6000064 */  sh         $zero, 0x64($s0)
/* 1DBE0 800B2FE0 AE000070 */  sw         $zero, 0x70($s0)
/* 1DBE4 800B2FE4 AE000074 */  sw         $zero, 0x74($s0)
/* 1DBE8 800B2FE8 A6000058 */  sh         $zero, 0x58($s0)
/* 1DBEC 800B2FEC AE00007C */  sw         $zero, 0x7C($s0)
/* 1DBF0 800B2FF0 AE000080 */  sw         $zero, 0x80($s0)
/* 1DBF4 800B2FF4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1DBF8 800B2FF8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DBFC 800B2FFC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DC00 800B3000 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1DC04 800B3004 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DC08 800B3008 03E00008 */  jr         $ra
/* 1DC0C 800B300C 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B2EDC, . - func_800B2EDC
