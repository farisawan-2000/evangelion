.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8B00
/* 23700 800B8B00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 23704 800B8B04 AFB3001C */  sw         $s3, 0x1c($sp)
/* 23708 800B8B08 00809821 */  addu       $s3, $a0, $zero
/* 2370C 800B8B0C AFB20018 */  sw         $s2, 0x18($sp)
/* 23710 800B8B10 00C09021 */  addu       $s2, $a2, $zero
/* 23714 800B8B14 AFB00010 */  sw         $s0, 0x10($sp)
/* 23718 800B8B18 00E08021 */  addu       $s0, $a3, $zero
/* 2371C 800B8B1C AFB10014 */  sw         $s1, 0x14($sp)
/* 23720 800B8B20 00A08821 */  addu       $s1, $a1, $zero
/* 23724 800B8B24 00001021 */  addu       $v0, $zero, $zero
/* 23728 800B8B28 1A00000A */  blez       $s0, .L800B8B54
/* 2372C 800B8B2C AFBF0020 */   sw        $ra, 0x20($sp)
.L800B8B30:
/* 23730 800B8B30 02602021 */  addu       $a0, $s3, $zero
/* 23734 800B8B34 322500FF */  andi       $a1, $s1, 0xff
/* 23738 800B8B38 0C031600 */  jal        func_800C5800
/* 2373C 800B8B3C 02403021 */   addu      $a2, $s2, $zero
/* 23740 800B8B40 14400004 */  bnez       $v0, .L800B8B54
/* 23744 800B8B44 2610FFF8 */   addiu     $s0, $s0, -8
/* 23748 800B8B48 26310001 */  addiu      $s1, $s1, 1
/* 2374C 800B8B4C 1E00FFF8 */  bgtz       $s0, .L800B8B30
/* 23750 800B8B50 26520008 */   addiu     $s2, $s2, 8
.L800B8B54:
/* 23754 800B8B54 8FBF0020 */  lw         $ra, 0x20($sp)
/* 23758 800B8B58 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2375C 800B8B5C 8FB20018 */  lw         $s2, 0x18($sp)
/* 23760 800B8B60 8FB10014 */  lw         $s1, 0x14($sp)
/* 23764 800B8B64 8FB00010 */  lw         $s0, 0x10($sp)
/* 23768 800B8B68 03E00008 */  jr         $ra
/* 2376C 800B8B6C 27BD0028 */   addiu     $sp, $sp, 0x28
