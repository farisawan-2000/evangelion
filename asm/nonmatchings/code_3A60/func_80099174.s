glabel func_80099174
/* 3D74 80099174 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 3D78 80099178 AFB00058 */  sw         $s0, 0x58($sp)
/* 3D7C 8009917C 00808021 */  addu       $s0, $a0, $zero
/* 3D80 80099180 AFB1005C */  sw         $s1, 0x5C($sp)
/* 3D84 80099184 00A08821 */  addu       $s1, $a1, $zero
/* 3D88 80099188 AFB20060 */  sw         $s2, 0x60($sp)
/* 3D8C 8009918C 00C09021 */  addu       $s2, $a2, $zero
/* 3D90 80099190 AFB40068 */  sw         $s4, 0x68($sp)
/* 3D94 80099194 27B40038 */  addiu      $s4, $sp, 0x38
/* 3D98 80099198 02802021 */  addu       $a0, $s4, $zero
/* 3D9C 8009919C 27A50050 */  addiu      $a1, $sp, 0x50
/* 3DA0 800991A0 24060001 */  addiu      $a2, $zero, 0x1
/* 3DA4 800991A4 AFBF006C */  sw         $ra, 0x6C($sp)
/* 3DA8 800991A8 0C0301A4 */  jal        func_800C0690
/* 3DAC 800991AC AFB30064 */   sw        $s3, 0x64($sp)
/* 3DB0 800991B0 12400018 */  beqz       $s2, .L80099214
/* 3DB4 800991B4 02009821 */   addu      $s3, $s0, $zero
.L800991B8:
/* 3DB8 800991B8 2A421001 */  slti       $v0, $s2, 0x1001
/* 3DBC 800991BC 14400002 */  bnez       $v0, .L800991C8
/* 3DC0 800991C0 02408021 */   addu      $s0, $s2, $zero
/* 3DC4 800991C4 24101000 */  addiu      $s0, $zero, 0x1000
.L800991C8:
/* 3DC8 800991C8 02202021 */  addu       $a0, $s1, $zero
/* 3DCC 800991CC 0C02F4C4 */  jal        func_800BD310
/* 3DD0 800991D0 02002821 */   addu      $a1, $s0, $zero
/* 3DD4 800991D4 27A40020 */  addiu      $a0, $sp, 0x20
/* 3DD8 800991D8 00002821 */  addu       $a1, $zero, $zero
/* 3DDC 800991DC 00003021 */  addu       $a2, $zero, $zero
/* 3DE0 800991E0 02603821 */  addu       $a3, $s3, $zero
/* 3DE4 800991E4 AFB10010 */  sw         $s1, 0x10($sp)
/* 3DE8 800991E8 AFB00014 */  sw         $s0, 0x14($sp)
/* 3DEC 800991EC 0C02E598 */  jal        func_800B9660
/* 3DF0 800991F0 AFB40018 */   sw        $s4, 0x18($sp)
/* 3DF4 800991F4 02802021 */  addu       $a0, $s4, $zero
/* 3DF8 800991F8 27A50050 */  addiu      $a1, $sp, 0x50
/* 3DFC 800991FC 0C030200 */  jal        func_800C0800
/* 3E00 80099200 24060001 */   addiu     $a2, $zero, 0x1
/* 3E04 80099204 02709821 */  addu       $s3, $s3, $s0
/* 3E08 80099208 02509023 */  subu       $s2, $s2, $s0
/* 3E0C 8009920C 1640FFEA */  bnez       $s2, .L800991B8
/* 3E10 80099210 02308821 */   addu      $s1, $s1, $s0
.L80099214:
/* 3E14 80099214 8FBF006C */  lw         $ra, 0x6C($sp)
/* 3E18 80099218 8FB40068 */  lw         $s4, 0x68($sp)
/* 3E1C 8009921C 8FB30064 */  lw         $s3, 0x64($sp)
/* 3E20 80099220 8FB20060 */  lw         $s2, 0x60($sp)
/* 3E24 80099224 8FB1005C */  lw         $s1, 0x5C($sp)
/* 3E28 80099228 8FB00058 */  lw         $s0, 0x58($sp)
/* 3E2C 8009922C 27BD0070 */  addiu      $sp, $sp, 0x70
/* 3E30 80099230 03E00008 */  jr         $ra
/* 3E34 80099234 00000000 */   nop
.size func_80099174, . - func_80099174
