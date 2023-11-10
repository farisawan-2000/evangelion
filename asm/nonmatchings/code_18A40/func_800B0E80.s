glabel func_800B0E80
/* 1BA80 800B0E80 00804021 */  addu       $t0, $a0, $zero
/* 1BA84 800B0E84 90A30000 */  lbu        $v1, 0x0($a1)
/* 1BA88 800B0E88 3C048888 */  lui        $a0, (0x88888889 >> 16)
/* 1BA8C 800B0E8C 34848889 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 1BA90 800B0E90 00031040 */  sll        $v0, $v1, 1
/* 1BA94 800B0E94 00431021 */  addu       $v0, $v0, $v1
/* 1BA98 800B0E98 00021340 */  sll        $v0, $v0, 13
/* 1BA9C 800B0E9C 00440018 */  mult       $v0, $a0
/* 1BAA0 800B0EA0 3C048010 */  lui        $a0, %hi(D_80102954)
/* 1BAA4 800B0EA4 8C842954 */  lw         $a0, %lo(D_80102954)($a0)
/* 1BAA8 800B0EA8 00005810 */  mfhi       $t3
/* 1BAAC 800B0EAC 01621821 */  addu       $v1, $t3, $v0
/* 1BAB0 800B0EB0 00031983 */  sra        $v1, $v1, 6
/* 1BAB4 800B0EB4 000217C3 */  sra        $v0, $v0, 31
/* 1BAB8 800B0EB8 00621823 */  subu       $v1, $v1, $v0
/* 1BABC 800B0EBC 0064001A */  div        $zero, $v1, $a0
/* 1BAC0 800B0EC0 14800002 */  bnez       $a0, .L800B0ECC
/* 1BAC4 800B0EC4 00000000 */   nop
/* 1BAC8 800B0EC8 0007000D */  break      7
.L800B0ECC:
/* 1BACC 800B0ECC 2401FFFF */  addiu      $at, $zero, -0x1
/* 1BAD0 800B0ED0 14810004 */  bne        $a0, $at, .L800B0EE4
/* 1BAD4 800B0ED4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1BAD8 800B0ED8 14610002 */  bne        $v1, $at, .L800B0EE4
/* 1BADC 800B0EDC 00000000 */   nop
/* 1BAE0 800B0EE0 0006000D */  break      6
.L800B0EE4:
/* 1BAE4 800B0EE4 00003812 */  mflo       $a3
/* 1BAE8 800B0EE8 85020098 */  lh         $v0, 0x98($t0)
/* 1BAEC 800B0EEC 00000000 */  nop
/* 1BAF0 800B0EF0 00E20018 */  mult       $a3, $v0
/* 1BAF4 800B0EF4 00001012 */  mflo       $v0
/* 1BAF8 800B0EF8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1BAFC 800B0EFC 8D030078 */  lw         $v1, 0x78($t0)
/* 1BB00 800B0F00 24A50001 */  addiu      $a1, $a1, 0x1
/* 1BB04 800B0F04 10600003 */  beqz       $v1, .L800B0F14
/* 1BB08 800B0F08 000251C3 */   sra       $t2, $v0, 7
/* 1BB0C 800B0F0C 0802C3D6 */  j          .L800B0F58
/* 1BB10 800B0F10 A507009C */   sh        $a3, 0x9C($t0)
.L800B0F14:
/* 1BB14 800B0F14 3C028010 */  lui        $v0, %hi(D_80102944)
/* 1BB18 800B0F18 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 1BB1C 800B0F1C 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 1BB20 800B0F20 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 1BB24 800B0F24 1840000C */  blez       $v0, .L800B0F58
/* 1BB28 800B0F28 00003021 */   addu      $a2, $zero, $zero
/* 1BB2C 800B0F2C 00404821 */  addu       $t1, $v0, $zero
/* 1BB30 800B0F30 2464009C */  addiu      $a0, $v1, 0x9C
.L800B0F34:
/* 1BB34 800B0F34 8C83FFD8 */  lw         $v1, -0x28($a0)
/* 1BB38 800B0F38 8D020074 */  lw         $v0, 0x74($t0)
/* 1BB3C 800B0F3C 14620003 */  bne        $v1, $v0, .L800B0F4C
/* 1BB40 800B0F40 24C60001 */   addiu     $a2, $a2, 0x1
/* 1BB44 800B0F44 A487000C */  sh         $a3, 0xC($a0)
/* 1BB48 800B0F48 A48A0000 */  sh         $t2, 0x0($a0)
.L800B0F4C:
/* 1BB4C 800B0F4C 00C9102A */  slt        $v0, $a2, $t1
/* 1BB50 800B0F50 1440FFF8 */  bnez       $v0, .L800B0F34
/* 1BB54 800B0F54 2484013C */   addiu     $a0, $a0, 0x13C
.L800B0F58:
/* 1BB58 800B0F58 00A01021 */  addu       $v0, $a1, $zero
/* 1BB5C 800B0F5C 03E00008 */  jr         $ra
/* 1BB60 800B0F60 27BD0008 */   addiu     $sp, $sp, 0x8
.size func_800B0E80, . - func_800B0E80
