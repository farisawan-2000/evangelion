glabel func_800A0DC0
/* B9C0 800A0DC0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B9C4 800A0DC4 AFB40060 */  sw         $s4, 0x60($sp)
/* B9C8 800A0DC8 0080A021 */  addu       $s4, $a0, $zero
/* B9CC 800A0DCC AFB20058 */  sw         $s2, 0x58($sp)
/* B9D0 800A0DD0 00A09021 */  addu       $s2, $a1, $zero
/* B9D4 800A0DD4 AFB50064 */  sw         $s5, 0x64($sp)
/* B9D8 800A0DD8 00C0A821 */  addu       $s5, $a2, $zero
/* B9DC 800A0DDC AFB3005C */  sw         $s3, 0x5C($sp)
/* B9E0 800A0DE0 00009821 */  addu       $s3, $zero, $zero
/* B9E4 800A0DE4 AFB60068 */  sw         $s6, 0x68($sp)
/* B9E8 800A0DE8 00E0B021 */  addu       $s6, $a3, $zero
/* B9EC 800A0DEC 00073C00 */  sll        $a3, $a3, 16
/* B9F0 800A0DF0 AFB00050 */  sw         $s0, 0x50($sp)
/* B9F4 800A0DF4 00078403 */  sra        $s0, $a3, 16
/* B9F8 800A0DF8 AFBF006C */  sw         $ra, 0x6C($sp)
/* B9FC 800A0DFC 16000007 */  bnez       $s0, .L800A0E1C
/* BA00 800A0E00 AFB10054 */   sw        $s1, 0x54($sp)
/* BA04 800A0E04 3C01800D */  lui        $at, %hi(D_800D3DBC)
/* BA08 800A0E08 AC203DBC */  sw         $zero, %lo(D_800D3DBC)($at)
/* BA0C 800A0E0C 3C048010 */  lui        $a0, %hi(D_800FF870)
/* BA10 800A0E10 2484F870 */  addiu      $a0, $a0, %lo(D_800FF870)
/* BA14 800A0E14 0C02FA9C */  jal        func_800BEA70
/* BA18 800A0E18 00000000 */   nop
.L800A0E1C:
/* BA1C 800A0E1C 8E450008 */  lw         $a1, 0x8($s2)
/* BA20 800A0E20 00101080 */  sll        $v0, $s0, 2
/* BA24 800A0E24 00451021 */  addu       $v0, $v0, $a1
/* BA28 800A0E28 8C510000 */  lw         $s1, 0x0($v0)
/* BA2C 800A0E2C 8E230000 */  lw         $v1, 0x0($s1)
/* BA30 800A0E30 8466000A */  lh         $a2, 0xA($v1)
/* BA34 800A0E34 28C20012 */  slti       $v0, $a2, 0x12
/* BA38 800A0E38 1040008F */  beqz       $v0, .L800A1078
/* BA3C 800A0E3C 00000000 */   nop
/* BA40 800A0E40 96420064 */  lhu        $v0, 0x64($s2)
/* BA44 800A0E44 2442FFFF */  addiu      $v0, $v0, -0x1
/* BA48 800A0E48 00021400 */  sll        $v0, $v0, 16
/* BA4C 800A0E4C 00022403 */  sra        $a0, $v0, 16
/* BA50 800A0E50 0204102A */  slt        $v0, $s0, $a0
/* BA54 800A0E54 5040000E */  beql       $v0, $zero, .L800A0E90
/* BA58 800A0E58 26300020 */   addiu     $s0, $s1, 0x20
/* BA5C 800A0E5C 8463000C */  lh         $v1, 0xC($v1)
/* BA60 800A0E60 00701821 */  addu       $v1, $v1, $s0
/* BA64 800A0E64 00031080 */  sll        $v0, $v1, 2
/* BA68 800A0E68 00451021 */  addu       $v0, $v0, $a1
/* BA6C 800A0E6C 8C420004 */  lw         $v0, 0x4($v0)
/* BA70 800A0E70 0064182A */  slt        $v1, $v1, $a0
/* BA74 800A0E74 50600006 */  beql       $v1, $zero, .L800A0E90
/* BA78 800A0E78 26300020 */   addiu     $s0, $s1, 0x20
/* BA7C 800A0E7C 8C420000 */  lw         $v0, 0x0($v0)
/* BA80 800A0E80 8442000A */  lh         $v0, 0xA($v0)
/* BA84 800A0E84 50C20001 */  beql       $a2, $v0, .L800A0E8C
/* BA88 800A0E88 24130001 */   addiu     $s3, $zero, 0x1
.L800A0E8C:
/* BA8C 800A0E8C 26300020 */  addiu      $s0, $s1, 0x20
.L800A0E90:
/* BA90 800A0E90 86220014 */  lh         $v0, 0x14($s1)
/* BA94 800A0E94 86230016 */  lh         $v1, 0x16($s1)
/* BA98 800A0E98 86270018 */  lh         $a3, 0x18($s1)
/* BA9C 800A0E9C 44820000 */  mtc1       $v0, $f0
/* BAA0 800A0EA0 00000000 */  nop
/* BAA4 800A0EA4 46800020 */  cvt.s.w    $f0, $f0
/* BAA8 800A0EA8 44050000 */  mfc1       $a1, $f0
/* BAAC 800A0EAC 00000000 */  nop
/* BAB0 800A0EB0 44830000 */  mtc1       $v1, $f0
/* BAB4 800A0EB4 00000000 */  nop
/* BAB8 800A0EB8 46800020 */  cvt.s.w    $f0, $f0
/* BABC 800A0EBC 44060000 */  mfc1       $a2, $f0
/* BAC0 800A0EC0 00000000 */  nop
/* BAC4 800A0EC4 44870000 */  mtc1       $a3, $f0
/* BAC8 800A0EC8 00000000 */  nop
/* BACC 800A0ECC 46800020 */  cvt.s.w    $f0, $f0
/* BAD0 800A0ED0 44070000 */  mfc1       $a3, $f0
/* BAD4 800A0ED4 00000000 */  nop
/* BAD8 800A0ED8 0C02FFFD */  jal        func_800BFFF4
/* BADC 800A0EDC 02002021 */   addu      $a0, $s0, $zero
/* BAE0 800A0EE0 02601021 */  addu       $v0, $s3, $zero
/* BAE4 800A0EE4 1040001B */  beqz       $v0, .L800A0F54
/* BAE8 800A0EE8 27A40010 */   addiu     $a0, $sp, 0x10
/* BAEC 800A0EEC 3C02800D */  lui        $v0, %hi(D_800D3DBC)
/* BAF0 800A0EF0 8C423DBC */  lw         $v0, %lo(D_800D3DBC)($v0)
/* BAF4 800A0EF4 3C038010 */  lui        $v1, %hi(D_800FF870)
/* BAF8 800A0EF8 2463F870 */  addiu      $v1, $v1, %lo(D_800FF870)
/* BAFC 800A0EFC 24420001 */  addiu      $v0, $v0, 0x1
/* BB00 800A0F00 00022180 */  sll        $a0, $v0, 6
/* BB04 800A0F04 00833821 */  addu       $a3, $a0, $v1
/* BB08 800A0F08 2463FFC0 */  addiu      $v1, $v1, -0x40
/* BB0C 800A0F0C 00833021 */  addu       $a2, $a0, $v1
/* BB10 800A0F10 24C80040 */  addiu      $t0, $a2, 0x40
/* BB14 800A0F14 3C01800D */  lui        $at, %hi(D_800D3DBC)
/* BB18 800A0F18 AC223DBC */  sw         $v0, %lo(D_800D3DBC)($at)
.L800A0F1C:
/* BB1C 800A0F1C 8CC20000 */  lw         $v0, 0x0($a2)
/* BB20 800A0F20 8CC30004 */  lw         $v1, 0x4($a2)
/* BB24 800A0F24 8CC40008 */  lw         $a0, 0x8($a2)
/* BB28 800A0F28 8CC5000C */  lw         $a1, 0xC($a2)
/* BB2C 800A0F2C ACE20000 */  sw         $v0, 0x0($a3)
/* BB30 800A0F30 ACE30004 */  sw         $v1, 0x4($a3)
/* BB34 800A0F34 ACE40008 */  sw         $a0, 0x8($a3)
/* BB38 800A0F38 ACE5000C */  sw         $a1, 0xC($a3)
/* BB3C 800A0F3C 24C60010 */  addiu      $a2, $a2, 0x10
/* BB40 800A0F40 14C8FFF6 */  bne        $a2, $t0, .L800A0F1C
/* BB44 800A0F44 24E70010 */   addiu     $a3, $a3, 0x10
/* BB48 800A0F48 27A40010 */  addiu      $a0, $sp, 0x10
/* BB4C 800A0F4C 080283D6 */  j          .L800A0F58
/* BB50 800A0F50 26250020 */   addiu     $a1, $s1, 0x20
.L800A0F54:
/* BB54 800A0F54 02002821 */  addu       $a1, $s0, $zero
.L800A0F58:
/* BB58 800A0F58 0C02FA72 */  jal        func_800BE9C8
/* BB5C 800A0F5C 00000000 */   nop
/* BB60 800A0F60 3C05800D */  lui        $a1, %hi(D_800D3DBC)
/* BB64 800A0F64 8CA53DBC */  lw         $a1, %lo(D_800D3DBC)($a1)
/* BB68 800A0F68 27A40010 */  addiu      $a0, $sp, 0x10
/* BB6C 800A0F6C 3C028010 */  lui        $v0, %hi(D_800FF870)
/* BB70 800A0F70 2442F870 */  addiu      $v0, $v0, %lo(D_800FF870)
/* BB74 800A0F74 00052980 */  sll        $a1, $a1, 6
/* BB78 800A0F78 00A22821 */  addu       $a1, $a1, $v0
/* BB7C 800A0F7C 0C02F9A8 */  jal        func_800BE6A0
/* BB80 800A0F80 00A03021 */   addu      $a2, $a1, $zero
/* BB84 800A0F84 12A0000C */  beqz       $s5, .L800A0FB8
/* BB88 800A0F88 27A40010 */   addiu     $a0, $sp, 0x10
/* BB8C 800A0F8C 0C02FA72 */  jal        func_800BE9C8
/* BB90 800A0F90 26250060 */   addiu     $a1, $s1, 0x60
/* BB94 800A0F94 3C05800D */  lui        $a1, %hi(D_800D3DBC)
/* BB98 800A0F98 8CA53DBC */  lw         $a1, %lo(D_800D3DBC)($a1)
/* BB9C 800A0F9C 27A40010 */  addiu      $a0, $sp, 0x10
/* BBA0 800A0FA0 3C028010 */  lui        $v0, %hi(D_800FF870)
/* BBA4 800A0FA4 2442F870 */  addiu      $v0, $v0, %lo(D_800FF870)
/* BBA8 800A0FA8 00052980 */  sll        $a1, $a1, 6
/* BBAC 800A0FAC 00A22821 */  addu       $a1, $a1, $v0
/* BBB0 800A0FB0 0C02F9A8 */  jal        func_800BE6A0
/* BBB4 800A0FB4 00A03021 */   addu      $a2, $a1, $zero
.L800A0FB8:
/* BBB8 800A0FB8 00161400 */  sll        $v0, $s6, 16
/* BBBC 800A0FBC 00021283 */  sra        $v0, $v0, 10
/* BBC0 800A0FC0 3C03800D */  lui        $v1, %hi(D_800D3DBC)
/* BBC4 800A0FC4 8C633DBC */  lw         $v1, %lo(D_800D3DBC)($v1)
/* BBC8 800A0FC8 00543821 */  addu       $a3, $v0, $s4
/* BBCC 800A0FCC 3C028010 */  lui        $v0, %hi(D_800FF870)
/* BBD0 800A0FD0 2442F870 */  addiu      $v0, $v0, %lo(D_800FF870)
/* BBD4 800A0FD4 00031980 */  sll        $v1, $v1, 6
/* BBD8 800A0FD8 00623021 */  addu       $a2, $v1, $v0
/* BBDC 800A0FDC 24C80040 */  addiu      $t0, $a2, 0x40
.L800A0FE0:
/* BBE0 800A0FE0 8CC20000 */  lw         $v0, 0x0($a2)
/* BBE4 800A0FE4 8CC30004 */  lw         $v1, 0x4($a2)
/* BBE8 800A0FE8 8CC40008 */  lw         $a0, 0x8($a2)
/* BBEC 800A0FEC 8CC5000C */  lw         $a1, 0xC($a2)
/* BBF0 800A0FF0 ACE20000 */  sw         $v0, 0x0($a3)
/* BBF4 800A0FF4 ACE30004 */  sw         $v1, 0x4($a3)
/* BBF8 800A0FF8 ACE40008 */  sw         $a0, 0x8($a3)
/* BBFC 800A0FFC ACE5000C */  sw         $a1, 0xC($a3)
/* BC00 800A1000 24C60010 */  addiu      $a2, $a2, 0x10
/* BC04 800A1004 14C8FFF6 */  bne        $a2, $t0, .L800A0FE0
/* BC08 800A1008 24E70010 */   addiu     $a3, $a3, 0x10
/* BC0C 800A100C 8E220000 */  lw         $v0, 0x0($s1)
/* BC10 800A1010 8442000C */  lh         $v0, 0xC($v0)
/* BC14 800A1014 10400007 */  beqz       $v0, .L800A1034
/* BC18 800A1018 02802021 */   addu      $a0, $s4, $zero
/* BC1C 800A101C 02402821 */  addu       $a1, $s2, $zero
/* BC20 800A1020 02A03021 */  addu       $a2, $s5, $zero
/* BC24 800A1024 26C70001 */  addiu      $a3, $s6, 0x1
/* BC28 800A1028 00073C00 */  sll        $a3, $a3, 16
/* BC2C 800A102C 0C028370 */  jal        func_800A0DC0
/* BC30 800A1030 00073C03 */   sra       $a3, $a3, 16
.L800A1034:
/* BC34 800A1034 02601021 */  addu       $v0, $s3, $zero
/* BC38 800A1038 1040000F */  beqz       $v0, .L800A1078
/* BC3C 800A103C 02802021 */   addu      $a0, $s4, $zero
/* BC40 800A1040 8E230000 */  lw         $v1, 0x0($s1)
/* BC44 800A1044 02402821 */  addu       $a1, $s2, $zero
/* BC48 800A1048 3C02800D */  lui        $v0, %hi(D_800D3DBC)
/* BC4C 800A104C 8C423DBC */  lw         $v0, %lo(D_800D3DBC)($v0)
/* BC50 800A1050 9467000C */  lhu        $a3, 0xC($v1)
/* BC54 800A1054 02A03021 */  addu       $a2, $s5, $zero
/* BC58 800A1058 2442FFFF */  addiu      $v0, $v0, -0x1
/* BC5C 800A105C 3C01800D */  lui        $at, %hi(D_800D3DBC)
/* BC60 800A1060 AC223DBC */  sw         $v0, %lo(D_800D3DBC)($at)
/* BC64 800A1064 24E70001 */  addiu      $a3, $a3, 0x1
/* BC68 800A1068 02C73821 */  addu       $a3, $s6, $a3
/* BC6C 800A106C 00073C00 */  sll        $a3, $a3, 16
/* BC70 800A1070 0C028370 */  jal        func_800A0DC0
/* BC74 800A1074 00073C03 */   sra       $a3, $a3, 16
.L800A1078:
/* BC78 800A1078 8FBF006C */  lw         $ra, 0x6C($sp)
/* BC7C 800A107C 8FB60068 */  lw         $s6, 0x68($sp)
/* BC80 800A1080 8FB50064 */  lw         $s5, 0x64($sp)
/* BC84 800A1084 8FB40060 */  lw         $s4, 0x60($sp)
/* BC88 800A1088 8FB3005C */  lw         $s3, 0x5C($sp)
/* BC8C 800A108C 8FB20058 */  lw         $s2, 0x58($sp)
/* BC90 800A1090 8FB10054 */  lw         $s1, 0x54($sp)
/* BC94 800A1094 8FB00050 */  lw         $s0, 0x50($sp)
/* BC98 800A1098 27BD0070 */  addiu      $sp, $sp, 0x70
/* BC9C 800A109C 03E00008 */  jr         $ra
/* BCA0 800A10A0 00000000 */   nop
.size func_800A0DC0, . - func_800A0DC0
