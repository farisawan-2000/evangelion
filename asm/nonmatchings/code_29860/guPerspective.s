glabel guPerspective
/* 29C90 800BF090 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 29C94 800BF094 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 29C98 800BF098 C7B80098 */  lwc1       $f24, 0x98($sp)
/* 29C9C 800BF09C F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 29CA0 800BF0A0 C7BA009C */  lwc1       $f26, 0x9C($sp)
/* 29CA4 800BF0A4 F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 29CA8 800BF0A8 C7BC00A0 */  lwc1       $f28, 0xA0($sp)
/* 29CAC 800BF0AC F7B40060 */  sdc1       $f20, 0x60($sp)
/* 29CB0 800BF0B0 4486A000 */  mtc1       $a2, $f20
/* 29CB4 800BF0B4 AFB20058 */  sw         $s2, 0x58($sp)
/* 29CB8 800BF0B8 00809021 */  addu       $s2, $a0, $zero
/* 29CBC 800BF0BC AFB10054 */  sw         $s1, 0x54($sp)
/* 29CC0 800BF0C0 00A08821 */  addu       $s1, $a1, $zero
/* 29CC4 800BF0C4 AFB00050 */  sw         $s0, 0x50($sp)
/* 29CC8 800BF0C8 27B00010 */  addiu      $s0, $sp, 0x10
/* 29CCC 800BF0CC F7B60068 */  sdc1       $f22, 0x68($sp)
/* 29CD0 800BF0D0 4487B000 */  mtc1       $a3, $f22
/* 29CD4 800BF0D4 AFBF005C */  sw         $ra, 0x5C($sp)
/* 29CD8 800BF0D8 0C02FA9C */  jal        guMtxIdentF
/* 29CDC 800BF0DC 02002021 */   addu      $a0, $s0, $zero
/* 29CE0 800BF0E0 3C018010 */  lui        $at, %hi(D_800FEF70)
/* 29CE4 800BF0E4 D420EF70 */  ldc1       $f0, %lo(D_800FEF70)($at)
/* 29CE8 800BF0E8 4600A521 */  cvt.d.s    $f20, $f20
/* 29CEC 800BF0EC 4620A502 */  mul.d      $f20, $f20, $f0
/* 29CF0 800BF0F0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 29CF4 800BF0F4 44810000 */  mtc1       $at, $f0
/* 29CF8 800BF0F8 4620A520 */  cvt.s.d    $f20, $f20
/* 29CFC 800BF0FC 4600A503 */  div.s      $f20, $f20, $f0
/* 29D00 800BF100 0C02F784 */  jal        cosf
/* 29D04 800BF104 4600A306 */   mov.s     $f12, $f20
/* 29D08 800BF108 4600A306 */  mov.s      $f12, $f20
/* 29D0C 800BF10C 0C02FF68 */  jal        func_800BFDA0
/* 29D10 800BF110 46000506 */   mov.s     $f20, $f0
/* 29D14 800BF114 4600A503 */  div.s      $f20, $f20, $f0
/* 29D18 800BF118 461AC100 */  add.s      $f4, $f24, $f26
/* 29D1C 800BF11C 461AC081 */  sub.s      $f2, $f24, $f26
/* 29D20 800BF120 46022103 */  div.s      $f4, $f4, $f2
/* 29D24 800BF124 4618C000 */  add.s      $f0, $f24, $f24
/* 29D28 800BF128 461A0002 */  mul.s      $f0, $f0, $f26
/* 29D2C 800BF12C 46020003 */  div.s      $f0, $f0, $f2
/* 29D30 800BF130 4616A583 */  div.s      $f22, $f20, $f22
/* 29D34 800BF134 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 29D38 800BF138 44811000 */  mtc1       $at, $f2
/* 29D3C 800BF13C 00002821 */  addu       $a1, $zero, $zero
/* 29D40 800BF140 AFA0004C */  sw         $zero, 0x4C($sp)
/* 29D44 800BF144 E7A2003C */  swc1       $f2, 0x3C($sp)
/* 29D48 800BF148 E7B40024 */  swc1       $f20, 0x24($sp)
/* 29D4C 800BF14C E7A40038 */  swc1       $f4, 0x38($sp)
/* 29D50 800BF150 E7A00048 */  swc1       $f0, 0x48($sp)
/* 29D54 800BF154 E7B60010 */  swc1       $f22, 0x10($sp)
.L800BF158:
/* 29D58 800BF158 00002021 */  addu       $a0, $zero, $zero
/* 29D5C 800BF15C 02001821 */  addu       $v1, $s0, $zero
.L800BF160:
/* 29D60 800BF160 C4600000 */  lwc1       $f0, 0x0($v1)
/* 29D64 800BF164 461C0002 */  mul.s      $f0, $f0, $f28
/* 29D68 800BF168 24840001 */  addiu      $a0, $a0, 0x1
/* 29D6C 800BF16C 28820004 */  slti       $v0, $a0, 0x4
/* 29D70 800BF170 E4600000 */  swc1       $f0, 0x0($v1)
/* 29D74 800BF174 1440FFFA */  bnez       $v0, .L800BF160
/* 29D78 800BF178 24630004 */   addiu     $v1, $v1, 0x4
/* 29D7C 800BF17C 24A50001 */  addiu      $a1, $a1, 0x1
/* 29D80 800BF180 28A20004 */  slti       $v0, $a1, 0x4
/* 29D84 800BF184 1440FFF4 */  bnez       $v0, .L800BF158
/* 29D88 800BF188 26100010 */   addiu     $s0, $s0, 0x10
/* 29D8C 800BF18C 52200025 */  beql       $s1, $zero, .L800BF224
/* 29D90 800BF190 27A40010 */   addiu     $a0, $sp, 0x10
/* 29D94 800BF194 461AC080 */  add.s      $f2, $f24, $f26
/* 29D98 800BF198 3C018010 */  lui        $at, %hi(D_800FEF78)
/* 29D9C 800BF19C D420EF78 */  ldc1       $f0, %lo(D_800FEF78)($at)
/* 29DA0 800BF1A0 460010A1 */  cvt.d.s    $f2, $f2
/* 29DA4 800BF1A4 4620103E */  c.le.d     $f2, $f0
/* 29DA8 800BF1A8 00000000 */  nop
/* 29DAC 800BF1AC 00000000 */  nop
/* 29DB0 800BF1B0 4501001A */  bc1t       .L800BF21C
/* 29DB4 800BF1B4 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 29DB8 800BF1B8 3C018010 */  lui        $at, %hi(D_800FEF80)
/* 29DBC 800BF1BC D420EF80 */  ldc1       $f0, %lo(D_800FEF80)($at)
/* 29DC0 800BF1C0 46220083 */  div.d      $f2, $f0, $f2
/* 29DC4 800BF1C4 3C018010 */  lui        $at, %hi(D_800FEF88)
/* 29DC8 800BF1C8 D420EF88 */  ldc1       $f0, %lo(D_800FEF88)($at)
/* 29DCC 800BF1CC 4622003E */  c.le.d     $f0, $f2
/* 29DD0 800BF1D0 00000000 */  nop
/* 29DD4 800BF1D4 00000000 */  nop
/* 29DD8 800BF1D8 45030006 */  bc1tl      .L800BF1F4
/* 29DDC 800BF1DC 46201001 */   sub.d     $f0, $f2, $f0
/* 29DE0 800BF1E0 4620100D */  trunc.w.d  $f0, $f2
/* 29DE4 800BF1E4 44030000 */  mfc1       $v1, $f0
/* 29DE8 800BF1E8 00000000 */  nop
/* 29DEC 800BF1EC 0802FC82 */  j          perspective_text_0328
/* 29DF0 800BF1F0 00601021 */   addu      $v0, $v1, $zero
.L800BF1F4:
/* 29DF4 800BF1F4 4620008D */  trunc.w.d  $f2, $f0
/* 29DF8 800BF1F8 44031000 */  mfc1       $v1, $f2
/* 29DFC 800BF1FC 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 29E00 800BF200 00621825 */  or         $v1, $v1, $v0
/* 29E04 800BF204 00601021 */  addu       $v0, $v1, $zero
.size guPerspective, . - guPerspective
