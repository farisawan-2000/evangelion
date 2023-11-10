glabel func_800B6270
/* 20E70 800B6270 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 20E74 800B6274 AFB00028 */  sw         $s0, 0x28($sp)
/* 20E78 800B6278 3C108015 */  lui        $s0, %hi(D_8014A090)
/* 20E7C 800B627C 2610A090 */  addiu      $s0, $s0, %lo(D_8014A090)
/* 20E80 800B6280 02002021 */  addu       $a0, $s0, $zero
/* 20E84 800B6284 3C058011 */  lui        $a1, %hi(D_80108BD0)
/* 20E88 800B6288 24A58BD0 */  addiu      $a1, $a1, %lo(D_80108BD0)
/* 20E8C 800B628C 24060008 */  addiu      $a2, $zero, 0x8
/* 20E90 800B6290 AFBF0030 */  sw         $ra, 0x30($sp)
/* 20E94 800B6294 0C0301A4 */  jal        func_800C0690
/* 20E98 800B6298 AFB1002C */   sw        $s1, 0x2C($sp)
/* 20E9C 800B629C 27A40010 */  addiu      $a0, $sp, 0x10
/* 20EA0 800B62A0 02002821 */  addu       $a1, $s0, $zero
/* 20EA4 800B62A4 0C02D750 */  jal        func_800B5D40
/* 20EA8 800B62A8 24060003 */   addiu     $a2, $zero, 0x3
/* 20EAC 800B62AC 24110001 */  addiu      $s1, $zero, 0x1
/* 20EB0 800B62B0 24100002 */  addiu      $s0, $zero, 0x2
.L800B62B4:
/* 20EB4 800B62B4 3C048015 */  lui        $a0, %hi(D_8014A090)
/* 20EB8 800B62B8 2484A090 */  addiu      $a0, $a0, %lo(D_8014A090)
/* 20EBC 800B62BC 27A50020 */  addiu      $a1, $sp, 0x20
/* 20EC0 800B62C0 0C030200 */  jal        func_800C0800
/* 20EC4 800B62C4 24060001 */   addiu     $a2, $zero, 0x1
/* 20EC8 800B62C8 8FA20020 */  lw         $v0, 0x20($sp)
/* 20ECC 800B62CC 84420000 */  lh         $v0, 0x0($v0)
/* 20ED0 800B62D0 10510005 */  beq        $v0, $s1, .L800B62E8
/* 20ED4 800B62D4 00000000 */   nop
/* 20ED8 800B62D8 1050000C */  beq        $v0, $s0, .L800B630C
/* 20EDC 800B62DC 00000000 */   nop
/* 20EE0 800B62E0 0802D8AD */  j          .L800B62B4
/* 20EE4 800B62E4 00000000 */   nop
.L800B62E8:
/* 20EE8 800B62E8 3C02800F */  lui        $v0, %hi(D_800F1810)
/* 20EEC 800B62EC 8C421810 */  lw         $v0, %lo(D_800F1810)($v0)
/* 20EF0 800B62F0 1040FFF0 */  beqz       $v0, .L800B62B4
/* 20EF4 800B62F4 00000000 */   nop
/* 20EF8 800B62F8 3C048017 */  lui        $a0, %hi(D_8016D060)
/* 20EFC 800B62FC 0040F809 */  jalr       $v0
/* 20F00 800B6300 8C84D060 */   lw        $a0, %lo(D_8016D060)($a0)
/* 20F04 800B6304 0802D8AD */  j          .L800B62B4
/* 20F08 800B6308 00000000 */   nop
.L800B630C:
/* 20F0C 800B630C 3C02800F */  lui        $v0, %hi(D_800F1814)
/* 20F10 800B6310 8C421814 */  lw         $v0, %lo(D_800F1814)($v0)
/* 20F14 800B6314 1040FFE7 */  beqz       $v0, .L800B62B4
/* 20F18 800B6318 00000000 */   nop
/* 20F1C 800B631C 0040F809 */  jalr       $v0
/* 20F20 800B6320 00000000 */   nop
/* 20F24 800B6324 0802D8AD */  j          .L800B62B4
/* 20F28 800B6328 00000000 */   nop
/* 20F2C 800B632C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 20F30 800B6330 8FB1002C */  lw         $s1, 0x2C($sp)
/* 20F34 800B6334 8FB00028 */  lw         $s0, 0x28($sp)
/* 20F38 800B6338 03E00008 */  jr         $ra
/* 20F3C 800B633C 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800B6270, . - func_800B6270
