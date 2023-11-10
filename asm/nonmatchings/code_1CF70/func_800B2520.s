glabel func_800B2520
/* 1D120 800B2520 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1D124 800B2524 AFB20048 */  sw         $s2, 0x48($sp)
/* 1D128 800B2528 00809021 */  addu       $s2, $a0, $zero
/* 1D12C 800B252C AFBF004C */  sw         $ra, 0x4C($sp)
/* 1D130 800B2530 AFB10044 */  sw         $s1, 0x44($sp)
/* 1D134 800B2534 AFB00040 */  sw         $s0, 0x40($sp)
/* 1D138 800B2538 8E420004 */  lw         $v0, 0x4($s2)
/* 1D13C 800B253C AFA2001C */  sw         $v0, 0x1C($sp)
/* 1D140 800B2540 AFA20018 */  sw         $v0, 0x18($sp)
/* 1D144 800B2544 8E420028 */  lw         $v0, 0x28($s2)
/* 1D148 800B2548 00A08821 */  addu       $s1, $a1, $zero
/* 1D14C 800B254C AFA20020 */  sw         $v0, 0x20($sp)
/* 1D150 800B2550 8E440038 */  lw         $a0, 0x38($s2)
/* 1D154 800B2554 8E45003C */  lw         $a1, 0x3C($s2)
/* 1D158 800B2558 0C02C7C4 */  jal        func_800B1F10
/* 1D15C 800B255C 00C08021 */   addu      $s0, $a2, $zero
/* 1D160 800B2560 AFA20028 */  sw         $v0, 0x28($sp)
/* 1D164 800B2564 A3B00034 */  sb         $s0, 0x34($sp)
/* 1D168 800B2568 8E44002C */  lw         $a0, 0x2C($s2)
/* 1D16C 800B256C 0C02E5CC */  jal        func_800B9730
/* 1D170 800B2570 00008021 */   addu      $s0, $zero, $zero
/* 1D174 800B2574 0C02CA1D */  jal        func_800B2874
/* 1D178 800B2578 AFA20030 */   sw        $v0, 0x30($sp)
/* 1D17C 800B257C 3C048017 */  lui        $a0, %hi(D_8016D1B0)
/* 1D180 800B2580 2484D1B0 */  addiu      $a0, $a0, %lo(D_8016D1B0)
/* 1D184 800B2584 27A50018 */  addiu      $a1, $sp, 0x18
/* 1D188 800B2588 0C02C5B0 */  jal        func_800B16C0
/* 1D18C 800B258C AFA2002C */   sw        $v0, 0x2C($sp)
/* 1D190 800B2590 8E440034 */  lw         $a0, 0x34($s2)
/* 1D194 800B2594 8FA50030 */  lw         $a1, 0x30($sp)
/* 1D198 800B2598 02203021 */  addu       $a2, $s1, $zero
/* 1D19C 800B259C 0C02CA48 */  jal        func_800B2920
/* 1D1A0 800B25A0 24070014 */   addiu     $a3, $zero, 0x14
/* 1D1A4 800B25A4 8E440030 */  lw         $a0, 0x30($s2)
/* 1D1A8 800B25A8 00408821 */  addu       $s1, $v0, $zero
/* 1D1AC 800B25AC 0C02CA0B */  jal        func_800B282C
/* 1D1B0 800B25B0 000420C0 */   sll       $a0, $a0, 3
/* 1D1B4 800B25B4 3C018010 */  lui        $at, %hi(D_80102BA8)
/* 1D1B8 800B25B8 AC222BA8 */  sw         $v0, %lo(D_80102BA8)($at)
/* 1D1BC 800B25BC 0C02CA0B */  jal        func_800B282C
/* 1D1C0 800B25C0 24040018 */   addiu     $a0, $zero, 0x18
/* 1D1C4 800B25C4 3C018010 */  lui        $at, %hi(D_80102BA4)
/* 1D1C8 800B25C8 AC222BA4 */  sw         $v0, %lo(D_80102BA4)($at)
.L800B25CC:
/* 1D1CC 800B25CC 0C02CA0B */  jal        func_800B282C
/* 1D1D0 800B25D0 00112080 */   sll       $a0, $s1, 2
/* 1D1D4 800B25D4 3C038010 */  lui        $v1, %hi(D_80102BA4)
/* 1D1D8 800B25D8 8C632BA4 */  lw         $v1, %lo(D_80102BA4)($v1)
/* 1D1DC 800B25DC 001020C0 */  sll        $a0, $s0, 3
/* 1D1E0 800B25E0 26100001 */  addiu      $s0, $s0, 0x1
/* 1D1E4 800B25E4 00832021 */  addu       $a0, $a0, $v1
/* 1D1E8 800B25E8 AC820000 */  sw         $v0, 0x0($a0)
/* 1D1EC 800B25EC 2E020003 */  sltiu      $v0, $s0, 0x3
/* 1D1F0 800B25F0 1440FFF6 */  bnez       $v0, .L800B25CC
/* 1D1F4 800B25F4 00000000 */   nop
/* 1D1F8 800B25F8 0C02CA0B */  jal        func_800B282C
/* 1D1FC 800B25FC 24042000 */   addiu     $a0, $zero, 0x2000
/* 1D200 800B2600 3C108010 */  lui        $s0, %hi(D_801029F0)
/* 1D204 800B2604 261029F0 */  addiu      $s0, $s0, %lo(D_801029F0)
/* 1D208 800B2608 02002021 */  addu       $a0, $s0, $zero
/* 1D20C 800B260C 24050003 */  addiu      $a1, $zero, 0x3
/* 1D210 800B2610 24432000 */  addiu      $v1, $v0, 0x2000
/* 1D214 800B2614 AFA30010 */  sw         $v1, 0x10($sp)
/* 1D218 800B2618 8E43000C */  lw         $v1, 0xC($s2)
/* 1D21C 800B261C 3C06800B */  lui        $a2, %hi(func_800B2658)
/* 1D220 800B2620 24C62658 */  addiu      $a2, $a2, %lo(func_800B2658)
/* 1D224 800B2624 00003821 */  addu       $a3, $zero, $zero
/* 1D228 800B2628 3C018010 */  lui        $at, %hi(D_80102BA0)
/* 1D22C 800B262C AC222BA0 */  sw         $v0, %lo(D_80102BA0)($at)
/* 1D230 800B2630 0C03065C */  jal        osCreateThread
/* 1D234 800B2634 AFA30014 */   sw        $v1, 0x14($sp)
/* 1D238 800B2638 0C0306CC */  jal        osStartThread
/* 1D23C 800B263C 02002021 */   addu      $a0, $s0, $zero
/* 1D240 800B2640 8FBF004C */  lw         $ra, 0x4C($sp)
/* 1D244 800B2644 8FB20048 */  lw         $s2, 0x48($sp)
/* 1D248 800B2648 8FB10044 */  lw         $s1, 0x44($sp)
/* 1D24C 800B264C 8FB00040 */  lw         $s0, 0x40($sp)
/* 1D250 800B2650 03E00008 */  jr         $ra
/* 1D254 800B2654 27BD0050 */   addiu     $sp, $sp, 0x50
.size func_800B2520, . - func_800B2520
