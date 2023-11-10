glabel func_8009CBC0
/* 77C0 8009CBC0 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 77C4 8009CBC4 AFB00068 */  sw         $s0, 0x68($sp)
/* 77C8 8009CBC8 3C108015 */  lui        $s0, %hi(D_8014A08C)
/* 77CC 8009CBCC 2610A08C */  addiu      $s0, $s0, %lo(D_8014A08C)
/* 77D0 8009CBD0 AFBF0070 */  sw         $ra, 0x70($sp)
/* 77D4 8009CBD4 AFB1006C */  sw         $s1, 0x6C($sp)
/* 77D8 8009CBD8 F7B60080 */  sdc1       $f22, 0x80($sp)
/* 77DC 8009CBDC F7B40078 */  sdc1       $f20, 0x78($sp)
/* 77E0 8009CBE0 92020000 */  lbu        $v0, 0x0($s0)
/* 77E4 8009CBE4 1440005F */  bnez       $v0, .L8009CD64
/* 77E8 8009CBE8 00808821 */   addu      $s1, $a0, $zero
/* 77EC 8009CBEC 3C058015 */  lui        $a1, %hi(D_8014A07C)
/* 77F0 8009CBF0 8CA5A07C */  lw         $a1, %lo(D_8014A07C)($a1)
/* 77F4 8009CBF4 3C068015 */  lui        $a2, %hi(D_8014A080)
/* 77F8 8009CBF8 8CC6A080 */  lw         $a2, %lo(D_8014A080)($a2)
/* 77FC 8009CBFC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7800 8009CC00 4481A000 */  mtc1       $at, $f20
/* 7804 8009CC04 00000000 */  nop
/* 7808 8009CC08 3C018015 */  lui        $at, %hi(D_8014A064)
/* 780C 8009CC0C C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 7810 8009CC10 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7814 8009CC14 C422A068 */  lwc1       $f2, %lo(D_8014A068)($at)
/* 7818 8009CC18 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 781C 8009CC1C C424A06C */  lwc1       $f4, %lo(D_8014A06C)($at)
/* 7820 8009CC20 4480B000 */  mtc1       $zero, $f22
/* 7824 8009CC24 00000000 */  nop
/* 7828 8009CC28 4407B000 */  mfc1       $a3, $f22
/* 782C 8009CC2C 00000000 */  nop
/* 7830 8009CC30 27A40028 */  addiu      $a0, $sp, 0x28
/* 7834 8009CC34 E7B40010 */  swc1       $f20, 0x10($sp)
/* 7838 8009CC38 E7A00014 */  swc1       $f0, 0x14($sp)
/* 783C 8009CC3C E7A20018 */  swc1       $f2, 0x18($sp)
/* 7840 8009CC40 0C02FC98 */  jal        func_800BF260
/* 7844 8009CC44 E7A4001C */   swc1      $f4, 0x1C($sp)
/* 7848 8009CC48 3C078015 */  lui        $a3, %hi(D_8014A088)
/* 784C 8009CC4C 8CE7A088 */  lw         $a3, %lo(D_8014A088)($a3)
/* 7850 8009CC50 27A40028 */  addiu      $a0, $sp, 0x28
/* 7854 8009CC54 4405B000 */  mfc1       $a1, $f22
/* 7858 8009CC58 00000000 */  nop
/* 785C 8009CC5C 4406B000 */  mfc1       $a2, $f22
/* 7860 8009CC60 00000000 */  nop
/* 7864 8009CC64 2602FFCC */  addiu      $v0, $s0, -0x34
/* 7868 8009CC68 AFA20010 */  sw         $v0, 0x10($sp)
/* 786C 8009CC6C 2602FFD0 */  addiu      $v0, $s0, -0x30
/* 7870 8009CC70 AFA20014 */  sw         $v0, 0x14($sp)
/* 7874 8009CC74 2602FFD4 */  addiu      $v0, $s0, -0x2C
/* 7878 8009CC78 0C02F9DF */  jal        func_800BE77C
/* 787C 8009CC7C AFA20018 */   sw        $v0, 0x18($sp)
/* 7880 8009CC80 3C058015 */  lui        $a1, %hi(D_8014A07C)
/* 7884 8009CC84 8CA5A07C */  lw         $a1, %lo(D_8014A07C)($a1)
/* 7888 8009CC88 3C068015 */  lui        $a2, %hi(D_8014A080)
/* 788C 8009CC8C 8CC6A080 */  lw         $a2, %lo(D_8014A080)($a2)
/* 7890 8009CC90 4407B000 */  mfc1       $a3, $f22
/* 7894 8009CC94 00000000 */  nop
/* 7898 8009CC98 27A40028 */  addiu      $a0, $sp, 0x28
/* 789C 8009CC9C E7B40010 */  swc1       $f20, 0x10($sp)
/* 78A0 8009CCA0 E7B60014 */  swc1       $f22, 0x14($sp)
/* 78A4 8009CCA4 E7B60018 */  swc1       $f22, 0x18($sp)
/* 78A8 8009CCA8 0C02FC98 */  jal        func_800BF260
/* 78AC 8009CCAC E7B6001C */   swc1      $f22, 0x1C($sp)
/* 78B0 8009CCB0 3C018015 */  lui        $at, %hi(D_8014A084)
/* 78B4 8009CCB4 C422A084 */  lwc1       $f2, %lo(D_8014A084)($at)
/* 78B8 8009CCB8 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 78BC 8009CCBC 44810000 */  mtc1       $at, $f0
/* 78C0 8009CCC0 00000000 */  nop
/* 78C4 8009CCC4 46001080 */  add.s      $f2, $f2, $f0
/* 78C8 8009CCC8 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 78CC 8009CCCC 44810000 */  mtc1       $at, $f0
/* 78D0 8009CCD0 00000000 */  nop
/* 78D4 8009CCD4 4602003E */  c.le.s     $f0, $f2
/* 78D8 8009CCD8 00000000 */  nop
/* 78DC 8009CCDC 45000003 */  bc1f       .L8009CCEC
/* 78E0 8009CCE0 00000000 */   nop
/* 78E4 8009CCE4 08027340 */  j          .L8009CD00
/* 78E8 8009CCE8 46001081 */   sub.s     $f2, $f2, $f0
.L8009CCEC:
/* 78EC 8009CCEC 4616103C */  c.lt.s     $f2, $f22
/* 78F0 8009CCF0 00000000 */  nop
/* 78F4 8009CCF4 00000000 */  nop
/* 78F8 8009CCF8 45030001 */  bc1tl      .L8009CD00
/* 78FC 8009CCFC 46001080 */   add.s     $f2, $f2, $f0
.L8009CD00:
/* 7900 8009CD00 3C018010 */  lui        $at, %hi(D_800F9C00)
/* 7904 8009CD04 D4209C00 */  ldc1       $f0, %lo(D_800F9C00)($at)
/* 7908 8009CD08 46001521 */  cvt.d.s    $f20, $f2
/* 790C 8009CD0C 4620A502 */  mul.d      $f20, $f20, $f0
/* 7910 8009CD10 4620A520 */  cvt.s.d    $f20, $f20
/* 7914 8009CD14 0C02F784 */  jal        func_800BDE10
/* 7918 8009CD18 4600A306 */   mov.s     $f12, $f20
/* 791C 8009CD1C 4600A306 */  mov.s      $f12, $f20
/* 7920 8009CD20 0C02FF68 */  jal        func_800BFDA0
/* 7924 8009CD24 46000506 */   mov.s     $f20, $f0
/* 7928 8009CD28 3C038015 */  lui        $v1, %hi(D_8014A088)
/* 792C 8009CD2C 2463A088 */  addiu      $v1, $v1, %lo(D_8014A088)
/* 7930 8009CD30 8C670000 */  lw         $a3, 0x0($v1)
/* 7934 8009CD34 27A40028 */  addiu      $a0, $sp, 0x28
/* 7938 8009CD38 2462FFE8 */  addiu      $v0, $v1, -0x18
/* 793C 8009CD3C AFA20010 */  sw         $v0, 0x10($sp)
/* 7940 8009CD40 2462FFEC */  addiu      $v0, $v1, -0x14
/* 7944 8009CD44 4405A000 */  mfc1       $a1, $f20
/* 7948 8009CD48 00000000 */  nop
/* 794C 8009CD4C 44060000 */  mfc1       $a2, $f0
/* 7950 8009CD50 00000000 */  nop
/* 7954 8009CD54 2463FFF0 */  addiu      $v1, $v1, -0x10
/* 7958 8009CD58 AFA20014 */  sw         $v0, 0x14($sp)
/* 795C 8009CD5C 0C02F9DF */  jal        func_800BE77C
/* 7960 8009CD60 AFA30018 */   sw        $v1, 0x18($sp)
.L8009CD64:
/* 7964 8009CD64 3C058015 */  lui        $a1, %hi(D_8014A058)
/* 7968 8009CD68 8CA5A058 */  lw         $a1, %lo(D_8014A058)($a1)
/* 796C 8009CD6C 3C068015 */  lui        $a2, %hi(D_8014A05C)
/* 7970 8009CD70 8CC6A05C */  lw         $a2, %lo(D_8014A05C)($a2)
/* 7974 8009CD74 3C078015 */  lui        $a3, %hi(D_8014A060)
/* 7978 8009CD78 8CE7A060 */  lw         $a3, %lo(D_8014A060)($a3)
/* 797C 8009CD7C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7980 8009CD80 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 7984 8009CD84 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7988 8009CD88 C422A068 */  lwc1       $f2, %lo(D_8014A068)($at)
/* 798C 8009CD8C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7990 8009CD90 C424A06C */  lwc1       $f4, %lo(D_8014A06C)($at)
/* 7994 8009CD94 3C018015 */  lui        $at, %hi(D_8014A070)
/* 7998 8009CD98 C426A070 */  lwc1       $f6, %lo(D_8014A070)($at)
/* 799C 8009CD9C 3C018015 */  lui        $at, %hi(D_8014A074)
/* 79A0 8009CDA0 C428A074 */  lwc1       $f8, %lo(D_8014A074)($at)
/* 79A4 8009CDA4 3C018015 */  lui        $at, %hi(D_8014A078)
/* 79A8 8009CDA8 C42AA078 */  lwc1       $f10, %lo(D_8014A078)($at)
/* 79AC 8009CDAC 26240040 */  addiu      $a0, $s1, 0x40
/* 79B0 8009CDB0 E7A00010 */  swc1       $f0, 0x10($sp)
/* 79B4 8009CDB4 E7A20014 */  swc1       $f2, 0x14($sp)
/* 79B8 8009CDB8 E7A40018 */  swc1       $f4, 0x18($sp)
/* 79BC 8009CDBC E7A6001C */  swc1       $f6, 0x1C($sp)
/* 79C0 8009CDC0 E7A80020 */  swc1       $f8, 0x20($sp)
/* 79C4 8009CDC4 0C02F8C4 */  jal        func_800BE310
/* 79C8 8009CDC8 E7AA0024 */   swc1      $f10, 0x24($sp)
/* 79CC 8009CDCC 8FBF0070 */  lw         $ra, 0x70($sp)
/* 79D0 8009CDD0 8FB1006C */  lw         $s1, 0x6C($sp)
/* 79D4 8009CDD4 8FB00068 */  lw         $s0, 0x68($sp)
/* 79D8 8009CDD8 D7B60080 */  ldc1       $f22, 0x80($sp)
/* 79DC 8009CDDC D7B40078 */  ldc1       $f20, 0x78($sp)
/* 79E0 8009CDE0 27BD0088 */  addiu      $sp, $sp, 0x88
/* 79E4 8009CDE4 03E00008 */  jr         $ra
/* 79E8 8009CDE8 00000000 */   nop
.size func_8009CBC0, . - func_8009CBC0
