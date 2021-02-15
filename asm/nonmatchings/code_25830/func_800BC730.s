.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BC730
/* 27330 800BC730 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 27334 800BC734 AFB50024 */  sw         $s5, 0x24($sp)
/* 27338 800BC738 8FB50048 */  lw         $s5, 0x48($sp)
/* 2733C 800BC73C AFB7002C */  sw         $s7, 0x2c($sp)
/* 27340 800BC740 0080B821 */  addu       $s7, $a0, $zero
/* 27344 800BC744 00A02021 */  addu       $a0, $a1, $zero
/* 27348 800BC748 AFB60028 */  sw         $s6, 0x28($sp)
/* 2734C 800BC74C 00C0B021 */  addu       $s6, $a2, $zero
/* 27350 800BC750 AFBF0034 */  sw         $ra, 0x34($sp)
/* 27354 800BC754 AFBE0030 */  sw         $fp, 0x30($sp)
/* 27358 800BC758 AFB40020 */  sw         $s4, 0x20($sp)
/* 2735C 800BC75C AFB3001C */  sw         $s3, 0x1c($sp)
/* 27360 800BC760 AFB20018 */  sw         $s2, 0x18($sp)
/* 27364 800BC764 AFB10014 */  sw         $s1, 0x14($sp)
/* 27368 800BC768 AFB00010 */  sw         $s0, 0x10($sp)
/* 2736C 800BC76C 8EE3001C */  lw         $v1, 0x1c($s7)
/* 27370 800BC770 8EE20014 */  lw         $v0, 0x14($s7)
/* 27374 800BC774 00031840 */  sll        $v1, $v1, 1
/* 27378 800BC778 00432821 */  addu       $a1, $v0, $v1
/* 2737C 800BC77C 0082102B */  sltu       $v0, $a0, $v0
/* 27380 800BC780 10400002 */  beqz       $v0, .L800BC78C
/* 27384 800BC784 02A03021 */   addu      $a2, $s5, $zero
/* 27388 800BC788 00832021 */  addu       $a0, $a0, $v1
.L800BC78C:
/* 2738C 800BC78C 0007F040 */  sll        $fp, $a3, 1
/* 27390 800BC790 009E8021 */  addu       $s0, $a0, $fp
/* 27394 800BC794 00B0102B */  sltu       $v0, $a1, $s0
/* 27398 800BC798 10400027 */  beqz       $v0, .L800BC838
/* 2739C 800BC79C 3C120800 */   lui       $s2, 0x800
/* 273A0 800BC7A0 26B50008 */  addiu      $s5, $s5, 8
/* 273A4 800BC7A4 02A0A021 */  addu       $s4, $s5, $zero
/* 273A8 800BC7A8 26B50008 */  addiu      $s5, $s5, 8
/* 273AC 800BC7AC 00A48823 */  subu       $s1, $a1, $a0
/* 273B0 800BC7B0 00118843 */  sra        $s1, $s1, 1
/* 273B4 800BC7B4 00161400 */  sll        $v0, $s6, 0x10
/* 273B8 800BC7B8 00118840 */  sll        $s1, $s1, 1
/* 273BC 800BC7BC 3223FFFF */  andi       $v1, $s1, 0xffff
/* 273C0 800BC7C0 00431025 */  or         $v0, $v0, $v1
/* 273C4 800BC7C4 3C130600 */  lui        $s3, 0x600
/* 273C8 800BC7C8 02058023 */  subu       $s0, $s0, $a1
/* 273CC 800BC7CC 00108043 */  sra        $s0, $s0, 1
/* 273D0 800BC7D0 ACD20000 */  sw         $s2, ($a2)
/* 273D4 800BC7D4 ACC20004 */  sw         $v0, 4($a2)
/* 273D8 800BC7D8 0C02F680 */  jal        func_800BDA00
/* 273DC 800BC7DC AE930000 */   sw        $s3, ($s4)
/* 273E0 800BC7E0 02A01821 */  addu       $v1, $s5, $zero
/* 273E4 800BC7E4 26B50008 */  addiu      $s5, $s5, 8
/* 273E8 800BC7E8 02D18821 */  addu       $s1, $s6, $s1
/* 273EC 800BC7EC 00118C00 */  sll        $s1, $s1, 0x10
/* 273F0 800BC7F0 00108040 */  sll        $s0, $s0, 1
/* 273F4 800BC7F4 3210FFFF */  andi       $s0, $s0, 0xffff
/* 273F8 800BC7F8 02308825 */  or         $s1, $s1, $s0
/* 273FC 800BC7FC 02A08021 */  addu       $s0, $s5, $zero
/* 27400 800BC800 AE820004 */  sw         $v0, 4($s4)
/* 27404 800BC804 AC720000 */  sw         $s2, ($v1)
/* 27408 800BC808 AC710004 */  sw         $s1, 4($v1)
/* 2740C 800BC80C AE130000 */  sw         $s3, ($s0)
/* 27410 800BC810 8EE40014 */  lw         $a0, 0x14($s7)
/* 27414 800BC814 0C02F680 */  jal        func_800BDA00
/* 27418 800BC818 26B50008 */   addiu     $s5, $s5, 8
/* 2741C 800BC81C 02A01821 */  addu       $v1, $s5, $zero
/* 27420 800BC820 26B50008 */  addiu      $s5, $s5, 8
/* 27424 800BC824 AE020004 */  sw         $v0, 4($s0)
/* 27428 800BC828 33C2FFFF */  andi       $v0, $fp, 0xffff
/* 2742C 800BC82C AC720000 */  sw         $s2, ($v1)
/* 27430 800BC830 0802F21B */  j          .L800BC86C
/* 27434 800BC834 AC620004 */   sw        $v0, 4($v1)
.L800BC838:
/* 27438 800BC838 26B50008 */  addiu      $s5, $s5, 8
/* 2743C 800BC83C 02A08021 */  addu       $s0, $s5, $zero
/* 27440 800BC840 26B50008 */  addiu      $s5, $s5, 8
/* 27444 800BC844 3C020800 */  lui        $v0, 0x800
/* 27448 800BC848 ACC20000 */  sw         $v0, ($a2)
/* 2744C 800BC84C 00161400 */  sll        $v0, $s6, 0x10
/* 27450 800BC850 33C3FFFF */  andi       $v1, $fp, 0xffff
/* 27454 800BC854 00431025 */  or         $v0, $v0, $v1
/* 27458 800BC858 ACC20004 */  sw         $v0, 4($a2)
/* 2745C 800BC85C 3C020600 */  lui        $v0, 0x600
/* 27460 800BC860 0C02F680 */  jal        func_800BDA00
/* 27464 800BC864 AE020000 */   sw        $v0, ($s0)
/* 27468 800BC868 AE020004 */  sw         $v0, 4($s0)
.L800BC86C:
/* 2746C 800BC86C 02A01021 */  addu       $v0, $s5, $zero
/* 27470 800BC870 8FBF0034 */  lw         $ra, 0x34($sp)
/* 27474 800BC874 8FBE0030 */  lw         $fp, 0x30($sp)
/* 27478 800BC878 8FB7002C */  lw         $s7, 0x2c($sp)
/* 2747C 800BC87C 8FB60028 */  lw         $s6, 0x28($sp)
/* 27480 800BC880 8FB50024 */  lw         $s5, 0x24($sp)
/* 27484 800BC884 8FB40020 */  lw         $s4, 0x20($sp)
/* 27488 800BC888 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2748C 800BC88C 8FB20018 */  lw         $s2, 0x18($sp)
/* 27490 800BC890 8FB10014 */  lw         $s1, 0x14($sp)
/* 27494 800BC894 8FB00010 */  lw         $s0, 0x10($sp)
/* 27498 800BC898 03E00008 */  jr         $ra
/* 2749C 800BC89C 27BD0038 */   addiu     $sp, $sp, 0x38
