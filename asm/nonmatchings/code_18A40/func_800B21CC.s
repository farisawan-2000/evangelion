.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B21CC
/* 1CDCC 800B21CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CDD0 800B21D0 3C03FF00 */  lui        $v1, 0xff00
/* 1CDD4 800B21D4 00831024 */  and        $v0, $a0, $v1
/* 1CDD8 800B21D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CDDC 800B21DC 14430009 */  bne        $v0, $v1, .L800B2204
/* 1CDE0 800B21E0 AFB00010 */   sw        $s0, 0x10($sp)
/* 1CDE4 800B21E4 3C098015 */  lui        $t1, %hi(D_80149F18)
/* 1CDE8 800B21E8 8D299F18 */  lw         $t1, %lo(D_80149F18)($t1)
/* 1CDEC 800B21EC 3C0200FF */  lui        $v0, 0xff
/* 1CDF0 800B21F0 3442FFFF */  ori        $v0, $v0, 0xffff
/* 1CDF4 800B21F4 00822024 */  and        $a0, $a0, $v0
/* 1CDF8 800B21F8 3C020014 */  lui        $v0, 0x14
/* 1CDFC 800B21FC 0802C888 */  j          .L800B2220
/* 1CE00 800B2200 00822021 */   addu      $a0, $a0, $v0
.L800B2204:
/* 1CE04 800B2204 3C028017 */  lui        $v0, %hi(D_8016D0DC)
/* 1CE08 800B2208 8C42D0DC */  lw         $v0, %lo(D_8016D0DC)($v0)
/* 1CE0C 800B220C 30420001 */  andi       $v0, $v0, 1
/* 1CE10 800B2210 14400051 */  bnez       $v0, .L800B2358
/* 1CE14 800B2214 00001021 */   addu      $v0, $zero, $zero
/* 1CE18 800B2218 3C098010 */  lui        $t1, %hi(D_801029D8)
/* 1CE1C 800B221C 8D2929D8 */  lw         $t1, %lo(D_801029D8)($t1)
.L800B2220:
/* 1CE20 800B2220 3C068010 */  lui        $a2, %hi(D_801029A0)
/* 1CE24 800B2224 8CC629A0 */  lw         $a2, %lo(D_801029A0)($a2)
/* 1CE28 800B2228 00003821 */  addu       $a3, $zero, $zero
/* 1CE2C 800B222C 10C0000D */  beqz       $a2, .L800B2264
/* 1CE30 800B2230 00852821 */   addu      $a1, $a0, $a1
/* 1CE34 800B2234 3C088010 */  lui        $t0, %hi(D_801029B4)
/* 1CE38 800B2238 8D0829B4 */  lw         $t0, %lo(D_801029B4)($t0)
.L800B223C:
/* 1CE3C 800B223C 8CC3000C */  lw         $v1, 0xc($a2)
/* 1CE40 800B2240 0083102B */  sltu       $v0, $a0, $v1
/* 1CE44 800B2244 14400007 */  bnez       $v0, .L800B2264
/* 1CE48 800B2248 00681021 */   addu      $v0, $v1, $t0
/* 1CE4C 800B224C 0045102B */  sltu       $v0, $v0, $a1
/* 1CE50 800B2250 10400016 */  beqz       $v0, .L800B22AC
/* 1CE54 800B2254 00C03821 */   addu      $a3, $a2, $zero
/* 1CE58 800B2258 8CC60004 */  lw         $a2, 4($a2)
/* 1CE5C 800B225C 14C0FFF7 */  bnez       $a2, .L800B223C
/* 1CE60 800B2260 00000000 */   nop
.L800B2264:
/* 1CE64 800B2264 3C108010 */  lui        $s0, %hi(D_801029A4)
/* 1CE68 800B2268 8E1029A4 */  lw         $s0, %lo(D_801029A4)($s0)
/* 1CE6C 800B226C 16000004 */  bnez       $s0, .L800B2280
/* 1CE70 800B2270 00000000 */   nop
/* 1CE74 800B2274 3C028010 */  lui        $v0, %hi(D_801029A0)
/* 1CE78 800B2278 0802C8D6 */  j          .L800B2358
/* 1CE7C 800B227C 8C4229A0 */   lw        $v0, %lo(D_801029A0)($v0)
.L800B2280:
/* 1CE80 800B2280 8E020004 */  lw         $v0, 4($s0)
/* 1CE84 800B2284 3C018010 */  lui        $at, %hi(D_801029A4)
/* 1CE88 800B2288 10E0000C */  beqz       $a3, .L800B22BC
/* 1CE8C 800B228C AC2229A4 */   sw        $v0, %lo(D_801029A4)($at)
/* 1CE90 800B2290 8CE20004 */  lw         $v0, 4($a3)
/* 1CE94 800B2294 10400002 */  beqz       $v0, .L800B22A0
/* 1CE98 800B2298 AE020004 */   sw        $v0, 4($s0)
/* 1CE9C 800B229C AC500000 */  sw         $s0, ($v0)
.L800B22A0:
/* 1CEA0 800B22A0 AE070000 */  sw         $a3, ($s0)
/* 1CEA4 800B22A4 0802C8B7 */  j          .L800B22DC
/* 1CEA8 800B22A8 ACF00004 */   sw        $s0, 4($a3)
.L800B22AC:
/* 1CEAC 800B22AC 24020002 */  addiu      $v0, $zero, 2
/* 1CEB0 800B22B0 ACC20008 */  sw         $v0, 8($a2)
/* 1CEB4 800B22B4 0802C8D6 */  j          .L800B2358
/* 1CEB8 800B22B8 00C01021 */   addu      $v0, $a2, $zero
.L800B22BC:
/* 1CEBC 800B22BC 3C028010 */  lui        $v0, %hi(D_801029A0)
/* 1CEC0 800B22C0 8C4229A0 */  lw         $v0, %lo(D_801029A0)($v0)
/* 1CEC4 800B22C4 AE000000 */  sw         $zero, ($s0)
/* 1CEC8 800B22C8 10400002 */  beqz       $v0, .L800B22D4
/* 1CECC 800B22CC AE020004 */   sw        $v0, 4($s0)
/* 1CED0 800B22D0 AC500000 */  sw         $s0, ($v0)
.L800B22D4:
/* 1CED4 800B22D4 3C018010 */  lui        $at, %hi(D_801029A0)
/* 1CED8 800B22D8 AC3029A0 */  sw         $s0, %lo(D_801029A0)($at)
.L800B22DC:
/* 1CEDC 800B22DC 3C038010 */  lui        $v1, %hi(D_801029B8)
/* 1CEE0 800B22E0 8C6329B8 */  lw         $v1, %lo(D_801029B8)($v1)
/* 1CEE4 800B22E4 3C058010 */  lui        $a1, %hi(D_801029AC)
/* 1CEE8 800B22E8 8CA529AC */  lw         $a1, %lo(D_801029AC)($a1)
/* 1CEEC 800B22EC 2402FFFE */  addiu      $v0, $zero, -2
/* 1CEF0 800B22F0 00821024 */  and        $v0, $a0, $v0
/* 1CEF4 800B22F4 AE02000C */  sw         $v0, 0xc($s0)
/* 1CEF8 800B22F8 24020002 */  addiu      $v0, $zero, 2
/* 1CEFC 800B22FC AE020008 */  sw         $v0, 8($s0)
/* 1CF00 800B2300 24620001 */  addiu      $v0, $v1, 1
/* 1CF04 800B2304 3C018010 */  lui        $at, %hi(D_801029B8)
/* 1CF08 800B2308 AC2229B8 */  sw         $v0, %lo(D_801029B8)($at)
/* 1CF0C 800B230C 00031040 */  sll        $v0, $v1, 1
/* 1CF10 800B2310 00431021 */  addu       $v0, $v0, $v1
/* 1CF14 800B2314 000210C0 */  sll        $v0, $v0, 3
/* 1CF18 800B2318 00A22821 */  addu       $a1, $a1, $v0
/* 1CF1C 800B231C 3C028010 */  lui        $v0, %hi(D_801029C0)
/* 1CF20 800B2320 244229C0 */  addiu      $v0, $v0, %lo(D_801029C0)
/* 1CF24 800B2324 A0A00002 */  sb         $zero, 2($a1)
/* 1CF28 800B2328 ACA20004 */  sw         $v0, 4($a1)
/* 1CF2C 800B232C 8E020010 */  lw         $v0, 0x10($s0)
/* 1CF30 800B2330 ACA20008 */  sw         $v0, 8($a1)
/* 1CF34 800B2334 3C028010 */  lui        $v0, %hi(D_801029B4)
/* 1CF38 800B2338 8C4229B4 */  lw         $v0, %lo(D_801029B4)($v0)
/* 1CF3C 800B233C 8E03000C */  lw         $v1, 0xc($s0)
/* 1CF40 800B2340 01202021 */  addu       $a0, $t1, $zero
/* 1CF44 800B2344 00003021 */  addu       $a2, $zero, $zero
/* 1CF48 800B2348 ACA20010 */  sw         $v0, 0x10($a1)
/* 1CF4C 800B234C 0C02E3E4 */  jal        func_800B8F90
/* 1CF50 800B2350 ACA3000C */   sw        $v1, 0xc($a1)
/* 1CF54 800B2354 02001021 */  addu       $v0, $s0, $zero
.L800B2358:
/* 1CF58 800B2358 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CF5C 800B235C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1CF60 800B2360 03E00008 */  jr         $ra
/* 1CF64 800B2364 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1CF68 800B2368 00000000 */  nop
/* 1CF6C 800B236C 00000000 */  nop
