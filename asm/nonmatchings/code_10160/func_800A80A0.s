.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A80A0
/* 12CA0 800A80A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12CA4 800A80A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 12CA8 800A80A8 00808021 */  addu       $s0, $a0, $zero
/* 12CAC 800A80AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 12CB0 800A80B0 96050004 */  lhu        $a1, 4($s0)
/* 12CB4 800A80B4 96060006 */  lhu        $a2, 6($s0)
/* 12CB8 800A80B8 8E040000 */  lw         $a0, ($s0)
/* 12CBC 800A80BC 00052C80 */  sll        $a1, $a1, 0x12
/* 12CC0 800A80C0 00063480 */  sll        $a2, $a2, 0x12
/* 12CC4 800A80C4 00052C03 */  sra        $a1, $a1, 0x10
/* 12CC8 800A80C8 0C028D89 */  jal        func_800A3624
/* 12CCC 800A80CC 00063403 */   sra       $a2, $a2, 0x10
/* 12CD0 800A80D0 8E040000 */  lw         $a0, ($s0)
/* 12CD4 800A80D4 0C028A40 */  jal        func_800A2900
/* 12CD8 800A80D8 00000000 */   nop
/* 12CDC 800A80DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12CE0 800A80E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12CE4 800A80E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12CE8 800A80E8 03E00008 */  jr         $ra
/* 12CEC 800A80EC 00000000 */   nop
