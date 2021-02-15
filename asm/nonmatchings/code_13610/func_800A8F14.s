.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A8F14
/* 13B14 800A8F14 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13B18 800A8F18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13B1C 800A8F1C AFB10014 */  sw         $s1, 0x14($sp)
/* 13B20 800A8F20 0C02A51C */  jal        func_800A9470
/* 13B24 800A8F24 AFB00010 */   sw        $s0, 0x10($sp)
/* 13B28 800A8F28 0C02A5FD */  jal        func_800A97F4
/* 13B2C 800A8F2C 3C11E900 */   lui       $s1, 0xe900
/* 13B30 800A8F30 0C02A601 */  jal        func_800A9804
/* 13B34 800A8F34 3C10DF00 */   lui       $s0, 0xdf00
/* 13B38 800A8F38 3C028010 */  lui        $v0, %hi(D_801001D0)
/* 13B3C 800A8F3C 8C4201D0 */  lw         $v0, %lo(D_801001D0)($v0)
/* 13B40 800A8F40 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13B44 800A8F44 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13B48 800A8F48 3C018010 */  lui        $at, %hi(D_801001E0)
/* 13B4C 800A8F4C AC2201E0 */  sw         $v0, %lo(D_801001E0)($at)
/* 13B50 800A8F50 0C028AC1 */  jal        func_800A2B04
/* 13B54 800A8F54 00002021 */   addu      $a0, $zero, $zero
/* 13B58 800A8F58 3C038015 */  lui        $v1, %hi(D_80149F94)
/* 13B5C 800A8F5C 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* 13B60 800A8F60 24620008 */  addiu      $v0, $v1, 8
/* 13B64 800A8F64 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13B68 800A8F68 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13B6C 800A8F6C 24620010 */  addiu      $v0, $v1, 0x10
/* 13B70 800A8F70 AC710000 */  sw         $s1, ($v1)
/* 13B74 800A8F74 AC600004 */  sw         $zero, 4($v1)
/* 13B78 800A8F78 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13B7C 800A8F7C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13B80 800A8F80 AC700008 */  sw         $s0, 8($v1)
/* 13B84 800A8F84 AC60000C */  sw         $zero, 0xc($v1)
/* 13B88 800A8F88 3C018010 */  lui        $at, %hi(D_801001F8)
/* 13B8C 800A8F8C AC2201F8 */  sw         $v0, %lo(D_801001F8)($at)
/* 13B90 800A8F90 3C018010 */  lui        $at, %hi(D_801001D0)
/* 13B94 800A8F94 AC2201D0 */  sw         $v0, %lo(D_801001D0)($at)
/* 13B98 800A8F98 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13B9C 800A8F9C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13BA0 800A8FA0 3C018010 */  lui        $at, %hi(D_801001D8)
/* 13BA4 800A8FA4 AC2201D8 */  sw         $v0, %lo(D_801001D8)($at)
/* 13BA8 800A8FA8 0C028AC1 */  jal        func_800A2B04
/* 13BAC 800A8FAC 24040001 */   addiu     $a0, $zero, 1
/* 13BB0 800A8FB0 3C038015 */  lui        $v1, %hi(D_80149F94)
/* 13BB4 800A8FB4 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* 13BB8 800A8FB8 24620008 */  addiu      $v0, $v1, 8
/* 13BBC 800A8FBC 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13BC0 800A8FC0 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13BC4 800A8FC4 24620010 */  addiu      $v0, $v1, 0x10
/* 13BC8 800A8FC8 AC710000 */  sw         $s1, ($v1)
/* 13BCC 800A8FCC AC600004 */  sw         $zero, 4($v1)
/* 13BD0 800A8FD0 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13BD4 800A8FD4 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13BD8 800A8FD8 AC700008 */  sw         $s0, 8($v1)
/* 13BDC 800A8FDC AC60000C */  sw         $zero, 0xc($v1)
/* 13BE0 800A8FE0 3C018010 */  lui        $at, %hi(D_801001F0)
/* 13BE4 800A8FE4 AC2201F0 */  sw         $v0, %lo(D_801001F0)($at)
/* 13BE8 800A8FE8 3C018010 */  lui        $at, %hi(D_801001D0)
/* 13BEC 800A8FEC AC2201D0 */  sw         $v0, %lo(D_801001D0)($at)
/* 13BF0 800A8FF0 0C028A38 */  jal        func_800A28E0
/* 13BF4 800A8FF4 00000000 */   nop
/* 13BF8 800A8FF8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13BFC 800A8FFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C00 800A9000 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C04 800A9004 27BD0020 */  addiu      $sp, $sp, 0x20
/* 13C08 800A9008 03E00008 */  jr         $ra
/* 13C0C 800A900C 00000000 */   nop
