glabel func_800C9A84
/* 34684 800C9A84 3C06800F */  lui        $a2, %hi(D_800F7DD0)
/* 34688 800C9A88 8CC67DD0 */  lw         $a2, %lo(D_800F7DD0)($a2)
/* 3468C 800C9A8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 34690 800C9A90 2401FFFF */  addiu      $at, $zero, -0x1
/* 34694 800C9A94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 34698 800C9A98 10C10003 */  beq        $a2, $at, .L800C9AA8
/* 3469C 800C9A9C 00802825 */   or        $a1, $a0, $zero
/* 346A0 800C9AA0 0C032672 */  jal        func_800C99C8
/* 346A4 800C9AA4 00C02025 */   or        $a0, $a2, $zero
.L800C9AA8:
/* 346A8 800C9AA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 346AC 800C9AAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 346B0 800C9AB0 03E00008 */  jr         $ra
/* 346B4 800C9AB4 00000000 */   nop
.size func_800C9A84, . - func_800C9A84
