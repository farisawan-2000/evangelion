.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003F550_18EF90
/* 18EF90 8003F550 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18EF94 8003F554 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18EF98 8003F558 00808821 */  addu       $s1, $a0, $zero
/* 18EF9C 8003F55C 240200FF */  addiu      $v0, $zero, 0xff
/* 18EFA0 8003F560 AFBF0020 */  sw         $ra, 0x20($sp)
/* 18EFA4 8003F564 AFB00018 */  sw         $s0, 0x18($sp)
/* 18EFA8 8003F568 AFA20010 */  sw         $v0, 0x10($sp)
/* 18EFAC 8003F56C 8E240068 */  lw         $a0, 0x68($s1)
/* 18EFB0 8003F570 00A08021 */  addu       $s0, $a1, $zero
/* 18EFB4 8003F574 240500FF */  addiu      $a1, $zero, 0xff
/* 18EFB8 8003F578 240600FF */  addiu      $a2, $zero, 0xff
/* 18EFBC 8003F57C 0C027F5E */  jal        func_8009FD78
/* 18EFC0 8003F580 240700FF */   addiu     $a3, $zero, 0xff
/* 18EFC4 8003F584 8E230068 */  lw         $v1, 0x68($s1)
/* 18EFC8 8003F588 90620066 */  lbu        $v0, 0x66($v1)
/* 18EFCC 8003F58C 304200DF */  andi       $v0, $v0, 0xdf
/* 18EFD0 8003F590 A0620066 */  sb         $v0, 0x66($v1)
/* 18EFD4 8003F594 8E220068 */  lw         $v0, 0x68($s1)
/* 18EFD8 8003F598 A0400067 */  sb         $zero, 0x67($v0)
/* 18EFDC 8003F59C 8E240068 */  lw         $a0, 0x68($s1)
/* 18EFE0 8003F5A0 0C028703 */  jal        func_800A1C0C
/* 18EFE4 8003F5A4 320500FF */   andi      $a1, $s0, 0xff
/* 18EFE8 8003F5A8 8E240068 */  lw         $a0, 0x68($s1)
/* 18EFEC 8003F5AC 3C058005 */  lui        $a1, %hi(D_80051DA0)
/* 18EFF0 8003F5B0 0C0284DC */  jal        func_800A1370
/* 18EFF4 8003F5B4 24A51DA0 */   addiu     $a1, $a1, %lo(D_80051DA0)
/* 18EFF8 8003F5B8 8E240068 */  lw         $a0, 0x68($s1)
/* 18EFFC 8003F5BC 00021400 */  sll        $v0, $v0, 0x10
/* 18F000 8003F5C0 0C0285CC */  jal        func_800A1730
/* 18F004 8003F5C4 00022C03 */   sra       $a1, $v0, 0x10
/* 18F008 8003F5C8 00002021 */  addu       $a0, $zero, $zero
/* 18F00C 8003F5CC 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18F010 8003F5D0 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F014 8003F5D4 AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L8003F5D8:
/* 18F018 8003F5D8 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18F01C 8003F5DC 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18F020 8003F5E0 A4450000 */  sh         $a1, ($v0)
/* 18F024 8003F5E4 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18F028 8003F5E8 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18F02C 8003F5EC 24820001 */  addiu      $v0, $a0, 1
/* 18F030 8003F5F0 00402021 */  addu       $a0, $v0, $zero
/* 18F034 8003F5F4 00021600 */  sll        $v0, $v0, 0x18
/* 18F038 8003F5F8 00021603 */  sra        $v0, $v0, 0x18
/* 18F03C 8003F5FC 28420010 */  slti       $v0, $v0, 0x10
/* 18F040 8003F600 24630002 */  addiu      $v1, $v1, 2
/* 18F044 8003F604 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F048 8003F608 1440FFF3 */  bnez       $v0, .L8003F5D8
/* 18F04C 8003F60C AC231FF0 */   sw        $v1, %lo(D_80051FF0)($at)
/* 18F050 8003F610 8E240068 */  lw         $a0, 0x68($s1)
/* 18F054 8003F614 3C058005 */  lui        $a1, %hi(D_80051DA8)
/* 18F058 8003F618 0C0284DC */  jal        func_800A1370
/* 18F05C 8003F61C 24A51DA8 */   addiu     $a1, $a1, %lo(D_80051DA8)
/* 18F060 8003F620 8E240068 */  lw         $a0, 0x68($s1)
/* 18F064 8003F624 00021400 */  sll        $v0, $v0, 0x10
/* 18F068 8003F628 0C0285CC */  jal        func_800A1730
/* 18F06C 8003F62C 00022C03 */   sra       $a1, $v0, 0x10
/* 18F070 8003F630 00002021 */  addu       $a0, $zero, $zero
/* 18F074 8003F634 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18F078 8003F638 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F07C 8003F63C AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L8003F640:
/* 18F080 8003F640 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18F084 8003F644 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18F088 8003F648 A4450000 */  sh         $a1, ($v0)
/* 18F08C 8003F64C 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18F090 8003F650 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18F094 8003F654 24820001 */  addiu      $v0, $a0, 1
/* 18F098 8003F658 00402021 */  addu       $a0, $v0, $zero
/* 18F09C 8003F65C 00021600 */  sll        $v0, $v0, 0x18
/* 18F0A0 8003F660 00021603 */  sra        $v0, $v0, 0x18
/* 18F0A4 8003F664 28420010 */  slti       $v0, $v0, 0x10
/* 18F0A8 8003F668 24630002 */  addiu      $v1, $v1, 2
/* 18F0AC 8003F66C 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F0B0 8003F670 1440FFF3 */  bnez       $v0, .L8003F640
/* 18F0B4 8003F674 AC231FF0 */   sw        $v1, %lo(D_80051FF0)($at)
/* 18F0B8 8003F678 8FBF0020 */  lw         $ra, 0x20($sp)
/* 18F0BC 8003F67C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18F0C0 8003F680 8FB00018 */  lw         $s0, 0x18($sp)
/* 18F0C4 8003F684 03E00008 */  jr         $ra
/* 18F0C8 8003F688 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003F68C_18F0CC
/* 18F0CC 8003F68C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18F0D0 8003F690 AFB00018 */  sw         $s0, 0x18($sp)
/* 18F0D4 8003F694 00808021 */  addu       $s0, $a0, $zero
/* 18F0D8 8003F698 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18F0DC 8003F69C 8E020068 */  lw         $v0, 0x68($s0)
/* 18F0E0 8003F6A0 24050040 */  addiu      $a1, $zero, 0x40
/* 18F0E4 8003F6A4 A0400067 */  sb         $zero, 0x67($v0)
/* 18F0E8 8003F6A8 240200FF */  addiu      $v0, $zero, 0xff
/* 18F0EC 8003F6AC AFA20010 */  sw         $v0, 0x10($sp)
/* 18F0F0 8003F6B0 8E040068 */  lw         $a0, 0x68($s0)
/* 18F0F4 8003F6B4 24060040 */  addiu      $a2, $zero, 0x40
/* 18F0F8 8003F6B8 0C027F5E */  jal        func_8009FD78
/* 18F0FC 8003F6BC 24070040 */   addiu     $a3, $zero, 0x40
/* 18F100 8003F6C0 8E030068 */  lw         $v1, 0x68($s0)
/* 18F104 8003F6C4 90620066 */  lbu        $v0, 0x66($v1)
/* 18F108 8003F6C8 304200DF */  andi       $v0, $v0, 0xdf
/* 18F10C 8003F6CC A0620066 */  sb         $v0, 0x66($v1)
/* 18F110 8003F6D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18F114 8003F6D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 18F118 8003F6D8 03E00008 */  jr         $ra
/* 18F11C 8003F6DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F6E0_18F120
/* 18F120 8003F6E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18F124 8003F6E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 18F128 8003F6E8 8C830068 */  lw         $v1, 0x68($a0)
/* 18F12C 8003F6EC 2402000A */  addiu      $v0, $zero, 0xa
/* 18F130 8003F6F0 240500FF */  addiu      $a1, $zero, 0xff
/* 18F134 8003F6F4 A0620067 */  sb         $v0, 0x67($v1)
/* 18F138 8003F6F8 240200FF */  addiu      $v0, $zero, 0xff
/* 18F13C 8003F6FC AFA20010 */  sw         $v0, 0x10($sp)
/* 18F140 8003F700 8C840068 */  lw         $a0, 0x68($a0)
/* 18F144 8003F704 240600FF */  addiu      $a2, $zero, 0xff
/* 18F148 8003F708 0C027F5E */  jal        func_8009FD78
/* 18F14C 8003F70C 240700FF */   addiu     $a3, $zero, 0xff
/* 18F150 8003F710 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18F154 8003F714 03E00008 */  jr         $ra
/* 18F158 8003F718 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F71C_18F15C
/* 18F15C 8003F71C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 18F160 8003F720 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18F164 8003F724 00808821 */  addu       $s1, $a0, $zero
/* 18F168 8003F728 AFB20020 */  sw         $s2, 0x20($sp)
/* 18F16C 8003F72C 00009021 */  addu       $s2, $zero, $zero
/* 18F170 8003F730 30A500FF */  andi       $a1, $a1, 0xff
/* 18F174 8003F734 AFBF0028 */  sw         $ra, 0x28($sp)
/* 18F178 8003F738 AFB30024 */  sw         $s3, 0x24($sp)
/* 18F17C 8003F73C 10A00016 */  beqz       $a1, .L8003F798
/* 18F180 8003F740 AFB00018 */   sw        $s0, 0x18($sp)
/* 18F184 8003F744 00A09821 */  addu       $s3, $a1, $zero
.L8003F748:
/* 18F188 8003F748 8E240000 */  lw         $a0, ($s1)
/* 18F18C 8003F74C 24050040 */  addiu      $a1, $zero, 0x40
/* 18F190 8003F750 325000FF */  andi       $s0, $s2, 0xff
/* 18F194 8003F754 001030C0 */  sll        $a2, $s0, 3
/* 18F198 8003F758 24C60280 */  addiu      $a2, $a2, 0x280
/* 18F19C 8003F75C 0C028D89 */  jal        func_800A3624
/* 18F1A0 8003F760 26520001 */   addiu     $s2, $s2, 1
/* 18F1A4 8003F764 001080C0 */  sll        $s0, $s0, 3
/* 18F1A8 8003F768 321000FF */  andi       $s0, $s0, 0xff
/* 18F1AC 8003F76C AFB00010 */  sw         $s0, 0x10($sp)
/* 18F1B0 8003F770 8E240000 */  lw         $a0, ($s1)
/* 18F1B4 8003F774 240500FF */  addiu      $a1, $zero, 0xff
/* 18F1B8 8003F778 240600FF */  addiu      $a2, $zero, 0xff
/* 18F1BC 8003F77C 2631000C */  addiu      $s1, $s1, 0xc
/* 18F1C0 8003F780 0C028E41 */  jal        func_800A3904
/* 18F1C4 8003F784 240700FF */   addiu     $a3, $zero, 0xff
/* 18F1C8 8003F788 324200FF */  andi       $v0, $s2, 0xff
/* 18F1CC 8003F78C 0053102B */  sltu       $v0, $v0, $s3
/* 18F1D0 8003F790 1440FFED */  bnez       $v0, .L8003F748
/* 18F1D4 8003F794 00000000 */   nop
.L8003F798:
/* 18F1D8 8003F798 8FBF0028 */  lw         $ra, 0x28($sp)
/* 18F1DC 8003F79C 8FB30024 */  lw         $s3, 0x24($sp)
/* 18F1E0 8003F7A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 18F1E4 8003F7A4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18F1E8 8003F7A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 18F1EC 8003F7AC 03E00008 */  jr         $ra
/* 18F1F0 8003F7B0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8003F7B4_18F1F4
/* 18F1F4 8003F7B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18F1F8 8003F7B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 18F1FC 8003F7BC 00808021 */  addu       $s0, $a0, $zero
/* 18F200 8003F7C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 18F204 8003F7C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 18F208 8003F7C8 8E040068 */  lw         $a0, 0x68($s0)
/* 18F20C 8003F7CC 3C118005 */  lui        $s1, %hi(D_80051DAC)
/* 18F210 8003F7D0 26311DAC */  addiu      $s1, $s1, %lo(D_80051DAC)
/* 18F214 8003F7D4 00053400 */  sll        $a2, $a1, 0x10
/* 18F218 8003F7D8 02202821 */  addu       $a1, $s1, $zero
/* 18F21C 8003F7DC 00063403 */  sra        $a2, $a2, 0x10
/* 18F220 8003F7E0 0C009A55 */  jal        func_80026954_176394
/* 18F224 8003F7E4 24C60850 */   addiu     $a2, $a2, 0x850
/* 18F228 8003F7E8 8E030068 */  lw         $v1, 0x68($s0)
/* 18F22C 8003F7EC 2402000A */  addiu      $v0, $zero, 0xa
/* 18F230 8003F7F0 A0620067 */  sb         $v0, 0x67($v1)
/* 18F234 8003F7F4 8E040068 */  lw         $a0, 0x68($s0)
/* 18F238 8003F7F8 0C0285D4 */  jal        func_800A1750
/* 18F23C 8003F7FC 02202821 */   addu      $a1, $s1, $zero
/* 18F240 8003F800 94430000 */  lhu        $v1, ($v0)
/* 18F244 8003F804 3063FFFE */  andi       $v1, $v1, 0xfffe
/* 18F248 8003F808 A4430000 */  sh         $v1, ($v0)
/* 18F24C 8003F80C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18F250 8003F810 8FB10014 */  lw         $s1, 0x14($sp)
/* 18F254 8003F814 8FB00010 */  lw         $s0, 0x10($sp)
/* 18F258 8003F818 03E00008 */  jr         $ra
/* 18F25C 8003F81C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F820_18F260
/* 18F260 8003F820 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18F264 8003F824 AFB00010 */  sw         $s0, 0x10($sp)
/* 18F268 8003F828 00808021 */  addu       $s0, $a0, $zero
/* 18F26C 8003F82C AFBF0018 */  sw         $ra, 0x18($sp)
/* 18F270 8003F830 AFB10014 */  sw         $s1, 0x14($sp)
/* 18F274 8003F834 8E040068 */  lw         $a0, 0x68($s0)
/* 18F278 8003F838 3C118005 */  lui        $s1, %hi(D_80051DA0)
/* 18F27C 8003F83C 26311DA0 */  addiu      $s1, $s1, %lo(D_80051DA0)
/* 18F280 8003F840 00053400 */  sll        $a2, $a1, 0x10
/* 18F284 8003F844 02202821 */  addu       $a1, $s1, $zero
/* 18F288 8003F848 00063403 */  sra        $a2, $a2, 0x10
/* 18F28C 8003F84C 0C009A55 */  jal        func_80026954_176394
/* 18F290 8003F850 24C60854 */   addiu     $a2, $a2, 0x854
/* 18F294 8003F854 8E030068 */  lw         $v1, 0x68($s0)
/* 18F298 8003F858 2402000A */  addiu      $v0, $zero, 0xa
/* 18F29C 8003F85C A0620067 */  sb         $v0, 0x67($v1)
/* 18F2A0 8003F860 8E040068 */  lw         $a0, 0x68($s0)
/* 18F2A4 8003F864 0C0285D4 */  jal        func_800A1750
/* 18F2A8 8003F868 02202821 */   addu      $a1, $s1, $zero
/* 18F2AC 8003F86C 94430000 */  lhu        $v1, ($v0)
/* 18F2B0 8003F870 3063FFFE */  andi       $v1, $v1, 0xfffe
/* 18F2B4 8003F874 A4430000 */  sh         $v1, ($v0)
/* 18F2B8 8003F878 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18F2BC 8003F87C 8FB10014 */  lw         $s1, 0x14($sp)
/* 18F2C0 8003F880 8FB00010 */  lw         $s0, 0x10($sp)
/* 18F2C4 8003F884 03E00008 */  jr         $ra
/* 18F2C8 8003F888 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F88C_18F2CC
/* 18F2CC 8003F88C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18F2D0 8003F890 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18F2D4 8003F894 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18F2D8 8003F898 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18F2DC 8003F89C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 18F2E0 8003F8A0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 18F2E4 8003F8A4 AFB40028 */  sw         $s4, 0x28($sp)
/* 18F2E8 8003F8A8 AFB30024 */  sw         $s3, 0x24($sp)
/* 18F2EC 8003F8AC AFB20020 */  sw         $s2, 0x20($sp)
/* 18F2F0 8003F8B0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18F2F4 8003F8B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 18F2F8 8003F8B8 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 18F2FC 8003F8BC F7B40030 */  sdc1       $f20, 0x30($sp)
/* 18F300 8003F8C0 8C54002C */  lw         $s4, 0x2c($v0)
/* 18F304 8003F8C4 8C530028 */  lw         $s3, 0x28($v0)
/* 18F308 8003F8C8 146000AE */  bnez       $v1, .L8003FB84
/* 18F30C 8003F8CC 24020013 */   addiu     $v0, $zero, 0x13
/* 18F310 8003F8D0 3C038005 */  lui        $v1, %hi(D_80052034)
/* 18F314 8003F8D4 8C632034 */  lw         $v1, %lo(D_80052034)($v1)
/* 18F318 8003F8D8 3C01431A */  lui        $at, 0x431a
/* 18F31C 8003F8DC 44810000 */  mtc1       $at, $f0
/* 18F320 8003F8E0 3C01C296 */  lui        $at, 0xc296
/* 18F324 8003F8E4 44811000 */  mtc1       $at, $f2
/* 18F328 8003F8E8 A0620000 */  sb         $v0, ($v1)
/* 18F32C 8003F8EC 3C028005 */  lui        $v0, %hi(D_80052034)
/* 18F330 8003F8F0 8C422034 */  lw         $v0, %lo(D_80052034)($v0)
/* 18F334 8003F8F4 A0400001 */  sb         $zero, 1($v0)
/* 18F338 8003F8F8 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F33C 8003F8FC 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F340 8003F900 E4400000 */  swc1       $f0, ($v0)
/* 18F344 8003F904 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F348 8003F908 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F34C 8003F90C 3C01C352 */  lui        $at, 0xc352
/* 18F350 8003F910 44810000 */  mtc1       $at, $f0
/* 18F354 8003F914 00000000 */  nop
/* 18F358 8003F918 E4400004 */  swc1       $f0, 4($v0)
/* 18F35C 8003F91C E4420008 */  swc1       $f2, 8($v0)
/* 18F360 8003F920 8E840000 */  lw         $a0, ($s4)
/* 18F364 8003F924 8C82000C */  lw         $v0, 0xc($a0)
/* 18F368 8003F928 94450000 */  lhu        $a1, ($v0)
/* 18F36C 8003F92C 00003021 */  addu       $a2, $zero, $zero
/* 18F370 8003F930 0C02912A */  jal        func_800A44A8
/* 18F374 8003F934 00052842 */   srl       $a1, $a1, 1
/* 18F378 8003F938 8E84000C */  lw         $a0, 0xc($s4)
/* 18F37C 8003F93C 8C82000C */  lw         $v0, 0xc($a0)
/* 18F380 8003F940 94450000 */  lhu        $a1, ($v0)
/* 18F384 8003F944 00003021 */  addu       $a2, $zero, $zero
/* 18F388 8003F948 0C02912A */  jal        func_800A44A8
/* 18F38C 8003F94C 00052842 */   srl       $a1, $a1, 1
/* 18F390 8003F950 8E820018 */  lw         $v0, 0x18($s4)
/* 18F394 8003F954 8C420004 */  lw         $v0, 4($v0)
/* 18F398 8003F958 3C108005 */  lui        $s0, %hi(D_8004FF90)
/* 18F39C 8003F95C 2610FF90 */  addiu      $s0, $s0, %lo(D_8004FF90)
/* 18F3A0 8003F960 AC500004 */  sw         $s0, 4($v0)
/* 18F3A4 8003F964 8E840018 */  lw         $a0, 0x18($s4)
/* 18F3A8 8003F968 8C82000C */  lw         $v0, 0xc($a0)
/* 18F3AC 8003F96C 84460002 */  lh         $a2, 2($v0)
/* 18F3B0 8003F970 0C02912A */  jal        func_800A44A8
/* 18F3B4 8003F974 00002821 */   addu      $a1, $zero, $zero
/* 18F3B8 8003F978 8E820024 */  lw         $v0, 0x24($s4)
/* 18F3BC 8003F97C 8C420004 */  lw         $v0, 4($v0)
/* 18F3C0 8003F980 AC500004 */  sw         $s0, 4($v0)
/* 18F3C4 8003F984 8E840024 */  lw         $a0, 0x24($s4)
/* 18F3C8 8003F988 8C82000C */  lw         $v0, 0xc($a0)
/* 18F3CC 8003F98C 84450000 */  lh         $a1, ($v0)
/* 18F3D0 8003F990 84460002 */  lh         $a2, 2($v0)
/* 18F3D4 8003F994 26920030 */  addiu      $s2, $s4, 0x30
/* 18F3D8 8003F998 0C02912A */  jal        func_800A44A8
/* 18F3DC 8003F99C 00008821 */   addu      $s1, $zero, $zero
.L8003F9A0:
/* 18F3E0 8003F9A0 8E440000 */  lw         $a0, ($s2)
/* 18F3E4 8003F9A4 24050040 */  addiu      $a1, $zero, 0x40
/* 18F3E8 8003F9A8 323000FF */  andi       $s0, $s1, 0xff
/* 18F3EC 8003F9AC 001030C0 */  sll        $a2, $s0, 3
/* 18F3F0 8003F9B0 24C60280 */  addiu      $a2, $a2, 0x280
/* 18F3F4 8003F9B4 0C028D89 */  jal        func_800A3624
/* 18F3F8 8003F9B8 26310001 */   addiu     $s1, $s1, 1
/* 18F3FC 8003F9BC 001080C0 */  sll        $s0, $s0, 3
/* 18F400 8003F9C0 321000FF */  andi       $s0, $s0, 0xff
/* 18F404 8003F9C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 18F408 8003F9C8 8E440000 */  lw         $a0, ($s2)
/* 18F40C 8003F9CC 240500FF */  addiu      $a1, $zero, 0xff
/* 18F410 8003F9D0 240600FF */  addiu      $a2, $zero, 0xff
/* 18F414 8003F9D4 240700FF */  addiu      $a3, $zero, 0xff
/* 18F418 8003F9D8 0C028E41 */  jal        func_800A3904
/* 18F41C 8003F9DC 2652000C */   addiu     $s2, $s2, 0xc
/* 18F420 8003F9E0 322200FF */  andi       $v0, $s1, 0xff
/* 18F424 8003F9E4 2C420020 */  sltiu      $v0, $v0, 0x20
/* 18F428 8003F9E8 1440FFED */  bnez       $v0, .L8003F9A0
/* 18F42C 8003F9EC 240200FF */   addiu     $v0, $zero, 0xff
/* 18F430 8003F9F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 18F434 8003F9F4 8E640068 */  lw         $a0, 0x68($s3)
/* 18F438 8003F9F8 240500FF */  addiu      $a1, $zero, 0xff
/* 18F43C 8003F9FC 240600FF */  addiu      $a2, $zero, 0xff
/* 18F440 8003FA00 0C027F5E */  jal        func_8009FD78
/* 18F444 8003FA04 240700FF */   addiu     $a3, $zero, 0xff
/* 18F448 8003FA08 8E630068 */  lw         $v1, 0x68($s3)
/* 18F44C 8003FA0C 90620066 */  lbu        $v0, 0x66($v1)
/* 18F450 8003FA10 304200DF */  andi       $v0, $v0, 0xdf
/* 18F454 8003FA14 A0620066 */  sb         $v0, 0x66($v1)
/* 18F458 8003FA18 8E620068 */  lw         $v0, 0x68($s3)
/* 18F45C 8003FA1C A0400067 */  sb         $zero, 0x67($v0)
/* 18F460 8003FA20 8E640068 */  lw         $a0, 0x68($s3)
/* 18F464 8003FA24 0C028703 */  jal        func_800A1C0C
/* 18F468 8003FA28 24050002 */   addiu     $a1, $zero, 2
/* 18F46C 8003FA2C 8E640068 */  lw         $a0, 0x68($s3)
/* 18F470 8003FA30 3C058005 */  lui        $a1, %hi(D_80051DA0)
/* 18F474 8003FA34 0C0284DC */  jal        func_800A1370
/* 18F478 8003FA38 24A51DA0 */   addiu     $a1, $a1, %lo(D_80051DA0)
/* 18F47C 8003FA3C 8E640068 */  lw         $a0, 0x68($s3)
/* 18F480 8003FA40 00021400 */  sll        $v0, $v0, 0x10
/* 18F484 8003FA44 0C0285CC */  jal        func_800A1730
/* 18F488 8003FA48 00022C03 */   sra       $a1, $v0, 0x10
/* 18F48C 8003FA4C 00002021 */  addu       $a0, $zero, $zero
/* 18F490 8003FA50 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18F494 8003FA54 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F498 8003FA58 AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L8003FA5C:
/* 18F49C 8003FA5C 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18F4A0 8003FA60 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18F4A4 8003FA64 A4450000 */  sh         $a1, ($v0)
/* 18F4A8 8003FA68 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18F4AC 8003FA6C 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18F4B0 8003FA70 24820001 */  addiu      $v0, $a0, 1
/* 18F4B4 8003FA74 00402021 */  addu       $a0, $v0, $zero
/* 18F4B8 8003FA78 00021600 */  sll        $v0, $v0, 0x18
/* 18F4BC 8003FA7C 00021603 */  sra        $v0, $v0, 0x18
/* 18F4C0 8003FA80 28420010 */  slti       $v0, $v0, 0x10
/* 18F4C4 8003FA84 24630002 */  addiu      $v1, $v1, 2
/* 18F4C8 8003FA88 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F4CC 8003FA8C 1440FFF3 */  bnez       $v0, .L8003FA5C
/* 18F4D0 8003FA90 AC231FF0 */   sw        $v1, %lo(D_80051FF0)($at)
/* 18F4D4 8003FA94 8E640068 */  lw         $a0, 0x68($s3)
/* 18F4D8 8003FA98 3C058005 */  lui        $a1, %hi(D_80051DA8)
/* 18F4DC 8003FA9C 0C0284DC */  jal        func_800A1370
/* 18F4E0 8003FAA0 24A51DA8 */   addiu     $a1, $a1, %lo(D_80051DA8)
/* 18F4E4 8003FAA4 8E640068 */  lw         $a0, 0x68($s3)
/* 18F4E8 8003FAA8 00021400 */  sll        $v0, $v0, 0x10
/* 18F4EC 8003FAAC 0C0285CC */  jal        func_800A1730
/* 18F4F0 8003FAB0 00022C03 */   sra       $a1, $v0, 0x10
/* 18F4F4 8003FAB4 00002021 */  addu       $a0, $zero, $zero
/* 18F4F8 8003FAB8 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18F4FC 8003FABC 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F500 8003FAC0 AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L8003FAC4:
/* 18F504 8003FAC4 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18F508 8003FAC8 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18F50C 8003FACC A4450000 */  sh         $a1, ($v0)
/* 18F510 8003FAD0 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18F514 8003FAD4 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18F518 8003FAD8 24820001 */  addiu      $v0, $a0, 1
/* 18F51C 8003FADC 00402021 */  addu       $a0, $v0, $zero
/* 18F520 8003FAE0 00021600 */  sll        $v0, $v0, 0x18
/* 18F524 8003FAE4 00021603 */  sra        $v0, $v0, 0x18
/* 18F528 8003FAE8 28420010 */  slti       $v0, $v0, 0x10
/* 18F52C 8003FAEC 24630002 */  addiu      $v1, $v1, 2
/* 18F530 8003FAF0 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18F534 8003FAF4 AC231FF0 */  sw         $v1, %lo(D_80051FF0)($at)
/* 18F538 8003FAF8 1440FFF2 */  bnez       $v0, .L8003FAC4
/* 18F53C 8003FAFC 241000FF */   addiu     $s0, $zero, 0xff
/* 18F540 8003FB00 8E6200E0 */  lw         $v0, 0xe0($s3)
/* 18F544 8003FB04 24050040 */  addiu      $a1, $zero, 0x40
/* 18F548 8003FB08 A0400067 */  sb         $zero, 0x67($v0)
/* 18F54C 8003FB0C AFB00010 */  sw         $s0, 0x10($sp)
/* 18F550 8003FB10 8E6400E0 */  lw         $a0, 0xe0($s3)
/* 18F554 8003FB14 24060040 */  addiu      $a2, $zero, 0x40
/* 18F558 8003FB18 0C027F5E */  jal        func_8009FD78
/* 18F55C 8003FB1C 24070040 */   addiu     $a3, $zero, 0x40
/* 18F560 8003FB20 8E6300E0 */  lw         $v1, 0xe0($s3)
/* 18F564 8003FB24 90620066 */  lbu        $v0, 0x66($v1)
/* 18F568 8003FB28 304200DF */  andi       $v0, $v0, 0xdf
/* 18F56C 8003FB2C A0620066 */  sb         $v0, 0x66($v1)
/* 18F570 8003FB30 8E620158 */  lw         $v0, 0x158($s3)
/* 18F574 8003FB34 24050040 */  addiu      $a1, $zero, 0x40
/* 18F578 8003FB38 A0400067 */  sb         $zero, 0x67($v0)
/* 18F57C 8003FB3C AFB00010 */  sw         $s0, 0x10($sp)
/* 18F580 8003FB40 8E640158 */  lw         $a0, 0x158($s3)
/* 18F584 8003FB44 24060040 */  addiu      $a2, $zero, 0x40
/* 18F588 8003FB48 0C027F5E */  jal        func_8009FD78
/* 18F58C 8003FB4C 24070040 */   addiu     $a3, $zero, 0x40
/* 18F590 8003FB50 8E630158 */  lw         $v1, 0x158($s3)
/* 18F594 8003FB54 90620066 */  lbu        $v0, 0x66($v1)
/* 18F598 8003FB58 304200DF */  andi       $v0, $v0, 0xdf
/* 18F59C 8003FB5C A0620066 */  sb         $v0, 0x66($v1)
/* 18F5A0 8003FB60 8E6301D0 */  lw         $v1, 0x1d0($s3)
/* 18F5A4 8003FB64 240500FF */  addiu      $a1, $zero, 0xff
/* 18F5A8 8003FB68 2402000A */  addiu      $v0, $zero, 0xa
/* 18F5AC 8003FB6C A0620067 */  sb         $v0, 0x67($v1)
/* 18F5B0 8003FB70 AFB00010 */  sw         $s0, 0x10($sp)
/* 18F5B4 8003FB74 8E6401D0 */  lw         $a0, 0x1d0($s3)
/* 18F5B8 8003FB78 240600FF */  addiu      $a2, $zero, 0xff
/* 18F5BC 8003FB7C 0C027F5E */  jal        func_8009FD78
/* 18F5C0 8003FB80 240700FF */   addiu     $a3, $zero, 0xff
.L8003FB84:
/* 18F5C4 8003FB84 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18F5C8 8003FB88 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18F5CC 8003FB8C 2402000A */  addiu      $v0, $zero, 0xa
/* 18F5D0 8003FB90 14620003 */  bne        $v1, $v0, .L8003FBA0
/* 18F5D4 8003FB94 00000000 */   nop
/* 18F5D8 8003FB98 0C026DD5 */  jal        func_8009B754
/* 18F5DC 8003FB9C 2404006C */   addiu     $a0, $zero, 0x6c
.L8003FBA0:
/* 18F5E0 8003FBA0 3C028005 */  lui        $v0, %hi(D_80052034)
/* 18F5E4 8003FBA4 8C422034 */  lw         $v0, %lo(D_80052034)($v0)
/* 18F5E8 8003FBA8 90430000 */  lbu        $v1, ($v0)
/* 18F5EC 8003FBAC 2C62000B */  sltiu      $v0, $v1, 0xb
/* 18F5F0 8003FBB0 14400019 */  bnez       $v0, .L8003FC18
/* 18F5F4 8003FBB4 00000000 */   nop
/* 18F5F8 8003FBB8 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F5FC 8003FBBC 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F600 8003FBC0 3C014120 */  lui        $at, 0x4120
/* 18F604 8003FBC4 44811000 */  mtc1       $at, $f2
/* 18F608 8003FBC8 C4400000 */  lwc1       $f0, ($v0)
/* 18F60C 8003FBCC 46020001 */  sub.s      $f0, $f0, $f2
/* 18F610 8003FBD0 E4400000 */  swc1       $f0, ($v0)
/* 18F614 8003FBD4 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F618 8003FBD8 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F61C 8003FBDC 3C0140A0 */  lui        $at, 0x40a0
/* 18F620 8003FBE0 44812000 */  mtc1       $at, $f4
/* 18F624 8003FBE4 C4420008 */  lwc1       $f2, 8($v0)
/* 18F628 8003FBE8 C4400004 */  lwc1       $f0, 4($v0)
/* 18F62C 8003FBEC 46041080 */  add.s      $f2, $f2, $f4
/* 18F630 8003FBF0 3C0140E0 */  lui        $at, 0x40e0
/* 18F634 8003FBF4 44812000 */  mtc1       $at, $f4
/* 18F638 8003FBF8 3C038005 */  lui        $v1, %hi(D_80052034)
/* 18F63C 8003FBFC 8C632034 */  lw         $v1, %lo(D_80052034)($v1)
/* 18F640 8003FC00 46040000 */  add.s      $f0, $f0, $f4
/* 18F644 8003FC04 E4420008 */  swc1       $f2, 8($v0)
/* 18F648 8003FC08 E4400004 */  swc1       $f0, 4($v0)
/* 18F64C 8003FC0C 90620001 */  lbu        $v0, 1($v1)
/* 18F650 8003FC10 0800FF39 */  j          .L8003FCE4
/* 18F654 8003FC14 2442000A */   addiu     $v0, $v0, 0xa
.L8003FC18:
/* 18F658 8003FC18 10600015 */  beqz       $v1, .L8003FC70
/* 18F65C 8003FC1C 00000000 */   nop
/* 18F660 8003FC20 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F664 8003FC24 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F668 8003FC28 C4400000 */  lwc1       $f0, ($v0)
/* 18F66C 8003FC2C 44831000 */  mtc1       $v1, $f2
/* 18F670 8003FC30 00000000 */  nop
/* 18F674 8003FC34 468010A0 */  cvt.s.w    $f2, $f2
/* 18F678 8003FC38 46020001 */  sub.s      $f0, $f0, $f2
/* 18F67C 8003FC3C E4400000 */  swc1       $f0, ($v0)
/* 18F680 8003FC40 3C028005 */  lui        $v0, %hi(D_80052034)
/* 18F684 8003FC44 8C422034 */  lw         $v0, %lo(D_80052034)($v0)
/* 18F688 8003FC48 90420000 */  lbu        $v0, ($v0)
/* 18F68C 8003FC4C 3C014000 */  lui        $at, 0x4000
/* 18F690 8003FC50 44810000 */  mtc1       $at, $f0
/* 18F694 8003FC54 44821000 */  mtc1       $v0, $f2
/* 18F698 8003FC58 00000000 */  nop
/* 18F69C 8003FC5C 468010A0 */  cvt.s.w    $f2, $f2
/* 18F6A0 8003FC60 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F6A4 8003FC64 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F6A8 8003FC68 0800FF29 */  j          .L8003FCA4
/* 18F6AC 8003FC6C 46001083 */   div.s     $f2, $f2, $f0
.L8003FC70:
/* 18F6B0 8003FC70 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F6B4 8003FC74 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F6B8 8003FC78 C4400000 */  lwc1       $f0, ($v0)
/* 18F6BC 8003FC7C 3C018005 */  lui        $at, %hi(D_80051DB8)
/* 18F6C0 8003FC80 D4221DB8 */  ldc1       $f2, %lo(D_80051DB8)($at)
/* 18F6C4 8003FC84 46000021 */  cvt.d.s    $f0, $f0
/* 18F6C8 8003FC88 46220001 */  sub.d      $f0, $f0, $f2
/* 18F6CC 8003FC8C 46200020 */  cvt.s.d    $f0, $f0
/* 18F6D0 8003FC90 E4400000 */  swc1       $f0, ($v0)
/* 18F6D4 8003FC94 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F6D8 8003FC98 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F6DC 8003FC9C 3C013E80 */  lui        $at, 0x3e80
/* 18F6E0 8003FCA0 44811000 */  mtc1       $at, $f2
.L8003FCA4:
/* 18F6E4 8003FCA4 C4400008 */  lwc1       $f0, 8($v0)
/* 18F6E8 8003FCA8 46020000 */  add.s      $f0, $f0, $f2
/* 18F6EC 8003FCAC E4400008 */  swc1       $f0, 8($v0)
/* 18F6F0 8003FCB0 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F6F4 8003FCB4 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F6F8 8003FCB8 3C014120 */  lui        $at, 0x4120
/* 18F6FC 8003FCBC 44811000 */  mtc1       $at, $f2
/* 18F700 8003FCC0 C4400004 */  lwc1       $f0, 4($v0)
/* 18F704 8003FCC4 46020000 */  add.s      $f0, $f0, $f2
/* 18F708 8003FCC8 3C038005 */  lui        $v1, %hi(D_80052034)
/* 18F70C 8003FCCC 8C632034 */  lw         $v1, %lo(D_80052034)($v1)
/* 18F710 8003FCD0 E4400004 */  swc1       $f0, 4($v0)
/* 18F714 8003FCD4 90620001 */  lbu        $v0, 1($v1)
/* 18F718 8003FCD8 90640000 */  lbu        $a0, ($v1)
/* 18F71C 8003FCDC 24420016 */  addiu      $v0, $v0, 0x16
/* 18F720 8003FCE0 00441023 */  subu       $v0, $v0, $a0
.L8003FCE4:
/* 18F724 8003FCE4 A0620001 */  sb         $v0, 1($v1)
/* 18F728 8003FCE8 3C038005 */  lui        $v1, %hi(D_80052034)
/* 18F72C 8003FCEC 8C632034 */  lw         $v1, %lo(D_80052034)($v1)
/* 18F730 8003FCF0 90620000 */  lbu        $v0, ($v1)
/* 18F734 8003FCF4 10400002 */  beqz       $v0, .L8003FD00
/* 18F738 8003FCF8 2442FFFF */   addiu     $v0, $v0, -1
/* 18F73C 8003FCFC A0620000 */  sb         $v0, ($v1)
.L8003FD00:
/* 18F740 8003FD00 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F744 8003FD04 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F748 8003FD08 3C014397 */  lui        $at, 0x4397
/* 18F74C 8003FD0C 34218000 */  ori        $at, $at, 0x8000
/* 18F750 8003FD10 4481A000 */  mtc1       $at, $f20
/* 18F754 8003FD14 C4400008 */  lwc1       $f0, 8($v0)
/* 18F758 8003FD18 3C018015 */  lui        $at, %hi(D_8014A064)
/* 18F75C 8003FD1C E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 18F760 8003FD20 C4400000 */  lwc1       $f0, ($v0)
/* 18F764 8003FD24 4600A001 */  sub.s      $f0, $f20, $f0
/* 18F768 8003FD28 3C014080 */  lui        $at, 0x4080
/* 18F76C 8003FD2C 4481B000 */  mtc1       $at, $f22
/* 18F770 8003FD30 00000000 */  nop
/* 18F774 8003FD34 46160002 */  mul.s      $f0, $f0, $f22
/* 18F778 8003FD38 24060400 */  addiu      $a2, $zero, 0x400
/* 18F77C 8003FD3C 8E840018 */  lw         $a0, 0x18($s4)
/* 18F780 8003FD40 4600008D */  trunc.w.s  $f2, $f0
/* 18F784 8003FD44 44051000 */  mfc1       $a1, $f2
/* 18F788 8003FD48 00000000 */  nop
/* 18F78C 8003FD4C 00052C00 */  sll        $a1, $a1, 0x10
/* 18F790 8003FD50 0C028D89 */  jal        func_800A3624
/* 18F794 8003FD54 00052C03 */   sra       $a1, $a1, 0x10
/* 18F798 8003FD58 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F79C 8003FD5C 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F7A0 8003FD60 C4400000 */  lwc1       $f0, ($v0)
/* 18F7A4 8003FD64 4600A501 */  sub.s      $f20, $f20, $f0
/* 18F7A8 8003FD68 4616A502 */  mul.s      $f20, $f20, $f22
/* 18F7AC 8003FD6C 8E840024 */  lw         $a0, 0x24($s4)
/* 18F7B0 8003FD70 24060400 */  addiu      $a2, $zero, 0x400
/* 18F7B4 8003FD74 4600A00D */  trunc.w.s  $f0, $f20
/* 18F7B8 8003FD78 44050000 */  mfc1       $a1, $f0
/* 18F7BC 8003FD7C 00000000 */  nop
/* 18F7C0 8003FD80 00052C00 */  sll        $a1, $a1, 0x10
/* 18F7C4 8003FD84 0C028D89 */  jal        func_800A3624
/* 18F7C8 8003FD88 00052C03 */   sra       $a1, $a1, 0x10
/* 18F7CC 8003FD8C 3C038005 */  lui        $v1, %hi(D_80052000)
/* 18F7D0 8003FD90 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 18F7D4 8003FD94 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18F7D8 8003FD98 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18F7DC 8003FD9C 9463000A */  lhu        $v1, 0xa($v1)
/* 18F7E0 8003FDA0 0043102B */  sltu       $v0, $v0, $v1
/* 18F7E4 8003FDA4 10400014 */  beqz       $v0, .L8003FDF8
/* 18F7E8 8003FDA8 00000000 */   nop
/* 18F7EC 8003FDAC 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18F7F0 8003FDB0 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18F7F4 8003FDB4 C4400004 */  lwc1       $f0, 4($v0)
/* 18F7F8 8003FDB8 3C028005 */  lui        $v0, %hi(D_80052034)
/* 18F7FC 8003FDBC 8C422034 */  lw         $v0, %lo(D_80052034)($v0)
/* 18F800 8003FDC0 E6600180 */  swc1       $f0, 0x180($s3)
/* 18F804 8003FDC4 90420001 */  lbu        $v0, 1($v0)
/* 18F808 8003FDC8 3C0141C8 */  lui        $at, 0x41c8
/* 18F80C 8003FDCC 44811000 */  mtc1       $at, $f2
/* 18F810 8003FDD0 44820000 */  mtc1       $v0, $f0
/* 18F814 8003FDD4 00000000 */  nop
/* 18F818 8003FDD8 46800020 */  cvt.s.w    $f0, $f0
/* 18F81C 8003FDDC 46020003 */  div.s      $f0, $f0, $f2
/* 18F820 8003FDE0 3C014180 */  lui        $at, 0x4180
/* 18F824 8003FDE4 44811000 */  mtc1       $at, $f2
/* 18F828 8003FDE8 00000000 */  nop
/* 18F82C 8003FDEC 46001081 */  sub.s      $f2, $f2, $f0
/* 18F830 8003FDF0 AE600188 */  sw         $zero, 0x188($s3)
/* 18F834 8003FDF4 E6620184 */  swc1       $f2, 0x184($s3)
.L8003FDF8:
/* 18F838 8003FDF8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 18F83C 8003FDFC 8FB40028 */  lw         $s4, 0x28($sp)
/* 18F840 8003FE00 8FB30024 */  lw         $s3, 0x24($sp)
/* 18F844 8003FE04 8FB20020 */  lw         $s2, 0x20($sp)
/* 18F848 8003FE08 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18F84C 8003FE0C 8FB00018 */  lw         $s0, 0x18($sp)
/* 18F850 8003FE10 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 18F854 8003FE14 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 18F858 8003FE18 03E00008 */  jr         $ra
/* 18F85C 8003FE1C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8003FE20_18F860
/* 18F860 8003FE20 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18F864 8003FE24 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18F868 8003FE28 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18F86C 8003FE2C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18F870 8003FE30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 18F874 8003FE34 AFBF002C */  sw         $ra, 0x2c($sp)
/* 18F878 8003FE38 AFB40028 */  sw         $s4, 0x28($sp)
/* 18F87C 8003FE3C AFB30024 */  sw         $s3, 0x24($sp)
/* 18F880 8003FE40 AFB20020 */  sw         $s2, 0x20($sp)
/* 18F884 8003FE44 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18F888 8003FE48 AFB00018 */  sw         $s0, 0x18($sp)
/* 18F88C 8003FE4C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 18F890 8003FE50 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 18F894 8003FE54 8C54002C */  lw         $s4, 0x2c($v0)
/* 18F898 8003FE58 146000A6 */  bnez       $v1, .L800400F4
/* 18F89C 8003FE5C 8C530028 */   lw        $s3, 0x28($v0)
/* 18F8A0 8003FE60 0C02A5D2 */  jal        func_800A9748
/* 18F8A4 8003FE64 2404001E */   addiu     $a0, $zero, 0x1e
/* 18F8A8 8003FE68 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18F8AC 8003FE6C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18F8B0 8003FE70 144000A0 */  bnez       $v0, .L800400F4
/* 18F8B4 8003FE74 00003021 */   addu      $a2, $zero, $zero
/* 18F8B8 8003FE78 8E820000 */  lw         $v0, ($s4)
/* 18F8BC 8003FE7C 8C430004 */  lw         $v1, 4($v0)
/* 18F8C0 8003FE80 3C028005 */  lui        $v0, %hi(D_8004FFB0)
/* 18F8C4 8003FE84 2442FFB0 */  addiu      $v0, $v0, %lo(D_8004FFB0)
/* 18F8C8 8003FE88 AC620004 */  sw         $v0, 4($v1)
/* 18F8CC 8003FE8C 8E840000 */  lw         $a0, ($s4)
/* 18F8D0 8003FE90 8C82000C */  lw         $v0, 0xc($a0)
/* 18F8D4 8003FE94 94450000 */  lhu        $a1, ($v0)
/* 18F8D8 8003FE98 0C02912A */  jal        func_800A44A8
/* 18F8DC 8003FE9C 00052842 */   srl       $a1, $a1, 1
/* 18F8E0 8003FEA0 8E82000C */  lw         $v0, 0xc($s4)
/* 18F8E4 8003FEA4 8C430004 */  lw         $v1, 4($v0)
/* 18F8E8 8003FEA8 3C028005 */  lui        $v0, %hi(D_8004FFD0)
/* 18F8EC 8003FEAC 2442FFD0 */  addiu      $v0, $v0, %lo(D_8004FFD0)
/* 18F8F0 8003FEB0 AC620004 */  sw         $v0, 4($v1)
/* 18F8F4 8003FEB4 8E84000C */  lw         $a0, 0xc($s4)
/* 18F8F8 8003FEB8 8C82000C */  lw         $v0, 0xc($a0)
/* 18F8FC 8003FEBC 94450000 */  lhu        $a1, ($v0)
/* 18F900 8003FEC0 00003021 */  addu       $a2, $zero, $zero
/* 18F904 8003FEC4 0C02912A */  jal        func_800A44A8
/* 18F908 8003FEC8 00052842 */   srl       $a1, $a1, 1
/* 18F90C 8003FECC 8E820018 */  lw         $v0, 0x18($s4)
/* 18F910 8003FED0 8C420004 */  lw         $v0, 4($v0)
/* 18F914 8003FED4 3C108005 */  lui        $s0, %hi(D_8004FFF0)
/* 18F918 8003FED8 2610FFF0 */  addiu      $s0, $s0, %lo(D_8004FFF0)
/* 18F91C 8003FEDC AC500004 */  sw         $s0, 4($v0)
/* 18F920 8003FEE0 8E840018 */  lw         $a0, 0x18($s4)
/* 18F924 8003FEE4 8C82000C */  lw         $v0, 0xc($a0)
/* 18F928 8003FEE8 84460002 */  lh         $a2, 2($v0)
/* 18F92C 8003FEEC 0C02912A */  jal        func_800A44A8
/* 18F930 8003FEF0 00002821 */   addu      $a1, $zero, $zero
/* 18F934 8003FEF4 8E820024 */  lw         $v0, 0x24($s4)
/* 18F938 8003FEF8 8C420004 */  lw         $v0, 4($v0)
/* 18F93C 8003FEFC AC500004 */  sw         $s0, 4($v0)
/* 18F940 8003FF00 8E840024 */  lw         $a0, 0x24($s4)
/* 18F944 8003FF04 8C82000C */  lw         $v0, 0xc($a0)
/* 18F948 8003FF08 84450000 */  lh         $a1, ($v0)
/* 18F94C 8003FF0C 84460002 */  lh         $a2, 2($v0)
/* 18F950 8003FF10 26920030 */  addiu      $s2, $s4, 0x30
/* 18F954 8003FF14 0C02912A */  jal        func_800A44A8
/* 18F958 8003FF18 00008821 */   addu      $s1, $zero, $zero
.L8003FF1C:
/* 18F95C 8003FF1C 8E440000 */  lw         $a0, ($s2)
/* 18F960 8003FF20 24050040 */  addiu      $a1, $zero, 0x40
/* 18F964 8003FF24 323000FF */  andi       $s0, $s1, 0xff
/* 18F968 8003FF28 001030C0 */  sll        $a2, $s0, 3
/* 18F96C 8003FF2C 24C60280 */  addiu      $a2, $a2, 0x280
/* 18F970 8003FF30 0C028D89 */  jal        func_800A3624
/* 18F974 8003FF34 26310001 */   addiu     $s1, $s1, 1
/* 18F978 8003FF38 001080C0 */  sll        $s0, $s0, 3
/* 18F97C 8003FF3C 321000FF */  andi       $s0, $s0, 0xff
/* 18F980 8003FF40 AFB00010 */  sw         $s0, 0x10($sp)
/* 18F984 8003FF44 8E440000 */  lw         $a0, ($s2)
/* 18F988 8003FF48 240500FF */  addiu      $a1, $zero, 0xff
/* 18F98C 8003FF4C 240600FF */  addiu      $a2, $zero, 0xff
/* 18F990 8003FF50 240700FF */  addiu      $a3, $zero, 0xff
/* 18F994 8003FF54 0C028E41 */  jal        func_800A3904
/* 18F998 8003FF58 2652000C */   addiu     $s2, $s2, 0xc
/* 18F99C 8003FF5C 322200FF */  andi       $v0, $s1, 0xff
/* 18F9A0 8003FF60 2C420020 */  sltiu      $v0, $v0, 0x20
/* 18F9A4 8003FF64 1440FFED */  bnez       $v0, .L8003FF1C
/* 18F9A8 8003FF68 240200FF */   addiu     $v0, $zero, 0xff
/* 18F9AC 8003FF6C AFA20010 */  sw         $v0, 0x10($sp)
/* 18F9B0 8003FF70 8E640068 */  lw         $a0, 0x68($s3)
/* 18F9B4 8003FF74 240500FF */  addiu      $a1, $zero, 0xff
/* 18F9B8 8003FF78 240600FF */  addiu      $a2, $zero, 0xff
/* 18F9BC 8003FF7C 0C027F5E */  jal        func_8009FD78
/* 18F9C0 8003FF80 240700FF */   addiu     $a3, $zero, 0xff
/* 18F9C4 8003FF84 8E630068 */  lw         $v1, 0x68($s3)
/* 18F9C8 8003FF88 90620066 */  lbu        $v0, 0x66($v1)
/* 18F9CC 8003FF8C 304200DF */  andi       $v0, $v0, 0xdf
/* 18F9D0 8003FF90 A0620066 */  sb         $v0, 0x66($v1)
/* 18F9D4 8003FF94 8E620068 */  lw         $v0, 0x68($s3)
/* 18F9D8 8003FF98 A0400067 */  sb         $zero, 0x67($v0)
/* 18F9DC 8003FF9C 8E640068 */  lw         $a0, 0x68($s3)
/* 18F9E0 8003FFA0 0C028703 */  jal        func_800A1C0C
/* 18F9E4 8003FFA4 24050003 */   addiu     $a1, $zero, 3
/* 18F9E8 8003FFA8 8E640068 */  lw         $a0, 0x68($s3)
/* 18F9EC 8003FFAC 3C058005 */  lui        $a1, %hi(D_80051DA0)
/* 18F9F0 8003FFB0 0C0284DC */  jal        func_800A1370
/* 18F9F4 8003FFB4 24A51DA0 */   addiu     $a1, $a1, %lo(D_80051DA0)
/* 18F9F8 8003FFB8 8E640068 */  lw         $a0, 0x68($s3)
/* 18F9FC 8003FFBC 00021400 */  sll        $v0, $v0, 0x10
/* 18FA00 8003FFC0 0C0285CC */  jal        func_800A1730
/* 18FA04 8003FFC4 00022C03 */   sra       $a1, $v0, 0x10
/* 18FA08 8003FFC8 00002021 */  addu       $a0, $zero, $zero
/* 18FA0C 8003FFCC 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18FA10 8003FFD0 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FA14 8003FFD4 AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L8003FFD8:
/* 18FA18 8003FFD8 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18FA1C 8003FFDC 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18FA20 8003FFE0 A4450000 */  sh         $a1, ($v0)
/* 18FA24 8003FFE4 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18FA28 8003FFE8 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18FA2C 8003FFEC 24820001 */  addiu      $v0, $a0, 1
/* 18FA30 8003FFF0 00402021 */  addu       $a0, $v0, $zero
/* 18FA34 8003FFF4 00021600 */  sll        $v0, $v0, 0x18
/* 18FA38 8003FFF8 00021603 */  sra        $v0, $v0, 0x18
/* 18FA3C 8003FFFC 28420010 */  slti       $v0, $v0, 0x10
/* 18FA40 80040000 24630002 */  addiu      $v1, $v1, 2
/* 18FA44 80040004 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FA48 80040008 1440FFF3 */  bnez       $v0, .L8003FFD8
/* 18FA4C 8004000C AC231FF0 */   sw        $v1, %lo(D_80051FF0)($at)
/* 18FA50 80040010 8E640068 */  lw         $a0, 0x68($s3)
/* 18FA54 80040014 3C058005 */  lui        $a1, %hi(D_80051DA8)
/* 18FA58 80040018 0C0284DC */  jal        func_800A1370
/* 18FA5C 8004001C 24A51DA8 */   addiu     $a1, $a1, %lo(D_80051DA8)
/* 18FA60 80040020 8E640068 */  lw         $a0, 0x68($s3)
/* 18FA64 80040024 00021400 */  sll        $v0, $v0, 0x10
/* 18FA68 80040028 0C0285CC */  jal        func_800A1730
/* 18FA6C 8004002C 00022C03 */   sra       $a1, $v0, 0x10
/* 18FA70 80040030 00002021 */  addu       $a0, $zero, $zero
/* 18FA74 80040034 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18FA78 80040038 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FA7C 8004003C AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L80040040:
/* 18FA80 80040040 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18FA84 80040044 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18FA88 80040048 A4450000 */  sh         $a1, ($v0)
/* 18FA8C 8004004C 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18FA90 80040050 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18FA94 80040054 24820001 */  addiu      $v0, $a0, 1
/* 18FA98 80040058 00402021 */  addu       $a0, $v0, $zero
/* 18FA9C 8004005C 00021600 */  sll        $v0, $v0, 0x18
/* 18FAA0 80040060 00021603 */  sra        $v0, $v0, 0x18
/* 18FAA4 80040064 28420010 */  slti       $v0, $v0, 0x10
/* 18FAA8 80040068 24630002 */  addiu      $v1, $v1, 2
/* 18FAAC 8004006C 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FAB0 80040070 AC231FF0 */  sw         $v1, %lo(D_80051FF0)($at)
/* 18FAB4 80040074 1440FFF2 */  bnez       $v0, .L80040040
/* 18FAB8 80040078 241000FF */   addiu     $s0, $zero, 0xff
/* 18FABC 8004007C 8E6200E0 */  lw         $v0, 0xe0($s3)
/* 18FAC0 80040080 24050040 */  addiu      $a1, $zero, 0x40
/* 18FAC4 80040084 A0400067 */  sb         $zero, 0x67($v0)
/* 18FAC8 80040088 AFB00010 */  sw         $s0, 0x10($sp)
/* 18FACC 8004008C 8E6400E0 */  lw         $a0, 0xe0($s3)
/* 18FAD0 80040090 24060040 */  addiu      $a2, $zero, 0x40
/* 18FAD4 80040094 0C027F5E */  jal        func_8009FD78
/* 18FAD8 80040098 24070040 */   addiu     $a3, $zero, 0x40
/* 18FADC 8004009C 8E6300E0 */  lw         $v1, 0xe0($s3)
/* 18FAE0 800400A0 90620066 */  lbu        $v0, 0x66($v1)
/* 18FAE4 800400A4 304200DF */  andi       $v0, $v0, 0xdf
/* 18FAE8 800400A8 A0620066 */  sb         $v0, 0x66($v1)
/* 18FAEC 800400AC 8E620158 */  lw         $v0, 0x158($s3)
/* 18FAF0 800400B0 24050040 */  addiu      $a1, $zero, 0x40
/* 18FAF4 800400B4 A0400067 */  sb         $zero, 0x67($v0)
/* 18FAF8 800400B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 18FAFC 800400BC 8E640158 */  lw         $a0, 0x158($s3)
/* 18FB00 800400C0 24060040 */  addiu      $a2, $zero, 0x40
/* 18FB04 800400C4 0C027F5E */  jal        func_8009FD78
/* 18FB08 800400C8 24070040 */   addiu     $a3, $zero, 0x40
/* 18FB0C 800400CC 8E630158 */  lw         $v1, 0x158($s3)
/* 18FB10 800400D0 90620066 */  lbu        $v0, 0x66($v1)
/* 18FB14 800400D4 304200DF */  andi       $v0, $v0, 0xdf
/* 18FB18 800400D8 A0620066 */  sb         $v0, 0x66($v1)
/* 18FB1C 800400DC 8E6301D0 */  lw         $v1, 0x1d0($s3)
/* 18FB20 800400E0 90620066 */  lbu        $v0, 0x66($v1)
/* 18FB24 800400E4 24040015 */  addiu      $a0, $zero, 0x15
/* 18FB28 800400E8 34420080 */  ori        $v0, $v0, 0x80
/* 18FB2C 800400EC 0C026DD5 */  jal        func_8009B754
/* 18FB30 800400F0 A0620066 */   sb        $v0, 0x66($v1)
.L800400F4:
/* 18FB34 800400F4 3C068005 */  lui        $a2, %hi(D_80052038)
/* 18FB38 800400F8 94C62038 */  lhu        $a2, %lo(D_80052038)($a2)
/* 18FB3C 800400FC 30C20001 */  andi       $v0, $a2, 1
/* 18FB40 80040100 10400011 */  beqz       $v0, .L80040148
/* 18FB44 80040104 30C60007 */   andi      $a2, $a2, 7
/* 18FB48 80040108 8E640248 */  lw         $a0, 0x248($s3)
/* 18FB4C 8004010C 3C058005 */  lui        $a1, %hi(D_80051DAC)
/* 18FB50 80040110 24A51DAC */  addiu      $a1, $a1, %lo(D_80051DAC)
/* 18FB54 80040114 00063042 */  srl        $a2, $a2, 1
/* 18FB58 80040118 0C009A55 */  jal        func_80026954_176394
/* 18FB5C 8004011C 34C60850 */   ori       $a2, $a2, 0x850
/* 18FB60 80040120 8E630248 */  lw         $v1, 0x248($s3)
/* 18FB64 80040124 2402000A */  addiu      $v0, $zero, 0xa
/* 18FB68 80040128 A0620067 */  sb         $v0, 0x67($v1)
/* 18FB6C 8004012C 8E640248 */  lw         $a0, 0x248($s3)
/* 18FB70 80040130 3C058005 */  lui        $a1, %hi(D_80051DAC)
/* 18FB74 80040134 0C0285D4 */  jal        func_800A1750
/* 18FB78 80040138 24A51DAC */   addiu     $a1, $a1, %lo(D_80051DAC)
/* 18FB7C 8004013C 94430000 */  lhu        $v1, ($v0)
/* 18FB80 80040140 3063FFFE */  andi       $v1, $v1, 0xfffe
/* 18FB84 80040144 A4430000 */  sh         $v1, ($v0)
.L80040148:
/* 18FB88 80040148 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18FB8C 8004014C 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18FB90 80040150 3C013D80 */  lui        $at, 0x3d80
/* 18FB94 80040154 44811000 */  mtc1       $at, $f2
/* 18FB98 80040158 C4400000 */  lwc1       $f0, ($v0)
/* 18FB9C 8004015C 46020001 */  sub.s      $f0, $f0, $f2
/* 18FBA0 80040160 E4400000 */  swc1       $f0, ($v0)
/* 18FBA4 80040164 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18FBA8 80040168 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18FBAC 8004016C 3C013D00 */  lui        $at, 0x3d00
/* 18FBB0 80040170 44811000 */  mtc1       $at, $f2
/* 18FBB4 80040174 C4400008 */  lwc1       $f0, 8($v0)
/* 18FBB8 80040178 46020000 */  add.s      $f0, $f0, $f2
/* 18FBBC 8004017C 3C014397 */  lui        $at, 0x4397
/* 18FBC0 80040180 34218000 */  ori        $at, $at, 0x8000
/* 18FBC4 80040184 4481A000 */  mtc1       $at, $f20
/* 18FBC8 80040188 E4400008 */  swc1       $f0, 8($v0)
/* 18FBCC 8004018C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 18FBD0 80040190 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 18FBD4 80040194 C4400000 */  lwc1       $f0, ($v0)
/* 18FBD8 80040198 4600A001 */  sub.s      $f0, $f20, $f0
/* 18FBDC 8004019C 3C014080 */  lui        $at, 0x4080
/* 18FBE0 800401A0 4481B000 */  mtc1       $at, $f22
/* 18FBE4 800401A4 00000000 */  nop
/* 18FBE8 800401A8 46160002 */  mul.s      $f0, $f0, $f22
/* 18FBEC 800401AC 24060400 */  addiu      $a2, $zero, 0x400
/* 18FBF0 800401B0 8E840018 */  lw         $a0, 0x18($s4)
/* 18FBF4 800401B4 4600008D */  trunc.w.s  $f2, $f0
/* 18FBF8 800401B8 44051000 */  mfc1       $a1, $f2
/* 18FBFC 800401BC 00000000 */  nop
/* 18FC00 800401C0 00052C00 */  sll        $a1, $a1, 0x10
/* 18FC04 800401C4 0C028D89 */  jal        func_800A3624
/* 18FC08 800401C8 00052C03 */   sra       $a1, $a1, 0x10
/* 18FC0C 800401CC 3C028005 */  lui        $v0, %hi(D_80052230)
/* 18FC10 800401D0 8C422230 */  lw         $v0, %lo(D_80052230)($v0)
/* 18FC14 800401D4 C4400000 */  lwc1       $f0, ($v0)
/* 18FC18 800401D8 4600A501 */  sub.s      $f20, $f20, $f0
/* 18FC1C 800401DC 4616A502 */  mul.s      $f20, $f20, $f22
/* 18FC20 800401E0 8E840024 */  lw         $a0, 0x24($s4)
/* 18FC24 800401E4 24060400 */  addiu      $a2, $zero, 0x400
/* 18FC28 800401E8 4600A00D */  trunc.w.s  $f0, $f20
/* 18FC2C 800401EC 44050000 */  mfc1       $a1, $f0
/* 18FC30 800401F0 00000000 */  nop
/* 18FC34 800401F4 00052C00 */  sll        $a1, $a1, 0x10
/* 18FC38 800401F8 0C028D89 */  jal        func_800A3624
/* 18FC3C 800401FC 00052C03 */   sra       $a1, $a1, 0x10
/* 18FC40 80040200 8FBF002C */  lw         $ra, 0x2c($sp)
/* 18FC44 80040204 8FB40028 */  lw         $s4, 0x28($sp)
/* 18FC48 80040208 8FB30024 */  lw         $s3, 0x24($sp)
/* 18FC4C 8004020C 8FB20020 */  lw         $s2, 0x20($sp)
/* 18FC50 80040210 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18FC54 80040214 8FB00018 */  lw         $s0, 0x18($sp)
/* 18FC58 80040218 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 18FC5C 8004021C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 18FC60 80040220 03E00008 */  jr         $ra
/* 18FC64 80040224 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80040228_18FC68
/* 18FC68 80040228 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18FC6C 8004022C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18FC70 80040230 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18FC74 80040234 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18FC78 80040238 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18FC7C 8004023C AFBF0024 */  sw         $ra, 0x24($sp)
/* 18FC80 80040240 AFB20020 */  sw         $s2, 0x20($sp)
/* 18FC84 80040244 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18FC88 80040248 AFB00018 */  sw         $s0, 0x18($sp)
/* 18FC8C 8004024C 8C51002C */  lw         $s1, 0x2c($v0)
/* 18FC90 80040250 1460006B */  bnez       $v1, .L80040400
/* 18FC94 80040254 8C520028 */   lw        $s2, 0x28($v0)
/* 18FC98 80040258 8E240000 */  lw         $a0, ($s1)
/* 18FC9C 8004025C 8C82000C */  lw         $v0, 0xc($a0)
/* 18FCA0 80040260 94450000 */  lhu        $a1, ($v0)
/* 18FCA4 80040264 84460002 */  lh         $a2, 2($v0)
/* 18FCA8 80040268 0C02912A */  jal        func_800A44A8
/* 18FCAC 8004026C 00052842 */   srl       $a1, $a1, 1
/* 18FCB0 80040270 8E24000C */  lw         $a0, 0xc($s1)
/* 18FCB4 80040274 8C82000C */  lw         $v0, 0xc($a0)
/* 18FCB8 80040278 94450000 */  lhu        $a1, ($v0)
/* 18FCBC 8004027C 00003021 */  addu       $a2, $zero, $zero
/* 18FCC0 80040280 0C02912A */  jal        func_800A44A8
/* 18FCC4 80040284 00052842 */   srl       $a1, $a1, 1
/* 18FCC8 80040288 8E220018 */  lw         $v0, 0x18($s1)
/* 18FCCC 8004028C 8C420004 */  lw         $v0, 4($v0)
/* 18FCD0 80040290 3C108005 */  lui        $s0, %hi(D_80050010)
/* 18FCD4 80040294 26100010 */  addiu      $s0, $s0, %lo(D_80050010)
/* 18FCD8 80040298 AC500004 */  sw         $s0, 4($v0)
/* 18FCDC 8004029C 8E240018 */  lw         $a0, 0x18($s1)
/* 18FCE0 800402A0 00002821 */  addu       $a1, $zero, $zero
/* 18FCE4 800402A4 0C02912A */  jal        func_800A44A8
/* 18FCE8 800402A8 00003021 */   addu      $a2, $zero, $zero
/* 18FCEC 800402AC 8E220024 */  lw         $v0, 0x24($s1)
/* 18FCF0 800402B0 8C420004 */  lw         $v0, 4($v0)
/* 18FCF4 800402B4 AC500004 */  sw         $s0, 4($v0)
/* 18FCF8 800402B8 8E240024 */  lw         $a0, 0x24($s1)
/* 18FCFC 800402BC 00002821 */  addu       $a1, $zero, $zero
/* 18FD00 800402C0 0C02912A */  jal        func_800A44A8
/* 18FD04 800402C4 00003021 */   addu      $a2, $zero, $zero
/* 18FD08 800402C8 8E240030 */  lw         $a0, 0x30($s1)
/* 18FD0C 800402CC 8C82000C */  lw         $v0, 0xc($a0)
/* 18FD10 800402D0 84460002 */  lh         $a2, 2($v0)
/* 18FD14 800402D4 0C02912A */  jal        func_800A44A8
/* 18FD18 800402D8 00002821 */   addu      $a1, $zero, $zero
/* 18FD1C 800402DC 8E220030 */  lw         $v0, 0x30($s1)
/* 18FD20 800402E0 8C420004 */  lw         $v0, 4($v0)
/* 18FD24 800402E4 240500FF */  addiu      $a1, $zero, 0xff
/* 18FD28 800402E8 AC500004 */  sw         $s0, 4($v0)
/* 18FD2C 800402EC 240200FF */  addiu      $v0, $zero, 0xff
/* 18FD30 800402F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 18FD34 800402F4 8E440068 */  lw         $a0, 0x68($s2)
/* 18FD38 800402F8 240600FF */  addiu      $a2, $zero, 0xff
/* 18FD3C 800402FC 0C027F5E */  jal        func_8009FD78
/* 18FD40 80040300 240700FF */   addiu     $a3, $zero, 0xff
/* 18FD44 80040304 8E430068 */  lw         $v1, 0x68($s2)
/* 18FD48 80040308 90620066 */  lbu        $v0, 0x66($v1)
/* 18FD4C 8004030C 304200DF */  andi       $v0, $v0, 0xdf
/* 18FD50 80040310 A0620066 */  sb         $v0, 0x66($v1)
/* 18FD54 80040314 8E420068 */  lw         $v0, 0x68($s2)
/* 18FD58 80040318 A0400067 */  sb         $zero, 0x67($v0)
/* 18FD5C 8004031C 8E440068 */  lw         $a0, 0x68($s2)
/* 18FD60 80040320 0C028703 */  jal        func_800A1C0C
/* 18FD64 80040324 24050004 */   addiu     $a1, $zero, 4
/* 18FD68 80040328 8E440068 */  lw         $a0, 0x68($s2)
/* 18FD6C 8004032C 3C058005 */  lui        $a1, %hi(D_80051DA0)
/* 18FD70 80040330 0C0284DC */  jal        func_800A1370
/* 18FD74 80040334 24A51DA0 */   addiu     $a1, $a1, %lo(D_80051DA0)
/* 18FD78 80040338 8E440068 */  lw         $a0, 0x68($s2)
/* 18FD7C 8004033C 00021400 */  sll        $v0, $v0, 0x10
/* 18FD80 80040340 0C0285CC */  jal        func_800A1730
/* 18FD84 80040344 00022C03 */   sra       $a1, $v0, 0x10
/* 18FD88 80040348 00002021 */  addu       $a0, $zero, $zero
/* 18FD8C 8004034C 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18FD90 80040350 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FD94 80040354 AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L80040358:
/* 18FD98 80040358 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18FD9C 8004035C 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18FDA0 80040360 A4450000 */  sh         $a1, ($v0)
/* 18FDA4 80040364 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18FDA8 80040368 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18FDAC 8004036C 24820001 */  addiu      $v0, $a0, 1
/* 18FDB0 80040370 00402021 */  addu       $a0, $v0, $zero
/* 18FDB4 80040374 00021600 */  sll        $v0, $v0, 0x18
/* 18FDB8 80040378 00021603 */  sra        $v0, $v0, 0x18
/* 18FDBC 8004037C 28420010 */  slti       $v0, $v0, 0x10
/* 18FDC0 80040380 24630002 */  addiu      $v1, $v1, 2
/* 18FDC4 80040384 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FDC8 80040388 1440FFF3 */  bnez       $v0, .L80040358
/* 18FDCC 8004038C AC231FF0 */   sw        $v1, %lo(D_80051FF0)($at)
/* 18FDD0 80040390 8E440068 */  lw         $a0, 0x68($s2)
/* 18FDD4 80040394 3C058005 */  lui        $a1, %hi(D_80051DA8)
/* 18FDD8 80040398 0C0284DC */  jal        func_800A1370
/* 18FDDC 8004039C 24A51DA8 */   addiu     $a1, $a1, %lo(D_80051DA8)
/* 18FDE0 800403A0 8E440068 */  lw         $a0, 0x68($s2)
/* 18FDE4 800403A4 00021400 */  sll        $v0, $v0, 0x10
/* 18FDE8 800403A8 0C0285CC */  jal        func_800A1730
/* 18FDEC 800403AC 00022C03 */   sra       $a1, $v0, 0x10
/* 18FDF0 800403B0 00002021 */  addu       $a0, $zero, $zero
/* 18FDF4 800403B4 3405FFFF */  ori        $a1, $zero, 0xffff
/* 18FDF8 800403B8 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FDFC 800403BC AC221FF0 */  sw         $v0, %lo(D_80051FF0)($at)
.L800403C0:
/* 18FE00 800403C0 3C028005 */  lui        $v0, %hi(D_80051FF0)
/* 18FE04 800403C4 8C421FF0 */  lw         $v0, %lo(D_80051FF0)($v0)
/* 18FE08 800403C8 A4450000 */  sh         $a1, ($v0)
/* 18FE0C 800403CC 3C038005 */  lui        $v1, %hi(D_80051FF0)
/* 18FE10 800403D0 8C631FF0 */  lw         $v1, %lo(D_80051FF0)($v1)
/* 18FE14 800403D4 24820001 */  addiu      $v0, $a0, 1
/* 18FE18 800403D8 00402021 */  addu       $a0, $v0, $zero
/* 18FE1C 800403DC 00021600 */  sll        $v0, $v0, 0x18
/* 18FE20 800403E0 00021603 */  sra        $v0, $v0, 0x18
/* 18FE24 800403E4 28420010 */  slti       $v0, $v0, 0x10
/* 18FE28 800403E8 24630002 */  addiu      $v1, $v1, 2
/* 18FE2C 800403EC 3C018005 */  lui        $at, %hi(D_80051FF0)
/* 18FE30 800403F0 1440FFF3 */  bnez       $v0, .L800403C0
/* 18FE34 800403F4 AC231FF0 */   sw        $v1, %lo(D_80051FF0)($at)
/* 18FE38 800403F8 0C026DD5 */  jal        func_8009B754
/* 18FE3C 800403FC 24040073 */   addiu     $a0, $zero, 0x73
.L80040400:
/* 18FE40 80040400 3C048005 */  lui        $a0, %hi(D_80052038)
/* 18FE44 80040404 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 18FE48 80040408 3C06AAAA */  lui        $a2, 0xaaaa
/* 18FE4C 8004040C 34C6AAAB */  ori        $a2, $a2, 0xaaab
/* 18FE50 80040410 00860019 */  multu      $a0, $a2
/* 18FE54 80040414 00002810 */  mfhi       $a1
/* 18FE58 80040418 00051842 */  srl        $v1, $a1, 1
/* 18FE5C 8004041C 00031040 */  sll        $v0, $v1, 1
/* 18FE60 80040420 00431021 */  addu       $v0, $v0, $v1
/* 18FE64 80040424 00821023 */  subu       $v0, $a0, $v0
/* 18FE68 80040428 3042FFFF */  andi       $v0, $v0, 0xffff
/* 18FE6C 8004042C 14400019 */  bnez       $v0, .L80040494
/* 18FE70 80040430 000518C2 */   srl       $v1, $a1, 3
/* 18FE74 80040434 00031040 */  sll        $v0, $v1, 1
/* 18FE78 80040438 00431021 */  addu       $v0, $v0, $v1
/* 18FE7C 8004043C 00021080 */  sll        $v0, $v0, 2
/* 18FE80 80040440 00821023 */  subu       $v0, $a0, $v0
/* 18FE84 80040444 3042FFFF */  andi       $v0, $v0, 0xffff
/* 18FE88 80040448 00460019 */  multu      $v0, $a2
/* 18FE8C 8004044C 8E4400E0 */  lw         $a0, 0xe0($s2)
/* 18FE90 80040450 3C058005 */  lui        $a1, %hi(D_80051DA0)
/* 18FE94 80040454 24A51DA0 */  addiu      $a1, $a1, %lo(D_80051DA0)
/* 18FE98 80040458 00004010 */  mfhi       $t0
/* 18FE9C 8004045C 000833C0 */  sll        $a2, $t0, 0xf
/* 18FEA0 80040460 00063403 */  sra        $a2, $a2, 0x10
/* 18FEA4 80040464 0C009A55 */  jal        func_80026954_176394
/* 18FEA8 80040468 24C60854 */   addiu     $a2, $a2, 0x854
/* 18FEAC 8004046C 8E4300E0 */  lw         $v1, 0xe0($s2)
/* 18FEB0 80040470 2402000A */  addiu      $v0, $zero, 0xa
/* 18FEB4 80040474 A0620067 */  sb         $v0, 0x67($v1)
/* 18FEB8 80040478 8E4400E0 */  lw         $a0, 0xe0($s2)
/* 18FEBC 8004047C 3C058005 */  lui        $a1, %hi(D_80051DA0)
/* 18FEC0 80040480 0C0285D4 */  jal        func_800A1750
/* 18FEC4 80040484 24A51DA0 */   addiu     $a1, $a1, %lo(D_80051DA0)
/* 18FEC8 80040488 94430000 */  lhu        $v1, ($v0)
/* 18FECC 8004048C 3063FFFE */  andi       $v1, $v1, 0xfffe
/* 18FED0 80040490 A4430000 */  sh         $v1, ($v0)
.L80040494:
/* 18FED4 80040494 3C028015 */  lui        $v0, %hi(D_8014A064)
/* 18FED8 80040498 2442A064 */  addiu      $v0, $v0, %lo(D_8014A064)
/* 18FEDC 8004049C C4420000 */  lwc1       $f2, ($v0)
/* 18FEE0 800404A0 3C018005 */  lui        $at, %hi(D_80051DC0)
/* 18FEE4 800404A4 D4241DC0 */  ldc1       $f4, %lo(D_80051DC0)($at)
/* 18FEE8 800404A8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 18FEEC 800404AC C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 18FEF0 800404B0 460010A1 */  cvt.d.s    $f2, $f2
/* 18FEF4 800404B4 46241080 */  add.d      $f2, $f2, $f4
/* 18FEF8 800404B8 46000021 */  cvt.d.s    $f0, $f0
/* 18FEFC 800404BC 46240000 */  add.d      $f0, $f0, $f4
/* 18FF00 800404C0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18FF04 800404C4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18FF08 800404C8 462010A0 */  cvt.s.d    $f2, $f2
/* 18FF0C 800404CC 46200020 */  cvt.s.d    $f0, $f0
/* 18FF10 800404D0 E4420000 */  swc1       $f2, ($v0)
/* 18FF14 800404D4 240200B4 */  addiu      $v0, $zero, 0xb4
/* 18FF18 800404D8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 18FF1C 800404DC E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 18FF20 800404E0 14620004 */  bne        $v1, $v0, .L800404F4
/* 18FF24 800404E4 240400B4 */   addiu     $a0, $zero, 0xb4
/* 18FF28 800404E8 0C026E5D */  jal        func_8009B974
/* 18FF2C 800404EC 24040078 */   addiu     $a0, $zero, 0x78
/* 18FF30 800404F0 240400B4 */  addiu      $a0, $zero, 0xb4
.L800404F4:
/* 18FF34 800404F4 24050005 */  addiu      $a1, $zero, 5
/* 18FF38 800404F8 0C009EE4 */  jal        func_80027B90_1775D0
/* 18FF3C 800404FC 24060001 */   addiu     $a2, $zero, 1
/* 18FF40 80040500 8FBF0024 */  lw         $ra, 0x24($sp)
/* 18FF44 80040504 8FB20020 */  lw         $s2, 0x20($sp)
/* 18FF48 80040508 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18FF4C 8004050C 8FB00018 */  lw         $s0, 0x18($sp)
/* 18FF50 80040510 03E00008 */  jr         $ra
/* 18FF54 80040514 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80040518_18FF58
/* 18FF58 80040518 3C028005 */  lui        $v0, %hi(D_80050030)
/* 18FF5C 8004051C 90420030 */  lbu        $v0, %lo(D_80050030)($v0)
/* 18FF60 80040520 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18FF64 80040524 10400027 */  beqz       $v0, .L800405C4
/* 18FF68 80040528 AFBF0010 */   sw        $ra, 0x10($sp)
/* 18FF6C 8004052C 0C009758 */  jal        func_80025D60_1757A0
/* 18FF70 80040530 00000000 */   nop
/* 18FF74 80040534 0C02A5D2 */  jal        func_800A9748
/* 18FF78 80040538 24040001 */   addiu     $a0, $zero, 1
/* 18FF7C 8004053C 24020003 */  addiu      $v0, $zero, 3
/* 18FF80 80040540 3C018005 */  lui        $at, %hi(D_80052061)
/* 18FF84 80040544 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 18FF88 80040548 24020001 */  addiu      $v0, $zero, 1
/* 18FF8C 8004054C 3C018005 */  lui        $at, %hi(D_80050030)
/* 18FF90 80040550 A0200030 */  sb         $zero, %lo(D_80050030)($at)
/* 18FF94 80040554 3C018005 */  lui        $at, %hi(D_80052060)
/* 18FF98 80040558 A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 18FF9C 8004055C 3C018005 */  lui        $at, %hi(D_80052006)
/* 18FFA0 80040560 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 18FFA4 80040564 0C032663 */  jal        func_800C998C
/* 18FFA8 80040568 24040002 */   addiu     $a0, $zero, 2
/* 18FFAC 8004056C 00402021 */  addu       $a0, $v0, $zero
/* 18FFB0 80040570 3C018005 */  lui        $at, %hi(D_80052034)
/* 18FFB4 80040574 AC242034 */  sw         $a0, %lo(D_80052034)($at)
/* 18FFB8 80040578 0C030134 */  jal        bzero
/* 18FFBC 8004057C 24050002 */   addiu     $a1, $zero, 2
/* 18FFC0 80040580 0C032663 */  jal        func_800C998C
/* 18FFC4 80040584 2404000C */   addiu     $a0, $zero, 0xc
/* 18FFC8 80040588 00402021 */  addu       $a0, $v0, $zero
/* 18FFCC 8004058C 3C018005 */  lui        $at, %hi(D_80052230)
/* 18FFD0 80040590 AC242230 */  sw         $a0, %lo(D_80052230)($at)
/* 18FFD4 80040594 0C030134 */  jal        bzero
/* 18FFD8 80040598 2405000C */   addiu     $a1, $zero, 0xc
/* 18FFDC 8004059C 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 18FFE0 800405A0 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 18FFE4 800405A4 00002821 */  addu       $a1, $zero, $zero
/* 18FFE8 800405A8 3C028005 */  lui        $v0, %hi(D_8004FF00)
/* 18FFEC 800405AC 2442FF00 */  addiu      $v0, $v0, %lo(D_8004FF00)
/* 18FFF0 800405B0 2406012C */  addiu      $a2, $zero, 0x12c
/* 18FFF4 800405B4 3C018005 */  lui        $at, %hi(D_80052000)
/* 18FFF8 800405B8 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 18FFFC 800405BC 0C025D06 */  jal        func_80097418
/* 190000 800405C0 00003821 */   addu      $a3, $zero, $zero
.L800405C4:
/* 190004 800405C4 3C038005 */  lui        $v1, %hi(D_80052060)
/* 190008 800405C8 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 19000C 800405CC 24020001 */  addiu      $v0, $zero, 1
/* 190010 800405D0 1462000B */  bne        $v1, $v0, .L80040600
/* 190014 800405D4 00001021 */   addu      $v0, $zero, $zero
/* 190018 800405D8 3C048005 */  lui        $a0, %hi(D_80052034)
/* 19001C 800405DC 8C842034 */  lw         $a0, %lo(D_80052034)($a0)
/* 190020 800405E0 24020001 */  addiu      $v0, $zero, 1
/* 190024 800405E4 3C018005 */  lui        $at, %hi(D_80050030)
/* 190028 800405E8 0C0326A1 */  jal        func_800C9A84
/* 19002C 800405EC A0220030 */   sb        $v0, %lo(D_80050030)($at)
/* 190030 800405F0 3C048005 */  lui        $a0, %hi(D_80052230)
/* 190034 800405F4 0C0326A1 */  jal        func_800C9A84
/* 190038 800405F8 8C842230 */   lw        $a0, %lo(D_80052230)($a0)
/* 19003C 800405FC 24020001 */  addiu      $v0, $zero, 1
.L80040600:
/* 190040 80040600 8FBF0010 */  lw         $ra, 0x10($sp)
/* 190044 80040604 03E00008 */  jr         $ra
/* 190048 80040608 27BD0018 */   addiu     $sp, $sp, 0x18
/* 19004C 8004060C 00000000 */  nop