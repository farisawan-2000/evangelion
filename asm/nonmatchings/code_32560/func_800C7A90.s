.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7A90
/* 32690 800C7A90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 32694 800C7A94 AFB00010 */  sw         $s0, 0x10($sp)
/* 32698 800C7A98 00808021 */  addu       $s0, $a0, $zero
/* 3269C 800C7A9C AFB10014 */  sw         $s1, 0x14($sp)
/* 326A0 800C7AA0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 326A4 800C7AA4 0C032560 */  jal        func_800C9580
/* 326A8 800C7AA8 00A08821 */   addu      $s1, $a1, $zero
/* 326AC 800C7AAC 54400005 */  bnezl      $v0, .L800C7AC4
/* 326B0 800C7AB0 2402FFFF */   addiu     $v0, $zero, -1
/* 326B4 800C7AB4 3C02A000 */  lui        $v0, 0xa000
/* 326B8 800C7AB8 02021025 */  or         $v0, $s0, $v0
/* 326BC 800C7ABC AC510000 */  sw         $s1, ($v0)
/* 326C0 800C7AC0 00001021 */  addu       $v0, $zero, $zero
.L800C7AC4:
/* 326C4 800C7AC4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 326C8 800C7AC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 326CC 800C7ACC 8FB00010 */  lw         $s0, 0x10($sp)
/* 326D0 800C7AD0 03E00008 */  jr         $ra
/* 326D4 800C7AD4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 326D8 800C7AD8 00000000 */  nop
/* 326DC 800C7ADC 00000000 */  nop
