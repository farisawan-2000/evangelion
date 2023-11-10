glabel func_800ADBF0
/* 187F0 800ADBF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 187F4 800ADBF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 187F8 800ADBF8 00808021 */  addu       $s0, $a0, $zero
/* 187FC 800ADBFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 18800 800ADC00 0C02B774 */  jal        func_800ADDD0
/* 18804 800ADC04 00A02021 */   addu      $a0, $a1, $zero
/* 18808 800ADC08 001080C0 */  sll        $s0, $s0, 3
/* 1880C 800ADC0C 3C018015 */  lui        $at, %hi(D_80149FF4)
/* 18810 800ADC10 00300821 */  addu       $at, $at, $s0
/* 18814 800ADC14 AC229FF4 */  sw         $v0, %lo(D_80149FF4)($at)
/* 18818 800ADC18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1881C 800ADC1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 18820 800ADC20 03E00008 */  jr         $ra
/* 18824 800ADC24 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18828 800ADC28 00000000 */  nop
/* 1882C 800ADC2C 00000000 */  nop
.size func_800ADBF0, . - func_800ADBF0
