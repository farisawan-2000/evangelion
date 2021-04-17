.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003F3C0_18EE00
/* 18EE00 8003F3C0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18EE04 8003F3C4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18EE08 8003F3C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18EE0C 8003F3CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 18EE10 8003F3D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 18EE14 8003F3D4 8C42002C */  lw         $v0, 0x2c($v0)
/* 18EE18 8003F3D8 8C420000 */  lw         $v0, ($v0)
/* 18EE1C 8003F3DC 8C440008 */  lw         $a0, 8($v0)
/* 18EE20 8003F3E0 94830012 */  lhu        $v1, 0x12($a0)
/* 18EE24 8003F3E4 24620001 */  addiu      $v0, $v1, 1
/* 18EE28 8003F3E8 00401821 */  addu       $v1, $v0, $zero
/* 18EE2C 8003F3EC 00021400 */  sll        $v0, $v0, 0x10
/* 18EE30 8003F3F0 00021403 */  sra        $v0, $v0, 0x10
/* 18EE34 8003F3F4 28420281 */  slti       $v0, $v0, 0x281
/* 18EE38 8003F3F8 50400001 */  beql       $v0, $zero, .L8003F400
/* 18EE3C 8003F3FC 24030280 */   addiu     $v1, $zero, 0x280
.L8003F400:
/* 18EE40 8003F400 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18EE44 8003F404 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18EE48 8003F408 14400017 */  bnez       $v0, .L8003F468
/* 18EE4C 8003F40C A4830012 */   sh        $v1, 0x12($a0)
/* 18EE50 8003F410 24050010 */  addiu      $a1, $zero, 0x10
/* 18EE54 8003F414 24060030 */  addiu      $a2, $zero, 0x30
/* 18EE58 8003F418 3C048005 */  lui        $a0, %hi(D_8005200C)
/* 18EE5C 8003F41C 8C84200C */  lw         $a0, %lo(D_8005200C)($a0)
/* 18EE60 8003F420 24070130 */  addiu      $a3, $zero, 0x130
/* 18EE64 8003F424 241000C0 */  addiu      $s0, $zero, 0xc0
/* 18EE68 8003F428 0C02939C */  jal        func_800A4E70
/* 18EE6C 8003F42C AFB00010 */   sw        $s0, 0x10($sp)
/* 18EE70 8003F430 24050010 */  addiu      $a1, $zero, 0x10
/* 18EE74 8003F434 3C048005 */  lui        $a0, %hi(D_80052094)
/* 18EE78 8003F438 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 18EE7C 8003F43C 24060030 */  addiu      $a2, $zero, 0x30
/* 18EE80 8003F440 24070130 */  addiu      $a3, $zero, 0x130
/* 18EE84 8003F444 0C02939C */  jal        func_800A4E70
/* 18EE88 8003F448 AFB00010 */   sw        $s0, 0x10($sp)
/* 18EE8C 8003F44C 240400AB */  addiu      $a0, $zero, 0xab
/* 18EE90 8003F450 24050080 */  addiu      $a1, $zero, 0x80
/* 18EE94 8003F454 24060080 */  addiu      $a2, $zero, 0x80
/* 18EE98 8003F458 24070001 */  addiu      $a3, $zero, 1
/* 18EE9C 8003F45C 24020062 */  addiu      $v0, $zero, 0x62
/* 18EEA0 8003F460 0C026E0C */  jal        func_8009B830
/* 18EEA4 8003F464 AFA20010 */   sw        $v0, 0x10($sp)
.L8003F468:
/* 18EEA8 8003F468 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18EEAC 8003F46C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18EEB0 8003F470 240201E0 */  addiu      $v0, $zero, 0x1e0
/* 18EEB4 8003F474 14620004 */  bne        $v1, $v0, .L8003F488
/* 18EEB8 8003F478 240401E0 */   addiu     $a0, $zero, 0x1e0
/* 18EEBC 8003F47C 0C026E5D */  jal        func_8009B974
/* 18EEC0 8003F480 24040078 */   addiu     $a0, $zero, 0x78
/* 18EEC4 8003F484 240401E0 */  addiu      $a0, $zero, 0x1e0
.L8003F488:
/* 18EEC8 8003F488 24050001 */  addiu      $a1, $zero, 1
/* 18EECC 8003F48C 0C009EE4 */  jal        func_80027B90_1775D0
/* 18EED0 8003F490 00003021 */   addu      $a2, $zero, $zero
/* 18EED4 8003F494 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18EED8 8003F498 8FB00018 */  lw         $s0, 0x18($sp)
/* 18EEDC 8003F49C 03E00008 */  jr         $ra
/* 18EEE0 8003F4A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F4A4_18EEE4
/* 18EEE4 8003F4A4 3C028005 */  lui        $v0, %hi(D_8004FB4C_19F58C)
/* 18EEE8 8003F4A8 9042FB4C */  lbu        $v0, %lo(D_8004FB4C_19F58C)($v0)
/* 18EEEC 8003F4AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18EEF0 8003F4B0 10400019 */  beqz       $v0, .L8003F518
/* 18EEF4 8003F4B4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 18EEF8 8003F4B8 0C009758 */  jal        func_80025D60_1757A0
/* 18EEFC 8003F4BC 00000000 */   nop
/* 18EF00 8003F4C0 0C02A5D2 */  jal        func_800A9748
/* 18EF04 8003F4C4 24040001 */   addiu     $a0, $zero, 1
/* 18EF08 8003F4C8 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 18EF0C 8003F4CC 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 18EF10 8003F4D0 24020002 */  addiu      $v0, $zero, 2
/* 18EF14 8003F4D4 3C018005 */  lui        $at, %hi(D_80052061)
/* 18EF18 8003F4D8 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 18EF1C 8003F4DC 24020001 */  addiu      $v0, $zero, 1
/* 18EF20 8003F4E0 3C018005 */  lui        $at, %hi(D_80052006)
/* 18EF24 8003F4E4 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 18EF28 8003F4E8 3C028005 */  lui        $v0, %hi(D_8004FB1C_19F55C)
/* 18EF2C 8003F4EC 2442FB1C */  addiu      $v0, $v0, %lo(D_8004FB1C_19F55C)
/* 18EF30 8003F4F0 00002821 */  addu       $a1, $zero, $zero
/* 18EF34 8003F4F4 2406012C */  addiu      $a2, $zero, 0x12c
/* 18EF38 8003F4F8 3C018005 */  lui        $at, %hi(D_8004FB4C_19F58C)
/* 18EF3C 8003F4FC A020FB4C */  sb         $zero, %lo(D_8004FB4C_19F58C)($at)
/* 18EF40 8003F500 3C018005 */  lui        $at, %hi(D_80052060)
/* 18EF44 8003F504 A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 18EF48 8003F508 3C018005 */  lui        $at, %hi(D_80052000)
/* 18EF4C 8003F50C AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 18EF50 8003F510 0C025D06 */  jal        func_80097418
/* 18EF54 8003F514 00003821 */   addu      $a3, $zero, $zero
.L8003F518:
/* 18EF58 8003F518 3C038005 */  lui        $v1, %hi(D_80052060)
/* 18EF5C 8003F51C 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 18EF60 8003F520 24020001 */  addiu      $v0, $zero, 1
/* 18EF64 8003F524 14620005 */  bne        $v1, $v0, .L8003F53C
/* 18EF68 8003F528 00001021 */   addu      $v0, $zero, $zero
/* 18EF6C 8003F52C 24020001 */  addiu      $v0, $zero, 1
/* 18EF70 8003F530 3C018005 */  lui        $at, %hi(D_8004FB4C_19F58C)
/* 18EF74 8003F534 A022FB4C */  sb         $v0, %lo(D_8004FB4C_19F58C)($at)
/* 18EF78 8003F538 24020001 */  addiu      $v0, $zero, 1
.L8003F53C:
/* 18EF7C 8003F53C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18EF80 8003F540 03E00008 */  jr         $ra
/* 18EF84 8003F544 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18EF88 8003F548 00000000 */  nop
/* 18EF8C 8003F54C 00000000 */  nop
