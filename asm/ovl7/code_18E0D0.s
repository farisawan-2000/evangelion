.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003E690_18E0D0
/* 18E0D0 8003E690 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18E0D4 8003E694 AFB00018 */  sw         $s0, 0x18($sp)
/* 18E0D8 8003E698 3C108005 */  lui        $s0, %hi(D_80052024)
/* 18E0DC 8003E69C 26102024 */  addiu      $s0, $s0, %lo(D_80052024)
/* 18E0E0 8003E6A0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18E0E4 8003E6A4 0C028D30 */  jal        func_800A34C0
/* 18E0E8 8003E6A8 8E040000 */   lw        $a0, ($s0)
/* 18E0EC 8003E6AC 3C048005 */  lui        $a0, %hi(D_80052028)
/* 18E0F0 8003E6B0 8C842028 */  lw         $a0, %lo(D_80052028)($a0)
/* 18E0F4 8003E6B4 10800005 */  beqz       $a0, .L8003E6CC
/* 18E0F8 8003E6B8 00000000 */   nop
/* 18E0FC 8003E6BC 0C028D30 */  jal        func_800A34C0
/* 18E100 8003E6C0 00000000 */   nop
/* 18E104 8003E6C4 3C018005 */  lui        $at, %hi(D_80052028)
/* 18E108 8003E6C8 AC202028 */  sw         $zero, %lo(D_80052028)($at)
.L8003E6CC:
/* 18E10C 8003E6CC 3C028005 */  lui        $v0, %hi(D_80052020)
/* 18E110 8003E6D0 84422020 */  lh         $v0, %lo(D_80052020)($v0)
/* 18E114 8003E6D4 000210C0 */  sll        $v0, $v0, 3
/* 18E118 8003E6D8 3C048005 */  lui        $a0, %hi(D_8004E500)
/* 18E11C 8003E6DC 00822021 */  addu       $a0, $a0, $v0
/* 18E120 8003E6E0 0C029464 */  jal        func_800A5190
/* 18E124 8003E6E4 9484E500 */   lhu       $a0, %lo(D_8004E500)($a0)
/* 18E128 8003E6E8 00402821 */  addu       $a1, $v0, $zero
/* 18E12C 8003E6EC 28A20002 */  slti       $v0, $a1, 2
/* 18E130 8003E6F0 5440000D */  bnezl      $v0, .L8003E728
/* 18E134 8003E6F4 24050002 */   addiu     $a1, $zero, 2
/* 18E138 8003E6F8 3C028005 */  lui        $v0, %hi(D_80052020)
/* 18E13C 8003E6FC 84422020 */  lh         $v0, %lo(D_80052020)($v0)
/* 18E140 8003E700 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 18E144 8003E704 000210C0 */  sll        $v0, $v0, 3
/* 18E148 8003E708 3C048005 */  lui        $a0, %hi(D_8004E500)
/* 18E14C 8003E70C 00822021 */  addu       $a0, $a0, $v0
/* 18E150 8003E710 9484E500 */  lhu        $a0, %lo(D_8004E500)($a0)
/* 18E154 8003E714 24060002 */  addiu      $a2, $zero, 2
/* 18E158 8003E718 0C0293A3 */  jal        func_800A4E8C
/* 18E15C 8003E71C 00003821 */   addu      $a3, $zero, $zero
/* 18E160 8003E720 0800F9D3 */  j          .L8003E74C
/* 18E164 8003E724 AE020000 */   sw        $v0, ($s0)
.L8003E728:
/* 18E168 8003E728 3C028005 */  lui        $v0, %hi(D_80052020)
/* 18E16C 8003E72C 84422020 */  lh         $v0, %lo(D_80052020)($v0)
/* 18E170 8003E730 000210C0 */  sll        $v0, $v0, 3
/* 18E174 8003E734 3C048005 */  lui        $a0, %hi(D_8004E500)
/* 18E178 8003E738 00822021 */  addu       $a0, $a0, $v0
/* 18E17C 8003E73C 9484E500 */  lhu        $a0, %lo(D_8004E500)($a0)
/* 18E180 8003E740 0C028CB7 */  jal        func_800A32DC
/* 18E184 8003E744 00003021 */   addu      $a2, $zero, $zero
/* 18E188 8003E748 AE020000 */  sw         $v0, ($s0)
.L8003E74C:
/* 18E18C 8003E74C 3C108005 */  lui        $s0, %hi(D_80052020)
/* 18E190 8003E750 26102020 */  addiu      $s0, $s0, %lo(D_80052020)
/* 18E194 8003E754 86020000 */  lh         $v0, ($s0)
/* 18E198 8003E758 000210C0 */  sll        $v0, $v0, 3
/* 18E19C 8003E75C 3C048005 */  lui        $a0, %hi(D_8004E502)
/* 18E1A0 8003E760 00822021 */  addu       $a0, $a0, $v0
/* 18E1A4 8003E764 9484E502 */  lhu        $a0, %lo(D_8004E502)($a0)
/* 18E1A8 8003E768 10800015 */  beqz       $a0, .L8003E7C0
/* 18E1AC 8003E76C 00000000 */   nop
/* 18E1B0 8003E770 24050002 */  addiu      $a1, $zero, 2
/* 18E1B4 8003E774 0C028CB7 */  jal        func_800A32DC
/* 18E1B8 8003E778 00003021 */   addu      $a2, $zero, $zero
/* 18E1BC 8003E77C 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18E1C0 8003E780 8C842024 */  lw         $a0, %lo(D_80052024)($a0)
/* 18E1C4 8003E784 86030000 */  lh         $v1, ($s0)
/* 18E1C8 8003E788 3C018005 */  lui        $at, %hi(D_80052028)
/* 18E1CC 8003E78C AC222028 */  sw         $v0, %lo(D_80052028)($at)
/* 18E1D0 8003E790 3C058005 */  lui        $a1, %hi(D_80052028)
/* 18E1D4 8003E794 8CA52028 */  lw         $a1, %lo(D_80052028)($a1)
/* 18E1D8 8003E798 000318C0 */  sll        $v1, $v1, 3
/* 18E1DC 8003E79C 3C078005 */  lui        $a3, %hi(D_8004E504)
/* 18E1E0 8003E7A0 00E33821 */  addu       $a3, $a3, $v1
/* 18E1E4 8003E7A4 94E7E504 */  lhu        $a3, %lo(D_8004E504)($a3)
/* 18E1E8 8003E7A8 3C028005 */  lui        $v0, %hi(D_8004E506)
/* 18E1EC 8003E7AC 00431021 */  addu       $v0, $v0, $v1
/* 18E1F0 8003E7B0 9442E506 */  lhu        $v0, %lo(D_8004E506)($v0)
/* 18E1F4 8003E7B4 2406000F */  addiu      $a2, $zero, 0xf
/* 18E1F8 8003E7B8 0C00CEBF */  jal        func_80033AFC_18353C
/* 18E1FC 8003E7BC AFA20010 */   sw        $v0, 0x10($sp)
.L8003E7C0:
/* 18E200 8003E7C0 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18E204 8003E7C4 8C842024 */  lw         $a0, %lo(D_80052024)($a0)
/* 18E208 8003E7C8 24050280 */  addiu      $a1, $zero, 0x280
/* 18E20C 8003E7CC 0C028D89 */  jal        func_800A3624
/* 18E210 8003E7D0 240601E0 */   addiu     $a2, $zero, 0x1e0
/* 18E214 8003E7D4 3C038005 */  lui        $v1, %hi(D_80052024)
/* 18E218 8003E7D8 8C632024 */  lw         $v1, %lo(D_80052024)($v1)
/* 18E21C 8003E7DC 9462001E */  lhu        $v0, 0x1e($v1)
/* 18E220 8003E7E0 240500FF */  addiu      $a1, $zero, 0xff
/* 18E224 8003E7E4 240600FF */  addiu      $a2, $zero, 0xff
/* 18E228 8003E7E8 34420004 */  ori        $v0, $v0, 4
/* 18E22C 8003E7EC A462001E */  sh         $v0, 0x1e($v1)
/* 18E230 8003E7F0 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18E234 8003E7F4 8C842024 */  lw         $a0, %lo(D_80052024)($a0)
/* 18E238 8003E7F8 240700FF */  addiu      $a3, $zero, 0xff
/* 18E23C 8003E7FC 24020040 */  addiu      $v0, $zero, 0x40
/* 18E240 8003E800 0C028E41 */  jal        func_800A3904
/* 18E244 8003E804 AFA20010 */   sw        $v0, 0x10($sp)
/* 18E248 8003E808 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18E24C 8003E80C 8C842024 */  lw         $a0, %lo(D_80052024)($a0)
/* 18E250 8003E810 8C83000C */  lw         $v1, 0xc($a0)
/* 18E254 8003E814 94620000 */  lhu        $v0, ($v1)
/* 18E258 8003E818 3C0143A0 */  lui        $at, 0x43a0
/* 18E25C 8003E81C 44811000 */  mtc1       $at, $f2
/* 18E260 8003E820 44820000 */  mtc1       $v0, $f0
/* 18E264 8003E824 00000000 */  nop
/* 18E268 8003E828 46800020 */  cvt.s.w    $f0, $f0
/* 18E26C 8003E82C 46001083 */  div.s      $f2, $f2, $f0
/* 18E270 8003E830 94620002 */  lhu        $v0, 2($v1)
/* 18E274 8003E834 44061000 */  mfc1       $a2, $f2
/* 18E278 8003E838 3C014370 */  lui        $at, 0x4370
/* 18E27C 8003E83C 44811000 */  mtc1       $at, $f2
/* 18E280 8003E840 44820000 */  mtc1       $v0, $f0
/* 18E284 8003E844 00000000 */  nop
/* 18E288 8003E848 46800020 */  cvt.s.w    $f0, $f0
/* 18E28C 8003E84C 46001083 */  div.s      $f2, $f2, $f0
/* 18E290 8003E850 44071000 */  mfc1       $a3, $f2
/* 18E294 8003E854 00000000 */  nop
/* 18E298 8003E858 0C02915B */  jal        func_800A456C
/* 18E29C 8003E85C 00002821 */   addu      $a1, $zero, $zero
/* 18E2A0 8003E860 3C038005 */  lui        $v1, %hi(D_80052024)
/* 18E2A4 8003E864 8C632024 */  lw         $v1, %lo(D_80052024)($v1)
/* 18E2A8 8003E868 24020001 */  addiu      $v0, $zero, 1
/* 18E2AC 8003E86C A462001C */  sh         $v0, 0x1c($v1)
/* 18E2B0 8003E870 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18E2B4 8003E874 0C028A40 */  jal        func_800A2900
/* 18E2B8 8003E878 8C842024 */   lw        $a0, %lo(D_80052024)($a0)
/* 18E2BC 8003E87C 96020000 */  lhu        $v0, ($s0)
/* 18E2C0 8003E880 24420001 */  addiu      $v0, $v0, 1
/* 18E2C4 8003E884 A6020000 */  sh         $v0, ($s0)
/* 18E2C8 8003E888 00021400 */  sll        $v0, $v0, 0x10
/* 18E2CC 8003E88C 00021343 */  sra        $v0, $v0, 0xd
/* 18E2D0 8003E890 3C038005 */  lui        $v1, %hi(D_8004E500)
/* 18E2D4 8003E894 00621821 */  addu       $v1, $v1, $v0
/* 18E2D8 8003E898 9463E500 */  lhu        $v1, %lo(D_8004E500)($v1)
/* 18E2DC 8003E89C 3402FFFF */  ori        $v0, $zero, 0xffff
/* 18E2E0 8003E8A0 50620001 */  beql       $v1, $v0, .L8003E8A8
/* 18E2E4 8003E8A4 A6000000 */   sh        $zero, ($s0)
.L8003E8A8:
/* 18E2E8 8003E8A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18E2EC 8003E8AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 18E2F0 8003E8B0 03E00008 */  jr         $ra
/* 18E2F4 8003E8B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003E8B8_18E2F8
/* 18E2F8 8003E8B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18E2FC 8003E8BC 3C038005 */  lui        $v1, %hi(D_80052014)
/* 18E300 8003E8C0 24632014 */  addiu      $v1, $v1, %lo(D_80052014)
/* 18E304 8003E8C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 18E308 8003E8C8 AFB00020 */  sw         $s0, 0x20($sp)
/* 18E30C 8003E8CC 8C620000 */  lw         $v0, ($v1)
/* 18E310 8003E8D0 24420001 */  addiu      $v0, $v0, 1
/* 18E314 8003E8D4 AC620000 */  sw         $v0, ($v1)
/* 18E318 8003E8D8 284200F0 */  slti       $v0, $v0, 0xf0
/* 18E31C 8003E8DC 14400041 */  bnez       $v0, .L8003E9E4
/* 18E320 8003E8E0 00000000 */   nop
/* 18E324 8003E8E4 3C048005 */  lui        $a0, %hi(D_8005201C)
/* 18E328 8003E8E8 8C84201C */  lw         $a0, %lo(D_8005201C)($a0)
/* 18E32C 8003E8EC 0C028D30 */  jal        func_800A34C0
/* 18E330 8003E8F0 AC600000 */   sw        $zero, ($v1)
/* 18E334 8003E8F4 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E338 8003E8F8 84422012 */  lh         $v0, %lo(D_80052012)($v0)
/* 18E33C 8003E8FC 00021040 */  sll        $v0, $v0, 1
/* 18E340 8003E900 3C048005 */  lui        $a0, %hi(D_8004F340)
/* 18E344 8003E904 00822021 */  addu       $a0, $a0, $v0
/* 18E348 8003E908 0C029464 */  jal        func_800A5190
/* 18E34C 8003E90C 9484F340 */   lhu       $a0, %lo(D_8004F340)($a0)
/* 18E350 8003E910 3C108005 */  lui        $s0, %hi(D_8004F340)
/* 18E354 8003E914 2610F340 */  addiu      $s0, $s0, %lo(D_8004F340)
/* 18E358 8003E918 00402821 */  addu       $a1, $v0, $zero
/* 18E35C 8003E91C 28A20002 */  slti       $v0, $a1, 2
/* 18E360 8003E920 5440000C */  bnezl      $v0, .L8003E954
/* 18E364 8003E924 24050002 */   addiu     $a1, $zero, 2
/* 18E368 8003E928 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E36C 8003E92C 84422012 */  lh         $v0, %lo(D_80052012)($v0)
/* 18E370 8003E930 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 18E374 8003E934 00021040 */  sll        $v0, $v0, 1
/* 18E378 8003E938 00501021 */  addu       $v0, $v0, $s0
/* 18E37C 8003E93C 94440000 */  lhu        $a0, ($v0)
/* 18E380 8003E940 24060002 */  addiu      $a2, $zero, 2
/* 18E384 8003E944 0C0293A3 */  jal        func_800A4E8C
/* 18E388 8003E948 00003821 */   addu      $a3, $zero, $zero
/* 18E38C 8003E94C 0800FA5C */  j          .L8003E970
/* 18E390 8003E950 00000000 */   nop
.L8003E954:
/* 18E394 8003E954 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E398 8003E958 84422012 */  lh         $v0, %lo(D_80052012)($v0)
/* 18E39C 8003E95C 00021040 */  sll        $v0, $v0, 1
/* 18E3A0 8003E960 00501021 */  addu       $v0, $v0, $s0
/* 18E3A4 8003E964 94440000 */  lhu        $a0, ($v0)
/* 18E3A8 8003E968 0C028CB7 */  jal        func_800A32DC
/* 18E3AC 8003E96C 00003021 */   addu      $a2, $zero, $zero
.L8003E970:
/* 18E3B0 8003E970 3C018005 */  lui        $at, %hi(D_8005201C)
/* 18E3B4 8003E974 AC22201C */  sw         $v0, %lo(D_8005201C)($at)
/* 18E3B8 8003E978 3C108005 */  lui        $s0, %hi(D_8005201C)
/* 18E3BC 8003E97C 2610201C */  addiu      $s0, $s0, %lo(D_8005201C)
/* 18E3C0 8003E980 8E040000 */  lw         $a0, ($s0)
/* 18E3C4 8003E984 24050280 */  addiu      $a1, $zero, 0x280
/* 18E3C8 8003E988 0C028D89 */  jal        func_800A3624
/* 18E3CC 8003E98C 240601E0 */   addiu     $a2, $zero, 0x1e0
/* 18E3D0 8003E990 3C038005 */  lui        $v1, %hi(D_8005201C)
/* 18E3D4 8003E994 8C63201C */  lw         $v1, %lo(D_8005201C)($v1)
/* 18E3D8 8003E998 9462001E */  lhu        $v0, 0x1e($v1)
/* 18E3DC 8003E99C 240500FF */  addiu      $a1, $zero, 0xff
/* 18E3E0 8003E9A0 34420004 */  ori        $v0, $v0, 4
/* 18E3E4 8003E9A4 A462001E */  sh         $v0, 0x1e($v1)
/* 18E3E8 8003E9A8 3C038005 */  lui        $v1, %hi(D_8005201C)
/* 18E3EC 8003E9AC 8C63201C */  lw         $v1, %lo(D_8005201C)($v1)
/* 18E3F0 8003E9B0 240600FF */  addiu      $a2, $zero, 0xff
/* 18E3F4 8003E9B4 24020001 */  addiu      $v0, $zero, 1
/* 18E3F8 8003E9B8 A462001C */  sh         $v0, 0x1c($v1)
/* 18E3FC 8003E9BC 8E040000 */  lw         $a0, ($s0)
/* 18E400 8003E9C0 240700FF */  addiu      $a3, $zero, 0xff
/* 18E404 8003E9C4 240200FF */  addiu      $v0, $zero, 0xff
/* 18E408 8003E9C8 0C028E41 */  jal        func_800A3904
/* 18E40C 8003E9CC AFA20010 */   sw        $v0, 0x10($sp)
/* 18E410 8003E9D0 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E414 8003E9D4 94422012 */  lhu        $v0, %lo(D_80052012)($v0)
/* 18E418 8003E9D8 24420001 */  addiu      $v0, $v0, 1
/* 18E41C 8003E9DC 3C018005 */  lui        $at, %hi(D_80052012)
/* 18E420 8003E9E0 A4222012 */  sh         $v0, %lo(D_80052012)($at)
.L8003E9E4:
/* 18E424 8003E9E4 3C038005 */  lui        $v1, %hi(D_80052014)
/* 18E428 8003E9E8 8C632014 */  lw         $v1, %lo(D_80052014)($v1)
/* 18E42C 8003E9EC 2862003D */  slti       $v0, $v1, 0x3d
/* 18E430 8003E9F0 10400007 */  beqz       $v0, .L8003EA10
/* 18E434 8003E9F4 286200B4 */   slti      $v0, $v1, 0xb4
/* 18E438 8003E9F8 3C028005 */  lui        $v0, %hi(D_80052010)
/* 18E43C 8003E9FC 94422010 */  lhu        $v0, %lo(D_80052010)($v0)
/* 18E440 8003EA00 2442FFFB */  addiu      $v0, $v0, -5
/* 18E444 8003EA04 3C018005 */  lui        $at, %hi(D_80052010)
/* 18E448 8003EA08 A4222010 */  sh         $v0, %lo(D_80052010)($at)
/* 18E44C 8003EA0C 286200B4 */  slti       $v0, $v1, 0xb4
.L8003EA10:
/* 18E450 8003EA10 14400006 */  bnez       $v0, .L8003EA2C
/* 18E454 8003EA14 00000000 */   nop
/* 18E458 8003EA18 3C028005 */  lui        $v0, %hi(D_80052010)
/* 18E45C 8003EA1C 94422010 */  lhu        $v0, %lo(D_80052010)($v0)
/* 18E460 8003EA20 24420005 */  addiu      $v0, $v0, 5
/* 18E464 8003EA24 3C018005 */  lui        $at, %hi(D_80052010)
/* 18E468 8003EA28 A4222010 */  sh         $v0, %lo(D_80052010)($at)
.L8003EA2C:
/* 18E46C 8003EA2C 3C028005 */  lui        $v0, %hi(D_80052010)
/* 18E470 8003EA30 84422010 */  lh         $v0, %lo(D_80052010)($v0)
/* 18E474 8003EA34 28420100 */  slti       $v0, $v0, 0x100
/* 18E478 8003EA38 14400003 */  bnez       $v0, .L8003EA48
/* 18E47C 8003EA3C 240200FF */   addiu     $v0, $zero, 0xff
/* 18E480 8003EA40 3C018005 */  lui        $at, %hi(D_80052010)
/* 18E484 8003EA44 A4222010 */  sh         $v0, %lo(D_80052010)($at)
.L8003EA48:
/* 18E488 8003EA48 3C028005 */  lui        $v0, %hi(D_80052010)
/* 18E48C 8003EA4C 84422010 */  lh         $v0, %lo(D_80052010)($v0)
/* 18E490 8003EA50 04410003 */  bgez       $v0, .L8003EA60
/* 18E494 8003EA54 00000000 */   nop
/* 18E498 8003EA58 3C018005 */  lui        $at, %hi(D_80052010)
/* 18E49C 8003EA5C A4202010 */  sh         $zero, %lo(D_80052010)($at)
.L8003EA60:
/* 18E4A0 8003EA60 3C048005 */  lui        $a0, %hi(D_80052018)
/* 18E4A4 8003EA64 8C842018 */  lw         $a0, %lo(D_80052018)($a0)
/* 18E4A8 8003EA68 00002821 */  addu       $a1, $zero, $zero
/* 18E4AC 8003EA6C 3C028005 */  lui        $v0, %hi(D_80052011)
/* 18E4B0 8003EA70 90422011 */  lbu        $v0, %lo(D_80052011)($v0)
/* 18E4B4 8003EA74 00003021 */  addu       $a2, $zero, $zero
/* 18E4B8 8003EA78 00003821 */  addu       $a3, $zero, $zero
/* 18E4BC 8003EA7C 0C028E41 */  jal        func_800A3904
/* 18E4C0 8003EA80 AFA20010 */   sw        $v0, 0x10($sp)
/* 18E4C4 8003EA84 3C048005 */  lui        $a0, %hi(D_8005201C)
/* 18E4C8 8003EA88 0C028A40 */  jal        func_800A2900
/* 18E4CC 8003EA8C 8C84201C */   lw        $a0, %lo(D_8005201C)($a0)
/* 18E4D0 8003EA90 3C048005 */  lui        $a0, %hi(D_80052018)
/* 18E4D4 8003EA94 0C028A40 */  jal        func_800A2900
/* 18E4D8 8003EA98 8C842018 */   lw        $a0, %lo(D_80052018)($a0)
/* 18E4DC 8003EA9C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 18E4E0 8003EAA0 8FB00020 */  lw         $s0, 0x20($sp)
/* 18E4E4 8003EAA4 03E00008 */  jr         $ra
/* 18E4E8 8003EAA8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003EAAC_18E4EC
/* 18E4EC 8003EAAC 3C048005 */  lui        $a0, %hi(D_8004E500)
/* 18E4F0 8003EAB0 9484E500 */  lhu        $a0, %lo(D_8004E500)($a0)
/* 18E4F4 8003EAB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18E4F8 8003EAB8 AFB00018 */  sw         $s0, 0x18($sp)
/* 18E4FC 8003EABC 3C108005 */  lui        $s0, %hi(D_80052014)
/* 18E500 8003EAC0 26102014 */  addiu      $s0, $s0, %lo(D_80052014)
/* 18E504 8003EAC4 240200FF */  addiu      $v0, $zero, 0xff
/* 18E508 8003EAC8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18E50C 8003EACC AE000000 */  sw         $zero, ($s0)
/* 18E510 8003EAD0 3C018005 */  lui        $at, %hi(D_80052012)
/* 18E514 8003EAD4 A4202012 */  sh         $zero, %lo(D_80052012)($at)
/* 18E518 8003EAD8 A602FFFC */  sh         $v0, -4($s0)
/* 18E51C 8003EADC 3C018005 */  lui        $at, %hi(D_80052020)
/* 18E520 8003EAE0 A4202020 */  sh         $zero, %lo(D_80052020)($at)
/* 18E524 8003EAE4 3C018005 */  lui        $at, %hi(D_8005202C)
/* 18E528 8003EAE8 A420202C */  sh         $zero, %lo(D_8005202C)($at)
/* 18E52C 8003EAEC 3C018005 */  lui        $at, %hi(D_8005202E)
/* 18E530 8003EAF0 A420202E */  sh         $zero, %lo(D_8005202E)($at)
/* 18E534 8003EAF4 3C018005 */  lui        $at, %hi(D_80052030)
/* 18E538 8003EAF8 0C029464 */  jal        func_800A5190
/* 18E53C 8003EAFC A4202030 */   sh        $zero, %lo(D_80052030)($at)
/* 18E540 8003EB00 00402821 */  addu       $a1, $v0, $zero
/* 18E544 8003EB04 28A20002 */  slti       $v0, $a1, 2
/* 18E548 8003EB08 5440000D */  bnezl      $v0, .L8003EB40
/* 18E54C 8003EB0C 24050002 */   addiu     $a1, $zero, 2
/* 18E550 8003EB10 3C028005 */  lui        $v0, %hi(D_80052020)
/* 18E554 8003EB14 84422020 */  lh         $v0, %lo(D_80052020)($v0)
/* 18E558 8003EB18 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 18E55C 8003EB1C 000210C0 */  sll        $v0, $v0, 3
/* 18E560 8003EB20 3C048005 */  lui        $a0, %hi(D_8004E500)
/* 18E564 8003EB24 00822021 */  addu       $a0, $a0, $v0
/* 18E568 8003EB28 9484E500 */  lhu        $a0, %lo(D_8004E500)($a0)
/* 18E56C 8003EB2C 24060002 */  addiu      $a2, $zero, 2
/* 18E570 8003EB30 0C0293A3 */  jal        func_800A4E8C
/* 18E574 8003EB34 00003821 */   addu      $a3, $zero, $zero
/* 18E578 8003EB38 0800FADA */  j          .L8003EB68
/* 18E57C 8003EB3C AE020010 */   sw        $v0, 0x10($s0)
.L8003EB40:
/* 18E580 8003EB40 3C028005 */  lui        $v0, %hi(D_80052020)
/* 18E584 8003EB44 84422020 */  lh         $v0, %lo(D_80052020)($v0)
/* 18E588 8003EB48 000210C0 */  sll        $v0, $v0, 3
/* 18E58C 8003EB4C 3C048005 */  lui        $a0, %hi(D_8004E500)
/* 18E590 8003EB50 00822021 */  addu       $a0, $a0, $v0
/* 18E594 8003EB54 9484E500 */  lhu        $a0, %lo(D_8004E500)($a0)
/* 18E598 8003EB58 0C028CB7 */  jal        func_800A32DC
/* 18E59C 8003EB5C 00003021 */   addu      $a2, $zero, $zero
/* 18E5A0 8003EB60 3C018005 */  lui        $at, %hi(D_80052024)
/* 18E5A4 8003EB64 AC222024 */  sw         $v0, %lo(D_80052024)($at)
.L8003EB68:
/* 18E5A8 8003EB68 3C058005 */  lui        $a1, %hi(D_8004F368)
/* 18E5AC 8003EB6C 24A5F368 */  addiu      $a1, $a1, %lo(D_8004F368)
/* 18E5B0 8003EB70 8CA30000 */  lw         $v1, ($a1)
/* 18E5B4 8003EB74 3402FFFF */  ori        $v0, $zero, 0xffff
/* 18E5B8 8003EB78 3C018005 */  lui        $at, %hi(D_80052028)
/* 18E5BC 8003EB7C AC202028 */  sw         $zero, %lo(D_80052028)($at)
/* 18E5C0 8003EB80 10620009 */  beq        $v1, $v0, .L8003EBA8
/* 18E5C4 8003EB84 00002021 */   addu      $a0, $zero, $zero
/* 18E5C8 8003EB88 3406FFFF */  ori        $a2, $zero, 0xffff
.L8003EB8C:
/* 18E5CC 8003EB8C 24820001 */  addiu      $v0, $a0, 1
/* 18E5D0 8003EB90 00021C00 */  sll        $v1, $v0, 0x10
/* 18E5D4 8003EB94 00031B83 */  sra        $v1, $v1, 0xe
/* 18E5D8 8003EB98 00651821 */  addu       $v1, $v1, $a1
/* 18E5DC 8003EB9C 8C630000 */  lw         $v1, ($v1)
/* 18E5E0 8003EBA0 1466FFFA */  bne        $v1, $a2, .L8003EB8C
/* 18E5E4 8003EBA4 00402021 */   addu      $a0, $v0, $zero
.L8003EBA8:
/* 18E5E8 8003EBA8 24040011 */  addiu      $a0, $zero, 0x11
/* 18E5EC 8003EBAC 24050001 */  addiu      $a1, $zero, 1
/* 18E5F0 8003EBB0 0C028CB7 */  jal        func_800A32DC
/* 18E5F4 8003EBB4 00003021 */   addu      $a2, $zero, $zero
/* 18E5F8 8003EBB8 00402021 */  addu       $a0, $v0, $zero
/* 18E5FC 8003EBBC 24050040 */  addiu      $a1, $zero, 0x40
/* 18E600 8003EBC0 240600C0 */  addiu      $a2, $zero, 0xc0
/* 18E604 8003EBC4 3C108005 */  lui        $s0, %hi(D_80052018)
/* 18E608 8003EBC8 26102018 */  addiu      $s0, $s0, %lo(D_80052018)
/* 18E60C 8003EBCC 0C028D89 */  jal        func_800A3624
/* 18E610 8003EBD0 AE040000 */   sw        $a0, ($s0)
/* 18E614 8003EBD4 8E040000 */  lw         $a0, ($s0)
/* 18E618 8003EBD8 00002821 */  addu       $a1, $zero, $zero
/* 18E61C 8003EBDC 3C028005 */  lui        $v0, %hi(D_80052011)
/* 18E620 8003EBE0 90422011 */  lbu        $v0, %lo(D_80052011)($v0)
/* 18E624 8003EBE4 00003021 */  addu       $a2, $zero, $zero
/* 18E628 8003EBE8 00003821 */  addu       $a3, $zero, $zero
/* 18E62C 8003EBEC 0C028E41 */  jal        func_800A3904
/* 18E630 8003EBF0 AFA20010 */   sw        $v0, 0x10($sp)
/* 18E634 8003EBF4 3C038005 */  lui        $v1, %hi(D_80052018)
/* 18E638 8003EBF8 8C632018 */  lw         $v1, %lo(D_80052018)($v1)
/* 18E63C 8003EBFC 9462001E */  lhu        $v0, 0x1e($v1)
/* 18E640 8003EC00 A462001E */  sh         $v0, 0x1e($v1)
/* 18E644 8003EC04 3C038005 */  lui        $v1, %hi(D_80052018)
/* 18E648 8003EC08 8C632018 */  lw         $v1, %lo(D_80052018)($v1)
/* 18E64C 8003EC0C 24020002 */  addiu      $v0, $zero, 2
/* 18E650 8003EC10 A462001C */  sh         $v0, 0x1c($v1)
/* 18E654 8003EC14 8E040000 */  lw         $a0, ($s0)
/* 18E658 8003EC18 24050038 */  addiu      $a1, $zero, 0x38
/* 18E65C 8003EC1C 0C028F9A */  jal        func_800A3E68
/* 18E660 8003EC20 24060071 */   addiu     $a2, $zero, 0x71
/* 18E664 8003EC24 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E668 8003EC28 84422012 */  lh         $v0, %lo(D_80052012)($v0)
/* 18E66C 8003EC2C 00021040 */  sll        $v0, $v0, 1
/* 18E670 8003EC30 3C048005 */  lui        $a0, %hi(D_8004F340)
/* 18E674 8003EC34 00822021 */  addu       $a0, $a0, $v0
/* 18E678 8003EC38 9484F340 */  lhu        $a0, %lo(D_8004F340)($a0)
/* 18E67C 8003EC3C 24050002 */  addiu      $a1, $zero, 2
/* 18E680 8003EC40 0C028CB7 */  jal        func_800A32DC
/* 18E684 8003EC44 00003021 */   addu      $a2, $zero, $zero
/* 18E688 8003EC48 00402021 */  addu       $a0, $v0, $zero
/* 18E68C 8003EC4C 24050280 */  addiu      $a1, $zero, 0x280
/* 18E690 8003EC50 3C018005 */  lui        $at, %hi(D_8005201C)
/* 18E694 8003EC54 AC24201C */  sw         $a0, %lo(D_8005201C)($at)
/* 18E698 8003EC58 0C028D89 */  jal        func_800A3624
/* 18E69C 8003EC5C 240601E0 */   addiu     $a2, $zero, 0x1e0
/* 18E6A0 8003EC60 3C038005 */  lui        $v1, %hi(D_8005201C)
/* 18E6A4 8003EC64 8C63201C */  lw         $v1, %lo(D_8005201C)($v1)
/* 18E6A8 8003EC68 9462001E */  lhu        $v0, 0x1e($v1)
/* 18E6AC 8003EC6C 240500FF */  addiu      $a1, $zero, 0xff
/* 18E6B0 8003EC70 34420004 */  ori        $v0, $v0, 4
/* 18E6B4 8003EC74 A462001E */  sh         $v0, 0x1e($v1)
/* 18E6B8 8003EC78 3C038005 */  lui        $v1, %hi(D_8005201C)
/* 18E6BC 8003EC7C 8C63201C */  lw         $v1, %lo(D_8005201C)($v1)
/* 18E6C0 8003EC80 240600FF */  addiu      $a2, $zero, 0xff
/* 18E6C4 8003EC84 24020001 */  addiu      $v0, $zero, 1
/* 18E6C8 8003EC88 A462001C */  sh         $v0, 0x1c($v1)
/* 18E6CC 8003EC8C 3C048005 */  lui        $a0, %hi(D_8005201C)
/* 18E6D0 8003EC90 8C84201C */  lw         $a0, %lo(D_8005201C)($a0)
/* 18E6D4 8003EC94 240700FF */  addiu      $a3, $zero, 0xff
/* 18E6D8 8003EC98 240200FF */  addiu      $v0, $zero, 0xff
/* 18E6DC 8003EC9C 0C028E41 */  jal        func_800A3904
/* 18E6E0 8003ECA0 AFA20010 */   sw        $v0, 0x10($sp)
/* 18E6E4 8003ECA4 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E6E8 8003ECA8 94422012 */  lhu        $v0, %lo(D_80052012)($v0)
/* 18E6EC 8003ECAC 24420001 */  addiu      $v0, $v0, 1
/* 18E6F0 8003ECB0 3C018005 */  lui        $at, %hi(D_80052012)
/* 18E6F4 8003ECB4 A4222012 */  sh         $v0, %lo(D_80052012)($at)
/* 18E6F8 8003ECB8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18E6FC 8003ECBC 8FB00018 */  lw         $s0, 0x18($sp)
/* 18E700 8003ECC0 03E00008 */  jr         $ra
/* 18E704 8003ECC4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003ECC8_18E708
/* 18E708 8003ECC8 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18E70C 8003ECCC 8C842024 */  lw         $a0, %lo(D_80052024)($a0)
/* 18E710 8003ECD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18E714 8003ECD4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 18E718 8003ECD8 0C028D30 */  jal        func_800A34C0
/* 18E71C 8003ECDC 00000000 */   nop
/* 18E720 8003ECE0 3C048005 */  lui        $a0, %hi(D_8005201C)
/* 18E724 8003ECE4 0C028D30 */  jal        func_800A34C0
/* 18E728 8003ECE8 8C84201C */   lw        $a0, %lo(D_8005201C)($a0)
/* 18E72C 8003ECEC 3C048005 */  lui        $a0, %hi(D_80052018)
/* 18E730 8003ECF0 0C028D30 */  jal        func_800A34C0
/* 18E734 8003ECF4 8C842018 */   lw        $a0, %lo(D_80052018)($a0)
/* 18E738 8003ECF8 3C048005 */  lui        $a0, %hi(D_80052028)
/* 18E73C 8003ECFC 8C842028 */  lw         $a0, %lo(D_80052028)($a0)
/* 18E740 8003ED00 10800003 */  beqz       $a0, .L8003ED10
/* 18E744 8003ED04 00000000 */   nop
/* 18E748 8003ED08 0C028D30 */  jal        func_800A34C0
/* 18E74C 8003ED0C 00000000 */   nop
.L8003ED10:
/* 18E750 8003ED10 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18E754 8003ED14 03E00008 */  jr         $ra
/* 18E758 8003ED18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003ED1C_18E75C
/* 18E75C 8003ED1C 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18E760 8003ED20 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18E764 8003ED24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18E768 8003ED28 AFBF0024 */  sw         $ra, 0x24($sp)
/* 18E76C 8003ED2C 14400003 */  bnez       $v0, .L8003ED3C
/* 18E770 8003ED30 AFB00020 */   sw        $s0, 0x20($sp)
/* 18E774 8003ED34 0C00FAAB */  jal        func_8003EAAC_18E4EC
/* 18E778 8003ED38 00000000 */   nop
.L8003ED3C:
/* 18E77C 8003ED3C 3C028005 */  lui        $v0, %hi(D_80052012)
/* 18E780 8003ED40 84422012 */  lh         $v0, %lo(D_80052012)($v0)
/* 18E784 8003ED44 28420013 */  slti       $v0, $v0, 0x13
/* 18E788 8003ED48 10400005 */  beqz       $v0, .L8003ED60
/* 18E78C 8003ED4C 00000000 */   nop
/* 18E790 8003ED50 0C00FA2E */  jal        func_8003E8B8_18E2F8
/* 18E794 8003ED54 00000000 */   nop
/* 18E798 8003ED58 0800FB9B */  j          .L8003EE6C
/* 18E79C 8003ED5C 00000000 */   nop
.L8003ED60:
/* 18E7A0 8003ED60 3C028005 */  lui        $v0, %hi(D_80052030)
/* 18E7A4 8003ED64 84422030 */  lh         $v0, %lo(D_80052030)($v0)
/* 18E7A8 8003ED68 00401821 */  addu       $v1, $v0, $zero
/* 18E7AC 8003ED6C 2842012C */  slti       $v0, $v0, 0x12c
/* 18E7B0 8003ED70 1440003C */  bnez       $v0, .L8003EE64
/* 18E7B4 8003ED74 24620001 */   addiu     $v0, $v1, 1
/* 18E7B8 8003ED78 24050010 */  addiu      $a1, $zero, 0x10
/* 18E7BC 8003ED7C 24060010 */  addiu      $a2, $zero, 0x10
/* 18E7C0 8003ED80 3C048005 */  lui        $a0, %hi(D_8005200C)
/* 18E7C4 8003ED84 8C84200C */  lw         $a0, %lo(D_8005200C)($a0)
/* 18E7C8 8003ED88 24070130 */  addiu      $a3, $zero, 0x130
/* 18E7CC 8003ED8C 241000E0 */  addiu      $s0, $zero, 0xe0
/* 18E7D0 8003ED90 0C02939C */  jal        func_800A4E70
/* 18E7D4 8003ED94 AFB00010 */   sw        $s0, 0x10($sp)
/* 18E7D8 8003ED98 24050010 */  addiu      $a1, $zero, 0x10
/* 18E7DC 8003ED9C 3C048005 */  lui        $a0, %hi(D_80052094)
/* 18E7E0 8003EDA0 8C842094 */  lw         $a0, %lo(D_80052094)($a0)
/* 18E7E4 8003EDA4 24060010 */  addiu      $a2, $zero, 0x10
/* 18E7E8 8003EDA8 24070130 */  addiu      $a3, $zero, 0x130
/* 18E7EC 8003EDAC 0C02939C */  jal        func_800A4E70
/* 18E7F0 8003EDB0 AFB00010 */   sw        $s0, 0x10($sp)
/* 18E7F4 8003EDB4 3C028005 */  lui        $v0, %hi(D_8005202E)
/* 18E7F8 8003EDB8 8442202E */  lh         $v0, %lo(D_8005202E)($v0)
/* 18E7FC 8003EDBC 3C038005 */  lui        $v1, %hi(D_8004F368)
/* 18E800 8003EDC0 2463F368 */  addiu      $v1, $v1, %lo(D_8004F368)
/* 18E804 8003EDC4 00021080 */  sll        $v0, $v0, 2
/* 18E808 8003EDC8 00432021 */  addu       $a0, $v0, $v1
/* 18E80C 8003EDCC 8C830000 */  lw         $v1, ($a0)
/* 18E810 8003EDD0 3402FFFF */  ori        $v0, $zero, 0xffff
/* 18E814 8003EDD4 1062001D */  beq        $v1, $v0, .L8003EE4C
/* 18E818 8003EDD8 00000000 */   nop
/* 18E81C 8003EDDC 3C028005 */  lui        $v0, %hi(D_8005202C)
/* 18E820 8003EDE0 8442202C */  lh         $v0, %lo(D_8005202C)($v0)
/* 18E824 8003EDE4 14400007 */  bnez       $v0, .L8003EE04
/* 18E828 8003EDE8 24020064 */   addiu     $v0, $zero, 0x64
/* 18E82C 8003EDEC AFA20010 */  sw         $v0, 0x10($sp)
/* 18E830 8003EDF0 8C840000 */  lw         $a0, ($a0)
/* 18E834 8003EDF4 24050060 */  addiu      $a1, $zero, 0x60
/* 18E838 8003EDF8 24060080 */  addiu      $a2, $zero, 0x80
/* 18E83C 8003EDFC 0C026E0C */  jal        func_8009B830
/* 18E840 8003EE00 24070001 */   addiu     $a3, $zero, 1
.L8003EE04:
/* 18E844 8003EE04 3C028005 */  lui        $v0, %hi(D_8005202C)
/* 18E848 8003EE08 9442202C */  lhu        $v0, %lo(D_8005202C)($v0)
/* 18E84C 8003EE0C 24420001 */  addiu      $v0, $v0, 1
/* 18E850 8003EE10 3C018005 */  lui        $at, %hi(D_8005202C)
/* 18E854 8003EE14 A422202C */  sh         $v0, %lo(D_8005202C)($at)
/* 18E858 8003EE18 00021400 */  sll        $v0, $v0, 0x10
/* 18E85C 8003EE1C 00021403 */  sra        $v0, $v0, 0x10
/* 18E860 8003EE20 28420014 */  slti       $v0, $v0, 0x14
/* 18E864 8003EE24 1440000B */  bnez       $v0, .L8003EE54
/* 18E868 8003EE28 00000000 */   nop
/* 18E86C 8003EE2C 3C028005 */  lui        $v0, %hi(D_8005202E)
/* 18E870 8003EE30 9442202E */  lhu        $v0, %lo(D_8005202E)($v0)
/* 18E874 8003EE34 3C018005 */  lui        $at, %hi(D_8005202C)
/* 18E878 8003EE38 A420202C */  sh         $zero, %lo(D_8005202C)($at)
/* 18E87C 8003EE3C 24420001 */  addiu      $v0, $v0, 1
/* 18E880 8003EE40 3C018005 */  lui        $at, %hi(D_8005202E)
/* 18E884 8003EE44 0800FB95 */  j          .L8003EE54
/* 18E888 8003EE48 A422202E */   sh        $v0, %lo(D_8005202E)($at)
.L8003EE4C:
/* 18E88C 8003EE4C 3C018005 */  lui        $at, %hi(D_8005202E)
/* 18E890 8003EE50 A420202E */  sh         $zero, %lo(D_8005202E)($at)
.L8003EE54:
/* 18E894 8003EE54 0C00F9A4 */  jal        func_8003E690_18E0D0
/* 18E898 8003EE58 00000000 */   nop
/* 18E89C 8003EE5C 0800FB9B */  j          .L8003EE6C
/* 18E8A0 8003EE60 00000000 */   nop
.L8003EE64:
/* 18E8A4 8003EE64 3C018005 */  lui        $at, %hi(D_80052030)
/* 18E8A8 8003EE68 A4222030 */  sh         $v0, %lo(D_80052030)($at)
.L8003EE6C:
/* 18E8AC 8003EE6C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18E8B0 8003EE70 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18E8B4 8003EE74 9442000A */  lhu        $v0, 0xa($v0)
/* 18E8B8 8003EE78 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18E8BC 8003EE7C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18E8C0 8003EE80 2442FFE2 */  addiu      $v0, $v0, -0x1e
/* 18E8C4 8003EE84 14620005 */  bne        $v1, $v0, .L8003EE9C
/* 18E8C8 8003EE88 24020001 */   addiu     $v0, $zero, 1
/* 18E8CC 8003EE8C 3C018005 */  lui        $at, %hi(D_8005202C)
/* 18E8D0 8003EE90 A422202C */  sh         $v0, %lo(D_8005202C)($at)
/* 18E8D4 8003EE94 0C026E5D */  jal        func_8009B974
/* 18E8D8 8003EE98 24040078 */   addiu     $a0, $zero, 0x78
.L8003EE9C:
/* 18E8DC 8003EE9C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 18E8E0 8003EEA0 8FB00020 */  lw         $s0, 0x20($sp)
/* 18E8E4 8003EEA4 03E00008 */  jr         $ra
/* 18E8E8 8003EEA8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003EEAC_18E8EC
/* 18E8EC 8003EEAC 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18E8F0 8003EEB0 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18E8F4 8003EEB4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18E8F8 8003EEB8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18E8FC 8003EEBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18E900 8003EEC0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18E904 8003EEC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 18E908 8003EEC8 8C50002C */  lw         $s0, 0x2c($v0)
/* 18E90C 8003EECC 1460000E */  bnez       $v1, .L8003EF08
/* 18E910 8003EED0 240400AA */   addiu     $a0, $zero, 0xaa
/* 18E914 8003EED4 24050080 */  addiu      $a1, $zero, 0x80
/* 18E918 8003EED8 24060080 */  addiu      $a2, $zero, 0x80
/* 18E91C 8003EEDC 24070001 */  addiu      $a3, $zero, 1
/* 18E920 8003EEE0 24020064 */  addiu      $v0, $zero, 0x64
/* 18E924 8003EEE4 0C026E0C */  jal        func_8009B830
/* 18E928 8003EEE8 AFA20010 */   sw        $v0, 0x10($sp)
/* 18E92C 8003EEEC 240200FF */  addiu      $v0, $zero, 0xff
/* 18E930 8003EEF0 AFA20010 */  sw         $v0, 0x10($sp)
/* 18E934 8003EEF4 8E04003C */  lw         $a0, 0x3c($s0)
/* 18E938 8003EEF8 00002821 */  addu       $a1, $zero, $zero
/* 18E93C 8003EEFC 00003021 */  addu       $a2, $zero, $zero
/* 18E940 8003EF00 0C028E41 */  jal        func_800A3904
/* 18E944 8003EF04 00003821 */   addu      $a3, $zero, $zero
.L8003EF08:
/* 18E948 8003EF08 8E04003C */  lw         $a0, 0x3c($s0)
/* 18E94C 8003EF0C 9083001B */  lbu        $v1, 0x1b($a0)
/* 18E950 8003EF10 00002821 */  addu       $a1, $zero, $zero
/* 18E954 8003EF14 2463FFFD */  addiu      $v1, $v1, -3
/* 18E958 8003EF18 00031027 */  nor        $v0, $zero, $v1
/* 18E95C 8003EF1C 000217C3 */  sra        $v0, $v0, 0x1f
/* 18E960 8003EF20 00621824 */  and        $v1, $v1, $v0
/* 18E964 8003EF24 A083001B */  sb         $v1, 0x1b($a0)
/* 18E968 8003EF28 30A300FF */  andi       $v1, $a1, 0xff
.L8003EF2C:
/* 18E96C 8003EF2C 00031040 */  sll        $v0, $v1, 1
/* 18E970 8003EF30 00431021 */  addu       $v0, $v0, $v1
/* 18E974 8003EF34 00021080 */  sll        $v0, $v0, 2
/* 18E978 8003EF38 00501021 */  addu       $v0, $v0, $s0
/* 18E97C 8003EF3C 8C430000 */  lw         $v1, ($v0)
/* 18E980 8003EF40 9462001E */  lhu        $v0, 0x1e($v1)
/* 18E984 8003EF44 24A50001 */  addiu      $a1, $a1, 1
/* 18E988 8003EF48 34420400 */  ori        $v0, $v0, 0x400
/* 18E98C 8003EF4C A462001E */  sh         $v0, 0x1e($v1)
/* 18E990 8003EF50 30A200FF */  andi       $v0, $a1, 0xff
/* 18E994 8003EF54 2C420005 */  sltiu      $v0, $v0, 5
/* 18E998 8003EF58 1440FFF4 */  bnez       $v0, .L8003EF2C
/* 18E99C 8003EF5C 30A300FF */   andi      $v1, $a1, 0xff
/* 18E9A0 8003EF60 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18E9A4 8003EF64 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18E9A8 8003EF68 3C02CCCC */  lui        $v0, 0xcccc
/* 18E9AC 8003EF6C 3442CCCD */  ori        $v0, $v0, 0xcccd
/* 18E9B0 8003EF70 00031882 */  srl        $v1, $v1, 2
/* 18E9B4 8003EF74 00620019 */  multu      $v1, $v0
/* 18E9B8 8003EF78 00004010 */  mfhi       $t0
/* 18E9BC 8003EF7C 00082082 */  srl        $a0, $t0, 2
/* 18E9C0 8003EF80 00041080 */  sll        $v0, $a0, 2
/* 18E9C4 8003EF84 00441021 */  addu       $v0, $v0, $a0
/* 18E9C8 8003EF88 00621823 */  subu       $v1, $v1, $v0
/* 18E9CC 8003EF8C 00031C00 */  sll        $v1, $v1, 0x10
/* 18E9D0 8003EF90 00031C03 */  sra        $v1, $v1, 0x10
/* 18E9D4 8003EF94 00031040 */  sll        $v0, $v1, 1
/* 18E9D8 8003EF98 00431021 */  addu       $v0, $v0, $v1
/* 18E9DC 8003EF9C 00021080 */  sll        $v0, $v0, 2
/* 18E9E0 8003EFA0 00501021 */  addu       $v0, $v0, $s0
/* 18E9E4 8003EFA4 8C430000 */  lw         $v1, ($v0)
/* 18E9E8 8003EFA8 9462001E */  lhu        $v0, 0x1e($v1)
/* 18E9EC 8003EFAC 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 18E9F0 8003EFB0 A462001E */  sh         $v0, 0x1e($v1)
/* 18E9F4 8003EFB4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18E9F8 8003EFB8 8FB00018 */  lw         $s0, 0x18($sp)
/* 18E9FC 8003EFBC 03E00008 */  jr         $ra
/* 18EA00 8003EFC0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003EFC4_18EA04
/* 18EA04 8003EFC4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18EA08 8003EFC8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18EA0C 8003EFCC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 18EA10 8003EFD0 AFBF005C */  sw         $ra, 0x5c($sp)
/* 18EA14 8003EFD4 AFB20058 */  sw         $s2, 0x58($sp)
/* 18EA18 8003EFD8 AFB10054 */  sw         $s1, 0x54($sp)
/* 18EA1C 8003EFDC AFB00050 */  sw         $s0, 0x50($sp)
/* 18EA20 8003EFE0 8C52002C */  lw         $s2, 0x2c($v0)
/* 18EA24 8003EFE4 3C058005 */  lui        $a1, %hi(D_80051D7C)
/* 18EA28 8003EFE8 24A51D7C */  addiu      $a1, $a1, %lo(D_80051D7C)
/* 18EA2C 8003EFEC 88A20000 */  lwl        $v0, ($a1)
/* 18EA30 8003EFF0 98A20003 */  lwr        $v0, 3($a1)
/* 18EA34 8003EFF4 88A30004 */  lwl        $v1, 4($a1)
/* 18EA38 8003EFF8 98A30007 */  lwr        $v1, 7($a1)
/* 18EA3C 8003EFFC 88A40008 */  lwl        $a0, 8($a1)
/* 18EA40 8003F000 98A4000B */  lwr        $a0, 0xb($a1)
/* 18EA44 8003F004 ABA20010 */  swl        $v0, 0x10($sp)
/* 18EA48 8003F008 BBA20013 */  swr        $v0, 0x13($sp)
/* 18EA4C 8003F00C ABA30014 */  swl        $v1, 0x14($sp)
/* 18EA50 8003F010 BBA30017 */  swr        $v1, 0x17($sp)
/* 18EA54 8003F014 ABA40018 */  swl        $a0, 0x18($sp)
/* 18EA58 8003F018 BBA4001B */  swr        $a0, 0x1b($sp)
/* 18EA5C 8003F01C 88A2000C */  lwl        $v0, 0xc($a1)
/* 18EA60 8003F020 98A2000F */  lwr        $v0, 0xf($a1)
/* 18EA64 8003F024 88A30010 */  lwl        $v1, 0x10($a1)
/* 18EA68 8003F028 98A30013 */  lwr        $v1, 0x13($a1)
/* 18EA6C 8003F02C 88A40014 */  lwl        $a0, 0x14($a1)
/* 18EA70 8003F030 98A40017 */  lwr        $a0, 0x17($a1)
/* 18EA74 8003F034 ABA2001C */  swl        $v0, 0x1c($sp)
/* 18EA78 8003F038 BBA2001F */  swr        $v0, 0x1f($sp)
/* 18EA7C 8003F03C ABA30020 */  swl        $v1, 0x20($sp)
/* 18EA80 8003F040 BBA30023 */  swr        $v1, 0x23($sp)
/* 18EA84 8003F044 ABA40024 */  swl        $a0, 0x24($sp)
/* 18EA88 8003F048 BBA40027 */  swr        $a0, 0x27($sp)
/* 18EA8C 8003F04C 88A20018 */  lwl        $v0, 0x18($a1)
/* 18EA90 8003F050 98A2001B */  lwr        $v0, 0x1b($a1)
/* 18EA94 8003F054 ABA20028 */  swl        $v0, 0x28($sp)
/* 18EA98 8003F058 BBA2002B */  swr        $v0, 0x2b($sp)
/* 18EA9C 8003F05C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18EAA0 8003F060 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18EAA4 8003F064 2402001E */  addiu      $v0, $zero, 0x1e
/* 18EAA8 8003F068 A7A20040 */  sh         $v0, 0x40($sp)
/* 18EAAC 8003F06C 2402001C */  addiu      $v0, $zero, 0x1c
/* 18EAB0 8003F070 A3A20042 */  sb         $v0, 0x42($sp)
/* 18EAB4 8003F074 24020006 */  addiu      $v0, $zero, 6
/* 18EAB8 8003F078 A3A20043 */  sb         $v0, 0x43($sp)
/* 18EABC 8003F07C 27A20010 */  addiu      $v0, $sp, 0x10
/* 18EAC0 8003F080 A3A00044 */  sb         $zero, 0x44($sp)
/* 18EAC4 8003F084 A3A00045 */  sb         $zero, 0x45($sp)
/* 18EAC8 8003F088 AFA20048 */  sw         $v0, 0x48($sp)
/* 18EACC 8003F08C 8FA20040 */  lw         $v0, 0x40($sp)
/* 18EAD0 8003F090 8FA40044 */  lw         $a0, 0x44($sp)
/* 18EAD4 8003F094 8FA50048 */  lw         $a1, 0x48($sp)
/* 18EAD8 8003F098 AFA20030 */  sw         $v0, 0x30($sp)
/* 18EADC 8003F09C AFA40034 */  sw         $a0, 0x34($sp)
/* 18EAE0 8003F0A0 14600014 */  bnez       $v1, .L8003F0F4
/* 18EAE4 8003F0A4 AFA50038 */   sw        $a1, 0x38($sp)
/* 18EAE8 8003F0A8 00008821 */  addu       $s1, $zero, $zero
/* 18EAEC 8003F0AC 322200FF */  andi       $v0, $s1, 0xff
.L8003F0B0:
/* 18EAF0 8003F0B0 00028040 */  sll        $s0, $v0, 1
/* 18EAF4 8003F0B4 02028021 */  addu       $s0, $s0, $v0
/* 18EAF8 8003F0B8 00108080 */  sll        $s0, $s0, 2
/* 18EAFC 8003F0BC 02128021 */  addu       $s0, $s0, $s2
/* 18EB00 8003F0C0 8E040000 */  lw         $a0, ($s0)
/* 18EB04 8003F0C4 00002821 */  addu       $a1, $zero, $zero
/* 18EB08 8003F0C8 0C02912A */  jal        func_800A44A8
/* 18EB0C 8003F0CC 00003021 */   addu      $a2, $zero, $zero
/* 18EB10 8003F0D0 8E030000 */  lw         $v1, ($s0)
/* 18EB14 8003F0D4 9462001E */  lhu        $v0, 0x1e($v1)
/* 18EB18 8003F0D8 26310001 */  addiu      $s1, $s1, 1
/* 18EB1C 8003F0DC 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 18EB20 8003F0E0 A462001E */  sh         $v0, 0x1e($v1)
/* 18EB24 8003F0E4 322200FF */  andi       $v0, $s1, 0xff
/* 18EB28 8003F0E8 2C420003 */  sltiu      $v0, $v0, 3
/* 18EB2C 8003F0EC 1440FFF0 */  bnez       $v0, .L8003F0B0
/* 18EB30 8003F0F0 322200FF */   andi      $v0, $s1, 0xff
.L8003F0F4:
/* 18EB34 8003F0F4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18EB38 8003F0F8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18EB3C 8003F0FC 9442000A */  lhu        $v0, 0xa($v0)
/* 18EB40 8003F100 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18EB44 8003F104 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18EB48 8003F108 2442FFE2 */  addiu      $v0, $v0, -0x1e
/* 18EB4C 8003F10C 14620004 */  bne        $v1, $v0, .L8003F120
/* 18EB50 8003F110 24110001 */   addiu     $s1, $zero, 1
/* 18EB54 8003F114 0C026E5D */  jal        func_8009B974
/* 18EB58 8003F118 2404000F */   addiu     $a0, $zero, 0xf
/* 18EB5C 8003F11C 24110001 */  addiu      $s1, $zero, 1
.L8003F120:
/* 18EB60 8003F120 322300FF */  andi       $v1, $s1, 0xff
.L8003F124:
/* 18EB64 8003F124 00031040 */  sll        $v0, $v1, 1
/* 18EB68 8003F128 00431021 */  addu       $v0, $v0, $v1
/* 18EB6C 8003F12C 00021080 */  sll        $v0, $v0, 2
/* 18EB70 8003F130 00521021 */  addu       $v0, $v0, $s2
/* 18EB74 8003F134 8C430000 */  lw         $v1, ($v0)
/* 18EB78 8003F138 9462001E */  lhu        $v0, 0x1e($v1)
/* 18EB7C 8003F13C 26310001 */  addiu      $s1, $s1, 1
/* 18EB80 8003F140 34420400 */  ori        $v0, $v0, 0x400
/* 18EB84 8003F144 A462001E */  sh         $v0, 0x1e($v1)
/* 18EB88 8003F148 322200FF */  andi       $v0, $s1, 0xff
/* 18EB8C 8003F14C 2C420003 */  sltiu      $v0, $v0, 3
/* 18EB90 8003F150 1440FFF4 */  bnez       $v0, .L8003F124
/* 18EB94 8003F154 322300FF */   andi      $v1, $s1, 0xff
/* 18EB98 8003F158 8FA40030 */  lw         $a0, 0x30($sp)
/* 18EB9C 8003F15C 8FA50034 */  lw         $a1, 0x34($sp)
/* 18EBA0 8003F160 8FA60038 */  lw         $a2, 0x38($sp)
/* 18EBA4 8003F164 3C078005 */  lui        $a3, %hi(D_80052038)
/* 18EBA8 8003F168 0C00D4EF */  jal        func_800353BC_184DFC
/* 18EBAC 8003F16C 84E72038 */   lh        $a3, %lo(D_80052038)($a3)
/* 18EBB0 8003F170 00401821 */  addu       $v1, $v0, $zero
/* 18EBB4 8003F174 10600008 */  beqz       $v1, .L8003F198
/* 18EBB8 8003F178 00031040 */   sll       $v0, $v1, 1
/* 18EBBC 8003F17C 00431021 */  addu       $v0, $v0, $v1
/* 18EBC0 8003F180 00021080 */  sll        $v0, $v0, 2
/* 18EBC4 8003F184 00521021 */  addu       $v0, $v0, $s2
/* 18EBC8 8003F188 8C430000 */  lw         $v1, ($v0)
/* 18EBCC 8003F18C 9462001E */  lhu        $v0, 0x1e($v1)
/* 18EBD0 8003F190 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 18EBD4 8003F194 A462001E */  sh         $v0, 0x1e($v1)
.L8003F198:
/* 18EBD8 8003F198 8FBF005C */  lw         $ra, 0x5c($sp)
/* 18EBDC 8003F19C 8FB20058 */  lw         $s2, 0x58($sp)
/* 18EBE0 8003F1A0 8FB10054 */  lw         $s1, 0x54($sp)
/* 18EBE4 8003F1A4 8FB00050 */  lw         $s0, 0x50($sp)
/* 18EBE8 8003F1A8 03E00008 */  jr         $ra
/* 18EBEC 8003F1AC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8003F1B0_18EBF0
/* 18EBF0 8003F1B0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18EBF4 8003F1B4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18EBF8 8003F1B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18EBFC 8003F1BC 14400010 */  bnez       $v0, .L8003F200
/* 18EC00 8003F1C0 AFBF0018 */   sw        $ra, 0x18($sp)
/* 18EC04 8003F1C4 3C048005 */  lui        $a0, %hi(D_80052024)
/* 18EC08 8003F1C8 0C028D30 */  jal        func_800A34C0
/* 18EC0C 8003F1CC 8C842024 */   lw        $a0, %lo(D_80052024)($a0)
/* 18EC10 8003F1D0 3C048005 */  lui        $a0, %hi(D_8005201C)
/* 18EC14 8003F1D4 0C028D30 */  jal        func_800A34C0
/* 18EC18 8003F1D8 8C84201C */   lw        $a0, %lo(D_8005201C)($a0)
/* 18EC1C 8003F1DC 3C048005 */  lui        $a0, %hi(D_80052018)
/* 18EC20 8003F1E0 0C028D30 */  jal        func_800A34C0
/* 18EC24 8003F1E4 8C842018 */   lw        $a0, %lo(D_80052018)($a0)
/* 18EC28 8003F1E8 3C048005 */  lui        $a0, %hi(D_80052028)
/* 18EC2C 8003F1EC 8C842028 */  lw         $a0, %lo(D_80052028)($a0)
/* 18EC30 8003F1F0 10800003 */  beqz       $a0, .L8003F200
/* 18EC34 8003F1F4 00000000 */   nop
/* 18EC38 8003F1F8 0C028D30 */  jal        func_800A34C0
/* 18EC3C 8003F1FC 00000000 */   nop
.L8003F200:
/* 18EC40 8003F200 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18EC44 8003F204 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18EC48 8003F208 2402005A */  addiu      $v0, $zero, 0x5a
/* 18EC4C 8003F20C 14620007 */  bne        $v1, $v0, .L8003F22C
/* 18EC50 8003F210 24020064 */   addiu     $v0, $zero, 0x64
/* 18EC54 8003F214 AFA20010 */  sw         $v0, 0x10($sp)
/* 18EC58 8003F218 24040150 */  addiu      $a0, $zero, 0x150
/* 18EC5C 8003F21C 24050080 */  addiu      $a1, $zero, 0x80
/* 18EC60 8003F220 24060080 */  addiu      $a2, $zero, 0x80
/* 18EC64 8003F224 0C026E0C */  jal        func_8009B830
/* 18EC68 8003F228 24070001 */   addiu     $a3, $zero, 1
.L8003F22C:
/* 18EC6C 8003F22C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18EC70 8003F230 03E00008 */  jr         $ra
/* 18EC74 8003F234 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F238_18EC78
/* 18EC78 8003F238 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18EC7C 8003F23C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18EC80 8003F240 8C42002C */  lw         $v0, 0x2c($v0)
/* 18EC84 8003F244 8C420000 */  lw         $v0, ($v0)
/* 18EC88 8003F248 8C440008 */  lw         $a0, 8($v0)
/* 18EC8C 8003F24C 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18EC90 8003F250 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18EC94 8003F254 94830010 */  lhu        $v1, 0x10($a0)
/* 18EC98 8003F258 30420001 */  andi       $v0, $v0, 1
/* 18EC9C 8003F25C 54400001 */  bnezl      $v0, .L8003F264
/* 18ECA0 8003F260 2463FFFF */   addiu     $v1, $v1, -1
.L8003F264:
/* 18ECA4 8003F264 00031400 */  sll        $v0, $v1, 0x10
/* 18ECA8 8003F268 00021403 */  sra        $v0, $v0, 0x10
/* 18ECAC 8003F26C 284201FC */  slti       $v0, $v0, 0x1fc
/* 18ECB0 8003F270 54400001 */  bnezl      $v0, .L8003F278
/* 18ECB4 8003F274 240301FC */   addiu     $v1, $zero, 0x1fc
.L8003F278:
/* 18ECB8 8003F278 03E00008 */  jr         $ra
/* 18ECBC 8003F27C A4830010 */   sh        $v1, 0x10($a0)

glabel func_8003F280_18ECC0
/* 18ECC0 8003F280 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18ECC4 8003F284 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18ECC8 8003F288 8C42002C */  lw         $v0, 0x2c($v0)
/* 18ECCC 8003F28C 8C420000 */  lw         $v0, ($v0)
/* 18ECD0 8003F290 8C440008 */  lw         $a0, 8($v0)
/* 18ECD4 8003F294 94830012 */  lhu        $v1, 0x12($a0)
/* 18ECD8 8003F298 24620001 */  addiu      $v0, $v1, 1
/* 18ECDC 8003F29C 00401821 */  addu       $v1, $v0, $zero
/* 18ECE0 8003F2A0 00021400 */  sll        $v0, $v0, 0x10
/* 18ECE4 8003F2A4 00021403 */  sra        $v0, $v0, 0x10
/* 18ECE8 8003F2A8 28420215 */  slti       $v0, $v0, 0x215
/* 18ECEC 8003F2AC 50400001 */  beql       $v0, $zero, .L8003F2B4
/* 18ECF0 8003F2B0 24030214 */   addiu     $v1, $zero, 0x214
.L8003F2B4:
/* 18ECF4 8003F2B4 03E00008 */  jr         $ra
/* 18ECF8 8003F2B8 A4830012 */   sh        $v1, 0x12($a0)

glabel func_8003F2BC_18ECFC
/* 18ECFC 8003F2BC 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18ED00 8003F2C0 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18ED04 8003F2C4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18ED08 8003F2C8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18ED0C 8003F2CC 8C44002C */  lw         $a0, 0x2c($v0)
/* 18ED10 8003F2D0 14600009 */  bnez       $v1, .L8003F2F8
/* 18ED14 8003F2D4 27BDFFF8 */   addiu     $sp, $sp, -8
/* 18ED18 8003F2D8 8C820000 */  lw         $v0, ($a0)
/* 18ED1C 8003F2DC 8C430008 */  lw         $v1, 8($v0)
/* 18ED20 8003F2E0 24020240 */  addiu      $v0, $zero, 0x240
/* 18ED24 8003F2E4 A4620010 */  sh         $v0, 0x10($v1)
/* 18ED28 8003F2E8 8C820000 */  lw         $v0, ($a0)
/* 18ED2C 8003F2EC 8C430008 */  lw         $v1, 8($v0)
/* 18ED30 8003F2F0 240201A0 */  addiu      $v0, $zero, 0x1a0
/* 18ED34 8003F2F4 A4620012 */  sh         $v0, 0x12($v1)
.L8003F2F8:
/* 18ED38 8003F2F8 8C820000 */  lw         $v0, ($a0)
/* 18ED3C 8003F2FC 8C420008 */  lw         $v0, 8($v0)
/* 18ED40 8003F300 94420010 */  lhu        $v0, 0x10($v0)
/* 18ED44 8003F304 24420001 */  addiu      $v0, $v0, 1
/* 18ED48 8003F308 A7A20000 */  sh         $v0, ($sp)
/* 18ED4C 8003F30C 00021400 */  sll        $v0, $v0, 0x10
/* 18ED50 8003F310 00021403 */  sra        $v0, $v0, 0x10
/* 18ED54 8003F314 284202BC */  slti       $v0, $v0, 0x2bc
/* 18ED58 8003F318 1040000B */  beqz       $v0, .L8003F348
/* 18ED5C 8003F31C 00000000 */   nop
/* 18ED60 8003F320 8C820000 */  lw         $v0, ($a0)
/* 18ED64 8003F324 8C430008 */  lw         $v1, 8($v0)
/* 18ED68 8003F328 94620010 */  lhu        $v0, 0x10($v1)
/* 18ED6C 8003F32C 24420001 */  addiu      $v0, $v0, 1
/* 18ED70 8003F330 A4620010 */  sh         $v0, 0x10($v1)
/* 18ED74 8003F334 8C820000 */  lw         $v0, ($a0)
/* 18ED78 8003F338 8C430008 */  lw         $v1, 8($v0)
/* 18ED7C 8003F33C 94620012 */  lhu        $v0, 0x12($v1)
/* 18ED80 8003F340 24420001 */  addiu      $v0, $v0, 1
/* 18ED84 8003F344 A4620012 */  sh         $v0, 0x12($v1)
.L8003F348:
/* 18ED88 8003F348 03E00008 */  jr         $ra
/* 18ED8C 8003F34C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8003F350_18ED90
/* 18ED90 8003F350 3C038005 */  lui        $v1, %hi(D_80052000)
/* 18ED94 8003F354 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 18ED98 8003F358 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18ED9C 8003F35C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18EDA0 8003F360 8C64002C */  lw         $a0, 0x2c($v1)
/* 18EDA4 8003F364 30420001 */  andi       $v0, $v0, 1
/* 18EDA8 8003F368 14400010 */  bnez       $v0, .L8003F3AC
/* 18EDAC 8003F36C 27BDFFF8 */   addiu     $sp, $sp, -8
/* 18EDB0 8003F370 8C82000C */  lw         $v0, 0xc($a0)
/* 18EDB4 8003F374 8C430008 */  lw         $v1, 8($v0)
/* 18EDB8 8003F378 94620010 */  lhu        $v0, 0x10($v1)
/* 18EDBC 8003F37C 2442FFFF */  addiu      $v0, $v0, -1
/* 18EDC0 8003F380 A4620010 */  sh         $v0, 0x10($v1)
/* 18EDC4 8003F384 8C82000C */  lw         $v0, 0xc($a0)
/* 18EDC8 8003F388 8C430008 */  lw         $v1, 8($v0)
/* 18EDCC 8003F38C 94620012 */  lhu        $v0, 0x12($v1)
/* 18EDD0 8003F390 24420001 */  addiu      $v0, $v0, 1
/* 18EDD4 8003F394 A4620012 */  sh         $v0, 0x12($v1)
/* 18EDD8 8003F398 8C820018 */  lw         $v0, 0x18($a0)
/* 18EDDC 8003F39C 8C430008 */  lw         $v1, 8($v0)
/* 18EDE0 8003F3A0 94620012 */  lhu        $v0, 0x12($v1)
/* 18EDE4 8003F3A4 2442FFFF */  addiu      $v0, $v0, -1
/* 18EDE8 8003F3A8 A4620012 */  sh         $v0, 0x12($v1)
.L8003F3AC:
/* 18EDEC 8003F3AC 03E00008 */  jr         $ra
/* 18EDF0 8003F3B0 27BD0008 */   addiu     $sp, $sp, 8
/* 18EDF4 8003F3B4 00000000 */  nop
/* 18EDF8 8003F3B8 00000000 */  nop
/* 18EDFC 8003F3BC 00000000 */  nop