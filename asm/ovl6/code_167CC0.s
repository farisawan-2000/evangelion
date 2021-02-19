.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003DF60_167CC0
/* 167CC0 8003DF60 3C028005 */  lui        $v0, %hi(D_8004AD52)
/* 167CC4 8003DF64 9042AD52 */  lbu        $v0, %lo(D_8004AD52)($v0)
/* 167CC8 8003DF68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 167CCC 8003DF6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 167CD0 8003DF70 1040001B */  beqz       $v0, .L8003DFE0
/* 167CD4 8003DF74 AFB00010 */   sw        $s0, 0x10($sp)
/* 167CD8 8003DF78 0C02A5D2 */  jal        func_800A9748
/* 167CDC 8003DF7C 24040001 */   addiu     $a0, $zero, 1
/* 167CE0 8003DF80 24020091 */  addiu      $v0, $zero, 0x91
/* 167CE4 8003DF84 3C018005 */  lui        $at, %hi(D_8004C530)
/* 167CE8 8003DF88 A422C530 */  sh         $v0, %lo(D_8004C530)($at)
/* 167CEC 8003DF8C 0C00D112 */  jal        func_80034448_15E1A8
/* 167CF0 8003DF90 24040091 */   addiu     $a0, $zero, 0x91
/* 167CF4 8003DF94 3C048004 */  lui        $a0, %hi(func_8003BF70_165CD0)
/* 167CF8 8003DF98 2484BF70 */  addiu      $a0, $a0, %lo(func_8003BF70_165CD0)
/* 167CFC 8003DF9C 00002821 */  addu       $a1, $zero, $zero
/* 167D00 8003DFA0 2406012C */  addiu      $a2, $zero, 0x12c
/* 167D04 8003DFA4 3C018005 */  lui        $at, %hi(D_8004BED0)
/* 167D08 8003DFA8 AC22BED0 */  sw         $v0, %lo(D_8004BED0)($at)
/* 167D0C 8003DFAC 0C025D06 */  jal        func_80097418
/* 167D10 8003DFB0 00003821 */   addu      $a3, $zero, $zero
/* 167D14 8003DFB4 3C018005 */  lui        $at, %hi(D_8004BED4)
/* 167D18 8003DFB8 AC22BED4 */  sw         $v0, %lo(D_8004BED4)($at)
/* 167D1C 8003DFBC 0C00A625 */  jal        func_80029894_1535F4
/* 167D20 8003DFC0 2404000A */   addiu     $a0, $zero, 0xa
/* 167D24 8003DFC4 24020001 */  addiu      $v0, $zero, 1
/* 167D28 8003DFC8 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 167D2C 8003DFCC AC229BBC */  sw         $v0, %lo(D_80149BBC)($at)
/* 167D30 8003DFD0 0C02A626 */  jal        func_800A9898
/* 167D34 8003DFD4 24040005 */   addiu     $a0, $zero, 5
/* 167D38 8003DFD8 3C018005 */  lui        $at, %hi(D_8004AD52)
/* 167D3C 8003DFDC A020AD52 */  sb         $zero, %lo(D_8004AD52)($at)
.L8003DFE0:
/* 167D40 8003DFE0 3C048005 */  lui        $a0, %hi(D_8004BED0)
/* 167D44 8003DFE4 0C00D9F2 */  jal        func_800367C8_160528
/* 167D48 8003DFE8 8C84BED0 */   lw        $a0, %lo(D_8004BED0)($a0)
/* 167D4C 8003DFEC 3C048005 */  lui        $a0, %hi(D_8004BED0)
/* 167D50 8003DFF0 8C84BED0 */  lw         $a0, %lo(D_8004BED0)($a0)
/* 167D54 8003DFF4 0C00D94B */  jal        func_8003652C_16028C
/* 167D58 8003DFF8 00408021 */   addu      $s0, $v0, $zero
/* 167D5C 8003DFFC 0C0097E9 */  jal        func_80025FA4_14FD04
/* 167D60 8003E000 00000000 */   nop
/* 167D64 8003E004 16000003 */  bnez       $s0, .L8003E014
/* 167D68 8003E008 24020001 */   addiu     $v0, $zero, 1
/* 167D6C 8003E00C 0800F810 */  j          .L8003E040
/* 167D70 8003E010 00001021 */   addu      $v0, $zero, $zero
.L8003E014:
/* 167D74 8003E014 3C048005 */  lui        $a0, %hi(D_8004BED0)
/* 167D78 8003E018 8C84BED0 */  lw         $a0, %lo(D_8004BED0)($a0)
/* 167D7C 8003E01C 3C018005 */  lui        $at, %hi(D_8004AD52)
/* 167D80 8003E020 0C00D18F */  jal        func_8003463C_15E39C
/* 167D84 8003E024 A022AD52 */   sb        $v0, %lo(D_8004AD52)($at)
/* 167D88 8003E028 0C00A638 */  jal        func_800298E0_153640
/* 167D8C 8003E02C 00000000 */   nop
/* 167D90 8003E030 3C048005 */  lui        $a0, %hi(D_8004BED4)
/* 167D94 8003E034 0C025D58 */  jal        func_80097560
/* 167D98 8003E038 8C84BED4 */   lw        $a0, %lo(D_8004BED4)($a0)
/* 167D9C 8003E03C 24020001 */  addiu      $v0, $zero, 1
.L8003E040:
/* 167DA0 8003E040 8FBF0014 */  lw         $ra, 0x14($sp)
/* 167DA4 8003E044 8FB00010 */  lw         $s0, 0x10($sp)
/* 167DA8 8003E048 03E00008 */  jr         $ra
/* 167DAC 8003E04C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003E050_167DB0
/* 167DB0 8003E050 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 167DB4 8003E054 AFB20018 */  sw         $s2, 0x18($sp)
/* 167DB8 8003E058 00809021 */  addu       $s2, $a0, $zero
/* 167DBC 8003E05C AFB10014 */  sw         $s1, 0x14($sp)
/* 167DC0 8003E060 00008821 */  addu       $s1, $zero, $zero
/* 167DC4 8003E064 AFB00010 */  sw         $s0, 0x10($sp)
/* 167DC8 8003E068 3C108004 */  lui        $s0, %hi(D_8004231C)
/* 167DCC 8003E06C 2610231C */  addiu      $s0, $s0, %lo(D_8004231C)
/* 167DD0 8003E070 AFBF001C */  sw         $ra, 0x1c($sp)
.L8003E074:
/* 167DD4 8003E074 02402021 */  addu       $a0, $s2, $zero
/* 167DD8 8003E078 0C00D502 */  jal        func_80035408_15F168
/* 167DDC 8003E07C 02002821 */   addu      $a1, $s0, $zero
/* 167DE0 8003E080 26310001 */  addiu      $s1, $s1, 1
/* 167DE4 8003E084 2A220030 */  slti       $v0, $s1, 0x30
/* 167DE8 8003E088 1440FFFA */  bnez       $v0, .L8003E074
/* 167DEC 8003E08C 26100018 */   addiu     $s0, $s0, 0x18
/* 167DF0 8003E090 8E420018 */  lw         $v0, 0x18($s2)
/* 167DF4 8003E094 2442FFFF */  addiu      $v0, $v0, -1
/* 167DF8 8003E098 AE420018 */  sw         $v0, 0x18($s2)
/* 167DFC 8003E09C 00021080 */  sll        $v0, $v0, 2
/* 167E00 8003E0A0 02421021 */  addu       $v0, $s2, $v0
/* 167E04 8003E0A4 8C431C88 */  lw         $v1, 0x1c88($v0)
/* 167E08 8003E0A8 AC431C84 */  sw         $v1, 0x1c84($v0)
/* 167E0C 8003E0AC 8E420018 */  lw         $v0, 0x18($s2)
/* 167E10 8003E0B0 3C018005 */  lui        $at, %hi(D_8004AD50)
/* 167E14 8003E0B4 A020AD50 */  sb         $zero, %lo(D_8004AD50)($at)
/* 167E18 8003E0B8 3C018005 */  lui        $at, %hi(D_8004AD51)
/* 167E1C 8003E0BC A020AD51 */  sb         $zero, %lo(D_8004AD51)($at)
/* 167E20 8003E0C0 00021080 */  sll        $v0, $v0, 2
/* 167E24 8003E0C4 02421021 */  addu       $v0, $s2, $v0
/* 167E28 8003E0C8 AC401C88 */  sw         $zero, 0x1c88($v0)
/* 167E2C 8003E0CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 167E30 8003E0D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 167E34 8003E0D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 167E38 8003E0D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 167E3C 8003E0DC 03E00008 */  jr         $ra
/* 167E40 8003E0E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003E0E4_167E44
/* 167E44 8003E0E4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 167E48 8003E0E8 2488194C */  addiu      $t0, $a0, 0x194c
/* 167E4C 8003E0EC 3C068005 */  lui        $a2, %hi(D_8004B8D8)
/* 167E50 8003E0F0 24C6B8D8 */  addiu      $a2, $a2, %lo(D_8004B8D8)
/* 167E54 8003E0F4 88C20000 */  lwl        $v0, ($a2)
/* 167E58 8003E0F8 98C20003 */  lwr        $v0, 3($a2)
/* 167E5C 8003E0FC ABA20000 */  swl        $v0, ($sp)
/* 167E60 8003E100 BBA20003 */  swr        $v0, 3($sp)
/* 167E64 8003E104 00004821 */  addu       $t1, $zero, $zero
/* 167E68 8003E108 8C820004 */  lw         $v0, 4($a0)
/* 167E6C 8003E10C 27AD0008 */  addiu      $t5, $sp, 8
/* 167E70 8003E110 3C0C8005 */  lui        $t4, %hi(D_8004B8DC)
/* 167E74 8003E114 258CB8DC */  addiu      $t4, $t4, %lo(D_8004B8DC)
/* 167E78 8003E118 00021083 */  sra        $v0, $v0, 2
/* 167E7C 8003E11C 00405821 */  addu       $t3, $v0, $zero
/* 167E80 8003E120 304E0003 */  andi       $t6, $v0, 3
/* 167E84 8003E124 00003821 */  addu       $a3, $zero, $zero
.L8003E128:
/* 167E88 8003E128 01A95021 */  addu       $t2, $t5, $t1
.L8003E12C:
/* 167E8C 8003E12C 3C068005 */  lui        $a2, %hi(D_8004AD51)
/* 167E90 8003E130 90C6AD51 */  lbu        $a2, %lo(D_8004AD51)($a2)
/* 167E94 8003E134 81820000 */  lb         $v0, ($t4)
/* 167E98 8003E138 81830001 */  lb         $v1, 1($t4)
/* 167E9C 8003E13C 81840002 */  lb         $a0, 2($t4)
/* 167EA0 8003E140 A3A20008 */  sb         $v0, 8($sp)
/* 167EA4 8003E144 A3A30009 */  sb         $v1, 9($sp)
/* 167EA8 8003E148 10C00005 */  beqz       $a2, .L8003E160
/* 167EAC 8003E14C A3A4000A */   sb        $a0, 0xa($sp)
/* 167EB0 8003E150 91420000 */  lbu        $v0, ($t2)
/* 167EB4 8003E154 00C2102B */  sltu       $v0, $a2, $v0
/* 167EB8 8003E158 10400005 */  beqz       $v0, .L8003E170
/* 167EBC 8003E15C 00000000 */   nop
.L8003E160:
/* 167EC0 8003E160 8D030000 */  lw         $v1, ($t0)
/* 167EC4 8003E164 9462001E */  lhu        $v0, 0x1e($v1)
/* 167EC8 8003E168 0800F85F */  j          .L8003E17C
/* 167ECC 8003E16C 34420400 */   ori       $v0, $v0, 0x400
.L8003E170:
/* 167ED0 8003E170 8D030000 */  lw         $v1, ($t0)
/* 167ED4 8003E174 9462001E */  lhu        $v0, 0x1e($v1)
/* 167ED8 8003E178 3042FBFF */  andi       $v0, $v0, 0xfbff
.L8003E17C:
/* 167EDC 8003E17C A462001E */  sh         $v0, 0x1e($v1)
/* 167EE0 8003E180 24E70001 */  addiu      $a3, $a3, 1
/* 167EE4 8003E184 28E20002 */  slti       $v0, $a3, 2
/* 167EE8 8003E188 1440FFE8 */  bnez       $v0, .L8003E12C
/* 167EEC 8003E18C 2508000C */   addiu     $t0, $t0, 0xc
/* 167EF0 8003E190 25290001 */  addiu      $t1, $t1, 1
/* 167EF4 8003E194 29220003 */  slti       $v0, $t1, 3
/* 167EF8 8003E198 5440FFE3 */  bnezl      $v0, .L8003E128
/* 167EFC 8003E19C 00003821 */   addu      $a3, $zero, $zero
/* 167F00 8003E1A0 3C028005 */  lui        $v0, %hi(D_8004AD51)
/* 167F04 8003E1A4 9042AD51 */  lbu        $v0, %lo(D_8004AD51)($v0)
/* 167F08 8003E1A8 10400003 */  beqz       $v0, .L8003E1B8
/* 167F0C 8003E1AC 2442FFFF */   addiu     $v0, $v0, -1
/* 167F10 8003E1B0 3C018005 */  lui        $at, %hi(D_8004AD51)
/* 167F14 8003E1B4 A022AD51 */  sb         $v0, %lo(D_8004AD51)($at)
.L8003E1B8:
/* 167F18 8003E1B8 00004821 */  addu       $t1, $zero, $zero
/* 167F1C 8003E1BC 03AE2021 */  addu       $a0, $sp, $t6
/* 167F20 8003E1C0 00003821 */  addu       $a3, $zero, $zero
.L8003E1C4:
/* 167F24 8003E1C4 90820000 */  lbu        $v0, ($a0)
/* 167F28 8003E1C8 14E20005 */  bne        $a3, $v0, .L8003E1E0
/* 167F2C 8003E1CC 00000000 */   nop
/* 167F30 8003E1D0 8D030000 */  lw         $v1, ($t0)
/* 167F34 8003E1D4 9462001E */  lhu        $v0, 0x1e($v1)
/* 167F38 8003E1D8 0800F87B */  j          .L8003E1EC
/* 167F3C 8003E1DC 3042FBFF */   andi      $v0, $v0, 0xfbff
.L8003E1E0:
/* 167F40 8003E1E0 8D030000 */  lw         $v1, ($t0)
/* 167F44 8003E1E4 9462001E */  lhu        $v0, 0x1e($v1)
/* 167F48 8003E1E8 34420400 */  ori        $v0, $v0, 0x400
.L8003E1EC:
/* 167F4C 8003E1EC A462001E */  sh         $v0, 0x1e($v1)
/* 167F50 8003E1F0 24E70001 */  addiu      $a3, $a3, 1
/* 167F54 8003E1F4 28E20003 */  slti       $v0, $a3, 3
/* 167F58 8003E1F8 1440FFF2 */  bnez       $v0, .L8003E1C4
/* 167F5C 8003E1FC 2508000C */   addiu     $t0, $t0, 0xc
/* 167F60 8003E200 25290001 */  addiu      $t1, $t1, 1
/* 167F64 8003E204 29220008 */  slti       $v0, $t1, 8
/* 167F68 8003E208 1440FFEE */  bnez       $v0, .L8003E1C4
/* 167F6C 8003E20C 00003821 */   addu      $a3, $zero, $zero
/* 167F70 8003E210 316400FF */  andi       $a0, $t3, 0xff
/* 167F74 8003E214 3C02CCCC */  lui        $v0, 0xcccc
/* 167F78 8003E218 3442CCCD */  ori        $v0, $v0, 0xcccd
/* 167F7C 8003E21C 00820019 */  multu      $a0, $v0
/* 167F80 8003E220 00004821 */  addu       $t1, $zero, $zero
/* 167F84 8003E224 00002810 */  mfhi       $a1
/* 167F88 8003E228 00051882 */  srl        $v1, $a1, 2
/* 167F8C 8003E22C 00031080 */  sll        $v0, $v1, 2
/* 167F90 8003E230 00431021 */  addu       $v0, $v0, $v1
/* 167F94 8003E234 00825823 */  subu       $t3, $a0, $v0
/* 167F98 8003E238 316400FF */  andi       $a0, $t3, 0xff
.L8003E23C:
/* 167F9C 8003E23C 14E40005 */  bne        $a3, $a0, .L8003E254
/* 167FA0 8003E240 00000000 */   nop
/* 167FA4 8003E244 8D030000 */  lw         $v1, ($t0)
/* 167FA8 8003E248 9462001E */  lhu        $v0, 0x1e($v1)
/* 167FAC 8003E24C 0800F898 */  j          .L8003E260
/* 167FB0 8003E250 3042FBFF */   andi      $v0, $v0, 0xfbff
.L8003E254:
/* 167FB4 8003E254 8D030000 */  lw         $v1, ($t0)
/* 167FB8 8003E258 9462001E */  lhu        $v0, 0x1e($v1)
/* 167FBC 8003E25C 34420400 */  ori        $v0, $v0, 0x400
.L8003E260:
/* 167FC0 8003E260 A462001E */  sh         $v0, 0x1e($v1)
/* 167FC4 8003E264 24E70001 */  addiu      $a3, $a3, 1
/* 167FC8 8003E268 28E20005 */  slti       $v0, $a3, 5
/* 167FCC 8003E26C 1440FFF3 */  bnez       $v0, .L8003E23C
/* 167FD0 8003E270 2508000C */   addiu     $t0, $t0, 0xc
/* 167FD4 8003E274 25290001 */  addiu      $t1, $t1, 1
/* 167FD8 8003E278 29220003 */  slti       $v0, $t1, 3
/* 167FDC 8003E27C 1440FFEF */  bnez       $v0, .L8003E23C
/* 167FE0 8003E280 00003821 */   addu      $a3, $zero, $zero
/* 167FE4 8003E284 27BD0010 */  addiu      $sp, $sp, 0x10
/* 167FE8 8003E288 03E00008 */  jr         $ra
/* 167FEC 8003E28C 00000000 */   nop

glabel func_8003E290_167FF0
/* 167FF0 8003E290 3C028005 */  lui        $v0, %hi(D_8004AD60)
/* 167FF4 8003E294 9042AD60 */  lbu        $v0, %lo(D_8004AD60)($v0)
/* 167FF8 8003E298 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 167FFC 8003E29C AFB00018 */  sw         $s0, 0x18($sp)
/* 168000 8003E2A0 00808021 */  addu       $s0, $a0, $zero
/* 168004 8003E2A4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 168008 8003E2A8 1040003E */  beqz       $v0, .L8003E3A4
/* 16800C 8003E2AC AFB1001C */   sw        $s1, 0x1c($sp)
/* 168010 8003E2B0 0C02A5D2 */  jal        func_800A9748
/* 168014 8003E2B4 24040001 */   addiu     $a0, $zero, 1
/* 168018 8003E2B8 3C038005 */  lui        $v1, %hi(D_8004AD61)
/* 16801C 8003E2BC 9063AD61 */  lbu        $v1, %lo(D_8004AD61)($v1)
/* 168020 8003E2C0 24020001 */  addiu      $v0, $zero, 1
/* 168024 8003E2C4 14620019 */  bne        $v1, $v0, .L8003E32C
/* 168028 8003E2C8 00000000 */   nop
/* 16802C 8003E2CC 16030006 */  bne        $s0, $v1, .L8003E2E8
/* 168030 8003E2D0 24020021 */   addiu     $v0, $zero, 0x21
/* 168034 8003E2D4 0C0097DF */  jal        func_80025F7C_14FCDC
/* 168038 8003E2D8 00000000 */   nop
/* 16803C 8003E2DC 0C02B4A0 */  jal        func_800AD280
/* 168040 8003E2E0 00000000 */   nop
/* 168044 8003E2E4 24020025 */  addiu      $v0, $zero, 0x25
.L8003E2E8:
/* 168048 8003E2E8 3C018005 */  lui        $at, %hi(D_8004C530)
/* 16804C 8003E2EC A422C530 */  sh         $v0, %lo(D_8004C530)($at)
/* 168050 8003E2F0 0C00A625 */  jal        func_80029894_1535F4
/* 168054 8003E2F4 2404000B */   addiu     $a0, $zero, 0xb
/* 168058 8003E2F8 3C048004 */  lui        $a0, %hi(func_8003BF70_165CD0)
/* 16805C 8003E2FC 2484BF70 */  addiu      $a0, $a0, %lo(func_8003BF70_165CD0)
/* 168060 8003E300 00002821 */  addu       $a1, $zero, $zero
/* 168064 8003E304 2406012C */  addiu      $a2, $zero, 0x12c
/* 168068 8003E308 0C025D06 */  jal        func_80097418
/* 16806C 8003E30C 00003821 */   addu      $a3, $zero, $zero
/* 168070 8003E310 3C018005 */  lui        $at, %hi(D_8004BEE4)
/* 168074 8003E314 AC22BEE4 */  sw         $v0, %lo(D_8004BEE4)($at)
/* 168078 8003E318 24020001 */  addiu      $v0, $zero, 1
/* 16807C 8003E31C 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 168080 8003E320 AC229BBC */  sw         $v0, %lo(D_80149BBC)($at)
/* 168084 8003E324 0C02A626 */  jal        func_800A9898
/* 168088 8003E328 24040005 */   addiu     $a0, $zero, 5
.L8003E32C:
/* 16808C 8003E32C 3C038005 */  lui        $v1, %hi(D_8004C530)
/* 168090 8003E330 8463C530 */  lh         $v1, %lo(D_8004C530)($v1)
/* 168094 8003E334 24020027 */  addiu      $v0, $zero, 0x27
/* 168098 8003E338 1462000A */  bne        $v1, $v0, .L8003E364
/* 16809C 8003E33C 24020028 */   addiu     $v0, $zero, 0x28
/* 1680A0 8003E340 AFA00010 */  sw         $zero, 0x10($sp)
/* 1680A4 8003E344 2404FFFE */  addiu      $a0, $zero, -2
/* 1680A8 8003E348 2405FFFF */  addiu      $a1, $zero, -1
/* 1680AC 8003E34C 24060012 */  addiu      $a2, $zero, 0x12
/* 1680B0 8003E350 0C026C9A */  jal        func_8009B268
/* 1680B4 8003E354 00003821 */   addu      $a3, $zero, $zero
/* 1680B8 8003E358 3C038005 */  lui        $v1, %hi(D_8004C530)
/* 1680BC 8003E35C 8463C530 */  lh         $v1, %lo(D_8004C530)($v1)
/* 1680C0 8003E360 24020028 */  addiu      $v0, $zero, 0x28
.L8003E364:
/* 1680C4 8003E364 14620003 */  bne        $v1, $v0, .L8003E374
/* 1680C8 8003E368 00000000 */   nop
/* 1680CC 8003E36C 0C00A625 */  jal        func_80029894_1535F4
/* 1680D0 8003E370 2404000A */   addiu     $a0, $zero, 0xa
.L8003E374:
/* 1680D4 8003E374 3C048005 */  lui        $a0, %hi(D_8004C530)
/* 1680D8 8003E378 8484C530 */  lh         $a0, %lo(D_8004C530)($a0)
/* 1680DC 8003E37C 24020001 */  addiu      $v0, $zero, 1
/* 1680E0 8003E380 3C018005 */  lui        $at, %hi(D_8004AAE4)
/* 1680E4 8003E384 0C00D112 */  jal        func_80034448_15E1A8
/* 1680E8 8003E388 AC22AAE4 */   sw        $v0, %lo(D_8004AAE4)($at)
/* 1680EC 8003E38C 3C018005 */  lui        $at, %hi(D_8004BEE0)
/* 1680F0 8003E390 AC22BEE0 */  sw         $v0, %lo(D_8004BEE0)($at)
/* 1680F4 8003E394 3C018005 */  lui        $at, %hi(D_8004AD61)
/* 1680F8 8003E398 A020AD61 */  sb         $zero, %lo(D_8004AD61)($at)
/* 1680FC 8003E39C 3C018005 */  lui        $at, %hi(D_8004AD60)
/* 168100 8003E3A0 A020AD60 */  sb         $zero, %lo(D_8004AD60)($at)
.L8003E3A4:
/* 168104 8003E3A4 3C048005 */  lui        $a0, %hi(D_8004BEE0)
/* 168108 8003E3A8 0C00D9F2 */  jal        func_800367C8_160528
/* 16810C 8003E3AC 8C84BEE0 */   lw        $a0, %lo(D_8004BEE0)($a0)
/* 168110 8003E3B0 3C048005 */  lui        $a0, %hi(D_8004BEE0)
/* 168114 8003E3B4 8C84BEE0 */  lw         $a0, %lo(D_8004BEE0)($a0)
/* 168118 8003E3B8 0C00D94B */  jal        func_8003652C_16028C
/* 16811C 8003E3BC 00408021 */   addu      $s0, $v0, $zero
/* 168120 8003E3C0 0C0097E9 */  jal        func_80025FA4_14FD04
/* 168124 8003E3C4 00000000 */   nop
/* 168128 8003E3C8 1200002C */  beqz       $s0, .L8003E47C
/* 16812C 8003E3CC 24110001 */   addiu     $s1, $zero, 1
/* 168130 8003E3D0 3C048005 */  lui        $a0, %hi(D_8004BEE0)
/* 168134 8003E3D4 8C84BEE0 */  lw         $a0, %lo(D_8004BEE0)($a0)
/* 168138 8003E3D8 3C028005 */  lui        $v0, %hi(D_8004BEE4)
/* 16813C 8003E3DC 8C42BEE4 */  lw         $v0, %lo(D_8004BEE4)($v0)
/* 168140 8003E3E0 3C018005 */  lui        $at, %hi(D_8004AD60)
/* 168144 8003E3E4 A031AD60 */  sb         $s1, %lo(D_8004AD60)($at)
/* 168148 8003E3E8 0C00D18F */  jal        func_8003463C_15E39C
/* 16814C 8003E3EC 8C500014 */   lw        $s0, 0x14($v0)
/* 168150 8003E3F0 0C00A631 */  jal        func_800298C4_153624
/* 168154 8003E3F4 00000000 */   nop
/* 168158 8003E3F8 3C028005 */  lui        $v0, %hi(D_8004C530)
/* 16815C 8003E3FC 9442C530 */  lhu        $v0, %lo(D_8004C530)($v0)
/* 168160 8003E400 24420001 */  addiu      $v0, $v0, 1
/* 168164 8003E404 3C018005 */  lui        $at, %hi(D_8004C530)
/* 168168 8003E408 A422C530 */  sh         $v0, %lo(D_8004C530)($at)
/* 16816C 8003E40C 00021400 */  sll        $v0, $v0, 0x10
/* 168170 8003E410 00021403 */  sra        $v0, $v0, 0x10
/* 168174 8003E414 2842004C */  slti       $v0, $v0, 0x4c
/* 168178 8003E418 14400011 */  bnez       $v0, .L8003E460
/* 16817C 8003E41C 00000000 */   nop
/* 168180 8003E420 3C018005 */  lui        $at, %hi(D_8004AD61)
/* 168184 8003E424 0C00A638 */  jal        func_800298E0_153640
/* 168188 8003E428 A031AD61 */   sb        $s1, %lo(D_8004AD61)($at)
/* 16818C 8003E42C 3C048005 */  lui        $a0, %hi(D_8004BEE4)
/* 168190 8003E430 0C025D58 */  jal        func_80097560
/* 168194 8003E434 8C84BEE4 */   lw        $a0, %lo(D_8004BEE4)($a0)
/* 168198 8003E438 3C038005 */  lui        $v1, %hi(D_8004C530)
/* 16819C 8003E43C 9463C530 */  lhu        $v1, %lo(D_8004C530)($v1)
/* 1681A0 8003E440 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 1681A4 8003E444 AC209BBC */  sw         $zero, %lo(D_80149BBC)($at)
/* 1681A8 8003E448 2463FFB3 */  addiu      $v1, $v1, -0x4d
/* 1681AC 8003E44C 2C630007 */  sltiu      $v1, $v1, 7
/* 1681B0 8003E450 1060000B */  beqz       $v1, .L8003E480
/* 1681B4 8003E454 24020003 */   addiu     $v0, $zero, 3
/* 1681B8 8003E458 0800F920 */  j          .L8003E480
/* 1681BC 8003E45C 24020005 */   addiu     $v0, $zero, 5
.L8003E460:
/* 1681C0 8003E460 960200C0 */  lhu        $v0, 0xc0($s0)
/* 1681C4 8003E464 10400006 */  beqz       $v0, .L8003E480
/* 1681C8 8003E468 00001021 */   addu      $v0, $zero, $zero
/* 1681CC 8003E46C 960200B0 */  lhu        $v0, 0xb0($s0)
/* 1681D0 8003E470 2442004B */  addiu      $v0, $v0, 0x4b
/* 1681D4 8003E474 3C018005 */  lui        $at, %hi(D_8004C530)
/* 1681D8 8003E478 A422C530 */  sh         $v0, %lo(D_8004C530)($at)
.L8003E47C:
/* 1681DC 8003E47C 00001021 */  addu       $v0, $zero, $zero
.L8003E480:
/* 1681E0 8003E480 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1681E4 8003E484 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1681E8 8003E488 8FB00018 */  lw         $s0, 0x18($sp)
/* 1681EC 8003E48C 03E00008 */  jr         $ra
/* 1681F0 8003E490 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003E494_1681F4
/* 1681F4 8003E494 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1681F8 8003E498 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1681FC 8003E49C 0C00F01C */  jal        func_8003C070_165DD0
/* 168200 8003E4A0 00000000 */   nop
/* 168204 8003E4A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 168208 8003E4A8 03E00008 */  jr         $ra
/* 16820C 8003E4AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003E4B0_168210
/* 168210 8003E4B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 168214 8003E4B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 168218 8003E4B8 0C00F8A4 */  jal        func_8003E290_167FF0
/* 16821C 8003E4BC 24040001 */   addiu     $a0, $zero, 1
/* 168220 8003E4C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 168224 8003E4C4 03E00008 */  jr         $ra
/* 168228 8003E4C8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 16822C 8003E4CC 00000000 */  nop
