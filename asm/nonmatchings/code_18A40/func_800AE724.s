.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AE724
/* 19324 800AE724 27BDFFF8 */  addiu      $sp, $sp, -8
/* 19328 800AE728 00003021 */  addu       $a2, $zero, $zero
/* 1932C 800AE72C 3C038010 */  lui        $v1, %hi(D_80102944)
/* 19330 800AE730 8C632944 */  lw         $v1, %lo(D_80102944)($v1)
/* 19334 800AE734 3C028010 */  lui        $v0, %hi(D_8010294C)
/* 19338 800AE738 8C42294C */  lw         $v0, %lo(D_8010294C)($v0)
/* 1933C 800AE73C 18600016 */  blez       $v1, .L800AE798
/* 19340 800AE740 00002821 */   addu      $a1, $zero, $zero
/* 19344 800AE744 30880001 */  andi       $t0, $a0, 1
/* 19348 800AE748 30840002 */  andi       $a0, $a0, 2
/* 1934C 800AE74C 00603821 */  addu       $a3, $v1, $zero
/* 19350 800AE750 24430078 */  addiu      $v1, $v0, 0x78
.L800AE754:
/* 19354 800AE754 8C62FF8C */  lw         $v0, -0x74($v1)
/* 19358 800AE758 5040000C */  beql       $v0, $zero, .L800AE78C
/* 1935C 800AE75C 24C60001 */   addiu     $a2, $a2, 1
/* 19360 800AE760 8C620000 */  lw         $v0, ($v1)
/* 19364 800AE764 10400005 */  beqz       $v0, .L800AE77C
/* 19368 800AE768 00000000 */   nop
/* 1936C 800AE76C 55000006 */  bnezl      $t0, .L800AE788
/* 19370 800AE770 24A50001 */   addiu     $a1, $a1, 1
/* 19374 800AE774 0802B9E3 */  j          .L800AE78C
/* 19378 800AE778 24C60001 */   addiu     $a2, $a2, 1
.L800AE77C:
/* 1937C 800AE77C 50800003 */  beql       $a0, $zero, .L800AE78C
/* 19380 800AE780 24C60001 */   addiu     $a2, $a2, 1
/* 19384 800AE784 24A50001 */  addiu      $a1, $a1, 1
.L800AE788:
/* 19388 800AE788 24C60001 */  addiu      $a2, $a2, 1
.L800AE78C:
/* 1938C 800AE78C 00C7102A */  slt        $v0, $a2, $a3
/* 19390 800AE790 1440FFF0 */  bnez       $v0, .L800AE754
/* 19394 800AE794 2463013C */   addiu     $v1, $v1, 0x13c
.L800AE798:
/* 19398 800AE798 00A01021 */  addu       $v0, $a1, $zero
/* 1939C 800AE79C 03E00008 */  jr         $ra
/* 193A0 800AE7A0 27BD0008 */   addiu     $sp, $sp, 8
