glabel func_800BC3A8
/* 26FA8 800BC3A8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 26FAC 800BC3AC AFB40028 */  sw         $s4, 0x28($sp)
/* 26FB0 800BC3B0 0080A021 */  addu       $s4, $a0, $zero
/* 26FB4 800BC3B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 26FB8 800BC3B8 00A09021 */  addu       $s2, $a1, $zero
/* 26FBC 800BC3BC AFB60030 */  sw         $s6, 0x30($sp)
/* 26FC0 800BC3C0 00C0B021 */  addu       $s6, $a2, $zero
/* 26FC4 800BC3C4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 26FC8 800BC3C8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 26FCC 800BC3CC AFB30024 */  sw         $s3, 0x24($sp)
/* 26FD0 800BC3D0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 26FD4 800BC3D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 26FD8 800BC3D8 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 26FDC 800BC3DC F7B40038 */  sdc1       $f20, 0x38($sp)
/* 26FE0 800BC3E0 8E420024 */  lw         $v0, 0x24($s2)
/* 26FE4 800BC3E4 8FB30058 */  lw         $s3, 0x58($sp)
/* 26FE8 800BC3E8 1040005E */  beqz       $v0, .L800BC564
/* 26FEC 800BC3EC 00E0A821 */   addu      $s5, $a3, $zero
/* 26FF0 800BC3F0 8E500004 */  lw         $s0, 0x4($s2)
/* 26FF4 800BC3F4 8E420000 */  lw         $v0, 0x0($s2)
/* 26FF8 800BC3F8 02402021 */  addu       $a0, $s2, $zero
/* 26FFC 800BC3FC 02A02821 */  addu       $a1, $s5, $zero
/* 27000 800BC400 0C02F24F */  jal        func_800BC93C
/* 27004 800BC404 02028023 */   subu      $s0, $s0, $v0
/* 27008 800BC408 44901000 */  mtc1       $s0, $f2
/* 2700C 800BC40C 00000000 */  nop
/* 27010 800BC410 468010A0 */  cvt.s.w    $f2, $f2
/* 27014 800BC414 46020003 */  div.s      $f0, $f0, $f2
/* 27018 800BC418 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 2701C 800BC41C 4481B000 */  mtc1       $at, $f22
/* 27020 800BC420 00000000 */  nop
/* 27024 800BC424 46160002 */  mul.s      $f0, $f0, $f22
/* 27028 800BC428 4600008D */  trunc.w.s  $f2, $f0
/* 2702C 800BC42C 44021000 */  mfc1       $v0, $f2
/* 27030 800BC430 00000000 */  nop
/* 27034 800BC434 44820000 */  mtc1       $v0, $f0
/* 27038 800BC438 00000000 */  nop
/* 2703C 800BC43C 46800020 */  cvt.s.w    $f0, $f0
/* 27040 800BC440 46160003 */  div.s      $f0, $f0, $f22
/* 27044 800BC444 3C018010 */  lui        $at, %hi(D_800FEE90)
/* 27048 800BC448 D434EE90 */  ldc1       $f20, %lo(D_800FEE90)($at)
/* 2704C 800BC44C 46000021 */  cvt.d.s    $f0, $f0
/* 27050 800BC450 4620A501 */  sub.d      $f20, $f20, $f0
/* 27054 800BC454 44951000 */  mtc1       $s5, $f2
/* 27058 800BC458 00000000 */  nop
/* 2705C 800BC45C 468010A0 */  cvt.s.w    $f2, $f2
/* 27060 800BC460 4620A520 */  cvt.s.d    $f20, $f20
/* 27064 800BC464 4602A082 */  mul.s      $f2, $f20, $f2
/* 27068 800BC468 8E420024 */  lw         $v0, 0x24($s2)
/* 2706C 800BC46C C4400020 */  lwc1       $f0, 0x20($v0)
/* 27070 800BC470 46020000 */  add.s      $f0, $f0, $f2
/* 27074 800BC474 4600008D */  trunc.w.s  $f2, $f0
/* 27078 800BC478 44111000 */  mfc1       $s1, $f2
/* 2707C 800BC47C 00000000 */  nop
/* 27080 800BC480 44911000 */  mtc1       $s1, $f2
/* 27084 800BC484 00000000 */  nop
/* 27088 800BC488 468010A0 */  cvt.s.w    $f2, $f2
/* 2708C 800BC48C 46020001 */  sub.s      $f0, $f0, $f2
/* 27090 800BC490 E4400020 */  swc1       $f0, 0x20($v0)
/* 27094 800BC494 8E420018 */  lw         $v0, 0x18($s2)
/* 27098 800BC498 8E430004 */  lw         $v1, 0x4($s2)
/* 2709C 800BC49C 8E850018 */  lw         $a1, 0x18($s4)
/* 270A0 800BC4A0 02802021 */  addu       $a0, $s4, $zero
/* 270A4 800BC4A4 24060280 */  addiu      $a2, $zero, 0x280
/* 270A8 800BC4A8 AFB30010 */  sw         $s3, 0x10($sp)
/* 270AC 800BC4AC 00431023 */  subu       $v0, $v0, $v1
/* 270B0 800BC4B0 00021040 */  sll        $v0, $v0, 1
/* 270B4 800BC4B4 00A22821 */  addu       $a1, $a1, $v0
/* 270B8 800BC4B8 30A70007 */  andi       $a3, $a1, 0x7
/* 270BC 800BC4BC 00073843 */  sra        $a3, $a3, 1
/* 270C0 800BC4C0 00078040 */  sll        $s0, $a3, 1
/* 270C4 800BC4C4 00B02823 */  subu       $a1, $a1, $s0
/* 270C8 800BC4C8 0C02F170 */  jal        func_800BC5C0
/* 270CC 800BC4CC 02273821 */   addu      $a3, $s1, $a3
/* 270D0 800BC4D0 00409821 */  addu       $s3, $v0, $zero
/* 270D4 800BC4D4 3C020800 */  lui        $v0, (0x8000280 >> 16)
/* 270D8 800BC4D8 34420280 */  ori        $v0, $v0, (0x8000280 & 0xFFFF)
/* 270DC 800BC4DC 02602021 */  addu       $a0, $s3, $zero
/* 270E0 800BC4E0 02028025 */  or         $s0, $s0, $v0
/* 270E4 800BC4E4 00161C00 */  sll        $v1, $s6, 16
/* 270E8 800BC4E8 00151040 */  sll        $v0, $s5, 1
/* 270EC 800BC4EC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 270F0 800BC4F0 00621825 */  or         $v1, $v1, $v0
/* 270F4 800BC4F4 AC900000 */  sw         $s0, 0x0($a0)
/* 270F8 800BC4F8 AC830004 */  sw         $v1, 0x4($a0)
/* 270FC 800BC4FC 8E420024 */  lw         $v0, 0x24($s2)
/* 27100 800BC500 4616A502 */  mul.s      $f20, $f20, $f22
/* 27104 800BC504 90440027 */  lbu        $a0, 0x27($v0)
/* 27108 800BC508 26730008 */  addiu      $s3, $s3, 0x8
/* 2710C 800BC50C 02608021 */  addu       $s0, $s3, $zero
/* 27110 800BC510 00042400 */  sll        $a0, $a0, 16
/* 27114 800BC514 4600A00D */  trunc.w.s  $f0, $f20
/* 27118 800BC518 44020000 */  mfc1       $v0, $f0
/* 2711C 800BC51C 00000000 */  nop
/* 27120 800BC520 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 27124 800BC524 3C030500 */  lui        $v1, (0x5000000 >> 16)
/* 27128 800BC528 00431025 */  or         $v0, $v0, $v1
/* 2712C 800BC52C 00822025 */  or         $a0, $a0, $v0
/* 27130 800BC530 AE040000 */  sw         $a0, 0x0($s0)
/* 27134 800BC534 8E420024 */  lw         $v0, 0x24($s2)
/* 27138 800BC538 8C440014 */  lw         $a0, 0x14($v0)
/* 2713C 800BC53C 0C02F680 */  jal        func_800BDA00
/* 27140 800BC540 26730008 */   addiu     $s3, $s3, 0x8
/* 27144 800BC544 AE020004 */  sw         $v0, 0x4($s0)
/* 27148 800BC548 8E420024 */  lw         $v0, 0x24($s2)
/* 2714C 800BC54C AC400024 */  sw         $zero, 0x24($v0)
/* 27150 800BC550 8E420018 */  lw         $v0, 0x18($s2)
/* 27154 800BC554 02358823 */  subu       $s1, $s1, $s5
/* 27158 800BC558 00511021 */  addu       $v0, $v0, $s1
/* 2715C 800BC55C 0802F163 */  j          .L800BC58C
/* 27160 800BC560 AE420018 */   sw        $v0, 0x18($s2)
.L800BC564:
/* 27164 800BC564 02802021 */  addu       $a0, $s4, $zero
/* 27168 800BC568 8E450004 */  lw         $a1, 0x4($s2)
/* 2716C 800BC56C 8C820018 */  lw         $v0, 0x18($a0)
/* 27170 800BC570 02C03021 */  addu       $a2, $s6, $zero
/* 27174 800BC574 02A03821 */  addu       $a3, $s5, $zero
/* 27178 800BC578 AFB30010 */  sw         $s3, 0x10($sp)
/* 2717C 800BC57C 00052840 */  sll        $a1, $a1, 1
/* 27180 800BC580 0C02F170 */  jal        func_800BC5C0
/* 27184 800BC584 00452823 */   subu      $a1, $v0, $a1
/* 27188 800BC588 00409821 */  addu       $s3, $v0, $zero
.L800BC58C:
/* 2718C 800BC58C 02601021 */  addu       $v0, $s3, $zero
/* 27190 800BC590 8FBF0034 */  lw         $ra, 0x34($sp)
/* 27194 800BC594 8FB60030 */  lw         $s6, 0x30($sp)
/* 27198 800BC598 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2719C 800BC59C 8FB40028 */  lw         $s4, 0x28($sp)
/* 271A0 800BC5A0 8FB30024 */  lw         $s3, 0x24($sp)
/* 271A4 800BC5A4 8FB20020 */  lw         $s2, 0x20($sp)
/* 271A8 800BC5A8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 271AC 800BC5AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 271B0 800BC5B0 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 271B4 800BC5B4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 271B8 800BC5B8 03E00008 */  jr         $ra
/* 271BC 800BC5BC 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_800BC3A8, . - func_800BC3A8
