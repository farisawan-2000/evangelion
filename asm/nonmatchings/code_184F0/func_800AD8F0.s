glabel func_800AD8F0
/* 184F0 800AD8F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 184F4 800AD8F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 184F8 800AD8F8 00808021 */  addu       $s0, $a0, $zero
/* 184FC 800AD8FC 3C04800F */  lui        $a0, %hi(D_800F1218)
/* 18500 800AD900 24841218 */  addiu      $a0, $a0, %lo(D_800F1218)
/* 18504 800AD904 24020001 */  addiu      $v0, $zero, 0x1
/* 18508 800AD908 3C01800F */  lui        $at, %hi(D_800F1210)
/* 1850C 800AD90C A0221210 */  sb         $v0, %lo(D_800F1210)($at)
/* 18510 800AD910 3C028015 */  lui        $v0, %hi(D_80149D88)
/* 18514 800AD914 24429D88 */  addiu      $v0, $v0, %lo(D_80149D88)
/* 18518 800AD918 3C018015 */  lui        $at, %hi(D_80149F80)
/* 1851C 800AD91C AC229F80 */  sw         $v0, %lo(D_80149F80)($at)
/* 18520 800AD920 24020002 */  addiu      $v0, $zero, 0x2
/* 18524 800AD924 3C03800D */  lui        $v1, %hi(D_800CA8B0)
/* 18528 800AD928 2463A8B0 */  addiu      $v1, $v1, %lo(D_800CA8B0)
/* 1852C 800AD92C 3C018015 */  lui        $at, %hi(D_80149F40)
/* 18530 800AD930 AC229F40 */  sw         $v0, %lo(D_80149F40)($at)
/* 18534 800AD934 3C02800D */  lui        $v0, %hi(D_800CA980)
/* 18538 800AD938 2442A980 */  addiu      $v0, $v0, %lo(D_800CA980)
/* 1853C 800AD93C 00431023 */  subu       $v0, $v0, $v1
/* 18540 800AD940 3C018015 */  lui        $at, %hi(D_80149F4C)
/* 18544 800AD944 AC229F4C */  sw         $v0, %lo(D_80149F4C)($at)
/* 18548 800AD948 24020800 */  addiu      $v0, $zero, 0x800
/* 1854C 800AD94C AFBF0014 */  sw         $ra, 0x14($sp)
/* 18550 800AD950 3C018015 */  lui        $at, %hi(D_80149F84)
/* 18554 800AD954 AC209F84 */  sw         $zero, %lo(D_80149F84)($at)
/* 18558 800AD958 3C018015 */  lui        $at, %hi(D_80149F48)
/* 1855C 800AD95C AC239F48 */  sw         $v1, %lo(D_80149F48)($at)
/* 18560 800AD960 3C018015 */  lui        $at, %hi(D_80149F5C)
/* 18564 800AD964 AC229F5C */  sw         $v0, %lo(D_80149F5C)($at)
/* 18568 800AD968 3C018015 */  lui        $at, %hi(D_80149F60)
/* 1856C 800AD96C AC209F60 */  sw         $zero, %lo(D_80149F60)($at)
/* 18570 800AD970 3C018015 */  lui        $at, %hi(D_80149F64)
/* 18574 800AD974 AC209F64 */  sw         $zero, %lo(D_80149F64)($at)
/* 18578 800AD978 3C018015 */  lui        $at, %hi(D_80149F68)
/* 1857C 800AD97C AC209F68 */  sw         $zero, %lo(D_80149F68)($at)
/* 18580 800AD980 3C018015 */  lui        $at, %hi(D_80149F6C)
/* 18584 800AD984 AC209F6C */  sw         $zero, %lo(D_80149F6C)($at)
/* 18588 800AD988 3C018015 */  lui        $at, %hi(D_80149F78)
/* 1858C 800AD98C AC209F78 */  sw         $zero, %lo(D_80149F78)($at)
/* 18590 800AD990 3C018015 */  lui        $at, %hi(D_80149F7C)
/* 18594 800AD994 0C02BB63 */  jal        func_800AED8C
/* 18598 800AD998 AC209F7C */   sw        $zero, %lo(D_80149F7C)($at)
/* 1859C 800AD99C 0C02B7E3 */  jal        func_800ADF8C
/* 185A0 800AD9A0 02002021 */   addu      $a0, $s0, $zero
/* 185A4 800AD9A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 185A8 800AD9A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 185AC 800AD9AC 03E00008 */  jr         $ra
/* 185B0 800AD9B0 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800AD8F0, . - func_800AD8F0
