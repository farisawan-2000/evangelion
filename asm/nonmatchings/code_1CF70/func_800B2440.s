.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2440
/* 1D040 800B2440 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 1D044 800B2444 00802821 */  addu       $a1, $a0, $zero
/* 1D048 800B2448 3C048010 */  lui        $a0, %hi(D_801029E0)
/* 1D04C 800B244C 8C8429E0 */  lw         $a0, %lo(D_801029E0)($a0)
/* 1D050 800B2450 3C038010 */  lui        $v1, %hi(D_801029E4)
/* 1D054 800B2454 8C6329E4 */  lw         $v1, %lo(D_801029E4)($v1)
/* 1D058 800B2458 27A20078 */  addiu      $v0, $sp, 0x78
/* 1D05C 800B245C 24060002 */  addiu      $a2, $zero, 2
/* 1D060 800B2460 AFBF0098 */  sw         $ra, 0x98($sp)
/* 1D064 800B2464 AFA00010 */  sw         $zero, 0x10($sp)
/* 1D068 800B2468 AFA20064 */  sw         $v0, 0x64($sp)
/* 1D06C 800B246C AFA60018 */  sw         $a2, 0x18($sp)
/* 1D070 800B2470 24630030 */  addiu      $v1, $v1, 0x30
/* 1D074 800B2474 AFA30060 */  sw         $v1, 0x60($sp)
/* 1D078 800B2478 8CA20000 */  lw         $v0, ($a1)
/* 1D07C 800B247C 3C03800D */  lui        $v1, %hi(D_800CA8B0)
/* 1D080 800B2480 2463A8B0 */  addiu      $v1, $v1, %lo(D_800CA8B0)
/* 1D084 800B2484 AFA20050 */  sw         $v0, 0x50($sp)
/* 1D088 800B2488 8CA70004 */  lw         $a3, 4($a1)
/* 1D08C 800B248C 3C02800D */  lui        $v0, %hi(D_800CA980)
/* 1D090 800B2490 2442A980 */  addiu      $v0, $v0, %lo(D_800CA980)
/* 1D094 800B2494 00431023 */  subu       $v0, $v0, $v1
/* 1D098 800B2498 AFA60020 */  sw         $a2, 0x20($sp)
/* 1D09C 800B249C AFA30028 */  sw         $v1, 0x28($sp)
/* 1D0A0 800B24A0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 1D0A4 800B24A4 AFA00024 */  sw         $zero, 0x24($sp)
/* 1D0A8 800B24A8 AFA70054 */  sw         $a3, 0x54($sp)
/* 1D0AC 800B24AC 8CA20008 */  lw         $v0, 8($a1)
/* 1D0B0 800B24B0 AFA20030 */  sw         $v0, 0x30($sp)
/* 1D0B4 800B24B4 8CA3000C */  lw         $v1, 0xc($a1)
/* 1D0B8 800B24B8 24021000 */  addiu      $v0, $zero, 0x1000
/* 1D0BC 800B24BC AFA20034 */  sw         $v0, 0x34($sp)
/* 1D0C0 800B24C0 24020800 */  addiu      $v0, $zero, 0x800
/* 1D0C4 800B24C4 AFA2003C */  sw         $v0, 0x3c($sp)
/* 1D0C8 800B24C8 AFA00040 */  sw         $zero, 0x40($sp)
/* 1D0CC 800B24CC AFA00044 */  sw         $zero, 0x44($sp)
/* 1D0D0 800B24D0 AFA00048 */  sw         $zero, 0x48($sp)
/* 1D0D4 800B24D4 AFA0004C */  sw         $zero, 0x4c($sp)
/* 1D0D8 800B24D8 AFA00058 */  sw         $zero, 0x58($sp)
/* 1D0DC 800B24DC AFA0005C */  sw         $zero, 0x5c($sp)
/* 1D0E0 800B24E0 0C0303FC */  jal        func_800C0FF0
/* 1D0E4 800B24E4 AFA30038 */   sw        $v1, 0x38($sp)
/* 1D0E8 800B24E8 00402021 */  addu       $a0, $v0, $zero
/* 1D0EC 800B24EC 27A50010 */  addiu      $a1, $sp, 0x10
/* 1D0F0 800B24F0 0C03024C */  jal        func_800C0930
/* 1D0F4 800B24F4 24060001 */   addiu     $a2, $zero, 1
/* 1D0F8 800B24F8 3C048010 */  lui        $a0, %hi(D_801029E4)
/* 1D0FC 800B24FC 8C8429E4 */  lw         $a0, %lo(D_801029E4)($a0)
/* 1D100 800B2500 00002821 */  addu       $a1, $zero, $zero
/* 1D104 800B2504 24060001 */  addiu      $a2, $zero, 1
/* 1D108 800B2508 0C030200 */  jal        func_800C0800
/* 1D10C 800B250C 24840030 */   addiu     $a0, $a0, 0x30
/* 1D110 800B2510 8FBF0098 */  lw         $ra, 0x98($sp)
/* 1D114 800B2514 03E00008 */  jr         $ra
/* 1D118 800B2518 27BD00A0 */   addiu     $sp, $sp, 0xa0
/* 1D11C 800B251C 00000000 */  nop
