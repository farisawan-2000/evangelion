.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8004A6F0_13C4F0
/* 13C4F0 8004A6F0 3C028005 */  lui        $v0, %hi(D_80052E60)
/* 13C4F4 8004A6F4 90422E60 */  lbu        $v0, %lo(D_80052E60)($v0)
/* 13C4F8 8004A6F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C4FC 8004A6FC AFB1001C */  sw         $s1, 0x1c($sp)
/* 13C500 8004A700 00808821 */  addu       $s1, $a0, $zero
/* 13C504 8004A704 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13C508 8004A708 10400079 */  beqz       $v0, .L8004A8F0
/* 13C50C 8004A70C AFB00018 */   sw        $s0, 0x18($sp)
/* 13C510 8004A710 0C02A5D2 */  jal        func_800A9748
/* 13C514 8004A714 24040001 */   addiu     $a0, $zero, 1
/* 13C518 8004A718 0C02725C */  jal        func_8009C970
/* 13C51C 8004A71C 00000000 */   nop
/* 13C520 8004A720 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 13C524 8004A724 0C0E47CB */  jal        func_80391F2C
/* 13C528 8004A728 8C84D07C */   lw        $a0, %lo(D_8016D07C)($a0)
/* 13C52C 8004A72C 28420002 */  slti       $v0, $v0, 2
/* 13C530 8004A730 1440000E */  bnez       $v0, .L8004A76C
/* 13C534 8004A734 00000000 */   nop
/* 13C538 8004A738 3C018006 */  lui        $at, %hi(D_8005CEC0)
/* 13C53C 8004A73C 8C26CEC0 */  lw         $a2, %lo(D_8005CEC0)($at)
/* 13C540 8004A740 8C27CEC4 */  lw         $a3, -0x313c($at)
/* 13C544 8004A744 3C0141A0 */  lui        $at, 0x41a0
/* 13C548 8004A748 44810000 */  mtc1       $at, $f0
/* 13C54C 8004A74C 3C014208 */  lui        $at, 0x4208
/* 13C550 8004A750 44811000 */  mtc1       $at, $f2
/* 13C554 8004A754 3C01C220 */  lui        $at, 0xc220
/* 13C558 8004A758 44812000 */  mtc1       $at, $f4
/* 13C55C 8004A75C 3C01C258 */  lui        $at, 0xc258
/* 13C560 8004A760 44813000 */  mtc1       $at, $f6
/* 13C564 8004A764 080129E6 */  j          .L8004A798
/* 13C568 8004A768 00000000 */   nop
.L8004A76C:
/* 13C56C 8004A76C 3C018006 */  lui        $at, %hi(D_8005CEC8)
/* 13C570 8004A770 8C26CEC8 */  lw         $a2, %lo(D_8005CEC8)($at)
/* 13C574 8004A774 8C27CECC */  lw         $a3, -0x3134($at)
/* 13C578 8004A778 3C01C1A0 */  lui        $at, 0xc1a0
/* 13C57C 8004A77C 44810000 */  mtc1       $at, $f0
/* 13C580 8004A780 3C014208 */  lui        $at, 0x4208
/* 13C584 8004A784 44811000 */  mtc1       $at, $f2
/* 13C588 8004A788 3C01C220 */  lui        $at, 0xc220
/* 13C58C 8004A78C 44812000 */  mtc1       $at, $f4
/* 13C590 8004A790 3C014258 */  lui        $at, 0x4258
/* 13C594 8004A794 44813000 */  mtc1       $at, $f6
.L8004A798:
/* 13C598 8004A798 3C01C2C8 */  lui        $at, 0xc2c8
/* 13C59C 8004A79C 44814000 */  mtc1       $at, $f8
/* 13C5A0 8004A7A0 24040010 */  addiu      $a0, $zero, 0x10
/* 13C5A4 8004A7A4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13C5A8 8004A7A8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13C5AC 8004A7AC 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13C5B0 8004A7B0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13C5B4 8004A7B4 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13C5B8 8004A7B8 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 13C5BC 8004A7BC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13C5C0 8004A7C0 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 13C5C4 8004A7C4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13C5C8 8004A7C8 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 13C5CC 8004A7CC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13C5D0 8004A7D0 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 13C5D4 8004A7D4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13C5D8 8004A7D8 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
/* 13C5DC 8004A7DC 0C009A78 */  jal        func_800269E0_1187E0
/* 13C5E0 8004A7E0 240500B4 */   addiu     $a1, $zero, 0xb4
/* 13C5E4 8004A7E4 3C018006 */  lui        $at, %hi(D_8005CED0)
/* 13C5E8 8004A7E8 8C26CED0 */  lw         $a2, %lo(D_8005CED0)($at)
/* 13C5EC 8004A7EC 8C27CED4 */  lw         $a3, -0x312c($at)
/* 13C5F0 8004A7F0 24040011 */  addiu      $a0, $zero, 0x11
/* 13C5F4 8004A7F4 0C009A78 */  jal        func_800269E0_1187E0
/* 13C5F8 8004A7F8 240500B4 */   addiu     $a1, $zero, 0xb4
/* 13C5FC 8004A7FC 24040012 */  addiu      $a0, $zero, 0x12
/* 13C600 8004A800 00003021 */  addu       $a2, $zero, $zero
/* 13C604 8004A804 00003821 */  addu       $a3, $zero, $zero
/* 13C608 8004A808 0C009A78 */  jal        func_800269E0_1187E0
/* 13C60C 8004A80C 240500B4 */   addiu     $a1, $zero, 0xb4
/* 13C610 8004A810 3C018006 */  lui        $at, %hi(D_8005CED8)
/* 13C614 8004A814 8C26CED8 */  lw         $a2, %lo(D_8005CED8)($at)
/* 13C618 8004A818 8C27CEDC */  lw         $a3, -0x3124($at)
/* 13C61C 8004A81C 24040013 */  addiu      $a0, $zero, 0x13
/* 13C620 8004A820 0C009A78 */  jal        func_800269E0_1187E0
/* 13C624 8004A824 240500B4 */   addiu     $a1, $zero, 0xb4
/* 13C628 8004A828 24040053 */  addiu      $a0, $zero, 0x53
/* 13C62C 8004A82C 24050048 */  addiu      $a1, $zero, 0x48
/* 13C630 8004A830 24060053 */  addiu      $a2, $zero, 0x53
/* 13C634 8004A834 240700FF */  addiu      $a3, $zero, 0xff
/* 13C638 8004A838 240200E6 */  addiu      $v0, $zero, 0xe6
/* 13C63C 8004A83C AFA20010 */  sw         $v0, 0x10($sp)
/* 13C640 8004A840 240200DC */  addiu      $v0, $zero, 0xdc
/* 13C644 8004A844 0C027101 */  jal        func_8009C404
/* 13C648 8004A848 AFA20014 */   sw        $v0, 0x14($sp)
/* 13C64C 8004A84C 3C014170 */  lui        $at, 0x4170
/* 13C650 8004A850 44810000 */  mtc1       $at, $f0
/* 13C654 8004A854 3C014180 */  lui        $at, 0x4180
/* 13C658 8004A858 44811000 */  mtc1       $at, $f2
/* 13C65C 8004A85C 3C01C1C0 */  lui        $at, 0xc1c0
/* 13C660 8004A860 44812000 */  mtc1       $at, $f4
/* 13C664 8004A864 3C014130 */  lui        $at, 0x4130
/* 13C668 8004A868 44813000 */  mtc1       $at, $f6
/* 13C66C 8004A86C 3C0140A0 */  lui        $at, 0x40a0
/* 13C670 8004A870 44814000 */  mtc1       $at, $f8
/* 13C674 8004A874 3C01C190 */  lui        $at, 0xc190
/* 13C678 8004A878 44815000 */  mtc1       $at, $f10
/* 13C67C 8004A87C 3C018017 */  lui        $at, %hi(D_8016E568)
/* 13C680 8004A880 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 13C684 8004A884 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 13C688 8004A888 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 13C68C 8004A88C 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 13C690 8004A890 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 13C694 8004A894 3C018015 */  lui        $at, %hi(D_8014A054)
/* 13C698 8004A898 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 13C69C 8004A89C 3C018015 */  lui        $at, %hi(D_8014A050)
/* 13C6A0 8004A8A0 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 13C6A4 8004A8A4 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 13C6A8 8004A8A8 0C012A60 */  jal        func_8004A980_13C780
/* 13C6AC 8004A8AC E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 13C6B0 8004A8B0 3C108008 */  lui        $s0, %hi(D_80080750)
/* 13C6B4 8004A8B4 26100750 */  addiu      $s0, $s0, %lo(D_80080750)
/* 13C6B8 8004A8B8 02002021 */  addu       $a0, $s0, $zero
/* 13C6BC 8004A8BC 3C018006 */  lui        $at, %hi(D_8005E020)
/* 13C6C0 8004A8C0 AC22E020 */  sw         $v0, %lo(D_8005E020)($at)
/* 13C6C4 8004A8C4 0C00A157 */  jal        func_8002855C_11A35C
/* 13C6C8 8004A8C8 2405000D */   addiu     $a1, $zero, 0xd
/* 13C6CC 8004A8CC 3C05C248 */  lui        $a1, 0xc248
/* 13C6D0 8004A8D0 44800000 */  mtc1       $zero, $f0
/* 13C6D4 8004A8D4 00000000 */  nop
/* 13C6D8 8004A8D8 44060000 */  mfc1       $a2, $f0
/* 13C6DC 8004A8DC 02002021 */  addu       $a0, $s0, $zero
/* 13C6E0 8004A8E0 0C00A18C */  jal        func_80028630_11A430
/* 13C6E4 8004A8E4 00C03821 */   addu      $a3, $a2, $zero
/* 13C6E8 8004A8E8 3C018005 */  lui        $at, %hi(D_80052E60)
/* 13C6EC 8004A8EC A0202E60 */  sb         $zero, %lo(D_80052E60)($at)
.L8004A8F0:
/* 13C6F0 8004A8F0 16200003 */  bnez       $s1, .L8004A900
/* 13C6F4 8004A8F4 24020001 */   addiu     $v0, $zero, 1
/* 13C6F8 8004A8F8 3C018005 */  lui        $at, %hi(D_80052E64)
/* 13C6FC 8004A8FC AC222E64 */  sw         $v0, %lo(D_80052E64)($at)
.L8004A900:
/* 13C700 8004A900 3C028005 */  lui        $v0, %hi(D_80052E64)
/* 13C704 8004A904 8C422E64 */  lw         $v0, %lo(D_80052E64)($v0)
/* 13C708 8004A908 1440000C */  bnez       $v0, .L8004A93C
/* 13C70C 8004A90C 00000000 */   nop
/* 13C710 8004A910 3C048006 */  lui        $a0, %hi(D_8005E020)
/* 13C714 8004A914 0C012B27 */  jal        func_8004AC9C_13CA9C
/* 13C718 8004A918 8C84E020 */   lw        $a0, %lo(D_8005E020)($a0)
/* 13C71C 8004A91C 3C018005 */  lui        $at, %hi(D_80052E64)
/* 13C720 8004A920 0C009767 */  jal        func_80025D9C_117B9C
/* 13C724 8004A924 AC222E64 */   sw        $v0, %lo(D_80052E64)($at)
/* 13C728 8004A928 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13C72C 8004A92C 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 13C730 8004A930 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13C734 8004A934 08012A5B */  j          .L8004A96C
/* 13C738 8004A938 00001021 */   addu      $v0, $zero, $zero
.L8004A93C:
/* 13C73C 8004A93C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13C740 8004A940 0C00A16B */  jal        func_800285AC_11A3AC
/* 13C744 8004A944 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13C748 8004A948 3C048006 */  lui        $a0, %hi(D_8005E020)
/* 13C74C 8004A94C 0C012B97 */  jal        func_8004AE5C_13CC5C
/* 13C750 8004A950 2484E020 */   addiu     $a0, $a0, %lo(D_8005E020)
/* 13C754 8004A954 24020001 */  addiu      $v0, $zero, 1
/* 13C758 8004A958 24030001 */  addiu      $v1, $zero, 1
/* 13C75C 8004A95C 3C018005 */  lui        $at, %hi(D_80052E64)
/* 13C760 8004A960 AC202E64 */  sw         $zero, %lo(D_80052E64)($at)
/* 13C764 8004A964 3C018005 */  lui        $at, %hi(D_80052E60)
/* 13C768 8004A968 A0232E60 */  sb         $v1, %lo(D_80052E60)($at)
.L8004A96C:
/* 13C76C 8004A96C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13C770 8004A970 8FB1001C */  lw         $s1, 0x1c($sp)
/* 13C774 8004A974 8FB00018 */  lw         $s0, 0x18($sp)
/* 13C778 8004A978 03E00008 */  jr         $ra
/* 13C77C 8004A97C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004A980_13C780
/* 13C780 8004A980 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C784 8004A984 24040024 */  addiu      $a0, $zero, 0x24
/* 13C788 8004A988 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13C78C 8004A98C AFB3001C */  sw         $s3, 0x1c($sp)
/* 13C790 8004A990 AFB20018 */  sw         $s2, 0x18($sp)
/* 13C794 8004A994 AFB10014 */  sw         $s1, 0x14($sp)
/* 13C798 8004A998 0C032663 */  jal        func_800C998C
/* 13C79C 8004A99C AFB00010 */   sw        $s0, 0x10($sp)
/* 13C7A0 8004A9A0 00409821 */  addu       $s3, $v0, $zero
/* 13C7A4 8004A9A4 02602021 */  addu       $a0, $s3, $zero
/* 13C7A8 8004A9A8 0C030134 */  jal        bzero
/* 13C7AC 8004A9AC 24050024 */   addiu     $a1, $zero, 0x24
/* 13C7B0 8004A9B0 24020064 */  addiu      $v0, $zero, 0x64
/* 13C7B4 8004A9B4 A6620020 */  sh         $v0, 0x20($s3)
/* 13C7B8 8004A9B8 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 13C7BC 8004A9BC 0C0E47CB */  jal        func_80391F2C
/* 13C7C0 8004A9C0 8C84D07C */   lw        $a0, %lo(D_8016D07C)($a0)
/* 13C7C4 8004A9C4 28420002 */  slti       $v0, $v0, 2
/* 13C7C8 8004A9C8 10400049 */  beqz       $v0, .L8004AAF0
/* 13C7CC 8004A9CC 24110001 */   addiu     $s1, $zero, 1
/* 13C7D0 8004A9D0 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C7D4 8004A9D4 A671001C */   sh        $s1, 0x1c($s3)
/* 13C7D8 8004A9D8 00402021 */  addu       $a0, $v0, $zero
/* 13C7DC 8004A9DC 24120007 */  addiu      $s2, $zero, 7
/* 13C7E0 8004A9E0 3C108006 */  lui        $s0, %hi(D_8005E1E0)
/* 13C7E4 8004A9E4 2610E1E0 */  addiu      $s0, $s0, %lo(D_8005E1E0)
/* 13C7E8 8004A9E8 AE640000 */  sw         $a0, ($s3)
/* 13C7EC 8004A9EC AC92001C */  sw         $s2, 0x1c($a0)
/* 13C7F0 8004A9F0 86030000 */  lh         $v1, ($s0)
/* 13C7F4 8004A9F4 3C0142B4 */  lui        $at, 0x42b4
/* 13C7F8 8004A9F8 44810000 */  mtc1       $at, $f0
/* 13C7FC 8004A9FC 000310C0 */  sll        $v0, $v1, 3
/* 13C800 8004AA00 00431023 */  subu       $v0, $v0, $v1
/* 13C804 8004AA04 00021080 */  sll        $v0, $v0, 2
/* 13C808 8004AA08 3C038006 */  lui        $v1, %hi(D_8005CEF4)
/* 13C80C 8004AA0C 00621821 */  addu       $v1, $v1, $v0
/* 13C810 8004AA10 8C63CEF4 */  lw         $v1, %lo(D_8005CEF4)($v1)
/* 13C814 8004AA14 AC800044 */  sw         $zero, 0x44($a0)
/* 13C818 8004AA18 A48000F2 */  sh         $zero, 0xf2($a0)
/* 13C81C 8004AA1C A49100F0 */  sh         $s1, 0xf0($a0)
/* 13C820 8004AA20 24020089 */  addiu      $v0, $zero, 0x89
/* 13C824 8004AA24 AC820008 */  sw         $v0, 8($a0)
/* 13C828 8004AA28 24020002 */  addiu      $v0, $zero, 2
/* 13C82C 8004AA2C AC82000C */  sw         $v0, 0xc($a0)
/* 13C830 8004AA30 E4800054 */  swc1       $f0, 0x54($a0)
/* 13C834 8004AA34 AC830004 */  sw         $v1, 4($a0)
/* 13C838 8004AA38 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C83C 8004AA3C 8E640000 */   lw        $a0, ($s3)
/* 13C840 8004AA40 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C844 8004AA44 00000000 */   nop
/* 13C848 8004AA48 00402021 */  addu       $a0, $v0, $zero
/* 13C84C 8004AA4C AE64000C */  sw         $a0, 0xc($s3)
/* 13C850 8004AA50 AC92001C */  sw         $s2, 0x1c($a0)
/* 13C854 8004AA54 86030000 */  lh         $v1, ($s0)
/* 13C858 8004AA58 000310C0 */  sll        $v0, $v1, 3
/* 13C85C 8004AA5C 00431023 */  subu       $v0, $v0, $v1
/* 13C860 8004AA60 00021080 */  sll        $v0, $v0, 2
/* 13C864 8004AA64 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 13C868 8004AA68 00220821 */  addu       $at, $at, $v0
/* 13C86C 8004AA6C 8C22CEF8 */  lw         $v0, %lo(D_8005CEF8)($at)
/* 13C870 8004AA70 AC820004 */  sw         $v0, 4($a0)
/* 13C874 8004AA74 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C878 8004AA78 8E64000C */   lw        $a0, 0xc($s3)
/* 13C87C 8004AA7C 8E620000 */  lw         $v0, ($s3)
/* 13C880 8004AA80 8E63000C */  lw         $v1, 0xc($s3)
/* 13C884 8004AA84 8C440034 */  lw         $a0, 0x34($v0)
/* 13C888 8004AA88 8C660034 */  lw         $a2, 0x34($v1)
/* 13C88C 8004AA8C 3C058006 */  lui        $a1, %hi(D_8005CEE0)
/* 13C890 8004AA90 24A5CEE0 */  addiu      $a1, $a1, %lo(D_8005CEE0)
/* 13C894 8004AA94 0C02864D */  jal        func_800A1934
/* 13C898 8004AA98 00A03821 */   addu      $a3, $a1, $zero
/* 13C89C 8004AA9C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C8A0 8004AAA0 00000000 */   nop
/* 13C8A4 8004AAA4 00402021 */  addu       $a0, $v0, $zero
/* 13C8A8 8004AAA8 24020003 */  addiu      $v0, $zero, 3
/* 13C8AC 8004AAAC AE640010 */  sw         $a0, 0x10($s3)
/* 13C8B0 8004AAB0 AC82001C */  sw         $v0, 0x1c($a0)
/* 13C8B4 8004AAB4 86030000 */  lh         $v1, ($s0)
/* 13C8B8 8004AAB8 3C013F80 */  lui        $at, 0x3f80
/* 13C8BC 8004AABC 44810000 */  mtc1       $at, $f0
/* 13C8C0 8004AAC0 000310C0 */  sll        $v0, $v1, 3
/* 13C8C4 8004AAC4 00431023 */  subu       $v0, $v0, $v1
/* 13C8C8 8004AAC8 00021080 */  sll        $v0, $v0, 2
/* 13C8CC 8004AACC 3C018006 */  lui        $at, %hi(D_8005CEFC)
/* 13C8D0 8004AAD0 00220821 */  addu       $at, $at, $v0
/* 13C8D4 8004AAD4 8C22CEFC */  lw         $v0, %lo(D_8005CEFC)($at)
/* 13C8D8 8004AAD8 E480005C */  swc1       $f0, 0x5c($a0)
/* 13C8DC 8004AADC AC820004 */  sw         $v0, 4($a0)
/* 13C8E0 8004AAE0 8E630000 */  lw         $v1, ($s3)
/* 13C8E4 8004AAE4 8E620010 */  lw         $v0, 0x10($s3)
/* 13C8E8 8004AAE8 08012ABD */  j          .L8004AAF4
/* 13C8EC 8004AAEC AC620100 */   sw        $v0, 0x100($v1)
.L8004AAF0:
/* 13C8F0 8004AAF0 A660001C */  sh         $zero, 0x1c($s3)
.L8004AAF4:
/* 13C8F4 8004AAF4 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 13C8F8 8004AAF8 0C0E47CB */  jal        func_80391F2C
/* 13C8FC 8004AAFC 8C84D07C */   lw        $a0, %lo(D_8016D07C)($a0)
/* 13C900 8004AB00 28420002 */  slti       $v0, $v0, 2
/* 13C904 8004AB04 54400050 */  bnezl      $v0, .L8004AC48
/* 13C908 8004AB08 A660001E */   sh        $zero, 0x1e($s3)
/* 13C90C 8004AB0C 3C048017 */  lui        $a0, %hi(D_8016D080)
/* 13C910 8004AB10 0C0E47CB */  jal        func_80391F2C
/* 13C914 8004AB14 8C84D080 */   lw        $a0, %lo(D_8016D080)($a0)
/* 13C918 8004AB18 28420002 */  slti       $v0, $v0, 2
/* 13C91C 8004AB1C 10400049 */  beqz       $v0, .L8004AC44
/* 13C920 8004AB20 24100001 */   addiu     $s0, $zero, 1
/* 13C924 8004AB24 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C928 8004AB28 A670001E */   sh        $s0, 0x1e($s3)
/* 13C92C 8004AB2C 00402021 */  addu       $a0, $v0, $zero
/* 13C930 8004AB30 24120007 */  addiu      $s2, $zero, 7
/* 13C934 8004AB34 3C118006 */  lui        $s1, %hi(D_8005E1E2)
/* 13C938 8004AB38 2631E1E2 */  addiu      $s1, $s1, %lo(D_8005E1E2)
/* 13C93C 8004AB3C AE640004 */  sw         $a0, 4($s3)
/* 13C940 8004AB40 AC92001C */  sw         $s2, 0x1c($a0)
/* 13C944 8004AB44 86230000 */  lh         $v1, ($s1)
/* 13C948 8004AB48 3C01C2B4 */  lui        $at, 0xc2b4
/* 13C94C 8004AB4C 44810000 */  mtc1       $at, $f0
/* 13C950 8004AB50 000310C0 */  sll        $v0, $v1, 3
/* 13C954 8004AB54 00431023 */  subu       $v0, $v0, $v1
/* 13C958 8004AB58 00021080 */  sll        $v0, $v0, 2
/* 13C95C 8004AB5C 3C038006 */  lui        $v1, %hi(D_8005CEF4)
/* 13C960 8004AB60 00621821 */  addu       $v1, $v1, $v0
/* 13C964 8004AB64 8C63CEF4 */  lw         $v1, %lo(D_8005CEF4)($v1)
/* 13C968 8004AB68 AC800044 */  sw         $zero, 0x44($a0)
/* 13C96C 8004AB6C A49000F2 */  sh         $s0, 0xf2($a0)
/* 13C970 8004AB70 A49000F0 */  sh         $s0, 0xf0($a0)
/* 13C974 8004AB74 24020089 */  addiu      $v0, $zero, 0x89
/* 13C978 8004AB78 AC820008 */  sw         $v0, 8($a0)
/* 13C97C 8004AB7C 24020002 */  addiu      $v0, $zero, 2
/* 13C980 8004AB80 AC82000C */  sw         $v0, 0xc($a0)
/* 13C984 8004AB84 E4800054 */  swc1       $f0, 0x54($a0)
/* 13C988 8004AB88 AC830004 */  sw         $v1, 4($a0)
/* 13C98C 8004AB8C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C990 8004AB90 8E640004 */   lw        $a0, 4($s3)
/* 13C994 8004AB94 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C998 8004AB98 00000000 */   nop
/* 13C99C 8004AB9C 00402021 */  addu       $a0, $v0, $zero
/* 13C9A0 8004ABA0 AE640014 */  sw         $a0, 0x14($s3)
/* 13C9A4 8004ABA4 AC92001C */  sw         $s2, 0x1c($a0)
/* 13C9A8 8004ABA8 86230000 */  lh         $v1, ($s1)
/* 13C9AC 8004ABAC 000310C0 */  sll        $v0, $v1, 3
/* 13C9B0 8004ABB0 00431023 */  subu       $v0, $v0, $v1
/* 13C9B4 8004ABB4 00021080 */  sll        $v0, $v0, 2
/* 13C9B8 8004ABB8 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 13C9BC 8004ABBC 00220821 */  addu       $at, $at, $v0
/* 13C9C0 8004ABC0 8C22CEF8 */  lw         $v0, %lo(D_8005CEF8)($at)
/* 13C9C4 8004ABC4 AC820004 */  sw         $v0, 4($a0)
/* 13C9C8 8004ABC8 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C9CC 8004ABCC 8E640014 */   lw        $a0, 0x14($s3)
/* 13C9D0 8004ABD0 8E620004 */  lw         $v0, 4($s3)
/* 13C9D4 8004ABD4 8E630014 */  lw         $v1, 0x14($s3)
/* 13C9D8 8004ABD8 8C440034 */  lw         $a0, 0x34($v0)
/* 13C9DC 8004ABDC 8C660034 */  lw         $a2, 0x34($v1)
/* 13C9E0 8004ABE0 3C058006 */  lui        $a1, %hi(D_8005CEE0)
/* 13C9E4 8004ABE4 24A5CEE0 */  addiu      $a1, $a1, %lo(D_8005CEE0)
/* 13C9E8 8004ABE8 0C02864D */  jal        func_800A1934
/* 13C9EC 8004ABEC 00A03821 */   addu      $a3, $a1, $zero
/* 13C9F0 8004ABF0 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C9F4 8004ABF4 00000000 */   nop
/* 13C9F8 8004ABF8 00402021 */  addu       $a0, $v0, $zero
/* 13C9FC 8004ABFC 24020003 */  addiu      $v0, $zero, 3
/* 13CA00 8004AC00 AE640018 */  sw         $a0, 0x18($s3)
/* 13CA04 8004AC04 AC82001C */  sw         $v0, 0x1c($a0)
/* 13CA08 8004AC08 86230000 */  lh         $v1, ($s1)
/* 13CA0C 8004AC0C 3C013F80 */  lui        $at, 0x3f80
/* 13CA10 8004AC10 44810000 */  mtc1       $at, $f0
/* 13CA14 8004AC14 000310C0 */  sll        $v0, $v1, 3
/* 13CA18 8004AC18 00431023 */  subu       $v0, $v0, $v1
/* 13CA1C 8004AC1C 00021080 */  sll        $v0, $v0, 2
/* 13CA20 8004AC20 3C018006 */  lui        $at, %hi(D_8005CEFC)
/* 13CA24 8004AC24 00220821 */  addu       $at, $at, $v0
/* 13CA28 8004AC28 8C22CEFC */  lw         $v0, %lo(D_8005CEFC)($at)
/* 13CA2C 8004AC2C E480005C */  swc1       $f0, 0x5c($a0)
/* 13CA30 8004AC30 AC820004 */  sw         $v0, 4($a0)
/* 13CA34 8004AC34 8E630004 */  lw         $v1, 4($s3)
/* 13CA38 8004AC38 8E620018 */  lw         $v0, 0x18($s3)
/* 13CA3C 8004AC3C 08012B12 */  j          .L8004AC48
/* 13CA40 8004AC40 AC620100 */   sw        $v0, 0x100($v1)
.L8004AC44:
/* 13CA44 8004AC44 A660001E */  sh         $zero, 0x1e($s3)
.L8004AC48:
/* 13CA48 8004AC48 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13CA4C 8004AC4C 00000000 */   nop
/* 13CA50 8004AC50 3C013DF5 */  lui        $at, 0x3df5
/* 13CA54 8004AC54 3421C28F */  ori        $at, $at, 0xc28f
/* 13CA58 8004AC58 44810000 */  mtc1       $at, $f0
/* 13CA5C 8004AC5C 00402021 */  addu       $a0, $v0, $zero
/* 13CA60 8004AC60 02601021 */  addu       $v0, $s3, $zero
/* 13CA64 8004AC64 24030011 */  addiu      $v1, $zero, 0x11
/* 13CA68 8004AC68 AC440008 */  sw         $a0, 8($v0)
/* 13CA6C 8004AC6C AC83001C */  sw         $v1, 0x1c($a0)
/* 13CA70 8004AC70 240300A1 */  addiu      $v1, $zero, 0xa1
/* 13CA74 8004AC74 AC830004 */  sw         $v1, 4($a0)
/* 13CA78 8004AC78 AC800044 */  sw         $zero, 0x44($a0)
/* 13CA7C 8004AC7C E480005C */  swc1       $f0, 0x5c($a0)
/* 13CA80 8004AC80 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13CA84 8004AC84 8FB3001C */  lw         $s3, 0x1c($sp)
/* 13CA88 8004AC88 8FB20018 */  lw         $s2, 0x18($sp)
/* 13CA8C 8004AC8C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13CA90 8004AC90 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CA94 8004AC94 03E00008 */  jr         $ra
/* 13CA98 8004AC98 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004AC9C_13CA9C
/* 13CA9C 8004AC9C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13CAA0 8004ACA0 AFB00018 */  sw         $s0, 0x18($sp)
/* 13CAA4 8004ACA4 00808021 */  addu       $s0, $a0, $zero
/* 13CAA8 8004ACA8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13CAAC 8004ACAC AFB1001C */  sw         $s1, 0x1c($sp)
/* 13CAB0 8004ACB0 9602001C */  lhu        $v0, 0x1c($s0)
/* 13CAB4 8004ACB4 00002021 */  addu       $a0, $zero, $zero
/* 13CAB8 8004ACB8 1040000A */  beqz       $v0, .L8004ACE4
/* 13CABC 8004ACBC 00008821 */   addu      $s1, $zero, $zero
/* 13CAC0 8004ACC0 8E020000 */  lw         $v0, ($s0)
/* 13CAC4 8004ACC4 8C420038 */  lw         $v0, 0x38($v0)
/* 13CAC8 8004ACC8 10400007 */  beqz       $v0, .L8004ACE8
/* 13CACC 8004ACCC 00000000 */   nop
/* 13CAD0 8004ACD0 8442001E */  lh         $v0, 0x1e($v0)
/* 13CAD4 8004ACD4 384200FF */  xori       $v0, $v0, 0xff
/* 13CAD8 8004ACD8 2C420001 */  sltiu      $v0, $v0, 1
/* 13CADC 8004ACDC 08012B3A */  j          .L8004ACE8
/* 13CAE0 8004ACE0 00402021 */   addu      $a0, $v0, $zero
.L8004ACE4:
/* 13CAE4 8004ACE4 24040001 */  addiu      $a0, $zero, 1
.L8004ACE8:
/* 13CAE8 8004ACE8 9602001E */  lhu        $v0, 0x1e($s0)
/* 13CAEC 8004ACEC 5040000A */  beql       $v0, $zero, .L8004AD18
/* 13CAF0 8004ACF0 24840001 */   addiu     $a0, $a0, 1
/* 13CAF4 8004ACF4 8E020004 */  lw         $v0, 4($s0)
/* 13CAF8 8004ACF8 8C420038 */  lw         $v0, 0x38($v0)
/* 13CAFC 8004ACFC 10400007 */  beqz       $v0, .L8004AD1C
/* 13CB00 8004AD00 3083FFFF */   andi      $v1, $a0, 0xffff
/* 13CB04 8004AD04 8443001E */  lh         $v1, 0x1e($v0)
/* 13CB08 8004AD08 240200FF */  addiu      $v0, $zero, 0xff
/* 13CB0C 8004AD0C 14620003 */  bne        $v1, $v0, .L8004AD1C
/* 13CB10 8004AD10 3083FFFF */   andi      $v1, $a0, 0xffff
/* 13CB14 8004AD14 24840001 */  addiu      $a0, $a0, 1
.L8004AD18:
/* 13CB18 8004AD18 3083FFFF */  andi       $v1, $a0, 0xffff
.L8004AD1C:
/* 13CB1C 8004AD1C 24020002 */  addiu      $v0, $zero, 2
/* 13CB20 8004AD20 14620012 */  bne        $v1, $v0, .L8004AD6C
/* 13CB24 8004AD24 2402000A */   addiu     $v0, $zero, 0xa
/* 13CB28 8004AD28 96030020 */  lhu        $v1, 0x20($s0)
/* 13CB2C 8004AD2C 14620009 */  bne        $v1, $v0, .L8004AD54
/* 13CB30 8004AD30 00000000 */   nop
/* 13CB34 8004AD34 0C02A5C1 */  jal        func_800A9704
/* 13CB38 8004AD38 2404000A */   addiu     $a0, $zero, 0xa
/* 13CB3C 8004AD3C AFA00010 */  sw         $zero, 0x10($sp)
/* 13CB40 8004AD40 2404FFFE */  addiu      $a0, $zero, -2
/* 13CB44 8004AD44 2405FFFF */  addiu      $a1, $zero, -1
/* 13CB48 8004AD48 2406000A */  addiu      $a2, $zero, 0xa
/* 13CB4C 8004AD4C 0C026C9A */  jal        func_8009B268
/* 13CB50 8004AD50 00003821 */   addu      $a3, $zero, $zero
.L8004AD54:
/* 13CB54 8004AD54 96020020 */  lhu        $v0, 0x20($s0)
/* 13CB58 8004AD58 10400003 */  beqz       $v0, .L8004AD68
/* 13CB5C 8004AD5C 2442FFFF */   addiu     $v0, $v0, -1
/* 13CB60 8004AD60 08012B5B */  j          .L8004AD6C
/* 13CB64 8004AD64 A6020020 */   sh        $v0, 0x20($s0)
.L8004AD68:
/* 13CB68 8004AD68 24110001 */  addiu      $s1, $zero, 1
.L8004AD6C:
/* 13CB6C 8004AD6C 9602001C */  lhu        $v0, 0x1c($s0)
/* 13CB70 8004AD70 10400005 */  beqz       $v0, .L8004AD88
/* 13CB74 8004AD74 00000000 */   nop
/* 13CB78 8004AD78 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13CB7C 8004AD7C 8E040000 */   lw        $a0, ($s0)
/* 13CB80 8004AD80 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13CB84 8004AD84 8E040010 */   lw        $a0, 0x10($s0)
.L8004AD88:
/* 13CB88 8004AD88 9602001E */  lhu        $v0, 0x1e($s0)
/* 13CB8C 8004AD8C 10400005 */  beqz       $v0, .L8004ADA4
/* 13CB90 8004AD90 00000000 */   nop
/* 13CB94 8004AD94 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13CB98 8004AD98 8E040004 */   lw        $a0, 4($s0)
/* 13CB9C 8004AD9C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13CBA0 8004ADA0 8E040018 */   lw        $a0, 0x18($s0)
.L8004ADA4:
/* 13CBA4 8004ADA4 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13CBA8 8004ADA8 8E040008 */   lw        $a0, 8($s0)
/* 13CBAC 8004ADAC 9602001C */  lhu        $v0, 0x1c($s0)
/* 13CBB0 8004ADB0 10400010 */  beqz       $v0, .L8004ADF4
/* 13CBB4 8004ADB4 00000000 */   nop
/* 13CBB8 8004ADB8 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13CBBC 8004ADBC 8E040000 */   lw        $a0, ($s0)
/* 13CBC0 8004ADC0 8E040000 */  lw         $a0, ($s0)
/* 13CBC4 8004ADC4 8E070010 */  lw         $a3, 0x10($s0)
/* 13CBC8 8004ADC8 3C058006 */  lui        $a1, %hi(D_8005CEE8)
/* 13CBCC 8004ADCC 24A5CEE8 */  addiu      $a1, $a1, %lo(D_8005CEE8)
/* 13CBD0 8004ADD0 00003021 */  addu       $a2, $zero, $zero
/* 13CBD4 8004ADD4 0C00B361 */  jal        func_8002CD84_11EB84
/* 13CBD8 8004ADD8 24E70060 */   addiu     $a3, $a3, 0x60
/* 13CBDC 8004ADDC 8E030010 */  lw         $v1, 0x10($s0)
/* 13CBE0 8004ADE0 8C620000 */  lw         $v0, ($v1)
/* 13CBE4 8004ADE4 34420001 */  ori        $v0, $v0, 1
/* 13CBE8 8004ADE8 AC620000 */  sw         $v0, ($v1)
/* 13CBEC 8004ADEC 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13CBF0 8004ADF0 8E040010 */   lw        $a0, 0x10($s0)
.L8004ADF4:
/* 13CBF4 8004ADF4 9602001E */  lhu        $v0, 0x1e($s0)
/* 13CBF8 8004ADF8 10400010 */  beqz       $v0, .L8004AE3C
/* 13CBFC 8004ADFC 00000000 */   nop
/* 13CC00 8004AE00 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13CC04 8004AE04 8E040004 */   lw        $a0, 4($s0)
/* 13CC08 8004AE08 8E040004 */  lw         $a0, 4($s0)
/* 13CC0C 8004AE0C 8E070018 */  lw         $a3, 0x18($s0)
/* 13CC10 8004AE10 3C058006 */  lui        $a1, %hi(D_8005CEE8)
/* 13CC14 8004AE14 24A5CEE8 */  addiu      $a1, $a1, %lo(D_8005CEE8)
/* 13CC18 8004AE18 00003021 */  addu       $a2, $zero, $zero
/* 13CC1C 8004AE1C 0C00B361 */  jal        func_8002CD84_11EB84
/* 13CC20 8004AE20 24E70060 */   addiu     $a3, $a3, 0x60
/* 13CC24 8004AE24 8E030018 */  lw         $v1, 0x18($s0)
/* 13CC28 8004AE28 8C620000 */  lw         $v0, ($v1)
/* 13CC2C 8004AE2C 34420001 */  ori        $v0, $v0, 1
/* 13CC30 8004AE30 AC620000 */  sw         $v0, ($v1)
/* 13CC34 8004AE34 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13CC38 8004AE38 8E040018 */   lw        $a0, 0x18($s0)
.L8004AE3C:
/* 13CC3C 8004AE3C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13CC40 8004AE40 8E040008 */   lw        $a0, 8($s0)
/* 13CC44 8004AE44 02201021 */  addu       $v0, $s1, $zero
/* 13CC48 8004AE48 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13CC4C 8004AE4C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 13CC50 8004AE50 8FB00018 */  lw         $s0, 0x18($sp)
/* 13CC54 8004AE54 03E00008 */  jr         $ra
/* 13CC58 8004AE58 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004AE5C_13CC5C
/* 13CC5C 8004AE5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13CC60 8004AE60 AFB00010 */  sw         $s0, 0x10($sp)
/* 13CC64 8004AE64 00808021 */  addu       $s0, $a0, $zero
/* 13CC68 8004AE68 12000022 */  beqz       $s0, .L8004AEF4
/* 13CC6C 8004AE6C AFBF0014 */   sw        $ra, 0x14($sp)
/* 13CC70 8004AE70 8E040000 */  lw         $a0, ($s0)
/* 13CC74 8004AE74 1080001F */  beqz       $a0, .L8004AEF4
/* 13CC78 8004AE78 00000000 */   nop
/* 13CC7C 8004AE7C 9482001C */  lhu        $v0, 0x1c($a0)
/* 13CC80 8004AE80 10400004 */  beqz       $v0, .L8004AE94
/* 13CC84 8004AE84 00000000 */   nop
/* 13CC88 8004AE88 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CC8C 8004AE8C 00000000 */   nop
/* 13CC90 8004AE90 8E040000 */  lw         $a0, ($s0)
.L8004AE94:
/* 13CC94 8004AE94 9482001E */  lhu        $v0, 0x1e($a0)
/* 13CC98 8004AE98 10400003 */  beqz       $v0, .L8004AEA8
/* 13CC9C 8004AE9C 00000000 */   nop
/* 13CCA0 8004AEA0 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CCA4 8004AEA4 24840004 */   addiu     $a0, $a0, 4
.L8004AEA8:
/* 13CCA8 8004AEA8 8E040000 */  lw         $a0, ($s0)
/* 13CCAC 8004AEAC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CCB0 8004AEB0 24840008 */   addiu     $a0, $a0, 8
/* 13CCB4 8004AEB4 8E040000 */  lw         $a0, ($s0)
/* 13CCB8 8004AEB8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CCBC 8004AEBC 2484000C */   addiu     $a0, $a0, 0xc
/* 13CCC0 8004AEC0 8E040000 */  lw         $a0, ($s0)
/* 13CCC4 8004AEC4 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CCC8 8004AEC8 24840010 */   addiu     $a0, $a0, 0x10
/* 13CCCC 8004AECC 8E040000 */  lw         $a0, ($s0)
/* 13CCD0 8004AED0 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CCD4 8004AED4 24840014 */   addiu     $a0, $a0, 0x14
/* 13CCD8 8004AED8 8E040000 */  lw         $a0, ($s0)
/* 13CCDC 8004AEDC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13CCE0 8004AEE0 24840018 */   addiu     $a0, $a0, 0x18
/* 13CCE4 8004AEE4 8E040000 */  lw         $a0, ($s0)
/* 13CCE8 8004AEE8 0C0326A1 */  jal        func_800C9A84
/* 13CCEC 8004AEEC 00000000 */   nop
/* 13CCF0 8004AEF0 AE000000 */  sw         $zero, ($s0)
.L8004AEF4:
/* 13CCF4 8004AEF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13CCF8 8004AEF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 13CCFC 8004AEFC 03E00008 */  jr         $ra
/* 13CD00 8004AF00 27BD0018 */   addiu     $sp, $sp, 0x18
/* 13CD04 8004AF04 00000000 */  nop
/* 13CD08 8004AF08 00000000 */  nop
/* 13CD0C 8004AF0C 00000000 */  nop