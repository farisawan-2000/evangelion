.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AB24C
/* 15E4C 800AB24C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 15E50 800AB250 AFB20018 */  sw         $s2, 0x18($sp)
/* 15E54 800AB254 00809021 */  addu       $s2, $a0, $zero
/* 15E58 800AB258 324200FF */  andi       $v0, $s2, 0xff
/* 15E5C 800AB25C 000218C0 */  sll        $v1, $v0, 3
/* 15E60 800AB260 00621823 */  subu       $v1, $v1, $v0
/* 15E64 800AB264 AFB10014 */  sw         $s1, 0x14($sp)
/* 15E68 800AB268 24710007 */  addiu      $s1, $v1, 7
/* 15E6C 800AB26C 000318C0 */  sll        $v1, $v1, 3
/* 15E70 800AB270 3C028017 */  lui        $v0, %hi(D_8016D6C0)
/* 15E74 800AB274 2442D6C0 */  addiu      $v0, $v0, %lo(D_8016D6C0)
/* 15E78 800AB278 AFB00010 */  sw         $s0, 0x10($sp)
/* 15E7C 800AB27C 00628021 */  addu       $s0, $v1, $v0
/* 15E80 800AB280 AFBF0020 */  sw         $ra, 0x20($sp)
/* 15E84 800AB284 0C02DFA6 */  jal        func_800B7E98
/* 15E88 800AB288 AFB3001C */   sw        $s3, 0x1c($sp)
/* 15E8C 800AB28C 00401821 */  addu       $v1, $v0, $zero
/* 15E90 800AB290 1060000E */  beqz       $v1, .L800AB2CC
/* 15E94 800AB294 00000000 */   nop
/* 15E98 800AB298 1C600006 */  bgtz       $v1, .L800AB2B4
/* 15E9C 800AB29C 24020001 */   addiu     $v0, $zero, 1
/* 15EA0 800AB2A0 2402FFFF */  addiu      $v0, $zero, -1
/* 15EA4 800AB2A4 1062000D */  beq        $v1, $v0, .L800AB2DC
/* 15EA8 800AB2A8 322400FF */   andi      $a0, $s1, 0xff
/* 15EAC 800AB2AC 0802ACBC */  j          .L800AB2F0
/* 15EB0 800AB2B0 00000000 */   nop
.L800AB2B4:
/* 15EB4 800AB2B4 1462000E */  bne        $v1, $v0, .L800AB2F0
/* 15EB8 800AB2B8 322400FF */   andi      $a0, $s1, 0xff
/* 15EBC 800AB2BC 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15EC0 800AB2C0 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15EC4 800AB2C4 0802ACB9 */  j          .L800AB2E4
/* 15EC8 800AB2C8 00000000 */   nop
.L800AB2CC:
/* 15ECC 800AB2CC 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15ED0 800AB2D0 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15ED4 800AB2D4 0802ACB9 */  j          .L800AB2E4
/* 15ED8 800AB2D8 00000000 */   nop
.L800AB2DC:
/* 15EDC 800AB2DC 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15EE0 800AB2E0 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AB2E4:
/* 15EE4 800AB2E4 0C02A793 */  jal        func_800A9E4C
/* 15EE8 800AB2E8 00000000 */   nop
/* 15EEC 800AB2EC 322400FF */  andi       $a0, $s1, 0xff
.L800AB2F0:
/* 15EF0 800AB2F0 02002821 */  addu       $a1, $s0, $zero
/* 15EF4 800AB2F4 0C02DF9B */  jal        func_800B7E6C
/* 15EF8 800AB2F8 24060038 */   addiu     $a2, $zero, 0x38
/* 15EFC 800AB2FC 00401821 */  addu       $v1, $v0, $zero
/* 15F00 800AB300 2402FFFF */  addiu      $v0, $zero, -1
/* 15F04 800AB304 10620007 */  beq        $v1, $v0, .L800AB324
/* 15F08 800AB308 24020008 */   addiu     $v0, $zero, 8
/* 15F0C 800AB30C 1462000A */  bne        $v1, $v0, .L800AB338
/* 15F10 800AB310 324200FF */   andi      $v0, $s2, 0xff
/* 15F14 800AB314 3C048010 */  lui        $a0, %hi(D_800FB200)
/* 15F18 800AB318 2484B200 */  addiu      $a0, $a0, %lo(D_800FB200)
/* 15F1C 800AB31C 0802ACCB */  j          .L800AB32C
/* 15F20 800AB320 00000000 */   nop
.L800AB324:
/* 15F24 800AB324 3C048010 */  lui        $a0, %hi(D_800FB224)
/* 15F28 800AB328 2484B224 */  addiu      $a0, $a0, %lo(D_800FB224)
.L800AB32C:
/* 15F2C 800AB32C 0C02A793 */  jal        func_800A9E4C
/* 15F30 800AB330 00000000 */   nop
/* 15F34 800AB334 324200FF */  andi       $v0, $s2, 0xff
.L800AB338:
/* 15F38 800AB338 000218C0 */  sll        $v1, $v0, 3
/* 15F3C 800AB33C 00621823 */  subu       $v1, $v1, $v0
/* 15F40 800AB340 24710007 */  addiu      $s1, $v1, 7
/* 15F44 800AB344 24040038 */  addiu      $a0, $zero, 0x38
/* 15F48 800AB348 000318C0 */  sll        $v1, $v1, 3
/* 15F4C 800AB34C 3C028017 */  lui        $v0, %hi(D_8016D6C0)
/* 15F50 800AB350 2442D6C0 */  addiu      $v0, $v0, %lo(D_8016D6C0)
/* 15F54 800AB354 0C032663 */  jal        func_800C998C
/* 15F58 800AB358 00629821 */   addu      $s3, $v1, $v0
/* 15F5C 800AB35C 0C02DFA6 */  jal        func_800B7E98
/* 15F60 800AB360 00408021 */   addu      $s0, $v0, $zero
/* 15F64 800AB364 00401821 */  addu       $v1, $v0, $zero
/* 15F68 800AB368 1060000E */  beqz       $v1, .L800AB3A4
/* 15F6C 800AB36C 00000000 */   nop
/* 15F70 800AB370 1C600006 */  bgtz       $v1, .L800AB38C
/* 15F74 800AB374 24020001 */   addiu     $v0, $zero, 1
/* 15F78 800AB378 2402FFFF */  addiu      $v0, $zero, -1
/* 15F7C 800AB37C 1062000D */  beq        $v1, $v0, .L800AB3B4
/* 15F80 800AB380 322400FF */   andi      $a0, $s1, 0xff
/* 15F84 800AB384 0802ACF2 */  j          .L800AB3C8
/* 15F88 800AB388 00000000 */   nop
.L800AB38C:
/* 15F8C 800AB38C 1462000E */  bne        $v1, $v0, .L800AB3C8
/* 15F90 800AB390 322400FF */   andi      $a0, $s1, 0xff
/* 15F94 800AB394 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15F98 800AB398 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15F9C 800AB39C 0802ACEF */  j          .L800AB3BC
/* 15FA0 800AB3A0 00000000 */   nop
.L800AB3A4:
/* 15FA4 800AB3A4 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15FA8 800AB3A8 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15FAC 800AB3AC 0802ACEF */  j          .L800AB3BC
/* 15FB0 800AB3B0 00000000 */   nop
.L800AB3B4:
/* 15FB4 800AB3B4 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15FB8 800AB3B8 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AB3BC:
/* 15FBC 800AB3BC 0C02A793 */  jal        func_800A9E4C
/* 15FC0 800AB3C0 00000000 */   nop
/* 15FC4 800AB3C4 322400FF */  andi       $a0, $s1, 0xff
.L800AB3C8:
/* 15FC8 800AB3C8 02002821 */  addu       $a1, $s0, $zero
/* 15FCC 800AB3CC 0C02DF90 */  jal        func_800B7E40
/* 15FD0 800AB3D0 24060038 */   addiu     $a2, $zero, 0x38
/* 15FD4 800AB3D4 00401821 */  addu       $v1, $v0, $zero
/* 15FD8 800AB3D8 2402FFFF */  addiu      $v0, $zero, -1
/* 15FDC 800AB3DC 10620007 */  beq        $v1, $v0, .L800AB3FC
/* 15FE0 800AB3E0 24020008 */   addiu     $v0, $zero, 8
/* 15FE4 800AB3E4 1462000A */  bne        $v1, $v0, .L800AB410
/* 15FE8 800AB3E8 02002021 */   addu      $a0, $s0, $zero
/* 15FEC 800AB3EC 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 15FF0 800AB3F0 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 15FF4 800AB3F4 0802AD01 */  j          .L800AB404
/* 15FF8 800AB3F8 00000000 */   nop
.L800AB3FC:
/* 15FFC 800AB3FC 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 16000 800AB400 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AB404:
/* 16004 800AB404 0C02A793 */  jal        func_800A9E4C
/* 16008 800AB408 00000000 */   nop
/* 1600C 800AB40C 02002021 */  addu       $a0, $s0, $zero
.L800AB410:
/* 16010 800AB410 02602821 */  addu       $a1, $s3, $zero
/* 16014 800AB414 0C0327A8 */  jal        func_800C9EA0
/* 16018 800AB418 24060038 */   addiu     $a2, $zero, 0x38
/* 1601C 800AB41C 10400005 */  beqz       $v0, .L800AB434
/* 16020 800AB420 00000000 */   nop
/* 16024 800AB424 3C048010 */  lui        $a0, %hi(D_800FB240)
/* 16028 800AB428 2484B240 */  addiu      $a0, $a0, %lo(D_800FB240)
/* 1602C 800AB42C 0C02A793 */  jal        func_800A9E4C
/* 16030 800AB430 00000000 */   nop
.L800AB434:
/* 16034 800AB434 0C0326A1 */  jal        func_800C9A84
/* 16038 800AB438 02002021 */   addu      $a0, $s0, $zero
/* 1603C 800AB43C 26440001 */  addiu      $a0, $s2, 1
/* 16040 800AB440 0C02AAA2 */  jal        func_800AAA88
/* 16044 800AB444 308400FF */   andi      $a0, $a0, 0xff
/* 16048 800AB448 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1604C 800AB44C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 16050 800AB450 8FB20018 */  lw         $s2, 0x18($sp)
/* 16054 800AB454 8FB10014 */  lw         $s1, 0x14($sp)
/* 16058 800AB458 8FB00010 */  lw         $s0, 0x10($sp)
/* 1605C 800AB45C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 16060 800AB460 03E00008 */  jr         $ra
/* 16064 800AB464 00000000 */   nop
