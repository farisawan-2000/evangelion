.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80036A30_128830
/* 128830 80036A30 3C038005 */  lui        $v1, %hi(D_80051BE8)
/* 128834 80036A34 90631BE8 */  lbu        $v1, %lo(D_80051BE8)($v1)
/* 128838 80036A38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12883C 80036A3C 2C620005 */  sltiu      $v0, $v1, 5
/* 128840 80036A40 1040005E */  beqz       $v0, .L80036BBC
/* 128844 80036A44 AFBF0010 */   sw        $ra, 0x10($sp)
/* 128848 80036A48 00031080 */  sll        $v0, $v1, 2
/* 12884C 80036A4C 3C018006 */  lui        $at, %hi(D_8005BCF8)
/* 128850 80036A50 00220821 */  addu       $at, $at, $v0
/* 128854 80036A54 8C22BCF8 */  lw         $v0, %lo(D_8005BCF8)($at)
/* 128858 80036A58 00400008 */  jr         $v0
/* 12885C 80036A5C 00000000 */   nop
/* 128860 80036A60 0C02A5AF */  jal        func_800A96BC
/* 128864 80036A64 24040001 */   addiu     $a0, $zero, 1
/* 128868 80036A68 24020001 */  addiu      $v0, $zero, 1
/* 12886C 80036A6C 3C018005 */  lui        $at, %hi(D_80051BE8)
/* 128870 80036A70 A0221BE8 */  sb         $v0, %lo(D_80051BE8)($at)
/* 128874 80036A74 2402012C */  addiu      $v0, $zero, 0x12c
/* 128878 80036A78 3C018006 */  lui        $at, %hi(D_8005E138)
/* 12887C 80036A7C AC22E138 */  sw         $v0, %lo(D_8005E138)($at)
/* 128880 80036A80 24020258 */  addiu      $v0, $zero, 0x258
/* 128884 80036A84 3C018006 */  lui        $at, %hi(D_8005E134)
/* 128888 80036A88 AC22E134 */  sw         $v0, %lo(D_8005E134)($at)
/* 12888C 80036A8C 24020004 */  addiu      $v0, $zero, 4
/* 128890 80036A90 3C018006 */  lui        $at, %hi(D_8005DD20)
/* 128894 80036A94 AC20DD20 */  sw         $zero, %lo(D_8005DD20)($at)
/* 128898 80036A98 3C018006 */  lui        $at, %hi(D_8005DD24)
/* 12889C 80036A9C AC20DD24 */  sw         $zero, %lo(D_8005DD24)($at)
/* 1288A0 80036AA0 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1288A4 80036AA4 0C009BCC */  jal        func_80026F30_118D30
/* 1288A8 80036AA8 AC2265B8 */   sw        $v0, %lo(D_801765B8)($at)
/* 1288AC 80036AAC 0800DAF0 */  j          .L80036BC0
/* 1288B0 80036AB0 00001021 */   addu      $v0, $zero, $zero
/* 1288B4 80036AB4 0C027444 */  jal        func_8009D110
/* 1288B8 80036AB8 00002021 */   addu      $a0, $zero, $zero
/* 1288BC 80036ABC 3C048005 */  lui        $a0, %hi(D_80051BC4)
/* 1288C0 80036AC0 0C027448 */  jal        func_8009D120
/* 1288C4 80036AC4 24841BC4 */   addiu     $a0, $a0, %lo(D_80051BC4)
/* 1288C8 80036AC8 3C018006 */  lui        $at, %hi(D_8005DD24)
/* 1288CC 80036ACC AC22DD24 */  sw         $v0, %lo(D_8005DD24)($at)
/* 1288D0 80036AD0 1040003B */  beqz       $v0, .L80036BC0
/* 1288D4 80036AD4 00001021 */   addu      $v0, $zero, $zero
/* 1288D8 80036AD8 0C02A5C1 */  jal        func_800A9704
/* 1288DC 80036ADC 24040001 */   addiu     $a0, $zero, 1
/* 1288E0 80036AE0 24020001 */  addiu      $v0, $zero, 1
/* 1288E4 80036AE4 3C018006 */  lui        $at, %hi(D_8005DD20)
/* 1288E8 80036AE8 AC22DD20 */  sw         $v0, %lo(D_8005DD20)($at)
/* 1288EC 80036AEC 24020002 */  addiu      $v0, $zero, 2
/* 1288F0 80036AF0 3C018005 */  lui        $at, %hi(D_80051BE8)
/* 1288F4 80036AF4 A0221BE8 */  sb         $v0, %lo(D_80051BE8)($at)
/* 1288F8 80036AF8 0800DAF0 */  j          .L80036BC0
/* 1288FC 80036AFC 00001021 */   addu      $v0, $zero, $zero
/* 128900 80036B00 3C048005 */  lui        $a0, %hi(D_80051BC4)
/* 128904 80036B04 24841BC4 */  addiu      $a0, $a0, %lo(D_80051BC4)
/* 128908 80036B08 0C0274BE */  jal        func_8009D2F8
/* 12890C 80036B0C 24050001 */   addiu     $a1, $zero, 1
/* 128910 80036B10 3C028006 */  lui        $v0, %hi(D_8005DD20)
/* 128914 80036B14 8C42DD20 */  lw         $v0, %lo(D_8005DD20)($v0)
/* 128918 80036B18 2442FFFF */  addiu      $v0, $v0, -1
/* 12891C 80036B1C 3C018006 */  lui        $at, %hi(D_8005DD20)
/* 128920 80036B20 AC22DD20 */  sw         $v0, %lo(D_8005DD20)($at)
/* 128924 80036B24 14400026 */  bnez       $v0, .L80036BC0
/* 128928 80036B28 00001021 */   addu      $v0, $zero, $zero
/* 12892C 80036B2C 0C02DB14 */  jal        func_800B6C50
/* 128930 80036B30 00002021 */   addu      $a0, $zero, $zero
/* 128934 80036B34 3C038006 */  lui        $v1, %hi(D_8005DD24)
/* 128938 80036B38 8C63DD24 */  lw         $v1, %lo(D_8005DD24)($v1)
/* 12893C 80036B3C 2402FFFF */  addiu      $v0, $zero, -1
/* 128940 80036B40 14620006 */  bne        $v1, $v0, .L80036B5C
/* 128944 80036B44 24020003 */   addiu     $v0, $zero, 3
/* 128948 80036B48 24020004 */  addiu      $v0, $zero, 4
/* 12894C 80036B4C 3C018005 */  lui        $at, %hi(D_80051BE8)
/* 128950 80036B50 A0221BE8 */  sb         $v0, %lo(D_80051BE8)($at)
/* 128954 80036B54 0800DAF0 */  j          .L80036BC0
/* 128958 80036B58 00001021 */   addu      $v0, $zero, $zero
.L80036B5C:
/* 12895C 80036B5C 3C018005 */  lui        $at, %hi(D_80051BE8)
/* 128960 80036B60 A0221BE8 */  sb         $v0, %lo(D_80051BE8)($at)
/* 128964 80036B64 0800DAF0 */  j          .L80036BC0
/* 128968 80036B68 00001021 */   addu      $v0, $zero, $zero
/* 12896C 80036B6C 3C028006 */  lui        $v0, %hi(D_8005DD24)
/* 128970 80036B70 8C42DD24 */  lw         $v0, %lo(D_8005DD24)($v0)
/* 128974 80036B74 0040F809 */  jalr       $v0
/* 128978 80036B78 00000000 */   nop
/* 12897C 80036B7C 10400010 */  beqz       $v0, .L80036BC0
/* 128980 80036B80 00001021 */   addu      $v0, $zero, $zero
/* 128984 80036B84 0C009BD9 */  jal        func_80026F64_118D64
/* 128988 80036B88 00000000 */   nop
/* 12898C 80036B8C 3C018005 */  lui        $at, %hi(D_80051BE8)
/* 128990 80036B90 A0201BE8 */  sb         $zero, %lo(D_80051BE8)($at)
/* 128994 80036B94 0800DAF0 */  j          .L80036BC0
/* 128998 80036B98 00001021 */   addu      $v0, $zero, $zero
/* 12899C 80036B9C 0C009BD9 */  jal        func_80026F64_118D64
/* 1289A0 80036BA0 00000000 */   nop
/* 1289A4 80036BA4 0C02DB14 */  jal        func_800B6C50
/* 1289A8 80036BA8 00002021 */   addu      $a0, $zero, $zero
/* 1289AC 80036BAC 3C018005 */  lui        $at, %hi(D_80051BE8)
/* 1289B0 80036BB0 A0201BE8 */  sb         $zero, %lo(D_80051BE8)($at)
/* 1289B4 80036BB4 0800DAF0 */  j          .L80036BC0
/* 1289B8 80036BB8 24020001 */   addiu     $v0, $zero, 1
.L80036BBC:
/* 1289BC 80036BBC 00001021 */  addu       $v0, $zero, $zero
.L80036BC0:
/* 1289C0 80036BC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1289C4 80036BC4 03E00008 */  jr         $ra
/* 1289C8 80036BC8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1289CC 80036BCC 00000000 */  nop