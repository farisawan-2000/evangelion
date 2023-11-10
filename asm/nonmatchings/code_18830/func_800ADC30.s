glabel func_800ADC30
/* 18830 800ADC30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18834 800ADC34 24C30001 */  addiu      $v1, $a2, 0x1
/* 18838 800ADC38 000410C0 */  sll        $v0, $a0, 3
/* 1883C 800ADC3C 00A02021 */  addu       $a0, $a1, $zero
/* 18840 800ADC40 AFBF0010 */  sw         $ra, 0x10($sp)
/* 18844 800ADC44 3C058015 */  lui        $a1, %hi(D_80149FF4)
/* 18848 800ADC48 00A22821 */  addu       $a1, $a1, $v0
/* 1884C 800ADC4C 8CA59FF4 */  lw         $a1, %lo(D_80149FF4)($a1)
/* 18850 800ADC50 2406FFFE */  addiu      $a2, $zero, -0x2
/* 18854 800ADC54 0C02DB40 */  jal        func_800B6D00
/* 18858 800ADC58 00663024 */   and       $a2, $v1, $a2
/* 1885C 800ADC5C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18860 800ADC60 03E00008 */  jr         $ra
/* 18864 800ADC64 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18868 800ADC68 00000000 */  nop
/* 1886C 800ADC6C 00000000 */  nop
.size func_800ADC30, . - func_800ADC30
