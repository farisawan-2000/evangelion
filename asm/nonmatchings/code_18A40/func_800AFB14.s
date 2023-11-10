glabel func_800AFB14
/* 1A714 800AFB14 00802821 */  addu       $a1, $a0, $zero
/* 1A718 800AFB18 94A3009A */  lhu        $v1, 0x9A($a1)
/* 1A71C 800AFB1C 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 1A720 800AFB20 1062000D */  beq        $v1, $v0, .L800AFB58
/* 1A724 800AFB24 3C037FFF */   lui       $v1, (0x7FFFFFFF >> 16)
/* 1A728 800AFB28 94A300B2 */  lhu        $v1, 0xB2($a1)
/* 1A72C 800AFB2C 10600004 */  beqz       $v1, .L800AFB40
/* 1A730 800AFB30 00031A00 */   sll       $v1, $v1, 8
/* 1A734 800AFB34 8CA20040 */  lw         $v0, 0x40($a1)
/* 1A738 800AFB38 0802BED9 */  j          .L800AFB64
/* 1A73C 800AFB3C 00431021 */   addu      $v0, $v0, $v1
.L800AFB40:
/* 1A740 800AFB40 94A200B4 */  lhu        $v0, 0xB4($a1)
/* 1A744 800AFB44 8CA3003C */  lw         $v1, 0x3C($a1)
/* 1A748 800AFB48 00021200 */  sll        $v0, $v0, 8
/* 1A74C 800AFB4C 00621823 */  subu       $v1, $v1, $v0
/* 1A750 800AFB50 0802BEDA */  j          .L800AFB68
/* 1A754 800AFB54 ACA30054 */   sw        $v1, 0x54($a1)
.L800AFB58:
/* 1A758 800AFB58 8CA20040 */  lw         $v0, 0x40($a1)
/* 1A75C 800AFB5C 3463FFFF */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
/* 1A760 800AFB60 00431021 */  addu       $v0, $v0, $v1
.L800AFB64:
/* 1A764 800AFB64 ACA20054 */  sw         $v0, 0x54($a1)
.L800AFB68:
/* 1A768 800AFB68 90A200C0 */  lbu        $v0, 0xC0($a1)
/* 1A76C 800AFB6C 90A400BF */  lbu        $a0, 0xBF($a1)
/* 1A770 800AFB70 24030001 */  addiu      $v1, $zero, 0x1
/* 1A774 800AFB74 A0A300C3 */  sb         $v1, 0xC3($a1)
/* 1A778 800AFB78 A0A200C4 */  sb         $v0, 0xC4($a1)
/* 1A77C 800AFB7C 03E00008 */  jr         $ra
/* 1A780 800AFB80 A0A400C5 */   sb        $a0, 0xC5($a1)
.size func_800AFB14, . - func_800AFB14
