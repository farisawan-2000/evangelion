glabel func_800BD510
/* 28110 800BD510 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 28114 800BD514 AFB00010 */  sw         $s0, 0x10($sp)
/* 28118 800BD518 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2811C 800BD51C 0C030635 */  jal        func_800C18D4
/* 28120 800BD520 00808021 */   addu      $s0, $a0, $zero
/* 28124 800BD524 3C038017 */  lui        $v1, %hi(D_8016D064)
/* 28128 800BD528 9063D064 */  lbu        $v1, %lo(D_8016D064)($v1)
/* 2812C 800BD52C 24020001 */  addiu      $v0, $zero, 0x1
/* 28130 800BD530 1062000B */  beq        $v1, $v0, .L800BD560
/* 28134 800BD534 00000000 */   nop
/* 28138 800BD538 0C02F58D */  jal        func_800BD634
/* 2813C 800BD53C 00000000 */   nop
/* 28140 800BD540 3C058015 */  lui        $a1, %hi(D_80149DD0)
/* 28144 800BD544 24A59DD0 */  addiu      $a1, $a1, %lo(D_80149DD0)
/* 28148 800BD548 0C0305F4 */  jal        func_800C17D0
/* 2814C 800BD54C 24040001 */   addiu     $a0, $zero, 0x1
/* 28150 800BD550 02002021 */  addu       $a0, $s0, $zero
/* 28154 800BD554 00002821 */  addu       $a1, $zero, $zero
/* 28158 800BD558 0C030200 */  jal        func_800C0800
/* 2815C 800BD55C 24060001 */   addiu     $a2, $zero, 0x1
.L800BD560:
/* 28160 800BD560 3C058015 */  lui        $a1, %hi(D_80149DD0)
/* 28164 800BD564 24A59DD0 */  addiu      $a1, $a1, %lo(D_80149DD0)
/* 28168 800BD568 0C0305F4 */  jal        func_800C17D0
/* 2816C 800BD56C 00002021 */   addu      $a0, $zero, $zero
/* 28170 800BD570 24030001 */  addiu      $v1, $zero, 0x1
/* 28174 800BD574 3C018017 */  lui        $at, %hi(D_8016D064)
/* 28178 800BD578 A023D064 */  sb         $v1, %lo(D_8016D064)($at)
/* 2817C 800BD57C 0C030650 */  jal        func_800C1940
/* 28180 800BD580 00408021 */   addu      $s0, $v0, $zero
/* 28184 800BD584 02001021 */  addu       $v0, $s0, $zero
/* 28188 800BD588 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2818C 800BD58C 8FB00010 */  lw         $s0, 0x10($sp)
/* 28190 800BD590 03E00008 */  jr         $ra
/* 28194 800BD594 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800BD510, . - func_800BD510
