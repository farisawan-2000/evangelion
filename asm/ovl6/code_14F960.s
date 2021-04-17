.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025C00_14F960
/* 14F960 80025C00 3C038004 */  lui        $v1, %hi(D_800411A0_16AF00)
/* 14F964 80025C04 906311A0 */  lbu        $v1, %lo(D_800411A0_16AF00)($v1)
/* 14F968 80025C08 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 14F96C 80025C0C AFBF0098 */  sw         $ra, 0x98($sp)
/* 14F970 80025C10 AFB10094 */  sw         $s1, 0x94($sp)
/* 14F974 80025C14 2C620005 */  sltiu      $v0, $v1, 5
/* 14F978 80025C18 104000D2 */  beqz       $v0, .L80025F64
/* 14F97C 80025C1C AFB00090 */   sw        $s0, 0x90($sp)
/* 14F980 80025C20 00031080 */  sll        $v0, $v1, 2
/* 14F984 80025C24 3C018005 */  lui        $at, %hi(jtbl_8004AEC0_174C20)
/* 14F988 80025C28 00220821 */  addu       $at, $at, $v0
/* 14F98C 80025C2C 8C22AEC0 */  lw         $v0, %lo(jtbl_8004AEC0_174C20)($at)
/* 14F990 80025C30 00400008 */  jr         $v0
/* 14F994 80025C34 00000000 */   nop
glabel L80025C38_14F998
/* 14F998 80025C38 0C02A5D2 */  jal        func_800A9748
/* 14F99C 80025C3C 2404000A */   addiu     $a0, $zero, 0xa
/* 14F9A0 80025C40 24020001 */  addiu      $v0, $zero, 1
/* 14F9A4 80025C44 3C018004 */  lui        $at, %hi(D_800411A0_16AF00)
/* 14F9A8 80025C48 A02211A0 */  sb         $v0, %lo(D_800411A0_16AF00)($at)
/* 14F9AC 80025C4C 3C028004 */  lui        $v0, %hi(D_80040FF0_16AD50)
/* 14F9B0 80025C50 24420FF0 */  addiu      $v0, $v0, %lo(D_80040FF0_16AD50)
/* 14F9B4 80025C54 3C018005 */  lui        $at, %hi(D_8004B8E0)
/* 14F9B8 80025C58 AC20B8E0 */  sw         $zero, %lo(D_8004B8E0)($at)
/* 14F9BC 80025C5C 3C018005 */  lui        $at, %hi(D_8004B8E4)
/* 14F9C0 80025C60 AC20B8E4 */  sw         $zero, %lo(D_8004B8E4)($at)
/* 14F9C4 80025C64 3C018005 */  lui        $at, %hi(D_8004C45C)
/* 14F9C8 80025C68 AC22C45C */  sw         $v0, %lo(D_8004C45C)($at)
/* 14F9CC 80025C6C 080097DA */  j          .L80025F68
/* 14F9D0 80025C70 00001021 */   addu      $v0, $zero, $zero
glabel L80025C74_14F9D4
/* 14F9D4 80025C74 0C027444 */  jal        func_8009D110
/* 14F9D8 80025C78 00002021 */   addu      $a0, $zero, $zero
/* 14F9DC 80025C7C 3C048004 */  lui        $a0, %hi(D_8004117C_16AEDC)
/* 14F9E0 80025C80 0C027448 */  jal        func_8009D120
/* 14F9E4 80025C84 2484117C */   addiu     $a0, $a0, %lo(D_8004117C_16AEDC)
/* 14F9E8 80025C88 3C018005 */  lui        $at, %hi(D_8004B8E4)
/* 14F9EC 80025C8C 10400009 */  beqz       $v0, .L80025CB4
/* 14F9F0 80025C90 AC22B8E4 */   sw        $v0, %lo(D_8004B8E4)($at)
/* 14F9F4 80025C94 0C02A5C1 */  jal        func_800A9704
/* 14F9F8 80025C98 24040001 */   addiu     $a0, $zero, 1
/* 14F9FC 80025C9C 24020001 */  addiu      $v0, $zero, 1
/* 14FA00 80025CA0 3C018005 */  lui        $at, %hi(D_8004B8E0)
/* 14FA04 80025CA4 AC22B8E0 */  sw         $v0, %lo(D_8004B8E0)($at)
/* 14FA08 80025CA8 24020002 */  addiu      $v0, $zero, 2
/* 14FA0C 80025CAC 3C018004 */  lui        $at, %hi(D_800411A0_16AF00)
/* 14FA10 80025CB0 A02211A0 */  sb         $v0, %lo(D_800411A0_16AF00)($at)
.L80025CB4:
/* 14FA14 80025CB4 3C118004 */  lui        $s1, %hi(D_80041198_16AEF8)
/* 14FA18 80025CB8 8E311198 */  lw         $s1, %lo(D_80041198_16AEF8)($s1)
/* 14FA1C 80025CBC 1620003D */  bnez       $s1, .L80025DB4
/* 14FA20 80025CC0 24020001 */   addiu     $v0, $zero, 1
/* 14FA24 80025CC4 3C048015 */  lui        $a0, %hi(D_8014CF94)
/* 14FA28 80025CC8 2484CF94 */  addiu      $a0, $a0, %lo(D_8014CF94)
/* 14FA2C 80025CCC 94820000 */  lhu        $v0, ($a0)
/* 14FA30 80025CD0 30420002 */  andi       $v0, $v0, 2
/* 14FA34 80025CD4 10400006 */  beqz       $v0, .L80025CF0
/* 14FA38 80025CD8 00000000 */   nop
/* 14FA3C 80025CDC 3C038005 */  lui        $v1, %hi(D_8004C45C)
/* 14FA40 80025CE0 8C63C45C */  lw         $v1, %lo(D_8004C45C)($v1)
/* 14FA44 80025CE4 8C620000 */  lw         $v0, ($v1)
/* 14FA48 80025CE8 2442FFFF */  addiu      $v0, $v0, -1
/* 14FA4C 80025CEC AC620000 */  sw         $v0, ($v1)
.L80025CF0:
/* 14FA50 80025CF0 94820000 */  lhu        $v0, ($a0)
/* 14FA54 80025CF4 30420001 */  andi       $v0, $v0, 1
/* 14FA58 80025CF8 10400006 */  beqz       $v0, .L80025D14
/* 14FA5C 80025CFC 00000000 */   nop
/* 14FA60 80025D00 3C038005 */  lui        $v1, %hi(D_8004C45C)
/* 14FA64 80025D04 8C63C45C */  lw         $v1, %lo(D_8004C45C)($v1)
/* 14FA68 80025D08 8C620000 */  lw         $v0, ($v1)
/* 14FA6C 80025D0C 24420001 */  addiu      $v0, $v0, 1
/* 14FA70 80025D10 AC620000 */  sw         $v0, ($v1)
.L80025D14:
/* 14FA74 80025D14 3C028005 */  lui        $v0, %hi(D_8004C45C)
/* 14FA78 80025D18 8C42C45C */  lw         $v0, %lo(D_8004C45C)($v0)
/* 14FA7C 80025D1C 8C460000 */  lw         $a2, ($v0)
/* 14FA80 80025D20 3C058005 */  lui        $a1, %hi(D_8004AE84_174BE4)
/* 14FA84 80025D24 24A5AE84 */  addiu      $a1, $a1, %lo(D_8004AE84_174BE4)
/* 14FA88 80025D28 0C030180 */  jal        func_800C0600
/* 14FA8C 80025D2C 27A40010 */   addiu     $a0, $sp, 0x10
/* 14FA90 80025D30 00002021 */  addu       $a0, $zero, $zero
/* 14FA94 80025D34 24050002 */  addiu      $a1, $zero, 2
/* 14FA98 80025D38 0C02DAE0 */  jal        func_800B6B80
/* 14FA9C 80025D3C 24060006 */   addiu     $a2, $zero, 6
/* 14FAA0 80025D40 00002021 */  addu       $a0, $zero, $zero
/* 14FAA4 80025D44 0C02DA9C */  jal        func_800B6A70
/* 14FAA8 80025D48 27A50010 */   addiu     $a1, $sp, 0x10
/* 14FAAC 80025D4C 00002021 */  addu       $a0, $zero, $zero
/* 14FAB0 80025D50 24050002 */  addiu      $a1, $zero, 2
/* 14FAB4 80025D54 0C02DAE0 */  jal        func_800B6B80
/* 14FAB8 80025D58 24060007 */   addiu     $a2, $zero, 7
/* 14FABC 80025D5C 3C028005 */  lui        $v0, %hi(D_8004C45C)
/* 14FAC0 80025D60 8C42C45C */  lw         $v0, %lo(D_8004C45C)($v0)
/* 14FAC4 80025D64 8C450000 */  lw         $a1, ($v0)
/* 14FAC8 80025D68 00002021 */  addu       $a0, $zero, $zero
/* 14FACC 80025D6C 3C028004 */  lui        $v0, %hi(D_8003E4D0_168230)
/* 14FAD0 80025D70 2442E4D0 */  addiu      $v0, $v0, %lo(D_8003E4D0_168230)
/* 14FAD4 80025D74 00052940 */  sll        $a1, $a1, 5
/* 14FAD8 80025D78 0C02DA9C */  jal        func_800B6A70
/* 14FADC 80025D7C 00A22821 */   addu      $a1, $a1, $v0
/* 14FAE0 80025D80 3C038004 */  lui        $v1, %hi(D_80040FF0_16AD50)
/* 14FAE4 80025D84 24630FF0 */  addiu      $v1, $v1, %lo(D_80040FF0_16AD50)
/* 14FAE8 80025D88 8C620000 */  lw         $v0, ($v1)
/* 14FAEC 80025D8C 3C018005 */  lui        $at, %hi(D_8004C45C)
/* 14FAF0 80025D90 AC23C45C */  sw         $v1, %lo(D_8004C45C)($at)
/* 14FAF4 80025D94 28420017 */  slti       $v0, $v0, 0x17
/* 14FAF8 80025D98 1440003F */  bnez       $v0, .L80025E98
/* 14FAFC 80025D9C 24020002 */   addiu     $v0, $zero, 2
/* 14FB00 80025DA0 24020001 */  addiu      $v0, $zero, 1
/* 14FB04 80025DA4 3C018005 */  lui        $at, %hi(D_8004AAE4_174844)
/* 14FB08 80025DA8 AC22AAE4 */  sw         $v0, %lo(D_8004AAE4_174844)($at)
/* 14FB0C 80025DAC 080097DA */  j          .L80025F68
/* 14FB10 80025DB0 00001021 */   addu      $v0, $zero, $zero
.L80025DB4:
/* 14FB14 80025DB4 1622006C */  bne        $s1, $v0, .L80025F68
/* 14FB18 80025DB8 00001021 */   addu      $v0, $zero, $zero
/* 14FB1C 80025DBC 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 14FB20 80025DC0 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 14FB24 80025DC4 30620002 */  andi       $v0, $v1, 2
/* 14FB28 80025DC8 10400007 */  beqz       $v0, .L80025DE8
/* 14FB2C 80025DCC 30620001 */   andi      $v0, $v1, 1
/* 14FB30 80025DD0 3C028004 */  lui        $v0, %hi(D_80041070_16ADD0)
/* 14FB34 80025DD4 8C421070 */  lw         $v0, %lo(D_80041070_16ADD0)($v0)
/* 14FB38 80025DD8 2442FFFF */  addiu      $v0, $v0, -1
/* 14FB3C 80025DDC 3C018004 */  lui        $at, %hi(D_80041070_16ADD0)
/* 14FB40 80025DE0 AC221070 */  sw         $v0, %lo(D_80041070_16ADD0)($at)
/* 14FB44 80025DE4 30620001 */  andi       $v0, $v1, 1
.L80025DE8:
/* 14FB48 80025DE8 10400006 */  beqz       $v0, .L80025E04
/* 14FB4C 80025DEC 00000000 */   nop
/* 14FB50 80025DF0 3C028004 */  lui        $v0, %hi(D_80041070_16ADD0)
/* 14FB54 80025DF4 8C421070 */  lw         $v0, %lo(D_80041070_16ADD0)($v0)
/* 14FB58 80025DF8 24420001 */  addiu      $v0, $v0, 1
/* 14FB5C 80025DFC 3C018004 */  lui        $at, %hi(D_80041070_16ADD0)
/* 14FB60 80025E00 AC221070 */  sw         $v0, %lo(D_80041070_16ADD0)($at)
.L80025E04:
/* 14FB64 80025E04 3C068004 */  lui        $a2, %hi(D_80041070_16ADD0)
/* 14FB68 80025E08 8CC61070 */  lw         $a2, %lo(D_80041070_16ADD0)($a2)
/* 14FB6C 80025E0C 27B00050 */  addiu      $s0, $sp, 0x50
/* 14FB70 80025E10 3C058005 */  lui        $a1, %hi(D_8004AEA0_174C00)
/* 14FB74 80025E14 24A5AEA0 */  addiu      $a1, $a1, %lo(D_8004AEA0_174C00)
/* 14FB78 80025E18 0C030180 */  jal        func_800C0600
/* 14FB7C 80025E1C 02002021 */   addu      $a0, $s0, $zero
/* 14FB80 80025E20 00002021 */  addu       $a0, $zero, $zero
/* 14FB84 80025E24 24050002 */  addiu      $a1, $zero, 2
/* 14FB88 80025E28 0C02DAE0 */  jal        func_800B6B80
/* 14FB8C 80025E2C 24060006 */   addiu     $a2, $zero, 6
/* 14FB90 80025E30 00002021 */  addu       $a0, $zero, $zero
/* 14FB94 80025E34 0C02DA9C */  jal        func_800B6A70
/* 14FB98 80025E38 02002821 */   addu      $a1, $s0, $zero
/* 14FB9C 80025E3C 00002021 */  addu       $a0, $zero, $zero
/* 14FBA0 80025E40 24050002 */  addiu      $a1, $zero, 2
/* 14FBA4 80025E44 0C02DAE0 */  jal        func_800B6B80
/* 14FBA8 80025E48 24060007 */   addiu     $a2, $zero, 7
/* 14FBAC 80025E4C 3C058004 */  lui        $a1, %hi(D_80041070_16ADD0)
/* 14FBB0 80025E50 8CA51070 */  lw         $a1, %lo(D_80041070_16ADD0)($a1)
/* 14FBB4 80025E54 00002021 */  addu       $a0, $zero, $zero
/* 14FBB8 80025E58 3C028004 */  lui        $v0, %hi(D_8003F770_1694D0)
/* 14FBBC 80025E5C 2442F770 */  addiu      $v0, $v0, %lo(D_8003F770_1694D0)
/* 14FBC0 80025E60 00052940 */  sll        $a1, $a1, 5
/* 14FBC4 80025E64 0C02DA9C */  jal        func_800B6A70
/* 14FBC8 80025E68 00A22821 */   addu      $a1, $a1, $v0
/* 14FBCC 80025E6C 3C048004 */  lui        $a0, %hi(D_80041070_16ADD0)
/* 14FBD0 80025E70 8C841070 */  lw         $a0, %lo(D_80041070_16ADD0)($a0)
/* 14FBD4 80025E74 3C038004 */  lui        $v1, %hi(D_8003FAF0_169850)
/* 14FBD8 80025E78 2463FAF0 */  addiu      $v1, $v1, %lo(D_8003FAF0_169850)
/* 14FBDC 80025E7C 00041200 */  sll        $v0, $a0, 8
/* 14FBE0 80025E80 00431021 */  addu       $v0, $v0, $v1
/* 14FBE4 80025E84 28840007 */  slti       $a0, $a0, 7
/* 14FBE8 80025E88 3C018005 */  lui        $at, %hi(D_8004C45C)
/* 14FBEC 80025E8C AC22C45C */  sw         $v0, %lo(D_8004C45C)($at)
/* 14FBF0 80025E90 10800005 */  beqz       $a0, .L80025EA8
/* 14FBF4 80025E94 24020002 */   addiu     $v0, $zero, 2
.L80025E98:
/* 14FBF8 80025E98 3C018005 */  lui        $at, %hi(D_8004AAE4_174844)
/* 14FBFC 80025E9C AC22AAE4 */  sw         $v0, %lo(D_8004AAE4_174844)($at)
/* 14FC00 80025EA0 080097DA */  j          .L80025F68
/* 14FC04 80025EA4 00001021 */   addu      $v0, $zero, $zero
.L80025EA8:
/* 14FC08 80025EA8 3C018005 */  lui        $at, %hi(D_8004AAE4_174844)
/* 14FC0C 80025EAC AC31AAE4 */  sw         $s1, %lo(D_8004AAE4_174844)($at)
/* 14FC10 80025EB0 080097DA */  j          .L80025F68
/* 14FC14 80025EB4 00001021 */   addu      $v0, $zero, $zero
glabel L80025EB8_14FC18
/* 14FC18 80025EB8 3C048004 */  lui        $a0, %hi(D_8004117C_16AEDC)
/* 14FC1C 80025EBC 2484117C */  addiu      $a0, $a0, %lo(D_8004117C_16AEDC)
/* 14FC20 80025EC0 0C0274BE */  jal        func_8009D2F8
/* 14FC24 80025EC4 24050001 */   addiu     $a1, $zero, 1
/* 14FC28 80025EC8 3C028005 */  lui        $v0, %hi(D_8004B8E0)
/* 14FC2C 80025ECC 8C42B8E0 */  lw         $v0, %lo(D_8004B8E0)($v0)
/* 14FC30 80025ED0 2442FFFF */  addiu      $v0, $v0, -1
/* 14FC34 80025ED4 3C018005 */  lui        $at, %hi(D_8004B8E0)
/* 14FC38 80025ED8 AC22B8E0 */  sw         $v0, %lo(D_8004B8E0)($at)
/* 14FC3C 80025EDC 14400022 */  bnez       $v0, .L80025F68
/* 14FC40 80025EE0 00001021 */   addu      $v0, $zero, $zero
/* 14FC44 80025EE4 0C02DB14 */  jal        func_800B6C50
/* 14FC48 80025EE8 00002021 */   addu      $a0, $zero, $zero
/* 14FC4C 80025EEC 3C038005 */  lui        $v1, %hi(D_8004B8E4)
/* 14FC50 80025EF0 8C63B8E4 */  lw         $v1, %lo(D_8004B8E4)($v1)
/* 14FC54 80025EF4 2402FFFF */  addiu      $v0, $zero, -1
/* 14FC58 80025EF8 14620006 */  bne        $v1, $v0, .L80025F14
/* 14FC5C 80025EFC 24020003 */   addiu     $v0, $zero, 3
/* 14FC60 80025F00 24020004 */  addiu      $v0, $zero, 4
/* 14FC64 80025F04 3C018004 */  lui        $at, %hi(D_800411A0_16AF00)
/* 14FC68 80025F08 A02211A0 */  sb         $v0, %lo(D_800411A0_16AF00)($at)
/* 14FC6C 80025F0C 080097DA */  j          .L80025F68
/* 14FC70 80025F10 00001021 */   addu      $v0, $zero, $zero
.L80025F14:
/* 14FC74 80025F14 3C018004 */  lui        $at, %hi(D_800411A0_16AF00)
/* 14FC78 80025F18 A02211A0 */  sb         $v0, %lo(D_800411A0_16AF00)($at)
/* 14FC7C 80025F1C 080097DA */  j          .L80025F68
/* 14FC80 80025F20 00001021 */   addu      $v0, $zero, $zero
glabel L80025F24_14FC84
/* 14FC84 80025F24 3C028005 */  lui        $v0, %hi(D_8004B8E4)
/* 14FC88 80025F28 8C42B8E4 */  lw         $v0, %lo(D_8004B8E4)($v0)
/* 14FC8C 80025F2C 0040F809 */  jalr       $v0
/* 14FC90 80025F30 00000000 */   nop
/* 14FC94 80025F34 24030001 */  addiu      $v1, $zero, 1
/* 14FC98 80025F38 1443000B */  bne        $v0, $v1, .L80025F68
/* 14FC9C 80025F3C 00001021 */   addu      $v0, $zero, $zero
/* 14FCA0 80025F40 3C018004 */  lui        $at, %hi(D_800411A0_16AF00)
/* 14FCA4 80025F44 080097DA */  j          .L80025F68
/* 14FCA8 80025F48 A02011A0 */   sb        $zero, %lo(D_800411A0_16AF00)($at)
glabel L80025F4C_14FCAC
/* 14FCAC 80025F4C 0C02DB14 */  jal        func_800B6C50
/* 14FCB0 80025F50 00002021 */   addu      $a0, $zero, $zero
/* 14FCB4 80025F54 3C018004 */  lui        $at, %hi(D_800411A0_16AF00)
/* 14FCB8 80025F58 A02011A0 */  sb         $zero, %lo(D_800411A0_16AF00)($at)
/* 14FCBC 80025F5C 080097DA */  j          .L80025F68
/* 14FCC0 80025F60 24020001 */   addiu     $v0, $zero, 1
.L80025F64:
/* 14FCC4 80025F64 00001021 */  addu       $v0, $zero, $zero
.L80025F68:
/* 14FCC8 80025F68 8FBF0098 */  lw         $ra, 0x98($sp)
/* 14FCCC 80025F6C 8FB10094 */  lw         $s1, 0x94($sp)
/* 14FCD0 80025F70 8FB00090 */  lw         $s0, 0x90($sp)
/* 14FCD4 80025F74 03E00008 */  jr         $ra
/* 14FCD8 80025F78 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_80025F7C_14FCDC
/* 14FCDC 80025F7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14FCE0 80025F80 AFBF0010 */  sw         $ra, 0x10($sp)
/* 14FCE4 80025F84 3C04802F */  lui        $a0, 0x802f
/* 14FCE8 80025F88 34849800 */  ori        $a0, $a0, 0x9800
/* 14FCEC 80025F8C 3C050007 */  lui        $a1, 7
/* 14FCF0 80025F90 0C025E1F */  jal        func_8009787C
/* 14FCF4 80025F94 34A50800 */   ori       $a1, $a1, 0x800
/* 14FCF8 80025F98 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14FCFC 80025F9C 03E00008 */  jr         $ra
/* 14FD00 80025FA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80025FA4_14FD04
/* 14FD04 80025FA4 03E00008 */  jr         $ra
/* 14FD08 80025FA8 00000000 */   nop
/* 14FD0C 80025FAC 00000000 */  nop
