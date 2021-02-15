.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800ADD20
/* 18920 800ADD20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18924 800ADD24 AFB00010 */  sw         $s0, 0x10($sp)
/* 18928 800ADD28 00808021 */  addu       $s0, $a0, $zero
/* 1892C 800ADD2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 18930 800ADD30 0C02E2DC */  jal        func_800B8B70
/* 18934 800ADD34 24040001 */   addiu     $a0, $zero, 1
/* 18938 800ADD38 3C01800F */  lui        $at, %hi(D_800F1214)
/* 1893C 800ADD3C AC301214 */  sw         $s0, %lo(D_800F1214)($at)
/* 18940 800ADD40 0C02E2DC */  jal        func_800B8B70
/* 18944 800ADD44 00402021 */   addu      $a0, $v0, $zero
/* 18948 800ADD48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1894C 800ADD4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 18950 800ADD50 03E00008 */  jr         $ra
/* 18954 800ADD54 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18958 800ADD58 00000000 */  nop
/* 1895C 800ADD5C 00000000 */  nop
