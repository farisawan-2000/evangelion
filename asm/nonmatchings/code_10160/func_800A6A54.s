glabel func_800A6A54
/* 11654 800A6A54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11658 800A6A58 24040004 */  addiu      $a0, $zero, 0x4
/* 1165C 800A6A5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11660 800A6A60 0C032663 */  jal        func_800C998C
/* 11664 800A6A64 AFB00010 */   sw        $s0, 0x10($sp)
/* 11668 800A6A68 24040019 */  addiu      $a0, $zero, 0x19
/* 1166C 800A6A6C 24050001 */  addiu      $a1, $zero, 0x1
/* 11670 800A6A70 00003021 */  addu       $a2, $zero, $zero
/* 11674 800A6A74 0C028CB7 */  jal        func_800A32DC
/* 11678 800A6A78 00408021 */   addu      $s0, $v0, $zero
/* 1167C 800A6A7C 00402021 */  addu       $a0, $v0, $zero
/* 11680 800A6A80 240500AA */  addiu      $a1, $zero, 0xAA
/* 11684 800A6A84 240600AA */  addiu      $a2, $zero, 0xAA
/* 11688 800A6A88 0C028F9A */  jal        func_800A3E68
/* 1168C 800A6A8C AE020000 */   sw        $v0, 0x0($s0)
/* 11690 800A6A90 02001021 */  addu       $v0, $s0, $zero
/* 11694 800A6A94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11698 800A6A98 8FB00010 */  lw         $s0, 0x10($sp)
/* 1169C 800A6A9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 116A0 800A6AA0 03E00008 */  jr         $ra
/* 116A4 800A6AA4 00000000 */   nop
.size func_800A6A54, . - func_800A6A54
