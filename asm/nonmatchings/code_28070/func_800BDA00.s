glabel func_800BDA00
/* 28600 800BDA00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 28604 800BDA04 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 28608 800BDA08 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 2860C 800BDA0C 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 28610 800BDA10 00821023 */  subu       $v0, $a0, $v0
/* 28614 800BDA14 0062102B */  sltu       $v0, $v1, $v0
/* 28618 800BDA18 1040000A */  beqz       $v0, .L800BDA44
/* 2861C 800BDA1C AFBF0010 */   sw        $ra, 0x10($sp)
/* 28620 800BDA20 3C026000 */  lui        $v0, (0x60000000 >> 16)
/* 28624 800BDA24 00821021 */  addu       $v0, $a0, $v0
/* 28628 800BDA28 0062102B */  sltu       $v0, $v1, $v0
/* 2862C 800BDA2C 10400006 */  beqz       $v0, .L800BDA48
/* 28630 800BDA30 00831024 */   and       $v0, $a0, $v1
/* 28634 800BDA34 0C030874 */  jal        func_800C21D0
/* 28638 800BDA38 00000000 */   nop
/* 2863C 800BDA3C 0802F692 */  j          .L800BDA48
/* 28640 800BDA40 00000000 */   nop
.L800BDA44:
/* 28644 800BDA44 00831024 */  and        $v0, $a0, $v1
.L800BDA48:
/* 28648 800BDA48 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2864C 800BDA4C 03E00008 */  jr         $ra
/* 28650 800BDA50 27BD0018 */   addiu     $sp, $sp, 0x18
/* 28654 800BDA54 00000000 */  nop
/* 28658 800BDA58 00000000 */  nop
/* 2865C 800BDA5C 00000000 */  nop
.size func_800BDA00, . - func_800BDA00
