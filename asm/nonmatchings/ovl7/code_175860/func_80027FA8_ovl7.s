glabel func_80027FA8_ovl7
/* 1779E8 80027FA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1779EC 80027FAC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1779F0 80027FB0 0C02B4A0 */  jal        func_800AD280
/* 1779F4 80027FB4 00000000 */   nop
/* 1779F8 80027FB8 0C0E61CC */  jal        func_80398730
/* 1779FC 80027FBC 00000000 */   nop
/* 177A00 80027FC0 0C0E64E0 */  jal        func_80399380
/* 177A04 80027FC4 00000000 */   nop
/* 177A08 80027FC8 0C0E6CA8 */  jal        func_8039B2A0
/* 177A0C 80027FCC 00000000 */   nop
/* 177A10 80027FD0 24030014 */  addiu      $v1, $zero, 0x14
/* 177A14 80027FD4 2402000A */  addiu      $v0, $zero, 0xA
/* 177A18 80027FD8 3C048039 */  lui        $a0, %hi(D_80396B60)
/* 177A1C 80027FDC 24846B60 */  addiu      $a0, $a0, %lo(D_80396B60)
/* 177A20 80027FE0 00002821 */  addu       $a1, $zero, $zero
/* 177A24 80027FE4 24060064 */  addiu      $a2, $zero, 0x64
/* 177A28 80027FE8 3C01803B */  lui        $at, %hi(D_803B3E34)
/* 177A2C 80027FEC AC233E34 */  sw         $v1, %lo(D_803B3E34)($at)
/* 177A30 80027FF0 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 177A34 80027FF4 AC233EA8 */  sw         $v1, %lo(D_803B3EA8)($at)
/* 177A38 80027FF8 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 177A3C 80027FFC AC223E20 */  sw         $v0, %lo(D_803B3E20)($at)
/* 177A40 80028000 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 177A44 80028004 AC233E5C */  sw         $v1, %lo(D_803B3E5C)($at)
/* 177A48 80028008 0C025D06 */  jal        func_80097418
/* 177A4C 8002800C 24070001 */   addiu     $a3, $zero, 0x1
/* 177A50 80028010 3C018015 */  lui        $at, %hi(D_80149EC4)
/* 177A54 80028014 AC229EC4 */  sw         $v0, %lo(D_80149EC4)($at)
/* 177A58 80028018 8FBF0010 */  lw         $ra, 0x10($sp)
/* 177A5C 8002801C 03E00008 */  jr         $ra
/* 177A60 80028020 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80027FA8_ovl7, . - func_80027FA8_ovl7
