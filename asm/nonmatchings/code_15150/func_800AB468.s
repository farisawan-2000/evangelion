glabel func_800AB468
/* 16068 800AB468 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1606C 800AB46C AFB40020 */  sw         $s4, 0x20($sp)
/* 16070 800AB470 309400FF */  andi       $s4, $a0, 0xFF
/* 16074 800AB474 AFB00010 */  sw         $s0, 0x10($sp)
/* 16078 800AB478 001480C0 */  sll        $s0, $s4, 3
/* 1607C 800AB47C 02148023 */  subu       $s0, $s0, $s4
/* 16080 800AB480 001080C0 */  sll        $s0, $s0, 3
/* 16084 800AB484 AFB10014 */  sw         $s1, 0x14($sp)
/* 16088 800AB488 3C118017 */  lui        $s1, %hi(D_8016D6C0)
/* 1608C 800AB48C 2631D6C0 */  addiu      $s1, $s1, %lo(D_8016D6C0)
/* 16090 800AB490 AFB20018 */  sw         $s2, 0x18($sp)
/* 16094 800AB494 02119021 */  addu       $s2, $s0, $s1
/* 16098 800AB498 02402021 */  addu       $a0, $s2, $zero
/* 1609C 800AB49C 3C058010 */  lui        $a1, %hi(D_800FB274)
/* 160A0 800AB4A0 24A5B274 */  addiu      $a1, $a1, %lo(D_800FB274)
/* 160A4 800AB4A4 24060008 */  addiu      $a2, $zero, 0x8
/* 160A8 800AB4A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 160AC 800AB4AC 0C0327A8 */  jal        func_800C9EA0
/* 160B0 800AB4B0 AFB3001C */   sw        $s3, 0x1C($sp)
/* 160B4 800AB4B4 00409821 */  addu       $s3, $v0, $zero
/* 160B8 800AB4B8 26310008 */  addiu      $s1, $s1, 0x8
/* 160BC 800AB4BC 02112021 */  addu       $a0, $s0, $s1
/* 160C0 800AB4C0 3C058010 */  lui        $a1, %hi(D_800FB260)
/* 160C4 800AB4C4 24A5B260 */  addiu      $a1, $a1, %lo(D_800FB260)
/* 160C8 800AB4C8 0C0327A8 */  jal        func_800C9EA0
/* 160CC 800AB4CC 24060008 */   addiu     $a2, $zero, 0x8
/* 160D0 800AB4D0 02629825 */  or         $s3, $s3, $v0
/* 160D4 800AB4D4 02402021 */  addu       $a0, $s2, $zero
/* 160D8 800AB4D8 24050038 */  addiu      $a1, $zero, 0x38
/* 160DC 800AB4DC 3C028015 */  lui        $v0, %hi(D_80149EEC)
/* 160E0 800AB4E0 24429EEC */  addiu      $v0, $v0, %lo(D_80149EEC)
/* 160E4 800AB4E4 00148080 */  sll        $s0, $s4, 2
/* 160E8 800AB4E8 0C025C56 */  jal        func_80097158
/* 160EC 800AB4EC 02028021 */   addu      $s0, $s0, $v0
/* 160F0 800AB4F0 8E030000 */  lw         $v1, 0x0($s0)
/* 160F4 800AB4F4 54620001 */  bnel       $v1, $v0, .L800AB4FC
/* 160F8 800AB4F8 36730001 */   ori       $s3, $s3, 0x1
.L800AB4FC:
/* 160FC 800AB4FC 12600005 */  beqz       $s3, .L800AB514
/* 16100 800AB500 00000000 */   nop
/* 16104 800AB504 0C02AD4E */  jal        func_800AB538
/* 16108 800AB508 02802021 */   addu      $a0, $s4, $zero
/* 1610C 800AB50C 0C02AC93 */  jal        func_800AB24C
/* 16110 800AB510 02802021 */   addu      $a0, $s4, $zero
.L800AB514:
/* 16114 800AB514 8FBF0024 */  lw         $ra, 0x24($sp)
/* 16118 800AB518 8FB40020 */  lw         $s4, 0x20($sp)
/* 1611C 800AB51C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 16120 800AB520 8FB20018 */  lw         $s2, 0x18($sp)
/* 16124 800AB524 8FB10014 */  lw         $s1, 0x14($sp)
/* 16128 800AB528 8FB00010 */  lw         $s0, 0x10($sp)
/* 1612C 800AB52C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 16130 800AB530 03E00008 */  jr         $ra
/* 16134 800AB534 00000000 */   nop
.size func_800AB468, . - func_800AB468
