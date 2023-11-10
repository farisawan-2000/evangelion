glabel func_800BD470
/* 28070 800BD470 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 28074 800BD474 AFB00010 */  sw         $s0, 0x10($sp)
/* 28078 800BD478 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2807C 800BD47C 0C030635 */  jal        func_800C18D4
/* 28080 800BD480 00808021 */   addu      $s0, $a0, $zero
/* 28084 800BD484 3C028017 */  lui        $v0, %hi(D_8016D064)
/* 28088 800BD488 9042D064 */  lbu        $v0, %lo(D_8016D064)($v0)
/* 2808C 800BD48C 1040000B */  beqz       $v0, .L800BD4BC
/* 28090 800BD490 00000000 */   nop
/* 28094 800BD494 0C02F650 */  jal        func_800BD940
/* 28098 800BD498 00002021 */   addu      $a0, $zero, $zero
/* 2809C 800BD49C 3C058015 */  lui        $a1, %hi(D_80149DD0)
/* 280A0 800BD4A0 24A59DD0 */  addiu      $a1, $a1, %lo(D_80149DD0)
/* 280A4 800BD4A4 0C0305F4 */  jal        func_800C17D0
/* 280A8 800BD4A8 24040001 */   addiu     $a0, $zero, 0x1
/* 280AC 800BD4AC 02002021 */  addu       $a0, $s0, $zero
/* 280B0 800BD4B0 00002821 */  addu       $a1, $zero, $zero
/* 280B4 800BD4B4 0C030200 */  jal        func_800C0800
/* 280B8 800BD4B8 24060001 */   addiu     $a2, $zero, 0x1
.L800BD4BC:
/* 280BC 800BD4BC 3C058015 */  lui        $a1, %hi(D_80149DD0)
/* 280C0 800BD4C0 24A59DD0 */  addiu      $a1, $a1, %lo(D_80149DD0)
/* 280C4 800BD4C4 0C0305F4 */  jal        func_800C17D0
/* 280C8 800BD4C8 00002021 */   addu      $a0, $zero, $zero
/* 280CC 800BD4CC 3C018017 */  lui        $at, %hi(D_8016D064)
/* 280D0 800BD4D0 A020D064 */  sb         $zero, %lo(D_8016D064)($at)
/* 280D4 800BD4D4 0C030650 */  jal        func_800C1940
/* 280D8 800BD4D8 00408021 */   addu      $s0, $v0, $zero
/* 280DC 800BD4DC 02001021 */  addu       $v0, $s0, $zero
/* 280E0 800BD4E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 280E4 800BD4E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 280E8 800BD4E8 03E00008 */  jr         $ra
/* 280EC 800BD4EC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800BD470, . - func_800BD470
