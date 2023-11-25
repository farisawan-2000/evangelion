glabel func_800BEC60
/* 29860 800BEC60 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 29864 800BEC64 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 29868 800BEC68 C7B80060 */  lwc1       $f24, 0x60($sp)
/* 2986C 800BEC6C F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 29870 800BEC70 C7BE0064 */  lwc1       $f30, 0x64($sp)
/* 29874 800BEC74 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 29878 800BEC78 C7B60068 */  lwc1       $f22, 0x68($sp)
/* 2987C 800BEC7C AFB10014 */  sw         $s1, 0x14($sp)
/* 29880 800BEC80 8FB1006C */  lw         $s1, 0x6C($sp)
/* 29884 800BEC84 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 29888 800BEC88 4485D000 */  mtc1       $a1, $f26
/* 2988C 800BEC8C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 29890 800BEC90 4486A000 */  mtc1       $a2, $f20
/* 29894 800BEC94 AFB00010 */  sw         $s0, 0x10($sp)
/* 29898 800BEC98 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 2989C 800BEC9C 4487E000 */  mtc1       $a3, $f28
/* 298A0 800BECA0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 298A4 800BECA4 0C02FA9C */  jal        func_800BEA70
/* 298A8 800BECA8 00808021 */   addu      $s0, $a0, $zero
/* 298AC 800BECAC 461AA001 */  sub.s      $f0, $f20, $f26
/* 298B0 800BECB0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 298B4 800BECB4 44811000 */  mtc1       $at, $f2
/* 298B8 800BECB8 00000000 */  nop
/* 298BC 800BECBC 46001283 */  div.s      $f10, $f2, $f0
/* 298C0 800BECC0 461CC181 */  sub.s      $f6, $f24, $f28
/* 298C4 800BECC4 46061083 */  div.s      $f2, $f2, $f6
/* 298C8 800BECC8 461EB201 */  sub.s      $f8, $f22, $f30
/* 298CC 800BECCC 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 298D0 800BECD0 44812000 */  mtc1       $at, $f4
/* 298D4 800BECD4 00000000 */  nop
/* 298D8 800BECD8 46082103 */  div.s      $f4, $f4, $f8
/* 298DC 800BECDC 461AA500 */  add.s      $f20, $f20, $f26
/* 298E0 800BECE0 4600A507 */  neg.s      $f20, $f20
/* 298E4 800BECE4 4600A503 */  div.s      $f20, $f20, $f0
/* 298E8 800BECE8 461CC600 */  add.s      $f24, $f24, $f28
/* 298EC 800BECEC 4600C607 */  neg.s      $f24, $f24
/* 298F0 800BECF0 4606C603 */  div.s      $f24, $f24, $f6
/* 298F4 800BECF4 461EB580 */  add.s      $f22, $f22, $f30
/* 298F8 800BECF8 4600B587 */  neg.s      $f22, $f22
/* 298FC 800BECFC 4608B583 */  div.s      $f22, $f22, $f8
/* 29900 800BED00 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 29904 800BED04 44810000 */  mtc1       $at, $f0
/* 29908 800BED08 00002821 */  addu       $a1, $zero, $zero
/* 2990C 800BED0C E600003C */  swc1       $f0, 0x3C($s0)
/* 29910 800BED10 E60A0000 */  swc1       $f10, 0x0($s0)
/* 29914 800BED14 E6140030 */  swc1       $f20, 0x30($s0)
/* 29918 800BED18 E6020014 */  swc1       $f2, 0x14($s0)
/* 2991C 800BED1C E6040028 */  swc1       $f4, 0x28($s0)
/* 29920 800BED20 E6180034 */  swc1       $f24, 0x34($s0)
/* 29924 800BED24 E6160038 */  swc1       $f22, 0x38($s0)
.L800BED28:
/* 29928 800BED28 00002021 */  addu       $a0, $zero, $zero
/* 2992C 800BED2C 02001821 */  addu       $v1, $s0, $zero
.L800BED30:
/* 29930 800BED30 C4600000 */  lwc1       $f0, 0x0($v1)
/* 29934 800BED34 44916000 */  mtc1       $s1, $f12
/* 29938 800BED38 00000000 */  nop
/* 2993C 800BED3C 460C0002 */  mul.s      $f0, $f0, $f12
/* 29940 800BED40 24840001 */  addiu      $a0, $a0, 0x1
/* 29944 800BED44 28820004 */  slti       $v0, $a0, 0x4
/* 29948 800BED48 E4600000 */  swc1       $f0, 0x0($v1)
/* 2994C 800BED4C 1440FFF8 */  bnez       $v0, .L800BED30
/* 29950 800BED50 24630004 */   addiu     $v1, $v1, 0x4
/* 29954 800BED54 24A50001 */  addiu      $a1, $a1, 0x1
/* 29958 800BED58 28A20004 */  slti       $v0, $a1, 0x4
/* 2995C 800BED5C 1440FFF2 */  bnez       $v0, .L800BED28
/* 29960 800BED60 26100010 */   addiu     $s0, $s0, 0x10
/* 29964 800BED64 8FBF0018 */  lw         $ra, 0x18($sp)
/* 29968 800BED68 8FB10014 */  lw         $s1, 0x14($sp)
/* 2996C 800BED6C 8FB00010 */  lw         $s0, 0x10($sp)
/* 29970 800BED70 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 29974 800BED74 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 29978 800BED78 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 2997C 800BED7C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 29980 800BED80 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 29984 800BED84 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 29988 800BED88 03E00008 */  jr         $ra
/* 2998C 800BED8C 27BD0050 */   addiu     $sp, $sp, 0x50
.size func_800BEC60, . - func_800BEC60
