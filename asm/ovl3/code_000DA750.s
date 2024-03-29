.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.18.0 */

glabel func_80031240_ovl3
/* DA750 80031240 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* DA754 80031244 AFB10024 */  sw         $s1, 0x24($sp)
/* DA758 80031248 00808821 */  addu       $s1, $a0, $zero
/* DA75C 8003124C AFB00020 */  sw         $s0, 0x20($sp)
/* DA760 80031250 00A08021 */  addu       $s0, $a1, $zero
/* DA764 80031254 24040198 */  addiu      $a0, $zero, 0x198
/* DA768 80031258 AFBF0038 */  sw         $ra, 0x38($sp)
/* DA76C 8003125C AFB50034 */  sw         $s5, 0x34($sp)
/* DA770 80031260 AFB40030 */  sw         $s4, 0x30($sp)
/* DA774 80031264 AFB3002C */  sw         $s3, 0x2C($sp)
/* DA778 80031268 0C032663 */  jal        func_800C998C
/* DA77C 8003126C AFB20028 */   sw        $s2, 0x28($sp)
/* DA780 80031270 00409821 */  addu       $s3, $v0, $zero
/* DA784 80031274 02602021 */  addu       $a0, $s3, $zero
/* DA788 80031278 0C030134 */  jal        bzero
/* DA78C 8003127C 24050198 */   addiu     $a1, $zero, 0x198
/* DA790 80031280 AE710000 */  sw         $s1, 0x0($s3)
/* DA794 80031284 8E720000 */  lw         $s2, 0x0($s3)
/* DA798 80031288 0000A021 */  addu       $s4, $zero, $zero
/* DA79C 8003128C 02001021 */  addu       $v0, $s0, $zero
/* DA7A0 80031290 00108400 */  sll        $s0, $s0, 16
/* DA7A4 80031294 1A000055 */  blez       $s0, .L800313EC_ovl3
/* DA7A8 80031298 A6620194 */   sh        $v0, 0x194($s3)
/* DA7AC 8003129C 26500014 */  addiu      $s0, $s2, 0x14
/* DA7B0 800312A0 0260A821 */  addu       $s5, $s3, $zero
.L800312A4_ovl3:
/* DA7B4 800312A4 9207FFEE */  lbu        $a3, -0x12($s0)
/* DA7B8 800312A8 24020007 */  addiu      $v0, $zero, 0x7
/* DA7BC 800312AC 14E20017 */  bne        $a3, $v0, .L8003130C_ovl3
/* DA7C0 800312B0 00000000 */   nop
/* DA7C4 800312B4 0C029375 */  jal        func_800A4DD4
/* DA7C8 800312B8 00000000 */   nop
/* DA7CC 800312BC 00408821 */  addu       $s1, $v0, $zero
/* DA7D0 800312C0 00402021 */  addu       $a0, $v0, $zero
/* DA7D4 800312C4 C600FFFC */  lwc1       $f0, -0x4($s0)
/* DA7D8 800312C8 8605FFF6 */  lh         $a1, -0xA($s0)
/* DA7DC 800312CC 8606FFF8 */  lh         $a2, -0x8($s0)
/* DA7E0 800312D0 4600008D */  trunc.w.s  $f2, $f0
/* DA7E4 800312D4 44071000 */  mfc1       $a3, $f2
/* DA7E8 800312D8 C6000000 */  lwc1       $f0, 0x0($s0)
/* DA7EC 800312DC 00073C00 */  sll        $a3, $a3, 16
/* DA7F0 800312E0 00073C03 */  sra        $a3, $a3, 16
/* DA7F4 800312E4 4600008D */  trunc.w.s  $f2, $f0
/* DA7F8 800312E8 44021000 */  mfc1       $v0, $f2
/* DA7FC 800312EC 00000000 */  nop
/* DA800 800312F0 00021400 */  sll        $v0, $v0, 16
/* DA804 800312F4 00021403 */  sra        $v0, $v0, 16
/* DA808 800312F8 0C02939C */  jal        func_800A4E70
/* DA80C 800312FC AFA20010 */   sw        $v0, 0x10($sp)
/* DA810 80031300 9602FFF4 */  lhu        $v0, -0xC($s0)
/* DA814 80031304 0800C4F3 */  j          .L800313CC_ovl3
/* DA818 80031308 A622001E */   sh        $v0, 0x1E($s1)
.L8003130C_ovl3:
/* DA81C 8003130C 9202FFEF */  lbu        $v0, -0x11($s0)
/* DA820 80031310 1040000A */  beqz       $v0, .L8003133C_ovl3
/* DA824 80031314 00000000 */   nop
/* DA828 80031318 0C029464 */  jal        func_800A5190
/* DA82C 8003131C 96440000 */   lhu       $a0, 0x0($s2)
/* DA830 80031320 96440000 */  lhu        $a0, 0x0($s2)
/* DA834 80031324 9206FFEE */  lbu        $a2, -0x12($s0)
/* DA838 80031328 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* DA83C 8003132C 0C0293A3 */  jal        func_800A4E8C
/* DA840 80031330 00003821 */   addu      $a3, $zero, $zero
/* DA844 80031334 0800C4DC */  j          .L80031370_ovl3
/* DA848 80031338 00408821 */   addu      $s1, $v0, $zero
.L8003133C_ovl3:
/* DA84C 8003133C 9205FFF0 */  lbu        $a1, -0x10($s0)
/* DA850 80031340 50A00007 */  beql       $a1, $zero, .L80031360_ovl3
/* DA854 80031344 00E02821 */   addu      $a1, $a3, $zero
/* DA858 80031348 96440000 */  lhu        $a0, 0x0($s2)
/* DA85C 8003134C 9206FFF1 */  lbu        $a2, -0xF($s0)
/* DA860 80031350 0C029476 */  jal        func_800A51D8
/* DA864 80031354 AFA00010 */   sw        $zero, 0x10($sp)
/* DA868 80031358 0800C4DC */  j          .L80031370_ovl3
/* DA86C 8003135C 00408821 */   addu      $s1, $v0, $zero
.L80031360_ovl3:
/* DA870 80031360 96440000 */  lhu        $a0, 0x0($s2)
/* DA874 80031364 0C028CB7 */  jal        func_800A32DC
/* DA878 80031368 00003021 */   addu      $a2, $zero, $zero
/* DA87C 8003136C 00408821 */  addu       $s1, $v0, $zero
.L80031370_ovl3:
/* DA880 80031370 9602FFF4 */  lhu        $v0, -0xC($s0)
/* DA884 80031374 A622001E */  sh         $v0, 0x1E($s1)
/* DA888 80031378 9203FFF2 */  lbu        $v1, -0xE($s0)
/* DA88C 8003137C 240200FF */  addiu      $v0, $zero, 0xFF
/* DA890 80031380 10620006 */  beq        $v1, $v0, .L8003139C_ovl3
/* DA894 80031384 240500FF */   addiu     $a1, $zero, 0xFF
/* DA898 80031388 AFA30010 */  sw         $v1, 0x10($sp)
/* DA89C 8003138C 02202021 */  addu       $a0, $s1, $zero
/* DA8A0 80031390 240600FF */  addiu      $a2, $zero, 0xFF
/* DA8A4 80031394 0C028E41 */  jal        func_800A3904
/* DA8A8 80031398 240700FF */   addiu     $a3, $zero, 0xFF
.L8003139C_ovl3:
/* DA8AC 8003139C 9605FFF6 */  lhu        $a1, -0xA($s0)
/* DA8B0 800313A0 02202021 */  addu       $a0, $s1, $zero
/* DA8B4 800313A4 9606FFF8 */  lhu        $a2, -0x8($s0)
/* DA8B8 800313A8 00052C80 */  sll        $a1, $a1, 18
/* DA8BC 800313AC 00052C03 */  sra        $a1, $a1, 16
/* DA8C0 800313B0 00063480 */  sll        $a2, $a2, 18
/* DA8C4 800313B4 0C028D89 */  jal        func_800A3624
/* DA8C8 800313B8 00063403 */   sra       $a2, $a2, 16
/* DA8CC 800313BC 8E05FFFC */  lw         $a1, -0x4($s0)
/* DA8D0 800313C0 8E060000 */  lw         $a2, 0x0($s0)
/* DA8D4 800313C4 0C028DA2 */  jal        func_800A3688
/* DA8D8 800313C8 02202021 */   addu      $a0, $s1, $zero
.L800313CC_ovl3:
/* DA8DC 800313CC AEB10004 */  sw         $s1, 0x4($s5)
/* DA8E0 800313D0 26B50004 */  addiu      $s5, $s5, 0x4
/* DA8E4 800313D4 26940001 */  addiu      $s4, $s4, 0x1
/* DA8E8 800313D8 86620194 */  lh         $v0, 0x194($s3)
/* DA8EC 800313DC 26100018 */  addiu      $s0, $s0, 0x18
/* DA8F0 800313E0 0282102A */  slt        $v0, $s4, $v0
/* DA8F4 800313E4 1440FFAF */  bnez       $v0, .L800312A4_ovl3
/* DA8F8 800313E8 26520018 */   addiu     $s2, $s2, 0x18
.L800313EC_ovl3:
/* DA8FC 800313EC 02601021 */  addu       $v0, $s3, $zero
/* DA900 800313F0 8FBF0038 */  lw         $ra, 0x38($sp)
/* DA904 800313F4 8FB50034 */  lw         $s5, 0x34($sp)
/* DA908 800313F8 8FB40030 */  lw         $s4, 0x30($sp)
/* DA90C 800313FC 8FB3002C */  lw         $s3, 0x2C($sp)
/* DA910 80031400 8FB20028 */  lw         $s2, 0x28($sp)
/* DA914 80031404 8FB10024 */  lw         $s1, 0x24($sp)
/* DA918 80031408 8FB00020 */  lw         $s0, 0x20($sp)
/* DA91C 8003140C 03E00008 */  jr         $ra
/* DA920 80031410 27BD0040 */   addiu     $sp, $sp, 0x40
.size func_80031240_ovl3, . - func_80031240_ovl3

glabel func_80031414_ovl3
/* DA924 80031414 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DA928 80031418 AFB20020 */  sw         $s2, 0x20($sp)
/* DA92C 8003141C 00809021 */  addu       $s2, $a0, $zero
/* DA930 80031420 AFBF0024 */  sw         $ra, 0x24($sp)
/* DA934 80031424 AFB1001C */  sw         $s1, 0x1C($sp)
/* DA938 80031428 AFB00018 */  sw         $s0, 0x18($sp)
/* DA93C 8003142C 86420194 */  lh         $v0, 0x194($s2)
/* DA940 80031430 1840000A */  blez       $v0, .L8003145C_ovl3
/* DA944 80031434 00008021 */   addu      $s0, $zero, $zero
/* DA948 80031438 02408821 */  addu       $s1, $s2, $zero
.L8003143C_ovl3:
/* DA94C 8003143C 8E240004 */  lw         $a0, 0x4($s1)
/* DA950 80031440 0C028D30 */  jal        func_800A34C0
/* DA954 80031444 26310004 */   addiu     $s1, $s1, 0x4
/* DA958 80031448 86420194 */  lh         $v0, 0x194($s2)
/* DA95C 8003144C 26100001 */  addiu      $s0, $s0, 0x1
/* DA960 80031450 0202102A */  slt        $v0, $s0, $v0
/* DA964 80031454 1440FFF9 */  bnez       $v0, .L8003143C_ovl3
/* DA968 80031458 00000000 */   nop
.L8003145C_ovl3:
/* DA96C 8003145C 0C0326A1 */  jal        func_800C9A84
/* DA970 80031460 02402021 */   addu      $a0, $s2, $zero
/* DA974 80031464 8FBF0024 */  lw         $ra, 0x24($sp)
/* DA978 80031468 8FB20020 */  lw         $s2, 0x20($sp)
/* DA97C 8003146C 8FB1001C */  lw         $s1, 0x1C($sp)
/* DA980 80031470 8FB00018 */  lw         $s0, 0x18($sp)
/* DA984 80031474 03E00008 */  jr         $ra
/* DA988 80031478 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80031414_ovl3, . - func_80031414_ovl3

glabel func_8003147C_ovl3
/* DA98C 8003147C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DA990 80031480 AFB20020 */  sw         $s2, 0x20($sp)
/* DA994 80031484 00809021 */  addu       $s2, $a0, $zero
/* DA998 80031488 AFBF0024 */  sw         $ra, 0x24($sp)
/* DA99C 8003148C AFB1001C */  sw         $s1, 0x1C($sp)
/* DA9A0 80031490 AFB00018 */  sw         $s0, 0x18($sp)
/* DA9A4 80031494 86420194 */  lh         $v0, 0x194($s2)
/* DA9A8 80031498 1840000A */  blez       $v0, .L800314C4_ovl3
/* DA9AC 8003149C 00008021 */   addu      $s0, $zero, $zero
/* DA9B0 800314A0 02408821 */  addu       $s1, $s2, $zero
.L800314A4_ovl3:
/* DA9B4 800314A4 8E240004 */  lw         $a0, 0x4($s1)
/* DA9B8 800314A8 0C028A40 */  jal        func_800A2900
/* DA9BC 800314AC 26310004 */   addiu     $s1, $s1, 0x4
/* DA9C0 800314B0 86420194 */  lh         $v0, 0x194($s2)
/* DA9C4 800314B4 26100001 */  addiu      $s0, $s0, 0x1
/* DA9C8 800314B8 0202102A */  slt        $v0, $s0, $v0
/* DA9CC 800314BC 1440FFF9 */  bnez       $v0, .L800314A4_ovl3
/* DA9D0 800314C0 00000000 */   nop
.L800314C4_ovl3:
/* DA9D4 800314C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* DA9D8 800314C8 8FB20020 */  lw         $s2, 0x20($sp)
/* DA9DC 800314CC 8FB1001C */  lw         $s1, 0x1C($sp)
/* DA9E0 800314D0 8FB00018 */  lw         $s0, 0x18($sp)
/* DA9E4 800314D4 03E00008 */  jr         $ra
/* DA9E8 800314D8 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_8003147C_ovl3, . - func_8003147C_ovl3

glabel func_800314DC_ovl3
/* DA9EC 800314DC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DA9F0 800314E0 AFB1002C */  sw         $s1, 0x2C($sp)
/* DA9F4 800314E4 00808821 */  addu       $s1, $a0, $zero
/* DA9F8 800314E8 AFB00028 */  sw         $s0, 0x28($sp)
/* DA9FC 800314EC 00A08021 */  addu       $s0, $a1, $zero
/* DAA00 800314F0 24040470 */  addiu      $a0, $zero, 0x470
/* DAA04 800314F4 AFBF0044 */  sw         $ra, 0x44($sp)
/* DAA08 800314F8 AFB60040 */  sw         $s6, 0x40($sp)
/* DAA0C 800314FC AFB5003C */  sw         $s5, 0x3C($sp)
/* DAA10 80031500 AFB40038 */  sw         $s4, 0x38($sp)
/* DAA14 80031504 AFB30034 */  sw         $s3, 0x34($sp)
/* DAA18 80031508 0C032663 */  jal        func_800C998C
/* DAA1C 8003150C AFB20030 */   sw        $s2, 0x30($sp)
/* DAA20 80031510 0040A021 */  addu       $s4, $v0, $zero
/* DAA24 80031514 02802021 */  addu       $a0, $s4, $zero
/* DAA28 80031518 0C030134 */  jal        bzero
/* DAA2C 8003151C 24050470 */   addiu     $a1, $zero, 0x470
/* DAA30 80031520 AE910000 */  sw         $s1, 0x0($s4)
/* DAA34 80031524 8E930000 */  lw         $s3, 0x0($s4)
/* DAA38 80031528 0000A821 */  addu       $s5, $zero, $zero
/* DAA3C 8003152C 02001021 */  addu       $v0, $s0, $zero
/* DAA40 80031530 00108400 */  sll        $s0, $s0, 16
/* DAA44 80031534 1A000046 */  blez       $s0, .L80031650_ovl3
/* DAA48 80031538 A6820468 */   sh        $v0, 0x468($s4)
/* DAA4C 8003153C 26710014 */  addiu      $s1, $s3, 0x14
/* DAA50 80031540 24160008 */  addiu      $s6, $zero, 0x8
.L80031544_ovl3:
/* DAA54 80031544 86640000 */  lh         $a0, 0x0($s3)
/* DAA58 80031548 00002821 */  addu       $a1, $zero, $zero
/* DAA5C 8003154C 0C027DAC */  jal        func_8009F6B0
/* DAA60 80031550 00003021 */   addu      $a2, $zero, $zero
/* DAA64 80031554 9623FFEE */  lhu        $v1, -0x12($s1)
/* DAA68 80031558 00409021 */  addu       $s2, $v0, $zero
/* DAA6C 8003155C AFA00018 */  sw         $zero, 0x18($sp)
/* DAA70 80031560 AFA0001C */  sw         $zero, 0x1C($sp)
/* DAA74 80031564 A2430066 */  sb         $v1, 0x66($s2)
/* DAA78 80031568 9628FFF0 */  lhu        $t0, -0x10($s1)
/* DAA7C 8003156C 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* DAA80 80031570 3103FFFF */  andi       $v1, $t0, 0xFFFF
/* DAA84 80031574 1062000A */  beq        $v1, $v0, .L800315A0_ovl3
/* DAA88 80031578 02968021 */   addu      $s0, $s4, $s6
/* DAA8C 8003157C 27A40018 */  addiu      $a0, $sp, 0x18
/* DAA90 80031580 27A5001C */  addiu      $a1, $sp, 0x1C
/* DAA94 80031584 02403021 */  addu       $a2, $s2, $zero
/* DAA98 80031588 86670000 */  lh         $a3, 0x0($s3)
/* DAA9C 8003158C 00081400 */  sll        $v0, $t0, 16
/* DAAA0 80031590 00021403 */  sra        $v0, $v0, 16
/* DAAA4 80031594 AFA20010 */  sw         $v0, 0x10($sp)
/* DAAA8 80031598 0C027D66 */  jal        func_8009F598
/* DAAAC 8003159C AFA00014 */   sw        $zero, 0x14($sp)
.L800315A0_ovl3:
/* DAAB0 800315A0 8FA20018 */  lw         $v0, 0x18($sp)
/* DAAB4 800315A4 8FA3001C */  lw         $v1, 0x1C($sp)
/* DAAB8 800315A8 AE120000 */  sw         $s2, 0x0($s0)
/* DAABC 800315AC AE020004 */  sw         $v0, 0x4($s0)
/* DAAC0 800315B0 AE030008 */  sw         $v1, 0x8($s0)
/* DAAC4 800315B4 8622FFF2 */  lh         $v0, -0xE($s1)
/* DAAC8 800315B8 44820000 */  mtc1       $v0, $f0
/* DAACC 800315BC 00000000 */  nop
/* DAAD0 800315C0 46800020 */  cvt.s.w    $f0, $f0
/* DAAD4 800315C4 E6000050 */  swc1       $f0, 0x50($s0)
/* DAAD8 800315C8 8622FFF4 */  lh         $v0, -0xC($s1)
/* DAADC 800315CC 44820000 */  mtc1       $v0, $f0
/* DAAE0 800315D0 00000000 */  nop
/* DAAE4 800315D4 46800020 */  cvt.s.w    $f0, $f0
/* DAAE8 800315D8 E6000054 */  swc1       $f0, 0x54($s0)
/* DAAEC 800315DC 8622FFF6 */  lh         $v0, -0xA($s1)
/* DAAF0 800315E0 44820000 */  mtc1       $v0, $f0
/* DAAF4 800315E4 00000000 */  nop
/* DAAF8 800315E8 46800020 */  cvt.s.w    $f0, $f0
/* DAAFC 800315EC E6000058 */  swc1       $f0, 0x58($s0)
/* DAB00 800315F0 8622FFF8 */  lh         $v0, -0x8($s1)
/* DAB04 800315F4 44820000 */  mtc1       $v0, $f0
/* DAB08 800315F8 00000000 */  nop
/* DAB0C 800315FC 46800020 */  cvt.s.w    $f0, $f0
/* DAB10 80031600 E600005C */  swc1       $f0, 0x5C($s0)
/* DAB14 80031604 8622FFFA */  lh         $v0, -0x6($s1)
/* DAB18 80031608 44820000 */  mtc1       $v0, $f0
/* DAB1C 8003160C 00000000 */  nop
/* DAB20 80031610 46800020 */  cvt.s.w    $f0, $f0
/* DAB24 80031614 E6000060 */  swc1       $f0, 0x60($s0)
/* DAB28 80031618 8622FFFC */  lh         $v0, -0x4($s1)
/* DAB2C 8003161C 44820000 */  mtc1       $v0, $f0
/* DAB30 80031620 00000000 */  nop
/* DAB34 80031624 46800020 */  cvt.s.w    $f0, $f0
/* DAB38 80031628 E6000064 */  swc1       $f0, 0x64($s0)
/* DAB3C 8003162C C6200000 */  lwc1       $f0, 0x0($s1)
/* DAB40 80031630 26D60070 */  addiu      $s6, $s6, 0x70
/* DAB44 80031634 26B50001 */  addiu      $s5, $s5, 0x1
/* DAB48 80031638 E6000068 */  swc1       $f0, 0x68($s0)
/* DAB4C 8003163C 86820468 */  lh         $v0, 0x468($s4)
/* DAB50 80031640 26730018 */  addiu      $s3, $s3, 0x18
/* DAB54 80031644 02A2102A */  slt        $v0, $s5, $v0
/* DAB58 80031648 1440FFBE */  bnez       $v0, .L80031544_ovl3
/* DAB5C 8003164C 26310018 */   addiu     $s1, $s1, 0x18
.L80031650_ovl3:
/* DAB60 80031650 02801021 */  addu       $v0, $s4, $zero
/* DAB64 80031654 8FBF0044 */  lw         $ra, 0x44($sp)
/* DAB68 80031658 8FB60040 */  lw         $s6, 0x40($sp)
/* DAB6C 8003165C 8FB5003C */  lw         $s5, 0x3C($sp)
/* DAB70 80031660 8FB40038 */  lw         $s4, 0x38($sp)
/* DAB74 80031664 8FB30034 */  lw         $s3, 0x34($sp)
/* DAB78 80031668 8FB20030 */  lw         $s2, 0x30($sp)
/* DAB7C 8003166C 8FB1002C */  lw         $s1, 0x2C($sp)
/* DAB80 80031670 8FB00028 */  lw         $s0, 0x28($sp)
/* DAB84 80031674 03E00008 */  jr         $ra
/* DAB88 80031678 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_800314DC_ovl3, . - func_800314DC_ovl3

glabel func_8003167C_ovl3
/* DAB8C 8003167C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DAB90 80031680 AFB30024 */  sw         $s3, 0x24($sp)
/* DAB94 80031684 00809821 */  addu       $s3, $a0, $zero
/* DAB98 80031688 AFBF0028 */  sw         $ra, 0x28($sp)
/* DAB9C 8003168C AFB20020 */  sw         $s2, 0x20($sp)
/* DABA0 80031690 AFB1001C */  sw         $s1, 0x1C($sp)
/* DABA4 80031694 AFB00018 */  sw         $s0, 0x18($sp)
/* DABA8 80031698 86620468 */  lh         $v0, 0x468($s3)
/* DABAC 8003169C 18400010 */  blez       $v0, .L800316E0_ovl3
/* DABB0 800316A0 00008821 */   addu      $s1, $zero, $zero
/* DABB4 800316A4 24120008 */  addiu      $s2, $zero, 0x8
/* DABB8 800316A8 02728021 */  addu       $s0, $s3, $s2
.L800316AC_ovl3:
/* DABBC 800316AC 8E040000 */  lw         $a0, 0x0($s0)
/* DABC0 800316B0 0C027E98 */  jal        func_8009FA60
/* DABC4 800316B4 26520070 */   addiu     $s2, $s2, 0x70
/* DABC8 800316B8 8E040004 */  lw         $a0, 0x4($s0)
/* DABCC 800316BC 0C027880 */  jal        func_8009E200
/* DABD0 800316C0 26310001 */   addiu     $s1, $s1, 0x1
/* DABD4 800316C4 8E040008 */  lw         $a0, 0x8($s0)
/* DABD8 800316C8 0C027BB8 */  jal        func_8009EEE0
/* DABDC 800316CC 00000000 */   nop
/* DABE0 800316D0 86620468 */  lh         $v0, 0x468($s3)
/* DABE4 800316D4 0222102A */  slt        $v0, $s1, $v0
/* DABE8 800316D8 1440FFF4 */  bnez       $v0, .L800316AC_ovl3
/* DABEC 800316DC 02728021 */   addu      $s0, $s3, $s2
.L800316E0_ovl3:
/* DABF0 800316E0 0C0326A1 */  jal        func_800C9A84
/* DABF4 800316E4 02602021 */   addu      $a0, $s3, $zero
/* DABF8 800316E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* DABFC 800316EC 8FB30024 */  lw         $s3, 0x24($sp)
/* DAC00 800316F0 8FB20020 */  lw         $s2, 0x20($sp)
/* DAC04 800316F4 8FB1001C */  lw         $s1, 0x1C($sp)
/* DAC08 800316F8 8FB00018 */  lw         $s0, 0x18($sp)
/* DAC0C 800316FC 03E00008 */  jr         $ra
/* DAC10 80031700 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_8003167C_ovl3, . - func_8003167C_ovl3

glabel func_80031704_ovl3
/* DAC14 80031704 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DAC18 80031708 AFB40038 */  sw         $s4, 0x38($sp)
/* DAC1C 8003170C 0080A021 */  addu       $s4, $a0, $zero
/* DAC20 80031710 AFBF0040 */  sw         $ra, 0x40($sp)
/* DAC24 80031714 AFB5003C */  sw         $s5, 0x3C($sp)
/* DAC28 80031718 AFB30034 */  sw         $s3, 0x34($sp)
/* DAC2C 8003171C AFB20030 */  sw         $s2, 0x30($sp)
/* DAC30 80031720 AFB1002C */  sw         $s1, 0x2C($sp)
/* DAC34 80031724 AFB00028 */  sw         $s0, 0x28($sp)
/* DAC38 80031728 86820468 */  lh         $v0, 0x468($s4)
/* DAC3C 8003172C 1840002A */  blez       $v0, .L800317D8_ovl3
/* DAC40 80031730 00009021 */   addu      $s2, $zero, $zero
/* DAC44 80031734 3C15DA38 */  lui        $s5, (0xDA380003 >> 16)
/* DAC48 80031738 36B50003 */  ori        $s5, $s5, (0xDA380003 & 0xFFFF)
/* DAC4C 8003173C 24130008 */  addiu      $s3, $zero, 0x8
/* DAC50 80031740 02938021 */  addu       $s0, $s4, $s3
.L80031744_ovl3:
/* DAC54 80031744 C6000068 */  lwc1       $f0, 0x68($s0)
/* DAC58 80031748 E7A00010 */  swc1       $f0, 0x10($sp)
/* DAC5C 8003174C C6000050 */  lwc1       $f0, 0x50($s0)
/* DAC60 80031750 E7A00014 */  swc1       $f0, 0x14($sp)
/* DAC64 80031754 C6000054 */  lwc1       $f0, 0x54($s0)
/* DAC68 80031758 E7A00018 */  swc1       $f0, 0x18($sp)
/* DAC6C 8003175C C6000058 */  lwc1       $f0, 0x58($s0)
/* DAC70 80031760 E7A0001C */  swc1       $f0, 0x1C($sp)
/* DAC74 80031764 8E05005C */  lw         $a1, 0x5C($s0)
/* DAC78 80031768 8E060060 */  lw         $a2, 0x60($s0)
/* DAC7C 8003176C 8E070064 */  lw         $a3, 0x64($s0)
/* DAC80 80031770 26110010 */  addiu      $s1, $s0, 0x10
/* DAC84 80031774 0C02FD0E */  jal        guPosition
/* DAC88 80031778 02202021 */   addu      $a0, $s1, $zero
/* DAC8C 8003177C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* DAC90 80031780 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* DAC94 80031784 AC550000 */  sw         $s5, 0x0($v0)
/* DAC98 80031788 AC510004 */  sw         $s1, 0x4($v0)
/* DAC9C 8003178C 8E040000 */  lw         $a0, 0x0($s0)
/* DACA0 80031790 24420008 */  addiu      $v0, $v0, 0x8
/* DACA4 80031794 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* DACA8 80031798 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* DACAC 8003179C 0C027F67 */  jal        func_8009FD9C
/* DACB0 800317A0 02202821 */   addu      $a1, $s1, $zero
/* DACB4 800317A4 8E040004 */  lw         $a0, 0x4($s0)
/* DACB8 800317A8 0C027A93 */  jal        func_8009EA4C
/* DACBC 800317AC 26730070 */   addiu     $s3, $s3, 0x70
/* DACC0 800317B0 8E040008 */  lw         $a0, 0x8($s0)
/* DACC4 800317B4 0C027CED */  jal        func_8009F3B4
/* DACC8 800317B8 26520001 */   addiu     $s2, $s2, 0x1
/* DACCC 800317BC 8E040000 */  lw         $a0, 0x0($s0)
/* DACD0 800317C0 0C027F77 */  jal        func_8009FDDC
/* DACD4 800317C4 8E050004 */   lw        $a1, 0x4($s0)
/* DACD8 800317C8 86820468 */  lh         $v0, 0x468($s4)
/* DACDC 800317CC 0242102A */  slt        $v0, $s2, $v0
/* DACE0 800317D0 1440FFDC */  bnez       $v0, .L80031744_ovl3
/* DACE4 800317D4 02938021 */   addu      $s0, $s4, $s3
.L800317D8_ovl3:
/* DACE8 800317D8 8FBF0040 */  lw         $ra, 0x40($sp)
/* DACEC 800317DC 8FB5003C */  lw         $s5, 0x3C($sp)
/* DACF0 800317E0 8FB40038 */  lw         $s4, 0x38($sp)
/* DACF4 800317E4 8FB30034 */  lw         $s3, 0x34($sp)
/* DACF8 800317E8 8FB20030 */  lw         $s2, 0x30($sp)
/* DACFC 800317EC 8FB1002C */  lw         $s1, 0x2C($sp)
/* DAD00 800317F0 8FB00028 */  lw         $s0, 0x28($sp)
/* DAD04 800317F4 03E00008 */  jr         $ra
/* DAD08 800317F8 27BD0048 */   addiu     $sp, $sp, 0x48
/* DAD0C 800317FC 00000000 */  nop
.size func_80031704_ovl3, . - func_80031704_ovl3
