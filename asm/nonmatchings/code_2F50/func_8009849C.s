glabel func_8009849C
/* 309C 8009849C 3C03800D */  lui        $v1, %hi(D_800D3A30)
/* 30A0 800984A0 8C633A30 */  lw         $v1, %lo(D_800D3A30)($v1)
/* 30A4 800984A4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 30A8 800984A8 1062002E */  beq        $v1, $v0, .L80098564
/* 30AC 800984AC 00603021 */   addu      $a2, $v1, $zero
/* 30B0 800984B0 2484000F */  addiu      $a0, $a0, 0xF
/* 30B4 800984B4 2402FFF0 */  addiu      $v0, $zero, -0x10
/* 30B8 800984B8 00822024 */  and        $a0, $a0, $v0
/* 30BC 800984BC 00003821 */  addu       $a3, $zero, $zero
/* 30C0 800984C0 00004821 */  addu       $t1, $zero, $zero
/* 30C4 800984C4 10800027 */  beqz       $a0, .L80098564
/* 30C8 800984C8 248A0010 */   addiu     $t2, $a0, 0x10
.L800984CC:
/* 30CC 800984CC 8CC20008 */  lw         $v0, 0x8($a2)
/* 30D0 800984D0 1440000C */  bnez       $v0, .L80098504
/* 30D4 800984D4 00000000 */   nop
/* 30D8 800984D8 8CC50004 */  lw         $a1, 0x4($a2)
/* 30DC 800984DC 00A4102B */  sltu       $v0, $a1, $a0
/* 30E0 800984E0 14400008 */  bnez       $v0, .L80098504
/* 30E4 800984E4 00A7102B */   sltu      $v0, $a1, $a3
/* 30E8 800984E8 2CE30001 */  sltiu      $v1, $a3, 0x1
/* 30EC 800984EC 00431025 */  or         $v0, $v0, $v1
/* 30F0 800984F0 10400004 */  beqz       $v0, .L80098504
/* 30F4 800984F4 00000000 */   nop
/* 30F8 800984F8 00A03821 */  addu       $a3, $a1, $zero
/* 30FC 800984FC 00C04021 */  addu       $t0, $a2, $zero
/* 3100 80098500 8CC90000 */  lw         $t1, 0x0($a2)
.L80098504:
/* 3104 80098504 8CC20000 */  lw         $v0, 0x0($a2)
/* 3108 80098508 1440FFF0 */  bnez       $v0, .L800984CC
/* 310C 8009850C 00403021 */   addu      $a2, $v0, $zero
/* 3110 80098510 10E00014 */  beqz       $a3, .L80098564
/* 3114 80098514 24820020 */   addiu     $v0, $a0, 0x20
/* 3118 80098518 00E2102B */  sltu       $v0, $a3, $v0
/* 311C 8009851C 1440000C */  bnez       $v0, .L80098550
/* 3120 80098520 24020001 */   addiu     $v0, $zero, 0x1
/* 3124 80098524 010A1021 */  addu       $v0, $t0, $t2
/* 3128 80098528 AD020000 */  sw         $v0, 0x0($t0)
/* 312C 8009852C 8D060000 */  lw         $a2, 0x0($t0)
/* 3130 80098530 24020001 */  addiu      $v0, $zero, 0x1
/* 3134 80098534 AD020008 */  sw         $v0, 0x8($t0)
/* 3138 80098538 00EA1023 */  subu       $v0, $a3, $t2
/* 313C 8009853C AD040004 */  sw         $a0, 0x4($t0)
/* 3140 80098540 ACC90000 */  sw         $t1, 0x0($a2)
/* 3144 80098544 ACC20004 */  sw         $v0, 0x4($a2)
/* 3148 80098548 08026157 */  j          .L8009855C
/* 314C 8009854C ACC00008 */   sw        $zero, 0x8($a2)
.L80098550:
/* 3150 80098550 AD090000 */  sw         $t1, 0x0($t0)
/* 3154 80098554 AD070004 */  sw         $a3, 0x4($t0)
/* 3158 80098558 AD020008 */  sw         $v0, 0x8($t0)
.L8009855C:
/* 315C 8009855C 0802615A */  j          .L80098568
/* 3160 80098560 25020010 */   addiu     $v0, $t0, 0x10
.L80098564:
/* 3164 80098564 00001021 */  addu       $v0, $zero, $zero
.L80098568:
/* 3168 80098568 03E00008 */  jr         $ra
/* 316C 8009856C 00000000 */   nop
.size func_8009849C, . - func_8009849C