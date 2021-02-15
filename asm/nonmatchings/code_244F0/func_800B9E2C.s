.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9E2C
/* 24A2C 800B9E2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 24A30 800B9E30 AFB00018 */  sw         $s0, 0x18($sp)
/* 24A34 800B9E34 00808021 */  addu       $s0, $a0, $zero
/* 24A38 800B9E38 AFB1001C */  sw         $s1, 0x1c($sp)
/* 24A3C 800B9E3C 00A08821 */  addu       $s1, $a1, $zero
/* 24A40 800B9E40 3C05800C */  lui        $a1, %hi(D_800BAD40)
/* 24A44 800B9E44 24A5AD40 */  addiu      $a1, $a1, %lo(D_800BAD40)
/* 24A48 800B9E48 3C06800C */  lui        $a2, %hi(D_800BB240)
/* 24A4C 800B9E4C 24C6B240 */  addiu      $a2, $a2, %lo(D_800BB240)
/* 24A50 800B9E50 AFBF0020 */  sw         $ra, 0x20($sp)
/* 24A54 800B9E54 0C02EE7C */  jal        func_800BB9F0
/* 24A58 800B9E58 24070004 */   addiu     $a3, $zero, 4
/* 24A5C 800B9E5C 00002021 */  addu       $a0, $zero, $zero
/* 24A60 800B9E60 00002821 */  addu       $a1, $zero, $zero
/* 24A64 800B9E64 02203021 */  addu       $a2, $s1, $zero
/* 24A68 800B9E68 24070001 */  addiu      $a3, $zero, 1
/* 24A6C 800B9E6C 24020050 */  addiu      $v0, $zero, 0x50
/* 24A70 800B9E70 0C02F2E4 */  jal        func_800BCB90
/* 24A74 800B9E74 AFA20010 */   sw        $v0, 0x10($sp)
/* 24A78 800B9E78 AE020014 */  sw         $v0, 0x14($s0)
/* 24A7C 800B9E7C 24020001 */  addiu      $v0, $zero, 1
/* 24A80 800B9E80 AE020038 */  sw         $v0, 0x38($s0)
/* 24A84 800B9E84 24020001 */  addiu      $v0, $zero, 1
/* 24A88 800B9E88 AE000048 */  sw         $zero, 0x48($s0)
/* 24A8C 800B9E8C A602001A */  sh         $v0, 0x1a($s0)
/* 24A90 800B9E90 A6020028 */  sh         $v0, 0x28($s0)
/* 24A94 800B9E94 A602002E */  sh         $v0, 0x2e($s0)
/* 24A98 800B9E98 A602001C */  sh         $v0, 0x1c($s0)
/* 24A9C 800B9E9C A602001E */  sh         $v0, 0x1e($s0)
/* 24AA0 800B9EA0 A6000020 */  sh         $zero, 0x20($s0)
/* 24AA4 800B9EA4 A6000022 */  sh         $zero, 0x22($s0)
/* 24AA8 800B9EA8 A6020026 */  sh         $v0, 0x26($s0)
/* 24AAC 800B9EAC A6000024 */  sh         $zero, 0x24($s0)
/* 24AB0 800B9EB0 A6020026 */  sh         $v0, 0x26($s0)
/* 24AB4 800B9EB4 A6000024 */  sh         $zero, 0x24($s0)
/* 24AB8 800B9EB8 AE000030 */  sw         $zero, 0x30($s0)
/* 24ABC 800B9EBC AE000034 */  sw         $zero, 0x34($s0)
/* 24AC0 800B9EC0 A6000018 */  sh         $zero, 0x18($s0)
/* 24AC4 800B9EC4 AE00003C */  sw         $zero, 0x3c($s0)
/* 24AC8 800B9EC8 AE000040 */  sw         $zero, 0x40($s0)
/* 24ACC 800B9ECC AE000044 */  sw         $zero, 0x44($s0)
/* 24AD0 800B9ED0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 24AD4 800B9ED4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 24AD8 800B9ED8 8FB00018 */  lw         $s0, 0x18($sp)
/* 24ADC 800B9EDC 03E00008 */  jr         $ra
/* 24AE0 800B9EE0 27BD0028 */   addiu     $sp, $sp, 0x28
