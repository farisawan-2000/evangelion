glabel func_8009CDEC
/* 79EC 8009CDEC 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 79F0 8009CDF0 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 79F4 8009CDF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79F8 8009CDF8 30422000 */  andi       $v0, $v0, 0x2000
/* 79FC 8009CDFC 1040001E */  beqz       $v0, .L8009CE78
/* 7A00 8009CE00 AFBF0010 */   sw        $ra, 0x10($sp)
/* 7A04 8009CE04 3C038015 */  lui        $v1, %hi(D_8014A088)
/* 7A08 8009CE08 2463A088 */  addiu      $v1, $v1, %lo(D_8014A088)
/* 7A0C 8009CE0C C4620000 */  lwc1       $f2, 0x0($v1)
/* 7A10 8009CE10 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 7A14 8009CE14 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 7A18 8009CE18 3C028015 */  lui        $v0, %hi(D_8014CF88)
/* 7A1C 8009CE1C 8C42CF88 */  lw         $v0, %lo(D_8014CF88)($v0)
/* 7A20 8009CE20 46001081 */  sub.s      $f2, $f2, $f0
/* 7A24 8009CE24 00021023 */  negu       $v0, $v0
/* 7A28 8009CE28 44820000 */  mtc1       $v0, $f0
/* 7A2C 8009CE2C 00000000 */  nop
/* 7A30 8009CE30 46800020 */  cvt.s.w    $f0, $f0
/* 7A34 8009CE34 4602003C */  c.lt.s     $f0, $f2
/* 7A38 8009CE38 00000000 */  nop
/* 7A3C 8009CE3C 00000000 */  nop
/* 7A40 8009CE40 4501000B */  bc1t       .L8009CE70
/* 7A44 8009CE44 E4620000 */   swc1      $f2, 0x0($v1)
/* 7A48 8009CE48 3C028015 */  lui        $v0, %hi(D_80149FE8)
/* 7A4C 8009CE4C 8C429FE8 */  lw         $v0, %lo(D_80149FE8)($v0)
/* 7A50 8009CE50 00021023 */  negu       $v0, $v0
/* 7A54 8009CE54 44820000 */  mtc1       $v0, $f0
/* 7A58 8009CE58 00000000 */  nop
/* 7A5C 8009CE5C 46800020 */  cvt.s.w    $f0, $f0
/* 7A60 8009CE60 4600103C */  c.lt.s     $f2, $f0
/* 7A64 8009CE64 00000000 */  nop
/* 7A68 8009CE68 45000031 */  bc1f       .L8009CF30
/* 7A6C 8009CE6C 00000000 */   nop
.L8009CE70:
/* 7A70 8009CE70 080273CC */  j          .L8009CF30
/* 7A74 8009CE74 E4600000 */   swc1      $f0, 0x0($v1)
.L8009CE78:
/* 7A78 8009CE78 3C028015 */  lui        $v0, %hi(D_8014A07C)
/* 7A7C 8009CE7C 2442A07C */  addiu      $v0, $v0, %lo(D_8014A07C)
/* 7A80 8009CE80 C4420000 */  lwc1       $f2, 0x0($v0)
/* 7A84 8009CE84 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 7A88 8009CE88 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 7A8C 8009CE8C 46001081 */  sub.s      $f2, $f2, $f0
/* 7A90 8009CE90 3C0142B2 */  lui        $at, (0x42B20000 >> 16)
/* 7A94 8009CE94 44810000 */  mtc1       $at, $f0
/* 7A98 8009CE98 00000000 */  nop
/* 7A9C 8009CE9C 4602003C */  c.lt.s     $f0, $f2
/* 7AA0 8009CEA0 00000000 */  nop
/* 7AA4 8009CEA4 00000000 */  nop
/* 7AA8 8009CEA8 45010008 */  bc1t       .L8009CECC
/* 7AAC 8009CEAC E4420000 */   swc1      $f2, 0x0($v0)
/* 7AB0 8009CEB0 3C01C2B2 */  lui        $at, (0xC2B20000 >> 16)
/* 7AB4 8009CEB4 44810000 */  mtc1       $at, $f0
/* 7AB8 8009CEB8 00000000 */  nop
/* 7ABC 8009CEBC 4600103C */  c.lt.s     $f2, $f0
/* 7AC0 8009CEC0 00000000 */  nop
/* 7AC4 8009CEC4 45000002 */  bc1f       .L8009CED0
/* 7AC8 8009CEC8 00000000 */   nop
.L8009CECC:
/* 7ACC 8009CECC E4400000 */  swc1       $f0, 0x0($v0)
.L8009CED0:
/* 7AD0 8009CED0 3C028015 */  lui        $v0, %hi(D_8014A080)
/* 7AD4 8009CED4 2442A080 */  addiu      $v0, $v0, %lo(D_8014A080)
/* 7AD8 8009CED8 C4420000 */  lwc1       $f2, 0x0($v0)
/* 7ADC 8009CEDC 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 7AE0 8009CEE0 C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 7AE4 8009CEE4 46001080 */  add.s      $f2, $f2, $f0
/* 7AE8 8009CEE8 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 7AEC 8009CEEC 44812000 */  mtc1       $at, $f4
/* 7AF0 8009CEF0 00000000 */  nop
/* 7AF4 8009CEF4 4602203E */  c.le.s     $f4, $f2
/* 7AF8 8009CEF8 00000000 */  nop
/* 7AFC 8009CEFC 00000000 */  nop
/* 7B00 8009CF00 45000003 */  bc1f       .L8009CF10
/* 7B04 8009CF04 E4420000 */   swc1      $f2, 0x0($v0)
/* 7B08 8009CF08 080273CB */  j          .L8009CF2C
/* 7B0C 8009CF0C 46041001 */   sub.s     $f0, $f2, $f4
.L8009CF10:
/* 7B10 8009CF10 44800000 */  mtc1       $zero, $f0
/* 7B14 8009CF14 00000000 */  nop
/* 7B18 8009CF18 4600103C */  c.lt.s     $f2, $f0
/* 7B1C 8009CF1C 00000000 */  nop
/* 7B20 8009CF20 45000003 */  bc1f       .L8009CF30
/* 7B24 8009CF24 00000000 */   nop
/* 7B28 8009CF28 46041000 */  add.s      $f0, $f2, $f4
.L8009CF2C:
/* 7B2C 8009CF2C E4400000 */  swc1       $f0, 0x0($v0)
.L8009CF30:
/* 7B30 8009CF30 0C0273F4 */  jal        func_8009CFD0
/* 7B34 8009CF34 00000000 */   nop
/* 7B38 8009CF38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7B3C 8009CF3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7B40 8009CF40 03E00008 */  jr         $ra
/* 7B44 8009CF44 00000000 */   nop
.size func_8009CDEC, . - func_8009CDEC
