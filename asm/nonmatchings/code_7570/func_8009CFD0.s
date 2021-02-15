.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009CFD0
/* 7BD0 8009CFD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7BD4 8009CFD4 00002021 */  addu       $a0, $zero, $zero
/* 7BD8 8009CFD8 24050006 */  addiu      $a1, $zero, 6
/* 7BDC 8009CFDC AFBF001C */  sw         $ra, 0x1c($sp)
/* 7BE0 8009CFE0 0C02DAC0 */  jal        func_800B6B00
/* 7BE4 8009CFE4 AFB00018 */   sw        $s0, 0x18($sp)
/* 7BE8 8009CFE8 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 7BEC 8009CFEC 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 7BF0 8009CFF0 3C018015 */  lui        $at, %hi(D_8014A084)
/* 7BF4 8009CFF4 C420A084 */  lwc1       $f0, %lo(D_8014A084)($at)
/* 7BF8 8009CFF8 3C058010 */  lui        $a1, %hi(D_800F9C08)
/* 7BFC 8009CFFC 24A59C08 */  addiu      $a1, $a1, %lo(D_800F9C08)
/* 7C00 8009D000 4600008D */  trunc.w.s  $f2, $f0
/* 7C04 8009D004 E7A20010 */  swc1       $f2, 0x10($sp)
/* 7C08 8009D008 3C018015 */  lui        $at, %hi(D_8014A088)
/* 7C0C 8009D00C C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 7C10 8009D010 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 7C14 8009D014 C422A07C */  lwc1       $f2, %lo(D_8014A07C)($at)
/* 7C18 8009D018 3C018015 */  lui        $at, %hi(D_8014A080)
/* 7C1C 8009D01C C424A080 */  lwc1       $f4, %lo(D_8014A080)($at)
/* 7C20 8009D020 4600018D */  trunc.w.s  $f6, $f0
/* 7C24 8009D024 E7A60014 */  swc1       $f6, 0x14($sp)
/* 7C28 8009D028 4600100D */  trunc.w.s  $f0, $f2
/* 7C2C 8009D02C 44060000 */  mfc1       $a2, $f0
/* 7C30 8009D030 00000000 */  nop
/* 7C34 8009D034 4600200D */  trunc.w.s  $f0, $f4
/* 7C38 8009D038 44070000 */  mfc1       $a3, $f0
/* 7C3C 8009D03C 00000000 */  nop
/* 7C40 8009D040 0C030180 */  jal        func_800C0600
/* 7C44 8009D044 02002021 */   addu      $a0, $s0, $zero
/* 7C48 8009D048 00002021 */  addu       $a0, $zero, $zero
/* 7C4C 8009D04C 24050003 */  addiu      $a1, $zero, 3
/* 7C50 8009D050 0C02DAE0 */  jal        func_800B6B80
/* 7C54 8009D054 2406001A */   addiu     $a2, $zero, 0x1a
/* 7C58 8009D058 00002021 */  addu       $a0, $zero, $zero
/* 7C5C 8009D05C 0C02DA9C */  jal        func_800B6A70
/* 7C60 8009D060 02002821 */   addu      $a1, $s0, $zero
/* 7C64 8009D064 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7C68 8009D068 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C6C 8009D06C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7C70 8009D070 03E00008 */  jr         $ra
/* 7C74 8009D074 00000000 */   nop
