glabel func_80051D78_ovl3
/* FB288 80051D78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FB28C 80051D7C 3C048033 */  lui        $a0, (0x80335040 >> 16)
/* FB290 80051D80 34845040 */  ori        $a0, $a0, (0x80335040 & 0xFFFF)
/* FB294 80051D84 2405013E */  addiu      $a1, $zero, 0x13E
/* FB298 80051D88 24060009 */  addiu      $a2, $zero, 0x9
/* FB29C 80051D8C 24070036 */  addiu      $a3, $zero, 0x36
/* FB2A0 80051D90 AFBF0034 */  sw         $ra, 0x34($sp)
/* FB2A4 80051D94 AFB40030 */  sw         $s4, 0x30($sp)
/* FB2A8 80051D98 AFB3002C */  sw         $s3, 0x2C($sp)
/* FB2AC 80051D9C AFB20028 */  sw         $s2, 0x28($sp)
/* FB2B0 80051DA0 AFB10024 */  sw         $s1, 0x24($sp)
/* FB2B4 80051DA4 0C00D9E0 */  jal        func_80036780_ovl3
/* FB2B8 80051DA8 AFB00020 */   sw        $s0, 0x20($sp)
/* FB2BC 80051DAC 8C44000C */  lw         $a0, 0xC($v0)
/* FB2C0 80051DB0 24050040 */  addiu      $a1, $zero, 0x40
/* FB2C4 80051DB4 240600C0 */  addiu      $a2, $zero, 0xC0
/* FB2C8 80051DB8 0C028D89 */  jal        func_800A3624
/* FB2CC 80051DBC 00008021 */   addu      $s0, $zero, $zero
/* FB2D0 80051DC0 320600FF */  andi       $a2, $s0, 0xFF
.L80051DC4_ovl3:
/* FB2D4 80051DC4 24C4013B */  addiu      $a0, $a2, 0x13B
/* FB2D8 80051DC8 24050001 */  addiu      $a1, $zero, 0x1
/* FB2DC 80051DCC 0C00D925 */  jal        func_80036494_ovl3
/* FB2E0 80051DD0 24C60018 */   addiu     $a2, $a2, 0x18
/* FB2E4 80051DD4 8C44000C */  lw         $a0, 0xC($v0)
/* FB2E8 80051DD8 24050260 */  addiu      $a1, $zero, 0x260
/* FB2EC 80051DDC 24060240 */  addiu      $a2, $zero, 0x240
/* FB2F0 80051DE0 0C028D89 */  jal        func_800A3624
/* FB2F4 80051DE4 26100001 */   addiu     $s0, $s0, 0x1
/* FB2F8 80051DE8 320200FF */  andi       $v0, $s0, 0xFF
/* FB2FC 80051DEC 2C420003 */  sltiu      $v0, $v0, 0x3
/* FB300 80051DF0 1440FFF4 */  bnez       $v0, .L80051DC4_ovl3
/* FB304 80051DF4 320600FF */   andi      $a2, $s0, 0xFF
/* FB308 80051DF8 3C048007 */  lui        $a0, %hi(D_80069570_ovl3)
/* FB30C 80051DFC 24849570 */  addiu      $a0, $a0, %lo(D_80069570_ovl3)
/* FB310 80051E00 2405FFFE */  addiu      $a1, $zero, -0x2
/* FB314 80051E04 2412FFFE */  addiu      $s2, $zero, -0x2
/* FB318 80051E08 24110001 */  addiu      $s1, $zero, 0x1
/* FB31C 80051E0C 24140002 */  addiu      $s4, $zero, 0x2
/* FB320 80051E10 AFA40018 */  sw         $a0, 0x18($sp)
/* FB324 80051E14 A3B2001C */  sb         $s2, 0x1C($sp)
/* FB328 80051E18 A3A0001D */  sb         $zero, 0x1D($sp)
/* FB32C 80051E1C A3B1001E */  sb         $s1, 0x1E($sp)
/* FB330 80051E20 0C029D2A */  jal        func_800A74A8
/* FB334 80051E24 A3B4001F */   sb        $s4, 0x1F($sp)
/* FB338 80051E28 27A40018 */  addiu      $a0, $sp, 0x18
/* FB33C 80051E2C 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FB340 80051E30 240620D3 */  addiu      $a2, $zero, 0x20D3
/* FB344 80051E34 00023FC2 */  srl        $a3, $v0, 31
/* FB348 80051E38 00E23821 */  addu       $a3, $a3, $v0
/* FB34C 80051E3C 00073843 */  sra        $a3, $a3, 1
/* FB350 80051E40 241000A0 */  addiu      $s0, $zero, 0xA0
/* FB354 80051E44 02073823 */  subu       $a3, $s0, $a3
/* FB358 80051E48 00073C00 */  sll        $a3, $a3, 16
/* FB35C 80051E4C 00073C03 */  sra        $a3, $a3, 16
/* FB360 80051E50 241300A7 */  addiu      $s3, $zero, 0xA7
/* FB364 80051E54 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FB368 80051E58 AFB30010 */   sw        $s3, 0x10($sp)
/* FB36C 80051E5C 3C048007 */  lui        $a0, %hi(D_80069580_ovl3)
/* FB370 80051E60 24849580 */  addiu      $a0, $a0, %lo(D_80069580_ovl3)
/* FB374 80051E64 2405FFFE */  addiu      $a1, $zero, -0x2
/* FB378 80051E68 AFA40018 */  sw         $a0, 0x18($sp)
/* FB37C 80051E6C A3B2001C */  sb         $s2, 0x1C($sp)
/* FB380 80051E70 A3A0001D */  sb         $zero, 0x1D($sp)
/* FB384 80051E74 A3B1001E */  sb         $s1, 0x1E($sp)
/* FB388 80051E78 0C029D2A */  jal        func_800A74A8
/* FB38C 80051E7C A3B4001F */   sb        $s4, 0x1F($sp)
/* FB390 80051E80 27A40018 */  addiu      $a0, $sp, 0x18
/* FB394 80051E84 240520CA */  addiu      $a1, $zero, 0x20CA
/* FB398 80051E88 240620D4 */  addiu      $a2, $zero, 0x20D4
/* FB39C 80051E8C 00021FC2 */  srl        $v1, $v0, 31
/* FB3A0 80051E90 00621821 */  addu       $v1, $v1, $v0
/* FB3A4 80051E94 00031843 */  sra        $v1, $v1, 1
/* FB3A8 80051E98 02038023 */  subu       $s0, $s0, $v1
/* FB3AC 80051E9C 00108400 */  sll        $s0, $s0, 16
/* FB3B0 80051EA0 00103C03 */  sra        $a3, $s0, 16
/* FB3B4 80051EA4 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FB3B8 80051EA8 AFB30010 */   sw        $s3, 0x10($sp)
/* FB3BC 80051EAC 27A40018 */  addiu      $a0, $sp, 0x18
/* FB3C0 80051EB0 240520CB */  addiu      $a1, $zero, 0x20CB
/* FB3C4 80051EB4 24060002 */  addiu      $a2, $zero, 0x2
/* FB3C8 80051EB8 3C028007 */  lui        $v0, %hi(D_800695B0_ovl3)
/* FB3CC 80051EBC 244295B0 */  addiu      $v0, $v0, %lo(D_800695B0_ovl3)
/* FB3D0 80051EC0 AFA20018 */  sw         $v0, 0x18($sp)
/* FB3D4 80051EC4 24020003 */  addiu      $v0, $zero, 0x3
/* FB3D8 80051EC8 A3B2001C */  sb         $s2, 0x1C($sp)
/* FB3DC 80051ECC A3A0001D */  sb         $zero, 0x1D($sp)
/* FB3E0 80051ED0 A3B1001E */  sb         $s1, 0x1E($sp)
/* FB3E4 80051ED4 0C00DE82 */  jal        func_80037A08_ovl3
/* FB3E8 80051ED8 A3A2001F */   sb        $v0, 0x1F($sp)
/* FB3EC 80051EDC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FB3F0 80051EE0 8FB40030 */  lw         $s4, 0x30($sp)
/* FB3F4 80051EE4 8FB3002C */  lw         $s3, 0x2C($sp)
/* FB3F8 80051EE8 8FB20028 */  lw         $s2, 0x28($sp)
/* FB3FC 80051EEC 8FB10024 */  lw         $s1, 0x24($sp)
/* FB400 80051EF0 8FB00020 */  lw         $s0, 0x20($sp)
/* FB404 80051EF4 03E00008 */  jr         $ra
/* FB408 80051EF8 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_80051D78_ovl3, . - func_80051D78_ovl3
