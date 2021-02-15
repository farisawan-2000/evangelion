.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7380
/* 21F80 800B7380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21F84 800B7384 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21F88 800B7388 0C02DFF8 */  jal        func_800B7FE0
/* 21F8C 800B738C AFB00010 */   sw        $s0, 0x10($sp)
/* 21F90 800B7390 0C02E0F8 */  jal        func_800B83E0
/* 21F94 800B7394 00408021 */   addu      $s0, $v0, $zero
/* 21F98 800B7398 0C02DD08 */  jal        func_800B7420
/* 21F9C 800B739C 00000000 */   nop
/* 21FA0 800B73A0 0C02DDA4 */  jal        func_800B7690
/* 21FA4 800B73A4 00000000 */   nop
/* 21FA8 800B73A8 320200FF */  andi       $v0, $s0, 0xff
/* 21FAC 800B73AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21FB0 800B73B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 21FB4 800B73B4 03E00008 */  jr         $ra
/* 21FB8 800B73B8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 21FBC 800B73BC 00000000 */  nop
