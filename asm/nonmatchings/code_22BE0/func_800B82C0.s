glabel func_800B82C0
/* 22EC0 800B82C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 22EC4 800B82C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 22EC8 800B82C8 3C10800F */  lui        $s0, %hi(D_800F5DE0)
/* 22ECC 800B82CC 26105DE0 */  addiu      $s0, $s0, %lo(D_800F5DE0)
/* 22ED0 800B82D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 22ED4 800B82D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 22ED8 800B82D8 AFB10014 */  sw         $s1, 0x14($sp)
/* 22EDC 800B82DC 8E020000 */  lw         $v0, 0x0($s0)
/* 22EE0 800B82E0 10400009 */  beqz       $v0, .L800B8308
/* 22EE4 800B82E4 00809021 */   addu      $s2, $a0, $zero
/* 22EE8 800B82E8 96440008 */  lhu        $a0, 0x8($s2)
.L800B82EC:
/* 22EEC 800B82EC 8E030000 */  lw         $v1, 0x0($s0)
/* 22EF0 800B82F0 94620008 */  lhu        $v0, 0x8($v1)
/* 22EF4 800B82F4 10440014 */  beq        $v0, $a0, .L800B8348
/* 22EF8 800B82F8 00608021 */   addu      $s0, $v1, $zero
/* 22EFC 800B82FC 8E020000 */  lw         $v0, 0x0($s0)
/* 22F00 800B8300 1440FFFA */  bnez       $v0, .L800B82EC
/* 22F04 800B8304 00000000 */   nop
.L800B8308:
/* 22F08 800B8308 8E430004 */  lw         $v1, 0x4($s2)
/* 22F0C 800B830C 8C620004 */  lw         $v0, 0x4($v1)
/* 22F10 800B8310 10400006 */  beqz       $v0, .L800B832C
/* 22F14 800B8314 24110001 */   addiu     $s1, $zero, 0x1
/* 22F18 800B8318 24630004 */  addiu      $v1, $v1, 0x4
.L800B831C:
/* 22F1C 800B831C 24630004 */  addiu      $v1, $v1, 0x4
/* 22F20 800B8320 8C620000 */  lw         $v0, 0x0($v1)
/* 22F24 800B8324 1440FFFD */  bnez       $v0, .L800B831C
/* 22F28 800B8328 26310001 */   addiu     $s1, $s1, 0x1
.L800B832C:
/* 22F2C 800B832C 0C02E2DC */  jal        func_800B8B70
/* 22F30 800B8330 24040001 */   addiu     $a0, $zero, 0x1
/* 22F34 800B8334 00402021 */  addu       $a0, $v0, $zero
/* 22F38 800B8338 AE120000 */  sw         $s2, 0x0($s0)
/* 22F3C 800B833C AE400000 */  sw         $zero, 0x0($s2)
/* 22F40 800B8340 0C02E2DC */  jal        func_800B8B70
/* 22F44 800B8344 A251000A */   sb        $s1, 0xA($s2)
.L800B8348:
/* 22F48 800B8348 8FBF001C */  lw         $ra, 0x1C($sp)
/* 22F4C 800B834C 8FB20018 */  lw         $s2, 0x18($sp)
/* 22F50 800B8350 8FB10014 */  lw         $s1, 0x14($sp)
/* 22F54 800B8354 8FB00010 */  lw         $s0, 0x10($sp)
/* 22F58 800B8358 03E00008 */  jr         $ra
/* 22F5C 800B835C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B82C0, . - func_800B82C0
