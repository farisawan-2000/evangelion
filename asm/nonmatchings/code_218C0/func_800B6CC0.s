.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6CC0
/* 218C0 800B6CC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 218C4 800B6CC4 24040096 */  addiu      $a0, $zero, 0x96
/* 218C8 800B6CC8 3C058011 */  lui        $a1, %hi(D_8010CF80)
/* 218CC 800B6CCC 24A5CF80 */  addiu      $a1, $a1, %lo(D_8010CF80)
/* 218D0 800B6CD0 3C068011 */  lui        $a2, %hi(D_8010CF98)
/* 218D4 800B6CD4 24C6CF98 */  addiu      $a2, $a2, %lo(D_8010CF98)
/* 218D8 800B6CD8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 218DC 800B6CDC 0C02E304 */  jal        func_800B8C10
/* 218E0 800B6CE0 24070032 */   addiu     $a3, $zero, 0x32
/* 218E4 800B6CE4 0C02E40C */  jal        func_800B9030
/* 218E8 800B6CE8 00000000 */   nop
/* 218EC 800B6CEC 3C018017 */  lui        $at, %hi(D_8016D170)
/* 218F0 800B6CF0 AC22D170 */  sw         $v0, %lo(D_8016D170)($at)
/* 218F4 800B6CF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 218F8 800B6CF8 03E00008 */  jr         $ra
/* 218FC 800B6CFC 27BD0018 */   addiu     $sp, $sp, 0x18
