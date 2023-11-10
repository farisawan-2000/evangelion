glabel func_800B4F90
/* 1FB90 800B4F90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FB94 800B4F94 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FB98 800B4F98 00808821 */  addu       $s1, $a0, $zero
/* 1FB9C 800B4F9C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1FBA0 800B4FA0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FBA4 800B4FA4 8E220008 */  lw         $v0, 0x8($s1)
/* 1FBA8 800B4FA8 10400019 */  beqz       $v0, .L800B5010
/* 1FBAC 800B4FAC 00A08021 */   addu      $s0, $a1, $zero
/* 1FBB0 800B4FB0 0C02D5BA */  jal        func_800B56E8
/* 1FBB4 800B4FB4 00000000 */   nop
/* 1FBB8 800B4FB8 00403021 */  addu       $a2, $v0, $zero
/* 1FBBC 800B4FBC 10C00014 */  beqz       $a2, .L800B5010
/* 1FBC0 800B4FC0 00000000 */   nop
/* 1FBC4 800B4FC4 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FBC8 800B4FC8 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FBCC 800B4FCC 8E240008 */  lw         $a0, 0x8($s1)
/* 1FBD0 800B4FD0 8C43001C */  lw         $v1, 0x1C($v0)
/* 1FBD4 800B4FD4 8C840088 */  lw         $a0, 0x88($a0)
/* 1FBD8 800B4FD8 24020010 */  addiu      $v0, $zero, 0x10
/* 1FBDC 800B4FDC A4C20008 */  sh         $v0, 0x8($a2)
/* 1FBE0 800B4FE0 320200FF */  andi       $v0, $s0, 0xFF
/* 1FBE4 800B4FE4 2C420080 */  sltiu      $v0, $v0, 0x80
/* 1FBE8 800B4FE8 00641821 */  addu       $v1, $v1, $a0
/* 1FBEC 800B4FEC 14400002 */  bnez       $v0, .L800B4FF8
/* 1FBF0 800B4FF0 ACC30004 */   sw        $v1, 0x4($a2)
/* 1FBF4 800B4FF4 2410007F */  addiu      $s0, $zero, 0x7F
.L800B4FF8:
/* 1FBF8 800B4FF8 320200FF */  andi       $v0, $s0, 0xFF
/* 1FBFC 800B4FFC ACC2000C */  sw         $v0, 0xC($a2)
/* 1FC00 800B5000 ACC00000 */  sw         $zero, 0x0($a2)
/* 1FC04 800B5004 8E240008 */  lw         $a0, 0x8($s1)
/* 1FC08 800B5008 0C02CD62 */  jal        func_800B3588
/* 1FC0C 800B500C 24050003 */   addiu     $a1, $zero, 0x3
.L800B5010:
/* 1FC10 800B5010 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1FC14 800B5014 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FC18 800B5018 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FC1C 800B501C 03E00008 */  jr         $ra
/* 1FC20 800B5020 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FC24 800B5024 00000000 */  nop
/* 1FC28 800B5028 00000000 */  nop
/* 1FC2C 800B502C 00000000 */  nop
.size func_800B4F90, . - func_800B4F90
