.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AB834
/* 16434 800AB834 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16438 800AB838 AFB00010 */  sw         $s0, 0x10($sp)
/* 1643C 800AB83C 00A08021 */  addu       $s0, $a1, $zero
/* 16440 800AB840 24020001 */  addiu      $v0, $zero, 1
/* 16444 800AB844 14820012 */  bne        $a0, $v0, .L800AB890
/* 16448 800AB848 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1644C 800AB84C 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 16450 800AB850 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 16454 800AB854 10400005 */  beqz       $v0, .L800AB86C
/* 16458 800AB858 00000000 */   nop
/* 1645C 800AB85C 0C02AB72 */  jal        func_800AADC8
/* 16460 800AB860 00000000 */   nop
/* 16464 800AB864 0802AE22 */  j          .L800AB888
/* 16468 800AB868 2402001F */   addiu     $v0, $zero, 0x1f
.L800AB86C:
/* 1646C 800AB86C 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 16470 800AB870 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 16474 800AB874 0C02AD7C */  jal        func_800AB5F0
/* 16478 800AB878 00000000 */   nop
/* 1647C 800AB87C 24020022 */  addiu      $v0, $zero, 0x22
/* 16480 800AB880 3C01800D */  lui        $at, %hi(D_800D511A)
/* 16484 800AB884 A430511A */  sh         $s0, %lo(D_800D511A)($at)
.L800AB888:
/* 16488 800AB888 3C01800D */  lui        $at, %hi(D_800D5114)
/* 1648C 800AB88C A4225114 */  sh         $v0, %lo(D_800D5114)($at)
.L800AB890:
/* 16490 800AB890 8FBF0014 */  lw         $ra, 0x14($sp)
/* 16494 800AB894 8FB00010 */  lw         $s0, 0x10($sp)
/* 16498 800AB898 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1649C 800AB89C 03E00008 */  jr         $ra
/* 164A0 800AB8A0 00000000 */   nop
