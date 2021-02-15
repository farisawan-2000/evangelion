.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C998C
/* 3458C 800C998C 3C06800F */  lui        $a2, %hi(D_800F7DD0)
/* 34590 800C9990 8CC67DD0 */  lw         $a2, %lo(D_800F7DD0)($a2)
/* 34594 800C9994 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 34598 800C9998 2401FFFF */  addiu      $at, $zero, -1
/* 3459C 800C999C AFBF0014 */  sw         $ra, 0x14($sp)
/* 345A0 800C99A0 14C10003 */  bne        $a2, $at, .L800C99B0
/* 345A4 800C99A4 00802825 */   or        $a1, $a0, $zero
/* 345A8 800C99A8 10000003 */  b          .L800C99B8
/* 345AC 800C99AC 00001025 */   or        $v0, $zero, $zero
.L800C99B0:
/* 345B0 800C99B0 0C03262C */  jal        func_800C98B0
/* 345B4 800C99B4 00C02025 */   or        $a0, $a2, $zero
.L800C99B8:
/* 345B8 800C99B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 345BC 800C99BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 345C0 800C99C0 03E00008 */  jr         $ra
/* 345C4 800C99C4 00000000 */   nop
