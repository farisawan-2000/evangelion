glabel func_80098E60
/* 3A60 80098E60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A64 80098E64 24020140 */  addiu      $v0, $zero, 0x140
/* 3A68 80098E68 240300F0 */  addiu      $v1, $zero, 0xF0
/* 3A6C 80098E6C AFBF0010 */  sw         $ra, 0x10($sp)
/* 3A70 80098E70 3C018015 */  lui        $at, %hi(D_8014A0BC)
/* 3A74 80098E74 AC22A0BC */  sw         $v0, %lo(D_8014A0BC)($at)
/* 3A78 80098E78 3C018015 */  lui        $at, %hi(D_80149DB8)
/* 3A7C 80098E7C AC239DB8 */  sw         $v1, %lo(D_80149DB8)($at)
/* 3A80 80098E80 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 3A84 80098E84 AC209FB0 */  sw         $zero, %lo(D_80149FB0)($at)
/* 3A88 80098E88 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 3A8C 80098E8C AC209FA4 */  sw         $zero, %lo(D_80149FA4)($at)
/* 3A90 80098E90 3C018017 */  lui        $at, %hi(D_8016D040)
/* 3A94 80098E94 AC22D040 */  sw         $v0, %lo(D_8016D040)($at)
/* 3A98 80098E98 3C018015 */  lui        $at, %hi(D_8014A2C8)
/* 3A9C 80098E9C AC23A2C8 */  sw         $v1, %lo(D_8014A2C8)($at)
/* 3AA0 80098EA0 3C018017 */  lui        $at, %hi(D_8016D7F1)
/* 3AA4 80098EA4 A020D7F1 */  sb         $zero, %lo(D_8016D7F1)($at)
/* 3AA8 80098EA8 0C026444 */  jal        func_80099110
/* 3AAC 80098EAC 00002021 */   addu      $a0, $zero, $zero
/* 3AB0 80098EB0 0C026449 */  jal        func_80099124
/* 3AB4 80098EB4 24040002 */   addiu     $a0, $zero, 0x2
/* 3AB8 80098EB8 3C04801F */  lui        $a0, (0x801F0000 >> 16)
/* 3ABC 80098EBC 0C03261C */  jal        func_800C9870
/* 3AC0 80098EC0 3C050008 */   lui       $a1, (0x80000 >> 16)
/* 3AC4 80098EC4 0C032663 */  jal        func_800C998C
/* 3AC8 80098EC8 24040001 */   addiu     $a0, $zero, 0x1
/* 3ACC 80098ECC 0C026B90 */  jal        func_8009AE40
/* 3AD0 80098ED0 00000000 */   nop
/* 3AD4 80098ED4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 3AD8 80098ED8 44810000 */  mtc1       $at, $f0
/* 3ADC 80098EDC 00000000 */  nop
/* 3AE0 80098EE0 3C018015 */  lui        $at, %hi(D_8014A2CC)
/* 3AE4 80098EE4 AC20A2CC */  sw         $zero, %lo(D_8014A2CC)($at)
/* 3AE8 80098EE8 3C018015 */  lui        $at, %hi(D_8014A0C4)
/* 3AEC 80098EEC AC20A0C4 */  sw         $zero, %lo(D_8014A0C4)($at)
/* 3AF0 80098EF0 3C018017 */  lui        $at, %hi(D_8016D5A8)
/* 3AF4 80098EF4 AC20D5A8 */  sw         $zero, %lo(D_8016D5A8)($at)
/* 3AF8 80098EF8 3C018017 */  lui        $at, %hi(D_8016D5AC)
/* 3AFC 80098EFC AC20D5AC */  sw         $zero, %lo(D_8016D5AC)($at)
/* 3B00 80098F00 3C018017 */  lui        $at, %hi(D_8016D5B0)
/* 3B04 80098F04 AC20D5B0 */  sw         $zero, %lo(D_8016D5B0)($at)
/* 3B08 80098F08 3C018015 */  lui        $at, %hi(D_80149BB8)
/* 3B0C 80098F0C AC209BB8 */  sw         $zero, %lo(D_80149BB8)($at)
/* 3B10 80098F10 3C018017 */  lui        $at, %hi(D_8016E568)
/* 3B14 80098F14 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* 3B18 80098F18 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 3B1C 80098F1C AC20D0D0 */  sw         $zero, %lo(D_8016D0D0)($at)
/* 3B20 80098F20 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 3B24 80098F24 AC20D0D4 */  sw         $zero, %lo(D_8016D0D4)($at)
/* 3B28 80098F28 3C018015 */  lui        $at, %hi(D_8014A054)
/* 3B2C 80098F2C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* 3B30 80098F30 3C018015 */  lui        $at, %hi(D_8014A050)
/* 3B34 80098F34 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* 3B38 80098F38 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 3B3C 80098F3C AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* 3B40 80098F40 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 3B44 80098F44 AC209ECC */  sw         $zero, %lo(D_80149ECC)($at)
/* 3B48 80098F48 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 3B4C 80098F4C AC20A02C */  sw         $zero, %lo(D_8014A02C)($at)
/* 3B50 80098F50 3C018017 */  lui        $at, %hi(D_8016D824)
/* 3B54 80098F54 AC20D824 */  sw         $zero, %lo(D_8016D824)($at)
/* 3B58 80098F58 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 3B5C 80098F5C E420A2A0 */  swc1       $f0, %lo(D_8014A2A0)($at)
/* 3B60 80098F60 0C027224 */  jal        func_8009C890
/* 3B64 80098F64 00000000 */   nop
/* 3B68 80098F68 0C025D9C */  jal        func_80097670
/* 3B6C 80098F6C 00000000 */   nop
/* 3B70 80098F70 0C026FD0 */  jal        func_8009BF40
/* 3B74 80098F74 00000000 */   nop
/* 3B78 80098F78 0C026528 */  jal        func_800994A0
/* 3B7C 80098F7C 00000000 */   nop
/* 3B80 80098F80 0C02DF80 */  jal        func_800B7E00
/* 3B84 80098F84 00000000 */   nop
/* 3B88 80098F88 0C028A38 */  jal        func_800A28E0
/* 3B8C 80098F8C 00000000 */   nop
/* 3B90 80098F90 0C025CC4 */  jal        func_80097310
/* 3B94 80098F94 00002021 */   addu      $a0, $zero, $zero
/* 3B98 80098F98 0C025CC4 */  jal        func_80097310
/* 3B9C 80098F9C 24040001 */   addiu     $a0, $zero, 0x1
/* 3BA0 80098FA0 0C02A1BC */  jal        func_800A86F0
/* 3BA4 80098FA4 00000000 */   nop
/* 3BA8 80098FA8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3BAC 80098FAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3BB0 80098FB0 03E00008 */  jr         $ra
/* 3BB4 80098FB4 00000000 */   nop
.size func_80098E60, . - func_80098E60
