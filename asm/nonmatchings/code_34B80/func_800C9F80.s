.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C9F80
/* 34B80 800C9F80 44808800 */  mtc1       $zero, $f17
/* 34B84 800C9F84 44808000 */  mtc1       $zero, $f16
/* 34B88 800C9F88 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 34B8C 800C9F8C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 34B90 800C9F90 46307032 */  c.eq.d     $f14, $f16
/* 34B94 800C9F94 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 34B98 800C9F98 46207506 */  mov.d      $f20, $f14
/* 34B9C 800C9F9C 46206586 */  mov.d      $f22, $f12
/* 34BA0 800C9FA0 45000009 */  bc1f       .L800C9FC8
/* 34BA4 800C9FA4 AFBF0024 */   sw        $ra, 0x24($sp)
/* 34BA8 800C9FA8 46306032 */  c.eq.d     $f12, $f16
/* 34BAC 800C9FAC 00000000 */  nop
/* 34BB0 800C9FB0 45020006 */  bc1fl      .L800C9FCC
/* 34BB4 800C9FB4 4630A032 */   c.eq.d    $f20, $f16
/* 34BB8 800C9FB8 44800800 */  mtc1       $zero, $f1
/* 34BBC 800C9FBC 44800000 */  mtc1       $zero, $f0
/* 34BC0 800C9FC0 1000008C */  b          .L800CA1F4
/* 34BC4 800C9FC4 8FBF0024 */   lw        $ra, 0x24($sp)
.L800C9FC8:
/* 34BC8 800C9FC8 4630A032 */  c.eq.d     $f20, $f16
.L800C9FCC:
/* 34BCC 800C9FCC 00000000 */  nop
/* 34BD0 800C9FD0 4502000B */  bc1fl      .L800CA000
/* 34BD4 800C9FD4 4634B303 */   div.d     $f12, $f22, $f20
/* 34BD8 800C9FD8 4636803C */  c.lt.d     $f16, $f22
/* 34BDC 800C9FDC 3C018010 */  lui        $at, 0x8010
/* 34BE0 800C9FE0 45000004 */  bc1f       .L800C9FF4
/* 34BE4 800C9FE4 00000000 */   nop
/* 34BE8 800C9FE8 3C018010 */  lui        $at, %hi(D_800FF280)
/* 34BEC 800C9FEC 10000080 */  b          .L800CA1F0
/* 34BF0 800C9FF0 D420F280 */   ldc1      $f0, %lo(D_800FF280)($at)
.L800C9FF4:
/* 34BF4 800C9FF4 1000007E */  b          .L800CA1F0
/* 34BF8 800C9FF8 D420F288 */   ldc1      $f0, -0xd78($at)
/* 34BFC 800C9FFC 4634B303 */  div.d      $f12, $f22, $f20
.L800CA000:
/* 34C00 800CA000 0C03292C */  jal        func_800CA4B0
/* 34C04 800CA004 F7AC0028 */   sdc1      $f12, 0x28($sp)
/* 34C08 800CA008 3C013FF0 */  lui        $at, 0x3ff0
/* 34C0C 800CA00C 44817800 */  mtc1       $at, $f15
/* 34C10 800CA010 44807000 */  mtc1       $zero, $f14
/* 34C14 800CA014 240E00C4 */  addiu      $t6, $zero, 0xc4
/* 34C18 800CA018 448E2000 */  mtc1       $t6, $f4
/* 34C1C 800CA01C 462E003E */  c.le.d     $f0, $f14
/* 34C20 800CA020 44808800 */  mtc1       $zero, $f17
/* 34C24 800CA024 44808000 */  mtc1       $zero, $f16
/* 34C28 800CA028 D7AC0028 */  ldc1       $f12, 0x28($sp)
/* 34C2C 800CA02C 45000003 */  bc1f       .L800CA03C
/* 34C30 800CA030 468021A1 */   cvt.d.w   $f6, $f4
/* 34C34 800CA034 10000002 */  b          .L800CA040
/* 34C38 800CA038 46206086 */   mov.d     $f2, $f12
.L800CA03C:
/* 34C3C 800CA03C 462C7083 */  div.d      $f2, $f14, $f12
.L800CA040:
/* 34C40 800CA040 46223202 */  mul.d      $f8, $f6, $f2
/* 34C44 800CA044 240F001D */  addiu      $t7, $zero, 0x1d
/* 34C48 800CA048 448F9000 */  mtc1       $t7, $f18
/* 34C4C 800CA04C 241800A9 */  addiu      $t8, $zero, 0xa9
/* 34C50 800CA050 2419001B */  addiu      $t9, $zero, 0x1b
/* 34C54 800CA054 2402000C */  addiu      $v0, $zero, 0xc
/* 34C58 800CA058 24060019 */  addiu      $a2, $zero, 0x19
/* 34C5C 800CA05C 46809121 */  cvt.d.w    $f4, $f18
/* 34C60 800CA060 46224282 */  mul.d      $f10, $f8, $f2
/* 34C64 800CA064 44984000 */  mtc1       $t8, $f8
/* 34C68 800CA068 24070017 */  addiu      $a3, $zero, 0x17
/* 34C6C 800CA06C 24080015 */  addiu      $t0, $zero, 0x15
/* 34C70 800CA070 24090013 */  addiu      $t1, $zero, 0x13
/* 34C74 800CA074 3C018010 */  lui        $at, 0x8010
/* 34C78 800CA078 46302180 */  add.d      $f6, $f4, $f16
/* 34C7C 800CA07C 468044A1 */  cvt.d.w    $f18, $f8
/* 34C80 800CA080 46265003 */  div.d      $f0, $f10, $f6
/* 34C84 800CA084 46229102 */  mul.d      $f4, $f18, $f2
/* 34C88 800CA088 44993000 */  mtc1       $t9, $f6
/* 34C8C 800CA08C 00000000 */  nop
/* 34C90 800CA090 46803221 */  cvt.d.w    $f8, $f6
/* 34C94 800CA094 46222282 */  mul.d      $f10, $f4, $f2
/* 34C98 800CA098 46204480 */  add.d      $f18, $f8, $f0
/* 34C9C 800CA09C 46325003 */  div.d      $f0, $f10, $f18
.L800CA0A0:
/* 34CA0 800CA0A0 00420019 */  multu      $v0, $v0
/* 34CA4 800CA0A4 44869000 */  mtc1       $a2, $f18
/* 34CA8 800CA0A8 2443FFFF */  addiu      $v1, $v0, -1
/* 34CAC 800CA0AC 2444FFFE */  addiu      $a0, $v0, -2
/* 34CB0 800CA0B0 2445FFFD */  addiu      $a1, $v0, -3
/* 34CB4 800CA0B4 2442FFFC */  addiu      $v0, $v0, -4
/* 34CB8 800CA0B8 24C6FFF8 */  addiu      $a2, $a2, -8
/* 34CBC 800CA0BC 00005012 */  mflo       $t2
/* 34CC0 800CA0C0 448A2000 */  mtc1       $t2, $f4
/* 34CC4 800CA0C4 00000000 */  nop
/* 34CC8 800CA0C8 00630019 */  multu      $v1, $v1
/* 34CCC 800CA0CC 468021A1 */  cvt.d.w    $f6, $f4
/* 34CD0 800CA0D0 46809121 */  cvt.d.w    $f4, $f18
/* 34CD4 800CA0D4 46223202 */  mul.d      $f8, $f6, $f2
/* 34CD8 800CA0D8 00005812 */  mflo       $t3
/* 34CDC 800CA0DC 46202180 */  add.d      $f6, $f4, $f0
/* 34CE0 800CA0E0 00000000 */  nop
/* 34CE4 800CA0E4 00840019 */  multu      $a0, $a0
/* 34CE8 800CA0E8 46224282 */  mul.d      $f10, $f8, $f2
/* 34CEC 800CA0EC 448B4000 */  mtc1       $t3, $f8
/* 34CF0 800CA0F0 00000000 */  nop
/* 34CF4 800CA0F4 468044A1 */  cvt.d.w    $f18, $f8
/* 34CF8 800CA0F8 00006012 */  mflo       $t4
/* 34CFC 800CA0FC 46265003 */  div.d      $f0, $f10, $f6
/* 34D00 800CA100 46229102 */  mul.d      $f4, $f18, $f2
/* 34D04 800CA104 44873000 */  mtc1       $a3, $f6
/* 34D08 800CA108 00A50019 */  multu      $a1, $a1
/* 34D0C 800CA10C 24E7FFF8 */  addiu      $a3, $a3, -8
/* 34D10 800CA110 46803221 */  cvt.d.w    $f8, $f6
/* 34D14 800CA114 46222282 */  mul.d      $f10, $f4, $f2
/* 34D18 800CA118 448C2000 */  mtc1       $t4, $f4
/* 34D1C 800CA11C 00006812 */  mflo       $t5
/* 34D20 800CA120 468021A1 */  cvt.d.w    $f6, $f4
/* 34D24 800CA124 46204480 */  add.d      $f18, $f8, $f0
/* 34D28 800CA128 46223202 */  mul.d      $f8, $f6, $f2
/* 34D2C 800CA12C 46325003 */  div.d      $f0, $f10, $f18
/* 34D30 800CA130 44889000 */  mtc1       $t0, $f18
/* 34D34 800CA134 2508FFF8 */  addiu      $t0, $t0, -8
/* 34D38 800CA138 46224282 */  mul.d      $f10, $f8, $f2
/* 34D3C 800CA13C 448D4000 */  mtc1       $t5, $f8
/* 34D40 800CA140 46809121 */  cvt.d.w    $f4, $f18
/* 34D44 800CA144 468044A1 */  cvt.d.w    $f18, $f8
/* 34D48 800CA148 46202180 */  add.d      $f6, $f4, $f0
/* 34D4C 800CA14C 46229102 */  mul.d      $f4, $f18, $f2
/* 34D50 800CA150 46265003 */  div.d      $f0, $f10, $f6
/* 34D54 800CA154 44893000 */  mtc1       $t1, $f6
/* 34D58 800CA158 2529FFF8 */  addiu      $t1, $t1, -8
/* 34D5C 800CA15C 46222282 */  mul.d      $f10, $f4, $f2
/* 34D60 800CA160 46803221 */  cvt.d.w    $f8, $f6
/* 34D64 800CA164 46204480 */  add.d      $f18, $f8, $f0
/* 34D68 800CA168 1440FFCD */  bnez       $v0, .L800CA0A0
/* 34D6C 800CA16C 46325003 */   div.d     $f0, $f10, $f18
/* 34D70 800CA170 462C703C */  c.lt.d     $f14, $f12
/* 34D74 800CA174 44804000 */  mtc1       $zero, $f8
/* 34D78 800CA178 46207100 */  add.d      $f4, $f14, $f0
/* 34D7C 800CA17C 45000003 */  bc1f       .L800CA18C
/* 34D80 800CA180 46241083 */   div.d     $f2, $f2, $f4
/* 34D84 800CA184 D426F290 */  ldc1       $f6, -0xd70($at)
/* 34D88 800CA188 46223081 */  sub.d      $f2, $f6, $f2
.L800CA18C:
/* 34D8C 800CA18C 3C01BFF0 */  lui        $at, 0xbff0
/* 34D90 800CA190 44814800 */  mtc1       $at, $f9
/* 34D94 800CA194 3C018010 */  lui        $at, %hi(D_800FF298)
/* 34D98 800CA198 4628603C */  c.lt.d     $f12, $f8
/* 34D9C 800CA19C 00000000 */  nop
/* 34DA0 800CA1A0 45020004 */  bc1fl      .L800CA1B4
/* 34DA4 800CA1A4 4634803C */   c.lt.d    $f16, $f20
/* 34DA8 800CA1A8 D42AF298 */  ldc1       $f10, %lo(D_800FF298)($at)
/* 34DAC 800CA1AC 46225081 */  sub.d      $f2, $f10, $f2
/* 34DB0 800CA1B0 4634803C */  c.lt.d     $f16, $f20
.L800CA1B4:
/* 34DB4 800CA1B4 00000000 */  nop
/* 34DB8 800CA1B8 45020004 */  bc1fl      .L800CA1CC
/* 34DBC 800CA1BC 4636803C */   c.lt.d    $f16, $f22
/* 34DC0 800CA1C0 1000000B */  b          .L800CA1F0
/* 34DC4 800CA1C4 46201006 */   mov.d     $f0, $f2
/* 34DC8 800CA1C8 4636803C */  c.lt.d     $f16, $f22
.L800CA1CC:
/* 34DCC 800CA1CC 3C018010 */  lui        $at, 0x8010
/* 34DD0 800CA1D0 45000005 */  bc1f       .L800CA1E8
/* 34DD4 800CA1D4 00000000 */   nop
/* 34DD8 800CA1D8 3C018010 */  lui        $at, %hi(D_800FF2A0)
/* 34DDC 800CA1DC D432F2A0 */  ldc1       $f18, %lo(D_800FF2A0)($at)
/* 34DE0 800CA1E0 10000003 */  b          .L800CA1F0
/* 34DE4 800CA1E4 46321000 */   add.d     $f0, $f2, $f18
.L800CA1E8:
/* 34DE8 800CA1E8 D424F2A8 */  ldc1       $f4, -0xd58($at)
/* 34DEC 800CA1EC 46241001 */  sub.d      $f0, $f2, $f4
.L800CA1F0:
/* 34DF0 800CA1F0 8FBF0024 */  lw         $ra, 0x24($sp)
.L800CA1F4:
/* 34DF4 800CA1F4 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 34DF8 800CA1F8 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 34DFC 800CA1FC 03E00008 */  jr         $ra
/* 34E00 800CA200 27BD0050 */   addiu     $sp, $sp, 0x50
/* 34E04 800CA204 00000000 */  nop
/* 34E08 800CA208 00000000 */  nop
/* 34E0C 800CA20C 00000000 */  nop
