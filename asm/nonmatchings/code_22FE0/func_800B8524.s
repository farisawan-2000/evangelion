.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8524
/* 23124 800B8524 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23128 800B8528 AFB20018 */  sw         $s2, 0x18($sp)
/* 2312C 800B852C 00809021 */  addu       $s2, $a0, $zero
/* 23130 800B8530 AFB10014 */  sw         $s1, 0x14($sp)
/* 23134 800B8534 00A08821 */  addu       $s1, $a1, $zero
/* 23138 800B8538 AFB00010 */  sw         $s0, 0x10($sp)
/* 2313C 800B853C 3C108017 */  lui        $s0, %hi(D_8016E550)
/* 23140 800B8540 2610E550 */  addiu      $s0, $s0, %lo(D_8016E550)
/* 23144 800B8544 AFBF001C */  sw         $ra, 0x1c($sp)
/* 23148 800B8548 0C02F544 */  jal        func_800BD510
/* 2314C 800B854C 02002021 */   addu      $a0, $s0, $zero
/* 23150 800B8550 14400010 */  bnez       $v0, .L800B8594
/* 23154 800B8554 02002021 */   addu      $a0, $s0, $zero
/* 23158 800B8558 00002821 */  addu       $a1, $zero, $zero
/* 2315C 800B855C 0C030200 */  jal        func_800C0800
/* 23160 800B8560 24060001 */   addiu     $a2, $zero, 1
/* 23164 800B8564 3C028015 */  lui        $v0, %hi(D_80149ED0)
/* 23168 800B8568 8C429ED0 */  lw         $v0, %lo(D_80149ED0)($v0)
/* 2316C 800B856C 02221024 */  and        $v0, $s1, $v0
/* 23170 800B8570 14400008 */  bnez       $v0, .L800B8594
/* 23174 800B8574 00001021 */   addu      $v0, $zero, $zero
/* 23178 800B8578 0C02E135 */  jal        func_800B84D4
/* 2317C 800B857C 00000000 */   nop
/* 23180 800B8580 0C02F566 */  jal        func_800BD598
/* 23184 800B8584 02402021 */   addu      $a0, $s2, $zero
/* 23188 800B8588 0C02E13F */  jal        func_800B84FC
/* 2318C 800B858C 00000000 */   nop
/* 23190 800B8590 00001021 */  addu       $v0, $zero, $zero
.L800B8594:
/* 23194 800B8594 8FBF001C */  lw         $ra, 0x1c($sp)
/* 23198 800B8598 8FB20018 */  lw         $s2, 0x18($sp)
/* 2319C 800B859C 8FB10014 */  lw         $s1, 0x14($sp)
/* 231A0 800B85A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 231A4 800B85A4 03E00008 */  jr         $ra
/* 231A8 800B85A8 27BD0020 */   addiu     $sp, $sp, 0x20
