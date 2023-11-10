glabel func_800AD67C
/* 1827C 800AD67C 3C048017 */  lui        $a0, %hi(D_8016E548)
/* 18280 800AD680 8C84E548 */  lw         $a0, %lo(D_8016E548)($a0)
/* 18284 800AD684 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18288 800AD688 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1828C 800AD68C AFB10014 */  sw         $s1, 0x14($sp)
/* 18290 800AD690 0C025D58 */  jal        func_80097560
/* 18294 800AD694 AFB00010 */   sw        $s0, 0x10($sp)
/* 18298 800AD698 3C048015 */  lui        $a0, %hi(D_8014A2C0)
/* 1829C 800AD69C 8C84A2C0 */  lw         $a0, %lo(D_8014A2C0)($a0)
/* 182A0 800AD6A0 3C118017 */  lui        $s1, %hi(D_8016D07C)
/* 182A4 800AD6A4 2631D07C */  addiu      $s1, $s1, %lo(D_8016D07C)
/* 182A8 800AD6A8 0C025D58 */  jal        func_80097560
/* 182AC 800AD6AC 00008021 */   addu      $s0, $zero, $zero
.L800AD6B0:
/* 182B0 800AD6B0 8E240000 */  lw         $a0, 0x0($s1)
/* 182B4 800AD6B4 26310004 */  addiu      $s1, $s1, 0x4
/* 182B8 800AD6B8 0C025D58 */  jal        func_80097560
/* 182BC 800AD6BC 26100001 */   addiu     $s0, $s0, 0x1
/* 182C0 800AD6C0 2A020002 */  slti       $v0, $s0, 0x2
/* 182C4 800AD6C4 1440FFFA */  bnez       $v0, .L800AD6B0
/* 182C8 800AD6C8 00000000 */   nop
/* 182CC 800AD6CC 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 182D0 800AD6D0 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 182D4 800AD6D4 0C025D58 */  jal        func_80097560
/* 182D8 800AD6D8 24100001 */   addiu     $s0, $zero, 0x1
/* 182DC 800AD6DC 3C048015 */  lui        $a0, %hi(D_80149FB4)
/* 182E0 800AD6E0 8C849FB4 */  lw         $a0, %lo(D_80149FB4)($a0)
/* 182E4 800AD6E4 0C025D58 */  jal        func_80097560
/* 182E8 800AD6E8 00000000 */   nop
/* 182EC 800AD6EC 3C048015 */  lui        $a0, %hi(D_80149DC0)
/* 182F0 800AD6F0 8C849DC0 */  lw         $a0, %lo(D_80149DC0)($a0)
/* 182F4 800AD6F4 0C025D58 */  jal        func_80097560
/* 182F8 800AD6F8 00000000 */   nop
/* 182FC 800AD6FC 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 18300 800AD700 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 18304 800AD704 0C025D58 */  jal        func_80097560
/* 18308 800AD708 00000000 */   nop
/* 1830C 800AD70C 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* 18310 800AD710 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* 18314 800AD714 0C025D58 */  jal        func_80097560
/* 18318 800AD718 00000000 */   nop
/* 1831C 800AD71C 3C048015 */  lui        $a0, %hi(D_80149EC4)
/* 18320 800AD720 8C849EC4 */  lw         $a0, %lo(D_80149EC4)($a0)
/* 18324 800AD724 0C025D58 */  jal        func_80097560
/* 18328 800AD728 00000000 */   nop
/* 1832C 800AD72C 3C028017 */  lui        $v0, %hi(D_8016D080)
/* 18330 800AD730 2442D080 */  addiu      $v0, $v0, %lo(D_8016D080)
/* 18334 800AD734 3C018017 */  lui        $at, %hi(D_8016E548)
/* 18338 800AD738 AC20E548 */  sw         $zero, %lo(D_8016E548)($at)
/* 1833C 800AD73C 3C018015 */  lui        $at, %hi(D_8014A2C0)
/* 18340 800AD740 AC20A2C0 */  sw         $zero, %lo(D_8014A2C0)($at)
.L800AD744:
/* 18344 800AD744 AC400000 */  sw         $zero, 0x0($v0)
/* 18348 800AD748 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1834C 800AD74C 0601FFFD */  bgez       $s0, .L800AD744
/* 18350 800AD750 2442FFFC */   addiu     $v0, $v0, -0x4
/* 18354 800AD754 3C018017 */  lui        $at, %hi(D_8016D0C4)
/* 18358 800AD758 AC20D0C4 */  sw         $zero, %lo(D_8016D0C4)($at)
/* 1835C 800AD75C 3C018015 */  lui        $at, %hi(D_80149FB4)
/* 18360 800AD760 AC209FB4 */  sw         $zero, %lo(D_80149FB4)($at)
/* 18364 800AD764 3C018015 */  lui        $at, %hi(D_80149DC0)
/* 18368 800AD768 AC209DC0 */  sw         $zero, %lo(D_80149DC0)($at)
/* 1836C 800AD76C 3C018017 */  lui        $at, %hi(D_8016D084)
/* 18370 800AD770 AC20D084 */  sw         $zero, %lo(D_8016D084)($at)
/* 18374 800AD774 3C018015 */  lui        $at, %hi(D_8014A2D4)
/* 18378 800AD778 AC20A2D4 */  sw         $zero, %lo(D_8014A2D4)($at)
/* 1837C 800AD77C 3C018015 */  lui        $at, %hi(D_80149EC4)
/* 18380 800AD780 AC209EC4 */  sw         $zero, %lo(D_80149EC4)($at)
/* 18384 800AD784 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 18388 800AD788 AC209FA8 */  sw         $zero, %lo(D_80149FA8)($at)
/* 1838C 800AD78C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18390 800AD790 8FB10014 */  lw         $s1, 0x14($sp)
/* 18394 800AD794 8FB00010 */  lw         $s0, 0x10($sp)
/* 18398 800AD798 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1839C 800AD79C 03E00008 */  jr         $ra
/* 183A0 800AD7A0 00000000 */   nop
/* 183A4 800AD7A4 00000000 */  nop
/* 183A8 800AD7A8 00000000 */  nop
/* 183AC 800AD7AC 00000000 */  nop
.size func_800AD67C, . - func_800AD67C
