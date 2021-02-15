.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BFDA0
/* 2A9A0 800BFDA0 E7AC0000 */  swc1       $f12, ($sp)
/* 2A9A4 800BFDA4 8FA20000 */  lw         $v0, ($sp)
/* 2A9A8 800BFDA8 00021D83 */  sra        $v1, $v0, 0x16
/* 2A9AC 800BFDAC 306301FF */  andi       $v1, $v1, 0x1ff
/* 2A9B0 800BFDB0 286200FF */  slti       $v0, $v1, 0xff
/* 2A9B4 800BFDB4 1040001B */  beqz       $v0, .L800BFE24
/* 2A9B8 800BFDB8 286200E6 */   slti      $v0, $v1, 0xe6
/* 2A9BC 800BFDBC 14400017 */  bnez       $v0, .L800BFE1C
/* 2A9C0 800BFDC0 460061A1 */   cvt.d.s   $f6, $f12
/* 2A9C4 800BFDC4 00000000 */  nop
/* 2A9C8 800BFDC8 46263102 */  mul.d      $f4, $f6, $f6
/* 2A9CC 800BFDCC 3C018010 */  lui        $at, %hi(D_800FEFC0)
/* 2A9D0 800BFDD0 D420EFC0 */  ldc1       $f0, %lo(D_800FEFC0)($at)
/* 2A9D4 800BFDD4 46240002 */  mul.d      $f0, $f0, $f4
/* 2A9D8 800BFDD8 3C018010 */  lui        $at, %hi(D_800FEFB8)
/* 2A9DC 800BFDDC D422EFB8 */  ldc1       $f2, %lo(D_800FEFB8)($at)
/* 2A9E0 800BFDE0 46220000 */  add.d      $f0, $f0, $f2
/* 2A9E4 800BFDE4 46240002 */  mul.d      $f0, $f0, $f4
/* 2A9E8 800BFDE8 3C018010 */  lui        $at, %hi(D_800FEFB0)
/* 2A9EC 800BFDEC D422EFB0 */  ldc1       $f2, %lo(D_800FEFB0)($at)
/* 2A9F0 800BFDF0 46220000 */  add.d      $f0, $f0, $f2
/* 2A9F4 800BFDF4 46240002 */  mul.d      $f0, $f0, $f4
/* 2A9F8 800BFDF8 00000000 */  nop
/* 2A9FC 800BFDFC 46243082 */  mul.d      $f2, $f6, $f4
/* 2AA00 800BFE00 3C018010 */  lui        $at, %hi(D_800FEFA8)
/* 2AA04 800BFE04 D424EFA8 */  ldc1       $f4, %lo(D_800FEFA8)($at)
/* 2AA08 800BFE08 46240000 */  add.d      $f0, $f0, $f4
/* 2AA0C 800BFE0C 46201082 */  mul.d      $f2, $f2, $f0
/* 2AA10 800BFE10 46223000 */  add.d      $f0, $f6, $f2
/* 2AA14 800BFE14 0802FFCE */  j          .L800BFF38
/* 2AA18 800BFE18 46200020 */   cvt.s.d   $f0, $f0
.L800BFE1C:
/* 2AA1C 800BFE1C 0802FFCE */  j          .L800BFF38
/* 2AA20 800BFE20 46006006 */   mov.s     $f0, $f12
.L800BFE24:
/* 2AA24 800BFE24 28620136 */  slti       $v0, $v1, 0x136
/* 2AA28 800BFE28 1040003A */  beqz       $v0, .L800BFF14
/* 2AA2C 800BFE2C 00000000 */   nop
/* 2AA30 800BFE30 3C018010 */  lui        $at, %hi(D_800FEFC8)
/* 2AA34 800BFE34 D420EFC8 */  ldc1       $f0, %lo(D_800FEFC8)($at)
/* 2AA38 800BFE38 460061A1 */  cvt.d.s    $f6, $f12
/* 2AA3C 800BFE3C 46203102 */  mul.d      $f4, $f6, $f0
/* 2AA40 800BFE40 44800000 */  mtc1       $zero, $f0
/* 2AA44 800BFE44 44800800 */  mtc1       $zero, $f1
/* 2AA48 800BFE48 00000000 */  nop
/* 2AA4C 800BFE4C 4624003E */  c.le.d     $f0, $f4
/* 2AA50 800BFE50 00000000 */  nop
/* 2AA54 800BFE54 45000005 */  bc1f       .L800BFE6C
/* 2AA58 800BFE58 00000000 */   nop
/* 2AA5C 800BFE5C 3C018010 */  lui        $at, %hi(D_800FEFE8)
/* 2AA60 800BFE60 D420EFE8 */  ldc1       $f0, %lo(D_800FEFE8)($at)
/* 2AA64 800BFE64 0802FF9E */  j          .L800BFE78
/* 2AA68 800BFE68 46202000 */   add.d     $f0, $f4, $f0
.L800BFE6C:
/* 2AA6C 800BFE6C 3C018010 */  lui        $at, %hi(D_800FEFF0)
/* 2AA70 800BFE70 D420EFF0 */  ldc1       $f0, %lo(D_800FEFF0)($at)
/* 2AA74 800BFE74 46202001 */  sub.d      $f0, $f4, $f0
.L800BFE78:
/* 2AA78 800BFE78 4620008D */  trunc.w.d  $f2, $f0
/* 2AA7C 800BFE7C 44031000 */  mfc1       $v1, $f2
/* 2AA80 800BFE80 3C018010 */  lui        $at, %hi(D_800FEFD0)
/* 2AA84 800BFE84 D422EFD0 */  ldc1       $f2, %lo(D_800FEFD0)($at)
/* 2AA88 800BFE88 44832000 */  mtc1       $v1, $f4
/* 2AA8C 800BFE8C 00000000 */  nop
/* 2AA90 800BFE90 46802121 */  cvt.d.w    $f4, $f4
/* 2AA94 800BFE94 46222082 */  mul.d      $f2, $f4, $f2
/* 2AA98 800BFE98 3C018010 */  lui        $at, %hi(D_800FEFD8)
/* 2AA9C 800BFE9C D420EFD8 */  ldc1       $f0, %lo(D_800FEFD8)($at)
/* 2AAA0 800BFEA0 46202002 */  mul.d      $f0, $f4, $f0
/* 2AAA4 800BFEA4 46223181 */  sub.d      $f6, $f6, $f2
/* 2AAA8 800BFEA8 46203181 */  sub.d      $f6, $f6, $f0
/* 2AAAC 800BFEAC 46263102 */  mul.d      $f4, $f6, $f6
/* 2AAB0 800BFEB0 3C018010 */  lui        $at, %hi(D_800FEFC0)
/* 2AAB4 800BFEB4 D420EFC0 */  ldc1       $f0, %lo(D_800FEFC0)($at)
/* 2AAB8 800BFEB8 46240002 */  mul.d      $f0, $f0, $f4
/* 2AABC 800BFEBC 3C018010 */  lui        $at, %hi(D_800FEFB8)
/* 2AAC0 800BFEC0 D422EFB8 */  ldc1       $f2, %lo(D_800FEFB8)($at)
/* 2AAC4 800BFEC4 46220000 */  add.d      $f0, $f0, $f2
/* 2AAC8 800BFEC8 46240002 */  mul.d      $f0, $f0, $f4
/* 2AACC 800BFECC 3C018010 */  lui        $at, %hi(D_800FEFB0)
/* 2AAD0 800BFED0 D422EFB0 */  ldc1       $f2, %lo(D_800FEFB0)($at)
/* 2AAD4 800BFED4 46220000 */  add.d      $f0, $f0, $f2
/* 2AAD8 800BFED8 46240002 */  mul.d      $f0, $f0, $f4
/* 2AADC 800BFEDC 00000000 */  nop
/* 2AAE0 800BFEE0 46243082 */  mul.d      $f2, $f6, $f4
/* 2AAE4 800BFEE4 3C018010 */  lui        $at, %hi(D_800FEFA8)
/* 2AAE8 800BFEE8 D424EFA8 */  ldc1       $f4, %lo(D_800FEFA8)($at)
/* 2AAEC 800BFEEC 46240000 */  add.d      $f0, $f0, $f4
/* 2AAF0 800BFEF0 46201082 */  mul.d      $f2, $f2, $f0
/* 2AAF4 800BFEF4 30620001 */  andi       $v0, $v1, 1
/* 2AAF8 800BFEF8 14400003 */  bnez       $v0, .L800BFF08
/* 2AAFC 800BFEFC 46223000 */   add.d     $f0, $f6, $f2
/* 2AB00 800BFF00 0802FFCE */  j          .L800BFF38
/* 2AB04 800BFF04 46200020 */   cvt.s.d   $f0, $f0
.L800BFF08:
/* 2AB08 800BFF08 46200020 */  cvt.s.d    $f0, $f0
/* 2AB0C 800BFF0C 0802FFCE */  j          .L800BFF38
/* 2AB10 800BFF10 46000007 */   neg.s     $f0, $f0
.L800BFF14:
/* 2AB14 800BFF14 460C6032 */  c.eq.s     $f12, $f12
/* 2AB18 800BFF18 00000000 */  nop
/* 2AB1C 800BFF1C 45000004 */  bc1f       .L800BFF30
/* 2AB20 800BFF20 00000000 */   nop
/* 2AB24 800BFF24 3C018010 */  lui        $at, %hi(D_800FEFE0)
/* 2AB28 800BFF28 0802FFCE */  j          .L800BFF38
/* 2AB2C 800BFF2C C420EFE0 */   lwc1      $f0, %lo(D_800FEFE0)($at)
.L800BFF30:
/* 2AB30 800BFF30 3C018010 */  lui        $at, %hi(D_800FF080)
/* 2AB34 800BFF34 C420F080 */  lwc1       $f0, %lo(D_800FF080)($at)
.L800BFF38:
/* 2AB38 800BFF38 03E00008 */  jr         $ra
/* 2AB3C 800BFF3C 00000000 */   nop
