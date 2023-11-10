glabel func_800ADE40
/* 18A40 800ADE40 90A60000 */  lbu        $a2, 0x0($a1)
/* 18A44 800ADE44 30C20080 */  andi       $v0, $a2, 0x80
/* 18A48 800ADE48 10400006 */  beqz       $v0, .L800ADE64
/* 18A4C 800ADE4C 24A50001 */   addiu     $a1, $a1, 0x1
/* 18A50 800ADE50 30C6007F */  andi       $a2, $a2, 0x7F
/* 18A54 800ADE54 90A20000 */  lbu        $v0, 0x0($a1)
/* 18A58 800ADE58 00063200 */  sll        $a2, $a2, 8
/* 18A5C 800ADE5C 24A50001 */  addiu      $a1, $a1, 0x1
/* 18A60 800ADE60 00C23025 */  or         $a2, $a2, $v0
.L800ADE64:
/* 18A64 800ADE64 8C820074 */  lw         $v0, 0x74($a0)
/* 18A68 800ADE68 8C430018 */  lw         $v1, 0x18($v0)
/* 18A6C 800ADE6C 000610C0 */  sll        $v0, $a2, 3
/* 18A70 800ADE70 00461023 */  subu       $v0, $v0, $a2
/* 18A74 800ADE74 00431021 */  addu       $v0, $v0, $v1
/* 18A78 800ADE78 90460000 */  lbu        $a2, 0x0($v0)
/* 18A7C 800ADE7C 14C00002 */  bnez       $a2, .L800ADE88
/* 18A80 800ADE80 00403821 */   addu      $a3, $v0, $zero
/* 18A84 800ADE84 24060001 */  addiu      $a2, $zero, 0x1
.L800ADE88:
/* 18A88 800ADE88 24020400 */  addiu      $v0, $zero, 0x400
/* 18A8C 800ADE8C 0046001A */  div        $zero, $v0, $a2
/* 18A90 800ADE90 14C00002 */  bnez       $a2, .L800ADE9C
/* 18A94 800ADE94 00000000 */   nop
/* 18A98 800ADE98 0007000D */  break      7
.L800ADE9C:
/* 18A9C 800ADE9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 18AA0 800ADEA0 14C10004 */  bne        $a2, $at, .L800ADEB4
/* 18AA4 800ADEA4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 18AA8 800ADEA8 14410002 */  bne        $v0, $at, .L800ADEB4
/* 18AAC 800ADEAC 00000000 */   nop
/* 18AB0 800ADEB0 0006000D */  break      6
.L800ADEB4:
/* 18AB4 800ADEB4 00001012 */  mflo       $v0
/* 18AB8 800ADEB8 A08600BF */  sb         $a2, 0xBF($a0)
/* 18ABC 800ADEBC AC820064 */  sw         $v0, 0x64($a0)
/* 18AC0 800ADEC0 90E20001 */  lbu        $v0, 0x1($a3)
/* 18AC4 800ADEC4 A08200C0 */  sb         $v0, 0xC0($a0)
/* 18AC8 800ADEC8 90E60002 */  lbu        $a2, 0x2($a3)
/* 18ACC 800ADECC 3C018010 */  lui        $at, %hi(D_800FEA30)
/* 18AD0 800ADED0 D424EA30 */  ldc1       $f4, %lo(D_800FEA30)($at)
/* 18AD4 800ADED4 44861000 */  mtc1       $a2, $f2
/* 18AD8 800ADED8 00000000 */  nop
/* 18ADC 800ADEDC 468010A0 */  cvt.s.w    $f2, $f2
/* 18AE0 800ADEE0 460010A1 */  cvt.d.s    $f2, $f2
/* 18AE4 800ADEE4 46222083 */  div.d      $f2, $f4, $f2
/* 18AE8 800ADEE8 908200C0 */  lbu        $v0, 0xC0($a0)
/* 18AEC 800ADEEC A08600C6 */  sb         $a2, 0xC6($a0)
/* 18AF0 800ADEF0 90E30003 */  lbu        $v1, 0x3($a3)
/* 18AF4 800ADEF4 00621023 */  subu       $v0, $v1, $v0
/* 18AF8 800ADEF8 44820000 */  mtc1       $v0, $f0
/* 18AFC 800ADEFC 00000000 */  nop
/* 18B00 800ADF00 46800020 */  cvt.s.w    $f0, $f0
/* 18B04 800ADF04 46000021 */  cvt.d.s    $f0, $f0
/* 18B08 800ADF08 46201082 */  mul.d      $f2, $f2, $f0
/* 18B0C 800ADF0C A08300C1 */  sb         $v1, 0xC1($a0)
/* 18B10 800ADF10 462010A0 */  cvt.s.d    $f2, $f2
/* 18B14 800ADF14 E4820058 */  swc1       $f2, 0x58($a0)
/* 18B18 800ADF18 90E60004 */  lbu        $a2, 0x4($a3)
/* 18B1C 800ADF1C 44861000 */  mtc1       $a2, $f2
/* 18B20 800ADF20 00000000 */  nop
/* 18B24 800ADF24 468010A0 */  cvt.s.w    $f2, $f2
/* 18B28 800ADF28 460010A1 */  cvt.d.s    $f2, $f2
/* 18B2C 800ADF2C 46222083 */  div.d      $f2, $f4, $f2
/* 18B30 800ADF30 908200C1 */  lbu        $v0, 0xC1($a0)
/* 18B34 800ADF34 A08600C7 */  sb         $a2, 0xC7($a0)
/* 18B38 800ADF38 90E30005 */  lbu        $v1, 0x5($a3)
/* 18B3C 800ADF3C 00621023 */  subu       $v0, $v1, $v0
/* 18B40 800ADF40 44820000 */  mtc1       $v0, $f0
/* 18B44 800ADF44 00000000 */  nop
/* 18B48 800ADF48 46800020 */  cvt.s.w    $f0, $f0
/* 18B4C 800ADF4C 46000021 */  cvt.d.s    $f0, $f0
/* 18B50 800ADF50 46201082 */  mul.d      $f2, $f2, $f0
/* 18B54 800ADF54 A08300C2 */  sb         $v1, 0xC2($a0)
/* 18B58 800ADF58 462010A0 */  cvt.s.d    $f2, $f2
/* 18B5C 800ADF5C E482005C */  swc1       $f2, 0x5C($a0)
/* 18B60 800ADF60 90E60006 */  lbu        $a2, 0x6($a3)
/* 18B64 800ADF64 44860000 */  mtc1       $a2, $f0
/* 18B68 800ADF68 00000000 */  nop
/* 18B6C 800ADF6C 46800020 */  cvt.s.w    $f0, $f0
/* 18B70 800ADF70 46000021 */  cvt.d.s    $f0, $f0
/* 18B74 800ADF74 46202103 */  div.d      $f4, $f4, $f0
/* 18B78 800ADF78 00A01021 */  addu       $v0, $a1, $zero
/* 18B7C 800ADF7C A08600C8 */  sb         $a2, 0xC8($a0)
/* 18B80 800ADF80 46202120 */  cvt.s.d    $f4, $f4
/* 18B84 800ADF84 03E00008 */  jr         $ra
/* 18B88 800ADF88 E4840060 */   swc1      $f4, 0x60($a0)
.size func_800ADE40, . - func_800ADE40
