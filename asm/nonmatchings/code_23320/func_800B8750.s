.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8750
/* 23350 800B8750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23354 800B8754 AFBF0010 */  sw         $ra, 0x10($sp)
/* 23358 800B8758 0C02E2DC */  jal        func_800B8B70
/* 2335C 800B875C 24040001 */   addiu     $a0, $zero, 1
/* 23360 800B8760 3C018015 */  lui        $at, %hi(D_80149ED0)
/* 23364 800B8764 AC209ED0 */  sw         $zero, %lo(D_80149ED0)($at)
/* 23368 800B8768 0C02E2DC */  jal        func_800B8B70
/* 2336C 800B876C 00402021 */   addu      $a0, $v0, $zero
/* 23370 800B8770 8FBF0010 */  lw         $ra, 0x10($sp)
/* 23374 800B8774 03E00008 */  jr         $ra
/* 23378 800B8778 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2337C 800B877C 00000000 */  nop
