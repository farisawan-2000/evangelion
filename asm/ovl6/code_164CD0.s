.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003AF70_164CD0
/* 164CD0 8003AF70 3C028005 */  lui        $v0, %hi(D_8004ACA0)
/* 164CD4 8003AF74 9042ACA0 */  lbu        $v0, %lo(D_8004ACA0)($v0)
/* 164CD8 8003AF78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 164CDC 8003AF7C 10400019 */  beqz       $v0, .L8003AFE4
/* 164CE0 8003AF80 AFBF0010 */   sw        $ra, 0x10($sp)
/* 164CE4 8003AF84 0C00E9CD */  jal        func_8003A734_164494
/* 164CE8 8003AF88 00000000 */   nop
/* 164CEC 8003AF8C 3C018005 */  lui        $at, %hi(D_8004BE40)
/* 164CF0 8003AF90 AC22BE40 */  sw         $v0, %lo(D_8004BE40)($at)
/* 164CF4 8003AF94 0C02A5D2 */  jal        func_800A9748
/* 164CF8 8003AF98 24040001 */   addiu     $a0, $zero, 1
/* 164CFC 8003AF9C 3C018005 */  lui        $at, %hi(D_8004ACA0)
/* 164D00 8003AFA0 A020ACA0 */  sb         $zero, %lo(D_8004ACA0)($at)
/* 164D04 8003AFA4 0C00A61E */  jal        func_80029878_1535D8
/* 164D08 8003AFA8 24040013 */   addiu     $a0, $zero, 0x13
/* 164D0C 8003AFAC 0C00F5FF */  jal        func_8003D7FC_16755C
/* 164D10 8003AFB0 00000000 */   nop
/* 164D14 8003AFB4 0C00F60B */  jal        func_8003D82C_16758C
/* 164D18 8003AFB8 00000000 */   nop
/* 164D1C 8003AFBC 3C048004 */  lui        $a0, %hi(D_8003D878_1675D8)
/* 164D20 8003AFC0 2484D878 */  addiu      $a0, $a0, %lo(D_8003D878_1675D8)
/* 164D24 8003AFC4 00002821 */  addu       $a1, $zero, $zero
/* 164D28 8003AFC8 3406FFFF */  ori        $a2, $zero, 0xffff
/* 164D2C 8003AFCC 0C025D06 */  jal        func_80097418
/* 164D30 8003AFD0 24070001 */   addiu     $a3, $zero, 1
/* 164D34 8003AFD4 24020001 */  addiu      $v0, $zero, 1
/* 164D38 8003AFD8 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 164D3C 8003AFDC 0C02A7E0 */  jal        func_800A9F80
/* 164D40 8003AFE0 AC229BBC */   sw        $v0, %lo(D_80149BBC)($at)
.L8003AFE4:
/* 164D44 8003AFE4 3C048005 */  lui        $a0, %hi(D_8004BE40)
/* 164D48 8003AFE8 0C00EB3B */  jal        func_8003ACEC_164A4C
/* 164D4C 8003AFEC 8C84BE40 */   lw        $a0, %lo(D_8004BE40)($a0)
/* 164D50 8003AFF0 0C0097E9 */  jal        func_80025FA4_14FD04
/* 164D54 8003AFF4 00000000 */   nop
/* 164D58 8003AFF8 3C038005 */  lui        $v1, %hi(D_8004BE40)
/* 164D5C 8003AFFC 8C63BE40 */  lw         $v1, %lo(D_8004BE40)($v1)
/* 164D60 8003B000 90640247 */  lbu        $a0, 0x247($v1)
/* 164D64 8003B004 24020008 */  addiu      $v0, $zero, 8
/* 164D68 8003B008 10820007 */  beq        $a0, $v0, .L8003B028
/* 164D6C 8003B00C 00000000 */   nop
/* 164D70 8003B010 80620246 */  lb         $v0, 0x246($v1)
/* 164D74 8003B014 00821025 */  or         $v0, $a0, $v0
/* 164D78 8003B018 54400018 */  bnezl      $v0, .L8003B07C
/* 164D7C 8003B01C 00001021 */   addu      $v0, $zero, $zero
/* 164D80 8003B020 0800EC0F */  j          .L8003B03C
/* 164D84 8003B024 00000000 */   nop
.L8003B028:
/* 164D88 8003B028 3C028004 */  lui        $v0, %hi(D_800403F0)
/* 164D8C 8003B02C 244203F0 */  addiu      $v0, $v0, %lo(D_800403F0)
/* 164D90 8003B030 3C018005 */  lui        $at, %hi(D_8004C45C)
/* 164D94 8003B034 0800EC16 */  j          .L8003B058
/* 164D98 8003B038 AC22C45C */   sw        $v0, %lo(D_8004C45C)($at)
.L8003B03C:
/* 164D9C 8003B03C 3C028004 */  lui        $v0, %hi(D_800408F0)
/* 164DA0 8003B040 244208F0 */  addiu      $v0, $v0, %lo(D_800408F0)
/* 164DA4 8003B044 3C018005 */  lui        $at, %hi(D_8004C45C)
/* 164DA8 8003B048 AC22C45C */  sw         $v0, %lo(D_8004C45C)($at)
/* 164DAC 8003B04C 2402FFFF */  addiu      $v0, $zero, -1
/* 164DB0 8003B050 3C018005 */  lui        $at, %hi(D_8004ACB0)
/* 164DB4 8003B054 AC22ACB0 */  sw         $v0, %lo(D_8004ACB0)($at)
.L8003B058:
/* 164DB8 8003B058 3C048005 */  lui        $a0, %hi(D_8004BE40)
/* 164DBC 8003B05C 8C84BE40 */  lw         $a0, %lo(D_8004BE40)($a0)
/* 164DC0 8003B060 24020001 */  addiu      $v0, $zero, 1
/* 164DC4 8003B064 3C018005 */  lui        $at, %hi(D_8004ACA0)
/* 164DC8 8003B068 0C00E9A4 */  jal        func_8003A690_1643F0
/* 164DCC 8003B06C A022ACA0 */   sb        $v0, %lo(D_8004ACA0)($at)
/* 164DD0 8003B070 0C00A631 */  jal        func_800298C4_153624
/* 164DD4 8003B074 00000000 */   nop
/* 164DD8 8003B078 24020001 */  addiu      $v0, $zero, 1
.L8003B07C:
/* 164DDC 8003B07C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 164DE0 8003B080 03E00008 */  jr         $ra
/* 164DE4 8003B084 27BD0018 */   addiu     $sp, $sp, 0x18
/* 164DE8 8003B088 00000000 */  nop
/* 164DEC 8003B08C 00000000 */  nop