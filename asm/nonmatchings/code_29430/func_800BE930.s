.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BE930
/* 29530 800BE930 00A04021 */  addu       $t0, $a1, $zero
/* 29534 800BE934 25090020 */  addiu      $t1, $t0, 0x20
/* 29538 800BE938 00005821 */  addu       $t3, $zero, $zero
/* 2953C 800BE93C 3C014780 */  lui        $at, 0x4780
/* 29540 800BE940 44813000 */  mtc1       $at, $f6
/* 29544 800BE944 3C0CFFFF */  lui        $t4, 0xffff
/* 29548 800BE948 00805021 */  addu       $t2, $a0, $zero
.L800BE94C:
/* 2954C 800BE94C 00003821 */  addu       $a3, $zero, $zero
/* 29550 800BE950 01403021 */  addu       $a2, $t2, $zero
.L800BE954:
/* 29554 800BE954 C4C20000 */  lwc1       $f2, ($a2)
/* 29558 800BE958 46061082 */  mul.s      $f2, $f2, $f6
/* 2955C 800BE95C C4C00004 */  lwc1       $f0, 4($a2)
/* 29560 800BE960 46060002 */  mul.s      $f0, $f0, $f6
/* 29564 800BE964 24C60008 */  addiu      $a2, $a2, 8
/* 29568 800BE968 24E70001 */  addiu      $a3, $a3, 1
/* 2956C 800BE96C 4600110D */  trunc.w.s  $f4, $f2
/* 29570 800BE970 44042000 */  mfc1       $a0, $f4
/* 29574 800BE974 4600008D */  trunc.w.s  $f2, $f0
/* 29578 800BE978 44051000 */  mfc1       $a1, $f2
/* 2957C 800BE97C 008C1024 */  and        $v0, $a0, $t4
/* 29580 800BE980 00051C02 */  srl        $v1, $a1, 0x10
/* 29584 800BE984 00431025 */  or         $v0, $v0, $v1
/* 29588 800BE988 AD020000 */  sw         $v0, ($t0)
/* 2958C 800BE98C 25080004 */  addiu      $t0, $t0, 4
/* 29590 800BE990 00042400 */  sll        $a0, $a0, 0x10
/* 29594 800BE994 008C2024 */  and        $a0, $a0, $t4
/* 29598 800BE998 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 2959C 800BE99C 00852025 */  or         $a0, $a0, $a1
/* 295A0 800BE9A0 AD240000 */  sw         $a0, ($t1)
/* 295A4 800BE9A4 28E20002 */  slti       $v0, $a3, 2
/* 295A8 800BE9A8 1440FFEA */  bnez       $v0, .L800BE954
/* 295AC 800BE9AC 25290004 */   addiu     $t1, $t1, 4
/* 295B0 800BE9B0 256B0001 */  addiu      $t3, $t3, 1
/* 295B4 800BE9B4 29620004 */  slti       $v0, $t3, 4
/* 295B8 800BE9B8 1440FFE4 */  bnez       $v0, .L800BE94C
/* 295BC 800BE9BC 254A0010 */   addiu     $t2, $t2, 0x10
/* 295C0 800BE9C0 03E00008 */  jr         $ra
/* 295C4 800BE9C4 00000000 */   nop
