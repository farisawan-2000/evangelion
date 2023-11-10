glabel func_800ADC70
/* 18870 800ADC70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18874 800ADC74 AFB00010 */  sw         $s0, 0x10($sp)
/* 18878 800ADC78 000480C0 */  sll        $s0, $a0, 3
/* 1887C 800ADC7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 18880 800ADC80 3C048015 */  lui        $a0, %hi(D_80149FF4)
/* 18884 800ADC84 00902021 */  addu       $a0, $a0, $s0
/* 18888 800ADC88 0C02B890 */  jal        func_800AE240
/* 1888C 800ADC8C 8C849FF4 */   lw        $a0, %lo(D_80149FF4)($a0)
/* 18890 800ADC90 3C018015 */  lui        $at, %hi(D_80149FF0)
/* 18894 800ADC94 00300821 */  addu       $at, $at, $s0
/* 18898 800ADC98 AC229FF0 */  sw         $v0, %lo(D_80149FF0)($at)
/* 1889C 800ADC9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 188A0 800ADCA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 188A4 800ADCA4 03E00008 */  jr         $ra
/* 188A8 800ADCA8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 188AC 800ADCAC 00000000 */  nop
.size func_800ADC70, . - func_800ADC70
