.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80028710_11A510
/* 11A510 80028710 3C028005 */  lui        $v0, %hi(D_800519B0)
/* 11A514 80028714 904219B0 */  lbu        $v0, %lo(D_800519B0)($v0)
/* 11A518 80028718 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A51C 8002871C AFB20020 */  sw         $s2, 0x20($sp)
/* 11A520 80028720 00809021 */  addu       $s2, $a0, $zero
/* 11A524 80028724 AFBF0024 */  sw         $ra, 0x24($sp)
/* 11A528 80028728 AFB1001C */  sw         $s1, 0x1c($sp)
/* 11A52C 8002872C 1040004F */  beqz       $v0, .L8002886C
/* 11A530 80028730 AFB00018 */   sw        $s0, 0x18($sp)
/* 11A534 80028734 0C02A5D2 */  jal        func_800A9748
/* 11A538 80028738 24040001 */   addiu     $a0, $zero, 1
/* 11A53C 8002873C 3C018006 */  lui        $at, %hi(D_8005DBB8)
/* 11A540 80028740 A420DBB8 */  sh         $zero, %lo(D_8005DBB8)($at)
/* 11A544 80028744 3C108006 */  lui        $s0, %hi(D_8005DBB0)
/* 11A548 80028748 2610DBB0 */  addiu      $s0, $s0, %lo(D_8005DBB0)
/* 11A54C 8002874C 3C118006 */  lui        $s1, %hi(D_8005A818)
/* 11A550 80028750 2631A818 */  addiu      $s1, $s1, %lo(D_8005A818)
.L80028754:
/* 11A554 80028754 0C032663 */  jal        func_800C998C
/* 11A558 80028758 24040088 */   addiu     $a0, $zero, 0x88
/* 11A55C 8002875C 3C038006 */  lui        $v1, %hi(D_8005DBB8)
/* 11A560 80028760 8463DBB8 */  lh         $v1, %lo(D_8005DBB8)($v1)
/* 11A564 80028764 00402021 */  addu       $a0, $v0, $zero
/* 11A568 80028768 24050088 */  addiu      $a1, $zero, 0x88
/* 11A56C 8002876C 00031880 */  sll        $v1, $v1, 2
/* 11A570 80028770 00701821 */  addu       $v1, $v1, $s0
/* 11A574 80028774 0C030134 */  jal        bzero
/* 11A578 80028778 AC640000 */   sw        $a0, ($v1)
/* 11A57C 8002877C 3C058006 */  lui        $a1, %hi(D_8005DBB8)
/* 11A580 80028780 84A5DBB8 */  lh         $a1, %lo(D_8005DBB8)($a1)
/* 11A584 80028784 00051080 */  sll        $v0, $a1, 2
/* 11A588 80028788 00501021 */  addu       $v0, $v0, $s0
/* 11A58C 8002878C 8C440000 */  lw         $a0, ($v0)
/* 11A590 80028790 00052900 */  sll        $a1, $a1, 4
/* 11A594 80028794 0C00A266 */  jal        func_80028998_11A798
/* 11A598 80028798 00B12821 */   addu      $a1, $a1, $s1
/* 11A59C 8002879C 3C028006 */  lui        $v0, %hi(D_8005DBB8)
/* 11A5A0 800287A0 9442DBB8 */  lhu        $v0, %lo(D_8005DBB8)($v0)
/* 11A5A4 800287A4 24420001 */  addiu      $v0, $v0, 1
/* 11A5A8 800287A8 3C018006 */  lui        $at, %hi(D_8005DBB8)
/* 11A5AC 800287AC A422DBB8 */  sh         $v0, %lo(D_8005DBB8)($at)
/* 11A5B0 800287B0 00021400 */  sll        $v0, $v0, 0x10
/* 11A5B4 800287B4 00021403 */  sra        $v0, $v0, 0x10
/* 11A5B8 800287B8 28420002 */  slti       $v0, $v0, 2
/* 11A5BC 800287BC 1440FFE5 */  bnez       $v0, .L80028754
/* 11A5C0 800287C0 2404061C */   addiu     $a0, $zero, 0x61c
/* 11A5C4 800287C4 24050006 */  addiu      $a1, $zero, 6
/* 11A5C8 800287C8 0C028CB7 */  jal        func_800A32DC
/* 11A5CC 800287CC 00003021 */   addu      $a2, $zero, $zero
/* 11A5D0 800287D0 00402021 */  addu       $a0, $v0, $zero
/* 11A5D4 800287D4 00002821 */  addu       $a1, $zero, $zero
/* 11A5D8 800287D8 3C018006 */  lui        $at, %hi(D_8005DBBC)
/* 11A5DC 800287DC AC24DBBC */  sw         $a0, %lo(D_8005DBBC)($at)
/* 11A5E0 800287E0 0C028D89 */  jal        func_800A3624
/* 11A5E4 800287E4 00003021 */   addu      $a2, $zero, $zero
/* 11A5E8 800287E8 3C048006 */  lui        $a0, %hi(D_8005DBBC)
/* 11A5EC 800287EC 8C84DBBC */  lw         $a0, %lo(D_8005DBBC)($a0)
/* 11A5F0 800287F0 24050100 */  addiu      $a1, $zero, 0x100
/* 11A5F4 800287F4 0C0292D4 */  jal        func_800A4B50
/* 11A5F8 800287F8 24060100 */   addiu     $a2, $zero, 0x100
/* 11A5FC 800287FC 3C038006 */  lui        $v1, %hi(D_8005DBBC)
/* 11A600 80028800 8C63DBBC */  lw         $v1, %lo(D_8005DBBC)($v1)
/* 11A604 80028804 9462001E */  lhu        $v0, 0x1e($v1)
/* 11A608 80028808 A460001C */  sh         $zero, 0x1c($v1)
/* 11A60C 8002880C 34420104 */  ori        $v0, $v0, 0x104
/* 11A610 80028810 0C029375 */  jal        func_800A4DD4
/* 11A614 80028814 A462001E */   sh        $v0, 0x1e($v1)
/* 11A618 80028818 00402021 */  addu       $a0, $v0, $zero
/* 11A61C 8002881C 24050010 */  addiu      $a1, $zero, 0x10
/* 11A620 80028820 24060010 */  addiu      $a2, $zero, 0x10
/* 11A624 80028824 240200E0 */  addiu      $v0, $zero, 0xe0
/* 11A628 80028828 24070130 */  addiu      $a3, $zero, 0x130
/* 11A62C 8002882C 3C018006 */  lui        $at, %hi(D_8005DBC0)
/* 11A630 80028830 AC24DBC0 */  sw         $a0, %lo(D_8005DBC0)($at)
/* 11A634 80028834 0C02939C */  jal        func_800A4E70
/* 11A638 80028838 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A63C 8002883C 3C038006 */  lui        $v1, %hi(D_8005DBC0)
/* 11A640 80028840 8C63DBC0 */  lw         $v1, %lo(D_8005DBC0)($v1)
/* 11A644 80028844 9462001E */  lhu        $v0, 0x1e($v1)
/* 11A648 80028848 24040073 */  addiu      $a0, $zero, 0x73
/* 11A64C 8002884C A460001C */  sh         $zero, 0x1c($v1)
/* 11A650 80028850 34420100 */  ori        $v0, $v0, 0x100
/* 11A654 80028854 0C026DD5 */  jal        func_8009B754
/* 11A658 80028858 A462001E */   sh        $v0, 0x1e($v1)
/* 11A65C 8002885C 3C018006 */  lui        $at, %hi(D_8005DBC4)
/* 11A660 80028860 AC22DBC4 */  sw         $v0, %lo(D_8005DBC4)($at)
/* 11A664 80028864 3C018005 */  lui        $at, %hi(D_800519B0)
/* 11A668 80028868 A02019B0 */  sb         $zero, %lo(D_800519B0)($at)
.L8002886C:
/* 11A66C 8002886C 1640002A */  bnez       $s2, .L80028918
/* 11A670 80028870 00000000 */   nop
/* 11A674 80028874 3C018006 */  lui        $at, %hi(D_8005DBB8)
/* 11A678 80028878 A420DBB8 */  sh         $zero, %lo(D_8005DBB8)($at)
/* 11A67C 8002887C 3C108006 */  lui        $s0, %hi(D_8005DBB0)
/* 11A680 80028880 2610DBB0 */  addiu      $s0, $s0, %lo(D_8005DBB0)
.L80028884:
/* 11A684 80028884 3C048006 */  lui        $a0, %hi(D_8005DBBC)
/* 11A688 80028888 0C028D30 */  jal        func_800A34C0
/* 11A68C 8002888C 8C84DBBC */   lw        $a0, %lo(D_8005DBBC)($a0)
/* 11A690 80028890 3C048006 */  lui        $a0, %hi(D_8005DBC0)
/* 11A694 80028894 0C029393 */  jal        func_800A4E4C
/* 11A698 80028898 8C84DBC0 */   lw        $a0, %lo(D_8005DBC0)($a0)
/* 11A69C 8002889C 3C028006 */  lui        $v0, %hi(D_8005DBB8)
/* 11A6A0 800288A0 8442DBB8 */  lh         $v0, %lo(D_8005DBB8)($v0)
/* 11A6A4 800288A4 00021080 */  sll        $v0, $v0, 2
/* 11A6A8 800288A8 00501021 */  addu       $v0, $v0, $s0
/* 11A6AC 800288AC 0C00A2D0 */  jal        func_80028B40_11A940
/* 11A6B0 800288B0 8C440000 */   lw        $a0, ($v0)
/* 11A6B4 800288B4 3C028006 */  lui        $v0, %hi(D_8005DBB8)
/* 11A6B8 800288B8 8442DBB8 */  lh         $v0, %lo(D_8005DBB8)($v0)
/* 11A6BC 800288BC 00021080 */  sll        $v0, $v0, 2
/* 11A6C0 800288C0 00501021 */  addu       $v0, $v0, $s0
/* 11A6C4 800288C4 0C0326A1 */  jal        func_800C9A84
/* 11A6C8 800288C8 8C440000 */   lw        $a0, ($v0)
/* 11A6CC 800288CC 3C028006 */  lui        $v0, %hi(D_8005DBB8)
/* 11A6D0 800288D0 9442DBB8 */  lhu        $v0, %lo(D_8005DBB8)($v0)
/* 11A6D4 800288D4 24420001 */  addiu      $v0, $v0, 1
/* 11A6D8 800288D8 3C018006 */  lui        $at, %hi(D_8005DBB8)
/* 11A6DC 800288DC A422DBB8 */  sh         $v0, %lo(D_8005DBB8)($at)
/* 11A6E0 800288E0 00021400 */  sll        $v0, $v0, 0x10
/* 11A6E4 800288E4 00021403 */  sra        $v0, $v0, 0x10
/* 11A6E8 800288E8 28420002 */  slti       $v0, $v0, 2
/* 11A6EC 800288EC 1440FFE5 */  bnez       $v0, .L80028884
/* 11A6F0 800288F0 00000000 */   nop
/* 11A6F4 800288F4 3C048006 */  lui        $a0, %hi(D_8005DBC4)
/* 11A6F8 800288F8 8C84DBC4 */  lw         $a0, %lo(D_8005DBC4)($a0)
/* 11A6FC 800288FC 0C026E46 */  jal        func_8009B918
/* 11A700 80028900 00002821 */   addu      $a1, $zero, $zero
/* 11A704 80028904 24030001 */  addiu      $v1, $zero, 1
/* 11A708 80028908 3C018005 */  lui        $at, %hi(D_800519B0)
/* 11A70C 8002890C A02319B0 */  sb         $v1, %lo(D_800519B0)($at)
/* 11A710 80028910 0800A260 */  j          .L80028980
/* 11A714 80028914 24020001 */   addiu     $v0, $zero, 1
.L80028918:
/* 11A718 80028918 0C009767 */  jal        func_80025D9C_117B9C
/* 11A71C 8002891C 00000000 */   nop
/* 11A720 80028920 3C018006 */  lui        $at, %hi(D_8005DBB8)
/* 11A724 80028924 A420DBB8 */  sh         $zero, %lo(D_8005DBB8)($at)
/* 11A728 80028928 3C108006 */  lui        $s0, %hi(D_8005DBB0)
/* 11A72C 8002892C 2610DBB0 */  addiu      $s0, $s0, %lo(D_8005DBB0)
.L80028930:
/* 11A730 80028930 3C028006 */  lui        $v0, %hi(D_8005DBB8)
/* 11A734 80028934 8442DBB8 */  lh         $v0, %lo(D_8005DBB8)($v0)
/* 11A738 80028938 00021080 */  sll        $v0, $v0, 2
/* 11A73C 8002893C 00501021 */  addu       $v0, $v0, $s0
/* 11A740 80028940 0C00A2DC */  jal        func_80028B70_11A970
/* 11A744 80028944 8C440000 */   lw        $a0, ($v0)
/* 11A748 80028948 10400003 */  beqz       $v0, .L80028958
/* 11A74C 8002894C 00000000 */   nop
/* 11A750 80028950 0C02DB14 */  jal        func_800B6C50
/* 11A754 80028954 00002021 */   addu      $a0, $zero, $zero
.L80028958:
/* 11A758 80028958 3C028006 */  lui        $v0, %hi(D_8005DBB8)
/* 11A75C 8002895C 9442DBB8 */  lhu        $v0, %lo(D_8005DBB8)($v0)
/* 11A760 80028960 24420001 */  addiu      $v0, $v0, 1
/* 11A764 80028964 3C018006 */  lui        $at, %hi(D_8005DBB8)
/* 11A768 80028968 A422DBB8 */  sh         $v0, %lo(D_8005DBB8)($at)
/* 11A76C 8002896C 00021400 */  sll        $v0, $v0, 0x10
/* 11A770 80028970 00021403 */  sra        $v0, $v0, 0x10
/* 11A774 80028974 28420002 */  slti       $v0, $v0, 2
/* 11A778 80028978 1440FFED */  bnez       $v0, .L80028930
/* 11A77C 8002897C 00001021 */   addu      $v0, $zero, $zero
.L80028980:
/* 11A780 80028980 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11A784 80028984 8FB20020 */  lw         $s2, 0x20($sp)
/* 11A788 80028988 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11A78C 8002898C 8FB00018 */  lw         $s0, 0x18($sp)
/* 11A790 80028990 03E00008 */  jr         $ra
/* 11A794 80028994 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80028998_11A798
/* 11A798 80028998 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A79C 8002899C AFB00018 */  sw         $s0, 0x18($sp)
/* 11A7A0 800289A0 00A08021 */  addu       $s0, $a1, $zero
/* 11A7A4 800289A4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11A7A8 800289A8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 11A7AC 800289AC 8E02000C */  lw         $v0, 0xc($s0)
/* 11A7B0 800289B0 C4400000 */  lwc1       $f0, ($v0)
/* 11A7B4 800289B4 00808821 */  addu       $s1, $a0, $zero
/* 11A7B8 800289B8 E6200008 */  swc1       $f0, 8($s1)
/* 11A7BC 800289BC 8E02000C */  lw         $v0, 0xc($s0)
/* 11A7C0 800289C0 C4400004 */  lwc1       $f0, 4($v0)
/* 11A7C4 800289C4 E620000C */  swc1       $f0, 0xc($s1)
/* 11A7C8 800289C8 8E02000C */  lw         $v0, 0xc($s0)
/* 11A7CC 800289CC C4400008 */  lwc1       $f0, 8($v0)
/* 11A7D0 800289D0 E6200010 */  swc1       $f0, 0x10($s1)
/* 11A7D4 800289D4 8E02000C */  lw         $v0, 0xc($s0)
/* 11A7D8 800289D8 C440000C */  lwc1       $f0, 0xc($v0)
/* 11A7DC 800289DC E6200014 */  swc1       $f0, 0x14($s1)
/* 11A7E0 800289E0 8E02000C */  lw         $v0, 0xc($s0)
/* 11A7E4 800289E4 C4400010 */  lwc1       $f0, 0x10($v0)
/* 11A7E8 800289E8 E6200018 */  swc1       $f0, 0x18($s1)
/* 11A7EC 800289EC 8E02000C */  lw         $v0, 0xc($s0)
/* 11A7F0 800289F0 3C01437F */  lui        $at, 0x437f
/* 11A7F4 800289F4 44810000 */  mtc1       $at, $f0
/* 11A7F8 800289F8 C4420014 */  lwc1       $f2, 0x14($v0)
/* 11A7FC 800289FC E6200080 */  swc1       $f0, 0x80($s1)
/* 11A800 80028A00 E622001C */  swc1       $f2, 0x1c($s1)
/* 11A804 80028A04 8E02000C */  lw         $v0, 0xc($s0)
/* 11A808 80028A08 C4400018 */  lwc1       $f0, 0x18($v0)
/* 11A80C 80028A0C E6200020 */  swc1       $f0, 0x20($s1)
/* 11A810 80028A10 86040000 */  lh         $a0, ($s0)
/* 11A814 80028A14 8E050004 */  lw         $a1, 4($s0)
/* 11A818 80028A18 0C027DAC */  jal        func_8009F6B0
/* 11A81C 80028A1C 92060008 */   lbu       $a2, 8($s0)
/* 11A820 80028A20 240400C8 */  addiu      $a0, $zero, 0xc8
/* 11A824 80028A24 240500D2 */  addiu      $a1, $zero, 0xd2
/* 11A828 80028A28 AE220000 */  sw         $v0, ($s1)
/* 11A82C 80028A2C 90430066 */  lbu        $v1, 0x66($v0)
/* 11A830 80028A30 92070009 */  lbu        $a3, 9($s0)
/* 11A834 80028A34 3C01C334 */  lui        $at, 0xc334
/* 11A838 80028A38 44810000 */  mtc1       $at, $f0
/* 11A83C 80028A3C 3C01C1F0 */  lui        $at, 0xc1f0
/* 11A840 80028A40 44811000 */  mtc1       $at, $f2
/* 11A844 80028A44 3C01433E */  lui        $at, 0x433e
/* 11A848 80028A48 44812000 */  mtc1       $at, $f4
/* 11A84C 80028A4C 3C01C3AF */  lui        $at, 0xc3af
/* 11A850 80028A50 44813000 */  mtc1       $at, $f6
/* 11A854 80028A54 240600D2 */  addiu      $a2, $zero, 0xd2
/* 11A858 80028A58 00671825 */  or         $v1, $v1, $a3
/* 11A85C 80028A5C A0430066 */  sb         $v1, 0x66($v0)
/* 11A860 80028A60 240200E6 */  addiu      $v0, $zero, 0xe6
/* 11A864 80028A64 AE200004 */  sw         $zero, 4($s1)
/* 11A868 80028A68 AFA20010 */  sw         $v0, 0x10($sp)
/* 11A86C 80028A6C 240200DC */  addiu      $v0, $zero, 0xdc
/* 11A870 80028A70 240700FF */  addiu      $a3, $zero, 0xff
/* 11A874 80028A74 3C018015 */  lui        $at, %hi(D_8014A058)
/* 11A878 80028A78 AC20A058 */  sw         $zero, %lo(D_8014A058)($at)
/* 11A87C 80028A7C 3C018015 */  lui        $at, %hi(D_8014A05C)
/* 11A880 80028A80 AC20A05C */  sw         $zero, %lo(D_8014A05C)($at)
/* 11A884 80028A84 3C018015 */  lui        $at, %hi(D_8014A060)
/* 11A888 80028A88 AC20A060 */  sw         $zero, %lo(D_8014A060)($at)
/* 11A88C 80028A8C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11A890 80028A90 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 11A894 80028A94 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11A898 80028A98 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 11A89C 80028A9C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11A8A0 80028AA0 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 11A8A4 80028AA4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 11A8A8 80028AA8 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 11A8AC 80028AAC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 11A8B0 80028AB0 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* 11A8B4 80028AB4 3C018015 */  lui        $at, %hi(D_8014A084)
/* 11A8B8 80028AB8 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 11A8BC 80028ABC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 11A8C0 80028AC0 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* 11A8C4 80028AC4 0C027101 */  jal        func_8009C404
/* 11A8C8 80028AC8 AFA20014 */   sw        $v0, 0x14($sp)
/* 11A8CC 80028ACC 3C01C2A2 */  lui        $at, 0xc2a2
/* 11A8D0 80028AD0 44810000 */  mtc1       $at, $f0
/* 11A8D4 80028AD4 3C014230 */  lui        $at, 0x4230
/* 11A8D8 80028AD8 44811000 */  mtc1       $at, $f2
/* 11A8DC 80028ADC 3C014290 */  lui        $at, 0x4290
/* 11A8E0 80028AE0 44812000 */  mtc1       $at, $f4
/* 11A8E4 80028AE4 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11A8E8 80028AE8 C426A064 */  lwc1       $f6, %lo(D_8014A064)($at)
/* 11A8EC 80028AEC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11A8F0 80028AF0 C428A068 */  lwc1       $f8, %lo(D_8014A068)($at)
/* 11A8F4 80028AF4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11A8F8 80028AF8 C42AA06C */  lwc1       $f10, %lo(D_8014A06C)($at)
/* 11A8FC 80028AFC 3C018017 */  lui        $at, %hi(D_8016E568)
/* 11A900 80028B00 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 11A904 80028B04 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 11A908 80028B08 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 11A90C 80028B0C 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 11A910 80028B10 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 11A914 80028B14 3C018015 */  lui        $at, %hi(D_8014A054)
/* 11A918 80028B18 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 11A91C 80028B1C 3C018015 */  lui        $at, %hi(D_8014A050)
/* 11A920 80028B20 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 11A924 80028B24 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 11A928 80028B28 E42AD1A8 */  swc1       $f10, %lo(D_8016D1A8)($at)
/* 11A92C 80028B2C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11A930 80028B30 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11A934 80028B34 8FB00018 */  lw         $s0, 0x18($sp)
/* 11A938 80028B38 03E00008 */  jr         $ra
/* 11A93C 80028B3C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80028B40_11A940
/* 11A940 80028B40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11A944 80028B44 AFB00010 */  sw         $s0, 0x10($sp)
/* 11A948 80028B48 00808021 */  addu       $s0, $a0, $zero
/* 11A94C 80028B4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11A950 80028B50 0C027E98 */  jal        func_8009FA60
/* 11A954 80028B54 8E040000 */   lw        $a0, ($s0)
/* 11A958 80028B58 0C027880 */  jal        func_8009E200
/* 11A95C 80028B5C 8E040004 */   lw        $a0, 4($s0)
/* 11A960 80028B60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11A964 80028B64 8FB00010 */  lw         $s0, 0x10($sp)
/* 11A968 80028B68 03E00008 */  jr         $ra
/* 11A96C 80028B6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80028B70_11A970
/* 11A970 80028B70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11A974 80028B74 AFB00020 */  sw         $s0, 0x20($sp)
/* 11A978 80028B78 00808021 */  addu       $s0, $a0, $zero
/* 11A97C 80028B7C AFBF0028 */  sw         $ra, 0x28($sp)
/* 11A980 80028B80 AFB10024 */  sw         $s1, 0x24($sp)
/* 11A984 80028B84 C6020008 */  lwc1       $f2, 8($s0)
/* 11A988 80028B88 3C014000 */  lui        $at, 0x4000
/* 11A98C 80028B8C 44810000 */  mtc1       $at, $f0
/* 11A990 80028B90 00000000 */  nop
/* 11A994 80028B94 46001081 */  sub.s      $f2, $f2, $f0
/* 11A998 80028B98 3C048006 */  lui        $a0, %hi(D_8005DBBC)
/* 11A99C 80028B9C 8C84DBBC */  lw         $a0, %lo(D_8005DBBC)($a0)
/* 11A9A0 80028BA0 24050010 */  addiu      $a1, $zero, 0x10
/* 11A9A4 80028BA4 2406FFF8 */  addiu      $a2, $zero, -8
/* 11A9A8 80028BA8 0C02933E */  jal        func_800A4CF8
/* 11A9AC 80028BAC E6020008 */   swc1      $f2, 8($s0)
/* 11A9B0 80028BB0 C6000020 */  lwc1       $f0, 0x20($s0)
/* 11A9B4 80028BB4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11A9B8 80028BB8 C6000008 */  lwc1       $f0, 8($s0)
/* 11A9BC 80028BBC E7A00014 */  swc1       $f0, 0x14($sp)
/* 11A9C0 80028BC0 C600000C */  lwc1       $f0, 0xc($s0)
/* 11A9C4 80028BC4 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11A9C8 80028BC8 C6000010 */  lwc1       $f0, 0x10($s0)
/* 11A9CC 80028BCC E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11A9D0 80028BD0 8E050014 */  lw         $a1, 0x14($s0)
/* 11A9D4 80028BD4 8E060018 */  lw         $a2, 0x18($s0)
/* 11A9D8 80028BD8 8E07001C */  lw         $a3, 0x1c($s0)
/* 11A9DC 80028BDC 26110028 */  addiu      $s1, $s0, 0x28
/* 11A9E0 80028BE0 0C02FD0E */  jal        func_800BF438
/* 11A9E4 80028BE4 02202021 */   addu      $a0, $s1, $zero
/* 11A9E8 80028BE8 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 11A9EC 80028BEC 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 11A9F0 80028BF0 3C03DA38 */  lui        $v1, 0xda38
/* 11A9F4 80028BF4 34630003 */  ori        $v1, $v1, 3
/* 11A9F8 80028BF8 AC430000 */  sw         $v1, ($v0)
/* 11A9FC 80028BFC AC510004 */  sw         $s1, 4($v0)
/* 11AA00 80028C00 8E030000 */  lw         $v1, ($s0)
/* 11AA04 80028C04 24420008 */  addiu      $v0, $v0, 8
/* 11AA08 80028C08 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 11AA0C 80028C0C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 11AA10 80028C10 A0600067 */  sb         $zero, 0x67($v1)
/* 11AA14 80028C14 8E040000 */  lw         $a0, ($s0)
/* 11AA18 80028C18 0C027F77 */  jal        func_8009FDDC
/* 11AA1C 80028C1C 8E050004 */   lw        $a1, 4($s0)
/* 11AA20 80028C20 3C048006 */  lui        $a0, %hi(D_8005DBC0)
/* 11AA24 80028C24 0C028A40 */  jal        func_800A2900
/* 11AA28 80028C28 8C84DBC0 */   lw        $a0, %lo(D_8005DBC0)($a0)
/* 11AA2C 80028C2C 3C048006 */  lui        $a0, %hi(D_8005DBBC)
/* 11AA30 80028C30 0C028A40 */  jal        func_800A2900
/* 11AA34 80028C34 8C84DBBC */   lw        $a0, %lo(D_8005DBBC)($a0)
/* 11AA38 80028C38 00001021 */  addu       $v0, $zero, $zero
/* 11AA3C 80028C3C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 11AA40 80028C40 8FB10024 */  lw         $s1, 0x24($sp)
/* 11AA44 80028C44 8FB00020 */  lw         $s0, 0x20($sp)
/* 11AA48 80028C48 03E00008 */  jr         $ra
/* 11AA4C 80028C4C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80028C50_11AA50
/* 11AA50 80028C50 3C028005 */  lui        $v0, %hi(D_800519C0)
/* 11AA54 80028C54 904219C0 */  lbu        $v0, %lo(D_800519C0)($v0)
/* 11AA58 80028C58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11AA5C 80028C5C AFB20020 */  sw         $s2, 0x20($sp)
/* 11AA60 80028C60 00809021 */  addu       $s2, $a0, $zero
/* 11AA64 80028C64 AFBF0024 */  sw         $ra, 0x24($sp)
/* 11AA68 80028C68 AFB1001C */  sw         $s1, 0x1c($sp)
/* 11AA6C 80028C6C 10400055 */  beqz       $v0, .L80028DC4
/* 11AA70 80028C70 AFB00018 */   sw        $s0, 0x18($sp)
/* 11AA74 80028C74 0C02A5D2 */  jal        func_800A9748
/* 11AA78 80028C78 24040001 */   addiu     $a0, $zero, 1
/* 11AA7C 80028C7C 3C018006 */  lui        $at, %hi(D_8005DBE2)
/* 11AA80 80028C80 A420DBE2 */  sh         $zero, %lo(D_8005DBE2)($at)
/* 11AA84 80028C84 3C108006 */  lui        $s0, %hi(D_8005DBD0)
/* 11AA88 80028C88 2610DBD0 */  addiu      $s0, $s0, %lo(D_8005DBD0)
/* 11AA8C 80028C8C 3C118006 */  lui        $s1, %hi(D_8005A8C4)
/* 11AA90 80028C90 2631A8C4 */  addiu      $s1, $s1, %lo(D_8005A8C4)
.L80028C94:
/* 11AA94 80028C94 0C032663 */  jal        func_800C998C
/* 11AA98 80028C98 24040088 */   addiu     $a0, $zero, 0x88
/* 11AA9C 80028C9C 3C038006 */  lui        $v1, %hi(D_8005DBE2)
/* 11AAA0 80028CA0 8463DBE2 */  lh         $v1, %lo(D_8005DBE2)($v1)
/* 11AAA4 80028CA4 00402021 */  addu       $a0, $v0, $zero
/* 11AAA8 80028CA8 24050088 */  addiu      $a1, $zero, 0x88
/* 11AAAC 80028CAC 00031880 */  sll        $v1, $v1, 2
/* 11AAB0 80028CB0 00701821 */  addu       $v1, $v1, $s0
/* 11AAB4 80028CB4 0C030134 */  jal        bzero
/* 11AAB8 80028CB8 AC640000 */   sw        $a0, ($v1)
/* 11AABC 80028CBC 3C058006 */  lui        $a1, %hi(D_8005DBE2)
/* 11AAC0 80028CC0 84A5DBE2 */  lh         $a1, %lo(D_8005DBE2)($a1)
/* 11AAC4 80028CC4 00051080 */  sll        $v0, $a1, 2
/* 11AAC8 80028CC8 00501021 */  addu       $v0, $v0, $s0
/* 11AACC 80028CCC 8C440000 */  lw         $a0, ($v0)
/* 11AAD0 80028CD0 00052900 */  sll        $a1, $a1, 4
/* 11AAD4 80028CD4 0C00A3C9 */  jal        func_80028F24_11AD24
/* 11AAD8 80028CD8 00B12821 */   addu      $a1, $a1, $s1
/* 11AADC 80028CDC 3C028006 */  lui        $v0, %hi(D_8005DBE2)
/* 11AAE0 80028CE0 9442DBE2 */  lhu        $v0, %lo(D_8005DBE2)($v0)
/* 11AAE4 80028CE4 24420001 */  addiu      $v0, $v0, 1
/* 11AAE8 80028CE8 3C018006 */  lui        $at, %hi(D_8005DBE2)
/* 11AAEC 80028CEC A422DBE2 */  sh         $v0, %lo(D_8005DBE2)($at)
/* 11AAF0 80028CF0 00021400 */  sll        $v0, $v0, 0x10
/* 11AAF4 80028CF4 00021403 */  sra        $v0, $v0, 0x10
/* 11AAF8 80028CF8 28420003 */  slti       $v0, $v0, 3
/* 11AAFC 80028CFC 1440FFE5 */  bnez       $v0, .L80028C94
/* 11AB00 80028D00 2404061D */   addiu     $a0, $zero, 0x61d
/* 11AB04 80028D04 24050006 */  addiu      $a1, $zero, 6
/* 11AB08 80028D08 0C028CB7 */  jal        func_800A32DC
/* 11AB0C 80028D0C 00003021 */   addu      $a2, $zero, $zero
/* 11AB10 80028D10 00402021 */  addu       $a0, $v0, $zero
/* 11AB14 80028D14 00002821 */  addu       $a1, $zero, $zero
/* 11AB18 80028D18 3C018006 */  lui        $at, %hi(D_8005DBF0)
/* 11AB1C 80028D1C AC24DBF0 */  sw         $a0, %lo(D_8005DBF0)($at)
/* 11AB20 80028D20 0C028D89 */  jal        func_800A3624
/* 11AB24 80028D24 00003021 */   addu      $a2, $zero, $zero
/* 11AB28 80028D28 3C048006 */  lui        $a0, %hi(D_8005DBF0)
/* 11AB2C 80028D2C 8C84DBF0 */  lw         $a0, %lo(D_8005DBF0)($a0)
/* 11AB30 80028D30 24050100 */  addiu      $a1, $zero, 0x100
/* 11AB34 80028D34 0C0292D4 */  jal        func_800A4B50
/* 11AB38 80028D38 24060100 */   addiu     $a2, $zero, 0x100
/* 11AB3C 80028D3C 3C038006 */  lui        $v1, %hi(D_8005DBF0)
/* 11AB40 80028D40 8C63DBF0 */  lw         $v1, %lo(D_8005DBF0)($v1)
/* 11AB44 80028D44 9462001E */  lhu        $v0, 0x1e($v1)
/* 11AB48 80028D48 A460001C */  sh         $zero, 0x1c($v1)
/* 11AB4C 80028D4C 34420104 */  ori        $v0, $v0, 0x104
/* 11AB50 80028D50 0C029375 */  jal        func_800A4DD4
/* 11AB54 80028D54 A462001E */   sh        $v0, 0x1e($v1)
/* 11AB58 80028D58 00402021 */  addu       $a0, $v0, $zero
/* 11AB5C 80028D5C 24050010 */  addiu      $a1, $zero, 0x10
/* 11AB60 80028D60 24060010 */  addiu      $a2, $zero, 0x10
/* 11AB64 80028D64 240200E0 */  addiu      $v0, $zero, 0xe0
/* 11AB68 80028D68 24070130 */  addiu      $a3, $zero, 0x130
/* 11AB6C 80028D6C 3C018006 */  lui        $at, %hi(D_8005DBF4)
/* 11AB70 80028D70 AC24DBF4 */  sw         $a0, %lo(D_8005DBF4)($at)
/* 11AB74 80028D74 0C02939C */  jal        func_800A4E70
/* 11AB78 80028D78 AFA20010 */   sw        $v0, 0x10($sp)
/* 11AB7C 80028D7C 3C038006 */  lui        $v1, %hi(D_8005DBF4)
/* 11AB80 80028D80 8C63DBF4 */  lw         $v1, %lo(D_8005DBF4)($v1)
/* 11AB84 80028D84 9462001E */  lhu        $v0, 0x1e($v1)
/* 11AB88 80028D88 24040073 */  addiu      $a0, $zero, 0x73
/* 11AB8C 80028D8C A460001C */  sh         $zero, 0x1c($v1)
/* 11AB90 80028D90 34420100 */  ori        $v0, $v0, 0x100
/* 11AB94 80028D94 0C026DD5 */  jal        func_8009B754
/* 11AB98 80028D98 A462001E */   sh        $v0, 0x1e($v1)
/* 11AB9C 80028D9C 3C018006 */  lui        $at, %hi(D_8005DBEC)
/* 11ABA0 80028DA0 AC22DBEC */  sw         $v0, %lo(D_8005DBEC)($at)
/* 11ABA4 80028DA4 0C026DD5 */  jal        func_8009B754
/* 11ABA8 80028DA8 2404004F */   addiu     $a0, $zero, 0x4f
/* 11ABAC 80028DAC 3C018006 */  lui        $at, %hi(D_8005DBE8)
/* 11ABB0 80028DB0 AC22DBE8 */  sw         $v0, %lo(D_8005DBE8)($at)
/* 11ABB4 80028DB4 3C018006 */  lui        $at, %hi(D_8005DBE0)
/* 11ABB8 80028DB8 A420DBE0 */  sh         $zero, %lo(D_8005DBE0)($at)
/* 11ABBC 80028DBC 3C018005 */  lui        $at, %hi(D_800519C0)
/* 11ABC0 80028DC0 A02019C0 */  sb         $zero, %lo(D_800519C0)($at)
.L80028DC4:
/* 11ABC4 80028DC4 3C018006 */  lui        $at, %hi(D_8005DBDC)
/* 11ABC8 80028DC8 AC20DBDC */  sw         $zero, %lo(D_8005DBDC)($at)
/* 11ABCC 80028DCC 16400003 */  bnez       $s2, .L80028DDC
/* 11ABD0 80028DD0 24020001 */   addiu     $v0, $zero, 1
/* 11ABD4 80028DD4 3C018006 */  lui        $at, %hi(D_8005DBDC)
/* 11ABD8 80028DD8 AC22DBDC */  sw         $v0, %lo(D_8005DBDC)($at)
.L80028DDC:
/* 11ABDC 80028DDC 3C028006 */  lui        $v0, %hi(D_8005DBDC)
/* 11ABE0 80028DE0 8C42DBDC */  lw         $v0, %lo(D_8005DBDC)($v0)
/* 11ABE4 80028DE4 1040002A */  beqz       $v0, .L80028E90
/* 11ABE8 80028DE8 00000000 */   nop
/* 11ABEC 80028DEC 3C048006 */  lui        $a0, %hi(D_8005DBEC)
/* 11ABF0 80028DF0 8C84DBEC */  lw         $a0, %lo(D_8005DBEC)($a0)
/* 11ABF4 80028DF4 3C108006 */  lui        $s0, %hi(D_8005DBD0)
/* 11ABF8 80028DF8 2610DBD0 */  addiu      $s0, $s0, %lo(D_8005DBD0)
/* 11ABFC 80028DFC 0C026E46 */  jal        func_8009B918
/* 11AC00 80028E00 00002821 */   addu      $a1, $zero, $zero
/* 11AC04 80028E04 3C018006 */  lui        $at, %hi(D_8005DBE2)
/* 11AC08 80028E08 A420DBE2 */  sh         $zero, %lo(D_8005DBE2)($at)
.L80028E0C:
/* 11AC0C 80028E0C 3C028006 */  lui        $v0, %hi(D_8005DBE2)
/* 11AC10 80028E10 8442DBE2 */  lh         $v0, %lo(D_8005DBE2)($v0)
/* 11AC14 80028E14 00021080 */  sll        $v0, $v0, 2
/* 11AC18 80028E18 00501021 */  addu       $v0, $v0, $s0
/* 11AC1C 80028E1C 0C00A433 */  jal        func_800290CC_11AECC
/* 11AC20 80028E20 8C440000 */   lw        $a0, ($v0)
/* 11AC24 80028E24 3C028006 */  lui        $v0, %hi(D_8005DBE2)
/* 11AC28 80028E28 8442DBE2 */  lh         $v0, %lo(D_8005DBE2)($v0)
/* 11AC2C 80028E2C 00021080 */  sll        $v0, $v0, 2
/* 11AC30 80028E30 00501021 */  addu       $v0, $v0, $s0
/* 11AC34 80028E34 0C0326A1 */  jal        func_800C9A84
/* 11AC38 80028E38 8C440000 */   lw        $a0, ($v0)
/* 11AC3C 80028E3C 3C028006 */  lui        $v0, %hi(D_8005DBE2)
/* 11AC40 80028E40 9442DBE2 */  lhu        $v0, %lo(D_8005DBE2)($v0)
/* 11AC44 80028E44 24420001 */  addiu      $v0, $v0, 1
/* 11AC48 80028E48 3C018006 */  lui        $at, %hi(D_8005DBE2)
/* 11AC4C 80028E4C A422DBE2 */  sh         $v0, %lo(D_8005DBE2)($at)
/* 11AC50 80028E50 00021400 */  sll        $v0, $v0, 0x10
/* 11AC54 80028E54 00021403 */  sra        $v0, $v0, 0x10
/* 11AC58 80028E58 28420003 */  slti       $v0, $v0, 3
/* 11AC5C 80028E5C 1440FFEB */  bnez       $v0, .L80028E0C
/* 11AC60 80028E60 00000000 */   nop
/* 11AC64 80028E64 3C048006 */  lui        $a0, %hi(D_8005DBF0)
/* 11AC68 80028E68 0C028D30 */  jal        func_800A34C0
/* 11AC6C 80028E6C 8C84DBF0 */   lw        $a0, %lo(D_8005DBF0)($a0)
/* 11AC70 80028E70 3C048006 */  lui        $a0, %hi(D_8005DBF4)
/* 11AC74 80028E74 0C029393 */  jal        func_800A4E4C
/* 11AC78 80028E78 8C84DBF4 */   lw        $a0, %lo(D_8005DBF4)($a0)
/* 11AC7C 80028E7C 24030001 */  addiu      $v1, $zero, 1
/* 11AC80 80028E80 3C018005 */  lui        $at, %hi(D_800519C0)
/* 11AC84 80028E84 A02319C0 */  sb         $v1, %lo(D_800519C0)($at)
/* 11AC88 80028E88 0800A3C3 */  j          .L80028F0C
/* 11AC8C 80028E8C 24020001 */   addiu     $v0, $zero, 1
.L80028E90:
/* 11AC90 80028E90 0C009767 */  jal        func_80025D9C_117B9C
/* 11AC94 80028E94 00000000 */   nop
/* 11AC98 80028E98 3C028006 */  lui        $v0, %hi(D_8005DBE0)
/* 11AC9C 80028E9C 9442DBE0 */  lhu        $v0, %lo(D_8005DBE0)($v0)
/* 11ACA0 80028EA0 3C108006 */  lui        $s0, %hi(D_8005DBD0)
/* 11ACA4 80028EA4 2610DBD0 */  addiu      $s0, $s0, %lo(D_8005DBD0)
/* 11ACA8 80028EA8 3C018006 */  lui        $at, %hi(D_8005DBE2)
/* 11ACAC 80028EAC A420DBE2 */  sh         $zero, %lo(D_8005DBE2)($at)
/* 11ACB0 80028EB0 24420001 */  addiu      $v0, $v0, 1
/* 11ACB4 80028EB4 3C018006 */  lui        $at, %hi(D_8005DBE0)
/* 11ACB8 80028EB8 A422DBE0 */  sh         $v0, %lo(D_8005DBE0)($at)
.L80028EBC:
/* 11ACBC 80028EBC 3C028006 */  lui        $v0, %hi(D_8005DBE2)
/* 11ACC0 80028EC0 8442DBE2 */  lh         $v0, %lo(D_8005DBE2)($v0)
/* 11ACC4 80028EC4 00021080 */  sll        $v0, $v0, 2
/* 11ACC8 80028EC8 00501021 */  addu       $v0, $v0, $s0
/* 11ACCC 80028ECC 0C00A43F */  jal        func_800290FC_11AEFC
/* 11ACD0 80028ED0 8C440000 */   lw        $a0, ($v0)
/* 11ACD4 80028ED4 10400003 */  beqz       $v0, .L80028EE4
/* 11ACD8 80028ED8 00000000 */   nop
/* 11ACDC 80028EDC 0C02DB14 */  jal        func_800B6C50
/* 11ACE0 80028EE0 00002021 */   addu      $a0, $zero, $zero
.L80028EE4:
/* 11ACE4 80028EE4 3C028006 */  lui        $v0, %hi(D_8005DBE2)
/* 11ACE8 80028EE8 9442DBE2 */  lhu        $v0, %lo(D_8005DBE2)($v0)
/* 11ACEC 80028EEC 24420001 */  addiu      $v0, $v0, 1
/* 11ACF0 80028EF0 3C018006 */  lui        $at, %hi(D_8005DBE2)
/* 11ACF4 80028EF4 A422DBE2 */  sh         $v0, %lo(D_8005DBE2)($at)
/* 11ACF8 80028EF8 00021400 */  sll        $v0, $v0, 0x10
/* 11ACFC 80028EFC 00021403 */  sra        $v0, $v0, 0x10
/* 11AD00 80028F00 28420003 */  slti       $v0, $v0, 3
/* 11AD04 80028F04 1440FFED */  bnez       $v0, .L80028EBC
/* 11AD08 80028F08 00001021 */   addu      $v0, $zero, $zero
.L80028F0C:
/* 11AD0C 80028F0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11AD10 80028F10 8FB20020 */  lw         $s2, 0x20($sp)
/* 11AD14 80028F14 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11AD18 80028F18 8FB00018 */  lw         $s0, 0x18($sp)
/* 11AD1C 80028F1C 03E00008 */  jr         $ra
/* 11AD20 80028F20 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80028F24_11AD24
/* 11AD24 80028F24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11AD28 80028F28 AFB00018 */  sw         $s0, 0x18($sp)
/* 11AD2C 80028F2C 00A08021 */  addu       $s0, $a1, $zero
/* 11AD30 80028F30 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11AD34 80028F34 AFB1001C */  sw         $s1, 0x1c($sp)
/* 11AD38 80028F38 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD3C 80028F3C C4400000 */  lwc1       $f0, ($v0)
/* 11AD40 80028F40 00808821 */  addu       $s1, $a0, $zero
/* 11AD44 80028F44 E6200008 */  swc1       $f0, 8($s1)
/* 11AD48 80028F48 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD4C 80028F4C C4400004 */  lwc1       $f0, 4($v0)
/* 11AD50 80028F50 E620000C */  swc1       $f0, 0xc($s1)
/* 11AD54 80028F54 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD58 80028F58 C4400008 */  lwc1       $f0, 8($v0)
/* 11AD5C 80028F5C E6200010 */  swc1       $f0, 0x10($s1)
/* 11AD60 80028F60 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD64 80028F64 C440000C */  lwc1       $f0, 0xc($v0)
/* 11AD68 80028F68 E6200014 */  swc1       $f0, 0x14($s1)
/* 11AD6C 80028F6C 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD70 80028F70 C4400010 */  lwc1       $f0, 0x10($v0)
/* 11AD74 80028F74 E6200018 */  swc1       $f0, 0x18($s1)
/* 11AD78 80028F78 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD7C 80028F7C 3C01437F */  lui        $at, 0x437f
/* 11AD80 80028F80 44810000 */  mtc1       $at, $f0
/* 11AD84 80028F84 C4420014 */  lwc1       $f2, 0x14($v0)
/* 11AD88 80028F88 E6200080 */  swc1       $f0, 0x80($s1)
/* 11AD8C 80028F8C E622001C */  swc1       $f2, 0x1c($s1)
/* 11AD90 80028F90 8E02000C */  lw         $v0, 0xc($s0)
/* 11AD94 80028F94 C4400018 */  lwc1       $f0, 0x18($v0)
/* 11AD98 80028F98 E6200020 */  swc1       $f0, 0x20($s1)
/* 11AD9C 80028F9C 86040000 */  lh         $a0, ($s0)
/* 11ADA0 80028FA0 8E050004 */  lw         $a1, 4($s0)
/* 11ADA4 80028FA4 0C027DAC */  jal        func_8009F6B0
/* 11ADA8 80028FA8 92060008 */   lbu       $a2, 8($s0)
/* 11ADAC 80028FAC 24040080 */  addiu      $a0, $zero, 0x80
/* 11ADB0 80028FB0 24050080 */  addiu      $a1, $zero, 0x80
/* 11ADB4 80028FB4 AE220000 */  sw         $v0, ($s1)
/* 11ADB8 80028FB8 90430066 */  lbu        $v1, 0x66($v0)
/* 11ADBC 80028FBC 92070009 */  lbu        $a3, 9($s0)
/* 11ADC0 80028FC0 3C01C248 */  lui        $at, 0xc248
/* 11ADC4 80028FC4 44810000 */  mtc1       $at, $f0
/* 11ADC8 80028FC8 3C014248 */  lui        $at, 0x4248
/* 11ADCC 80028FCC 44811000 */  mtc1       $at, $f2
/* 11ADD0 80028FD0 3C0143A2 */  lui        $at, 0x43a2
/* 11ADD4 80028FD4 34218000 */  ori        $at, $at, 0x8000
/* 11ADD8 80028FD8 44812000 */  mtc1       $at, $f4
/* 11ADDC 80028FDC 3C01C3FA */  lui        $at, 0xc3fa
/* 11ADE0 80028FE0 44813000 */  mtc1       $at, $f6
/* 11ADE4 80028FE4 24060080 */  addiu      $a2, $zero, 0x80
/* 11ADE8 80028FE8 00671825 */  or         $v1, $v1, $a3
/* 11ADEC 80028FEC A0430066 */  sb         $v1, 0x66($v0)
/* 11ADF0 80028FF0 240200FF */  addiu      $v0, $zero, 0xff
/* 11ADF4 80028FF4 240700FF */  addiu      $a3, $zero, 0xff
/* 11ADF8 80028FF8 AE200004 */  sw         $zero, 4($s1)
/* 11ADFC 80028FFC 3C018015 */  lui        $at, %hi(D_8014A058)
/* 11AE00 80029000 AC20A058 */  sw         $zero, %lo(D_8014A058)($at)
/* 11AE04 80029004 3C018015 */  lui        $at, %hi(D_8014A05C)
/* 11AE08 80029008 AC20A05C */  sw         $zero, %lo(D_8014A05C)($at)
/* 11AE0C 8002900C 3C018015 */  lui        $at, %hi(D_8014A060)
/* 11AE10 80029010 AC20A060 */  sw         $zero, %lo(D_8014A060)($at)
/* 11AE14 80029014 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11AE18 80029018 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 11AE1C 8002901C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11AE20 80029020 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 11AE24 80029024 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11AE28 80029028 E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 11AE2C 8002902C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 11AE30 80029030 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 11AE34 80029034 3C018015 */  lui        $at, %hi(D_8014A080)
/* 11AE38 80029038 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* 11AE3C 8002903C 3C018015 */  lui        $at, %hi(D_8014A084)
/* 11AE40 80029040 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 11AE44 80029044 3C018015 */  lui        $at, %hi(D_8014A088)
/* 11AE48 80029048 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* 11AE4C 8002904C AFA20010 */  sw         $v0, 0x10($sp)
/* 11AE50 80029050 0C027101 */  jal        func_8009C404
/* 11AE54 80029054 AFA20014 */   sw        $v0, 0x14($sp)
/* 11AE58 80029058 3C014130 */  lui        $at, 0x4130
/* 11AE5C 8002905C 44810000 */  mtc1       $at, $f0
/* 11AE60 80029060 3C0142D2 */  lui        $at, 0x42d2
/* 11AE64 80029064 44811000 */  mtc1       $at, $f2
/* 11AE68 80029068 3C01C282 */  lui        $at, 0xc282
/* 11AE6C 8002906C 44812000 */  mtc1       $at, $f4
/* 11AE70 80029070 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11AE74 80029074 C426A064 */  lwc1       $f6, %lo(D_8014A064)($at)
/* 11AE78 80029078 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11AE7C 8002907C C428A068 */  lwc1       $f8, %lo(D_8014A068)($at)
/* 11AE80 80029080 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11AE84 80029084 C42AA06C */  lwc1       $f10, %lo(D_8014A06C)($at)
/* 11AE88 80029088 3C018017 */  lui        $at, %hi(D_8016E568)
/* 11AE8C 8002908C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 11AE90 80029090 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 11AE94 80029094 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 11AE98 80029098 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 11AE9C 8002909C E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 11AEA0 800290A0 3C018015 */  lui        $at, %hi(D_8014A054)
/* 11AEA4 800290A4 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 11AEA8 800290A8 3C018015 */  lui        $at, %hi(D_8014A050)
/* 11AEAC 800290AC E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 11AEB0 800290B0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 11AEB4 800290B4 E42AD1A8 */  swc1       $f10, %lo(D_8016D1A8)($at)
/* 11AEB8 800290B8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11AEBC 800290BC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11AEC0 800290C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 11AEC4 800290C4 03E00008 */  jr         $ra
/* 11AEC8 800290C8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800290CC_11AECC
/* 11AECC 800290CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11AED0 800290D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 11AED4 800290D4 00808021 */  addu       $s0, $a0, $zero
/* 11AED8 800290D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11AEDC 800290DC 0C027E98 */  jal        func_8009FA60
/* 11AEE0 800290E0 8E040000 */   lw        $a0, ($s0)
/* 11AEE4 800290E4 0C027880 */  jal        func_8009E200
/* 11AEE8 800290E8 8E040004 */   lw        $a0, 4($s0)
/* 11AEEC 800290EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11AEF0 800290F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11AEF4 800290F4 03E00008 */  jr         $ra
/* 11AEF8 800290F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800290FC_11AEFC
/* 11AEFC 800290FC 3C038006 */  lui        $v1, %hi(D_8005DBE2)
/* 11AF00 80029100 8463DBE2 */  lh         $v1, %lo(D_8005DBE2)($v1)
/* 11AF04 80029104 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11AF08 80029108 AFB10024 */  sw         $s1, 0x24($sp)
/* 11AF0C 8002910C 00808821 */  addu       $s1, $a0, $zero
/* 11AF10 80029110 24020001 */  addiu      $v0, $zero, 1
/* 11AF14 80029114 AFBF0028 */  sw         $ra, 0x28($sp)
/* 11AF18 80029118 10620020 */  beq        $v1, $v0, .L8002919C
/* 11AF1C 8002911C AFB00020 */   sw        $s0, 0x20($sp)
/* 11AF20 80029120 28620002 */  slti       $v0, $v1, 2
/* 11AF24 80029124 50400005 */  beql       $v0, $zero, .L8002913C
/* 11AF28 80029128 24020002 */   addiu     $v0, $zero, 2
/* 11AF2C 8002912C 10600007 */  beqz       $v1, .L8002914C
/* 11AF30 80029130 2405FF80 */   addiu     $a1, $zero, -0x80
/* 11AF34 80029134 0800A47F */  j          .L800291FC
/* 11AF38 80029138 00000000 */   nop
.L8002913C:
/* 11AF3C 8002913C 10620024 */  beq        $v1, $v0, .L800291D0
/* 11AF40 80029140 00000000 */   nop
/* 11AF44 80029144 0800A47F */  j          .L800291FC
/* 11AF48 80029148 00000000 */   nop
.L8002914C:
/* 11AF4C 8002914C 3C048006 */  lui        $a0, %hi(D_8005DBF0)
/* 11AF50 80029150 8C84DBF0 */  lw         $a0, %lo(D_8005DBF0)($a0)
/* 11AF54 80029154 0C02933E */  jal        func_800A4CF8
/* 11AF58 80029158 2406FF80 */   addiu     $a2, $zero, -0x80
/* 11AF5C 8002915C 3C028015 */  lui        $v0, %hi(D_8014A088)
/* 11AF60 80029160 2442A088 */  addiu      $v0, $v0, %lo(D_8014A088)
/* 11AF64 80029164 C4420000 */  lwc1       $f2, ($v0)
/* 11AF68 80029168 3C01C448 */  lui        $at, 0xc448
/* 11AF6C 8002916C 44810000 */  mtc1       $at, $f0
/* 11AF70 80029170 00000000 */  nop
/* 11AF74 80029174 4602003C */  c.lt.s     $f0, $f2
/* 11AF78 80029178 00000000 */  nop
/* 11AF7C 8002917C 4500001F */  bc1f       .L800291FC
/* 11AF80 80029180 00000000 */   nop
/* 11AF84 80029184 3C013F80 */  lui        $at, 0x3f80
/* 11AF88 80029188 44810000 */  mtc1       $at, $f0
/* 11AF8C 8002918C 00000000 */  nop
/* 11AF90 80029190 46001001 */  sub.s      $f0, $f2, $f0
/* 11AF94 80029194 0800A47F */  j          .L800291FC
/* 11AF98 80029198 E4400000 */   swc1      $f0, ($v0)
.L8002919C:
/* 11AF9C 8002919C 3C038006 */  lui        $v1, %hi(D_8005DBE0)
/* 11AFA0 800291A0 8463DBE0 */  lh         $v1, %lo(D_8005DBE0)($v1)
/* 11AFA4 800291A4 2402004B */  addiu      $v0, $zero, 0x4b
/* 11AFA8 800291A8 14620009 */  bne        $v1, $v0, .L800291D0
/* 11AFAC 800291AC 00000000 */   nop
/* 11AFB0 800291B0 3C048006 */  lui        $a0, %hi(D_8005DBE8)
/* 11AFB4 800291B4 8C84DBE8 */  lw         $a0, %lo(D_8005DBE8)($a0)
/* 11AFB8 800291B8 0C026E46 */  jal        func_8009B918
/* 11AFBC 800291BC 00002821 */   addu      $a1, $zero, $zero
/* 11AFC0 800291C0 0C026DD5 */  jal        func_8009B754
/* 11AFC4 800291C4 24040054 */   addiu     $a0, $zero, 0x54
/* 11AFC8 800291C8 3C018006 */  lui        $at, %hi(D_8005DBE4)
/* 11AFCC 800291CC AC22DBE4 */  sw         $v0, %lo(D_8005DBE4)($at)
.L800291D0:
/* 11AFD0 800291D0 3C028006 */  lui        $v0, %hi(D_8005DBE0)
/* 11AFD4 800291D4 8442DBE0 */  lh         $v0, %lo(D_8005DBE0)($v0)
/* 11AFD8 800291D8 2842004B */  slti       $v0, $v0, 0x4b
/* 11AFDC 800291DC 10400007 */  beqz       $v0, .L800291FC
/* 11AFE0 800291E0 00000000 */   nop
/* 11AFE4 800291E4 C6200010 */  lwc1       $f0, 0x10($s1)
/* 11AFE8 800291E8 3C014000 */  lui        $at, 0x4000
/* 11AFEC 800291EC 44811000 */  mtc1       $at, $f2
/* 11AFF0 800291F0 00000000 */  nop
/* 11AFF4 800291F4 46020001 */  sub.s      $f0, $f0, $f2
/* 11AFF8 800291F8 E6200010 */  swc1       $f0, 0x10($s1)
.L800291FC:
/* 11AFFC 800291FC C6200020 */  lwc1       $f0, 0x20($s1)
/* 11B000 80029200 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11B004 80029204 C6200008 */  lwc1       $f0, 8($s1)
/* 11B008 80029208 E7A00014 */  swc1       $f0, 0x14($sp)
/* 11B00C 8002920C C620000C */  lwc1       $f0, 0xc($s1)
/* 11B010 80029210 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11B014 80029214 C6200010 */  lwc1       $f0, 0x10($s1)
/* 11B018 80029218 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11B01C 8002921C 8E250014 */  lw         $a1, 0x14($s1)
/* 11B020 80029220 8E260018 */  lw         $a2, 0x18($s1)
/* 11B024 80029224 8E27001C */  lw         $a3, 0x1c($s1)
/* 11B028 80029228 26300028 */  addiu      $s0, $s1, 0x28
/* 11B02C 8002922C 0C02FD0E */  jal        func_800BF438
/* 11B030 80029230 02002021 */   addu      $a0, $s0, $zero
/* 11B034 80029234 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 11B038 80029238 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 11B03C 8002923C 3C03DA38 */  lui        $v1, 0xda38
/* 11B040 80029240 34630003 */  ori        $v1, $v1, 3
/* 11B044 80029244 AC430000 */  sw         $v1, ($v0)
/* 11B048 80029248 AC500004 */  sw         $s0, 4($v0)
/* 11B04C 8002924C 8E230000 */  lw         $v1, ($s1)
/* 11B050 80029250 24420008 */  addiu      $v0, $v0, 8
/* 11B054 80029254 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 11B058 80029258 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 11B05C 8002925C A0600067 */  sb         $zero, 0x67($v1)
/* 11B060 80029260 8E240000 */  lw         $a0, ($s1)
/* 11B064 80029264 0C027F77 */  jal        func_8009FDDC
/* 11B068 80029268 8E250004 */   lw        $a1, 4($s1)
/* 11B06C 8002926C 3C048006 */  lui        $a0, %hi(D_8005DBF4)
/* 11B070 80029270 0C028A40 */  jal        func_800A2900
/* 11B074 80029274 8C84DBF4 */   lw        $a0, %lo(D_8005DBF4)($a0)
/* 11B078 80029278 3C048006 */  lui        $a0, %hi(D_8005DBF0)
/* 11B07C 8002927C 0C028A40 */  jal        func_800A2900
/* 11B080 80029280 8C84DBF0 */   lw        $a0, %lo(D_8005DBF0)($a0)
/* 11B084 80029284 00001021 */  addu       $v0, $zero, $zero
/* 11B088 80029288 8FBF0028 */  lw         $ra, 0x28($sp)
/* 11B08C 8002928C 8FB10024 */  lw         $s1, 0x24($sp)
/* 11B090 80029290 8FB00020 */  lw         $s0, 0x20($sp)
/* 11B094 80029294 03E00008 */  jr         $ra
/* 11B098 80029298 27BD0030 */   addiu     $sp, $sp, 0x30
/* 11B09C 8002929C 00000000 */  nop