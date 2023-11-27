glabel guMtxIdent
/* 296C0 800BEAC0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 296C4 800BEAC4 00003021 */  addu       $a2, $zero, $zero
/* 296C8 800BEAC8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 296CC 800BEACC 44810000 */  mtc1       $at, $f0
/* 296D0 800BEAD0 03A04821 */  addu       $t1, $sp, $zero
/* 296D4 800BEAD4 03A04021 */  addu       $t0, $sp, $zero
.L800BEAD8:
/* 296D8 800BEAD8 00001821 */  addu       $v1, $zero, $zero
/* 296DC 800BEADC 01203821 */  addu       $a3, $t1, $zero
/* 296E0 800BEAE0 01002821 */  addu       $a1, $t0, $zero
.L800BEAE4:
/* 296E4 800BEAE4 54C30002 */  bnel       $a2, $v1, .L800BEAF0
/* 296E8 800BEAE8 ACA00000 */   sw        $zero, 0x0($a1)
/* 296EC 800BEAEC E4E00000 */  swc1       $f0, 0x0($a3)
.L800BEAF0:
/* 296F0 800BEAF0 24630001 */  addiu      $v1, $v1, 0x1
/* 296F4 800BEAF4 28620004 */  slti       $v0, $v1, 0x4
/* 296F8 800BEAF8 1440FFFA */  bnez       $v0, .L800BEAE4
/* 296FC 800BEAFC 24A50004 */   addiu     $a1, $a1, 0x4
/* 29700 800BEB00 25290014 */  addiu      $t1, $t1, 0x14
/* 29704 800BEB04 24C60001 */  addiu      $a2, $a2, 0x1
/* 29708 800BEB08 28C20004 */  slti       $v0, $a2, 0x4
/* 2970C 800BEB0C 1440FFF2 */  bnez       $v0, .L800BEAD8
/* 29710 800BEB10 25080010 */   addiu     $t0, $t0, 0x10
/* 29714 800BEB14 00804021 */  addu       $t0, $a0, $zero
/* 29718 800BEB18 25090020 */  addiu      $t1, $t0, 0x20
/* 2971C 800BEB1C 00005821 */  addu       $t3, $zero, $zero
/* 29720 800BEB20 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 29724 800BEB24 44813000 */  mtc1       $at, $f6
/* 29728 800BEB28 3C0CFFFF */  lui        $t4, (0xFFFF0000 >> 16)
/* 2972C 800BEB2C 03A05021 */  addu       $t2, $sp, $zero
.L800BEB30:
/* 29730 800BEB30 00003821 */  addu       $a3, $zero, $zero
/* 29734 800BEB34 01403021 */  addu       $a2, $t2, $zero
.L800BEB38:
/* 29738 800BEB38 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 2973C 800BEB3C 46061082 */  mul.s      $f2, $f2, $f6
/* 29740 800BEB40 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 29744 800BEB44 46060002 */  mul.s      $f0, $f0, $f6
/* 29748 800BEB48 24C60008 */  addiu      $a2, $a2, 0x8
/* 2974C 800BEB4C 24E70001 */  addiu      $a3, $a3, 0x1
/* 29750 800BEB50 4600110D */  trunc.w.s  $f4, $f2
/* 29754 800BEB54 44042000 */  mfc1       $a0, $f4
/* 29758 800BEB58 4600008D */  trunc.w.s  $f2, $f0
/* 2975C 800BEB5C 44051000 */  mfc1       $a1, $f2
/* 29760 800BEB60 008C1024 */  and        $v0, $a0, $t4
/* 29764 800BEB64 00051C02 */  srl        $v1, $a1, 16
/* 29768 800BEB68 00431025 */  or         $v0, $v0, $v1
/* 2976C 800BEB6C AD020000 */  sw         $v0, 0x0($t0)
/* 29770 800BEB70 25080004 */  addiu      $t0, $t0, 0x4
/* 29774 800BEB74 00042400 */  sll        $a0, $a0, 16
/* 29778 800BEB78 008C2024 */  and        $a0, $a0, $t4
/* 2977C 800BEB7C 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 29780 800BEB80 00852025 */  or         $a0, $a0, $a1
/* 29784 800BEB84 AD240000 */  sw         $a0, 0x0($t1)
/* 29788 800BEB88 28E20002 */  slti       $v0, $a3, 0x2
/* 2978C 800BEB8C 1440FFEA */  bnez       $v0, .L800BEB38
/* 29790 800BEB90 25290004 */   addiu     $t1, $t1, 0x4
/* 29794 800BEB94 256B0001 */  addiu      $t3, $t3, 0x1
/* 29798 800BEB98 29620004 */  slti       $v0, $t3, 0x4
/* 2979C 800BEB9C 1440FFE4 */  bnez       $v0, .L800BEB30
/* 297A0 800BEBA0 254A0010 */   addiu     $t2, $t2, 0x10
/* 297A4 800BEBA4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 297A8 800BEBA8 03E00008 */  jr         $ra
/* 297AC 800BEBAC 00000000 */   nop
.size guMtxIdent, . - guMtxIdent
