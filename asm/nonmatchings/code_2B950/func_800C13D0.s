glabel func_800C13D0
/* 2BFD0 800C13D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2BFD4 800C13D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2BFD8 800C13D8 00A08021 */  addu       $s0, $a1, $zero
/* 2BFDC 800C13DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2BFE0 800C13E0 8E020004 */  lw         $v0, 0x4($s0)
/* 2BFE4 800C13E4 30420003 */  andi       $v0, $v0, 0x3
/* 2BFE8 800C13E8 14400018 */  bnez       $v0, .L800C144C
/* 2BFEC 800C13EC 00001021 */   addu      $v0, $zero, $zero
/* 2BFF0 800C13F0 8E040050 */  lw         $a0, 0x50($s0)
/* 2BFF4 800C13F4 8E050054 */  lw         $a1, 0x54($s0)
/* 2BFF8 800C13F8 0C03024C */  jal        func_800C0930
/* 2BFFC 800C13FC 24060001 */   addiu     $a2, $zero, 0x1
/* 2C000 800C1400 8E030010 */  lw         $v1, 0x10($s0)
/* 2C004 800C1404 24020001 */  addiu      $v0, $zero, 0x1
/* 2C008 800C1408 14620010 */  bne        $v1, $v0, .L800C144C
/* 2C00C 800C140C 24030060 */   addiu     $v1, $zero, 0x60
/* 2C010 800C1410 8E020008 */  lw         $v0, 0x8($s0)
/* 2C014 800C1414 30420060 */  andi       $v0, $v0, 0x60
/* 2C018 800C1418 1443000C */  bne        $v0, $v1, .L800C144C
/* 2C01C 800C141C 24020001 */   addiu     $v0, $zero, 0x1
/* 2C020 800C1420 3C02800F */  lui        $v0, %hi(D_800F699C)
/* 2C024 800C1424 8C42699C */  lw         $v0, %lo(D_800F699C)($v0)
/* 2C028 800C1428 10400005 */  beqz       $v0, .L800C1440
/* 2C02C 800C142C 00000000 */   nop
/* 2C030 800C1430 0C030B18 */  jal        func_800C2C60
/* 2C034 800C1434 00002021 */   addu      $a0, $zero, $zero
/* 2C038 800C1438 3C01800F */  lui        $at, %hi(D_800F699C)
/* 2C03C 800C143C AC20699C */  sw         $zero, %lo(D_800F699C)($at)
.L800C1440:
/* 2C040 800C1440 0C030A40 */  jal        osViSwapBuffer
/* 2C044 800C1444 8E04000C */   lw        $a0, 0xC($s0)
/* 2C048 800C1448 24020001 */  addiu      $v0, $zero, 0x1
.L800C144C:
/* 2C04C 800C144C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C050 800C1450 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C054 800C1454 03E00008 */  jr         $ra
/* 2C058 800C1458 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800C13D0, . - func_800C13D0
