glabel func_8009A6A0
/* 52A0 8009A6A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 52A4 8009A6A4 308400FF */  andi       $a0, $a0, 0xFF
/* 52A8 8009A6A8 00041080 */  sll        $v0, $a0, 2
/* 52AC 8009A6AC 00441021 */  addu       $v0, $v0, $a0
/* 52B0 8009A6B0 000210C0 */  sll        $v0, $v0, 3
/* 52B4 8009A6B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 52B8 8009A6B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 52BC 8009A6BC F7B80028 */  sdc1       $f24, 0x28($sp)
/* 52C0 8009A6C0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 52C4 8009A6C4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 52C8 8009A6C8 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 52CC 8009A6CC 00220821 */  addu       $at, $at, $v0
/* 52D0 8009A6D0 C438CFA4 */  lwc1       $f24, %lo(D_8014CFA4)($at)
/* 52D4 8009A6D4 00000000 */  nop
/* 52D8 8009A6D8 4618C082 */  mul.s      $f2, $f24, $f24
/* 52DC 8009A6DC 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 52E0 8009A6E0 00220821 */  addu       $at, $at, $v0
/* 52E4 8009A6E4 C434CFA8 */  lwc1       $f20, %lo(D_8014CFA8)($at)
/* 52E8 8009A6E8 00000000 */  nop
/* 52EC 8009A6EC 4614A002 */  mul.s      $f0, $f20, $f20
/* 52F0 8009A6F0 46001300 */  add.s      $f12, $f2, $f0
/* 52F4 8009A6F4 46006584 */  sqrt.s     $f22, $f12
/* 52F8 8009A6F8 4616B032 */  c.eq.s     $f22, $f22
/* 52FC 8009A6FC 00000000 */  nop
/* 5300 8009A700 00000000 */  nop
/* 5304 8009A704 45010004 */  bc1t       .L8009A718
/* 5308 8009A708 00A08021 */   addu      $s0, $a1, $zero
/* 530C 8009A70C 0C02F698 */  jal        func_800BDA60
/* 5310 8009A710 00000000 */   nop
/* 5314 8009A714 46000586 */  mov.s      $f22, $f0
.L8009A718:
/* 5318 8009A718 4600A307 */  neg.s      $f12, $f20
/* 531C 8009A71C 0C032884 */  jal        func_800CA210
/* 5320 8009A720 4600C386 */   mov.s     $f14, $f24
/* 5324 8009A724 3C018010 */  lui        $at, %hi(D_800F9B60)
/* 5328 8009A728 D4229B60 */  ldc1       $f2, %lo(D_800F9B60)($at)
/* 532C 8009A72C 46000021 */  cvt.d.s    $f0, $f0
/* 5330 8009A730 46220002 */  mul.d      $f0, $f0, $f2
/* 5334 8009A734 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 5338 8009A738 44817000 */  mtc1       $at, $f14
/* 533C 8009A73C 00000000 */  nop
/* 5340 8009A740 0C0259AB */  jal        func_800966AC
/* 5344 8009A744 46200320 */   cvt.s.d   $f12, $f0
/* 5348 8009A748 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 534C 8009A74C 44811000 */  mtc1       $at, $f2
/* 5350 8009A750 00000000 */  nop
/* 5354 8009A754 4602B03C */  c.lt.s     $f22, $f2
/* 5358 8009A758 00000000 */  nop
/* 535C 8009A75C 00000000 */  nop
/* 5360 8009A760 45000003 */  bc1f       .L8009A770
/* 5364 8009A764 46000086 */   mov.s     $f2, $f0
/* 5368 8009A768 080269E5 */  j          .L8009A794
/* 536C 8009A76C 2404FFFF */   addiu     $a0, $zero, -0x1
.L8009A770:
/* 5370 8009A770 4600100D */  trunc.w.s  $f0, $f2
/* 5374 8009A774 44040000 */  mfc1       $a0, $f0
/* 5378 8009A778 00000000 */  nop
/* 537C 8009A77C 00042400 */  sll        $a0, $a0, 16
/* 5380 8009A780 00102C00 */  sll        $a1, $s0, 16
/* 5384 8009A784 00042403 */  sra        $a0, $a0, 16
/* 5388 8009A788 0C025B5C */  jal        func_80096D70
/* 538C 8009A78C 00052C03 */   sra       $a1, $a1, 16
/* 5390 8009A790 00402021 */  addu       $a0, $v0, $zero
.L8009A794:
/* 5394 8009A794 3C03800D */  lui        $v1, %hi(D_800D3A60)
/* 5398 8009A798 84633A60 */  lh         $v1, %lo(D_800D3A60)($v1)
/* 539C 8009A79C 00041400 */  sll        $v0, $a0, 16
/* 53A0 8009A7A0 00021403 */  sra        $v0, $v0, 16
/* 53A4 8009A7A4 10620002 */  beq        $v1, $v0, .L8009A7B0
/* 53A8 8009A7A8 2405FFFF */   addiu     $a1, $zero, -0x1
/* 53AC 8009A7AC 00802821 */  addu       $a1, $a0, $zero
.L8009A7B0:
/* 53B0 8009A7B0 3C01800D */  lui        $at, %hi(D_800D3A60)
/* 53B4 8009A7B4 A4243A60 */  sh         $a0, %lo(D_800D3A60)($at)
/* 53B8 8009A7B8 00051400 */  sll        $v0, $a1, 16
/* 53BC 8009A7BC 00021403 */  sra        $v0, $v0, 16
/* 53C0 8009A7C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53C4 8009A7C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 53C8 8009A7C8 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 53CC 8009A7CC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 53D0 8009A7D0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 53D4 8009A7D4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 53D8 8009A7D8 03E00008 */  jr         $ra
/* 53DC 8009A7DC 00000000 */   nop
.size func_8009A6A0, . - func_8009A6A0