glabel guMtxCatF
/* 292A0 800BE6A0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 292A4 800BE6A4 00007021 */  addu       $t6, $zero, $zero
/* 292A8 800BE6A8 03A07821 */  addu       $t7, $sp, $zero
.L800BE6AC:
/* 292AC 800BE6AC 00004821 */  addu       $t1, $zero, $zero
/* 292B0 800BE6B0 0080C021 */  addu       $t8, $a0, $zero
/* 292B4 800BE6B4 01E05821 */  addu       $t3, $t7, $zero
/* 292B8 800BE6B8 00006021 */  addu       $t4, $zero, $zero
.L800BE6BC:
/* 292BC 800BE6BC AD600000 */  sw         $zero, 0x0($t3)
/* 292C0 800BE6C0 00004021 */  addu       $t0, $zero, $zero
/* 292C4 800BE6C4 01806821 */  addu       $t5, $t4, $zero
/* 292C8 800BE6C8 01605021 */  addu       $t2, $t3, $zero
/* 292CC 800BE6CC 03003821 */  addu       $a3, $t8, $zero
/* 292D0 800BE6D0 00A01821 */  addu       $v1, $a1, $zero
.L800BE6D4:
/* 292D4 800BE6D4 01A31021 */  addu       $v0, $t5, $v1
/* 292D8 800BE6D8 C4E20000 */  lwc1       $f2, 0x0($a3)
/* 292DC 800BE6DC C4400000 */  lwc1       $f0, 0x0($v0)
/* 292E0 800BE6E0 46001082 */  mul.s      $f2, $f2, $f0
/* 292E4 800BE6E4 C5400000 */  lwc1       $f0, 0x0($t2)
/* 292E8 800BE6E8 24E70004 */  addiu      $a3, $a3, 0x4
/* 292EC 800BE6EC 46020000 */  add.s      $f0, $f0, $f2
/* 292F0 800BE6F0 24630010 */  addiu      $v1, $v1, 0x10
/* 292F4 800BE6F4 25080001 */  addiu      $t0, $t0, 0x1
/* 292F8 800BE6F8 29020004 */  slti       $v0, $t0, 0x4
/* 292FC 800BE6FC 1440FFF5 */  bnez       $v0, .L800BE6D4
/* 29300 800BE700 E5400000 */   swc1      $f0, 0x0($t2)
/* 29304 800BE704 256B0004 */  addiu      $t3, $t3, 0x4
/* 29308 800BE708 25290001 */  addiu      $t1, $t1, 0x1
/* 2930C 800BE70C 29220004 */  slti       $v0, $t1, 0x4
/* 29310 800BE710 1440FFEA */  bnez       $v0, .L800BE6BC
/* 29314 800BE714 258C0004 */   addiu     $t4, $t4, 0x4
/* 29318 800BE718 24840010 */  addiu      $a0, $a0, 0x10
/* 2931C 800BE71C 25CE0001 */  addiu      $t6, $t6, 0x1
/* 29320 800BE720 29C20004 */  slti       $v0, $t6, 0x4
/* 29324 800BE724 1440FFE1 */  bnez       $v0, .L800BE6AC
/* 29328 800BE728 25EF0010 */   addiu     $t7, $t7, 0x10
/* 2932C 800BE72C 00007021 */  addu       $t6, $zero, $zero
/* 29330 800BE730 03A02821 */  addu       $a1, $sp, $zero
.L800BE734:
/* 29334 800BE734 00004821 */  addu       $t1, $zero, $zero
/* 29338 800BE738 00C02021 */  addu       $a0, $a2, $zero
/* 2933C 800BE73C 00A01821 */  addu       $v1, $a1, $zero
.L800BE740:
/* 29340 800BE740 C4600000 */  lwc1       $f0, 0x0($v1)
/* 29344 800BE744 24630004 */  addiu      $v1, $v1, 0x4
/* 29348 800BE748 25290001 */  addiu      $t1, $t1, 0x1
/* 2934C 800BE74C 29220004 */  slti       $v0, $t1, 0x4
/* 29350 800BE750 E4800000 */  swc1       $f0, 0x0($a0)
/* 29354 800BE754 1440FFFA */  bnez       $v0, .L800BE740
/* 29358 800BE758 24840004 */   addiu     $a0, $a0, 0x4
/* 2935C 800BE75C 24A50010 */  addiu      $a1, $a1, 0x10
/* 29360 800BE760 25CE0001 */  addiu      $t6, $t6, 0x1
/* 29364 800BE764 29C20004 */  slti       $v0, $t6, 0x4
/* 29368 800BE768 1440FFF2 */  bnez       $v0, .L800BE734
/* 2936C 800BE76C 24C60010 */   addiu     $a2, $a2, 0x10
/* 29370 800BE770 27BD0040 */  addiu      $sp, $sp, 0x40
/* 29374 800BE774 03E00008 */  jr         $ra
/* 29378 800BE778 00000000 */   nop
.size guMtxCatF, . - guMtxCatF
