.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B85AC
/* 231AC 800B85AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 231B0 800B85B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 231B4 800B85B4 3C108017 */  lui        $s0, %hi(D_8016E550)
/* 231B8 800B85B8 2610E550 */  addiu      $s0, $s0, %lo(D_8016E550)
/* 231BC 800B85BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 231C0 800B85C0 0C02F51C */  jal        func_800BD470
/* 231C4 800B85C4 02002021 */   addu      $a0, $s0, $zero
/* 231C8 800B85C8 14400008 */  bnez       $v0, .L800B85EC
/* 231CC 800B85CC 02002021 */   addu      $a0, $s0, $zero
/* 231D0 800B85D0 00002821 */  addu       $a1, $zero, $zero
/* 231D4 800B85D4 0C030200 */  jal        func_800C0800
/* 231D8 800B85D8 24060001 */   addiu     $a2, $zero, 1
/* 231DC 800B85DC 3C048015 */  lui        $a0, %hi(D_80149F00)
/* 231E0 800B85E0 0C02F53C */  jal        func_800BD4F0
/* 231E4 800B85E4 24849F00 */   addiu     $a0, $a0, %lo(D_80149F00)
/* 231E8 800B85E8 00001021 */  addu       $v0, $zero, $zero
.L800B85EC:
/* 231EC 800B85EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 231F0 800B85F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 231F4 800B85F4 03E00008 */  jr         $ra
/* 231F8 800B85F8 27BD0018 */   addiu     $sp, $sp, 0x18
