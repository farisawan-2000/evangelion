.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003A5D0_12C3D0
/* 12C3D0 8003A5D0 3C028005 */  lui        $v0, %hi(D_80051E60)
/* 12C3D4 8003A5D4 90421E60 */  lbu        $v0, %lo(D_80051E60)($v0)
/* 12C3D8 8003A5D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12C3DC 8003A5DC AFB00018 */  sw         $s0, 0x18($sp)
/* 12C3E0 8003A5E0 00808021 */  addu       $s0, $a0, $zero
/* 12C3E4 8003A5E4 1040003B */  beqz       $v0, .L8003A6D4
/* 12C3E8 8003A5E8 AFBF001C */   sw        $ra, 0x1c($sp)
/* 12C3EC 8003A5EC 0C02A5D2 */  jal        func_800A9748
/* 12C3F0 8003A5F0 24040001 */   addiu     $a0, $zero, 1
/* 12C3F4 8003A5F4 0C02725C */  jal        func_8009C970
/* 12C3F8 8003A5F8 00000000 */   nop
/* 12C3FC 8003A5FC 3C01C348 */  lui        $at, 0xc348
/* 12C400 8003A600 44810000 */  mtc1       $at, $f0
/* 12C404 8003A604 3C01C20C */  lui        $at, 0xc20c
/* 12C408 8003A608 44811000 */  mtc1       $at, $f2
/* 12C40C 8003A60C 24040053 */  addiu      $a0, $zero, 0x53
/* 12C410 8003A610 24050048 */  addiu      $a1, $zero, 0x48
/* 12C414 8003A614 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12C418 8003A618 AFA20010 */  sw         $v0, 0x10($sp)
/* 12C41C 8003A61C 240200DC */  addiu      $v0, $zero, 0xdc
/* 12C420 8003A620 24060053 */  addiu      $a2, $zero, 0x53
/* 12C424 8003A624 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12C428 8003A628 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 12C42C 8003A62C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12C430 8003A630 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 12C434 8003A634 AFA20014 */  sw         $v0, 0x14($sp)
/* 12C438 8003A638 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12C43C 8003A63C E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 12C440 8003A640 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12C444 8003A644 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 12C448 8003A648 0C027101 */  jal        func_8009C404
/* 12C44C 8003A64C 240700FF */   addiu     $a3, $zero, 0xff
/* 12C450 8003A650 3C014120 */  lui        $at, 0x4120
/* 12C454 8003A654 44810000 */  mtc1       $at, $f0
/* 12C458 8003A658 3C014040 */  lui        $at, 0x4040
/* 12C45C 8003A65C 44811000 */  mtc1       $at, $f2
/* 12C460 8003A660 3C01C1C0 */  lui        $at, 0xc1c0
/* 12C464 8003A664 44812000 */  mtc1       $at, $f4
/* 12C468 8003A668 3C014130 */  lui        $at, 0x4130
/* 12C46C 8003A66C 44813000 */  mtc1       $at, $f6
/* 12C470 8003A670 3C0140A0 */  lui        $at, 0x40a0
/* 12C474 8003A674 44814000 */  mtc1       $at, $f8
/* 12C478 8003A678 3C01C190 */  lui        $at, 0xc190
/* 12C47C 8003A67C 44815000 */  mtc1       $at, $f10
/* 12C480 8003A680 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12C484 8003A684 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12C488 8003A688 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12C48C 8003A68C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12C490 8003A690 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12C494 8003A694 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12C498 8003A698 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12C49C 8003A69C E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12C4A0 8003A6A0 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12C4A4 8003A6A4 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 12C4A8 8003A6A8 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12C4AC 8003A6AC 0C00E9D8 */  jal        func_8003A760_12C560
/* 12C4B0 8003A6B0 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 12C4B4 8003A6B4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12C4B8 8003A6B8 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12C4BC 8003A6BC 3C018006 */  lui        $at, %hi(D_8005DDE0)
/* 12C4C0 8003A6C0 AC22DDE0 */  sw         $v0, %lo(D_8005DDE0)($at)
/* 12C4C4 8003A6C4 0C00A157 */  jal        func_8002855C_11A35C
/* 12C4C8 8003A6C8 24050008 */   addiu     $a1, $zero, 8
/* 12C4CC 8003A6CC 3C018005 */  lui        $at, %hi(D_80051E60)
/* 12C4D0 8003A6D0 A0201E60 */  sb         $zero, %lo(D_80051E60)($at)
.L8003A6D4:
/* 12C4D4 8003A6D4 16000003 */  bnez       $s0, .L8003A6E4
/* 12C4D8 8003A6D8 24020001 */   addiu     $v0, $zero, 1
/* 12C4DC 8003A6DC 3C018005 */  lui        $at, %hi(D_80051E64)
/* 12C4E0 8003A6E0 AC221E64 */  sw         $v0, %lo(D_80051E64)($at)
.L8003A6E4:
/* 12C4E4 8003A6E4 3C028005 */  lui        $v0, %hi(D_80051E64)
/* 12C4E8 8003A6E8 8C421E64 */  lw         $v0, %lo(D_80051E64)($v0)
/* 12C4EC 8003A6EC 1440000C */  bnez       $v0, .L8003A720
/* 12C4F0 8003A6F0 00000000 */   nop
/* 12C4F4 8003A6F4 3C048006 */  lui        $a0, %hi(D_8005DDE0)
/* 12C4F8 8003A6F8 0C00EA4E */  jal        func_8003A938_12C738
/* 12C4FC 8003A6FC 8C84DDE0 */   lw        $a0, %lo(D_8005DDE0)($a0)
/* 12C500 8003A700 3C018005 */  lui        $at, %hi(D_80051E64)
/* 12C504 8003A704 0C009767 */  jal        func_80025D9C_117B9C
/* 12C508 8003A708 AC221E64 */   sw        $v0, %lo(D_80051E64)($at)
/* 12C50C 8003A70C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12C510 8003A710 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 12C514 8003A714 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12C518 8003A718 0800E9D4 */  j          .L8003A750
/* 12C51C 8003A71C 00001021 */   addu      $v0, $zero, $zero
.L8003A720:
/* 12C520 8003A720 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12C524 8003A724 0C00A16B */  jal        func_800285AC_11A3AC
/* 12C528 8003A728 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12C52C 8003A72C 3C048006 */  lui        $a0, %hi(D_8005DDE0)
/* 12C530 8003A730 0C00EACD */  jal        func_8003AB34_12C934
/* 12C534 8003A734 2484DDE0 */   addiu     $a0, $a0, %lo(D_8005DDE0)
/* 12C538 8003A738 24020001 */  addiu      $v0, $zero, 1
/* 12C53C 8003A73C 24030001 */  addiu      $v1, $zero, 1
/* 12C540 8003A740 3C018005 */  lui        $at, %hi(D_80051E64)
/* 12C544 8003A744 AC201E64 */  sw         $zero, %lo(D_80051E64)($at)
/* 12C548 8003A748 3C018005 */  lui        $at, %hi(D_80051E60)
/* 12C54C 8003A74C A0231E60 */  sb         $v1, %lo(D_80051E60)($at)
.L8003A750:
/* 12C550 8003A750 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12C554 8003A754 8FB00018 */  lw         $s0, 0x18($sp)
/* 12C558 8003A758 03E00008 */  jr         $ra
/* 12C55C 8003A75C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003A760_12C560
/* 12C560 8003A760 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12C564 8003A764 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12C568 8003A768 AFB10014 */  sw         $s1, 0x14($sp)
/* 12C56C 8003A76C AFB00010 */  sw         $s0, 0x10($sp)
/* 12C570 8003A770 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 12C574 8003A774 0C032663 */  jal        func_800C998C
/* 12C578 8003A778 24040048 */   addiu     $a0, $zero, 0x48
/* 12C57C 8003A77C 00408021 */  addu       $s0, $v0, $zero
/* 12C580 8003A780 02002021 */  addu       $a0, $s0, $zero
/* 12C584 8003A784 0C030134 */  jal        bzero
/* 12C588 8003A788 24050048 */   addiu     $a1, $zero, 0x48
/* 12C58C 8003A78C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12C590 8003A790 24110001 */   addiu     $s1, $zero, 1
/* 12C594 8003A794 3C013D23 */  lui        $at, 0x3d23
/* 12C598 8003A798 3421D70A */  ori        $at, $at, 0xd70a
/* 12C59C 8003A79C 44810000 */  mtc1       $at, $f0
/* 12C5A0 8003A7A0 24030007 */  addiu      $v1, $zero, 7
/* 12C5A4 8003A7A4 AE020000 */  sw         $v0, ($s0)
/* 12C5A8 8003A7A8 AC43001C */  sw         $v1, 0x1c($v0)
/* 12C5AC 8003A7AC 2403000F */  addiu      $v1, $zero, 0xf
/* 12C5B0 8003A7B0 AC430004 */  sw         $v1, 4($v0)
/* 12C5B4 8003A7B4 24030002 */  addiu      $v1, $zero, 2
/* 12C5B8 8003A7B8 AC430008 */  sw         $v1, 8($v0)
/* 12C5BC 8003A7BC AC400044 */  sw         $zero, 0x44($v0)
/* 12C5C0 8003A7C0 AC400048 */  sw         $zero, 0x48($v0)
/* 12C5C4 8003A7C4 AC40004C */  sw         $zero, 0x4c($v0)
/* 12C5C8 8003A7C8 AC400054 */  sw         $zero, 0x54($v0)
/* 12C5CC 8003A7CC AC51000C */  sw         $s1, 0xc($v0)
/* 12C5D0 8003A7D0 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12C5D4 8003A7D4 E440005C */   swc1      $f0, 0x5c($v0)
/* 12C5D8 8003A7D8 3C013CA3 */  lui        $at, 0x3ca3
/* 12C5DC 8003A7DC 3421D70A */  ori        $at, $at, 0xd70a
/* 12C5E0 8003A7E0 44810000 */  mtc1       $at, $f0
/* 12C5E4 8003A7E4 3C01C348 */  lui        $at, 0xc348
/* 12C5E8 8003A7E8 44811000 */  mtc1       $at, $f2
/* 12C5EC 8003A7EC 3C01C210 */  lui        $at, 0xc210
/* 12C5F0 8003A7F0 44812000 */  mtc1       $at, $f4
/* 12C5F4 8003A7F4 3C0142A0 */  lui        $at, 0x42a0
/* 12C5F8 8003A7F8 4481A000 */  mtc1       $at, $f20
/* 12C5FC 8003A7FC 24030067 */  addiu      $v1, $zero, 0x67
/* 12C600 8003A800 AE020004 */  sw         $v0, 4($s0)
/* 12C604 8003A804 AC43001C */  sw         $v1, 0x1c($v0)
/* 12C608 8003A808 240300D5 */  addiu      $v1, $zero, 0xd5
/* 12C60C 8003A80C AC430004 */  sw         $v1, 4($v0)
/* 12C610 8003A810 2403000A */  addiu      $v1, $zero, 0xa
/* 12C614 8003A814 AC400008 */  sw         $zero, 8($v0)
/* 12C618 8003A818 AC400044 */  sw         $zero, 0x44($v0)
/* 12C61C 8003A81C AC400048 */  sw         $zero, 0x48($v0)
/* 12C620 8003A820 AC40004C */  sw         $zero, 0x4c($v0)
/* 12C624 8003A824 AC400054 */  sw         $zero, 0x54($v0)
/* 12C628 8003A828 AC51000C */  sw         $s1, 0xc($v0)
/* 12C62C 8003A82C AC430018 */  sw         $v1, 0x18($v0)
/* 12C630 8003A830 AC4000EC */  sw         $zero, 0xec($v0)
/* 12C634 8003A834 E440005C */  swc1       $f0, 0x5c($v0)
/* 12C638 8003A838 AE000034 */  sw         $zero, 0x34($s0)
/* 12C63C 8003A83C AE00003C */  sw         $zero, 0x3c($s0)
/* 12C640 8003A840 AE00001C */  sw         $zero, 0x1c($s0)
/* 12C644 8003A844 E602002C */  swc1       $f2, 0x2c($s0)
/* 12C648 8003A848 E6040024 */  swc1       $f4, 0x24($s0)
/* 12C64C 8003A84C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12C650 8003A850 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 12C654 8003A854 C60E001C */  lwc1       $f14, 0x1c($s0)
/* 12C658 8003A858 4406A000 */  mfc1       $a2, $f20
/* 12C65C 8003A85C 0C00AC58 */  jal        func_8002B160_11CF60
/* 12C660 8003A860 00000000 */   nop
/* 12C664 8003A864 E6000018 */  swc1       $f0, 0x18($s0)
/* 12C668 8003A868 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12C66C 8003A86C C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12C670 8003A870 C60E0024 */  lwc1       $f14, 0x24($s0)
/* 12C674 8003A874 4406A000 */  mfc1       $a2, $f20
/* 12C678 8003A878 0C00AC58 */  jal        func_8002B160_11CF60
/* 12C67C 8003A87C 00000000 */   nop
/* 12C680 8003A880 E6000020 */  swc1       $f0, 0x20($s0)
/* 12C684 8003A884 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12C688 8003A888 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 12C68C 8003A88C C6020034 */  lwc1       $f2, 0x34($s0)
/* 12C690 8003A890 46020001 */  sub.s      $f0, $f0, $f2
/* 12C694 8003A894 3C018006 */  lui        $at, %hi(D_8005C3A0)
/* 12C698 8003A898 D424C3A0 */  ldc1       $f4, %lo(D_8005C3A0)($at)
/* 12C69C 8003A89C 46000021 */  cvt.d.s    $f0, $f0
/* 12C6A0 8003A8A0 46200005 */  abs.d      $f0, $f0
/* 12C6A4 8003A8A4 46240003 */  div.d      $f0, $f0, $f4
/* 12C6A8 8003A8A8 C602003C */  lwc1       $f2, 0x3c($s0)
/* 12C6AC 8003A8AC 46200020 */  cvt.s.d    $f0, $f0
/* 12C6B0 8003A8B0 E6000030 */  swc1       $f0, 0x30($s0)
/* 12C6B4 8003A8B4 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12C6B8 8003A8B8 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 12C6BC 8003A8BC 46020001 */  sub.s      $f0, $f0, $f2
/* 12C6C0 8003A8C0 46000021 */  cvt.d.s    $f0, $f0
/* 12C6C4 8003A8C4 46200005 */  abs.d      $f0, $f0
/* 12C6C8 8003A8C8 46240003 */  div.d      $f0, $f0, $f4
/* 12C6CC 8003A8CC C6020044 */  lwc1       $f2, 0x44($s0)
/* 12C6D0 8003A8D0 46200020 */  cvt.s.d    $f0, $f0
/* 12C6D4 8003A8D4 E6000038 */  swc1       $f0, 0x38($s0)
/* 12C6D8 8003A8D8 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12C6DC 8003A8DC C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 12C6E0 8003A8E0 46020001 */  sub.s      $f0, $f0, $f2
/* 12C6E4 8003A8E4 46000021 */  cvt.d.s    $f0, $f0
/* 12C6E8 8003A8E8 46200005 */  abs.d      $f0, $f0
/* 12C6EC 8003A8EC 46240003 */  div.d      $f0, $f0, $f4
/* 12C6F0 8003A8F0 C602002C */  lwc1       $f2, 0x2c($s0)
/* 12C6F4 8003A8F4 46200020 */  cvt.s.d    $f0, $f0
/* 12C6F8 8003A8F8 E6000040 */  swc1       $f0, 0x40($s0)
/* 12C6FC 8003A8FC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12C700 8003A900 C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 12C704 8003A904 46020001 */  sub.s      $f0, $f0, $f2
/* 12C708 8003A908 46000021 */  cvt.d.s    $f0, $f0
/* 12C70C 8003A90C 46200005 */  abs.d      $f0, $f0
/* 12C710 8003A910 46240003 */  div.d      $f0, $f0, $f4
/* 12C714 8003A914 02001021 */  addu       $v0, $s0, $zero
/* 12C718 8003A918 46200020 */  cvt.s.d    $f0, $f0
/* 12C71C 8003A91C E4400028 */  swc1       $f0, 0x28($v0)
/* 12C720 8003A920 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12C724 8003A924 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C728 8003A928 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C72C 8003A92C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12C730 8003A930 03E00008 */  jr         $ra
/* 12C734 8003A934 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003A938_12C738
/* 12C738 8003A938 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12C73C 8003A93C AFB10014 */  sw         $s1, 0x14($sp)
/* 12C740 8003A940 00808821 */  addu       $s1, $a0, $zero
/* 12C744 8003A944 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12C748 8003A948 AFB00010 */  sw         $s0, 0x10($sp)
/* 12C74C 8003A94C F7B80030 */  sdc1       $f24, 0x30($sp)
/* 12C750 8003A950 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 12C754 8003A954 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 12C758 8003A958 8E220004 */  lw         $v0, 4($s1)
/* 12C75C 8003A95C C44200EC */  lwc1       $f2, 0xec($v0)
/* 12C760 8003A960 3C018006 */  lui        $at, %hi(D_8005C3A8)
/* 12C764 8003A964 D420C3A8 */  ldc1       $f0, %lo(D_8005C3A8)($at)
/* 12C768 8003A968 460010A1 */  cvt.d.s    $f2, $f2
/* 12C76C 8003A96C 4620103C */  c.lt.d     $f2, $f0
/* 12C770 8003A970 00000000 */  nop
/* 12C774 8003A974 45000006 */  bc1f       .L8003A990
/* 12C778 8003A978 00000000 */   nop
/* 12C77C 8003A97C 3C018006 */  lui        $at, %hi(D_8005C3B0)
/* 12C780 8003A980 D420C3B0 */  ldc1       $f0, %lo(D_8005C3B0)($at)
/* 12C784 8003A984 46201000 */  add.d      $f0, $f2, $f0
/* 12C788 8003A988 0800EA67 */  j          .L8003A99C
/* 12C78C 8003A98C 46200020 */   cvt.s.d   $f0, $f0
.L8003A990:
/* 12C790 8003A990 3C013F00 */  lui        $at, 0x3f00
/* 12C794 8003A994 44810000 */  mtc1       $at, $f0
/* 12C798 8003A998 00000000 */  nop
.L8003A99C:
/* 12C79C 8003A99C E44000EC */  swc1       $f0, 0xec($v0)
/* 12C7A0 8003A9A0 3C108015 */  lui        $s0, %hi(D_8014A080)
/* 12C7A4 8003A9A4 2610A080 */  addiu      $s0, $s0, %lo(D_8014A080)
/* 12C7A8 8003A9A8 C6140000 */  lwc1       $f20, ($s0)
/* 12C7AC 8003A9AC C62E001C */  lwc1       $f14, 0x1c($s1)
/* 12C7B0 8003A9B0 8E260018 */  lw         $a2, 0x18($s1)
/* 12C7B4 8003A9B4 0C00AC89 */  jal        func_8002B224_11D024
/* 12C7B8 8003A9B8 4600A306 */   mov.s     $f12, $f20
/* 12C7BC 8003A9BC 46140501 */  sub.s      $f20, $f0, $f20
/* 12C7C0 8003A9C0 4480C000 */  mtc1       $zero, $f24
/* 12C7C4 8003A9C4 00000000 */  nop
/* 12C7C8 8003A9C8 4618A03C */  c.lt.s     $f20, $f24
/* 12C7CC 8003A9CC 00000000 */  nop
/* 12C7D0 8003A9D0 00000000 */  nop
/* 12C7D4 8003A9D4 45000005 */  bc1f       .L8003A9EC
/* 12C7D8 8003A9D8 E6000000 */   swc1      $f0, ($s0)
/* 12C7DC 8003A9DC 3C0143B4 */  lui        $at, 0x43b4
/* 12C7E0 8003A9E0 44810000 */  mtc1       $at, $f0
/* 12C7E4 8003A9E4 00000000 */  nop
/* 12C7E8 8003A9E8 4600A500 */  add.s      $f20, $f20, $f0
.L8003A9EC:
/* 12C7EC 8003A9EC 3C014334 */  lui        $at, 0x4334
/* 12C7F0 8003A9F0 4481B000 */  mtc1       $at, $f22
/* 12C7F4 8003A9F4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12C7F8 8003A9F8 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12C7FC 8003A9FC C62E0024 */  lwc1       $f14, 0x24($s1)
/* 12C800 8003AA00 0C00AC89 */  jal        func_8002B224_11D024
/* 12C804 8003AA04 8E260020 */   lw        $a2, 0x20($s1)
/* 12C808 8003AA08 46000086 */  mov.s      $f2, $f0
/* 12C80C 8003AA0C 4602B03E */  c.le.s     $f22, $f2
/* 12C810 8003AA10 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12C814 8003AA14 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 12C818 8003AA18 45000007 */  bc1f       .L8003AA38
/* 12C81C 8003AA1C 00000000 */   nop
/* 12C820 8003AA20 3C0143B4 */  lui        $at, 0x43b4
/* 12C824 8003AA24 44810000 */  mtc1       $at, $f0
/* 12C828 8003AA28 00000000 */  nop
/* 12C82C 8003AA2C 46001001 */  sub.s      $f0, $f2, $f0
/* 12C830 8003AA30 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12C834 8003AA34 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
.L8003AA38:
/* 12C838 8003AA38 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12C83C 8003AA3C C42CA064 */  lwc1       $f12, %lo(D_8014A064)($at)
/* 12C840 8003AA40 C62E0034 */  lwc1       $f14, 0x34($s1)
/* 12C844 8003AA44 0C00BC51 */  jal        func_8002F144_120F44
/* 12C848 8003AA48 8E260030 */   lw        $a2, 0x30($s1)
/* 12C84C 8003AA4C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12C850 8003AA50 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12C854 8003AA54 C6220034 */  lwc1       $f2, 0x34($s1)
/* 12C858 8003AA58 46020032 */  c.eq.s     $f0, $f2
/* 12C85C 8003AA5C 00000000 */  nop
/* 12C860 8003AA60 00000000 */  nop
/* 12C864 8003AA64 45030001 */  bc1tl      .L8003AA6C
/* 12C868 8003AA68 E6380030 */   swc1      $f24, 0x30($s1)
.L8003AA6C:
/* 12C86C 8003AA6C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12C870 8003AA70 C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 12C874 8003AA74 C62E003C */  lwc1       $f14, 0x3c($s1)
/* 12C878 8003AA78 0C00BC51 */  jal        func_8002F144_120F44
/* 12C87C 8003AA7C 8E260038 */   lw        $a2, 0x38($s1)
/* 12C880 8003AA80 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12C884 8003AA84 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 12C888 8003AA88 C622003C */  lwc1       $f2, 0x3c($s1)
/* 12C88C 8003AA8C 46020032 */  c.eq.s     $f0, $f2
/* 12C890 8003AA90 00000000 */  nop
/* 12C894 8003AA94 00000000 */  nop
/* 12C898 8003AA98 45030001 */  bc1tl      .L8003AAA0
/* 12C89C 8003AA9C E6380038 */   swc1      $f24, 0x38($s1)
.L8003AAA0:
/* 12C8A0 8003AAA0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12C8A4 8003AAA4 C42CA06C */  lwc1       $f12, %lo(D_8014A06C)($at)
/* 12C8A8 8003AAA8 C62E0044 */  lwc1       $f14, 0x44($s1)
/* 12C8AC 8003AAAC 0C00BC51 */  jal        func_8002F144_120F44
/* 12C8B0 8003AAB0 8E260040 */   lw        $a2, 0x40($s1)
/* 12C8B4 8003AAB4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12C8B8 8003AAB8 E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 12C8BC 8003AABC C6220044 */  lwc1       $f2, 0x44($s1)
/* 12C8C0 8003AAC0 46020032 */  c.eq.s     $f0, $f2
/* 12C8C4 8003AAC4 00000000 */  nop
/* 12C8C8 8003AAC8 00000000 */  nop
/* 12C8CC 8003AACC 45030001 */  bc1tl      .L8003AAD4
/* 12C8D0 8003AAD0 E6380040 */   swc1      $f24, 0x40($s1)
.L8003AAD4:
/* 12C8D4 8003AAD4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12C8D8 8003AAD8 C42CA088 */  lwc1       $f12, %lo(D_8014A088)($at)
/* 12C8DC 8003AADC C62E002C */  lwc1       $f14, 0x2c($s1)
/* 12C8E0 8003AAE0 0C00BC51 */  jal        func_8002F144_120F44
/* 12C8E4 8003AAE4 8E260028 */   lw        $a2, 0x28($s1)
/* 12C8E8 8003AAE8 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12C8EC 8003AAEC E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 12C8F0 8003AAF0 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12C8F4 8003AAF4 8E240000 */   lw        $a0, ($s1)
/* 12C8F8 8003AAF8 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12C8FC 8003AAFC 8E240004 */   lw        $a0, 4($s1)
/* 12C900 8003AB00 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12C904 8003AB04 8E240000 */   lw        $a0, ($s1)
/* 12C908 8003AB08 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12C90C 8003AB0C 8E240004 */   lw        $a0, 4($s1)
/* 12C910 8003AB10 00001021 */  addu       $v0, $zero, $zero
/* 12C914 8003AB14 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12C918 8003AB18 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C91C 8003AB1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C920 8003AB20 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 12C924 8003AB24 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 12C928 8003AB28 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12C92C 8003AB2C 03E00008 */  jr         $ra
/* 12C930 8003AB30 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003AB34_12C934
/* 12C934 8003AB34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12C938 8003AB38 AFB00010 */  sw         $s0, 0x10($sp)
/* 12C93C 8003AB3C 00808021 */  addu       $s0, $a0, $zero
/* 12C940 8003AB40 1200000D */  beqz       $s0, .L8003AB78
/* 12C944 8003AB44 AFBF0014 */   sw        $ra, 0x14($sp)
/* 12C948 8003AB48 8E040000 */  lw         $a0, ($s0)
/* 12C94C 8003AB4C 1080000A */  beqz       $a0, .L8003AB78
/* 12C950 8003AB50 00000000 */   nop
/* 12C954 8003AB54 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12C958 8003AB58 00000000 */   nop
/* 12C95C 8003AB5C 8E040000 */  lw         $a0, ($s0)
/* 12C960 8003AB60 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12C964 8003AB64 24840004 */   addiu     $a0, $a0, 4
/* 12C968 8003AB68 8E040000 */  lw         $a0, ($s0)
/* 12C96C 8003AB6C 0C0326A1 */  jal        func_800C9A84
/* 12C970 8003AB70 00000000 */   nop
/* 12C974 8003AB74 AE000000 */  sw         $zero, ($s0)
.L8003AB78:
/* 12C978 8003AB78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12C97C 8003AB7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C980 8003AB80 03E00008 */  jr         $ra
/* 12C984 8003AB84 27BD0018 */   addiu     $sp, $sp, 0x18
/* 12C988 8003AB88 00000000 */  nop
/* 12C98C 8003AB8C 00000000 */  nop