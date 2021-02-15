.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A6AA8
/* 116A8 800A6AA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 116AC 800A6AAC AFB00010 */  sw         $s0, 0x10($sp)
/* 116B0 800A6AB0 00808021 */  addu       $s0, $a0, $zero
/* 116B4 800A6AB4 12000006 */  beqz       $s0, .L800A6AD0
/* 116B8 800A6AB8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 116BC 800A6ABC 8E040000 */  lw         $a0, ($s0)
/* 116C0 800A6AC0 0C028D30 */  jal        func_800A34C0
/* 116C4 800A6AC4 00000000 */   nop
/* 116C8 800A6AC8 0C0326A1 */  jal        func_800C9A84
/* 116CC 800A6ACC 02002021 */   addu      $a0, $s0, $zero
.L800A6AD0:
/* 116D0 800A6AD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 116D4 800A6AD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 116D8 800A6AD8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 116DC 800A6ADC 03E00008 */  jr         $ra
/* 116E0 800A6AE0 00000000 */   nop
