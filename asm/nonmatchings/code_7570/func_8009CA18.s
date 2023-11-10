glabel func_8009CA18
/* 7618 8009CA18 3C02800D */  lui        $v0, %hi(D_800D3D50)
/* 761C 8009CA1C 90423D50 */  lbu        $v0, %lo(D_800D3D50)($v0)
/* 7620 8009CA20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7624 8009CA24 AFB00028 */  sw         $s0, 0x28($sp)
/* 7628 8009CA28 00808021 */  addu       $s0, $a0, $zero
/* 762C 8009CA2C 1040002B */  beqz       $v0, .L8009CADC
/* 7630 8009CA30 AFBF002C */   sw        $ra, 0x2C($sp)
/* 7634 8009CA34 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* 7638 8009CA38 44810000 */  mtc1       $at, $f0
/* 763C 8009CA3C 00000000 */  nop
/* 7640 8009CA40 24020021 */  addiu      $v0, $zero, 0x21
/* 7644 8009CA44 3C018015 */  lui        $at, %hi(D_80149D7C)
/* 7648 8009CA48 AC229D7C */  sw         $v0, %lo(D_80149D7C)($at)
/* 764C 8009CA4C 24020014 */  addiu      $v0, $zero, 0x14
/* 7650 8009CA50 3C018015 */  lui        $at, %hi(D_8014CF88)
/* 7654 8009CA54 AC22CF88 */  sw         $v0, %lo(D_8014CF88)($at)
/* 7658 8009CA58 240203E8 */  addiu      $v0, $zero, 0x3E8
/* 765C 8009CA5C 3C018015 */  lui        $at, %hi(D_8014A058)
/* 7660 8009CA60 AC20A058 */  sw         $zero, %lo(D_8014A058)($at)
/* 7664 8009CA64 3C018015 */  lui        $at, %hi(D_8014A05C)
/* 7668 8009CA68 AC20A05C */  sw         $zero, %lo(D_8014A05C)($at)
/* 766C 8009CA6C 3C018015 */  lui        $at, %hi(D_8014A060)
/* 7670 8009CA70 AC20A060 */  sw         $zero, %lo(D_8014A060)($at)
/* 7674 8009CA74 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7678 8009CA78 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 767C 8009CA7C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7680 8009CA80 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 7684 8009CA84 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7688 8009CA88 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 768C 8009CA8C 3C018015 */  lui        $at, %hi(D_8014A070)
/* 7690 8009CA90 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* 7694 8009CA94 3C018015 */  lui        $at, %hi(D_8014A074)
/* 7698 8009CA98 AC20A074 */  sw         $zero, %lo(D_8014A074)($at)
/* 769C 8009CA9C 3C018015 */  lui        $at, %hi(D_8014A078)
/* 76A0 8009CAA0 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* 76A4 8009CAA4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 76A8 8009CAA8 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 76AC 8009CAAC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 76B0 8009CAB0 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 76B4 8009CAB4 3C018015 */  lui        $at, %hi(D_8014A084)
/* 76B8 8009CAB8 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 76BC 8009CABC 3C018015 */  lui        $at, %hi(D_8014A08C)
/* 76C0 8009CAC0 A020A08C */  sb         $zero, %lo(D_8014A08C)($at)
/* 76C4 8009CAC4 3C018015 */  lui        $at, %hi(D_80149FE8)
/* 76C8 8009CAC8 AC229FE8 */  sw         $v0, %lo(D_80149FE8)($at)
/* 76CC 8009CACC 3C01800D */  lui        $at, %hi(D_800D3D50)
/* 76D0 8009CAD0 A0203D50 */  sb         $zero, %lo(D_800D3D50)($at)
/* 76D4 8009CAD4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 76D8 8009CAD8 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
.L8009CADC:
/* 76DC 8009CADC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 76E0 8009CAE0 44811000 */  mtc1       $at, $f2
/* 76E4 8009CAE4 00000000 */  nop
/* 76E8 8009CAE8 3C018015 */  lui        $at, %hi(D_8014CF88)
/* 76EC 8009CAEC C420CF88 */  lwc1       $f0, %lo(D_8014CF88)($at)
/* 76F0 8009CAF0 46800020 */  cvt.s.w    $f0, $f0
/* 76F4 8009CAF4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 76F8 8009CAF8 3C018015 */  lui        $at, %hi(D_80149FE8)
/* 76FC 8009CAFC C4209FE8 */  lwc1       $f0, %lo(D_80149FE8)($at)
/* 7700 8009CB00 46800020 */  cvt.s.w    $f0, $f0
/* 7704 8009CB04 E7A00014 */  swc1       $f0, 0x14($sp)
/* 7708 8009CB08 3C018015 */  lui        $at, %hi(D_80149D7C)
/* 770C 8009CB0C C4209D7C */  lwc1       $f0, %lo(D_80149D7C)($at)
/* 7710 8009CB10 46800020 */  cvt.s.w    $f0, $f0
/* 7714 8009CB14 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
/* 7718 8009CB18 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
/* 771C 8009CB1C 02002021 */  addu       $a0, $s0, $zero
/* 7720 8009CB20 44060000 */  mfc1       $a2, $f0
/* 7724 8009CB24 00000000 */  nop
/* 7728 8009CB28 27A50020 */  addiu      $a1, $sp, 0x20
/* 772C 8009CB2C 0C02FC24 */  jal        func_800BF090
/* 7730 8009CB30 E7A20018 */   swc1      $f2, 0x18($sp)
/* 7734 8009CB34 3C05DA38 */  lui        $a1, (0xDA380007 >> 16)
/* 7738 8009CB38 34A50007 */  ori        $a1, $a1, (0xDA380007 & 0xFFFF)
/* 773C 8009CB3C 3C06DA38 */  lui        $a2, (0xDA380005 >> 16)
/* 7740 8009CB40 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 7744 8009CB44 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 7748 8009CB48 97A40020 */  lhu        $a0, 0x20($sp)
/* 774C 8009CB4C 34C60005 */  ori        $a2, $a2, (0xDA380005 & 0xFFFF)
/* 7750 8009CB50 24620008 */  addiu      $v0, $v1, 0x8
/* 7754 8009CB54 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 7758 8009CB58 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 775C 8009CB5C 3C02DB0E */  lui        $v0, (0xDB0E0000 >> 16)
/* 7760 8009CB60 AC620000 */  sw         $v0, 0x0($v1)
/* 7764 8009CB64 24620010 */  addiu      $v0, $v1, 0x10
/* 7768 8009CB68 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 776C 8009CB6C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 7770 8009CB70 24620018 */  addiu      $v0, $v1, 0x18
/* 7774 8009CB74 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 7778 8009CB78 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 777C 8009CB7C 26020040 */  addiu      $v0, $s0, 0x40
/* 7780 8009CB80 AC620014 */  sw         $v0, 0x14($v1)
/* 7784 8009CB84 24620020 */  addiu      $v0, $v1, 0x20
/* 7788 8009CB88 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 778C 8009CB8C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 7790 8009CB90 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
/* 7794 8009CB94 AC640004 */  sw         $a0, 0x4($v1)
/* 7798 8009CB98 AC650008 */  sw         $a1, 0x8($v1)
/* 779C 8009CB9C AC70000C */  sw         $s0, 0xC($v1)
/* 77A0 8009CBA0 AC660010 */  sw         $a2, 0x10($v1)
/* 77A4 8009CBA4 AC620018 */  sw         $v0, 0x18($v1)
/* 77A8 8009CBA8 AC60001C */  sw         $zero, 0x1C($v1)
/* 77AC 8009CBAC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 77B0 8009CBB0 8FB00028 */  lw         $s0, 0x28($sp)
/* 77B4 8009CBB4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 77B8 8009CBB8 03E00008 */  jr         $ra
/* 77BC 8009CBBC 00000000 */   nop
.size func_8009CA18, . - func_8009CA18
