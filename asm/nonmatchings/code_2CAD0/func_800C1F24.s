.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1F24
/* 2CB24 800C1F24 3C03800F */  lui        $v1, %hi(D_800F69D0)
/* 2CB28 800C1F28 8C6369D0 */  lw         $v1, %lo(D_800F69D0)($v1)
/* 2CB2C 800C1F2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CB30 800C1F30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CB34 800C1F34 AFB00010 */  sw         $s0, 0x10($sp)
/* 2CB38 800C1F38 8C620000 */  lw         $v0, ($v1)
/* 2CB3C 800C1F3C 10430044 */  beq        $v0, $v1, .L800C2050
/* 2CB40 800C1F40 00000000 */   nop
.L800C1F44:
/* 2CB44 800C1F44 3C02800F */  lui        $v0, %hi(D_800F69D0)
/* 2CB48 800C1F48 8C4269D0 */  lw         $v0, %lo(D_800F69D0)($v0)
/* 2CB4C 800C1F4C 8C500000 */  lw         $s0, ($v0)
/* 2CB50 800C1F50 16020006 */  bne        $s0, $v0, .L800C1F6C
/* 2CB54 800C1F54 00000000 */   nop
/* 2CB58 800C1F58 0C031E40 */  jal        func_800C7900
/* 2CB5C 800C1F5C 00002021 */   addu      $a0, $zero, $zero
/* 2CB60 800C1F60 3C018017 */  lui        $at, %hi(D_8016D0D8)
/* 2CB64 800C1F64 08030814 */  j          .L800C2050
/* 2CB68 800C1F68 AC20D0D8 */   sw        $zero, %lo(D_8016D0D8)($at)
.L800C1F6C:
/* 2CB6C 800C1F6C 0C031E38 */  jal        func_800C78E0
/* 2CB70 800C1F70 00000000 */   nop
/* 2CB74 800C1F74 3C038017 */  lui        $v1, %hi(D_8016D0D8)
/* 2CB78 800C1F78 8C63D0D8 */  lw         $v1, %lo(D_8016D0D8)($v1)
/* 2CB7C 800C1F7C 3C018017 */  lui        $at, %hi(D_8016D0D8)
/* 2CB80 800C1F80 AC22D0D8 */  sw         $v0, %lo(D_8016D0D8)($at)
/* 2CB84 800C1F84 00431023 */  subu       $v0, $v0, $v1
/* 2CB88 800C1F88 8E030010 */  lw         $v1, 0x10($s0)
/* 2CB8C 800C1F8C 00403821 */  addu       $a3, $v0, $zero
/* 2CB90 800C1F90 00003021 */  addu       $a2, $zero, $zero
/* 2CB94 800C1F94 00C3102B */  sltu       $v0, $a2, $v1
/* 2CB98 800C1F98 14400007 */  bnez       $v0, .L800C1FB8
/* 2CB9C 800C1F9C 00000000 */   nop
/* 2CBA0 800C1FA0 14660010 */  bne        $v1, $a2, .L800C1FE4
/* 2CBA4 800C1FA4 00000000 */   nop
/* 2CBA8 800C1FA8 8E020014 */  lw         $v0, 0x14($s0)
/* 2CBAC 800C1FAC 00E2102B */  sltu       $v0, $a3, $v0
/* 2CBB0 800C1FB0 1040000C */  beqz       $v0, .L800C1FE4
/* 2CBB4 800C1FB4 00000000 */   nop
.L800C1FB8:
/* 2CBB8 800C1FB8 8E040010 */  lw         $a0, 0x10($s0)
/* 2CBBC 800C1FBC 8E050014 */  lw         $a1, 0x14($s0)
/* 2CBC0 800C1FC0 00A7102B */  sltu       $v0, $a1, $a3
/* 2CBC4 800C1FC4 00A72823 */  subu       $a1, $a1, $a3
/* 2CBC8 800C1FC8 00862023 */  subu       $a0, $a0, $a2
/* 2CBCC 800C1FCC 00822023 */  subu       $a0, $a0, $v0
/* 2CBD0 800C1FD0 AE040010 */  sw         $a0, 0x10($s0)
/* 2CBD4 800C1FD4 0C030818 */  jal        func_800C2060
/* 2CBD8 800C1FD8 AE050014 */   sw        $a1, 0x14($s0)
/* 2CBDC 800C1FDC 08030814 */  j          .L800C2050
/* 2CBE0 800C1FE0 00000000 */   nop
.L800C1FE4:
/* 2CBE4 800C1FE4 8E030004 */  lw         $v1, 4($s0)
/* 2CBE8 800C1FE8 8E020000 */  lw         $v0, ($s0)
/* 2CBEC 800C1FEC AC620000 */  sw         $v0, ($v1)
/* 2CBF0 800C1FF0 8E030000 */  lw         $v1, ($s0)
/* 2CBF4 800C1FF4 8E020004 */  lw         $v0, 4($s0)
/* 2CBF8 800C1FF8 AC620004 */  sw         $v0, 4($v1)
/* 2CBFC 800C1FFC 8E040018 */  lw         $a0, 0x18($s0)
/* 2CC00 800C2000 AE000000 */  sw         $zero, ($s0)
/* 2CC04 800C2004 10800004 */  beqz       $a0, .L800C2018
/* 2CC08 800C2008 AE000004 */   sw        $zero, 4($s0)
/* 2CC0C 800C200C 8E05001C */  lw         $a1, 0x1c($s0)
/* 2CC10 800C2010 0C03024C */  jal        func_800C0930
/* 2CC14 800C2014 00003021 */   addu      $a2, $zero, $zero
.L800C2018:
/* 2CC18 800C2018 8E020008 */  lw         $v0, 8($s0)
/* 2CC1C 800C201C 14400004 */  bnez       $v0, .L800C2030
/* 2CC20 800C2020 00000000 */   nop
/* 2CC24 800C2024 8E02000C */  lw         $v0, 0xc($s0)
/* 2CC28 800C2028 1040FFC6 */  beqz       $v0, .L800C1F44
/* 2CC2C 800C202C 00000000 */   nop
.L800C2030:
/* 2CC30 800C2030 8E020008 */  lw         $v0, 8($s0)
/* 2CC34 800C2034 8E03000C */  lw         $v1, 0xc($s0)
/* 2CC38 800C2038 02002021 */  addu       $a0, $s0, $zero
/* 2CC3C 800C203C AC820010 */  sw         $v0, 0x10($a0)
/* 2CC40 800C2040 0C030830 */  jal        func_800C20C0
/* 2CC44 800C2044 AC830014 */   sw        $v1, 0x14($a0)
/* 2CC48 800C2048 080307D1 */  j          .L800C1F44
/* 2CC4C 800C204C 00000000 */   nop
.L800C2050:
/* 2CC50 800C2050 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CC54 800C2054 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CC58 800C2058 03E00008 */  jr         $ra
/* 2CC5C 800C205C 27BD0018 */   addiu     $sp, $sp, 0x18
