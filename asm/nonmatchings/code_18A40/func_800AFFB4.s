.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AFFB4
/* 1ABB4 800AFFB4 00802821 */  addu       $a1, $a0, $zero
/* 1ABB8 800AFFB8 3C018010 */  lui        $at, %hi(D_800FEA50)
/* 1ABBC 800AFFBC D424EA50 */  ldc1       $f4, %lo(D_800FEA50)($at)
/* 1ABC0 800AFFC0 24060001 */  addiu      $a2, $zero, 1
.L800AFFC4:
/* 1ABC4 800AFFC4 94A300A4 */  lhu        $v1, 0xa4($a1)
/* 1ABC8 800AFFC8 8CA20018 */  lw         $v0, 0x18($a1)
/* 1ABCC 800AFFCC 2463FFFF */  addiu      $v1, $v1, -1
/* 1ABD0 800AFFD0 24420100 */  addiu      $v0, $v0, 0x100
/* 1ABD4 800AFFD4 A4A300A4 */  sh         $v1, 0xa4($a1)
/* 1ABD8 800AFFD8 3063FFFF */  andi       $v1, $v1, 0xffff
/* 1ABDC 800AFFDC 14600033 */  bnez       $v1, .L800B00AC
/* 1ABE0 800AFFE0 ACA20018 */   sw        $v0, 0x18($a1)
/* 1ABE4 800AFFE4 8CA20034 */  lw         $v0, 0x34($a1)
/* 1ABE8 800AFFE8 24430001 */  addiu      $v1, $v0, 1
/* 1ABEC 800AFFEC ACA30034 */  sw         $v1, 0x34($a1)
/* 1ABF0 800AFFF0 90430000 */  lbu        $v1, ($v0)
/* 1ABF4 800AFFF4 306400FF */  andi       $a0, $v1, 0xff
/* 1ABF8 800AFFF8 2C820080 */  sltiu      $v0, $a0, 0x80
/* 1ABFC 800AFFFC 14400020 */  bnez       $v0, .L800B0080
/* 1AC00 800B0000 3062007F */   andi      $v0, $v1, 0x7f
/* 1AC04 800B0004 44820000 */  mtc1       $v0, $f0
/* 1AC08 800B0008 00000000 */  nop
/* 1AC0C 800B000C 46800020 */  cvt.s.w    $f0, $f0
/* 1AC10 800B0010 46000021 */  cvt.d.s    $f0, $f0
/* 1AC14 800B0014 46240001 */  sub.d      $f0, $f0, $f4
/* 1AC18 800B0018 C4A2006C */  lwc1       $f2, 0x6c($a1)
/* 1AC1C 800B001C 46200020 */  cvt.s.d    $f0, $f0
/* 1AC20 800B0020 46020082 */  mul.s      $f2, $f0, $f2
/* 1AC24 800B0024 8CA30034 */  lw         $v1, 0x34($a1)
/* 1AC28 800B0028 24620001 */  addiu      $v0, $v1, 1
/* 1AC2C 800B002C ACA20034 */  sw         $v0, 0x34($a1)
/* 1AC30 800B0030 E4A00070 */  swc1       $f0, 0x70($a1)
/* 1AC34 800B0034 E4A20024 */  swc1       $f2, 0x24($a1)
/* 1AC38 800B0038 90630000 */  lbu        $v1, ($v1)
/* 1AC3C 800B003C 306200FF */  andi       $v0, $v1, 0xff
/* 1AC40 800B0040 2C420080 */  sltiu      $v0, $v0, 0x80
/* 1AC44 800B0044 1440000C */  bnez       $v0, .L800B0078
/* 1AC48 800B0048 24620002 */   addiu     $v0, $v1, 2
/* 1AC4C 800B004C 8CA40034 */  lw         $a0, 0x34($a1)
/* 1AC50 800B0050 3063007F */  andi       $v1, $v1, 0x7f
/* 1AC54 800B0054 00031A00 */  sll        $v1, $v1, 8
/* 1AC58 800B0058 A4A300A4 */  sh         $v1, 0xa4($a1)
/* 1AC5C 800B005C 24820001 */  addiu      $v0, $a0, 1
/* 1AC60 800B0060 ACA20034 */  sw         $v0, 0x34($a1)
/* 1AC64 800B0064 90820000 */  lbu        $v0, ($a0)
/* 1AC68 800B0068 24630002 */  addiu      $v1, $v1, 2
/* 1AC6C 800B006C 00431021 */  addu       $v0, $v0, $v1
/* 1AC70 800B0070 0802C02B */  j          .L800B00AC
/* 1AC74 800B0074 A4A200A4 */   sh        $v0, 0xa4($a1)
.L800B0078:
/* 1AC78 800B0078 0802C02B */  j          .L800B00AC
/* 1AC7C 800B007C A4A200A4 */   sh        $v0, 0xa4($a1)
.L800B0080:
/* 1AC80 800B0080 44840000 */  mtc1       $a0, $f0
/* 1AC84 800B0084 00000000 */  nop
/* 1AC88 800B0088 46800020 */  cvt.s.w    $f0, $f0
/* 1AC8C 800B008C 46000021 */  cvt.d.s    $f0, $f0
/* 1AC90 800B0090 46240001 */  sub.d      $f0, $f0, $f4
/* 1AC94 800B0094 C4A2006C */  lwc1       $f2, 0x6c($a1)
/* 1AC98 800B0098 46200020 */  cvt.s.d    $f0, $f0
/* 1AC9C 800B009C 46020082 */  mul.s      $f2, $f0, $f2
/* 1ACA0 800B00A0 A4A600A4 */  sh         $a2, 0xa4($a1)
/* 1ACA4 800B00A4 E4A00070 */  swc1       $f0, 0x70($a1)
/* 1ACA8 800B00A8 E4A20024 */  swc1       $f2, 0x24($a1)
.L800B00AC:
/* 1ACAC 800B00AC 8CA20018 */  lw         $v0, 0x18($a1)
/* 1ACB0 800B00B0 8CA3000C */  lw         $v1, 0xc($a1)
/* 1ACB4 800B00B4 00431023 */  subu       $v0, $v0, $v1
/* 1ACB8 800B00B8 0440FFC2 */  bltz       $v0, .L800AFFC4
/* 1ACBC 800B00BC 00000000 */   nop
/* 1ACC0 800B00C0 03E00008 */  jr         $ra
/* 1ACC4 800B00C4 00000000 */   nop
