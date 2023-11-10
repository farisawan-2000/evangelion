glabel func_800B2A50
/* 1D650 800B2A50 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1D654 800B2A54 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1D658 800B2A58 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D65C 800B2A5C AFB30024 */  sw         $s3, 0x24($sp)
/* 1D660 800B2A60 00809821 */  addu       $s3, $a0, $zero
/* 1D664 800B2A64 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1D668 800B2A68 AFB20020 */  sw         $s2, 0x20($sp)
/* 1D66C 800B2A6C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1D670 800B2A70 AFB00018 */  sw         $s0, 0x18($sp)
/* 1D674 800B2A74 8C520034 */  lw         $s2, 0x34($v0)
/* 1D678 800B2A78 00A03021 */  addu       $a2, $a1, $zero
/* 1D67C 800B2A7C 00C01821 */  addu       $v1, $a2, $zero
/* 1D680 800B2A80 8E44001C */  lw         $a0, 0x1C($s2)
/* 1D684 800B2A84 3C020200 */  lui        $v0, (0x20007C0 >> 16)
/* 1D688 800B2A88 344207C0 */  ori        $v0, $v0, (0x20007C0 & 0xFFFF)
/* 1D68C 800B2A8C AC620000 */  sw         $v0, 0x0($v1)
/* 1D690 800B2A90 240202E0 */  addiu      $v0, $zero, 0x2E0
/* 1D694 800B2A94 AC620004 */  sw         $v0, 0x4($v1)
/* 1D698 800B2A98 8E420014 */  lw         $v0, 0x14($s2)
/* 1D69C 800B2A9C 24C60008 */  addiu      $a2, $a2, 0x8
/* 1D6A0 800B2AA0 1840000B */  blez       $v0, .L800B2AD0
/* 1D6A4 800B2AA4 00008021 */   addu      $s0, $zero, $zero
/* 1D6A8 800B2AA8 00808821 */  addu       $s1, $a0, $zero
.L800B2AAC:
/* 1D6AC 800B2AAC 8E240000 */  lw         $a0, 0x0($s1)
/* 1D6B0 800B2AB0 26310004 */  addiu      $s1, $s1, 0x4
/* 1D6B4 800B2AB4 0C02CC04 */  jal        func_800B3010
/* 1D6B8 800B2AB8 02602821 */   addu      $a1, $s3, $zero
/* 1D6BC 800B2ABC 8E430014 */  lw         $v1, 0x14($s2)
/* 1D6C0 800B2AC0 26100001 */  addiu      $s0, $s0, 0x1
/* 1D6C4 800B2AC4 0203182A */  slt        $v1, $s0, $v1
/* 1D6C8 800B2AC8 1460FFF8 */  bnez       $v1, .L800B2AAC
/* 1D6CC 800B2ACC 00403021 */   addu      $a2, $v0, $zero
.L800B2AD0:
/* 1D6D0 800B2AD0 00C01021 */  addu       $v0, $a2, $zero
/* 1D6D4 800B2AD4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1D6D8 800B2AD8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1D6DC 800B2ADC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1D6E0 800B2AE0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1D6E4 800B2AE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D6E8 800B2AE8 03E00008 */  jr         $ra
/* 1D6EC 800B2AEC 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B2A50, . - func_800B2A50
