.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003F620_131420
/* 131420 8003F620 3C028005 */  lui        $v0, %hi(D_80051F20)
/* 131424 8003F624 90421F20 */  lbu        $v0, %lo(D_80051F20)($v0)
/* 131428 8003F628 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13142C 8003F62C AFB00018 */  sw         $s0, 0x18($sp)
/* 131430 8003F630 00808021 */  addu       $s0, $a0, $zero
/* 131434 8003F634 1040003F */  beqz       $v0, .L8003F734
/* 131438 8003F638 AFBF001C */   sw        $ra, 0x1c($sp)
/* 13143C 8003F63C 0C02A5D2 */  jal        func_800A9748
/* 131440 8003F640 24040001 */   addiu     $a0, $zero, 1
/* 131444 8003F644 0C02725C */  jal        func_8009C970
/* 131448 8003F648 00000000 */   nop
/* 13144C 8003F64C 3C0141F0 */  lui        $at, 0x41f0
/* 131450 8003F650 44810000 */  mtc1       $at, $f0
/* 131454 8003F654 3C014302 */  lui        $at, 0x4302
/* 131458 8003F658 44811000 */  mtc1       $at, $f2
/* 13145C 8003F65C 3C01C2E8 */  lui        $at, 0xc2e8
/* 131460 8003F660 44812000 */  mtc1       $at, $f4
/* 131464 8003F664 24040053 */  addiu      $a0, $zero, 0x53
/* 131468 8003F668 24050048 */  addiu      $a1, $zero, 0x48
/* 13146C 8003F66C 240200E6 */  addiu      $v0, $zero, 0xe6
/* 131470 8003F670 AFA20010 */  sw         $v0, 0x10($sp)
/* 131474 8003F674 240200DC */  addiu      $v0, $zero, 0xdc
/* 131478 8003F678 24060053 */  addiu      $a2, $zero, 0x53
/* 13147C 8003F67C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 131480 8003F680 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 131484 8003F684 3C018015 */  lui        $at, %hi(D_8014A080)
/* 131488 8003F688 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 13148C 8003F68C AFA20014 */  sw         $v0, 0x14($sp)
/* 131490 8003F690 3C018015 */  lui        $at, %hi(D_8014A064)
/* 131494 8003F694 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 131498 8003F698 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13149C 8003F69C E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 1314A0 8003F6A0 3C018015 */  lui        $at, %hi(D_8014A088)
/* 1314A4 8003F6A4 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* 1314A8 8003F6A8 0C027101 */  jal        func_8009C404
/* 1314AC 8003F6AC 240700FF */   addiu     $a3, $zero, 0xff
/* 1314B0 8003F6B0 3C014170 */  lui        $at, 0x4170
/* 1314B4 8003F6B4 44810000 */  mtc1       $at, $f0
/* 1314B8 8003F6B8 3C014180 */  lui        $at, 0x4180
/* 1314BC 8003F6BC 44811000 */  mtc1       $at, $f2
/* 1314C0 8003F6C0 3C01C1C0 */  lui        $at, 0xc1c0
/* 1314C4 8003F6C4 44812000 */  mtc1       $at, $f4
/* 1314C8 8003F6C8 3C014130 */  lui        $at, 0x4130
/* 1314CC 8003F6CC 44813000 */  mtc1       $at, $f6
/* 1314D0 8003F6D0 3C0140A0 */  lui        $at, 0x40a0
/* 1314D4 8003F6D4 44814000 */  mtc1       $at, $f8
/* 1314D8 8003F6D8 3C01C190 */  lui        $at, 0xc190
/* 1314DC 8003F6DC 44815000 */  mtc1       $at, $f10
/* 1314E0 8003F6E0 3C018017 */  lui        $at, %hi(D_8016E568)
/* 1314E4 8003F6E4 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 1314E8 8003F6E8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 1314EC 8003F6EC E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 1314F0 8003F6F0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 1314F4 8003F6F4 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 1314F8 8003F6F8 3C018015 */  lui        $at, %hi(D_8014A054)
/* 1314FC 8003F6FC E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 131500 8003F700 3C018015 */  lui        $at, %hi(D_8014A050)
/* 131504 8003F704 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 131508 8003F708 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 13150C 8003F70C 0C00FDF0 */  jal        func_8003F7C0_1315C0
/* 131510 8003F710 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 131514 8003F714 3C048008 */  lui        $a0, %hi(D_80080750)
/* 131518 8003F718 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 13151C 8003F71C 3C018006 */  lui        $at, %hi(D_8005DEA0)
/* 131520 8003F720 AC22DEA0 */  sw         $v0, %lo(D_8005DEA0)($at)
/* 131524 8003F724 0C00A157 */  jal        func_8002855C_11A35C
/* 131528 8003F728 24050008 */   addiu     $a1, $zero, 8
/* 13152C 8003F72C 3C018005 */  lui        $at, %hi(D_80051F20)
/* 131530 8003F730 A0201F20 */  sb         $zero, %lo(D_80051F20)($at)
.L8003F734:
/* 131534 8003F734 16000003 */  bnez       $s0, .L8003F744
/* 131538 8003F738 24020001 */   addiu     $v0, $zero, 1
/* 13153C 8003F73C 3C018005 */  lui        $at, %hi(D_80051F24)
/* 131540 8003F740 AC221F24 */  sw         $v0, %lo(D_80051F24)($at)
.L8003F744:
/* 131544 8003F744 3C028005 */  lui        $v0, %hi(D_80051F24)
/* 131548 8003F748 8C421F24 */  lw         $v0, %lo(D_80051F24)($v0)
/* 13154C 8003F74C 1440000C */  bnez       $v0, .L8003F780
/* 131550 8003F750 00000000 */   nop
/* 131554 8003F754 3C048006 */  lui        $a0, %hi(D_8005DEA0)
/* 131558 8003F758 0C00FE90 */  jal        func_8003FA40_131840
/* 13155C 8003F75C 8C84DEA0 */   lw        $a0, %lo(D_8005DEA0)($a0)
/* 131560 8003F760 3C018005 */  lui        $at, %hi(D_80051F24)
/* 131564 8003F764 0C009767 */  jal        func_80025D9C_117B9C
/* 131568 8003F768 AC221F24 */   sw        $v0, %lo(D_80051F24)($at)
/* 13156C 8003F76C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 131570 8003F770 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 131574 8003F774 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 131578 8003F778 0800FDEC */  j          .L8003F7B0
/* 13157C 8003F77C 00001021 */   addu      $v0, $zero, $zero
.L8003F780:
/* 131580 8003F780 3C048008 */  lui        $a0, %hi(D_80080750)
/* 131584 8003F784 0C00A16B */  jal        func_800285AC_11A3AC
/* 131588 8003F788 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13158C 8003F78C 3C048006 */  lui        $a0, %hi(D_8005DEA0)
/* 131590 8003F790 0C00FF38 */  jal        func_8003FCE0_131AE0
/* 131594 8003F794 2484DEA0 */   addiu     $a0, $a0, %lo(D_8005DEA0)
/* 131598 8003F798 24020001 */  addiu      $v0, $zero, 1
/* 13159C 8003F79C 24030001 */  addiu      $v1, $zero, 1
/* 1315A0 8003F7A0 3C018005 */  lui        $at, %hi(D_80051F24)
/* 1315A4 8003F7A4 AC201F24 */  sw         $zero, %lo(D_80051F24)($at)
/* 1315A8 8003F7A8 3C018005 */  lui        $at, %hi(D_80051F20)
/* 1315AC 8003F7AC A0231F20 */  sb         $v1, %lo(D_80051F20)($at)
.L8003F7B0:
/* 1315B0 8003F7B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1315B4 8003F7B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1315B8 8003F7B8 03E00008 */  jr         $ra
/* 1315BC 8003F7BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F7C0_1315C0
/* 1315C0 8003F7C0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1315C4 8003F7C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1315C8 8003F7C8 AFB40020 */  sw         $s4, 0x20($sp)
/* 1315CC 8003F7CC AFB3001C */  sw         $s3, 0x1c($sp)
/* 1315D0 8003F7D0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1315D4 8003F7D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1315D8 8003F7D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1315DC 8003F7DC F7BC0048 */  sdc1       $f28, 0x48($sp)
/* 1315E0 8003F7E0 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 1315E4 8003F7E4 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 1315E8 8003F7E8 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 1315EC 8003F7EC F7B40028 */  sdc1       $f20, 0x28($sp)
/* 1315F0 8003F7F0 0C032663 */  jal        func_800C998C
/* 1315F4 8003F7F4 24040098 */   addiu     $a0, $zero, 0x98
/* 1315F8 8003F7F8 00408821 */  addu       $s1, $v0, $zero
/* 1315FC 8003F7FC 02202021 */  addu       $a0, $s1, $zero
/* 131600 8003F800 0C030134 */  jal        bzero
/* 131604 8003F804 24050098 */   addiu     $a1, $zero, 0x98
/* 131608 8003F808 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13160C 8003F80C AE200064 */   sw        $zero, 0x64($s1)
/* 131610 8003F810 00408021 */  addu       $s0, $v0, $zero
/* 131614 8003F814 00009021 */  addu       $s2, $zero, $zero
/* 131618 8003F818 3C014280 */  lui        $at, 0x4280
/* 13161C 8003F81C 4481E000 */  mtc1       $at, $f28
/* 131620 8003F820 3C01BECD */  lui        $at, 0xbecd
/* 131624 8003F824 342187AD */  ori        $at, $at, 0x87ad
/* 131628 8003F828 4481B000 */  mtc1       $at, $f22
/* 13162C 8003F82C 3C0142F0 */  lui        $at, 0x42f0
/* 131630 8003F830 4481D000 */  mtc1       $at, $f26
/* 131634 8003F834 3C01C1B8 */  lui        $at, 0xc1b8
/* 131638 8003F838 4481C000 */  mtc1       $at, $f24
/* 13163C 8003F83C 3C0142B4 */  lui        $at, 0x42b4
/* 131640 8003F840 44810000 */  mtc1       $at, $f0
/* 131644 8003F844 24140015 */  addiu      $s4, $zero, 0x15
/* 131648 8003F848 241300ED */  addiu      $s3, $zero, 0xed
/* 13164C 8003F84C 24020007 */  addiu      $v0, $zero, 7
/* 131650 8003F850 AE300000 */  sw         $s0, ($s1)
/* 131654 8003F854 AE02001C */  sw         $v0, 0x1c($s0)
/* 131658 8003F858 2402008D */  addiu      $v0, $zero, 0x8d
/* 13165C 8003F85C AE020004 */  sw         $v0, 4($s0)
/* 131660 8003F860 240200D5 */  addiu      $v0, $zero, 0xd5
/* 131664 8003F864 AE020008 */  sw         $v0, 8($s0)
/* 131668 8003F868 24020001 */  addiu      $v0, $zero, 1
/* 13166C 8003F86C AE000044 */  sw         $zero, 0x44($s0)
/* 131670 8003F870 AE02000C */  sw         $v0, 0xc($s0)
/* 131674 8003F874 E6000054 */  swc1       $f0, 0x54($s0)
.L8003F878:
/* 131678 8003F878 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13167C 8003F87C 00000000 */   nop
/* 131680 8003F880 00408021 */  addu       $s0, $v0, $zero
/* 131684 8003F884 4600B306 */  mov.s      $f12, $f22
/* 131688 8003F888 00121400 */  sll        $v0, $s2, 0x10
/* 13168C 8003F88C 00021403 */  sra        $v0, $v0, 0x10
/* 131690 8003F890 2443FFFE */  addiu      $v1, $v0, -2
/* 131694 8003F894 4483A000 */  mtc1       $v1, $f20
/* 131698 8003F898 00000000 */  nop
/* 13169C 8003F89C 4680A520 */  cvt.s.w    $f20, $f20
/* 1316A0 8003F8A0 461CA502 */  mul.s      $f20, $f20, $f28
/* 1316A4 8003F8A4 00021080 */  sll        $v0, $v0, 2
/* 1316A8 8003F8A8 00511021 */  addu       $v0, $v0, $s1
/* 1316AC 8003F8AC AC50000C */  sw         $s0, 0xc($v0)
/* 1316B0 8003F8B0 AE14001C */  sw         $s4, 0x1c($s0)
/* 1316B4 8003F8B4 0C02F784 */  jal        func_800BDE10
/* 1316B8 8003F8B8 AE130004 */   sw        $s3, 4($s0)
/* 1316BC 8003F8BC 00000000 */  nop
/* 1316C0 8003F8C0 4600A002 */  mul.s      $f0, $f20, $f0
/* 1316C4 8003F8C4 4600B306 */  mov.s      $f12, $f22
/* 1316C8 8003F8C8 0C02FF68 */  jal        func_800BFDA0
/* 1316CC 8003F8CC E6000044 */   swc1      $f0, 0x44($s0)
/* 1316D0 8003F8D0 00000000 */  nop
/* 1316D4 8003F8D4 4600A502 */  mul.s      $f20, $f20, $f0
/* 1316D8 8003F8D8 26420001 */  addiu      $v0, $s2, 1
/* 1316DC 8003F8DC 00409021 */  addu       $s2, $v0, $zero
/* 1316E0 8003F8E0 00021400 */  sll        $v0, $v0, 0x10
/* 1316E4 8003F8E4 00021403 */  sra        $v0, $v0, 0x10
/* 1316E8 8003F8E8 28420008 */  slti       $v0, $v0, 8
/* 1316EC 8003F8EC 461AA500 */  add.s      $f20, $f20, $f26
/* 1316F0 8003F8F0 AE000054 */  sw         $zero, 0x54($s0)
/* 1316F4 8003F8F4 E6180058 */  swc1       $f24, 0x58($s0)
/* 1316F8 8003F8F8 AE000050 */  sw         $zero, 0x50($s0)
/* 1316FC 8003F8FC 1440FFDE */  bnez       $v0, .L8003F878
/* 131700 8003F900 E6140048 */   swc1      $f20, 0x48($s0)
/* 131704 8003F904 AE20006C */  sw         $zero, 0x6c($s1)
/* 131708 8003F908 C62E006C */  lwc1       $f14, 0x6c($s1)
/* 13170C 8003F90C 3C014343 */  lui        $at, 0x4343
/* 131710 8003F910 44810000 */  mtc1       $at, $f0
/* 131714 8003F914 3C014278 */  lui        $at, 0x4278
/* 131718 8003F918 44811000 */  mtc1       $at, $f2
/* 13171C 8003F91C 3C01C2E8 */  lui        $at, 0xc2e8
/* 131720 8003F920 44812000 */  mtc1       $at, $f4
/* 131724 8003F924 3C0142A8 */  lui        $at, 0x42a8
/* 131728 8003F928 4481A000 */  mtc1       $at, $f20
/* 13172C 8003F92C AE200074 */  sw         $zero, 0x74($s1)
/* 131730 8003F930 E6200084 */  swc1       $f0, 0x84($s1)
/* 131734 8003F934 E622008C */  swc1       $f2, 0x8c($s1)
/* 131738 8003F938 E624007C */  swc1       $f4, 0x7c($s1)
/* 13173C 8003F93C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 131740 8003F940 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 131744 8003F944 4406A000 */  mfc1       $a2, $f20
/* 131748 8003F948 0C00AC58 */  jal        func_8002B160_11CF60
/* 13174C 8003F94C 00000000 */   nop
/* 131750 8003F950 E6200068 */  swc1       $f0, 0x68($s1)
/* 131754 8003F954 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 131758 8003F958 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 13175C 8003F95C C62E0074 */  lwc1       $f14, 0x74($s1)
/* 131760 8003F960 4406A000 */  mfc1       $a2, $f20
/* 131764 8003F964 0C00AC58 */  jal        func_8002B160_11CF60
/* 131768 8003F968 00000000 */   nop
/* 13176C 8003F96C E6200070 */  swc1       $f0, 0x70($s1)
/* 131770 8003F970 3C018015 */  lui        $at, %hi(D_8014A064)
/* 131774 8003F974 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 131778 8003F978 C6220084 */  lwc1       $f2, 0x84($s1)
/* 13177C 8003F97C 46020001 */  sub.s      $f0, $f0, $f2
/* 131780 8003F980 3C018006 */  lui        $at, %hi(D_8005C580)
/* 131784 8003F984 D424C580 */  ldc1       $f4, %lo(D_8005C580)($at)
/* 131788 8003F988 46000021 */  cvt.d.s    $f0, $f0
/* 13178C 8003F98C 46200005 */  abs.d      $f0, $f0
/* 131790 8003F990 46240003 */  div.d      $f0, $f0, $f4
/* 131794 8003F994 C622008C */  lwc1       $f2, 0x8c($s1)
/* 131798 8003F998 46200020 */  cvt.s.d    $f0, $f0
/* 13179C 8003F99C E6200080 */  swc1       $f0, 0x80($s1)
/* 1317A0 8003F9A0 3C018015 */  lui        $at, %hi(D_8014A068)
/* 1317A4 8003F9A4 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 1317A8 8003F9A8 46020001 */  sub.s      $f0, $f0, $f2
/* 1317AC 8003F9AC 46000021 */  cvt.d.s    $f0, $f0
/* 1317B0 8003F9B0 46200005 */  abs.d      $f0, $f0
/* 1317B4 8003F9B4 46240003 */  div.d      $f0, $f0, $f4
/* 1317B8 8003F9B8 C6220094 */  lwc1       $f2, 0x94($s1)
/* 1317BC 8003F9BC 46200020 */  cvt.s.d    $f0, $f0
/* 1317C0 8003F9C0 E6200088 */  swc1       $f0, 0x88($s1)
/* 1317C4 8003F9C4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 1317C8 8003F9C8 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 1317CC 8003F9CC 46020001 */  sub.s      $f0, $f0, $f2
/* 1317D0 8003F9D0 46000021 */  cvt.d.s    $f0, $f0
/* 1317D4 8003F9D4 46200005 */  abs.d      $f0, $f0
/* 1317D8 8003F9D8 46240003 */  div.d      $f0, $f0, $f4
/* 1317DC 8003F9DC C622007C */  lwc1       $f2, 0x7c($s1)
/* 1317E0 8003F9E0 46200020 */  cvt.s.d    $f0, $f0
/* 1317E4 8003F9E4 E6200090 */  swc1       $f0, 0x90($s1)
/* 1317E8 8003F9E8 3C018015 */  lui        $at, %hi(D_8014A088)
/* 1317EC 8003F9EC C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 1317F0 8003F9F0 46020001 */  sub.s      $f0, $f0, $f2
/* 1317F4 8003F9F4 46000021 */  cvt.d.s    $f0, $f0
/* 1317F8 8003F9F8 46200005 */  abs.d      $f0, $f0
/* 1317FC 8003F9FC 46240003 */  div.d      $f0, $f0, $f4
/* 131800 8003FA00 02201021 */  addu       $v0, $s1, $zero
/* 131804 8003FA04 46200020 */  cvt.s.d    $f0, $f0
/* 131808 8003FA08 E4400078 */  swc1       $f0, 0x78($v0)
/* 13180C 8003FA0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 131810 8003FA10 8FB40020 */  lw         $s4, 0x20($sp)
/* 131814 8003FA14 8FB3001C */  lw         $s3, 0x1c($sp)
/* 131818 8003FA18 8FB20018 */  lw         $s2, 0x18($sp)
/* 13181C 8003FA1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 131820 8003FA20 8FB00010 */  lw         $s0, 0x10($sp)
/* 131824 8003FA24 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* 131828 8003FA28 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 13182C 8003FA2C D7B80038 */  ldc1       $f24, 0x38($sp)
/* 131830 8003FA30 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 131834 8003FA34 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 131838 8003FA38 03E00008 */  jr         $ra
/* 13183C 8003FA3C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8003FA40_131840
/* 131840 8003FA40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 131844 8003FA44 AFB10014 */  sw         $s1, 0x14($sp)
/* 131848 8003FA48 00808821 */  addu       $s1, $a0, $zero
/* 13184C 8003FA4C AFBF0018 */  sw         $ra, 0x18($sp)
/* 131850 8003FA50 AFB00010 */  sw         $s0, 0x10($sp)
/* 131854 8003FA54 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 131858 8003FA58 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 13185C 8003FA5C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 131860 8003FA60 8E220064 */  lw         $v0, 0x64($s1)
/* 131864 8003FA64 3C0142A8 */  lui        $at, 0x42a8
/* 131868 8003FA68 44811000 */  mtc1       $at, $f2
/* 13186C 8003FA6C 24420001 */  addiu      $v0, $v0, 1
/* 131870 8003FA70 44820000 */  mtc1       $v0, $f0
/* 131874 8003FA74 00000000 */  nop
/* 131878 8003FA78 46800020 */  cvt.s.w    $f0, $f0
/* 13187C 8003FA7C 4602003C */  c.lt.s     $f0, $f2
/* 131880 8003FA80 00000000 */  nop
/* 131884 8003FA84 00000000 */  nop
/* 131888 8003FA88 45000016 */  bc1f       .L8003FAE4
/* 13188C 8003FA8C AE220064 */   sw        $v0, 0x64($s1)
/* 131890 8003FA90 3C01BECD */  lui        $at, 0xbecd
/* 131894 8003FA94 342187AD */  ori        $at, $at, 0x87ad
/* 131898 8003FA98 4481A000 */  mtc1       $at, $f20
/* 13189C 8003FA9C 3C01C100 */  lui        $at, 0xc100
/* 1318A0 8003FAA0 4481B000 */  mtc1       $at, $f22
/* 1318A4 8003FAA4 00000000 */  nop
/* 1318A8 8003FAA8 0C02F784 */  jal        func_800BDE10
/* 1318AC 8003FAAC 4600A306 */   mov.s     $f12, $f20
/* 1318B0 8003FAB0 00000000 */  nop
/* 1318B4 8003FAB4 46160602 */  mul.s      $f24, $f0, $f22
/* 1318B8 8003FAB8 0C02FF68 */  jal        func_800BFDA0
/* 1318BC 8003FABC 4600A306 */   mov.s     $f12, $f20
/* 1318C0 8003FAC0 00000000 */  nop
/* 1318C4 8003FAC4 46160002 */  mul.s      $f0, $f0, $f22
/* 1318C8 8003FAC8 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1318CC 8003FACC 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1318D0 8003FAD0 44060000 */  mfc1       $a2, $f0
/* 1318D4 8003FAD4 4405C000 */  mfc1       $a1, $f24
/* 1318D8 8003FAD8 00000000 */  nop
/* 1318DC 8003FADC 0C00A18C */  jal        func_80028630_11A430
/* 1318E0 8003FAE0 00003821 */   addu      $a3, $zero, $zero
.L8003FAE4:
/* 1318E4 8003FAE4 3C108015 */  lui        $s0, %hi(D_8014A080)
/* 1318E8 8003FAE8 2610A080 */  addiu      $s0, $s0, %lo(D_8014A080)
/* 1318EC 8003FAEC C6140000 */  lwc1       $f20, ($s0)
/* 1318F0 8003FAF0 C62E006C */  lwc1       $f14, 0x6c($s1)
/* 1318F4 8003FAF4 8E260068 */  lw         $a2, 0x68($s1)
/* 1318F8 8003FAF8 0C00AC89 */  jal        func_8002B224_11D024
/* 1318FC 8003FAFC 4600A306 */   mov.s     $f12, $f20
/* 131900 8003FB00 46140501 */  sub.s      $f20, $f0, $f20
/* 131904 8003FB04 4480C000 */  mtc1       $zero, $f24
/* 131908 8003FB08 00000000 */  nop
/* 13190C 8003FB0C 4618A03C */  c.lt.s     $f20, $f24
/* 131910 8003FB10 00000000 */  nop
/* 131914 8003FB14 00000000 */  nop
/* 131918 8003FB18 45000005 */  bc1f       .L8003FB30
/* 13191C 8003FB1C E6000000 */   swc1      $f0, ($s0)
/* 131920 8003FB20 3C0143B4 */  lui        $at, 0x43b4
/* 131924 8003FB24 44810000 */  mtc1       $at, $f0
/* 131928 8003FB28 00000000 */  nop
/* 13192C 8003FB2C 4600A500 */  add.s      $f20, $f20, $f0
.L8003FB30:
/* 131930 8003FB30 3C014334 */  lui        $at, 0x4334
/* 131934 8003FB34 4481B000 */  mtc1       $at, $f22
/* 131938 8003FB38 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13193C 8003FB3C C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 131940 8003FB40 C62E0074 */  lwc1       $f14, 0x74($s1)
/* 131944 8003FB44 0C00AC89 */  jal        func_8002B224_11D024
/* 131948 8003FB48 8E260070 */   lw        $a2, 0x70($s1)
/* 13194C 8003FB4C 46000086 */  mov.s      $f2, $f0
/* 131950 8003FB50 4602B03E */  c.le.s     $f22, $f2
/* 131954 8003FB54 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 131958 8003FB58 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 13195C 8003FB5C 45000007 */  bc1f       .L8003FB7C
/* 131960 8003FB60 00000000 */   nop
/* 131964 8003FB64 3C0143B4 */  lui        $at, 0x43b4
/* 131968 8003FB68 44810000 */  mtc1       $at, $f0
/* 13196C 8003FB6C 00000000 */  nop
/* 131970 8003FB70 46001001 */  sub.s      $f0, $f2, $f0
/* 131974 8003FB74 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 131978 8003FB78 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
.L8003FB7C:
/* 13197C 8003FB7C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 131980 8003FB80 C42CA064 */  lwc1       $f12, %lo(D_8014A064)($at)
/* 131984 8003FB84 C62E0084 */  lwc1       $f14, 0x84($s1)
/* 131988 8003FB88 0C00BC51 */  jal        func_8002F144_120F44
/* 13198C 8003FB8C 8E260080 */   lw        $a2, 0x80($s1)
/* 131990 8003FB90 3C018015 */  lui        $at, %hi(D_8014A064)
/* 131994 8003FB94 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 131998 8003FB98 C6220084 */  lwc1       $f2, 0x84($s1)
/* 13199C 8003FB9C 46020032 */  c.eq.s     $f0, $f2
/* 1319A0 8003FBA0 00000000 */  nop
/* 1319A4 8003FBA4 00000000 */  nop
/* 1319A8 8003FBA8 45030001 */  bc1tl      .L8003FBB0
/* 1319AC 8003FBAC E6380080 */   swc1      $f24, 0x80($s1)
.L8003FBB0:
/* 1319B0 8003FBB0 3C018015 */  lui        $at, %hi(D_8014A068)
/* 1319B4 8003FBB4 C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 1319B8 8003FBB8 C62E008C */  lwc1       $f14, 0x8c($s1)
/* 1319BC 8003FBBC 0C00BC51 */  jal        func_8002F144_120F44
/* 1319C0 8003FBC0 8E260088 */   lw        $a2, 0x88($s1)
/* 1319C4 8003FBC4 3C018015 */  lui        $at, %hi(D_8014A068)
/* 1319C8 8003FBC8 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 1319CC 8003FBCC C622008C */  lwc1       $f2, 0x8c($s1)
/* 1319D0 8003FBD0 46020032 */  c.eq.s     $f0, $f2
/* 1319D4 8003FBD4 00000000 */  nop
/* 1319D8 8003FBD8 00000000 */  nop
/* 1319DC 8003FBDC 45030001 */  bc1tl      .L8003FBE4
/* 1319E0 8003FBE0 E6380088 */   swc1      $f24, 0x88($s1)
.L8003FBE4:
/* 1319E4 8003FBE4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 1319E8 8003FBE8 C42CA06C */  lwc1       $f12, %lo(D_8014A06C)($at)
/* 1319EC 8003FBEC C62E0094 */  lwc1       $f14, 0x94($s1)
/* 1319F0 8003FBF0 0C00BC51 */  jal        func_8002F144_120F44
/* 1319F4 8003FBF4 8E260090 */   lw        $a2, 0x90($s1)
/* 1319F8 8003FBF8 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 1319FC 8003FBFC E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 131A00 8003FC00 C6220094 */  lwc1       $f2, 0x94($s1)
/* 131A04 8003FC04 46020032 */  c.eq.s     $f0, $f2
/* 131A08 8003FC08 00000000 */  nop
/* 131A0C 8003FC0C 00000000 */  nop
/* 131A10 8003FC10 45030001 */  bc1tl      .L8003FC18
/* 131A14 8003FC14 E6380090 */   swc1      $f24, 0x90($s1)
.L8003FC18:
/* 131A18 8003FC18 3C018015 */  lui        $at, %hi(D_8014A088)
/* 131A1C 8003FC1C C42CA088 */  lwc1       $f12, %lo(D_8014A088)($at)
/* 131A20 8003FC20 C62E007C */  lwc1       $f14, 0x7c($s1)
/* 131A24 8003FC24 8E260078 */  lw         $a2, 0x78($s1)
/* 131A28 8003FC28 0C00BC51 */  jal        func_8002F144_120F44
/* 131A2C 8003FC2C 00008021 */   addu      $s0, $zero, $zero
/* 131A30 8003FC30 3C018015 */  lui        $at, %hi(D_8014A088)
/* 131A34 8003FC34 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 131A38 8003FC38 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 131A3C 8003FC3C 8E240000 */   lw        $a0, ($s1)
/* 131A40 8003FC40 00101400 */  sll        $v0, $s0, 0x10
.L8003FC44:
/* 131A44 8003FC44 00021383 */  sra        $v0, $v0, 0xe
/* 131A48 8003FC48 00511021 */  addu       $v0, $v0, $s1
/* 131A4C 8003FC4C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 131A50 8003FC50 8C44000C */   lw        $a0, 0xc($v0)
/* 131A54 8003FC54 26020001 */  addiu      $v0, $s0, 1
/* 131A58 8003FC58 00408021 */  addu       $s0, $v0, $zero
/* 131A5C 8003FC5C 00021400 */  sll        $v0, $v0, 0x10
/* 131A60 8003FC60 00021403 */  sra        $v0, $v0, 0x10
/* 131A64 8003FC64 28420008 */  slti       $v0, $v0, 8
/* 131A68 8003FC68 1440FFF6 */  bnez       $v0, .L8003FC44
/* 131A6C 8003FC6C 00101400 */   sll       $v0, $s0, 0x10
/* 131A70 8003FC70 8E240000 */  lw         $a0, ($s1)
/* 131A74 8003FC74 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 131A78 8003FC78 00008021 */   addu      $s0, $zero, $zero
/* 131A7C 8003FC7C 00101400 */  sll        $v0, $s0, 0x10
.L8003FC80:
/* 131A80 8003FC80 00021383 */  sra        $v0, $v0, 0xe
/* 131A84 8003FC84 00511021 */  addu       $v0, $v0, $s1
/* 131A88 8003FC88 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 131A8C 8003FC8C 8C44000C */   lw        $a0, 0xc($v0)
/* 131A90 8003FC90 26020001 */  addiu      $v0, $s0, 1
/* 131A94 8003FC94 00408021 */  addu       $s0, $v0, $zero
/* 131A98 8003FC98 00021400 */  sll        $v0, $v0, 0x10
/* 131A9C 8003FC9C 00021403 */  sra        $v0, $v0, 0x10
/* 131AA0 8003FCA0 28420008 */  slti       $v0, $v0, 8
/* 131AA4 8003FCA4 1440FFF6 */  bnez       $v0, .L8003FC80
/* 131AA8 8003FCA8 00101400 */   sll       $v0, $s0, 0x10
/* 131AAC 8003FCAC 8E220000 */  lw         $v0, ($s1)
/* 131AB0 8003FCB0 8C420038 */  lw         $v0, 0x38($v0)
/* 131AB4 8003FCB4 8442001E */  lh         $v0, 0x1e($v0)
/* 131AB8 8003FCB8 384200FF */  xori       $v0, $v0, 0xff
/* 131ABC 8003FCBC 2C420001 */  sltiu      $v0, $v0, 1
/* 131AC0 8003FCC0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 131AC4 8003FCC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 131AC8 8003FCC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 131ACC 8003FCCC D7B80030 */  ldc1       $f24, 0x30($sp)
/* 131AD0 8003FCD0 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 131AD4 8003FCD4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 131AD8 8003FCD8 03E00008 */  jr         $ra
/* 131ADC 8003FCDC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003FCE0_131AE0
/* 131AE0 8003FCE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 131AE4 8003FCE4 AFB10014 */  sw         $s1, 0x14($sp)
/* 131AE8 8003FCE8 00808821 */  addu       $s1, $a0, $zero
/* 131AEC 8003FCEC AFBF0018 */  sw         $ra, 0x18($sp)
/* 131AF0 8003FCF0 12200017 */  beqz       $s1, .L8003FD50
/* 131AF4 8003FCF4 AFB00010 */   sw        $s0, 0x10($sp)
/* 131AF8 8003FCF8 8E240000 */  lw         $a0, ($s1)
/* 131AFC 8003FCFC 10800014 */  beqz       $a0, .L8003FD50
/* 131B00 8003FD00 00000000 */   nop
/* 131B04 8003FD04 0C00AF04 */  jal        func_8002BC10_11DA10
/* 131B08 8003FD08 00008021 */   addu      $s0, $zero, $zero
/* 131B0C 8003FD0C 00102400 */  sll        $a0, $s0, 0x10
.L8003FD10:
/* 131B10 8003FD10 8E220000 */  lw         $v0, ($s1)
/* 131B14 8003FD14 00042383 */  sra        $a0, $a0, 0xe
/* 131B18 8003FD18 2484000C */  addiu      $a0, $a0, 0xc
/* 131B1C 8003FD1C 0C00AF04 */  jal        func_8002BC10_11DA10
/* 131B20 8003FD20 00442021 */   addu      $a0, $v0, $a0
/* 131B24 8003FD24 26020001 */  addiu      $v0, $s0, 1
/* 131B28 8003FD28 00408021 */  addu       $s0, $v0, $zero
/* 131B2C 8003FD2C 00021400 */  sll        $v0, $v0, 0x10
/* 131B30 8003FD30 00021403 */  sra        $v0, $v0, 0x10
/* 131B34 8003FD34 28420008 */  slti       $v0, $v0, 8
/* 131B38 8003FD38 1440FFF5 */  bnez       $v0, .L8003FD10
/* 131B3C 8003FD3C 00102400 */   sll       $a0, $s0, 0x10
/* 131B40 8003FD40 8E240000 */  lw         $a0, ($s1)
/* 131B44 8003FD44 0C0326A1 */  jal        func_800C9A84
/* 131B48 8003FD48 00000000 */   nop
/* 131B4C 8003FD4C AE200000 */  sw         $zero, ($s1)
.L8003FD50:
/* 131B50 8003FD50 8FBF0018 */  lw         $ra, 0x18($sp)
/* 131B54 8003FD54 8FB10014 */  lw         $s1, 0x14($sp)
/* 131B58 8003FD58 8FB00010 */  lw         $s0, 0x10($sp)
/* 131B5C 8003FD5C 03E00008 */  jr         $ra
/* 131B60 8003FD60 27BD0020 */   addiu     $sp, $sp, 0x20
/* 131B64 8003FD64 00000000 */  nop
/* 131B68 8003FD68 00000000 */  nop
/* 131B6C 8003FD6C 00000000 */  nop