.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80026DB0_6B090
/* 6B090 80026DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B094 80026DB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 6B098 80026DB8 00808021 */  addu       $s0, $a0, $zero
/* 6B09C 80026DBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B0A0 80026DC0 9603001C */  lhu        $v1, 0x1c($s0)
/* 6B0A4 80026DC4 24020001 */  addiu      $v0, $zero, 1
/* 6B0A8 80026DC8 10620018 */  beq        $v1, $v0, .L80026E2C
/* 6B0AC 80026DCC 28620002 */   slti      $v0, $v1, 2
/* 6B0B0 80026DD0 50400005 */  beql       $v0, $zero, .L80026DE8
/* 6B0B4 80026DD4 3402FFFF */   ori       $v0, $zero, 0xffff
/* 6B0B8 80026DD8 10600007 */  beqz       $v1, .L80026DF8
/* 6B0BC 80026DDC 00000000 */   nop
/* 6B0C0 80026DE0 08009B9C */  j          .L80026E70
/* 6B0C4 80026DE4 00000000 */   nop
.L80026DE8:
/* 6B0C8 80026DE8 1062001B */  beq        $v1, $v0, .L80026E58
/* 6B0CC 80026DEC 00000000 */   nop
/* 6B0D0 80026DF0 08009B9C */  j          .L80026E70
/* 6B0D4 80026DF4 00000000 */   nop
.L80026DF8:
/* 6B0D8 80026DF8 0C032663 */  jal        func_800C998C
/* 6B0DC 80026DFC 2404000C */   addiu     $a0, $zero, 0xc
/* 6B0E0 80026E00 00402021 */  addu       $a0, $v0, $zero
/* 6B0E4 80026E04 2405000C */  addiu      $a1, $zero, 0xc
/* 6B0E8 80026E08 0C030134 */  jal        bzero
/* 6B0EC 80026E0C AE040014 */   sw        $a0, 0x14($s0)
/* 6B0F0 80026E10 8E040014 */  lw         $a0, 0x14($s0)
/* 6B0F4 80026E14 0C009BA0 */  jal        func_80026E80_6B160
/* 6B0F8 80026E18 00000000 */   nop
/* 6B0FC 80026E1C 00001021 */  addu       $v0, $zero, $zero
/* 6B100 80026E20 24030001 */  addiu      $v1, $zero, 1
/* 6B104 80026E24 08009B9C */  j          .L80026E70
/* 6B108 80026E28 A603001C */   sh        $v1, 0x1c($s0)
.L80026E2C:
/* 6B10C 80026E2C 8E040014 */  lw         $a0, 0x14($s0)
/* 6B110 80026E30 0C009BCE */  jal        func_80026F38_6B218
/* 6B114 80026E34 00000000 */   nop
/* 6B118 80026E38 5040000D */  beql       $v0, $zero, .L80026E70
/* 6B11C 80026E3C 00001021 */   addu      $v0, $zero, $zero
/* 6B120 80026E40 0C02DB14 */  jal        func_800B6C50
/* 6B124 80026E44 00002021 */   addu      $a0, $zero, $zero
/* 6B128 80026E48 3402FFFF */  ori        $v0, $zero, 0xffff
/* 6B12C 80026E4C A602001C */  sh         $v0, 0x1c($s0)
/* 6B130 80026E50 08009B9C */  j          .L80026E70
/* 6B134 80026E54 00001021 */   addu      $v0, $zero, $zero
.L80026E58:
/* 6B138 80026E58 8E040014 */  lw         $a0, 0x14($s0)
/* 6B13C 80026E5C 0C009BBF */  jal        func_80026EFC_6B1DC
/* 6B140 80026E60 00000000 */   nop
/* 6B144 80026E64 0C0326A1 */  jal        func_800C9A84
/* 6B148 80026E68 8E040014 */   lw        $a0, 0x14($s0)
/* 6B14C 80026E6C 24020001 */  addiu      $v0, $zero, 1
.L80026E70:
/* 6B150 80026E70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B154 80026E74 8FB00010 */  lw         $s0, 0x10($sp)
/* 6B158 80026E78 03E00008 */  jr         $ra
/* 6B15C 80026E7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026E80_6B160
/* 6B160 80026E80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B164 80026E84 AFB00010 */  sw         $s0, 0x10($sp)
/* 6B168 80026E88 00808021 */  addu       $s0, $a0, $zero
/* 6B16C 80026E8C 24040005 */  addiu      $a0, $zero, 5
/* 6B170 80026E90 24050001 */  addiu      $a1, $zero, 1
/* 6B174 80026E94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B178 80026E98 0C028CB7 */  jal        func_800A32DC
/* 6B17C 80026E9C 00003021 */   addu      $a2, $zero, $zero
/* 6B180 80026EA0 2404003B */  addiu      $a0, $zero, 0x3b
/* 6B184 80026EA4 24050006 */  addiu      $a1, $zero, 6
/* 6B188 80026EA8 00003021 */  addu       $a2, $zero, $zero
/* 6B18C 80026EAC 0C028CB7 */  jal        func_800A32DC
/* 6B190 80026EB0 AE020000 */   sw        $v0, ($s0)
/* 6B194 80026EB4 8E040000 */  lw         $a0, ($s0)
/* 6B198 80026EB8 24050078 */  addiu      $a1, $zero, 0x78
/* 6B19C 80026EBC 24060024 */  addiu      $a2, $zero, 0x24
/* 6B1A0 80026EC0 0C028F9A */  jal        func_800A3E68
/* 6B1A4 80026EC4 AE020004 */   sw        $v0, 4($s0)
/* 6B1A8 80026EC8 8E020000 */  lw         $v0, ($s0)
/* 6B1AC 80026ECC 8C430000 */  lw         $v1, ($v0)
/* 6B1B0 80026ED0 24020060 */  addiu      $v0, $zero, 0x60
/* 6B1B4 80026ED4 A4620018 */  sh         $v0, 0x18($v1)
/* 6B1B8 80026ED8 8E020000 */  lw         $v0, ($s0)
/* 6B1BC 80026EDC 8C430000 */  lw         $v1, ($v0)
/* 6B1C0 80026EE0 24020058 */  addiu      $v0, $zero, 0x58
/* 6B1C4 80026EE4 A4620020 */  sh         $v0, 0x20($v1)
/* 6B1C8 80026EE8 AE000008 */  sw         $zero, 8($s0)
/* 6B1CC 80026EEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B1D0 80026EF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 6B1D4 80026EF4 03E00008 */  jr         $ra
/* 6B1D8 80026EF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026EFC_6B1DC
/* 6B1DC 80026EFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B1E0 80026F00 AFB00010 */  sw         $s0, 0x10($sp)
/* 6B1E4 80026F04 00808021 */  addu       $s0, $a0, $zero
/* 6B1E8 80026F08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B1EC 80026F0C 0C028D30 */  jal        func_800A34C0
/* 6B1F0 80026F10 8E040000 */   lw        $a0, ($s0)
/* 6B1F4 80026F14 0C028D30 */  jal        func_800A34C0
/* 6B1F8 80026F18 8E040004 */   lw        $a0, 4($s0)
/* 6B1FC 80026F1C 24020001 */  addiu      $v0, $zero, 1
/* 6B200 80026F20 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6B204 80026F24 A0220A30 */  sb         $v0, %lo(D_80030A30)($at)
/* 6B208 80026F28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B20C 80026F2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 6B210 80026F30 03E00008 */  jr         $ra
/* 6B214 80026F34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026F38_6B218
/* 6B218 80026F38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6B21C 80026F3C AFB00010 */  sw         $s0, 0x10($sp)
/* 6B220 80026F40 00808021 */  addu       $s0, $a0, $zero
/* 6B224 80026F44 00002021 */  addu       $a0, $zero, $zero
/* 6B228 80026F48 2405000E */  addiu      $a1, $zero, 0xe
/* 6B22C 80026F4C AFBF0018 */  sw         $ra, 0x18($sp)
/* 6B230 80026F50 0C02DAC0 */  jal        func_800B6B00
/* 6B234 80026F54 AFB10014 */   sw        $s1, 0x14($sp)
/* 6B238 80026F58 00002021 */  addu       $a0, $zero, $zero
/* 6B23C 80026F5C 2405000D */  addiu      $a1, $zero, 0xd
/* 6B240 80026F60 0C02DAE0 */  jal        func_800B6B80
/* 6B244 80026F64 24060004 */   addiu     $a2, $zero, 4
/* 6B248 80026F68 3C058003 */  lui        $a1, %hi(D_8002FC70_73F50)
/* 6B24C 80026F6C 24A5FC70 */  addiu      $a1, $a1, %lo(D_8002FC70_73F50)
/* 6B250 80026F70 0C02DA9C */  jal        func_800B6A70
/* 6B254 80026F74 00002021 */   addu      $a0, $zero, $zero
/* 6B258 80026F78 3C118015 */  lui        $s1, %hi(D_8014CF92)
/* 6B25C 80026F7C 2631CF92 */  addiu      $s1, $s1, %lo(D_8014CF92)
/* 6B260 80026F80 96220000 */  lhu        $v0, ($s1)
/* 6B264 80026F84 30428000 */  andi       $v0, $v0, 0x8000
/* 6B268 80026F88 10400004 */  beqz       $v0, .L80026F9C
/* 6B26C 80026F8C 00000000 */   nop
/* 6B270 80026F90 8E020008 */  lw         $v0, 8($s0)
/* 6B274 80026F94 38420001 */  xori       $v0, $v0, 1
/* 6B278 80026F98 AE020008 */  sw         $v0, 8($s0)
.L80026F9C:
/* 6B27C 80026F9C 8E020008 */  lw         $v0, 8($s0)
/* 6B280 80026FA0 00021080 */  sll        $v0, $v0, 2
/* 6B284 80026FA4 00501021 */  addu       $v0, $v0, $s0
/* 6B288 80026FA8 0C028A40 */  jal        func_800A2900
/* 6B28C 80026FAC 8C440000 */   lw        $a0, ($v0)
/* 6B290 80026FB0 96220000 */  lhu        $v0, ($s1)
/* 6B294 80026FB4 30424000 */  andi       $v0, $v0, 0x4000
/* 6B298 80026FB8 0002102B */  sltu       $v0, $zero, $v0
/* 6B29C 80026FBC 00021023 */  negu       $v0, $v0
/* 6B2A0 80026FC0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6B2A4 80026FC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 6B2A8 80026FC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 6B2AC 80026FCC 03E00008 */  jr         $ra
/* 6B2B0 80026FD0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 6B2B4 80026FD4 00000000 */  nop
/* 6B2B8 80026FD8 00000000 */  nop
/* 6B2BC 80026FDC 00000000 */  nop
