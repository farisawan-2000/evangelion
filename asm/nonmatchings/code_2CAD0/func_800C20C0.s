.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C20C0
/* 2CCC0 800C20C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2CCC4 800C20C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 2CCC8 800C20C8 00809021 */  addu       $s2, $a0, $zero
/* 2CCCC 800C20CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 2CCD0 800C20D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 2CCD4 800C20D4 0C0319D0 */  jal        func_800C6740
/* 2CCD8 800C20D8 AFB00010 */   sw        $s0, 0x10($sp)
/* 2CCDC 800C20DC 3C03800F */  lui        $v1, %hi(D_800F69D0)
/* 2CCE0 800C20E0 8C6369D0 */  lw         $v1, %lo(D_800F69D0)($v1)
/* 2CCE4 800C20E4 8C660000 */  lw         $a2, ($v1)
/* 2CCE8 800C20E8 8E500010 */  lw         $s0, 0x10($s2)
/* 2CCEC 800C20EC 8E510014 */  lw         $s1, 0x14($s2)
/* 2CCF0 800C20F0 10C30017 */  beq        $a2, $v1, .L800C2150
/* 2CCF4 800C20F4 00403821 */   addu      $a3, $v0, $zero
/* 2CCF8 800C20F8 0803084A */  j          .L800C2128
/* 2CCFC 800C20FC 00000000 */   nop
.L800C2100:
/* 2CD00 800C2100 8CC20010 */  lw         $v0, 0x10($a2)
/* 2CD04 800C2104 8CC30014 */  lw         $v1, 0x14($a2)
/* 2CD08 800C2108 8CC60000 */  lw         $a2, ($a2)
/* 2CD0C 800C210C 3C04800F */  lui        $a0, %hi(D_800F69D0)
/* 2CD10 800C2110 8C8469D0 */  lw         $a0, %lo(D_800F69D0)($a0)
/* 2CD14 800C2114 0223282B */  sltu       $a1, $s1, $v1
/* 2CD18 800C2118 02238823 */  subu       $s1, $s1, $v1
/* 2CD1C 800C211C 02028023 */  subu       $s0, $s0, $v0
/* 2CD20 800C2120 10C4000B */  beq        $a2, $a0, .L800C2150
/* 2CD24 800C2124 02058023 */   subu      $s0, $s0, $a1
.L800C2128:
/* 2CD28 800C2128 8CC30010 */  lw         $v1, 0x10($a2)
/* 2CD2C 800C212C 0070102B */  sltu       $v0, $v1, $s0
/* 2CD30 800C2130 1440FFF3 */  bnez       $v0, .L800C2100
/* 2CD34 800C2134 00000000 */   nop
/* 2CD38 800C2138 16030005 */  bne        $s0, $v1, .L800C2150
/* 2CD3C 800C213C 00000000 */   nop
/* 2CD40 800C2140 8CC20014 */  lw         $v0, 0x14($a2)
/* 2CD44 800C2144 0051102B */  sltu       $v0, $v0, $s1
/* 2CD48 800C2148 1440FFED */  bnez       $v0, .L800C2100
/* 2CD4C 800C214C 00000000 */   nop
.L800C2150:
/* 2CD50 800C2150 3C02800F */  lui        $v0, %hi(D_800F69D0)
/* 2CD54 800C2154 8C4269D0 */  lw         $v0, %lo(D_800F69D0)($v0)
/* 2CD58 800C2158 AE500010 */  sw         $s0, 0x10($s2)
/* 2CD5C 800C215C AE510014 */  sw         $s1, 0x14($s2)
/* 2CD60 800C2160 50C2000A */  beql       $a2, $v0, .L800C218C
/* 2CD64 800C2164 AE460000 */   sw        $a2, ($s2)
/* 2CD68 800C2168 8CC20010 */  lw         $v0, 0x10($a2)
/* 2CD6C 800C216C 8CC30014 */  lw         $v1, 0x14($a2)
/* 2CD70 800C2170 0071202B */  sltu       $a0, $v1, $s1
/* 2CD74 800C2174 00711823 */  subu       $v1, $v1, $s1
/* 2CD78 800C2178 00501023 */  subu       $v0, $v0, $s0
/* 2CD7C 800C217C 00441023 */  subu       $v0, $v0, $a0
/* 2CD80 800C2180 ACC20010 */  sw         $v0, 0x10($a2)
/* 2CD84 800C2184 ACC30014 */  sw         $v1, 0x14($a2)
/* 2CD88 800C2188 AE460000 */  sw         $a2, ($s2)
.L800C218C:
/* 2CD8C 800C218C 8CC20004 */  lw         $v0, 4($a2)
/* 2CD90 800C2190 AE420004 */  sw         $v0, 4($s2)
/* 2CD94 800C2194 8CC20004 */  lw         $v0, 4($a2)
/* 2CD98 800C2198 00E02021 */  addu       $a0, $a3, $zero
/* 2CD9C 800C219C AC520000 */  sw         $s2, ($v0)
/* 2CDA0 800C21A0 0C0319EC */  jal        func_800C67B0
/* 2CDA4 800C21A4 ACD20004 */   sw        $s2, 4($a2)
/* 2CDA8 800C21A8 02001021 */  addu       $v0, $s0, $zero
/* 2CDAC 800C21AC 02201821 */  addu       $v1, $s1, $zero
/* 2CDB0 800C21B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2CDB4 800C21B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 2CDB8 800C21B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 2CDBC 800C21BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CDC0 800C21C0 03E00008 */  jr         $ra
/* 2CDC4 800C21C4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2CDC8 800C21C8 00000000 */  nop
/* 2CDCC 800C21CC 00000000 */  nop
