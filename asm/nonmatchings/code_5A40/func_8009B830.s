.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B830
/* 6430 8009B830 3C028017 */  lui        $v0, %hi(D_8016E590)
/* 6434 8009B834 8C42E590 */  lw         $v0, %lo(D_8016E590)($v0)
/* 6438 8009B838 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 643C 8009B83C AFB40028 */  sw         $s4, 0x28($sp)
/* 6440 8009B840 8FB40040 */  lw         $s4, 0x40($sp)
/* 6444 8009B844 AFB00018 */  sw         $s0, 0x18($sp)
/* 6448 8009B848 00808021 */  addu       $s0, $a0, $zero
/* 644C 8009B84C AFB1001C */  sw         $s1, 0x1c($sp)
/* 6450 8009B850 00A08821 */  addu       $s1, $a1, $zero
/* 6454 8009B854 AFB20020 */  sw         $s2, 0x20($sp)
/* 6458 8009B858 00C09021 */  addu       $s2, $a2, $zero
/* 645C 8009B85C AFB30024 */  sw         $s3, 0x24($sp)
/* 6460 8009B860 00E09821 */  addu       $s3, $a3, $zero
/* 6464 8009B864 1040000A */  beqz       $v0, .L8009B890
/* 6468 8009B868 AFBF002C */   sw        $ra, 0x2c($sp)
/* 646C 8009B86C 3C028015 */  lui        $v0, %hi(D_80149BAC)
/* 6470 8009B870 8C429BAC */  lw         $v0, %lo(D_80149BAC)($v0)
/* 6474 8009B874 1040001F */  beqz       $v0, .L8009B8F4
/* 6478 8009B878 00001021 */   addu      $v0, $zero, $zero
/* 647C 8009B87C 3C028017 */  lui        $v0, %hi(D_8016E56C)
/* 6480 8009B880 8C42E56C */  lw         $v0, %lo(D_8016E56C)($v0)
/* 6484 8009B884 0202102B */  sltu       $v0, $s0, $v0
/* 6488 8009B888 14400003 */  bnez       $v0, .L8009B898
/* 648C 8009B88C 00000000 */   nop
.L8009B890:
/* 6490 8009B890 08026E3D */  j          .L8009B8F4
/* 6494 8009B894 00001021 */   addu      $v0, $zero, $zero
.L8009B898:
/* 6498 8009B898 3C038015 */  lui        $v1, %hi(D_80149F10)
/* 649C 8009B89C 8C639F10 */  lw         $v1, %lo(D_80149F10)($v1)
/* 64A0 8009B8A0 0203102B */  sltu       $v0, $s0, $v1
/* 64A4 8009B8A4 14400003 */  bnez       $v0, .L8009B8B4
/* 64A8 8009B8A8 00001021 */   addu      $v0, $zero, $zero
/* 64AC 8009B8AC 02038023 */  subu       $s0, $s0, $v1
/* 64B0 8009B8B0 24020001 */  addiu      $v0, $zero, 1
.L8009B8B4:
/* 64B4 8009B8B4 14400005 */  bnez       $v0, .L8009B8CC
/* 64B8 8009B8B8 00000000 */   nop
/* 64BC 8009B8BC 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 64C0 8009B8C0 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 64C4 8009B8C4 08026E35 */  j          .L8009B8D4
/* 64C8 8009B8C8 00000000 */   nop
.L8009B8CC:
/* 64CC 8009B8CC 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 64D0 8009B8D0 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
.L8009B8D4:
/* 64D4 8009B8D4 0C02BB59 */  jal        func_800AED64
/* 64D8 8009B8D8 00000000 */   nop
/* 64DC 8009B8DC AFB40010 */  sw         $s4, 0x10($sp)
/* 64E0 8009B8E0 02002021 */  addu       $a0, $s0, $zero
/* 64E4 8009B8E4 02202821 */  addu       $a1, $s1, $zero
/* 64E8 8009B8E8 02403021 */  addu       $a2, $s2, $zero
/* 64EC 8009B8EC 0C02B73F */  jal        func_800ADCFC
/* 64F0 8009B8F0 02603821 */   addu      $a3, $s3, $zero
.L8009B8F4:
/* 64F4 8009B8F4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 64F8 8009B8F8 8FB40028 */  lw         $s4, 0x28($sp)
/* 64FC 8009B8FC 8FB30024 */  lw         $s3, 0x24($sp)
/* 6500 8009B900 8FB20020 */  lw         $s2, 0x20($sp)
/* 6504 8009B904 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6508 8009B908 8FB00018 */  lw         $s0, 0x18($sp)
/* 650C 8009B90C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6510 8009B910 03E00008 */  jr         $ra
/* 6514 8009B914 00000000 */   nop
