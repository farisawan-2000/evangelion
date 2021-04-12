.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_800286A0_6C980
/* 6C980 800286A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6C984 800286A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 6C988 800286A8 00808021 */  addu       $s0, $a0, $zero
/* 6C98C 800286AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C990 800286B0 9603001C */  lhu        $v1, 0x1c($s0)
/* 6C994 800286B4 24020001 */  addiu      $v0, $zero, 1
/* 6C998 800286B8 10620018 */  beq        $v1, $v0, .L8002871C
/* 6C99C 800286BC 28620002 */   slti      $v0, $v1, 2
/* 6C9A0 800286C0 50400005 */  beql       $v0, $zero, .L800286D8
/* 6C9A4 800286C4 3402FFFF */   ori       $v0, $zero, 0xffff
/* 6C9A8 800286C8 10600007 */  beqz       $v1, .L800286E8
/* 6C9AC 800286CC 00000000 */   nop
/* 6C9B0 800286D0 0800A1D8 */  j          .L80028760
/* 6C9B4 800286D4 00000000 */   nop
.L800286D8:
/* 6C9B8 800286D8 1062001B */  beq        $v1, $v0, .L80028748
/* 6C9BC 800286DC 00000000 */   nop
/* 6C9C0 800286E0 0800A1D8 */  j          .L80028760
/* 6C9C4 800286E4 00000000 */   nop
.L800286E8:
/* 6C9C8 800286E8 0C032663 */  jal        func_800C998C
/* 6C9CC 800286EC 240400BC */   addiu     $a0, $zero, 0xbc
/* 6C9D0 800286F0 00402021 */  addu       $a0, $v0, $zero
/* 6C9D4 800286F4 240500BC */  addiu      $a1, $zero, 0xbc
/* 6C9D8 800286F8 0C030134 */  jal        bzero
/* 6C9DC 800286FC AE040014 */   sw        $a0, 0x14($s0)
/* 6C9E0 80028700 8E040014 */  lw         $a0, 0x14($s0)
/* 6C9E4 80028704 0C00A235 */  jal        func_800288D4_6CBB4
/* 6C9E8 80028708 00000000 */   nop
/* 6C9EC 8002870C 00001021 */  addu       $v0, $zero, $zero
/* 6C9F0 80028710 24030001 */  addiu      $v1, $zero, 1
/* 6C9F4 80028714 0800A1D8 */  j          .L80028760
/* 6C9F8 80028718 A603001C */   sh        $v1, 0x1c($s0)
.L8002871C:
/* 6C9FC 8002871C 8E040014 */  lw         $a0, 0x14($s0)
/* 6CA00 80028720 0C00A268 */  jal        func_800289A0_6CC80
/* 6CA04 80028724 00000000 */   nop
/* 6CA08 80028728 5040000D */  beql       $v0, $zero, .L80028760
/* 6CA0C 8002872C 00001021 */   addu      $v0, $zero, $zero
/* 6CA10 80028730 0C02DB14 */  jal        func_800B6C50
/* 6CA14 80028734 00002021 */   addu      $a0, $zero, $zero
/* 6CA18 80028738 3402FFFF */  ori        $v0, $zero, 0xffff
/* 6CA1C 8002873C A602001C */  sh         $v0, 0x1c($s0)
/* 6CA20 80028740 0800A1D8 */  j          .L80028760
/* 6CA24 80028744 00001021 */   addu      $v0, $zero, $zero
.L80028748:
/* 6CA28 80028748 8E040014 */  lw         $a0, 0x14($s0)
/* 6CA2C 8002874C 0C00A251 */  jal        func_80028944_6CC24
/* 6CA30 80028750 00000000 */   nop
/* 6CA34 80028754 0C0326A1 */  jal        func_800C9A84
/* 6CA38 80028758 8E040014 */   lw        $a0, 0x14($s0)
/* 6CA3C 8002875C 24020001 */  addiu      $v0, $zero, 1
.L80028760:
/* 6CA40 80028760 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6CA44 80028764 8FB00010 */  lw         $s0, 0x10($sp)
/* 6CA48 80028768 03E00008 */  jr         $ra
/* 6CA4C 8002876C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80028770_6CA50
/* 6CA50 80028770 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6CA54 80028774 AFB1001C */  sw         $s1, 0x1c($sp)
/* 6CA58 80028778 00808821 */  addu       $s1, $a0, $zero
/* 6CA5C 8002877C AFBF0020 */  sw         $ra, 0x20($sp)
/* 6CA60 80028780 AFB00018 */  sw         $s0, 0x18($sp)
/* 6CA64 80028784 86260086 */  lh         $a2, 0x86($s1)
/* 6CA68 80028788 00002021 */  addu       $a0, $zero, $zero
/* 6CA6C 8002878C 240A021A */  addiu      $t2, $zero, 0x21a
/* 6CA70 80028790 3C072E8B */  lui        $a3, 0x2e8b
/* 6CA74 80028794 34E7A2E9 */  ori        $a3, $a3, 0xa2e9
/* 6CA78 80028798 2409000A */  addiu      $t1, $zero, 0xa
/* 6CA7C 8002879C 24080001 */  addiu      $t0, $zero, 1
/* 6CA80 800287A0 02202821 */  addu       $a1, $s1, $zero
.L800287A4:
/* 6CA84 800287A4 10CA0014 */  beq        $a2, $t2, .L800287F8
/* 6CA88 800287A8 00870018 */   mult      $a0, $a3
/* 6CA8C 800287AC 000417C3 */  sra        $v0, $a0, 0x1f
/* 6CA90 800287B0 00005810 */  mfhi       $t3
/* 6CA94 800287B4 000B1843 */  sra        $v1, $t3, 1
/* 6CA98 800287B8 00621823 */  subu       $v1, $v1, $v0
/* 6CA9C 800287BC 00031040 */  sll        $v0, $v1, 1
/* 6CAA0 800287C0 00431021 */  addu       $v0, $v0, $v1
/* 6CAA4 800287C4 00021080 */  sll        $v0, $v0, 2
/* 6CAA8 800287C8 00431023 */  subu       $v0, $v0, $v1
/* 6CAAC 800287CC 00821023 */  subu       $v0, $a0, $v0
/* 6CAB0 800287D0 14490003 */  bne        $v0, $t1, .L800287E0
/* 6CAB4 800287D4 24C20010 */   addiu     $v0, $a2, 0x10
/* 6CAB8 800287D8 0800A1FA */  j          .L800287E8
/* 6CABC 800287DC A4A80000 */   sh        $t0, ($a1)
.L800287E0:
/* 6CAC0 800287E0 A4A20000 */  sh         $v0, ($a1)
/* 6CAC4 800287E4 24C60001 */  addiu      $a2, $a2, 1
.L800287E8:
/* 6CAC8 800287E8 24840001 */  addiu      $a0, $a0, 1
/* 6CACC 800287EC 28820042 */  slti       $v0, $a0, 0x42
/* 6CAD0 800287F0 1440FFEC */  bnez       $v0, .L800287A4
/* 6CAD4 800287F4 24A50002 */   addiu     $a1, $a1, 2
.L800287F8:
/* 6CAD8 800287F8 00041040 */  sll        $v0, $a0, 1
/* 6CADC 800287FC 00511021 */  addu       $v0, $v0, $s1
/* 6CAE0 80028800 A4400000 */  sh         $zero, ($v0)
/* 6CAE4 80028804 822500B4 */  lb         $a1, 0xb4($s1)
/* 6CAE8 80028808 0C029CD5 */  jal        func_800A7354
/* 6CAEC 8002880C 02202021 */   addu      $a0, $s1, $zero
/* 6CAF0 80028810 822500B5 */  lb         $a1, 0xb5($s1)
/* 6CAF4 80028814 02202021 */  addu       $a0, $s1, $zero
/* 6CAF8 80028818 0C029CFD */  jal        func_800A73F4
/* 6CAFC 8002881C A6220088 */   sh        $v0, 0x88($s1)
/* 6CB00 80028820 822500B4 */  lb         $a1, 0xb4($s1)
/* 6CB04 80028824 822600B5 */  lb         $a2, 0xb5($s1)
/* 6CB08 80028828 922700B7 */  lbu        $a3, 0xb7($s1)
/* 6CB0C 8002882C A622008A */  sh         $v0, 0x8a($s1)
/* 6CB10 80028830 922200BB */  lbu        $v0, 0xbb($s1)
/* 6CB14 80028834 02202021 */  addu       $a0, $s1, $zero
/* 6CB18 80028838 A220008C */  sb         $zero, 0x8c($s1)
/* 6CB1C 8002883C 0C029D98 */  jal        func_800A7660
/* 6CB20 80028840 AFA20010 */   sw        $v0, 0x10($sp)
/* 6CB24 80028844 26300088 */  addiu      $s0, $s1, 0x88
/* 6CB28 80028848 02002021 */  addu       $a0, $s0, $zero
/* 6CB2C 8002884C 8E26009C */  lw         $a2, 0x9c($s1)
/* 6CB30 80028850 00402821 */  addu       $a1, $v0, $zero
/* 6CB34 80028854 00003821 */  addu       $a3, $zero, $zero
/* 6CB38 80028858 0C02920C */  jal        func_800A4830
/* 6CB3C 8002885C AE250098 */   sw        $a1, 0x98($s1)
/* 6CB40 80028860 8E250098 */  lw         $a1, 0x98($s1)
/* 6CB44 80028864 8E2600A0 */  lw         $a2, 0xa0($s1)
/* 6CB48 80028868 02002021 */  addu       $a0, $s0, $zero
/* 6CB4C 8002886C 00003821 */  addu       $a3, $zero, $zero
/* 6CB50 80028870 0C02920C */  jal        func_800A4830
/* 6CB54 80028874 AE2200A4 */   sw        $v0, 0xa4($s1)
/* 6CB58 80028878 8E2400A4 */  lw         $a0, 0xa4($s1)
/* 6CB5C 8002887C 24050100 */  addiu      $a1, $zero, 0x100
/* 6CB60 80028880 240600C0 */  addiu      $a2, $zero, 0xc0
/* 6CB64 80028884 0C028D89 */  jal        func_800A3624
/* 6CB68 80028888 AE2200A8 */   sw        $v0, 0xa8($s1)
/* 6CB6C 8002888C 8E2400A8 */  lw         $a0, 0xa8($s1)
/* 6CB70 80028890 24050100 */  addiu      $a1, $zero, 0x100
/* 6CB74 80028894 0C028D89 */  jal        func_800A3624
/* 6CB78 80028898 240600C0 */   addiu     $a2, $zero, 0xc0
/* 6CB7C 8002889C 8E2400A8 */  lw         $a0, 0xa8($s1)
/* 6CB80 800288A0 24050400 */  addiu      $a1, $zero, 0x400
/* 6CB84 800288A4 0C0292D4 */  jal        func_800A4B50
/* 6CB88 800288A8 24060400 */   addiu     $a2, $zero, 0x400
/* 6CB8C 800288AC 86220086 */  lh         $v0, 0x86($s1)
/* 6CB90 800288B0 3C01800D */  lui        $at, %hi(D_800D3EB0)
/* 6CB94 800288B4 00220821 */  addu       $at, $at, $v0
/* 6CB98 800288B8 90223EB0 */  lbu        $v0, %lo(D_800D3EB0)($at)
/* 6CB9C 800288BC AE2200B0 */  sw         $v0, 0xb0($s1)
/* 6CBA0 800288C0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6CBA4 800288C4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6CBA8 800288C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 6CBAC 800288CC 03E00008 */  jr         $ra
/* 6CBB0 800288D0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800288D4_6CBB4
/* 6CBB4 800288D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6CBB8 800288D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 6CBBC 800288DC 00808021 */  addu       $s0, $a0, $zero
/* 6CBC0 800288E0 24020001 */  addiu      $v0, $zero, 1
/* 6CBC4 800288E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6CBC8 800288E8 A6000086 */  sh         $zero, 0x86($s0)
/* 6CBCC 800288EC A20000B4 */  sb         $zero, 0xb4($s0)
/* 6CBD0 800288F0 A20000B5 */  sb         $zero, 0xb5($s0)
/* 6CBD4 800288F4 A20200B6 */  sb         $v0, 0xb6($s0)
/* 6CBD8 800288F8 A20000B7 */  sb         $zero, 0xb7($s0)
/* 6CBDC 800288FC 0C029F9A */  jal        func_800A7E68
/* 6CBE0 80028900 AE0000B8 */   sw        $zero, 0xb8($s0)
/* 6CBE4 80028904 0C029FA4 */  jal        func_800A7E90
/* 6CBE8 80028908 AE02009C */   sw        $v0, 0x9c($s0)
/* 6CBEC 8002890C 0C02A03C */  jal        func_800A80F0
/* 6CBF0 80028910 AE0200A0 */   sw        $v0, 0xa0($s0)
/* 6CBF4 80028914 86030086 */  lh         $v1, 0x86($s0)
/* 6CBF8 80028918 AE0200AC */  sw         $v0, 0xac($s0)
/* 6CBFC 8002891C 3C02800D */  lui        $v0, %hi(D_800D3EB0)
/* 6CC00 80028920 00431021 */  addu       $v0, $v0, $v1
/* 6CC04 80028924 90423EB0 */  lbu        $v0, %lo(D_800D3EB0)($v0)
/* 6CC08 80028928 02002021 */  addu       $a0, $s0, $zero
/* 6CC0C 8002892C 0C00A1DC */  jal        func_80028770_6CA50
/* 6CC10 80028930 AE0200B0 */   sw        $v0, 0xb0($s0)
/* 6CC14 80028934 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6CC18 80028938 8FB00010 */  lw         $s0, 0x10($sp)
/* 6CC1C 8002893C 03E00008 */  jr         $ra
/* 6CC20 80028940 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80028944_6CC24
/* 6CC24 80028944 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6CC28 80028948 AFB00010 */  sw         $s0, 0x10($sp)
/* 6CC2C 8002894C 00808021 */  addu       $s0, $a0, $zero
/* 6CC30 80028950 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6CC34 80028954 8E040098 */  lw         $a0, 0x98($s0)
/* 6CC38 80028958 24020001 */  addiu      $v0, $zero, 1
/* 6CC3C 8002895C 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6CC40 80028960 0C0326A1 */  jal        func_800C9A84
/* 6CC44 80028964 A0220A30 */   sb        $v0, %lo(D_80030A30)($at)
/* 6CC48 80028968 0C0326A1 */  jal        func_800C9A84
/* 6CC4C 8002896C 8E04009C */   lw        $a0, 0x9c($s0)
/* 6CC50 80028970 0C0326A1 */  jal        func_800C9A84
/* 6CC54 80028974 8E0400A0 */   lw        $a0, 0xa0($s0)
/* 6CC58 80028978 0C0326A1 */  jal        func_800C9A84
/* 6CC5C 8002897C 8E0400A4 */   lw        $a0, 0xa4($s0)
/* 6CC60 80028980 0C0326A1 */  jal        func_800C9A84
/* 6CC64 80028984 8E0400A8 */   lw        $a0, 0xa8($s0)
/* 6CC68 80028988 0C02A070 */  jal        func_800A81C0
/* 6CC6C 8002898C 8E0400AC */   lw        $a0, 0xac($s0)
/* 6CC70 80028990 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6CC74 80028994 8FB00010 */  lw         $s0, 0x10($sp)
/* 6CC78 80028998 03E00008 */  jr         $ra
/* 6CC7C 8002899C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800289A0_6CC80
/* 6CC80 800289A0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 6CC84 800289A4 AFB1002C */  sw         $s1, 0x2c($sp)
/* 6CC88 800289A8 00808821 */  addu       $s1, $a0, $zero
/* 6CC8C 800289AC 00002021 */  addu       $a0, $zero, $zero
/* 6CC90 800289B0 2405000E */  addiu      $a1, $zero, 0xe
/* 6CC94 800289B4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 6CC98 800289B8 0C02DAC0 */  jal        func_800B6B00
/* 6CC9C 800289BC AFB00028 */   sw        $s0, 0x28($sp)
/* 6CCA0 800289C0 00002021 */  addu       $a0, $zero, $zero
/* 6CCA4 800289C4 2405000D */  addiu      $a1, $zero, 0xd
/* 6CCA8 800289C8 0C02DAE0 */  jal        func_800B6B80
/* 6CCAC 800289CC 24060004 */   addiu     $a2, $zero, 4
/* 6CCB0 800289D0 3C058003 */  lui        $a1, %hi(D_8002FDD8_740B8)
/* 6CCB4 800289D4 24A5FDD8 */  addiu      $a1, $a1, %lo(D_8002FDD8_740B8)
/* 6CCB8 800289D8 0C02DA9C */  jal        func_800B6A70
/* 6CCBC 800289DC 00002021 */   addu      $a0, $zero, $zero
/* 6CCC0 800289E0 86270086 */  lh         $a3, 0x86($s1)
/* 6CCC4 800289E4 822A00B4 */  lb         $t2, 0xb4($s1)
/* 6CCC8 800289E8 822800B5 */  lb         $t0, 0xb5($s1)
/* 6CCCC 800289EC 3C038015 */  lui        $v1, %hi(D_8014CF90)
/* 6CCD0 800289F0 9463CF90 */  lhu        $v1, %lo(D_8014CF90)($v1)
/* 6CCD4 800289F4 922900B7 */  lbu        $t1, 0xb7($s1)
/* 6CCD8 800289F8 8E2600B8 */  lw         $a2, 0xb8($s1)
/* 6CCDC 800289FC 00E02821 */  addu       $a1, $a3, $zero
/* 6CCE0 80028A00 30620008 */  andi       $v0, $v1, 8
/* 6CCE4 80028A04 1040001B */  beqz       $v0, .L80028A74
/* 6CCE8 80028A08 01402021 */   addu      $a0, $t2, $zero
/* 6CCEC 80028A0C 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CCF0 80028A10 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CCF4 80028A14 30420800 */  andi       $v0, $v0, 0x800
/* 6CCF8 80028A18 10400004 */  beqz       $v0, .L80028A2C
/* 6CCFC 80028A1C 00000000 */   nop
/* 6CD00 80028A20 922200B6 */  lbu        $v0, 0xb6($s1)
/* 6CD04 80028A24 24420001 */  addiu      $v0, $v0, 1
/* 6CD08 80028A28 A22200B6 */  sb         $v0, 0xb6($s1)
.L80028A2C:
/* 6CD0C 80028A2C 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CD10 80028A30 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CD14 80028A34 30420400 */  andi       $v0, $v0, 0x400
/* 6CD18 80028A38 10400004 */  beqz       $v0, .L80028A4C
/* 6CD1C 80028A3C 00000000 */   nop
/* 6CD20 80028A40 922200B6 */  lbu        $v0, 0xb6($s1)
/* 6CD24 80028A44 2442FFFF */  addiu      $v0, $v0, -1
/* 6CD28 80028A48 A22200B6 */  sb         $v0, 0xb6($s1)
.L80028A4C:
/* 6CD2C 80028A4C 822300B6 */  lb         $v1, 0xb6($s1)
/* 6CD30 80028A50 28620021 */  slti       $v0, $v1, 0x21
/* 6CD34 80028A54 14400003 */  bnez       $v0, .L80028A64
/* 6CD38 80028A58 24020020 */   addiu     $v0, $zero, 0x20
/* 6CD3C 80028A5C 0800A331 */  j          .L80028CC4
/* 6CD40 80028A60 A22200B6 */   sb        $v0, 0xb6($s1)
.L80028A64:
/* 6CD44 80028A64 1C600097 */  bgtz       $v1, .L80028CC4
/* 6CD48 80028A68 24020001 */   addiu     $v0, $zero, 1
/* 6CD4C 80028A6C 0800A331 */  j          .L80028CC4
/* 6CD50 80028A70 A22200B6 */   sb        $v0, 0xb6($s1)
.L80028A74:
/* 6CD54 80028A74 30620001 */  andi       $v0, $v1, 1
/* 6CD58 80028A78 10400033 */  beqz       $v0, .L80028B48
/* 6CD5C 80028A7C 30620004 */   andi      $v0, $v1, 4
/* 6CD60 80028A80 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CD64 80028A84 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CD68 80028A88 30420100 */  andi       $v0, $v0, 0x100
/* 6CD6C 80028A8C 10400002 */  beqz       $v0, .L80028A98
/* 6CD70 80028A90 24820001 */   addiu     $v0, $a0, 1
/* 6CD74 80028A94 A22200B4 */  sb         $v0, 0xb4($s1)
.L80028A98:
/* 6CD78 80028A98 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CD7C 80028A9C 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CD80 80028AA0 30420200 */  andi       $v0, $v0, 0x200
/* 6CD84 80028AA4 10400004 */  beqz       $v0, .L80028AB8
/* 6CD88 80028AA8 00000000 */   nop
/* 6CD8C 80028AAC 922200B4 */  lbu        $v0, 0xb4($s1)
/* 6CD90 80028AB0 2442FFFF */  addiu      $v0, $v0, -1
/* 6CD94 80028AB4 A22200B4 */  sb         $v0, 0xb4($s1)
.L80028AB8:
/* 6CD98 80028AB8 822300B4 */  lb         $v1, 0xb4($s1)
/* 6CD9C 80028ABC 28620019 */  slti       $v0, $v1, 0x19
/* 6CDA0 80028AC0 14400003 */  bnez       $v0, .L80028AD0
/* 6CDA4 80028AC4 2862FFE8 */   slti      $v0, $v1, -0x18
/* 6CDA8 80028AC8 0800A2B6 */  j          .L80028AD8
/* 6CDAC 80028ACC 24020018 */   addiu     $v0, $zero, 0x18
.L80028AD0:
/* 6CDB0 80028AD0 10400002 */  beqz       $v0, .L80028ADC
/* 6CDB4 80028AD4 2402FFE8 */   addiu     $v0, $zero, -0x18
.L80028AD8:
/* 6CDB8 80028AD8 A22200B4 */  sb         $v0, 0xb4($s1)
.L80028ADC:
/* 6CDBC 80028ADC 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 6CDC0 80028AE0 2463CF94 */  addiu      $v1, $v1, %lo(D_8014CF94)
/* 6CDC4 80028AE4 94620000 */  lhu        $v0, ($v1)
/* 6CDC8 80028AE8 30420400 */  andi       $v0, $v0, 0x400
/* 6CDCC 80028AEC 10400004 */  beqz       $v0, .L80028B00
/* 6CDD0 80028AF0 00000000 */   nop
/* 6CDD4 80028AF4 922200B5 */  lbu        $v0, 0xb5($s1)
/* 6CDD8 80028AF8 24420001 */  addiu      $v0, $v0, 1
/* 6CDDC 80028AFC A22200B5 */  sb         $v0, 0xb5($s1)
.L80028B00:
/* 6CDE0 80028B00 94620000 */  lhu        $v0, ($v1)
/* 6CDE4 80028B04 30420800 */  andi       $v0, $v0, 0x800
/* 6CDE8 80028B08 10400004 */  beqz       $v0, .L80028B1C
/* 6CDEC 80028B0C 00000000 */   nop
/* 6CDF0 80028B10 922200B5 */  lbu        $v0, 0xb5($s1)
/* 6CDF4 80028B14 2442FFFF */  addiu      $v0, $v0, -1
/* 6CDF8 80028B18 A22200B5 */  sb         $v0, 0xb5($s1)
.L80028B1C:
/* 6CDFC 80028B1C 822300B5 */  lb         $v1, 0xb5($s1)
/* 6CE00 80028B20 28620019 */  slti       $v0, $v1, 0x19
/* 6CE04 80028B24 14400004 */  bnez       $v0, .L80028B38
/* 6CE08 80028B28 2862FFE8 */   slti      $v0, $v1, -0x18
/* 6CE0C 80028B2C 24020018 */  addiu      $v0, $zero, 0x18
/* 6CE10 80028B30 0800A331 */  j          .L80028CC4
/* 6CE14 80028B34 A22200B5 */   sb        $v0, 0xb5($s1)
.L80028B38:
/* 6CE18 80028B38 10400062 */  beqz       $v0, .L80028CC4
/* 6CE1C 80028B3C 2402FFE8 */   addiu     $v0, $zero, -0x18
/* 6CE20 80028B40 0800A331 */  j          .L80028CC4
/* 6CE24 80028B44 A22200B5 */   sb        $v0, 0xb5($s1)
.L80028B48:
/* 6CE28 80028B48 1040001E */  beqz       $v0, .L80028BC4
/* 6CE2C 80028B4C 30620002 */   andi      $v0, $v1, 2
/* 6CE30 80028B50 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CE34 80028B54 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CE38 80028B58 30420100 */  andi       $v0, $v0, 0x100
/* 6CE3C 80028B5C 10400004 */  beqz       $v0, .L80028B70
/* 6CE40 80028B60 00000000 */   nop
/* 6CE44 80028B64 8E2200B0 */  lw         $v0, 0xb0($s1)
/* 6CE48 80028B68 24420001 */  addiu      $v0, $v0, 1
/* 6CE4C 80028B6C AE2200B0 */  sw         $v0, 0xb0($s1)
.L80028B70:
/* 6CE50 80028B70 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CE54 80028B74 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CE58 80028B78 30420200 */  andi       $v0, $v0, 0x200
/* 6CE5C 80028B7C 10400004 */  beqz       $v0, .L80028B90
/* 6CE60 80028B80 00000000 */   nop
/* 6CE64 80028B84 8E2200B0 */  lw         $v0, 0xb0($s1)
/* 6CE68 80028B88 2442FFFF */  addiu      $v0, $v0, -1
/* 6CE6C 80028B8C AE2200B0 */  sw         $v0, 0xb0($s1)
.L80028B90:
/* 6CE70 80028B90 8E2300B0 */  lw         $v1, 0xb0($s1)
/* 6CE74 80028B94 28620019 */  slti       $v0, $v1, 0x19
/* 6CE78 80028B98 10400003 */  beqz       $v0, .L80028BA8
/* 6CE7C 80028B9C 24020018 */   addiu     $v0, $zero, 0x18
/* 6CE80 80028BA0 1C600002 */  bgtz       $v1, .L80028BAC
/* 6CE84 80028BA4 24020001 */   addiu     $v0, $zero, 1
.L80028BA8:
/* 6CE88 80028BA8 AE2200B0 */  sw         $v0, 0xb0($s1)
.L80028BAC:
/* 6CE8C 80028BAC 86230086 */  lh         $v1, 0x86($s1)
/* 6CE90 80028BB0 8E2200B0 */  lw         $v0, 0xb0($s1)
/* 6CE94 80028BB4 3C01800D */  lui        $at, %hi(D_800D3EB0)
/* 6CE98 80028BB8 00230821 */  addu       $at, $at, $v1
/* 6CE9C 80028BBC 0800A331 */  j          .L80028CC4
/* 6CEA0 80028BC0 A0223EB0 */   sb        $v0, %lo(D_800D3EB0)($at)
.L80028BC4:
/* 6CEA4 80028BC4 10400019 */  beqz       $v0, .L80028C2C
/* 6CEA8 80028BC8 00000000 */   nop
/* 6CEAC 80028BCC 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CEB0 80028BD0 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CEB4 80028BD4 30420100 */  andi       $v0, $v0, 0x100
/* 6CEB8 80028BD8 10400002 */  beqz       $v0, .L80028BE4
/* 6CEBC 80028BDC 24C20001 */   addiu     $v0, $a2, 1
/* 6CEC0 80028BE0 AE2200B8 */  sw         $v0, 0xb8($s1)
.L80028BE4:
/* 6CEC4 80028BE4 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CEC8 80028BE8 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CECC 80028BEC 30420200 */  andi       $v0, $v0, 0x200
/* 6CED0 80028BF0 10400004 */  beqz       $v0, .L80028C04
/* 6CED4 80028BF4 00000000 */   nop
/* 6CED8 80028BF8 8E2200B8 */  lw         $v0, 0xb8($s1)
/* 6CEDC 80028BFC 2442FFFF */  addiu      $v0, $v0, -1
/* 6CEE0 80028C00 AE2200B8 */  sw         $v0, 0xb8($s1)
.L80028C04:
/* 6CEE4 80028C04 8E2300B8 */  lw         $v1, 0xb8($s1)
/* 6CEE8 80028C08 28620005 */  slti       $v0, $v1, 5
/* 6CEEC 80028C0C 14400003 */  bnez       $v0, .L80028C1C
/* 6CEF0 80028C10 2462FFFB */   addiu     $v0, $v1, -5
/* 6CEF4 80028C14 0800A331 */  j          .L80028CC4
/* 6CEF8 80028C18 AE2200B8 */   sw        $v0, 0xb8($s1)
.L80028C1C:
/* 6CEFC 80028C1C 04610029 */  bgez       $v1, .L80028CC4
/* 6CF00 80028C20 24620005 */   addiu     $v0, $v1, 5
/* 6CF04 80028C24 0800A331 */  j          .L80028CC4
/* 6CF08 80028C28 AE2200B8 */   sw        $v0, 0xb8($s1)
.L80028C2C:
/* 6CF0C 80028C2C 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CF10 80028C30 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CF14 80028C34 30420100 */  andi       $v0, $v0, 0x100
/* 6CF18 80028C38 10400002 */  beqz       $v0, .L80028C44
/* 6CF1C 80028C3C 24A20001 */   addiu     $v0, $a1, 1
/* 6CF20 80028C40 A6220086 */  sh         $v0, 0x86($s1)
.L80028C44:
/* 6CF24 80028C44 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CF28 80028C48 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CF2C 80028C4C 30420200 */  andi       $v0, $v0, 0x200
/* 6CF30 80028C50 10400004 */  beqz       $v0, .L80028C64
/* 6CF34 80028C54 00000000 */   nop
/* 6CF38 80028C58 96220086 */  lhu        $v0, 0x86($s1)
/* 6CF3C 80028C5C 2442FFFF */  addiu      $v0, $v0, -1
/* 6CF40 80028C60 A6220086 */  sh         $v0, 0x86($s1)
.L80028C64:
/* 6CF44 80028C64 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CF48 80028C68 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CF4C 80028C6C 30420400 */  andi       $v0, $v0, 0x400
/* 6CF50 80028C70 10400004 */  beqz       $v0, .L80028C84
/* 6CF54 80028C74 00000000 */   nop
/* 6CF58 80028C78 96220086 */  lhu        $v0, 0x86($s1)
/* 6CF5C 80028C7C 2442000A */  addiu      $v0, $v0, 0xa
/* 6CF60 80028C80 A6220086 */  sh         $v0, 0x86($s1)
.L80028C84:
/* 6CF64 80028C84 3C028015 */  lui        $v0, %hi(D_8014CF94)
/* 6CF68 80028C88 9442CF94 */  lhu        $v0, %lo(D_8014CF94)($v0)
/* 6CF6C 80028C8C 30420800 */  andi       $v0, $v0, 0x800
/* 6CF70 80028C90 10400004 */  beqz       $v0, .L80028CA4
/* 6CF74 80028C94 00000000 */   nop
/* 6CF78 80028C98 96220086 */  lhu        $v0, 0x86($s1)
/* 6CF7C 80028C9C 2442FFF6 */  addiu      $v0, $v0, -0xa
/* 6CF80 80028CA0 A6220086 */  sh         $v0, 0x86($s1)
.L80028CA4:
/* 6CF84 80028CA4 86230086 */  lh         $v1, 0x86($s1)
/* 6CF88 80028CA8 2862021A */  slti       $v0, $v1, 0x21a
/* 6CF8C 80028CAC 14400003 */  bnez       $v0, .L80028CBC
/* 6CF90 80028CB0 24020219 */   addiu     $v0, $zero, 0x219
/* 6CF94 80028CB4 0800A331 */  j          .L80028CC4
/* 6CF98 80028CB8 A6220086 */   sh        $v0, 0x86($s1)
.L80028CBC:
/* 6CF9C 80028CBC 04620001 */  bltzl      $v1, .L80028CC4
/* 6CFA0 80028CC0 A6200086 */   sh        $zero, 0x86($s1)
.L80028CC4:
/* 6CFA4 80028CC4 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 6CFA8 80028CC8 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 6CFAC 80028CCC 30420010 */  andi       $v0, $v0, 0x10
/* 6CFB0 80028CD0 10400004 */  beqz       $v0, .L80028CE4
/* 6CFB4 80028CD4 00000000 */   nop
/* 6CFB8 80028CD8 922200B7 */  lbu        $v0, 0xb7($s1)
/* 6CFBC 80028CDC 38420001 */  xori       $v0, $v0, 1
/* 6CFC0 80028CE0 A22200B7 */  sb         $v0, 0xb7($s1)
.L80028CE4:
/* 6CFC4 80028CE4 86220086 */  lh         $v0, 0x86($s1)
/* 6CFC8 80028CE8 14E2000D */  bne        $a3, $v0, .L80028D20
/* 6CFCC 80028CEC 00000000 */   nop
/* 6CFD0 80028CF0 822200B4 */  lb         $v0, 0xb4($s1)
/* 6CFD4 80028CF4 1542000A */  bne        $t2, $v0, .L80028D20
/* 6CFD8 80028CF8 00000000 */   nop
/* 6CFDC 80028CFC 822200B5 */  lb         $v0, 0xb5($s1)
/* 6CFE0 80028D00 15020007 */  bne        $t0, $v0, .L80028D20
/* 6CFE4 80028D04 00000000 */   nop
/* 6CFE8 80028D08 922200B7 */  lbu        $v0, 0xb7($s1)
/* 6CFEC 80028D0C 15220004 */  bne        $t1, $v0, .L80028D20
/* 6CFF0 80028D10 00000000 */   nop
/* 6CFF4 80028D14 8E2200B8 */  lw         $v0, 0xb8($s1)
/* 6CFF8 80028D18 50C2000B */  beql       $a2, $v0, .L80028D48
/* 6CFFC 80028D1C 00002021 */   addu      $a0, $zero, $zero
.L80028D20:
/* 6D000 80028D20 8E240098 */  lw         $a0, 0x98($s1)
/* 6D004 80028D24 0C0326A1 */  jal        func_800C9A84
/* 6D008 80028D28 00000000 */   nop
/* 6D00C 80028D2C 0C0326A1 */  jal        func_800C9A84
/* 6D010 80028D30 8E2400A4 */   lw        $a0, 0xa4($s1)
/* 6D014 80028D34 0C0326A1 */  jal        func_800C9A84
/* 6D018 80028D38 8E2400A8 */   lw        $a0, 0xa8($s1)
/* 6D01C 80028D3C 0C00A1DC */  jal        func_80028770_6CA50
/* 6D020 80028D40 02202021 */   addu      $a0, $s1, $zero
/* 6D024 80028D44 00002021 */  addu       $a0, $zero, $zero
.L80028D48:
/* 6D028 80028D48 0C02DAC0 */  jal        func_800B6B00
/* 6D02C 80028D4C 24050007 */   addiu     $a1, $zero, 7
/* 6D030 80028D50 86260086 */  lh         $a2, 0x86($s1)
/* 6D034 80028D54 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 6D038 80028D58 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 6D03C 80028D5C 3C058003 */  lui        $a1, %hi(D_8002FDE8_740C8)
/* 6D040 80028D60 24A5FDE8 */  addiu      $a1, $a1, %lo(D_8002FDE8_740C8)
/* 6D044 80028D64 0C030180 */  jal        func_800C0600
/* 6D048 80028D68 02002021 */   addu      $a0, $s0, $zero
/* 6D04C 80028D6C 00002021 */  addu       $a0, $zero, $zero
/* 6D050 80028D70 24050002 */  addiu      $a1, $zero, 2
/* 6D054 80028D74 0C02DAE0 */  jal        func_800B6B80
/* 6D058 80028D78 24060005 */   addiu     $a2, $zero, 5
/* 6D05C 80028D7C 00002021 */  addu       $a0, $zero, $zero
/* 6D060 80028D80 0C02DA9C */  jal        func_800B6A70
/* 6D064 80028D84 02002821 */   addu      $a1, $s0, $zero
/* 6D068 80028D88 822600B6 */  lb         $a2, 0xb6($s1)
/* 6D06C 80028D8C 3C058003 */  lui        $a1, %hi(D_8002FDF4_740D4)
/* 6D070 80028D90 24A5FDF4 */  addiu      $a1, $a1, %lo(D_8002FDF4_740D4)
/* 6D074 80028D94 0C030180 */  jal        func_800C0600
/* 6D078 80028D98 02002021 */   addu      $a0, $s0, $zero
/* 6D07C 80028D9C 00002021 */  addu       $a0, $zero, $zero
/* 6D080 80028DA0 24050002 */  addiu      $a1, $zero, 2
/* 6D084 80028DA4 0C02DAE0 */  jal        func_800B6B80
/* 6D088 80028DA8 24060006 */   addiu     $a2, $zero, 6
/* 6D08C 80028DAC 00002021 */  addu       $a0, $zero, $zero
/* 6D090 80028DB0 0C02DA9C */  jal        func_800B6A70
/* 6D094 80028DB4 02002821 */   addu      $a1, $s0, $zero
/* 6D098 80028DB8 822600B4 */  lb         $a2, 0xb4($s1)
/* 6D09C 80028DBC 3C058003 */  lui        $a1, %hi(D_8002FE00_740E0)
/* 6D0A0 80028DC0 24A5FE00 */  addiu      $a1, $a1, %lo(D_8002FE00_740E0)
/* 6D0A4 80028DC4 0C030180 */  jal        func_800C0600
/* 6D0A8 80028DC8 02002021 */   addu      $a0, $s0, $zero
/* 6D0AC 80028DCC 00002021 */  addu       $a0, $zero, $zero
/* 6D0B0 80028DD0 24050002 */  addiu      $a1, $zero, 2
/* 6D0B4 80028DD4 0C02DAE0 */  jal        func_800B6B80
/* 6D0B8 80028DD8 24060007 */   addiu     $a2, $zero, 7
/* 6D0BC 80028DDC 00002021 */  addu       $a0, $zero, $zero
/* 6D0C0 80028DE0 0C02DA9C */  jal        func_800B6A70
/* 6D0C4 80028DE4 02002821 */   addu      $a1, $s0, $zero
/* 6D0C8 80028DE8 822600B5 */  lb         $a2, 0xb5($s1)
/* 6D0CC 80028DEC 3C058003 */  lui        $a1, %hi(D_8002FE0C_740EC)
/* 6D0D0 80028DF0 24A5FE0C */  addiu      $a1, $a1, %lo(D_8002FE0C_740EC)
/* 6D0D4 80028DF4 0C030180 */  jal        func_800C0600
/* 6D0D8 80028DF8 02002021 */   addu      $a0, $s0, $zero
/* 6D0DC 80028DFC 00002021 */  addu       $a0, $zero, $zero
/* 6D0E0 80028E00 24050002 */  addiu      $a1, $zero, 2
/* 6D0E4 80028E04 0C02DAE0 */  jal        func_800B6B80
/* 6D0E8 80028E08 24060008 */   addiu     $a2, $zero, 8
/* 6D0EC 80028E0C 00002021 */  addu       $a0, $zero, $zero
/* 6D0F0 80028E10 0C02DA9C */  jal        func_800B6A70
/* 6D0F4 80028E14 02002821 */   addu      $a1, $s0, $zero
/* 6D0F8 80028E18 922600B7 */  lbu        $a2, 0xb7($s1)
/* 6D0FC 80028E1C 3C058003 */  lui        $a1, %hi(D_8002FE18_740F8)
/* 6D100 80028E20 24A5FE18 */  addiu      $a1, $a1, %lo(D_8002FE18_740F8)
/* 6D104 80028E24 0C030180 */  jal        func_800C0600
/* 6D108 80028E28 02002021 */   addu      $a0, $s0, $zero
/* 6D10C 80028E2C 00002021 */  addu       $a0, $zero, $zero
/* 6D110 80028E30 24050002 */  addiu      $a1, $zero, 2
/* 6D114 80028E34 0C02DAE0 */  jal        func_800B6B80
/* 6D118 80028E38 24060009 */   addiu     $a2, $zero, 9
/* 6D11C 80028E3C 00002021 */  addu       $a0, $zero, $zero
/* 6D120 80028E40 0C02DA9C */  jal        func_800B6A70
/* 6D124 80028E44 02002821 */   addu      $a1, $s0, $zero
/* 6D128 80028E48 8E2600B8 */  lw         $a2, 0xb8($s1)
/* 6D12C 80028E4C 3C058003 */  lui        $a1, %hi(D_8002FE20_74100)
/* 6D130 80028E50 24A5FE20 */  addiu      $a1, $a1, %lo(D_8002FE20_74100)
/* 6D134 80028E54 0C030180 */  jal        func_800C0600
/* 6D138 80028E58 02002021 */   addu      $a0, $s0, $zero
/* 6D13C 80028E5C 00002021 */  addu       $a0, $zero, $zero
/* 6D140 80028E60 24050002 */  addiu      $a1, $zero, 2
/* 6D144 80028E64 0C02DAE0 */  jal        func_800B6B80
/* 6D148 80028E68 2406000A */   addiu     $a2, $zero, 0xa
/* 6D14C 80028E6C 00002021 */  addu       $a0, $zero, $zero
/* 6D150 80028E70 0C02DA9C */  jal        func_800B6A70
/* 6D154 80028E74 02002821 */   addu      $a1, $s0, $zero
/* 6D158 80028E78 8E2600B0 */  lw         $a2, 0xb0($s1)
/* 6D15C 80028E7C 3C058003 */  lui        $a1, %hi(D_8002FE28_74108)
/* 6D160 80028E80 24A5FE28 */  addiu      $a1, $a1, %lo(D_8002FE28_74108)
/* 6D164 80028E84 0C030180 */  jal        func_800C0600
/* 6D168 80028E88 02002021 */   addu      $a0, $s0, $zero
/* 6D16C 80028E8C 00002021 */  addu       $a0, $zero, $zero
/* 6D170 80028E90 24050002 */  addiu      $a1, $zero, 2
/* 6D174 80028E94 0C02DAE0 */  jal        func_800B6B80
/* 6D178 80028E98 2406000B */   addiu     $a2, $zero, 0xb
/* 6D17C 80028E9C 00002021 */  addu       $a0, $zero, $zero
/* 6D180 80028EA0 0C02DA9C */  jal        func_800B6A70
/* 6D184 80028EA4 02002821 */   addu      $a1, $s0, $zero
/* 6D188 80028EA8 00002021 */  addu       $a0, $zero, $zero
/* 6D18C 80028EAC 0C02DAC0 */  jal        func_800B6B00
/* 6D190 80028EB0 24050006 */   addiu     $a1, $zero, 6
/* 6D194 80028EB4 00002021 */  addu       $a0, $zero, $zero
/* 6D198 80028EB8 24050002 */  addiu      $a1, $zero, 2
/* 6D19C 80028EBC 0C02DAE0 */  jal        func_800B6B80
/* 6D1A0 80028EC0 24060014 */   addiu     $a2, $zero, 0x14
/* 6D1A4 80028EC4 3C058003 */  lui        $a1, %hi(D_8002FE34_74114)
/* 6D1A8 80028EC8 24A5FE34 */  addiu      $a1, $a1, %lo(D_8002FE34_74114)
/* 6D1AC 80028ECC 0C02DA9C */  jal        func_800B6A70
/* 6D1B0 80028ED0 00002021 */   addu      $a0, $zero, $zero
/* 6D1B4 80028ED4 00002021 */  addu       $a0, $zero, $zero
/* 6D1B8 80028ED8 24050002 */  addiu      $a1, $zero, 2
/* 6D1BC 80028EDC 0C02DAE0 */  jal        func_800B6B80
/* 6D1C0 80028EE0 24060015 */   addiu     $a2, $zero, 0x15
/* 6D1C4 80028EE4 3C058003 */  lui        $a1, %hi(D_8002FE3C_7411C)
/* 6D1C8 80028EE8 24A5FE3C */  addiu      $a1, $a1, %lo(D_8002FE3C_7411C)
/* 6D1CC 80028EEC 0C02DA9C */  jal        func_800B6A70
/* 6D1D0 80028EF0 00002021 */   addu      $a0, $zero, $zero
/* 6D1D4 80028EF4 00002021 */  addu       $a0, $zero, $zero
/* 6D1D8 80028EF8 24050002 */  addiu      $a1, $zero, 2
/* 6D1DC 80028EFC 0C02DAE0 */  jal        func_800B6B80
/* 6D1E0 80028F00 24060016 */   addiu     $a2, $zero, 0x16
/* 6D1E4 80028F04 3C058003 */  lui        $a1, %hi(D_8002FE44_74124)
/* 6D1E8 80028F08 24A5FE44 */  addiu      $a1, $a1, %lo(D_8002FE44_74124)
/* 6D1EC 80028F0C 0C02DA9C */  jal        func_800B6A70
/* 6D1F0 80028F10 00002021 */   addu      $a0, $zero, $zero
/* 6D1F4 80028F14 00002021 */  addu       $a0, $zero, $zero
/* 6D1F8 80028F18 24050002 */  addiu      $a1, $zero, 2
/* 6D1FC 80028F1C 0C02DAE0 */  jal        func_800B6B80
/* 6D200 80028F20 24060017 */   addiu     $a2, $zero, 0x17
/* 6D204 80028F24 3C058003 */  lui        $a1, %hi(D_8002FE4C_7412C)
/* 6D208 80028F28 24A5FE4C */  addiu      $a1, $a1, %lo(D_8002FE4C_7412C)
/* 6D20C 80028F2C 0C02DA9C */  jal        func_800B6A70
/* 6D210 80028F30 00002021 */   addu      $a0, $zero, $zero
/* 6D214 80028F34 00002021 */  addu       $a0, $zero, $zero
/* 6D218 80028F38 24050002 */  addiu      $a1, $zero, 2
/* 6D21C 80028F3C 0C02DAE0 */  jal        func_800B6B80
/* 6D220 80028F40 24060018 */   addiu     $a2, $zero, 0x18
/* 6D224 80028F44 3C058003 */  lui        $a1, %hi(D_8002FE54_74134)
/* 6D228 80028F48 24A5FE54 */  addiu      $a1, $a1, %lo(D_8002FE54_74134)
/* 6D22C 80028F4C 0C02DA9C */  jal        func_800B6A70
/* 6D230 80028F50 00002021 */   addu      $a0, $zero, $zero
/* 6D234 80028F54 00002021 */  addu       $a0, $zero, $zero
/* 6D238 80028F58 24050002 */  addiu      $a1, $zero, 2
/* 6D23C 80028F5C 0C02DAE0 */  jal        func_800B6B80
/* 6D240 80028F60 24060019 */   addiu     $a2, $zero, 0x19
/* 6D244 80028F64 3C058003 */  lui        $a1, %hi(D_8002FE5C_7413C)
/* 6D248 80028F68 24A5FE5C */  addiu      $a1, $a1, %lo(D_8002FE5C_7413C)
/* 6D24C 80028F6C 0C02DA9C */  jal        func_800B6A70
/* 6D250 80028F70 00002021 */   addu      $a0, $zero, $zero
/* 6D254 80028F74 822200B6 */  lb         $v0, 0xb6($s1)
/* 6D258 80028F78 240500FF */  addiu      $a1, $zero, 0xff
/* 6D25C 80028F7C 000210C0 */  sll        $v0, $v0, 3
/* 6D260 80028F80 2442FFFF */  addiu      $v0, $v0, -1
/* 6D264 80028F84 304200FF */  andi       $v0, $v0, 0xff
/* 6D268 80028F88 AFA20010 */  sw         $v0, 0x10($sp)
/* 6D26C 80028F8C 8E2400A8 */  lw         $a0, 0xa8($s1)
/* 6D270 80028F90 240600FF */  addiu      $a2, $zero, 0xff
/* 6D274 80028F94 0C028E41 */  jal        func_800A3904
/* 6D278 80028F98 240700FF */   addiu     $a3, $zero, 0xff
/* 6D27C 80028F9C 8E2700B0 */  lw         $a3, 0xb0($s1)
/* 6D280 80028FA0 24020048 */  addiu      $v0, $zero, 0x48
/* 6D284 80028FA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 6D288 80028FA8 8E2400AC */  lw         $a0, 0xac($s1)
/* 6D28C 80028FAC 24050040 */  addiu      $a1, $zero, 0x40
/* 6D290 80028FB0 24060030 */  addiu      $a2, $zero, 0x30
/* 6D294 80028FB4 24E70040 */  addiu      $a3, $a3, 0x40
/* 6D298 80028FB8 00073C00 */  sll        $a3, $a3, 0x10
/* 6D29C 80028FBC 0C02A095 */  jal        func_800A8254
/* 6D2A0 80028FC0 00073C03 */   sra       $a3, $a3, 0x10
/* 6D2A4 80028FC4 8E2400AC */  lw         $a0, 0xac($s1)
/* 6D2A8 80028FC8 0C02A193 */  jal        func_800A864C
/* 6D2AC 80028FCC 00000000 */   nop
/* 6D2B0 80028FD0 0C028A40 */  jal        func_800A2900
/* 6D2B4 80028FD4 8E2400A8 */   lw        $a0, 0xa8($s1)
/* 6D2B8 80028FD8 0C028A40 */  jal        func_800A2900
/* 6D2BC 80028FDC 8E2400A4 */   lw        $a0, 0xa4($s1)
/* 6D2C0 80028FE0 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 6D2C4 80028FE4 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 6D2C8 80028FE8 30424000 */  andi       $v0, $v0, 0x4000
/* 6D2CC 80028FEC 0002102B */  sltu       $v0, $zero, $v0
/* 6D2D0 80028FF0 00021023 */  negu       $v0, $v0
/* 6D2D4 80028FF4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 6D2D8 80028FF8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 6D2DC 80028FFC 8FB00028 */  lw         $s0, 0x28($sp)
/* 6D2E0 80029000 03E00008 */  jr         $ra
/* 6D2E4 80029004 27BD0038 */   addiu     $sp, $sp, 0x38
/* 6D2E8 80029008 00000000 */  nop
/* 6D2EC 8002900C 00000000 */  nop
