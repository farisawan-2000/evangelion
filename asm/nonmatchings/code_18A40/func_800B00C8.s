.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B00C8
/* 1ACC8 800B00C8 44800000 */  mtc1       $zero, $f0
/* 1ACCC 800B00CC 46006186 */  mov.s      $f6, $f12
/* 1ACD0 800B00D0 46003032 */  c.eq.s     $f6, $f0
/* 1ACD4 800B00D4 00000000 */  nop
/* 1ACD8 800B00D8 45000005 */  bc1f       .L800B00F0
/* 1ACDC 800B00DC 00000000 */   nop
/* 1ACE0 800B00E0 3C013F80 */  lui        $at, 0x3f80
/* 1ACE4 800B00E4 44810000 */  mtc1       $at, $f0
/* 1ACE8 800B00E8 0802C095 */  j          .L800B0254
/* 1ACEC 800B00EC 00000000 */   nop
.L800B00F0:
/* 1ACF0 800B00F0 4606003C */  c.lt.s     $f0, $f6
/* 1ACF4 800B00F4 00000000 */  nop
/* 1ACF8 800B00F8 00000000 */  nop
/* 1ACFC 800B00FC 4503002D */  bc1tl      .L800B01B4
/* 1AD00 800B0100 46063402 */   mul.s     $f16, $f6, $f6
/* 1AD04 800B0104 46003187 */  neg.s      $f6, $f6
/* 1AD08 800B0108 46063402 */  mul.s      $f16, $f6, $f6
/* 1AD0C 800B010C 3C018010 */  lui        $at, %hi(D_800FEA58)
/* 1AD10 800B0110 D420EA58 */  ldc1       $f0, %lo(D_800FEA58)($at)
/* 1AD14 800B0114 460030A1 */  cvt.d.s    $f2, $f6
/* 1AD18 800B0118 46201082 */  mul.d      $f2, $f2, $f0
/* 1AD1C 800B011C 3C018010 */  lui        $at, %hi(D_800FEA60)
/* 1AD20 800B0120 D420EA60 */  ldc1       $f0, %lo(D_800FEA60)($at)
/* 1AD24 800B0124 460083A1 */  cvt.d.s    $f14, $f16
/* 1AD28 800B0128 46207382 */  mul.d      $f14, $f14, $f0
/* 1AD2C 800B012C 00000000 */  nop
/* 1AD30 800B0130 46068202 */  mul.s      $f8, $f16, $f6
/* 1AD34 800B0134 00000000 */  nop
/* 1AD38 800B0138 46108102 */  mul.s      $f4, $f16, $f16
/* 1AD3C 800B013C 3C018010 */  lui        $at, %hi(D_800FEA68)
/* 1AD40 800B0140 D420EA68 */  ldc1       $f0, %lo(D_800FEA68)($at)
/* 1AD44 800B0144 46004221 */  cvt.d.s    $f8, $f8
/* 1AD48 800B0148 46204202 */  mul.d      $f8, $f8, $f0
/* 1AD4C 800B014C 3C018010 */  lui        $at, %hi(D_800FEA70)
/* 1AD50 800B0150 D420EA70 */  ldc1       $f0, %lo(D_800FEA70)($at)
/* 1AD54 800B0154 46002321 */  cvt.d.s    $f12, $f4
/* 1AD58 800B0158 46206302 */  mul.d      $f12, $f12, $f0
/* 1AD5C 800B015C 00000000 */  nop
/* 1AD60 800B0160 46062182 */  mul.s      $f6, $f4, $f6
/* 1AD64 800B0164 00000000 */  nop
/* 1AD68 800B0168 46102102 */  mul.s      $f4, $f4, $f16
/* 1AD6C 800B016C 3C018010 */  lui        $at, %hi(D_800FEA78)
/* 1AD70 800B0170 D420EA78 */  ldc1       $f0, %lo(D_800FEA78)($at)
/* 1AD74 800B0174 3C018010 */  lui        $at, %hi(D_800FEA80)
/* 1AD78 800B0178 D42AEA80 */  ldc1       $f10, %lo(D_800FEA80)($at)
/* 1AD7C 800B017C 46201080 */  add.d      $f2, $f2, $f0
/* 1AD80 800B0180 460031A1 */  cvt.d.s    $f6, $f6
/* 1AD84 800B0184 462A3182 */  mul.d      $f6, $f6, $f10
/* 1AD88 800B0188 462E1080 */  add.d      $f2, $f2, $f14
/* 1AD8C 800B018C 46281080 */  add.d      $f2, $f2, $f8
/* 1AD90 800B0190 3C018010 */  lui        $at, %hi(D_800FEA88)
/* 1AD94 800B0194 D428EA88 */  ldc1       $f8, %lo(D_800FEA88)($at)
/* 1AD98 800B0198 46002121 */  cvt.d.s    $f4, $f4
/* 1AD9C 800B019C 46282102 */  mul.d      $f4, $f4, $f8
/* 1ADA0 800B01A0 462C1080 */  add.d      $f2, $f2, $f12
/* 1ADA4 800B01A4 46261080 */  add.d      $f2, $f2, $f6
/* 1ADA8 800B01A8 46241080 */  add.d      $f2, $f2, $f4
/* 1ADAC 800B01AC 0802C094 */  j          .L800B0250
/* 1ADB0 800B01B0 46220003 */   div.d     $f0, $f0, $f2
.L800B01B4:
/* 1ADB4 800B01B4 3C018010 */  lui        $at, %hi(D_800FEA90)
/* 1ADB8 800B01B8 D422EA90 */  ldc1       $f2, %lo(D_800FEA90)($at)
/* 1ADBC 800B01BC 46003021 */  cvt.d.s    $f0, $f6
/* 1ADC0 800B01C0 46220002 */  mul.d      $f0, $f0, $f2
/* 1ADC4 800B01C4 3C018010 */  lui        $at, %hi(D_800FEA98)
/* 1ADC8 800B01C8 D422EA98 */  ldc1       $f2, %lo(D_800FEA98)($at)
/* 1ADCC 800B01CC 46008321 */  cvt.d.s    $f12, $f16
/* 1ADD0 800B01D0 46226302 */  mul.d      $f12, $f12, $f2
/* 1ADD4 800B01D4 00000000 */  nop
/* 1ADD8 800B01D8 46068202 */  mul.s      $f8, $f16, $f6
/* 1ADDC 800B01DC 3C018010 */  lui        $at, %hi(D_800FEAA0)
/* 1ADE0 800B01E0 D422EAA0 */  ldc1       $f2, %lo(D_800FEAA0)($at)
/* 1ADE4 800B01E4 46004221 */  cvt.d.s    $f8, $f8
/* 1ADE8 800B01E8 46224202 */  mul.d      $f8, $f8, $f2
/* 1ADEC 800B01EC 00000000 */  nop
/* 1ADF0 800B01F0 46108082 */  mul.s      $f2, $f16, $f16
/* 1ADF4 800B01F4 3C018010 */  lui        $at, %hi(D_800FEAA8)
/* 1ADF8 800B01F8 D424EAA8 */  ldc1       $f4, %lo(D_800FEAA8)($at)
/* 1ADFC 800B01FC 460012A1 */  cvt.d.s    $f10, $f2
/* 1AE00 800B0200 46245282 */  mul.d      $f10, $f10, $f4
/* 1AE04 800B0204 00000000 */  nop
/* 1AE08 800B0208 46061182 */  mul.s      $f6, $f2, $f6
/* 1AE0C 800B020C 3C018010 */  lui        $at, %hi(D_800FEAB0)
/* 1AE10 800B0210 D424EAB0 */  ldc1       $f4, %lo(D_800FEAB0)($at)
/* 1AE14 800B0214 46101082 */  mul.s      $f2, $f2, $f16
/* 1AE18 800B0218 46240000 */  add.d      $f0, $f0, $f4
/* 1AE1C 800B021C 3C018010 */  lui        $at, %hi(D_800FEAB8)
/* 1AE20 800B0220 D424EAB8 */  ldc1       $f4, %lo(D_800FEAB8)($at)
/* 1AE24 800B0224 460031A1 */  cvt.d.s    $f6, $f6
/* 1AE28 800B0228 46243182 */  mul.d      $f6, $f6, $f4
/* 1AE2C 800B022C 462C0000 */  add.d      $f0, $f0, $f12
/* 1AE30 800B0230 3C018010 */  lui        $at, %hi(D_800FEAC0)
/* 1AE34 800B0234 D424EAC0 */  ldc1       $f4, %lo(D_800FEAC0)($at)
/* 1AE38 800B0238 46280000 */  add.d      $f0, $f0, $f8
/* 1AE3C 800B023C 460010A1 */  cvt.d.s    $f2, $f2
/* 1AE40 800B0240 46241082 */  mul.d      $f2, $f2, $f4
/* 1AE44 800B0244 462A0000 */  add.d      $f0, $f0, $f10
/* 1AE48 800B0248 46260000 */  add.d      $f0, $f0, $f6
/* 1AE4C 800B024C 46220000 */  add.d      $f0, $f0, $f2
.L800B0250:
/* 1AE50 800B0250 46200020 */  cvt.s.d    $f0, $f0
.L800B0254:
/* 1AE54 800B0254 03E00008 */  jr         $ra
/* 1AE58 800B0258 00000000 */   nop
