.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025D60_6A040
/* 6A040 80025D60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6A044 80025D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 6A048 80025D68 00808021 */  addu       $s0, $a0, $zero
/* 6A04C 80025D6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A050 80025D70 9603001C */  lhu        $v1, 0x1c($s0)
/* 6A054 80025D74 24020001 */  addiu      $v0, $zero, 1
/* 6A058 80025D78 10620018 */  beq        $v1, $v0, .L80025DDC
/* 6A05C 80025D7C 28620002 */   slti      $v0, $v1, 2
/* 6A060 80025D80 50400005 */  beql       $v0, $zero, .L80025D98
/* 6A064 80025D84 3402FFFF */   ori       $v0, $zero, 0xffff
/* 6A068 80025D88 10600007 */  beqz       $v1, .L80025DA8
/* 6A06C 80025D8C 00000000 */   nop
/* 6A070 80025D90 08009788 */  j          .L80025E20
/* 6A074 80025D94 00000000 */   nop
.L80025D98:
/* 6A078 80025D98 1062001B */  beq        $v1, $v0, .L80025E08
/* 6A07C 80025D9C 00000000 */   nop
/* 6A080 80025DA0 08009788 */  j          .L80025E20
/* 6A084 80025DA4 00000000 */   nop
.L80025DA8:
/* 6A088 80025DA8 0C032663 */  jal        func_800C998C
/* 6A08C 80025DAC 24040001 */   addiu     $a0, $zero, 1
/* 6A090 80025DB0 00402021 */  addu       $a0, $v0, $zero
/* 6A094 80025DB4 24050001 */  addiu      $a1, $zero, 1
/* 6A098 80025DB8 0C030134 */  jal        bzero
/* 6A09C 80025DBC AE040014 */   sw        $a0, 0x14($s0)
/* 6A0A0 80025DC0 8E040014 */  lw         $a0, 0x14($s0)
/* 6A0A4 80025DC4 0C00978C */  jal        func_80025E30_6A110
/* 6A0A8 80025DC8 00000000 */   nop
/* 6A0AC 80025DCC 00001021 */  addu       $v0, $zero, $zero
/* 6A0B0 80025DD0 24030001 */  addiu      $v1, $zero, 1
/* 6A0B4 80025DD4 08009788 */  j          .L80025E20
/* 6A0B8 80025DD8 A603001C */   sh        $v1, 0x1c($s0)
.L80025DDC:
/* 6A0BC 80025DDC 8E040014 */  lw         $a0, 0x14($s0)
/* 6A0C0 80025DE0 0C009792 */  jal        func_80025E48_6A128
/* 6A0C4 80025DE4 00000000 */   nop
/* 6A0C8 80025DE8 5040000D */  beql       $v0, $zero, .L80025E20
/* 6A0CC 80025DEC 00001021 */   addu      $v0, $zero, $zero
/* 6A0D0 80025DF0 0C02DB14 */  jal        func_800B6C50
/* 6A0D4 80025DF4 00002021 */   addu      $a0, $zero, $zero
/* 6A0D8 80025DF8 3402FFFF */  ori        $v0, $zero, 0xffff
/* 6A0DC 80025DFC A602001C */  sh         $v0, 0x1c($s0)
/* 6A0E0 80025E00 08009788 */  j          .L80025E20
/* 6A0E4 80025E04 00001021 */   addu      $v0, $zero, $zero
.L80025E08:
/* 6A0E8 80025E08 8E040014 */  lw         $a0, 0x14($s0)
/* 6A0EC 80025E0C 0C00978E */  jal        func_80025E38_6A118
/* 6A0F0 80025E10 00000000 */   nop
/* 6A0F4 80025E14 0C0326A1 */  jal        func_800C9A84
/* 6A0F8 80025E18 8E040014 */   lw        $a0, 0x14($s0)
/* 6A0FC 80025E1C 24020001 */  addiu      $v0, $zero, 1
.L80025E20:
/* 6A100 80025E20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6A104 80025E24 8FB00010 */  lw         $s0, 0x10($sp)
/* 6A108 80025E28 03E00008 */  jr         $ra
/* 6A10C 80025E2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80025E30_6A110
/* 6A110 80025E30 03E00008 */  jr         $ra
/* 6A114 80025E34 00000000 */   nop

glabel func_80025E38_6A118
/* 6A118 80025E38 24020001 */  addiu      $v0, $zero, 1
/* 6A11C 80025E3C 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6A120 80025E40 03E00008 */  jr         $ra
/* 6A124 80025E44 A0220A30 */   sb        $v0, %lo(D_80030A30)($at)

glabel func_80025E48_6A128
/* 6A128 80025E48 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6A12C 80025E4C 00002021 */  addu       $a0, $zero, $zero
/* 6A130 80025E50 2405000E */  addiu      $a1, $zero, 0xe
/* 6A134 80025E54 AFBF004C */  sw         $ra, 0x4c($sp)
/* 6A138 80025E58 AFBE0048 */  sw         $fp, 0x48($sp)
/* 6A13C 80025E5C AFB70044 */  sw         $s7, 0x44($sp)
/* 6A140 80025E60 AFB60040 */  sw         $s6, 0x40($sp)
/* 6A144 80025E64 AFB5003C */  sw         $s5, 0x3c($sp)
/* 6A148 80025E68 AFB40038 */  sw         $s4, 0x38($sp)
/* 6A14C 80025E6C AFB30034 */  sw         $s3, 0x34($sp)
/* 6A150 80025E70 AFB20030 */  sw         $s2, 0x30($sp)
/* 6A154 80025E74 AFB1002C */  sw         $s1, 0x2c($sp)
/* 6A158 80025E78 0C02DAC0 */  jal        func_800B6B00
/* 6A15C 80025E7C AFB00028 */   sw        $s0, 0x28($sp)
/* 6A160 80025E80 00002021 */  addu       $a0, $zero, $zero
/* 6A164 80025E84 2405000B */  addiu      $a1, $zero, 0xb
/* 6A168 80025E88 0C02DAE0 */  jal        func_800B6B80
/* 6A16C 80025E8C 24060004 */   addiu     $a2, $zero, 4
/* 6A170 80025E90 3C058003 */  lui        $a1, %hi(D_8002FB10_73DF0)
/* 6A174 80025E94 24A5FB10 */  addiu      $a1, $a1, %lo(D_8002FB10_73DF0)
/* 6A178 80025E98 0C02DA9C */  jal        func_800B6A70
/* 6A17C 80025E9C 00002021 */   addu      $a0, $zero, $zero
/* 6A180 80025EA0 0000A021 */  addu       $s4, $zero, $zero
/* 6A184 80025EA4 3C168003 */  lui        $s6, %hi(D_8002FB54_73E34)
/* 6A188 80025EA8 26D6FB54 */  addiu      $s6, $s6, %lo(D_8002FB54_73E34)
/* 6A18C 80025EAC 3C178003 */  lui        $s7, %hi(D_8002FB5C_73E3C)
/* 6A190 80025EB0 26F7FB5C */  addiu      $s7, $s7, %lo(D_8002FB5C_73E3C)
/* 6A194 80025EB4 3C1E8003 */  lui        $fp, %hi(D_8002FB64_73E44)
/* 6A198 80025EB8 27DEFB64 */  addiu      $fp, $fp, %lo(D_8002FB64_73E44)
/* 6A19C 80025EBC 24120004 */  addiu      $s2, $zero, 4
/* 6A1A0 80025EC0 0000A821 */  addu       $s5, $zero, $zero
/* 6A1A4 80025EC4 00008821 */  addu       $s1, $zero, $zero
.L80025EC8:
/* 6A1A8 80025EC8 3C028015 */  lui        $v0, %hi(D_80149BB4)
/* 6A1AC 80025ECC 90429BB4 */  lbu        $v0, %lo(D_80149BB4)($v0)
/* 6A1B0 80025ED0 02821007 */  srav       $v0, $v0, $s4
/* 6A1B4 80025ED4 30420001 */  andi       $v0, $v0, 1
/* 6A1B8 80025ED8 10400176 */  beqz       $v0, .L800264B4
/* 6A1BC 80025EDC 00002021 */   addu      $a0, $zero, $zero
/* 6A1C0 80025EE0 0C02DAC0 */  jal        func_800B6B00
/* 6A1C4 80025EE4 24050007 */   addiu     $a1, $zero, 7
/* 6A1C8 80025EE8 27A40010 */  addiu      $a0, $sp, 0x10
/* 6A1CC 80025EEC 3C058003 */  lui        $a1, %hi(D_8002FB24_73E04)
/* 6A1D0 80025EF0 24A5FB24 */  addiu      $a1, $a1, %lo(D_8002FB24_73E04)
/* 6A1D4 80025EF4 0C030180 */  jal        func_800C0600
/* 6A1D8 80025EF8 26860001 */   addiu     $a2, $s4, 1
/* 6A1DC 80025EFC 00002021 */  addu       $a0, $zero, $zero
/* 6A1E0 80025F00 02402821 */  addu       $a1, $s2, $zero
/* 6A1E4 80025F04 0C02DAE0 */  jal        func_800B6B80
/* 6A1E8 80025F08 24060006 */   addiu     $a2, $zero, 6
/* 6A1EC 80025F0C 00002021 */  addu       $a0, $zero, $zero
/* 6A1F0 80025F10 0C02DA9C */  jal        func_800B6A70
/* 6A1F4 80025F14 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A1F8 80025F18 00002021 */  addu       $a0, $zero, $zero
/* 6A1FC 80025F1C 0C02DAC0 */  jal        func_800B6B00
/* 6A200 80025F20 24050008 */   addiu     $a1, $zero, 8
/* 6A204 80025F24 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A208 80025F28 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A20C 80025F2C 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A210 80025F30 00511021 */  addu       $v0, $v0, $s1
/* 6A214 80025F34 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A218 80025F38 02A08021 */  addu       $s0, $s5, $zero
/* 6A21C 80025F3C 30420800 */  andi       $v0, $v0, 0x800
/* 6A220 80025F40 10400003 */  beqz       $v0, .L80025F50
/* 6A224 80025F44 02209821 */   addu      $s3, $s1, $zero
/* 6A228 80025F48 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A22C 80025F4C 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80025F50:
/* 6A230 80025F50 3C058003 */  lui        $a1, %hi(D_8002FB2C_73E0C)
/* 6A234 80025F54 24A5FB2C */  addiu      $a1, $a1, %lo(D_8002FB2C_73E0C)
/* 6A238 80025F58 0C030180 */  jal        func_800C0600
/* 6A23C 80025F5C 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A240 80025F60 00002021 */  addu       $a0, $zero, $zero
/* 6A244 80025F64 02402821 */  addu       $a1, $s2, $zero
/* 6A248 80025F68 0C02DAE0 */  jal        func_800B6B80
/* 6A24C 80025F6C 24060008 */   addiu     $a2, $zero, 8
/* 6A250 80025F70 00002021 */  addu       $a0, $zero, $zero
/* 6A254 80025F74 0C02DA9C */  jal        func_800B6A70
/* 6A258 80025F78 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A25C 80025F7C 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A260 80025F80 00511021 */  addu       $v0, $v0, $s1
/* 6A264 80025F84 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A268 80025F88 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A26C 80025F8C 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A270 80025F90 30420400 */  andi       $v0, $v0, 0x400
/* 6A274 80025F94 10400003 */  beqz       $v0, .L80025FA4
/* 6A278 80025F98 00000000 */   nop
/* 6A27C 80025F9C 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A280 80025FA0 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80025FA4:
/* 6A284 80025FA4 3C058003 */  lui        $a1, %hi(D_8002FB3C_73E1C)
/* 6A288 80025FA8 24A5FB3C */  addiu      $a1, $a1, %lo(D_8002FB3C_73E1C)
/* 6A28C 80025FAC 0C030180 */  jal        func_800C0600
/* 6A290 80025FB0 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A294 80025FB4 00002021 */  addu       $a0, $zero, $zero
/* 6A298 80025FB8 02402821 */  addu       $a1, $s2, $zero
/* 6A29C 80025FBC 0C02DAE0 */  jal        func_800B6B80
/* 6A2A0 80025FC0 24060009 */   addiu     $a2, $zero, 9
/* 6A2A4 80025FC4 00002021 */  addu       $a0, $zero, $zero
/* 6A2A8 80025FC8 0C02DA9C */  jal        func_800B6A70
/* 6A2AC 80025FCC 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A2B0 80025FD0 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A2B4 80025FD4 00511021 */  addu       $v0, $v0, $s1
/* 6A2B8 80025FD8 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A2BC 80025FDC 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A2C0 80025FE0 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A2C4 80025FE4 30420200 */  andi       $v0, $v0, 0x200
/* 6A2C8 80025FE8 10400003 */  beqz       $v0, .L80025FF8
/* 6A2CC 80025FEC 00000000 */   nop
/* 6A2D0 80025FF0 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A2D4 80025FF4 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80025FF8:
/* 6A2D8 80025FF8 3C058003 */  lui        $a1, %hi(D_8002FB44_73E24)
/* 6A2DC 80025FFC 24A5FB44 */  addiu      $a1, $a1, %lo(D_8002FB44_73E24)
/* 6A2E0 80026000 0C030180 */  jal        func_800C0600
/* 6A2E4 80026004 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A2E8 80026008 00002021 */  addu       $a0, $zero, $zero
/* 6A2EC 8002600C 02402821 */  addu       $a1, $s2, $zero
/* 6A2F0 80026010 0C02DAE0 */  jal        func_800B6B80
/* 6A2F4 80026014 2406000A */   addiu     $a2, $zero, 0xa
/* 6A2F8 80026018 00002021 */  addu       $a0, $zero, $zero
/* 6A2FC 8002601C 0C02DA9C */  jal        func_800B6A70
/* 6A300 80026020 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A304 80026024 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A308 80026028 00511021 */  addu       $v0, $v0, $s1
/* 6A30C 8002602C 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A310 80026030 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A314 80026034 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A318 80026038 30420100 */  andi       $v0, $v0, 0x100
/* 6A31C 8002603C 10400003 */  beqz       $v0, .L8002604C
/* 6A320 80026040 00000000 */   nop
/* 6A324 80026044 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A328 80026048 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L8002604C:
/* 6A32C 8002604C 3C058003 */  lui        $a1, %hi(D_8002FB4C_73E2C)
/* 6A330 80026050 24A5FB4C */  addiu      $a1, $a1, %lo(D_8002FB4C_73E2C)
/* 6A334 80026054 0C030180 */  jal        func_800C0600
/* 6A338 80026058 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A33C 8002605C 00002021 */  addu       $a0, $zero, $zero
/* 6A340 80026060 02402821 */  addu       $a1, $s2, $zero
/* 6A344 80026064 0C02DAE0 */  jal        func_800B6B80
/* 6A348 80026068 2406000B */   addiu     $a2, $zero, 0xb
/* 6A34C 8002606C 00002021 */  addu       $a0, $zero, $zero
/* 6A350 80026070 0C02DA9C */  jal        func_800B6A70
/* 6A354 80026074 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A358 80026078 00002021 */  addu       $a0, $zero, $zero
/* 6A35C 8002607C 0C02DAC0 */  jal        func_800B6B00
/* 6A360 80026080 24050001 */   addiu     $a1, $zero, 1
/* 6A364 80026084 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A368 80026088 00511021 */  addu       $v0, $v0, $s1
/* 6A36C 8002608C 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A370 80026090 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A374 80026094 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A378 80026098 30428000 */  andi       $v0, $v0, 0x8000
/* 6A37C 8002609C 10400003 */  beqz       $v0, .L800260AC
/* 6A380 800260A0 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A384 800260A4 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A388 800260A8 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L800260AC:
/* 6A38C 800260AC 0C030180 */  jal        func_800C0600
/* 6A390 800260B0 02C02821 */   addu      $a1, $s6, $zero
/* 6A394 800260B4 00002021 */  addu       $a0, $zero, $zero
/* 6A398 800260B8 02402821 */  addu       $a1, $s2, $zero
/* 6A39C 800260BC 0C02DAE0 */  jal        func_800B6B80
/* 6A3A0 800260C0 2406000C */   addiu     $a2, $zero, 0xc
/* 6A3A4 800260C4 00002021 */  addu       $a0, $zero, $zero
/* 6A3A8 800260C8 0C02DA9C */  jal        func_800B6A70
/* 6A3AC 800260CC 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A3B0 800260D0 00002021 */  addu       $a0, $zero, $zero
/* 6A3B4 800260D4 0C02DAC0 */  jal        func_800B6B00
/* 6A3B8 800260D8 24050002 */   addiu     $a1, $zero, 2
/* 6A3BC 800260DC 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A3C0 800260E0 00511021 */  addu       $v0, $v0, $s1
/* 6A3C4 800260E4 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A3C8 800260E8 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A3CC 800260EC 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A3D0 800260F0 30424000 */  andi       $v0, $v0, 0x4000
/* 6A3D4 800260F4 10400003 */  beqz       $v0, .L80026104
/* 6A3D8 800260F8 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A3DC 800260FC 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A3E0 80026100 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80026104:
/* 6A3E4 80026104 0C030180 */  jal        func_800C0600
/* 6A3E8 80026108 02E02821 */   addu      $a1, $s7, $zero
/* 6A3EC 8002610C 00002021 */  addu       $a0, $zero, $zero
/* 6A3F0 80026110 02402821 */  addu       $a1, $s2, $zero
/* 6A3F4 80026114 0C02DAE0 */  jal        func_800B6B80
/* 6A3F8 80026118 2406000D */   addiu     $a2, $zero, 0xd
/* 6A3FC 8002611C 00002021 */  addu       $a0, $zero, $zero
/* 6A400 80026120 0C02DA9C */  jal        func_800B6A70
/* 6A404 80026124 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A408 80026128 00002021 */  addu       $a0, $zero, $zero
/* 6A40C 8002612C 0C02DAC0 */  jal        func_800B6B00
/* 6A410 80026130 24050006 */   addiu     $a1, $zero, 6
/* 6A414 80026134 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A418 80026138 00511021 */  addu       $v0, $v0, $s1
/* 6A41C 8002613C 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A420 80026140 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A424 80026144 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A428 80026148 30420008 */  andi       $v0, $v0, 8
/* 6A42C 8002614C 10400003 */  beqz       $v0, .L8002615C
/* 6A430 80026150 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A434 80026154 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A438 80026158 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L8002615C:
/* 6A43C 8002615C 0C030180 */  jal        func_800C0600
/* 6A440 80026160 03C02821 */   addu      $a1, $fp, $zero
/* 6A444 80026164 00002021 */  addu       $a0, $zero, $zero
/* 6A448 80026168 02402821 */  addu       $a1, $s2, $zero
/* 6A44C 8002616C 0C02DAE0 */  jal        func_800B6B80
/* 6A450 80026170 2406000E */   addiu     $a2, $zero, 0xe
/* 6A454 80026174 00002021 */  addu       $a0, $zero, $zero
/* 6A458 80026178 0C02DA9C */  jal        func_800B6A70
/* 6A45C 8002617C 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A460 80026180 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A464 80026184 00511021 */  addu       $v0, $v0, $s1
/* 6A468 80026188 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A46C 8002618C 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A470 80026190 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A474 80026194 3C058003 */  lui        $a1, %hi(D_8002FB6C_73E4C)
/* 6A478 80026198 24A5FB6C */  addiu      $a1, $a1, %lo(D_8002FB6C_73E4C)
/* 6A47C 8002619C 30420004 */  andi       $v0, $v0, 4
/* 6A480 800261A0 10400003 */  beqz       $v0, .L800261B0
/* 6A484 800261A4 00000000 */   nop
/* 6A488 800261A8 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A48C 800261AC 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L800261B0:
/* 6A490 800261B0 0C030180 */  jal        func_800C0600
/* 6A494 800261B4 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A498 800261B8 00002021 */  addu       $a0, $zero, $zero
/* 6A49C 800261BC 02402821 */  addu       $a1, $s2, $zero
/* 6A4A0 800261C0 0C02DAE0 */  jal        func_800B6B80
/* 6A4A4 800261C4 2406000F */   addiu     $a2, $zero, 0xf
/* 6A4A8 800261C8 00002021 */  addu       $a0, $zero, $zero
/* 6A4AC 800261CC 0C02DA9C */  jal        func_800B6A70
/* 6A4B0 800261D0 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A4B4 800261D4 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A4B8 800261D8 00511021 */  addu       $v0, $v0, $s1
/* 6A4BC 800261DC 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A4C0 800261E0 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A4C4 800261E4 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A4C8 800261E8 3C058003 */  lui        $a1, %hi(D_8002FB74_73E54)
/* 6A4CC 800261EC 24A5FB74 */  addiu      $a1, $a1, %lo(D_8002FB74_73E54)
/* 6A4D0 800261F0 30420002 */  andi       $v0, $v0, 2
/* 6A4D4 800261F4 10400003 */  beqz       $v0, .L80026204
/* 6A4D8 800261F8 00000000 */   nop
/* 6A4DC 800261FC 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A4E0 80026200 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80026204:
/* 6A4E4 80026204 0C030180 */  jal        func_800C0600
/* 6A4E8 80026208 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A4EC 8002620C 00002021 */  addu       $a0, $zero, $zero
/* 6A4F0 80026210 26100004 */  addiu      $s0, $s0, 4
/* 6A4F4 80026214 02002821 */  addu       $a1, $s0, $zero
/* 6A4F8 80026218 0C02DAE0 */  jal        func_800B6B80
/* 6A4FC 8002621C 24060010 */   addiu     $a2, $zero, 0x10
/* 6A500 80026220 00002021 */  addu       $a0, $zero, $zero
/* 6A504 80026224 0C02DA9C */  jal        func_800B6A70
/* 6A508 80026228 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A50C 8002622C 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A510 80026230 00531021 */  addu       $v0, $v0, $s3
/* 6A514 80026234 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A518 80026238 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A51C 8002623C 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A520 80026240 3C058003 */  lui        $a1, %hi(D_8002FB7C_73E5C)
/* 6A524 80026244 24A5FB7C */  addiu      $a1, $a1, %lo(D_8002FB7C_73E5C)
/* 6A528 80026248 30420001 */  andi       $v0, $v0, 1
/* 6A52C 8002624C 10400003 */  beqz       $v0, .L8002625C
/* 6A530 80026250 00000000 */   nop
/* 6A534 80026254 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A538 80026258 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L8002625C:
/* 6A53C 8002625C 0C030180 */  jal        func_800C0600
/* 6A540 80026260 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A544 80026264 00002021 */  addu       $a0, $zero, $zero
/* 6A548 80026268 02002821 */  addu       $a1, $s0, $zero
/* 6A54C 8002626C 0C02DAE0 */  jal        func_800B6B80
/* 6A550 80026270 24060011 */   addiu     $a2, $zero, 0x11
/* 6A554 80026274 00002021 */  addu       $a0, $zero, $zero
/* 6A558 80026278 0C02DA9C */  jal        func_800B6A70
/* 6A55C 8002627C 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A560 80026280 00002021 */  addu       $a0, $zero, $zero
/* 6A564 80026284 0C02DAC0 */  jal        func_800B6B00
/* 6A568 80026288 24050008 */   addiu     $a1, $zero, 8
/* 6A56C 8002628C 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A570 80026290 00531021 */  addu       $v0, $v0, $s3
/* 6A574 80026294 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A578 80026298 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A57C 8002629C 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A580 800262A0 3C058003 */  lui        $a1, %hi(D_8002FB84_73E64)
/* 6A584 800262A4 24A5FB84 */  addiu      $a1, $a1, %lo(D_8002FB84_73E64)
/* 6A588 800262A8 30420020 */  andi       $v0, $v0, 0x20
/* 6A58C 800262AC 10400003 */  beqz       $v0, .L800262BC
/* 6A590 800262B0 00000000 */   nop
/* 6A594 800262B4 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A598 800262B8 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L800262BC:
/* 6A59C 800262BC 0C030180 */  jal        func_800C0600
/* 6A5A0 800262C0 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A5A4 800262C4 00002021 */  addu       $a0, $zero, $zero
/* 6A5A8 800262C8 02002821 */  addu       $a1, $s0, $zero
/* 6A5AC 800262CC 0C02DAE0 */  jal        func_800B6B80
/* 6A5B0 800262D0 24060012 */   addiu     $a2, $zero, 0x12
/* 6A5B4 800262D4 00002021 */  addu       $a0, $zero, $zero
/* 6A5B8 800262D8 0C02DA9C */  jal        func_800B6A70
/* 6A5BC 800262DC 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A5C0 800262E0 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A5C4 800262E4 00531021 */  addu       $v0, $v0, $s3
/* 6A5C8 800262E8 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A5CC 800262EC 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A5D0 800262F0 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A5D4 800262F4 3C058003 */  lui        $a1, %hi(D_8002FB8C_73E6C)
/* 6A5D8 800262F8 24A5FB8C */  addiu      $a1, $a1, %lo(D_8002FB8C_73E6C)
/* 6A5DC 800262FC 30420010 */  andi       $v0, $v0, 0x10
/* 6A5E0 80026300 10400003 */  beqz       $v0, .L80026310
/* 6A5E4 80026304 00000000 */   nop
/* 6A5E8 80026308 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A5EC 8002630C 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80026310:
/* 6A5F0 80026310 0C030180 */  jal        func_800C0600
/* 6A5F4 80026314 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A5F8 80026318 00002021 */  addu       $a0, $zero, $zero
/* 6A5FC 8002631C 02002821 */  addu       $a1, $s0, $zero
/* 6A600 80026320 0C02DAE0 */  jal        func_800B6B80
/* 6A604 80026324 24060013 */   addiu     $a2, $zero, 0x13
/* 6A608 80026328 00002021 */  addu       $a0, $zero, $zero
/* 6A60C 8002632C 0C02DA9C */  jal        func_800B6A70
/* 6A610 80026330 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A614 80026334 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A618 80026338 00531021 */  addu       $v0, $v0, $s3
/* 6A61C 8002633C 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A620 80026340 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A624 80026344 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A628 80026348 3C058003 */  lui        $a1, %hi(D_8002FB94_73E74)
/* 6A62C 8002634C 24A5FB94 */  addiu      $a1, $a1, %lo(D_8002FB94_73E74)
/* 6A630 80026350 30422000 */  andi       $v0, $v0, 0x2000
/* 6A634 80026354 10400003 */  beqz       $v0, .L80026364
/* 6A638 80026358 00000000 */   nop
/* 6A63C 8002635C 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A640 80026360 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L80026364:
/* 6A644 80026364 0C030180 */  jal        func_800C0600
/* 6A648 80026368 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A64C 8002636C 00002021 */  addu       $a0, $zero, $zero
/* 6A650 80026370 02002821 */  addu       $a1, $s0, $zero
/* 6A654 80026374 0C02DAE0 */  jal        func_800B6B80
/* 6A658 80026378 24060014 */   addiu     $a2, $zero, 0x14
/* 6A65C 8002637C 00002021 */  addu       $a0, $zero, $zero
/* 6A660 80026380 0C02DA9C */  jal        func_800B6A70
/* 6A664 80026384 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A668 80026388 00002021 */  addu       $a0, $zero, $zero
/* 6A66C 8002638C 0C02DAC0 */  jal        func_800B6B00
/* 6A670 80026390 24050004 */   addiu     $a1, $zero, 4
/* 6A674 80026394 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A678 80026398 00531021 */  addu       $v0, $v0, $s3
/* 6A67C 8002639C 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6A680 800263A0 3C068003 */  lui        $a2, %hi(D_8002FB38_73E18)
/* 6A684 800263A4 24C6FB38 */  addiu      $a2, $a2, %lo(D_8002FB38_73E18)
/* 6A688 800263A8 3C058003 */  lui        $a1, %hi(D_8002FB9C_73E7C)
/* 6A68C 800263AC 24A5FB9C */  addiu      $a1, $a1, %lo(D_8002FB9C_73E7C)
/* 6A690 800263B0 30421000 */  andi       $v0, $v0, 0x1000
/* 6A694 800263B4 10400003 */  beqz       $v0, .L800263C4
/* 6A698 800263B8 00000000 */   nop
/* 6A69C 800263BC 3C068003 */  lui        $a2, %hi(D_8002FB34_73E14)
/* 6A6A0 800263C0 24C6FB34 */  addiu      $a2, $a2, %lo(D_8002FB34_73E14)
.L800263C4:
/* 6A6A4 800263C4 0C030180 */  jal        func_800C0600
/* 6A6A8 800263C8 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A6AC 800263CC 00002021 */  addu       $a0, $zero, $zero
/* 6A6B0 800263D0 02002821 */  addu       $a1, $s0, $zero
/* 6A6B4 800263D4 0C02DAE0 */  jal        func_800B6B80
/* 6A6B8 800263D8 24060015 */   addiu     $a2, $zero, 0x15
/* 6A6BC 800263DC 00002021 */  addu       $a0, $zero, $zero
/* 6A6C0 800263E0 0C02DA9C */  jal        func_800B6A70
/* 6A6C4 800263E4 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A6C8 800263E8 00002021 */  addu       $a0, $zero, $zero
/* 6A6CC 800263EC 0C02DAC0 */  jal        func_800B6B00
/* 6A6D0 800263F0 24050007 */   addiu     $a1, $zero, 7
/* 6A6D4 800263F4 3C018015 */  lui        $at, %hi(D_8014CF9C)
/* 6A6D8 800263F8 00330821 */  addu       $at, $at, $s3
/* 6A6DC 800263FC C420CF9C */  lwc1       $f0, %lo(D_8014CF9C)($at)
/* 6A6E0 80026400 3C058003 */  lui        $a1, %hi(D_8002FBA4_73E84)
/* 6A6E4 80026404 24A5FBA4 */  addiu      $a1, $a1, %lo(D_8002FBA4_73E84)
/* 6A6E8 80026408 4600008D */  trunc.w.s  $f2, $f0
/* 6A6EC 8002640C 44061000 */  mfc1       $a2, $f2
/* 6A6F0 80026410 00000000 */  nop
/* 6A6F4 80026414 0C030180 */  jal        func_800C0600
/* 6A6F8 80026418 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A6FC 8002641C 00002021 */  addu       $a0, $zero, $zero
/* 6A700 80026420 02002821 */  addu       $a1, $s0, $zero
/* 6A704 80026424 0C02DAE0 */  jal        func_800B6B80
/* 6A708 80026428 24060016 */   addiu     $a2, $zero, 0x16
/* 6A70C 8002642C 00002021 */  addu       $a0, $zero, $zero
/* 6A710 80026430 0C02DA9C */  jal        func_800B6A70
/* 6A714 80026434 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A718 80026438 3C018015 */  lui        $at, %hi(D_8014CFA0)
/* 6A71C 8002643C 00330821 */  addu       $at, $at, $s3
/* 6A720 80026440 C420CFA0 */  lwc1       $f0, %lo(D_8014CFA0)($at)
/* 6A724 80026444 3C058003 */  lui        $a1, %hi(D_8002FBAC_73E8C)
/* 6A728 80026448 24A5FBAC */  addiu      $a1, $a1, %lo(D_8002FBAC_73E8C)
/* 6A72C 8002644C 4600008D */  trunc.w.s  $f2, $f0
/* 6A730 80026450 44061000 */  mfc1       $a2, $f2
/* 6A734 80026454 00000000 */  nop
/* 6A738 80026458 0C030180 */  jal        func_800C0600
/* 6A73C 8002645C 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A740 80026460 00002021 */  addu       $a0, $zero, $zero
/* 6A744 80026464 02002821 */  addu       $a1, $s0, $zero
/* 6A748 80026468 0C02DAE0 */  jal        func_800B6B80
/* 6A74C 8002646C 24060017 */   addiu     $a2, $zero, 0x17
/* 6A750 80026470 00002021 */  addu       $a0, $zero, $zero
/* 6A754 80026474 0C02DA9C */  jal        func_800B6A70
/* 6A758 80026478 27A50010 */   addiu     $a1, $sp, 0x10
/* 6A75C 8002647C 00002021 */  addu       $a0, $zero, $zero
/* 6A760 80026480 0C02DAC0 */  jal        func_800B6B00
/* 6A764 80026484 24050003 */   addiu     $a1, $zero, 3
/* 6A768 80026488 3C058003 */  lui        $a1, %hi(D_8002FBB4_73E94)
/* 6A76C 8002648C 24A5FBB4 */  addiu      $a1, $a1, %lo(D_8002FBB4_73E94)
/* 6A770 80026490 0C030180 */  jal        func_800C0600
/* 6A774 80026494 27A40010 */   addiu     $a0, $sp, 0x10
/* 6A778 80026498 00002021 */  addu       $a0, $zero, $zero
/* 6A77C 8002649C 02002821 */  addu       $a1, $s0, $zero
/* 6A780 800264A0 0C02DAE0 */  jal        func_800B6B80
/* 6A784 800264A4 24060018 */   addiu     $a2, $zero, 0x18
/* 6A788 800264A8 00002021 */  addu       $a0, $zero, $zero
/* 6A78C 800264AC 08009936 */  j          .L800264D8
/* 6A790 800264B0 27A50010 */   addiu     $a1, $sp, 0x10
.L800264B4:
/* 6A794 800264B4 0C02DAC0 */  jal        func_800B6B00
/* 6A798 800264B8 24050007 */   addiu     $a1, $zero, 7
/* 6A79C 800264BC 00002021 */  addu       $a0, $zero, $zero
/* 6A7A0 800264C0 02402821 */  addu       $a1, $s2, $zero
/* 6A7A4 800264C4 0C02DAE0 */  jal        func_800B6B80
/* 6A7A8 800264C8 24060006 */   addiu     $a2, $zero, 6
/* 6A7AC 800264CC 00002021 */  addu       $a0, $zero, $zero
/* 6A7B0 800264D0 3C058003 */  lui        $a1, %hi(D_8002FBBC_73E9C)
/* 6A7B4 800264D4 24A5FBBC */  addiu      $a1, $a1, %lo(D_8002FBBC_73E9C)
.L800264D8:
/* 6A7B8 800264D8 0C02DA9C */  jal        func_800B6A70
/* 6A7BC 800264DC 26520009 */   addiu     $s2, $s2, 9
/* 6A7C0 800264E0 26B50009 */  addiu      $s5, $s5, 9
/* 6A7C4 800264E4 26940001 */  addiu      $s4, $s4, 1
/* 6A7C8 800264E8 2A820004 */  slti       $v0, $s4, 4
/* 6A7CC 800264EC 1440FE76 */  bnez       $v0, .L80025EC8
/* 6A7D0 800264F0 26310028 */   addiu     $s1, $s1, 0x28
/* 6A7D4 800264F4 00002021 */  addu       $a0, $zero, $zero
/* 6A7D8 800264F8 0C02DAC0 */  jal        func_800B6B00
/* 6A7DC 800264FC 2405000C */   addiu     $a1, $zero, 0xc
/* 6A7E0 80026500 00002021 */  addu       $a0, $zero, $zero
/* 6A7E4 80026504 2405000E */  addiu      $a1, $zero, 0xe
/* 6A7E8 80026508 0C02DAE0 */  jal        func_800B6B80
/* 6A7EC 8002650C 24060019 */   addiu     $a2, $zero, 0x19
/* 6A7F0 80026510 3C058003 */  lui        $a1, %hi(D_8002FBC4_73EA4)
/* 6A7F4 80026514 24A5FBC4 */  addiu      $a1, $a1, %lo(D_8002FBC4_73EA4)
/* 6A7F8 80026518 0C02DA9C */  jal        func_800B6A70
/* 6A7FC 8002651C 00002021 */   addu      $a0, $zero, $zero
/* 6A800 80026520 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6A804 80026524 8C42CF90 */  lw         $v0, %lo(D_8014CF90)($v0)
/* 6A808 80026528 3C032000 */  lui        $v1, 0x2000
/* 6A80C 8002652C 34634000 */  ori        $v1, $v1, 0x4000
/* 6A810 80026530 00431024 */  and        $v0, $v0, $v1
/* 6A814 80026534 00431026 */  xor        $v0, $v0, $v1
/* 6A818 80026538 2C420001 */  sltiu      $v0, $v0, 1
/* 6A81C 8002653C 00021023 */  negu       $v0, $v0
/* 6A820 80026540 8FBF004C */  lw         $ra, 0x4c($sp)
/* 6A824 80026544 8FBE0048 */  lw         $fp, 0x48($sp)
/* 6A828 80026548 8FB70044 */  lw         $s7, 0x44($sp)
/* 6A82C 8002654C 8FB60040 */  lw         $s6, 0x40($sp)
/* 6A830 80026550 8FB5003C */  lw         $s5, 0x3c($sp)
/* 6A834 80026554 8FB40038 */  lw         $s4, 0x38($sp)
/* 6A838 80026558 8FB30034 */  lw         $s3, 0x34($sp)
/* 6A83C 8002655C 8FB20030 */  lw         $s2, 0x30($sp)
/* 6A840 80026560 8FB1002C */  lw         $s1, 0x2c($sp)
/* 6A844 80026564 8FB00028 */  lw         $s0, 0x28($sp)
/* 6A848 80026568 03E00008 */  jr         $ra
/* 6A84C 8002656C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80026570_6A850
/* 6A850 80026570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6A854 80026574 AFB00010 */  sw         $s0, 0x10($sp)
/* 6A858 80026578 00808021 */  addu       $s0, $a0, $zero
/* 6A85C 8002657C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A860 80026580 9603001C */  lhu        $v1, 0x1c($s0)
/* 6A864 80026584 24020001 */  addiu      $v0, $zero, 1
/* 6A868 80026588 10620018 */  beq        $v1, $v0, .L800265EC
/* 6A86C 8002658C 28620002 */   slti      $v0, $v1, 2
/* 6A870 80026590 50400005 */  beql       $v0, $zero, .L800265A8
/* 6A874 80026594 3402FFFF */   ori       $v0, $zero, 0xffff
/* 6A878 80026598 10600007 */  beqz       $v1, .L800265B8
/* 6A87C 8002659C 00000000 */   nop
/* 6A880 800265A0 0800998C */  j          .L80026630
/* 6A884 800265A4 00000000 */   nop
.L800265A8:
/* 6A888 800265A8 1062001B */  beq        $v1, $v0, .L80026618
/* 6A88C 800265AC 00000000 */   nop
/* 6A890 800265B0 0800998C */  j          .L80026630
/* 6A894 800265B4 00000000 */   nop
.L800265B8:
/* 6A898 800265B8 0C032663 */  jal        func_800C998C
/* 6A89C 800265BC 2404080C */   addiu     $a0, $zero, 0x80c
/* 6A8A0 800265C0 00402021 */  addu       $a0, $v0, $zero
/* 6A8A4 800265C4 2405080C */  addiu      $a1, $zero, 0x80c
/* 6A8A8 800265C8 0C030134 */  jal        bzero
/* 6A8AC 800265CC AE040014 */   sw        $a0, 0x14($s0)
/* 6A8B0 800265D0 8E040014 */  lw         $a0, 0x14($s0)
/* 6A8B4 800265D4 0C009990 */  jal        func_80026640_6A920
/* 6A8B8 800265D8 00000000 */   nop
/* 6A8BC 800265DC 00001021 */  addu       $v0, $zero, $zero
/* 6A8C0 800265E0 24030001 */  addiu      $v1, $zero, 1
/* 6A8C4 800265E4 0800998C */  j          .L80026630
/* 6A8C8 800265E8 A603001C */   sh        $v1, 0x1c($s0)
.L800265EC:
/* 6A8CC 800265EC 8E040014 */  lw         $a0, 0x14($s0)
/* 6A8D0 800265F0 0C0099AB */  jal        func_800266AC_6A98C
/* 6A8D4 800265F4 00000000 */   nop
/* 6A8D8 800265F8 5040000D */  beql       $v0, $zero, .L80026630
/* 6A8DC 800265FC 00001021 */   addu      $v0, $zero, $zero
/* 6A8E0 80026600 0C02DB14 */  jal        func_800B6C50
/* 6A8E4 80026604 00002021 */   addu      $a0, $zero, $zero
/* 6A8E8 80026608 3402FFFF */  ori        $v0, $zero, 0xffff
/* 6A8EC 8002660C A602001C */  sh         $v0, 0x1c($s0)
/* 6A8F0 80026610 0800998C */  j          .L80026630
/* 6A8F4 80026614 00001021 */   addu      $v0, $zero, $zero
.L80026618:
/* 6A8F8 80026618 8E040014 */  lw         $a0, 0x14($s0)
/* 6A8FC 8002661C 0C00999A */  jal        func_80026668_6A948
/* 6A900 80026620 00000000 */   nop
/* 6A904 80026624 0C0326A1 */  jal        func_800C9A84
/* 6A908 80026628 8E040014 */   lw        $a0, 0x14($s0)
/* 6A90C 8002662C 24020001 */  addiu      $v0, $zero, 1
.L80026630:
/* 6A910 80026630 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6A914 80026634 8FB00010 */  lw         $s0, 0x10($sp)
/* 6A918 80026638 03E00008 */  jr         $ra
/* 6A91C 8002663C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026640_6A920
/* 6A920 80026640 240207FF */  addiu      $v0, $zero, 0x7ff
/* 6A924 80026644 248307FF */  addiu      $v1, $a0, 0x7ff
.L80026648:
/* 6A928 80026648 A062000C */  sb         $v0, 0xc($v1)
/* 6A92C 8002664C 2442FFFF */  addiu      $v0, $v0, -1
/* 6A930 80026650 0441FFFD */  bgez       $v0, .L80026648
/* 6A934 80026654 2463FFFF */   addiu     $v1, $v1, -1
/* 6A938 80026658 AC800000 */  sw         $zero, ($a0)
/* 6A93C 8002665C AC800004 */  sw         $zero, 4($a0)
/* 6A940 80026660 03E00008 */  jr         $ra
/* 6A944 80026664 AC800008 */   sw        $zero, 8($a0)

glabel func_80026668_6A948
/* 6A948 80026668 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6A94C 8002666C AFBF0010 */  sw         $ra, 0x10($sp)
/* 6A950 80026670 0C026449 */  jal        func_80099124
/* 6A954 80026674 24040002 */   addiu     $a0, $zero, 2
/* 6A958 80026678 24020001 */  addiu      $v0, $zero, 1
/* 6A95C 8002667C 3C018015 */  lui        $at, %hi(D_8014C370)
/* 6A960 80026680 AC22C370 */  sw         $v0, %lo(D_8014C370)($at)
/* 6A964 80026684 3C018017 */  lui        $at, %hi(D_8016D5B4)
/* 6A968 80026688 AC22D5B4 */  sw         $v0, %lo(D_8016D5B4)($at)
/* 6A96C 8002668C 24020001 */  addiu      $v0, $zero, 1
/* 6A970 80026690 3C018017 */  lui        $at, %hi(D_8016D16C)
/* 6A974 80026694 AC20D16C */  sw         $zero, %lo(D_8016D16C)($at)
/* 6A978 80026698 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6A97C 8002669C A0220A30 */  sb         $v0, %lo(D_80030A30)($at)
/* 6A980 800266A0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6A984 800266A4 03E00008 */  jr         $ra
/* 6A988 800266A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800266AC_6A98C
/* 6A98C 800266AC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6A990 800266B0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 6A994 800266B4 00808821 */  addu       $s1, $a0, $zero
/* 6A998 800266B8 00002021 */  addu       $a0, $zero, $zero
/* 6A99C 800266BC 2405000E */  addiu      $a1, $zero, 0xe
/* 6A9A0 800266C0 AFBF003C */  sw         $ra, 0x3c($sp)
/* 6A9A4 800266C4 AFBE0038 */  sw         $fp, 0x38($sp)
/* 6A9A8 800266C8 AFB70034 */  sw         $s7, 0x34($sp)
/* 6A9AC 800266CC AFB60030 */  sw         $s6, 0x30($sp)
/* 6A9B0 800266D0 AFB5002C */  sw         $s5, 0x2c($sp)
/* 6A9B4 800266D4 AFB40028 */  sw         $s4, 0x28($sp)
/* 6A9B8 800266D8 AFB30024 */  sw         $s3, 0x24($sp)
/* 6A9BC 800266DC AFB20020 */  sw         $s2, 0x20($sp)
/* 6A9C0 800266E0 0C02DAC0 */  jal        func_800B6B00
/* 6A9C4 800266E4 AFB00018 */   sw        $s0, 0x18($sp)
/* 6A9C8 800266E8 00002021 */  addu       $a0, $zero, $zero
/* 6A9CC 800266EC 2405000E */  addiu      $a1, $zero, 0xe
/* 6A9D0 800266F0 0C02DAE0 */  jal        func_800B6B80
/* 6A9D4 800266F4 24060004 */   addiu     $a2, $zero, 4
/* 6A9D8 800266F8 3C058003 */  lui        $a1, %hi(D_8002FBD4_73EB4)
/* 6A9DC 800266FC 24A5FBD4 */  addiu      $a1, $a1, %lo(D_8002FBD4_73EB4)
/* 6A9E0 80026700 0C02DA9C */  jal        func_800B6A70
/* 6A9E4 80026704 00002021 */   addu      $a0, $zero, $zero
/* 6A9E8 80026708 00002021 */  addu       $a0, $zero, $zero
/* 6A9EC 8002670C 24050002 */  addiu      $a1, $zero, 2
/* 6A9F0 80026710 0C02DAE0 */  jal        func_800B6B80
/* 6A9F4 80026714 24060005 */   addiu     $a2, $zero, 5
/* 6A9F8 80026718 3C058003 */  lui        $a1, %hi(D_8002FBE4_73EC4)
/* 6A9FC 8002671C 24A5FBE4 */  addiu      $a1, $a1, %lo(D_8002FBE4_73EC4)
/* 6AA00 80026720 0C02DA9C */  jal        func_800B6A70
/* 6AA04 80026724 00002021 */   addu      $a0, $zero, $zero
/* 6AA08 80026728 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 6AA0C 8002672C 2463CF94 */  addiu      $v1, $v1, %lo(D_8014CF94)
/* 6AA10 80026730 94620000 */  lhu        $v0, ($v1)
/* 6AA14 80026734 30420100 */  andi       $v0, $v0, 0x100
/* 6AA18 80026738 10400004 */  beqz       $v0, .L8002674C
/* 6AA1C 8002673C 00000000 */   nop
/* 6AA20 80026740 8E220004 */  lw         $v0, 4($s1)
/* 6AA24 80026744 24420001 */  addiu      $v0, $v0, 1
/* 6AA28 80026748 AE220004 */  sw         $v0, 4($s1)
.L8002674C:
/* 6AA2C 8002674C 94620000 */  lhu        $v0, ($v1)
/* 6AA30 80026750 30420200 */  andi       $v0, $v0, 0x200
/* 6AA34 80026754 10400004 */  beqz       $v0, .L80026768
/* 6AA38 80026758 00000000 */   nop
/* 6AA3C 8002675C 8E220004 */  lw         $v0, 4($s1)
/* 6AA40 80026760 2442FFFF */  addiu      $v0, $v0, -1
/* 6AA44 80026764 AE220004 */  sw         $v0, 4($s1)
.L80026768:
/* 6AA48 80026768 94620000 */  lhu        $v0, ($v1)
/* 6AA4C 8002676C 30420400 */  andi       $v0, $v0, 0x400
/* 6AA50 80026770 10400004 */  beqz       $v0, .L80026784
/* 6AA54 80026774 00000000 */   nop
/* 6AA58 80026778 8E220008 */  lw         $v0, 8($s1)
/* 6AA5C 8002677C 24420001 */  addiu      $v0, $v0, 1
/* 6AA60 80026780 AE220008 */  sw         $v0, 8($s1)
.L80026784:
/* 6AA64 80026784 94620000 */  lhu        $v0, ($v1)
/* 6AA68 80026788 30420800 */  andi       $v0, $v0, 0x800
/* 6AA6C 8002678C 10400004 */  beqz       $v0, .L800267A0
/* 6AA70 80026790 00000000 */   nop
/* 6AA74 80026794 8E220008 */  lw         $v0, 8($s1)
/* 6AA78 80026798 2442FFFF */  addiu      $v0, $v0, -1
/* 6AA7C 8002679C AE220008 */  sw         $v0, 8($s1)
.L800267A0:
/* 6AA80 800267A0 8E220008 */  lw         $v0, 8($s1)
/* 6AA84 800267A4 04430004 */  bgezl      $v0, .L800267B8
/* 6AA88 800267A8 28420014 */   slti      $v0, $v0, 0x14
/* 6AA8C 800267AC 8E220000 */  lw         $v0, ($s1)
/* 6AA90 800267B0 080099F2 */  j          .L800267C8
/* 6AA94 800267B4 2442FFF8 */   addiu     $v0, $v0, -8
.L800267B8:
/* 6AA98 800267B8 14400004 */  bnez       $v0, .L800267CC
/* 6AA9C 800267BC 00000000 */   nop
/* 6AAA0 800267C0 8E220000 */  lw         $v0, ($s1)
/* 6AAA4 800267C4 24420008 */  addiu      $v0, $v0, 8
.L800267C8:
/* 6AAA8 800267C8 AE220000 */  sw         $v0, ($s1)
.L800267CC:
/* 6AAAC 800267CC 8E230004 */  lw         $v1, 4($s1)
/* 6AAB0 800267D0 28620008 */  slti       $v0, $v1, 8
/* 6AAB4 800267D4 10400003 */  beqz       $v0, .L800267E4
/* 6AAB8 800267D8 2462FFF8 */   addiu     $v0, $v1, -8
/* 6AABC 800267DC 04610002 */  bgez       $v1, .L800267E8
/* 6AAC0 800267E0 24620008 */   addiu     $v0, $v1, 8
.L800267E4:
/* 6AAC4 800267E4 AE220004 */  sw         $v0, 4($s1)
.L800267E8:
/* 6AAC8 800267E8 8E230008 */  lw         $v1, 8($s1)
/* 6AACC 800267EC 28620014 */  slti       $v0, $v1, 0x14
/* 6AAD0 800267F0 14400003 */  bnez       $v0, .L80026800
/* 6AAD4 800267F4 24020013 */   addiu     $v0, $zero, 0x13
/* 6AAD8 800267F8 08009A02 */  j          .L80026808
/* 6AADC 800267FC AE220008 */   sw        $v0, 8($s1)
.L80026800:
/* 6AAE0 80026800 04620001 */  bltzl      $v1, .L80026808
/* 6AAE4 80026804 AE200008 */   sw        $zero, 8($s1)
.L80026808:
/* 6AAE8 80026808 8E230000 */  lw         $v1, ($s1)
/* 6AAEC 8002680C 28620761 */  slti       $v0, $v1, 0x761
/* 6AAF0 80026810 14400003 */  bnez       $v0, .L80026820
/* 6AAF4 80026814 24020760 */   addiu     $v0, $zero, 0x760
/* 6AAF8 80026818 08009A0A */  j          .L80026828
/* 6AAFC 8002681C AE220000 */   sw        $v0, ($s1)
.L80026820:
/* 6AB00 80026820 04620001 */  bltzl      $v1, .L80026828
/* 6AB04 80026824 AE200000 */   sw        $zero, ($s1)
.L80026828:
/* 6AB08 80026828 8E350008 */  lw         $s5, 8($s1)
/* 6AB0C 8002682C 8E230000 */  lw         $v1, ($s1)
/* 6AB10 80026830 8E320004 */  lw         $s2, 4($s1)
/* 6AB14 80026834 001510C0 */  sll        $v0, $s5, 3
/* 6AB18 80026838 00431021 */  addu       $v0, $v0, $v1
/* 6AB1C 8002683C 00521021 */  addu       $v0, $v0, $s2
/* 6AB20 80026840 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 6AB24 80026844 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 6AB28 80026848 02221021 */  addu       $v0, $s1, $v0
/* 6AB2C 8002684C 9050000C */  lbu        $s0, 0xc($v0)
/* 6AB30 80026850 30620008 */  andi       $v0, $v1, 8
/* 6AB34 80026854 0002102B */  sltu       $v0, $zero, $v0
/* 6AB38 80026858 02028021 */  addu       $s0, $s0, $v0
/* 6AB3C 8002685C 30630004 */  andi       $v1, $v1, 4
/* 6AB40 80026860 0003182B */  sltu       $v1, $zero, $v1
/* 6AB44 80026864 02038023 */  subu       $s0, $s0, $v1
/* 6AB48 80026868 2A020100 */  slti       $v0, $s0, 0x100
/* 6AB4C 8002686C 14400003 */  bnez       $v0, .L8002687C
/* 6AB50 80026870 00000000 */   nop
/* 6AB54 80026874 08009A21 */  j          .L80026884
/* 6AB58 80026878 2610FF00 */   addiu     $s0, $s0, -0x100
.L8002687C:
/* 6AB5C 8002687C 06020001 */  bltzl      $s0, .L80026884
/* 6AB60 80026880 26100100 */   addiu     $s0, $s0, 0x100
.L80026884:
/* 6AB64 80026884 8E220000 */  lw         $v0, ($s1)
/* 6AB68 80026888 001518C0 */  sll        $v1, $s5, 3
/* 6AB6C 8002688C 00621821 */  addu       $v1, $v1, $v0
/* 6AB70 80026890 00721821 */  addu       $v1, $v1, $s2
/* 6AB74 80026894 02231821 */  addu       $v1, $s1, $v1
/* 6AB78 80026898 A070000C */  sb         $s0, 0xc($v1)
/* 6AB7C 8002689C 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 6AB80 800268A0 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 6AB84 800268A4 30421000 */  andi       $v0, $v0, 0x1000
/* 6AB88 800268A8 10400006 */  beqz       $v0, .L800268C4
/* 6AB8C 800268AC 240307FF */   addiu     $v1, $zero, 0x7ff
/* 6AB90 800268B0 262207FF */  addiu      $v0, $s1, 0x7ff
.L800268B4:
/* 6AB94 800268B4 A040000C */  sb         $zero, 0xc($v0)
/* 6AB98 800268B8 2463FFFF */  addiu      $v1, $v1, -1
/* 6AB9C 800268BC 0461FFFD */  bgez       $v1, .L800268B4
/* 6ABA0 800268C0 2442FFFF */   addiu     $v0, $v0, -1
.L800268C4:
/* 6ABA4 800268C4 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* 6ABA8 800268C8 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* 6ABAC 800268CC 30620020 */  andi       $v0, $v1, 0x20
/* 6ABB0 800268D0 10400006 */  beqz       $v0, .L800268EC
/* 6ABB4 800268D4 00002021 */   addu      $a0, $zero, $zero
/* 6ABB8 800268D8 2625000C */  addiu      $a1, $s1, 0xc
/* 6ABBC 800268DC 0C02A98A */  jal        func_800AA628
/* 6ABC0 800268E0 24060800 */   addiu     $a2, $zero, 0x800
/* 6ABC4 800268E4 08009A46 */  j          .L80026918
/* 6ABC8 800268E8 0000A821 */   addu      $s5, $zero, $zero
.L800268EC:
/* 6ABCC 800268EC 30620010 */  andi       $v0, $v1, 0x10
/* 6ABD0 800268F0 10400008 */  beqz       $v0, .L80026914
/* 6ABD4 800268F4 2630000C */   addiu     $s0, $s1, 0xc
/* 6ABD8 800268F8 02002821 */  addu       $a1, $s0, $zero
/* 6ABDC 800268FC 0C02A9C4 */  jal        func_800AA710
/* 6ABE0 80026900 24060800 */   addiu     $a2, $zero, 0x800
/* 6ABE4 80026904 00002021 */  addu       $a0, $zero, $zero
/* 6ABE8 80026908 02002821 */  addu       $a1, $s0, $zero
/* 6ABEC 8002690C 0C02A9FE */  jal        func_800AA7F8
/* 6ABF0 80026910 24060800 */   addiu     $a2, $zero, 0x800
.L80026914:
/* 6ABF4 80026914 0000A821 */  addu       $s5, $zero, $zero
.L80026918:
/* 6ABF8 80026918 3C148017 */  lui        $s4, %hi(D_8016D178)
/* 6ABFC 8002691C 2694D178 */  addiu      $s4, $s4, %lo(D_8016D178)
/* 6AC00 80026920 24130006 */  addiu      $s3, $zero, 6
/* 6AC04 80026924 0000B021 */  addu       $s6, $zero, $zero
.L80026928:
/* 6AC08 80026928 02802021 */  addu       $a0, $s4, $zero
/* 6AC0C 8002692C 3C058003 */  lui        $a1, %hi(D_8002FBFC_73EDC)
/* 6AC10 80026930 24A5FBFC */  addiu      $a1, $a1, %lo(D_8002FBFC_73EDC)
/* 6AC14 80026934 00009021 */  addu       $s2, $zero, $zero
/* 6AC18 80026938 2407000C */  addiu      $a3, $zero, 0xc
/* 6AC1C 8002693C AFA70014 */  sw         $a3, 0x14($sp)
/* 6AC20 80026940 8E260000 */  lw         $a2, ($s1)
/* 6AC24 80026944 241E0001 */  addiu      $fp, $zero, 1
/* 6AC28 80026948 2417000A */  addiu      $s7, $zero, 0xa
/* 6AC2C 8002694C 0C030180 */  jal        func_800C0600
/* 6AC30 80026950 00D63021 */   addu      $a2, $a2, $s6
/* 6AC34 80026954 00002021 */  addu       $a0, $zero, $zero
/* 6AC38 80026958 0C02DAC0 */  jal        func_800B6B00
/* 6AC3C 8002695C 24050002 */   addiu     $a1, $zero, 2
/* 6AC40 80026960 00002021 */  addu       $a0, $zero, $zero
/* 6AC44 80026964 24050005 */  addiu      $a1, $zero, 5
/* 6AC48 80026968 0C02DAE0 */  jal        func_800B6B80
/* 6AC4C 8002696C 02603021 */   addu      $a2, $s3, $zero
/* 6AC50 80026970 00002021 */  addu       $a0, $zero, $zero
/* 6AC54 80026974 0C02DA9C */  jal        func_800B6A70
/* 6AC58 80026978 02802821 */   addu      $a1, $s4, $zero
.L8002697C:
/* 6AC5C 8002697C 8E220000 */  lw         $v0, ($s1)
/* 6AC60 80026980 8E230004 */  lw         $v1, 4($s1)
/* 6AC64 80026984 02C21021 */  addu       $v0, $s6, $v0
/* 6AC68 80026988 00521021 */  addu       $v0, $v0, $s2
/* 6AC6C 8002698C 02221021 */  addu       $v0, $s1, $v0
/* 6AC70 80026990 9050000C */  lbu        $s0, 0xc($v0)
/* 6AC74 80026994 14720007 */  bne        $v1, $s2, .L800269B4
/* 6AC78 80026998 00002021 */   addu      $a0, $zero, $zero
/* 6AC7C 8002699C 8E220008 */  lw         $v0, 8($s1)
/* 6AC80 800269A0 54550005 */  bnel       $v0, $s5, .L800269B8
/* 6AC84 800269A4 24050007 */   addiu     $a1, $zero, 7
/* 6AC88 800269A8 00002021 */  addu       $a0, $zero, $zero
/* 6AC8C 800269AC 08009A6E */  j          .L800269B8
/* 6AC90 800269B0 24050004 */   addiu     $a1, $zero, 4
.L800269B4:
/* 6AC94 800269B4 24050007 */  addiu      $a1, $zero, 7
.L800269B8:
/* 6AC98 800269B8 0C02DAC0 */  jal        func_800B6B00
/* 6AC9C 800269BC 00000000 */   nop
/* 6ACA0 800269C0 02802021 */  addu       $a0, $s4, $zero
/* 6ACA4 800269C4 3C058003 */  lui        $a1, %hi(D_8002FC1C_73EFC)
/* 6ACA8 800269C8 24A5FC1C */  addiu      $a1, $a1, %lo(D_8002FC1C_73EFC)
/* 6ACAC 800269CC 0C030180 */  jal        func_800C0600
/* 6ACB0 800269D0 02003021 */   addu      $a2, $s0, $zero
/* 6ACB4 800269D4 00002021 */  addu       $a0, $zero, $zero
/* 6ACB8 800269D8 02E02821 */  addu       $a1, $s7, $zero
/* 6ACBC 800269DC 0C02DAE0 */  jal        func_800B6B80
/* 6ACC0 800269E0 02603021 */   addu      $a2, $s3, $zero
/* 6ACC4 800269E4 00002021 */  addu       $a0, $zero, $zero
/* 6ACC8 800269E8 0C02DA9C */  jal        func_800B6A70
/* 6ACCC 800269EC 02802821 */   addu      $a1, $s4, $zero
/* 6ACD0 800269F0 2602FFE0 */  addiu      $v0, $s0, -0x20
/* 6ACD4 800269F4 2C420060 */  sltiu      $v0, $v0, 0x60
/* 6ACD8 800269F8 50400001 */  beql       $v0, $zero, .L80026A00
/* 6ACDC 800269FC 2410002E */   addiu     $s0, $zero, 0x2e
.L80026A00:
/* 6ACE0 80026A00 02802021 */  addu       $a0, $s4, $zero
/* 6ACE4 80026A04 3C058003 */  lui        $a1, %hi(D_8002FC24_73F04)
/* 6ACE8 80026A08 24A5FC24 */  addiu      $a1, $a1, %lo(D_8002FC24_73F04)
/* 6ACEC 80026A0C 0C030180 */  jal        func_800C0600
/* 6ACF0 80026A10 02003021 */   addu      $a2, $s0, $zero
/* 6ACF4 80026A14 00002021 */  addu       $a0, $zero, $zero
/* 6ACF8 80026A18 2645001B */  addiu      $a1, $s2, 0x1b
/* 6ACFC 80026A1C 0C02DAE0 */  jal        func_800B6B80
/* 6AD00 80026A20 02603021 */   addu      $a2, $s3, $zero
/* 6AD04 80026A24 00002021 */  addu       $a0, $zero, $zero
/* 6AD08 80026A28 0C02DA9C */  jal        func_800B6A70
/* 6AD0C 80026A2C 02802821 */   addu      $a1, $s4, $zero
/* 6AD10 80026A30 8E220000 */  lw         $v0, ($s1)
/* 6AD14 80026A34 8E230004 */  lw         $v1, 4($s1)
/* 6AD18 80026A38 02C21021 */  addu       $v0, $s6, $v0
/* 6AD1C 80026A3C 00521021 */  addu       $v0, $v0, $s2
/* 6AD20 80026A40 02221021 */  addu       $v0, $s1, $v0
/* 6AD24 80026A44 9050000D */  lbu        $s0, 0xd($v0)
/* 6AD28 80026A48 147E0007 */  bne        $v1, $fp, .L80026A68
/* 6AD2C 80026A4C 00002021 */   addu      $a0, $zero, $zero
/* 6AD30 80026A50 8E220008 */  lw         $v0, 8($s1)
/* 6AD34 80026A54 54550005 */  bnel       $v0, $s5, .L80026A6C
/* 6AD38 80026A58 24050006 */   addiu     $a1, $zero, 6
/* 6AD3C 80026A5C 00002021 */  addu       $a0, $zero, $zero
/* 6AD40 80026A60 08009A9B */  j          .L80026A6C
/* 6AD44 80026A64 24050004 */   addiu     $a1, $zero, 4
.L80026A68:
/* 6AD48 80026A68 24050006 */  addiu      $a1, $zero, 6
.L80026A6C:
/* 6AD4C 80026A6C 0C02DAC0 */  jal        func_800B6B00
/* 6AD50 80026A70 00000000 */   nop
/* 6AD54 80026A74 02802021 */  addu       $a0, $s4, $zero
/* 6AD58 80026A78 3C058003 */  lui        $a1, %hi(D_8002FC1C_73EFC)
/* 6AD5C 80026A7C 24A5FC1C */  addiu      $a1, $a1, %lo(D_8002FC1C_73EFC)
/* 6AD60 80026A80 0C030180 */  jal        func_800C0600
/* 6AD64 80026A84 02003021 */   addu      $a2, $s0, $zero
/* 6AD68 80026A88 8FA50014 */  lw         $a1, 0x14($sp)
/* 6AD6C 80026A8C 00002021 */  addu       $a0, $zero, $zero
/* 6AD70 80026A90 0C02DAE0 */  jal        func_800B6B80
/* 6AD74 80026A94 02603021 */   addu      $a2, $s3, $zero
/* 6AD78 80026A98 00002021 */  addu       $a0, $zero, $zero
/* 6AD7C 80026A9C 0C02DA9C */  jal        func_800B6A70
/* 6AD80 80026AA0 02802821 */   addu      $a1, $s4, $zero
/* 6AD84 80026AA4 2602FFE0 */  addiu      $v0, $s0, -0x20
/* 6AD88 80026AA8 2C420060 */  sltiu      $v0, $v0, 0x60
/* 6AD8C 80026AAC 50400001 */  beql       $v0, $zero, .L80026AB4
/* 6AD90 80026AB0 2410002E */   addiu     $s0, $zero, 0x2e
.L80026AB4:
/* 6AD94 80026AB4 02802021 */  addu       $a0, $s4, $zero
/* 6AD98 80026AB8 3C058003 */  lui        $a1, %hi(D_8002FC24_73F04)
/* 6AD9C 80026ABC 24A5FC24 */  addiu      $a1, $a1, %lo(D_8002FC24_73F04)
/* 6ADA0 80026AC0 0C030180 */  jal        func_800C0600
/* 6ADA4 80026AC4 02003021 */   addu      $a2, $s0, $zero
/* 6ADA8 80026AC8 00002021 */  addu       $a0, $zero, $zero
/* 6ADAC 80026ACC 2645001C */  addiu      $a1, $s2, 0x1c
/* 6ADB0 80026AD0 0C02DAE0 */  jal        func_800B6B80
/* 6ADB4 80026AD4 02603021 */   addu      $a2, $s3, $zero
/* 6ADB8 80026AD8 00002021 */  addu       $a0, $zero, $zero
/* 6ADBC 80026ADC 0C02DA9C */  jal        func_800B6A70
/* 6ADC0 80026AE0 02802821 */   addu      $a1, $s4, $zero
/* 6ADC4 80026AE4 8FA70014 */  lw         $a3, 0x14($sp)
/* 6ADC8 80026AE8 27DE0002 */  addiu      $fp, $fp, 2
/* 6ADCC 80026AEC 26F70004 */  addiu      $s7, $s7, 4
/* 6ADD0 80026AF0 26520002 */  addiu      $s2, $s2, 2
/* 6ADD4 80026AF4 2A420008 */  slti       $v0, $s2, 8
/* 6ADD8 80026AF8 24E70004 */  addiu      $a3, $a3, 4
/* 6ADDC 80026AFC 1440FF9F */  bnez       $v0, .L8002697C
/* 6ADE0 80026B00 AFA70014 */   sw        $a3, 0x14($sp)
/* 6ADE4 80026B04 26730001 */  addiu      $s3, $s3, 1
/* 6ADE8 80026B08 26B50001 */  addiu      $s5, $s5, 1
/* 6ADEC 80026B0C 2AA20014 */  slti       $v0, $s5, 0x14
/* 6ADF0 80026B10 1440FF85 */  bnez       $v0, .L80026928
/* 6ADF4 80026B14 26D60008 */   addiu     $s6, $s6, 8
/* 6ADF8 80026B18 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 6ADFC 80026B1C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 6AE00 80026B20 30424000 */  andi       $v0, $v0, 0x4000
/* 6AE04 80026B24 0002102B */  sltu       $v0, $zero, $v0
/* 6AE08 80026B28 00021023 */  negu       $v0, $v0
/* 6AE0C 80026B2C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 6AE10 80026B30 8FBE0038 */  lw         $fp, 0x38($sp)
/* 6AE14 80026B34 8FB70034 */  lw         $s7, 0x34($sp)
/* 6AE18 80026B38 8FB60030 */  lw         $s6, 0x30($sp)
/* 6AE1C 80026B3C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 6AE20 80026B40 8FB40028 */  lw         $s4, 0x28($sp)
/* 6AE24 80026B44 8FB30024 */  lw         $s3, 0x24($sp)
/* 6AE28 80026B48 8FB20020 */  lw         $s2, 0x20($sp)
/* 6AE2C 80026B4C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6AE30 80026B50 8FB00018 */  lw         $s0, 0x18($sp)
/* 6AE34 80026B54 03E00008 */  jr         $ra
/* 6AE38 80026B58 27BD0040 */   addiu     $sp, $sp, 0x40
/* 6AE3C 80026B5C 00000000 */  nop
