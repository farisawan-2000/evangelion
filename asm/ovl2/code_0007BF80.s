.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002CFD0_7BF80
/* 7BF80 8002CFD0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 7BF84 8002CFD4 AFB50034 */  sw         $s5, 0x34($sp)
/* 7BF88 8002CFD8 0080A821 */  addu       $s5, $a0, $zero
/* 7BF8C 8002CFDC AFBF0040 */  sw         $ra, 0x40($sp)
/* 7BF90 8002CFE0 AFB7003C */  sw         $s7, 0x3c($sp)
/* 7BF94 8002CFE4 AFB60038 */  sw         $s6, 0x38($sp)
/* 7BF98 8002CFE8 AFB40030 */  sw         $s4, 0x30($sp)
/* 7BF9C 8002CFEC AFB3002C */  sw         $s3, 0x2c($sp)
/* 7BFA0 8002CFF0 AFB20028 */  sw         $s2, 0x28($sp)
/* 7BFA4 8002CFF4 AFB10024 */  sw         $s1, 0x24($sp)
/* 7BFA8 8002CFF8 AFB00020 */  sw         $s0, 0x20($sp)
/* 7BFAC 8002CFFC 92A60000 */  lbu        $a2, ($s5)
/* 7BFB0 8002D000 30C400FF */  andi       $a0, $a2, 0xff
/* 7BFB4 8002D004 2C830001 */  sltiu      $v1, $a0, 1
/* 7BFB8 8002D008 38820003 */  xori       $v0, $a0, 3
/* 7BFBC 8002D00C 2C420001 */  sltiu      $v0, $v0, 1
/* 7BFC0 8002D010 00621825 */  or         $v1, $v1, $v0
/* 7BFC4 8002D014 146000BD */  bnez       $v1, .L8002D30C
/* 7BFC8 8002D018 00A0B821 */   addu      $s7, $a1, $zero
/* 7BFCC 8002D01C 24C2FFF7 */  addiu      $v0, $a2, -9
/* 7BFD0 8002D020 2C420002 */  sltiu      $v0, $v0, 2
/* 7BFD4 8002D024 144000B9 */  bnez       $v0, .L8002D30C
/* 7BFD8 8002D028 3883000C */   xori      $v1, $a0, 0xc
/* 7BFDC 8002D02C 2C630001 */  sltiu      $v1, $v1, 1
/* 7BFE0 8002D030 38820012 */  xori       $v0, $a0, 0x12
/* 7BFE4 8002D034 2C420001 */  sltiu      $v0, $v0, 1
/* 7BFE8 8002D038 00621825 */  or         $v1, $v1, $v0
/* 7BFEC 8002D03C 146000B3 */  bnez       $v1, .L8002D30C
/* 7BFF0 8002D040 24020013 */   addiu     $v0, $zero, 0x13
/* 7BFF4 8002D044 108200B1 */  beq        $a0, $v0, .L8002D30C
/* 7BFF8 8002D048 00000000 */   nop
/* 7BFFC 8002D04C 92A20001 */  lbu        $v0, 1($s5)
/* 7C000 8002D050 92A30000 */  lbu        $v1, ($s5)
/* 7C004 8002D054 34420004 */  ori        $v0, $v0, 4
/* 7C008 8002D058 2463FFFF */  addiu      $v1, $v1, -1
/* 7C00C 8002D05C A2A20001 */  sb         $v0, 1($s5)
/* 7C010 8002D060 2C620018 */  sltiu      $v0, $v1, 0x18
/* 7C014 8002D064 1040008A */  beqz       $v0, .L8002D290
/* 7C018 8002D068 00031080 */   sll       $v0, $v1, 2
/* 7C01C 8002D06C 3C018008 */  lui        $at, %hi(D_8007D9C0)
/* 7C020 8002D070 00220821 */  addu       $at, $at, $v0
/* 7C024 8002D074 8C22D9C0 */  lw         $v0, %lo(D_8007D9C0)($at)
/* 7C028 8002D078 00400008 */  jr         $v0
/* 7C02C 8002D07C 00000000 */   nop
/* 7C030 8002D080 3C138008 */  lui        $s3, %hi(D_8007CB18)
/* 7C034 8002D084 2673CB18 */  addiu      $s3, $s3, %lo(D_8007CB18)
/* 7C038 8002D088 00002021 */  addu       $a0, $zero, $zero
/* 7C03C 8002D08C 00002821 */  addu       $a1, $zero, $zero
/* 7C040 8002D090 3C028008 */  lui        $v0, %hi(D_8007CBB0)
/* 7C044 8002D094 8C42CBB0 */  lw         $v0, %lo(D_8007CBB0)($v0)
/* 7C048 8002D098 0800B457 */  j          .L8002D15C
/* 7C04C 8002D09C 00003021 */   addu      $a2, $zero, $zero
/* 7C050 8002D0A0 3C138008 */  lui        $s3, %hi(D_8007CB24)
/* 7C054 8002D0A4 2673CB24 */  addiu      $s3, $s3, %lo(D_8007CB24)
/* 7C058 8002D0A8 00002021 */  addu       $a0, $zero, $zero
/* 7C05C 8002D0AC 00002821 */  addu       $a1, $zero, $zero
/* 7C060 8002D0B0 3C028008 */  lui        $v0, %hi(D_8007CBBC)
/* 7C064 8002D0B4 8C42CBBC */  lw         $v0, %lo(D_8007CBBC)($v0)
/* 7C068 8002D0B8 0800B457 */  j          .L8002D15C
/* 7C06C 8002D0BC 00003021 */   addu      $a2, $zero, $zero
/* 7C070 8002D0C0 3C138008 */  lui        $s3, %hi(D_8007CB24)
/* 7C074 8002D0C4 2673CB24 */  addiu      $s3, $s3, %lo(D_8007CB24)
/* 7C078 8002D0C8 00002021 */  addu       $a0, $zero, $zero
/* 7C07C 8002D0CC 00002821 */  addu       $a1, $zero, $zero
/* 7C080 8002D0D0 3C028008 */  lui        $v0, %hi(D_8007CBC8)
/* 7C084 8002D0D4 8C42CBC8 */  lw         $v0, %lo(D_8007CBC8)($v0)
/* 7C088 8002D0D8 0800B457 */  j          .L8002D15C
/* 7C08C 8002D0DC 00003021 */   addu      $a2, $zero, $zero
/* 7C090 8002D0E0 3C138008 */  lui        $s3, %hi(D_8007CB24)
/* 7C094 8002D0E4 2673CB24 */  addiu      $s3, $s3, %lo(D_8007CB24)
/* 7C098 8002D0E8 00002021 */  addu       $a0, $zero, $zero
/* 7C09C 8002D0EC 00002821 */  addu       $a1, $zero, $zero
/* 7C0A0 8002D0F0 3C028008 */  lui        $v0, %hi(D_8007CBD4)
/* 7C0A4 8002D0F4 8C42CBD4 */  lw         $v0, %lo(D_8007CBD4)($v0)
/* 7C0A8 8002D0F8 0800B457 */  j          .L8002D15C
/* 7C0AC 8002D0FC 00003021 */   addu      $a2, $zero, $zero
/* 7C0B0 8002D100 3C138008 */  lui        $s3, %hi(D_8007CB24)
/* 7C0B4 8002D104 2673CB24 */  addiu      $s3, $s3, %lo(D_8007CB24)
/* 7C0B8 8002D108 00002021 */  addu       $a0, $zero, $zero
/* 7C0BC 8002D10C 00002821 */  addu       $a1, $zero, $zero
/* 7C0C0 8002D110 3C028008 */  lui        $v0, %hi(D_8007CBE0)
/* 7C0C4 8002D114 8C42CBE0 */  lw         $v0, %lo(D_8007CBE0)($v0)
/* 7C0C8 8002D118 0800B457 */  j          .L8002D15C
/* 7C0CC 8002D11C 00003021 */   addu      $a2, $zero, $zero
/* 7C0D0 8002D120 3C138008 */  lui        $s3, %hi(D_8007CB24)
/* 7C0D4 8002D124 2673CB24 */  addiu      $s3, $s3, %lo(D_8007CB24)
/* 7C0D8 8002D128 00002021 */  addu       $a0, $zero, $zero
/* 7C0DC 8002D12C 00002821 */  addu       $a1, $zero, $zero
/* 7C0E0 8002D130 3C028008 */  lui        $v0, %hi(D_8007CBEC)
/* 7C0E4 8002D134 8C42CBEC */  lw         $v0, %lo(D_8007CBEC)($v0)
/* 7C0E8 8002D138 0800B457 */  j          .L8002D15C
/* 7C0EC 8002D13C 00003021 */   addu      $a2, $zero, $zero
/* 7C0F0 8002D140 3C138008 */  lui        $s3, %hi(D_8007CB24)
/* 7C0F4 8002D144 2673CB24 */  addiu      $s3, $s3, %lo(D_8007CB24)
/* 7C0F8 8002D148 00002021 */  addu       $a0, $zero, $zero
/* 7C0FC 8002D14C 00002821 */  addu       $a1, $zero, $zero
/* 7C100 8002D150 00003021 */  addu       $a2, $zero, $zero
/* 7C104 8002D154 3C028008 */  lui        $v0, %hi(D_8007CBF8)
/* 7C108 8002D158 8C42CBF8 */  lw         $v0, %lo(D_8007CBF8)($v0)
.L8002D15C:
/* 7C10C 8002D15C 240700FF */  addiu      $a3, $zero, 0xff
/* 7C110 8002D160 24030008 */  addiu      $v1, $zero, 8
/* 7C114 8002D164 AFA30010 */  sw         $v1, 0x10($sp)
/* 7C118 8002D168 3C038008 */  lui        $v1, %hi(D_8007CC40)
/* 7C11C 8002D16C 2463CC40 */  addiu      $v1, $v1, %lo(D_8007CC40)
/* 7C120 8002D170 AFA00014 */  sw         $zero, 0x14($sp)
/* 7C124 8002D174 AFA00018 */  sw         $zero, 0x18($sp)
/* 7C128 8002D178 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7C12C 8002D17C 0C029852 */  jal        func_800A6148
/* 7C130 8002D180 00439021 */   addu      $s2, $v0, $v1
/* 7C134 8002D184 0800B4A4 */  j          .L8002D290
/* 7C138 8002D188 AEA2144C */   sw        $v0, 0x144c($s5)
/* 7C13C 8002D18C 3C038008 */  lui        $v1, %hi(D_8007CBBC)
/* 7C140 8002D190 8C63CBBC */  lw         $v1, %lo(D_8007CBBC)($v1)
/* 7C144 8002D194 3C138008 */  lui        $s3, %hi(D_8007CB48)
/* 7C148 8002D198 2673CB48 */  addiu      $s3, $s3, %lo(D_8007CB48)
/* 7C14C 8002D19C 0800B4A1 */  j          .L8002D284
/* 7C150 8002D1A0 00000000 */   nop
/* 7C154 8002D1A4 3C038008 */  lui        $v1, %hi(D_8007CBC8)
/* 7C158 8002D1A8 8C63CBC8 */  lw         $v1, %lo(D_8007CBC8)($v1)
/* 7C15C 8002D1AC 3C138008 */  lui        $s3, %hi(D_8007CB48)
/* 7C160 8002D1B0 2673CB48 */  addiu      $s3, $s3, %lo(D_8007CB48)
/* 7C164 8002D1B4 0800B4A1 */  j          .L8002D284
/* 7C168 8002D1B8 00000000 */   nop
/* 7C16C 8002D1BC 3C038008 */  lui        $v1, %hi(D_8007CBD4)
/* 7C170 8002D1C0 8C63CBD4 */  lw         $v1, %lo(D_8007CBD4)($v1)
/* 7C174 8002D1C4 3C138008 */  lui        $s3, %hi(D_8007CB48)
/* 7C178 8002D1C8 2673CB48 */  addiu      $s3, $s3, %lo(D_8007CB48)
/* 7C17C 8002D1CC 0800B4A1 */  j          .L8002D284
/* 7C180 8002D1D0 00000000 */   nop
/* 7C184 8002D1D4 3C038008 */  lui        $v1, %hi(D_8007CBE0)
/* 7C188 8002D1D8 8C63CBE0 */  lw         $v1, %lo(D_8007CBE0)($v1)
/* 7C18C 8002D1DC 3C138008 */  lui        $s3, %hi(D_8007CB48)
/* 7C190 8002D1E0 2673CB48 */  addiu      $s3, $s3, %lo(D_8007CB48)
/* 7C194 8002D1E4 0800B4A1 */  j          .L8002D284
/* 7C198 8002D1E8 00000000 */   nop
/* 7C19C 8002D1EC 3C038008 */  lui        $v1, %hi(D_8007CBEC)
/* 7C1A0 8002D1F0 8C63CBEC */  lw         $v1, %lo(D_8007CBEC)($v1)
/* 7C1A4 8002D1F4 3C138008 */  lui        $s3, %hi(D_8007CB48)
/* 7C1A8 8002D1F8 2673CB48 */  addiu      $s3, $s3, %lo(D_8007CB48)
/* 7C1AC 8002D1FC 0800B4A1 */  j          .L8002D284
/* 7C1B0 8002D200 00000000 */   nop
/* 7C1B4 8002D204 3C038008 */  lui        $v1, %hi(D_8007CBF8)
/* 7C1B8 8002D208 8C63CBF8 */  lw         $v1, %lo(D_8007CBF8)($v1)
/* 7C1BC 8002D20C 3C138008 */  lui        $s3, %hi(D_8007CB48)
/* 7C1C0 8002D210 2673CB48 */  addiu      $s3, $s3, %lo(D_8007CB48)
/* 7C1C4 8002D214 0800B4A1 */  j          .L8002D284
/* 7C1C8 8002D218 00000000 */   nop
/* 7C1CC 8002D21C 3C038008 */  lui        $v1, %hi(D_8007CC04)
/* 7C1D0 8002D220 8C63CC04 */  lw         $v1, %lo(D_8007CC04)($v1)
/* 7C1D4 8002D224 3C138008 */  lui        $s3, %hi(D_8007CB6C)
/* 7C1D8 8002D228 2673CB6C */  addiu      $s3, $s3, %lo(D_8007CB6C)
/* 7C1DC 8002D22C 0800B4A1 */  j          .L8002D284
/* 7C1E0 8002D230 00000000 */   nop
/* 7C1E4 8002D234 3C038008 */  lui        $v1, %hi(D_8007CC10)
/* 7C1E8 8002D238 8C63CC10 */  lw         $v1, %lo(D_8007CC10)($v1)
/* 7C1EC 8002D23C 3C138008 */  lui        $s3, %hi(D_8007CB98)
/* 7C1F0 8002D240 2673CB98 */  addiu      $s3, $s3, %lo(D_8007CB98)
/* 7C1F4 8002D244 0800B4A1 */  j          .L8002D284
/* 7C1F8 8002D248 00000000 */   nop
/* 7C1FC 8002D24C 3C038008 */  lui        $v1, %hi(D_8007CC1C)
/* 7C200 8002D250 8C63CC1C */  lw         $v1, %lo(D_8007CC1C)($v1)
/* 7C204 8002D254 3C138008 */  lui        $s3, %hi(D_8007CB98)
/* 7C208 8002D258 2673CB98 */  addiu      $s3, $s3, %lo(D_8007CB98)
/* 7C20C 8002D25C 0800B4A1 */  j          .L8002D284
/* 7C210 8002D260 00000000 */   nop
/* 7C214 8002D264 3C038008 */  lui        $v1, %hi(D_8007CC28)
/* 7C218 8002D268 8C63CC28 */  lw         $v1, %lo(D_8007CC28)($v1)
/* 7C21C 8002D26C 0800B49F */  j          .L8002D27C
/* 7C220 8002D270 00000000 */   nop
/* 7C224 8002D274 3C038008 */  lui        $v1, %hi(D_8007CC34)
/* 7C228 8002D278 8C63CC34 */  lw         $v1, %lo(D_8007CC34)($v1)
.L8002D27C:
/* 7C22C 8002D27C 3C138008 */  lui        $s3, %hi(D_8007CBA4)
/* 7C230 8002D280 2673CBA4 */  addiu      $s3, $s3, %lo(D_8007CBA4)
.L8002D284:
/* 7C234 8002D284 3C028008 */  lui        $v0, %hi(D_8007CC40)
/* 7C238 8002D288 2442CC40 */  addiu      $v0, $v0, %lo(D_8007CC40)
/* 7C23C 8002D28C 00629021 */  addu       $s2, $v1, $v0
.L8002D290:
/* 7C240 8002D290 0000A021 */  addu       $s4, $zero, $zero
/* 7C244 8002D294 2416FFFF */  addiu      $s6, $zero, -1
/* 7C248 8002D298 02A08821 */  addu       $s1, $s5, $zero
/* 7C24C 8002D29C 26700004 */  addiu      $s0, $s3, 4
/* 7C250 8002D2A0 AEB30298 */  sw         $s3, 0x298($s5)
/* 7C254 8002D2A4 A6A002C4 */  sh         $zero, 0x2c4($s5)
.L8002D2A8:
/* 7C258 8002D2A8 86640000 */  lh         $a0, ($s3)
/* 7C25C 8002D2AC 10960016 */  beq        $a0, $s6, .L8002D308
/* 7C260 8002D2B0 00002821 */   addu      $a1, $zero, $zero
/* 7C264 8002D2B4 0C027DAC */  jal        func_8009F6B0
/* 7C268 8002D2B8 32E600FF */   andi      $a2, $s7, 0xff
/* 7C26C 8002D2BC AE22029C */  sw         $v0, 0x29c($s1)
/* 7C270 8002D2C0 90430066 */  lbu        $v1, 0x66($v0)
/* 7C274 8002D2C4 9204FFFF */  lbu        $a0, -1($s0)
/* 7C278 8002D2C8 00641825 */  or         $v1, $v1, $a0
/* 7C27C 8002D2CC A0430066 */  sb         $v1, 0x66($v0)
/* 7C280 8002D2D0 86050000 */  lh         $a1, ($s0)
/* 7C284 8002D2D4 10B60004 */  beq        $a1, $s6, .L8002D2E8
/* 7C288 8002D2D8 26100006 */   addiu     $s0, $s0, 6
/* 7C28C 8002D2DC 8E24029C */  lw         $a0, 0x29c($s1)
/* 7C290 8002D2E0 0C028703 */  jal        func_800A1C0C
/* 7C294 8002D2E4 00000000 */   nop
.L8002D2E8:
/* 7C298 8002D2E8 26730006 */  addiu      $s3, $s3, 6
/* 7C29C 8002D2EC 96A202C4 */  lhu        $v0, 0x2c4($s5)
/* 7C2A0 8002D2F0 26940001 */  addiu      $s4, $s4, 1
/* 7C2A4 8002D2F4 24420001 */  addiu      $v0, $v0, 1
/* 7C2A8 8002D2F8 A6A202C4 */  sh         $v0, 0x2c4($s5)
/* 7C2AC 8002D2FC 2A82000A */  slti       $v0, $s4, 0xa
/* 7C2B0 8002D300 1440FFE9 */  bnez       $v0, .L8002D2A8
/* 7C2B4 8002D304 26310004 */   addiu     $s1, $s1, 4
.L8002D308:
/* 7C2B8 8002D308 AEB21448 */  sw         $s2, 0x1448($s5)
.L8002D30C:
/* 7C2BC 8002D30C 8FBF0040 */  lw         $ra, 0x40($sp)
/* 7C2C0 8002D310 8FB7003C */  lw         $s7, 0x3c($sp)
/* 7C2C4 8002D314 8FB60038 */  lw         $s6, 0x38($sp)
/* 7C2C8 8002D318 8FB50034 */  lw         $s5, 0x34($sp)
/* 7C2CC 8002D31C 8FB40030 */  lw         $s4, 0x30($sp)
/* 7C2D0 8002D320 8FB3002C */  lw         $s3, 0x2c($sp)
/* 7C2D4 8002D324 8FB20028 */  lw         $s2, 0x28($sp)
/* 7C2D8 8002D328 8FB10024 */  lw         $s1, 0x24($sp)
/* 7C2DC 8002D32C 8FB00020 */  lw         $s0, 0x20($sp)
/* 7C2E0 8002D330 27BD0048 */  addiu      $sp, $sp, 0x48
/* 7C2E4 8002D334 03E00008 */  jr         $ra
/* 7C2E8 8002D338 00000000 */   nop

glabel func_8002D33C_7C2EC
/* 7C2EC 8002D33C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C2F0 8002D340 AFB20020 */  sw         $s2, 0x20($sp)
/* 7C2F4 8002D344 00809021 */  addu       $s2, $a0, $zero
/* 7C2F8 8002D348 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7C2FC 8002D34C AFB1001C */  sw         $s1, 0x1c($sp)
/* 7C300 8002D350 AFB00018 */  sw         $s0, 0x18($sp)
/* 7C304 8002D354 92450000 */  lbu        $a1, ($s2)
/* 7C308 8002D358 30A400FF */  andi       $a0, $a1, 0xff
/* 7C30C 8002D35C 2C830001 */  sltiu      $v1, $a0, 1
/* 7C310 8002D360 38820003 */  xori       $v0, $a0, 3
/* 7C314 8002D364 2C420001 */  sltiu      $v0, $v0, 1
/* 7C318 8002D368 00621825 */  or         $v1, $v1, $v0
/* 7C31C 8002D36C 1460001B */  bnez       $v1, .L8002D3DC
/* 7C320 8002D370 24A2FFF7 */   addiu     $v0, $a1, -9
/* 7C324 8002D374 2C420002 */  sltiu      $v0, $v0, 2
/* 7C328 8002D378 14400018 */  bnez       $v0, .L8002D3DC
/* 7C32C 8002D37C 3883000C */   xori      $v1, $a0, 0xc
/* 7C330 8002D380 2C630001 */  sltiu      $v1, $v1, 1
/* 7C334 8002D384 38820012 */  xori       $v0, $a0, 0x12
/* 7C338 8002D388 2C420001 */  sltiu      $v0, $v0, 1
/* 7C33C 8002D38C 00621825 */  or         $v1, $v1, $v0
/* 7C340 8002D390 14600012 */  bnez       $v1, .L8002D3DC
/* 7C344 8002D394 24020013 */   addiu     $v0, $zero, 0x13
/* 7C348 8002D398 10820010 */  beq        $a0, $v0, .L8002D3DC
/* 7C34C 8002D39C 00000000 */   nop
/* 7C350 8002D3A0 864202C4 */  lh         $v0, 0x2c4($s2)
/* 7C354 8002D3A4 1840000A */  blez       $v0, .L8002D3D0
/* 7C358 8002D3A8 00008021 */   addu      $s0, $zero, $zero
/* 7C35C 8002D3AC 02408821 */  addu       $s1, $s2, $zero
.L8002D3B0:
/* 7C360 8002D3B0 8E24029C */  lw         $a0, 0x29c($s1)
/* 7C364 8002D3B4 0C027E98 */  jal        func_8009FA60
/* 7C368 8002D3B8 26310004 */   addiu     $s1, $s1, 4
/* 7C36C 8002D3BC 864202C4 */  lh         $v0, 0x2c4($s2)
/* 7C370 8002D3C0 26100001 */  addiu      $s0, $s0, 1
/* 7C374 8002D3C4 0202102A */  slt        $v0, $s0, $v0
/* 7C378 8002D3C8 1440FFF9 */  bnez       $v0, .L8002D3B0
/* 7C37C 8002D3CC 00000000 */   nop
.L8002D3D0:
/* 7C380 8002D3D0 8E44144C */  lw         $a0, 0x144c($s2)
/* 7C384 8002D3D4 0C02987A */  jal        func_800A61E8
/* 7C388 8002D3D8 00000000 */   nop
.L8002D3DC:
/* 7C38C 8002D3DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7C390 8002D3E0 8FB20020 */  lw         $s2, 0x20($sp)
/* 7C394 8002D3E4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7C398 8002D3E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C39C 8002D3EC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C3A0 8002D3F0 03E00008 */  jr         $ra
/* 7C3A4 8002D3F4 00000000 */   nop

glabel func_8002D3F8_7C3A8
/* 7C3A8 8002D3F8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 7C3AC 8002D3FC F7B60050 */  sdc1       $f22, 0x50($sp)
/* 7C3B0 8002D400 4485B000 */  mtc1       $a1, $f22
/* 7C3B4 8002D404 00000000 */  nop
/* 7C3B8 8002D408 AFB40038 */  sw         $s4, 0x38($sp)
/* 7C3BC 8002D40C 0080A021 */  addu       $s4, $a0, $zero
/* 7C3C0 8002D410 AFBF0040 */  sw         $ra, 0x40($sp)
/* 7C3C4 8002D414 AFB5003C */  sw         $s5, 0x3c($sp)
/* 7C3C8 8002D418 AFB30034 */  sw         $s3, 0x34($sp)
/* 7C3CC 8002D41C AFB20030 */  sw         $s2, 0x30($sp)
/* 7C3D0 8002D420 AFB1002C */  sw         $s1, 0x2c($sp)
/* 7C3D4 8002D424 AFB00028 */  sw         $s0, 0x28($sp)
/* 7C3D8 8002D428 F7BA0060 */  sdc1       $f26, 0x60($sp)
/* 7C3DC 8002D42C F7B80058 */  sdc1       $f24, 0x58($sp)
/* 7C3E0 8002D430 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 7C3E4 8002D434 92850000 */  lbu        $a1, ($s4)
/* 7C3E8 8002D438 4486C000 */  mtc1       $a2, $f24
/* 7C3EC 8002D43C 00000000 */  nop
/* 7C3F0 8002D440 4487D000 */  mtc1       $a3, $f26
/* 7C3F4 8002D444 00000000 */  nop
/* 7C3F8 8002D448 30A400FF */  andi       $a0, $a1, 0xff
/* 7C3FC 8002D44C 2C830001 */  sltiu      $v1, $a0, 1
/* 7C400 8002D450 38820003 */  xori       $v0, $a0, 3
/* 7C404 8002D454 2C420001 */  sltiu      $v0, $v0, 1
/* 7C408 8002D458 00621825 */  or         $v1, $v1, $v0
/* 7C40C 8002D45C 1460009D */  bnez       $v1, .L8002D6D4
/* 7C410 8002D460 24A2FFF7 */   addiu     $v0, $a1, -9
/* 7C414 8002D464 2C420002 */  sltiu      $v0, $v0, 2
/* 7C418 8002D468 1440009A */  bnez       $v0, .L8002D6D4
/* 7C41C 8002D46C 3883000C */   xori      $v1, $a0, 0xc
/* 7C420 8002D470 2C630001 */  sltiu      $v1, $v1, 1
/* 7C424 8002D474 38820012 */  xori       $v0, $a0, 0x12
/* 7C428 8002D478 2C420001 */  sltiu      $v0, $v0, 1
/* 7C42C 8002D47C 00621825 */  or         $v1, $v1, $v0
/* 7C430 8002D480 14600094 */  bnez       $v1, .L8002D6D4
/* 7C434 8002D484 24020013 */   addiu     $v0, $zero, 0x13
/* 7C438 8002D488 10820092 */  beq        $a0, $v0, .L8002D6D4
/* 7C43C 8002D48C 00000000 */   nop
/* 7C440 8002D490 1080001E */  beqz       $a0, .L8002D50C
/* 7C444 8002D494 28820003 */   slti      $v0, $a0, 3
/* 7C448 8002D498 14400005 */  bnez       $v0, .L8002D4B0
/* 7C44C 8002D49C 28820009 */   slti      $v0, $a0, 9
/* 7C450 8002D4A0 1040001A */  beqz       $v0, .L8002D50C
/* 7C454 8002D4A4 28820004 */   slti      $v0, $a0, 4
/* 7C458 8002D4A8 14400018 */  bnez       $v0, .L8002D50C
/* 7C45C 8002D4AC 00000000 */   nop
.L8002D4B0:
/* 7C460 8002D4B0 8E84144C */  lw         $a0, 0x144c($s4)
/* 7C464 8002D4B4 0C029883 */  jal        func_800A620C
/* 7C468 8002D4B8 00009021 */   addu      $s2, $zero, $zero
/* 7C46C 8002D4BC 868202C4 */  lh         $v0, 0x2c4($s4)
/* 7C470 8002D4C0 18400012 */  blez       $v0, .L8002D50C
/* 7C474 8002D4C4 2411F800 */   addiu     $s1, $zero, -0x800
/* 7C478 8002D4C8 02808021 */  addu       $s0, $s4, $zero
.L8002D4CC:
/* 7C47C 8002D4CC 8E04029C */  lw         $a0, 0x29c($s0)
/* 7C480 8002D4D0 3C058008 */  lui        $a1, %hi(D_8007DA20)
/* 7C484 8002D4D4 24A5DA20 */  addiu      $a1, $a1, %lo(D_8007DA20)
/* 7C488 8002D4D8 0C0285D4 */  jal        func_800A1750
/* 7C48C 8002D4DC 26100004 */   addiu     $s0, $s0, 4
/* 7C490 8002D4E0 8E83144C */  lw         $v1, 0x144c($s4)
/* 7C494 8002D4E4 90630000 */  lbu        $v1, ($v1)
/* 7C498 8002D4E8 00031A00 */  sll        $v1, $v1, 8
/* 7C49C 8002D4EC 00711824 */  and        $v1, $v1, $s1
/* 7C4A0 8002D4F0 34630001 */  ori        $v1, $v1, 1
/* 7C4A4 8002D4F4 A443001C */  sh         $v1, 0x1c($v0)
/* 7C4A8 8002D4F8 868202C4 */  lh         $v0, 0x2c4($s4)
/* 7C4AC 8002D4FC 26520001 */  addiu      $s2, $s2, 1
/* 7C4B0 8002D500 0242102A */  slt        $v0, $s2, $v0
/* 7C4B4 8002D504 1440FFF1 */  bnez       $v0, .L8002D4CC
/* 7C4B8 8002D508 00000000 */   nop
.L8002D50C:
/* 7C4BC 8002D50C 8E931448 */  lw         $s3, 0x1448($s4)
/* 7C4C0 8002D510 00009021 */  addu       $s2, $zero, $zero
/* 7C4C4 8002D514 241502C8 */  addiu      $s5, $zero, 0x2c8
/* 7C4C8 8002D518 4480A000 */  mtc1       $zero, $f20
/* 7C4CC 8002D51C 00000000 */  nop
/* 7C4D0 8002D520 26710008 */  addiu      $s1, $s3, 8
.L8002D524:
/* 7C4D4 8002D524 86630000 */  lh         $v1, ($s3)
/* 7C4D8 8002D528 2402FFFF */  addiu      $v0, $zero, -1
/* 7C4DC 8002D52C 10620069 */  beq        $v1, $v0, .L8002D6D4
/* 7C4E0 8002D530 00000000 */   nop
/* 7C4E4 8002D534 8622FFFA */  lh         $v0, -6($s1)
/* 7C4E8 8002D538 44822000 */  mtc1       $v0, $f4
/* 7C4EC 8002D53C 00000000 */  nop
/* 7C4F0 8002D540 46802120 */  cvt.s.w    $f4, $f4
/* 7C4F4 8002D544 4604B100 */  add.s      $f4, $f22, $f4
/* 7C4F8 8002D548 3C02B60B */  lui        $v0, 0xb60b
/* 7C4FC 8002D54C 344260B7 */  ori        $v0, $v0, 0x60b7
/* 7C500 8002D550 4600200D */  trunc.w.s  $f0, $f4
/* 7C504 8002D554 44040000 */  mfc1       $a0, $f0
/* 7C508 8002D558 00000000 */  nop
/* 7C50C 8002D55C 00820018 */  mult       $a0, $v0
/* 7C510 8002D560 8622FFFC */  lh         $v0, -4($s1)
/* 7C514 8002D564 44820000 */  mtc1       $v0, $f0
/* 7C518 8002D568 00000000 */  nop
/* 7C51C 8002D56C 46800020 */  cvt.s.w    $f0, $f0
/* 7C520 8002D570 4600C180 */  add.s      $f6, $f24, $f0
/* 7C524 8002D574 000417C3 */  sra        $v0, $a0, 0x1f
/* 7C528 8002D578 44840000 */  mtc1       $a0, $f0
/* 7C52C 8002D57C 00000000 */  nop
/* 7C530 8002D580 46800020 */  cvt.s.w    $f0, $f0
/* 7C534 8002D584 46002101 */  sub.s      $f4, $f4, $f0
/* 7C538 8002D588 00004010 */  mfhi       $t0
/* 7C53C 8002D58C 00000000 */  nop
/* 7C540 8002D590 00000000 */  nop
/* 7C544 8002D594 01041821 */  addu       $v1, $t0, $a0
/* 7C548 8002D598 00031A43 */  sra        $v1, $v1, 9
/* 7C54C 8002D59C 00621823 */  subu       $v1, $v1, $v0
/* 7C550 8002D5A0 00031040 */  sll        $v0, $v1, 1
/* 7C554 8002D5A4 00431021 */  addu       $v0, $v0, $v1
/* 7C558 8002D5A8 00021900 */  sll        $v1, $v0, 4
/* 7C55C 8002D5AC 00621823 */  subu       $v1, $v1, $v0
/* 7C560 8002D5B0 00031900 */  sll        $v1, $v1, 4
/* 7C564 8002D5B4 00832023 */  subu       $a0, $a0, $v1
/* 7C568 8002D5B8 44841000 */  mtc1       $a0, $f2
/* 7C56C 8002D5BC 00000000 */  nop
/* 7C570 8002D5C0 468010A0 */  cvt.s.w    $f2, $f2
/* 7C574 8002D5C4 8622FFFE */  lh         $v0, -2($s1)
/* 7C578 8002D5C8 46041080 */  add.s      $f2, $f2, $f4
/* 7C57C 8002D5CC 24040001 */  addiu      $a0, $zero, 1
/* 7C580 8002D5D0 44820000 */  mtc1       $v0, $f0
/* 7C584 8002D5D4 00000000 */  nop
/* 7C588 8002D5D8 46800020 */  cvt.s.w    $f0, $f0
/* 7C58C 8002D5DC 4600D200 */  add.s      $f8, $f26, $f0
/* 7C590 8002D5E0 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 7C594 8002D5E4 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 7C598 8002D5E8 86220000 */  lh         $v0, ($s1)
/* 7C59C 8002D5EC 3C0143B4 */  lui        $at, 0x43b4
/* 7C5A0 8002D5F0 44810000 */  mtc1       $at, $f0
/* 7C5A4 8002D5F4 00000000 */  nop
/* 7C5A8 8002D5F8 4614403C */  c.lt.s     $f8, $f20
/* 7C5AC 8002D5FC 00000000 */  nop
/* 7C5B0 8002D600 00000000 */  nop
/* 7C5B4 8002D604 44822000 */  mtc1       $v0, $f4
/* 7C5B8 8002D608 00000000 */  nop
/* 7C5BC 8002D60C 46802120 */  cvt.s.w    $f4, $f4
/* 7C5C0 8002D610 2C620002 */  sltiu      $v0, $v1, 2
/* 7C5C4 8002D614 45010002 */  bc1t       .L8002D620
/* 7C5C8 8002D618 46001081 */   sub.s     $f2, $f2, $f0
/* 7C5CC 8002D61C 00002021 */  addu       $a0, $zero, $zero
.L8002D620:
/* 7C5D0 8002D620 00441024 */  and        $v0, $v0, $a0
/* 7C5D4 8002D624 10400005 */  beqz       $v0, .L8002D63C
/* 7C5D8 8002D628 02958021 */   addu      $s0, $s4, $s5
/* 7C5DC 8002D62C 3C014120 */  lui        $at, 0x4120
/* 7C5E0 8002D630 44810000 */  mtc1       $at, $f0
/* 7C5E4 8002D634 00000000 */  nop
/* 7C5E8 8002D638 46003181 */  sub.s      $f6, $f6, $f0
.L8002D63C:
/* 7C5EC 8002D63C 02002021 */  addu       $a0, $s0, $zero
/* 7C5F0 8002D640 3C013CA3 */  lui        $at, 0x3ca3
/* 7C5F4 8002D644 3421D70A */  ori        $at, $at, 0xd70a
/* 7C5F8 8002D648 44810000 */  mtc1       $at, $f0
/* 7C5FC 8002D64C 00000000 */  nop
/* 7C600 8002D650 2631000A */  addiu      $s1, $s1, 0xa
/* 7C604 8002D654 4405A000 */  mfc1       $a1, $f20
/* 7C608 8002D658 00000000 */  nop
/* 7C60C 8002D65C 44062000 */  mfc1       $a2, $f4
/* 7C610 8002D660 00000000 */  nop
/* 7C614 8002D664 4407A000 */  mfc1       $a3, $f20
/* 7C618 8002D668 00000000 */  nop
/* 7C61C 8002D66C 26B50040 */  addiu      $s5, $s5, 0x40
/* 7C620 8002D670 E7A20014 */  swc1       $f2, 0x14($sp)
/* 7C624 8002D674 E7A60018 */  swc1       $f6, 0x18($sp)
/* 7C628 8002D678 E7A8001C */  swc1       $f8, 0x1c($sp)
/* 7C62C 8002D67C 0C02FD0E */  jal        func_800BF438
/* 7C630 8002D680 E7A00010 */   swc1      $f0, 0x10($sp)
/* 7C634 8002D684 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 7C638 8002D688 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 7C63C 8002D68C 3C02DA38 */  lui        $v0, 0xda38
/* 7C640 8002D690 34420003 */  ori        $v0, $v0, 3
/* 7C644 8002D694 AC620000 */  sw         $v0, ($v1)
/* 7C648 8002D698 AC700004 */  sw         $s0, 4($v1)
/* 7C64C 8002D69C 86620000 */  lh         $v0, ($s3)
/* 7C650 8002D6A0 26520001 */  addiu      $s2, $s2, 1
/* 7C654 8002D6A4 00002821 */  addu       $a1, $zero, $zero
/* 7C658 8002D6A8 00021080 */  sll        $v0, $v0, 2
/* 7C65C 8002D6AC 00541021 */  addu       $v0, $v0, $s4
/* 7C660 8002D6B0 8C44029C */  lw         $a0, 0x29c($v0)
/* 7C664 8002D6B4 24630008 */  addiu      $v1, $v1, 8
/* 7C668 8002D6B8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 7C66C 8002D6BC AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 7C670 8002D6C0 0C027F77 */  jal        func_8009FDDC
/* 7C674 8002D6C4 2673000A */   addiu     $s3, $s3, 0xa
/* 7C678 8002D6C8 2A420046 */  slti       $v0, $s2, 0x46
/* 7C67C 8002D6CC 1440FF95 */  bnez       $v0, .L8002D524
/* 7C680 8002D6D0 00000000 */   nop
.L8002D6D4:
/* 7C684 8002D6D4 8FBF0040 */  lw         $ra, 0x40($sp)
/* 7C688 8002D6D8 8FB5003C */  lw         $s5, 0x3c($sp)
/* 7C68C 8002D6DC 8FB40038 */  lw         $s4, 0x38($sp)
/* 7C690 8002D6E0 8FB30034 */  lw         $s3, 0x34($sp)
/* 7C694 8002D6E4 8FB20030 */  lw         $s2, 0x30($sp)
/* 7C698 8002D6E8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 7C69C 8002D6EC 8FB00028 */  lw         $s0, 0x28($sp)
/* 7C6A0 8002D6F0 D7BA0060 */  ldc1       $f26, 0x60($sp)
/* 7C6A4 8002D6F4 D7B80058 */  ldc1       $f24, 0x58($sp)
/* 7C6A8 8002D6F8 D7B60050 */  ldc1       $f22, 0x50($sp)
/* 7C6AC 8002D6FC D7B40048 */  ldc1       $f20, 0x48($sp)
/* 7C6B0 8002D700 27BD0068 */  addiu      $sp, $sp, 0x68
/* 7C6B4 8002D704 03E00008 */  jr         $ra
/* 7C6B8 8002D708 00000000 */   nop
/* 7C6BC 8002D70C 00000000 */  nop
