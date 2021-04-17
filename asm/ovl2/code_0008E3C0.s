.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003F410_8E3C0
/* 8E3C0 8003F410 3C038008 */  lui        $v1, %hi(D_800802C0)
/* 8E3C4 8003F414 8C6302C0 */  lw         $v1, %lo(D_800802C0)($v1)
/* 8E3C8 8003F418 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E3CC 8003F41C 00803021 */  addu       $a2, $a0, $zero
/* 8E3D0 8003F420 28620009 */  slti       $v0, $v1, 9
/* 8E3D4 8003F424 10400009 */  beqz       $v0, .L8003F44C
/* 8E3D8 8003F428 AFBF0010 */   sw        $ra, 0x10($sp)
/* 8E3DC 8003F42C 000310C0 */  sll        $v0, $v1, 3
/* 8E3E0 8003F430 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8E3E4 8003F434 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8E3E8 8003F438 3C058007 */  lui        $a1, %hi(D_8006ADBC_B9D6C)
/* 8E3EC 8003F43C 00A22821 */  addu       $a1, $a1, $v0
/* 8E3F0 8003F440 8CA5ADBC */  lw         $a1, %lo(D_8006ADBC_B9D6C)($a1)
/* 8E3F4 8003F444 0C0E4959 */  jal        func_80392564
/* 8E3F8 8003F448 00000000 */   nop
.L8003F44C:
/* 8E3FC 8003F44C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8E400 8003F450 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E404 8003F454 03E00008 */  jr         $ra
/* 8E408 8003F458 00000000 */   nop

glabel func_8003F45C_8E40C
/* 8E40C 8003F45C 3C028008 */  lui        $v0, %hi(D_800802C0)
/* 8E410 8003F460 8C4202C0 */  lw         $v0, %lo(D_800802C0)($v0)
/* 8E414 8003F464 3C038008 */  lui        $v1, %hi(D_800802C4)
/* 8E418 8003F468 8C6302C4 */  lw         $v1, %lo(D_800802C4)($v1)
/* 8E41C 8003F46C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E420 8003F470 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8E424 8003F474 24420001 */  addiu      $v0, $v0, 1
/* 8E428 8003F478 2463FFFF */  addiu      $v1, $v1, -1
/* 8E42C 8003F47C 3C018008 */  lui        $at, %hi(D_800802C0)
/* 8E430 8003F480 AC2202C0 */  sw         $v0, %lo(D_800802C0)($at)
/* 8E434 8003F484 3C018008 */  lui        $at, %hi(D_800802C4)
/* 8E438 8003F488 AC2302C4 */  sw         $v1, %lo(D_800802C4)($at)
/* 8E43C 8003F48C 1C600003 */  bgtz       $v1, .L8003F49C
/* 8E440 8003F490 00000000 */   nop
/* 8E444 8003F494 0C00A3B1 */  jal        func_80028EC4_77E74
/* 8E448 8003F498 00000000 */   nop
.L8003F49C:
/* 8E44C 8003F49C 3C058008 */  lui        $a1, %hi(D_80080700)
/* 8E450 8003F4A0 8CA50700 */  lw         $a1, %lo(D_80080700)($a1)
/* 8E454 8003F4A4 3C048008 */  lui        $a0, %hi(D_80083130)
/* 8E458 8003F4A8 24843130 */  addiu      $a0, $a0, %lo(D_80083130)
/* 8E45C 8003F4AC 24A5FFFF */  addiu      $a1, $a1, -1
/* 8E460 8003F4B0 3C018008 */  lui        $at, %hi(D_80080700)
/* 8E464 8003F4B4 AC250700 */  sw         $a1, %lo(D_80080700)($at)
/* 8E468 8003F4B8 00052C00 */  sll        $a1, $a1, 0x10
/* 8E46C 8003F4BC 0C0105F6 */  jal        func_800417D8_90788
/* 8E470 8003F4C0 00052C03 */   sra       $a1, $a1, 0x10
/* 8E474 8003F4C4 3C048008 */  lui        $a0, %hi(D_80082FFC)
/* 8E478 8003F4C8 8C842FFC */  lw         $a0, %lo(D_80082FFC)($a0)
/* 8E47C 8003F4CC 0C01042B */  jal        func_800410AC_9005C
/* 8E480 8003F4D0 00000000 */   nop
/* 8E484 8003F4D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8E488 8003F4D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E48C 8003F4DC 03E00008 */  jr         $ra
/* 8E490 8003F4E0 00000000 */   nop

glabel func_8003F4E4_8E494
/* 8E494 8003F4E4 3C028008 */  lui        $v0, %hi(D_800802C4)
/* 8E498 8003F4E8 8C4202C4 */  lw         $v0, %lo(D_800802C4)($v0)
/* 8E49C 8003F4EC 03E00008 */  jr         $ra
/* 8E4A0 8003F4F0 00000000 */   nop

glabel func_8003F4F4_8E4A4
/* 8E4A4 8003F4F4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 8E4A8 8003F4F8 AFB00020 */  sw         $s0, 0x20($sp)
/* 8E4AC 8003F4FC 00808021 */  addu       $s0, $a0, $zero
/* 8E4B0 8003F500 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8E4B4 8003F504 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8E4B8 8003F508 AFB20028 */  sw         $s2, 0x28($sp)
/* 8E4BC 8003F50C 00A09021 */  addu       $s2, $a1, $zero
/* 8E4C0 8003F510 3C058007 */  lui        $a1, %hi(D_8006ADBC_B9D6C)
/* 8E4C4 8003F514 8CA5ADBC */  lw         $a1, %lo(D_8006ADBC_B9D6C)($a1)
/* 8E4C8 8003F518 AFB10024 */  sw         $s1, 0x24($sp)
/* 8E4CC 8003F51C 00C08821 */  addu       $s1, $a2, $zero
/* 8E4D0 8003F520 24020009 */  addiu      $v0, $zero, 9
/* 8E4D4 8003F524 AFBF0038 */  sw         $ra, 0x38($sp)
/* 8E4D8 8003F528 AFB50034 */  sw         $s5, 0x34($sp)
/* 8E4DC 8003F52C AFB40030 */  sw         $s4, 0x30($sp)
/* 8E4E0 8003F530 AFB3002C */  sw         $s3, 0x2c($sp)
/* 8E4E4 8003F534 3C018008 */  lui        $at, %hi(D_800802C0)
/* 8E4E8 8003F538 AC2002C0 */  sw         $zero, %lo(D_800802C0)($at)
/* 8E4EC 8003F53C 3C018008 */  lui        $at, %hi(D_800802C4)
/* 8E4F0 8003F540 AC2202C4 */  sw         $v0, %lo(D_800802C4)($at)
/* 8E4F4 8003F544 0C0E4959 */  jal        func_80392564
/* 8E4F8 8003F548 24060001 */   addiu     $a2, $zero, 1
/* 8E4FC 8003F54C 0C032663 */  jal        func_800C998C
/* 8E500 8003F550 24040160 */   addiu     $a0, $zero, 0x160
/* 8E504 8003F554 00409821 */  addu       $s3, $v0, $zero
/* 8E508 8003F558 02602021 */  addu       $a0, $s3, $zero
/* 8E50C 8003F55C 0C030134 */  jal        bzero
/* 8E510 8003F560 24050160 */   addiu     $a1, $zero, 0x160
/* 8E514 8003F564 02602021 */  addu       $a0, $s3, $zero
/* 8E518 8003F568 00002821 */  addu       $a1, $zero, $zero
/* 8E51C 8003F56C 00108600 */  sll        $s0, $s0, 0x18
/* 8E520 8003F570 00103603 */  sra        $a2, $s0, 0x18
/* 8E524 8003F574 324700FF */  andi       $a3, $s2, 0xff
/* 8E528 8003F578 2402008D */  addiu      $v0, $zero, 0x8d
/* 8E52C 8003F57C AFA20010 */  sw         $v0, 0x10($sp)
/* 8E530 8003F580 24020096 */  addiu      $v0, $zero, 0x96
/* 8E534 8003F584 323100FF */  andi       $s1, $s1, 0xff
/* 8E538 8003F588 AFA20014 */  sw         $v0, 0x14($sp)
/* 8E53C 8003F58C 0C00C428 */  jal        func_800310A0_80050
/* 8E540 8003F590 AFB10018 */   sw        $s1, 0x18($sp)
/* 8E544 8003F594 82630001 */  lb         $v1, 1($s3)
/* 8E548 8003F598 24020001 */  addiu      $v0, $zero, 1
/* 8E54C 8003F59C 14620009 */  bne        $v1, $v0, .L8003F5C4
/* 8E550 8003F5A0 02608821 */   addu      $s1, $s3, $zero
/* 8E554 8003F5A4 3C0141F0 */  lui        $at, 0x41f0
/* 8E558 8003F5A8 44810000 */  mtc1       $at, $f0
/* 8E55C 8003F5AC 00000000 */  nop
/* 8E560 8003F5B0 3C014316 */  lui        $at, 0x4316
/* 8E564 8003F5B4 44811000 */  mtc1       $at, $f2
/* 8E568 8003F5B8 00000000 */  nop
/* 8E56C 8003F5BC 0800FD78 */  j          .L8003F5E0
/* 8E570 8003F5C0 E6600020 */   swc1      $f0, 0x20($s3)
.L8003F5C4:
/* 8E574 8003F5C4 3C01C316 */  lui        $at, 0xc316
/* 8E578 8003F5C8 44810000 */  mtc1       $at, $f0
/* 8E57C 8003F5CC 00000000 */  nop
/* 8E580 8003F5D0 3C01C1F0 */  lui        $at, 0xc1f0
/* 8E584 8003F5D4 44811000 */  mtc1       $at, $f2
/* 8E588 8003F5D8 00000000 */  nop
/* 8E58C 8003F5DC E6600020 */  swc1       $f0, 0x20($s3)
.L8003F5E0:
/* 8E590 8003F5E0 E6620024 */  swc1       $f2, 0x24($s3)
/* 8E594 8003F5E4 2404008D */  addiu      $a0, $zero, 0x8d
/* 8E598 8003F5E8 00002821 */  addu       $a1, $zero, $zero
/* 8E59C 8003F5EC 00003021 */  addu       $a2, $zero, $zero
/* 8E5A0 8003F5F0 24020001 */  addiu      $v0, $zero, 1
/* 8E5A4 8003F5F4 A26200F4 */  sb         $v0, 0xf4($s3)
/* 8E5A8 8003F5F8 24020008 */  addiu      $v0, $zero, 8
/* 8E5AC 8003F5FC AE6000F8 */  sw         $zero, 0xf8($s3)
/* 8E5B0 8003F600 AE6000FC */  sw         $zero, 0xfc($s3)
/* 8E5B4 8003F604 AE600100 */  sw         $zero, 0x100($s3)
/* 8E5B8 8003F608 AE600104 */  sw         $zero, 0x104($s3)
/* 8E5BC 8003F60C AE600108 */  sw         $zero, 0x108($s3)
/* 8E5C0 8003F610 AE60010C */  sw         $zero, 0x10c($s3)
/* 8E5C4 8003F614 A6600110 */  sh         $zero, 0x110($s3)
/* 8E5C8 8003F618 0C027DAC */  jal        func_8009F6B0
/* 8E5CC 8003F61C A6620112 */   sh        $v0, 0x112($s3)
/* 8E5D0 8003F620 AE22008C */  sw         $v0, 0x8c($s1)
/* 8E5D4 8003F624 90430066 */  lbu        $v1, 0x66($v0)
/* 8E5D8 8003F628 3C058008 */  lui        $a1, %hi(D_8007E468_CD418)
/* 8E5DC 8003F62C 24A5E468 */  addiu      $a1, $a1, %lo(D_8007E468_CD418)
/* 8E5E0 8003F630 34630007 */  ori        $v1, $v1, 7
/* 8E5E4 8003F634 A0430066 */  sb         $v1, 0x66($v0)
/* 8E5E8 8003F638 8E24008C */  lw         $a0, 0x8c($s1)
/* 8E5EC 8003F63C 3C148007 */  lui        $s4, %hi(D_8006ADB0_B9D60)
/* 8E5F0 8003F640 2694ADB0 */  addiu      $s4, $s4, %lo(D_8006ADB0_B9D60)
/* 8E5F4 8003F644 0C027F32 */  jal        func_8009FCC8
/* 8E5F8 8003F648 0000A821 */   addu      $s5, $zero, $zero
/* 8E5FC 8003F64C 8E24008C */  lw         $a0, 0x8c($s1)
/* 8E600 8003F650 3C058008 */  lui        $a1, %hi(D_8007E470_CD420)
/* 8E604 8003F654 24A5E470 */  addiu      $a1, $a1, %lo(D_8007E470_CD420)
/* 8E608 8003F658 0C027F32 */  jal        func_8009FCC8
/* 8E60C 8003F65C 02609021 */   addu      $s2, $s3, $zero
/* 8E610 8003F660 24040055 */  addiu      $a0, $zero, 0x55
/* 8E614 8003F664 00002821 */  addu       $a1, $zero, $zero
/* 8E618 8003F668 0C027DAC */  jal        func_8009F6B0
/* 8E61C 8003F66C 00003021 */   addu      $a2, $zero, $zero
/* 8E620 8003F670 AE620114 */  sw         $v0, 0x114($s3)
/* 8E624 8003F674 8E24008C */  lw         $a0, 0x8c($s1)
/* 8E628 8003F678 3C058008 */  lui        $a1, %hi(D_8007E478_CD428)
/* 8E62C 8003F67C 24A5E478 */  addiu      $a1, $a1, %lo(D_8007E478_CD428)
/* 8E630 8003F680 00403021 */  addu       $a2, $v0, $zero
/* 8E634 8003F684 0C02864D */  jal        func_800A1934
/* 8E638 8003F688 00A03821 */   addu      $a3, $a1, $zero
/* 8E63C 8003F68C 24040136 */  addiu      $a0, $zero, 0x136
/* 8E640 8003F690 00002821 */  addu       $a1, $zero, $zero
/* 8E644 8003F694 0C027DAC */  jal        func_8009F6B0
/* 8E648 8003F698 00003021 */   addu      $a2, $zero, $zero
/* 8E64C 8003F69C AE620118 */  sw         $v0, 0x118($s3)
/* 8E650 8003F6A0 8E24008C */  lw         $a0, 0x8c($s1)
/* 8E654 8003F6A4 3C058008 */  lui        $a1, %hi(D_8007E480_CD430)
/* 8E658 8003F6A8 24A5E480 */  addiu      $a1, $a1, %lo(D_8007E480_CD430)
/* 8E65C 8003F6AC 3C078008 */  lui        $a3, %hi(D_8007E488_CD438)
/* 8E660 8003F6B0 24E7E488 */  addiu      $a3, $a3, %lo(D_8007E488_CD438)
/* 8E664 8003F6B4 0C02864D */  jal        func_800A1934
/* 8E668 8003F6B8 00403021 */   addu      $a2, $v0, $zero
.L8003F6BC:
/* 8E66C 8003F6BC 8E24008C */  lw         $a0, 0x8c($s1)
/* 8E670 8003F6C0 8E850000 */  lw         $a1, ($s4)
/* 8E674 8003F6C4 0C028541 */  jal        func_800A1504
/* 8E678 8003F6C8 26B50001 */   addiu     $s5, $s5, 1
/* 8E67C 8003F6CC 00408021 */  addu       $s0, $v0, $zero
/* 8E680 8003F6D0 0C032663 */  jal        func_800C998C
/* 8E684 8003F6D4 02002021 */   addu      $a0, $s0, $zero
/* 8E688 8003F6D8 AE4200E8 */  sw         $v0, 0xe8($s2)
/* 8E68C 8003F6DC 8E24008C */  lw         $a0, 0x8c($s1)
/* 8E690 8003F6E0 8E850000 */  lw         $a1, ($s4)
/* 8E694 8003F6E4 0C028511 */  jal        func_800A1444
/* 8E698 8003F6E8 26940004 */   addiu     $s4, $s4, 4
/* 8E69C 8003F6EC 00402021 */  addu       $a0, $v0, $zero
/* 8E6A0 8003F6F0 8E4500E8 */  lw         $a1, 0xe8($s2)
/* 8E6A4 8003F6F4 02003021 */  addu       $a2, $s0, $zero
/* 8E6A8 8003F6F8 0C03006C */  jal        func_800C01B0
/* 8E6AC 8003F6FC 26520004 */   addiu     $s2, $s2, 4
/* 8E6B0 8003F700 2AA20003 */  slti       $v0, $s5, 3
/* 8E6B4 8003F704 1440FFED */  bnez       $v0, .L8003F6BC
/* 8E6B8 8003F708 00000000 */   nop
/* 8E6BC 8003F70C 92220000 */  lbu        $v0, ($s1)
/* 8E6C0 8003F710 3C03803B */  lui        $v1, %hi(D_803A8B54)
/* 8E6C4 8003F714 8C638B54 */  lw         $v1, %lo(D_803A8B54)($v1)
/* 8E6C8 8003F718 86270004 */  lh         $a3, 4($s1)
/* 8E6CC 8003F71C 00021100 */  sll        $v0, $v0, 4
/* 8E6D0 8003F720 00621821 */  addu       $v1, $v1, $v0
/* 8E6D4 8003F724 AE230040 */  sw         $v1, 0x40($s1)
/* 8E6D8 8003F728 84620004 */  lh         $v0, 4($v1)
/* 8E6DC 8003F72C AFA00014 */  sw         $zero, 0x14($sp)
/* 8E6E0 8003F730 AFA20010 */  sw         $v0, 0x10($sp)
/* 8E6E4 8003F734 8E26008C */  lw         $a2, 0x8c($s1)
/* 8E6E8 8003F738 26240090 */  addiu      $a0, $s1, 0x90
/* 8E6EC 8003F73C 0C027D66 */  jal        func_8009F598
/* 8E6F0 8003F740 26250094 */   addiu     $a1, $s1, 0x94
/* 8E6F4 8003F744 24040061 */  addiu      $a0, $zero, 0x61
/* 8E6F8 8003F748 00002821 */  addu       $a1, $zero, $zero
/* 8E6FC 8003F74C 0C027DAC */  jal        func_8009F6B0
/* 8E700 8003F750 00003021 */   addu      $a2, $zero, $zero
/* 8E704 8003F754 AE62011C */  sw         $v0, 0x11c($s3)
/* 8E708 8003F758 90430066 */  lbu        $v1, 0x66($v0)
/* 8E70C 8003F75C 00002021 */  addu       $a0, $zero, $zero
/* 8E710 8003F760 34630021 */  ori        $v1, $v1, 0x21
/* 8E714 8003F764 A0430066 */  sb         $v1, 0x66($v0)
/* 8E718 8003F768 8E63011C */  lw         $v1, 0x11c($s3)
/* 8E71C 8003F76C 24050003 */  addiu      $a1, $zero, 3
/* 8E720 8003F770 2402000A */  addiu      $v0, $zero, 0xa
/* 8E724 8003F774 0C00D957 */  jal        func_8003655C_8550C
/* 8E728 8003F778 A0620067 */   sb        $v0, 0x67($v1)
/* 8E72C 8003F77C 0C026DD5 */  jal        func_8009B754
/* 8E730 8003F780 2404002F */   addiu     $a0, $zero, 0x2f
/* 8E734 8003F784 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* 8E738 8003F788 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* 8E73C 8003F78C 00402021 */  addu       $a0, $v0, $zero
/* 8E740 8003F790 3C018008 */  lui        $at, %hi(D_800802C8)
/* 8E744 8003F794 AC2402C8 */  sw         $a0, %lo(D_800802C8)($at)
/* 8E748 8003F798 00031C00 */  sll        $v1, $v1, 0x10
/* 8E74C 8003F79C 00032C03 */  sra        $a1, $v1, 0x10
/* 8E750 8003F7A0 00031FC2 */  srl        $v1, $v1, 0x1f
/* 8E754 8003F7A4 00A32821 */  addu       $a1, $a1, $v1
/* 8E758 8003F7A8 0C026E66 */  jal        func_8009B998
/* 8E75C 8003F7AC 00052843 */   sra       $a1, $a1, 1
/* 8E760 8003F7B0 02601021 */  addu       $v0, $s3, $zero
/* 8E764 8003F7B4 8FBF0038 */  lw         $ra, 0x38($sp)
/* 8E768 8003F7B8 8FB50034 */  lw         $s5, 0x34($sp)
/* 8E76C 8003F7BC 8FB40030 */  lw         $s4, 0x30($sp)
/* 8E770 8003F7C0 8FB3002C */  lw         $s3, 0x2c($sp)
/* 8E774 8003F7C4 8FB20028 */  lw         $s2, 0x28($sp)
/* 8E778 8003F7C8 8FB10024 */  lw         $s1, 0x24($sp)
/* 8E77C 8003F7CC 8FB00020 */  lw         $s0, 0x20($sp)
/* 8E780 8003F7D0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 8E784 8003F7D4 03E00008 */  jr         $ra
/* 8E788 8003F7D8 00000000 */   nop

glabel func_8003F7DC_8E78C
/* 8E78C 8003F7DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8E790 8003F7E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 8E794 8003F7E4 00809021 */  addu       $s2, $a0, $zero
/* 8E798 8003F7E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8E79C 8003F7EC AFB10014 */  sw         $s1, 0x14($sp)
/* 8E7A0 8003F7F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8E7A4 8003F7F4 8E44008C */  lw         $a0, 0x8c($s2)
/* 8E7A8 8003F7F8 0C027E98 */  jal        func_8009FA60
/* 8E7AC 8003F7FC 00008821 */   addu      $s1, $zero, $zero
/* 8E7B0 8003F800 8E440090 */  lw         $a0, 0x90($s2)
/* 8E7B4 8003F804 0C027880 */  jal        func_8009E200
/* 8E7B8 8003F808 02408021 */   addu      $s0, $s2, $zero
/* 8E7BC 8003F80C 8E440094 */  lw         $a0, 0x94($s2)
/* 8E7C0 8003F810 0C027BB8 */  jal        func_8009EEE0
/* 8E7C4 8003F814 00000000 */   nop
/* 8E7C8 8003F818 8E440114 */  lw         $a0, 0x114($s2)
/* 8E7CC 8003F81C 0C027E98 */  jal        func_8009FA60
/* 8E7D0 8003F820 00000000 */   nop
/* 8E7D4 8003F824 8E440118 */  lw         $a0, 0x118($s2)
/* 8E7D8 8003F828 0C027E98 */  jal        func_8009FA60
/* 8E7DC 8003F82C 00000000 */   nop
/* 8E7E0 8003F830 8E44011C */  lw         $a0, 0x11c($s2)
/* 8E7E4 8003F834 0C027E98 */  jal        func_8009FA60
/* 8E7E8 8003F838 00000000 */   nop
.L8003F83C:
/* 8E7EC 8003F83C 8E0400E8 */  lw         $a0, 0xe8($s0)
/* 8E7F0 8003F840 26100004 */  addiu      $s0, $s0, 4
/* 8E7F4 8003F844 0C0326A1 */  jal        func_800C9A84
/* 8E7F8 8003F848 26310001 */   addiu     $s1, $s1, 1
/* 8E7FC 8003F84C 2A220003 */  slti       $v0, $s1, 3
/* 8E800 8003F850 1440FFFA */  bnez       $v0, .L8003F83C
/* 8E804 8003F854 00000000 */   nop
/* 8E808 8003F858 3C048008 */  lui        $a0, %hi(D_800802C8)
/* 8E80C 8003F85C 8C8402C8 */  lw         $a0, %lo(D_800802C8)($a0)
/* 8E810 8003F860 0C026E46 */  jal        func_8009B918
/* 8E814 8003F864 24050001 */   addiu     $a1, $zero, 1
/* 8E818 8003F868 0C0326A1 */  jal        func_800C9A84
/* 8E81C 8003F86C 02402021 */   addu      $a0, $s2, $zero
/* 8E820 8003F870 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8E824 8003F874 8FB20018 */  lw         $s2, 0x18($sp)
/* 8E828 8003F878 8FB10014 */  lw         $s1, 0x14($sp)
/* 8E82C 8003F87C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E830 8003F880 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8E834 8003F884 03E00008 */  jr         $ra
/* 8E838 8003F888 00000000 */   nop

glabel func_8003F88C_8E83C
/* 8E83C 8003F88C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8E840 8003F890 AFB5002C */  sw         $s5, 0x2c($sp)
/* 8E844 8003F894 0080A821 */  addu       $s5, $a0, $zero
/* 8E848 8003F898 AFB60030 */  sw         $s6, 0x30($sp)
/* 8E84C 8003F89C 00A0B021 */  addu       $s6, $a1, $zero
/* 8E850 8003F8A0 AFB20020 */  sw         $s2, 0x20($sp)
/* 8E854 8003F8A4 02A09021 */  addu       $s2, $s5, $zero
/* 8E858 8003F8A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 8E85C 8003F8AC AFB40028 */  sw         $s4, 0x28($sp)
/* 8E860 8003F8B0 AFB30024 */  sw         $s3, 0x24($sp)
/* 8E864 8003F8B4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8E868 8003F8B8 1240008E */  beqz       $s2, .L8003FAF4
/* 8E86C 8003F8BC AFB00018 */   sw        $s0, 0x18($sp)
/* 8E870 8003F8C0 0000A021 */  addu       $s4, $zero, $zero
/* 8E874 8003F8C4 02409821 */  addu       $s3, $s2, $zero
/* 8E878 8003F8C8 3C118007 */  lui        $s1, %hi(D_8006ADB0_B9D60)
/* 8E87C 8003F8CC 2631ADB0 */  addiu      $s1, $s1, %lo(D_8006ADB0_B9D60)
/* 8E880 8003F8D0 02C01021 */  addu       $v0, $s6, $zero
/* 8E884 8003F8D4 3C018008 */  lui        $at, %hi(D_80082FF4)
/* 8E888 8003F8D8 A0222FF4 */  sb         $v0, %lo(D_80082FF4)($at)
/* 8E88C 8003F8DC A2420000 */  sb         $v0, ($s2)
/* 8E890 8003F8E0 3C03803B */  lui        $v1, %hi(D_803A8B54)
/* 8E894 8003F8E4 8C638B54 */  lw         $v1, %lo(D_803A8B54)($v1)
/* 8E898 8003F8E8 304200FF */  andi       $v0, $v0, 0xff
/* 8E89C 8003F8EC 00021100 */  sll        $v0, $v0, 4
/* 8E8A0 8003F8F0 00621821 */  addu       $v1, $v1, $v0
/* 8E8A4 8003F8F4 AE430040 */  sw         $v1, 0x40($s2)
.L8003F8F8:
/* 8E8A8 8003F8F8 8E44008C */  lw         $a0, 0x8c($s2)
/* 8E8AC 8003F8FC 8E250000 */  lw         $a1, ($s1)
/* 8E8B0 8003F900 0C028541 */  jal        func_800A1504
/* 8E8B4 8003F904 26940001 */   addiu     $s4, $s4, 1
/* 8E8B8 8003F908 8E44008C */  lw         $a0, 0x8c($s2)
/* 8E8BC 8003F90C 8E250000 */  lw         $a1, ($s1)
/* 8E8C0 8003F910 26310004 */  addiu      $s1, $s1, 4
/* 8E8C4 8003F914 0C028511 */  jal        func_800A1444
/* 8E8C8 8003F918 00408021 */   addu      $s0, $v0, $zero
/* 8E8CC 8003F91C 8E6400E8 */  lw         $a0, 0xe8($s3)
/* 8E8D0 8003F920 00402821 */  addu       $a1, $v0, $zero
/* 8E8D4 8003F924 02003021 */  addu       $a2, $s0, $zero
/* 8E8D8 8003F928 0C03006C */  jal        func_800C01B0
/* 8E8DC 8003F92C 26730004 */   addiu     $s3, $s3, 4
/* 8E8E0 8003F930 2A820003 */  slti       $v0, $s4, 3
/* 8E8E4 8003F934 1440FFF0 */  bnez       $v0, .L8003F8F8
/* 8E8E8 8003F938 00000000 */   nop
/* 8E8EC 8003F93C 8E440090 */  lw         $a0, 0x90($s2)
/* 8E8F0 8003F940 0C027880 */  jal        func_8009E200
/* 8E8F4 8003F944 00000000 */   nop
/* 8E8F8 8003F948 8E440094 */  lw         $a0, 0x94($s2)
/* 8E8FC 8003F94C 0C027BB8 */  jal        func_8009EEE0
/* 8E900 8003F950 00000000 */   nop
/* 8E904 8003F954 8E420040 */  lw         $v0, 0x40($s2)
/* 8E908 8003F958 86470004 */  lh         $a3, 4($s2)
/* 8E90C 8003F95C 84420004 */  lh         $v0, 4($v0)
/* 8E910 8003F960 AFA00014 */  sw         $zero, 0x14($sp)
/* 8E914 8003F964 AFA20010 */  sw         $v0, 0x10($sp)
/* 8E918 8003F968 8E46008C */  lw         $a2, 0x8c($s2)
/* 8E91C 8003F96C 26440090 */  addiu      $a0, $s2, 0x90
/* 8E920 8003F970 0C027D66 */  jal        func_8009F598
/* 8E924 8003F974 26450094 */   addiu     $a1, $s2, 0x94
/* 8E928 8003F978 C6400008 */  lwc1       $f0, 8($s2)
/* 8E92C 8003F97C 00161400 */  sll        $v0, $s6, 0x10
/* 8E930 8003F980 00021C03 */  sra        $v1, $v0, 0x10
/* 8E934 8003F984 2C620006 */  sltiu      $v0, $v1, 6
/* 8E938 8003F988 10400053 */  beqz       $v0, .L8003FAD8
/* 8E93C 8003F98C E6400014 */   swc1      $f0, 0x14($s2)
/* 8E940 8003F990 00031080 */  sll        $v0, $v1, 2
/* 8E944 8003F994 3C018008 */  lui        $at, %hi(jtbl_8007E490_CD440)
/* 8E948 8003F998 00220821 */  addu       $at, $at, $v0
/* 8E94C 8003F99C 8C22E490 */  lw         $v0, %lo(jtbl_8007E490_CD440)($at)
/* 8E950 8003F9A0 00400008 */  jr         $v0
/* 8E954 8003F9A4 00000000 */   nop
glabel L8003F9A8_8E958
/* 8E958 8003F9A8 24040001 */  addiu      $a0, $zero, 1
/* 8E95C 8003F9AC 00002821 */  addu       $a1, $zero, $zero
/* 8E960 8003F9B0 0C00DA34 */  jal        func_800368D0_85880
/* 8E964 8003F9B4 24060001 */   addiu     $a2, $zero, 1
/* 8E968 8003F9B8 0800FEB7 */  j          .L8003FADC
/* 8E96C 8003F9BC 02402021 */   addu      $a0, $s2, $zero
glabel L8003F9C0_8E970
/* 8E970 8003F9C0 24040004 */  addiu      $a0, $zero, 4
/* 8E974 8003F9C4 24050001 */  addiu      $a1, $zero, 1
/* 8E978 8003F9C8 0C00DA34 */  jal        func_800368D0_85880
/* 8E97C 8003F9CC 24060001 */   addiu     $a2, $zero, 1
/* 8E980 8003F9D0 0C02B460 */  jal        func_800AD180
/* 8E984 8003F9D4 2404000B */   addiu     $a0, $zero, 0xb
/* 8E988 8003F9D8 0C00C829 */  jal        func_800320A4_81054
/* 8E98C 8003F9DC 46000306 */   mov.s     $f12, $f0
/* 8E990 8003F9E0 8E42006C */  lw         $v0, 0x6c($s2)
/* 8E994 8003F9E4 82440002 */  lb         $a0, 2($s2)
/* 8E998 8003F9E8 44821000 */  mtc1       $v0, $f2
/* 8E99C 8003F9EC 00000000 */  nop
/* 8E9A0 8003F9F0 468010A1 */  cvt.d.w    $f2, $f2
/* 8E9A4 8003F9F4 04430005 */  bgezl      $v0, .L8003FA0C
/* 8E9A8 8003F9F8 46201020 */   cvt.s.d   $f0, $f2
/* 8E9AC 8003F9FC 3C018008 */  lui        $at, %hi(D_8007E4A8_CD458)
/* 8E9B0 8003FA00 D420E4A8 */  ldc1       $f0, %lo(D_8007E4A8_CD458)($at)
/* 8E9B4 8003FA04 46201080 */  add.d      $f2, $f2, $f0
/* 8E9B8 8003FA08 46201020 */  cvt.s.d    $f0, $f2
.L8003FA0C:
/* 8E9BC 8003FA0C 46000007 */  neg.s      $f0, $f0
/* 8E9C0 8003FA10 44050000 */  mfc1       $a1, $f0
/* 8E9C4 8003FA14 00000000 */  nop
/* 8E9C8 8003FA18 0C00C838 */  jal        func_800320E0_81090
/* 8E9CC 8003FA1C 00000000 */   nop
/* 8E9D0 8003FA20 3C06C1B0 */  lui        $a2, 0xc1b0
/* 8E9D4 8003FA24 02402021 */  addu       $a0, $s2, $zero
/* 8E9D8 8003FA28 0800FEA7 */  j          .L8003FA9C
/* 8E9DC 8003FA2C 2405000A */   addiu     $a1, $zero, 0xa
glabel L8003FA30_8E9E0
/* 8E9E0 8003FA30 24040004 */  addiu      $a0, $zero, 4
/* 8E9E4 8003FA34 24050001 */  addiu      $a1, $zero, 1
/* 8E9E8 8003FA38 0C00DA34 */  jal        func_800368D0_85880
/* 8E9EC 8003FA3C 24060001 */   addiu     $a2, $zero, 1
/* 8E9F0 8003FA40 0C02B460 */  jal        func_800AD180
/* 8E9F4 8003FA44 2404000B */   addiu     $a0, $zero, 0xb
/* 8E9F8 8003FA48 0C00C829 */  jal        func_800320A4_81054
/* 8E9FC 8003FA4C 46000306 */   mov.s     $f12, $f0
/* 8EA00 8003FA50 8E42006C */  lw         $v0, 0x6c($s2)
/* 8EA04 8003FA54 82440002 */  lb         $a0, 2($s2)
/* 8EA08 8003FA58 44821000 */  mtc1       $v0, $f2
/* 8EA0C 8003FA5C 00000000 */  nop
/* 8EA10 8003FA60 468010A1 */  cvt.d.w    $f2, $f2
/* 8EA14 8003FA64 04430005 */  bgezl      $v0, .L8003FA7C
/* 8EA18 8003FA68 46201020 */   cvt.s.d   $f0, $f2
/* 8EA1C 8003FA6C 3C018008 */  lui        $at, %hi(D_8007E4B0_CD460)
/* 8EA20 8003FA70 D420E4B0 */  ldc1       $f0, %lo(D_8007E4B0_CD460)($at)
/* 8EA24 8003FA74 46201080 */  add.d      $f2, $f2, $f0
/* 8EA28 8003FA78 46201020 */  cvt.s.d    $f0, $f2
.L8003FA7C:
/* 8EA2C 8003FA7C 46000007 */  neg.s      $f0, $f0
/* 8EA30 8003FA80 44050000 */  mfc1       $a1, $f0
/* 8EA34 8003FA84 00000000 */  nop
/* 8EA38 8003FA88 0C00C838 */  jal        func_800320E0_81090
/* 8EA3C 8003FA8C 00000000 */   nop
/* 8EA40 8003FA90 3C06C2C6 */  lui        $a2, 0xc2c6
/* 8EA44 8003FA94 02402021 */  addu       $a0, $s2, $zero
/* 8EA48 8003FA98 24050014 */  addiu      $a1, $zero, 0x14
.L8003FA9C:
/* 8EA4C 8003FA9C 0C00C7B8 */  jal        func_80031EE0_80E90
/* 8EA50 8003FAA0 00000000 */   nop
/* 8EA54 8003FAA4 0800FEB6 */  j          .L8003FAD8
/* 8EA58 8003FAA8 AEA000FC */   sw        $zero, 0xfc($s5)
glabel L8003FAAC_8EA5C
/* 8EA5C 8003FAAC 24040002 */  addiu      $a0, $zero, 2
/* 8EA60 8003FAB0 00002821 */  addu       $a1, $zero, $zero
/* 8EA64 8003FAB4 0C00DA34 */  jal        func_800368D0_85880
/* 8EA68 8003FAB8 24060001 */   addiu     $a2, $zero, 1
/* 8EA6C 8003FABC 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 8EA70 8003FAC0 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 8EA74 8003FAC4 0C0E5512 */  jal        func_80395448
/* 8EA78 8003FAC8 00000000 */   nop
/* 8EA7C 8003FACC 82440002 */  lb         $a0, 2($s2)
/* 8EA80 8003FAD0 0C00C7F8 */  jal        func_80031FE0_80F90
/* 8EA84 8003FAD4 24050005 */   addiu     $a1, $zero, 5
.L8003FAD8:
/* 8EA88 8003FAD8 02402021 */  addu       $a0, $s2, $zero
.L8003FADC:
/* 8EA8C 8003FADC 24050001 */  addiu      $a1, $zero, 1
/* 8EA90 8003FAE0 00003021 */  addu       $a2, $zero, $zero
/* 8EA94 8003FAE4 0C00C89A */  jal        func_80032268_81218
/* 8EA98 8003FAE8 A2400046 */   sb        $zero, 0x46($s2)
/* 8EA9C 8003FAEC 2402FFFF */  addiu      $v0, $zero, -1
/* 8EAA0 8003FAF0 A6420068 */  sh         $v0, 0x68($s2)
.L8003FAF4:
/* 8EAA4 8003FAF4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8EAA8 8003FAF8 8FB60030 */  lw         $s6, 0x30($sp)
/* 8EAAC 8003FAFC 8FB5002C */  lw         $s5, 0x2c($sp)
/* 8EAB0 8003FB00 8FB40028 */  lw         $s4, 0x28($sp)
/* 8EAB4 8003FB04 8FB30024 */  lw         $s3, 0x24($sp)
/* 8EAB8 8003FB08 8FB20020 */  lw         $s2, 0x20($sp)
/* 8EABC 8003FB0C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8EAC0 8003FB10 8FB00018 */  lw         $s0, 0x18($sp)
/* 8EAC4 8003FB14 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8EAC8 8003FB18 03E00008 */  jr         $ra
/* 8EACC 8003FB1C 00000000 */   nop

glabel func_8003FB20_8EAD0
/* 8EAD0 8003FB20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8EAD4 8003FB24 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8EAD8 8003FB28 00808821 */  addu       $s1, $a0, $zero
/* 8EADC 8003FB2C AFBF0028 */  sw         $ra, 0x28($sp)
/* 8EAE0 8003FB30 AFB30024 */  sw         $s3, 0x24($sp)
/* 8EAE4 8003FB34 AFB20020 */  sw         $s2, 0x20($sp)
/* 8EAE8 8003FB38 0C00C492 */  jal        func_80031248_801F8
/* 8EAEC 8003FB3C AFB00018 */   sw        $s0, 0x18($sp)
/* 8EAF0 8003FB40 3C028008 */  lui        $v0, %hi(D_80083A28)
/* 8EAF4 8003FB44 8C423A28 */  lw         $v0, %lo(D_80083A28)($v0)
/* 8EAF8 8003FB48 10400005 */  beqz       $v0, .L8003FB60
/* 8EAFC 8003FB4C 02209021 */   addu      $s2, $s1, $zero
/* 8EB00 8003FB50 0C00C4AC */  jal        func_800312B0_80260
/* 8EB04 8003FB54 02202021 */   addu      $a0, $s1, $zero
/* 8EB08 8003FB58 0800FEDA */  j          .L8003FB68
/* 8EB0C 8003FB5C 00000000 */   nop
.L8003FB60:
/* 8EB10 8003FB60 0C00FFA8 */  jal        func_8003FEA0_8EE50
/* 8EB14 8003FB64 02202021 */   addu      $a0, $s1, $zero
.L8003FB68:
/* 8EB18 8003FB68 3C028008 */  lui        $v0, %hi(D_80084628)
/* 8EB1C 8003FB6C 8C424628 */  lw         $v0, %lo(D_80084628)($v0)
/* 8EB20 8003FB70 C6220008 */  lwc1       $f2, 8($s1)
/* 8EB24 8003FB74 C4400008 */  lwc1       $f0, 8($v0)
/* 8EB28 8003FB78 46001081 */  sub.s      $f2, $f2, $f0
/* 8EB2C 8003FB7C C444000C */  lwc1       $f4, 0xc($v0)
/* 8EB30 8003FB80 C620000C */  lwc1       $f0, 0xc($s1)
/* 8EB34 8003FB84 00000000 */  nop
/* 8EB38 8003FB88 46021082 */  mul.s      $f2, $f2, $f2
/* 8EB3C 8003FB8C 46040001 */  sub.s      $f0, $f0, $f4
/* 8EB40 8003FB90 00000000 */  nop
/* 8EB44 8003FB94 46000002 */  mul.s      $f0, $f0, $f0
/* 8EB48 8003FB98 46001300 */  add.s      $f12, $f2, $f0
/* 8EB4C 8003FB9C 46006004 */  sqrt.s     $f0, $f12
/* 8EB50 8003FBA0 46000032 */  c.eq.s     $f0, $f0
/* 8EB54 8003FBA4 00000000 */  nop
/* 8EB58 8003FBA8 45010003 */  bc1t       .L8003FBB8
/* 8EB5C 8003FBAC 00000000 */   nop
/* 8EB60 8003FBB0 0C02F698 */  jal        func_800BDA60
/* 8EB64 8003FBB4 00000000 */   nop
.L8003FBB8:
/* 8EB68 8003FBB8 92230000 */  lbu        $v1, ($s1)
/* 8EB6C 8003FBBC 2C620006 */  sltiu      $v0, $v1, 6
/* 8EB70 8003FBC0 10400099 */  beqz       $v0, .L8003FE28
/* 8EB74 8003FBC4 46000086 */   mov.s     $f2, $f0
/* 8EB78 8003FBC8 00031080 */  sll        $v0, $v1, 2
/* 8EB7C 8003FBCC 3C018008 */  lui        $at, %hi(jtbl_8007E4B8_CD468)
/* 8EB80 8003FBD0 00220821 */  addu       $at, $at, $v0
/* 8EB84 8003FBD4 8C22E4B8 */  lw         $v0, %lo(jtbl_8007E4B8_CD468)($at)
/* 8EB88 8003FBD8 00400008 */  jr         $v0
/* 8EB8C 8003FBDC 00000000 */   nop
glabel L8003FBE0_8EB90
/* 8EB90 8003FBE0 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 8EB94 8003FBE4 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 8EB98 8003FBE8 0C0E5518 */  jal        func_80395460
/* 8EB9C 8003FBEC 00000000 */   nop
/* 8EBA0 8003FBF0 0C00FFDF */  jal        func_8003FF7C_8EF2C
/* 8EBA4 8003FBF4 02402021 */   addu      $a0, $s2, $zero
/* 8EBA8 8003FBF8 1440008B */  bnez       $v0, .L8003FE28
/* 8EBAC 8003FBFC 00000000 */   nop
/* 8EBB0 8003FC00 0C010019 */  jal        func_80040064_8F014
/* 8EBB4 8003FC04 02402021 */   addu      $a0, $s2, $zero
/* 8EBB8 8003FC08 14400087 */  bnez       $v0, .L8003FE28
/* 8EBBC 8003FC0C 00000000 */   nop
/* 8EBC0 8003FC10 0C00FFCE */  jal        func_8003FF38_8EEE8
/* 8EBC4 8003FC14 02402021 */   addu      $a0, $s2, $zero
/* 8EBC8 8003FC18 0800FF8A */  j          .L8003FE28
/* 8EBCC 8003FC1C 00000000 */   nop
glabel L8003FC20_8EBD0
/* 8EBD0 8003FC20 92220049 */  lbu        $v0, 0x49($s1)
.L8003FC24:
/* 8EBD4 8003FC24 10400008 */  beqz       $v0, .L8003FC48
/* 8EBD8 8003FC28 00000000 */   nop
/* 8EBDC 8003FC2C 8E220090 */  lw         $v0, 0x90($s1)
/* 8EBE0 8003FC30 8443001E */  lh         $v1, 0x1e($v0)
/* 8EBE4 8003FC34 24020005 */  addiu      $v0, $zero, 5
/* 8EBE8 8003FC38 14620003 */  bne        $v1, $v0, .L8003FC48
/* 8EBEC 8003FC3C 02202021 */   addu      $a0, $s1, $zero
/* 8EBF0 8003FC40 0C00C982 */  jal        func_80032608_815B8
/* 8EBF4 8003FC44 24050004 */   addiu     $a1, $zero, 4
.L8003FC48:
/* 8EBF8 8003FC48 0C00FFDF */  jal        func_8003FF7C_8EF2C
/* 8EBFC 8003FC4C 02402021 */   addu      $a0, $s2, $zero
/* 8EC00 8003FC50 14400075 */  bnez       $v0, .L8003FE28
/* 8EC04 8003FC54 00000000 */   nop
/* 8EC08 8003FC58 0C010019 */  jal        func_80040064_8F014
/* 8EC0C 8003FC5C 02402021 */   addu      $a0, $s2, $zero
/* 8EC10 8003FC60 1040006F */  beqz       $v0, .L8003FE20
/* 8EC14 8003FC64 00000000 */   nop
/* 8EC18 8003FC68 0800FF8A */  j          .L8003FE28
/* 8EC1C 8003FC6C 00000000 */   nop
glabel L8003FC70_8EC20
/* 8EC20 8003FC70 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 8EC24 8003FC74 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 8EC28 8003FC78 0C0E5518 */  jal        func_80395460
/* 8EC2C 8003FC7C 00000000 */   nop
/* 8EC30 8003FC80 9222004A */  lbu        $v0, 0x4a($s1)
/* 8EC34 8003FC84 0800FF09 */  j          .L8003FC24
/* 8EC38 8003FC88 00000000 */   nop
glabel L8003FC8C_8EC3C
/* 8EC3C 8003FC8C 8E220090 */  lw         $v0, 0x90($s1)
/* 8EC40 8003FC90 84420024 */  lh         $v0, 0x24($v0)
/* 8EC44 8003FC94 0800FF2A */  j          .L8003FCA8
/* 8EC48 8003FC98 2842000B */   slti      $v0, $v0, 0xb
glabel L8003FC9C_8EC4C
/* 8EC4C 8003FC9C 8E220090 */  lw         $v0, 0x90($s1)
/* 8EC50 8003FCA0 84420024 */  lh         $v0, 0x24($v0)
/* 8EC54 8003FCA4 28420015 */  slti       $v0, $v0, 0x15
.L8003FCA8:
/* 8EC58 8003FCA8 1440005D */  bnez       $v0, .L8003FE20
/* 8EC5C 8003FCAC 00000000 */   nop
/* 8EC60 8003FCB0 0C00FFDF */  jal        func_8003FF7C_8EF2C
/* 8EC64 8003FCB4 02402021 */   addu      $a0, $s2, $zero
/* 8EC68 8003FCB8 10400059 */  beqz       $v0, .L8003FE20
/* 8EC6C 8003FCBC 00000000 */   nop
/* 8EC70 8003FCC0 0800FF8A */  j          .L8003FE28
/* 8EC74 8003FCC4 00000000 */   nop
glabel L8003FCC8_8EC78
/* 8EC78 8003FCC8 3C0142A0 */  lui        $at, 0x42a0
/* 8EC7C 8003FCCC 44810000 */  mtc1       $at, $f0
/* 8EC80 8003FCD0 00000000 */  nop
/* 8EC84 8003FCD4 4600103C */  c.lt.s     $f2, $f0
/* 8EC88 8003FCD8 00000000 */  nop
/* 8EC8C 8003FCDC 00000000 */  nop
/* 8EC90 8003FCE0 45000020 */  bc1f       .L8003FD64
/* 8EC94 8003FCE4 24020005 */   addiu     $v0, $zero, 5
/* 8EC98 8003FCE8 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 8EC9C 8003FCEC 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 8ECA0 8003FCF0 1462001C */  bne        $v1, $v0, .L8003FD64
/* 8ECA4 8003FCF4 00000000 */   nop
/* 8ECA8 8003FCF8 3C028008 */  lui        $v0, %hi(D_80084628)
/* 8ECAC 8003FCFC 8C424628 */  lw         $v0, %lo(D_80084628)($v0)
/* 8ECB0 8003FD00 90420000 */  lbu        $v0, ($v0)
/* 8ECB4 8003FD04 2442FFF9 */  addiu      $v0, $v0, -7
/* 8ECB8 8003FD08 2C420002 */  sltiu      $v0, $v0, 2
/* 8ECBC 8003FD0C 14400015 */  bnez       $v0, .L8003FD64
/* 8ECC0 8003FD10 00000000 */   nop
/* 8ECC4 8003FD14 8E220090 */  lw         $v0, 0x90($s1)
/* 8ECC8 8003FD18 8443001E */  lh         $v1, 0x1e($v0)
/* 8ECCC 8003FD1C 24020006 */  addiu      $v0, $zero, 6
/* 8ECD0 8003FD20 14620010 */  bne        $v1, $v0, .L8003FD64
/* 8ECD4 8003FD24 00000000 */   nop
/* 8ECD8 8003FD28 3C028008 */  lui        $v0, %hi(D_800802C0)
/* 8ECDC 8003FD2C 8C4202C0 */  lw         $v0, %lo(D_800802C0)($v0)
/* 8ECE0 8003FD30 000210C0 */  sll        $v0, $v0, 3
/* 8ECE4 8003FD34 3C048007 */  lui        $a0, %hi(D_8006ADC0_B9D70)
/* 8ECE8 8003FD38 00822021 */  addu       $a0, $a0, $v0
/* 8ECEC 8003FD3C 8C84ADC0 */  lw         $a0, %lo(D_8006ADC0_B9D70)($a0)
/* 8ECF0 8003FD40 0C00BF2A */  jal        func_8002FCA8_7EC58
/* 8ECF4 8003FD44 00000000 */   nop
/* 8ECF8 8003FD48 3C0143AF */  lui        $at, 0x43af
/* 8ECFC 8003FD4C 44816000 */  mtc1       $at, $f12
/* 8ED00 8003FD50 00000000 */  nop
/* 8ED04 8003FD54 0C00C8E5 */  jal        func_80032394_81344
/* 8ED08 8003FD58 00000000 */   nop
/* 8ED0C 8003FD5C 0800FF8A */  j          .L8003FE28
/* 8ED10 8003FD60 00000000 */   nop
.L8003FD64:
/* 8ED14 8003FD64 8E220090 */  lw         $v0, 0x90($s1)
/* 8ED18 8003FD68 84430024 */  lh         $v1, 0x24($v0)
/* 8ED1C 8003FD6C 2402001C */  addiu      $v0, $zero, 0x1c
/* 8ED20 8003FD70 14620004 */  bne        $v1, $v0, .L8003FD84
/* 8ED24 8003FD74 02202021 */   addu      $a0, $s1, $zero
/* 8ED28 8003FD78 0C00DAB0 */  jal        func_80036AC0_85A70
/* 8ED2C 8003FD7C 00000000 */   nop
/* 8ED30 8003FD80 02202021 */  addu       $a0, $s1, $zero
.L8003FD84:
/* 8ED34 8003FD84 24050022 */  addiu      $a1, $zero, 0x22
/* 8ED38 8003FD88 24130002 */  addiu      $s3, $zero, 2
/* 8ED3C 8003FD8C 2402FFFF */  addiu      $v0, $zero, -1
/* 8ED40 8003FD90 24060001 */  addiu      $a2, $zero, 1
/* 8ED44 8003FD94 24070007 */  addiu      $a3, $zero, 7
/* 8ED48 8003FD98 AFB30010 */  sw         $s3, 0x10($sp)
/* 8ED4C 8003FD9C 0C00C596 */  jal        func_80031658_80608
/* 8ED50 8003FDA0 AFA20014 */   sw        $v0, 0x14($sp)
/* 8ED54 8003FDA4 00408021 */  addu       $s0, $v0, $zero
/* 8ED58 8003FDA8 24020001 */  addiu      $v0, $zero, 1
/* 8ED5C 8003FDAC 16020005 */  bne        $s0, $v0, .L8003FDC4
/* 8ED60 8003FDB0 00000000 */   nop
/* 8ED64 8003FDB4 0C00FFDF */  jal        func_8003FF7C_8EF2C
/* 8ED68 8003FDB8 02402021 */   addu      $a0, $s2, $zero
/* 8ED6C 8003FDBC 1440001A */  bnez       $v0, .L8003FE28
/* 8ED70 8003FDC0 00000000 */   nop
.L8003FDC4:
/* 8ED74 8003FDC4 1613000D */  bne        $s0, $s3, .L8003FDFC
/* 8ED78 8003FDC8 00000000 */   nop
/* 8ED7C 8003FDCC 0C026DD5 */  jal        func_8009B754
/* 8ED80 8003FDD0 2404005D */   addiu     $a0, $zero, 0x5d
/* 8ED84 8003FDD4 3C048015 */  lui        $a0, %hi(D_80149DC0)
/* 8ED88 8003FDD8 8C849DC0 */  lw         $a0, %lo(D_80149DC0)($a0)
/* 8ED8C 8003FDDC 0C0E4E81 */  jal        func_80393A04
/* 8ED90 8003FDE0 00000000 */   nop
/* 8ED94 8003FDE4 0C02B460 */  jal        func_800AD180
/* 8ED98 8003FDE8 24040009 */   addiu     $a0, $zero, 9
/* 8ED9C 8003FDEC 0C00C829 */  jal        func_800320A4_81054
/* 8EDA0 8003FDF0 46000306 */   mov.s     $f12, $f0
/* 8EDA4 8003FDF4 0800FF8A */  j          .L8003FE28
/* 8EDA8 8003FDF8 00000000 */   nop
.L8003FDFC:
/* 8EDAC 8003FDFC 16000008 */  bnez       $s0, .L8003FE20
/* 8EDB0 8003FE00 00000000 */   nop
/* 8EDB4 8003FE04 8E220090 */  lw         $v0, 0x90($s1)
/* 8EDB8 8003FE08 84430024 */  lh         $v1, 0x24($v0)
/* 8EDBC 8003FE0C 24020023 */  addiu      $v0, $zero, 0x23
/* 8EDC0 8003FE10 14620003 */  bne        $v1, $v0, .L8003FE20
/* 8EDC4 8003FE14 00000000 */   nop
/* 8EDC8 8003FE18 0C026DD5 */  jal        func_8009B754
/* 8EDCC 8003FE1C 24040025 */   addiu     $a0, $zero, 0x25
.L8003FE20:
/* 8EDD0 8003FE20 0C00FFC0 */  jal        func_8003FF00_8EEB0
/* 8EDD4 8003FE24 02402021 */   addu      $a0, $s2, $zero
.L8003FE28:
/* 8EDD8 8003FE28 3C028008 */  lui        $v0, %hi(D_80083A40)
/* 8EDDC 8003FE2C 90423A40 */  lbu        $v0, %lo(D_80083A40)($v0)
/* 8EDE0 8003FE30 14400013 */  bnez       $v0, .L8003FE80
/* 8EDE4 8003FE34 00000000 */   nop
/* 8EDE8 8003FE38 92220000 */  lbu        $v0, ($s1)
/* 8EDEC 8003FE3C 2442FFFD */  addiu      $v0, $v0, -3
/* 8EDF0 8003FE40 2C420002 */  sltiu      $v0, $v0, 2
/* 8EDF4 8003FE44 1440000E */  bnez       $v0, .L8003FE80
/* 8EDF8 8003FE48 00000000 */   nop
/* 8EDFC 8003FE4C 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 8EE00 8003FE50 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 8EE04 8003FE54 0C0E47CB */  jal        func_80391F2C
/* 8EE08 8003FE58 00000000 */   nop
/* 8EE0C 8003FE5C 28420002 */  slti       $v0, $v0, 2
/* 8EE10 8003FE60 10400007 */  beqz       $v0, .L8003FE80
/* 8EE14 8003FE64 24020001 */   addiu     $v0, $zero, 1
/* 8EE18 8003FE68 3C018008 */  lui        $at, %hi(D_80083A40)
/* 8EE1C 8003FE6C A0223A40 */  sb         $v0, %lo(D_80083A40)($at)
/* 8EE20 8003FE70 0C00A3B1 */  jal        func_80028EC4_77E74
/* 8EE24 8003FE74 A2220045 */   sb        $v0, 0x45($s1)
/* 8EE28 8003FE78 0C00BF2A */  jal        func_8002FCA8_7EC58
/* 8EE2C 8003FE7C 2404019D */   addiu     $a0, $zero, 0x19d
.L8003FE80:
/* 8EE30 8003FE80 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8EE34 8003FE84 8FB30024 */  lw         $s3, 0x24($sp)
/* 8EE38 8003FE88 8FB20020 */  lw         $s2, 0x20($sp)
/* 8EE3C 8003FE8C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8EE40 8003FE90 8FB00018 */  lw         $s0, 0x18($sp)
/* 8EE44 8003FE94 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8EE48 8003FE98 03E00008 */  jr         $ra
/* 8EE4C 8003FE9C 00000000 */   nop

glabel func_8003FEA0_8EE50
/* 8EE50 8003FEA0 3C018008 */  lui        $at, %hi(D_80084630)
/* 8EE54 8003FEA4 C4224630 */  lwc1       $f2, %lo(D_80084630)($at)
/* 8EE58 8003FEA8 3C0142A0 */  lui        $at, 0x42a0
/* 8EE5C 8003FEAC 44810000 */  mtc1       $at, $f0
/* 8EE60 8003FEB0 00000000 */  nop
/* 8EE64 8003FEB4 4602003C */  c.lt.s     $f0, $f2
/* 8EE68 8003FEB8 00000000 */  nop
/* 8EE6C 8003FEBC 00000000 */  nop
/* 8EE70 8003FEC0 45000004 */  bc1f       .L8003FED4
/* 8EE74 8003FEC4 00801821 */   addu      $v1, $a0, $zero
/* 8EE78 8003FEC8 24020001 */  addiu      $v0, $zero, 1
/* 8EE7C 8003FECC 0800FFBE */  j          .L8003FEF8
/* 8EE80 8003FED0 A0820049 */   sb        $v0, 0x49($a0)
.L8003FED4:
/* 8EE84 8003FED4 3C014270 */  lui        $at, 0x4270
/* 8EE88 8003FED8 44810000 */  mtc1       $at, $f0
/* 8EE8C 8003FEDC 00000000 */  nop
/* 8EE90 8003FEE0 4600103C */  c.lt.s     $f2, $f0
/* 8EE94 8003FEE4 00000000 */  nop
/* 8EE98 8003FEE8 00000000 */  nop
/* 8EE9C 8003FEEC 45000002 */  bc1f       .L8003FEF8
/* 8EEA0 8003FEF0 24020001 */   addiu     $v0, $zero, 1
/* 8EEA4 8003FEF4 A0620051 */  sb         $v0, 0x51($v1)
.L8003FEF8:
/* 8EEA8 8003FEF8 03E00008 */  jr         $ra
/* 8EEAC 8003FEFC 00000000 */   nop

glabel func_8003FF00_8EEB0
/* 8EEB0 8003FF00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EEB4 8003FF04 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8EEB8 8003FF08 8C820090 */  lw         $v0, 0x90($a0)
/* 8EEBC 8003FF0C 8443001E */  lh         $v1, 0x1e($v0)
/* 8EEC0 8003FF10 240200FF */  addiu      $v0, $zero, 0xff
/* 8EEC4 8003FF14 14620004 */  bne        $v1, $v0, .L8003FF28
/* 8EEC8 8003FF18 00001021 */   addu      $v0, $zero, $zero
/* 8EECC 8003FF1C 0C00FE23 */  jal        func_8003F88C_8E83C
/* 8EED0 8003FF20 00002821 */   addu      $a1, $zero, $zero
/* 8EED4 8003FF24 24020001 */  addiu      $v0, $zero, 1
.L8003FF28:
/* 8EED8 8003FF28 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8EEDC 8003FF2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8EEE0 8003FF30 03E00008 */  jr         $ra
/* 8EEE4 8003FF34 00000000 */   nop

glabel func_8003FF38_8EEE8
/* 8EEE8 8003FF38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EEEC 8003FF3C AFBF0010 */  sw         $ra, 0x10($sp)
/* 8EEF0 8003FF40 90820049 */  lbu        $v0, 0x49($a0)
/* 8EEF4 8003FF44 14400006 */  bnez       $v0, .L8003FF60
/* 8EEF8 8003FF48 24050001 */   addiu     $a1, $zero, 1
/* 8EEFC 8003FF4C 9082004A */  lbu        $v0, 0x4a($a0)
/* 8EF00 8003FF50 14400003 */  bnez       $v0, .L8003FF60
/* 8EF04 8003FF54 24050002 */   addiu     $a1, $zero, 2
/* 8EF08 8003FF58 0800FFDB */  j          .L8003FF6C
/* 8EF0C 8003FF5C 00001021 */   addu      $v0, $zero, $zero
.L8003FF60:
/* 8EF10 8003FF60 0C00FE23 */  jal        func_8003F88C_8E83C
/* 8EF14 8003FF64 00000000 */   nop
/* 8EF18 8003FF68 24020001 */  addiu      $v0, $zero, 1
.L8003FF6C:
/* 8EF1C 8003FF6C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8EF20 8003FF70 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8EF24 8003FF74 03E00008 */  jr         $ra
/* 8EF28 8003FF78 00000000 */   nop

glabel func_8003FF7C_8EF2C
/* 8EF2C 8003FF7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EF30 8003FF80 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8EF34 8003FF84 84830068 */  lh         $v1, 0x68($a0)
/* 8EF38 8003FF88 2402FFFF */  addiu      $v0, $zero, -1
/* 8EF3C 8003FF8C 10620030 */  beq        $v1, $v0, .L80040050
/* 8EF40 8003FF90 00802821 */   addu      $a1, $a0, $zero
/* 8EF44 8003FF94 90830000 */  lbu        $v1, ($a0)
/* 8EF48 8003FF98 2C620006 */  sltiu      $v0, $v1, 6
/* 8EF4C 8003FF9C 1040002C */  beqz       $v0, .L80040050
/* 8EF50 8003FFA0 00031080 */   sll       $v0, $v1, 2
/* 8EF54 8003FFA4 3C018008 */  lui        $at, %hi(jtbl_8007E4D0_CD480)
/* 8EF58 8003FFA8 00220821 */  addu       $at, $at, $v0
/* 8EF5C 8003FFAC 8C22E4D0 */  lw         $v0, %lo(jtbl_8007E4D0_CD480)($at)
/* 8EF60 8003FFB0 00400008 */  jr         $v0
/* 8EF64 8003FFB4 00000000 */   nop
glabel L8003FFB8_8EF68
/* 8EF68 8003FFB8 94A30068 */  lhu        $v1, 0x68($a1)
/* 8EF6C 8003FFBC 2C620007 */  sltiu      $v0, $v1, 7
/* 8EF70 8003FFC0 1040000C */  beqz       $v0, .L8003FFF4
/* 8EF74 8003FFC4 00031400 */   sll       $v0, $v1, 0x10
/* 8EF78 8003FFC8 80A20001 */  lb         $v0, 1($a1)
/* 8EF7C 8003FFCC C4A20008 */  lwc1       $f2, 8($a1)
/* 8EF80 8003FFD0 00021040 */  sll        $v0, $v0, 1
/* 8EF84 8003FFD4 44820000 */  mtc1       $v0, $f0
/* 8EF88 8003FFD8 00000000 */  nop
/* 8EF8C 8003FFDC 46800020 */  cvt.s.w    $f0, $f0
/* 8EF90 8003FFE0 46001080 */  add.s      $f2, $f2, $f0
/* 8EF94 8003FFE4 00001021 */  addu       $v0, $zero, $zero
/* 8EF98 8003FFE8 E4A20008 */  swc1       $f2, 8($a1)
/* 8EF9C 8003FFEC 08010015 */  j          .L80040054
/* 8EFA0 8003FFF0 E4A20014 */   swc1      $f2, 0x14($a1)
.L8003FFF4:
/* 8EFA4 8003FFF4 00021403 */  sra        $v0, $v0, 0x10
/* 8EFA8 8003FFF8 3843000B */  xori       $v1, $v0, 0xb
/* 8EFAC 8003FFFC 2C630001 */  sltiu      $v1, $v1, 1
/* 8EFB0 80040000 3842000E */  xori       $v0, $v0, 0xe
/* 8EFB4 80040004 2C420001 */  sltiu      $v0, $v0, 1
/* 8EFB8 80040008 00621825 */  or         $v1, $v1, $v0
/* 8EFBC 8004000C 1060000C */  beqz       $v1, .L80040040
/* 8EFC0 80040010 24050003 */   addiu     $a1, $zero, 3
/* 8EFC4 80040014 08010010 */  j          .L80040040
/* 8EFC8 80040018 24050004 */   addiu     $a1, $zero, 4
glabel L8004001C_8EFCC
/* 8EFCC 8004001C 84A20068 */  lh         $v0, 0x68($a1)
/* 8EFD0 80040020 3843000B */  xori       $v1, $v0, 0xb
/* 8EFD4 80040024 2C630001 */  sltiu      $v1, $v1, 1
/* 8EFD8 80040028 3842000E */  xori       $v0, $v0, 0xe
/* 8EFDC 8004002C 2C420001 */  sltiu      $v0, $v0, 1
/* 8EFE0 80040030 00621825 */  or         $v1, $v1, $v0
/* 8EFE4 80040034 14600002 */  bnez       $v1, .L80040040
/* 8EFE8 80040038 24050004 */   addiu     $a1, $zero, 4
glabel L8004003C_8EFEC
/* 8EFEC 8004003C 24050003 */  addiu      $a1, $zero, 3
.L80040040:
/* 8EFF0 80040040 0C00FE23 */  jal        func_8003F88C_8E83C
/* 8EFF4 80040044 00000000 */   nop
/* 8EFF8 80040048 08010015 */  j          .L80040054
/* 8EFFC 8004004C 24020001 */   addiu     $v0, $zero, 1
.L80040050:
/* 8F000 80040050 00001021 */  addu       $v0, $zero, $zero
.L80040054:
/* 8F004 80040054 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8F008 80040058 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F00C 8004005C 03E00008 */  jr         $ra
/* 8F010 80040060 00000000 */   nop

glabel func_80040064_8F014
/* 8F014 80040064 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F018 80040068 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8F01C 8004006C 90820051 */  lbu        $v0, 0x51($a0)
/* 8F020 80040070 10400004 */  beqz       $v0, .L80040084
/* 8F024 80040074 00001021 */   addu      $v0, $zero, $zero
/* 8F028 80040078 0C00FE23 */  jal        func_8003F88C_8E83C
/* 8F02C 8004007C 24050005 */   addiu     $a1, $zero, 5
/* 8F030 80040080 24020001 */  addiu      $v0, $zero, 1
.L80040084:
/* 8F034 80040084 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8F038 80040088 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F03C 8004008C 03E00008 */  jr         $ra
/* 8F040 80040090 00000000 */   nop

glabel func_80040094_8F044
/* 8F044 80040094 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8F048 80040098 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8F04C 8004009C 00808821 */  addu       $s1, $a0, $zero
/* 8F050 800400A0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 8F054 800400A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 8F058 800400A8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 8F05C 800400AC 92230000 */  lbu        $v1, ($s1)
/* 8F060 800400B0 28620005 */  slti       $v0, $v1, 5
/* 8F064 800400B4 10400008 */  beqz       $v0, .L800400D8
/* 8F068 800400B8 02208021 */   addu      $s0, $s1, $zero
/* 8F06C 800400BC 28620003 */  slti       $v0, $v1, 3
/* 8F070 800400C0 14400005 */  bnez       $v0, .L800400D8
/* 8F074 800400C4 00000000 */   nop
/* 8F078 800400C8 0C00C6AE */  jal        func_80031AB8_80A68
/* 8F07C 800400CC 00000000 */   nop
/* 8F080 800400D0 08010091 */  j          .L80040244
/* 8F084 800400D4 00000000 */   nop
.L800400D8:
/* 8F088 800400D8 920300F4 */  lbu        $v1, 0xf4($s0)
/* 8F08C 800400DC 24020001 */  addiu      $v0, $zero, 1
/* 8F090 800400E0 14620058 */  bne        $v1, $v0, .L80040244
/* 8F094 800400E4 260400F8 */   addiu     $a0, $s0, 0xf8
/* 8F098 800400E8 92220002 */  lbu        $v0, 2($s1)
/* 8F09C 800400EC 3C0740A0 */  lui        $a3, 0x40a0
/* 8F0A0 800400F0 26050104 */  addiu      $a1, $s0, 0x104
/* 8F0A4 800400F4 00003021 */  addu       $a2, $zero, $zero
/* 8F0A8 800400F8 0C026852 */  jal        func_8009A148
/* 8F0AC 800400FC AFA20010 */   sw        $v0, 0x10($sp)
/* 8F0B0 80040100 C60000F8 */  lwc1       $f0, 0xf8($s0)
/* 8F0B4 80040104 C60200FC */  lwc1       $f2, 0xfc($s0)
/* 8F0B8 80040108 E6000100 */  swc1       $f0, 0x100($s0)
/* 8F0BC 8004010C C6040100 */  lwc1       $f4, 0x100($s0)
/* 8F0C0 80040110 C6000104 */  lwc1       $f0, 0x104($s0)
/* 8F0C4 80040114 4604103C */  c.lt.s     $f2, $f4
/* 8F0C8 80040118 00000000 */  nop
/* 8F0CC 8004011C 00000000 */  nop
/* 8F0D0 80040120 45000006 */  bc1f       .L8004013C
/* 8F0D4 80040124 E600010C */   swc1      $f0, 0x10c($s0)
/* 8F0D8 80040128 3C013E80 */  lui        $at, 0x3e80
/* 8F0DC 8004012C 44810000 */  mtc1       $at, $f0
/* 8F0E0 80040130 00000000 */  nop
/* 8F0E4 80040134 08010057 */  j          .L8004015C
/* 8F0E8 80040138 46001000 */   add.s     $f0, $f2, $f0
.L8004013C:
/* 8F0EC 8004013C 4602203C */  c.lt.s     $f4, $f2
/* 8F0F0 80040140 00000000 */  nop
/* 8F0F4 80040144 45000006 */  bc1f       .L80040160
/* 8F0F8 80040148 00000000 */   nop
/* 8F0FC 8004014C 3C013E80 */  lui        $at, 0x3e80
/* 8F100 80040150 44810000 */  mtc1       $at, $f0
/* 8F104 80040154 00000000 */  nop
/* 8F108 80040158 46001001 */  sub.s      $f0, $f2, $f0
.L8004015C:
/* 8F10C 8004015C E60000FC */  swc1       $f0, 0xfc($s0)
.L80040160:
/* 8F110 80040160 C600010C */  lwc1       $f0, 0x10c($s0)
/* 8F114 80040164 3C018008 */  lui        $at, %hi(D_8007E4E8_CD498)
/* 8F118 80040168 D434E4E8 */  ldc1       $f20, %lo(D_8007E4E8_CD498)($at)
/* 8F11C 8004016C 46000321 */  cvt.d.s    $f12, $f0
/* 8F120 80040170 46346302 */  mul.d      $f12, $f12, $f20
/* 8F124 80040174 E6000108 */  swc1       $f0, 0x108($s0)
/* 8F128 80040178 0C02F784 */  jal        func_800BDE10
/* 8F12C 8004017C 46206320 */   cvt.s.d   $f12, $f12
/* 8F130 80040180 C60C0108 */  lwc1       $f12, 0x108($s0)
/* 8F134 80040184 46006321 */  cvt.d.s    $f12, $f12
/* 8F138 80040188 46346302 */  mul.d      $f12, $f12, $f20
/* 8F13C 8004018C C60200FC */  lwc1       $f2, 0xfc($s0)
/* 8F140 80040190 46020502 */  mul.s      $f20, $f0, $f2
/* 8F144 80040194 0C02FF68 */  jal        func_800BFDA0
/* 8F148 80040198 46206320 */   cvt.s.d   $f12, $f12
/* 8F14C 8004019C C60400FC */  lwc1       $f4, 0xfc($s0)
/* 8F150 800401A0 C6220008 */  lwc1       $f2, 8($s1)
/* 8F154 800401A4 00000000 */  nop
/* 8F158 800401A8 46040002 */  mul.s      $f0, $f0, $f4
/* 8F15C 800401AC 46141081 */  sub.s      $f2, $f2, $f20
/* 8F160 800401B0 C624000C */  lwc1       $f4, 0xc($s1)
/* 8F164 800401B4 E6220008 */  swc1       $f2, 8($s1)
/* 8F168 800401B8 C6220008 */  lwc1       $f2, 8($s1)
/* 8F16C 800401BC 46002100 */  add.s      $f4, $f4, $f0
/* 8F170 800401C0 C6200024 */  lwc1       $f0, 0x24($s1)
/* 8F174 800401C4 4602003C */  c.lt.s     $f0, $f2
/* 8F178 800401C8 00000000 */  nop
/* 8F17C 800401CC 00000000 */  nop
/* 8F180 800401D0 45010006 */  bc1t       .L800401EC
/* 8F184 800401D4 E624000C */   swc1      $f4, 0xc($s1)
/* 8F188 800401D8 C6200020 */  lwc1       $f0, 0x20($s1)
/* 8F18C 800401DC 4600103C */  c.lt.s     $f2, $f0
/* 8F190 800401E0 00000000 */  nop
/* 8F194 800401E4 45000002 */  bc1f       .L800401F0
/* 8F198 800401E8 00000000 */   nop
.L800401EC:
/* 8F19C 800401EC E6200008 */  swc1       $f0, 8($s1)
.L800401F0:
/* 8F1A0 800401F0 C620000C */  lwc1       $f0, 0xc($s1)
/* 8F1A4 800401F4 3C0141F0 */  lui        $at, 0x41f0
/* 8F1A8 800401F8 44811000 */  mtc1       $at, $f2
/* 8F1AC 800401FC 00000000 */  nop
/* 8F1B0 80040200 4600103C */  c.lt.s     $f2, $f0
/* 8F1B4 80040204 00000000 */  nop
/* 8F1B8 80040208 00000000 */  nop
/* 8F1BC 8004020C 45030009 */  bc1tl      .L80040234
/* 8F1C0 80040210 E622000C */   swc1      $f2, 0xc($s1)
/* 8F1C4 80040214 3C01C1F0 */  lui        $at, 0xc1f0
/* 8F1C8 80040218 44811000 */  mtc1       $at, $f2
/* 8F1CC 8004021C 00000000 */  nop
/* 8F1D0 80040220 4602003C */  c.lt.s     $f0, $f2
/* 8F1D4 80040224 00000000 */  nop
/* 8F1D8 80040228 00000000 */  nop
/* 8F1DC 8004022C 45030001 */  bc1tl      .L80040234
/* 8F1E0 80040230 E622000C */   swc1      $f2, 0xc($s1)
.L80040234:
/* 8F1E4 80040234 C6200008 */  lwc1       $f0, 8($s1)
/* 8F1E8 80040238 C622000C */  lwc1       $f2, 0xc($s1)
/* 8F1EC 8004023C E6200014 */  swc1       $f0, 0x14($s1)
/* 8F1F0 80040240 E6220018 */  swc1       $f2, 0x18($s1)
.L80040244:
/* 8F1F4 80040244 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8F1F8 80040248 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8F1FC 8004024C 8FB00018 */  lw         $s0, 0x18($sp)
/* 8F200 80040250 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 8F204 80040254 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8F208 80040258 03E00008 */  jr         $ra
/* 8F20C 8004025C 00000000 */   nop

glabel func_80040260_8F210
/* 8F210 80040260 C4820008 */  lwc1       $f2, 8($a0)
/* 8F214 80040264 3C018008 */  lui        $at, %hi(D_80083A3C)
/* 8F218 80040268 C4243A3C */  lwc1       $f4, %lo(D_80083A3C)($at)
/* 8F21C 8004026C 46041080 */  add.s      $f2, $f2, $f4
/* 8F220 80040270 C4800014 */  lwc1       $f0, 0x14($a0)
/* 8F224 80040274 46040000 */  add.s      $f0, $f0, $f4
/* 8F228 80040278 E4820008 */  swc1       $f2, 8($a0)
/* 8F22C 8004027C 03E00008 */  jr         $ra
/* 8F230 80040280 E4800014 */   swc1      $f0, 0x14($a0)

glabel func_80040284_8F234
/* 8F234 80040284 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F238 80040288 AFB00010 */  sw         $s0, 0x10($sp)
/* 8F23C 8004028C 00808021 */  addu       $s0, $a0, $zero
/* 8F240 80040290 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F244 80040294 0C00C6DB */  jal        func_80031B6C_80B1C
/* 8F248 80040298 A2000048 */   sb        $zero, 0x48($s0)
/* 8F24C 8004029C 0C00C741 */  jal        func_80031D04_80CB4
/* 8F250 800402A0 02002021 */   addu      $a0, $s0, $zero
/* 8F254 800402A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F258 800402A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8F25C 800402AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F260 800402B0 03E00008 */  jr         $ra
/* 8F264 800402B4 00000000 */   nop

glabel func_800402B8_8F268
/* 8F268 800402B8 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 8F26C 800402BC AFB100A4 */  sw         $s1, 0xa4($sp)
/* 8F270 800402C0 00808821 */  addu       $s1, $a0, $zero
/* 8F274 800402C4 AFBF00AC */  sw         $ra, 0xac($sp)
/* 8F278 800402C8 AFB200A8 */  sw         $s2, 0xa8($sp)
/* 8F27C 800402CC AFB000A0 */  sw         $s0, 0xa0($sp)
/* 8F280 800402D0 96220110 */  lhu        $v0, 0x110($s1)
/* 8F284 800402D4 96230112 */  lhu        $v1, 0x112($s1)
/* 8F288 800402D8 86240112 */  lh         $a0, 0x112($s1)
/* 8F28C 800402DC 02209021 */  addu       $s2, $s1, $zero
/* 8F290 800402E0 00432821 */  addu       $a1, $v0, $v1
/* 8F294 800402E4 1880000C */  blez       $a0, .L80040318
/* 8F298 800402E8 A6250110 */   sh        $a1, 0x110($s1)
/* 8F29C 800402EC 00051400 */  sll        $v0, $a1, 0x10
/* 8F2A0 800402F0 00021403 */  sra        $v0, $v0, 0x10
/* 8F2A4 800402F4 28420100 */  slti       $v0, $v0, 0x100
/* 8F2A8 800402F8 14400007 */  bnez       $v0, .L80040318
/* 8F2AC 800402FC 240201FE */   addiu     $v0, $zero, 0x1fe
/* 8F2B0 80040300 96230112 */  lhu        $v1, 0x112($s1)
/* 8F2B4 80040304 00451023 */  subu       $v0, $v0, $a1
/* 8F2B8 80040308 A6220110 */  sh         $v0, 0x110($s1)
/* 8F2BC 8004030C 00031823 */  negu       $v1, $v1
/* 8F2C0 80040310 080100D1 */  j          .L80040344
/* 8F2C4 80040314 A6230112 */   sh        $v1, 0x112($s1)
.L80040318:
/* 8F2C8 80040318 86220112 */  lh         $v0, 0x112($s1)
/* 8F2CC 8004031C 04410009 */  bgez       $v0, .L80040344
/* 8F2D0 80040320 00000000 */   nop
/* 8F2D4 80040324 86220110 */  lh         $v0, 0x110($s1)
/* 8F2D8 80040328 04410006 */  bgez       $v0, .L80040344
/* 8F2DC 8004032C 00401821 */   addu      $v1, $v0, $zero
/* 8F2E0 80040330 96220112 */  lhu        $v0, 0x112($s1)
/* 8F2E4 80040334 00031823 */  negu       $v1, $v1
/* 8F2E8 80040338 A6230110 */  sh         $v1, 0x110($s1)
/* 8F2EC 8004033C 00021023 */  negu       $v0, $v0
/* 8F2F0 80040340 A6220112 */  sh         $v0, 0x112($s1)
.L80040344:
/* 8F2F4 80040344 92220111 */  lbu        $v0, 0x111($s1)
/* 8F2F8 80040348 240500FF */  addiu      $a1, $zero, 0xff
/* 8F2FC 8004034C AFA20010 */  sw         $v0, 0x10($sp)
/* 8F300 80040350 8E24011C */  lw         $a0, 0x11c($s1)
/* 8F304 80040354 240600FF */  addiu      $a2, $zero, 0xff
/* 8F308 80040358 0C027F5E */  jal        func_8009FD78
/* 8F30C 8004035C 240700FF */   addiu     $a3, $zero, 0xff
/* 8F310 80040360 27B00058 */  addiu      $s0, $sp, 0x58
/* 8F314 80040364 02002021 */  addu       $a0, $s0, $zero
/* 8F318 80040368 0C02FA72 */  jal        func_800BE9C8
/* 8F31C 8004036C 26450098 */   addiu     $a1, $s2, 0x98
/* 8F320 80040370 3C028008 */  lui        $v0, %hi(D_8007E4F0_CD4A0)
/* 8F324 80040374 2442E4F0 */  addiu      $v0, $v0, %lo(D_8007E4F0_CD4A0)
/* 8F328 80040378 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F32C 8004037C 8E45008C */  lw         $a1, 0x8c($s2)
/* 8F330 80040380 8E460090 */  lw         $a2, 0x90($s2)
/* 8F334 80040384 27A40018 */  addiu      $a0, $sp, 0x18
/* 8F338 80040388 0C0284BE */  jal        func_800A12F8
/* 8F33C 8004038C 00003821 */   addu      $a3, $zero, $zero
/* 8F340 80040390 27A40018 */  addiu      $a0, $sp, 0x18
/* 8F344 80040394 02002821 */  addu       $a1, $s0, $zero
/* 8F348 80040398 0C02F9A8 */  jal        func_800BE6A0
/* 8F34C 8004039C 00803021 */   addu      $a2, $a0, $zero
/* 8F350 800403A0 27A40018 */  addiu      $a0, $sp, 0x18
/* 8F354 800403A4 26300120 */  addiu      $s0, $s1, 0x120
/* 8F358 800403A8 0C02FA4C */  jal        func_800BE930
/* 8F35C 800403AC 02002821 */   addu      $a1, $s0, $zero
/* 8F360 800403B0 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 8F364 800403B4 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 8F368 800403B8 3C03DA38 */  lui        $v1, 0xda38
/* 8F36C 800403BC 34630003 */  ori        $v1, $v1, 3
/* 8F370 800403C0 AC430000 */  sw         $v1, ($v0)
/* 8F374 800403C4 AC500004 */  sw         $s0, 4($v0)
/* 8F378 800403C8 8E24011C */  lw         $a0, 0x11c($s1)
/* 8F37C 800403CC 24420008 */  addiu      $v0, $v0, 8
/* 8F380 800403D0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 8F384 800403D4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 8F388 800403D8 0C027F77 */  jal        func_8009FDDC
/* 8F38C 800403DC 00002821 */   addu      $a1, $zero, $zero
/* 8F390 800403E0 8FBF00AC */  lw         $ra, 0xac($sp)
/* 8F394 800403E4 8FB200A8 */  lw         $s2, 0xa8($sp)
/* 8F398 800403E8 8FB100A4 */  lw         $s1, 0xa4($sp)
/* 8F39C 800403EC 8FB000A0 */  lw         $s0, 0xa0($sp)
/* 8F3A0 800403F0 27BD00B0 */  addiu      $sp, $sp, 0xb0
/* 8F3A4 800403F4 03E00008 */  jr         $ra
/* 8F3A8 800403F8 00000000 */   nop
/* 8F3AC 800403FC 00000000 */  nop
