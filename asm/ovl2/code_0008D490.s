.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003E4E0_8D490
/* 8D490 8003E4E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 8D494 8003E4E4 AFB20028 */  sw         $s2, 0x28($sp)
/* 8D498 8003E4E8 93B2005B */  lbu        $s2, 0x5b($sp)
/* 8D49C 8003E4EC AFB3002C */  sw         $s3, 0x2c($sp)
/* 8D4A0 8003E4F0 93B3005F */  lbu        $s3, 0x5f($sp)
/* 8D4A4 8003E4F4 AFB00020 */  sw         $s0, 0x20($sp)
/* 8D4A8 8003E4F8 00C08021 */  addu       $s0, $a2, $zero
/* 8D4AC 8003E4FC AFB10024 */  sw         $s1, 0x24($sp)
/* 8D4B0 8003E500 00E08821 */  addu       $s1, $a3, $zero
/* 8D4B4 8003E504 AFB7003C */  sw         $s7, 0x3c($sp)
/* 8D4B8 8003E508 0080B821 */  addu       $s7, $a0, $zero
/* 8D4BC 8003E50C 24040110 */  addiu      $a0, $zero, 0x110
/* 8D4C0 8003E510 AFB60038 */  sw         $s6, 0x38($sp)
/* 8D4C4 8003E514 00A0B021 */  addu       $s6, $a1, $zero
/* 8D4C8 8003E518 AFBF0040 */  sw         $ra, 0x40($sp)
/* 8D4CC 8003E51C AFB50034 */  sw         $s5, 0x34($sp)
/* 8D4D0 8003E520 0C032663 */  jal        func_800C998C
/* 8D4D4 8003E524 AFB40030 */   sw        $s4, 0x30($sp)
/* 8D4D8 8003E528 0040A021 */  addu       $s4, $v0, $zero
/* 8D4DC 8003E52C 02802021 */  addu       $a0, $s4, $zero
/* 8D4E0 8003E530 0C030134 */  jal        bzero
/* 8D4E4 8003E534 24050110 */   addiu     $a1, $zero, 0x110
/* 8D4E8 8003E538 02802021 */  addu       $a0, $s4, $zero
/* 8D4EC 8003E53C 00002821 */  addu       $a1, $zero, $zero
/* 8D4F0 8003E540 00118E00 */  sll        $s1, $s1, 0x18
/* 8D4F4 8003E544 00113603 */  sra        $a2, $s1, 0x18
/* 8D4F8 8003E548 24020096 */  addiu      $v0, $zero, 0x96
/* 8D4FC 8003E54C 00108400 */  sll        $s0, $s0, 0x10
/* 8D500 8003E550 00108403 */  sra        $s0, $s0, 0x10
/* 8D504 8003E554 AFA20010 */  sw         $v0, 0x10($sp)
/* 8D508 8003E558 AFB00014 */  sw         $s0, 0x14($sp)
/* 8D50C 8003E55C 02403821 */  addu       $a3, $s2, $zero
/* 8D510 8003E560 0C00C428 */  jal        func_800310A0_80050
/* 8D514 8003E564 AFB30018 */   sw        $s3, 0x18($sp)
/* 8D518 8003E568 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 8D51C 8003E56C 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 8D520 8003E570 24020004 */  addiu      $v0, $zero, 4
/* 8D524 8003E574 14620002 */  bne        $v1, $v0, .L8003E580
/* 8D528 8003E578 02809821 */   addu      $s3, $s4, $zero
/* 8D52C 8003E57C A2800047 */  sb         $zero, 0x47($s4)
.L8003E580:
/* 8D530 8003E580 86840004 */  lh         $a0, 4($s4)
/* 8D534 8003E584 00002821 */  addu       $a1, $zero, $zero
/* 8D538 8003E588 24060001 */  addiu      $a2, $zero, 1
/* 8D53C 8003E58C 0000A821 */  addu       $s5, $zero, $zero
/* 8D540 8003E590 3C128007 */  lui        $s2, %hi(D_8006ADA0)
/* 8D544 8003E594 2652ADA0 */  addiu      $s2, $s2, %lo(D_8006ADA0)
/* 8D548 8003E598 02808821 */  addu       $s1, $s4, $zero
/* 8D54C 8003E59C A28000F8 */  sb         $zero, 0xf8($s4)
/* 8D550 8003E5A0 0C027DAC */  jal        func_8009F6B0
/* 8D554 8003E5A4 A29600F9 */   sb        $s6, 0xf9($s4)
/* 8D558 8003E5A8 24040071 */  addiu      $a0, $zero, 0x71
/* 8D55C 8003E5AC AE82008C */  sw         $v0, 0x8c($s4)
/* 8D560 8003E5B0 90430066 */  lbu        $v1, 0x66($v0)
/* 8D564 8003E5B4 00002821 */  addu       $a1, $zero, $zero
/* 8D568 8003E5B8 24060001 */  addiu      $a2, $zero, 1
/* 8D56C 8003E5BC 34630015 */  ori        $v1, $v1, 0x15
/* 8D570 8003E5C0 0C027DAC */  jal        func_8009F6B0
/* 8D574 8003E5C4 A0430066 */   sb        $v1, 0x66($v0)
/* 8D578 8003E5C8 8E84008C */  lw         $a0, 0x8c($s4)
/* 8D57C 8003E5CC 3C058008 */  lui        $a1, %hi(D_8007E390)
/* 8D580 8003E5D0 24A5E390 */  addiu      $a1, $a1, %lo(D_8007E390)
/* 8D584 8003E5D4 00403021 */  addu       $a2, $v0, $zero
/* 8D588 8003E5D8 00A03821 */  addu       $a3, $a1, $zero
/* 8D58C 8003E5DC 0C02864D */  jal        func_800A1934
/* 8D590 8003E5E0 AE8600FC */   sw        $a2, 0xfc($s4)
/* 8D594 8003E5E4 24040134 */  addiu      $a0, $zero, 0x134
/* 8D598 8003E5E8 00002821 */  addu       $a1, $zero, $zero
/* 8D59C 8003E5EC 0C027DAC */  jal        func_8009F6B0
/* 8D5A0 8003E5F0 24060001 */   addiu     $a2, $zero, 1
/* 8D5A4 8003E5F4 8E84008C */  lw         $a0, 0x8c($s4)
/* 8D5A8 8003E5F8 3C058008 */  lui        $a1, %hi(D_8007E398)
/* 8D5AC 8003E5FC 24A5E398 */  addiu      $a1, $a1, %lo(D_8007E398)
/* 8D5B0 8003E600 00403021 */  addu       $a2, $v0, $zero
/* 8D5B4 8003E604 3C078008 */  lui        $a3, %hi(D_8007E3A0)
/* 8D5B8 8003E608 24E7E3A0 */  addiu      $a3, $a3, %lo(D_8007E3A0)
/* 8D5BC 8003E60C 0C02864D */  jal        func_800A1934
/* 8D5C0 8003E610 AE860100 */   sw        $a2, 0x100($s4)
/* 8D5C4 8003E614 24040099 */  addiu      $a0, $zero, 0x99
/* 8D5C8 8003E618 00002821 */  addu       $a1, $zero, $zero
/* 8D5CC 8003E61C 0C027DAC */  jal        func_8009F6B0
/* 8D5D0 8003E620 24060001 */   addiu     $a2, $zero, 1
/* 8D5D4 8003E624 AE820104 */  sw         $v0, 0x104($s4)
/* 8D5D8 8003E628 A28000F8 */  sb         $zero, 0xf8($s4)
.L8003E62C:
/* 8D5DC 8003E62C 8E64008C */  lw         $a0, 0x8c($s3)
/* 8D5E0 8003E630 8E450000 */  lw         $a1, ($s2)
/* 8D5E4 8003E634 0C028541 */  jal        func_800A1504
/* 8D5E8 8003E638 26B50001 */   addiu     $s5, $s5, 1
/* 8D5EC 8003E63C 00408021 */  addu       $s0, $v0, $zero
/* 8D5F0 8003E640 0C032663 */  jal        func_800C998C
/* 8D5F4 8003E644 02002021 */   addu      $a0, $s0, $zero
/* 8D5F8 8003E648 AE2200E8 */  sw         $v0, 0xe8($s1)
/* 8D5FC 8003E64C 8E64008C */  lw         $a0, 0x8c($s3)
/* 8D600 8003E650 8E450000 */  lw         $a1, ($s2)
/* 8D604 8003E654 0C028511 */  jal        func_800A1444
/* 8D608 8003E658 26520004 */   addiu     $s2, $s2, 4
/* 8D60C 8003E65C 00402021 */  addu       $a0, $v0, $zero
/* 8D610 8003E660 8E2500E8 */  lw         $a1, 0xe8($s1)
/* 8D614 8003E664 02003021 */  addu       $a2, $s0, $zero
/* 8D618 8003E668 0C03006C */  jal        func_800C01B0
/* 8D61C 8003E66C 26310004 */   addiu     $s1, $s1, 4
/* 8D620 8003E670 2AA20004 */  slti       $v0, $s5, 4
/* 8D624 8003E674 1440FFED */  bnez       $v0, .L8003E62C
/* 8D628 8003E678 24100001 */   addiu     $s0, $zero, 1
/* 8D62C 8003E67C 92620000 */  lbu        $v0, ($s3)
/* 8D630 8003E680 3C03803B */  lui        $v1, %hi(D_803A8B84)
/* 8D634 8003E684 8C638B84 */  lw         $v1, %lo(D_803A8B84)($v1)
/* 8D638 8003E688 86670004 */  lh         $a3, 4($s3)
/* 8D63C 8003E68C 00021100 */  sll        $v0, $v0, 4
/* 8D640 8003E690 00621821 */  addu       $v1, $v1, $v0
/* 8D644 8003E694 AE630040 */  sw         $v1, 0x40($s3)
/* 8D648 8003E698 84620004 */  lh         $v0, 4($v1)
/* 8D64C 8003E69C AFB00014 */  sw         $s0, 0x14($sp)
/* 8D650 8003E6A0 AFA20010 */  sw         $v0, 0x10($sp)
/* 8D654 8003E6A4 8E66008C */  lw         $a2, 0x8c($s3)
/* 8D658 8003E6A8 26640090 */  addiu      $a0, $s3, 0x90
/* 8D65C 8003E6AC 0C027D66 */  jal        func_8009F598
/* 8D660 8003E6B0 26650094 */   addiu     $a1, $s3, 0x94
/* 8D664 8003E6B4 26840108 */  addiu      $a0, $s4, 0x108
/* 8D668 8003E6B8 24020004 */  addiu      $v0, $zero, 4
/* 8D66C 8003E6BC AFA20010 */  sw         $v0, 0x10($sp)
/* 8D670 8003E6C0 AFB00014 */  sw         $s0, 0x14($sp)
/* 8D674 8003E6C4 8E860104 */  lw         $a2, 0x104($s4)
/* 8D678 8003E6C8 2685010C */  addiu      $a1, $s4, 0x10c
/* 8D67C 8003E6CC 0C027D66 */  jal        func_8009F598
/* 8D680 8003E6D0 24070099 */   addiu     $a3, $zero, 0x99
/* 8D684 8003E6D4 02802021 */  addu       $a0, $s4, $zero
/* 8D688 8003E6D8 0C00F9F3 */  jal        func_8003E7CC_8D77C
/* 8D68C 8003E6DC 32E500FF */   andi      $a1, $s7, 0xff
/* 8D690 8003E6E0 02801021 */  addu       $v0, $s4, $zero
/* 8D694 8003E6E4 8FBF0040 */  lw         $ra, 0x40($sp)
/* 8D698 8003E6E8 8FB7003C */  lw         $s7, 0x3c($sp)
/* 8D69C 8003E6EC 8FB60038 */  lw         $s6, 0x38($sp)
/* 8D6A0 8003E6F0 8FB50034 */  lw         $s5, 0x34($sp)
/* 8D6A4 8003E6F4 8FB40030 */  lw         $s4, 0x30($sp)
/* 8D6A8 8003E6F8 8FB3002C */  lw         $s3, 0x2c($sp)
/* 8D6AC 8003E6FC 8FB20028 */  lw         $s2, 0x28($sp)
/* 8D6B0 8003E700 8FB10024 */  lw         $s1, 0x24($sp)
/* 8D6B4 8003E704 8FB00020 */  lw         $s0, 0x20($sp)
/* 8D6B8 8003E708 27BD0048 */  addiu      $sp, $sp, 0x48
/* 8D6BC 8003E70C 03E00008 */  jr         $ra
/* 8D6C0 8003E710 00000000 */   nop

glabel func_8003E714_8D6C4
/* 8D6C4 8003E714 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8D6C8 8003E718 AFB20018 */  sw         $s2, 0x18($sp)
/* 8D6CC 8003E71C 00809021 */  addu       $s2, $a0, $zero
/* 8D6D0 8003E720 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8D6D4 8003E724 AFB10014 */  sw         $s1, 0x14($sp)
/* 8D6D8 8003E728 AFB00010 */  sw         $s0, 0x10($sp)
/* 8D6DC 8003E72C 8E44008C */  lw         $a0, 0x8c($s2)
/* 8D6E0 8003E730 0C027E98 */  jal        func_8009FA60
/* 8D6E4 8003E734 00008821 */   addu      $s1, $zero, $zero
/* 8D6E8 8003E738 8E440090 */  lw         $a0, 0x90($s2)
/* 8D6EC 8003E73C 0C027880 */  jal        func_8009E200
/* 8D6F0 8003E740 02408021 */   addu      $s0, $s2, $zero
/* 8D6F4 8003E744 8E440094 */  lw         $a0, 0x94($s2)
/* 8D6F8 8003E748 0C027BB8 */  jal        func_8009EEE0
/* 8D6FC 8003E74C 00000000 */   nop
/* 8D700 8003E750 8E4400FC */  lw         $a0, 0xfc($s2)
/* 8D704 8003E754 0C027E98 */  jal        func_8009FA60
/* 8D708 8003E758 00000000 */   nop
/* 8D70C 8003E75C 8E440100 */  lw         $a0, 0x100($s2)
/* 8D710 8003E760 0C027E98 */  jal        func_8009FA60
/* 8D714 8003E764 00000000 */   nop
/* 8D718 8003E768 8E440104 */  lw         $a0, 0x104($s2)
/* 8D71C 8003E76C 0C027E98 */  jal        func_8009FA60
/* 8D720 8003E770 00000000 */   nop
/* 8D724 8003E774 8E440108 */  lw         $a0, 0x108($s2)
/* 8D728 8003E778 0C027880 */  jal        func_8009E200
/* 8D72C 8003E77C 00000000 */   nop
/* 8D730 8003E780 8E44010C */  lw         $a0, 0x10c($s2)
/* 8D734 8003E784 0C027BB8 */  jal        func_8009EEE0
/* 8D738 8003E788 00000000 */   nop
.L8003E78C:
/* 8D73C 8003E78C 8E0400E8 */  lw         $a0, 0xe8($s0)
/* 8D740 8003E790 26100004 */  addiu      $s0, $s0, 4
/* 8D744 8003E794 0C0326A1 */  jal        func_800C9A84
/* 8D748 8003E798 26310001 */   addiu     $s1, $s1, 1
/* 8D74C 8003E79C 2A220004 */  slti       $v0, $s1, 4
/* 8D750 8003E7A0 1440FFFA */  bnez       $v0, .L8003E78C
/* 8D754 8003E7A4 00000000 */   nop
/* 8D758 8003E7A8 0C0326A1 */  jal        func_800C9A84
/* 8D75C 8003E7AC 02402021 */   addu      $a0, $s2, $zero
/* 8D760 8003E7B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8D764 8003E7B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 8D768 8003E7B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 8D76C 8003E7BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8D770 8003E7C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8D774 8003E7C4 03E00008 */  jr         $ra
/* 8D778 8003E7C8 00000000 */   nop

glabel func_8003E7CC_8D77C
/* 8D77C 8003E7CC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8D780 8003E7D0 AFB5002C */  sw         $s5, 0x2c($sp)
/* 8D784 8003E7D4 0080A821 */  addu       $s5, $a0, $zero
/* 8D788 8003E7D8 AFB60030 */  sw         $s6, 0x30($sp)
/* 8D78C 8003E7DC 00A0B021 */  addu       $s6, $a1, $zero
/* 8D790 8003E7E0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8D794 8003E7E4 02A08821 */  addu       $s1, $s5, $zero
/* 8D798 8003E7E8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 8D79C 8003E7EC AFB40028 */  sw         $s4, 0x28($sp)
/* 8D7A0 8003E7F0 AFB30024 */  sw         $s3, 0x24($sp)
/* 8D7A4 8003E7F4 AFB20020 */  sw         $s2, 0x20($sp)
/* 8D7A8 8003E7F8 122000C5 */  beqz       $s1, .L8003EB10
/* 8D7AC 8003E7FC AFB00018 */   sw        $s0, 0x18($sp)
/* 8D7B0 8003E800 0000A021 */  addu       $s4, $zero, $zero
/* 8D7B4 8003E804 02209821 */  addu       $s3, $s1, $zero
/* 8D7B8 8003E808 3C128007 */  lui        $s2, %hi(D_8006ADA0)
/* 8D7BC 8003E80C 2652ADA0 */  addiu      $s2, $s2, %lo(D_8006ADA0)
/* 8D7C0 8003E810 32C200FF */  andi       $v0, $s6, 0xff
/* 8D7C4 8003E814 A2360000 */  sb         $s6, ($s1)
/* 8D7C8 8003E818 3C03803B */  lui        $v1, %hi(D_803A8B84)
/* 8D7CC 8003E81C 8C638B84 */  lw         $v1, %lo(D_803A8B84)($v1)
/* 8D7D0 8003E820 C6200008 */  lwc1       $f0, 8($s1)
/* 8D7D4 8003E824 00021100 */  sll        $v0, $v0, 4
/* 8D7D8 8003E828 00621821 */  addu       $v1, $v1, $v0
/* 8D7DC 8003E82C AE230040 */  sw         $v1, 0x40($s1)
/* 8D7E0 8003E830 E6200014 */  swc1       $f0, 0x14($s1)
.L8003E834:
/* 8D7E4 8003E834 8E24008C */  lw         $a0, 0x8c($s1)
/* 8D7E8 8003E838 8E450000 */  lw         $a1, ($s2)
/* 8D7EC 8003E83C 0C028541 */  jal        func_800A1504
/* 8D7F0 8003E840 26940001 */   addiu     $s4, $s4, 1
/* 8D7F4 8003E844 8E24008C */  lw         $a0, 0x8c($s1)
/* 8D7F8 8003E848 8E450000 */  lw         $a1, ($s2)
/* 8D7FC 8003E84C 26520004 */  addiu      $s2, $s2, 4
/* 8D800 8003E850 0C028511 */  jal        func_800A1444
/* 8D804 8003E854 00408021 */   addu      $s0, $v0, $zero
/* 8D808 8003E858 8E6400E8 */  lw         $a0, 0xe8($s3)
/* 8D80C 8003E85C 00402821 */  addu       $a1, $v0, $zero
/* 8D810 8003E860 02003021 */  addu       $a2, $s0, $zero
/* 8D814 8003E864 0C03006C */  jal        func_800C01B0
/* 8D818 8003E868 26730004 */   addiu     $s3, $s3, 4
/* 8D81C 8003E86C 2A820004 */  slti       $v0, $s4, 4
/* 8D820 8003E870 1440FFF0 */  bnez       $v0, .L8003E834
/* 8D824 8003E874 00000000 */   nop
/* 8D828 8003E878 8E240090 */  lw         $a0, 0x90($s1)
/* 8D82C 8003E87C 0C027880 */  jal        func_8009E200
/* 8D830 8003E880 00000000 */   nop
/* 8D834 8003E884 8E240094 */  lw         $a0, 0x94($s1)
/* 8D838 8003E888 0C027BB8 */  jal        func_8009EEE0
/* 8D83C 8003E88C 00000000 */   nop
/* 8D840 8003E890 8E220040 */  lw         $v0, 0x40($s1)
/* 8D844 8003E894 86270004 */  lh         $a3, 4($s1)
/* 8D848 8003E898 84430004 */  lh         $v1, 4($v0)
/* 8D84C 8003E89C 24020001 */  addiu      $v0, $zero, 1
/* 8D850 8003E8A0 AFA20014 */  sw         $v0, 0x14($sp)
/* 8D854 8003E8A4 AFA30010 */  sw         $v1, 0x10($sp)
/* 8D858 8003E8A8 8E26008C */  lw         $a2, 0x8c($s1)
/* 8D85C 8003E8AC 26240090 */  addiu      $a0, $s1, 0x90
/* 8D860 8003E8B0 0C027D66 */  jal        func_8009F598
/* 8D864 8003E8B4 26250094 */   addiu     $a1, $s1, 0x94
/* 8D868 8003E8B8 00161400 */  sll        $v0, $s6, 0x10
/* 8D86C 8003E8BC 00021C03 */  sra        $v1, $v0, 0x10
/* 8D870 8003E8C0 2C62000B */  sltiu      $v0, $v1, 0xb
/* 8D874 8003E8C4 1040008B */  beqz       $v0, .L8003EAF4
/* 8D878 8003E8C8 00031080 */   sll       $v0, $v1, 2
/* 8D87C 8003E8CC 3C018008 */  lui        $at, %hi(D_8007E3B0)
/* 8D880 8003E8D0 00220821 */  addu       $at, $at, $v0
/* 8D884 8003E8D4 8C22E3B0 */  lw         $v0, %lo(D_8007E3B0)($at)
/* 8D888 8003E8D8 00400008 */  jr         $v0
/* 8D88C 8003E8DC 00000000 */   nop
/* 8D890 8003E8E0 86230068 */  lh         $v1, 0x68($s1)
/* 8D894 8003E8E4 2402000C */  addiu      $v0, $zero, 0xc
/* 8D898 8003E8E8 14620017 */  bne        $v1, $v0, .L8003E948
/* 8D89C 8003E8EC 00000000 */   nop
/* 8D8A0 8003E8F0 0C026DD5 */  jal        func_8009B754
/* 8D8A4 8003E8F4 24040012 */   addiu     $a0, $zero, 0x12
/* 8D8A8 8003E8F8 82230001 */  lb         $v1, 1($s1)
/* 8D8AC 8003E8FC C6200008 */  lwc1       $f0, 8($s1)
/* 8D8B0 8003E900 3C014270 */  lui        $at, 0x4270
/* 8D8B4 8003E904 44812000 */  mtc1       $at, $f4
/* 8D8B8 8003E908 00000000 */  nop
/* 8D8BC 8003E90C 00031080 */  sll        $v0, $v1, 2
/* 8D8C0 8003E910 00431021 */  addu       $v0, $v0, $v1
/* 8D8C4 8003E914 00021080 */  sll        $v0, $v0, 2
/* 8D8C8 8003E918 44821000 */  mtc1       $v0, $f2
/* 8D8CC 8003E91C 00000000 */  nop
/* 8D8D0 8003E920 468010A0 */  cvt.s.w    $f2, $f2
/* 8D8D4 8003E924 46020001 */  sub.s      $f0, $f0, $f2
/* 8D8D8 8003E928 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8D8DC 8003E92C AC203E2C */  sw         $zero, %lo(D_803B3E2C)($at)
/* 8D8E0 8003E930 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8D8E4 8003E934 E4243EB0 */  swc1       $f4, %lo(D_803B3EB0)($at)
/* 8D8E8 8003E938 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8D8EC 8003E93C E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8D8F0 8003E940 0C00C965 */  jal        func_80032594_81544
/* 8D8F4 8003E944 00000000 */   nop
.L8003E948:
/* 8D8F8 8003E948 8E22006C */  lw         $v0, 0x6c($s1)
/* 8D8FC 8003E94C 82240002 */  lb         $a0, 2($s1)
/* 8D900 8003E950 44821000 */  mtc1       $v0, $f2
/* 8D904 8003E954 00000000 */  nop
/* 8D908 8003E958 468010A1 */  cvt.d.w    $f2, $f2
/* 8D90C 8003E95C 04430005 */  bgezl      $v0, .L8003E974
/* 8D910 8003E960 46201020 */   cvt.s.d   $f0, $f2
/* 8D914 8003E964 3C018008 */  lui        $at, %hi(D_8007E3E0)
/* 8D918 8003E968 D420E3E0 */  ldc1       $f0, %lo(D_8007E3E0)($at)
/* 8D91C 8003E96C 46201080 */  add.d      $f2, $f2, $f0
/* 8D920 8003E970 46201020 */  cvt.s.d    $f0, $f2
.L8003E974:
/* 8D924 8003E974 46000007 */  neg.s      $f0, $f0
/* 8D928 8003E978 44050000 */  mfc1       $a1, $f0
/* 8D92C 8003E97C 00000000 */  nop
/* 8D930 8003E980 0C00C838 */  jal        func_800320E0_81090
/* 8D934 8003E984 00000000 */   nop
/* 8D938 8003E988 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8D93C 8003E98C 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8D940 8003E990 82A500F9 */  lb         $a1, 0xf9($s5)
/* 8D944 8003E994 0C0E4959 */  jal        func_80392564
/* 8D948 8003E998 24060003 */   addiu     $a2, $zero, 3
/* 8D94C 8003E99C 0800FABE */  j          .L8003EAF8
/* 8D950 8003E9A0 02202021 */   addu      $a0, $s1, $zero
/* 8D954 8003E9A4 86230068 */  lh         $v1, 0x68($s1)
/* 8D958 8003E9A8 2402000C */  addiu      $v0, $zero, 0xc
/* 8D95C 8003E9AC 14620017 */  bne        $v1, $v0, .L8003EA0C
/* 8D960 8003E9B0 00000000 */   nop
/* 8D964 8003E9B4 0C026DD5 */  jal        func_8009B754
/* 8D968 8003E9B8 24040012 */   addiu     $a0, $zero, 0x12
/* 8D96C 8003E9BC 82230001 */  lb         $v1, 1($s1)
/* 8D970 8003E9C0 C6200008 */  lwc1       $f0, 8($s1)
/* 8D974 8003E9C4 3C014270 */  lui        $at, 0x4270
/* 8D978 8003E9C8 44812000 */  mtc1       $at, $f4
/* 8D97C 8003E9CC 00000000 */  nop
/* 8D980 8003E9D0 00031080 */  sll        $v0, $v1, 2
/* 8D984 8003E9D4 00431021 */  addu       $v0, $v0, $v1
/* 8D988 8003E9D8 00021080 */  sll        $v0, $v0, 2
/* 8D98C 8003E9DC 44821000 */  mtc1       $v0, $f2
/* 8D990 8003E9E0 00000000 */  nop
/* 8D994 8003E9E4 468010A0 */  cvt.s.w    $f2, $f2
/* 8D998 8003E9E8 46020001 */  sub.s      $f0, $f0, $f2
/* 8D99C 8003E9EC 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 8D9A0 8003E9F0 AC203E2C */  sw         $zero, %lo(D_803B3E2C)($at)
/* 8D9A4 8003E9F4 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 8D9A8 8003E9F8 E4243EB0 */  swc1       $f4, %lo(D_803B3EB0)($at)
/* 8D9AC 8003E9FC 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 8D9B0 8003EA00 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 8D9B4 8003EA04 0C00C965 */  jal        func_80032594_81544
/* 8D9B8 8003EA08 00000000 */   nop
.L8003EA0C:
/* 8D9BC 8003EA0C 8E22006C */  lw         $v0, 0x6c($s1)
/* 8D9C0 8003EA10 82240002 */  lb         $a0, 2($s1)
/* 8D9C4 8003EA14 44821000 */  mtc1       $v0, $f2
/* 8D9C8 8003EA18 00000000 */  nop
/* 8D9CC 8003EA1C 468010A1 */  cvt.d.w    $f2, $f2
/* 8D9D0 8003EA20 04430005 */  bgezl      $v0, .L8003EA38
/* 8D9D4 8003EA24 46201020 */   cvt.s.d   $f0, $f2
/* 8D9D8 8003EA28 3C018008 */  lui        $at, %hi(D_8007E3E8)
/* 8D9DC 8003EA2C D420E3E8 */  ldc1       $f0, %lo(D_8007E3E8)($at)
/* 8D9E0 8003EA30 46201080 */  add.d      $f2, $f2, $f0
/* 8D9E4 8003EA34 46201020 */  cvt.s.d    $f0, $f2
.L8003EA38:
/* 8D9E8 8003EA38 46000007 */  neg.s      $f0, $f0
/* 8D9EC 8003EA3C 44050000 */  mfc1       $a1, $f0
/* 8D9F0 8003EA40 00000000 */  nop
/* 8D9F4 8003EA44 0C00C838 */  jal        func_800320E0_81090
/* 8D9F8 8003EA48 00000000 */   nop
/* 8D9FC 8003EA4C 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8DA00 8003EA50 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8DA04 8003EA54 82A500F9 */  lb         $a1, 0xf9($s5)
/* 8DA08 8003EA58 0C0E4959 */  jal        func_80392564
/* 8DA0C 8003EA5C 24060003 */   addiu     $a2, $zero, 3
/* 8DA10 8003EA60 3C06C230 */  lui        $a2, 0xc230
/* 8DA14 8003EA64 02202021 */  addu       $a0, $s1, $zero
/* 8DA18 8003EA68 0C00C7B8 */  jal        func_80031EE0_80E90
/* 8DA1C 8003EA6C 24050014 */   addiu     $a1, $zero, 0x14
/* 8DA20 8003EA70 0800FABE */  j          .L8003EAF8
/* 8DA24 8003EA74 02202021 */   addu      $a0, $s1, $zero
/* 8DA28 8003EA78 0800FAB8 */  j          .L8003EAE0
/* 8DA2C 8003EA7C 02202021 */   addu      $a0, $s1, $zero
/* 8DA30 8003EA80 0800FAB8 */  j          .L8003EAE0
/* 8DA34 8003EA84 02202021 */   addu      $a0, $s1, $zero
/* 8DA38 8003EA88 0800FAB8 */  j          .L8003EAE0
/* 8DA3C 8003EA8C 02202021 */   addu      $a0, $s1, $zero
/* 8DA40 8003EA90 8EA40108 */  lw         $a0, 0x108($s5)
/* 8DA44 8003EA94 0C027ABB */  jal        func_8009EAEC
/* 8DA48 8003EA98 00000000 */   nop
/* 8DA4C 8003EA9C 8EA4010C */  lw         $a0, 0x10c($s5)
/* 8DA50 8003EAA0 0C027D2B */  jal        func_8009F4AC
/* 8DA54 8003EAA4 00000000 */   nop
/* 8DA58 8003EAA8 8E24008C */  lw         $a0, 0x8c($s1)
/* 8DA5C 8003EAAC 8EA60104 */  lw         $a2, 0x104($s5)
/* 8DA60 8003EAB0 3C108008 */  lui        $s0, %hi(D_8007E3A8)
/* 8DA64 8003EAB4 2610E3A8 */  addiu      $s0, $s0, %lo(D_8007E3A8)
/* 8DA68 8003EAB8 02002821 */  addu       $a1, $s0, $zero
/* 8DA6C 8003EABC 0C02864D */  jal        func_800A1934
/* 8DA70 8003EAC0 02003821 */   addu      $a3, $s0, $zero
/* 8DA74 8003EAC4 8E24008C */  lw         $a0, 0x8c($s1)
/* 8DA78 8003EAC8 02002821 */  addu       $a1, $s0, $zero
/* 8DA7C 8003EACC 0C0286A4 */  jal        func_800A1A90
/* 8DA80 8003EAD0 00003021 */   addu      $a2, $zero, $zero
/* 8DA84 8003EAD4 02202021 */  addu       $a0, $s1, $zero
/* 8DA88 8003EAD8 24020001 */  addiu      $v0, $zero, 1
/* 8DA8C 8003EADC A2A200F8 */  sb         $v0, 0xf8($s5)
.L8003EAE0:
/* 8DA90 8003EAE0 0C00C7D3 */  jal        func_80031F4C_80EFC
/* 8DA94 8003EAE4 00000000 */   nop
/* 8DA98 8003EAE8 82240002 */  lb         $a0, 2($s1)
/* 8DA9C 8003EAEC 0C00C7F8 */  jal        func_80031FE0_80F90
/* 8DAA0 8003EAF0 24050005 */   addiu     $a1, $zero, 5
.L8003EAF4:
/* 8DAA4 8003EAF4 02202021 */  addu       $a0, $s1, $zero
.L8003EAF8:
/* 8DAA8 8003EAF8 24050001 */  addiu      $a1, $zero, 1
/* 8DAAC 8003EAFC 00003021 */  addu       $a2, $zero, $zero
/* 8DAB0 8003EB00 0C00C89A */  jal        func_80032268_81218
/* 8DAB4 8003EB04 A2200046 */   sb        $zero, 0x46($s1)
/* 8DAB8 8003EB08 2402FFFF */  addiu      $v0, $zero, -1
/* 8DABC 8003EB0C A6220068 */  sh         $v0, 0x68($s1)
.L8003EB10:
/* 8DAC0 8003EB10 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8DAC4 8003EB14 8FB60030 */  lw         $s6, 0x30($sp)
/* 8DAC8 8003EB18 8FB5002C */  lw         $s5, 0x2c($sp)
/* 8DACC 8003EB1C 8FB40028 */  lw         $s4, 0x28($sp)
/* 8DAD0 8003EB20 8FB30024 */  lw         $s3, 0x24($sp)
/* 8DAD4 8003EB24 8FB20020 */  lw         $s2, 0x20($sp)
/* 8DAD8 8003EB28 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8DADC 8003EB2C 8FB00018 */  lw         $s0, 0x18($sp)
/* 8DAE0 8003EB30 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8DAE4 8003EB34 03E00008 */  jr         $ra
/* 8DAE8 8003EB38 00000000 */   nop

glabel func_8003EB3C_8DAEC
/* 8DAEC 8003EB3C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8DAF0 8003EB40 AFB20028 */  sw         $s2, 0x28($sp)
/* 8DAF4 8003EB44 00809021 */  addu       $s2, $a0, $zero
/* 8DAF8 8003EB48 AFBF0030 */  sw         $ra, 0x30($sp)
/* 8DAFC 8003EB4C AFB3002C */  sw         $s3, 0x2c($sp)
/* 8DB00 8003EB50 AFB10024 */  sw         $s1, 0x24($sp)
/* 8DB04 8003EB54 0C00C492 */  jal        func_80031248_801F8
/* 8DB08 8003EB58 AFB00020 */   sw        $s0, 0x20($sp)
/* 8DB0C 8003EB5C 3C028008 */  lui        $v0, %hi(D_80082FF0)
/* 8DB10 8003EB60 8C422FF0 */  lw         $v0, %lo(D_80082FF0)($v0)
/* 8DB14 8003EB64 10400005 */  beqz       $v0, .L8003EB7C
/* 8DB18 8003EB68 02408821 */   addu      $s1, $s2, $zero
/* 8DB1C 8003EB6C 0C00C4AC */  jal        func_800312B0_80260
/* 8DB20 8003EB70 02402021 */   addu      $a0, $s2, $zero
/* 8DB24 8003EB74 0800FAE1 */  j          .L8003EB84
/* 8DB28 8003EB78 00000000 */   nop
.L8003EB7C:
/* 8DB2C 8003EB7C 0C00FBB0 */  jal        func_8003EEC0_8DE70
/* 8DB30 8003EB80 02402021 */   addu      $a0, $s2, $zero
.L8003EB84:
/* 8DB34 8003EB84 0C00C525 */  jal        func_80031494_80444
/* 8DB38 8003EB88 02202021 */   addu      $a0, $s1, $zero
/* 8DB3C 8003EB8C 92230000 */  lbu        $v1, ($s1)
/* 8DB40 8003EB90 2C62000B */  sltiu      $v0, $v1, 0xb
/* 8DB44 8003EB94 104000C2 */  beqz       $v0, .L8003EEA0
/* 8DB48 8003EB98 00031080 */   sll       $v0, $v1, 2
/* 8DB4C 8003EB9C 3C018008 */  lui        $at, %hi(D_8007E3F0)
/* 8DB50 8003EBA0 00220821 */  addu       $at, $at, $v0
/* 8DB54 8003EBA4 8C22E3F0 */  lw         $v0, %lo(D_8007E3F0)($at)
/* 8DB58 8003EBA8 00400008 */  jr         $v0
/* 8DB5C 8003EBAC 00000000 */   nop
/* 8DB60 8003EBB0 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DB64 8003EBB4 02402021 */   addu      $a0, $s2, $zero
/* 8DB68 8003EBB8 144000B9 */  bnez       $v0, .L8003EEA0
/* 8DB6C 8003EBBC 00000000 */   nop
/* 8DB70 8003EBC0 0C00FC6B */  jal        func_8003F1AC_8E15C
/* 8DB74 8003EBC4 02402021 */   addu      $a0, $s2, $zero
/* 8DB78 8003EBC8 144000B5 */  bnez       $v0, .L8003EEA0
/* 8DB7C 8003EBCC 00000000 */   nop
/* 8DB80 8003EBD0 0C00FC28 */  jal        func_8003F0A0_8E050
/* 8DB84 8003EBD4 02402021 */   addu      $a0, $s2, $zero
/* 8DB88 8003EBD8 0800FBA8 */  j          .L8003EEA0
/* 8DB8C 8003EBDC 00000000 */   nop
/* 8DB90 8003EBE0 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DB94 8003EBE4 02402021 */   addu      $a0, $s2, $zero
/* 8DB98 8003EBE8 144000AD */  bnez       $v0, .L8003EEA0
/* 8DB9C 8003EBEC 00000000 */   nop
/* 8DBA0 8003EBF0 0C00FC6B */  jal        func_8003F1AC_8E15C
/* 8DBA4 8003EBF4 02402021 */   addu      $a0, $s2, $zero
/* 8DBA8 8003EBF8 144000A9 */  bnez       $v0, .L8003EEA0
/* 8DBAC 8003EBFC 00000000 */   nop
/* 8DBB0 8003EC00 92220049 */  lbu        $v0, 0x49($s1)
/* 8DBB4 8003EC04 144000A6 */  bnez       $v0, .L8003EEA0
/* 8DBB8 8003EC08 00000000 */   nop
/* 8DBBC 8003EC0C 8E240090 */  lw         $a0, 0x90($s1)
/* 8DBC0 8003EC10 84820022 */  lh         $v0, 0x22($a0)
/* 8DBC4 8003EC14 144000A2 */  bnez       $v0, .L8003EEA0
/* 8DBC8 8003EC18 24020007 */   addiu     $v0, $zero, 7
/* 8DBCC 8003EC1C 8483001E */  lh         $v1, 0x1e($a0)
/* 8DBD0 8003EC20 1462009F */  bne        $v1, $v0, .L8003EEA0
/* 8DBD4 8003EC24 02402021 */   addu      $a0, $s2, $zero
/* 8DBD8 8003EC28 0800FBA6 */  j          .L8003EE98
/* 8DBDC 8003EC2C 24050003 */   addiu     $a1, $zero, 3
/* 8DBE0 8003EC30 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DBE4 8003EC34 02402021 */   addu      $a0, $s2, $zero
/* 8DBE8 8003EC38 14400099 */  bnez       $v0, .L8003EEA0
/* 8DBEC 8003EC3C 240200FF */   addiu     $v0, $zero, 0xff
/* 8DBF0 8003EC40 8E240090 */  lw         $a0, 0x90($s1)
/* 8DBF4 8003EC44 8483001E */  lh         $v1, 0x1e($a0)
/* 8DBF8 8003EC48 14620095 */  bne        $v1, $v0, .L8003EEA0
/* 8DBFC 8003EC4C 00000000 */   nop
/* 8DC00 8003EC50 9222004A */  lbu        $v0, 0x4a($s1)
/* 8DC04 8003EC54 5040008F */  beql       $v0, $zero, .L8003EE94
/* 8DC08 8003EC58 02402021 */   addu      $a0, $s2, $zero
/* 8DC0C 8003EC5C 0C027ABB */  jal        func_8009EAEC
/* 8DC10 8003EC60 00000000 */   nop
/* 8DC14 8003EC64 8E240094 */  lw         $a0, 0x94($s1)
/* 8DC18 8003EC68 0C027D2B */  jal        func_8009F4AC
/* 8DC1C 8003EC6C 00000000 */   nop
/* 8DC20 8003EC70 0800FBA8 */  j          .L8003EEA0
/* 8DC24 8003EC74 00000000 */   nop
/* 8DC28 8003EC78 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DC2C 8003EC7C 02402021 */   addu      $a0, $s2, $zero
/* 8DC30 8003EC80 14400087 */  bnez       $v0, .L8003EEA0
/* 8DC34 8003EC84 00000000 */   nop
/* 8DC38 8003EC88 0C00FC6B */  jal        func_8003F1AC_8E15C
/* 8DC3C 8003EC8C 02402021 */   addu      $a0, $s2, $zero
/* 8DC40 8003EC90 0800FB96 */  j          .L8003EE58
/* 8DC44 8003EC94 00000000 */   nop
/* 8DC48 8003EC98 8E220090 */  lw         $v0, 0x90($s1)
/* 8DC4C 8003EC9C 84420024 */  lh         $v0, 0x24($v0)
/* 8DC50 8003ECA0 2842000B */  slti       $v0, $v0, 0xb
/* 8DC54 8003ECA4 1040006A */  beqz       $v0, .L8003EE50
/* 8DC58 8003ECA8 00000000 */   nop
/* 8DC5C 8003ECAC 0800FB98 */  j          .L8003EE60
/* 8DC60 8003ECB0 00000000 */   nop
/* 8DC64 8003ECB4 8E220090 */  lw         $v0, 0x90($s1)
/* 8DC68 8003ECB8 84420024 */  lh         $v0, 0x24($v0)
/* 8DC6C 8003ECBC 28420015 */  slti       $v0, $v0, 0x15
/* 8DC70 8003ECC0 10400063 */  beqz       $v0, .L8003EE50
/* 8DC74 8003ECC4 00000000 */   nop
/* 8DC78 8003ECC8 0800FB98 */  j          .L8003EE60
/* 8DC7C 8003ECCC 00000000 */   nop
/* 8DC80 8003ECD0 02202021 */  addu       $a0, $s1, $zero
/* 8DC84 8003ECD4 2405002C */  addiu      $a1, $zero, 0x2c
/* 8DC88 8003ECD8 24060002 */  addiu      $a2, $zero, 2
/* 8DC8C 8003ECDC 2407000E */  addiu      $a3, $zero, 0xe
/* 8DC90 8003ECE0 2402000A */  addiu      $v0, $zero, 0xa
/* 8DC94 8003ECE4 AFA20010 */  sw         $v0, 0x10($sp)
/* 8DC98 8003ECE8 24020015 */  addiu      $v0, $zero, 0x15
/* 8DC9C 8003ECEC AFA20014 */  sw         $v0, 0x14($sp)
/* 8DCA0 8003ECF0 24020016 */  addiu      $v0, $zero, 0x16
/* 8DCA4 8003ECF4 0C00C62F */  jal        func_800318BC_8086C
/* 8DCA8 8003ECF8 AFA20018 */   sw        $v0, 0x18($sp)
/* 8DCAC 8003ECFC 00408021 */  addu       $s0, $v0, $zero
/* 8DCB0 8003ED00 24020001 */  addiu      $v0, $zero, 1
/* 8DCB4 8003ED04 16020005 */  bne        $s0, $v0, .L8003ED1C
/* 8DCB8 8003ED08 24020002 */   addiu     $v0, $zero, 2
/* 8DCBC 8003ED0C 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DCC0 8003ED10 02402021 */   addu      $a0, $s2, $zero
/* 8DCC4 8003ED14 14400062 */  bnez       $v0, .L8003EEA0
/* 8DCC8 8003ED18 24020002 */   addiu     $v0, $zero, 2
.L8003ED1C:
/* 8DCCC 8003ED1C 12020018 */  beq        $s0, $v0, .L8003ED80
/* 8DCD0 8003ED20 00000000 */   nop
/* 8DCD4 8003ED24 0800FB98 */  j          .L8003EE60
/* 8DCD8 8003ED28 00000000 */   nop
/* 8DCDC 8003ED2C 02202021 */  addu       $a0, $s1, $zero
/* 8DCE0 8003ED30 24050029 */  addiu      $a1, $zero, 0x29
/* 8DCE4 8003ED34 24060002 */  addiu      $a2, $zero, 2
/* 8DCE8 8003ED38 2407000E */  addiu      $a3, $zero, 0xe
/* 8DCEC 8003ED3C 2402000A */  addiu      $v0, $zero, 0xa
/* 8DCF0 8003ED40 AFA20010 */  sw         $v0, 0x10($sp)
/* 8DCF4 8003ED44 24020015 */  addiu      $v0, $zero, 0x15
/* 8DCF8 8003ED48 AFA20014 */  sw         $v0, 0x14($sp)
/* 8DCFC 8003ED4C 24020016 */  addiu      $v0, $zero, 0x16
/* 8DD00 8003ED50 0C00C62F */  jal        func_800318BC_8086C
/* 8DD04 8003ED54 AFA20018 */   sw        $v0, 0x18($sp)
/* 8DD08 8003ED58 00408021 */  addu       $s0, $v0, $zero
/* 8DD0C 8003ED5C 24020001 */  addiu      $v0, $zero, 1
/* 8DD10 8003ED60 16020005 */  bne        $s0, $v0, .L8003ED78
/* 8DD14 8003ED64 24020002 */   addiu     $v0, $zero, 2
/* 8DD18 8003ED68 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DD1C 8003ED6C 02402021 */   addu      $a0, $s2, $zero
/* 8DD20 8003ED70 1440004B */  bnez       $v0, .L8003EEA0
/* 8DD24 8003ED74 24020002 */   addiu     $v0, $zero, 2
.L8003ED78:
/* 8DD28 8003ED78 16020039 */  bne        $s0, $v0, .L8003EE60
/* 8DD2C 8003ED7C 00000000 */   nop
.L8003ED80:
/* 8DD30 8003ED80 0C026DD5 */  jal        func_8009B754
/* 8DD34 8003ED84 24040007 */   addiu     $a0, $zero, 7
/* 8DD38 8003ED88 0800FBA8 */  j          .L8003EEA0
/* 8DD3C 8003ED8C 00000000 */   nop
/* 8DD40 8003ED90 02202021 */  addu       $a0, $s1, $zero
/* 8DD44 8003ED94 24050014 */  addiu      $a1, $zero, 0x14
/* 8DD48 8003ED98 3C078008 */  lui        $a3, %hi(D_8008462C)
/* 8DD4C 8003ED9C 8CE7462C */  lw         $a3, %lo(D_8008462C)($a3)
/* 8DD50 8003EDA0 24060001 */  addiu      $a2, $zero, 1
/* 8DD54 8003EDA4 24130004 */  addiu      $s3, $zero, 4
/* 8DD58 8003EDA8 24020015 */  addiu      $v0, $zero, 0x15
/* 8DD5C 8003EDAC AFA20014 */  sw         $v0, 0x14($sp)
/* 8DD60 8003EDB0 24020016 */  addiu      $v0, $zero, 0x16
/* 8DD64 8003EDB4 AFB30010 */  sw         $s3, 0x10($sp)
/* 8DD68 8003EDB8 AFA20018 */  sw         $v0, 0x18($sp)
/* 8DD6C 8003EDBC 38E70006 */  xori       $a3, $a3, 6
/* 8DD70 8003EDC0 2CE70001 */  sltiu      $a3, $a3, 1
/* 8DD74 8003EDC4 00073823 */  negu       $a3, $a3
/* 8DD78 8003EDC8 30E7000D */  andi       $a3, $a3, 0xd
/* 8DD7C 8003EDCC 0C00C62F */  jal        func_800318BC_8086C
/* 8DD80 8003EDD0 34E70005 */   ori       $a3, $a3, 5
/* 8DD84 8003EDD4 00408021 */  addu       $s0, $v0, $zero
/* 8DD88 8003EDD8 24020001 */  addiu      $v0, $zero, 1
/* 8DD8C 8003EDDC 16020005 */  bne        $s0, $v0, .L8003EDF4
/* 8DD90 8003EDE0 24020002 */   addiu     $v0, $zero, 2
/* 8DD94 8003EDE4 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DD98 8003EDE8 02402021 */   addu      $a0, $s2, $zero
/* 8DD9C 8003EDEC 1440002C */  bnez       $v0, .L8003EEA0
/* 8DDA0 8003EDF0 24020002 */   addiu     $v0, $zero, 2
.L8003EDF4:
/* 8DDA4 8003EDF4 1602001A */  bne        $s0, $v0, .L8003EE60
/* 8DDA8 8003EDF8 00000000 */   nop
/* 8DDAC 8003EDFC 3C028008 */  lui        $v0, %hi(D_8008462C)
/* 8DDB0 8003EE00 8C42462C */  lw         $v0, %lo(D_8008462C)($v0)
/* 8DDB4 8003EE04 14530016 */  bne        $v0, $s3, .L8003EE60
/* 8DDB8 8003EE08 2402FFFF */   addiu     $v0, $zero, -1
/* 8DDBC 8003EE0C 82230001 */  lb         $v1, 1($s1)
/* 8DDC0 8003EE10 14620002 */  bne        $v1, $v0, .L8003EE1C
/* 8DDC4 8003EE14 24040184 */   addiu     $a0, $zero, 0x184
/* 8DDC8 8003EE18 2404017E */  addiu      $a0, $zero, 0x17e
.L8003EE1C:
/* 8DDCC 8003EE1C 0C00BF2A */  jal        func_8002FCA8_7EC58
/* 8DDD0 8003EE20 00000000 */   nop
/* 8DDD4 8003EE24 3C014316 */  lui        $at, 0x4316
/* 8DDD8 8003EE28 44816000 */  mtc1       $at, $f12
/* 8DDDC 8003EE2C 00000000 */  nop
/* 8DDE0 8003EE30 0C00C8E5 */  jal        func_80032394_81344
/* 8DDE4 8003EE34 00000000 */   nop
/* 8DDE8 8003EE38 0800FBA8 */  j          .L8003EEA0
/* 8DDEC 8003EE3C 00000000 */   nop
/* 8DDF0 8003EE40 02202021 */  addu       $a0, $s1, $zero
/* 8DDF4 8003EE44 24050007 */  addiu      $a1, $zero, 7
/* 8DDF8 8003EE48 0C00C89A */  jal        func_80032268_81218
/* 8DDFC 8003EE4C 24060002 */   addiu     $a2, $zero, 2
.L8003EE50:
/* 8DE00 8003EE50 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DE04 8003EE54 02402021 */   addu      $a0, $s2, $zero
.L8003EE58:
/* 8DE08 8003EE58 14400011 */  bnez       $v0, .L8003EEA0
/* 8DE0C 8003EE5C 00000000 */   nop
.L8003EE60:
/* 8DE10 8003EE60 0C00FC1A */  jal        func_8003F068_8E018
/* 8DE14 8003EE64 02402021 */   addu      $a0, $s2, $zero
/* 8DE18 8003EE68 0800FBA8 */  j          .L8003EEA0
/* 8DE1C 8003EE6C 00000000 */   nop
/* 8DE20 8003EE70 0C00FC39 */  jal        func_8003F0E4_8E094
/* 8DE24 8003EE74 02402021 */   addu      $a0, $s2, $zero
/* 8DE28 8003EE78 14400009 */  bnez       $v0, .L8003EEA0
/* 8DE2C 8003EE7C 00000000 */   nop
/* 8DE30 8003EE80 8E220090 */  lw         $v0, 0x90($s1)
/* 8DE34 8003EE84 8443001E */  lh         $v1, 0x1e($v0)
/* 8DE38 8003EE88 24020015 */  addiu      $v0, $zero, 0x15
/* 8DE3C 8003EE8C 14620004 */  bne        $v1, $v0, .L8003EEA0
/* 8DE40 8003EE90 02402021 */   addu      $a0, $s2, $zero
.L8003EE94:
/* 8DE44 8003EE94 00002821 */  addu       $a1, $zero, $zero
.L8003EE98:
/* 8DE48 8003EE98 0C00F9F3 */  jal        func_8003E7CC_8D77C
/* 8DE4C 8003EE9C 00000000 */   nop
.L8003EEA0:
/* 8DE50 8003EEA0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8DE54 8003EEA4 8FB3002C */  lw         $s3, 0x2c($sp)
/* 8DE58 8003EEA8 8FB20028 */  lw         $s2, 0x28($sp)
/* 8DE5C 8003EEAC 8FB10024 */  lw         $s1, 0x24($sp)
/* 8DE60 8003EEB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 8DE64 8003EEB4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8DE68 8003EEB8 03E00008 */  jr         $ra
/* 8DE6C 8003EEBC 00000000 */   nop

glabel func_8003EEC0_8DE70
/* 8DE70 8003EEC0 3C028008 */  lui        $v0, %hi(D_80084614)
/* 8DE74 8003EEC4 8C424614 */  lw         $v0, %lo(D_80084614)($v0)
/* 8DE78 8003EEC8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8DE7C 8003EECC AFB00020 */  sw         $s0, 0x20($sp)
/* 8DE80 8003EED0 00808021 */  addu       $s0, $a0, $zero
/* 8DE84 8003EED4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 8DE88 8003EED8 AFB10024 */  sw         $s1, 0x24($sp)
/* 8DE8C 8003EEDC F7B40030 */  sdc1       $f20, 0x30($sp)
/* 8DE90 8003EEE0 C6020008 */  lwc1       $f2, 8($s0)
/* 8DE94 8003EEE4 C4400008 */  lwc1       $f0, 8($v0)
/* 8DE98 8003EEE8 46001501 */  sub.s      $f20, $f2, $f0
/* 8DE9C 8003EEEC 44800000 */  mtc1       $zero, $f0
/* 8DEA0 8003EEF0 00000000 */  nop
/* 8DEA4 8003EEF4 4614003C */  c.lt.s     $f0, $f20
/* 8DEA8 8003EEF8 00000000 */  nop
/* 8DEAC 8003EEFC 00000000 */  nop
/* 8DEB0 8003EF00 45010002 */  bc1t       .L8003EF0C
/* 8DEB4 8003EF04 02008821 */   addu      $s1, $s0, $zero
/* 8DEB8 8003EF08 4600A507 */  neg.s      $f20, $f20
.L8003EF0C:
/* 8DEBC 8003EF0C 860200DE */  lh         $v0, 0xde($s0)
/* 8DEC0 8003EF10 10400004 */  beqz       $v0, .L8003EF24
/* 8DEC4 8003EF14 00401821 */   addu      $v1, $v0, $zero
/* 8DEC8 8003EF18 2462FFFF */  addiu      $v0, $v1, -1
/* 8DECC 8003EF1C 0800FC13 */  j          .L8003F04C
/* 8DED0 8003EF20 A60200DE */   sh        $v0, 0xde($s0)
.L8003EF24:
/* 8DED4 8003EF24 860200DC */  lh         $v0, 0xdc($s0)
/* 8DED8 8003EF28 10400003 */  beqz       $v0, .L8003EF38
/* 8DEDC 8003EF2C 00401821 */   addu      $v1, $v0, $zero
/* 8DEE0 8003EF30 2462FFFF */  addiu      $v0, $v1, -1
/* 8DEE4 8003EF34 A60200DC */  sh         $v0, 0xdc($s0)
.L8003EF38:
/* 8DEE8 8003EF38 0C02591A */  jal        func_80096468
/* 8DEEC 8003EF3C 24040064 */   addiu     $a0, $zero, 0x64
/* 8DEF0 8003EF40 3C038008 */  lui        $v1, %hi(D_80084614)
/* 8DEF4 8003EF44 8C634614 */  lw         $v1, %lo(D_80084614)($v1)
/* 8DEF8 8003EF48 82040001 */  lb         $a0, 1($s0)
/* 8DEFC 8003EF4C 80630001 */  lb         $v1, 1($v1)
/* 8DF00 8003EF50 14830012 */  bne        $a0, $v1, .L8003EF9C
/* 8DF04 8003EF54 3045FFFF */   andi      $a1, $v0, 0xffff
/* 8DF08 8003EF58 3C0142C8 */  lui        $at, 0x42c8
/* 8DF0C 8003EF5C 44810000 */  mtc1       $at, $f0
/* 8DF10 8003EF60 00000000 */  nop
/* 8DF14 8003EF64 4614003C */  c.lt.s     $f0, $f20
/* 8DF18 8003EF68 00000000 */  nop
/* 8DF1C 8003EF6C 00000000 */  nop
/* 8DF20 8003EF70 45010033 */  bc1t       .L8003F040
/* 8DF24 8003EF74 24020001 */   addiu     $v0, $zero, 1
/* 8DF28 8003EF78 3C014270 */  lui        $at, 0x4270
/* 8DF2C 8003EF7C 44810000 */  mtc1       $at, $f0
/* 8DF30 8003EF80 00000000 */  nop
/* 8DF34 8003EF84 4600A03C */  c.lt.s     $f20, $f0
/* 8DF38 8003EF88 00000000 */  nop
/* 8DF3C 8003EF8C 4500002F */  bc1f       .L8003F04C
/* 8DF40 8003EF90 00000000 */   nop
/* 8DF44 8003EF94 0800FC13 */  j          .L8003F04C
/* 8DF48 8003EF98 A202004A */   sb        $v0, 0x4a($s0)
.L8003EF9C:
/* 8DF4C 8003EF9C 3C0142C8 */  lui        $at, 0x42c8
/* 8DF50 8003EFA0 44810000 */  mtc1       $at, $f0
/* 8DF54 8003EFA4 00000000 */  nop
/* 8DF58 8003EFA8 4614003C */  c.lt.s     $f0, $f20
/* 8DF5C 8003EFAC 00000000 */  nop
/* 8DF60 8003EFB0 00000000 */  nop
/* 8DF64 8003EFB4 45010022 */  bc1t       .L8003F040
/* 8DF68 8003EFB8 24020001 */   addiu     $v0, $zero, 1
/* 8DF6C 8003EFBC 3C014270 */  lui        $at, 0x4270
/* 8DF70 8003EFC0 44810000 */  mtc1       $at, $f0
/* 8DF74 8003EFC4 00000000 */  nop
/* 8DF78 8003EFC8 4614003C */  c.lt.s     $f0, $f20
/* 8DF7C 8003EFCC 00000000 */  nop
/* 8DF80 8003EFD0 00000000 */  nop
/* 8DF84 8003EFD4 4500000B */  bc1f       .L8003F004
/* 8DF88 8003EFD8 24030001 */   addiu     $v1, $zero, 1
/* 8DF8C 8003EFDC 28A2003C */  slti       $v0, $a1, 0x3c
/* 8DF90 8003EFE0 10400003 */  beqz       $v0, .L8003EFF0
/* 8DF94 8003EFE4 A2030049 */   sb        $v1, 0x49($s0)
/* 8DF98 8003EFE8 0800FC13 */  j          .L8003F04C
/* 8DF9C 8003EFEC A2030051 */   sb        $v1, 0x51($s0)
.L8003EFF0:
/* 8DFA0 8003EFF0 28A2005A */  slti       $v0, $a1, 0x5a
/* 8DFA4 8003EFF4 54400015 */  bnezl      $v0, .L8003F04C
/* 8DFA8 8003EFF8 A2030052 */   sb        $v1, 0x52($s0)
/* 8DFAC 8003EFFC 0800FC13 */  j          .L8003F04C
/* 8DFB0 8003F000 00000000 */   nop
.L8003F004:
/* 8DFB4 8003F004 3C0141A0 */  lui        $at, 0x41a0
/* 8DFB8 8003F008 44810000 */  mtc1       $at, $f0
/* 8DFBC 8003F00C 00000000 */  nop
/* 8DFC0 8003F010 4614003C */  c.lt.s     $f0, $f20
/* 8DFC4 8003F014 00000000 */  nop
/* 8DFC8 8003F018 00000000 */  nop
/* 8DFCC 8003F01C 4500000B */  bc1f       .L8003F04C
/* 8DFD0 8003F020 28A2003C */   slti      $v0, $a1, 0x3c
/* 8DFD4 8003F024 10400003 */  beqz       $v0, .L8003F034
/* 8DFD8 8003F028 24020001 */   addiu     $v0, $zero, 1
/* 8DFDC 8003F02C 0800FC13 */  j          .L8003F04C
/* 8DFE0 8003F030 A2020052 */   sb        $v0, 0x52($s0)
.L8003F034:
/* 8DFE4 8003F034 28A2005A */  slti       $v0, $a1, 0x5a
/* 8DFE8 8003F038 10400003 */  beqz       $v0, .L8003F048
/* 8DFEC 8003F03C 24020001 */   addiu     $v0, $zero, 1
.L8003F040:
/* 8DFF0 8003F040 0800FC13 */  j          .L8003F04C
/* 8DFF4 8003F044 A2020049 */   sb        $v0, 0x49($s0)
.L8003F048:
/* 8DFF8 8003F048 A2220051 */  sb         $v0, 0x51($s1)
.L8003F04C:
/* 8DFFC 8003F04C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8E000 8003F050 8FB10024 */  lw         $s1, 0x24($sp)
/* 8E004 8003F054 8FB00020 */  lw         $s0, 0x20($sp)
/* 8E008 8003F058 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 8E00C 8003F05C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8E010 8003F060 03E00008 */  jr         $ra
/* 8E014 8003F064 00000000 */   nop

glabel func_8003F068_8E018
/* 8E018 8003F068 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E01C 8003F06C AFBF0010 */  sw         $ra, 0x10($sp)
/* 8E020 8003F070 8C820090 */  lw         $v0, 0x90($a0)
/* 8E024 8003F074 8443001E */  lh         $v1, 0x1e($v0)
/* 8E028 8003F078 240200FF */  addiu      $v0, $zero, 0xff
/* 8E02C 8003F07C 14620004 */  bne        $v1, $v0, .L8003F090
/* 8E030 8003F080 00001021 */   addu      $v0, $zero, $zero
/* 8E034 8003F084 0C00F9F3 */  jal        func_8003E7CC_8D77C
/* 8E038 8003F088 00002821 */   addu      $a1, $zero, $zero
/* 8E03C 8003F08C 24020001 */  addiu      $v0, $zero, 1
.L8003F090:
/* 8E040 8003F090 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8E044 8003F094 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E048 8003F098 03E00008 */  jr         $ra
/* 8E04C 8003F09C 00000000 */   nop

glabel func_8003F0A0_8E050
/* 8E050 8003F0A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E054 8003F0A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8E058 8003F0A8 90820049 */  lbu        $v0, 0x49($a0)
/* 8E05C 8003F0AC 14400006 */  bnez       $v0, .L8003F0C8
/* 8E060 8003F0B0 24050001 */   addiu     $a1, $zero, 1
/* 8E064 8003F0B4 9082004A */  lbu        $v0, 0x4a($a0)
/* 8E068 8003F0B8 14400003 */  bnez       $v0, .L8003F0C8
/* 8E06C 8003F0BC 24050002 */   addiu     $a1, $zero, 2
/* 8E070 8003F0C0 0800FC35 */  j          .L8003F0D4
/* 8E074 8003F0C4 00001021 */   addu      $v0, $zero, $zero
.L8003F0C8:
/* 8E078 8003F0C8 0C00F9F3 */  jal        func_8003E7CC_8D77C
/* 8E07C 8003F0CC 00000000 */   nop
/* 8E080 8003F0D0 24020001 */  addiu      $v0, $zero, 1
.L8003F0D4:
/* 8E084 8003F0D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8E088 8003F0D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E08C 8003F0DC 03E00008 */  jr         $ra
/* 8E090 8003F0E0 00000000 */   nop

glabel func_8003F0E4_8E094
/* 8E094 8003F0E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8E098 8003F0E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8E09C 8003F0EC 84830068 */  lh         $v1, 0x68($a0)
/* 8E0A0 8003F0F0 00803021 */  addu       $a2, $a0, $zero
/* 8E0A4 8003F0F4 2402FFFF */  addiu      $v0, $zero, -1
/* 8E0A8 8003F0F8 10620018 */  beq        $v1, $v0, .L8003F15C
/* 8E0AC 8003F0FC 00602821 */   addu      $a1, $v1, $zero
/* 8E0B0 8003F100 2CA20007 */  sltiu      $v0, $a1, 7
/* 8E0B4 8003F104 1040000F */  beqz       $v0, .L8003F144
/* 8E0B8 8003F108 24020005 */   addiu     $v0, $zero, 5
/* 8E0BC 8003F10C 90830000 */  lbu        $v1, ($a0)
/* 8E0C0 8003F110 1062000C */  beq        $v1, $v0, .L8003F144
/* 8E0C4 8003F114 00000000 */   nop
/* 8E0C8 8003F118 80820001 */  lb         $v0, 1($a0)
/* 8E0CC 8003F11C C4820008 */  lwc1       $f2, 8($a0)
/* 8E0D0 8003F120 00021040 */  sll        $v0, $v0, 1
/* 8E0D4 8003F124 44820000 */  mtc1       $v0, $f0
/* 8E0D8 8003F128 00000000 */  nop
/* 8E0DC 8003F12C 46800020 */  cvt.s.w    $f0, $f0
/* 8E0E0 8003F130 46001080 */  add.s      $f2, $f2, $f0
/* 8E0E4 8003F134 00001021 */  addu       $v0, $zero, $zero
/* 8E0E8 8003F138 E4820008 */  swc1       $f2, 8($a0)
/* 8E0EC 8003F13C 0800FC67 */  j          .L8003F19C
/* 8E0F0 8003F140 E4820014 */   swc1      $f2, 0x14($a0)
.L8003F144:
/* 8E0F4 8003F144 90C20048 */  lbu        $v0, 0x48($a2)
/* 8E0F8 8003F148 10400006 */  beqz       $v0, .L8003F164
/* 8E0FC 8003F14C 2402000F */   addiu     $v0, $zero, 0xf
/* 8E100 8003F150 84C30068 */  lh         $v1, 0x68($a2)
/* 8E104 8003F154 10620005 */  beq        $v1, $v0, .L8003F16C
/* 8E108 8003F158 2862000B */   slti      $v0, $v1, 0xb
.L8003F15C:
/* 8E10C 8003F15C 0800FC67 */  j          .L8003F19C
/* 8E110 8003F160 00001021 */   addu      $v0, $zero, $zero
.L8003F164:
/* 8E114 8003F164 84C30068 */  lh         $v1, 0x68($a2)
/* 8E118 8003F168 2862000B */  slti       $v0, $v1, 0xb
.L8003F16C:
/* 8E11C 8003F16C 14400008 */  bnez       $v0, .L8003F190
/* 8E120 8003F170 24050004 */   addiu     $a1, $zero, 4
/* 8E124 8003F174 2862000D */  slti       $v0, $v1, 0xd
/* 8E128 8003F178 14400005 */  bnez       $v0, .L8003F190
/* 8E12C 8003F17C 24050005 */   addiu     $a1, $zero, 5
/* 8E130 8003F180 2402000E */  addiu      $v0, $zero, 0xe
/* 8E134 8003F184 14620002 */  bne        $v1, $v0, .L8003F190
/* 8E138 8003F188 24050004 */   addiu     $a1, $zero, 4
/* 8E13C 8003F18C 24050005 */  addiu      $a1, $zero, 5
.L8003F190:
/* 8E140 8003F190 0C00F9F3 */  jal        func_8003E7CC_8D77C
/* 8E144 8003F194 00000000 */   nop
/* 8E148 8003F198 24020001 */  addiu      $v0, $zero, 1
.L8003F19C:
/* 8E14C 8003F19C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8E150 8003F1A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8E154 8003F1A4 03E00008 */  jr         $ra
/* 8E158 8003F1A8 00000000 */   nop

glabel func_8003F1AC_8E15C
/* 8E15C 8003F1AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E160 8003F1B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8E164 8003F1B4 00808021 */  addu       $s0, $a0, $zero
/* 8E168 8003F1B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E16C 8003F1BC 860200DC */  lh         $v0, 0xdc($s0)
/* 8E170 8003F1C0 14400028 */  bnez       $v0, .L8003F264
/* 8E174 8003F1C4 00001021 */   addu      $v0, $zero, $zero
/* 8E178 8003F1C8 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 8E17C 8003F1CC 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 8E180 8003F1D0 24020006 */  addiu      $v0, $zero, 6
/* 8E184 8003F1D4 14620012 */  bne        $v1, $v0, .L8003F220
/* 8E188 8003F1D8 00000000 */   nop
/* 8E18C 8003F1DC 92020052 */  lbu        $v0, 0x52($s0)
/* 8E190 8003F1E0 1440001D */  bnez       $v0, .L8003F258
/* 8E194 8003F1E4 24050008 */   addiu     $a1, $zero, 8
/* 8E198 8003F1E8 92020051 */  lbu        $v0, 0x51($s0)
/* 8E19C 8003F1EC 1040001D */  beqz       $v0, .L8003F264
/* 8E1A0 8003F1F0 00001021 */   addu      $v0, $zero, $zero
/* 8E1A4 8003F1F4 92020049 */  lbu        $v0, 0x49($s0)
/* 8E1A8 8003F1F8 10400003 */  beqz       $v0, .L8003F208
/* 8E1AC 8003F1FC 02002021 */   addu      $a0, $s0, $zero
/* 8E1B0 8003F200 0800FC96 */  j          .L8003F258
/* 8E1B4 8003F204 24050006 */   addiu     $a1, $zero, 6
.L8003F208:
/* 8E1B8 8003F208 9202004A */  lbu        $v0, 0x4a($s0)
/* 8E1BC 8003F20C 14400012 */  bnez       $v0, .L8003F258
/* 8E1C0 8003F210 24050007 */   addiu     $a1, $zero, 7
/* 8E1C4 8003F214 02002021 */  addu       $a0, $s0, $zero
/* 8E1C8 8003F218 0800FC96 */  j          .L8003F258
/* 8E1CC 8003F21C 24050006 */   addiu     $a1, $zero, 6
.L8003F220:
/* 8E1D0 8003F220 92020052 */  lbu        $v0, 0x52($s0)
/* 8E1D4 8003F224 10400003 */  beqz       $v0, .L8003F234
/* 8E1D8 8003F228 02002021 */   addu      $a0, $s0, $zero
/* 8E1DC 8003F22C 0800FC96 */  j          .L8003F258
/* 8E1E0 8003F230 24050008 */   addiu     $a1, $zero, 8
.L8003F234:
/* 8E1E4 8003F234 92020051 */  lbu        $v0, 0x51($s0)
/* 8E1E8 8003F238 5040000A */  beql       $v0, $zero, .L8003F264
/* 8E1EC 8003F23C 00001021 */   addu      $v0, $zero, $zero
/* 8E1F0 8003F240 0C02591A */  jal        func_80096468
/* 8E1F4 8003F244 24040002 */   addiu     $a0, $zero, 2
/* 8E1F8 8003F248 02002021 */  addu       $a0, $s0, $zero
/* 8E1FC 8003F24C 24420006 */  addiu      $v0, $v0, 6
/* 8E200 8003F250 00021400 */  sll        $v0, $v0, 0x10
/* 8E204 8003F254 00022C03 */  sra        $a1, $v0, 0x10
.L8003F258:
/* 8E208 8003F258 0C00F9F3 */  jal        func_8003E7CC_8D77C
/* 8E20C 8003F25C 00000000 */   nop
/* 8E210 8003F260 24020001 */  addiu      $v0, $zero, 1
.L8003F264:
/* 8E214 8003F264 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E218 8003F268 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E21C 8003F26C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E220 8003F270 03E00008 */  jr         $ra
/* 8E224 8003F274 00000000 */   nop

glabel func_8003F278_8E228
/* 8E228 8003F278 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E22C 8003F27C AFB00010 */  sw         $s0, 0x10($sp)
/* 8E230 8003F280 00808021 */  addu       $s0, $a0, $zero
/* 8E234 8003F284 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E238 8003F288 92020000 */  lbu        $v0, ($s0)
/* 8E23C 8003F28C 2443FFFF */  addiu      $v1, $v0, -1
/* 8E240 8003F290 2C62000A */  sltiu      $v0, $v1, 0xa
/* 8E244 8003F294 1040002E */  beqz       $v0, .L8003F350
/* 8E248 8003F298 00031080 */   sll       $v0, $v1, 2
/* 8E24C 8003F29C 3C018008 */  lui        $at, %hi(D_8007E420)
/* 8E250 8003F2A0 00220821 */  addu       $at, $at, $v0
/* 8E254 8003F2A4 8C22E420 */  lw         $v0, %lo(D_8007E420)($at)
/* 8E258 8003F2A8 00400008 */  jr         $v0
/* 8E25C 8003F2AC 00000000 */   nop
/* 8E260 8003F2B0 0C00C683 */  jal        func_80031A0C_809BC
/* 8E264 8003F2B4 02002021 */   addu      $a0, $s0, $zero
/* 8E268 8003F2B8 02002021 */  addu       $a0, $s0, $zero
/* 8E26C 8003F2BC 24050051 */  addiu      $a1, $zero, 0x51
/* 8E270 8003F2C0 24060014 */  addiu      $a2, $zero, 0x14
/* 8E274 8003F2C4 0800FCD2 */  j          .L8003F348
/* 8E278 8003F2C8 2407002C */   addiu     $a3, $zero, 0x2c
/* 8E27C 8003F2CC 0C00C683 */  jal        func_80031A0C_809BC
/* 8E280 8003F2D0 02002021 */   addu      $a0, $s0, $zero
/* 8E284 8003F2D4 02002021 */  addu       $a0, $s0, $zero
/* 8E288 8003F2D8 24050051 */  addiu      $a1, $zero, 0x51
/* 8E28C 8003F2DC 24060018 */  addiu      $a2, $zero, 0x18
/* 8E290 8003F2E0 0800FCD2 */  j          .L8003F348
/* 8E294 8003F2E4 24070032 */   addiu     $a3, $zero, 0x32
/* 8E298 8003F2E8 0C00C683 */  jal        func_80031A0C_809BC
/* 8E29C 8003F2EC 02002021 */   addu      $a0, $s0, $zero
/* 8E2A0 8003F2F0 02002021 */  addu       $a0, $s0, $zero
/* 8E2A4 8003F2F4 24050051 */  addiu      $a1, $zero, 0x51
/* 8E2A8 8003F2F8 0800FCD1 */  j          .L8003F344
/* 8E2AC 8003F2FC 2406000D */   addiu     $a2, $zero, 0xd
/* 8E2B0 8003F300 02002021 */  addu       $a0, $s0, $zero
/* 8E2B4 8003F304 24050051 */  addiu      $a1, $zero, 0x51
/* 8E2B8 8003F308 0800FCD1 */  j          .L8003F344
/* 8E2BC 8003F30C 24060009 */   addiu     $a2, $zero, 9
/* 8E2C0 8003F310 0C00C6AE */  jal        func_80031AB8_80A68
/* 8E2C4 8003F314 02002021 */   addu      $a0, $s0, $zero
/* 8E2C8 8003F318 02002021 */  addu       $a0, $s0, $zero
/* 8E2CC 8003F31C 24050051 */  addiu      $a1, $zero, 0x51
/* 8E2D0 8003F320 0800FCD1 */  j          .L8003F344
/* 8E2D4 8003F324 2406000A */   addiu     $a2, $zero, 0xa
/* 8E2D8 8003F328 02002021 */  addu       $a0, $s0, $zero
/* 8E2DC 8003F32C 24050051 */  addiu      $a1, $zero, 0x51
/* 8E2E0 8003F330 0800FCD1 */  j          .L8003F344
/* 8E2E4 8003F334 2406000B */   addiu     $a2, $zero, 0xb
/* 8E2E8 8003F338 02002021 */  addu       $a0, $s0, $zero
/* 8E2EC 8003F33C 24050051 */  addiu      $a1, $zero, 0x51
/* 8E2F0 8003F340 2406001B */  addiu      $a2, $zero, 0x1b
.L8003F344:
/* 8E2F4 8003F344 2407FFFF */  addiu      $a3, $zero, -1
.L8003F348:
/* 8E2F8 8003F348 0C00C8A8 */  jal        func_800322A0_81250
/* 8E2FC 8003F34C 00000000 */   nop
.L8003F350:
/* 8E300 8003F350 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E304 8003F354 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E308 8003F358 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E30C 8003F35C 03E00008 */  jr         $ra
/* 8E310 8003F360 00000000 */   nop

glabel func_8003F364_8E314
/* 8E314 8003F364 C4820008 */  lwc1       $f2, 8($a0)
/* 8E318 8003F368 3C018008 */  lui        $at, %hi(D_80083A3C)
/* 8E31C 8003F36C C4243A3C */  lwc1       $f4, %lo(D_80083A3C)($at)
/* 8E320 8003F370 46041080 */  add.s      $f2, $f2, $f4
/* 8E324 8003F374 C4800014 */  lwc1       $f0, 0x14($a0)
/* 8E328 8003F378 46040000 */  add.s      $f0, $f0, $f4
/* 8E32C 8003F37C E4820008 */  swc1       $f2, 8($a0)
/* 8E330 8003F380 03E00008 */  jr         $ra
/* 8E334 8003F384 E4800014 */   swc1      $f0, 0x14($a0)

glabel func_8003F388_8E338
/* 8E338 8003F388 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E33C 8003F38C AFB00010 */  sw         $s0, 0x10($sp)
/* 8E340 8003F390 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E344 8003F394 0C00C6DB */  jal        func_80031B6C_80B1C
/* 8E348 8003F398 00808021 */   addu      $s0, $a0, $zero
/* 8E34C 8003F39C 0C00C741 */  jal        func_80031D04_80CB4
/* 8E350 8003F3A0 02002021 */   addu      $a0, $s0, $zero
/* 8E354 8003F3A4 920200F8 */  lbu        $v0, 0xf8($s0)
/* 8E358 8003F3A8 10400012 */  beqz       $v0, .L8003F3F4
/* 8E35C 8003F3AC 240200FF */   addiu     $v0, $zero, 0xff
/* 8E360 8003F3B0 8E040108 */  lw         $a0, 0x108($s0)
/* 8E364 8003F3B4 8483001E */  lh         $v1, 0x1e($a0)
/* 8E368 8003F3B8 14620009 */  bne        $v1, $v0, .L8003F3E0
/* 8E36C 8003F3BC 00000000 */   nop
/* 8E370 8003F3C0 8E04008C */  lw         $a0, 0x8c($s0)
/* 8E374 8003F3C4 8E060104 */  lw         $a2, 0x104($s0)
/* 8E378 8003F3C8 3C058008 */  lui        $a1, %hi(D_8007E3A8)
/* 8E37C 8003F3CC 24A5E3A8 */  addiu      $a1, $a1, %lo(D_8007E3A8)
/* 8E380 8003F3D0 0C02864D */  jal        func_800A1934
/* 8E384 8003F3D4 00A03821 */   addu      $a3, $a1, $zero
/* 8E388 8003F3D8 0800FCFD */  j          .L8003F3F4
/* 8E38C 8003F3DC A20000F8 */   sb        $zero, 0xf8($s0)
.L8003F3E0:
/* 8E390 8003F3E0 0C027A93 */  jal        func_8009EA4C
/* 8E394 8003F3E4 00000000 */   nop
/* 8E398 8003F3E8 8E04010C */  lw         $a0, 0x10c($s0)
/* 8E39C 8003F3EC 0C027CED */  jal        func_8009F3B4
/* 8E3A0 8003F3F0 00000000 */   nop
.L8003F3F4:
/* 8E3A4 8003F3F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E3A8 8003F3F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E3AC 8003F3FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E3B0 8003F400 03E00008 */  jr         $ra
/* 8E3B4 8003F404 00000000 */   nop
/* 8E3B8 8003F408 00000000 */  nop
/* 8E3BC 8003F40C 00000000 */  nop
