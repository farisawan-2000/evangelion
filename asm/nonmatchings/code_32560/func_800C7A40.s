glabel func_800C7A40
/* 32640 800C7A40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 32644 800C7A44 AFB00010 */  sw         $s0, 0x10($sp)
/* 32648 800C7A48 00808021 */  addu       $s0, $a0, $zero
/* 3264C 800C7A4C AFB10014 */  sw         $s1, 0x14($sp)
/* 32650 800C7A50 AFBF0018 */  sw         $ra, 0x18($sp)
/* 32654 800C7A54 0C032560 */  jal        func_800C9580
/* 32658 800C7A58 00A08821 */   addu      $s1, $a1, $zero
/* 3265C 800C7A5C 14400006 */  bnez       $v0, .L800C7A78
/* 32660 800C7A60 2402FFFF */   addiu     $v0, $zero, -0x1
/* 32664 800C7A64 3C02A000 */  lui        $v0, %hi(D_A0000000)
/* 32668 800C7A68 02021025 */  or         $v0, $s0, $v0
/* 3266C 800C7A6C 8C430000 */  lw         $v1, %lo(D_A0000000)($v0)
/* 32670 800C7A70 00001021 */  addu       $v0, $zero, $zero
/* 32674 800C7A74 AE230000 */  sw         $v1, 0x0($s1)
.L800C7A78:
/* 32678 800C7A78 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3267C 800C7A7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 32680 800C7A80 8FB00010 */  lw         $s0, 0x10($sp)
/* 32684 800C7A84 03E00008 */  jr         $ra
/* 32688 800C7A88 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3268C 800C7A8C 00000000 */  nop
.size func_800C7A40, . - func_800C7A40
