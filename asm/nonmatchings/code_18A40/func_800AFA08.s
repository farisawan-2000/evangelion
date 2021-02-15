.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AFA08
/* 1A608 800AFA08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A60C 800AFA0C AFB00010 */  sw         $s0, 0x10($sp)
/* 1A610 800AFA10 00808021 */  addu       $s0, $a0, $zero
/* 1A614 800AFA14 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A618 800AFA18 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A61C 800AFA1C 920200B8 */  lbu        $v0, 0xb8($s0)
/* 1A620 800AFA20 C606002C */  lwc1       $f6, 0x2c($s0)
/* 1A624 800AFA24 44864000 */  mtc1       $a2, $f8
/* 1A628 800AFA28 304300FF */  andi       $v1, $v0, 0xff
/* 1A62C 800AFA2C 10600011 */  beqz       $v1, .L800AFA74
/* 1A630 800AFA30 00A08821 */   addu      $s1, $a1, $zero
/* 1A634 800AFA34 960400AA */  lhu        $a0, 0xaa($s0)
/* 1A638 800AFA38 0044102B */  sltu       $v0, $v0, $a0
/* 1A63C 800AFA3C 5440000D */  bnezl      $v0, .L800AFA74
/* 1A640 800AFA40 E6060050 */   swc1      $f6, 0x50($s0)
/* 1A644 800AFA44 C604004C */  lwc1       $f4, 0x4c($s0)
/* 1A648 800AFA48 46043001 */  sub.s      $f0, $f6, $f4
/* 1A64C 800AFA4C 44831000 */  mtc1       $v1, $f2
/* 1A650 800AFA50 00000000 */  nop
/* 1A654 800AFA54 468010A0 */  cvt.s.w    $f2, $f2
/* 1A658 800AFA58 46020003 */  div.s      $f0, $f0, $f2
/* 1A65C 800AFA5C 44841000 */  mtc1       $a0, $f2
/* 1A660 800AFA60 00000000 */  nop
/* 1A664 800AFA64 468010A0 */  cvt.s.w    $f2, $f2
/* 1A668 800AFA68 46020002 */  mul.s      $f0, $f0, $f2
/* 1A66C 800AFA6C 46002180 */  add.s      $f6, $f4, $f0
/* 1A670 800AFA70 E6060050 */  swc1       $f6, 0x50($s0)
.L800AFA74:
/* 1A674 800AFA74 C6000024 */  lwc1       $f0, 0x24($s0)
/* 1A678 800AFA78 46004000 */  add.s      $f0, $f8, $f0
/* 1A67C 800AFA7C 46003180 */  add.s      $f6, $f6, $f0
/* 1A680 800AFA80 C6000028 */  lwc1       $f0, 0x28($s0)
/* 1A684 800AFA84 46003032 */  c.eq.s     $f6, $f0
/* 1A688 800AFA88 00000000 */  nop
/* 1A68C 800AFA8C 4501001C */  bc1t       .L800AFB00
/* 1A690 800AFA90 00000000 */   nop
/* 1A694 800AFA94 3C018010 */  lui        $at, %hi(D_800FEA40)
/* 1A698 800AFA98 D420EA40 */  ldc1       $f0, %lo(D_800FEA40)($at)
/* 1A69C 800AFA9C 46003321 */  cvt.d.s    $f12, $f6
/* 1A6A0 800AFAA0 46206302 */  mul.d      $f12, $f12, $f0
/* 1A6A4 800AFAA4 E6060028 */  swc1       $f6, 0x28($s0)
/* 1A6A8 800AFAA8 0C02C032 */  jal        func_800B00C8
/* 1A6AC 800AFAAC 46206320 */   cvt.s.d   $f12, $f12
/* 1A6B0 800AFAB0 3C018010 */  lui        $at, %hi(D_800FEA48)
/* 1A6B4 800AFAB4 D422EA48 */  ldc1       $f2, %lo(D_800FEA48)($at)
/* 1A6B8 800AFAB8 46000186 */  mov.s      $f6, $f0
/* 1A6BC 800AFABC 46003021 */  cvt.d.s    $f0, $f6
/* 1A6C0 800AFAC0 4620103C */  c.lt.d     $f2, $f0
/* 1A6C4 800AFAC4 00000000 */  nop
/* 1A6C8 800AFAC8 00000000 */  nop
/* 1A6CC 800AFACC 45000004 */  bc1f       .L800AFAE0
/* 1A6D0 800AFAD0 001120C0 */   sll       $a0, $s1, 3
/* 1A6D4 800AFAD4 3C014000 */  lui        $at, 0x4000
/* 1A6D8 800AFAD8 44813000 */  mtc1       $at, $f6
/* 1A6DC 800AFADC A20000BB */  sb         $zero, 0xbb($s0)
.L800AFAE0:
/* 1A6E0 800AFAE0 00912023 */  subu       $a0, $a0, $s1
/* 1A6E4 800AFAE4 3C028010 */  lui        $v0, %hi(D_80102948)
/* 1A6E8 800AFAE8 8C422948 */  lw         $v0, %lo(D_80102948)($v0)
/* 1A6EC 800AFAEC 00042080 */  sll        $a0, $a0, 2
/* 1A6F0 800AFAF0 44053000 */  mfc1       $a1, $f6
/* 1A6F4 800AFAF4 00000000 */  nop
/* 1A6F8 800AFAF8 0C02D430 */  jal        func_800B50C0
/* 1A6FC 800AFAFC 00442021 */   addu      $a0, $v0, $a0
.L800AFB00:
/* 1A700 800AFB00 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A704 800AFB04 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A708 800AFB08 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A70C 800AFB0C 03E00008 */  jr         $ra
/* 1A710 800AFB10 27BD0020 */   addiu     $sp, $sp, 0x20
