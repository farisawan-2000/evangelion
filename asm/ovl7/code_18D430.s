.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003D9F0_18D430
/* 18D430 8003D9F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18D434 8003D9F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 18D438 8003D9F8 3C108005 */  lui        $s0, %hi(D_8004D9C0)
/* 18D43C 8003D9FC 9210D9C0 */  lbu        $s0, %lo(D_8004D9C0)($s0)
/* 18D440 8003DA00 24020001 */  addiu      $v0, $zero, 1
/* 18D444 8003DA04 16020042 */  bne        $s0, $v0, .L8003DB10
/* 18D448 8003DA08 AFBF001C */   sw        $ra, 0x1c($sp)
/* 18D44C 8003DA0C 0C009758 */  jal        func_80025D60_1757A0
/* 18D450 8003DA10 00000000 */   nop
/* 18D454 8003DA14 0C02A5D2 */  jal        func_800A9748
/* 18D458 8003DA18 24040001 */   addiu     $a0, $zero, 1
/* 18D45C 8003DA1C 3C038015 */  lui        $v1, %hi(D_80149E28)
/* 18D460 8003DA20 90639E28 */  lbu        $v1, %lo(D_80149E28)($v1)
/* 18D464 8003DA24 3C018005 */  lui        $at, %hi(D_8004D9C0)
/* 18D468 8003DA28 A020D9C0 */  sb         $zero, %lo(D_8004D9C0)($at)
/* 18D46C 8003DA2C 3C018005 */  lui        $at, %hi(D_80052060)
/* 18D470 8003DA30 A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 18D474 8003DA34 3C018005 */  lui        $at, %hi(D_80052062)
/* 18D478 8003DA38 A0202062 */  sb         $zero, %lo(D_80052062)($at)
/* 18D47C 8003DA3C 10700013 */  beq        $v1, $s0, .L8003DA8C
/* 18D480 8003DA40 28620002 */   slti      $v0, $v1, 2
/* 18D484 8003DA44 50400005 */  beql       $v0, $zero, .L8003DA5C
/* 18D488 8003DA48 24020002 */   addiu     $v0, $zero, 2
/* 18D48C 8003DA4C 10600007 */  beqz       $v1, .L8003DA6C
/* 18D490 8003DA50 24040002 */   addiu     $a0, $zero, 2
/* 18D494 8003DA54 0800F6B6 */  j          .L8003DAD8
/* 18D498 8003DA58 2402FFFF */   addiu     $v0, $zero, -1
.L8003DA5C:
/* 18D49C 8003DA5C 10620014 */  beq        $v1, $v0, .L8003DAB0
/* 18D4A0 8003DA60 24040001 */   addiu     $a0, $zero, 1
/* 18D4A4 8003DA64 0800F6B6 */  j          .L8003DAD8
/* 18D4A8 8003DA68 2402FFFF */   addiu     $v0, $zero, -1
.L8003DA6C:
/* 18D4AC 8003DA6C 2405FFFF */  addiu      $a1, $zero, -1
/* 18D4B0 8003DA70 00003021 */  addu       $a2, $zero, $zero
/* 18D4B4 8003DA74 24070050 */  addiu      $a3, $zero, 0x50
/* 18D4B8 8003DA78 0C026C9A */  jal        func_8009B268
/* 18D4BC 8003DA7C AFA00010 */   sw        $zero, 0x10($sp)
/* 18D4C0 8003DA80 3C028005 */  lui        $v0, %hi(D_8004DDEC)
/* 18D4C4 8003DA84 0800F6B3 */  j          .L8003DACC
/* 18D4C8 8003DA88 2442DDEC */   addiu     $v0, $v0, %lo(D_8004DDEC)
.L8003DA8C:
/* 18D4CC 8003DA8C 24040003 */  addiu      $a0, $zero, 3
/* 18D4D0 8003DA90 2405FFFF */  addiu      $a1, $zero, -1
/* 18D4D4 8003DA94 00003021 */  addu       $a2, $zero, $zero
/* 18D4D8 8003DA98 24070050 */  addiu      $a3, $zero, 0x50
/* 18D4DC 8003DA9C 0C026C9A */  jal        func_8009B268
/* 18D4E0 8003DAA0 AFA00010 */   sw        $zero, 0x10($sp)
/* 18D4E4 8003DAA4 3C028005 */  lui        $v0, %hi(D_8004E13C)
/* 18D4E8 8003DAA8 0800F6B3 */  j          .L8003DACC
/* 18D4EC 8003DAAC 2442E13C */   addiu     $v0, $v0, %lo(D_8004E13C)
.L8003DAB0:
/* 18D4F0 8003DAB0 2405FFFF */  addiu      $a1, $zero, -1
/* 18D4F4 8003DAB4 00003021 */  addu       $a2, $zero, $zero
/* 18D4F8 8003DAB8 24070050 */  addiu      $a3, $zero, 0x50
/* 18D4FC 8003DABC 0C026C9A */  jal        func_8009B268
/* 18D500 8003DAC0 AFA00010 */   sw        $zero, 0x10($sp)
/* 18D504 8003DAC4 3C028005 */  lui        $v0, %hi(D_8004F7DC)
/* 18D508 8003DAC8 2442F7DC */  addiu      $v0, $v0, %lo(D_8004F7DC)
.L8003DACC:
/* 18D50C 8003DACC 3C018005 */  lui        $at, %hi(D_80052000)
/* 18D510 8003DAD0 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 18D514 8003DAD4 2402FFFF */  addiu      $v0, $zero, -1
.L8003DAD8:
/* 18D518 8003DAD8 3C018005 */  lui        $at, %hi(D_80052061)
/* 18D51C 8003DADC A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 18D520 8003DAE0 3C048004 */  lui        $a0, %hi(D_8003E454_18DE94)
/* 18D524 8003DAE4 2484E454 */  addiu      $a0, $a0, %lo(D_8003E454_18DE94)
/* 18D528 8003DAE8 00002821 */  addu       $a1, $zero, $zero
/* 18D52C 8003DAEC 2406012C */  addiu      $a2, $zero, 0x12c
/* 18D530 8003DAF0 0C025D06 */  jal        func_80097418
/* 18D534 8003DAF4 00003821 */   addu      $a3, $zero, $zero
/* 18D538 8003DAF8 3C048004 */  lui        $a0, %hi(func_8003D9A4_18D3E4)
/* 18D53C 8003DAFC 2484D9A4 */  addiu      $a0, $a0, %lo(func_8003D9A4_18D3E4)
/* 18D540 8003DB00 00002821 */  addu       $a1, $zero, $zero
/* 18D544 8003DB04 2406012C */  addiu      $a2, $zero, 0x12c
/* 18D548 8003DB08 0C025D06 */  jal        func_80097418
/* 18D54C 8003DB0C 00003821 */   addu      $a3, $zero, $zero
.L8003DB10:
/* 18D550 8003DB10 3C038005 */  lui        $v1, %hi(D_80052060)
/* 18D554 8003DB14 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 18D558 8003DB18 24020001 */  addiu      $v0, $zero, 1
/* 18D55C 8003DB1C 14620009 */  bne        $v1, $v0, .L8003DB44
/* 18D560 8003DB20 00001021 */   addu      $v0, $zero, $zero
/* 18D564 8003DB24 3C028005 */  lui        $v0, %hi(D_80052062)
/* 18D568 8003DB28 90422062 */  lbu        $v0, %lo(D_80052062)($v0)
/* 18D56C 8003DB2C 54430005 */  bnel       $v0, $v1, .L8003DB44
/* 18D570 8003DB30 00001021 */   addu      $v0, $zero, $zero
/* 18D574 8003DB34 24020001 */  addiu      $v0, $zero, 1
/* 18D578 8003DB38 3C018005 */  lui        $at, %hi(D_8004D9C0)
/* 18D57C 8003DB3C A022D9C0 */  sb         $v0, %lo(D_8004D9C0)($at)
/* 18D580 8003DB40 24020001 */  addiu      $v0, $zero, 1
.L8003DB44:
/* 18D584 8003DB44 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18D588 8003DB48 8FB00018 */  lw         $s0, 0x18($sp)
/* 18D58C 8003DB4C 03E00008 */  jr         $ra
/* 18D590 8003DB50 27BD0020 */   addiu     $sp, $sp, 0x20
/* 18D594 8003DB54 00000000 */  nop
/* 18D598 8003DB58 00000000 */  nop
/* 18D59C 8003DB5C 00000000 */  nop