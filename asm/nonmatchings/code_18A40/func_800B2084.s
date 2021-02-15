.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2084
/* 1CC84 800B2084 3C028010 */  lui        $v0, %hi(D_801029B8)
/* 1CC88 800B2088 8C4229B8 */  lw         $v0, %lo(D_801029B8)($v0)
/* 1CC8C 800B208C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1CC90 800B2090 1040000C */  beqz       $v0, .L800B20C4
/* 1CC94 800B2094 AFBF0018 */   sw        $ra, 0x18($sp)
.L800B2098:
/* 1CC98 800B2098 3C048010 */  lui        $a0, %hi(D_801029C0)
/* 1CC9C 800B209C 248429C0 */  addiu      $a0, $a0, %lo(D_801029C0)
/* 1CCA0 800B20A0 27A50010 */  addiu      $a1, $sp, 0x10
/* 1CCA4 800B20A4 0C030200 */  jal        func_800C0800
/* 1CCA8 800B20A8 00003021 */   addu      $a2, $zero, $zero
/* 1CCAC 800B20AC 3C028010 */  lui        $v0, %hi(D_801029B8)
/* 1CCB0 800B20B0 8C4229B8 */  lw         $v0, %lo(D_801029B8)($v0)
/* 1CCB4 800B20B4 2442FFFF */  addiu      $v0, $v0, -1
/* 1CCB8 800B20B8 3C018010 */  lui        $at, %hi(D_801029B8)
/* 1CCBC 800B20BC 1440FFF6 */  bnez       $v0, .L800B2098
/* 1CCC0 800B20C0 AC2229B8 */   sw        $v0, %lo(D_801029B8)($at)
.L800B20C4:
/* 1CCC4 800B20C4 3C038010 */  lui        $v1, %hi(D_801029A0)
/* 1CCC8 800B20C8 8C6329A0 */  lw         $v1, %lo(D_801029A0)($v1)
/* 1CCCC 800B20CC 1060001E */  beqz       $v1, .L800B2148
/* 1CCD0 800B20D0 00000000 */   nop
.L800B20D4:
/* 1CCD4 800B20D4 8C620008 */  lw         $v0, 8($v1)
/* 1CCD8 800B20D8 2442FFFF */  addiu      $v0, $v0, -1
/* 1CCDC 800B20DC 14400017 */  bnez       $v0, .L800B213C
/* 1CCE0 800B20E0 AC620008 */   sw        $v0, 8($v1)
/* 1CCE4 800B20E4 8C650004 */  lw         $a1, 4($v1)
/* 1CCE8 800B20E8 10A00003 */  beqz       $a1, .L800B20F8
/* 1CCEC 800B20EC 00000000 */   nop
/* 1CCF0 800B20F0 8C620000 */  lw         $v0, ($v1)
/* 1CCF4 800B20F4 ACA20000 */  sw         $v0, ($a1)
.L800B20F8:
/* 1CCF8 800B20F8 8C640000 */  lw         $a0, ($v1)
/* 1CCFC 800B20FC 10800004 */  beqz       $a0, .L800B2110
/* 1CD00 800B2100 00000000 */   nop
/* 1CD04 800B2104 8C620004 */  lw         $v0, 4($v1)
/* 1CD08 800B2108 0802C847 */  j          .L800B211C
/* 1CD0C 800B210C AC820004 */   sw        $v0, 4($a0)
.L800B2110:
/* 1CD10 800B2110 8C620004 */  lw         $v0, 4($v1)
/* 1CD14 800B2114 3C018010 */  lui        $at, %hi(D_801029A0)
/* 1CD18 800B2118 AC2229A0 */  sw         $v0, %lo(D_801029A0)($at)
.L800B211C:
/* 1CD1C 800B211C 3C028010 */  lui        $v0, %hi(D_801029A4)
/* 1CD20 800B2120 8C4229A4 */  lw         $v0, %lo(D_801029A4)($v0)
/* 1CD24 800B2124 AC600000 */  sw         $zero, ($v1)
/* 1CD28 800B2128 3C018010 */  lui        $at, %hi(D_801029A4)
/* 1CD2C 800B212C AC2329A4 */  sw         $v1, %lo(D_801029A4)($at)
/* 1CD30 800B2130 AC620004 */  sw         $v0, 4($v1)
/* 1CD34 800B2134 0802C850 */  j          .L800B2140
/* 1CD38 800B2138 00A01821 */   addu      $v1, $a1, $zero
.L800B213C:
/* 1CD3C 800B213C 8C630004 */  lw         $v1, 4($v1)
.L800B2140:
/* 1CD40 800B2140 1460FFE4 */  bnez       $v1, .L800B20D4
/* 1CD44 800B2144 00000000 */   nop
.L800B2148:
/* 1CD48 800B2148 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1CD4C 800B214C 03E00008 */  jr         $ra
/* 1CD50 800B2150 27BD0020 */   addiu     $sp, $sp, 0x20
