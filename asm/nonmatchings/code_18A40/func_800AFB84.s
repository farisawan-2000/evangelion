glabel func_800AFB84
/* 1A784 800AFB84 00802821 */  addu       $a1, $a0, $zero
/* 1A788 800AFB88 8CA20054 */  lw         $v0, 0x54($a1)
/* 1A78C 800AFB8C 8CA3000C */  lw         $v1, 0xC($a1)
/* 1A790 800AFB90 00431023 */  subu       $v0, $v0, $v1
/* 1A794 800AFB94 0441000A */  bgez       $v0, .L800AFBC0
/* 1A798 800AFB98 00000000 */   nop
/* 1A79C 800AFB9C 90A200C3 */  lbu        $v0, 0xC3($a1)
/* 1A7A0 800AFBA0 2C420004 */  sltiu      $v0, $v0, 0x4
/* 1A7A4 800AFBA4 10400006 */  beqz       $v0, .L800AFBC0
/* 1A7A8 800AFBA8 24030004 */   addiu     $v1, $zero, 0x4
/* 1A7AC 800AFBAC 90A200C4 */  lbu        $v0, 0xC4($a1)
/* 1A7B0 800AFBB0 A0A300C3 */  sb         $v1, 0xC3($a1)
/* 1A7B4 800AFBB4 24030001 */  addiu      $v1, $zero, 0x1
/* 1A7B8 800AFBB8 A0A300C5 */  sb         $v1, 0xC5($a1)
/* 1A7BC 800AFBBC A0A200CD */  sb         $v0, 0xCD($a1)
.L800AFBC0:
/* 1A7C0 800AFBC0 90A600C3 */  lbu        $a2, 0xC3($a1)
/* 1A7C4 800AFBC4 90A200BF */  lbu        $v0, 0xBF($a1)
/* 1A7C8 800AFBC8 30C300FF */  andi       $v1, $a2, 0xFF
/* 1A7CC 800AFBCC A0A200C5 */  sb         $v0, 0xC5($a1)
/* 1A7D0 800AFBD0 24020002 */  addiu      $v0, $zero, 0x2
/* 1A7D4 800AFBD4 10620024 */  beq        $v1, $v0, .L800AFC68
/* 1A7D8 800AFBD8 28620003 */   slti      $v0, $v1, 0x3
/* 1A7DC 800AFBDC 10400005 */  beqz       $v0, .L800AFBF4
/* 1A7E0 800AFBE0 24020001 */   addiu     $v0, $zero, 0x1
/* 1A7E4 800AFBE4 1062000A */  beq        $v1, $v0, .L800AFC10
/* 1A7E8 800AFBE8 00000000 */   nop
/* 1A7EC 800AFBEC 0802BF56 */  j          .L800AFD58
/* 1A7F0 800AFBF0 00000000 */   nop
.L800AFBF4:
/* 1A7F4 800AFBF4 24020003 */  addiu      $v0, $zero, 0x3
/* 1A7F8 800AFBF8 10620057 */  beq        $v1, $v0, .L800AFD58
/* 1A7FC 800AFBFC 24020004 */   addiu     $v0, $zero, 0x4
/* 1A800 800AFC00 10620037 */  beq        $v1, $v0, .L800AFCE0
/* 1A804 800AFC04 00000000 */   nop
/* 1A808 800AFC08 0802BF56 */  j          .L800AFD58
/* 1A80C 800AFC0C 00000000 */   nop
.L800AFC10:
/* 1A810 800AFC10 8CA2000C */  lw         $v0, 0xC($a1)
/* 1A814 800AFC14 8CA30040 */  lw         $v1, 0x40($a1)
/* 1A818 800AFC18 8CA40064 */  lw         $a0, 0x64($a1)
/* 1A81C 800AFC1C 00431023 */  subu       $v0, $v0, $v1
/* 1A820 800AFC20 00021202 */  srl        $v0, $v0, 8
/* 1A824 800AFC24 00440018 */  mult       $v0, $a0
/* 1A828 800AFC28 00001012 */  mflo       $v0
/* 1A82C 800AFC2C 90A300C6 */  lbu        $v1, 0xC6($a1)
/* 1A830 800AFC30 00021282 */  srl        $v0, $v0, 10
/* 1A834 800AFC34 0043182A */  slt        $v1, $v0, $v1
/* 1A838 800AFC38 10600008 */  beqz       $v1, .L800AFC5C
/* 1A83C 800AFC3C 00000000 */   nop
/* 1A840 800AFC40 C4A00058 */  lwc1       $f0, 0x58($a1)
/* 1A844 800AFC44 44821000 */  mtc1       $v0, $f2
/* 1A848 800AFC48 00000000 */  nop
/* 1A84C 800AFC4C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A850 800AFC50 90A200C0 */  lbu        $v0, 0xC0($a1)
/* 1A854 800AFC54 0802BF2E */  j          .L800AFCB8
/* 1A858 800AFC58 46020002 */   mul.s     $f0, $f0, $f2
.L800AFC5C:
/* 1A85C 800AFC5C 90A300C1 */  lbu        $v1, 0xC1($a1)
/* 1A860 800AFC60 0802BF35 */  j          .L800AFCD4
/* 1A864 800AFC64 24C20001 */   addiu     $v0, $a2, 0x1
.L800AFC68:
/* 1A868 800AFC68 8CA2000C */  lw         $v0, 0xC($a1)
/* 1A86C 800AFC6C 8CA30040 */  lw         $v1, 0x40($a1)
/* 1A870 800AFC70 00431023 */  subu       $v0, $v0, $v1
/* 1A874 800AFC74 90A300C6 */  lbu        $v1, 0xC6($a1)
/* 1A878 800AFC78 8CA40064 */  lw         $a0, 0x64($a1)
/* 1A87C 800AFC7C 00021202 */  srl        $v0, $v0, 8
/* 1A880 800AFC80 00431023 */  subu       $v0, $v0, $v1
/* 1A884 800AFC84 00440018 */  mult       $v0, $a0
/* 1A888 800AFC88 00001012 */  mflo       $v0
/* 1A88C 800AFC8C 90A300C7 */  lbu        $v1, 0xC7($a1)
/* 1A890 800AFC90 00021282 */  srl        $v0, $v0, 10
/* 1A894 800AFC94 0043182A */  slt        $v1, $v0, $v1
/* 1A898 800AFC98 5060000D */  beql       $v1, $zero, .L800AFCD0
/* 1A89C 800AFC9C 24C20001 */   addiu     $v0, $a2, 0x1
/* 1A8A0 800AFCA0 C4A0005C */  lwc1       $f0, 0x5C($a1)
/* 1A8A4 800AFCA4 44821000 */  mtc1       $v0, $f2
/* 1A8A8 800AFCA8 00000000 */  nop
/* 1A8AC 800AFCAC 468010A0 */  cvt.s.w    $f2, $f2
/* 1A8B0 800AFCB0 46020002 */  mul.s      $f0, $f0, $f2
/* 1A8B4 800AFCB4 90A200C1 */  lbu        $v0, 0xC1($a1)
.L800AFCB8:
/* 1A8B8 800AFCB8 4600008D */  trunc.w.s  $f2, $f0
/* 1A8BC 800AFCBC 44031000 */  mfc1       $v1, $f2
/* 1A8C0 800AFCC0 00000000 */  nop
/* 1A8C4 800AFCC4 00431021 */  addu       $v0, $v0, $v1
/* 1A8C8 800AFCC8 0802BF56 */  j          .L800AFD58
/* 1A8CC 800AFCCC A0A200C4 */   sb        $v0, 0xC4($a1)
.L800AFCD0:
/* 1A8D0 800AFCD0 90A300C2 */  lbu        $v1, 0xC2($a1)
.L800AFCD4:
/* 1A8D4 800AFCD4 A0A200C3 */  sb         $v0, 0xC3($a1)
/* 1A8D8 800AFCD8 0802BF56 */  j          .L800AFD58
/* 1A8DC 800AFCDC A0A300C4 */   sb        $v1, 0xC4($a1)
.L800AFCE0:
/* 1A8E0 800AFCE0 8CA2000C */  lw         $v0, 0xC($a1)
/* 1A8E4 800AFCE4 8CA30054 */  lw         $v1, 0x54($a1)
/* 1A8E8 800AFCE8 8CA40064 */  lw         $a0, 0x64($a1)
/* 1A8EC 800AFCEC 00431023 */  subu       $v0, $v0, $v1
/* 1A8F0 800AFCF0 00021202 */  srl        $v0, $v0, 8
/* 1A8F4 800AFCF4 00440018 */  mult       $v0, $a0
/* 1A8F8 800AFCF8 00001012 */  mflo       $v0
/* 1A8FC 800AFCFC 90A300C8 */  lbu        $v1, 0xC8($a1)
/* 1A900 800AFD00 00021282 */  srl        $v0, $v0, 10
/* 1A904 800AFD04 0043182A */  slt        $v1, $v0, $v1
/* 1A908 800AFD08 50600011 */  beql       $v1, $zero, .L800AFD50
/* 1A90C 800AFD0C 24C20001 */   addiu     $v0, $a2, 0x1
/* 1A910 800AFD10 C4A00060 */  lwc1       $f0, 0x60($a1)
/* 1A914 800AFD14 44821000 */  mtc1       $v0, $f2
/* 1A918 800AFD18 00000000 */  nop
/* 1A91C 800AFD1C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A920 800AFD20 46020002 */  mul.s      $f0, $f0, $f2
/* 1A924 800AFD24 90A200CD */  lbu        $v0, 0xCD($a1)
/* 1A928 800AFD28 44821000 */  mtc1       $v0, $f2
/* 1A92C 800AFD2C 00000000 */  nop
/* 1A930 800AFD30 468010A0 */  cvt.s.w    $f2, $f2
/* 1A934 800AFD34 46020002 */  mul.s      $f0, $f0, $f2
/* 1A938 800AFD38 4600008D */  trunc.w.s  $f2, $f0
/* 1A93C 800AFD3C 44031000 */  mfc1       $v1, $f2
/* 1A940 800AFD40 00000000 */  nop
/* 1A944 800AFD44 00431023 */  subu       $v0, $v0, $v1
/* 1A948 800AFD48 0802BF56 */  j          .L800AFD58
/* 1A94C 800AFD4C A0A200C4 */   sb        $v0, 0xC4($a1)
.L800AFD50:
/* 1A950 800AFD50 A0A200C3 */  sb         $v0, 0xC3($a1)
/* 1A954 800AFD54 A0A000C4 */  sb         $zero, 0xC4($a1)
.L800AFD58:
/* 1A958 800AFD58 03E00008 */  jr         $ra
/* 1A95C 800AFD5C 00000000 */   nop
.size func_800AFB84, . - func_800AFB84
