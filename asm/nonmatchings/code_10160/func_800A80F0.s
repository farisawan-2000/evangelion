glabel func_800A80F0
/* 12CF0 800A80F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12CF4 800A80F4 24040020 */  addiu      $a0, $zero, 0x20
/* 12CF8 800A80F8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 12CFC 800A80FC AFB30024 */  sw         $s3, 0x24($sp)
/* 12D00 800A8100 AFB20020 */  sw         $s2, 0x20($sp)
/* 12D04 800A8104 AFB1001C */  sw         $s1, 0x1C($sp)
/* 12D08 800A8108 0C032663 */  jal        func_800C998C
/* 12D0C 800A810C AFB00018 */   sw        $s0, 0x18($sp)
/* 12D10 800A8110 00009821 */  addu       $s3, $zero, $zero
/* 12D14 800A8114 00408821 */  addu       $s1, $v0, $zero
/* 12D18 800A8118 02209021 */  addu       $s2, $s1, $zero
.L800A811C:
/* 12D1C 800A811C 0C032663 */  jal        func_800C998C
/* 12D20 800A8120 2404000C */   addiu     $a0, $zero, 0xC
/* 12D24 800A8124 2404000E */  addiu      $a0, $zero, 0xE
/* 12D28 800A8128 24050001 */  addiu      $a1, $zero, 0x1
/* 12D2C 800A812C 00003021 */  addu       $a2, $zero, $zero
/* 12D30 800A8130 0C028CB7 */  jal        func_800A32DC
/* 12D34 800A8134 00408021 */   addu      $s0, $v0, $zero
/* 12D38 800A8138 AE020000 */  sw         $v0, 0x0($s0)
/* 12D3C 800A813C A6000004 */  sh         $zero, 0x4($s0)
/* 12D40 800A8140 A6000006 */  sh         $zero, 0x6($s0)
/* 12D44 800A8144 A6000008 */  sh         $zero, 0x8($s0)
/* 12D48 800A8148 A600000A */  sh         $zero, 0xA($s0)
/* 12D4C 800A814C AE500000 */  sw         $s0, 0x0($s2)
/* 12D50 800A8150 26730001 */  addiu      $s3, $s3, 0x1
/* 12D54 800A8154 2A620004 */  slti       $v0, $s3, 0x4
/* 12D58 800A8158 1440FFF0 */  bnez       $v0, .L800A811C
/* 12D5C 800A815C 26520004 */   addiu     $s2, $s2, 0x4
/* 12D60 800A8160 A6200010 */  sh         $zero, 0x10($s1)
/* 12D64 800A8164 A6200012 */  sh         $zero, 0x12($s1)
/* 12D68 800A8168 A6200014 */  sh         $zero, 0x14($s1)
/* 12D6C 800A816C 0C029375 */  jal        func_800A4DD4
/* 12D70 800A8170 A6200016 */   sh        $zero, 0x16($s1)
/* 12D74 800A8174 0C029375 */  jal        func_800A4DD4
/* 12D78 800A8178 AE220018 */   sw        $v0, 0x18($s1)
/* 12D7C 800A817C AE22001C */  sw         $v0, 0x1C($s1)
/* 12D80 800A8180 240200E0 */  addiu      $v0, $zero, 0xE0
/* 12D84 800A8184 AFA20010 */  sw         $v0, 0x10($sp)
/* 12D88 800A8188 8E24001C */  lw         $a0, 0x1C($s1)
/* 12D8C 800A818C 24050010 */  addiu      $a1, $zero, 0x10
/* 12D90 800A8190 24060010 */  addiu      $a2, $zero, 0x10
/* 12D94 800A8194 0C02939C */  jal        func_800A4E70
/* 12D98 800A8198 24070130 */   addiu     $a3, $zero, 0x130
/* 12D9C 800A819C 02201021 */  addu       $v0, $s1, $zero
/* 12DA0 800A81A0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 12DA4 800A81A4 8FB30024 */  lw         $s3, 0x24($sp)
/* 12DA8 800A81A8 8FB20020 */  lw         $s2, 0x20($sp)
/* 12DAC 800A81AC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12DB0 800A81B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 12DB4 800A81B4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 12DB8 800A81B8 03E00008 */  jr         $ra
/* 12DBC 800A81BC 00000000 */   nop
.size func_800A80F0, . - func_800A80F0
