.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9010
/* 13C10 800A9010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C14 800A9014 3C028010 */  lui        $v0, %hi(D_80100208)
/* 13C18 800A9018 24420208 */  addiu      $v0, $v0, %lo(D_80100208)
/* 13C1C 800A901C AFBF0010 */  sw         $ra, 0x10($sp)
/* 13C20 800A9020 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13C24 800A9024 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13C28 800A9028 3C018010 */  lui        $at, %hi(D_801001E8)
/* 13C2C 800A902C AC2201E8 */  sw         $v0, %lo(D_801001E8)($at)
/* 13C30 800A9030 0C02A6E5 */  jal        func_800A9B94
/* 13C34 800A9034 00000000 */   nop
/* 13C38 800A9038 0C028AC1 */  jal        func_800A2B04
/* 13C3C 800A903C 24040002 */   addiu     $a0, $zero, 2
/* 13C40 800A9040 3C038015 */  lui        $v1, %hi(D_80149F94)
/* 13C44 800A9044 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* 13C48 800A9048 24620008 */  addiu      $v0, $v1, 8
/* 13C4C 800A904C 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13C50 800A9050 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13C54 800A9054 3C02E900 */  lui        $v0, 0xe900
/* 13C58 800A9058 24640010 */  addiu      $a0, $v1, 0x10
/* 13C5C 800A905C AC620000 */  sw         $v0, ($v1)
/* 13C60 800A9060 3C02DF00 */  lui        $v0, 0xdf00
/* 13C64 800A9064 AC600004 */  sw         $zero, 4($v1)
/* 13C68 800A9068 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13C6C 800A906C AC249F94 */  sw         $a0, %lo(D_80149F94)($at)
/* 13C70 800A9070 AC620008 */  sw         $v0, 8($v1)
/* 13C74 800A9074 AC60000C */  sw         $zero, 0xc($v1)
/* 13C78 800A9078 3C018010 */  lui        $at, %hi(D_80100200)
/* 13C7C 800A907C AC240200 */  sw         $a0, %lo(D_80100200)($at)
/* 13C80 800A9080 0C028A38 */  jal        func_800A28E0
/* 13C84 800A9084 00000000 */   nop
/* 13C88 800A9088 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13C8C 800A908C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13C90 800A9090 03E00008 */  jr         $ra
/* 13C94 800A9094 00000000 */   nop
