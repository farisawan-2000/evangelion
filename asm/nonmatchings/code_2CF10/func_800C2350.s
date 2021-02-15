.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C2350
/* 2CF50 800C2350 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2CF54 800C2354 AFB40028 */  sw         $s4, 0x28($sp)
/* 2CF58 800C2358 3C14800F */  lui        $s4, %hi(D_800F69E0)
/* 2CF5C 800C235C 269469E0 */  addiu      $s4, $s4, %lo(D_800F69E0)
/* 2CF60 800C2360 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2CF64 800C2364 AFB30024 */  sw         $s3, 0x24($sp)
/* 2CF68 800C2368 AFB20020 */  sw         $s2, 0x20($sp)
/* 2CF6C 800C236C AFB1001C */  sw         $s1, 0x1c($sp)
/* 2CF70 800C2370 AFB00018 */  sw         $s0, 0x18($sp)
/* 2CF74 800C2374 8E820000 */  lw         $v0, ($s4)
/* 2CF78 800C2378 14400055 */  bnez       $v0, .L800C24D0
/* 2CF7C 800C237C 00808821 */   addu      $s1, $a0, $zero
/* 2CF80 800C2380 0C0307B4 */  jal        func_800C1ED0
/* 2CF84 800C2384 2412FFFF */   addiu     $s2, $zero, -1
/* 2CF88 800C2388 3C138015 */  lui        $s3, %hi(D_80149A30)
/* 2CF8C 800C238C 26739A30 */  addiu      $s3, $s3, %lo(D_80149A30)
/* 2CF90 800C2390 02602021 */  addu       $a0, $s3, $zero
/* 2CF94 800C2394 3C058015 */  lui        $a1, %hi(D_80149A48)
/* 2CF98 800C2398 24A59A48 */  addiu      $a1, $a1, %lo(D_80149A48)
/* 2CF9C 800C239C 3C01800F */  lui        $at, %hi(D_800F69FC)
/* 2CFA0 800C23A0 AC2069FC */  sw         $zero, %lo(D_800F69FC)($at)
/* 2CFA4 800C23A4 0C0301A4 */  jal        func_800C0690
/* 2CFA8 800C23A8 24060005 */   addiu     $a2, $zero, 5
/* 2CFAC 800C23AC 24040007 */  addiu      $a0, $zero, 7
/* 2CFB0 800C23B0 3C068015 */  lui        $a2, %hi(D_80149A60)
/* 2CFB4 800C23B4 24C69A60 */  addiu      $a2, $a2, %lo(D_80149A60)
/* 2CFB8 800C23B8 2402000D */  addiu      $v0, $zero, 0xd
/* 2CFBC 800C23BC 3C108015 */  lui        $s0, %hi(D_80149A78)
/* 2CFC0 800C23C0 26109A78 */  addiu      $s0, $s0, %lo(D_80149A78)
/* 2CFC4 800C23C4 A4C20000 */  sh         $v0, ($a2)
/* 2CFC8 800C23C8 2402000E */  addiu      $v0, $zero, 0xe
/* 2CFCC 800C23CC 3C018015 */  lui        $at, %hi(D_80149A62)
/* 2CFD0 800C23D0 A0209A62 */  sb         $zero, %lo(D_80149A62)($at)
/* 2CFD4 800C23D4 3C018015 */  lui        $at, %hi(D_80149A64)
/* 2CFD8 800C23D8 AC209A64 */  sw         $zero, %lo(D_80149A64)($at)
/* 2CFDC 800C23DC A6020000 */  sh         $v0, ($s0)
/* 2CFE0 800C23E0 3C018015 */  lui        $at, %hi(D_80149A7A)
/* 2CFE4 800C23E4 A0209A7A */  sb         $zero, %lo(D_80149A7A)($at)
/* 2CFE8 800C23E8 3C018015 */  lui        $at, %hi(D_80149A7C)
/* 2CFEC 800C23EC AC209A7C */  sw         $zero, %lo(D_80149A7C)($at)
/* 2CFF0 800C23F0 0C030298 */  jal        func_800C0A60
/* 2CFF4 800C23F4 02602821 */   addu      $a1, $s3, $zero
/* 2CFF8 800C23F8 24040003 */  addiu      $a0, $zero, 3
/* 2CFFC 800C23FC 02602821 */  addu       $a1, $s3, $zero
/* 2D000 800C2400 0C030298 */  jal        func_800C0A60
/* 2D004 800C2404 02003021 */   addu      $a2, $s0, $zero
/* 2D008 800C2408 0C030690 */  jal        func_800C1A40
/* 2D00C 800C240C 00002021 */   addu      $a0, $zero, $zero
/* 2D010 800C2410 00401821 */  addu       $v1, $v0, $zero
/* 2D014 800C2414 0071102A */  slt        $v0, $v1, $s1
/* 2D018 800C2418 10400005 */  beqz       $v0, .L800C2430
/* 2D01C 800C241C 00000000 */   nop
/* 2D020 800C2420 00609021 */  addu       $s2, $v1, $zero
/* 2D024 800C2424 00002021 */  addu       $a0, $zero, $zero
/* 2D028 800C2428 0C030698 */  jal        func_800C1A60
/* 2D02C 800C242C 02202821 */   addu      $a1, $s1, $zero
.L800C2430:
/* 2D030 800C2430 0C0319D0 */  jal        func_800C6740
/* 2D034 800C2434 00000000 */   nop
/* 2D038 800C2438 3C108015 */  lui        $s0, %hi(D_80148878)
/* 2D03C 800C243C 26108878 */  addiu      $s0, $s0, %lo(D_80148878)
/* 2D040 800C2440 02002021 */  addu       $a0, $s0, $zero
/* 2D044 800C2444 00002821 */  addu       $a1, $zero, $zero
/* 2D048 800C2448 3C06800C */  lui        $a2, %hi(func_800C24F0)
/* 2D04C 800C244C 24C624F0 */  addiu      $a2, $a2, %lo(func_800C24F0)
/* 2D050 800C2450 24030001 */  addiu      $v1, $zero, 1
/* 2D054 800C2454 AE830000 */  sw         $v1, ($s4)
/* 2D058 800C2458 3C038015 */  lui        $v1, %hi(D_80149A30)
/* 2D05C 800C245C 24639A30 */  addiu      $v1, $v1, %lo(D_80149A30)
/* 2D060 800C2460 AFB10014 */  sw         $s1, 0x14($sp)
/* 2D064 800C2464 00408821 */  addu       $s1, $v0, $zero
/* 2D068 800C2468 02803821 */  addu       $a3, $s4, $zero
/* 2D06C 800C246C 3C01800F */  lui        $at, %hi(D_800F69E4)
/* 2D070 800C2470 AC3069E4 */  sw         $s0, %lo(D_800F69E4)($at)
/* 2D074 800C2474 3C01800F */  lui        $at, %hi(D_800F69E8)
/* 2D078 800C2478 AC3369E8 */  sw         $s3, %lo(D_800F69E8)($at)
/* 2D07C 800C247C 3C01800F */  lui        $at, %hi(D_800F69EC)
/* 2D080 800C2480 AC3369EC */  sw         $s3, %lo(D_800F69EC)($at)
/* 2D084 800C2484 3C01800F */  lui        $at, %hi(D_800F69F0)
/* 2D088 800C2488 AC2069F0 */  sw         $zero, %lo(D_800F69F0)($at)
/* 2D08C 800C248C 3C01800F */  lui        $at, %hi(D_800F69F4)
/* 2D090 800C2490 AC2069F4 */  sw         $zero, %lo(D_800F69F4)($at)
/* 2D094 800C2494 3C01800F */  lui        $at, %hi(D_800F69F8)
/* 2D098 800C2498 AC2069F8 */  sw         $zero, %lo(D_800F69F8)($at)
/* 2D09C 800C249C 0C03065C */  jal        func_800C1970
/* 2D0A0 800C24A0 AFA30010 */   sw        $v1, 0x10($sp)
/* 2D0A4 800C24A4 0C031F58 */  jal        func_800C7D60
/* 2D0A8 800C24A8 00000000 */   nop
/* 2D0AC 800C24AC 0C0306CC */  jal        func_800C1B30
/* 2D0B0 800C24B0 02002021 */   addu      $a0, $s0, $zero
/* 2D0B4 800C24B4 0C0319EC */  jal        func_800C67B0
/* 2D0B8 800C24B8 02202021 */   addu      $a0, $s1, $zero
/* 2D0BC 800C24BC 2402FFFF */  addiu      $v0, $zero, -1
/* 2D0C0 800C24C0 12420003 */  beq        $s2, $v0, .L800C24D0
/* 2D0C4 800C24C4 00002021 */   addu      $a0, $zero, $zero
/* 2D0C8 800C24C8 0C030698 */  jal        func_800C1A60
/* 2D0CC 800C24CC 02402821 */   addu      $a1, $s2, $zero
.L800C24D0:
/* 2D0D0 800C24D0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2D0D4 800C24D4 8FB40028 */  lw         $s4, 0x28($sp)
/* 2D0D8 800C24D8 8FB30024 */  lw         $s3, 0x24($sp)
/* 2D0DC 800C24DC 8FB20020 */  lw         $s2, 0x20($sp)
/* 2D0E0 800C24E0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2D0E4 800C24E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2D0E8 800C24E8 03E00008 */  jr         $ra
/* 2D0EC 800C24EC 27BD0030 */   addiu     $sp, $sp, 0x30
