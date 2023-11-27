glabel guAlign
/* 2883C 800BDC3C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 28840 800BDC40 C7A000B8 */  lwc1       $f0, 0xB8($sp)
/* 28844 800BDC44 AFB1006C */  sw         $s1, 0x6C($sp)
/* 28848 800BDC48 00808821 */  addu       $s1, $a0, $zero
/* 2884C 800BDC4C 27A40058 */  addiu      $a0, $sp, 0x58
/* 28850 800BDC50 F7B40078 */  sdc1       $f20, 0x78($sp)
/* 28854 800BDC54 4485A000 */  mtc1       $a1, $f20
/* 28858 800BDC58 27A5005C */  addiu      $a1, $sp, 0x5C
/* 2885C 800BDC5C AFA60058 */  sw         $a2, 0x58($sp)
/* 28860 800BDC60 27A60060 */  addiu      $a2, $sp, 0x60
/* 28864 800BDC64 AFBF0070 */  sw         $ra, 0x70($sp)
/* 28868 800BDC68 AFB00068 */  sw         $s0, 0x68($sp)
/* 2886C 800BDC6C F7BE00A0 */  sdc1       $f30, 0xA0($sp)
/* 28870 800BDC70 F7BC0098 */  sdc1       $f28, 0x98($sp)
/* 28874 800BDC74 F7BA0090 */  sdc1       $f26, 0x90($sp)
/* 28878 800BDC78 F7B80088 */  sdc1       $f24, 0x88($sp)
/* 2887C 800BDC7C F7B60080 */  sdc1       $f22, 0x80($sp)
/* 28880 800BDC80 AFA7005C */  sw         $a3, 0x5C($sp)
/* 28884 800BDC84 0C02FAEC */  jal        guNormalize
/* 28888 800BDC88 E7A00060 */   swc1      $f0, 0x60($sp)
/* 2888C 800BDC8C 3C01800F */  lui        $at, %hi(D_800F6150)
/* 28890 800BDC90 C4206150 */  lwc1       $f0, %lo(D_800F6150)($at)
/* 28894 800BDC94 4600A502 */  mul.s      $f20, $f20, $f0
/* 28898 800BDC98 0C02FF68 */  jal        func_800BFDA0
/* 2889C 800BDC9C 4600A306 */   mov.s     $f12, $f20
/* 288A0 800BDCA0 4600A306 */  mov.s      $f12, $f20
/* 288A4 800BDCA4 0C02F784 */  jal        cosf
/* 288A8 800BDCA8 46000606 */   mov.s     $f24, $f0
/* 288AC 800BDCAC C7A40058 */  lwc1       $f4, 0x58($sp)
/* 288B0 800BDCB0 46042102 */  mul.s      $f4, $f4, $f4
/* 288B4 800BDCB4 C7A20060 */  lwc1       $f2, 0x60($sp)
/* 288B8 800BDCB8 46021082 */  mul.s      $f2, $f2, $f2
/* 288BC 800BDCBC 46022300 */  add.s      $f12, $f4, $f2
/* 288C0 800BDCC0 46006684 */  sqrt.s     $f26, $f12
/* 288C4 800BDCC4 461AD032 */  c.eq.s     $f26, $f26
/* 288C8 800BDCC8 27B00010 */  addiu      $s0, $sp, 0x10
/* 288CC 800BDCCC 00000000 */  nop
/* 288D0 800BDCD0 45010004 */  bc1t       .L800BDCE4
/* 288D4 800BDCD4 46000786 */   mov.s     $f30, $f0
/* 288D8 800BDCD8 0C02F698 */  jal        func_800BDA60
/* 288DC 800BDCDC 00000000 */   nop
/* 288E0 800BDCE0 46000686 */  mov.s      $f26, $f0
.L800BDCE4:
/* 288E4 800BDCE4 0C02FA9C */  jal        guMtxIdentF
/* 288E8 800BDCE8 02002021 */   addu      $a0, $s0, $zero
/* 288EC 800BDCEC 4480E000 */  mtc1       $zero, $f28
/* 288F0 800BDCF0 00000000 */  nop
/* 288F4 800BDCF4 461CD032 */  c.eq.s     $f26, $f28
/* 288F8 800BDCF8 00000000 */  nop
/* 288FC 800BDCFC 00000000 */  nop
/* 28900 800BDD00 45010036 */  bc1t       .L800BDDDC
/* 28904 800BDD04 02002021 */   addu      $a0, $s0, $zero
/* 28908 800BDD08 C7AE005C */  lwc1       $f14, 0x5C($sp)
/* 2890C 800BDD0C 460EC182 */  mul.s      $f6, $f24, $f14
/* 28910 800BDD10 00000000 */  nop
/* 28914 800BDD14 460EF102 */  mul.s      $f4, $f30, $f14
/* 28918 800BDD18 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 2891C 800BDD1C 46184302 */  mul.s      $f12, $f8, $f24
/* 28920 800BDD20 46004587 */  neg.s      $f22, $f8
/* 28924 800BDD24 461EB482 */  mul.s      $f18, $f22, $f30
/* 28928 800BDD28 E7B60038 */  swc1       $f22, 0x38($sp)
/* 2892C 800BDD2C 461AC582 */  mul.s      $f22, $f24, $f26
/* 28930 800BDD30 C7A20058 */  lwc1       $f2, 0x58($sp)
/* 28934 800BDD34 46023282 */  mul.s      $f10, $f6, $f2
/* 28938 800BDD38 00000000 */  nop
/* 2893C 800BDD3C 46022002 */  mul.s      $f0, $f4, $f2
/* 28940 800BDD40 00000000 */  nop
/* 28944 800BDD44 46083182 */  mul.s      $f6, $f6, $f8
/* 28948 800BDD48 00000000 */  nop
/* 2894C 800BDD4C 46082102 */  mul.s      $f4, $f4, $f8
/* 28950 800BDD50 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 28954 800BDD54 4481A000 */  mtc1       $at, $f20
/* 28958 800BDD58 00000000 */  nop
/* 2895C 800BDD5C 461AA403 */  div.s      $f16, $f20, $f26
/* 28960 800BDD60 461AF202 */  mul.s      $f8, $f30, $f26
/* 28964 800BDD64 460A9481 */  sub.s      $f18, $f18, $f10
/* 28968 800BDD68 4602F282 */  mul.s      $f10, $f30, $f2
/* 2896C 800BDD6C 46006301 */  sub.s      $f12, $f12, $f0
/* 28970 800BDD70 4600C007 */  neg.s      $f0, $f24
/* 28974 800BDD74 46020002 */  mul.s      $f0, $f0, $f2
/* 28978 800BDD78 00000000 */  nop
/* 2897C 800BDD7C 46109482 */  mul.s      $f18, $f18, $f16
/* 28980 800BDD80 00000000 */  nop
/* 28984 800BDD84 46106302 */  mul.s      $f12, $f12, $f16
/* 28988 800BDD88 E7BC0040 */  swc1       $f28, 0x40($sp)
/* 2898C 800BDD8C E7BC0044 */  swc1       $f28, 0x44($sp)
/* 28990 800BDD90 46065281 */  sub.s      $f10, $f10, $f6
/* 28994 800BDD94 E7BC0048 */  swc1       $f28, 0x48($sp)
/* 28998 800BDD98 E7BC001C */  swc1       $f28, 0x1C($sp)
/* 2899C 800BDD9C E7BC002C */  swc1       $f28, 0x2C($sp)
/* 289A0 800BDDA0 46105282 */  mul.s      $f10, $f10, $f16
/* 289A4 800BDDA4 46007387 */  neg.s      $f14, $f14
/* 289A8 800BDDA8 E7BC003C */  swc1       $f28, 0x3C($sp)
/* 289AC 800BDDAC 46040001 */  sub.s      $f0, $f0, $f4
/* 289B0 800BDDB0 E7B4004C */  swc1       $f20, 0x4C($sp)
/* 289B4 800BDDB4 E7AE0034 */  swc1       $f14, 0x34($sp)
/* 289B8 800BDDB8 E7B60014 */  swc1       $f22, 0x14($sp)
/* 289BC 800BDDBC 46100002 */  mul.s      $f0, $f0, $f16
/* 289C0 800BDDC0 46001087 */  neg.s      $f2, $f2
/* 289C4 800BDDC4 E7A80024 */  swc1       $f8, 0x24($sp)
/* 289C8 800BDDC8 E7A20030 */  swc1       $f2, 0x30($sp)
/* 289CC 800BDDCC E7B20010 */  swc1       $f18, 0x10($sp)
/* 289D0 800BDDD0 E7AC0020 */  swc1       $f12, 0x20($sp)
/* 289D4 800BDDD4 E7AA0018 */  swc1       $f10, 0x18($sp)
/* 289D8 800BDDD8 E7A00028 */  swc1       $f0, 0x28($sp)
.L800BDDDC:
/* 289DC 800BDDDC 0C02FA4C */  jal        guMtxF2L
/* 289E0 800BDDE0 02202821 */   addu      $a1, $s1, $zero
/* 289E4 800BDDE4 8FBF0070 */  lw         $ra, 0x70($sp)
/* 289E8 800BDDE8 8FB1006C */  lw         $s1, 0x6C($sp)
/* 289EC 800BDDEC 8FB00068 */  lw         $s0, 0x68($sp)
/* 289F0 800BDDF0 D7BE00A0 */  ldc1       $f30, 0xA0($sp)
/* 289F4 800BDDF4 D7BC0098 */  ldc1       $f28, 0x98($sp)
/* 289F8 800BDDF8 D7BA0090 */  ldc1       $f26, 0x90($sp)
/* 289FC 800BDDFC D7B80088 */  ldc1       $f24, 0x88($sp)
/* 28A00 800BDE00 D7B60080 */  ldc1       $f22, 0x80($sp)
/* 28A04 800BDE04 D7B40078 */  ldc1       $f20, 0x78($sp)
/* 28A08 800BDE08 03E00008 */  jr         $ra
/* 28A0C 800BDE0C 27BD00A8 */   addiu     $sp, $sp, 0xA8
.size guAlign, . - guAlign
