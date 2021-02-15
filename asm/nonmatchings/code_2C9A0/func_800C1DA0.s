.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1DA0
/* 2C9A0 800C1DA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C9A4 800C1DA4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2C9A8 800C1DA8 AFB40020 */  sw         $s4, 0x20($sp)
/* 2C9AC 800C1DAC AFB3001C */  sw         $s3, 0x1c($sp)
/* 2C9B0 800C1DB0 AFB20018 */  sw         $s2, 0x18($sp)
/* 2C9B4 800C1DB4 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C9B8 800C1DB8 0C0319D0 */  jal        func_800C6740
/* 2C9BC 800C1DBC AFB00010 */   sw        $s0, 0x10($sp)
/* 2C9C0 800C1DC0 0C031E38 */  jal        func_800C78E0
/* 2C9C4 800C1DC4 0040A021 */   addu      $s4, $v0, $zero
/* 2C9C8 800C1DC8 3C038015 */  lui        $v1, %hi(D_80149BB0)
/* 2C9CC 800C1DCC 8C639BB0 */  lw         $v1, %lo(D_80149BB0)($v1)
/* 2C9D0 800C1DD0 3C128015 */  lui        $s2, %hi(D_8014A0A8)
/* 2C9D4 800C1DD4 8E52A0A8 */  lw         $s2, %lo(D_8014A0A8)($s2)
/* 2C9D8 800C1DD8 3C138015 */  lui        $s3, %hi(D_8014A0AC)
/* 2C9DC 800C1DDC 8E73A0AC */  lw         $s3, %lo(D_8014A0AC)($s3)
/* 2C9E0 800C1DE0 02802021 */  addu       $a0, $s4, $zero
/* 2C9E4 800C1DE4 0C0319EC */  jal        func_800C67B0
/* 2C9E8 800C1DE8 00438023 */   subu      $s0, $v0, $v1
/* 2C9EC 800C1DEC 02008821 */  addu       $s1, $s0, $zero
/* 2C9F0 800C1DF0 00008021 */  addu       $s0, $zero, $zero
/* 2C9F4 800C1DF4 02711821 */  addu       $v1, $s3, $s1
/* 2C9F8 800C1DF8 0071202B */  sltu       $a0, $v1, $s1
/* 2C9FC 800C1DFC 02501021 */  addu       $v0, $s2, $s0
/* 2CA00 800C1E00 00441021 */  addu       $v0, $v0, $a0
/* 2CA04 800C1E04 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2CA08 800C1E08 8FB40020 */  lw         $s4, 0x20($sp)
/* 2CA0C 800C1E0C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2CA10 800C1E10 8FB20018 */  lw         $s2, 0x18($sp)
/* 2CA14 800C1E14 8FB10014 */  lw         $s1, 0x14($sp)
/* 2CA18 800C1E18 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CA1C 800C1E1C 03E00008 */  jr         $ra
/* 2CA20 800C1E20 27BD0028 */   addiu     $sp, $sp, 0x28
/* 2CA24 800C1E24 00000000 */  nop
/* 2CA28 800C1E28 00000000 */  nop
/* 2CA2C 800C1E2C 00000000 */  nop
