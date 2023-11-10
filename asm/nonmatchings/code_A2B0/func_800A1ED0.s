glabel func_800A1ED0
/* CAD0 800A1ED0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* CAD4 800A1ED4 AFB00018 */  sw         $s0, 0x18($sp)
/* CAD8 800A1ED8 00808021 */  addu       $s0, $a0, $zero
/* CADC 800A1EDC 00A07821 */  addu       $t7, $a1, $zero
/* CAE0 800A1EE0 AFBE0038 */  sw         $fp, 0x38($sp)
/* CAE4 800A1EE4 AFB70034 */  sw         $s7, 0x34($sp)
/* CAE8 800A1EE8 AFB60030 */  sw         $s6, 0x30($sp)
/* CAEC 800A1EEC AFB5002C */  sw         $s5, 0x2C($sp)
/* CAF0 800A1EF0 AFB40028 */  sw         $s4, 0x28($sp)
/* CAF4 800A1EF4 AFB30024 */  sw         $s3, 0x24($sp)
/* CAF8 800A1EF8 AFB20020 */  sw         $s2, 0x20($sp)
/* CAFC 800A1EFC AFB1001C */  sw         $s1, 0x1C($sp)
/* CB00 800A1F00 8E0800A0 */  lw         $t0, 0xA0($s0)
/* CB04 800A1F04 8E0E0004 */  lw         $t6, 0x4($s0)
/* CB08 800A1F08 3C13E700 */  lui        $s3, (0xE7000000 >> 16)
/* CB0C 800A1F0C 3C1EFD10 */  lui        $fp, (0xFD100000 >> 16)
/* CB10 800A1F10 30C60003 */  andi       $a2, $a2, 0x3
/* CB14 800A1F14 0006CC80 */  sll        $t9, $a2, 18
/* CB18 800A1F18 3C110700 */  lui        $s1, (0x7000000 >> 16)
/* CB1C 800A1F1C 0006C200 */  sll        $t8, $a2, 8
/* CB20 800A1F20 3C14E600 */  lui        $s4, (0xE6000000 >> 16)
/* CB24 800A1F24 3C16F300 */  lui        $s6, (0xF3000000 >> 16)
/* CB28 800A1F28 3C17F200 */  lui        $s7, (0xF2000000 >> 16)
/* CB2C 800A1F2C AFAE0004 */  sw         $t6, 0x4($sp)
/* CB30 800A1F30 8E150008 */  lw         $s5, 0x8($s0)
/* CB34 800A1F34 8E0E000C */  lw         $t6, 0xC($s0)
/* CB38 800A1F38 25E90006 */  addiu      $t1, $t7, 0x6
/* CB3C 800A1F3C 2507FFFC */  addiu      $a3, $t0, -0x4
/* CB40 800A1F40 AFAE000C */  sw         $t6, 0xC($sp)
.L800A1F44:
/* CB44 800A1F44 91E30000 */  lbu        $v1, 0x0($t7)
/* CB48 800A1F48 2C620005 */  sltiu      $v0, $v1, 0x5
.L800A1F4C:
/* CB4C 800A1F4C 1040FFFF */  beqz       $v0, .L800A1F4C
/* CB50 800A1F50 00000000 */   nop
/* CB54 800A1F54 00031080 */  sll        $v0, $v1, 2
/* CB58 800A1F58 3C018010 */  lui        $at, %hi(jtbl_800F9DB8)
/* CB5C 800A1F5C 00220821 */  addu       $at, $at, $v0
/* CB60 800A1F60 8C229DB8 */  lw         $v0, %lo(jtbl_800F9DB8)($at)
/* CB64 800A1F64 00400008 */  jr         $v0
/* CB68 800A1F68 00000000 */   nop
glabel .L800A1F6C
/* CB6C 800A1F6C 24E70008 */  addiu      $a3, $a3, 0x8
/* CB70 800A1F70 25080008 */  addiu      $t0, $t0, 0x8
/* CB74 800A1F74 3C02DF00 */  lui        $v0, (0xDF000000 >> 16)
/* CB78 800A1F78 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CB7C 800A1F7C 0802898D */  j          .L800A2634
/* CB80 800A1F80 ACE00000 */   sw        $zero, 0x0($a3)
glabel .L800A1F84
/* CB84 800A1F84 9122FFFB */  lbu        $v0, -0x5($t1)
/* CB88 800A1F88 8FAE0004 */  lw         $t6, 0x4($sp)
/* CB8C 800A1F8C 000210C0 */  sll        $v0, $v0, 3
/* CB90 800A1F90 004E1021 */  addu       $v0, $v0, $t6
/* CB94 800A1F94 90430005 */  lbu        $v1, 0x5($v0)
/* CB98 800A1F98 8C520000 */  lw         $s2, 0x0($v0)
/* CB9C 800A1F9C 90450004 */  lbu        $a1, 0x4($v0)
/* CBA0 800A1FA0 000370C0 */  sll        $t6, $v1, 3
/* CBA4 800A1FA4 AFAE0014 */  sw         $t6, 0x14($sp)
/* CBA8 800A1FA8 90460006 */  lbu        $a2, 0x6($v0)
/* CBAC 800A1FAC 904D0007 */  lbu        $t5, 0x7($v0)
/* CBB0 800A1FB0 14A00003 */  bnez       $a1, .L800A1FC0
/* CBB4 800A1FB4 02B22021 */   addu      $a0, $s5, $s2
/* CBB8 800A1FB8 080287F2 */  j          .L800A1FC8
/* CBBC 800A1FBC 00805021 */   addu      $t2, $a0, $zero
.L800A1FC0:
/* CBC0 800A1FC0 00031100 */  sll        $v0, $v1, 4
/* CBC4 800A1FC4 00825021 */  addu       $t2, $a0, $v0
.L800A1FC8:
/* CBC8 800A1FC8 00005821 */  addu       $t3, $zero, $zero
/* CBCC 800A1FCC 28C20002 */  slti       $v0, $a2, 0x2
/* CBD0 800A1FD0 14400008 */  bnez       $v0, .L800A1FF4
/* CBD4 800A1FD4 00006021 */   addu      $t4, $zero, $zero
/* CBD8 800A1FD8 258C0001 */  addiu      $t4, $t4, 0x1
.L800A1FDC:
/* CBDC 800A1FDC 01861007 */  srav       $v0, $a2, $t4
/* CBE0 800A1FE0 28420002 */  slti       $v0, $v0, 0x2
/* CBE4 800A1FE4 5040FFFD */  beql       $v0, $zero, .L800A1FDC
/* CBE8 800A1FE8 258C0001 */   addiu     $t4, $t4, 0x1
/* CBEC 800A1FEC 080287FE */  j          .L800A1FF8
/* CBF0 800A1FF0 016D1007 */   srav      $v0, $t5, $t3
.L800A1FF4:
/* CBF4 800A1FF4 016D1007 */  srav       $v0, $t5, $t3
.L800A1FF8:
/* CBF8 800A1FF8 28420002 */  slti       $v0, $v0, 0x2
/* CBFC 800A1FFC 5040FFFD */  beql       $v0, $zero, .L800A1FF4
/* CC00 800A2000 256B0001 */   addiu     $t3, $t3, 0x1
/* CC04 800A2004 24E70008 */  addiu      $a3, $a3, 0x8
/* CC08 800A2008 25080008 */  addiu      $t0, $t0, 0x8
/* CC0C 800A200C ACF3FFFC */  sw         $s3, -0x4($a3)
/* CC10 800A2010 14A0004E */  bnez       $a1, .L800A214C
/* CC14 800A2014 ACE00000 */   sw        $zero, 0x0($a3)
/* CC18 800A2018 24E70008 */  addiu      $a3, $a3, 0x8
/* CC1C 800A201C 3C02E300 */  lui        $v0, (0xE3001001 >> 16)
/* CC20 800A2020 34421001 */  ori        $v0, $v0, (0xE3001001 & 0xFFFF)
/* CC24 800A2024 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CC28 800A2028 ACE00000 */  sw         $zero, 0x0($a3)
/* CC2C 800A202C 24E70008 */  addiu      $a3, $a3, 0x8
/* CC30 800A2030 02B21021 */  addu       $v0, $s5, $s2
/* CC34 800A2034 ACFEFFFC */  sw         $fp, -0x4($a3)
/* CC38 800A2038 ACE20000 */  sw         $v0, 0x0($a3)
/* CC3C 800A203C 24E70008 */  addiu      $a3, $a3, 0x8
/* CC40 800A2040 3C02F510 */  lui        $v0, (0xF5100000 >> 16)
/* CC44 800A2044 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CC48 800A2048 3162000F */  andi       $v0, $t3, 0xF
/* CC4C 800A204C 00021380 */  sll        $v0, $v0, 14
/* CC50 800A2050 00511025 */  or         $v0, $v0, $s1
/* CC54 800A2054 03221025 */  or         $v0, $t9, $v0
/* CC58 800A2058 00581025 */  or         $v0, $v0, $t8
/* CC5C 800A205C 3183000F */  andi       $v1, $t4, 0xF
/* CC60 800A2060 00031900 */  sll        $v1, $v1, 4
/* CC64 800A2064 00431025 */  or         $v0, $v0, $v1
/* CC68 800A2068 ACE20000 */  sw         $v0, 0x0($a3)
/* CC6C 800A206C 24E70008 */  addiu      $a3, $a3, 0x8
/* CC70 800A2070 25080020 */  addiu      $t0, $t0, 0x20
/* CC74 800A2074 ACF4FFFC */  sw         $s4, -0x4($a3)
/* CC78 800A2078 ACE00000 */  sw         $zero, 0x0($a3)
/* CC7C 800A207C 24E70008 */  addiu      $a3, $a3, 0x8
/* CC80 800A2080 01005021 */  addu       $t2, $t0, $zero
/* CC84 800A2084 25080008 */  addiu      $t0, $t0, 0x8
/* CC88 800A2088 00C01021 */  addu       $v0, $a2, $zero
/* CC8C 800A208C 04C10002 */  bgez       $a2, .L800A2098
/* CC90 800A2090 ACF6FFFC */   sw        $s6, -0x4($a3)
/* CC94 800A2094 24C20003 */  addiu      $v0, $a2, 0x3
.L800A2098:
/* CC98 800A2098 00022883 */  sra        $a1, $v0, 2
/* CC9C 800A209C 18A00002 */  blez       $a1, .L800A20A8
/* CCA0 800A20A0 24030800 */   addiu     $v1, $zero, 0x800
/* CCA4 800A20A4 24A307FF */  addiu      $v1, $a1, 0x7FF
.L800A20A8:
/* CCA8 800A20A8 00000000 */  nop
/* CCAC 800A20AC 00CD0018 */  mult       $a2, $t5
/* CCB0 800A20B0 00001012 */  mflo       $v0
/* CCB4 800A20B4 00000000 */  nop
/* CCB8 800A20B8 00000000 */  nop
/* CCBC 800A20BC 2444FFFF */  addiu      $a0, $v0, -0x1
/* CCC0 800A20C0 28820800 */  slti       $v0, $a0, 0x800
/* CCC4 800A20C4 50400001 */  beql       $v0, $zero, .L800A20CC
/* CCC8 800A20C8 240407FF */   addiu     $a0, $zero, 0x7FF
.L800A20CC:
/* CCCC 800A20CC 30820FFF */  andi       $v0, $a0, 0xFFF
/* CCD0 800A20D0 00021300 */  sll        $v0, $v0, 12
/* CCD4 800A20D4 18A00010 */  blez       $a1, .L800A2118
/* CCD8 800A20D8 00512025 */   or        $a0, $v0, $s1
/* CCDC 800A20DC 0065001A */  div        $zero, $v1, $a1
/* CCE0 800A20E0 14A00002 */  bnez       $a1, .L800A20EC
/* CCE4 800A20E4 00000000 */   nop
/* CCE8 800A20E8 0007000D */  break      7
.L800A20EC:
/* CCEC 800A20EC 2401FFFF */  addiu      $at, $zero, -0x1
/* CCF0 800A20F0 14A10004 */  bne        $a1, $at, .L800A2104
/* CCF4 800A20F4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* CCF8 800A20F8 14610002 */  bne        $v1, $at, .L800A2104
/* CCFC 800A20FC 00000000 */   nop
/* CD00 800A2100 0006000D */  break      6
.L800A2104:
/* CD04 800A2104 00001012 */  mflo       $v0
/* CD08 800A2108 00000000 */  nop
/* CD0C 800A210C 00000000 */  nop
/* CD10 800A2110 08028847 */  j          .L800A211C
/* CD14 800A2114 30420FFF */   andi      $v0, $v0, 0xFFF
.L800A2118:
/* CD18 800A2118 30620FFF */  andi       $v0, $v1, 0xFFF
.L800A211C:
/* CD1C 800A211C 00821025 */  or         $v0, $a0, $v0
/* CD20 800A2120 AD420004 */  sw         $v0, 0x4($t2)
/* CD24 800A2124 24E70008 */  addiu      $a3, $a3, 0x8
/* CD28 800A2128 ACF3FFFC */  sw         $s3, -0x4($a3)
/* CD2C 800A212C ACE00000 */  sw         $zero, 0x0($a3)
/* CD30 800A2130 24E70008 */  addiu      $a3, $a3, 0x8
/* CD34 800A2134 00061040 */  sll        $v0, $a2, 1
/* CD38 800A2138 24420007 */  addiu      $v0, $v0, 0x7
/* CD3C 800A213C 000210C2 */  srl        $v0, $v0, 3
/* CD40 800A2140 00021240 */  sll        $v0, $v0, 9
/* CD44 800A2144 0802891F */  j          .L800A247C
/* CD48 800A2148 3C03F510 */   lui       $v1, (0xF5100000 >> 16)
.L800A214C:
/* CD4C 800A214C 24E70008 */  addiu      $a3, $a3, 0x8
/* CD50 800A2150 3C02E300 */  lui        $v0, (0xE3001001 >> 16)
/* CD54 800A2154 34421001 */  ori        $v0, $v0, (0xE3001001 & 0xFFFF)
/* CD58 800A2158 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CD5C 800A215C 34028000 */  ori        $v0, $zero, 0x8000
/* CD60 800A2160 ACE20000 */  sw         $v0, 0x0($a3)
/* CD64 800A2164 8FAE0014 */  lw         $t6, 0x14($sp)
/* CD68 800A2168 24020010 */  addiu      $v0, $zero, 0x10
/* CD6C 800A216C 15C20063 */  bne        $t6, $v0, .L800A22FC
/* CD70 800A2170 25080008 */   addiu     $t0, $t0, 0x8
/* CD74 800A2174 24E70008 */  addiu      $a3, $a3, 0x8
/* CD78 800A2178 ACFEFFFC */  sw         $fp, -0x4($a3)
/* CD7C 800A217C ACE40000 */  sw         $a0, 0x0($a3)
/* CD80 800A2180 24E70008 */  addiu      $a3, $a3, 0x8
/* CD84 800A2184 3C02E800 */  lui        $v0, (0xE8000000 >> 16)
/* CD88 800A2188 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CD8C 800A218C ACE00000 */  sw         $zero, 0x0($a3)
/* CD90 800A2190 24E70008 */  addiu      $a3, $a3, 0x8
/* CD94 800A2194 3C02F500 */  lui        $v0, (0xF5000100 >> 16)
/* CD98 800A2198 34420100 */  ori        $v0, $v0, (0xF5000100 & 0xFFFF)
/* CD9C 800A219C ACE2FFFC */  sw         $v0, -0x4($a3)
/* CDA0 800A21A0 ACF10000 */  sw         $s1, 0x0($a3)
/* CDA4 800A21A4 24E70008 */  addiu      $a3, $a3, 0x8
/* CDA8 800A21A8 ACF4FFFC */  sw         $s4, -0x4($a3)
/* CDAC 800A21AC ACE00000 */  sw         $zero, 0x0($a3)
/* CDB0 800A21B0 24E70008 */  addiu      $a3, $a3, 0x8
/* CDB4 800A21B4 3C030703 */  lui        $v1, (0x703C000 >> 16)
/* CDB8 800A21B8 3463C000 */  ori        $v1, $v1, (0x703C000 & 0xFFFF)
/* CDBC 800A21BC 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* CDC0 800A21C0 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CDC4 800A21C4 ACE30000 */  sw         $v1, 0x0($a3)
/* CDC8 800A21C8 24E70008 */  addiu      $a3, $a3, 0x8
/* CDCC 800A21CC ACF3FFFC */  sw         $s3, -0x4($a3)
/* CDD0 800A21D0 ACE00000 */  sw         $zero, 0x0($a3)
/* CDD4 800A21D4 24E70008 */  addiu      $a3, $a3, 0x8
/* CDD8 800A21D8 3C02FD50 */  lui        $v0, (0xFD500000 >> 16)
/* CDDC 800A21DC ACE2FFFC */  sw         $v0, -0x4($a3)
/* CDE0 800A21E0 ACEA0000 */  sw         $t2, 0x0($a3)
/* CDE4 800A21E4 24E70008 */  addiu      $a3, $a3, 0x8
/* CDE8 800A21E8 3C02F550 */  lui        $v0, (0xF5500000 >> 16)
/* CDEC 800A21EC ACE2FFFC */  sw         $v0, -0x4($a3)
/* CDF0 800A21F0 3162000F */  andi       $v0, $t3, 0xF
/* CDF4 800A21F4 00021380 */  sll        $v0, $v0, 14
/* CDF8 800A21F8 00511025 */  or         $v0, $v0, $s1
/* CDFC 800A21FC 03221025 */  or         $v0, $t9, $v0
/* CE00 800A2200 00581025 */  or         $v0, $v0, $t8
/* CE04 800A2204 3183000F */  andi       $v1, $t4, 0xF
/* CE08 800A2208 00031900 */  sll        $v1, $v1, 4
/* CE0C 800A220C 00431025 */  or         $v0, $v0, $v1
/* CE10 800A2210 ACE20000 */  sw         $v0, 0x0($a3)
/* CE14 800A2214 24E70008 */  addiu      $a3, $a3, 0x8
/* CE18 800A2218 25080048 */  addiu      $t0, $t0, 0x48
/* CE1C 800A221C ACF4FFFC */  sw         $s4, -0x4($a3)
/* CE20 800A2220 ACE00000 */  sw         $zero, 0x0($a3)
/* CE24 800A2224 24E70008 */  addiu      $a3, $a3, 0x8
/* CE28 800A2228 01005021 */  addu       $t2, $t0, $zero
/* CE2C 800A222C 25080008 */  addiu      $t0, $t0, 0x8
/* CE30 800A2230 00C01021 */  addu       $v0, $a2, $zero
/* CE34 800A2234 04C10002 */  bgez       $a2, .L800A2240
/* CE38 800A2238 ACF6FFFC */   sw        $s6, -0x4($a3)
/* CE3C 800A223C 24C2000F */  addiu      $v0, $a2, 0xF
.L800A2240:
/* CE40 800A2240 00022903 */  sra        $a1, $v0, 4
/* CE44 800A2244 18A00002 */  blez       $a1, .L800A2250
/* CE48 800A2248 24030800 */   addiu     $v1, $zero, 0x800
/* CE4C 800A224C 24A307FF */  addiu      $v1, $a1, 0x7FF
.L800A2250:
/* CE50 800A2250 00000000 */  nop
/* CE54 800A2254 00CD0018 */  mult       $a2, $t5
/* CE58 800A2258 00001012 */  mflo       $v0
/* CE5C 800A225C 00000000 */  nop
/* CE60 800A2260 00000000 */  nop
/* CE64 800A2264 24420003 */  addiu      $v0, $v0, 0x3
/* CE68 800A2268 00021083 */  sra        $v0, $v0, 2
/* CE6C 800A226C 2444FFFF */  addiu      $a0, $v0, -0x1
/* CE70 800A2270 28820800 */  slti       $v0, $a0, 0x800
/* CE74 800A2274 50400001 */  beql       $v0, $zero, .L800A227C
/* CE78 800A2278 240407FF */   addiu     $a0, $zero, 0x7FF
.L800A227C:
/* CE7C 800A227C 30820FFF */  andi       $v0, $a0, 0xFFF
/* CE80 800A2280 00021300 */  sll        $v0, $v0, 12
/* CE84 800A2284 18A00010 */  blez       $a1, .L800A22C8
/* CE88 800A2288 00512025 */   or        $a0, $v0, $s1
/* CE8C 800A228C 0065001A */  div        $zero, $v1, $a1
/* CE90 800A2290 14A00002 */  bnez       $a1, .L800A229C
/* CE94 800A2294 00000000 */   nop
/* CE98 800A2298 0007000D */  break      7
.L800A229C:
/* CE9C 800A229C 2401FFFF */  addiu      $at, $zero, -0x1
/* CEA0 800A22A0 14A10004 */  bne        $a1, $at, .L800A22B4
/* CEA4 800A22A4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* CEA8 800A22A8 14610002 */  bne        $v1, $at, .L800A22B4
/* CEAC 800A22AC 00000000 */   nop
/* CEB0 800A22B0 0006000D */  break      6
.L800A22B4:
/* CEB4 800A22B4 00001012 */  mflo       $v0
/* CEB8 800A22B8 00000000 */  nop
/* CEBC 800A22BC 00000000 */  nop
/* CEC0 800A22C0 080288B3 */  j          .L800A22CC
/* CEC4 800A22C4 30420FFF */   andi      $v0, $v0, 0xFFF
.L800A22C8:
/* CEC8 800A22C8 30620FFF */  andi       $v0, $v1, 0xFFF
.L800A22CC:
/* CECC 800A22CC 00821025 */  or         $v0, $a0, $v0
/* CED0 800A22D0 AD420004 */  sw         $v0, 0x4($t2)
/* CED4 800A22D4 24E70008 */  addiu      $a3, $a3, 0x8
/* CED8 800A22D8 ACF3FFFC */  sw         $s3, -0x4($a3)
/* CEDC 800A22DC ACE00000 */  sw         $zero, 0x0($a3)
/* CEE0 800A22E0 24E70008 */  addiu      $a3, $a3, 0x8
/* CEE4 800A22E4 00061043 */  sra        $v0, $a2, 1
/* CEE8 800A22E8 24420007 */  addiu      $v0, $v0, 0x7
/* CEEC 800A22EC 000210C2 */  srl        $v0, $v0, 3
/* CEF0 800A22F0 00021240 */  sll        $v0, $v0, 9
/* CEF4 800A22F4 0802891F */  j          .L800A247C
/* CEF8 800A22F8 3C03F540 */   lui       $v1, (0xF5400000 >> 16)
.L800A22FC:
/* CEFC 800A22FC 24E70008 */  addiu      $a3, $a3, 0x8
/* CF00 800A2300 ACFEFFFC */  sw         $fp, -0x4($a3)
/* CF04 800A2304 ACE40000 */  sw         $a0, 0x0($a3)
/* CF08 800A2308 24E70008 */  addiu      $a3, $a3, 0x8
/* CF0C 800A230C 3C02E800 */  lui        $v0, (0xE8000000 >> 16)
/* CF10 800A2310 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CF14 800A2314 ACE00000 */  sw         $zero, 0x0($a3)
/* CF18 800A2318 24E70008 */  addiu      $a3, $a3, 0x8
/* CF1C 800A231C 3C02F500 */  lui        $v0, (0xF5000100 >> 16)
/* CF20 800A2320 34420100 */  ori        $v0, $v0, (0xF5000100 & 0xFFFF)
/* CF24 800A2324 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CF28 800A2328 ACF10000 */  sw         $s1, 0x0($a3)
/* CF2C 800A232C 24E70008 */  addiu      $a3, $a3, 0x8
/* CF30 800A2330 ACF4FFFC */  sw         $s4, -0x4($a3)
/* CF34 800A2334 ACE00000 */  sw         $zero, 0x0($a3)
/* CF38 800A2338 24E70008 */  addiu      $a3, $a3, 0x8
/* CF3C 800A233C 3C03073F */  lui        $v1, (0x73FC000 >> 16)
/* CF40 800A2340 3463C000 */  ori        $v1, $v1, (0x73FC000 & 0xFFFF)
/* CF44 800A2344 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* CF48 800A2348 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CF4C 800A234C ACE30000 */  sw         $v1, 0x0($a3)
/* CF50 800A2350 24E70008 */  addiu      $a3, $a3, 0x8
/* CF54 800A2354 ACF3FFFC */  sw         $s3, -0x4($a3)
/* CF58 800A2358 ACE00000 */  sw         $zero, 0x0($a3)
/* CF5C 800A235C 24E70008 */  addiu      $a3, $a3, 0x8
/* CF60 800A2360 3C02FD50 */  lui        $v0, (0xFD500000 >> 16)
/* CF64 800A2364 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CF68 800A2368 ACEA0000 */  sw         $t2, 0x0($a3)
/* CF6C 800A236C 24E70008 */  addiu      $a3, $a3, 0x8
/* CF70 800A2370 3C02F550 */  lui        $v0, (0xF5500000 >> 16)
/* CF74 800A2374 ACE2FFFC */  sw         $v0, -0x4($a3)
/* CF78 800A2378 3162000F */  andi       $v0, $t3, 0xF
/* CF7C 800A237C 00021380 */  sll        $v0, $v0, 14
/* CF80 800A2380 00511025 */  or         $v0, $v0, $s1
/* CF84 800A2384 03221025 */  or         $v0, $t9, $v0
/* CF88 800A2388 00581025 */  or         $v0, $v0, $t8
/* CF8C 800A238C 3183000F */  andi       $v1, $t4, 0xF
/* CF90 800A2390 00031900 */  sll        $v1, $v1, 4
/* CF94 800A2394 00431025 */  or         $v0, $v0, $v1
/* CF98 800A2398 ACE20000 */  sw         $v0, 0x0($a3)
/* CF9C 800A239C 24E70008 */  addiu      $a3, $a3, 0x8
/* CFA0 800A23A0 25080048 */  addiu      $t0, $t0, 0x48
/* CFA4 800A23A4 ACF4FFFC */  sw         $s4, -0x4($a3)
/* CFA8 800A23A8 ACE00000 */  sw         $zero, 0x0($a3)
/* CFAC 800A23AC 24E70008 */  addiu      $a3, $a3, 0x8
/* CFB0 800A23B0 01005021 */  addu       $t2, $t0, $zero
/* CFB4 800A23B4 25080008 */  addiu      $t0, $t0, 0x8
/* CFB8 800A23B8 00C01021 */  addu       $v0, $a2, $zero
/* CFBC 800A23BC 04C10002 */  bgez       $a2, .L800A23C8
/* CFC0 800A23C0 ACF6FFFC */   sw        $s6, -0x4($a3)
/* CFC4 800A23C4 24C20007 */  addiu      $v0, $a2, 0x7
.L800A23C8:
/* CFC8 800A23C8 000228C3 */  sra        $a1, $v0, 3
/* CFCC 800A23CC 18A00002 */  blez       $a1, .L800A23D8
/* CFD0 800A23D0 24030800 */   addiu     $v1, $zero, 0x800
/* CFD4 800A23D4 24A307FF */  addiu      $v1, $a1, 0x7FF
.L800A23D8:
/* CFD8 800A23D8 00000000 */  nop
/* CFDC 800A23DC 00CD0018 */  mult       $a2, $t5
/* CFE0 800A23E0 00001012 */  mflo       $v0
/* CFE4 800A23E4 00000000 */  nop
/* CFE8 800A23E8 00000000 */  nop
/* CFEC 800A23EC 24420001 */  addiu      $v0, $v0, 0x1
/* CFF0 800A23F0 00021043 */  sra        $v0, $v0, 1
/* CFF4 800A23F4 2444FFFF */  addiu      $a0, $v0, -0x1
/* CFF8 800A23F8 28820800 */  slti       $v0, $a0, 0x800
/* CFFC 800A23FC 50400001 */  beql       $v0, $zero, .L800A2404
/* D000 800A2400 240407FF */   addiu     $a0, $zero, 0x7FF
.L800A2404:
/* D004 800A2404 30820FFF */  andi       $v0, $a0, 0xFFF
/* D008 800A2408 00021300 */  sll        $v0, $v0, 12
/* D00C 800A240C 18A00010 */  blez       $a1, .L800A2450
/* D010 800A2410 00512025 */   or        $a0, $v0, $s1
/* D014 800A2414 0065001A */  div        $zero, $v1, $a1
/* D018 800A2418 14A00002 */  bnez       $a1, .L800A2424
/* D01C 800A241C 00000000 */   nop
/* D020 800A2420 0007000D */  break      7
.L800A2424:
/* D024 800A2424 2401FFFF */  addiu      $at, $zero, -0x1
/* D028 800A2428 14A10004 */  bne        $a1, $at, .L800A243C
/* D02C 800A242C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* D030 800A2430 14610002 */  bne        $v1, $at, .L800A243C
/* D034 800A2434 00000000 */   nop
/* D038 800A2438 0006000D */  break      6
.L800A243C:
/* D03C 800A243C 00001012 */  mflo       $v0
/* D040 800A2440 00000000 */  nop
/* D044 800A2444 00000000 */  nop
/* D048 800A2448 08028915 */  j          .L800A2454
/* D04C 800A244C 30420FFF */   andi      $v0, $v0, 0xFFF
.L800A2450:
/* D050 800A2450 30620FFF */  andi       $v0, $v1, 0xFFF
.L800A2454:
/* D054 800A2454 00821025 */  or         $v0, $a0, $v0
/* D058 800A2458 AD420004 */  sw         $v0, 0x4($t2)
/* D05C 800A245C 24E70008 */  addiu      $a3, $a3, 0x8
/* D060 800A2460 ACF3FFFC */  sw         $s3, -0x4($a3)
/* D064 800A2464 ACE00000 */  sw         $zero, 0x0($a3)
/* D068 800A2468 24E70008 */  addiu      $a3, $a3, 0x8
/* D06C 800A246C 24C20007 */  addiu      $v0, $a2, 0x7
/* D070 800A2470 000210C2 */  srl        $v0, $v0, 3
/* D074 800A2474 00021240 */  sll        $v0, $v0, 9
/* D078 800A2478 3C03F548 */  lui        $v1, (0xF5480000 >> 16)
.L800A247C:
/* D07C 800A247C 00431025 */  or         $v0, $v0, $v1
/* D080 800A2480 3163000F */  andi       $v1, $t3, 0xF
/* D084 800A2484 00031B80 */  sll        $v1, $v1, 14
/* D088 800A2488 03231825 */  or         $v1, $t9, $v1
/* D08C 800A248C 00781825 */  or         $v1, $v1, $t8
/* D090 800A2490 ACE2FFFC */  sw         $v0, -0x4($a3)
/* D094 800A2494 3182000F */  andi       $v0, $t4, 0xF
/* D098 800A2498 00021100 */  sll        $v0, $v0, 4
/* D09C 800A249C 00621825 */  or         $v1, $v1, $v0
/* D0A0 800A24A0 ACE30000 */  sw         $v1, 0x0($a3)
/* D0A4 800A24A4 24E70008 */  addiu      $a3, $a3, 0x8
/* D0A8 800A24A8 25080018 */  addiu      $t0, $t0, 0x18
/* D0AC 800A24AC 24C3FFFF */  addiu      $v1, $a2, -0x1
/* D0B0 800A24B0 00031880 */  sll        $v1, $v1, 2
/* D0B4 800A24B4 30630FFF */  andi       $v1, $v1, 0xFFF
/* D0B8 800A24B8 00031B00 */  sll        $v1, $v1, 12
/* D0BC 800A24BC 25A2FFFF */  addiu      $v0, $t5, -0x1
/* D0C0 800A24C0 00021080 */  sll        $v0, $v0, 2
/* D0C4 800A24C4 30420FFF */  andi       $v0, $v0, 0xFFF
/* D0C8 800A24C8 00621825 */  or         $v1, $v1, $v0
/* D0CC 800A24CC ACF7FFFC */  sw         $s7, -0x4($a3)
/* D0D0 800A24D0 ACE30000 */  sw         $v1, 0x0($a3)
/* D0D4 800A24D4 9122FFFB */  lbu        $v0, -0x5($t1)
/* D0D8 800A24D8 25290002 */  addiu      $t1, $t1, 0x2
/* D0DC 800A24DC 25EF0002 */  addiu      $t7, $t7, 0x2
/* D0E0 800A24E0 8E030004 */  lw         $v1, 0x4($s0)
/* D0E4 800A24E4 8E040008 */  lw         $a0, 0x8($s0)
/* D0E8 800A24E8 000210C0 */  sll        $v0, $v0, 3
/* D0EC 800A24EC 00621821 */  addu       $v1, $v1, $v0
/* D0F0 800A24F0 00922021 */  addu       $a0, $a0, $s2
/* D0F4 800A24F4 AE030004 */  sw         $v1, 0x4($s0)
/* D0F8 800A24F8 080287D1 */  j          .L800A1F44
/* D0FC 800A24FC AE040008 */   sw        $a0, 0x8($s0)
glabel .L800A2500
/* D100 800A2500 24E70008 */  addiu      $a3, $a3, 0x8
/* D104 800A2504 25080008 */  addiu      $t0, $t0, 0x8
/* D108 800A2508 9124FFFB */  lbu        $a0, -0x5($t1)
/* D10C 800A250C 9126FFFC */  lbu        $a2, -0x4($t1)
/* D110 800A2510 9123FFFD */  lbu        $v1, -0x3($t1)
/* D114 800A2514 9122FFFE */  lbu        $v0, -0x2($t1)
/* D118 800A2518 25290005 */  addiu      $t1, $t1, 0x5
/* D11C 800A251C 25EF0005 */  addiu      $t7, $t7, 0x5
/* D120 800A2520 00032B00 */  sll        $a1, $v1, 12
/* D124 800A2524 00431021 */  addu       $v0, $v0, $v1
/* D128 800A2528 3042007F */  andi       $v0, $v0, 0x7F
/* D12C 800A252C 00021040 */  sll        $v0, $v0, 1
/* D130 800A2530 3C030100 */  lui        $v1, (0x1000000 >> 16)
/* D134 800A2534 00431025 */  or         $v0, $v0, $v1
/* D138 800A2538 00A22825 */  or         $a1, $a1, $v0
/* D13C 800A253C 00042200 */  sll        $a0, $a0, 8
/* D140 800A2540 ACE5FFFC */  sw         $a1, -0x4($a3)
/* D144 800A2544 8FAE000C */  lw         $t6, 0xC($sp)
/* D148 800A2548 00862021 */  addu       $a0, $a0, $a2
/* D14C 800A254C 00042100 */  sll        $a0, $a0, 4
/* D150 800A2550 01C42021 */  addu       $a0, $t6, $a0
/* D154 800A2554 080287D1 */  j          .L800A1F44
/* D158 800A2558 ACE40000 */   sw        $a0, 0x0($a3)
glabel .L800A255C
/* D15C 800A255C 24E70008 */  addiu      $a3, $a3, 0x8
/* D160 800A2560 25080008 */  addiu      $t0, $t0, 0x8
/* D164 800A2564 9123FFFB */  lbu        $v1, -0x5($t1)
/* D168 800A2568 9122FFFC */  lbu        $v0, -0x4($t1)
/* D16C 800A256C 9124FFFD */  lbu        $a0, -0x3($t1)
/* D170 800A2570 25290004 */  addiu      $t1, $t1, 0x4
/* D174 800A2574 25EF0004 */  addiu      $t7, $t7, 0x4
/* D178 800A2578 ACE00000 */  sw         $zero, 0x0($a3)
/* D17C 800A257C 00031840 */  sll        $v1, $v1, 1
/* D180 800A2580 306300FF */  andi       $v1, $v1, 0xFF
/* D184 800A2584 00031C00 */  sll        $v1, $v1, 16
/* D188 800A2588 00021240 */  sll        $v0, $v0, 9
/* D18C 800A258C 3042FE00 */  andi       $v0, $v0, 0xFE00
/* D190 800A2590 00621825 */  or         $v1, $v1, $v0
/* D194 800A2594 00042040 */  sll        $a0, $a0, 1
/* D198 800A2598 308400FF */  andi       $a0, $a0, 0xFF
/* D19C 800A259C 00641825 */  or         $v1, $v1, $a0
/* D1A0 800A25A0 3C020500 */  lui        $v0, (0x5000000 >> 16)
/* D1A4 800A25A4 00621825 */  or         $v1, $v1, $v0
/* D1A8 800A25A8 080287D1 */  j          .L800A1F44
/* D1AC 800A25AC ACE3FFFC */   sw        $v1, -0x4($a3)
glabel .L800A25B0
/* D1B0 800A25B0 24E70008 */  addiu      $a3, $a3, 0x8
/* D1B4 800A25B4 9123FFFB */  lbu        $v1, -0x5($t1)
/* D1B8 800A25B8 25080008 */  addiu      $t0, $t0, 0x8
/* D1BC 800A25BC 25EF0007 */  addiu      $t7, $t7, 0x7
/* D1C0 800A25C0 9124FFFC */  lbu        $a0, -0x4($t1)
/* D1C4 800A25C4 9122FFFD */  lbu        $v0, -0x3($t1)
/* D1C8 800A25C8 00031840 */  sll        $v1, $v1, 1
/* D1CC 800A25CC 306300FF */  andi       $v1, $v1, 0xFF
/* D1D0 800A25D0 00031C00 */  sll        $v1, $v1, 16
/* D1D4 800A25D4 00042240 */  sll        $a0, $a0, 9
/* D1D8 800A25D8 3084FE00 */  andi       $a0, $a0, 0xFE00
/* D1DC 800A25DC 00641825 */  or         $v1, $v1, $a0
/* D1E0 800A25E0 00021040 */  sll        $v0, $v0, 1
/* D1E4 800A25E4 304200FF */  andi       $v0, $v0, 0xFF
/* D1E8 800A25E8 00621825 */  or         $v1, $v1, $v0
/* D1EC 800A25EC 3C020600 */  lui        $v0, (0x6000000 >> 16)
/* D1F0 800A25F0 00621825 */  or         $v1, $v1, $v0
/* D1F4 800A25F4 ACE3FFFC */  sw         $v1, -0x4($a3)
/* D1F8 800A25F8 9122FFFE */  lbu        $v0, -0x2($t1)
/* D1FC 800A25FC 9123FFFF */  lbu        $v1, -0x1($t1)
/* D200 800A2600 91240000 */  lbu        $a0, 0x0($t1)
/* D204 800A2604 25290007 */  addiu      $t1, $t1, 0x7
/* D208 800A2608 00021040 */  sll        $v0, $v0, 1
/* D20C 800A260C 304200FF */  andi       $v0, $v0, 0xFF
/* D210 800A2610 00021400 */  sll        $v0, $v0, 16
/* D214 800A2614 00031A40 */  sll        $v1, $v1, 9
/* D218 800A2618 3063FE00 */  andi       $v1, $v1, 0xFE00
/* D21C 800A261C 00431025 */  or         $v0, $v0, $v1
/* D220 800A2620 00042040 */  sll        $a0, $a0, 1
/* D224 800A2624 308400FF */  andi       $a0, $a0, 0xFF
/* D228 800A2628 00441025 */  or         $v0, $v0, $a0
/* D22C 800A262C 080287D1 */  j          .L800A1F44
/* D230 800A2630 ACE20000 */   sw        $v0, 0x0($a3)
.L800A2634:
/* D234 800A2634 01001021 */  addu       $v0, $t0, $zero
/* D238 800A2638 8FBE0038 */  lw         $fp, 0x38($sp)
/* D23C 800A263C 8FB70034 */  lw         $s7, 0x34($sp)
/* D240 800A2640 8FB60030 */  lw         $s6, 0x30($sp)
/* D244 800A2644 8FB5002C */  lw         $s5, 0x2C($sp)
/* D248 800A2648 8FB40028 */  lw         $s4, 0x28($sp)
/* D24C 800A264C 8FB30024 */  lw         $s3, 0x24($sp)
/* D250 800A2650 8FB20020 */  lw         $s2, 0x20($sp)
/* D254 800A2654 8FB1001C */  lw         $s1, 0x1C($sp)
/* D258 800A2658 8FB00018 */  lw         $s0, 0x18($sp)
/* D25C 800A265C 27BD0040 */  addiu      $sp, $sp, 0x40
/* D260 800A2660 03E00008 */  jr         $ra
/* D264 800A2664 00000000 */   nop
/* D268 800A2668 00000000 */  nop
/* D26C 800A266C 00000000 */  nop
.size func_800A1ED0, . - func_800A1ED0
