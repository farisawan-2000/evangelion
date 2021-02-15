.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9DEC
/* 149EC 800A9DEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 149F0 800A9DF0 00002021 */  addu       $a0, $zero, $zero
/* 149F4 800A9DF4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 149F8 800A9DF8 0C02DAC0 */  jal        func_800B6B00
/* 149FC 800A9DFC 2405000C */   addiu     $a1, $zero, 0xc
/* 14A00 800A9E00 00002021 */  addu       $a0, $zero, $zero
/* 14A04 800A9E04 2405000A */  addiu      $a1, $zero, 0xa
/* 14A08 800A9E08 0C02DAE0 */  jal        func_800B6B80
/* 14A0C 800A9E0C 2406000F */   addiu     $a2, $zero, 0xf
/* 14A10 800A9E10 3C058010 */  lui        $a1, %hi(D_800FB138)
/* 14A14 800A9E14 24A5B138 */  addiu      $a1, $a1, %lo(D_800FB138)
/* 14A18 800A9E18 0C02DA9C */  jal        func_800B6A70
/* 14A1C 800A9E1C 00002021 */   addu      $a0, $zero, $zero
/* 14A20 800A9E20 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* 14A24 800A9E24 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* 14A28 800A9E28 30628000 */  andi       $v0, $v1, 0x8000
/* 14A2C 800A9E2C 14400003 */  bnez       $v0, .L800A9E3C
/* 14A30 800A9E30 2402FFFF */   addiu     $v0, $zero, -1
/* 14A34 800A9E34 30624000 */  andi       $v0, $v1, 0x4000
/* 14A38 800A9E38 0002102B */  sltu       $v0, $zero, $v0
.L800A9E3C:
/* 14A3C 800A9E3C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14A40 800A9E40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 14A44 800A9E44 03E00008 */  jr         $ra
/* 14A48 800A9E48 00000000 */   nop
