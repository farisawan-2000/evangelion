.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80038850_12A650
/* 12A650 80038850 3C028005 */  lui        $v0, %hi(D_80051DF0)
/* 12A654 80038854 90421DF0 */  lbu        $v0, %lo(D_80051DF0)($v0)
/* 12A658 80038858 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A65C 8003885C AFB00010 */  sw         $s0, 0x10($sp)
/* 12A660 80038860 00808021 */  addu       $s0, $a0, $zero
/* 12A664 80038864 10400009 */  beqz       $v0, .L8003888C
/* 12A668 80038868 AFBF0014 */   sw        $ra, 0x14($sp)
/* 12A66C 8003886C 0C02A5D2 */  jal        func_800A9748
/* 12A670 80038870 24040001 */   addiu     $a0, $zero, 1
/* 12A674 80038874 0C00E252 */  jal        func_80038948_12A748
/* 12A678 80038878 00000000 */   nop
/* 12A67C 8003887C 3C018006 */  lui        $at, %hi(D_8005DD70)
/* 12A680 80038880 AC22DD70 */  sw         $v0, %lo(D_8005DD70)($at)
/* 12A684 80038884 3C018005 */  lui        $at, %hi(D_80051DF0)
/* 12A688 80038888 A0201DF0 */  sb         $zero, %lo(D_80051DF0)($at)
.L8003888C:
/* 12A68C 8003888C 16000003 */  bnez       $s0, .L8003889C
/* 12A690 80038890 24020001 */   addiu     $v0, $zero, 1
/* 12A694 80038894 3C018005 */  lui        $at, %hi(D_80051DF4)
/* 12A698 80038898 AC221DF4 */  sw         $v0, %lo(D_80051DF4)($at)
.L8003889C:
/* 12A69C 8003889C 3C028005 */  lui        $v0, %hi(D_80051DF4)
/* 12A6A0 800388A0 8C421DF4 */  lw         $v0, %lo(D_80051DF4)($v0)
/* 12A6A4 800388A4 1040001D */  beqz       $v0, .L8003891C
/* 12A6A8 800388A8 00000000 */   nop
/* 12A6AC 800388AC 3C018006 */  lui        $at, %hi(D_8005DD74)
/* 12A6B0 800388B0 AC20DD74 */  sw         $zero, %lo(D_8005DD74)($at)
.L800388B4:
/* 12A6B4 800388B4 3C028006 */  lui        $v0, %hi(D_8005DD74)
/* 12A6B8 800388B8 8C42DD74 */  lw         $v0, %lo(D_8005DD74)($v0)
/* 12A6BC 800388BC 3C038006 */  lui        $v1, %hi(D_8005DD70)
/* 12A6C0 800388C0 8C63DD70 */  lw         $v1, %lo(D_8005DD70)($v1)
/* 12A6C4 800388C4 00021080 */  sll        $v0, $v0, 2
/* 12A6C8 800388C8 00431021 */  addu       $v0, $v0, $v1
/* 12A6CC 800388CC 0C028D30 */  jal        func_800A34C0
/* 12A6D0 800388D0 8C440000 */   lw        $a0, ($v0)
/* 12A6D4 800388D4 3C028006 */  lui        $v0, %hi(D_8005DD74)
/* 12A6D8 800388D8 8C42DD74 */  lw         $v0, %lo(D_8005DD74)($v0)
/* 12A6DC 800388DC 24420001 */  addiu      $v0, $v0, 1
/* 12A6E0 800388E0 3C018006 */  lui        $at, %hi(D_8005DD74)
/* 12A6E4 800388E4 AC22DD74 */  sw         $v0, %lo(D_8005DD74)($at)
/* 12A6E8 800388E8 2C42000C */  sltiu      $v0, $v0, 0xc
/* 12A6EC 800388EC 1440FFF1 */  bnez       $v0, .L800388B4
/* 12A6F0 800388F0 00000000 */   nop
/* 12A6F4 800388F4 3C048006 */  lui        $a0, %hi(D_8005DD70)
/* 12A6F8 800388F8 0C00E2D6 */  jal        func_80038B58_12A958
/* 12A6FC 800388FC 2484DD70 */   addiu     $a0, $a0, %lo(D_8005DD70)
/* 12A700 80038900 24030001 */  addiu      $v1, $zero, 1
/* 12A704 80038904 3C018005 */  lui        $at, %hi(D_80051DF4)
/* 12A708 80038908 AC201DF4 */  sw         $zero, %lo(D_80051DF4)($at)
/* 12A70C 8003890C 3C018005 */  lui        $at, %hi(D_80051DF0)
/* 12A710 80038910 A0231DF0 */  sb         $v1, %lo(D_80051DF0)($at)
/* 12A714 80038914 0800E24E */  j          .L80038938
/* 12A718 80038918 24020001 */   addiu     $v0, $zero, 1
.L8003891C:
/* 12A71C 8003891C 3C048006 */  lui        $a0, %hi(D_8005DD70)
/* 12A720 80038920 0C00E2A7 */  jal        func_80038A9C_12A89C
/* 12A724 80038924 8C84DD70 */   lw        $a0, %lo(D_8005DD70)($a0)
/* 12A728 80038928 3C018005 */  lui        $at, %hi(D_80051DF4)
/* 12A72C 8003892C 0C009767 */  jal        func_80025D9C_117B9C
/* 12A730 80038930 AC221DF4 */   sw        $v0, %lo(D_80051DF4)($at)
/* 12A734 80038934 00001021 */  addu       $v0, $zero, $zero
.L80038938:
/* 12A738 80038938 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12A73C 8003893C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A740 80038940 03E00008 */  jr         $ra
/* 12A744 80038944 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80038948_12A748
/* 12A748 80038948 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12A74C 8003894C AFBF0024 */  sw         $ra, 0x24($sp)
/* 12A750 80038950 AFB40020 */  sw         $s4, 0x20($sp)
/* 12A754 80038954 AFB3001C */  sw         $s3, 0x1c($sp)
/* 12A758 80038958 AFB20018 */  sw         $s2, 0x18($sp)
/* 12A75C 8003895C AFB10014 */  sw         $s1, 0x14($sp)
/* 12A760 80038960 AFB00010 */  sw         $s0, 0x10($sp)
/* 12A764 80038964 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 12A768 80038968 0C032663 */  jal        func_800C998C
/* 12A76C 8003896C 24040038 */   addiu     $a0, $zero, 0x38
/* 12A770 80038970 0040A021 */  addu       $s4, $v0, $zero
/* 12A774 80038974 02802021 */  addu       $a0, $s4, $zero
/* 12A778 80038978 0C030134 */  jal        bzero
/* 12A77C 8003897C 24050038 */   addiu     $a1, $zero, 0x38
/* 12A780 80038980 00009821 */  addu       $s3, $zero, $zero
/* 12A784 80038984 3C014080 */  lui        $at, 0x4080
/* 12A788 80038988 4481A000 */  mtc1       $at, $f20
.L8003898C:
/* 12A78C 8003898C 3271FFFF */  andi       $s1, $s3, 0xffff
/* 12A790 80038990 001180C0 */  sll        $s0, $s1, 3
/* 12A794 80038994 02118023 */  subu       $s0, $s0, $s1
/* 12A798 80038998 00108080 */  sll        $s0, $s0, 2
/* 12A79C 8003899C 3C048006 */  lui        $a0, %hi(D_8005C134)
/* 12A7A0 800389A0 00902021 */  addu       $a0, $a0, $s0
/* 12A7A4 800389A4 9484C134 */  lhu        $a0, %lo(D_8005C134)($a0)
/* 12A7A8 800389A8 24050005 */  addiu      $a1, $zero, 5
/* 12A7AC 800389AC 0C028CB7 */  jal        func_800A32DC
/* 12A7B0 800389B0 00003021 */   addu      $a2, $zero, $zero
/* 12A7B4 800389B4 3C018006 */  lui        $at, %hi(D_8005C13C)
/* 12A7B8 800389B8 00300821 */  addu       $at, $at, $s0
/* 12A7BC 800389BC C422C13C */  lwc1       $f2, %lo(D_8005C13C)($at)
/* 12A7C0 800389C0 26730001 */  addiu      $s3, $s3, 1
/* 12A7C4 800389C4 46141082 */  mul.s      $f2, $f2, $f20
/* 12A7C8 800389C8 00409021 */  addu       $s2, $v0, $zero
/* 12A7CC 800389CC 02402021 */  addu       $a0, $s2, $zero
/* 12A7D0 800389D0 9642001E */  lhu        $v0, 0x1e($s2)
/* 12A7D4 800389D4 3C018006 */  lui        $at, %hi(D_8005C140)
/* 12A7D8 800389D8 00300821 */  addu       $at, $at, $s0
/* 12A7DC 800389DC C420C140 */  lwc1       $f0, %lo(D_8005C140)($at)
/* 12A7E0 800389E0 3C038006 */  lui        $v1, %hi(D_8005C138)
/* 12A7E4 800389E4 00701821 */  addu       $v1, $v1, $s0
/* 12A7E8 800389E8 9463C138 */  lhu        $v1, %lo(D_8005C138)($v1)
/* 12A7EC 800389EC 3C058006 */  lui        $a1, %hi(D_8005C136)
/* 12A7F0 800389F0 00B02821 */  addu       $a1, $a1, $s0
/* 12A7F4 800389F4 94A5C136 */  lhu        $a1, %lo(D_8005C136)($a1)
/* 12A7F8 800389F8 46140002 */  mul.s      $f0, $f0, $f20
/* 12A7FC 800389FC 00431025 */  or         $v0, $v0, $v1
/* 12A800 80038A00 A642001E */  sh         $v0, 0x1e($s2)
/* 12A804 80038A04 A645001C */  sh         $a1, 0x1c($s2)
/* 12A808 80038A08 4600110D */  trunc.w.s  $f4, $f2
/* 12A80C 80038A0C 44052000 */  mfc1       $a1, $f4
/* 12A810 80038A10 00000000 */  nop
/* 12A814 80038A14 00052C00 */  sll        $a1, $a1, 0x10
/* 12A818 80038A18 00052C03 */  sra        $a1, $a1, 0x10
/* 12A81C 80038A1C 4600008D */  trunc.w.s  $f2, $f0
/* 12A820 80038A20 44061000 */  mfc1       $a2, $f2
/* 12A824 80038A24 00000000 */  nop
/* 12A828 80038A28 00063400 */  sll        $a2, $a2, 0x10
/* 12A82C 80038A2C 0C028D89 */  jal        func_800A3624
/* 12A830 80038A30 00063403 */   sra       $a2, $a2, 0x10
/* 12A834 80038A34 00118880 */  sll        $s1, $s1, 2
/* 12A838 80038A38 02348821 */  addu       $s1, $s1, $s4
/* 12A83C 80038A3C 3262FFFF */  andi       $v0, $s3, 0xffff
/* 12A840 80038A40 2C42000C */  sltiu      $v0, $v0, 0xc
/* 12A844 80038A44 1440FFD1 */  bnez       $v0, .L8003898C
/* 12A848 80038A48 AE320000 */   sw        $s2, ($s1)
/* 12A84C 80038A4C 3C028006 */  lui        $v0, %hi(D_8005C100)
/* 12A850 80038A50 2442C100 */  addiu      $v0, $v0, %lo(D_8005C100)
/* 12A854 80038A54 AE820030 */  sw         $v0, 0x30($s4)
/* 12A858 80038A58 8E830030 */  lw         $v1, 0x30($s4)
/* 12A85C 80038A5C 90420000 */  lbu        $v0, ($v0)
/* 12A860 80038A60 90630001 */  lbu        $v1, 1($v1)
/* 12A864 80038A64 2404013A */  addiu      $a0, $zero, 0x13a
/* 12A868 80038A68 A2820034 */  sb         $v0, 0x34($s4)
/* 12A86C 80038A6C 0C026DD5 */  jal        func_8009B754
/* 12A870 80038A70 A2830035 */   sb        $v1, 0x35($s4)
/* 12A874 80038A74 02801021 */  addu       $v0, $s4, $zero
/* 12A878 80038A78 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12A87C 80038A7C 8FB40020 */  lw         $s4, 0x20($sp)
/* 12A880 80038A80 8FB3001C */  lw         $s3, 0x1c($sp)
/* 12A884 80038A84 8FB20018 */  lw         $s2, 0x18($sp)
/* 12A888 80038A88 8FB10014 */  lw         $s1, 0x14($sp)
/* 12A88C 80038A8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A890 80038A90 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 12A894 80038A94 03E00008 */  jr         $ra
/* 12A898 80038A98 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80038A9C_12A89C
/* 12A89C 80038A9C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12A8A0 80038AA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 12A8A4 80038AA4 00808821 */  addu       $s1, $a0, $zero
/* 12A8A8 80038AA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12A8AC 80038AAC AFB20020 */  sw         $s2, 0x20($sp)
/* 12A8B0 80038AB0 AFB00018 */  sw         $s0, 0x18($sp)
/* 12A8B4 80038AB4 82220034 */  lb         $v0, 0x34($s1)
/* 12A8B8 80038AB8 1440000D */  bnez       $v0, .L80038AF0
/* 12A8BC 80038ABC 00009021 */   addu      $s2, $zero, $zero
/* 12A8C0 80038AC0 8E220030 */  lw         $v0, 0x30($s1)
/* 12A8C4 80038AC4 80430002 */  lb         $v1, 2($v0)
/* 12A8C8 80038AC8 24420002 */  addiu      $v0, $v0, 2
/* 12A8CC 80038ACC AE220030 */  sw         $v0, 0x30($s1)
/* 12A8D0 80038AD0 10600006 */  beqz       $v1, .L80038AEC
/* 12A8D4 80038AD4 00602021 */   addu      $a0, $v1, $zero
/* 12A8D8 80038AD8 8E220030 */  lw         $v0, 0x30($s1)
/* 12A8DC 80038ADC 90420001 */  lbu        $v0, 1($v0)
/* 12A8E0 80038AE0 A2240034 */  sb         $a0, 0x34($s1)
/* 12A8E4 80038AE4 0800E2BC */  j          .L80038AF0
/* 12A8E8 80038AE8 A2220035 */   sb        $v0, 0x35($s1)
.L80038AEC:
/* 12A8EC 80038AEC 24120001 */  addiu      $s2, $zero, 1
.L80038AF0:
/* 12A8F0 80038AF0 92220034 */  lbu        $v0, 0x34($s1)
/* 12A8F4 80038AF4 00008021 */  addu       $s0, $zero, $zero
/* 12A8F8 80038AF8 2442FFFF */  addiu      $v0, $v0, -1
/* 12A8FC 80038AFC A2220034 */  sb         $v0, 0x34($s1)
/* 12A900 80038B00 3202FFFF */  andi       $v0, $s0, 0xffff
.L80038B04:
/* 12A904 80038B04 00021080 */  sll        $v0, $v0, 2
/* 12A908 80038B08 00511021 */  addu       $v0, $v0, $s1
/* 12A90C 80038B0C 8C440000 */  lw         $a0, ($v0)
/* 12A910 80038B10 0C028A40 */  jal        func_800A2900
/* 12A914 80038B14 26100001 */   addiu     $s0, $s0, 1
/* 12A918 80038B18 3202FFFF */  andi       $v0, $s0, 0xffff
/* 12A91C 80038B1C 2C420009 */  sltiu      $v0, $v0, 9
/* 12A920 80038B20 1440FFF8 */  bnez       $v0, .L80038B04
/* 12A924 80038B24 3202FFFF */   andi      $v0, $s0, 0xffff
/* 12A928 80038B28 82220035 */  lb         $v0, 0x35($s1)
/* 12A92C 80038B2C 00021080 */  sll        $v0, $v0, 2
/* 12A930 80038B30 00511021 */  addu       $v0, $v0, $s1
/* 12A934 80038B34 0C028A40 */  jal        func_800A2900
/* 12A938 80038B38 8C440000 */   lw        $a0, ($v0)
/* 12A93C 80038B3C 02401021 */  addu       $v0, $s2, $zero
/* 12A940 80038B40 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12A944 80038B44 8FB20020 */  lw         $s2, 0x20($sp)
/* 12A948 80038B48 8FB1001C */  lw         $s1, 0x1c($sp)
/* 12A94C 80038B4C 8FB00018 */  lw         $s0, 0x18($sp)
/* 12A950 80038B50 03E00008 */  jr         $ra
/* 12A954 80038B54 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80038B58_12A958
/* 12A958 80038B58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A95C 80038B5C AFB00010 */  sw         $s0, 0x10($sp)
/* 12A960 80038B60 00808021 */  addu       $s0, $a0, $zero
/* 12A964 80038B64 12000007 */  beqz       $s0, .L80038B84
/* 12A968 80038B68 AFBF0014 */   sw        $ra, 0x14($sp)
/* 12A96C 80038B6C 8E040000 */  lw         $a0, ($s0)
/* 12A970 80038B70 10800004 */  beqz       $a0, .L80038B84
/* 12A974 80038B74 00000000 */   nop
/* 12A978 80038B78 0C0326A1 */  jal        func_800C9A84
/* 12A97C 80038B7C 00000000 */   nop
/* 12A980 80038B80 AE000000 */  sw         $zero, ($s0)
.L80038B84:
/* 12A984 80038B84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12A988 80038B88 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A98C 80038B8C 03E00008 */  jr         $ra
/* 12A990 80038B90 27BD0018 */   addiu     $sp, $sp, 0x18
/* 12A994 80038B94 00000000 */  nop
/* 12A998 80038B98 00000000 */  nop
/* 12A99C 80038B9C 00000000 */  nop