.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BDE10
/* 28A10 800BDE10 E7AC0000 */  swc1       $f12, ($sp)
/* 28A14 800BDE14 8FA20000 */  lw         $v0, ($sp)
/* 28A18 800BDE18 00021583 */  sra        $v0, $v0, 0x16
/* 28A1C 800BDE1C 304201FF */  andi       $v0, $v0, 0x1ff
/* 28A20 800BDE20 28420136 */  slti       $v0, $v0, 0x136
/* 28A24 800BDE24 10400043 */  beqz       $v0, .L800BDF34
/* 28A28 800BDE28 00000000 */   nop
/* 28A2C 800BDE2C 44800000 */  mtc1       $zero, $f0
/* 28A30 800BDE30 00000000 */  nop
/* 28A34 800BDE34 460C003C */  c.lt.s     $f0, $f12
/* 28A38 800BDE38 00000000 */  nop
/* 28A3C 800BDE3C 00000000 */  nop
/* 28A40 800BDE40 45010002 */  bc1t       .L800BDE4C
/* 28A44 800BDE44 46006106 */   mov.s     $f4, $f12
/* 28A48 800BDE48 46006107 */  neg.s      $f4, $f12
.L800BDE4C:
/* 28A4C 800BDE4C 3C018010 */  lui        $at, %hi(D_800FEEF8)
/* 28A50 800BDE50 D420EEF8 */  ldc1       $f0, %lo(D_800FEEF8)($at)
/* 28A54 800BDE54 460021A1 */  cvt.d.s    $f6, $f4
/* 28A58 800BDE58 46203002 */  mul.d      $f0, $f6, $f0
/* 28A5C 800BDE5C 3C018010 */  lui        $at, %hi(D_800FEF18)
/* 28A60 800BDE60 D422EF18 */  ldc1       $f2, %lo(D_800FEF18)($at)
/* 28A64 800BDE64 46220100 */  add.d      $f4, $f0, $f2
/* 28A68 800BDE68 44800000 */  mtc1       $zero, $f0
/* 28A6C 800BDE6C 44800800 */  mtc1       $zero, $f1
/* 28A70 800BDE70 00000000 */  nop
/* 28A74 800BDE74 4624003E */  c.le.d     $f0, $f4
/* 28A78 800BDE78 00000000 */  nop
/* 28A7C 800BDE7C 00000000 */  nop
/* 28A80 800BDE80 45020002 */  bc1fl      .L800BDE8C
/* 28A84 800BDE84 46222001 */   sub.d     $f0, $f4, $f2
/* 28A88 800BDE88 46222000 */  add.d      $f0, $f4, $f2
.L800BDE8C:
/* 28A8C 800BDE8C 4620008D */  trunc.w.d  $f2, $f0
/* 28A90 800BDE90 44031000 */  mfc1       $v1, $f2
/* 28A94 800BDE94 3C018010 */  lui        $at, %hi(D_800FEF20)
/* 28A98 800BDE98 D420EF20 */  ldc1       $f0, %lo(D_800FEF20)($at)
/* 28A9C 800BDE9C 44832000 */  mtc1       $v1, $f4
/* 28AA0 800BDEA0 00000000 */  nop
/* 28AA4 800BDEA4 46802121 */  cvt.d.w    $f4, $f4
/* 28AA8 800BDEA8 46202101 */  sub.d      $f4, $f4, $f0
/* 28AAC 800BDEAC 3C018010 */  lui        $at, %hi(D_800FEF00)
/* 28AB0 800BDEB0 D422EF00 */  ldc1       $f2, %lo(D_800FEF00)($at)
/* 28AB4 800BDEB4 46222082 */  mul.d      $f2, $f4, $f2
/* 28AB8 800BDEB8 3C018010 */  lui        $at, %hi(D_800FEF08)
/* 28ABC 800BDEBC D420EF08 */  ldc1       $f0, %lo(D_800FEF08)($at)
/* 28AC0 800BDEC0 46202002 */  mul.d      $f0, $f4, $f0
/* 28AC4 800BDEC4 46223181 */  sub.d      $f6, $f6, $f2
/* 28AC8 800BDEC8 46203181 */  sub.d      $f6, $f6, $f0
/* 28ACC 800BDECC 46263102 */  mul.d      $f4, $f6, $f6
/* 28AD0 800BDED0 3C018010 */  lui        $at, %hi(D_800FEEF0)
/* 28AD4 800BDED4 D420EEF0 */  ldc1       $f0, %lo(D_800FEEF0)($at)
/* 28AD8 800BDED8 46240002 */  mul.d      $f0, $f0, $f4
/* 28ADC 800BDEDC 3C018010 */  lui        $at, %hi(D_800FEEE8)
/* 28AE0 800BDEE0 D422EEE8 */  ldc1       $f2, %lo(D_800FEEE8)($at)
/* 28AE4 800BDEE4 46220000 */  add.d      $f0, $f0, $f2
/* 28AE8 800BDEE8 46240002 */  mul.d      $f0, $f0, $f4
/* 28AEC 800BDEEC 3C018010 */  lui        $at, %hi(D_800FEEE0)
/* 28AF0 800BDEF0 D422EEE0 */  ldc1       $f2, %lo(D_800FEEE0)($at)
/* 28AF4 800BDEF4 46220000 */  add.d      $f0, $f0, $f2
/* 28AF8 800BDEF8 46240002 */  mul.d      $f0, $f0, $f4
/* 28AFC 800BDEFC 00000000 */  nop
/* 28B00 800BDF00 46243102 */  mul.d      $f4, $f6, $f4
/* 28B04 800BDF04 3C018010 */  lui        $at, %hi(D_800FEED8)
/* 28B08 800BDF08 D422EED8 */  ldc1       $f2, %lo(D_800FEED8)($at)
/* 28B0C 800BDF0C 46220000 */  add.d      $f0, $f0, $f2
/* 28B10 800BDF10 46202102 */  mul.d      $f4, $f4, $f0
/* 28B14 800BDF14 30620001 */  andi       $v0, $v1, 1
/* 28B18 800BDF18 14400003 */  bnez       $v0, .L800BDF28
/* 28B1C 800BDF1C 46243000 */   add.d     $f0, $f6, $f4
/* 28B20 800BDF20 0802F7D6 */  j          .L800BDF58
/* 28B24 800BDF24 46200020 */   cvt.s.d   $f0, $f0
.L800BDF28:
/* 28B28 800BDF28 46200020 */  cvt.s.d    $f0, $f0
/* 28B2C 800BDF2C 0802F7D6 */  j          .L800BDF58
/* 28B30 800BDF30 46000007 */   neg.s     $f0, $f0
.L800BDF34:
/* 28B34 800BDF34 460C6032 */  c.eq.s     $f12, $f12
/* 28B38 800BDF38 00000000 */  nop
/* 28B3C 800BDF3C 45000004 */  bc1f       .L800BDF50
/* 28B40 800BDF40 00000000 */   nop
/* 28B44 800BDF44 3C018010 */  lui        $at, %hi(D_800FEF10)
/* 28B48 800BDF48 0802F7D6 */  j          .L800BDF58
/* 28B4C 800BDF4C C420EF10 */   lwc1      $f0, %lo(D_800FEF10)($at)
.L800BDF50:
/* 28B50 800BDF50 3C018010 */  lui        $at, %hi(D_800FF080)
/* 28B54 800BDF54 C420F080 */  lwc1       $f0, %lo(D_800FF080)($at)
.L800BDF58:
/* 28B58 800BDF58 03E00008 */  jr         $ra
/* 28B5C 800BDF5C 00000000 */   nop
