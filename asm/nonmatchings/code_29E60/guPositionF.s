glabel guPositionF
/* 29E60 800BF260 3C01800F */  lui        $at, %hi(D_800F6160)
/* 29E64 800BF264 C4206160 */  lwc1       $f0, %lo(D_800F6160)($at)
/* 29E68 800BF268 44859000 */  mtc1       $a1, $f18
/* 29E6C 800BF26C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 29E70 800BF270 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 29E74 800BF274 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 29E78 800BF278 46009502 */  mul.s      $f20, $f18, $f0
/* 29E7C 800BF27C C7BC0060 */  lwc1       $f28, 0x60($sp)
/* 29E80 800BF280 44869000 */  mtc1       $a2, $f18
/* 29E84 800BF284 AFB00010 */  sw         $s0, 0x10($sp)
/* 29E88 800BF288 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 29E8C 800BF28C 46009582 */  mul.s      $f22, $f18, $f0
/* 29E90 800BF290 44879000 */  mtc1       $a3, $f18
/* 29E94 800BF294 00808021 */  addu       $s0, $a0, $zero
/* 29E98 800BF298 AFBF0018 */  sw         $ra, 0x18($sp)
/* 29E9C 800BF29C AFB10014 */  sw         $s1, 0x14($sp)
/* 29EA0 800BF2A0 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 29EA4 800BF2A4 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 29EA8 800BF2A8 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 29EAC 800BF2AC 46009602 */  mul.s      $f24, $f18, $f0
/* 29EB0 800BF2B0 0C02FF68 */  jal        func_800BFDA0
/* 29EB4 800BF2B4 4600A306 */   mov.s     $f12, $f20
/* 29EB8 800BF2B8 44110000 */  mfc1       $s1, $f0
/* 29EBC 800BF2BC 00000000 */  nop
/* 29EC0 800BF2C0 0C02F784 */  jal        cosf
/* 29EC4 800BF2C4 4600A306 */   mov.s     $f12, $f20
/* 29EC8 800BF2C8 46000686 */  mov.s      $f26, $f0
/* 29ECC 800BF2CC 0C02FF68 */  jal        func_800BFDA0
/* 29ED0 800BF2D0 4600B306 */   mov.s     $f12, $f22
/* 29ED4 800BF2D4 4600B306 */  mov.s      $f12, $f22
/* 29ED8 800BF2D8 0C02F784 */  jal        cosf
/* 29EDC 800BF2DC 46000506 */   mov.s     $f20, $f0
/* 29EE0 800BF2E0 46000786 */  mov.s      $f30, $f0
/* 29EE4 800BF2E4 0C02FF68 */  jal        func_800BFDA0
/* 29EE8 800BF2E8 4600C306 */   mov.s     $f12, $f24
/* 29EEC 800BF2EC 4600C306 */  mov.s      $f12, $f24
/* 29EF0 800BF2F0 0C02F784 */  jal        cosf
/* 29EF4 800BF2F4 46000586 */   mov.s     $f22, $f0
/* 29EF8 800BF2F8 00000000 */  nop
/* 29EFC 800BF2FC 4600F382 */  mul.s      $f14, $f30, $f0
/* 29F00 800BF300 00000000 */  nop
/* 29F04 800BF304 4616F402 */  mul.s      $f16, $f30, $f22
/* 29F08 800BF308 00000000 */  nop
/* 29F0C 800BF30C 4616D082 */  mul.s      $f2, $f26, $f22
/* 29F10 800BF310 00000000 */  nop
/* 29F14 800BF314 4600D182 */  mul.s      $f6, $f26, $f0
/* 29F18 800BF318 44919000 */  mtc1       $s1, $f18
/* 29F1C 800BF31C 00000000 */  nop
/* 29F20 800BF320 46149102 */  mul.s      $f4, $f18, $f20
/* 29F24 800BF324 4600A307 */  neg.s      $f12, $f20
/* 29F28 800BF328 461C6302 */  mul.s      $f12, $f12, $f28
/* 29F2C 800BF32C 00000000 */  nop
/* 29F30 800BF330 4614D502 */  mul.s      $f20, $f26, $f20
/* 29F34 800BF334 00000000 */  nop
/* 29F38 800BF338 461E9282 */  mul.s      $f10, $f18, $f30
/* 29F3C 800BF33C 00000000 */  nop
/* 29F40 800BF340 461ED682 */  mul.s      $f26, $f26, $f30
/* 29F44 800BF344 00000000 */  nop
/* 29F48 800BF348 461C7382 */  mul.s      $f14, $f14, $f28
/* 29F4C 800BF34C 00000000 */  nop
/* 29F50 800BF350 461C8402 */  mul.s      $f16, $f16, $f28
/* 29F54 800BF354 00000000 */  nop
/* 29F58 800BF358 46002202 */  mul.s      $f8, $f4, $f0
/* 29F5C 800BF35C 00000000 */  nop
/* 29F60 800BF360 46162102 */  mul.s      $f4, $f4, $f22
/* 29F64 800BF364 00000000 */  nop
/* 29F68 800BF368 461C5282 */  mul.s      $f10, $f10, $f28
/* 29F6C 800BF36C 00000000 */  nop
/* 29F70 800BF370 461CD682 */  mul.s      $f26, $f26, $f28
/* 29F74 800BF374 46062100 */  add.s      $f4, $f4, $f6
/* 29F78 800BF378 4600A182 */  mul.s      $f6, $f20, $f0
/* 29F7C 800BF37C 46024201 */  sub.s      $f8, $f8, $f2
/* 29F80 800BF380 46169082 */  mul.s      $f2, $f18, $f22
/* 29F84 800BF384 00000000 */  nop
/* 29F88 800BF388 4616A502 */  mul.s      $f20, $f20, $f22
/* 29F8C 800BF38C 00000000 */  nop
/* 29F90 800BF390 46009482 */  mul.s      $f18, $f18, $f0
/* 29F94 800BF394 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 29F98 800BF398 44810000 */  mtc1       $at, $f0
/* 29F9C 800BF39C 461C4202 */  mul.s      $f8, $f8, $f28
/* 29FA0 800BF3A0 AE00000C */  sw         $zero, 0xC($s0)
/* 29FA4 800BF3A4 AE00001C */  sw         $zero, 0x1C($s0)
/* 29FA8 800BF3A8 AE00002C */  sw         $zero, 0x2C($s0)
/* 29FAC 800BF3AC 44119000 */  mfc1       $s1, $f18
/* 29FB0 800BF3B0 C7B20064 */  lwc1       $f18, 0x64($sp)
/* 29FB4 800BF3B4 461C2102 */  mul.s      $f4, $f4, $f28
/* 29FB8 800BF3B8 E6120030 */  swc1       $f18, 0x30($s0)
/* 29FBC 800BF3BC C7B20068 */  lwc1       $f18, 0x68($sp)
/* 29FC0 800BF3C0 46023180 */  add.s      $f6, $f6, $f2
/* 29FC4 800BF3C4 E6120034 */  swc1       $f18, 0x34($s0)
/* 29FC8 800BF3C8 C7B2006C */  lwc1       $f18, 0x6C($sp)
/* 29FCC 800BF3CC 461C3182 */  mul.s      $f6, $f6, $f28
/* 29FD0 800BF3D0 E6120038 */  swc1       $f18, 0x38($s0)
/* 29FD4 800BF3D4 44919000 */  mtc1       $s1, $f18
/* 29FD8 800BF3D8 00000000 */  nop
/* 29FDC 800BF3DC 4612A501 */  sub.s      $f20, $f20, $f18
/* 29FE0 800BF3E0 E600003C */  swc1       $f0, 0x3C($s0)
/* 29FE4 800BF3E4 E60C0008 */  swc1       $f12, 0x8($s0)
/* 29FE8 800BF3E8 E60E0000 */  swc1       $f14, 0x0($s0)
/* 29FEC 800BF3EC 461CA502 */  mul.s      $f20, $f20, $f28
/* 29FF0 800BF3F0 E6100004 */  swc1       $f16, 0x4($s0)
/* 29FF4 800BF3F4 E60A0018 */  swc1       $f10, 0x18($s0)
/* 29FF8 800BF3F8 E61A0028 */  swc1       $f26, 0x28($s0)
/* 29FFC 800BF3FC E6080010 */  swc1       $f8, 0x10($s0)
/* 2A000 800BF400 E6040014 */  swc1       $f4, 0x14($s0)
/* 2A004 800BF404 E6060020 */  swc1       $f6, 0x20($s0)
/* 2A008 800BF408 E6140024 */  swc1       $f20, 0x24($s0)
/* 2A00C 800BF40C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2A010 800BF410 8FB10014 */  lw         $s1, 0x14($sp)
/* 2A014 800BF414 8FB00010 */  lw         $s0, 0x10($sp)
/* 2A018 800BF418 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 2A01C 800BF41C D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 2A020 800BF420 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 2A024 800BF424 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 2A028 800BF428 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 2A02C 800BF42C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2A030 800BF430 03E00008 */  jr         $ra
/* 2A034 800BF434 27BD0050 */   addiu     $sp, $sp, 0x50
.size guPositionF, . - guPositionF
