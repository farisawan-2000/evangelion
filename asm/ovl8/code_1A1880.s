.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8038F800_1A1880
/* 1A1880 8038F800 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A1884 8038F804 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A1888 8038F808 00808021 */  addu       $s0, $a0, $zero
/* 1A188C 8038F80C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A1890 8038F810 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A1894 8038F814 8E04000C */  lw         $a0, 0xc($s0)
/* 1A1898 8038F818 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A189C 8038F81C 8E110014 */  lw         $s1, 0x14($s0)
/* 1A18A0 8038F820 24020001 */  addiu      $v0, $zero, 1
/* 1A18A4 8038F824 10620018 */  beq        $v1, $v0, .L8038F888
/* 1A18A8 8038F828 28620002 */   slti      $v0, $v1, 2
/* 1A18AC 8038F82C 50400005 */  beql       $v0, $zero, .L8038F844
/* 1A18B0 8038F830 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A18B4 8038F834 10600007 */  beqz       $v1, .L8038F854
/* 1A18B8 8038F838 00001021 */   addu      $v0, $zero, $zero
/* 1A18BC 8038F83C 080E3E35 */  j          .L8038F8D4
/* 1A18C0 8038F840 00000000 */   nop
.L8038F844:
/* 1A18C4 8038F844 1062001B */  beq        $v1, $v0, .L8038F8B4
/* 1A18C8 8038F848 00001021 */   addu      $v0, $zero, $zero
/* 1A18CC 8038F84C 080E3E35 */  j          .L8038F8D4
/* 1A18D0 8038F850 00000000 */   nop
.L8038F854:
/* 1A18D4 8038F854 0C032663 */  jal        func_800C998C
/* 1A18D8 8038F858 2404001C */   addiu     $a0, $zero, 0x1c
/* 1A18DC 8038F85C 00402021 */  addu       $a0, $v0, $zero
/* 1A18E0 8038F860 2405001C */  addiu      $a1, $zero, 0x1c
/* 1A18E4 8038F864 0C030134 */  jal        bzero
/* 1A18E8 8038F868 AE040014 */   sw        $a0, 0x14($s0)
/* 1A18EC 8038F86C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A18F0 8038F870 0C0E3E3B */  jal        func_8038F8EC_1A196C
/* 1A18F4 8038F874 00000000 */   nop
/* 1A18F8 8038F878 00001021 */  addu       $v0, $zero, $zero
/* 1A18FC 8038F87C 24030001 */  addiu      $v1, $zero, 1
/* 1A1900 8038F880 080E3E35 */  j          .L8038F8D4
/* 1A1904 8038F884 A603001C */   sh        $v1, 0x1c($s0)
.L8038F888:
/* 1A1908 8038F888 0C025C53 */  jal        func_8009714C
/* 1A190C 8038F88C 00000000 */   nop
/* 1A1910 8038F890 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A1914 8038F894 14430003 */  bne        $v0, $v1, .L8038F8A4
/* 1A1918 8038F898 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A191C 8038F89C 080E3E34 */  j          .L8038F8D0
/* 1A1920 8038F8A0 A602001C */   sh        $v0, 0x1c($s0)
.L8038F8A4:
/* 1A1924 8038F8A4 0C0E3E9A */  jal        func_8038FA68_1A1AE8
/* 1A1928 8038F8A8 02202021 */   addu      $a0, $s1, $zero
/* 1A192C 8038F8AC 080E3E35 */  j          .L8038F8D4
/* 1A1930 8038F8B0 00001021 */   addu      $v0, $zero, $zero
.L8038F8B4:
/* 1A1934 8038F8B4 0C0E3E88 */  jal        func_8038FA20_1A1AA0
/* 1A1938 8038F8B8 02202021 */   addu      $a0, $s1, $zero
/* 1A193C 8038F8BC 8E040014 */  lw         $a0, 0x14($s0)
/* 1A1940 8038F8C0 0C0326A1 */  jal        func_800C9A84
/* 1A1944 8038F8C4 00000000 */   nop
/* 1A1948 8038F8C8 080E3E35 */  j          .L8038F8D4
/* 1A194C 8038F8CC 24020001 */   addiu     $v0, $zero, 1
.L8038F8D0:
/* 1A1950 8038F8D0 00001021 */  addu       $v0, $zero, $zero
.L8038F8D4:
/* 1A1954 8038F8D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A1958 8038F8D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A195C 8038F8DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A1960 8038F8E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A1964 8038F8E4 03E00008 */  jr         $ra
/* 1A1968 8038F8E8 00000000 */   nop

glabel func_8038F8EC_1A196C
/* 1A196C 8038F8EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A1970 8038F8F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A1974 8038F8F4 00808021 */  addu       $s0, $a0, $zero
/* 1A1978 8038F8F8 24040533 */  addiu      $a0, $zero, 0x533
/* 1A197C 8038F8FC 24050001 */  addiu      $a1, $zero, 1
/* 1A1980 8038F900 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A1984 8038F904 0C028CB7 */  jal        func_800A32DC
/* 1A1988 8038F908 00003021 */   addu      $a2, $zero, $zero
/* 1A198C 8038F90C AE020000 */  sw         $v0, ($s0)
/* 1A1990 8038F910 24020002 */  addiu      $v0, $zero, 2
/* 1A1994 8038F914 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A1998 8038F918 8E040000 */  lw         $a0, ($s0)
/* 1A199C 8038F91C 240500FF */  addiu      $a1, $zero, 0xff
/* 1A19A0 8038F920 240600FF */  addiu      $a2, $zero, 0xff
/* 1A19A4 8038F924 0C028E41 */  jal        func_800A3904
/* 1A19A8 8038F928 240700FF */   addiu     $a3, $zero, 0xff
/* 1A19AC 8038F92C 24040533 */  addiu      $a0, $zero, 0x533
/* 1A19B0 8038F930 24050001 */  addiu      $a1, $zero, 1
/* 1A19B4 8038F934 0C028CB7 */  jal        func_800A32DC
/* 1A19B8 8038F938 00003021 */   addu      $a2, $zero, $zero
/* 1A19BC 8038F93C AE020004 */  sw         $v0, 4($s0)
/* 1A19C0 8038F940 2402007F */  addiu      $v0, $zero, 0x7f
/* 1A19C4 8038F944 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A19C8 8038F948 8E040004 */  lw         $a0, 4($s0)
/* 1A19CC 8038F94C 240500FF */  addiu      $a1, $zero, 0xff
/* 1A19D0 8038F950 240600FF */  addiu      $a2, $zero, 0xff
/* 1A19D4 8038F954 0C028E41 */  jal        func_800A3904
/* 1A19D8 8038F958 240700FF */   addiu     $a3, $zero, 0xff
/* 1A19DC 8038F95C 8E020004 */  lw         $v0, 4($s0)
/* 1A19E0 8038F960 24040533 */  addiu      $a0, $zero, 0x533
/* 1A19E4 8038F964 8C420014 */  lw         $v0, 0x14($v0)
/* 1A19E8 8038F968 00002821 */  addu       $a1, $zero, $zero
/* 1A19EC 8038F96C 00003021 */  addu       $a2, $zero, $zero
/* 1A19F0 8038F970 0C028CB7 */  jal        func_800A32DC
/* 1A19F4 8038F974 A440001E */   sh        $zero, 0x1e($v0)
/* 1A19F8 8038F978 3C014234 */  lui        $at, 0x4234
/* 1A19FC 8038F97C 44813000 */  mtc1       $at, $f6
/* 1A1A00 8038F980 00000000 */  nop
/* 1A1A04 8038F984 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A1A08 8038F988 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A1A0C 8038F98C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A1A10 8038F990 46023183 */  div.s      $f6, $f6, $f2
/* 1A1A14 8038F994 3C014170 */  lui        $at, 0x4170
/* 1A1A18 8038F998 44810000 */  mtc1       $at, $f0
/* 1A1A1C 8038F99C 00000000 */  nop
/* 1A1A20 8038F9A0 46020003 */  div.s      $f0, $f0, $f2
/* 1A1A24 8038F9A4 3C013F2A */  lui        $at, 0x3f2a
/* 1A1A28 8038F9A8 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A1A2C 8038F9AC 44812000 */  mtc1       $at, $f4
/* 1A1A30 8038F9B0 00000000 */  nop
/* 1A1A34 8038F9B4 46041082 */  mul.s      $f2, $f2, $f4
/* 1A1A38 8038F9B8 AE020008 */  sw         $v0, 8($s0)
/* 1A1A3C 8038F9BC 8C420014 */  lw         $v0, 0x14($v0)
/* 1A1A40 8038F9C0 46003001 */  sub.s      $f0, $f6, $f0
/* 1A1A44 8038F9C4 A440001E */  sh         $zero, 0x1e($v0)
/* 1A1A48 8038F9C8 8E020008 */  lw         $v0, 8($s0)
/* 1A1A4C 8038F9CC 00000000 */  nop
/* 1A1A50 8038F9D0 46020002 */  mul.s      $f0, $f0, $f2
/* 1A1A54 8038F9D4 3C0142A4 */  lui        $at, 0x42a4
/* 1A1A58 8038F9D8 44812000 */  mtc1       $at, $f4
/* 1A1A5C 8038F9DC 00000000 */  nop
/* 1A1A60 8038F9E0 8C420014 */  lw         $v0, 0x14($v0)
/* 1A1A64 8038F9E4 3C014370 */  lui        $at, 0x4370
/* 1A1A68 8038F9E8 44811000 */  mtc1       $at, $f2
/* 1A1A6C 8038F9EC 00000000 */  nop
/* 1A1A70 8038F9F0 A4400010 */  sh         $zero, 0x10($v0)
/* 1A1A74 8038F9F4 46001081 */  sub.s      $f2, $f2, $f0
/* 1A1A78 8038F9F8 E6040010 */  swc1       $f4, 0x10($s0)
/* 1A1A7C 8038F9FC A2000018 */  sb         $zero, 0x18($s0)
/* 1A1A80 8038FA00 4600300D */  trunc.w.s  $f0, $f6
/* 1A1A84 8038FA04 E6000014 */  swc1       $f0, 0x14($s0)
/* 1A1A88 8038FA08 E602000C */  swc1       $f2, 0xc($s0)
/* 1A1A8C 8038FA0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A1A90 8038FA10 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A1A94 8038FA14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A1A98 8038FA18 03E00008 */  jr         $ra
/* 1A1A9C 8038FA1C 00000000 */   nop

glabel func_8038FA20_1A1AA0
/* 1A1AA0 8038FA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A1AA4 8038FA24 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A1AA8 8038FA28 00808021 */  addu       $s0, $a0, $zero
/* 1A1AAC 8038FA2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A1AB0 8038FA30 8E040000 */  lw         $a0, ($s0)
/* 1A1AB4 8038FA34 0C028D30 */  jal        func_800A34C0
/* 1A1AB8 8038FA38 00000000 */   nop
/* 1A1ABC 8038FA3C 8E040004 */  lw         $a0, 4($s0)
/* 1A1AC0 8038FA40 0C028D30 */  jal        func_800A34C0
/* 1A1AC4 8038FA44 00000000 */   nop
/* 1A1AC8 8038FA48 8E040008 */  lw         $a0, 8($s0)
/* 1A1ACC 8038FA4C 0C028D30 */  jal        func_800A34C0
/* 1A1AD0 8038FA50 00000000 */   nop
/* 1A1AD4 8038FA54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A1AD8 8038FA58 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A1ADC 8038FA5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A1AE0 8038FA60 03E00008 */  jr         $ra
/* 1A1AE4 8038FA64 00000000 */   nop

glabel func_8038FA68_1A1AE8
/* 1A1AE8 8038FA68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A1AEC 8038FA6C AFB00010 */  sw         $s0, 0x10($sp)
/* 1A1AF0 8038FA70 00808021 */  addu       $s0, $a0, $zero
/* 1A1AF4 8038FA74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A1AF8 8038FA78 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1A1AFC 8038FA7C 92020018 */  lbu        $v0, 0x18($s0)
/* 1A1B00 8038FA80 1040002B */  beqz       $v0, .L8038FB30
/* 1A1B04 8038FA84 00000000 */   nop
/* 1A1B08 8038FA88 C600000C */  lwc1       $f0, 0xc($s0)
/* 1A1B0C 8038FA8C 8E040000 */  lw         $a0, ($s0)
/* 1A1B10 8038FA90 4600008D */  trunc.w.s  $f2, $f0
/* 1A1B14 8038FA94 44051000 */  mfc1       $a1, $f2
/* 1A1B18 8038FA98 00000000 */  nop
/* 1A1B1C 8038FA9C C6000010 */  lwc1       $f0, 0x10($s0)
/* 1A1B20 8038FAA0 00052C80 */  sll        $a1, $a1, 0x12
/* 1A1B24 8038FAA4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A1B28 8038FAA8 4600008D */  trunc.w.s  $f2, $f0
/* 1A1B2C 8038FAAC 44061000 */  mfc1       $a2, $f2
/* 1A1B30 8038FAB0 00000000 */  nop
/* 1A1B34 8038FAB4 00063480 */  sll        $a2, $a2, 0x12
/* 1A1B38 8038FAB8 0C028D89 */  jal        func_800A3624
/* 1A1B3C 8038FABC 00063403 */   sra       $a2, $a2, 0x10
/* 1A1B40 8038FAC0 C600000C */  lwc1       $f0, 0xc($s0)
/* 1A1B44 8038FAC4 8E040004 */  lw         $a0, 4($s0)
/* 1A1B48 8038FAC8 4600008D */  trunc.w.s  $f2, $f0
/* 1A1B4C 8038FACC 44051000 */  mfc1       $a1, $f2
/* 1A1B50 8038FAD0 00000000 */  nop
/* 1A1B54 8038FAD4 C6000010 */  lwc1       $f0, 0x10($s0)
/* 1A1B58 8038FAD8 00052C80 */  sll        $a1, $a1, 0x12
/* 1A1B5C 8038FADC 00052C03 */  sra        $a1, $a1, 0x10
/* 1A1B60 8038FAE0 4600008D */  trunc.w.s  $f2, $f0
/* 1A1B64 8038FAE4 44061000 */  mfc1       $a2, $f2
/* 1A1B68 8038FAE8 00000000 */  nop
/* 1A1B6C 8038FAEC 00063480 */  sll        $a2, $a2, 0x12
/* 1A1B70 8038FAF0 0C028D89 */  jal        func_800A3624
/* 1A1B74 8038FAF4 00063403 */   sra       $a2, $a2, 0x10
/* 1A1B78 8038FAF8 C600000C */  lwc1       $f0, 0xc($s0)
/* 1A1B7C 8038FAFC 8E040008 */  lw         $a0, 8($s0)
/* 1A1B80 8038FB00 4600008D */  trunc.w.s  $f2, $f0
/* 1A1B84 8038FB04 44051000 */  mfc1       $a1, $f2
/* 1A1B88 8038FB08 00000000 */  nop
/* 1A1B8C 8038FB0C C6000010 */  lwc1       $f0, 0x10($s0)
/* 1A1B90 8038FB10 00052C80 */  sll        $a1, $a1, 0x12
/* 1A1B94 8038FB14 00052C03 */  sra        $a1, $a1, 0x10
/* 1A1B98 8038FB18 4600008D */  trunc.w.s  $f2, $f0
/* 1A1B9C 8038FB1C 44061000 */  mfc1       $a2, $f2
/* 1A1BA0 8038FB20 00000000 */  nop
/* 1A1BA4 8038FB24 00063480 */  sll        $a2, $a2, 0x12
/* 1A1BA8 8038FB28 0C028D89 */  jal        func_800A3624
/* 1A1BAC 8038FB2C 00063403 */   sra       $a2, $a2, 0x10
.L8038FB30:
/* 1A1BB0 8038FB30 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A1BB4 8038FB34 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A1BB8 8038FB38 10400054 */  beqz       $v0, .L8038FC8C
/* 1A1BBC 8038FB3C 00000000 */   nop
/* 1A1BC0 8038FB40 92020018 */  lbu        $v0, 0x18($s0)
/* 1A1BC4 8038FB44 10400051 */  beqz       $v0, .L8038FC8C
/* 1A1BC8 8038FB48 00000000 */   nop
/* 1A1BCC 8038FB4C 3C014234 */  lui        $at, 0x4234
/* 1A1BD0 8038FB50 4481A000 */  mtc1       $at, $f20
/* 1A1BD4 8038FB54 00000000 */  nop
/* 1A1BD8 8038FB58 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A1BDC 8038FB5C C4249F90 */  lwc1       $f4, %lo(D_80149F90)($at)
/* 1A1BE0 8038FB60 46802120 */  cvt.s.w    $f4, $f4
/* 1A1BE4 8038FB64 4604A183 */  div.s      $f6, $f20, $f4
/* 1A1BE8 8038FB68 8E020014 */  lw         $v0, 0x14($s0)
/* 1A1BEC 8038FB6C 24420001 */  addiu      $v0, $v0, 1
/* 1A1BF0 8038FB70 44820000 */  mtc1       $v0, $f0
/* 1A1BF4 8038FB74 00000000 */  nop
/* 1A1BF8 8038FB78 46800020 */  cvt.s.w    $f0, $f0
/* 1A1BFC 8038FB7C 46060003 */  div.s      $f0, $f0, $f6
/* 1A1C00 8038FB80 AE020014 */  sw         $v0, 0x14($s0)
/* 1A1C04 8038FB84 4600008D */  trunc.w.s  $f2, $f0
/* 1A1C08 8038FB88 44021000 */  mfc1       $v0, $f2
/* 1A1C0C 8038FB8C 00000000 */  nop
/* 1A1C10 8038FB90 30420001 */  andi       $v0, $v0, 1
/* 1A1C14 8038FB94 1040002D */  beqz       $v0, .L8038FC4C
/* 1A1C18 8038FB98 00000000 */   nop
/* 1A1C1C 8038FB9C 8E040000 */  lw         $a0, ($s0)
/* 1A1C20 8038FBA0 0C028A40 */  jal        func_800A2900
/* 1A1C24 8038FBA4 00000000 */   nop
/* 1A1C28 8038FBA8 8E040004 */  lw         $a0, 4($s0)
/* 1A1C2C 8038FBAC 0C028A40 */  jal        func_800A2900
/* 1A1C30 8038FBB0 00000000 */   nop
/* 1A1C34 8038FBB4 8E040008 */  lw         $a0, 8($s0)
/* 1A1C38 8038FBB8 0C028A40 */  jal        func_800A2900
/* 1A1C3C 8038FBBC 00000000 */   nop
/* 1A1C40 8038FBC0 3C013F2A */  lui        $at, 0x3f2a
/* 1A1C44 8038FBC4 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A1C48 8038FBC8 44810000 */  mtc1       $at, $f0
/* 1A1C4C 8038FBCC 00000000 */  nop
/* 1A1C50 8038FBD0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A1C54 8038FBD4 C4249F90 */  lwc1       $f4, %lo(D_80149F90)($at)
/* 1A1C58 8038FBD8 46802120 */  cvt.s.w    $f4, $f4
/* 1A1C5C 8038FBDC 46002282 */  mul.s      $f10, $f4, $f0
/* 1A1C60 8038FBE0 C600000C */  lwc1       $f0, 0xc($s0)
/* 1A1C64 8038FBE4 460A0180 */  add.s      $f6, $f0, $f10
/* 1A1C68 8038FBE8 3C014370 */  lui        $at, 0x4370
/* 1A1C6C 8038FBEC 44814000 */  mtc1       $at, $f8
/* 1A1C70 8038FBF0 00000000 */  nop
/* 1A1C74 8038FBF4 4606403C */  c.lt.s     $f8, $f6
/* 1A1C78 8038FBF8 00000000 */  nop
/* 1A1C7C 8038FBFC 00000000 */  nop
/* 1A1C80 8038FC00 45000003 */  bc1f       .L8038FC10
/* 1A1C84 8038FC04 E606000C */   swc1      $f6, 0xc($s0)
/* 1A1C88 8038FC08 080E3F23 */  j          .L8038FC8C
/* 1A1C8C 8038FC0C E608000C */   swc1      $f8, 0xc($s0)
.L8038FC10:
/* 1A1C90 8038FC10 4604A083 */  div.s      $f2, $f20, $f4
/* 1A1C94 8038FC14 3C014170 */  lui        $at, 0x4170
/* 1A1C98 8038FC18 44810000 */  mtc1       $at, $f0
/* 1A1C9C 8038FC1C 00000000 */  nop
/* 1A1CA0 8038FC20 46040003 */  div.s      $f0, $f0, $f4
/* 1A1CA4 8038FC24 46001081 */  sub.s      $f2, $f2, $f0
/* 1A1CA8 8038FC28 460A1082 */  mul.s      $f2, $f2, $f10
/* 1A1CAC 8038FC2C 46024001 */  sub.s      $f0, $f8, $f2
/* 1A1CB0 8038FC30 4600303C */  c.lt.s     $f6, $f0
/* 1A1CB4 8038FC34 00000000 */  nop
/* 1A1CB8 8038FC38 00000000 */  nop
/* 1A1CBC 8038FC3C 45030013 */  bc1tl      .L8038FC8C
/* 1A1CC0 8038FC40 E600000C */   swc1      $f0, 0xc($s0)
/* 1A1CC4 8038FC44 080E3F23 */  j          .L8038FC8C
/* 1A1CC8 8038FC48 00000000 */   nop
.L8038FC4C:
/* 1A1CCC 8038FC4C 3C014170 */  lui        $at, 0x4170
/* 1A1CD0 8038FC50 44810000 */  mtc1       $at, $f0
/* 1A1CD4 8038FC54 00000000 */  nop
/* 1A1CD8 8038FC58 46040003 */  div.s      $f0, $f0, $f4
/* 1A1CDC 8038FC5C 3C013F2A */  lui        $at, 0x3f2a
/* 1A1CE0 8038FC60 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A1CE4 8038FC64 44811000 */  mtc1       $at, $f2
/* 1A1CE8 8038FC68 00000000 */  nop
/* 1A1CEC 8038FC6C 46022082 */  mul.s      $f2, $f4, $f2
/* 1A1CF0 8038FC70 46003001 */  sub.s      $f0, $f6, $f0
/* 1A1CF4 8038FC74 46020002 */  mul.s      $f0, $f0, $f2
/* 1A1CF8 8038FC78 3C014370 */  lui        $at, 0x4370
/* 1A1CFC 8038FC7C 44811000 */  mtc1       $at, $f2
/* 1A1D00 8038FC80 00000000 */  nop
/* 1A1D04 8038FC84 46001081 */  sub.s      $f2, $f2, $f0
/* 1A1D08 8038FC88 E602000C */  swc1       $f2, 0xc($s0)
.L8038FC8C:
/* 1A1D0C 8038FC8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A1D10 8038FC90 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A1D14 8038FC94 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1A1D18 8038FC98 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A1D1C 8038FC9C 03E00008 */  jr         $ra
/* 1A1D20 8038FCA0 00000000 */   nop

glabel func_8038FCA4
/* 1A1D24 8038FCA4 10800023 */  beqz       $a0, .L8038FD34
/* 1A1D28 8038FCA8 30A200FF */   andi      $v0, $a1, 0xff
/* 1A1D2C 8038FCAC 8C840014 */  lw         $a0, 0x14($a0)
/* 1A1D30 8038FCB0 90830018 */  lbu        $v1, 0x18($a0)
/* 1A1D34 8038FCB4 1062001F */  beq        $v1, $v0, .L8038FD34
/* 1A1D38 8038FCB8 00000000 */   nop
/* 1A1D3C 8038FCBC 3C014234 */  lui        $at, 0x4234
/* 1A1D40 8038FCC0 44813000 */  mtc1       $at, $f6
/* 1A1D44 8038FCC4 00000000 */  nop
/* 1A1D48 8038FCC8 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A1D4C 8038FCCC C4249F90 */  lwc1       $f4, %lo(D_80149F90)($at)
/* 1A1D50 8038FCD0 46802120 */  cvt.s.w    $f4, $f4
/* 1A1D54 8038FCD4 46043183 */  div.s      $f6, $f6, $f4
/* 1A1D58 8038FCD8 3C014170 */  lui        $at, 0x4170
/* 1A1D5C 8038FCDC 44810000 */  mtc1       $at, $f0
/* 1A1D60 8038FCE0 00000000 */  nop
/* 1A1D64 8038FCE4 46040003 */  div.s      $f0, $f0, $f4
/* 1A1D68 8038FCE8 3C013F2A */  lui        $at, 0x3f2a
/* 1A1D6C 8038FCEC 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A1D70 8038FCF0 44811000 */  mtc1       $at, $f2
/* 1A1D74 8038FCF4 00000000 */  nop
/* 1A1D78 8038FCF8 46022102 */  mul.s      $f4, $f4, $f2
/* 1A1D7C 8038FCFC 46003001 */  sub.s      $f0, $f6, $f0
/* 1A1D80 8038FD00 46040002 */  mul.s      $f0, $f0, $f4
/* 1A1D84 8038FD04 3C014370 */  lui        $at, 0x4370
/* 1A1D88 8038FD08 44811000 */  mtc1       $at, $f2
/* 1A1D8C 8038FD0C 00000000 */  nop
/* 1A1D90 8038FD10 3C0142A4 */  lui        $at, 0x42a4
/* 1A1D94 8038FD14 44812000 */  mtc1       $at, $f4
/* 1A1D98 8038FD18 00000000 */  nop
/* 1A1D9C 8038FD1C 46001081 */  sub.s      $f2, $f2, $f0
/* 1A1DA0 8038FD20 A0850018 */  sb         $a1, 0x18($a0)
/* 1A1DA4 8038FD24 E4840010 */  swc1       $f4, 0x10($a0)
/* 1A1DA8 8038FD28 4600300D */  trunc.w.s  $f0, $f6
/* 1A1DAC 8038FD2C E4800014 */  swc1       $f0, 0x14($a0)
/* 1A1DB0 8038FD30 E482000C */  swc1       $f2, 0xc($a0)
.L8038FD34:
/* 1A1DB4 8038FD34 03E00008 */  jr         $ra
/* 1A1DB8 8038FD38 00000000 */   nop
/* 1A1DBC 8038FD3C 00000000 */  nop

glabel func_8038FD40_1A1DC0
/* 1A1DC0 8038FD40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A1DC4 8038FD44 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A1DC8 8038FD48 00808021 */  addu       $s0, $a0, $zero
/* 1A1DCC 8038FD4C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A1DD0 8038FD50 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A1DD4 8038FD54 8E04000C */  lw         $a0, 0xc($s0)
/* 1A1DD8 8038FD58 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A1DDC 8038FD5C 8E110014 */  lw         $s1, 0x14($s0)
/* 1A1DE0 8038FD60 24020001 */  addiu      $v0, $zero, 1
/* 1A1DE4 8038FD64 10620018 */  beq        $v1, $v0, .L8038FDC8
/* 1A1DE8 8038FD68 28620002 */   slti      $v0, $v1, 2
/* 1A1DEC 8038FD6C 50400005 */  beql       $v0, $zero, .L8038FD84
/* 1A1DF0 8038FD70 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A1DF4 8038FD74 10600007 */  beqz       $v1, .L8038FD94
/* 1A1DF8 8038FD78 00001021 */   addu      $v0, $zero, $zero
/* 1A1DFC 8038FD7C 080E3F85 */  j          .L8038FE14
/* 1A1E00 8038FD80 00000000 */   nop
.L8038FD84:
/* 1A1E04 8038FD84 1062001B */  beq        $v1, $v0, .L8038FDF4
/* 1A1E08 8038FD88 00001021 */   addu      $v0, $zero, $zero
/* 1A1E0C 8038FD8C 080E3F85 */  j          .L8038FE14
/* 1A1E10 8038FD90 00000000 */   nop
.L8038FD94:
/* 1A1E14 8038FD94 0C032663 */  jal        func_800C998C
/* 1A1E18 8038FD98 24040034 */   addiu     $a0, $zero, 0x34
/* 1A1E1C 8038FD9C 00402021 */  addu       $a0, $v0, $zero
/* 1A1E20 8038FDA0 24050034 */  addiu      $a1, $zero, 0x34
/* 1A1E24 8038FDA4 0C030134 */  jal        bzero
/* 1A1E28 8038FDA8 AE040014 */   sw        $a0, 0x14($s0)
/* 1A1E2C 8038FDAC 8E040014 */  lw         $a0, 0x14($s0)
/* 1A1E30 8038FDB0 0C0E3F8B */  jal        func_8038FE2C_1A1EAC
/* 1A1E34 8038FDB4 00000000 */   nop
/* 1A1E38 8038FDB8 00001021 */  addu       $v0, $zero, $zero
/* 1A1E3C 8038FDBC 24030001 */  addiu      $v1, $zero, 1
/* 1A1E40 8038FDC0 080E3F85 */  j          .L8038FE14
/* 1A1E44 8038FDC4 A603001C */   sh        $v1, 0x1c($s0)
.L8038FDC8:
/* 1A1E48 8038FDC8 0C025C53 */  jal        func_8009714C
/* 1A1E4C 8038FDCC 00000000 */   nop
/* 1A1E50 8038FDD0 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A1E54 8038FDD4 14430003 */  bne        $v0, $v1, .L8038FDE4
/* 1A1E58 8038FDD8 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A1E5C 8038FDDC 080E3F84 */  j          .L8038FE10
/* 1A1E60 8038FDE0 A602001C */   sh        $v0, 0x1c($s0)
.L8038FDE4:
/* 1A1E64 8038FDE4 0C0E4017 */  jal        func_8039005C_1A20DC
/* 1A1E68 8038FDE8 02202021 */   addu      $a0, $s1, $zero
/* 1A1E6C 8038FDEC 080E3F85 */  j          .L8038FE14
/* 1A1E70 8038FDF0 00001021 */   addu      $v0, $zero, $zero
.L8038FDF4:
/* 1A1E74 8038FDF4 0C0E3FF7 */  jal        func_8038FFDC_1A205C
/* 1A1E78 8038FDF8 02202021 */   addu      $a0, $s1, $zero
/* 1A1E7C 8038FDFC 8E040014 */  lw         $a0, 0x14($s0)
/* 1A1E80 8038FE00 0C0326A1 */  jal        func_800C9A84
/* 1A1E84 8038FE04 00000000 */   nop
/* 1A1E88 8038FE08 080E3F85 */  j          .L8038FE14
/* 1A1E8C 8038FE0C 24020001 */   addiu     $v0, $zero, 1
.L8038FE10:
/* 1A1E90 8038FE10 00001021 */  addu       $v0, $zero, $zero
.L8038FE14:
/* 1A1E94 8038FE14 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A1E98 8038FE18 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A1E9C 8038FE1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A1EA0 8038FE20 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A1EA4 8038FE24 03E00008 */  jr         $ra
/* 1A1EA8 8038FE28 00000000 */   nop

glabel func_8038FE2C_1A1EAC
/* 1A1EAC 8038FE2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A1EB0 8038FE30 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A1EB4 8038FE34 00808021 */  addu       $s0, $a0, $zero
/* 1A1EB8 8038FE38 2404000F */  addiu      $a0, $zero, 0xf
/* 1A1EBC 8038FE3C 24050001 */  addiu      $a1, $zero, 1
/* 1A1EC0 8038FE40 00003021 */  addu       $a2, $zero, $zero
/* 1A1EC4 8038FE44 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1A1EC8 8038FE48 0C028CB7 */  jal        func_800A32DC
/* 1A1ECC 8038FE4C AFB1001C */   sw        $s1, 0x1c($sp)
/* 1A1ED0 8038FE50 00402021 */  addu       $a0, $v0, $zero
/* 1A1ED4 8038FE54 24050333 */  addiu      $a1, $zero, 0x333
/* 1A1ED8 8038FE58 24060147 */  addiu      $a2, $zero, 0x147
/* 1A1EDC 8038FE5C 0C028F9A */  jal        func_800A3E68
/* 1A1EE0 8038FE60 AE040000 */   sw        $a0, ($s0)
/* 1A1EE4 8038FE64 24020002 */  addiu      $v0, $zero, 2
/* 1A1EE8 8038FE68 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A1EEC 8038FE6C 8E040000 */  lw         $a0, ($s0)
/* 1A1EF0 8038FE70 240500FF */  addiu      $a1, $zero, 0xff
/* 1A1EF4 8038FE74 240600FF */  addiu      $a2, $zero, 0xff
/* 1A1EF8 8038FE78 0C028E41 */  jal        func_800A3904
/* 1A1EFC 8038FE7C 240700FF */   addiu     $a3, $zero, 0xff
/* 1A1F00 8038FE80 24040534 */  addiu      $a0, $zero, 0x534
/* 1A1F04 8038FE84 24050001 */  addiu      $a1, $zero, 1
/* 1A1F08 8038FE88 0C028CB7 */  jal        func_800A32DC
/* 1A1F0C 8038FE8C 00003021 */   addu      $a2, $zero, $zero
/* 1A1F10 8038FE90 241100CC */  addiu      $s1, $zero, 0xcc
/* 1A1F14 8038FE94 AE020004 */  sw         $v0, 4($s0)
/* 1A1F18 8038FE98 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A1F1C 8038FE9C 8E040004 */  lw         $a0, 4($s0)
/* 1A1F20 8038FEA0 240500FF */  addiu      $a1, $zero, 0xff
/* 1A1F24 8038FEA4 240600FF */  addiu      $a2, $zero, 0xff
/* 1A1F28 8038FEA8 0C028E41 */  jal        func_800A3904
/* 1A1F2C 8038FEAC 240700FF */   addiu     $a3, $zero, 0xff
/* 1A1F30 8038FEB0 3C0141F0 */  lui        $at, 0x41f0
/* 1A1F34 8038FEB4 44810000 */  mtc1       $at, $f0
/* 1A1F38 8038FEB8 00000000 */  nop
/* 1A1F3C 8038FEBC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A1F40 8038FEC0 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A1F44 8038FEC4 468010A0 */  cvt.s.w    $f2, $f2
/* 1A1F48 8038FEC8 46020003 */  div.s      $f0, $f0, $f2
/* 1A1F4C 8038FECC 3C01437F */  lui        $at, 0x437f
/* 1A1F50 8038FED0 44811000 */  mtc1       $at, $f2
/* 1A1F54 8038FED4 00000000 */  nop
/* 1A1F58 8038FED8 46001081 */  sub.s      $f2, $f2, $f0
/* 1A1F5C 8038FEDC 24040535 */  addiu      $a0, $zero, 0x535
/* 1A1F60 8038FEE0 24050001 */  addiu      $a1, $zero, 1
/* 1A1F64 8038FEE4 00003021 */  addu       $a2, $zero, $zero
/* 1A1F68 8038FEE8 0C028CB7 */  jal        func_800A32DC
/* 1A1F6C 8038FEEC E6020024 */   swc1      $f2, 0x24($s0)
/* 1A1F70 8038FEF0 AE020008 */  sw         $v0, 8($s0)
/* 1A1F74 8038FEF4 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A1F78 8038FEF8 8E040008 */  lw         $a0, 8($s0)
/* 1A1F7C 8038FEFC 240500FF */  addiu      $a1, $zero, 0xff
/* 1A1F80 8038FF00 240600FF */  addiu      $a2, $zero, 0xff
/* 1A1F84 8038FF04 0C028E41 */  jal        func_800A3904
/* 1A1F88 8038FF08 240700FF */   addiu     $a3, $zero, 0xff
/* 1A1F8C 8038FF0C 2404038A */  addiu      $a0, $zero, 0x38a
/* 1A1F90 8038FF10 00002821 */  addu       $a1, $zero, $zero
/* 1A1F94 8038FF14 0C0298D4 */  jal        func_800A6350
/* 1A1F98 8038FF18 AE00000C */   sw        $zero, 0xc($s0)
/* 1A1F9C 8038FF1C 2404038B */  addiu      $a0, $zero, 0x38b
/* 1A1FA0 8038FF20 00002821 */  addu       $a1, $zero, $zero
/* 1A1FA4 8038FF24 0C0298D4 */  jal        func_800A6350
/* 1A1FA8 8038FF28 AE020014 */   sw        $v0, 0x14($s0)
/* 1A1FAC 8038FF2C 3C01C0C0 */  lui        $at, 0xc0c0
/* 1A1FB0 8038FF30 44811000 */  mtc1       $at, $f2
/* 1A1FB4 8038FF34 00000000 */  nop
/* 1A1FB8 8038FF38 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A1FBC 8038FF3C C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A1FC0 8038FF40 46800020 */  cvt.s.w    $f0, $f0
/* 1A1FC4 8038FF44 46001083 */  div.s      $f2, $f2, $f0
/* 1A1FC8 8038FF48 8E030004 */  lw         $v1, 4($s0)
/* 1A1FCC 8038FF4C AE020018 */  sw         $v0, 0x18($s0)
/* 1A1FD0 8038FF50 8C640014 */  lw         $a0, 0x14($v1)
/* 1A1FD4 8038FF54 24050008 */  addiu      $a1, $zero, 8
/* 1A1FD8 8038FF58 24840010 */  addiu      $a0, $a0, 0x10
/* 1A1FDC 8038FF5C 4600100D */  trunc.w.s  $f0, $f2
/* 1A1FE0 8038FF60 44060000 */  mfc1       $a2, $f0
/* 1A1FE4 8038FF64 00000000 */  nop
/* 1A1FE8 8038FF68 00063400 */  sll        $a2, $a2, 0x10
/* 1A1FEC 8038FF6C 0C0298EE */  jal        func_800A63B8
/* 1A1FF0 8038FF70 00063403 */   sra       $a2, $a2, 0x10
/* 1A1FF4 8038FF74 3C0142EC */  lui        $at, 0x42ec
/* 1A1FF8 8038FF78 44810000 */  mtc1       $at, $f0
/* 1A1FFC 8038FF7C 00000000 */  nop
/* 1A2000 8038FF80 3C014332 */  lui        $at, 0x4332
/* 1A2004 8038FF84 44811000 */  mtc1       $at, $f2
/* 1A2008 8038FF88 00000000 */  nop
/* 1A200C 8038FF8C 3C01434C */  lui        $at, 0x434c
/* 1A2010 8038FF90 44812000 */  mtc1       $at, $f4
/* 1A2014 8038FF94 00000000 */  nop
/* 1A2018 8038FF98 AE020010 */  sw         $v0, 0x10($s0)
/* 1A201C 8038FF9C A6000028 */  sh         $zero, 0x28($s0)
/* 1A2020 8038FFA0 A600002A */  sh         $zero, 0x2a($s0)
/* 1A2024 8038FFA4 A600002C */  sh         $zero, 0x2c($s0)
/* 1A2028 8038FFA8 A600002E */  sh         $zero, 0x2e($s0)
/* 1A202C 8038FFAC A6000030 */  sh         $zero, 0x30($s0)
/* 1A2030 8038FFB0 A2000032 */  sb         $zero, 0x32($s0)
/* 1A2034 8038FFB4 A2000033 */  sb         $zero, 0x33($s0)
/* 1A2038 8038FFB8 E600001C */  swc1       $f0, 0x1c($s0)
/* 1A203C 8038FFBC E6020020 */  swc1       $f2, 0x20($s0)
/* 1A2040 8038FFC0 E6040024 */  swc1       $f4, 0x24($s0)
/* 1A2044 8038FFC4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1A2048 8038FFC8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A204C 8038FFCC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2050 8038FFD0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A2054 8038FFD4 03E00008 */  jr         $ra
/* 1A2058 8038FFD8 00000000 */   nop

glabel func_8038FFDC_1A205C
/* 1A205C 8038FFDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A2060 8038FFE0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A2064 8038FFE4 00808021 */  addu       $s0, $a0, $zero
/* 1A2068 8038FFE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A206C 8038FFEC 8E040000 */  lw         $a0, ($s0)
/* 1A2070 8038FFF0 0C028D30 */  jal        func_800A34C0
/* 1A2074 8038FFF4 00000000 */   nop
/* 1A2078 8038FFF8 8E040004 */  lw         $a0, 4($s0)
/* 1A207C 8038FFFC 0C028D30 */  jal        func_800A34C0
/* 1A2080 80390000 00000000 */   nop
/* 1A2084 80390004 8E040008 */  lw         $a0, 8($s0)
/* 1A2088 80390008 0C028D30 */  jal        func_800A34C0
/* 1A208C 8039000C 00000000 */   nop
/* 1A2090 80390010 8E04000C */  lw         $a0, 0xc($s0)
/* 1A2094 80390014 10800003 */  beqz       $a0, .L80390024
/* 1A2098 80390018 00000000 */   nop
/* 1A209C 8039001C 0C025D58 */  jal        func_80097560
/* 1A20A0 80390020 00000000 */   nop
.L80390024:
/* 1A20A4 80390024 8E040014 */  lw         $a0, 0x14($s0)
/* 1A20A8 80390028 0C0326A1 */  jal        func_800C9A84
/* 1A20AC 8039002C 00000000 */   nop
/* 1A20B0 80390030 8E040018 */  lw         $a0, 0x18($s0)
/* 1A20B4 80390034 0C0326A1 */  jal        func_800C9A84
/* 1A20B8 80390038 00000000 */   nop
/* 1A20BC 8039003C 8E040010 */  lw         $a0, 0x10($s0)
/* 1A20C0 80390040 0C029903 */  jal        func_800A640C
/* 1A20C4 80390044 00000000 */   nop
/* 1A20C8 80390048 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A20CC 8039004C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A20D0 80390050 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A20D4 80390054 03E00008 */  jr         $ra
/* 1A20D8 80390058 00000000 */   nop

glabel func_8039005C_1A20DC
/* 1A20DC 8039005C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A20E0 80390060 AFB00030 */  sw         $s0, 0x30($sp)
/* 1A20E4 80390064 00808021 */  addu       $s0, $a0, $zero
/* 1A20E8 80390068 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1A20EC 8039006C 86020030 */  lh         $v0, 0x30($s0)
/* 1A20F0 80390070 1040004D */  beqz       $v0, .L803901A8
/* 1A20F4 80390074 00401821 */   addu      $v1, $v0, $zero
/* 1A20F8 80390078 92040032 */  lbu        $a0, 0x32($s0)
/* 1A20FC 8039007C 2462FFFF */  addiu      $v0, $v1, -1
/* 1A2100 80390080 10800006 */  beqz       $a0, .L8039009C
/* 1A2104 80390084 A6020030 */   sh        $v0, 0x30($s0)
/* 1A2108 80390088 24020001 */  addiu      $v0, $zero, 1
/* 1A210C 8039008C 1082000E */  beq        $a0, $v0, .L803900C8
/* 1A2110 80390090 00000000 */   nop
/* 1A2114 80390094 080E403D */  j          .L803900F4
/* 1A2118 80390098 00000000 */   nop
.L8039009C:
/* 1A211C 8039009C 3C013F2A */  lui        $at, 0x3f2a
/* 1A2120 803900A0 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A2124 803900A4 44810000 */  mtc1       $at, $f0
/* 1A2128 803900A8 00000000 */  nop
/* 1A212C 803900AC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2130 803900B0 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A2134 803900B4 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2138 803900B8 46001082 */  mul.s      $f2, $f2, $f0
/* 1A213C 803900BC C6000024 */  lwc1       $f0, 0x24($s0)
/* 1A2140 803900C0 080E403C */  j          .L803900F0
/* 1A2144 803900C4 46020001 */   sub.s     $f0, $f0, $f2
.L803900C8:
/* 1A2148 803900C8 3C013F2A */  lui        $at, 0x3f2a
/* 1A214C 803900CC 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A2150 803900D0 44810000 */  mtc1       $at, $f0
/* 1A2154 803900D4 00000000 */  nop
/* 1A2158 803900D8 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A215C 803900DC C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A2160 803900E0 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2164 803900E4 46001082 */  mul.s      $f2, $f2, $f0
/* 1A2168 803900E8 C6000024 */  lwc1       $f0, 0x24($s0)
/* 1A216C 803900EC 46020000 */  add.s      $f0, $f0, $f2
.L803900F0:
/* 1A2170 803900F0 E6000024 */  swc1       $f0, 0x24($s0)
.L803900F4:
/* 1A2174 803900F4 C6000024 */  lwc1       $f0, 0x24($s0)
/* 1A2178 803900F8 3C01437F */  lui        $at, 0x437f
/* 1A217C 803900FC 44811000 */  mtc1       $at, $f2
/* 1A2180 80390100 00000000 */  nop
/* 1A2184 80390104 4600103C */  c.lt.s     $f2, $f0
/* 1A2188 80390108 00000000 */  nop
/* 1A218C 8039010C 00000000 */  nop
/* 1A2190 80390110 45030009 */  bc1tl      .L80390138
/* 1A2194 80390114 E6020024 */   swc1      $f2, 0x24($s0)
/* 1A2198 80390118 3C01434C */  lui        $at, 0x434c
/* 1A219C 8039011C 44811000 */  mtc1       $at, $f2
/* 1A21A0 80390120 00000000 */  nop
/* 1A21A4 80390124 4602003C */  c.lt.s     $f0, $f2
/* 1A21A8 80390128 00000000 */  nop
/* 1A21AC 8039012C 00000000 */  nop
/* 1A21B0 80390130 45030001 */  bc1tl      .L80390138
/* 1A21B4 80390134 E6020024 */   swc1      $f2, 0x24($s0)
.L80390138:
/* 1A21B8 80390138 C6020024 */  lwc1       $f2, 0x24($s0)
/* 1A21BC 8039013C 3C014F00 */  lui        $at, 0x4f00
/* 1A21C0 80390140 44810000 */  mtc1       $at, $f0
/* 1A21C4 80390144 00000000 */  nop
/* 1A21C8 80390148 4602003E */  c.le.s     $f0, $f2
/* 1A21CC 8039014C 00000000 */  nop
/* 1A21D0 80390150 00000000 */  nop
/* 1A21D4 80390154 45030006 */  bc1tl      .L80390170
/* 1A21D8 80390158 46001001 */   sub.s     $f0, $f2, $f0
/* 1A21DC 8039015C 4600100D */  trunc.w.s  $f0, $f2
/* 1A21E0 80390160 44030000 */  mfc1       $v1, $f0
/* 1A21E4 80390164 00000000 */  nop
/* 1A21E8 80390168 080E4062 */  j          .L80390188
/* 1A21EC 8039016C 306200FF */   andi      $v0, $v1, 0xff
.L80390170:
/* 1A21F0 80390170 4600008D */  trunc.w.s  $f2, $f0
/* 1A21F4 80390174 44031000 */  mfc1       $v1, $f2
/* 1A21F8 80390178 00000000 */  nop
/* 1A21FC 8039017C 3C028000 */  lui        $v0, 0x8000
/* 1A2200 80390180 00621825 */  or         $v1, $v1, $v0
/* 1A2204 80390184 306200FF */  andi       $v0, $v1, 0xff
.L80390188:
/* 1A2208 80390188 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A220C 8039018C 8E040004 */  lw         $a0, 4($s0)
/* 1A2210 80390190 240500FF */  addiu      $a1, $zero, 0xff
/* 1A2214 80390194 240600FF */  addiu      $a2, $zero, 0xff
/* 1A2218 80390198 0C028E41 */  jal        func_800A3904
/* 1A221C 8039019C 240700FF */   addiu     $a3, $zero, 0xff
/* 1A2220 803901A0 080E406D */  j          .L803901B4
/* 1A2224 803901A4 00000000 */   nop
.L803901A8:
/* 1A2228 803901A8 8E040010 */  lw         $a0, 0x10($s0)
/* 1A222C 803901AC 0C02990C */  jal        func_800A6430
/* 1A2230 803901B0 00000000 */   nop
.L803901B4:
/* 1A2234 803901B4 92030032 */  lbu        $v1, 0x32($s0)
/* 1A2238 803901B8 24020002 */  addiu      $v0, $zero, 2
/* 1A223C 803901BC 1062002F */  beq        $v1, $v0, .L8039027C
/* 1A2240 803901C0 28620003 */   slti      $v0, $v1, 3
/* 1A2244 803901C4 50400005 */  beql       $v0, $zero, .L803901DC
/* 1A2248 803901C8 24020003 */   addiu     $v0, $zero, 3
/* 1A224C 803901CC 10600007 */  beqz       $v1, .L803901EC
/* 1A2250 803901D0 00000000 */   nop
/* 1A2254 803901D4 080E40DB */  j          .L8039036C
/* 1A2258 803901D8 00000000 */   nop
.L803901DC:
/* 1A225C 803901DC 1062002F */  beq        $v1, $v0, .L8039029C
/* 1A2260 803901E0 00000000 */   nop
/* 1A2264 803901E4 080E40DB */  j          .L8039036C
/* 1A2268 803901E8 00000000 */   nop
.L803901EC:
/* 1A226C 803901EC 96020028 */  lhu        $v0, 0x28($s0)
/* 1A2270 803901F0 92030033 */  lbu        $v1, 0x33($s0)
/* 1A2274 803901F4 24420001 */  addiu      $v0, $v0, 1
/* 1A2278 803901F8 10600006 */  beqz       $v1, .L80390214
/* 1A227C 803901FC A6020028 */   sh        $v0, 0x28($s0)
/* 1A2280 80390200 3C038017 */  lui        $v1, %hi(D_8016D168)
/* 1A2284 80390204 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* 1A2288 80390208 00031040 */  sll        $v0, $v1, 1
/* 1A228C 8039020C 080E4097 */  j          .L8039025C
/* 1A2290 80390210 00432821 */   addu      $a1, $v0, $v1
.L80390214:
/* 1A2294 80390214 0C02B460 */  jal        func_800AD180
/* 1A2298 80390218 24040012 */   addiu     $a0, $zero, 0x12
/* 1A229C 8039021C 3C038017 */  lui        $v1, %hi(D_8016D168)
/* 1A22A0 80390220 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* 1A22A4 80390224 44831000 */  mtc1       $v1, $f2
/* 1A22A8 80390228 00000000 */  nop
/* 1A22AC 8039022C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A22B0 80390230 46001082 */  mul.s      $f2, $f2, $f0
/* 1A22B4 80390234 8602002A */  lh         $v0, 0x2a($s0)
/* 1A22B8 80390238 4600100D */  trunc.w.s  $f0, $f2
/* 1A22BC 8039023C 44050000 */  mfc1       $a1, $f0
/* 1A22C0 80390240 00000000 */  nop
/* 1A22C4 80390244 00A22823 */  subu       $a1, $a1, $v0
/* 1A22C8 80390248 00031040 */  sll        $v0, $v1, 1
/* 1A22CC 8039024C 00431821 */  addu       $v1, $v0, $v1
/* 1A22D0 80390250 00A3102A */  slt        $v0, $a1, $v1
/* 1A22D4 80390254 54400001 */  bnezl      $v0, .L8039025C
/* 1A22D8 80390258 00602821 */   addu      $a1, $v1, $zero
.L8039025C:
/* 1A22DC 8039025C 86020028 */  lh         $v0, 0x28($s0)
/* 1A22E0 80390260 0045102A */  slt        $v0, $v0, $a1
/* 1A22E4 80390264 14400041 */  bnez       $v0, .L8039036C
/* 1A22E8 80390268 00000000 */   nop
/* 1A22EC 8039026C 0C0E411D */  jal        func_80390474_1A24F4
/* 1A22F0 80390270 02002021 */   addu      $a0, $s0, $zero
/* 1A22F4 80390274 080E40DB */  j          .L8039036C
/* 1A22F8 80390278 00000000 */   nop
.L8039027C:
/* 1A22FC 8039027C 9602002A */  lhu        $v0, 0x2a($s0)
/* 1A2300 80390280 2442FFFF */  addiu      $v0, $v0, -1
/* 1A2304 80390284 A602002A */  sh         $v0, 0x2a($s0)
/* 1A2308 80390288 00021400 */  sll        $v0, $v0, 0x10
/* 1A230C 8039028C 18400035 */  blez       $v0, .L80390364
/* 1A2310 80390290 00000000 */   nop
/* 1A2314 80390294 080E40DB */  j          .L8039036C
/* 1A2318 80390298 00000000 */   nop
.L8039029C:
/* 1A231C 8039029C 0C02A7E9 */  jal        func_800A9FA4
/* 1A2320 803902A0 00002021 */   addu      $a0, $zero, $zero
/* 1A2324 803902A4 10400031 */  beqz       $v0, .L8039036C
/* 1A2328 803902A8 00000000 */   nop
/* 1A232C 803902AC 9602002C */  lhu        $v0, 0x2c($s0)
/* 1A2330 803902B0 8603002E */  lh         $v1, 0x2e($s0)
/* 1A2334 803902B4 24420001 */  addiu      $v0, $v0, 1
/* 1A2338 803902B8 A602002C */  sh         $v0, 0x2c($s0)
/* 1A233C 803902BC 00021400 */  sll        $v0, $v0, 0x10
/* 1A2340 803902C0 00021403 */  sra        $v0, $v0, 0x10
/* 1A2344 803902C4 00602021 */  addu       $a0, $v1, $zero
/* 1A2348 803902C8 0062182A */  slt        $v1, $v1, $v0
/* 1A234C 803902CC 10600003 */  beqz       $v1, .L803902DC
/* 1A2350 803902D0 00000000 */   nop
/* 1A2354 803902D4 080E40B9 */  j          .L803902E4
/* 1A2358 803902D8 A604002C */   sh        $a0, 0x2c($s0)
.L803902DC:
/* 1A235C 803902DC 04420001 */  bltzl      $v0, .L803902E4
/* 1A2360 803902E0 A600002C */   sh        $zero, 0x2c($s0)
.L803902E4:
/* 1A2364 803902E4 8602002E */  lh         $v0, 0x2e($s0)
/* 1A2368 803902E8 3C014140 */  lui        $at, 0x4140
/* 1A236C 803902EC 44811000 */  mtc1       $at, $f2
/* 1A2370 803902F0 00000000 */  nop
/* 1A2374 803902F4 44820000 */  mtc1       $v0, $f0
/* 1A2378 803902F8 00000000 */  nop
/* 1A237C 803902FC 46800020 */  cvt.s.w    $f0, $f0
/* 1A2380 80390300 46020003 */  div.s      $f0, $f0, $f2
/* 1A2384 80390304 8602002C */  lh         $v0, 0x2c($s0)
/* 1A2388 80390308 44821000 */  mtc1       $v0, $f2
/* 1A238C 8039030C 00000000 */  nop
/* 1A2390 80390310 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2394 80390314 46001083 */  div.s      $f2, $f2, $f0
/* 1A2398 80390318 4600100D */  trunc.w.s  $f0, $f2
/* 1A239C 8039031C 44050000 */  mfc1       $a1, $f0
/* 1A23A0 80390320 00000000 */  nop
/* 1A23A4 80390324 18A0000C */  blez       $a1, .L80390358
/* 1A23A8 80390328 00002021 */   addu      $a0, $zero, $zero
.L8039032C:
/* 1A23AC 8039032C 8E020008 */  lw         $v0, 8($s0)
/* 1A23B0 80390330 8C420014 */  lw         $v0, 0x14($v0)
/* 1A23B4 80390334 00041840 */  sll        $v1, $a0, 1
/* 1A23B8 80390338 00621821 */  addu       $v1, $v1, $v0
/* 1A23BC 8039033C 94620002 */  lhu        $v0, 2($v1)
/* 1A23C0 80390340 24840001 */  addiu      $a0, $a0, 1
/* 1A23C4 80390344 34420001 */  ori        $v0, $v0, 1
/* 1A23C8 80390348 A4620002 */  sh         $v0, 2($v1)
/* 1A23CC 8039034C 0085102A */  slt        $v0, $a0, $a1
/* 1A23D0 80390350 1440FFF6 */  bnez       $v0, .L8039032C
/* 1A23D4 80390354 00000000 */   nop
.L80390358:
/* 1A23D8 80390358 2402000C */  addiu      $v0, $zero, 0xc
/* 1A23DC 8039035C 14A20003 */  bne        $a1, $v0, .L8039036C
/* 1A23E0 80390360 00000000 */   nop
.L80390364:
/* 1A23E4 80390364 0C0E4156 */  jal        func_80390558_1A25D8
/* 1A23E8 80390368 02002021 */   addu      $a0, $s0, $zero
.L8039036C:
/* 1A23EC 8039036C C600001C */  lwc1       $f0, 0x1c($s0)
/* 1A23F0 80390370 8E040000 */  lw         $a0, ($s0)
/* 1A23F4 80390374 4600008D */  trunc.w.s  $f2, $f0
/* 1A23F8 80390378 44051000 */  mfc1       $a1, $f2
/* 1A23FC 8039037C 00000000 */  nop
/* 1A2400 80390380 24A5FFFE */  addiu      $a1, $a1, -2
/* 1A2404 80390384 C6000020 */  lwc1       $f0, 0x20($s0)
/* 1A2408 80390388 00052C80 */  sll        $a1, $a1, 0x12
/* 1A240C 8039038C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A2410 80390390 4600008D */  trunc.w.s  $f2, $f0
/* 1A2414 80390394 44061000 */  mfc1       $a2, $f2
/* 1A2418 80390398 00000000 */  nop
/* 1A241C 8039039C 24C6FFFE */  addiu      $a2, $a2, -2
/* 1A2420 803903A0 00063480 */  sll        $a2, $a2, 0x12
/* 1A2424 803903A4 0C028D89 */  jal        func_800A3624
/* 1A2428 803903A8 00063403 */   sra       $a2, $a2, 0x10
/* 1A242C 803903AC C600001C */  lwc1       $f0, 0x1c($s0)
/* 1A2430 803903B0 8E040004 */  lw         $a0, 4($s0)
/* 1A2434 803903B4 4600008D */  trunc.w.s  $f2, $f0
/* 1A2438 803903B8 44051000 */  mfc1       $a1, $f2
/* 1A243C 803903BC 00000000 */  nop
/* 1A2440 803903C0 C6000020 */  lwc1       $f0, 0x20($s0)
/* 1A2444 803903C4 00052C80 */  sll        $a1, $a1, 0x12
/* 1A2448 803903C8 00052C03 */  sra        $a1, $a1, 0x10
/* 1A244C 803903CC 4600008D */  trunc.w.s  $f2, $f0
/* 1A2450 803903D0 44061000 */  mfc1       $a2, $f2
/* 1A2454 803903D4 00000000 */  nop
/* 1A2458 803903D8 00063480 */  sll        $a2, $a2, 0x12
/* 1A245C 803903DC 0C028D89 */  jal        func_800A3624
/* 1A2460 803903E0 00063403 */   sra       $a2, $a2, 0x10
/* 1A2464 803903E4 C600001C */  lwc1       $f0, 0x1c($s0)
/* 1A2468 803903E8 8E040008 */  lw         $a0, 8($s0)
/* 1A246C 803903EC 4600008D */  trunc.w.s  $f2, $f0
/* 1A2470 803903F0 44051000 */  mfc1       $a1, $f2
/* 1A2474 803903F4 00000000 */  nop
/* 1A2478 803903F8 C6000020 */  lwc1       $f0, 0x20($s0)
/* 1A247C 803903FC 00052C80 */  sll        $a1, $a1, 0x12
/* 1A2480 80390400 00052C03 */  sra        $a1, $a1, 0x10
/* 1A2484 80390404 4600008D */  trunc.w.s  $f2, $f0
/* 1A2488 80390408 44061000 */  mfc1       $a2, $f2
/* 1A248C 8039040C 00000000 */  nop
/* 1A2490 80390410 00063480 */  sll        $a2, $a2, 0x12
/* 1A2494 80390414 0C028D89 */  jal        func_800A3624
/* 1A2498 80390418 00063403 */   sra       $a2, $a2, 0x10
/* 1A249C 8039041C 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A24A0 80390420 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A24A4 80390424 1040000E */  beqz       $v0, .L80390460
/* 1A24A8 80390428 00000000 */   nop
/* 1A24AC 8039042C 8E040000 */  lw         $a0, ($s0)
/* 1A24B0 80390430 0C028A40 */  jal        func_800A2900
/* 1A24B4 80390434 00000000 */   nop
/* 1A24B8 80390438 92030032 */  lbu        $v1, 0x32($s0)
/* 1A24BC 8039043C 24020003 */  addiu      $v0, $zero, 3
/* 1A24C0 80390440 14620004 */  bne        $v1, $v0, .L80390454
/* 1A24C4 80390444 00000000 */   nop
/* 1A24C8 80390448 8E040008 */  lw         $a0, 8($s0)
/* 1A24CC 8039044C 080E4116 */  j          .L80390458
/* 1A24D0 80390450 00000000 */   nop
.L80390454:
/* 1A24D4 80390454 8E040004 */  lw         $a0, 4($s0)
.L80390458:
/* 1A24D8 80390458 0C028A40 */  jal        func_800A2900
/* 1A24DC 8039045C 00000000 */   nop
.L80390460:
/* 1A24E0 80390460 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1A24E4 80390464 8FB00030 */  lw         $s0, 0x30($sp)
/* 1A24E8 80390468 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1A24EC 8039046C 03E00008 */  jr         $ra
/* 1A24F0 80390470 00000000 */   nop

glabel func_80390474_1A24F4
/* 1A24F4 80390474 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A24F8 80390478 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1A24FC 8039047C 3C0141F0 */  lui        $at, 0x41f0
/* 1A2500 80390480 4481A000 */  mtc1       $at, $f20
/* 1A2504 80390484 00000000 */  nop
/* 1A2508 80390488 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A250C 8039048C 00808021 */  addu       $s0, $a0, $zero
/* 1A2510 80390490 24020001 */  addiu      $v0, $zero, 1
/* 1A2514 80390494 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A2518 80390498 A2020032 */  sb         $v0, 0x32($s0)
/* 1A251C 8039049C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2520 803904A0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2524 803904A4 46800020 */  cvt.s.w    $f0, $f0
/* 1A2528 803904A8 4600A003 */  div.s      $f0, $f20, $f0
/* 1A252C 803904AC 8E04000C */  lw         $a0, 0xc($s0)
/* 1A2530 803904B0 A6000028 */  sh         $zero, 0x28($s0)
/* 1A2534 803904B4 4600008D */  trunc.w.s  $f2, $f0
/* 1A2538 803904B8 44021000 */  mfc1       $v0, $f2
/* 1A253C 803904BC 00000000 */  nop
/* 1A2540 803904C0 10800003 */  beqz       $a0, .L803904D0
/* 1A2544 803904C4 A6020030 */   sh        $v0, 0x30($s0)
/* 1A2548 803904C8 0C025D58 */  jal        func_80097560
/* 1A254C 803904CC 00000000 */   nop
.L803904D0:
/* 1A2550 803904D0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2554 803904D4 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2558 803904D8 46800020 */  cvt.s.w    $f0, $f0
/* 1A255C 803904DC 4600A003 */  div.s      $f0, $f20, $f0
/* 1A2560 803904E0 8E020004 */  lw         $v0, 4($s0)
/* 1A2564 803904E4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A2568 803904E8 8E050018 */  lw         $a1, 0x18($s0)
/* 1A256C 803904EC 24060010 */  addiu      $a2, $zero, 0x10
/* 1A2570 803904F0 8C440014 */  lw         $a0, 0x14($v0)
/* 1A2574 803904F4 4600008D */  trunc.w.s  $f2, $f0
/* 1A2578 803904F8 44071000 */  mfc1       $a3, $f2
/* 1A257C 803904FC 00000000 */  nop
/* 1A2580 80390500 00073C00 */  sll        $a3, $a3, 0x10
/* 1A2584 80390504 0C029A39 */  jal        func_800A68E4
/* 1A2588 80390508 00073C03 */   sra       $a3, $a3, 0x10
/* 1A258C 8039050C 3C014040 */  lui        $at, 0x4040
/* 1A2590 80390510 44811000 */  mtc1       $at, $f2
/* 1A2594 80390514 00000000 */  nop
/* 1A2598 80390518 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A259C 8039051C C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A25A0 80390520 46800020 */  cvt.s.w    $f0, $f0
/* 1A25A4 80390524 46001083 */  div.s      $f2, $f2, $f0
/* 1A25A8 80390528 8E030010 */  lw         $v1, 0x10($s0)
/* 1A25AC 8039052C AE02000C */  sw         $v0, 0xc($s0)
/* 1A25B0 80390530 4600100D */  trunc.w.s  $f0, $f2
/* 1A25B4 80390534 44020000 */  mfc1       $v0, $f0
/* 1A25B8 80390538 00000000 */  nop
/* 1A25BC 8039053C A4620006 */  sh         $v0, 6($v1)
/* 1A25C0 80390540 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A25C4 80390544 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A25C8 80390548 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1A25CC 8039054C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A25D0 80390550 03E00008 */  jr         $ra
/* 1A25D4 80390554 00000000 */   nop

glabel func_80390558_1A25D8
/* 1A25D8 80390558 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A25DC 8039055C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1A25E0 80390560 3C0141F0 */  lui        $at, 0x41f0
/* 1A25E4 80390564 4481A000 */  mtc1       $at, $f20
/* 1A25E8 80390568 00000000 */  nop
/* 1A25EC 8039056C AFB00018 */  sw         $s0, 0x18($sp)
/* 1A25F0 80390570 00808021 */  addu       $s0, $a0, $zero
/* 1A25F4 80390574 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A25F8 80390578 A2000032 */  sb         $zero, 0x32($s0)
/* 1A25FC 8039057C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2600 80390580 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2604 80390584 46800020 */  cvt.s.w    $f0, $f0
/* 1A2608 80390588 4600A003 */  div.s      $f0, $f20, $f0
/* 1A260C 8039058C 8E04000C */  lw         $a0, 0xc($s0)
/* 1A2610 80390590 4600008D */  trunc.w.s  $f2, $f0
/* 1A2614 80390594 44021000 */  mfc1       $v0, $f2
/* 1A2618 80390598 00000000 */  nop
/* 1A261C 8039059C 10800003 */  beqz       $a0, .L803905AC
/* 1A2620 803905A0 A6020030 */   sh        $v0, 0x30($s0)
/* 1A2624 803905A4 0C025D58 */  jal        func_80097560
/* 1A2628 803905A8 00000000 */   nop
.L803905AC:
/* 1A262C 803905AC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2630 803905B0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2634 803905B4 46800020 */  cvt.s.w    $f0, $f0
/* 1A2638 803905B8 4600A003 */  div.s      $f0, $f20, $f0
/* 1A263C 803905BC 8E020004 */  lw         $v0, 4($s0)
/* 1A2640 803905C0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A2644 803905C4 8E050014 */  lw         $a1, 0x14($s0)
/* 1A2648 803905C8 24060010 */  addiu      $a2, $zero, 0x10
/* 1A264C 803905CC 8C440014 */  lw         $a0, 0x14($v0)
/* 1A2650 803905D0 4600008D */  trunc.w.s  $f2, $f0
/* 1A2654 803905D4 44071000 */  mfc1       $a3, $f2
/* 1A2658 803905D8 00000000 */  nop
/* 1A265C 803905DC 00073C00 */  sll        $a3, $a3, 0x10
/* 1A2660 803905E0 0C029A39 */  jal        func_800A68E4
/* 1A2664 803905E4 00073C03 */   sra       $a3, $a3, 0x10
/* 1A2668 803905E8 3C01C0C0 */  lui        $at, 0xc0c0
/* 1A266C 803905EC 44811000 */  mtc1       $at, $f2
/* 1A2670 803905F0 00000000 */  nop
/* 1A2674 803905F4 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2678 803905F8 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A267C 803905FC 46800020 */  cvt.s.w    $f0, $f0
/* 1A2680 80390600 46001083 */  div.s      $f2, $f2, $f0
/* 1A2684 80390604 8E030010 */  lw         $v1, 0x10($s0)
/* 1A2688 80390608 AE02000C */  sw         $v0, 0xc($s0)
/* 1A268C 8039060C 4600100D */  trunc.w.s  $f0, $f2
/* 1A2690 80390610 44020000 */  mfc1       $v0, $f0
/* 1A2694 80390614 00000000 */  nop
/* 1A2698 80390618 A4620006 */  sh         $v0, 6($v1)
/* 1A269C 8039061C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A26A0 80390620 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A26A4 80390624 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1A26A8 80390628 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A26AC 8039062C 03E00008 */  jr         $ra
/* 1A26B0 80390630 00000000 */   nop

glabel func_80390634_1A26B4
/* 1A26B4 80390634 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A26B8 80390638 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A26BC 8039063C 00808021 */  addu       $s0, $a0, $zero
/* 1A26C0 80390640 24020003 */  addiu      $v0, $zero, 3
/* 1A26C4 80390644 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A26C8 80390648 A2020032 */  sb         $v0, 0x32($s0)
/* 1A26CC 8039064C 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 1A26D0 80390650 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 1A26D4 80390654 0C0E54BC */  jal        func_803952F0
/* 1A26D8 80390658 A600002C */   sh        $zero, 0x2c($s0)
/* 1A26DC 8039065C 4620008D */  trunc.w.d  $f2, $f0
/* 1A26E0 80390660 44031000 */  mfc1       $v1, $f2
/* 1A26E4 80390664 00000000 */  nop
/* 1A26E8 80390668 28620032 */  slti       $v0, $v1, 0x32
/* 1A26EC 8039066C 10400003 */  beqz       $v0, .L8039067C
/* 1A26F0 80390670 28620064 */   slti      $v0, $v1, 0x64
/* 1A26F4 80390674 080E41A2 */  j          .L80390688
/* 1A26F8 80390678 2404000F */   addiu     $a0, $zero, 0xf
.L8039067C:
/* 1A26FC 8039067C 10400002 */  beqz       $v0, .L80390688
/* 1A2700 80390680 24040011 */   addiu     $a0, $zero, 0x11
/* 1A2704 80390684 24040010 */  addiu      $a0, $zero, 0x10
.L80390688:
/* 1A2708 80390688 0C02B460 */  jal        func_800AD180
/* 1A270C 8039068C 00000000 */   nop
/* 1A2710 80390690 4600008D */  trunc.w.s  $f2, $f0
/* 1A2714 80390694 44021000 */  mfc1       $v0, $f2
/* 1A2718 80390698 00000000 */  nop
/* 1A271C 8039069C A602002E */  sh         $v0, 0x2e($s0)
/* 1A2720 803906A0 00002021 */  addu       $a0, $zero, $zero
.L803906A4:
/* 1A2724 803906A4 8E020008 */  lw         $v0, 8($s0)
/* 1A2728 803906A8 8C420014 */  lw         $v0, 0x14($v0)
/* 1A272C 803906AC 00041840 */  sll        $v1, $a0, 1
/* 1A2730 803906B0 00621821 */  addu       $v1, $v1, $v0
/* 1A2734 803906B4 94620002 */  lhu        $v0, 2($v1)
/* 1A2738 803906B8 24840001 */  addiu      $a0, $a0, 1
/* 1A273C 803906BC 3042FFFE */  andi       $v0, $v0, 0xfffe
/* 1A2740 803906C0 A4620002 */  sh         $v0, 2($v1)
/* 1A2744 803906C4 2882000C */  slti       $v0, $a0, 0xc
/* 1A2748 803906C8 1440FFF6 */  bnez       $v0, .L803906A4
/* 1A274C 803906CC 00000000 */   nop
/* 1A2750 803906D0 8E04000C */  lw         $a0, 0xc($s0)
/* 1A2754 803906D4 10800003 */  beqz       $a0, .L803906E4
/* 1A2758 803906D8 00000000 */   nop
/* 1A275C 803906DC 0C025D58 */  jal        func_80097560
/* 1A2760 803906E0 00000000 */   nop
.L803906E4:
/* 1A2764 803906E4 3C0141F0 */  lui        $at, 0x41f0
/* 1A2768 803906E8 44811000 */  mtc1       $at, $f2
/* 1A276C 803906EC 00000000 */  nop
/* 1A2770 803906F0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2774 803906F4 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2778 803906F8 46800020 */  cvt.s.w    $f0, $f0
/* 1A277C 803906FC 46001083 */  div.s      $f2, $f2, $f0
/* 1A2780 80390700 8E020004 */  lw         $v0, 4($s0)
/* 1A2784 80390704 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A2788 80390708 8E050018 */  lw         $a1, 0x18($s0)
/* 1A278C 8039070C 24060010 */  addiu      $a2, $zero, 0x10
/* 1A2790 80390710 8C440014 */  lw         $a0, 0x14($v0)
/* 1A2794 80390714 4600100D */  trunc.w.s  $f0, $f2
/* 1A2798 80390718 44070000 */  mfc1       $a3, $f0
/* 1A279C 8039071C 00000000 */  nop
/* 1A27A0 80390720 00073C00 */  sll        $a3, $a3, 0x10
/* 1A27A4 80390724 0C029A39 */  jal        func_800A68E4
/* 1A27A8 80390728 00073C03 */   sra       $a3, $a3, 0x10
/* 1A27AC 8039072C 3C014040 */  lui        $at, 0x4040
/* 1A27B0 80390730 44811000 */  mtc1       $at, $f2
/* 1A27B4 80390734 00000000 */  nop
/* 1A27B8 80390738 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A27BC 8039073C C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A27C0 80390740 46800020 */  cvt.s.w    $f0, $f0
/* 1A27C4 80390744 46001083 */  div.s      $f2, $f2, $f0
/* 1A27C8 80390748 8E030010 */  lw         $v1, 0x10($s0)
/* 1A27CC 8039074C AE02000C */  sw         $v0, 0xc($s0)
/* 1A27D0 80390750 4600100D */  trunc.w.s  $f0, $f2
/* 1A27D4 80390754 44020000 */  mfc1       $v0, $f0
/* 1A27D8 80390758 00000000 */  nop
/* 1A27DC 8039075C 0C02A7E0 */  jal        func_800A9F80
/* 1A27E0 80390760 A4620006 */   sh        $v0, 6($v1)
/* 1A27E4 80390764 A600002A */  sh         $zero, 0x2a($s0)
/* 1A27E8 80390768 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A27EC 8039076C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A27F0 80390770 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A27F4 80390774 03E00008 */  jr         $ra
/* 1A27F8 80390778 00000000 */   nop

glabel func_8039077C
/* 1A27FC 8039077C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A2800 80390780 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A2804 80390784 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2808 80390788 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1A280C 8039078C 10800065 */  beqz       $a0, .L80390924
/* 1A2810 80390790 24020001 */   addiu     $v0, $zero, 1
/* 1A2814 80390794 8C900014 */  lw         $s0, 0x14($a0)
/* 1A2818 80390798 92040032 */  lbu        $a0, 0x32($s0)
/* 1A281C 8039079C 1082000B */  beq        $a0, $v0, .L803907CC
/* 1A2820 803907A0 28820002 */   slti      $v0, $a0, 2
/* 1A2824 803907A4 50400005 */  beql       $v0, $zero, .L803907BC
/* 1A2828 803907A8 28820004 */   slti      $v0, $a0, 4
/* 1A282C 803907AC 10800058 */  beqz       $a0, .L80390910
/* 1A2830 803907B0 30A300FF */   andi      $v1, $a1, 0xff
/* 1A2834 803907B4 080E4249 */  j          .L80390924
/* 1A2838 803907B8 00000000 */   nop
.L803907BC:
/* 1A283C 803907BC 10400059 */  beqz       $v0, .L80390924
/* 1A2840 803907C0 30A300FF */   andi      $v1, $a1, 0xff
/* 1A2844 803907C4 080E4215 */  j          .L80390854
/* 1A2848 803907C8 00000000 */   nop
.L803907CC:
/* 1A284C 803907CC 30A300FF */  andi       $v1, $a1, 0xff
/* 1A2850 803907D0 24020002 */  addiu      $v0, $zero, 2
/* 1A2854 803907D4 1462004F */  bne        $v1, $v0, .L80390914
/* 1A2858 803907D8 24020003 */   addiu     $v0, $zero, 3
/* 1A285C 803907DC 24020002 */  addiu      $v0, $zero, 2
/* 1A2860 803907E0 A2020032 */  sb         $v0, 0x32($s0)
/* 1A2864 803907E4 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 1A2868 803907E8 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 1A286C 803907EC 0C0E54BC */  jal        func_803952F0
/* 1A2870 803907F0 00000000 */   nop
/* 1A2874 803907F4 4620008D */  trunc.w.d  $f2, $f0
/* 1A2878 803907F8 44031000 */  mfc1       $v1, $f2
/* 1A287C 803907FC 00000000 */  nop
/* 1A2880 80390800 28620032 */  slti       $v0, $v1, 0x32
/* 1A2884 80390804 10400005 */  beqz       $v0, .L8039081C
/* 1A2888 80390808 28620064 */   slti      $v0, $v1, 0x64
/* 1A288C 8039080C 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A2890 80390810 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A2894 80390814 080E4213 */  j          .L8039084C
/* 1A2898 80390818 000210C0 */   sll       $v0, $v0, 3
.L8039081C:
/* 1A289C 8039081C 10400006 */  beqz       $v0, .L80390838
/* 1A28A0 80390820 00000000 */   nop
/* 1A28A4 80390824 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A28A8 80390828 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A28AC 8039082C 00021100 */  sll        $v0, $v0, 4
/* 1A28B0 80390830 080E4249 */  j          .L80390924
/* 1A28B4 80390834 A602002A */   sh        $v0, 0x2a($s0)
.L80390838:
/* 1A28B8 80390838 3C038017 */  lui        $v1, %hi(D_8016D168)
/* 1A28BC 8039083C 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* 1A28C0 80390840 00031040 */  sll        $v0, $v1, 1
/* 1A28C4 80390844 00431021 */  addu       $v0, $v0, $v1
/* 1A28C8 80390848 000210C0 */  sll        $v0, $v0, 3
.L8039084C:
/* 1A28CC 8039084C 080E4249 */  j          .L80390924
/* 1A28D0 80390850 A602002A */   sh        $v0, 0x2a($s0)
.L80390854:
/* 1A28D4 80390854 1460002F */  bnez       $v1, .L80390914
/* 1A28D8 80390858 24020003 */   addiu     $v0, $zero, 3
/* 1A28DC 8039085C 3C0141F0 */  lui        $at, 0x41f0
/* 1A28E0 80390860 4481A000 */  mtc1       $at, $f20
/* 1A28E4 80390864 00000000 */  nop
/* 1A28E8 80390868 A2000032 */  sb         $zero, 0x32($s0)
/* 1A28EC 8039086C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A28F0 80390870 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A28F4 80390874 46800020 */  cvt.s.w    $f0, $f0
/* 1A28F8 80390878 4600A003 */  div.s      $f0, $f20, $f0
/* 1A28FC 8039087C 8E04000C */  lw         $a0, 0xc($s0)
/* 1A2900 80390880 4600008D */  trunc.w.s  $f2, $f0
/* 1A2904 80390884 44021000 */  mfc1       $v0, $f2
/* 1A2908 80390888 00000000 */  nop
/* 1A290C 8039088C 10800003 */  beqz       $a0, .L8039089C
/* 1A2910 80390890 A6020030 */   sh        $v0, 0x30($s0)
/* 1A2914 80390894 0C025D58 */  jal        func_80097560
/* 1A2918 80390898 00000000 */   nop
.L8039089C:
/* 1A291C 8039089C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2920 803908A0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2924 803908A4 46800020 */  cvt.s.w    $f0, $f0
/* 1A2928 803908A8 4600A003 */  div.s      $f0, $f20, $f0
/* 1A292C 803908AC 8E020004 */  lw         $v0, 4($s0)
/* 1A2930 803908B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A2934 803908B4 8E050014 */  lw         $a1, 0x14($s0)
/* 1A2938 803908B8 24060010 */  addiu      $a2, $zero, 0x10
/* 1A293C 803908BC 8C440014 */  lw         $a0, 0x14($v0)
/* 1A2940 803908C0 4600008D */  trunc.w.s  $f2, $f0
/* 1A2944 803908C4 44071000 */  mfc1       $a3, $f2
/* 1A2948 803908C8 00000000 */  nop
/* 1A294C 803908CC 00073C00 */  sll        $a3, $a3, 0x10
/* 1A2950 803908D0 0C029A39 */  jal        func_800A68E4
/* 1A2954 803908D4 00073C03 */   sra       $a3, $a3, 0x10
/* 1A2958 803908D8 3C01C0C0 */  lui        $at, 0xc0c0
/* 1A295C 803908DC 44811000 */  mtc1       $at, $f2
/* 1A2960 803908E0 00000000 */  nop
/* 1A2964 803908E4 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2968 803908E8 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A296C 803908EC 46800020 */  cvt.s.w    $f0, $f0
/* 1A2970 803908F0 46001083 */  div.s      $f2, $f2, $f0
/* 1A2974 803908F4 8E030010 */  lw         $v1, 0x10($s0)
/* 1A2978 803908F8 AE02000C */  sw         $v0, 0xc($s0)
/* 1A297C 803908FC 4600100D */  trunc.w.s  $f0, $f2
/* 1A2980 80390900 44020000 */  mfc1       $v0, $f0
/* 1A2984 80390904 00000000 */  nop
/* 1A2988 80390908 080E4249 */  j          .L80390924
/* 1A298C 8039090C A4620006 */   sh        $v0, 6($v1)
.L80390910:
/* 1A2990 80390910 24020003 */  addiu      $v0, $zero, 3
.L80390914:
/* 1A2994 80390914 14620003 */  bne        $v1, $v0, .L80390924
/* 1A2998 80390918 00000000 */   nop
/* 1A299C 8039091C 0C0E418D */  jal        func_80390634_1A26B4
/* 1A29A0 80390920 02002021 */   addu      $a0, $s0, $zero
.L80390924:
/* 1A29A4 80390924 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A29A8 80390928 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A29AC 8039092C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1A29B0 80390930 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A29B4 80390934 03E00008 */  jr         $ra
/* 1A29B8 80390938 00000000 */   nop

glabel func_8039093C
/* 1A29BC 8039093C 10800003 */  beqz       $a0, .L8039094C
/* 1A29C0 80390940 24020001 */   addiu     $v0, $zero, 1
/* 1A29C4 80390944 8C820014 */  lw         $v0, 0x14($a0)
/* 1A29C8 80390948 90420032 */  lbu        $v0, 0x32($v0)
.L8039094C:
/* 1A29CC 8039094C 03E00008 */  jr         $ra
/* 1A29D0 80390950 00000000 */   nop

glabel func_80390954
/* 1A29D4 80390954 10800003 */  beqz       $a0, .L80390964
/* 1A29D8 80390958 00000000 */   nop
/* 1A29DC 8039095C 8C820014 */  lw         $v0, 0x14($a0)
/* 1A29E0 80390960 A0450033 */  sb         $a1, 0x33($v0)
.L80390964:
/* 1A29E4 80390964 03E00008 */  jr         $ra
/* 1A29E8 80390968 00000000 */   nop
/* 1A29EC 8039096C 00000000 */  nop

glabel func_80390970_1A29F0
/* 1A29F0 80390970 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A29F4 80390974 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A29F8 80390978 00808821 */  addu       $s1, $a0, $zero
/* 1A29FC 8039097C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A2A00 80390980 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A2A04 80390984 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2A08 80390988 8E300014 */  lw         $s0, 0x14($s1)
/* 1A2A0C 8039098C 9623001C */  lhu        $v1, 0x1c($s1)
/* 1A2A10 80390990 8E32000C */  lw         $s2, 0xc($s1)
/* 1A2A14 80390994 24020002 */  addiu      $v0, $zero, 2
/* 1A2A18 80390998 10620039 */  beq        $v1, $v0, .L80390A80
/* 1A2A1C 8039099C 28620003 */   slti      $v0, $v1, 3
/* 1A2A20 803909A0 50400007 */  beql       $v0, $zero, .L803909C0
/* 1A2A24 803909A4 24020003 */   addiu     $v0, $zero, 3
/* 1A2A28 803909A8 1060000B */  beqz       $v1, .L803909D8
/* 1A2A2C 803909AC 24020001 */   addiu     $v0, $zero, 1
/* 1A2A30 803909B0 10620019 */  beq        $v1, $v0, .L80390A18
/* 1A2A34 803909B4 00001021 */   addu      $v0, $zero, $zero
/* 1A2A38 803909B8 080E42C6 */  j          .L80390B18
/* 1A2A3C 803909BC 00000000 */   nop
.L803909C0:
/* 1A2A40 803909C0 10620042 */  beq        $v1, $v0, .L80390ACC
/* 1A2A44 803909C4 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A2A48 803909C8 1062004B */  beq        $v1, $v0, .L80390AF8
/* 1A2A4C 803909CC 00001021 */   addu      $v0, $zero, $zero
/* 1A2A50 803909D0 080E42C6 */  j          .L80390B18
/* 1A2A54 803909D4 00000000 */   nop
.L803909D8:
/* 1A2A58 803909D8 0C032663 */  jal        func_800C998C
/* 1A2A5C 803909DC 24040024 */   addiu     $a0, $zero, 0x24
/* 1A2A60 803909E0 00402021 */  addu       $a0, $v0, $zero
/* 1A2A64 803909E4 24050024 */  addiu      $a1, $zero, 0x24
/* 1A2A68 803909E8 0C030134 */  jal        bzero
/* 1A2A6C 803909EC AE240014 */   sw        $a0, 0x14($s1)
/* 1A2A70 803909F0 8E300014 */  lw         $s0, 0x14($s1)
/* 1A2A74 803909F4 0C025C53 */  jal        func_8009714C
/* 1A2A78 803909F8 02402021 */   addu      $a0, $s2, $zero
/* 1A2A7C 803909FC 02002021 */  addu       $a0, $s0, $zero
/* 1A2A80 80390A00 0C0E42CD */  jal        func_80390B34_1A2BB4
/* 1A2A84 80390A04 A0820022 */   sb        $v0, 0x22($a0)
/* 1A2A88 80390A08 00001021 */  addu       $v0, $zero, $zero
/* 1A2A8C 80390A0C 24030001 */  addiu      $v1, $zero, 1
/* 1A2A90 80390A10 080E42C6 */  j          .L80390B18
/* 1A2A94 80390A14 A623001C */   sh        $v1, 0x1c($s1)
.L80390A18:
/* 1A2A98 80390A18 0C025C53 */  jal        func_8009714C
/* 1A2A9C 80390A1C 02402021 */   addu      $a0, $s2, $zero
/* 1A2AA0 80390A20 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A2AA4 80390A24 14430003 */  bne        $v0, $v1, .L80390A34
/* 1A2AA8 80390A28 3402FFFF */   ori       $v0, $zero, 0xffff
.L80390A2C:
/* 1A2AAC 80390A2C 080E42C5 */  j          .L80390B14
/* 1A2AB0 80390A30 A622001C */   sh        $v0, 0x1c($s1)
.L80390A34:
/* 1A2AB4 80390A34 0C0E433A */  jal        func_80390CE8_1A2D68
/* 1A2AB8 80390A38 02002021 */   addu      $a0, $s0, $zero
/* 1A2ABC 80390A3C 1040000C */  beqz       $v0, .L80390A70
/* 1A2AC0 80390A40 24020002 */   addiu     $v0, $zero, 2
/* 1A2AC4 80390A44 44801000 */  mtc1       $zero, $f2
/* 1A2AC8 80390A48 00000000 */  nop
/* 1A2ACC 80390A4C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2AD0 80390A50 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2AD4 80390A54 46800020 */  cvt.s.w    $f0, $f0
/* 1A2AD8 80390A58 46001083 */  div.s      $f2, $f2, $f0
.L80390A5C:
/* 1A2ADC 80390A5C A622001C */  sh         $v0, 0x1c($s1)
/* 1A2AE0 80390A60 4600100D */  trunc.w.s  $f0, $f2
/* 1A2AE4 80390A64 44020000 */  mfc1       $v0, $f0
/* 1A2AE8 80390A68 00000000 */  nop
.L80390A6C:
/* 1A2AEC 80390A6C A6020020 */  sh         $v0, 0x20($s0)
.L80390A70:
/* 1A2AF0 80390A70 0C0E439C */  jal        func_80390E70_1A2EF0
/* 1A2AF4 80390A74 02002021 */   addu      $a0, $s0, $zero
/* 1A2AF8 80390A78 080E42C6 */  j          .L80390B18
/* 1A2AFC 80390A7C 00001021 */   addu      $v0, $zero, $zero
.L80390A80:
/* 1A2B00 80390A80 0C025C53 */  jal        func_8009714C
/* 1A2B04 80390A84 02402021 */   addu      $a0, $s2, $zero
/* 1A2B08 80390A88 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A2B0C 80390A8C 1043FFE7 */  beq        $v0, $v1, .L80390A2C
/* 1A2B10 80390A90 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A2B14 80390A94 86020020 */  lh         $v0, 0x20($s0)
/* 1A2B18 80390A98 10400003 */  beqz       $v0, .L80390AA8
/* 1A2B1C 80390A9C 00401821 */   addu      $v1, $v0, $zero
/* 1A2B20 80390AA0 080E429B */  j          .L80390A6C
/* 1A2B24 80390AA4 2462FFFF */   addiu     $v0, $v1, -1
.L80390AA8:
/* 1A2B28 80390AA8 3C014170 */  lui        $at, 0x4170
/* 1A2B2C 80390AAC 44811000 */  mtc1       $at, $f2
/* 1A2B30 80390AB0 00000000 */  nop
/* 1A2B34 80390AB4 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2B38 80390AB8 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2B3C 80390ABC 46800020 */  cvt.s.w    $f0, $f0
/* 1A2B40 80390AC0 46001083 */  div.s      $f2, $f2, $f0
/* 1A2B44 80390AC4 080E4297 */  j          .L80390A5C
/* 1A2B48 80390AC8 24020003 */   addiu     $v0, $zero, 3
.L80390ACC:
/* 1A2B4C 80390ACC 0C025C53 */  jal        func_8009714C
/* 1A2B50 80390AD0 02402021 */   addu      $a0, $s2, $zero
/* 1A2B54 80390AD4 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A2B58 80390AD8 1043FFD4 */  beq        $v0, $v1, .L80390A2C
/* 1A2B5C 80390ADC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A2B60 80390AE0 0C0E434D */  jal        func_80390D34_1A2DB4
/* 1A2B64 80390AE4 02002021 */   addu      $a0, $s0, $zero
/* 1A2B68 80390AE8 1040FFE1 */  beqz       $v0, .L80390A70
/* 1A2B6C 80390AEC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A2B70 80390AF0 080E429C */  j          .L80390A70
/* 1A2B74 80390AF4 A622001C */   sh        $v0, 0x1c($s1)
.L80390AF8:
/* 1A2B78 80390AF8 0C0E432B */  jal        func_80390CAC_1A2D2C
/* 1A2B7C 80390AFC 02002021 */   addu      $a0, $s0, $zero
/* 1A2B80 80390B00 8E240014 */  lw         $a0, 0x14($s1)
/* 1A2B84 80390B04 0C0326A1 */  jal        func_800C9A84
/* 1A2B88 80390B08 00000000 */   nop
/* 1A2B8C 80390B0C 080E42C6 */  j          .L80390B18
/* 1A2B90 80390B10 24020001 */   addiu     $v0, $zero, 1
.L80390B14:
/* 1A2B94 80390B14 00001021 */  addu       $v0, $zero, $zero
.L80390B18:
/* 1A2B98 80390B18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A2B9C 80390B1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A2BA0 80390B20 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A2BA4 80390B24 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2BA8 80390B28 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A2BAC 80390B2C 03E00008 */  jr         $ra
/* 1A2BB0 80390B30 00000000 */   nop

glabel func_80390B34_1A2BB4
/* 1A2BB4 80390B34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A2BB8 80390B38 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2BBC 80390B3C 00808021 */  addu       $s0, $a0, $zero
/* 1A2BC0 80390B40 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A2BC4 80390B44 92020022 */  lbu        $v0, 0x22($s0)
/* 1A2BC8 80390B48 00021080 */  sll        $v0, $v0, 2
/* 1A2BCC 80390B4C 3C04803A */  lui        $a0, %hi(D_8039E630)
/* 1A2BD0 80390B50 00822021 */  addu       $a0, $a0, $v0
/* 1A2BD4 80390B54 9484E630 */  lhu        $a0, %lo(D_8039E630)($a0)
/* 1A2BD8 80390B58 24050002 */  addiu      $a1, $zero, 2
/* 1A2BDC 80390B5C 0C028CB7 */  jal        func_800A32DC
/* 1A2BE0 80390B60 00003021 */   addu      $a2, $zero, $zero
/* 1A2BE4 80390B64 AE020000 */  sw         $v0, ($s0)
/* 1A2BE8 80390B68 8C43000C */  lw         $v1, 0xc($v0)
/* 1A2BEC 80390B6C 94650000 */  lhu        $a1, ($v1)
/* 1A2BF0 80390B70 94660002 */  lhu        $a2, 2($v1)
/* 1A2BF4 80390B74 00402021 */  addu       $a0, $v0, $zero
/* 1A2BF8 80390B78 00052842 */  srl        $a1, $a1, 1
/* 1A2BFC 80390B7C 0C02912A */  jal        func_800A44A8
/* 1A2C00 80390B80 00063042 */   srl       $a2, $a2, 1
/* 1A2C04 80390B84 24020002 */  addiu      $v0, $zero, 2
/* 1A2C08 80390B88 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A2C0C 80390B8C 8E040000 */  lw         $a0, ($s0)
/* 1A2C10 80390B90 240500FF */  addiu      $a1, $zero, 0xff
/* 1A2C14 80390B94 240600FF */  addiu      $a2, $zero, 0xff
/* 1A2C18 80390B98 0C028E41 */  jal        func_800A3904
/* 1A2C1C 80390B9C 240700FF */   addiu     $a3, $zero, 0xff
/* 1A2C20 80390BA0 92020022 */  lbu        $v0, 0x22($s0)
/* 1A2C24 80390BA4 00021080 */  sll        $v0, $v0, 2
/* 1A2C28 80390BA8 3C04803A */  lui        $a0, %hi(D_8039E630)
/* 1A2C2C 80390BAC 00822021 */  addu       $a0, $a0, $v0
/* 1A2C30 80390BB0 9484E630 */  lhu        $a0, %lo(D_8039E630)($a0)
/* 1A2C34 80390BB4 24050002 */  addiu      $a1, $zero, 2
/* 1A2C38 80390BB8 0C028CB7 */  jal        func_800A32DC
/* 1A2C3C 80390BBC 00003021 */   addu      $a2, $zero, $zero
/* 1A2C40 80390BC0 AE020004 */  sw         $v0, 4($s0)
/* 1A2C44 80390BC4 8C43000C */  lw         $v1, 0xc($v0)
/* 1A2C48 80390BC8 94650000 */  lhu        $a1, ($v1)
/* 1A2C4C 80390BCC 94660002 */  lhu        $a2, 2($v1)
/* 1A2C50 80390BD0 00402021 */  addu       $a0, $v0, $zero
/* 1A2C54 80390BD4 00052842 */  srl        $a1, $a1, 1
/* 1A2C58 80390BD8 0C02912A */  jal        func_800A44A8
/* 1A2C5C 80390BDC 00063042 */   srl       $a2, $a2, 1
/* 1A2C60 80390BE0 3C0141F0 */  lui        $at, 0x41f0
/* 1A2C64 80390BE4 44811000 */  mtc1       $at, $f2
/* 1A2C68 80390BE8 00000000 */  nop
/* 1A2C6C 80390BEC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2C70 80390BF0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2C74 80390BF4 46800020 */  cvt.s.w    $f0, $f0
/* 1A2C78 80390BF8 46001083 */  div.s      $f2, $f2, $f0
/* 1A2C7C 80390BFC 3C014364 */  lui        $at, 0x4364
/* 1A2C80 80390C00 44812000 */  mtc1       $at, $f4
/* 1A2C84 80390C04 00000000 */  nop
/* 1A2C88 80390C08 46022103 */  div.s      $f4, $f4, $f2
/* 1A2C8C 80390C0C 3C013F80 */  lui        $at, 0x3f80
/* 1A2C90 80390C10 44815000 */  mtc1       $at, $f10
/* 1A2C94 80390C14 00000000 */  nop
/* 1A2C98 80390C18 460A1000 */  add.s      $f0, $f2, $f10
/* 1A2C9C 80390C1C 46002187 */  neg.s      $f6, $f4
/* 1A2CA0 80390C20 46003183 */  div.s      $f6, $f6, $f0
/* 1A2CA4 80390C24 8E020004 */  lw         $v0, 4($s0)
/* 1A2CA8 80390C28 3C0142BC */  lui        $at, 0x42bc
/* 1A2CAC 80390C2C 44814000 */  mtc1       $at, $f8
/* 1A2CB0 80390C30 00000000 */  nop
/* 1A2CB4 80390C34 3C038015 */  lui        $v1, %hi(D_80149FA8)
/* 1A2CB8 80390C38 8C639FA8 */  lw         $v1, %lo(D_80149FA8)($v1)
/* 1A2CBC 80390C3C 8C420014 */  lw         $v0, 0x14($v0)
/* 1A2CC0 80390C40 3C01C280 */  lui        $at, 0xc280
/* 1A2CC4 80390C44 44810000 */  mtc1       $at, $f0
/* 1A2CC8 80390C48 00000000 */  nop
/* 1A2CCC 80390C4C A4400002 */  sh         $zero, 2($v0)
/* 1A2CD0 80390C50 E608000C */  swc1       $f8, 0xc($s0)
/* 1A2CD4 80390C54 E60A0018 */  swc1       $f10, 0x18($s0)
/* 1A2CD8 80390C58 AE00001C */  sw         $zero, 0x1c($s0)
/* 1A2CDC 80390C5C E6040010 */  swc1       $f4, 0x10($s0)
/* 1A2CE0 80390C60 E6000008 */  swc1       $f0, 8($s0)
/* 1A2CE4 80390C64 4600100D */  trunc.w.s  $f0, $f2
/* 1A2CE8 80390C68 44020000 */  mfc1       $v0, $f0
/* 1A2CEC 80390C6C 00000000 */  nop
/* 1A2CF0 80390C70 A6020020 */  sh         $v0, 0x20($s0)
/* 1A2CF4 80390C74 10600008 */  beqz       $v1, .L80390C98
/* 1A2CF8 80390C78 E6060014 */   swc1      $f6, 0x14($s0)
/* 1A2CFC 80390C7C 92020022 */  lbu        $v0, 0x22($s0)
/* 1A2D00 80390C80 00021080 */  sll        $v0, $v0, 2
/* 1A2D04 80390C84 3C04803A */  lui        $a0, %hi(D_8039E632_1B06B2)
/* 1A2D08 80390C88 00822021 */  addu       $a0, $a0, $v0
/* 1A2D0C 80390C8C 8484E632 */  lh         $a0, %lo(D_8039E632_1B06B2)($a0)
/* 1A2D10 80390C90 0C026DD5 */  jal        func_8009B754
/* 1A2D14 80390C94 00000000 */   nop
.L80390C98:
/* 1A2D18 80390C98 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A2D1C 80390C9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2D20 80390CA0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A2D24 80390CA4 03E00008 */  jr         $ra
/* 1A2D28 80390CA8 00000000 */   nop

glabel func_80390CAC_1A2D2C
/* 1A2D2C 80390CAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A2D30 80390CB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A2D34 80390CB4 00808021 */  addu       $s0, $a0, $zero
/* 1A2D38 80390CB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A2D3C 80390CBC 8E040000 */  lw         $a0, ($s0)
/* 1A2D40 80390CC0 0C028D30 */  jal        func_800A34C0
/* 1A2D44 80390CC4 00000000 */   nop
/* 1A2D48 80390CC8 8E040004 */  lw         $a0, 4($s0)
/* 1A2D4C 80390CCC 0C028D30 */  jal        func_800A34C0
/* 1A2D50 80390CD0 00000000 */   nop
/* 1A2D54 80390CD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A2D58 80390CD8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A2D5C 80390CDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A2D60 80390CE0 03E00008 */  jr         $ra
/* 1A2D64 80390CE4 00000000 */   nop

glabel func_80390CE8_1A2D68
/* 1A2D68 80390CE8 84820020 */  lh         $v0, 0x20($a0)
/* 1A2D6C 80390CEC 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1A2D70 80390CF0 14400003 */  bnez       $v0, .L80390D00
/* 1A2D74 80390CF4 00401821 */   addu      $v1, $v0, $zero
/* 1A2D78 80390CF8 080E434A */  j          .L80390D28
/* 1A2D7C 80390CFC 24020001 */   addiu     $v0, $zero, 1
.L80390D00:
/* 1A2D80 80390D00 C4820010 */  lwc1       $f2, 0x10($a0)
/* 1A2D84 80390D04 C4800014 */  lwc1       $f0, 0x14($a0)
/* 1A2D88 80390D08 46001080 */  add.s      $f2, $f2, $f0
/* 1A2D8C 80390D0C C4800008 */  lwc1       $f0, 8($a0)
/* 1A2D90 80390D10 2463FFFF */  addiu      $v1, $v1, -1
/* 1A2D94 80390D14 46020000 */  add.s      $f0, $f0, $f2
/* 1A2D98 80390D18 00001021 */  addu       $v0, $zero, $zero
/* 1A2D9C 80390D1C A4830020 */  sh         $v1, 0x20($a0)
/* 1A2DA0 80390D20 E4820010 */  swc1       $f2, 0x10($a0)
/* 1A2DA4 80390D24 E4800008 */  swc1       $f0, 8($a0)
.L80390D28:
/* 1A2DA8 80390D28 27BD0008 */  addiu      $sp, $sp, 8
/* 1A2DAC 80390D2C 03E00008 */  jr         $ra
/* 1A2DB0 80390D30 00000000 */   nop

glabel func_80390D34_1A2DB4
/* 1A2DB4 80390D34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A2DB8 80390D38 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2DBC 80390D3C 00808021 */  addu       $s0, $a0, $zero
/* 1A2DC0 80390D40 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A2DC4 80390D44 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1A2DC8 80390D48 86020020 */  lh         $v0, 0x20($s0)
/* 1A2DCC 80390D4C 10400040 */  beqz       $v0, .L80390E50
/* 1A2DD0 80390D50 00401821 */   addu      $v1, $v0, $zero
/* 1A2DD4 80390D54 3C014170 */  lui        $at, 0x4170
/* 1A2DD8 80390D58 44810000 */  mtc1       $at, $f0
/* 1A2DDC 80390D5C 00000000 */  nop
/* 1A2DE0 80390D60 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2DE4 80390D64 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A2DE8 80390D68 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2DEC 80390D6C 46020003 */  div.s      $f0, $f0, $f2
/* 1A2DF0 80390D70 3C013F80 */  lui        $at, 0x3f80
/* 1A2DF4 80390D74 44812000 */  mtc1       $at, $f4
/* 1A2DF8 80390D78 00000000 */  nop
/* 1A2DFC 80390D7C 46002003 */  div.s      $f0, $f4, $f0
/* 1A2E00 80390D80 C6020018 */  lwc1       $f2, 0x18($s0)
/* 1A2E04 80390D84 46001081 */  sub.s      $f2, $f2, $f0
/* 1A2E08 80390D88 2462FFFF */  addiu      $v0, $v1, -1
/* 1A2E0C 80390D8C 4602203C */  c.lt.s     $f4, $f2
/* 1A2E10 80390D90 00000000 */  nop
/* 1A2E14 80390D94 00000000 */  nop
/* 1A2E18 80390D98 A6020020 */  sh         $v0, 0x20($s0)
/* 1A2E1C 80390D9C 45000003 */  bc1f       .L80390DAC
/* 1A2E20 80390DA0 E6020018 */   swc1      $f2, 0x18($s0)
/* 1A2E24 80390DA4 080E4374 */  j          .L80390DD0
/* 1A2E28 80390DA8 E6040018 */   swc1      $f4, 0x18($s0)
.L80390DAC:
/* 1A2E2C 80390DAC 3C013D4C */  lui        $at, 0x3d4c
/* 1A2E30 80390DB0 3421CCCD */  ori        $at, $at, 0xcccd
/* 1A2E34 80390DB4 44810000 */  mtc1       $at, $f0
/* 1A2E38 80390DB8 00000000 */  nop
/* 1A2E3C 80390DBC 4600103C */  c.lt.s     $f2, $f0
/* 1A2E40 80390DC0 00000000 */  nop
/* 1A2E44 80390DC4 00000000 */  nop
/* 1A2E48 80390DC8 45030001 */  bc1tl      .L80390DD0
/* 1A2E4C 80390DCC E6000018 */   swc1      $f0, 0x18($s0)
.L80390DD0:
/* 1A2E50 80390DD0 3C014526 */  lui        $at, 0x4526
/* 1A2E54 80390DD4 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A2E58 80390DD8 44811000 */  mtc1       $at, $f2
/* 1A2E5C 80390DDC 00000000 */  nop
/* 1A2E60 80390DE0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2E64 80390DE4 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2E68 80390DE8 46800020 */  cvt.s.w    $f0, $f0
/* 1A2E6C 80390DEC 46020002 */  mul.s      $f0, $f0, $f2
/* 1A2E70 80390DF0 8E040000 */  lw         $a0, ($s0)
/* 1A2E74 80390DF4 3C013F80 */  lui        $at, 0x3f80
/* 1A2E78 80390DF8 4481A000 */  mtc1       $at, $f20
/* 1A2E7C 80390DFC 00000000 */  nop
/* 1A2E80 80390E00 C602001C */  lwc1       $f2, 0x1c($s0)
/* 1A2E84 80390E04 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2E88 80390E08 46001080 */  add.s      $f2, $f2, $f0
/* 1A2E8C 80390E0C 8E070018 */  lw         $a3, 0x18($s0)
/* 1A2E90 80390E10 4406A000 */  mfc1       $a2, $f20
/* 1A2E94 80390E14 00000000 */  nop
/* 1A2E98 80390E18 4600100D */  trunc.w.s  $f0, $f2
/* 1A2E9C 80390E1C 44050000 */  mfc1       $a1, $f0
/* 1A2EA0 80390E20 00000000 */  nop
/* 1A2EA4 80390E24 0C02915B */  jal        func_800A456C
/* 1A2EA8 80390E28 AE05001C */   sw        $a1, 0x1c($s0)
/* 1A2EAC 80390E2C 8E040004 */  lw         $a0, 4($s0)
/* 1A2EB0 80390E30 8E05001C */  lw         $a1, 0x1c($s0)
/* 1A2EB4 80390E34 8E070018 */  lw         $a3, 0x18($s0)
/* 1A2EB8 80390E38 4406A000 */  mfc1       $a2, $f20
/* 1A2EBC 80390E3C 00000000 */  nop
/* 1A2EC0 80390E40 0C02915B */  jal        func_800A456C
/* 1A2EC4 80390E44 00000000 */   nop
/* 1A2EC8 80390E48 080E4396 */  j          .L80390E58
/* 1A2ECC 80390E4C 00001021 */   addu      $v0, $zero, $zero
.L80390E50:
/* 1A2ED0 80390E50 AE000018 */  sw         $zero, 0x18($s0)
/* 1A2ED4 80390E54 24020001 */  addiu      $v0, $zero, 1
.L80390E58:
/* 1A2ED8 80390E58 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A2EDC 80390E5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2EE0 80390E60 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1A2EE4 80390E64 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A2EE8 80390E68 03E00008 */  jr         $ra
/* 1A2EEC 80390E6C 00000000 */   nop

glabel func_80390E70_1A2EF0
/* 1A2EF0 80390E70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A2EF4 80390E74 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A2EF8 80390E78 00808021 */  addu       $s0, $a0, $zero
/* 1A2EFC 80390E7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A2F00 80390E80 C6000008 */  lwc1       $f0, 8($s0)
/* 1A2F04 80390E84 8E040000 */  lw         $a0, ($s0)
/* 1A2F08 80390E88 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F0C 80390E8C 44051000 */  mfc1       $a1, $f2
/* 1A2F10 80390E90 00000000 */  nop
/* 1A2F14 80390E94 C600000C */  lwc1       $f0, 0xc($s0)
/* 1A2F18 80390E98 00052C80 */  sll        $a1, $a1, 0x12
/* 1A2F1C 80390E9C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A2F20 80390EA0 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F24 80390EA4 44061000 */  mfc1       $a2, $f2
/* 1A2F28 80390EA8 00000000 */  nop
/* 1A2F2C 80390EAC 00063480 */  sll        $a2, $a2, 0x12
/* 1A2F30 80390EB0 0C028D89 */  jal        func_800A3624
/* 1A2F34 80390EB4 00063403 */   sra       $a2, $a2, 0x10
/* 1A2F38 80390EB8 C6000008 */  lwc1       $f0, 8($s0)
/* 1A2F3C 80390EBC 8E040004 */  lw         $a0, 4($s0)
/* 1A2F40 80390EC0 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F44 80390EC4 44051000 */  mfc1       $a1, $f2
/* 1A2F48 80390EC8 00000000 */  nop
/* 1A2F4C 80390ECC C600000C */  lwc1       $f0, 0xc($s0)
/* 1A2F50 80390ED0 00052C80 */  sll        $a1, $a1, 0x12
/* 1A2F54 80390ED4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A2F58 80390ED8 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F5C 80390EDC 44061000 */  mfc1       $a2, $f2
/* 1A2F60 80390EE0 00000000 */  nop
/* 1A2F64 80390EE4 00063480 */  sll        $a2, $a2, 0x12
/* 1A2F68 80390EE8 0C028D89 */  jal        func_800A3624
/* 1A2F6C 80390EEC 00063403 */   sra       $a2, $a2, 0x10
/* 1A2F70 80390EF0 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A2F74 80390EF4 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A2F78 80390EF8 1040000E */  beqz       $v0, .L80390F34
/* 1A2F7C 80390EFC 00000000 */   nop
/* 1A2F80 80390F00 C6020018 */  lwc1       $f2, 0x18($s0)
/* 1A2F84 80390F04 44800000 */  mtc1       $zero, $f0
/* 1A2F88 80390F08 00000000 */  nop
/* 1A2F8C 80390F0C 4602003C */  c.lt.s     $f0, $f2
/* 1A2F90 80390F10 00000000 */  nop
/* 1A2F94 80390F14 45000007 */  bc1f       .L80390F34
/* 1A2F98 80390F18 00000000 */   nop
/* 1A2F9C 80390F1C 8E040000 */  lw         $a0, ($s0)
/* 1A2FA0 80390F20 0C028A40 */  jal        func_800A2900
/* 1A2FA4 80390F24 00000000 */   nop
/* 1A2FA8 80390F28 8E040004 */  lw         $a0, 4($s0)
/* 1A2FAC 80390F2C 0C028A40 */  jal        func_800A2900
/* 1A2FB0 80390F30 00000000 */   nop
.L80390F34:
/* 1A2FB4 80390F34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A2FB8 80390F38 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A2FBC 80390F3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A2FC0 80390F40 03E00008 */  jr         $ra
/* 1A2FC4 80390F44 00000000 */   nop
/* 1A2FC8 80390F48 00000000 */  nop
/* 1A2FCC 80390F4C 00000000 */  nop

glabel func_80390F50_1A2FD0
/* 1A2FD0 80390F50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A2FD4 80390F54 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A2FD8 80390F58 00808021 */  addu       $s0, $a0, $zero
/* 1A2FDC 80390F5C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A2FE0 80390F60 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A2FE4 80390F64 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A2FE8 80390F68 8E110014 */  lw         $s1, 0x14($s0)
/* 1A2FEC 80390F6C 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A2FF0 80390F70 8E12000C */  lw         $s2, 0xc($s0)
/* 1A2FF4 80390F74 24020001 */  addiu      $v0, $zero, 1
/* 1A2FF8 80390F78 1062001D */  beq        $v1, $v0, .L80390FF0
/* 1A2FFC 80390F7C 28620002 */   slti      $v0, $v1, 2
/* 1A3000 80390F80 50400005 */  beql       $v0, $zero, .L80390F98
/* 1A3004 80390F84 24020002 */   addiu     $v0, $zero, 2
/* 1A3008 80390F88 10600009 */  beqz       $v1, .L80390FB0
/* 1A300C 80390F8C 00001021 */   addu      $v0, $zero, $zero
/* 1A3010 80390F90 080E4418 */  j          .L80391060
/* 1A3014 80390F94 00000000 */   nop
.L80390F98:
/* 1A3018 80390F98 10620020 */  beq        $v1, $v0, .L8039101C
/* 1A301C 80390F9C 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A3020 80390FA0 10620027 */  beq        $v1, $v0, .L80391040
/* 1A3024 80390FA4 00001021 */   addu      $v0, $zero, $zero
/* 1A3028 80390FA8 080E4418 */  j          .L80391060
/* 1A302C 80390FAC 00000000 */   nop
.L80390FB0:
/* 1A3030 80390FB0 0C032663 */  jal        func_800C998C
/* 1A3034 80390FB4 24040074 */   addiu     $a0, $zero, 0x74
/* 1A3038 80390FB8 00402021 */  addu       $a0, $v0, $zero
/* 1A303C 80390FBC 24050074 */  addiu      $a1, $zero, 0x74
/* 1A3040 80390FC0 0C030134 */  jal        bzero
/* 1A3044 80390FC4 AE040014 */   sw        $a0, 0x14($s0)
/* 1A3048 80390FC8 8E110014 */  lw         $s1, 0x14($s0)
/* 1A304C 80390FCC 0C025C53 */  jal        func_8009714C
/* 1A3050 80390FD0 02402021 */   addu      $a0, $s2, $zero
/* 1A3054 80390FD4 02202021 */  addu       $a0, $s1, $zero
/* 1A3058 80390FD8 0C0E441F */  jal        func_8039107C_1A30FC
/* 1A305C 80390FDC A4820050 */   sh        $v0, 0x50($a0)
/* 1A3060 80390FE0 00001021 */  addu       $v0, $zero, $zero
/* 1A3064 80390FE4 24030001 */  addiu      $v1, $zero, 1
/* 1A3068 80390FE8 080E4418 */  j          .L80391060
/* 1A306C 80390FEC A603001C */   sh        $v1, 0x1c($s0)
.L80390FF0:
/* 1A3070 80390FF0 0C025C53 */  jal        func_8009714C
/* 1A3074 80390FF4 02402021 */   addu      $a0, $s2, $zero
/* 1A3078 80390FF8 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A307C 80390FFC 14430003 */  bne        $v0, $v1, .L8039100C
/* 1A3080 80391000 3402FFFF */   ori       $v0, $zero, 0xffff
.L80391004:
/* 1A3084 80391004 080E4417 */  j          .L8039105C
/* 1A3088 80391008 A602001C */   sh        $v0, 0x1c($s0)
.L8039100C:
/* 1A308C 8039100C 0C0E4527 */  jal        func_8039149C_1A351C
/* 1A3090 80391010 02202021 */   addu      $a0, $s1, $zero
/* 1A3094 80391014 080E4418 */  j          .L80391060
/* 1A3098 80391018 00001021 */   addu      $v0, $zero, $zero
.L8039101C:
/* 1A309C 8039101C 0C025C53 */  jal        func_8009714C
/* 1A30A0 80391020 02402021 */   addu      $a0, $s2, $zero
/* 1A30A4 80391024 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A30A8 80391028 1043FFF6 */  beq        $v0, $v1, .L80391004
/* 1A30AC 8039102C 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A30B0 80391030 0C0E46CB */  jal        func_80391B2C_1A3BAC
/* 1A30B4 80391034 02202021 */   addu      $a0, $s1, $zero
/* 1A30B8 80391038 080E4403 */  j          .L8039100C
/* 1A30BC 8039103C 00000000 */   nop
.L80391040:
/* 1A30C0 80391040 0C0E44F6 */  jal        func_803913D8_1A3458
/* 1A30C4 80391044 02202021 */   addu      $a0, $s1, $zero
/* 1A30C8 80391048 8E040014 */  lw         $a0, 0x14($s0)
/* 1A30CC 8039104C 0C0326A1 */  jal        func_800C9A84
/* 1A30D0 80391050 00000000 */   nop
/* 1A30D4 80391054 080E4418 */  j          .L80391060
/* 1A30D8 80391058 24020001 */   addiu     $v0, $zero, 1
.L8039105C:
/* 1A30DC 8039105C 00001021 */  addu       $v0, $zero, $zero
.L80391060:
/* 1A30E0 80391060 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A30E4 80391064 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A30E8 80391068 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A30EC 8039106C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A30F0 80391070 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A30F4 80391074 03E00008 */  jr         $ra
/* 1A30F8 80391078 00000000 */   nop

glabel func_8039107C_1A30FC
/* 1A30FC 8039107C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1A3100 80391080 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A3104 80391084 00808821 */  addu       $s1, $a0, $zero
/* 1A3108 80391088 24040545 */  addiu      $a0, $zero, 0x545
/* 1A310C 8039108C AFBF0028 */  sw         $ra, 0x28($sp)
/* 1A3110 80391090 AFB30024 */  sw         $s3, 0x24($sp)
/* 1A3114 80391094 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A3118 80391098 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A311C 8039109C 86230050 */  lh         $v1, 0x50($s1)
/* 1A3120 803910A0 24050001 */  addiu      $a1, $zero, 1
/* 1A3124 803910A4 00003021 */  addu       $a2, $zero, $zero
/* 1A3128 803910A8 00031040 */  sll        $v0, $v1, 1
/* 1A312C 803910AC 00431021 */  addu       $v0, $v0, $v1
/* 1A3130 803910B0 00021040 */  sll        $v0, $v0, 1
/* 1A3134 803910B4 3C03803A */  lui        $v1, %hi(D_8039E640_1B06C0)
/* 1A3138 803910B8 2463E640 */  addiu      $v1, $v1, %lo(D_8039E640_1B06C0)
/* 1A313C 803910BC 0C028CB7 */  jal        func_800A32DC
/* 1A3140 803910C0 00439821 */   addu      $s3, $v0, $v1
/* 1A3144 803910C4 24040545 */  addiu      $a0, $zero, 0x545
/* 1A3148 803910C8 2405039D */  addiu      $a1, $zero, 0x39d
/* 1A314C 803910CC 24060001 */  addiu      $a2, $zero, 1
/* 1A3150 803910D0 00003821 */  addu       $a3, $zero, $zero
/* 1A3154 803910D4 0C028CC9 */  jal        func_800A3324
/* 1A3158 803910D8 AE220000 */   sw        $v0, ($s1)
/* 1A315C 803910DC AE220004 */  sw         $v0, 4($s1)
/* 1A3160 803910E0 82620004 */  lb         $v0, 4($s3)
/* 1A3164 803910E4 14400006 */  bnez       $v0, .L80391100
/* 1A3168 803910E8 24040546 */   addiu     $a0, $zero, 0x546
/* 1A316C 803910EC 24050002 */  addiu      $a1, $zero, 2
/* 1A3170 803910F0 0C028CB7 */  jal        func_800A32DC
/* 1A3174 803910F4 00003021 */   addu      $a2, $zero, $zero
/* 1A3178 803910F8 080E4445 */  j          .L80391114
/* 1A317C 803910FC AE220008 */   sw        $v0, 8($s1)
.L80391100:
/* 1A3180 80391100 2405039B */  addiu      $a1, $zero, 0x39b
/* 1A3184 80391104 24060002 */  addiu      $a2, $zero, 2
/* 1A3188 80391108 0C028CC9 */  jal        func_800A3324
/* 1A318C 8039110C 00003821 */   addu      $a3, $zero, $zero
/* 1A3190 80391110 AE220008 */  sw         $v0, 8($s1)
.L80391114:
/* 1A3194 80391114 96640000 */  lhu        $a0, ($s3)
/* 1A3198 80391118 00002821 */  addu       $a1, $zero, $zero
/* 1A319C 8039111C 00003021 */  addu       $a2, $zero, $zero
/* 1A31A0 80391120 00009021 */  addu       $s2, $zero, $zero
/* 1A31A4 80391124 0C028CB7 */  jal        func_800A32DC
/* 1A31A8 80391128 02208021 */   addu      $s0, $s1, $zero
/* 1A31AC 8039112C AE22000C */  sw         $v0, 0xc($s1)
/* 1A31B0 80391130 96640002 */  lhu        $a0, 2($s3)
/* 1A31B4 80391134 24050001 */  addiu      $a1, $zero, 1
/* 1A31B8 80391138 0C028CB7 */  jal        func_800A32DC
/* 1A31BC 8039113C 00003021 */   addu      $a2, $zero, $zero
/* 1A31C0 80391140 AE220010 */  sw         $v0, 0x10($s1)
.L80391144:
/* 1A31C4 80391144 0C029375 */  jal        func_800A4DD4
/* 1A31C8 80391148 26520001 */   addiu     $s2, $s2, 1
/* 1A31CC 8039114C AE020014 */  sw         $v0, 0x14($s0)
/* 1A31D0 80391150 2A420003 */  slti       $v0, $s2, 3
/* 1A31D4 80391154 1440FFFB */  bnez       $v0, .L80391144
/* 1A31D8 80391158 26100004 */   addiu     $s0, $s0, 4
/* 1A31DC 8039115C 241000E0 */  addiu      $s0, $zero, 0xe0
/* 1A31E0 80391160 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A31E4 80391164 8E240014 */  lw         $a0, 0x14($s1)
/* 1A31E8 80391168 24050010 */  addiu      $a1, $zero, 0x10
/* 1A31EC 8039116C 24060010 */  addiu      $a2, $zero, 0x10
/* 1A31F0 80391170 0C02939C */  jal        func_800A4E70
/* 1A31F4 80391174 24070130 */   addiu     $a3, $zero, 0x130
/* 1A31F8 80391178 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A31FC 8039117C 8E24001C */  lw         $a0, 0x1c($s1)
/* 1A3200 80391180 24050010 */  addiu      $a1, $zero, 0x10
/* 1A3204 80391184 24060010 */  addiu      $a2, $zero, 0x10
/* 1A3208 80391188 0C02939C */  jal        func_800A4E70
/* 1A320C 8039118C 24070130 */   addiu     $a3, $zero, 0x130
/* 1A3210 80391190 8E230008 */  lw         $v1, 8($s1)
/* 1A3214 80391194 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A3218 80391198 34420044 */  ori        $v0, $v0, 0x44
/* 1A321C 8039119C A462001E */  sh         $v0, 0x1e($v1)
/* 1A3220 803911A0 82620004 */  lb         $v0, 4($s3)
/* 1A3224 803911A4 10400004 */  beqz       $v0, .L803911B8
/* 1A3228 803911A8 00002821 */   addu      $a1, $zero, $zero
/* 1A322C 803911AC 8E240008 */  lw         $a0, 8($s1)
/* 1A3230 803911B0 080E4470 */  j          .L803911C0
/* 1A3234 803911B4 2406000B */   addiu     $a2, $zero, 0xb
.L803911B8:
/* 1A3238 803911B8 8E240008 */  lw         $a0, 8($s1)
/* 1A323C 803911BC 2406000C */  addiu      $a2, $zero, 0xc
.L803911C0:
/* 1A3240 803911C0 0C02912A */  jal        func_800A44A8
/* 1A3244 803911C4 241000CC */   addiu     $s0, $zero, 0xcc
/* 1A3248 803911C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A324C 803911CC 8E240000 */  lw         $a0, ($s1)
/* 1A3250 803911D0 240500FF */  addiu      $a1, $zero, 0xff
/* 1A3254 803911D4 240600FF */  addiu      $a2, $zero, 0xff
/* 1A3258 803911D8 0C028E41 */  jal        func_800A3904
/* 1A325C 803911DC 240700FF */   addiu     $a3, $zero, 0xff
/* 1A3260 803911E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A3264 803911E4 8E240004 */  lw         $a0, 4($s1)
/* 1A3268 803911E8 240500FF */  addiu      $a1, $zero, 0xff
/* 1A326C 803911EC 240600FF */  addiu      $a2, $zero, 0xff
/* 1A3270 803911F0 0C028E41 */  jal        func_800A3904
/* 1A3274 803911F4 240700FF */   addiu     $a3, $zero, 0xff
/* 1A3278 803911F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A327C 803911FC 8E240008 */  lw         $a0, 8($s1)
/* 1A3280 80391200 240500FF */  addiu      $a1, $zero, 0xff
/* 1A3284 80391204 240600FF */  addiu      $a2, $zero, 0xff
/* 1A3288 80391208 0C028E41 */  jal        func_800A3904
/* 1A328C 8039120C 240700FF */   addiu     $a3, $zero, 0xff
/* 1A3290 80391210 82620004 */  lb         $v0, 4($s3)
/* 1A3294 80391214 10400007 */  beqz       $v0, .L80391234
/* 1A3298 80391218 24030001 */   addiu     $v1, $zero, 1
/* 1A329C 8039121C 8E220000 */  lw         $v0, ($s1)
/* 1A32A0 80391220 8C420000 */  lw         $v0, ($v0)
/* 1A32A4 80391224 A043002F */  sb         $v1, 0x2f($v0)
/* 1A32A8 80391228 8E220004 */  lw         $v0, 4($s1)
/* 1A32AC 8039122C 8C420000 */  lw         $v0, ($v0)
/* 1A32B0 80391230 A043002F */  sb         $v1, 0x2f($v0)
.L80391234:
/* 1A32B4 80391234 24040399 */  addiu      $a0, $zero, 0x399
/* 1A32B8 80391238 00002821 */  addu       $a1, $zero, $zero
/* 1A32BC 8039123C 0C0298D4 */  jal        func_800A6350
/* 1A32C0 80391240 AE200020 */   sw        $zero, 0x20($s1)
/* 1A32C4 80391244 2404039C */  addiu      $a0, $zero, 0x39c
/* 1A32C8 80391248 00002821 */  addu       $a1, $zero, $zero
/* 1A32CC 8039124C 0C0298D4 */  jal        func_800A6350
/* 1A32D0 80391250 AE220024 */   sw        $v0, 0x24($s1)
/* 1A32D4 80391254 8E230010 */  lw         $v1, 0x10($s1)
/* 1A32D8 80391258 AE220028 */  sw         $v0, 0x28($s1)
/* 1A32DC 8039125C 8C640014 */  lw         $a0, 0x14($v1)
/* 1A32E0 80391260 2405000F */  addiu      $a1, $zero, 0xf
/* 1A32E4 80391264 24060001 */  addiu      $a2, $zero, 1
/* 1A32E8 80391268 0C0298EE */  jal        func_800A63B8
/* 1A32EC 8039126C 24840002 */   addiu     $a0, $a0, 2
/* 1A32F0 80391270 2404003C */  addiu      $a0, $zero, 0x3c
/* 1A32F4 80391274 0C02591A */  jal        func_80096468
/* 1A32F8 80391278 AE22002C */   sw        $v0, 0x2c($s1)
/* 1A32FC 8039127C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1A3300 80391280 3C014040 */  lui        $at, 0x4040
/* 1A3304 80391284 44811000 */  mtc1       $at, $f2
/* 1A3308 80391288 00000000 */  nop
/* 1A330C 8039128C 2442000F */  addiu      $v0, $v0, 0xf
/* 1A3310 80391290 44820000 */  mtc1       $v0, $f0
/* 1A3314 80391294 00000000 */  nop
/* 1A3318 80391298 46800020 */  cvt.s.w    $f0, $f0
/* 1A331C 8039129C 46020002 */  mul.s      $f0, $f0, $f2
/* 1A3320 803912A0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3324 803912A4 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A3328 803912A8 468010A0 */  cvt.s.w    $f2, $f2
/* 1A332C 803912AC 46020003 */  div.s      $f0, $f0, $f2
/* 1A3330 803912B0 E6200030 */  swc1       $f0, 0x30($s1)
/* 1A3334 803912B4 82620004 */  lb         $v0, 4($s3)
/* 1A3338 803912B8 1040001B */  beqz       $v0, .L80391328
/* 1A333C 803912BC 2402FFF2 */   addiu     $v0, $zero, -0xe
/* 1A3340 803912C0 3C014370 */  lui        $at, 0x4370
/* 1A3344 803912C4 44810000 */  mtc1       $at, $f0
/* 1A3348 803912C8 00000000 */  nop
/* 1A334C 803912CC 3C014180 */  lui        $at, 0x4180
/* 1A3350 803912D0 44811000 */  mtc1       $at, $f2
/* 1A3354 803912D4 00000000 */  nop
/* 1A3358 803912D8 A622003C */  sh         $v0, 0x3c($s1)
/* 1A335C 803912DC 2402FFFE */  addiu      $v0, $zero, -2
/* 1A3360 803912E0 2403003E */  addiu      $v1, $zero, 0x3e
/* 1A3364 803912E4 A622003E */  sh         $v0, 0x3e($s1)
/* 1A3368 803912E8 2402000B */  addiu      $v0, $zero, 0xb
/* 1A336C 803912EC A6220042 */  sh         $v0, 0x42($s1)
/* 1A3370 803912F0 24020022 */  addiu      $v0, $zero, 0x22
/* 1A3374 803912F4 A6220044 */  sh         $v0, 0x44($s1)
/* 1A3378 803912F8 24020017 */  addiu      $v0, $zero, 0x17
/* 1A337C 803912FC A6220046 */  sh         $v0, 0x46($s1)
/* 1A3380 80391300 24020001 */  addiu      $v0, $zero, 1
/* 1A3384 80391304 A6220048 */  sh         $v0, 0x48($s1)
/* 1A3388 80391308 A622004A */  sh         $v0, 0x4a($s1)
/* 1A338C 8039130C 24020015 */  addiu      $v0, $zero, 0x15
/* 1A3390 80391310 A6230040 */  sh         $v1, 0x40($s1)
/* 1A3394 80391314 A623004C */  sh         $v1, 0x4c($s1)
/* 1A3398 80391318 A622004E */  sh         $v0, 0x4e($s1)
/* 1A339C 8039131C E6200034 */  swc1       $f0, 0x34($s1)
/* 1A33A0 80391320 080E44E0 */  j          .L80391380
/* 1A33A4 80391324 E6220038 */   swc1      $f2, 0x38($s1)
.L80391328:
/* 1A33A8 80391328 3C014180 */  lui        $at, 0x4180
/* 1A33AC 8039132C 44810000 */  mtc1       $at, $f0
/* 1A33B0 80391330 00000000 */  nop
/* 1A33B4 80391334 2403FFFD */  addiu      $v1, $zero, -3
/* 1A33B8 80391338 2402FFFE */  addiu      $v0, $zero, -2
/* 1A33BC 8039133C A622003E */  sh         $v0, 0x3e($s1)
/* 1A33C0 80391340 2402000B */  addiu      $v0, $zero, 0xb
/* 1A33C4 80391344 A6220042 */  sh         $v0, 0x42($s1)
/* 1A33C8 80391348 24020017 */  addiu      $v0, $zero, 0x17
/* 1A33CC 8039134C A6220046 */  sh         $v0, 0x46($s1)
/* 1A33D0 80391350 24020001 */  addiu      $v0, $zero, 1
/* 1A33D4 80391354 A6220048 */  sh         $v0, 0x48($s1)
/* 1A33D8 80391358 A622004A */  sh         $v0, 0x4a($s1)
/* 1A33DC 8039135C 2402003E */  addiu      $v0, $zero, 0x3e
/* 1A33E0 80391360 A622004C */  sh         $v0, 0x4c($s1)
/* 1A33E4 80391364 24020015 */  addiu      $v0, $zero, 0x15
/* 1A33E8 80391368 A623003C */  sh         $v1, 0x3c($s1)
/* 1A33EC 8039136C A6200040 */  sh         $zero, 0x40($s1)
/* 1A33F0 80391370 A6230044 */  sh         $v1, 0x44($s1)
/* 1A33F4 80391374 A622004E */  sh         $v0, 0x4e($s1)
/* 1A33F8 80391378 E6200034 */  swc1       $f0, 0x34($s1)
/* 1A33FC 8039137C E6200038 */  swc1       $f0, 0x38($s1)
.L80391380:
/* 1A3400 80391380 3C0142C8 */  lui        $at, 0x42c8
/* 1A3404 80391384 44810000 */  mtc1       $at, $f0
/* 1A3408 80391388 00000000 */  nop
/* 1A340C 8039138C 3C014220 */  lui        $at, 0x4220
/* 1A3410 80391390 44811000 */  mtc1       $at, $f2
/* 1A3414 80391394 00000000 */  nop
/* 1A3418 80391398 AE20005C */  sw         $zero, 0x5c($s1)
/* 1A341C 8039139C A2200060 */  sb         $zero, 0x60($s1)
/* 1A3420 803913A0 A2200061 */  sb         $zero, 0x61($s1)
/* 1A3424 803913A4 AE200064 */  sw         $zero, 0x64($s1)
/* 1A3428 803913A8 A220006C */  sb         $zero, 0x6c($s1)
/* 1A342C 803913AC E6200054 */  swc1       $f0, 0x54($s1)
/* 1A3430 803913B0 E6200058 */  swc1       $f0, 0x58($s1)
/* 1A3434 803913B4 E6220068 */  swc1       $f2, 0x68($s1)
/* 1A3438 803913B8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1A343C 803913BC 8FB30024 */  lw         $s3, 0x24($sp)
/* 1A3440 803913C0 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A3444 803913C4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A3448 803913C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A344C 803913CC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1A3450 803913D0 03E00008 */  jr         $ra
/* 1A3454 803913D4 00000000 */   nop

glabel func_803913D8_1A3458
/* 1A3458 803913D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A345C 803913DC AFB20018 */  sw         $s2, 0x18($sp)
/* 1A3460 803913E0 00809021 */  addu       $s2, $a0, $zero
/* 1A3464 803913E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A3468 803913E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A346C 803913EC AFB00010 */  sw         $s0, 0x10($sp)
/* 1A3470 803913F0 8E440000 */  lw         $a0, ($s2)
/* 1A3474 803913F4 0C028D30 */  jal        func_800A34C0
/* 1A3478 803913F8 00008821 */   addu      $s1, $zero, $zero
/* 1A347C 803913FC 8E440004 */  lw         $a0, 4($s2)
/* 1A3480 80391400 0C028D30 */  jal        func_800A34C0
/* 1A3484 80391404 02408021 */   addu      $s0, $s2, $zero
/* 1A3488 80391408 8E440008 */  lw         $a0, 8($s2)
/* 1A348C 8039140C 0C028D30 */  jal        func_800A34C0
/* 1A3490 80391410 00000000 */   nop
/* 1A3494 80391414 8E44000C */  lw         $a0, 0xc($s2)
/* 1A3498 80391418 0C028D30 */  jal        func_800A34C0
/* 1A349C 8039141C 00000000 */   nop
/* 1A34A0 80391420 8E440010 */  lw         $a0, 0x10($s2)
/* 1A34A4 80391424 0C028D30 */  jal        func_800A34C0
/* 1A34A8 80391428 00000000 */   nop
.L8039142C:
/* 1A34AC 8039142C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A34B0 80391430 26100004 */  addiu      $s0, $s0, 4
/* 1A34B4 80391434 0C029393 */  jal        func_800A4E4C
/* 1A34B8 80391438 26310001 */   addiu     $s1, $s1, 1
/* 1A34BC 8039143C 2A220003 */  slti       $v0, $s1, 3
/* 1A34C0 80391440 1440FFFA */  bnez       $v0, .L8039142C
/* 1A34C4 80391444 00000000 */   nop
/* 1A34C8 80391448 8E440020 */  lw         $a0, 0x20($s2)
/* 1A34CC 8039144C 10800003 */  beqz       $a0, .L8039145C
/* 1A34D0 80391450 00000000 */   nop
/* 1A34D4 80391454 0C025D58 */  jal        func_80097560
/* 1A34D8 80391458 00000000 */   nop
.L8039145C:
/* 1A34DC 8039145C 8E440024 */  lw         $a0, 0x24($s2)
/* 1A34E0 80391460 0C0326A1 */  jal        func_800C9A84
/* 1A34E4 80391464 00000000 */   nop
/* 1A34E8 80391468 8E440028 */  lw         $a0, 0x28($s2)
/* 1A34EC 8039146C 0C0326A1 */  jal        func_800C9A84
/* 1A34F0 80391470 00000000 */   nop
/* 1A34F4 80391474 8E44002C */  lw         $a0, 0x2c($s2)
/* 1A34F8 80391478 0C029903 */  jal        func_800A640C
/* 1A34FC 8039147C 00000000 */   nop
/* 1A3500 80391480 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A3504 80391484 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A3508 80391488 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A350C 8039148C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A3510 80391490 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A3514 80391494 03E00008 */  jr         $ra
/* 1A3518 80391498 00000000 */   nop

glabel func_8039149C_1A351C
/* 1A351C 8039149C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A3520 803914A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A3524 803914A4 00808021 */  addu       $s0, $a0, $zero
/* 1A3528 803914A8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1A352C 803914AC AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A3530 803914B0 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 1A3534 803914B4 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 1A3538 803914B8 C6060054 */  lwc1       $f6, 0x54($s0)
/* 1A353C 803914BC 3C014000 */  lui        $at, 0x4000
/* 1A3540 803914C0 44812000 */  mtc1       $at, $f4
/* 1A3544 803914C4 00000000 */  nop
/* 1A3548 803914C8 46043103 */  div.s      $f4, $f6, $f4
/* 1A354C 803914CC 3C013FAA */  lui        $at, 0x3faa
/* 1A3550 803914D0 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A3554 803914D4 44810000 */  mtc1       $at, $f0
/* 1A3558 803914D8 00000000 */  nop
/* 1A355C 803914DC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3560 803914E0 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A3564 803914E4 468010A0 */  cvt.s.w    $f2, $f2
/* 1A3568 803914E8 46001082 */  mul.s      $f2, $f2, $f0
/* 1A356C 803914EC 3C0142C8 */  lui        $at, 0x42c8
/* 1A3570 803914F0 44814000 */  mtc1       $at, $f8
/* 1A3574 803914F4 00000000 */  nop
/* 1A3578 803914F8 3C014336 */  lui        $at, 0x4336
/* 1A357C 803914FC 44810000 */  mtc1       $at, $f0
/* 1A3580 80391500 00000000 */  nop
/* 1A3584 80391504 46083583 */  div.s      $f22, $f6, $f8
/* 1A3588 80391508 00000000 */  nop
/* 1A358C 8039150C 46001082 */  mul.s      $f2, $f2, $f0
/* 1A3590 80391510 C600005C */  lwc1       $f0, 0x5c($s0)
/* 1A3594 80391514 46800020 */  cvt.s.w    $f0, $f0
/* 1A3598 80391518 46020000 */  add.s      $f0, $f0, $f2
/* 1A359C 8039151C 86030050 */  lh         $v1, 0x50($s0)
/* 1A35A0 80391520 4600008D */  trunc.w.s  $f2, $f0
/* 1A35A4 80391524 44041000 */  mfc1       $a0, $f2
/* 1A35A8 80391528 00000000 */  nop
/* 1A35AC 8039152C 00031040 */  sll        $v0, $v1, 1
/* 1A35B0 80391530 00431021 */  addu       $v0, $v0, $v1
/* 1A35B4 80391534 3C0142DC */  lui        $at, 0x42dc
/* 1A35B8 80391538 44810000 */  mtc1       $at, $f0
/* 1A35BC 8039153C 00000000 */  nop
/* 1A35C0 80391540 00021040 */  sll        $v0, $v0, 1
/* 1A35C4 80391544 3C03803A */  lui        $v1, %hi(D_8039E640_1B06C0)
/* 1A35C8 80391548 2463E640 */  addiu      $v1, $v1, %lo(D_8039E640_1B06C0)
/* 1A35CC 8039154C 00438821 */  addu       $s1, $v0, $v1
/* 1A35D0 80391550 46040001 */  sub.s      $f0, $f0, $f4
/* 1A35D4 80391554 3402FFFF */  ori        $v0, $zero, 0xffff
/* 1A35D8 80391558 0044102A */  slt        $v0, $v0, $a0
/* 1A35DC 8039155C AE04005C */  sw         $a0, 0x5c($s0)
/* 1A35E0 80391560 10400003 */  beqz       $v0, .L80391570
/* 1A35E4 80391564 46080503 */   div.s     $f20, $f0, $f8
/* 1A35E8 80391568 080E455E */  j          .L80391578
/* 1A35EC 8039156C 3C02FFFF */   lui       $v0, 0xffff
.L80391570:
/* 1A35F0 80391570 04810003 */  bgez       $a0, .L80391580
/* 1A35F4 80391574 3C020001 */   lui       $v0, 1
.L80391578:
/* 1A35F8 80391578 00821021 */  addu       $v0, $a0, $v0
/* 1A35FC 8039157C AE02005C */  sw         $v0, 0x5c($s0)
.L80391580:
/* 1A3600 80391580 9604005E */  lhu        $a0, 0x5e($s0)
/* 1A3604 80391584 0C02FFD0 */  jal        func_800BFF40
/* 1A3608 80391588 00000000 */   nop
/* 1A360C 8039158C 00021400 */  sll        $v0, $v0, 0x10
/* 1A3610 80391590 3C014700 */  lui        $at, 0x4700
/* 1A3614 80391594 44811000 */  mtc1       $at, $f2
/* 1A3618 80391598 00000000 */  nop
/* 1A361C 8039159C 00021403 */  sra        $v0, $v0, 0x10
/* 1A3620 803915A0 44820000 */  mtc1       $v0, $f0
/* 1A3624 803915A4 00000000 */  nop
/* 1A3628 803915A8 46800020 */  cvt.s.w    $f0, $f0
/* 1A362C 803915AC 46020003 */  div.s      $f0, $f0, $f2
/* 1A3630 803915B0 82220004 */  lb         $v0, 4($s1)
/* 1A3634 803915B4 10400005 */  beqz       $v0, .L803915CC
/* 1A3638 803915B8 46000080 */   add.s     $f2, $f0, $f0
/* 1A363C 803915BC 3C014334 */  lui        $at, 0x4334
/* 1A3640 803915C0 44810000 */  mtc1       $at, $f0
/* 1A3644 803915C4 00000000 */  nop
/* 1A3648 803915C8 46001080 */  add.s      $f2, $f2, $f0
.L803915CC:
/* 1A364C 803915CC 3C014336 */  lui        $at, 0x4336
/* 1A3650 803915D0 44810000 */  mtc1       $at, $f0
/* 1A3654 803915D4 00000000 */  nop
/* 1A3658 803915D8 46001002 */  mul.s      $f0, $f2, $f0
/* 1A365C 803915DC 8E040008 */  lw         $a0, 8($s0)
/* 1A3660 803915E0 4406B000 */  mfc1       $a2, $f22
/* 1A3664 803915E4 00000000 */  nop
/* 1A3668 803915E8 4407A000 */  mfc1       $a3, $f20
/* 1A366C 803915EC 00000000 */  nop
/* 1A3670 803915F0 4600008D */  trunc.w.s  $f2, $f0
/* 1A3674 803915F4 44051000 */  mfc1       $a1, $f2
/* 1A3678 803915F8 00000000 */  nop
/* 1A367C 803915FC 0C02915B */  jal        func_800A456C
/* 1A3680 80391600 00000000 */   nop
/* 1A3684 80391604 C6020064 */  lwc1       $f2, 0x64($s0)
/* 1A3688 80391608 44800000 */  mtc1       $zero, $f0
/* 1A368C 8039160C 00000000 */  nop
/* 1A3690 80391610 46001032 */  c.eq.s     $f2, $f0
/* 1A3694 80391614 00000000 */  nop
/* 1A3698 80391618 45000057 */  bc1f       .L80391778
/* 1A369C 8039161C 00000000 */   nop
/* 1A36A0 80391620 92020061 */  lbu        $v0, 0x61($s0)
/* 1A36A4 80391624 10400029 */  beqz       $v0, .L803916CC
/* 1A36A8 80391628 00000000 */   nop
/* 1A36AC 8039162C 8E040020 */  lw         $a0, 0x20($s0)
/* 1A36B0 80391630 10800003 */  beqz       $a0, .L80391640
/* 1A36B4 80391634 00000000 */   nop
/* 1A36B8 80391638 0C025D58 */  jal        func_80097560
/* 1A36BC 8039163C 00000000 */   nop
.L80391640:
/* 1A36C0 80391640 C6020068 */  lwc1       $f2, 0x68($s0)
/* 1A36C4 80391644 3C014040 */  lui        $at, 0x4040
/* 1A36C8 80391648 4481A000 */  mtc1       $at, $f20
/* 1A36CC 8039164C 00000000 */  nop
/* 1A36D0 80391650 46141082 */  mul.s      $f2, $f2, $f20
/* 1A36D4 80391654 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A36D8 80391658 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A36DC 8039165C 46800020 */  cvt.s.w    $f0, $f0
/* 1A36E0 80391660 46001083 */  div.s      $f2, $f2, $f0
/* 1A36E4 80391664 8E020000 */  lw         $v0, ($s0)
/* 1A36E8 80391668 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A36EC 8039166C 8E050024 */  lw         $a1, 0x24($s0)
/* 1A36F0 80391670 24060010 */  addiu      $a2, $zero, 0x10
/* 1A36F4 80391674 8C440014 */  lw         $a0, 0x14($v0)
/* 1A36F8 80391678 4600100D */  trunc.w.s  $f0, $f2
/* 1A36FC 8039167C 44070000 */  mfc1       $a3, $f0
/* 1A3700 80391680 00000000 */  nop
/* 1A3704 80391684 00073C00 */  sll        $a3, $a3, 0x10
/* 1A3708 80391688 0C029A39 */  jal        func_800A68E4
/* 1A370C 8039168C 00073C03 */   sra       $a3, $a3, 0x10
/* 1A3710 80391690 C6000068 */  lwc1       $f0, 0x68($s0)
/* 1A3714 80391694 3C014000 */  lui        $at, 0x4000
/* 1A3718 80391698 44811000 */  mtc1       $at, $f2
/* 1A371C 8039169C 00000000 */  nop
/* 1A3720 803916A0 46020000 */  add.s      $f0, $f0, $f2
/* 1A3724 803916A4 46140002 */  mul.s      $f0, $f0, $f20
/* 1A3728 803916A8 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A372C 803916AC C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A3730 803916B0 468010A0 */  cvt.s.w    $f2, $f2
/* 1A3734 803916B4 46020003 */  div.s      $f0, $f0, $f2
/* 1A3738 803916B8 92030061 */  lbu        $v1, 0x61($s0)
/* 1A373C 803916BC AE020020 */  sw         $v0, 0x20($s0)
/* 1A3740 803916C0 38630001 */  xori       $v1, $v1, 1
/* 1A3744 803916C4 080E45E2 */  j          .L80391788
/* 1A3748 803916C8 A2030061 */   sb        $v1, 0x61($s0)
.L803916CC:
/* 1A374C 803916CC 92020060 */  lbu        $v0, 0x60($s0)
/* 1A3750 803916D0 1040002E */  beqz       $v0, .L8039178C
/* 1A3754 803916D4 00000000 */   nop
/* 1A3758 803916D8 8E040020 */  lw         $a0, 0x20($s0)
/* 1A375C 803916DC 10800003 */  beqz       $a0, .L803916EC
/* 1A3760 803916E0 00000000 */   nop
/* 1A3764 803916E4 0C025D58 */  jal        func_80097560
/* 1A3768 803916E8 00000000 */   nop
.L803916EC:
/* 1A376C 803916EC C6020068 */  lwc1       $f2, 0x68($s0)
/* 1A3770 803916F0 3C014040 */  lui        $at, 0x4040
/* 1A3774 803916F4 4481A000 */  mtc1       $at, $f20
/* 1A3778 803916F8 00000000 */  nop
/* 1A377C 803916FC 46141082 */  mul.s      $f2, $f2, $f20
/* 1A3780 80391700 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3784 80391704 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A3788 80391708 46800020 */  cvt.s.w    $f0, $f0
/* 1A378C 8039170C 46001083 */  div.s      $f2, $f2, $f0
/* 1A3790 80391710 8E020000 */  lw         $v0, ($s0)
/* 1A3794 80391714 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A3798 80391718 8E050028 */  lw         $a1, 0x28($s0)
/* 1A379C 8039171C 24060010 */  addiu      $a2, $zero, 0x10
/* 1A37A0 80391720 8C440014 */  lw         $a0, 0x14($v0)
/* 1A37A4 80391724 4600100D */  trunc.w.s  $f0, $f2
/* 1A37A8 80391728 44070000 */  mfc1       $a3, $f0
/* 1A37AC 8039172C 00000000 */  nop
/* 1A37B0 80391730 00073C00 */  sll        $a3, $a3, 0x10
/* 1A37B4 80391734 0C029A39 */  jal        func_800A68E4
/* 1A37B8 80391738 00073C03 */   sra       $a3, $a3, 0x10
/* 1A37BC 8039173C C6000068 */  lwc1       $f0, 0x68($s0)
/* 1A37C0 80391740 3C014000 */  lui        $at, 0x4000
/* 1A37C4 80391744 44811000 */  mtc1       $at, $f2
/* 1A37C8 80391748 00000000 */  nop
/* 1A37CC 8039174C 46020000 */  add.s      $f0, $f0, $f2
/* 1A37D0 80391750 46140002 */  mul.s      $f0, $f0, $f20
/* 1A37D4 80391754 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A37D8 80391758 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A37DC 8039175C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A37E0 80391760 46020003 */  div.s      $f0, $f0, $f2
/* 1A37E4 80391764 92030061 */  lbu        $v1, 0x61($s0)
/* 1A37E8 80391768 AE020020 */  sw         $v0, 0x20($s0)
/* 1A37EC 8039176C 38630001 */  xori       $v1, $v1, 1
/* 1A37F0 80391770 080E45E2 */  j          .L80391788
/* 1A37F4 80391774 A2030061 */   sb        $v1, 0x61($s0)
.L80391778:
/* 1A37F8 80391778 3C013F80 */  lui        $at, 0x3f80
/* 1A37FC 8039177C 44810000 */  mtc1       $at, $f0
/* 1A3800 80391780 00000000 */  nop
/* 1A3804 80391784 46001001 */  sub.s      $f0, $f2, $f0
.L80391788:
/* 1A3808 80391788 E6000064 */  swc1       $f0, 0x64($s0)
.L8039178C:
/* 1A380C 8039178C 3C013EAA */  lui        $at, 0x3eaa
/* 1A3810 80391790 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A3814 80391794 44811000 */  mtc1       $at, $f2
/* 1A3818 80391798 00000000 */  nop
/* 1A381C 8039179C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3820 803917A0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A3824 803917A4 46800020 */  cvt.s.w    $f0, $f0
/* 1A3828 803917A8 46020002 */  mul.s      $f0, $f0, $f2
/* 1A382C 803917AC C6040030 */  lwc1       $f4, 0x30($s0)
/* 1A3830 803917B0 46002001 */  sub.s      $f0, $f4, $f0
/* 1A3834 803917B4 3C014170 */  lui        $at, 0x4170
/* 1A3838 803917B8 44811000 */  mtc1       $at, $f2
/* 1A383C 803917BC 00000000 */  nop
/* 1A3840 803917C0 24050001 */  addiu      $a1, $zero, 1
/* 1A3844 803917C4 4602003C */  c.lt.s     $f0, $f2
/* 1A3848 803917C8 00000000 */  nop
/* 1A384C 803917CC 00000000 */  nop
/* 1A3850 803917D0 4600208D */  trunc.w.s  $f2, $f4
/* 1A3854 803917D4 44041000 */  mfc1       $a0, $f2
/* 1A3858 803917D8 00000000 */  nop
/* 1A385C 803917DC 4600008D */  trunc.w.s  $f2, $f0
/* 1A3860 803917E0 44031000 */  mfc1       $v1, $f2
/* 1A3864 803917E4 00000000 */  nop
/* 1A3868 803917E8 45010002 */  bc1t       .L803917F4
/* 1A386C 803917EC E6000030 */   swc1      $f0, 0x30($s0)
/* 1A3870 803917F0 00002821 */  addu       $a1, $zero, $zero
.L803917F4:
/* 1A3874 803917F4 00831026 */  xor        $v0, $a0, $v1
/* 1A3878 803917F8 0002102B */  sltu       $v0, $zero, $v0
/* 1A387C 803917FC 00A21024 */  and        $v0, $a1, $v0
/* 1A3880 80391800 1040001C */  beqz       $v0, .L80391874
/* 1A3884 80391804 00000000 */   nop
/* 1A3888 80391808 8E04002C */  lw         $a0, 0x2c($s0)
/* 1A388C 8039180C 0C02990C */  jal        func_800A6430
/* 1A3890 80391810 00000000 */   nop
/* 1A3894 80391814 C6020030 */  lwc1       $f2, 0x30($s0)
/* 1A3898 80391818 3C013F80 */  lui        $at, 0x3f80
/* 1A389C 8039181C 44810000 */  mtc1       $at, $f0
/* 1A38A0 80391820 00000000 */  nop
/* 1A38A4 80391824 4600103C */  c.lt.s     $f2, $f0
/* 1A38A8 80391828 00000000 */  nop
/* 1A38AC 8039182C 45000011 */  bc1f       .L80391874
/* 1A38B0 80391830 00000000 */   nop
/* 1A38B4 80391834 0C02591A */  jal        func_80096468
/* 1A38B8 80391838 2404003C */   addiu     $a0, $zero, 0x3c
/* 1A38BC 8039183C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1A38C0 80391840 3C014040 */  lui        $at, 0x4040
/* 1A38C4 80391844 44811000 */  mtc1       $at, $f2
/* 1A38C8 80391848 00000000 */  nop
/* 1A38CC 8039184C 2442000F */  addiu      $v0, $v0, 0xf
/* 1A38D0 80391850 44820000 */  mtc1       $v0, $f0
/* 1A38D4 80391854 00000000 */  nop
/* 1A38D8 80391858 46800020 */  cvt.s.w    $f0, $f0
/* 1A38DC 8039185C 46020002 */  mul.s      $f0, $f0, $f2
/* 1A38E0 80391860 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A38E4 80391864 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A38E8 80391868 468010A0 */  cvt.s.w    $f2, $f2
/* 1A38EC 8039186C 46020003 */  div.s      $f0, $f0, $f2
/* 1A38F0 80391870 E6000030 */  swc1       $f0, 0x30($s0)
.L80391874:
/* 1A38F4 80391874 C6000034 */  lwc1       $f0, 0x34($s0)
/* 1A38F8 80391878 9602003C */  lhu        $v0, 0x3c($s0)
/* 1A38FC 8039187C 8E040000 */  lw         $a0, ($s0)
/* 1A3900 80391880 4600008D */  trunc.w.s  $f2, $f0
/* 1A3904 80391884 44051000 */  mfc1       $a1, $f2
/* 1A3908 80391888 00000000 */  nop
/* 1A390C 8039188C 00A22821 */  addu       $a1, $a1, $v0
/* 1A3910 80391890 00052C80 */  sll        $a1, $a1, 0x12
/* 1A3914 80391894 C6000038 */  lwc1       $f0, 0x38($s0)
/* 1A3918 80391898 9602003E */  lhu        $v0, 0x3e($s0)
/* 1A391C 8039189C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A3920 803918A0 4600008D */  trunc.w.s  $f2, $f0
/* 1A3924 803918A4 44061000 */  mfc1       $a2, $f2
/* 1A3928 803918A8 00000000 */  nop
/* 1A392C 803918AC 00C23021 */  addu       $a2, $a2, $v0
/* 1A3930 803918B0 00063480 */  sll        $a2, $a2, 0x12
/* 1A3934 803918B4 0C028D89 */  jal        func_800A3624
/* 1A3938 803918B8 00063403 */   sra       $a2, $a2, 0x10
/* 1A393C 803918BC C6000034 */  lwc1       $f0, 0x34($s0)
/* 1A3940 803918C0 9602003C */  lhu        $v0, 0x3c($s0)
/* 1A3944 803918C4 8E040004 */  lw         $a0, 4($s0)
/* 1A3948 803918C8 4600008D */  trunc.w.s  $f2, $f0
/* 1A394C 803918CC 44051000 */  mfc1       $a1, $f2
/* 1A3950 803918D0 00000000 */  nop
/* 1A3954 803918D4 00A22821 */  addu       $a1, $a1, $v0
/* 1A3958 803918D8 00052C80 */  sll        $a1, $a1, 0x12
/* 1A395C 803918DC C6000038 */  lwc1       $f0, 0x38($s0)
/* 1A3960 803918E0 9602003E */  lhu        $v0, 0x3e($s0)
/* 1A3964 803918E4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A3968 803918E8 4600008D */  trunc.w.s  $f2, $f0
/* 1A396C 803918EC 44061000 */  mfc1       $a2, $f2
/* 1A3970 803918F0 00000000 */  nop
/* 1A3974 803918F4 00C23021 */  addu       $a2, $a2, $v0
/* 1A3978 803918F8 00063480 */  sll        $a2, $a2, 0x12
/* 1A397C 803918FC 0C028D89 */  jal        func_800A3624
/* 1A3980 80391900 00063403 */   sra       $a2, $a2, 0x10
/* 1A3984 80391904 C6000034 */  lwc1       $f0, 0x34($s0)
/* 1A3988 80391908 96020040 */  lhu        $v0, 0x40($s0)
/* 1A398C 8039190C 8E040008 */  lw         $a0, 8($s0)
/* 1A3990 80391910 4600008D */  trunc.w.s  $f2, $f0
/* 1A3994 80391914 44051000 */  mfc1       $a1, $f2
/* 1A3998 80391918 00000000 */  nop
/* 1A399C 8039191C 00A22821 */  addu       $a1, $a1, $v0
/* 1A39A0 80391920 00052C80 */  sll        $a1, $a1, 0x12
/* 1A39A4 80391924 C6000038 */  lwc1       $f0, 0x38($s0)
/* 1A39A8 80391928 96020042 */  lhu        $v0, 0x42($s0)
/* 1A39AC 8039192C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A39B0 80391930 4600008D */  trunc.w.s  $f2, $f0
/* 1A39B4 80391934 44061000 */  mfc1       $a2, $f2
/* 1A39B8 80391938 00000000 */  nop
/* 1A39BC 8039193C 00C23021 */  addu       $a2, $a2, $v0
/* 1A39C0 80391940 00063480 */  sll        $a2, $a2, 0x12
/* 1A39C4 80391944 0C028D89 */  jal        func_800A3624
/* 1A39C8 80391948 00063403 */   sra       $a2, $a2, 0x10
/* 1A39CC 8039194C C6000034 */  lwc1       $f0, 0x34($s0)
/* 1A39D0 80391950 96020044 */  lhu        $v0, 0x44($s0)
/* 1A39D4 80391954 8E04000C */  lw         $a0, 0xc($s0)
/* 1A39D8 80391958 4600008D */  trunc.w.s  $f2, $f0
/* 1A39DC 8039195C 44051000 */  mfc1       $a1, $f2
/* 1A39E0 80391960 00000000 */  nop
/* 1A39E4 80391964 00A22821 */  addu       $a1, $a1, $v0
/* 1A39E8 80391968 00052C80 */  sll        $a1, $a1, 0x12
/* 1A39EC 8039196C C6000038 */  lwc1       $f0, 0x38($s0)
/* 1A39F0 80391970 96020046 */  lhu        $v0, 0x46($s0)
/* 1A39F4 80391974 00052C03 */  sra        $a1, $a1, 0x10
/* 1A39F8 80391978 4600008D */  trunc.w.s  $f2, $f0
/* 1A39FC 8039197C 44061000 */  mfc1       $a2, $f2
/* 1A3A00 80391980 00000000 */  nop
/* 1A3A04 80391984 00C23021 */  addu       $a2, $a2, $v0
/* 1A3A08 80391988 00063480 */  sll        $a2, $a2, 0x12
/* 1A3A0C 8039198C 0C028D89 */  jal        func_800A3624
/* 1A3A10 80391990 00063403 */   sra       $a2, $a2, 0x10
/* 1A3A14 80391994 C6000034 */  lwc1       $f0, 0x34($s0)
/* 1A3A18 80391998 96020044 */  lhu        $v0, 0x44($s0)
/* 1A3A1C 8039199C 8E040010 */  lw         $a0, 0x10($s0)
/* 1A3A20 803919A0 4600008D */  trunc.w.s  $f2, $f0
/* 1A3A24 803919A4 44051000 */  mfc1       $a1, $f2
/* 1A3A28 803919A8 00000000 */  nop
/* 1A3A2C 803919AC 00A22821 */  addu       $a1, $a1, $v0
/* 1A3A30 803919B0 00052C80 */  sll        $a1, $a1, 0x12
/* 1A3A34 803919B4 C6000038 */  lwc1       $f0, 0x38($s0)
/* 1A3A38 803919B8 96020046 */  lhu        $v0, 0x46($s0)
/* 1A3A3C 803919BC 00052C03 */  sra        $a1, $a1, 0x10
/* 1A3A40 803919C0 4600008D */  trunc.w.s  $f2, $f0
/* 1A3A44 803919C4 44061000 */  mfc1       $a2, $f2
/* 1A3A48 803919C8 00000000 */  nop
/* 1A3A4C 803919CC 00C23021 */  addu       $a2, $a2, $v0
/* 1A3A50 803919D0 00063480 */  sll        $a2, $a2, 0x12
/* 1A3A54 803919D4 0C028D89 */  jal        func_800A3624
/* 1A3A58 803919D8 00063403 */   sra       $a2, $a2, 0x10
/* 1A3A5C 803919DC 86020048 */  lh         $v0, 0x48($s0)
/* 1A3A60 803919E0 8603004E */  lh         $v1, 0x4e($s0)
/* 1A3A64 803919E4 C6060038 */  lwc1       $f6, 0x38($s0)
/* 1A3A68 803919E8 C6040034 */  lwc1       $f4, 0x34($s0)
/* 1A3A6C 803919EC 44830000 */  mtc1       $v1, $f0
/* 1A3A70 803919F0 00000000 */  nop
/* 1A3A74 803919F4 46800020 */  cvt.s.w    $f0, $f0
/* 1A3A78 803919F8 46003000 */  add.s      $f0, $f6, $f0
/* 1A3A7C 803919FC 8606004C */  lh         $a2, 0x4c($s0)
/* 1A3A80 80391A00 44821000 */  mtc1       $v0, $f2
/* 1A3A84 80391A04 00000000 */  nop
/* 1A3A88 80391A08 468010A0 */  cvt.s.w    $f2, $f2
/* 1A3A8C 80391A0C 8603004A */  lh         $v1, 0x4a($s0)
/* 1A3A90 80391A10 46022080 */  add.s      $f2, $f4, $f2
/* 1A3A94 80391A14 4600020D */  trunc.w.s  $f8, $f0
/* 1A3A98 80391A18 44024000 */  mfc1       $v0, $f8
/* 1A3A9C 80391A1C 00000000 */  nop
/* 1A3AA0 80391A20 00021400 */  sll        $v0, $v0, 0x10
/* 1A3AA4 80391A24 00021403 */  sra        $v0, $v0, 0x10
/* 1A3AA8 80391A28 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A3AAC 80391A2C 8E040018 */  lw         $a0, 0x18($s0)
/* 1A3AB0 80391A30 4600100D */  trunc.w.s  $f0, $f2
/* 1A3AB4 80391A34 44050000 */  mfc1       $a1, $f0
/* 1A3AB8 80391A38 00000000 */  nop
/* 1A3ABC 80391A3C 44830000 */  mtc1       $v1, $f0
/* 1A3AC0 80391A40 00000000 */  nop
/* 1A3AC4 80391A44 46800020 */  cvt.s.w    $f0, $f0
/* 1A3AC8 80391A48 46003180 */  add.s      $f6, $f6, $f0
/* 1A3ACC 80391A4C 00052C00 */  sll        $a1, $a1, 0x10
/* 1A3AD0 80391A50 00052C03 */  sra        $a1, $a1, 0x10
/* 1A3AD4 80391A54 44860000 */  mtc1       $a2, $f0
/* 1A3AD8 80391A58 00000000 */  nop
/* 1A3ADC 80391A5C 46800020 */  cvt.s.w    $f0, $f0
/* 1A3AE0 80391A60 46002100 */  add.s      $f4, $f4, $f0
/* 1A3AE4 80391A64 4600300D */  trunc.w.s  $f0, $f6
/* 1A3AE8 80391A68 44060000 */  mfc1       $a2, $f0
/* 1A3AEC 80391A6C 00000000 */  nop
/* 1A3AF0 80391A70 00063400 */  sll        $a2, $a2, 0x10
/* 1A3AF4 80391A74 00063403 */  sra        $a2, $a2, 0x10
/* 1A3AF8 80391A78 4600200D */  trunc.w.s  $f0, $f4
/* 1A3AFC 80391A7C 44070000 */  mfc1       $a3, $f0
/* 1A3B00 80391A80 00000000 */  nop
/* 1A3B04 80391A84 00073C00 */  sll        $a3, $a3, 0x10
/* 1A3B08 80391A88 0C02939C */  jal        func_800A4E70
/* 1A3B0C 80391A8C 00073C03 */   sra       $a3, $a3, 0x10
/* 1A3B10 80391A90 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A3B14 80391A94 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A3B18 80391A98 1040001C */  beqz       $v0, .L80391B0C
/* 1A3B1C 80391A9C 00000000 */   nop
/* 1A3B20 80391AA0 8E040014 */  lw         $a0, 0x14($s0)
/* 1A3B24 80391AA4 0C028A40 */  jal        func_800A2900
/* 1A3B28 80391AA8 00000000 */   nop
/* 1A3B2C 80391AAC 9202006C */  lbu        $v0, 0x6c($s0)
/* 1A3B30 80391AB0 10400004 */  beqz       $v0, .L80391AC4
/* 1A3B34 80391AB4 00000000 */   nop
/* 1A3B38 80391AB8 8E040004 */  lw         $a0, 4($s0)
/* 1A3B3C 80391ABC 080E46B2 */  j          .L80391AC8
/* 1A3B40 80391AC0 A200006C */   sb        $zero, 0x6c($s0)
.L80391AC4:
/* 1A3B44 80391AC4 8E040000 */  lw         $a0, ($s0)
.L80391AC8:
/* 1A3B48 80391AC8 0C028A40 */  jal        func_800A2900
/* 1A3B4C 80391ACC 00000000 */   nop
/* 1A3B50 80391AD0 8E040018 */  lw         $a0, 0x18($s0)
/* 1A3B54 80391AD4 0C028A40 */  jal        func_800A2900
/* 1A3B58 80391AD8 00000000 */   nop
/* 1A3B5C 80391ADC 8E040008 */  lw         $a0, 8($s0)
/* 1A3B60 80391AE0 0C028A40 */  jal        func_800A2900
/* 1A3B64 80391AE4 00000000 */   nop
/* 1A3B68 80391AE8 8E04001C */  lw         $a0, 0x1c($s0)
/* 1A3B6C 80391AEC 0C028A40 */  jal        func_800A2900
/* 1A3B70 80391AF0 00000000 */   nop
/* 1A3B74 80391AF4 8E04000C */  lw         $a0, 0xc($s0)
/* 1A3B78 80391AF8 0C028A40 */  jal        func_800A2900
/* 1A3B7C 80391AFC 00000000 */   nop
/* 1A3B80 80391B00 8E040010 */  lw         $a0, 0x10($s0)
/* 1A3B84 80391B04 0C028A40 */  jal        func_800A2900
/* 1A3B88 80391B08 00000000 */   nop
.L80391B0C:
/* 1A3B8C 80391B0C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1A3B90 80391B10 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A3B94 80391B14 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A3B98 80391B18 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 1A3B9C 80391B1C D7B40028 */  ldc1       $f20, 0x28($sp)
/* 1A3BA0 80391B20 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1A3BA4 80391B24 03E00008 */  jr         $ra
/* 1A3BA8 80391B28 00000000 */   nop

glabel func_80391B2C_1A3BAC
/* 1A3BAC 80391B2C 84830072 */  lh         $v1, 0x72($a0)
/* 1A3BB0 80391B30 2C620005 */  sltiu      $v0, $v1, 5
/* 1A3BB4 80391B34 1040009A */  beqz       $v0, .L80391DA0
/* 1A3BB8 80391B38 00031080 */   sll       $v0, $v1, 2
/* 1A3BBC 80391B3C 3C01803B */  lui        $at, %hi(jtbl_803A8BA0_1BAC20)
/* 1A3BC0 80391B40 00220821 */  addu       $at, $at, $v0
/* 1A3BC4 80391B44 8C228BA0 */  lw         $v0, %lo(jtbl_803A8BA0_1BAC20)($at)
/* 1A3BC8 80391B48 00400008 */  jr         $v0
/* 1A3BCC 80391B4C 00000000 */   nop
glabel L80391B50_1A3BD0
/* 1A3BD0 80391B50 84820070 */  lh         $v0, 0x70($a0)
/* 1A3BD4 80391B54 C4840054 */  lwc1       $f4, 0x54($a0)
/* 1A3BD8 80391B58 44820000 */  mtc1       $v0, $f0
/* 1A3BDC 80391B5C 00000000 */  nop
/* 1A3BE0 80391B60 46800020 */  cvt.s.w    $f0, $f0
/* 1A3BE4 80391B64 4604003C */  c.lt.s     $f0, $f4
/* 1A3BE8 80391B68 00000000 */  nop
/* 1A3BEC 80391B6C 4500000C */  bc1f       .L80391BA0
/* 1A3BF0 80391B70 00000000 */   nop
/* 1A3BF4 80391B74 3C013F2A */  lui        $at, 0x3f2a
/* 1A3BF8 80391B78 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A3BFC 80391B7C 44811000 */  mtc1       $at, $f2
/* 1A3C00 80391B80 00000000 */  nop
/* 1A3C04 80391B84 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3C08 80391B88 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A3C0C 80391B8C 46800020 */  cvt.s.w    $f0, $f0
/* 1A3C10 80391B90 46020002 */  mul.s      $f0, $f0, $f2
/* 1A3C14 80391B94 46002001 */  sub.s      $f0, $f4, $f0
/* 1A3C18 80391B98 E4800054 */  swc1       $f0, 0x54($a0)
/* 1A3C1C 80391B9C 84820070 */  lh         $v0, 0x70($a0)
.L80391BA0:
/* 1A3C20 80391BA0 C4820054 */  lwc1       $f2, 0x54($a0)
/* 1A3C24 80391BA4 44820000 */  mtc1       $v0, $f0
/* 1A3C28 80391BA8 00000000 */  nop
/* 1A3C2C 80391BAC 46800020 */  cvt.s.w    $f0, $f0
/* 1A3C30 80391BB0 4600103E */  c.le.s     $f2, $f0
/* 1A3C34 80391BB4 00000000 */  nop
/* 1A3C38 80391BB8 00000000 */  nop
/* 1A3C3C 80391BBC 080E470B */  j          .L80391C2C
/* 1A3C40 80391BC0 00000000 */   nop
glabel L80391BC4_1A3C44
/* 1A3C44 80391BC4 8482006E */  lh         $v0, 0x6e($a0)
/* 1A3C48 80391BC8 C4840054 */  lwc1       $f4, 0x54($a0)
/* 1A3C4C 80391BCC 44820000 */  mtc1       $v0, $f0
/* 1A3C50 80391BD0 00000000 */  nop
/* 1A3C54 80391BD4 46800020 */  cvt.s.w    $f0, $f0
/* 1A3C58 80391BD8 4600203C */  c.lt.s     $f4, $f0
/* 1A3C5C 80391BDC 00000000 */  nop
/* 1A3C60 80391BE0 4500000C */  bc1f       .L80391C14
/* 1A3C64 80391BE4 00000000 */   nop
/* 1A3C68 80391BE8 3C013F2A */  lui        $at, 0x3f2a
/* 1A3C6C 80391BEC 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A3C70 80391BF0 44811000 */  mtc1       $at, $f2
/* 1A3C74 80391BF4 00000000 */  nop
/* 1A3C78 80391BF8 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3C7C 80391BFC C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A3C80 80391C00 46800020 */  cvt.s.w    $f0, $f0
/* 1A3C84 80391C04 46020002 */  mul.s      $f0, $f0, $f2
/* 1A3C88 80391C08 46002000 */  add.s      $f0, $f4, $f0
/* 1A3C8C 80391C0C E4800054 */  swc1       $f0, 0x54($a0)
/* 1A3C90 80391C10 8482006E */  lh         $v0, 0x6e($a0)
.L80391C14:
/* 1A3C94 80391C14 C4820054 */  lwc1       $f2, 0x54($a0)
/* 1A3C98 80391C18 44820000 */  mtc1       $v0, $f0
/* 1A3C9C 80391C1C 00000000 */  nop
/* 1A3CA0 80391C20 46800020 */  cvt.s.w    $f0, $f0
/* 1A3CA4 80391C24 4602003E */  c.le.s     $f0, $f2
/* 1A3CA8 80391C28 00000000 */  nop
.L80391C2C:
/* 1A3CAC 80391C2C 4500005C */  bc1f       .L80391DA0
/* 1A3CB0 80391C30 00000000 */   nop
/* 1A3CB4 80391C34 94820072 */  lhu        $v0, 0x72($a0)
/* 1A3CB8 80391C38 2442FFFF */  addiu      $v0, $v0, -1
/* 1A3CBC 80391C3C 080E4768 */  j          .L80391DA0
/* 1A3CC0 80391C40 A4820072 */   sh        $v0, 0x72($a0)
glabel L80391C44_1A3CC4
/* 1A3CC4 80391C44 C4840054 */  lwc1       $f4, 0x54($a0)
/* 1A3CC8 80391C48 C4800058 */  lwc1       $f0, 0x58($a0)
/* 1A3CCC 80391C4C 4604003C */  c.lt.s     $f0, $f4
/* 1A3CD0 80391C50 00000000 */  nop
/* 1A3CD4 80391C54 45000015 */  bc1f       .L80391CAC
/* 1A3CD8 80391C58 00000000 */   nop
/* 1A3CDC 80391C5C 3C013EAA */  lui        $at, 0x3eaa
/* 1A3CE0 80391C60 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A3CE4 80391C64 44811000 */  mtc1       $at, $f2
/* 1A3CE8 80391C68 00000000 */  nop
/* 1A3CEC 80391C6C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3CF0 80391C70 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A3CF4 80391C74 46800020 */  cvt.s.w    $f0, $f0
/* 1A3CF8 80391C78 46020002 */  mul.s      $f0, $f0, $f2
/* 1A3CFC 80391C7C 46002001 */  sub.s      $f0, $f4, $f0
/* 1A3D00 80391C80 3C0142C8 */  lui        $at, 0x42c8
/* 1A3D04 80391C84 44811000 */  mtc1       $at, $f2
/* 1A3D08 80391C88 00000000 */  nop
/* 1A3D0C 80391C8C 4600103C */  c.lt.s     $f2, $f0
/* 1A3D10 80391C90 00000000 */  nop
/* 1A3D14 80391C94 00000000 */  nop
/* 1A3D18 80391C98 4501001E */  bc1t       .L80391D14
/* 1A3D1C 80391C9C E4800054 */   swc1      $f0, 0x54($a0)
/* 1A3D20 80391CA0 C4820058 */  lwc1       $f2, 0x58($a0)
/* 1A3D24 80391CA4 080E4741 */  j          .L80391D04
/* 1A3D28 80391CA8 00000000 */   nop
.L80391CAC:
/* 1A3D2C 80391CAC 4600203C */  c.lt.s     $f4, $f0
/* 1A3D30 80391CB0 00000000 */  nop
/* 1A3D34 80391CB4 45000018 */  bc1f       .L80391D18
/* 1A3D38 80391CB8 00000000 */   nop
/* 1A3D3C 80391CBC 3C013EAA */  lui        $at, 0x3eaa
/* 1A3D40 80391CC0 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A3D44 80391CC4 44811000 */  mtc1       $at, $f2
/* 1A3D48 80391CC8 00000000 */  nop
/* 1A3D4C 80391CCC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A3D50 80391CD0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A3D54 80391CD4 46800020 */  cvt.s.w    $f0, $f0
/* 1A3D58 80391CD8 46020002 */  mul.s      $f0, $f0, $f2
/* 1A3D5C 80391CDC 46002000 */  add.s      $f0, $f4, $f0
/* 1A3D60 80391CE0 C4820058 */  lwc1       $f2, 0x58($a0)
/* 1A3D64 80391CE4 4600103C */  c.lt.s     $f2, $f0
/* 1A3D68 80391CE8 00000000 */  nop
/* 1A3D6C 80391CEC 00000000 */  nop
/* 1A3D70 80391CF0 45010008 */  bc1t       .L80391D14
/* 1A3D74 80391CF4 E4800054 */   swc1      $f0, 0x54($a0)
/* 1A3D78 80391CF8 3C013F80 */  lui        $at, 0x3f80
/* 1A3D7C 80391CFC 44811000 */  mtc1       $at, $f2
/* 1A3D80 80391D00 00000000 */  nop
.L80391D04:
/* 1A3D84 80391D04 4602003C */  c.lt.s     $f0, $f2
/* 1A3D88 80391D08 00000000 */  nop
/* 1A3D8C 80391D0C 45000002 */  bc1f       .L80391D18
/* 1A3D90 80391D10 00000000 */   nop
.L80391D14:
/* 1A3D94 80391D14 E4820054 */  swc1       $f2, 0x54($a0)
.L80391D18:
/* 1A3D98 80391D18 C4820054 */  lwc1       $f2, 0x54($a0)
/* 1A3D9C 80391D1C C4800058 */  lwc1       $f0, 0x58($a0)
/* 1A3DA0 80391D20 46001032 */  c.eq.s     $f2, $f0
/* 1A3DA4 80391D24 00000000 */  nop
/* 1A3DA8 80391D28 45000012 */  bc1f       .L80391D74
/* 1A3DAC 80391D2C 00000000 */   nop
/* 1A3DB0 80391D30 3C014220 */  lui        $at, 0x4220
/* 1A3DB4 80391D34 44810000 */  mtc1       $at, $f0
/* 1A3DB8 80391D38 00000000 */  nop
/* 1A3DBC 80391D3C 4602003C */  c.lt.s     $f0, $f2
/* 1A3DC0 80391D40 00000000 */  nop
/* 1A3DC4 80391D44 00000000 */  nop
/* 1A3DC8 80391D48 45010008 */  bc1t       .L80391D6C
/* 1A3DCC 80391D4C E4820068 */   swc1      $f2, 0x68($a0)
/* 1A3DD0 80391D50 3C014120 */  lui        $at, 0x4120
/* 1A3DD4 80391D54 44810000 */  mtc1       $at, $f0
/* 1A3DD8 80391D58 00000000 */  nop
/* 1A3DDC 80391D5C 4600103C */  c.lt.s     $f2, $f0
/* 1A3DE0 80391D60 00000000 */  nop
/* 1A3DE4 80391D64 45000002 */  bc1f       .L80391D70
/* 1A3DE8 80391D68 00000000 */   nop
.L80391D6C:
/* 1A3DEC 80391D6C E4800068 */  swc1       $f0, 0x68($a0)
.L80391D70:
/* 1A3DF0 80391D70 C4820054 */  lwc1       $f2, 0x54($a0)
.L80391D74:
/* 1A3DF4 80391D74 3C014220 */  lui        $at, 0x4220
/* 1A3DF8 80391D78 44810000 */  mtc1       $at, $f0
/* 1A3DFC 80391D7C 00000000 */  nop
/* 1A3E00 80391D80 4600103E */  c.le.s     $f2, $f0
/* 1A3E04 80391D84 00000000 */  nop
/* 1A3E08 80391D88 00000000 */  nop
/* 1A3E0C 80391D8C 45000003 */  bc1f       .L80391D9C
/* 1A3E10 80391D90 24020001 */   addiu     $v0, $zero, 1
/* 1A3E14 80391D94 080E4768 */  j          .L80391DA0
/* 1A3E18 80391D98 A0820060 */   sb        $v0, 0x60($a0)
.L80391D9C:
/* 1A3E1C 80391D9C A0800060 */  sb         $zero, 0x60($a0)
.L80391DA0:
/* 1A3E20 80391DA0 C4800054 */  lwc1       $f0, 0x54($a0)
/* 1A3E24 80391DA4 3C0142C8 */  lui        $at, 0x42c8
/* 1A3E28 80391DA8 44811000 */  mtc1       $at, $f2
/* 1A3E2C 80391DAC 00000000 */  nop
/* 1A3E30 80391DB0 4600103C */  c.lt.s     $f2, $f0
/* 1A3E34 80391DB4 00000000 */  nop
/* 1A3E38 80391DB8 00000000 */  nop
/* 1A3E3C 80391DBC 45030009 */  bc1tl      .L80391DE4
/* 1A3E40 80391DC0 E4820054 */   swc1      $f2, 0x54($a0)
/* 1A3E44 80391DC4 3C013F80 */  lui        $at, 0x3f80
/* 1A3E48 80391DC8 44811000 */  mtc1       $at, $f2
/* 1A3E4C 80391DCC 00000000 */  nop
/* 1A3E50 80391DD0 4602003C */  c.lt.s     $f0, $f2
/* 1A3E54 80391DD4 00000000 */  nop
/* 1A3E58 80391DD8 00000000 */  nop
/* 1A3E5C 80391DDC 45030001 */  bc1tl      .L80391DE4
/* 1A3E60 80391DE0 E4820054 */   swc1      $f2, 0x54($a0)
.L80391DE4:
/* 1A3E64 80391DE4 03E00008 */  jr         $ra
/* 1A3E68 80391DE8 00000000 */   nop

glabel func_80391DEC
/* 1A3E6C 80391DEC 00A03821 */  addu       $a3, $a1, $zero
/* 1A3E70 80391DF0 2C830001 */  sltiu      $v1, $a0, 1
/* 1A3E74 80391DF4 00052C00 */  sll        $a1, $a1, 0x10
/* 1A3E78 80391DF8 00052C03 */  sra        $a1, $a1, 0x10
/* 1A3E7C 80391DFC 2CA20001 */  sltiu      $v0, $a1, 1
/* 1A3E80 80391E00 00621825 */  or         $v1, $v1, $v0
/* 1A3E84 80391E04 14600047 */  bnez       $v1, .L80391F24
/* 1A3E88 80391E08 00000000 */   nop
/* 1A3E8C 80391E0C 8C860014 */  lw         $a2, 0x14($a0)
/* 1A3E90 80391E10 C4C20058 */  lwc1       $f2, 0x58($a2)
/* 1A3E94 80391E14 44850000 */  mtc1       $a1, $f0
/* 1A3E98 80391E18 00000000 */  nop
/* 1A3E9C 80391E1C 46800020 */  cvt.s.w    $f0, $f0
/* 1A3EA0 80391E20 46001080 */  add.s      $f2, $f2, $f0
/* 1A3EA4 80391E24 3C0142C8 */  lui        $at, 0x42c8
/* 1A3EA8 80391E28 44810000 */  mtc1       $at, $f0
/* 1A3EAC 80391E2C 00000000 */  nop
/* 1A3EB0 80391E30 4602003C */  c.lt.s     $f0, $f2
/* 1A3EB4 80391E34 00000000 */  nop
/* 1A3EB8 80391E38 00000000 */  nop
/* 1A3EBC 80391E3C 45010008 */  bc1t       .L80391E60
/* 1A3EC0 80391E40 E4C20058 */   swc1      $f2, 0x58($a2)
/* 1A3EC4 80391E44 3C013F80 */  lui        $at, 0x3f80
/* 1A3EC8 80391E48 44810000 */  mtc1       $at, $f0
/* 1A3ECC 80391E4C 00000000 */  nop
/* 1A3ED0 80391E50 4600103C */  c.lt.s     $f2, $f0
/* 1A3ED4 80391E54 00000000 */  nop
/* 1A3ED8 80391E58 45000002 */  bc1f       .L80391E64
/* 1A3EDC 80391E5C 00000000 */   nop
.L80391E60:
/* 1A3EE0 80391E60 E4C00058 */  swc1       $f0, 0x58($a2)
.L80391E64:
/* 1A3EE4 80391E64 84C20072 */  lh         $v0, 0x72($a2)
/* 1A3EE8 80391E68 1440002E */  bnez       $v0, .L80391F24
/* 1A3EEC 80391E6C 00000000 */   nop
/* 1A3EF0 80391E70 C4C00054 */  lwc1       $f0, 0x54($a2)
/* 1A3EF4 80391E74 C4C40058 */  lwc1       $f4, 0x58($a2)
/* 1A3EF8 80391E78 46040001 */  sub.s      $f0, $f0, $f4
/* 1A3EFC 80391E7C 3C014000 */  lui        $at, 0x4000
/* 1A3F00 80391E80 44811000 */  mtc1       $at, $f2
/* 1A3F04 80391E84 00000000 */  nop
/* 1A3F08 80391E88 46020003 */  div.s      $f0, $f0, $f2
/* 1A3F0C 80391E8C C4C20054 */  lwc1       $f2, 0x54($a2)
/* 1A3F10 80391E90 46002100 */  add.s      $f4, $f4, $f0
/* 1A3F14 80391E94 4600100D */  trunc.w.s  $f0, $f2
/* 1A3F18 80391E98 44020000 */  mfc1       $v0, $f0
/* 1A3F1C 80391E9C 00000000 */  nop
/* 1A3F20 80391EA0 A4C2006E */  sh         $v0, 0x6e($a2)
/* 1A3F24 80391EA4 4600200D */  trunc.w.s  $f0, $f4
/* 1A3F28 80391EA8 44020000 */  mfc1       $v0, $f0
/* 1A3F2C 80391EAC 00000000 */  nop
/* 1A3F30 80391EB0 00071C00 */  sll        $v1, $a3, 0x10
/* 1A3F34 80391EB4 00031C03 */  sra        $v1, $v1, 0x10
/* 1A3F38 80391EB8 A4C20070 */  sh         $v0, 0x70($a2)
/* 1A3F3C 80391EBC 2402FF9C */  addiu      $v0, $zero, -0x64
/* 1A3F40 80391EC0 00621026 */  xor        $v0, $v1, $v0
/* 1A3F44 80391EC4 2C420001 */  sltiu      $v0, $v0, 1
/* 1A3F48 80391EC8 0003182A */  slt        $v1, $zero, $v1
/* 1A3F4C 80391ECC 00431025 */  or         $v0, $v0, $v1
/* 1A3F50 80391ED0 10400003 */  beqz       $v0, .L80391EE0
/* 1A3F54 80391ED4 24E20004 */   addiu     $v0, $a3, 4
/* 1A3F58 80391ED8 080E47C7 */  j          .L80391F1C
/* 1A3F5C 80391EDC A4C00072 */   sh        $zero, 0x72($a2)
.L80391EE0:
/* 1A3F60 80391EE0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1A3F64 80391EE4 2C420004 */  sltiu      $v0, $v0, 4
/* 1A3F68 80391EE8 10400003 */  beqz       $v0, .L80391EF8
/* 1A3F6C 80391EEC 24020001 */   addiu     $v0, $zero, 1
/* 1A3F70 80391EF0 080E47C6 */  j          .L80391F18
/* 1A3F74 80391EF4 A4C00072 */   sh        $zero, 0x72($a2)
.L80391EF8:
/* 1A3F78 80391EF8 24E2000A */  addiu      $v0, $a3, 0xa
/* 1A3F7C 80391EFC 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1A3F80 80391F00 2C420006 */  sltiu      $v0, $v0, 6
/* 1A3F84 80391F04 14400002 */  bnez       $v0, .L80391F10
/* 1A3F88 80391F08 24020002 */   addiu     $v0, $zero, 2
/* 1A3F8C 80391F0C 24020004 */  addiu      $v0, $zero, 4
.L80391F10:
/* 1A3F90 80391F10 A4C20072 */  sh         $v0, 0x72($a2)
/* 1A3F94 80391F14 24020001 */  addiu      $v0, $zero, 1
.L80391F18:
/* 1A3F98 80391F18 A0C2006C */  sb         $v0, 0x6c($a2)
.L80391F1C:
/* 1A3F9C 80391F1C 24020002 */  addiu      $v0, $zero, 2
/* 1A3FA0 80391F20 A482001C */  sh         $v0, 0x1c($a0)
.L80391F24:
/* 1A3FA4 80391F24 03E00008 */  jr         $ra
/* 1A3FA8 80391F28 00000000 */   nop

glabel func_80391F2C
/* 1A3FAC 80391F2C 10800005 */  beqz       $a0, .L80391F44
/* 1A3FB0 80391F30 00001021 */   addu      $v0, $zero, $zero
/* 1A3FB4 80391F34 8C820014 */  lw         $v0, 0x14($a0)
/* 1A3FB8 80391F38 C4400054 */  lwc1       $f0, 0x54($v0)
/* 1A3FBC 80391F3C 4600008D */  trunc.w.s  $f2, $f0
/* 1A3FC0 80391F40 44021000 */  mfc1       $v0, $f2
.L80391F44:
/* 1A3FC4 80391F44 00000000 */  nop
/* 1A3FC8 80391F48 03E00008 */  jr         $ra
/* 1A3FCC 80391F4C 00000000 */   nop

glabel func_80391F50_1A3FD0
/* 1A3FD0 80391F50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A3FD4 80391F54 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A3FD8 80391F58 00808021 */  addu       $s0, $a0, $zero
/* 1A3FDC 80391F5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A3FE0 80391F60 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A3FE4 80391F64 8E04000C */  lw         $a0, 0xc($s0)
/* 1A3FE8 80391F68 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A3FEC 80391F6C 8E110014 */  lw         $s1, 0x14($s0)
/* 1A3FF0 80391F70 24020001 */  addiu      $v0, $zero, 1
/* 1A3FF4 80391F74 10620018 */  beq        $v1, $v0, .L80391FD8
/* 1A3FF8 80391F78 28620002 */   slti      $v0, $v1, 2
/* 1A3FFC 80391F7C 50400005 */  beql       $v0, $zero, .L80391F94
/* 1A4000 80391F80 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A4004 80391F84 10600007 */  beqz       $v1, .L80391FA4
/* 1A4008 80391F88 00001021 */   addu      $v0, $zero, $zero
/* 1A400C 80391F8C 080E4809 */  j          .L80392024
/* 1A4010 80391F90 00000000 */   nop
.L80391F94:
/* 1A4014 80391F94 1062001B */  beq        $v1, $v0, .L80392004
/* 1A4018 80391F98 00001021 */   addu      $v0, $zero, $zero
/* 1A401C 80391F9C 080E4809 */  j          .L80392024
/* 1A4020 80391FA0 00000000 */   nop
.L80391FA4:
/* 1A4024 80391FA4 0C032663 */  jal        func_800C998C
/* 1A4028 80391FA8 240400E0 */   addiu     $a0, $zero, 0xe0
/* 1A402C 80391FAC 00402021 */  addu       $a0, $v0, $zero
/* 1A4030 80391FB0 240500E0 */  addiu      $a1, $zero, 0xe0
/* 1A4034 80391FB4 0C030134 */  jal        bzero
/* 1A4038 80391FB8 AE040014 */   sw        $a0, 0x14($s0)
/* 1A403C 80391FBC 8E040014 */  lw         $a0, 0x14($s0)
/* 1A4040 80391FC0 0C0E480F */  jal        func_8039203C_1A40BC
/* 1A4044 80391FC4 00000000 */   nop
/* 1A4048 80391FC8 00001021 */  addu       $v0, $zero, $zero
/* 1A404C 80391FCC 24030001 */  addiu      $v1, $zero, 1
/* 1A4050 80391FD0 080E4809 */  j          .L80392024
/* 1A4054 80391FD4 A603001C */   sh        $v1, 0x1c($s0)
.L80391FD8:
/* 1A4058 80391FD8 0C025C53 */  jal        func_8009714C
/* 1A405C 80391FDC 00000000 */   nop
/* 1A4060 80391FE0 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A4064 80391FE4 14430003 */  bne        $v0, $v1, .L80391FF4
/* 1A4068 80391FE8 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A406C 80391FEC 080E4808 */  j          .L80392020
/* 1A4070 80391FF0 A602001C */   sh        $v0, 0x1c($s0)
.L80391FF4:
/* 1A4074 80391FF4 0C0E48CF */  jal        func_8039233C_1A43BC
/* 1A4078 80391FF8 02202021 */   addu      $a0, $s1, $zero
/* 1A407C 80391FFC 080E4809 */  j          .L80392024
/* 1A4080 80392000 00001021 */   addu      $v0, $zero, $zero
.L80392004:
/* 1A4084 80392004 0C0E489B */  jal        func_8039226C_1A42EC
/* 1A4088 80392008 02202021 */   addu      $a0, $s1, $zero
/* 1A408C 8039200C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A4090 80392010 0C0326A1 */  jal        func_800C9A84
/* 1A4094 80392014 00000000 */   nop
/* 1A4098 80392018 080E4809 */  j          .L80392024
/* 1A409C 8039201C 24020001 */   addiu     $v0, $zero, 1
.L80392020:
/* 1A40A0 80392020 00001021 */  addu       $v0, $zero, $zero
.L80392024:
/* 1A40A4 80392024 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A40A8 80392028 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A40AC 8039202C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A40B0 80392030 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A40B4 80392034 03E00008 */  jr         $ra
/* 1A40B8 80392038 00000000 */   nop

glabel func_8039203C_1A40BC
/* 1A40BC 8039203C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A40C0 80392040 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A40C4 80392044 00809021 */  addu       $s2, $a0, $zero
/* 1A40C8 80392048 240405B8 */  addiu      $a0, $zero, 0x5b8
/* 1A40CC 8039204C 24050006 */  addiu      $a1, $zero, 6
/* 1A40D0 80392050 00003021 */  addu       $a2, $zero, $zero
/* 1A40D4 80392054 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1A40D8 80392058 AFB5002C */  sw         $s5, 0x2c($sp)
/* 1A40DC 8039205C AFB40028 */  sw         $s4, 0x28($sp)
/* 1A40E0 80392060 AFB30024 */  sw         $s3, 0x24($sp)
/* 1A40E4 80392064 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A40E8 80392068 0C028CB7 */  jal        func_800A32DC
/* 1A40EC 8039206C AFB00018 */   sw        $s0, 0x18($sp)
/* 1A40F0 80392070 AE420000 */  sw         $v0, ($s2)
/* 1A40F4 80392074 24020002 */  addiu      $v0, $zero, 2
/* 1A40F8 80392078 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A40FC 8039207C 8E440000 */  lw         $a0, ($s2)
/* 1A4100 80392080 240500FF */  addiu      $a1, $zero, 0xff
/* 1A4104 80392084 240600FF */  addiu      $a2, $zero, 0xff
/* 1A4108 80392088 240700FF */  addiu      $a3, $zero, 0xff
/* 1A410C 8039208C 00008021 */  addu       $s0, $zero, $zero
/* 1A4110 80392090 2415007F */  addiu      $s5, $zero, 0x7f
/* 1A4114 80392094 241400CC */  addiu      $s4, $zero, 0xcc
/* 1A4118 80392098 00009821 */  addu       $s3, $zero, $zero
/* 1A411C 8039209C 0C028E41 */  jal        func_800A3904
/* 1A4120 803920A0 02408821 */   addu      $s1, $s2, $zero
/* 1A4124 803920A4 240405B9 */  addiu      $a0, $zero, 0x5b9
.L803920A8:
/* 1A4128 803920A8 24050001 */  addiu      $a1, $zero, 1
/* 1A412C 803920AC 0C028CB7 */  jal        func_800A32DC
/* 1A4130 803920B0 00003021 */   addu      $a2, $zero, $zero
/* 1A4134 803920B4 AE220004 */  sw         $v0, 4($s1)
/* 1A4138 803920B8 3C04803A */  lui        $a0, %hi(D_8039E690_1B0710)
/* 1A413C 803920BC 00932021 */  addu       $a0, $a0, $s3
/* 1A4140 803920C0 9484E690 */  lhu        $a0, %lo(D_8039E690_1B0710)($a0)
/* 1A4144 803920C4 24050001 */  addiu      $a1, $zero, 1
/* 1A4148 803920C8 00003021 */  addu       $a2, $zero, $zero
/* 1A414C 803920CC 26730006 */  addiu      $s3, $s3, 6
/* 1A4150 803920D0 0C028CB7 */  jal        func_800A32DC
/* 1A4154 803920D4 26100001 */   addiu     $s0, $s0, 1
/* 1A4158 803920D8 AE220028 */  sw         $v0, 0x28($s1)
/* 1A415C 803920DC AFB50010 */  sw         $s5, 0x10($sp)
/* 1A4160 803920E0 8E240004 */  lw         $a0, 4($s1)
/* 1A4164 803920E4 240500FF */  addiu      $a1, $zero, 0xff
/* 1A4168 803920E8 240600FF */  addiu      $a2, $zero, 0xff
/* 1A416C 803920EC 0C028E41 */  jal        func_800A3904
/* 1A4170 803920F0 240700FF */   addiu     $a3, $zero, 0xff
/* 1A4174 803920F4 AFB40010 */  sw         $s4, 0x10($sp)
/* 1A4178 803920F8 8E240028 */  lw         $a0, 0x28($s1)
/* 1A417C 803920FC 240500FF */  addiu      $a1, $zero, 0xff
/* 1A4180 80392100 240600FF */  addiu      $a2, $zero, 0xff
/* 1A4184 80392104 240700FF */  addiu      $a3, $zero, 0xff
/* 1A4188 80392108 0C028E41 */  jal        func_800A3904
/* 1A418C 8039210C 26310004 */   addiu     $s1, $s1, 4
/* 1A4190 80392110 2A020009 */  slti       $v0, $s0, 9
/* 1A4194 80392114 1440FFE4 */  bnez       $v0, .L803920A8
/* 1A4198 80392118 240405B9 */   addiu     $a0, $zero, 0x5b9
/* 1A419C 8039211C 240403D8 */  addiu      $a0, $zero, 0x3d8
/* 1A41A0 80392120 0C0298D4 */  jal        func_800A6350
/* 1A41A4 80392124 00002821 */   addu      $a1, $zero, $zero
/* 1A41A8 80392128 240403D9 */  addiu      $a0, $zero, 0x3d9
/* 1A41AC 8039212C 00002821 */  addu       $a1, $zero, $zero
/* 1A41B0 80392130 0C0298D4 */  jal        func_800A6350
/* 1A41B4 80392134 AE420050 */   sw        $v0, 0x50($s2)
/* 1A41B8 80392138 240403D9 */  addiu      $a0, $zero, 0x3d9
/* 1A41BC 8039213C 00002821 */  addu       $a1, $zero, $zero
/* 1A41C0 80392140 0C0298D4 */  jal        func_800A6350
/* 1A41C4 80392144 AE42004C */   sw        $v0, 0x4c($s2)
/* 1A41C8 80392148 240403DA */  addiu      $a0, $zero, 0x3da
/* 1A41CC 8039214C 00002821 */  addu       $a1, $zero, $zero
/* 1A41D0 80392150 0C0298D4 */  jal        func_800A6350
/* 1A41D4 80392154 AE420054 */   sw        $v0, 0x54($s2)
/* 1A41D8 80392158 240403D3 */  addiu      $a0, $zero, 0x3d3
/* 1A41DC 8039215C 00002821 */  addu       $a1, $zero, $zero
/* 1A41E0 80392160 0C0298D4 */  jal        func_800A6350
/* 1A41E4 80392164 AE420058 */   sw        $v0, 0x58($s2)
/* 1A41E8 80392168 240403D4 */  addiu      $a0, $zero, 0x3d4
/* 1A41EC 8039216C 00002821 */  addu       $a1, $zero, $zero
/* 1A41F0 80392170 0C0298D4 */  jal        func_800A6350
/* 1A41F4 80392174 AE420060 */   sw        $v0, 0x60($s2)
/* 1A41F8 80392178 240403D5 */  addiu      $a0, $zero, 0x3d5
/* 1A41FC 8039217C 00002821 */  addu       $a1, $zero, $zero
/* 1A4200 80392180 0C0298D4 */  jal        func_800A6350
/* 1A4204 80392184 AE42005C */   sw        $v0, 0x5c($s2)
/* 1A4208 80392188 240403D6 */  addiu      $a0, $zero, 0x3d6
/* 1A420C 8039218C 00002821 */  addu       $a1, $zero, $zero
/* 1A4210 80392190 0C0298D4 */  jal        func_800A6350
/* 1A4214 80392194 AE420064 */   sw        $v0, 0x64($s2)
/* 1A4218 80392198 00008021 */  addu       $s0, $zero, $zero
/* 1A421C 8039219C 02408821 */  addu       $s1, $s2, $zero
/* 1A4220 803921A0 AE420068 */  sw         $v0, 0x68($s2)
.L803921A4:
/* 1A4224 803921A4 8E220004 */  lw         $v0, 4($s1)
/* 1A4228 803921A8 8E44004C */  lw         $a0, 0x4c($s2)
/* 1A422C 803921AC 8C450014 */  lw         $a1, 0x14($v0)
/* 1A4230 803921B0 0C03006C */  jal        func_800C01B0
/* 1A4234 803921B4 24060020 */   addiu     $a2, $zero, 0x20
/* 1A4238 803921B8 8E220028 */  lw         $v0, 0x28($s1)
/* 1A423C 803921BC 26100001 */  addiu      $s0, $s0, 1
/* 1A4240 803921C0 8E44005C */  lw         $a0, 0x5c($s2)
/* 1A4244 803921C4 8C450014 */  lw         $a1, 0x14($v0)
/* 1A4248 803921C8 24060020 */  addiu      $a2, $zero, 0x20
/* 1A424C 803921CC 0C03006C */  jal        func_800C01B0
/* 1A4250 803921D0 26310004 */   addiu     $s1, $s1, 4
/* 1A4254 803921D4 2A020009 */  slti       $v0, $s0, 9
/* 1A4258 803921D8 1440FFF2 */  bnez       $v0, .L803921A4
/* 1A425C 803921DC 02401821 */   addu      $v1, $s2, $zero
/* 1A4260 803921E0 00008021 */  addu       $s0, $zero, $zero
.L803921E4:
/* 1A4264 803921E4 AC60006C */  sw         $zero, 0x6c($v1)
/* 1A4268 803921E8 AC600090 */  sw         $zero, 0x90($v1)
/* 1A426C 803921EC 26100001 */  addiu      $s0, $s0, 1
/* 1A4270 803921F0 2A020009 */  slti       $v0, $s0, 9
/* 1A4274 803921F4 1440FFFB */  bnez       $v0, .L803921E4
/* 1A4278 803921F8 24630004 */   addiu     $v1, $v1, 4
/* 1A427C 803921FC 3C014360 */  lui        $at, 0x4360
/* 1A4280 80392200 44810000 */  mtc1       $at, $f0
/* 1A4284 80392204 00000000 */  nop
/* 1A4288 80392208 3C014180 */  lui        $at, 0x4180
/* 1A428C 8039220C 44811000 */  mtc1       $at, $f2
/* 1A4290 80392210 00000000 */  nop
/* 1A4294 80392214 00008021 */  addu       $s0, $zero, $zero
/* 1A4298 80392218 02401821 */  addu       $v1, $s2, $zero
/* 1A429C 8039221C E64000B4 */  swc1       $f0, 0xb4($s2)
/* 1A42A0 80392220 E64200B8 */  swc1       $f2, 0xb8($s2)
.L80392224:
/* 1A42A4 80392224 02501021 */  addu       $v0, $s2, $s0
/* 1A42A8 80392228 A04000BC */  sb         $zero, 0xbc($v0)
/* 1A42AC 8039222C A04000C5 */  sb         $zero, 0xc5($v0)
/* 1A42B0 80392230 A46000CE */  sh         $zero, 0xce($v1)
/* 1A42B4 80392234 26100001 */  addiu      $s0, $s0, 1
/* 1A42B8 80392238 2A020009 */  slti       $v0, $s0, 9
/* 1A42BC 8039223C 1440FFF9 */  bnez       $v0, .L80392224
/* 1A42C0 80392240 24630002 */   addiu     $v1, $v1, 2
/* 1A42C4 80392244 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1A42C8 80392248 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1A42CC 8039224C 8FB40028 */  lw         $s4, 0x28($sp)
/* 1A42D0 80392250 8FB30024 */  lw         $s3, 0x24($sp)
/* 1A42D4 80392254 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A42D8 80392258 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A42DC 8039225C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A42E0 80392260 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1A42E4 80392264 03E00008 */  jr         $ra
/* 1A42E8 80392268 00000000 */   nop

glabel func_8039226C_1A42EC
/* 1A42EC 8039226C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A42F0 80392270 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A42F4 80392274 00809021 */  addu       $s2, $a0, $zero
/* 1A42F8 80392278 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A42FC 8039227C AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4300 80392280 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4304 80392284 8E440000 */  lw         $a0, ($s2)
/* 1A4308 80392288 00008821 */  addu       $s1, $zero, $zero
/* 1A430C 8039228C 0C028D30 */  jal        func_800A34C0
/* 1A4310 80392290 02408021 */   addu      $s0, $s2, $zero
.L80392294:
/* 1A4314 80392294 8E040004 */  lw         $a0, 4($s0)
/* 1A4318 80392298 0C028D30 */  jal        func_800A34C0
/* 1A431C 8039229C 26310001 */   addiu     $s1, $s1, 1
/* 1A4320 803922A0 8E040028 */  lw         $a0, 0x28($s0)
/* 1A4324 803922A4 0C028D30 */  jal        func_800A34C0
/* 1A4328 803922A8 26100004 */   addiu     $s0, $s0, 4
/* 1A432C 803922AC 2A220009 */  slti       $v0, $s1, 9
/* 1A4330 803922B0 1440FFF8 */  bnez       $v0, .L80392294
/* 1A4334 803922B4 00000000 */   nop
/* 1A4338 803922B8 00008821 */  addu       $s1, $zero, $zero
/* 1A433C 803922BC 02408021 */  addu       $s0, $s2, $zero
.L803922C0:
/* 1A4340 803922C0 8E04004C */  lw         $a0, 0x4c($s0)
/* 1A4344 803922C4 0C0326A1 */  jal        func_800C9A84
/* 1A4348 803922C8 26310001 */   addiu     $s1, $s1, 1
/* 1A434C 803922CC 8E04005C */  lw         $a0, 0x5c($s0)
/* 1A4350 803922D0 0C0326A1 */  jal        func_800C9A84
/* 1A4354 803922D4 26100004 */   addiu     $s0, $s0, 4
/* 1A4358 803922D8 2A220004 */  slti       $v0, $s1, 4
/* 1A435C 803922DC 1440FFF8 */  bnez       $v0, .L803922C0
/* 1A4360 803922E0 00000000 */   nop
/* 1A4364 803922E4 00008821 */  addu       $s1, $zero, $zero
/* 1A4368 803922E8 02408021 */  addu       $s0, $s2, $zero
.L803922EC:
/* 1A436C 803922EC 8E04006C */  lw         $a0, 0x6c($s0)
/* 1A4370 803922F0 10800003 */  beqz       $a0, .L80392300
/* 1A4374 803922F4 00000000 */   nop
/* 1A4378 803922F8 0C025D58 */  jal        func_80097560
/* 1A437C 803922FC 00000000 */   nop
.L80392300:
/* 1A4380 80392300 8E040090 */  lw         $a0, 0x90($s0)
/* 1A4384 80392304 10800003 */  beqz       $a0, .L80392314
/* 1A4388 80392308 26310001 */   addiu     $s1, $s1, 1
/* 1A438C 8039230C 0C025D58 */  jal        func_80097560
/* 1A4390 80392310 00000000 */   nop
.L80392314:
/* 1A4394 80392314 2A220009 */  slti       $v0, $s1, 9
/* 1A4398 80392318 1440FFF4 */  bnez       $v0, .L803922EC
/* 1A439C 8039231C 26100004 */   addiu     $s0, $s0, 4
/* 1A43A0 80392320 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A43A4 80392324 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A43A8 80392328 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A43AC 8039232C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A43B0 80392330 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A43B4 80392334 03E00008 */  jr         $ra
/* 1A43B8 80392338 00000000 */   nop

glabel func_8039233C_1A43BC
/* 1A43BC 8039233C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A43C0 80392340 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A43C4 80392344 00808821 */  addu       $s1, $a0, $zero
/* 1A43C8 80392348 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1A43CC 8039234C AFB5002C */  sw         $s5, 0x2c($sp)
/* 1A43D0 80392350 AFB40028 */  sw         $s4, 0x28($sp)
/* 1A43D4 80392354 AFB30024 */  sw         $s3, 0x24($sp)
/* 1A43D8 80392358 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A43DC 8039235C AFB00018 */  sw         $s0, 0x18($sp)
/* 1A43E0 80392360 8E240000 */  lw         $a0, ($s1)
/* 1A43E4 80392364 00009021 */  addu       $s2, $zero, $zero
/* 1A43E8 80392368 3C10803A */  lui        $s0, %hi(D_8039E694_1B0714)
/* 1A43EC 8039236C 2610E694 */  addiu      $s0, $s0, %lo(D_8039E694_1B0714)
/* 1A43F0 80392370 C62000B4 */  lwc1       $f0, 0xb4($s1)
/* 1A43F4 80392374 2614FFFE */  addiu      $s4, $s0, -2
/* 1A43F8 80392378 02209821 */  addu       $s3, $s1, $zero
/* 1A43FC 8039237C 4600008D */  trunc.w.s  $f2, $f0
/* 1A4400 80392380 44051000 */  mfc1       $a1, $f2
/* 1A4404 80392384 00000000 */  nop
/* 1A4408 80392388 24A5FFFE */  addiu      $a1, $a1, -2
/* 1A440C 8039238C C62000B8 */  lwc1       $f0, 0xb8($s1)
/* 1A4410 80392390 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4414 80392394 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4418 80392398 4600008D */  trunc.w.s  $f2, $f0
/* 1A441C 8039239C 44061000 */  mfc1       $a2, $f2
/* 1A4420 803923A0 00000000 */  nop
/* 1A4424 803923A4 24C6FFFE */  addiu      $a2, $a2, -2
/* 1A4428 803923A8 00063480 */  sll        $a2, $a2, 0x12
/* 1A442C 803923AC 0C028D89 */  jal        func_800A3624
/* 1A4430 803923B0 00063403 */   sra       $a2, $a2, 0x10
.L803923B4:
/* 1A4434 803923B4 8E640004 */  lw         $a0, 4($s3)
/* 1A4438 803923B8 C62000B4 */  lwc1       $f0, 0xb4($s1)
/* 1A443C 803923BC 96820000 */  lhu        $v0, ($s4)
/* 1A4440 803923C0 26520001 */  addiu      $s2, $s2, 1
/* 1A4444 803923C4 4600008D */  trunc.w.s  $f2, $f0
/* 1A4448 803923C8 44051000 */  mfc1       $a1, $f2
/* 1A444C 803923CC 00000000 */  nop
/* 1A4450 803923D0 00A22821 */  addu       $a1, $a1, $v0
/* 1A4454 803923D4 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4458 803923D8 C62000B8 */  lwc1       $f0, 0xb8($s1)
/* 1A445C 803923DC 96020000 */  lhu        $v0, ($s0)
/* 1A4460 803923E0 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4464 803923E4 4600008D */  trunc.w.s  $f2, $f0
/* 1A4468 803923E8 44061000 */  mfc1       $a2, $f2
/* 1A446C 803923EC 00000000 */  nop
/* 1A4470 803923F0 00C23021 */  addu       $a2, $a2, $v0
/* 1A4474 803923F4 00063480 */  sll        $a2, $a2, 0x12
/* 1A4478 803923F8 0C028D89 */  jal        func_800A3624
/* 1A447C 803923FC 00063403 */   sra       $a2, $a2, 0x10
/* 1A4480 80392400 8E640028 */  lw         $a0, 0x28($s3)
/* 1A4484 80392404 96030000 */  lhu        $v1, ($s0)
/* 1A4488 80392408 26100006 */  addiu      $s0, $s0, 6
/* 1A448C 8039240C C62000B4 */  lwc1       $f0, 0xb4($s1)
/* 1A4490 80392410 96820000 */  lhu        $v0, ($s4)
/* 1A4494 80392414 26940006 */  addiu      $s4, $s4, 6
/* 1A4498 80392418 26730004 */  addiu      $s3, $s3, 4
/* 1A449C 8039241C 4600008D */  trunc.w.s  $f2, $f0
/* 1A44A0 80392420 44051000 */  mfc1       $a1, $f2
/* 1A44A4 80392424 00000000 */  nop
/* 1A44A8 80392428 00A22821 */  addu       $a1, $a1, $v0
/* 1A44AC 8039242C C62000B8 */  lwc1       $f0, 0xb8($s1)
/* 1A44B0 80392430 00052C80 */  sll        $a1, $a1, 0x12
/* 1A44B4 80392434 00052C03 */  sra        $a1, $a1, 0x10
/* 1A44B8 80392438 4600008D */  trunc.w.s  $f2, $f0
/* 1A44BC 8039243C 44061000 */  mfc1       $a2, $f2
/* 1A44C0 80392440 00000000 */  nop
/* 1A44C4 80392444 00C33021 */  addu       $a2, $a2, $v1
/* 1A44C8 80392448 24C6FFFE */  addiu      $a2, $a2, -2
/* 1A44CC 8039244C 00063480 */  sll        $a2, $a2, 0x12
/* 1A44D0 80392450 0C028D89 */  jal        func_800A3624
/* 1A44D4 80392454 00063403 */   sra       $a2, $a2, 0x10
/* 1A44D8 80392458 2A420009 */  slti       $v0, $s2, 9
/* 1A44DC 8039245C 1440FFD5 */  bnez       $v0, .L803923B4
/* 1A44E0 80392460 24150003 */   addiu     $s5, $zero, 3
/* 1A44E4 80392464 00009021 */  addu       $s2, $zero, $zero
/* 1A44E8 80392468 0220A021 */  addu       $s4, $s1, $zero
/* 1A44EC 8039246C 02209821 */  addu       $s3, $s1, $zero
.L80392470:
/* 1A44F0 80392470 02328021 */  addu       $s0, $s1, $s2
/* 1A44F4 80392474 920200BC */  lbu        $v0, 0xbc($s0)
/* 1A44F8 80392478 5455001C */  bnel       $v0, $s5, .L803924EC
/* 1A44FC 8039247C 26940004 */   addiu     $s4, $s4, 4
/* 1A4500 80392480 866200CE */  lh         $v0, 0xce($s3)
/* 1A4504 80392484 10400018 */  beqz       $v0, .L803924E8
/* 1A4508 80392488 00401821 */   addu      $v1, $v0, $zero
/* 1A450C 8039248C 2462FFFF */  addiu      $v0, $v1, -1
/* 1A4510 80392490 A66200CE */  sh         $v0, 0xce($s3)
/* 1A4514 80392494 00021400 */  sll        $v0, $v0, 0x10
/* 1A4518 80392498 54400014 */  bnezl      $v0, .L803924EC
/* 1A451C 8039249C 26940004 */   addiu     $s4, $s4, 4
/* 1A4520 803924A0 920200C5 */  lbu        $v0, 0xc5($s0)
/* 1A4524 803924A4 8E830004 */  lw         $v1, 4($s4)
/* 1A4528 803924A8 00021080 */  sll        $v0, $v0, 2
/* 1A452C 803924AC 00511021 */  addu       $v0, $v0, $s1
/* 1A4530 803924B0 8C44004C */  lw         $a0, 0x4c($v0)
/* 1A4534 803924B4 8C650014 */  lw         $a1, 0x14($v1)
/* 1A4538 803924B8 0C03006C */  jal        func_800C01B0
/* 1A453C 803924BC 24060020 */   addiu     $a2, $zero, 0x20
/* 1A4540 803924C0 920200C5 */  lbu        $v0, 0xc5($s0)
/* 1A4544 803924C4 8E830028 */  lw         $v1, 0x28($s4)
/* 1A4548 803924C8 00021080 */  sll        $v0, $v0, 2
/* 1A454C 803924CC 00511021 */  addu       $v0, $v0, $s1
/* 1A4550 803924D0 8C44005C */  lw         $a0, 0x5c($v0)
/* 1A4554 803924D4 8C650014 */  lw         $a1, 0x14($v1)
/* 1A4558 803924D8 0C03006C */  jal        func_800C01B0
/* 1A455C 803924DC 24060020 */   addiu     $a2, $zero, 0x20
/* 1A4560 803924E0 920200C5 */  lbu        $v0, 0xc5($s0)
/* 1A4564 803924E4 A20200BC */  sb         $v0, 0xbc($s0)
.L803924E8:
/* 1A4568 803924E8 26940004 */  addiu      $s4, $s4, 4
.L803924EC:
/* 1A456C 803924EC 26520001 */  addiu      $s2, $s2, 1
/* 1A4570 803924F0 2A420009 */  slti       $v0, $s2, 9
/* 1A4574 803924F4 1440FFDE */  bnez       $v0, .L80392470
/* 1A4578 803924F8 26730002 */   addiu     $s3, $s3, 2
/* 1A457C 803924FC 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A4580 80392500 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A4584 80392504 1040000D */  beqz       $v0, .L8039253C
/* 1A4588 80392508 00009021 */   addu      $s2, $zero, $zero
/* 1A458C 8039250C 8E240000 */  lw         $a0, ($s1)
/* 1A4590 80392510 0C028A40 */  jal        func_800A2900
/* 1A4594 80392514 02208021 */   addu      $s0, $s1, $zero
.L80392518:
/* 1A4598 80392518 8E040004 */  lw         $a0, 4($s0)
/* 1A459C 8039251C 0C028A40 */  jal        func_800A2900
/* 1A45A0 80392520 26520001 */   addiu     $s2, $s2, 1
/* 1A45A4 80392524 8E040028 */  lw         $a0, 0x28($s0)
/* 1A45A8 80392528 0C028A40 */  jal        func_800A2900
/* 1A45AC 8039252C 26100004 */   addiu     $s0, $s0, 4
/* 1A45B0 80392530 2A420009 */  slti       $v0, $s2, 9
/* 1A45B4 80392534 1440FFF8 */  bnez       $v0, .L80392518
/* 1A45B8 80392538 00000000 */   nop
.L8039253C:
/* 1A45BC 8039253C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1A45C0 80392540 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1A45C4 80392544 8FB40028 */  lw         $s4, 0x28($sp)
/* 1A45C8 80392548 8FB30024 */  lw         $s3, 0x24($sp)
/* 1A45CC 8039254C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A45D0 80392550 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A45D4 80392554 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A45D8 80392558 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1A45DC 8039255C 03E00008 */  jr         $ra
/* 1A45E0 80392560 00000000 */   nop

glabel func_80392564
/* 1A45E4 80392564 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1A45E8 80392568 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A45EC 8039256C 00A08821 */  addu       $s1, $a1, $zero
/* 1A45F0 80392570 AFB30024 */  sw         $s3, 0x24($sp)
/* 1A45F4 80392574 00C09821 */  addu       $s3, $a2, $zero
/* 1A45F8 80392578 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1A45FC 8039257C AFB40028 */  sw         $s4, 0x28($sp)
/* 1A4600 80392580 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A4604 80392584 10800047 */  beqz       $a0, .L803926A4
/* 1A4608 80392588 AFB00018 */   sw        $s0, 0x18($sp)
/* 1A460C 8039258C 8C940014 */  lw         $s4, 0x14($a0)
/* 1A4610 80392590 2A220009 */  slti       $v0, $s1, 9
/* 1A4614 80392594 14400003 */  bnez       $v0, .L803925A4
/* 1A4618 80392598 00111027 */   nor       $v0, $zero, $s1
/* 1A461C 8039259C 080E496B */  j          .L803925AC
/* 1A4620 803925A0 24110008 */   addiu     $s1, $zero, 8
.L803925A4:
/* 1A4624 803925A4 000217C3 */  sra        $v0, $v0, 0x1f
/* 1A4628 803925A8 02228824 */  and        $s1, $s1, $v0
.L803925AC:
/* 1A462C 803925AC 2A620004 */  slti       $v0, $s3, 4
/* 1A4630 803925B0 14400003 */  bnez       $v0, .L803925C0
/* 1A4634 803925B4 00131027 */   nor       $v0, $zero, $s3
/* 1A4638 803925B8 080E4972 */  j          .L803925C8
/* 1A463C 803925BC 24130003 */   addiu     $s3, $zero, 3
.L803925C0:
/* 1A4640 803925C0 000217C3 */  sra        $v0, $v0, 0x1f
/* 1A4644 803925C4 02629824 */  and        $s3, $s3, $v0
.L803925C8:
/* 1A4648 803925C8 24020003 */  addiu      $v0, $zero, 3
/* 1A464C 803925CC 16620017 */  bne        $s3, $v0, .L8039262C
/* 1A4650 803925D0 00111080 */   sll       $v0, $s1, 2
/* 1A4654 803925D4 02919021 */  addu       $s2, $s4, $s1
/* 1A4658 803925D8 924200BC */  lbu        $v0, 0xbc($s2)
/* 1A465C 803925DC 10530031 */  beq        $v0, $s3, .L803926A4
/* 1A4660 803925E0 00118080 */   sll       $s0, $s1, 2
/* 1A4664 803925E4 02148021 */  addu       $s0, $s0, $s4
/* 1A4668 803925E8 8E020004 */  lw         $v0, 4($s0)
/* 1A466C 803925EC 8E840058 */  lw         $a0, 0x58($s4)
/* 1A4670 803925F0 8C450014 */  lw         $a1, 0x14($v0)
/* 1A4674 803925F4 0C03006C */  jal        func_800C01B0
/* 1A4678 803925F8 24060020 */   addiu     $a2, $zero, 0x20
/* 1A467C 803925FC 8E020028 */  lw         $v0, 0x28($s0)
/* 1A4680 80392600 8E840068 */  lw         $a0, 0x68($s4)
/* 1A4684 80392604 8C450014 */  lw         $a1, 0x14($v0)
/* 1A4688 80392608 0C03006C */  jal        func_800C01B0
/* 1A468C 8039260C 24060020 */   addiu     $a2, $zero, 0x20
/* 1A4690 80392610 924200BC */  lbu        $v0, 0xbc($s2)
/* 1A4694 80392614 24030002 */  addiu      $v1, $zero, 2
/* 1A4698 80392618 A24200C5 */  sb         $v0, 0xc5($s2)
/* 1A469C 8039261C 00111040 */  sll        $v0, $s1, 1
/* 1A46A0 80392620 00541021 */  addu       $v0, $v0, $s4
/* 1A46A4 80392624 080E49A7 */  j          .L8039269C
/* 1A46A8 80392628 A44300CE */   sh        $v1, 0xce($v0)
.L8039262C:
/* 1A46AC 8039262C 00548021 */  addu       $s0, $v0, $s4
/* 1A46B0 80392630 8E04006C */  lw         $a0, 0x6c($s0)
/* 1A46B4 80392634 10800003 */  beqz       $a0, .L80392644
/* 1A46B8 80392638 00000000 */   nop
/* 1A46BC 8039263C 0C025D58 */  jal        func_80097560
/* 1A46C0 80392640 00000000 */   nop
.L80392644:
/* 1A46C4 80392644 8E030004 */  lw         $v1, 4($s0)
/* 1A46C8 80392648 00131080 */  sll        $v0, $s3, 2
/* 1A46CC 8039264C 00549021 */  addu       $s2, $v0, $s4
/* 1A46D0 80392650 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A46D4 80392654 8E45004C */  lw         $a1, 0x4c($s2)
/* 1A46D8 80392658 8C640014 */  lw         $a0, 0x14($v1)
/* 1A46DC 8039265C 24060010 */  addiu      $a2, $zero, 0x10
/* 1A46E0 80392660 0C029A39 */  jal        func_800A68E4
/* 1A46E4 80392664 2407000A */   addiu     $a3, $zero, 0xa
/* 1A46E8 80392668 8E040090 */  lw         $a0, 0x90($s0)
/* 1A46EC 8039266C 10800003 */  beqz       $a0, .L8039267C
/* 1A46F0 80392670 AE02006C */   sw        $v0, 0x6c($s0)
/* 1A46F4 80392674 0C025D58 */  jal        func_80097560
/* 1A46F8 80392678 00000000 */   nop
.L8039267C:
/* 1A46FC 8039267C 8E020028 */  lw         $v0, 0x28($s0)
/* 1A4700 80392680 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A4704 80392684 8E45005C */  lw         $a1, 0x5c($s2)
/* 1A4708 80392688 8C440014 */  lw         $a0, 0x14($v0)
/* 1A470C 8039268C 24060010 */  addiu      $a2, $zero, 0x10
/* 1A4710 80392690 0C029A39 */  jal        func_800A68E4
/* 1A4714 80392694 2407000A */   addiu     $a3, $zero, 0xa
/* 1A4718 80392698 AE020090 */  sw         $v0, 0x90($s0)
.L8039269C:
/* 1A471C 8039269C 02911021 */  addu       $v0, $s4, $s1
/* 1A4720 803926A0 A05300BC */  sb         $s3, 0xbc($v0)
.L803926A4:
/* 1A4724 803926A4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1A4728 803926A8 8FB40028 */  lw         $s4, 0x28($sp)
/* 1A472C 803926AC 8FB30024 */  lw         $s3, 0x24($sp)
/* 1A4730 803926B0 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A4734 803926B4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A4738 803926B8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A473C 803926BC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1A4740 803926C0 03E00008 */  jr         $ra
/* 1A4744 803926C4 00000000 */   nop
/* 1A4748 803926C8 00000000 */  nop
/* 1A474C 803926CC 00000000 */  nop

glabel func_803926D0_1A4750
/* 1A4750 803926D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A4754 803926D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4758 803926D8 00808021 */  addu       $s0, $a0, $zero
/* 1A475C 803926DC AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A4760 803926E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A4764 803926E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4768 803926E8 8E12000C */  lw         $s2, 0xc($s0)
/* 1A476C 803926EC 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A4770 803926F0 8E110014 */  lw         $s1, 0x14($s0)
/* 1A4774 803926F4 24020003 */  addiu      $v0, $zero, 3
/* 1A4778 803926F8 1062003C */  beq        $v1, $v0, .L803927EC
/* 1A477C 803926FC 28620004 */   slti      $v0, $v1, 4
/* 1A4780 80392700 10400009 */  beqz       $v0, .L80392728
/* 1A4784 80392704 24020001 */   addiu     $v0, $zero, 1
/* 1A4788 80392708 1062001D */  beq        $v1, $v0, .L80392780
/* 1A478C 8039270C 28620002 */   slti      $v0, $v1, 2
/* 1A4790 80392710 1040002A */  beqz       $v0, .L803927BC
/* 1A4794 80392714 00000000 */   nop
/* 1A4798 80392718 1060000C */  beqz       $v1, .L8039274C
/* 1A479C 8039271C 00001021 */   addu      $v0, $zero, $zero
/* 1A47A0 80392720 080E4A26 */  j          .L80392898
/* 1A47A4 80392724 00000000 */   nop
.L80392728:
/* 1A47A8 80392728 24020005 */  addiu      $v0, $zero, 5
/* 1A47AC 8039272C 1062004B */  beq        $v1, $v0, .L8039285C
/* 1A47B0 80392730 28620005 */   slti      $v0, $v1, 5
/* 1A47B4 80392734 14400036 */  bnez       $v0, .L80392810
/* 1A47B8 80392738 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A47BC 8039273C 1062004E */  beq        $v1, $v0, .L80392878
/* 1A47C0 80392740 00001021 */   addu      $v0, $zero, $zero
/* 1A47C4 80392744 080E4A26 */  j          .L80392898
/* 1A47C8 80392748 00000000 */   nop
.L8039274C:
/* 1A47CC 8039274C 0C032663 */  jal        func_800C998C
/* 1A47D0 80392750 24040040 */   addiu     $a0, $zero, 0x40
/* 1A47D4 80392754 00402021 */  addu       $a0, $v0, $zero
/* 1A47D8 80392758 24050040 */  addiu      $a1, $zero, 0x40
/* 1A47DC 8039275C 0C030134 */  jal        bzero
/* 1A47E0 80392760 AE040014 */   sw        $a0, 0x14($s0)
/* 1A47E4 80392764 8E040014 */  lw         $a0, 0x14($s0)
/* 1A47E8 80392768 0C0E4A2D */  jal        func_803928B4_1A4934
/* 1A47EC 8039276C 00000000 */   nop
/* 1A47F0 80392770 00001021 */  addu       $v0, $zero, $zero
/* 1A47F4 80392774 24030001 */  addiu      $v1, $zero, 1
/* 1A47F8 80392778 080E4A26 */  j          .L80392898
/* 1A47FC 8039277C A603001C */   sh        $v1, 0x1c($s0)
.L80392780:
/* 1A4800 80392780 0C025C53 */  jal        func_8009714C
/* 1A4804 80392784 02402021 */   addu      $a0, $s2, $zero
/* 1A4808 80392788 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A480C 8039278C 14430003 */  bne        $v0, $v1, .L8039279C
/* 1A4810 80392790 3402FFFF */   ori       $v0, $zero, 0xffff
.L80392794:
/* 1A4814 80392794 080E4A25 */  j          .L80392894
/* 1A4818 80392798 A602001C */   sh        $v0, 0x1c($s0)
.L8039279C:
/* 1A481C 8039279C 9222003B */  lbu        $v0, 0x3b($s1)
/* 1A4820 803927A0 10400002 */  beqz       $v0, .L803927AC
/* 1A4824 803927A4 24020002 */   addiu     $v0, $zero, 2
/* 1A4828 803927A8 A602001C */  sh         $v0, 0x1c($s0)
.L803927AC:
/* 1A482C 803927AC 0C0E4AB4 */  jal        func_80392AD0_1A4B50
/* 1A4830 803927B0 02202021 */   addu      $a0, $s1, $zero
/* 1A4834 803927B4 080E4A26 */  j          .L80392898
/* 1A4838 803927B8 00001021 */   addu      $v0, $zero, $zero
.L803927BC:
/* 1A483C 803927BC 0C025C53 */  jal        func_8009714C
/* 1A4840 803927C0 02402021 */   addu      $a0, $s2, $zero
/* 1A4844 803927C4 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A4848 803927C8 1043FFF2 */  beq        $v0, $v1, .L80392794
/* 1A484C 803927CC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A4850 803927D0 0C0E4B40 */  jal        func_80392D00_1A4D80
/* 1A4854 803927D4 02202021 */   addu      $a0, $s1, $zero
/* 1A4858 803927D8 0C0E4AB4 */  jal        func_80392AD0_1A4B50
/* 1A485C 803927DC 02202021 */   addu      $a0, $s1, $zero
/* 1A4860 803927E0 24020003 */  addiu      $v0, $zero, 3
/* 1A4864 803927E4 080E4A25 */  j          .L80392894
/* 1A4868 803927E8 A602001C */   sh        $v0, 0x1c($s0)
.L803927EC:
/* 1A486C 803927EC 0C025C53 */  jal        func_8009714C
/* 1A4870 803927F0 02402021 */   addu      $a0, $s2, $zero
/* 1A4874 803927F4 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A4878 803927F8 1043FFE6 */  beq        $v0, $v1, .L80392794
/* 1A487C 803927FC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A4880 80392800 0C0E4B56 */  jal        func_80392D58_1A4DD8
/* 1A4884 80392804 02202021 */   addu      $a0, $s1, $zero
/* 1A4888 80392808 24020004 */  addiu      $v0, $zero, 4
/* 1A488C 8039280C A602001C */  sh         $v0, 0x1c($s0)
.L80392810:
/* 1A4890 80392810 0C025C53 */  jal        func_8009714C
/* 1A4894 80392814 02402021 */   addu      $a0, $s2, $zero
/* 1A4898 80392818 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A489C 8039281C 1043FFDD */  beq        $v0, $v1, .L80392794
/* 1A48A0 80392820 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A48A4 80392824 0C0E4B99 */  jal        func_80392E64_1A4EE4
/* 1A48A8 80392828 02202021 */   addu      $a0, $s1, $zero
/* 1A48AC 8039282C 1040FFDF */  beqz       $v0, .L803927AC
/* 1A48B0 80392830 2404002E */   addiu     $a0, $zero, 0x2e
/* 1A48B4 80392834 24020005 */  addiu      $v0, $zero, 5
/* 1A48B8 80392838 0C026DD5 */  jal        func_8009B754
/* 1A48BC 8039283C A602001C */   sh        $v0, 0x1c($s0)
/* 1A48C0 80392840 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* 1A48C4 80392844 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* 1A48C8 80392848 24050002 */  addiu      $a1, $zero, 2
/* 1A48CC 8039284C 0C0E5AB3 */  jal        func_80396ACC
/* 1A48D0 80392850 24060020 */   addiu     $a2, $zero, 0x20
/* 1A48D4 80392854 080E49EB */  j          .L803927AC
/* 1A48D8 80392858 00000000 */   nop
.L8039285C:
/* 1A48DC 8039285C 0C025C53 */  jal        func_8009714C
/* 1A48E0 80392860 02402021 */   addu      $a0, $s2, $zero
/* 1A48E4 80392864 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A48E8 80392868 1043FFCA */  beq        $v0, $v1, .L80392794
/* 1A48EC 8039286C 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A48F0 80392870 080E49EB */  j          .L803927AC
/* 1A48F4 80392874 00000000 */   nop
.L80392878:
/* 1A48F8 80392878 0C0E4A85 */  jal        func_80392A14_1A4A94
/* 1A48FC 8039287C 02202021 */   addu      $a0, $s1, $zero
/* 1A4900 80392880 8E040014 */  lw         $a0, 0x14($s0)
/* 1A4904 80392884 0C0326A1 */  jal        func_800C9A84
/* 1A4908 80392888 00000000 */   nop
/* 1A490C 8039288C 080E4A26 */  j          .L80392898
/* 1A4910 80392890 24020001 */   addiu     $v0, $zero, 1
.L80392894:
/* 1A4914 80392894 00001021 */  addu       $v0, $zero, $zero
.L80392898:
/* 1A4918 80392898 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A491C 8039289C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A4920 803928A0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A4924 803928A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4928 803928A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A492C 803928AC 03E00008 */  jr         $ra
/* 1A4930 803928B0 00000000 */   nop

glabel func_803928B4_1A4934
/* 1A4934 803928B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A4938 803928B8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A493C 803928BC 00809021 */  addu       $s2, $a0, $zero
/* 1A4940 803928C0 2404059E */  addiu      $a0, $zero, 0x59e
/* 1A4944 803928C4 24050005 */  addiu      $a1, $zero, 5
/* 1A4948 803928C8 00003021 */  addu       $a2, $zero, $zero
/* 1A494C 803928CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A4950 803928D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4954 803928D4 0C028CB7 */  jal        func_800A32DC
/* 1A4958 803928D8 AFB00010 */   sw        $s0, 0x10($sp)
/* 1A495C 803928DC 240405A1 */  addiu      $a0, $zero, 0x5a1
/* 1A4960 803928E0 240503C4 */  addiu      $a1, $zero, 0x3c4
/* 1A4964 803928E4 24060005 */  addiu      $a2, $zero, 5
/* 1A4968 803928E8 00003821 */  addu       $a3, $zero, $zero
/* 1A496C 803928EC 0C028CC9 */  jal        func_800A3324
/* 1A4970 803928F0 AE420000 */   sw        $v0, ($s2)
/* 1A4974 803928F4 00008021 */  addu       $s0, $zero, $zero
/* 1A4978 803928F8 02408821 */  addu       $s1, $s2, $zero
/* 1A497C 803928FC AE420004 */  sw         $v0, 4($s2)
.L80392900:
/* 1A4980 80392900 2404059F */  addiu      $a0, $zero, 0x59f
/* 1A4984 80392904 00002821 */  addu       $a1, $zero, $zero
/* 1A4988 80392908 0C028CB7 */  jal        func_800A32DC
/* 1A498C 8039290C 00003021 */   addu      $a2, $zero, $zero
/* 1A4990 80392910 AE220008 */  sw         $v0, 8($s1)
/* 1A4994 80392914 26100001 */  addiu      $s0, $s0, 1
/* 1A4998 80392918 2A020003 */  slti       $v0, $s0, 3
/* 1A499C 8039291C 1440FFF8 */  bnez       $v0, .L80392900
/* 1A49A0 80392920 26310004 */   addiu     $s1, $s1, 4
/* 1A49A4 80392924 00008021 */  addu       $s0, $zero, $zero
/* 1A49A8 80392928 02408821 */  addu       $s1, $s2, $zero
.L8039292C:
/* 1A49AC 8039292C 240405A0 */  addiu      $a0, $zero, 0x5a0
/* 1A49B0 80392930 00002821 */  addu       $a1, $zero, $zero
/* 1A49B4 80392934 0C028CB7 */  jal        func_800A32DC
/* 1A49B8 80392938 00003021 */   addu      $a2, $zero, $zero
/* 1A49BC 8039293C AE220014 */  sw         $v0, 0x14($s1)
/* 1A49C0 80392940 26100001 */  addiu      $s0, $s0, 1
/* 1A49C4 80392944 2A020002 */  slti       $v0, $s0, 2
/* 1A49C8 80392948 1440FFF8 */  bnez       $v0, .L8039292C
/* 1A49CC 8039294C 26310004 */   addiu     $s1, $s1, 4
/* 1A49D0 80392950 240403C5 */  addiu      $a0, $zero, 0x3c5
/* 1A49D4 80392954 0C0298D4 */  jal        func_800A6350
/* 1A49D8 80392958 00002821 */   addu      $a1, $zero, $zero
/* 1A49DC 8039295C 240403C6 */  addiu      $a0, $zero, 0x3c6
/* 1A49E0 80392960 00002821 */  addu       $a1, $zero, $zero
/* 1A49E4 80392964 0C0298D4 */  jal        func_800A6350
/* 1A49E8 80392968 AE42001C */   sw        $v0, 0x1c($s2)
/* 1A49EC 8039296C 240403C7 */  addiu      $a0, $zero, 0x3c7
/* 1A49F0 80392970 00002821 */  addu       $a1, $zero, $zero
/* 1A49F4 80392974 0C0298D4 */  jal        func_800A6350
/* 1A49F8 80392978 AE420020 */   sw        $v0, 0x20($s2)
/* 1A49FC 8039297C 24040395 */  addiu      $a0, $zero, 0x395
/* 1A4A00 80392980 00002821 */  addu       $a1, $zero, $zero
/* 1A4A04 80392984 0C0298D4 */  jal        func_800A6350
/* 1A4A08 80392988 AE420024 */   sw        $v0, 0x24($s2)
/* 1A4A0C 8039298C 8E430000 */  lw         $v1, ($s2)
/* 1A4A10 80392990 3C014341 */  lui        $at, 0x4341
/* 1A4A14 80392994 44810000 */  mtc1       $at, $f0
/* 1A4A18 80392998 00000000 */  nop
/* 1A4A1C 8039299C 3C014330 */  lui        $at, 0x4330
/* 1A4A20 803929A0 44811000 */  mtc1       $at, $f2
/* 1A4A24 803929A4 00000000 */  nop
/* 1A4A28 803929A8 AE420028 */  sw         $v0, 0x28($s2)
/* 1A4A2C 803929AC 8C630014 */  lw         $v1, 0x14($v1)
/* 1A4A30 803929B0 24020843 */  addiu      $v0, $zero, 0x843
/* 1A4A34 803929B4 A4620000 */  sh         $v0, ($v1)
/* 1A4A38 803929B8 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A4A3C 803929BC 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A4A40 803929C0 E640002C */  swc1       $f0, 0x2c($s2)
/* 1A4A44 803929C4 E6420030 */  swc1       $f2, 0x30($s2)
/* 1A4A48 803929C8 A2400038 */  sb         $zero, 0x38($s2)
/* 1A4A4C 803929CC A2400039 */  sb         $zero, 0x39($s2)
/* 1A4A50 803929D0 A240003A */  sb         $zero, 0x3a($s2)
/* 1A4A54 803929D4 A240003B */  sb         $zero, 0x3b($s2)
/* 1A4A58 803929D8 A240003C */  sb         $zero, 0x3c($s2)
/* 1A4A5C 803929DC A240003D */  sb         $zero, 0x3d($s2)
/* 1A4A60 803929E0 00021880 */  sll        $v1, $v0, 2
/* 1A4A64 803929E4 00621821 */  addu       $v1, $v1, $v0
/* 1A4A68 803929E8 00031100 */  sll        $v0, $v1, 4
/* 1A4A6C 803929EC 00431023 */  subu       $v0, $v0, $v1
/* 1A4A70 803929F0 00021080 */  sll        $v0, $v0, 2
/* 1A4A74 803929F4 AE420034 */  sw         $v0, 0x34($s2)
/* 1A4A78 803929F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A4A7C 803929FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A4A80 80392A00 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A4A84 80392A04 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4A88 80392A08 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A4A8C 80392A0C 03E00008 */  jr         $ra
/* 1A4A90 80392A10 00000000 */   nop

glabel func_80392A14_1A4A94
/* 1A4A94 80392A14 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A4A98 80392A18 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A4A9C 80392A1C 00809021 */  addu       $s2, $a0, $zero
/* 1A4AA0 80392A20 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A4AA4 80392A24 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4AA8 80392A28 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4AAC 80392A2C 8E440000 */  lw         $a0, ($s2)
/* 1A4AB0 80392A30 0C028D30 */  jal        func_800A34C0
/* 1A4AB4 80392A34 00008021 */   addu      $s0, $zero, $zero
/* 1A4AB8 80392A38 8E440004 */  lw         $a0, 4($s2)
/* 1A4ABC 80392A3C 0C028D30 */  jal        func_800A34C0
/* 1A4AC0 80392A40 02408821 */   addu      $s1, $s2, $zero
.L80392A44:
/* 1A4AC4 80392A44 8E240008 */  lw         $a0, 8($s1)
/* 1A4AC8 80392A48 26310004 */  addiu      $s1, $s1, 4
/* 1A4ACC 80392A4C 0C028D30 */  jal        func_800A34C0
/* 1A4AD0 80392A50 26100001 */   addiu     $s0, $s0, 1
/* 1A4AD4 80392A54 2A020003 */  slti       $v0, $s0, 3
/* 1A4AD8 80392A58 1440FFFA */  bnez       $v0, .L80392A44
/* 1A4ADC 80392A5C 00000000 */   nop
/* 1A4AE0 80392A60 00008021 */  addu       $s0, $zero, $zero
/* 1A4AE4 80392A64 02408821 */  addu       $s1, $s2, $zero
.L80392A68:
/* 1A4AE8 80392A68 8E240014 */  lw         $a0, 0x14($s1)
/* 1A4AEC 80392A6C 26310004 */  addiu      $s1, $s1, 4
/* 1A4AF0 80392A70 0C028D30 */  jal        func_800A34C0
/* 1A4AF4 80392A74 26100001 */   addiu     $s0, $s0, 1
/* 1A4AF8 80392A78 2A020002 */  slti       $v0, $s0, 2
/* 1A4AFC 80392A7C 1440FFFA */  bnez       $v0, .L80392A68
/* 1A4B00 80392A80 00000000 */   nop
/* 1A4B04 80392A84 00008021 */  addu       $s0, $zero, $zero
/* 1A4B08 80392A88 02408821 */  addu       $s1, $s2, $zero
.L80392A8C:
/* 1A4B0C 80392A8C 8E24001C */  lw         $a0, 0x1c($s1)
/* 1A4B10 80392A90 26310004 */  addiu      $s1, $s1, 4
/* 1A4B14 80392A94 0C0326A1 */  jal        func_800C9A84
/* 1A4B18 80392A98 26100001 */   addiu     $s0, $s0, 1
/* 1A4B1C 80392A9C 2A020003 */  slti       $v0, $s0, 3
/* 1A4B20 80392AA0 1440FFFA */  bnez       $v0, .L80392A8C
/* 1A4B24 80392AA4 00000000 */   nop
/* 1A4B28 80392AA8 8E440028 */  lw         $a0, 0x28($s2)
/* 1A4B2C 80392AAC 0C0326A1 */  jal        func_800C9A84
/* 1A4B30 80392AB0 00000000 */   nop
/* 1A4B34 80392AB4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A4B38 80392AB8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A4B3C 80392ABC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A4B40 80392AC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4B44 80392AC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A4B48 80392AC8 03E00008 */  jr         $ra
/* 1A4B4C 80392ACC 00000000 */   nop

glabel func_80392AD0_1A4B50
/* 1A4B50 80392AD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A4B54 80392AD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A4B58 80392AD8 00809021 */  addu       $s2, $a0, $zero
/* 1A4B5C 80392ADC AFBF0020 */  sw         $ra, 0x20($sp)
/* 1A4B60 80392AE0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1A4B64 80392AE4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4B68 80392AE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4B6C 80392AEC C640002C */  lwc1       $f0, 0x2c($s2)
/* 1A4B70 80392AF0 8E440000 */  lw         $a0, ($s2)
/* 1A4B74 80392AF4 24110001 */  addiu      $s1, $zero, 1
/* 1A4B78 80392AF8 4600008D */  trunc.w.s  $f2, $f0
/* 1A4B7C 80392AFC 44051000 */  mfc1       $a1, $f2
/* 1A4B80 80392B00 00000000 */  nop
/* 1A4B84 80392B04 24A5FFFF */  addiu      $a1, $a1, -1
/* 1A4B88 80392B08 C6400030 */  lwc1       $f0, 0x30($s2)
/* 1A4B8C 80392B0C 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4B90 80392B10 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4B94 80392B14 4600008D */  trunc.w.s  $f2, $f0
/* 1A4B98 80392B18 44061000 */  mfc1       $a2, $f2
/* 1A4B9C 80392B1C 00000000 */  nop
/* 1A4BA0 80392B20 00063480 */  sll        $a2, $a2, 0x12
/* 1A4BA4 80392B24 0C028D89 */  jal        func_800A3624
/* 1A4BA8 80392B28 00063403 */   sra       $a2, $a2, 0x10
/* 1A4BAC 80392B2C C640002C */  lwc1       $f0, 0x2c($s2)
/* 1A4BB0 80392B30 24130025 */  addiu      $s3, $zero, 0x25
/* 1A4BB4 80392B34 8E440004 */  lw         $a0, 4($s2)
/* 1A4BB8 80392B38 4600008D */  trunc.w.s  $f2, $f0
/* 1A4BBC 80392B3C 44051000 */  mfc1       $a1, $f2
/* 1A4BC0 80392B40 00000000 */  nop
/* 1A4BC4 80392B44 24A5002D */  addiu      $a1, $a1, 0x2d
/* 1A4BC8 80392B48 C6400030 */  lwc1       $f0, 0x30($s2)
/* 1A4BCC 80392B4C 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4BD0 80392B50 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4BD4 80392B54 4600008D */  trunc.w.s  $f2, $f0
/* 1A4BD8 80392B58 44061000 */  mfc1       $a2, $f2
/* 1A4BDC 80392B5C 00000000 */  nop
/* 1A4BE0 80392B60 24C60002 */  addiu      $a2, $a2, 2
/* 1A4BE4 80392B64 00063480 */  sll        $a2, $a2, 0x12
/* 1A4BE8 80392B68 0C028D89 */  jal        func_800A3624
/* 1A4BEC 80392B6C 00063403 */   sra       $a2, $a2, 0x10
/* 1A4BF0 80392B70 C640002C */  lwc1       $f0, 0x2c($s2)
/* 1A4BF4 80392B74 26500004 */  addiu      $s0, $s2, 4
/* 1A4BF8 80392B78 8E440008 */  lw         $a0, 8($s2)
/* 1A4BFC 80392B7C 4600008D */  trunc.w.s  $f2, $f0
/* 1A4C00 80392B80 44051000 */  mfc1       $a1, $f2
/* 1A4C04 80392B84 00000000 */  nop
/* 1A4C08 80392B88 24A50018 */  addiu      $a1, $a1, 0x18
/* 1A4C0C 80392B8C C6400030 */  lwc1       $f0, 0x30($s2)
/* 1A4C10 80392B90 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4C14 80392B94 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4C18 80392B98 4600008D */  trunc.w.s  $f2, $f0
/* 1A4C1C 80392B9C 44061000 */  mfc1       $a2, $f2
/* 1A4C20 80392BA0 00000000 */  nop
/* 1A4C24 80392BA4 24C60005 */  addiu      $a2, $a2, 5
/* 1A4C28 80392BA8 00063480 */  sll        $a2, $a2, 0x12
/* 1A4C2C 80392BAC 0C028D89 */  jal        func_800A3624
/* 1A4C30 80392BB0 00063403 */   sra       $a2, $a2, 0x10
.L80392BB4:
/* 1A4C34 80392BB4 8E040008 */  lw         $a0, 8($s0)
/* 1A4C38 80392BB8 C640002C */  lwc1       $f0, 0x2c($s2)
/* 1A4C3C 80392BBC 26100004 */  addiu      $s0, $s0, 4
/* 1A4C40 80392BC0 26310001 */  addiu      $s1, $s1, 1
/* 1A4C44 80392BC4 4600008D */  trunc.w.s  $f2, $f0
/* 1A4C48 80392BC8 44051000 */  mfc1       $a1, $f2
/* 1A4C4C 80392BCC 00000000 */  nop
/* 1A4C50 80392BD0 00B32821 */  addu       $a1, $a1, $s3
/* 1A4C54 80392BD4 C6400030 */  lwc1       $f0, 0x30($s2)
/* 1A4C58 80392BD8 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4C5C 80392BDC 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4C60 80392BE0 4600008D */  trunc.w.s  $f2, $f0
/* 1A4C64 80392BE4 44061000 */  mfc1       $a2, $f2
/* 1A4C68 80392BE8 00000000 */  nop
/* 1A4C6C 80392BEC 24C60005 */  addiu      $a2, $a2, 5
/* 1A4C70 80392BF0 00063480 */  sll        $a2, $a2, 0x12
/* 1A4C74 80392BF4 0C028D89 */  jal        func_800A3624
/* 1A4C78 80392BF8 00063403 */   sra       $a2, $a2, 0x10
/* 1A4C7C 80392BFC 2A220003 */  slti       $v0, $s1, 3
/* 1A4C80 80392C00 1440FFEC */  bnez       $v0, .L80392BB4
/* 1A4C84 80392C04 2673000A */   addiu     $s3, $s3, 0xa
/* 1A4C88 80392C08 00008821 */  addu       $s1, $zero, $zero
/* 1A4C8C 80392C0C 2413003A */  addiu      $s3, $zero, 0x3a
/* 1A4C90 80392C10 02408021 */  addu       $s0, $s2, $zero
.L80392C14:
/* 1A4C94 80392C14 8E040014 */  lw         $a0, 0x14($s0)
/* 1A4C98 80392C18 C640002C */  lwc1       $f0, 0x2c($s2)
/* 1A4C9C 80392C1C 26100004 */  addiu      $s0, $s0, 4
/* 1A4CA0 80392C20 26310001 */  addiu      $s1, $s1, 1
/* 1A4CA4 80392C24 4600008D */  trunc.w.s  $f2, $f0
/* 1A4CA8 80392C28 44051000 */  mfc1       $a1, $f2
/* 1A4CAC 80392C2C 00000000 */  nop
/* 1A4CB0 80392C30 00B32821 */  addu       $a1, $a1, $s3
/* 1A4CB4 80392C34 C6400030 */  lwc1       $f0, 0x30($s2)
/* 1A4CB8 80392C38 00052C80 */  sll        $a1, $a1, 0x12
/* 1A4CBC 80392C3C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A4CC0 80392C40 4600008D */  trunc.w.s  $f2, $f0
/* 1A4CC4 80392C44 44061000 */  mfc1       $a2, $f2
/* 1A4CC8 80392C48 00000000 */  nop
/* 1A4CCC 80392C4C 24C6000A */  addiu      $a2, $a2, 0xa
/* 1A4CD0 80392C50 00063480 */  sll        $a2, $a2, 0x12
/* 1A4CD4 80392C54 0C028D89 */  jal        func_800A3624
/* 1A4CD8 80392C58 00063403 */   sra       $a2, $a2, 0x10
/* 1A4CDC 80392C5C 2A220002 */  slti       $v0, $s1, 2
/* 1A4CE0 80392C60 1440FFEC */  bnez       $v0, .L80392C14
/* 1A4CE4 80392C64 26730007 */   addiu     $s3, $s3, 7
/* 1A4CE8 80392C68 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A4CEC 80392C6C 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A4CF0 80392C70 1040001B */  beqz       $v0, .L80392CE0
/* 1A4CF4 80392C74 00000000 */   nop
/* 1A4CF8 80392C78 8E440000 */  lw         $a0, ($s2)
/* 1A4CFC 80392C7C 0C028A40 */  jal        func_800A2900
/* 1A4D00 80392C80 00000000 */   nop
/* 1A4D04 80392C84 8E440004 */  lw         $a0, 4($s2)
/* 1A4D08 80392C88 0C028A40 */  jal        func_800A2900
/* 1A4D0C 80392C8C 00000000 */   nop
/* 1A4D10 80392C90 92420039 */  lbu        $v0, 0x39($s2)
/* 1A4D14 80392C94 10400012 */  beqz       $v0, .L80392CE0
/* 1A4D18 80392C98 00008821 */   addu      $s1, $zero, $zero
/* 1A4D1C 80392C9C 02408021 */  addu       $s0, $s2, $zero
.L80392CA0:
/* 1A4D20 80392CA0 8E040014 */  lw         $a0, 0x14($s0)
/* 1A4D24 80392CA4 26100004 */  addiu      $s0, $s0, 4
/* 1A4D28 80392CA8 0C028A40 */  jal        func_800A2900
/* 1A4D2C 80392CAC 26310001 */   addiu     $s1, $s1, 1
/* 1A4D30 80392CB0 2A220002 */  slti       $v0, $s1, 2
/* 1A4D34 80392CB4 1440FFFA */  bnez       $v0, .L80392CA0
/* 1A4D38 80392CB8 00000000 */   nop
/* 1A4D3C 80392CBC 00008821 */  addu       $s1, $zero, $zero
/* 1A4D40 80392CC0 02408021 */  addu       $s0, $s2, $zero
.L80392CC4:
/* 1A4D44 80392CC4 8E040008 */  lw         $a0, 8($s0)
/* 1A4D48 80392CC8 26100004 */  addiu      $s0, $s0, 4
/* 1A4D4C 80392CCC 0C028A40 */  jal        func_800A2900
/* 1A4D50 80392CD0 26310001 */   addiu     $s1, $s1, 1
/* 1A4D54 80392CD4 2A220003 */  slti       $v0, $s1, 3
/* 1A4D58 80392CD8 1440FFFA */  bnez       $v0, .L80392CC4
/* 1A4D5C 80392CDC 00000000 */   nop
.L80392CE0:
/* 1A4D60 80392CE0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1A4D64 80392CE4 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1A4D68 80392CE8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A4D6C 80392CEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A4D70 80392CF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4D74 80392CF4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A4D78 80392CF8 03E00008 */  jr         $ra
/* 1A4D7C 80392CFC 00000000 */   nop

glabel func_80392D00_1A4D80
/* 1A4D80 80392D00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A4D84 80392D04 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4D88 80392D08 00808021 */  addu       $s0, $a0, $zero
/* 1A4D8C 80392D0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A4D90 80392D10 8E020004 */  lw         $v0, 4($s0)
/* 1A4D94 80392D14 8E05001C */  lw         $a1, 0x1c($s0)
/* 1A4D98 80392D18 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4D9C 80392D1C 0C0298E2 */  jal        func_800A6388
/* 1A4DA0 80392D20 24060010 */   addiu     $a2, $zero, 0x10
/* 1A4DA4 80392D24 8E020000 */  lw         $v0, ($s0)
/* 1A4DA8 80392D28 8C430014 */  lw         $v1, 0x14($v0)
/* 1A4DAC 80392D2C 24040019 */  addiu      $a0, $zero, 0x19
/* 1A4DB0 80392D30 3402FF8D */  ori        $v0, $zero, 0xff8d
/* 1A4DB4 80392D34 A4620000 */  sh         $v0, ($v1)
/* 1A4DB8 80392D38 24020001 */  addiu      $v0, $zero, 1
/* 1A4DBC 80392D3C 0C026DD5 */  jal        func_8009B754
/* 1A4DC0 80392D40 A2020039 */   sb        $v0, 0x39($s0)
/* 1A4DC4 80392D44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A4DC8 80392D48 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4DCC 80392D4C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A4DD0 80392D50 03E00008 */  jr         $ra
/* 1A4DD4 80392D54 00000000 */   nop

glabel func_80392D58_1A4DD8
/* 1A4DD8 80392D58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A4DDC 80392D5C 00801821 */  addu       $v1, $a0, $zero
/* 1A4DE0 80392D60 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1A4DE4 80392D64 8C620004 */  lw         $v0, 4($v1)
/* 1A4DE8 80392D68 8C650020 */  lw         $a1, 0x20($v1)
/* 1A4DEC 80392D6C 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4DF0 80392D70 0C0298E2 */  jal        func_800A6388
/* 1A4DF4 80392D74 24060010 */   addiu     $a2, $zero, 0x10
/* 1A4DF8 80392D78 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1A4DFC 80392D7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A4E00 80392D80 03E00008 */  jr         $ra
/* 1A4E04 80392D84 00000000 */   nop

glabel func_80392D88_1A4E08
/* 1A4E08 80392D88 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A4E0C 80392D8C AFB20018 */  sw         $s2, 0x18($sp)
/* 1A4E10 80392D90 00809021 */  addu       $s2, $a0, $zero
/* 1A4E14 80392D94 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A4E18 80392D98 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4E1C 80392D9C AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4E20 80392DA0 8E420004 */  lw         $v0, 4($s2)
/* 1A4E24 80392DA4 8E450024 */  lw         $a1, 0x24($s2)
/* 1A4E28 80392DA8 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4E2C 80392DAC 0C0298E2 */  jal        func_800A6388
/* 1A4E30 80392DB0 24060010 */   addiu     $a2, $zero, 0x10
/* 1A4E34 80392DB4 8E420000 */  lw         $v0, ($s2)
/* 1A4E38 80392DB8 00008021 */  addu       $s0, $zero, $zero
/* 1A4E3C 80392DBC 8C430014 */  lw         $v1, 0x14($v0)
/* 1A4E40 80392DC0 02408821 */  addu       $s1, $s2, $zero
/* 1A4E44 80392DC4 3402B801 */  ori        $v0, $zero, 0xb801
/* 1A4E48 80392DC8 A4620000 */  sh         $v0, ($v1)
.L80392DCC:
/* 1A4E4C 80392DCC 8E220008 */  lw         $v0, 8($s1)
/* 1A4E50 80392DD0 8E450028 */  lw         $a1, 0x28($s2)
/* 1A4E54 80392DD4 24060010 */  addiu      $a2, $zero, 0x10
/* 1A4E58 80392DD8 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4E5C 80392DDC 26310004 */  addiu      $s1, $s1, 4
/* 1A4E60 80392DE0 0C0298E2 */  jal        func_800A6388
/* 1A4E64 80392DE4 26100001 */   addiu     $s0, $s0, 1
/* 1A4E68 80392DE8 2A020003 */  slti       $v0, $s0, 3
/* 1A4E6C 80392DEC 1440FFF7 */  bnez       $v0, .L80392DCC
/* 1A4E70 80392DF0 00000000 */   nop
/* 1A4E74 80392DF4 00008021 */  addu       $s0, $zero, $zero
/* 1A4E78 80392DF8 02408821 */  addu       $s1, $s2, $zero
.L80392DFC:
/* 1A4E7C 80392DFC 8E220014 */  lw         $v0, 0x14($s1)
/* 1A4E80 80392E00 8E450028 */  lw         $a1, 0x28($s2)
/* 1A4E84 80392E04 24060010 */  addiu      $a2, $zero, 0x10
/* 1A4E88 80392E08 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4E8C 80392E0C 26310004 */  addiu      $s1, $s1, 4
/* 1A4E90 80392E10 0C0298E2 */  jal        func_800A6388
/* 1A4E94 80392E14 26100001 */   addiu     $s0, $s0, 1
/* 1A4E98 80392E18 2A020002 */  slti       $v0, $s0, 2
/* 1A4E9C 80392E1C 1440FFF7 */  bnez       $v0, .L80392DFC
/* 1A4EA0 80392E20 00000000 */   nop
/* 1A4EA4 80392E24 0C026DD5 */  jal        func_8009B754
/* 1A4EA8 80392E28 2404001A */   addiu     $a0, $zero, 0x1a
/* 1A4EAC 80392E2C 9242003C */  lbu        $v0, 0x3c($s2)
/* 1A4EB0 80392E30 14400005 */  bnez       $v0, .L80392E48
/* 1A4EB4 80392E34 24050001 */   addiu     $a1, $zero, 1
/* 1A4EB8 80392E38 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* 1A4EBC 80392E3C 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* 1A4EC0 80392E40 0C0E5AB3 */  jal        func_80396ACC
/* 1A4EC4 80392E44 24060020 */   addiu     $a2, $zero, 0x20
.L80392E48:
/* 1A4EC8 80392E48 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A4ECC 80392E4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A4ED0 80392E50 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A4ED4 80392E54 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4ED8 80392E58 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A4EDC 80392E5C 03E00008 */  jr         $ra
/* 1A4EE0 80392E60 00000000 */   nop

glabel func_80392E64_1A4EE4
/* 1A4EE4 80392E64 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A4EE8 80392E68 AFB20028 */  sw         $s2, 0x28($sp)
/* 1A4EEC 80392E6C 00809021 */  addu       $s2, $a0, $zero
/* 1A4EF0 80392E70 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1A4EF4 80392E74 AFB3002C */  sw         $s3, 0x2c($sp)
/* 1A4EF8 80392E78 AFB10024 */  sw         $s1, 0x24($sp)
/* 1A4EFC 80392E7C AFB00020 */  sw         $s0, 0x20($sp)
/* 1A4F00 80392E80 8E420034 */  lw         $v0, 0x34($s2)
/* 1A4F04 80392E84 10400002 */  beqz       $v0, .L80392E90
/* 1A4F08 80392E88 2442FFFF */   addiu     $v0, $v0, -1
/* 1A4F0C 80392E8C AE420034 */  sw         $v0, 0x34($s2)
.L80392E90:
/* 1A4F10 80392E90 92420038 */  lbu        $v0, 0x38($s2)
/* 1A4F14 80392E94 8E530034 */  lw         $s3, 0x34($s2)
/* 1A4F18 80392E98 14400036 */  bnez       $v0, .L80392F74
/* 1A4F1C 80392E9C 00000000 */   nop
/* 1A4F20 80392EA0 3C038017 */  lui        $v1, %hi(D_8016D168)
/* 1A4F24 80392EA4 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* 1A4F28 80392EA8 00031100 */  sll        $v0, $v1, 4
/* 1A4F2C 80392EAC 00431023 */  subu       $v0, $v0, $v1
/* 1A4F30 80392EB0 00021080 */  sll        $v0, $v0, 2
/* 1A4F34 80392EB4 0262102A */  slt        $v0, $s3, $v0
/* 1A4F38 80392EB8 10400031 */  beqz       $v0, .L80392F80
/* 1A4F3C 80392EBC 00031100 */   sll       $v0, $v1, 4
/* 1A4F40 80392EC0 8E420004 */  lw         $v0, 4($s2)
/* 1A4F44 80392EC4 8E450024 */  lw         $a1, 0x24($s2)
/* 1A4F48 80392EC8 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4F4C 80392ECC 0C0298E2 */  jal        func_800A6388
/* 1A4F50 80392ED0 24060010 */   addiu     $a2, $zero, 0x10
/* 1A4F54 80392ED4 8E420000 */  lw         $v0, ($s2)
/* 1A4F58 80392ED8 00008021 */  addu       $s0, $zero, $zero
/* 1A4F5C 80392EDC 8C430014 */  lw         $v1, 0x14($v0)
/* 1A4F60 80392EE0 02408821 */  addu       $s1, $s2, $zero
/* 1A4F64 80392EE4 3402B801 */  ori        $v0, $zero, 0xb801
/* 1A4F68 80392EE8 A4620000 */  sh         $v0, ($v1)
.L80392EEC:
/* 1A4F6C 80392EEC 8E220008 */  lw         $v0, 8($s1)
/* 1A4F70 80392EF0 8E450028 */  lw         $a1, 0x28($s2)
/* 1A4F74 80392EF4 24060010 */  addiu      $a2, $zero, 0x10
/* 1A4F78 80392EF8 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4F7C 80392EFC 26310004 */  addiu      $s1, $s1, 4
/* 1A4F80 80392F00 0C0298E2 */  jal        func_800A6388
/* 1A4F84 80392F04 26100001 */   addiu     $s0, $s0, 1
/* 1A4F88 80392F08 2A020003 */  slti       $v0, $s0, 3
/* 1A4F8C 80392F0C 1440FFF7 */  bnez       $v0, .L80392EEC
/* 1A4F90 80392F10 00000000 */   nop
/* 1A4F94 80392F14 00008021 */  addu       $s0, $zero, $zero
/* 1A4F98 80392F18 02408821 */  addu       $s1, $s2, $zero
.L80392F1C:
/* 1A4F9C 80392F1C 8E220014 */  lw         $v0, 0x14($s1)
/* 1A4FA0 80392F20 8E450028 */  lw         $a1, 0x28($s2)
/* 1A4FA4 80392F24 24060010 */  addiu      $a2, $zero, 0x10
/* 1A4FA8 80392F28 8C440014 */  lw         $a0, 0x14($v0)
/* 1A4FAC 80392F2C 26310004 */  addiu      $s1, $s1, 4
/* 1A4FB0 80392F30 0C0298E2 */  jal        func_800A6388
/* 1A4FB4 80392F34 26100001 */   addiu     $s0, $s0, 1
/* 1A4FB8 80392F38 2A020002 */  slti       $v0, $s0, 2
/* 1A4FBC 80392F3C 1440FFF7 */  bnez       $v0, .L80392F1C
/* 1A4FC0 80392F40 00000000 */   nop
/* 1A4FC4 80392F44 0C026DD5 */  jal        func_8009B754
/* 1A4FC8 80392F48 2404001A */   addiu     $a0, $zero, 0x1a
/* 1A4FCC 80392F4C 9242003C */  lbu        $v0, 0x3c($s2)
/* 1A4FD0 80392F50 14400007 */  bnez       $v0, .L80392F70
/* 1A4FD4 80392F54 24020001 */   addiu     $v0, $zero, 1
/* 1A4FD8 80392F58 3C048015 */  lui        $a0, %hi(D_8014A2D4)
/* 1A4FDC 80392F5C 8C84A2D4 */  lw         $a0, %lo(D_8014A2D4)($a0)
/* 1A4FE0 80392F60 24050001 */  addiu      $a1, $zero, 1
/* 1A4FE4 80392F64 0C0E5AB3 */  jal        func_80396ACC
/* 1A4FE8 80392F68 24060020 */   addiu     $a2, $zero, 0x20
/* 1A4FEC 80392F6C 24020001 */  addiu      $v0, $zero, 1
.L80392F70:
/* 1A4FF0 80392F70 A2420038 */  sb         $v0, 0x38($s2)
.L80392F74:
/* 1A4FF4 80392F74 3C038017 */  lui        $v1, %hi(D_8016D168)
/* 1A4FF8 80392F78 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* 1A4FFC 80392F7C 00031100 */  sll        $v0, $v1, 4
.L80392F80:
/* 1A5000 80392F80 00431023 */  subu       $v0, $v0, $v1
/* 1A5004 80392F84 00021080 */  sll        $v0, $v0, 2
/* 1A5008 80392F88 0262001A */  div        $zero, $s3, $v0
/* 1A500C 80392F8C 14400002 */  bnez       $v0, .L80392F98
/* 1A5010 80392F90 00000000 */   nop
/* 1A5014 80392F94 0007000D */  break      7
.L80392F98:
/* 1A5018 80392F98 2401FFFF */   addiu     $at, $zero, -1
/* 1A501C 80392F9C 14410004 */  bne        $v0, $at, .L80392FB0
/* 1A5020 80392FA0 3C018000 */   lui       $at, 0x8000
/* 1A5024 80392FA4 16610002 */  bne        $s3, $at, .L80392FB0
/* 1A5028 80392FA8 00000000 */   nop
/* 1A502C 80392FAC 0006000D */  break      6
.L80392FB0:
/* 1A5030 80392FB0 00002812 */   mflo      $a1
/* 1A5034 80392FB4 00000000 */  nop
/* 1A5038 80392FB8 00000000 */  nop
/* 1A503C 80392FBC 00003021 */  addu       $a2, $zero, $zero
/* 1A5040 80392FC0 3C03803A */  lui        $v1, %hi(D_8039E6D0_1B0750)
/* 1A5044 80392FC4 2463E6D0 */  addiu      $v1, $v1, %lo(D_8039E6D0_1B0750)
/* 1A5048 80392FC8 000510C0 */  sll        $v0, $a1, 3
/* 1A504C 80392FCC 00451023 */  subu       $v0, $v0, $a1
/* 1A5050 80392FD0 00432821 */  addu       $a1, $v0, $v1
.L80392FD4:
/* 1A5054 80392FD4 8E420008 */  lw         $v0, 8($s2)
/* 1A5058 80392FD8 8C420014 */  lw         $v0, 0x14($v0)
/* 1A505C 80392FDC 00C21021 */  addu       $v0, $a2, $v0
/* 1A5060 80392FE0 94440002 */  lhu        $a0, 2($v0)
/* 1A5064 80392FE4 A7A40010 */  sh         $a0, 0x10($sp)
/* 1A5068 80392FE8 8E420008 */  lw         $v0, 8($s2)
/* 1A506C 80392FEC 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5070 80392FF0 00C21021 */  addu       $v0, $a2, $v0
/* 1A5074 80392FF4 94430004 */  lhu        $v1, 4($v0)
/* 1A5078 80392FF8 A7A30012 */  sh         $v1, 0x12($sp)
/* 1A507C 80392FFC 90A20000 */  lbu        $v0, ($a1)
/* 1A5080 80393000 10400004 */  beqz       $v0, .L80393014
/* 1A5084 80393004 34820001 */   ori       $v0, $a0, 1
/* 1A5088 80393008 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A508C 8039300C 080E4C08 */  j          .L80393020
/* 1A5090 80393010 34620001 */   ori       $v0, $v1, 1
.L80393014:
/* 1A5094 80393014 3082FFFE */  andi       $v0, $a0, 0xfffe
/* 1A5098 80393018 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A509C 8039301C 3062FFFE */  andi       $v0, $v1, 0xfffe
.L80393020:
/* 1A50A0 80393020 A7A20012 */  sh         $v0, 0x12($sp)
/* 1A50A4 80393024 8E420008 */  lw         $v0, 8($s2)
/* 1A50A8 80393028 8C420014 */  lw         $v0, 0x14($v0)
/* 1A50AC 8039302C 97A30010 */  lhu        $v1, 0x10($sp)
/* 1A50B0 80393030 00C21021 */  addu       $v0, $a2, $v0
/* 1A50B4 80393034 A4430002 */  sh         $v1, 2($v0)
/* 1A50B8 80393038 8E420008 */  lw         $v0, 8($s2)
/* 1A50BC 8039303C 8C420014 */  lw         $v0, 0x14($v0)
/* 1A50C0 80393040 97A30012 */  lhu        $v1, 0x12($sp)
/* 1A50C4 80393044 00C21021 */  addu       $v0, $a2, $v0
/* 1A50C8 80393048 24C60004 */  addiu      $a2, $a2, 4
/* 1A50CC 8039304C A4430004 */  sh         $v1, 4($v0)
/* 1A50D0 80393050 28C2001C */  slti       $v0, $a2, 0x1c
/* 1A50D4 80393054 1440FFDF */  bnez       $v0, .L80392FD4
/* 1A50D8 80393058 24A50001 */   addiu     $a1, $a1, 1
/* 1A50DC 8039305C 3C048017 */  lui        $a0, %hi(D_8016D168)
/* 1A50E0 80393060 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* 1A50E4 80393064 0264001A */  div        $zero, $s3, $a0
/* 1A50E8 80393068 14800002 */  bnez       $a0, .L80393074
/* 1A50EC 8039306C 00000000 */   nop
/* 1A50F0 80393070 0007000D */  break      7
.L80393074:
/* 1A50F4 80393074 2401FFFF */   addiu     $at, $zero, -1
/* 1A50F8 80393078 14810004 */  bne        $a0, $at, .L8039308C
/* 1A50FC 8039307C 3C018000 */   lui       $at, 0x8000
/* 1A5100 80393080 16610002 */  bne        $s3, $at, .L8039308C
/* 1A5104 80393084 00000000 */   nop
/* 1A5108 80393088 0006000D */  break      6
.L8039308C:
/* 1A510C 8039308C 00002012 */   mflo      $a0
/* 1A5110 80393090 00000000 */  nop
/* 1A5114 80393094 00000000 */  nop
/* 1A5118 80393098 3C028888 */  lui        $v0, 0x8888
/* 1A511C 8039309C 34428889 */  ori        $v0, $v0, 0x8889
/* 1A5120 803930A0 00820018 */  mult       $a0, $v0
/* 1A5124 803930A4 3C056666 */  lui        $a1, 0x6666
/* 1A5128 803930A8 34A56667 */  ori        $a1, $a1, 0x6667
/* 1A512C 803930AC 000417C3 */  sra        $v0, $a0, 0x1f
/* 1A5130 803930B0 00003810 */  mfhi       $a3
/* 1A5134 803930B4 00000000 */  nop
/* 1A5138 803930B8 00000000 */  nop
/* 1A513C 803930BC 00E41821 */  addu       $v1, $a3, $a0
/* 1A5140 803930C0 00031943 */  sra        $v1, $v1, 5
/* 1A5144 803930C4 00621823 */  subu       $v1, $v1, $v0
/* 1A5148 803930C8 00031100 */  sll        $v0, $v1, 4
/* 1A514C 803930CC 00431023 */  subu       $v0, $v0, $v1
/* 1A5150 803930D0 00021080 */  sll        $v0, $v0, 2
/* 1A5154 803930D4 00822023 */  subu       $a0, $a0, $v0
/* 1A5158 803930D8 00850018 */  mult       $a0, $a1
/* 1A515C 803930DC 00003021 */  addu       $a2, $zero, $zero
/* 1A5160 803930E0 000427C3 */  sra        $a0, $a0, 0x1f
/* 1A5164 803930E4 3C03803A */  lui        $v1, %hi(D_8039E6D0_1B0750)
/* 1A5168 803930E8 2463E6D0 */  addiu      $v1, $v1, %lo(D_8039E6D0_1B0750)
/* 1A516C 803930EC 00003810 */  mfhi       $a3
/* 1A5170 803930F0 00000000 */  nop
/* 1A5174 803930F4 00000000 */  nop
/* 1A5178 803930F8 00071083 */  sra        $v0, $a3, 2
/* 1A517C 803930FC 00442823 */  subu       $a1, $v0, $a0
/* 1A5180 80393100 000510C0 */  sll        $v0, $a1, 3
/* 1A5184 80393104 00451023 */  subu       $v0, $v0, $a1
/* 1A5188 80393108 00432821 */  addu       $a1, $v0, $v1
.L8039310C:
/* 1A518C 8039310C 8E42000C */  lw         $v0, 0xc($s2)
/* 1A5190 80393110 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5194 80393114 00C21021 */  addu       $v0, $a2, $v0
/* 1A5198 80393118 94440002 */  lhu        $a0, 2($v0)
/* 1A519C 8039311C A7A40010 */  sh         $a0, 0x10($sp)
/* 1A51A0 80393120 8E42000C */  lw         $v0, 0xc($s2)
/* 1A51A4 80393124 8C420014 */  lw         $v0, 0x14($v0)
/* 1A51A8 80393128 00C21021 */  addu       $v0, $a2, $v0
/* 1A51AC 8039312C 94430004 */  lhu        $v1, 4($v0)
/* 1A51B0 80393130 A7A30012 */  sh         $v1, 0x12($sp)
/* 1A51B4 80393134 90A20000 */  lbu        $v0, ($a1)
/* 1A51B8 80393138 10400004 */  beqz       $v0, .L8039314C
/* 1A51BC 8039313C 34820001 */   ori       $v0, $a0, 1
/* 1A51C0 80393140 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A51C4 80393144 080E4C56 */  j          .L80393158
/* 1A51C8 80393148 34620001 */   ori       $v0, $v1, 1
.L8039314C:
/* 1A51CC 8039314C 3082FFFE */  andi       $v0, $a0, 0xfffe
/* 1A51D0 80393150 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A51D4 80393154 3062FFFE */  andi       $v0, $v1, 0xfffe
.L80393158:
/* 1A51D8 80393158 A7A20012 */  sh         $v0, 0x12($sp)
/* 1A51DC 8039315C 8E42000C */  lw         $v0, 0xc($s2)
/* 1A51E0 80393160 8C420014 */  lw         $v0, 0x14($v0)
/* 1A51E4 80393164 97A30010 */  lhu        $v1, 0x10($sp)
/* 1A51E8 80393168 00C21021 */  addu       $v0, $a2, $v0
/* 1A51EC 8039316C A4430002 */  sh         $v1, 2($v0)
/* 1A51F0 80393170 8E42000C */  lw         $v0, 0xc($s2)
/* 1A51F4 80393174 8C420014 */  lw         $v0, 0x14($v0)
/* 1A51F8 80393178 97A30012 */  lhu        $v1, 0x12($sp)
/* 1A51FC 8039317C 00C21021 */  addu       $v0, $a2, $v0
/* 1A5200 80393180 24C60004 */  addiu      $a2, $a2, 4
/* 1A5204 80393184 A4430004 */  sh         $v1, 4($v0)
/* 1A5208 80393188 28C2001C */  slti       $v0, $a2, 0x1c
/* 1A520C 8039318C 1440FFDF */  bnez       $v0, .L8039310C
/* 1A5210 80393190 24A50001 */   addiu     $a1, $a1, 1
/* 1A5214 80393194 3C048017 */  lui        $a0, %hi(D_8016D168)
/* 1A5218 80393198 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* 1A521C 8039319C 0264001A */  div        $zero, $s3, $a0
/* 1A5220 803931A0 14800002 */  bnez       $a0, .L803931AC
/* 1A5224 803931A4 00000000 */   nop
/* 1A5228 803931A8 0007000D */  break      7
.L803931AC:
/* 1A522C 803931AC 2401FFFF */   addiu     $at, $zero, -1
/* 1A5230 803931B0 14810004 */  bne        $a0, $at, .L803931C4
/* 1A5234 803931B4 3C018000 */   lui       $at, 0x8000
/* 1A5238 803931B8 16610002 */  bne        $s3, $at, .L803931C4
/* 1A523C 803931BC 00000000 */   nop
/* 1A5240 803931C0 0006000D */  break      6
.L803931C4:
/* 1A5244 803931C4 00002012 */   mflo      $a0
/* 1A5248 803931C8 00000000 */  nop
/* 1A524C 803931CC 00000000 */  nop
/* 1A5250 803931D0 3C028888 */  lui        $v0, 0x8888
/* 1A5254 803931D4 34428889 */  ori        $v0, $v0, 0x8889
/* 1A5258 803931D8 00820018 */  mult       $a0, $v0
/* 1A525C 803931DC 3C056666 */  lui        $a1, 0x6666
/* 1A5260 803931E0 34A56667 */  ori        $a1, $a1, 0x6667
/* 1A5264 803931E4 000417C3 */  sra        $v0, $a0, 0x1f
/* 1A5268 803931E8 00003810 */  mfhi       $a3
/* 1A526C 803931EC 00000000 */  nop
/* 1A5270 803931F0 00000000 */  nop
/* 1A5274 803931F4 00E41821 */  addu       $v1, $a3, $a0
/* 1A5278 803931F8 00031943 */  sra        $v1, $v1, 5
/* 1A527C 803931FC 00621823 */  subu       $v1, $v1, $v0
/* 1A5280 80393200 00031100 */  sll        $v0, $v1, 4
/* 1A5284 80393204 00431023 */  subu       $v0, $v0, $v1
/* 1A5288 80393208 00021080 */  sll        $v0, $v0, 2
/* 1A528C 8039320C 00822023 */  subu       $a0, $a0, $v0
/* 1A5290 80393210 00850018 */  mult       $a0, $a1
/* 1A5294 80393214 00003021 */  addu       $a2, $zero, $zero
/* 1A5298 80393218 000417C3 */  sra        $v0, $a0, 0x1f
/* 1A529C 8039321C 00003810 */  mfhi       $a3
/* 1A52A0 80393220 00000000 */  nop
/* 1A52A4 80393224 00000000 */  nop
/* 1A52A8 80393228 00071883 */  sra        $v1, $a3, 2
/* 1A52AC 8039322C 00622823 */  subu       $a1, $v1, $v0
/* 1A52B0 80393230 00051080 */  sll        $v0, $a1, 2
/* 1A52B4 80393234 00451021 */  addu       $v0, $v0, $a1
/* 1A52B8 80393238 00021040 */  sll        $v0, $v0, 1
/* 1A52BC 8039323C 00822823 */  subu       $a1, $a0, $v0
/* 1A52C0 80393240 3C03803A */  lui        $v1, %hi(D_8039E6D0_1B0750)
/* 1A52C4 80393244 2463E6D0 */  addiu      $v1, $v1, %lo(D_8039E6D0_1B0750)
/* 1A52C8 80393248 000510C0 */  sll        $v0, $a1, 3
/* 1A52CC 8039324C 00451023 */  subu       $v0, $v0, $a1
/* 1A52D0 80393250 00432821 */  addu       $a1, $v0, $v1
.L80393254:
/* 1A52D4 80393254 8E420010 */  lw         $v0, 0x10($s2)
/* 1A52D8 80393258 8C420014 */  lw         $v0, 0x14($v0)
/* 1A52DC 8039325C 00C21021 */  addu       $v0, $a2, $v0
/* 1A52E0 80393260 94440002 */  lhu        $a0, 2($v0)
/* 1A52E4 80393264 A7A40010 */  sh         $a0, 0x10($sp)
/* 1A52E8 80393268 8E420010 */  lw         $v0, 0x10($s2)
/* 1A52EC 8039326C 8C420014 */  lw         $v0, 0x14($v0)
/* 1A52F0 80393270 00C21021 */  addu       $v0, $a2, $v0
/* 1A52F4 80393274 94430004 */  lhu        $v1, 4($v0)
/* 1A52F8 80393278 A7A30012 */  sh         $v1, 0x12($sp)
/* 1A52FC 8039327C 90A20000 */  lbu        $v0, ($a1)
/* 1A5300 80393280 10400004 */  beqz       $v0, .L80393294
/* 1A5304 80393284 34820001 */   ori       $v0, $a0, 1
/* 1A5308 80393288 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A530C 8039328C 080E4CA8 */  j          .L803932A0
/* 1A5310 80393290 34620001 */   ori       $v0, $v1, 1
.L80393294:
/* 1A5314 80393294 3082FFFE */  andi       $v0, $a0, 0xfffe
/* 1A5318 80393298 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A531C 8039329C 3062FFFE */  andi       $v0, $v1, 0xfffe
.L803932A0:
/* 1A5320 803932A0 A7A20012 */  sh         $v0, 0x12($sp)
/* 1A5324 803932A4 8E420010 */  lw         $v0, 0x10($s2)
/* 1A5328 803932A8 8C420014 */  lw         $v0, 0x14($v0)
/* 1A532C 803932AC 97A30010 */  lhu        $v1, 0x10($sp)
/* 1A5330 803932B0 00C21021 */  addu       $v0, $a2, $v0
/* 1A5334 803932B4 A4430002 */  sh         $v1, 2($v0)
/* 1A5338 803932B8 8E420010 */  lw         $v0, 0x10($s2)
/* 1A533C 803932BC 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5340 803932C0 97A30012 */  lhu        $v1, 0x12($sp)
/* 1A5344 803932C4 00C21021 */  addu       $v0, $a2, $v0
/* 1A5348 803932C8 24C60004 */  addiu      $a2, $a2, 4
/* 1A534C 803932CC A4430004 */  sh         $v1, 4($v0)
/* 1A5350 803932D0 28C2001C */  slti       $v0, $a2, 0x1c
/* 1A5354 803932D4 1440FFDF */  bnez       $v0, .L80393254
/* 1A5358 803932D8 24A50001 */   addiu     $a1, $a1, 1
/* 1A535C 803932DC 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A5360 803932E0 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A5364 803932E4 0262001A */  div        $zero, $s3, $v0
/* 1A5368 803932E8 14400002 */  bnez       $v0, .L803932F4
/* 1A536C 803932EC 00000000 */   nop
/* 1A5370 803932F0 0007000D */  break      7
.L803932F4:
/* 1A5374 803932F4 2401FFFF */   addiu     $at, $zero, -1
/* 1A5378 803932F8 14410004 */  bne        $v0, $at, .L8039330C
/* 1A537C 803932FC 3C018000 */   lui       $at, 0x8000
/* 1A5380 80393300 16610002 */  bne        $s3, $at, .L8039330C
/* 1A5384 80393304 00000000 */   nop
/* 1A5388 80393308 0006000D */  break      6
.L8039330C:
/* 1A538C 8039330C 00001810 */   mfhi      $v1
/* 1A5390 80393310 00000000 */  nop
/* 1A5394 80393314 00000000 */  nop
/* 1A5398 80393318 3C0142C8 */  lui        $at, 0x42c8
/* 1A539C 8039331C 44810000 */  mtc1       $at, $f0
/* 1A53A0 80393320 00000000 */  nop
/* 1A53A4 80393324 44821000 */  mtc1       $v0, $f2
/* 1A53A8 80393328 00000000 */  nop
/* 1A53AC 8039332C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A53B0 80393330 46020003 */  div.s      $f0, $f0, $f2
/* 1A53B4 80393334 44831000 */  mtc1       $v1, $f2
/* 1A53B8 80393338 00000000 */  nop
/* 1A53BC 8039333C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A53C0 80393340 46001082 */  mul.s      $f2, $f2, $f0
/* 1A53C4 80393344 3C036666 */  lui        $v1, 0x6666
/* 1A53C8 80393348 34636667 */  ori        $v1, $v1, 0x6667
/* 1A53CC 8039334C 4600100D */  trunc.w.s  $f0, $f2
/* 1A53D0 80393350 44020000 */  mfc1       $v0, $f0
/* 1A53D4 80393354 00000000 */  nop
/* 1A53D8 80393358 00430018 */  mult       $v0, $v1
/* 1A53DC 8039335C 00003021 */  addu       $a2, $zero, $zero
/* 1A53E0 80393360 000217C3 */  sra        $v0, $v0, 0x1f
/* 1A53E4 80393364 00003810 */  mfhi       $a3
/* 1A53E8 80393368 00000000 */  nop
/* 1A53EC 8039336C 00000000 */  nop
/* 1A53F0 80393370 00071883 */  sra        $v1, $a3, 2
/* 1A53F4 80393374 00622823 */  subu       $a1, $v1, $v0
/* 1A53F8 80393378 3C03803A */  lui        $v1, %hi(D_8039E6D0_1B0750)
/* 1A53FC 8039337C 2463E6D0 */  addiu      $v1, $v1, %lo(D_8039E6D0_1B0750)
/* 1A5400 80393380 000510C0 */  sll        $v0, $a1, 3
/* 1A5404 80393384 00451023 */  subu       $v0, $v0, $a1
/* 1A5408 80393388 00432821 */  addu       $a1, $v0, $v1
.L8039338C:
/* 1A540C 8039338C 8E420014 */  lw         $v0, 0x14($s2)
/* 1A5410 80393390 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5414 80393394 00C21021 */  addu       $v0, $a2, $v0
/* 1A5418 80393398 94440002 */  lhu        $a0, 2($v0)
/* 1A541C 8039339C A7A40010 */  sh         $a0, 0x10($sp)
/* 1A5420 803933A0 8E420014 */  lw         $v0, 0x14($s2)
/* 1A5424 803933A4 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5428 803933A8 00C21021 */  addu       $v0, $a2, $v0
/* 1A542C 803933AC 94430004 */  lhu        $v1, 4($v0)
/* 1A5430 803933B0 A7A30012 */  sh         $v1, 0x12($sp)
/* 1A5434 803933B4 90A20000 */  lbu        $v0, ($a1)
/* 1A5438 803933B8 10400004 */  beqz       $v0, .L803933CC
/* 1A543C 803933BC 34820001 */   ori       $v0, $a0, 1
/* 1A5440 803933C0 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A5444 803933C4 080E4CF6 */  j          .L803933D8
/* 1A5448 803933C8 34620001 */   ori       $v0, $v1, 1
.L803933CC:
/* 1A544C 803933CC 3082FFFE */  andi       $v0, $a0, 0xfffe
/* 1A5450 803933D0 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A5454 803933D4 3062FFFE */  andi       $v0, $v1, 0xfffe
.L803933D8:
/* 1A5458 803933D8 A7A20012 */  sh         $v0, 0x12($sp)
/* 1A545C 803933DC 8E420014 */  lw         $v0, 0x14($s2)
/* 1A5460 803933E0 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5464 803933E4 97A30010 */  lhu        $v1, 0x10($sp)
/* 1A5468 803933E8 00C21021 */  addu       $v0, $a2, $v0
/* 1A546C 803933EC A4430002 */  sh         $v1, 2($v0)
/* 1A5470 803933F0 8E420014 */  lw         $v0, 0x14($s2)
/* 1A5474 803933F4 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5478 803933F8 97A30012 */  lhu        $v1, 0x12($sp)
/* 1A547C 803933FC 00C21021 */  addu       $v0, $a2, $v0
/* 1A5480 80393400 24C60004 */  addiu      $a2, $a2, 4
/* 1A5484 80393404 A4430004 */  sh         $v1, 4($v0)
/* 1A5488 80393408 28C2001C */  slti       $v0, $a2, 0x1c
/* 1A548C 8039340C 1440FFDF */  bnez       $v0, .L8039338C
/* 1A5490 80393410 24A50001 */   addiu     $a1, $a1, 1
/* 1A5494 80393414 8245003A */  lb         $a1, 0x3a($s2)
/* 1A5498 80393418 00A01821 */  addu       $v1, $a1, $zero
/* 1A549C 8039341C 0013102B */  sltu       $v0, $zero, $s3
/* 1A54A0 80393420 00021023 */  negu       $v0, $v0
/* 1A54A4 80393424 00A22824 */  and        $a1, $a1, $v0
/* 1A54A8 80393428 24620003 */  addiu      $v0, $v1, 3
/* 1A54AC 8039342C A242003A */  sb         $v0, 0x3a($s2)
/* 1A54B0 80393430 00021600 */  sll        $v0, $v0, 0x18
/* 1A54B4 80393434 00022603 */  sra        $a0, $v0, 0x18
/* 1A54B8 80393438 2882000A */  slti       $v0, $a0, 0xa
/* 1A54BC 8039343C 10400004 */  beqz       $v0, .L80393450
/* 1A54C0 80393440 2462FFF9 */   addiu     $v0, $v1, -7
/* 1A54C4 80393444 04810004 */  bgez       $a0, .L80393458
/* 1A54C8 80393448 00003021 */   addu      $a2, $zero, $zero
/* 1A54CC 8039344C 2462000D */  addiu      $v0, $v1, 0xd
.L80393450:
/* 1A54D0 80393450 A242003A */  sb         $v0, 0x3a($s2)
/* 1A54D4 80393454 00003021 */  addu       $a2, $zero, $zero
.L80393458:
/* 1A54D8 80393458 3C03803A */  lui        $v1, %hi(D_8039E6D0_1B0750)
/* 1A54DC 8039345C 2463E6D0 */  addiu      $v1, $v1, %lo(D_8039E6D0_1B0750)
/* 1A54E0 80393460 000510C0 */  sll        $v0, $a1, 3
/* 1A54E4 80393464 00451023 */  subu       $v0, $v0, $a1
/* 1A54E8 80393468 00432821 */  addu       $a1, $v0, $v1
.L8039346C:
/* 1A54EC 8039346C 8E420018 */  lw         $v0, 0x18($s2)
/* 1A54F0 80393470 8C420014 */  lw         $v0, 0x14($v0)
/* 1A54F4 80393474 00C21021 */  addu       $v0, $a2, $v0
/* 1A54F8 80393478 94440002 */  lhu        $a0, 2($v0)
/* 1A54FC 8039347C A7A40010 */  sh         $a0, 0x10($sp)
/* 1A5500 80393480 8E420018 */  lw         $v0, 0x18($s2)
/* 1A5504 80393484 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5508 80393488 00C21021 */  addu       $v0, $a2, $v0
/* 1A550C 8039348C 94430004 */  lhu        $v1, 4($v0)
/* 1A5510 80393490 A7A30012 */  sh         $v1, 0x12($sp)
/* 1A5514 80393494 90A20000 */  lbu        $v0, ($a1)
/* 1A5518 80393498 10400004 */  beqz       $v0, .L803934AC
/* 1A551C 8039349C 34820001 */   ori       $v0, $a0, 1
/* 1A5520 803934A0 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A5524 803934A4 080E4D2E */  j          .L803934B8
/* 1A5528 803934A8 34620001 */   ori       $v0, $v1, 1
.L803934AC:
/* 1A552C 803934AC 3082FFFE */  andi       $v0, $a0, 0xfffe
/* 1A5530 803934B0 A7A20010 */  sh         $v0, 0x10($sp)
/* 1A5534 803934B4 3062FFFE */  andi       $v0, $v1, 0xfffe
.L803934B8:
/* 1A5538 803934B8 A7A20012 */  sh         $v0, 0x12($sp)
/* 1A553C 803934BC 8E420018 */  lw         $v0, 0x18($s2)
/* 1A5540 803934C0 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5544 803934C4 97A30010 */  lhu        $v1, 0x10($sp)
/* 1A5548 803934C8 00C21021 */  addu       $v0, $a2, $v0
/* 1A554C 803934CC A4430002 */  sh         $v1, 2($v0)
/* 1A5550 803934D0 8E420018 */  lw         $v0, 0x18($s2)
/* 1A5554 803934D4 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5558 803934D8 97A30012 */  lhu        $v1, 0x12($sp)
/* 1A555C 803934DC 00C21021 */  addu       $v0, $a2, $v0
/* 1A5560 803934E0 24C60004 */  addiu      $a2, $a2, 4
/* 1A5564 803934E4 A4430004 */  sh         $v1, 4($v0)
/* 1A5568 803934E8 28C2001C */  slti       $v0, $a2, 0x1c
/* 1A556C 803934EC 1440FFDF */  bnez       $v0, .L8039346C
/* 1A5570 803934F0 24A50001 */   addiu     $a1, $a1, 1
/* 1A5574 803934F4 9242003D */  lbu        $v0, 0x3d($s2)
/* 1A5578 803934F8 14400004 */  bnez       $v0, .L8039350C
/* 1A557C 803934FC 2A620001 */   slti      $v0, $s3, 1
/* 1A5580 80393500 0C0E4D4B */  jal        func_8039352C_1A55AC
/* 1A5584 80393504 02402021 */   addu      $a0, $s2, $zero
/* 1A5588 80393508 2A620001 */  slti       $v0, $s3, 1
.L8039350C:
/* 1A558C 8039350C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1A5590 80393510 8FB3002C */  lw         $s3, 0x2c($sp)
/* 1A5594 80393514 8FB20028 */  lw         $s2, 0x28($sp)
/* 1A5598 80393518 8FB10024 */  lw         $s1, 0x24($sp)
/* 1A559C 8039351C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1A55A0 80393520 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1A55A4 80393524 03E00008 */  jr         $ra
/* 1A55A8 80393528 00000000 */   nop

glabel func_8039352C_1A55AC
/* 1A55AC 8039352C 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A55B0 80393530 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A55B4 80393534 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A55B8 80393538 AFB00020 */  sw         $s0, 0x20($sp)
/* 1A55BC 8039353C 00808021 */  addu       $s0, $a0, $zero
/* 1A55C0 80393540 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A55C4 80393544 8E040034 */  lw         $a0, 0x34($s0)
/* 1A55C8 80393548 00021840 */  sll        $v1, $v0, 1
/* 1A55CC 8039354C 00621821 */  addu       $v1, $v1, $v0
/* 1A55D0 80393550 00031100 */  sll        $v0, $v1, 4
/* 1A55D4 80393554 00431023 */  subu       $v0, $v0, $v1
/* 1A55D8 80393558 00021080 */  sll        $v0, $v0, 2
/* 1A55DC 8039355C 1482000A */  bne        $a0, $v0, .L80393588
/* 1A55E0 80393560 00002021 */   addu      $a0, $zero, $zero
/* 1A55E4 80393564 24050004 */  addiu      $a1, $zero, 4
/* 1A55E8 80393568 24060002 */  addiu      $a2, $zero, 2
/* 1A55EC 8039356C 240700D4 */  addiu      $a3, $zero, 0xd4
/* 1A55F0 80393570 2402FFFF */  addiu      $v0, $zero, -1
/* 1A55F4 80393574 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A55F8 80393578 24020007 */  addiu      $v0, $zero, 7
/* 1A55FC 8039357C AFA20014 */  sw         $v0, 0x14($sp)
/* 1A5600 80393580 0C0E5BE4 */  jal        func_80396F90
/* 1A5604 80393584 AFA00018 */   sw        $zero, 0x18($sp)
.L80393588:
/* 1A5608 80393588 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A560C 8039358C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A5610 80393590 8E040034 */  lw         $a0, 0x34($s0)
/* 1A5614 80393594 00021900 */  sll        $v1, $v0, 4
/* 1A5618 80393598 00621823 */  subu       $v1, $v1, $v0
/* 1A561C 8039359C 00031880 */  sll        $v1, $v1, 2
/* 1A5620 803935A0 1483000A */  bne        $a0, $v1, .L803935CC
/* 1A5624 803935A4 00002021 */   addu      $a0, $zero, $zero
/* 1A5628 803935A8 24050004 */  addiu      $a1, $zero, 4
/* 1A562C 803935AC 24060002 */  addiu      $a2, $zero, 2
/* 1A5630 803935B0 240700D5 */  addiu      $a3, $zero, 0xd5
/* 1A5634 803935B4 2402FFFF */  addiu      $v0, $zero, -1
/* 1A5638 803935B8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A563C 803935BC 24020007 */  addiu      $v0, $zero, 7
/* 1A5640 803935C0 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A5644 803935C4 0C0E5BE4 */  jal        func_80396F90
/* 1A5648 803935C8 AFA00018 */   sw        $zero, 0x18($sp)
.L803935CC:
/* 1A564C 803935CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A5650 803935D0 8FB00020 */  lw         $s0, 0x20($sp)
/* 1A5654 803935D4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A5658 803935D8 03E00008 */  jr         $ra
/* 1A565C 803935DC 00000000 */   nop

glabel func_803935E0
/* 1A5660 803935E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1A5664 803935E4 00801021 */  addu       $v0, $a0, $zero
/* 1A5668 803935E8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1A566C 803935EC AFB10024 */  sw         $s1, 0x24($sp)
/* 1A5670 803935F0 10400018 */  beqz       $v0, .L80393654
/* 1A5674 803935F4 AFB00020 */   sw        $s0, 0x20($sp)
/* 1A5678 803935F8 00002021 */  addu       $a0, $zero, $zero
/* 1A567C 803935FC 24050004 */  addiu      $a1, $zero, 4
/* 1A5680 80393600 24060002 */  addiu      $a2, $zero, 2
/* 1A5684 80393604 8C430014 */  lw         $v1, 0x14($v0)
/* 1A5688 80393608 240700FA */  addiu      $a3, $zero, 0xfa
/* 1A568C 8039360C 24020001 */  addiu      $v0, $zero, 1
/* 1A5690 80393610 2411FFFF */  addiu      $s1, $zero, -1
/* 1A5694 80393614 24100001 */  addiu      $s0, $zero, 1
/* 1A5698 80393618 A062003B */  sb         $v0, 0x3b($v1)
/* 1A569C 8039361C 24020009 */  addiu      $v0, $zero, 9
/* 1A56A0 80393620 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A56A4 80393624 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A56A8 80393628 0C0E5BE4 */  jal        func_80396F90
/* 1A56AC 8039362C AFB00018 */   sw        $s0, 0x18($sp)
/* 1A56B0 80393630 2404002A */  addiu      $a0, $zero, 0x2a
/* 1A56B4 80393634 24050004 */  addiu      $a1, $zero, 4
/* 1A56B8 80393638 24060002 */  addiu      $a2, $zero, 2
/* 1A56BC 8039363C 240700D2 */  addiu      $a3, $zero, 0xd2
/* 1A56C0 80393640 24020007 */  addiu      $v0, $zero, 7
/* 1A56C4 80393644 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A56C8 80393648 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A56CC 8039364C 0C0E5BE4 */  jal        func_80396F90
/* 1A56D0 80393650 AFB00018 */   sw        $s0, 0x18($sp)
.L80393654:
/* 1A56D4 80393654 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1A56D8 80393658 8FB10024 */  lw         $s1, 0x24($sp)
/* 1A56DC 8039365C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1A56E0 80393660 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1A56E4 80393664 03E00008 */  jr         $ra
/* 1A56E8 80393668 00000000 */   nop

glabel func_8039366C
/* 1A56EC 8039366C 10800003 */  beqz       $a0, .L8039367C
/* 1A56F0 80393670 00000000 */   nop
/* 1A56F4 80393674 8C820014 */  lw         $v0, 0x14($a0)
/* 1A56F8 80393678 8C420034 */  lw         $v0, 0x34($v0)
.L8039367C:
/* 1A56FC 8039367C 03E00008 */  jr         $ra
/* 1A5700 80393680 00000000 */   nop

glabel func_80393684
/* 1A5704 80393684 10800004 */  beqz       $a0, .L80393698
/* 1A5708 80393688 24020001 */   addiu     $v0, $zero, 1
/* 1A570C 8039368C 8C830014 */  lw         $v1, 0x14($a0)
/* 1A5710 80393690 AC650034 */  sw         $a1, 0x34($v1)
/* 1A5714 80393694 A062003B */  sb         $v0, 0x3b($v1)
.L80393698:
/* 1A5718 80393698 03E00008 */  jr         $ra
/* 1A571C 8039369C 00000000 */   nop

glabel func_803936A0
/* 1A5720 803936A0 10800003 */  beqz       $a0, .L803936B0
/* 1A5724 803936A4 00000000 */   nop
/* 1A5728 803936A8 8C820014 */  lw         $v0, 0x14($a0)
/* 1A572C 803936AC A045003C */  sb         $a1, 0x3c($v0)
.L803936B0:
/* 1A5730 803936B0 03E00008 */  jr         $ra
/* 1A5734 803936B4 00000000 */   nop

glabel func_803936B8
/* 1A5738 803936B8 10800003 */  beqz       $a0, .L803936C8
/* 1A573C 803936BC 00000000 */   nop
/* 1A5740 803936C0 8C820014 */  lw         $v0, 0x14($a0)
/* 1A5744 803936C4 A045003D */  sb         $a1, 0x3d($v0)
.L803936C8:
/* 1A5748 803936C8 03E00008 */  jr         $ra
/* 1A574C 803936CC 00000000 */   nop

glabel func_803936D0_1A5750
/* 1A5750 803936D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A5754 803936D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5758 803936D8 00808021 */  addu       $s0, $a0, $zero
/* 1A575C 803936DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A5760 803936E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A5764 803936E4 8E04000C */  lw         $a0, 0xc($s0)
/* 1A5768 803936E8 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A576C 803936EC 8E110014 */  lw         $s1, 0x14($s0)
/* 1A5770 803936F0 24020001 */  addiu      $v0, $zero, 1
/* 1A5774 803936F4 10620018 */  beq        $v1, $v0, .L80393758
/* 1A5778 803936F8 28620002 */   slti      $v0, $v1, 2
/* 1A577C 803936FC 50400005 */  beql       $v0, $zero, .L80393714
/* 1A5780 80393700 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A5784 80393704 10600007 */  beqz       $v1, .L80393724
/* 1A5788 80393708 00001021 */   addu      $v0, $zero, $zero
/* 1A578C 8039370C 080E4DE9 */  j          .L803937A4
/* 1A5790 80393710 00000000 */   nop
.L80393714:
/* 1A5794 80393714 1062001B */  beq        $v1, $v0, .L80393784
/* 1A5798 80393718 00001021 */   addu      $v0, $zero, $zero
/* 1A579C 8039371C 080E4DE9 */  j          .L803937A4
/* 1A57A0 80393720 00000000 */   nop
.L80393724:
/* 1A57A4 80393724 0C032663 */  jal        func_800C998C
/* 1A57A8 80393728 24040014 */   addiu     $a0, $zero, 0x14
/* 1A57AC 8039372C 00402021 */  addu       $a0, $v0, $zero
/* 1A57B0 80393730 24050014 */  addiu      $a1, $zero, 0x14
/* 1A57B4 80393734 0C030134 */  jal        bzero
/* 1A57B8 80393738 AE040014 */   sw        $a0, 0x14($s0)
/* 1A57BC 8039373C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A57C0 80393740 0C0E4DEF */  jal        func_803937BC_1A583C
/* 1A57C4 80393744 00000000 */   nop
/* 1A57C8 80393748 00001021 */  addu       $v0, $zero, $zero
/* 1A57CC 8039374C 24030001 */  addiu      $v1, $zero, 1
/* 1A57D0 80393750 080E4DE9 */  j          .L803937A4
/* 1A57D4 80393754 A603001C */   sh        $v1, 0x1c($s0)
.L80393758:
/* 1A57D8 80393758 0C025C53 */  jal        func_8009714C
/* 1A57DC 8039375C 00000000 */   nop
/* 1A57E0 80393760 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A57E4 80393764 14430003 */  bne        $v0, $v1, .L80393774
/* 1A57E8 80393768 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A57EC 8039376C 080E4DE8 */  j          .L803937A0
/* 1A57F0 80393770 A602001C */   sh        $v0, 0x1c($s0)
.L80393774:
/* 1A57F4 80393774 0C0E4E1D */  jal        func_80393874_1A58F4
/* 1A57F8 80393778 02202021 */   addu      $a0, $s1, $zero
/* 1A57FC 8039377C 080E4DE9 */  j          .L803937A4
/* 1A5800 80393780 00001021 */   addu      $v0, $zero, $zero
.L80393784:
/* 1A5804 80393784 0C0E4E14 */  jal        func_80393850_1A58D0
/* 1A5808 80393788 02202021 */   addu      $a0, $s1, $zero
/* 1A580C 8039378C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A5810 80393790 0C0326A1 */  jal        func_800C9A84
/* 1A5814 80393794 00000000 */   nop
/* 1A5818 80393798 080E4DE9 */  j          .L803937A4
/* 1A581C 8039379C 24020001 */   addiu     $v0, $zero, 1
.L803937A0:
/* 1A5820 803937A0 00001021 */  addu       $v0, $zero, $zero
.L803937A4:
/* 1A5824 803937A4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A5828 803937A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A582C 803937AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A5830 803937B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A5834 803937B4 03E00008 */  jr         $ra
/* 1A5838 803937B8 00000000 */   nop

glabel func_803937BC_1A583C
/* 1A583C 803937BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A5840 803937C0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5844 803937C4 00808021 */  addu       $s0, $a0, $zero
/* 1A5848 803937C8 24040537 */  addiu      $a0, $zero, 0x537
/* 1A584C 803937CC 24050005 */  addiu      $a1, $zero, 5
/* 1A5850 803937D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A5854 803937D4 0C028CB7 */  jal        func_800A32DC
/* 1A5858 803937D8 00003021 */   addu      $a2, $zero, $zero
/* 1A585C 803937DC 00002021 */  addu       $a0, $zero, $zero
/* 1A5860 803937E0 AE020000 */  sw         $v0, ($s0)
.L803937E4:
/* 1A5864 803937E4 8E020000 */  lw         $v0, ($s0)
/* 1A5868 803937E8 8C420014 */  lw         $v0, 0x14($v0)
/* 1A586C 803937EC 00041840 */  sll        $v1, $a0, 1
/* 1A5870 803937F0 00621821 */  addu       $v1, $v1, $v0
/* 1A5874 803937F4 94620000 */  lhu        $v0, ($v1)
/* 1A5878 803937F8 24840001 */  addiu      $a0, $a0, 1
/* 1A587C 803937FC 3042FFFE */  andi       $v0, $v0, 0xfffe
/* 1A5880 80393800 A4620000 */  sh         $v0, ($v1)
/* 1A5884 80393804 2882000D */  slti       $v0, $a0, 0xd
/* 1A5888 80393808 1440FFF6 */  bnez       $v0, .L803937E4
/* 1A588C 8039380C 00000000 */   nop
/* 1A5890 80393810 3C014350 */  lui        $at, 0x4350
/* 1A5894 80393814 44810000 */  mtc1       $at, $f0
/* 1A5898 80393818 00000000 */  nop
/* 1A589C 8039381C 3C014356 */  lui        $at, 0x4356
/* 1A58A0 80393820 44811000 */  mtc1       $at, $f2
/* 1A58A4 80393824 00000000 */  nop
/* 1A58A8 80393828 A600000C */  sh         $zero, 0xc($s0)
/* 1A58AC 8039382C A600000E */  sh         $zero, 0xe($s0)
/* 1A58B0 80393830 A2000010 */  sb         $zero, 0x10($s0)
/* 1A58B4 80393834 E6000004 */  swc1       $f0, 4($s0)
/* 1A58B8 80393838 E6020008 */  swc1       $f2, 8($s0)
/* 1A58BC 8039383C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A58C0 80393840 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A58C4 80393844 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A58C8 80393848 03E00008 */  jr         $ra
/* 1A58CC 8039384C 00000000 */   nop

glabel func_80393850_1A58D0
/* 1A58D0 80393850 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A58D4 80393854 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1A58D8 80393858 8C840000 */  lw         $a0, ($a0)
/* 1A58DC 8039385C 0C028D30 */  jal        func_800A34C0
/* 1A58E0 80393860 00000000 */   nop
/* 1A58E4 80393864 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1A58E8 80393868 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A58EC 8039386C 03E00008 */  jr         $ra
/* 1A58F0 80393870 00000000 */   nop

glabel func_80393874_1A58F4
/* 1A58F4 80393874 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A58F8 80393878 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A58FC 8039387C 00808021 */  addu       $s0, $a0, $zero
/* 1A5900 80393880 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A5904 80393884 8602000E */  lh         $v0, 0xe($s0)
/* 1A5908 80393888 10400006 */  beqz       $v0, .L803938A4
/* 1A590C 8039388C 00401821 */   addu      $v1, $v0, $zero
/* 1A5910 80393890 2462FFFF */  addiu      $v0, $v1, -1
/* 1A5914 80393894 A602000E */  sh         $v0, 0xe($s0)
/* 1A5918 80393898 00021400 */  sll        $v0, $v0, 0x10
/* 1A591C 8039389C 50400001 */  beql       $v0, $zero, .L803938A4
/* 1A5920 803938A0 A600000C */   sh        $zero, 0xc($s0)
.L803938A4:
/* 1A5924 803938A4 8603000C */  lh         $v1, 0xc($s0)
/* 1A5928 803938A8 24020001 */  addiu      $v0, $zero, 1
/* 1A592C 803938AC 10620022 */  beq        $v1, $v0, .L80393938
/* 1A5930 803938B0 28620002 */   slti      $v0, $v1, 2
/* 1A5934 803938B4 50400005 */  beql       $v0, $zero, .L803938CC
/* 1A5938 803938B8 24020002 */   addiu     $v0, $zero, 2
/* 1A593C 803938BC 1060002C */  beqz       $v1, .L80393970
/* 1A5940 803938C0 00002021 */   addu      $a0, $zero, $zero
/* 1A5944 803938C4 080E4E67 */  j          .L8039399C
/* 1A5948 803938C8 00000000 */   nop
.L803938CC:
/* 1A594C 803938CC 1062000E */  beq        $v1, $v0, .L80393908
/* 1A5950 803938D0 24020003 */   addiu     $v0, $zero, 3
/* 1A5954 803938D4 14620031 */  bne        $v1, $v0, .L8039399C
/* 1A5958 803938D8 24040009 */   addiu     $a0, $zero, 9
.L803938DC:
/* 1A595C 803938DC 8E020000 */  lw         $v0, ($s0)
/* 1A5960 803938E0 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5964 803938E4 00041840 */  sll        $v1, $a0, 1
/* 1A5968 803938E8 00621821 */  addu       $v1, $v1, $v0
/* 1A596C 803938EC 94620000 */  lhu        $v0, ($v1)
/* 1A5970 803938F0 24840001 */  addiu      $a0, $a0, 1
/* 1A5974 803938F4 34420001 */  ori        $v0, $v0, 1
/* 1A5978 803938F8 A4620000 */  sh         $v0, ($v1)
/* 1A597C 803938FC 2882000D */  slti       $v0, $a0, 0xd
/* 1A5980 80393900 1440FFF6 */  bnez       $v0, .L803938DC
/* 1A5984 80393904 00000000 */   nop
.L80393908:
/* 1A5988 80393908 24040005 */  addiu      $a0, $zero, 5
.L8039390C:
/* 1A598C 8039390C 8E020000 */  lw         $v0, ($s0)
/* 1A5990 80393910 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5994 80393914 00041840 */  sll        $v1, $a0, 1
/* 1A5998 80393918 00621821 */  addu       $v1, $v1, $v0
/* 1A599C 8039391C 94620000 */  lhu        $v0, ($v1)
/* 1A59A0 80393920 24840001 */  addiu      $a0, $a0, 1
/* 1A59A4 80393924 34420001 */  ori        $v0, $v0, 1
/* 1A59A8 80393928 A4620000 */  sh         $v0, ($v1)
/* 1A59AC 8039392C 28820009 */  slti       $v0, $a0, 9
/* 1A59B0 80393930 1440FFF6 */  bnez       $v0, .L8039390C
/* 1A59B4 80393934 00000000 */   nop
.L80393938:
/* 1A59B8 80393938 24040001 */  addiu      $a0, $zero, 1
.L8039393C:
/* 1A59BC 8039393C 8E020000 */  lw         $v0, ($s0)
/* 1A59C0 80393940 8C420014 */  lw         $v0, 0x14($v0)
/* 1A59C4 80393944 00041840 */  sll        $v1, $a0, 1
/* 1A59C8 80393948 00621821 */  addu       $v1, $v1, $v0
/* 1A59CC 8039394C 94620000 */  lhu        $v0, ($v1)
/* 1A59D0 80393950 24840001 */  addiu      $a0, $a0, 1
/* 1A59D4 80393954 34420001 */  ori        $v0, $v0, 1
/* 1A59D8 80393958 A4620000 */  sh         $v0, ($v1)
/* 1A59DC 8039395C 28820005 */  slti       $v0, $a0, 5
/* 1A59E0 80393960 1040000E */  beqz       $v0, .L8039399C
/* 1A59E4 80393964 00000000 */   nop
/* 1A59E8 80393968 080E4E4F */  j          .L8039393C
/* 1A59EC 8039396C 00000000 */   nop
.L80393970:
/* 1A59F0 80393970 8E020000 */  lw         $v0, ($s0)
/* 1A59F4 80393974 8C420014 */  lw         $v0, 0x14($v0)
/* 1A59F8 80393978 00041840 */  sll        $v1, $a0, 1
/* 1A59FC 8039397C 00621821 */  addu       $v1, $v1, $v0
/* 1A5A00 80393980 94620000 */  lhu        $v0, ($v1)
/* 1A5A04 80393984 24840001 */  addiu      $a0, $a0, 1
/* 1A5A08 80393988 3042FFFE */  andi       $v0, $v0, 0xfffe
/* 1A5A0C 8039398C A4620000 */  sh         $v0, ($v1)
/* 1A5A10 80393990 2882000D */  slti       $v0, $a0, 0xd
/* 1A5A14 80393994 1440FFF6 */  bnez       $v0, .L80393970
/* 1A5A18 80393998 00000000 */   nop
.L8039399C:
/* 1A5A1C 8039399C C6000004 */  lwc1       $f0, 4($s0)
/* 1A5A20 803939A0 8E040000 */  lw         $a0, ($s0)
/* 1A5A24 803939A4 C6020008 */  lwc1       $f2, 8($s0)
/* 1A5A28 803939A8 4600010D */  trunc.w.s  $f4, $f0
/* 1A5A2C 803939AC 44052000 */  mfc1       $a1, $f4
/* 1A5A30 803939B0 00000000 */  nop
/* 1A5A34 803939B4 00052C80 */  sll        $a1, $a1, 0x12
/* 1A5A38 803939B8 4600100D */  trunc.w.s  $f0, $f2
/* 1A5A3C 803939BC 44060000 */  mfc1       $a2, $f0
/* 1A5A40 803939C0 00000000 */  nop
/* 1A5A44 803939C4 00063480 */  sll        $a2, $a2, 0x12
/* 1A5A48 803939C8 00052C03 */  sra        $a1, $a1, 0x10
/* 1A5A4C 803939CC 0C028D89 */  jal        func_800A3624
/* 1A5A50 803939D0 00063403 */   sra       $a2, $a2, 0x10
/* 1A5A54 803939D4 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A5A58 803939D8 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A5A5C 803939DC 10400004 */  beqz       $v0, .L803939F0
/* 1A5A60 803939E0 00000000 */   nop
/* 1A5A64 803939E4 8E040000 */  lw         $a0, ($s0)
/* 1A5A68 803939E8 0C028A40 */  jal        func_800A2900
/* 1A5A6C 803939EC 00000000 */   nop
.L803939F0:
/* 1A5A70 803939F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A5A74 803939F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A5A78 803939F8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A5A7C 803939FC 03E00008 */  jr         $ra
/* 1A5A80 80393A00 00000000 */   nop

glabel func_80393A04
/* 1A5A84 80393A04 10800012 */  beqz       $a0, .L80393A50
/* 1A5A88 80393A08 27BDFFF8 */   addiu     $sp, $sp, -8
/* 1A5A8C 80393A0C 8C840014 */  lw         $a0, 0x14($a0)
/* 1A5A90 80393A10 8482000C */  lh         $v0, 0xc($a0)
/* 1A5A94 80393A14 00401821 */  addu       $v1, $v0, $zero
/* 1A5A98 80393A18 28420003 */  slti       $v0, $v0, 3
/* 1A5A9C 80393A1C 10400002 */  beqz       $v0, .L80393A28
/* 1A5AA0 80393A20 24620001 */   addiu     $v0, $v1, 1
/* 1A5AA4 80393A24 A482000C */  sh         $v0, 0xc($a0)
.L80393A28:
/* 1A5AA8 80393A28 3C01803B */  lui        $at, %hi(D_803A8BC0_1BAC40)
/* 1A5AAC 80393A2C D4228BC0 */  ldc1       $f2, %lo(D_803A8BC0_1BAC40)($at)
/* 1A5AB0 80393A30 3C018017 */  lui        $at, %hi(D_8016D168)
/* 1A5AB4 80393A34 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* 1A5AB8 80393A38 46800021 */  cvt.d.w    $f0, $f0
/* 1A5ABC 80393A3C 46220002 */  mul.d      $f0, $f0, $f2
/* 1A5AC0 80393A40 4620008D */  trunc.w.d  $f2, $f0
/* 1A5AC4 80393A44 44021000 */  mfc1       $v0, $f2
/* 1A5AC8 80393A48 00000000 */  nop
/* 1A5ACC 80393A4C A482000E */  sh         $v0, 0xe($a0)
.L80393A50:
/* 1A5AD0 80393A50 27BD0008 */  addiu      $sp, $sp, 8
/* 1A5AD4 80393A54 03E00008 */  jr         $ra
/* 1A5AD8 80393A58 00000000 */   nop

glabel func_80393A5C_1A5ADC
/* 1A5ADC 80393A5C 10800015 */  beqz       $a0, .L80393AB4
/* 1A5AE0 80393A60 00000000 */   nop
/* 1A5AE4 80393A64 8C820014 */  lw         $v0, 0x14($a0)
/* 1A5AE8 80393A68 8443000C */  lh         $v1, 0xc($v0)
/* 1A5AEC 80393A6C 24020001 */  addiu      $v0, $zero, 1
/* 1A5AF0 80393A70 1062000D */  beq        $v1, $v0, .L80393AA8
/* 1A5AF4 80393A74 28620002 */   slti      $v0, $v1, 2
/* 1A5AF8 80393A78 50400005 */  beql       $v0, $zero, .L80393A90
/* 1A5AFC 80393A7C 24020002 */   addiu     $v0, $zero, 2
/* 1A5B00 80393A80 1060000C */  beqz       $v1, .L80393AB4
/* 1A5B04 80393A84 24020001 */   addiu     $v0, $zero, 1
/* 1A5B08 80393A88 080E4EAD */  j          .L80393AB4
/* 1A5B0C 80393A8C 00000000 */   nop
.L80393A90:
/* 1A5B10 80393A90 10620007 */  beq        $v1, $v0, .L80393AB0
/* 1A5B14 80393A94 24020003 */   addiu     $v0, $zero, 3
/* 1A5B18 80393A98 10620006 */  beq        $v1, $v0, .L80393AB4
/* 1A5B1C 80393A9C 24020004 */   addiu     $v0, $zero, 4
/* 1A5B20 80393AA0 080E4EAD */  j          .L80393AB4
/* 1A5B24 80393AA4 24020001 */   addiu     $v0, $zero, 1
.L80393AA8:
/* 1A5B28 80393AA8 080E4EAD */  j          .L80393AB4
/* 1A5B2C 80393AAC 24020001 */   addiu     $v0, $zero, 1
.L80393AB0:
/* 1A5B30 80393AB0 24020002 */  addiu      $v0, $zero, 2
.L80393AB4:
/* 1A5B34 80393AB4 03E00008 */  jr         $ra
/* 1A5B38 80393AB8 00000000 */   nop

glabel func_80393ABC
/* 1A5B3C 80393ABC 10800003 */  beqz       $a0, .L80393ACC
/* 1A5B40 80393AC0 00000000 */   nop
/* 1A5B44 80393AC4 8C820014 */  lw         $v0, 0x14($a0)
/* 1A5B48 80393AC8 A0450010 */  sb         $a1, 0x10($v0)
.L80393ACC:
/* 1A5B4C 80393ACC 03E00008 */  jr         $ra
/* 1A5B50 80393AD0 00000000 */   nop
/* 1A5B54 80393AD4 00000000 */  nop
/* 1A5B58 80393AD8 00000000 */  nop
/* 1A5B5C 80393ADC 00000000 */  nop

glabel func_80393AE0_1A5B60
/* 1A5B60 80393AE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A5B64 80393AE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5B68 80393AE8 00808021 */  addu       $s0, $a0, $zero
/* 1A5B6C 80393AEC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A5B70 80393AF0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A5B74 80393AF4 8E04000C */  lw         $a0, 0xc($s0)
/* 1A5B78 80393AF8 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A5B7C 80393AFC 8E110014 */  lw         $s1, 0x14($s0)
/* 1A5B80 80393B00 24020001 */  addiu      $v0, $zero, 1
/* 1A5B84 80393B04 10620018 */  beq        $v1, $v0, .L80393B68
/* 1A5B88 80393B08 28620002 */   slti      $v0, $v1, 2
/* 1A5B8C 80393B0C 50400005 */  beql       $v0, $zero, .L80393B24
/* 1A5B90 80393B10 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A5B94 80393B14 10600007 */  beqz       $v1, .L80393B34
/* 1A5B98 80393B18 00001021 */   addu      $v0, $zero, $zero
/* 1A5B9C 80393B1C 080E4EED */  j          .L80393BB4
/* 1A5BA0 80393B20 00000000 */   nop
.L80393B24:
/* 1A5BA4 80393B24 1062001B */  beq        $v1, $v0, .L80393B94
/* 1A5BA8 80393B28 00001021 */   addu      $v0, $zero, $zero
/* 1A5BAC 80393B2C 080E4EED */  j          .L80393BB4
/* 1A5BB0 80393B30 00000000 */   nop
.L80393B34:
/* 1A5BB4 80393B34 0C032663 */  jal        func_800C998C
/* 1A5BB8 80393B38 240400A0 */   addiu     $a0, $zero, 0xa0
/* 1A5BBC 80393B3C 00402021 */  addu       $a0, $v0, $zero
/* 1A5BC0 80393B40 240500A0 */  addiu      $a1, $zero, 0xa0
/* 1A5BC4 80393B44 0C030134 */  jal        bzero
/* 1A5BC8 80393B48 AE040014 */   sw        $a0, 0x14($s0)
/* 1A5BCC 80393B4C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A5BD0 80393B50 0C0E4EF3 */  jal        func_80393BCC_1A5C4C
/* 1A5BD4 80393B54 00000000 */   nop
/* 1A5BD8 80393B58 00001021 */  addu       $v0, $zero, $zero
/* 1A5BDC 80393B5C 24030001 */  addiu      $v1, $zero, 1
/* 1A5BE0 80393B60 080E4EED */  j          .L80393BB4
/* 1A5BE4 80393B64 A603001C */   sh        $v1, 0x1c($s0)
.L80393B68:
/* 1A5BE8 80393B68 0C025C53 */  jal        func_8009714C
/* 1A5BEC 80393B6C 00000000 */   nop
/* 1A5BF0 80393B70 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A5BF4 80393B74 14430003 */  bne        $v0, $v1, .L80393B84
/* 1A5BF8 80393B78 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A5BFC 80393B7C 080E4EEC */  j          .L80393BB0
/* 1A5C00 80393B80 A602001C */   sh        $v0, 0x1c($s0)
.L80393B84:
/* 1A5C04 80393B84 0C0E5000 */  jal        func_80394000_1A6080
/* 1A5C08 80393B88 02202021 */   addu      $a0, $s1, $zero
/* 1A5C0C 80393B8C 080E4EED */  j          .L80393BB4
/* 1A5C10 80393B90 00001021 */   addu      $v0, $zero, $zero
.L80393B94:
/* 1A5C14 80393B94 0C0E4FB5 */  jal        func_80393ED4_1A5F54
/* 1A5C18 80393B98 02202021 */   addu      $a0, $s1, $zero
/* 1A5C1C 80393B9C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A5C20 80393BA0 0C0326A1 */  jal        func_800C9A84
/* 1A5C24 80393BA4 00000000 */   nop
/* 1A5C28 80393BA8 080E4EED */  j          .L80393BB4
/* 1A5C2C 80393BAC 24020001 */   addiu     $v0, $zero, 1
.L80393BB0:
/* 1A5C30 80393BB0 00001021 */  addu       $v0, $zero, $zero
.L80393BB4:
/* 1A5C34 80393BB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A5C38 80393BB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A5C3C 80393BBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A5C40 80393BC0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A5C44 80393BC4 03E00008 */  jr         $ra
/* 1A5C48 80393BC8 00000000 */   nop

glabel func_80393BCC_1A5C4C
/* 1A5C4C 80393BCC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A5C50 80393BD0 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A5C54 80393BD4 00809021 */  addu       $s2, $a0, $zero
/* 1A5C58 80393BD8 2404059B */  addiu      $a0, $zero, 0x59b
/* 1A5C5C 80393BDC 24050001 */  addiu      $a1, $zero, 1
/* 1A5C60 80393BE0 00003021 */  addu       $a2, $zero, $zero
/* 1A5C64 80393BE4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A5C68 80393BE8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A5C6C 80393BEC 0C028CB7 */  jal        func_800A32DC
/* 1A5C70 80393BF0 AFB00018 */   sw        $s0, 0x18($sp)
/* 1A5C74 80393BF4 2404059D */  addiu      $a0, $zero, 0x59d
/* 1A5C78 80393BF8 240503C2 */  addiu      $a1, $zero, 0x3c2
/* 1A5C7C 80393BFC 24060006 */  addiu      $a2, $zero, 6
/* 1A5C80 80393C00 00003821 */  addu       $a3, $zero, $zero
/* 1A5C84 80393C04 0C028CC9 */  jal        func_800A3324
/* 1A5C88 80393C08 AE420000 */   sw        $v0, ($s2)
/* 1A5C8C 80393C0C 2404059D */  addiu      $a0, $zero, 0x59d
/* 1A5C90 80393C10 24050006 */  addiu      $a1, $zero, 6
/* 1A5C94 80393C14 00003021 */  addu       $a2, $zero, $zero
/* 1A5C98 80393C18 0C028CB7 */  jal        func_800A32DC
/* 1A5C9C 80393C1C AE420004 */   sw        $v0, 4($s2)
/* 1A5CA0 80393C20 24040599 */  addiu      $a0, $zero, 0x599
/* 1A5CA4 80393C24 24050001 */  addiu      $a1, $zero, 1
/* 1A5CA8 80393C28 00003021 */  addu       $a2, $zero, $zero
/* 1A5CAC 80393C2C 0C028CB7 */  jal        func_800A32DC
/* 1A5CB0 80393C30 AE420008 */   sw        $v0, 8($s2)
/* 1A5CB4 80393C34 2404059C */  addiu      $a0, $zero, 0x59c
/* 1A5CB8 80393C38 24050001 */  addiu      $a1, $zero, 1
/* 1A5CBC 80393C3C 00003021 */  addu       $a2, $zero, $zero
/* 1A5CC0 80393C40 0C028CB7 */  jal        func_800A32DC
/* 1A5CC4 80393C44 AE42000C */   sw        $v0, 0xc($s2)
/* 1A5CC8 80393C48 2404053A */  addiu      $a0, $zero, 0x53a
/* 1A5CCC 80393C4C 24050006 */  addiu      $a1, $zero, 6
/* 1A5CD0 80393C50 00003021 */  addu       $a2, $zero, $zero
/* 1A5CD4 80393C54 0C028CB7 */  jal        func_800A32DC
/* 1A5CD8 80393C58 AE420010 */   sw        $v0, 0x10($s2)
/* 1A5CDC 80393C5C 2404053A */  addiu      $a0, $zero, 0x53a
/* 1A5CE0 80393C60 24050005 */  addiu      $a1, $zero, 5
/* 1A5CE4 80393C64 00003021 */  addu       $a2, $zero, $zero
/* 1A5CE8 80393C68 0C028CB7 */  jal        func_800A32DC
/* 1A5CEC 80393C6C AE420024 */   sw        $v0, 0x24($s2)
/* 1A5CF0 80393C70 2404053B */  addiu      $a0, $zero, 0x53b
/* 1A5CF4 80393C74 00002821 */  addu       $a1, $zero, $zero
/* 1A5CF8 80393C78 00003021 */  addu       $a2, $zero, $zero
/* 1A5CFC 80393C7C 0C028CB7 */  jal        func_800A32DC
/* 1A5D00 80393C80 AE420028 */   sw        $v0, 0x28($s2)
/* 1A5D04 80393C84 2404053C */  addiu      $a0, $zero, 0x53c
/* 1A5D08 80393C88 00002821 */  addu       $a1, $zero, $zero
/* 1A5D0C 80393C8C 00003021 */  addu       $a2, $zero, $zero
/* 1A5D10 80393C90 0C028CB7 */  jal        func_800A32DC
/* 1A5D14 80393C94 AE42002C */   sw        $v0, 0x2c($s2)
/* 1A5D18 80393C98 00008021 */  addu       $s0, $zero, $zero
/* 1A5D1C 80393C9C 02408821 */  addu       $s1, $s2, $zero
/* 1A5D20 80393CA0 AE420030 */  sw         $v0, 0x30($s2)
.L80393CA4:
/* 1A5D24 80393CA4 2404059A */  addiu      $a0, $zero, 0x59a
/* 1A5D28 80393CA8 24050001 */  addiu      $a1, $zero, 1
/* 1A5D2C 80393CAC 0C028CB7 */  jal        func_800A32DC
/* 1A5D30 80393CB0 00003021 */   addu      $a2, $zero, $zero
/* 1A5D34 80393CB4 AE220014 */  sw         $v0, 0x14($s1)
/* 1A5D38 80393CB8 26100001 */  addiu      $s0, $s0, 1
/* 1A5D3C 80393CBC 2A020004 */  slti       $v0, $s0, 4
/* 1A5D40 80393CC0 1440FFF8 */  bnez       $v0, .L80393CA4
/* 1A5D44 80393CC4 26310004 */   addiu     $s1, $s1, 4
/* 1A5D48 80393CC8 00008021 */  addu       $s0, $zero, $zero
/* 1A5D4C 80393CCC 02408821 */  addu       $s1, $s2, $zero
.L80393CD0:
/* 1A5D50 80393CD0 0C029375 */  jal        func_800A4DD4
/* 1A5D54 80393CD4 26100001 */   addiu     $s0, $s0, 1
/* 1A5D58 80393CD8 AE220034 */  sw         $v0, 0x34($s1)
/* 1A5D5C 80393CDC 2A020002 */  slti       $v0, $s0, 2
/* 1A5D60 80393CE0 1440FFFB */  bnez       $v0, .L80393CD0
/* 1A5D64 80393CE4 26310004 */   addiu     $s1, $s1, 4
/* 1A5D68 80393CE8 240200E0 */  addiu      $v0, $zero, 0xe0
/* 1A5D6C 80393CEC AFA20010 */  sw         $v0, 0x10($sp)
/* 1A5D70 80393CF0 8E440038 */  lw         $a0, 0x38($s2)
/* 1A5D74 80393CF4 24050010 */  addiu      $a1, $zero, 0x10
/* 1A5D78 80393CF8 24060010 */  addiu      $a2, $zero, 0x10
/* 1A5D7C 80393CFC 0C02939C */  jal        func_800A4E70
/* 1A5D80 80393D00 24070130 */   addiu     $a3, $zero, 0x130
/* 1A5D84 80393D04 241100CC */  addiu      $s1, $zero, 0xcc
/* 1A5D88 80393D08 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A5D8C 80393D0C 8E440000 */  lw         $a0, ($s2)
/* 1A5D90 80393D10 240500FF */  addiu      $a1, $zero, 0xff
/* 1A5D94 80393D14 240600FF */  addiu      $a2, $zero, 0xff
/* 1A5D98 80393D18 0C028E41 */  jal        func_800A3904
/* 1A5D9C 80393D1C 240700FF */   addiu     $a3, $zero, 0xff
/* 1A5DA0 80393D20 241000A3 */  addiu      $s0, $zero, 0xa3
/* 1A5DA4 80393D24 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5DA8 80393D28 8E440004 */  lw         $a0, 4($s2)
/* 1A5DAC 80393D2C 240500FF */  addiu      $a1, $zero, 0xff
/* 1A5DB0 80393D30 240600FF */  addiu      $a2, $zero, 0xff
/* 1A5DB4 80393D34 0C028E41 */  jal        func_800A3904
/* 1A5DB8 80393D38 240700FF */   addiu     $a3, $zero, 0xff
/* 1A5DBC 80393D3C 2402007F */  addiu      $v0, $zero, 0x7f
/* 1A5DC0 80393D40 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A5DC4 80393D44 8E440008 */  lw         $a0, 8($s2)
/* 1A5DC8 80393D48 240500FF */  addiu      $a1, $zero, 0xff
/* 1A5DCC 80393D4C 240600FF */  addiu      $a2, $zero, 0xff
/* 1A5DD0 80393D50 0C028E41 */  jal        func_800A3904
/* 1A5DD4 80393D54 240700FF */   addiu     $a3, $zero, 0xff
/* 1A5DD8 80393D58 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5DDC 80393D5C 8E44000C */  lw         $a0, 0xc($s2)
/* 1A5DE0 80393D60 240500FF */  addiu      $a1, $zero, 0xff
/* 1A5DE4 80393D64 240600FF */  addiu      $a2, $zero, 0xff
/* 1A5DE8 80393D68 0C028E41 */  jal        func_800A3904
/* 1A5DEC 80393D6C 240700FF */   addiu     $a3, $zero, 0xff
/* 1A5DF0 80393D70 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A5DF4 80393D74 8E440010 */  lw         $a0, 0x10($s2)
/* 1A5DF8 80393D78 240500FF */  addiu      $a1, $zero, 0xff
/* 1A5DFC 80393D7C 240600FF */  addiu      $a2, $zero, 0xff
/* 1A5E00 80393D80 0C028E41 */  jal        func_800A3904
/* 1A5E04 80393D84 240700FF */   addiu     $a3, $zero, 0xff
/* 1A5E08 80393D88 24020002 */  addiu      $v0, $zero, 2
/* 1A5E0C 80393D8C AFA20010 */  sw         $v0, 0x10($sp)
/* 1A5E10 80393D90 8E440024 */  lw         $a0, 0x24($s2)
/* 1A5E14 80393D94 240500FF */  addiu      $a1, $zero, 0xff
/* 1A5E18 80393D98 240600FF */  addiu      $a2, $zero, 0xff
/* 1A5E1C 80393D9C 0C028E41 */  jal        func_800A3904
/* 1A5E20 80393DA0 240700FF */   addiu     $a3, $zero, 0xff
/* 1A5E24 80393DA4 8E430004 */  lw         $v1, 4($s2)
/* 1A5E28 80393DA8 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A5E2C 80393DAC 34420004 */  ori        $v0, $v0, 4
/* 1A5E30 80393DB0 A462001E */  sh         $v0, 0x1e($v1)
/* 1A5E34 80393DB4 8E430008 */  lw         $v1, 8($s2)
/* 1A5E38 80393DB8 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A5E3C 80393DBC 34420004 */  ori        $v0, $v0, 4
/* 1A5E40 80393DC0 A462001E */  sh         $v0, 0x1e($v1)
/* 1A5E44 80393DC4 8E420028 */  lw         $v0, 0x28($s2)
/* 1A5E48 80393DC8 8C420014 */  lw         $v0, 0x14($v0)
/* 1A5E4C 80393DCC 24100001 */  addiu      $s0, $zero, 1
/* 1A5E50 80393DD0 26430004 */  addiu      $v1, $s2, 4
/* 1A5E54 80393DD4 A4400002 */  sh         $zero, 2($v0)
.L80393DD8:
/* 1A5E58 80393DD8 AC60003C */  sw         $zero, 0x3c($v1)
/* 1A5E5C 80393DDC 2610FFFF */  addiu      $s0, $s0, -1
/* 1A5E60 80393DE0 0601FFFD */  bgez       $s0, .L80393DD8
/* 1A5E64 80393DE4 2463FFFC */   addiu     $v1, $v1, -4
/* 1A5E68 80393DE8 240403C2 */  addiu      $a0, $zero, 0x3c2
/* 1A5E6C 80393DEC 0C0298D4 */  jal        func_800A6350
/* 1A5E70 80393DF0 00002821 */   addu      $a1, $zero, $zero
/* 1A5E74 80393DF4 240403C1 */  addiu      $a0, $zero, 0x3c1
/* 1A5E78 80393DF8 00002821 */  addu       $a1, $zero, $zero
/* 1A5E7C 80393DFC 0C0298D4 */  jal        func_800A6350
/* 1A5E80 80393E00 AE420048 */   sw        $v0, 0x48($s2)
/* 1A5E84 80393E04 240403C3 */  addiu      $a0, $zero, 0x3c3
/* 1A5E88 80393E08 00002821 */  addu       $a1, $zero, $zero
/* 1A5E8C 80393E0C 0C0298D4 */  jal        func_800A6350
/* 1A5E90 80393E10 AE420044 */   sw        $v0, 0x44($s2)
/* 1A5E94 80393E14 3C014180 */  lui        $at, 0x4180
/* 1A5E98 80393E18 44811000 */  mtc1       $at, $f2
/* 1A5E9C 80393E1C 00000000 */  nop
/* 1A5EA0 80393E20 3C014338 */  lui        $at, 0x4338
/* 1A5EA4 80393E24 44812000 */  mtc1       $at, $f4
/* 1A5EA8 80393E28 00000000 */  nop
/* 1A5EAC 80393E2C 3C01803B */  lui        $at, %hi(D_803A8BD0_1BAC50)
/* 1A5EB0 80393E30 D4208BD0 */  ldc1       $f0, %lo(D_803A8BD0_1BAC50)($at)
/* 1A5EB4 80393E34 AE42004C */  sw         $v0, 0x4c($s2)
/* 1A5EB8 80393E38 AE400058 */  sw         $zero, 0x58($s2)
/* 1A5EBC 80393E3C AE40005C */  sw         $zero, 0x5c($s2)
/* 1A5EC0 80393E40 AE400060 */  sw         $zero, 0x60($s2)
/* 1A5EC4 80393E44 AE400064 */  sw         $zero, 0x64($s2)
/* 1A5EC8 80393E48 AE400068 */  sw         $zero, 0x68($s2)
/* 1A5ECC 80393E4C AE40006C */  sw         $zero, 0x6c($s2)
/* 1A5ED0 80393E50 AE400078 */  sw         $zero, 0x78($s2)
/* 1A5ED4 80393E54 AE40007C */  sw         $zero, 0x7c($s2)
/* 1A5ED8 80393E58 AE400080 */  sw         $zero, 0x80($s2)
/* 1A5EDC 80393E5C AE400084 */  sw         $zero, 0x84($s2)
/* 1A5EE0 80393E60 AE400088 */  sw         $zero, 0x88($s2)
/* 1A5EE4 80393E64 A240008C */  sb         $zero, 0x8c($s2)
/* 1A5EE8 80393E68 A640008E */  sh         $zero, 0x8e($s2)
/* 1A5EEC 80393E6C A6400090 */  sh         $zero, 0x90($s2)
/* 1A5EF0 80393E70 A6400092 */  sh         $zero, 0x92($s2)
/* 1A5EF4 80393E74 A6400094 */  sh         $zero, 0x94($s2)
/* 1A5EF8 80393E78 A6400096 */  sh         $zero, 0x96($s2)
/* 1A5EFC 80393E7C A6400098 */  sh         $zero, 0x98($s2)
/* 1A5F00 80393E80 E6420050 */  swc1       $f2, 0x50($s2)
/* 1A5F04 80393E84 E6440054 */  swc1       $f4, 0x54($s2)
/* 1A5F08 80393E88 F6400070 */  sdc1       $f0, 0x70($s2)
/* 1A5F0C 80393E8C 3C028015 */  lui        $v0, %hi(D_80149E28)
/* 1A5F10 80393E90 90429E28 */  lbu        $v0, %lo(D_80149E28)($v0)
/* 1A5F14 80393E94 3C03803A */  lui        $v1, %hi(D_8039E720_1B07A0)
/* 1A5F18 80393E98 00621821 */  addu       $v1, $v1, $v0
/* 1A5F1C 80393E9C 9063E720 */  lbu        $v1, %lo(D_8039E720_1B07A0)($v1)
/* 1A5F20 80393EA0 24020001 */  addiu      $v0, $zero, 1
/* 1A5F24 80393EA4 A242009B */  sb         $v0, 0x9b($s2)
/* 1A5F28 80393EA8 A240009C */  sb         $zero, 0x9c($s2)
/* 1A5F2C 80393EAC A240009D */  sb         $zero, 0x9d($s2)
/* 1A5F30 80393EB0 A240009E */  sb         $zero, 0x9e($s2)
/* 1A5F34 80393EB4 A243009A */  sb         $v1, 0x9a($s2)
/* 1A5F38 80393EB8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A5F3C 80393EBC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A5F40 80393EC0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A5F44 80393EC4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A5F48 80393EC8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A5F4C 80393ECC 03E00008 */  jr         $ra
/* 1A5F50 80393ED0 00000000 */   nop

glabel func_80393ED4_1A5F54
/* 1A5F54 80393ED4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A5F58 80393ED8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A5F5C 80393EDC 00809021 */  addu       $s2, $a0, $zero
/* 1A5F60 80393EE0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A5F64 80393EE4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A5F68 80393EE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5F6C 80393EEC 8E440000 */  lw         $a0, ($s2)
/* 1A5F70 80393EF0 0C028D30 */  jal        func_800A34C0
/* 1A5F74 80393EF4 00008021 */   addu      $s0, $zero, $zero
/* 1A5F78 80393EF8 8E440004 */  lw         $a0, 4($s2)
/* 1A5F7C 80393EFC 0C028D30 */  jal        func_800A34C0
/* 1A5F80 80393F00 02408821 */   addu      $s1, $s2, $zero
/* 1A5F84 80393F04 8E440008 */  lw         $a0, 8($s2)
/* 1A5F88 80393F08 0C028D30 */  jal        func_800A34C0
/* 1A5F8C 80393F0C 00000000 */   nop
/* 1A5F90 80393F10 8E44000C */  lw         $a0, 0xc($s2)
/* 1A5F94 80393F14 0C028D30 */  jal        func_800A34C0
/* 1A5F98 80393F18 00000000 */   nop
/* 1A5F9C 80393F1C 8E440010 */  lw         $a0, 0x10($s2)
/* 1A5FA0 80393F20 0C028D30 */  jal        func_800A34C0
/* 1A5FA4 80393F24 00000000 */   nop
/* 1A5FA8 80393F28 8E440024 */  lw         $a0, 0x24($s2)
/* 1A5FAC 80393F2C 0C028D30 */  jal        func_800A34C0
/* 1A5FB0 80393F30 00000000 */   nop
/* 1A5FB4 80393F34 8E440028 */  lw         $a0, 0x28($s2)
/* 1A5FB8 80393F38 0C028D30 */  jal        func_800A34C0
/* 1A5FBC 80393F3C 00000000 */   nop
/* 1A5FC0 80393F40 8E44002C */  lw         $a0, 0x2c($s2)
/* 1A5FC4 80393F44 0C028D30 */  jal        func_800A34C0
/* 1A5FC8 80393F48 00000000 */   nop
/* 1A5FCC 80393F4C 8E440030 */  lw         $a0, 0x30($s2)
/* 1A5FD0 80393F50 0C028D30 */  jal        func_800A34C0
/* 1A5FD4 80393F54 00000000 */   nop
.L80393F58:
/* 1A5FD8 80393F58 8E240014 */  lw         $a0, 0x14($s1)
/* 1A5FDC 80393F5C 26310004 */  addiu      $s1, $s1, 4
/* 1A5FE0 80393F60 0C028D30 */  jal        func_800A34C0
/* 1A5FE4 80393F64 26100001 */   addiu     $s0, $s0, 1
/* 1A5FE8 80393F68 2A020004 */  slti       $v0, $s0, 4
/* 1A5FEC 80393F6C 1440FFFA */  bnez       $v0, .L80393F58
/* 1A5FF0 80393F70 00000000 */   nop
/* 1A5FF4 80393F74 00008021 */  addu       $s0, $zero, $zero
/* 1A5FF8 80393F78 02408821 */  addu       $s1, $s2, $zero
.L80393F7C:
/* 1A5FFC 80393F7C 8E240034 */  lw         $a0, 0x34($s1)
/* 1A6000 80393F80 26310004 */  addiu      $s1, $s1, 4
/* 1A6004 80393F84 0C029393 */  jal        func_800A4E4C
/* 1A6008 80393F88 26100001 */   addiu     $s0, $s0, 1
/* 1A600C 80393F8C 2A020002 */  slti       $v0, $s0, 2
/* 1A6010 80393F90 1440FFFA */  bnez       $v0, .L80393F7C
/* 1A6014 80393F94 00000000 */   nop
/* 1A6018 80393F98 00008021 */  addu       $s0, $zero, $zero
/* 1A601C 80393F9C 02408821 */  addu       $s1, $s2, $zero
.L80393FA0:
/* 1A6020 80393FA0 8E24003C */  lw         $a0, 0x3c($s1)
/* 1A6024 80393FA4 10800003 */  beqz       $a0, .L80393FB4
/* 1A6028 80393FA8 26100001 */   addiu     $s0, $s0, 1
/* 1A602C 80393FAC 0C025D58 */  jal        func_80097560
/* 1A6030 80393FB0 00000000 */   nop
.L80393FB4:
/* 1A6034 80393FB4 2A020002 */  slti       $v0, $s0, 2
/* 1A6038 80393FB8 1440FFF9 */  bnez       $v0, .L80393FA0
/* 1A603C 80393FBC 26310004 */   addiu     $s1, $s1, 4
/* 1A6040 80393FC0 8E440048 */  lw         $a0, 0x48($s2)
/* 1A6044 80393FC4 0C0326A1 */  jal        func_800C9A84
/* 1A6048 80393FC8 00000000 */   nop
/* 1A604C 80393FCC 8E440044 */  lw         $a0, 0x44($s2)
/* 1A6050 80393FD0 0C0326A1 */  jal        func_800C9A84
/* 1A6054 80393FD4 00000000 */   nop
/* 1A6058 80393FD8 8E44004C */  lw         $a0, 0x4c($s2)
/* 1A605C 80393FDC 0C0326A1 */  jal        func_800C9A84
/* 1A6060 80393FE0 00000000 */   nop
/* 1A6064 80393FE4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A6068 80393FE8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A606C 80393FEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A6070 80393FF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A6074 80393FF4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A6078 80393FF8 03E00008 */  jr         $ra
/* 1A607C 80393FFC 00000000 */   nop

glabel func_80394000_1A6080
/* 1A6080 80394000 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1A6084 80394004 AFB20050 */  sw         $s2, 0x50($sp)
/* 1A6088 80394008 00809021 */  addu       $s2, $a0, $zero
/* 1A608C 8039400C AFBF005C */  sw         $ra, 0x5c($sp)
/* 1A6090 80394010 AFB40058 */  sw         $s4, 0x58($sp)
/* 1A6094 80394014 AFB30054 */  sw         $s3, 0x54($sp)
/* 1A6098 80394018 AFB1004C */  sw         $s1, 0x4c($sp)
/* 1A609C 8039401C AFB00048 */  sw         $s0, 0x48($sp)
/* 1A60A0 80394020 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 1A60A4 80394024 D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A60A8 80394028 D6400058 */  ldc1       $f0, 0x58($s2)
/* 1A60AC 8039402C 46201032 */  c.eq.d     $f2, $f0
/* 1A60B0 80394030 00000000 */  nop
/* 1A60B4 80394034 4501002C */  bc1t       .L803940E8
/* 1A60B8 80394038 00000000 */   nop
/* 1A60BC 8039403C 4620103C */  c.lt.d     $f2, $f0
/* 1A60C0 80394040 00000000 */  nop
/* 1A60C4 80394044 00000000 */  nop
/* 1A60C8 80394048 4500000D */  bc1f       .L80394080
/* 1A60CC 8039404C 2402000A */   addiu     $v0, $zero, 0xa
/* 1A60D0 80394050 3C01803B */  lui        $at, %hi(D_803A8BD8_1BAC58)
/* 1A60D4 80394054 D4208BD8 */  ldc1       $f0, %lo(D_803A8BD8_1BAC58)($at)
/* 1A60D8 80394058 46201000 */  add.d      $f0, $f2, $f0
/* 1A60DC 8039405C D6420058 */  ldc1       $f2, 0x58($s2)
/* 1A60E0 80394060 F6400060 */  sdc1       $f0, 0x60($s2)
/* 1A60E4 80394064 D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A60E8 80394068 4620103C */  c.lt.d     $f2, $f0
/* 1A60EC 8039406C 00000000 */  nop
/* 1A60F0 80394070 00000000 */  nop
/* 1A60F4 80394074 A6420090 */  sh         $v0, 0x90($s2)
/* 1A60F8 80394078 080E502B */  j          .L803940AC
/* 1A60FC 8039407C A6400092 */   sh        $zero, 0x92($s2)
.L80394080:
/* 1A6100 80394080 3C01803B */  lui        $at, %hi(D_803A8BE0_1BAC60)
/* 1A6104 80394084 D4208BE0 */  ldc1       $f0, %lo(D_803A8BE0_1BAC60)($at)
/* 1A6108 80394088 46201001 */  sub.d      $f0, $f2, $f0
/* 1A610C 8039408C D6420058 */  ldc1       $f2, 0x58($s2)
/* 1A6110 80394090 F6400060 */  sdc1       $f0, 0x60($s2)
/* 1A6114 80394094 D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A6118 80394098 4622003C */  c.lt.d     $f0, $f2
/* 1A611C 8039409C 00000000 */  nop
/* 1A6120 803940A0 00000000 */  nop
/* 1A6124 803940A4 A6400090 */  sh         $zero, 0x90($s2)
/* 1A6128 803940A8 A6420092 */  sh         $v0, 0x92($s2)
.L803940AC:
/* 1A612C 803940AC 45000002 */  bc1f       .L803940B8
/* 1A6130 803940B0 00000000 */   nop
/* 1A6134 803940B4 F6420060 */  sdc1       $f2, 0x60($s2)
.L803940B8:
/* 1A6138 803940B8 D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A613C 803940BC D6400070 */  ldc1       $f0, 0x70($s2)
/* 1A6140 803940C0 4622003C */  c.lt.d     $f0, $f2
/* 1A6144 803940C4 00000000 */  nop
/* 1A6148 803940C8 45010006 */  bc1t       .L803940E4
/* 1A614C 803940CC 00000000 */   nop
/* 1A6150 803940D0 D6400068 */  ldc1       $f0, 0x68($s2)
/* 1A6154 803940D4 4620103C */  c.lt.d     $f2, $f0
/* 1A6158 803940D8 00000000 */  nop
/* 1A615C 803940DC 45000002 */  bc1f       .L803940E8
/* 1A6160 803940E0 00000000 */   nop
.L803940E4:
/* 1A6164 803940E4 F6400060 */  sdc1       $f0, 0x60($s2)
.L803940E8:
/* 1A6168 803940E8 D6400078 */  ldc1       $f0, 0x78($s2)
/* 1A616C 803940EC D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A6170 803940F0 4622003C */  c.lt.d     $f0, $f2
/* 1A6174 803940F4 00000000 */  nop
/* 1A6178 803940F8 45000002 */  bc1f       .L80394104
/* 1A617C 803940FC 00000000 */   nop
/* 1A6180 80394100 F6420078 */  sdc1       $f2, 0x78($s2)
.L80394104:
/* 1A6184 80394104 D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A6188 80394108 3C0351EB */  lui        $v1, 0x51eb
/* 1A618C 8039410C 3463851F */  ori        $v1, $v1, 0x851f
/* 1A6190 80394110 4620008D */  trunc.w.d  $f2, $f0
/* 1A6194 80394114 44021000 */  mfc1       $v0, $f2
/* 1A6198 80394118 00000000 */  nop
/* 1A619C 8039411C 00430018 */  mult       $v0, $v1
/* 1A61A0 80394120 000217C3 */  sra        $v0, $v0, 0x1f
/* 1A61A4 80394124 00004010 */  mfhi       $t0
/* 1A61A8 80394128 00000000 */  nop
/* 1A61AC 8039412C 00000000 */  nop
/* 1A61B0 80394130 00081943 */  sra        $v1, $t0, 5
/* 1A61B4 80394134 00621823 */  subu       $v1, $v1, $v0
/* 1A61B8 80394138 14600003 */  bnez       $v1, .L80394148
/* 1A61BC 8039413C 00008821 */   addu      $s1, $zero, $zero
/* 1A61C0 80394140 2403000A */  addiu      $v1, $zero, 0xa
/* 1A61C4 80394144 24110001 */  addiu      $s1, $zero, 1
.L80394148:
/* 1A61C8 80394148 8E420014 */  lw         $v0, 0x14($s2)
/* 1A61CC 8039414C 8C440014 */  lw         $a0, 0x14($v0)
/* 1A61D0 80394150 00032C00 */  sll        $a1, $v1, 0x10
/* 1A61D4 80394154 0C0E53FB */  jal        func_80394FEC_1A706C
/* 1A61D8 80394158 00052C03 */   sra       $a1, $a1, 0x10
/* 1A61DC 8039415C D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A61E0 80394160 3C0251EB */  lui        $v0, 0x51eb
/* 1A61E4 80394164 3442851F */  ori        $v0, $v0, 0x851f
/* 1A61E8 80394168 4620008D */  trunc.w.d  $f2, $f0
/* 1A61EC 8039416C 44041000 */  mfc1       $a0, $f2
/* 1A61F0 80394170 00000000 */  nop
/* 1A61F4 80394174 00820018 */  mult       $a0, $v0
/* 1A61F8 80394178 3C106666 */  lui        $s0, 0x6666
/* 1A61FC 8039417C 36106667 */  ori        $s0, $s0, 0x6667
/* 1A6200 80394180 000417C3 */  sra        $v0, $a0, 0x1f
/* 1A6204 80394184 00004010 */  mfhi       $t0
/* 1A6208 80394188 00000000 */  nop
/* 1A620C 8039418C 00000000 */  nop
/* 1A6210 80394190 00081943 */  sra        $v1, $t0, 5
/* 1A6214 80394194 00621823 */  subu       $v1, $v1, $v0
/* 1A6218 80394198 00031040 */  sll        $v0, $v1, 1
/* 1A621C 8039419C 00431021 */  addu       $v0, $v0, $v1
/* 1A6220 803941A0 000210C0 */  sll        $v0, $v0, 3
/* 1A6224 803941A4 00431021 */  addu       $v0, $v0, $v1
/* 1A6228 803941A8 00021080 */  sll        $v0, $v0, 2
/* 1A622C 803941AC 00822023 */  subu       $a0, $a0, $v0
/* 1A6230 803941B0 00900018 */  mult       $a0, $s0
/* 1A6234 803941B4 000427C3 */  sra        $a0, $a0, 0x1f
/* 1A6238 803941B8 00004010 */  mfhi       $t0
/* 1A623C 803941BC 00000000 */  nop
/* 1A6240 803941C0 00000000 */  nop
/* 1A6244 803941C4 00081083 */  sra        $v0, $t0, 2
/* 1A6248 803941C8 00441823 */  subu       $v1, $v0, $a0
/* 1A624C 803941CC 2C620001 */  sltiu      $v0, $v1, 1
/* 1A6250 803941D0 02221024 */  and        $v0, $s1, $v0
/* 1A6254 803941D4 54400001 */  bnezl      $v0, .L803941DC
/* 1A6258 803941D8 2403000A */   addiu     $v1, $zero, 0xa
.L803941DC:
/* 1A625C 803941DC 8E420018 */  lw         $v0, 0x18($s2)
/* 1A6260 803941E0 8C440014 */  lw         $a0, 0x14($v0)
/* 1A6264 803941E4 00032C00 */  sll        $a1, $v1, 0x10
/* 1A6268 803941E8 0C0E53FB */  jal        func_80394FEC_1A706C
/* 1A626C 803941EC 00052C03 */   sra       $a1, $a1, 0x10
/* 1A6270 803941F0 D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A6274 803941F4 4620008D */  trunc.w.d  $f2, $f0
/* 1A6278 803941F8 44051000 */  mfc1       $a1, $f2
/* 1A627C 803941FC 00000000 */  nop
/* 1A6280 80394200 00B00018 */  mult       $a1, $s0
/* 1A6284 80394204 8E42001C */  lw         $v0, 0x1c($s2)
/* 1A6288 80394208 8C440014 */  lw         $a0, 0x14($v0)
/* 1A628C 8039420C 000517C3 */  sra        $v0, $a1, 0x1f
/* 1A6290 80394210 00004010 */  mfhi       $t0
/* 1A6294 80394214 00000000 */  nop
/* 1A6298 80394218 00000000 */  nop
/* 1A629C 8039421C 00081883 */  sra        $v1, $t0, 2
/* 1A62A0 80394220 00621823 */  subu       $v1, $v1, $v0
/* 1A62A4 80394224 00031080 */  sll        $v0, $v1, 2
/* 1A62A8 80394228 00431021 */  addu       $v0, $v0, $v1
/* 1A62AC 8039422C 00021040 */  sll        $v0, $v0, 1
/* 1A62B0 80394230 00A21823 */  subu       $v1, $a1, $v0
/* 1A62B4 80394234 00032C00 */  sll        $a1, $v1, 0x10
/* 1A62B8 80394238 0C0E53FB */  jal        func_80394FEC_1A706C
/* 1A62BC 8039423C 00052C03 */   sra       $a1, $a1, 0x10
/* 1A62C0 80394240 D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A62C4 80394244 3C01803B */  lui        $at, %hi(D_803A8BE8_1BAC68)
/* 1A62C8 80394248 D4228BE8 */  ldc1       $f2, %lo(D_803A8BE8_1BAC68)($at)
/* 1A62CC 8039424C 46220002 */  mul.d      $f0, $f0, $f2
/* 1A62D0 80394250 4620008D */  trunc.w.d  $f2, $f0
/* 1A62D4 80394254 44051000 */  mfc1       $a1, $f2
/* 1A62D8 80394258 00000000 */  nop
/* 1A62DC 8039425C 00B00018 */  mult       $a1, $s0
/* 1A62E0 80394260 8E420020 */  lw         $v0, 0x20($s2)
/* 1A62E4 80394264 8C440014 */  lw         $a0, 0x14($v0)
/* 1A62E8 80394268 000517C3 */  sra        $v0, $a1, 0x1f
/* 1A62EC 8039426C 00004010 */  mfhi       $t0
/* 1A62F0 80394270 00000000 */  nop
/* 1A62F4 80394274 00000000 */  nop
/* 1A62F8 80394278 00081883 */  sra        $v1, $t0, 2
/* 1A62FC 8039427C 00621823 */  subu       $v1, $v1, $v0
/* 1A6300 80394280 00031080 */  sll        $v0, $v1, 2
/* 1A6304 80394284 00431021 */  addu       $v0, $v0, $v1
/* 1A6308 80394288 00021040 */  sll        $v0, $v0, 1
/* 1A630C 8039428C 00A21823 */  subu       $v1, $a1, $v0
/* 1A6310 80394290 00032C00 */  sll        $a1, $v1, 0x10
/* 1A6314 80394294 0C0E53FB */  jal        func_80394FEC_1A706C
/* 1A6318 80394298 00052C03 */   sra       $a1, $a1, 0x10
/* 1A631C 8039429C D6400060 */  ldc1       $f0, 0x60($s2)
/* 1A6320 803942A0 3C01803B */  lui        $at, %hi(D_803A8BF0_1BAC70)
/* 1A6324 803942A4 D4228BF0 */  ldc1       $f2, %lo(D_803A8BF0_1BAC70)($at)
/* 1A6328 803942A8 46220000 */  add.d      $f0, $f0, $f2
/* 1A632C 803942AC 3C01803B */  lui        $at, %hi(D_803A8BF8_1BAC78)
/* 1A6330 803942B0 D4228BF8 */  ldc1       $f2, %lo(D_803A8BF8_1BAC78)($at)
/* 1A6334 803942B4 46220003 */  div.d      $f0, $f0, $f2
/* 1A6338 803942B8 4620008D */  trunc.w.d  $f2, $f0
/* 1A633C 803942BC 44131000 */  mfc1       $s3, $f2
/* 1A6340 803942C0 00000000 */  nop
/* 1A6344 803942C4 2A62002B */  slti       $v0, $s3, 0x2b
/* 1A6348 803942C8 14400003 */  bnez       $v0, .L803942D8
/* 1A634C 803942CC 00131027 */   nor       $v0, $zero, $s3
/* 1A6350 803942D0 080E50B8 */  j          .L803942E0
/* 1A6354 803942D4 2413002A */   addiu     $s3, $zero, 0x2a
.L803942D8:
/* 1A6358 803942D8 000217C3 */  sra        $v0, $v0, 0x1f
/* 1A635C 803942DC 02629824 */  and        $s3, $s3, $v0
.L803942E0:
/* 1A6360 803942E0 1A60000C */  blez       $s3, .L80394314
/* 1A6364 803942E4 00008821 */   addu      $s1, $zero, $zero
.L803942E8:
/* 1A6368 803942E8 8E42000C */  lw         $v0, 0xc($s2)
/* 1A636C 803942EC 8C420014 */  lw         $v0, 0x14($v0)
/* 1A6370 803942F0 00111840 */  sll        $v1, $s1, 1
/* 1A6374 803942F4 00621821 */  addu       $v1, $v1, $v0
/* 1A6378 803942F8 94620004 */  lhu        $v0, 4($v1)
/* 1A637C 803942FC 26310001 */  addiu      $s1, $s1, 1
/* 1A6380 80394300 34420001 */  ori        $v0, $v0, 1
/* 1A6384 80394304 A4620004 */  sh         $v0, 4($v1)
/* 1A6388 80394308 0233102A */  slt        $v0, $s1, $s3
/* 1A638C 8039430C 1440FFF6 */  bnez       $v0, .L803942E8
/* 1A6390 80394310 00000000 */   nop
.L80394314:
/* 1A6394 80394314 2A22002A */  slti       $v0, $s1, 0x2a
/* 1A6398 80394318 1040002C */  beqz       $v0, .L803943CC
/* 1A639C 8039431C 00000000 */   nop
/* 1A63A0 80394320 4480A000 */  mtc1       $zero, $f20
/* 1A63A4 80394324 00000000 */  nop
/* 1A63A8 80394328 4480A800 */  mtc1       $zero, $f21
/* 1A63AC 8039432C 00000000 */  nop
/* 1A63B0 80394330 00118040 */  sll        $s0, $s1, 1
.L80394334:
/* 1A63B4 80394334 D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A63B8 80394338 D6400058 */  ldc1       $f0, 0x58($s2)
/* 1A63BC 8039433C 46201032 */  c.eq.d     $f2, $f0
/* 1A63C0 80394340 00000000 */  nop
/* 1A63C4 80394344 45000017 */  bc1f       .L803943A4
/* 1A63C8 80394348 00000000 */   nop
/* 1A63CC 8039434C 4622A03C */  c.lt.d     $f20, $f2
/* 1A63D0 80394350 00000000 */  nop
/* 1A63D4 80394354 00000000 */  nop
/* 1A63D8 80394358 45010002 */  bc1t       .L80394364
/* 1A63DC 8039435C 24030001 */   addiu     $v1, $zero, 1
/* 1A63E0 80394360 00001821 */  addu       $v1, $zero, $zero
.L80394364:
/* 1A63E4 80394364 02331026 */  xor        $v0, $s1, $s3
/* 1A63E8 80394368 2C420001 */  sltiu      $v0, $v0, 1
/* 1A63EC 8039436C 00621024 */  and        $v0, $v1, $v0
/* 1A63F0 80394370 1040000C */  beqz       $v0, .L803943A4
/* 1A63F4 80394374 00000000 */   nop
/* 1A63F8 80394378 0C02591A */  jal        func_80096468
/* 1A63FC 8039437C 24040002 */   addiu     $a0, $zero, 2
/* 1A6400 80394380 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1A6404 80394384 10400007 */  beqz       $v0, .L803943A4
/* 1A6408 80394388 00000000 */   nop
/* 1A640C 8039438C 8E42000C */  lw         $v0, 0xc($s2)
/* 1A6410 80394390 8C430014 */  lw         $v1, 0x14($v0)
/* 1A6414 80394394 02031821 */  addu       $v1, $s0, $v1
/* 1A6418 80394398 94620004 */  lhu        $v0, 4($v1)
/* 1A641C 8039439C 080E50EE */  j          .L803943B8
/* 1A6420 803943A0 34420001 */   ori       $v0, $v0, 1
.L803943A4:
/* 1A6424 803943A4 8E42000C */  lw         $v0, 0xc($s2)
/* 1A6428 803943A8 8C430014 */  lw         $v1, 0x14($v0)
/* 1A642C 803943AC 02031821 */  addu       $v1, $s0, $v1
/* 1A6430 803943B0 94620004 */  lhu        $v0, 4($v1)
/* 1A6434 803943B4 3042FFFE */  andi       $v0, $v0, 0xfffe
.L803943B8:
/* 1A6438 803943B8 A4620004 */  sh         $v0, 4($v1)
/* 1A643C 803943BC 26310001 */  addiu      $s1, $s1, 1
/* 1A6440 803943C0 2A22002A */  slti       $v0, $s1, 0x2a
/* 1A6444 803943C4 1440FFDB */  bnez       $v0, .L80394334
/* 1A6448 803943C8 26100002 */   addiu     $s0, $s0, 2
.L803943CC:
/* 1A644C 803943CC D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A6450 803943D0 3C01803B */  lui        $at, %hi(D_803A8C00_1BAC80)
/* 1A6454 803943D4 D4208C00 */  ldc1       $f0, %lo(D_803A8C00_1BAC80)($at)
/* 1A6458 803943D8 4620103C */  c.lt.d     $f2, $f0
/* 1A645C 803943DC 00000000 */  nop
/* 1A6460 803943E0 45000051 */  bc1f       .L80394528
/* 1A6464 803943E4 00000000 */   nop
/* 1A6468 803943E8 46220001 */  sub.d      $f0, $f0, $f2
/* 1A646C 803943EC 3C01803B */  lui        $at, %hi(D_803A8C08_1BAC88)
/* 1A6470 803943F0 D4228C08 */  ldc1       $f2, %lo(D_803A8C08_1BAC88)($at)
/* 1A6474 803943F4 46220003 */  div.d      $f0, $f0, $f2
/* 1A6478 803943F8 46200120 */  cvt.s.d    $f4, $f0
/* 1A647C 803943FC 00000000 */  nop
/* 1A6480 80394400 46042102 */  mul.s      $f4, $f4, $f4
/* 1A6484 80394404 C6400080 */  lwc1       $f0, 0x80($s2)
/* 1A6488 80394408 46040032 */  c.eq.s     $f0, $f4
/* 1A648C 8039440C 00000000 */  nop
/* 1A6490 80394410 4501003D */  bc1t       .L80394508
/* 1A6494 80394414 00000000 */   nop
/* 1A6498 80394418 3C014200 */  lui        $at, 0x4200
/* 1A649C 8039441C 44810000 */  mtc1       $at, $f0
/* 1A64A0 80394420 00000000 */  nop
/* 1A64A4 80394424 46002082 */  mul.s      $f2, $f4, $f0
/* 1A64A8 80394428 3C014F00 */  lui        $at, 0x4f00
/* 1A64AC 8039442C 44810000 */  mtc1       $at, $f0
/* 1A64B0 80394430 00000000 */  nop
/* 1A64B4 80394434 8E420008 */  lw         $v0, 8($s2)
/* 1A64B8 80394438 4602003E */  c.le.s     $f0, $f2
/* 1A64BC 8039443C 00000000 */  nop
/* 1A64C0 80394440 00000000 */  nop
/* 1A64C4 80394444 8C430000 */  lw         $v1, ($v0)
/* 1A64C8 80394448 45030006 */  bc1tl      .L80394464
/* 1A64CC 8039444C 46001001 */   sub.s     $f0, $f2, $f0
/* 1A64D0 80394450 4600100D */  trunc.w.s  $f0, $f2
/* 1A64D4 80394454 44040000 */  mfc1       $a0, $f0
/* 1A64D8 80394458 00000000 */  nop
/* 1A64DC 8039445C 080E511F */  j          .L8039447C
/* 1A64E0 80394460 A4640000 */   sh        $a0, ($v1)
.L80394464:
/* 1A64E4 80394464 4600008D */  trunc.w.s  $f2, $f0
/* 1A64E8 80394468 44041000 */  mfc1       $a0, $f2
/* 1A64EC 8039446C 00000000 */  nop
/* 1A64F0 80394470 3C028000 */  lui        $v0, 0x8000
/* 1A64F4 80394474 00822025 */  or         $a0, $a0, $v0
/* 1A64F8 80394478 A4640000 */  sh         $a0, ($v1)
.L8039447C:
/* 1A64FC 8039447C 8E430004 */  lw         $v1, 4($s2)
/* 1A6500 80394480 8C62000C */  lw         $v0, 0xc($v1)
/* 1A6504 80394484 94420000 */  lhu        $v0, ($v0)
/* 1A6508 80394488 44820000 */  mtc1       $v0, $f0
/* 1A650C 8039448C 00000000 */  nop
/* 1A6510 80394490 46800020 */  cvt.s.w    $f0, $f0
/* 1A6514 80394494 46040001 */  sub.s      $f0, $f0, $f4
/* 1A6518 80394498 3C014200 */  lui        $at, 0x4200
/* 1A651C 8039449C 44811000 */  mtc1       $at, $f2
/* 1A6520 803944A0 00000000 */  nop
/* 1A6524 803944A4 46020082 */  mul.s      $f2, $f0, $f2
/* 1A6528 803944A8 3C014F00 */  lui        $at, 0x4f00
/* 1A652C 803944AC 44810000 */  mtc1       $at, $f0
/* 1A6530 803944B0 00000000 */  nop
/* 1A6534 803944B4 4602003E */  c.le.s     $f0, $f2
/* 1A6538 803944B8 00000000 */  nop
/* 1A653C 803944BC 00000000 */  nop
/* 1A6540 803944C0 8C630000 */  lw         $v1, ($v1)
/* 1A6544 803944C4 45030006 */  bc1tl      .L803944E0
/* 1A6548 803944C8 46001001 */   sub.s     $f0, $f2, $f0
/* 1A654C 803944CC 4600100D */  trunc.w.s  $f0, $f2
/* 1A6550 803944D0 44040000 */  mfc1       $a0, $f0
/* 1A6554 803944D4 00000000 */  nop
/* 1A6558 803944D8 080E513E */  j          .L803944F8
/* 1A655C 803944DC 3402FFE0 */   ori       $v0, $zero, 0xffe0
.L803944E0:
/* 1A6560 803944E0 4600008D */  trunc.w.s  $f2, $f0
/* 1A6564 803944E4 44041000 */  mfc1       $a0, $f2
/* 1A6568 803944E8 00000000 */  nop
/* 1A656C 803944EC 3C028000 */  lui        $v0, 0x8000
/* 1A6570 803944F0 00822025 */  or         $a0, $a0, $v0
/* 1A6574 803944F4 3402FFE0 */  ori        $v0, $zero, 0xffe0
.L803944F8:
/* 1A6578 803944F8 A4640000 */  sh         $a0, ($v1)
/* 1A657C 803944FC A4620008 */  sh         $v0, 8($v1)
/* 1A6580 80394500 080E5164 */  j          .L80394590
/* 1A6584 80394504 E6440080 */   swc1      $f4, 0x80($s2)
.L80394508:
/* 1A6588 80394508 8E420088 */  lw         $v0, 0x88($s2)
/* 1A658C 8039450C 24430444 */  addiu      $v1, $v0, 0x444
/* 1A6590 80394510 3402FFFF */  ori        $v0, $zero, 0xffff
/* 1A6594 80394514 0043102A */  slt        $v0, $v0, $v1
/* 1A6598 80394518 1040000B */  beqz       $v0, .L80394548
/* 1A659C 8039451C AE430088 */   sw        $v1, 0x88($s2)
/* 1A65A0 80394520 080E5154 */  j          .L80394550
/* 1A65A4 80394524 3C02FFFF */   lui       $v0, %hi(D_FFFF0444)
.L80394528:
/* 1A65A8 80394528 8E420088 */  lw         $v0, 0x88($s2)
/* 1A65AC 8039452C 24430444 */  addiu      $v1, $v0, %lo(D_FFFF0444)
/* 1A65B0 80394530 3402FFFF */  ori        $v0, $zero, 0xffff
/* 1A65B4 80394534 0043102A */  slt        $v0, $v0, $v1
/* 1A65B8 80394538 10400003 */  beqz       $v0, .L80394548
/* 1A65BC 8039453C AE430088 */   sw        $v1, 0x88($s2)
/* 1A65C0 80394540 080E5154 */  j          .L80394550
/* 1A65C4 80394544 3C02FFFF */   lui       $v0, 0xffff
.L80394548:
/* 1A65C8 80394548 04610003 */  bgez       $v1, .L80394558
/* 1A65CC 8039454C 3C020001 */   lui       $v0, 1
.L80394550:
/* 1A65D0 80394550 00621021 */  addu       $v0, $v1, $v0
/* 1A65D4 80394554 AE420088 */  sw         $v0, 0x88($s2)
.L80394558:
/* 1A65D8 80394558 9644008A */  lhu        $a0, 0x8a($s2)
/* 1A65DC 8039455C 0C02FFD0 */  jal        func_800BFF40
/* 1A65E0 80394560 00000000 */   nop
/* 1A65E4 80394564 00021400 */  sll        $v0, $v0, 0x10
/* 1A65E8 80394568 3C014700 */  lui        $at, 0x4700
/* 1A65EC 8039456C 44811000 */  mtc1       $at, $f2
/* 1A65F0 80394570 00000000 */  nop
/* 1A65F4 80394574 00021403 */  sra        $v0, $v0, 0x10
/* 1A65F8 80394578 44820000 */  mtc1       $v0, $f0
/* 1A65FC 8039457C 00000000 */  nop
/* 1A6600 80394580 46800020 */  cvt.s.w    $f0, $f0
/* 1A6604 80394584 46020003 */  div.s      $f0, $f0, $f2
/* 1A6608 80394588 46000000 */  add.s      $f0, $f0, $f0
/* 1A660C 8039458C E6400084 */  swc1       $f0, 0x84($s2)
.L80394590:
/* 1A6610 80394590 D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A6614 80394594 3C01803B */  lui        $at, %hi(D_803A8C10_1BAC90)
/* 1A6618 80394598 D4208C10 */  ldc1       $f0, %lo(D_803A8C10_1BAC90)($at)
/* 1A661C 8039459C 4622003E */  c.le.d     $f0, $f2
/* 1A6620 803945A0 00000000 */  nop
/* 1A6624 803945A4 4500007B */  bc1f       .L80394794
/* 1A6628 803945A8 00000000 */   nop
/* 1A662C 803945AC 8E420008 */  lw         $v0, 8($s2)
/* 1A6630 803945B0 9043001B */  lbu        $v1, 0x1b($v0)
/* 1A6634 803945B4 3C01414C */  lui        $at, 0x414c
/* 1A6638 803945B8 44811000 */  mtc1       $at, $f2
/* 1A663C 803945BC 00000000 */  nop
/* 1A6640 803945C0 44830000 */  mtc1       $v1, $f0
/* 1A6644 803945C4 00000000 */  nop
/* 1A6648 803945C8 46800020 */  cvt.s.w    $f0, $f0
/* 1A664C 803945CC 46020000 */  add.s      $f0, $f0, $f2
/* 1A6650 803945D0 4600008D */  trunc.w.s  $f2, $f0
/* 1A6654 803945D4 44031000 */  mfc1       $v1, $f2
/* 1A6658 803945D8 00000000 */  nop
/* 1A665C 803945DC 28620100 */  slti       $v0, $v1, 0x100
/* 1A6660 803945E0 14400003 */  bnez       $v0, .L803945F0
/* 1A6664 803945E4 00000000 */   nop
/* 1A6668 803945E8 080E5187 */  j          .L8039461C
/* 1A666C 803945EC 240300FF */   addiu     $v1, $zero, 0xff
.L803945F0:
/* 1A6670 803945F0 3C0142FF */  lui        $at, 0x42ff
/* 1A6674 803945F4 44811000 */  mtc1       $at, $f2
/* 1A6678 803945F8 00000000 */  nop
/* 1A667C 803945FC 44830000 */  mtc1       $v1, $f0
/* 1A6680 80394600 00000000 */  nop
/* 1A6684 80394604 46800020 */  cvt.s.w    $f0, $f0
/* 1A6688 80394608 4602003C */  c.lt.s     $f0, $f2
/* 1A668C 8039460C 00000000 */  nop
/* 1A6690 80394610 00000000 */  nop
/* 1A6694 80394614 45030001 */  bc1tl      .L8039461C
/* 1A6698 80394618 2403007F */   addiu     $v1, $zero, 0x7f
.L8039461C:
/* 1A669C 8039461C 8E420008 */  lw         $v0, 8($s2)
/* 1A66A0 80394620 A043001B */  sb         $v1, 0x1b($v0)
/* 1A66A4 80394624 240200FF */  addiu      $v0, $zero, 0xff
/* 1A66A8 80394628 14620005 */  bne        $v1, $v0, .L80394640
/* 1A66AC 8039462C 00000000 */   nop
/* 1A66B0 80394630 8E430008 */  lw         $v1, 8($s2)
/* 1A66B4 80394634 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A66B8 80394638 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 1A66BC 8039463C A462001E */  sh         $v0, 0x1e($v1)
.L80394640:
/* 1A66C0 80394640 8E42000C */  lw         $v0, 0xc($s2)
/* 1A66C4 80394644 9043001B */  lbu        $v1, 0x1b($v0)
/* 1A66C8 80394648 3C014112 */  lui        $at, 0x4112
/* 1A66CC 8039464C 3421E148 */  ori        $at, $at, 0xe148
/* 1A66D0 80394650 44811000 */  mtc1       $at, $f2
/* 1A66D4 80394654 00000000 */  nop
/* 1A66D8 80394658 44830000 */  mtc1       $v1, $f0
/* 1A66DC 8039465C 00000000 */  nop
/* 1A66E0 80394660 46800020 */  cvt.s.w    $f0, $f0
/* 1A66E4 80394664 46020000 */  add.s      $f0, $f0, $f2
/* 1A66E8 80394668 4600008D */  trunc.w.s  $f2, $f0
/* 1A66EC 8039466C 44031000 */  mfc1       $v1, $f2
/* 1A66F0 80394670 00000000 */  nop
/* 1A66F4 80394674 28620100 */  slti       $v0, $v1, 0x100
/* 1A66F8 80394678 14400003 */  bnez       $v0, .L80394688
/* 1A66FC 8039467C 00000000 */   nop
/* 1A6700 80394680 080E51AE */  j          .L803946B8
/* 1A6704 80394684 240300FF */   addiu     $v1, $zero, 0xff
.L80394688:
/* 1A6708 80394688 3C014323 */  lui        $at, 0x4323
/* 1A670C 8039468C 34213333 */  ori        $at, $at, 0x3333
/* 1A6710 80394690 44811000 */  mtc1       $at, $f2
/* 1A6714 80394694 00000000 */  nop
/* 1A6718 80394698 44830000 */  mtc1       $v1, $f0
/* 1A671C 8039469C 00000000 */  nop
/* 1A6720 803946A0 46800020 */  cvt.s.w    $f0, $f0
/* 1A6724 803946A4 4602003C */  c.lt.s     $f0, $f2
/* 1A6728 803946A8 00000000 */  nop
/* 1A672C 803946AC 00000000 */  nop
/* 1A6730 803946B0 45030001 */  bc1tl      .L803946B8
/* 1A6734 803946B4 240300A3 */   addiu     $v1, $zero, 0xa3
.L803946B8:
/* 1A6738 803946B8 8E42000C */  lw         $v0, 0xc($s2)
/* 1A673C 803946BC A043001B */  sb         $v1, 0x1b($v0)
/* 1A6740 803946C0 240200FF */  addiu      $v0, $zero, 0xff
/* 1A6744 803946C4 14620005 */  bne        $v1, $v0, .L803946DC
/* 1A6748 803946C8 00000000 */   nop
/* 1A674C 803946CC 8E430008 */  lw         $v1, 8($s2)
/* 1A6750 803946D0 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A6754 803946D4 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 1A6758 803946D8 A462001E */  sh         $v0, 0x1e($v1)
.L803946DC:
/* 1A675C 803946DC 9242008C */  lbu        $v0, 0x8c($s2)
/* 1A6760 803946E0 144000A4 */  bnez       $v0, .L80394974
/* 1A6764 803946E4 00008821 */   addu      $s1, $zero, $zero
/* 1A6768 803946E8 02408021 */  addu       $s0, $s2, $zero
.L803946EC:
/* 1A676C 803946EC 8E04003C */  lw         $a0, 0x3c($s0)
/* 1A6770 803946F0 10800003 */  beqz       $a0, .L80394700
/* 1A6774 803946F4 26310001 */   addiu     $s1, $s1, 1
/* 1A6778 803946F8 0C025D58 */  jal        func_80097560
/* 1A677C 803946FC 00000000 */   nop
.L80394700:
/* 1A6780 80394700 2A220002 */  slti       $v0, $s1, 2
/* 1A6784 80394704 1440FFF9 */  bnez       $v0, .L803946EC
/* 1A6788 80394708 26100004 */   addiu     $s0, $s0, 4
/* 1A678C 8039470C 8E420004 */  lw         $v0, 4($s2)
/* 1A6790 80394710 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A6794 80394714 8E45004C */  lw         $a1, 0x4c($s2)
/* 1A6798 80394718 24060010 */  addiu      $a2, $zero, 0x10
/* 1A679C 8039471C 8C440014 */  lw         $a0, 0x14($v0)
/* 1A67A0 80394720 2407000A */  addiu      $a3, $zero, 0xa
/* 1A67A4 80394724 0C029A39 */  jal        func_800A68E4
/* 1A67A8 80394728 00008821 */   addu      $s1, $zero, $zero
/* 1A67AC 8039472C 8E430008 */  lw         $v1, 8($s2)
/* 1A67B0 80394730 241400FF */  addiu      $s4, $zero, 0xff
/* 1A67B4 80394734 02408021 */  addu       $s0, $s2, $zero
/* 1A67B8 80394738 AE42003C */  sw         $v0, 0x3c($s2)
/* 1A67BC 8039473C AFA00010 */  sw         $zero, 0x10($sp)
/* 1A67C0 80394740 8E45004C */  lw         $a1, 0x4c($s2)
/* 1A67C4 80394744 8C640014 */  lw         $a0, 0x14($v1)
/* 1A67C8 80394748 24060010 */  addiu      $a2, $zero, 0x10
/* 1A67CC 8039474C 0C029A39 */  jal        func_800A68E4
/* 1A67D0 80394750 2407000A */   addiu     $a3, $zero, 0xa
/* 1A67D4 80394754 AE420040 */  sw         $v0, 0x40($s2)
/* 1A67D8 80394758 24020001 */  addiu      $v0, $zero, 1
/* 1A67DC 8039475C A242008C */  sb         $v0, 0x8c($s2)
/* 1A67E0 80394760 AFB40010 */  sw         $s4, 0x10($sp)
.L80394764:
/* 1A67E4 80394764 8E040014 */  lw         $a0, 0x14($s0)
/* 1A67E8 80394768 240500FF */  addiu      $a1, $zero, 0xff
/* 1A67EC 8039476C 240600FF */  addiu      $a2, $zero, 0xff
/* 1A67F0 80394770 00003821 */  addu       $a3, $zero, $zero
/* 1A67F4 80394774 26100004 */  addiu      $s0, $s0, 4
/* 1A67F8 80394778 0C028E41 */  jal        func_800A3904
/* 1A67FC 8039477C 26310001 */   addiu     $s1, $s1, 1
/* 1A6800 80394780 2A220004 */  slti       $v0, $s1, 4
/* 1A6804 80394784 5440FFF7 */  bnezl      $v0, .L80394764
/* 1A6808 80394788 AFB40010 */   sw        $s4, 0x10($sp)
/* 1A680C 8039478C 080E525D */  j          .L80394974
/* 1A6810 80394790 00000000 */   nop
.L80394794:
/* 1A6814 80394794 8E420008 */  lw         $v0, 8($s2)
/* 1A6818 80394798 9043001B */  lbu        $v1, 0x1b($v0)
/* 1A681C 8039479C 3C01414C */  lui        $at, 0x414c
/* 1A6820 803947A0 44811000 */  mtc1       $at, $f2
/* 1A6824 803947A4 00000000 */  nop
/* 1A6828 803947A8 44830000 */  mtc1       $v1, $f0
/* 1A682C 803947AC 00000000 */  nop
/* 1A6830 803947B0 46800020 */  cvt.s.w    $f0, $f0
/* 1A6834 803947B4 46020001 */  sub.s      $f0, $f0, $f2
/* 1A6838 803947B8 4600008D */  trunc.w.s  $f2, $f0
/* 1A683C 803947BC 44031000 */  mfc1       $v1, $f2
/* 1A6840 803947C0 00000000 */  nop
/* 1A6844 803947C4 28620100 */  slti       $v0, $v1, 0x100
/* 1A6848 803947C8 14400003 */  bnez       $v0, .L803947D8
/* 1A684C 803947CC 00000000 */   nop
/* 1A6850 803947D0 080E5201 */  j          .L80394804
/* 1A6854 803947D4 240300FF */   addiu     $v1, $zero, 0xff
.L803947D8:
/* 1A6858 803947D8 3C0142FF */  lui        $at, 0x42ff
/* 1A685C 803947DC 44811000 */  mtc1       $at, $f2
/* 1A6860 803947E0 00000000 */  nop
/* 1A6864 803947E4 44830000 */  mtc1       $v1, $f0
/* 1A6868 803947E8 00000000 */  nop
/* 1A686C 803947EC 46800020 */  cvt.s.w    $f0, $f0
/* 1A6870 803947F0 4602003C */  c.lt.s     $f0, $f2
/* 1A6874 803947F4 00000000 */  nop
/* 1A6878 803947F8 00000000 */  nop
/* 1A687C 803947FC 45030001 */  bc1tl      .L80394804
/* 1A6880 80394800 2403007F */   addiu     $v1, $zero, 0x7f
.L80394804:
/* 1A6884 80394804 8E420008 */  lw         $v0, 8($s2)
/* 1A6888 80394808 A043001B */  sb         $v1, 0x1b($v0)
/* 1A688C 8039480C 240200FF */  addiu      $v0, $zero, 0xff
/* 1A6890 80394810 10620005 */  beq        $v1, $v0, .L80394828
/* 1A6894 80394814 00000000 */   nop
/* 1A6898 80394818 8E430008 */  lw         $v1, 8($s2)
/* 1A689C 8039481C 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A68A0 80394820 34420040 */  ori        $v0, $v0, 0x40
/* 1A68A4 80394824 A462001E */  sh         $v0, 0x1e($v1)
.L80394828:
/* 1A68A8 80394828 8E42000C */  lw         $v0, 0xc($s2)
/* 1A68AC 8039482C 9043001B */  lbu        $v1, 0x1b($v0)
/* 1A68B0 80394830 3C014112 */  lui        $at, 0x4112
/* 1A68B4 80394834 3421E148 */  ori        $at, $at, 0xe148
/* 1A68B8 80394838 44811000 */  mtc1       $at, $f2
/* 1A68BC 8039483C 00000000 */  nop
/* 1A68C0 80394840 44830000 */  mtc1       $v1, $f0
/* 1A68C4 80394844 00000000 */  nop
/* 1A68C8 80394848 46800020 */  cvt.s.w    $f0, $f0
/* 1A68CC 8039484C 46020001 */  sub.s      $f0, $f0, $f2
/* 1A68D0 80394850 4600008D */  trunc.w.s  $f2, $f0
/* 1A68D4 80394854 44031000 */  mfc1       $v1, $f2
/* 1A68D8 80394858 00000000 */  nop
/* 1A68DC 8039485C 28620100 */  slti       $v0, $v1, 0x100
/* 1A68E0 80394860 14400003 */  bnez       $v0, .L80394870
/* 1A68E4 80394864 00000000 */   nop
/* 1A68E8 80394868 080E5228 */  j          .L803948A0
/* 1A68EC 8039486C 240300FF */   addiu     $v1, $zero, 0xff
.L80394870:
/* 1A68F0 80394870 3C014323 */  lui        $at, 0x4323
/* 1A68F4 80394874 34213333 */  ori        $at, $at, 0x3333
/* 1A68F8 80394878 44811000 */  mtc1       $at, $f2
/* 1A68FC 8039487C 00000000 */  nop
/* 1A6900 80394880 44830000 */  mtc1       $v1, $f0
/* 1A6904 80394884 00000000 */  nop
/* 1A6908 80394888 46800020 */  cvt.s.w    $f0, $f0
/* 1A690C 8039488C 4602003C */  c.lt.s     $f0, $f2
/* 1A6910 80394890 00000000 */  nop
/* 1A6914 80394894 00000000 */  nop
/* 1A6918 80394898 45030001 */  bc1tl      .L803948A0
/* 1A691C 8039489C 240300A3 */   addiu     $v1, $zero, 0xa3
.L803948A0:
/* 1A6920 803948A0 8E42000C */  lw         $v0, 0xc($s2)
/* 1A6924 803948A4 A043001B */  sb         $v1, 0x1b($v0)
/* 1A6928 803948A8 240200FF */  addiu      $v0, $zero, 0xff
/* 1A692C 803948AC 10620005 */  beq        $v1, $v0, .L803948C4
/* 1A6930 803948B0 00000000 */   nop
/* 1A6934 803948B4 8E430008 */  lw         $v1, 8($s2)
/* 1A6938 803948B8 9462001E */  lhu        $v0, 0x1e($v1)
/* 1A693C 803948BC 34420040 */  ori        $v0, $v0, 0x40
/* 1A6940 803948C0 A462001E */  sh         $v0, 0x1e($v1)
.L803948C4:
/* 1A6944 803948C4 9243008C */  lbu        $v1, 0x8c($s2)
/* 1A6948 803948C8 24020001 */  addiu      $v0, $zero, 1
/* 1A694C 803948CC 14620029 */  bne        $v1, $v0, .L80394974
/* 1A6950 803948D0 00008821 */   addu      $s1, $zero, $zero
/* 1A6954 803948D4 02408021 */  addu       $s0, $s2, $zero
.L803948D8:
/* 1A6958 803948D8 8E04003C */  lw         $a0, 0x3c($s0)
/* 1A695C 803948DC 10800003 */  beqz       $a0, .L803948EC
/* 1A6960 803948E0 26310001 */   addiu     $s1, $s1, 1
/* 1A6964 803948E4 0C025D58 */  jal        func_80097560
/* 1A6968 803948E8 00000000 */   nop
.L803948EC:
/* 1A696C 803948EC 2A220002 */  slti       $v0, $s1, 2
/* 1A6970 803948F0 1440FFF9 */  bnez       $v0, .L803948D8
/* 1A6974 803948F4 26100004 */   addiu     $s0, $s0, 4
/* 1A6978 803948F8 8E420004 */  lw         $v0, 4($s2)
/* 1A697C 803948FC AFA00010 */  sw         $zero, 0x10($sp)
/* 1A6980 80394900 8E450048 */  lw         $a1, 0x48($s2)
/* 1A6984 80394904 24060010 */  addiu      $a2, $zero, 0x10
/* 1A6988 80394908 8C440014 */  lw         $a0, 0x14($v0)
/* 1A698C 8039490C 2407000A */  addiu      $a3, $zero, 0xa
/* 1A6990 80394910 0C029A39 */  jal        func_800A68E4
/* 1A6994 80394914 00008821 */   addu      $s1, $zero, $zero
/* 1A6998 80394918 8E430008 */  lw         $v1, 8($s2)
/* 1A699C 8039491C 241400FF */  addiu      $s4, $zero, 0xff
/* 1A69A0 80394920 02408021 */  addu       $s0, $s2, $zero
/* 1A69A4 80394924 AE42003C */  sw         $v0, 0x3c($s2)
/* 1A69A8 80394928 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A69AC 8039492C 8E450044 */  lw         $a1, 0x44($s2)
/* 1A69B0 80394930 8C640014 */  lw         $a0, 0x14($v1)
/* 1A69B4 80394934 24060010 */  addiu      $a2, $zero, 0x10
/* 1A69B8 80394938 0C029A39 */  jal        func_800A68E4
/* 1A69BC 8039493C 2407000A */   addiu     $a3, $zero, 0xa
/* 1A69C0 80394940 AE420040 */  sw         $v0, 0x40($s2)
/* 1A69C4 80394944 A240008C */  sb         $zero, 0x8c($s2)
/* 1A69C8 80394948 AFB40010 */  sw         $s4, 0x10($sp)
.L8039494C:
/* 1A69CC 8039494C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A69D0 80394950 240500FF */  addiu      $a1, $zero, 0xff
/* 1A69D4 80394954 240600FF */  addiu      $a2, $zero, 0xff
/* 1A69D8 80394958 240700FF */  addiu      $a3, $zero, 0xff
/* 1A69DC 8039495C 26100004 */  addiu      $s0, $s0, 4
/* 1A69E0 80394960 0C028E41 */  jal        func_800A3904
/* 1A69E4 80394964 26310001 */   addiu     $s1, $s1, 1
/* 1A69E8 80394968 2A220004 */  slti       $v0, $s1, 4
/* 1A69EC 8039496C 5440FFF7 */  bnezl      $v0, .L8039494C
/* 1A69F0 80394970 AFB40010 */   sw        $s4, 0x10($sp)
.L80394974:
/* 1A69F4 80394974 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A69F8 80394978 8E440000 */  lw         $a0, ($s2)
/* 1A69FC 8039497C 4600008D */  trunc.w.s  $f2, $f0
/* 1A6A00 80394980 44051000 */  mfc1       $a1, $f2
/* 1A6A04 80394984 00000000 */  nop
/* 1A6A08 80394988 24A5FFFF */  addiu      $a1, $a1, -1
/* 1A6A0C 8039498C C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6A10 80394990 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6A14 80394994 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6A18 80394998 4600008D */  trunc.w.s  $f2, $f0
/* 1A6A1C 8039499C 44061000 */  mfc1       $a2, $f2
/* 1A6A20 803949A0 00000000 */  nop
/* 1A6A24 803949A4 24C6FFFF */  addiu      $a2, $a2, -1
/* 1A6A28 803949A8 00063480 */  sll        $a2, $a2, 0x12
/* 1A6A2C 803949AC 0C028D89 */  jal        func_800A3624
/* 1A6A30 803949B0 00063403 */   sra       $a2, $a2, 0x10
/* 1A6A34 803949B4 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6A38 803949B8 8E440004 */  lw         $a0, 4($s2)
/* 1A6A3C 803949BC C6440084 */  lwc1       $f4, 0x84($s2)
/* 1A6A40 803949C0 4600008D */  trunc.w.s  $f2, $f0
/* 1A6A44 803949C4 44021000 */  mfc1       $v0, $f2
/* 1A6A48 803949C8 00000000 */  nop
/* 1A6A4C 803949CC 00021400 */  sll        $v0, $v0, 0x10
/* 1A6A50 803949D0 00021383 */  sra        $v0, $v0, 0xe
/* 1A6A54 803949D4 24420014 */  addiu      $v0, $v0, 0x14
/* 1A6A58 803949D8 C6420054 */  lwc1       $f2, 0x54($s2)
/* 1A6A5C 803949DC 44820000 */  mtc1       $v0, $f0
/* 1A6A60 803949E0 00000000 */  nop
/* 1A6A64 803949E4 46800020 */  cvt.s.w    $f0, $f0
/* 1A6A68 803949E8 46040000 */  add.s      $f0, $f0, $f4
/* 1A6A6C 803949EC 4600118D */  trunc.w.s  $f6, $f2
/* 1A6A70 803949F0 44063000 */  mfc1       $a2, $f6
/* 1A6A74 803949F4 00000000 */  nop
/* 1A6A78 803949F8 24C60005 */  addiu      $a2, $a2, 5
/* 1A6A7C 803949FC 00063480 */  sll        $a2, $a2, 0x12
/* 1A6A80 80394A00 00063403 */  sra        $a2, $a2, 0x10
/* 1A6A84 80394A04 4600008D */  trunc.w.s  $f2, $f0
/* 1A6A88 80394A08 44051000 */  mfc1       $a1, $f2
/* 1A6A8C 80394A0C 00000000 */  nop
/* 1A6A90 80394A10 00052C00 */  sll        $a1, $a1, 0x10
/* 1A6A94 80394A14 0C028D89 */  jal        func_800A3624
/* 1A6A98 80394A18 00052C03 */   sra       $a1, $a1, 0x10
/* 1A6A9C 80394A1C C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6AA0 80394A20 8E440008 */  lw         $a0, 8($s2)
/* 1A6AA4 80394A24 C6440084 */  lwc1       $f4, 0x84($s2)
/* 1A6AA8 80394A28 4600008D */  trunc.w.s  $f2, $f0
/* 1A6AAC 80394A2C 44021000 */  mfc1       $v0, $f2
/* 1A6AB0 80394A30 00000000 */  nop
/* 1A6AB4 80394A34 00021400 */  sll        $v0, $v0, 0x10
/* 1A6AB8 80394A38 00021383 */  sra        $v0, $v0, 0xe
/* 1A6ABC 80394A3C 24420014 */  addiu      $v0, $v0, 0x14
/* 1A6AC0 80394A40 C6420054 */  lwc1       $f2, 0x54($s2)
/* 1A6AC4 80394A44 44820000 */  mtc1       $v0, $f0
/* 1A6AC8 80394A48 00000000 */  nop
/* 1A6ACC 80394A4C 46800020 */  cvt.s.w    $f0, $f0
/* 1A6AD0 80394A50 46040000 */  add.s      $f0, $f0, $f4
/* 1A6AD4 80394A54 4600118D */  trunc.w.s  $f6, $f2
/* 1A6AD8 80394A58 44063000 */  mfc1       $a2, $f6
/* 1A6ADC 80394A5C 00000000 */  nop
/* 1A6AE0 80394A60 24C60005 */  addiu      $a2, $a2, 5
/* 1A6AE4 80394A64 00063480 */  sll        $a2, $a2, 0x12
/* 1A6AE8 80394A68 00063403 */  sra        $a2, $a2, 0x10
/* 1A6AEC 80394A6C 4600008D */  trunc.w.s  $f2, $f0
/* 1A6AF0 80394A70 44051000 */  mfc1       $a1, $f2
/* 1A6AF4 80394A74 00000000 */  nop
/* 1A6AF8 80394A78 00052C00 */  sll        $a1, $a1, 0x10
/* 1A6AFC 80394A7C 0C028D89 */  jal        func_800A3624
/* 1A6B00 80394A80 00052C03 */   sra       $a1, $a1, 0x10
/* 1A6B04 80394A84 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6B08 80394A88 8E44000C */  lw         $a0, 0xc($s2)
/* 1A6B0C 80394A8C 4600008D */  trunc.w.s  $f2, $f0
/* 1A6B10 80394A90 44051000 */  mfc1       $a1, $f2
/* 1A6B14 80394A94 00000000 */  nop
/* 1A6B18 80394A98 24A50002 */  addiu      $a1, $a1, 2
/* 1A6B1C 80394A9C C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6B20 80394AA0 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6B24 80394AA4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6B28 80394AA8 4600008D */  trunc.w.s  $f2, $f0
/* 1A6B2C 80394AAC 44061000 */  mfc1       $a2, $f2
/* 1A6B30 80394AB0 00000000 */  nop
/* 1A6B34 80394AB4 24C60020 */  addiu      $a2, $a2, 0x20
/* 1A6B38 80394AB8 00063480 */  sll        $a2, $a2, 0x12
/* 1A6B3C 80394ABC 0C028D89 */  jal        func_800A3624
/* 1A6B40 80394AC0 00063403 */   sra       $a2, $a2, 0x10
/* 1A6B44 80394AC4 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6B48 80394AC8 8E440010 */  lw         $a0, 0x10($s2)
/* 1A6B4C 80394ACC 4600008D */  trunc.w.s  $f2, $f0
/* 1A6B50 80394AD0 44051000 */  mfc1       $a1, $f2
/* 1A6B54 80394AD4 00000000 */  nop
/* 1A6B58 80394AD8 C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6B5C 80394ADC 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6B60 80394AE0 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6B64 80394AE4 4600008D */  trunc.w.s  $f2, $f0
/* 1A6B68 80394AE8 44061000 */  mfc1       $a2, $f2
/* 1A6B6C 80394AEC 00000000 */  nop
/* 1A6B70 80394AF0 00063480 */  sll        $a2, $a2, 0x12
/* 1A6B74 80394AF4 0C028D89 */  jal        func_800A3624
/* 1A6B78 80394AF8 00063403 */   sra       $a2, $a2, 0x10
/* 1A6B7C 80394AFC C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6B80 80394B00 00008821 */  addu       $s1, $zero, $zero
/* 1A6B84 80394B04 8E440024 */  lw         $a0, 0x24($s2)
/* 1A6B88 80394B08 00138040 */  sll        $s0, $s3, 1
/* 1A6B8C 80394B0C 2610FFFD */  addiu      $s0, $s0, -3
/* 1A6B90 80394B10 4600008D */  trunc.w.s  $f2, $f0
/* 1A6B94 80394B14 44051000 */  mfc1       $a1, $f2
/* 1A6B98 80394B18 00000000 */  nop
/* 1A6B9C 80394B1C 00B02821 */  addu       $a1, $a1, $s0
/* 1A6BA0 80394B20 C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6BA4 80394B24 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6BA8 80394B28 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6BAC 80394B2C 4600008D */  trunc.w.s  $f2, $f0
/* 1A6BB0 80394B30 44061000 */  mfc1       $a2, $f2
/* 1A6BB4 80394B34 00000000 */  nop
/* 1A6BB8 80394B38 24C6FFEF */  addiu      $a2, $a2, -0x11
/* 1A6BBC 80394B3C 00063480 */  sll        $a2, $a2, 0x12
/* 1A6BC0 80394B40 0C028D89 */  jal        func_800A3624
/* 1A6BC4 80394B44 00063403 */   sra       $a2, $a2, 0x10
/* 1A6BC8 80394B48 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6BCC 80394B4C 24140003 */  addiu      $s4, $zero, 3
/* 1A6BD0 80394B50 8E440028 */  lw         $a0, 0x28($s2)
/* 1A6BD4 80394B54 4600008D */  trunc.w.s  $f2, $f0
/* 1A6BD8 80394B58 44051000 */  mfc1       $a1, $f2
/* 1A6BDC 80394B5C 00000000 */  nop
/* 1A6BE0 80394B60 00B02821 */  addu       $a1, $a1, $s0
/* 1A6BE4 80394B64 C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6BE8 80394B68 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6BEC 80394B6C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6BF0 80394B70 4600008D */  trunc.w.s  $f2, $f0
/* 1A6BF4 80394B74 44061000 */  mfc1       $a2, $f2
/* 1A6BF8 80394B78 00000000 */  nop
/* 1A6BFC 80394B7C 24C6FFEF */  addiu      $a2, $a2, -0x11
/* 1A6C00 80394B80 00063480 */  sll        $a2, $a2, 0x12
/* 1A6C04 80394B84 0C028D89 */  jal        func_800A3624
/* 1A6C08 80394B88 00063403 */   sra       $a2, $a2, 0x10
/* 1A6C0C 80394B8C C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6C10 80394B90 00009821 */  addu       $s3, $zero, $zero
/* 1A6C14 80394B94 8E44002C */  lw         $a0, 0x2c($s2)
/* 1A6C18 80394B98 4600008D */  trunc.w.s  $f2, $f0
/* 1A6C1C 80394B9C 44051000 */  mfc1       $a1, $f2
/* 1A6C20 80394BA0 00000000 */  nop
/* 1A6C24 80394BA4 24A5003B */  addiu      $a1, $a1, 0x3b
/* 1A6C28 80394BA8 C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6C2C 80394BAC 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6C30 80394BB0 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6C34 80394BB4 4600008D */  trunc.w.s  $f2, $f0
/* 1A6C38 80394BB8 44061000 */  mfc1       $a2, $f2
/* 1A6C3C 80394BBC 00000000 */  nop
/* 1A6C40 80394BC0 24C60002 */  addiu      $a2, $a2, 2
/* 1A6C44 80394BC4 00063480 */  sll        $a2, $a2, 0x12
/* 1A6C48 80394BC8 0C028D89 */  jal        func_800A3624
/* 1A6C4C 80394BCC 00063403 */   sra       $a2, $a2, 0x10
/* 1A6C50 80394BD0 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6C54 80394BD4 02408021 */  addu       $s0, $s2, $zero
/* 1A6C58 80394BD8 8E440030 */  lw         $a0, 0x30($s2)
/* 1A6C5C 80394BDC 4600008D */  trunc.w.s  $f2, $f0
/* 1A6C60 80394BE0 44051000 */  mfc1       $a1, $f2
/* 1A6C64 80394BE4 00000000 */  nop
/* 1A6C68 80394BE8 24A5003B */  addiu      $a1, $a1, 0x3b
/* 1A6C6C 80394BEC C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6C70 80394BF0 00052C80 */  sll        $a1, $a1, 0x12
/* 1A6C74 80394BF4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6C78 80394BF8 4600008D */  trunc.w.s  $f2, $f0
/* 1A6C7C 80394BFC 44061000 */  mfc1       $a2, $f2
/* 1A6C80 80394C00 00000000 */  nop
/* 1A6C84 80394C04 24C60007 */  addiu      $a2, $a2, 7
/* 1A6C88 80394C08 00063480 */  sll        $a2, $a2, 0x12
/* 1A6C8C 80394C0C 0C028D89 */  jal        func_800A3624
/* 1A6C90 80394C10 00063403 */   sra       $a2, $a2, 0x10
.L80394C14:
/* 1A6C94 80394C14 C6400050 */  lwc1       $f0, 0x50($s2)
/* 1A6C98 80394C18 26040014 */  addiu      $a0, $s0, 0x14
/* 1A6C9C 80394C1C 4600008D */  trunc.w.s  $f2, $f0
/* 1A6CA0 80394C20 44021000 */  mfc1       $v0, $f2
/* 1A6CA4 80394C24 00000000 */  nop
/* 1A6CA8 80394C28 00021400 */  sll        $v0, $v0, 0x10
/* 1A6CAC 80394C2C 00021403 */  sra        $v0, $v0, 0x10
/* 1A6CB0 80394C30 2442003B */  addiu      $v0, $v0, 0x3b
/* 1A6CB4 80394C34 16340002 */  bne        $s1, $s4, .L80394C40
/* 1A6CB8 80394C38 00531021 */   addu      $v0, $v0, $s3
/* 1A6CBC 80394C3C 24420002 */  addiu      $v0, $v0, 2
.L80394C40:
/* 1A6CC0 80394C40 00021480 */  sll        $v0, $v0, 0x12
/* 1A6CC4 80394C44 00022C03 */  sra        $a1, $v0, 0x10
/* 1A6CC8 80394C48 8C840000 */  lw         $a0, ($a0)
/* 1A6CCC 80394C4C 26730005 */  addiu      $s3, $s3, 5
/* 1A6CD0 80394C50 C6400054 */  lwc1       $f0, 0x54($s2)
/* 1A6CD4 80394C54 26100004 */  addiu      $s0, $s0, 4
/* 1A6CD8 80394C58 26310001 */  addiu      $s1, $s1, 1
/* 1A6CDC 80394C5C 4600008D */  trunc.w.s  $f2, $f0
/* 1A6CE0 80394C60 44061000 */  mfc1       $a2, $f2
/* 1A6CE4 80394C64 00000000 */  nop
/* 1A6CE8 80394C68 24C60017 */  addiu      $a2, $a2, 0x17
/* 1A6CEC 80394C6C 00063480 */  sll        $a2, $a2, 0x12
/* 1A6CF0 80394C70 0C028D89 */  jal        func_800A3624
/* 1A6CF4 80394C74 00063403 */   sra       $a2, $a2, 0x10
/* 1A6CF8 80394C78 2A220004 */  slti       $v0, $s1, 4
/* 1A6CFC 80394C7C 1440FFE5 */  bnez       $v0, .L80394C14
/* 1A6D00 80394C80 00000000 */   nop
/* 1A6D04 80394C84 C6440054 */  lwc1       $f4, 0x54($s2)
/* 1A6D08 80394C88 3C0141D8 */  lui        $at, 0x41d8
/* 1A6D0C 80394C8C 44810000 */  mtc1       $at, $f0
/* 1A6D10 80394C90 00000000 */  nop
/* 1A6D14 80394C94 C6460050 */  lwc1       $f6, 0x50($s2)
/* 1A6D18 80394C98 46002000 */  add.s      $f0, $f4, $f0
/* 1A6D1C 80394C9C 3C0140C0 */  lui        $at, 0x40c0
/* 1A6D20 80394CA0 44811000 */  mtc1       $at, $f2
/* 1A6D24 80394CA4 00000000 */  nop
/* 1A6D28 80394CA8 46023080 */  add.s      $f2, $f6, $f2
/* 1A6D2C 80394CAC 4600020D */  trunc.w.s  $f8, $f0
/* 1A6D30 80394CB0 44024000 */  mfc1       $v0, $f8
/* 1A6D34 80394CB4 00000000 */  nop
/* 1A6D38 80394CB8 3C0140A0 */  lui        $at, 0x40a0
/* 1A6D3C 80394CBC 44810000 */  mtc1       $at, $f0
/* 1A6D40 80394CC0 00000000 */  nop
/* 1A6D44 80394CC4 00021400 */  sll        $v0, $v0, 0x10
/* 1A6D48 80394CC8 00021403 */  sra        $v0, $v0, 0x10
/* 1A6D4C 80394CCC AFA20010 */  sw         $v0, 0x10($sp)
/* 1A6D50 80394CD0 8E440034 */  lw         $a0, 0x34($s2)
/* 1A6D54 80394CD4 4600120D */  trunc.w.s  $f8, $f2
/* 1A6D58 80394CD8 44054000 */  mfc1       $a1, $f8
/* 1A6D5C 80394CDC 00000000 */  nop
/* 1A6D60 80394CE0 46002100 */  add.s      $f4, $f4, $f0
/* 1A6D64 80394CE4 3C014250 */  lui        $at, 0x4250
/* 1A6D68 80394CE8 44810000 */  mtc1       $at, $f0
/* 1A6D6C 80394CEC 00000000 */  nop
/* 1A6D70 80394CF0 00052C00 */  sll        $a1, $a1, 0x10
/* 1A6D74 80394CF4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A6D78 80394CF8 46003180 */  add.s      $f6, $f6, $f0
/* 1A6D7C 80394CFC 4600200D */  trunc.w.s  $f0, $f4
/* 1A6D80 80394D00 44060000 */  mfc1       $a2, $f0
/* 1A6D84 80394D04 00000000 */  nop
/* 1A6D88 80394D08 00063400 */  sll        $a2, $a2, 0x10
/* 1A6D8C 80394D0C 00063403 */  sra        $a2, $a2, 0x10
/* 1A6D90 80394D10 4600300D */  trunc.w.s  $f0, $f6
/* 1A6D94 80394D14 44070000 */  mfc1       $a3, $f0
/* 1A6D98 80394D18 00000000 */  nop
/* 1A6D9C 80394D1C 00073C00 */  sll        $a3, $a3, 0x10
/* 1A6DA0 80394D20 0C02939C */  jal        func_800A4E70
/* 1A6DA4 80394D24 00073C03 */   sra       $a3, $a3, 0x10
/* 1A6DA8 80394D28 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A6DAC 80394D2C 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A6DB0 80394D30 104000A4 */  beqz       $v0, .L80394FC4
/* 1A6DB4 80394D34 00000000 */   nop
/* 1A6DB8 80394D38 8E440000 */  lw         $a0, ($s2)
/* 1A6DBC 80394D3C 0C028A40 */  jal        func_800A2900
/* 1A6DC0 80394D40 00008821 */   addu      $s1, $zero, $zero
/* 1A6DC4 80394D44 8E440034 */  lw         $a0, 0x34($s2)
/* 1A6DC8 80394D48 0C028A40 */  jal        func_800A2900
/* 1A6DCC 80394D4C 02408021 */   addu      $s0, $s2, $zero
/* 1A6DD0 80394D50 8E440004 */  lw         $a0, 4($s2)
/* 1A6DD4 80394D54 0C028A40 */  jal        func_800A2900
/* 1A6DD8 80394D58 00000000 */   nop
/* 1A6DDC 80394D5C 8E440008 */  lw         $a0, 8($s2)
/* 1A6DE0 80394D60 0C028A40 */  jal        func_800A2900
/* 1A6DE4 80394D64 00000000 */   nop
/* 1A6DE8 80394D68 8E440038 */  lw         $a0, 0x38($s2)
/* 1A6DEC 80394D6C 0C028A40 */  jal        func_800A2900
/* 1A6DF0 80394D70 00000000 */   nop
/* 1A6DF4 80394D74 8E44000C */  lw         $a0, 0xc($s2)
/* 1A6DF8 80394D78 0C028A40 */  jal        func_800A2900
/* 1A6DFC 80394D7C 00000000 */   nop
/* 1A6E00 80394D80 8E440010 */  lw         $a0, 0x10($s2)
/* 1A6E04 80394D84 0C028A40 */  jal        func_800A2900
/* 1A6E08 80394D88 00000000 */   nop
.L80394D8C:
/* 1A6E0C 80394D8C 8E040014 */  lw         $a0, 0x14($s0)
/* 1A6E10 80394D90 26100004 */  addiu      $s0, $s0, 4
/* 1A6E14 80394D94 0C028A40 */  jal        func_800A2900
/* 1A6E18 80394D98 26310001 */   addiu     $s1, $s1, 1
/* 1A6E1C 80394D9C 2A220004 */  slti       $v0, $s1, 4
/* 1A6E20 80394DA0 1440FFFA */  bnez       $v0, .L80394D8C
/* 1A6E24 80394DA4 00000000 */   nop
/* 1A6E28 80394DA8 8642008E */  lh         $v0, 0x8e($s2)
/* 1A6E2C 80394DAC 10400016 */  beqz       $v0, .L80394E08
/* 1A6E30 80394DB0 00402021 */   addu      $a0, $v0, $zero
/* 1A6E34 80394DB4 3C056666 */  lui        $a1, 0x6666
/* 1A6E38 80394DB8 34A56667 */  ori        $a1, $a1, 0x6667
/* 1A6E3C 80394DBC 2484FFFF */  addiu      $a0, $a0, -1
/* 1A6E40 80394DC0 00041C00 */  sll        $v1, $a0, 0x10
/* 1A6E44 80394DC4 00031403 */  sra        $v0, $v1, 0x10
/* 1A6E48 80394DC8 00450018 */  mult       $v0, $a1
/* 1A6E4C 80394DCC 00031FC3 */  sra        $v1, $v1, 0x1f
/* 1A6E50 80394DD0 00004010 */  mfhi       $t0
/* 1A6E54 80394DD4 00000000 */  nop
/* 1A6E58 80394DD8 00000000 */  nop
/* 1A6E5C 80394DDC 00081043 */  sra        $v0, $t0, 1
/* 1A6E60 80394DE0 00431023 */  subu       $v0, $v0, $v1
/* 1A6E64 80394DE4 30420001 */  andi       $v0, $v0, 1
/* 1A6E68 80394DE8 10400007 */  beqz       $v0, .L80394E08
/* 1A6E6C 80394DEC A644008E */   sh        $a0, 0x8e($s2)
/* 1A6E70 80394DF0 8E440024 */  lw         $a0, 0x24($s2)
/* 1A6E74 80394DF4 0C028A40 */  jal        func_800A2900
/* 1A6E78 80394DF8 00000000 */   nop
/* 1A6E7C 80394DFC 8E440028 */  lw         $a0, 0x28($s2)
/* 1A6E80 80394E00 0C028A40 */  jal        func_800A2900
/* 1A6E84 80394E04 00000000 */   nop
.L80394E08:
/* 1A6E88 80394E08 86420090 */  lh         $v0, 0x90($s2)
/* 1A6E8C 80394E0C 10400005 */  beqz       $v0, .L80394E24
/* 1A6E90 80394E10 00401821 */   addu      $v1, $v0, $zero
/* 1A6E94 80394E14 8E44002C */  lw         $a0, 0x2c($s2)
/* 1A6E98 80394E18 2462FFFF */  addiu      $v0, $v1, -1
/* 1A6E9C 80394E1C 0C028A40 */  jal        func_800A2900
/* 1A6EA0 80394E20 A6420090 */   sh        $v0, 0x90($s2)
.L80394E24:
/* 1A6EA4 80394E24 86420092 */  lh         $v0, 0x92($s2)
/* 1A6EA8 80394E28 10400005 */  beqz       $v0, .L80394E40
/* 1A6EAC 80394E2C 00401821 */   addu      $v1, $v0, $zero
/* 1A6EB0 80394E30 8E440030 */  lw         $a0, 0x30($s2)
/* 1A6EB4 80394E34 2462FFFF */  addiu      $v0, $v1, -1
/* 1A6EB8 80394E38 0C028A40 */  jal        func_800A2900
/* 1A6EBC 80394E3C A6420092 */   sh        $v0, 0x92($s2)
.L80394E40:
/* 1A6EC0 80394E40 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A6EC4 80394E44 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A6EC8 80394E48 86440094 */  lh         $a0, 0x94($s2)
/* 1A6ECC 80394E4C 00021880 */  sll        $v1, $v0, 2
/* 1A6ED0 80394E50 00621821 */  addu       $v1, $v1, $v0
/* 1A6ED4 80394E54 0064182A */  slt        $v1, $v1, $a0
/* 1A6ED8 80394E58 10600010 */  beqz       $v1, .L80394E9C
/* 1A6EDC 80394E5C 00000000 */   nop
/* 1A6EE0 80394E60 0C02B460 */  jal        func_800AD180
/* 1A6EE4 80394E64 2404000B */   addiu     $a0, $zero, 0xb
/* 1A6EE8 80394E68 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 1A6EEC 80394E6C 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 1A6EF0 80394E70 46000221 */  cvt.d.s    $f8, $f0
/* 1A6EF4 80394E74 44074000 */  mfc1       $a3, $f8
/* 1A6EF8 80394E78 00000000 */  nop
/* 1A6EFC 80394E7C 44064800 */  mfc1       $a2, $f9
/* 1A6F00 80394E80 00000000 */  nop
/* 1A6F04 80394E84 0C0E545D */  jal        func_80395174
/* 1A6F08 80394E88 00000000 */   nop
/* 1A6F0C 80394E8C 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 1A6F10 80394E90 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 1A6F14 80394E94 0C0E5512 */  jal        func_80395448
/* 1A6F18 80394E98 00000000 */   nop
.L80394E9C:
/* 1A6F1C 80394E9C 9242009B */  lbu        $v0, 0x9b($s2)
/* 1A6F20 80394EA0 10400043 */  beqz       $v0, .L80394FB0
/* 1A6F24 80394EA4 00000000 */   nop
/* 1A6F28 80394EA8 D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A6F2C 80394EAC 3C01803B */  lui        $at, %hi(D_803A8C18_1BAC98)
/* 1A6F30 80394EB0 D4208C18 */  ldc1       $f0, %lo(D_803A8C18_1BAC98)($at)
/* 1A6F34 80394EB4 4620103E */  c.le.d     $f2, $f0
/* 1A6F38 80394EB8 00000000 */  nop
/* 1A6F3C 80394EBC 45000021 */  bc1f       .L80394F44
/* 1A6F40 80394EC0 00000000 */   nop
/* 1A6F44 80394EC4 9242009A */  lbu        $v0, 0x9a($s2)
/* 1A6F48 80394EC8 1040001D */  beqz       $v0, .L80394F40
/* 1A6F4C 80394ECC 00000000 */   nop
/* 1A6F50 80394ED0 96420096 */  lhu        $v0, 0x96($s2)
/* 1A6F54 80394ED4 3C048017 */  lui        $a0, %hi(D_8016D168)
/* 1A6F58 80394ED8 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* 1A6F5C 80394EDC 24420001 */  addiu      $v0, $v0, 1
/* 1A6F60 80394EE0 A6420096 */  sh         $v0, 0x96($s2)
/* 1A6F64 80394EE4 00021400 */  sll        $v0, $v0, 0x10
/* 1A6F68 80394EE8 00021403 */  sra        $v0, $v0, 0x10
/* 1A6F6C 80394EEC 00041880 */  sll        $v1, $a0, 2
/* 1A6F70 80394EF0 00641821 */  addu       $v1, $v1, $a0
/* 1A6F74 80394EF4 00031840 */  sll        $v1, $v1, 1
/* 1A6F78 80394EF8 14430011 */  bne        $v0, $v1, .L80394F40
/* 1A6F7C 80394EFC 00000000 */   nop
/* 1A6F80 80394F00 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 1A6F84 80394F04 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 1A6F88 80394F08 3C01803B */  lui        $at, %hi(D_803A8C20_1BACA0)
/* 1A6F8C 80394F0C 8C268C20 */  lw         $a2, %lo(D_803A8C20_1BACA0)($at)
/* 1A6F90 80394F10 8C278C24 */  lw         $a3, -0x73dc($at)
/* 1A6F94 80394F14 0C0E545D */  jal        func_80395174
/* 1A6F98 80394F18 00000000 */   nop
/* 1A6F9C 80394F1C 9242009A */  lbu        $v0, 0x9a($s2)
/* 1A6FA0 80394F20 3C048017 */  lui        $a0, %hi(D_8016D168)
/* 1A6FA4 80394F24 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* 1A6FA8 80394F28 2442FFFF */  addiu      $v0, $v0, -1
/* 1A6FAC 80394F2C 00041880 */  sll        $v1, $a0, 2
/* 1A6FB0 80394F30 00641821 */  addu       $v1, $v1, $a0
/* 1A6FB4 80394F34 00031880 */  sll        $v1, $v1, 2
/* 1A6FB8 80394F38 A6430098 */  sh         $v1, 0x98($s2)
/* 1A6FBC 80394F3C A242009A */  sb         $v0, 0x9a($s2)
.L80394F40:
/* 1A6FC0 80394F40 9242009B */  lbu        $v0, 0x9b($s2)
.L80394F44:
/* 1A6FC4 80394F44 1040001A */  beqz       $v0, .L80394FB0
/* 1A6FC8 80394F48 00000000 */   nop
/* 1A6FCC 80394F4C 86420098 */  lh         $v0, 0x98($s2)
/* 1A6FD0 80394F50 10400017 */  beqz       $v0, .L80394FB0
/* 1A6FD4 80394F54 00401821 */   addu      $v1, $v0, $zero
/* 1A6FD8 80394F58 2462FFFF */  addiu      $v0, $v1, -1
/* 1A6FDC 80394F5C A6420098 */  sh         $v0, 0x98($s2)
/* 1A6FE0 80394F60 00021400 */  sll        $v0, $v0, 0x10
/* 1A6FE4 80394F64 14400012 */  bnez       $v0, .L80394FB0
/* 1A6FE8 80394F68 00000000 */   nop
/* 1A6FEC 80394F6C 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 1A6FF0 80394F70 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 1A6FF4 80394F74 3C01803B */  lui        $at, %hi(D_803A8C28_1BACA8)
/* 1A6FF8 80394F78 8C268C28 */  lw         $a2, %lo(D_803A8C28_1BACA8)($at)
/* 1A6FFC 80394F7C 8C278C2C */  lw         $a3, -0x73d4($at)
/* 1A7000 80394F80 0C0E545D */  jal        func_80395174
/* 1A7004 80394F84 A6400096 */   sh        $zero, 0x96($s2)
/* 1A7008 80394F88 00002021 */  addu       $a0, $zero, $zero
/* 1A700C 80394F8C 24050004 */  addiu      $a1, $zero, 4
/* 1A7010 80394F90 24060002 */  addiu      $a2, $zero, 2
/* 1A7014 80394F94 240700E3 */  addiu      $a3, $zero, 0xe3
/* 1A7018 80394F98 2402FFFF */  addiu      $v0, $zero, -1
/* 1A701C 80394F9C AFA20010 */  sw         $v0, 0x10($sp)
/* 1A7020 80394FA0 24020007 */  addiu      $v0, $zero, 7
/* 1A7024 80394FA4 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A7028 80394FA8 0C0E5BE4 */  jal        func_80396F90
/* 1A702C 80394FAC AFA00018 */   sw        $zero, 0x18($sp)
.L80394FB0:
/* 1A7030 80394FB0 9242009E */  lbu        $v0, 0x9e($s2)
/* 1A7034 80394FB4 14400003 */  bnez       $v0, .L80394FC4
/* 1A7038 80394FB8 00000000 */   nop
/* 1A703C 80394FBC 0C0E540F */  jal        func_8039503C_1A70BC
/* 1A7040 80394FC0 02402021 */   addu      $a0, $s2, $zero
.L80394FC4:
/* 1A7044 80394FC4 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1A7048 80394FC8 8FB40058 */  lw         $s4, 0x58($sp)
/* 1A704C 80394FCC 8FB30054 */  lw         $s3, 0x54($sp)
/* 1A7050 80394FD0 8FB20050 */  lw         $s2, 0x50($sp)
/* 1A7054 80394FD4 8FB1004C */  lw         $s1, 0x4c($sp)
/* 1A7058 80394FD8 8FB00048 */  lw         $s0, 0x48($sp)
/* 1A705C 80394FDC D7B40060 */  ldc1       $f20, 0x60($sp)
/* 1A7060 80394FE0 27BD0068 */  addiu      $sp, $sp, 0x68
/* 1A7064 80394FE4 03E00008 */  jr         $ra
/* 1A7068 80394FE8 00000000 */   nop

glabel func_80394FEC_1A706C
/* 1A706C 80394FEC 00052C00 */  sll        $a1, $a1, 0x10
/* 1A7070 80394FF0 00052C03 */  sra        $a1, $a1, 0x10
/* 1A7074 80394FF4 3C03803A */  lui        $v1, %hi(D_8039E724_1B07A4)
/* 1A7078 80394FF8 2463E724 */  addiu      $v1, $v1, %lo(D_8039E724_1B07A4)
/* 1A707C 80394FFC 000510C0 */  sll        $v0, $a1, 3
/* 1A7080 80395000 00451023 */  subu       $v0, $v0, $a1
/* 1A7084 80395004 00432821 */  addu       $a1, $v0, $v1
/* 1A7088 80395008 2486001C */  addiu      $a2, $a0, 0x1c
.L8039500C:
/* 1A708C 8039500C 90A20000 */  lbu        $v0, ($a1)
/* 1A7090 80395010 94830002 */  lhu        $v1, 2($a0)
/* 1A7094 80395014 50400002 */  beql       $v0, $zero, .L80395020
/* 1A7098 80395018 3063FFFE */   andi      $v1, $v1, 0xfffe
/* 1A709C 8039501C 34630001 */  ori        $v1, $v1, 1
.L80395020:
/* 1A70A0 80395020 A4830002 */  sh         $v1, 2($a0)
/* 1A70A4 80395024 24840004 */  addiu      $a0, $a0, 4
/* 1A70A8 80395028 0086102A */  slt        $v0, $a0, $a2
/* 1A70AC 8039502C 1440FFF7 */  bnez       $v0, .L8039500C
/* 1A70B0 80395030 24A50001 */   addiu     $a1, $a1, 1
/* 1A70B4 80395034 03E00008 */  jr         $ra
/* 1A70B8 80395038 00000000 */   nop

glabel func_8039503C_1A70BC
/* 1A70BC 8039503C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1A70C0 80395040 AFB20028 */  sw         $s2, 0x28($sp)
/* 1A70C4 80395044 00809021 */  addu       $s2, $a0, $zero
/* 1A70C8 80395048 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1A70CC 8039504C AFB10024 */  sw         $s1, 0x24($sp)
/* 1A70D0 80395050 AFB00020 */  sw         $s0, 0x20($sp)
/* 1A70D4 80395054 9242009C */  lbu        $v0, 0x9c($s2)
/* 1A70D8 80395058 14400020 */  bnez       $v0, .L803950DC
/* 1A70DC 8039505C 00000000 */   nop
/* 1A70E0 80395060 D6420060 */  ldc1       $f2, 0x60($s2)
/* 1A70E4 80395064 3C01803B */  lui        $at, %hi(D_803A8C30_1BACB0)
/* 1A70E8 80395068 D4208C30 */  ldc1       $f0, %lo(D_803A8C30_1BACB0)($at)
/* 1A70EC 8039506C 4622003E */  c.le.d     $f0, $f2
/* 1A70F0 80395070 00000000 */  nop
/* 1A70F4 80395074 45000019 */  bc1f       .L803950DC
/* 1A70F8 80395078 00000000 */   nop
/* 1A70FC 8039507C 9242009D */  lbu        $v0, 0x9d($s2)
/* 1A7100 80395080 14400016 */  bnez       $v0, .L803950DC
/* 1A7104 80395084 00002021 */   addu      $a0, $zero, $zero
/* 1A7108 80395088 24050004 */  addiu      $a1, $zero, 4
/* 1A710C 8039508C 24060002 */  addiu      $a2, $zero, 2
/* 1A7110 80395090 240700E5 */  addiu      $a3, $zero, 0xe5
/* 1A7114 80395094 2411FFFF */  addiu      $s1, $zero, -1
/* 1A7118 80395098 24020007 */  addiu      $v0, $zero, 7
/* 1A711C 8039509C 24100001 */  addiu      $s0, $zero, 1
/* 1A7120 803950A0 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A7124 803950A4 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A7128 803950A8 0C0E5BE4 */  jal        func_80396F90
/* 1A712C 803950AC AFB00018 */   sw        $s0, 0x18($sp)
/* 1A7130 803950B0 2404004A */  addiu      $a0, $zero, 0x4a
/* 1A7134 803950B4 24050004 */  addiu      $a1, $zero, 4
/* 1A7138 803950B8 24060001 */  addiu      $a2, $zero, 1
/* 1A713C 803950BC 240700B7 */  addiu      $a3, $zero, 0xb7
/* 1A7140 803950C0 24020005 */  addiu      $v0, $zero, 5
/* 1A7144 803950C4 AFB10010 */  sw         $s1, 0x10($sp)
/* 1A7148 803950C8 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A714C 803950CC 0C0E5BE4 */  jal        func_80396F90
/* 1A7150 803950D0 AFB00018 */   sw        $s0, 0x18($sp)
/* 1A7154 803950D4 24020001 */  addiu      $v0, $zero, 1
/* 1A7158 803950D8 A242009C */  sb         $v0, 0x9c($s2)
.L803950DC:
/* 1A715C 803950DC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1A7160 803950E0 8FB20028 */  lw         $s2, 0x28($sp)
/* 1A7164 803950E4 8FB10024 */  lw         $s1, 0x24($sp)
/* 1A7168 803950E8 8FB00020 */  lw         $s0, 0x20($sp)
/* 1A716C 803950EC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1A7170 803950F0 03E00008 */  jr         $ra
/* 1A7174 803950F4 00000000 */   nop

glabel func_803950F8
/* 1A7178 803950F8 44871000 */  mtc1       $a3, $f2
/* 1A717C 803950FC 00000000 */  nop
/* 1A7180 80395100 44861800 */  mtc1       $a2, $f3
/* 1A7184 80395104 00000000 */  nop
/* 1A7188 80395108 1080000C */  beqz       $a0, .L8039513C
/* 1A718C 8039510C 00000000 */   nop
/* 1A7190 80395110 3C01803B */  lui        $at, %hi(D_803A8C38_1BACB8)
/* 1A7194 80395114 D4208C38 */  ldc1       $f0, %lo(D_803A8C38_1BACB8)($at)
/* 1A7198 80395118 8C840014 */  lw         $a0, 0x14($a0)
/* 1A719C 8039511C 4622003E */  c.le.d     $f0, $f2
/* 1A71A0 80395120 00000000 */  nop
/* 1A71A4 80395124 00000000 */  nop
/* 1A71A8 80395128 F4820058 */  sdc1       $f2, 0x58($a0)
/* 1A71AC 8039512C F4820060 */  sdc1       $f2, 0x60($a0)
/* 1A71B0 80395130 45000002 */  bc1f       .L8039513C
/* 1A71B4 80395134 24020001 */   addiu     $v0, $zero, 1
/* 1A71B8 80395138 A082009C */  sb         $v0, 0x9c($a0)
.L8039513C:
/* 1A71BC 8039513C 03E00008 */  jr         $ra
/* 1A71C0 80395140 00000000 */   nop

glabel func_80395144
/* 1A71C4 80395144 D7A20010 */  ldc1       $f2, 0x10($sp)
/* 1A71C8 80395148 44870000 */  mtc1       $a3, $f0
/* 1A71CC 8039514C 00000000 */  nop
/* 1A71D0 80395150 44860800 */  mtc1       $a2, $f1
/* 1A71D4 80395154 00000000 */  nop
/* 1A71D8 80395158 10800004 */  beqz       $a0, .L8039516C
/* 1A71DC 8039515C 00000000 */   nop
/* 1A71E0 80395160 8C820014 */  lw         $v0, 0x14($a0)
/* 1A71E4 80395164 F4400068 */  sdc1       $f0, 0x68($v0)
/* 1A71E8 80395168 F4420070 */  sdc1       $f2, 0x70($v0)
.L8039516C:
/* 1A71EC 8039516C 03E00008 */  jr         $ra
/* 1A71F0 80395170 00000000 */   nop

glabel func_80395174
/* 1A71F4 80395174 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A71F8 80395178 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1A71FC 8039517C 4487A000 */  mtc1       $a3, $f20
/* 1A7200 80395180 00000000 */  nop
/* 1A7204 80395184 4486A800 */  mtc1       $a2, $f21
/* 1A7208 80395188 00000000 */  nop
/* 1A720C 8039518C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A7210 80395190 10800051 */  beqz       $a0, .L803952D8
/* 1A7214 80395194 AFB00018 */   sw        $s0, 0x18($sp)
/* 1A7218 80395198 44800000 */  mtc1       $zero, $f0
/* 1A721C 8039519C 00000000 */  nop
/* 1A7220 803951A0 44800800 */  mtc1       $zero, $f1
/* 1A7224 803951A4 00000000 */  nop
/* 1A7228 803951A8 4634003C */  c.lt.d     $f0, $f20
/* 1A722C 803951AC 00000000 */  nop
/* 1A7230 803951B0 00000000 */  nop
/* 1A7234 803951B4 8C900014 */  lw         $s0, 0x14($a0)
/* 1A7238 803951B8 45000009 */  bc1f       .L803951E0
/* 1A723C 803951BC 00000000 */   nop
/* 1A7240 803951C0 3C048015 */  lui        $a0, %hi(D_80149DC0)
/* 1A7244 803951C4 8C849DC0 */  lw         $a0, %lo(D_80149DC0)($a0)
/* 1A7248 803951C8 0C0E4E97 */  jal        func_80393A5C_1A5ADC
/* 1A724C 803951CC 00000000 */   nop
/* 1A7250 803951D0 44820000 */  mtc1       $v0, $f0
/* 1A7254 803951D4 00000000 */  nop
/* 1A7258 803951D8 46800021 */  cvt.d.w    $f0, $f0
/* 1A725C 803951DC 4620A502 */  mul.d      $f20, $f20, $f0
.L803951E0:
/* 1A7260 803951E0 D6040058 */  ldc1       $f4, 0x58($s0)
/* 1A7264 803951E4 46342000 */  add.d      $f0, $f4, $f20
/* 1A7268 803951E8 D6020070 */  ldc1       $f2, 0x70($s0)
/* 1A726C 803951EC 4620103C */  c.lt.d     $f2, $f0
/* 1A7270 803951F0 00000000 */  nop
/* 1A7274 803951F4 00000000 */  nop
/* 1A7278 803951F8 F6000058 */  sdc1       $f0, 0x58($s0)
/* 1A727C 803951FC 45010006 */  bc1t       .L80395218
/* 1A7280 80395200 00000000 */   nop
/* 1A7284 80395204 D6020068 */  ldc1       $f2, 0x68($s0)
/* 1A7288 80395208 4622003C */  c.lt.d     $f0, $f2
/* 1A728C 8039520C 00000000 */  nop
/* 1A7290 80395210 45000002 */  bc1f       .L8039521C
/* 1A7294 80395214 00000000 */   nop
.L80395218:
/* 1A7298 80395218 F6020058 */  sdc1       $f2, 0x58($s0)
.L8039521C:
/* 1A729C 8039521C D6000058 */  ldc1       $f0, 0x58($s0)
/* 1A72A0 80395220 46202032 */  c.eq.d     $f4, $f0
/* 1A72A4 80395224 00000000 */  nop
/* 1A72A8 80395228 4501002B */  bc1t       .L803952D8
/* 1A72AC 8039522C 00000000 */   nop
/* 1A72B0 80395230 44800000 */  mtc1       $zero, $f0
/* 1A72B4 80395234 00000000 */  nop
/* 1A72B8 80395238 44800800 */  mtc1       $zero, $f1
/* 1A72BC 8039523C 00000000 */  nop
/* 1A72C0 80395240 4634003C */  c.lt.d     $f0, $f20
/* 1A72C4 80395244 00000000 */  nop
/* 1A72C8 80395248 45000012 */  bc1f       .L80395294
/* 1A72CC 8039524C 00000000 */   nop
/* 1A72D0 80395250 86020090 */  lh         $v0, 0x90($s0)
/* 1A72D4 80395254 14400009 */  bnez       $v0, .L8039527C
/* 1A72D8 80395258 2402000A */   addiu     $v0, $zero, 0xa
/* 1A72DC 8039525C 24020064 */  addiu      $v0, $zero, 0x64
/* 1A72E0 80395260 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A72E4 80395264 2404001C */  addiu      $a0, $zero, 0x1c
/* 1A72E8 80395268 24050020 */  addiu      $a1, $zero, 0x20
/* 1A72EC 8039526C 24060080 */  addiu      $a2, $zero, 0x80
/* 1A72F0 80395270 0C026E0C */  jal        func_8009B830
/* 1A72F4 80395274 24070001 */   addiu     $a3, $zero, 1
/* 1A72F8 80395278 2402000A */  addiu      $v0, $zero, 0xa
.L8039527C:
/* 1A72FC 8039527C A6020090 */  sh         $v0, 0x90($s0)
/* 1A7300 80395280 A6000092 */  sh         $zero, 0x92($s0)
/* 1A7304 80395284 44800000 */  mtc1       $zero, $f0
/* 1A7308 80395288 00000000 */  nop
/* 1A730C 8039528C 44800800 */  mtc1       $zero, $f1
/* 1A7310 80395290 00000000 */  nop
.L80395294:
/* 1A7314 80395294 4620A03C */  c.lt.d     $f20, $f0
/* 1A7318 80395298 00000000 */  nop
/* 1A731C 8039529C 4500000E */  bc1f       .L803952D8
/* 1A7320 803952A0 00000000 */   nop
/* 1A7324 803952A4 86020092 */  lh         $v0, 0x92($s0)
/* 1A7328 803952A8 14400009 */  bnez       $v0, .L803952D0
/* 1A732C 803952AC 2402000A */   addiu     $v0, $zero, 0xa
/* 1A7330 803952B0 24020064 */  addiu      $v0, $zero, 0x64
/* 1A7334 803952B4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A7338 803952B8 2404001D */  addiu      $a0, $zero, 0x1d
/* 1A733C 803952BC 24050020 */  addiu      $a1, $zero, 0x20
/* 1A7340 803952C0 24060080 */  addiu      $a2, $zero, 0x80
/* 1A7344 803952C4 0C026E0C */  jal        func_8009B830
/* 1A7348 803952C8 24070001 */   addiu     $a3, $zero, 1
/* 1A734C 803952CC 2402000A */  addiu      $v0, $zero, 0xa
.L803952D0:
/* 1A7350 803952D0 A6000090 */  sh         $zero, 0x90($s0)
/* 1A7354 803952D4 A6020092 */  sh         $v0, 0x92($s0)
.L803952D8:
/* 1A7358 803952D8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A735C 803952DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A7360 803952E0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1A7364 803952E4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A7368 803952E8 03E00008 */  jr         $ra
/* 1A736C 803952EC 00000000 */   nop

glabel func_803952F0
/* 1A7370 803952F0 10800005 */  beqz       $a0, .L80395308
/* 1A7374 803952F4 00000000 */   nop
/* 1A7378 803952F8 8C820014 */  lw         $v0, 0x14($a0)
/* 1A737C 803952FC D4400060 */  ldc1       $f0, 0x60($v0)
/* 1A7380 80395300 080E54C5 */  j          .L80395314
/* 1A7384 80395304 00000000 */   nop
.L80395308:
/* 1A7388 80395308 44800000 */  mtc1       $zero, $f0
/* 1A738C 8039530C 00000000 */  nop
/* 1A7390 80395310 44800800 */  mtc1       $zero, $f1
.L80395314:
/* 1A7394 80395314 00000000 */  nop
/* 1A7398 80395318 03E00008 */  jr         $ra
/* 1A739C 8039531C 00000000 */   nop

glabel func_80395320
/* 1A73A0 80395320 10800005 */  beqz       $a0, .L80395338
/* 1A73A4 80395324 00000000 */   nop
/* 1A73A8 80395328 8C820014 */  lw         $v0, 0x14($a0)
/* 1A73AC 8039532C D4400078 */  ldc1       $f0, 0x78($v0)
/* 1A73B0 80395330 080E54D1 */  j          .L80395344
/* 1A73B4 80395334 00000000 */   nop
.L80395338:
/* 1A73B8 80395338 44800000 */  mtc1       $zero, $f0
/* 1A73BC 8039533C 00000000 */  nop
/* 1A73C0 80395340 44800800 */  mtc1       $zero, $f1
.L80395344:
/* 1A73C4 80395344 00000000 */  nop
/* 1A73C8 80395348 03E00008 */  jr         $ra
/* 1A73CC 8039534C 00000000 */   nop

glabel func_80395350_1A73D0
/* 1A73D0 80395350 1080003B */  beqz       $a0, .L80395440
/* 1A73D4 80395354 00001021 */   addu      $v0, $zero, $zero
/* 1A73D8 80395358 3C028017 */  lui        $v0, %hi(D_8016D084)
/* 1A73DC 8039535C 8C42D084 */  lw         $v0, %lo(D_8016D084)($v0)
/* 1A73E0 80395360 14400007 */  bnez       $v0, .L80395380
/* 1A73E4 80395364 00000000 */   nop
/* 1A73E8 80395368 44801000 */  mtc1       $zero, $f2
/* 1A73EC 8039536C 00000000 */  nop
/* 1A73F0 80395370 44801800 */  mtc1       $zero, $f3
/* 1A73F4 80395374 00000000 */  nop
/* 1A73F8 80395378 080E54E2 */  j          .L80395388
/* 1A73FC 8039537C 00000000 */   nop
.L80395380:
/* 1A7400 80395380 8C420014 */  lw         $v0, 0x14($v0)
/* 1A7404 80395384 D4420060 */  ldc1       $f2, 0x60($v0)
.L80395388:
/* 1A7408 80395388 4620100D */  trunc.w.d  $f0, $f2
/* 1A740C 8039538C 44020000 */  mfc1       $v0, $f0
/* 1A7410 80395390 00000000 */  nop
/* 1A7414 80395394 00021400 */  sll        $v0, $v0, 0x10
/* 1A7418 80395398 00021C03 */  sra        $v1, $v0, 0x10
/* 1A741C 8039539C 2862000A */  slti       $v0, $v1, 0xa
/* 1A7420 803953A0 14400027 */  bnez       $v0, .L80395440
/* 1A7424 803953A4 2402000A */   addiu     $v0, $zero, 0xa
/* 1A7428 803953A8 28620014 */  slti       $v0, $v1, 0x14
/* 1A742C 803953AC 14400024 */  bnez       $v0, .L80395440
/* 1A7430 803953B0 24020014 */   addiu     $v0, $zero, 0x14
/* 1A7434 803953B4 2862001E */  slti       $v0, $v1, 0x1e
/* 1A7438 803953B8 14400021 */  bnez       $v0, .L80395440
/* 1A743C 803953BC 2402001E */   addiu     $v0, $zero, 0x1e
/* 1A7440 803953C0 28620028 */  slti       $v0, $v1, 0x28
/* 1A7444 803953C4 1440001E */  bnez       $v0, .L80395440
/* 1A7448 803953C8 24020028 */   addiu     $v0, $zero, 0x28
/* 1A744C 803953CC 28620032 */  slti       $v0, $v1, 0x32
/* 1A7450 803953D0 1440001B */  bnez       $v0, .L80395440
/* 1A7454 803953D4 24020032 */   addiu     $v0, $zero, 0x32
/* 1A7458 803953D8 2862003C */  slti       $v0, $v1, 0x3c
/* 1A745C 803953DC 14400018 */  bnez       $v0, .L80395440
/* 1A7460 803953E0 2402003C */   addiu     $v0, $zero, 0x3c
/* 1A7464 803953E4 28620046 */  slti       $v0, $v1, 0x46
/* 1A7468 803953E8 14400015 */  bnez       $v0, .L80395440
/* 1A746C 803953EC 24020046 */   addiu     $v0, $zero, 0x46
/* 1A7470 803953F0 28620050 */  slti       $v0, $v1, 0x50
/* 1A7474 803953F4 14400012 */  bnez       $v0, .L80395440
/* 1A7478 803953F8 24020050 */   addiu     $v0, $zero, 0x50
/* 1A747C 803953FC 2862005A */  slti       $v0, $v1, 0x5a
/* 1A7480 80395400 1440000F */  bnez       $v0, .L80395440
/* 1A7484 80395404 2402005A */   addiu     $v0, $zero, 0x5a
/* 1A7488 80395408 28620064 */  slti       $v0, $v1, 0x64
/* 1A748C 8039540C 1440000C */  bnez       $v0, .L80395440
/* 1A7490 80395410 24020064 */   addiu     $v0, $zero, 0x64
/* 1A7494 80395414 286200C8 */  slti       $v0, $v1, 0xc8
/* 1A7498 80395418 14400009 */  bnez       $v0, .L80395440
/* 1A749C 8039541C 240200C8 */   addiu     $v0, $zero, 0xc8
/* 1A74A0 80395420 2862012C */  slti       $v0, $v1, 0x12c
/* 1A74A4 80395424 14400006 */  bnez       $v0, .L80395440
/* 1A74A8 80395428 2402012C */   addiu     $v0, $zero, 0x12c
/* 1A74AC 8039542C 28620190 */  slti       $v0, $v1, 0x190
/* 1A74B0 80395430 38420001 */  xori       $v0, $v0, 1
/* 1A74B4 80395434 00021023 */  negu       $v0, $v0
/* 1A74B8 80395438 304201F4 */  andi       $v0, $v0, 0x1f4
/* 1A74BC 8039543C 34420190 */  ori        $v0, $v0, 0x190
.L80395440:
/* 1A74C0 80395440 03E00008 */  jr         $ra
/* 1A74C4 80395444 00000000 */   nop

glabel func_80395448
/* 1A74C8 80395448 10800003 */  beqz       $a0, .L80395458
/* 1A74CC 8039544C 00000000 */   nop
/* 1A74D0 80395450 8C820014 */  lw         $v0, 0x14($a0)
/* 1A74D4 80395454 A4400094 */  sh         $zero, 0x94($v0)
.L80395458:
/* 1A74D8 80395458 03E00008 */  jr         $ra
/* 1A74DC 8039545C 00000000 */   nop

glabel func_80395460
/* 1A74E0 80395460 10800005 */  beqz       $a0, .L80395478
/* 1A74E4 80395464 00000000 */   nop
/* 1A74E8 80395468 8C830014 */  lw         $v1, 0x14($a0)
/* 1A74EC 8039546C 94620094 */  lhu        $v0, 0x94($v1)
/* 1A74F0 80395470 24420001 */  addiu      $v0, $v0, 1
/* 1A74F4 80395474 A4620094 */  sh         $v0, 0x94($v1)
.L80395478:
/* 1A74F8 80395478 03E00008 */  jr         $ra
/* 1A74FC 8039547C 00000000 */   nop

glabel func_80395480
/* 1A7500 80395480 10800003 */  beqz       $a0, .L80395490
/* 1A7504 80395484 00000000 */   nop
/* 1A7508 80395488 8C820014 */  lw         $v0, 0x14($a0)
/* 1A750C 8039548C A045009D */  sb         $a1, 0x9d($v0)
.L80395490:
/* 1A7510 80395490 03E00008 */  jr         $ra
/* 1A7514 80395494 00000000 */   nop

glabel func_80395498
/* 1A7518 80395498 10800003 */  beqz       $a0, .L803954A8
/* 1A751C 8039549C 00000000 */   nop
/* 1A7520 803954A0 8C820014 */  lw         $v0, 0x14($a0)
/* 1A7524 803954A4 A045009E */  sb         $a1, 0x9e($v0)
.L803954A8:
/* 1A7528 803954A8 03E00008 */  jr         $ra
/* 1A752C 803954AC 00000000 */   nop

glabel func_803954B0
/* 1A7530 803954B0 10800003 */  beqz       $a0, .L803954C0
/* 1A7534 803954B4 00000000 */   nop
/* 1A7538 803954B8 8C820014 */  lw         $v0, 0x14($a0)
/* 1A753C 803954BC A045009B */  sb         $a1, 0x9b($v0)
.L803954C0:
/* 1A7540 803954C0 03E00008 */  jr         $ra
/* 1A7544 803954C4 00000000 */   nop

glabel func_803954C8
/* 1A7548 803954C8 10800008 */  beqz       $a0, .L803954EC
/* 1A754C 803954CC 30A200FF */   andi      $v0, $a1, 0xff
/* 1A7550 803954D0 8C840014 */  lw         $a0, 0x14($a0)
/* 1A7554 803954D4 50400005 */  beql       $v0, $zero, .L803954EC
/* 1A7558 803954D8 A480008E */   sh        $zero, 0x8e($a0)
/* 1A755C 803954DC 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 1A7560 803954E0 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 1A7564 803954E4 00021040 */  sll        $v0, $v0, 1
/* 1A7568 803954E8 A482008E */  sh         $v0, 0x8e($a0)
.L803954EC:
/* 1A756C 803954EC 03E00008 */  jr         $ra
/* 1A7570 803954F0 00000000 */   nop
/* 1A7574 803954F4 00000000 */  nop
/* 1A7578 803954F8 00000000 */  nop
/* 1A757C 803954FC 00000000 */  nop

glabel func_80395500_1A7580
/* 1A7580 80395500 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A7584 80395504 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A7588 80395508 00808821 */  addu       $s1, $a0, $zero
/* 1A758C 8039550C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A7590 80395510 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A7594 80395514 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A7598 80395518 8E300014 */  lw         $s0, 0x14($s1)
/* 1A759C 8039551C 9623001C */  lhu        $v1, 0x1c($s1)
/* 1A75A0 80395520 8E32000C */  lw         $s2, 0xc($s1)
/* 1A75A4 80395524 24020002 */  addiu      $v0, $zero, 2
/* 1A75A8 80395528 10620074 */  beq        $v1, $v0, .L803956FC
/* 1A75AC 8039552C 28620003 */   slti      $v0, $v1, 3
/* 1A75B0 80395530 50400007 */  beql       $v0, $zero, .L80395550
/* 1A75B4 80395534 24020003 */   addiu     $v0, $zero, 3
/* 1A75B8 80395538 1060000B */  beqz       $v1, .L80395568
/* 1A75BC 8039553C 24020001 */   addiu     $v0, $zero, 1
/* 1A75C0 80395540 10620063 */  beq        $v1, $v0, .L803956D0
/* 1A75C4 80395544 00001021 */   addu      $v0, $zero, $zero
/* 1A75C8 80395548 080E5609 */  j          .L80395824
/* 1A75CC 8039554C 00000000 */   nop
.L80395550:
/* 1A75D0 80395550 1062009F */  beq        $v1, $v0, .L803957D0
/* 1A75D4 80395554 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A75D8 80395558 106200A8 */  beq        $v1, $v0, .L803957FC
/* 1A75DC 8039555C 00000000 */   nop
/* 1A75E0 80395560 080E5609 */  j          .L80395824
/* 1A75E4 80395564 00001021 */   addu      $v0, $zero, $zero
.L80395568:
/* 1A75E8 80395568 0C032663 */  jal        func_800C998C
/* 1A75EC 8039556C 24040090 */   addiu     $a0, $zero, 0x90
/* 1A75F0 80395570 00402021 */  addu       $a0, $v0, $zero
/* 1A75F4 80395574 24050090 */  addiu      $a1, $zero, 0x90
/* 1A75F8 80395578 0C030134 */  jal        bzero
/* 1A75FC 8039557C AE240014 */   sw        $a0, 0x14($s1)
/* 1A7600 80395580 8E300014 */  lw         $s0, 0x14($s1)
/* 1A7604 80395584 0C025C53 */  jal        func_8009714C
/* 1A7608 80395588 02402021 */   addu      $a0, $s2, $zero
/* 1A760C 8039558C 00402021 */  addu       $a0, $v0, $zero
/* 1A7610 80395590 84820000 */  lh         $v0, ($a0)
/* 1A7614 80395594 44820000 */  mtc1       $v0, $f0
/* 1A7618 80395598 00000000 */  nop
/* 1A761C 8039559C 46800020 */  cvt.s.w    $f0, $f0
/* 1A7620 803955A0 E6000048 */  swc1       $f0, 0x48($s0)
/* 1A7624 803955A4 84820002 */  lh         $v0, 2($a0)
/* 1A7628 803955A8 44820000 */  mtc1       $v0, $f0
/* 1A762C 803955AC 00000000 */  nop
/* 1A7630 803955B0 46800020 */  cvt.s.w    $f0, $f0
/* 1A7634 803955B4 E600004C */  swc1       $f0, 0x4c($s0)
/* 1A7638 803955B8 90820004 */  lbu        $v0, 4($a0)
/* 1A763C 803955BC A202005C */  sb         $v0, 0x5c($s0)
/* 1A7640 803955C0 94820006 */  lhu        $v0, 6($a0)
/* 1A7644 803955C4 A6020066 */  sh         $v0, 0x66($s0)
/* 1A7648 803955C8 90820005 */  lbu        $v0, 5($a0)
/* 1A764C 803955CC A202007D */  sb         $v0, 0x7d($s0)
/* 1A7650 803955D0 8C82000C */  lw         $v0, 0xc($a0)
/* 1A7654 803955D4 AE02008C */  sw         $v0, 0x8c($s0)
/* 1A7658 803955D8 84830008 */  lh         $v1, 8($a0)
/* 1A765C 803955DC 2402FFFF */  addiu      $v0, $zero, -1
/* 1A7660 803955E0 1462000D */  bne        $v1, $v0, .L80395618
/* 1A7664 803955E4 00000000 */   nop
/* 1A7668 803955E8 86030066 */  lh         $v1, 0x66($s0)
/* 1A766C 803955EC 00031040 */  sll        $v0, $v1, 1
/* 1A7670 803955F0 00431021 */  addu       $v0, $v0, $v1
/* 1A7674 803955F4 000210C0 */  sll        $v0, $v0, 3
/* 1A7678 803955F8 3C01803A */  lui        $at, %hi(D_8039FB34_1B1BB4)
/* 1A767C 803955FC 00220821 */  addu       $at, $at, $v0
/* 1A7680 80395600 8422FB34 */  lh         $v0, %lo(D_8039FB34_1B1BB4)($at)
/* 1A7684 80395604 44820000 */  mtc1       $v0, $f0
/* 1A7688 80395608 00000000 */  nop
/* 1A768C 8039560C 46800020 */  cvt.s.w    $f0, $f0
/* 1A7690 80395610 080E558A */  j          .L80395628
/* 1A7694 80395614 E6000054 */   swc1      $f0, 0x54($s0)
.L80395618:
/* 1A7698 80395618 44830000 */  mtc1       $v1, $f0
/* 1A769C 8039561C 00000000 */  nop
/* 1A76A0 80395620 46800020 */  cvt.s.w    $f0, $f0
/* 1A76A4 80395624 E6000054 */  swc1       $f0, 0x54($s0)
.L80395628:
/* 1A76A8 80395628 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A76AC 8039562C 3C0141C8 */  lui        $at, 0x41c8
/* 1A76B0 80395630 44811000 */  mtc1       $at, $f2
/* 1A76B4 80395634 00000000 */  nop
/* 1A76B8 80395638 46020000 */  add.s      $f0, $f0, $f2
/* 1A76BC 8039563C 3C013F4C */  lui        $at, 0x3f4c
/* 1A76C0 80395640 44811000 */  mtc1       $at, $f2
/* 1A76C4 80395644 00000000 */  nop
/* 1A76C8 80395648 46020082 */  mul.s      $f2, $f0, $f2
/* 1A76CC 8039564C 3C014F00 */  lui        $at, 0x4f00
/* 1A76D0 80395650 44810000 */  mtc1       $at, $f0
/* 1A76D4 80395654 00000000 */  nop
/* 1A76D8 80395658 4602003E */  c.le.s     $f0, $f2
/* 1A76DC 8039565C 00000000 */  nop
/* 1A76E0 80395660 00000000 */  nop
/* 1A76E4 80395664 45030006 */  bc1tl      .L80395680
/* 1A76E8 80395668 46001001 */   sub.s     $f0, $f2, $f0
/* 1A76EC 8039566C 4600100D */  trunc.w.s  $f0, $f2
/* 1A76F0 80395670 44030000 */  mfc1       $v1, $f0
/* 1A76F4 80395674 00000000 */  nop
/* 1A76F8 80395678 080E55A6 */  j          .L80395698
/* 1A76FC 8039567C A2030084 */   sb        $v1, 0x84($s0)
.L80395680:
/* 1A7700 80395680 4600008D */  trunc.w.s  $f2, $f0
/* 1A7704 80395684 44031000 */  mfc1       $v1, $f2
/* 1A7708 80395688 00000000 */  nop
/* 1A770C 8039568C 3C028000 */  lui        $v0, 0x8000
/* 1A7710 80395690 00621825 */  or         $v1, $v1, $v0
/* 1A7714 80395694 A2030084 */  sb         $v1, 0x84($s0)
.L80395698:
/* 1A7718 80395698 8485000A */  lh         $a1, 0xa($a0)
/* 1A771C 8039569C 0C0E5610 */  jal        func_80395840_1A78C0
/* 1A7720 803956A0 02002021 */   addu      $a0, $s0, $zero
/* 1A7724 803956A4 2404001C */  addiu      $a0, $zero, 0x1c
/* 1A7728 803956A8 24050020 */  addiu      $a1, $zero, 0x20
/* 1A772C 803956AC 24020001 */  addiu      $v0, $zero, 1
/* 1A7730 803956B0 A622001C */  sh         $v0, 0x1c($s1)
/* 1A7734 803956B4 92060084 */  lbu        $a2, 0x84($s0)
/* 1A7738 803956B8 24070001 */  addiu      $a3, $zero, 1
/* 1A773C 803956BC 24020064 */  addiu      $v0, $zero, 0x64
/* 1A7740 803956C0 0C026E0C */  jal        func_8009B830
/* 1A7744 803956C4 AFA20010 */   sw        $v0, 0x10($sp)
/* 1A7748 803956C8 080E5609 */  j          .L80395824
/* 1A774C 803956CC 00001021 */   addu      $v0, $zero, $zero
.L803956D0:
/* 1A7750 803956D0 0C025C53 */  jal        func_8009714C
/* 1A7754 803956D4 02402021 */   addu      $a0, $s2, $zero
/* 1A7758 803956D8 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A775C 803956DC 10430045 */  beq        $v0, $v1, .L803957F4
/* 1A7760 803956E0 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A7764 803956E4 0C0E56A3 */  jal        func_80395A8C_1A7B0C
/* 1A7768 803956E8 02002021 */   addu      $a0, $s0, $zero
/* 1A776C 803956EC 1040004C */  beqz       $v0, .L80395820
/* 1A7770 803956F0 24020002 */   addiu     $v0, $zero, 2
/* 1A7774 803956F4 080E5608 */  j          .L80395820
/* 1A7778 803956F8 A622001C */   sh        $v0, 0x1c($s1)
.L803956FC:
/* 1A777C 803956FC C6040054 */  lwc1       $f4, 0x54($s0)
/* 1A7780 80395700 44803000 */  mtc1       $zero, $f6
/* 1A7784 80395704 00000000 */  nop
/* 1A7788 80395708 4604303C */  c.lt.s     $f6, $f4
/* 1A778C 8039570C 00000000 */  nop
/* 1A7790 80395710 45000018 */  bc1f       .L80395774
/* 1A7794 80395714 00000000 */   nop
/* 1A7798 80395718 3C013EAA */  lui        $at, 0x3eaa
/* 1A779C 8039571C 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A77A0 80395720 44811000 */  mtc1       $at, $f2
/* 1A77A4 80395724 00000000 */  nop
/* 1A77A8 80395728 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A77AC 8039572C C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A77B0 80395730 46800020 */  cvt.s.w    $f0, $f0
/* 1A77B4 80395734 46020002 */  mul.s      $f0, $f0, $f2
/* 1A77B8 80395738 46002001 */  sub.s      $f0, $f4, $f0
/* 1A77BC 8039573C 4606003E */  c.le.s     $f0, $f6
/* 1A77C0 80395740 00000000 */  nop
/* 1A77C4 80395744 00000000 */  nop
/* 1A77C8 80395748 4500000A */  bc1f       .L80395774
/* 1A77CC 8039574C E6000054 */   swc1      $f0, 0x54($s0)
/* 1A77D0 80395750 2404001D */  addiu      $a0, $zero, 0x1d
/* 1A77D4 80395754 24050020 */  addiu      $a1, $zero, 0x20
/* 1A77D8 80395758 24020003 */  addiu      $v0, $zero, 3
/* 1A77DC 8039575C A622001C */  sh         $v0, 0x1c($s1)
/* 1A77E0 80395760 92060084 */  lbu        $a2, 0x84($s0)
/* 1A77E4 80395764 24070001 */  addiu      $a3, $zero, 1
/* 1A77E8 80395768 24020064 */  addiu      $v0, $zero, 0x64
/* 1A77EC 8039576C 0C026E0C */  jal        func_8009B830
/* 1A77F0 80395770 AFA20010 */   sw        $v0, 0x10($sp)
.L80395774:
/* 1A77F4 80395774 0C025C53 */  jal        func_8009714C
/* 1A77F8 80395778 02402021 */   addu      $a0, $s2, $zero
/* 1A77FC 8039577C 00401821 */  addu       $v1, $v0, $zero
/* 1A7800 80395780 24020001 */  addiu      $v0, $zero, 1
/* 1A7804 80395784 10620005 */  beq        $v1, $v0, .L8039579C
/* 1A7808 80395788 240203E7 */   addiu     $v0, $zero, 0x3e7
/* 1A780C 8039578C 10620019 */  beq        $v1, $v0, .L803957F4
/* 1A7810 80395790 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A7814 80395794 080E55F0 */  j          .L803957C0
/* 1A7818 80395798 00000000 */   nop
.L8039579C:
/* 1A781C 8039579C 2404001D */  addiu      $a0, $zero, 0x1d
/* 1A7820 803957A0 24050020 */  addiu      $a1, $zero, 0x20
/* 1A7824 803957A4 24020003 */  addiu      $v0, $zero, 3
/* 1A7828 803957A8 A622001C */  sh         $v0, 0x1c($s1)
/* 1A782C 803957AC 92060084 */  lbu        $a2, 0x84($s0)
/* 1A7830 803957B0 24070001 */  addiu      $a3, $zero, 1
/* 1A7834 803957B4 24020064 */  addiu      $v0, $zero, 0x64
/* 1A7838 803957B8 0C026E0C */  jal        func_8009B830
/* 1A783C 803957BC AFA20010 */   sw        $v0, 0x10($sp)
.L803957C0:
/* 1A7840 803957C0 0C0E57D5 */  jal        func_80395F54_1A7FD4
/* 1A7844 803957C4 02002021 */   addu      $a0, $s0, $zero
/* 1A7848 803957C8 080E5609 */  j          .L80395824
/* 1A784C 803957CC 00001021 */   addu      $v0, $zero, $zero
.L803957D0:
/* 1A7850 803957D0 0C025C53 */  jal        func_8009714C
/* 1A7854 803957D4 02402021 */   addu      $a0, $s2, $zero
/* 1A7858 803957D8 240303E7 */  addiu      $v1, $zero, 0x3e7
/* 1A785C 803957DC 10430005 */  beq        $v0, $v1, .L803957F4
/* 1A7860 803957E0 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A7864 803957E4 0C0E573E */  jal        func_80395CF8_1A7D78
/* 1A7868 803957E8 02002021 */   addu      $a0, $s0, $zero
/* 1A786C 803957EC 1040000C */  beqz       $v0, .L80395820
/* 1A7870 803957F0 3402FFFF */   ori       $v0, $zero, 0xffff
.L803957F4:
/* 1A7874 803957F4 080E5608 */  j          .L80395820
/* 1A7878 803957F8 A622001C */   sh        $v0, 0x1c($s1)
.L803957FC:
/* 1A787C 803957FC 0C0E5670 */  jal        func_803959C0_1A7A40
/* 1A7880 80395800 02002021 */   addu      $a0, $s0, $zero
/* 1A7884 80395804 8E02008C */  lw         $v0, 0x8c($s0)
/* 1A7888 80395808 AC400000 */  sw         $zero, ($v0)
/* 1A788C 8039580C 8E240014 */  lw         $a0, 0x14($s1)
/* 1A7890 80395810 0C0326A1 */  jal        func_800C9A84
/* 1A7894 80395814 00000000 */   nop
/* 1A7898 80395818 080E5609 */  j          .L80395824
/* 1A789C 8039581C 24020001 */   addiu     $v0, $zero, 1
.L80395820:
/* 1A78A0 80395820 00001021 */  addu       $v0, $zero, $zero
.L80395824:
/* 1A78A4 80395824 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A78A8 80395828 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A78AC 8039582C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A78B0 80395830 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A78B4 80395834 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A78B8 80395838 03E00008 */  jr         $ra
/* 1A78BC 8039583C 00000000 */   nop

glabel func_80395840_1A78C0
/* 1A78C0 80395840 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A78C4 80395844 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A78C8 80395848 00808021 */  addu       $s0, $a0, $zero
/* 1A78CC 8039584C AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A78D0 80395850 00A08821 */  addu       $s1, $a1, $zero
/* 1A78D4 80395854 2404000F */  addiu      $a0, $zero, 0xf
/* 1A78D8 80395858 24050001 */  addiu      $a1, $zero, 1
/* 1A78DC 8039585C AFBF0020 */  sw         $ra, 0x20($sp)
/* 1A78E0 80395860 0C028CB7 */  jal        func_800A32DC
/* 1A78E4 80395864 00003021 */   addu      $a2, $zero, $zero
/* 1A78E8 80395868 240405A9 */  addiu      $a0, $zero, 0x5a9
/* 1A78EC 8039586C 24050001 */  addiu      $a1, $zero, 1
/* 1A78F0 80395870 00003021 */  addu       $a2, $zero, $zero
/* 1A78F4 80395874 0C028CB7 */  jal        func_800A32DC
/* 1A78F8 80395878 AE020000 */   sw        $v0, ($s0)
/* 1A78FC 8039587C 240405A8 */  addiu      $a0, $zero, 0x5a8
/* 1A7900 80395880 00002821 */  addu       $a1, $zero, $zero
/* 1A7904 80395884 00003021 */  addu       $a2, $zero, $zero
/* 1A7908 80395888 0C028CB7 */  jal        func_800A32DC
/* 1A790C 8039588C AE020030 */   sw        $v0, 0x30($s0)
/* 1A7910 80395890 8203005C */  lb         $v1, 0x5c($s0)
/* 1A7914 80395894 AE020004 */  sw         $v0, 4($s0)
/* 1A7918 80395898 00031840 */  sll        $v1, $v1, 1
/* 1A791C 8039589C 3C04803A */  lui        $a0, %hi(D_8039E780_1B0800)
/* 1A7920 803958A0 00832021 */  addu       $a0, $a0, $v1
/* 1A7924 803958A4 9484E780 */  lhu        $a0, %lo(D_8039E780_1B0800)($a0)
/* 1A7928 803958A8 00002821 */  addu       $a1, $zero, $zero
/* 1A792C 803958AC 0C028CB7 */  jal        func_800A32DC
/* 1A7930 803958B0 00003021 */   addu      $a2, $zero, $zero
/* 1A7934 803958B4 240405AA */  addiu      $a0, $zero, 0x5aa
/* 1A7938 803958B8 00002821 */  addu       $a1, $zero, $zero
/* 1A793C 803958BC 00003021 */  addu       $a2, $zero, $zero
/* 1A7940 803958C0 0C028CB7 */  jal        func_800A32DC
/* 1A7944 803958C4 AE020034 */   sw        $v0, 0x34($s0)
/* 1A7948 803958C8 0C029375 */  jal        func_800A4DD4
/* 1A794C 803958CC AE020038 */   sw        $v0, 0x38($s0)
/* 1A7950 803958D0 0C029375 */  jal        func_800A4DD4
/* 1A7954 803958D4 AE02003C */   sw        $v0, 0x3c($s0)
/* 1A7958 803958D8 8E040000 */  lw         $a0, ($s0)
/* 1A795C 803958DC 2405012F */  addiu      $a1, $zero, 0x12f
/* 1A7960 803958E0 24060155 */  addiu      $a2, $zero, 0x155
/* 1A7964 803958E4 0C028F9A */  jal        func_800A3E68
/* 1A7968 803958E8 AE020040 */   sw        $v0, 0x40($s0)
/* 1A796C 803958EC 24020002 */  addiu      $v0, $zero, 2
/* 1A7970 803958F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A7974 803958F4 8E040000 */  lw         $a0, ($s0)
/* 1A7978 803958F8 240500FF */  addiu      $a1, $zero, 0xff
/* 1A797C 803958FC 240600FF */  addiu      $a2, $zero, 0xff
/* 1A7980 80395900 0C028E41 */  jal        func_800A3904
/* 1A7984 80395904 240700FF */   addiu     $a3, $zero, 0xff
/* 1A7988 80395908 240200CC */  addiu      $v0, $zero, 0xcc
/* 1A798C 8039590C AFA20010 */  sw         $v0, 0x10($sp)
/* 1A7990 80395910 8E040030 */  lw         $a0, 0x30($s0)
/* 1A7994 80395914 240500FF */  addiu      $a1, $zero, 0xff
/* 1A7998 80395918 240600FF */  addiu      $a2, $zero, 0xff
/* 1A799C 8039591C 0C028E41 */  jal        func_800A3904
/* 1A79A0 80395920 240700FF */   addiu     $a3, $zero, 0xff
/* 1A79A4 80395924 240200E0 */  addiu      $v0, $zero, 0xe0
/* 1A79A8 80395928 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A79AC 8039592C 8E040040 */  lw         $a0, 0x40($s0)
/* 1A79B0 80395930 24050010 */  addiu      $a1, $zero, 0x10
/* 1A79B4 80395934 24060010 */  addiu      $a2, $zero, 0x10
/* 1A79B8 80395938 0C02939C */  jal        func_800A4E70
/* 1A79BC 8039593C 24070130 */   addiu     $a3, $zero, 0x130
/* 1A79C0 80395940 02002021 */  addu       $a0, $s0, $zero
/* 1A79C4 80395944 00118C00 */  sll        $s1, $s1, 0x10
/* 1A79C8 80395948 0C0E599A */  jal        func_80396668_1A86E8
/* 1A79CC 8039594C 00112C03 */   sra       $a1, $s1, 0x10
/* 1A79D0 80395950 0C02A03C */  jal        func_800A80F0
/* 1A79D4 80395954 00000000 */   nop
/* 1A79D8 80395958 3C014120 */  lui        $at, 0x4120
/* 1A79DC 8039595C 44810000 */  mtc1       $at, $f0
/* 1A79E0 80395960 00000000 */  nop
/* 1A79E4 80395964 3C01C0C0 */  lui        $at, 0xc0c0
/* 1A79E8 80395968 44811000 */  mtc1       $at, $f2
/* 1A79EC 8039596C 00000000 */  nop
/* 1A79F0 80395970 AE020044 */  sw         $v0, 0x44($s0)
/* 1A79F4 80395974 24020001 */  addiu      $v0, $zero, 1
/* 1A79F8 80395978 A2020051 */  sb         $v0, 0x51($s0)
/* 1A79FC 8039597C A2020052 */  sb         $v0, 0x52($s0)
/* 1A7A00 80395980 240200FF */  addiu      $v0, $zero, 0xff
/* 1A7A04 80395984 A6020086 */  sh         $v0, 0x86($s0)
/* 1A7A08 80395988 A6020088 */  sh         $v0, 0x88($s0)
/* 1A7A0C 8039598C 24020008 */  addiu      $v0, $zero, 8
/* 1A7A10 80395990 A2000050 */  sb         $zero, 0x50($s0)
/* 1A7A14 80395994 A6000064 */  sh         $zero, 0x64($s0)
/* 1A7A18 80395998 A2000085 */  sb         $zero, 0x85($s0)
/* 1A7A1C 8039599C A602008A */  sh         $v0, 0x8a($s0)
/* 1A7A20 803959A0 E6000058 */  swc1       $f0, 0x58($s0)
/* 1A7A24 803959A4 E6020060 */  swc1       $f2, 0x60($s0)
/* 1A7A28 803959A8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1A7A2C 803959AC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A7A30 803959B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A7A34 803959B4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A7A38 803959B8 03E00008 */  jr         $ra
/* 1A7A3C 803959BC 00000000 */   nop

glabel func_803959C0_1A7A40
/* 1A7A40 803959C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A7A44 803959C4 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A7A48 803959C8 00809021 */  addu       $s2, $a0, $zero
/* 1A7A4C 803959CC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A7A50 803959D0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A7A54 803959D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A7A58 803959D8 8E440000 */  lw         $a0, ($s2)
/* 1A7A5C 803959DC 0C028D30 */  jal        func_800A34C0
/* 1A7A60 803959E0 00008021 */   addu      $s0, $zero, $zero
/* 1A7A64 803959E4 8242006C */  lb         $v0, 0x6c($s2)
/* 1A7A68 803959E8 1840000A */  blez       $v0, .L80395A14
/* 1A7A6C 803959EC 00000000 */   nop
/* 1A7A70 803959F0 02408821 */  addu       $s1, $s2, $zero
.L803959F4:
/* 1A7A74 803959F4 8E240008 */  lw         $a0, 8($s1)
/* 1A7A78 803959F8 0C028D30 */  jal        func_800A34C0
/* 1A7A7C 803959FC 26310004 */   addiu     $s1, $s1, 4
/* 1A7A80 80395A00 8242006C */  lb         $v0, 0x6c($s2)
/* 1A7A84 80395A04 26100001 */  addiu      $s0, $s0, 1
/* 1A7A88 80395A08 0202102A */  slt        $v0, $s0, $v0
/* 1A7A8C 80395A0C 1440FFF9 */  bnez       $v0, .L803959F4
/* 1A7A90 80395A10 00000000 */   nop
.L80395A14:
/* 1A7A94 80395A14 8E440030 */  lw         $a0, 0x30($s2)
/* 1A7A98 80395A18 0C028D30 */  jal        func_800A34C0
/* 1A7A9C 80395A1C 00000000 */   nop
/* 1A7AA0 80395A20 8E440004 */  lw         $a0, 4($s2)
/* 1A7AA4 80395A24 0C028D30 */  jal        func_800A34C0
/* 1A7AA8 80395A28 00000000 */   nop
/* 1A7AAC 80395A2C 8E440034 */  lw         $a0, 0x34($s2)
/* 1A7AB0 80395A30 0C028D30 */  jal        func_800A34C0
/* 1A7AB4 80395A34 00000000 */   nop
/* 1A7AB8 80395A38 8E440038 */  lw         $a0, 0x38($s2)
/* 1A7ABC 80395A3C 0C028D30 */  jal        func_800A34C0
/* 1A7AC0 80395A40 00000000 */   nop
/* 1A7AC4 80395A44 8E44003C */  lw         $a0, 0x3c($s2)
/* 1A7AC8 80395A48 0C029393 */  jal        func_800A4E4C
/* 1A7ACC 80395A4C 00000000 */   nop
/* 1A7AD0 80395A50 8E440040 */  lw         $a0, 0x40($s2)
/* 1A7AD4 80395A54 0C029393 */  jal        func_800A4E4C
/* 1A7AD8 80395A58 00000000 */   nop
/* 1A7ADC 80395A5C 8E440044 */  lw         $a0, 0x44($s2)
/* 1A7AE0 80395A60 0C02A070 */  jal        func_800A81C0
/* 1A7AE4 80395A64 00000000 */   nop
/* 1A7AE8 80395A68 0C026E4E */  jal        func_8009B938
/* 1A7AEC 80395A6C 26440080 */   addiu     $a0, $s2, 0x80
/* 1A7AF0 80395A70 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A7AF4 80395A74 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A7AF8 80395A78 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A7AFC 80395A7C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A7B00 80395A80 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A7B04 80395A84 03E00008 */  jr         $ra
/* 1A7B08 80395A88 00000000 */   nop

glabel func_80395A8C_1A7B0C
/* 1A7B0C 80395A8C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A7B10 80395A90 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A7B14 80395A94 00809021 */  addu       $s2, $a0, $zero
/* 1A7B18 80395A98 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A7B1C 80395A9C AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A7B20 80395AA0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A7B24 80395AA4 C6440048 */  lwc1       $f4, 0x48($s2)
/* 1A7B28 80395AA8 8E440000 */  lw         $a0, ($s2)
/* 1A7B2C 80395AAC 82430051 */  lb         $v1, 0x51($s2)
/* 1A7B30 80395AB0 4600200D */  trunc.w.s  $f0, $f4
/* 1A7B34 80395AB4 44050000 */  mfc1       $a1, $f0
/* 1A7B38 80395AB8 00000000 */  nop
/* 1A7B3C 80395ABC 24A5FFFE */  addiu      $a1, $a1, -2
/* 1A7B40 80395AC0 00052C80 */  sll        $a1, $a1, 0x12
/* 1A7B44 80395AC4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A7B48 80395AC8 24020032 */  addiu      $v0, $zero, 0x32
/* 1A7B4C 80395ACC 00431023 */  subu       $v0, $v0, $v1
/* 1A7B50 80395AD0 00021FC2 */  srl        $v1, $v0, 0x1f
/* 1A7B54 80395AD4 00431021 */  addu       $v0, $v0, $v1
/* 1A7B58 80395AD8 00021043 */  sra        $v0, $v0, 1
/* 1A7B5C 80395ADC 82430052 */  lb         $v1, 0x52($s2)
/* 1A7B60 80395AE0 44821000 */  mtc1       $v0, $f2
/* 1A7B64 80395AE4 00000000 */  nop
/* 1A7B68 80395AE8 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7B6C 80395AEC 2402002E */  addiu      $v0, $zero, 0x2e
/* 1A7B70 80395AF0 C640004C */  lwc1       $f0, 0x4c($s2)
/* 1A7B74 80395AF4 46022100 */  add.s      $f4, $f4, $f2
/* 1A7B78 80395AF8 00431023 */  subu       $v0, $v0, $v1
/* 1A7B7C 80395AFC 00021FC2 */  srl        $v1, $v0, 0x1f
/* 1A7B80 80395B00 00431021 */  addu       $v0, $v0, $v1
/* 1A7B84 80395B04 00021043 */  sra        $v0, $v0, 1
/* 1A7B88 80395B08 44821000 */  mtc1       $v0, $f2
/* 1A7B8C 80395B0C 00000000 */  nop
/* 1A7B90 80395B10 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7B94 80395B14 4600018D */  trunc.w.s  $f6, $f0
/* 1A7B98 80395B18 44063000 */  mfc1       $a2, $f6
/* 1A7B9C 80395B1C 00000000 */  nop
/* 1A7BA0 80395B20 24C6FFFF */  addiu      $a2, $a2, -1
/* 1A7BA4 80395B24 46020000 */  add.s      $f0, $f0, $f2
/* 1A7BA8 80395B28 00063480 */  sll        $a2, $a2, 0x12
/* 1A7BAC 80395B2C 4600208D */  trunc.w.s  $f2, $f4
/* 1A7BB0 80395B30 44111000 */  mfc1       $s1, $f2
/* 1A7BB4 80395B34 00000000 */  nop
/* 1A7BB8 80395B38 4600008D */  trunc.w.s  $f2, $f0
/* 1A7BBC 80395B3C 44101000 */  mfc1       $s0, $f2
/* 1A7BC0 80395B40 00000000 */  nop
/* 1A7BC4 80395B44 0C028D89 */  jal        func_800A3624
/* 1A7BC8 80395B48 00063403 */   sra       $a2, $a2, 0x10
/* 1A7BCC 80395B4C 00112C00 */  sll        $a1, $s1, 0x10
/* 1A7BD0 80395B50 00052C03 */  sra        $a1, $a1, 0x10
/* 1A7BD4 80395B54 00103400 */  sll        $a2, $s0, 0x10
/* 1A7BD8 80395B58 92430051 */  lbu        $v1, 0x51($s2)
/* 1A7BDC 80395B5C 00063403 */  sra        $a2, $a2, 0x10
/* 1A7BE0 80395B60 92420052 */  lbu        $v0, 0x52($s2)
/* 1A7BE4 80395B64 00031E00 */  sll        $v1, $v1, 0x18
/* 1A7BE8 80395B68 00031E03 */  sra        $v1, $v1, 0x18
/* 1A7BEC 80395B6C 00021600 */  sll        $v0, $v0, 0x18
/* 1A7BF0 80395B70 00021603 */  sra        $v0, $v0, 0x18
/* 1A7BF4 80395B74 02028021 */  addu       $s0, $s0, $v0
/* 1A7BF8 80395B78 00108400 */  sll        $s0, $s0, 0x10
/* 1A7BFC 80395B7C 00108403 */  sra        $s0, $s0, 0x10
/* 1A7C00 80395B80 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A7C04 80395B84 8E440044 */  lw         $a0, 0x44($s2)
/* 1A7C08 80395B88 02238821 */  addu       $s1, $s1, $v1
/* 1A7C0C 80395B8C 00118C00 */  sll        $s1, $s1, 0x10
/* 1A7C10 80395B90 0C02A095 */  jal        func_800A8254
/* 1A7C14 80395B94 00113C03 */   sra       $a3, $s1, 0x10
/* 1A7C18 80395B98 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A7C1C 80395B9C 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A7C20 80395BA0 24100001 */  addiu      $s0, $zero, 1
/* 1A7C24 80395BA4 14500007 */  bne        $v0, $s0, .L80395BC4
/* 1A7C28 80395BA8 00000000 */   nop
/* 1A7C2C 80395BAC 8E440000 */  lw         $a0, ($s2)
/* 1A7C30 80395BB0 0C028A40 */  jal        func_800A2900
/* 1A7C34 80395BB4 00000000 */   nop
/* 1A7C38 80395BB8 8E440044 */  lw         $a0, 0x44($s2)
/* 1A7C3C 80395BBC 0C02A193 */  jal        func_800A864C
/* 1A7C40 80395BC0 00000000 */   nop
.L80395BC4:
/* 1A7C44 80395BC4 92430050 */  lbu        $v1, 0x50($s2)
/* 1A7C48 80395BC8 10700025 */  beq        $v1, $s0, .L80395C60
/* 1A7C4C 80395BCC 28620002 */   slti      $v0, $v1, 2
/* 1A7C50 80395BD0 50400005 */  beql       $v0, $zero, .L80395BE8
/* 1A7C54 80395BD4 24020002 */   addiu     $v0, $zero, 2
/* 1A7C58 80395BD8 10600007 */  beqz       $v1, .L80395BF8
/* 1A7C5C 80395BDC 00001021 */   addu      $v0, $zero, $zero
/* 1A7C60 80395BE0 080E5737 */  j          .L80395CDC
/* 1A7C64 80395BE4 00000000 */   nop
.L80395BE8:
/* 1A7C68 80395BE8 50620039 */  beql       $v1, $v0, .L80395CD0
/* 1A7C6C 80395BEC A2400050 */   sb        $zero, 0x50($s2)
/* 1A7C70 80395BF0 080E5737 */  j          .L80395CDC
/* 1A7C74 80395BF4 00001021 */   addu      $v0, $zero, $zero
.L80395BF8:
/* 1A7C78 80395BF8 3C0140D5 */  lui        $at, 0x40d5
/* 1A7C7C 80395BFC 34215555 */  ori        $at, $at, 0x5555
/* 1A7C80 80395C00 44810000 */  mtc1       $at, $f0
/* 1A7C84 80395C04 00000000 */  nop
/* 1A7C88 80395C08 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A7C8C 80395C0C C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A7C90 80395C10 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7C94 80395C14 46001082 */  mul.s      $f2, $f2, $f0
/* 1A7C98 80395C18 82420051 */  lb         $v0, 0x51($s2)
/* 1A7C9C 80395C1C 44820000 */  mtc1       $v0, $f0
/* 1A7CA0 80395C20 00000000 */  nop
/* 1A7CA4 80395C24 46800020 */  cvt.s.w    $f0, $f0
/* 1A7CA8 80395C28 46020000 */  add.s      $f0, $f0, $f2
/* 1A7CAC 80395C2C 4600008D */  trunc.w.s  $f2, $f0
/* 1A7CB0 80395C30 44021000 */  mfc1       $v0, $f2
/* 1A7CB4 80395C34 00000000 */  nop
/* 1A7CB8 80395C38 A2420051 */  sb         $v0, 0x51($s2)
/* 1A7CBC 80395C3C 00021600 */  sll        $v0, $v0, 0x18
/* 1A7CC0 80395C40 00021603 */  sra        $v0, $v0, 0x18
/* 1A7CC4 80395C44 28420032 */  slti       $v0, $v0, 0x32
/* 1A7CC8 80395C48 14400024 */  bnez       $v0, .L80395CDC
/* 1A7CCC 80395C4C 00001021 */   addu      $v0, $zero, $zero
/* 1A7CD0 80395C50 92420050 */  lbu        $v0, 0x50($s2)
/* 1A7CD4 80395C54 24030032 */  addiu      $v1, $zero, 0x32
/* 1A7CD8 80395C58 080E5731 */  j          .L80395CC4
/* 1A7CDC 80395C5C A2430051 */   sb        $v1, 0x51($s2)
.L80395C60:
/* 1A7CE0 80395C60 3C014055 */  lui        $at, 0x4055
/* 1A7CE4 80395C64 34215555 */  ori        $at, $at, 0x5555
/* 1A7CE8 80395C68 44810000 */  mtc1       $at, $f0
/* 1A7CEC 80395C6C 00000000 */  nop
/* 1A7CF0 80395C70 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A7CF4 80395C74 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A7CF8 80395C78 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7CFC 80395C7C 46001082 */  mul.s      $f2, $f2, $f0
/* 1A7D00 80395C80 82420052 */  lb         $v0, 0x52($s2)
/* 1A7D04 80395C84 44820000 */  mtc1       $v0, $f0
/* 1A7D08 80395C88 00000000 */  nop
/* 1A7D0C 80395C8C 46800020 */  cvt.s.w    $f0, $f0
/* 1A7D10 80395C90 46020000 */  add.s      $f0, $f0, $f2
/* 1A7D14 80395C94 4600008D */  trunc.w.s  $f2, $f0
/* 1A7D18 80395C98 44021000 */  mfc1       $v0, $f2
/* 1A7D1C 80395C9C 00000000 */  nop
/* 1A7D20 80395CA0 A2420052 */  sb         $v0, 0x52($s2)
/* 1A7D24 80395CA4 00021600 */  sll        $v0, $v0, 0x18
/* 1A7D28 80395CA8 00021603 */  sra        $v0, $v0, 0x18
/* 1A7D2C 80395CAC 2842002E */  slti       $v0, $v0, 0x2e
/* 1A7D30 80395CB0 1440000A */  bnez       $v0, .L80395CDC
/* 1A7D34 80395CB4 00001021 */   addu      $v0, $zero, $zero
/* 1A7D38 80395CB8 92420050 */  lbu        $v0, 0x50($s2)
/* 1A7D3C 80395CBC 2403002E */  addiu      $v1, $zero, 0x2e
/* 1A7D40 80395CC0 A2430052 */  sb         $v1, 0x52($s2)
.L80395CC4:
/* 1A7D44 80395CC4 24420001 */  addiu      $v0, $v0, 1
/* 1A7D48 80395CC8 080E5736 */  j          .L80395CD8
/* 1A7D4C 80395CCC A2420050 */   sb        $v0, 0x50($s2)
.L80395CD0:
/* 1A7D50 80395CD0 080E5737 */  j          .L80395CDC
/* 1A7D54 80395CD4 24020001 */   addiu     $v0, $zero, 1
.L80395CD8:
/* 1A7D58 80395CD8 00001021 */  addu       $v0, $zero, $zero
.L80395CDC:
/* 1A7D5C 80395CDC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A7D60 80395CE0 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A7D64 80395CE4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A7D68 80395CE8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A7D6C 80395CEC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A7D70 80395CF0 03E00008 */  jr         $ra
/* 1A7D74 80395CF4 00000000 */   nop

glabel func_80395CF8_1A7D78
/* 1A7D78 80395CF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A7D7C 80395CFC AFB20020 */  sw         $s2, 0x20($sp)
/* 1A7D80 80395D00 00809021 */  addu       $s2, $a0, $zero
/* 1A7D84 80395D04 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A7D88 80395D08 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1A7D8C 80395D0C AFB00018 */  sw         $s0, 0x18($sp)
/* 1A7D90 80395D10 C6440048 */  lwc1       $f4, 0x48($s2)
/* 1A7D94 80395D14 8E440000 */  lw         $a0, ($s2)
/* 1A7D98 80395D18 82430051 */  lb         $v1, 0x51($s2)
/* 1A7D9C 80395D1C 4600200D */  trunc.w.s  $f0, $f4
/* 1A7DA0 80395D20 44050000 */  mfc1       $a1, $f0
/* 1A7DA4 80395D24 00000000 */  nop
/* 1A7DA8 80395D28 24A5FFFE */  addiu      $a1, $a1, -2
/* 1A7DAC 80395D2C 00052C80 */  sll        $a1, $a1, 0x12
/* 1A7DB0 80395D30 00052C03 */  sra        $a1, $a1, 0x10
/* 1A7DB4 80395D34 24020032 */  addiu      $v0, $zero, 0x32
/* 1A7DB8 80395D38 00431023 */  subu       $v0, $v0, $v1
/* 1A7DBC 80395D3C 00021FC2 */  srl        $v1, $v0, 0x1f
/* 1A7DC0 80395D40 00431021 */  addu       $v0, $v0, $v1
/* 1A7DC4 80395D44 00021043 */  sra        $v0, $v0, 1
/* 1A7DC8 80395D48 82430052 */  lb         $v1, 0x52($s2)
/* 1A7DCC 80395D4C 44821000 */  mtc1       $v0, $f2
/* 1A7DD0 80395D50 00000000 */  nop
/* 1A7DD4 80395D54 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7DD8 80395D58 2402002E */  addiu      $v0, $zero, 0x2e
/* 1A7DDC 80395D5C C640004C */  lwc1       $f0, 0x4c($s2)
/* 1A7DE0 80395D60 46022100 */  add.s      $f4, $f4, $f2
/* 1A7DE4 80395D64 00431023 */  subu       $v0, $v0, $v1
/* 1A7DE8 80395D68 00021FC2 */  srl        $v1, $v0, 0x1f
/* 1A7DEC 80395D6C 00431021 */  addu       $v0, $v0, $v1
/* 1A7DF0 80395D70 00021043 */  sra        $v0, $v0, 1
/* 1A7DF4 80395D74 44821000 */  mtc1       $v0, $f2
/* 1A7DF8 80395D78 00000000 */  nop
/* 1A7DFC 80395D7C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7E00 80395D80 4600018D */  trunc.w.s  $f6, $f0
/* 1A7E04 80395D84 44063000 */  mfc1       $a2, $f6
/* 1A7E08 80395D88 00000000 */  nop
/* 1A7E0C 80395D8C 24C6FFFF */  addiu      $a2, $a2, -1
/* 1A7E10 80395D90 46020000 */  add.s      $f0, $f0, $f2
/* 1A7E14 80395D94 00063480 */  sll        $a2, $a2, 0x12
/* 1A7E18 80395D98 4600208D */  trunc.w.s  $f2, $f4
/* 1A7E1C 80395D9C 44111000 */  mfc1       $s1, $f2
/* 1A7E20 80395DA0 00000000 */  nop
/* 1A7E24 80395DA4 4600008D */  trunc.w.s  $f2, $f0
/* 1A7E28 80395DA8 44101000 */  mfc1       $s0, $f2
/* 1A7E2C 80395DAC 00000000 */  nop
/* 1A7E30 80395DB0 0C028D89 */  jal        func_800A3624
/* 1A7E34 80395DB4 00063403 */   sra       $a2, $a2, 0x10
/* 1A7E38 80395DB8 00112C00 */  sll        $a1, $s1, 0x10
/* 1A7E3C 80395DBC 00052C03 */  sra        $a1, $a1, 0x10
/* 1A7E40 80395DC0 00103400 */  sll        $a2, $s0, 0x10
/* 1A7E44 80395DC4 92430051 */  lbu        $v1, 0x51($s2)
/* 1A7E48 80395DC8 00063403 */  sra        $a2, $a2, 0x10
/* 1A7E4C 80395DCC 92420052 */  lbu        $v0, 0x52($s2)
/* 1A7E50 80395DD0 00031E00 */  sll        $v1, $v1, 0x18
/* 1A7E54 80395DD4 00031E03 */  sra        $v1, $v1, 0x18
/* 1A7E58 80395DD8 00021600 */  sll        $v0, $v0, 0x18
/* 1A7E5C 80395DDC 00021603 */  sra        $v0, $v0, 0x18
/* 1A7E60 80395DE0 02028021 */  addu       $s0, $s0, $v0
/* 1A7E64 80395DE4 00108400 */  sll        $s0, $s0, 0x10
/* 1A7E68 80395DE8 00108403 */  sra        $s0, $s0, 0x10
/* 1A7E6C 80395DEC AFB00010 */  sw         $s0, 0x10($sp)
/* 1A7E70 80395DF0 8E440044 */  lw         $a0, 0x44($s2)
/* 1A7E74 80395DF4 02238821 */  addu       $s1, $s1, $v1
/* 1A7E78 80395DF8 00118C00 */  sll        $s1, $s1, 0x10
/* 1A7E7C 80395DFC 0C02A095 */  jal        func_800A8254
/* 1A7E80 80395E00 00113C03 */   sra       $a3, $s1, 0x10
/* 1A7E84 80395E04 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A7E88 80395E08 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A7E8C 80395E0C 24100001 */  addiu      $s0, $zero, 1
/* 1A7E90 80395E10 14500007 */  bne        $v0, $s0, .L80395E30
/* 1A7E94 80395E14 00000000 */   nop
/* 1A7E98 80395E18 8E440000 */  lw         $a0, ($s2)
/* 1A7E9C 80395E1C 0C028A40 */  jal        func_800A2900
/* 1A7EA0 80395E20 00000000 */   nop
/* 1A7EA4 80395E24 8E440044 */  lw         $a0, 0x44($s2)
/* 1A7EA8 80395E28 0C02A193 */  jal        func_800A864C
/* 1A7EAC 80395E2C 00000000 */   nop
.L80395E30:
/* 1A7EB0 80395E30 92430050 */  lbu        $v1, 0x50($s2)
/* 1A7EB4 80395E34 10700023 */  beq        $v1, $s0, .L80395EC4
/* 1A7EB8 80395E38 28620002 */   slti      $v0, $v1, 2
/* 1A7EBC 80395E3C 50400005 */  beql       $v0, $zero, .L80395E54
/* 1A7EC0 80395E40 24020002 */   addiu     $v0, $zero, 2
/* 1A7EC4 80395E44 10600007 */  beqz       $v1, .L80395E64
/* 1A7EC8 80395E48 00001021 */   addu      $v0, $zero, $zero
/* 1A7ECC 80395E4C 080E57CE */  j          .L80395F38
/* 1A7ED0 80395E50 00000000 */   nop
.L80395E54:
/* 1A7ED4 80395E54 50620035 */  beql       $v1, $v0, .L80395F2C
/* 1A7ED8 80395E58 A2400050 */   sb        $zero, 0x50($s2)
/* 1A7EDC 80395E5C 080E57CE */  j          .L80395F38
/* 1A7EE0 80395E60 00001021 */   addu      $v0, $zero, $zero
.L80395E64:
/* 1A7EE4 80395E64 3C014055 */  lui        $at, 0x4055
/* 1A7EE8 80395E68 34215555 */  ori        $at, $at, 0x5555
/* 1A7EEC 80395E6C 44810000 */  mtc1       $at, $f0
/* 1A7EF0 80395E70 00000000 */  nop
/* 1A7EF4 80395E74 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A7EF8 80395E78 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A7EFC 80395E7C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7F00 80395E80 46001082 */  mul.s      $f2, $f2, $f0
/* 1A7F04 80395E84 82420052 */  lb         $v0, 0x52($s2)
/* 1A7F08 80395E88 44820000 */  mtc1       $v0, $f0
/* 1A7F0C 80395E8C 00000000 */  nop
/* 1A7F10 80395E90 46800020 */  cvt.s.w    $f0, $f0
/* 1A7F14 80395E94 46020001 */  sub.s      $f0, $f0, $f2
/* 1A7F18 80395E98 4600008D */  trunc.w.s  $f2, $f0
/* 1A7F1C 80395E9C 44021000 */  mfc1       $v0, $f2
/* 1A7F20 80395EA0 00000000 */  nop
/* 1A7F24 80395EA4 A2420052 */  sb         $v0, 0x52($s2)
/* 1A7F28 80395EA8 00021600 */  sll        $v0, $v0, 0x18
/* 1A7F2C 80395EAC 1C400022 */  bgtz       $v0, .L80395F38
/* 1A7F30 80395EB0 00001021 */   addu      $v0, $zero, $zero
/* 1A7F34 80395EB4 92420050 */  lbu        $v0, 0x50($s2)
/* 1A7F38 80395EB8 24030001 */  addiu      $v1, $zero, 1
/* 1A7F3C 80395EBC 080E57C8 */  j          .L80395F20
/* 1A7F40 80395EC0 A2430052 */   sb        $v1, 0x52($s2)
.L80395EC4:
/* 1A7F44 80395EC4 3C0140D5 */  lui        $at, 0x40d5
/* 1A7F48 80395EC8 34215555 */  ori        $at, $at, 0x5555
/* 1A7F4C 80395ECC 44810000 */  mtc1       $at, $f0
/* 1A7F50 80395ED0 00000000 */  nop
/* 1A7F54 80395ED4 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A7F58 80395ED8 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A7F5C 80395EDC 468010A0 */  cvt.s.w    $f2, $f2
/* 1A7F60 80395EE0 46001082 */  mul.s      $f2, $f2, $f0
/* 1A7F64 80395EE4 82420051 */  lb         $v0, 0x51($s2)
/* 1A7F68 80395EE8 44820000 */  mtc1       $v0, $f0
/* 1A7F6C 80395EEC 00000000 */  nop
/* 1A7F70 80395EF0 46800020 */  cvt.s.w    $f0, $f0
/* 1A7F74 80395EF4 46020001 */  sub.s      $f0, $f0, $f2
/* 1A7F78 80395EF8 4600008D */  trunc.w.s  $f2, $f0
/* 1A7F7C 80395EFC 44021000 */  mfc1       $v0, $f2
/* 1A7F80 80395F00 00000000 */  nop
/* 1A7F84 80395F04 A2420051 */  sb         $v0, 0x51($s2)
/* 1A7F88 80395F08 00021600 */  sll        $v0, $v0, 0x18
/* 1A7F8C 80395F0C 1C40000A */  bgtz       $v0, .L80395F38
/* 1A7F90 80395F10 00001021 */   addu      $v0, $zero, $zero
/* 1A7F94 80395F14 92420050 */  lbu        $v0, 0x50($s2)
/* 1A7F98 80395F18 24030001 */  addiu      $v1, $zero, 1
/* 1A7F9C 80395F1C A2430051 */  sb         $v1, 0x51($s2)
.L80395F20:
/* 1A7FA0 80395F20 24420001 */  addiu      $v0, $v0, 1
/* 1A7FA4 80395F24 080E57CD */  j          .L80395F34
/* 1A7FA8 80395F28 A2420050 */   sb        $v0, 0x50($s2)
.L80395F2C:
/* 1A7FAC 80395F2C 080E57CE */  j          .L80395F38
/* 1A7FB0 80395F30 24020001 */   addiu     $v0, $zero, 1
.L80395F34:
/* 1A7FB4 80395F34 00001021 */  addu       $v0, $zero, $zero
.L80395F38:
/* 1A7FB8 80395F38 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A7FBC 80395F3C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A7FC0 80395F40 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1A7FC4 80395F44 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A7FC8 80395F48 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A7FCC 80395F4C 03E00008 */  jr         $ra
/* 1A7FD0 80395F50 00000000 */   nop

glabel func_80395F54_1A7FD4
/* 1A7FD4 80395F54 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1A7FD8 80395F58 AFB00028 */  sw         $s0, 0x28($sp)
/* 1A7FDC 80395F5C 00808021 */  addu       $s0, $a0, $zero
/* 1A7FE0 80395F60 AFBF0038 */  sw         $ra, 0x38($sp)
/* 1A7FE4 80395F64 AFB30034 */  sw         $s3, 0x34($sp)
/* 1A7FE8 80395F68 AFB20030 */  sw         $s2, 0x30($sp)
/* 1A7FEC 80395F6C AFB1002C */  sw         $s1, 0x2c($sp)
/* 1A7FF0 80395F70 C6040060 */  lwc1       $f4, 0x60($s0)
/* 1A7FF4 80395F74 3C014218 */  lui        $at, 0x4218
/* 1A7FF8 80395F78 44810000 */  mtc1       $at, $f0
/* 1A7FFC 80395F7C 00000000 */  nop
/* 1A8000 80395F80 4600203C */  c.lt.s     $f4, $f0
/* 1A8004 80395F84 00000000 */  nop
/* 1A8008 80395F88 45000056 */  bc1f       .L803960E4
/* 1A800C 80395F8C 00000000 */   nop
/* 1A8010 80395F90 3C013F2A */  lui        $at, 0x3f2a
/* 1A8014 80395F94 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A8018 80395F98 44811000 */  mtc1       $at, $f2
/* 1A801C 80395F9C 00000000 */  nop
/* 1A8020 80395FA0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A8024 80395FA4 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A8028 80395FA8 46800020 */  cvt.s.w    $f0, $f0
/* 1A802C 80395FAC 46020002 */  mul.s      $f0, $f0, $f2
/* 1A8030 80395FB0 46002000 */  add.s      $f0, $f4, $f0
/* 1A8034 80395FB4 4600008D */  trunc.w.s  $f2, $f0
/* 1A8038 80395FB8 44021000 */  mfc1       $v0, $f2
/* 1A803C 80395FBC 00000000 */  nop
/* 1A8040 80395FC0 A6020064 */  sh         $v0, 0x64($s0)
/* 1A8044 80395FC4 00021400 */  sll        $v0, $v0, 0x10
/* 1A8048 80395FC8 00021C03 */  sra        $v1, $v0, 0x10
/* 1A804C 80395FCC 28620024 */  slti       $v0, $v1, 0x24
/* 1A8050 80395FD0 14400004 */  bnez       $v0, .L80395FE4
/* 1A8054 80395FD4 E6000060 */   swc1      $f0, 0x60($s0)
/* 1A8058 80395FD8 24020023 */  addiu      $v0, $zero, 0x23
/* 1A805C 80395FDC 080E57FB */  j          .L80395FEC
/* 1A8060 80395FE0 A6020064 */   sh        $v0, 0x64($s0)
.L80395FE4:
/* 1A8064 80395FE4 04620001 */  bltzl      $v1, .L80395FEC
/* 1A8068 80395FE8 A6000064 */   sh        $zero, 0x64($s0)
.L80395FEC:
/* 1A806C 80395FEC 96020064 */  lhu        $v0, 0x64($s0)
/* 1A8070 80395FF0 24440004 */  addiu      $a0, $v0, 4
/* 1A8074 80395FF4 00041400 */  sll        $v0, $a0, 0x10
/* 1A8078 80395FF8 00021C03 */  sra        $v1, $v0, 0x10
/* 1A807C 80395FFC 28620023 */  slti       $v0, $v1, 0x23
/* 1A8080 80396000 14400003 */  bnez       $v0, .L80396010
/* 1A8084 80396004 00031027 */   nor       $v0, $zero, $v1
/* 1A8088 80396008 080E5806 */  j          .L80396018
/* 1A808C 8039600C 24030022 */   addiu     $v1, $zero, 0x22
.L80396010:
/* 1A8090 80396010 000217C3 */  sra        $v0, $v0, 0x1f
/* 1A8094 80396014 00821824 */  and        $v1, $a0, $v0
.L80396018:
/* 1A8098 80396018 C6040048 */  lwc1       $f4, 0x48($s0)
/* 1A809C 8039601C 3C014100 */  lui        $at, 0x4100
/* 1A80A0 80396020 44810000 */  mtc1       $at, $f0
/* 1A80A4 80396024 00000000 */  nop
/* 1A80A8 80396028 C602004C */  lwc1       $f2, 0x4c($s0)
/* 1A80AC 8039602C 46002100 */  add.s      $f4, $f4, $f0
/* 1A80B0 80396030 3C01421C */  lui        $at, 0x421c
/* 1A80B4 80396034 44810000 */  mtc1       $at, $f0
/* 1A80B8 80396038 00000000 */  nop
/* 1A80BC 8039603C 46001080 */  add.s      $f2, $f2, $f0
/* 1A80C0 80396040 4600200D */  trunc.w.s  $f0, $f4
/* 1A80C4 80396044 44050000 */  mfc1       $a1, $f0
/* 1A80C8 80396048 00000000 */  nop
/* 1A80CC 8039604C 00052C00 */  sll        $a1, $a1, 0x10
/* 1A80D0 80396050 00052C03 */  sra        $a1, $a1, 0x10
/* 1A80D4 80396054 4600100D */  trunc.w.s  $f0, $f2
/* 1A80D8 80396058 44060000 */  mfc1       $a2, $f0
/* 1A80DC 8039605C 00000000 */  nop
/* 1A80E0 80396060 3C0140C0 */  lui        $at, 0x40c0
/* 1A80E4 80396064 44810000 */  mtc1       $at, $f0
/* 1A80E8 80396068 00000000 */  nop
/* 1A80EC 8039606C 00063400 */  sll        $a2, $a2, 0x10
/* 1A80F0 80396070 00063403 */  sra        $a2, $a2, 0x10
/* 1A80F4 80396074 46001080 */  add.s      $f2, $f2, $f0
/* 1A80F8 80396078 00031400 */  sll        $v0, $v1, 0x10
/* 1A80FC 8039607C 00021403 */  sra        $v0, $v0, 0x10
/* 1A8100 80396080 44820000 */  mtc1       $v0, $f0
/* 1A8104 80396084 00000000 */  nop
/* 1A8108 80396088 46800020 */  cvt.s.w    $f0, $f0
/* 1A810C 8039608C 46002100 */  add.s      $f4, $f4, $f0
/* 1A8110 80396090 4600118D */  trunc.w.s  $f6, $f2
/* 1A8114 80396094 44023000 */  mfc1       $v0, $f6
/* 1A8118 80396098 00000000 */  nop
/* 1A811C 8039609C 00021400 */  sll        $v0, $v0, 0x10
/* 1A8120 803960A0 00021403 */  sra        $v0, $v0, 0x10
/* 1A8124 803960A4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A8128 803960A8 8E04003C */  lw         $a0, 0x3c($s0)
/* 1A812C 803960AC 4600200D */  trunc.w.s  $f0, $f4
/* 1A8130 803960B0 44070000 */  mfc1       $a3, $f0
/* 1A8134 803960B4 00000000 */  nop
/* 1A8138 803960B8 00073C00 */  sll        $a3, $a3, 0x10
/* 1A813C 803960BC 0C02939C */  jal        func_800A4E70
/* 1A8140 803960C0 00073C03 */   sra       $a3, $a3, 0x10
/* 1A8144 803960C4 C6000060 */  lwc1       $f0, 0x60($s0)
/* 1A8148 803960C8 44801000 */  mtc1       $zero, $f2
/* 1A814C 803960CC 00000000 */  nop
/* 1A8150 803960D0 4600103C */  c.lt.s     $f2, $f0
/* 1A8154 803960D4 00000000 */  nop
/* 1A8158 803960D8 00000000 */  nop
/* 1A815C 803960DC 45030001 */  bc1tl      .L803960E4
/* 1A8160 803960E0 E6020058 */   swc1      $f2, 0x58($s0)
.L803960E4:
/* 1A8164 803960E4 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A8168 803960E8 8E040000 */  lw         $a0, ($s0)
/* 1A816C 803960EC 4600008D */  trunc.w.s  $f2, $f0
/* 1A8170 803960F0 44051000 */  mfc1       $a1, $f2
/* 1A8174 803960F4 00000000 */  nop
/* 1A8178 803960F8 24A5FFFE */  addiu      $a1, $a1, -2
/* 1A817C 803960FC C600004C */  lwc1       $f0, 0x4c($s0)
/* 1A8180 80396100 00052C80 */  sll        $a1, $a1, 0x12
/* 1A8184 80396104 00052C03 */  sra        $a1, $a1, 0x10
/* 1A8188 80396108 4600008D */  trunc.w.s  $f2, $f0
/* 1A818C 8039610C 44061000 */  mfc1       $a2, $f2
/* 1A8190 80396110 00000000 */  nop
/* 1A8194 80396114 24C6FFFF */  addiu      $a2, $a2, -1
/* 1A8198 80396118 00063480 */  sll        $a2, $a2, 0x12
/* 1A819C 8039611C 0C028D89 */  jal        func_800A3624
/* 1A81A0 80396120 00063403 */   sra       $a2, $a2, 0x10
/* 1A81A4 80396124 8202006C */  lb         $v0, 0x6c($s0)
/* 1A81A8 80396128 18400017 */  blez       $v0, .L80396188
/* 1A81AC 8039612C 00008821 */   addu      $s1, $zero, $zero
/* 1A81B0 80396130 02009021 */  addu       $s2, $s0, $zero
.L80396134:
/* 1A81B4 80396134 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A81B8 80396138 8E440008 */  lw         $a0, 8($s2)
/* 1A81BC 8039613C 4600008D */  trunc.w.s  $f2, $f0
/* 1A81C0 80396140 44051000 */  mfc1       $a1, $f2
/* 1A81C4 80396144 00000000 */  nop
/* 1A81C8 80396148 24A50001 */  addiu      $a1, $a1, 1
/* 1A81CC 8039614C C600004C */  lwc1       $f0, 0x4c($s0)
/* 1A81D0 80396150 00052C80 */  sll        $a1, $a1, 0x12
/* 1A81D4 80396154 00052C03 */  sra        $a1, $a1, 0x10
/* 1A81D8 80396158 4600008D */  trunc.w.s  $f2, $f0
/* 1A81DC 8039615C 44061000 */  mfc1       $a2, $f2
/* 1A81E0 80396160 00000000 */  nop
/* 1A81E4 80396164 24C60001 */  addiu      $a2, $a2, 1
/* 1A81E8 80396168 00063480 */  sll        $a2, $a2, 0x12
/* 1A81EC 8039616C 0C028D89 */  jal        func_800A3624
/* 1A81F0 80396170 00063403 */   sra       $a2, $a2, 0x10
/* 1A81F4 80396174 8202006C */  lb         $v0, 0x6c($s0)
/* 1A81F8 80396178 26310001 */  addiu      $s1, $s1, 1
/* 1A81FC 8039617C 0222102A */  slt        $v0, $s1, $v0
/* 1A8200 80396180 1440FFEC */  bnez       $v0, .L80396134
/* 1A8204 80396184 26520004 */   addiu     $s2, $s2, 4
.L80396188:
/* 1A8208 80396188 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A820C 8039618C 8E040030 */  lw         $a0, 0x30($s0)
/* 1A8210 80396190 4600008D */  trunc.w.s  $f2, $f0
/* 1A8214 80396194 44051000 */  mfc1       $a1, $f2
/* 1A8218 80396198 00000000 */  nop
/* 1A821C 8039619C 24A50001 */  addiu      $a1, $a1, 1
/* 1A8220 803961A0 C600004C */  lwc1       $f0, 0x4c($s0)
/* 1A8224 803961A4 00052C80 */  sll        $a1, $a1, 0x12
/* 1A8228 803961A8 00052C03 */  sra        $a1, $a1, 0x10
/* 1A822C 803961AC 4600008D */  trunc.w.s  $f2, $f0
/* 1A8230 803961B0 44061000 */  mfc1       $a2, $f2
/* 1A8234 803961B4 00000000 */  nop
/* 1A8238 803961B8 24C60001 */  addiu      $a2, $a2, 1
/* 1A823C 803961BC 00063480 */  sll        $a2, $a2, 0x12
/* 1A8240 803961C0 0C028D89 */  jal        func_800A3624
/* 1A8244 803961C4 00063403 */   sra       $a2, $a2, 0x10
/* 1A8248 803961C8 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A824C 803961CC 8E040004 */  lw         $a0, 4($s0)
/* 1A8250 803961D0 4600008D */  trunc.w.s  $f2, $f0
/* 1A8254 803961D4 44051000 */  mfc1       $a1, $f2
/* 1A8258 803961D8 00000000 */  nop
/* 1A825C 803961DC 24A5FFF9 */  addiu      $a1, $a1, -7
/* 1A8260 803961E0 C600004C */  lwc1       $f0, 0x4c($s0)
/* 1A8264 803961E4 00052C80 */  sll        $a1, $a1, 0x12
/* 1A8268 803961E8 00052C03 */  sra        $a1, $a1, 0x10
/* 1A826C 803961EC 4600008D */  trunc.w.s  $f2, $f0
/* 1A8270 803961F0 44061000 */  mfc1       $a2, $f2
/* 1A8274 803961F4 00000000 */  nop
/* 1A8278 803961F8 00063480 */  sll        $a2, $a2, 0x12
/* 1A827C 803961FC 0C028D89 */  jal        func_800A3624
/* 1A8280 80396200 00063403 */   sra       $a2, $a2, 0x10
/* 1A8284 80396204 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A8288 80396208 8E040034 */  lw         $a0, 0x34($s0)
/* 1A828C 8039620C 4600008D */  trunc.w.s  $f2, $f0
/* 1A8290 80396210 44051000 */  mfc1       $a1, $f2
/* 1A8294 80396214 00000000 */  nop
/* 1A8298 80396218 24A50008 */  addiu      $a1, $a1, 8
/* 1A829C 8039621C C600004C */  lwc1       $f0, 0x4c($s0)
/* 1A82A0 80396220 00052C80 */  sll        $a1, $a1, 0x12
/* 1A82A4 80396224 00052C03 */  sra        $a1, $a1, 0x10
/* 1A82A8 80396228 4600008D */  trunc.w.s  $f2, $f0
/* 1A82AC 8039622C 44061000 */  mfc1       $a2, $f2
/* 1A82B0 80396230 00000000 */  nop
/* 1A82B4 80396234 24C60027 */  addiu      $a2, $a2, 0x27
/* 1A82B8 80396238 00063480 */  sll        $a2, $a2, 0x12
/* 1A82BC 8039623C 0C028D89 */  jal        func_800A3624
/* 1A82C0 80396240 00063403 */   sra       $a2, $a2, 0x10
/* 1A82C4 80396244 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1A82C8 80396248 96020064 */  lhu        $v0, 0x64($s0)
/* 1A82CC 8039624C 8E040038 */  lw         $a0, 0x38($s0)
/* 1A82D0 80396250 4600008D */  trunc.w.s  $f2, $f0
/* 1A82D4 80396254 44051000 */  mfc1       $a1, $f2
/* 1A82D8 80396258 00000000 */  nop
/* 1A82DC 8039625C 24420008 */  addiu      $v0, $v0, 8
/* 1A82E0 80396260 00A22821 */  addu       $a1, $a1, $v0
/* 1A82E4 80396264 C600004C */  lwc1       $f0, 0x4c($s0)
/* 1A82E8 80396268 00052C80 */  sll        $a1, $a1, 0x12
/* 1A82EC 8039626C 00052C03 */  sra        $a1, $a1, 0x10
/* 1A82F0 80396270 4600008D */  trunc.w.s  $f2, $f0
/* 1A82F4 80396274 44061000 */  mfc1       $a2, $f2
/* 1A82F8 80396278 00000000 */  nop
/* 1A82FC 8039627C 24C60027 */  addiu      $a2, $a2, 0x27
/* 1A8300 80396280 00063480 */  sll        $a2, $a2, 0x12
/* 1A8304 80396284 0C028D89 */  jal        func_800A3624
/* 1A8308 80396288 00063403 */   sra       $a2, $a2, 0x10
/* 1A830C 8039628C 92030085 */  lbu        $v1, 0x85($s0)
/* 1A8310 80396290 24020001 */  addiu      $v0, $zero, 1
/* 1A8314 80396294 10620012 */  beq        $v1, $v0, .L803962E0
/* 1A8318 80396298 28620002 */   slti      $v0, $v1, 2
/* 1A831C 8039629C 50400005 */  beql       $v0, $zero, .L803962B4
/* 1A8320 803962A0 24020002 */   addiu     $v0, $zero, 2
/* 1A8324 803962A4 10600007 */  beqz       $v1, .L803962C4
/* 1A8328 803962A8 00000000 */   nop
/* 1A832C 803962AC 080E58D0 */  j          .L80396340
/* 1A8330 803962B0 00000000 */   nop
.L803962B4:
/* 1A8334 803962B4 1062001A */  beq        $v1, $v0, .L80396320
/* 1A8338 803962B8 00000000 */   nop
/* 1A833C 803962BC 080E58D0 */  j          .L80396340
/* 1A8340 803962C0 00000000 */   nop
.L803962C4:
/* 1A8344 803962C4 96020086 */  lhu        $v0, 0x86($s0)
/* 1A8348 803962C8 9604008A */  lhu        $a0, 0x8a($s0)
/* 1A834C 803962CC 96030088 */  lhu        $v1, 0x88($s0)
/* 1A8350 803962D0 9605008A */  lhu        $a1, 0x8a($s0)
/* 1A8354 803962D4 00441021 */  addu       $v0, $v0, $a0
/* 1A8358 803962D8 080E58CE */  j          .L80396338
/* 1A835C 803962DC 00651821 */   addu      $v1, $v1, $a1
.L803962E0:
/* 1A8360 803962E0 96020088 */  lhu        $v0, 0x88($s0)
/* 1A8364 803962E4 9603008A */  lhu        $v1, 0x8a($s0)
/* 1A8368 803962E8 00431023 */  subu       $v0, $v0, $v1
/* 1A836C 803962EC A6020088 */  sh         $v0, 0x88($s0)
/* 1A8370 803962F0 00021400 */  sll        $v0, $v0, 0x10
/* 1A8374 803962F4 00021C03 */  sra        $v1, $v0, 0x10
/* 1A8378 803962F8 28620100 */  slti       $v0, $v1, 0x100
/* 1A837C 803962FC 14400004 */  bnez       $v0, .L80396310
/* 1A8380 80396300 28620040 */   slti      $v0, $v1, 0x40
/* 1A8384 80396304 240200FF */  addiu      $v0, $zero, 0xff
/* 1A8388 80396308 080E58D0 */  j          .L80396340
/* 1A838C 8039630C A6020088 */   sh        $v0, 0x88($s0)
.L80396310:
/* 1A8390 80396310 1040000B */  beqz       $v0, .L80396340
/* 1A8394 80396314 24020040 */   addiu     $v0, $zero, 0x40
/* 1A8398 80396318 080E58D0 */  j          .L80396340
/* 1A839C 8039631C A6020088 */   sh        $v0, 0x88($s0)
.L80396320:
/* 1A83A0 80396320 96020086 */  lhu        $v0, 0x86($s0)
/* 1A83A4 80396324 9604008A */  lhu        $a0, 0x8a($s0)
/* 1A83A8 80396328 96030088 */  lhu        $v1, 0x88($s0)
/* 1A83AC 8039632C 9605008A */  lhu        $a1, 0x8a($s0)
/* 1A83B0 80396330 00441023 */  subu       $v0, $v0, $a0
/* 1A83B4 80396334 00651823 */  subu       $v1, $v1, $a1
.L80396338:
/* 1A83B8 80396338 A6020086 */  sh         $v0, 0x86($s0)
/* 1A83BC 8039633C A6030088 */  sh         $v1, 0x88($s0)
.L80396340:
/* 1A83C0 80396340 86030086 */  lh         $v1, 0x86($s0)
/* 1A83C4 80396344 28620100 */  slti       $v0, $v1, 0x100
/* 1A83C8 80396348 14400003 */  bnez       $v0, .L80396358
/* 1A83CC 8039634C 240200FF */   addiu     $v0, $zero, 0xff
/* 1A83D0 80396350 080E58D8 */  j          .L80396360
/* 1A83D4 80396354 A6020086 */   sh        $v0, 0x86($s0)
.L80396358:
/* 1A83D8 80396358 04620001 */  bltzl      $v1, .L80396360
/* 1A83DC 8039635C A6000086 */   sh        $zero, 0x86($s0)
.L80396360:
/* 1A83E0 80396360 86030088 */  lh         $v1, 0x88($s0)
/* 1A83E4 80396364 28620100 */  slti       $v0, $v1, 0x100
/* 1A83E8 80396368 14400003 */  bnez       $v0, .L80396378
/* 1A83EC 8039636C 240200FF */   addiu     $v0, $zero, 0xff
/* 1A83F0 80396370 080E58E0 */  j          .L80396380
/* 1A83F4 80396374 A6020088 */   sh        $v0, 0x88($s0)
.L80396378:
/* 1A83F8 80396378 04620001 */  bltzl      $v1, .L80396380
/* 1A83FC 8039637C A6000088 */   sh        $zero, 0x88($s0)
.L80396380:
/* 1A8400 80396380 8202006C */  lb         $v0, 0x6c($s0)
/* 1A8404 80396384 1840000E */  blez       $v0, .L803963C0
/* 1A8408 80396388 00008821 */   addu      $s1, $zero, $zero
/* 1A840C 8039638C 241300CC */  addiu      $s3, $zero, 0xcc
/* 1A8410 80396390 02009021 */  addu       $s2, $s0, $zero
.L80396394:
/* 1A8414 80396394 92050087 */  lbu        $a1, 0x87($s0)
/* 1A8418 80396398 92060089 */  lbu        $a2, 0x89($s0)
/* 1A841C 8039639C AFB30010 */  sw         $s3, 0x10($sp)
/* 1A8420 803963A0 8E440008 */  lw         $a0, 8($s2)
/* 1A8424 803963A4 0C028E41 */  jal        func_800A3904
/* 1A8428 803963A8 00C03821 */   addu      $a3, $a2, $zero
/* 1A842C 803963AC 8202006C */  lb         $v0, 0x6c($s0)
/* 1A8430 803963B0 26310001 */  addiu      $s1, $s1, 1
/* 1A8434 803963B4 0222102A */  slt        $v0, $s1, $v0
/* 1A8438 803963B8 1440FFF6 */  bnez       $v0, .L80396394
/* 1A843C 803963BC 26520004 */   addiu     $s2, $s2, 4
.L803963C0:
/* 1A8440 803963C0 3C013EAA */  lui        $at, 0x3eaa
/* 1A8444 803963C4 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A8448 803963C8 44811000 */  mtc1       $at, $f2
/* 1A844C 803963CC 00000000 */  nop
/* 1A8450 803963D0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A8454 803963D4 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A8458 803963D8 46800020 */  cvt.s.w    $f0, $f0
/* 1A845C 803963DC 46020002 */  mul.s      $f0, $f0, $f2
/* 1A8460 803963E0 8E050070 */  lw         $a1, 0x70($s0)
/* 1A8464 803963E4 44060000 */  mfc1       $a2, $f0
/* 1A8468 803963E8 00000000 */  nop
/* 1A846C 803963EC 0C025C8A */  jal        func_80097228
/* 1A8470 803963F0 26040074 */   addiu     $a0, $s0, 0x74
/* 1A8474 803963F4 9203007C */  lbu        $v1, 0x7c($s0)
/* 1A8478 803963F8 24020001 */  addiu      $v0, $zero, 1
/* 1A847C 803963FC 14620003 */  bne        $v1, $v0, .L8039640C
/* 1A8480 80396400 00000000 */   nop
/* 1A8484 80396404 0C0E59DC */  jal        func_80396770_1A87F0
/* 1A8488 80396408 02002021 */   addu      $a0, $s0, $zero
.L8039640C:
/* 1A848C 8039640C 8E040068 */  lw         $a0, 0x68($s0)
/* 1A8490 80396410 84820010 */  lh         $v0, 0x10($a0)
/* 1A8494 80396414 3C014040 */  lui        $at, 0x4040
/* 1A8498 80396418 44811000 */  mtc1       $at, $f2
/* 1A849C 8039641C 00000000 */  nop
/* 1A84A0 80396420 44820000 */  mtc1       $v0, $f0
/* 1A84A4 80396424 00000000 */  nop
/* 1A84A8 80396428 46800020 */  cvt.s.w    $f0, $f0
/* 1A84AC 8039642C 46020002 */  mul.s      $f0, $f0, $f2
/* 1A84B0 80396430 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A84B4 80396434 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A84B8 80396438 468010A0 */  cvt.s.w    $f2, $f2
/* 1A84BC 8039643C 46020003 */  div.s      $f0, $f0, $f2
/* 1A84C0 80396440 8602007E */  lh         $v0, 0x7e($s0)
/* 1A84C4 80396444 44821000 */  mtc1       $v0, $f2
/* 1A84C8 80396448 00000000 */  nop
/* 1A84CC 8039644C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A84D0 80396450 46020032 */  c.eq.s     $f0, $f2
/* 1A84D4 80396454 00000000 */  nop
/* 1A84D8 80396458 00000000 */  nop
/* 1A84DC 8039645C 4500000A */  bc1f       .L80396488
/* 1A84E0 80396460 2402FFFF */   addiu     $v0, $zero, -1
/* 1A84E4 80396464 84840012 */  lh         $a0, 0x12($a0)
/* 1A84E8 80396468 50820007 */  beql       $a0, $v0, .L80396488
/* 1A84EC 8039646C AE000080 */   sw        $zero, 0x80($s0)
/* 1A84F0 80396470 0C026DD5 */  jal        func_8009B754
/* 1A84F4 80396474 00000000 */   nop
/* 1A84F8 80396478 92050084 */  lbu        $a1, 0x84($s0)
/* 1A84FC 8039647C 00402021 */  addu       $a0, $v0, $zero
/* 1A8500 80396480 0C026E75 */  jal        func_8009B9D4
/* 1A8504 80396484 AE040080 */   sw        $a0, 0x80($s0)
.L80396488:
/* 1A8508 80396488 9602007E */  lhu        $v0, 0x7e($s0)
/* 1A850C 8039648C 3C038015 */  lui        $v1, %hi(D_80149FA8)
/* 1A8510 80396490 8C639FA8 */  lw         $v1, %lo(D_80149FA8)($v1)
/* 1A8514 80396494 24420001 */  addiu      $v0, $v0, 1
/* 1A8518 80396498 1060006B */  beqz       $v1, .L80396648
/* 1A851C 8039649C A602007E */   sh        $v0, 0x7e($s0)
/* 1A8520 803964A0 8E040000 */  lw         $a0, ($s0)
/* 1A8524 803964A4 0C028A40 */  jal        func_800A2900
/* 1A8528 803964A8 00000000 */   nop
/* 1A852C 803964AC C6020058 */  lwc1       $f2, 0x58($s0)
/* 1A8530 803964B0 44800000 */  mtc1       $zero, $f0
/* 1A8534 803964B4 00000000 */  nop
/* 1A8538 803964B8 46001032 */  c.eq.s     $f2, $f0
/* 1A853C 803964BC 00000000 */  nop
/* 1A8540 803964C0 45010004 */  bc1t       .L803964D4
/* 1A8544 803964C4 00000000 */   nop
/* 1A8548 803964C8 8E040030 */  lw         $a0, 0x30($s0)
/* 1A854C 803964CC 080E5943 */  j          .L8039650C
/* 1A8550 803964D0 00000000 */   nop
.L803964D4:
/* 1A8554 803964D4 9202007C */  lbu        $v0, 0x7c($s0)
/* 1A8558 803964D8 1440000B */  bnez       $v0, .L80396508
/* 1A855C 803964DC 00000000 */   nop
/* 1A8560 803964E0 86020078 */  lh         $v0, 0x78($s0)
/* 1A8564 803964E4 8E030070 */  lw         $v1, 0x70($s0)
/* 1A8568 803964E8 00021040 */  sll        $v0, $v0, 1
/* 1A856C 803964EC 00431021 */  addu       $v0, $v0, $v1
/* 1A8570 803964F0 80420001 */  lb         $v0, 1($v0)
/* 1A8574 803964F4 00021080 */  sll        $v0, $v0, 2
/* 1A8578 803964F8 00501021 */  addu       $v0, $v0, $s0
/* 1A857C 803964FC 8C440008 */  lw         $a0, 8($v0)
/* 1A8580 80396500 080E5943 */  j          .L8039650C
/* 1A8584 80396504 00000000 */   nop
.L80396508:
/* 1A8588 80396508 8E040008 */  lw         $a0, 8($s0)
.L8039650C:
/* 1A858C 8039650C 0C028A40 */  jal        func_800A2900
/* 1A8590 80396510 00000000 */   nop
/* 1A8594 80396514 8E040004 */  lw         $a0, 4($s0)
/* 1A8598 80396518 0C028A40 */  jal        func_800A2900
/* 1A859C 8039651C 00000000 */   nop
/* 1A85A0 80396520 C6020060 */  lwc1       $f2, 0x60($s0)
/* 1A85A4 80396524 3C014218 */  lui        $at, 0x4218
/* 1A85A8 80396528 44810000 */  mtc1       $at, $f0
/* 1A85AC 8039652C 00000000 */  nop
/* 1A85B0 80396530 4600103C */  c.lt.s     $f2, $f0
/* 1A85B4 80396534 00000000 */  nop
/* 1A85B8 80396538 4500000D */  bc1f       .L80396570
/* 1A85BC 8039653C 00000000 */   nop
/* 1A85C0 80396540 8E04003C */  lw         $a0, 0x3c($s0)
/* 1A85C4 80396544 0C028A40 */  jal        func_800A2900
/* 1A85C8 80396548 00000000 */   nop
/* 1A85CC 8039654C 8E040034 */  lw         $a0, 0x34($s0)
/* 1A85D0 80396550 0C028A40 */  jal        func_800A2900
/* 1A85D4 80396554 00000000 */   nop
/* 1A85D8 80396558 8E040038 */  lw         $a0, 0x38($s0)
/* 1A85DC 8039655C 0C028A40 */  jal        func_800A2900
/* 1A85E0 80396560 00000000 */   nop
/* 1A85E4 80396564 8E040040 */  lw         $a0, 0x40($s0)
/* 1A85E8 80396568 080E595D */  j          .L80396574
/* 1A85EC 8039656C 00000000 */   nop
.L80396570:
/* 1A85F0 80396570 8E040034 */  lw         $a0, 0x34($s0)
.L80396574:
/* 1A85F4 80396574 0C028A40 */  jal        func_800A2900
/* 1A85F8 80396578 00000000 */   nop
/* 1A85FC 8039657C C6040058 */  lwc1       $f4, 0x58($s0)
/* 1A8600 80396580 44800000 */  mtc1       $zero, $f0
/* 1A8604 80396584 00000000 */  nop
/* 1A8608 80396588 46002032 */  c.eq.s     $f4, $f0
/* 1A860C 8039658C 00000000 */  nop
/* 1A8610 80396590 4501002D */  bc1t       .L80396648
/* 1A8614 80396594 00000000 */   nop
/* 1A8618 80396598 3C013EAA */  lui        $at, 0x3eaa
/* 1A861C 8039659C 3421AAAB */  ori        $at, $at, 0xaaab
/* 1A8620 803965A0 44811000 */  mtc1       $at, $f2
/* 1A8624 803965A4 00000000 */  nop
/* 1A8628 803965A8 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A862C 803965AC C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A8630 803965B0 46800020 */  cvt.s.w    $f0, $f0
/* 1A8634 803965B4 46020002 */  mul.s      $f0, $f0, $f2
/* 1A8638 803965B8 46002001 */  sub.s      $f0, $f4, $f0
/* 1A863C 803965BC 4600208D */  trunc.w.s  $f2, $f4
/* 1A8640 803965C0 44031000 */  mfc1       $v1, $f2
/* 1A8644 803965C4 00000000 */  nop
/* 1A8648 803965C8 4600008D */  trunc.w.s  $f2, $f0
/* 1A864C 803965CC 44021000 */  mfc1       $v0, $f2
/* 1A8650 803965D0 00000000 */  nop
/* 1A8654 803965D4 1062001C */  beq        $v1, $v0, .L80396648
/* 1A8658 803965D8 E6000058 */   swc1      $f0, 0x58($s0)
/* 1A865C 803965DC 00008821 */  addu       $s1, $zero, $zero
.L803965E0:
/* 1A8660 803965E0 8E020030 */  lw         $v0, 0x30($s0)
/* 1A8664 803965E4 8C440014 */  lw         $a0, 0x14($v0)
/* 1A8668 803965E8 00112840 */  sll        $a1, $s1, 1
/* 1A866C 803965EC 00A42021 */  addu       $a0, $a1, $a0
/* 1A8670 803965F0 94820010 */  lhu        $v0, 0x10($a0)
/* 1A8674 803965F4 94830000 */  lhu        $v1, ($a0)
/* 1A8678 803965F8 00431026 */  xor        $v0, $v0, $v1
/* 1A867C 803965FC A4820010 */  sh         $v0, 0x10($a0)
/* 1A8680 80396600 8E020030 */  lw         $v0, 0x30($s0)
/* 1A8684 80396604 8C440014 */  lw         $a0, 0x14($v0)
/* 1A8688 80396608 00A42021 */  addu       $a0, $a1, $a0
/* 1A868C 8039660C 94820000 */  lhu        $v0, ($a0)
/* 1A8690 80396610 94830010 */  lhu        $v1, 0x10($a0)
/* 1A8694 80396614 00431026 */  xor        $v0, $v0, $v1
/* 1A8698 80396618 A4820000 */  sh         $v0, ($a0)
/* 1A869C 8039661C 8E020030 */  lw         $v0, 0x30($s0)
/* 1A86A0 80396620 8C420014 */  lw         $v0, 0x14($v0)
/* 1A86A4 80396624 00A22821 */  addu       $a1, $a1, $v0
/* 1A86A8 80396628 94A20010 */  lhu        $v0, 0x10($a1)
/* 1A86AC 8039662C 94A30000 */  lhu        $v1, ($a1)
/* 1A86B0 80396630 26310001 */  addiu      $s1, $s1, 1
/* 1A86B4 80396634 00431026 */  xor        $v0, $v0, $v1
/* 1A86B8 80396638 A4A20010 */  sh         $v0, 0x10($a1)
/* 1A86BC 8039663C 2A220008 */  slti       $v0, $s1, 8
/* 1A86C0 80396640 1440FFE7 */  bnez       $v0, .L803965E0
/* 1A86C4 80396644 00000000 */   nop
.L80396648:
/* 1A86C8 80396648 8FBF0038 */  lw         $ra, 0x38($sp)
/* 1A86CC 8039664C 8FB30034 */  lw         $s3, 0x34($sp)
/* 1A86D0 80396650 8FB20030 */  lw         $s2, 0x30($sp)
/* 1A86D4 80396654 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1A86D8 80396658 8FB00028 */  lw         $s0, 0x28($sp)
/* 1A86DC 8039665C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1A86E0 80396660 03E00008 */  jr         $ra
/* 1A86E4 80396664 00000000 */   nop

glabel func_80396668_1A86E8
/* 1A86E8 80396668 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1A86EC 8039666C AFB20028 */  sw         $s2, 0x28($sp)
/* 1A86F0 80396670 00809021 */  addu       $s2, $a0, $zero
/* 1A86F4 80396674 AFBF0038 */  sw         $ra, 0x38($sp)
/* 1A86F8 80396678 AFB50034 */  sw         $s5, 0x34($sp)
/* 1A86FC 8039667C AFB40030 */  sw         $s4, 0x30($sp)
/* 1A8700 80396680 AFB3002C */  sw         $s3, 0x2c($sp)
/* 1A8704 80396684 AFB10024 */  sw         $s1, 0x24($sp)
/* 1A8708 80396688 AFB00020 */  sw         $s0, 0x20($sp)
/* 1A870C 8039668C 86420066 */  lh         $v0, 0x66($s2)
/* 1A8710 80396690 00028040 */  sll        $s0, $v0, 1
/* 1A8714 80396694 02028021 */  addu       $s0, $s0, $v0
/* 1A8718 80396698 001080C0 */  sll        $s0, $s0, 3
/* 1A871C 8039669C 3C02803A */  lui        $v0, %hi(D_8039FB20_1B1BA0)
/* 1A8720 803966A0 2442FB20 */  addiu      $v0, $v0, %lo(D_8039FB20_1B1BA0)
/* 1A8724 803966A4 02028021 */  addu       $s0, $s0, $v0
/* 1A8728 803966A8 86030000 */  lh         $v1, ($s0)
/* 1A872C 803966AC 92140002 */  lbu        $s4, 2($s0)
/* 1A8730 803966B0 26440074 */  addiu      $a0, $s2, 0x74
/* 1A8734 803966B4 00052C00 */  sll        $a1, $a1, 0x10
/* 1A8738 803966B8 AE500068 */  sw         $s0, 0x68($s2)
/* 1A873C 803966BC A254006C */  sb         $s4, 0x6c($s2)
/* 1A8740 803966C0 8E02000C */  lw         $v0, 0xc($s0)
/* 1A8744 803966C4 00052C03 */  sra        $a1, $a1, 0x10
/* 1A8748 803966C8 00659821 */  addu       $s3, $v1, $a1
/* 1A874C 803966CC 0C025C87 */  jal        func_8009721C
/* 1A8750 803966D0 AE420070 */   sw        $v0, 0x70($s2)
/* 1A8754 803966D4 92020003 */  lbu        $v0, 3($s0)
/* 1A8758 803966D8 14400003 */  bnez       $v0, .L803966E8
/* 1A875C 803966DC 24020001 */   addiu     $v0, $zero, 1
/* 1A8760 803966E0 080E59BB */  j          .L803966EC
/* 1A8764 803966E4 A240007C */   sb        $zero, 0x7c($s2)
.L803966E8:
/* 1A8768 803966E8 A242007C */  sb         $v0, 0x7c($s2)
.L803966EC:
/* 1A876C 803966EC 12800014 */  beqz       $s4, .L80396740
/* 1A8770 803966F0 00008821 */   addu      $s1, $zero, $zero
/* 1A8774 803966F4 241500CC */  addiu      $s5, $zero, 0xcc
/* 1A8778 803966F8 02408021 */  addu       $s0, $s2, $zero
/* 1A877C 803966FC 3264FFFF */  andi       $a0, $s3, 0xffff
.L80396700:
/* 1A8780 80396700 24050001 */  addiu      $a1, $zero, 1
/* 1A8784 80396704 0C028CB7 */  jal        func_800A32DC
/* 1A8788 80396708 00003021 */   addu      $a2, $zero, $zero
/* 1A878C 8039670C AE020008 */  sw         $v0, 8($s0)
/* 1A8790 80396710 AFB50010 */  sw         $s5, 0x10($sp)
/* 1A8794 80396714 8E040008 */  lw         $a0, 8($s0)
/* 1A8798 80396718 240500FF */  addiu      $a1, $zero, 0xff
/* 1A879C 8039671C 240600FF */  addiu      $a2, $zero, 0xff
/* 1A87A0 80396720 26730001 */  addiu      $s3, $s3, 1
/* 1A87A4 80396724 26100004 */  addiu      $s0, $s0, 4
/* 1A87A8 80396728 26310001 */  addiu      $s1, $s1, 1
/* 1A87AC 8039672C 0C028E41 */  jal        func_800A3904
/* 1A87B0 80396730 240700FF */   addiu     $a3, $zero, 0xff
/* 1A87B4 80396734 0234102A */  slt        $v0, $s1, $s4
/* 1A87B8 80396738 1440FFF1 */  bnez       $v0, .L80396700
/* 1A87BC 8039673C 3264FFFF */   andi      $a0, $s3, 0xffff
.L80396740:
/* 1A87C0 80396740 A640007E */  sh         $zero, 0x7e($s2)
/* 1A87C4 80396744 AE400080 */  sw         $zero, 0x80($s2)
/* 1A87C8 80396748 8FBF0038 */  lw         $ra, 0x38($sp)
/* 1A87CC 8039674C 8FB50034 */  lw         $s5, 0x34($sp)
/* 1A87D0 80396750 8FB40030 */  lw         $s4, 0x30($sp)
/* 1A87D4 80396754 8FB3002C */  lw         $s3, 0x2c($sp)
/* 1A87D8 80396758 8FB20028 */  lw         $s2, 0x28($sp)
/* 1A87DC 8039675C 8FB10024 */  lw         $s1, 0x24($sp)
/* 1A87E0 80396760 8FB00020 */  lw         $s0, 0x20($sp)
/* 1A87E4 80396764 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1A87E8 80396768 03E00008 */  jr         $ra
/* 1A87EC 8039676C 00000000 */   nop

glabel func_80396770_1A87F0
/* 1A87F0 80396770 84820078 */  lh         $v0, 0x78($a0)
/* 1A87F4 80396774 8C850070 */  lw         $a1, 0x70($a0)
/* 1A87F8 80396778 8C830068 */  lw         $v1, 0x68($a0)
/* 1A87FC 8039677C 00021040 */  sll        $v0, $v0, 1
/* 1A8800 80396780 00451021 */  addu       $v0, $v0, $a1
/* 1A8804 80396784 80450001 */  lb         $a1, 1($v0)
/* 1A8808 80396788 90620006 */  lbu        $v0, 6($v1)
/* 1A880C 8039678C 00A2001A */  div        $zero, $a1, $v0
/* 1A8810 80396790 14400002 */  bnez       $v0, .L8039679C
/* 1A8814 80396794 00000000 */   nop
/* 1A8818 80396798 0007000D */  break      7
.L8039679C:
/* 1A881C 8039679C 2401FFFF */   addiu     $at, $zero, -1
/* 1A8820 803967A0 14410004 */  bne        $v0, $at, .L803967B4
/* 1A8824 803967A4 3C018000 */   lui       $at, 0x8000
/* 1A8828 803967A8 14A10002 */  bne        $a1, $at, .L803967B4
/* 1A882C 803967AC 00000000 */   nop
/* 1A8830 803967B0 0006000D */  break      6
.L803967B4:
/* 1A8834 803967B4 00002812 */   mflo      $a1
/* 1A8838 803967B8 00000000 */  nop
/* 1A883C 803967BC 00000000 */  nop
/* 1A8840 803967C0 00003010 */  mfhi       $a2
/* 1A8844 803967C4 00000000 */  nop
/* 1A8848 803967C8 00000000 */  nop
/* 1A884C 803967CC 90620008 */  lbu        $v0, 8($v1)
/* 1A8850 803967D0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 1A8854 803967D4 00026400 */  sll        $t4, $v0, 0x10
/* 1A8858 803967D8 000C5C03 */  sra        $t3, $t4, 0x10
/* 1A885C 803967DC 00CB0018 */  mult       $a2, $t3
/* 1A8860 803967E0 00003012 */  mflo       $a2
/* 1A8864 803967E4 00000000 */  nop
/* 1A8868 803967E8 00000000 */  nop
/* 1A886C 803967EC 8C890008 */  lw         $t1, 8($a0)
/* 1A8870 803967F0 906D0004 */  lbu        $t5, 4($v1)
/* 1A8874 803967F4 90620003 */  lbu        $v0, 3($v1)
/* 1A8878 803967F8 90680005 */  lbu        $t0, 5($v1)
/* 1A887C 803967FC 90630009 */  lbu        $v1, 9($v1)
/* 1A8880 80396800 00021080 */  sll        $v0, $v0, 2
/* 1A8884 80396804 00441021 */  addu       $v0, $v0, $a0
/* 1A8888 80396808 8C4A0008 */  lw         $t2, 8($v0)
/* 1A888C 8039680C 00000000 */  nop
/* 1A8890 80396810 00A30018 */  mult       $a1, $v1
/* 1A8894 80396814 00001012 */  mflo       $v0
/* 1A8898 80396818 00000000 */  nop
/* 1A889C 8039681C 00000000 */  nop
/* 1A88A0 80396820 10600031 */  beqz       $v1, .L803968E8
/* 1A88A4 80396824 00003821 */   addu      $a3, $zero, $zero
/* 1A88A8 80396828 00021400 */  sll        $v0, $v0, 0x10
/* 1A88AC 8039682C 0002C403 */  sra        $t8, $v0, 0x10
/* 1A88B0 80396830 00061400 */  sll        $v0, $a2, 0x10
/* 1A88B4 80396834 00027C03 */  sra        $t7, $v0, 0x10
/* 1A88B8 80396838 01007021 */  addu       $t6, $t0, $zero
/* 1A88BC 8039683C 01804021 */  addu       $t0, $t4, $zero
/* 1A88C0 80396840 000B6042 */  srl        $t4, $t3, 1
/* 1A88C4 80396844 00605821 */  addu       $t3, $v1, $zero
.L80396848:
/* 1A88C8 80396848 8D42000C */  lw         $v0, 0xc($t2)
/* 1A88CC 8039684C 94430000 */  lhu        $v1, ($v0)
/* 1A88D0 80396850 03071021 */  addu       $v0, $t8, $a3
/* 1A88D4 80396854 00620018 */  mult       $v1, $v0
/* 1A88D8 80396858 00001812 */  mflo       $v1
/* 1A88DC 8039685C 00000000 */  nop
/* 1A88E0 80396860 00000000 */  nop
/* 1A88E4 80396864 8D22000C */  lw         $v0, 0xc($t1)
/* 1A88E8 80396868 94440000 */  lhu        $a0, ($v0)
/* 1A88EC 8039686C 01C71021 */  addu       $v0, $t6, $a3
/* 1A88F0 80396870 00820018 */  mult       $a0, $v0
/* 1A88F4 80396874 00002012 */  mflo       $a0
/* 1A88F8 80396878 00000000 */  nop
/* 1A88FC 8039687C 00000000 */  nop
/* 1A8900 80396880 00003021 */  addu       $a2, $zero, $zero
/* 1A8904 80396884 8D450010 */  lw         $a1, 0x10($t2)
/* 1A8908 80396888 006F1821 */  addu       $v1, $v1, $t7
/* 1A890C 8039688C 000317C2 */  srl        $v0, $v1, 0x1f
/* 1A8910 80396890 00621821 */  addu       $v1, $v1, $v0
/* 1A8914 80396894 00031843 */  sra        $v1, $v1, 1
/* 1A8918 80396898 00A32821 */  addu       $a1, $a1, $v1
/* 1A891C 8039689C 8D230010 */  lw         $v1, 0x10($t1)
/* 1A8920 803968A0 008D2021 */  addu       $a0, $a0, $t5
/* 1A8924 803968A4 000417C2 */  srl        $v0, $a0, 0x1f
/* 1A8928 803968A8 00822021 */  addu       $a0, $a0, $v0
/* 1A892C 803968AC 00042043 */  sra        $a0, $a0, 1
/* 1A8930 803968B0 11800009 */  beqz       $t4, .L803968D8
/* 1A8934 803968B4 00641821 */   addu      $v1, $v1, $a0
/* 1A8938 803968B8 00082442 */  srl        $a0, $t0, 0x11
.L803968BC:
/* 1A893C 803968BC 90A20000 */  lbu        $v0, ($a1)
/* 1A8940 803968C0 24A50001 */  addiu      $a1, $a1, 1
/* 1A8944 803968C4 24C60001 */  addiu      $a2, $a2, 1
/* 1A8948 803968C8 A0620000 */  sb         $v0, ($v1)
/* 1A894C 803968CC 00C4102A */  slt        $v0, $a2, $a0
/* 1A8950 803968D0 1440FFFA */  bnez       $v0, .L803968BC
/* 1A8954 803968D4 24630001 */   addiu     $v1, $v1, 1
.L803968D8:
/* 1A8958 803968D8 24E70001 */  addiu      $a3, $a3, 1
/* 1A895C 803968DC 00EB102A */  slt        $v0, $a3, $t3
/* 1A8960 803968E0 1440FFD9 */  bnez       $v0, .L80396848
/* 1A8964 803968E4 00000000 */   nop
.L803968E8:
/* 1A8968 803968E8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 1A896C 803968EC 03E00008 */  jr         $ra
/* 1A8970 803968F0 00000000 */   nop

glabel func_803968F4
/* 1A8974 803968F4 10800007 */  beqz       $a0, .L80396914
/* 1A8978 803968F8 00051C00 */   sll       $v1, $a1, 0x10
/* 1A897C 803968FC 8C820014 */  lw         $v0, 0x14($a0)
/* 1A8980 80396900 00031C03 */  sra        $v1, $v1, 0x10
/* 1A8984 80396904 44830000 */  mtc1       $v1, $f0
/* 1A8988 80396908 00000000 */  nop
/* 1A898C 8039690C 46800020 */  cvt.s.w    $f0, $f0
/* 1A8990 80396910 E4400058 */  swc1       $f0, 0x58($v0)
.L80396914:
/* 1A8994 80396914 03E00008 */  jr         $ra
/* 1A8998 80396918 00000000 */   nop

glabel func_8039691C
/* 1A899C 8039691C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1A89A0 80396920 AFB30034 */  sw         $s3, 0x34($sp)
/* 1A89A4 80396924 00A09821 */  addu       $s3, $a1, $zero
/* 1A89A8 80396928 AFB60040 */  sw         $s6, 0x40($sp)
/* 1A89AC 8039692C 00C0B021 */  addu       $s6, $a2, $zero
/* 1A89B0 80396930 AFB5003C */  sw         $s5, 0x3c($sp)
/* 1A89B4 80396934 00E0A821 */  addu       $s5, $a3, $zero
/* 1A89B8 80396938 AFBF0044 */  sw         $ra, 0x44($sp)
/* 1A89BC 8039693C AFB40038 */  sw         $s4, 0x38($sp)
/* 1A89C0 80396940 AFB20030 */  sw         $s2, 0x30($sp)
/* 1A89C4 80396944 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1A89C8 80396948 10800055 */  beqz       $a0, .L80396AA0
/* 1A89CC 8039694C AFB00028 */   sw        $s0, 0x28($sp)
/* 1A89D0 80396950 8C920014 */  lw         $s2, 0x14($a0)
/* 1A89D4 80396954 8242006C */  lb         $v0, 0x6c($s2)
/* 1A89D8 80396958 1840000A */  blez       $v0, .L80396984
/* 1A89DC 8039695C 00008021 */   addu      $s0, $zero, $zero
/* 1A89E0 80396960 02408821 */  addu       $s1, $s2, $zero
.L80396964:
/* 1A89E4 80396964 8E240008 */  lw         $a0, 8($s1)
/* 1A89E8 80396968 0C028D30 */  jal        func_800A34C0
/* 1A89EC 8039696C 26310004 */   addiu     $s1, $s1, 4
/* 1A89F0 80396970 8242006C */  lb         $v0, 0x6c($s2)
/* 1A89F4 80396974 26100001 */  addiu      $s0, $s0, 1
/* 1A89F8 80396978 0202102A */  slt        $v0, $s0, $v0
/* 1A89FC 8039697C 1440FFF9 */  bnez       $v0, .L80396964
/* 1A8A00 80396980 00000000 */   nop
.L80396984:
/* 1A8A04 80396984 0C026E4E */  jal        func_8009B938
/* 1A8A08 80396988 26440080 */   addiu     $a0, $s2, 0x80
/* 1A8A0C 8039698C 00131400 */  sll        $v0, $s3, 0x10
/* 1A8A10 80396990 00021403 */  sra        $v0, $v0, 0x10
/* 1A8A14 80396994 00028040 */  sll        $s0, $v0, 1
/* 1A8A18 80396998 02028021 */  addu       $s0, $s0, $v0
/* 1A8A1C 8039699C 001080C0 */  sll        $s0, $s0, 3
/* 1A8A20 803969A0 3C02803A */  lui        $v0, %hi(D_8039FB20_1B1BA0)
/* 1A8A24 803969A4 2442FB20 */  addiu      $v0, $v0, %lo(D_8039FB20_1B1BA0)
/* 1A8A28 803969A8 02028021 */  addu       $s0, $s0, $v0
/* 1A8A2C 803969AC A6530066 */  sh         $s3, 0x66($s2)
/* 1A8A30 803969B0 86050000 */  lh         $a1, ($s0)
/* 1A8A34 803969B4 92140002 */  lbu        $s4, 2($s0)
/* 1A8A38 803969B8 26440074 */  addiu      $a0, $s2, 0x74
/* 1A8A3C 803969BC 00151400 */  sll        $v0, $s5, 0x10
/* 1A8A40 803969C0 AE500068 */  sw         $s0, 0x68($s2)
/* 1A8A44 803969C4 A254006C */  sb         $s4, 0x6c($s2)
/* 1A8A48 803969C8 8E03000C */  lw         $v1, 0xc($s0)
/* 1A8A4C 803969CC 00021403 */  sra        $v0, $v0, 0x10
/* 1A8A50 803969D0 00A29821 */  addu       $s3, $a1, $v0
/* 1A8A54 803969D4 0C025C87 */  jal        func_8009721C
/* 1A8A58 803969D8 AE430070 */   sw        $v1, 0x70($s2)
/* 1A8A5C 803969DC 92020003 */  lbu        $v0, 3($s0)
/* 1A8A60 803969E0 14400003 */  bnez       $v0, .L803969F0
/* 1A8A64 803969E4 24020001 */   addiu     $v0, $zero, 1
/* 1A8A68 803969E8 080E5A7D */  j          .L803969F4
/* 1A8A6C 803969EC A240007C */   sb        $zero, 0x7c($s2)
.L803969F0:
/* 1A8A70 803969F0 A242007C */  sb         $v0, 0x7c($s2)
.L803969F4:
/* 1A8A74 803969F4 12800014 */  beqz       $s4, .L80396A48
/* 1A8A78 803969F8 00008821 */   addu      $s1, $zero, $zero
/* 1A8A7C 803969FC 241500CC */  addiu      $s5, $zero, 0xcc
/* 1A8A80 80396A00 02408021 */  addu       $s0, $s2, $zero
/* 1A8A84 80396A04 3264FFFF */  andi       $a0, $s3, 0xffff
.L80396A08:
/* 1A8A88 80396A08 24050001 */  addiu      $a1, $zero, 1
/* 1A8A8C 80396A0C 0C028CB7 */  jal        func_800A32DC
/* 1A8A90 80396A10 00003021 */   addu      $a2, $zero, $zero
/* 1A8A94 80396A14 AE020008 */  sw         $v0, 8($s0)
/* 1A8A98 80396A18 AFB50010 */  sw         $s5, 0x10($sp)
/* 1A8A9C 80396A1C 8E040008 */  lw         $a0, 8($s0)
/* 1A8AA0 80396A20 240500FF */  addiu      $a1, $zero, 0xff
/* 1A8AA4 80396A24 240600FF */  addiu      $a2, $zero, 0xff
/* 1A8AA8 80396A28 26730001 */  addiu      $s3, $s3, 1
/* 1A8AAC 80396A2C 26100004 */  addiu      $s0, $s0, 4
/* 1A8AB0 80396A30 26310001 */  addiu      $s1, $s1, 1
/* 1A8AB4 80396A34 0C028E41 */  jal        func_800A3904
/* 1A8AB8 80396A38 240700FF */   addiu     $a3, $zero, 0xff
/* 1A8ABC 80396A3C 0234102A */  slt        $v0, $s1, $s4
/* 1A8AC0 80396A40 1440FFF1 */  bnez       $v0, .L80396A08
/* 1A8AC4 80396A44 3264FFFF */   andi      $a0, $s3, 0xffff
.L80396A48:
/* 1A8AC8 80396A48 00161400 */  sll        $v0, $s6, 0x10
/* 1A8ACC 80396A4C 00021C03 */  sra        $v1, $v0, 0x10
/* 1A8AD0 80396A50 2402FFFF */  addiu      $v0, $zero, -1
/* 1A8AD4 80396A54 A640007E */  sh         $zero, 0x7e($s2)
/* 1A8AD8 80396A58 1462000D */  bne        $v1, $v0, .L80396A90
/* 1A8ADC 80396A5C AE400080 */   sw        $zero, 0x80($s2)
/* 1A8AE0 80396A60 86430066 */  lh         $v1, 0x66($s2)
/* 1A8AE4 80396A64 00031040 */  sll        $v0, $v1, 1
/* 1A8AE8 80396A68 00431021 */  addu       $v0, $v0, $v1
/* 1A8AEC 80396A6C 000210C0 */  sll        $v0, $v0, 3
/* 1A8AF0 80396A70 3C01803A */  lui        $at, %hi(D_8039FB34_1B1BB4)
/* 1A8AF4 80396A74 00220821 */  addu       $at, $at, $v0
/* 1A8AF8 80396A78 8422FB34 */  lh         $v0, %lo(D_8039FB34_1B1BB4)($at)
/* 1A8AFC 80396A7C 44820000 */  mtc1       $v0, $f0
/* 1A8B00 80396A80 00000000 */  nop
/* 1A8B04 80396A84 46800020 */  cvt.s.w    $f0, $f0
/* 1A8B08 80396A88 080E5AA8 */  j          .L80396AA0
/* 1A8B0C 80396A8C E6400054 */   swc1      $f0, 0x54($s2)
.L80396A90:
/* 1A8B10 80396A90 44830000 */  mtc1       $v1, $f0
/* 1A8B14 80396A94 00000000 */  nop
/* 1A8B18 80396A98 46800020 */  cvt.s.w    $f0, $f0
/* 1A8B1C 80396A9C E6400054 */  swc1       $f0, 0x54($s2)
.L80396AA0:
/* 1A8B20 80396AA0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1A8B24 80396AA4 8FB60040 */  lw         $s6, 0x40($sp)
/* 1A8B28 80396AA8 8FB5003C */  lw         $s5, 0x3c($sp)
/* 1A8B2C 80396AAC 8FB40038 */  lw         $s4, 0x38($sp)
/* 1A8B30 80396AB0 8FB30034 */  lw         $s3, 0x34($sp)
/* 1A8B34 80396AB4 8FB20030 */  lw         $s2, 0x30($sp)
/* 1A8B38 80396AB8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1A8B3C 80396ABC 8FB00028 */  lw         $s0, 0x28($sp)
/* 1A8B40 80396AC0 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1A8B44 80396AC4 03E00008 */  jr         $ra
/* 1A8B48 80396AC8 00000000 */   nop

glabel func_80396ACC
/* 1A8B4C 80396ACC 10800015 */  beqz       $a0, .L80396B24
/* 1A8B50 80396AD0 30C200FF */   andi      $v0, $a2, 0xff
/* 1A8B54 80396AD4 8C840014 */  lw         $a0, 0x14($a0)
/* 1A8B58 80396AD8 14400002 */  bnez       $v0, .L80396AE4
/* 1A8B5C 80396ADC A0850085 */   sb        $a1, 0x85($a0)
/* 1A8B60 80396AE0 24060001 */  addiu      $a2, $zero, 1
.L80396AE4:
/* 1A8B64 80396AE4 30C300FF */  andi       $v1, $a2, 0xff
/* 1A8B68 80396AE8 240200FF */  addiu      $v0, $zero, 0xff
/* 1A8B6C 80396AEC 0043001A */  div        $zero, $v0, $v1
/* 1A8B70 80396AF0 14600002 */  bnez       $v1, .L80396AFC
/* 1A8B74 80396AF4 00000000 */   nop
/* 1A8B78 80396AF8 0007000D */  break      7
.L80396AFC:
/* 1A8B7C 80396AFC 2401FFFF */   addiu     $at, $zero, -1
/* 1A8B80 80396B00 14610004 */  bne        $v1, $at, .L80396B14
/* 1A8B84 80396B04 3C018000 */   lui       $at, 0x8000
/* 1A8B88 80396B08 14410002 */  bne        $v0, $at, .L80396B14
/* 1A8B8C 80396B0C 00000000 */   nop
/* 1A8B90 80396B10 0006000D */  break      6
.L80396B14:
/* 1A8B94 80396B14 00001012 */   mflo      $v0
/* 1A8B98 80396B18 00000000 */  nop
/* 1A8B9C 80396B1C 00000000 */  nop
/* 1A8BA0 80396B20 A482008A */  sh         $v0, 0x8a($a0)
.L80396B24:
/* 1A8BA4 80396B24 03E00008 */  jr         $ra
/* 1A8BA8 80396B28 00000000 */   nop

glabel func_80396B2C_1A8BAC
/* 1A8BAC 80396B2C 10800003 */  beqz       $a0, .L80396B3C
/* 1A8BB0 80396B30 2402FFFF */   addiu     $v0, $zero, -1
/* 1A8BB4 80396B34 8C820014 */  lw         $v0, 0x14($a0)
/* 1A8BB8 80396B38 8042007D */  lb         $v0, 0x7d($v0)
.L80396B3C:
/* 1A8BBC 80396B3C 03E00008 */  jr         $ra
/* 1A8BC0 80396B40 00000000 */   nop

glabel func_80396B44
/* 1A8BC4 80396B44 10800003 */  beqz       $a0, .L80396B54
/* 1A8BC8 80396B48 2402FFFF */   addiu     $v0, $zero, -1
/* 1A8BCC 80396B4C 8C820014 */  lw         $v0, 0x14($a0)
/* 1A8BD0 80396B50 84420066 */  lh         $v0, 0x66($v0)
.L80396B54:
/* 1A8BD4 80396B54 03E00008 */  jr         $ra
/* 1A8BD8 80396B58 00000000 */   nop
/* 1A8BDC 80396B5C 00000000 */  nop

glabel func_80396B60_1A8BE0
/* 1A8BE0 80396B60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A8BE4 80396B64 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A8BE8 80396B68 00808021 */  addu       $s0, $a0, $zero
/* 1A8BEC 80396B6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A8BF0 80396B70 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A8BF4 80396B74 24020001 */  addiu      $v0, $zero, 1
/* 1A8BF8 80396B78 10620010 */  beq        $v1, $v0, .L80396BBC
/* 1A8BFC 80396B7C 28620002 */   slti      $v0, $v1, 2
/* 1A8C00 80396B80 50400005 */  beql       $v0, $zero, .L80396B98
/* 1A8C04 80396B84 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A8C08 80396B88 10600007 */  beqz       $v1, .L80396BA8
/* 1A8C0C 80396B8C 00001021 */   addu      $v0, $zero, $zero
/* 1A8C10 80396B90 080E5AF8 */  j          .L80396BE0
/* 1A8C14 80396B94 00000000 */   nop
.L80396B98:
/* 1A8C18 80396B98 1062000C */  beq        $v1, $v0, .L80396BCC
/* 1A8C1C 80396B9C 00001021 */   addu      $v0, $zero, $zero
/* 1A8C20 80396BA0 080E5AF8 */  j          .L80396BE0
/* 1A8C24 80396BA4 00000000 */   nop
.L80396BA8:
/* 1A8C28 80396BA8 0C0E5AFD */  jal        func_80396BF4_1A8C74
/* 1A8C2C 80396BAC 00000000 */   nop
/* 1A8C30 80396BB0 24020001 */  addiu      $v0, $zero, 1
/* 1A8C34 80396BB4 080E5AF7 */  j          .L80396BDC
/* 1A8C38 80396BB8 A602001C */   sh        $v0, 0x1c($s0)
.L80396BBC:
/* 1A8C3C 80396BBC 0C0E5B2A */  jal        func_80396CA8_1A8D28
/* 1A8C40 80396BC0 00000000 */   nop
/* 1A8C44 80396BC4 080E5AF8 */  j          .L80396BE0
/* 1A8C48 80396BC8 00001021 */   addu      $v0, $zero, $zero
.L80396BCC:
/* 1A8C4C 80396BCC 0C0E5B14 */  jal        func_80396C50_1A8CD0
/* 1A8C50 80396BD0 00000000 */   nop
/* 1A8C54 80396BD4 080E5AF8 */  j          .L80396BE0
/* 1A8C58 80396BD8 24020001 */   addiu     $v0, $zero, 1
.L80396BDC:
/* 1A8C5C 80396BDC 00001021 */  addu       $v0, $zero, $zero
.L80396BE0:
/* 1A8C60 80396BE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A8C64 80396BE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A8C68 80396BE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A8C6C 80396BEC 03E00008 */  jr         $ra
/* 1A8C70 80396BF0 00000000 */   nop

glabel func_80396BF4_1A8C74
/* 1A8C74 80396BF4 24030004 */  addiu      $v1, $zero, 4
/* 1A8C78 80396BF8 3C02803B */  lui        $v0, %hi(D_803B3E48)
/* 1A8C7C 80396BFC 24423E48 */  addiu      $v0, $v0, %lo(D_803B3E48)
.L80396C00:
/* 1A8C80 80396C00 AC400000 */  sw         $zero, ($v0)
/* 1A8C84 80396C04 2463FFFF */  addiu      $v1, $v1, -1
/* 1A8C88 80396C08 0461FFFD */  bgez       $v1, .L80396C00
/* 1A8C8C 80396C0C 2442FFFC */   addiu     $v0, $v0, -4
/* 1A8C90 80396C10 240200E4 */  addiu      $v0, $zero, 0xe4
.L80396C14:
/* 1A8C94 80396C14 3C01803B */  lui        $at, %hi(D_803A9280)
/* 1A8C98 80396C18 00220821 */  addu       $at, $at, $v0
/* 1A8C9C 80396C1C A0209280 */  sb         $zero, %lo(D_803A9280)($at)
/* 1A8CA0 80396C20 2442FFF4 */  addiu      $v0, $v0, -0xc
/* 1A8CA4 80396C24 0441FFFB */  bgez       $v0, .L80396C14
/* 1A8CA8 80396C28 00000000 */   nop
/* 1A8CAC 80396C2C 3402FFFF */  ori        $v0, $zero, 0xffff
/* 1A8CB0 80396C30 3C01803B */  lui        $at, %hi(D_803A9278)
/* 1A8CB4 80396C34 A4209278 */  sh         $zero, %lo(D_803A9278)($at)
/* 1A8CB8 80396C38 3C01803B */  lui        $at, %hi(D_803A9370)
/* 1A8CBC 80396C3C A4209370 */  sh         $zero, %lo(D_803A9370)($at)
/* 1A8CC0 80396C40 3C01803B */  lui        $at, %hi(D_803A9372)
/* 1A8CC4 80396C44 A4229372 */  sh         $v0, %lo(D_803A9372)($at)
/* 1A8CC8 80396C48 03E00008 */  jr         $ra
/* 1A8CCC 80396C4C 00000000 */   nop

glabel func_80396C50_1A8CD0
/* 1A8CD0 80396C50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A8CD4 80396C54 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A8CD8 80396C58 00008821 */  addu       $s1, $zero, $zero
/* 1A8CDC 80396C5C AFB00010 */  sw         $s0, 0x10($sp)
/* 1A8CE0 80396C60 3C10803B */  lui        $s0, %hi(D_803B3E38)
/* 1A8CE4 80396C64 26103E38 */  addiu      $s0, $s0, %lo(D_803B3E38)
/* 1A8CE8 80396C68 AFBF0018 */  sw         $ra, 0x18($sp)
.L80396C6C:
/* 1A8CEC 80396C6C 8E040000 */  lw         $a0, ($s0)
/* 1A8CF0 80396C70 10800004 */  beqz       $a0, .L80396C84
/* 1A8CF4 80396C74 26310001 */   addiu     $s1, $s1, 1
/* 1A8CF8 80396C78 0C025D58 */  jal        func_80097560
/* 1A8CFC 80396C7C 00000000 */   nop
/* 1A8D00 80396C80 AE000000 */  sw         $zero, ($s0)
.L80396C84:
/* 1A8D04 80396C84 2A220005 */  slti       $v0, $s1, 5
/* 1A8D08 80396C88 1440FFF8 */  bnez       $v0, .L80396C6C
/* 1A8D0C 80396C8C 26100004 */   addiu     $s0, $s0, 4
/* 1A8D10 80396C90 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A8D14 80396C94 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A8D18 80396C98 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A8D1C 80396C9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A8D20 80396CA0 03E00008 */  jr         $ra
/* 1A8D24 80396CA4 00000000 */   nop

glabel func_80396CA8_1A8D28
/* 1A8D28 80396CA8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1A8D2C 80396CAC AFB50024 */  sw         $s5, 0x24($sp)
/* 1A8D30 80396CB0 3C15803B */  lui        $s5, %hi(D_803B3E38)
/* 1A8D34 80396CB4 26B53E38 */  addiu      $s5, $s5, %lo(D_803B3E38)
/* 1A8D38 80396CB8 AFB40020 */  sw         $s4, 0x20($sp)
/* 1A8D3C 80396CBC 3C14803B */  lui        $s4, %hi(D_803A9280)
/* 1A8D40 80396CC0 26949280 */  addiu      $s4, $s4, %lo(D_803A9280)
/* 1A8D44 80396CC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A8D48 80396CC8 00009021 */  addu       $s2, $zero, $zero
/* 1A8D4C 80396CCC AFBF0028 */  sw         $ra, 0x28($sp)
/* 1A8D50 80396CD0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1A8D54 80396CD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A8D58 80396CD8 AFB00010 */  sw         $s0, 0x10($sp)
.L80396CDC:
/* 1A8D5C 80396CDC 92820000 */  lbu        $v0, ($s4)
/* 1A8D60 80396CE0 50400062 */  beql       $v0, $zero, .L80396E6C
/* 1A8D64 80396CE4 2694000C */   addiu     $s4, $s4, 0xc
/* 1A8D68 80396CE8 3C03803B */  lui        $v1, %hi(D_803A9282)
/* 1A8D6C 80396CEC 00721821 */  addu       $v1, $v1, $s2
/* 1A8D70 80396CF0 94639282 */  lhu        $v1, %lo(D_803A9282)($v1)
/* 1A8D74 80396CF4 3C02803B */  lui        $v0, %hi(D_803A9370)
/* 1A8D78 80396CF8 94429370 */  lhu        $v0, %lo(D_803A9370)($v0)
/* 1A8D7C 80396CFC 5462005B */  bnel       $v1, $v0, .L80396E6C
/* 1A8D80 80396D00 2694000C */   addiu     $s4, $s4, 0xc
/* 1A8D84 80396D04 3C04803B */  lui        $a0, %hi(D_803A9280)
/* 1A8D88 80396D08 24849280 */  addiu      $a0, $a0, %lo(D_803A9280)
/* 1A8D8C 80396D0C 0C0E5BAF */  jal        func_80396EBC_1A8F3C
/* 1A8D90 80396D10 02442021 */   addu      $a0, $s2, $a0
/* 1A8D94 80396D14 00021600 */  sll        $v0, $v0, 0x18
/* 1A8D98 80396D18 00028E03 */  sra        $s1, $v0, 0x18
/* 1A8D9C 80396D1C 2402FFFF */  addiu      $v0, $zero, -1
/* 1A8DA0 80396D20 1222004B */  beq        $s1, $v0, .L80396E50
/* 1A8DA4 80396D24 00111880 */   sll       $v1, $s1, 2
/* 1A8DA8 80396D28 00759821 */  addu       $s3, $v1, $s5
/* 1A8DAC 80396D2C 8E640000 */  lw         $a0, ($s3)
/* 1A8DB0 80396D30 1080000B */  beqz       $a0, .L80396D60
/* 1A8DB4 80396D34 00118100 */   sll       $s0, $s1, 4
/* 1A8DB8 80396D38 3C05803B */  lui        $a1, %hi(D_803A9286)
/* 1A8DBC 80396D3C 00B22821 */  addu       $a1, $a1, $s2
/* 1A8DC0 80396D40 84A59286 */  lh         $a1, %lo(D_803A9286)($a1)
/* 1A8DC4 80396D44 3C06803B */  lui        $a2, %hi(D_803A9288)
/* 1A8DC8 80396D48 00D23021 */  addu       $a2, $a2, $s2
/* 1A8DCC 80396D4C 84C69288 */  lh         $a2, %lo(D_803A9288)($a2)
/* 1A8DD0 80396D50 0C0E5A47 */  jal        func_8039691C
/* 1A8DD4 80396D54 00003821 */   addu      $a3, $zero, $zero
/* 1A8DD8 80396D58 080E5B95 */  j          .L80396E54
/* 1A8DDC 80396D5C A2800000 */   sb        $zero, ($s4)
.L80396D60:
/* 1A8DE0 80396D60 3C02803A */  lui        $v0, %hi(D_803A1580_1B3600)
/* 1A8DE4 80396D64 00431021 */  addu       $v0, $v0, $v1
/* 1A8DE8 80396D68 94421580 */  lhu        $v0, %lo(D_803A1580_1B3600)($v0)
/* 1A8DEC 80396D6C 3C01803B */  lui        $at, %hi(D_803A9228)
/* 1A8DF0 80396D70 00300821 */  addu       $at, $at, $s0
/* 1A8DF4 80396D74 A4229228 */  sh         $v0, %lo(D_803A9228)($at)
/* 1A8DF8 80396D78 3C02803A */  lui        $v0, %hi(D_803A1582_1B3602)
/* 1A8DFC 80396D7C 00431021 */  addu       $v0, $v0, $v1
/* 1A8E00 80396D80 94421582 */  lhu        $v0, %lo(D_803A1582_1B3602)($v0)
/* 1A8E04 80396D84 3C01803B */  lui        $at, %hi(D_803A922A)
/* 1A8E08 80396D88 00300821 */  addu       $at, $at, $s0
/* 1A8E0C 80396D8C A422922A */  sh         $v0, %lo(D_803A922A)($at)
/* 1A8E10 80396D90 3C02803B */  lui        $v0, %hi(D_803A9284)
/* 1A8E14 80396D94 00521021 */  addu       $v0, $v0, $s2
/* 1A8E18 80396D98 90429284 */  lbu        $v0, %lo(D_803A9284)($v0)
/* 1A8E1C 80396D9C 3C01803B */  lui        $at, %hi(D_803A922C)
/* 1A8E20 80396DA0 00300821 */  addu       $at, $at, $s0
/* 1A8E24 80396DA4 A022922C */  sb         $v0, %lo(D_803A922C)($at)
/* 1A8E28 80396DA8 3C02803B */  lui        $v0, %hi(D_803A928A)
/* 1A8E2C 80396DAC 00521021 */  addu       $v0, $v0, $s2
/* 1A8E30 80396DB0 9042928A */  lbu        $v0, %lo(D_803A928A)($v0)
/* 1A8E34 80396DB4 3C01803B */  lui        $at, %hi(D_803A922D)
/* 1A8E38 80396DB8 00300821 */  addu       $at, $at, $s0
/* 1A8E3C 80396DBC A022922D */  sb         $v0, %lo(D_803A922D)($at)
/* 1A8E40 80396DC0 3C02803B */  lui        $v0, %hi(D_803A9286)
/* 1A8E44 80396DC4 00521021 */  addu       $v0, $v0, $s2
/* 1A8E48 80396DC8 94429286 */  lhu        $v0, %lo(D_803A9286)($v0)
/* 1A8E4C 80396DCC 001188C0 */  sll        $s1, $s1, 3
/* 1A8E50 80396DD0 3C01803B */  lui        $at, %hi(D_803A922E)
/* 1A8E54 80396DD4 00300821 */  addu       $at, $at, $s0
/* 1A8E58 80396DD8 A422922E */  sh         $v0, %lo(D_803A922E)($at)
/* 1A8E5C 80396DDC 3C03803B */  lui        $v1, %hi(D_803A9288)
/* 1A8E60 80396DE0 00721821 */  addu       $v1, $v1, $s2
/* 1A8E64 80396DE4 94639288 */  lhu        $v1, %lo(D_803A9288)($v1)
/* 1A8E68 80396DE8 3C02803B */  lui        $v0, %hi(D_803A9200)
/* 1A8E6C 80396DEC 24429200 */  addiu      $v0, $v0, %lo(D_803A9200)
/* 1A8E70 80396DF0 02228821 */  addu       $s1, $s1, $v0
/* 1A8E74 80396DF4 3C01803B */  lui        $at, %hi(D_803A9232)
/* 1A8E78 80396DF8 00300821 */  addu       $at, $at, $s0
/* 1A8E7C 80396DFC A4209232 */  sh         $zero, %lo(D_803A9232)($at)
/* 1A8E80 80396E00 3C01803B */  lui        $at, %hi(D_803A9234)
/* 1A8E84 80396E04 00300821 */  addu       $at, $at, $s0
/* 1A8E88 80396E08 AC339234 */  sw         $s3, %lo(D_803A9234)($at)
/* 1A8E8C 80396E0C 3C01803B */  lui        $at, %hi(D_803A9230)
/* 1A8E90 80396E10 00300821 */  addu       $at, $at, $s0
/* 1A8E94 80396E14 A4239230 */  sh         $v1, %lo(D_803A9230)($at)
/* 1A8E98 80396E18 0C025C49 */  jal        func_80097124
/* 1A8E9C 80396E1C 02202021 */   addu      $a0, $s1, $zero
/* 1A8EA0 80396E20 02202021 */  addu       $a0, $s1, $zero
/* 1A8EA4 80396E24 3C05803B */  lui        $a1, %hi(D_803A9228)
/* 1A8EA8 80396E28 24A59228 */  addiu      $a1, $a1, %lo(D_803A9228)
/* 1A8EAC 80396E2C 0C025C4C */  jal        func_80097130
/* 1A8EB0 80396E30 02052821 */   addu      $a1, $s0, $a1
/* 1A8EB4 80396E34 3C048039 */  lui        $a0, %hi(D_80395500)
/* 1A8EB8 80396E38 24845500 */  addiu      $a0, $a0, %lo(D_80395500)
/* 1A8EBC 80396E3C 02202821 */  addu       $a1, $s1, $zero
/* 1A8EC0 80396E40 2406012C */  addiu      $a2, $zero, 0x12c
/* 1A8EC4 80396E44 0C025D06 */  jal        func_80097418
/* 1A8EC8 80396E48 24070001 */   addiu     $a3, $zero, 1
/* 1A8ECC 80396E4C AE620000 */  sw         $v0, ($s3)
.L80396E50:
/* 1A8ED0 80396E50 A2800000 */  sb         $zero, ($s4)
.L80396E54:
/* 1A8ED4 80396E54 3C02803B */  lui        $v0, %hi(D_803A9278)
/* 1A8ED8 80396E58 94429278 */  lhu        $v0, %lo(D_803A9278)($v0)
/* 1A8EDC 80396E5C 2442FFFF */  addiu      $v0, $v0, -1
/* 1A8EE0 80396E60 3C01803B */  lui        $at, %hi(D_803A9278)
/* 1A8EE4 80396E64 A4229278 */  sh         $v0, %lo(D_803A9278)($at)
/* 1A8EE8 80396E68 2694000C */  addiu      $s4, $s4, 0xc
.L80396E6C:
/* 1A8EEC 80396E6C 3C02803B */  lui        $v0, %hi(D_803A9370)
/* 1A8EF0 80396E70 24429370 */  addiu      $v0, $v0, %lo(D_803A9370)
/* 1A8EF4 80396E74 0282102A */  slt        $v0, $s4, $v0
/* 1A8EF8 80396E78 1440FF98 */  bnez       $v0, .L80396CDC
/* 1A8EFC 80396E7C 2652000C */   addiu     $s2, $s2, 0xc
/* 1A8F00 80396E80 3C02803B */  lui        $v0, %hi(D_803A9370)
/* 1A8F04 80396E84 94429370 */  lhu        $v0, %lo(D_803A9370)($v0)
/* 1A8F08 80396E88 24420001 */  addiu      $v0, $v0, 1
/* 1A8F0C 80396E8C 3C01803B */  lui        $at, %hi(D_803A9370)
/* 1A8F10 80396E90 A4229370 */  sh         $v0, %lo(D_803A9370)($at)
/* 1A8F14 80396E94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1A8F18 80396E98 8FB50024 */  lw         $s5, 0x24($sp)
/* 1A8F1C 80396E9C 8FB40020 */  lw         $s4, 0x20($sp)
/* 1A8F20 80396EA0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1A8F24 80396EA4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A8F28 80396EA8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A8F2C 80396EAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A8F30 80396EB0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1A8F34 80396EB4 03E00008 */  jr         $ra
/* 1A8F38 80396EB8 00000000 */   nop

glabel func_80396EBC_1A8F3C
/* 1A8F3C 80396EBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A8F40 80396EC0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A8F44 80396EC4 00809021 */  addu       $s2, $a0, $zero
/* 1A8F48 80396EC8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A8F4C 80396ECC AFB10014 */  sw         $s1, 0x14($sp)
/* 1A8F50 80396ED0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A8F54 80396ED4 92430005 */  lbu        $v1, 5($s2)
/* 1A8F58 80396ED8 28620002 */  slti       $v0, $v1, 2
/* 1A8F5C 80396EDC 14400024 */  bnez       $v0, .L80396F70
/* 1A8F60 80396EE0 00031600 */   sll       $v0, $v1, 0x18
/* 1A8F64 80396EE4 24100002 */  addiu      $s0, $zero, 2
/* 1A8F68 80396EE8 3C11803B */  lui        $s1, %hi(D_803B3E40)
/* 1A8F6C 80396EEC 26313E40 */  addiu      $s1, $s1, %lo(D_803B3E40)
.L80396EF0:
/* 1A8F70 80396EF0 8E240000 */  lw         $a0, ($s1)
/* 1A8F74 80396EF4 0C0E5ACB */  jal        func_80396B2C_1A8BAC
/* 1A8F78 80396EF8 00000000 */   nop
/* 1A8F7C 80396EFC 9243000A */  lbu        $v1, 0xa($s2)
/* 1A8F80 80396F00 54430006 */  bnel       $v0, $v1, .L80396F1C
/* 1A8F84 80396F04 26100001 */   addiu     $s0, $s0, 1
/* 1A8F88 80396F08 9242000B */  lbu        $v0, 0xb($s2)
/* 1A8F8C 80396F0C 10400016 */  beqz       $v0, .L80396F68
/* 1A8F90 80396F10 00101600 */   sll       $v0, $s0, 0x18
/* 1A8F94 80396F14 080E5BDD */  j          .L80396F74
/* 1A8F98 80396F18 00021603 */   sra       $v0, $v0, 0x18
.L80396F1C:
/* 1A8F9C 80396F1C 2A020005 */  slti       $v0, $s0, 5
/* 1A8FA0 80396F20 1440FFF3 */  bnez       $v0, .L80396EF0
/* 1A8FA4 80396F24 26310004 */   addiu     $s1, $s1, 4
/* 1A8FA8 80396F28 3C02803B */  lui        $v0, %hi(D_803B3E40)
/* 1A8FAC 80396F2C 8C423E40 */  lw         $v0, %lo(D_803B3E40)($v0)
/* 1A8FB0 80396F30 10400010 */  beqz       $v0, .L80396F74
/* 1A8FB4 80396F34 24020002 */   addiu     $v0, $zero, 2
/* 1A8FB8 80396F38 3C02803B */  lui        $v0, %hi(D_803B3E44)
/* 1A8FBC 80396F3C 8C423E44 */  lw         $v0, %lo(D_803B3E44)($v0)
/* 1A8FC0 80396F40 14400003 */  bnez       $v0, .L80396F50
/* 1A8FC4 80396F44 00000000 */   nop
/* 1A8FC8 80396F48 080E5BDD */  j          .L80396F74
/* 1A8FCC 80396F4C 24020003 */   addiu     $v0, $zero, 3
.L80396F50:
/* 1A8FD0 80396F50 3C02803B */  lui        $v0, %hi(D_803B3E48)
/* 1A8FD4 80396F54 8C423E48 */  lw         $v0, %lo(D_803B3E48)($v0)
/* 1A8FD8 80396F58 0002102B */  sltu       $v0, $zero, $v0
/* 1A8FDC 80396F5C 00021023 */  negu       $v0, $v0
/* 1A8FE0 80396F60 080E5BDD */  j          .L80396F74
/* 1A8FE4 80396F64 34420004 */   ori       $v0, $v0, 4
.L80396F68:
/* 1A8FE8 80396F68 080E5BDD */  j          .L80396F74
/* 1A8FEC 80396F6C 2402FFFF */   addiu     $v0, $zero, -1
.L80396F70:
/* 1A8FF0 80396F70 00021603 */  sra        $v0, $v0, 0x18
.L80396F74:
/* 1A8FF4 80396F74 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A8FF8 80396F78 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A8FFC 80396F7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A9000 80396F80 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A9004 80396F84 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A9008 80396F88 03E00008 */  jr         $ra
/* 1A900C 80396F8C 00000000 */   nop

glabel func_80396F90
/* 1A9010 80396F90 00005021 */  addu       $t2, $zero, $zero
/* 1A9014 80396F94 93AD0017 */  lbu        $t5, 0x17($sp)
/* 1A9018 80396F98 3C02803B */  lui        $v0, %hi(D_803A9372)
/* 1A901C 80396F9C 94429372 */  lhu        $v0, %lo(D_803A9372)($v0)
/* 1A9020 80396FA0 97AE0012 */  lhu        $t6, 0x12($sp)
/* 1A9024 80396FA4 93AC001B */  lbu        $t4, 0x1b($sp)
/* 1A9028 80396FA8 01A21007 */  srav       $v0, $v0, $t5
/* 1A902C 80396FAC 30420001 */  andi       $v0, $v0, 1
/* 1A9030 80396FB0 10400062 */  beqz       $v0, .L8039713C
/* 1A9034 80396FB4 2409FFFF */   addiu     $t1, $zero, -1
/* 1A9038 80396FB8 00004021 */  addu       $t0, $zero, $zero
/* 1A903C 80396FBC 240B0001 */  addiu      $t3, $zero, 1
/* 1A9040 80396FC0 00001821 */  addu       $v1, $zero, $zero
.L80396FC4:
/* 1A9044 80396FC4 3C02803B */  lui        $v0, %hi(D_803A9280)
/* 1A9048 80396FC8 00431021 */  addu       $v0, $v0, $v1
/* 1A904C 80396FCC 90429280 */  lbu        $v0, %lo(D_803A9280)($v0)
/* 1A9050 80396FD0 50400008 */  beql       $v0, $zero, .L80396FF4
/* 1A9054 80396FD4 01004821 */   addu      $t1, $t0, $zero
/* 1A9058 80396FD8 3C02803B */  lui        $v0, %hi(D_803A928B)
/* 1A905C 80396FDC 00431021 */  addu       $v0, $v0, $v1
/* 1A9060 80396FE0 9042928B */  lbu        $v0, %lo(D_803A928B)($v0)
/* 1A9064 80396FE4 504B0003 */  beql       $v0, $t3, .L80396FF4
/* 1A9068 80396FE8 240A0001 */   addiu     $t2, $zero, 1
/* 1A906C 80396FEC 080E5BFE */  j          .L80396FF8
/* 1A9070 80396FF0 25080001 */   addiu     $t0, $t0, 1
.L80396FF4:
/* 1A9074 80396FF4 25080001 */  addiu      $t0, $t0, 1
.L80396FF8:
/* 1A9078 80396FF8 29020014 */  slti       $v0, $t0, 0x14
/* 1A907C 80396FFC 1440FFF1 */  bnez       $v0, .L80396FC4
/* 1A9080 80397000 2463000C */   addiu     $v1, $v1, 0xc
/* 1A9084 80397004 2402FFFF */  addiu      $v0, $zero, -1
/* 1A9088 80397008 1122004C */  beq        $t1, $v0, .L8039713C
/* 1A908C 8039700C 2D820001 */   sltiu     $v0, $t4, 1
/* 1A9090 80397010 01421024 */  and        $v0, $t2, $v0
/* 1A9094 80397014 14400049 */  bnez       $v0, .L8039713C
/* 1A9098 80397018 3082FFFF */   andi      $v0, $a0, 0xffff
/* 1A909C 8039701C 3C014040 */  lui        $at, 0x4040
/* 1A90A0 80397020 44810000 */  mtc1       $at, $f0
/* 1A90A4 80397024 00000000 */  nop
/* 1A90A8 80397028 44821000 */  mtc1       $v0, $f2
/* 1A90AC 8039702C 00000000 */  nop
/* 1A90B0 80397030 468010A0 */  cvt.s.w    $f2, $f2
/* 1A90B4 80397034 46001082 */  mul.s      $f2, $f2, $f0
/* 1A90B8 80397038 00091840 */  sll        $v1, $t1, 1
/* 1A90BC 8039703C 00691821 */  addu       $v1, $v1, $t1
/* 1A90C0 80397040 00031880 */  sll        $v1, $v1, 2
/* 1A90C4 80397044 24020001 */  addiu      $v0, $zero, 1
/* 1A90C8 80397048 3C01803B */  lui        $at, %hi(D_803A9280)
/* 1A90CC 8039704C 00230821 */  addu       $at, $at, $v1
/* 1A90D0 80397050 A0229280 */  sb         $v0, %lo(D_803A9280)($at)
/* 1A90D4 80397054 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A90D8 80397058 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A90DC 8039705C 46800020 */  cvt.s.w    $f0, $f0
/* 1A90E0 80397060 46001083 */  div.s      $f2, $f2, $f0
/* 1A90E4 80397064 3C02803B */  lui        $v0, %hi(D_803A9370)
/* 1A90E8 80397068 94429370 */  lhu        $v0, %lo(D_803A9370)($v0)
/* 1A90EC 8039706C 44820000 */  mtc1       $v0, $f0
/* 1A90F0 80397070 00000000 */  nop
/* 1A90F4 80397074 46800020 */  cvt.s.w    $f0, $f0
/* 1A90F8 80397078 46020080 */  add.s      $f2, $f0, $f2
/* 1A90FC 8039707C 3C014F00 */  lui        $at, 0x4f00
/* 1A9100 80397080 44810000 */  mtc1       $at, $f0
/* 1A9104 80397084 00000000 */  nop
/* 1A9108 80397088 4602003E */  c.le.s     $f0, $f2
/* 1A910C 8039708C 00000000 */  nop
/* 1A9110 80397090 00000000 */  nop
/* 1A9114 80397094 45010006 */  bc1t       .L803970B0
/* 1A9118 80397098 00604021 */   addu      $t0, $v1, $zero
/* 1A911C 8039709C 4600100D */  trunc.w.s  $f0, $f2
/* 1A9120 803970A0 44040000 */  mfc1       $a0, $f0
/* 1A9124 803970A4 00000000 */  nop
/* 1A9128 803970A8 080E5C33 */  j          .L803970CC
/* 1A912C 803970AC 00091040 */   sll       $v0, $t1, 1
.L803970B0:
/* 1A9130 803970B0 46001001 */  sub.s      $f0, $f2, $f0
/* 1A9134 803970B4 4600008D */  trunc.w.s  $f2, $f0
/* 1A9138 803970B8 44041000 */  mfc1       $a0, $f2
/* 1A913C 803970BC 00000000 */  nop
/* 1A9140 803970C0 3C028000 */  lui        $v0, 0x8000
/* 1A9144 803970C4 00822025 */  or         $a0, $a0, $v0
/* 1A9148 803970C8 00091040 */  sll        $v0, $t1, 1
.L803970CC:
/* 1A914C 803970CC 00491021 */  addu       $v0, $v0, $t1
/* 1A9150 803970D0 00021080 */  sll        $v0, $v0, 2
/* 1A9154 803970D4 3C01803B */  lui        $at, %hi(D_803A9284)
/* 1A9158 803970D8 00220821 */  addu       $at, $at, $v0
/* 1A915C 803970DC A0259284 */  sb         $a1, %lo(D_803A9284)($at)
/* 1A9160 803970E0 3C01803B */  lui        $at, %hi(D_803A9285)
/* 1A9164 803970E4 00220821 */  addu       $at, $at, $v0
/* 1A9168 803970E8 A0269285 */  sb         $a2, %lo(D_803A9285)($at)
/* 1A916C 803970EC 3C01803B */  lui        $at, %hi(D_803A928A)
/* 1A9170 803970F0 00220821 */  addu       $at, $at, $v0
/* 1A9174 803970F4 A02D928A */  sb         $t5, %lo(D_803A928A)($at)
/* 1A9178 803970F8 3C01803B */  lui        $at, %hi(D_803A928B)
/* 1A917C 803970FC 00220821 */  addu       $at, $at, $v0
/* 1A9180 80397100 A02C928B */  sb         $t4, %lo(D_803A928B)($at)
/* 1A9184 80397104 3C03803B */  lui        $v1, %hi(D_803A9278)
/* 1A9188 80397108 94639278 */  lhu        $v1, %lo(D_803A9278)($v1)
/* 1A918C 8039710C 3C01803B */  lui        $at, %hi(D_803A9282)
/* 1A9190 80397110 00280821 */  addu       $at, $at, $t0
/* 1A9194 80397114 A4249282 */  sh         $a0, %lo(D_803A9282)($at)
/* 1A9198 80397118 3C01803B */  lui        $at, %hi(D_803A9286)
/* 1A919C 8039711C 00220821 */  addu       $at, $at, $v0
/* 1A91A0 80397120 A4279286 */  sh         $a3, %lo(D_803A9286)($at)
/* 1A91A4 80397124 3C01803B */  lui        $at, %hi(D_803A9288)
/* 1A91A8 80397128 00220821 */  addu       $at, $at, $v0
/* 1A91AC 8039712C A42E9288 */  sh         $t6, %lo(D_803A9288)($at)
/* 1A91B0 80397130 24630001 */  addiu      $v1, $v1, 1
/* 1A91B4 80397134 3C01803B */  lui        $at, %hi(D_803A9278)
/* 1A91B8 80397138 A4239278 */  sh         $v1, %lo(D_803A9278)($at)
.L8039713C:
/* 1A91BC 8039713C 03E00008 */  jr         $ra
/* 1A91C0 80397140 00000000 */   nop

glabel func_80397144
/* 1A91C4 80397144 3C02803B */  lui        $v0, %hi(D_803A9372)
/* 1A91C8 80397148 94429372 */  lhu        $v0, %lo(D_803A9372)($v0)
/* 1A91CC 8039714C 00042027 */  nor        $a0, $zero, $a0
/* 1A91D0 80397150 00441024 */  and        $v0, $v0, $a0
/* 1A91D4 80397154 3C01803B */  lui        $at, %hi(D_803A9372)
/* 1A91D8 80397158 A4229372 */  sh         $v0, %lo(D_803A9372)($at)
/* 1A91DC 8039715C 03E00008 */  jr         $ra
/* 1A91E0 80397160 00000000 */   nop

glabel func_80397164
/* 1A91E4 80397164 3C02803B */  lui        $v0, %hi(D_803A9372)
/* 1A91E8 80397168 94429372 */  lhu        $v0, %lo(D_803A9372)($v0)
/* 1A91EC 8039716C 00441025 */  or         $v0, $v0, $a0
/* 1A91F0 80397170 3C01803B */  lui        $at, %hi(D_803A9372)
/* 1A91F4 80397174 A4229372 */  sh         $v0, %lo(D_803A9372)($at)
/* 1A91F8 80397178 03E00008 */  jr         $ra
/* 1A91FC 8039717C 00000000 */   nop

glabel func_80397180
/* 1A9200 80397180 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A9204 80397184 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1A9208 80397188 3C048039 */  lui        $a0, %hi(D_80397230)
/* 1A920C 8039718C 24847230 */  addiu      $a0, $a0, %lo(D_80397230)
/* 1A9210 80397190 0C025D6B */  jal        func_800975AC
/* 1A9214 80397194 24050001 */   addiu     $a1, $zero, 1
/* 1A9218 80397198 3C04803A */  lui        $a0, %hi(D_803981A0)
/* 1A921C 8039719C 248481A0 */  addiu      $a0, $a0, %lo(D_803981A0)
/* 1A9220 803971A0 0C025D6B */  jal        func_800975AC
/* 1A9224 803971A4 24050001 */   addiu     $a1, $zero, 1
/* 1A9228 803971A8 3C04803A */  lui        $a0, %hi(D_803987C0)
/* 1A922C 803971AC 248487C0 */  addiu      $a0, $a0, %lo(D_803987C0)
/* 1A9230 803971B0 0C025D6B */  jal        func_800975AC
/* 1A9234 803971B4 24050001 */   addiu     $a1, $zero, 1
/* 1A9238 803971B8 3C04803A */  lui        $a0, %hi(D_80399408)
/* 1A923C 803971BC 24849408 */  addiu      $a0, $a0, %lo(D_80399408)
/* 1A9240 803971C0 0C025D6B */  jal        func_800975AC
/* 1A9244 803971C4 24050001 */   addiu     $a1, $zero, 1
/* 1A9248 803971C8 3C04803A */  lui        $a0, %hi(D_80399D30)
/* 1A924C 803971CC 24849D30 */  addiu      $a0, $a0, %lo(D_80399D30)
/* 1A9250 803971D0 0C025D6B */  jal        func_800975AC
/* 1A9254 803971D4 24050001 */   addiu     $a1, $zero, 1
/* 1A9258 803971D8 3C04803A */  lui        $a0, %hi(D_8039A840)
/* 1A925C 803971DC 2484A840 */  addiu      $a0, $a0, %lo(D_8039A840)
/* 1A9260 803971E0 0C025D6B */  jal        func_800975AC
/* 1A9264 803971E4 24050001 */   addiu     $a1, $zero, 1
/* 1A9268 803971E8 3C04803A */  lui        $a0, %hi(D_8039B330)
/* 1A926C 803971EC 2484B330 */  addiu      $a0, $a0, %lo(D_8039B330)
/* 1A9270 803971F0 0C025D6B */  jal        func_800975AC
/* 1A9274 803971F4 24050001 */   addiu     $a1, $zero, 1
/* 1A9278 803971F8 3C04803A */  lui        $a0, %hi(D_8039BE40)
/* 1A927C 803971FC 2484BE40 */  addiu      $a0, $a0, %lo(D_8039BE40)
/* 1A9280 80397200 0C025D6B */  jal        func_800975AC
/* 1A9284 80397204 24050001 */   addiu     $a1, $zero, 1
/* 1A9288 80397208 3C04803A */  lui        $a0, %hi(D_8039C390)
/* 1A928C 8039720C 2484C390 */  addiu      $a0, $a0, %lo(D_8039C390)
/* 1A9290 80397210 0C025D6B */  jal        func_800975AC
/* 1A9294 80397214 24050001 */   addiu     $a1, $zero, 1
/* 1A9298 80397218 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1A929C 8039721C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A92A0 80397220 03E00008 */  jr         $ra
/* 1A92A4 80397224 00000000 */   nop
/* 1A92A8 80397228 00000000 */  nop
/* 1A92AC 8039722C 00000000 */  nop

glabel func_80397230_1A92B0
/* 1A92B0 80397230 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A92B4 80397234 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A92B8 80397238 00808021 */  addu       $s0, $a0, $zero
/* 1A92BC 8039723C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A92C0 80397240 AFB20018 */  sw         $s2, 0x18($sp)
/* 1A92C4 80397244 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A92C8 80397248 9603001C */  lhu        $v1, 0x1c($s0)
/* 1A92CC 8039724C 24120001 */  addiu      $s2, $zero, 1
/* 1A92D0 80397250 10720033 */  beq        $v1, $s2, .L80397320
/* 1A92D4 80397254 28620002 */   slti      $v0, $v1, 2
/* 1A92D8 80397258 50400005 */  beql       $v0, $zero, .L80397270
/* 1A92DC 8039725C 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A92E0 80397260 10600007 */  beqz       $v1, .L80397280
/* 1A92E4 80397264 00000000 */   nop
/* 1A92E8 80397268 080E5CEF */  j          .L803973BC
/* 1A92EC 8039726C 00000000 */   nop
.L80397270:
/* 1A92F0 80397270 10620033 */  beq        $v1, $v0, .L80397340
/* 1A92F4 80397274 00000000 */   nop
/* 1A92F8 80397278 080E5CEF */  j          .L803973BC
/* 1A92FC 8039727C 00000000 */   nop
.L80397280:
/* 1A9300 80397280 3C03803B */  lui        $v1, %hi(D_803B3E34)
/* 1A9304 80397284 8C633E34 */  lw         $v1, %lo(D_803B3E34)($v1)
/* 1A9308 80397288 000310C0 */  sll        $v0, $v1, 3
/* 1A930C 8039728C 00431023 */  subu       $v0, $v0, $v1
/* 1A9310 80397290 8E03000C */  lw         $v1, 0xc($s0)
/* 1A9314 80397294 00021100 */  sll        $v0, $v0, 4
/* 1A9318 80397298 10720010 */  beq        $v1, $s2, .L803972DC
/* 1A931C 8039729C 24510060 */   addiu     $s1, $v0, 0x60
/* 1A9320 803972A0 28620002 */  slti       $v0, $v1, 2
/* 1A9324 803972A4 50400005 */  beql       $v0, $zero, .L803972BC
/* 1A9328 803972A8 24020002 */   addiu     $v0, $zero, 2
/* 1A932C 803972AC 10600007 */  beqz       $v1, .L803972CC
/* 1A9330 803972B0 00000000 */   nop
/* 1A9334 803972B4 080E5CC1 */  j          .L80397304
/* 1A9338 803972B8 00000000 */   nop
.L803972BC:
/* 1A933C 803972BC 1062000B */  beq        $v1, $v0, .L803972EC
/* 1A9340 803972C0 00000000 */   nop
/* 1A9344 803972C4 080E5CC1 */  j          .L80397304
/* 1A9348 803972C8 00000000 */   nop
.L803972CC:
/* 1A934C 803972CC 0C032663 */  jal        func_800C998C
/* 1A9350 803972D0 02202021 */   addu      $a0, $s1, $zero
/* 1A9354 803972D4 080E5CBE */  j          .L803972F8
/* 1A9358 803972D8 AE020014 */   sw        $v0, 0x14($s0)
.L803972DC:
/* 1A935C 803972DC 0C025E63 */  jal        func_8009798C
/* 1A9360 803972E0 02202021 */   addu      $a0, $s1, $zero
/* 1A9364 803972E4 080E5CBE */  j          .L803972F8
/* 1A9368 803972E8 AE020014 */   sw        $v0, 0x14($s0)
.L803972EC:
/* 1A936C 803972EC 0C026127 */  jal        func_8009849C
/* 1A9370 803972F0 02202021 */   addu      $a0, $s1, $zero
/* 1A9374 803972F4 AE020014 */  sw         $v0, 0x14($s0)
.L803972F8:
/* 1A9378 803972F8 00402021 */  addu       $a0, $v0, $zero
/* 1A937C 803972FC 0C030134 */  jal        bzero
/* 1A9380 80397300 02202821 */   addu      $a1, $s1, $zero
.L80397304:
/* 1A9384 80397304 8E040014 */  lw         $a0, 0x14($s0)
/* 1A9388 80397308 0C0E5CF8 */  jal        func_803973E0_1A9460
/* 1A938C 8039730C 00000000 */   nop
/* 1A9390 80397310 00001021 */  addu       $v0, $zero, $zero
/* 1A9394 80397314 24030001 */  addiu      $v1, $zero, 1
/* 1A9398 80397318 080E5CF1 */  j          .L803973C4
/* 1A939C 8039731C A603001C */   sh        $v1, 0x1c($s0)
.L80397320:
/* 1A93A0 80397320 8E040014 */  lw         $a0, 0x14($s0)
/* 1A93A4 80397324 0C0E5EE9 */  jal        func_80397BA4_1A9C24
/* 1A93A8 80397328 00000000 */   nop
/* 1A93AC 8039732C 10400002 */  beqz       $v0, .L80397338
/* 1A93B0 80397330 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1A93B4 80397334 A602001C */  sh         $v0, 0x1c($s0)
.L80397338:
/* 1A93B8 80397338 080E5CF1 */  j          .L803973C4
/* 1A93BC 8039733C 00001021 */   addu      $v0, $zero, $zero
.L80397340:
/* 1A93C0 80397340 8E040014 */  lw         $a0, 0x14($s0)
/* 1A93C4 80397344 0C0E5EE7 */  jal        func_80397B9C_1A9C1C
/* 1A93C8 80397348 00000000 */   nop
/* 1A93CC 8039734C 8E03000C */  lw         $v1, 0xc($s0)
/* 1A93D0 80397350 10720010 */  beq        $v1, $s2, .L80397394
/* 1A93D4 80397354 28620002 */   slti      $v0, $v1, 2
/* 1A93D8 80397358 50400005 */  beql       $v0, $zero, .L80397370
/* 1A93DC 8039735C 24020002 */   addiu     $v0, $zero, 2
/* 1A93E0 80397360 10600007 */  beqz       $v1, .L80397380
/* 1A93E4 80397364 24020001 */   addiu     $v0, $zero, 1
/* 1A93E8 80397368 080E5CF1 */  j          .L803973C4
/* 1A93EC 8039736C 00000000 */   nop
.L80397370:
/* 1A93F0 80397370 1062000D */  beq        $v1, $v0, .L803973A8
/* 1A93F4 80397374 24020001 */   addiu     $v0, $zero, 1
/* 1A93F8 80397378 080E5CF1 */  j          .L803973C4
/* 1A93FC 8039737C 00000000 */   nop
.L80397380:
/* 1A9400 80397380 8E040014 */  lw         $a0, 0x14($s0)
/* 1A9404 80397384 0C0326A1 */  jal        func_800C9A84
/* 1A9408 80397388 00000000 */   nop
/* 1A940C 8039738C 080E5CF1 */  j          .L803973C4
/* 1A9410 80397390 24020001 */   addiu     $v0, $zero, 1
.L80397394:
/* 1A9414 80397394 8E040014 */  lw         $a0, 0x14($s0)
/* 1A9418 80397398 0C025EC3 */  jal        func_80097B0C
/* 1A941C 8039739C 00000000 */   nop
/* 1A9420 803973A0 080E5CF1 */  j          .L803973C4
/* 1A9424 803973A4 24020001 */   addiu     $v0, $zero, 1
.L803973A8:
/* 1A9428 803973A8 8E040014 */  lw         $a0, 0x14($s0)
/* 1A942C 803973AC 0C026187 */  jal        func_8009861C
/* 1A9430 803973B0 00000000 */   nop
/* 1A9434 803973B4 080E5CF1 */  j          .L803973C4
/* 1A9438 803973B8 24020001 */   addiu     $v0, $zero, 1
.L803973BC:
/* 1A943C 803973BC 0C032934 */  jal        func_800CA4D0
/* 1A9440 803973C0 00000000 */   nop
.L803973C4:
/* 1A9444 803973C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A9448 803973C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A944C 803973CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A9450 803973D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A9454 803973D4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A9458 803973D8 03E00008 */  jr         $ra
/* 1A945C 803973DC 00000000 */   nop

glabel func_803973E0_1A9460
/* 1A9460 803973E0 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 1A9464 803973E4 AFB20098 */  sw         $s2, 0x98($sp)
/* 1A9468 803973E8 00809021 */  addu       $s2, $a0, $zero
/* 1A946C 803973EC 3C013F80 */  lui        $at, 0x3f80
/* 1A9470 803973F0 44811000 */  mtc1       $at, $f2
/* 1A9474 803973F4 00000000 */  nop
/* 1A9478 803973F8 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1A947C 803973FC C4243EBC */  lwc1       $f4, %lo(D_803B3EBC)($at)
/* 1A9480 80397400 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1A9484 80397404 C4263EB0 */  lwc1       $f6, %lo(D_803B3EB0)($at)
/* 1A9488 80397408 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1A948C 8039740C C4283E2C */  lwc1       $f8, %lo(D_803B3E2C)($at)
/* 1A9490 80397410 3C01803B */  lui        $at, %hi(D_803B3EB4)
/* 1A9494 80397414 C4203EB4 */  lwc1       $f0, %lo(D_803B3EB4)($at)
/* 1A9498 80397418 46800020 */  cvt.s.w    $f0, $f0
/* 1A949C 8039741C 44050000 */  mfc1       $a1, $f0
/* 1A94A0 80397420 00000000 */  nop
/* 1A94A4 80397424 3C01803B */  lui        $at, %hi(D_803B3E50)
/* 1A94A8 80397428 C4203E50 */  lwc1       $f0, %lo(D_803B3E50)($at)
/* 1A94AC 8039742C 46800020 */  cvt.s.w    $f0, $f0
/* 1A94B0 80397430 44060000 */  mfc1       $a2, $f0
/* 1A94B4 80397434 00000000 */  nop
/* 1A94B8 80397438 3C01803B */  lui        $at, %hi(D_803B3E54)
/* 1A94BC 8039743C C4203E54 */  lwc1       $f0, %lo(D_803B3E54)($at)
/* 1A94C0 80397440 46800020 */  cvt.s.w    $f0, $f0
/* 1A94C4 80397444 44070000 */  mfc1       $a3, $f0
/* 1A94C8 80397448 00000000 */  nop
/* 1A94CC 8039744C AFBF009C */  sw         $ra, 0x9c($sp)
/* 1A94D0 80397450 AFB10094 */  sw         $s1, 0x94($sp)
/* 1A94D4 80397454 AFB00090 */  sw         $s0, 0x90($sp)
/* 1A94D8 80397458 F7B600A8 */  sdc1       $f22, 0xa8($sp)
/* 1A94DC 8039745C F7B400A0 */  sdc1       $f20, 0xa0($sp)
/* 1A94E0 80397460 E7A20010 */  swc1       $f2, 0x10($sp)
/* 1A94E4 80397464 E7A40014 */  swc1       $f4, 0x14($sp)
/* 1A94E8 80397468 E7A60018 */  swc1       $f6, 0x18($sp)
/* 1A94EC 8039746C 0C02FD0E */  jal        func_800BF438
/* 1A94F0 80397470 E7A8001C */   swc1      $f8, 0x1c($sp)
/* 1A94F4 80397474 3C014120 */  lui        $at, 0x4120
/* 1A94F8 80397478 44811000 */  mtc1       $at, $f2
/* 1A94FC 8039747C 00000000 */  nop
/* 1A9500 80397480 3C01803B */  lui        $at, %hi(D_803B3EB8)
/* 1A9504 80397484 C4243EB8 */  lwc1       $f4, %lo(D_803B3EB8)($at)
/* 1A9508 80397488 46802120 */  cvt.s.w    $f4, $f4
/* 1A950C 8039748C 46022103 */  div.s      $f4, $f4, $f2
/* 1A9510 80397490 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1A9514 80397494 C4203E20 */  lwc1       $f0, %lo(D_803B3E20)($at)
/* 1A9518 80397498 46800020 */  cvt.s.w    $f0, $f0
/* 1A951C 8039749C 46020003 */  div.s      $f0, $f0, $f2
/* 1A9520 803974A0 3C03803B */  lui        $v1, %hi(D_803B3EA8)
/* 1A9524 803974A4 8C633EA8 */  lw         $v1, %lo(D_803B3EA8)($v1)
/* 1A9528 803974A8 3C04803B */  lui        $a0, %hi(D_803B3E34)
/* 1A952C 803974AC 8C843E34 */  lw         $a0, %lo(D_803B3E34)($a0)
/* 1A9530 803974B0 3C05803B */  lui        $a1, %hi(D_803B3EAC)
/* 1A9534 803974B4 8CA53EAC */  lw         $a1, %lo(D_803B3EAC)($a1)
/* 1A9538 803974B8 26420060 */  addiu      $v0, $s2, 0x60
/* 1A953C 803974BC AE420054 */  sw         $v0, 0x54($s2)
/* 1A9540 803974C0 A6430040 */  sh         $v1, 0x40($s2)
/* 1A9544 803974C4 AE440050 */  sw         $a0, 0x50($s2)
/* 1A9548 803974C8 E6440044 */  swc1       $f4, 0x44($s2)
/* 1A954C 803974CC 14A00005 */  bnez       $a1, .L803974E4
/* 1A9550 803974D0 E6400048 */   swc1      $f0, 0x48($s2)
/* 1A9554 803974D4 3C02803A */  lui        $v0, %hi(D_803A16C8_1B3748)
/* 1A9558 803974D8 244216C8 */  addiu      $v0, $v0, %lo(D_803A16C8_1B3748)
/* 1A955C 803974DC 080E5D3C */  j          .L803974F0
/* 1A9560 803974E0 AE42004C */   sw        $v0, 0x4c($s2)
.L803974E4:
/* 1A9564 803974E4 3C02803A */  lui        $v0, %hi(D_803A16E8_1B3768)
/* 1A9568 803974E8 244216E8 */  addiu      $v0, $v0, %lo(D_803A16E8_1B3768)
/* 1A956C 803974EC AE42004C */  sw         $v0, 0x4c($s2)
.L803974F0:
/* 1A9570 803974F0 3C03803B */  lui        $v1, %hi(D_803B3E28)
/* 1A9574 803974F4 8C633E28 */  lw         $v1, %lo(D_803B3E28)($v1)
/* 1A9578 803974F8 8E440054 */  lw         $a0, 0x54($s2)
/* 1A957C 803974FC 24020001 */  addiu      $v0, $zero, 1
/* 1A9580 80397500 1062005E */  beq        $v1, $v0, .L8039767C
/* 1A9584 80397504 28620002 */   slti      $v0, $v1, 2
/* 1A9588 80397508 50400005 */  beql       $v0, $zero, .L80397520
/* 1A958C 8039750C 24020002 */   addiu     $v0, $zero, 2
/* 1A9590 80397510 10600009 */  beqz       $v1, .L80397538
/* 1A9594 80397514 00000000 */   nop
/* 1A9598 80397518 080E5EDE */  j          .L80397B78
/* 1A959C 8039751C 00000000 */   nop
.L80397520:
/* 1A95A0 80397520 106200AF */  beq        $v1, $v0, .L803977E0
/* 1A95A4 80397524 24020003 */   addiu     $v0, $zero, 3
/* 1A95A8 80397528 10620121 */  beq        $v1, $v0, .L803979B0
/* 1A95AC 8039752C 00000000 */   nop
/* 1A95B0 80397530 080E5EDE */  j          .L80397B78
/* 1A95B4 80397534 00000000 */   nop
.L80397538:
/* 1A95B8 80397538 8E420050 */  lw         $v0, 0x50($s2)
/* 1A95BC 8039753C 1840018E */  blez       $v0, .L80397B78
/* 1A95C0 80397540 00008821 */   addu      $s1, $zero, $zero
/* 1A95C4 80397544 3C014120 */  lui        $at, 0x4120
/* 1A95C8 80397548 4481A000 */  mtc1       $at, $f20
/* 1A95CC 8039754C 00000000 */  nop
/* 1A95D0 80397550 24900060 */  addiu      $s0, $a0, 0x60
.L80397554:
/* 1A95D4 80397554 24040002 */  addiu      $a0, $zero, 2
/* 1A95D8 80397558 AE00FFE0 */  sw         $zero, -0x20($s0)
/* 1A95DC 8039755C AE00FFE4 */  sw         $zero, -0x1c($s0)
/* 1A95E0 80397560 0C02591A */  jal        func_80096468
/* 1A95E4 80397564 AE00FFE8 */   sw        $zero, -0x18($s0)
/* 1A95E8 80397568 A2020001 */  sb         $v0, 1($s0)
/* 1A95EC 8039756C 3C04803B */  lui        $a0, %hi(D_803B3EAA)
/* 1A95F0 80397570 94843EAA */  lhu        $a0, %lo(D_803B3EAA)($a0)
/* 1A95F4 80397574 0C02591A */  jal        func_80096468
/* 1A95F8 80397578 26310001 */   addiu     $s1, $s1, 1
/* 1A95FC 8039757C 3C04803B */  lui        $a0, %hi(D_803B3E5E)
/* 1A9600 80397580 94843E5E */  lhu        $a0, %lo(D_803B3E5E)($a0)
/* 1A9604 80397584 0C02591A */  jal        func_80096468
/* 1A9608 80397588 A6020002 */   sh        $v0, 2($s0)
/* 1A960C 8039758C 0C02592F */  jal        func_800964BC
/* 1A9610 80397590 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1A9614 80397594 44820000 */  mtc1       $v0, $f0
/* 1A9618 80397598 00000000 */  nop
/* 1A961C 8039759C 46800020 */  cvt.s.w    $f0, $f0
/* 1A9620 803975A0 46140003 */  div.s      $f0, $f0, $f20
/* 1A9624 803975A4 3C04803B */  lui        $a0, %hi(D_803B3E5E)
/* 1A9628 803975A8 94843E5E */  lhu        $a0, %lo(D_803B3E5E)($a0)
/* 1A962C 803975AC 0C02591A */  jal        func_80096468
/* 1A9630 803975B0 E600FFEC */   swc1      $f0, -0x14($s0)
/* 1A9634 803975B4 0C02592F */  jal        func_800964BC
/* 1A9638 803975B8 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1A963C 803975BC 44820000 */  mtc1       $v0, $f0
/* 1A9640 803975C0 00000000 */  nop
/* 1A9644 803975C4 46800020 */  cvt.s.w    $f0, $f0
/* 1A9648 803975C8 46140003 */  div.s      $f0, $f0, $f20
/* 1A964C 803975CC 3C04803B */  lui        $a0, %hi(D_803B3E5E)
/* 1A9650 803975D0 94843E5E */  lhu        $a0, %lo(D_803B3E5E)($a0)
/* 1A9654 803975D4 0C02591A */  jal        func_80096468
/* 1A9658 803975D8 E600FFF0 */   swc1      $f0, -0x10($s0)
/* 1A965C 803975DC 0C02592F */  jal        func_800964BC
/* 1A9660 803975E0 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1A9664 803975E4 44820000 */  mtc1       $v0, $f0
/* 1A9668 803975E8 00000000 */  nop
/* 1A966C 803975EC 46800020 */  cvt.s.w    $f0, $f0
/* 1A9670 803975F0 46140003 */  div.s      $f0, $f0, $f20
/* 1A9674 803975F4 24040006 */  addiu      $a0, $zero, 6
/* 1A9678 803975F8 A600FFF8 */  sh         $zero, -8($s0)
/* 1A967C 803975FC A600FFFA */  sh         $zero, -6($s0)
/* 1A9680 80397600 A600FFFC */  sh         $zero, -4($s0)
/* 1A9684 80397604 0C02591A */  jal        func_80096468
/* 1A9688 80397608 E600FFF4 */   swc1      $f0, -0xc($s0)
/* 1A968C 8039760C 0C02592F */  jal        func_800964BC
/* 1A9690 80397610 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1A9694 80397614 24040006 */  addiu      $a0, $zero, 6
/* 1A9698 80397618 00021880 */  sll        $v1, $v0, 2
/* 1A969C 8039761C 00621821 */  addu       $v1, $v1, $v0
/* 1A96A0 80397620 00031840 */  sll        $v1, $v1, 1
/* 1A96A4 80397624 0C02591A */  jal        func_80096468
/* 1A96A8 80397628 A203FFFE */   sb        $v1, -2($s0)
/* 1A96AC 8039762C 0C02592F */  jal        func_800964BC
/* 1A96B0 80397630 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1A96B4 80397634 24040006 */  addiu      $a0, $zero, 6
/* 1A96B8 80397638 00021880 */  sll        $v1, $v0, 2
/* 1A96BC 8039763C 00621821 */  addu       $v1, $v1, $v0
/* 1A96C0 80397640 00031840 */  sll        $v1, $v1, 1
/* 1A96C4 80397644 0C02591A */  jal        func_80096468
/* 1A96C8 80397648 A203FFFF */   sb        $v1, -1($s0)
/* 1A96CC 8039764C 0C02592F */  jal        func_800964BC
/* 1A96D0 80397650 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1A96D4 80397654 00021880 */  sll        $v1, $v0, 2
/* 1A96D8 80397658 00621821 */  addu       $v1, $v1, $v0
/* 1A96DC 8039765C 00031840 */  sll        $v1, $v1, 1
/* 1A96E0 80397660 A2030000 */  sb         $v1, ($s0)
/* 1A96E4 80397664 8E420050 */  lw         $v0, 0x50($s2)
/* 1A96E8 80397668 0222102A */  slt        $v0, $s1, $v0
/* 1A96EC 8039766C 1440FFB9 */  bnez       $v0, .L80397554
/* 1A96F0 80397670 26100070 */   addiu     $s0, $s0, 0x70
/* 1A96F4 80397674 080E5EDE */  j          .L80397B78
/* 1A96F8 80397678 00000000 */   nop
.L8039767C:
/* 1A96FC 8039767C 8E420050 */  lw         $v0, 0x50($s2)
/* 1A9700 80397680 1840013D */  blez       $v0, .L80397B78
/* 1A9704 80397684 00008821 */   addu      $s1, $zero, $zero
/* 1A9708 80397688 4480A000 */  mtc1       $zero, $f20
/* 1A970C 8039768C 00000000 */  nop
/* 1A9710 80397690 24900054 */  addiu      $s0, $a0, 0x54
.L80397694:
/* 1A9714 80397694 24040002 */  addiu      $a0, $zero, 2
/* 1A9718 80397698 AE00FFEC */  sw         $zero, -0x14($s0)
/* 1A971C 8039769C AE00FFF0 */  sw         $zero, -0x10($s0)
/* 1A9720 803976A0 0C02591A */  jal        func_80096468
/* 1A9724 803976A4 AE00FFF4 */   sw        $zero, -0xc($s0)
/* 1A9728 803976A8 A202000D */  sb         $v0, 0xd($s0)
/* 1A972C 803976AC 3C04803B */  lui        $a0, %hi(D_803B3EAA)
/* 1A9730 803976B0 94843EAA */  lhu        $a0, %lo(D_803B3EAA)($a0)
/* 1A9734 803976B4 0C02591A */  jal        func_80096468
/* 1A9738 803976B8 26310001 */   addiu     $s1, $s1, 1
/* 1A973C 803976BC 24040168 */  addiu      $a0, $zero, 0x168
/* 1A9740 803976C0 0C02591A */  jal        func_80096468
/* 1A9744 803976C4 A602000E */   sh        $v0, 0xe($s0)
/* 1A9748 803976C8 24040168 */  addiu      $a0, $zero, 0x168
/* 1A974C 803976CC 0C02591A */  jal        func_80096468
/* 1A9750 803976D0 A6020004 */   sh        $v0, 4($s0)
/* 1A9754 803976D4 24040168 */  addiu      $a0, $zero, 0x168
/* 1A9758 803976D8 0C02591A */  jal        func_80096468
/* 1A975C 803976DC A6020006 */   sh        $v0, 6($s0)
/* 1A9760 803976E0 A6020008 */  sh         $v0, 8($s0)
/* 1A9764 803976E4 86020004 */  lh         $v0, 4($s0)
/* 1A9768 803976E8 86030006 */  lh         $v1, 6($s0)
/* 1A976C 803976EC 86070008 */  lh         $a3, 8($s0)
/* 1A9770 803976F0 3C013F80 */  lui        $at, 0x3f80
/* 1A9774 803976F4 44810000 */  mtc1       $at, $f0
/* 1A9778 803976F8 00000000 */  nop
/* 1A977C 803976FC 44827000 */  mtc1       $v0, $f14
/* 1A9780 80397700 00000000 */  nop
/* 1A9784 80397704 468073A0 */  cvt.s.w    $f14, $f14
/* 1A9788 80397708 44057000 */  mfc1       $a1, $f14
/* 1A978C 8039770C 00000000 */  nop
/* 1A9790 80397710 44837000 */  mtc1       $v1, $f14
/* 1A9794 80397714 00000000 */  nop
/* 1A9798 80397718 468073A0 */  cvt.s.w    $f14, $f14
/* 1A979C 8039771C 44067000 */  mfc1       $a2, $f14
/* 1A97A0 80397720 00000000 */  nop
/* 1A97A4 80397724 44877000 */  mtc1       $a3, $f14
/* 1A97A8 80397728 00000000 */  nop
/* 1A97AC 8039772C 468073A0 */  cvt.s.w    $f14, $f14
/* 1A97B0 80397730 44077000 */  mfc1       $a3, $f14
/* 1A97B4 80397734 00000000 */  nop
/* 1A97B8 80397738 27A40020 */  addiu      $a0, $sp, 0x20
/* 1A97BC 8039773C A200000A */  sb         $zero, 0xa($s0)
/* 1A97C0 80397740 A200000B */  sb         $zero, 0xb($s0)
/* 1A97C4 80397744 A200000C */  sb         $zero, 0xc($s0)
/* 1A97C8 80397748 AFA00014 */  sw         $zero, 0x14($sp)
/* 1A97CC 8039774C AFA00018 */  sw         $zero, 0x18($sp)
/* 1A97D0 80397750 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1A97D4 80397754 0C02FC98 */  jal        func_800BF260
/* 1A97D8 80397758 E7A00010 */   swc1      $f0, 0x10($sp)
/* 1A97DC 8039775C 3C014120 */  lui        $at, 0x4120
/* 1A97E0 80397760 44811000 */  mtc1       $at, $f2
/* 1A97E4 80397764 00000000 */  nop
/* 1A97E8 80397768 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1A97EC 8039776C C4203E5C */  lwc1       $f0, %lo(D_803B3E5C)($at)
/* 1A97F0 80397770 46800020 */  cvt.s.w    $f0, $f0
/* 1A97F4 80397774 46020003 */  div.s      $f0, $f0, $f2
/* 1A97F8 80397778 27A40020 */  addiu      $a0, $sp, 0x20
/* 1A97FC 8039777C 4405A000 */  mfc1       $a1, $f20
/* 1A9800 80397780 00000000 */  nop
/* 1A9804 80397784 4406A000 */  mfc1       $a2, $f20
/* 1A9808 80397788 00000000 */  nop
/* 1A980C 8039778C 27A20060 */  addiu      $v0, $sp, 0x60
/* 1A9810 80397790 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A9814 80397794 27A20064 */  addiu      $v0, $sp, 0x64
/* 1A9818 80397798 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A981C 8039779C 44070000 */  mfc1       $a3, $f0
/* 1A9820 803977A0 00000000 */  nop
/* 1A9824 803977A4 27A20068 */  addiu      $v0, $sp, 0x68
/* 1A9828 803977A8 0C02F9DF */  jal        func_800BE77C
/* 1A982C 803977AC AFA20018 */   sw        $v0, 0x18($sp)
/* 1A9830 803977B0 C7A00060 */  lwc1       $f0, 0x60($sp)
/* 1A9834 803977B4 C7A20064 */  lwc1       $f2, 0x64($sp)
/* 1A9838 803977B8 C7A40068 */  lwc1       $f4, 0x68($sp)
/* 1A983C 803977BC E600FFF8 */  swc1       $f0, -8($s0)
/* 1A9840 803977C0 E602FFFC */  swc1       $f2, -4($s0)
/* 1A9844 803977C4 E6040000 */  swc1       $f4, ($s0)
/* 1A9848 803977C8 8E420050 */  lw         $v0, 0x50($s2)
/* 1A984C 803977CC 0222102A */  slt        $v0, $s1, $v0
/* 1A9850 803977D0 1440FFB0 */  bnez       $v0, .L80397694
/* 1A9854 803977D4 26100070 */   addiu     $s0, $s0, 0x70
/* 1A9858 803977D8 080E5EDE */  j          .L80397B78
/* 1A985C 803977DC 00000000 */   nop
.L803977E0:
/* 1A9860 803977E0 8E420050 */  lw         $v0, 0x50($s2)
/* 1A9864 803977E4 184000E4 */  blez       $v0, .L80397B78
/* 1A9868 803977E8 00008821 */   addu      $s1, $zero, $zero
/* 1A986C 803977EC 4480A000 */  mtc1       $zero, $f20
/* 1A9870 803977F0 00000000 */  nop
/* 1A9874 803977F4 24900048 */  addiu      $s0, $a0, 0x48
.L803977F8:
/* 1A9878 803977F8 24040002 */  addiu      $a0, $zero, 2
/* 1A987C 803977FC AE00FFF8 */  sw         $zero, -8($s0)
/* 1A9880 80397800 AE00FFFC */  sw         $zero, -4($s0)
/* 1A9884 80397804 0C02591A */  jal        func_80096468
/* 1A9888 80397808 AE000000 */   sw        $zero, ($s0)
/* 1A988C 8039780C A2020019 */  sb         $v0, 0x19($s0)
/* 1A9890 80397810 3C04803B */  lui        $a0, %hi(D_803B3EAA)
/* 1A9894 80397814 94843EAA */  lhu        $a0, %lo(D_803B3EAA)($a0)
/* 1A9898 80397818 0C02591A */  jal        func_80096468
/* 1A989C 8039781C 26310001 */   addiu     $s1, $s1, 1
/* 1A98A0 80397820 24040168 */  addiu      $a0, $zero, 0x168
/* 1A98A4 80397824 0C02591A */  jal        func_80096468
/* 1A98A8 80397828 A602001A */   sh        $v0, 0x1a($s0)
/* 1A98AC 8039782C 24040168 */  addiu      $a0, $zero, 0x168
/* 1A98B0 80397830 0C02591A */  jal        func_80096468
/* 1A98B4 80397834 A6020010 */   sh        $v0, 0x10($s0)
/* 1A98B8 80397838 24040168 */  addiu      $a0, $zero, 0x168
/* 1A98BC 8039783C 0C02591A */  jal        func_80096468
/* 1A98C0 80397840 A6020012 */   sh        $v0, 0x12($s0)
/* 1A98C4 80397844 A6020014 */  sh         $v0, 0x14($s0)
/* 1A98C8 80397848 86020010 */  lh         $v0, 0x10($s0)
/* 1A98CC 8039784C 86030012 */  lh         $v1, 0x12($s0)
/* 1A98D0 80397850 86070014 */  lh         $a3, 0x14($s0)
/* 1A98D4 80397854 3C013F80 */  lui        $at, 0x3f80
/* 1A98D8 80397858 44810000 */  mtc1       $at, $f0
/* 1A98DC 8039785C 00000000 */  nop
/* 1A98E0 80397860 44827000 */  mtc1       $v0, $f14
/* 1A98E4 80397864 00000000 */  nop
/* 1A98E8 80397868 468073A0 */  cvt.s.w    $f14, $f14
/* 1A98EC 8039786C 44057000 */  mfc1       $a1, $f14
/* 1A98F0 80397870 00000000 */  nop
/* 1A98F4 80397874 44837000 */  mtc1       $v1, $f14
/* 1A98F8 80397878 00000000 */  nop
/* 1A98FC 8039787C 468073A0 */  cvt.s.w    $f14, $f14
/* 1A9900 80397880 44067000 */  mfc1       $a2, $f14
/* 1A9904 80397884 00000000 */  nop
/* 1A9908 80397888 44877000 */  mtc1       $a3, $f14
/* 1A990C 8039788C 00000000 */  nop
/* 1A9910 80397890 468073A0 */  cvt.s.w    $f14, $f14
/* 1A9914 80397894 44077000 */  mfc1       $a3, $f14
/* 1A9918 80397898 00000000 */  nop
/* 1A991C 8039789C 27A40020 */  addiu      $a0, $sp, 0x20
/* 1A9920 803978A0 A2000016 */  sb         $zero, 0x16($s0)
/* 1A9924 803978A4 A2000017 */  sb         $zero, 0x17($s0)
/* 1A9928 803978A8 A2000018 */  sb         $zero, 0x18($s0)
/* 1A992C 803978AC AFA00014 */  sw         $zero, 0x14($sp)
/* 1A9930 803978B0 AFA00018 */  sw         $zero, 0x18($sp)
/* 1A9934 803978B4 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1A9938 803978B8 0C02FC98 */  jal        func_800BF260
/* 1A993C 803978BC E7A00010 */   swc1      $f0, 0x10($sp)
/* 1A9940 803978C0 3C014120 */  lui        $at, 0x4120
/* 1A9944 803978C4 44811000 */  mtc1       $at, $f2
/* 1A9948 803978C8 00000000 */  nop
/* 1A994C 803978CC 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1A9950 803978D0 C4203E5C */  lwc1       $f0, %lo(D_803B3E5C)($at)
/* 1A9954 803978D4 46800020 */  cvt.s.w    $f0, $f0
/* 1A9958 803978D8 46020003 */  div.s      $f0, $f0, $f2
/* 1A995C 803978DC 27A40020 */  addiu      $a0, $sp, 0x20
/* 1A9960 803978E0 4405A000 */  mfc1       $a1, $f20
/* 1A9964 803978E4 00000000 */  nop
/* 1A9968 803978E8 4406A000 */  mfc1       $a2, $f20
/* 1A996C 803978EC 00000000 */  nop
/* 1A9970 803978F0 27A20060 */  addiu      $v0, $sp, 0x60
/* 1A9974 803978F4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A9978 803978F8 27A20064 */  addiu      $v0, $sp, 0x64
/* 1A997C 803978FC AFA20014 */  sw         $v0, 0x14($sp)
/* 1A9980 80397900 44070000 */  mfc1       $a3, $f0
/* 1A9984 80397904 00000000 */  nop
/* 1A9988 80397908 27A20068 */  addiu      $v0, $sp, 0x68
/* 1A998C 8039790C 0C02F9DF */  jal        func_800BE77C
/* 1A9990 80397910 AFA20018 */   sw        $v0, 0x18($sp)
/* 1A9994 80397914 8602001A */  lh         $v0, 0x1a($s0)
/* 1A9998 80397918 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 1A999C 8039791C 44821000 */  mtc1       $v0, $f2
/* 1A99A0 80397920 00000000 */  nop
/* 1A99A4 80397924 468010A0 */  cvt.s.w    $f2, $f2
/* 1A99A8 80397928 46024082 */  mul.s      $f2, $f8, $f2
/* 1A99AC 8039792C 8602001A */  lh         $v0, 0x1a($s0)
/* 1A99B0 80397930 C7A60064 */  lwc1       $f6, 0x64($sp)
/* 1A99B4 80397934 C60CFFF8 */  lwc1       $f12, -8($s0)
/* 1A99B8 80397938 44820000 */  mtc1       $v0, $f0
/* 1A99BC 8039793C 00000000 */  nop
/* 1A99C0 80397940 46800020 */  cvt.s.w    $f0, $f0
/* 1A99C4 80397944 46003002 */  mul.s      $f0, $f6, $f0
/* 1A99C8 80397948 46026300 */  add.s      $f12, $f12, $f2
/* 1A99CC 8039794C C60AFFFC */  lwc1       $f10, -4($s0)
/* 1A99D0 80397950 8602001A */  lh         $v0, 0x1a($s0)
/* 1A99D4 80397954 C7A20068 */  lwc1       $f2, 0x68($sp)
/* 1A99D8 80397958 46005280 */  add.s      $f10, $f10, $f0
/* 1A99DC 8039795C C6040000 */  lwc1       $f4, ($s0)
/* 1A99E0 80397960 44820000 */  mtc1       $v0, $f0
/* 1A99E4 80397964 00000000 */  nop
/* 1A99E8 80397968 46800020 */  cvt.s.w    $f0, $f0
/* 1A99EC 8039796C 46001002 */  mul.s      $f0, $f2, $f0
/* 1A99F0 80397970 46004207 */  neg.s      $f8, $f8
/* 1A99F4 80397974 46003187 */  neg.s      $f6, $f6
/* 1A99F8 80397978 E6080004 */  swc1       $f8, 4($s0)
/* 1A99FC 8039797C 46001087 */  neg.s      $f2, $f2
/* 1A9A00 80397980 E6060008 */  swc1       $f6, 8($s0)
/* 1A9A04 80397984 46002100 */  add.s      $f4, $f4, $f0
/* 1A9A08 80397988 E602000C */  swc1       $f2, 0xc($s0)
/* 1A9A0C 8039798C E60CFFF8 */  swc1       $f12, -8($s0)
/* 1A9A10 80397990 E60AFFFC */  swc1       $f10, -4($s0)
/* 1A9A14 80397994 E6040000 */  swc1       $f4, ($s0)
/* 1A9A18 80397998 8E420050 */  lw         $v0, 0x50($s2)
/* 1A9A1C 8039799C 0222102A */  slt        $v0, $s1, $v0
/* 1A9A20 803979A0 1440FF95 */  bnez       $v0, .L803977F8
/* 1A9A24 803979A4 26100070 */   addiu     $s0, $s0, 0x70
/* 1A9A28 803979A8 080E5EDE */  j          .L80397B78
/* 1A9A2C 803979AC 00000000 */   nop
.L803979B0:
/* 1A9A30 803979B0 8E420050 */  lw         $v0, 0x50($s2)
/* 1A9A34 803979B4 1840005A */  blez       $v0, .L80397B20
/* 1A9A38 803979B8 00008821 */   addu      $s1, $zero, $zero
/* 1A9A3C 803979BC 3C013CA3 */  lui        $at, 0x3ca3
/* 1A9A40 803979C0 3421D70A */  ori        $at, $at, 0xd70a
/* 1A9A44 803979C4 4481A000 */  mtc1       $at, $f20
/* 1A9A48 803979C8 00000000 */  nop
/* 1A9A4C 803979CC 24900054 */  addiu      $s0, $a0, 0x54
/* 1A9A50 803979D0 4480B000 */  mtc1       $zero, $f22
.L803979D4:
/* 1A9A54 803979D4 00000000 */  nop
/* 1A9A58 803979D8 24040002 */  addiu      $a0, $zero, 2
/* 1A9A5C 803979DC AE00FFEC */  sw         $zero, -0x14($s0)
/* 1A9A60 803979E0 AE00FFF0 */  sw         $zero, -0x10($s0)
/* 1A9A64 803979E4 0C02591A */  jal        func_80096468
/* 1A9A68 803979E8 AE00FFF4 */   sw        $zero, -0xc($s0)
/* 1A9A6C 803979EC A202000D */  sb         $v0, 0xd($s0)
/* 1A9A70 803979F0 3C04803B */  lui        $a0, %hi(D_803B3EAA)
/* 1A9A74 803979F4 94843EAA */  lhu        $a0, %lo(D_803B3EAA)($a0)
/* 1A9A78 803979F8 0C02591A */  jal        func_80096468
/* 1A9A7C 803979FC 26310001 */   addiu     $s1, $s1, 1
/* 1A9A80 80397A00 3C03803B */  lui        $v1, %hi(D_803B3E60)
/* 1A9A84 80397A04 8C633E60 */  lw         $v1, %lo(D_803B3E60)($v1)
/* 1A9A88 80397A08 24040168 */  addiu      $a0, $zero, 0x168
/* 1A9A8C 80397A0C A602000E */  sh         $v0, 0xe($s0)
/* 1A9A90 80397A10 A6030004 */  sh         $v1, 4($s0)
/* 1A9A94 80397A14 0C02591A */  jal        func_80096468
/* 1A9A98 80397A18 A6030006 */   sh        $v1, 6($s0)
/* 1A9A9C 80397A1C A6020008 */  sh         $v0, 8($s0)
/* 1A9AA0 80397A20 86020004 */  lh         $v0, 4($s0)
/* 1A9AA4 80397A24 86030006 */  lh         $v1, 6($s0)
/* 1A9AA8 80397A28 86070008 */  lh         $a3, 8($s0)
/* 1A9AAC 80397A2C 3C013F80 */  lui        $at, 0x3f80
/* 1A9AB0 80397A30 44810000 */  mtc1       $at, $f0
/* 1A9AB4 80397A34 00000000 */  nop
/* 1A9AB8 80397A38 44827000 */  mtc1       $v0, $f14
/* 1A9ABC 80397A3C 00000000 */  nop
/* 1A9AC0 80397A40 468073A0 */  cvt.s.w    $f14, $f14
/* 1A9AC4 80397A44 44057000 */  mfc1       $a1, $f14
/* 1A9AC8 80397A48 00000000 */  nop
/* 1A9ACC 80397A4C 44837000 */  mtc1       $v1, $f14
/* 1A9AD0 80397A50 00000000 */  nop
/* 1A9AD4 80397A54 468073A0 */  cvt.s.w    $f14, $f14
/* 1A9AD8 80397A58 44067000 */  mfc1       $a2, $f14
/* 1A9ADC 80397A5C 00000000 */  nop
/* 1A9AE0 80397A60 44877000 */  mtc1       $a3, $f14
/* 1A9AE4 80397A64 00000000 */  nop
/* 1A9AE8 80397A68 468073A0 */  cvt.s.w    $f14, $f14
/* 1A9AEC 80397A6C 44077000 */  mfc1       $a3, $f14
/* 1A9AF0 80397A70 00000000 */  nop
/* 1A9AF4 80397A74 27A40020 */  addiu      $a0, $sp, 0x20
/* 1A9AF8 80397A78 A200000A */  sb         $zero, 0xa($s0)
/* 1A9AFC 80397A7C A200000B */  sb         $zero, 0xb($s0)
/* 1A9B00 80397A80 A200000C */  sb         $zero, 0xc($s0)
/* 1A9B04 80397A84 AFA00014 */  sw         $zero, 0x14($sp)
/* 1A9B08 80397A88 AFA00018 */  sw         $zero, 0x18($sp)
/* 1A9B0C 80397A8C AFA0001C */  sw         $zero, 0x1c($sp)
/* 1A9B10 80397A90 0C02FC98 */  jal        func_800BF260
/* 1A9B14 80397A94 E7A00010 */   swc1      $f0, 0x10($sp)
/* 1A9B18 80397A98 3C014120 */  lui        $at, 0x4120
/* 1A9B1C 80397A9C 44811000 */  mtc1       $at, $f2
/* 1A9B20 80397AA0 00000000 */  nop
/* 1A9B24 80397AA4 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1A9B28 80397AA8 C4203E5C */  lwc1       $f0, %lo(D_803B3E5C)($at)
/* 1A9B2C 80397AAC 46800020 */  cvt.s.w    $f0, $f0
/* 1A9B30 80397AB0 46020003 */  div.s      $f0, $f0, $f2
/* 1A9B34 80397AB4 27A40020 */  addiu      $a0, $sp, 0x20
/* 1A9B38 80397AB8 4405B000 */  mfc1       $a1, $f22
/* 1A9B3C 80397ABC 00000000 */  nop
/* 1A9B40 80397AC0 4406B000 */  mfc1       $a2, $f22
/* 1A9B44 80397AC4 00000000 */  nop
/* 1A9B48 80397AC8 27A20060 */  addiu      $v0, $sp, 0x60
/* 1A9B4C 80397ACC AFA20010 */  sw         $v0, 0x10($sp)
/* 1A9B50 80397AD0 27A20064 */  addiu      $v0, $sp, 0x64
/* 1A9B54 80397AD4 AFA20014 */  sw         $v0, 0x14($sp)
/* 1A9B58 80397AD8 44070000 */  mfc1       $a3, $f0
/* 1A9B5C 80397ADC 00000000 */  nop
/* 1A9B60 80397AE0 27A20068 */  addiu      $v0, $sp, 0x68
/* 1A9B64 80397AE4 0C02F9DF */  jal        func_800BE77C
/* 1A9B68 80397AE8 AFA20018 */   sw        $v0, 0x18($sp)
/* 1A9B6C 80397AEC C7A40060 */  lwc1       $f4, 0x60($sp)
/* 1A9B70 80397AF0 46142103 */  div.s      $f4, $f4, $f20
/* 1A9B74 80397AF4 C7A20064 */  lwc1       $f2, 0x64($sp)
/* 1A9B78 80397AF8 46141083 */  div.s      $f2, $f2, $f20
/* 1A9B7C 80397AFC C7A00068 */  lwc1       $f0, 0x68($sp)
/* 1A9B80 80397B00 46140003 */  div.s      $f0, $f0, $f20
/* 1A9B84 80397B04 E604FFF8 */  swc1       $f4, -8($s0)
/* 1A9B88 80397B08 E602FFFC */  swc1       $f2, -4($s0)
/* 1A9B8C 80397B0C E6000000 */  swc1       $f0, ($s0)
/* 1A9B90 80397B10 8E420050 */  lw         $v0, 0x50($s2)
/* 1A9B94 80397B14 0222102A */  slt        $v0, $s1, $v0
/* 1A9B98 80397B18 1440FFAE */  bnez       $v0, .L803979D4
/* 1A9B9C 80397B1C 26100070 */   addiu     $s0, $s0, 0x70
.L80397B20:
/* 1A9BA0 80397B20 02403821 */  addu       $a3, $s2, $zero
/* 1A9BA4 80397B24 3C06803B */  lui        $a2, %hi(D_803B3E68)
/* 1A9BA8 80397B28 24C63E68 */  addiu      $a2, $a2, %lo(D_803B3E68)
/* 1A9BAC 80397B2C 24C80040 */  addiu      $t0, $a2, 0x40
.L80397B30:
/* 1A9BB0 80397B30 8CC20000 */  lw         $v0, ($a2)
/* 1A9BB4 80397B34 8CC30004 */  lw         $v1, 4($a2)
/* 1A9BB8 80397B38 8CC40008 */  lw         $a0, 8($a2)
/* 1A9BBC 80397B3C 8CC5000C */  lw         $a1, 0xc($a2)
/* 1A9BC0 80397B40 ACE20000 */  sw         $v0, ($a3)
/* 1A9BC4 80397B44 ACE30004 */  sw         $v1, 4($a3)
/* 1A9BC8 80397B48 ACE40008 */  sw         $a0, 8($a3)
/* 1A9BCC 80397B4C ACE5000C */  sw         $a1, 0xc($a3)
/* 1A9BD0 80397B50 24C60010 */  addiu      $a2, $a2, 0x10
/* 1A9BD4 80397B54 14C8FFF6 */  bne        $a2, $t0, .L80397B30
/* 1A9BD8 80397B58 24E70010 */   addiu     $a3, $a3, 0x10
/* 1A9BDC 80397B5C C6400048 */  lwc1       $f0, 0x48($s2)
/* 1A9BE0 80397B60 3C013CA3 */  lui        $at, 0x3ca3
/* 1A9BE4 80397B64 3421D70A */  ori        $at, $at, 0xd70a
/* 1A9BE8 80397B68 44811000 */  mtc1       $at, $f2
/* 1A9BEC 80397B6C 00000000 */  nop
/* 1A9BF0 80397B70 46020003 */  div.s      $f0, $f0, $f2
/* 1A9BF4 80397B74 E6400048 */  swc1       $f0, 0x48($s2)
.L80397B78:
/* 1A9BF8 80397B78 8FBF009C */  lw         $ra, 0x9c($sp)
/* 1A9BFC 80397B7C 8FB20098 */  lw         $s2, 0x98($sp)
/* 1A9C00 80397B80 8FB10094 */  lw         $s1, 0x94($sp)
/* 1A9C04 80397B84 8FB00090 */  lw         $s0, 0x90($sp)
/* 1A9C08 80397B88 D7B600A8 */  ldc1       $f22, 0xa8($sp)
/* 1A9C0C 80397B8C D7B400A0 */  ldc1       $f20, 0xa0($sp)
/* 1A9C10 80397B90 27BD00B0 */  addiu      $sp, $sp, 0xb0
/* 1A9C14 80397B94 03E00008 */  jr         $ra
/* 1A9C18 80397B98 00000000 */   nop

glabel func_80397B9C_1A9C1C
/* 1A9C1C 80397B9C 03E00008 */  jr         $ra
/* 1A9C20 80397BA0 00000000 */   nop

glabel func_80397BA4_1A9C24
/* 1A9C24 80397BA4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1A9C28 80397BA8 AFB30044 */  sw         $s3, 0x44($sp)
/* 1A9C2C 80397BAC 00809821 */  addu       $s3, $a0, $zero
/* 1A9C30 80397BB0 AFBF005C */  sw         $ra, 0x5c($sp)
/* 1A9C34 80397BB4 AFBE0058 */  sw         $fp, 0x58($sp)
/* 1A9C38 80397BB8 AFB70054 */  sw         $s7, 0x54($sp)
/* 1A9C3C 80397BBC AFB60050 */  sw         $s6, 0x50($sp)
/* 1A9C40 80397BC0 AFB5004C */  sw         $s5, 0x4c($sp)
/* 1A9C44 80397BC4 AFB40048 */  sw         $s4, 0x48($sp)
/* 1A9C48 80397BC8 AFB20040 */  sw         $s2, 0x40($sp)
/* 1A9C4C 80397BCC AFB1003C */  sw         $s1, 0x3c($sp)
/* 1A9C50 80397BD0 AFB00038 */  sw         $s0, 0x38($sp)
/* 1A9C54 80397BD4 86620040 */  lh         $v0, 0x40($s3)
/* 1A9C58 80397BD8 10400130 */  beqz       $v0, .L8039809C
/* 1A9C5C 80397BDC 00401821 */   addu      $v1, $v0, $zero
/* 1A9C60 80397BE0 2463FFFF */  addiu      $v1, $v1, -1
/* 1A9C64 80397BE4 3C04D9FD */  lui        $a0, 0xd9fd
/* 1A9C68 80397BE8 3484FFFF */  ori        $a0, $a0, 0xffff
/* 1A9C6C 80397BEC 3C06D9FF */  lui        $a2, 0xd9ff
/* 1A9C70 80397BF0 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 1A9C74 80397BF4 3C050020 */  lui        $a1, 0x20
/* 1A9C78 80397BF8 34A50405 */  ori        $a1, $a1, 0x405
/* 1A9C7C 80397BFC 3C07E300 */  lui        $a3, 0xe300
/* 1A9C80 80397C00 34E71201 */  ori        $a3, $a3, 0x1201
/* 1A9C84 80397C04 3C0AE200 */  lui        $t2, 0xe200
/* 1A9C88 80397C08 354A001C */  ori        $t2, $t2, 0x1c
/* 1A9C8C 80397C0C 3C080055 */  lui        $t0, 0x55
/* 1A9C90 80397C10 35083078 */  ori        $t0, $t0, 0x3078
/* 1A9C94 80397C14 3C0BFCFF */  lui        $t3, 0xfcff
/* 1A9C98 80397C18 356BFFFF */  ori        $t3, $t3, 0xffff
/* 1A9C9C 80397C1C 3C09FFFC */  lui        $t1, 0xfffc
/* 1A9CA0 80397C20 3529F279 */  ori        $t1, $t1, 0xf279
/* 1A9CA4 80397C24 3C0CE300 */  lui        $t4, 0xe300
/* 1A9CA8 80397C28 358C1001 */  ori        $t4, $t4, 0x1001
/* 1A9CAC 80397C2C 3C0D0701 */  lui        $t5, 0x701
/* 1A9CB0 80397C30 35AD0040 */  ori        $t5, $t5, 0x40
/* 1A9CB4 80397C34 3C0E0703 */  lui        $t6, 0x703
/* 1A9CB8 80397C38 35CEF800 */  ori        $t6, $t6, 0xf800
/* 1A9CBC 80397C3C 3C10F540 */  lui        $s0, 0xf540
/* 1A9CC0 80397C40 36100200 */  ori        $s0, $s0, 0x200
/* 1A9CC4 80397C44 3C0F0001 */  lui        $t7, 1
/* 1A9CC8 80397C48 35EF0040 */  ori        $t7, $t7, 0x40
/* 1A9CCC 80397C4C 3C110003 */  lui        $s1, 3
/* 1A9CD0 80397C50 3631C03C */  ori        $s1, $s1, 0xc03c
/* 1A9CD4 80397C54 3C12DA38 */  lui        $s2, 0xda38
/* 1A9CD8 80397C58 36520003 */  ori        $s2, $s2, 3
/* 1A9CDC 80397C5C 0000A021 */  addu       $s4, $zero, $zero
/* 1A9CE0 80397C60 3C1EFD10 */  lui        $fp, 0xfd10
/* 1A9CE4 80397C64 3C18E800 */  lui        $t8, 0xe800
/* 1A9CE8 80397C68 3C15F500 */  lui        $s5, 0xf500
/* 1A9CEC 80397C6C 36B50100 */  ori        $s5, $s5, 0x100
/* 1A9CF0 80397C70 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1A9CF4 80397C74 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1A9CF8 80397C78 3C170700 */  lui        $s7, 0x700
/* 1A9CFC 80397C7C 3C16E600 */  lui        $s6, 0xe600
/* 1A9D00 80397C80 A6630040 */  sh         $v1, 0x40($s3)
/* 1A9D04 80397C84 24430008 */  addiu      $v1, $v0, 8
/* 1A9D08 80397C88 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D0C 80397C8C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D10 80397C90 3C03DE00 */  lui        $v1, 0xde00
/* 1A9D14 80397C94 AC430000 */  sw         $v1, ($v0)
/* 1A9D18 80397C98 3C03800D */  lui        $v1, %hi(D_800D3D70)
/* 1A9D1C 80397C9C 24633D70 */  addiu      $v1, $v1, %lo(D_800D3D70)
/* 1A9D20 80397CA0 AC430004 */  sw         $v1, 4($v0)
/* 1A9D24 80397CA4 24430010 */  addiu      $v1, $v0, 0x10
/* 1A9D28 80397CA8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D2C 80397CAC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D30 80397CB0 24430018 */  addiu      $v1, $v0, 0x18
/* 1A9D34 80397CB4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D38 80397CB8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D3C 80397CBC 24430020 */  addiu      $v1, $v0, 0x20
/* 1A9D40 80397CC0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D44 80397CC4 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D48 80397CC8 24430028 */  addiu      $v1, $v0, 0x28
/* 1A9D4C 80397CCC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D50 80397CD0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D54 80397CD4 24430030 */  addiu      $v1, $v0, 0x30
/* 1A9D58 80397CD8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D5C 80397CDC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D60 80397CE0 24430038 */  addiu      $v1, $v0, 0x38
/* 1A9D64 80397CE4 AC440008 */  sw         $a0, 8($v0)
/* 1A9D68 80397CE8 3C04E700 */  lui        $a0, 0xe700
/* 1A9D6C 80397CEC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D70 80397CF0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D74 80397CF4 24430040 */  addiu      $v1, $v0, 0x40
/* 1A9D78 80397CF8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D7C 80397CFC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D80 80397D00 34038000 */  ori        $v1, $zero, 0x8000
/* 1A9D84 80397D04 AC43003C */  sw         $v1, 0x3c($v0)
/* 1A9D88 80397D08 24430048 */  addiu      $v1, $v0, 0x48
/* 1A9D8C 80397D0C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9D90 80397D10 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9D94 80397D14 3C03FD50 */  lui        $v1, 0xfd50
/* 1A9D98 80397D18 AC430040 */  sw         $v1, 0x40($v0)
/* 1A9D9C 80397D1C 3C03803A */  lui        $v1, %hi(D_803A15E8_1B3668)
/* 1A9DA0 80397D20 246315E8 */  addiu      $v1, $v1, %lo(D_803A15E8_1B3668)
/* 1A9DA4 80397D24 AC430044 */  sw         $v1, 0x44($v0)
/* 1A9DA8 80397D28 24430050 */  addiu      $v1, $v0, 0x50
/* 1A9DAC 80397D2C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9DB0 80397D30 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9DB4 80397D34 3C03F550 */  lui        $v1, 0xf550
/* 1A9DB8 80397D38 AC430048 */  sw         $v1, 0x48($v0)
/* 1A9DBC 80397D3C 24430058 */  addiu      $v1, $v0, 0x58
/* 1A9DC0 80397D40 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9DC4 80397D44 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9DC8 80397D48 3C03E600 */  lui        $v1, 0xe600
/* 1A9DCC 80397D4C AC40000C */  sw         $zero, 0xc($v0)
/* 1A9DD0 80397D50 AC460010 */  sw         $a2, 0x10($v0)
/* 1A9DD4 80397D54 AC450014 */  sw         $a1, 0x14($v0)
/* 1A9DD8 80397D58 AC470018 */  sw         $a3, 0x18($v0)
/* 1A9DDC 80397D5C AC40001C */  sw         $zero, 0x1c($v0)
/* 1A9DE0 80397D60 AC4A0020 */  sw         $t2, 0x20($v0)
/* 1A9DE4 80397D64 AC480024 */  sw         $t0, 0x24($v0)
/* 1A9DE8 80397D68 AC4B0028 */  sw         $t3, 0x28($v0)
/* 1A9DEC 80397D6C AC49002C */  sw         $t1, 0x2c($v0)
/* 1A9DF0 80397D70 AC440030 */  sw         $a0, 0x30($v0)
/* 1A9DF4 80397D74 AC400034 */  sw         $zero, 0x34($v0)
/* 1A9DF8 80397D78 AC4C0038 */  sw         $t4, 0x38($v0)
/* 1A9DFC 80397D7C AC4D004C */  sw         $t5, 0x4c($v0)
/* 1A9E00 80397D80 AC430050 */  sw         $v1, 0x50($v0)
/* 1A9E04 80397D84 24430060 */  addiu      $v1, $v0, 0x60
/* 1A9E08 80397D88 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9E0C 80397D8C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9E10 80397D90 3C03F300 */  lui        $v1, 0xf300
/* 1A9E14 80397D94 AC430058 */  sw         $v1, 0x58($v0)
/* 1A9E18 80397D98 24430068 */  addiu      $v1, $v0, 0x68
/* 1A9E1C 80397D9C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9E20 80397DA0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9E24 80397DA4 24430070 */  addiu      $v1, $v0, 0x70
/* 1A9E28 80397DA8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9E2C 80397DAC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9E30 80397DB0 24430078 */  addiu      $v1, $v0, 0x78
/* 1A9E34 80397DB4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9E38 80397DB8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9E3C 80397DBC 3C03F200 */  lui        $v1, 0xf200
/* 1A9E40 80397DC0 AC430070 */  sw         $v1, 0x70($v0)
/* 1A9E44 80397DC4 24430080 */  addiu      $v1, $v0, 0x80
/* 1A9E48 80397DC8 AC400054 */  sw         $zero, 0x54($v0)
/* 1A9E4C 80397DCC AC4E005C */  sw         $t6, 0x5c($v0)
/* 1A9E50 80397DD0 AC440060 */  sw         $a0, 0x60($v0)
/* 1A9E54 80397DD4 AC400064 */  sw         $zero, 0x64($v0)
/* 1A9E58 80397DD8 AC500068 */  sw         $s0, 0x68($v0)
/* 1A9E5C 80397DDC AC4F006C */  sw         $t7, 0x6c($v0)
/* 1A9E60 80397DE0 AC510074 */  sw         $s1, 0x74($v0)
/* 1A9E64 80397DE4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9E68 80397DE8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1A9E6C 80397DEC AC520078 */  sw         $s2, 0x78($v0)
/* 1A9E70 80397DF0 AC53007C */  sw         $s3, 0x7c($v0)
.L80397DF4:
/* 1A9E74 80397DF4 1680000A */  bnez       $s4, .L80397E20
/* 1A9E78 80397DF8 3C040703 */   lui       $a0, 0x703
/* 1A9E7C 80397DFC 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1A9E80 80397E00 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1A9E84 80397E04 24620008 */  addiu      $v0, $v1, 8
/* 1A9E88 80397E08 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9E8C 80397E0C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9E90 80397E10 3C02803A */  lui        $v0, %hi(D_803A15A8_1B3628)
/* 1A9E94 80397E14 244215A8 */  addiu      $v0, $v0, %lo(D_803A15A8_1B3628)
/* 1A9E98 80397E18 080E5F90 */  j          .L80397E40
/* 1A9E9C 80397E1C 3484C000 */   ori       $a0, $a0, 0xc000
.L80397E20:
/* 1A9EA0 80397E20 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1A9EA4 80397E24 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1A9EA8 80397E28 3484C000 */  ori        $a0, $a0, 0xc000
/* 1A9EAC 80397E2C 24620008 */  addiu      $v0, $v1, 8
/* 1A9EB0 80397E30 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9EB4 80397E34 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9EB8 80397E38 3C02803A */  lui        $v0, %hi(D_803A15C8_1B3648)
/* 1A9EBC 80397E3C 244215C8 */  addiu      $v0, $v0, %lo(D_803A15C8_1B3648)
.L80397E40:
/* 1A9EC0 80397E40 AC620004 */  sw         $v0, 4($v1)
/* 1A9EC4 80397E44 24620010 */  addiu      $v0, $v1, 0x10
/* 1A9EC8 80397E48 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9ECC 80397E4C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9ED0 80397E50 24620018 */  addiu      $v0, $v1, 0x18
/* 1A9ED4 80397E54 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9ED8 80397E58 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9EDC 80397E5C 24620020 */  addiu      $v0, $v1, 0x20
/* 1A9EE0 80397E60 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9EE4 80397E64 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9EE8 80397E68 24620028 */  addiu      $v0, $v1, 0x28
/* 1A9EEC 80397E6C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9EF0 80397E70 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9EF4 80397E74 3C02F000 */  lui        $v0, 0xf000
/* 1A9EF8 80397E78 AC620020 */  sw         $v0, 0x20($v1)
/* 1A9EFC 80397E7C 24620030 */  addiu      $v0, $v1, 0x30
/* 1A9F00 80397E80 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1A9F04 80397E84 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1A9F08 80397E88 3C02E700 */  lui        $v0, 0xe700
/* 1A9F0C 80397E8C AC7E0000 */  sw         $fp, ($v1)
/* 1A9F10 80397E90 AC780008 */  sw         $t8, 8($v1)
/* 1A9F14 80397E94 AC60000C */  sw         $zero, 0xc($v1)
/* 1A9F18 80397E98 AC750010 */  sw         $s5, 0x10($v1)
/* 1A9F1C 80397E9C AC770014 */  sw         $s7, 0x14($v1)
/* 1A9F20 80397EA0 AC760018 */  sw         $s6, 0x18($v1)
/* 1A9F24 80397EA4 AC60001C */  sw         $zero, 0x1c($v1)
/* 1A9F28 80397EA8 AC640024 */  sw         $a0, 0x24($v1)
/* 1A9F2C 80397EAC AC620028 */  sw         $v0, 0x28($v1)
/* 1A9F30 80397EB0 AC60002C */  sw         $zero, 0x2c($v1)
/* 1A9F34 80397EB4 8E620050 */  lw         $v0, 0x50($s3)
/* 1A9F38 80397EB8 8E710054 */  lw         $s1, 0x54($s3)
/* 1A9F3C 80397EBC 18400071 */  blez       $v0, .L80398084
/* 1A9F40 80397EC0 00009021 */   addu      $s2, $zero, $zero
/* 1A9F44 80397EC4 26300062 */  addiu      $s0, $s1, 0x62
.L80397EC8:
/* 1A9F48 80397EC8 86020000 */  lh         $v0, ($s0)
/* 1A9F4C 80397ECC 50400068 */  beql       $v0, $zero, .L80398070
/* 1A9F50 80397ED0 26520001 */   addiu     $s2, $s2, 1
/* 1A9F54 80397ED4 1680000C */  bnez       $s4, .L80397F08
/* 1A9F58 80397ED8 00000000 */   nop
/* 1A9F5C 80397EDC 9204FFFF */  lbu        $a0, -1($s0)
/* 1A9F60 80397EE0 24820001 */  addiu      $v0, $a0, 1
/* 1A9F64 80397EE4 A202FFFF */  sb         $v0, -1($s0)
/* 1A9F68 80397EE8 00021600 */  sll        $v0, $v0, 0x18
/* 1A9F6C 80397EEC 00021E03 */  sra        $v1, $v0, 0x18
/* 1A9F70 80397EF0 28620002 */  slti       $v0, $v1, 2
/* 1A9F74 80397EF4 10400003 */  beqz       $v0, .L80397F04
/* 1A9F78 80397EF8 2482FFFF */   addiu     $v0, $a0, -1
/* 1A9F7C 80397EFC 04610002 */  bgez       $v1, .L80397F08
/* 1A9F80 80397F00 24820003 */   addiu     $v0, $a0, 3
.L80397F04:
/* 1A9F84 80397F04 A202FFFF */  sb         $v0, -1($s0)
.L80397F08:
/* 1A9F88 80397F08 8202FFFF */  lb         $v0, -1($s0)
/* 1A9F8C 80397F0C 54540058 */  bnel       $v0, $s4, .L80398070
/* 1A9F90 80397F10 26520001 */   addiu     $s2, $s2, 1
/* 1A9F94 80397F14 C6600048 */  lwc1       $f0, 0x48($s3)
/* 1A9F98 80397F18 8602FFF6 */  lh         $v0, -0xa($s0)
/* 1A9F9C 80397F1C 8603FFF8 */  lh         $v1, -8($s0)
/* 1A9FA0 80397F20 8607FFFA */  lh         $a3, -6($s0)
/* 1A9FA4 80397F24 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1A9FA8 80397F28 C600FFDE */  lwc1       $f0, -0x22($s0)
/* 1A9FAC 80397F2C 44825000 */  mtc1       $v0, $f10
/* 1A9FB0 80397F30 00000000 */  nop
/* 1A9FB4 80397F34 468052A0 */  cvt.s.w    $f10, $f10
/* 1A9FB8 80397F38 44055000 */  mfc1       $a1, $f10
/* 1A9FBC 80397F3C 00000000 */  nop
/* 1A9FC0 80397F40 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1A9FC4 80397F44 C600FFE2 */  lwc1       $f0, -0x1e($s0)
/* 1A9FC8 80397F48 44835000 */  mtc1       $v1, $f10
/* 1A9FCC 80397F4C 00000000 */  nop
/* 1A9FD0 80397F50 468052A0 */  cvt.s.w    $f10, $f10
/* 1A9FD4 80397F54 44065000 */  mfc1       $a2, $f10
/* 1A9FD8 80397F58 00000000 */  nop
/* 1A9FDC 80397F5C E7A00018 */  swc1       $f0, 0x18($sp)
/* 1A9FE0 80397F60 C600FFE6 */  lwc1       $f0, -0x1a($s0)
/* 1A9FE4 80397F64 44875000 */  mtc1       $a3, $f10
/* 1A9FE8 80397F68 00000000 */  nop
/* 1A9FEC 80397F6C 468052A0 */  cvt.s.w    $f10, $f10
/* 1A9FF0 80397F70 44075000 */  mfc1       $a3, $f10
/* 1A9FF4 80397F74 00000000 */  nop
/* 1A9FF8 80397F78 02202021 */  addu       $a0, $s1, $zero
/* 1A9FFC 80397F7C AFB80030 */  sw         $t8, 0x30($sp)
/* 1AA000 80397F80 0C02FD0E */  jal        func_800BF438
/* 1AA004 80397F84 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 1AA008 80397F88 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1AA00C 80397F8C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1AA010 80397F90 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1AA014 80397F94 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1AA018 80397F98 3C02DA38 */  lui        $v0, 0xda38
/* 1AA01C 80397F9C AC620000 */  sw         $v0, ($v1)
/* 1AA020 80397FA0 3C02DE00 */  lui        $v0, 0xde00
/* 1AA024 80397FA4 AC710004 */  sw         $s1, 4($v1)
/* 1AA028 80397FA8 AC620008 */  sw         $v0, 8($v1)
/* 1AA02C 80397FAC 8E64004C */  lw         $a0, 0x4c($s3)
/* 1AA030 80397FB0 24620008 */  addiu      $v0, $v1, 8
/* 1AA034 80397FB4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AA038 80397FB8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AA03C 80397FBC 24620010 */  addiu      $v0, $v1, 0x10
/* 1AA040 80397FC0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AA044 80397FC4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AA048 80397FC8 AC64000C */  sw         $a0, 0xc($v1)
/* 1AA04C 80397FCC 9203FFFC */  lbu        $v1, -4($s0)
/* 1AA050 80397FD0 9205FFFD */  lbu        $a1, -3($s0)
/* 1AA054 80397FD4 9204FFFE */  lbu        $a0, -2($s0)
/* 1AA058 80397FD8 9602FFF6 */  lhu        $v0, -0xa($s0)
/* 1AA05C 80397FDC C604FFDE */  lwc1       $f4, -0x22($s0)
/* 1AA060 80397FE0 C608FFEA */  lwc1       $f8, -0x16($s0)
/* 1AA064 80397FE4 C606FFE2 */  lwc1       $f6, -0x1e($s0)
/* 1AA068 80397FE8 C602FFE6 */  lwc1       $f2, -0x1a($s0)
/* 1AA06C 80397FEC 00031E00 */  sll        $v1, $v1, 0x18
/* 1AA070 80397FF0 00031E03 */  sra        $v1, $v1, 0x18
/* 1AA074 80397FF4 00052E00 */  sll        $a1, $a1, 0x18
/* 1AA078 80397FF8 00052E03 */  sra        $a1, $a1, 0x18
/* 1AA07C 80397FFC 46002100 */  add.s      $f4, $f4, $f0
/* 1AA080 80398000 C600FFEE */  lwc1       $f0, -0x12($s0)
/* 1AA084 80398004 00431021 */  addu       $v0, $v0, $v1
/* 1AA088 80398008 9603FFF8 */  lhu        $v1, -8($s0)
/* 1AA08C 8039800C 46003180 */  add.s      $f6, $f6, $f0
/* 1AA090 80398010 C600FFF2 */  lwc1       $f0, -0xe($s0)
/* 1AA094 80398014 00042600 */  sll        $a0, $a0, 0x18
/* 1AA098 80398018 00042603 */  sra        $a0, $a0, 0x18
/* 1AA09C 8039801C A602FFF6 */  sh         $v0, -0xa($s0)
/* 1AA0A0 80398020 9602FFFA */  lhu        $v0, -6($s0)
/* 1AA0A4 80398024 46001080 */  add.s      $f2, $f2, $f0
/* 1AA0A8 80398028 C600FFEE */  lwc1       $f0, -0x12($s0)
/* 1AA0AC 8039802C 00651821 */  addu       $v1, $v1, $a1
/* 1AA0B0 80398030 00441021 */  addu       $v0, $v0, $a0
/* 1AA0B4 80398034 A603FFF8 */  sh         $v1, -8($s0)
/* 1AA0B8 80398038 46082200 */  add.s      $f8, $f4, $f8
/* 1AA0BC 8039803C A602FFFA */  sh         $v0, -6($s0)
/* 1AA0C0 80398040 E604FFDE */  swc1       $f4, -0x22($s0)
/* 1AA0C4 80398044 E606FFE2 */  swc1       $f6, -0x1e($s0)
/* 1AA0C8 80398048 E608FFDE */  swc1       $f8, -0x22($s0)
/* 1AA0CC 8039804C E602FFE6 */  swc1       $f2, -0x1a($s0)
/* 1AA0D0 80398050 C6620044 */  lwc1       $f2, 0x44($s3)
/* 1AA0D4 80398054 96020000 */  lhu        $v0, ($s0)
/* 1AA0D8 80398058 46020000 */  add.s      $f0, $f0, $f2
/* 1AA0DC 8039805C 2442FFFF */  addiu      $v0, $v0, -1
/* 1AA0E0 80398060 A6020000 */  sh         $v0, ($s0)
/* 1AA0E4 80398064 E600FFEE */  swc1       $f0, -0x12($s0)
/* 1AA0E8 80398068 8FB80030 */  lw         $t8, 0x30($sp)
/* 1AA0EC 8039806C 26520001 */  addiu      $s2, $s2, 1
.L80398070:
/* 1AA0F0 80398070 8E620050 */  lw         $v0, 0x50($s3)
/* 1AA0F4 80398074 26100070 */  addiu      $s0, $s0, 0x70
/* 1AA0F8 80398078 0242102A */  slt        $v0, $s2, $v0
/* 1AA0FC 8039807C 1440FF92 */  bnez       $v0, .L80397EC8
/* 1AA100 80398080 26310070 */   addiu     $s1, $s1, 0x70
.L80398084:
/* 1AA104 80398084 26940001 */  addiu      $s4, $s4, 1
/* 1AA108 80398088 2A820002 */  slti       $v0, $s4, 2
/* 1AA10C 8039808C 1440FF59 */  bnez       $v0, .L80397DF4
/* 1AA110 80398090 00001021 */   addu      $v0, $zero, $zero
/* 1AA114 80398094 080E6028 */  j          .L803980A0
/* 1AA118 80398098 00000000 */   nop
.L8039809C:
/* 1AA11C 8039809C 24020001 */  addiu      $v0, $zero, 1
.L803980A0:
/* 1AA120 803980A0 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1AA124 803980A4 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1AA128 803980A8 8FB70054 */  lw         $s7, 0x54($sp)
/* 1AA12C 803980AC 8FB60050 */  lw         $s6, 0x50($sp)
/* 1AA130 803980B0 8FB5004C */  lw         $s5, 0x4c($sp)
/* 1AA134 803980B4 8FB40048 */  lw         $s4, 0x48($sp)
/* 1AA138 803980B8 8FB30044 */  lw         $s3, 0x44($sp)
/* 1AA13C 803980BC 8FB20040 */  lw         $s2, 0x40($sp)
/* 1AA140 803980C0 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1AA144 803980C4 8FB00038 */  lw         $s0, 0x38($sp)
/* 1AA148 803980C8 27BD0060 */  addiu      $sp, $sp, 0x60
/* 1AA14C 803980CC 03E00008 */  jr         $ra
/* 1AA150 803980D0 00000000 */   nop

glabel func_803980D4
/* 1AA154 803980D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AA158 803980D8 8FA20028 */  lw         $v0, 0x28($sp)
/* 1AA15C 803980DC 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1AA160 803980E0 8FA80030 */  lw         $t0, 0x30($sp)
/* 1AA164 803980E4 8FA90034 */  lw         $t1, 0x34($sp)
/* 1AA168 803980E8 00042400 */  sll        $a0, $a0, 0x10
/* 1AA16C 803980EC 00042403 */  sra        $a0, $a0, 0x10
/* 1AA170 803980F0 00052C00 */  sll        $a1, $a1, 0x10
/* 1AA174 803980F4 00052C03 */  sra        $a1, $a1, 0x10
/* 1AA178 803980F8 00063400 */  sll        $a2, $a2, 0x10
/* 1AA17C 803980FC 00063403 */  sra        $a2, $a2, 0x10
/* 1AA180 80398100 00073C00 */  sll        $a3, $a3, 0x10
/* 1AA184 80398104 00073C03 */  sra        $a3, $a3, 0x10
/* 1AA188 80398108 3C01803B */  lui        $at, %hi(D_803B3E28)
/* 1AA18C 8039810C AC243E28 */  sw         $a0, %lo(D_803B3E28)($at)
/* 1AA190 80398110 3C048039 */  lui        $a0, %hi(D_80397230)
/* 1AA194 80398114 24847230 */  addiu      $a0, $a0, %lo(D_80397230)
/* 1AA198 80398118 3C01803B */  lui        $at, %hi(D_803B3E34)
/* 1AA19C 8039811C AC253E34 */  sw         $a1, %lo(D_803B3E34)($at)
/* 1AA1A0 80398120 24050001 */  addiu      $a1, $zero, 1
/* 1AA1A4 80398124 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 1AA1A8 80398128 AC263EA8 */  sw         $a2, %lo(D_803B3EA8)($at)
/* 1AA1AC 8039812C 24060136 */  addiu      $a2, $zero, 0x136
/* 1AA1B0 80398130 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AA1B4 80398134 AC273E20 */  sw         $a3, %lo(D_803B3E20)($at)
/* 1AA1B8 80398138 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AA1BC 8039813C 00021400 */  sll        $v0, $v0, 0x10
/* 1AA1C0 80398140 00021403 */  sra        $v0, $v0, 0x10
/* 1AA1C4 80398144 00031C00 */  sll        $v1, $v1, 0x10
/* 1AA1C8 80398148 00031C03 */  sra        $v1, $v1, 0x10
/* 1AA1CC 8039814C 00084400 */  sll        $t0, $t0, 0x10
/* 1AA1D0 80398150 00084403 */  sra        $t0, $t0, 0x10
/* 1AA1D4 80398154 00094C00 */  sll        $t1, $t1, 0x10
/* 1AA1D8 80398158 00094C03 */  sra        $t1, $t1, 0x10
/* 1AA1DC 8039815C 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1AA1E0 80398160 AC223E5C */  sw         $v0, %lo(D_803B3E5C)($at)
/* 1AA1E4 80398164 3C01803B */  lui        $at, %hi(D_803B3EB8)
/* 1AA1E8 80398168 AC233EB8 */  sw         $v1, %lo(D_803B3EB8)($at)
/* 1AA1EC 8039816C 3C01803B */  lui        $at, %hi(D_803B3E60)
/* 1AA1F0 80398170 AC283E60 */  sw         $t0, %lo(D_803B3E60)($at)
/* 1AA1F4 80398174 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 1AA1F8 80398178 AC293EAC */  sw         $t1, %lo(D_803B3EAC)($at)
/* 1AA1FC 8039817C 0C025D06 */  jal        func_80097418
/* 1AA200 80398180 24070001 */   addiu     $a3, $zero, 1
/* 1AA204 80398184 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AA208 80398188 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AA20C 8039818C 03E00008 */  jr         $ra
/* 1AA210 80398190 00000000 */   nop
/* 1AA214 80398194 00000000 */  nop
/* 1AA218 80398198 00000000 */  nop
/* 1AA21C 8039819C 00000000 */  nop

glabel func_803981A0_1AA220
/* 1AA220 803981A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AA224 803981A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AA228 803981A8 00808021 */  addu       $s0, $a0, $zero
/* 1AA22C 803981AC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AA230 803981B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AA234 803981B4 9603001C */  lhu        $v1, 0x1c($s0)
/* 1AA238 803981B8 24110001 */  addiu      $s1, $zero, 1
/* 1AA23C 803981BC 1071002D */  beq        $v1, $s1, .L80398274
/* 1AA240 803981C0 28620002 */   slti      $v0, $v1, 2
/* 1AA244 803981C4 50400005 */  beql       $v0, $zero, .L803981DC
/* 1AA248 803981C8 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AA24C 803981CC 10600007 */  beqz       $v1, .L803981EC
/* 1AA250 803981D0 00000000 */   nop
/* 1AA254 803981D4 080E60C4 */  j          .L80398310
/* 1AA258 803981D8 00000000 */   nop
.L803981DC:
/* 1AA25C 803981DC 1062002D */  beq        $v1, $v0, .L80398294
/* 1AA260 803981E0 00000000 */   nop
/* 1AA264 803981E4 080E60C4 */  j          .L80398310
/* 1AA268 803981E8 00000000 */   nop
.L803981EC:
/* 1AA26C 803981EC 8E03000C */  lw         $v1, 0xc($s0)
/* 1AA270 803981F0 1071000F */  beq        $v1, $s1, .L80398230
/* 1AA274 803981F4 28620002 */   slti      $v0, $v1, 2
/* 1AA278 803981F8 50400005 */  beql       $v0, $zero, .L80398210
/* 1AA27C 803981FC 24020002 */   addiu     $v0, $zero, 2
/* 1AA280 80398200 10600007 */  beqz       $v1, .L80398220
/* 1AA284 80398204 00000000 */   nop
/* 1AA288 80398208 080E6096 */  j          .L80398258
/* 1AA28C 8039820C 00000000 */   nop
.L80398210:
/* 1AA290 80398210 1062000B */  beq        $v1, $v0, .L80398240
/* 1AA294 80398214 00000000 */   nop
/* 1AA298 80398218 080E6096 */  j          .L80398258
/* 1AA29C 8039821C 00000000 */   nop
.L80398220:
/* 1AA2A0 80398220 0C032663 */  jal        func_800C998C
/* 1AA2A4 80398224 24040068 */   addiu     $a0, $zero, 0x68
/* 1AA2A8 80398228 080E6093 */  j          .L8039824C
/* 1AA2AC 8039822C AE020014 */   sw        $v0, 0x14($s0)
.L80398230:
/* 1AA2B0 80398230 0C025E63 */  jal        func_8009798C
/* 1AA2B4 80398234 24040068 */   addiu     $a0, $zero, 0x68
/* 1AA2B8 80398238 080E6093 */  j          .L8039824C
/* 1AA2BC 8039823C AE020014 */   sw        $v0, 0x14($s0)
.L80398240:
/* 1AA2C0 80398240 0C026127 */  jal        func_8009849C
/* 1AA2C4 80398244 24040068 */   addiu     $a0, $zero, 0x68
/* 1AA2C8 80398248 AE020014 */  sw         $v0, 0x14($s0)
.L8039824C:
/* 1AA2CC 8039824C 00402021 */  addu       $a0, $v0, $zero
/* 1AA2D0 80398250 0C030134 */  jal        bzero
/* 1AA2D4 80398254 24050068 */   addiu     $a1, $zero, 0x68
.L80398258:
/* 1AA2D8 80398258 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA2DC 8039825C 0C0E60CC */  jal        func_80398330_1AA3B0
/* 1AA2E0 80398260 00000000 */   nop
/* 1AA2E4 80398264 00001021 */  addu       $v0, $zero, $zero
/* 1AA2E8 80398268 24030001 */  addiu      $v1, $zero, 1
/* 1AA2EC 8039826C 080E60C6 */  j          .L80398318
/* 1AA2F0 80398270 A603001C */   sh        $v1, 0x1c($s0)
.L80398274:
/* 1AA2F4 80398274 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA2F8 80398278 0C0E6139 */  jal        func_803984E4_1AA564
/* 1AA2FC 8039827C 00000000 */   nop
/* 1AA300 80398280 10400002 */  beqz       $v0, .L8039828C
/* 1AA304 80398284 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AA308 80398288 A602001C */  sh         $v0, 0x1c($s0)
.L8039828C:
/* 1AA30C 8039828C 080E60C6 */  j          .L80398318
/* 1AA310 80398290 00001021 */   addu      $v0, $zero, $zero
.L80398294:
/* 1AA314 80398294 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA318 80398298 0C0E6130 */  jal        func_803984C0_1AA540
/* 1AA31C 8039829C 00000000 */   nop
/* 1AA320 803982A0 8E03000C */  lw         $v1, 0xc($s0)
/* 1AA324 803982A4 10710010 */  beq        $v1, $s1, .L803982E8
/* 1AA328 803982A8 28620002 */   slti      $v0, $v1, 2
/* 1AA32C 803982AC 50400005 */  beql       $v0, $zero, .L803982C4
/* 1AA330 803982B0 24020002 */   addiu     $v0, $zero, 2
/* 1AA334 803982B4 10600007 */  beqz       $v1, .L803982D4
/* 1AA338 803982B8 24020001 */   addiu     $v0, $zero, 1
/* 1AA33C 803982BC 080E60C6 */  j          .L80398318
/* 1AA340 803982C0 00000000 */   nop
.L803982C4:
/* 1AA344 803982C4 1062000D */  beq        $v1, $v0, .L803982FC
/* 1AA348 803982C8 24020001 */   addiu     $v0, $zero, 1
/* 1AA34C 803982CC 080E60C6 */  j          .L80398318
/* 1AA350 803982D0 00000000 */   nop
.L803982D4:
/* 1AA354 803982D4 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA358 803982D8 0C0326A1 */  jal        func_800C9A84
/* 1AA35C 803982DC 00000000 */   nop
/* 1AA360 803982E0 080E60C6 */  j          .L80398318
/* 1AA364 803982E4 24020001 */   addiu     $v0, $zero, 1
.L803982E8:
/* 1AA368 803982E8 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA36C 803982EC 0C025EC3 */  jal        func_80097B0C
/* 1AA370 803982F0 00000000 */   nop
/* 1AA374 803982F4 080E60C6 */  j          .L80398318
/* 1AA378 803982F8 24020001 */   addiu     $v0, $zero, 1
.L803982FC:
/* 1AA37C 803982FC 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA380 80398300 0C026187 */  jal        func_8009861C
/* 1AA384 80398304 00000000 */   nop
/* 1AA388 80398308 080E60C6 */  j          .L80398318
/* 1AA38C 8039830C 24020001 */   addiu     $v0, $zero, 1
.L80398310:
/* 1AA390 80398310 0C032934 */  jal        func_800CA4D0
/* 1AA394 80398314 00000000 */   nop
.L80398318:
/* 1AA398 80398318 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AA39C 8039831C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AA3A0 80398320 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AA3A4 80398324 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AA3A8 80398328 03E00008 */  jr         $ra
/* 1AA3AC 8039832C 00000000 */   nop

glabel func_80398330_1AA3B0
/* 1AA3B0 80398330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AA3B4 80398334 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AA3B8 80398338 00808021 */  addu       $s0, $a0, $zero
/* 1AA3BC 8039833C 24040080 */  addiu      $a0, $zero, 0x80
/* 1AA3C0 80398340 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1AA3C4 80398344 C4203EBC */  lwc1       $f0, %lo(D_803B3EBC)($at)
/* 1AA3C8 80398348 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1AA3CC 8039834C C4223EB0 */  lwc1       $f2, %lo(D_803B3EB0)($at)
/* 1AA3D0 80398350 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1AA3D4 80398354 C4243E2C */  lwc1       $f4, %lo(D_803B3E2C)($at)
/* 1AA3D8 80398358 3C02803B */  lui        $v0, %hi(D_803B3E28)
/* 1AA3DC 8039835C 8C423E28 */  lw         $v0, %lo(D_803B3E28)($v0)
/* 1AA3E0 80398360 00002821 */  addu       $a1, $zero, $zero
/* 1AA3E4 80398364 00003021 */  addu       $a2, $zero, $zero
/* 1AA3E8 80398368 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1AA3EC 8039836C E6000048 */  swc1       $f0, 0x48($s0)
/* 1AA3F0 80398370 E602004C */  swc1       $f2, 0x4c($s0)
/* 1AA3F4 80398374 E6040050 */  swc1       $f4, 0x50($s0)
/* 1AA3F8 80398378 0C027DAC */  jal        func_8009F6B0
/* 1AA3FC 8039837C A2020066 */   sb        $v0, 0x66($s0)
/* 1AA400 80398380 AE020000 */  sw         $v0, ($s0)
/* 1AA404 80398384 90430066 */  lbu        $v1, 0x66($v0)
/* 1AA408 80398388 34630021 */  ori        $v1, $v1, 0x21
/* 1AA40C 8039838C A0430066 */  sb         $v1, 0x66($v0)
/* 1AA410 80398390 8E030000 */  lw         $v1, ($s0)
/* 1AA414 80398394 2402000A */  addiu      $v0, $zero, 0xa
/* 1AA418 80398398 A0620067 */  sb         $v0, 0x67($v1)
/* 1AA41C 8039839C 3C03803B */  lui        $v1, %hi(D_803B3EAC)
/* 1AA420 803983A0 8C633EAC */  lw         $v1, %lo(D_803B3EAC)($v1)
/* 1AA424 803983A4 24020001 */  addiu      $v0, $zero, 1
/* 1AA428 803983A8 10620011 */  beq        $v1, $v0, .L803983F0
/* 1AA42C 803983AC 28620002 */   slti      $v0, $v1, 2
/* 1AA430 803983B0 1440000F */  bnez       $v0, .L803983F0
/* 1AA434 803983B4 24020002 */   addiu     $v0, $zero, 2
/* 1AA438 803983B8 10620003 */  beq        $v1, $v0, .L803983C8
/* 1AA43C 803983BC 24020003 */   addiu     $v0, $zero, 3
/* 1AA440 803983C0 1462000B */  bne        $v1, $v0, .L803983F0
/* 1AA444 803983C4 00000000 */   nop
.L803983C8:
/* 1AA448 803983C8 8E040000 */  lw         $a0, ($s0)
/* 1AA44C 803983CC 3C05803B */  lui        $a1, %hi(D_803A8C40_1BACC0)
/* 1AA450 803983D0 24A58C40 */  addiu      $a1, $a1, %lo(D_803A8C40_1BACC0)
/* 1AA454 803983D4 0C0285D4 */  jal        func_800A1750
/* 1AA458 803983D8 00000000 */   nop
/* 1AA45C 803983DC 3C04803A */  lui        $a0, %hi(D_803A1710_1B3790)
/* 1AA460 803983E0 24841710 */  addiu      $a0, $a0, %lo(D_803A1710_1B3790)
/* 1AA464 803983E4 00402821 */  addu       $a1, $v0, $zero
/* 1AA468 803983E8 0C03006C */  jal        func_800C01B0
/* 1AA46C 803983EC 24060020 */   addiu     $a2, $zero, 0x20
.L803983F0:
/* 1AA470 803983F0 92030066 */  lbu        $v1, 0x66($s0)
/* 1AA474 803983F4 24020004 */  addiu      $v0, $zero, 4
/* 1AA478 803983F8 10620005 */  beq        $v1, $v0, .L80398410
/* 1AA47C 803983FC 24020005 */   addiu     $v0, $zero, 5
/* 1AA480 80398400 10620019 */  beq        $v1, $v0, .L80398468
/* 1AA484 80398404 24020014 */   addiu     $v0, $zero, 0x14
/* 1AA488 80398408 080E612B */  j          .L803984AC
/* 1AA48C 8039840C 00000000 */   nop
.L80398410:
/* 1AA490 80398410 3C013CA3 */  lui        $at, 0x3ca3
/* 1AA494 80398414 3421D70A */  ori        $at, $at, 0xd70a
/* 1AA498 80398418 44810000 */  mtc1       $at, $f0
/* 1AA49C 8039841C 00000000 */  nop
/* 1AA4A0 80398420 3C013BA3 */  lui        $at, 0x3ba3
/* 1AA4A4 80398424 3421D70A */  ori        $at, $at, 0xd70a
/* 1AA4A8 80398428 44811000 */  mtc1       $at, $f2
/* 1AA4AC 8039842C 00000000 */  nop
/* 1AA4B0 80398430 3C014300 */  lui        $at, 0x4300
/* 1AA4B4 80398434 44812000 */  mtc1       $at, $f4
/* 1AA4B8 80398438 00000000 */  nop
/* 1AA4BC 8039843C 3C01C0CC */  lui        $at, 0xc0cc
/* 1AA4C0 80398440 3421CCCD */  ori        $at, $at, 0xcccd
/* 1AA4C4 80398444 44813000 */  mtc1       $at, $f6
/* 1AA4C8 80398448 00000000 */  nop
/* 1AA4CC 8039844C 24020014 */  addiu      $v0, $zero, 0x14
/* 1AA4D0 80398450 A6020064 */  sh         $v0, 0x64($s0)
/* 1AA4D4 80398454 E6000054 */  swc1       $f0, 0x54($s0)
/* 1AA4D8 80398458 E6020058 */  swc1       $f2, 0x58($s0)
/* 1AA4DC 8039845C E604005C */  swc1       $f4, 0x5c($s0)
/* 1AA4E0 80398460 080E612B */  j          .L803984AC
/* 1AA4E4 80398464 E6060060 */   swc1      $f6, 0x60($s0)
.L80398468:
/* 1AA4E8 80398468 3C013D81 */  lui        $at, 0x3d81
/* 1AA4EC 8039846C 34210625 */  ori        $at, $at, 0x625
/* 1AA4F0 80398470 44810000 */  mtc1       $at, $f0
/* 1AA4F4 80398474 00000000 */  nop
/* 1AA4F8 80398478 3C01BB4E */  lui        $at, 0xbb4e
/* 1AA4FC 8039847C 3421F4AE */  ori        $at, $at, 0xf4ae
/* 1AA500 80398480 44811000 */  mtc1       $at, $f2
/* 1AA504 80398484 00000000 */  nop
/* 1AA508 80398488 3C0140CC */  lui        $at, 0x40cc
/* 1AA50C 8039848C 3421CCCD */  ori        $at, $at, 0xcccd
/* 1AA510 80398490 44812000 */  mtc1       $at, $f4
/* 1AA514 80398494 00000000 */  nop
/* 1AA518 80398498 AE00005C */  sw         $zero, 0x5c($s0)
/* 1AA51C 8039849C A6020064 */  sh         $v0, 0x64($s0)
/* 1AA520 803984A0 E6000054 */  swc1       $f0, 0x54($s0)
/* 1AA524 803984A4 E6020058 */  swc1       $f2, 0x58($s0)
/* 1AA528 803984A8 E6040060 */  swc1       $f4, 0x60($s0)
.L803984AC:
/* 1AA52C 803984AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AA530 803984B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AA534 803984B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AA538 803984B8 03E00008 */  jr         $ra
/* 1AA53C 803984BC 00000000 */   nop

glabel func_803984C0_1AA540
/* 1AA540 803984C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AA544 803984C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AA548 803984C8 8C840000 */  lw         $a0, ($a0)
/* 1AA54C 803984CC 0C027E98 */  jal        func_8009FA60
/* 1AA550 803984D0 00000000 */   nop
/* 1AA554 803984D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AA558 803984D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AA55C 803984DC 03E00008 */  jr         $ra
/* 1AA560 803984E0 00000000 */   nop

glabel func_803984E4_1AA564
/* 1AA564 803984E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1AA568 803984E8 AFB00028 */  sw         $s0, 0x28($sp)
/* 1AA56C 803984EC 00808021 */  addu       $s0, $a0, $zero
/* 1AA570 803984F0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1AA574 803984F4 86020064 */  lh         $v0, 0x64($s0)
/* 1AA578 803984F8 10400070 */  beqz       $v0, .L803986BC
/* 1AA57C 803984FC 00401821 */   addu      $v1, $v0, $zero
/* 1AA580 80398500 92040066 */  lbu        $a0, 0x66($s0)
/* 1AA584 80398504 2462FFFF */  addiu      $v0, $v1, -1
/* 1AA588 80398508 A6020064 */  sh         $v0, 0x64($s0)
/* 1AA58C 8039850C 24020004 */  addiu      $v0, $zero, 4
/* 1AA590 80398510 10820005 */  beq        $a0, $v0, .L80398528
/* 1AA594 80398514 24020005 */   addiu     $v0, $zero, 5
/* 1AA598 80398518 10820013 */  beq        $a0, $v0, .L80398568
/* 1AA59C 8039851C 26040008 */   addiu     $a0, $s0, 8
/* 1AA5A0 80398520 080E6170 */  j          .L803985C0
/* 1AA5A4 80398524 00000000 */   nop
.L80398528:
/* 1AA5A8 80398528 C6000054 */  lwc1       $f0, 0x54($s0)
/* 1AA5AC 8039852C E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AA5B0 80398530 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1AA5B4 80398534 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1AA5B8 80398538 C600004C */  lwc1       $f0, 0x4c($s0)
/* 1AA5BC 8039853C E7A00018 */  swc1       $f0, 0x18($sp)
/* 1AA5C0 80398540 44800000 */  mtc1       $zero, $f0
/* 1AA5C4 80398544 00000000 */  nop
/* 1AA5C8 80398548 26040008 */  addiu      $a0, $s0, 8
/* 1AA5CC 8039854C 44050000 */  mfc1       $a1, $f0
/* 1AA5D0 80398550 00000000 */  nop
/* 1AA5D4 80398554 C6020050 */  lwc1       $f2, 0x50($s0)
/* 1AA5D8 80398558 00A03021 */  addu       $a2, $a1, $zero
/* 1AA5DC 8039855C 00A03821 */  addu       $a3, $a1, $zero
/* 1AA5E0 80398560 080E616E */  j          .L803985B8
/* 1AA5E4 80398564 E7A2001C */   swc1      $f2, 0x1c($sp)
.L80398568:
/* 1AA5E8 80398568 C6000054 */  lwc1       $f0, 0x54($s0)
/* 1AA5EC 8039856C 3C068015 */  lui        $a2, %hi(D_8014A080)
/* 1AA5F0 80398570 8CC6A080 */  lw         $a2, %lo(D_8014A080)($a2)
/* 1AA5F4 80398574 3C078015 */  lui        $a3, %hi(D_8014A084)
/* 1AA5F8 80398578 8CE7A084 */  lw         $a3, %lo(D_8014A084)($a3)
/* 1AA5FC 8039857C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1AA600 80398580 C424A07C */  lwc1       $f4, %lo(D_8014A07C)($at)
/* 1AA604 80398584 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AA608 80398588 C6000048 */  lwc1       $f0, 0x48($s0)
/* 1AA60C 8039858C E7A00014 */  swc1       $f0, 0x14($sp)
/* 1AA610 80398590 3C014387 */  lui        $at, 0x4387
/* 1AA614 80398594 44810000 */  mtc1       $at, $f0
/* 1AA618 80398598 00000000 */  nop
/* 1AA61C 8039859C C602004C */  lwc1       $f2, 0x4c($s0)
/* 1AA620 803985A0 46002100 */  add.s      $f4, $f4, $f0
/* 1AA624 803985A4 E7A20018 */  swc1       $f2, 0x18($sp)
/* 1AA628 803985A8 C6000050 */  lwc1       $f0, 0x50($s0)
/* 1AA62C 803985AC 44052000 */  mfc1       $a1, $f4
/* 1AA630 803985B0 00000000 */  nop
/* 1AA634 803985B4 E7A0001C */  swc1       $f0, 0x1c($sp)
.L803985B8:
/* 1AA638 803985B8 0C02FD0E */  jal        func_800BF438
/* 1AA63C 803985BC 00000000 */   nop
.L803985C0:
/* 1AA640 803985C0 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AA644 803985C4 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AA648 803985C8 3C014F00 */  lui        $at, 0x4f00
/* 1AA64C 803985CC 44810000 */  mtc1       $at, $f0
/* 1AA650 803985D0 00000000 */  nop
/* 1AA654 803985D4 3C03DA38 */  lui        $v1, 0xda38
/* 1AA658 803985D8 34630003 */  ori        $v1, $v1, 3
/* 1AA65C 803985DC AC430000 */  sw         $v1, ($v0)
/* 1AA660 803985E0 26030008 */  addiu      $v1, $s0, 8
/* 1AA664 803985E4 AC430004 */  sw         $v1, 4($v0)
/* 1AA668 803985E8 C602005C */  lwc1       $f2, 0x5c($s0)
/* 1AA66C 803985EC 4602003E */  c.le.s     $f0, $f2
/* 1AA670 803985F0 00000000 */  nop
/* 1AA674 803985F4 00000000 */  nop
/* 1AA678 803985F8 24420008 */  addiu      $v0, $v0, 8
/* 1AA67C 803985FC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AA680 80398600 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AA684 80398604 45030006 */  bc1tl      .L80398620
/* 1AA688 80398608 46001001 */   sub.s     $f0, $f2, $f0
/* 1AA68C 8039860C 4600100D */  trunc.w.s  $f0, $f2
/* 1AA690 80398610 44030000 */  mfc1       $v1, $f0
/* 1AA694 80398614 00000000 */  nop
/* 1AA698 80398618 080E618E */  j          .L80398638
/* 1AA69C 8039861C 306200FF */   andi      $v0, $v1, 0xff
.L80398620:
/* 1AA6A0 80398620 4600008D */  trunc.w.s  $f2, $f0
/* 1AA6A4 80398624 44031000 */  mfc1       $v1, $f2
/* 1AA6A8 80398628 00000000 */  nop
/* 1AA6AC 8039862C 3C028000 */  lui        $v0, 0x8000
/* 1AA6B0 80398630 00621825 */  or         $v1, $v1, $v0
/* 1AA6B4 80398634 306200FF */  andi       $v0, $v1, 0xff
.L80398638:
/* 1AA6B8 80398638 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AA6BC 8039863C 8E040000 */  lw         $a0, ($s0)
/* 1AA6C0 80398640 240500FF */  addiu      $a1, $zero, 0xff
/* 1AA6C4 80398644 240600FF */  addiu      $a2, $zero, 0xff
/* 1AA6C8 80398648 0C027F5E */  jal        func_8009FD78
/* 1AA6CC 8039864C 240700FF */   addiu     $a3, $zero, 0xff
/* 1AA6D0 80398650 8E040000 */  lw         $a0, ($s0)
/* 1AA6D4 80398654 0C027F77 */  jal        func_8009FDDC
/* 1AA6D8 80398658 00002821 */   addu      $a1, $zero, $zero
/* 1AA6DC 8039865C C602005C */  lwc1       $f2, 0x5c($s0)
/* 1AA6E0 80398660 C6000060 */  lwc1       $f0, 0x60($s0)
/* 1AA6E4 80398664 46001080 */  add.s      $f2, $f2, $f0
/* 1AA6E8 80398668 3C01437F */  lui        $at, 0x437f
/* 1AA6EC 8039866C 44810000 */  mtc1       $at, $f0
/* 1AA6F0 80398670 00000000 */  nop
/* 1AA6F4 80398674 4602003C */  c.lt.s     $f0, $f2
/* 1AA6F8 80398678 00000000 */  nop
/* 1AA6FC 8039867C 00000000 */  nop
/* 1AA700 80398680 45010007 */  bc1t       .L803986A0
/* 1AA704 80398684 E602005C */   swc1      $f2, 0x5c($s0)
/* 1AA708 80398688 44800000 */  mtc1       $zero, $f0
/* 1AA70C 8039868C 00000000 */  nop
/* 1AA710 80398690 4600103C */  c.lt.s     $f2, $f0
/* 1AA714 80398694 00000000 */  nop
/* 1AA718 80398698 45000002 */  bc1f       .L803986A4
/* 1AA71C 8039869C 00000000 */   nop
.L803986A0:
/* 1AA720 803986A0 E600005C */  swc1       $f0, 0x5c($s0)
.L803986A4:
/* 1AA724 803986A4 C6000054 */  lwc1       $f0, 0x54($s0)
/* 1AA728 803986A8 C6020058 */  lwc1       $f2, 0x58($s0)
/* 1AA72C 803986AC 46020000 */  add.s      $f0, $f0, $f2
/* 1AA730 803986B0 00001021 */  addu       $v0, $zero, $zero
/* 1AA734 803986B4 080E61B0 */  j          .L803986C0
/* 1AA738 803986B8 E6000054 */   swc1      $f0, 0x54($s0)
.L803986BC:
/* 1AA73C 803986BC 24020001 */  addiu      $v0, $zero, 1
.L803986C0:
/* 1AA740 803986C0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1AA744 803986C4 8FB00028 */  lw         $s0, 0x28($sp)
/* 1AA748 803986C8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1AA74C 803986CC 03E00008 */  jr         $ra
/* 1AA750 803986D0 00000000 */   nop

glabel func_803986D4
/* 1AA754 803986D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AA758 803986D8 00042400 */  sll        $a0, $a0, 0x10
/* 1AA75C 803986DC 00042403 */  sra        $a0, $a0, 0x10
/* 1AA760 803986E0 00052C00 */  sll        $a1, $a1, 0x10
/* 1AA764 803986E4 00052C03 */  sra        $a1, $a1, 0x10
/* 1AA768 803986E8 3C01803B */  lui        $at, %hi(D_803B3E28)
/* 1AA76C 803986EC AC243E28 */  sw         $a0, %lo(D_803B3E28)($at)
/* 1AA770 803986F0 3C04803A */  lui        $a0, %hi(D_803981A0)
/* 1AA774 803986F4 248481A0 */  addiu      $a0, $a0, %lo(D_803981A0)
/* 1AA778 803986F8 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 1AA77C 803986FC AC253EAC */  sw         $a1, %lo(D_803B3EAC)($at)
/* 1AA780 80398700 24050001 */  addiu      $a1, $zero, 1
/* 1AA784 80398704 24060168 */  addiu      $a2, $zero, 0x168
/* 1AA788 80398708 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AA78C 8039870C 0C025D06 */  jal        func_80097418
/* 1AA790 80398710 24070001 */   addiu     $a3, $zero, 1
/* 1AA794 80398714 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AA798 80398718 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AA79C 8039871C 03E00008 */  jr         $ra
/* 1AA7A0 80398720 00000000 */   nop
/* 1AA7A4 80398724 00000000 */  nop
/* 1AA7A8 80398728 00000000 */  nop
/* 1AA7AC 8039872C 00000000 */  nop

glabel func_80398730
/* 1AA7B0 80398730 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AA7B4 80398734 3C03803B */  lui        $v1, %hi(D_803A9380)
/* 1AA7B8 80398738 24639380 */  addiu      $v1, $v1, %lo(D_803A9380)
/* 1AA7BC 8039873C 3C02803A */  lui        $v0, %hi(D_803A1768_1B37E8)
/* 1AA7C0 80398740 24421768 */  addiu      $v0, $v0, %lo(D_803A1768_1B37E8)
/* 1AA7C4 80398744 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AA7C8 80398748 24110001 */  addiu      $s1, $zero, 1
/* 1AA7CC 8039874C AFB20018 */  sw         $s2, 0x18($sp)
/* 1AA7D0 80398750 24720004 */  addiu      $s2, $v1, 4
/* 1AA7D4 80398754 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AA7D8 80398758 3C10803B */  lui        $s0, %hi(D_803A9BC0)
/* 1AA7DC 8039875C 26109BC0 */  addiu      $s0, $s0, %lo(D_803A9BC0)
/* 1AA7E0 80398760 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AA7E4 80398764 AC620000 */  sw         $v0, ($v1)
.L80398768:
/* 1AA7E8 80398768 02002021 */  addu       $a0, $s0, $zero
/* 1AA7EC 8039876C 3C05001E */  lui        $a1, 0x1e
/* 1AA7F0 80398770 24A59000 */  addiu      $a1, $a1, -0x7000
/* 1AA7F4 80398774 3C06800D */  lui        $a2, %hi(D_800D6AD0)
/* 1AA7F8 80398778 24C66AD0 */  addiu      $a2, $a2, %lo(D_800D6AD0)
/* 1AA7FC 8039877C 0C0264C3 */  jal        func_8009930C
/* 1AA800 80398780 2627085A */   addiu     $a3, $s1, 0x85a
/* 1AA804 80398784 AE500000 */  sw         $s0, ($s2)
/* 1AA808 80398788 26520004 */  addiu      $s2, $s2, 4
/* 1AA80C 8039878C 26310001 */  addiu      $s1, $s1, 1
/* 1AA810 80398790 2A22000A */  slti       $v0, $s1, 0xa
/* 1AA814 80398794 1440FFF4 */  bnez       $v0, .L80398768
/* 1AA818 80398798 26100810 */   addiu     $s0, $s0, 0x810
/* 1AA81C 8039879C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AA820 803987A0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1AA824 803987A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AA828 803987A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AA82C 803987AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AA830 803987B0 03E00008 */  jr         $ra
/* 1AA834 803987B4 00000000 */   nop

glabel func_803987B8
/* 1AA838 803987B8 03E00008 */  jr         $ra
/* 1AA83C 803987BC 00000000 */   nop

glabel func_803987C0_1AA840
/* 1AA840 803987C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AA844 803987C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AA848 803987C8 00808021 */  addu       $s0, $a0, $zero
/* 1AA84C 803987CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AA850 803987D0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1AA854 803987D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AA858 803987D8 9603001C */  lhu        $v1, 0x1c($s0)
/* 1AA85C 803987DC 24120001 */  addiu      $s2, $zero, 1
/* 1AA860 803987E0 10720033 */  beq        $v1, $s2, .L803988B0
/* 1AA864 803987E4 28620002 */   slti      $v0, $v1, 2
/* 1AA868 803987E8 50400005 */  beql       $v0, $zero, .L80398800
/* 1AA86C 803987EC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AA870 803987F0 10600007 */  beqz       $v1, .L80398810
/* 1AA874 803987F4 00000000 */   nop
/* 1AA878 803987F8 080E6253 */  j          .L8039894C
/* 1AA87C 803987FC 00000000 */   nop
.L80398800:
/* 1AA880 80398800 10620033 */  beq        $v1, $v0, .L803988D0
/* 1AA884 80398804 00000000 */   nop
/* 1AA888 80398808 080E6253 */  j          .L8039894C
/* 1AA88C 8039880C 00000000 */   nop
.L80398810:
/* 1AA890 80398810 3C03803B */  lui        $v1, %hi(D_803B3E34)
/* 1AA894 80398814 8C633E34 */  lw         $v1, %lo(D_803B3E34)($v1)
/* 1AA898 80398818 00031100 */  sll        $v0, $v1, 4
/* 1AA89C 8039881C 00431023 */  subu       $v0, $v0, $v1
/* 1AA8A0 80398820 8E03000C */  lw         $v1, 0xc($s0)
/* 1AA8A4 80398824 000210C0 */  sll        $v0, $v0, 3
/* 1AA8A8 80398828 10720010 */  beq        $v1, $s2, .L8039886C
/* 1AA8AC 8039882C 24510060 */   addiu     $s1, $v0, 0x60
/* 1AA8B0 80398830 28620002 */  slti       $v0, $v1, 2
/* 1AA8B4 80398834 50400005 */  beql       $v0, $zero, .L8039884C
/* 1AA8B8 80398838 24020002 */   addiu     $v0, $zero, 2
/* 1AA8BC 8039883C 10600007 */  beqz       $v1, .L8039885C
/* 1AA8C0 80398840 00000000 */   nop
/* 1AA8C4 80398844 080E6225 */  j          .L80398894
/* 1AA8C8 80398848 00000000 */   nop
.L8039884C:
/* 1AA8CC 8039884C 1062000B */  beq        $v1, $v0, .L8039887C
/* 1AA8D0 80398850 00000000 */   nop
/* 1AA8D4 80398854 080E6225 */  j          .L80398894
/* 1AA8D8 80398858 00000000 */   nop
.L8039885C:
/* 1AA8DC 8039885C 0C032663 */  jal        func_800C998C
/* 1AA8E0 80398860 02202021 */   addu      $a0, $s1, $zero
/* 1AA8E4 80398864 080E6222 */  j          .L80398888
/* 1AA8E8 80398868 AE020014 */   sw        $v0, 0x14($s0)
.L8039886C:
/* 1AA8EC 8039886C 0C025E63 */  jal        func_8009798C
/* 1AA8F0 80398870 02202021 */   addu      $a0, $s1, $zero
/* 1AA8F4 80398874 080E6222 */  j          .L80398888
/* 1AA8F8 80398878 AE020014 */   sw        $v0, 0x14($s0)
.L8039887C:
/* 1AA8FC 8039887C 0C026127 */  jal        func_8009849C
/* 1AA900 80398880 02202021 */   addu      $a0, $s1, $zero
/* 1AA904 80398884 AE020014 */  sw         $v0, 0x14($s0)
.L80398888:
/* 1AA908 80398888 00402021 */  addu       $a0, $v0, $zero
/* 1AA90C 8039888C 0C030134 */  jal        bzero
/* 1AA910 80398890 02202821 */   addu      $a1, $s1, $zero
.L80398894:
/* 1AA914 80398894 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA918 80398898 0C0E62E5 */  jal        func_80398B94_1AAC14
/* 1AA91C 8039889C 00000000 */   nop
/* 1AA920 803988A0 00001021 */  addu       $v0, $zero, $zero
/* 1AA924 803988A4 24030001 */  addiu      $v1, $zero, 1
/* 1AA928 803988A8 080E6255 */  j          .L80398954
/* 1AA92C 803988AC A603001C */   sh        $v1, 0x1c($s0)
.L803988B0:
/* 1AA930 803988B0 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA934 803988B4 0C0E634C */  jal        func_80398D30_1AADB0
/* 1AA938 803988B8 00000000 */   nop
/* 1AA93C 803988BC 10400002 */  beqz       $v0, .L803988C8
/* 1AA940 803988C0 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AA944 803988C4 A602001C */  sh         $v0, 0x1c($s0)
.L803988C8:
/* 1AA948 803988C8 080E6255 */  j          .L80398954
/* 1AA94C 803988CC 00001021 */   addu      $v0, $zero, $zero
.L803988D0:
/* 1AA950 803988D0 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA954 803988D4 0C0E634A */  jal        func_80398D28_1AADA8
/* 1AA958 803988D8 00000000 */   nop
/* 1AA95C 803988DC 8E03000C */  lw         $v1, 0xc($s0)
/* 1AA960 803988E0 10720010 */  beq        $v1, $s2, .L80398924
/* 1AA964 803988E4 28620002 */   slti      $v0, $v1, 2
/* 1AA968 803988E8 50400005 */  beql       $v0, $zero, .L80398900
/* 1AA96C 803988EC 24020002 */   addiu     $v0, $zero, 2
/* 1AA970 803988F0 10600007 */  beqz       $v1, .L80398910
/* 1AA974 803988F4 24020001 */   addiu     $v0, $zero, 1
/* 1AA978 803988F8 080E6255 */  j          .L80398954
/* 1AA97C 803988FC 00000000 */   nop
.L80398900:
/* 1AA980 80398900 1062000D */  beq        $v1, $v0, .L80398938
/* 1AA984 80398904 24020001 */   addiu     $v0, $zero, 1
/* 1AA988 80398908 080E6255 */  j          .L80398954
/* 1AA98C 8039890C 00000000 */   nop
.L80398910:
/* 1AA990 80398910 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA994 80398914 0C0326A1 */  jal        func_800C9A84
/* 1AA998 80398918 00000000 */   nop
/* 1AA99C 8039891C 080E6255 */  j          .L80398954
/* 1AA9A0 80398920 24020001 */   addiu     $v0, $zero, 1
.L80398924:
/* 1AA9A4 80398924 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA9A8 80398928 0C025EC3 */  jal        func_80097B0C
/* 1AA9AC 8039892C 00000000 */   nop
/* 1AA9B0 80398930 080E6255 */  j          .L80398954
/* 1AA9B4 80398934 24020001 */   addiu     $v0, $zero, 1
.L80398938:
/* 1AA9B8 80398938 8E040014 */  lw         $a0, 0x14($s0)
/* 1AA9BC 8039893C 0C026187 */  jal        func_8009861C
/* 1AA9C0 80398940 00000000 */   nop
/* 1AA9C4 80398944 080E6255 */  j          .L80398954
/* 1AA9C8 80398948 24020001 */   addiu     $v0, $zero, 1
.L8039894C:
/* 1AA9CC 8039894C 0C032934 */  jal        func_800CA4D0
/* 1AA9D0 80398950 00000000 */   nop
.L80398954:
/* 1AA9D4 80398954 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AA9D8 80398958 8FB20018 */  lw         $s2, 0x18($sp)
/* 1AA9DC 8039895C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AA9E0 80398960 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AA9E4 80398964 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AA9E8 80398968 03E00008 */  jr         $ra
/* 1AA9EC 8039896C 00000000 */   nop

glabel func_80398970_1AA9F0
/* 1AA9F0 80398970 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1AA9F4 80398974 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AA9F8 80398978 00808821 */  addu       $s1, $a0, $zero
/* 1AA9FC 8039897C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AAA00 80398980 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AAA04 80398984 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1AAA08 80398988 C6340044 */  lwc1       $f20, 0x44($s1)
/* 1AAA0C 8039898C 00A08021 */  addu       $s0, $a1, $zero
/* 1AAA10 80398990 2404000A */  addiu      $a0, $zero, 0xa
/* 1AAA14 80398994 AE000040 */  sw         $zero, 0x40($s0)
/* 1AAA18 80398998 AE000044 */  sw         $zero, 0x44($s0)
/* 1AAA1C 8039899C 0C02591A */  jal        func_80096468
/* 1AAA20 803989A0 AE000048 */   sw        $zero, 0x48($s0)
/* 1AAA24 803989A4 2442000A */  addiu      $v0, $v0, 0xa
/* 1AAA28 803989A8 A602006C */  sh         $v0, 0x6c($s0)
/* 1AAA2C 803989AC 8602006C */  lh         $v0, 0x6c($s0)
/* 1AAA30 803989B0 3C014120 */  lui        $at, 0x4120
/* 1AAA34 803989B4 44811000 */  mtc1       $at, $f2
/* 1AAA38 803989B8 00000000 */  nop
/* 1AAA3C 803989BC 44820000 */  mtc1       $v0, $f0
/* 1AAA40 803989C0 00000000 */  nop
/* 1AAA44 803989C4 46800020 */  cvt.s.w    $f0, $f0
/* 1AAA48 803989C8 46001083 */  div.s      $f2, $f2, $f0
/* 1AAA4C 803989CC 3C014F00 */  lui        $at, 0x4f00
/* 1AAA50 803989D0 44810000 */  mtc1       $at, $f0
/* 1AAA54 803989D4 00000000 */  nop
/* 1AAA58 803989D8 4614003E */  c.le.s     $f0, $f20
/* 1AAA5C 803989DC 00000000 */  nop
/* 1AAA60 803989E0 00000000 */  nop
/* 1AAA64 803989E4 AE000064 */  sw         $zero, 0x64($s0)
/* 1AAA68 803989E8 45010006 */  bc1t       .L80398A04
/* 1AAA6C 803989EC E6020068 */   swc1      $f2, 0x68($s0)
/* 1AAA70 803989F0 4600A00D */  trunc.w.s  $f0, $f20
/* 1AAA74 803989F4 44040000 */  mfc1       $a0, $f0
/* 1AAA78 803989F8 00000000 */  nop
/* 1AAA7C 803989FC 080E6287 */  j          .L80398A1C
/* 1AAA80 80398A00 00000000 */   nop
.L80398A04:
/* 1AAA84 80398A04 4600A001 */  sub.s      $f0, $f20, $f0
/* 1AAA88 80398A08 4600008D */  trunc.w.s  $f2, $f0
/* 1AAA8C 80398A0C 44041000 */  mfc1       $a0, $f2
/* 1AAA90 80398A10 00000000 */  nop
/* 1AAA94 80398A14 3C028000 */  lui        $v0, 0x8000
/* 1AAA98 80398A18 00822025 */  or         $a0, $a0, $v0
.L80398A1C:
/* 1AAA9C 80398A1C 0C02591A */  jal        func_80096468
/* 1AAAA0 80398A20 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1AAAA4 80398A24 0C02592F */  jal        func_800964BC
/* 1AAAA8 80398A28 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AAAAC 80398A2C 3C0142C8 */  lui        $at, 0x42c8
/* 1AAAB0 80398A30 44811000 */  mtc1       $at, $f2
/* 1AAAB4 80398A34 00000000 */  nop
/* 1AAAB8 80398A38 44820000 */  mtc1       $v0, $f0
/* 1AAABC 80398A3C 00000000 */  nop
/* 1AAAC0 80398A40 46800020 */  cvt.s.w    $f0, $f0
/* 1AAAC4 80398A44 46020003 */  div.s      $f0, $f0, $f2
/* 1AAAC8 80398A48 3C014F00 */  lui        $at, 0x4f00
/* 1AAACC 80398A4C 44811000 */  mtc1       $at, $f2
/* 1AAAD0 80398A50 00000000 */  nop
/* 1AAAD4 80398A54 4614103E */  c.le.s     $f2, $f20
/* 1AAAD8 80398A58 00000000 */  nop
/* 1AAADC 80398A5C 00000000 */  nop
/* 1AAAE0 80398A60 45010006 */  bc1t       .L80398A7C
/* 1AAAE4 80398A64 E600004C */   swc1      $f0, 0x4c($s0)
/* 1AAAE8 80398A68 4600A00D */  trunc.w.s  $f0, $f20
/* 1AAAEC 80398A6C 44040000 */  mfc1       $a0, $f0
/* 1AAAF0 80398A70 00000000 */  nop
/* 1AAAF4 80398A74 080E62A5 */  j          .L80398A94
/* 1AAAF8 80398A78 00000000 */   nop
.L80398A7C:
/* 1AAAFC 80398A7C 4602A001 */  sub.s      $f0, $f20, $f2
/* 1AAB00 80398A80 4600008D */  trunc.w.s  $f2, $f0
/* 1AAB04 80398A84 44041000 */  mfc1       $a0, $f2
/* 1AAB08 80398A88 00000000 */  nop
/* 1AAB0C 80398A8C 3C028000 */  lui        $v0, 0x8000
/* 1AAB10 80398A90 00822025 */  or         $a0, $a0, $v0
.L80398A94:
/* 1AAB14 80398A94 0C02591A */  jal        func_80096468
/* 1AAB18 80398A98 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1AAB1C 80398A9C 3C014120 */  lui        $at, 0x4120
/* 1AAB20 80398AA0 44810000 */  mtc1       $at, $f0
/* 1AAB24 80398AA4 00000000 */  nop
/* 1AAB28 80398AA8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AAB2C 80398AAC 44821000 */  mtc1       $v0, $f2
/* 1AAB30 80398AB0 00000000 */  nop
/* 1AAB34 80398AB4 468010A0 */  cvt.s.w    $f2, $f2
/* 1AAB38 80398AB8 46001083 */  div.s      $f2, $f2, $f0
/* 1AAB3C 80398ABC 3C014F00 */  lui        $at, 0x4f00
/* 1AAB40 80398AC0 44810000 */  mtc1       $at, $f0
/* 1AAB44 80398AC4 00000000 */  nop
/* 1AAB48 80398AC8 4614003E */  c.le.s     $f0, $f20
/* 1AAB4C 80398ACC 00000000 */  nop
/* 1AAB50 80398AD0 00000000 */  nop
/* 1AAB54 80398AD4 45010006 */  bc1t       .L80398AF0
/* 1AAB58 80398AD8 E6020050 */   swc1      $f2, 0x50($s0)
/* 1AAB5C 80398ADC 4600A00D */  trunc.w.s  $f0, $f20
/* 1AAB60 80398AE0 44040000 */  mfc1       $a0, $f0
/* 1AAB64 80398AE4 00000000 */  nop
/* 1AAB68 80398AE8 080E62C2 */  j          .L80398B08
/* 1AAB6C 80398AEC 00000000 */   nop
.L80398AF0:
/* 1AAB70 80398AF0 4600A001 */  sub.s      $f0, $f20, $f0
/* 1AAB74 80398AF4 4600008D */  trunc.w.s  $f2, $f0
/* 1AAB78 80398AF8 44041000 */  mfc1       $a0, $f2
/* 1AAB7C 80398AFC 00000000 */  nop
/* 1AAB80 80398B00 3C028000 */  lui        $v0, 0x8000
/* 1AAB84 80398B04 00822025 */  or         $a0, $a0, $v0
.L80398B08:
/* 1AAB88 80398B08 0C02591A */  jal        func_80096468
/* 1AAB8C 80398B0C 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1AAB90 80398B10 0C02592F */  jal        func_800964BC
/* 1AAB94 80398B14 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AAB98 80398B18 8603006C */  lh         $v1, 0x6c($s0)
/* 1AAB9C 80398B1C C6020050 */  lwc1       $f2, 0x50($s0)
/* 1AABA0 80398B20 44830000 */  mtc1       $v1, $f0
/* 1AABA4 80398B24 00000000 */  nop
/* 1AABA8 80398B28 46800020 */  cvt.s.w    $f0, $f0
/* 1AABAC 80398B2C 46001083 */  div.s      $f2, $f2, $f0
/* 1AABB0 80398B30 3C0142C8 */  lui        $at, 0x42c8
/* 1AABB4 80398B34 44812000 */  mtc1       $at, $f4
/* 1AABB8 80398B38 00000000 */  nop
/* 1AABBC 80398B3C 44820000 */  mtc1       $v0, $f0
/* 1AABC0 80398B40 00000000 */  nop
/* 1AABC4 80398B44 46800020 */  cvt.s.w    $f0, $f0
/* 1AABC8 80398B48 46040003 */  div.s      $f0, $f0, $f4
/* 1AABCC 80398B4C 8602006C */  lh         $v0, 0x6c($s0)
/* 1AABD0 80398B50 46001087 */  neg.s      $f2, $f2
/* 1AABD4 80398B54 E6000054 */  swc1       $f0, 0x54($s0)
/* 1AABD8 80398B58 E6020058 */  swc1       $f2, 0x58($s0)
/* 1AABDC 80398B5C C6220040 */  lwc1       $f2, 0x40($s1)
/* 1AABE0 80398B60 44820000 */  mtc1       $v0, $f0
/* 1AABE4 80398B64 00000000 */  nop
/* 1AABE8 80398B68 46800020 */  cvt.s.w    $f0, $f0
/* 1AABEC 80398B6C 46001003 */  div.s      $f0, $f2, $f0
/* 1AABF0 80398B70 E602005C */  swc1       $f2, 0x5c($s0)
/* 1AABF4 80398B74 E6000060 */  swc1       $f0, 0x60($s0)
/* 1AABF8 80398B78 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AABFC 80398B7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AAC00 80398B80 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AAC04 80398B84 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1AAC08 80398B88 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1AAC0C 80398B8C 03E00008 */  jr         $ra
/* 1AAC10 80398B90 00000000 */   nop

glabel func_80398B94_1AAC14
/* 1AAC14 80398B94 3C013F80 */  lui        $at, 0x3f80
/* 1AAC18 80398B98 44811000 */  mtc1       $at, $f2
/* 1AAC1C 80398B9C 00000000 */  nop
/* 1AAC20 80398BA0 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1AAC24 80398BA4 C4243EBC */  lwc1       $f4, %lo(D_803B3EBC)($at)
/* 1AAC28 80398BA8 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1AAC2C 80398BAC C4263EB0 */  lwc1       $f6, %lo(D_803B3EB0)($at)
/* 1AAC30 80398BB0 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1AAC34 80398BB4 C4283E2C */  lwc1       $f8, %lo(D_803B3E2C)($at)
/* 1AAC38 80398BB8 44800000 */  mtc1       $zero, $f0
/* 1AAC3C 80398BBC 00000000 */  nop
/* 1AAC40 80398BC0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 1AAC44 80398BC4 AFB20070 */  sw         $s2, 0x70($sp)
/* 1AAC48 80398BC8 00809021 */  addu       $s2, $a0, $zero
/* 1AAC4C 80398BCC 44050000 */  mfc1       $a1, $f0
/* 1AAC50 80398BD0 00000000 */  nop
/* 1AAC54 80398BD4 AFBF0074 */  sw         $ra, 0x74($sp)
/* 1AAC58 80398BD8 AFB1006C */  sw         $s1, 0x6c($sp)
/* 1AAC5C 80398BDC AFB00068 */  sw         $s0, 0x68($sp)
/* 1AAC60 80398BE0 00A03021 */  addu       $a2, $a1, $zero
/* 1AAC64 80398BE4 00A03821 */  addu       $a3, $a1, $zero
/* 1AAC68 80398BE8 E7A20010 */  swc1       $f2, 0x10($sp)
/* 1AAC6C 80398BEC E7A40014 */  swc1       $f4, 0x14($sp)
/* 1AAC70 80398BF0 E7A60018 */  swc1       $f6, 0x18($sp)
/* 1AAC74 80398BF4 0C02FD0E */  jal        func_800BF438
/* 1AAC78 80398BF8 E7A8001C */   swc1      $f8, 0x1c($sp)
/* 1AAC7C 80398BFC 3C02803B */  lui        $v0, %hi(D_803B3E28)
/* 1AAC80 80398C00 8C423E28 */  lw         $v0, %lo(D_803B3E28)($v0)
/* 1AAC84 80398C04 3C04803B */  lui        $a0, %hi(D_803B3E20)
/* 1AAC88 80398C08 8C843E20 */  lw         $a0, %lo(D_803B3E20)($a0)
/* 1AAC8C 80398C0C 3C03803B */  lui        $v1, %hi(D_803B3E5C)
/* 1AAC90 80398C10 8C633E5C */  lw         $v1, %lo(D_803B3E5C)($v1)
/* 1AAC94 80398C14 3C06803B */  lui        $a2, %hi(D_803B3EA8)
/* 1AAC98 80398C18 8CC63EA8 */  lw         $a2, %lo(D_803B3EA8)($a2)
/* 1AAC9C 80398C1C 00000000 */  nop
/* 1AACA0 80398C20 00640018 */  mult       $v1, $a0
/* 1AACA4 80398C24 00001812 */  mflo       $v1
/* 1AACA8 80398C28 00000000 */  nop
/* 1AACAC 80398C2C 00000000 */  nop
/* 1AACB0 80398C30 A242004A */  sb         $v0, 0x4a($s2)
/* 1AACB4 80398C34 3C05803B */  lui        $a1, %hi(D_803B3E34)
/* 1AACB8 80398C38 8CA53E34 */  lw         $a1, %lo(D_803B3E34)($a1)
/* 1AACBC 80398C3C 3C07803B */  lui        $a3, %hi(D_803B3EAC)
/* 1AACC0 80398C40 8CE73EAC */  lw         $a3, %lo(D_803B3EAC)($a3)
/* 1AACC4 80398C44 26420060 */  addiu      $v0, $s2, 0x60
/* 1AACC8 80398C48 44840000 */  mtc1       $a0, $f0
/* 1AACCC 80398C4C 00000000 */  nop
/* 1AACD0 80398C50 46800020 */  cvt.s.w    $f0, $f0
/* 1AACD4 80398C54 AE420054 */  sw         $v0, 0x54($s2)
/* 1AACD8 80398C58 24020001 */  addiu      $v0, $zero, 1
/* 1AACDC 80398C5C E6400040 */  swc1       $f0, 0x40($s2)
/* 1AACE0 80398C60 A6460048 */  sh         $a2, 0x48($s2)
/* 1AACE4 80398C64 AE450050 */  sw         $a1, 0x50($s2)
/* 1AACE8 80398C68 44830000 */  mtc1       $v1, $f0
/* 1AACEC 80398C6C 00000000 */  nop
/* 1AACF0 80398C70 46800020 */  cvt.s.w    $f0, $f0
/* 1AACF4 80398C74 10E20012 */  beq        $a3, $v0, .L80398CC0
/* 1AACF8 80398C78 E6400044 */   swc1      $f0, 0x44($s2)
/* 1AACFC 80398C7C 28E20002 */  slti       $v0, $a3, 2
/* 1AAD00 80398C80 1440000F */  bnez       $v0, .L80398CC0
/* 1AAD04 80398C84 24020002 */   addiu     $v0, $zero, 2
/* 1AAD08 80398C88 10E20005 */  beq        $a3, $v0, .L80398CA0
/* 1AAD0C 80398C8C 24020003 */   addiu     $v0, $zero, 3
/* 1AAD10 80398C90 10E20007 */  beq        $a3, $v0, .L80398CB0
/* 1AAD14 80398C94 00000000 */   nop
/* 1AAD18 80398C98 080E6330 */  j          .L80398CC0
/* 1AAD1C 80398C9C 00000000 */   nop
.L80398CA0:
/* 1AAD20 80398CA0 3C02803A */  lui        $v0, %hi(D_803A1758_1B37D8)
/* 1AAD24 80398CA4 24421758 */  addiu      $v0, $v0, %lo(D_803A1758_1B37D8)
/* 1AAD28 80398CA8 080E6333 */  j          .L80398CCC
/* 1AAD2C 80398CAC AE42004C */   sw        $v0, 0x4c($s2)
.L80398CB0:
/* 1AAD30 80398CB0 3C02803A */  lui        $v0, %hi(D_803A1758_1B37D8)
/* 1AAD34 80398CB4 24421758 */  addiu      $v0, $v0, %lo(D_803A1758_1B37D8)
/* 1AAD38 80398CB8 080E6333 */  j          .L80398CCC
/* 1AAD3C 80398CBC AE42004C */   sw        $v0, 0x4c($s2)
.L80398CC0:
/* 1AAD40 80398CC0 3C02803A */  lui        $v0, %hi(D_803A1738_1B37B8)
/* 1AAD44 80398CC4 24421738 */  addiu      $v0, $v0, %lo(D_803A1738_1B37B8)
/* 1AAD48 80398CC8 AE42004C */  sw         $v0, 0x4c($s2)
.L80398CCC:
/* 1AAD4C 80398CCC 8E420050 */  lw         $v0, 0x50($s2)
/* 1AAD50 80398CD0 8E500054 */  lw         $s0, 0x54($s2)
/* 1AAD54 80398CD4 1840000D */  blez       $v0, .L80398D0C
/* 1AAD58 80398CD8 00008821 */   addu      $s1, $zero, $zero
.L80398CDC:
/* 1AAD5C 80398CDC 02402021 */  addu       $a0, $s2, $zero
/* 1AAD60 80398CE0 0C0E625C */  jal        func_80398970_1AA9F0
/* 1AAD64 80398CE4 02002821 */   addu      $a1, $s0, $zero
/* 1AAD68 80398CE8 3C04803B */  lui        $a0, %hi(D_803B3E4E)
/* 1AAD6C 80398CEC 94843E4E */  lhu        $a0, %lo(D_803B3E4E)($a0)
/* 1AAD70 80398CF0 0C02591A */  jal        func_80096468
/* 1AAD74 80398CF4 26310001 */   addiu     $s1, $s1, 1
/* 1AAD78 80398CF8 A602006E */  sh         $v0, 0x6e($s0)
/* 1AAD7C 80398CFC 8E420050 */  lw         $v0, 0x50($s2)
/* 1AAD80 80398D00 0222102A */  slt        $v0, $s1, $v0
/* 1AAD84 80398D04 1440FFF5 */  bnez       $v0, .L80398CDC
/* 1AAD88 80398D08 26100078 */   addiu     $s0, $s0, 0x78
.L80398D0C:
/* 1AAD8C 80398D0C 8FBF0074 */  lw         $ra, 0x74($sp)
/* 1AAD90 80398D10 8FB20070 */  lw         $s2, 0x70($sp)
/* 1AAD94 80398D14 8FB1006C */  lw         $s1, 0x6c($sp)
/* 1AAD98 80398D18 8FB00068 */  lw         $s0, 0x68($sp)
/* 1AAD9C 80398D1C 27BD0078 */  addiu      $sp, $sp, 0x78
/* 1AADA0 80398D20 03E00008 */  jr         $ra
/* 1AADA4 80398D24 00000000 */   nop

glabel func_80398D28_1AADA8
/* 1AADA8 80398D28 03E00008 */  jr         $ra
/* 1AADAC 80398D2C 00000000 */   nop

glabel func_80398D30_1AADB0
/* 1AADB0 80398D30 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1AADB4 80398D34 AFB20040 */  sw         $s2, 0x40($sp)
/* 1AADB8 80398D38 00809021 */  addu       $s2, $a0, $zero
/* 1AADBC 80398D3C AFBF004C */  sw         $ra, 0x4c($sp)
/* 1AADC0 80398D40 AFB40048 */  sw         $s4, 0x48($sp)
/* 1AADC4 80398D44 AFB30044 */  sw         $s3, 0x44($sp)
/* 1AADC8 80398D48 AFB1003C */  sw         $s1, 0x3c($sp)
/* 1AADCC 80398D4C AFB00038 */  sw         $s0, 0x38($sp)
/* 1AADD0 80398D50 86420048 */  lh         $v0, 0x48($s2)
/* 1AADD4 80398D54 10400154 */  beqz       $v0, .L803992A8
/* 1AADD8 80398D58 00401821 */   addu      $v1, $v0, $zero
/* 1AADDC 80398D5C 2462FFFF */  addiu      $v0, $v1, -1
/* 1AADE0 80398D60 3C0AD9FD */  lui        $t2, 0xd9fd
/* 1AADE4 80398D64 354AFFFF */  ori        $t2, $t2, 0xffff
/* 1AADE8 80398D68 3C0BD9FF */  lui        $t3, 0xd9ff
/* 1AADEC 80398D6C 356BFFFF */  ori        $t3, $t3, 0xffff
/* 1AADF0 80398D70 3C080020 */  lui        $t0, 0x20
/* 1AADF4 80398D74 35080405 */  ori        $t0, $t0, 0x405
/* 1AADF8 80398D78 3C05E300 */  lui        $a1, 0xe300
/* 1AADFC 80398D7C 34A51201 */  ori        $a1, $a1, 0x1201
/* 1AAE00 80398D80 3C09E200 */  lui        $t1, 0xe200
/* 1AAE04 80398D84 3529001C */  ori        $t1, $t1, 0x1c
/* 1AAE08 80398D88 3C060050 */  lui        $a2, 0x50
/* 1AAE0C 80398D8C 34C64B50 */  ori        $a2, $a2, 0x4b50
/* 1AAE10 80398D90 3C04FC11 */  lui        $a0, 0xfc11
/* 1AAE14 80398D94 34849623 */  ori        $a0, $a0, 0x9623
/* 1AAE18 80398D98 3C03FF2F */  lui        $v1, 0xff2f
/* 1AAE1C 80398D9C 3463FFFF */  ori        $v1, $v1, 0xffff
/* 1AAE20 80398DA0 3C07E300 */  lui        $a3, 0xe300
/* 1AAE24 80398DA4 34E71001 */  ori        $a3, $a3, 0x1001
/* 1AAE28 80398DA8 3C0CF500 */  lui        $t4, 0xf500
/* 1AAE2C 80398DAC 3C0E8015 */  lui        $t6, %hi(gDisplayListHead)
/* 1AAE30 80398DB0 8DCE9F94 */  lw         $t6, %lo(gDisplayListHead)($t6)
/* 1AAE34 80398DB4 358C0100 */  ori        $t4, $t4, 0x100
/* 1AAE38 80398DB8 3C0D0703 */  lui        $t5, 0x703
/* 1AAE3C 80398DBC A6420048 */  sh         $v0, 0x48($s2)
/* 1AAE40 80398DC0 3C02DE00 */  lui        $v0, 0xde00
/* 1AAE44 80398DC4 ADC20000 */  sw         $v0, ($t6)
/* 1AAE48 80398DC8 3C02800D */  lui        $v0, %hi(D_800D3D70)
/* 1AAE4C 80398DCC 24423D70 */  addiu      $v0, $v0, %lo(D_800D3D70)
/* 1AAE50 80398DD0 ADC20004 */  sw         $v0, 4($t6)
/* 1AAE54 80398DD4 24022000 */  addiu      $v0, $zero, 0x2000
/* 1AAE58 80398DD8 ADC90020 */  sw         $t1, 0x20($t6)
/* 1AAE5C 80398DDC 3C09E700 */  lui        $t1, 0xe700
/* 1AAE60 80398DE0 ADC2001C */  sw         $v0, 0x1c($t6)
/* 1AAE64 80398DE4 34028000 */  ori        $v0, $zero, 0x8000
/* 1AAE68 80398DE8 ADC2003C */  sw         $v0, 0x3c($t6)
/* 1AAE6C 80398DEC 3C02FD10 */  lui        $v0, 0xfd10
/* 1AAE70 80398DF0 ADCA0008 */  sw         $t2, 8($t6)
/* 1AAE74 80398DF4 ADC0000C */  sw         $zero, 0xc($t6)
/* 1AAE78 80398DF8 ADCB0010 */  sw         $t3, 0x10($t6)
/* 1AAE7C 80398DFC ADC80014 */  sw         $t0, 0x14($t6)
/* 1AAE80 80398E00 ADC50018 */  sw         $a1, 0x18($t6)
/* 1AAE84 80398E04 ADC60024 */  sw         $a2, 0x24($t6)
/* 1AAE88 80398E08 ADC40028 */  sw         $a0, 0x28($t6)
/* 1AAE8C 80398E0C ADC3002C */  sw         $v1, 0x2c($t6)
/* 1AAE90 80398E10 ADC90030 */  sw         $t1, 0x30($t6)
/* 1AAE94 80398E14 ADC00034 */  sw         $zero, 0x34($t6)
/* 1AAE98 80398E18 ADC70038 */  sw         $a3, 0x38($t6)
/* 1AAE9C 80398E1C ADC20040 */  sw         $v0, 0x40($t6)
/* 1AAEA0 80398E20 8E43004C */  lw         $v1, 0x4c($s2)
/* 1AAEA4 80398E24 35ADC000 */  ori        $t5, $t5, 0xc000
/* 1AAEA8 80398E28 25C20008 */  addiu      $v0, $t6, 8
/* 1AAEAC 80398E2C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAEB0 80398E30 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAEB4 80398E34 25C20010 */  addiu      $v0, $t6, 0x10
/* 1AAEB8 80398E38 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAEBC 80398E3C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAEC0 80398E40 25C20018 */  addiu      $v0, $t6, 0x18
/* 1AAEC4 80398E44 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAEC8 80398E48 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAECC 80398E4C 25C20020 */  addiu      $v0, $t6, 0x20
/* 1AAED0 80398E50 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAED4 80398E54 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAED8 80398E58 25C20028 */  addiu      $v0, $t6, 0x28
/* 1AAEDC 80398E5C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAEE0 80398E60 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAEE4 80398E64 25C20030 */  addiu      $v0, $t6, 0x30
/* 1AAEE8 80398E68 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAEEC 80398E6C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAEF0 80398E70 25C20038 */  addiu      $v0, $t6, 0x38
/* 1AAEF4 80398E74 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAEF8 80398E78 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAEFC 80398E7C 25C20040 */  addiu      $v0, $t6, 0x40
/* 1AAF00 80398E80 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF04 80398E84 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF08 80398E88 25C20048 */  addiu      $v0, $t6, 0x48
/* 1AAF0C 80398E8C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF10 80398E90 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF14 80398E94 25C20050 */  addiu      $v0, $t6, 0x50
/* 1AAF18 80398E98 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF1C 80398E9C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF20 80398EA0 3C02E800 */  lui        $v0, 0xe800
/* 1AAF24 80398EA4 ADC20048 */  sw         $v0, 0x48($t6)
/* 1AAF28 80398EA8 25C20058 */  addiu      $v0, $t6, 0x58
/* 1AAF2C 80398EAC 3C0AE600 */  lui        $t2, 0xe600
/* 1AAF30 80398EB0 ADC0004C */  sw         $zero, 0x4c($t6)
/* 1AAF34 80398EB4 ADC30044 */  sw         $v1, 0x44($t6)
/* 1AAF38 80398EB8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF3C 80398EBC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF40 80398EC0 3C020700 */  lui        $v0, 0x700
/* 1AAF44 80398EC4 ADC20054 */  sw         $v0, 0x54($t6)
/* 1AAF48 80398EC8 25C20060 */  addiu      $v0, $t6, 0x60
/* 1AAF4C 80398ECC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF50 80398ED0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF54 80398ED4 25C20068 */  addiu      $v0, $t6, 0x68
/* 1AAF58 80398ED8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF5C 80398EDC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF60 80398EE0 3C02F000 */  lui        $v0, 0xf000
/* 1AAF64 80398EE4 ADC20060 */  sw         $v0, 0x60($t6)
/* 1AAF68 80398EE8 25C20070 */  addiu      $v0, $t6, 0x70
/* 1AAF6C 80398EEC ADCC0050 */  sw         $t4, 0x50($t6)
/* 1AAF70 80398EF0 ADCA0058 */  sw         $t2, 0x58($t6)
/* 1AAF74 80398EF4 ADC0005C */  sw         $zero, 0x5c($t6)
/* 1AAF78 80398EF8 ADCD0064 */  sw         $t5, 0x64($t6)
/* 1AAF7C 80398EFC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAF80 80398F00 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAF84 80398F04 ADC90068 */  sw         $t1, 0x68($t6)
/* 1AAF88 80398F08 ADC0006C */  sw         $zero, 0x6c($t6)
/* 1AAF8C 80398F0C 9243004A */  lbu        $v1, 0x4a($s2)
/* 1AAF90 80398F10 24020007 */  addiu      $v0, $zero, 7
/* 1AAF94 80398F14 14620034 */  bne        $v1, $v0, .L80398FE8
/* 1AAF98 80398F18 3C030701 */   lui       $v1, 0x701
/* 1AAF9C 80398F1C 34638060 */  ori        $v1, $v1, 0x8060
/* 1AAFA0 80398F20 3C04073F */  lui        $a0, 0x73f
/* 1AAFA4 80398F24 3484F200 */  ori        $a0, $a0, 0xf200
/* 1AAFA8 80398F28 3C06F540 */  lui        $a2, 0xf540
/* 1AAFAC 80398F2C 34C60800 */  ori        $a2, $a2, 0x800
/* 1AAFB0 80398F30 3C050001 */  lui        $a1, 1
/* 1AAFB4 80398F34 34A58060 */  ori        $a1, $a1, 0x8060
/* 1AAFB8 80398F38 3C07000F */  lui        $a3, 0xf
/* 1AAFBC 80398F3C 3C08803B */  lui        $t0, %hi(D_803A9390)
/* 1AAFC0 80398F40 8D089390 */  lw         $t0, %lo(D_803A9390)($t0)
/* 1AAFC4 80398F44 34E7C0FC */  ori        $a3, $a3, 0xc0fc
/* 1AAFC8 80398F48 25C20078 */  addiu      $v0, $t6, 0x78
/* 1AAFCC 80398F4C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAFD0 80398F50 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAFD4 80398F54 3C02FD50 */  lui        $v0, 0xfd50
/* 1AAFD8 80398F58 ADC20070 */  sw         $v0, 0x70($t6)
/* 1AAFDC 80398F5C 25C20080 */  addiu      $v0, $t6, 0x80
/* 1AAFE0 80398F60 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAFE4 80398F64 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAFE8 80398F68 3C02F550 */  lui        $v0, 0xf550
/* 1AAFEC 80398F6C ADC20078 */  sw         $v0, 0x78($t6)
/* 1AAFF0 80398F70 25C20088 */  addiu      $v0, $t6, 0x88
/* 1AAFF4 80398F74 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AAFF8 80398F78 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AAFFC 80398F7C 25C20090 */  addiu      $v0, $t6, 0x90
/* 1AB000 80398F80 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB004 80398F84 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB008 80398F88 3C02F300 */  lui        $v0, 0xf300
/* 1AB00C 80398F8C ADC20088 */  sw         $v0, 0x88($t6)
/* 1AB010 80398F90 25C20098 */  addiu      $v0, $t6, 0x98
/* 1AB014 80398F94 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB018 80398F98 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB01C 80398F9C 25C200A0 */  addiu      $v0, $t6, 0xa0
/* 1AB020 80398FA0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB024 80398FA4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB028 80398FA8 25C200A8 */  addiu      $v0, $t6, 0xa8
/* 1AB02C 80398FAC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB030 80398FB0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB034 80398FB4 3C02F200 */  lui        $v0, 0xf200
/* 1AB038 80398FB8 ADC3007C */  sw         $v1, 0x7c($t6)
/* 1AB03C 80398FBC ADCA0080 */  sw         $t2, 0x80($t6)
/* 1AB040 80398FC0 ADC00084 */  sw         $zero, 0x84($t6)
/* 1AB044 80398FC4 ADC4008C */  sw         $a0, 0x8c($t6)
/* 1AB048 80398FC8 ADC90090 */  sw         $t1, 0x90($t6)
/* 1AB04C 80398FCC ADC00094 */  sw         $zero, 0x94($t6)
/* 1AB050 80398FD0 ADC60098 */  sw         $a2, 0x98($t6)
/* 1AB054 80398FD4 ADC5009C */  sw         $a1, 0x9c($t6)
/* 1AB058 80398FD8 ADC200A0 */  sw         $v0, 0xa0($t6)
/* 1AB05C 80398FDC ADC700A4 */  sw         $a3, 0xa4($t6)
/* 1AB060 80398FE0 25040010 */  addiu      $a0, $t0, 0x10
/* 1AB064 80398FE4 ADC40074 */  sw         $a0, 0x74($t6)
.L80398FE8:
/* 1AB068 80398FE8 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AB06C 80398FEC 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AB070 80398FF0 3C03DA38 */  lui        $v1, 0xda38
/* 1AB074 80398FF4 34630003 */  ori        $v1, $v1, 3
/* 1AB078 80398FF8 AC430000 */  sw         $v1, ($v0)
/* 1AB07C 80398FFC AC520004 */  sw         $s2, 4($v0)
/* 1AB080 80399000 8E510054 */  lw         $s1, 0x54($s2)
/* 1AB084 80399004 8E430050 */  lw         $v1, 0x50($s2)
/* 1AB088 80399008 24420008 */  addiu      $v0, $v0, 8
/* 1AB08C 8039900C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB090 80399010 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB094 80399014 186000A2 */  blez       $v1, .L803992A0
/* 1AB098 80399018 00009821 */   addu      $s3, $zero, $zero
/* 1AB09C 8039901C 3C148015 */  lui        $s4, %hi(D_8014A07C)
/* 1AB0A0 80399020 2694A07C */  addiu      $s4, $s4, %lo(D_8014A07C)
/* 1AB0A4 80399024 2630006C */  addiu      $s0, $s1, 0x6c
.L80399028:
/* 1AB0A8 80399028 86020002 */  lh         $v0, 2($s0)
/* 1AB0AC 8039902C 10400004 */  beqz       $v0, .L80399040
/* 1AB0B0 80399030 00401821 */   addu      $v1, $v0, $zero
/* 1AB0B4 80399034 2462FFFF */  addiu      $v0, $v1, -1
/* 1AB0B8 80399038 080E64A2 */  j          .L80399288
/* 1AB0BC 8039903C A6020002 */   sh        $v0, 2($s0)
.L80399040:
/* 1AB0C0 80399040 86020000 */  lh         $v0, ($s0)
/* 1AB0C4 80399044 1440000A */  bnez       $v0, .L80399070
/* 1AB0C8 80399048 02202021 */   addu      $a0, $s1, $zero
/* 1AB0CC 8039904C 86420048 */  lh         $v0, 0x48($s2)
/* 1AB0D0 80399050 28420015 */  slti       $v0, $v0, 0x15
/* 1AB0D4 80399054 5440008D */  bnezl      $v0, .L8039928C
/* 1AB0D8 80399058 26730001 */   addiu     $s3, $s3, 1
/* 1AB0DC 8039905C 02402021 */  addu       $a0, $s2, $zero
/* 1AB0E0 80399060 0C0E625C */  jal        func_80398970_1AA9F0
/* 1AB0E4 80399064 02202821 */   addu      $a1, $s1, $zero
/* 1AB0E8 80399068 080E64A3 */  j          .L8039928C
/* 1AB0EC 8039906C 26730001 */   addiu     $s3, $s3, 1
.L80399070:
/* 1AB0F0 80399070 C600FFF0 */  lwc1       $f0, -0x10($s0)
/* 1AB0F4 80399074 8E850000 */  lw         $a1, ($s4)
/* 1AB0F8 80399078 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AB0FC 8039907C C600FFD4 */  lwc1       $f0, -0x2c($s0)
/* 1AB100 80399080 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1AB104 80399084 C600FFD8 */  lwc1       $f0, -0x28($s0)
/* 1AB108 80399088 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1AB10C 8039908C C600FFDC */  lwc1       $f0, -0x24($s0)
/* 1AB110 80399090 8E860004 */  lw         $a2, 4($s4)
/* 1AB114 80399094 8E870008 */  lw         $a3, 8($s4)
/* 1AB118 80399098 0C02FD0E */  jal        func_800BF438
/* 1AB11C 8039909C E7A0001C */   swc1      $f0, 0x1c($sp)
/* 1AB120 803990A0 3C098015 */  lui        $t1, %hi(gDisplayListHead)
/* 1AB124 803990A4 8D299F94 */  lw         $t1, %lo(gDisplayListHead)($t1)
/* 1AB128 803990A8 3C02DA38 */  lui        $v0, 0xda38
/* 1AB12C 803990AC AD220000 */  sw         $v0, ($t1)
/* 1AB130 803990B0 3C02FA00 */  lui        $v0, 0xfa00
/* 1AB134 803990B4 AD310004 */  sw         $s1, 4($t1)
/* 1AB138 803990B8 AD220008 */  sw         $v0, 8($t1)
/* 1AB13C 803990BC 86030000 */  lh         $v1, ($s0)
/* 1AB140 803990C0 25220008 */  addiu      $v0, $t1, 8
/* 1AB144 803990C4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB148 803990C8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB14C 803990CC 25220010 */  addiu      $v0, $t1, 0x10
/* 1AB150 803990D0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB154 803990D4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB158 803990D8 2402FF00 */  addiu      $v0, $zero, -0x100
/* 1AB15C 803990DC 000318C0 */  sll        $v1, $v1, 3
/* 1AB160 803990E0 00621825 */  or         $v1, $v1, $v0
/* 1AB164 803990E4 AD23000C */  sw         $v1, 0xc($t1)
/* 1AB168 803990E8 9243004A */  lbu        $v1, 0x4a($s2)
/* 1AB16C 803990EC 24020007 */  addiu      $v0, $zero, 7
/* 1AB170 803990F0 1062003C */  beq        $v1, $v0, .L803991E4
/* 1AB174 803990F4 3C030701 */   lui       $v1, 0x701
/* 1AB178 803990F8 34638060 */  ori        $v1, $v1, 0x8060
/* 1AB17C 803990FC 3C05073F */  lui        $a1, 0x73f
/* 1AB180 80399100 34A5F200 */  ori        $a1, $a1, 0xf200
/* 1AB184 80399104 3C08F540 */  lui        $t0, 0xf540
/* 1AB188 80399108 35080800 */  ori        $t0, $t0, 0x800
/* 1AB18C 8039910C 3C060001 */  lui        $a2, 1
/* 1AB190 80399110 C600FFF8 */  lwc1       $f0, -8($s0)
/* 1AB194 80399114 34C68060 */  ori        $a2, $a2, 0x8060
/* 1AB198 80399118 3C07000F */  lui        $a3, 0xf
/* 1AB19C 8039911C 4600008D */  trunc.w.s  $f2, $f0
/* 1AB1A0 80399120 44021000 */  mfc1       $v0, $f2
/* 1AB1A4 80399124 00000000 */  nop
/* 1AB1A8 80399128 00021080 */  sll        $v0, $v0, 2
/* 1AB1AC 8039912C 3C04803B */  lui        $a0, %hi(D_803A9380)
/* 1AB1B0 80399130 00822021 */  addu       $a0, $a0, $v0
/* 1AB1B4 80399134 8C849380 */  lw         $a0, %lo(D_803A9380)($a0)
/* 1AB1B8 80399138 34E7C0FC */  ori        $a3, $a3, 0xc0fc
/* 1AB1BC 8039913C 25220018 */  addiu      $v0, $t1, 0x18
/* 1AB1C0 80399140 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB1C4 80399144 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB1C8 80399148 25220020 */  addiu      $v0, $t1, 0x20
/* 1AB1CC 8039914C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB1D0 80399150 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB1D4 80399154 25220028 */  addiu      $v0, $t1, 0x28
/* 1AB1D8 80399158 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB1DC 8039915C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB1E0 80399160 25220030 */  addiu      $v0, $t1, 0x30
/* 1AB1E4 80399164 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB1E8 80399168 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB1EC 8039916C 25220038 */  addiu      $v0, $t1, 0x38
/* 1AB1F0 80399170 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB1F4 80399174 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB1F8 80399178 25220040 */  addiu      $v0, $t1, 0x40
/* 1AB1FC 8039917C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB200 80399180 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB204 80399184 25220048 */  addiu      $v0, $t1, 0x48
/* 1AB208 80399188 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB20C 8039918C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB210 80399190 3C02FD50 */  lui        $v0, 0xfd50
/* 1AB214 80399194 AD220010 */  sw         $v0, 0x10($t1)
/* 1AB218 80399198 3C02F550 */  lui        $v0, 0xf550
/* 1AB21C 8039919C AD220018 */  sw         $v0, 0x18($t1)
/* 1AB220 803991A0 3C02E600 */  lui        $v0, 0xe600
/* 1AB224 803991A4 AD220020 */  sw         $v0, 0x20($t1)
/* 1AB228 803991A8 3C02F300 */  lui        $v0, 0xf300
/* 1AB22C 803991AC AD220028 */  sw         $v0, 0x28($t1)
/* 1AB230 803991B0 3C02E700 */  lui        $v0, 0xe700
/* 1AB234 803991B4 AD220030 */  sw         $v0, 0x30($t1)
/* 1AB238 803991B8 3C02F200 */  lui        $v0, 0xf200
/* 1AB23C 803991BC AD23001C */  sw         $v1, 0x1c($t1)
/* 1AB240 803991C0 AD200024 */  sw         $zero, 0x24($t1)
/* 1AB244 803991C4 AD25002C */  sw         $a1, 0x2c($t1)
/* 1AB248 803991C8 AD200034 */  sw         $zero, 0x34($t1)
/* 1AB24C 803991CC AD280038 */  sw         $t0, 0x38($t1)
/* 1AB250 803991D0 AD26003C */  sw         $a2, 0x3c($t1)
/* 1AB254 803991D4 AD220040 */  sw         $v0, 0x40($t1)
/* 1AB258 803991D8 AD270044 */  sw         $a3, 0x44($t1)
/* 1AB25C 803991DC 24840010 */  addiu      $a0, $a0, 0x10
/* 1AB260 803991E0 AD240014 */  sw         $a0, 0x14($t1)
.L803991E4:
/* 1AB264 803991E4 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1AB268 803991E8 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1AB26C 803991EC 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1AB270 803991F0 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1AB274 803991F4 3C02DE00 */  lui        $v0, 0xde00
/* 1AB278 803991F8 AC620000 */  sw         $v0, ($v1)
/* 1AB27C 803991FC 3C02803A */  lui        $v0, %hi(D_803A1FB8_1B4038)
/* 1AB280 80399200 24421FB8 */  addiu      $v0, $v0, %lo(D_803A1FB8_1B4038)
/* 1AB284 80399204 AC620004 */  sw         $v0, 4($v1)
/* 1AB288 80399208 C606FFD4 */  lwc1       $f6, -0x2c($s0)
/* 1AB28C 8039920C C60AFFE4 */  lwc1       $f10, -0x1c($s0)
/* 1AB290 80399210 46003180 */  add.s      $f6, $f6, $f0
/* 1AB294 80399214 C602FFEC */  lwc1       $f2, -0x14($s0)
/* 1AB298 80399218 C60EFFD8 */  lwc1       $f14, -0x28($s0)
/* 1AB29C 8039921C C610FFE0 */  lwc1       $f16, -0x20($s0)
/* 1AB2A0 80399220 46025280 */  add.s      $f10, $f10, $f2
/* 1AB2A4 80399224 C600FFE4 */  lwc1       $f0, -0x1c($s0)
/* 1AB2A8 80399228 C60CFFDC */  lwc1       $f12, -0x24($s0)
/* 1AB2AC 8039922C C604FFF0 */  lwc1       $f4, -0x10($s0)
/* 1AB2B0 80399230 46007380 */  add.s      $f14, $f14, $f0
/* 1AB2B4 80399234 C600FFE8 */  lwc1       $f0, -0x18($s0)
/* 1AB2B8 80399238 C608FFF4 */  lwc1       $f8, -0xc($s0)
/* 1AB2BC 8039923C 96020000 */  lhu        $v0, ($s0)
/* 1AB2C0 80399240 46006300 */  add.s      $f12, $f12, $f0
/* 1AB2C4 80399244 C602FFFC */  lwc1       $f2, -4($s0)
/* 1AB2C8 80399248 C600FFF8 */  lwc1       $f0, -8($s0)
/* 1AB2CC 8039924C 24630008 */  addiu      $v1, $v1, 8
/* 1AB2D0 80399250 46082100 */  add.s      $f4, $f4, $f8
/* 1AB2D4 80399254 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB2D8 80399258 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB2DC 8039925C 2442FFFF */  addiu      $v0, $v0, -1
/* 1AB2E0 80399260 E606FFD4 */  swc1       $f6, -0x2c($s0)
/* 1AB2E4 80399264 46103180 */  add.s      $f6, $f6, $f16
/* 1AB2E8 80399268 A6020000 */  sh         $v0, ($s0)
/* 1AB2EC 8039926C E60AFFE4 */  swc1       $f10, -0x1c($s0)
/* 1AB2F0 80399270 E604FFF0 */  swc1       $f4, -0x10($s0)
/* 1AB2F4 80399274 46020000 */  add.s      $f0, $f0, $f2
/* 1AB2F8 80399278 E60EFFD8 */  swc1       $f14, -0x28($s0)
/* 1AB2FC 8039927C E606FFD4 */  swc1       $f6, -0x2c($s0)
/* 1AB300 80399280 E60CFFDC */  swc1       $f12, -0x24($s0)
/* 1AB304 80399284 E600FFF8 */  swc1       $f0, -8($s0)
.L80399288:
/* 1AB308 80399288 26730001 */  addiu      $s3, $s3, 1
.L8039928C:
/* 1AB30C 8039928C 8E420050 */  lw         $v0, 0x50($s2)
/* 1AB310 80399290 26100078 */  addiu      $s0, $s0, 0x78
/* 1AB314 80399294 0262102A */  slt        $v0, $s3, $v0
/* 1AB318 80399298 1440FF63 */  bnez       $v0, .L80399028
/* 1AB31C 8039929C 26310078 */   addiu     $s1, $s1, 0x78
.L803992A0:
/* 1AB320 803992A0 080E64AB */  j          .L803992AC
/* 1AB324 803992A4 00001021 */   addu      $v0, $zero, $zero
.L803992A8:
/* 1AB328 803992A8 24020001 */  addiu      $v0, $zero, 1
.L803992AC:
/* 1AB32C 803992AC 8FBF004C */  lw         $ra, 0x4c($sp)
/* 1AB330 803992B0 8FB40048 */  lw         $s4, 0x48($sp)
/* 1AB334 803992B4 8FB30044 */  lw         $s3, 0x44($sp)
/* 1AB338 803992B8 8FB20040 */  lw         $s2, 0x40($sp)
/* 1AB33C 803992BC 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1AB340 803992C0 8FB00038 */  lw         $s0, 0x38($sp)
/* 1AB344 803992C4 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1AB348 803992C8 03E00008 */  jr         $ra
/* 1AB34C 803992CC 00000000 */   nop

glabel func_803992D0
/* 1AB350 803992D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AB354 803992D4 8FA20028 */  lw         $v0, 0x28($sp)
/* 1AB358 803992D8 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1AB35C 803992DC 8FA80030 */  lw         $t0, 0x30($sp)
/* 1AB360 803992E0 97A90036 */  lhu        $t1, 0x36($sp)
/* 1AB364 803992E4 00042400 */  sll        $a0, $a0, 0x10
/* 1AB368 803992E8 00042403 */  sra        $a0, $a0, 0x10
/* 1AB36C 803992EC 00052C00 */  sll        $a1, $a1, 0x10
/* 1AB370 803992F0 00052C03 */  sra        $a1, $a1, 0x10
/* 1AB374 803992F4 00063400 */  sll        $a2, $a2, 0x10
/* 1AB378 803992F8 00063403 */  sra        $a2, $a2, 0x10
/* 1AB37C 803992FC 00073C00 */  sll        $a3, $a3, 0x10
/* 1AB380 80399300 00073C03 */  sra        $a3, $a3, 0x10
/* 1AB384 80399304 3C01803B */  lui        $at, %hi(D_803B3E28)
/* 1AB388 80399308 AC243E28 */  sw         $a0, %lo(D_803B3E28)($at)
/* 1AB38C 8039930C 3C04803A */  lui        $a0, %hi(D_803987C0)
/* 1AB390 80399310 248487C0 */  addiu      $a0, $a0, %lo(D_803987C0)
/* 1AB394 80399314 3C01803B */  lui        $at, %hi(D_803B3E34)
/* 1AB398 80399318 AC253E34 */  sw         $a1, %lo(D_803B3E34)($at)
/* 1AB39C 8039931C 24050001 */  addiu      $a1, $zero, 1
/* 1AB3A0 80399320 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AB3A4 80399324 AC273E20 */  sw         $a3, %lo(D_803B3E20)($at)
/* 1AB3A8 80399328 24070001 */  addiu      $a3, $zero, 1
/* 1AB3AC 8039932C AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AB3B0 80399330 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 1AB3B4 80399334 AC263EA8 */  sw         $a2, %lo(D_803B3EA8)($at)
/* 1AB3B8 80399338 00021400 */  sll        $v0, $v0, 0x10
/* 1AB3BC 8039933C 00021403 */  sra        $v0, $v0, 0x10
/* 1AB3C0 80399340 00031C00 */  sll        $v1, $v1, 0x10
/* 1AB3C4 80399344 00031C03 */  sra        $v1, $v1, 0x10
/* 1AB3C8 80399348 00084400 */  sll        $t0, $t0, 0x10
/* 1AB3CC 8039934C 00084403 */  sra        $t0, $t0, 0x10
/* 1AB3D0 80399350 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1AB3D4 80399354 AC223E5C */  sw         $v0, %lo(D_803B3E5C)($at)
/* 1AB3D8 80399358 3C01803B */  lui        $at, %hi(D_803B3E4C)
/* 1AB3DC 8039935C AC233E4C */  sw         $v1, %lo(D_803B3E4C)($at)
/* 1AB3E0 80399360 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 1AB3E4 80399364 AC283EAC */  sw         $t0, %lo(D_803B3EAC)($at)
/* 1AB3E8 80399368 0C025D06 */  jal        func_80097418
/* 1AB3EC 8039936C 01203021 */   addu      $a2, $t1, $zero
/* 1AB3F0 80399370 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AB3F4 80399374 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AB3F8 80399378 03E00008 */  jr         $ra
/* 1AB3FC 8039937C 00000000 */   nop

glabel func_80399380
/* 1AB400 80399380 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AB404 80399384 3C04803B */  lui        $a0, %hi(D_803AE450)
/* 1AB408 80399388 2484E450 */  addiu      $a0, $a0, %lo(D_803AE450)
/* 1AB40C 8039938C 3C050061 */  lui        $a1, 0x61
/* 1AB410 80399390 24A5CB80 */  addiu      $a1, $a1, -0x3480
/* 1AB414 80399394 3C06800E */  lui        $a2, %hi(D_800DD820)
/* 1AB418 80399398 24C6D820 */  addiu      $a2, $a2, %lo(D_800DD820)
/* 1AB41C 8039939C 24070079 */  addiu      $a3, $zero, 0x79
/* 1AB420 803993A0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AB424 803993A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AB428 803993A8 0C0264C3 */  jal        func_8009930C
/* 1AB42C 803993AC AFB00010 */   sw        $s0, 0x10($sp)
/* 1AB430 803993B0 00008021 */  addu       $s0, $zero, $zero
/* 1AB434 803993B4 3C11803B */  lui        $s1, %hi(D_803AE470)
/* 1AB438 803993B8 2631E470 */  addiu      $s1, $s1, %lo(D_803AE470)
.L803993BC:
/* 1AB43C 803993BC 02202021 */  addu       $a0, $s1, $zero
/* 1AB440 803993C0 3C05001E */  lui        $a1, 0x1e
/* 1AB444 803993C4 24A59000 */  addiu      $a1, $a1, -0x7000
/* 1AB448 803993C8 3C06800D */  lui        $a2, %hi(D_800D6AD0)
/* 1AB44C 803993CC 24C66AD0 */  addiu      $a2, $a2, %lo(D_800D6AD0)
/* 1AB450 803993D0 0C0264C3 */  jal        func_8009930C
/* 1AB454 803993D4 260700F9 */   addiu     $a3, $s0, 0xf9
/* 1AB458 803993D8 26100001 */  addiu      $s0, $s0, 1
/* 1AB45C 803993DC 2A020009 */  slti       $v0, $s0, 9
/* 1AB460 803993E0 1440FFF6 */  bnez       $v0, .L803993BC
/* 1AB464 803993E4 26310810 */   addiu     $s1, $s1, 0x810
/* 1AB468 803993E8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AB46C 803993EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AB470 803993F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AB474 803993F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AB478 803993F8 03E00008 */  jr         $ra
/* 1AB47C 803993FC 00000000 */   nop

glabel func_80399400
/* 1AB480 80399400 03E00008 */  jr         $ra
/* 1AB484 80399404 00000000 */   nop

glabel func_80399408_1AB488
/* 1AB488 80399408 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AB48C 8039940C AFB00010 */  sw         $s0, 0x10($sp)
/* 1AB490 80399410 00808021 */  addu       $s0, $a0, $zero
/* 1AB494 80399414 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AB498 80399418 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AB49C 8039941C 9603001C */  lhu        $v1, 0x1c($s0)
/* 1AB4A0 80399420 24110001 */  addiu      $s1, $zero, 1
/* 1AB4A4 80399424 1071002D */  beq        $v1, $s1, .L803994DC
/* 1AB4A8 80399428 28620002 */   slti      $v0, $v1, 2
/* 1AB4AC 8039942C 50400005 */  beql       $v0, $zero, .L80399444
/* 1AB4B0 80399430 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AB4B4 80399434 10600007 */  beqz       $v1, .L80399454
/* 1AB4B8 80399438 00000000 */   nop
/* 1AB4BC 8039943C 080E655E */  j          .L80399578
/* 1AB4C0 80399440 00000000 */   nop
.L80399444:
/* 1AB4C4 80399444 1062002D */  beq        $v1, $v0, .L803994FC
/* 1AB4C8 80399448 00000000 */   nop
/* 1AB4CC 8039944C 080E655E */  j          .L80399578
/* 1AB4D0 80399450 00000000 */   nop
.L80399454:
/* 1AB4D4 80399454 8E03000C */  lw         $v1, 0xc($s0)
/* 1AB4D8 80399458 1071000F */  beq        $v1, $s1, .L80399498
/* 1AB4DC 8039945C 28620002 */   slti      $v0, $v1, 2
/* 1AB4E0 80399460 50400005 */  beql       $v0, $zero, .L80399478
/* 1AB4E4 80399464 24020002 */   addiu     $v0, $zero, 2
/* 1AB4E8 80399468 10600007 */  beqz       $v1, .L80399488
/* 1AB4EC 8039946C 00000000 */   nop
/* 1AB4F0 80399470 080E6530 */  j          .L803994C0
/* 1AB4F4 80399474 00000000 */   nop
.L80399478:
/* 1AB4F8 80399478 1062000B */  beq        $v1, $v0, .L803994A8
/* 1AB4FC 8039947C 00000000 */   nop
/* 1AB500 80399480 080E6530 */  j          .L803994C0
/* 1AB504 80399484 00000000 */   nop
.L80399488:
/* 1AB508 80399488 0C032663 */  jal        func_800C998C
/* 1AB50C 8039948C 240400C0 */   addiu     $a0, $zero, 0xc0
/* 1AB510 80399490 080E652D */  j          .L803994B4
/* 1AB514 80399494 AE020014 */   sw        $v0, 0x14($s0)
.L80399498:
/* 1AB518 80399498 0C025E63 */  jal        func_8009798C
/* 1AB51C 8039949C 240400C0 */   addiu     $a0, $zero, 0xc0
/* 1AB520 803994A0 080E652D */  j          .L803994B4
/* 1AB524 803994A4 AE020014 */   sw        $v0, 0x14($s0)
.L803994A8:
/* 1AB528 803994A8 0C026127 */  jal        func_8009849C
/* 1AB52C 803994AC 240400C0 */   addiu     $a0, $zero, 0xc0
/* 1AB530 803994B0 AE020014 */  sw         $v0, 0x14($s0)
.L803994B4:
/* 1AB534 803994B4 00402021 */  addu       $a0, $v0, $zero
/* 1AB538 803994B8 0C030134 */  jal        bzero
/* 1AB53C 803994BC 240500C0 */   addiu     $a1, $zero, 0xc0
.L803994C0:
/* 1AB540 803994C0 8E040014 */  lw         $a0, 0x14($s0)
/* 1AB544 803994C4 0C0E6566 */  jal        func_80399598_1AB618
/* 1AB548 803994C8 00000000 */   nop
/* 1AB54C 803994CC 00001021 */  addu       $v0, $zero, $zero
/* 1AB550 803994D0 24030001 */  addiu      $v1, $zero, 1
/* 1AB554 803994D4 080E6560 */  j          .L80399580
/* 1AB558 803994D8 A603001C */   sh        $v1, 0x1c($s0)
.L803994DC:
/* 1AB55C 803994DC 8E040014 */  lw         $a0, 0x14($s0)
/* 1AB560 803994E0 0C0E6609 */  jal        func_80399824_1AB8A4
/* 1AB564 803994E4 00000000 */   nop
/* 1AB568 803994E8 10400002 */  beqz       $v0, .L803994F4
/* 1AB56C 803994EC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AB570 803994F0 A602001C */  sh         $v0, 0x1c($s0)
.L803994F4:
/* 1AB574 803994F4 080E6560 */  j          .L80399580
/* 1AB578 803994F8 00001021 */   addu      $v0, $zero, $zero
.L803994FC:
/* 1AB57C 803994FC 8E040014 */  lw         $a0, 0x14($s0)
/* 1AB580 80399500 0C0E6607 */  jal        func_8039981C_1AB89C
/* 1AB584 80399504 00000000 */   nop
/* 1AB588 80399508 8E03000C */  lw         $v1, 0xc($s0)
/* 1AB58C 8039950C 10710010 */  beq        $v1, $s1, .L80399550
/* 1AB590 80399510 28620002 */   slti      $v0, $v1, 2
/* 1AB594 80399514 50400005 */  beql       $v0, $zero, .L8039952C
/* 1AB598 80399518 24020002 */   addiu     $v0, $zero, 2
/* 1AB59C 8039951C 10600007 */  beqz       $v1, .L8039953C
/* 1AB5A0 80399520 24020001 */   addiu     $v0, $zero, 1
/* 1AB5A4 80399524 080E6560 */  j          .L80399580
/* 1AB5A8 80399528 00000000 */   nop
.L8039952C:
/* 1AB5AC 8039952C 1062000D */  beq        $v1, $v0, .L80399564
/* 1AB5B0 80399530 24020001 */   addiu     $v0, $zero, 1
/* 1AB5B4 80399534 080E6560 */  j          .L80399580
/* 1AB5B8 80399538 00000000 */   nop
.L8039953C:
/* 1AB5BC 8039953C 8E040014 */  lw         $a0, 0x14($s0)
/* 1AB5C0 80399540 0C0326A1 */  jal        func_800C9A84
/* 1AB5C4 80399544 00000000 */   nop
/* 1AB5C8 80399548 080E6560 */  j          .L80399580
/* 1AB5CC 8039954C 24020001 */   addiu     $v0, $zero, 1
.L80399550:
/* 1AB5D0 80399550 8E040014 */  lw         $a0, 0x14($s0)
/* 1AB5D4 80399554 0C025EC3 */  jal        func_80097B0C
/* 1AB5D8 80399558 00000000 */   nop
/* 1AB5DC 8039955C 080E6560 */  j          .L80399580
/* 1AB5E0 80399560 24020001 */   addiu     $v0, $zero, 1
.L80399564:
/* 1AB5E4 80399564 8E040014 */  lw         $a0, 0x14($s0)
/* 1AB5E8 80399568 0C026187 */  jal        func_8009861C
/* 1AB5EC 8039956C 00000000 */   nop
/* 1AB5F0 80399570 080E6560 */  j          .L80399580
/* 1AB5F4 80399574 24020001 */   addiu     $v0, $zero, 1
.L80399578:
/* 1AB5F8 80399578 0C032934 */  jal        func_800CA4D0
/* 1AB5FC 8039957C 00000000 */   nop
.L80399580:
/* 1AB600 80399580 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AB604 80399584 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AB608 80399588 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AB60C 8039958C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AB610 80399590 03E00008 */  jr         $ra
/* 1AB614 80399594 00000000 */   nop

glabel func_80399598_1AB618
/* 1AB618 80399598 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AB61C 8039959C AFB00010 */  sw         $s0, 0x10($sp)
/* 1AB620 803995A0 00808021 */  addu       $s0, $a0, $zero
/* 1AB624 803995A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1AB628 803995A8 0C02591A */  jal        func_80096468
/* 1AB62C 803995AC 24040168 */   addiu     $a0, $zero, 0x168
/* 1AB630 803995B0 26040040 */  addiu      $a0, $s0, 0x40
/* 1AB634 803995B4 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AB638 803995B8 44800000 */  mtc1       $zero, $f0
/* 1AB63C 803995BC 00000000 */  nop
/* 1AB640 803995C0 44824000 */  mtc1       $v0, $f8
/* 1AB644 803995C4 00000000 */  nop
/* 1AB648 803995C8 46804220 */  cvt.s.w    $f8, $f8
/* 1AB64C 803995CC 44050000 */  mfc1       $a1, $f0
/* 1AB650 803995D0 00000000 */  nop
/* 1AB654 803995D4 44074000 */  mfc1       $a3, $f8
/* 1AB658 803995D8 00000000 */  nop
/* 1AB65C 803995DC 0C02FECA */  jal        func_800BFB28
/* 1AB660 803995E0 00A03021 */   addu      $a2, $a1, $zero
/* 1AB664 803995E4 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1AB668 803995E8 C4203EBC */  lwc1       $f0, %lo(D_803B3EBC)($at)
/* 1AB66C 803995EC 3C04803B */  lui        $a0, %hi(D_803B3E5E)
/* 1AB670 803995F0 94843E5E */  lhu        $a0, %lo(D_803B3E5E)($a0)
/* 1AB674 803995F4 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1AB678 803995F8 C4223EB0 */  lwc1       $f2, %lo(D_803B3EB0)($at)
/* 1AB67C 803995FC 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1AB680 80399600 C4243E2C */  lwc1       $f4, %lo(D_803B3E2C)($at)
/* 1AB684 80399604 E6000080 */  swc1       $f0, 0x80($s0)
/* 1AB688 80399608 E6020084 */  swc1       $f2, 0x84($s0)
/* 1AB68C 8039960C 0C02591A */  jal        func_80096468
/* 1AB690 80399610 E6040088 */   swc1      $f4, 0x88($s0)
/* 1AB694 80399614 3C014120 */  lui        $at, 0x4120
/* 1AB698 80399618 44811000 */  mtc1       $at, $f2
/* 1AB69C 8039961C 00000000 */  nop
/* 1AB6A0 80399620 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AB6A4 80399624 44820000 */  mtc1       $v0, $f0
/* 1AB6A8 80399628 00000000 */  nop
/* 1AB6AC 8039962C 46800020 */  cvt.s.w    $f0, $f0
/* 1AB6B0 80399630 46020083 */  div.s      $f2, $f0, $f2
/* 1AB6B4 80399634 3C014F00 */  lui        $at, 0x4f00
/* 1AB6B8 80399638 44810000 */  mtc1       $at, $f0
/* 1AB6BC 8039963C 00000000 */  nop
/* 1AB6C0 80399640 4602003E */  c.le.s     $f0, $f2
/* 1AB6C4 80399644 00000000 */  nop
/* 1AB6C8 80399648 00000000 */  nop
/* 1AB6CC 8039964C 45030006 */  bc1tl      .L80399668
/* 1AB6D0 80399650 46001001 */   sub.s     $f0, $f2, $f0
/* 1AB6D4 80399654 4600100D */  trunc.w.s  $f0, $f2
/* 1AB6D8 80399658 44040000 */  mfc1       $a0, $f0
/* 1AB6DC 8039965C 00000000 */  nop
/* 1AB6E0 80399660 080E659F */  j          .L8039967C
/* 1AB6E4 80399664 00000000 */   nop
.L80399668:
/* 1AB6E8 80399668 4600008D */  trunc.w.s  $f2, $f0
/* 1AB6EC 8039966C 44041000 */  mfc1       $a0, $f2
/* 1AB6F0 80399670 00000000 */  nop
/* 1AB6F4 80399674 3C028000 */  lui        $v0, 0x8000
/* 1AB6F8 80399678 00822025 */  or         $a0, $a0, $v0
.L8039967C:
/* 1AB6FC 8039967C 0C02592F */  jal        func_800964BC
/* 1AB700 80399680 00000000 */   nop
/* 1AB704 80399684 3C04803B */  lui        $a0, %hi(D_803B3E5E)
/* 1AB708 80399688 94843E5E */  lhu        $a0, %lo(D_803B3E5E)($a0)
/* 1AB70C 8039968C 44820000 */  mtc1       $v0, $f0
/* 1AB710 80399690 00000000 */  nop
/* 1AB714 80399694 46800020 */  cvt.s.w    $f0, $f0
/* 1AB718 80399698 0C02591A */  jal        func_80096468
/* 1AB71C 8039969C E600008C */   swc1      $f0, 0x8c($s0)
/* 1AB720 803996A0 3C014120 */  lui        $at, 0x4120
/* 1AB724 803996A4 44811000 */  mtc1       $at, $f2
/* 1AB728 803996A8 00000000 */  nop
/* 1AB72C 803996AC 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AB730 803996B0 44820000 */  mtc1       $v0, $f0
/* 1AB734 803996B4 00000000 */  nop
/* 1AB738 803996B8 46800020 */  cvt.s.w    $f0, $f0
/* 1AB73C 803996BC 46020083 */  div.s      $f2, $f0, $f2
/* 1AB740 803996C0 3C014F00 */  lui        $at, 0x4f00
/* 1AB744 803996C4 44810000 */  mtc1       $at, $f0
/* 1AB748 803996C8 00000000 */  nop
/* 1AB74C 803996CC 4602003E */  c.le.s     $f0, $f2
/* 1AB750 803996D0 00000000 */  nop
/* 1AB754 803996D4 00000000 */  nop
/* 1AB758 803996D8 45030006 */  bc1tl      .L803996F4
/* 1AB75C 803996DC 46001001 */   sub.s     $f0, $f2, $f0
/* 1AB760 803996E0 4600100D */  trunc.w.s  $f0, $f2
/* 1AB764 803996E4 44040000 */  mfc1       $a0, $f0
/* 1AB768 803996E8 00000000 */  nop
/* 1AB76C 803996EC 080E65C2 */  j          .L80399708
/* 1AB770 803996F0 00000000 */   nop
.L803996F4:
/* 1AB774 803996F4 4600008D */  trunc.w.s  $f2, $f0
/* 1AB778 803996F8 44041000 */  mfc1       $a0, $f2
/* 1AB77C 803996FC 00000000 */  nop
/* 1AB780 80399700 3C028000 */  lui        $v0, 0x8000
/* 1AB784 80399704 00822025 */  or         $a0, $a0, $v0
.L80399708:
/* 1AB788 80399708 0C02592F */  jal        func_800964BC
/* 1AB78C 8039970C 00000000 */   nop
/* 1AB790 80399710 3C04803B */  lui        $a0, %hi(D_803B3E5E)
/* 1AB794 80399714 94843E5E */  lhu        $a0, %lo(D_803B3E5E)($a0)
/* 1AB798 80399718 44820000 */  mtc1       $v0, $f0
/* 1AB79C 8039971C 00000000 */  nop
/* 1AB7A0 80399720 46800020 */  cvt.s.w    $f0, $f0
/* 1AB7A4 80399724 0C02591A */  jal        func_80096468
/* 1AB7A8 80399728 E6000090 */   swc1      $f0, 0x90($s0)
/* 1AB7AC 8039972C 3C014120 */  lui        $at, 0x4120
/* 1AB7B0 80399730 44811000 */  mtc1       $at, $f2
/* 1AB7B4 80399734 00000000 */  nop
/* 1AB7B8 80399738 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AB7BC 8039973C 44820000 */  mtc1       $v0, $f0
/* 1AB7C0 80399740 00000000 */  nop
/* 1AB7C4 80399744 46800020 */  cvt.s.w    $f0, $f0
/* 1AB7C8 80399748 46020083 */  div.s      $f2, $f0, $f2
/* 1AB7CC 8039974C 3C014F00 */  lui        $at, 0x4f00
/* 1AB7D0 80399750 44810000 */  mtc1       $at, $f0
/* 1AB7D4 80399754 00000000 */  nop
/* 1AB7D8 80399758 4602003E */  c.le.s     $f0, $f2
/* 1AB7DC 8039975C 00000000 */  nop
/* 1AB7E0 80399760 00000000 */  nop
/* 1AB7E4 80399764 45030006 */  bc1tl      .L80399780
/* 1AB7E8 80399768 46001001 */   sub.s     $f0, $f2, $f0
/* 1AB7EC 8039976C 4600100D */  trunc.w.s  $f0, $f2
/* 1AB7F0 80399770 44040000 */  mfc1       $a0, $f0
/* 1AB7F4 80399774 00000000 */  nop
/* 1AB7F8 80399778 080E65E5 */  j          .L80399794
/* 1AB7FC 8039977C 00000000 */   nop
.L80399780:
/* 1AB800 80399780 4600008D */  trunc.w.s  $f2, $f0
/* 1AB804 80399784 44041000 */  mfc1       $a0, $f2
/* 1AB808 80399788 00000000 */  nop
/* 1AB80C 8039978C 3C028000 */  lui        $v0, 0x8000
/* 1AB810 80399790 00822025 */  or         $a0, $a0, $v0
.L80399794:
/* 1AB814 80399794 0C02592F */  jal        func_800964BC
/* 1AB818 80399798 00000000 */   nop
/* 1AB81C 8039979C 3C03803B */  lui        $v1, %hi(D_803B3EA8)
/* 1AB820 803997A0 8C633EA8 */  lw         $v1, %lo(D_803B3EA8)($v1)
/* 1AB824 803997A4 3C014110 */  lui        $at, 0x4110
/* 1AB828 803997A8 44812000 */  mtc1       $at, $f4
/* 1AB82C 803997AC 00000000 */  nop
/* 1AB830 803997B0 44831000 */  mtc1       $v1, $f2
/* 1AB834 803997B4 00000000 */  nop
/* 1AB838 803997B8 468010A0 */  cvt.s.w    $f2, $f2
/* 1AB83C 803997BC 46022103 */  div.s      $f4, $f4, $f2
/* 1AB840 803997C0 3C01437F */  lui        $at, 0x437f
/* 1AB844 803997C4 44813000 */  mtc1       $at, $f6
/* 1AB848 803997C8 00000000 */  nop
/* 1AB84C 803997CC 46023083 */  div.s      $f2, $f6, $f2
/* 1AB850 803997D0 44820000 */  mtc1       $v0, $f0
/* 1AB854 803997D4 00000000 */  nop
/* 1AB858 803997D8 46800020 */  cvt.s.w    $f0, $f0
/* 1AB85C 803997DC E6000094 */  swc1       $f0, 0x94($s0)
/* 1AB860 803997E0 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AB864 803997E4 C4203E20 */  lwc1       $f0, %lo(D_803B3E20)($at)
/* 1AB868 803997E8 46800020 */  cvt.s.w    $f0, $f0
/* 1AB86C 803997EC E6000098 */  swc1       $f0, 0x98($s0)
/* 1AB870 803997F0 AE00009C */  sw         $zero, 0x9c($s0)
/* 1AB874 803997F4 AE0000A0 */  sw         $zero, 0xa0($s0)
/* 1AB878 803997F8 A60300A8 */  sh         $v1, 0xa8($s0)
/* 1AB87C 803997FC E60600AC */  swc1       $f6, 0xac($s0)
/* 1AB880 80399800 E60400A4 */  swc1       $f4, 0xa4($s0)
/* 1AB884 80399804 E60200B0 */  swc1       $f2, 0xb0($s0)
/* 1AB888 80399808 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AB88C 8039980C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AB890 80399810 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AB894 80399814 03E00008 */  jr         $ra
/* 1AB898 80399818 00000000 */   nop

glabel func_8039981C_1AB89C
/* 1AB89C 8039981C 03E00008 */  jr         $ra
/* 1AB8A0 80399820 00000000 */   nop

glabel func_80399824_1AB8A4
/* 1AB8A4 80399824 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1AB8A8 80399828 AFB00028 */  sw         $s0, 0x28($sp)
/* 1AB8AC 8039982C 00808021 */  addu       $s0, $a0, $zero
/* 1AB8B0 80399830 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1AB8B4 80399834 860200A8 */  lh         $v0, 0xa8($s0)
/* 1AB8B8 80399838 1040011C */  beqz       $v0, .L80399CAC
/* 1AB8BC 8039983C 00401821 */   addu      $v1, $v0, $zero
/* 1AB8C0 80399840 2463FFFF */  addiu      $v1, $v1, -1
/* 1AB8C4 80399844 3C0AD9FD */  lui        $t2, 0xd9fd
/* 1AB8C8 80399848 354AFFFF */  ori        $t2, $t2, 0xffff
/* 1AB8CC 8039984C 3C0BD9FF */  lui        $t3, 0xd9ff
/* 1AB8D0 80399850 356BFFFF */  ori        $t3, $t3, 0xffff
/* 1AB8D4 80399854 3C080020 */  lui        $t0, 0x20
/* 1AB8D8 80399858 35080405 */  ori        $t0, $t0, 0x405
/* 1AB8DC 8039985C 3C06E300 */  lui        $a2, 0xe300
/* 1AB8E0 80399860 34C61201 */  ori        $a2, $a2, 0x1201
/* 1AB8E4 80399864 3C09E200 */  lui        $t1, 0xe200
/* 1AB8E8 80399868 3529001C */  ori        $t1, $t1, 0x1c
/* 1AB8EC 8039986C 3C070050 */  lui        $a3, 0x50
/* 1AB8F0 80399870 34E74B50 */  ori        $a3, $a3, 0x4b50
/* 1AB8F4 80399874 3C05FC11 */  lui        $a1, 0xfc11
/* 1AB8F8 80399878 34A59623 */  ori        $a1, $a1, 0x9623
/* 1AB8FC 8039987C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AB900 80399880 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AB904 80399884 3C014F00 */  lui        $at, 0x4f00
/* 1AB908 80399888 44810000 */  mtc1       $at, $f0
/* 1AB90C 8039988C 00000000 */  nop
/* 1AB910 80399890 3C04FF2F */  lui        $a0, 0xff2f
/* 1AB914 80399894 3484FFFF */  ori        $a0, $a0, 0xffff
/* 1AB918 80399898 A60300A8 */  sh         $v1, 0xa8($s0)
/* 1AB91C 8039989C 3C03DE00 */  lui        $v1, 0xde00
/* 1AB920 803998A0 AC430000 */  sw         $v1, ($v0)
/* 1AB924 803998A4 3C03800D */  lui        $v1, %hi(D_800D3D70)
/* 1AB928 803998A8 24633D70 */  addiu      $v1, $v1, %lo(D_800D3D70)
/* 1AB92C 803998AC AC430004 */  sw         $v1, 4($v0)
/* 1AB930 803998B0 24032000 */  addiu      $v1, $zero, 0x2000
/* 1AB934 803998B4 AC43001C */  sw         $v1, 0x1c($v0)
/* 1AB938 803998B8 3C03FA00 */  lui        $v1, 0xfa00
/* 1AB93C 803998BC AC4A0008 */  sw         $t2, 8($v0)
/* 1AB940 803998C0 AC40000C */  sw         $zero, 0xc($v0)
/* 1AB944 803998C4 AC4B0010 */  sw         $t3, 0x10($v0)
/* 1AB948 803998C8 AC480014 */  sw         $t0, 0x14($v0)
/* 1AB94C 803998CC AC460018 */  sw         $a2, 0x18($v0)
/* 1AB950 803998D0 AC490020 */  sw         $t1, 0x20($v0)
/* 1AB954 803998D4 AC470024 */  sw         $a3, 0x24($v0)
/* 1AB958 803998D8 AC450028 */  sw         $a1, 0x28($v0)
/* 1AB95C 803998DC AC44002C */  sw         $a0, 0x2c($v0)
/* 1AB960 803998E0 AC430030 */  sw         $v1, 0x30($v0)
/* 1AB964 803998E4 C60200AC */  lwc1       $f2, 0xac($s0)
/* 1AB968 803998E8 24430008 */  addiu      $v1, $v0, 8
/* 1AB96C 803998EC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB970 803998F0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB974 803998F4 24430010 */  addiu      $v1, $v0, 0x10
/* 1AB978 803998F8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB97C 803998FC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB980 80399900 24430018 */  addiu      $v1, $v0, 0x18
/* 1AB984 80399904 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB988 80399908 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB98C 8039990C 24430020 */  addiu      $v1, $v0, 0x20
/* 1AB990 80399910 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB994 80399914 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB998 80399918 24430028 */  addiu      $v1, $v0, 0x28
/* 1AB99C 8039991C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB9A0 80399920 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB9A4 80399924 24430030 */  addiu      $v1, $v0, 0x30
/* 1AB9A8 80399928 24420038 */  addiu      $v0, $v0, 0x38
/* 1AB9AC 8039992C 4602003E */  c.le.s     $f0, $f2
/* 1AB9B0 80399930 00000000 */  nop
/* 1AB9B4 80399934 00000000 */  nop
/* 1AB9B8 80399938 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB9BC 8039993C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AB9C0 80399940 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AB9C4 80399944 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AB9C8 80399948 45030006 */  bc1tl      .L80399964
/* 1AB9CC 8039994C 46001001 */   sub.s     $f0, $f2, $f0
/* 1AB9D0 80399950 4600100D */  trunc.w.s  $f0, $f2
/* 1AB9D4 80399954 44040000 */  mfc1       $a0, $f0
/* 1AB9D8 80399958 00000000 */  nop
/* 1AB9DC 8039995C 080E665F */  j          .L8039997C
/* 1AB9E0 80399960 2402FF00 */   addiu     $v0, $zero, -0x100
.L80399964:
/* 1AB9E4 80399964 4600008D */  trunc.w.s  $f2, $f0
/* 1AB9E8 80399968 44041000 */  mfc1       $a0, $f2
/* 1AB9EC 8039996C 00000000 */  nop
/* 1AB9F0 80399970 3C028000 */  lui        $v0, 0x8000
/* 1AB9F4 80399974 00822025 */  or         $a0, $a0, $v0
/* 1AB9F8 80399978 2402FF00 */  addiu      $v0, $zero, -0x100
.L8039997C:
/* 1AB9FC 8039997C 00821025 */  or         $v0, $a0, $v0
/* 1ABA00 80399980 AC620004 */  sw         $v0, 4($v1)
/* 1ABA04 80399984 C60200AC */  lwc1       $f2, 0xac($s0)
/* 1ABA08 80399988 C60000B0 */  lwc1       $f0, 0xb0($s0)
/* 1ABA0C 8039998C 46001081 */  sub.s      $f2, $f2, $f0
/* 1ABA10 80399990 3C01437F */  lui        $at, 0x437f
/* 1ABA14 80399994 44810000 */  mtc1       $at, $f0
/* 1ABA18 80399998 00000000 */  nop
/* 1ABA1C 8039999C 4602003C */  c.lt.s     $f0, $f2
/* 1ABA20 803999A0 00000000 */  nop
/* 1ABA24 803999A4 00000000 */  nop
/* 1ABA28 803999A8 45010008 */  bc1t       .L803999CC
/* 1ABA2C 803999AC E60200AC */   swc1      $f2, 0xac($s0)
/* 1ABA30 803999B0 44800000 */  mtc1       $zero, $f0
/* 1ABA34 803999B4 00000000 */  nop
/* 1ABA38 803999B8 4600103C */  c.lt.s     $f2, $f0
/* 1ABA3C 803999BC 00000000 */  nop
/* 1ABA40 803999C0 00000000 */  nop
/* 1ABA44 803999C4 45000003 */  bc1f       .L803999D4
/* 1ABA48 803999C8 3C02E300 */   lui       $v0, 0xe300
.L803999CC:
/* 1ABA4C 803999CC E60000AC */  swc1       $f0, 0xac($s0)
/* 1ABA50 803999D0 3C02E300 */  lui        $v0, 0xe300
.L803999D4:
/* 1ABA54 803999D4 34421001 */  ori        $v0, $v0, 0x1001
/* 1ABA58 803999D8 3C04F500 */  lui        $a0, 0xf500
/* 1ABA5C 803999DC 34840100 */  ori        $a0, $a0, 0x100
/* 1ABA60 803999E0 3C070703 */  lui        $a3, 0x703
/* 1ABA64 803999E4 34E7C000 */  ori        $a3, $a3, 0xc000
/* 1ABA68 803999E8 3C080701 */  lui        $t0, 0x701
/* 1ABA6C 803999EC 35088060 */  ori        $t0, $t0, 0x8060
/* 1ABA70 803999F0 3C09073F */  lui        $t1, 0x73f
/* 1ABA74 803999F4 3529F200 */  ori        $t1, $t1, 0xf200
/* 1ABA78 803999F8 3C0CF540 */  lui        $t4, 0xf540
/* 1ABA7C 803999FC 358C0800 */  ori        $t4, $t4, 0x800
/* 1ABA80 80399A00 3C0A0001 */  lui        $t2, 1
/* 1ABA84 80399A04 354A8060 */  ori        $t2, $t2, 0x8060
/* 1ABA88 80399A08 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1ABA8C 80399A0C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1ABA90 80399A10 3C0B000F */  lui        $t3, 0xf
/* 1ABA94 80399A14 3C05E700 */  lui        $a1, 0xe700
/* 1ABA98 80399A18 3C06E600 */  lui        $a2, 0xe600
/* 1ABA9C 80399A1C AC620008 */  sw         $v0, 8($v1)
/* 1ABAA0 80399A20 34028000 */  ori        $v0, $zero, 0x8000
/* 1ABAA4 80399A24 AC62000C */  sw         $v0, 0xc($v1)
/* 1ABAA8 80399A28 3C02FD10 */  lui        $v0, 0xfd10
/* 1ABAAC 80399A2C AC620010 */  sw         $v0, 0x10($v1)
/* 1ABAB0 80399A30 3C02803B */  lui        $v0, %hi(D_803AE450)
/* 1ABAB4 80399A34 2442E450 */  addiu      $v0, $v0, %lo(D_803AE450)
/* 1ABAB8 80399A38 AC620014 */  sw         $v0, 0x14($v1)
/* 1ABABC 80399A3C 3C02E800 */  lui        $v0, 0xe800
/* 1ABAC0 80399A40 AC620018 */  sw         $v0, 0x18($v1)
/* 1ABAC4 80399A44 3C020700 */  lui        $v0, 0x700
/* 1ABAC8 80399A48 AC620024 */  sw         $v0, 0x24($v1)
/* 1ABACC 80399A4C 3C02F000 */  lui        $v0, 0xf000
/* 1ABAD0 80399A50 AC650000 */  sw         $a1, ($v1)
/* 1ABAD4 80399A54 AC600004 */  sw         $zero, 4($v1)
/* 1ABAD8 80399A58 AC60001C */  sw         $zero, 0x1c($v1)
/* 1ABADC 80399A5C AC640020 */  sw         $a0, 0x20($v1)
/* 1ABAE0 80399A60 AC660028 */  sw         $a2, 0x28($v1)
/* 1ABAE4 80399A64 AC60002C */  sw         $zero, 0x2c($v1)
/* 1ABAE8 80399A68 AC620030 */  sw         $v0, 0x30($v1)
/* 1ABAEC 80399A6C AC670034 */  sw         $a3, 0x34($v1)
/* 1ABAF0 80399A70 AC650038 */  sw         $a1, 0x38($v1)
/* 1ABAF4 80399A74 AC60003C */  sw         $zero, 0x3c($v1)
/* 1ABAF8 80399A78 C60000A0 */  lwc1       $f0, 0xa0($s0)
/* 1ABAFC 80399A7C 356BC0FC */  ori        $t3, $t3, 0xc0fc
/* 1ABB00 80399A80 24620008 */  addiu      $v0, $v1, 8
/* 1ABB04 80399A84 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB08 80399A88 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB0C 80399A8C 24620010 */  addiu      $v0, $v1, 0x10
/* 1ABB10 80399A90 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB14 80399A94 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB18 80399A98 24620018 */  addiu      $v0, $v1, 0x18
/* 1ABB1C 80399A9C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB20 80399AA0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB24 80399AA4 24620020 */  addiu      $v0, $v1, 0x20
/* 1ABB28 80399AA8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB2C 80399AAC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB30 80399AB0 24620028 */  addiu      $v0, $v1, 0x28
/* 1ABB34 80399AB4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB38 80399AB8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB3C 80399ABC 24620030 */  addiu      $v0, $v1, 0x30
/* 1ABB40 80399AC0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB44 80399AC4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB48 80399AC8 24620038 */  addiu      $v0, $v1, 0x38
/* 1ABB4C 80399ACC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB50 80399AD0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB54 80399AD4 24620040 */  addiu      $v0, $v1, 0x40
/* 1ABB58 80399AD8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB5C 80399ADC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB60 80399AE0 24620048 */  addiu      $v0, $v1, 0x48
/* 1ABB64 80399AE4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB68 80399AE8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB6C 80399AEC 3C02FD50 */  lui        $v0, 0xfd50
/* 1ABB70 80399AF0 AC620040 */  sw         $v0, 0x40($v1)
/* 1ABB74 80399AF4 24620050 */  addiu      $v0, $v1, 0x50
/* 1ABB78 80399AF8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB7C 80399AFC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB80 80399B00 3C02F550 */  lui        $v0, 0xf550
/* 1ABB84 80399B04 AC620048 */  sw         $v0, 0x48($v1)
/* 1ABB88 80399B08 24620058 */  addiu      $v0, $v1, 0x58
/* 1ABB8C 80399B0C AC68004C */  sw         $t0, 0x4c($v1)
/* 1ABB90 80399B10 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABB94 80399B14 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABB98 80399B18 4600008D */  trunc.w.s  $f2, $f0
/* 1ABB9C 80399B1C 44041000 */  mfc1       $a0, $f2
/* 1ABBA0 80399B20 00000000 */  nop
/* 1ABBA4 80399B24 000411C0 */  sll        $v0, $a0, 7
/* 1ABBA8 80399B28 00441021 */  addu       $v0, $v0, $a0
/* 1ABBAC 80399B2C 00021100 */  sll        $v0, $v0, 4
/* 1ABBB0 80399B30 3C04803B */  lui        $a0, %hi(D_803AE480)
/* 1ABBB4 80399B34 2484E480 */  addiu      $a0, $a0, %lo(D_803AE480)
/* 1ABBB8 80399B38 00441021 */  addu       $v0, $v0, $a0
/* 1ABBBC 80399B3C AC620044 */  sw         $v0, 0x44($v1)
/* 1ABBC0 80399B40 3C02F300 */  lui        $v0, 0xf300
/* 1ABBC4 80399B44 AC660050 */  sw         $a2, 0x50($v1)
/* 1ABBC8 80399B48 AC620058 */  sw         $v0, 0x58($v1)
/* 1ABBCC 80399B4C 3C02F200 */  lui        $v0, 0xf200
/* 1ABBD0 80399B50 AC600054 */  sw         $zero, 0x54($v1)
/* 1ABBD4 80399B54 AC69005C */  sw         $t1, 0x5c($v1)
/* 1ABBD8 80399B58 AC650060 */  sw         $a1, 0x60($v1)
/* 1ABBDC 80399B5C AC600064 */  sw         $zero, 0x64($v1)
/* 1ABBE0 80399B60 AC6C0068 */  sw         $t4, 0x68($v1)
/* 1ABBE4 80399B64 AC6A006C */  sw         $t2, 0x6c($v1)
/* 1ABBE8 80399B68 AC620070 */  sw         $v0, 0x70($v1)
/* 1ABBEC 80399B6C AC6B0074 */  sw         $t3, 0x74($v1)
/* 1ABBF0 80399B70 C6000098 */  lwc1       $f0, 0x98($s0)
/* 1ABBF4 80399B74 3C058015 */  lui        $a1, %hi(D_8014A07C)
/* 1ABBF8 80399B78 8CA5A07C */  lw         $a1, %lo(D_8014A07C)($a1)
/* 1ABBFC 80399B7C 3C068015 */  lui        $a2, %hi(D_8014A080)
/* 1ABC00 80399B80 8CC6A080 */  lw         $a2, %lo(D_8014A080)($a2)
/* 1ABC04 80399B84 3C078015 */  lui        $a3, %hi(D_8014A084)
/* 1ABC08 80399B88 8CE7A084 */  lw         $a3, %lo(D_8014A084)($a3)
/* 1ABC0C 80399B8C E7A00010 */  swc1       $f0, 0x10($sp)
/* 1ABC10 80399B90 C6000080 */  lwc1       $f0, 0x80($s0)
/* 1ABC14 80399B94 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1ABC18 80399B98 C6000084 */  lwc1       $f0, 0x84($s0)
/* 1ABC1C 80399B9C 24620060 */  addiu      $v0, $v1, 0x60
/* 1ABC20 80399BA0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABC24 80399BA4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABC28 80399BA8 24620068 */  addiu      $v0, $v1, 0x68
/* 1ABC2C 80399BAC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABC30 80399BB0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABC34 80399BB4 24620070 */  addiu      $v0, $v1, 0x70
/* 1ABC38 80399BB8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1ABC3C 80399BBC C6000088 */  lwc1       $f0, 0x88($s0)
/* 1ABC40 80399BC0 24630078 */  addiu      $v1, $v1, 0x78
/* 1ABC44 80399BC4 02002021 */  addu       $a0, $s0, $zero
/* 1ABC48 80399BC8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABC4C 80399BCC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ABC50 80399BD0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABC54 80399BD4 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ABC58 80399BD8 0C02FD0E */  jal        func_800BF438
/* 1ABC5C 80399BDC E7A0001C */   swc1      $f0, 0x1c($sp)
/* 1ABC60 80399BE0 3C03DA38 */  lui        $v1, 0xda38
/* 1ABC64 80399BE4 34630003 */  ori        $v1, $v1, 3
/* 1ABC68 80399BE8 3C048015 */  lui        $a0, %hi(gDisplayListHead)
/* 1ABC6C 80399BEC 8C849F94 */  lw         $a0, %lo(gDisplayListHead)($a0)
/* 1ABC70 80399BF0 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1ABC74 80399BF4 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1ABC78 80399BF8 3C05DA38 */  lui        $a1, 0xda38
/* 1ABC7C 80399BFC 34A50001 */  ori        $a1, $a1, 1
/* 1ABC80 80399C00 AC830000 */  sw         $v1, ($a0)
/* 1ABC84 80399C04 26030040 */  addiu      $v1, $s0, 0x40
/* 1ABC88 80399C08 AC83000C */  sw         $v1, 0xc($a0)
/* 1ABC8C 80399C0C 3C03DE00 */  lui        $v1, 0xde00
/* 1ABC90 80399C10 AC830010 */  sw         $v1, 0x10($a0)
/* 1ABC94 80399C14 3C03803A */  lui        $v1, %hi(D_803A2020_1B40A0)
/* 1ABC98 80399C18 24632020 */  addiu      $v1, $v1, %lo(D_803A2020_1B40A0)
/* 1ABC9C 80399C1C AC900004 */  sw         $s0, 4($a0)
/* 1ABCA0 80399C20 AC850008 */  sw         $a1, 8($a0)
/* 1ABCA4 80399C24 AC830014 */  sw         $v1, 0x14($a0)
/* 1ABCA8 80399C28 C6040080 */  lwc1       $f4, 0x80($s0)
/* 1ABCAC 80399C2C 00001021 */  addu       $v0, $zero, $zero
/* 1ABCB0 80399C30 C60A0084 */  lwc1       $f10, 0x84($s0)
/* 1ABCB4 80399C34 46002100 */  add.s      $f4, $f4, $f0
/* 1ABCB8 80399C38 C6020090 */  lwc1       $f2, 0x90($s0)
/* 1ABCBC 80399C3C C6080088 */  lwc1       $f8, 0x88($s0)
/* 1ABCC0 80399C40 C6060098 */  lwc1       $f6, 0x98($s0)
/* 1ABCC4 80399C44 46025280 */  add.s      $f10, $f10, $f2
/* 1ABCC8 80399C48 C6000094 */  lwc1       $f0, 0x94($s0)
/* 1ABCCC 80399C4C C60C008C */  lwc1       $f12, 0x8c($s0)
/* 1ABCD0 80399C50 C602009C */  lwc1       $f2, 0x9c($s0)
/* 1ABCD4 80399C54 46004200 */  add.s      $f8, $f8, $f0
/* 1ABCD8 80399C58 24830008 */  addiu      $v1, $a0, 8
/* 1ABCDC 80399C5C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABCE0 80399C60 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ABCE4 80399C64 C60000A0 */  lwc1       $f0, 0xa0($s0)
/* 1ABCE8 80399C68 46023180 */  add.s      $f6, $f6, $f2
/* 1ABCEC 80399C6C C60200A4 */  lwc1       $f2, 0xa4($s0)
/* 1ABCF0 80399C70 24830010 */  addiu      $v1, $a0, 0x10
/* 1ABCF4 80399C74 24840018 */  addiu      $a0, $a0, 0x18
/* 1ABCF8 80399C78 E6040080 */  swc1       $f4, 0x80($s0)
/* 1ABCFC 80399C7C 460C2100 */  add.s      $f4, $f4, $f12
/* 1ABD00 80399C80 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABD04 80399C84 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ABD08 80399C88 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ABD0C 80399C8C AC249F94 */  sw         $a0, %lo(gDisplayListHead)($at)
/* 1ABD10 80399C90 E60A0084 */  swc1       $f10, 0x84($s0)
/* 1ABD14 80399C94 46020000 */  add.s      $f0, $f0, $f2
/* 1ABD18 80399C98 E6080088 */  swc1       $f8, 0x88($s0)
/* 1ABD1C 80399C9C E6060098 */  swc1       $f6, 0x98($s0)
/* 1ABD20 80399CA0 E6040080 */  swc1       $f4, 0x80($s0)
/* 1ABD24 80399CA4 080E672C */  j          .L80399CB0
/* 1ABD28 80399CA8 E60000A0 */   swc1      $f0, 0xa0($s0)
.L80399CAC:
/* 1ABD2C 80399CAC 24020001 */  addiu      $v0, $zero, 1
.L80399CB0:
/* 1ABD30 80399CB0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1ABD34 80399CB4 8FB00028 */  lw         $s0, 0x28($sp)
/* 1ABD38 80399CB8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1ABD3C 80399CBC 03E00008 */  jr         $ra
/* 1ABD40 80399CC0 00000000 */   nop

glabel func_80399CC4
/* 1ABD44 80399CC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1ABD48 80399CC8 00042400 */  sll        $a0, $a0, 0x10
/* 1ABD4C 80399CCC 00042403 */  sra        $a0, $a0, 0x10
/* 1ABD50 80399CD0 00052C00 */  sll        $a1, $a1, 0x10
/* 1ABD54 80399CD4 00052C03 */  sra        $a1, $a1, 0x10
/* 1ABD58 80399CD8 00063400 */  sll        $a2, $a2, 0x10
/* 1ABD5C 80399CDC 00063403 */  sra        $a2, $a2, 0x10
/* 1ABD60 80399CE0 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 1ABD64 80399CE4 AC243EA8 */  sw         $a0, %lo(D_803B3EA8)($at)
/* 1ABD68 80399CE8 3C04803A */  lui        $a0, %hi(D_80399408)
/* 1ABD6C 80399CEC 24849408 */  addiu      $a0, $a0, %lo(D_80399408)
/* 1ABD70 80399CF0 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1ABD74 80399CF4 AC253E20 */  sw         $a1, %lo(D_803B3E20)($at)
/* 1ABD78 80399CF8 24050001 */  addiu      $a1, $zero, 1
/* 1ABD7C 80399CFC 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1ABD80 80399D00 AC263E5C */  sw         $a2, %lo(D_803B3E5C)($at)
/* 1ABD84 80399D04 24060136 */  addiu      $a2, $zero, 0x136
/* 1ABD88 80399D08 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1ABD8C 80399D0C 0C025D06 */  jal        func_80097418
/* 1ABD90 80399D10 24070001 */   addiu     $a3, $zero, 1
/* 1ABD94 80399D14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1ABD98 80399D18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1ABD9C 80399D1C 03E00008 */  jr         $ra
/* 1ABDA0 80399D20 00000000 */   nop
/* 1ABDA4 80399D24 00000000 */  nop
/* 1ABDA8 80399D28 00000000 */  nop
/* 1ABDAC 80399D2C 00000000 */  nop

glabel func_80399D30_1ABDB0
/* 1ABDB0 80399D30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1ABDB4 80399D34 AFB00010 */  sw         $s0, 0x10($sp)
/* 1ABDB8 80399D38 00808021 */  addu       $s0, $a0, $zero
/* 1ABDBC 80399D3C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1ABDC0 80399D40 AFB20018 */  sw         $s2, 0x18($sp)
/* 1ABDC4 80399D44 AFB10014 */  sw         $s1, 0x14($sp)
/* 1ABDC8 80399D48 9603001C */  lhu        $v1, 0x1c($s0)
/* 1ABDCC 80399D4C 24120001 */  addiu      $s2, $zero, 1
/* 1ABDD0 80399D50 10720033 */  beq        $v1, $s2, .L80399E20
/* 1ABDD4 80399D54 28620002 */   slti      $v0, $v1, 2
/* 1ABDD8 80399D58 50400005 */  beql       $v0, $zero, .L80399D70
/* 1ABDDC 80399D5C 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1ABDE0 80399D60 10600007 */  beqz       $v1, .L80399D80
/* 1ABDE4 80399D64 00000000 */   nop
/* 1ABDE8 80399D68 080E67AF */  j          .L80399EBC
/* 1ABDEC 80399D6C 00000000 */   nop
.L80399D70:
/* 1ABDF0 80399D70 10620033 */  beq        $v1, $v0, .L80399E40
/* 1ABDF4 80399D74 00000000 */   nop
/* 1ABDF8 80399D78 080E67AF */  j          .L80399EBC
/* 1ABDFC 80399D7C 00000000 */   nop
.L80399D80:
/* 1ABE00 80399D80 3C03803B */  lui        $v1, %hi(D_803B3E34)
/* 1ABE04 80399D84 8C633E34 */  lw         $v1, %lo(D_803B3E34)($v1)
/* 1ABE08 80399D88 00031100 */  sll        $v0, $v1, 4
/* 1ABE0C 80399D8C 00431023 */  subu       $v0, $v0, $v1
/* 1ABE10 80399D90 8E03000C */  lw         $v1, 0xc($s0)
/* 1ABE14 80399D94 000210C0 */  sll        $v0, $v0, 3
/* 1ABE18 80399D98 10720010 */  beq        $v1, $s2, .L80399DDC
/* 1ABE1C 80399D9C 24510060 */   addiu     $s1, $v0, 0x60
/* 1ABE20 80399DA0 28620002 */  slti       $v0, $v1, 2
/* 1ABE24 80399DA4 50400005 */  beql       $v0, $zero, .L80399DBC
/* 1ABE28 80399DA8 24020002 */   addiu     $v0, $zero, 2
/* 1ABE2C 80399DAC 10600007 */  beqz       $v1, .L80399DCC
/* 1ABE30 80399DB0 00000000 */   nop
/* 1ABE34 80399DB4 080E6781 */  j          .L80399E04
/* 1ABE38 80399DB8 00000000 */   nop
.L80399DBC:
/* 1ABE3C 80399DBC 1062000B */  beq        $v1, $v0, .L80399DEC
/* 1ABE40 80399DC0 00000000 */   nop
/* 1ABE44 80399DC4 080E6781 */  j          .L80399E04
/* 1ABE48 80399DC8 00000000 */   nop
.L80399DCC:
/* 1ABE4C 80399DCC 0C032663 */  jal        func_800C998C
/* 1ABE50 80399DD0 02202021 */   addu      $a0, $s1, $zero
/* 1ABE54 80399DD4 080E677E */  j          .L80399DF8
/* 1ABE58 80399DD8 AE020014 */   sw        $v0, 0x14($s0)
.L80399DDC:
/* 1ABE5C 80399DDC 0C025E63 */  jal        func_8009798C
/* 1ABE60 80399DE0 02202021 */   addu      $a0, $s1, $zero
/* 1ABE64 80399DE4 080E677E */  j          .L80399DF8
/* 1ABE68 80399DE8 AE020014 */   sw        $v0, 0x14($s0)
.L80399DEC:
/* 1ABE6C 80399DEC 0C026127 */  jal        func_8009849C
/* 1ABE70 80399DF0 02202021 */   addu      $a0, $s1, $zero
/* 1ABE74 80399DF4 AE020014 */  sw         $v0, 0x14($s0)
.L80399DF8:
/* 1ABE78 80399DF8 00402021 */  addu       $a0, $v0, $zero
/* 1ABE7C 80399DFC 0C030134 */  jal        bzero
/* 1ABE80 80399E00 02202821 */   addu      $a1, $s1, $zero
.L80399E04:
/* 1ABE84 80399E04 8E040014 */  lw         $a0, 0x14($s0)
/* 1ABE88 80399E08 0C0E67B8 */  jal        func_80399EE0_1ABF60
/* 1ABE8C 80399E0C 00000000 */   nop
/* 1ABE90 80399E10 00001021 */  addu       $v0, $zero, $zero
/* 1ABE94 80399E14 24030001 */  addiu      $v1, $zero, 1
/* 1ABE98 80399E18 080E67B1 */  j          .L80399EC4
/* 1ABE9C 80399E1C A603001C */   sh        $v1, 0x1c($s0)
.L80399E20:
/* 1ABEA0 80399E20 8E040014 */  lw         $a0, 0x14($s0)
/* 1ABEA4 80399E24 0C0E68BE */  jal        func_8039A2F8_1AC378
/* 1ABEA8 80399E28 00000000 */   nop
/* 1ABEAC 80399E2C 10400002 */  beqz       $v0, .L80399E38
/* 1ABEB0 80399E30 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1ABEB4 80399E34 A602001C */  sh         $v0, 0x1c($s0)
.L80399E38:
/* 1ABEB8 80399E38 080E67B1 */  j          .L80399EC4
/* 1ABEBC 80399E3C 00001021 */   addu      $v0, $zero, $zero
.L80399E40:
/* 1ABEC0 80399E40 8E040014 */  lw         $a0, 0x14($s0)
/* 1ABEC4 80399E44 0C0E68BC */  jal        func_8039A2F0_1AC370
/* 1ABEC8 80399E48 00000000 */   nop
/* 1ABECC 80399E4C 8E03000C */  lw         $v1, 0xc($s0)
/* 1ABED0 80399E50 10720010 */  beq        $v1, $s2, .L80399E94
/* 1ABED4 80399E54 28620002 */   slti      $v0, $v1, 2
/* 1ABED8 80399E58 50400005 */  beql       $v0, $zero, .L80399E70
/* 1ABEDC 80399E5C 24020002 */   addiu     $v0, $zero, 2
/* 1ABEE0 80399E60 10600007 */  beqz       $v1, .L80399E80
/* 1ABEE4 80399E64 24020001 */   addiu     $v0, $zero, 1
/* 1ABEE8 80399E68 080E67B1 */  j          .L80399EC4
/* 1ABEEC 80399E6C 00000000 */   nop
.L80399E70:
/* 1ABEF0 80399E70 1062000D */  beq        $v1, $v0, .L80399EA8
/* 1ABEF4 80399E74 24020001 */   addiu     $v0, $zero, 1
/* 1ABEF8 80399E78 080E67B1 */  j          .L80399EC4
/* 1ABEFC 80399E7C 00000000 */   nop
.L80399E80:
/* 1ABF00 80399E80 8E040014 */  lw         $a0, 0x14($s0)
/* 1ABF04 80399E84 0C0326A1 */  jal        func_800C9A84
/* 1ABF08 80399E88 00000000 */   nop
/* 1ABF0C 80399E8C 080E67B1 */  j          .L80399EC4
/* 1ABF10 80399E90 24020001 */   addiu     $v0, $zero, 1
.L80399E94:
/* 1ABF14 80399E94 8E040014 */  lw         $a0, 0x14($s0)
/* 1ABF18 80399E98 0C025EC3 */  jal        func_80097B0C
/* 1ABF1C 80399E9C 00000000 */   nop
/* 1ABF20 80399EA0 080E67B1 */  j          .L80399EC4
/* 1ABF24 80399EA4 24020001 */   addiu     $v0, $zero, 1
.L80399EA8:
/* 1ABF28 80399EA8 8E040014 */  lw         $a0, 0x14($s0)
/* 1ABF2C 80399EAC 0C026187 */  jal        func_8009861C
/* 1ABF30 80399EB0 00000000 */   nop
/* 1ABF34 80399EB4 080E67B1 */  j          .L80399EC4
/* 1ABF38 80399EB8 24020001 */   addiu     $v0, $zero, 1
.L80399EBC:
/* 1ABF3C 80399EBC 0C032934 */  jal        func_800CA4D0
/* 1ABF40 80399EC0 00000000 */   nop
.L80399EC4:
/* 1ABF44 80399EC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1ABF48 80399EC8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1ABF4C 80399ECC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1ABF50 80399ED0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1ABF54 80399ED4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1ABF58 80399ED8 03E00008 */  jr         $ra
/* 1ABF5C 80399EDC 00000000 */   nop

glabel func_80399EE0_1ABF60
/* 1ABF60 80399EE0 3C013F80 */  lui        $at, 0x3f80
/* 1ABF64 80399EE4 44811000 */  mtc1       $at, $f2
/* 1ABF68 80399EE8 00000000 */  nop
/* 1ABF6C 80399EEC 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1ABF70 80399EF0 C4243EBC */  lwc1       $f4, %lo(D_803B3EBC)($at)
/* 1ABF74 80399EF4 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1ABF78 80399EF8 C4263EB0 */  lwc1       $f6, %lo(D_803B3EB0)($at)
/* 1ABF7C 80399EFC 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1ABF80 80399F00 C4283E2C */  lwc1       $f8, %lo(D_803B3E2C)($at)
/* 1ABF84 80399F04 44800000 */  mtc1       $zero, $f0
/* 1ABF88 80399F08 00000000 */  nop
/* 1ABF8C 80399F0C 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 1ABF90 80399F10 AFB1006C */  sw         $s1, 0x6c($sp)
/* 1ABF94 80399F14 00808821 */  addu       $s1, $a0, $zero
/* 1ABF98 80399F18 44050000 */  mfc1       $a1, $f0
/* 1ABF9C 80399F1C 00000000 */  nop
/* 1ABFA0 80399F20 AFBF0078 */  sw         $ra, 0x78($sp)
/* 1ABFA4 80399F24 AFB30074 */  sw         $s3, 0x74($sp)
/* 1ABFA8 80399F28 AFB20070 */  sw         $s2, 0x70($sp)
/* 1ABFAC 80399F2C AFB00068 */  sw         $s0, 0x68($sp)
/* 1ABFB0 80399F30 F7BA0098 */  sdc1       $f26, 0x98($sp)
/* 1ABFB4 80399F34 F7B80090 */  sdc1       $f24, 0x90($sp)
/* 1ABFB8 80399F38 F7B60088 */  sdc1       $f22, 0x88($sp)
/* 1ABFBC 80399F3C F7B40080 */  sdc1       $f20, 0x80($sp)
/* 1ABFC0 80399F40 00A03021 */  addu       $a2, $a1, $zero
/* 1ABFC4 80399F44 00A03821 */  addu       $a3, $a1, $zero
/* 1ABFC8 80399F48 E7A20010 */  swc1       $f2, 0x10($sp)
/* 1ABFCC 80399F4C E7A40014 */  swc1       $f4, 0x14($sp)
/* 1ABFD0 80399F50 E7A60018 */  swc1       $f6, 0x18($sp)
/* 1ABFD4 80399F54 0C02FD0E */  jal        func_800BF438
/* 1ABFD8 80399F58 E7A8001C */   swc1      $f8, 0x1c($sp)
/* 1ABFDC 80399F5C 3C02803B */  lui        $v0, %hi(D_803B3EB8)
/* 1ABFE0 80399F60 8C423EB8 */  lw         $v0, %lo(D_803B3EB8)($v0)
/* 1ABFE4 80399F64 3C03803B */  lui        $v1, %hi(D_803B3E20)
/* 1ABFE8 80399F68 8C633E20 */  lw         $v1, %lo(D_803B3E20)($v1)
/* 1ABFEC 80399F6C 00430018 */  mult       $v0, $v1
/* 1ABFF0 80399F70 00001012 */  mflo       $v0
/* 1ABFF4 80399F74 00000000 */  nop
/* 1ABFF8 80399F78 00000000 */  nop
/* 1ABFFC 80399F7C 3C014120 */  lui        $at, 0x4120
/* 1AC000 80399F80 44810000 */  mtc1       $at, $f0
/* 1AC004 80399F84 00000000 */  nop
/* 1AC008 80399F88 44821000 */  mtc1       $v0, $f2
/* 1AC00C 80399F8C 00000000 */  nop
/* 1AC010 80399F90 468010A0 */  cvt.s.w    $f2, $f2
/* 1AC014 80399F94 46001083 */  div.s      $f2, $f2, $f0
/* 1AC018 80399F98 3C04803B */  lui        $a0, %hi(D_803B3E34)
/* 1AC01C 80399F9C 8C843E34 */  lw         $a0, %lo(D_803B3E34)($a0)
/* 1AC020 80399FA0 3C05803B */  lui        $a1, %hi(D_803B3EAC)
/* 1AC024 80399FA4 8CA53EAC */  lw         $a1, %lo(D_803B3EAC)($a1)
/* 1AC028 80399FA8 3C03803B */  lui        $v1, %hi(D_803B3EA8)
/* 1AC02C 80399FAC 8C633EA8 */  lw         $v1, %lo(D_803B3EA8)($v1)
/* 1AC030 80399FB0 AE240050 */  sw         $a0, 0x50($s1)
/* 1AC034 80399FB4 A6230040 */  sh         $v1, 0x40($s1)
/* 1AC038 80399FB8 26220060 */  addiu      $v0, $s1, 0x60
/* 1AC03C 80399FBC AE220054 */  sw         $v0, 0x54($s1)
/* 1AC040 80399FC0 24020001 */  addiu      $v0, $zero, 1
/* 1AC044 80399FC4 10A20018 */  beq        $a1, $v0, .L8039A028
/* 1AC048 80399FC8 E6220044 */   swc1      $f2, 0x44($s1)
/* 1AC04C 80399FCC 28A20002 */  slti       $v0, $a1, 2
/* 1AC050 80399FD0 14400015 */  bnez       $v0, .L8039A028
/* 1AC054 80399FD4 24020002 */   addiu     $v0, $zero, 2
/* 1AC058 80399FD8 10A20005 */  beq        $a1, $v0, .L80399FF0
/* 1AC05C 80399FDC 24020003 */   addiu     $v0, $zero, 3
/* 1AC060 80399FE0 10A2000A */  beq        $a1, $v0, .L8039A00C
/* 1AC064 80399FE4 00000000 */   nop
/* 1AC068 80399FE8 080E680A */  j          .L8039A028
/* 1AC06C 80399FEC 00000000 */   nop
.L80399FF0:
/* 1AC070 80399FF0 3C02803A */  lui        $v0, %hi(D_803A2068_1B40E8)
/* 1AC074 80399FF4 24422068 */  addiu      $v0, $v0, %lo(D_803A2068_1B40E8)
/* 1AC078 80399FF8 AE220048 */  sw         $v0, 0x48($s1)
/* 1AC07C 80399FFC 3C02803A */  lui        $v0, %hi(D_803A2288_1B4308)
/* 1AC080 8039A000 24422288 */  addiu      $v0, $v0, %lo(D_803A2288_1B4308)
/* 1AC084 8039A004 080E6810 */  j          .L8039A040
/* 1AC088 8039A008 AE22004C */   sw        $v0, 0x4c($s1)
.L8039A00C:
/* 1AC08C 8039A00C 3C02803A */  lui        $v0, %hi(D_803A2068_1B40E8)
/* 1AC090 8039A010 24422068 */  addiu      $v0, $v0, %lo(D_803A2068_1B40E8)
/* 1AC094 8039A014 AE220048 */  sw         $v0, 0x48($s1)
/* 1AC098 8039A018 3C02803A */  lui        $v0, %hi(D_803A2288_1B4308)
/* 1AC09C 8039A01C 24422288 */  addiu      $v0, $v0, %lo(D_803A2288_1B4308)
/* 1AC0A0 8039A020 080E6810 */  j          .L8039A040
/* 1AC0A4 8039A024 AE22004C */   sw        $v0, 0x4c($s1)
.L8039A028:
/* 1AC0A8 8039A028 3C02803A */  lui        $v0, %hi(D_803A2048_1B40C8)
/* 1AC0AC 8039A02C 24422048 */  addiu      $v0, $v0, %lo(D_803A2048_1B40C8)
/* 1AC0B0 8039A030 AE220048 */  sw         $v0, 0x48($s1)
/* 1AC0B4 8039A034 3C02803A */  lui        $v0, %hi(D_803A2088_1B4108)
/* 1AC0B8 8039A038 24422088 */  addiu      $v0, $v0, %lo(D_803A2088_1B4108)
/* 1AC0BC 8039A03C AE22004C */  sw         $v0, 0x4c($s1)
.L8039A040:
/* 1AC0C0 8039A040 3C03803B */  lui        $v1, %hi(D_803B3E5C)
/* 1AC0C4 8039A044 8C633E5C */  lw         $v1, %lo(D_803B3E5C)($v1)
/* 1AC0C8 8039A048 3C02803B */  lui        $v0, %hi(D_803B3E20)
/* 1AC0CC 8039A04C 8C423E20 */  lw         $v0, %lo(D_803B3E20)($v0)
/* 1AC0D0 8039A050 00620018 */  mult       $v1, $v0
/* 1AC0D4 8039A054 00001812 */  mflo       $v1
/* 1AC0D8 8039A058 00000000 */  nop
/* 1AC0DC 8039A05C 00000000 */  nop
/* 1AC0E0 8039A060 8E220050 */  lw         $v0, 0x50($s1)
/* 1AC0E4 8039A064 4483B000 */  mtc1       $v1, $f22
/* 1AC0E8 8039A068 00000000 */  nop
/* 1AC0EC 8039A06C 4680B5A0 */  cvt.s.w    $f22, $f22
/* 1AC0F0 8039A070 8E230054 */  lw         $v1, 0x54($s1)
/* 1AC0F4 8039A074 18400092 */  blez       $v0, .L8039A2C0
/* 1AC0F8 8039A078 00009021 */   addu      $s2, $zero, $zero
/* 1AC0FC 8039A07C 3C014F00 */  lui        $at, 0x4f00
/* 1AC100 8039A080 4481C000 */  mtc1       $at, $f24
/* 1AC104 8039A084 00000000 */  nop
/* 1AC108 8039A088 3C138000 */  lui        $s3, 0x8000
/* 1AC10C 8039A08C 3C0142C8 */  lui        $at, 0x42c8
/* 1AC110 8039A090 4481D000 */  mtc1       $at, $f26
/* 1AC114 8039A094 00000000 */  nop
/* 1AC118 8039A098 2470006C */  addiu      $s0, $v1, 0x6c
.L8039A09C:
/* 1AC11C 8039A09C 0C02591A */  jal        func_80096468
/* 1AC120 8039A0A0 24040168 */   addiu     $a0, $zero, 0x168
/* 1AC124 8039A0A4 3C01803B */  lui        $at, %hi(D_803A8C50_1BACD0)
/* 1AC128 8039A0A8 D4208C50 */  ldc1       $f0, %lo(D_803A8C50_1BACD0)($at)
/* 1AC12C 8039A0AC 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AC130 8039A0B0 4482A000 */  mtc1       $v0, $f20
/* 1AC134 8039A0B4 00000000 */  nop
/* 1AC138 8039A0B8 4680A521 */  cvt.d.w    $f20, $f20
/* 1AC13C 8039A0BC 4620A502 */  mul.d      $f20, $f20, $f0
/* 1AC140 8039A0C0 4620A520 */  cvt.s.d    $f20, $f20
/* 1AC144 8039A0C4 0C02F784 */  jal        func_800BDE10
/* 1AC148 8039A0C8 4600A306 */   mov.s     $f12, $f20
/* 1AC14C 8039A0CC 3C01803B */  lui        $at, %hi(D_803B3E60)
/* 1AC150 8039A0D0 C4223E60 */  lwc1       $f2, %lo(D_803B3E60)($at)
/* 1AC154 8039A0D4 468010A0 */  cvt.s.w    $f2, $f2
/* 1AC158 8039A0D8 46020002 */  mul.s      $f0, $f0, $f2
/* 1AC15C 8039A0DC 4600A306 */  mov.s      $f12, $f20
/* 1AC160 8039A0E0 AE00FFD8 */  sw         $zero, -0x28($s0)
/* 1AC164 8039A0E4 0C02FF68 */  jal        func_800BFDA0
/* 1AC168 8039A0E8 E600FFD4 */   swc1      $f0, -0x2c($s0)
/* 1AC16C 8039A0EC 3C01803B */  lui        $at, %hi(D_803B3E60)
/* 1AC170 8039A0F0 C4223E60 */  lwc1       $f2, %lo(D_803B3E60)($at)
/* 1AC174 8039A0F4 468010A0 */  cvt.s.w    $f2, $f2
/* 1AC178 8039A0F8 46020002 */  mul.s      $f0, $f0, $f2
/* 1AC17C 8039A0FC 4616C03E */  c.le.s     $f24, $f22
/* 1AC180 8039A100 00000000 */  nop
/* 1AC184 8039A104 00000000 */  nop
/* 1AC188 8039A108 45010006 */  bc1t       .L8039A124
/* 1AC18C 8039A10C E600FFDC */   swc1      $f0, -0x24($s0)
/* 1AC190 8039A110 4600B00D */  trunc.w.s  $f0, $f22
/* 1AC194 8039A114 44040000 */  mfc1       $a0, $f0
/* 1AC198 8039A118 00000000 */  nop
/* 1AC19C 8039A11C 080E684E */  j          .L8039A138
/* 1AC1A0 8039A120 00000000 */   nop
.L8039A124:
/* 1AC1A4 8039A124 4618B001 */  sub.s      $f0, $f22, $f24
/* 1AC1A8 8039A128 4600008D */  trunc.w.s  $f2, $f0
/* 1AC1AC 8039A12C 44041000 */  mfc1       $a0, $f2
/* 1AC1B0 8039A130 00000000 */  nop
/* 1AC1B4 8039A134 00932025 */  or         $a0, $a0, $s3
.L8039A138:
/* 1AC1B8 8039A138 0C02591A */  jal        func_80096468
/* 1AC1BC 8039A13C 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1AC1C0 8039A140 0C02592F */  jal        func_800964BC
/* 1AC1C4 8039A144 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AC1C8 8039A148 44820000 */  mtc1       $v0, $f0
/* 1AC1CC 8039A14C 00000000 */  nop
/* 1AC1D0 8039A150 46800020 */  cvt.s.w    $f0, $f0
/* 1AC1D4 8039A154 461A0003 */  div.s      $f0, $f0, $f26
/* 1AC1D8 8039A158 4616C03E */  c.le.s     $f24, $f22
/* 1AC1DC 8039A15C 00000000 */  nop
/* 1AC1E0 8039A160 00000000 */  nop
/* 1AC1E4 8039A164 45010006 */  bc1t       .L8039A180
/* 1AC1E8 8039A168 E600FFE0 */   swc1      $f0, -0x20($s0)
/* 1AC1EC 8039A16C 4600B00D */  trunc.w.s  $f0, $f22
/* 1AC1F0 8039A170 44040000 */  mfc1       $a0, $f0
/* 1AC1F4 8039A174 00000000 */  nop
/* 1AC1F8 8039A178 080E6865 */  j          .L8039A194
/* 1AC1FC 8039A17C 00000000 */   nop
.L8039A180:
/* 1AC200 8039A180 4618B001 */  sub.s      $f0, $f22, $f24
/* 1AC204 8039A184 4600008D */  trunc.w.s  $f2, $f0
/* 1AC208 8039A188 44041000 */  mfc1       $a0, $f2
/* 1AC20C 8039A18C 00000000 */  nop
/* 1AC210 8039A190 00932025 */  or         $a0, $a0, $s3
.L8039A194:
/* 1AC214 8039A194 0C02591A */  jal        func_80096468
/* 1AC218 8039A198 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1AC21C 8039A19C 3C014120 */  lui        $at, 0x4120
/* 1AC220 8039A1A0 44810000 */  mtc1       $at, $f0
/* 1AC224 8039A1A4 00000000 */  nop
/* 1AC228 8039A1A8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AC22C 8039A1AC 44821000 */  mtc1       $v0, $f2
/* 1AC230 8039A1B0 00000000 */  nop
/* 1AC234 8039A1B4 468010A0 */  cvt.s.w    $f2, $f2
/* 1AC238 8039A1B8 46001083 */  div.s      $f2, $f2, $f0
/* 1AC23C 8039A1BC 4616C03E */  c.le.s     $f24, $f22
/* 1AC240 8039A1C0 00000000 */  nop
/* 1AC244 8039A1C4 00000000 */  nop
/* 1AC248 8039A1C8 45010006 */  bc1t       .L8039A1E4
/* 1AC24C 8039A1CC E602FFE4 */   swc1      $f2, -0x1c($s0)
/* 1AC250 8039A1D0 4600B00D */  trunc.w.s  $f0, $f22
/* 1AC254 8039A1D4 44040000 */  mfc1       $a0, $f0
/* 1AC258 8039A1D8 00000000 */  nop
/* 1AC25C 8039A1DC 080E687E */  j          .L8039A1F8
/* 1AC260 8039A1E0 00000000 */   nop
.L8039A1E4:
/* 1AC264 8039A1E4 4618B001 */  sub.s      $f0, $f22, $f24
/* 1AC268 8039A1E8 4600008D */  trunc.w.s  $f2, $f0
/* 1AC26C 8039A1EC 44041000 */  mfc1       $a0, $f2
/* 1AC270 8039A1F0 00000000 */  nop
/* 1AC274 8039A1F4 00932025 */  or         $a0, $a0, $s3
.L8039A1F8:
/* 1AC278 8039A1F8 0C02591A */  jal        func_80096468
/* 1AC27C 8039A1FC 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1AC280 8039A200 0C02592F */  jal        func_800964BC
/* 1AC284 8039A204 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AC288 8039A208 44820000 */  mtc1       $v0, $f0
/* 1AC28C 8039A20C 00000000 */  nop
/* 1AC290 8039A210 46800020 */  cvt.s.w    $f0, $f0
/* 1AC294 8039A214 461A0003 */  div.s      $f0, $f0, $f26
/* 1AC298 8039A218 24040168 */  addiu      $a0, $zero, 0x168
/* 1AC29C 8039A21C A600FFEC */  sh         $zero, -0x14($s0)
/* 1AC2A0 8039A220 0C02591A */  jal        func_80096468
/* 1AC2A4 8039A224 E600FFE8 */   swc1      $f0, -0x18($s0)
/* 1AC2A8 8039A228 24040004 */  addiu      $a0, $zero, 4
/* 1AC2AC 8039A22C A602FFEE */  sh         $v0, -0x12($s0)
/* 1AC2B0 8039A230 0C02591A */  jal        func_80096468
/* 1AC2B4 8039A234 A600FFF0 */   sh        $zero, -0x10($s0)
/* 1AC2B8 8039A238 0C02592F */  jal        func_800964BC
/* 1AC2BC 8039A23C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AC2C0 8039A240 24040004 */  addiu      $a0, $zero, 4
/* 1AC2C4 8039A244 A202FFF2 */  sb         $v0, -0xe($s0)
/* 1AC2C8 8039A248 0C02591A */  jal        func_80096468
/* 1AC2CC 8039A24C A200FFF3 */   sb        $zero, -0xd($s0)
/* 1AC2D0 8039A250 0C02592F */  jal        func_800964BC
/* 1AC2D4 8039A254 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AC2D8 8039A258 3C0143FA */  lui        $at, 0x43fa
/* 1AC2DC 8039A25C 44811000 */  mtc1       $at, $f2
/* 1AC2E0 8039A260 00000000 */  nop
/* 1AC2E4 8039A264 A202FFF4 */  sb         $v0, -0xc($s0)
/* 1AC2E8 8039A268 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AC2EC 8039A26C C4203E20 */  lwc1       $f0, %lo(D_803B3E20)($at)
/* 1AC2F0 8039A270 46800020 */  cvt.s.w    $f0, $f0
/* 1AC2F4 8039A274 46020003 */  div.s      $f0, $f0, $f2
/* 1AC2F8 8039A278 24040002 */  addiu      $a0, $zero, 2
/* 1AC2FC 8039A27C 24020001 */  addiu      $v0, $zero, 1
/* 1AC300 8039A280 A202FFFC */  sb         $v0, -4($s0)
/* 1AC304 8039A284 0C02591A */  jal        func_80096468
/* 1AC308 8039A288 E600FFF8 */   swc1      $f0, -8($s0)
/* 1AC30C 8039A28C 3C03803A */  lui        $v1, %hi(D_803A2840_1B48C0)
/* 1AC310 8039A290 24632840 */  addiu      $v1, $v1, %lo(D_803A2840_1B48C0)
/* 1AC314 8039A294 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1AC318 8039A298 50400004 */  beql       $v0, $zero, .L8039A2AC
/* 1AC31C 8039A29C AE030000 */   sw        $v1, ($s0)
/* 1AC320 8039A2A0 3C03803A */  lui        $v1, %hi(D_803A27E8_1B4868)
/* 1AC324 8039A2A4 246327E8 */  addiu      $v1, $v1, %lo(D_803A27E8_1B4868)
/* 1AC328 8039A2A8 AE030000 */  sw         $v1, ($s0)
.L8039A2AC:
/* 1AC32C 8039A2AC 8E220050 */  lw         $v0, 0x50($s1)
/* 1AC330 8039A2B0 26520001 */  addiu      $s2, $s2, 1
/* 1AC334 8039A2B4 0242102A */  slt        $v0, $s2, $v0
/* 1AC338 8039A2B8 1440FF78 */  bnez       $v0, .L8039A09C
/* 1AC33C 8039A2BC 26100078 */   addiu     $s0, $s0, 0x78
.L8039A2C0:
/* 1AC340 8039A2C0 8FBF0078 */  lw         $ra, 0x78($sp)
/* 1AC344 8039A2C4 8FB30074 */  lw         $s3, 0x74($sp)
/* 1AC348 8039A2C8 8FB20070 */  lw         $s2, 0x70($sp)
/* 1AC34C 8039A2CC 8FB1006C */  lw         $s1, 0x6c($sp)
/* 1AC350 8039A2D0 8FB00068 */  lw         $s0, 0x68($sp)
/* 1AC354 8039A2D4 D7BA0098 */  ldc1       $f26, 0x98($sp)
/* 1AC358 8039A2D8 D7B80090 */  ldc1       $f24, 0x90($sp)
/* 1AC35C 8039A2DC D7B60088 */  ldc1       $f22, 0x88($sp)
/* 1AC360 8039A2E0 D7B40080 */  ldc1       $f20, 0x80($sp)
/* 1AC364 8039A2E4 27BD00A0 */  addiu      $sp, $sp, 0xa0
/* 1AC368 8039A2E8 03E00008 */  jr         $ra
/* 1AC36C 8039A2EC 00000000 */   nop

glabel func_8039A2F0_1AC370
/* 1AC370 8039A2F0 03E00008 */  jr         $ra
/* 1AC374 8039A2F4 00000000 */   nop

glabel func_8039A2F8_1AC378
/* 1AC378 8039A2F8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1AC37C 8039A2FC AFB40040 */  sw         $s4, 0x40($sp)
/* 1AC380 8039A300 0080A021 */  addu       $s4, $a0, $zero
/* 1AC384 8039A304 AFBF0044 */  sw         $ra, 0x44($sp)
/* 1AC388 8039A308 AFB3003C */  sw         $s3, 0x3c($sp)
/* 1AC38C 8039A30C AFB20038 */  sw         $s2, 0x38($sp)
/* 1AC390 8039A310 AFB10034 */  sw         $s1, 0x34($sp)
/* 1AC394 8039A314 AFB00030 */  sw         $s0, 0x30($sp)
/* 1AC398 8039A318 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 1AC39C 8039A31C 86820040 */  lh         $v0, 0x40($s4)
/* 1AC3A0 8039A320 1040010F */  beqz       $v0, .L8039A760
/* 1AC3A4 8039A324 00401821 */   addu      $v1, $v0, $zero
/* 1AC3A8 8039A328 2463FFFF */  addiu      $v1, $v1, -1
/* 1AC3AC 8039A32C 3C0BD9FD */  lui        $t3, 0xd9fd
/* 1AC3B0 8039A330 356BFFFF */  ori        $t3, $t3, 0xffff
/* 1AC3B4 8039A334 3C0CD9FF */  lui        $t4, 0xd9ff
/* 1AC3B8 8039A338 358CFFFF */  ori        $t4, $t4, 0xffff
/* 1AC3BC 8039A33C 3C090020 */  lui        $t1, 0x20
/* 1AC3C0 8039A340 35290405 */  ori        $t1, $t1, 0x405
/* 1AC3C4 8039A344 3C06E300 */  lui        $a2, 0xe300
/* 1AC3C8 8039A348 34C61201 */  ori        $a2, $a2, 0x1201
/* 1AC3CC 8039A34C 3C0AE200 */  lui        $t2, 0xe200
/* 1AC3D0 8039A350 354A001C */  ori        $t2, $t2, 0x1c
/* 1AC3D4 8039A354 3C070055 */  lui        $a3, 0x55
/* 1AC3D8 8039A358 34E72230 */  ori        $a3, $a3, 0x2230
/* 1AC3DC 8039A35C 3C05FCFF */  lui        $a1, 0xfcff
/* 1AC3E0 8039A360 34A5FFFF */  ori        $a1, $a1, 0xffff
/* 1AC3E4 8039A364 3C04FFFC */  lui        $a0, 0xfffc
/* 1AC3E8 8039A368 3484F279 */  ori        $a0, $a0, 0xf279
/* 1AC3EC 8039A36C 3C08E300 */  lui        $t0, 0xe300
/* 1AC3F0 8039A370 35081001 */  ori        $t0, $t0, 0x1001
/* 1AC3F4 8039A374 3C0DF500 */  lui        $t5, 0xf500
/* 1AC3F8 8039A378 35AD0100 */  ori        $t5, $t5, 0x100
/* 1AC3FC 8039A37C 3C0E0703 */  lui        $t6, 0x703
/* 1AC400 8039A380 35CEC000 */  ori        $t6, $t6, 0xc000
/* 1AC404 8039A384 3C0F0701 */  lui        $t7, 0x701
/* 1AC408 8039A388 35EF4050 */  ori        $t7, $t7, 0x4050
/* 1AC40C 8039A38C 3C10070F */  lui        $s0, 0x70f
/* 1AC410 8039A390 3610F400 */  ori        $s0, $s0, 0xf400
/* 1AC414 8039A394 3C12F540 */  lui        $s2, 0xf540
/* 1AC418 8039A398 36520400 */  ori        $s2, $s2, 0x400
/* 1AC41C 8039A39C 3C110001 */  lui        $s1, 1
/* 1AC420 8039A3A0 36314050 */  ori        $s1, $s1, 0x4050
/* 1AC424 8039A3A4 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AC428 8039A3A8 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AC42C 8039A3AC 3C130007 */  lui        $s3, 7
/* 1AC430 8039A3B0 3673C07C */  ori        $s3, $s3, 0xc07c
/* 1AC434 8039A3B4 A6830040 */  sh         $v1, 0x40($s4)
/* 1AC438 8039A3B8 3C03DE00 */  lui        $v1, 0xde00
/* 1AC43C 8039A3BC AC430000 */  sw         $v1, ($v0)
/* 1AC440 8039A3C0 3C03800D */  lui        $v1, %hi(D_800D3D70)
/* 1AC444 8039A3C4 24633D70 */  addiu      $v1, $v1, %lo(D_800D3D70)
/* 1AC448 8039A3C8 AC430004 */  sw         $v1, 4($v0)
/* 1AC44C 8039A3CC 24032000 */  addiu      $v1, $zero, 0x2000
/* 1AC450 8039A3D0 AC450028 */  sw         $a1, 0x28($v0)
/* 1AC454 8039A3D4 3C05E700 */  lui        $a1, 0xe700
/* 1AC458 8039A3D8 AC43001C */  sw         $v1, 0x1c($v0)
/* 1AC45C 8039A3DC 34038000 */  ori        $v1, $zero, 0x8000
/* 1AC460 8039A3E0 AC43003C */  sw         $v1, 0x3c($v0)
/* 1AC464 8039A3E4 3C03FD10 */  lui        $v1, 0xfd10
/* 1AC468 8039A3E8 AC4B0008 */  sw         $t3, 8($v0)
/* 1AC46C 8039A3EC AC40000C */  sw         $zero, 0xc($v0)
/* 1AC470 8039A3F0 AC4C0010 */  sw         $t4, 0x10($v0)
/* 1AC474 8039A3F4 AC490014 */  sw         $t1, 0x14($v0)
/* 1AC478 8039A3F8 AC460018 */  sw         $a2, 0x18($v0)
/* 1AC47C 8039A3FC AC4A0020 */  sw         $t2, 0x20($v0)
/* 1AC480 8039A400 AC470024 */  sw         $a3, 0x24($v0)
/* 1AC484 8039A404 AC44002C */  sw         $a0, 0x2c($v0)
/* 1AC488 8039A408 AC450030 */  sw         $a1, 0x30($v0)
/* 1AC48C 8039A40C AC400034 */  sw         $zero, 0x34($v0)
/* 1AC490 8039A410 AC480038 */  sw         $t0, 0x38($v0)
/* 1AC494 8039A414 AC430040 */  sw         $v1, 0x40($v0)
/* 1AC498 8039A418 8E840048 */  lw         $a0, 0x48($s4)
/* 1AC49C 8039A41C 3C07DA38 */  lui        $a3, 0xda38
/* 1AC4A0 8039A420 24430008 */  addiu      $v1, $v0, 8
/* 1AC4A4 8039A424 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4A8 8039A428 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4AC 8039A42C 24430010 */  addiu      $v1, $v0, 0x10
/* 1AC4B0 8039A430 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4B4 8039A434 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4B8 8039A438 24430018 */  addiu      $v1, $v0, 0x18
/* 1AC4BC 8039A43C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4C0 8039A440 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4C4 8039A444 24430020 */  addiu      $v1, $v0, 0x20
/* 1AC4C8 8039A448 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4CC 8039A44C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4D0 8039A450 24430028 */  addiu      $v1, $v0, 0x28
/* 1AC4D4 8039A454 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4D8 8039A458 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4DC 8039A45C 24430030 */  addiu      $v1, $v0, 0x30
/* 1AC4E0 8039A460 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4E4 8039A464 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4E8 8039A468 24430038 */  addiu      $v1, $v0, 0x38
/* 1AC4EC 8039A46C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4F0 8039A470 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC4F4 8039A474 24430040 */  addiu      $v1, $v0, 0x40
/* 1AC4F8 8039A478 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC4FC 8039A47C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC500 8039A480 24430048 */  addiu      $v1, $v0, 0x48
/* 1AC504 8039A484 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC508 8039A488 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC50C 8039A48C 24430050 */  addiu      $v1, $v0, 0x50
/* 1AC510 8039A490 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC514 8039A494 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC518 8039A498 3C03E800 */  lui        $v1, 0xe800
/* 1AC51C 8039A49C AC430048 */  sw         $v1, 0x48($v0)
/* 1AC520 8039A4A0 24430058 */  addiu      $v1, $v0, 0x58
/* 1AC524 8039A4A4 AC40004C */  sw         $zero, 0x4c($v0)
/* 1AC528 8039A4A8 AC440044 */  sw         $a0, 0x44($v0)
/* 1AC52C 8039A4AC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC530 8039A4B0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC534 8039A4B4 3C030700 */  lui        $v1, 0x700
/* 1AC538 8039A4B8 3C04E600 */  lui        $a0, 0xe600
/* 1AC53C 8039A4BC AC430054 */  sw         $v1, 0x54($v0)
/* 1AC540 8039A4C0 3C03F000 */  lui        $v1, 0xf000
/* 1AC544 8039A4C4 AC430060 */  sw         $v1, 0x60($v0)
/* 1AC548 8039A4C8 3C03FD50 */  lui        $v1, 0xfd50
/* 1AC54C 8039A4CC AC4D0050 */  sw         $t5, 0x50($v0)
/* 1AC550 8039A4D0 AC440058 */  sw         $a0, 0x58($v0)
/* 1AC554 8039A4D4 AC40005C */  sw         $zero, 0x5c($v0)
/* 1AC558 8039A4D8 AC4E0064 */  sw         $t6, 0x64($v0)
/* 1AC55C 8039A4DC AC450068 */  sw         $a1, 0x68($v0)
/* 1AC560 8039A4E0 AC40006C */  sw         $zero, 0x6c($v0)
/* 1AC564 8039A4E4 AC430070 */  sw         $v1, 0x70($v0)
/* 1AC568 8039A4E8 8E86004C */  lw         $a2, 0x4c($s4)
/* 1AC56C 8039A4EC 34E70003 */  ori        $a3, $a3, 3
/* 1AC570 8039A4F0 24430060 */  addiu      $v1, $v0, 0x60
/* 1AC574 8039A4F4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC578 8039A4F8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC57C 8039A4FC 24430068 */  addiu      $v1, $v0, 0x68
/* 1AC580 8039A500 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC584 8039A504 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC588 8039A508 24430070 */  addiu      $v1, $v0, 0x70
/* 1AC58C 8039A50C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC590 8039A510 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC594 8039A514 24430078 */  addiu      $v1, $v0, 0x78
/* 1AC598 8039A518 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC59C 8039A51C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5A0 8039A520 24430080 */  addiu      $v1, $v0, 0x80
/* 1AC5A4 8039A524 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC5A8 8039A528 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5AC 8039A52C 3C03F550 */  lui        $v1, 0xf550
/* 1AC5B0 8039A530 AC430078 */  sw         $v1, 0x78($v0)
/* 1AC5B4 8039A534 24430088 */  addiu      $v1, $v0, 0x88
/* 1AC5B8 8039A538 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC5BC 8039A53C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5C0 8039A540 24430090 */  addiu      $v1, $v0, 0x90
/* 1AC5C4 8039A544 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC5C8 8039A548 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5CC 8039A54C 3C03F300 */  lui        $v1, 0xf300
/* 1AC5D0 8039A550 AC430088 */  sw         $v1, 0x88($v0)
/* 1AC5D4 8039A554 24430098 */  addiu      $v1, $v0, 0x98
/* 1AC5D8 8039A558 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC5DC 8039A55C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5E0 8039A560 244300A0 */  addiu      $v1, $v0, 0xa0
/* 1AC5E4 8039A564 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC5E8 8039A568 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5EC 8039A56C 244300A8 */  addiu      $v1, $v0, 0xa8
/* 1AC5F0 8039A570 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC5F4 8039A574 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC5F8 8039A578 3C03F200 */  lui        $v1, 0xf200
/* 1AC5FC 8039A57C AC4300A0 */  sw         $v1, 0xa0($v0)
/* 1AC600 8039A580 244300B0 */  addiu      $v1, $v0, 0xb0
/* 1AC604 8039A584 AC4F007C */  sw         $t7, 0x7c($v0)
/* 1AC608 8039A588 AC440080 */  sw         $a0, 0x80($v0)
/* 1AC60C 8039A58C AC400084 */  sw         $zero, 0x84($v0)
/* 1AC610 8039A590 AC50008C */  sw         $s0, 0x8c($v0)
/* 1AC614 8039A594 AC450090 */  sw         $a1, 0x90($v0)
/* 1AC618 8039A598 AC400094 */  sw         $zero, 0x94($v0)
/* 1AC61C 8039A59C AC520098 */  sw         $s2, 0x98($v0)
/* 1AC620 8039A5A0 AC51009C */  sw         $s1, 0x9c($v0)
/* 1AC624 8039A5A4 AC5300A4 */  sw         $s3, 0xa4($v0)
/* 1AC628 8039A5A8 AC460074 */  sw         $a2, 0x74($v0)
/* 1AC62C 8039A5AC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC630 8039A5B0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC634 8039A5B4 AC4700A8 */  sw         $a3, 0xa8($v0)
/* 1AC638 8039A5B8 AC5400AC */  sw         $s4, 0xac($v0)
/* 1AC63C 8039A5BC 8E820050 */  lw         $v0, 0x50($s4)
/* 1AC640 8039A5C0 8E910054 */  lw         $s1, 0x54($s4)
/* 1AC644 8039A5C4 18400064 */  blez       $v0, .L8039A758
/* 1AC648 8039A5C8 00009021 */   addu      $s2, $zero, $zero
/* 1AC64C 8039A5CC 4480A000 */  mtc1       $zero, $f20
/* 1AC650 8039A5D0 00000000 */  nop
/* 1AC654 8039A5D4 26300068 */  addiu      $s0, $s1, 0x68
.L8039A5D8:
/* 1AC658 8039A5D8 C600FFFC */  lwc1       $f0, -4($s0)
/* 1AC65C 8039A5DC 8602FFF0 */  lh         $v0, -0x10($s0)
/* 1AC660 8039A5E0 8603FFF2 */  lh         $v1, -0xe($s0)
/* 1AC664 8039A5E4 8607FFF4 */  lh         $a3, -0xc($s0)
/* 1AC668 8039A5E8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AC66C 8039A5EC C600FFD8 */  lwc1       $f0, -0x28($s0)
/* 1AC670 8039A5F0 44825000 */  mtc1       $v0, $f10
/* 1AC674 8039A5F4 00000000 */  nop
/* 1AC678 8039A5F8 468052A0 */  cvt.s.w    $f10, $f10
/* 1AC67C 8039A5FC 44055000 */  mfc1       $a1, $f10
/* 1AC680 8039A600 00000000 */  nop
/* 1AC684 8039A604 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1AC688 8039A608 C600FFDC */  lwc1       $f0, -0x24($s0)
/* 1AC68C 8039A60C 44835000 */  mtc1       $v1, $f10
/* 1AC690 8039A610 00000000 */  nop
/* 1AC694 8039A614 468052A0 */  cvt.s.w    $f10, $f10
/* 1AC698 8039A618 44065000 */  mfc1       $a2, $f10
/* 1AC69C 8039A61C 00000000 */  nop
/* 1AC6A0 8039A620 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1AC6A4 8039A624 C600FFE0 */  lwc1       $f0, -0x20($s0)
/* 1AC6A8 8039A628 44875000 */  mtc1       $a3, $f10
/* 1AC6AC 8039A62C 00000000 */  nop
/* 1AC6B0 8039A630 468052A0 */  cvt.s.w    $f10, $f10
/* 1AC6B4 8039A634 44075000 */  mfc1       $a3, $f10
/* 1AC6B8 8039A638 00000000 */  nop
/* 1AC6BC 8039A63C 02202021 */  addu       $a0, $s1, $zero
/* 1AC6C0 8039A640 0C02FD0E */  jal        func_800BF438
/* 1AC6C4 8039A644 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 1AC6C8 8039A648 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1AC6CC 8039A64C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1AC6D0 8039A650 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1AC6D4 8039A654 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1AC6D8 8039A658 3C02DA38 */  lui        $v0, 0xda38
/* 1AC6DC 8039A65C AC620000 */  sw         $v0, ($v1)
/* 1AC6E0 8039A660 3C02DE00 */  lui        $v0, 0xde00
/* 1AC6E4 8039A664 AC710004 */  sw         $s1, 4($v1)
/* 1AC6E8 8039A668 AC620008 */  sw         $v0, 8($v1)
/* 1AC6EC 8039A66C 8E020004 */  lw         $v0, 4($s0)
/* 1AC6F0 8039A670 AC62000C */  sw         $v0, 0xc($v1)
/* 1AC6F4 8039A674 C602FFD8 */  lwc1       $f2, -0x28($s0)
/* 1AC6F8 8039A678 24620008 */  addiu      $v0, $v1, 8
/* 1AC6FC 8039A67C 24630010 */  addiu      $v1, $v1, 0x10
/* 1AC700 8039A680 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC704 8039A684 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AC708 8039A688 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AC70C 8039A68C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AC710 8039A690 46001200 */  add.s      $f8, $f2, $f0
/* 1AC714 8039A694 92020000 */  lbu        $v0, ($s0)
/* 1AC718 8039A698 10400029 */  beqz       $v0, .L8039A740
/* 1AC71C 8039A69C E608FFD8 */   swc1      $f8, -0x28($s0)
/* 1AC720 8039A6A0 9203FFF6 */  lbu        $v1, -0xa($s0)
/* 1AC724 8039A6A4 9205FFF7 */  lbu        $a1, -9($s0)
/* 1AC728 8039A6A8 9204FFF8 */  lbu        $a0, -8($s0)
/* 1AC72C 8039A6AC 9602FFF0 */  lhu        $v0, -0x10($s0)
/* 1AC730 8039A6B0 C602FFE4 */  lwc1       $f2, -0x1c($s0)
/* 1AC734 8039A6B4 C604FFDC */  lwc1       $f4, -0x24($s0)
/* 1AC738 8039A6B8 C606FFE8 */  lwc1       $f6, -0x18($s0)
/* 1AC73C 8039A6BC C600FFE0 */  lwc1       $f0, -0x20($s0)
/* 1AC740 8039A6C0 00031E00 */  sll        $v1, $v1, 0x18
/* 1AC744 8039A6C4 00031E03 */  sra        $v1, $v1, 0x18
/* 1AC748 8039A6C8 00052E00 */  sll        $a1, $a1, 0x18
/* 1AC74C 8039A6CC 00052E03 */  sra        $a1, $a1, 0x18
/* 1AC750 8039A6D0 00042600 */  sll        $a0, $a0, 0x18
/* 1AC754 8039A6D4 46024080 */  add.s      $f2, $f8, $f2
/* 1AC758 8039A6D8 C608FFEC */  lwc1       $f8, -0x14($s0)
/* 1AC75C 8039A6DC 00042603 */  sra        $a0, $a0, 0x18
/* 1AC760 8039A6E0 00431021 */  addu       $v0, $v0, $v1
/* 1AC764 8039A6E4 A602FFF0 */  sh         $v0, -0x10($s0)
/* 1AC768 8039A6E8 9602FFF2 */  lhu        $v0, -0xe($s0)
/* 1AC76C 8039A6EC 9603FFF4 */  lhu        $v1, -0xc($s0)
/* 1AC770 8039A6F0 46062100 */  add.s      $f4, $f4, $f6
/* 1AC774 8039A6F4 00451021 */  addu       $v0, $v0, $a1
/* 1AC778 8039A6F8 E602FFD8 */  swc1       $f2, -0x28($s0)
/* 1AC77C 8039A6FC C602FFE8 */  lwc1       $f2, -0x18($s0)
/* 1AC780 8039A700 00641821 */  addu       $v1, $v1, $a0
/* 1AC784 8039A704 46080000 */  add.s      $f0, $f0, $f8
/* 1AC788 8039A708 A602FFF2 */  sh         $v0, -0xe($s0)
/* 1AC78C 8039A70C A603FFF4 */  sh         $v1, -0xc($s0)
/* 1AC790 8039A710 E604FFDC */  swc1       $f4, -0x24($s0)
/* 1AC794 8039A714 E600FFE0 */  swc1       $f0, -0x20($s0)
/* 1AC798 8039A718 C6800044 */  lwc1       $f0, 0x44($s4)
/* 1AC79C 8039A71C 46001080 */  add.s      $f2, $f2, $f0
/* 1AC7A0 8039A720 C600FFDC */  lwc1       $f0, -0x24($s0)
/* 1AC7A4 8039A724 4614003E */  c.le.s     $f0, $f20
/* 1AC7A8 8039A728 00000000 */  nop
/* 1AC7AC 8039A72C 00000000 */  nop
/* 1AC7B0 8039A730 45000003 */  bc1f       .L8039A740
/* 1AC7B4 8039A734 E602FFE8 */   swc1      $f2, -0x18($s0)
/* 1AC7B8 8039A738 E614FFDC */  swc1       $f20, -0x24($s0)
/* 1AC7BC 8039A73C A2000000 */  sb         $zero, ($s0)
.L8039A740:
/* 1AC7C0 8039A740 26520001 */  addiu      $s2, $s2, 1
/* 1AC7C4 8039A744 8E820050 */  lw         $v0, 0x50($s4)
/* 1AC7C8 8039A748 26100078 */  addiu      $s0, $s0, 0x78
/* 1AC7CC 8039A74C 0242102A */  slt        $v0, $s2, $v0
/* 1AC7D0 8039A750 1440FFA1 */  bnez       $v0, .L8039A5D8
/* 1AC7D4 8039A754 26310078 */   addiu     $s1, $s1, 0x78
.L8039A758:
/* 1AC7D8 8039A758 080E69D9 */  j          .L8039A764
/* 1AC7DC 8039A75C 00001021 */   addu      $v0, $zero, $zero
.L8039A760:
/* 1AC7E0 8039A760 24020001 */  addiu      $v0, $zero, 1
.L8039A764:
/* 1AC7E4 8039A764 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1AC7E8 8039A768 8FB40040 */  lw         $s4, 0x40($sp)
/* 1AC7EC 8039A76C 8FB3003C */  lw         $s3, 0x3c($sp)
/* 1AC7F0 8039A770 8FB20038 */  lw         $s2, 0x38($sp)
/* 1AC7F4 8039A774 8FB10034 */  lw         $s1, 0x34($sp)
/* 1AC7F8 8039A778 8FB00030 */  lw         $s0, 0x30($sp)
/* 1AC7FC 8039A77C D7B40048 */  ldc1       $f20, 0x48($sp)
/* 1AC800 8039A780 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1AC804 8039A784 03E00008 */  jr         $ra
/* 1AC808 8039A788 00000000 */   nop

glabel func_8039A78C
/* 1AC80C 8039A78C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AC810 8039A790 8FA20028 */  lw         $v0, 0x28($sp)
/* 1AC814 8039A794 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1AC818 8039A798 8FA80030 */  lw         $t0, 0x30($sp)
/* 1AC81C 8039A79C 00042400 */  sll        $a0, $a0, 0x10
/* 1AC820 8039A7A0 00042403 */  sra        $a0, $a0, 0x10
/* 1AC824 8039A7A4 00052C00 */  sll        $a1, $a1, 0x10
/* 1AC828 8039A7A8 00052C03 */  sra        $a1, $a1, 0x10
/* 1AC82C 8039A7AC 00063400 */  sll        $a2, $a2, 0x10
/* 1AC830 8039A7B0 00063403 */  sra        $a2, $a2, 0x10
/* 1AC834 8039A7B4 00073C00 */  sll        $a3, $a3, 0x10
/* 1AC838 8039A7B8 00073C03 */  sra        $a3, $a3, 0x10
/* 1AC83C 8039A7BC 3C01803B */  lui        $at, %hi(D_803B3E34)
/* 1AC840 8039A7C0 AC243E34 */  sw         $a0, %lo(D_803B3E34)($at)
/* 1AC844 8039A7C4 3C04803A */  lui        $a0, %hi(D_80399D30)
/* 1AC848 8039A7C8 24849D30 */  addiu      $a0, $a0, %lo(D_80399D30)
/* 1AC84C 8039A7CC 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 1AC850 8039A7D0 AC253EA8 */  sw         $a1, %lo(D_803B3EA8)($at)
/* 1AC854 8039A7D4 24050001 */  addiu      $a1, $zero, 1
/* 1AC858 8039A7D8 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AC85C 8039A7DC AC263E20 */  sw         $a2, %lo(D_803B3E20)($at)
/* 1AC860 8039A7E0 24060136 */  addiu      $a2, $zero, 0x136
/* 1AC864 8039A7E4 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1AC868 8039A7E8 AC273E5C */  sw         $a3, %lo(D_803B3E5C)($at)
/* 1AC86C 8039A7EC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AC870 8039A7F0 00021400 */  sll        $v0, $v0, 0x10
/* 1AC874 8039A7F4 00021403 */  sra        $v0, $v0, 0x10
/* 1AC878 8039A7F8 00031C00 */  sll        $v1, $v1, 0x10
/* 1AC87C 8039A7FC 00031C03 */  sra        $v1, $v1, 0x10
/* 1AC880 8039A800 00084400 */  sll        $t0, $t0, 0x10
/* 1AC884 8039A804 00084403 */  sra        $t0, $t0, 0x10
/* 1AC888 8039A808 3C01803B */  lui        $at, %hi(D_803B3EB8)
/* 1AC88C 8039A80C AC223EB8 */  sw         $v0, %lo(D_803B3EB8)($at)
/* 1AC890 8039A810 3C01803B */  lui        $at, %hi(D_803B3E60)
/* 1AC894 8039A814 AC233E60 */  sw         $v1, %lo(D_803B3E60)($at)
/* 1AC898 8039A818 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 1AC89C 8039A81C AC283EAC */  sw         $t0, %lo(D_803B3EAC)($at)
/* 1AC8A0 8039A820 0C025D06 */  jal        func_80097418
/* 1AC8A4 8039A824 24070001 */   addiu     $a3, $zero, 1
/* 1AC8A8 8039A828 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AC8AC 8039A82C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AC8B0 8039A830 03E00008 */  jr         $ra
/* 1AC8B4 8039A834 00000000 */   nop
/* 1AC8B8 8039A838 00000000 */  nop
/* 1AC8BC 8039A83C 00000000 */  nop

glabel func_8039A840_1AC8C0
/* 1AC8C0 8039A840 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AC8C4 8039A844 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AC8C8 8039A848 00808021 */  addu       $s0, $a0, $zero
/* 1AC8CC 8039A84C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AC8D0 8039A850 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AC8D4 8039A854 9603001C */  lhu        $v1, 0x1c($s0)
/* 1AC8D8 8039A858 24110001 */  addiu      $s1, $zero, 1
/* 1AC8DC 8039A85C 1071002D */  beq        $v1, $s1, .L8039A914
/* 1AC8E0 8039A860 28620002 */   slti      $v0, $v1, 2
/* 1AC8E4 8039A864 50400005 */  beql       $v0, $zero, .L8039A87C
/* 1AC8E8 8039A868 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AC8EC 8039A86C 10600007 */  beqz       $v1, .L8039A88C
/* 1AC8F0 8039A870 00000000 */   nop
/* 1AC8F4 8039A874 080E6A6C */  j          .L8039A9B0
/* 1AC8F8 8039A878 00000000 */   nop
.L8039A87C:
/* 1AC8FC 8039A87C 1062002D */  beq        $v1, $v0, .L8039A934
/* 1AC900 8039A880 00000000 */   nop
/* 1AC904 8039A884 080E6A6C */  j          .L8039A9B0
/* 1AC908 8039A888 00000000 */   nop
.L8039A88C:
/* 1AC90C 8039A88C 8E03000C */  lw         $v1, 0xc($s0)
/* 1AC910 8039A890 1071000F */  beq        $v1, $s1, .L8039A8D0
/* 1AC914 8039A894 28620002 */   slti      $v0, $v1, 2
/* 1AC918 8039A898 50400005 */  beql       $v0, $zero, .L8039A8B0
/* 1AC91C 8039A89C 24020002 */   addiu     $v0, $zero, 2
/* 1AC920 8039A8A0 10600007 */  beqz       $v1, .L8039A8C0
/* 1AC924 8039A8A4 00000000 */   nop
/* 1AC928 8039A8A8 080E6A3E */  j          .L8039A8F8
/* 1AC92C 8039A8AC 00000000 */   nop
.L8039A8B0:
/* 1AC930 8039A8B0 1062000B */  beq        $v1, $v0, .L8039A8E0
/* 1AC934 8039A8B4 00000000 */   nop
/* 1AC938 8039A8B8 080E6A3E */  j          .L8039A8F8
/* 1AC93C 8039A8BC 00000000 */   nop
.L8039A8C0:
/* 1AC940 8039A8C0 0C032663 */  jal        func_800C998C
/* 1AC944 8039A8C4 24040098 */   addiu     $a0, $zero, 0x98
/* 1AC948 8039A8C8 080E6A3B */  j          .L8039A8EC
/* 1AC94C 8039A8CC AE020014 */   sw        $v0, 0x14($s0)
.L8039A8D0:
/* 1AC950 8039A8D0 0C025E63 */  jal        func_8009798C
/* 1AC954 8039A8D4 24040098 */   addiu     $a0, $zero, 0x98
/* 1AC958 8039A8D8 080E6A3B */  j          .L8039A8EC
/* 1AC95C 8039A8DC AE020014 */   sw        $v0, 0x14($s0)
.L8039A8E0:
/* 1AC960 8039A8E0 0C026127 */  jal        func_8009849C
/* 1AC964 8039A8E4 24040098 */   addiu     $a0, $zero, 0x98
/* 1AC968 8039A8E8 AE020014 */  sw         $v0, 0x14($s0)
.L8039A8EC:
/* 1AC96C 8039A8EC 00402021 */  addu       $a0, $v0, $zero
/* 1AC970 8039A8F0 0C030134 */  jal        bzero
/* 1AC974 8039A8F4 24050098 */   addiu     $a1, $zero, 0x98
.L8039A8F8:
/* 1AC978 8039A8F8 8E040014 */  lw         $a0, 0x14($s0)
/* 1AC97C 8039A8FC 0C0E6A74 */  jal        func_8039A9D0_1ACA50
/* 1AC980 8039A900 00000000 */   nop
/* 1AC984 8039A904 00001021 */  addu       $v0, $zero, $zero
/* 1AC988 8039A908 24030001 */  addiu      $v1, $zero, 1
/* 1AC98C 8039A90C 080E6A6E */  j          .L8039A9B8
/* 1AC990 8039A910 A603001C */   sh        $v1, 0x1c($s0)
.L8039A914:
/* 1AC994 8039A914 8E040014 */  lw         $a0, 0x14($s0)
/* 1AC998 8039A918 0C0E6AEE */  jal        func_8039ABB8_1ACC38
/* 1AC99C 8039A91C 00000000 */   nop
/* 1AC9A0 8039A920 10400002 */  beqz       $v0, .L8039A92C
/* 1AC9A4 8039A924 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AC9A8 8039A928 A602001C */  sh         $v0, 0x1c($s0)
.L8039A92C:
/* 1AC9AC 8039A92C 080E6A6E */  j          .L8039A9B8
/* 1AC9B0 8039A930 00001021 */   addu      $v0, $zero, $zero
.L8039A934:
/* 1AC9B4 8039A934 8E040014 */  lw         $a0, 0x14($s0)
/* 1AC9B8 8039A938 0C0E6AEC */  jal        func_8039ABB0_1ACC30
/* 1AC9BC 8039A93C 00000000 */   nop
/* 1AC9C0 8039A940 8E03000C */  lw         $v1, 0xc($s0)
/* 1AC9C4 8039A944 10710010 */  beq        $v1, $s1, .L8039A988
/* 1AC9C8 8039A948 28620002 */   slti      $v0, $v1, 2
/* 1AC9CC 8039A94C 50400005 */  beql       $v0, $zero, .L8039A964
/* 1AC9D0 8039A950 24020002 */   addiu     $v0, $zero, 2
/* 1AC9D4 8039A954 10600007 */  beqz       $v1, .L8039A974
/* 1AC9D8 8039A958 24020001 */   addiu     $v0, $zero, 1
/* 1AC9DC 8039A95C 080E6A6E */  j          .L8039A9B8
/* 1AC9E0 8039A960 00000000 */   nop
.L8039A964:
/* 1AC9E4 8039A964 1062000D */  beq        $v1, $v0, .L8039A99C
/* 1AC9E8 8039A968 24020001 */   addiu     $v0, $zero, 1
/* 1AC9EC 8039A96C 080E6A6E */  j          .L8039A9B8
/* 1AC9F0 8039A970 00000000 */   nop
.L8039A974:
/* 1AC9F4 8039A974 8E040014 */  lw         $a0, 0x14($s0)
/* 1AC9F8 8039A978 0C0326A1 */  jal        func_800C9A84
/* 1AC9FC 8039A97C 00000000 */   nop
/* 1ACA00 8039A980 080E6A6E */  j          .L8039A9B8
/* 1ACA04 8039A984 24020001 */   addiu     $v0, $zero, 1
.L8039A988:
/* 1ACA08 8039A988 8E040014 */  lw         $a0, 0x14($s0)
/* 1ACA0C 8039A98C 0C025EC3 */  jal        func_80097B0C
/* 1ACA10 8039A990 00000000 */   nop
/* 1ACA14 8039A994 080E6A6E */  j          .L8039A9B8
/* 1ACA18 8039A998 24020001 */   addiu     $v0, $zero, 1
.L8039A99C:
/* 1ACA1C 8039A99C 8E040014 */  lw         $a0, 0x14($s0)
/* 1ACA20 8039A9A0 0C026187 */  jal        func_8009861C
/* 1ACA24 8039A9A4 00000000 */   nop
/* 1ACA28 8039A9A8 080E6A6E */  j          .L8039A9B8
/* 1ACA2C 8039A9AC 24020001 */   addiu     $v0, $zero, 1
.L8039A9B0:
/* 1ACA30 8039A9B0 0C032934 */  jal        func_800CA4D0
/* 1ACA34 8039A9B4 00000000 */   nop
.L8039A9B8:
/* 1ACA38 8039A9B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1ACA3C 8039A9BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1ACA40 8039A9C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1ACA44 8039A9C4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1ACA48 8039A9C8 03E00008 */  jr         $ra
/* 1ACA4C 8039A9CC 00000000 */   nop

glabel func_8039A9D0_1ACA50
/* 1ACA50 8039A9D0 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1ACA54 8039A9D4 C4203EBC */  lwc1       $f0, %lo(D_803B3EBC)($at)
/* 1ACA58 8039A9D8 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1ACA5C 8039A9DC C4223EB0 */  lwc1       $f2, %lo(D_803B3EB0)($at)
/* 1ACA60 8039A9E0 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1ACA64 8039A9E4 C4243E2C */  lwc1       $f4, %lo(D_803B3E2C)($at)
/* 1ACA68 8039A9E8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 1ACA6C 8039A9EC AFB00070 */  sw         $s0, 0x70($sp)
/* 1ACA70 8039A9F0 00808021 */  addu       $s0, $a0, $zero
/* 1ACA74 8039A9F4 2404000A */  addiu      $a0, $zero, 0xa
/* 1ACA78 8039A9F8 AFBF0074 */  sw         $ra, 0x74($sp)
/* 1ACA7C 8039A9FC F7B40078 */  sdc1       $f20, 0x78($sp)
/* 1ACA80 8039AA00 E6000040 */  swc1       $f0, 0x40($s0)
/* 1ACA84 8039AA04 E6020044 */  swc1       $f2, 0x44($s0)
/* 1ACA88 8039AA08 0C02591A */  jal        func_80096468
/* 1ACA8C 8039AA0C E6040048 */   swc1      $f4, 0x48($s0)
/* 1ACA90 8039AA10 3C014120 */  lui        $at, 0x4120
/* 1ACA94 8039AA14 4481A000 */  mtc1       $at, $f20
/* 1ACA98 8039AA18 00000000 */  nop
/* 1ACA9C 8039AA1C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1ACAA0 8039AA20 44820000 */  mtc1       $v0, $f0
/* 1ACAA4 8039AA24 00000000 */  nop
/* 1ACAA8 8039AA28 46800020 */  cvt.s.w    $f0, $f0
/* 1ACAAC 8039AA2C 46140003 */  div.s      $f0, $f0, $f20
/* 1ACAB0 8039AA30 3C01803B */  lui        $at, %hi(D_803B3EB4)
/* 1ACAB4 8039AA34 C4223EB4 */  lwc1       $f2, %lo(D_803B3EB4)($at)
/* 1ACAB8 8039AA38 468010A0 */  cvt.s.w    $f2, $f2
/* 1ACABC 8039AA3C 46001080 */  add.s      $f2, $f2, $f0
/* 1ACAC0 8039AA40 2404000A */  addiu      $a0, $zero, 0xa
/* 1ACAC4 8039AA44 0C02591A */  jal        func_80096468
/* 1ACAC8 8039AA48 E6020058 */   swc1      $f2, 0x58($s0)
/* 1ACACC 8039AA4C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1ACAD0 8039AA50 44824000 */  mtc1       $v0, $f8
/* 1ACAD4 8039AA54 00000000 */  nop
/* 1ACAD8 8039AA58 46804220 */  cvt.s.w    $f8, $f8
/* 1ACADC 8039AA5C 46144203 */  div.s      $f8, $f8, $f20
/* 1ACAE0 8039AA60 3C01803B */  lui        $at, %hi(D_803B3EB8)
/* 1ACAE4 8039AA64 C4263EB8 */  lwc1       $f6, %lo(D_803B3EB8)($at)
/* 1ACAE8 8039AA68 468031A0 */  cvt.s.w    $f6, $f6
/* 1ACAEC 8039AA6C 46143183 */  div.s      $f6, $f6, $f20
/* 1ACAF0 8039AA70 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1ACAF4 8039AA74 C4243E5C */  lwc1       $f4, %lo(D_803B3E5C)($at)
/* 1ACAF8 8039AA78 46802120 */  cvt.s.w    $f4, $f4
/* 1ACAFC 8039AA7C 46142103 */  div.s      $f4, $f4, $f20
/* 1ACB00 8039AA80 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1ACB04 8039AA84 C4223E20 */  lwc1       $f2, %lo(D_803B3E20)($at)
/* 1ACB08 8039AA88 468010A0 */  cvt.s.w    $f2, $f2
/* 1ACB0C 8039AA8C 46141083 */  div.s      $f2, $f2, $f20
/* 1ACB10 8039AA90 3C02803B */  lui        $v0, %hi(D_803B3EAC)
/* 1ACB14 8039AA94 8C423EAC */  lw         $v0, %lo(D_803B3EAC)($v0)
/* 1ACB18 8039AA98 3C03803B */  lui        $v1, %hi(D_803B3EA8)
/* 1ACB1C 8039AA9C 8C633EA8 */  lw         $v1, %lo(D_803B3EA8)($v1)
/* 1ACB20 8039AAA0 3C013F80 */  lui        $at, 0x3f80
/* 1ACB24 8039AAA4 44815000 */  mtc1       $at, $f10
/* 1ACB28 8039AAA8 00000000 */  nop
/* 1ACB2C 8039AAAC 3C01803B */  lui        $at, %hi(D_803B3E50)
/* 1ACB30 8039AAB0 C4203E50 */  lwc1       $f0, %lo(D_803B3E50)($at)
/* 1ACB34 8039AAB4 46800020 */  cvt.s.w    $f0, $f0
/* 1ACB38 8039AAB8 AE000060 */  sw         $zero, 0x60($s0)
/* 1ACB3C 8039AABC A602008C */  sh         $v0, 0x8c($s0)
/* 1ACB40 8039AAC0 A603008E */  sh         $v1, 0x8e($s0)
/* 1ACB44 8039AAC4 46080000 */  add.s      $f0, $f0, $f8
/* 1ACB48 8039AAC8 E6060064 */  swc1       $f6, 0x64($s0)
/* 1ACB4C 8039AACC E6040068 */  swc1       $f4, 0x68($s0)
/* 1ACB50 8039AAD0 E602006C */  swc1       $f2, 0x6c($s0)
/* 1ACB54 8039AAD4 E600005C */  swc1       $f0, 0x5c($s0)
/* 1ACB58 8039AAD8 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 1ACB5C 8039AADC AFA00014 */  sw         $zero, 0x14($sp)
/* 1ACB60 8039AAE0 AFA00018 */  sw         $zero, 0x18($sp)
/* 1ACB64 8039AAE4 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1ACB68 8039AAE8 8E050058 */  lw         $a1, 0x58($s0)
/* 1ACB6C 8039AAEC 8E06005C */  lw         $a2, 0x5c($s0)
/* 1ACB70 8039AAF0 8E070060 */  lw         $a3, 0x60($s0)
/* 1ACB74 8039AAF4 0C02FC98 */  jal        func_800BF260
/* 1ACB78 8039AAF8 27A40020 */   addiu     $a0, $sp, 0x20
/* 1ACB7C 8039AAFC 27A20060 */  addiu      $v0, $sp, 0x60
/* 1ACB80 8039AB00 AFA20010 */  sw         $v0, 0x10($sp)
/* 1ACB84 8039AB04 27A20064 */  addiu      $v0, $sp, 0x64
/* 1ACB88 8039AB08 AFA20014 */  sw         $v0, 0x14($sp)
/* 1ACB8C 8039AB0C 27A20068 */  addiu      $v0, $sp, 0x68
/* 1ACB90 8039AB10 AFA20018 */  sw         $v0, 0x18($sp)
/* 1ACB94 8039AB14 8E070068 */  lw         $a3, 0x68($s0)
/* 1ACB98 8039AB18 44800000 */  mtc1       $zero, $f0
/* 1ACB9C 8039AB1C 00000000 */  nop
/* 1ACBA0 8039AB20 44050000 */  mfc1       $a1, $f0
/* 1ACBA4 8039AB24 00000000 */  nop
/* 1ACBA8 8039AB28 27A40020 */  addiu      $a0, $sp, 0x20
/* 1ACBAC 8039AB2C 0C02F9DF */  jal        func_800BE77C
/* 1ACBB0 8039AB30 00A03021 */   addu      $a2, $a1, $zero
/* 1ACBB4 8039AB34 C7A60060 */  lwc1       $f6, 0x60($sp)
/* 1ACBB8 8039AB38 C7A80064 */  lwc1       $f8, 0x64($sp)
/* 1ACBBC 8039AB3C C7AA0068 */  lwc1       $f10, 0x68($sp)
/* 1ACBC0 8039AB40 C6000040 */  lwc1       $f0, 0x40($s0)
/* 1ACBC4 8039AB44 C6020044 */  lwc1       $f2, 0x44($s0)
/* 1ACBC8 8039AB48 C6040048 */  lwc1       $f4, 0x48($s0)
/* 1ACBCC 8039AB4C 24020002 */  addiu      $v0, $zero, 2
/* 1ACBD0 8039AB50 A6020070 */  sh         $v0, 0x70($s0)
/* 1ACBD4 8039AB54 A6020072 */  sh         $v0, 0x72($s0)
/* 1ACBD8 8039AB58 2402FFFF */  addiu      $v0, $zero, -1
/* 1ACBDC 8039AB5C 46060001 */  sub.s      $f0, $f0, $f6
/* 1ACBE0 8039AB60 A6020084 */  sh         $v0, 0x84($s0)
/* 1ACBE4 8039AB64 24020001 */  addiu      $v0, $zero, 1
/* 1ACBE8 8039AB68 A200007C */  sb         $zero, 0x7c($s0)
/* 1ACBEC 8039AB6C 46081081 */  sub.s      $f2, $f2, $f8
/* 1ACBF0 8039AB70 A200007D */  sb         $zero, 0x7d($s0)
/* 1ACBF4 8039AB74 A202007E */  sb         $v0, 0x7e($s0)
/* 1ACBF8 8039AB78 A202007F */  sb         $v0, 0x7f($s0)
/* 1ACBFC 8039AB7C 460A2101 */  sub.s      $f4, $f4, $f10
/* 1ACC00 8039AB80 E606004C */  swc1       $f6, 0x4c($s0)
/* 1ACC04 8039AB84 E6080050 */  swc1       $f8, 0x50($s0)
/* 1ACC08 8039AB88 E60A0054 */  swc1       $f10, 0x54($s0)
/* 1ACC0C 8039AB8C E6000040 */  swc1       $f0, 0x40($s0)
/* 1ACC10 8039AB90 E6020044 */  swc1       $f2, 0x44($s0)
/* 1ACC14 8039AB94 E6040048 */  swc1       $f4, 0x48($s0)
/* 1ACC18 8039AB98 8FBF0074 */  lw         $ra, 0x74($sp)
/* 1ACC1C 8039AB9C 8FB00070 */  lw         $s0, 0x70($sp)
/* 1ACC20 8039ABA0 D7B40078 */  ldc1       $f20, 0x78($sp)
/* 1ACC24 8039ABA4 27BD0080 */  addiu      $sp, $sp, 0x80
/* 1ACC28 8039ABA8 03E00008 */  jr         $ra
/* 1ACC2C 8039ABAC 00000000 */   nop

glabel func_8039ABB0_1ACC30
/* 1ACC30 8039ABB0 03E00008 */  jr         $ra
/* 1ACC34 8039ABB4 00000000 */   nop

glabel func_8039ABB8_1ACC38
/* 1ACC38 8039ABB8 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 1ACC3C 8039ABBC AFB5008C */  sw         $s5, 0x8c($sp)
/* 1ACC40 8039ABC0 0080A821 */  addu       $s5, $a0, $zero
/* 1ACC44 8039ABC4 AFBF0090 */  sw         $ra, 0x90($sp)
/* 1ACC48 8039ABC8 AFB40088 */  sw         $s4, 0x88($sp)
/* 1ACC4C 8039ABCC AFB30084 */  sw         $s3, 0x84($sp)
/* 1ACC50 8039ABD0 AFB20080 */  sw         $s2, 0x80($sp)
/* 1ACC54 8039ABD4 AFB1007C */  sw         $s1, 0x7c($sp)
/* 1ACC58 8039ABD8 AFB00078 */  sw         $s0, 0x78($sp)
/* 1ACC5C 8039ABDC 86A2008E */  lh         $v0, 0x8e($s5)
/* 1ACC60 8039ABE0 10400179 */  beqz       $v0, .L8039B1C8
/* 1ACC64 8039ABE4 00401821 */   addu      $v1, $v0, $zero
/* 1ACC68 8039ABE8 96B00072 */  lhu        $s0, 0x72($s5)
/* 1ACC6C 8039ABEC 2462FFFF */  addiu      $v0, $v1, -1
/* 1ACC70 8039ABF0 A6A2008E */  sh         $v0, 0x8e($s5)
/* 1ACC74 8039ABF4 24020002 */  addiu      $v0, $zero, 2
/* 1ACC78 8039ABF8 16020070 */  bne        $s0, $v0, .L8039ADBC
/* 1ACC7C 8039ABFC 2402FFFF */   addiu     $v0, $zero, -1
/* 1ACC80 8039AC00 86A30084 */  lh         $v1, 0x84($s5)
/* 1ACC84 8039AC04 1062006D */  beq        $v1, $v0, .L8039ADBC
/* 1ACC88 8039AC08 24030001 */   addiu     $v1, $zero, 1
/* 1ACC8C 8039AC0C 86A20084 */  lh         $v0, 0x84($s5)
/* 1ACC90 8039AC10 A6A30072 */  sh         $v1, 0x72($s5)
/* 1ACC94 8039AC14 2403000C */  addiu      $v1, $zero, 0xc
/* 1ACC98 8039AC18 14430049 */  bne        $v0, $v1, .L8039AD40
/* 1ACC9C 8039AC1C 00000000 */   nop
/* 1ACCA0 8039AC20 0C02591A */  jal        func_80096468
/* 1ACCA4 8039AC24 2404000F */   addiu     $a0, $zero, 0xf
/* 1ACCA8 8039AC28 0C02592F */  jal        func_800964BC
/* 1ACCAC 8039AC2C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1ACCB0 8039AC30 C6A00058 */  lwc1       $f0, 0x58($s5)
/* 1ACCB4 8039AC34 44821000 */  mtc1       $v0, $f2
/* 1ACCB8 8039AC38 00000000 */  nop
/* 1ACCBC 8039AC3C 468010A0 */  cvt.s.w    $f2, $f2
/* 1ACCC0 8039AC40 46020000 */  add.s      $f0, $f0, $f2
/* 1ACCC4 8039AC44 86A3008C */  lh         $v1, 0x8c($s5)
/* 1ACCC8 8039AC48 24020001 */  addiu      $v0, $zero, 1
/* 1ACCCC 8039AC4C 10620014 */  beq        $v1, $v0, .L8039ACA0
/* 1ACCD0 8039AC50 E6A00058 */   swc1      $f0, 0x58($s5)
/* 1ACCD4 8039AC54 28620002 */  slti       $v0, $v1, 2
/* 1ACCD8 8039AC58 10400005 */  beqz       $v0, .L8039AC70
/* 1ACCDC 8039AC5C 00000000 */   nop
/* 1ACCE0 8039AC60 10600007 */  beqz       $v1, .L8039AC80
/* 1ACCE4 8039AC64 00000000 */   nop
/* 1ACCE8 8039AC68 080E6B3C */  j          .L8039ACF0
/* 1ACCEC 8039AC6C 00000000 */   nop
.L8039AC70:
/* 1ACCF0 8039AC70 10700015 */  beq        $v1, $s0, .L8039ACC8
/* 1ACCF4 8039AC74 00000000 */   nop
/* 1ACCF8 8039AC78 080E6B3C */  j          .L8039ACF0
/* 1ACCFC 8039AC7C 00000000 */   nop
.L8039AC80:
/* 1ACD00 8039AC80 0C02591A */  jal        func_80096468
/* 1ACD04 8039AC84 2404002D */   addiu     $a0, $zero, 0x2d
/* 1ACD08 8039AC88 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1ACD0C 8039AC8C 0C02592F */  jal        func_800964BC
/* 1ACD10 8039AC90 2444005A */   addiu     $a0, $v0, 0x5a
/* 1ACD14 8039AC94 C6A0005C */  lwc1       $f0, 0x5c($s5)
/* 1ACD18 8039AC98 080E6B37 */  j          .L8039ACDC
/* 1ACD1C 8039AC9C 00000000 */   nop
.L8039ACA0:
/* 1ACD20 8039ACA0 0C02591A */  jal        func_80096468
/* 1ACD24 8039ACA4 2404002D */   addiu     $a0, $zero, 0x2d
/* 1ACD28 8039ACA8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1ACD2C 8039ACAC C6A0005C */  lwc1       $f0, 0x5c($s5)
/* 1ACD30 8039ACB0 2442005A */  addiu      $v0, $v0, 0x5a
/* 1ACD34 8039ACB4 44821000 */  mtc1       $v0, $f2
/* 1ACD38 8039ACB8 00000000 */  nop
/* 1ACD3C 8039ACBC 468010A0 */  cvt.s.w    $f2, $f2
/* 1ACD40 8039ACC0 080E6B3B */  j          .L8039ACEC
/* 1ACD44 8039ACC4 46020001 */   sub.s     $f0, $f0, $f2
.L8039ACC8:
/* 1ACD48 8039ACC8 0C02591A */  jal        func_80096468
/* 1ACD4C 8039ACCC 2404002D */   addiu     $a0, $zero, 0x2d
/* 1ACD50 8039ACD0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1ACD54 8039ACD4 C6A0005C */  lwc1       $f0, 0x5c($s5)
/* 1ACD58 8039ACD8 2442005A */  addiu      $v0, $v0, 0x5a
.L8039ACDC:
/* 1ACD5C 8039ACDC 44821000 */  mtc1       $v0, $f2
/* 1ACD60 8039ACE0 00000000 */  nop
/* 1ACD64 8039ACE4 468010A0 */  cvt.s.w    $f2, $f2
/* 1ACD68 8039ACE8 46020000 */  add.s      $f0, $f0, $f2
.L8039ACEC:
/* 1ACD6C 8039ACEC E6A0005C */  swc1       $f0, 0x5c($s5)
.L8039ACF0:
/* 1ACD70 8039ACF0 C6A2006C */  lwc1       $f2, 0x6c($s5)
/* 1ACD74 8039ACF4 3C014000 */  lui        $at, 0x4000
/* 1ACD78 8039ACF8 44810000 */  mtc1       $at, $f0
/* 1ACD7C 8039ACFC 00000000 */  nop
/* 1ACD80 8039AD00 46001083 */  div.s      $f2, $f2, $f0
/* 1ACD84 8039AD04 3C04803A */  lui        $a0, %hi(D_803A29C0_1B4A40)
/* 1ACD88 8039AD08 8C8429C0 */  lw         $a0, %lo(D_803A29C0_1B4A40)($a0)
/* 1ACD8C 8039AD0C 00002821 */  addu       $a1, $zero, $zero
/* 1ACD90 8039AD10 0C026E46 */  jal        func_8009B918
/* 1ACD94 8039AD14 E6A2006C */   swc1      $f2, 0x6c($s5)
/* 1ACD98 8039AD18 0C026DD5 */  jal        func_8009B754
/* 1ACD9C 8039AD1C 24040012 */   addiu     $a0, $zero, 0x12
/* 1ACDA0 8039AD20 00402021 */  addu       $a0, $v0, $zero
/* 1ACDA4 8039AD24 3C01803A */  lui        $at, %hi(D_803A29C0_1B4A40)
/* 1ACDA8 8039AD28 AC2429C0 */  sw         $a0, %lo(D_803A29C0_1B4A40)($at)
/* 1ACDAC 8039AD2C 0C026E66 */  jal        func_8009B998
/* 1ACDB0 8039AD30 24050040 */   addiu     $a1, $zero, 0x40
/* 1ACDB4 8039AD34 2402000A */  addiu      $v0, $zero, 0xa
/* 1ACDB8 8039AD38 080E6B6F */  j          .L8039ADBC
/* 1ACDBC 8039AD3C A6A2008E */   sh        $v0, 0x8e($s5)
.L8039AD40:
/* 1ACDC0 8039AD40 3C04803A */  lui        $a0, %hi(D_803A29C0_1B4A40)
/* 1ACDC4 8039AD44 8C8429C0 */  lw         $a0, %lo(D_803A29C0_1B4A40)($a0)
/* 1ACDC8 8039AD48 0C026E46 */  jal        func_8009B918
/* 1ACDCC 8039AD4C 00002821 */   addu      $a1, $zero, $zero
/* 1ACDD0 8039AD50 0C026DD5 */  jal        func_8009B754
/* 1ACDD4 8039AD54 24040036 */   addiu     $a0, $zero, 0x36
/* 1ACDD8 8039AD58 00402021 */  addu       $a0, $v0, $zero
/* 1ACDDC 8039AD5C 3C01803A */  lui        $at, %hi(D_803A29C0_1B4A40)
/* 1ACDE0 8039AD60 AC2429C0 */  sw         $a0, %lo(D_803A29C0_1B4A40)($at)
/* 1ACDE4 8039AD64 0C026E66 */  jal        func_8009B998
/* 1ACDE8 8039AD68 24050040 */   addiu     $a1, $zero, 0x40
/* 1ACDEC 8039AD6C C6A00040 */  lwc1       $f0, 0x40($s5)
/* 1ACDF0 8039AD70 C6A20044 */  lwc1       $f2, 0x44($s5)
/* 1ACDF4 8039AD74 C6A40048 */  lwc1       $f4, 0x48($s5)
/* 1ACDF8 8039AD78 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1ACDFC 8039AD7C E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 1ACE00 8039AD80 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1ACE04 8039AD84 E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 1ACE08 8039AD88 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1ACE0C 8039AD8C E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 1ACE10 8039AD90 0C02591A */  jal        func_80096468
/* 1ACE14 8039AD94 24040005 */   addiu     $a0, $zero, 5
/* 1ACE18 8039AD98 24040009 */  addiu      $a0, $zero, 9
/* 1ACE1C 8039AD9C 24420005 */  addiu      $v0, $v0, 5
/* 1ACE20 8039ADA0 00021400 */  sll        $v0, $v0, 0x10
/* 1ACE24 8039ADA4 00022C03 */  sra        $a1, $v0, 0x10
/* 1ACE28 8039ADA8 0C0E6731 */  jal        func_80399CC4
/* 1ACE2C 8039ADAC 00003021 */   addu      $a2, $zero, $zero
/* 1ACE30 8039ADB0 24020001 */  addiu      $v0, $zero, 1
/* 1ACE34 8039ADB4 080E6C73 */  j          .L8039B1CC
/* 1ACE38 8039ADB8 A6A0008E */   sh        $zero, 0x8e($s5)
.L8039ADBC:
/* 1ACE3C 8039ADBC C6A00058 */  lwc1       $f0, 0x58($s5)
/* 1ACE40 8039ADC0 C6A20064 */  lwc1       $f2, 0x64($s5)
/* 1ACE44 8039ADC4 46020000 */  add.s      $f0, $f0, $f2
/* 1ACE48 8039ADC8 3C013F80 */  lui        $at, 0x3f80
/* 1ACE4C 8039ADCC 44811000 */  mtc1       $at, $f2
/* 1ACE50 8039ADD0 00000000 */  nop
/* 1ACE54 8039ADD4 E6A00058 */  swc1       $f0, 0x58($s5)
/* 1ACE58 8039ADD8 E7A20010 */  swc1       $f2, 0x10($sp)
/* 1ACE5C 8039ADDC AFA00014 */  sw         $zero, 0x14($sp)
/* 1ACE60 8039ADE0 AFA00018 */  sw         $zero, 0x18($sp)
/* 1ACE64 8039ADE4 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1ACE68 8039ADE8 8EA50058 */  lw         $a1, 0x58($s5)
/* 1ACE6C 8039ADEC 8EA6005C */  lw         $a2, 0x5c($s5)
/* 1ACE70 8039ADF0 8EA70060 */  lw         $a3, 0x60($s5)
/* 1ACE74 8039ADF4 0C02FC98 */  jal        func_800BF260
/* 1ACE78 8039ADF8 27A40020 */   addiu     $a0, $sp, 0x20
/* 1ACE7C 8039ADFC 27A20060 */  addiu      $v0, $sp, 0x60
/* 1ACE80 8039AE00 AFA20010 */  sw         $v0, 0x10($sp)
/* 1ACE84 8039AE04 27A20064 */  addiu      $v0, $sp, 0x64
/* 1ACE88 8039AE08 AFA20014 */  sw         $v0, 0x14($sp)
/* 1ACE8C 8039AE0C 27A20068 */  addiu      $v0, $sp, 0x68
/* 1ACE90 8039AE10 AFA20018 */  sw         $v0, 0x18($sp)
/* 1ACE94 8039AE14 8EA70068 */  lw         $a3, 0x68($s5)
/* 1ACE98 8039AE18 44800000 */  mtc1       $zero, $f0
/* 1ACE9C 8039AE1C 00000000 */  nop
/* 1ACEA0 8039AE20 44050000 */  mfc1       $a1, $f0
/* 1ACEA4 8039AE24 00000000 */  nop
/* 1ACEA8 8039AE28 27A40020 */  addiu      $a0, $sp, 0x20
/* 1ACEAC 8039AE2C 0C02F9DF */  jal        func_800BE77C
/* 1ACEB0 8039AE30 00A03021 */   addu      $a2, $a1, $zero
/* 1ACEB4 8039AE34 C7A00064 */  lwc1       $f0, 0x64($sp)
/* 1ACEB8 8039AE38 E6A00050 */  swc1       $f0, 0x50($s5)
/* 1ACEBC 8039AE3C C6A00044 */  lwc1       $f0, 0x44($s5)
/* 1ACEC0 8039AE40 C6A20050 */  lwc1       $f2, 0x50($s5)
/* 1ACEC4 8039AE44 46020000 */  add.s      $f0, $f0, $f2
/* 1ACEC8 8039AE48 3C014000 */  lui        $at, 0x4000
/* 1ACECC 8039AE4C 44814000 */  mtc1       $at, $f8
/* 1ACED0 8039AE50 00000000 */  nop
/* 1ACED4 8039AE54 E6A00044 */  swc1       $f0, 0x44($s5)
/* 1ACED8 8039AE58 C6A60044 */  lwc1       $f6, 0x44($s5)
/* 1ACEDC 8039AE5C 46083183 */  div.s      $f6, $f6, $f8
/* 1ACEE0 8039AE60 C6A20040 */  lwc1       $f2, 0x40($s5)
/* 1ACEE4 8039AE64 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1ACEE8 8039AE68 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1ACEEC 8039AE6C C7A40060 */  lwc1       $f4, 0x60($sp)
/* 1ACEF0 8039AE70 46001080 */  add.s      $f2, $f2, $f0
/* 1ACEF4 8039AE74 E6A4004C */  swc1       $f4, 0x4c($s5)
/* 1ACEF8 8039AE78 C6A0004C */  lwc1       $f0, 0x4c($s5)
/* 1ACEFC 8039AE7C 46001000 */  add.s      $f0, $f2, $f0
/* 1ACF00 8039AE80 E6A20040 */  swc1       $f2, 0x40($s5)
/* 1ACF04 8039AE84 E6A00040 */  swc1       $f0, 0x40($s5)
/* 1ACF08 8039AE88 C6A40040 */  lwc1       $f4, 0x40($s5)
/* 1ACF0C 8039AE8C 46082103 */  div.s      $f4, $f4, $f8
/* 1ACF10 8039AE90 C7A00068 */  lwc1       $f0, 0x68($sp)
/* 1ACF14 8039AE94 E6A00054 */  swc1       $f0, 0x54($s5)
/* 1ACF18 8039AE98 C6A00048 */  lwc1       $f0, 0x48($s5)
/* 1ACF1C 8039AE9C C6A20054 */  lwc1       $f2, 0x54($s5)
/* 1ACF20 8039AEA0 46020000 */  add.s      $f0, $f0, $f2
/* 1ACF24 8039AEA4 96A30072 */  lhu        $v1, 0x72($s5)
/* 1ACF28 8039AEA8 E6A00048 */  swc1       $f0, 0x48($s5)
/* 1ACF2C 8039AEAC 4600300D */  trunc.w.s  $f0, $f6
/* 1ACF30 8039AEB0 E6A00078 */  swc1       $f0, 0x78($s5)
/* 1ACF34 8039AEB4 4600200D */  trunc.w.s  $f0, $f4
/* 1ACF38 8039AEB8 E6A00074 */  swc1       $f0, 0x74($s5)
/* 1ACF3C 8039AEBC 24020002 */  addiu      $v0, $zero, 2
/* 1ACF40 8039AEC0 14620005 */  bne        $v1, $v0, .L8039AED8
/* 1ACF44 8039AEC4 3C04D9FD */   lui       $a0, 0xd9fd
/* 1ACF48 8039AEC8 26A40070 */  addiu      $a0, $s5, 0x70
/* 1ACF4C 8039AECC 0C02A1E2 */  jal        func_800A8788
/* 1ACF50 8039AED0 00002821 */   addu      $a1, $zero, $zero
/* 1ACF54 8039AED4 3C04D9FD */  lui        $a0, 0xd9fd
.L8039AED8:
/* 1ACF58 8039AED8 3484FFFF */  ori        $a0, $a0, 0xffff
/* 1ACF5C 8039AEDC 3C06D9FF */  lui        $a2, 0xd9ff
/* 1ACF60 8039AEE0 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 1ACF64 8039AEE4 3C050020 */  lui        $a1, 0x20
/* 1ACF68 8039AEE8 34A50405 */  ori        $a1, $a1, 0x405
/* 1ACF6C 8039AEEC 3C07E300 */  lui        $a3, 0xe300
/* 1ACF70 8039AEF0 34E71201 */  ori        $a3, $a3, 0x1201
/* 1ACF74 8039AEF4 3C0AE200 */  lui        $t2, 0xe200
/* 1ACF78 8039AEF8 354A001C */  ori        $t2, $t2, 0x1c
/* 1ACF7C 8039AEFC 3C080055 */  lui        $t0, 0x55
/* 1ACF80 8039AF00 35083078 */  ori        $t0, $t0, 0x3078
/* 1ACF84 8039AF04 3C0BFCFF */  lui        $t3, 0xfcff
/* 1ACF88 8039AF08 356BFFFF */  ori        $t3, $t3, 0xffff
/* 1ACF8C 8039AF0C 3C09FFFC */  lui        $t1, 0xfffc
/* 1ACF90 8039AF10 3529F279 */  ori        $t1, $t1, 0xf279
/* 1ACF94 8039AF14 3C0CE300 */  lui        $t4, 0xe300
/* 1ACF98 8039AF18 358C1001 */  ori        $t4, $t4, 0x1001
/* 1ACF9C 8039AF1C 3C0DF500 */  lui        $t5, 0xf500
/* 1ACFA0 8039AF20 35AD0100 */  ori        $t5, $t5, 0x100
/* 1ACFA4 8039AF24 3C0E0703 */  lui        $t6, 0x703
/* 1ACFA8 8039AF28 35CEC000 */  ori        $t6, $t6, 0xc000
/* 1ACFAC 8039AF2C 3C0F0701 */  lui        $t7, 0x701
/* 1ACFB0 8039AF30 35EF0040 */  ori        $t7, $t7, 0x40
/* 1ACFB4 8039AF34 3C100703 */  lui        $s0, 0x703
/* 1ACFB8 8039AF38 3610F800 */  ori        $s0, $s0, 0xf800
/* 1ACFBC 8039AF3C 3C14F540 */  lui        $s4, 0xf540
/* 1ACFC0 8039AF40 36940200 */  ori        $s4, $s4, 0x200
/* 1ACFC4 8039AF44 3C110001 */  lui        $s1, 1
/* 1ACFC8 8039AF48 36310040 */  ori        $s1, $s1, 0x40
/* 1ACFCC 8039AF4C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1ACFD0 8039AF50 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1ACFD4 8039AF54 3C120003 */  lui        $s2, 3
/* 1ACFD8 8039AF58 3652C03C */  ori        $s2, $s2, 0xc03c
/* 1ACFDC 8039AF5C 3C13DE00 */  lui        $s3, 0xde00
/* 1ACFE0 8039AF60 24430008 */  addiu      $v1, $v0, 8
/* 1ACFE4 8039AF64 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ACFE8 8039AF68 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ACFEC 8039AF6C 3C03800D */  lui        $v1, %hi(D_800D3D70)
/* 1ACFF0 8039AF70 24633D70 */  addiu      $v1, $v1, %lo(D_800D3D70)
/* 1ACFF4 8039AF74 AC430004 */  sw         $v1, 4($v0)
/* 1ACFF8 8039AF78 24430010 */  addiu      $v1, $v0, 0x10
/* 1ACFFC 8039AF7C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD000 8039AF80 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD004 8039AF84 24430018 */  addiu      $v1, $v0, 0x18
/* 1AD008 8039AF88 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD00C 8039AF8C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD010 8039AF90 24430020 */  addiu      $v1, $v0, 0x20
/* 1AD014 8039AF94 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD018 8039AF98 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD01C 8039AF9C 24032000 */  addiu      $v1, $zero, 0x2000
/* 1AD020 8039AFA0 AC43001C */  sw         $v1, 0x1c($v0)
/* 1AD024 8039AFA4 24430028 */  addiu      $v1, $v0, 0x28
/* 1AD028 8039AFA8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD02C 8039AFAC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD030 8039AFB0 24430030 */  addiu      $v1, $v0, 0x30
/* 1AD034 8039AFB4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD038 8039AFB8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD03C 8039AFBC 24430038 */  addiu      $v1, $v0, 0x38
/* 1AD040 8039AFC0 AC450014 */  sw         $a1, 0x14($v0)
/* 1AD044 8039AFC4 3C05E700 */  lui        $a1, 0xe700
/* 1AD048 8039AFC8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD04C 8039AFCC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD050 8039AFD0 24430040 */  addiu      $v1, $v0, 0x40
/* 1AD054 8039AFD4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD058 8039AFD8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD05C 8039AFDC 34038000 */  ori        $v1, $zero, 0x8000
/* 1AD060 8039AFE0 AC43003C */  sw         $v1, 0x3c($v0)
/* 1AD064 8039AFE4 24430048 */  addiu      $v1, $v0, 0x48
/* 1AD068 8039AFE8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD06C 8039AFEC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD070 8039AFF0 3C03FD10 */  lui        $v1, 0xfd10
/* 1AD074 8039AFF4 AC430040 */  sw         $v1, 0x40($v0)
/* 1AD078 8039AFF8 3C03803A */  lui        $v1, %hi(D_803A2898_1B4918)
/* 1AD07C 8039AFFC 24632898 */  addiu      $v1, $v1, %lo(D_803A2898_1B4918)
/* 1AD080 8039B000 AC430044 */  sw         $v1, 0x44($v0)
/* 1AD084 8039B004 24430050 */  addiu      $v1, $v0, 0x50
/* 1AD088 8039B008 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD08C 8039B00C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD090 8039B010 3C03E800 */  lui        $v1, 0xe800
/* 1AD094 8039B014 AC430048 */  sw         $v1, 0x48($v0)
/* 1AD098 8039B018 24430058 */  addiu      $v1, $v0, 0x58
/* 1AD09C 8039B01C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD0A0 8039B020 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD0A4 8039B024 3C030700 */  lui        $v1, 0x700
/* 1AD0A8 8039B028 AC440008 */  sw         $a0, 8($v0)
/* 1AD0AC 8039B02C 3C04E600 */  lui        $a0, 0xe600
/* 1AD0B0 8039B030 AC530000 */  sw         $s3, ($v0)
/* 1AD0B4 8039B034 AC40000C */  sw         $zero, 0xc($v0)
/* 1AD0B8 8039B038 AC460010 */  sw         $a2, 0x10($v0)
/* 1AD0BC 8039B03C AC470018 */  sw         $a3, 0x18($v0)
/* 1AD0C0 8039B040 AC4A0020 */  sw         $t2, 0x20($v0)
/* 1AD0C4 8039B044 AC480024 */  sw         $t0, 0x24($v0)
/* 1AD0C8 8039B048 AC4B0028 */  sw         $t3, 0x28($v0)
/* 1AD0CC 8039B04C AC49002C */  sw         $t1, 0x2c($v0)
/* 1AD0D0 8039B050 AC450030 */  sw         $a1, 0x30($v0)
/* 1AD0D4 8039B054 AC400034 */  sw         $zero, 0x34($v0)
/* 1AD0D8 8039B058 AC4C0038 */  sw         $t4, 0x38($v0)
/* 1AD0DC 8039B05C AC40004C */  sw         $zero, 0x4c($v0)
/* 1AD0E0 8039B060 AC4D0050 */  sw         $t5, 0x50($v0)
/* 1AD0E4 8039B064 AC430054 */  sw         $v1, 0x54($v0)
/* 1AD0E8 8039B068 3C03F000 */  lui        $v1, 0xf000
/* 1AD0EC 8039B06C AC430060 */  sw         $v1, 0x60($v0)
/* 1AD0F0 8039B070 3C03FD50 */  lui        $v1, 0xfd50
/* 1AD0F4 8039B074 AC430070 */  sw         $v1, 0x70($v0)
/* 1AD0F8 8039B078 3C03803A */  lui        $v1, %hi(D_803A28B8_1B4938)
/* 1AD0FC 8039B07C 246328B8 */  addiu      $v1, $v1, %lo(D_803A28B8_1B4938)
/* 1AD100 8039B080 AC430074 */  sw         $v1, 0x74($v0)
/* 1AD104 8039B084 3C03F550 */  lui        $v1, 0xf550
/* 1AD108 8039B088 AC430078 */  sw         $v1, 0x78($v0)
/* 1AD10C 8039B08C 3C03F300 */  lui        $v1, 0xf300
/* 1AD110 8039B090 AC430088 */  sw         $v1, 0x88($v0)
/* 1AD114 8039B094 3C03F200 */  lui        $v1, 0xf200
/* 1AD118 8039B098 AC440058 */  sw         $a0, 0x58($v0)
/* 1AD11C 8039B09C AC40005C */  sw         $zero, 0x5c($v0)
/* 1AD120 8039B0A0 AC4E0064 */  sw         $t6, 0x64($v0)
/* 1AD124 8039B0A4 AC450068 */  sw         $a1, 0x68($v0)
/* 1AD128 8039B0A8 AC40006C */  sw         $zero, 0x6c($v0)
/* 1AD12C 8039B0AC AC4F007C */  sw         $t7, 0x7c($v0)
/* 1AD130 8039B0B0 AC440080 */  sw         $a0, 0x80($v0)
/* 1AD134 8039B0B4 AC400084 */  sw         $zero, 0x84($v0)
/* 1AD138 8039B0B8 AC50008C */  sw         $s0, 0x8c($v0)
/* 1AD13C 8039B0BC AC450090 */  sw         $a1, 0x90($v0)
/* 1AD140 8039B0C0 AC400094 */  sw         $zero, 0x94($v0)
/* 1AD144 8039B0C4 AC540098 */  sw         $s4, 0x98($v0)
/* 1AD148 8039B0C8 AC51009C */  sw         $s1, 0x9c($v0)
/* 1AD14C 8039B0CC AC4300A0 */  sw         $v1, 0xa0($v0)
/* 1AD150 8039B0D0 AC5200A4 */  sw         $s2, 0xa4($v0)
/* 1AD154 8039B0D4 C6A0006C */  lwc1       $f0, 0x6c($s5)
/* 1AD158 8039B0D8 24430060 */  addiu      $v1, $v0, 0x60
/* 1AD15C 8039B0DC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD160 8039B0E0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD164 8039B0E4 24430068 */  addiu      $v1, $v0, 0x68
/* 1AD168 8039B0E8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD16C 8039B0EC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD170 8039B0F0 24430070 */  addiu      $v1, $v0, 0x70
/* 1AD174 8039B0F4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD178 8039B0F8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD17C 8039B0FC 24430078 */  addiu      $v1, $v0, 0x78
/* 1AD180 8039B100 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD184 8039B104 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD188 8039B108 24430080 */  addiu      $v1, $v0, 0x80
/* 1AD18C 8039B10C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD190 8039B110 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD194 8039B114 24430088 */  addiu      $v1, $v0, 0x88
/* 1AD198 8039B118 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD19C 8039B11C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD1A0 8039B120 24430090 */  addiu      $v1, $v0, 0x90
/* 1AD1A4 8039B124 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD1A8 8039B128 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD1AC 8039B12C 24430098 */  addiu      $v1, $v0, 0x98
/* 1AD1B0 8039B130 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD1B4 8039B134 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD1B8 8039B138 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AD1BC 8039B13C C6A00040 */  lwc1       $f0, 0x40($s5)
/* 1AD1C0 8039B140 244300A0 */  addiu      $v1, $v0, 0xa0
/* 1AD1C4 8039B144 244200A8 */  addiu      $v0, $v0, 0xa8
/* 1AD1C8 8039B148 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD1CC 8039B14C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD1D0 8039B150 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD1D4 8039B154 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AD1D8 8039B158 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1AD1DC 8039B15C C6A00044 */  lwc1       $f0, 0x44($s5)
/* 1AD1E0 8039B160 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1AD1E4 8039B164 C6A00048 */  lwc1       $f0, 0x48($s5)
/* 1AD1E8 8039B168 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1AD1EC 8039B16C 8EA50058 */  lw         $a1, 0x58($s5)
/* 1AD1F0 8039B170 8EA6005C */  lw         $a2, 0x5c($s5)
/* 1AD1F4 8039B174 8EA70060 */  lw         $a3, 0x60($s5)
/* 1AD1F8 8039B178 0C02FD0E */  jal        func_800BF438
/* 1AD1FC 8039B17C 02A02021 */   addu      $a0, $s5, $zero
/* 1AD200 8039B180 3C05DA38 */  lui        $a1, 0xda38
/* 1AD204 8039B184 3C048015 */  lui        $a0, %hi(gDisplayListHead)
/* 1AD208 8039B188 8C849F94 */  lw         $a0, %lo(gDisplayListHead)($a0)
/* 1AD20C 8039B18C 34A50003 */  ori        $a1, $a1, 3
/* 1AD210 8039B190 00001021 */  addu       $v0, $zero, $zero
/* 1AD214 8039B194 24830008 */  addiu      $v1, $a0, 8
/* 1AD218 8039B198 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD21C 8039B19C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD220 8039B1A0 24830010 */  addiu      $v1, $a0, 0x10
/* 1AD224 8039B1A4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD228 8039B1A8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD22C 8039B1AC 3C03803A */  lui        $v1, %hi(D_803A2998_1B4A18)
/* 1AD230 8039B1B0 24632998 */  addiu      $v1, $v1, %lo(D_803A2998_1B4A18)
/* 1AD234 8039B1B4 AC850000 */  sw         $a1, ($a0)
/* 1AD238 8039B1B8 AC950004 */  sw         $s5, 4($a0)
/* 1AD23C 8039B1BC AC930008 */  sw         $s3, 8($a0)
/* 1AD240 8039B1C0 080E6C73 */  j          .L8039B1CC
/* 1AD244 8039B1C4 AC83000C */   sw        $v1, 0xc($a0)
.L8039B1C8:
/* 1AD248 8039B1C8 24020001 */  addiu      $v0, $zero, 1
.L8039B1CC:
/* 1AD24C 8039B1CC 8FBF0090 */  lw         $ra, 0x90($sp)
/* 1AD250 8039B1D0 8FB5008C */  lw         $s5, 0x8c($sp)
/* 1AD254 8039B1D4 8FB40088 */  lw         $s4, 0x88($sp)
/* 1AD258 8039B1D8 8FB30084 */  lw         $s3, 0x84($sp)
/* 1AD25C 8039B1DC 8FB20080 */  lw         $s2, 0x80($sp)
/* 1AD260 8039B1E0 8FB1007C */  lw         $s1, 0x7c($sp)
/* 1AD264 8039B1E4 8FB00078 */  lw         $s0, 0x78($sp)
/* 1AD268 8039B1E8 27BD0098 */  addiu      $sp, $sp, 0x98
/* 1AD26C 8039B1EC 03E00008 */  jr         $ra
/* 1AD270 8039B1F0 00000000 */   nop

glabel func_8039B1F4
/* 1AD274 8039B1F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AD278 8039B1F8 8FA20028 */  lw         $v0, 0x28($sp)
/* 1AD27C 8039B1FC 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1AD280 8039B200 8FA80030 */  lw         $t0, 0x30($sp)
/* 1AD284 8039B204 00042400 */  sll        $a0, $a0, 0x10
/* 1AD288 8039B208 00042403 */  sra        $a0, $a0, 0x10
/* 1AD28C 8039B20C 00052C00 */  sll        $a1, $a1, 0x10
/* 1AD290 8039B210 00052C03 */  sra        $a1, $a1, 0x10
/* 1AD294 8039B214 00063400 */  sll        $a2, $a2, 0x10
/* 1AD298 8039B218 00063403 */  sra        $a2, $a2, 0x10
/* 1AD29C 8039B21C 00073C00 */  sll        $a3, $a3, 0x10
/* 1AD2A0 8039B220 00073C03 */  sra        $a3, $a3, 0x10
/* 1AD2A4 8039B224 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 1AD2A8 8039B228 AC243EA8 */  sw         $a0, %lo(D_803B3EA8)($at)
/* 1AD2AC 8039B22C 3C04803A */  lui        $a0, %hi(D_8039A840)
/* 1AD2B0 8039B230 2484A840 */  addiu      $a0, $a0, %lo(D_8039A840)
/* 1AD2B4 8039B234 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AD2B8 8039B238 AC253E20 */  sw         $a1, %lo(D_803B3E20)($at)
/* 1AD2BC 8039B23C 24050001 */  addiu      $a1, $zero, 1
/* 1AD2C0 8039B240 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1AD2C4 8039B244 AC263E5C */  sw         $a2, %lo(D_803B3E5C)($at)
/* 1AD2C8 8039B248 24060136 */  addiu      $a2, $zero, 0x136
/* 1AD2CC 8039B24C 3C01803B */  lui        $at, %hi(D_803B3EB8)
/* 1AD2D0 8039B250 AC273EB8 */  sw         $a3, %lo(D_803B3EB8)($at)
/* 1AD2D4 8039B254 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AD2D8 8039B258 00021400 */  sll        $v0, $v0, 0x10
/* 1AD2DC 8039B25C 00021403 */  sra        $v0, $v0, 0x10
/* 1AD2E0 8039B260 00031C00 */  sll        $v1, $v1, 0x10
/* 1AD2E4 8039B264 00031C03 */  sra        $v1, $v1, 0x10
/* 1AD2E8 8039B268 00084400 */  sll        $t0, $t0, 0x10
/* 1AD2EC 8039B26C 00084403 */  sra        $t0, $t0, 0x10
/* 1AD2F0 8039B270 3C01803B */  lui        $at, %hi(D_803B3EB4)
/* 1AD2F4 8039B274 AC223EB4 */  sw         $v0, %lo(D_803B3EB4)($at)
/* 1AD2F8 8039B278 3C01803B */  lui        $at, %hi(D_803B3E50)
/* 1AD2FC 8039B27C AC233E50 */  sw         $v1, %lo(D_803B3E50)($at)
/* 1AD300 8039B280 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 1AD304 8039B284 AC283EAC */  sw         $t0, %lo(D_803B3EAC)($at)
/* 1AD308 8039B288 0C025D06 */  jal        func_80097418
/* 1AD30C 8039B28C 24070001 */   addiu     $a3, $zero, 1
/* 1AD310 8039B290 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AD314 8039B294 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AD318 8039B298 03E00008 */  jr         $ra
/* 1AD31C 8039B29C 00000000 */   nop

glabel func_8039B2A0
/* 1AD320 8039B2A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AD324 8039B2A4 3C03803B */  lui        $v1, %hi(D_803B2D00)
/* 1AD328 8039B2A8 24632D00 */  addiu      $v1, $v1, %lo(D_803B2D00)
/* 1AD32C 8039B2AC 3C02803A */  lui        $v0, %hi(D_803A29E8_1B4A68)
/* 1AD330 8039B2B0 244229E8 */  addiu      $v0, $v0, %lo(D_803A29E8_1B4A68)
/* 1AD334 8039B2B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AD338 8039B2B8 24110001 */  addiu      $s1, $zero, 1
/* 1AD33C 8039B2BC AFB20018 */  sw         $s2, 0x18($sp)
/* 1AD340 8039B2C0 24720004 */  addiu      $s2, $v1, 4
/* 1AD344 8039B2C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AD348 8039B2C8 3C10803B */  lui        $s0, %hi(D_803B3120)
/* 1AD34C 8039B2CC 26103120 */  addiu      $s0, $s0, %lo(D_803B3120)
/* 1AD350 8039B2D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AD354 8039B2D4 AC620000 */  sw         $v0, ($v1)
.L8039B2D8:
/* 1AD358 8039B2D8 02002021 */  addu       $a0, $s0, $zero
/* 1AD35C 8039B2DC 3C05001E */  lui        $a1, 0x1e
/* 1AD360 8039B2E0 24A59000 */  addiu      $a1, $a1, -0x7000
/* 1AD364 8039B2E4 3C06800D */  lui        $a2, %hi(D_800D6AD0)
/* 1AD368 8039B2E8 24C66AD0 */  addiu      $a2, $a2, %lo(D_800D6AD0)
/* 1AD36C 8039B2EC 0C0264C3 */  jal        func_8009930C
/* 1AD370 8039B2F0 26270842 */   addiu     $a3, $s1, 0x842
/* 1AD374 8039B2F4 AE500000 */  sw         $s0, ($s2)
/* 1AD378 8039B2F8 26520004 */  addiu      $s2, $s2, 4
/* 1AD37C 8039B2FC 26310001 */  addiu      $s1, $s1, 1
/* 1AD380 8039B300 2A220004 */  slti       $v0, $s1, 4
/* 1AD384 8039B304 1440FFF4 */  bnez       $v0, .L8039B2D8
/* 1AD388 8039B308 26100410 */   addiu     $s0, $s0, 0x410
/* 1AD38C 8039B30C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AD390 8039B310 8FB20018 */  lw         $s2, 0x18($sp)
/* 1AD394 8039B314 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AD398 8039B318 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AD39C 8039B31C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AD3A0 8039B320 03E00008 */  jr         $ra
/* 1AD3A4 8039B324 00000000 */   nop

glabel func_8039B328
/* 1AD3A8 8039B328 03E00008 */  jr         $ra
/* 1AD3AC 8039B32C 00000000 */   nop

glabel func_8039B330_1AD3B0
/* 1AD3B0 8039B330 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AD3B4 8039B334 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AD3B8 8039B338 00808021 */  addu       $s0, $a0, $zero
/* 1AD3BC 8039B33C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AD3C0 8039B340 AFB20018 */  sw         $s2, 0x18($sp)
/* 1AD3C4 8039B344 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AD3C8 8039B348 9603001C */  lhu        $v1, 0x1c($s0)
/* 1AD3CC 8039B34C 24120001 */  addiu      $s2, $zero, 1
/* 1AD3D0 8039B350 10720031 */  beq        $v1, $s2, .L8039B418
/* 1AD3D4 8039B354 28620002 */   slti      $v0, $v1, 2
/* 1AD3D8 8039B358 50400005 */  beql       $v0, $zero, .L8039B370
/* 1AD3DC 8039B35C 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AD3E0 8039B360 10600007 */  beqz       $v1, .L8039B380
/* 1AD3E4 8039B364 00000000 */   nop
/* 1AD3E8 8039B368 080E6D2D */  j          .L8039B4B4
/* 1AD3EC 8039B36C 00000000 */   nop
.L8039B370:
/* 1AD3F0 8039B370 10620031 */  beq        $v1, $v0, .L8039B438
/* 1AD3F4 8039B374 00000000 */   nop
/* 1AD3F8 8039B378 080E6D2D */  j          .L8039B4B4
/* 1AD3FC 8039B37C 00000000 */   nop
.L8039B380:
/* 1AD400 8039B380 3C02803B */  lui        $v0, %hi(D_803B3E34)
/* 1AD404 8039B384 8C423E34 */  lw         $v0, %lo(D_803B3E34)($v0)
/* 1AD408 8039B388 8E03000C */  lw         $v1, 0xc($s0)
/* 1AD40C 8039B38C 000211C0 */  sll        $v0, $v0, 7
/* 1AD410 8039B390 10720010 */  beq        $v1, $s2, .L8039B3D4
/* 1AD414 8039B394 24510020 */   addiu     $s1, $v0, 0x20
/* 1AD418 8039B398 28620002 */  slti       $v0, $v1, 2
/* 1AD41C 8039B39C 50400005 */  beql       $v0, $zero, .L8039B3B4
/* 1AD420 8039B3A0 24020002 */   addiu     $v0, $zero, 2
/* 1AD424 8039B3A4 10600007 */  beqz       $v1, .L8039B3C4
/* 1AD428 8039B3A8 00000000 */   nop
/* 1AD42C 8039B3AC 080E6CFF */  j          .L8039B3FC
/* 1AD430 8039B3B0 00000000 */   nop
.L8039B3B4:
/* 1AD434 8039B3B4 1062000B */  beq        $v1, $v0, .L8039B3E4
/* 1AD438 8039B3B8 00000000 */   nop
/* 1AD43C 8039B3BC 080E6CFF */  j          .L8039B3FC
/* 1AD440 8039B3C0 00000000 */   nop
.L8039B3C4:
/* 1AD444 8039B3C4 0C032663 */  jal        func_800C998C
/* 1AD448 8039B3C8 02202021 */   addu      $a0, $s1, $zero
/* 1AD44C 8039B3CC 080E6CFC */  j          .L8039B3F0
/* 1AD450 8039B3D0 AE020014 */   sw        $v0, 0x14($s0)
.L8039B3D4:
/* 1AD454 8039B3D4 0C025E63 */  jal        func_8009798C
/* 1AD458 8039B3D8 02202021 */   addu      $a0, $s1, $zero
/* 1AD45C 8039B3DC 080E6CFC */  j          .L8039B3F0
/* 1AD460 8039B3E0 AE020014 */   sw        $v0, 0x14($s0)
.L8039B3E4:
/* 1AD464 8039B3E4 0C026127 */  jal        func_8009849C
/* 1AD468 8039B3E8 02202021 */   addu      $a0, $s1, $zero
/* 1AD46C 8039B3EC AE020014 */  sw         $v0, 0x14($s0)
.L8039B3F0:
/* 1AD470 8039B3F0 00402021 */  addu       $a0, $v0, $zero
/* 1AD474 8039B3F4 0C030134 */  jal        bzero
/* 1AD478 8039B3F8 02202821 */   addu      $a1, $s1, $zero
.L8039B3FC:
/* 1AD47C 8039B3FC 8E040014 */  lw         $a0, 0x14($s0)
/* 1AD480 8039B400 0C0E6D82 */  jal        func_8039B608_1AD688
/* 1AD484 8039B404 00000000 */   nop
/* 1AD488 8039B408 00001021 */  addu       $v0, $zero, $zero
/* 1AD48C 8039B40C 24030001 */  addiu      $v1, $zero, 1
/* 1AD490 8039B410 080E6D2F */  j          .L8039B4BC
/* 1AD494 8039B414 A603001C */   sh        $v1, 0x1c($s0)
.L8039B418:
/* 1AD498 8039B418 8E040014 */  lw         $a0, 0x14($s0)
/* 1AD49C 8039B41C 0C0E6E0A */  jal        func_8039B828_1AD8A8
/* 1AD4A0 8039B420 00000000 */   nop
/* 1AD4A4 8039B424 10400002 */  beqz       $v0, .L8039B430
/* 1AD4A8 8039B428 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AD4AC 8039B42C A602001C */  sh         $v0, 0x1c($s0)
.L8039B430:
/* 1AD4B0 8039B430 080E6D2F */  j          .L8039B4BC
/* 1AD4B4 8039B434 00001021 */   addu      $v0, $zero, $zero
.L8039B438:
/* 1AD4B8 8039B438 8E040014 */  lw         $a0, 0x14($s0)
/* 1AD4BC 8039B43C 0C0E6E08 */  jal        func_8039B820_1AD8A0
/* 1AD4C0 8039B440 00000000 */   nop
/* 1AD4C4 8039B444 8E03000C */  lw         $v1, 0xc($s0)
/* 1AD4C8 8039B448 10720010 */  beq        $v1, $s2, .L8039B48C
/* 1AD4CC 8039B44C 28620002 */   slti      $v0, $v1, 2
/* 1AD4D0 8039B450 50400005 */  beql       $v0, $zero, .L8039B468
/* 1AD4D4 8039B454 24020002 */   addiu     $v0, $zero, 2
/* 1AD4D8 8039B458 10600007 */  beqz       $v1, .L8039B478
/* 1AD4DC 8039B45C 24020001 */   addiu     $v0, $zero, 1
/* 1AD4E0 8039B460 080E6D2F */  j          .L8039B4BC
/* 1AD4E4 8039B464 00000000 */   nop
.L8039B468:
/* 1AD4E8 8039B468 1062000D */  beq        $v1, $v0, .L8039B4A0
/* 1AD4EC 8039B46C 24020001 */   addiu     $v0, $zero, 1
/* 1AD4F0 8039B470 080E6D2F */  j          .L8039B4BC
/* 1AD4F4 8039B474 00000000 */   nop
.L8039B478:
/* 1AD4F8 8039B478 8E040014 */  lw         $a0, 0x14($s0)
/* 1AD4FC 8039B47C 0C0326A1 */  jal        func_800C9A84
/* 1AD500 8039B480 00000000 */   nop
/* 1AD504 8039B484 080E6D2F */  j          .L8039B4BC
/* 1AD508 8039B488 24020001 */   addiu     $v0, $zero, 1
.L8039B48C:
/* 1AD50C 8039B48C 8E040014 */  lw         $a0, 0x14($s0)
/* 1AD510 8039B490 0C025EC3 */  jal        func_80097B0C
/* 1AD514 8039B494 00000000 */   nop
/* 1AD518 8039B498 080E6D2F */  j          .L8039B4BC
/* 1AD51C 8039B49C 24020001 */   addiu     $v0, $zero, 1
.L8039B4A0:
/* 1AD520 8039B4A0 8E040014 */  lw         $a0, 0x14($s0)
/* 1AD524 8039B4A4 0C026187 */  jal        func_8009861C
/* 1AD528 8039B4A8 00000000 */   nop
/* 1AD52C 8039B4AC 080E6D2F */  j          .L8039B4BC
/* 1AD530 8039B4B0 24020001 */   addiu     $v0, $zero, 1
.L8039B4B4:
/* 1AD534 8039B4B4 0C032934 */  jal        func_800CA4D0
/* 1AD538 8039B4B8 00000000 */   nop
.L8039B4BC:
/* 1AD53C 8039B4BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AD540 8039B4C0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1AD544 8039B4C4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AD548 8039B4C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AD54C 8039B4CC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AD550 8039B4D0 03E00008 */  jr         $ra
/* 1AD554 8039B4D4 00000000 */   nop

glabel func_8039B4D8_1AD558
/* 1AD558 8039B4D8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 1AD55C 8039B4DC AFB10074 */  sw         $s1, 0x74($sp)
/* 1AD560 8039B4E0 00808821 */  addu       $s1, $a0, $zero
/* 1AD564 8039B4E4 AFB00070 */  sw         $s0, 0x70($sp)
/* 1AD568 8039B4E8 00A08021 */  addu       $s0, $a1, $zero
/* 1AD56C 8039B4EC 24040004 */  addiu      $a0, $zero, 4
/* 1AD570 8039B4F0 AFBF0078 */  sw         $ra, 0x78($sp)
/* 1AD574 8039B4F4 AE000040 */  sw         $zero, 0x40($s0)
/* 1AD578 8039B4F8 AE000044 */  sw         $zero, 0x44($s0)
/* 1AD57C 8039B4FC 0C02591A */  jal        func_80096468
/* 1AD580 8039B500 AE000048 */   sw        $zero, 0x48($s0)
/* 1AD584 8039B504 24420004 */  addiu      $v0, $v0, 4
/* 1AD588 8039B508 A6020074 */  sh         $v0, 0x74($s0)
/* 1AD58C 8039B50C 86020074 */  lh         $v0, 0x74($s0)
/* 1AD590 8039B510 3C014080 */  lui        $at, 0x4080
/* 1AD594 8039B514 44810000 */  mtc1       $at, $f0
/* 1AD598 8039B518 00000000 */  nop
/* 1AD59C 8039B51C 44821000 */  mtc1       $v0, $f2
/* 1AD5A0 8039B520 00000000 */  nop
/* 1AD5A4 8039B524 468010A0 */  cvt.s.w    $f2, $f2
/* 1AD5A8 8039B528 46020003 */  div.s      $f0, $f0, $f2
/* 1AD5AC 8039B52C 86020074 */  lh         $v0, 0x74($s0)
/* 1AD5B0 8039B530 AE00006C */  sw         $zero, 0x6c($s0)
/* 1AD5B4 8039B534 E6000070 */  swc1       $f0, 0x70($s0)
/* 1AD5B8 8039B538 C6220008 */  lwc1       $f2, 8($s1)
/* 1AD5BC 8039B53C 44820000 */  mtc1       $v0, $f0
/* 1AD5C0 8039B540 00000000 */  nop
/* 1AD5C4 8039B544 46800020 */  cvt.s.w    $f0, $f0
/* 1AD5C8 8039B548 46001003 */  div.s      $f0, $f2, $f0
/* 1AD5CC 8039B54C 3C013F80 */  lui        $at, 0x3f80
/* 1AD5D0 8039B550 44812000 */  mtc1       $at, $f4
/* 1AD5D4 8039B554 00000000 */  nop
/* 1AD5D8 8039B558 E6020064 */  swc1       $f2, 0x64($s0)
/* 1AD5DC 8039B55C E6000068 */  swc1       $f0, 0x68($s0)
/* 1AD5E0 8039B560 E7A40010 */  swc1       $f4, 0x10($sp)
/* 1AD5E4 8039B564 AFA00014 */  sw         $zero, 0x14($sp)
/* 1AD5E8 8039B568 AFA00018 */  sw         $zero, 0x18($sp)
/* 1AD5EC 8039B56C AFA0001C */  sw         $zero, 0x1c($sp)
/* 1AD5F0 8039B570 8E050058 */  lw         $a1, 0x58($s0)
/* 1AD5F4 8039B574 8E06005C */  lw         $a2, 0x5c($s0)
/* 1AD5F8 8039B578 8E070060 */  lw         $a3, 0x60($s0)
/* 1AD5FC 8039B57C 0C02FC98 */  jal        func_800BF260
/* 1AD600 8039B580 27A40020 */   addiu     $a0, $sp, 0x20
/* 1AD604 8039B584 27A20060 */  addiu      $v0, $sp, 0x60
/* 1AD608 8039B588 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AD60C 8039B58C 27A20064 */  addiu      $v0, $sp, 0x64
/* 1AD610 8039B590 AFA20014 */  sw         $v0, 0x14($sp)
/* 1AD614 8039B594 27A20068 */  addiu      $v0, $sp, 0x68
/* 1AD618 8039B598 AFA20018 */  sw         $v0, 0x18($sp)
/* 1AD61C 8039B59C 8E27000C */  lw         $a3, 0xc($s1)
/* 1AD620 8039B5A0 44800000 */  mtc1       $zero, $f0
/* 1AD624 8039B5A4 00000000 */  nop
/* 1AD628 8039B5A8 44050000 */  mfc1       $a1, $f0
/* 1AD62C 8039B5AC 00000000 */  nop
/* 1AD630 8039B5B0 27A40020 */  addiu      $a0, $sp, 0x20
/* 1AD634 8039B5B4 0C02F9DF */  jal        func_800BE77C
/* 1AD638 8039B5B8 00A03021 */   addu      $a2, $a1, $zero
/* 1AD63C 8039B5BC C7A60060 */  lwc1       $f6, 0x60($sp)
/* 1AD640 8039B5C0 3C013CA3 */  lui        $at, 0x3ca3
/* 1AD644 8039B5C4 3421D70A */  ori        $at, $at, 0xd70a
/* 1AD648 8039B5C8 44811000 */  mtc1       $at, $f2
/* 1AD64C 8039B5CC 00000000 */  nop
/* 1AD650 8039B5D0 46023183 */  div.s      $f6, $f6, $f2
/* 1AD654 8039B5D4 C7A40064 */  lwc1       $f4, 0x64($sp)
/* 1AD658 8039B5D8 46022103 */  div.s      $f4, $f4, $f2
/* 1AD65C 8039B5DC C7A00068 */  lwc1       $f0, 0x68($sp)
/* 1AD660 8039B5E0 46020003 */  div.s      $f0, $f0, $f2
/* 1AD664 8039B5E4 E606004C */  swc1       $f6, 0x4c($s0)
/* 1AD668 8039B5E8 E6040050 */  swc1       $f4, 0x50($s0)
/* 1AD66C 8039B5EC E6000054 */  swc1       $f0, 0x54($s0)
/* 1AD670 8039B5F0 8FBF0078 */  lw         $ra, 0x78($sp)
/* 1AD674 8039B5F4 8FB10074 */  lw         $s1, 0x74($sp)
/* 1AD678 8039B5F8 8FB00070 */  lw         $s0, 0x70($sp)
/* 1AD67C 8039B5FC 27BD0080 */  addiu      $sp, $sp, 0x80
/* 1AD680 8039B600 03E00008 */  jr         $ra
/* 1AD684 8039B604 00000000 */   nop

glabel func_8039B608_1AD688
/* 1AD688 8039B608 3C014120 */  lui        $at, 0x4120
/* 1AD68C 8039B60C 44810000 */  mtc1       $at, $f0
/* 1AD690 8039B610 00000000 */  nop
/* 1AD694 8039B614 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1AD698 8039B618 C4223E20 */  lwc1       $f2, %lo(D_803B3E20)($at)
/* 1AD69C 8039B61C 468010A0 */  cvt.s.w    $f2, $f2
/* 1AD6A0 8039B620 46001083 */  div.s      $f2, $f2, $f0
/* 1AD6A4 8039B624 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1AD6A8 8039B628 C4243E5C */  lwc1       $f4, %lo(D_803B3E5C)($at)
/* 1AD6AC 8039B62C 46802120 */  cvt.s.w    $f4, $f4
/* 1AD6B0 8039B630 46002103 */  div.s      $f4, $f4, $f0
/* 1AD6B4 8039B634 3C013CA3 */  lui        $at, 0x3ca3
/* 1AD6B8 8039B638 3421D70A */  ori        $at, $at, 0xd70a
/* 1AD6BC 8039B63C 44810000 */  mtc1       $at, $f0
/* 1AD6C0 8039B640 00000000 */  nop
/* 1AD6C4 8039B644 46001083 */  div.s      $f2, $f2, $f0
/* 1AD6C8 8039B648 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1AD6CC 8039B64C AFB1007C */  sw         $s1, 0x7c($sp)
/* 1AD6D0 8039B650 00808821 */  addu       $s1, $a0, $zero
/* 1AD6D4 8039B654 3C02803B */  lui        $v0, %hi(D_803B3E34)
/* 1AD6D8 8039B658 8C423E34 */  lw         $v0, %lo(D_803B3E34)($v0)
/* 1AD6DC 8039B65C 3C03803B */  lui        $v1, %hi(D_803B3E30)
/* 1AD6E0 8039B660 8C633E30 */  lw         $v1, %lo(D_803B3E30)($v1)
/* 1AD6E4 8039B664 3C04803B */  lui        $a0, %hi(D_803B3EA8)
/* 1AD6E8 8039B668 8C843EA8 */  lw         $a0, %lo(D_803B3EA8)($a0)
/* 1AD6EC 8039B66C AFBF0084 */  sw         $ra, 0x84($sp)
/* 1AD6F0 8039B670 AFB20080 */  sw         $s2, 0x80($sp)
/* 1AD6F4 8039B674 AFB00078 */  sw         $s0, 0x78($sp)
/* 1AD6F8 8039B678 F7B40088 */  sdc1       $f20, 0x88($sp)
/* 1AD6FC 8039B67C AE220010 */  sw         $v0, 0x10($s1)
/* 1AD700 8039B680 8E250010 */  lw         $a1, 0x10($s1)
/* 1AD704 8039B684 00009021 */  addu       $s2, $zero, $zero
/* 1AD708 8039B688 26220020 */  addiu      $v0, $s1, 0x20
/* 1AD70C 8039B68C AE220014 */  sw         $v0, 0x14($s1)
/* 1AD710 8039B690 AE230000 */  sw         $v1, ($s1)
/* 1AD714 8039B694 A6240004 */  sh         $a0, 4($s1)
/* 1AD718 8039B698 E624000C */  swc1       $f4, 0xc($s1)
/* 1AD71C 8039B69C 18A00058 */  blez       $a1, .L8039B800
/* 1AD720 8039B6A0 E6220008 */   swc1      $f2, 8($s1)
/* 1AD724 8039B6A4 46000506 */  mov.s      $f20, $f0
/* 1AD728 8039B6A8 26300074 */  addiu      $s0, $s1, 0x74
.L8039B6AC:
/* 1AD72C 8039B6AC 3C04803B */  lui        $a0, %hi(D_803B3E4E)
/* 1AD730 8039B6B0 94843E4E */  lhu        $a0, %lo(D_803B3E4E)($a0)
/* 1AD734 8039B6B4 0C02591A */  jal        func_80096468
/* 1AD738 8039B6B8 26520001 */   addiu     $s2, $s2, 1
/* 1AD73C 8039B6BC 3C04803B */  lui        $a0, %hi(D_803B3E62)
/* 1AD740 8039B6C0 94843E62 */  lhu        $a0, %lo(D_803B3E62)($a0)
/* 1AD744 8039B6C4 0C02591A */  jal        func_80096468
/* 1AD748 8039B6C8 A6020022 */   sh        $v0, 0x22($s0)
/* 1AD74C 8039B6CC 0C02592F */  jal        func_800964BC
/* 1AD750 8039B6D0 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AD754 8039B6D4 3C04803B */  lui        $a0, %hi(D_803B3E62)
/* 1AD758 8039B6D8 94843E62 */  lhu        $a0, %lo(D_803B3E62)($a0)
/* 1AD75C 8039B6DC 44820000 */  mtc1       $v0, $f0
/* 1AD760 8039B6E0 00000000 */  nop
/* 1AD764 8039B6E4 46800020 */  cvt.s.w    $f0, $f0
/* 1AD768 8039B6E8 0C02591A */  jal        func_80096468
/* 1AD76C 8039B6EC E6000004 */   swc1      $f0, 4($s0)
/* 1AD770 8039B6F0 0C02592F */  jal        func_800964BC
/* 1AD774 8039B6F4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 1AD778 8039B6F8 24040004 */  addiu      $a0, $zero, 4
/* 1AD77C 8039B6FC 44820000 */  mtc1       $v0, $f0
/* 1AD780 8039B700 00000000 */  nop
/* 1AD784 8039B704 46800020 */  cvt.s.w    $f0, $f0
/* 1AD788 8039B708 E6000008 */  swc1       $f0, 8($s0)
/* 1AD78C 8039B70C AE00000C */  sw         $zero, 0xc($s0)
/* 1AD790 8039B710 AE00FFEC */  sw         $zero, -0x14($s0)
/* 1AD794 8039B714 AE00FFF0 */  sw         $zero, -0x10($s0)
/* 1AD798 8039B718 0C02591A */  jal        func_80096468
/* 1AD79C 8039B71C AE00FFF4 */   sw        $zero, -0xc($s0)
/* 1AD7A0 8039B720 24420004 */  addiu      $v0, $v0, 4
/* 1AD7A4 8039B724 A6020020 */  sh         $v0, 0x20($s0)
/* 1AD7A8 8039B728 86020020 */  lh         $v0, 0x20($s0)
/* 1AD7AC 8039B72C 3C014080 */  lui        $at, 0x4080
/* 1AD7B0 8039B730 44811000 */  mtc1       $at, $f2
/* 1AD7B4 8039B734 00000000 */  nop
/* 1AD7B8 8039B738 44820000 */  mtc1       $v0, $f0
/* 1AD7BC 8039B73C 00000000 */  nop
/* 1AD7C0 8039B740 46800020 */  cvt.s.w    $f0, $f0
/* 1AD7C4 8039B744 46001083 */  div.s      $f2, $f2, $f0
/* 1AD7C8 8039B748 86020020 */  lh         $v0, 0x20($s0)
/* 1AD7CC 8039B74C AE000018 */  sw         $zero, 0x18($s0)
/* 1AD7D0 8039B750 E602001C */  swc1       $f2, 0x1c($s0)
/* 1AD7D4 8039B754 C6220008 */  lwc1       $f2, 8($s1)
/* 1AD7D8 8039B758 44820000 */  mtc1       $v0, $f0
/* 1AD7DC 8039B75C 00000000 */  nop
/* 1AD7E0 8039B760 46800020 */  cvt.s.w    $f0, $f0
/* 1AD7E4 8039B764 46001003 */  div.s      $f0, $f2, $f0
/* 1AD7E8 8039B768 3C013F80 */  lui        $at, 0x3f80
/* 1AD7EC 8039B76C 44812000 */  mtc1       $at, $f4
/* 1AD7F0 8039B770 00000000 */  nop
/* 1AD7F4 8039B774 E6020010 */  swc1       $f2, 0x10($s0)
/* 1AD7F8 8039B778 E6000014 */  swc1       $f0, 0x14($s0)
/* 1AD7FC 8039B77C E7A40010 */  swc1       $f4, 0x10($sp)
/* 1AD800 8039B780 AFA00014 */  sw         $zero, 0x14($sp)
/* 1AD804 8039B784 AFA00018 */  sw         $zero, 0x18($sp)
/* 1AD808 8039B788 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1AD80C 8039B78C 8E050004 */  lw         $a1, 4($s0)
/* 1AD810 8039B790 8E060008 */  lw         $a2, 8($s0)
/* 1AD814 8039B794 8E07000C */  lw         $a3, 0xc($s0)
/* 1AD818 8039B798 0C02FC98 */  jal        func_800BF260
/* 1AD81C 8039B79C 27A40020 */   addiu     $a0, $sp, 0x20
/* 1AD820 8039B7A0 27A40020 */  addiu      $a0, $sp, 0x20
/* 1AD824 8039B7A4 27A20060 */  addiu      $v0, $sp, 0x60
/* 1AD828 8039B7A8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AD82C 8039B7AC 27A20064 */  addiu      $v0, $sp, 0x64
/* 1AD830 8039B7B0 AFA20014 */  sw         $v0, 0x14($sp)
/* 1AD834 8039B7B4 27A20068 */  addiu      $v0, $sp, 0x68
/* 1AD838 8039B7B8 AFA20018 */  sw         $v0, 0x18($sp)
/* 1AD83C 8039B7BC 8E27000C */  lw         $a3, 0xc($s1)
/* 1AD840 8039B7C0 00002821 */  addu       $a1, $zero, $zero
/* 1AD844 8039B7C4 0C02F9DF */  jal        func_800BE77C
/* 1AD848 8039B7C8 00A03021 */   addu      $a2, $a1, $zero
/* 1AD84C 8039B7CC C7A40060 */  lwc1       $f4, 0x60($sp)
/* 1AD850 8039B7D0 46142103 */  div.s      $f4, $f4, $f20
/* 1AD854 8039B7D4 C7A20064 */  lwc1       $f2, 0x64($sp)
/* 1AD858 8039B7D8 46141083 */  div.s      $f2, $f2, $f20
/* 1AD85C 8039B7DC C7A00068 */  lwc1       $f0, 0x68($sp)
/* 1AD860 8039B7E0 46140003 */  div.s      $f0, $f0, $f20
/* 1AD864 8039B7E4 E604FFF8 */  swc1       $f4, -8($s0)
/* 1AD868 8039B7E8 E602FFFC */  swc1       $f2, -4($s0)
/* 1AD86C 8039B7EC E6000000 */  swc1       $f0, ($s0)
/* 1AD870 8039B7F0 8E220010 */  lw         $v0, 0x10($s1)
/* 1AD874 8039B7F4 0242102A */  slt        $v0, $s2, $v0
/* 1AD878 8039B7F8 1440FFAC */  bnez       $v0, .L8039B6AC
/* 1AD87C 8039B7FC 26100080 */   addiu     $s0, $s0, 0x80
.L8039B800:
/* 1AD880 8039B800 8FBF0084 */  lw         $ra, 0x84($sp)
/* 1AD884 8039B804 8FB20080 */  lw         $s2, 0x80($sp)
/* 1AD888 8039B808 8FB1007C */  lw         $s1, 0x7c($sp)
/* 1AD88C 8039B80C 8FB00078 */  lw         $s0, 0x78($sp)
/* 1AD890 8039B810 D7B40088 */  ldc1       $f20, 0x88($sp)
/* 1AD894 8039B814 27BD0090 */  addiu      $sp, $sp, 0x90
/* 1AD898 8039B818 03E00008 */  jr         $ra
/* 1AD89C 8039B81C 00000000 */   nop

glabel func_8039B820_1AD8A0
/* 1AD8A0 8039B820 03E00008 */  jr         $ra
/* 1AD8A4 8039B824 00000000 */   nop

glabel func_8039B828_1AD8A8
/* 1AD8A8 8039B828 27BDFF18 */  addiu      $sp, $sp, -0xe8
/* 1AD8AC 8039B82C AFB200D0 */  sw         $s2, 0xd0($sp)
/* 1AD8B0 8039B830 00809021 */  addu       $s2, $a0, $zero
/* 1AD8B4 8039B834 AFBF00D8 */  sw         $ra, 0xd8($sp)
/* 1AD8B8 8039B838 AFB300D4 */  sw         $s3, 0xd4($sp)
/* 1AD8BC 8039B83C AFB100CC */  sw         $s1, 0xcc($sp)
/* 1AD8C0 8039B840 AFB000C8 */  sw         $s0, 0xc8($sp)
/* 1AD8C4 8039B844 F7B400E0 */  sdc1       $f20, 0xe0($sp)
/* 1AD8C8 8039B848 86420004 */  lh         $v0, 4($s2)
/* 1AD8CC 8039B84C 1040014B */  beqz       $v0, .L8039BD7C
/* 1AD8D0 8039B850 00401821 */   addu      $v1, $v0, $zero
/* 1AD8D4 8039B854 2463FFFF */  addiu      $v1, $v1, -1
/* 1AD8D8 8039B858 3C04D9FD */  lui        $a0, 0xd9fd
/* 1AD8DC 8039B85C 3484FFFF */  ori        $a0, $a0, 0xffff
/* 1AD8E0 8039B860 3C06D9FF */  lui        $a2, 0xd9ff
/* 1AD8E4 8039B864 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 1AD8E8 8039B868 3C050020 */  lui        $a1, 0x20
/* 1AD8EC 8039B86C 34A50405 */  ori        $a1, $a1, 0x405
/* 1AD8F0 8039B870 3C07E300 */  lui        $a3, 0xe300
/* 1AD8F4 8039B874 34E71201 */  ori        $a3, $a3, 0x1201
/* 1AD8F8 8039B878 3C0AE200 */  lui        $t2, 0xe200
/* 1AD8FC 8039B87C 354A001C */  ori        $t2, $t2, 0x1c
/* 1AD900 8039B880 3C080050 */  lui        $t0, 0x50
/* 1AD904 8039B884 35084B50 */  ori        $t0, $t0, 0x4b50
/* 1AD908 8039B888 3C0BFC11 */  lui        $t3, 0xfc11
/* 1AD90C 8039B88C 356B9623 */  ori        $t3, $t3, 0x9623
/* 1AD910 8039B890 3C09FF2F */  lui        $t1, 0xff2f
/* 1AD914 8039B894 3529FFFF */  ori        $t1, $t1, 0xffff
/* 1AD918 8039B898 3C0CE300 */  lui        $t4, 0xe300
/* 1AD91C 8039B89C 358C1001 */  ori        $t4, $t4, 0x1001
/* 1AD920 8039B8A0 3C0DF500 */  lui        $t5, 0xf500
/* 1AD924 8039B8A4 35AD0100 */  ori        $t5, $t5, 0x100
/* 1AD928 8039B8A8 3C0E0703 */  lui        $t6, 0x703
/* 1AD92C 8039B8AC 35CEC000 */  ori        $t6, $t6, 0xc000
/* 1AD930 8039B8B0 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AD934 8039B8B4 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AD938 8039B8B8 3C0FDA38 */  lui        $t7, 0xda38
/* 1AD93C 8039B8BC 35EF0003 */  ori        $t7, $t7, 3
/* 1AD940 8039B8C0 A6430004 */  sh         $v1, 4($s2)
/* 1AD944 8039B8C4 24430008 */  addiu      $v1, $v0, 8
/* 1AD948 8039B8C8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD94C 8039B8CC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD950 8039B8D0 3C03DE00 */  lui        $v1, 0xde00
/* 1AD954 8039B8D4 AC430000 */  sw         $v1, ($v0)
/* 1AD958 8039B8D8 3C03800D */  lui        $v1, %hi(D_800D3D70)
/* 1AD95C 8039B8DC 24633D70 */  addiu      $v1, $v1, %lo(D_800D3D70)
/* 1AD960 8039B8E0 AC430004 */  sw         $v1, 4($v0)
/* 1AD964 8039B8E4 24430010 */  addiu      $v1, $v0, 0x10
/* 1AD968 8039B8E8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD96C 8039B8EC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD970 8039B8F0 24430018 */  addiu      $v1, $v0, 0x18
/* 1AD974 8039B8F4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD978 8039B8F8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD97C 8039B8FC 24430020 */  addiu      $v1, $v0, 0x20
/* 1AD980 8039B900 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD984 8039B904 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD988 8039B908 24430028 */  addiu      $v1, $v0, 0x28
/* 1AD98C 8039B90C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD990 8039B910 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD994 8039B914 24430030 */  addiu      $v1, $v0, 0x30
/* 1AD998 8039B918 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD99C 8039B91C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD9A0 8039B920 24430038 */  addiu      $v1, $v0, 0x38
/* 1AD9A4 8039B924 AC440008 */  sw         $a0, 8($v0)
/* 1AD9A8 8039B928 3C04E700 */  lui        $a0, 0xe700
/* 1AD9AC 8039B92C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD9B0 8039B930 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD9B4 8039B934 24430040 */  addiu      $v1, $v0, 0x40
/* 1AD9B8 8039B938 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD9BC 8039B93C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD9C0 8039B940 34038000 */  ori        $v1, $zero, 0x8000
/* 1AD9C4 8039B944 AC43003C */  sw         $v1, 0x3c($v0)
/* 1AD9C8 8039B948 24430048 */  addiu      $v1, $v0, 0x48
/* 1AD9CC 8039B94C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD9D0 8039B950 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD9D4 8039B954 3C03FD10 */  lui        $v1, 0xfd10
/* 1AD9D8 8039B958 AC430040 */  sw         $v1, 0x40($v0)
/* 1AD9DC 8039B95C 3C03803A */  lui        $v1, %hi(D_803A29D8_1B4A58)
/* 1AD9E0 8039B960 246329D8 */  addiu      $v1, $v1, %lo(D_803A29D8_1B4A58)
/* 1AD9E4 8039B964 AC430044 */  sw         $v1, 0x44($v0)
/* 1AD9E8 8039B968 24430050 */  addiu      $v1, $v0, 0x50
/* 1AD9EC 8039B96C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AD9F0 8039B970 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AD9F4 8039B974 3C03E800 */  lui        $v1, 0xe800
/* 1AD9F8 8039B978 AC430048 */  sw         $v1, 0x48($v0)
/* 1AD9FC 8039B97C 24430058 */  addiu      $v1, $v0, 0x58
/* 1ADA00 8039B980 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADA04 8039B984 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ADA08 8039B988 3C030700 */  lui        $v1, 0x700
/* 1ADA0C 8039B98C AC40000C */  sw         $zero, 0xc($v0)
/* 1ADA10 8039B990 AC460010 */  sw         $a2, 0x10($v0)
/* 1ADA14 8039B994 AC450014 */  sw         $a1, 0x14($v0)
/* 1ADA18 8039B998 AC470018 */  sw         $a3, 0x18($v0)
/* 1ADA1C 8039B99C AC40001C */  sw         $zero, 0x1c($v0)
/* 1ADA20 8039B9A0 AC4A0020 */  sw         $t2, 0x20($v0)
/* 1ADA24 8039B9A4 AC480024 */  sw         $t0, 0x24($v0)
/* 1ADA28 8039B9A8 AC4B0028 */  sw         $t3, 0x28($v0)
/* 1ADA2C 8039B9AC AC49002C */  sw         $t1, 0x2c($v0)
/* 1ADA30 8039B9B0 AC440030 */  sw         $a0, 0x30($v0)
/* 1ADA34 8039B9B4 AC400034 */  sw         $zero, 0x34($v0)
/* 1ADA38 8039B9B8 AC4C0038 */  sw         $t4, 0x38($v0)
/* 1ADA3C 8039B9BC AC40004C */  sw         $zero, 0x4c($v0)
/* 1ADA40 8039B9C0 AC4D0050 */  sw         $t5, 0x50($v0)
/* 1ADA44 8039B9C4 AC430054 */  sw         $v1, 0x54($v0)
/* 1ADA48 8039B9C8 3C03E600 */  lui        $v1, 0xe600
/* 1ADA4C 8039B9CC AC430058 */  sw         $v1, 0x58($v0)
/* 1ADA50 8039B9D0 3C03F000 */  lui        $v1, 0xf000
/* 1ADA54 8039B9D4 AC40005C */  sw         $zero, 0x5c($v0)
/* 1ADA58 8039B9D8 AC430060 */  sw         $v1, 0x60($v0)
/* 1ADA5C 8039B9DC AC4E0064 */  sw         $t6, 0x64($v0)
/* 1ADA60 8039B9E0 AC440068 */  sw         $a0, 0x68($v0)
/* 1ADA64 8039B9E4 AC40006C */  sw         $zero, 0x6c($v0)
/* 1ADA68 8039B9E8 AC4F0070 */  sw         $t7, 0x70($v0)
/* 1ADA6C 8039B9EC 8E430000 */  lw         $v1, ($s2)
/* 1ADA70 8039B9F0 AC430074 */  sw         $v1, 0x74($v0)
/* 1ADA74 8039B9F4 8E440010 */  lw         $a0, 0x10($s2)
/* 1ADA78 8039B9F8 8E510014 */  lw         $s1, 0x14($s2)
/* 1ADA7C 8039B9FC 24430060 */  addiu      $v1, $v0, 0x60
/* 1ADA80 8039BA00 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADA84 8039BA04 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ADA88 8039BA08 24430068 */  addiu      $v1, $v0, 0x68
/* 1ADA8C 8039BA0C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADA90 8039BA10 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ADA94 8039BA14 24430070 */  addiu      $v1, $v0, 0x70
/* 1ADA98 8039BA18 24420078 */  addiu      $v0, $v0, 0x78
/* 1ADA9C 8039BA1C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADAA0 8039BA20 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1ADAA4 8039BA24 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADAA8 8039BA28 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADAAC 8039BA2C 188000D1 */  blez       $a0, .L8039BD74
/* 1ADAB0 8039BA30 00009821 */   addu      $s3, $zero, $zero
/* 1ADAB4 8039BA34 3C013CA3 */  lui        $at, 0x3ca3
/* 1ADAB8 8039BA38 3421D70A */  ori        $at, $at, 0xd70a
/* 1ADABC 8039BA3C 4481A000 */  mtc1       $at, $f20
/* 1ADAC0 8039BA40 00000000 */  nop
/* 1ADAC4 8039BA44 26300074 */  addiu      $s0, $s1, 0x74
.L8039BA48:
/* 1ADAC8 8039BA48 86020002 */  lh         $v0, 2($s0)
/* 1ADACC 8039BA4C 10400004 */  beqz       $v0, .L8039BA60
/* 1ADAD0 8039BA50 00401821 */   addu      $v1, $v0, $zero
/* 1ADAD4 8039BA54 2462FFFF */  addiu      $v0, $v1, -1
/* 1ADAD8 8039BA58 080E6F57 */  j          .L8039BD5C
/* 1ADADC 8039BA5C A6020002 */   sh        $v0, 2($s0)
.L8039BA60:
/* 1ADAE0 8039BA60 86020000 */  lh         $v0, ($s0)
/* 1ADAE4 8039BA64 1440003F */  bnez       $v0, .L8039BB64
/* 1ADAE8 8039BA68 00000000 */   nop
/* 1ADAEC 8039BA6C 86420004 */  lh         $v0, 4($s2)
/* 1ADAF0 8039BA70 28420009 */  slti       $v0, $v0, 9
/* 1ADAF4 8039BA74 544000BA */  bnezl      $v0, .L8039BD60
/* 1ADAF8 8039BA78 26730001 */   addiu     $s3, $s3, 1
/* 1ADAFC 8039BA7C 24040004 */  addiu      $a0, $zero, 4
/* 1ADB00 8039BA80 AE00FFCC */  sw         $zero, -0x34($s0)
/* 1ADB04 8039BA84 AE00FFD0 */  sw         $zero, -0x30($s0)
/* 1ADB08 8039BA88 0C02591A */  jal        func_80096468
/* 1ADB0C 8039BA8C AE00FFD4 */   sw        $zero, -0x2c($s0)
/* 1ADB10 8039BA90 24420004 */  addiu      $v0, $v0, 4
/* 1ADB14 8039BA94 A6020000 */  sh         $v0, ($s0)
/* 1ADB18 8039BA98 86020000 */  lh         $v0, ($s0)
/* 1ADB1C 8039BA9C 3C014080 */  lui        $at, 0x4080
/* 1ADB20 8039BAA0 44811000 */  mtc1       $at, $f2
/* 1ADB24 8039BAA4 00000000 */  nop
/* 1ADB28 8039BAA8 44820000 */  mtc1       $v0, $f0
/* 1ADB2C 8039BAAC 00000000 */  nop
/* 1ADB30 8039BAB0 46800020 */  cvt.s.w    $f0, $f0
/* 1ADB34 8039BAB4 46001083 */  div.s      $f2, $f2, $f0
/* 1ADB38 8039BAB8 86020000 */  lh         $v0, ($s0)
/* 1ADB3C 8039BABC AE00FFF8 */  sw         $zero, -8($s0)
/* 1ADB40 8039BAC0 E602FFFC */  swc1       $f2, -4($s0)
/* 1ADB44 8039BAC4 C6420008 */  lwc1       $f2, 8($s2)
/* 1ADB48 8039BAC8 44820000 */  mtc1       $v0, $f0
/* 1ADB4C 8039BACC 00000000 */  nop
/* 1ADB50 8039BAD0 46800020 */  cvt.s.w    $f0, $f0
/* 1ADB54 8039BAD4 46001003 */  div.s      $f0, $f2, $f0
/* 1ADB58 8039BAD8 3C013F80 */  lui        $at, 0x3f80
/* 1ADB5C 8039BADC 44812000 */  mtc1       $at, $f4
/* 1ADB60 8039BAE0 00000000 */  nop
/* 1ADB64 8039BAE4 E602FFF0 */  swc1       $f2, -0x10($s0)
/* 1ADB68 8039BAE8 E600FFF4 */  swc1       $f0, -0xc($s0)
/* 1ADB6C 8039BAEC E7A40010 */  swc1       $f4, 0x10($sp)
/* 1ADB70 8039BAF0 AFA00014 */  sw         $zero, 0x14($sp)
/* 1ADB74 8039BAF4 AFA00018 */  sw         $zero, 0x18($sp)
/* 1ADB78 8039BAF8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1ADB7C 8039BAFC 8E05FFE4 */  lw         $a1, -0x1c($s0)
/* 1ADB80 8039BB00 8E06FFE8 */  lw         $a2, -0x18($s0)
/* 1ADB84 8039BB04 8E07FFEC */  lw         $a3, -0x14($s0)
/* 1ADB88 8039BB08 0C02FC98 */  jal        func_800BF260
/* 1ADB8C 8039BB0C 27A40060 */   addiu     $a0, $sp, 0x60
/* 1ADB90 8039BB10 27A40060 */  addiu      $a0, $sp, 0x60
/* 1ADB94 8039BB14 27A200A0 */  addiu      $v0, $sp, 0xa0
/* 1ADB98 8039BB18 AFA20010 */  sw         $v0, 0x10($sp)
/* 1ADB9C 8039BB1C 27A200A4 */  addiu      $v0, $sp, 0xa4
/* 1ADBA0 8039BB20 AFA20014 */  sw         $v0, 0x14($sp)
/* 1ADBA4 8039BB24 27A200A8 */  addiu      $v0, $sp, 0xa8
/* 1ADBA8 8039BB28 AFA20018 */  sw         $v0, 0x18($sp)
/* 1ADBAC 8039BB2C 8E47000C */  lw         $a3, 0xc($s2)
/* 1ADBB0 8039BB30 00002821 */  addu       $a1, $zero, $zero
/* 1ADBB4 8039BB34 0C02F9DF */  jal        func_800BE77C
/* 1ADBB8 8039BB38 00A03021 */   addu      $a2, $a1, $zero
/* 1ADBBC 8039BB3C C7A400A0 */  lwc1       $f4, 0xa0($sp)
/* 1ADBC0 8039BB40 46142103 */  div.s      $f4, $f4, $f20
/* 1ADBC4 8039BB44 C7A200A4 */  lwc1       $f2, 0xa4($sp)
/* 1ADBC8 8039BB48 46141083 */  div.s      $f2, $f2, $f20
/* 1ADBCC 8039BB4C C7A000A8 */  lwc1       $f0, 0xa8($sp)
/* 1ADBD0 8039BB50 46140003 */  div.s      $f0, $f0, $f20
/* 1ADBD4 8039BB54 E604FFD8 */  swc1       $f4, -0x28($s0)
/* 1ADBD8 8039BB58 E602FFDC */  swc1       $f2, -0x24($s0)
/* 1ADBDC 8039BB5C 080E6F57 */  j          .L8039BD5C
/* 1ADBE0 8039BB60 E600FFE0 */   swc1      $f0, -0x20($s0)
.L8039BB64:
/* 1ADBE4 8039BB64 C600FFF0 */  lwc1       $f0, -0x10($s0)
/* 1ADBE8 8039BB68 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1ADBEC 8039BB6C C600FFCC */  lwc1       $f0, -0x34($s0)
/* 1ADBF0 8039BB70 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1ADBF4 8039BB74 C600FFD0 */  lwc1       $f0, -0x30($s0)
/* 1ADBF8 8039BB78 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1ADBFC 8039BB7C C600FFD4 */  lwc1       $f0, -0x2c($s0)
/* 1ADC00 8039BB80 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1ADC04 8039BB84 8E05FFE4 */  lw         $a1, -0x1c($s0)
/* 1ADC08 8039BB88 8E06FFE8 */  lw         $a2, -0x18($s0)
/* 1ADC0C 8039BB8C 8E07FFEC */  lw         $a3, -0x14($s0)
/* 1ADC10 8039BB90 0C02FD0E */  jal        func_800BF438
/* 1ADC14 8039BB94 02202021 */   addu      $a0, $s1, $zero
/* 1ADC18 8039BB98 3C070701 */  lui        $a3, 0x701
/* 1ADC1C 8039BB9C 34E78050 */  ori        $a3, $a3, 0x8050
/* 1ADC20 8039BBA0 3C08071F */  lui        $t0, 0x71f
/* 1ADC24 8039BBA4 3508F400 */  ori        $t0, $t0, 0xf400
/* 1ADC28 8039BBA8 3C048015 */  lui        $a0, %hi(gDisplayListHead)
/* 1ADC2C 8039BBAC 8C849F94 */  lw         $a0, %lo(gDisplayListHead)($a0)
/* 1ADC30 8039BBB0 3C09F540 */  lui        $t1, 0xf540
/* 1ADC34 8039BBB4 3C02DA38 */  lui        $v0, 0xda38
/* 1ADC38 8039BBB8 35290400 */  ori        $t1, $t1, 0x400
/* 1ADC3C 8039BBBC AC820000 */  sw         $v0, ($a0)
/* 1ADC40 8039BBC0 3C02FA00 */  lui        $v0, 0xfa00
/* 1ADC44 8039BBC4 AC910004 */  sw         $s1, 4($a0)
/* 1ADC48 8039BBC8 AC820008 */  sw         $v0, 8($a0)
/* 1ADC4C 8039BBCC 86030000 */  lh         $v1, ($s0)
/* 1ADC50 8039BBD0 3C060001 */  lui        $a2, 1
/* 1ADC54 8039BBD4 2402FF00 */  addiu      $v0, $zero, -0x100
/* 1ADC58 8039BBD8 00031940 */  sll        $v1, $v1, 5
/* 1ADC5C 8039BBDC 00621825 */  or         $v1, $v1, $v0
/* 1ADC60 8039BBE0 AC83000C */  sw         $v1, 0xc($a0)
/* 1ADC64 8039BBE4 C600FFF8 */  lwc1       $f0, -8($s0)
/* 1ADC68 8039BBE8 34C68050 */  ori        $a2, $a2, 0x8050
/* 1ADC6C 8039BBEC 3C050007 */  lui        $a1, 7
/* 1ADC70 8039BBF0 4600008D */  trunc.w.s  $f2, $f0
/* 1ADC74 8039BBF4 44021000 */  mfc1       $v0, $f2
/* 1ADC78 8039BBF8 00000000 */  nop
/* 1ADC7C 8039BBFC 00021080 */  sll        $v0, $v0, 2
/* 1ADC80 8039BC00 3C03803B */  lui        $v1, %hi(D_803B2D00)
/* 1ADC84 8039BC04 00621821 */  addu       $v1, $v1, $v0
/* 1ADC88 8039BC08 8C632D00 */  lw         $v1, %lo(D_803B2D00)($v1)
/* 1ADC8C 8039BC0C 34A5C0FC */  ori        $a1, $a1, 0xc0fc
/* 1ADC90 8039BC10 24820008 */  addiu      $v0, $a0, 8
/* 1ADC94 8039BC14 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADC98 8039BC18 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADC9C 8039BC1C 24820010 */  addiu      $v0, $a0, 0x10
/* 1ADCA0 8039BC20 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCA4 8039BC24 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCA8 8039BC28 24820018 */  addiu      $v0, $a0, 0x18
/* 1ADCAC 8039BC2C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCB0 8039BC30 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCB4 8039BC34 24820020 */  addiu      $v0, $a0, 0x20
/* 1ADCB8 8039BC38 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCBC 8039BC3C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCC0 8039BC40 24820028 */  addiu      $v0, $a0, 0x28
/* 1ADCC4 8039BC44 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCC8 8039BC48 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCCC 8039BC4C 24820030 */  addiu      $v0, $a0, 0x30
/* 1ADCD0 8039BC50 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCD4 8039BC54 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCD8 8039BC58 24820038 */  addiu      $v0, $a0, 0x38
/* 1ADCDC 8039BC5C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCE0 8039BC60 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCE4 8039BC64 24820040 */  addiu      $v0, $a0, 0x40
/* 1ADCE8 8039BC68 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCEC 8039BC6C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCF0 8039BC70 24820048 */  addiu      $v0, $a0, 0x48
/* 1ADCF4 8039BC74 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADCF8 8039BC78 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADCFC 8039BC7C 24820050 */  addiu      $v0, $a0, 0x50
/* 1ADD00 8039BC80 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1ADD04 8039BC84 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1ADD08 8039BC88 3C02FD50 */  lui        $v0, 0xfd50
/* 1ADD0C 8039BC8C AC820010 */  sw         $v0, 0x10($a0)
/* 1ADD10 8039BC90 3C02F550 */  lui        $v0, 0xf550
/* 1ADD14 8039BC94 AC820018 */  sw         $v0, 0x18($a0)
/* 1ADD18 8039BC98 3C02E600 */  lui        $v0, 0xe600
/* 1ADD1C 8039BC9C AC820020 */  sw         $v0, 0x20($a0)
/* 1ADD20 8039BCA0 3C02F300 */  lui        $v0, 0xf300
/* 1ADD24 8039BCA4 AC820028 */  sw         $v0, 0x28($a0)
/* 1ADD28 8039BCA8 3C02E700 */  lui        $v0, 0xe700
/* 1ADD2C 8039BCAC AC820030 */  sw         $v0, 0x30($a0)
/* 1ADD30 8039BCB0 3C02F200 */  lui        $v0, 0xf200
/* 1ADD34 8039BCB4 AC820040 */  sw         $v0, 0x40($a0)
/* 1ADD38 8039BCB8 3C02DE00 */  lui        $v0, 0xde00
/* 1ADD3C 8039BCBC AC820048 */  sw         $v0, 0x48($a0)
/* 1ADD40 8039BCC0 3C02803A */  lui        $v0, %hi(D_803A2E78_1B4EF8)
/* 1ADD44 8039BCC4 24422E78 */  addiu      $v0, $v0, %lo(D_803A2E78_1B4EF8)
/* 1ADD48 8039BCC8 AC87001C */  sw         $a3, 0x1c($a0)
/* 1ADD4C 8039BCCC AC800024 */  sw         $zero, 0x24($a0)
/* 1ADD50 8039BCD0 AC88002C */  sw         $t0, 0x2c($a0)
/* 1ADD54 8039BCD4 AC800034 */  sw         $zero, 0x34($a0)
/* 1ADD58 8039BCD8 AC890038 */  sw         $t1, 0x38($a0)
/* 1ADD5C 8039BCDC AC86003C */  sw         $a2, 0x3c($a0)
/* 1ADD60 8039BCE0 AC850044 */  sw         $a1, 0x44($a0)
/* 1ADD64 8039BCE4 24630010 */  addiu      $v1, $v1, 0x10
/* 1ADD68 8039BCE8 AC830014 */  sw         $v1, 0x14($a0)
/* 1ADD6C 8039BCEC AC82004C */  sw         $v0, 0x4c($a0)
/* 1ADD70 8039BCF0 C604FFCC */  lwc1       $f4, -0x34($s0)
/* 1ADD74 8039BCF4 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1ADD78 8039BCF8 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1ADD7C 8039BCFC C60AFFD0 */  lwc1       $f10, -0x30($s0)
/* 1ADD80 8039BD00 46002100 */  add.s      $f4, $f4, $f0
/* 1ADD84 8039BD04 C600FFDC */  lwc1       $f0, -0x24($s0)
/* 1ADD88 8039BD08 C608FFD4 */  lwc1       $f8, -0x2c($s0)
/* 1ADD8C 8039BD0C 46005280 */  add.s      $f10, $f10, $f0
/* 1ADD90 8039BD10 C600FFE0 */  lwc1       $f0, -0x20($s0)
/* 1ADD94 8039BD14 C606FFF0 */  lwc1       $f6, -0x10($s0)
/* 1ADD98 8039BD18 C602FFF8 */  lwc1       $f2, -8($s0)
/* 1ADD9C 8039BD1C 46004200 */  add.s      $f8, $f8, $f0
/* 1ADDA0 8039BD20 C600FFF4 */  lwc1       $f0, -0xc($s0)
/* 1ADDA4 8039BD24 96020000 */  lhu        $v0, ($s0)
/* 1ADDA8 8039BD28 C60CFFD8 */  lwc1       $f12, -0x28($s0)
/* 1ADDAC 8039BD2C 46003180 */  add.s      $f6, $f6, $f0
/* 1ADDB0 8039BD30 E604FFCC */  swc1       $f4, -0x34($s0)
/* 1ADDB4 8039BD34 C600FFFC */  lwc1       $f0, -4($s0)
/* 1ADDB8 8039BD38 460C2100 */  add.s      $f4, $f4, $f12
/* 1ADDBC 8039BD3C 2442FFFF */  addiu      $v0, $v0, -1
/* 1ADDC0 8039BD40 A6020000 */  sh         $v0, ($s0)
/* 1ADDC4 8039BD44 E60AFFD0 */  swc1       $f10, -0x30($s0)
/* 1ADDC8 8039BD48 46001080 */  add.s      $f2, $f2, $f0
/* 1ADDCC 8039BD4C E604FFCC */  swc1       $f4, -0x34($s0)
/* 1ADDD0 8039BD50 E608FFD4 */  swc1       $f8, -0x2c($s0)
/* 1ADDD4 8039BD54 E606FFF0 */  swc1       $f6, -0x10($s0)
/* 1ADDD8 8039BD58 E602FFF8 */  swc1       $f2, -8($s0)
.L8039BD5C:
/* 1ADDDC 8039BD5C 26730001 */  addiu      $s3, $s3, 1
.L8039BD60:
/* 1ADDE0 8039BD60 8E420010 */  lw         $v0, 0x10($s2)
/* 1ADDE4 8039BD64 26100080 */  addiu      $s0, $s0, 0x80
/* 1ADDE8 8039BD68 0262102A */  slt        $v0, $s3, $v0
/* 1ADDEC 8039BD6C 1440FF36 */  bnez       $v0, .L8039BA48
/* 1ADDF0 8039BD70 26310080 */   addiu     $s1, $s1, 0x80
.L8039BD74:
/* 1ADDF4 8039BD74 080E6F60 */  j          .L8039BD80
/* 1ADDF8 8039BD78 00001021 */   addu      $v0, $zero, $zero
.L8039BD7C:
/* 1ADDFC 8039BD7C 24020001 */  addiu      $v0, $zero, 1
.L8039BD80:
/* 1ADE00 8039BD80 8FBF00D8 */  lw         $ra, 0xd8($sp)
/* 1ADE04 8039BD84 8FB300D4 */  lw         $s3, 0xd4($sp)
/* 1ADE08 8039BD88 8FB200D0 */  lw         $s2, 0xd0($sp)
/* 1ADE0C 8039BD8C 8FB100CC */  lw         $s1, 0xcc($sp)
/* 1ADE10 8039BD90 8FB000C8 */  lw         $s0, 0xc8($sp)
/* 1ADE14 8039BD94 D7B400E0 */  ldc1       $f20, 0xe0($sp)
/* 1ADE18 8039BD98 27BD00E8 */  addiu      $sp, $sp, 0xe8
/* 1ADE1C 8039BD9C 03E00008 */  jr         $ra
/* 1ADE20 8039BDA0 00000000 */   nop

glabel func_8039BDA4
/* 1ADE24 8039BDA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1ADE28 8039BDA8 8FA20028 */  lw         $v0, 0x28($sp)
/* 1ADE2C 8039BDAC 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1ADE30 8039BDB0 00042400 */  sll        $a0, $a0, 0x10
/* 1ADE34 8039BDB4 00042403 */  sra        $a0, $a0, 0x10
/* 1ADE38 8039BDB8 00052C00 */  sll        $a1, $a1, 0x10
/* 1ADE3C 8039BDBC 00052C03 */  sra        $a1, $a1, 0x10
/* 1ADE40 8039BDC0 00063400 */  sll        $a2, $a2, 0x10
/* 1ADE44 8039BDC4 00063403 */  sra        $a2, $a2, 0x10
/* 1ADE48 8039BDC8 00073C00 */  sll        $a3, $a3, 0x10
/* 1ADE4C 8039BDCC 00073C03 */  sra        $a3, $a3, 0x10
/* 1ADE50 8039BDD0 3C01803B */  lui        $at, %hi(D_803B3E34)
/* 1ADE54 8039BDD4 AC243E34 */  sw         $a0, %lo(D_803B3E34)($at)
/* 1ADE58 8039BDD8 3C04803A */  lui        $a0, %hi(D_8039B330)
/* 1ADE5C 8039BDDC 2484B330 */  addiu      $a0, $a0, %lo(D_8039B330)
/* 1ADE60 8039BDE0 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 1ADE64 8039BDE4 AC253EA8 */  sw         $a1, %lo(D_803B3EA8)($at)
/* 1ADE68 8039BDE8 24050001 */  addiu      $a1, $zero, 1
/* 1ADE6C 8039BDEC 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 1ADE70 8039BDF0 AC263E20 */  sw         $a2, %lo(D_803B3E20)($at)
/* 1ADE74 8039BDF4 24060136 */  addiu      $a2, $zero, 0x136
/* 1ADE78 8039BDF8 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 1ADE7C 8039BDFC AC273E5C */  sw         $a3, %lo(D_803B3E5C)($at)
/* 1ADE80 8039BE00 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1ADE84 8039BE04 00021400 */  sll        $v0, $v0, 0x10
/* 1ADE88 8039BE08 00021403 */  sra        $v0, $v0, 0x10
/* 1ADE8C 8039BE0C 00031C00 */  sll        $v1, $v1, 0x10
/* 1ADE90 8039BE10 00031C03 */  sra        $v1, $v1, 0x10
/* 1ADE94 8039BE14 3C01803B */  lui        $at, %hi(D_803B3E60)
/* 1ADE98 8039BE18 AC223E60 */  sw         $v0, %lo(D_803B3E60)($at)
/* 1ADE9C 8039BE1C 3C01803B */  lui        $at, %hi(D_803B3E4C)
/* 1ADEA0 8039BE20 AC233E4C */  sw         $v1, %lo(D_803B3E4C)($at)
/* 1ADEA4 8039BE24 0C025D06 */  jal        func_80097418
/* 1ADEA8 8039BE28 24070001 */   addiu     $a3, $zero, 1
/* 1ADEAC 8039BE2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1ADEB0 8039BE30 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1ADEB4 8039BE34 03E00008 */  jr         $ra
/* 1ADEB8 8039BE38 00000000 */   nop
/* 1ADEBC 8039BE3C 00000000 */  nop

glabel func_8039BE40_1ADEC0
/* 1ADEC0 8039BE40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1ADEC4 8039BE44 AFB00010 */  sw         $s0, 0x10($sp)
/* 1ADEC8 8039BE48 00808021 */  addu       $s0, $a0, $zero
/* 1ADECC 8039BE4C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1ADED0 8039BE50 AFB10014 */  sw         $s1, 0x14($sp)
/* 1ADED4 8039BE54 9603001C */  lhu        $v1, 0x1c($s0)
/* 1ADED8 8039BE58 24110001 */  addiu      $s1, $zero, 1
/* 1ADEDC 8039BE5C 1071002D */  beq        $v1, $s1, .L8039BF14
/* 1ADEE0 8039BE60 28620002 */   slti      $v0, $v1, 2
/* 1ADEE4 8039BE64 50400005 */  beql       $v0, $zero, .L8039BE7C
/* 1ADEE8 8039BE68 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1ADEEC 8039BE6C 10600007 */  beqz       $v1, .L8039BE8C
/* 1ADEF0 8039BE70 00000000 */   nop
/* 1ADEF4 8039BE74 080E6FEC */  j          .L8039BFB0
/* 1ADEF8 8039BE78 00000000 */   nop
.L8039BE7C:
/* 1ADEFC 8039BE7C 1062002D */  beq        $v1, $v0, .L8039BF34
/* 1ADF00 8039BE80 00000000 */   nop
/* 1ADF04 8039BE84 080E6FEC */  j          .L8039BFB0
/* 1ADF08 8039BE88 00000000 */   nop
.L8039BE8C:
/* 1ADF0C 8039BE8C 8E03000C */  lw         $v1, 0xc($s0)
/* 1ADF10 8039BE90 1071000F */  beq        $v1, $s1, .L8039BED0
/* 1ADF14 8039BE94 28620002 */   slti      $v0, $v1, 2
/* 1ADF18 8039BE98 50400005 */  beql       $v0, $zero, .L8039BEB0
/* 1ADF1C 8039BE9C 24020002 */   addiu     $v0, $zero, 2
/* 1ADF20 8039BEA0 10600007 */  beqz       $v1, .L8039BEC0
/* 1ADF24 8039BEA4 00000000 */   nop
/* 1ADF28 8039BEA8 080E6FBE */  j          .L8039BEF8
/* 1ADF2C 8039BEAC 00000000 */   nop
.L8039BEB0:
/* 1ADF30 8039BEB0 1062000B */  beq        $v1, $v0, .L8039BEE0
/* 1ADF34 8039BEB4 00000000 */   nop
/* 1ADF38 8039BEB8 080E6FBE */  j          .L8039BEF8
/* 1ADF3C 8039BEBC 00000000 */   nop
.L8039BEC0:
/* 1ADF40 8039BEC0 0C032663 */  jal        func_800C998C
/* 1ADF44 8039BEC4 24040178 */   addiu     $a0, $zero, 0x178
/* 1ADF48 8039BEC8 080E6FBB */  j          .L8039BEEC
/* 1ADF4C 8039BECC AE020014 */   sw        $v0, 0x14($s0)
.L8039BED0:
/* 1ADF50 8039BED0 0C025E63 */  jal        func_8009798C
/* 1ADF54 8039BED4 24040178 */   addiu     $a0, $zero, 0x178
/* 1ADF58 8039BED8 080E6FBB */  j          .L8039BEEC
/* 1ADF5C 8039BEDC AE020014 */   sw        $v0, 0x14($s0)
.L8039BEE0:
/* 1ADF60 8039BEE0 0C026127 */  jal        func_8009849C
/* 1ADF64 8039BEE4 24040178 */   addiu     $a0, $zero, 0x178
/* 1ADF68 8039BEE8 AE020014 */  sw         $v0, 0x14($s0)
.L8039BEEC:
/* 1ADF6C 8039BEEC 00402021 */  addu       $a0, $v0, $zero
/* 1ADF70 8039BEF0 0C030134 */  jal        bzero
/* 1ADF74 8039BEF4 24050178 */   addiu     $a1, $zero, 0x178
.L8039BEF8:
/* 1ADF78 8039BEF8 8E040014 */  lw         $a0, 0x14($s0)
/* 1ADF7C 8039BEFC 0C0E6FF4 */  jal        func_8039BFD0_1AE050
/* 1ADF80 8039BF00 00000000 */   nop
/* 1ADF84 8039BF04 00001021 */  addu       $v0, $zero, $zero
/* 1ADF88 8039BF08 24030001 */  addiu      $v1, $zero, 1
/* 1ADF8C 8039BF0C 080E6FEE */  j          .L8039BFB8
/* 1ADF90 8039BF10 A603001C */   sh        $v1, 0x1c($s0)
.L8039BF14:
/* 1ADF94 8039BF14 8E040014 */  lw         $a0, 0x14($s0)
/* 1ADF98 8039BF18 0C0E7047 */  jal        func_8039C11C_1AE19C
/* 1ADF9C 8039BF1C 00000000 */   nop
/* 1ADFA0 8039BF20 10400002 */  beqz       $v0, .L8039BF2C
/* 1ADFA4 8039BF24 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1ADFA8 8039BF28 A602001C */  sh         $v0, 0x1c($s0)
.L8039BF2C:
/* 1ADFAC 8039BF2C 080E6FEE */  j          .L8039BFB8
/* 1ADFB0 8039BF30 00001021 */   addu      $v0, $zero, $zero
.L8039BF34:
/* 1ADFB4 8039BF34 8E040014 */  lw         $a0, 0x14($s0)
/* 1ADFB8 8039BF38 0C0E7034 */  jal        func_8039C0D0_1AE150
/* 1ADFBC 8039BF3C 00000000 */   nop
/* 1ADFC0 8039BF40 8E03000C */  lw         $v1, 0xc($s0)
/* 1ADFC4 8039BF44 10710010 */  beq        $v1, $s1, .L8039BF88
/* 1ADFC8 8039BF48 28620002 */   slti      $v0, $v1, 2
/* 1ADFCC 8039BF4C 50400005 */  beql       $v0, $zero, .L8039BF64
/* 1ADFD0 8039BF50 24020002 */   addiu     $v0, $zero, 2
/* 1ADFD4 8039BF54 10600007 */  beqz       $v1, .L8039BF74
/* 1ADFD8 8039BF58 24020001 */   addiu     $v0, $zero, 1
/* 1ADFDC 8039BF5C 080E6FEE */  j          .L8039BFB8
/* 1ADFE0 8039BF60 00000000 */   nop
.L8039BF64:
/* 1ADFE4 8039BF64 1062000D */  beq        $v1, $v0, .L8039BF9C
/* 1ADFE8 8039BF68 24020001 */   addiu     $v0, $zero, 1
/* 1ADFEC 8039BF6C 080E6FEE */  j          .L8039BFB8
/* 1ADFF0 8039BF70 00000000 */   nop
.L8039BF74:
/* 1ADFF4 8039BF74 8E040014 */  lw         $a0, 0x14($s0)
/* 1ADFF8 8039BF78 0C0326A1 */  jal        func_800C9A84
/* 1ADFFC 8039BF7C 00000000 */   nop
/* 1AE000 8039BF80 080E6FEE */  j          .L8039BFB8
/* 1AE004 8039BF84 24020001 */   addiu     $v0, $zero, 1
.L8039BF88:
/* 1AE008 8039BF88 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE00C 8039BF8C 0C025EC3 */  jal        func_80097B0C
/* 1AE010 8039BF90 00000000 */   nop
/* 1AE014 8039BF94 080E6FEE */  j          .L8039BFB8
/* 1AE018 8039BF98 24020001 */   addiu     $v0, $zero, 1
.L8039BF9C:
/* 1AE01C 8039BF9C 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE020 8039BFA0 0C026187 */  jal        func_8009861C
/* 1AE024 8039BFA4 00000000 */   nop
/* 1AE028 8039BFA8 080E6FEE */  j          .L8039BFB8
/* 1AE02C 8039BFAC 24020001 */   addiu     $v0, $zero, 1
.L8039BFB0:
/* 1AE030 8039BFB0 0C032934 */  jal        func_800CA4D0
/* 1AE034 8039BFB4 00000000 */   nop
.L8039BFB8:
/* 1AE038 8039BFB8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AE03C 8039BFBC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AE040 8039BFC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AE044 8039BFC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AE048 8039BFC8 03E00008 */  jr         $ra
/* 1AE04C 8039BFCC 00000000 */   nop

glabel func_8039BFD0_1AE050
/* 1AE050 8039BFD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1AE054 8039BFD4 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1AE058 8039BFD8 00809821 */  addu       $s3, $a0, $zero
/* 1AE05C 8039BFDC AFB20018 */  sw         $s2, 0x18($sp)
/* 1AE060 8039BFE0 00009021 */  addu       $s2, $zero, $zero
/* 1AE064 8039BFE4 AFB40020 */  sw         $s4, 0x20($sp)
/* 1AE068 8039BFE8 2414000A */  addiu      $s4, $zero, 0xa
/* 1AE06C 8039BFEC AFB00010 */  sw         $s0, 0x10($sp)
/* 1AE070 8039BFF0 02608021 */  addu       $s0, $s3, $zero
/* 1AE074 8039BFF4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AE078 8039BFF8 00008821 */  addu       $s1, $zero, $zero
/* 1AE07C 8039BFFC AFBF0024 */  sw         $ra, 0x24($sp)
.L8039C000:
/* 1AE080 8039C000 3C04803A */  lui        $a0, %hi(D_803A2EB0_1B4F30)
/* 1AE084 8039C004 00912021 */  addu       $a0, $a0, $s1
/* 1AE088 8039C008 84842EB0 */  lh         $a0, %lo(D_803A2EB0_1B4F30)($a0)
/* 1AE08C 8039C00C 00002821 */  addu       $a1, $zero, $zero
/* 1AE090 8039C010 0C027DAC */  jal        func_8009F6B0
/* 1AE094 8039C014 00003021 */   addu      $a2, $zero, $zero
/* 1AE098 8039C018 AE020000 */  sw         $v0, ($s0)
/* 1AE09C 8039C01C 90430066 */  lbu        $v1, 0x66($v0)
/* 1AE0A0 8039C020 34630021 */  ori        $v1, $v1, 0x21
/* 1AE0A4 8039C024 A0430066 */  sb         $v1, 0x66($v0)
/* 1AE0A8 8039C028 8E020000 */  lw         $v0, ($s0)
/* 1AE0AC 8039C02C A0540067 */  sb         $s4, 0x67($v0)
/* 1AE0B0 8039C030 3C01803A */  lui        $at, %hi(D_803A2EB4_1B4F34)
/* 1AE0B4 8039C034 00310821 */  addu       $at, $at, $s1
/* 1AE0B8 8039C038 C4202EB4 */  lwc1       $f0, %lo(D_803A2EB4_1B4F34)($at)
/* 1AE0BC 8039C03C E6000110 */  swc1       $f0, 0x110($s0)
/* 1AE0C0 8039C040 3C01803A */  lui        $at, %hi(D_803A2EB8_1B4F38)
/* 1AE0C4 8039C044 00310821 */  addu       $at, $at, $s1
/* 1AE0C8 8039C048 C4202EB8 */  lwc1       $f0, %lo(D_803A2EB8_1B4F38)($at)
/* 1AE0CC 8039C04C E6000120 */  swc1       $f0, 0x120($s0)
/* 1AE0D0 8039C050 3C01803A */  lui        $at, %hi(D_803A2EBC_1B4F3C)
/* 1AE0D4 8039C054 00310821 */  addu       $at, $at, $s1
/* 1AE0D8 8039C058 C4202EBC */  lwc1       $f0, %lo(D_803A2EBC_1B4F3C)($at)
/* 1AE0DC 8039C05C AE000140 */  sw         $zero, 0x140($s0)
/* 1AE0E0 8039C060 E6000130 */  swc1       $f0, 0x130($s0)
/* 1AE0E4 8039C064 3C01803A */  lui        $at, %hi(D_803A2EC0_1B4F40)
/* 1AE0E8 8039C068 00310821 */  addu       $at, $at, $s1
/* 1AE0EC 8039C06C C4202EC0 */  lwc1       $f0, %lo(D_803A2EC0_1B4F40)($at)
/* 1AE0F0 8039C070 E6000150 */  swc1       $f0, 0x150($s0)
/* 1AE0F4 8039C074 3C02803A */  lui        $v0, %hi(D_803A2EC4_1B4F44)
/* 1AE0F8 8039C078 00511021 */  addu       $v0, $v0, $s1
/* 1AE0FC 8039C07C 90422EC4 */  lbu        $v0, %lo(D_803A2EC4_1B4F44)($v0)
/* 1AE100 8039C080 26520001 */  addiu      $s2, $s2, 1
/* 1AE104 8039C084 26310018 */  addiu      $s1, $s1, 0x18
/* 1AE108 8039C088 44820000 */  mtc1       $v0, $f0
/* 1AE10C 8039C08C 00000000 */  nop
/* 1AE110 8039C090 46800020 */  cvt.s.w    $f0, $f0
/* 1AE114 8039C094 E6000160 */  swc1       $f0, 0x160($s0)
/* 1AE118 8039C098 2A420004 */  slti       $v0, $s2, 4
/* 1AE11C 8039C09C 1440FFD8 */  bnez       $v0, .L8039C000
/* 1AE120 8039C0A0 26100004 */   addiu     $s0, $s0, 4
/* 1AE124 8039C0A4 24020014 */  addiu      $v0, $zero, 0x14
/* 1AE128 8039C0A8 A6620170 */  sh         $v0, 0x170($s3)
/* 1AE12C 8039C0AC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1AE130 8039C0B0 8FB40020 */  lw         $s4, 0x20($sp)
/* 1AE134 8039C0B4 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1AE138 8039C0B8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1AE13C 8039C0BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AE140 8039C0C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AE144 8039C0C4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1AE148 8039C0C8 03E00008 */  jr         $ra
/* 1AE14C 8039C0CC 00000000 */   nop

glabel func_8039C0D0_1AE150
/* 1AE150 8039C0D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AE154 8039C0D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AE158 8039C0D8 00008821 */  addu       $s1, $zero, $zero
/* 1AE15C 8039C0DC AFB00010 */  sw         $s0, 0x10($sp)
/* 1AE160 8039C0E0 00808021 */  addu       $s0, $a0, $zero
/* 1AE164 8039C0E4 AFBF0018 */  sw         $ra, 0x18($sp)
.L8039C0E8:
/* 1AE168 8039C0E8 8E040000 */  lw         $a0, ($s0)
/* 1AE16C 8039C0EC 26100004 */  addiu      $s0, $s0, 4
/* 1AE170 8039C0F0 0C027E98 */  jal        func_8009FA60
/* 1AE174 8039C0F4 26310001 */   addiu     $s1, $s1, 1
/* 1AE178 8039C0F8 2A220004 */  slti       $v0, $s1, 4
/* 1AE17C 8039C0FC 1440FFFA */  bnez       $v0, .L8039C0E8
/* 1AE180 8039C100 00000000 */   nop
/* 1AE184 8039C104 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AE188 8039C108 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AE18C 8039C10C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AE190 8039C110 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AE194 8039C114 03E00008 */  jr         $ra
/* 1AE198 8039C118 00000000 */   nop

glabel func_8039C11C_1AE19C
/* 1AE19C 8039C11C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1AE1A0 8039C120 AFB40038 */  sw         $s4, 0x38($sp)
/* 1AE1A4 8039C124 0080A021 */  addu       $s4, $a0, $zero
/* 1AE1A8 8039C128 AFBF0040 */  sw         $ra, 0x40($sp)
/* 1AE1AC 8039C12C AFB5003C */  sw         $s5, 0x3c($sp)
/* 1AE1B0 8039C130 AFB30034 */  sw         $s3, 0x34($sp)
/* 1AE1B4 8039C134 AFB20030 */  sw         $s2, 0x30($sp)
/* 1AE1B8 8039C138 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1AE1BC 8039C13C AFB00028 */  sw         $s0, 0x28($sp)
/* 1AE1C0 8039C140 F7BA0060 */  sdc1       $f26, 0x60($sp)
/* 1AE1C4 8039C144 F7B80058 */  sdc1       $f24, 0x58($sp)
/* 1AE1C8 8039C148 F7B60050 */  sdc1       $f22, 0x50($sp)
/* 1AE1CC 8039C14C F7B40048 */  sdc1       $f20, 0x48($sp)
/* 1AE1D0 8039C150 86820170 */  lh         $v0, 0x170($s4)
/* 1AE1D4 8039C154 1040007F */  beqz       $v0, .L8039C354
/* 1AE1D8 8039C158 00401821 */   addu      $v1, $v0, $zero
/* 1AE1DC 8039C15C 2462FFFF */  addiu      $v0, $v1, -1
/* 1AE1E0 8039C160 00009021 */  addu       $s2, $zero, $zero
/* 1AE1E4 8039C164 3C014F00 */  lui        $at, 0x4f00
/* 1AE1E8 8039C168 4481D000 */  mtc1       $at, $f26
/* 1AE1EC 8039C16C 00000000 */  nop
/* 1AE1F0 8039C170 3C158000 */  lui        $s5, 0x8000
/* 1AE1F4 8039C174 3C01437F */  lui        $at, 0x437f
/* 1AE1F8 8039C178 4481C000 */  mtc1       $at, $f24
/* 1AE1FC 8039C17C 00000000 */  nop
/* 1AE200 8039C180 3C014300 */  lui        $at, 0x4300
/* 1AE204 8039C184 4481B000 */  mtc1       $at, $f22
/* 1AE208 8039C188 00000000 */  nop
/* 1AE20C 8039C18C 02808821 */  addu       $s1, $s4, $zero
/* 1AE210 8039C190 4480A000 */  mtc1       $zero, $f20
/* 1AE214 8039C194 00000000 */  nop
/* 1AE218 8039C198 24130010 */  addiu      $s3, $zero, 0x10
/* 1AE21C 8039C19C A6820170 */  sh         $v0, 0x170($s4)
.L8039C1A0:
/* 1AE220 8039C1A0 C6200150 */  lwc1       $f0, 0x150($s1)
/* 1AE224 8039C1A4 3C064334 */  lui        $a2, 0x4334
/* 1AE228 8039C1A8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AE22C 8039C1AC C6200110 */  lwc1       $f0, 0x110($s1)
/* 1AE230 8039C1B0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1AE234 8039C1B4 C6200120 */  lwc1       $f0, 0x120($s1)
/* 1AE238 8039C1B8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1AE23C 8039C1BC C6200130 */  lwc1       $f0, 0x130($s1)
/* 1AE240 8039C1C0 02938021 */  addu       $s0, $s4, $s3
/* 1AE244 8039C1C4 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1AE248 8039C1C8 8E270140 */  lw         $a3, 0x140($s1)
/* 1AE24C 8039C1CC 02002021 */  addu       $a0, $s0, $zero
/* 1AE250 8039C1D0 0C02FD0E */  jal        func_800BF438
/* 1AE254 8039C1D4 00002821 */   addu      $a1, $zero, $zero
/* 1AE258 8039C1D8 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AE25C 8039C1DC 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AE260 8039C1E0 3C03DA38 */  lui        $v1, 0xda38
/* 1AE264 8039C1E4 34630003 */  ori        $v1, $v1, 3
/* 1AE268 8039C1E8 AC430000 */  sw         $v1, ($v0)
/* 1AE26C 8039C1EC AC500004 */  sw         $s0, 4($v0)
/* 1AE270 8039C1F0 C6220160 */  lwc1       $f2, 0x160($s1)
/* 1AE274 8039C1F4 4602D03E */  c.le.s     $f26, $f2
/* 1AE278 8039C1F8 00000000 */  nop
/* 1AE27C 8039C1FC 00000000 */  nop
/* 1AE280 8039C200 24420008 */  addiu      $v0, $v0, 8
/* 1AE284 8039C204 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AE288 8039C208 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AE28C 8039C20C 45030006 */  bc1tl      .L8039C228
/* 1AE290 8039C210 461A1001 */   sub.s     $f0, $f2, $f26
/* 1AE294 8039C214 4600100D */  trunc.w.s  $f0, $f2
/* 1AE298 8039C218 44030000 */  mfc1       $v1, $f0
/* 1AE29C 8039C21C 00000000 */  nop
/* 1AE2A0 8039C220 080E708F */  j          .L8039C23C
/* 1AE2A4 8039C224 306200FF */   andi      $v0, $v1, 0xff
.L8039C228:
/* 1AE2A8 8039C228 4600008D */  trunc.w.s  $f2, $f0
/* 1AE2AC 8039C22C 44031000 */  mfc1       $v1, $f2
/* 1AE2B0 8039C230 00000000 */  nop
/* 1AE2B4 8039C234 00751825 */  or         $v1, $v1, $s5
/* 1AE2B8 8039C238 306200FF */  andi       $v0, $v1, 0xff
.L8039C23C:
/* 1AE2BC 8039C23C AFA20010 */  sw         $v0, 0x10($sp)
/* 1AE2C0 8039C240 8E240000 */  lw         $a0, ($s1)
/* 1AE2C4 8039C244 240500FF */  addiu      $a1, $zero, 0xff
/* 1AE2C8 8039C248 240600FF */  addiu      $a2, $zero, 0xff
/* 1AE2CC 8039C24C 0C027F5E */  jal        func_8009FD78
/* 1AE2D0 8039C250 240700FF */   addiu     $a3, $zero, 0xff
/* 1AE2D4 8039C254 8E240000 */  lw         $a0, ($s1)
/* 1AE2D8 8039C258 0C027F77 */  jal        func_8009FDDC
/* 1AE2DC 8039C25C 00002821 */   addu      $a1, $zero, $zero
/* 1AE2E0 8039C260 06400035 */  bltz       $s2, .L8039C338
/* 1AE2E4 8039C264 2A420002 */   slti      $v0, $s2, 2
/* 1AE2E8 8039C268 14400022 */  bnez       $v0, .L8039C2F4
/* 1AE2EC 8039C26C 2A420004 */   slti      $v0, $s2, 4
/* 1AE2F0 8039C270 50400032 */  beql       $v0, $zero, .L8039C33C
/* 1AE2F4 8039C274 26310004 */   addiu     $s1, $s1, 4
/* 1AE2F8 8039C278 C6240140 */  lwc1       $f4, 0x140($s1)
/* 1AE2FC 8039C27C 3C0141A0 */  lui        $at, 0x41a0
/* 1AE300 8039C280 44810000 */  mtc1       $at, $f0
/* 1AE304 8039C284 00000000 */  nop
/* 1AE308 8039C288 C6260160 */  lwc1       $f6, 0x160($s1)
/* 1AE30C 8039C28C 46002100 */  add.s      $f4, $f4, $f0
/* 1AE310 8039C290 3C0140CC */  lui        $at, 0x40cc
/* 1AE314 8039C294 3421CCCD */  ori        $at, $at, 0xcccd
/* 1AE318 8039C298 44810000 */  mtc1       $at, $f0
/* 1AE31C 8039C29C 00000000 */  nop
/* 1AE320 8039C2A0 C6220150 */  lwc1       $f2, 0x150($s1)
/* 1AE324 8039C2A4 46003180 */  add.s      $f6, $f6, $f0
/* 1AE328 8039C2A8 3C013C23 */  lui        $at, 0x3c23
/* 1AE32C 8039C2AC 3421D70A */  ori        $at, $at, 0xd70a
/* 1AE330 8039C2B0 44810000 */  mtc1       $at, $f0
/* 1AE334 8039C2B4 00000000 */  nop
/* 1AE338 8039C2B8 46001080 */  add.s      $f2, $f2, $f0
/* 1AE33C 8039C2BC E6240140 */  swc1       $f4, 0x140($s1)
/* 1AE340 8039C2C0 4606C03C */  c.lt.s     $f24, $f6
/* 1AE344 8039C2C4 00000000 */  nop
/* 1AE348 8039C2C8 00000000 */  nop
/* 1AE34C 8039C2CC E6260160 */  swc1       $f6, 0x160($s1)
/* 1AE350 8039C2D0 45000003 */  bc1f       .L8039C2E0
/* 1AE354 8039C2D4 E6220150 */   swc1      $f2, 0x150($s1)
/* 1AE358 8039C2D8 080E70CE */  j          .L8039C338
/* 1AE35C 8039C2DC E6380160 */   swc1      $f24, 0x160($s1)
.L8039C2E0:
/* 1AE360 8039C2E0 4614303C */  c.lt.s     $f6, $f20
/* 1AE364 8039C2E4 00000000 */  nop
/* 1AE368 8039C2E8 00000000 */  nop
/* 1AE36C 8039C2EC 080E70CC */  j          .L8039C330
/* 1AE370 8039C2F0 00000000 */   nop
.L8039C2F4:
/* 1AE374 8039C2F4 C6220160 */  lwc1       $f2, 0x160($s1)
/* 1AE378 8039C2F8 3C014220 */  lui        $at, 0x4220
/* 1AE37C 8039C2FC 44810000 */  mtc1       $at, $f0
/* 1AE380 8039C300 00000000 */  nop
/* 1AE384 8039C304 46001080 */  add.s      $f2, $f2, $f0
/* 1AE388 8039C308 4602B03C */  c.lt.s     $f22, $f2
/* 1AE38C 8039C30C 00000000 */  nop
/* 1AE390 8039C310 00000000 */  nop
/* 1AE394 8039C314 45000003 */  bc1f       .L8039C324
/* 1AE398 8039C318 E6220160 */   swc1      $f2, 0x160($s1)
/* 1AE39C 8039C31C 080E70CE */  j          .L8039C338
/* 1AE3A0 8039C320 E6360160 */   swc1      $f22, 0x160($s1)
.L8039C324:
/* 1AE3A4 8039C324 4614103C */  c.lt.s     $f2, $f20
/* 1AE3A8 8039C328 00000000 */  nop
/* 1AE3AC 8039C32C 00000000 */  nop
.L8039C330:
/* 1AE3B0 8039C330 45030001 */  bc1tl      .L8039C338
/* 1AE3B4 8039C334 E6340160 */   swc1      $f20, 0x160($s1)
.L8039C338:
/* 1AE3B8 8039C338 26310004 */  addiu      $s1, $s1, 4
.L8039C33C:
/* 1AE3BC 8039C33C 26520001 */  addiu      $s2, $s2, 1
/* 1AE3C0 8039C340 2A420004 */  slti       $v0, $s2, 4
/* 1AE3C4 8039C344 1440FF96 */  bnez       $v0, .L8039C1A0
/* 1AE3C8 8039C348 26730040 */   addiu     $s3, $s3, 0x40
/* 1AE3CC 8039C34C 080E70D6 */  j          .L8039C358
/* 1AE3D0 8039C350 00001021 */   addu      $v0, $zero, $zero
.L8039C354:
/* 1AE3D4 8039C354 24020001 */  addiu      $v0, $zero, 1
.L8039C358:
/* 1AE3D8 8039C358 8FBF0040 */  lw         $ra, 0x40($sp)
/* 1AE3DC 8039C35C 8FB5003C */  lw         $s5, 0x3c($sp)
/* 1AE3E0 8039C360 8FB40038 */  lw         $s4, 0x38($sp)
/* 1AE3E4 8039C364 8FB30034 */  lw         $s3, 0x34($sp)
/* 1AE3E8 8039C368 8FB20030 */  lw         $s2, 0x30($sp)
/* 1AE3EC 8039C36C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1AE3F0 8039C370 8FB00028 */  lw         $s0, 0x28($sp)
/* 1AE3F4 8039C374 D7BA0060 */  ldc1       $f26, 0x60($sp)
/* 1AE3F8 8039C378 D7B80058 */  ldc1       $f24, 0x58($sp)
/* 1AE3FC 8039C37C D7B60050 */  ldc1       $f22, 0x50($sp)
/* 1AE400 8039C380 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 1AE404 8039C384 27BD0068 */  addiu      $sp, $sp, 0x68
/* 1AE408 8039C388 03E00008 */  jr         $ra
/* 1AE40C 8039C38C 00000000 */   nop

glabel func_8039C390_1AE410
/* 1AE410 8039C390 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AE414 8039C394 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AE418 8039C398 00808021 */  addu       $s0, $a0, $zero
/* 1AE41C 8039C39C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AE420 8039C3A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AE424 8039C3A4 9603001C */  lhu        $v1, 0x1c($s0)
/* 1AE428 8039C3A8 24110001 */  addiu      $s1, $zero, 1
/* 1AE42C 8039C3AC 1071002D */  beq        $v1, $s1, .L8039C464
/* 1AE430 8039C3B0 28620002 */   slti      $v0, $v1, 2
/* 1AE434 8039C3B4 50400005 */  beql       $v0, $zero, .L8039C3CC
/* 1AE438 8039C3B8 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AE43C 8039C3BC 10600007 */  beqz       $v1, .L8039C3DC
/* 1AE440 8039C3C0 00000000 */   nop
/* 1AE444 8039C3C4 080E7140 */  j          .L8039C500
/* 1AE448 8039C3C8 00000000 */   nop
.L8039C3CC:
/* 1AE44C 8039C3CC 1062002D */  beq        $v1, $v0, .L8039C484
/* 1AE450 8039C3D0 00000000 */   nop
/* 1AE454 8039C3D4 080E7140 */  j          .L8039C500
/* 1AE458 8039C3D8 00000000 */   nop
.L8039C3DC:
/* 1AE45C 8039C3DC 8E03000C */  lw         $v1, 0xc($s0)
/* 1AE460 8039C3E0 1071000F */  beq        $v1, $s1, .L8039C420
/* 1AE464 8039C3E4 28620002 */   slti      $v0, $v1, 2
/* 1AE468 8039C3E8 50400005 */  beql       $v0, $zero, .L8039C400
/* 1AE46C 8039C3EC 24020002 */   addiu     $v0, $zero, 2
/* 1AE470 8039C3F0 10600007 */  beqz       $v1, .L8039C410
/* 1AE474 8039C3F4 00000000 */   nop
/* 1AE478 8039C3F8 080E7112 */  j          .L8039C448
/* 1AE47C 8039C3FC 00000000 */   nop
.L8039C400:
/* 1AE480 8039C400 1062000B */  beq        $v1, $v0, .L8039C430
/* 1AE484 8039C404 00000000 */   nop
/* 1AE488 8039C408 080E7112 */  j          .L8039C448
/* 1AE48C 8039C40C 00000000 */   nop
.L8039C410:
/* 1AE490 8039C410 0C032663 */  jal        func_800C998C
/* 1AE494 8039C414 24040080 */   addiu     $a0, $zero, 0x80
/* 1AE498 8039C418 080E710F */  j          .L8039C43C
/* 1AE49C 8039C41C AE020014 */   sw        $v0, 0x14($s0)
.L8039C420:
/* 1AE4A0 8039C420 0C025E63 */  jal        func_8009798C
/* 1AE4A4 8039C424 24040080 */   addiu     $a0, $zero, 0x80
/* 1AE4A8 8039C428 080E710F */  j          .L8039C43C
/* 1AE4AC 8039C42C AE020014 */   sw        $v0, 0x14($s0)
.L8039C430:
/* 1AE4B0 8039C430 0C026127 */  jal        func_8009849C
/* 1AE4B4 8039C434 24040080 */   addiu     $a0, $zero, 0x80
/* 1AE4B8 8039C438 AE020014 */  sw         $v0, 0x14($s0)
.L8039C43C:
/* 1AE4BC 8039C43C 00402021 */  addu       $a0, $v0, $zero
/* 1AE4C0 8039C440 0C030134 */  jal        bzero
/* 1AE4C4 8039C444 24050080 */   addiu     $a1, $zero, 0x80
.L8039C448:
/* 1AE4C8 8039C448 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE4CC 8039C44C 0C0E7148 */  jal        func_8039C520_1AE5A0
/* 1AE4D0 8039C450 00000000 */   nop
/* 1AE4D4 8039C454 00001021 */  addu       $v0, $zero, $zero
/* 1AE4D8 8039C458 24030001 */  addiu      $v1, $zero, 1
/* 1AE4DC 8039C45C 080E7142 */  j          .L8039C508
/* 1AE4E0 8039C460 A603001C */   sh        $v1, 0x1c($s0)
.L8039C464:
/* 1AE4E4 8039C464 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE4E8 8039C468 0C0E71A7 */  jal        func_8039C69C_1AE71C
/* 1AE4EC 8039C46C 00000000 */   nop
/* 1AE4F0 8039C470 10400002 */  beqz       $v0, .L8039C47C
/* 1AE4F4 8039C474 3402FFFF */   ori       $v0, $zero, 0xffff
/* 1AE4F8 8039C478 A602001C */  sh         $v0, 0x1c($s0)
.L8039C47C:
/* 1AE4FC 8039C47C 080E7142 */  j          .L8039C508
/* 1AE500 8039C480 00001021 */   addu      $v0, $zero, $zero
.L8039C484:
/* 1AE504 8039C484 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE508 8039C488 0C0E7198 */  jal        func_8039C660_1AE6E0
/* 1AE50C 8039C48C 00000000 */   nop
/* 1AE510 8039C490 8E03000C */  lw         $v1, 0xc($s0)
/* 1AE514 8039C494 10710010 */  beq        $v1, $s1, .L8039C4D8
/* 1AE518 8039C498 28620002 */   slti      $v0, $v1, 2
/* 1AE51C 8039C49C 50400005 */  beql       $v0, $zero, .L8039C4B4
/* 1AE520 8039C4A0 24020002 */   addiu     $v0, $zero, 2
/* 1AE524 8039C4A4 10600007 */  beqz       $v1, .L8039C4C4
/* 1AE528 8039C4A8 24020001 */   addiu     $v0, $zero, 1
/* 1AE52C 8039C4AC 080E7142 */  j          .L8039C508
/* 1AE530 8039C4B0 00000000 */   nop
.L8039C4B4:
/* 1AE534 8039C4B4 1062000D */  beq        $v1, $v0, .L8039C4EC
/* 1AE538 8039C4B8 24020001 */   addiu     $v0, $zero, 1
/* 1AE53C 8039C4BC 080E7142 */  j          .L8039C508
/* 1AE540 8039C4C0 00000000 */   nop
.L8039C4C4:
/* 1AE544 8039C4C4 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE548 8039C4C8 0C0326A1 */  jal        func_800C9A84
/* 1AE54C 8039C4CC 00000000 */   nop
/* 1AE550 8039C4D0 080E7142 */  j          .L8039C508
/* 1AE554 8039C4D4 24020001 */   addiu     $v0, $zero, 1
.L8039C4D8:
/* 1AE558 8039C4D8 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE55C 8039C4DC 0C025EC3 */  jal        func_80097B0C
/* 1AE560 8039C4E0 00000000 */   nop
/* 1AE564 8039C4E4 080E7142 */  j          .L8039C508
/* 1AE568 8039C4E8 24020001 */   addiu     $v0, $zero, 1
.L8039C4EC:
/* 1AE56C 8039C4EC 8E040014 */  lw         $a0, 0x14($s0)
/* 1AE570 8039C4F0 0C026187 */  jal        func_8009861C
/* 1AE574 8039C4F4 00000000 */   nop
/* 1AE578 8039C4F8 080E7142 */  j          .L8039C508
/* 1AE57C 8039C4FC 24020001 */   addiu     $v0, $zero, 1
.L8039C500:
/* 1AE580 8039C500 0C032934 */  jal        func_800CA4D0
/* 1AE584 8039C504 00000000 */   nop
.L8039C508:
/* 1AE588 8039C508 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AE58C 8039C50C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AE590 8039C510 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AE594 8039C514 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AE598 8039C518 03E00008 */  jr         $ra
/* 1AE59C 8039C51C 00000000 */   nop

glabel func_8039C520_1AE5A0
/* 1AE5A0 8039C520 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1AE5A4 8039C524 AFB00020 */  sw         $s0, 0x20($sp)
/* 1AE5A8 8039C528 00808021 */  addu       $s0, $a0, $zero
/* 1AE5AC 8039C52C 2404001A */  addiu      $a0, $zero, 0x1a
/* 1AE5B0 8039C530 00002821 */  addu       $a1, $zero, $zero
/* 1AE5B4 8039C534 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1AE5B8 8039C538 0C027DAC */  jal        func_8009F6B0
/* 1AE5BC 8039C53C 00003021 */   addu      $a2, $zero, $zero
/* 1AE5C0 8039C540 AE020000 */  sw         $v0, ($s0)
/* 1AE5C4 8039C544 90430066 */  lbu        $v1, 0x66($v0)
/* 1AE5C8 8039C548 240500FF */  addiu      $a1, $zero, 0xff
/* 1AE5CC 8039C54C 34630021 */  ori        $v1, $v1, 0x21
/* 1AE5D0 8039C550 A0430066 */  sb         $v1, 0x66($v0)
/* 1AE5D4 8039C554 AFA00010 */  sw         $zero, 0x10($sp)
/* 1AE5D8 8039C558 8E040000 */  lw         $a0, ($s0)
/* 1AE5DC 8039C55C 240600FF */  addiu      $a2, $zero, 0xff
/* 1AE5E0 8039C560 0C027F5E */  jal        func_8009FD78
/* 1AE5E4 8039C564 240700FF */   addiu     $a3, $zero, 0xff
/* 1AE5E8 8039C568 00002021 */  addu       $a0, $zero, $zero
/* 1AE5EC 8039C56C 00002821 */  addu       $a1, $zero, $zero
/* 1AE5F0 8039C570 00003021 */  addu       $a2, $zero, $zero
/* 1AE5F4 8039C574 8E030000 */  lw         $v1, ($s0)
/* 1AE5F8 8039C578 00003821 */  addu       $a3, $zero, $zero
/* 1AE5FC 8039C57C 2402000A */  addiu      $v0, $zero, 0xa
/* 1AE600 8039C580 A0620067 */  sb         $v0, 0x67($v1)
/* 1AE604 8039C584 24020019 */  addiu      $v0, $zero, 0x19
/* 1AE608 8039C588 AFA00010 */  sw         $zero, 0x10($sp)
/* 1AE60C 8039C58C AFA00014 */  sw         $zero, 0x14($sp)
/* 1AE610 8039C590 AFA00018 */  sw         $zero, 0x18($sp)
/* 1AE614 8039C594 0C029852 */  jal        func_800A6148
/* 1AE618 8039C598 AFA2001C */   sw        $v0, 0x1c($sp)
/* 1AE61C 8039C59C 3C03803B */  lui        $v1, %hi(D_803B3EAC)
/* 1AE620 8039C5A0 8C633EAC */  lw         $v1, %lo(D_803B3EAC)($v1)
/* 1AE624 8039C5A4 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1AE628 8039C5A8 C4263EBC */  lwc1       $f6, %lo(D_803B3EBC)($at)
/* 1AE62C 8039C5AC 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1AE630 8039C5B0 C4283EB0 */  lwc1       $f8, %lo(D_803B3EB0)($at)
/* 1AE634 8039C5B4 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 1AE638 8039C5B8 C42A3E2C */  lwc1       $f10, %lo(D_803B3E2C)($at)
/* 1AE63C 8039C5BC 3C014000 */  lui        $at, 0x4000
/* 1AE640 8039C5C0 44810000 */  mtc1       $at, $f0
/* 1AE644 8039C5C4 00000000 */  nop
/* 1AE648 8039C5C8 A203005E */  sb         $v1, 0x5e($s0)
/* 1AE64C 8039C5CC 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 1AE650 8039C5D0 C4243EBC */  lwc1       $f4, %lo(D_803B3EBC)($at)
/* 1AE654 8039C5D4 46002103 */  div.s      $f4, $f4, $f0
/* 1AE658 8039C5D8 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 1AE65C 8039C5DC C4223EB0 */  lwc1       $f2, %lo(D_803B3EB0)($at)
/* 1AE660 8039C5E0 46001083 */  div.s      $f2, $f2, $f0
/* 1AE664 8039C5E4 3C013C23 */  lui        $at, 0x3c23
/* 1AE668 8039C5E8 3421D70A */  ori        $at, $at, 0xd70a
/* 1AE66C 8039C5EC 44810000 */  mtc1       $at, $f0
/* 1AE670 8039C5F0 00000000 */  nop
/* 1AE674 8039C5F4 AE020004 */  sw         $v0, 4($s0)
/* 1AE678 8039C5F8 24020014 */  addiu      $v0, $zero, 0x14
/* 1AE67C 8039C5FC A602005C */  sh         $v0, 0x5c($s0)
/* 1AE680 8039C600 24020007 */  addiu      $v0, $zero, 7
/* 1AE684 8039C604 A6020060 */  sh         $v0, 0x60($s0)
/* 1AE688 8039C608 24020002 */  addiu      $v0, $zero, 2
/* 1AE68C 8039C60C A6020062 */  sh         $v0, 0x62($s0)
/* 1AE690 8039C610 2402FFFF */  addiu      $v0, $zero, -1
/* 1AE694 8039C614 AE000054 */  sw         $zero, 0x54($s0)
/* 1AE698 8039C618 A6020074 */  sh         $v0, 0x74($s0)
/* 1AE69C 8039C61C E6060048 */  swc1       $f6, 0x48($s0)
/* 1AE6A0 8039C620 E608004C */  swc1       $f8, 0x4c($s0)
/* 1AE6A4 8039C624 E60A0050 */  swc1       $f10, 0x50($s0)
/* 1AE6A8 8039C628 A200006C */  sb         $zero, 0x6c($s0)
/* 1AE6AC 8039C62C A200006D */  sb         $zero, 0x6d($s0)
/* 1AE6B0 8039C630 A200006E */  sb         $zero, 0x6e($s0)
/* 1AE6B4 8039C634 A200006F */  sb         $zero, 0x6f($s0)
/* 1AE6B8 8039C638 E6000058 */  swc1       $f0, 0x58($s0)
/* 1AE6BC 8039C63C 4600200D */  trunc.w.s  $f0, $f4
/* 1AE6C0 8039C640 E6000064 */  swc1       $f0, 0x64($s0)
/* 1AE6C4 8039C644 4600100D */  trunc.w.s  $f0, $f2
/* 1AE6C8 8039C648 E6000068 */  swc1       $f0, 0x68($s0)
/* 1AE6CC 8039C64C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1AE6D0 8039C650 8FB00020 */  lw         $s0, 0x20($sp)
/* 1AE6D4 8039C654 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1AE6D8 8039C658 03E00008 */  jr         $ra
/* 1AE6DC 8039C65C 00000000 */   nop

glabel func_8039C660_1AE6E0
/* 1AE6E0 8039C660 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AE6E4 8039C664 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AE6E8 8039C668 00808021 */  addu       $s0, $a0, $zero
/* 1AE6EC 8039C66C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1AE6F0 8039C670 8E040000 */  lw         $a0, ($s0)
/* 1AE6F4 8039C674 0C027E98 */  jal        func_8009FA60
/* 1AE6F8 8039C678 00000000 */   nop
/* 1AE6FC 8039C67C 8E040004 */  lw         $a0, 4($s0)
/* 1AE700 8039C680 0C02987A */  jal        func_800A61E8
/* 1AE704 8039C684 00000000 */   nop
/* 1AE708 8039C688 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AE70C 8039C68C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AE710 8039C690 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AE714 8039C694 03E00008 */  jr         $ra
/* 1AE718 8039C698 00000000 */   nop

glabel func_8039C69C_1AE71C
/* 1AE71C 8039C69C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1AE720 8039C6A0 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1AE724 8039C6A4 00808821 */  addu       $s1, $a0, $zero
/* 1AE728 8039C6A8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1AE72C 8039C6AC AFB00028 */  sw         $s0, 0x28($sp)
/* 1AE730 8039C6B0 8622005C */  lh         $v0, 0x5c($s1)
/* 1AE734 8039C6B4 10400080 */  beqz       $v0, .L8039C8B8
/* 1AE738 8039C6B8 00401821 */   addu      $v1, $v0, $zero
/* 1AE73C 8039C6BC 8E240004 */  lw         $a0, 4($s1)
/* 1AE740 8039C6C0 2462FFFF */  addiu      $v0, $v1, -1
/* 1AE744 8039C6C4 0C029883 */  jal        func_800A620C
/* 1AE748 8039C6C8 A622005C */   sh        $v0, 0x5c($s1)
/* 1AE74C 8039C6CC 8E220004 */  lw         $v0, 4($s1)
/* 1AE750 8039C6D0 90420003 */  lbu        $v0, 3($v0)
/* 1AE754 8039C6D4 240500FF */  addiu      $a1, $zero, 0xff
/* 1AE758 8039C6D8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AE75C 8039C6DC 8E240000 */  lw         $a0, ($s1)
/* 1AE760 8039C6E0 240600FF */  addiu      $a2, $zero, 0xff
/* 1AE764 8039C6E4 0C027F5E */  jal        func_8009FD78
/* 1AE768 8039C6E8 240700FF */   addiu     $a3, $zero, 0xff
/* 1AE76C 8039C6EC C6220054 */  lwc1       $f2, 0x54($s1)
/* 1AE770 8039C6F0 C6200058 */  lwc1       $f0, 0x58($s1)
/* 1AE774 8039C6F4 46001080 */  add.s      $f2, $f2, $f0
/* 1AE778 8039C6F8 3C013D75 */  lui        $at, 0x3d75
/* 1AE77C 8039C6FC 3421C28F */  ori        $at, $at, 0xc28f
/* 1AE780 8039C700 44810000 */  mtc1       $at, $f0
/* 1AE784 8039C704 00000000 */  nop
/* 1AE788 8039C708 4602003C */  c.lt.s     $f0, $f2
/* 1AE78C 8039C70C 00000000 */  nop
/* 1AE790 8039C710 00000000 */  nop
/* 1AE794 8039C714 45010007 */  bc1t       .L8039C734
/* 1AE798 8039C718 E6220054 */   swc1      $f2, 0x54($s1)
/* 1AE79C 8039C71C 44800000 */  mtc1       $zero, $f0
/* 1AE7A0 8039C720 00000000 */  nop
/* 1AE7A4 8039C724 4600103C */  c.lt.s     $f2, $f0
/* 1AE7A8 8039C728 00000000 */  nop
/* 1AE7AC 8039C72C 45000002 */  bc1f       .L8039C738
/* 1AE7B0 8039C730 00000000 */   nop
.L8039C734:
/* 1AE7B4 8039C734 E6200054 */  swc1       $f0, 0x54($s1)
.L8039C738:
/* 1AE7B8 8039C738 3C014000 */  lui        $at, 0x4000
/* 1AE7BC 8039C73C 44812000 */  mtc1       $at, $f4
/* 1AE7C0 8039C740 00000000 */  nop
/* 1AE7C4 8039C744 C626004C */  lwc1       $f6, 0x4c($s1)
/* 1AE7C8 8039C748 46043183 */  div.s      $f6, $f6, $f4
/* 1AE7CC 8039C74C C6220048 */  lwc1       $f2, 0x48($s1)
/* 1AE7D0 8039C750 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 1AE7D4 8039C754 C4203E58 */  lwc1       $f0, %lo(D_803B3E58)($at)
/* 1AE7D8 8039C758 46001080 */  add.s      $f2, $f2, $f0
/* 1AE7DC 8039C75C 46041103 */  div.s      $f4, $f2, $f4
/* 1AE7E0 8039C760 9222006E */  lbu        $v0, 0x6e($s1)
/* 1AE7E4 8039C764 2442000E */  addiu      $v0, $v0, 0xe
/* 1AE7E8 8039C768 A222006E */  sb         $v0, 0x6e($s1)
/* 1AE7EC 8039C76C 00021600 */  sll        $v0, $v0, 0x18
/* 1AE7F0 8039C770 E6220048 */  swc1       $f2, 0x48($s1)
/* 1AE7F4 8039C774 4600300D */  trunc.w.s  $f0, $f6
/* 1AE7F8 8039C778 E6200068 */  swc1       $f0, 0x68($s1)
/* 1AE7FC 8039C77C 4600200D */  trunc.w.s  $f0, $f4
/* 1AE800 8039C780 E6200064 */  swc1       $f0, 0x64($s1)
/* 1AE804 8039C784 00021E03 */  sra        $v1, $v0, 0x18
/* 1AE808 8039C788 28620055 */  slti       $v0, $v1, 0x55
/* 1AE80C 8039C78C 14400003 */  bnez       $v0, .L8039C79C
/* 1AE810 8039C790 24020054 */   addiu     $v0, $zero, 0x54
/* 1AE814 8039C794 080E71E9 */  j          .L8039C7A4
/* 1AE818 8039C798 A222006E */   sb        $v0, 0x6e($s1)
.L8039C79C:
/* 1AE81C 8039C79C 04620001 */  bltzl      $v1, .L8039C7A4
/* 1AE820 8039C7A0 A220006E */   sb        $zero, 0x6e($s1)
.L8039C7A4:
/* 1AE824 8039C7A4 9222006F */  lbu        $v0, 0x6f($s1)
/* 1AE828 8039C7A8 24420003 */  addiu      $v0, $v0, 3
/* 1AE82C 8039C7AC A222006F */  sb         $v0, 0x6f($s1)
/* 1AE830 8039C7B0 00021600 */  sll        $v0, $v0, 0x18
/* 1AE834 8039C7B4 00021E03 */  sra        $v1, $v0, 0x18
/* 1AE838 8039C7B8 28620013 */  slti       $v0, $v1, 0x13
/* 1AE83C 8039C7BC 14400003 */  bnez       $v0, .L8039C7CC
/* 1AE840 8039C7C0 24020012 */   addiu     $v0, $zero, 0x12
/* 1AE844 8039C7C4 080E71F5 */  j          .L8039C7D4
/* 1AE848 8039C7C8 A222006F */   sb        $v0, 0x6f($s1)
.L8039C7CC:
/* 1AE84C 8039C7CC 04620001 */  bltzl      $v1, .L8039C7D4
/* 1AE850 8039C7D0 A220006F */   sb        $zero, 0x6f($s1)
.L8039C7D4:
/* 1AE854 8039C7D4 8223005E */  lb         $v1, 0x5e($s1)
/* 1AE858 8039C7D8 24020001 */  addiu      $v0, $zero, 1
/* 1AE85C 8039C7DC 54620004 */  bnel       $v1, $v0, .L8039C7F0
/* 1AE860 8039C7E0 A220006C */   sb        $zero, 0x6c($s1)
/* 1AE864 8039C7E4 9222006E */  lbu        $v0, 0x6e($s1)
/* 1AE868 8039C7E8 00021023 */  negu       $v0, $v0
/* 1AE86C 8039C7EC A222006C */  sb         $v0, 0x6c($s1)
.L8039C7F0:
/* 1AE870 8039C7F0 9222006F */  lbu        $v0, 0x6f($s1)
/* 1AE874 8039C7F4 26240060 */  addiu      $a0, $s1, 0x60
/* 1AE878 8039C7F8 00002821 */  addu       $a1, $zero, $zero
/* 1AE87C 8039C7FC 00021023 */  negu       $v0, $v0
/* 1AE880 8039C800 0C02A1C9 */  jal        func_800A8724
/* 1AE884 8039C804 A222006D */   sb        $v0, 0x6d($s1)
/* 1AE888 8039C808 9622005C */  lhu        $v0, 0x5c($s1)
/* 1AE88C 8039C80C 30420001 */  andi       $v0, $v0, 1
/* 1AE890 8039C810 5440002A */  bnezl      $v0, .L8039C8BC
/* 1AE894 8039C814 00001021 */   addu      $v0, $zero, $zero
/* 1AE898 8039C818 C6200054 */  lwc1       $f0, 0x54($s1)
/* 1AE89C 8039C81C 8222005E */  lb         $v0, 0x5e($s1)
/* 1AE8A0 8039C820 3C0142B4 */  lui        $at, 0x42b4
/* 1AE8A4 8039C824 44812000 */  mtc1       $at, $f4
/* 1AE8A8 8039C828 00000000 */  nop
/* 1AE8AC 8039C82C E7A00010 */  swc1       $f0, 0x10($sp)
/* 1AE8B0 8039C830 C6220048 */  lwc1       $f2, 0x48($s1)
/* 1AE8B4 8039C834 44800000 */  mtc1       $zero, $f0
/* 1AE8B8 8039C838 00000000 */  nop
/* 1AE8BC 8039C83C 44050000 */  mfc1       $a1, $f0
/* 1AE8C0 8039C840 00000000 */  nop
/* 1AE8C4 8039C844 44820000 */  mtc1       $v0, $f0
/* 1AE8C8 8039C848 00000000 */  nop
/* 1AE8CC 8039C84C 46800020 */  cvt.s.w    $f0, $f0
/* 1AE8D0 8039C850 46040002 */  mul.s      $f0, $f0, $f4
/* 1AE8D4 8039C854 E7A20014 */  swc1       $f2, 0x14($sp)
/* 1AE8D8 8039C858 C622004C */  lwc1       $f2, 0x4c($s1)
/* 1AE8DC 8039C85C 26300008 */  addiu      $s0, $s1, 8
/* 1AE8E0 8039C860 E7A20018 */  swc1       $f2, 0x18($sp)
/* 1AE8E4 8039C864 44060000 */  mfc1       $a2, $f0
/* 1AE8E8 8039C868 00000000 */  nop
/* 1AE8EC 8039C86C C6200050 */  lwc1       $f0, 0x50($s1)
/* 1AE8F0 8039C870 02002021 */  addu       $a0, $s0, $zero
/* 1AE8F4 8039C874 00A03821 */  addu       $a3, $a1, $zero
/* 1AE8F8 8039C878 0C02FD0E */  jal        func_800BF438
/* 1AE8FC 8039C87C E7A0001C */   swc1      $f0, 0x1c($sp)
/* 1AE900 8039C880 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AE904 8039C884 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AE908 8039C888 3C03DA38 */  lui        $v1, 0xda38
/* 1AE90C 8039C88C 34630003 */  ori        $v1, $v1, 3
/* 1AE910 8039C890 AC430000 */  sw         $v1, ($v0)
/* 1AE914 8039C894 AC500004 */  sw         $s0, 4($v0)
/* 1AE918 8039C898 8E240000 */  lw         $a0, ($s1)
/* 1AE91C 8039C89C 24420008 */  addiu      $v0, $v0, 8
/* 1AE920 8039C8A0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AE924 8039C8A4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AE928 8039C8A8 0C027F77 */  jal        func_8009FDDC
/* 1AE92C 8039C8AC 00002821 */   addu      $a1, $zero, $zero
/* 1AE930 8039C8B0 080E722F */  j          .L8039C8BC
/* 1AE934 8039C8B4 00001021 */   addu      $v0, $zero, $zero
.L8039C8B8:
/* 1AE938 8039C8B8 24020001 */  addiu      $v0, $zero, 1
.L8039C8BC:
/* 1AE93C 8039C8BC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1AE940 8039C8C0 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1AE944 8039C8C4 8FB00028 */  lw         $s0, 0x28($sp)
/* 1AE948 8039C8C8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1AE94C 8039C8CC 03E00008 */  jr         $ra
/* 1AE950 8039C8D0 00000000 */   nop

glabel func_8039C8D4
/* 1AE954 8039C8D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AE958 8039C8D8 00042400 */  sll        $a0, $a0, 0x10
/* 1AE95C 8039C8DC 00042403 */  sra        $a0, $a0, 0x10
/* 1AE960 8039C8E0 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 1AE964 8039C8E4 AC243EAC */  sw         $a0, %lo(D_803B3EAC)($at)
/* 1AE968 8039C8E8 3C04803A */  lui        $a0, %hi(D_8039C390)
/* 1AE96C 8039C8EC 2484C390 */  addiu      $a0, $a0, %lo(D_8039C390)
/* 1AE970 8039C8F0 24050001 */  addiu      $a1, $zero, 1
/* 1AE974 8039C8F4 24060168 */  addiu      $a2, $zero, 0x168
/* 1AE978 8039C8F8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AE97C 8039C8FC 0C025D06 */  jal        func_80097418
/* 1AE980 8039C900 24070001 */   addiu     $a3, $zero, 1
/* 1AE984 8039C904 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AE988 8039C908 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AE98C 8039C90C 03E00008 */  jr         $ra
/* 1AE990 8039C910 00000000 */   nop
/* 1AE994 8039C914 00000000 */  nop
/* 1AE998 8039C918 00000000 */  nop
/* 1AE99C 8039C91C 00000000 */  nop

glabel func_8039C920_1AE9A0
/* 1AE9A0 8039C920 2402FFFF */  addiu      $v0, $zero, -1
/* 1AE9A4 8039C924 3C01803A */  lui        $at, %hi(D_803A3080_1B5100)
/* 1AE9A8 8039C928 AC203080 */  sw         $zero, %lo(D_803A3080_1B5100)($at)
/* 1AE9AC 8039C92C 3C01803A */  lui        $at, %hi(D_803A3084_1B5104)
/* 1AE9B0 8039C930 AC223084 */  sw         $v0, %lo(D_803A3084_1B5104)($at)
/* 1AE9B4 8039C934 03E00008 */  jr         $ra
/* 1AE9B8 8039C938 00000000 */   nop

glabel func_8039C93C_1AE9BC
/* 1AE9BC 8039C93C 3C03803A */  lui        $v1, %hi(D_803A30B4_1B5134)
/* 1AE9C0 8039C940 906330B4 */  lbu        $v1, %lo(D_803A30B4_1B5134)($v1)
/* 1AE9C4 8039C944 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AE9C8 8039C948 AFB10014 */  sw         $s1, 0x14($sp)
/* 1AE9CC 8039C94C 24110001 */  addiu      $s1, $zero, 1
/* 1AE9D0 8039C950 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1AE9D4 8039C954 1071001A */  beq        $v1, $s1, .L8039C9C0
/* 1AE9D8 8039C958 AFB00010 */   sw        $s0, 0x10($sp)
/* 1AE9DC 8039C95C 28620002 */  slti       $v0, $v1, 2
/* 1AE9E0 8039C960 50400005 */  beql       $v0, $zero, .L8039C978
/* 1AE9E4 8039C964 24020002 */   addiu     $v0, $zero, 2
/* 1AE9E8 8039C968 10600009 */  beqz       $v1, .L8039C990
/* 1AE9EC 8039C96C 00001021 */   addu      $v0, $zero, $zero
/* 1AE9F0 8039C970 080E729B */  j          .L8039CA6C
/* 1AE9F4 8039C974 00000000 */   nop
.L8039C978:
/* 1AE9F8 8039C978 1062001D */  beq        $v1, $v0, .L8039C9F0
/* 1AE9FC 8039C97C 24020003 */   addiu     $v0, $zero, 3
/* 1AEA00 8039C980 10620035 */  beq        $v1, $v0, .L8039CA58
/* 1AEA04 8039C984 00001021 */   addu      $v0, $zero, $zero
/* 1AEA08 8039C988 080E729B */  j          .L8039CA6C
/* 1AEA0C 8039C98C 00000000 */   nop
.L8039C990:
/* 1AEA10 8039C990 0C0E72A1 */  jal        func_8039CA84_1AEB04
/* 1AEA14 8039C994 00000000 */   nop
/* 1AEA18 8039C998 2402FFFF */  addiu      $v0, $zero, -1
/* 1AEA1C 8039C99C 3C01803A */  lui        $at, %hi(D_803A3084_1B5104)
/* 1AEA20 8039C9A0 AC223084 */  sw         $v0, %lo(D_803A3084_1B5104)($at)
/* 1AEA24 8039C9A4 24020001 */  addiu      $v0, $zero, 1
/* 1AEA28 8039C9A8 3C01803A */  lui        $at, %hi(D_803A3080_1B5100)
/* 1AEA2C 8039C9AC AC203080 */  sw         $zero, %lo(D_803A3080_1B5100)($at)
/* 1AEA30 8039C9B0 3C01803A */  lui        $at, %hi(D_803A30B4_1B5134)
/* 1AEA34 8039C9B4 A02230B4 */  sb         $v0, %lo(D_803A30B4_1B5134)($at)
/* 1AEA38 8039C9B8 080E729B */  j          .L8039CA6C
/* 1AEA3C 8039C9BC 00001021 */   addu      $v0, $zero, $zero
.L8039C9C0:
/* 1AEA40 8039C9C0 0C0E74A0 */  jal        func_8039D280_1AF300
/* 1AEA44 8039C9C4 00000000 */   nop
/* 1AEA48 8039C9C8 2403FFFF */  addiu      $v1, $zero, -1
/* 1AEA4C 8039C9CC 14430027 */  bne        $v0, $v1, .L8039CA6C
/* 1AEA50 8039C9D0 00001021 */   addu      $v0, $zero, $zero
/* 1AEA54 8039C9D4 0C02DB14 */  jal        func_800B6C50
/* 1AEA58 8039C9D8 00002021 */   addu      $a0, $zero, $zero
/* 1AEA5C 8039C9DC 24020002 */  addiu      $v0, $zero, 2
/* 1AEA60 8039C9E0 3C01803A */  lui        $at, %hi(D_803A30B4_1B5134)
/* 1AEA64 8039C9E4 A02230B4 */  sb         $v0, %lo(D_803A30B4_1B5134)($at)
/* 1AEA68 8039C9E8 080E729B */  j          .L8039CA6C
/* 1AEA6C 8039C9EC 00001021 */   addu      $v0, $zero, $zero
.L8039C9F0:
/* 1AEA70 8039C9F0 0C02A77B */  jal        func_800A9DEC
/* 1AEA74 8039C9F4 2410FFFF */   addiu     $s0, $zero, -1
/* 1AEA78 8039C9F8 10500005 */  beq        $v0, $s0, .L8039CA10
/* 1AEA7C 8039C9FC 00000000 */   nop
/* 1AEA80 8039CA00 1051000A */  beq        $v0, $s1, .L8039CA2C
/* 1AEA84 8039CA04 00001021 */   addu      $v0, $zero, $zero
/* 1AEA88 8039CA08 080E729B */  j          .L8039CA6C
/* 1AEA8C 8039CA0C 00000000 */   nop
.L8039CA10:
/* 1AEA90 8039CA10 0C02DB14 */  jal        func_800B6C50
/* 1AEA94 8039CA14 00002021 */   addu      $a0, $zero, $zero
/* 1AEA98 8039CA18 24020003 */  addiu      $v0, $zero, 3
/* 1AEA9C 8039CA1C 3C01803A */  lui        $at, %hi(D_803A30B4_1B5134)
/* 1AEAA0 8039CA20 A02230B4 */  sb         $v0, %lo(D_803A30B4_1B5134)($at)
/* 1AEAA4 8039CA24 080E729B */  j          .L8039CA6C
/* 1AEAA8 8039CA28 00001021 */   addu      $v0, $zero, $zero
.L8039CA2C:
/* 1AEAAC 8039CA2C 0C02DB14 */  jal        func_800B6C50
/* 1AEAB0 8039CA30 00002021 */   addu      $a0, $zero, $zero
/* 1AEAB4 8039CA34 24020001 */  addiu      $v0, $zero, 1
/* 1AEAB8 8039CA38 3C01803A */  lui        $at, %hi(D_803A3080_1B5100)
/* 1AEABC 8039CA3C AC203080 */  sw         $zero, %lo(D_803A3080_1B5100)($at)
/* 1AEAC0 8039CA40 3C01803A */  lui        $at, %hi(D_803A3084_1B5104)
/* 1AEAC4 8039CA44 AC303084 */  sw         $s0, %lo(D_803A3084_1B5104)($at)
/* 1AEAC8 8039CA48 3C01803A */  lui        $at, %hi(D_803A30B4_1B5134)
/* 1AEACC 8039CA4C A02230B4 */  sb         $v0, %lo(D_803A30B4_1B5134)($at)
/* 1AEAD0 8039CA50 080E729B */  j          .L8039CA6C
/* 1AEAD4 8039CA54 00001021 */   addu      $v0, $zero, $zero
.L8039CA58:
/* 1AEAD8 8039CA58 0C0E72ED */  jal        func_8039CBB4_1AEC34
/* 1AEADC 8039CA5C 00000000 */   nop
/* 1AEAE0 8039CA60 3C01803A */  lui        $at, %hi(D_803A30B4_1B5134)
/* 1AEAE4 8039CA64 A02030B4 */  sb         $zero, %lo(D_803A30B4_1B5134)($at)
/* 1AEAE8 8039CA68 24020001 */  addiu      $v0, $zero, 1
.L8039CA6C:
/* 1AEAEC 8039CA6C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1AEAF0 8039CA70 8FB10014 */  lw         $s1, 0x14($sp)
/* 1AEAF4 8039CA74 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AEAF8 8039CA78 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AEAFC 8039CA7C 03E00008 */  jr         $ra
/* 1AEB00 8039CA80 00000000 */   nop

glabel func_8039CA84_1AEB04
/* 1AEB04 8039CA84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AEB08 8039CA88 AFB00018 */  sw         $s0, 0x18($sp)
/* 1AEB0C 8039CA8C 3C108008 */  lui        $s0, %hi(D_80080750)
/* 1AEB10 8039CA90 26100750 */  addiu      $s0, $s0, %lo(D_80080750)
/* 1AEB14 8039CA94 02002021 */  addu       $a0, $s0, $zero
/* 1AEB18 8039CA98 24050001 */  addiu      $a1, $zero, 1
/* 1AEB1C 8039CA9C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AEB20 8039CAA0 3C01803A */  lui        $at, %hi(D_803A2F58_1B4FD8)
/* 1AEB24 8039CAA4 AC202F58 */  sw         $zero, %lo(D_803A2F58_1B4FD8)($at)
/* 1AEB28 8039CAA8 3C01803A */  lui        $at, %hi(D_803A2F9C_1B501C)
/* 1AEB2C 8039CAAC AC202F9C */  sw         $zero, %lo(D_803A2F9C_1B501C)($at)
/* 1AEB30 8039CAB0 3C01803A */  lui        $at, %hi(D_803A2FA0_1B5020)
/* 1AEB34 8039CAB4 AC202FA0 */  sw         $zero, %lo(D_803A2FA0_1B5020)($at)
/* 1AEB38 8039CAB8 3C01803A */  lui        $at, %hi(D_803A2FAC_1B502C)
/* 1AEB3C 8039CABC AC202FAC */  sw         $zero, %lo(D_803A2FAC_1B502C)($at)
/* 1AEB40 8039CAC0 3C01803A */  lui        $at, %hi(D_803A2FA8_1B5028)
/* 1AEB44 8039CAC4 AC202FA8 */  sw         $zero, %lo(D_803A2FA8_1B5028)($at)
/* 1AEB48 8039CAC8 3C01803B */  lui        $at, %hi(D_803B3E08)
/* 1AEB4C 8039CACC AC203E08 */  sw         $zero, %lo(D_803B3E08)($at)
/* 1AEB50 8039CAD0 0C00AB68 */  jal        func_8002ADA0_79D50
/* 1AEB54 8039CAD4 00003021 */   addu      $a2, $zero, $zero
/* 1AEB58 8039CAD8 0C00ADDB */  jal        func_8002B76C_7A71C
/* 1AEB5C 8039CADC 02002021 */   addu      $a0, $s0, $zero
/* 1AEB60 8039CAE0 240400B5 */  addiu      $a0, $zero, 0xb5
/* 1AEB64 8039CAE4 00002821 */  addu       $a1, $zero, $zero
/* 1AEB68 8039CAE8 0C027DAC */  jal        func_8009F6B0
/* 1AEB6C 8039CAEC 00003021 */   addu      $a2, $zero, $zero
/* 1AEB70 8039CAF0 00402021 */  addu       $a0, $v0, $zero
/* 1AEB74 8039CAF4 240500FF */  addiu      $a1, $zero, 0xff
/* 1AEB78 8039CAF8 240600FF */  addiu      $a2, $zero, 0xff
/* 1AEB7C 8039CAFC 24020080 */  addiu      $v0, $zero, 0x80
/* 1AEB80 8039CB00 240700FF */  addiu      $a3, $zero, 0xff
/* 1AEB84 8039CB04 3C01803B */  lui        $at, %hi(D_803B3D68)
/* 1AEB88 8039CB08 AC243D68 */  sw         $a0, %lo(D_803B3D68)($at)
/* 1AEB8C 8039CB0C 0C027F5E */  jal        func_8009FD78
/* 1AEB90 8039CB10 AFA20010 */   sw        $v0, 0x10($sp)
/* 1AEB94 8039CB14 3C03803B */  lui        $v1, %hi(D_803B3D68)
/* 1AEB98 8039CB18 8C633D68 */  lw         $v1, %lo(D_803B3D68)($v1)
/* 1AEB9C 8039CB1C 90620066 */  lbu        $v0, 0x66($v1)
/* 1AEBA0 8039CB20 34420020 */  ori        $v0, $v0, 0x20
/* 1AEBA4 8039CB24 A0620066 */  sb         $v0, 0x66($v1)
/* 1AEBA8 8039CB28 3C04803B */  lui        $a0, %hi(D_803B3D68)
/* 1AEBAC 8039CB2C 8C843D68 */  lw         $a0, %lo(D_803B3D68)($a0)
/* 1AEBB0 8039CB30 3C05803B */  lui        $a1, %hi(D_803A8CA0_1BAD20)
/* 1AEBB4 8039CB34 24A58CA0 */  addiu      $a1, $a1, %lo(D_803A8CA0_1BAD20)
/* 1AEBB8 8039CB38 0C0285D4 */  jal        func_800A1750
/* 1AEBBC 8039CB3C 00000000 */   nop
/* 1AEBC0 8039CB40 2404013A */  addiu      $a0, $zero, 0x13a
/* 1AEBC4 8039CB44 00002821 */  addu       $a1, $zero, $zero
/* 1AEBC8 8039CB48 00003021 */  addu       $a2, $zero, $zero
/* 1AEBCC 8039CB4C 3403FFFF */  ori        $v1, $zero, 0xffff
/* 1AEBD0 8039CB50 A4430002 */  sh         $v1, 2($v0)
/* 1AEBD4 8039CB54 3403FFFE */  ori        $v1, $zero, 0xfffe
/* 1AEBD8 8039CB58 0C027DAC */  jal        func_8009F6B0
/* 1AEBDC 8039CB5C A4430004 */   sh        $v1, 4($v0)
/* 1AEBE0 8039CB60 24040134 */  addiu      $a0, $zero, 0x134
/* 1AEBE4 8039CB64 00002821 */  addu       $a1, $zero, $zero
/* 1AEBE8 8039CB68 3C01803B */  lui        $at, %hi(D_803B3E0C)
/* 1AEBEC 8039CB6C AC223E0C */  sw         $v0, %lo(D_803B3E0C)($at)
/* 1AEBF0 8039CB70 0C027DAC */  jal        func_8009F6B0
/* 1AEBF4 8039CB74 00003021 */   addu      $a2, $zero, $zero
/* 1AEBF8 8039CB78 2404013C */  addiu      $a0, $zero, 0x13c
/* 1AEBFC 8039CB7C 00002821 */  addu       $a1, $zero, $zero
/* 1AEC00 8039CB80 3C01803B */  lui        $at, %hi(D_803B3E10)
/* 1AEC04 8039CB84 AC223E10 */  sw         $v0, %lo(D_803B3E10)($at)
/* 1AEC08 8039CB88 0C027DAC */  jal        func_8009F6B0
/* 1AEC0C 8039CB8C 00003021 */   addu      $a2, $zero, $zero
/* 1AEC10 8039CB90 3C01803B */  lui        $at, %hi(D_803B3E14)
/* 1AEC14 8039CB94 AC223E14 */  sw         $v0, %lo(D_803B3E14)($at)
/* 1AEC18 8039CB98 0C0E730B */  jal        func_8039CC2C_1AECAC
/* 1AEC1C 8039CB9C 00000000 */   nop
/* 1AEC20 8039CBA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AEC24 8039CBA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1AEC28 8039CBA8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AEC2C 8039CBAC 03E00008 */  jr         $ra
/* 1AEC30 8039CBB0 00000000 */   nop

glabel func_8039CBB4_1AEC34
/* 1AEC34 8039CBB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AEC38 8039CBB8 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AEC3C 8039CBBC 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AEC40 8039CBC0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1AEC44 8039CBC4 0C00ABA6 */  jal        func_8002AE98_79E48
/* 1AEC48 8039CBC8 00000000 */   nop
/* 1AEC4C 8039CBCC 3C04803B */  lui        $a0, %hi(D_803B3D68)
/* 1AEC50 8039CBD0 8C843D68 */  lw         $a0, %lo(D_803B3D68)($a0)
/* 1AEC54 8039CBD4 0C027E98 */  jal        func_8009FA60
/* 1AEC58 8039CBD8 00000000 */   nop
/* 1AEC5C 8039CBDC 3C04803A */  lui        $a0, %hi(D_803A2F5B_1B4FDB)
/* 1AEC60 8039CBE0 90842F5B */  lbu        $a0, %lo(D_803A2F5B_1B4FDB)($a0)
/* 1AEC64 8039CBE4 0C0E741E */  jal        func_8039D078_1AF0F8
/* 1AEC68 8039CBE8 00000000 */   nop
/* 1AEC6C 8039CBEC 3C04803B */  lui        $a0, %hi(D_803B3E0C)
/* 1AEC70 8039CBF0 8C843E0C */  lw         $a0, %lo(D_803B3E0C)($a0)
/* 1AEC74 8039CBF4 0C027E98 */  jal        func_8009FA60
/* 1AEC78 8039CBF8 00000000 */   nop
/* 1AEC7C 8039CBFC 3C04803B */  lui        $a0, %hi(D_803B3E10)
/* 1AEC80 8039CC00 8C843E10 */  lw         $a0, %lo(D_803B3E10)($a0)
/* 1AEC84 8039CC04 0C027E98 */  jal        func_8009FA60
/* 1AEC88 8039CC08 00000000 */   nop
/* 1AEC8C 8039CC0C 3C04803B */  lui        $a0, %hi(D_803B3E14)
/* 1AEC90 8039CC10 8C843E14 */  lw         $a0, %lo(D_803B3E14)($a0)
/* 1AEC94 8039CC14 0C027E98 */  jal        func_8009FA60
/* 1AEC98 8039CC18 00000000 */   nop
/* 1AEC9C 8039CC1C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AECA0 8039CC20 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AECA4 8039CC24 03E00008 */  jr         $ra
/* 1AECA8 8039CC28 00000000 */   nop

glabel func_8039CC2C_1AECAC
/* 1AECAC 8039CC2C 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AECB0 8039CC30 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AECB4 8039CC34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AECB8 8039CC38 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AECBC 8039CC3C AFB00018 */  sw         $s0, 0x18($sp)
/* 1AECC0 8039CC40 00031040 */  sll        $v0, $v1, 1
/* 1AECC4 8039CC44 00431021 */  addu       $v0, $v0, $v1
/* 1AECC8 8039CC48 00021080 */  sll        $v0, $v0, 2
/* 1AECCC 8039CC4C 3C10803B */  lui        $s0, %hi(D_803A8B44_1BABC4)
/* 1AECD0 8039CC50 02028021 */  addu       $s0, $s0, $v0
/* 1AECD4 8039CC54 86108B44 */  lh         $s0, %lo(D_803A8B44_1BABC4)($s0)
/* 1AECD8 8039CC58 00002821 */  addu       $a1, $zero, $zero
/* 1AECDC 8039CC5C 00003021 */  addu       $a2, $zero, $zero
/* 1AECE0 8039CC60 0C027DAC */  jal        func_8009F6B0
/* 1AECE4 8039CC64 02002021 */   addu      $a0, $s0, $zero
/* 1AECE8 8039CC68 3C01803B */  lui        $at, %hi(D_803B3D50)
/* 1AECEC 8039CC6C AC223D50 */  sw         $v0, %lo(D_803B3D50)($at)
/* 1AECF0 8039CC70 90430066 */  lbu        $v1, 0x66($v0)
/* 1AECF4 8039CC74 34630003 */  ori        $v1, $v1, 3
/* 1AECF8 8039CC78 A0430066 */  sb         $v1, 0x66($v0)
/* 1AECFC 8039CC7C 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AED00 8039CC80 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AED04 8039CC84 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AED08 8039CC88 24843D6C */  addiu      $a0, $a0, %lo(D_803B3D6C)
/* 1AED0C 8039CC8C 00031040 */  sll        $v0, $v1, 1
/* 1AED10 8039CC90 00431021 */  addu       $v0, $v0, $v1
/* 1AED14 8039CC94 00021080 */  sll        $v0, $v0, 2
/* 1AED18 8039CC98 3C03803A */  lui        $v1, %hi(D_803A2F9C_1B501C)
/* 1AED1C 8039CC9C 8C632F9C */  lw         $v1, %lo(D_803A2F9C_1B501C)($v1)
/* 1AED20 8039CCA0 3C01803B */  lui        $at, %hi(D_803A8B48)
/* 1AED24 8039CCA4 00220821 */  addu       $at, $at, $v0
/* 1AED28 8039CCA8 8C228B48 */  lw         $v0, %lo(D_803A8B48)($at)
/* 1AED2C 8039CCAC 3C06803B */  lui        $a2, %hi(D_803B3D50)
/* 1AED30 8039CCB0 8CC63D50 */  lw         $a2, %lo(D_803B3D50)($a2)
/* 1AED34 8039CCB4 00031900 */  sll        $v1, $v1, 4
/* 1AED38 8039CCB8 00621821 */  addu       $v1, $v1, $v0
/* 1AED3C 8039CCBC 84620004 */  lh         $v0, 4($v1)
/* 1AED40 8039CCC0 3C05803B */  lui        $a1, %hi(D_803B3D78)
/* 1AED44 8039CCC4 24A53D78 */  addiu      $a1, $a1, %lo(D_803B3D78)
/* 1AED48 8039CCC8 02003821 */  addu       $a3, $s0, $zero
/* 1AED4C 8039CCCC AFA00014 */  sw         $zero, 0x14($sp)
/* 1AED50 8039CCD0 0C027D66 */  jal        func_8009F598
/* 1AED54 8039CCD4 AFA20010 */   sw        $v0, 0x10($sp)
/* 1AED58 8039CCD8 3C02803A */  lui        $v0, %hi(D_803A2F58_1B4FD8)
/* 1AED5C 8039CCDC 8C422F58 */  lw         $v0, %lo(D_803A2F58_1B4FD8)($v0)
/* 1AED60 8039CCE0 1440002A */  bnez       $v0, .L8039CD8C
/* 1AED64 8039CCE4 24020002 */   addiu     $v0, $zero, 2
/* 1AED68 8039CCE8 3C03803A */  lui        $v1, %hi(D_803A2FA8_1B5028)
/* 1AED6C 8039CCEC 8C632FA8 */  lw         $v1, %lo(D_803A2FA8_1B5028)($v1)
/* 1AED70 8039CCF0 10620012 */  beq        $v1, $v0, .L8039CD3C
/* 1AED74 8039CCF4 28620003 */   slti      $v0, $v1, 3
/* 1AED78 8039CCF8 10400005 */  beqz       $v0, .L8039CD10
/* 1AED7C 8039CCFC 24020001 */   addiu     $v0, $zero, 1
/* 1AED80 8039CD00 10620008 */  beq        $v1, $v0, .L8039CD24
/* 1AED84 8039CD04 00000000 */   nop
/* 1AED88 8039CD08 080E7363 */  j          .L8039CD8C
/* 1AED8C 8039CD0C 00000000 */   nop
.L8039CD10:
/* 1AED90 8039CD10 24020003 */  addiu      $v0, $zero, 3
/* 1AED94 8039CD14 10620013 */  beq        $v1, $v0, .L8039CD64
/* 1AED98 8039CD18 00000000 */   nop
/* 1AED9C 8039CD1C 080E7363 */  j          .L8039CD8C
/* 1AEDA0 8039CD20 00000000 */   nop
.L8039CD24:
/* 1AEDA4 8039CD24 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEDA8 8039CD28 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEDAC 8039CD2C 3C06803B */  lui        $a2, %hi(D_803B3E0C)
/* 1AEDB0 8039CD30 8CC63E0C */  lw         $a2, %lo(D_803B3E0C)($a2)
/* 1AEDB4 8039CD34 080E735D */  j          .L8039CD74
/* 1AEDB8 8039CD38 00000000 */   nop
.L8039CD3C:
/* 1AEDBC 8039CD3C 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEDC0 8039CD40 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEDC4 8039CD44 3C06803B */  lui        $a2, %hi(D_803B3E10)
/* 1AEDC8 8039CD48 8CC63E10 */  lw         $a2, %lo(D_803B3E10)($a2)
/* 1AEDCC 8039CD4C 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AEDD0 8039CD50 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AEDD4 8039CD54 3C07803B */  lui        $a3, %hi(D_803A8CB8_1BAD38)
/* 1AEDD8 8039CD58 24E78CB8 */  addiu      $a3, $a3, %lo(D_803A8CB8_1BAD38)
/* 1AEDDC 8039CD5C 080E7361 */  j          .L8039CD84
/* 1AEDE0 8039CD60 00000000 */   nop
.L8039CD64:
/* 1AEDE4 8039CD64 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEDE8 8039CD68 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEDEC 8039CD6C 3C06803B */  lui        $a2, %hi(D_803B3E14)
/* 1AEDF0 8039CD70 8CC63E14 */  lw         $a2, %lo(D_803B3E14)($a2)
.L8039CD74:
/* 1AEDF4 8039CD74 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AEDF8 8039CD78 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AEDFC 8039CD7C 3C07803B */  lui        $a3, %hi(D_803A8CB0_1BAD30)
/* 1AEE00 8039CD80 24E78CB0 */  addiu      $a3, $a3, %lo(D_803A8CB0_1BAD30)
.L8039CD84:
/* 1AEE04 8039CD84 0C02864D */  jal        func_800A1934
/* 1AEE08 8039CD88 00000000 */   nop
.L8039CD8C:
/* 1AEE0C 8039CD8C 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AEE10 8039CD90 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AEE14 8039CD94 24020001 */  addiu      $v0, $zero, 1
/* 1AEE18 8039CD98 1462003E */  bne        $v1, $v0, .L8039CE94
/* 1AEE1C 8039CD9C 24020003 */   addiu     $v0, $zero, 3
/* 1AEE20 8039CDA0 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEE24 8039CDA4 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEE28 8039CDA8 3C05803B */  lui        $a1, %hi(D_803A8CC0_1BAD40)
/* 1AEE2C 8039CDAC 24A58CC0 */  addiu      $a1, $a1, %lo(D_803A8CC0_1BAD40)
/* 1AEE30 8039CDB0 0C027F32 */  jal        func_8009FCC8
/* 1AEE34 8039CDB4 00000000 */   nop
/* 1AEE38 8039CDB8 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEE3C 8039CDBC 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEE40 8039CDC0 3C05803B */  lui        $a1, %hi(D_803A8CC8_1BAD48)
/* 1AEE44 8039CDC4 24A58CC8 */  addiu      $a1, $a1, %lo(D_803A8CC8_1BAD48)
/* 1AEE48 8039CDC8 0C027F32 */  jal        func_8009FCC8
/* 1AEE4C 8039CDCC 00000000 */   nop
/* 1AEE50 8039CDD0 24040055 */  addiu      $a0, $zero, 0x55
/* 1AEE54 8039CDD4 00002821 */  addu       $a1, $zero, $zero
/* 1AEE58 8039CDD8 0C027DAC */  jal        func_8009F6B0
/* 1AEE5C 8039CDDC 00003021 */   addu      $a2, $zero, $zero
/* 1AEE60 8039CDE0 24040136 */  addiu      $a0, $zero, 0x136
/* 1AEE64 8039CDE4 00002821 */  addu       $a1, $zero, $zero
/* 1AEE68 8039CDE8 3C01803B */  lui        $at, %hi(D_803B3D54)
/* 1AEE6C 8039CDEC AC223D54 */  sw         $v0, %lo(D_803B3D54)($at)
/* 1AEE70 8039CDF0 0C027DAC */  jal        func_8009F6B0
/* 1AEE74 8039CDF4 00003021 */   addu      $a2, $zero, $zero
/* 1AEE78 8039CDF8 24040061 */  addiu      $a0, $zero, 0x61
/* 1AEE7C 8039CDFC 00002821 */  addu       $a1, $zero, $zero
/* 1AEE80 8039CE00 3C01803B */  lui        $at, %hi(D_803B3D60)
/* 1AEE84 8039CE04 AC223D60 */  sw         $v0, %lo(D_803B3D60)($at)
/* 1AEE88 8039CE08 0C027DAC */  jal        func_8009F6B0
/* 1AEE8C 8039CE0C 00003021 */   addu      $a2, $zero, $zero
/* 1AEE90 8039CE10 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEE94 8039CE14 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEE98 8039CE18 3C06803B */  lui        $a2, %hi(D_803B3D54)
/* 1AEE9C 8039CE1C 8CC63D54 */  lw         $a2, %lo(D_803B3D54)($a2)
/* 1AEEA0 8039CE20 3C05803B */  lui        $a1, %hi(D_803A8CD0_1BAD50)
/* 1AEEA4 8039CE24 24A58CD0 */  addiu      $a1, $a1, %lo(D_803A8CD0_1BAD50)
/* 1AEEA8 8039CE28 3C01803B */  lui        $at, %hi(D_803B3D64)
/* 1AEEAC 8039CE2C AC223D64 */  sw         $v0, %lo(D_803B3D64)($at)
/* 1AEEB0 8039CE30 0C02864D */  jal        func_800A1934
/* 1AEEB4 8039CE34 00A03821 */   addu      $a3, $a1, $zero
/* 1AEEB8 8039CE38 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEEBC 8039CE3C 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEEC0 8039CE40 3C06803B */  lui        $a2, %hi(D_803B3D60)
/* 1AEEC4 8039CE44 8CC63D60 */  lw         $a2, %lo(D_803B3D60)($a2)
/* 1AEEC8 8039CE48 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AEECC 8039CE4C 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AEED0 8039CE50 3C07803B */  lui        $a3, %hi(D_803A8CD8_1BAD58)
/* 1AEED4 8039CE54 24E78CD8 */  addiu      $a3, $a3, %lo(D_803A8CD8_1BAD58)
/* 1AEED8 8039CE58 0C02864D */  jal        func_800A1934
/* 1AEEDC 8039CE5C 00000000 */   nop
/* 1AEEE0 8039CE60 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEEE4 8039CE64 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEEE8 8039CE68 3C06803B */  lui        $a2, %hi(D_803B3D64)
/* 1AEEEC 8039CE6C 8CC63D64 */  lw         $a2, %lo(D_803B3D64)($a2)
/* 1AEEF0 8039CE70 3C05803B */  lui        $a1, %hi(D_803A8CE0_1BAD60)
/* 1AEEF4 8039CE74 24A58CE0 */  addiu      $a1, $a1, %lo(D_803A8CE0_1BAD60)
/* 1AEEF8 8039CE78 3C07803B */  lui        $a3, %hi(D_803A8CE8_1BAD68)
/* 1AEEFC 8039CE7C 24E78CE8 */  addiu      $a3, $a3, %lo(D_803A8CE8_1BAD68)
/* 1AEF00 8039CE80 0C02864D */  jal        func_800A1934
/* 1AEF04 8039CE84 00000000 */   nop
/* 1AEF08 8039CE88 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AEF0C 8039CE8C 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AEF10 8039CE90 24020003 */  addiu      $v0, $zero, 3
.L8039CE94:
/* 1AEF14 8039CE94 1462003E */  bne        $v1, $v0, .L8039CF90
/* 1AEF18 8039CE98 24040003 */   addiu     $a0, $zero, 3
/* 1AEF1C 8039CE9C 00002821 */  addu       $a1, $zero, $zero
/* 1AEF20 8039CEA0 0C027DAC */  jal        func_8009F6B0
/* 1AEF24 8039CEA4 00003021 */   addu      $a2, $zero, $zero
/* 1AEF28 8039CEA8 24040003 */  addiu      $a0, $zero, 3
/* 1AEF2C 8039CEAC 00002821 */  addu       $a1, $zero, $zero
/* 1AEF30 8039CEB0 3C01803B */  lui        $at, %hi(D_803B3D58)
/* 1AEF34 8039CEB4 AC223D58 */  sw         $v0, %lo(D_803B3D58)($at)
/* 1AEF38 8039CEB8 0C027DAC */  jal        func_8009F6B0
/* 1AEF3C 8039CEBC 00003021 */   addu      $a2, $zero, $zero
/* 1AEF40 8039CEC0 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEF44 8039CEC4 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEF48 8039CEC8 3C05803B */  lui        $a1, %hi(D_803A8CF0_1BAD70)
/* 1AEF4C 8039CECC 24A58CF0 */  addiu      $a1, $a1, %lo(D_803A8CF0_1BAD70)
/* 1AEF50 8039CED0 3C06803B */  lui        $a2, %hi(D_803B3D58)
/* 1AEF54 8039CED4 8CC63D58 */  lw         $a2, %lo(D_803B3D58)($a2)
/* 1AEF58 8039CED8 3C10803B */  lui        $s0, %hi(D_803A8CF8_1BAD78)
/* 1AEF5C 8039CEDC 26108CF8 */  addiu      $s0, $s0, %lo(D_803A8CF8_1BAD78)
/* 1AEF60 8039CEE0 3C01803B */  lui        $at, %hi(D_803B3D5C)
/* 1AEF64 8039CEE4 AC223D5C */  sw         $v0, %lo(D_803B3D5C)($at)
/* 1AEF68 8039CEE8 0C02864D */  jal        func_800A1934
/* 1AEF6C 8039CEEC 02003821 */   addu      $a3, $s0, $zero
/* 1AEF70 8039CEF0 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AEF74 8039CEF4 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AEF78 8039CEF8 3C06803B */  lui        $a2, %hi(D_803B3D5C)
/* 1AEF7C 8039CEFC 8CC63D5C */  lw         $a2, %lo(D_803B3D5C)($a2)
/* 1AEF80 8039CF00 3C05803B */  lui        $a1, %hi(D_803A8D00_1BAD80)
/* 1AEF84 8039CF04 24A58D00 */  addiu      $a1, $a1, %lo(D_803A8D00_1BAD80)
/* 1AEF88 8039CF08 0C02864D */  jal        func_800A1934
/* 1AEF8C 8039CF0C 02003821 */   addu      $a3, $s0, $zero
/* 1AEF90 8039CF10 3C02803A */  lui        $v0, %hi(D_803A2F9C_1B501C)
/* 1AEF94 8039CF14 8C422F9C */  lw         $v0, %lo(D_803A2F9C_1B501C)($v0)
/* 1AEF98 8039CF18 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AEF9C 8039CF1C 24843D70 */  addiu      $a0, $a0, %lo(D_803B3D70)
/* 1AEFA0 8039CF20 3C06803B */  lui        $a2, %hi(D_803B3D58)
/* 1AEFA4 8039CF24 8CC63D58 */  lw         $a2, %lo(D_803B3D58)($a2)
/* 1AEFA8 8039CF28 00021080 */  sll        $v0, $v0, 2
/* 1AEFAC 8039CF2C 3C018007 */  lui        $at, %hi(D_8006AC54_B9C04)
/* 1AEFB0 8039CF30 00220821 */  addu       $at, $at, $v0
/* 1AEFB4 8039CF34 8422AC54 */  lh         $v0, %lo(D_8006AC54_B9C04)($at)
/* 1AEFB8 8039CF38 3C05803B */  lui        $a1, %hi(D_803B3D7C)
/* 1AEFBC 8039CF3C 24A53D7C */  addiu      $a1, $a1, %lo(D_803B3D7C)
/* 1AEFC0 8039CF40 24070003 */  addiu      $a3, $zero, 3
/* 1AEFC4 8039CF44 AFA00014 */  sw         $zero, 0x14($sp)
/* 1AEFC8 8039CF48 0C027D66 */  jal        func_8009F598
/* 1AEFCC 8039CF4C AFA20010 */   sw        $v0, 0x10($sp)
/* 1AEFD0 8039CF50 3C02803A */  lui        $v0, %hi(D_803A2F9C_1B501C)
/* 1AEFD4 8039CF54 8C422F9C */  lw         $v0, %lo(D_803A2F9C_1B501C)($v0)
/* 1AEFD8 8039CF58 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AEFDC 8039CF5C 24843D74 */  addiu      $a0, $a0, %lo(D_803B3D74)
/* 1AEFE0 8039CF60 3C06803B */  lui        $a2, %hi(D_803B3D5C)
/* 1AEFE4 8039CF64 8CC63D5C */  lw         $a2, %lo(D_803B3D5C)($a2)
/* 1AEFE8 8039CF68 00021080 */  sll        $v0, $v0, 2
/* 1AEFEC 8039CF6C 3C018007 */  lui        $at, %hi(D_8006AC56_B9C06)
/* 1AEFF0 8039CF70 00220821 */  addu       $at, $at, $v0
/* 1AEFF4 8039CF74 8422AC56 */  lh         $v0, %lo(D_8006AC56_B9C06)($at)
/* 1AEFF8 8039CF78 3C05803B */  lui        $a1, %hi(D_803B3D80)
/* 1AEFFC 8039CF7C 24A53D80 */  addiu      $a1, $a1, %lo(D_803B3D80)
/* 1AF000 8039CF80 24070003 */  addiu      $a3, $zero, 3
/* 1AF004 8039CF84 AFA00014 */  sw         $zero, 0x14($sp)
/* 1AF008 8039CF88 0C027D66 */  jal        func_8009F598
/* 1AF00C 8039CF8C AFA20010 */   sw        $v0, 0x10($sp)
.L8039CF90:
/* 1AF010 8039CF90 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AF014 8039CF94 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AF018 8039CF98 24020005 */  addiu      $v0, $zero, 5
/* 1AF01C 8039CF9C 1462001A */  bne        $v1, $v0, .L8039D008
/* 1AF020 8039CFA0 24020006 */   addiu     $v0, $zero, 6
/* 1AF024 8039CFA4 24040134 */  addiu      $a0, $zero, 0x134
/* 1AF028 8039CFA8 00002821 */  addu       $a1, $zero, $zero
/* 1AF02C 8039CFAC 0C027DAC */  jal        func_8009F6B0
/* 1AF030 8039CFB0 00003021 */   addu      $a2, $zero, $zero
/* 1AF034 8039CFB4 24040099 */  addiu      $a0, $zero, 0x99
/* 1AF038 8039CFB8 00002821 */  addu       $a1, $zero, $zero
/* 1AF03C 8039CFBC 3C01803B */  lui        $at, %hi(D_803B3D60)
/* 1AF040 8039CFC0 AC223D60 */  sw         $v0, %lo(D_803B3D60)($at)
/* 1AF044 8039CFC4 0C027DAC */  jal        func_8009F6B0
/* 1AF048 8039CFC8 00003021 */   addu      $a2, $zero, $zero
/* 1AF04C 8039CFCC 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF050 8039CFD0 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF054 8039CFD4 3C06803B */  lui        $a2, %hi(D_803B3D60)
/* 1AF058 8039CFD8 8CC63D60 */  lw         $a2, %lo(D_803B3D60)($a2)
/* 1AF05C 8039CFDC 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF060 8039CFE0 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF064 8039CFE4 3C07803B */  lui        $a3, %hi(D_803A8CB8_1BAD38)
/* 1AF068 8039CFE8 24E78CB8 */  addiu      $a3, $a3, %lo(D_803A8CB8_1BAD38)
/* 1AF06C 8039CFEC 3C01803B */  lui        $at, %hi(D_803B3D64)
/* 1AF070 8039CFF0 AC223D64 */  sw         $v0, %lo(D_803B3D64)($at)
/* 1AF074 8039CFF4 0C02864D */  jal        func_800A1934
/* 1AF078 8039CFF8 00000000 */   nop
/* 1AF07C 8039CFFC 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AF080 8039D000 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AF084 8039D004 24020006 */  addiu      $v0, $zero, 6
.L8039D008:
/* 1AF088 8039D008 14620016 */  bne        $v1, $v0, .L8039D064
/* 1AF08C 8039D00C 24040137 */   addiu     $a0, $zero, 0x137
/* 1AF090 8039D010 00002821 */  addu       $a1, $zero, $zero
/* 1AF094 8039D014 0C027DAC */  jal        func_8009F6B0
/* 1AF098 8039D018 00003021 */   addu      $a2, $zero, $zero
/* 1AF09C 8039D01C 24040099 */  addiu      $a0, $zero, 0x99
/* 1AF0A0 8039D020 00002821 */  addu       $a1, $zero, $zero
/* 1AF0A4 8039D024 3C01803B */  lui        $at, %hi(D_803B3D60)
/* 1AF0A8 8039D028 AC223D60 */  sw         $v0, %lo(D_803B3D60)($at)
/* 1AF0AC 8039D02C 0C027DAC */  jal        func_8009F6B0
/* 1AF0B0 8039D030 00003021 */   addu      $a2, $zero, $zero
/* 1AF0B4 8039D034 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF0B8 8039D038 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF0BC 8039D03C 3C06803B */  lui        $a2, %hi(D_803B3D60)
/* 1AF0C0 8039D040 8CC63D60 */  lw         $a2, %lo(D_803B3D60)($a2)
/* 1AF0C4 8039D044 3C05803B */  lui        $a1, %hi(D_803A8D08_1BAD88)
/* 1AF0C8 8039D048 24A58D08 */  addiu      $a1, $a1, %lo(D_803A8D08_1BAD88)
/* 1AF0CC 8039D04C 3C07803B */  lui        $a3, %hi(D_803A8D10_1BAD90)
/* 1AF0D0 8039D050 24E78D10 */  addiu      $a3, $a3, %lo(D_803A8D10_1BAD90)
/* 1AF0D4 8039D054 3C01803B */  lui        $at, %hi(D_803B3D64)
/* 1AF0D8 8039D058 AC223D64 */  sw         $v0, %lo(D_803B3D64)($at)
/* 1AF0DC 8039D05C 0C02864D */  jal        func_800A1934
/* 1AF0E0 8039D060 00000000 */   nop
.L8039D064:
/* 1AF0E4 8039D064 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AF0E8 8039D068 8FB00018 */  lw         $s0, 0x18($sp)
/* 1AF0EC 8039D06C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1AF0F0 8039D070 03E00008 */  jr         $ra
/* 1AF0F4 8039D074 00000000 */   nop

glabel func_8039D078_1AF0F8
/* 1AF0F8 8039D078 3C02803A */  lui        $v0, %hi(D_803A2F58_1B4FD8)
/* 1AF0FC 8039D07C 8C422F58 */  lw         $v0, %lo(D_803A2F58_1B4FD8)($v0)
/* 1AF100 8039D080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AF104 8039D084 AFB00010 */  sw         $s0, 0x10($sp)
/* 1AF108 8039D088 00808021 */  addu       $s0, $a0, $zero
/* 1AF10C 8039D08C 1440002B */  bnez       $v0, .L8039D13C
/* 1AF110 8039D090 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1AF114 8039D094 3C03803A */  lui        $v1, %hi(D_803A2FA8_1B5028)
/* 1AF118 8039D098 8C632FA8 */  lw         $v1, %lo(D_803A2FA8_1B5028)($v1)
/* 1AF11C 8039D09C 24020002 */  addiu      $v0, $zero, 2
/* 1AF120 8039D0A0 10620012 */  beq        $v1, $v0, .L8039D0EC
/* 1AF124 8039D0A4 28620003 */   slti      $v0, $v1, 3
/* 1AF128 8039D0A8 10400005 */  beqz       $v0, .L8039D0C0
/* 1AF12C 8039D0AC 24020001 */   addiu     $v0, $zero, 1
/* 1AF130 8039D0B0 10620008 */  beq        $v1, $v0, .L8039D0D4
/* 1AF134 8039D0B4 00000000 */   nop
/* 1AF138 8039D0B8 080E744F */  j          .L8039D13C
/* 1AF13C 8039D0BC 00000000 */   nop
.L8039D0C0:
/* 1AF140 8039D0C0 24020003 */  addiu      $v0, $zero, 3
/* 1AF144 8039D0C4 10620013 */  beq        $v1, $v0, .L8039D114
/* 1AF148 8039D0C8 00000000 */   nop
/* 1AF14C 8039D0CC 080E744F */  j          .L8039D13C
/* 1AF150 8039D0D0 00000000 */   nop
.L8039D0D4:
/* 1AF154 8039D0D4 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF158 8039D0D8 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF15C 8039D0DC 3C06803B */  lui        $a2, %hi(D_803B3E0C)
/* 1AF160 8039D0E0 8CC63E0C */  lw         $a2, %lo(D_803B3E0C)($a2)
/* 1AF164 8039D0E4 080E7449 */  j          .L8039D124
/* 1AF168 8039D0E8 00000000 */   nop
.L8039D0EC:
/* 1AF16C 8039D0EC 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF170 8039D0F0 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF174 8039D0F4 3C06803B */  lui        $a2, %hi(D_803B3E10)
/* 1AF178 8039D0F8 8CC63E10 */  lw         $a2, %lo(D_803B3E10)($a2)
/* 1AF17C 8039D0FC 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF180 8039D100 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF184 8039D104 3C07803B */  lui        $a3, %hi(D_803A8CB8_1BAD38)
/* 1AF188 8039D108 24E78CB8 */  addiu      $a3, $a3, %lo(D_803A8CB8_1BAD38)
/* 1AF18C 8039D10C 080E744D */  j          .L8039D134
/* 1AF190 8039D110 00000000 */   nop
.L8039D114:
/* 1AF194 8039D114 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF198 8039D118 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF19C 8039D11C 3C06803B */  lui        $a2, %hi(D_803B3E14)
/* 1AF1A0 8039D120 8CC63E14 */  lw         $a2, %lo(D_803B3E14)($a2)
.L8039D124:
/* 1AF1A4 8039D124 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF1A8 8039D128 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF1AC 8039D12C 3C07803B */  lui        $a3, %hi(D_803A8CB0_1BAD30)
/* 1AF1B0 8039D130 24E78CB0 */  addiu      $a3, $a3, %lo(D_803A8CB0_1BAD30)
.L8039D134:
/* 1AF1B4 8039D134 0C02864D */  jal        func_800A1934
/* 1AF1B8 8039D138 00000000 */   nop
.L8039D13C:
/* 1AF1BC 8039D13C 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF1C0 8039D140 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF1C4 8039D144 0C027E98 */  jal        func_8009FA60
/* 1AF1C8 8039D148 321000FF */   andi      $s0, $s0, 0xff
/* 1AF1CC 8039D14C 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF1D0 8039D150 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF1D4 8039D154 0C027880 */  jal        func_8009E200
/* 1AF1D8 8039D158 00000000 */   nop
/* 1AF1DC 8039D15C 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF1E0 8039D160 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF1E4 8039D164 0C027BB8 */  jal        func_8009EEE0
/* 1AF1E8 8039D168 00000000 */   nop
/* 1AF1EC 8039D16C 24020001 */  addiu      $v0, $zero, 1
/* 1AF1F0 8039D170 1602000E */  bne        $s0, $v0, .L8039D1AC
/* 1AF1F4 8039D174 24020003 */   addiu     $v0, $zero, 3
/* 1AF1F8 8039D178 3C04803B */  lui        $a0, %hi(D_803B3D54)
/* 1AF1FC 8039D17C 8C843D54 */  lw         $a0, %lo(D_803B3D54)($a0)
/* 1AF200 8039D180 0C027E98 */  jal        func_8009FA60
/* 1AF204 8039D184 00000000 */   nop
/* 1AF208 8039D188 3C04803B */  lui        $a0, %hi(D_803B3D60)
/* 1AF20C 8039D18C 8C843D60 */  lw         $a0, %lo(D_803B3D60)($a0)
/* 1AF210 8039D190 0C027E98 */  jal        func_8009FA60
/* 1AF214 8039D194 00000000 */   nop
/* 1AF218 8039D198 3C04803B */  lui        $a0, %hi(D_803B3D64)
/* 1AF21C 8039D19C 8C843D64 */  lw         $a0, %lo(D_803B3D64)($a0)
/* 1AF220 8039D1A0 0C027E98 */  jal        func_8009FA60
/* 1AF224 8039D1A4 00000000 */   nop
/* 1AF228 8039D1A8 24020003 */  addiu      $v0, $zero, 3
.L8039D1AC:
/* 1AF22C 8039D1AC 1602001A */  bne        $s0, $v0, .L8039D218
/* 1AF230 8039D1B0 24020005 */   addiu     $v0, $zero, 5
/* 1AF234 8039D1B4 3C04803B */  lui        $a0, %hi(D_803B3D58)
/* 1AF238 8039D1B8 8C843D58 */  lw         $a0, %lo(D_803B3D58)($a0)
/* 1AF23C 8039D1BC 0C027E98 */  jal        func_8009FA60
/* 1AF240 8039D1C0 00000000 */   nop
/* 1AF244 8039D1C4 3C04803B */  lui        $a0, %hi(D_803B3D5C)
/* 1AF248 8039D1C8 8C843D5C */  lw         $a0, %lo(D_803B3D5C)($a0)
/* 1AF24C 8039D1CC 0C027E98 */  jal        func_8009FA60
/* 1AF250 8039D1D0 00000000 */   nop
/* 1AF254 8039D1D4 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF258 8039D1D8 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF25C 8039D1DC 0C027880 */  jal        func_8009E200
/* 1AF260 8039D1E0 00000000 */   nop
/* 1AF264 8039D1E4 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF268 8039D1E8 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF26C 8039D1EC 0C027BB8 */  jal        func_8009EEE0
/* 1AF270 8039D1F0 00000000 */   nop
/* 1AF274 8039D1F4 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF278 8039D1F8 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AF27C 8039D1FC 0C027880 */  jal        func_8009E200
/* 1AF280 8039D200 00000000 */   nop
/* 1AF284 8039D204 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AF288 8039D208 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AF28C 8039D20C 0C027BB8 */  jal        func_8009EEE0
/* 1AF290 8039D210 00000000 */   nop
/* 1AF294 8039D214 24020005 */  addiu      $v0, $zero, 5
.L8039D218:
/* 1AF298 8039D218 1602000A */  bne        $s0, $v0, .L8039D244
/* 1AF29C 8039D21C 24020006 */   addiu     $v0, $zero, 6
/* 1AF2A0 8039D220 3C04803B */  lui        $a0, %hi(D_803B3D60)
/* 1AF2A4 8039D224 8C843D60 */  lw         $a0, %lo(D_803B3D60)($a0)
/* 1AF2A8 8039D228 0C027E98 */  jal        func_8009FA60
/* 1AF2AC 8039D22C 00000000 */   nop
/* 1AF2B0 8039D230 3C04803B */  lui        $a0, %hi(D_803B3D64)
/* 1AF2B4 8039D234 8C843D64 */  lw         $a0, %lo(D_803B3D64)($a0)
/* 1AF2B8 8039D238 0C027E98 */  jal        func_8009FA60
/* 1AF2BC 8039D23C 00000000 */   nop
/* 1AF2C0 8039D240 24020006 */  addiu      $v0, $zero, 6
.L8039D244:
/* 1AF2C4 8039D244 16020009 */  bne        $s0, $v0, .L8039D26C
/* 1AF2C8 8039D248 00000000 */   nop
/* 1AF2CC 8039D24C 3C04803B */  lui        $a0, %hi(D_803B3D60)
/* 1AF2D0 8039D250 8C843D60 */  lw         $a0, %lo(D_803B3D60)($a0)
/* 1AF2D4 8039D254 0C027E98 */  jal        func_8009FA60
/* 1AF2D8 8039D258 00000000 */   nop
/* 1AF2DC 8039D25C 3C04803B */  lui        $a0, %hi(D_803B3D64)
/* 1AF2E0 8039D260 8C843D64 */  lw         $a0, %lo(D_803B3D64)($a0)
/* 1AF2E4 8039D264 0C027E98 */  jal        func_8009FA60
/* 1AF2E8 8039D268 00000000 */   nop
.L8039D26C:
/* 1AF2EC 8039D26C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AF2F0 8039D270 8FB00010 */  lw         $s0, 0x10($sp)
/* 1AF2F4 8039D274 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AF2F8 8039D278 03E00008 */  jr         $ra
/* 1AF2FC 8039D27C 00000000 */   nop

glabel func_8039D280_1AF300
/* 1AF300 8039D280 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1AF304 8039D284 00002021 */  addu       $a0, $zero, $zero
/* 1AF308 8039D288 2405000E */  addiu      $a1, $zero, 0xe
/* 1AF30C 8039D28C AFBF004C */  sw         $ra, 0x4c($sp)
/* 1AF310 8039D290 AFB60048 */  sw         $s6, 0x48($sp)
/* 1AF314 8039D294 AFB50044 */  sw         $s5, 0x44($sp)
/* 1AF318 8039D298 AFB40040 */  sw         $s4, 0x40($sp)
/* 1AF31C 8039D29C AFB3003C */  sw         $s3, 0x3c($sp)
/* 1AF320 8039D2A0 AFB20038 */  sw         $s2, 0x38($sp)
/* 1AF324 8039D2A4 AFB10034 */  sw         $s1, 0x34($sp)
/* 1AF328 8039D2A8 0C02DAC0 */  jal        func_800B6B00
/* 1AF32C 8039D2AC AFB00030 */   sw        $s0, 0x30($sp)
/* 1AF330 8039D2B0 00002021 */  addu       $a0, $zero, $zero
/* 1AF334 8039D2B4 2405000C */  addiu      $a1, $zero, 0xc
/* 1AF338 8039D2B8 0C02DAE0 */  jal        func_800B6B80
/* 1AF33C 8039D2BC 24060004 */   addiu     $a2, $zero, 4
/* 1AF340 8039D2C0 3C05803B */  lui        $a1, %hi(D_803A8D18_1BAD98)
/* 1AF344 8039D2C4 24A58D18 */  addiu      $a1, $a1, %lo(D_803A8D18_1BAD98)
/* 1AF348 8039D2C8 0C02DA9C */  jal        func_800B6A70
/* 1AF34C 8039D2CC 00002021 */   addu      $a0, $zero, $zero
/* 1AF350 8039D2D0 3C108015 */  lui        $s0, %hi(D_8014CF90)
/* 1AF354 8039D2D4 2610CF90 */  addiu      $s0, $s0, %lo(D_8014CF90)
/* 1AF358 8039D2D8 92020001 */  lbu        $v0, 1($s0)
/* 1AF35C 8039D2DC 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* 1AF360 8039D2E0 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* 1AF364 8039D2E4 30520008 */  andi       $s2, $v0, 8
/* 1AF368 8039D2E8 30530004 */  andi       $s3, $v0, 4
/* 1AF36C 8039D2EC 30540001 */  andi       $s4, $v0, 1
/* 1AF370 8039D2F0 30631000 */  andi       $v1, $v1, 0x1000
/* 1AF374 8039D2F4 10600005 */  beqz       $v1, .L8039D30C
/* 1AF378 8039D2F8 30510002 */   andi      $s1, $v0, 2
/* 1AF37C 8039D2FC 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF380 8039D300 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF384 8039D304 0C00ADDB */  jal        func_8002B76C_7A71C
/* 1AF388 8039D308 00000000 */   nop
.L8039D30C:
/* 1AF38C 8039D30C 12200024 */  beqz       $s1, .L8039D3A0
/* 1AF390 8039D310 00000000 */   nop
/* 1AF394 8039D314 96020000 */  lhu        $v0, ($s0)
/* 1AF398 8039D318 30422000 */  andi       $v0, $v0, 0x2000
/* 1AF39C 8039D31C 10400010 */  beqz       $v0, .L8039D360
/* 1AF3A0 8039D320 00000000 */   nop
/* 1AF3A4 8039D324 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 1AF3A8 8039D328 C422CFA8 */  lwc1       $f2, %lo(D_8014CFA8)($at)
/* 1AF3AC 8039D32C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF3B0 8039D330 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF3B4 8039D334 44800000 */  mtc1       $zero, $f0
/* 1AF3B8 8039D338 00000000 */  nop
/* 1AF3BC 8039D33C 46001087 */  neg.s      $f2, $f2
/* 1AF3C0 8039D340 44050000 */  mfc1       $a1, $f0
/* 1AF3C4 8039D344 00000000 */  nop
/* 1AF3C8 8039D348 44071000 */  mfc1       $a3, $f2
/* 1AF3CC 8039D34C 00000000 */  nop
/* 1AF3D0 8039D350 0C00AC5F */  jal        func_8002B17C_7A12C
/* 1AF3D4 8039D354 00A03021 */   addu      $a2, $a1, $zero
/* 1AF3D8 8039D358 080E7503 */  j          .L8039D40C
/* 1AF3DC 8039D35C 00000000 */   nop
.L8039D360:
/* 1AF3E0 8039D360 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 1AF3E4 8039D364 C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 1AF3E8 8039D368 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 1AF3EC 8039D36C C422CFA8 */  lwc1       $f2, %lo(D_8014CFA8)($at)
/* 1AF3F0 8039D370 46000007 */  neg.s      $f0, $f0
/* 1AF3F4 8039D374 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF3F8 8039D378 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF3FC 8039D37C 46001087 */  neg.s      $f2, $f2
/* 1AF400 8039D380 44050000 */  mfc1       $a1, $f0
/* 1AF404 8039D384 00000000 */  nop
/* 1AF408 8039D388 44061000 */  mfc1       $a2, $f2
/* 1AF40C 8039D38C 00000000 */  nop
/* 1AF410 8039D390 0C00AC5F */  jal        func_8002B17C_7A12C
/* 1AF414 8039D394 00003821 */   addu      $a3, $zero, $zero
/* 1AF418 8039D398 080E7503 */  j          .L8039D40C
/* 1AF41C 8039D39C 00000000 */   nop
.L8039D3A0:
/* 1AF420 8039D3A0 96020000 */  lhu        $v0, ($s0)
/* 1AF424 8039D3A4 30422000 */  andi       $v0, $v0, 0x2000
/* 1AF428 8039D3A8 1040000C */  beqz       $v0, .L8039D3DC
/* 1AF42C 8039D3AC 00003021 */   addu      $a2, $zero, $zero
/* 1AF430 8039D3B0 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 1AF434 8039D3B4 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 1AF438 8039D3B8 3C058015 */  lui        $a1, %hi(D_8014CFA4)
/* 1AF43C 8039D3BC 8CA5CFA4 */  lw         $a1, %lo(D_8014CFA4)($a1)
/* 1AF440 8039D3C0 46000007 */  neg.s      $f0, $f0
/* 1AF444 8039D3C4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF448 8039D3C8 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF44C 8039D3CC 44070000 */  mfc1       $a3, $f0
/* 1AF450 8039D3D0 00000000 */  nop
/* 1AF454 8039D3D4 080E7501 */  j          .L8039D404
/* 1AF458 8039D3D8 00000000 */   nop
.L8039D3DC:
/* 1AF45C 8039D3DC 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 1AF460 8039D3E0 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 1AF464 8039D3E4 3C058015 */  lui        $a1, %hi(D_8014CFA4)
/* 1AF468 8039D3E8 8CA5CFA4 */  lw         $a1, %lo(D_8014CFA4)($a1)
/* 1AF46C 8039D3EC 46000007 */  neg.s      $f0, $f0
/* 1AF470 8039D3F0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF474 8039D3F4 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF478 8039D3F8 44060000 */  mfc1       $a2, $f0
/* 1AF47C 8039D3FC 00000000 */  nop
/* 1AF480 8039D400 00003821 */  addu       $a3, $zero, $zero
.L8039D404:
/* 1AF484 8039D404 0C00ABEB */  jal        func_8002AFAC_79F5C
/* 1AF488 8039D408 00000000 */   nop
.L8039D40C:
/* 1AF48C 8039D40C 12200020 */  beqz       $s1, .L8039D490
/* 1AF490 8039D410 2E420001 */   sltiu     $v0, $s2, 1
/* 1AF494 8039D414 3C108015 */  lui        $s0, %hi(D_8014CF94)
/* 1AF498 8039D418 2610CF94 */  addiu      $s0, $s0, %lo(D_8014CF94)
/* 1AF49C 8039D41C 96020000 */  lhu        $v0, ($s0)
/* 1AF4A0 8039D420 30420100 */  andi       $v0, $v0, 0x100
/* 1AF4A4 8039D424 1040000B */  beqz       $v0, .L8039D454
/* 1AF4A8 8039D428 00000000 */   nop
/* 1AF4AC 8039D42C 3C053DCC */  lui        $a1, 0x3dcc
/* 1AF4B0 8039D430 34A5CCCD */  ori        $a1, $a1, 0xcccd
/* 1AF4B4 8039D434 44800000 */  mtc1       $zero, $f0
/* 1AF4B8 8039D438 00000000 */  nop
/* 1AF4BC 8039D43C 44060000 */  mfc1       $a2, $f0
/* 1AF4C0 8039D440 00000000 */  nop
/* 1AF4C4 8039D444 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF4C8 8039D448 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF4CC 8039D44C 0C00AD43 */  jal        func_8002B50C_7A4BC
/* 1AF4D0 8039D450 00C03821 */   addu      $a3, $a2, $zero
.L8039D454:
/* 1AF4D4 8039D454 96020000 */  lhu        $v0, ($s0)
/* 1AF4D8 8039D458 30420200 */  andi       $v0, $v0, 0x200
/* 1AF4DC 8039D45C 1040000C */  beqz       $v0, .L8039D490
/* 1AF4E0 8039D460 2E420001 */   sltiu     $v0, $s2, 1
/* 1AF4E4 8039D464 3C05BDCC */  lui        $a1, 0xbdcc
/* 1AF4E8 8039D468 34A5CCCD */  ori        $a1, $a1, 0xcccd
/* 1AF4EC 8039D46C 44800000 */  mtc1       $zero, $f0
/* 1AF4F0 8039D470 00000000 */  nop
/* 1AF4F4 8039D474 44060000 */  mfc1       $a2, $f0
/* 1AF4F8 8039D478 00000000 */  nop
/* 1AF4FC 8039D47C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AF500 8039D480 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AF504 8039D484 0C00AD43 */  jal        func_8002B50C_7A4BC
/* 1AF508 8039D488 00C03821 */   addu      $a3, $a2, $zero
/* 1AF50C 8039D48C 2E420001 */  sltiu      $v0, $s2, 1
.L8039D490:
/* 1AF510 8039D490 2E630001 */  sltiu      $v1, $s3, 1
/* 1AF514 8039D494 00431024 */  and        $v0, $v0, $v1
/* 1AF518 8039D498 10400091 */  beqz       $v0, .L8039D6E0
/* 1AF51C 8039D49C 3A820001 */   xori      $v0, $s4, 1
/* 1AF520 8039D4A0 2E230001 */  sltiu      $v1, $s1, 1
/* 1AF524 8039D4A4 00431024 */  and        $v0, $v0, $v1
/* 1AF528 8039D4A8 1040008D */  beqz       $v0, .L8039D6E0
/* 1AF52C 8039D4AC 00000000 */   nop
/* 1AF530 8039D4B0 3C02803A */  lui        $v0, %hi(D_803A2FA8_1B5028)
/* 1AF534 8039D4B4 8C422FA8 */  lw         $v0, %lo(D_803A2FA8_1B5028)($v0)
/* 1AF538 8039D4B8 3C10803A */  lui        $s0, %hi(D_803A2F58_1B4FD8)
/* 1AF53C 8039D4BC 8E102F58 */  lw         $s0, %lo(D_803A2F58_1B4FD8)($s0)
/* 1AF540 8039D4C0 3C11803A */  lui        $s1, %hi(D_803A2F9C_1B501C)
/* 1AF544 8039D4C4 8E312F9C */  lw         $s1, %lo(D_803A2F9C_1B501C)($s1)
/* 1AF548 8039D4C8 3C01803A */  lui        $at, %hi(D_803A2FAC_1B502C)
/* 1AF54C 8039D4CC AC222FAC */  sw         $v0, %lo(D_803A2FAC_1B502C)($at)
/* 1AF550 8039D4D0 0C027444 */  jal        func_8009D110
/* 1AF554 8039D4D4 00002021 */   addu      $a0, $zero, $zero
/* 1AF558 8039D4D8 3C04803A */  lui        $a0, %hi(D_803A30AC_1B512C)
/* 1AF55C 8039D4DC 248430AC */  addiu      $a0, $a0, %lo(D_803A30AC_1B512C)
/* 1AF560 8039D4E0 0C027752 */  jal        func_8009DD48
/* 1AF564 8039D4E4 00000000 */   nop
/* 1AF568 8039D4E8 3C04803A */  lui        $a0, %hi(D_803A2F58_1B4FD8)
/* 1AF56C 8039D4EC 8C842F58 */  lw         $a0, %lo(D_803A2F58_1B4FD8)($a0)
/* 1AF570 8039D4F0 00041840 */  sll        $v1, $a0, 1
/* 1AF574 8039D4F4 00641821 */  addu       $v1, $v1, $a0
/* 1AF578 8039D4F8 00031880 */  sll        $v1, $v1, 2
/* 1AF57C 8039D4FC 3C01803B */  lui        $at, %hi(D_803A8B4C_1BABCC)
/* 1AF580 8039D500 00230821 */  addu       $at, $at, $v1
/* 1AF584 8039D504 84238B4C */  lh         $v1, %lo(D_803A8B4C_1BABCC)($at)
/* 1AF588 8039D508 3C04803A */  lui        $a0, %hi(D_803A2F9C_1B501C)
/* 1AF58C 8039D50C 8C842F9C */  lw         $a0, %lo(D_803A2F9C_1B501C)($a0)
/* 1AF590 8039D510 0040B021 */  addu       $s6, $v0, $zero
/* 1AF594 8039D514 2463FFFF */  addiu      $v1, $v1, -1
/* 1AF598 8039D518 0064102A */  slt        $v0, $v1, $a0
/* 1AF59C 8039D51C 10400005 */  beqz       $v0, .L8039D534
/* 1AF5A0 8039D520 00000000 */   nop
/* 1AF5A4 8039D524 3C01803A */  lui        $at, %hi(D_803A2F9C_1B501C)
/* 1AF5A8 8039D528 AC232F9C */  sw         $v1, %lo(D_803A2F9C_1B501C)($at)
/* 1AF5AC 8039D52C 080E7551 */  j          .L8039D544
/* 1AF5B0 8039D530 00000000 */   nop
.L8039D534:
/* 1AF5B4 8039D534 04810003 */  bgez       $a0, .L8039D544
/* 1AF5B8 8039D538 00000000 */   nop
/* 1AF5BC 8039D53C 3C01803A */  lui        $at, %hi(D_803A2F9C_1B501C)
/* 1AF5C0 8039D540 AC202F9C */  sw         $zero, %lo(D_803A2F9C_1B501C)($at)
.L8039D544:
/* 1AF5C4 8039D544 3C02803A */  lui        $v0, %hi(D_803A2F9C_1B501C)
/* 1AF5C8 8039D548 8C422F9C */  lw         $v0, %lo(D_803A2F9C_1B501C)($v0)
/* 1AF5CC 8039D54C 14510005 */  bne        $v0, $s1, .L8039D564
/* 1AF5D0 8039D550 00000000 */   nop
/* 1AF5D4 8039D554 3C02803A */  lui        $v0, %hi(D_803A2F58_1B4FD8)
/* 1AF5D8 8039D558 8C422F58 */  lw         $v0, %lo(D_803A2F58_1B4FD8)($v0)
/* 1AF5DC 8039D55C 10500007 */  beq        $v0, $s0, .L8039D57C
/* 1AF5E0 8039D560 00000000 */   nop
.L8039D564:
/* 1AF5E4 8039D564 0C0E741E */  jal        func_8039D078_1AF0F8
/* 1AF5E8 8039D568 320400FF */   andi      $a0, $s0, 0xff
/* 1AF5EC 8039D56C 0C0E730B */  jal        func_8039CC2C_1AECAC
/* 1AF5F0 8039D570 00000000 */   nop
/* 1AF5F4 8039D574 3C02803A */  lui        $v0, %hi(D_803A2F58_1B4FD8)
/* 1AF5F8 8039D578 8C422F58 */  lw         $v0, %lo(D_803A2F58_1B4FD8)($v0)
.L8039D57C:
/* 1AF5FC 8039D57C 14400058 */  bnez       $v0, .L8039D6E0
/* 1AF600 8039D580 00000000 */   nop
/* 1AF604 8039D584 3C02803A */  lui        $v0, %hi(D_803A2FA8_1B5028)
/* 1AF608 8039D588 8C422FA8 */  lw         $v0, %lo(D_803A2FA8_1B5028)($v0)
/* 1AF60C 8039D58C 3C03803A */  lui        $v1, %hi(D_803A2FAC_1B502C)
/* 1AF610 8039D590 8C632FAC */  lw         $v1, %lo(D_803A2FAC_1B502C)($v1)
/* 1AF614 8039D594 10430052 */  beq        $v0, $v1, .L8039D6E0
/* 1AF618 8039D598 24020002 */   addiu     $v0, $zero, 2
/* 1AF61C 8039D59C 10620012 */  beq        $v1, $v0, .L8039D5E8
/* 1AF620 8039D5A0 28620003 */   slti      $v0, $v1, 3
/* 1AF624 8039D5A4 10400005 */  beqz       $v0, .L8039D5BC
/* 1AF628 8039D5A8 24020001 */   addiu     $v0, $zero, 1
/* 1AF62C 8039D5AC 10620008 */  beq        $v1, $v0, .L8039D5D0
/* 1AF630 8039D5B0 00000000 */   nop
/* 1AF634 8039D5B4 080E758E */  j          .L8039D638
/* 1AF638 8039D5B8 00000000 */   nop
.L8039D5BC:
/* 1AF63C 8039D5BC 24020003 */  addiu      $v0, $zero, 3
/* 1AF640 8039D5C0 10620013 */  beq        $v1, $v0, .L8039D610
/* 1AF644 8039D5C4 00000000 */   nop
/* 1AF648 8039D5C8 080E758E */  j          .L8039D638
/* 1AF64C 8039D5CC 00000000 */   nop
.L8039D5D0:
/* 1AF650 8039D5D0 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF654 8039D5D4 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF658 8039D5D8 3C06803B */  lui        $a2, %hi(D_803B3E0C)
/* 1AF65C 8039D5DC 8CC63E0C */  lw         $a2, %lo(D_803B3E0C)($a2)
/* 1AF660 8039D5E0 080E7588 */  j          .L8039D620
/* 1AF664 8039D5E4 00000000 */   nop
.L8039D5E8:
/* 1AF668 8039D5E8 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF66C 8039D5EC 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF670 8039D5F0 3C06803B */  lui        $a2, %hi(D_803B3E10)
/* 1AF674 8039D5F4 8CC63E10 */  lw         $a2, %lo(D_803B3E10)($a2)
/* 1AF678 8039D5F8 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF67C 8039D5FC 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF680 8039D600 3C07803B */  lui        $a3, %hi(D_803A8CB8_1BAD38)
/* 1AF684 8039D604 24E78CB8 */  addiu      $a3, $a3, %lo(D_803A8CB8_1BAD38)
/* 1AF688 8039D608 080E758C */  j          .L8039D630
/* 1AF68C 8039D60C 00000000 */   nop
.L8039D610:
/* 1AF690 8039D610 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF694 8039D614 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF698 8039D618 3C06803B */  lui        $a2, %hi(D_803B3E14)
/* 1AF69C 8039D61C 8CC63E14 */  lw         $a2, %lo(D_803B3E14)($a2)
.L8039D620:
/* 1AF6A0 8039D620 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF6A4 8039D624 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF6A8 8039D628 3C07803B */  lui        $a3, %hi(D_803A8CB0_1BAD30)
/* 1AF6AC 8039D62C 24E78CB0 */  addiu      $a3, $a3, %lo(D_803A8CB0_1BAD30)
.L8039D630:
/* 1AF6B0 8039D630 0C02864D */  jal        func_800A1934
/* 1AF6B4 8039D634 00000000 */   nop
.L8039D638:
/* 1AF6B8 8039D638 3C03803A */  lui        $v1, %hi(D_803A2FA8_1B5028)
/* 1AF6BC 8039D63C 8C632FA8 */  lw         $v1, %lo(D_803A2FA8_1B5028)($v1)
/* 1AF6C0 8039D640 24020002 */  addiu      $v0, $zero, 2
/* 1AF6C4 8039D644 10620012 */  beq        $v1, $v0, .L8039D690
/* 1AF6C8 8039D648 28620003 */   slti      $v0, $v1, 3
/* 1AF6CC 8039D64C 10400005 */  beqz       $v0, .L8039D664
/* 1AF6D0 8039D650 24020001 */   addiu     $v0, $zero, 1
/* 1AF6D4 8039D654 10620008 */  beq        $v1, $v0, .L8039D678
/* 1AF6D8 8039D658 00000000 */   nop
/* 1AF6DC 8039D65C 080E75B8 */  j          .L8039D6E0
/* 1AF6E0 8039D660 00000000 */   nop
.L8039D664:
/* 1AF6E4 8039D664 24020003 */  addiu      $v0, $zero, 3
/* 1AF6E8 8039D668 10620013 */  beq        $v1, $v0, .L8039D6B8
/* 1AF6EC 8039D66C 00000000 */   nop
/* 1AF6F0 8039D670 080E75B8 */  j          .L8039D6E0
/* 1AF6F4 8039D674 00000000 */   nop
.L8039D678:
/* 1AF6F8 8039D678 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF6FC 8039D67C 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF700 8039D680 3C06803B */  lui        $a2, %hi(D_803B3E0C)
/* 1AF704 8039D684 8CC63E0C */  lw         $a2, %lo(D_803B3E0C)($a2)
/* 1AF708 8039D688 080E75B2 */  j          .L8039D6C8
/* 1AF70C 8039D68C 00000000 */   nop
.L8039D690:
/* 1AF710 8039D690 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF714 8039D694 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF718 8039D698 3C06803B */  lui        $a2, %hi(D_803B3E10)
/* 1AF71C 8039D69C 8CC63E10 */  lw         $a2, %lo(D_803B3E10)($a2)
/* 1AF720 8039D6A0 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF724 8039D6A4 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF728 8039D6A8 3C07803B */  lui        $a3, %hi(D_803A8CB8_1BAD38)
/* 1AF72C 8039D6AC 24E78CB8 */  addiu      $a3, $a3, %lo(D_803A8CB8_1BAD38)
/* 1AF730 8039D6B0 080E75B6 */  j          .L8039D6D8
/* 1AF734 8039D6B4 00000000 */   nop
.L8039D6B8:
/* 1AF738 8039D6B8 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AF73C 8039D6BC 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AF740 8039D6C0 3C06803B */  lui        $a2, %hi(D_803B3E14)
/* 1AF744 8039D6C4 8CC63E14 */  lw         $a2, %lo(D_803B3E14)($a2)
.L8039D6C8:
/* 1AF748 8039D6C8 3C05803B */  lui        $a1, %hi(D_803A8CA8_1BAD28)
/* 1AF74C 8039D6CC 24A58CA8 */  addiu      $a1, $a1, %lo(D_803A8CA8_1BAD28)
/* 1AF750 8039D6D0 3C07803B */  lui        $a3, %hi(D_803A8CB0_1BAD30)
/* 1AF754 8039D6D4 24E78CB0 */  addiu      $a3, $a3, %lo(D_803A8CB0_1BAD30)
.L8039D6D8:
/* 1AF758 8039D6D8 0C02864D */  jal        func_800A1934
/* 1AF75C 8039D6DC 00000000 */   nop
.L8039D6E0:
/* 1AF760 8039D6E0 3C02803A */  lui        $v0, %hi(D_803A2FA4_1B5024)
/* 1AF764 8039D6E4 8C422FA4 */  lw         $v0, %lo(D_803A2FA4_1B5024)($v0)
/* 1AF768 8039D6E8 5040000C */  beql       $v0, $zero, .L8039D71C
/* 1AF76C 8039D6EC 0000A821 */   addu      $s5, $zero, $zero
/* 1AF770 8039D6F0 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 1AF774 8039D6F4 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 1AF778 8039D6F8 30620010 */  andi       $v0, $v1, 0x10
/* 1AF77C 8039D6FC 10400003 */  beqz       $v0, .L8039D70C
/* 1AF780 8039D700 30620020 */   andi      $v0, $v1, 0x20
/* 1AF784 8039D704 080E75C5 */  j          .L8039D714
/* 1AF788 8039D708 24150001 */   addiu     $s5, $zero, 1
.L8039D70C:
/* 1AF78C 8039D70C 54400001 */  bnezl      $v0, .L8039D714
/* 1AF790 8039D710 24150002 */   addiu     $s5, $zero, 2
.L8039D714:
/* 1AF794 8039D714 3C02803A */  lui        $v0, %hi(D_803A2FA4_1B5024)
/* 1AF798 8039D718 8C422FA4 */  lw         $v0, %lo(D_803A2FA4_1B5024)($v0)
.L8039D71C:
/* 1AF79C 8039D71C 104000C3 */  beqz       $v0, .L8039DA2C
/* 1AF7A0 8039D720 32A300FF */   andi      $v1, $s5, 0xff
/* 1AF7A4 8039D724 24020001 */  addiu      $v0, $zero, 1
/* 1AF7A8 8039D728 14620051 */  bne        $v1, $v0, .L8039D870
/* 1AF7AC 8039D72C 24020002 */   addiu     $v0, $zero, 2
/* 1AF7B0 8039D730 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF7B4 8039D734 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF7B8 8039D738 0C027B09 */  jal        func_8009EC24
/* 1AF7BC 8039D73C 00002821 */   addu      $a1, $zero, $zero
/* 1AF7C0 8039D740 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF7C4 8039D744 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF7C8 8039D748 0C027AFA */  jal        func_8009EBE8
/* 1AF7CC 8039D74C 00000000 */   nop
/* 1AF7D0 8039D750 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF7D4 8039D754 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF7D8 8039D758 0C027AF5 */  jal        func_8009EBD4
/* 1AF7DC 8039D75C 00000000 */   nop
/* 1AF7E0 8039D760 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF7E4 8039D764 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF7E8 8039D768 0C027D49 */  jal        func_8009F524
/* 1AF7EC 8039D76C 00002821 */   addu      $a1, $zero, $zero
/* 1AF7F0 8039D770 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF7F4 8039D774 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF7F8 8039D778 0C027D3A */  jal        func_8009F4E8
/* 1AF7FC 8039D77C 00000000 */   nop
/* 1AF800 8039D780 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF804 8039D784 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF808 8039D788 0C027D35 */  jal        func_8009F4D4
/* 1AF80C 8039D78C 00000000 */   nop
/* 1AF810 8039D790 3C02803B */  lui        $v0, %hi(D_803B3D6C)
/* 1AF814 8039D794 8C423D6C */  lw         $v0, %lo(D_803B3D6C)($v0)
/* 1AF818 8039D798 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AF81C 8039D79C 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AF820 8039D7A0 84420024 */  lh         $v0, 0x24($v0)
/* 1AF824 8039D7A4 3C01803B */  lui        $at, %hi(D_803B3E08)
/* 1AF828 8039D7A8 AC223E08 */  sw         $v0, %lo(D_803B3E08)($at)
/* 1AF82C 8039D7AC 24020003 */  addiu      $v0, $zero, 3
/* 1AF830 8039D7B0 146200C0 */  bne        $v1, $v0, .L8039DAB4
/* 1AF834 8039D7B4 00000000 */   nop
/* 1AF838 8039D7B8 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF83C 8039D7BC 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF840 8039D7C0 0C027B09 */  jal        func_8009EC24
/* 1AF844 8039D7C4 00002821 */   addu      $a1, $zero, $zero
/* 1AF848 8039D7C8 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF84C 8039D7CC 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF850 8039D7D0 0C027AFA */  jal        func_8009EBE8
/* 1AF854 8039D7D4 00000000 */   nop
/* 1AF858 8039D7D8 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF85C 8039D7DC 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF860 8039D7E0 0C027AF5 */  jal        func_8009EBD4
/* 1AF864 8039D7E4 00000000 */   nop
/* 1AF868 8039D7E8 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF86C 8039D7EC 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF870 8039D7F0 0C027D49 */  jal        func_8009F524
/* 1AF874 8039D7F4 00002821 */   addu      $a1, $zero, $zero
/* 1AF878 8039D7F8 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF87C 8039D7FC 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF880 8039D800 0C027D3A */  jal        func_8009F4E8
/* 1AF884 8039D804 00000000 */   nop
/* 1AF888 8039D808 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF88C 8039D80C 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF890 8039D810 0C027D35 */  jal        func_8009F4D4
/* 1AF894 8039D814 00000000 */   nop
/* 1AF898 8039D818 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF89C 8039D81C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AF8A0 8039D820 0C027B09 */  jal        func_8009EC24
/* 1AF8A4 8039D824 00002821 */   addu      $a1, $zero, $zero
/* 1AF8A8 8039D828 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF8AC 8039D82C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AF8B0 8039D830 0C027AFA */  jal        func_8009EBE8
/* 1AF8B4 8039D834 00000000 */   nop
/* 1AF8B8 8039D838 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF8BC 8039D83C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AF8C0 8039D840 0C027AF5 */  jal        func_8009EBD4
/* 1AF8C4 8039D844 00000000 */   nop
/* 1AF8C8 8039D848 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AF8CC 8039D84C 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AF8D0 8039D850 0C027D49 */  jal        func_8009F524
/* 1AF8D4 8039D854 00002821 */   addu      $a1, $zero, $zero
/* 1AF8D8 8039D858 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AF8DC 8039D85C 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AF8E0 8039D860 0C027D3A */  jal        func_8009F4E8
/* 1AF8E4 8039D864 00000000 */   nop
/* 1AF8E8 8039D868 080E7685 */  j          .L8039DA14
/* 1AF8EC 8039D86C 00000000 */   nop
.L8039D870:
/* 1AF8F0 8039D870 1462004F */  bne        $v1, $v0, .L8039D9B0
/* 1AF8F4 8039D874 00000000 */   nop
/* 1AF8F8 8039D878 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF8FC 8039D87C 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF900 8039D880 84820024 */  lh         $v0, 0x24($a0)
/* 1AF904 8039D884 3C01803B */  lui        $at, %hi(D_803B3E08)
/* 1AF908 8039D888 AC223E08 */  sw         $v0, %lo(D_803B3E08)($at)
/* 1AF90C 8039D88C 0C027B09 */  jal        func_8009EC24
/* 1AF910 8039D890 24050001 */   addiu     $a1, $zero, 1
/* 1AF914 8039D894 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF918 8039D898 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF91C 8039D89C 0C027AFA */  jal        func_8009EBE8
/* 1AF920 8039D8A0 00000000 */   nop
/* 1AF924 8039D8A4 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AF928 8039D8A8 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AF92C 8039D8AC 0C027AF5 */  jal        func_8009EBD4
/* 1AF930 8039D8B0 00000000 */   nop
/* 1AF934 8039D8B4 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF938 8039D8B8 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF93C 8039D8BC 0C027D49 */  jal        func_8009F524
/* 1AF940 8039D8C0 24050001 */   addiu     $a1, $zero, 1
/* 1AF944 8039D8C4 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF948 8039D8C8 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF94C 8039D8CC 0C027D3A */  jal        func_8009F4E8
/* 1AF950 8039D8D0 00000000 */   nop
/* 1AF954 8039D8D4 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AF958 8039D8D8 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AF95C 8039D8DC 0C027D35 */  jal        func_8009F4D4
/* 1AF960 8039D8E0 00000000 */   nop
/* 1AF964 8039D8E4 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AF968 8039D8E8 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AF96C 8039D8EC 24020003 */  addiu      $v0, $zero, 3
/* 1AF970 8039D8F0 14620070 */  bne        $v1, $v0, .L8039DAB4
/* 1AF974 8039D8F4 00000000 */   nop
/* 1AF978 8039D8F8 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF97C 8039D8FC 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF980 8039D900 0C027B09 */  jal        func_8009EC24
/* 1AF984 8039D904 24050001 */   addiu     $a1, $zero, 1
/* 1AF988 8039D908 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF98C 8039D90C 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF990 8039D910 0C027AFA */  jal        func_8009EBE8
/* 1AF994 8039D914 00000000 */   nop
/* 1AF998 8039D918 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AF99C 8039D91C 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AF9A0 8039D920 0C027AF5 */  jal        func_8009EBD4
/* 1AF9A4 8039D924 00000000 */   nop
/* 1AF9A8 8039D928 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF9AC 8039D92C 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF9B0 8039D930 0C027D49 */  jal        func_8009F524
/* 1AF9B4 8039D934 24050001 */   addiu     $a1, $zero, 1
/* 1AF9B8 8039D938 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF9BC 8039D93C 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF9C0 8039D940 0C027D3A */  jal        func_8009F4E8
/* 1AF9C4 8039D944 00000000 */   nop
/* 1AF9C8 8039D948 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AF9CC 8039D94C 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AF9D0 8039D950 0C027D35 */  jal        func_8009F4D4
/* 1AF9D4 8039D954 00000000 */   nop
/* 1AF9D8 8039D958 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF9DC 8039D95C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AF9E0 8039D960 0C027B09 */  jal        func_8009EC24
/* 1AF9E4 8039D964 24050001 */   addiu     $a1, $zero, 1
/* 1AF9E8 8039D968 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF9EC 8039D96C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AF9F0 8039D970 0C027AFA */  jal        func_8009EBE8
/* 1AF9F4 8039D974 00000000 */   nop
/* 1AF9F8 8039D978 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AF9FC 8039D97C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AFA00 8039D980 0C027AF5 */  jal        func_8009EBD4
/* 1AFA04 8039D984 00000000 */   nop
/* 1AFA08 8039D988 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AFA0C 8039D98C 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AFA10 8039D990 0C027D49 */  jal        func_8009F524
/* 1AFA14 8039D994 24050001 */   addiu     $a1, $zero, 1
/* 1AFA18 8039D998 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AFA1C 8039D99C 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AFA20 8039D9A0 0C027D3A */  jal        func_8009F4E8
/* 1AFA24 8039D9A4 00000000 */   nop
/* 1AFA28 8039D9A8 080E7685 */  j          .L8039DA14
/* 1AFA2C 8039D9AC 00000000 */   nop
.L8039D9B0:
/* 1AFA30 8039D9B0 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AFA34 8039D9B4 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AFA38 8039D9B8 0C027AF5 */  jal        func_8009EBD4
/* 1AFA3C 8039D9BC 00000000 */   nop
/* 1AFA40 8039D9C0 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AFA44 8039D9C4 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AFA48 8039D9C8 0C027D35 */  jal        func_8009F4D4
/* 1AFA4C 8039D9CC 00000000 */   nop
/* 1AFA50 8039D9D0 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AFA54 8039D9D4 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AFA58 8039D9D8 24020003 */  addiu      $v0, $zero, 3
/* 1AFA5C 8039D9DC 14620035 */  bne        $v1, $v0, .L8039DAB4
/* 1AFA60 8039D9E0 00000000 */   nop
/* 1AFA64 8039D9E4 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AFA68 8039D9E8 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AFA6C 8039D9EC 0C027AF5 */  jal        func_8009EBD4
/* 1AFA70 8039D9F0 00000000 */   nop
/* 1AFA74 8039D9F4 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AFA78 8039D9F8 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AFA7C 8039D9FC 0C027D35 */  jal        func_8009F4D4
/* 1AFA80 8039DA00 00000000 */   nop
/* 1AFA84 8039DA04 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AFA88 8039DA08 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AFA8C 8039DA0C 0C027AF5 */  jal        func_8009EBD4
/* 1AFA90 8039DA10 00000000 */   nop
.L8039DA14:
/* 1AFA94 8039DA14 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AFA98 8039DA18 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AFA9C 8039DA1C 0C027D35 */  jal        func_8009F4D4
/* 1AFAA0 8039DA20 00000000 */   nop
/* 1AFAA4 8039DA24 080E76AD */  j          .L8039DAB4
/* 1AFAA8 8039DA28 00000000 */   nop
.L8039DA2C:
/* 1AFAAC 8039DA2C 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AFAB0 8039DA30 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AFAB4 8039DA34 0C027AFA */  jal        func_8009EBE8
/* 1AFAB8 8039DA38 00000000 */   nop
/* 1AFABC 8039DA3C 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AFAC0 8039DA40 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AFAC4 8039DA44 0C027D3A */  jal        func_8009F4E8
/* 1AFAC8 8039DA48 00000000 */   nop
/* 1AFACC 8039DA4C 3C02803B */  lui        $v0, %hi(D_803B3D6C)
/* 1AFAD0 8039DA50 8C423D6C */  lw         $v0, %lo(D_803B3D6C)($v0)
/* 1AFAD4 8039DA54 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AFAD8 8039DA58 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AFADC 8039DA5C 84420024 */  lh         $v0, 0x24($v0)
/* 1AFAE0 8039DA60 3C01803B */  lui        $at, %hi(D_803B3E08)
/* 1AFAE4 8039DA64 AC223E08 */  sw         $v0, %lo(D_803B3E08)($at)
/* 1AFAE8 8039DA68 24020003 */  addiu      $v0, $zero, 3
/* 1AFAEC 8039DA6C 14620011 */  bne        $v1, $v0, .L8039DAB4
/* 1AFAF0 8039DA70 00000000 */   nop
/* 1AFAF4 8039DA74 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AFAF8 8039DA78 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AFAFC 8039DA7C 0C027AFA */  jal        func_8009EBE8
/* 1AFB00 8039DA80 00000000 */   nop
/* 1AFB04 8039DA84 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AFB08 8039DA88 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AFB0C 8039DA8C 0C027D3A */  jal        func_8009F4E8
/* 1AFB10 8039DA90 00000000 */   nop
/* 1AFB14 8039DA94 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AFB18 8039DA98 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AFB1C 8039DA9C 0C027AFA */  jal        func_8009EBE8
/* 1AFB20 8039DAA0 00000000 */   nop
/* 1AFB24 8039DAA4 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AFB28 8039DAA8 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AFB2C 8039DAAC 0C027D3A */  jal        func_8009F4E8
/* 1AFB30 8039DAB0 00000000 */   nop
.L8039DAB4:
/* 1AFB34 8039DAB4 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 1AFB38 8039DAB8 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 1AFB3C 8039DABC 30428000 */  andi       $v0, $v0, 0x8000
/* 1AFB40 8039DAC0 10400020 */  beqz       $v0, .L8039DB44
/* 1AFB44 8039DAC4 00000000 */   nop
/* 1AFB48 8039DAC8 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AFB4C 8039DACC 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AFB50 8039DAD0 0C027ABB */  jal        func_8009EAEC
/* 1AFB54 8039DAD4 00000000 */   nop
/* 1AFB58 8039DAD8 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AFB5C 8039DADC 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AFB60 8039DAE0 0C027D2B */  jal        func_8009F4AC
/* 1AFB64 8039DAE4 00000000 */   nop
/* 1AFB68 8039DAE8 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AFB6C 8039DAEC 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AFB70 8039DAF0 24020003 */  addiu      $v0, $zero, 3
/* 1AFB74 8039DAF4 3C01803B */  lui        $at, %hi(D_803B3E08)
/* 1AFB78 8039DAF8 AC203E08 */  sw         $zero, %lo(D_803B3E08)($at)
/* 1AFB7C 8039DAFC 14620011 */  bne        $v1, $v0, .L8039DB44
/* 1AFB80 8039DB00 00000000 */   nop
/* 1AFB84 8039DB04 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AFB88 8039DB08 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AFB8C 8039DB0C 0C027ABB */  jal        func_8009EAEC
/* 1AFB90 8039DB10 00000000 */   nop
/* 1AFB94 8039DB14 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AFB98 8039DB18 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AFB9C 8039DB1C 0C027D2B */  jal        func_8009F4AC
/* 1AFBA0 8039DB20 00000000 */   nop
/* 1AFBA4 8039DB24 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AFBA8 8039DB28 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AFBAC 8039DB2C 0C027ABB */  jal        func_8009EAEC
/* 1AFBB0 8039DB30 00000000 */   nop
/* 1AFBB4 8039DB34 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AFBB8 8039DB38 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AFBBC 8039DB3C 0C027D2B */  jal        func_8009F4AC
/* 1AFBC0 8039DB40 00000000 */   nop
.L8039DB44:
/* 1AFBC4 8039DB44 3C04803B */  lui        $a0, %hi(D_803B3D6C)
/* 1AFBC8 8039DB48 8C843D6C */  lw         $a0, %lo(D_803B3D6C)($a0)
/* 1AFBCC 8039DB4C 0C027A93 */  jal        func_8009EA4C
/* 1AFBD0 8039DB50 00000000 */   nop
/* 1AFBD4 8039DB54 3C04803B */  lui        $a0, %hi(D_803B3D78)
/* 1AFBD8 8039DB58 8C843D78 */  lw         $a0, %lo(D_803B3D78)($a0)
/* 1AFBDC 8039DB5C 0C027CED */  jal        func_8009F3B4
/* 1AFBE0 8039DB60 00000000 */   nop
/* 1AFBE4 8039DB64 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AFBE8 8039DB68 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AFBEC 8039DB6C 24020003 */  addiu      $v0, $zero, 3
/* 1AFBF0 8039DB70 54620012 */  bnel       $v1, $v0, .L8039DBBC
/* 1AFBF4 8039DB74 00002021 */   addu      $a0, $zero, $zero
/* 1AFBF8 8039DB78 3C04803B */  lui        $a0, %hi(D_803B3D70)
/* 1AFBFC 8039DB7C 8C843D70 */  lw         $a0, %lo(D_803B3D70)($a0)
/* 1AFC00 8039DB80 0C027A93 */  jal        func_8009EA4C
/* 1AFC04 8039DB84 00000000 */   nop
/* 1AFC08 8039DB88 3C04803B */  lui        $a0, %hi(D_803B3D7C)
/* 1AFC0C 8039DB8C 8C843D7C */  lw         $a0, %lo(D_803B3D7C)($a0)
/* 1AFC10 8039DB90 0C027CED */  jal        func_8009F3B4
/* 1AFC14 8039DB94 00000000 */   nop
/* 1AFC18 8039DB98 3C04803B */  lui        $a0, %hi(D_803B3D74)
/* 1AFC1C 8039DB9C 8C843D74 */  lw         $a0, %lo(D_803B3D74)($a0)
/* 1AFC20 8039DBA0 0C027A93 */  jal        func_8009EA4C
/* 1AFC24 8039DBA4 00000000 */   nop
/* 1AFC28 8039DBA8 3C04803B */  lui        $a0, %hi(D_803B3D80)
/* 1AFC2C 8039DBAC 8C843D80 */  lw         $a0, %lo(D_803B3D80)($a0)
/* 1AFC30 8039DBB0 0C027CED */  jal        func_8009F3B4
/* 1AFC34 8039DBB4 00000000 */   nop
/* 1AFC38 8039DBB8 00002021 */  addu       $a0, $zero, $zero
.L8039DBBC:
/* 1AFC3C 8039DBBC 0C02DAC0 */  jal        func_800B6B00
/* 1AFC40 8039DBC0 24050007 */   addiu     $a1, $zero, 7
/* 1AFC44 8039DBC4 3C02803B */  lui        $v0, %hi(D_803B3D6C)
/* 1AFC48 8039DBC8 8C423D6C */  lw         $v0, %lo(D_803B3D6C)($v0)
/* 1AFC4C 8039DBCC 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 1AFC50 8039DBD0 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 1AFC54 8039DBD4 8446001E */  lh         $a2, 0x1e($v0)
/* 1AFC58 8039DBD8 84470022 */  lh         $a3, 0x22($v0)
/* 1AFC5C 8039DBDC 84420024 */  lh         $v0, 0x24($v0)
/* 1AFC60 8039DBE0 02002021 */  addu       $a0, $s0, $zero
/* 1AFC64 8039DBE4 3C05803B */  lui        $a1, %hi(D_803A8D2C_1BADAC)
/* 1AFC68 8039DBE8 24A58D2C */  addiu      $a1, $a1, %lo(D_803A8D2C_1BADAC)
/* 1AFC6C 8039DBEC 0C030180 */  jal        func_800C0600
/* 1AFC70 8039DBF0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1AFC74 8039DBF4 00002021 */  addu       $a0, $zero, $zero
/* 1AFC78 8039DBF8 24050003 */  addiu      $a1, $zero, 3
/* 1AFC7C 8039DBFC 0C02DAE0 */  jal        func_800B6B80
/* 1AFC80 8039DC00 24060018 */   addiu     $a2, $zero, 0x18
/* 1AFC84 8039DC04 00002021 */  addu       $a0, $zero, $zero
/* 1AFC88 8039DC08 0C02DA9C */  jal        func_800B6A70
/* 1AFC8C 8039DC0C 02002821 */   addu      $a1, $s0, $zero
/* 1AFC90 8039DC10 3C06803B */  lui        $a2, %hi(D_803B3E08)
/* 1AFC94 8039DC14 8CC63E08 */  lw         $a2, %lo(D_803B3E08)($a2)
/* 1AFC98 8039DC18 3C05803B */  lui        $a1, %hi(D_803A8D3C_1BADBC)
/* 1AFC9C 8039DC1C 24A58D3C */  addiu      $a1, $a1, %lo(D_803A8D3C_1BADBC)
/* 1AFCA0 8039DC20 0C030180 */  jal        func_800C0600
/* 1AFCA4 8039DC24 02002021 */   addu      $a0, $s0, $zero
/* 1AFCA8 8039DC28 00002021 */  addu       $a0, $zero, $zero
/* 1AFCAC 8039DC2C 24050003 */  addiu      $a1, $zero, 3
/* 1AFCB0 8039DC30 0C02DAE0 */  jal        func_800B6B80
/* 1AFCB4 8039DC34 24060017 */   addiu     $a2, $zero, 0x17
/* 1AFCB8 8039DC38 00002021 */  addu       $a0, $zero, $zero
/* 1AFCBC 8039DC3C 0C02DA9C */  jal        func_800B6A70
/* 1AFCC0 8039DC40 02002821 */   addu      $a1, $s0, $zero
/* 1AFCC4 8039DC44 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1AFCC8 8039DC48 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1AFCCC 8039DC4C 00031040 */  sll        $v0, $v1, 1
/* 1AFCD0 8039DC50 00431021 */  addu       $v0, $v0, $v1
/* 1AFCD4 8039DC54 00021080 */  sll        $v0, $v0, 2
/* 1AFCD8 8039DC58 3C03803A */  lui        $v1, %hi(D_803A2F9C_1B501C)
/* 1AFCDC 8039DC5C 8C632F9C */  lw         $v1, %lo(D_803A2F9C_1B501C)($v1)
/* 1AFCE0 8039DC60 3C01803B */  lui        $at, %hi(D_803A8B48)
/* 1AFCE4 8039DC64 00220821 */  addu       $at, $at, $v0
/* 1AFCE8 8039DC68 8C228B48 */  lw         $v0, %lo(D_803A8B48)($at)
/* 1AFCEC 8039DC6C 00031900 */  sll        $v1, $v1, 4
/* 1AFCF0 8039DC70 00438821 */  addu       $s1, $v0, $v1
/* 1AFCF4 8039DC74 8E32000C */  lw         $s2, 0xc($s1)
/* 1AFCF8 8039DC78 8E330008 */  lw         $s3, 8($s1)
/* 1AFCFC 8039DC7C 12400035 */  beqz       $s2, .L8039DD54
/* 1AFD00 8039DC80 00000000 */   nop
/* 1AFD04 8039DC84 3C02803B */  lui        $v0, %hi(D_803B3D6C)
/* 1AFD08 8039DC88 8C423D6C */  lw         $v0, %lo(D_803B3D6C)($v0)
/* 1AFD0C 8039DC8C 8443001E */  lh         $v1, 0x1e($v0)
/* 1AFD10 8039DC90 240200FF */  addiu      $v0, $zero, 0xff
/* 1AFD14 8039DC94 14620007 */  bne        $v1, $v0, .L8039DCB4
/* 1AFD18 8039DC98 00000000 */   nop
/* 1AFD1C 8039DC9C 3C03803B */  lui        $v1, %hi(D_803B3E08)
/* 1AFD20 8039DCA0 8C633E08 */  lw         $v1, %lo(D_803B3E08)($v1)
/* 1AFD24 8039DCA4 3C02803A */  lui        $v0, %hi(D_803A30B8_1B5138)
/* 1AFD28 8039DCA8 8C4230B8 */  lw         $v0, %lo(D_803A30B8_1B5138)($v0)
/* 1AFD2C 8039DCAC 10620029 */  beq        $v1, $v0, .L8039DD54
/* 1AFD30 8039DCB0 00000000 */   nop
.L8039DCB4:
/* 1AFD34 8039DCB4 3C03803A */  lui        $v1, %hi(D_803A2FA4_1B5024)
/* 1AFD38 8039DCB8 8C632FA4 */  lw         $v1, %lo(D_803A2FA4_1B5024)($v1)
/* 1AFD3C 8039DCBC 32A400FF */  andi       $a0, $s5, 0xff
/* 1AFD40 8039DCC0 38820001 */  xori       $v0, $a0, 1
/* 1AFD44 8039DCC4 2C420001 */  sltiu      $v0, $v0, 1
/* 1AFD48 8039DCC8 2C630001 */  sltiu      $v1, $v1, 1
/* 1AFD4C 8039DCCC 00621825 */  or         $v1, $v1, $v0
/* 1AFD50 8039DCD0 1060000E */  beqz       $v1, .L8039DD0C
/* 1AFD54 8039DCD4 24020002 */   addiu     $v0, $zero, 2
/* 1AFD58 8039DCD8 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1AFD5C 8039DCDC 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1AFD60 8039DCE0 44800000 */  mtc1       $zero, $f0
/* 1AFD64 8039DCE4 00000000 */  nop
/* 1AFD68 8039DCE8 44060000 */  mfc1       $a2, $f0
/* 1AFD6C 8039DCEC 00000000 */  nop
/* 1AFD70 8039DCF0 00021080 */  sll        $v0, $v0, 2
/* 1AFD74 8039DCF4 00521021 */  addu       $v0, $v0, $s2
/* 1AFD78 8039DCF8 8C450000 */  lw         $a1, ($v0)
/* 1AFD7C 8039DCFC 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AFD80 8039DD00 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AFD84 8039DD04 080E7753 */  j          .L8039DD4C
/* 1AFD88 8039DD08 00000000 */   nop
.L8039DD0C:
/* 1AFD8C 8039DD0C 14820011 */  bne        $a0, $v0, .L8039DD54
/* 1AFD90 8039DD10 00000000 */   nop
/* 1AFD94 8039DD14 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1AFD98 8039DD18 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1AFD9C 8039DD1C 00021080 */  sll        $v0, $v0, 2
/* 1AFDA0 8039DD20 00521021 */  addu       $v0, $v0, $s2
/* 1AFDA4 8039DD24 C4420000 */  lwc1       $f2, ($v0)
/* 1AFDA8 8039DD28 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AFDAC 8039DD2C 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AFDB0 8039DD30 44800000 */  mtc1       $zero, $f0
/* 1AFDB4 8039DD34 00000000 */  nop
/* 1AFDB8 8039DD38 46001087 */  neg.s      $f2, $f2
/* 1AFDBC 8039DD3C 44060000 */  mfc1       $a2, $f0
/* 1AFDC0 8039DD40 00000000 */  nop
/* 1AFDC4 8039DD44 44051000 */  mfc1       $a1, $f2
/* 1AFDC8 8039DD48 00000000 */  nop
.L8039DD4C:
/* 1AFDCC 8039DD4C 0C00AD43 */  jal        func_8002B50C_7A4BC
/* 1AFDD0 8039DD50 00C03821 */   addu      $a3, $a2, $zero
.L8039DD54:
/* 1AFDD4 8039DD54 8E260000 */  lw         $a2, ($s1)
/* 1AFDD8 8039DD58 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1AFDDC 8039DD5C 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1AFDE0 8039DD60 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 1AFDE4 8039DD64 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 1AFDE8 8039DD68 3C05803B */  lui        $a1, %hi(D_803A8D44_1BADC4)
/* 1AFDEC 8039DD6C 24A58D44 */  addiu      $a1, $a1, %lo(D_803A8D44_1BADC4)
/* 1AFDF0 8039DD70 3C01803A */  lui        $at, %hi(D_803A30B8_1B5138)
/* 1AFDF4 8039DD74 AC2230B8 */  sw         $v0, %lo(D_803A30B8_1B5138)($at)
/* 1AFDF8 8039DD78 0C030180 */  jal        func_800C0600
/* 1AFDFC 8039DD7C 02002021 */   addu      $a0, $s0, $zero
/* 1AFE00 8039DD80 00002021 */  addu       $a0, $zero, $zero
/* 1AFE04 8039DD84 24050003 */  addiu      $a1, $zero, 3
/* 1AFE08 8039DD88 0C02DAE0 */  jal        func_800B6B80
/* 1AFE0C 8039DD8C 24060016 */   addiu     $a2, $zero, 0x16
/* 1AFE10 8039DD90 00002021 */  addu       $a0, $zero, $zero
/* 1AFE14 8039DD94 0C02DA9C */  jal        func_800B6A70
/* 1AFE18 8039DD98 02002821 */   addu      $a1, $s0, $zero
/* 1AFE1C 8039DD9C 3C02803B */  lui        $v0, %hi(D_803B3D6C)
/* 1AFE20 8039DDA0 8C423D6C */  lw         $v0, %lo(D_803B3D6C)($v0)
/* 1AFE24 8039DDA4 3C03803A */  lui        $v1, %hi(D_803A2FA0_1B5020)
/* 1AFE28 8039DDA8 8C632FA0 */  lw         $v1, %lo(D_803A2FA0_1B5020)($v1)
/* 1AFE2C 8039DDAC 84420024 */  lh         $v0, 0x24($v0)
/* 1AFE30 8039DDB0 3C01803B */  lui        $at, %hi(D_803B3E08)
/* 1AFE34 8039DDB4 AC223E08 */  sw         $v0, %lo(D_803B3E08)($at)
/* 1AFE38 8039DDB8 14600005 */  bnez       $v1, .L8039DDD0
/* 1AFE3C 8039DDBC 00000000 */   nop
/* 1AFE40 8039DDC0 0C0E77E0 */  jal        func_8039DF80_1B0000
/* 1AFE44 8039DDC4 00000000 */   nop
/* 1AFE48 8039DDC8 080E7777 */  j          .L8039DDDC
/* 1AFE4C 8039DDCC 24020003 */   addiu     $v0, $zero, 3
.L8039DDD0:
/* 1AFE50 8039DDD0 0C0E7876 */  jal        func_8039E1D8_1B0258
/* 1AFE54 8039DDD4 00000000 */   nop
/* 1AFE58 8039DDD8 24020003 */  addiu      $v0, $zero, 3
.L8039DDDC:
/* 1AFE5C 8039DDDC 16C20020 */  bne        $s6, $v0, .L8039DE60
/* 1AFE60 8039DDE0 00000000 */   nop
/* 1AFE64 8039DDE4 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 1AFE68 8039DDE8 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 1AFE6C 8039DDEC 30428000 */  andi       $v0, $v0, 0x8000
/* 1AFE70 8039DDF0 1040001B */  beqz       $v0, .L8039DE60
/* 1AFE74 8039DDF4 00000000 */   nop
/* 1AFE78 8039DDF8 3C02803A */  lui        $v0, %hi(D_803A2FA0_1B5020)
/* 1AFE7C 8039DDFC 8C422FA0 */  lw         $v0, %lo(D_803A2FA0_1B5020)($v0)
/* 1AFE80 8039DE00 1440000D */  bnez       $v0, .L8039DE38
/* 1AFE84 8039DE04 00000000 */   nop
/* 1AFE88 8039DE08 12400015 */  beqz       $s2, .L8039DE60
/* 1AFE8C 8039DE0C 00000000 */   nop
/* 1AFE90 8039DE10 86220006 */  lh         $v0, 6($s1)
/* 1AFE94 8039DE14 18400012 */  blez       $v0, .L8039DE60
/* 1AFE98 8039DE18 00001821 */   addu      $v1, $zero, $zero
/* 1AFE9C 8039DE1C 00403021 */  addu       $a2, $v0, $zero
/* 1AFEA0 8039DE20 24630001 */  addiu      $v1, $v1, 1
.L8039DE24:
/* 1AFEA4 8039DE24 0066102A */  slt        $v0, $v1, $a2
/* 1AFEA8 8039DE28 1440FFFE */  bnez       $v0, .L8039DE24
/* 1AFEAC 8039DE2C 24630001 */   addiu     $v1, $v1, 1
/* 1AFEB0 8039DE30 080E7798 */  j          .L8039DE60
/* 1AFEB4 8039DE34 00000000 */   nop
.L8039DE38:
/* 1AFEB8 8039DE38 12600009 */  beqz       $s3, .L8039DE60
/* 1AFEBC 8039DE3C 00000000 */   nop
/* 1AFEC0 8039DE40 86220006 */  lh         $v0, 6($s1)
/* 1AFEC4 8039DE44 18400006 */  blez       $v0, .L8039DE60
/* 1AFEC8 8039DE48 00001821 */   addu      $v1, $zero, $zero
/* 1AFECC 8039DE4C 00403021 */  addu       $a2, $v0, $zero
/* 1AFED0 8039DE50 24630001 */  addiu      $v1, $v1, 1
.L8039DE54:
/* 1AFED4 8039DE54 0066102A */  slt        $v0, $v1, $a2
/* 1AFED8 8039DE58 1440FFFE */  bnez       $v0, .L8039DE54
/* 1AFEDC 8039DE5C 24630001 */   addiu     $v1, $v1, 1
.L8039DE60:
/* 1AFEE0 8039DE60 3C0642B4 */  lui        $a2, 0x42b4
/* 1AFEE4 8039DE64 3C10803B */  lui        $s0, %hi(D_803B3D88)
/* 1AFEE8 8039DE68 26103D88 */  addiu      $s0, $s0, %lo(D_803B3D88)
/* 1AFEEC 8039DE6C 3C013CA3 */  lui        $at, 0x3ca3
/* 1AFEF0 8039DE70 3421D70A */  ori        $at, $at, 0xd70a
/* 1AFEF4 8039DE74 44811000 */  mtc1       $at, $f2
/* 1AFEF8 8039DE78 00000000 */  nop
/* 1AFEFC 8039DE7C 02002021 */  addu       $a0, $s0, $zero
/* 1AFF00 8039DE80 44800000 */  mtc1       $zero, $f0
/* 1AFF04 8039DE84 00000000 */  nop
/* 1AFF08 8039DE88 3C11DA38 */  lui        $s1, 0xda38
/* 1AFF0C 8039DE8C 44050000 */  mfc1       $a1, $f0
/* 1AFF10 8039DE90 00000000 */  nop
/* 1AFF14 8039DE94 36310003 */  ori        $s1, $s1, 3
/* 1AFF18 8039DE98 00A03821 */  addu       $a3, $a1, $zero
/* 1AFF1C 8039DE9C AFA50014 */  sw         $a1, 0x14($sp)
/* 1AFF20 8039DEA0 AFA50018 */  sw         $a1, 0x18($sp)
/* 1AFF24 8039DEA4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1AFF28 8039DEA8 0C02FD0E */  jal        func_800BF438
/* 1AFF2C 8039DEAC E7A20010 */   swc1      $f2, 0x10($sp)
/* 1AFF30 8039DEB0 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 1AFF34 8039DEB4 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 1AFF38 8039DEB8 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AFF3C 8039DEBC 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AFF40 8039DEC0 02002821 */  addu       $a1, $s0, $zero
/* 1AFF44 8039DEC4 24620008 */  addiu      $v0, $v1, 8
/* 1AFF48 8039DEC8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AFF4C 8039DECC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 1AFF50 8039DED0 AC710000 */  sw         $s1, ($v1)
/* 1AFF54 8039DED4 0C027F67 */  jal        func_8009FD9C
/* 1AFF58 8039DED8 AC650004 */   sw        $a1, 4($v1)
/* 1AFF5C 8039DEDC 3C04803B */  lui        $a0, %hi(D_803B3D50)
/* 1AFF60 8039DEE0 8C843D50 */  lw         $a0, %lo(D_803B3D50)($a0)
/* 1AFF64 8039DEE4 3C05803B */  lui        $a1, %hi(D_803B3D6C)
/* 1AFF68 8039DEE8 8CA53D6C */  lw         $a1, %lo(D_803B3D6C)($a1)
/* 1AFF6C 8039DEEC 0C027F77 */  jal        func_8009FDDC
/* 1AFF70 8039DEF0 00000000 */   nop
/* 1AFF74 8039DEF4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1AFF78 8039DEF8 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1AFF7C 8039DEFC 0C00ABC3 */  jal        func_8002AF0C_79EBC
/* 1AFF80 8039DF00 00000000 */   nop
/* 1AFF84 8039DF04 12600012 */  beqz       $s3, .L8039DF50
/* 1AFF88 8039DF08 24020001 */   addiu     $v0, $zero, 1
/* 1AFF8C 8039DF0C 3C03803A */  lui        $v1, %hi(D_803A2FA0_1B5020)
/* 1AFF90 8039DF10 8C632FA0 */  lw         $v1, %lo(D_803A2FA0_1B5020)($v1)
/* 1AFF94 8039DF14 1462000F */  bne        $v1, $v0, .L8039DF54
/* 1AFF98 8039DF18 02C01021 */   addu      $v0, $s6, $zero
/* 1AFF9C 8039DF1C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 1AFFA0 8039DF20 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 1AFFA4 8039DF24 3C04803B */  lui        $a0, %hi(D_803B3D68)
/* 1AFFA8 8039DF28 8C843D68 */  lw         $a0, %lo(D_803B3D68)($a0)
/* 1AFFAC 8039DF2C 00002821 */  addu       $a1, $zero, $zero
/* 1AFFB0 8039DF30 24430008 */  addiu      $v1, $v0, 8
/* 1AFFB4 8039DF34 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 1AFFB8 8039DF38 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 1AFFBC 8039DF3C 3C03803B */  lui        $v1, %hi(D_803B3DC8)
/* 1AFFC0 8039DF40 24633DC8 */  addiu      $v1, $v1, %lo(D_803B3DC8)
/* 1AFFC4 8039DF44 AC510000 */  sw         $s1, ($v0)
/* 1AFFC8 8039DF48 0C027F77 */  jal        func_8009FDDC
/* 1AFFCC 8039DF4C AC430004 */   sw        $v1, 4($v0)
.L8039DF50:
/* 1AFFD0 8039DF50 02C01021 */  addu       $v0, $s6, $zero
.L8039DF54:
/* 1AFFD4 8039DF54 8FBF004C */  lw         $ra, 0x4c($sp)
/* 1AFFD8 8039DF58 8FB60048 */  lw         $s6, 0x48($sp)
/* 1AFFDC 8039DF5C 8FB50044 */  lw         $s5, 0x44($sp)
/* 1AFFE0 8039DF60 8FB40040 */  lw         $s4, 0x40($sp)
/* 1AFFE4 8039DF64 8FB3003C */  lw         $s3, 0x3c($sp)
/* 1AFFE8 8039DF68 8FB20038 */  lw         $s2, 0x38($sp)
/* 1AFFEC 8039DF6C 8FB10034 */  lw         $s1, 0x34($sp)
/* 1AFFF0 8039DF70 8FB00030 */  lw         $s0, 0x30($sp)
/* 1AFFF4 8039DF74 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1AFFF8 8039DF78 03E00008 */  jr         $ra
/* 1AFFFC 8039DF7C 00000000 */   nop

glabel func_8039DF80_1B0000
/* 1B0000 8039DF80 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1B0004 8039DF84 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1B0008 8039DF88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1B000C 8039DF8C AFBF0028 */  sw         $ra, 0x28($sp)
/* 1B0010 8039DF90 AFB30024 */  sw         $s3, 0x24($sp)
/* 1B0014 8039DF94 AFB20020 */  sw         $s2, 0x20($sp)
/* 1B0018 8039DF98 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1B001C 8039DF9C AFB00018 */  sw         $s0, 0x18($sp)
/* 1B0020 8039DFA0 00031040 */  sll        $v0, $v1, 1
/* 1B0024 8039DFA4 00431021 */  addu       $v0, $v0, $v1
/* 1B0028 8039DFA8 00021080 */  sll        $v0, $v0, 2
/* 1B002C 8039DFAC 3C03803A */  lui        $v1, %hi(D_803A2F9C_1B501C)
/* 1B0030 8039DFB0 8C632F9C */  lw         $v1, %lo(D_803A2F9C_1B501C)($v1)
/* 1B0034 8039DFB4 3C01803B */  lui        $at, %hi(D_803A8B48)
/* 1B0038 8039DFB8 00220821 */  addu       $at, $at, $v0
/* 1B003C 8039DFBC 8C228B48 */  lw         $v0, %lo(D_803A8B48)($at)
/* 1B0040 8039DFC0 00031900 */  sll        $v1, $v1, 4
/* 1B0044 8039DFC4 00439021 */  addu       $s2, $v0, $v1
/* 1B0048 8039DFC8 8E51000C */  lw         $s1, 0xc($s2)
/* 1B004C 8039DFCC 1220006E */  beqz       $s1, .L8039E188
/* 1B0050 8039DFD0 00008021 */   addu      $s0, $zero, $zero
/* 1B0054 8039DFD4 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 1B0058 8039DFD8 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 1B005C 8039DFDC 30420008 */  andi       $v0, $v0, 8
/* 1B0060 8039DFE0 1040002F */  beqz       $v0, .L8039E0A0
/* 1B0064 8039DFE4 00000000 */   nop
/* 1B0068 8039DFE8 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 1B006C 8039DFEC 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 1B0070 8039DFF0 44802000 */  mtc1       $zero, $f4
/* 1B0074 8039DFF4 00000000 */  nop
/* 1B0078 8039DFF8 30620100 */  andi       $v0, $v1, 0x100
/* 1B007C 8039DFFC 10400005 */  beqz       $v0, .L8039E014
/* 1B0080 8039E000 30620200 */   andi      $v0, $v1, 0x200
/* 1B0084 8039E004 3C013DCC */  lui        $at, 0x3dcc
/* 1B0088 8039E008 3421CCCD */  ori        $at, $at, 0xcccd
/* 1B008C 8039E00C 44812000 */  mtc1       $at, $f4
/* 1B0090 8039E010 00000000 */  nop
.L8039E014:
/* 1B0094 8039E014 10400006 */  beqz       $v0, .L8039E030
/* 1B0098 8039E018 00000000 */   nop
/* 1B009C 8039E01C 3C013DCC */  lui        $at, 0x3dcc
/* 1B00A0 8039E020 3421CCCD */  ori        $at, $at, 0xcccd
/* 1B00A4 8039E024 44810000 */  mtc1       $at, $f0
/* 1B00A8 8039E028 00000000 */  nop
/* 1B00AC 8039E02C 46002101 */  sub.s      $f4, $f4, $f0
.L8039E030:
/* 1B00B0 8039E030 44803000 */  mtc1       $zero, $f6
/* 1B00B4 8039E034 00000000 */  nop
/* 1B00B8 8039E038 46062032 */  c.eq.s     $f4, $f6
/* 1B00BC 8039E03C 00000000 */  nop
/* 1B00C0 8039E040 45010017 */  bc1t       .L8039E0A0
/* 1B00C4 8039E044 00000000 */   nop
/* 1B00C8 8039E048 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B00CC 8039E04C 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B00D0 8039E050 00021080 */  sll        $v0, $v0, 2
/* 1B00D4 8039E054 00511021 */  addu       $v0, $v0, $s1
/* 1B00D8 8039E058 C4400000 */  lwc1       $f0, ($v0)
/* 1B00DC 8039E05C 46040000 */  add.s      $f0, $f0, $f4
/* 1B00E0 8039E060 3C01803B */  lui        $at, %hi(D_803A8D88_1BAE08)
/* 1B00E4 8039E064 C4228D88 */  lwc1       $f2, %lo(D_803A8D88_1BAE08)($at)
/* 1B00E8 8039E068 46020032 */  c.eq.s     $f0, $f2
/* 1B00EC 8039E06C 00000000 */  nop
/* 1B00F0 8039E070 00000000 */  nop
/* 1B00F4 8039E074 45000002 */  bc1f       .L8039E080
/* 1B00F8 8039E078 E4400000 */   swc1      $f0, ($v0)
/* 1B00FC 8039E07C E4460000 */  swc1       $f6, ($v0)
.L8039E080:
/* 1B0100 8039E080 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1B0104 8039E084 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1B0108 8039E088 44063000 */  mfc1       $a2, $f6
/* 1B010C 8039E08C 00000000 */  nop
/* 1B0110 8039E090 44052000 */  mfc1       $a1, $f4
/* 1B0114 8039E094 00000000 */  nop
/* 1B0118 8039E098 0C00AD43 */  jal        func_8002B50C_7A4BC
/* 1B011C 8039E09C 00C03821 */   addu      $a3, $a2, $zero
.L8039E0A0:
/* 1B0120 8039E0A0 12200039 */  beqz       $s1, .L8039E188
/* 1B0124 8039E0A4 00008021 */   addu      $s0, $zero, $zero
/* 1B0128 8039E0A8 24130003 */  addiu      $s3, $zero, 3
.L8039E0AC:
/* 1B012C 8039E0AC 3C03803B */  lui        $v1, %hi(D_803B3E08)
/* 1B0130 8039E0B0 8C633E08 */  lw         $v1, %lo(D_803B3E08)($v1)
/* 1B0134 8039E0B4 2602FFFD */  addiu      $v0, $s0, -3
/* 1B0138 8039E0B8 00623021 */  addu       $a2, $v1, $v0
/* 1B013C 8039E0BC 04C00006 */  bltz       $a2, .L8039E0D8
/* 1B0140 8039E0C0 00000000 */   nop
/* 1B0144 8039E0C4 86420006 */  lh         $v0, 6($s2)
/* 1B0148 8039E0C8 2442FFFF */  addiu      $v0, $v0, -1
/* 1B014C 8039E0CC 0046102A */  slt        $v0, $v0, $a2
/* 1B0150 8039E0D0 10400009 */  beqz       $v0, .L8039E0F8
/* 1B0154 8039E0D4 00061080 */   sll       $v0, $a2, 2
.L8039E0D8:
/* 1B0158 8039E0D8 3C048017 */  lui        $a0, %hi(D_8016D178)
/* 1B015C 8039E0DC 2484D178 */  addiu      $a0, $a0, %lo(D_8016D178)
/* 1B0160 8039E0E0 3C05803B */  lui        $a1, %hi(D_803A8D4C_1BADCC)
/* 1B0164 8039E0E4 24A58D4C */  addiu      $a1, $a1, %lo(D_803A8D4C_1BADCC)
/* 1B0168 8039E0E8 0C030180 */  jal        func_800C0600
/* 1B016C 8039E0EC 00000000 */   nop
/* 1B0170 8039E0F0 080E7849 */  j          .L8039E124
/* 1B0174 8039E0F4 2A020003 */   slti      $v0, $s0, 3
.L8039E0F8:
/* 1B0178 8039E0F8 00511021 */  addu       $v0, $v0, $s1
/* 1B017C 8039E0FC C4400000 */  lwc1       $f0, ($v0)
/* 1B0180 8039E100 3C048017 */  lui        $a0, %hi(D_8016D178)
/* 1B0184 8039E104 2484D178 */  addiu      $a0, $a0, %lo(D_8016D178)
/* 1B0188 8039E108 3C05803B */  lui        $a1, %hi(D_803A8D60_1BADE0)
/* 1B018C 8039E10C 24A58D60 */  addiu      $a1, $a1, %lo(D_803A8D60_1BADE0)
/* 1B0190 8039E110 46000021 */  cvt.d.s    $f0, $f0
/* 1B0194 8039E114 F7A00010 */  sdc1       $f0, 0x10($sp)
/* 1B0198 8039E118 0C030180 */  jal        func_800C0600
/* 1B019C 8039E11C 00000000 */   nop
/* 1B01A0 8039E120 2A020003 */  slti       $v0, $s0, 3
.L8039E124:
/* 1B01A4 8039E124 10400003 */  beqz       $v0, .L8039E134
/* 1B01A8 8039E128 00002021 */   addu      $a0, $zero, $zero
/* 1B01AC 8039E12C 080E7852 */  j          .L8039E148
/* 1B01B0 8039E130 24050004 */   addiu     $a1, $zero, 4
.L8039E134:
/* 1B01B4 8039E134 16130003 */  bne        $s0, $s3, .L8039E144
/* 1B01B8 8039E138 00000000 */   nop
/* 1B01BC 8039E13C 080E7852 */  j          .L8039E148
/* 1B01C0 8039E140 24050007 */   addiu     $a1, $zero, 7
.L8039E144:
/* 1B01C4 8039E144 24050006 */  addiu      $a1, $zero, 6
.L8039E148:
/* 1B01C8 8039E148 0C02DAC0 */  jal        func_800B6B00
/* 1B01CC 8039E14C 00000000 */   nop
/* 1B01D0 8039E150 00002021 */  addu       $a0, $zero, $zero
/* 1B01D4 8039E154 24050002 */  addiu      $a1, $zero, 2
/* 1B01D8 8039E158 0C02DAE0 */  jal        func_800B6B80
/* 1B01DC 8039E15C 2606000B */   addiu     $a2, $s0, 0xb
/* 1B01E0 8039E160 3C058017 */  lui        $a1, %hi(D_8016D178)
/* 1B01E4 8039E164 24A5D178 */  addiu      $a1, $a1, %lo(D_8016D178)
/* 1B01E8 8039E168 0C02DA9C */  jal        func_800B6A70
/* 1B01EC 8039E16C 00002021 */   addu      $a0, $zero, $zero
/* 1B01F0 8039E170 26100001 */  addiu      $s0, $s0, 1
/* 1B01F4 8039E174 2A02000A */  slti       $v0, $s0, 0xa
/* 1B01F8 8039E178 1040000F */  beqz       $v0, .L8039E1B8
/* 1B01FC 8039E17C 00000000 */   nop
/* 1B0200 8039E180 080E782B */  j          .L8039E0AC
/* 1B0204 8039E184 00000000 */   nop
.L8039E188:
/* 1B0208 8039E188 00002021 */  addu       $a0, $zero, $zero
.L8039E18C:
/* 1B020C 8039E18C 24050002 */  addiu      $a1, $zero, 2
/* 1B0210 8039E190 0C02DAE0 */  jal        func_800B6B80
/* 1B0214 8039E194 2606000B */   addiu     $a2, $s0, 0xb
/* 1B0218 8039E198 3C05803B */  lui        $a1, %hi(D_803A8D74_1BADF4)
/* 1B021C 8039E19C 24A58D74 */  addiu      $a1, $a1, %lo(D_803A8D74_1BADF4)
/* 1B0220 8039E1A0 0C02DA9C */  jal        func_800B6A70
/* 1B0224 8039E1A4 00002021 */   addu      $a0, $zero, $zero
/* 1B0228 8039E1A8 26100001 */  addiu      $s0, $s0, 1
/* 1B022C 8039E1AC 2A02000A */  slti       $v0, $s0, 0xa
/* 1B0230 8039E1B0 1440FFF6 */  bnez       $v0, .L8039E18C
/* 1B0234 8039E1B4 00002021 */   addu      $a0, $zero, $zero
.L8039E1B8:
/* 1B0238 8039E1B8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1B023C 8039E1BC 8FB30024 */  lw         $s3, 0x24($sp)
/* 1B0240 8039E1C0 8FB20020 */  lw         $s2, 0x20($sp)
/* 1B0244 8039E1C4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1B0248 8039E1C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1B024C 8039E1CC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1B0250 8039E1D0 03E00008 */  jr         $ra
/* 1B0254 8039E1D4 00000000 */   nop

glabel func_8039E1D8_1B0258
/* 1B0258 8039E1D8 3C03803A */  lui        $v1, %hi(D_803A2F58_1B4FD8)
/* 1B025C 8039E1DC 8C632F58 */  lw         $v1, %lo(D_803A2F58_1B4FD8)($v1)
/* 1B0260 8039E1E0 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1B0264 8039E1E4 AFBF007C */  sw         $ra, 0x7c($sp)
/* 1B0268 8039E1E8 AFB60078 */  sw         $s6, 0x78($sp)
/* 1B026C 8039E1EC AFB50074 */  sw         $s5, 0x74($sp)
/* 1B0270 8039E1F0 AFB40070 */  sw         $s4, 0x70($sp)
/* 1B0274 8039E1F4 AFB3006C */  sw         $s3, 0x6c($sp)
/* 1B0278 8039E1F8 AFB20068 */  sw         $s2, 0x68($sp)
/* 1B027C 8039E1FC AFB10064 */  sw         $s1, 0x64($sp)
/* 1B0280 8039E200 AFB00060 */  sw         $s0, 0x60($sp)
/* 1B0284 8039E204 F7B40080 */  sdc1       $f20, 0x80($sp)
/* 1B0288 8039E208 00031040 */  sll        $v0, $v1, 1
/* 1B028C 8039E20C 00431021 */  addu       $v0, $v0, $v1
/* 1B0290 8039E210 00021080 */  sll        $v0, $v0, 2
/* 1B0294 8039E214 3C03803A */  lui        $v1, %hi(D_803A2F9C_1B501C)
/* 1B0298 8039E218 8C632F9C */  lw         $v1, %lo(D_803A2F9C_1B501C)($v1)
/* 1B029C 8039E21C 3C01803B */  lui        $at, %hi(D_803A8B48)
/* 1B02A0 8039E220 00220821 */  addu       $at, $at, $v0
/* 1B02A4 8039E224 8C228B48 */  lw         $v0, %lo(D_803A8B48)($at)
/* 1B02A8 8039E228 00031900 */  sll        $v1, $v1, 4
/* 1B02AC 8039E22C 0043B021 */  addu       $s6, $v0, $v1
/* 1B02B0 8039E230 8ED10008 */  lw         $s1, 8($s6)
/* 1B02B4 8039E234 12200095 */  beqz       $s1, .L8039E48C
/* 1B02B8 8039E238 00008021 */   addu      $s0, $zero, $zero
/* 1B02BC 8039E23C 3C038015 */  lui        $v1, %hi(D_8014CF90)
/* 1B02C0 8039E240 9463CF90 */  lhu        $v1, %lo(D_8014CF90)($v1)
/* 1B02C4 8039E244 30620008 */  andi       $v0, $v1, 8
/* 1B02C8 8039E248 1040000E */  beqz       $v0, .L8039E284
/* 1B02CC 8039E24C 30620001 */   andi      $v0, $v1, 1
/* 1B02D0 8039E250 1040000C */  beqz       $v0, .L8039E284
/* 1B02D4 8039E254 00000000 */   nop
/* 1B02D8 8039E258 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B02DC 8039E25C 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B02E0 8039E260 18400008 */  blez       $v0, .L8039E284
/* 1B02E4 8039E264 00021080 */   sll       $v0, $v0, 2
/* 1B02E8 8039E268 00511021 */  addu       $v0, $v0, $s1
/* 1B02EC 8039E26C 8052FFFC */  lb         $s2, -4($v0)
/* 1B02F0 8039E270 8053FFFD */  lb         $s3, -3($v0)
/* 1B02F4 8039E274 8055FFFE */  lb         $s5, -2($v0)
/* 1B02F8 8039E278 8054FFFF */  lb         $s4, -1($v0)
/* 1B02FC 8039E27C 080E78AC */  j          .L8039E2B0
/* 1B0300 8039E280 02552021 */   addu      $a0, $s2, $s5
.L8039E284:
/* 1B0304 8039E284 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B0308 8039E288 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B030C 8039E28C 00021080 */  sll        $v0, $v0, 2
/* 1B0310 8039E290 00511021 */  addu       $v0, $v0, $s1
/* 1B0314 8039E294 80520000 */  lb         $s2, ($v0)
/* 1B0318 8039E298 80530001 */  lb         $s3, 1($v0)
/* 1B031C 8039E29C 80550002 */  lb         $s5, 2($v0)
/* 1B0320 8039E2A0 80540003 */  lb         $s4, 3($v0)
/* 1B0324 8039E2A4 3C038015 */  lui        $v1, %hi(D_8014CF90)
/* 1B0328 8039E2A8 9463CF90 */  lhu        $v1, %lo(D_8014CF90)($v1)
/* 1B032C 8039E2AC 02552021 */  addu       $a0, $s2, $s5
.L8039E2B0:
/* 1B0330 8039E2B0 30620001 */  andi       $v0, $v1, 1
/* 1B0334 8039E2B4 10400010 */  beqz       $v0, .L8039E2F8
/* 1B0338 8039E2B8 02742821 */   addu      $a1, $s3, $s4
/* 1B033C 8039E2BC 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 1B0340 8039E2C0 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 1B0344 8039E2C4 30620200 */  andi       $v0, $v1, 0x200
/* 1B0348 8039E2C8 0002102B */  sltu       $v0, $zero, $v0
/* 1B034C 8039E2CC 02429021 */  addu       $s2, $s2, $v0
/* 1B0350 8039E2D0 30620100 */  andi       $v0, $v1, 0x100
/* 1B0354 8039E2D4 0002102B */  sltu       $v0, $zero, $v0
/* 1B0358 8039E2D8 02429023 */  subu       $s2, $s2, $v0
/* 1B035C 8039E2DC 30620800 */  andi       $v0, $v1, 0x800
/* 1B0360 8039E2E0 0002102B */  sltu       $v0, $zero, $v0
/* 1B0364 8039E2E4 02629821 */  addu       $s3, $s3, $v0
/* 1B0368 8039E2E8 30630400 */  andi       $v1, $v1, 0x400
/* 1B036C 8039E2EC 0003182B */  sltu       $v1, $zero, $v1
/* 1B0370 8039E2F0 080E78CF */  j          .L8039E33C
/* 1B0374 8039E2F4 02639823 */   subu      $s3, $s3, $v1
.L8039E2F8:
/* 1B0378 8039E2F8 30620008 */  andi       $v0, $v1, 8
/* 1B037C 8039E2FC 1040000F */  beqz       $v0, .L8039E33C
/* 1B0380 8039E300 00000000 */   nop
/* 1B0384 8039E304 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 1B0388 8039E308 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 1B038C 8039E30C 30620200 */  andi       $v0, $v1, 0x200
/* 1B0390 8039E310 0002102B */  sltu       $v0, $zero, $v0
/* 1B0394 8039E314 00822021 */  addu       $a0, $a0, $v0
/* 1B0398 8039E318 30620100 */  andi       $v0, $v1, 0x100
/* 1B039C 8039E31C 0002102B */  sltu       $v0, $zero, $v0
/* 1B03A0 8039E320 00822023 */  subu       $a0, $a0, $v0
/* 1B03A4 8039E324 30620800 */  andi       $v0, $v1, 0x800
/* 1B03A8 8039E328 0002102B */  sltu       $v0, $zero, $v0
/* 1B03AC 8039E32C 00A22821 */  addu       $a1, $a1, $v0
/* 1B03B0 8039E330 30630400 */  andi       $v1, $v1, 0x400
/* 1B03B4 8039E334 0003182B */  sltu       $v1, $zero, $v1
/* 1B03B8 8039E338 00A32823 */  subu       $a1, $a1, $v1
.L8039E33C:
/* 1B03BC 8039E33C 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B03C0 8039E340 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B03C4 8039E344 00021080 */  sll        $v0, $v0, 2
/* 1B03C8 8039E348 00511021 */  addu       $v0, $v0, $s1
/* 1B03CC 8039E34C A0520000 */  sb         $s2, ($v0)
/* 1B03D0 8039E350 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B03D4 8039E354 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B03D8 8039E358 00021080 */  sll        $v0, $v0, 2
/* 1B03DC 8039E35C 00511021 */  addu       $v0, $v0, $s1
/* 1B03E0 8039E360 A0530001 */  sb         $s3, 1($v0)
/* 1B03E4 8039E364 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B03E8 8039E368 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B03EC 8039E36C 0092A823 */  subu       $s5, $a0, $s2
/* 1B03F0 8039E370 00021080 */  sll        $v0, $v0, 2
/* 1B03F4 8039E374 00511021 */  addu       $v0, $v0, $s1
/* 1B03F8 8039E378 A0550002 */  sb         $s5, 2($v0)
/* 1B03FC 8039E37C 3C02803B */  lui        $v0, %hi(D_803B3E08)
/* 1B0400 8039E380 8C423E08 */  lw         $v0, %lo(D_803B3E08)($v0)
/* 1B0404 8039E384 00B3A023 */  subu       $s4, $a1, $s3
/* 1B0408 8039E388 00021080 */  sll        $v0, $v0, 2
/* 1B040C 8039E38C 00511021 */  addu       $v0, $v0, $s1
/* 1B0410 8039E390 1220003D */  beqz       $s1, .L8039E488
/* 1B0414 8039E394 A0540003 */   sb        $s4, 3($v0)
/* 1B0418 8039E398 00008021 */  addu       $s0, $zero, $zero
.L8039E39C:
/* 1B041C 8039E39C 3C03803B */  lui        $v1, %hi(D_803B3E08)
/* 1B0420 8039E3A0 8C633E08 */  lw         $v1, %lo(D_803B3E08)($v1)
/* 1B0424 8039E3A4 2602FFFD */  addiu      $v0, $s0, -3
/* 1B0428 8039E3A8 00623021 */  addu       $a2, $v1, $v0
/* 1B042C 8039E3AC 04C00006 */  bltz       $a2, .L8039E3C8
/* 1B0430 8039E3B0 00000000 */   nop
/* 1B0434 8039E3B4 86C20006 */  lh         $v0, 6($s6)
/* 1B0438 8039E3B8 2442FFFF */  addiu      $v0, $v0, -1
/* 1B043C 8039E3BC 0046102A */  slt        $v0, $v0, $a2
/* 1B0440 8039E3C0 10400009 */  beqz       $v0, .L8039E3E8
/* 1B0444 8039E3C4 00061080 */   sll       $v0, $a2, 2
.L8039E3C8:
/* 1B0448 8039E3C8 3C048017 */  lui        $a0, %hi(D_8016D178)
/* 1B044C 8039E3CC 2484D178 */  addiu      $a0, $a0, %lo(D_8016D178)
/* 1B0450 8039E3D0 3C05803B */  lui        $a1, %hi(D_803A8D8C_1BAE0C)
/* 1B0454 8039E3D4 24A58D8C */  addiu      $a1, $a1, %lo(D_803A8D8C_1BAE0C)
/* 1B0458 8039E3D8 0C030180 */  jal        func_800C0600
/* 1B045C 8039E3DC 00000000 */   nop
/* 1B0460 8039E3E0 080E7908 */  j          .L8039E420
/* 1B0464 8039E3E4 2A020003 */   slti      $v0, $s0, 3
.L8039E3E8:
/* 1B0468 8039E3E8 00511021 */  addu       $v0, $v0, $s1
/* 1B046C 8039E3EC 80430001 */  lb         $v1, 1($v0)
/* 1B0470 8039E3F0 80470000 */  lb         $a3, ($v0)
/* 1B0474 8039E3F4 AFA30010 */  sw         $v1, 0x10($sp)
/* 1B0478 8039E3F8 80430002 */  lb         $v1, 2($v0)
/* 1B047C 8039E3FC AFA30014 */  sw         $v1, 0x14($sp)
/* 1B0480 8039E400 80420003 */  lb         $v0, 3($v0)
/* 1B0484 8039E404 3C048017 */  lui        $a0, %hi(D_8016D178)
/* 1B0488 8039E408 2484D178 */  addiu      $a0, $a0, %lo(D_8016D178)
/* 1B048C 8039E40C 3C05803B */  lui        $a1, %hi(D_803A8DA0_1BAE20)
/* 1B0490 8039E410 24A58DA0 */  addiu      $a1, $a1, %lo(D_803A8DA0_1BAE20)
/* 1B0494 8039E414 0C030180 */  jal        func_800C0600
/* 1B0498 8039E418 AFA20018 */   sw        $v0, 0x18($sp)
/* 1B049C 8039E41C 2A020003 */  slti       $v0, $s0, 3
.L8039E420:
/* 1B04A0 8039E420 10400003 */  beqz       $v0, .L8039E430
/* 1B04A4 8039E424 00002021 */   addu      $a0, $zero, $zero
/* 1B04A8 8039E428 080E7912 */  j          .L8039E448
/* 1B04AC 8039E42C 24050004 */   addiu     $a1, $zero, 4
.L8039E430:
/* 1B04B0 8039E430 24020003 */  addiu      $v0, $zero, 3
/* 1B04B4 8039E434 16020003 */  bne        $s0, $v0, .L8039E444
/* 1B04B8 8039E438 00000000 */   nop
/* 1B04BC 8039E43C 080E7912 */  j          .L8039E448
/* 1B04C0 8039E440 24050007 */   addiu     $a1, $zero, 7
.L8039E444:
/* 1B04C4 8039E444 24050006 */  addiu      $a1, $zero, 6
.L8039E448:
/* 1B04C8 8039E448 0C02DAC0 */  jal        func_800B6B00
/* 1B04CC 8039E44C 00000000 */   nop
/* 1B04D0 8039E450 00002021 */  addu       $a0, $zero, $zero
/* 1B04D4 8039E454 24050002 */  addiu      $a1, $zero, 2
/* 1B04D8 8039E458 0C02DAE0 */  jal        func_800B6B80
/* 1B04DC 8039E45C 2606000B */   addiu     $a2, $s0, 0xb
/* 1B04E0 8039E460 3C058017 */  lui        $a1, %hi(D_8016D178)
/* 1B04E4 8039E464 24A5D178 */  addiu      $a1, $a1, %lo(D_8016D178)
/* 1B04E8 8039E468 0C02DA9C */  jal        func_800B6A70
/* 1B04EC 8039E46C 00002021 */   addu      $a0, $zero, $zero
/* 1B04F0 8039E470 26100001 */  addiu      $s0, $s0, 1
/* 1B04F4 8039E474 2A02000A */  slti       $v0, $s0, 0xa
/* 1B04F8 8039E478 10400010 */  beqz       $v0, .L8039E4BC
/* 1B04FC 8039E47C 00000000 */   nop
/* 1B0500 8039E480 080E78E7 */  j          .L8039E39C
/* 1B0504 8039E484 00000000 */   nop
.L8039E488:
/* 1B0508 8039E488 00008021 */  addu       $s0, $zero, $zero
.L8039E48C:
/* 1B050C 8039E48C 00002021 */  addu       $a0, $zero, $zero
.L8039E490:
/* 1B0510 8039E490 24050002 */  addiu      $a1, $zero, 2
/* 1B0514 8039E494 0C02DAE0 */  jal        func_800B6B80
/* 1B0518 8039E498 2606000B */   addiu     $a2, $s0, 0xb
/* 1B051C 8039E49C 3C05803B */  lui        $a1, %hi(D_803A8D74_1BADF4)
/* 1B0520 8039E4A0 24A58D74 */  addiu      $a1, $a1, %lo(D_803A8D74_1BADF4)
/* 1B0524 8039E4A4 0C02DA9C */  jal        func_800B6A70
/* 1B0528 8039E4A8 00002021 */   addu      $a0, $zero, $zero
/* 1B052C 8039E4AC 26100001 */  addiu      $s0, $s0, 1
/* 1B0530 8039E4B0 2A02000A */  slti       $v0, $s0, 0xa
/* 1B0534 8039E4B4 5440FFF6 */  bnezl      $v0, .L8039E490
/* 1B0538 8039E4B8 00002021 */   addu      $a0, $zero, $zero
.L8039E4BC:
/* 1B053C 8039E4BC 1220004D */  beqz       $s1, .L8039E5F4
/* 1B0540 8039E4C0 00000000 */   nop
/* 1B0544 8039E4C4 3C10803B */  lui        $s0, %hi(D_803B3DC8)
/* 1B0548 8039E4C8 26103DC8 */  addiu      $s0, $s0, %lo(D_803B3DC8)
/* 1B054C 8039E4CC 0C02FAB0 */  jal        func_800BEAC0
/* 1B0550 8039E4D0 02002021 */   addu      $a0, $s0, $zero
/* 1B0554 8039E4D4 3C0542B4 */  lui        $a1, 0x42b4
/* 1B0558 8039E4D8 4480A000 */  mtc1       $zero, $f20
/* 1B055C 8039E4DC 00000000 */  nop
/* 1B0560 8039E4E0 4406A000 */  mfc1       $a2, $f20
/* 1B0564 8039E4E4 00000000 */  nop
/* 1B0568 8039E4E8 4407A000 */  mfc1       $a3, $f20
/* 1B056C 8039E4EC 00000000 */  nop
/* 1B0570 8039E4F0 0C02FECA */  jal        func_800BFB28
/* 1B0574 8039E4F4 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B0578 8039E4F8 02002021 */  addu       $a0, $s0, $zero
/* 1B057C 8039E4FC 27A50020 */  addiu      $a1, $sp, 0x20
/* 1B0580 8039E500 0C02FA0C */  jal        func_800BE830
/* 1B0584 8039E504 02003021 */   addu      $a2, $s0, $zero
/* 1B0588 8039E508 3C013A83 */  lui        $at, 0x3a83
/* 1B058C 8039E50C 3421126F */  ori        $at, $at, 0x126f
/* 1B0590 8039E510 44811000 */  mtc1       $at, $f2
/* 1B0594 8039E514 00000000 */  nop
/* 1B0598 8039E518 44950000 */  mtc1       $s5, $f0
/* 1B059C 8039E51C 00000000 */  nop
/* 1B05A0 8039E520 46800020 */  cvt.s.w    $f0, $f0
/* 1B05A4 8039E524 46020002 */  mul.s      $f0, $f0, $f2
/* 1B05A8 8039E528 44050000 */  mfc1       $a1, $f0
/* 1B05AC 8039E52C 00000000 */  nop
/* 1B05B0 8039E530 44940000 */  mtc1       $s4, $f0
/* 1B05B4 8039E534 00000000 */  nop
/* 1B05B8 8039E538 46800020 */  cvt.s.w    $f0, $f0
/* 1B05BC 8039E53C 46020002 */  mul.s      $f0, $f0, $f2
/* 1B05C0 8039E540 44071000 */  mfc1       $a3, $f2
/* 1B05C4 8039E544 00000000 */  nop
/* 1B05C8 8039E548 44060000 */  mfc1       $a2, $f0
/* 1B05CC 8039E54C 00000000 */  nop
/* 1B05D0 8039E550 0C02FF48 */  jal        func_800BFD20
/* 1B05D4 8039E554 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B05D8 8039E558 02002021 */  addu       $a0, $s0, $zero
/* 1B05DC 8039E55C 27A50020 */  addiu      $a1, $sp, 0x20
/* 1B05E0 8039E560 0C02FA0C */  jal        func_800BE830
/* 1B05E4 8039E564 02003021 */   addu      $a2, $s0, $zero
/* 1B05E8 8039E568 3C014000 */  lui        $at, 0x4000
/* 1B05EC 8039E56C 44810000 */  mtc1       $at, $f0
/* 1B05F0 8039E570 00000000 */  nop
/* 1B05F4 8039E574 00151040 */  sll        $v0, $s5, 1
/* 1B05F8 8039E578 44821000 */  mtc1       $v0, $f2
/* 1B05FC 8039E57C 00000000 */  nop
/* 1B0600 8039E580 468010A0 */  cvt.s.w    $f2, $f2
/* 1B0604 8039E584 46001083 */  div.s      $f2, $f2, $f0
/* 1B0608 8039E588 00141040 */  sll        $v0, $s4, 1
/* 1B060C 8039E58C 44822000 */  mtc1       $v0, $f4
/* 1B0610 8039E590 00000000 */  nop
/* 1B0614 8039E594 46802120 */  cvt.s.w    $f4, $f4
/* 1B0618 8039E598 46002103 */  div.s      $f4, $f4, $f0
/* 1B061C 8039E59C 00121040 */  sll        $v0, $s2, 1
/* 1B0620 8039E5A0 44820000 */  mtc1       $v0, $f0
/* 1B0624 8039E5A4 00000000 */  nop
/* 1B0628 8039E5A8 46800020 */  cvt.s.w    $f0, $f0
/* 1B062C 8039E5AC 46001080 */  add.s      $f2, $f2, $f0
/* 1B0630 8039E5B0 00131040 */  sll        $v0, $s3, 1
/* 1B0634 8039E5B4 44820000 */  mtc1       $v0, $f0
/* 1B0638 8039E5B8 00000000 */  nop
/* 1B063C 8039E5BC 46800020 */  cvt.s.w    $f0, $f0
/* 1B0640 8039E5C0 46002100 */  add.s      $f4, $f4, $f0
/* 1B0644 8039E5C4 4407A000 */  mfc1       $a3, $f20
/* 1B0648 8039E5C8 00000000 */  nop
/* 1B064C 8039E5CC 44051000 */  mfc1       $a1, $f2
/* 1B0650 8039E5D0 00000000 */  nop
/* 1B0654 8039E5D4 44062000 */  mfc1       $a2, $f4
/* 1B0658 8039E5D8 00000000 */  nop
/* 1B065C 8039E5DC 0C02FFFD */  jal        func_800BFFF4
/* 1B0660 8039E5E0 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B0664 8039E5E4 02002021 */  addu       $a0, $s0, $zero
/* 1B0668 8039E5E8 27A50020 */  addiu      $a1, $sp, 0x20
/* 1B066C 8039E5EC 0C02FA0C */  jal        func_800BE830
/* 1B0670 8039E5F0 00803021 */   addu      $a2, $a0, $zero
.L8039E5F4:
/* 1B0674 8039E5F4 8FBF007C */  lw         $ra, 0x7c($sp)
/* 1B0678 8039E5F8 8FB60078 */  lw         $s6, 0x78($sp)
/* 1B067C 8039E5FC 8FB50074 */  lw         $s5, 0x74($sp)
/* 1B0680 8039E600 8FB40070 */  lw         $s4, 0x70($sp)
/* 1B0684 8039E604 8FB3006C */  lw         $s3, 0x6c($sp)
/* 1B0688 8039E608 8FB20068 */  lw         $s2, 0x68($sp)
/* 1B068C 8039E60C 8FB10064 */  lw         $s1, 0x64($sp)
/* 1B0690 8039E610 8FB00060 */  lw         $s0, 0x60($sp)
/* 1B0694 8039E614 D7B40080 */  ldc1       $f20, 0x80($sp)
/* 1B0698 8039E618 27BD0088 */  addiu      $sp, $sp, 0x88
/* 1B069C 8039E61C 03E00008 */  jr         $ra
/* 1B06A0 8039E620 00000000 */   nop
/* 1B06A4 8039E624 00000000 */  nop
/* 1B06A8 8039E628 00000000 */  nop
/* 1B06AC 8039E62C 00000000 */  nop
