.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009C484
/* 7084 8009C484 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 7088 8009C488 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 708C 8009C48C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7090 8009C490 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7094 8009C494 30422000 */  andi       $v0, $v0, 0x2000
/* 7098 8009C498 1040000A */  beqz       $v0, .L8009C4C4
/* 709C 8009C49C AFB00018 */   sw        $s0, 0x18($sp)
/* 70A0 8009C4A0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 70A4 8009C4A4 C420D0D4 */  lwc1       $f0, %lo(D_8016D0D4)($at)
/* 70A8 8009C4A8 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 70AC 8009C4AC C422CFA8 */  lwc1       $f2, %lo(D_8014CFA8)($at)
/* 70B0 8009C4B0 46020001 */  sub.s      $f0, $f0, $f2
/* 70B4 8009C4B4 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 70B8 8009C4B8 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* 70BC 8009C4BC 08027140 */  j          .L8009C500
/* 70C0 8009C4C0 00002021 */   addu      $a0, $zero, $zero
.L8009C4C4:
/* 70C4 8009C4C4 3C018017 */  lui        $at, %hi(D_8016E568)
/* 70C8 8009C4C8 C424E568 */  lwc1       $f4, %lo(D_8016E568)($at)
/* 70CC 8009C4CC 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 70D0 8009C4D0 C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 70D4 8009C4D4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 70D8 8009C4D8 C422D0D0 */  lwc1       $f2, %lo(D_8016D0D0)($at)
/* 70DC 8009C4DC 46002101 */  sub.s      $f4, $f4, $f0
/* 70E0 8009C4E0 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 70E4 8009C4E4 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 70E8 8009C4E8 46001081 */  sub.s      $f2, $f2, $f0
/* 70EC 8009C4EC 3C018017 */  lui        $at, %hi(D_8016E568)
/* 70F0 8009C4F0 E424E568 */  swc1       $f4, %lo(D_8016E568)($at)
/* 70F4 8009C4F4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 70F8 8009C4F8 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 70FC 8009C4FC 00002021 */  addu       $a0, $zero, $zero
.L8009C500:
/* 7100 8009C500 0C02DAC0 */  jal        func_800B6B00
/* 7104 8009C504 24050006 */   addiu     $a1, $zero, 6
/* 7108 8009C508 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 710C 8009C50C 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 7110 8009C510 3C058010 */  lui        $a1, %hi(D_800F9B80)
/* 7114 8009C514 24A59B80 */  addiu      $a1, $a1, %lo(D_800F9B80)
/* 7118 8009C518 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 711C 8009C51C C420D0D4 */  lwc1       $f0, %lo(D_8016D0D4)($at)
/* 7120 8009C520 3C018017 */  lui        $at, %hi(D_8016E568)
/* 7124 8009C524 C422E568 */  lwc1       $f2, %lo(D_8016E568)($at)
/* 7128 8009C528 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 712C 8009C52C C424D0D0 */  lwc1       $f4, %lo(D_8016D0D0)($at)
/* 7130 8009C530 4600018D */  trunc.w.s  $f6, $f0
/* 7134 8009C534 E7A60010 */  swc1       $f6, 0x10($sp)
/* 7138 8009C538 4600100D */  trunc.w.s  $f0, $f2
/* 713C 8009C53C 44060000 */  mfc1       $a2, $f0
/* 7140 8009C540 00000000 */  nop
/* 7144 8009C544 4600200D */  trunc.w.s  $f0, $f4
/* 7148 8009C548 44070000 */  mfc1       $a3, $f0
/* 714C 8009C54C 00000000 */  nop
/* 7150 8009C550 0C030180 */  jal        func_800C0600
/* 7154 8009C554 02002021 */   addu      $a0, $s0, $zero
/* 7158 8009C558 00002021 */  addu       $a0, $zero, $zero
/* 715C 8009C55C 24050003 */  addiu      $a1, $zero, 3
/* 7160 8009C560 0C02DAE0 */  jal        func_800B6B80
/* 7164 8009C564 2406001A */   addiu     $a2, $zero, 0x1a
/* 7168 8009C568 00002021 */  addu       $a0, $zero, $zero
/* 716C 8009C56C 0C02DA9C */  jal        func_800B6A70
/* 7170 8009C570 02002821 */   addu      $a1, $s0, $zero
/* 7174 8009C574 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7178 8009C578 8FB00018 */  lw         $s0, 0x18($sp)
/* 717C 8009C57C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7180 8009C580 03E00008 */  jr         $ra
/* 7184 8009C584 00000000 */   nop
