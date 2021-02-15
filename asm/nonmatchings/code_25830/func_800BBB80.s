.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BBB80
/* 26780 800BBB80 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 26784 800BBB84 AFB10024 */  sw         $s1, 0x24($sp)
/* 26788 800BBB88 8FB10050 */  lw         $s1, 0x50($sp)
/* 2678C 800BBB8C AFB20028 */  sw         $s2, 0x28($sp)
/* 26790 800BBB90 00809021 */  addu       $s2, $a0, $zero
/* 26794 800BBB94 AFB3002C */  sw         $s3, 0x2c($sp)
/* 26798 800BBB98 AFB00020 */  sw         $s0, 0x20($sp)
/* 2679C 800BBB9C 00C08021 */  addu       $s0, $a2, $zero
/* 267A0 800BBBA0 24020140 */  addiu      $v0, $zero, 0x140
/* 267A4 800BBBA4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 267A8 800BBBA8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 267AC 800BBBAC A7A20018 */  sh         $v0, 0x18($sp)
/* 267B0 800BBBB0 8E440000 */  lw         $a0, ($s2)
/* 267B4 800BBBB4 12000064 */  beqz       $s0, .L800BBD48
/* 267B8 800BBBB8 00A09821 */   addu      $s3, $a1, $zero
/* 267BC 800BBBBC 8E42001C */  lw         $v0, 0x1c($s2)
/* 267C0 800BBBC0 10400016 */  beqz       $v0, .L800BBC1C
/* 267C4 800BBBC4 27A50018 */   addiu     $a1, $sp, 0x18
/* 267C8 800BBBC8 AFB10010 */  sw         $s1, 0x10($sp)
/* 267CC 800BBBCC 8C820004 */  lw         $v0, 4($a0)
/* 267D0 800BBBD0 0040F809 */  jalr       $v0
/* 267D4 800BBBD4 02003021 */   addu      $a2, $s0, $zero
/* 267D8 800BBBD8 00408821 */  addu       $s1, $v0, $zero
/* 267DC 800BBBDC 3C0300FF */  lui        $v1, 0xff
/* 267E0 800BBBE0 87A20018 */  lh         $v0, 0x18($sp)
/* 267E4 800BBBE4 3463FFFF */  ori        $v1, $v1, 0xffff
/* 267E8 800BBBE8 02202021 */  addu       $a0, $s1, $zero
/* 267EC 800BBBEC 26310008 */  addiu      $s1, $s1, 8
/* 267F0 800BBBF0 00431024 */  and        $v0, $v0, $v1
/* 267F4 800BBBF4 3C030A00 */  lui        $v1, 0xa00
/* 267F8 800BBBF8 00431025 */  or         $v0, $v0, $v1
/* 267FC 800BBBFC AC820000 */  sw         $v0, ($a0)
/* 26800 800BBC00 96630000 */  lhu        $v1, ($s3)
/* 26804 800BBC04 00101040 */  sll        $v0, $s0, 1
/* 26808 800BBC08 3042FFFF */  andi       $v0, $v0, 0xffff
/* 2680C 800BBC0C 00031C00 */  sll        $v1, $v1, 0x10
/* 26810 800BBC10 00621825 */  or         $v1, $v1, $v0
/* 26814 800BBC14 0802EF52 */  j          .L800BBD48
/* 26818 800BBC18 AC830004 */   sw        $v1, 4($a0)
.L800BBC1C:
/* 2681C 800BBC1C C6400018 */  lwc1       $f0, 0x18($s2)
/* 26820 800BBC20 3C018010 */  lui        $at, %hi(D_800FEE30)
/* 26824 800BBC24 D422EE30 */  ldc1       $f2, %lo(D_800FEE30)($at)
/* 26828 800BBC28 46000021 */  cvt.d.s    $f0, $f0
/* 2682C 800BBC2C 4620103C */  c.lt.d     $f2, $f0
/* 26830 800BBC30 00000000 */  nop
/* 26834 800BBC34 45000006 */  bc1f       .L800BBC50
/* 26838 800BBC38 00000000 */   nop
/* 2683C 800BBC3C 3C013FFF */  lui        $at, 0x3fff
/* 26840 800BBC40 3421FEB0 */  ori        $at, $at, 0xfeb0
/* 26844 800BBC44 44810000 */  mtc1       $at, $f0
/* 26848 800BBC48 00000000 */  nop
/* 2684C 800BBC4C E6400018 */  swc1       $f0, 0x18($s2)
.L800BBC50:
/* 26850 800BBC50 C6400018 */  lwc1       $f0, 0x18($s2)
/* 26854 800BBC54 3C014700 */  lui        $at, 0x4700
/* 26858 800BBC58 4481A000 */  mtc1       $at, $f20
/* 2685C 800BBC5C 00000000 */  nop
/* 26860 800BBC60 46140002 */  mul.s      $f0, $f0, $f20
/* 26864 800BBC64 4600008D */  trunc.w.s  $f2, $f0
/* 26868 800BBC68 44021000 */  mfc1       $v0, $f2
/* 2686C 800BBC6C 00000000 */  nop
/* 26870 800BBC70 44822000 */  mtc1       $v0, $f4
/* 26874 800BBC74 00000000 */  nop
/* 26878 800BBC78 46802120 */  cvt.s.w    $f4, $f4
/* 2687C 800BBC7C 46142103 */  div.s      $f4, $f4, $f20
/* 26880 800BBC80 44900000 */  mtc1       $s0, $f0
/* 26884 800BBC84 00000000 */  nop
/* 26888 800BBC88 46800020 */  cvt.s.w    $f0, $f0
/* 2688C 800BBC8C 46002002 */  mul.s      $f0, $f4, $f0
/* 26890 800BBC90 C6420020 */  lwc1       $f2, 0x20($s2)
/* 26894 800BBC94 46001080 */  add.s      $f2, $f2, $f0
/* 26898 800BBC98 4600100D */  trunc.w.s  $f0, $f2
/* 2689C 800BBC9C 44060000 */  mfc1       $a2, $f0
/* 268A0 800BBCA0 00000000 */  nop
/* 268A4 800BBCA4 44860000 */  mtc1       $a2, $f0
/* 268A8 800BBCA8 00000000 */  nop
/* 268AC 800BBCAC 46800020 */  cvt.s.w    $f0, $f0
/* 268B0 800BBCB0 46001081 */  sub.s      $f2, $f2, $f0
/* 268B4 800BBCB4 E6440018 */  swc1       $f4, 0x18($s2)
/* 268B8 800BBCB8 E6420020 */  swc1       $f2, 0x20($s2)
/* 268BC 800BBCBC AFB10010 */  sw         $s1, 0x10($sp)
/* 268C0 800BBCC0 8C820004 */  lw         $v0, 4($a0)
/* 268C4 800BBCC4 0040F809 */  jalr       $v0
/* 268C8 800BBCC8 27A50018 */   addiu     $a1, $sp, 0x18
/* 268CC 800BBCCC 00408821 */  addu       $s1, $v0, $zero
/* 268D0 800BBCD0 C6400018 */  lwc1       $f0, 0x18($s2)
/* 268D4 800BBCD4 97A20018 */  lhu        $v0, 0x18($sp)
/* 268D8 800BBCD8 02202021 */  addu       $a0, $s1, $zero
/* 268DC 800BBCDC 3C030800 */  lui        $v1, 0x800
/* 268E0 800BBCE0 00431025 */  or         $v0, $v0, $v1
/* 268E4 800BBCE4 AC820000 */  sw         $v0, ($a0)
/* 268E8 800BBCE8 96630000 */  lhu        $v1, ($s3)
/* 268EC 800BBCEC 00101040 */  sll        $v0, $s0, 1
/* 268F0 800BBCF0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 268F4 800BBCF4 46140002 */  mul.s      $f0, $f0, $f20
/* 268F8 800BBCF8 00031C00 */  sll        $v1, $v1, 0x10
/* 268FC 800BBCFC 00621825 */  or         $v1, $v1, $v0
/* 26900 800BBD00 AC830004 */  sw         $v1, 4($a0)
/* 26904 800BBD04 92440027 */  lbu        $a0, 0x27($s2)
/* 26908 800BBD08 26310008 */  addiu      $s1, $s1, 8
/* 2690C 800BBD0C 02208021 */  addu       $s0, $s1, $zero
/* 26910 800BBD10 00042400 */  sll        $a0, $a0, 0x10
/* 26914 800BBD14 4600008D */  trunc.w.s  $f2, $f0
/* 26918 800BBD18 44021000 */  mfc1       $v0, $f2
/* 2691C 800BBD1C 00000000 */  nop
/* 26920 800BBD20 3042FFFF */  andi       $v0, $v0, 0xffff
/* 26924 800BBD24 3C030500 */  lui        $v1, 0x500
/* 26928 800BBD28 00431025 */  or         $v0, $v0, $v1
/* 2692C 800BBD2C 00822025 */  or         $a0, $a0, $v0
/* 26930 800BBD30 AE040000 */  sw         $a0, ($s0)
/* 26934 800BBD34 8E440014 */  lw         $a0, 0x14($s2)
/* 26938 800BBD38 0C02F680 */  jal        func_800BDA00
/* 2693C 800BBD3C 26310008 */   addiu     $s1, $s1, 8
/* 26940 800BBD40 AE020004 */  sw         $v0, 4($s0)
/* 26944 800BBD44 AE400024 */  sw         $zero, 0x24($s2)
.L800BBD48:
/* 26948 800BBD48 02201021 */  addu       $v0, $s1, $zero
/* 2694C 800BBD4C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 26950 800BBD50 8FB3002C */  lw         $s3, 0x2c($sp)
/* 26954 800BBD54 8FB20028 */  lw         $s2, 0x28($sp)
/* 26958 800BBD58 8FB10024 */  lw         $s1, 0x24($sp)
/* 2695C 800BBD5C 8FB00020 */  lw         $s0, 0x20($sp)
/* 26960 800BBD60 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 26964 800BBD64 03E00008 */  jr         $ra
/* 26968 800BBD68 27BD0040 */   addiu     $sp, $sp, 0x40
