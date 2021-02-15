.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6230
/* 20E30 800B6230 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20E34 800B6234 AFB00010 */  sw         $s0, 0x10($sp)
/* 20E38 800B6238 00808021 */  addu       $s0, $a0, $zero
/* 20E3C 800B623C AFBF0014 */  sw         $ra, 0x14($sp)
/* 20E40 800B6240 0C02E2DC */  jal        func_800B8B70
/* 20E44 800B6244 24040001 */   addiu     $a0, $zero, 1
/* 20E48 800B6248 3C01800F */  lui        $at, %hi(D_800F1800)
/* 20E4C 800B624C AC301800 */  sw         $s0, %lo(D_800F1800)($at)
/* 20E50 800B6250 0C02E2DC */  jal        func_800B8B70
/* 20E54 800B6254 00402021 */   addu      $a0, $v0, $zero
/* 20E58 800B6258 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20E5C 800B625C 8FB00010 */  lw         $s0, 0x10($sp)
/* 20E60 800B6260 03E00008 */  jr         $ra
/* 20E64 800B6264 27BD0018 */   addiu     $sp, $sp, 0x18
/* 20E68 800B6268 00000000 */  nop
/* 20E6C 800B626C 00000000 */  nop
