.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BE9C8
/* 295C8 800BE9C8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 295CC 800BE9CC 24A80020 */  addiu      $t0, $a1, 0x20
/* 295D0 800BE9D0 00004821 */  addu       $t1, $zero, $zero
/* 295D4 800BE9D4 3C0AFFFF */  lui        $t2, 0xffff
/* 295D8 800BE9D8 3C013780 */  lui        $at, 0x3780
/* 295DC 800BE9DC 44812000 */  mtc1       $at, $f4
.L800BE9E0:
/* 295E0 800BE9E0 00003821 */  addu       $a3, $zero, $zero
/* 295E4 800BE9E4 00803021 */  addu       $a2, $a0, $zero
.L800BE9E8:
/* 295E8 800BE9E8 8CA20000 */  lw         $v0, ($a1)
/* 295EC 800BE9EC 95030000 */  lhu        $v1, ($t0)
/* 295F0 800BE9F0 004A1024 */  and        $v0, $v0, $t2
/* 295F4 800BE9F4 00431025 */  or         $v0, $v0, $v1
/* 295F8 800BE9F8 AFA20000 */  sw         $v0, ($sp)
/* 295FC 800BE9FC 8CA30000 */  lw         $v1, ($a1)
/* 29600 800BEA00 44821000 */  mtc1       $v0, $f2
/* 29604 800BEA04 00000000 */  nop
/* 29608 800BEA08 468010A0 */  cvt.s.w    $f2, $f2
/* 2960C 800BEA0C 46041082 */  mul.s      $f2, $f2, $f4
/* 29610 800BEA10 95020002 */  lhu        $v0, 2($t0)
/* 29614 800BEA14 00031C00 */  sll        $v1, $v1, 0x10
/* 29618 800BEA18 006A1824 */  and        $v1, $v1, $t2
/* 2961C 800BEA1C 00621825 */  or         $v1, $v1, $v0
/* 29620 800BEA20 44830000 */  mtc1       $v1, $f0
/* 29624 800BEA24 00000000 */  nop
/* 29628 800BEA28 46800020 */  cvt.s.w    $f0, $f0
/* 2962C 800BEA2C 46040002 */  mul.s      $f0, $f0, $f4
/* 29630 800BEA30 24E70001 */  addiu      $a3, $a3, 1
/* 29634 800BEA34 25080004 */  addiu      $t0, $t0, 4
/* 29638 800BEA38 24A50004 */  addiu      $a1, $a1, 4
/* 2963C 800BEA3C 28E20002 */  slti       $v0, $a3, 2
/* 29640 800BEA40 AFA30004 */  sw         $v1, 4($sp)
/* 29644 800BEA44 E4C20000 */  swc1       $f2, ($a2)
/* 29648 800BEA48 E4C00004 */  swc1       $f0, 4($a2)
/* 2964C 800BEA4C 1440FFE6 */  bnez       $v0, .L800BE9E8
/* 29650 800BEA50 24C60008 */   addiu     $a2, $a2, 8
/* 29654 800BEA54 25290001 */  addiu      $t1, $t1, 1
/* 29658 800BEA58 29220004 */  slti       $v0, $t1, 4
/* 2965C 800BEA5C 1440FFE0 */  bnez       $v0, .L800BE9E0
/* 29660 800BEA60 24840010 */   addiu     $a0, $a0, 0x10
/* 29664 800BEA64 27BD0008 */  addiu      $sp, $sp, 8
/* 29668 800BEA68 03E00008 */  jr         $ra
/* 2966C 800BEA6C 00000000 */   nop
