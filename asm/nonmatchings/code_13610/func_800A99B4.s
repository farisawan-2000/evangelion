.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A99B4
/* 145B4 800A99B4 3C028015 */  lui        $v0, %hi(D_80149BBC)
/* 145B8 800A99B8 8C429BBC */  lw         $v0, %lo(D_80149BBC)($v0)
/* 145BC 800A99BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 145C0 800A99C0 10400068 */  beqz       $v0, .L800A9B64
/* 145C4 800A99C4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 145C8 800A99C8 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 145CC 800A99CC 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 145D0 800A99D0 30421000 */  andi       $v0, $v0, 0x1000
/* 145D4 800A99D4 10400063 */  beqz       $v0, .L800A9B64
/* 145D8 800A99D8 00000000 */   nop
/* 145DC 800A99DC 3C028017 */  lui        $v0, %hi(D_8016D7F0)
/* 145E0 800A99E0 9042D7F0 */  lbu        $v0, %lo(D_8016D7F0)($v0)
/* 145E4 800A99E4 1440003E */  bnez       $v0, .L800A9AE0
/* 145E8 800A99E8 00000000 */   nop
/* 145EC 800A99EC 3C02800D */  lui        $v0, %hi(D_800D4C54)
/* 145F0 800A99F0 8C424C54 */  lw         $v0, %lo(D_800D4C54)($v0)
/* 145F4 800A99F4 1440005B */  bnez       $v0, .L800A9B64
/* 145F8 800A99F8 240300FF */   addiu     $v1, $zero, 0xff
/* 145FC 800A99FC 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 14600 800A9A00 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 14604 800A9A04 0062001A */  div        $zero, $v1, $v0
/* 14608 800A9A08 14400002 */  bnez       $v0, .L800A9A14
/* 1460C 800A9A0C 00000000 */   nop
/* 14610 800A9A10 0007000D */  break      7
.L800A9A14:
/* 14614 800A9A14 2401FFFF */   addiu     $at, $zero, -1
/* 14618 800A9A18 14410004 */  bne        $v0, $at, .L800A9A2C
/* 1461C 800A9A1C 3C018000 */   lui       $at, 0x8000
/* 14620 800A9A20 14610002 */  bne        $v1, $at, .L800A9A2C
/* 14624 800A9A24 00000000 */   nop
/* 14628 800A9A28 0006000D */  break      6
.L800A9A2C:
/* 1462C 800A9A2C 00001812 */   mflo      $v1
/* 14630 800A9A30 00000000 */  nop
/* 14634 800A9A34 00000000 */  nop
/* 14638 800A9A38 3C018010 */  lui        $at, %hi(D_800FB118)
/* 1463C 800A9A3C D422B118 */  ldc1       $f2, %lo(D_800FB118)($at)
/* 14640 800A9A40 44820000 */  mtc1       $v0, $f0
/* 14644 800A9A44 00000000 */  nop
/* 14648 800A9A48 46800021 */  cvt.d.w    $f0, $f0
/* 1464C 800A9A4C 46220002 */  mul.d      $f0, $f0, $f2
/* 14650 800A9A50 3C018010 */  lui        $at, %hi(D_800FB120)
/* 14654 800A9A54 D422B120 */  ldc1       $f2, %lo(D_800FB120)($at)
/* 14658 800A9A58 46201083 */  div.d      $f2, $f2, $f0
/* 1465C 800A9A5C 3C018010 */  lui        $at, %hi(D_8010054A)
/* 14660 800A9A60 A420054A */  sh         $zero, %lo(D_8010054A)($at)
/* 14664 800A9A64 3C018010 */  lui        $at, %hi(D_8010054E)
/* 14668 800A9A68 A420054E */  sh         $zero, %lo(D_8010054E)($at)
/* 1466C 800A9A6C 3C018010 */  lui        $at, %hi(D_80100554)
/* 14670 800A9A70 AC200554 */  sw         $zero, %lo(D_80100554)($at)
/* 14674 800A9A74 3C01800D */  lui        $at, %hi(D_800D4C58)
/* 14678 800A9A78 A0204C58 */  sb         $zero, %lo(D_800D4C58)($at)
/* 1467C 800A9A7C 4620010D */  trunc.w.d  $f4, $f0
/* 14680 800A9A80 3C01800D */  lui        $at, %hi(D_800D4C54)
/* 14684 800A9A84 E4244C54 */  swc1       $f4, %lo(D_800D4C54)($at)
/* 14688 800A9A88 4620100D */  trunc.w.d  $f0, $f2
/* 1468C 800A9A8C 44020000 */  mfc1       $v0, $f0
/* 14690 800A9A90 00000000 */  nop
/* 14694 800A9A94 3C018010 */  lui        $at, %hi(D_8010054C)
/* 14698 800A9A98 A422054C */  sh         $v0, %lo(D_8010054C)($at)
/* 1469C 800A9A9C 3C018010 */  lui        $at, %hi(D_80100550)
/* 146A0 800A9AA0 A4230550 */  sh         $v1, %lo(D_80100550)($at)
/* 146A4 800A9AA4 0C026DD5 */  jal        func_8009B754
/* 146A8 800A9AA8 2404009F */   addiu     $a0, $zero, 0x9f
/* 146AC 800A9AAC 24040001 */  addiu      $a0, $zero, 1
/* 146B0 800A9AB0 0C02B885 */  jal        func_800AE214
/* 146B4 800A9AB4 24055FFF */   addiu     $a1, $zero, 0x5fff
/* 146B8 800A9AB8 24040002 */  addiu      $a0, $zero, 2
/* 146BC 800A9ABC 0C02B885 */  jal        func_800AE214
/* 146C0 800A9AC0 24055FFF */   addiu     $a1, $zero, 0x5fff
/* 146C4 800A9AC4 0C026B46 */  jal        func_8009AD18
/* 146C8 800A9AC8 00000000 */   nop
/* 146CC 800A9ACC 24020001 */  addiu      $v0, $zero, 1
/* 146D0 800A9AD0 3C018017 */  lui        $at, %hi(D_8016D7F0)
/* 146D4 800A9AD4 A022D7F0 */  sb         $v0, %lo(D_8016D7F0)($at)
/* 146D8 800A9AD8 0802A6D9 */  j          .L800A9B64
/* 146DC 800A9ADC 00000000 */   nop
.L800A9AE0:
/* 146E0 800A9AE0 3C02800D */  lui        $v0, %hi(D_800D4C54)
/* 146E4 800A9AE4 8C424C54 */  lw         $v0, %lo(D_800D4C54)($v0)
/* 146E8 800A9AE8 1440001E */  bnez       $v0, .L800A9B64
/* 146EC 800A9AEC 24020001 */   addiu     $v0, $zero, 1
/* 146F0 800A9AF0 3C018010 */  lui        $at, %hi(D_800FB128)
/* 146F4 800A9AF4 D422B128 */  ldc1       $f2, %lo(D_800FB128)($at)
/* 146F8 800A9AF8 3C018017 */  lui        $at, %hi(D_8016D168)
/* 146FC 800A9AFC C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* 14700 800A9B00 46800021 */  cvt.d.w    $f0, $f0
/* 14704 800A9B04 46220002 */  mul.d      $f0, $f0, $f2
/* 14708 800A9B08 3C018010 */  lui        $at, %hi(D_800FB130)
/* 1470C 800A9B0C D422B130 */  ldc1       $f2, %lo(D_800FB130)($at)
/* 14710 800A9B10 46201083 */  div.d      $f2, $f2, $f0
/* 14714 800A9B14 3C01800D */  lui        $at, %hi(D_800D4C58)
/* 14718 800A9B18 A0224C58 */  sb         $v0, %lo(D_800D4C58)($at)
/* 1471C 800A9B1C 4620010D */  trunc.w.d  $f4, $f0
/* 14720 800A9B20 3C01800D */  lui        $at, %hi(D_800D4C54)
/* 14724 800A9B24 E4244C54 */  swc1       $f4, %lo(D_800D4C54)($at)
/* 14728 800A9B28 4620100D */  trunc.w.d  $f0, $f2
/* 1472C 800A9B2C 44020000 */  mfc1       $v0, $f0
/* 14730 800A9B30 00000000 */  nop
/* 14734 800A9B34 3C018010 */  lui        $at, %hi(D_8010054C)
/* 14738 800A9B38 A422054C */  sh         $v0, %lo(D_8010054C)($at)
/* 1473C 800A9B3C 0C026DD5 */  jal        func_8009B754
/* 14740 800A9B40 24040095 */   addiu     $a0, $zero, 0x95
/* 14744 800A9B44 24040001 */  addiu      $a0, $zero, 1
/* 14748 800A9B48 3C01800D */  lui        $at, %hi(D_800D4C5C)
/* 1474C 800A9B4C AC224C5C */  sw         $v0, %lo(D_800D4C5C)($at)
/* 14750 800A9B50 0C02B885 */  jal        func_800AE214
/* 14754 800A9B54 24057FFF */   addiu     $a1, $zero, 0x7fff
/* 14758 800A9B58 24040002 */  addiu      $a0, $zero, 2
/* 1475C 800A9B5C 0C02B885 */  jal        func_800AE214
/* 14760 800A9B60 24057FFF */   addiu     $a1, $zero, 0x7fff
.L800A9B64:
/* 14764 800A9B64 3C028017 */  lui        $v0, %hi(D_8016D7F0)
/* 14768 800A9B68 9042D7F0 */  lbu        $v0, %lo(D_8016D7F0)($v0)
/* 1476C 800A9B6C 3C038015 */  lui        $v1, %hi(D_8014A0C0)
/* 14770 800A9B70 9063A0C0 */  lbu        $v1, %lo(D_8014A0C0)($v1)
/* 14774 800A9B74 00431025 */  or         $v0, $v0, $v1
/* 14778 800A9B78 2C420001 */  sltiu      $v0, $v0, 1
/* 1477C 800A9B7C 3C018015 */  lui        $at, %hi(D_80149FC4)
/* 14780 800A9B80 A0229FC4 */  sb         $v0, %lo(D_80149FC4)($at)
/* 14784 800A9B84 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14788 800A9B88 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1478C 800A9B8C 03E00008 */  jr         $ra
/* 14790 800A9B90 00000000 */   nop
