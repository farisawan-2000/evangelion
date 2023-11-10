glabel func_800AE4C0
/* 190C0 800AE4C0 00802821 */  addu       $a1, $a0, $zero
/* 190C4 800AE4C4 3C048010 */  lui        $a0, %hi(D_8010297C)
/* 190C8 800AE4C8 8C84297C */  lw         $a0, %lo(D_8010297C)($a0)
/* 190CC 800AE4CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 190D0 800AE4D0 14800008 */  bnez       $a0, .L800AE4F4
/* 190D4 800AE4D4 AFBF0018 */   sw        $ra, 0x18($sp)
/* 190D8 800AE4D8 3C048010 */  lui        $a0, %hi(D_80102978)
/* 190DC 800AE4DC 8C842978 */  lw         $a0, %lo(D_80102978)($a0)
/* 190E0 800AE4E0 14800006 */  bnez       $a0, .L800AE4FC
/* 190E4 800AE4E4 00001021 */   addu      $v0, $zero, $zero
/* 190E8 800AE4E8 3C018010 */  lui        $at, %hi(D_80102968)
/* 190EC 800AE4EC 0802B94D */  j          .L800AE534
/* 190F0 800AE4F0 AC202968 */   sw        $zero, %lo(D_80102968)($at)
.L800AE4F4:
/* 190F4 800AE4F4 3C018010 */  lui        $at, %hi(D_8010297C)
/* 190F8 800AE4F8 AC20297C */  sw         $zero, %lo(D_8010297C)($at)
.L800AE4FC:
/* 190FC 800AE4FC 3C028010 */  lui        $v0, %hi(D_80102968)
/* 19100 800AE500 8C422968 */  lw         $v0, %lo(D_80102968)($v0)
/* 19104 800AE504 14400005 */  bnez       $v0, .L800AE51C
/* 19108 800AE508 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1910C 800AE50C 8C820010 */  lw         $v0, 0x10($a0)
/* 19110 800AE510 3C018010 */  lui        $at, %hi(D_80102968)
/* 19114 800AE514 AC222968 */  sw         $v0, %lo(D_80102968)($at)
/* 19118 800AE518 2402FFFF */  addiu      $v0, $zero, -0x1
.L800AE51C:
/* 1911C 800AE51C 24060080 */  addiu      $a2, $zero, 0x80
/* 19120 800AE520 24070080 */  addiu      $a3, $zero, 0x80
/* 19124 800AE524 0C02C21D */  jal        func_800B0874
/* 19128 800AE528 AFA20010 */   sw        $v0, 0x10($sp)
/* 1912C 800AE52C 3C018010 */  lui        $at, %hi(D_80102968)
/* 19130 800AE530 AC202968 */  sw         $zero, %lo(D_80102968)($at)
.L800AE534:
/* 19134 800AE534 8FBF0018 */  lw         $ra, 0x18($sp)
/* 19138 800AE538 03E00008 */  jr         $ra
/* 1913C 800AE53C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800AE4C0, . - func_800AE4C0
