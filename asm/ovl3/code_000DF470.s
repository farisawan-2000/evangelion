.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80035F60_DF470
/* DF470 80035F60 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* DF474 80035F64 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* DF478 80035F68 30421000 */  andi       $v0, $v0, 0x1000
/* DF47C 80035F6C 03E00008 */  jr         $ra
/* DF480 80035F70 0002102B */   sltu      $v0, $zero, $v0

glabel func_80035F74_DF484
/* DF484 80035F74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF488 80035F78 24041900 */  addiu      $a0, $zero, 0x1900
/* DF48C 80035F7C AFBF0014 */  sw         $ra, 0x14($sp)
/* DF490 80035F80 0C032663 */  jal        func_800C998C
/* DF494 80035F84 AFB00010 */   sw        $s0, 0x10($sp)
/* DF498 80035F88 00408021 */  addu       $s0, $v0, $zero
/* DF49C 80035F8C 02002021 */  addu       $a0, $s0, $zero
/* DF4A0 80035F90 0C030134 */  jal        bzero
/* DF4A4 80035F94 24051900 */   addiu     $a1, $zero, 0x1900
/* DF4A8 80035F98 3C018007 */  lui        $at, %hi(D_8006C3C4)
/* DF4AC 80035F9C AC30C3C4 */  sw         $s0, %lo(D_8006C3C4)($at)
/* DF4B0 80035FA0 0C032663 */  jal        func_800C998C
/* DF4B4 80035FA4 24040C80 */   addiu     $a0, $zero, 0xc80
/* DF4B8 80035FA8 00408021 */  addu       $s0, $v0, $zero
/* DF4BC 80035FAC 02002021 */  addu       $a0, $s0, $zero
/* DF4C0 80035FB0 0C030134 */  jal        bzero
/* DF4C4 80035FB4 24050C80 */   addiu     $a1, $zero, 0xc80
/* DF4C8 80035FB8 3C018007 */  lui        $at, %hi(D_8006C588)
/* DF4CC 80035FBC AC30C588 */  sw         $s0, %lo(D_8006C588)($at)
/* DF4D0 80035FC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF4D4 80035FC4 8FB00010 */  lw         $s0, 0x10($sp)
/* DF4D8 80035FC8 03E00008 */  jr         $ra
/* DF4DC 80035FCC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035FD0_DF4E0
/* DF4E0 80035FD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF4E4 80035FD4 AFBF0010 */  sw         $ra, 0x10($sp)
/* DF4E8 80035FD8 0C00E15C */  jal        func_80038570_E1A80
/* DF4EC 80035FDC 00000000 */   nop
/* DF4F0 80035FE0 3C048007 */  lui        $a0, %hi(D_8006C588)
/* DF4F4 80035FE4 0C0326A1 */  jal        func_800C9A84
/* DF4F8 80035FE8 8C84C588 */   lw        $a0, %lo(D_8006C588)($a0)
/* DF4FC 80035FEC 3C048007 */  lui        $a0, %hi(D_8006C3C4)
/* DF500 80035FF0 0C0326A1 */  jal        func_800C9A84
/* DF504 80035FF4 8C84C3C4 */   lw        $a0, %lo(D_8006C3C4)($a0)
/* DF508 80035FF8 3C018007 */  lui        $at, %hi(D_8006C588)
/* DF50C 80035FFC AC20C588 */  sw         $zero, %lo(D_8006C588)($at)
/* DF510 80036000 3C018007 */  lui        $at, %hi(D_8006C3C4)
/* DF514 80036004 AC20C3C4 */  sw         $zero, %lo(D_8006C3C4)($at)
/* DF518 80036008 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF51C 8003600C 03E00008 */  jr         $ra
/* DF520 80036010 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80036014_DF524
/* DF524 80036014 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF528 80036018 AFB00010 */  sw         $s0, 0x10($sp)
/* DF52C 8003601C 00808021 */  addu       $s0, $a0, $zero
/* DF530 80036020 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF534 80036024 8E04000C */  lw         $a0, 0xc($s0)
/* DF538 80036028 8C83000C */  lw         $v1, 0xc($a0)
/* DF53C 8003602C 3C02802F */  lui        $v0, 0x802f
/* DF540 80036030 344297FF */  ori        $v0, $v0, 0x97ff
/* DF544 80036034 0043102B */  sltu       $v0, $v0, $v1
/* DF548 80036038 1440000B */  bnez       $v0, .L80036068
/* DF54C 8003603C 24020001 */   addiu     $v0, $zero, 1
/* DF550 80036040 82030003 */  lb         $v1, 3($s0)
/* DF554 80036044 14620004 */  bne        $v1, $v0, .L80036058
/* DF558 80036048 00000000 */   nop
/* DF55C 8003604C 0C0326A1 */  jal        func_800C9A84
/* DF560 80036050 8C840010 */   lw        $a0, 0x10($a0)
/* DF564 80036054 8E04000C */  lw         $a0, 0xc($s0)
.L80036058:
/* DF568 80036058 0C028D30 */  jal        func_800A34C0
/* DF56C 8003605C 00000000 */   nop
/* DF570 80036060 0800D820 */  j          .L80036080
/* DF574 80036064 3402FFFF */   ori       $v0, $zero, 0xffff
.L80036068:
/* DF578 80036068 8C840014 */  lw         $a0, 0x14($a0)
/* DF57C 8003606C 0C0326A1 */  jal        func_800C9A84
/* DF580 80036070 00000000 */   nop
/* DF584 80036074 0C02910B */  jal        func_800A442C
/* DF588 80036078 8E04000C */   lw        $a0, 0xc($s0)
/* DF58C 8003607C 3402FFFF */  ori        $v0, $zero, 0xffff
.L80036080:
/* DF590 80036080 A6000000 */  sh         $zero, ($s0)
/* DF594 80036084 AE020008 */  sw         $v0, 8($s0)
/* DF598 80036088 AE020004 */  sw         $v0, 4($s0)
/* DF59C 8003608C A2000002 */  sb         $zero, 2($s0)
/* DF5A0 80036090 A2000003 */  sb         $zero, 3($s0)
/* DF5A4 80036094 AE00000C */  sw         $zero, 0xc($s0)
/* DF5A8 80036098 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF5AC 8003609C 8FB00010 */  lw         $s0, 0x10($sp)
/* DF5B0 800360A0 03E00008 */  jr         $ra
/* DF5B4 800360A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800360A8_DF5B8
/* DF5B8 800360A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DF5BC 800360AC AFB10014 */  sw         $s1, 0x14($sp)
/* DF5C0 800360B0 3C118007 */  lui        $s1, %hi(D_8006C588)
/* DF5C4 800360B4 8E31C588 */  lw         $s1, %lo(D_8006C588)($s1)
/* DF5C8 800360B8 AFB20018 */  sw         $s2, 0x18($sp)
/* DF5CC 800360BC 00009021 */  addu       $s2, $zero, $zero
/* DF5D0 800360C0 AFB40020 */  sw         $s4, 0x20($sp)
/* DF5D4 800360C4 3C14802F */  lui        $s4, 0x802f
/* DF5D8 800360C8 369497FF */  ori        $s4, $s4, 0x97ff
/* DF5DC 800360CC AFB50024 */  sw         $s5, 0x24($sp)
/* DF5E0 800360D0 24150001 */  addiu      $s5, $zero, 1
/* DF5E4 800360D4 AFB3001C */  sw         $s3, 0x1c($sp)
/* DF5E8 800360D8 3413FFFF */  ori        $s3, $zero, 0xffff
/* DF5EC 800360DC AFBF0028 */  sw         $ra, 0x28($sp)
/* DF5F0 800360E0 AFB00010 */  sw         $s0, 0x10($sp)
/* DF5F4 800360E4 2630000C */  addiu      $s0, $s1, 0xc
.L800360E8:
/* DF5F8 800360E8 96220000 */  lhu        $v0, ($s1)
/* DF5FC 800360EC 5040001B */  beql       $v0, $zero, .L8003615C
/* DF600 800360F0 26520001 */   addiu     $s2, $s2, 1
/* DF604 800360F4 8E030000 */  lw         $v1, ($s0)
/* DF608 800360F8 8C62000C */  lw         $v0, 0xc($v1)
/* DF60C 800360FC 0282102B */  sltu       $v0, $s4, $v0
/* DF610 80036100 1440000A */  bnez       $v0, .L8003612C
/* DF614 80036104 00000000 */   nop
/* DF618 80036108 8202FFF7 */  lb         $v0, -9($s0)
/* DF61C 8003610C 14550003 */  bne        $v0, $s5, .L8003611C
/* DF620 80036110 00000000 */   nop
/* DF624 80036114 0C0326A1 */  jal        func_800C9A84
/* DF628 80036118 8C640010 */   lw        $a0, 0x10($v1)
.L8003611C:
/* DF62C 8003611C 0C028D30 */  jal        func_800A34C0
/* DF630 80036120 8E040000 */   lw        $a0, ($s0)
/* DF634 80036124 0800D851 */  j          .L80036144
/* DF638 80036128 A6200000 */   sh        $zero, ($s1)
.L8003612C:
/* DF63C 8003612C 8C640014 */  lw         $a0, 0x14($v1)
/* DF640 80036130 0C0326A1 */  jal        func_800C9A84
/* DF644 80036134 00000000 */   nop
/* DF648 80036138 0C02910B */  jal        func_800A442C
/* DF64C 8003613C 8E040000 */   lw        $a0, ($s0)
/* DF650 80036140 A6200000 */  sh         $zero, ($s1)
.L80036144:
/* DF654 80036144 AE13FFFC */  sw         $s3, -4($s0)
/* DF658 80036148 AE13FFF8 */  sw         $s3, -8($s0)
/* DF65C 8003614C A200FFF6 */  sb         $zero, -0xa($s0)
/* DF660 80036150 A200FFF7 */  sb         $zero, -9($s0)
/* DF664 80036154 AE000000 */  sw         $zero, ($s0)
/* DF668 80036158 26520001 */  addiu      $s2, $s2, 1
.L8003615C:
/* DF66C 8003615C 26100010 */  addiu      $s0, $s0, 0x10
/* DF670 80036160 3242FFFF */  andi       $v0, $s2, 0xffff
/* DF674 80036164 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DF678 80036168 1440FFDF */  bnez       $v0, .L800360E8
/* DF67C 8003616C 26310010 */   addiu     $s1, $s1, 0x10
/* DF680 80036170 8FBF0028 */  lw         $ra, 0x28($sp)
/* DF684 80036174 8FB50024 */  lw         $s5, 0x24($sp)
/* DF688 80036178 8FB40020 */  lw         $s4, 0x20($sp)
/* DF68C 8003617C 8FB3001C */  lw         $s3, 0x1c($sp)
/* DF690 80036180 8FB20018 */  lw         $s2, 0x18($sp)
/* DF694 80036184 8FB10014 */  lw         $s1, 0x14($sp)
/* DF698 80036188 8FB00010 */  lw         $s0, 0x10($sp)
/* DF69C 8003618C 03E00008 */  jr         $ra
/* DF6A0 80036190 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80036194_DF6A4
/* DF6A4 80036194 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF6A8 80036198 AFB00010 */  sw         $s0, 0x10($sp)
/* DF6AC 8003619C 00808021 */  addu       $s0, $a0, $zero
/* DF6B0 800361A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF6B4 800361A4 82020002 */  lb         $v0, 2($s0)
/* DF6B8 800361A8 24050001 */  addiu      $a1, $zero, 1
/* DF6BC 800361AC 10450019 */  beq        $v0, $a1, .L80036214
/* DF6C0 800361B0 3C02802F */   lui       $v0, 0x802f
/* DF6C4 800361B4 8E04000C */  lw         $a0, 0xc($s0)
/* DF6C8 800361B8 8C83000C */  lw         $v1, 0xc($a0)
/* DF6CC 800361BC 344297FF */  ori        $v0, $v0, 0x97ff
/* DF6D0 800361C0 0043102B */  sltu       $v0, $v0, $v1
/* DF6D4 800361C4 1440000B */  bnez       $v0, .L800361F4
/* DF6D8 800361C8 00000000 */   nop
/* DF6DC 800361CC 82020003 */  lb         $v0, 3($s0)
/* DF6E0 800361D0 14450004 */  bne        $v0, $a1, .L800361E4
/* DF6E4 800361D4 00000000 */   nop
/* DF6E8 800361D8 0C0326A1 */  jal        func_800C9A84
/* DF6EC 800361DC 8C840010 */   lw        $a0, 0x10($a0)
/* DF6F0 800361E0 8E04000C */  lw         $a0, 0xc($s0)
.L800361E4:
/* DF6F4 800361E4 0C028D30 */  jal        func_800A34C0
/* DF6F8 800361E8 00000000 */   nop
/* DF6FC 800361EC 0800D883 */  j          .L8003620C
/* DF700 800361F0 A6000000 */   sh        $zero, ($s0)
.L800361F4:
/* DF704 800361F4 8C840014 */  lw         $a0, 0x14($a0)
/* DF708 800361F8 0C0326A1 */  jal        func_800C9A84
/* DF70C 800361FC 00000000 */   nop
/* DF710 80036200 0C02910B */  jal        func_800A442C
/* DF714 80036204 8E04000C */   lw        $a0, 0xc($s0)
/* DF718 80036208 A6000000 */  sh         $zero, ($s0)
.L8003620C:
/* DF71C 8003620C A2000003 */  sb         $zero, 3($s0)
/* DF720 80036210 AE00000C */  sw         $zero, 0xc($s0)
.L80036214:
/* DF724 80036214 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF728 80036218 8FB00010 */  lw         $s0, 0x10($sp)
/* DF72C 8003621C 03E00008 */  jr         $ra
/* DF730 80036220 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80036224_DF734
/* DF734 80036224 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DF738 80036228 AFB10014 */  sw         $s1, 0x14($sp)
/* DF73C 8003622C 3C118007 */  lui        $s1, %hi(D_8006C588)
/* DF740 80036230 8E31C588 */  lw         $s1, %lo(D_8006C588)($s1)
/* DF744 80036234 AFB20018 */  sw         $s2, 0x18($sp)
/* DF748 80036238 00009021 */  addu       $s2, $zero, $zero
/* DF74C 8003623C AFB3001C */  sw         $s3, 0x1c($sp)
/* DF750 80036240 24130001 */  addiu      $s3, $zero, 1
/* DF754 80036244 AFB40020 */  sw         $s4, 0x20($sp)
/* DF758 80036248 3C14802F */  lui        $s4, 0x802f
/* DF75C 8003624C 369497FF */  ori        $s4, $s4, 0x97ff
/* DF760 80036250 AFBF0024 */  sw         $ra, 0x24($sp)
/* DF764 80036254 AFB00010 */  sw         $s0, 0x10($sp)
/* DF768 80036258 2630000C */  addiu      $s0, $s1, 0xc
.L8003625C:
/* DF76C 8003625C 96220000 */  lhu        $v0, ($s1)
/* DF770 80036260 5040001B */  beql       $v0, $zero, .L800362D0
/* DF774 80036264 26520001 */   addiu     $s2, $s2, 1
/* DF778 80036268 8202FFF6 */  lb         $v0, -0xa($s0)
/* DF77C 8003626C 50530018 */  beql       $v0, $s3, .L800362D0
/* DF780 80036270 26520001 */   addiu     $s2, $s2, 1
/* DF784 80036274 8E030000 */  lw         $v1, ($s0)
/* DF788 80036278 8C62000C */  lw         $v0, 0xc($v1)
/* DF78C 8003627C 0282102B */  sltu       $v0, $s4, $v0
/* DF790 80036280 1440000A */  bnez       $v0, .L800362AC
/* DF794 80036284 00000000 */   nop
/* DF798 80036288 8202FFF7 */  lb         $v0, -9($s0)
/* DF79C 8003628C 14530003 */  bne        $v0, $s3, .L8003629C
/* DF7A0 80036290 00000000 */   nop
/* DF7A4 80036294 0C0326A1 */  jal        func_800C9A84
/* DF7A8 80036298 8C640010 */   lw        $a0, 0x10($v1)
.L8003629C:
/* DF7AC 8003629C 0C028D30 */  jal        func_800A34C0
/* DF7B0 800362A0 8E040000 */   lw        $a0, ($s0)
/* DF7B4 800362A4 0800D8B1 */  j          .L800362C4
/* DF7B8 800362A8 A6200000 */   sh        $zero, ($s1)
.L800362AC:
/* DF7BC 800362AC 8C640014 */  lw         $a0, 0x14($v1)
/* DF7C0 800362B0 0C0326A1 */  jal        func_800C9A84
/* DF7C4 800362B4 00000000 */   nop
/* DF7C8 800362B8 0C02910B */  jal        func_800A442C
/* DF7CC 800362BC 8E040000 */   lw        $a0, ($s0)
/* DF7D0 800362C0 A6200000 */  sh         $zero, ($s1)
.L800362C4:
/* DF7D4 800362C4 A200FFF7 */  sb         $zero, -9($s0)
/* DF7D8 800362C8 AE000000 */  sw         $zero, ($s0)
/* DF7DC 800362CC 26520001 */  addiu      $s2, $s2, 1
.L800362D0:
/* DF7E0 800362D0 26100010 */  addiu      $s0, $s0, 0x10
/* DF7E4 800362D4 3242FFFF */  andi       $v0, $s2, 0xffff
/* DF7E8 800362D8 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DF7EC 800362DC 1440FFDF */  bnez       $v0, .L8003625C
/* DF7F0 800362E0 26310010 */   addiu     $s1, $s1, 0x10
/* DF7F4 800362E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* DF7F8 800362E8 8FB40020 */  lw         $s4, 0x20($sp)
/* DF7FC 800362EC 8FB3001C */  lw         $s3, 0x1c($sp)
/* DF800 800362F0 8FB20018 */  lw         $s2, 0x18($sp)
/* DF804 800362F4 8FB10014 */  lw         $s1, 0x14($sp)
/* DF808 800362F8 8FB00010 */  lw         $s0, 0x10($sp)
/* DF80C 800362FC 03E00008 */  jr         $ra
/* DF810 80036300 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80036304_DF814
/* DF814 80036304 00002821 */  addu       $a1, $zero, $zero
/* DF818 80036308 3C038007 */  lui        $v1, %hi(D_8006C588)
/* DF81C 8003630C 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* DF820 80036310 3084FFFF */  andi       $a0, $a0, 0xffff
.L80036314:
/* DF824 80036314 94620000 */  lhu        $v0, ($v1)
/* DF828 80036318 54440003 */  bnel       $v0, $a0, .L80036328
/* DF82C 8003631C 24A50001 */   addiu     $a1, $a1, 1
/* DF830 80036320 0800D8CF */  j          .L8003633C
/* DF834 80036324 00601021 */   addu      $v0, $v1, $zero
.L80036328:
/* DF838 80036328 30A2FFFF */  andi       $v0, $a1, 0xffff
/* DF83C 8003632C 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DF840 80036330 1440FFF8 */  bnez       $v0, .L80036314
/* DF844 80036334 24630010 */   addiu     $v1, $v1, 0x10
/* DF848 80036338 00001021 */  addu       $v0, $zero, $zero
.L8003633C:
/* DF84C 8003633C 03E00008 */  jr         $ra
/* DF850 80036340 00000000 */   nop

glabel func_80036344_DF854
/* DF854 80036344 3C038007 */  lui        $v1, %hi(D_8006C588)
/* DF858 80036348 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* DF85C 8003634C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF860 80036350 00002021 */  addu       $a0, $zero, $zero
/* DF864 80036354 AFBF0010 */  sw         $ra, 0x10($sp)
.L80036358:
/* DF868 80036358 94620000 */  lhu        $v0, ($v1)
/* DF86C 8003635C 10400007 */  beqz       $v0, .L8003637C
/* DF870 80036360 24840001 */   addiu     $a0, $a0, 1
/* DF874 80036364 3082FFFF */  andi       $v0, $a0, 0xffff
/* DF878 80036368 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DF87C 8003636C 1440FFFA */  bnez       $v0, .L80036358
/* DF880 80036370 24630010 */   addiu     $v1, $v1, 0x10
/* DF884 80036374 0C032934 */  jal        func_800CA4D0
/* DF888 80036378 00000000 */   nop
.L8003637C:
/* DF88C 8003637C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF890 80036380 00601021 */  addu       $v0, $v1, $zero
/* DF894 80036384 03E00008 */  jr         $ra
/* DF898 80036388 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003638C_DF89C
/* DF89C 8003638C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF8A0 80036390 3084FFFF */  andi       $a0, $a0, 0xffff
/* DF8A4 80036394 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF8A8 80036398 1080002D */  beqz       $a0, .L80036450
/* DF8AC 8003639C AFB00010 */   sw        $s0, 0x10($sp)
/* DF8B0 800363A0 00002821 */  addu       $a1, $zero, $zero
/* DF8B4 800363A4 3C038007 */  lui        $v1, %hi(D_8006C588)
/* DF8B8 800363A8 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
.L800363AC:
/* DF8BC 800363AC 94620000 */  lhu        $v0, ($v1)
/* DF8C0 800363B0 1044001B */  beq        $v0, $a0, .L80036420
/* DF8C4 800363B4 24A50001 */   addiu     $a1, $a1, 1
/* DF8C8 800363B8 30A2FFFF */  andi       $v0, $a1, 0xffff
/* DF8CC 800363BC 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DF8D0 800363C0 1440FFFA */  bnez       $v0, .L800363AC
/* DF8D4 800363C4 24630010 */   addiu     $v1, $v1, 0x10
/* DF8D8 800363C8 00008021 */  addu       $s0, $zero, $zero
.L800363CC:
/* DF8DC 800363CC 12000020 */  beqz       $s0, .L80036450
/* DF8E0 800363D0 24050001 */   addiu     $a1, $zero, 1
/* DF8E4 800363D4 82020002 */  lb         $v0, 2($s0)
/* DF8E8 800363D8 1045001B */  beq        $v0, $a1, .L80036448
/* DF8EC 800363DC 3C02802F */   lui       $v0, 0x802f
/* DF8F0 800363E0 8E04000C */  lw         $a0, 0xc($s0)
/* DF8F4 800363E4 8C83000C */  lw         $v1, 0xc($a0)
/* DF8F8 800363E8 344297FF */  ori        $v0, $v0, 0x97ff
/* DF8FC 800363EC 0043102B */  sltu       $v0, $v0, $v1
/* DF900 800363F0 1440000D */  bnez       $v0, .L80036428
/* DF904 800363F4 00000000 */   nop
/* DF908 800363F8 82020003 */  lb         $v0, 3($s0)
/* DF90C 800363FC 14450004 */  bne        $v0, $a1, .L80036410
/* DF910 80036400 00000000 */   nop
/* DF914 80036404 0C0326A1 */  jal        func_800C9A84
/* DF918 80036408 8C840010 */   lw        $a0, 0x10($a0)
/* DF91C 8003640C 8E04000C */  lw         $a0, 0xc($s0)
.L80036410:
/* DF920 80036410 0C028D30 */  jal        func_800A34C0
/* DF924 80036414 00000000 */   nop
/* DF928 80036418 0800D910 */  j          .L80036440
/* DF92C 8003641C A6000000 */   sh        $zero, ($s0)
.L80036420:
/* DF930 80036420 0800D8F3 */  j          .L800363CC
/* DF934 80036424 00608021 */   addu      $s0, $v1, $zero
.L80036428:
/* DF938 80036428 8C840014 */  lw         $a0, 0x14($a0)
/* DF93C 8003642C 0C0326A1 */  jal        func_800C9A84
/* DF940 80036430 00000000 */   nop
/* DF944 80036434 0C02910B */  jal        func_800A442C
/* DF948 80036438 8E04000C */   lw        $a0, 0xc($s0)
/* DF94C 8003643C A6000000 */  sh         $zero, ($s0)
.L80036440:
/* DF950 80036440 A2000003 */  sb         $zero, 3($s0)
/* DF954 80036444 AE00000C */  sw         $zero, 0xc($s0)
.L80036448:
/* DF958 80036448 0800D921 */  j          .L80036484
/* DF95C 8003644C 02001021 */   addu      $v0, $s0, $zero
.L80036450:
/* DF960 80036450 00002021 */  addu       $a0, $zero, $zero
/* DF964 80036454 3C038007 */  lui        $v1, %hi(D_8006C588)
/* DF968 80036458 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
.L8003645C:
/* DF96C 8003645C 94620000 */  lhu        $v0, ($v1)
/* DF970 80036460 10400007 */  beqz       $v0, .L80036480
/* DF974 80036464 24840001 */   addiu     $a0, $a0, 1
/* DF978 80036468 3082FFFF */  andi       $v0, $a0, 0xffff
/* DF97C 8003646C 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DF980 80036470 1440FFFA */  bnez       $v0, .L8003645C
/* DF984 80036474 24630010 */   addiu     $v1, $v1, 0x10
/* DF988 80036478 0C032934 */  jal        func_800CA4D0
/* DF98C 8003647C 00000000 */   nop
.L80036480:
/* DF990 80036480 00601021 */  addu       $v0, $v1, $zero
.L80036484:
/* DF994 80036484 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF998 80036488 8FB00010 */  lw         $s0, 0x10($sp)
/* DF99C 8003648C 03E00008 */  jr         $ra
/* DF9A0 80036490 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80036494_DF9A4
/* DF9A4 80036494 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DF9A8 80036498 AFB3001C */  sw         $s3, 0x1c($sp)
/* DF9AC 8003649C 00C09821 */  addu       $s3, $a2, $zero
/* DF9B0 800364A0 AFB00010 */  sw         $s0, 0x10($sp)
/* DF9B4 800364A4 00808021 */  addu       $s0, $a0, $zero
/* DF9B8 800364A8 AFB10014 */  sw         $s1, 0x14($sp)
/* DF9BC 800364AC 00A08821 */  addu       $s1, $a1, $zero
/* DF9C0 800364B0 AFB20018 */  sw         $s2, 0x18($sp)
/* DF9C4 800364B4 02609021 */  addu       $s2, $s3, $zero
/* DF9C8 800364B8 AFBF0020 */  sw         $ra, 0x20($sp)
/* DF9CC 800364BC 0C00D8E3 */  jal        func_8003638C_DF89C
/* DF9D0 800364C0 3244FFFF */   andi      $a0, $s2, 0xffff
/* DF9D4 800364C4 3204FFFF */  andi       $a0, $s0, 0xffff
/* DF9D8 800364C8 323100FF */  andi       $s1, $s1, 0xff
/* DF9DC 800364CC 02202821 */  addu       $a1, $s1, $zero
/* DF9E0 800364D0 00003021 */  addu       $a2, $zero, $zero
/* DF9E4 800364D4 00408021 */  addu       $s0, $v0, $zero
/* DF9E8 800364D8 3402FFFF */  ori        $v0, $zero, 0xffff
/* DF9EC 800364DC A6120000 */  sh         $s2, ($s0)
/* DF9F0 800364E0 AE020008 */  sw         $v0, 8($s0)
/* DF9F4 800364E4 0C028CB7 */  jal        func_800A32DC
/* DF9F8 800364E8 AE020004 */   sw        $v0, 4($s0)
/* DF9FC 800364EC 24030063 */  addiu      $v1, $zero, 0x63
/* DFA00 800364F0 00731823 */  subu       $v1, $v1, $s3
/* DFA04 800364F4 AE02000C */  sw         $v0, 0xc($s0)
/* DFA08 800364F8 A443001C */  sh         $v1, 0x1c($v0)
/* DFA0C 800364FC 2E220007 */  sltiu      $v0, $s1, 7
/* DFA10 80036500 10400032 */  beqz       $v0, L800365CC_DFADC
/* DFA14 80036504 00111080 */   sll       $v0, $s1, 2
/* DFA18 80036508 3C018007 */  lui        $at, %hi(jtbl_80069DA0_1132B0)
/* DFA1C 8003650C 00220821 */  addu       $at, $at, $v0
/* DFA20 80036510 8C229DA0 */  lw         $v0, %lo(jtbl_80069DA0_1132B0)($at)
/* DFA24 80036514 00400008 */  jr         $v0
/* DFA28 80036518 00000000 */   nop
glabel L8003651C_DFA2C
/* DFA2C 8003651C 8E04000C */  lw         $a0, 0xc($s0)
/* DFA30 80036520 24050400 */  addiu      $a1, $zero, 0x400
/* DFA34 80036524 0C028F9A */  jal        func_800A3E68
/* DFA38 80036528 24060400 */   addiu     $a2, $zero, 0x400
/* DFA3C 8003652C 8E02000C */  lw         $v0, 0xc($s0)
/* DFA40 80036530 8C420000 */  lw         $v0, ($v0)
/* DFA44 80036534 0800D973 */  j          L800365CC_DFADC
/* DFA48 80036538 A040002F */   sb        $zero, 0x2f($v0)
glabel L8003653C_DFA4C
/* DFA4C 8003653C 8E04000C */  lw         $a0, 0xc($s0)
/* DFA50 80036540 00002821 */  addu       $a1, $zero, $zero
/* DFA54 80036544 0C02912A */  jal        func_800A44A8
/* DFA58 80036548 00003021 */   addu      $a2, $zero, $zero
/* DFA5C 8003654C 3C013F80 */  lui        $at, 0x3f80
/* DFA60 80036550 44810000 */  mtc1       $at, $f0
/* DFA64 80036554 8E04000C */  lw         $a0, 0xc($s0)
/* DFA68 80036558 44060000 */  mfc1       $a2, $f0
/* DFA6C 8003655C 00002821 */  addu       $a1, $zero, $zero
/* DFA70 80036560 0C02915B */  jal        func_800A456C
/* DFA74 80036564 00C03821 */   addu      $a3, $a2, $zero
/* DFA78 80036568 0800D974 */  j          .L800365D0
/* DFA7C 8003656C 02001021 */   addu      $v0, $s0, $zero
glabel L80036570_DFA80
/* DFA80 80036570 8E02000C */  lw         $v0, 0xc($s0)
/* DFA84 80036574 8C420000 */  lw         $v0, ($v0)
/* DFA88 80036578 A440001A */  sh         $zero, 0x1a($v0)
/* DFA8C 8003657C 8E04000C */  lw         $a0, 0xc($s0)
/* DFA90 80036580 00002821 */  addu       $a1, $zero, $zero
/* DFA94 80036584 0C02933E */  jal        func_800A4CF8
/* DFA98 80036588 00003021 */   addu      $a2, $zero, $zero
/* DFA9C 8003658C 8E04000C */  lw         $a0, 0xc($s0)
/* DFAA0 80036590 0C02932F */  jal        func_800A4CBC
/* DFAA4 80036594 00000000 */   nop
/* DFAA8 80036598 0800D974 */  j          .L800365D0
/* DFAAC 8003659C 02001021 */   addu      $v0, $s0, $zero
glabel L800365A0_DFAB0
/* DFAB0 800365A0 8E02000C */  lw         $v0, 0xc($s0)
/* DFAB4 800365A4 8C420000 */  lw         $v0, ($v0)
/* DFAB8 800365A8 A440001A */  sh         $zero, 0x1a($v0)
/* DFABC 800365AC 8E04000C */  lw         $a0, 0xc($s0)
/* DFAC0 800365B0 24050400 */  addiu      $a1, $zero, 0x400
/* DFAC4 800365B4 0C0292D4 */  jal        func_800A4B50
/* DFAC8 800365B8 24060400 */   addiu     $a2, $zero, 0x400
/* DFACC 800365BC 8E04000C */  lw         $a0, 0xc($s0)
/* DFAD0 800365C0 00002821 */  addu       $a1, $zero, $zero
/* DFAD4 800365C4 0C02933E */  jal        func_800A4CF8
/* DFAD8 800365C8 00003021 */   addu      $a2, $zero, $zero
glabel L800365CC_DFADC
/* DFADC 800365CC 02001021 */  addu       $v0, $s0, $zero
.L800365D0:
/* DFAE0 800365D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* DFAE4 800365D4 8FB3001C */  lw         $s3, 0x1c($sp)
/* DFAE8 800365D8 8FB20018 */  lw         $s2, 0x18($sp)
/* DFAEC 800365DC 8FB10014 */  lw         $s1, 0x14($sp)
/* DFAF0 800365E0 8FB00010 */  lw         $s0, 0x10($sp)
/* DFAF4 800365E4 03E00008 */  jr         $ra
/* DFAF8 800365E8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800365EC_DFAFC
/* DFAFC 800365EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DFB00 800365F0 AFB3001C */  sw         $s3, 0x1c($sp)
/* DFB04 800365F4 00809821 */  addu       $s3, $a0, $zero
/* DFB08 800365F8 AFB10014 */  sw         $s1, 0x14($sp)
/* DFB0C 800365FC 00E08821 */  addu       $s1, $a3, $zero
/* DFB10 80036600 AFB20018 */  sw         $s2, 0x18($sp)
/* DFB14 80036604 00009021 */  addu       $s2, $zero, $zero
/* DFB18 80036608 30C600FF */  andi       $a2, $a2, 0xff
/* DFB1C 8003660C AFBF0030 */  sw         $ra, 0x30($sp)
/* DFB20 80036610 AFB7002C */  sw         $s7, 0x2c($sp)
/* DFB24 80036614 AFB60028 */  sw         $s6, 0x28($sp)
/* DFB28 80036618 AFB50024 */  sw         $s5, 0x24($sp)
/* DFB2C 8003661C AFB40020 */  sw         $s4, 0x20($sp)
/* DFB30 80036620 10C0004C */  beqz       $a2, .L80036754
/* DFB34 80036624 AFB00010 */   sw        $s0, 0x10($sp)
/* DFB38 80036628 3415FFFF */  ori        $s5, $zero, 0xffff
/* DFB3C 8003662C 30B400FF */  andi       $s4, $a1, 0xff
/* DFB40 80036630 3C038007 */  lui        $v1, %hi(D_80069DC0_1132D0)
/* DFB44 80036634 24639DC0 */  addiu      $v1, $v1, %lo(D_80069DC0_1132D0)
/* DFB48 80036638 00141080 */  sll        $v0, $s4, 2
/* DFB4C 8003663C 0043B821 */  addu       $s7, $v0, $v1
/* DFB50 80036640 00C0B021 */  addu       $s6, $a2, $zero
.L80036644:
/* DFB54 80036644 0C00D8E3 */  jal        func_8003638C_DF89C
/* DFB58 80036648 3224FFFF */   andi      $a0, $s1, 0xffff
/* DFB5C 8003664C 3264FFFF */  andi       $a0, $s3, 0xffff
/* DFB60 80036650 02802821 */  addu       $a1, $s4, $zero
/* DFB64 80036654 00003021 */  addu       $a2, $zero, $zero
/* DFB68 80036658 00408021 */  addu       $s0, $v0, $zero
/* DFB6C 8003665C A6110000 */  sh         $s1, ($s0)
/* DFB70 80036660 AE150008 */  sw         $s5, 8($s0)
/* DFB74 80036664 0C028CB7 */  jal        func_800A32DC
/* DFB78 80036668 AE150004 */   sw        $s5, 4($s0)
/* DFB7C 8003666C 24030063 */  addiu      $v1, $zero, 0x63
/* DFB80 80036670 00711823 */  subu       $v1, $v1, $s1
/* DFB84 80036674 AE02000C */  sw         $v0, 0xc($s0)
/* DFB88 80036678 A443001C */  sh         $v1, 0x1c($v0)
/* DFB8C 8003667C 2E820007 */  sltiu      $v0, $s4, 7
/* DFB90 80036680 5040002F */  beql       $v0, $zero, .L80036740
/* DFB94 80036684 26730001 */   addiu     $s3, $s3, 1
/* DFB98 80036688 8EE20000 */  lw         $v0, ($s7)
/* DFB9C 8003668C 00400008 */  jr         $v0
/* DFBA0 80036690 00000000 */   nop
/* DFBA4 80036694 8E04000C */  lw         $a0, 0xc($s0)
/* DFBA8 80036698 24050400 */  addiu      $a1, $zero, 0x400
/* DFBAC 8003669C 0C028F9A */  jal        func_800A3E68
/* DFBB0 800366A0 24060400 */   addiu     $a2, $zero, 0x400
/* DFBB4 800366A4 8E02000C */  lw         $v0, 0xc($s0)
/* DFBB8 800366A8 8C420000 */  lw         $v0, ($v0)
/* DFBBC 800366AC 0800D9CF */  j          .L8003673C
/* DFBC0 800366B0 A040002F */   sb        $zero, 0x2f($v0)
/* DFBC4 800366B4 8E04000C */  lw         $a0, 0xc($s0)
/* DFBC8 800366B8 00002821 */  addu       $a1, $zero, $zero
/* DFBCC 800366BC 0C02912A */  jal        func_800A44A8
/* DFBD0 800366C0 00003021 */   addu      $a2, $zero, $zero
/* DFBD4 800366C4 3C063F80 */  lui        $a2, 0x3f80
/* DFBD8 800366C8 8E04000C */  lw         $a0, 0xc($s0)
/* DFBDC 800366CC 00002821 */  addu       $a1, $zero, $zero
/* DFBE0 800366D0 0C02915B */  jal        func_800A456C
/* DFBE4 800366D4 00C03821 */   addu      $a3, $a2, $zero
/* DFBE8 800366D8 0800D9D0 */  j          .L80036740
/* DFBEC 800366DC 26730001 */   addiu     $s3, $s3, 1
/* DFBF0 800366E0 8E02000C */  lw         $v0, 0xc($s0)
/* DFBF4 800366E4 8C420000 */  lw         $v0, ($v0)
/* DFBF8 800366E8 A440001A */  sh         $zero, 0x1a($v0)
/* DFBFC 800366EC 8E04000C */  lw         $a0, 0xc($s0)
/* DFC00 800366F0 00002821 */  addu       $a1, $zero, $zero
/* DFC04 800366F4 0C02933E */  jal        func_800A4CF8
/* DFC08 800366F8 00003021 */   addu      $a2, $zero, $zero
/* DFC0C 800366FC 8E04000C */  lw         $a0, 0xc($s0)
/* DFC10 80036700 0C02932F */  jal        func_800A4CBC
/* DFC14 80036704 26730001 */   addiu     $s3, $s3, 1
/* DFC18 80036708 0800D9D1 */  j          .L80036744
/* DFC1C 8003670C 26520001 */   addiu     $s2, $s2, 1
/* DFC20 80036710 8E02000C */  lw         $v0, 0xc($s0)
/* DFC24 80036714 8C420000 */  lw         $v0, ($v0)
/* DFC28 80036718 A440001A */  sh         $zero, 0x1a($v0)
/* DFC2C 8003671C 8E04000C */  lw         $a0, 0xc($s0)
/* DFC30 80036720 24050400 */  addiu      $a1, $zero, 0x400
/* DFC34 80036724 0C0292D4 */  jal        func_800A4B50
/* DFC38 80036728 24060400 */   addiu     $a2, $zero, 0x400
/* DFC3C 8003672C 8E04000C */  lw         $a0, 0xc($s0)
/* DFC40 80036730 00002821 */  addu       $a1, $zero, $zero
/* DFC44 80036734 0C02933E */  jal        func_800A4CF8
/* DFC48 80036738 00003021 */   addu      $a2, $zero, $zero
.L8003673C:
/* DFC4C 8003673C 26730001 */  addiu      $s3, $s3, 1
.L80036740:
/* DFC50 80036740 26520001 */  addiu      $s2, $s2, 1
.L80036744:
/* DFC54 80036744 3242FFFF */  andi       $v0, $s2, 0xffff
/* DFC58 80036748 0056102B */  sltu       $v0, $v0, $s6
/* DFC5C 8003674C 1440FFBD */  bnez       $v0, .L80036644
/* DFC60 80036750 26310001 */   addiu     $s1, $s1, 1
.L80036754:
/* DFC64 80036754 8FBF0030 */  lw         $ra, 0x30($sp)
/* DFC68 80036758 8FB7002C */  lw         $s7, 0x2c($sp)
/* DFC6C 8003675C 8FB60028 */  lw         $s6, 0x28($sp)
/* DFC70 80036760 8FB50024 */  lw         $s5, 0x24($sp)
/* DFC74 80036764 8FB40020 */  lw         $s4, 0x20($sp)
/* DFC78 80036768 8FB3001C */  lw         $s3, 0x1c($sp)
/* DFC7C 8003676C 8FB20018 */  lw         $s2, 0x18($sp)
/* DFC80 80036770 8FB10014 */  lw         $s1, 0x14($sp)
/* DFC84 80036774 8FB00010 */  lw         $s0, 0x10($sp)
/* DFC88 80036778 03E00008 */  jr         $ra
/* DFC8C 8003677C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80036780_DFC90
/* DFC90 80036780 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFC94 80036784 30A5FFFF */  andi       $a1, $a1, 0xffff
/* DFC98 80036788 30C600FF */  andi       $a2, $a2, 0xff
/* DFC9C 8003678C 30E7FFFF */  andi       $a3, $a3, 0xffff
/* DFCA0 80036790 AFBF0018 */  sw         $ra, 0x18($sp)
/* DFCA4 80036794 0C00DA00 */  jal        func_80036800_DFD10
/* DFCA8 80036798 AFA00010 */   sw        $zero, 0x10($sp)
/* DFCAC 8003679C 8FBF0018 */  lw         $ra, 0x18($sp)
/* DFCB0 800367A0 03E00008 */  jr         $ra
/* DFCB4 800367A4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800367A8_DFCB8
/* DFCB8 800367A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFCBC 800367AC 24020001 */  addiu      $v0, $zero, 1
/* DFCC0 800367B0 30A5FFFF */  andi       $a1, $a1, 0xffff
/* DFCC4 800367B4 30C600FF */  andi       $a2, $a2, 0xff
/* DFCC8 800367B8 30E7FFFF */  andi       $a3, $a3, 0xffff
/* DFCCC 800367BC AFBF0018 */  sw         $ra, 0x18($sp)
/* DFCD0 800367C0 0C00DA00 */  jal        func_80036800_DFD10
/* DFCD4 800367C4 AFA20010 */   sw        $v0, 0x10($sp)
/* DFCD8 800367C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* DFCDC 800367CC 03E00008 */  jr         $ra
/* DFCE0 800367D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800367D4_DFCE4
/* DFCE4 800367D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFCE8 800367D8 24020002 */  addiu      $v0, $zero, 2
/* DFCEC 800367DC 30A5FFFF */  andi       $a1, $a1, 0xffff
/* DFCF0 800367E0 30C600FF */  andi       $a2, $a2, 0xff
/* DFCF4 800367E4 30E7FFFF */  andi       $a3, $a3, 0xffff
/* DFCF8 800367E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* DFCFC 800367EC 0C00DA00 */  jal        func_80036800_DFD10
/* DFD00 800367F0 AFA20010 */   sw        $v0, 0x10($sp)
/* DFD04 800367F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* DFD08 800367F8 03E00008 */  jr         $ra
/* DFD0C 800367FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80036800_DFD10
/* DFD10 80036800 27BDFF90 */  addiu      $sp, $sp, -0x70
/* DFD14 80036804 93A80083 */  lbu        $t0, 0x83($sp)
/* DFD18 80036808 AFB60060 */  sw         $s6, 0x60($sp)
/* DFD1C 8003680C 0080B021 */  addu       $s6, $a0, $zero
/* DFD20 80036810 AFBE0068 */  sw         $fp, 0x68($sp)
/* DFD24 80036814 00A0F021 */  addu       $fp, $a1, $zero
/* DFD28 80036818 AFB30054 */  sw         $s3, 0x54($sp)
/* DFD2C 8003681C 03C09821 */  addu       $s3, $fp, $zero
/* DFD30 80036820 AFB1004C */  sw         $s1, 0x4c($sp)
/* DFD34 80036824 241110C9 */  addiu      $s1, $zero, 0x10c9
/* DFD38 80036828 AFB20050 */  sw         $s2, 0x50($sp)
/* DFD3C 8003682C 00009021 */  addu       $s2, $zero, $zero
/* DFD40 80036830 AFB70064 */  sw         $s7, 0x64($sp)
/* DFD44 80036834 00C0B821 */  addu       $s7, $a2, $zero
/* DFD48 80036838 32E200FF */  andi       $v0, $s7, 0xff
/* DFD4C 8003683C AFBF006C */  sw         $ra, 0x6c($sp)
/* DFD50 80036840 AFB5005C */  sw         $s5, 0x5c($sp)
/* DFD54 80036844 AFB40058 */  sw         $s4, 0x58($sp)
/* DFD58 80036848 AFB00048 */  sw         $s0, 0x48($sp)
/* DFD5C 8003684C A7A7001E */  sh         $a3, 0x1e($sp)
/* DFD60 80036850 10400021 */  beqz       $v0, .L800368D8
/* DFD64 80036854 A3A80027 */   sb        $t0, 0x27($sp)
/* DFD68 80036858 3414FFFF */  ori        $s4, $zero, 0xffff
/* DFD6C 8003685C 0040A821 */  addu       $s5, $v0, $zero
.L80036860:
/* DFD70 80036860 0C00D8E3 */  jal        func_8003638C_DF89C
/* DFD74 80036864 3224FFFF */   andi      $a0, $s1, 0xffff
/* DFD78 80036868 3264FFFF */  andi       $a0, $s3, 0xffff
/* DFD7C 8003686C 24050002 */  addiu      $a1, $zero, 2
/* DFD80 80036870 00003021 */  addu       $a2, $zero, $zero
/* DFD84 80036874 00408021 */  addu       $s0, $v0, $zero
/* DFD88 80036878 A6110000 */  sh         $s1, ($s0)
/* DFD8C 8003687C AE140008 */  sw         $s4, 8($s0)
/* DFD90 80036880 0C028CB7 */  jal        func_800A32DC
/* DFD94 80036884 AE140004 */   sw        $s4, 4($s0)
/* DFD98 80036888 24080063 */  addiu      $t0, $zero, 0x63
/* DFD9C 8003688C 01111823 */  subu       $v1, $t0, $s1
/* DFDA0 80036890 AE02000C */  sw         $v0, 0xc($s0)
/* DFDA4 80036894 A443001C */  sh         $v1, 0x1c($v0)
/* DFDA8 80036898 8E04000C */  lw         $a0, 0xc($s0)
/* DFDAC 8003689C 00002821 */  addu       $a1, $zero, $zero
/* DFDB0 800368A0 00003021 */  addu       $a2, $zero, $zero
/* DFDB4 800368A4 26730001 */  addiu      $s3, $s3, 1
/* DFDB8 800368A8 26310001 */  addiu      $s1, $s1, 1
/* DFDBC 800368AC 0C02912A */  jal        func_800A44A8
/* DFDC0 800368B0 26520001 */   addiu     $s2, $s2, 1
/* DFDC4 800368B4 3C063F80 */  lui        $a2, 0x3f80
/* DFDC8 800368B8 8E04000C */  lw         $a0, 0xc($s0)
/* DFDCC 800368BC 00002821 */  addu       $a1, $zero, $zero
/* DFDD0 800368C0 0C02915B */  jal        func_800A456C
/* DFDD4 800368C4 00C03821 */   addu      $a3, $a2, $zero
/* DFDD8 800368C8 3242FFFF */  andi       $v0, $s2, 0xffff
/* DFDDC 800368CC 0055102B */  sltu       $v0, $v0, $s5
/* DFDE0 800368D0 1440FFE3 */  bnez       $v0, .L80036860
/* DFDE4 800368D4 00000000 */   nop
.L800368D8:
/* DFDE8 800368D8 16C0002A */  bnez       $s6, .L80036984
/* DFDEC 800368DC 02C0A821 */   addu      $s5, $s6, $zero
/* DFDF0 800368E0 0C032663 */  jal        func_800C998C
/* DFDF4 800368E4 24040010 */   addiu     $a0, $zero, 0x10
/* DFDF8 800368E8 0040A821 */  addu       $s5, $v0, $zero
/* DFDFC 800368EC 02A02021 */  addu       $a0, $s5, $zero
/* DFE00 800368F0 0C030134 */  jal        bzero
/* DFE04 800368F4 24050010 */   addiu     $a1, $zero, 0x10
/* DFE08 800368F8 0C032663 */  jal        func_800C998C
/* DFE0C 800368FC 24040400 */   addiu     $a0, $zero, 0x400
/* DFE10 80036900 AFA20034 */  sw         $v0, 0x34($sp)
/* DFE14 80036904 8FA40034 */  lw         $a0, 0x34($sp)
/* DFE18 80036908 0C030134 */  jal        bzero
/* DFE1C 8003690C 24050400 */   addiu     $a1, $zero, 0x400
/* DFE20 80036910 00009821 */  addu       $s3, $zero, $zero
/* DFE24 80036914 32E300FF */  andi       $v1, $s7, 0xff
/* DFE28 80036918 02C3102B */  sltu       $v0, $s6, $v1
/* DFE2C 8003691C 10400012 */  beqz       $v0, .L80036968
/* DFE30 80036920 00008021 */   addu      $s0, $zero, $zero
/* DFE34 80036924 33C5FFFF */  andi       $a1, $fp, 0xffff
/* DFE38 80036928 00602021 */  addu       $a0, $v1, $zero
/* DFE3C 8003692C 3263FFFF */  andi       $v1, $s3, 0xffff
.L80036930:
/* DFE40 80036930 00A31821 */  addu       $v1, $a1, $v1
/* DFE44 80036934 00031040 */  sll        $v0, $v1, 1
/* DFE48 80036938 00431021 */  addu       $v0, $v0, $v1
/* DFE4C 8003693C 00021080 */  sll        $v0, $v0, 2
/* DFE50 80036940 3C03800D */  lui        $v1, %hi(D_800D6AD8)
/* DFE54 80036944 00621821 */  addu       $v1, $v1, $v0
/* DFE58 80036948 8C636AD8 */  lw         $v1, %lo(D_800D6AD8)($v1)
/* DFE5C 8003694C 26730001 */  addiu      $s3, $s3, 1
/* DFE60 80036950 2602FFF0 */  addiu      $v0, $s0, -0x10
/* DFE64 80036954 00438021 */  addu       $s0, $v0, $v1
/* DFE68 80036958 3262FFFF */  andi       $v0, $s3, 0xffff
/* DFE6C 8003695C 0044102B */  sltu       $v0, $v0, $a0
/* DFE70 80036960 1440FFF3 */  bnez       $v0, .L80036930
/* DFE74 80036964 3263FFFF */   andi      $v1, $s3, 0xffff
.L80036968:
/* DFE78 80036968 00108040 */  sll        $s0, $s0, 1
/* DFE7C 8003696C 0C032663 */  jal        func_800C998C
/* DFE80 80036970 02002021 */   addu      $a0, $s0, $zero
/* DFE84 80036974 AFA2002C */  sw         $v0, 0x2c($sp)
/* DFE88 80036978 8FA4002C */  lw         $a0, 0x2c($sp)
/* DFE8C 8003697C 0800DA67 */  j          .L8003699C
/* DFE90 80036980 02002821 */   addu      $a1, $s0, $zero
.L80036984:
/* DFE94 80036984 26A80010 */  addiu      $t0, $s5, 0x10
/* DFE98 80036988 AFA80034 */  sw         $t0, 0x34($sp)
/* DFE9C 8003698C 26A80410 */  addiu      $t0, $s5, 0x410
/* DFEA0 80036990 02A02021 */  addu       $a0, $s5, $zero
/* DFEA4 80036994 24050410 */  addiu      $a1, $zero, 0x410
/* DFEA8 80036998 AFA8002C */  sw         $t0, 0x2c($sp)
.L8003699C:
/* DFEAC 8003699C 0C030134 */  jal        bzero
/* DFEB0 800369A0 00009821 */   addu      $s3, $zero, $zero
/* DFEB4 800369A4 8FA80034 */  lw         $t0, 0x34($sp)
/* DFEB8 800369A8 32E200FF */  andi       $v0, $s7, 0xff
/* DFEBC 800369AC 1040001C */  beqz       $v0, .L80036A20
/* DFEC0 800369B0 AFA8003C */   sw        $t0, 0x3c($sp)
/* DFEC4 800369B4 240510C9 */  addiu      $a1, $zero, 0x10c9
/* DFEC8 800369B8 00403021 */  addu       $a2, $v0, $zero
/* DFECC 800369BC 00002021 */  addu       $a0, $zero, $zero
.L800369C0:
/* DFED0 800369C0 3C038007 */  lui        $v1, %hi(D_8006C588)
/* DFED4 800369C4 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
.L800369C8:
/* DFED8 800369C8 94620000 */  lhu        $v0, ($v1)
/* DFEDC 800369CC 54450003 */  bnel       $v0, $a1, .L800369DC
/* DFEE0 800369D0 24840001 */   addiu     $a0, $a0, 1
/* DFEE4 800369D4 0800DA7C */  j          .L800369F0
/* DFEE8 800369D8 00608821 */   addu      $s1, $v1, $zero
.L800369DC:
/* DFEEC 800369DC 3082FFFF */  andi       $v0, $a0, 0xffff
/* DFEF0 800369E0 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DFEF4 800369E4 1440FFF8 */  bnez       $v0, .L800369C8
/* DFEF8 800369E8 24630010 */   addiu     $v1, $v1, 0x10
/* DFEFC 800369EC 00008821 */  addu       $s1, $zero, $zero
.L800369F0:
/* DFF00 800369F0 8E22000C */  lw         $v0, 0xc($s1)
/* DFF04 800369F4 8C42000C */  lw         $v0, 0xc($v0)
/* DFF08 800369F8 94430000 */  lhu        $v1, ($v0)
/* DFF0C 800369FC 96A20000 */  lhu        $v0, ($s5)
/* DFF10 80036A00 0043102B */  sltu       $v0, $v0, $v1
/* DFF14 80036A04 54400001 */  bnezl      $v0, .L80036A0C
/* DFF18 80036A08 A6A30000 */   sh        $v1, ($s5)
.L80036A0C:
/* DFF1C 80036A0C 26730001 */  addiu      $s3, $s3, 1
/* DFF20 80036A10 3262FFFF */  andi       $v0, $s3, 0xffff
/* DFF24 80036A14 0046102B */  sltu       $v0, $v0, $a2
/* DFF28 80036A18 5440FFE9 */  bnezl      $v0, .L800369C0
/* DFF2C 80036A1C 00002021 */   addu      $a0, $zero, $zero
.L80036A20:
/* DFF30 80036A20 24020001 */  addiu      $v0, $zero, 1
/* DFF34 80036A24 A2A20004 */  sb         $v0, 4($s5)
/* DFF38 80036A28 32E600FF */  andi       $a2, $s7, 0xff
/* DFF3C 80036A2C 10C00090 */  beqz       $a2, .L80036C70
/* DFF40 80036A30 00009821 */   addu      $s3, $zero, $zero
/* DFF44 80036A34 93B70027 */  lbu        $s7, 0x27($sp)
/* DFF48 80036A38 241E0001 */  addiu      $fp, $zero, 1
/* DFF4C 80036A3C AFA60044 */  sw         $a2, 0x44($sp)
/* DFF50 80036A40 266210C9 */  addiu      $v0, $s3, 0x10c9
.L80036A44:
/* DFF54 80036A44 00002021 */  addu       $a0, $zero, $zero
/* DFF58 80036A48 3C038007 */  lui        $v1, %hi(D_8006C588)
/* DFF5C 80036A4C 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* DFF60 80036A50 3045FFFF */  andi       $a1, $v0, 0xffff
.L80036A54:
/* DFF64 80036A54 94620000 */  lhu        $v0, ($v1)
/* DFF68 80036A58 10450075 */  beq        $v0, $a1, .L80036C30
/* DFF6C 80036A5C 24840001 */   addiu     $a0, $a0, 1
/* DFF70 80036A60 3082FFFF */  andi       $v0, $a0, 0xffff
/* DFF74 80036A64 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* DFF78 80036A68 1440FFFA */  bnez       $v0, .L80036A54
/* DFF7C 80036A6C 24630010 */   addiu     $v1, $v1, 0x10
/* DFF80 80036A70 00008821 */  addu       $s1, $zero, $zero
.L80036A74:
/* DFF84 80036A74 8E22000C */  lw         $v0, 0xc($s1)
/* DFF88 80036A78 8C43000C */  lw         $v1, 0xc($v0)
/* DFF8C 80036A7C 94630002 */  lhu        $v1, 2($v1)
/* DFF90 80036A80 8C520010 */  lw         $s2, 0x10($v0)
/* DFF94 80036A84 1060004A */  beqz       $v1, .L80036BB0
/* DFF98 80036A88 0000A021 */   addu      $s4, $zero, $zero
/* DFF9C 80036A8C 3262FFFF */  andi       $v0, $s3, 0xffff
/* DFFA0 80036A90 0002B100 */  sll        $s6, $v0, 4
.L80036A94:
/* DFFA4 80036A94 96A20002 */  lhu        $v0, 2($s5)
/* DFFA8 80036A98 96A50000 */  lhu        $a1, ($s5)
/* DFFAC 80036A9C 00450018 */  mult       $v0, $a1
/* DFFB0 80036AA0 00001012 */  mflo       $v0
/* DFFB4 80036AA4 3283FFFF */  andi       $v1, $s4, 0xffff
/* DFFB8 80036AA8 00000000 */  nop
/* DFFBC 80036AAC 00650018 */  mult       $v1, $a1
/* DFFC0 80036AB0 00001812 */  mflo       $v1
/* DFFC4 80036AB4 8FA8002C */  lw         $t0, 0x2c($sp)
/* DFFC8 80036AB8 01021021 */  addu       $v0, $t0, $v0
/* DFFCC 80036ABC 00438021 */  addu       $s0, $v0, $v1
/* DFFD0 80036AC0 0C030134 */  jal        bzero
/* DFFD4 80036AC4 02002021 */   addu      $a0, $s0, $zero
/* DFFD8 80036AC8 16FE000D */  bne        $s7, $fp, .L80036B00
/* DFFDC 80036ACC 24020002 */   addiu     $v0, $zero, 2
/* DFFE0 80036AD0 8E22000C */  lw         $v0, 0xc($s1)
/* DFFE4 80036AD4 8C42000C */  lw         $v0, 0xc($v0)
/* DFFE8 80036AD8 96A40000 */  lhu        $a0, ($s5)
/* DFFEC 80036ADC 94430000 */  lhu        $v1, ($v0)
/* DFFF0 80036AE0 0064102B */  sltu       $v0, $v1, $a0
/* DFFF4 80036AE4 10400005 */  beqz       $v0, .L80036AFC
/* DFFF8 80036AE8 00831023 */   subu      $v0, $a0, $v1
/* DFFFC 80036AEC 00021FC2 */  srl        $v1, $v0, 0x1f
/* E0000 80036AF0 00431021 */  addu       $v0, $v0, $v1
/* E0004 80036AF4 00021043 */  sra        $v0, $v0, 1
/* E0008 80036AF8 02028021 */  addu       $s0, $s0, $v0
.L80036AFC:
/* E000C 80036AFC 24020002 */  addiu      $v0, $zero, 2
.L80036B00:
/* E0010 80036B00 16E20009 */  bne        $s7, $v0, .L80036B28
/* E0014 80036B04 00000000 */   nop
/* E0018 80036B08 8E22000C */  lw         $v0, 0xc($s1)
/* E001C 80036B0C 8C42000C */  lw         $v0, 0xc($v0)
/* E0020 80036B10 96A40000 */  lhu        $a0, ($s5)
/* E0024 80036B14 94430000 */  lhu        $v1, ($v0)
/* E0028 80036B18 0064102B */  sltu       $v0, $v1, $a0
/* E002C 80036B1C 10400002 */  beqz       $v0, .L80036B28
/* E0030 80036B20 00831023 */   subu      $v0, $a0, $v1
/* E0034 80036B24 02028021 */  addu       $s0, $s0, $v0
.L80036B28:
/* E0038 80036B28 8E22000C */  lw         $v0, 0xc($s1)
/* E003C 80036B2C 8C42000C */  lw         $v0, 0xc($v0)
/* E0040 80036B30 94420000 */  lhu        $v0, ($v0)
/* E0044 80036B34 00021042 */  srl        $v0, $v0, 1
/* E0048 80036B38 10400014 */  beqz       $v0, .L80036B8C
/* E004C 80036B3C 00002021 */   addu      $a0, $zero, $zero
.L80036B40:
/* E0050 80036B40 92420000 */  lbu        $v0, ($s2)
/* E0054 80036B44 00021102 */  srl        $v0, $v0, 4
/* E0058 80036B48 00561021 */  addu       $v0, $v0, $s6
/* E005C 80036B4C A2020000 */  sb         $v0, ($s0)
/* E0060 80036B50 92420000 */  lbu        $v0, ($s2)
/* E0064 80036B54 26100001 */  addiu      $s0, $s0, 1
/* E0068 80036B58 3042000F */  andi       $v0, $v0, 0xf
/* E006C 80036B5C 00561021 */  addu       $v0, $v0, $s6
/* E0070 80036B60 A2020000 */  sb         $v0, ($s0)
/* E0074 80036B64 8E22000C */  lw         $v0, 0xc($s1)
/* E0078 80036B68 8C42000C */  lw         $v0, 0xc($v0)
/* E007C 80036B6C 24840001 */  addiu      $a0, $a0, 1
/* E0080 80036B70 26520001 */  addiu      $s2, $s2, 1
/* E0084 80036B74 94430000 */  lhu        $v1, ($v0)
/* E0088 80036B78 3082FFFF */  andi       $v0, $a0, 0xffff
/* E008C 80036B7C 00031842 */  srl        $v1, $v1, 1
/* E0090 80036B80 0043102B */  sltu       $v0, $v0, $v1
/* E0094 80036B84 1440FFEE */  bnez       $v0, .L80036B40
/* E0098 80036B88 26100001 */   addiu     $s0, $s0, 1
.L80036B8C:
/* E009C 80036B8C 8E22000C */  lw         $v0, 0xc($s1)
/* E00A0 80036B90 8C42000C */  lw         $v0, 0xc($v0)
/* E00A4 80036B94 94430002 */  lhu        $v1, 2($v0)
/* E00A8 80036B98 26940001 */  addiu      $s4, $s4, 1
/* E00AC 80036B9C 3282FFFF */  andi       $v0, $s4, 0xffff
/* E00B0 80036BA0 0043102B */  sltu       $v0, $v0, $v1
/* E00B4 80036BA4 1440FFBB */  bnez       $v0, .L80036A94
/* E00B8 80036BA8 00000000 */   nop
/* E00BC 80036BAC 8E22000C */  lw         $v0, 0xc($s1)
.L80036BB0:
/* E00C0 80036BB0 8C43000C */  lw         $v1, 0xc($v0)
/* E00C4 80036BB4 96A20002 */  lhu        $v0, 2($s5)
/* E00C8 80036BB8 94630002 */  lhu        $v1, 2($v1)
/* E00CC 80036BBC 00431021 */  addu       $v0, $v0, $v1
/* E00D0 80036BC0 A6A20002 */  sh         $v0, 2($s5)
/* E00D4 80036BC4 8E22000C */  lw         $v0, 0xc($s1)
/* E00D8 80036BC8 8FA5003C */  lw         $a1, 0x3c($sp)
/* E00DC 80036BCC 8C440014 */  lw         $a0, 0x14($v0)
/* E00E0 80036BD0 0C03006C */  jal        func_800C01B0
/* E00E4 80036BD4 24060020 */   addiu     $a2, $zero, 0x20
/* E00E8 80036BD8 8FA8003C */  lw         $t0, 0x3c($sp)
/* E00EC 80036BDC 82220002 */  lb         $v0, 2($s1)
/* E00F0 80036BE0 25080020 */  addiu      $t0, $t0, 0x20
/* E00F4 80036BE4 105E001C */  beq        $v0, $fp, .L80036C58
/* E00F8 80036BE8 AFA8003C */   sw        $t0, 0x3c($sp)
/* E00FC 80036BEC 8E24000C */  lw         $a0, 0xc($s1)
/* E0100 80036BF0 8C83000C */  lw         $v1, 0xc($a0)
/* E0104 80036BF4 3C02802F */  lui        $v0, 0x802f
/* E0108 80036BF8 344297FF */  ori        $v0, $v0, 0x97ff
/* E010C 80036BFC 0043102B */  sltu       $v0, $v0, $v1
/* E0110 80036C00 1440000D */  bnez       $v0, .L80036C38
/* E0114 80036C04 00000000 */   nop
/* E0118 80036C08 82220003 */  lb         $v0, 3($s1)
/* E011C 80036C0C 145E0004 */  bne        $v0, $fp, .L80036C20
/* E0120 80036C10 00000000 */   nop
/* E0124 80036C14 0C0326A1 */  jal        func_800C9A84
/* E0128 80036C18 8C840010 */   lw        $a0, 0x10($a0)
/* E012C 80036C1C 8E24000C */  lw         $a0, 0xc($s1)
.L80036C20:
/* E0130 80036C20 0C028D30 */  jal        func_800A34C0
/* E0134 80036C24 00000000 */   nop
/* E0138 80036C28 0800DB14 */  j          .L80036C50
/* E013C 80036C2C A6200000 */   sh        $zero, ($s1)
.L80036C30:
/* E0140 80036C30 0800DA9D */  j          .L80036A74
/* E0144 80036C34 00608821 */   addu      $s1, $v1, $zero
.L80036C38:
/* E0148 80036C38 8C840014 */  lw         $a0, 0x14($a0)
/* E014C 80036C3C 0C0326A1 */  jal        func_800C9A84
/* E0150 80036C40 00000000 */   nop
/* E0154 80036C44 0C02910B */  jal        func_800A442C
/* E0158 80036C48 8E24000C */   lw        $a0, 0xc($s1)
/* E015C 80036C4C A6200000 */  sh         $zero, ($s1)
.L80036C50:
/* E0160 80036C50 A2200003 */  sb         $zero, 3($s1)
/* E0164 80036C54 AE20000C */  sw         $zero, 0xc($s1)
.L80036C58:
/* E0168 80036C58 8FA80044 */  lw         $t0, 0x44($sp)
/* E016C 80036C5C 26730001 */  addiu      $s3, $s3, 1
/* E0170 80036C60 3262FFFF */  andi       $v0, $s3, 0xffff
/* E0174 80036C64 0048102B */  sltu       $v0, $v0, $t0
/* E0178 80036C68 1440FF76 */  bnez       $v0, .L80036A44
/* E017C 80036C6C 266210C9 */   addiu     $v0, $s3, 0x10c9
.L80036C70:
/* E0180 80036C70 97A4001E */  lhu        $a0, 0x1e($sp)
/* E0184 80036C74 0C00D8E3 */  jal        func_8003638C_DF89C
/* E0188 80036C78 00000000 */   nop
/* E018C 80036C7C 02A02021 */  addu       $a0, $s5, $zero
/* E0190 80036C80 8FA5002C */  lw         $a1, 0x2c($sp)
/* E0194 80036C84 8FA60034 */  lw         $a2, 0x34($sp)
/* E0198 80036C88 24070001 */  addiu      $a3, $zero, 1
/* E019C 80036C8C 97A8001E */  lhu        $t0, 0x1e($sp)
/* E01A0 80036C90 00408021 */  addu       $s0, $v0, $zero
/* E01A4 80036C94 3402FFFF */  ori        $v0, $zero, 0xffff
/* E01A8 80036C98 AE020008 */  sw         $v0, 8($s0)
/* E01AC 80036C9C AE020004 */  sw         $v0, 4($s0)
/* E01B0 80036CA0 24020001 */  addiu      $v0, $zero, 1
/* E01B4 80036CA4 A2020003 */  sb         $v0, 3($s0)
/* E01B8 80036CA8 A6080000 */  sh         $t0, ($s0)
/* E01BC 80036CAC 0C028FA6 */  jal        func_800A3E98
/* E01C0 80036CB0 AFA00010 */   sw        $zero, 0x10($sp)
/* E01C4 80036CB4 AE02000C */  sw         $v0, 0xc($s0)
/* E01C8 80036CB8 97A8001E */  lhu        $t0, 0x1e($sp)
/* E01CC 80036CBC 3C013F80 */  lui        $at, 0x3f80
/* E01D0 80036CC0 44810000 */  mtc1       $at, $f0
/* E01D4 80036CC4 24030063 */  addiu      $v1, $zero, 0x63
/* E01D8 80036CC8 00681823 */  subu       $v1, $v1, $t0
/* E01DC 80036CCC A443001C */  sh         $v1, 0x1c($v0)
/* E01E0 80036CD0 8E04000C */  lw         $a0, 0xc($s0)
/* E01E4 80036CD4 44060000 */  mfc1       $a2, $f0
/* E01E8 80036CD8 00002821 */  addu       $a1, $zero, $zero
/* E01EC 80036CDC 0C02915B */  jal        func_800A456C
/* E01F0 80036CE0 00C03821 */   addu      $a3, $a2, $zero
/* E01F4 80036CE4 02001021 */  addu       $v0, $s0, $zero
/* E01F8 80036CE8 8FBF006C */  lw         $ra, 0x6c($sp)
/* E01FC 80036CEC 8FBE0068 */  lw         $fp, 0x68($sp)
/* E0200 80036CF0 8FB70064 */  lw         $s7, 0x64($sp)
/* E0204 80036CF4 8FB60060 */  lw         $s6, 0x60($sp)
/* E0208 80036CF8 8FB5005C */  lw         $s5, 0x5c($sp)
/* E020C 80036CFC 8FB40058 */  lw         $s4, 0x58($sp)
/* E0210 80036D00 8FB30054 */  lw         $s3, 0x54($sp)
/* E0214 80036D04 8FB20050 */  lw         $s2, 0x50($sp)
/* E0218 80036D08 8FB1004C */  lw         $s1, 0x4c($sp)
/* E021C 80036D0C 8FB00048 */  lw         $s0, 0x48($sp)
/* E0220 80036D10 03E00008 */  jr         $ra
/* E0224 80036D14 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_80036D18_E0228
/* E0228 80036D18 27BDFF90 */  addiu      $sp, $sp, -0x70
/* E022C 80036D1C 93A80083 */  lbu        $t0, 0x83($sp)
/* E0230 80036D20 AFB20050 */  sw         $s2, 0x50($sp)
/* E0234 80036D24 A3A80027 */  sb         $t0, 0x27($sp)
/* E0238 80036D28 97A80086 */  lhu        $t0, 0x86($sp)
/* E023C 80036D2C 00809021 */  addu       $s2, $a0, $zero
/* E0240 80036D30 240410C9 */  addiu      $a0, $zero, 0x10c9
/* E0244 80036D34 AFB00048 */  sw         $s0, 0x48($sp)
/* E0248 80036D38 00A08021 */  addu       $s0, $a1, $zero
/* E024C 80036D3C AFBE0068 */  sw         $fp, 0x68($sp)
/* E0250 80036D40 00C0F021 */  addu       $fp, $a2, $zero
/* E0254 80036D44 AFBF006C */  sw         $ra, 0x6c($sp)
/* E0258 80036D48 AFB70064 */  sw         $s7, 0x64($sp)
/* E025C 80036D4C AFB60060 */  sw         $s6, 0x60($sp)
/* E0260 80036D50 AFB5005C */  sw         $s5, 0x5c($sp)
/* E0264 80036D54 AFB40058 */  sw         $s4, 0x58($sp)
/* E0268 80036D58 AFB30054 */  sw         $s3, 0x54($sp)
/* E026C 80036D5C AFB1004C */  sw         $s1, 0x4c($sp)
/* E0270 80036D60 A3A7001F */  sb         $a3, 0x1f($sp)
/* E0274 80036D64 0C00D8E3 */  jal        func_8003638C_DF89C
/* E0278 80036D68 A7A8002E */   sh        $t0, 0x2e($sp)
/* E027C 80036D6C 3211FFFF */  andi       $s1, $s0, 0xffff
/* E0280 80036D70 02202021 */  addu       $a0, $s1, $zero
/* E0284 80036D74 24050002 */  addiu      $a1, $zero, 2
/* E0288 80036D78 00003021 */  addu       $a2, $zero, $zero
/* E028C 80036D7C 240310C9 */  addiu      $v1, $zero, 0x10c9
/* E0290 80036D80 00408021 */  addu       $s0, $v0, $zero
/* E0294 80036D84 3402FFFF */  ori        $v0, $zero, 0xffff
/* E0298 80036D88 A6030000 */  sh         $v1, ($s0)
/* E029C 80036D8C AE020008 */  sw         $v0, 8($s0)
/* E02A0 80036D90 0C028CB7 */  jal        func_800A32DC
/* E02A4 80036D94 AE020004 */   sw        $v0, 4($s0)
/* E02A8 80036D98 2403EF9A */  addiu      $v1, $zero, -0x1066
/* E02AC 80036D9C AE02000C */  sw         $v0, 0xc($s0)
/* E02B0 80036DA0 A443001C */  sh         $v1, 0x1c($v0)
/* E02B4 80036DA4 8E04000C */  lw         $a0, 0xc($s0)
/* E02B8 80036DA8 00002821 */  addu       $a1, $zero, $zero
/* E02BC 80036DAC 0C02912A */  jal        func_800A44A8
/* E02C0 80036DB0 00003021 */   addu      $a2, $zero, $zero
/* E02C4 80036DB4 3C063F80 */  lui        $a2, 0x3f80
/* E02C8 80036DB8 8E04000C */  lw         $a0, 0xc($s0)
/* E02CC 80036DBC 00002821 */  addu       $a1, $zero, $zero
/* E02D0 80036DC0 0C02915B */  jal        func_800A456C
/* E02D4 80036DC4 00C03821 */   addu      $a3, $a2, $zero
/* E02D8 80036DC8 16400022 */  bnez       $s2, .L80036E54
/* E02DC 80036DCC 02009821 */   addu      $s3, $s0, $zero
/* E02E0 80036DD0 0C032663 */  jal        func_800C998C
/* E02E4 80036DD4 24040010 */   addiu     $a0, $zero, 0x10
/* E02E8 80036DD8 AFA20034 */  sw         $v0, 0x34($sp)
/* E02EC 80036DDC 8FA40034 */  lw         $a0, 0x34($sp)
/* E02F0 80036DE0 0C030134 */  jal        bzero
/* E02F4 80036DE4 24050010 */   addiu     $a1, $zero, 0x10
/* E02F8 80036DE8 0C032663 */  jal        func_800C998C
/* E02FC 80036DEC 24040200 */   addiu     $a0, $zero, 0x200
/* E0300 80036DF0 AFA20044 */  sw         $v0, 0x44($sp)
/* E0304 80036DF4 8FA40044 */  lw         $a0, 0x44($sp)
/* E0308 80036DF8 0C030134 */  jal        bzero
/* E030C 80036DFC 24050200 */   addiu     $a1, $zero, 0x200
/* E0310 80036E00 93A2001F */  lbu        $v0, 0x1f($sp)
/* E0314 80036E04 33C300FF */  andi       $v1, $fp, 0xff
/* E0318 80036E08 00620018 */  mult       $v1, $v0
/* E031C 80036E0C 00001812 */  mflo       $v1
/* E0320 80036E10 00111040 */  sll        $v0, $s1, 1
/* E0324 80036E14 00511021 */  addu       $v0, $v0, $s1
/* E0328 80036E18 00021080 */  sll        $v0, $v0, 2
/* E032C 80036E1C 3C10800D */  lui        $s0, %hi(D_800D6AD8)
/* E0330 80036E20 02028021 */  addu       $s0, $s0, $v0
/* E0334 80036E24 8E106AD8 */  lw         $s0, %lo(D_800D6AD8)($s0)
/* E0338 80036E28 2610FFF0 */  addiu      $s0, $s0, -0x10
/* E033C 80036E2C 02030018 */  mult       $s0, $v1
/* E0340 80036E30 00008012 */  mflo       $s0
/* E0344 80036E34 00000000 */  nop
/* E0348 80036E38 00000000 */  nop
/* E034C 80036E3C 0C032663 */  jal        func_800C998C
/* E0350 80036E40 02002021 */   addu      $a0, $s0, $zero
/* E0354 80036E44 AFA2003C */  sw         $v0, 0x3c($sp)
/* E0358 80036E48 8FA4003C */  lw         $a0, 0x3c($sp)
/* E035C 80036E4C 0800DB9C */  j          .L80036E70
/* E0360 80036E50 02002821 */   addu      $a1, $s0, $zero
.L80036E54:
/* E0364 80036E54 AFB20034 */  sw         $s2, 0x34($sp)
/* E0368 80036E58 8FA40034 */  lw         $a0, 0x34($sp)
/* E036C 80036E5C 26480010 */  addiu      $t0, $s2, 0x10
/* E0370 80036E60 AFA80044 */  sw         $t0, 0x44($sp)
/* E0374 80036E64 26480210 */  addiu      $t0, $s2, 0x210
/* E0378 80036E68 24050210 */  addiu      $a1, $zero, 0x210
/* E037C 80036E6C AFA8003C */  sw         $t0, 0x3c($sp)
.L80036E70:
/* E0380 80036E70 0C030134 */  jal        bzero
/* E0384 80036E74 00000000 */   nop
/* E0388 80036E78 8E62000C */  lw         $v0, 0xc($s3)
/* E038C 80036E7C 8C42000C */  lw         $v0, 0xc($v0)
/* E0390 80036E80 94420000 */  lhu        $v0, ($v0)
/* E0394 80036E84 33C300FF */  andi       $v1, $fp, 0xff
/* E0398 80036E88 00430018 */  mult       $v0, $v1
/* E039C 80036E8C 00001012 */  mflo       $v0
/* E03A0 80036E90 8FA80034 */  lw         $t0, 0x34($sp)
/* E03A4 80036E94 A5020000 */  sh         $v0, ($t0)
/* E03A8 80036E98 8E62000C */  lw         $v0, 0xc($s3)
/* E03AC 80036E9C 8C42000C */  lw         $v0, 0xc($v0)
/* E03B0 80036EA0 93A3001F */  lbu        $v1, 0x1f($sp)
/* E03B4 80036EA4 94420002 */  lhu        $v0, 2($v0)
/* E03B8 80036EA8 00430018 */  mult       $v0, $v1
/* E03BC 80036EAC 00001012 */  mflo       $v0
/* E03C0 80036EB0 A5020002 */  sh         $v0, 2($t0)
/* E03C4 80036EB4 8E62000C */  lw         $v0, 0xc($s3)
/* E03C8 80036EB8 8C42000C */  lw         $v0, 0xc($v0)
/* E03CC 80036EBC 90420004 */  lbu        $v0, 4($v0)
/* E03D0 80036EC0 A1020004 */  sb         $v0, 4($t0)
/* E03D4 80036EC4 8E63000C */  lw         $v1, 0xc($s3)
/* E03D8 80036EC8 8C62000C */  lw         $v0, 0xc($v1)
/* E03DC 80036ECC 90420004 */  lbu        $v0, 4($v0)
/* E03E0 80036ED0 8FB5003C */  lw         $s5, 0x3c($sp)
/* E03E4 80036ED4 14400005 */  bnez       $v0, .L80036EEC
/* E03E8 80036ED8 24060200 */   addiu     $a2, $zero, 0x200
/* E03EC 80036EDC 8C640014 */  lw         $a0, 0x14($v1)
/* E03F0 80036EE0 8FA50044 */  lw         $a1, 0x44($sp)
/* E03F4 80036EE4 0800DBBD */  j          .L80036EF4
/* E03F8 80036EE8 24060020 */   addiu     $a2, $zero, 0x20
.L80036EEC:
/* E03FC 80036EEC 8C640014 */  lw         $a0, 0x14($v1)
/* E0400 80036EF0 8FA50044 */  lw         $a1, 0x44($sp)
.L80036EF4:
/* E0404 80036EF4 0C03006C */  jal        func_800C01B0
/* E0408 80036EF8 00000000 */   nop
/* E040C 80036EFC 8E62000C */  lw         $v0, 0xc($s3)
/* E0410 80036F00 8C42000C */  lw         $v0, 0xc($v0)
/* E0414 80036F04 90430004 */  lbu        $v1, 4($v0)
/* E0418 80036F08 14600038 */  bnez       $v1, .L80036FEC
/* E041C 80036F0C 00000000 */   nop
/* E0420 80036F10 93A2001F */  lbu        $v0, 0x1f($sp)
/* E0424 80036F14 0062102B */  sltu       $v0, $v1, $v0
/* E0428 80036F18 10400065 */  beqz       $v0, .L800370B0
/* E042C 80036F1C 0000B021 */   addu      $s6, $zero, $zero
/* E0430 80036F20 33C200FF */  andi       $v0, $fp, 0xff
/* E0434 80036F24 0002B82B */  sltu       $s7, $zero, $v0
.L80036F28:
/* E0438 80036F28 8E64000C */  lw         $a0, 0xc($s3)
/* E043C 80036F2C 8C82000C */  lw         $v0, 0xc($a0)
/* E0440 80036F30 94420002 */  lhu        $v0, 2($v0)
/* E0444 80036F34 10400025 */  beqz       $v0, .L80036FCC
/* E0448 80036F38 00008821 */   addu      $s1, $zero, $zero
.L80036F3C:
/* E044C 80036F3C 8C82000C */  lw         $v0, 0xc($a0)
/* E0450 80036F40 94420000 */  lhu        $v0, ($v0)
/* E0454 80036F44 3223FFFF */  andi       $v1, $s1, 0xffff
/* E0458 80036F48 00021042 */  srl        $v0, $v0, 1
/* E045C 80036F4C 00430018 */  mult       $v0, $v1
/* E0460 80036F50 00001012 */  mflo       $v0
/* E0464 80036F54 8C830010 */  lw         $v1, 0x10($a0)
/* E0468 80036F58 00008021 */  addu       $s0, $zero, $zero
/* E046C 80036F5C 12E00013 */  beqz       $s7, .L80036FAC
/* E0470 80036F60 00629021 */   addu      $s2, $v1, $v0
/* E0474 80036F64 33D400FF */  andi       $s4, $fp, 0xff
.L80036F68:
/* E0478 80036F68 8E62000C */  lw         $v0, 0xc($s3)
/* E047C 80036F6C 8C42000C */  lw         $v0, 0xc($v0)
/* E0480 80036F70 94460000 */  lhu        $a2, ($v0)
/* E0484 80036F74 02402021 */  addu       $a0, $s2, $zero
/* E0488 80036F78 02A02821 */  addu       $a1, $s5, $zero
/* E048C 80036F7C 0C03006C */  jal        func_800C01B0
/* E0490 80036F80 00063042 */   srl       $a2, $a2, 1
/* E0494 80036F84 8E62000C */  lw         $v0, 0xc($s3)
/* E0498 80036F88 8C42000C */  lw         $v0, 0xc($v0)
/* E049C 80036F8C 94420000 */  lhu        $v0, ($v0)
/* E04A0 80036F90 26100001 */  addiu      $s0, $s0, 1
/* E04A4 80036F94 00021042 */  srl        $v0, $v0, 1
/* E04A8 80036F98 02A2A821 */  addu       $s5, $s5, $v0
/* E04AC 80036F9C 3202FFFF */  andi       $v0, $s0, 0xffff
/* E04B0 80036FA0 0054102B */  sltu       $v0, $v0, $s4
/* E04B4 80036FA4 1440FFF0 */  bnez       $v0, .L80036F68
/* E04B8 80036FA8 00000000 */   nop
.L80036FAC:
/* E04BC 80036FAC 8E64000C */  lw         $a0, 0xc($s3)
/* E04C0 80036FB0 8C82000C */  lw         $v0, 0xc($a0)
/* E04C4 80036FB4 94430002 */  lhu        $v1, 2($v0)
/* E04C8 80036FB8 26310001 */  addiu      $s1, $s1, 1
/* E04CC 80036FBC 3222FFFF */  andi       $v0, $s1, 0xffff
/* E04D0 80036FC0 0043102B */  sltu       $v0, $v0, $v1
/* E04D4 80036FC4 1440FFDD */  bnez       $v0, .L80036F3C
/* E04D8 80036FC8 00000000 */   nop
.L80036FCC:
/* E04DC 80036FCC 93A3001F */  lbu        $v1, 0x1f($sp)
/* E04E0 80036FD0 26D60001 */  addiu      $s6, $s6, 1
/* E04E4 80036FD4 32C2FFFF */  andi       $v0, $s6, 0xffff
/* E04E8 80036FD8 0043102B */  sltu       $v0, $v0, $v1
/* E04EC 80036FDC 10400034 */  beqz       $v0, .L800370B0
/* E04F0 80036FE0 00000000 */   nop
/* E04F4 80036FE4 0800DBCA */  j          .L80036F28
/* E04F8 80036FE8 00000000 */   nop
.L80036FEC:
/* E04FC 80036FEC 93A2001F */  lbu        $v0, 0x1f($sp)
/* E0500 80036FF0 1040002F */  beqz       $v0, .L800370B0
/* E0504 80036FF4 0000B021 */   addu      $s6, $zero, $zero
/* E0508 80036FF8 33C200FF */  andi       $v0, $fp, 0xff
/* E050C 80036FFC 0002B82B */  sltu       $s7, $zero, $v0
.L80037000:
/* E0510 80037000 8E64000C */  lw         $a0, 0xc($s3)
/* E0514 80037004 8C82000C */  lw         $v0, 0xc($a0)
/* E0518 80037008 94420002 */  lhu        $v0, 2($v0)
/* E051C 8003700C 10400022 */  beqz       $v0, .L80037098
/* E0520 80037010 00008821 */   addu      $s1, $zero, $zero
.L80037014:
/* E0524 80037014 8C82000C */  lw         $v0, 0xc($a0)
/* E0528 80037018 94430000 */  lhu        $v1, ($v0)
/* E052C 8003701C 3222FFFF */  andi       $v0, $s1, 0xffff
/* E0530 80037020 00620018 */  mult       $v1, $v0
/* E0534 80037024 00001812 */  mflo       $v1
/* E0538 80037028 8C820010 */  lw         $v0, 0x10($a0)
/* E053C 8003702C 00008021 */  addu       $s0, $zero, $zero
/* E0540 80037030 12E00011 */  beqz       $s7, .L80037078
/* E0544 80037034 00439021 */   addu      $s2, $v0, $v1
/* E0548 80037038 33D400FF */  andi       $s4, $fp, 0xff
.L8003703C:
/* E054C 8003703C 8E62000C */  lw         $v0, 0xc($s3)
/* E0550 80037040 8C42000C */  lw         $v0, 0xc($v0)
/* E0554 80037044 94460000 */  lhu        $a2, ($v0)
/* E0558 80037048 02402021 */  addu       $a0, $s2, $zero
/* E055C 8003704C 0C03006C */  jal        func_800C01B0
/* E0560 80037050 02A02821 */   addu      $a1, $s5, $zero
/* E0564 80037054 8E62000C */  lw         $v0, 0xc($s3)
/* E0568 80037058 8C42000C */  lw         $v0, 0xc($v0)
/* E056C 8003705C 94420000 */  lhu        $v0, ($v0)
/* E0570 80037060 26100001 */  addiu      $s0, $s0, 1
/* E0574 80037064 02A2A821 */  addu       $s5, $s5, $v0
/* E0578 80037068 3202FFFF */  andi       $v0, $s0, 0xffff
/* E057C 8003706C 0054102B */  sltu       $v0, $v0, $s4
/* E0580 80037070 1440FFF2 */  bnez       $v0, .L8003703C
/* E0584 80037074 00000000 */   nop
.L80037078:
/* E0588 80037078 8E64000C */  lw         $a0, 0xc($s3)
/* E058C 8003707C 8C82000C */  lw         $v0, 0xc($a0)
/* E0590 80037080 94430002 */  lhu        $v1, 2($v0)
/* E0594 80037084 26310001 */  addiu      $s1, $s1, 1
/* E0598 80037088 3222FFFF */  andi       $v0, $s1, 0xffff
/* E059C 8003708C 0043102B */  sltu       $v0, $v0, $v1
/* E05A0 80037090 1440FFE0 */  bnez       $v0, .L80037014
/* E05A4 80037094 00000000 */   nop
.L80037098:
/* E05A8 80037098 93A3001F */  lbu        $v1, 0x1f($sp)
/* E05AC 8003709C 26D60001 */  addiu      $s6, $s6, 1
/* E05B0 800370A0 32C2FFFF */  andi       $v0, $s6, 0xffff
/* E05B4 800370A4 0043102B */  sltu       $v0, $v0, $v1
/* E05B8 800370A8 1440FFD5 */  bnez       $v0, .L80037000
/* E05BC 800370AC 00000000 */   nop
.L800370B0:
/* E05C0 800370B0 82620002 */  lb         $v0, 2($s3)
/* E05C4 800370B4 24050001 */  addiu      $a1, $zero, 1
/* E05C8 800370B8 10450019 */  beq        $v0, $a1, .L80037120
/* E05CC 800370BC 3C02802F */   lui       $v0, 0x802f
/* E05D0 800370C0 8E64000C */  lw         $a0, 0xc($s3)
/* E05D4 800370C4 8C83000C */  lw         $v1, 0xc($a0)
/* E05D8 800370C8 344297FF */  ori        $v0, $v0, 0x97ff
/* E05DC 800370CC 0043102B */  sltu       $v0, $v0, $v1
/* E05E0 800370D0 1440000B */  bnez       $v0, .L80037100
/* E05E4 800370D4 00000000 */   nop
/* E05E8 800370D8 82620003 */  lb         $v0, 3($s3)
/* E05EC 800370DC 14450004 */  bne        $v0, $a1, .L800370F0
/* E05F0 800370E0 00000000 */   nop
/* E05F4 800370E4 0C0326A1 */  jal        func_800C9A84
/* E05F8 800370E8 8C840010 */   lw        $a0, 0x10($a0)
/* E05FC 800370EC 8E64000C */  lw         $a0, 0xc($s3)
.L800370F0:
/* E0600 800370F0 0C028D30 */  jal        func_800A34C0
/* E0604 800370F4 00000000 */   nop
/* E0608 800370F8 0800DC46 */  j          .L80037118
/* E060C 800370FC A6600000 */   sh        $zero, ($s3)
.L80037100:
/* E0610 80037100 8C840014 */  lw         $a0, 0x14($a0)
/* E0614 80037104 0C0326A1 */  jal        func_800C9A84
/* E0618 80037108 00000000 */   nop
/* E061C 8003710C 0C02910B */  jal        func_800A442C
/* E0620 80037110 8E64000C */   lw        $a0, 0xc($s3)
/* E0624 80037114 A6600000 */  sh         $zero, ($s3)
.L80037118:
/* E0628 80037118 A2600003 */  sb         $zero, 3($s3)
/* E062C 8003711C AE60000C */  sw         $zero, 0xc($s3)
.L80037120:
/* E0630 80037120 97A8002E */  lhu        $t0, 0x2e($sp)
/* E0634 80037124 0C00D8E3 */  jal        func_8003638C_DF89C
/* E0638 80037128 01002021 */   addu      $a0, $t0, $zero
/* E063C 8003712C 8FA40034 */  lw         $a0, 0x34($sp)
/* E0640 80037130 8FA5003C */  lw         $a1, 0x3c($sp)
/* E0644 80037134 93A80027 */  lbu        $t0, 0x27($sp)
/* E0648 80037138 8FA60044 */  lw         $a2, 0x44($sp)
/* E064C 8003713C 00408021 */  addu       $s0, $v0, $zero
/* E0650 80037140 00083E00 */  sll        $a3, $t0, 0x18
/* E0654 80037144 97A8002E */  lhu        $t0, 0x2e($sp)
/* E0658 80037148 3402FFFF */  ori        $v0, $zero, 0xffff
/* E065C 8003714C 00073E03 */  sra        $a3, $a3, 0x18
/* E0660 80037150 AE020008 */  sw         $v0, 8($s0)
/* E0664 80037154 AE020004 */  sw         $v0, 4($s0)
/* E0668 80037158 24020001 */  addiu      $v0, $zero, 1
/* E066C 8003715C A2020003 */  sb         $v0, 3($s0)
/* E0670 80037160 A6080000 */  sh         $t0, ($s0)
/* E0674 80037164 0C028FA6 */  jal        func_800A3E98
/* E0678 80037168 AFA00010 */   sw        $zero, 0x10($sp)
/* E067C 8003716C 00402021 */  addu       $a0, $v0, $zero
/* E0680 80037170 00002821 */  addu       $a1, $zero, $zero
/* E0684 80037174 00003021 */  addu       $a2, $zero, $zero
/* E0688 80037178 0C02912A */  jal        func_800A44A8
/* E068C 8003717C AE04000C */   sw        $a0, 0xc($s0)
/* E0690 80037180 3C013F80 */  lui        $at, 0x3f80
/* E0694 80037184 44810000 */  mtc1       $at, $f0
/* E0698 80037188 8E04000C */  lw         $a0, 0xc($s0)
/* E069C 8003718C 44060000 */  mfc1       $a2, $f0
/* E06A0 80037190 00002821 */  addu       $a1, $zero, $zero
/* E06A4 80037194 0C02915B */  jal        func_800A456C
/* E06A8 80037198 00C03821 */   addu      $a3, $a2, $zero
/* E06AC 8003719C 02001021 */  addu       $v0, $s0, $zero
/* E06B0 800371A0 97A8002E */  lhu        $t0, 0x2e($sp)
/* E06B4 800371A4 8C44000C */  lw         $a0, 0xc($v0)
/* E06B8 800371A8 24030063 */  addiu      $v1, $zero, 0x63
/* E06BC 800371AC 00681823 */  subu       $v1, $v1, $t0
/* E06C0 800371B0 A483001C */  sh         $v1, 0x1c($a0)
/* E06C4 800371B4 8FBF006C */  lw         $ra, 0x6c($sp)
/* E06C8 800371B8 8FBE0068 */  lw         $fp, 0x68($sp)
/* E06CC 800371BC 8FB70064 */  lw         $s7, 0x64($sp)
/* E06D0 800371C0 8FB60060 */  lw         $s6, 0x60($sp)
/* E06D4 800371C4 8FB5005C */  lw         $s5, 0x5c($sp)
/* E06D8 800371C8 8FB40058 */  lw         $s4, 0x58($sp)
/* E06DC 800371CC 8FB30054 */  lw         $s3, 0x54($sp)
/* E06E0 800371D0 8FB20050 */  lw         $s2, 0x50($sp)
/* E06E4 800371D4 8FB1004C */  lw         $s1, 0x4c($sp)
/* E06E8 800371D8 8FB00048 */  lw         $s0, 0x48($sp)
/* E06EC 800371DC 03E00008 */  jr         $ra
/* E06F0 800371E0 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800371E4_E06F4
/* E06F4 800371E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E06F8 800371E8 AFB40028 */  sw         $s4, 0x28($sp)
/* E06FC 800371EC 00A0A021 */  addu       $s4, $a1, $zero
/* E0700 800371F0 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E0704 800371F4 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E0708 800371F8 00002821 */  addu       $a1, $zero, $zero
/* E070C 800371FC 3084FFFF */  andi       $a0, $a0, 0xffff
/* E0710 80037200 AFBF002C */  sw         $ra, 0x2c($sp)
/* E0714 80037204 AFB30024 */  sw         $s3, 0x24($sp)
/* E0718 80037208 AFB20020 */  sw         $s2, 0x20($sp)
/* E071C 8003720C AFB1001C */  sw         $s1, 0x1c($sp)
/* E0720 80037210 AFB00018 */  sw         $s0, 0x18($sp)
.L80037214:
/* E0724 80037214 94620000 */  lhu        $v0, ($v1)
/* E0728 80037218 10440016 */  beq        $v0, $a0, .L80037274
/* E072C 8003721C 24A50001 */   addiu     $a1, $a1, 1
/* E0730 80037220 30A2FFFF */  andi       $v0, $a1, 0xffff
/* E0734 80037224 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E0738 80037228 1440FFFA */  bnez       $v0, .L80037214
/* E073C 8003722C 24630010 */   addiu     $v1, $v1, 0x10
/* E0740 80037230 00009821 */  addu       $s3, $zero, $zero
.L80037234:
/* E0744 80037234 8E62000C */  lw         $v0, 0xc($s3)
/* E0748 80037238 8C52000C */  lw         $s2, 0xc($v0)
/* E074C 8003723C 92420004 */  lbu        $v0, 4($s2)
/* E0750 80037240 1440000E */  bnez       $v0, .L8003727C
/* E0754 80037244 00000000 */   nop
/* E0758 80037248 0C032663 */  jal        func_800C998C
/* E075C 8003724C 24040020 */   addiu     $a0, $zero, 0x20
/* E0760 80037250 00408821 */  addu       $s1, $v0, $zero
/* E0764 80037254 02202021 */  addu       $a0, $s1, $zero
/* E0768 80037258 0C030134 */  jal        bzero
/* E076C 8003725C 24050020 */   addiu     $a1, $zero, 0x20
/* E0770 80037260 8E62000C */  lw         $v0, 0xc($s3)
/* E0774 80037264 8C440014 */  lw         $a0, 0x14($v0)
/* E0778 80037268 02202821 */  addu       $a1, $s1, $zero
/* E077C 8003726C 0800DCA9 */  j          .L800372A4
/* E0780 80037270 24060020 */   addiu     $a2, $zero, 0x20
.L80037274:
/* E0784 80037274 0800DC8D */  j          .L80037234
/* E0788 80037278 00609821 */   addu      $s3, $v1, $zero
.L8003727C:
/* E078C 8003727C 0C032663 */  jal        func_800C998C
/* E0790 80037280 24040200 */   addiu     $a0, $zero, 0x200
/* E0794 80037284 00408821 */  addu       $s1, $v0, $zero
/* E0798 80037288 02202021 */  addu       $a0, $s1, $zero
/* E079C 8003728C 0C030134 */  jal        bzero
/* E07A0 80037290 24050200 */   addiu     $a1, $zero, 0x200
/* E07A4 80037294 8E62000C */  lw         $v0, 0xc($s3)
/* E07A8 80037298 8C440014 */  lw         $a0, 0x14($v0)
/* E07AC 8003729C 02202821 */  addu       $a1, $s1, $zero
/* E07B0 800372A0 24060200 */  addiu      $a2, $zero, 0x200
.L800372A4:
/* E07B4 800372A4 0C03006C */  jal        func_800C01B0
/* E07B8 800372A8 00000000 */   nop
/* E07BC 800372AC 8E62000C */  lw         $v0, 0xc($s3)
/* E07C0 800372B0 8C500010 */  lw         $s0, 0x10($v0)
/* E07C4 800372B4 0C00D8E3 */  jal        func_8003638C_DF89C
/* E07C8 800372B8 3284FFFF */   andi      $a0, $s4, 0xffff
/* E07CC 800372BC 8E63000C */  lw         $v1, 0xc($s3)
/* E07D0 800372C0 90630020 */  lbu        $v1, 0x20($v1)
/* E07D4 800372C4 00409821 */  addu       $s3, $v0, $zero
/* E07D8 800372C8 2C620007 */  sltiu      $v0, $v1, 7
/* E07DC 800372CC 10400054 */  beqz       $v0, .L80037420
/* E07E0 800372D0 00031080 */   sll       $v0, $v1, 2
/* E07E4 800372D4 3C018007 */  lui        $at, %hi(jtbl_80069DE0_1132F0)
/* E07E8 800372D8 00220821 */  addu       $at, $at, $v0
/* E07EC 800372DC 8C229DE0 */  lw         $v0, %lo(jtbl_80069DE0_1132F0)($at)
/* E07F0 800372E0 00400008 */  jr         $v0
/* E07F4 800372E4 00000000 */   nop
glabel L800372E8_E07F8
/* E07F8 800372E8 02402021 */  addu       $a0, $s2, $zero
/* E07FC 800372EC 02002821 */  addu       $a1, $s0, $zero
/* E0800 800372F0 02203021 */  addu       $a2, $s1, $zero
/* E0804 800372F4 0C028E9B */  jal        func_800A3A6C
/* E0808 800372F8 00003821 */   addu      $a3, $zero, $zero
/* E080C 800372FC 0800DD08 */  j          .L80037420
/* E0810 80037300 AE62000C */   sw        $v0, 0xc($s3)
glabel L80037304_E0814
/* E0814 80037304 02402021 */  addu       $a0, $s2, $zero
/* E0818 80037308 02002821 */  addu       $a1, $s0, $zero
/* E081C 8003730C 02203021 */  addu       $a2, $s1, $zero
/* E0820 80037310 0C028E9B */  jal        func_800A3A6C
/* E0824 80037314 00003821 */   addu      $a3, $zero, $zero
/* E0828 80037318 AE62000C */  sw         $v0, 0xc($s3)
/* E082C 8003731C 00402021 */  addu       $a0, $v0, $zero
/* E0830 80037320 24050400 */  addiu      $a1, $zero, 0x400
/* E0834 80037324 0C028F9A */  jal        func_800A3E68
/* E0838 80037328 24060400 */   addiu     $a2, $zero, 0x400
/* E083C 8003732C 0800DD09 */  j          .L80037424
/* E0840 80037330 02601021 */   addu      $v0, $s3, $zero
glabel L80037334_E0844
/* E0844 80037334 02402021 */  addu       $a0, $s2, $zero
/* E0848 80037338 02002821 */  addu       $a1, $s0, $zero
/* E084C 8003733C 02203021 */  addu       $a2, $s1, $zero
/* E0850 80037340 0800DCDB */  j          .L8003736C
/* E0854 80037344 00003821 */   addu      $a3, $zero, $zero
glabel L80037348_E0858
/* E0858 80037348 02402021 */  addu       $a0, $s2, $zero
/* E085C 8003734C 02002821 */  addu       $a1, $s0, $zero
/* E0860 80037350 02203021 */  addu       $a2, $s1, $zero
/* E0864 80037354 0800DCDB */  j          .L8003736C
/* E0868 80037358 24070001 */   addiu     $a3, $zero, 1
glabel L8003735C_E086C
/* E086C 8003735C 02402021 */  addu       $a0, $s2, $zero
/* E0870 80037360 02002821 */  addu       $a1, $s0, $zero
/* E0874 80037364 02203021 */  addu       $a2, $s1, $zero
/* E0878 80037368 24070002 */  addiu      $a3, $zero, 2
.L8003736C:
/* E087C 8003736C 0C028FA6 */  jal        func_800A3E98
/* E0880 80037370 AFA00010 */   sw        $zero, 0x10($sp)
/* E0884 80037374 00402021 */  addu       $a0, $v0, $zero
/* E0888 80037378 00002821 */  addu       $a1, $zero, $zero
/* E088C 8003737C 00003021 */  addu       $a2, $zero, $zero
/* E0890 80037380 0C02912A */  jal        func_800A44A8
/* E0894 80037384 AE64000C */   sw        $a0, 0xc($s3)
/* E0898 80037388 3C013F80 */  lui        $at, 0x3f80
/* E089C 8003738C 44810000 */  mtc1       $at, $f0
/* E08A0 80037390 8E64000C */  lw         $a0, 0xc($s3)
/* E08A4 80037394 44060000 */  mfc1       $a2, $f0
/* E08A8 80037398 00002821 */  addu       $a1, $zero, $zero
/* E08AC 8003739C 0C02915B */  jal        func_800A456C
/* E08B0 800373A0 00C03821 */   addu      $a3, $a2, $zero
/* E08B4 800373A4 0800DD09 */  j          .L80037424
/* E08B8 800373A8 02601021 */   addu      $v0, $s3, $zero
glabel L800373AC_E08BC
/* E08BC 800373AC 02402021 */  addu       $a0, $s2, $zero
/* E08C0 800373B0 02002821 */  addu       $a1, $s0, $zero
/* E08C4 800373B4 02203021 */  addu       $a2, $s1, $zero
/* E08C8 800373B8 0C02920C */  jal        func_800A4830
/* E08CC 800373BC 00003821 */   addu      $a3, $zero, $zero
/* E08D0 800373C0 00402021 */  addu       $a0, $v0, $zero
/* E08D4 800373C4 00002821 */  addu       $a1, $zero, $zero
/* E08D8 800373C8 00003021 */  addu       $a2, $zero, $zero
/* E08DC 800373CC 0C02933E */  jal        func_800A4CF8
/* E08E0 800373D0 AE64000C */   sw        $a0, 0xc($s3)
/* E08E4 800373D4 8E64000C */  lw         $a0, 0xc($s3)
/* E08E8 800373D8 0C02932F */  jal        func_800A4CBC
/* E08EC 800373DC 00000000 */   nop
/* E08F0 800373E0 0800DD09 */  j          .L80037424
/* E08F4 800373E4 02601021 */   addu      $v0, $s3, $zero
glabel L800373E8_E08F8
/* E08F8 800373E8 02402021 */  addu       $a0, $s2, $zero
/* E08FC 800373EC 02002821 */  addu       $a1, $s0, $zero
/* E0900 800373F0 02203021 */  addu       $a2, $s1, $zero
/* E0904 800373F4 0C02920C */  jal        func_800A4830
/* E0908 800373F8 00003821 */   addu      $a3, $zero, $zero
/* E090C 800373FC 00402021 */  addu       $a0, $v0, $zero
/* E0910 80037400 24050400 */  addiu      $a1, $zero, 0x400
/* E0914 80037404 24060400 */  addiu      $a2, $zero, 0x400
/* E0918 80037408 0C0292D4 */  jal        func_800A4B50
/* E091C 8003740C AE64000C */   sw        $a0, 0xc($s3)
/* E0920 80037410 8E64000C */  lw         $a0, 0xc($s3)
/* E0924 80037414 00002821 */  addu       $a1, $zero, $zero
/* E0928 80037418 0C02933E */  jal        func_800A4CF8
/* E092C 8003741C 00003021 */   addu      $a2, $zero, $zero
.L80037420:
/* E0930 80037420 02601021 */  addu       $v0, $s3, $zero
.L80037424:
/* E0934 80037424 8C44000C */  lw         $a0, 0xc($v0)
/* E0938 80037428 3403FFFF */  ori        $v1, $zero, 0xffff
/* E093C 8003742C AC430008 */  sw         $v1, 8($v0)
/* E0940 80037430 AC430004 */  sw         $v1, 4($v0)
/* E0944 80037434 24030063 */  addiu      $v1, $zero, 0x63
/* E0948 80037438 00741823 */  subu       $v1, $v1, $s4
/* E094C 8003743C A4540000 */  sh         $s4, ($v0)
/* E0950 80037440 A483001C */  sh         $v1, 0x1c($a0)
/* E0954 80037444 8FBF002C */  lw         $ra, 0x2c($sp)
/* E0958 80037448 8FB40028 */  lw         $s4, 0x28($sp)
/* E095C 8003744C 8FB30024 */  lw         $s3, 0x24($sp)
/* E0960 80037450 8FB20020 */  lw         $s2, 0x20($sp)
/* E0964 80037454 8FB1001C */  lw         $s1, 0x1c($sp)
/* E0968 80037458 8FB00018 */  lw         $s0, 0x18($sp)
/* E096C 8003745C 03E00008 */  jr         $ra
/* E0970 80037460 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80037464_E0974
/* E0974 80037464 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E0978 80037468 AFB40028 */  sw         $s4, 0x28($sp)
/* E097C 8003746C 00A0A021 */  addu       $s4, $a1, $zero
/* E0980 80037470 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E0984 80037474 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E0988 80037478 00002821 */  addu       $a1, $zero, $zero
/* E098C 8003747C 3084FFFF */  andi       $a0, $a0, 0xffff
/* E0990 80037480 AFBF002C */  sw         $ra, 0x2c($sp)
/* E0994 80037484 AFB30024 */  sw         $s3, 0x24($sp)
/* E0998 80037488 AFB20020 */  sw         $s2, 0x20($sp)
/* E099C 8003748C AFB1001C */  sw         $s1, 0x1c($sp)
/* E09A0 80037490 AFB00018 */  sw         $s0, 0x18($sp)
.L80037494:
/* E09A4 80037494 94620000 */  lhu        $v0, ($v1)
/* E09A8 80037498 10440016 */  beq        $v0, $a0, .L800374F4
/* E09AC 8003749C 24A50001 */   addiu     $a1, $a1, 1
/* E09B0 800374A0 30A2FFFF */  andi       $v0, $a1, 0xffff
/* E09B4 800374A4 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E09B8 800374A8 1440FFFA */  bnez       $v0, .L80037494
/* E09BC 800374AC 24630010 */   addiu     $v1, $v1, 0x10
/* E09C0 800374B0 00009821 */  addu       $s3, $zero, $zero
.L800374B4:
/* E09C4 800374B4 8E62000C */  lw         $v0, 0xc($s3)
/* E09C8 800374B8 8C52000C */  lw         $s2, 0xc($v0)
/* E09CC 800374BC 92420004 */  lbu        $v0, 4($s2)
/* E09D0 800374C0 1440000E */  bnez       $v0, .L800374FC
/* E09D4 800374C4 00000000 */   nop
/* E09D8 800374C8 0C032663 */  jal        func_800C998C
/* E09DC 800374CC 24040020 */   addiu     $a0, $zero, 0x20
/* E09E0 800374D0 00408821 */  addu       $s1, $v0, $zero
/* E09E4 800374D4 02202021 */  addu       $a0, $s1, $zero
/* E09E8 800374D8 0C030134 */  jal        bzero
/* E09EC 800374DC 24050020 */   addiu     $a1, $zero, 0x20
/* E09F0 800374E0 8E62000C */  lw         $v0, 0xc($s3)
/* E09F4 800374E4 8C440014 */  lw         $a0, 0x14($v0)
/* E09F8 800374E8 02202821 */  addu       $a1, $s1, $zero
/* E09FC 800374EC 0800DD49 */  j          .L80037524
/* E0A00 800374F0 24060020 */   addiu     $a2, $zero, 0x20
.L800374F4:
/* E0A04 800374F4 0800DD2D */  j          .L800374B4
/* E0A08 800374F8 00609821 */   addu      $s3, $v1, $zero
.L800374FC:
/* E0A0C 800374FC 0C032663 */  jal        func_800C998C
/* E0A10 80037500 24040200 */   addiu     $a0, $zero, 0x200
/* E0A14 80037504 00408821 */  addu       $s1, $v0, $zero
/* E0A18 80037508 02202021 */  addu       $a0, $s1, $zero
/* E0A1C 8003750C 0C030134 */  jal        bzero
/* E0A20 80037510 24050200 */   addiu     $a1, $zero, 0x200
/* E0A24 80037514 8E62000C */  lw         $v0, 0xc($s3)
/* E0A28 80037518 8C440014 */  lw         $a0, 0x14($v0)
/* E0A2C 8003751C 02202821 */  addu       $a1, $s1, $zero
/* E0A30 80037520 24060200 */  addiu      $a2, $zero, 0x200
.L80037524:
/* E0A34 80037524 0C03006C */  jal        func_800C01B0
/* E0A38 80037528 00000000 */   nop
/* E0A3C 8003752C 8E62000C */  lw         $v0, 0xc($s3)
/* E0A40 80037530 8C500010 */  lw         $s0, 0x10($v0)
/* E0A44 80037534 0C00D8E3 */  jal        func_8003638C_DF89C
/* E0A48 80037538 3284FFFF */   andi      $a0, $s4, 0xffff
/* E0A4C 8003753C 8E63000C */  lw         $v1, 0xc($s3)
/* E0A50 80037540 90630020 */  lbu        $v1, 0x20($v1)
/* E0A54 80037544 00409821 */  addu       $s3, $v0, $zero
/* E0A58 80037548 2C620007 */  sltiu      $v0, $v1, 7
/* E0A5C 8003754C 1040005D */  beqz       $v0, .L800376C4
/* E0A60 80037550 00031080 */   sll       $v0, $v1, 2
/* E0A64 80037554 3C018007 */  lui        $at, %hi(jtbl_80069E00_113310)
/* E0A68 80037558 00220821 */  addu       $at, $at, $v0
/* E0A6C 8003755C 8C229E00 */  lw         $v0, %lo(jtbl_80069E00_113310)($at)
/* E0A70 80037560 00400008 */  jr         $v0
/* E0A74 80037564 00000000 */   nop
glabel L80037568_E0A78
/* E0A78 80037568 02402021 */  addu       $a0, $s2, $zero
/* E0A7C 8003756C 02002821 */  addu       $a1, $s0, $zero
/* E0A80 80037570 02203021 */  addu       $a2, $s1, $zero
/* E0A84 80037574 0C028E9B */  jal        func_800A3A6C
/* E0A88 80037578 00003821 */   addu      $a3, $zero, $zero
/* E0A8C 8003757C 0800DDB1 */  j          .L800376C4
/* E0A90 80037580 AE62000C */   sw        $v0, 0xc($s3)
glabel L80037584_E0A94
/* E0A94 80037584 02402021 */  addu       $a0, $s2, $zero
/* E0A98 80037588 02002821 */  addu       $a1, $s0, $zero
/* E0A9C 8003758C 02203021 */  addu       $a2, $s1, $zero
/* E0AA0 80037590 0C028E9B */  jal        func_800A3A6C
/* E0AA4 80037594 00003821 */   addu      $a3, $zero, $zero
/* E0AA8 80037598 00402021 */  addu       $a0, $v0, $zero
/* E0AAC 8003759C 24050400 */  addiu      $a1, $zero, 0x400
/* E0AB0 800375A0 24060400 */  addiu      $a2, $zero, 0x400
/* E0AB4 800375A4 0C028F9A */  jal        func_800A3E68
/* E0AB8 800375A8 AE64000C */   sw        $a0, 0xc($s3)
/* E0ABC 800375AC 8E62000C */  lw         $v0, 0xc($s3)
/* E0AC0 800375B0 8C430000 */  lw         $v1, ($v0)
/* E0AC4 800375B4 24020001 */  addiu      $v0, $zero, 1
/* E0AC8 800375B8 0800DDB1 */  j          .L800376C4
/* E0ACC 800375BC A062002F */   sb        $v0, 0x2f($v1)
glabel L800375C0_E0AD0
/* E0AD0 800375C0 02402021 */  addu       $a0, $s2, $zero
/* E0AD4 800375C4 02002821 */  addu       $a1, $s0, $zero
/* E0AD8 800375C8 02203021 */  addu       $a2, $s1, $zero
/* E0ADC 800375CC 0800DD7E */  j          .L800375F8
/* E0AE0 800375D0 00003821 */   addu      $a3, $zero, $zero
glabel L800375D4_E0AE4
/* E0AE4 800375D4 02402021 */  addu       $a0, $s2, $zero
/* E0AE8 800375D8 02002821 */  addu       $a1, $s0, $zero
/* E0AEC 800375DC 02203021 */  addu       $a2, $s1, $zero
/* E0AF0 800375E0 0800DD7E */  j          .L800375F8
/* E0AF4 800375E4 24070001 */   addiu     $a3, $zero, 1
glabel L800375E8_E0AF8
/* E0AF8 800375E8 02402021 */  addu       $a0, $s2, $zero
/* E0AFC 800375EC 02002821 */  addu       $a1, $s0, $zero
/* E0B00 800375F0 02203021 */  addu       $a2, $s1, $zero
/* E0B04 800375F4 24070002 */  addiu      $a3, $zero, 2
.L800375F8:
/* E0B08 800375F8 0C028FA6 */  jal        func_800A3E98
/* E0B0C 800375FC AFA00010 */   sw        $zero, 0x10($sp)
/* E0B10 80037600 00402021 */  addu       $a0, $v0, $zero
/* E0B14 80037604 00002821 */  addu       $a1, $zero, $zero
/* E0B18 80037608 00003021 */  addu       $a2, $zero, $zero
/* E0B1C 8003760C 0C02912A */  jal        func_800A44A8
/* E0B20 80037610 AE64000C */   sw        $a0, 0xc($s3)
/* E0B24 80037614 3C013F80 */  lui        $at, 0x3f80
/* E0B28 80037618 44810000 */  mtc1       $at, $f0
/* E0B2C 8003761C 8E64000C */  lw         $a0, 0xc($s3)
/* E0B30 80037620 44060000 */  mfc1       $a2, $f0
/* E0B34 80037624 00002821 */  addu       $a1, $zero, $zero
/* E0B38 80037628 0C02915B */  jal        func_800A456C
/* E0B3C 8003762C 00C03821 */   addu      $a3, $a2, $zero
/* E0B40 80037630 0800DDB2 */  j          .L800376C8
/* E0B44 80037634 02601021 */   addu      $v0, $s3, $zero
glabel L80037638_E0B48
/* E0B48 80037638 02402021 */  addu       $a0, $s2, $zero
/* E0B4C 8003763C 02002821 */  addu       $a1, $s0, $zero
/* E0B50 80037640 02203021 */  addu       $a2, $s1, $zero
/* E0B54 80037644 0C02920C */  jal        func_800A4830
/* E0B58 80037648 00003821 */   addu      $a3, $zero, $zero
/* E0B5C 8003764C AE62000C */  sw         $v0, 0xc($s3)
/* E0B60 80037650 8C430000 */  lw         $v1, ($v0)
/* E0B64 80037654 24020001 */  addiu      $v0, $zero, 1
/* E0B68 80037658 A462001A */  sh         $v0, 0x1a($v1)
/* E0B6C 8003765C 8E64000C */  lw         $a0, 0xc($s3)
/* E0B70 80037660 00002821 */  addu       $a1, $zero, $zero
/* E0B74 80037664 0C02933E */  jal        func_800A4CF8
/* E0B78 80037668 00003021 */   addu      $a2, $zero, $zero
/* E0B7C 8003766C 8E64000C */  lw         $a0, 0xc($s3)
/* E0B80 80037670 0C02932F */  jal        func_800A4CBC
/* E0B84 80037674 00000000 */   nop
/* E0B88 80037678 0800DDB2 */  j          .L800376C8
/* E0B8C 8003767C 02601021 */   addu      $v0, $s3, $zero
glabel L80037680_E0B90
/* E0B90 80037680 02402021 */  addu       $a0, $s2, $zero
/* E0B94 80037684 02002821 */  addu       $a1, $s0, $zero
/* E0B98 80037688 02203021 */  addu       $a2, $s1, $zero
/* E0B9C 8003768C 0C02920C */  jal        func_800A4830
/* E0BA0 80037690 00003821 */   addu      $a3, $zero, $zero
/* E0BA4 80037694 AE62000C */  sw         $v0, 0xc($s3)
/* E0BA8 80037698 8C430000 */  lw         $v1, ($v0)
/* E0BAC 8003769C 24020001 */  addiu      $v0, $zero, 1
/* E0BB0 800376A0 A462001A */  sh         $v0, 0x1a($v1)
/* E0BB4 800376A4 8E64000C */  lw         $a0, 0xc($s3)
/* E0BB8 800376A8 24050400 */  addiu      $a1, $zero, 0x400
/* E0BBC 800376AC 0C0292D4 */  jal        func_800A4B50
/* E0BC0 800376B0 24060400 */   addiu     $a2, $zero, 0x400
/* E0BC4 800376B4 8E64000C */  lw         $a0, 0xc($s3)
/* E0BC8 800376B8 00002821 */  addu       $a1, $zero, $zero
/* E0BCC 800376BC 0C02933E */  jal        func_800A4CF8
/* E0BD0 800376C0 00003021 */   addu      $a2, $zero, $zero
.L800376C4:
/* E0BD4 800376C4 02601021 */  addu       $v0, $s3, $zero
.L800376C8:
/* E0BD8 800376C8 8C44000C */  lw         $a0, 0xc($v0)
/* E0BDC 800376CC 3403FFFF */  ori        $v1, $zero, 0xffff
/* E0BE0 800376D0 AC430008 */  sw         $v1, 8($v0)
/* E0BE4 800376D4 AC430004 */  sw         $v1, 4($v0)
/* E0BE8 800376D8 24030063 */  addiu      $v1, $zero, 0x63
/* E0BEC 800376DC 00741823 */  subu       $v1, $v1, $s4
/* E0BF0 800376E0 A4540000 */  sh         $s4, ($v0)
/* E0BF4 800376E4 A483001C */  sh         $v1, 0x1c($a0)
/* E0BF8 800376E8 8FBF002C */  lw         $ra, 0x2c($sp)
/* E0BFC 800376EC 8FB40028 */  lw         $s4, 0x28($sp)
/* E0C00 800376F0 8FB30024 */  lw         $s3, 0x24($sp)
/* E0C04 800376F4 8FB20020 */  lw         $s2, 0x20($sp)
/* E0C08 800376F8 8FB1001C */  lw         $s1, 0x1c($sp)
/* E0C0C 800376FC 8FB00018 */  lw         $s0, 0x18($sp)
/* E0C10 80037700 03E00008 */  jr         $ra
/* E0C14 80037704 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80037708_E0C18
/* E0C18 80037708 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E0C1C 8003770C AFB50024 */  sw         $s5, 0x24($sp)
/* E0C20 80037710 00E0A821 */  addu       $s5, $a3, $zero
/* E0C24 80037714 AFB40020 */  sw         $s4, 0x20($sp)
/* E0C28 80037718 97B40042 */  lhu        $s4, 0x42($sp)
/* E0C2C 8003771C 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E0C30 80037720 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E0C34 80037724 00003821 */  addu       $a3, $zero, $zero
/* E0C38 80037728 3084FFFF */  andi       $a0, $a0, 0xffff
/* E0C3C 8003772C AFBF0028 */  sw         $ra, 0x28($sp)
/* E0C40 80037730 AFB3001C */  sw         $s3, 0x1c($sp)
/* E0C44 80037734 AFB20018 */  sw         $s2, 0x18($sp)
/* E0C48 80037738 AFB10014 */  sw         $s1, 0x14($sp)
/* E0C4C 8003773C AFB00010 */  sw         $s0, 0x10($sp)
.L80037740:
/* E0C50 80037740 94620000 */  lhu        $v0, ($v1)
/* E0C54 80037744 54440003 */  bnel       $v0, $a0, .L80037754
/* E0C58 80037748 24E70001 */   addiu     $a3, $a3, 1
/* E0C5C 8003774C 0800DDDA */  j          .L80037768
/* E0C60 80037750 00609821 */   addu      $s3, $v1, $zero
.L80037754:
/* E0C64 80037754 30E2FFFF */  andi       $v0, $a3, 0xffff
/* E0C68 80037758 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E0C6C 8003775C 1440FFF8 */  bnez       $v0, .L80037740
/* E0C70 80037760 24630010 */   addiu     $v1, $v1, 0x10
/* E0C74 80037764 00009821 */  addu       $s3, $zero, $zero
.L80037768:
/* E0C78 80037768 00002021 */  addu       $a0, $zero, $zero
/* E0C7C 8003776C 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E0C80 80037770 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E0C84 80037774 30A5FFFF */  andi       $a1, $a1, 0xffff
.L80037778:
/* E0C88 80037778 94620000 */  lhu        $v0, ($v1)
/* E0C8C 8003777C 14450003 */  bne        $v0, $a1, .L8003778C
/* E0C90 80037780 24840001 */   addiu     $a0, $a0, 1
/* E0C94 80037784 0800DDE8 */  j          .L800377A0
/* E0C98 80037788 00608021 */   addu      $s0, $v1, $zero
.L8003778C:
/* E0C9C 8003778C 3082FFFF */  andi       $v0, $a0, 0xffff
/* E0CA0 80037790 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E0CA4 80037794 1440FFF8 */  bnez       $v0, .L80037778
/* E0CA8 80037798 24630010 */   addiu     $v1, $v1, 0x10
/* E0CAC 8003779C 00008021 */  addu       $s0, $zero, $zero
.L800377A0:
/* E0CB0 800377A0 8E62000C */  lw         $v0, 0xc($s3)
/* E0CB4 800377A4 8E03000C */  lw         $v1, 0xc($s0)
/* E0CB8 800377A8 30D200FF */  andi       $s2, $a2, 0xff
/* E0CBC 800377AC 24060020 */  addiu      $a2, $zero, 0x20
/* E0CC0 800377B0 8C710014 */  lw         $s1, 0x14($v1)
/* E0CC4 800377B4 8C450014 */  lw         $a1, 0x14($v0)
/* E0CC8 800377B8 00121140 */  sll        $v0, $s2, 5
/* E0CCC 800377BC 02202021 */  addu       $a0, $s1, $zero
/* E0CD0 800377C0 0C03006C */  jal        func_800C01B0
/* E0CD4 800377C4 00A22821 */   addu      $a1, $a1, $v0
/* E0CD8 800377C8 8E05000C */  lw         $a1, 0xc($s0)
/* E0CDC 800377CC 8CA2000C */  lw         $v0, 0xc($a1)
/* E0CE0 800377D0 94420002 */  lhu        $v0, 2($v0)
/* E0CE4 800377D4 8CA90010 */  lw         $t1, 0x10($a1)
/* E0CE8 800377D8 10400039 */  beqz       $v0, .L800378C0
/* E0CEC 800377DC 00005021 */   addu      $t2, $zero, $zero
/* E0CF0 800377E0 328BFFFF */  andi       $t3, $s4, 0xffff
/* E0CF4 800377E4 32A7FFFF */  andi       $a3, $s5, 0xffff
/* E0CF8 800377E8 00006021 */  addu       $t4, $zero, $zero
/* E0CFC 800377EC 00123100 */  sll        $a2, $s2, 4
.L800377F0:
/* E0D00 800377F0 8E64000C */  lw         $a0, 0xc($s3)
/* E0D04 800377F4 8C82000C */  lw         $v0, 0xc($a0)
/* E0D08 800377F8 94430000 */  lhu        $v1, ($v0)
/* E0D0C 800377FC 3142FFFF */  andi       $v0, $t2, 0xffff
/* E0D10 80037800 01621021 */  addu       $v0, $t3, $v0
/* E0D14 80037804 00620018 */  mult       $v1, $v0
/* E0D18 80037808 00001812 */  mflo       $v1
/* E0D1C 8003780C 8CA2000C */  lw         $v0, 0xc($a1)
/* E0D20 80037810 94420000 */  lhu        $v0, ($v0)
/* E0D24 80037814 00004021 */  addu       $t0, $zero, $zero
/* E0D28 80037818 8C840010 */  lw         $a0, 0x10($a0)
/* E0D2C 8003781C 00021042 */  srl        $v0, $v0, 1
/* E0D30 80037820 0182102B */  sltu       $v0, $t4, $v0
/* E0D34 80037824 00832021 */  addu       $a0, $a0, $v1
/* E0D38 80037828 1040001D */  beqz       $v0, .L800378A0
/* E0D3C 8003782C 00872021 */   addu      $a0, $a0, $a3
.L80037830:
/* E0D40 80037830 91250000 */  lbu        $a1, ($t1)
/* E0D44 80037834 00051902 */  srl        $v1, $a1, 4
/* E0D48 80037838 00031040 */  sll        $v0, $v1, 1
/* E0D4C 8003783C 00511021 */  addu       $v0, $v0, $s1
/* E0D50 80037840 94420000 */  lhu        $v0, ($v0)
/* E0D54 80037844 30420001 */  andi       $v0, $v0, 1
/* E0D58 80037848 10400003 */  beqz       $v0, .L80037858
/* E0D5C 8003784C 25290001 */   addiu     $t1, $t1, 1
/* E0D60 80037850 00661021 */  addu       $v0, $v1, $a2
/* E0D64 80037854 A0820000 */  sb         $v0, ($a0)
.L80037858:
/* E0D68 80037858 30A3000F */  andi       $v1, $a1, 0xf
/* E0D6C 8003785C 00031040 */  sll        $v0, $v1, 1
/* E0D70 80037860 00511021 */  addu       $v0, $v0, $s1
/* E0D74 80037864 94420000 */  lhu        $v0, ($v0)
/* E0D78 80037868 30420001 */  andi       $v0, $v0, 1
/* E0D7C 8003786C 10400003 */  beqz       $v0, .L8003787C
/* E0D80 80037870 24840001 */   addiu     $a0, $a0, 1
/* E0D84 80037874 00661021 */  addu       $v0, $v1, $a2
/* E0D88 80037878 A0820000 */  sb         $v0, ($a0)
.L8003787C:
/* E0D8C 8003787C 8E02000C */  lw         $v0, 0xc($s0)
/* E0D90 80037880 8C42000C */  lw         $v0, 0xc($v0)
/* E0D94 80037884 94430000 */  lhu        $v1, ($v0)
/* E0D98 80037888 25080001 */  addiu      $t0, $t0, 1
/* E0D9C 8003788C 3102FFFF */  andi       $v0, $t0, 0xffff
/* E0DA0 80037890 00031842 */  srl        $v1, $v1, 1
/* E0DA4 80037894 0043102B */  sltu       $v0, $v0, $v1
/* E0DA8 80037898 1440FFE5 */  bnez       $v0, .L80037830
/* E0DAC 8003789C 24840001 */   addiu     $a0, $a0, 1
.L800378A0:
/* E0DB0 800378A0 8E05000C */  lw         $a1, 0xc($s0)
/* E0DB4 800378A4 8CA2000C */  lw         $v0, 0xc($a1)
/* E0DB8 800378A8 94430002 */  lhu        $v1, 2($v0)
/* E0DBC 800378AC 254A0001 */  addiu      $t2, $t2, 1
/* E0DC0 800378B0 3142FFFF */  andi       $v0, $t2, 0xffff
/* E0DC4 800378B4 0043102B */  sltu       $v0, $v0, $v1
/* E0DC8 800378B8 1440FFCD */  bnez       $v0, .L800377F0
/* E0DCC 800378BC 00000000 */   nop
.L800378C0:
/* E0DD0 800378C0 02601021 */  addu       $v0, $s3, $zero
/* E0DD4 800378C4 8FBF0028 */  lw         $ra, 0x28($sp)
/* E0DD8 800378C8 8FB50024 */  lw         $s5, 0x24($sp)
/* E0DDC 800378CC 8FB40020 */  lw         $s4, 0x20($sp)
/* E0DE0 800378D0 8FB3001C */  lw         $s3, 0x1c($sp)
/* E0DE4 800378D4 8FB20018 */  lw         $s2, 0x18($sp)
/* E0DE8 800378D8 8FB10014 */  lw         $s1, 0x14($sp)
/* E0DEC 800378DC 8FB00010 */  lw         $s0, 0x10($sp)
/* E0DF0 800378E0 03E00008 */  jr         $ra
/* E0DF4 800378E4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800378E8_E0DF8
/* E0DF8 800378E8 90830020 */  lbu        $v1, 0x20($a0)
/* E0DFC 800378EC 2C620007 */  sltiu      $v0, $v1, 7
/* E0E00 800378F0 10400014 */  beqz       $v0, .L80037944
/* E0E04 800378F4 00000000 */   nop
/* E0E08 800378F8 00031080 */  sll        $v0, $v1, 2
/* E0E0C 800378FC 3C018007 */  lui        $at, %hi(jtbl_80069E20_113330)
/* E0E10 80037900 00220821 */  addu       $at, $at, $v0
/* E0E14 80037904 8C229E20 */  lw         $v0, %lo(jtbl_80069E20_113330)($at)
/* E0E18 80037908 00400008 */  jr         $v0
/* E0E1C 8003790C 00000000 */   nop
glabel L80037910_E0E20
/* E0E20 80037910 8C820000 */  lw         $v0, ($a0)
/* E0E24 80037914 94420018 */  lhu        $v0, 0x18($v0)
/* E0E28 80037918 0800DE4B */  j          .L8003792C
/* E0E2C 8003791C 00021400 */   sll       $v0, $v0, 0x10
glabel L80037920_E0E30
/* E0E30 80037920 8C820008 */  lw         $v0, 8($a0)
/* E0E34 80037924 94420010 */  lhu        $v0, 0x10($v0)
/* E0E38 80037928 00021400 */  sll        $v0, $v0, 0x10
.L8003792C:
/* E0E3C 8003792C 0800DE51 */  j          .L80037944
/* E0E40 80037930 00021483 */   sra       $v0, $v0, 0x12
glabel L80037934_E0E44
/* E0E44 80037934 8C820000 */  lw         $v0, ($a0)
/* E0E48 80037938 94420004 */  lhu        $v0, 4($v0)
/* E0E4C 8003793C 00021400 */  sll        $v0, $v0, 0x10
/* E0E50 80037940 00021483 */  sra        $v0, $v0, 0x12
.L80037944:
/* E0E54 80037944 03E00008 */  jr         $ra
/* E0E58 80037948 00000000 */   nop

glabel func_8003794C_E0E5C
/* E0E5C 8003794C 90830020 */  lbu        $v1, 0x20($a0)
/* E0E60 80037950 2C620007 */  sltiu      $v0, $v1, 7
/* E0E64 80037954 10400014 */  beqz       $v0, .L800379A8
/* E0E68 80037958 00000000 */   nop
/* E0E6C 8003795C 00031080 */  sll        $v0, $v1, 2
/* E0E70 80037960 3C018007 */  lui        $at, %hi(jtbl_80069E40_113350)
/* E0E74 80037964 00220821 */  addu       $at, $at, $v0
/* E0E78 80037968 8C229E40 */  lw         $v0, %lo(jtbl_80069E40_113350)($at)
/* E0E7C 8003796C 00400008 */  jr         $v0
/* E0E80 80037970 00000000 */   nop
glabel L80037974_E0E84
/* E0E84 80037974 8C820000 */  lw         $v0, ($a0)
/* E0E88 80037978 94420020 */  lhu        $v0, 0x20($v0)
/* E0E8C 8003797C 0800DE64 */  j          .L80037990
/* E0E90 80037980 00021400 */   sll       $v0, $v0, 0x10
glabel L80037984_E0E94
/* E0E94 80037984 8C820008 */  lw         $v0, 8($a0)
/* E0E98 80037988 94420012 */  lhu        $v0, 0x12($v0)
/* E0E9C 8003798C 00021400 */  sll        $v0, $v0, 0x10
.L80037990:
/* E0EA0 80037990 0800DE6A */  j          .L800379A8
/* E0EA4 80037994 00021483 */   sra       $v0, $v0, 0x12
glabel L80037998_E0EA8
/* E0EA8 80037998 8C820000 */  lw         $v0, ($a0)
/* E0EAC 8003799C 9442000C */  lhu        $v0, 0xc($v0)
/* E0EB0 800379A0 00021400 */  sll        $v0, $v0, 0x10
/* E0EB4 800379A4 00021483 */  sra        $v0, $v0, 0x12
.L800379A8:
/* E0EB8 800379A8 03E00008 */  jr         $ra
/* E0EBC 800379AC 00000000 */   nop

glabel func_800379B0_E0EC0
/* E0EC0 800379B0 8C820014 */  lw         $v0, 0x14($a0)
/* E0EC4 800379B4 30A500FF */  andi       $a1, $a1, 0xff
/* E0EC8 800379B8 00052840 */  sll        $a1, $a1, 1
/* E0ECC 800379BC 00451021 */  addu       $v0, $v0, $a1
/* E0ED0 800379C0 03E00008 */  jr         $ra
/* E0ED4 800379C4 A4460000 */   sh        $a2, ($v0)

glabel func_800379C8_E0ED8
/* E0ED8 800379C8 8C830014 */  lw         $v1, 0x14($a0)
/* E0EDC 800379CC 30A500FF */  andi       $a1, $a1, 0xff
/* E0EE0 800379D0 00052840 */  sll        $a1, $a1, 1
/* E0EE4 800379D4 00651821 */  addu       $v1, $v1, $a1
/* E0EE8 800379D8 94620000 */  lhu        $v0, ($v1)
/* E0EEC 800379DC 30C600FF */  andi       $a2, $a2, 0xff
/* E0EF0 800379E0 3042FFFE */  andi       $v0, $v0, 0xfffe
/* E0EF4 800379E4 00C23021 */  addu       $a2, $a2, $v0
/* E0EF8 800379E8 03E00008 */  jr         $ra
/* E0EFC 800379EC A4660000 */   sh        $a2, ($v1)

glabel func_800379F0_E0F00
/* E0F00 800379F0 8C820014 */  lw         $v0, 0x14($a0)
/* E0F04 800379F4 30A500FF */  andi       $a1, $a1, 0xff
/* E0F08 800379F8 00052840 */  sll        $a1, $a1, 1
/* E0F0C 800379FC 00451021 */  addu       $v0, $v0, $a1
/* E0F10 80037A00 03E00008 */  jr         $ra
/* E0F14 80037A04 94420000 */   lhu       $v0, ($v0)

glabel func_80037A08_E0F18
/* E0F18 80037A08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E0F1C 80037A0C AFB20020 */  sw         $s2, 0x20($sp)
/* E0F20 80037A10 24B2000A */  addiu      $s2, $a1, 0xa
/* E0F24 80037A14 AFB1001C */  sw         $s1, 0x1c($sp)
/* E0F28 80037A18 30B1FFFF */  andi       $s1, $a1, 0xffff
/* E0F2C 80037A1C 02202821 */  addu       $a1, $s1, $zero
/* E0F30 80037A20 AFB00018 */  sw         $s0, 0x18($sp)
/* E0F34 80037A24 00C08021 */  addu       $s0, $a2, $zero
/* E0F38 80037A28 3246FFFF */  andi       $a2, $s2, 0xffff
/* E0F3C 80037A2C 00003821 */  addu       $a3, $zero, $zero
/* E0F40 80037A30 AFBF0024 */  sw         $ra, 0x24($sp)
/* E0F44 80037A34 0C00DEF7 */  jal        func_80037BDC_E10EC
/* E0F48 80037A38 AFA00010 */   sw        $zero, 0x10($sp)
/* E0F4C 80037A3C 321000FF */  andi       $s0, $s0, 0xff
/* E0F50 80037A40 24020002 */  addiu      $v0, $zero, 2
/* E0F54 80037A44 12020009 */  beq        $s0, $v0, .L80037A6C
/* E0F58 80037A48 24020003 */   addiu     $v0, $zero, 3
/* E0F5C 80037A4C 12020032 */  beq        $s0, $v0, .L80037B18
/* E0F60 80037A50 00002021 */   addu      $a0, $zero, $zero
/* E0F64 80037A54 0800DEF1 */  j          .L80037BC4
/* E0F68 80037A58 00000000 */   nop
.L80037A5C:
/* E0F6C 80037A5C 0800DEA7 */  j          .L80037A9C
/* E0F70 80037A60 00601021 */   addu      $v0, $v1, $zero
.L80037A64:
/* E0F74 80037A64 0800DEBD */  j          .L80037AF4
/* E0F78 80037A68 00601021 */   addu      $v0, $v1, $zero
.L80037A6C:
/* E0F7C 80037A6C 00002021 */  addu       $a0, $zero, $zero
/* E0F80 80037A70 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E0F84 80037A74 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E0F88 80037A78 02202821 */  addu       $a1, $s1, $zero
.L80037A7C:
/* E0F8C 80037A7C 94620000 */  lhu        $v0, ($v1)
/* E0F90 80037A80 1045FFF6 */  beq        $v0, $a1, .L80037A5C
/* E0F94 80037A84 24840001 */   addiu     $a0, $a0, 1
/* E0F98 80037A88 3082FFFF */  andi       $v0, $a0, 0xffff
/* E0F9C 80037A8C 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E0FA0 80037A90 1440FFFA */  bnez       $v0, .L80037A7C
/* E0FA4 80037A94 24630010 */   addiu     $v1, $v1, 0x10
/* E0FA8 80037A98 00001021 */  addu       $v0, $zero, $zero
.L80037A9C:
/* E0FAC 80037A9C 8C44000C */  lw         $a0, 0xc($v0)
/* E0FB0 80037AA0 8C82000C */  lw         $v0, 0xc($a0)
/* E0FB4 80037AA4 94420000 */  lhu        $v0, ($v0)
/* E0FB8 80037AA8 2406029C */  addiu      $a2, $zero, 0x29c
/* E0FBC 80037AAC 240500A0 */  addiu      $a1, $zero, 0xa0
/* E0FC0 80037AB0 00021042 */  srl        $v0, $v0, 1
/* E0FC4 80037AB4 00A22823 */  subu       $a1, $a1, $v0
/* E0FC8 80037AB8 00052C80 */  sll        $a1, $a1, 0x12
/* E0FCC 80037ABC 0C028D89 */  jal        func_800A3624
/* E0FD0 80037AC0 00052C03 */   sra       $a1, $a1, 0x10
/* E0FD4 80037AC4 00002021 */  addu       $a0, $zero, $zero
/* E0FD8 80037AC8 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E0FDC 80037ACC 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E0FE0 80037AD0 3245FFFF */  andi       $a1, $s2, 0xffff
.L80037AD4:
/* E0FE4 80037AD4 94620000 */  lhu        $v0, ($v1)
/* E0FE8 80037AD8 1045FFE2 */  beq        $v0, $a1, .L80037A64
/* E0FEC 80037ADC 24840001 */   addiu     $a0, $a0, 1
/* E0FF0 80037AE0 3082FFFF */  andi       $v0, $a0, 0xffff
/* E0FF4 80037AE4 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E0FF8 80037AE8 1440FFFA */  bnez       $v0, .L80037AD4
/* E0FFC 80037AEC 24630010 */   addiu     $v1, $v1, 0x10
/* E1000 80037AF0 00001021 */  addu       $v0, $zero, $zero
.L80037AF4:
/* E1004 80037AF4 8C44000C */  lw         $a0, 0xc($v0)
/* E1008 80037AF8 8C82000C */  lw         $v0, 0xc($a0)
/* E100C 80037AFC 94420000 */  lhu        $v0, ($v0)
/* E1010 80037B00 0800DEEB */  j          .L80037BAC
/* E1014 80037B04 2406029C */   addiu     $a2, $zero, 0x29c
.L80037B08:
/* E1018 80037B08 0800DED1 */  j          .L80037B44
/* E101C 80037B0C 00601021 */   addu      $v0, $v1, $zero
.L80037B10:
/* E1020 80037B10 0800DEE7 */  j          .L80037B9C
/* E1024 80037B14 00601021 */   addu      $v0, $v1, $zero
.L80037B18:
/* E1028 80037B18 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E102C 80037B1C 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E1030 80037B20 02202821 */  addu       $a1, $s1, $zero
.L80037B24:
/* E1034 80037B24 94620000 */  lhu        $v0, ($v1)
/* E1038 80037B28 1045FFF7 */  beq        $v0, $a1, .L80037B08
/* E103C 80037B2C 24840001 */   addiu     $a0, $a0, 1
/* E1040 80037B30 3082FFFF */  andi       $v0, $a0, 0xffff
/* E1044 80037B34 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E1048 80037B38 1440FFFA */  bnez       $v0, .L80037B24
/* E104C 80037B3C 24630010 */   addiu     $v1, $v1, 0x10
/* E1050 80037B40 00001021 */  addu       $v0, $zero, $zero
.L80037B44:
/* E1054 80037B44 8C44000C */  lw         $a0, 0xc($v0)
/* E1058 80037B48 8C82000C */  lw         $v0, 0xc($a0)
/* E105C 80037B4C 94420000 */  lhu        $v0, ($v0)
/* E1060 80037B50 240602BC */  addiu      $a2, $zero, 0x2bc
/* E1064 80037B54 240500A0 */  addiu      $a1, $zero, 0xa0
/* E1068 80037B58 00021042 */  srl        $v0, $v0, 1
/* E106C 80037B5C 00A22823 */  subu       $a1, $a1, $v0
/* E1070 80037B60 00052C80 */  sll        $a1, $a1, 0x12
/* E1074 80037B64 0C028D89 */  jal        func_800A3624
/* E1078 80037B68 00052C03 */   sra       $a1, $a1, 0x10
/* E107C 80037B6C 00002021 */  addu       $a0, $zero, $zero
/* E1080 80037B70 3C038007 */  lui        $v1, %hi(D_8006C588)
/* E1084 80037B74 8C63C588 */  lw         $v1, %lo(D_8006C588)($v1)
/* E1088 80037B78 3245FFFF */  andi       $a1, $s2, 0xffff
.L80037B7C:
/* E108C 80037B7C 94620000 */  lhu        $v0, ($v1)
/* E1090 80037B80 1045FFE3 */  beq        $v0, $a1, .L80037B10
/* E1094 80037B84 24840001 */   addiu     $a0, $a0, 1
/* E1098 80037B88 3082FFFF */  andi       $v0, $a0, 0xffff
/* E109C 80037B8C 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E10A0 80037B90 1440FFFA */  bnez       $v0, .L80037B7C
/* E10A4 80037B94 24630010 */   addiu     $v1, $v1, 0x10
/* E10A8 80037B98 00001021 */  addu       $v0, $zero, $zero
.L80037B9C:
/* E10AC 80037B9C 8C44000C */  lw         $a0, 0xc($v0)
/* E10B0 80037BA0 8C82000C */  lw         $v0, 0xc($a0)
/* E10B4 80037BA4 94420000 */  lhu        $v0, ($v0)
/* E10B8 80037BA8 240602BC */  addiu      $a2, $zero, 0x2bc
.L80037BAC:
/* E10BC 80037BAC 240500A0 */  addiu      $a1, $zero, 0xa0
/* E10C0 80037BB0 00021042 */  srl        $v0, $v0, 1
/* E10C4 80037BB4 00A22823 */  subu       $a1, $a1, $v0
/* E10C8 80037BB8 00052C80 */  sll        $a1, $a1, 0x12
/* E10CC 80037BBC 0C028D89 */  jal        func_800A3624
/* E10D0 80037BC0 00052C03 */   sra       $a1, $a1, 0x10
.L80037BC4:
/* E10D4 80037BC4 8FBF0024 */  lw         $ra, 0x24($sp)
/* E10D8 80037BC8 8FB20020 */  lw         $s2, 0x20($sp)
/* E10DC 80037BCC 8FB1001C */  lw         $s1, 0x1c($sp)
/* E10E0 80037BD0 8FB00018 */  lw         $s0, 0x18($sp)
/* E10E4 80037BD4 03E00008 */  jr         $ra
/* E10E8 80037BD8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80037BDC_E10EC
/* E10EC 80037BDC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* E10F0 80037BE0 AFB40028 */  sw         $s4, 0x28($sp)
/* E10F4 80037BE4 8FB40058 */  lw         $s4, 0x58($sp)
/* E10F8 80037BE8 AFB00018 */  sw         $s0, 0x18($sp)
/* E10FC 80037BEC 00808021 */  addu       $s0, $a0, $zero
/* E1100 80037BF0 24040010 */  addiu      $a0, $zero, 0x10
/* E1104 80037BF4 AFB30024 */  sw         $s3, 0x24($sp)
/* E1108 80037BF8 00E09821 */  addu       $s3, $a3, $zero
/* E110C 80037BFC AFB60030 */  sw         $s6, 0x30($sp)
/* E1110 80037C00 00A0B021 */  addu       $s6, $a1, $zero
/* E1114 80037C04 AFB70034 */  sw         $s7, 0x34($sp)
/* E1118 80037C08 AFBF0038 */  sw         $ra, 0x38($sp)
/* E111C 80037C0C AFB5002C */  sw         $s5, 0x2c($sp)
/* E1120 80037C10 AFB20020 */  sw         $s2, 0x20($sp)
/* E1124 80037C14 AFB1001C */  sw         $s1, 0x1c($sp)
/* E1128 80037C18 F7B40040 */  sdc1       $f20, 0x40($sp)
/* E112C 80037C1C 0C032663 */  jal        func_800C998C
/* E1130 80037C20 00C0B821 */   addu      $s7, $a2, $zero
/* E1134 80037C24 00408821 */  addu       $s1, $v0, $zero
/* E1138 80037C28 02202021 */  addu       $a0, $s1, $zero
/* E113C 80037C2C 0C030134 */  jal        bzero
/* E1140 80037C30 24050010 */   addiu     $a1, $zero, 0x10
/* E1144 80037C34 8E040000 */  lw         $a0, ($s0)
/* E1148 80037C38 82050004 */  lb         $a1, 4($s0)
/* E114C 80037C3C 0C029CD5 */  jal        func_800A7354
/* E1150 80037C40 00139C80 */   sll       $s3, $s3, 0x12
/* E1154 80037C44 A6220000 */  sh         $v0, ($s1)
/* E1158 80037C48 8E040000 */  lw         $a0, ($s0)
/* E115C 80037C4C 82050005 */  lb         $a1, 5($s0)
/* E1160 80037C50 0C029CFD */  jal        func_800A73F4
/* E1164 80037C54 00139C03 */   sra       $s3, $s3, 0x10
/* E1168 80037C58 A6220002 */  sh         $v0, 2($s1)
/* E116C 80037C5C 0C029F9A */  jal        func_800A7E68
/* E1170 80037C60 A2200004 */   sb        $zero, 4($s1)
/* E1174 80037C64 0C029FA4 */  jal        func_800A7E90
/* E1178 80037C68 0040A821 */   addu      $s5, $v0, $zero
/* E117C 80037C6C 92030007 */  lbu        $v1, 7($s0)
/* E1180 80037C70 82050004 */  lb         $a1, 4($s0)
/* E1184 80037C74 82060005 */  lb         $a2, 5($s0)
/* E1188 80037C78 92070006 */  lbu        $a3, 6($s0)
/* E118C 80037C7C AFA30010 */  sw         $v1, 0x10($sp)
/* E1190 80037C80 8E040000 */  lw         $a0, ($s0)
/* E1194 80037C84 0C029D98 */  jal        func_800A7660
/* E1198 80037C88 00409021 */   addu      $s2, $v0, $zero
/* E119C 80037C8C 02202021 */  addu       $a0, $s1, $zero
/* E11A0 80037C90 00408021 */  addu       $s0, $v0, $zero
/* E11A4 80037C94 02002821 */  addu       $a1, $s0, $zero
/* E11A8 80037C98 02A03021 */  addu       $a2, $s5, $zero
/* E11AC 80037C9C 24070001 */  addiu      $a3, $zero, 1
/* E11B0 80037CA0 0C028FA6 */  jal        func_800A3E98
/* E11B4 80037CA4 AFA00010 */   sw        $zero, 0x10($sp)
/* E11B8 80037CA8 02202021 */  addu       $a0, $s1, $zero
/* E11BC 80037CAC 02002821 */  addu       $a1, $s0, $zero
/* E11C0 80037CB0 02403021 */  addu       $a2, $s2, $zero
/* E11C4 80037CB4 24070001 */  addiu      $a3, $zero, 1
/* E11C8 80037CB8 00408821 */  addu       $s1, $v0, $zero
/* E11CC 80037CBC 0C028FA6 */  jal        func_800A3E98
/* E11D0 80037CC0 AFA00010 */   sw        $zero, 0x10($sp)
/* E11D4 80037CC4 32C4FFFF */  andi       $a0, $s6, 0xffff
/* E11D8 80037CC8 0C00D8E3 */  jal        func_8003638C_DF89C
/* E11DC 80037CCC 00409021 */   addu      $s2, $v0, $zero
/* E11E0 80037CD0 3C013F80 */  lui        $at, 0x3f80
/* E11E4 80037CD4 4481A000 */  mtc1       $at, $f20
/* E11E8 80037CD8 00408021 */  addu       $s0, $v0, $zero
/* E11EC 80037CDC 24020001 */  addiu      $v0, $zero, 1
/* E11F0 80037CE0 A2020003 */  sb         $v0, 3($s0)
/* E11F4 80037CE4 24020054 */  addiu      $v0, $zero, 0x54
/* E11F8 80037CE8 A6160000 */  sh         $s6, ($s0)
/* E11FC 80037CEC AE11000C */  sw         $s1, 0xc($s0)
/* E1200 80037CF0 A622001C */  sh         $v0, 0x1c($s1)
/* E1204 80037CF4 8E04000C */  lw         $a0, 0xc($s0)
/* E1208 80037CF8 4406A000 */  mfc1       $a2, $f20
/* E120C 80037CFC 4407A000 */  mfc1       $a3, $f20
/* E1210 80037D00 00000000 */  nop
/* E1214 80037D04 0C02915B */  jal        func_800A456C
/* E1218 80037D08 00002821 */   addu      $a1, $zero, $zero
/* E121C 80037D0C 8E04000C */  lw         $a0, 0xc($s0)
/* E1220 80037D10 02602821 */  addu       $a1, $s3, $zero
/* E1224 80037D14 0014A480 */  sll        $s4, $s4, 0x12
/* E1228 80037D18 0014A403 */  sra        $s4, $s4, 0x10
/* E122C 80037D1C 0C028D89 */  jal        func_800A3624
/* E1230 80037D20 02803021 */   addu      $a2, $s4, $zero
/* E1234 80037D24 8E03000C */  lw         $v1, 0xc($s0)
/* E1238 80037D28 9462001E */  lhu        $v0, 0x1e($v1)
/* E123C 80037D2C 32E4FFFF */  andi       $a0, $s7, 0xffff
/* E1240 80037D30 34420004 */  ori        $v0, $v0, 4
/* E1244 80037D34 0C00D8E3 */  jal        func_8003638C_DF89C
/* E1248 80037D38 A462001E */   sh        $v0, 0x1e($v1)
/* E124C 80037D3C 00408021 */  addu       $s0, $v0, $zero
/* E1250 80037D40 24020051 */  addiu      $v0, $zero, 0x51
/* E1254 80037D44 A6170000 */  sh         $s7, ($s0)
/* E1258 80037D48 AE12000C */  sw         $s2, 0xc($s0)
/* E125C 80037D4C A642001C */  sh         $v0, 0x1c($s2)
/* E1260 80037D50 8E04000C */  lw         $a0, 0xc($s0)
/* E1264 80037D54 4406A000 */  mfc1       $a2, $f20
/* E1268 80037D58 00002821 */  addu       $a1, $zero, $zero
/* E126C 80037D5C 0C02915B */  jal        func_800A456C
/* E1270 80037D60 00C03821 */   addu      $a3, $a2, $zero
/* E1274 80037D64 8E04000C */  lw         $a0, 0xc($s0)
/* E1278 80037D68 02602821 */  addu       $a1, $s3, $zero
/* E127C 80037D6C 0C028D89 */  jal        func_800A3624
/* E1280 80037D70 02803021 */   addu      $a2, $s4, $zero
/* E1284 80037D74 240200D0 */  addiu      $v0, $zero, 0xd0
/* E1288 80037D78 AFA20010 */  sw         $v0, 0x10($sp)
/* E128C 80037D7C 8E04000C */  lw         $a0, 0xc($s0)
/* E1290 80037D80 240500FF */  addiu      $a1, $zero, 0xff
/* E1294 80037D84 240600FF */  addiu      $a2, $zero, 0xff
/* E1298 80037D88 0C028E41 */  jal        func_800A3904
/* E129C 80037D8C 240700FF */   addiu     $a3, $zero, 0xff
/* E12A0 80037D90 8E03000C */  lw         $v1, 0xc($s0)
/* E12A4 80037D94 9462001E */  lhu        $v0, 0x1e($v1)
/* E12A8 80037D98 34420004 */  ori        $v0, $v0, 4
/* E12AC 80037D9C A462001E */  sh         $v0, 0x1e($v1)
/* E12B0 80037DA0 8FBF0038 */  lw         $ra, 0x38($sp)
/* E12B4 80037DA4 8FB70034 */  lw         $s7, 0x34($sp)
/* E12B8 80037DA8 8FB60030 */  lw         $s6, 0x30($sp)
/* E12BC 80037DAC 8FB5002C */  lw         $s5, 0x2c($sp)
/* E12C0 80037DB0 8FB40028 */  lw         $s4, 0x28($sp)
/* E12C4 80037DB4 8FB30024 */  lw         $s3, 0x24($sp)
/* E12C8 80037DB8 8FB20020 */  lw         $s2, 0x20($sp)
/* E12CC 80037DBC 8FB1001C */  lw         $s1, 0x1c($sp)
/* E12D0 80037DC0 8FB00018 */  lw         $s0, 0x18($sp)
/* E12D4 80037DC4 D7B40040 */  ldc1       $f20, 0x40($sp)
/* E12D8 80037DC8 03E00008 */  jr         $ra
/* E12DC 80037DCC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80037DD0_E12E0
/* E12E0 80037DD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E12E4 80037DD4 AFB00010 */  sw         $s0, 0x10($sp)
/* E12E8 80037DD8 00808021 */  addu       $s0, $a0, $zero
/* E12EC 80037DDC AFBF0014 */  sw         $ra, 0x14($sp)
/* E12F0 80037DE0 0C027E98 */  jal        func_8009FA60
/* E12F4 80037DE4 8E040004 */   lw        $a0, 4($s0)
/* E12F8 80037DE8 0C027880 */  jal        func_8009E200
/* E12FC 80037DEC 8E040008 */   lw        $a0, 8($s0)
/* E1300 80037DF0 0C027BB8 */  jal        func_8009EEE0
/* E1304 80037DF4 8E04000C */   lw        $a0, 0xc($s0)
/* E1308 80037DF8 A6000000 */  sh         $zero, ($s0)
/* E130C 80037DFC AE000004 */  sw         $zero, 4($s0)
/* E1310 80037E00 AE000008 */  sw         $zero, 8($s0)
/* E1314 80037E04 AE00000C */  sw         $zero, 0xc($s0)
/* E1318 80037E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* E131C 80037E0C 8FB00010 */  lw         $s0, 0x10($sp)
/* E1320 80037E10 03E00008 */  jr         $ra
/* E1324 80037E14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80037E18_E1328
/* E1328 80037E18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E132C 80037E1C AFB10014 */  sw         $s1, 0x14($sp)
/* E1330 80037E20 3C118007 */  lui        $s1, %hi(D_8006C3C4)
/* E1334 80037E24 8E31C3C4 */  lw         $s1, %lo(D_8006C3C4)($s1)
/* E1338 80037E28 AFB20018 */  sw         $s2, 0x18($sp)
/* E133C 80037E2C 00009021 */  addu       $s2, $zero, $zero
/* E1340 80037E30 AFBF001C */  sw         $ra, 0x1c($sp)
/* E1344 80037E34 AFB00010 */  sw         $s0, 0x10($sp)
/* E1348 80037E38 2630000C */  addiu      $s0, $s1, 0xc
.L80037E3C:
/* E134C 80037E3C 96220000 */  lhu        $v0, ($s1)
/* E1350 80037E40 1040000C */  beqz       $v0, .L80037E74
/* E1354 80037E44 26520001 */   addiu     $s2, $s2, 1
/* E1358 80037E48 8E04FFF8 */  lw         $a0, -8($s0)
/* E135C 80037E4C 0C027E98 */  jal        func_8009FA60
/* E1360 80037E50 00000000 */   nop
/* E1364 80037E54 0C027880 */  jal        func_8009E200
/* E1368 80037E58 8E04FFFC */   lw        $a0, -4($s0)
/* E136C 80037E5C 0C027BB8 */  jal        func_8009EEE0
/* E1370 80037E60 8E040000 */   lw        $a0, ($s0)
/* E1374 80037E64 A6200000 */  sh         $zero, ($s1)
/* E1378 80037E68 AE00FFF8 */  sw         $zero, -8($s0)
/* E137C 80037E6C AE00FFFC */  sw         $zero, -4($s0)
/* E1380 80037E70 AE000000 */  sw         $zero, ($s0)
.L80037E74:
/* E1384 80037E74 26100080 */  addiu      $s0, $s0, 0x80
/* E1388 80037E78 3242FFFF */  andi       $v0, $s2, 0xffff
/* E138C 80037E7C 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1390 80037E80 1440FFEE */  bnez       $v0, .L80037E3C
/* E1394 80037E84 26310080 */   addiu     $s1, $s1, 0x80
/* E1398 80037E88 8FBF001C */  lw         $ra, 0x1c($sp)
/* E139C 80037E8C 8FB20018 */  lw         $s2, 0x18($sp)
/* E13A0 80037E90 8FB10014 */  lw         $s1, 0x14($sp)
/* E13A4 80037E94 8FB00010 */  lw         $s0, 0x10($sp)
/* E13A8 80037E98 03E00008 */  jr         $ra
/* E13AC 80037E9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80037EA0_E13B0
/* E13B0 80037EA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E13B4 80037EA4 AFB10014 */  sw         $s1, 0x14($sp)
/* E13B8 80037EA8 3C118007 */  lui        $s1, %hi(D_8006C3C4)
/* E13BC 80037EAC 8E31C3C4 */  lw         $s1, %lo(D_8006C3C4)($s1)
/* E13C0 80037EB0 AFB3001C */  sw         $s3, 0x1c($sp)
/* E13C4 80037EB4 00809821 */  addu       $s3, $a0, $zero
/* E13C8 80037EB8 AFB20018 */  sw         $s2, 0x18($sp)
/* E13CC 80037EBC 00009021 */  addu       $s2, $zero, $zero
/* E13D0 80037EC0 AFB40020 */  sw         $s4, 0x20($sp)
/* E13D4 80037EC4 3274FFFF */  andi       $s4, $s3, 0xffff
/* E13D8 80037EC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* E13DC 80037ECC AFB00010 */  sw         $s0, 0x10($sp)
/* E13E0 80037ED0 2630000C */  addiu      $s0, $s1, 0xc
.L80037ED4:
/* E13E4 80037ED4 96220000 */  lhu        $v0, ($s1)
/* E13E8 80037ED8 1454000C */  bne        $v0, $s4, .L80037F0C
/* E13EC 80037EDC 00000000 */   nop
/* E13F0 80037EE0 0C027E98 */  jal        func_8009FA60
/* E13F4 80037EE4 8E04FFF8 */   lw        $a0, -8($s0)
/* E13F8 80037EE8 0C027880 */  jal        func_8009E200
/* E13FC 80037EEC 8E04FFFC */   lw        $a0, -4($s0)
/* E1400 80037EF0 0C027BB8 */  jal        func_8009EEE0
/* E1404 80037EF4 8E040000 */   lw        $a0, ($s0)
/* E1408 80037EF8 A6200000 */  sh         $zero, ($s1)
/* E140C 80037EFC AE00FFF8 */  sw         $zero, -8($s0)
/* E1410 80037F00 AE00FFFC */  sw         $zero, -4($s0)
/* E1414 80037F04 AE000000 */  sw         $zero, ($s0)
/* E1418 80037F08 96220000 */  lhu        $v0, ($s1)
.L80037F0C:
/* E141C 80037F0C 14400004 */  bnez       $v0, .L80037F20
/* E1420 80037F10 26520001 */   addiu     $s2, $s2, 1
/* E1424 80037F14 A6330000 */  sh         $s3, ($s1)
/* E1428 80037F18 0800DFCE */  j          .L80037F38
/* E142C 80037F1C 02201021 */   addu      $v0, $s1, $zero
.L80037F20:
/* E1430 80037F20 26100080 */  addiu      $s0, $s0, 0x80
/* E1434 80037F24 3242FFFF */  andi       $v0, $s2, 0xffff
/* E1438 80037F28 2C420032 */  sltiu      $v0, $v0, 0x32
/* E143C 80037F2C 1440FFE9 */  bnez       $v0, .L80037ED4
/* E1440 80037F30 26310080 */   addiu     $s1, $s1, 0x80
/* E1444 80037F34 00001021 */  addu       $v0, $zero, $zero
.L80037F38:
/* E1448 80037F38 8FBF0024 */  lw         $ra, 0x24($sp)
/* E144C 80037F3C 8FB40020 */  lw         $s4, 0x20($sp)
/* E1450 80037F40 8FB3001C */  lw         $s3, 0x1c($sp)
/* E1454 80037F44 8FB20018 */  lw         $s2, 0x18($sp)
/* E1458 80037F48 8FB10014 */  lw         $s1, 0x14($sp)
/* E145C 80037F4C 8FB00010 */  lw         $s0, 0x10($sp)
/* E1460 80037F50 03E00008 */  jr         $ra
/* E1464 80037F54 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80037F58_E1468
/* E1468 80037F58 00002821 */  addu       $a1, $zero, $zero
/* E146C 80037F5C 3C038007 */  lui        $v1, %hi(D_8006C3C4)
/* E1470 80037F60 8C63C3C4 */  lw         $v1, %lo(D_8006C3C4)($v1)
/* E1474 80037F64 3084FFFF */  andi       $a0, $a0, 0xffff
.L80037F68:
/* E1478 80037F68 94620000 */  lhu        $v0, ($v1)
/* E147C 80037F6C 54440003 */  bnel       $v0, $a0, .L80037F7C
/* E1480 80037F70 24A50001 */   addiu     $a1, $a1, 1
/* E1484 80037F74 0800DFE4 */  j          .L80037F90
/* E1488 80037F78 00601021 */   addu      $v0, $v1, $zero
.L80037F7C:
/* E148C 80037F7C 30A2FFFF */  andi       $v0, $a1, 0xffff
/* E1490 80037F80 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1494 80037F84 1440FFF8 */  bnez       $v0, .L80037F68
/* E1498 80037F88 24630080 */   addiu     $v1, $v1, 0x80
/* E149C 80037F8C 00001021 */  addu       $v0, $zero, $zero
.L80037F90:
/* E14A0 80037F90 03E00008 */  jr         $ra
/* E14A4 80037F94 00000000 */   nop

glabel func_80037F98_E14A8
/* E14A8 80037F98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E14AC 80037F9C AFB10024 */  sw         $s1, 0x24($sp)
/* E14B0 80037FA0 00808821 */  addu       $s1, $a0, $zero
/* E14B4 80037FA4 00052C00 */  sll        $a1, $a1, 0x10
/* E14B8 80037FA8 AFB00020 */  sw         $s0, 0x20($sp)
/* E14BC 80037FAC 00058403 */  sra        $s0, $a1, 0x10
/* E14C0 80037FB0 02002021 */  addu       $a0, $s0, $zero
/* E14C4 80037FB4 00002821 */  addu       $a1, $zero, $zero
/* E14C8 80037FB8 AFBF0028 */  sw         $ra, 0x28($sp)
/* E14CC 80037FBC 0C027DAC */  jal        func_8009F6B0
/* E14D0 80037FC0 00003021 */   addu      $a2, $zero, $zero
/* E14D4 80037FC4 86230070 */  lh         $v1, 0x70($s1)
/* E14D8 80037FC8 AE220004 */  sw         $v0, 4($s1)
/* E14DC 80037FCC 2402FFFF */  addiu      $v0, $zero, -1
/* E14E0 80037FD0 AE200008 */  sw         $zero, 8($s1)
/* E14E4 80037FD4 10620037 */  beq        $v1, $v0, .L800380B4
/* E14E8 80037FD8 AE20000C */   sw        $zero, 0xc($s1)
/* E14EC 80037FDC 0C027D50 */  jal        func_8009F540
/* E14F0 80037FE0 02002021 */   addu      $a0, $s0, $zero
/* E14F4 80037FE4 00402821 */  addu       $a1, $v0, $zero
/* E14F8 80037FE8 10A00032 */  beqz       $a1, .L800380B4
/* E14FC 80037FEC 00000000 */   nop
/* E1500 80037FF0 84A20002 */  lh         $v0, 2($a1)
/* E1504 80037FF4 86240070 */  lh         $a0, 0x70($s1)
/* E1508 80037FF8 00401821 */  addu       $v1, $v0, $zero
/* E150C 80037FFC 2442FFFF */  addiu      $v0, $v0, -1
/* E1510 80038000 0044102A */  slt        $v0, $v0, $a0
/* E1514 80038004 14400004 */  bnez       $v0, .L80038018
/* E1518 80038008 2462FFFF */   addiu     $v0, $v1, -1
/* E151C 8003800C 2882FFFF */  slti       $v0, $a0, -1
/* E1520 80038010 10400002 */  beqz       $v0, .L8003801C
/* E1524 80038014 2402FFFF */   addiu     $v0, $zero, -1
.L80038018:
/* E1528 80038018 A6220070 */  sh         $v0, 0x70($s1)
.L8003801C:
/* E152C 8003801C 86220070 */  lh         $v0, 0x70($s1)
/* E1530 80038020 8CB00004 */  lw         $s0, 4($a1)
/* E1534 80038024 00021100 */  sll        $v0, $v0, 4
/* E1538 80038028 02028021 */  addu       $s0, $s0, $v0
/* E153C 8003802C 86040000 */  lh         $a0, ($s0)
/* E1540 80038030 8E050004 */  lw         $a1, 4($s0)
/* E1544 80038034 0C027814 */  jal        func_8009E050
/* E1548 80038038 00003021 */   addu      $a2, $zero, $zero
/* E154C 8003803C AE220008 */  sw         $v0, 8($s1)
/* E1550 80038040 86050002 */  lh         $a1, 2($s0)
/* E1554 80038044 2402FFFF */  addiu      $v0, $zero, -1
/* E1558 80038048 10A20007 */  beq        $a1, $v0, .L80038068
/* E155C 8003804C 00000000 */   nop
/* E1560 80038050 92070008 */  lbu        $a3, 8($s0)
/* E1564 80038054 AFA00010 */  sw         $zero, 0x10($sp)
/* E1568 80038058 8E240004 */  lw         $a0, 4($s1)
/* E156C 8003805C 0C027B10 */  jal        func_8009EC40
/* E1570 80038060 8E060004 */   lw        $a2, 4($s0)
/* E1574 80038064 AE22000C */  sw         $v0, 0xc($s1)
.L80038068:
/* E1578 80038068 C6020004 */  lwc1       $f2, 4($s0)
/* E157C 8003806C 3C014F00 */  lui        $at, 0x4f00
/* E1580 80038070 44810000 */  mtc1       $at, $f0
/* E1584 80038074 00000000 */  nop
/* E1588 80038078 4602003E */  c.le.s     $f0, $f2
/* E158C 8003807C 00000000 */  nop
/* E1590 80038080 00000000 */  nop
/* E1594 80038084 45030006 */  bc1tl      .L800380A0
/* E1598 80038088 46001001 */   sub.s     $f0, $f2, $f0
/* E159C 8003808C 4600100D */  trunc.w.s  $f0, $f2
/* E15A0 80038090 44030000 */  mfc1       $v1, $f0
/* E15A4 80038094 00000000 */  nop
/* E15A8 80038098 0800E02D */  j          .L800380B4
/* E15AC 8003809C A6230072 */   sh        $v1, 0x72($s1)
.L800380A0:
/* E15B0 800380A0 4600008D */  trunc.w.s  $f2, $f0
/* E15B4 800380A4 44031000 */  mfc1       $v1, $f2
/* E15B8 800380A8 3C028000 */  lui        $v0, 0x8000
/* E15BC 800380AC 00621825 */  or         $v1, $v1, $v0
/* E15C0 800380B0 A6230072 */  sh         $v1, 0x72($s1)
.L800380B4:
/* E15C4 800380B4 8FBF0028 */  lw         $ra, 0x28($sp)
/* E15C8 800380B8 8FB10024 */  lw         $s1, 0x24($sp)
/* E15CC 800380BC 8FB00020 */  lw         $s0, 0x20($sp)
/* E15D0 800380C0 03E00008 */  jr         $ra
/* E15D4 800380C4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800380C8_E15D8
/* E15D8 800380C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E15DC 800380CC 3C038007 */  lui        $v1, %hi(D_8006C3C4)
/* E15E0 800380D0 8C63C3C4 */  lw         $v1, %lo(D_8006C3C4)($v1)
/* E15E4 800380D4 00002821 */  addu       $a1, $zero, $zero
/* E15E8 800380D8 3084FFFF */  andi       $a0, $a0, 0xffff
/* E15EC 800380DC AFBF002C */  sw         $ra, 0x2c($sp)
/* E15F0 800380E0 AFB20028 */  sw         $s2, 0x28($sp)
/* E15F4 800380E4 AFB10024 */  sw         $s1, 0x24($sp)
/* E15F8 800380E8 AFB00020 */  sw         $s0, 0x20($sp)
.L800380EC:
/* E15FC 800380EC 94620000 */  lhu        $v0, ($v1)
/* E1600 800380F0 14440003 */  bne        $v0, $a0, .L80038100
/* E1604 800380F4 24A50001 */   addiu     $a1, $a1, 1
/* E1608 800380F8 0800E045 */  j          .L80038114
/* E160C 800380FC 00608821 */   addu      $s1, $v1, $zero
.L80038100:
/* E1610 80038100 30A2FFFF */  andi       $v0, $a1, 0xffff
/* E1614 80038104 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1618 80038108 1440FFF8 */  bnez       $v0, .L800380EC
/* E161C 8003810C 24630080 */   addiu     $v1, $v1, 0x80
/* E1620 80038110 00008821 */  addu       $s1, $zero, $zero
.L80038114:
/* E1624 80038114 C6200028 */  lwc1       $f0, 0x28($s1)
/* E1628 80038118 E7A00010 */  swc1       $f0, 0x10($sp)
/* E162C 8003811C C6200010 */  lwc1       $f0, 0x10($s1)
/* E1630 80038120 E7A00014 */  swc1       $f0, 0x14($sp)
/* E1634 80038124 C6200014 */  lwc1       $f0, 0x14($s1)
/* E1638 80038128 E7A00018 */  swc1       $f0, 0x18($sp)
/* E163C 8003812C C6200018 */  lwc1       $f0, 0x18($s1)
/* E1640 80038130 E7A0001C */  swc1       $f0, 0x1c($sp)
/* E1644 80038134 8E25001C */  lw         $a1, 0x1c($s1)
/* E1648 80038138 8E260020 */  lw         $a2, 0x20($s1)
/* E164C 8003813C 8E270024 */  lw         $a3, 0x24($s1)
/* E1650 80038140 26320030 */  addiu      $s2, $s1, 0x30
/* E1654 80038144 0C02FD0E */  jal        func_800BF438
/* E1658 80038148 02402021 */   addu      $a0, $s2, $zero
/* E165C 8003814C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* E1660 80038150 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* E1664 80038154 3C03DA38 */  lui        $v1, 0xda38
/* E1668 80038158 34630003 */  ori        $v1, $v1, 3
/* E166C 8003815C AC430000 */  sw         $v1, ($v0)
/* E1670 80038160 AC520004 */  sw         $s2, 4($v0)
/* E1674 80038164 8E230004 */  lw         $v1, 4($s1)
/* E1678 80038168 24420008 */  addiu      $v0, $v0, 8
/* E167C 8003816C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* E1680 80038170 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* E1684 80038174 9222007B */  lbu        $v0, 0x7b($s1)
/* E1688 80038178 92250075 */  lbu        $a1, 0x75($s1)
/* E168C 8003817C 92260077 */  lbu        $a2, 0x77($s1)
/* E1690 80038180 92270079 */  lbu        $a3, 0x79($s1)
/* E1694 80038184 90700066 */  lbu        $s0, 0x66($v1)
/* E1698 80038188 AFA20010 */  sw         $v0, 0x10($sp)
/* E169C 8003818C 0C027F5E */  jal        func_8009FD78
/* E16A0 80038190 8E240004 */   lw        $a0, 4($s1)
/* E16A4 80038194 8E220004 */  lw         $v0, 4($s1)
/* E16A8 80038198 A0500066 */  sb         $s0, 0x66($v0)
/* E16AC 8003819C 8E240008 */  lw         $a0, 8($s1)
/* E16B0 800381A0 1080000A */  beqz       $a0, .L800381CC
/* E16B4 800381A4 00000000 */   nop
/* E16B8 800381A8 96220072 */  lhu        $v0, 0x72($s1)
/* E16BC 800381AC 44821000 */  mtc1       $v0, $f2
/* E16C0 800381B0 00000000 */  nop
/* E16C4 800381B4 468010A0 */  cvt.s.w    $f2, $f2
/* E16C8 800381B8 44051000 */  mfc1       $a1, $f2
/* E16CC 800381BC 0C02795C */  jal        func_8009E570
/* E16D0 800381C0 00000000 */   nop
/* E16D4 800381C4 0C027A93 */  jal        func_8009EA4C
/* E16D8 800381C8 8E240008 */   lw        $a0, 8($s1)
.L800381CC:
/* E16DC 800381CC 8E22000C */  lw         $v0, 0xc($s1)
/* E16E0 800381D0 1040000E */  beqz       $v0, .L8003820C
/* E16E4 800381D4 00000000 */   nop
/* E16E8 800381D8 8E240004 */  lw         $a0, 4($s1)
/* E16EC 800381DC 0C027F67 */  jal        func_8009FD9C
/* E16F0 800381E0 02402821 */   addu      $a1, $s2, $zero
/* E16F4 800381E4 96220072 */  lhu        $v0, 0x72($s1)
/* E16F8 800381E8 8E24000C */  lw         $a0, 0xc($s1)
/* E16FC 800381EC 44821000 */  mtc1       $v0, $f2
/* E1700 800381F0 00000000 */  nop
/* E1704 800381F4 468010A0 */  cvt.s.w    $f2, $f2
/* E1708 800381F8 44051000 */  mfc1       $a1, $f2
/* E170C 800381FC 0C027C5E */  jal        func_8009F178
/* E1710 80038200 00000000 */   nop
/* E1714 80038204 0C027CED */  jal        func_8009F3B4
/* E1718 80038208 8E24000C */   lw        $a0, 0xc($s1)
.L8003820C:
/* E171C 8003820C 8E240004 */  lw         $a0, 4($s1)
/* E1720 80038210 0C027F77 */  jal        func_8009FDDC
/* E1724 80038214 8E250008 */   lw        $a1, 8($s1)
/* E1728 80038218 8FBF002C */  lw         $ra, 0x2c($sp)
/* E172C 8003821C 8FB20028 */  lw         $s2, 0x28($sp)
/* E1730 80038220 8FB10024 */  lw         $s1, 0x24($sp)
/* E1734 80038224 8FB00020 */  lw         $s0, 0x20($sp)
/* E1738 80038228 03E00008 */  jr         $ra
/* E173C 8003822C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80038230_E1740
/* E1740 80038230 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E1744 80038234 AFB3002C */  sw         $s3, 0x2c($sp)
/* E1748 80038238 00C09821 */  addu       $s3, $a2, $zero
/* E174C 8003823C 3C038007 */  lui        $v1, %hi(D_8006C3C4)
/* E1750 80038240 8C63C3C4 */  lw         $v1, %lo(D_8006C3C4)($v1)
/* E1754 80038244 00003021 */  addu       $a2, $zero, $zero
/* E1758 80038248 30A5FFFF */  andi       $a1, $a1, 0xffff
/* E175C 8003824C AFBF0030 */  sw         $ra, 0x30($sp)
/* E1760 80038250 AFB20028 */  sw         $s2, 0x28($sp)
/* E1764 80038254 AFB10024 */  sw         $s1, 0x24($sp)
/* E1768 80038258 AFB00020 */  sw         $s0, 0x20($sp)
.L8003825C:
/* E176C 8003825C 94620000 */  lhu        $v0, ($v1)
/* E1770 80038260 14450003 */  bne        $v0, $a1, .L80038270
/* E1774 80038264 24C60001 */   addiu     $a2, $a2, 1
/* E1778 80038268 0800E0A1 */  j          .L80038284
/* E177C 8003826C 00603021 */   addu      $a2, $v1, $zero
.L80038270:
/* E1780 80038270 30C2FFFF */  andi       $v0, $a2, 0xffff
/* E1784 80038274 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1788 80038278 1440FFF8 */  bnez       $v0, .L8003825C
/* E178C 8003827C 24630080 */   addiu     $v1, $v1, 0x80
/* E1790 80038280 00003021 */  addu       $a2, $zero, $zero
.L80038284:
/* E1794 80038284 00002821 */  addu       $a1, $zero, $zero
/* E1798 80038288 3C038007 */  lui        $v1, %hi(D_8006C3C4)
/* E179C 8003828C 8C63C3C4 */  lw         $v1, %lo(D_8006C3C4)($v1)
/* E17A0 80038290 3084FFFF */  andi       $a0, $a0, 0xffff
.L80038294:
/* E17A4 80038294 94620000 */  lhu        $v0, ($v1)
/* E17A8 80038298 54440003 */  bnel       $v0, $a0, .L800382A8
/* E17AC 8003829C 24A50001 */   addiu     $a1, $a1, 1
/* E17B0 800382A0 0800E0AF */  j          .L800382BC
/* E17B4 800382A4 00608821 */   addu      $s1, $v1, $zero
.L800382A8:
/* E17B8 800382A8 30A2FFFF */  andi       $v0, $a1, 0xffff
/* E17BC 800382AC 2C420032 */  sltiu      $v0, $v0, 0x32
/* E17C0 800382B0 1440FFF8 */  bnez       $v0, .L80038294
/* E17C4 800382B4 24630080 */   addiu     $v1, $v1, 0x80
/* E17C8 800382B8 00008821 */  addu       $s1, $zero, $zero
.L800382BC:
/* E17CC 800382BC 8CC50004 */  lw         $a1, 4($a2)
/* E17D0 800382C0 8CC60008 */  lw         $a2, 8($a2)
/* E17D4 800382C4 3C108007 */  lui        $s0, %hi(D_8006A640)
/* E17D8 800382C8 2610A640 */  addiu      $s0, $s0, %lo(D_8006A640)
/* E17DC 800382CC 02002021 */  addu       $a0, $s0, $zero
/* E17E0 800382D0 0C028370 */  jal        func_800A0DC0
/* E17E4 800382D4 00003821 */   addu      $a3, $zero, $zero
/* E17E8 800382D8 C6200028 */  lwc1       $f0, 0x28($s1)
/* E17EC 800382DC E7A00010 */  swc1       $f0, 0x10($sp)
/* E17F0 800382E0 C6200010 */  lwc1       $f0, 0x10($s1)
/* E17F4 800382E4 E7A00014 */  swc1       $f0, 0x14($sp)
/* E17F8 800382E8 C6200014 */  lwc1       $f0, 0x14($s1)
/* E17FC 800382EC E7A00018 */  swc1       $f0, 0x18($sp)
/* E1800 800382F0 C6200018 */  lwc1       $f0, 0x18($s1)
/* E1804 800382F4 E7A0001C */  swc1       $f0, 0x1c($sp)
/* E1808 800382F8 8E25001C */  lw         $a1, 0x1c($s1)
/* E180C 800382FC 8E260020 */  lw         $a2, 0x20($s1)
/* E1810 80038300 8E270024 */  lw         $a3, 0x24($s1)
/* E1814 80038304 26320030 */  addiu      $s2, $s1, 0x30
/* E1818 80038308 0C02FD0E */  jal        func_800BF438
/* E181C 8003830C 02402021 */   addu      $a0, $s2, $zero
/* E1820 80038310 3264FFFF */  andi       $a0, $s3, 0xffff
/* E1824 80038314 00042180 */  sll        $a0, $a0, 6
/* E1828 80038318 00902021 */  addu       $a0, $a0, $s0
/* E182C 8003831C 3C108007 */  lui        $s0, %hi(D_8006BF40)
/* E1830 80038320 2610BF40 */  addiu      $s0, $s0, %lo(D_8006BF40)
/* E1834 80038324 0C02FA4C */  jal        func_800BE930
/* E1838 80038328 02002821 */   addu      $a1, $s0, $zero
/* E183C 8003832C 02002021 */  addu       $a0, $s0, $zero
/* E1840 80038330 02402821 */  addu       $a1, $s2, $zero
/* E1844 80038334 0C02FA0C */  jal        func_800BE830
/* E1848 80038338 02403021 */   addu      $a2, $s2, $zero
/* E184C 8003833C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* E1850 80038340 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* E1854 80038344 3C03DA38 */  lui        $v1, 0xda38
/* E1858 80038348 34630003 */  ori        $v1, $v1, 3
/* E185C 8003834C AC430000 */  sw         $v1, ($v0)
/* E1860 80038350 AC520004 */  sw         $s2, 4($v0)
/* E1864 80038354 8E230004 */  lw         $v1, 4($s1)
/* E1868 80038358 24420008 */  addiu      $v0, $v0, 8
/* E186C 8003835C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* E1870 80038360 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* E1874 80038364 9222007B */  lbu        $v0, 0x7b($s1)
/* E1878 80038368 92250075 */  lbu        $a1, 0x75($s1)
/* E187C 8003836C 92260077 */  lbu        $a2, 0x77($s1)
/* E1880 80038370 92270079 */  lbu        $a3, 0x79($s1)
/* E1884 80038374 90700066 */  lbu        $s0, 0x66($v1)
/* E1888 80038378 AFA20010 */  sw         $v0, 0x10($sp)
/* E188C 8003837C 0C027F5E */  jal        func_8009FD78
/* E1890 80038380 8E240004 */   lw        $a0, 4($s1)
/* E1894 80038384 8E220004 */  lw         $v0, 4($s1)
/* E1898 80038388 A0500066 */  sb         $s0, 0x66($v0)
/* E189C 8003838C 8E240008 */  lw         $a0, 8($s1)
/* E18A0 80038390 1080000A */  beqz       $a0, .L800383BC
/* E18A4 80038394 00000000 */   nop
/* E18A8 80038398 96220072 */  lhu        $v0, 0x72($s1)
/* E18AC 8003839C 44821000 */  mtc1       $v0, $f2
/* E18B0 800383A0 00000000 */  nop
/* E18B4 800383A4 468010A0 */  cvt.s.w    $f2, $f2
/* E18B8 800383A8 44051000 */  mfc1       $a1, $f2
/* E18BC 800383AC 0C02795C */  jal        func_8009E570
/* E18C0 800383B0 00000000 */   nop
/* E18C4 800383B4 0C027A93 */  jal        func_8009EA4C
/* E18C8 800383B8 8E240008 */   lw        $a0, 8($s1)
.L800383BC:
/* E18CC 800383BC 8E22000C */  lw         $v0, 0xc($s1)
/* E18D0 800383C0 1040000E */  beqz       $v0, .L800383FC
/* E18D4 800383C4 00000000 */   nop
/* E18D8 800383C8 8E240004 */  lw         $a0, 4($s1)
/* E18DC 800383CC 0C027F67 */  jal        func_8009FD9C
/* E18E0 800383D0 02402821 */   addu      $a1, $s2, $zero
/* E18E4 800383D4 96220072 */  lhu        $v0, 0x72($s1)
/* E18E8 800383D8 8E24000C */  lw         $a0, 0xc($s1)
/* E18EC 800383DC 44821000 */  mtc1       $v0, $f2
/* E18F0 800383E0 00000000 */  nop
/* E18F4 800383E4 468010A0 */  cvt.s.w    $f2, $f2
/* E18F8 800383E8 44051000 */  mfc1       $a1, $f2
/* E18FC 800383EC 0C027C5E */  jal        func_8009F178
/* E1900 800383F0 00000000 */   nop
/* E1904 800383F4 0C027CED */  jal        func_8009F3B4
/* E1908 800383F8 8E24000C */   lw        $a0, 0xc($s1)
.L800383FC:
/* E190C 800383FC 8E240004 */  lw         $a0, 4($s1)
/* E1910 80038400 0C027F77 */  jal        func_8009FDDC
/* E1914 80038404 8E250008 */   lw        $a1, 8($s1)
/* E1918 80038408 8FBF0030 */  lw         $ra, 0x30($sp)
/* E191C 8003840C 8FB3002C */  lw         $s3, 0x2c($sp)
/* E1920 80038410 8FB20028 */  lw         $s2, 0x28($sp)
/* E1924 80038414 8FB10024 */  lw         $s1, 0x24($sp)
/* E1928 80038418 8FB00020 */  lw         $s0, 0x20($sp)
/* E192C 8003841C 03E00008 */  jr         $ra
/* E1930 80038420 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80038424_E1934
/* E1934 80038424 3C028007 */  lui        $v0, %hi(D_8006C588)
/* E1938 80038428 8C42C588 */  lw         $v0, %lo(D_8006C588)($v0)
/* E193C 8003842C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E1940 80038430 AFBF0024 */  sw         $ra, 0x24($sp)
/* E1944 80038434 AFB40020 */  sw         $s4, 0x20($sp)
/* E1948 80038438 AFB3001C */  sw         $s3, 0x1c($sp)
/* E194C 8003843C AFB20018 */  sw         $s2, 0x18($sp)
/* E1950 80038440 AFB10014 */  sw         $s1, 0x14($sp)
/* E1954 80038444 10400029 */  beqz       $v0, .L800384EC
/* E1958 80038448 AFB00010 */   sw        $s0, 0x10($sp)
/* E195C 8003844C 00009021 */  addu       $s2, $zero, $zero
/* E1960 80038450 00408821 */  addu       $s1, $v0, $zero
/* E1964 80038454 24130001 */  addiu      $s3, $zero, 1
/* E1968 80038458 3C14802F */  lui        $s4, 0x802f
/* E196C 8003845C 369497FF */  ori        $s4, $s4, 0x97ff
/* E1970 80038460 2630000C */  addiu      $s0, $s1, 0xc
.L80038464:
/* E1974 80038464 96220000 */  lhu        $v0, ($s1)
/* E1978 80038468 5040001B */  beql       $v0, $zero, .L800384D8
/* E197C 8003846C 26520001 */   addiu     $s2, $s2, 1
/* E1980 80038470 8202FFF6 */  lb         $v0, -0xa($s0)
/* E1984 80038474 50530018 */  beql       $v0, $s3, .L800384D8
/* E1988 80038478 26520001 */   addiu     $s2, $s2, 1
/* E198C 8003847C 8E030000 */  lw         $v1, ($s0)
/* E1990 80038480 8C62000C */  lw         $v0, 0xc($v1)
/* E1994 80038484 0282102B */  sltu       $v0, $s4, $v0
/* E1998 80038488 1440000A */  bnez       $v0, .L800384B4
/* E199C 8003848C 00000000 */   nop
/* E19A0 80038490 8202FFF7 */  lb         $v0, -9($s0)
/* E19A4 80038494 14530003 */  bne        $v0, $s3, .L800384A4
/* E19A8 80038498 00000000 */   nop
/* E19AC 8003849C 0C0326A1 */  jal        func_800C9A84
/* E19B0 800384A0 8C640010 */   lw        $a0, 0x10($v1)
.L800384A4:
/* E19B4 800384A4 0C028D30 */  jal        func_800A34C0
/* E19B8 800384A8 8E040000 */   lw        $a0, ($s0)
/* E19BC 800384AC 0800E133 */  j          .L800384CC
/* E19C0 800384B0 A6200000 */   sh        $zero, ($s1)
.L800384B4:
/* E19C4 800384B4 8C640014 */  lw         $a0, 0x14($v1)
/* E19C8 800384B8 0C0326A1 */  jal        func_800C9A84
/* E19CC 800384BC 00000000 */   nop
/* E19D0 800384C0 0C02910B */  jal        func_800A442C
/* E19D4 800384C4 8E040000 */   lw        $a0, ($s0)
/* E19D8 800384C8 A6200000 */  sh         $zero, ($s1)
.L800384CC:
/* E19DC 800384CC A200FFF7 */  sb         $zero, -9($s0)
/* E19E0 800384D0 AE000000 */  sw         $zero, ($s0)
/* E19E4 800384D4 26520001 */  addiu      $s2, $s2, 1
.L800384D8:
/* E19E8 800384D8 26100010 */  addiu      $s0, $s0, 0x10
/* E19EC 800384DC 3242FFFF */  andi       $v0, $s2, 0xffff
/* E19F0 800384E0 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E19F4 800384E4 1440FFDF */  bnez       $v0, .L80038464
/* E19F8 800384E8 26310010 */   addiu     $s1, $s1, 0x10
.L800384EC:
/* E19FC 800384EC 3C028007 */  lui        $v0, %hi(D_8006C3C4)
/* E1A00 800384F0 8C42C3C4 */  lw         $v0, %lo(D_8006C3C4)($v0)
/* E1A04 800384F4 10400016 */  beqz       $v0, .L80038550
/* E1A08 800384F8 00009021 */   addu      $s2, $zero, $zero
/* E1A0C 800384FC 00408821 */  addu       $s1, $v0, $zero
/* E1A10 80038500 2630000C */  addiu      $s0, $s1, 0xc
.L80038504:
/* E1A14 80038504 96220000 */  lhu        $v0, ($s1)
/* E1A18 80038508 1040000C */  beqz       $v0, .L8003853C
/* E1A1C 8003850C 26520001 */   addiu     $s2, $s2, 1
/* E1A20 80038510 8E04FFF8 */  lw         $a0, -8($s0)
/* E1A24 80038514 0C027E98 */  jal        func_8009FA60
/* E1A28 80038518 00000000 */   nop
/* E1A2C 8003851C 0C027880 */  jal        func_8009E200
/* E1A30 80038520 8E04FFFC */   lw        $a0, -4($s0)
/* E1A34 80038524 0C027BB8 */  jal        func_8009EEE0
/* E1A38 80038528 8E040000 */   lw        $a0, ($s0)
/* E1A3C 8003852C A6200000 */  sh         $zero, ($s1)
/* E1A40 80038530 AE00FFF8 */  sw         $zero, -8($s0)
/* E1A44 80038534 AE00FFFC */  sw         $zero, -4($s0)
/* E1A48 80038538 AE000000 */  sw         $zero, ($s0)
.L8003853C:
/* E1A4C 8003853C 26100080 */  addiu      $s0, $s0, 0x80
/* E1A50 80038540 3242FFFF */  andi       $v0, $s2, 0xffff
/* E1A54 80038544 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1A58 80038548 1440FFEE */  bnez       $v0, .L80038504
/* E1A5C 8003854C 26310080 */   addiu     $s1, $s1, 0x80
.L80038550:
/* E1A60 80038550 8FBF0024 */  lw         $ra, 0x24($sp)
/* E1A64 80038554 8FB40020 */  lw         $s4, 0x20($sp)
/* E1A68 80038558 8FB3001C */  lw         $s3, 0x1c($sp)
/* E1A6C 8003855C 8FB20018 */  lw         $s2, 0x18($sp)
/* E1A70 80038560 8FB10014 */  lw         $s1, 0x14($sp)
/* E1A74 80038564 8FB00010 */  lw         $s0, 0x10($sp)
/* E1A78 80038568 03E00008 */  jr         $ra
/* E1A7C 8003856C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80038570_E1A80
/* E1A80 80038570 3C028007 */  lui        $v0, %hi(D_8006C588)
/* E1A84 80038574 8C42C588 */  lw         $v0, %lo(D_8006C588)($v0)
/* E1A88 80038578 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E1A8C 8003857C AFBF0028 */  sw         $ra, 0x28($sp)
/* E1A90 80038580 AFB50024 */  sw         $s5, 0x24($sp)
/* E1A94 80038584 AFB40020 */  sw         $s4, 0x20($sp)
/* E1A98 80038588 AFB3001C */  sw         $s3, 0x1c($sp)
/* E1A9C 8003858C AFB20018 */  sw         $s2, 0x18($sp)
/* E1AA0 80038590 AFB10014 */  sw         $s1, 0x14($sp)
/* E1AA4 80038594 1040002A */  beqz       $v0, .L80038640
/* E1AA8 80038598 AFB00010 */   sw        $s0, 0x10($sp)
/* E1AAC 8003859C 00009021 */  addu       $s2, $zero, $zero
/* E1AB0 800385A0 00408821 */  addu       $s1, $v0, $zero
/* E1AB4 800385A4 3C14802F */  lui        $s4, 0x802f
/* E1AB8 800385A8 369497FF */  ori        $s4, $s4, 0x97ff
/* E1ABC 800385AC 24150001 */  addiu      $s5, $zero, 1
/* E1AC0 800385B0 3413FFFF */  ori        $s3, $zero, 0xffff
/* E1AC4 800385B4 2630000C */  addiu      $s0, $s1, 0xc
.L800385B8:
/* E1AC8 800385B8 96220000 */  lhu        $v0, ($s1)
/* E1ACC 800385BC 5040001B */  beql       $v0, $zero, .L8003862C
/* E1AD0 800385C0 26520001 */   addiu     $s2, $s2, 1
/* E1AD4 800385C4 8E030000 */  lw         $v1, ($s0)
/* E1AD8 800385C8 8C62000C */  lw         $v0, 0xc($v1)
/* E1ADC 800385CC 0282102B */  sltu       $v0, $s4, $v0
/* E1AE0 800385D0 1440000A */  bnez       $v0, .L800385FC
/* E1AE4 800385D4 00000000 */   nop
/* E1AE8 800385D8 8202FFF7 */  lb         $v0, -9($s0)
/* E1AEC 800385DC 14550003 */  bne        $v0, $s5, .L800385EC
/* E1AF0 800385E0 00000000 */   nop
/* E1AF4 800385E4 0C0326A1 */  jal        func_800C9A84
/* E1AF8 800385E8 8C640010 */   lw        $a0, 0x10($v1)
.L800385EC:
/* E1AFC 800385EC 0C028D30 */  jal        func_800A34C0
/* E1B00 800385F0 8E040000 */   lw        $a0, ($s0)
/* E1B04 800385F4 0800E185 */  j          .L80038614
/* E1B08 800385F8 A6200000 */   sh        $zero, ($s1)
.L800385FC:
/* E1B0C 800385FC 8C640014 */  lw         $a0, 0x14($v1)
/* E1B10 80038600 0C0326A1 */  jal        func_800C9A84
/* E1B14 80038604 00000000 */   nop
/* E1B18 80038608 0C02910B */  jal        func_800A442C
/* E1B1C 8003860C 8E040000 */   lw        $a0, ($s0)
/* E1B20 80038610 A6200000 */  sh         $zero, ($s1)
.L80038614:
/* E1B24 80038614 AE13FFFC */  sw         $s3, -4($s0)
/* E1B28 80038618 AE13FFF8 */  sw         $s3, -8($s0)
/* E1B2C 8003861C A200FFF6 */  sb         $zero, -0xa($s0)
/* E1B30 80038620 A200FFF7 */  sb         $zero, -9($s0)
/* E1B34 80038624 AE000000 */  sw         $zero, ($s0)
/* E1B38 80038628 26520001 */  addiu      $s2, $s2, 1
.L8003862C:
/* E1B3C 8003862C 26100010 */  addiu      $s0, $s0, 0x10
/* E1B40 80038630 3242FFFF */  andi       $v0, $s2, 0xffff
/* E1B44 80038634 2C4200C8 */  sltiu      $v0, $v0, 0xc8
/* E1B48 80038638 1440FFDF */  bnez       $v0, .L800385B8
/* E1B4C 8003863C 26310010 */   addiu     $s1, $s1, 0x10
.L80038640:
/* E1B50 80038640 3C028007 */  lui        $v0, %hi(D_8006C3C4)
/* E1B54 80038644 8C42C3C4 */  lw         $v0, %lo(D_8006C3C4)($v0)
/* E1B58 80038648 10400016 */  beqz       $v0, .L800386A4
/* E1B5C 8003864C 00009021 */   addu      $s2, $zero, $zero
/* E1B60 80038650 00408821 */  addu       $s1, $v0, $zero
/* E1B64 80038654 2630000C */  addiu      $s0, $s1, 0xc
.L80038658:
/* E1B68 80038658 96220000 */  lhu        $v0, ($s1)
/* E1B6C 8003865C 1040000C */  beqz       $v0, .L80038690
/* E1B70 80038660 26520001 */   addiu     $s2, $s2, 1
/* E1B74 80038664 8E04FFF8 */  lw         $a0, -8($s0)
/* E1B78 80038668 0C027E98 */  jal        func_8009FA60
/* E1B7C 8003866C 00000000 */   nop
/* E1B80 80038670 0C027880 */  jal        func_8009E200
/* E1B84 80038674 8E04FFFC */   lw        $a0, -4($s0)
/* E1B88 80038678 0C027BB8 */  jal        func_8009EEE0
/* E1B8C 8003867C 8E040000 */   lw        $a0, ($s0)
/* E1B90 80038680 A6200000 */  sh         $zero, ($s1)
/* E1B94 80038684 AE00FFF8 */  sw         $zero, -8($s0)
/* E1B98 80038688 AE00FFFC */  sw         $zero, -4($s0)
/* E1B9C 8003868C AE000000 */  sw         $zero, ($s0)
.L80038690:
/* E1BA0 80038690 26100080 */  addiu      $s0, $s0, 0x80
/* E1BA4 80038694 3242FFFF */  andi       $v0, $s2, 0xffff
/* E1BA8 80038698 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1BAC 8003869C 1440FFEE */  bnez       $v0, .L80038658
/* E1BB0 800386A0 26310080 */   addiu     $s1, $s1, 0x80
.L800386A4:
/* E1BB4 800386A4 8FBF0028 */  lw         $ra, 0x28($sp)
/* E1BB8 800386A8 8FB50024 */  lw         $s5, 0x24($sp)
/* E1BBC 800386AC 8FB40020 */  lw         $s4, 0x20($sp)
/* E1BC0 800386B0 8FB3001C */  lw         $s3, 0x1c($sp)
/* E1BC4 800386B4 8FB20018 */  lw         $s2, 0x18($sp)
/* E1BC8 800386B8 8FB10014 */  lw         $s1, 0x14($sp)
/* E1BCC 800386BC 8FB00010 */  lw         $s0, 0x10($sp)
/* E1BD0 800386C0 03E00008 */  jr         $ra
/* E1BD4 800386C4 27BD0030 */   addiu     $sp, $sp, 0x30
/* E1BD8 800386C8 00000000 */  nop
/* E1BDC 800386CC 00000000 */  nop
