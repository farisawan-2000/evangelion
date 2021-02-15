.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1600
/* 1C200 800B1600 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C204 800B1604 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C208 800B1608 00A08021 */  addu       $s0, $a1, $zero
/* 1C20C 800B160C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C210 800B1610 92040000 */  lbu        $a0, ($s0)
/* 1C214 800B1614 3C038010 */  lui        $v1, %hi(D_80102970)
/* 1C218 800B1618 8C632970 */  lw         $v1, %lo(D_80102970)($v1)
/* 1C21C 800B161C 24020001 */  addiu      $v0, $zero, 1
/* 1C220 800B1620 14620003 */  bne        $v1, $v0, .L800B1630
/* 1C224 800B1624 26100001 */   addiu     $s0, $s0, 1
/* 1C228 800B1628 0C02C7AC */  jal        func_800B1EB0
/* 1C22C 800B162C 00000000 */   nop
.L800B1630:
/* 1C230 800B1630 02001021 */  addu       $v0, $s0, $zero
/* 1C234 800B1634 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C238 800B1638 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C23C 800B163C 03E00008 */  jr         $ra
/* 1C240 800B1640 27BD0018 */   addiu     $sp, $sp, 0x18
