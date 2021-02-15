.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C21D0
/* 2CDD0 800C21D0 40085000 */  mfc0       $t0, $10
/* 2CDD4 800C21D4 310900FF */  andi       $t1, $t0, 0xff
/* 2CDD8 800C21D8 2401E000 */  addiu      $at, $zero, -0x2000
/* 2CDDC 800C21DC 00815024 */  and        $t2, $a0, $at
/* 2CDE0 800C21E0 012A4825 */  or         $t1, $t1, $t2
/* 2CDE4 800C21E4 40895000 */  mtc0       $t1, $10
/* 2CDE8 800C21E8 00000000 */  nop
/* 2CDEC 800C21EC 00000000 */  nop
/* 2CDF0 800C21F0 00000000 */  nop
/* 2CDF4 800C21F4 42000008 */  tlbp
/* 2CDF8 800C21F8 00000000 */  nop
/* 2CDFC 800C21FC 00000000 */  nop
/* 2CE00 800C2200 400B0000 */  mfc0       $t3, $0
/* 2CE04 800C2204 3C018000 */  lui        $at, 0x8000
/* 2CE08 800C2208 01615824 */  and        $t3, $t3, $at
/* 2CE0C 800C220C 1560001A */  bnez       $t3, .L800C2278
/* 2CE10 800C2210 00000000 */   nop
/* 2CE14 800C2214 42000001 */  tlbr
/* 2CE18 800C2218 00000000 */  nop
/* 2CE1C 800C221C 00000000 */  nop
/* 2CE20 800C2220 00000000 */  nop
/* 2CE24 800C2224 400B2800 */  mfc0       $t3, $5
/* 2CE28 800C2228 216B2000 */  addi       $t3, $t3, 0x2000
/* 2CE2C 800C222C 000B5842 */  srl        $t3, $t3, 1
/* 2CE30 800C2230 01646024 */  and        $t4, $t3, $a0
/* 2CE34 800C2234 15800004 */  bnez       $t4, .L800C2248
/* 2CE38 800C2238 216BFFFF */   addi      $t3, $t3, -1
/* 2CE3C 800C223C 40021000 */  mfc0       $v0, $2
/* 2CE40 800C2240 10000002 */  b          .L800C224C
/* 2CE44 800C2244 00000000 */   nop
.L800C2248:
/* 2CE48 800C2248 40021800 */  mfc0       $v0, $3
.L800C224C:
/* 2CE4C 800C224C 304D0002 */  andi       $t5, $v0, 2
/* 2CE50 800C2250 11A00009 */  beqz       $t5, .L800C2278
/* 2CE54 800C2254 00000000 */   nop
/* 2CE58 800C2258 3C013FFF */  lui        $at, 0x3fff
/* 2CE5C 800C225C 3421FFC0 */  ori        $at, $at, 0xffc0
/* 2CE60 800C2260 00411024 */  and        $v0, $v0, $at
/* 2CE64 800C2264 00021180 */  sll        $v0, $v0, 6
/* 2CE68 800C2268 008B6824 */  and        $t5, $a0, $t3
/* 2CE6C 800C226C 004D1020 */  add        $v0, $v0, $t5
/* 2CE70 800C2270 10000002 */  b          .L800C227C
/* 2CE74 800C2274 00000000 */   nop
.L800C2278:
/* 2CE78 800C2278 2402FFFF */  addiu      $v0, $zero, -1
.L800C227C:
/* 2CE7C 800C227C 40885000 */  mtc0       $t0, $10
/* 2CE80 800C2280 03E00008 */  jr         $ra
/* 2CE84 800C2284 00000000 */   nop
/* 2CE88 800C2288 00000000 */  nop
/* 2CE8C 800C228C 00000000 */  nop
