glabel func_8009BB08
/* 6708 8009BB08 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 670C 8009BB0C AFB30034 */  sw         $s3, 0x34($sp)
/* 6710 8009BB10 00809821 */  addu       $s3, $a0, $zero
/* 6714 8009BB14 AFBF0038 */  sw         $ra, 0x38($sp)
/* 6718 8009BB18 AFB20030 */  sw         $s2, 0x30($sp)
/* 671C 8009BB1C AFB1002C */  sw         $s1, 0x2C($sp)
/* 6720 8009BB20 AFB00028 */  sw         $s0, 0x28($sp)
/* 6724 8009BB24 9663001C */  lhu        $v1, 0x1C($s3)
/* 6728 8009BB28 8E700014 */  lw         $s0, 0x14($s3)
/* 672C 8009BB2C 24020001 */  addiu      $v0, $zero, 0x1
/* 6730 8009BB30 1062009D */  beq        $v1, $v0, .L8009BDA8
/* 6734 8009BB34 28620002 */   slti      $v0, $v1, 0x2
/* 6738 8009BB38 50400005 */  beql       $v0, $zero, .L8009BB50
/* 673C 8009BB3C 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 6740 8009BB40 10600007 */  beqz       $v1, .L8009BB60
/* 6744 8009BB44 24020001 */   addiu     $v0, $zero, 0x1
/* 6748 8009BB48 08026FC6 */  j          .L8009BF18
/* 674C 8009BB4C 00000000 */   nop
.L8009BB50:
/* 6750 8009BB50 106200EA */  beq        $v1, $v0, .L8009BEFC
/* 6754 8009BB54 24020001 */   addiu     $v0, $zero, 0x1
/* 6758 8009BB58 08026FC6 */  j          .L8009BF18
/* 675C 8009BB5C 00000000 */   nop
.L8009BB60:
/* 6760 8009BB60 0C032663 */  jal        func_800C998C
/* 6764 8009BB64 24040024 */   addiu     $a0, $zero, 0x24
/* 6768 8009BB68 00402021 */  addu       $a0, $v0, $zero
/* 676C 8009BB6C 24050024 */  addiu      $a1, $zero, 0x24
/* 6770 8009BB70 0C030134 */  jal        bzero
/* 6774 8009BB74 AE640014 */   sw        $a0, 0x14($s3)
/* 6778 8009BB78 3C038010 */  lui        $v1, %hi(D_800FF3CA)
/* 677C 8009BB7C 8463F3CA */  lh         $v1, %lo(D_800FF3CA)($v1)
/* 6780 8009BB80 3C078010 */  lui        $a3, %hi(D_800FF3C8)
/* 6784 8009BB84 84E7F3C8 */  lh         $a3, %lo(D_800FF3C8)($a3)
/* 6788 8009BB88 3C068010 */  lui        $a2, %hi(D_800FF3C2)
/* 678C 8009BB8C 94C6F3C2 */  lhu        $a2, %lo(D_800FF3C2)($a2)
/* 6790 8009BB90 00671023 */  subu       $v0, $v1, $a3
/* 6794 8009BB94 44824000 */  mtc1       $v0, $f8
/* 6798 8009BB98 00000000 */  nop
/* 679C 8009BB9C 46804220 */  cvt.s.w    $f8, $f8
/* 67A0 8009BBA0 00061400 */  sll        $v0, $a2, 16
/* 67A4 8009BBA4 00021403 */  sra        $v0, $v0, 16
/* 67A8 8009BBA8 44821000 */  mtc1       $v0, $f2
/* 67AC 8009BBAC 00000000 */  nop
/* 67B0 8009BBB0 468010A0 */  cvt.s.w    $f2, $f2
/* 67B4 8009BBB4 46024203 */  div.s      $f8, $f8, $f2
/* 67B8 8009BBB8 3C028010 */  lui        $v0, %hi(D_800FF3CC)
/* 67BC 8009BBBC 8442F3CC */  lh         $v0, %lo(D_800FF3CC)($v0)
/* 67C0 8009BBC0 3C058010 */  lui        $a1, %hi(D_800FF3C6)
/* 67C4 8009BBC4 94A5F3C6 */  lhu        $a1, %lo(D_800FF3C6)($a1)
/* 67C8 8009BBC8 00431023 */  subu       $v0, $v0, $v1
/* 67CC 8009BBCC 44823000 */  mtc1       $v0, $f6
/* 67D0 8009BBD0 00000000 */  nop
/* 67D4 8009BBD4 468031A0 */  cvt.s.w    $f6, $f6
/* 67D8 8009BBD8 00051400 */  sll        $v0, $a1, 16
/* 67DC 8009BBDC 00021403 */  sra        $v0, $v0, 16
/* 67E0 8009BBE0 44820000 */  mtc1       $v0, $f0
/* 67E4 8009BBE4 00000000 */  nop
/* 67E8 8009BBE8 46800020 */  cvt.s.w    $f0, $f0
/* 67EC 8009BBEC 46003183 */  div.s      $f6, $f6, $f0
/* 67F0 8009BBF0 3C048010 */  lui        $a0, %hi(D_800FF3CE)
/* 67F4 8009BBF4 8484F3CE */  lh         $a0, %lo(D_800FF3CE)($a0)
/* 67F8 8009BBF8 3C038010 */  lui        $v1, %hi(D_800FF3D0)
/* 67FC 8009BBFC 8463F3D0 */  lh         $v1, %lo(D_800FF3D0)($v1)
/* 6800 8009BC00 00641023 */  subu       $v0, $v1, $a0
/* 6804 8009BC04 44822000 */  mtc1       $v0, $f4
/* 6808 8009BC08 00000000 */  nop
/* 680C 8009BC0C 46802120 */  cvt.s.w    $f4, $f4
/* 6810 8009BC10 46022103 */  div.s      $f4, $f4, $f2
/* 6814 8009BC14 3C028010 */  lui        $v0, %hi(D_800FF3D2)
/* 6818 8009BC18 8442F3D2 */  lh         $v0, %lo(D_800FF3D2)($v0)
/* 681C 8009BC1C 00431023 */  subu       $v0, $v0, $v1
/* 6820 8009BC20 44821000 */  mtc1       $v0, $f2
/* 6824 8009BC24 00000000 */  nop
/* 6828 8009BC28 468010A0 */  cvt.s.w    $f2, $f2
/* 682C 8009BC2C 46001083 */  div.s      $f2, $f2, $f0
/* 6830 8009BC30 8E700014 */  lw         $s0, 0x14($s3)
/* 6834 8009BC34 3C118010 */  lui        $s1, %hi(D_800FF3C0)
/* 6838 8009BC38 8631F3C0 */  lh         $s1, %lo(D_800FF3C0)($s1)
/* 683C 8009BC3C 3C028010 */  lui        $v0, %hi(D_800FF3C4)
/* 6840 8009BC40 9442F3C4 */  lhu        $v0, %lo(D_800FF3C4)($v0)
/* 6844 8009BC44 3C038017 */  lui        $v1, %hi(D_8016E590)
/* 6848 8009BC48 8C63E590 */  lw         $v1, %lo(D_8016E590)($v1)
/* 684C 8009BC4C A6060000 */  sh         $a2, 0x0($s0)
/* 6850 8009BC50 A6050004 */  sh         $a1, 0x4($s0)
/* 6854 8009BC54 44870000 */  mtc1       $a3, $f0
/* 6858 8009BC58 00000000 */  nop
/* 685C 8009BC5C 46800020 */  cvt.s.w    $f0, $f0
/* 6860 8009BC60 E6000010 */  swc1       $f0, 0x10($s0)
/* 6864 8009BC64 44840000 */  mtc1       $a0, $f0
/* 6868 8009BC68 00000000 */  nop
/* 686C 8009BC6C 46800020 */  cvt.s.w    $f0, $f0
/* 6870 8009BC70 E600001C */  swc1       $f0, 0x1C($s0)
/* 6874 8009BC74 A6020002 */  sh         $v0, 0x2($s0)
/* 6878 8009BC78 E6080008 */  swc1       $f8, 0x8($s0)
/* 687C 8009BC7C E606000C */  swc1       $f6, 0xC($s0)
/* 6880 8009BC80 E6040014 */  swc1       $f4, 0x14($s0)
/* 6884 8009BC84 1060000A */  beqz       $v1, .L8009BCB0
/* 6888 8009BC88 E6020018 */   swc1      $f2, 0x18($s0)
/* 688C 8009BC8C 3C028015 */  lui        $v0, %hi(D_80149BAC)
/* 6890 8009BC90 8C429BAC */  lw         $v0, %lo(D_80149BAC)($v0)
/* 6894 8009BC94 50400026 */  beql       $v0, $zero, .L8009BD30
/* 6898 8009BC98 00002021 */   addu      $a0, $zero, $zero
/* 689C 8009BC9C 3C028017 */  lui        $v0, %hi(D_8016E56C)
/* 68A0 8009BCA0 8C42E56C */  lw         $v0, %lo(D_8016E56C)($v0)
/* 68A4 8009BCA4 0222102B */  sltu       $v0, $s1, $v0
/* 68A8 8009BCA8 14400003 */  bnez       $v0, .L8009BCB8
/* 68AC 8009BCAC 00000000 */   nop
.L8009BCB0:
/* 68B0 8009BCB0 08026F4C */  j          .L8009BD30
/* 68B4 8009BCB4 00002021 */   addu      $a0, $zero, $zero
.L8009BCB8:
/* 68B8 8009BCB8 3C038015 */  lui        $v1, %hi(D_80149F10)
/* 68BC 8009BCBC 8C639F10 */  lw         $v1, %lo(D_80149F10)($v1)
/* 68C0 8009BCC0 0223102B */  sltu       $v0, $s1, $v1
/* 68C4 8009BCC4 14400003 */  bnez       $v0, .L8009BCD4
/* 68C8 8009BCC8 00009021 */   addu      $s2, $zero, $zero
/* 68CC 8009BCCC 02238823 */  subu       $s1, $s1, $v1
/* 68D0 8009BCD0 24120001 */  addiu      $s2, $zero, 0x1
.L8009BCD4:
/* 68D4 8009BCD4 16400005 */  bnez       $s2, .L8009BCEC
/* 68D8 8009BCD8 00000000 */   nop
/* 68DC 8009BCDC 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 68E0 8009BCE0 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 68E4 8009BCE4 08026F3D */  j          .L8009BCF4
/* 68E8 8009BCE8 00000000 */   nop
.L8009BCEC:
/* 68EC 8009BCEC 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 68F0 8009BCF0 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
.L8009BCF4:
/* 68F4 8009BCF4 0C02BB59 */  jal        func_800AED64
/* 68F8 8009BCF8 00000000 */   nop
/* 68FC 8009BCFC 0C02B738 */  jal        func_800ADCE0
/* 6900 8009BD00 02202021 */   addu      $a0, $s1, $zero
/* 6904 8009BD04 16400005 */  bnez       $s2, .L8009BD1C
/* 6908 8009BD08 00408821 */   addu      $s1, $v0, $zero
/* 690C 8009BD0C 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* 6910 8009BD10 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* 6914 8009BD14 08026F49 */  j          .L8009BD24
/* 6918 8009BD18 00000000 */   nop
.L8009BD1C:
/* 691C 8009BD1C 3C058017 */  lui        $a1, %hi(D_8016D0C0)
/* 6920 8009BD20 84A5D0C0 */  lh         $a1, %lo(D_8016D0C0)($a1)
.L8009BD24:
/* 6924 8009BD24 0C026E66 */  jal        func_8009B998
/* 6928 8009BD28 02202021 */   addu      $a0, $s1, $zero
/* 692C 8009BD2C 02202021 */  addu       $a0, $s1, $zero
.L8009BD30:
/* 6930 8009BD30 C6000010 */  lwc1       $f0, 0x10($s0)
/* 6934 8009BD34 4600008D */  trunc.w.s  $f2, $f0
/* 6938 8009BD38 44051000 */  mfc1       $a1, $f2
/* 693C 8009BD3C 00000000 */  nop
/* 6940 8009BD40 28A20100 */  slti       $v0, $a1, 0x100
/* 6944 8009BD44 14400003 */  bnez       $v0, .L8009BD54
/* 6948 8009BD48 AE040020 */   sw        $a0, 0x20($s0)
/* 694C 8009BD4C 08026F58 */  j          .L8009BD60
/* 6950 8009BD50 240500FF */   addiu     $a1, $zero, 0xFF
.L8009BD54:
/* 6954 8009BD54 00051027 */  nor        $v0, $zero, $a1
/* 6958 8009BD58 000217C3 */  sra        $v0, $v0, 31
/* 695C 8009BD5C 00A22824 */  and        $a1, $a1, $v0
.L8009BD60:
/* 6960 8009BD60 0C02BA2C */  jal        func_800AE8B0
/* 6964 8009BD64 00000000 */   nop
/* 6968 8009BD68 C600001C */  lwc1       $f0, 0x1C($s0)
/* 696C 8009BD6C 8E040020 */  lw         $a0, 0x20($s0)
/* 6970 8009BD70 4600008D */  trunc.w.s  $f2, $f0
/* 6974 8009BD74 44051000 */  mfc1       $a1, $f2
/* 6978 8009BD78 00000000 */  nop
/* 697C 8009BD7C 28A20100 */  slti       $v0, $a1, 0x100
/* 6980 8009BD80 54400003 */  bnel       $v0, $zero, .L8009BD90
/* 6984 8009BD84 00051027 */   nor       $v0, $zero, $a1
/* 6988 8009BD88 08026F66 */  j          .L8009BD98
/* 698C 8009BD8C 240500FF */   addiu     $a1, $zero, 0xFF
.L8009BD90:
/* 6990 8009BD90 000217C3 */  sra        $v0, $v0, 31
/* 6994 8009BD94 00A22824 */  and        $a1, $a1, $v0
.L8009BD98:
/* 6998 8009BD98 0C02BA44 */  jal        func_800AE910
/* 699C 8009BD9C 00000000 */   nop
/* 69A0 8009BDA0 08026FBC */  j          .L8009BEF0
/* 69A4 8009BDA4 24020001 */   addiu     $v0, $zero, 0x1
.L8009BDA8:
/* 69A8 8009BDA8 86020000 */  lh         $v0, 0x0($s0)
/* 69AC 8009BDAC 18400020 */  blez       $v0, .L8009BE30
/* 69B0 8009BDB0 00401821 */   addu      $v1, $v0, $zero
/* 69B4 8009BDB4 C6020010 */  lwc1       $f2, 0x10($s0)
/* 69B8 8009BDB8 C6000008 */  lwc1       $f0, 0x8($s0)
/* 69BC 8009BDBC 8E040020 */  lw         $a0, 0x20($s0)
/* 69C0 8009BDC0 46001080 */  add.s      $f2, $f2, $f0
/* 69C4 8009BDC4 2462FFFF */  addiu      $v0, $v1, -0x1
/* 69C8 8009BDC8 A6020000 */  sh         $v0, 0x0($s0)
/* 69CC 8009BDCC 4600100D */  trunc.w.s  $f0, $f2
/* 69D0 8009BDD0 44050000 */  mfc1       $a1, $f0
/* 69D4 8009BDD4 00000000 */  nop
/* 69D8 8009BDD8 28A20100 */  slti       $v0, $a1, 0x100
/* 69DC 8009BDDC 14400003 */  bnez       $v0, .L8009BDEC
/* 69E0 8009BDE0 E6020010 */   swc1      $f2, 0x10($s0)
/* 69E4 8009BDE4 08026F7E */  j          .L8009BDF8
/* 69E8 8009BDE8 240500FF */   addiu     $a1, $zero, 0xFF
.L8009BDEC:
/* 69EC 8009BDEC 00051027 */  nor        $v0, $zero, $a1
/* 69F0 8009BDF0 000217C3 */  sra        $v0, $v0, 31
/* 69F4 8009BDF4 00A22824 */  and        $a1, $a1, $v0
.L8009BDF8:
/* 69F8 8009BDF8 0C02BA2C */  jal        func_800AE8B0
/* 69FC 8009BDFC 00000000 */   nop
/* 6A00 8009BE00 C600001C */  lwc1       $f0, 0x1C($s0)
/* 6A04 8009BE04 C6020014 */  lwc1       $f2, 0x14($s0)
/* 6A08 8009BE08 46020000 */  add.s      $f0, $f0, $f2
/* 6A0C 8009BE0C 8E040020 */  lw         $a0, 0x20($s0)
/* 6A10 8009BE10 4600008D */  trunc.w.s  $f2, $f0
/* 6A14 8009BE14 44051000 */  mfc1       $a1, $f2
/* 6A18 8009BE18 00000000 */  nop
/* 6A1C 8009BE1C 28A20100 */  slti       $v0, $a1, 0x100
/* 6A20 8009BE20 10400029 */  beqz       $v0, .L8009BEC8
/* 6A24 8009BE24 E600001C */   swc1      $f0, 0x1C($s0)
/* 6A28 8009BE28 08026FB5 */  j          .L8009BED4
/* 6A2C 8009BE2C 00051027 */   nor       $v0, $zero, $a1
.L8009BE30:
/* 6A30 8009BE30 86020002 */  lh         $v0, 0x2($s0)
/* 6A34 8009BE34 18400004 */  blez       $v0, .L8009BE48
/* 6A38 8009BE38 00401821 */   addu      $v1, $v0, $zero
/* 6A3C 8009BE3C 2462FFFF */  addiu      $v0, $v1, -0x1
/* 6A40 8009BE40 08026FBD */  j          .L8009BEF4
/* 6A44 8009BE44 A6020002 */   sh        $v0, 0x2($s0)
.L8009BE48:
/* 6A48 8009BE48 86020004 */  lh         $v0, 0x4($s0)
/* 6A4C 8009BE4C 18400027 */  blez       $v0, .L8009BEEC
/* 6A50 8009BE50 00401821 */   addu      $v1, $v0, $zero
/* 6A54 8009BE54 C6020010 */  lwc1       $f2, 0x10($s0)
/* 6A58 8009BE58 C600000C */  lwc1       $f0, 0xC($s0)
/* 6A5C 8009BE5C 8E040020 */  lw         $a0, 0x20($s0)
/* 6A60 8009BE60 46001080 */  add.s      $f2, $f2, $f0
/* 6A64 8009BE64 2462FFFF */  addiu      $v0, $v1, -0x1
/* 6A68 8009BE68 A6020004 */  sh         $v0, 0x4($s0)
/* 6A6C 8009BE6C 4600100D */  trunc.w.s  $f0, $f2
/* 6A70 8009BE70 44050000 */  mfc1       $a1, $f0
/* 6A74 8009BE74 00000000 */  nop
/* 6A78 8009BE78 28A20100 */  slti       $v0, $a1, 0x100
/* 6A7C 8009BE7C 14400003 */  bnez       $v0, .L8009BE8C
/* 6A80 8009BE80 E6020010 */   swc1      $f2, 0x10($s0)
/* 6A84 8009BE84 08026FA6 */  j          .L8009BE98
/* 6A88 8009BE88 240500FF */   addiu     $a1, $zero, 0xFF
.L8009BE8C:
/* 6A8C 8009BE8C 00051027 */  nor        $v0, $zero, $a1
/* 6A90 8009BE90 000217C3 */  sra        $v0, $v0, 31
/* 6A94 8009BE94 00A22824 */  and        $a1, $a1, $v0
.L8009BE98:
/* 6A98 8009BE98 0C02BA2C */  jal        func_800AE8B0
/* 6A9C 8009BE9C 00000000 */   nop
/* 6AA0 8009BEA0 C600001C */  lwc1       $f0, 0x1C($s0)
/* 6AA4 8009BEA4 C6020018 */  lwc1       $f2, 0x18($s0)
/* 6AA8 8009BEA8 46020000 */  add.s      $f0, $f0, $f2
/* 6AAC 8009BEAC 8E040020 */  lw         $a0, 0x20($s0)
/* 6AB0 8009BEB0 4600008D */  trunc.w.s  $f2, $f0
/* 6AB4 8009BEB4 44051000 */  mfc1       $a1, $f2
/* 6AB8 8009BEB8 00000000 */  nop
/* 6ABC 8009BEBC 28A20100 */  slti       $v0, $a1, 0x100
/* 6AC0 8009BEC0 14400003 */  bnez       $v0, .L8009BED0
/* 6AC4 8009BEC4 E600001C */   swc1      $f0, 0x1C($s0)
.L8009BEC8:
/* 6AC8 8009BEC8 08026FB7 */  j          .L8009BEDC
/* 6ACC 8009BECC 240500FF */   addiu     $a1, $zero, 0xFF
.L8009BED0:
/* 6AD0 8009BED0 00051027 */  nor        $v0, $zero, $a1
.L8009BED4:
/* 6AD4 8009BED4 000217C3 */  sra        $v0, $v0, 31
/* 6AD8 8009BED8 00A22824 */  and        $a1, $a1, $v0
.L8009BEDC:
/* 6ADC 8009BEDC 0C02BA44 */  jal        func_800AE910
/* 6AE0 8009BEE0 00000000 */   nop
/* 6AE4 8009BEE4 08026FC6 */  j          .L8009BF18
/* 6AE8 8009BEE8 00001021 */   addu      $v0, $zero, $zero
.L8009BEEC:
/* 6AEC 8009BEEC 3402FFFF */  ori        $v0, $zero, 0xFFFF
.L8009BEF0:
/* 6AF0 8009BEF0 A662001C */  sh         $v0, 0x1C($s3)
.L8009BEF4:
/* 6AF4 8009BEF4 08026FC6 */  j          .L8009BF18
/* 6AF8 8009BEF8 00001021 */   addu      $v0, $zero, $zero
.L8009BEFC:
/* 6AFC 8009BEFC 8E040020 */  lw         $a0, 0x20($s0)
/* 6B00 8009BF00 0C02B9E9 */  jal        func_800AE7A4
/* 6B04 8009BF04 00002821 */   addu      $a1, $zero, $zero
/* 6B08 8009BF08 8E640014 */  lw         $a0, 0x14($s3)
/* 6B0C 8009BF0C 0C0326A1 */  jal        func_800C9A84
/* 6B10 8009BF10 00000000 */   nop
/* 6B14 8009BF14 24020001 */  addiu      $v0, $zero, 0x1
.L8009BF18:
/* 6B18 8009BF18 8FBF0038 */  lw         $ra, 0x38($sp)
/* 6B1C 8009BF1C 8FB30034 */  lw         $s3, 0x34($sp)
/* 6B20 8009BF20 8FB20030 */  lw         $s2, 0x30($sp)
/* 6B24 8009BF24 8FB1002C */  lw         $s1, 0x2C($sp)
/* 6B28 8009BF28 8FB00028 */  lw         $s0, 0x28($sp)
/* 6B2C 8009BF2C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 6B30 8009BF30 03E00008 */  jr         $ra
/* 6B34 8009BF34 00000000 */   nop
/* 6B38 8009BF38 00000000 */  nop
/* 6B3C 8009BF3C 00000000 */  nop
.size func_8009BB08, . - func_8009BB08
