glabel func_800BED90
/* 29990 800BED90 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 29994 800BED94 F7B60068 */  sdc1       $f22, 0x68($sp)
/* 29998 800BED98 C7B600A0 */  lwc1       $f22, 0xA0($sp)
/* 2999C 800BED9C F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 299A0 800BEDA0 C7BC00A4 */  lwc1       $f28, 0xA4($sp)
/* 299A4 800BEDA4 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 299A8 800BEDA8 C7B400A8 */  lwc1       $f20, 0xA8($sp)
/* 299AC 800BEDAC AFB10054 */  sw         $s1, 0x54($sp)
/* 299B0 800BEDB0 8FB100AC */  lw         $s1, 0xAC($sp)
/* 299B4 800BEDB4 F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 299B8 800BEDB8 4485D000 */  mtc1       $a1, $f26
/* 299BC 800BEDBC F7B80070 */  sdc1       $f24, 0x70($sp)
/* 299C0 800BEDC0 4486C000 */  mtc1       $a2, $f24
/* 299C4 800BEDC4 AFB20058 */  sw         $s2, 0x58($sp)
/* 299C8 800BEDC8 00809021 */  addu       $s2, $a0, $zero
/* 299CC 800BEDCC AFB00050 */  sw         $s0, 0x50($sp)
/* 299D0 800BEDD0 27B00010 */  addiu      $s0, $sp, 0x10
/* 299D4 800BEDD4 F7BE0088 */  sdc1       $f30, 0x88($sp)
/* 299D8 800BEDD8 4487F000 */  mtc1       $a3, $f30
/* 299DC 800BEDDC AFBF005C */  sw         $ra, 0x5C($sp)
/* 299E0 800BEDE0 0C02FA9C */  jal        func_800BEA70
/* 299E4 800BEDE4 02002021 */   addu      $a0, $s0, $zero
/* 299E8 800BEDE8 461AC001 */  sub.s      $f0, $f24, $f26
/* 299EC 800BEDEC 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 299F0 800BEDF0 44811000 */  mtc1       $at, $f2
/* 299F4 800BEDF4 00000000 */  nop
/* 299F8 800BEDF8 46001283 */  div.s      $f10, $f2, $f0
/* 299FC 800BEDFC 461EB181 */  sub.s      $f6, $f22, $f30
/* 29A00 800BEE00 46061083 */  div.s      $f2, $f2, $f6
/* 29A04 800BEE04 461CA201 */  sub.s      $f8, $f20, $f28
/* 29A08 800BEE08 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 29A0C 800BEE0C 44812000 */  mtc1       $at, $f4
/* 29A10 800BEE10 00000000 */  nop
/* 29A14 800BEE14 46082103 */  div.s      $f4, $f4, $f8
/* 29A18 800BEE18 461AC600 */  add.s      $f24, $f24, $f26
/* 29A1C 800BEE1C 4600C607 */  neg.s      $f24, $f24
/* 29A20 800BEE20 4600C603 */  div.s      $f24, $f24, $f0
/* 29A24 800BEE24 461EB580 */  add.s      $f22, $f22, $f30
/* 29A28 800BEE28 4600B587 */  neg.s      $f22, $f22
/* 29A2C 800BEE2C 4606B583 */  div.s      $f22, $f22, $f6
/* 29A30 800BEE30 461CA500 */  add.s      $f20, $f20, $f28
/* 29A34 800BEE34 4600A507 */  neg.s      $f20, $f20
/* 29A38 800BEE38 4608A503 */  div.s      $f20, $f20, $f8
/* 29A3C 800BEE3C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 29A40 800BEE40 44810000 */  mtc1       $at, $f0
/* 29A44 800BEE44 00002821 */  addu       $a1, $zero, $zero
/* 29A48 800BEE48 E7A0004C */  swc1       $f0, 0x4C($sp)
/* 29A4C 800BEE4C E7AA0010 */  swc1       $f10, 0x10($sp)
/* 29A50 800BEE50 E7B80040 */  swc1       $f24, 0x40($sp)
/* 29A54 800BEE54 E7A20024 */  swc1       $f2, 0x24($sp)
/* 29A58 800BEE58 E7A40038 */  swc1       $f4, 0x38($sp)
/* 29A5C 800BEE5C E7B60044 */  swc1       $f22, 0x44($sp)
/* 29A60 800BEE60 E7B40048 */  swc1       $f20, 0x48($sp)
.L800BEE64:
/* 29A64 800BEE64 00002021 */  addu       $a0, $zero, $zero
/* 29A68 800BEE68 02001821 */  addu       $v1, $s0, $zero
.L800BEE6C:
/* 29A6C 800BEE6C C4600000 */  lwc1       $f0, 0x0($v1)
/* 29A70 800BEE70 44916000 */  mtc1       $s1, $f12
/* 29A74 800BEE74 00000000 */  nop
/* 29A78 800BEE78 460C0002 */  mul.s      $f0, $f0, $f12
/* 29A7C 800BEE7C 24840001 */  addiu      $a0, $a0, 0x1
/* 29A80 800BEE80 28820004 */  slti       $v0, $a0, 0x4
/* 29A84 800BEE84 E4600000 */  swc1       $f0, 0x0($v1)
/* 29A88 800BEE88 1440FFF8 */  bnez       $v0, .L800BEE6C
/* 29A8C 800BEE8C 24630004 */   addiu     $v1, $v1, 0x4
/* 29A90 800BEE90 24A50001 */  addiu      $a1, $a1, 0x1
/* 29A94 800BEE94 28A20004 */  slti       $v0, $a1, 0x4
/* 29A98 800BEE98 1440FFF2 */  bnez       $v0, .L800BEE64
/* 29A9C 800BEE9C 26100010 */   addiu     $s0, $s0, 0x10
/* 29AA0 800BEEA0 27A40010 */  addiu      $a0, $sp, 0x10
/* 29AA4 800BEEA4 0C02FA4C */  jal        func_800BE930
/* 29AA8 800BEEA8 02402821 */   addu      $a1, $s2, $zero
/* 29AAC 800BEEAC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 29AB0 800BEEB0 8FB20058 */  lw         $s2, 0x58($sp)
/* 29AB4 800BEEB4 8FB10054 */  lw         $s1, 0x54($sp)
/* 29AB8 800BEEB8 8FB00050 */  lw         $s0, 0x50($sp)
/* 29ABC 800BEEBC D7BE0088 */  ldc1       $f30, 0x88($sp)
/* 29AC0 800BEEC0 D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 29AC4 800BEEC4 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 29AC8 800BEEC8 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 29ACC 800BEECC D7B60068 */  ldc1       $f22, 0x68($sp)
/* 29AD0 800BEED0 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 29AD4 800BEED4 03E00008 */  jr         $ra
/* 29AD8 800BEED8 27BD0090 */   addiu     $sp, $sp, 0x90
/* 29ADC 800BEEDC 00000000 */  nop
.size func_800BED90, . - func_800BED90
