glabel func_8009D078
/* 7C78 8009D078 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7C7C 8009D07C 00002021 */  addu       $a0, $zero, $zero
/* 7C80 8009D080 24050006 */  addiu      $a1, $zero, 0x6
/* 7C84 8009D084 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C88 8009D088 0C02DAC0 */  jal        func_800B6B00
/* 7C8C 8009D08C AFB00018 */   sw        $s0, 0x18($sp)
/* 7C90 8009D090 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 7C94 8009D094 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 7C98 8009D098 3C058010 */  lui        $a1, %hi(D_800F9C30)
/* 7C9C 8009D09C 24A59C30 */  addiu      $a1, $a1, %lo(D_800F9C30)
/* 7CA0 8009D0A0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7CA4 8009D0A4 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 7CA8 8009D0A8 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7CAC 8009D0AC C422A064 */  lwc1       $f2, %lo(D_8014A064)($at)
/* 7CB0 8009D0B0 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7CB4 8009D0B4 C424A068 */  lwc1       $f4, %lo(D_8014A068)($at)
/* 7CB8 8009D0B8 4600018D */  trunc.w.s  $f6, $f0
/* 7CBC 8009D0BC E7A60010 */  swc1       $f6, 0x10($sp)
/* 7CC0 8009D0C0 4600100D */  trunc.w.s  $f0, $f2
/* 7CC4 8009D0C4 44060000 */  mfc1       $a2, $f0
/* 7CC8 8009D0C8 00000000 */  nop
/* 7CCC 8009D0CC 4600200D */  trunc.w.s  $f0, $f4
/* 7CD0 8009D0D0 44070000 */  mfc1       $a3, $f0
/* 7CD4 8009D0D4 00000000 */  nop
/* 7CD8 8009D0D8 0C030180 */  jal        func_800C0600
/* 7CDC 8009D0DC 02002021 */   addu      $a0, $s0, $zero
/* 7CE0 8009D0E0 00002021 */  addu       $a0, $zero, $zero
/* 7CE4 8009D0E4 24050003 */  addiu      $a1, $zero, 0x3
/* 7CE8 8009D0E8 0C02DAE0 */  jal        func_800B6B80
/* 7CEC 8009D0EC 2406001A */   addiu     $a2, $zero, 0x1A
/* 7CF0 8009D0F0 00002021 */  addu       $a0, $zero, $zero
/* 7CF4 8009D0F4 0C02DA9C */  jal        func_800B6A70
/* 7CF8 8009D0F8 02002821 */   addu      $a1, $s0, $zero
/* 7CFC 8009D0FC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7D00 8009D100 8FB00018 */  lw         $s0, 0x18($sp)
/* 7D04 8009D104 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7D08 8009D108 03E00008 */  jr         $ra
/* 7D0C 8009D10C 00000000 */   nop
.size func_8009D078, . - func_8009D078
