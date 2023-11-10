glabel func_800B237C
/* 1CF7C 800B237C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CF80 800B2380 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1CF84 800B2384 0C02CA0B */  jal        func_800B282C
/* 1CF88 800B2388 24040058 */   addiu     $a0, $zero, 0x58
/* 1CF8C 800B238C 24440008 */  addiu      $a0, $v0, 0x8
/* 1CF90 800B2390 24450020 */  addiu      $a1, $v0, 0x20
/* 1CF94 800B2394 3C018010 */  lui        $at, %hi(D_801029E4)
/* 1CF98 800B2398 AC2229E4 */  sw         $v0, %lo(D_801029E4)($at)
/* 1CF9C 800B239C 0C0301A4 */  jal        func_800C0690
/* 1CFA0 800B23A0 24060004 */   addiu     $a2, $zero, 0x4
/* 1CFA4 800B23A4 3C058010 */  lui        $a1, %hi(D_801029E4)
/* 1CFA8 800B23A8 8CA529E4 */  lw         $a1, %lo(D_801029E4)($a1)
/* 1CFAC 800B23AC 24060004 */  addiu      $a2, $zero, 0x4
/* 1CFB0 800B23B0 24A40030 */  addiu      $a0, $a1, 0x30
/* 1CFB4 800B23B4 0C0301A4 */  jal        func_800C0690
/* 1CFB8 800B23B8 24A50048 */   addiu     $a1, $a1, 0x48
/* 1CFBC 800B23BC 3C058010 */  lui        $a1, %hi(D_801029E4)
/* 1CFC0 800B23C0 8CA529E4 */  lw         $a1, %lo(D_801029E4)($a1)
/* 1CFC4 800B23C4 3C048010 */  lui        $a0, %hi(D_801029E0)
/* 1CFC8 800B23C8 8C8429E0 */  lw         $a0, %lo(D_801029E0)($a0)
/* 1CFCC 800B23CC 0C0303C2 */  jal        func_800C0F08
/* 1CFD0 800B23D0 24A60008 */   addiu     $a2, $a1, 0x8
/* 1CFD4 800B23D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1CFD8 800B23D8 03E00008 */  jr         $ra
/* 1CFDC 800B23DC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B237C, . - func_800B237C
