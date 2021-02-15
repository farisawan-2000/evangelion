.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8A10
/* 23610 800B8A10 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 23614 800B8A14 AFB50034 */  sw         $s5, 0x34($sp)
/* 23618 800B8A18 0080A821 */  addu       $s5, $a0, $zero
/* 2361C 800B8A1C AFB3002C */  sw         $s3, 0x2c($sp)
/* 23620 800B8A20 00C09821 */  addu       $s3, $a2, $zero
/* 23624 800B8A24 AFB10024 */  sw         $s1, 0x24($sp)
/* 23628 800B8A28 00E08821 */  addu       $s1, $a3, $zero
/* 2362C 800B8A2C AFB20028 */  sw         $s2, 0x28($sp)
/* 23630 800B8A30 00A09021 */  addu       $s2, $a1, $zero
/* 23634 800B8A34 AFB00020 */  sw         $s0, 0x20($sp)
/* 23638 800B8A38 00008021 */  addu       $s0, $zero, $zero
/* 2363C 800B8A3C AFBF003C */  sw         $ra, 0x3c($sp)
/* 23640 800B8A40 AFB60038 */  sw         $s6, 0x38($sp)
/* 23644 800B8A44 1A200020 */  blez       $s1, .L800B8AC8
/* 23648 800B8A48 AFB40030 */   sw        $s4, 0x30($sp)
/* 2364C 800B8A4C 3C148017 */  lui        $s4, %hi(D_8016E2F0)
/* 23650 800B8A50 2694E2F0 */  addiu      $s4, $s4, %lo(D_8016E2F0)
/* 23654 800B8A54 3C168017 */  lui        $s6, %hi(D_8016D078)
/* 23658 800B8A58 26D6D078 */  addiu      $s6, $s6, %lo(D_8016D078)
/* 2365C 800B8A5C 02A02021 */  addu       $a0, $s5, $zero
.L800B8A60:
/* 23660 800B8A60 324500FF */  andi       $a1, $s2, 0xff
/* 23664 800B8A64 0C031688 */  jal        func_800C5A20
/* 23668 800B8A68 02603021 */   addu      $a2, $s3, $zero
/* 2366C 800B8A6C 00408021 */  addu       $s0, $v0, $zero
/* 23670 800B8A70 16000016 */  bnez       $s0, .L800B8ACC
/* 23674 800B8A74 2631FFF8 */   addiu     $s1, $s1, -8
/* 23678 800B8A78 26520001 */  addiu      $s2, $s2, 1
/* 2367C 800B8A7C 26730008 */  addiu      $s3, $s3, 8
/* 23680 800B8A80 00004021 */  addu       $t0, $zero, $zero
/* 23684 800B8A84 00004821 */  addu       $t1, $zero, $zero
/* 23688 800B8A88 3C048017 */  lui        $a0, %hi(D_8016D210)
/* 2368C 800B8A8C 2484D210 */  addiu      $a0, $a0, %lo(D_8016D210)
/* 23690 800B8A90 24060000 */  addiu      $a2, $zero, 0
/* 23694 800B8A94 3C070008 */  lui        $a3, 8
/* 23698 800B8A98 34E79544 */  ori        $a3, $a3, 0x9544
/* 2369C 800B8A9C AFA80010 */  sw         $t0, 0x10($sp)
/* 236A0 800B8AA0 AFA90014 */  sw         $t1, 0x14($sp)
/* 236A4 800B8AA4 AFB40018 */  sw         $s4, 0x18($sp)
/* 236A8 800B8AA8 0C03078C */  jal        func_800C1E30
/* 236AC 800B8AAC AFB6001C */   sw        $s6, 0x1c($sp)
/* 236B0 800B8AB0 02802021 */  addu       $a0, $s4, $zero
/* 236B4 800B8AB4 00002821 */  addu       $a1, $zero, $zero
/* 236B8 800B8AB8 0C030200 */  jal        func_800C0800
/* 236BC 800B8ABC 24060001 */   addiu     $a2, $zero, 1
/* 236C0 800B8AC0 1E20FFE7 */  bgtz       $s1, .L800B8A60
/* 236C4 800B8AC4 02A02021 */   addu      $a0, $s5, $zero
.L800B8AC8:
/* 236C8 800B8AC8 02001021 */  addu       $v0, $s0, $zero
.L800B8ACC:
/* 236CC 800B8ACC 8FBF003C */  lw         $ra, 0x3c($sp)
/* 236D0 800B8AD0 8FB60038 */  lw         $s6, 0x38($sp)
/* 236D4 800B8AD4 8FB50034 */  lw         $s5, 0x34($sp)
/* 236D8 800B8AD8 8FB40030 */  lw         $s4, 0x30($sp)
/* 236DC 800B8ADC 8FB3002C */  lw         $s3, 0x2c($sp)
/* 236E0 800B8AE0 8FB20028 */  lw         $s2, 0x28($sp)
/* 236E4 800B8AE4 8FB10024 */  lw         $s1, 0x24($sp)
/* 236E8 800B8AE8 8FB00020 */  lw         $s0, 0x20($sp)
/* 236EC 800B8AEC 03E00008 */  jr         $ra
/* 236F0 800B8AF0 27BD0040 */   addiu     $sp, $sp, 0x40
/* 236F4 800B8AF4 00000000 */  nop
/* 236F8 800B8AF8 00000000 */  nop
/* 236FC 800B8AFC 00000000 */  nop
