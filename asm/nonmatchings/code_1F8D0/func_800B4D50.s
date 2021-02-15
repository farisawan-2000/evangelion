.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B4D50
/* 1F950 800B4D50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F954 800B4D54 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F958 800B4D58 00808021 */  addu       $s0, $a0, $zero
/* 1F95C 800B4D5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F960 800B4D60 0C02E2DC */  jal        func_800B8B70
/* 1F964 800B4D64 24040001 */   addiu     $a0, $zero, 1
/* 1F968 800B4D68 3C05800F */  lui        $a1, %hi(D_800F17F4)
/* 1F96C 800B4D6C 8CA517F4 */  lw         $a1, %lo(D_800F17F4)($a1)
/* 1F970 800B4D70 8CA30020 */  lw         $v1, 0x20($a1)
/* 1F974 800B4D74 AE030010 */  sw         $v1, 0x10($s0)
/* 1F978 800B4D78 8CA30000 */  lw         $v1, ($a1)
/* 1F97C 800B4D7C 00402021 */  addu       $a0, $v0, $zero
/* 1F980 800B4D80 AE030000 */  sw         $v1, ($s0)
/* 1F984 800B4D84 0C02E2DC */  jal        func_800B8B70
/* 1F988 800B4D88 ACB00000 */   sw        $s0, ($a1)
/* 1F98C 800B4D8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F990 800B4D90 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F994 800B4D94 03E00008 */  jr         $ra
/* 1F998 800B4D98 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1F99C 800B4D9C 00000000 */  nop
