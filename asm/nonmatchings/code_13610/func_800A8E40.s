.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A8E40
/* 13A40 800A8E40 3C028010 */  lui        $v0, %hi(D_801001D0)
/* 13A44 800A8E44 8C4201D0 */  lw         $v0, %lo(D_801001D0)($v0)
/* 13A48 800A8E48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13A4C 800A8E4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 13A50 800A8E50 AFB00010 */  sw         $s0, 0x10($sp)
/* 13A54 800A8E54 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13A58 800A8E58 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13A5C 800A8E5C 3C018010 */  lui        $at, %hi(D_801001DC)
/* 13A60 800A8E60 AC2201DC */  sw         $v0, %lo(D_801001DC)($at)
/* 13A64 800A8E64 0C02701B */  jal        func_8009C06C
/* 13A68 800A8E68 00000000 */   nop
/* 13A6C 800A8E6C 3C108017 */  lui        $s0, %hi(D_8016D0E8)
/* 13A70 800A8E70 2610D0E8 */  addiu      $s0, $s0, %lo(D_8016D0E8)
/* 13A74 800A8E74 0C027286 */  jal        func_8009CA18
/* 13A78 800A8E78 02002021 */   addu      $a0, $s0, $zero
/* 13A7C 800A8E7C 3C028015 */  lui        $v0, %hi(D_80149BA4)
/* 13A80 800A8E80 8C429BA4 */  lw         $v0, %lo(D_80149BA4)($v0)
/* 13A84 800A8E84 24420001 */  addiu      $v0, $v0, 1
/* 13A88 800A8E88 3C018015 */  lui        $at, %hi(D_80149BA4)
/* 13A8C 800A8E8C AC229BA4 */  sw         $v0, %lo(D_80149BA4)($at)
/* 13A90 800A8E90 0C025CDE */  jal        func_80097378
/* 13A94 800A8E94 00002021 */   addu      $a0, $zero, $zero
/* 13A98 800A8E98 0C02AE35 */  jal        func_800AB8D4
/* 13A9C 800A8E9C 00000000 */   nop
/* 13AA0 800A8EA0 0C025CDE */  jal        func_80097378
/* 13AA4 800A8EA4 24040001 */   addiu     $a0, $zero, 1
/* 13AA8 800A8EA8 0C02A1FC */  jal        func_800A87F0
/* 13AAC 800A8EAC 00002021 */   addu      $a0, $zero, $zero
/* 13AB0 800A8EB0 0C0272F0 */  jal        func_8009CBC0
/* 13AB4 800A8EB4 02002021 */   addu      $a0, $s0, $zero
/* 13AB8 800A8EB8 3C038015 */  lui        $v1, %hi(D_80149F94)
/* 13ABC 800A8EBC 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* 13AC0 800A8EC0 24620008 */  addiu      $v0, $v1, 8
/* 13AC4 800A8EC4 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13AC8 800A8EC8 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 13ACC 800A8ECC 3C02E900 */  lui        $v0, 0xe900
/* 13AD0 800A8ED0 24640010 */  addiu      $a0, $v1, 0x10
/* 13AD4 800A8ED4 AC620000 */  sw         $v0, ($v1)
/* 13AD8 800A8ED8 3C02DF00 */  lui        $v0, 0xdf00
/* 13ADC 800A8EDC AC600004 */  sw         $zero, 4($v1)
/* 13AE0 800A8EE0 3C018015 */  lui        $at, %hi(D_80149F94)
/* 13AE4 800A8EE4 AC249F94 */  sw         $a0, %lo(D_80149F94)($at)
/* 13AE8 800A8EE8 AC620008 */  sw         $v0, 8($v1)
/* 13AEC 800A8EEC AC60000C */  sw         $zero, 0xc($v1)
/* 13AF0 800A8EF0 3C018010 */  lui        $at, %hi(D_801001F4)
/* 13AF4 800A8EF4 AC2401F4 */  sw         $a0, %lo(D_801001F4)($at)
/* 13AF8 800A8EF8 3C018010 */  lui        $at, %hi(D_801001D0)
/* 13AFC 800A8EFC AC2401D0 */  sw         $a0, %lo(D_801001D0)($at)
/* 13B00 800A8F00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13B04 800A8F04 8FB00010 */  lw         $s0, 0x10($sp)
/* 13B08 800A8F08 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13B0C 800A8F0C 03E00008 */  jr         $ra
/* 13B10 800A8F10 00000000 */   nop
