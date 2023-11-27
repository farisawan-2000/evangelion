glabel guPerspectiveF
/* 29AE0 800BEEE0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 29AE4 800BEEE4 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 29AE8 800BEEE8 C7BA0060 */  lwc1       $f26, 0x60($sp)
/* 29AEC 800BEEEC F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 29AF0 800BEEF0 C7BC0064 */  lwc1       $f28, 0x64($sp)
/* 29AF4 800BEEF4 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 29AF8 800BEEF8 C7BE0068 */  lwc1       $f30, 0x68($sp)
/* 29AFC 800BEEFC F7B80030 */  sdc1       $f24, 0x30($sp)
/* 29B00 800BEF00 4486C000 */  mtc1       $a2, $f24
/* 29B04 800BEF04 AFB00010 */  sw         $s0, 0x10($sp)
/* 29B08 800BEF08 00808021 */  addu       $s0, $a0, $zero
/* 29B0C 800BEF0C AFB10014 */  sw         $s1, 0x14($sp)
/* 29B10 800BEF10 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 29B14 800BEF14 4487B000 */  mtc1       $a3, $f22
/* 29B18 800BEF18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 29B1C 800BEF1C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 29B20 800BEF20 0C02FA9C */  jal        guMtxIdentF
/* 29B24 800BEF24 00A08821 */   addu      $s1, $a1, $zero
/* 29B28 800BEF28 3C018010 */  lui        $at, %hi(D_800FEF50)
/* 29B2C 800BEF2C D422EF50 */  ldc1       $f2, %lo(D_800FEF50)($at)
/* 29B30 800BEF30 4600C021 */  cvt.d.s    $f0, $f24
/* 29B34 800BEF34 46220002 */  mul.d      $f0, $f0, $f2
/* 29B38 800BEF38 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 29B3C 800BEF3C 4481A000 */  mtc1       $at, $f20
/* 29B40 800BEF40 46200620 */  cvt.s.d    $f24, $f0
/* 29B44 800BEF44 4614C503 */  div.s      $f20, $f24, $f20
/* 29B48 800BEF48 0C02F784 */  jal        cosf
/* 29B4C 800BEF4C 4600A306 */   mov.s     $f12, $f20
/* 29B50 800BEF50 4600A306 */  mov.s      $f12, $f20
/* 29B54 800BEF54 0C02FF68 */  jal        func_800BFDA0
/* 29B58 800BEF58 46000506 */   mov.s     $f20, $f0
/* 29B5C 800BEF5C 4600A503 */  div.s      $f20, $f20, $f0
/* 29B60 800BEF60 461CD100 */  add.s      $f4, $f26, $f28
/* 29B64 800BEF64 461CD081 */  sub.s      $f2, $f26, $f28
/* 29B68 800BEF68 46022103 */  div.s      $f4, $f4, $f2
/* 29B6C 800BEF6C 461AD000 */  add.s      $f0, $f26, $f26
/* 29B70 800BEF70 461C0002 */  mul.s      $f0, $f0, $f28
/* 29B74 800BEF74 46020003 */  div.s      $f0, $f0, $f2
/* 29B78 800BEF78 4616A583 */  div.s      $f22, $f20, $f22
/* 29B7C 800BEF7C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 29B80 800BEF80 44811000 */  mtc1       $at, $f2
/* 29B84 800BEF84 00002821 */  addu       $a1, $zero, $zero
/* 29B88 800BEF88 AE00003C */  sw         $zero, 0x3C($s0)
/* 29B8C 800BEF8C E602002C */  swc1       $f2, 0x2C($s0)
/* 29B90 800BEF90 E6140014 */  swc1       $f20, 0x14($s0)
/* 29B94 800BEF94 E6040028 */  swc1       $f4, 0x28($s0)
/* 29B98 800BEF98 E6000038 */  swc1       $f0, 0x38($s0)
/* 29B9C 800BEF9C E6160000 */  swc1       $f22, 0x0($s0)
.L800BEFA0:
/* 29BA0 800BEFA0 00002021 */  addu       $a0, $zero, $zero
/* 29BA4 800BEFA4 02001821 */  addu       $v1, $s0, $zero
.L800BEFA8:
/* 29BA8 800BEFA8 C4600000 */  lwc1       $f0, 0x0($v1)
/* 29BAC 800BEFAC 461E0002 */  mul.s      $f0, $f0, $f30
/* 29BB0 800BEFB0 24840001 */  addiu      $a0, $a0, 0x1
/* 29BB4 800BEFB4 28820004 */  slti       $v0, $a0, 0x4
/* 29BB8 800BEFB8 E4600000 */  swc1       $f0, 0x0($v1)
/* 29BBC 800BEFBC 1440FFFA */  bnez       $v0, .L800BEFA8
/* 29BC0 800BEFC0 24630004 */   addiu     $v1, $v1, 0x4
/* 29BC4 800BEFC4 24A50001 */  addiu      $a1, $a1, 0x1
/* 29BC8 800BEFC8 28A20004 */  slti       $v0, $a1, 0x4
/* 29BCC 800BEFCC 1440FFF4 */  bnez       $v0, .L800BEFA0
/* 29BD0 800BEFD0 26100010 */   addiu     $s0, $s0, 0x10
/* 29BD4 800BEFD4 12200023 */  beqz       $s1, .L800BF064
/* 29BD8 800BEFD8 00000000 */   nop
/* 29BDC 800BEFDC 461CD080 */  add.s      $f2, $f26, $f28
/* 29BE0 800BEFE0 3C018010 */  lui        $at, %hi(D_800FEF58)
/* 29BE4 800BEFE4 D420EF58 */  ldc1       $f0, %lo(D_800FEF58)($at)
/* 29BE8 800BEFE8 460010A1 */  cvt.d.s    $f2, $f2
/* 29BEC 800BEFEC 4620103E */  c.le.d     $f2, $f0
/* 29BF0 800BEFF0 00000000 */  nop
/* 29BF4 800BEFF4 00000000 */  nop
/* 29BF8 800BEFF8 45010019 */  bc1t       .L800BF060
/* 29BFC 800BEFFC 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 29C00 800BF000 3C018010 */  lui        $at, %hi(D_800FEF60)
/* 29C04 800BF004 D420EF60 */  ldc1       $f0, %lo(D_800FEF60)($at)
/* 29C08 800BF008 46220083 */  div.d      $f2, $f0, $f2
/* 29C0C 800BF00C 3C018010 */  lui        $at, %hi(D_800FEF68)
/* 29C10 800BF010 D420EF68 */  ldc1       $f0, %lo(D_800FEF68)($at)
/* 29C14 800BF014 4622003E */  c.le.d     $f0, $f2
/* 29C18 800BF018 00000000 */  nop
/* 29C1C 800BF01C 00000000 */  nop
/* 29C20 800BF020 45030006 */  bc1tl      .L800BF03C
/* 29C24 800BF024 46201001 */   sub.d     $f0, $f2, $f0
/* 29C28 800BF028 4620100D */  trunc.w.d  $f0, $f2
/* 29C2C 800BF02C 44030000 */  mfc1       $v1, $f0
/* 29C30 800BF030 00000000 */  nop
/* 29C34 800BF034 0802FC14 */  j          perspective_text_0170
/* 29C38 800BF038 00601021 */   addu      $v0, $v1, $zero
.L800BF03C:
/* 29C3C 800BF03C 4620008D */  trunc.w.d  $f2, $f0
/* 29C40 800BF040 44031000 */  mfc1       $v1, $f2
/* 29C44 800BF044 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 29C48 800BF048 00621825 */  or         $v1, $v1, $v0
/* 29C4C 800BF04C 00601021 */  addu       $v0, $v1, $zero
.size guPerspectiveF, . - guPerspectiveF
