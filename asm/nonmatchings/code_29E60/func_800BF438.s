.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BF438
/* 2A038 800BF438 3C01800F */  lui        $at, %hi(D_800F6160)
/* 2A03C 800BF43C C4206160 */  lwc1       $f0, %lo(D_800F6160)($at)
/* 2A040 800BF440 44859000 */  mtc1       $a1, $f18
/* 2A044 800BF444 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 2A048 800BF448 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 2A04C 800BF44C 46009502 */  mul.s      $f20, $f18, $f0
/* 2A050 800BF450 44869000 */  mtc1       $a2, $f18
/* 2A054 800BF454 F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 2A058 800BF458 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 2A05C 800BF45C 46009682 */  mul.s      $f26, $f18, $f0
/* 2A060 800BF460 C7B800A0 */  lwc1       $f24, 0xa0($sp)
/* 2A064 800BF464 AFB10054 */  sw         $s1, 0x54($sp)
/* 2A068 800BF468 44879000 */  mtc1       $a3, $f18
/* 2A06C 800BF46C 00808821 */  addu       $s1, $a0, $zero
/* 2A070 800BF470 46009482 */  mul.s      $f18, $f18, $f0
/* 2A074 800BF474 AFBF0058 */  sw         $ra, 0x58($sp)
/* 2A078 800BF478 AFB00050 */  sw         $s0, 0x50($sp)
/* 2A07C 800BF47C F7BE0088 */  sdc1       $f30, 0x88($sp)
/* 2A080 800BF480 F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 2A084 800BF484 F7B60068 */  sdc1       $f22, 0x68($sp)
/* 2A088 800BF488 44109000 */  mfc1       $s0, $f18
/* 2A08C 800BF48C 00000000 */  nop
/* 2A090 800BF490 0C02FF68 */  jal        func_800BFDA0
/* 2A094 800BF494 4600A306 */   mov.s     $f12, $f20
/* 2A098 800BF498 4600A306 */  mov.s      $f12, $f20
/* 2A09C 800BF49C 0C02F784 */  jal        func_800BDE10
/* 2A0A0 800BF4A0 46000786 */   mov.s     $f30, $f0
/* 2A0A4 800BF4A4 4600D306 */  mov.s      $f12, $f26
/* 2A0A8 800BF4A8 0C02FF68 */  jal        func_800BFDA0
/* 2A0AC 800BF4AC 46000586 */   mov.s     $f22, $f0
/* 2A0B0 800BF4B0 4600D306 */  mov.s      $f12, $f26
/* 2A0B4 800BF4B4 0C02F784 */  jal        func_800BDE10
/* 2A0B8 800BF4B8 46000506 */   mov.s     $f20, $f0
/* 2A0BC 800BF4BC 44906000 */  mtc1       $s0, $f12
/* 2A0C0 800BF4C0 00000000 */  nop
/* 2A0C4 800BF4C4 0C02FF68 */  jal        func_800BFDA0
/* 2A0C8 800BF4C8 46000706 */   mov.s     $f28, $f0
/* 2A0CC 800BF4CC 44906000 */  mtc1       $s0, $f12
/* 2A0D0 800BF4D0 00000000 */  nop
/* 2A0D4 800BF4D4 0C02F784 */  jal        func_800BDE10
/* 2A0D8 800BF4D8 46000686 */   mov.s     $f26, $f0
/* 2A0DC 800BF4DC 00000000 */  nop
/* 2A0E0 800BF4E0 4600E382 */  mul.s      $f14, $f28, $f0
/* 2A0E4 800BF4E4 00000000 */  nop
/* 2A0E8 800BF4E8 461AE402 */  mul.s      $f16, $f28, $f26
/* 2A0EC 800BF4EC 00000000 */  nop
/* 2A0F0 800BF4F0 4614F102 */  mul.s      $f4, $f30, $f20
/* 2A0F4 800BF4F4 00000000 */  nop
/* 2A0F8 800BF4F8 461AB082 */  mul.s      $f2, $f22, $f26
/* 2A0FC 800BF4FC 00000000 */  nop
/* 2A100 800BF500 4600B182 */  mul.s      $f6, $f22, $f0
/* 2A104 800BF504 4600A307 */  neg.s      $f12, $f20
/* 2A108 800BF508 4614B502 */  mul.s      $f20, $f22, $f20
/* 2A10C 800BF50C 00000000 */  nop
/* 2A110 800BF510 461CF282 */  mul.s      $f10, $f30, $f28
/* 2A114 800BF514 00000000 */  nop
/* 2A118 800BF518 461CB582 */  mul.s      $f22, $f22, $f28
/* 2A11C 800BF51C 00000000 */  nop
/* 2A120 800BF520 46186302 */  mul.s      $f12, $f12, $f24
/* 2A124 800BF524 00000000 */  nop
/* 2A128 800BF528 46187382 */  mul.s      $f14, $f14, $f24
/* 2A12C 800BF52C 00000000 */  nop
/* 2A130 800BF530 46188402 */  mul.s      $f16, $f16, $f24
/* 2A134 800BF534 00000000 */  nop
/* 2A138 800BF538 46002202 */  mul.s      $f8, $f4, $f0
/* 2A13C 800BF53C 00000000 */  nop
/* 2A140 800BF540 461A2102 */  mul.s      $f4, $f4, $f26
/* 2A144 800BF544 00000000 */  nop
/* 2A148 800BF548 46185282 */  mul.s      $f10, $f10, $f24
/* 2A14C 800BF54C 00000000 */  nop
/* 2A150 800BF550 4618B582 */  mul.s      $f22, $f22, $f24
/* 2A154 800BF554 46062100 */  add.s      $f4, $f4, $f6
/* 2A158 800BF558 4600A182 */  mul.s      $f6, $f20, $f0
/* 2A15C 800BF55C 46024201 */  sub.s      $f8, $f8, $f2
/* 2A160 800BF560 461AF082 */  mul.s      $f2, $f30, $f26
/* 2A164 800BF564 00000000 */  nop
/* 2A168 800BF568 461AA502 */  mul.s      $f20, $f20, $f26
/* 2A16C 800BF56C 00000000 */  nop
/* 2A170 800BF570 4600F782 */  mul.s      $f30, $f30, $f0
/* 2A174 800BF574 C7B200A4 */  lwc1       $f18, 0xa4($sp)
/* 2A178 800BF578 46184202 */  mul.s      $f8, $f8, $f24
/* 2A17C 800BF57C E7B20040 */  swc1       $f18, 0x40($sp)
/* 2A180 800BF580 C7B200A8 */  lwc1       $f18, 0xa8($sp)
/* 2A184 800BF584 27A40010 */  addiu      $a0, $sp, 0x10
/* 2A188 800BF588 E7B20044 */  swc1       $f18, 0x44($sp)
/* 2A18C 800BF58C 46182102 */  mul.s      $f4, $f4, $f24
/* 2A190 800BF590 C7B200AC */  lwc1       $f18, 0xac($sp)
/* 2A194 800BF594 3C013F80 */  lui        $at, 0x3f80
/* 2A198 800BF598 44810000 */  mtc1       $at, $f0
/* 2A19C 800BF59C 46023180 */  add.s      $f6, $f6, $f2
/* 2A1A0 800BF5A0 02202821 */  addu       $a1, $s1, $zero
/* 2A1A4 800BF5A4 AFA0001C */  sw         $zero, 0x1c($sp)
/* 2A1A8 800BF5A8 AFA0002C */  sw         $zero, 0x2c($sp)
/* 2A1AC 800BF5AC 46183182 */  mul.s      $f6, $f6, $f24
/* 2A1B0 800BF5B0 AFA0003C */  sw         $zero, 0x3c($sp)
/* 2A1B4 800BF5B4 E7B20048 */  swc1       $f18, 0x48($sp)
/* 2A1B8 800BF5B8 461EA501 */  sub.s      $f20, $f20, $f30
/* 2A1BC 800BF5BC E7AC0018 */  swc1       $f12, 0x18($sp)
/* 2A1C0 800BF5C0 E7AE0010 */  swc1       $f14, 0x10($sp)
/* 2A1C4 800BF5C4 E7B00014 */  swc1       $f16, 0x14($sp)
/* 2A1C8 800BF5C8 4618A502 */  mul.s      $f20, $f20, $f24
/* 2A1CC 800BF5CC E7AA0028 */  swc1       $f10, 0x28($sp)
/* 2A1D0 800BF5D0 E7B60038 */  swc1       $f22, 0x38($sp)
/* 2A1D4 800BF5D4 E7A0004C */  swc1       $f0, 0x4c($sp)
/* 2A1D8 800BF5D8 E7A80020 */  swc1       $f8, 0x20($sp)
/* 2A1DC 800BF5DC E7A40024 */  swc1       $f4, 0x24($sp)
/* 2A1E0 800BF5E0 E7A60030 */  swc1       $f6, 0x30($sp)
/* 2A1E4 800BF5E4 0C02FA4C */  jal        func_800BE930
/* 2A1E8 800BF5E8 E7B40034 */   swc1      $f20, 0x34($sp)
/* 2A1EC 800BF5EC 8FBF0058 */  lw         $ra, 0x58($sp)
/* 2A1F0 800BF5F0 8FB10054 */  lw         $s1, 0x54($sp)
/* 2A1F4 800BF5F4 8FB00050 */  lw         $s0, 0x50($sp)
/* 2A1F8 800BF5F8 D7BE0088 */  ldc1       $f30, 0x88($sp)
/* 2A1FC 800BF5FC D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 2A200 800BF600 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 2A204 800BF604 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 2A208 800BF608 D7B60068 */  ldc1       $f22, 0x68($sp)
/* 2A20C 800BF60C D7B40060 */  ldc1       $f20, 0x60($sp)
/* 2A210 800BF610 03E00008 */  jr         $ra
/* 2A214 800BF614 27BD0090 */   addiu     $sp, $sp, 0x90
/* 2A218 800BF618 00000000 */  nop
/* 2A21C 800BF61C 00000000 */  nop
