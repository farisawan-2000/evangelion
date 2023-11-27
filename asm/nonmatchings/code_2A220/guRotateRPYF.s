glabel guRotateRPYF
/* 2A5A0 800BF9A0 3C01800F */  lui        $at, %hi(D_800F6170)
/* 2A5A4 800BF9A4 C4206170 */  lwc1       $f0, %lo(D_800F6170)($at)
/* 2A5A8 800BF9A8 44854000 */  mtc1       $a1, $f8
/* 2A5AC 800BF9AC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2A5B0 800BF9B0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 2A5B4 800BF9B4 46004502 */  mul.s      $f20, $f8, $f0
/* 2A5B8 800BF9B8 44864000 */  mtc1       $a2, $f8
/* 2A5BC 800BF9BC AFB00018 */  sw         $s0, 0x18($sp)
/* 2A5C0 800BF9C0 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 2A5C4 800BF9C4 46004582 */  mul.s      $f22, $f8, $f0
/* 2A5C8 800BF9C8 44874000 */  mtc1       $a3, $f8
/* 2A5CC 800BF9CC 00808021 */  addu       $s0, $a0, $zero
/* 2A5D0 800BF9D0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2A5D4 800BF9D4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2A5D8 800BF9D8 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* 2A5DC 800BF9DC F7BC0048 */  sdc1       $f28, 0x48($sp)
/* 2A5E0 800BF9E0 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 2A5E4 800BF9E4 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 2A5E8 800BF9E8 46004602 */  mul.s      $f24, $f8, $f0
/* 2A5EC 800BF9EC 0C02FF68 */  jal        func_800BFDA0
/* 2A5F0 800BF9F0 4600A306 */   mov.s     $f12, $f20
/* 2A5F4 800BF9F4 44110000 */  mfc1       $s1, $f0
/* 2A5F8 800BF9F8 00000000 */  nop
/* 2A5FC 800BF9FC 0C02F784 */  jal        cosf
/* 2A600 800BFA00 4600A306 */   mov.s     $f12, $f20
/* 2A604 800BFA04 46000786 */  mov.s      $f30, $f0
/* 2A608 800BFA08 0C02FF68 */  jal        func_800BFDA0
/* 2A60C 800BFA0C 4600B306 */   mov.s     $f12, $f22
/* 2A610 800BFA10 4600B306 */  mov.s      $f12, $f22
/* 2A614 800BFA14 0C02F784 */  jal        cosf
/* 2A618 800BFA18 46000706 */   mov.s     $f28, $f0
/* 2A61C 800BFA1C 46000686 */  mov.s      $f26, $f0
/* 2A620 800BFA20 0C02FF68 */  jal        func_800BFDA0
/* 2A624 800BFA24 4600C306 */   mov.s     $f12, $f24
/* 2A628 800BFA28 4600C306 */  mov.s      $f12, $f24
/* 2A62C 800BFA2C 0C02F784 */  jal        cosf
/* 2A630 800BFA30 46000506 */   mov.s     $f20, $f0
/* 2A634 800BFA34 46000586 */  mov.s      $f22, $f0
/* 2A638 800BFA38 0C02FA9C */  jal        guMtxIdentF
/* 2A63C 800BFA3C 02002021 */   addu      $a0, $s0, $zero
/* 2A640 800BFA40 00000000 */  nop
/* 2A644 800BFA44 4616D402 */  mul.s      $f16, $f26, $f22
/* 2A648 800BFA48 00000000 */  nop
/* 2A64C 800BFA4C 4614D482 */  mul.s      $f18, $f26, $f20
/* 2A650 800BFA50 00000000 */  nop
/* 2A654 800BFA54 4616F282 */  mul.s      $f10, $f30, $f22
/* 2A658 800BFA58 00000000 */  nop
/* 2A65C 800BFA5C 461CF002 */  mul.s      $f0, $f30, $f28
/* 2A660 800BFA60 44914000 */  mtc1       $s1, $f8
/* 2A664 800BFA64 00000000 */  nop
/* 2A668 800BFA68 461C4082 */  mul.s      $f2, $f8, $f28
/* 2A66C 800BFA6C 00000000 */  nop
/* 2A670 800BFA70 4614F202 */  mul.s      $f8, $f30, $f20
/* 2A674 800BFA74 00000000 */  nop
/* 2A678 800BFA78 461AF782 */  mul.s      $f30, $f30, $f26
/* 2A67C 800BFA7C 00000000 */  nop
/* 2A680 800BFA80 46160102 */  mul.s      $f4, $f0, $f22
/* 2A684 800BFA84 00000000 */  nop
/* 2A688 800BFA88 46161182 */  mul.s      $f6, $f2, $f22
/* 2A68C 800BFA8C 00000000 */  nop
/* 2A690 800BFA90 46141082 */  mul.s      $f2, $f2, $f20
/* 2A694 800BFA94 E7A80014 */  swc1       $f8, 0x14($sp)
/* 2A698 800BFA98 44914000 */  mtc1       $s1, $f8
/* 2A69C 800BFA9C 00000000 */  nop
/* 2A6A0 800BFAA0 461A4382 */  mul.s      $f14, $f8, $f26
/* 2A6A4 800BFAA4 00000000 */  nop
/* 2A6A8 800BFAA8 46144302 */  mul.s      $f12, $f8, $f20
/* 2A6AC 800BFAAC C7A80014 */  lwc1       $f8, 0x14($sp)
/* 2A6B0 800BFAB0 46083181 */  sub.s      $f6, $f6, $f8
/* 2A6B4 800BFAB4 44914000 */  mtc1       $s1, $f8
/* 2A6B8 800BFAB8 00000000 */  nop
/* 2A6BC 800BFABC 46164202 */  mul.s      $f8, $f8, $f22
/* 2A6C0 800BFAC0 4600E707 */  neg.s      $f28, $f28
/* 2A6C4 800BFAC4 46140002 */  mul.s      $f0, $f0, $f20
/* 2A6C8 800BFAC8 460A1080 */  add.s      $f2, $f2, $f10
/* 2A6CC 800BFACC E61C0008 */  swc1       $f28, 0x8($s0)
/* 2A6D0 800BFAD0 E6100000 */  swc1       $f16, 0x0($s0)
/* 2A6D4 800BFAD4 44114000 */  mfc1       $s1, $f8
/* 2A6D8 800BFAD8 460C2100 */  add.s      $f4, $f4, $f12
/* 2A6DC 800BFADC E6120004 */  swc1       $f18, 0x4($s0)
/* 2A6E0 800BFAE0 E61E0028 */  swc1       $f30, 0x28($s0)
/* 2A6E4 800BFAE4 E60E0018 */  swc1       $f14, 0x18($s0)
/* 2A6E8 800BFAE8 46080001 */  sub.s      $f0, $f0, $f8
/* 2A6EC 800BFAEC E6060010 */  swc1       $f6, 0x10($s0)
/* 2A6F0 800BFAF0 E6020014 */  swc1       $f2, 0x14($s0)
/* 2A6F4 800BFAF4 E6040020 */  swc1       $f4, 0x20($s0)
/* 2A6F8 800BFAF8 E6000024 */  swc1       $f0, 0x24($s0)
/* 2A6FC 800BFAFC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2A700 800BFB00 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2A704 800BFB04 8FB00018 */  lw         $s0, 0x18($sp)
/* 2A708 800BFB08 D7BE0050 */  ldc1       $f30, 0x50($sp)
/* 2A70C 800BFB0C D7BC0048 */  ldc1       $f28, 0x48($sp)
/* 2A710 800BFB10 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 2A714 800BFB14 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 2A718 800BFB18 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 2A71C 800BFB1C D7B40028 */  ldc1       $f20, 0x28($sp)
/* 2A720 800BFB20 03E00008 */  jr         $ra
/* 2A724 800BFB24 27BD0058 */   addiu     $sp, $sp, 0x58
.size guRotateRPYF, . - guRotateRPYF
