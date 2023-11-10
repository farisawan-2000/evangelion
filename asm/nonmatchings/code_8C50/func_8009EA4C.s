glabel func_8009EA4C
/* 964C 8009EA4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9650 8009EA50 00803821 */  addu       $a3, $a0, $zero
/* 9654 8009EA54 10E00021 */  beqz       $a3, .L8009EADC
/* 9658 8009EA58 AFBF0018 */   sw        $ra, 0x18($sp)
/* 965C 8009EA5C 8CE9000C */  lw         $t1, 0xC($a3)
/* 9660 8009EA60 84E20018 */  lh         $v0, 0x18($a3)
/* 9664 8009EA64 8CE80014 */  lw         $t0, 0x14($a3)
/* 9668 8009EA68 18400013 */  blez       $v0, .L8009EAB8
/* 966C 8009EA6C 00003021 */   addu      $a2, $zero, $zero
.L8009EA70:
/* 9670 8009EA70 8D220000 */  lw         $v0, 0x0($t1)
/* 9674 8009EA74 8D230004 */  lw         $v1, 0x4($t1)
/* 9678 8009EA78 8D240008 */  lw         $a0, 0x8($t1)
/* 967C 8009EA7C 8D25000C */  lw         $a1, 0xC($t1)
/* 9680 8009EA80 AD020000 */  sw         $v0, 0x0($t0)
/* 9684 8009EA84 AD030004 */  sw         $v1, 0x4($t0)
/* 9688 8009EA88 AD040008 */  sw         $a0, 0x8($t0)
/* 968C 8009EA8C AD05000C */  sw         $a1, 0xC($t0)
/* 9690 8009EA90 8D220010 */  lw         $v0, 0x10($t1)
/* 9694 8009EA94 8D230014 */  lw         $v1, 0x14($t1)
/* 9698 8009EA98 AD020010 */  sw         $v0, 0x10($t0)
/* 969C 8009EA9C AD030014 */  sw         $v1, 0x14($t0)
/* 96A0 8009EAA0 25290018 */  addiu      $t1, $t1, 0x18
/* 96A4 8009EAA4 84E20018 */  lh         $v0, 0x18($a3)
/* 96A8 8009EAA8 24C60001 */  addiu      $a2, $a2, 0x1
/* 96AC 8009EAAC 00C2102A */  slt        $v0, $a2, $v0
/* 96B0 8009EAB0 1440FFEF */  bnez       $v0, .L8009EA70
/* 96B4 8009EAB4 25080018 */   addiu     $t0, $t0, 0x18
.L8009EAB8:
/* 96B8 8009EAB8 84E3001E */  lh         $v1, 0x1E($a3)
/* 96BC 8009EABC 240200FF */  addiu      $v0, $zero, 0xFF
/* 96C0 8009EAC0 10620006 */  beq        $v1, $v0, .L8009EADC
/* 96C4 8009EAC4 00000000 */   nop
/* 96C8 8009EAC8 90E2002D */  lbu        $v0, 0x2D($a3)
/* 96CC 8009EACC 14400003 */  bnez       $v0, .L8009EADC
/* 96D0 8009EAD0 00000000 */   nop
/* 96D4 8009EAD4 0C02799A */  jal        func_8009E668
/* 96D8 8009EAD8 00E02021 */   addu      $a0, $a3, $zero
.L8009EADC:
/* 96DC 8009EADC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 96E0 8009EAE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 96E4 8009EAE4 03E00008 */  jr         $ra
/* 96E8 8009EAE8 00000000 */   nop
.size func_8009EA4C, . - func_8009EA4C
