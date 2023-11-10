glabel func_800C1E30
/* 2CA30 800C1E30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CA34 800C1E34 8FA20028 */  lw         $v0, 0x28($sp)
/* 2CA38 800C1E38 8FA3002C */  lw         $v1, 0x2C($sp)
/* 2CA3C 800C1E3C AFB00010 */  sw         $s0, 0x10($sp)
/* 2CA40 800C1E40 00808021 */  addu       $s0, $a0, $zero
/* 2CA44 800C1E44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CA48 800C1E48 AE000000 */  sw         $zero, 0x0($s0)
/* 2CA4C 800C1E4C AE000004 */  sw         $zero, 0x4($s0)
/* 2CA50 800C1E50 AE060010 */  sw         $a2, 0x10($s0)
/* 2CA54 800C1E54 AE070014 */  sw         $a3, 0x14($s0)
/* 2CA58 800C1E58 AE020008 */  sw         $v0, 0x8($s0)
/* 2CA5C 800C1E5C AE03000C */  sw         $v1, 0xC($s0)
/* 2CA60 800C1E60 8FA50030 */  lw         $a1, 0x30($sp)
/* 2CA64 800C1E64 8FA80034 */  lw         $t0, 0x34($sp)
/* 2CA68 800C1E68 14C00006 */  bnez       $a2, .L800C1E84
/* 2CA6C 800C1E6C 02002021 */   addu      $a0, $s0, $zero
/* 2CA70 800C1E70 54E00005 */  bnel       $a3, $zero, .L800C1E88
/* 2CA74 800C1E74 AE050018 */   sw        $a1, 0x18($s0)
/* 2CA78 800C1E78 AE020010 */  sw         $v0, 0x10($s0)
/* 2CA7C 800C1E7C AE030014 */  sw         $v1, 0x14($s0)
/* 2CA80 800C1E80 02002021 */  addu       $a0, $s0, $zero
.L800C1E84:
/* 2CA84 800C1E84 AE050018 */  sw         $a1, 0x18($s0)
.L800C1E88:
/* 2CA88 800C1E88 0C030830 */  jal        func_800C20C0
/* 2CA8C 800C1E8C AE08001C */   sw        $t0, 0x1C($s0)
/* 2CA90 800C1E90 3C04800F */  lui        $a0, %hi(D_800F69D0)
/* 2CA94 800C1E94 8C8469D0 */  lw         $a0, %lo(D_800F69D0)($a0)
/* 2CA98 800C1E98 8C840000 */  lw         $a0, 0x0($a0)
/* 2CA9C 800C1E9C 54900005 */  bnel       $a0, $s0, .L800C1EB4
/* 2CAA0 800C1EA0 00001021 */   addu      $v0, $zero, $zero
/* 2CAA4 800C1EA4 00402021 */  addu       $a0, $v0, $zero
/* 2CAA8 800C1EA8 0C030818 */  jal        func_800C2060
/* 2CAAC 800C1EAC 00602821 */   addu      $a1, $v1, $zero
/* 2CAB0 800C1EB0 00001021 */  addu       $v0, $zero, $zero
.L800C1EB4:
/* 2CAB4 800C1EB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CAB8 800C1EB8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CABC 800C1EBC 03E00008 */  jr         $ra
/* 2CAC0 800C1EC0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2CAC4 800C1EC4 00000000 */  nop
/* 2CAC8 800C1EC8 00000000 */  nop
/* 2CACC 800C1ECC 00000000 */  nop
.size func_800C1E30, . - func_800C1E30
