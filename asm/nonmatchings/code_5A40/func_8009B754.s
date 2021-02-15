.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B754
/* 6354 8009B754 3C028017 */  lui        $v0, %hi(D_8016E590)
/* 6358 8009B758 8C42E590 */  lw         $v0, %lo(D_8016E590)($v0)
/* 635C 8009B75C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6360 8009B760 AFB00010 */  sw         $s0, 0x10($sp)
/* 6364 8009B764 00808021 */  addu       $s0, $a0, $zero
/* 6368 8009B768 AFBF0018 */  sw         $ra, 0x18($sp)
/* 636C 8009B76C 1040000A */  beqz       $v0, .L8009B798
/* 6370 8009B770 AFB10014 */   sw        $s1, 0x14($sp)
/* 6374 8009B774 3C028015 */  lui        $v0, %hi(D_80149BAC)
/* 6378 8009B778 8C429BAC */  lw         $v0, %lo(D_80149BAC)($v0)
/* 637C 8009B77C 10400026 */  beqz       $v0, .L8009B818
/* 6380 8009B780 00001021 */   addu      $v0, $zero, $zero
/* 6384 8009B784 3C028017 */  lui        $v0, %hi(D_8016E56C)
/* 6388 8009B788 8C42E56C */  lw         $v0, %lo(D_8016E56C)($v0)
/* 638C 8009B78C 0202102B */  sltu       $v0, $s0, $v0
/* 6390 8009B790 14400003 */  bnez       $v0, .L8009B7A0
/* 6394 8009B794 00000000 */   nop
.L8009B798:
/* 6398 8009B798 08026E06 */  j          .L8009B818
/* 639C 8009B79C 00001021 */   addu      $v0, $zero, $zero
.L8009B7A0:
/* 63A0 8009B7A0 3C038015 */  lui        $v1, %hi(D_80149F10)
/* 63A4 8009B7A4 8C639F10 */  lw         $v1, %lo(D_80149F10)($v1)
/* 63A8 8009B7A8 0203102B */  sltu       $v0, $s0, $v1
/* 63AC 8009B7AC 14400003 */  bnez       $v0, .L8009B7BC
/* 63B0 8009B7B0 00008821 */   addu      $s1, $zero, $zero
/* 63B4 8009B7B4 02038023 */  subu       $s0, $s0, $v1
/* 63B8 8009B7B8 24110001 */  addiu      $s1, $zero, 1
.L8009B7BC:
/* 63BC 8009B7BC 16200005 */  bnez       $s1, .L8009B7D4
/* 63C0 8009B7C0 00000000 */   nop
/* 63C4 8009B7C4 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 63C8 8009B7C8 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 63CC 8009B7CC 08026DF7 */  j          .L8009B7DC
/* 63D0 8009B7D0 00000000 */   nop
.L8009B7D4:
/* 63D4 8009B7D4 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 63D8 8009B7D8 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
.L8009B7DC:
/* 63DC 8009B7DC 0C02BB59 */  jal        func_800AED64
/* 63E0 8009B7E0 00000000 */   nop
/* 63E4 8009B7E4 0C02B738 */  jal        func_800ADCE0
/* 63E8 8009B7E8 02002021 */   addu      $a0, $s0, $zero
/* 63EC 8009B7EC 16200005 */  bnez       $s1, .L8009B804
/* 63F0 8009B7F0 00408021 */   addu      $s0, $v0, $zero
/* 63F4 8009B7F4 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* 63F8 8009B7F8 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* 63FC 8009B7FC 08026E03 */  j          .L8009B80C
/* 6400 8009B800 00000000 */   nop
.L8009B804:
/* 6404 8009B804 3C058017 */  lui        $a1, %hi(D_8016D0C0)
/* 6408 8009B808 84A5D0C0 */  lh         $a1, %lo(D_8016D0C0)($a1)
.L8009B80C:
/* 640C 8009B80C 0C026E66 */  jal        func_8009B998
/* 6410 8009B810 02002021 */   addu      $a0, $s0, $zero
/* 6414 8009B814 02001021 */  addu       $v0, $s0, $zero
.L8009B818:
/* 6418 8009B818 8FBF0018 */  lw         $ra, 0x18($sp)
/* 641C 8009B81C 8FB10014 */  lw         $s1, 0x14($sp)
/* 6420 8009B820 8FB00010 */  lw         $s0, 0x10($sp)
/* 6424 8009B824 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6428 8009B828 03E00008 */  jr         $ra
/* 642C 8009B82C 00000000 */   nop
