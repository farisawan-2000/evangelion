glabel guRotateRPY
/* 2A728 800BFB28 3C01800F */  lui        $at, %hi(D_800F6170)
/* 2A72C 800BFB2C C4206170 */  lwc1       $f0, %lo(D_800F6170)($at)
/* 2A730 800BFB30 44854000 */  mtc1       $a1, $f8
/* 2A734 800BFB34 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 2A738 800BFB38 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 2A73C 800BFB3C 46004502 */  mul.s      $f20, $f8, $f0
/* 2A740 800BFB40 44864000 */  mtc1       $a2, $f8
/* 2A744 800BFB44 F7B60070 */  sdc1       $f22, 0x70($sp)
/* 2A748 800BFB48 46004582 */  mul.s      $f22, $f8, $f0
/* 2A74C 800BFB4C AFB1005C */  sw         $s1, 0x5C($sp)
/* 2A750 800BFB50 44874000 */  mtc1       $a3, $f8
/* 2A754 800BFB54 00808821 */  addu       $s1, $a0, $zero
/* 2A758 800BFB58 AFBF0060 */  sw         $ra, 0x60($sp)
/* 2A75C 800BFB5C 46004202 */  mul.s      $f8, $f8, $f0
/* 2A760 800BFB60 AFB00058 */  sw         $s0, 0x58($sp)
/* 2A764 800BFB64 F7BE0090 */  sdc1       $f30, 0x90($sp)
/* 2A768 800BFB68 F7BC0088 */  sdc1       $f28, 0x88($sp)
/* 2A76C 800BFB6C F7BA0080 */  sdc1       $f26, 0x80($sp)
/* 2A770 800BFB70 F7B80078 */  sdc1       $f24, 0x78($sp)
/* 2A774 800BFB74 44104000 */  mfc1       $s0, $f8
/* 2A778 800BFB78 00000000 */  nop
/* 2A77C 800BFB7C 0C02FF68 */  jal        func_800BFDA0
/* 2A780 800BFB80 4600A306 */   mov.s     $f12, $f20
/* 2A784 800BFB84 4600A306 */  mov.s      $f12, $f20
/* 2A788 800BFB88 0C02F784 */  jal        cosf
/* 2A78C 800BFB8C 46000786 */   mov.s     $f30, $f0
/* 2A790 800BFB90 4600B306 */  mov.s      $f12, $f22
/* 2A794 800BFB94 0C02FF68 */  jal        func_800BFDA0
/* 2A798 800BFB98 46000706 */   mov.s     $f28, $f0
/* 2A79C 800BFB9C 4600B306 */  mov.s      $f12, $f22
/* 2A7A0 800BFBA0 0C02F784 */  jal        cosf
/* 2A7A4 800BFBA4 46000686 */   mov.s     $f26, $f0
/* 2A7A8 800BFBA8 44906000 */  mtc1       $s0, $f12
/* 2A7AC 800BFBAC 00000000 */  nop
/* 2A7B0 800BFBB0 0C02FF68 */  jal        func_800BFDA0
/* 2A7B4 800BFBB4 46000606 */   mov.s     $f24, $f0
/* 2A7B8 800BFBB8 44906000 */  mtc1       $s0, $f12
/* 2A7BC 800BFBBC 00000000 */  nop
/* 2A7C0 800BFBC0 0C02F784 */  jal        cosf
/* 2A7C4 800BFBC4 46000506 */   mov.s     $f20, $f0
/* 2A7C8 800BFBC8 27B00010 */  addiu      $s0, $sp, 0x10
/* 2A7CC 800BFBCC 02002021 */  addu       $a0, $s0, $zero
/* 2A7D0 800BFBD0 0C02FA9C */  jal        guMtxIdentF
/* 2A7D4 800BFBD4 46000586 */   mov.s     $f22, $f0
/* 2A7D8 800BFBD8 00000000 */  nop
/* 2A7DC 800BFBDC 4616C402 */  mul.s      $f16, $f24, $f22
/* 2A7E0 800BFBE0 00000000 */  nop
/* 2A7E4 800BFBE4 461AF082 */  mul.s      $f2, $f30, $f26
/* 2A7E8 800BFBE8 00000000 */  nop
/* 2A7EC 800BFBEC 4614C482 */  mul.s      $f18, $f24, $f20
/* 2A7F0 800BFBF0 00000000 */  nop
/* 2A7F4 800BFBF4 4614E202 */  mul.s      $f8, $f28, $f20
/* 2A7F8 800BFBF8 00000000 */  nop
/* 2A7FC 800BFBFC 4616E282 */  mul.s      $f10, $f28, $f22
/* 2A800 800BFC00 00000000 */  nop
/* 2A804 800BFC04 461AE002 */  mul.s      $f0, $f28, $f26
/* 2A808 800BFC08 00000000 */  nop
/* 2A80C 800BFC0C 4618F382 */  mul.s      $f14, $f30, $f24
/* 2A810 800BFC10 00000000 */  nop
/* 2A814 800BFC14 4614F302 */  mul.s      $f12, $f30, $f20
/* 2A818 800BFC18 00000000 */  nop
/* 2A81C 800BFC1C 4618E702 */  mul.s      $f28, $f28, $f24
/* 2A820 800BFC20 00000000 */  nop
/* 2A824 800BFC24 4616F782 */  mul.s      $f30, $f30, $f22
/* 2A828 800BFC28 00000000 */  nop
/* 2A82C 800BFC2C 46161182 */  mul.s      $f6, $f2, $f22
/* 2A830 800BFC30 00000000 */  nop
/* 2A834 800BFC34 46141082 */  mul.s      $f2, $f2, $f20
/* 2A838 800BFC38 00000000 */  nop
/* 2A83C 800BFC3C 46160102 */  mul.s      $f4, $f0, $f22
/* 2A840 800BFC40 46083181 */  sub.s      $f6, $f6, $f8
/* 2A844 800BFC44 02002021 */  addu       $a0, $s0, $zero
/* 2A848 800BFC48 4600D687 */  neg.s      $f26, $f26
/* 2A84C 800BFC4C 02202821 */  addu       $a1, $s1, $zero
/* 2A850 800BFC50 460A1080 */  add.s      $f2, $f2, $f10
/* 2A854 800BFC54 46140002 */  mul.s      $f0, $f0, $f20
/* 2A858 800BFC58 E7BA0018 */  swc1       $f26, 0x18($sp)
/* 2A85C 800BFC5C E7B00010 */  swc1       $f16, 0x10($sp)
/* 2A860 800BFC60 460C2100 */  add.s      $f4, $f4, $f12
/* 2A864 800BFC64 E7B20014 */  swc1       $f18, 0x14($sp)
/* 2A868 800BFC68 E7AE0028 */  swc1       $f14, 0x28($sp)
/* 2A86C 800BFC6C E7BC0038 */  swc1       $f28, 0x38($sp)
/* 2A870 800BFC70 461E0001 */  sub.s      $f0, $f0, $f30
/* 2A874 800BFC74 E7A60020 */  swc1       $f6, 0x20($sp)
/* 2A878 800BFC78 E7A20024 */  swc1       $f2, 0x24($sp)
/* 2A87C 800BFC7C E7A40030 */  swc1       $f4, 0x30($sp)
/* 2A880 800BFC80 0C02FA4C */  jal        guMtxF2L
/* 2A884 800BFC84 E7A00034 */   swc1      $f0, 0x34($sp)
/* 2A888 800BFC88 8FBF0060 */  lw         $ra, 0x60($sp)
/* 2A88C 800BFC8C 8FB1005C */  lw         $s1, 0x5C($sp)
/* 2A890 800BFC90 8FB00058 */  lw         $s0, 0x58($sp)
/* 2A894 800BFC94 D7BE0090 */  ldc1       $f30, 0x90($sp)
/* 2A898 800BFC98 D7BC0088 */  ldc1       $f28, 0x88($sp)
/* 2A89C 800BFC9C D7BA0080 */  ldc1       $f26, 0x80($sp)
/* 2A8A0 800BFCA0 D7B80078 */  ldc1       $f24, 0x78($sp)
/* 2A8A4 800BFCA4 D7B60070 */  ldc1       $f22, 0x70($sp)
/* 2A8A8 800BFCA8 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 2A8AC 800BFCAC 03E00008 */  jr         $ra
/* 2A8B0 800BFCB0 27BD0098 */   addiu     $sp, $sp, 0x98
/* 2A8B4 800BFCB4 00000000 */  nop
/* 2A8B8 800BFCB8 00000000 */  nop
/* 2A8BC 800BFCBC 00000000 */  nop
.size guRotateRPY, . - guRotateRPY
