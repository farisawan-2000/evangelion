.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003C2F0_8B2A0
/* 8B2A0 8003C2F0 27BDFF40 */  addiu      $sp, $sp, -0xc0
/* 8B2A4 8003C2F4 AFB000B0 */  sw         $s0, 0xb0($sp)
/* 8B2A8 8003C2F8 00808021 */  addu       $s0, $a0, $zero
/* 8B2AC 8003C2FC AFB100B4 */  sw         $s1, 0xb4($sp)
/* 8B2B0 8003C300 27B10060 */  addiu      $s1, $sp, 0x60
/* 8B2B4 8003C304 02202021 */  addu       $a0, $s1, $zero
/* 8B2B8 8003C308 AFBF00B8 */  sw         $ra, 0xb8($sp)
/* 8B2BC 8003C30C 0C02FA72 */  jal        func_800BE9C8
/* 8B2C0 8003C310 26050058 */   addiu     $a1, $s0, 0x58
/* 8B2C4 8003C314 3C028008 */  lui        $v0, %hi(D_8007E330_CD2E0)
/* 8B2C8 8003C318 2442E330 */  addiu      $v0, $v0, %lo(D_8007E330_CD2E0)
/* 8B2CC 8003C31C AFA20010 */  sw         $v0, 0x10($sp)
/* 8B2D0 8003C320 8E050050 */  lw         $a1, 0x50($s0)
/* 8B2D4 8003C324 8E060054 */  lw         $a2, 0x54($s0)
/* 8B2D8 8003C328 27A40020 */  addiu      $a0, $sp, 0x20
/* 8B2DC 8003C32C 0C0284BE */  jal        func_800A12F8
/* 8B2E0 8003C330 00003821 */   addu      $a3, $zero, $zero
/* 8B2E4 8003C334 27A40020 */  addiu      $a0, $sp, 0x20
/* 8B2E8 8003C338 02202821 */  addu       $a1, $s1, $zero
/* 8B2EC 8003C33C 0C02F9A8 */  jal        func_800BE6A0
/* 8B2F0 8003C340 00803021 */   addu      $a2, $a0, $zero
/* 8B2F4 8003C344 27A40020 */  addiu      $a0, $sp, 0x20
/* 8B2F8 8003C348 44800000 */  mtc1       $zero, $f0
/* 8B2FC 8003C34C 00000000 */  nop
/* 8B300 8003C350 27A200A0 */  addiu      $v0, $sp, 0xa0
/* 8B304 8003C354 AFA20010 */  sw         $v0, 0x10($sp)
/* 8B308 8003C358 27A200A4 */  addiu      $v0, $sp, 0xa4
/* 8B30C 8003C35C AFA20014 */  sw         $v0, 0x14($sp)
/* 8B310 8003C360 44050000 */  mfc1       $a1, $f0
/* 8B314 8003C364 00000000 */  nop
/* 8B318 8003C368 27A200A8 */  addiu      $v0, $sp, 0xa8
/* 8B31C 8003C36C AFA20018 */  sw         $v0, 0x18($sp)
/* 8B320 8003C370 00A03021 */  addu       $a2, $a1, $zero
/* 8B324 8003C374 0C02F9DF */  jal        func_800BE77C
/* 8B328 8003C378 00A03821 */   addu      $a3, $a1, $zero
/* 8B32C 8003C37C C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* 8B330 8003C380 C7A200A4 */  lwc1       $f2, 0xa4($sp)
/* 8B334 8003C384 C7A400A8 */  lwc1       $f4, 0xa8($sp)
/* 8B338 8003C388 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8B33C 8003C38C E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8B340 8003C390 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8B344 8003C394 E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 8B348 8003C398 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8B34C 8003C39C E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 8B350 8003C3A0 8FBF00B8 */  lw         $ra, 0xb8($sp)
/* 8B354 8003C3A4 8FB100B4 */  lw         $s1, 0xb4($sp)
/* 8B358 8003C3A8 8FB000B0 */  lw         $s0, 0xb0($sp)
/* 8B35C 8003C3AC 27BD00C0 */  addiu      $sp, $sp, 0xc0
/* 8B360 8003C3B0 03E00008 */  jr         $ra
/* 8B364 8003C3B4 00000000 */   nop

glabel func_8003C3B8_8B368
/* 8B368 8003C3B8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8B36C 8003C3BC AFB40028 */  sw         $s4, 0x28($sp)
/* 8B370 8003C3C0 93B4004B */  lbu        $s4, 0x4b($sp)
/* 8B374 8003C3C4 AFB20020 */  sw         $s2, 0x20($sp)
/* 8B378 8003C3C8 00809021 */  addu       $s2, $a0, $zero
/* 8B37C 8003C3CC AFB30024 */  sw         $s3, 0x24($sp)
/* 8B380 8003C3D0 00A09821 */  addu       $s3, $a1, $zero
/* 8B384 8003C3D4 AFB5002C */  sw         $s5, 0x2c($sp)
/* 8B388 8003C3D8 00C0A821 */  addu       $s5, $a2, $zero
/* 8B38C 8003C3DC AFB1001C */  sw         $s1, 0x1c($sp)
/* 8B390 8003C3E0 00E08821 */  addu       $s1, $a3, $zero
/* 8B394 8003C3E4 24040128 */  addiu      $a0, $zero, 0x128
/* 8B398 8003C3E8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 8B39C 8003C3EC 0C032663 */  jal        func_800C998C
/* 8B3A0 8003C3F0 AFB00018 */   sw        $s0, 0x18($sp)
/* 8B3A4 8003C3F4 00408021 */  addu       $s0, $v0, $zero
/* 8B3A8 8003C3F8 02002021 */  addu       $a0, $s0, $zero
/* 8B3AC 8003C3FC 0C030134 */  jal        bzero
/* 8B3B0 8003C400 24050128 */   addiu     $a1, $zero, 0x128
/* 8B3B4 8003C404 24040131 */  addiu      $a0, $zero, 0x131
/* 8B3B8 8003C408 00002821 */  addu       $a1, $zero, $zero
/* 8B3BC 8003C40C 00003021 */  addu       $a2, $zero, $zero
/* 8B3C0 8003C410 A2000021 */  sb         $zero, 0x21($s0)
/* 8B3C4 8003C414 0C027DAC */  jal        func_8009F6B0
/* 8B3C8 8003C418 A214002B */   sb        $s4, 0x2b($s0)
/* 8B3CC 8003C41C 24040132 */  addiu      $a0, $zero, 0x132
/* 8B3D0 8003C420 AE020050 */  sw         $v0, 0x50($s0)
/* 8B3D4 8003C424 90430066 */  lbu        $v1, 0x66($v0)
/* 8B3D8 8003C428 00002821 */  addu       $a1, $zero, $zero
/* 8B3DC 8003C42C 00003021 */  addu       $a2, $zero, $zero
/* 8B3E0 8003C430 34630015 */  ori        $v1, $v1, 0x15
/* 8B3E4 8003C434 0C027DAC */  jal        func_8009F6B0
/* 8B3E8 8003C438 A0430066 */   sb        $v1, 0x66($v0)
/* 8B3EC 8003C43C 24040452 */  addiu      $a0, $zero, 0x452
/* 8B3F0 8003C440 AE020098 */  sw         $v0, 0x98($s0)
/* 8B3F4 8003C444 90430066 */  lbu        $v1, 0x66($v0)
/* 8B3F8 8003C448 3C053F80 */  lui        $a1, 0x3f80
/* 8B3FC 8003C44C 00003021 */  addu       $a2, $zero, $zero
/* 8B400 8003C450 34630007 */  ori        $v1, $v1, 7
/* 8B404 8003C454 0C027814 */  jal        func_8009E050
/* 8B408 8003C458 A0430066 */   sb        $v1, 0x66($v0)
/* 8B40C 8003C45C 02002021 */  addu       $a0, $s0, $zero
/* 8B410 8003C460 00129400 */  sll        $s2, $s2, 0x10
/* 8B414 8003C464 00122C03 */  sra        $a1, $s2, 0x10
/* 8B418 8003C468 00139C00 */  sll        $s3, $s3, 0x10
/* 8B41C 8003C46C 00133403 */  sra        $a2, $s3, 0x10
/* 8B420 8003C470 00118E00 */  sll        $s1, $s1, 0x18
/* 8B424 8003C474 00118E03 */  sra        $s1, $s1, 0x18
/* 8B428 8003C478 0015AC00 */  sll        $s5, $s5, 0x10
/* 8B42C 8003C47C 00153C03 */  sra        $a3, $s5, 0x10
/* 8B430 8003C480 AE020054 */  sw         $v0, 0x54($s0)
/* 8B434 8003C484 0C00F12E */  jal        func_8003C4B8_8B468
/* 8B438 8003C488 AFB10010 */   sw        $s1, 0x10($sp)
/* 8B43C 8003C48C 02001021 */  addu       $v0, $s0, $zero
/* 8B440 8003C490 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8B444 8003C494 8FB5002C */  lw         $s5, 0x2c($sp)
/* 8B448 8003C498 8FB40028 */  lw         $s4, 0x28($sp)
/* 8B44C 8003C49C 8FB30024 */  lw         $s3, 0x24($sp)
/* 8B450 8003C4A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 8B454 8003C4A4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8B458 8003C4A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 8B45C 8003C4AC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8B460 8003C4B0 03E00008 */  jr         $ra
/* 8B464 8003C4B4 00000000 */   nop

glabel func_8003C4B8_8B468
/* 8B468 8003C4B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B46C 8003C4BC AFB00010 */  sw         $s0, 0x10($sp)
/* 8B470 8003C4C0 00808021 */  addu       $s0, $a0, $zero
/* 8B474 8003C4C4 93A30033 */  lbu        $v1, 0x33($sp)
/* 8B478 8003C4C8 00052C00 */  sll        $a1, $a1, 0x10
/* 8B47C 8003C4CC 00052C03 */  sra        $a1, $a1, 0x10
/* 8B480 8003C4D0 44850000 */  mtc1       $a1, $f0
/* 8B484 8003C4D4 00000000 */  nop
/* 8B488 8003C4D8 46800020 */  cvt.s.w    $f0, $f0
/* 8B48C 8003C4DC 00073C00 */  sll        $a3, $a3, 0x10
/* 8B490 8003C4E0 00073C03 */  sra        $a3, $a3, 0x10
/* 8B494 8003C4E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8B498 8003C4E8 AFB20018 */  sw         $s2, 0x18($sp)
/* 8B49C 8003C4EC AFB10014 */  sw         $s1, 0x14($sp)
/* 8B4A0 8003C4F0 E6000004 */  swc1       $f0, 4($s0)
/* 8B4A4 8003C4F4 44870000 */  mtc1       $a3, $f0
/* 8B4A8 8003C4F8 00000000 */  nop
/* 8B4AC 8003C4FC 46800020 */  cvt.s.w    $f0, $f0
/* 8B4B0 8003C500 8E020018 */  lw         $v0, 0x18($s0)
/* 8B4B4 8003C504 00063400 */  sll        $a2, $a2, 0x10
/* 8B4B8 8003C508 00063403 */  sra        $a2, $a2, 0x10
/* 8B4BC 8003C50C E600000C */  swc1       $f0, 0xc($s0)
/* 8B4C0 8003C510 44860000 */  mtc1       $a2, $f0
/* 8B4C4 8003C514 00000000 */  nop
/* 8B4C8 8003C518 46800020 */  cvt.s.w    $f0, $f0
/* 8B4CC 8003C51C A2000000 */  sb         $zero, ($s0)
/* 8B4D0 8003C520 AE000008 */  sw         $zero, 8($s0)
/* 8B4D4 8003C524 E6000010 */  swc1       $f0, 0x10($s0)
/* 8B4D8 8003C528 AE000014 */  sw         $zero, 0x14($s0)
/* 8B4DC 8003C52C A600001E */  sh         $zero, 0x1e($s0)
/* 8B4E0 8003C530 A600001C */  sh         $zero, 0x1c($s0)
/* 8B4E4 8003C534 A2000020 */  sb         $zero, 0x20($s0)
/* 8B4E8 8003C538 10400005 */  beqz       $v0, .L8003C550
/* 8B4EC 8003C53C A2030001 */   sb        $v1, 1($s0)
/* 8B4F0 8003C540 0C026E4E */  jal        func_8009B938
/* 8B4F4 8003C544 26040018 */   addiu     $a0, $s0, 0x18
/* 8B4F8 8003C548 3C018008 */  lui        $at, %hi(D_80080734)
/* 8B4FC 8003C54C A0200734 */  sb         $zero, %lo(D_80080734)($at)
.L8003C550:
/* 8B500 8003C550 0C02591A */  jal        func_80096468
/* 8B504 8003C554 24040002 */   addiu     $a0, $zero, 2
/* 8B508 8003C558 24040002 */  addiu      $a0, $zero, 2
/* 8B50C 8003C55C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 8B510 8003C560 00021880 */  sll        $v1, $v0, 2
/* 8B514 8003C564 00621821 */  addu       $v1, $v1, $v0
/* 8B518 8003C568 00031840 */  sll        $v1, $v1, 1
/* 8B51C 8003C56C 24630032 */  addiu      $v1, $v1, 0x32
/* 8B520 8003C570 0C02591A */  jal        func_80096468
/* 8B524 8003C574 A6030022 */   sh        $v1, 0x22($s0)
/* 8B528 8003C578 02002021 */  addu       $a0, $s0, $zero
/* 8B52C 8003C57C 00009021 */  addu       $s2, $zero, $zero
/* 8B530 8003C580 3042FFFF */  andi       $v0, $v0, 0xffff
/* 8B534 8003C584 00021880 */  sll        $v1, $v0, 2
/* 8B538 8003C588 00621821 */  addu       $v1, $v1, $v0
/* 8B53C 8003C58C 3C058017 */  lui        $a1, %hi(D_8016D168)
/* 8B540 8003C590 8CA5D168 */  lw         $a1, %lo(D_8016D168)($a1)
/* 8B544 8003C594 00031840 */  sll        $v1, $v1, 1
/* 8B548 8003C598 24630064 */  addiu      $v1, $v1, 0x64
/* 8B54C 8003C59C 24020028 */  addiu      $v0, $zero, 0x28
/* 8B550 8003C5A0 A6030024 */  sh         $v1, 0x24($s0)
/* 8B554 8003C5A4 A6020026 */  sh         $v0, 0x26($s0)
/* 8B558 8003C5A8 A200002A */  sb         $zero, 0x2a($s0)
/* 8B55C 8003C5AC A200002C */  sb         $zero, 0x2c($s0)
/* 8B560 8003C5B0 00052840 */  sll        $a1, $a1, 1
/* 8B564 8003C5B4 0C00F1A0 */  jal        func_8003C680_8B630
/* 8B568 8003C5B8 A6050028 */   sh        $a1, 0x28($s0)
/* 8B56C 8003C5BC 8E040054 */  lw         $a0, 0x54($s0)
/* 8B570 8003C5C0 02008821 */  addu       $s1, $s0, $zero
/* 8B574 8003C5C4 24020004 */  addiu      $v0, $zero, 4
/* 8B578 8003C5C8 A6020034 */  sh         $v0, 0x34($s0)
/* 8B57C 8003C5CC 24020002 */  addiu      $v0, $zero, 2
/* 8B580 8003C5D0 A6020036 */  sh         $v0, 0x36($s0)
/* 8B584 8003C5D4 2402FFFF */  addiu      $v0, $zero, -1
/* 8B588 8003C5D8 A6020048 */  sh         $v0, 0x48($s0)
/* 8B58C 8003C5DC 2402FFF8 */  addiu      $v0, $zero, -8
/* 8B590 8003C5E0 A2020040 */  sb         $v0, 0x40($s0)
/* 8B594 8003C5E4 24020016 */  addiu      $v0, $zero, 0x16
/* 8B598 8003C5E8 A2020041 */  sb         $v0, 0x41($s0)
/* 8B59C 8003C5EC 24020010 */  addiu      $v0, $zero, 0x10
/* 8B5A0 8003C5F0 A2020042 */  sb         $v0, 0x42($s0)
/* 8B5A4 8003C5F4 24020006 */  addiu      $v0, $zero, 6
/* 8B5A8 8003C5F8 0C027880 */  jal        func_8009E200
/* 8B5AC 8003C5FC A2020043 */   sb        $v0, 0x43($s0)
/* 8B5B0 8003C600 3C053F80 */  lui        $a1, 0x3f80
/* 8B5B4 8003C604 24040452 */  addiu      $a0, $zero, 0x452
/* 8B5B8 8003C608 0C027814 */  jal        func_8009E050
/* 8B5BC 8003C60C 00003021 */   addu      $a2, $zero, $zero
/* 8B5C0 8003C610 AE020054 */  sw         $v0, 0x54($s0)
.L8003C614:
/* 8B5C4 8003C614 8E24009C */  lw         $a0, 0x9c($s1)
/* 8B5C8 8003C618 50800004 */  beql       $a0, $zero, .L8003C62C
/* 8B5CC 8003C61C AE20009C */   sw        $zero, 0x9c($s1)
/* 8B5D0 8003C620 0C027880 */  jal        func_8009E200
/* 8B5D4 8003C624 00000000 */   nop
/* 8B5D8 8003C628 AE20009C */  sw         $zero, 0x9c($s1)
.L8003C62C:
/* 8B5DC 8003C62C 26520001 */  addiu      $s2, $s2, 1
/* 8B5E0 8003C630 2A420002 */  slti       $v0, $s2, 2
/* 8B5E4 8003C634 1440FFF7 */  bnez       $v0, .L8003C614
/* 8B5E8 8003C638 26310004 */   addiu     $s1, $s1, 4
/* 8B5EC 8003C63C 02002021 */  addu       $a0, $s0, $zero
/* 8B5F0 8003C640 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8B5F4 8003C644 24050001 */   addiu     $a1, $zero, 1
/* 8B5F8 8003C648 8E020018 */  lw         $v0, 0x18($s0)
/* 8B5FC 8003C64C 10400005 */  beqz       $v0, .L8003C664
/* 8B600 8003C650 00000000 */   nop
/* 8B604 8003C654 0C026E4E */  jal        func_8009B938
/* 8B608 8003C658 26040018 */   addiu     $a0, $s0, 0x18
/* 8B60C 8003C65C 3C018008 */  lui        $at, %hi(D_80080734)
/* 8B610 8003C660 A0200734 */  sb         $zero, %lo(D_80080734)($at)
.L8003C664:
/* 8B614 8003C664 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8B618 8003C668 8FB20018 */  lw         $s2, 0x18($sp)
/* 8B61C 8003C66C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8B620 8003C670 8FB00010 */  lw         $s0, 0x10($sp)
/* 8B624 8003C674 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8B628 8003C678 03E00008 */  jr         $ra
/* 8B62C 8003C67C 00000000 */   nop

glabel func_8003C680_8B630
/* 8B630 8003C680 24020004 */  addiu      $v0, $zero, 4
/* 8B634 8003C684 24840004 */  addiu      $a0, $a0, 4
.L8003C688:
/* 8B638 8003C688 A080002D */  sb         $zero, 0x2d($a0)
/* 8B63C 8003C68C 2442FFFF */  addiu      $v0, $v0, -1
/* 8B640 8003C690 0441FFFD */  bgez       $v0, .L8003C688
/* 8B644 8003C694 2484FFFF */   addiu     $a0, $a0, -1
/* 8B648 8003C698 03E00008 */  jr         $ra
/* 8B64C 8003C69C 00000000 */   nop

glabel func_8003C6A0_8B650
/* 8B650 8003C6A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B654 8003C6A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 8B658 8003C6A8 00809021 */  addu       $s2, $a0, $zero
/* 8B65C 8003C6AC AFBF001C */  sw         $ra, 0x1c($sp)
/* 8B660 8003C6B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8B664 8003C6B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8B668 8003C6B8 8E440050 */  lw         $a0, 0x50($s2)
/* 8B66C 8003C6BC 0C027E98 */  jal        func_8009FA60
/* 8B670 8003C6C0 00008821 */   addu      $s1, $zero, $zero
/* 8B674 8003C6C4 8E440098 */  lw         $a0, 0x98($s2)
/* 8B678 8003C6C8 0C027E98 */  jal        func_8009FA60
/* 8B67C 8003C6CC 02408021 */   addu      $s0, $s2, $zero
/* 8B680 8003C6D0 8E440054 */  lw         $a0, 0x54($s2)
/* 8B684 8003C6D4 0C027880 */  jal        func_8009E200
/* 8B688 8003C6D8 00000000 */   nop
.L8003C6DC:
/* 8B68C 8003C6DC 8E04009C */  lw         $a0, 0x9c($s0)
/* 8B690 8003C6E0 10800003 */  beqz       $a0, .L8003C6F0
/* 8B694 8003C6E4 26310001 */   addiu     $s1, $s1, 1
/* 8B698 8003C6E8 0C027880 */  jal        func_8009E200
/* 8B69C 8003C6EC 00000000 */   nop
.L8003C6F0:
/* 8B6A0 8003C6F0 2A220002 */  slti       $v0, $s1, 2
/* 8B6A4 8003C6F4 1440FFF9 */  bnez       $v0, .L8003C6DC
/* 8B6A8 8003C6F8 26100004 */   addiu     $s0, $s0, 4
/* 8B6AC 8003C6FC 8E420018 */  lw         $v0, 0x18($s2)
/* 8B6B0 8003C700 10400005 */  beqz       $v0, .L8003C718
/* 8B6B4 8003C704 00000000 */   nop
/* 8B6B8 8003C708 0C026E4E */  jal        func_8009B938
/* 8B6BC 8003C70C 26440018 */   addiu     $a0, $s2, 0x18
/* 8B6C0 8003C710 3C018008 */  lui        $at, %hi(D_80080734)
/* 8B6C4 8003C714 A0200734 */  sb         $zero, %lo(D_80080734)($at)
.L8003C718:
/* 8B6C8 8003C718 0C0326A1 */  jal        func_800C9A84
/* 8B6CC 8003C71C 02402021 */   addu      $a0, $s2, $zero
/* 8B6D0 8003C720 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8B6D4 8003C724 8FB20018 */  lw         $s2, 0x18($sp)
/* 8B6D8 8003C728 8FB10014 */  lw         $s1, 0x14($sp)
/* 8B6DC 8003C72C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8B6E0 8003C730 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8B6E4 8003C734 03E00008 */  jr         $ra
/* 8B6E8 8003C738 00000000 */   nop

glabel func_8003C73C_8B6EC
/* 8B6EC 8003C73C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B6F0 8003C740 AFB00010 */  sw         $s0, 0x10($sp)
/* 8B6F4 8003C744 00808021 */  addu       $s0, $a0, $zero
/* 8B6F8 8003C748 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B6FC 8003C74C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 8B700 8003C750 1200007C */  beqz       $s0, .L8003C944
/* 8B704 8003C754 00A01021 */   addu      $v0, $a1, $zero
/* 8B708 8003C758 92030000 */  lbu        $v1, ($s0)
/* 8B70C 8003C75C A2020000 */  sb         $v0, ($s0)
/* 8B710 8003C760 00051400 */  sll        $v0, $a1, 0x10
/* 8B714 8003C764 00022403 */  sra        $a0, $v0, 0x10
/* 8B718 8003C768 2C820005 */  sltiu      $v0, $a0, 5
/* 8B71C 8003C76C 10400071 */  beqz       $v0, .L8003C934
/* 8B720 8003C770 00041080 */   sll       $v0, $a0, 2
/* 8B724 8003C774 3C018008 */  lui        $at, %hi(jtbl_8007E338_CD2E8)
/* 8B728 8003C778 00220821 */  addu       $at, $at, $v0
/* 8B72C 8003C77C 8C22E338 */  lw         $v0, %lo(jtbl_8007E338_CD2E8)($at)
/* 8B730 8003C780 00400008 */  jr         $v0
/* 8B734 8003C784 00000000 */   nop
glabel L8003C788_8B738
/* 8B738 8003C788 24020001 */  addiu      $v0, $zero, 1
/* 8B73C 8003C78C 14620007 */  bne        $v1, $v0, .L8003C7AC
/* 8B740 8003C790 24020002 */   addiu     $v0, $zero, 2
/* 8B744 8003C794 8E040054 */  lw         $a0, 0x54($s0)
/* 8B748 8003C798 0C027880 */  jal        func_8009E200
/* 8B74C 8003C79C 00000000 */   nop
/* 8B750 8003C7A0 3C053F80 */  lui        $a1, 0x3f80
/* 8B754 8003C7A4 0800F209 */  j          .L8003C824
/* 8B758 8003C7A8 24040455 */   addiu     $a0, $zero, 0x455
.L8003C7AC:
/* 8B75C 8003C7AC 14620062 */  bne        $v1, $v0, .L8003C938
/* 8B760 8003C7B0 24020004 */   addiu     $v0, $zero, 4
/* 8B764 8003C7B4 8E040054 */  lw         $a0, 0x54($s0)
/* 8B768 8003C7B8 0C027880 */  jal        func_8009E200
/* 8B76C 8003C7BC 00000000 */   nop
/* 8B770 8003C7C0 3C053F80 */  lui        $a1, 0x3f80
/* 8B774 8003C7C4 0800F209 */  j          .L8003C824
/* 8B778 8003C7C8 24040454 */   addiu     $a0, $zero, 0x454
glabel L8003C7CC_8B77C
/* 8B77C 8003C7CC 1460005A */  bnez       $v1, .L8003C938
/* 8B780 8003C7D0 24020004 */   addiu     $v0, $zero, 4
/* 8B784 8003C7D4 8E040054 */  lw         $a0, 0x54($s0)
/* 8B788 8003C7D8 0C027880 */  jal        func_8009E200
/* 8B78C 8003C7DC 00000000 */   nop
/* 8B790 8003C7E0 3C053F80 */  lui        $a1, 0x3f80
/* 8B794 8003C7E4 0800F209 */  j          .L8003C824
/* 8B798 8003C7E8 24040452 */   addiu     $a0, $zero, 0x452
glabel L8003C7EC_8B79C
/* 8B79C 8003C7EC 24020001 */  addiu      $v0, $zero, 1
/* 8B7A0 8003C7F0 14620007 */  bne        $v1, $v0, .L8003C810
/* 8B7A4 8003C7F4 00000000 */   nop
/* 8B7A8 8003C7F8 8E040054 */  lw         $a0, 0x54($s0)
/* 8B7AC 8003C7FC 0C027880 */  jal        func_8009E200
/* 8B7B0 8003C800 00000000 */   nop
/* 8B7B4 8003C804 3C053F80 */  lui        $a1, 0x3f80
/* 8B7B8 8003C808 0800F209 */  j          .L8003C824
/* 8B7BC 8003C80C 24040453 */   addiu     $a0, $zero, 0x453
.L8003C810:
/* 8B7C0 8003C810 8E040054 */  lw         $a0, 0x54($s0)
/* 8B7C4 8003C814 0C027880 */  jal        func_8009E200
/* 8B7C8 8003C818 00000000 */   nop
/* 8B7CC 8003C81C 3C053F80 */  lui        $a1, 0x3f80
/* 8B7D0 8003C820 24040456 */  addiu      $a0, $zero, 0x456
.L8003C824:
/* 8B7D4 8003C824 0C027814 */  jal        func_8009E050
/* 8B7D8 8003C828 00003021 */   addu      $a2, $zero, $zero
/* 8B7DC 8003C82C 0800F24D */  j          .L8003C934
/* 8B7E0 8003C830 AE020054 */   sw        $v0, 0x54($s0)
glabel L8003C834_8B7E4
/* 8B7E4 8003C834 8E040054 */  lw         $a0, 0x54($s0)
/* 8B7E8 8003C838 0C027880 */  jal        func_8009E200
/* 8B7EC 8003C83C 00000000 */   nop
/* 8B7F0 8003C840 3C053F80 */  lui        $a1, 0x3f80
/* 8B7F4 8003C844 24040457 */  addiu      $a0, $zero, 0x457
/* 8B7F8 8003C848 0C027814 */  jal        func_8009E050
/* 8B7FC 8003C84C 00003021 */   addu      $a2, $zero, $zero
/* 8B800 8003C850 24040009 */  addiu      $a0, $zero, 9
/* 8B804 8003C854 0800F242 */  j          .L8003C908
/* 8B808 8003C858 AE020054 */   sw        $v0, 0x54($s0)
glabel L8003C85C_8B80C
/* 8B80C 8003C85C 8E040054 */  lw         $a0, 0x54($s0)
/* 8B810 8003C860 0C027880 */  jal        func_8009E200
/* 8B814 8003C864 00000000 */   nop
/* 8B818 8003C868 82020021 */  lb         $v0, 0x21($s0)
/* 8B81C 8003C86C 54400011 */  bnezl      $v0, .L8003C8B4
/* 8B820 8003C870 24040459 */   addiu     $a0, $zero, 0x459
/* 8B824 8003C874 3C013F80 */  lui        $at, 0x3f80
/* 8B828 8003C878 4481A000 */  mtc1       $at, $f20
/* 8B82C 8003C87C 00000000 */  nop
/* 8B830 8003C880 24040458 */  addiu      $a0, $zero, 0x458
/* 8B834 8003C884 4405A000 */  mfc1       $a1, $f20
/* 8B838 8003C888 00000000 */  nop
/* 8B83C 8003C88C 0C027814 */  jal        func_8009E050
/* 8B840 8003C890 00003021 */   addu      $a2, $zero, $zero
/* 8B844 8003C894 2404045E */  addiu      $a0, $zero, 0x45e
/* 8B848 8003C898 4405A000 */  mfc1       $a1, $f20
/* 8B84C 8003C89C 00000000 */  nop
/* 8B850 8003C8A0 00003021 */  addu       $a2, $zero, $zero
/* 8B854 8003C8A4 0C027814 */  jal        func_8009E050
/* 8B858 8003C8A8 AE020054 */   sw        $v0, 0x54($s0)
/* 8B85C 8003C8AC 0800F23B */  j          .L8003C8EC
/* 8B860 8003C8B0 2404045F */   addiu     $a0, $zero, 0x45f
.L8003C8B4:
/* 8B864 8003C8B4 3C013F80 */  lui        $at, 0x3f80
/* 8B868 8003C8B8 4481A000 */  mtc1       $at, $f20
/* 8B86C 8003C8BC 00000000 */  nop
/* 8B870 8003C8C0 4405A000 */  mfc1       $a1, $f20
/* 8B874 8003C8C4 00000000 */  nop
/* 8B878 8003C8C8 0C027814 */  jal        func_8009E050
/* 8B87C 8003C8CC 00003021 */   addu      $a2, $zero, $zero
/* 8B880 8003C8D0 24040460 */  addiu      $a0, $zero, 0x460
/* 8B884 8003C8D4 4405A000 */  mfc1       $a1, $f20
/* 8B888 8003C8D8 00000000 */  nop
/* 8B88C 8003C8DC 00003021 */  addu       $a2, $zero, $zero
/* 8B890 8003C8E0 0C027814 */  jal        func_8009E050
/* 8B894 8003C8E4 AE020054 */   sw        $v0, 0x54($s0)
/* 8B898 8003C8E8 24040461 */  addiu      $a0, $zero, 0x461
.L8003C8EC:
/* 8B89C 8003C8EC 4405A000 */  mfc1       $a1, $f20
/* 8B8A0 8003C8F0 00000000 */  nop
/* 8B8A4 8003C8F4 00003021 */  addu       $a2, $zero, $zero
/* 8B8A8 8003C8F8 0C027814 */  jal        func_8009E050
/* 8B8AC 8003C8FC AE02009C */   sw        $v0, 0x9c($s0)
/* 8B8B0 8003C900 AE0200A0 */  sw         $v0, 0xa0($s0)
/* 8B8B4 8003C904 24040009 */  addiu      $a0, $zero, 9
.L8003C908:
/* 8B8B8 8003C908 24020001 */  addiu      $v0, $zero, 1
/* 8B8BC 8003C90C AE000014 */  sw         $zero, 0x14($s0)
/* 8B8C0 8003C910 0C026DD5 */  jal        func_8009B754
/* 8B8C4 8003C914 A6020036 */   sh        $v0, 0x36($s0)
/* 8B8C8 8003C918 8E020018 */  lw         $v0, 0x18($s0)
/* 8B8CC 8003C91C 10400006 */  beqz       $v0, .L8003C938
/* 8B8D0 8003C920 24020004 */   addiu     $v0, $zero, 4
/* 8B8D4 8003C924 0C026E4E */  jal        func_8009B938
/* 8B8D8 8003C928 26040018 */   addiu     $a0, $s0, 0x18
/* 8B8DC 8003C92C 3C018008 */  lui        $at, %hi(D_80080734)
/* 8B8E0 8003C930 A0200734 */  sb         $zero, %lo(D_80080734)($at)
.L8003C934:
/* 8B8E4 8003C934 24020004 */  addiu      $v0, $zero, 4
.L8003C938:
/* 8B8E8 8003C938 A6020034 */  sh         $v0, 0x34($s0)
/* 8B8EC 8003C93C 2402FFFF */  addiu      $v0, $zero, -1
/* 8B8F0 8003C940 A6020048 */  sh         $v0, 0x48($s0)
.L8003C944:
/* 8B8F4 8003C944 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B8F8 8003C948 8FB00010 */  lw         $s0, 0x10($sp)
/* 8B8FC 8003C94C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 8B900 8003C950 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8B904 8003C954 03E00008 */  jr         $ra
/* 8B908 8003C958 00000000 */   nop

glabel func_8003C95C_8B90C
/* 8B90C 8003C95C 27BDFF40 */  addiu      $sp, $sp, -0xc0
/* 8B910 8003C960 AFB100B4 */  sw         $s1, 0xb4($sp)
/* 8B914 8003C964 00808821 */  addu       $s1, $a0, $zero
/* 8B918 8003C968 24030004 */  addiu      $v1, $zero, 4
/* 8B91C 8003C96C 26220004 */  addiu      $v0, $s1, 4
/* 8B920 8003C970 AFBF00BC */  sw         $ra, 0xbc($sp)
/* 8B924 8003C974 AFB200B8 */  sw         $s2, 0xb8($sp)
/* 8B928 8003C978 AFB000B0 */  sw         $s0, 0xb0($sp)
.L8003C97C:
/* 8B92C 8003C97C A040002D */  sb         $zero, 0x2d($v0)
/* 8B930 8003C980 2463FFFF */  addiu      $v1, $v1, -1
/* 8B934 8003C984 0461FFFD */  bgez       $v1, .L8003C97C
/* 8B938 8003C988 2442FFFF */   addiu     $v0, $v0, -1
/* 8B93C 8003C98C 3C028008 */  lui        $v0, %hi(D_80082FF0)
/* 8B940 8003C990 8C422FF0 */  lw         $v0, %lo(D_80082FF0)($v0)
/* 8B944 8003C994 10400005 */  beqz       $v0, .L8003C9AC
/* 8B948 8003C998 00000000 */   nop
/* 8B94C 8003C99C 0C00F378 */  jal        func_8003CDE0_8BD90
/* 8B950 8003C9A0 02202021 */   addu      $a0, $s1, $zero
/* 8B954 8003C9A4 0800F26D */  j          .L8003C9B4
/* 8B958 8003C9A8 00000000 */   nop
.L8003C9AC:
/* 8B95C 8003C9AC 0C00F39C */  jal        func_8003CE70_8BE20
/* 8B960 8003C9B0 02202021 */   addu      $a0, $s1, $zero
.L8003C9B4:
/* 8B964 8003C9B4 92230000 */  lbu        $v1, ($s1)
/* 8B968 8003C9B8 2C620005 */  sltiu      $v0, $v1, 5
/* 8B96C 8003C9BC 10400100 */  beqz       $v0, .L8003CDC0
/* 8B970 8003C9C0 00031080 */   sll       $v0, $v1, 2
/* 8B974 8003C9C4 3C018008 */  lui        $at, %hi(jtbl_8007E350_CD300)
/* 8B978 8003C9C8 00220821 */  addu       $at, $at, $v0
/* 8B97C 8003C9CC 8C22E350 */  lw         $v0, %lo(jtbl_8007E350_CD300)($at)
/* 8B980 8003C9D0 00400008 */  jr         $v0
/* 8B984 8003C9D4 00000000 */   nop
glabel L8003C9D8_8B988
/* 8B988 8003C9D8 86230048 */  lh         $v1, 0x48($s1)
/* 8B98C 8003C9DC 2402FFFF */  addiu      $v0, $zero, -1
/* 8B990 8003C9E0 10620002 */  beq        $v1, $v0, .L8003C9EC
/* 8B994 8003C9E4 24020001 */   addiu     $v0, $zero, 1
/* 8B998 8003C9E8 A222002F */  sb         $v0, 0x2f($s1)
.L8003C9EC:
/* 8B99C 8003C9EC C6220014 */  lwc1       $f2, 0x14($s1)
/* 8B9A0 8003C9F0 44802000 */  mtc1       $zero, $f4
/* 8B9A4 8003C9F4 00000000 */  nop
/* 8B9A8 8003C9F8 4602203C */  c.lt.s     $f4, $f2
/* 8B9AC 8003C9FC 00000000 */  nop
/* 8B9B0 8003CA00 4500000B */  bc1f       .L8003CA30
/* 8B9B4 8003CA04 00000000 */   nop
/* 8B9B8 8003CA08 3C013E4C */  lui        $at, 0x3e4c
/* 8B9BC 8003CA0C 3421CCCD */  ori        $at, $at, 0xcccd
/* 8B9C0 8003CA10 44810000 */  mtc1       $at, $f0
/* 8B9C4 8003CA14 00000000 */  nop
/* 8B9C8 8003CA18 46001001 */  sub.s      $f0, $f2, $f0
/* 8B9CC 8003CA1C 4604003C */  c.lt.s     $f0, $f4
/* 8B9D0 8003CA20 00000000 */  nop
/* 8B9D4 8003CA24 00000000 */  nop
/* 8B9D8 8003CA28 0800F296 */  j          .L8003CA58
/* 8B9DC 8003CA2C 00000000 */   nop
.L8003CA30:
/* 8B9E0 8003CA30 4604103C */  c.lt.s     $f2, $f4
/* 8B9E4 8003CA34 00000000 */  nop
/* 8B9E8 8003CA38 4500000C */  bc1f       .L8003CA6C
/* 8B9EC 8003CA3C 00000000 */   nop
/* 8B9F0 8003CA40 3C013E4C */  lui        $at, 0x3e4c
/* 8B9F4 8003CA44 3421CCCD */  ori        $at, $at, 0xcccd
/* 8B9F8 8003CA48 44810000 */  mtc1       $at, $f0
/* 8B9FC 8003CA4C 00000000 */  nop
/* 8BA00 8003CA50 46001000 */  add.s      $f0, $f2, $f0
/* 8BA04 8003CA54 4600203C */  c.lt.s     $f4, $f0
.L8003CA58:
/* 8BA08 8003CA58 00000000 */  nop
/* 8BA0C 8003CA5C 00000000 */  nop
/* 8BA10 8003CA60 45000002 */  bc1f       .L8003CA6C
/* 8BA14 8003CA64 E6200014 */   swc1      $f0, 0x14($s1)
/* 8BA18 8003CA68 E6240014 */  swc1       $f4, 0x14($s1)
.L8003CA6C:
/* 8BA1C 8003CA6C 0C00F3EF */  jal        func_8003CFBC_8BF6C
/* 8BA20 8003CA70 02202021 */   addu      $a0, $s1, $zero
/* 8BA24 8003CA74 0C00F4B7 */  jal        func_8003D2DC_8C28C
/* 8BA28 8003CA78 02202021 */   addu      $a0, $s1, $zero
/* 8BA2C 8003CA7C 144000D0 */  bnez       $v0, .L8003CDC0
/* 8BA30 8003CA80 00000000 */   nop
/* 8BA34 8003CA84 0C00F495 */  jal        func_8003D254_8C204
/* 8BA38 8003CA88 02202021 */   addu      $a0, $s1, $zero
/* 8BA3C 8003CA8C 144000CC */  bnez       $v0, .L8003CDC0
/* 8BA40 8003CA90 00000000 */   nop
/* 8BA44 8003CA94 0C00F4A6 */  jal        func_8003D298_8C248
/* 8BA48 8003CA98 02202021 */   addu      $a0, $s1, $zero
/* 8BA4C 8003CA9C 0800F370 */  j          .L8003CDC0
/* 8BA50 8003CAA0 00000000 */   nop
glabel L8003CAA4_8BA54
/* 8BA54 8003CAA4 86230048 */  lh         $v1, 0x48($s1)
/* 8BA58 8003CAA8 2402FFFF */  addiu      $v0, $zero, -1
/* 8BA5C 8003CAAC 10620002 */  beq        $v1, $v0, .L8003CAB8
/* 8BA60 8003CAB0 24020001 */   addiu     $v0, $zero, 1
/* 8BA64 8003CAB4 A222002F */  sb         $v0, 0x2f($s1)
.L8003CAB8:
/* 8BA68 8003CAB8 9222002D */  lbu        $v0, 0x2d($s1)
/* 8BA6C 8003CABC 1040000D */  beqz       $v0, .L8003CAF4
/* 8BA70 8003CAC0 00000000 */   nop
/* 8BA74 8003CAC4 82220001 */  lb         $v0, 1($s1)
/* 8BA78 8003CAC8 3C013E4C */  lui        $at, 0x3e4c
/* 8BA7C 8003CACC 3421CCCD */  ori        $at, $at, 0xcccd
/* 8BA80 8003CAD0 44810000 */  mtc1       $at, $f0
/* 8BA84 8003CAD4 00000000 */  nop
/* 8BA88 8003CAD8 44821000 */  mtc1       $v0, $f2
/* 8BA8C 8003CADC 00000000 */  nop
/* 8BA90 8003CAE0 468010A0 */  cvt.s.w    $f2, $f2
/* 8BA94 8003CAE4 46001082 */  mul.s      $f2, $f2, $f0
/* 8BA98 8003CAE8 C6200014 */  lwc1       $f0, 0x14($s1)
/* 8BA9C 8003CAEC 46020000 */  add.s      $f0, $f0, $f2
/* 8BAA0 8003CAF0 E6200014 */  swc1       $f0, 0x14($s1)
.L8003CAF4:
/* 8BAA4 8003CAF4 0C00F3EF */  jal        func_8003CFBC_8BF6C
/* 8BAA8 8003CAF8 02202021 */   addu      $a0, $s1, $zero
/* 8BAAC 8003CAFC 0C00F4B7 */  jal        func_8003D2DC_8C28C
/* 8BAB0 8003CB00 02202021 */   addu      $a0, $s1, $zero
/* 8BAB4 8003CB04 144000AE */  bnez       $v0, .L8003CDC0
/* 8BAB8 8003CB08 00000000 */   nop
/* 8BABC 8003CB0C 0C00F4A6 */  jal        func_8003D298_8C248
/* 8BAC0 8003CB10 02202021 */   addu      $a0, $s1, $zero
/* 8BAC4 8003CB14 0800F2DF */  j          .L8003CB7C
/* 8BAC8 8003CB18 00000000 */   nop
glabel L8003CB1C_8BACC
/* 8BACC 8003CB1C 86230048 */  lh         $v1, 0x48($s1)
/* 8BAD0 8003CB20 2402FFFF */  addiu      $v0, $zero, -1
/* 8BAD4 8003CB24 10620002 */  beq        $v1, $v0, .L8003CB30
/* 8BAD8 8003CB28 24020001 */   addiu     $v0, $zero, 1
/* 8BADC 8003CB2C A222002F */  sb         $v0, 0x2f($s1)
.L8003CB30:
/* 8BAE0 8003CB30 9222002E */  lbu        $v0, 0x2e($s1)
/* 8BAE4 8003CB34 1040000D */  beqz       $v0, .L8003CB6C
/* 8BAE8 8003CB38 00000000 */   nop
/* 8BAEC 8003CB3C 82220001 */  lb         $v0, 1($s1)
/* 8BAF0 8003CB40 3C013E4C */  lui        $at, 0x3e4c
/* 8BAF4 8003CB44 3421CCCD */  ori        $at, $at, 0xcccd
/* 8BAF8 8003CB48 44810000 */  mtc1       $at, $f0
/* 8BAFC 8003CB4C 00000000 */  nop
/* 8BB00 8003CB50 44821000 */  mtc1       $v0, $f2
/* 8BB04 8003CB54 00000000 */  nop
/* 8BB08 8003CB58 468010A0 */  cvt.s.w    $f2, $f2
/* 8BB0C 8003CB5C 46001082 */  mul.s      $f2, $f2, $f0
/* 8BB10 8003CB60 C6200014 */  lwc1       $f0, 0x14($s1)
/* 8BB14 8003CB64 46020001 */  sub.s      $f0, $f0, $f2
/* 8BB18 8003CB68 E6200014 */  swc1       $f0, 0x14($s1)
.L8003CB6C:
/* 8BB1C 8003CB6C 0C00F3EF */  jal        func_8003CFBC_8BF6C
/* 8BB20 8003CB70 02202021 */   addu      $a0, $s1, $zero
/* 8BB24 8003CB74 0C00F4B7 */  jal        func_8003D2DC_8C28C
/* 8BB28 8003CB78 02202021 */   addu      $a0, $s1, $zero
.L8003CB7C:
/* 8BB2C 8003CB7C 14400090 */  bnez       $v0, .L8003CDC0
/* 8BB30 8003CB80 00000000 */   nop
/* 8BB34 8003CB84 0C00F479 */  jal        func_8003D1E4_8C194
/* 8BB38 8003CB88 02202021 */   addu      $a0, $s1, $zero
/* 8BB3C 8003CB8C 0800F370 */  j          .L8003CDC0
/* 8BB40 8003CB90 00000000 */   nop
glabel L8003CB94_8BB44
/* 8BB44 8003CB94 8E220054 */  lw         $v0, 0x54($s1)
/* 8BB48 8003CB98 8443001E */  lh         $v1, 0x1e($v0)
/* 8BB4C 8003CB9C 240200FF */  addiu      $v0, $zero, 0xff
/* 8BB50 8003CBA0 14620087 */  bne        $v1, $v0, .L8003CDC0
/* 8BB54 8003CBA4 02202021 */   addu      $a0, $s1, $zero
/* 8BB58 8003CBA8 82220001 */  lb         $v0, 1($s1)
/* 8BB5C 8003CBAC 3C01C2EE */  lui        $at, 0xc2ee
/* 8BB60 8003CBB0 44811000 */  mtc1       $at, $f2
/* 8BB64 8003CBB4 00000000 */  nop
/* 8BB68 8003CBB8 44820000 */  mtc1       $v0, $f0
/* 8BB6C 8003CBBC 00000000 */  nop
/* 8BB70 8003CBC0 46800020 */  cvt.s.w    $f0, $f0
/* 8BB74 8003CBC4 46020002 */  mul.s      $f0, $f0, $f2
/* 8BB78 8003CBC8 C6220004 */  lwc1       $f2, 4($s1)
/* 8BB7C 8003CBCC 46001080 */  add.s      $f2, $f2, $f0
/* 8BB80 8003CBD0 24050002 */  addiu      $a1, $zero, 2
/* 8BB84 8003CBD4 24020002 */  addiu      $v0, $zero, 2
/* 8BB88 8003CBD8 A6220036 */  sh         $v0, 0x36($s1)
/* 8BB8C 8003CBDC 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8BB90 8003CBE0 E6220004 */   swc1      $f2, 4($s1)
/* 8BB94 8003CBE4 0800F370 */  j          .L8003CDC0
/* 8BB98 8003CBE8 00000000 */   nop
glabel L8003CBEC_8BB9C
/* 8BB9C 8003CBEC 8E220054 */  lw         $v0, 0x54($s1)
/* 8BBA0 8003CBF0 8442001E */  lh         $v0, 0x1e($v0)
/* 8BBA4 8003CBF4 241000FF */  addiu      $s0, $zero, 0xff
/* 8BBA8 8003CBF8 1050002E */  beq        $v0, $s0, .L8003CCB4
/* 8BBAC 8003CBFC 27A40060 */   addiu     $a0, $sp, 0x60
/* 8BBB0 8003CC00 0C02FA72 */  jal        func_800BE9C8
/* 8BBB4 8003CC04 26250058 */   addiu     $a1, $s1, 0x58
/* 8BBB8 8003CC08 3C028008 */  lui        $v0, %hi(D_8007E330_CD2E0)
/* 8BBBC 8003CC0C 2442E330 */  addiu      $v0, $v0, %lo(D_8007E330_CD2E0)
/* 8BBC0 8003CC10 AFA20010 */  sw         $v0, 0x10($sp)
/* 8BBC4 8003CC14 8E250050 */  lw         $a1, 0x50($s1)
/* 8BBC8 8003CC18 8E260054 */  lw         $a2, 0x54($s1)
/* 8BBCC 8003CC1C 27A40020 */  addiu      $a0, $sp, 0x20
/* 8BBD0 8003CC20 0C0284BE */  jal        func_800A12F8
/* 8BBD4 8003CC24 00003821 */   addu      $a3, $zero, $zero
/* 8BBD8 8003CC28 27A40020 */  addiu      $a0, $sp, 0x20
/* 8BBDC 8003CC2C 27A50060 */  addiu      $a1, $sp, 0x60
/* 8BBE0 8003CC30 0C02F9A8 */  jal        func_800BE6A0
/* 8BBE4 8003CC34 00803021 */   addu      $a2, $a0, $zero
/* 8BBE8 8003CC38 27A40020 */  addiu      $a0, $sp, 0x20
/* 8BBEC 8003CC3C 00002821 */  addu       $a1, $zero, $zero
/* 8BBF0 8003CC40 00A03021 */  addu       $a2, $a1, $zero
/* 8BBF4 8003CC44 00A03821 */  addu       $a3, $a1, $zero
/* 8BBF8 8003CC48 27A200A0 */  addiu      $v0, $sp, 0xa0
/* 8BBFC 8003CC4C AFA20010 */  sw         $v0, 0x10($sp)
/* 8BC00 8003CC50 27A200A4 */  addiu      $v0, $sp, 0xa4
/* 8BC04 8003CC54 AFA20014 */  sw         $v0, 0x14($sp)
/* 8BC08 8003CC58 27A200A8 */  addiu      $v0, $sp, 0xa8
/* 8BC0C 8003CC5C 0C02F9DF */  jal        func_800BE77C
/* 8BC10 8003CC60 AFA20018 */   sw        $v0, 0x18($sp)
/* 8BC14 8003CC64 24040007 */  addiu      $a0, $zero, 7
/* 8BC18 8003CC68 24050001 */  addiu      $a1, $zero, 1
/* 8BC1C 8003CC6C 2406000A */  addiu      $a2, $zero, 0xa
/* 8BC20 8003CC70 C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* 8BC24 8003CC74 C7A200A4 */  lwc1       $f2, 0xa4($sp)
/* 8BC28 8003CC78 C7A400A8 */  lwc1       $f4, 0xa8($sp)
/* 8BC2C 8003CC7C 24020005 */  addiu      $v0, $zero, 5
/* 8BC30 8003CC80 AFA20010 */  sw         $v0, 0x10($sp)
/* 8BC34 8003CC84 24020168 */  addiu      $v0, $zero, 0x168
/* 8BC38 8003CC88 AFA00014 */  sw         $zero, 0x14($sp)
/* 8BC3C 8003CC8C AFA00018 */  sw         $zero, 0x18($sp)
/* 8BC40 8003CC90 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8BC44 8003CC94 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8BC48 8003CC98 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8BC4C 8003CC9C 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8BC50 8003CCA0 E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 8BC54 8003CCA4 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8BC58 8003CCA8 E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 8BC5C 8003CCAC 0C0E64B4 */  jal        func_803992D0
/* 8BC60 8003CCB0 24070008 */   addiu     $a3, $zero, 8
.L8003CCB4:
/* 8BC64 8003CCB4 9222002C */  lbu        $v0, 0x2c($s1)
/* 8BC68 8003CCB8 14400042 */  bnez       $v0, .L8003CDC4
/* 8BC6C 8003CCBC 00000000 */   nop
/* 8BC70 8003CCC0 8E220054 */  lw         $v0, 0x54($s1)
/* 8BC74 8003CCC4 8442001E */  lh         $v0, 0x1e($v0)
/* 8BC78 8003CCC8 1450003D */  bne        $v0, $s0, .L8003CDC0
/* 8BC7C 8003CCCC 00000000 */   nop
/* 8BC80 8003CCD0 0C026DD5 */  jal        func_8009B754
/* 8BC84 8003CCD4 2404000D */   addiu     $a0, $zero, 0xd
/* 8BC88 8003CCD8 27A40060 */  addiu      $a0, $sp, 0x60
/* 8BC8C 8003CCDC 0C02FA72 */  jal        func_800BE9C8
/* 8BC90 8003CCE0 26250058 */   addiu     $a1, $s1, 0x58
/* 8BC94 8003CCE4 27A40020 */  addiu      $a0, $sp, 0x20
/* 8BC98 8003CCE8 3C028008 */  lui        $v0, %hi(D_8007E330_CD2E0)
/* 8BC9C 8003CCEC 2442E330 */  addiu      $v0, $v0, %lo(D_8007E330_CD2E0)
/* 8BCA0 8003CCF0 AFA20010 */  sw         $v0, 0x10($sp)
/* 8BCA4 8003CCF4 8E250050 */  lw         $a1, 0x50($s1)
/* 8BCA8 8003CCF8 8E260054 */  lw         $a2, 0x54($s1)
/* 8BCAC 8003CCFC 00003821 */  addu       $a3, $zero, $zero
/* 8BCB0 8003CD00 0C0284BE */  jal        func_800A12F8
/* 8BCB4 8003CD04 00009021 */   addu      $s2, $zero, $zero
/* 8BCB8 8003CD08 27A40020 */  addiu      $a0, $sp, 0x20
/* 8BCBC 8003CD0C 27A50060 */  addiu      $a1, $sp, 0x60
/* 8BCC0 8003CD10 0C02F9A8 */  jal        func_800BE6A0
/* 8BCC4 8003CD14 00803021 */   addu      $a2, $a0, $zero
/* 8BCC8 8003CD18 27A40020 */  addiu      $a0, $sp, 0x20
/* 8BCCC 8003CD1C 00002821 */  addu       $a1, $zero, $zero
/* 8BCD0 8003CD20 00A03021 */  addu       $a2, $a1, $zero
/* 8BCD4 8003CD24 00A03821 */  addu       $a3, $a1, $zero
/* 8BCD8 8003CD28 27A200A0 */  addiu      $v0, $sp, 0xa0
/* 8BCDC 8003CD2C AFA20010 */  sw         $v0, 0x10($sp)
/* 8BCE0 8003CD30 27A200A4 */  addiu      $v0, $sp, 0xa4
/* 8BCE4 8003CD34 AFA20014 */  sw         $v0, 0x14($sp)
/* 8BCE8 8003CD38 27A200A8 */  addiu      $v0, $sp, 0xa8
/* 8BCEC 8003CD3C 0C02F9DF */  jal        func_800BE77C
/* 8BCF0 8003CD40 AFA20018 */   sw        $v0, 0x18($sp)
/* 8BCF4 8003CD44 24040009 */  addiu      $a0, $zero, 9
/* 8BCF8 8003CD48 C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* 8BCFC 8003CD4C C7A200A4 */  lwc1       $f2, 0xa4($sp)
/* 8BD00 8003CD50 C7A400A8 */  lwc1       $f4, 0xa8($sp)
/* 8BD04 8003CD54 24050014 */  addiu      $a1, $zero, 0x14
/* 8BD08 8003CD58 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8BD0C 8003CD5C E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8BD10 8003CD60 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8BD14 8003CD64 E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 8BD18 8003CD68 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8BD1C 8003CD6C E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 8BD20 8003CD70 0C0E6731 */  jal        func_80399CC4
/* 8BD24 8003CD74 00003021 */   addu      $a2, $zero, $zero
.L8003CD78:
/* 8BD28 8003CD78 0C02591A */  jal        func_80096468
/* 8BD2C 8003CD7C 24040005 */   addiu     $a0, $zero, 5
/* 8BD30 8003CD80 24040005 */  addiu      $a0, $zero, 5
/* 8BD34 8003CD84 24500005 */  addiu      $s0, $v0, 5
/* 8BD38 8003CD88 00108400 */  sll        $s0, $s0, 0x10
/* 8BD3C 8003CD8C 0C02591A */  jal        func_80096468
/* 8BD40 8003CD90 00108403 */   sra       $s0, $s0, 0x10
/* 8BD44 8003CD94 02002021 */  addu       $a0, $s0, $zero
/* 8BD48 8003CD98 24420005 */  addiu      $v0, $v0, 5
/* 8BD4C 8003CD9C 00021400 */  sll        $v0, $v0, 0x10
/* 8BD50 8003CDA0 00022C03 */  sra        $a1, $v0, 0x10
/* 8BD54 8003CDA4 0C0E6731 */  jal        func_80399CC4
/* 8BD58 8003CDA8 24060032 */   addiu     $a2, $zero, 0x32
/* 8BD5C 8003CDAC 26520001 */  addiu      $s2, $s2, 1
/* 8BD60 8003CDB0 2A420014 */  slti       $v0, $s2, 0x14
/* 8BD64 8003CDB4 1440FFF0 */  bnez       $v0, .L8003CD78
/* 8BD68 8003CDB8 24020001 */   addiu     $v0, $zero, 1
/* 8BD6C 8003CDBC A222002C */  sb         $v0, 0x2c($s1)
.L8003CDC0:
/* 8BD70 8003CDC0 9222002C */  lbu        $v0, 0x2c($s1)
.L8003CDC4:
/* 8BD74 8003CDC4 8FBF00BC */  lw         $ra, 0xbc($sp)
/* 8BD78 8003CDC8 8FB200B8 */  lw         $s2, 0xb8($sp)
/* 8BD7C 8003CDCC 8FB100B4 */  lw         $s1, 0xb4($sp)
/* 8BD80 8003CDD0 8FB000B0 */  lw         $s0, 0xb0($sp)
/* 8BD84 8003CDD4 27BD00C0 */  addiu      $sp, $sp, 0xc0
/* 8BD88 8003CDD8 03E00008 */  jr         $ra
/* 8BD8C 8003CDDC 00000000 */   nop

glabel func_8003CDE0_8BD90
/* 8BD90 8003CDE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BD94 8003CDE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BD98 8003CDE8 00808021 */  addu       $s0, $a0, $zero
/* 8BD9C 8003CDEC 24040003 */  addiu      $a0, $zero, 3
/* 8BDA0 8003CDF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BDA4 8003CDF4 0C026962 */  jal        func_8009A588
/* 8BDA8 8003CDF8 24050004 */   addiu     $a1, $zero, 4
/* 8BDAC 8003CDFC 00021400 */  sll        $v0, $v0, 0x10
/* 8BDB0 8003CE00 00021C03 */  sra        $v1, $v0, 0x10
/* 8BDB4 8003CE04 10600008 */  beqz       $v1, .L8003CE28
/* 8BDB8 8003CE08 24020002 */   addiu     $v0, $zero, 2
/* 8BDBC 8003CE0C 1462000D */  bne        $v1, $v0, .L8003CE44
/* 8BDC0 8003CE10 24020001 */   addiu     $v0, $zero, 1
/* 8BDC4 8003CE14 82030001 */  lb         $v1, 1($s0)
/* 8BDC8 8003CE18 10620009 */  beq        $v1, $v0, .L8003CE40
/* 8BDCC 8003CE1C 24020001 */   addiu     $v0, $zero, 1
/* 8BDD0 8003CE20 0800F391 */  j          .L8003CE44
/* 8BDD4 8003CE24 A202002E */   sb        $v0, 0x2e($s0)
.L8003CE28:
/* 8BDD8 8003CE28 82030001 */  lb         $v1, 1($s0)
/* 8BDDC 8003CE2C 24020001 */  addiu      $v0, $zero, 1
/* 8BDE0 8003CE30 14620003 */  bne        $v1, $v0, .L8003CE40
/* 8BDE4 8003CE34 24020001 */   addiu     $v0, $zero, 1
/* 8BDE8 8003CE38 0800F391 */  j          .L8003CE44
/* 8BDEC 8003CE3C A202002E */   sb        $v0, 0x2e($s0)
.L8003CE40:
/* 8BDF0 8003CE40 A202002D */  sb         $v0, 0x2d($s0)
.L8003CE44:
/* 8BDF4 8003CE44 3C028015 */  lui        $v0, %hi(D_8014D008)
/* 8BDF8 8003CE48 9442D008 */  lhu        $v0, %lo(D_8014D008)($v0)
/* 8BDFC 8003CE4C 30428000 */  andi       $v0, $v0, 0x8000
/* 8BE00 8003CE50 10400002 */  beqz       $v0, .L8003CE5C
/* 8BE04 8003CE54 24020001 */   addiu     $v0, $zero, 1
/* 8BE08 8003CE58 A2020030 */  sb         $v0, 0x30($s0)
.L8003CE5C:
/* 8BE0C 8003CE5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BE10 8003CE60 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BE14 8003CE64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8BE18 8003CE68 03E00008 */  jr         $ra
/* 8BE1C 8003CE6C 00000000 */   nop

glabel func_8003CE70_8BE20
/* 8BE20 8003CE70 9082002A */  lbu        $v0, 0x2a($a0)
/* 8BE24 8003CE74 10400004 */  beqz       $v0, .L8003CE88
/* 8BE28 8003CE78 27BDFFF0 */   addiu     $sp, $sp, -0x10
/* 8BE2C 8003CE7C 24020001 */  addiu      $v0, $zero, 1
/* 8BE30 8003CE80 0800F3EC */  j          .L8003CFB0
/* 8BE34 8003CE84 A082002E */   sb        $v0, 0x2e($a0)
.L8003CE88:
/* 8BE38 8003CE88 3C028008 */  lui        $v0, %hi(D_80084614)
/* 8BE3C 8003CE8C 8C424614 */  lw         $v0, %lo(D_80084614)($v0)
/* 8BE40 8003CE90 C4820004 */  lwc1       $f2, 4($a0)
/* 8BE44 8003CE94 C4400008 */  lwc1       $f0, 8($v0)
/* 8BE48 8003CE98 46020081 */  sub.s      $f2, $f0, $f2
/* 8BE4C 8003CE9C 44800000 */  mtc1       $zero, $f0
/* 8BE50 8003CEA0 00000000 */  nop
/* 8BE54 8003CEA4 4602003C */  c.lt.s     $f0, $f2
/* 8BE58 8003CEA8 00000000 */  nop
/* 8BE5C 8003CEAC 00000000 */  nop
/* 8BE60 8003CEB0 45010002 */  bc1t       .L8003CEBC
/* 8BE64 8003CEB4 46001006 */   mov.s     $f0, $f2
/* 8BE68 8003CEB8 46001007 */  neg.s      $f0, $f2
.L8003CEBC:
/* 8BE6C 8003CEBC 80420001 */  lb         $v0, 1($v0)
/* 8BE70 8003CEC0 80830001 */  lb         $v1, 1($a0)
/* 8BE74 8003CEC4 00021023 */  negu       $v0, $v0
/* 8BE78 8003CEC8 14620009 */  bne        $v1, $v0, .L8003CEF0
/* 8BE7C 8003CECC 46000086 */   mov.s     $f2, $f0
/* 8BE80 8003CED0 3C014220 */  lui        $at, 0x4220
/* 8BE84 8003CED4 44810000 */  mtc1       $at, $f0
/* 8BE88 8003CED8 00000000 */  nop
/* 8BE8C 8003CEDC 3C014270 */  lui        $at, 0x4270
/* 8BE90 8003CEE0 44812000 */  mtc1       $at, $f4
/* 8BE94 8003CEE4 00000000 */  nop
/* 8BE98 8003CEE8 0800F3C4 */  j          .L8003CF10
/* 8BE9C 8003CEEC 00000000 */   nop
.L8003CEF0:
/* 8BEA0 8003CEF0 84820022 */  lh         $v0, 0x22($a0)
/* 8BEA4 8003CEF4 84830024 */  lh         $v1, 0x24($a0)
/* 8BEA8 8003CEF8 44820000 */  mtc1       $v0, $f0
/* 8BEAC 8003CEFC 00000000 */  nop
/* 8BEB0 8003CF00 46800020 */  cvt.s.w    $f0, $f0
/* 8BEB4 8003CF04 44832000 */  mtc1       $v1, $f4
/* 8BEB8 8003CF08 00000000 */  nop
/* 8BEBC 8003CF0C 46802120 */  cvt.s.w    $f4, $f4
.L8003CF10:
/* 8BEC0 8003CF10 4600103C */  c.lt.s     $f2, $f0
/* 8BEC4 8003CF14 00000000 */  nop
/* 8BEC8 8003CF18 00000000 */  nop
/* 8BECC 8003CF1C 45000005 */  bc1f       .L8003CF34
/* 8BED0 8003CF20 24030001 */   addiu     $v1, $zero, 1
/* 8BED4 8003CF24 90820000 */  lbu        $v0, ($a0)
/* 8BED8 8003CF28 A083002E */  sb         $v1, 0x2e($a0)
/* 8BEDC 8003CF2C 0800F3D5 */  j          .L8003CF54
/* 8BEE0 8003CF30 24030002 */   addiu     $v1, $zero, 2
.L8003CF34:
/* 8BEE4 8003CF34 4602203C */  c.lt.s     $f4, $f2
/* 8BEE8 8003CF38 00000000 */  nop
/* 8BEEC 8003CF3C 45000008 */  bc1f       .L8003CF60
/* 8BEF0 8003CF40 00000000 */   nop
/* 8BEF4 8003CF44 90820000 */  lbu        $v0, ($a0)
/* 8BEF8 8003CF48 24030001 */  addiu      $v1, $zero, 1
/* 8BEFC 8003CF4C A083002D */  sb         $v1, 0x2d($a0)
/* 8BF00 8003CF50 24030001 */  addiu      $v1, $zero, 1
.L8003CF54:
/* 8BF04 8003CF54 10430002 */  beq        $v0, $v1, .L8003CF60
/* 8BF08 8003CF58 24020028 */   addiu     $v0, $zero, 0x28
/* 8BF0C 8003CF5C A4820026 */  sh         $v0, 0x26($a0)
.L8003CF60:
/* 8BF10 8003CF60 84820026 */  lh         $v0, 0x26($a0)
/* 8BF14 8003CF64 14400010 */  bnez       $v0, .L8003CFA8
/* 8BF18 8003CF68 00401821 */   addu      $v1, $v0, $zero
/* 8BF1C 8003CF6C 84820028 */  lh         $v0, 0x28($a0)
/* 8BF20 8003CF70 14400008 */  bnez       $v0, .L8003CF94
/* 8BF24 8003CF74 00401821 */   addu      $v1, $v0, $zero
/* 8BF28 8003CF78 3C028017 */  lui        $v0, %hi(D_8016D168)
/* 8BF2C 8003CF7C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* 8BF30 8003CF80 24030028 */  addiu      $v1, $zero, 0x28
/* 8BF34 8003CF84 A4830026 */  sh         $v1, 0x26($a0)
/* 8BF38 8003CF88 00021040 */  sll        $v0, $v0, 1
/* 8BF3C 8003CF8C 0800F3EC */  j          .L8003CFB0
/* 8BF40 8003CF90 A4820028 */   sh        $v0, 0x28($a0)
.L8003CF94:
/* 8BF44 8003CF94 2462FFFF */  addiu      $v0, $v1, -1
/* 8BF48 8003CF98 A4820028 */  sh         $v0, 0x28($a0)
/* 8BF4C 8003CF9C 24020001 */  addiu      $v0, $zero, 1
/* 8BF50 8003CFA0 0800F3EC */  j          .L8003CFB0
/* 8BF54 8003CFA4 A0820030 */   sb        $v0, 0x30($a0)
.L8003CFA8:
/* 8BF58 8003CFA8 2462FFFF */  addiu      $v0, $v1, -1
/* 8BF5C 8003CFAC A4820026 */  sh         $v0, 0x26($a0)
.L8003CFB0:
/* 8BF60 8003CFB0 27BD0010 */  addiu      $sp, $sp, 0x10
/* 8BF64 8003CFB4 03E00008 */  jr         $ra
/* 8BF68 8003CFB8 00000000 */   nop

glabel func_8003CFBC_8BF6C
/* 8BF6C 8003CFBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8BF70 8003CFC0 AFB00020 */  sw         $s0, 0x20($sp)
/* 8BF74 8003CFC4 00808021 */  addu       $s0, $a0, $zero
/* 8BF78 8003CFC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8BF7C 8003CFCC 92020030 */  lbu        $v0, 0x30($s0)
/* 8BF80 8003CFD0 10400078 */  beqz       $v0, .L8003D1B4
/* 8BF84 8003CFD4 00000000 */   nop
/* 8BF88 8003CFD8 3C028008 */  lui        $v0, %hi(D_80080734)
/* 8BF8C 8003CFDC 90420734 */  lbu        $v0, %lo(D_80080734)($v0)
/* 8BF90 8003CFE0 1440000B */  bnez       $v0, .L8003D010
/* 8BF94 8003CFE4 00000000 */   nop
/* 8BF98 8003CFE8 3C028008 */  lui        $v0, %hi(D_80084610)
/* 8BF9C 8003CFEC 8C424610 */  lw         $v0, %lo(D_80084610)($v0)
/* 8BFA0 8003CFF0 14400007 */  bnez       $v0, .L8003D010
/* 8BFA4 8003CFF4 00000000 */   nop
/* 8BFA8 8003CFF8 0C026DD5 */  jal        func_8009B754
/* 8BFAC 8003CFFC 24040035 */   addiu     $a0, $zero, 0x35
/* 8BFB0 8003D000 AE020018 */  sw         $v0, 0x18($s0)
/* 8BFB4 8003D004 24020001 */  addiu      $v0, $zero, 1
/* 8BFB8 8003D008 3C018008 */  lui        $at, %hi(D_80080734)
/* 8BFBC 8003D00C A0220734 */  sb         $v0, %lo(D_80080734)($at)
.L8003D010:
/* 8BFC0 8003D010 82030020 */  lb         $v1, 0x20($s0)
/* 8BFC4 8003D014 00031040 */  sll        $v0, $v1, 1
/* 8BFC8 8003D018 00431021 */  addu       $v0, $v0, $v1
/* 8BFCC 8003D01C 3C018007 */  lui        $at, %hi(D_8006AD22_B9CD2)
/* 8BFD0 8003D020 00220821 */  addu       $at, $at, $v0
/* 8BFD4 8003D024 8022AD22 */  lb         $v0, %lo(D_8006AD22_B9CD2)($at)
/* 8BFD8 8003D028 C602000C */  lwc1       $f2, 0xc($s0)
/* 8BFDC 8003D02C 44820000 */  mtc1       $v0, $f0
/* 8BFE0 8003D030 00000000 */  nop
/* 8BFE4 8003D034 46800020 */  cvt.s.w    $f0, $f0
/* 8BFE8 8003D038 46001080 */  add.s      $f2, $f2, $f0
/* 8BFEC 8003D03C 44800000 */  mtc1       $zero, $f0
/* 8BFF0 8003D040 00000000 */  nop
/* 8BFF4 8003D044 46001032 */  c.eq.s     $f2, $f0
/* 8BFF8 8003D048 00000000 */  nop
/* 8BFFC 8003D04C 00000000 */  nop
/* 8C000 8003D050 45010010 */  bc1t       .L8003D094
/* 8C004 8003D054 00002821 */   addu      $a1, $zero, $zero
/* 8C008 8003D058 4602003C */  c.lt.s     $f0, $f2
/* 8C00C 8003D05C 00000000 */  nop
/* 8C010 8003D060 00000000 */  nop
/* 8C014 8003D064 45000006 */  bc1f       .L8003D080
/* 8C018 8003D068 24020001 */   addiu     $v0, $zero, 1
/* 8C01C 8003D06C 82030001 */  lb         $v1, 1($s0)
/* 8C020 8003D070 14620007 */  bne        $v1, $v0, .L8003D090
/* 8C024 8003D074 24050002 */   addiu     $a1, $zero, 2
/* 8C028 8003D078 0800F424 */  j          .L8003D090
/* 8C02C 8003D07C 24050001 */   addiu     $a1, $zero, 1
.L8003D080:
/* 8C030 8003D080 82030001 */  lb         $v1, 1($s0)
/* 8C034 8003D084 14620002 */  bne        $v1, $v0, .L8003D090
/* 8C038 8003D088 24050001 */   addiu     $a1, $zero, 1
/* 8C03C 8003D08C 24050002 */  addiu      $a1, $zero, 2
.L8003D090:
/* 8C040 8003D090 82030020 */  lb         $v1, 0x20($s0)
.L8003D094:
/* 8C044 8003D094 00031040 */  sll        $v0, $v1, 1
/* 8C048 8003D098 00431021 */  addu       $v0, $v0, $v1
/* 8C04C 8003D09C 3C018007 */  lui        $at, %hi(D_8006AD20_B9CD0)
/* 8C050 8003D0A0 00220821 */  addu       $at, $at, $v0
/* 8C054 8003D0A4 8022AD20 */  lb         $v0, %lo(D_8006AD20_B9CD0)($at)
/* 8C058 8003D0A8 82030001 */  lb         $v1, 1($s0)
/* 8C05C 8003D0AC 00430018 */  mult       $v0, $v1
/* 8C060 8003D0B0 00001012 */  mflo       $v0
/* 8C064 8003D0B4 00000000 */  nop
/* 8C068 8003D0B8 00000000 */  nop
/* 8C06C 8003D0BC C6000004 */  lwc1       $f0, 4($s0)
/* 8C070 8003D0C0 44821000 */  mtc1       $v0, $f2
/* 8C074 8003D0C4 00000000 */  nop
/* 8C078 8003D0C8 468010A0 */  cvt.s.w    $f2, $f2
/* 8C07C 8003D0CC 46020000 */  add.s      $f0, $f0, $f2
/* 8C080 8003D0D0 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8C084 8003D0D4 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8C088 8003D0D8 82030020 */  lb         $v1, 0x20($s0)
/* 8C08C 8003D0DC 00031040 */  sll        $v0, $v1, 1
/* 8C090 8003D0E0 00431021 */  addu       $v0, $v0, $v1
/* 8C094 8003D0E4 3C018007 */  lui        $at, %hi(D_8006AD21_B9CD1)
/* 8C098 8003D0E8 00220821 */  addu       $at, $at, $v0
/* 8C09C 8003D0EC 8022AD21 */  lb         $v0, %lo(D_8006AD21_B9CD1)($at)
/* 8C0A0 8003D0F0 C6000008 */  lwc1       $f0, 8($s0)
/* 8C0A4 8003D0F4 44821000 */  mtc1       $v0, $f2
/* 8C0A8 8003D0F8 00000000 */  nop
/* 8C0AC 8003D0FC 468010A0 */  cvt.s.w    $f2, $f2
/* 8C0B0 8003D100 46020000 */  add.s      $f0, $f0, $f2
/* 8C0B4 8003D104 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8C0B8 8003D108 E4203EB0 */  swc1       $f0, %lo(D_803B3EB0)($at)
/* 8C0BC 8003D10C 82030020 */  lb         $v1, 0x20($s0)
/* 8C0C0 8003D110 00031040 */  sll        $v0, $v1, 1
/* 8C0C4 8003D114 00431021 */  addu       $v0, $v0, $v1
/* 8C0C8 8003D118 3C018007 */  lui        $at, %hi(D_8006AD22_B9CD2)
/* 8C0CC 8003D11C 00220821 */  addu       $at, $at, $v0
/* 8C0D0 8003D120 8022AD22 */  lb         $v0, %lo(D_8006AD22_B9CD2)($at)
/* 8C0D4 8003D124 C602000C */  lwc1       $f2, 0xc($s0)
/* 8C0D8 8003D128 44820000 */  mtc1       $v0, $f0
/* 8C0DC 8003D12C 00000000 */  nop
/* 8C0E0 8003D130 46800020 */  cvt.s.w    $f0, $f0
/* 8C0E4 8003D134 46001080 */  add.s      $f2, $f2, $f0
/* 8C0E8 8003D138 24040023 */  addiu      $a0, $zero, 0x23
/* 8C0EC 8003D13C 24020163 */  addiu      $v0, $zero, 0x163
/* 8C0F0 8003D140 AFA20010 */  sw         $v0, 0x10($sp)
/* 8C0F4 8003D144 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8C0F8 8003D148 E4223E2C */  swc1       $f2, %lo(D_803B3E2C)($at)
/* 8C0FC 8003D14C 82020001 */  lb         $v0, 1($s0)
/* 8C100 8003D150 24060064 */  addiu      $a2, $zero, 0x64
/* 8C104 8003D154 24070007 */  addiu      $a3, $zero, 7
/* 8C108 8003D158 AFA50018 */  sw         $a1, 0x18($sp)
/* 8C10C 8003D15C 24050014 */  addiu      $a1, $zero, 0x14
/* 8C110 8003D160 00021840 */  sll        $v1, $v0, 1
/* 8C114 8003D164 00621821 */  addu       $v1, $v1, $v0
/* 8C118 8003D168 00031100 */  sll        $v0, $v1, 4
/* 8C11C 8003D16C 00431023 */  subu       $v0, $v0, $v1
/* 8C120 8003D170 00021040 */  sll        $v0, $v0, 1
/* 8C124 8003D174 0C0E6C7D */  jal        func_8039B1F4
/* 8C128 8003D178 AFA20014 */   sw        $v0, 0x14($sp)
/* 8C12C 8003D17C 92030020 */  lbu        $v1, 0x20($s0)
/* 8C130 8003D180 24620001 */  addiu      $v0, $v1, 1
/* 8C134 8003D184 A2020020 */  sb         $v0, 0x20($s0)
/* 8C138 8003D188 00021600 */  sll        $v0, $v0, 0x18
/* 8C13C 8003D18C 00022603 */  sra        $a0, $v0, 0x18
/* 8C140 8003D190 28820004 */  slti       $v0, $a0, 4
/* 8C144 8003D194 14400003 */  bnez       $v0, .L8003D1A4
/* 8C148 8003D198 2462FFFD */   addiu     $v0, $v1, -3
/* 8C14C 8003D19C 0800F474 */  j          .L8003D1D0
/* 8C150 8003D1A0 A2020020 */   sb        $v0, 0x20($s0)
.L8003D1A4:
/* 8C154 8003D1A4 0481000A */  bgez       $a0, .L8003D1D0
/* 8C158 8003D1A8 24620005 */   addiu     $v0, $v1, 5
/* 8C15C 8003D1AC 0800F474 */  j          .L8003D1D0
/* 8C160 8003D1B0 A2020020 */   sb        $v0, 0x20($s0)
.L8003D1B4:
/* 8C164 8003D1B4 8E020018 */  lw         $v0, 0x18($s0)
/* 8C168 8003D1B8 10400005 */  beqz       $v0, .L8003D1D0
/* 8C16C 8003D1BC 00000000 */   nop
/* 8C170 8003D1C0 0C026E4E */  jal        func_8009B938
/* 8C174 8003D1C4 26040018 */   addiu     $a0, $s0, 0x18
/* 8C178 8003D1C8 3C018008 */  lui        $at, %hi(D_80080734)
/* 8C17C 8003D1CC A0200734 */  sb         $zero, %lo(D_80080734)($at)
.L8003D1D0:
/* 8C180 8003D1D0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8C184 8003D1D4 8FB00020 */  lw         $s0, 0x20($sp)
/* 8C188 8003D1D8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8C18C 8003D1DC 03E00008 */  jr         $ra
/* 8C190 8003D1E0 00000000 */   nop

glabel func_8003D1E4_8C194
/* 8C194 8003D1E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C198 8003D1E8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8C19C 8003D1EC 8C820054 */  lw         $v0, 0x54($a0)
/* 8C1A0 8003D1F0 8443001E */  lh         $v1, 0x1e($v0)
/* 8C1A4 8003D1F4 240200FF */  addiu      $v0, $zero, 0xff
/* 8C1A8 8003D1F8 14620012 */  bne        $v1, $v0, .L8003D244
/* 8C1AC 8003D1FC 00001021 */   addu      $v0, $zero, $zero
/* 8C1B0 8003D200 90830000 */  lbu        $v1, ($a0)
/* 8C1B4 8003D204 24020001 */  addiu      $v0, $zero, 1
/* 8C1B8 8003D208 54620006 */  bnel       $v1, $v0, .L8003D224
/* 8C1BC 8003D20C 24020002 */   addiu     $v0, $zero, 2
/* 8C1C0 8003D210 8C82002C */  lw         $v0, 0x2c($a0)
/* 8C1C4 8003D214 3C0300FF */  lui        $v1, 0xff
/* 8C1C8 8003D218 3463FF00 */  ori        $v1, $v1, 0xff00
/* 8C1CC 8003D21C 0800F48C */  j          .L8003D230
/* 8C1D0 8003D220 00431024 */   and       $v0, $v0, $v1
.L8003D224:
/* 8C1D4 8003D224 14620007 */  bne        $v1, $v0, .L8003D244
/* 8C1D8 8003D228 00001021 */   addu      $v0, $zero, $zero
/* 8C1DC 8003D22C 9082002E */  lbu        $v0, 0x2e($a0)
.L8003D230:
/* 8C1E0 8003D230 14400004 */  bnez       $v0, .L8003D244
/* 8C1E4 8003D234 00001021 */   addu      $v0, $zero, $zero
/* 8C1E8 8003D238 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8C1EC 8003D23C 00002821 */   addu      $a1, $zero, $zero
/* 8C1F0 8003D240 24020001 */  addiu      $v0, $zero, 1
.L8003D244:
/* 8C1F4 8003D244 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8C1F8 8003D248 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C1FC 8003D24C 03E00008 */  jr         $ra
/* 8C200 8003D250 00000000 */   nop

glabel func_8003D254_8C204
/* 8C204 8003D254 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C208 8003D258 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8C20C 8003D25C 8C820054 */  lw         $v0, 0x54($a0)
/* 8C210 8003D260 8443001E */  lh         $v1, 0x1e($v0)
/* 8C214 8003D264 240200FF */  addiu      $v0, $zero, 0xff
/* 8C218 8003D268 14620007 */  bne        $v1, $v0, .L8003D288
/* 8C21C 8003D26C 00001021 */   addu      $v0, $zero, $zero
/* 8C220 8003D270 9082002D */  lbu        $v0, 0x2d($a0)
/* 8C224 8003D274 10400004 */  beqz       $v0, .L8003D288
/* 8C228 8003D278 00001021 */   addu      $v0, $zero, $zero
/* 8C22C 8003D27C 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8C230 8003D280 24050001 */   addiu     $a1, $zero, 1
/* 8C234 8003D284 24020001 */  addiu      $v0, $zero, 1
.L8003D288:
/* 8C238 8003D288 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8C23C 8003D28C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C240 8003D290 03E00008 */  jr         $ra
/* 8C244 8003D294 00000000 */   nop

glabel func_8003D298_8C248
/* 8C248 8003D298 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C24C 8003D29C AFBF0010 */  sw         $ra, 0x10($sp)
/* 8C250 8003D2A0 8C820054 */  lw         $v0, 0x54($a0)
/* 8C254 8003D2A4 8443001E */  lh         $v1, 0x1e($v0)
/* 8C258 8003D2A8 240200FF */  addiu      $v0, $zero, 0xff
/* 8C25C 8003D2AC 14620007 */  bne        $v1, $v0, .L8003D2CC
/* 8C260 8003D2B0 00001021 */   addu      $v0, $zero, $zero
/* 8C264 8003D2B4 9082002E */  lbu        $v0, 0x2e($a0)
/* 8C268 8003D2B8 10400004 */  beqz       $v0, .L8003D2CC
/* 8C26C 8003D2BC 00001021 */   addu      $v0, $zero, $zero
/* 8C270 8003D2C0 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8C274 8003D2C4 24050002 */   addiu     $a1, $zero, 2
/* 8C278 8003D2C8 24020001 */  addiu      $v0, $zero, 1
.L8003D2CC:
/* 8C27C 8003D2CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8C280 8003D2D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C284 8003D2D4 03E00008 */  jr         $ra
/* 8C288 8003D2D8 00000000 */   nop

glabel func_8003D2DC_8C28C
/* 8C28C 8003D2DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C290 8003D2E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C294 8003D2E4 00808021 */  addu       $s0, $a0, $zero
/* 8C298 8003D2E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C29C 8003D2EC 92020031 */  lbu        $v0, 0x31($s0)
/* 8C2A0 8003D2F0 10400010 */  beqz       $v0, .L8003D334
/* 8C2A4 8003D2F4 00000000 */   nop
/* 8C2A8 8003D2F8 92030021 */  lbu        $v1, 0x21($s0)
/* 8C2AC 8003D2FC 24620001 */  addiu      $v0, $v1, 1
/* 8C2B0 8003D300 A2020021 */  sb         $v0, 0x21($s0)
/* 8C2B4 8003D304 00021600 */  sll        $v0, $v0, 0x18
/* 8C2B8 8003D308 00022603 */  sra        $a0, $v0, 0x18
/* 8C2BC 8003D30C 28820002 */  slti       $v0, $a0, 2
/* 8C2C0 8003D310 10400004 */  beqz       $v0, .L8003D324
/* 8C2C4 8003D314 2462FFFF */   addiu     $v0, $v1, -1
/* 8C2C8 8003D318 04810004 */  bgez       $a0, .L8003D32C
/* 8C2CC 8003D31C 02002021 */   addu      $a0, $s0, $zero
/* 8C2D0 8003D320 24620003 */  addiu      $v0, $v1, 3
.L8003D324:
/* 8C2D4 8003D324 A2020021 */  sb         $v0, 0x21($s0)
/* 8C2D8 8003D328 02002021 */  addu       $a0, $s0, $zero
.L8003D32C:
/* 8C2DC 8003D32C 0800F4EF */  j          .L8003D3BC
/* 8C2E0 8003D330 24050004 */   addiu     $a1, $zero, 4
.L8003D334:
/* 8C2E4 8003D334 9202002F */  lbu        $v0, 0x2f($s0)
/* 8C2E8 8003D338 10400023 */  beqz       $v0, .L8003D3C8
/* 8C2EC 8003D33C 00001021 */   addu      $v0, $zero, $zero
/* 8C2F0 8003D340 96030048 */  lhu        $v1, 0x48($s0)
/* 8C2F4 8003D344 2462FFF9 */  addiu      $v0, $v1, -7
/* 8C2F8 8003D348 2C42000A */  sltiu      $v0, $v0, 0xa
/* 8C2FC 8003D34C 10400010 */  beqz       $v0, .L8003D390
/* 8C300 8003D350 00031400 */   sll       $v0, $v1, 0x10
/* 8C304 8003D354 3C028008 */  lui        $v0, %hi(D_80082FF4)
/* 8C308 8003D358 90422FF4 */  lbu        $v0, %lo(D_80082FF4)($v0)
/* 8C30C 8003D35C 3843002A */  xori       $v1, $v0, 0x2a
/* 8C310 8003D360 2C630001 */  sltiu      $v1, $v1, 1
/* 8C314 8003D364 3842002C */  xori       $v0, $v0, 0x2c
/* 8C318 8003D368 2C420001 */  sltiu      $v0, $v0, 1
/* 8C31C 8003D36C 00621825 */  or         $v1, $v1, $v0
/* 8C320 8003D370 10600003 */  beqz       $v1, .L8003D380
/* 8C324 8003D374 24020001 */   addiu     $v0, $zero, 1
/* 8C328 8003D378 0800F4E1 */  j          .L8003D384
/* 8C32C 8003D37C A2000021 */   sb        $zero, 0x21($s0)
.L8003D380:
/* 8C330 8003D380 A2020021 */  sb         $v0, 0x21($s0)
.L8003D384:
/* 8C334 8003D384 02002021 */  addu       $a0, $s0, $zero
/* 8C338 8003D388 0800F4EF */  j          .L8003D3BC
/* 8C33C 8003D38C 24050004 */   addiu     $a1, $zero, 4
.L8003D390:
/* 8C340 8003D390 00021403 */  sra        $v0, $v0, 0x10
/* 8C344 8003D394 2403000D */  addiu      $v1, $zero, 0xd
/* 8C348 8003D398 14430007 */  bne        $v0, $v1, .L8003D3B8
/* 8C34C 8003D39C 02002021 */   addu      $a0, $s0, $zero
/* 8C350 8003D3A0 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8C354 8003D3A4 24050004 */   addiu     $a1, $zero, 4
/* 8C358 8003D3A8 24020001 */  addiu      $v0, $zero, 1
/* 8C35C 8003D3AC A202002C */  sb         $v0, 0x2c($s0)
/* 8C360 8003D3B0 0800F4F2 */  j          .L8003D3C8
/* 8C364 8003D3B4 24020001 */   addiu     $v0, $zero, 1
.L8003D3B8:
/* 8C368 8003D3B8 24050003 */  addiu      $a1, $zero, 3
.L8003D3BC:
/* 8C36C 8003D3BC 0C00F1CF */  jal        func_8003C73C_8B6EC
/* 8C370 8003D3C0 00000000 */   nop
/* 8C374 8003D3C4 24020001 */  addiu      $v0, $zero, 1
.L8003D3C8:
/* 8C378 8003D3C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C37C 8003D3CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C380 8003D3D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C384 8003D3D4 03E00008 */  jr         $ra
/* 8C388 8003D3D8 00000000 */   nop

glabel func_8003D3DC_8C38C
/* 8C38C 8003D3DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C390 8003D3E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C394 8003D3E4 00808021 */  addu       $s0, $a0, $zero
/* 8C398 8003D3E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C39C 8003D3EC C6000014 */  lwc1       $f0, 0x14($s0)
/* 8C3A0 8003D3F0 3C014000 */  lui        $at, 0x4000
/* 8C3A4 8003D3F4 44811000 */  mtc1       $at, $f2
/* 8C3A8 8003D3F8 00000000 */  nop
/* 8C3AC 8003D3FC 4600103C */  c.lt.s     $f2, $f0
/* 8C3B0 8003D400 00000000 */  nop
/* 8C3B4 8003D404 00000000 */  nop
/* 8C3B8 8003D408 45030009 */  bc1tl      .L8003D430
/* 8C3BC 8003D40C E6020014 */   swc1      $f2, 0x14($s0)
/* 8C3C0 8003D410 3C01C000 */  lui        $at, 0xc000
/* 8C3C4 8003D414 44811000 */  mtc1       $at, $f2
/* 8C3C8 8003D418 00000000 */  nop
/* 8C3CC 8003D41C 4602003C */  c.lt.s     $f0, $f2
/* 8C3D0 8003D420 00000000 */  nop
/* 8C3D4 8003D424 00000000 */  nop
/* 8C3D8 8003D428 45030001 */  bc1tl      .L8003D430
/* 8C3DC 8003D42C E6020014 */   swc1      $f2, 0x14($s0)
.L8003D430:
/* 8C3E0 8003D430 C6000004 */  lwc1       $f0, 4($s0)
/* 8C3E4 8003D434 C6020014 */  lwc1       $f2, 0x14($s0)
/* 8C3E8 8003D438 46020000 */  add.s      $f0, $f0, $f2
/* 8C3EC 8003D43C 92030000 */  lbu        $v1, ($s0)
/* 8C3F0 8003D440 24020004 */  addiu      $v0, $zero, 4
/* 8C3F4 8003D444 10620018 */  beq        $v1, $v0, .L8003D4A8
/* 8C3F8 8003D448 E6000004 */   swc1      $f0, 4($s0)
/* 8C3FC 8003D44C 9603001C */  lhu        $v1, 0x1c($s0)
/* 8C400 8003D450 24620005 */  addiu      $v0, $v1, 5
/* 8C404 8003D454 A602001C */  sh         $v0, 0x1c($s0)
/* 8C408 8003D458 00021400 */  sll        $v0, $v0, 0x10
/* 8C40C 8003D45C 00022403 */  sra        $a0, $v0, 0x10
/* 8C410 8003D460 28820168 */  slti       $v0, $a0, 0x168
/* 8C414 8003D464 10400003 */  beqz       $v0, .L8003D474
/* 8C418 8003D468 2462FE9D */   addiu     $v0, $v1, -0x163
/* 8C41C 8003D46C 04810002 */  bgez       $a0, .L8003D478
/* 8C420 8003D470 2462016D */   addiu     $v0, $v1, 0x16d
.L8003D474:
/* 8C424 8003D474 A602001C */  sh         $v0, 0x1c($s0)
.L8003D478:
/* 8C428 8003D478 8602001C */  lh         $v0, 0x1c($s0)
/* 8C42C 8003D47C 3C018008 */  lui        $at, %hi(D_8007E368_CD318)
/* 8C430 8003D480 D420E368 */  ldc1       $f0, %lo(D_8007E368_CD318)($at)
/* 8C434 8003D484 44826000 */  mtc1       $v0, $f12
/* 8C438 8003D488 00000000 */  nop
/* 8C43C 8003D48C 46806321 */  cvt.d.w    $f12, $f12
/* 8C440 8003D490 46206302 */  mul.d      $f12, $f12, $f0
/* 8C444 8003D494 0C02F784 */  jal        func_800BDE10
/* 8C448 8003D498 46206320 */   cvt.s.d   $f12, $f12
/* 8C44C 8003D49C C6020010 */  lwc1       $f2, 0x10($s0)
/* 8C450 8003D4A0 46001080 */  add.s      $f2, $f2, $f0
/* 8C454 8003D4A4 E6020008 */  swc1       $f2, 8($s0)
.L8003D4A8:
/* 8C458 8003D4A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C45C 8003D4AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C460 8003D4B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C464 8003D4B4 03E00008 */  jr         $ra
/* 8C468 8003D4B8 00000000 */   nop

glabel func_8003D4BC_8C46C
/* 8C46C 8003D4BC C4800004 */  lwc1       $f0, 4($a0)
/* 8C470 8003D4C0 3C018008 */  lui        $at, %hi(D_80083A3C)
/* 8C474 8003D4C4 C4223A3C */  lwc1       $f2, %lo(D_80083A3C)($at)
/* 8C478 8003D4C8 46020000 */  add.s      $f0, $f0, $f2
/* 8C47C 8003D4CC 03E00008 */  jr         $ra
/* 8C480 8003D4D0 E4800004 */   swc1      $f0, 4($a0)

glabel func_8003D4D4_8C484
/* 8C484 8003D4D4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 8C488 8003D4D8 AFB10024 */  sw         $s1, 0x24($sp)
/* 8C48C 8003D4DC 00808821 */  addu       $s1, $a0, $zero
/* 8C490 8003D4E0 AFBF0038 */  sw         $ra, 0x38($sp)
/* 8C494 8003D4E4 AFB50034 */  sw         $s5, 0x34($sp)
/* 8C498 8003D4E8 AFB40030 */  sw         $s4, 0x30($sp)
/* 8C49C 8003D4EC AFB3002C */  sw         $s3, 0x2c($sp)
/* 8C4A0 8003D4F0 AFB20028 */  sw         $s2, 0x28($sp)
/* 8C4A4 8003D4F4 AFB00020 */  sw         $s0, 0x20($sp)
/* 8C4A8 8003D4F8 F7BA0058 */  sdc1       $f26, 0x58($sp)
/* 8C4AC 8003D4FC F7B80050 */  sdc1       $f24, 0x50($sp)
/* 8C4B0 8003D500 F7B60048 */  sdc1       $f22, 0x48($sp)
/* 8C4B4 8003D504 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 8C4B8 8003D508 9222002C */  lbu        $v0, 0x2c($s1)
/* 8C4BC 8003D50C 14400083 */  bnez       $v0, .L8003D71C
/* 8C4C0 8003D510 26240034 */   addiu     $a0, $s1, 0x34
/* 8C4C4 8003D514 C6220004 */  lwc1       $f2, 4($s1)
/* 8C4C8 8003D518 3C014000 */  lui        $at, 0x4000
/* 8C4CC 8003D51C 44812000 */  mtc1       $at, $f4
/* 8C4D0 8003D520 00000000 */  nop
/* 8C4D4 8003D524 46041083 */  div.s      $f2, $f2, $f4
/* 8C4D8 8003D528 C6200008 */  lwc1       $f0, 8($s1)
/* 8C4DC 8003D52C 46040003 */  div.s      $f0, $f0, $f4
/* 8C4E0 8003D530 4600110D */  trunc.w.s  $f4, $f2
/* 8C4E4 8003D534 E6240038 */  swc1       $f4, 0x38($s1)
/* 8C4E8 8003D538 4600008D */  trunc.w.s  $f2, $f0
/* 8C4EC 8003D53C E622003C */  swc1       $f2, 0x3c($s1)
/* 8C4F0 8003D540 0C02A1E2 */  jal        func_800A8788
/* 8C4F4 8003D544 00002821 */   addu      $a1, $zero, $zero
/* 8C4F8 8003D548 C6260004 */  lwc1       $f6, 4($s1)
/* 8C4FC 8003D54C C6280008 */  lwc1       $f8, 8($s1)
/* 8C500 8003D550 C62A000C */  lwc1       $f10, 0xc($s1)
/* 8C504 8003D554 C62C0004 */  lwc1       $f12, 4($s1)
/* 8C508 8003D558 C6200008 */  lwc1       $f0, 8($s1)
/* 8C50C 8003D55C 3C013F80 */  lui        $at, 0x3f80
/* 8C510 8003D560 44811000 */  mtc1       $at, $f2
/* 8C514 8003D564 00000000 */  nop
/* 8C518 8003D568 C624000C */  lwc1       $f4, 0xc($s1)
/* 8C51C 8003D56C 3C013CA3 */  lui        $at, 0x3ca3
/* 8C520 8003D570 3421D70A */  ori        $at, $at, 0xd70a
/* 8C524 8003D574 4481D000 */  mtc1       $at, $f26
/* 8C528 8003D578 00000000 */  nop
/* 8C52C 8003D57C 3C0142B4 */  lui        $at, 0x42b4
/* 8C530 8003D580 4481B000 */  mtc1       $at, $f22
/* 8C534 8003D584 00000000 */  nop
/* 8C538 8003D588 46020000 */  add.s      $f0, $f0, $f2
/* 8C53C 8003D58C 3C018015 */  lui        $at, %hi(D_8014A054)
/* 8C540 8003D590 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 8C544 8003D594 3C018015 */  lui        $at, %hi(D_8014A050)
/* 8C548 8003D598 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 8C54C 8003D59C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 8C550 8003D5A0 E42AD1A8 */  swc1       $f10, %lo(D_8016D1A8)($at)
/* 8C554 8003D5A4 3C018017 */  lui        $at, %hi(D_8016E568)
/* 8C558 8003D5A8 E42CE568 */  swc1       $f12, %lo(D_8016E568)($at)
/* 8C55C 8003D5AC 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 8C560 8003D5B0 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 8C564 8003D5B4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 8C568 8003D5B8 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* 8C56C 8003D5BC 82220001 */  lb         $v0, 1($s1)
/* 8C570 8003D5C0 E7BA0010 */  swc1       $f26, 0x10($sp)
/* 8C574 8003D5C4 C6200004 */  lwc1       $f0, 4($s1)
/* 8C578 8003D5C8 E7A00014 */  swc1       $f0, 0x14($sp)
/* 8C57C 8003D5CC 44820000 */  mtc1       $v0, $f0
/* 8C580 8003D5D0 00000000 */  nop
/* 8C584 8003D5D4 46800020 */  cvt.s.w    $f0, $f0
/* 8C588 8003D5D8 46160002 */  mul.s      $f0, $f0, $f22
/* 8C58C 8003D5DC C6220008 */  lwc1       $f2, 8($s1)
/* 8C590 8003D5E0 4480A000 */  mtc1       $zero, $f20
/* 8C594 8003D5E4 00000000 */  nop
/* 8C598 8003D5E8 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8C59C 8003D5EC 44060000 */  mfc1       $a2, $f0
/* 8C5A0 8003D5F0 00000000 */  nop
/* 8C5A4 8003D5F4 C620000C */  lwc1       $f0, 0xc($s1)
/* 8C5A8 8003D5F8 26300058 */  addiu      $s0, $s1, 0x58
/* 8C5AC 8003D5FC 4405A000 */  mfc1       $a1, $f20
/* 8C5B0 8003D600 00000000 */  nop
/* 8C5B4 8003D604 4407A000 */  mfc1       $a3, $f20
/* 8C5B8 8003D608 00000000 */  nop
/* 8C5BC 8003D60C 02002021 */  addu       $a0, $s0, $zero
/* 8C5C0 8003D610 0C02FD0E */  jal        func_800BF438
/* 8C5C4 8003D614 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 8C5C8 8003D618 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 8C5CC 8003D61C 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 8C5D0 8003D620 3C03DA38 */  lui        $v1, 0xda38
/* 8C5D4 8003D624 34630003 */  ori        $v1, $v1, 3
/* 8C5D8 8003D628 AC430000 */  sw         $v1, ($v0)
/* 8C5DC 8003D62C AC500004 */  sw         $s0, 4($v0)
/* 8C5E0 8003D630 8E240054 */  lw         $a0, 0x54($s1)
/* 8C5E4 8003D634 24420008 */  addiu      $v0, $v0, 8
/* 8C5E8 8003D638 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 8C5EC 8003D63C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 8C5F0 8003D640 0C027A93 */  jal        func_8009EA4C
/* 8C5F4 8003D644 00000000 */   nop
/* 8C5F8 8003D648 8E240050 */  lw         $a0, 0x50($s1)
/* 8C5FC 8003D64C 8E250054 */  lw         $a1, 0x54($s1)
/* 8C600 8003D650 0C027F77 */  jal        func_8009FDDC
/* 8C604 8003D654 00000000 */   nop
/* 8C608 8003D658 92230000 */  lbu        $v1, ($s1)
/* 8C60C 8003D65C 24020004 */  addiu      $v0, $zero, 4
/* 8C610 8003D660 1462002E */  bne        $v1, $v0, .L8003D71C
/* 8C614 8003D664 0000A021 */   addu      $s4, $zero, $zero
/* 8C618 8003D668 4600B606 */  mov.s      $f24, $f22
/* 8C61C 8003D66C 4600D586 */  mov.s      $f22, $f26
/* 8C620 8003D670 3C15DA38 */  lui        $s5, 0xda38
/* 8C624 8003D674 36B50003 */  ori        $s5, $s5, 3
/* 8C628 8003D678 02209021 */  addu       $s2, $s1, $zero
/* 8C62C 8003D67C 241300A8 */  addiu      $s3, $zero, 0xa8
.L8003D680:
/* 8C630 8003D680 82220001 */  lb         $v0, 1($s1)
/* 8C634 8003D684 E7B60010 */  swc1       $f22, 0x10($sp)
/* 8C638 8003D688 C6200004 */  lwc1       $f0, 4($s1)
/* 8C63C 8003D68C E7A00014 */  swc1       $f0, 0x14($sp)
/* 8C640 8003D690 44820000 */  mtc1       $v0, $f0
/* 8C644 8003D694 00000000 */  nop
/* 8C648 8003D698 46800020 */  cvt.s.w    $f0, $f0
/* 8C64C 8003D69C 46180002 */  mul.s      $f0, $f0, $f24
/* 8C650 8003D6A0 C6220008 */  lwc1       $f2, 8($s1)
/* 8C654 8003D6A4 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8C658 8003D6A8 44060000 */  mfc1       $a2, $f0
/* 8C65C 8003D6AC 00000000 */  nop
/* 8C660 8003D6B0 C620000C */  lwc1       $f0, 0xc($s1)
/* 8C664 8003D6B4 02338021 */  addu       $s0, $s1, $s3
/* 8C668 8003D6B8 4405A000 */  mfc1       $a1, $f20
/* 8C66C 8003D6BC 00000000 */  nop
/* 8C670 8003D6C0 4407A000 */  mfc1       $a3, $f20
/* 8C674 8003D6C4 00000000 */  nop
/* 8C678 8003D6C8 02002021 */  addu       $a0, $s0, $zero
/* 8C67C 8003D6CC 0C02FD0E */  jal        func_800BF438
/* 8C680 8003D6D0 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 8C684 8003D6D4 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 8C688 8003D6D8 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 8C68C 8003D6DC AC550000 */  sw         $s5, ($v0)
/* 8C690 8003D6E0 AC500004 */  sw         $s0, 4($v0)
/* 8C694 8003D6E4 8E44009C */  lw         $a0, 0x9c($s2)
/* 8C698 8003D6E8 24420008 */  addiu      $v0, $v0, 8
/* 8C69C 8003D6EC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 8C6A0 8003D6F0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 8C6A4 8003D6F4 0C027A93 */  jal        func_8009EA4C
/* 8C6A8 8003D6F8 26730040 */   addiu     $s3, $s3, 0x40
/* 8C6AC 8003D6FC 8E240098 */  lw         $a0, 0x98($s1)
/* 8C6B0 8003D700 8E45009C */  lw         $a1, 0x9c($s2)
/* 8C6B4 8003D704 26940001 */  addiu      $s4, $s4, 1
/* 8C6B8 8003D708 0C027F77 */  jal        func_8009FDDC
/* 8C6BC 8003D70C 26520004 */   addiu     $s2, $s2, 4
/* 8C6C0 8003D710 2A820002 */  slti       $v0, $s4, 2
/* 8C6C4 8003D714 1440FFDA */  bnez       $v0, .L8003D680
/* 8C6C8 8003D718 00000000 */   nop
.L8003D71C:
/* 8C6CC 8003D71C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 8C6D0 8003D720 8FB50034 */  lw         $s5, 0x34($sp)
/* 8C6D4 8003D724 8FB40030 */  lw         $s4, 0x30($sp)
/* 8C6D8 8003D728 8FB3002C */  lw         $s3, 0x2c($sp)
/* 8C6DC 8003D72C 8FB20028 */  lw         $s2, 0x28($sp)
/* 8C6E0 8003D730 8FB10024 */  lw         $s1, 0x24($sp)
/* 8C6E4 8003D734 8FB00020 */  lw         $s0, 0x20($sp)
/* 8C6E8 8003D738 D7BA0058 */  ldc1       $f26, 0x58($sp)
/* 8C6EC 8003D73C D7B80050 */  ldc1       $f24, 0x50($sp)
/* 8C6F0 8003D740 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 8C6F4 8003D744 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 8C6F8 8003D748 27BD0060 */  addiu      $sp, $sp, 0x60
/* 8C6FC 8003D74C 03E00008 */  jr         $ra
/* 8C700 8003D750 00000000 */   nop
/* 8C704 8003D754 00000000 */  nop
/* 8C708 8003D758 00000000 */  nop
/* 8C70C 8003D75C 00000000 */  nop
