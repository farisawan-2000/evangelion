glabel func_8009D120
/* 7D20 8009D120 3C028010 */  lui        $v0, %hi(D_800FF3E0)
/* 7D24 8009D124 8C42F3E0 */  lw         $v0, %lo(D_800FF3E0)($v0)
/* 7D28 8009D128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D2C 8009D12C AFB00010 */  sw         $s0, 0x10($sp)
/* 7D30 8009D130 00808021 */  addu       $s0, $a0, $zero
/* 7D34 8009D134 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D38 8009D138 00021880 */  sll        $v1, $v0, 2
/* 7D3C 8009D13C 00621821 */  addu       $v1, $v1, $v0
/* 7D40 8009D140 000318C0 */  sll        $v1, $v1, 3
/* 7D44 8009D144 3C048015 */  lui        $a0, %hi(D_8014CF94)
/* 7D48 8009D148 00832021 */  addu       $a0, $a0, $v1
/* 7D4C 8009D14C 9484CF94 */  lhu        $a0, %lo(D_8014CF94)($a0)
/* 7D50 8009D150 8E05001C */  lw         $a1, 0x1C($s0)
/* 7D54 8009D154 3C018015 */  lui        $at, %hi(D_8014CF98)
/* 7D58 8009D158 00230821 */  addu       $at, $at, $v1
/* 7D5C 8009D15C 9423CF98 */  lhu        $v1, %lo(D_8014CF98)($at)
/* 7D60 8009D160 38820800 */  xori       $v0, $a0, 0x800
/* 7D64 8009D164 2C420001 */  sltiu      $v0, $v0, 0x1
/* 7D68 8009D168 00A22823 */  subu       $a1, $a1, $v0
/* 7D6C 8009D16C 38840400 */  xori       $a0, $a0, 0x400
/* 7D70 8009D170 2C840001 */  sltiu      $a0, $a0, 0x1
/* 7D74 8009D174 38620800 */  xori       $v0, $v1, 0x800
/* 7D78 8009D178 2C420001 */  sltiu      $v0, $v0, 0x1
/* 7D7C 8009D17C 38630400 */  xori       $v1, $v1, 0x400
/* 7D80 8009D180 2C630001 */  sltiu      $v1, $v1, 0x1
/* 7D84 8009D184 00431025 */  or         $v0, $v0, $v1
/* 7D88 8009D188 1040000B */  beqz       $v0, .L8009D1B8
/* 7D8C 8009D18C 00A42821 */   addu      $a1, $a1, $a0
/* 7D90 8009D190 8E030010 */  lw         $v1, 0x10($s0)
/* 7D94 8009D194 00A3102A */  slt        $v0, $a1, $v1
/* 7D98 8009D198 14400003 */  bnez       $v0, .L8009D1A8
/* 7D9C 8009D19C 00000000 */   nop
/* 7DA0 8009D1A0 08027477 */  j          .L8009D1DC
/* 7DA4 8009D1A4 00A32823 */   subu      $a1, $a1, $v1
.L8009D1A8:
/* 7DA8 8009D1A8 04A2000C */  bltzl      $a1, .L8009D1DC
/* 7DAC 8009D1AC 00A32821 */   addu      $a1, $a1, $v1
/* 7DB0 8009D1B0 08027477 */  j          .L8009D1DC
/* 7DB4 8009D1B4 00000000 */   nop
.L8009D1B8:
/* 7DB8 8009D1B8 8E020010 */  lw         $v0, 0x10($s0)
/* 7DBC 8009D1BC 2443FFFF */  addiu      $v1, $v0, -0x1
/* 7DC0 8009D1C0 0065102A */  slt        $v0, $v1, $a1
/* 7DC4 8009D1C4 10400003 */  beqz       $v0, .L8009D1D4
/* 7DC8 8009D1C8 00051027 */   nor       $v0, $zero, $a1
/* 7DCC 8009D1CC 08027477 */  j          .L8009D1DC
/* 7DD0 8009D1D0 00602821 */   addu      $a1, $v1, $zero
.L8009D1D4:
/* 7DD4 8009D1D4 000217C3 */  sra        $v0, $v0, 31
/* 7DD8 8009D1D8 00A22824 */  and        $a1, $a1, $v0
.L8009D1DC:
/* 7DDC 8009D1DC 8E04001C */  lw         $a0, 0x1C($s0)
/* 7DE0 8009D1E0 8E030020 */  lw         $v1, 0x20($s0)
/* 7DE4 8009D1E4 0083102A */  slt        $v0, $a0, $v1
/* 7DE8 8009D1E8 14400007 */  bnez       $v0, .L8009D208
/* 7DEC 8009D1EC 00000000 */   nop
/* 7DF0 8009D1F0 8E020014 */  lw         $v0, 0x14($s0)
/* 7DF4 8009D1F4 00621021 */  addu       $v0, $v1, $v0
/* 7DF8 8009D1F8 0082102A */  slt        $v0, $a0, $v0
/* 7DFC 8009D1FC 10400009 */  beqz       $v0, .L8009D224
/* 7E00 8009D200 00000000 */   nop
/* 7E04 8009D204 AE05001C */  sw         $a1, 0x1C($s0)
.L8009D208:
/* 7E08 8009D208 8E020020 */  lw         $v0, 0x20($s0)
/* 7E0C 8009D20C 8E040014 */  lw         $a0, 0x14($s0)
/* 7E10 8009D210 8E03001C */  lw         $v1, 0x1C($s0)
/* 7E14 8009D214 00441021 */  addu       $v0, $v0, $a0
/* 7E18 8009D218 0062182A */  slt        $v1, $v1, $v0
/* 7E1C 8009D21C 14600004 */  bnez       $v1, .L8009D230
/* 7E20 8009D220 00000000 */   nop
.L8009D224:
/* 7E24 8009D224 8E020020 */  lw         $v0, 0x20($s0)
/* 7E28 8009D228 24420001 */  addiu      $v0, $v0, 0x1
/* 7E2C 8009D22C AE020020 */  sw         $v0, 0x20($s0)
.L8009D230:
/* 7E30 8009D230 8E02001C */  lw         $v0, 0x1C($s0)
/* 7E34 8009D234 8E030020 */  lw         $v1, 0x20($s0)
/* 7E38 8009D238 0043102A */  slt        $v0, $v0, $v1
/* 7E3C 8009D23C 10400002 */  beqz       $v0, .L8009D248
/* 7E40 8009D240 2462FFFF */   addiu     $v0, $v1, -0x1
/* 7E44 8009D244 AE020020 */  sw         $v0, 0x20($s0)
.L8009D248:
/* 7E48 8009D248 0C02749E */  jal        func_8009D278
/* 7E4C 8009D24C 02002021 */   addu      $a0, $s0, $zero
/* 7E50 8009D250 02002021 */  addu       $a0, $s0, $zero
/* 7E54 8009D254 00408021 */  addu       $s0, $v0, $zero
/* 7E58 8009D258 0C0274BE */  jal        func_8009D2F8
/* 7E5C 8009D25C 24050001 */   addiu     $a1, $zero, 0x1
/* 7E60 8009D260 02001021 */  addu       $v0, $s0, $zero
/* 7E64 8009D264 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E68 8009D268 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E6C 8009D26C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7E70 8009D270 03E00008 */  jr         $ra
/* 7E74 8009D274 00000000 */   nop
.size func_8009D120, . - func_8009D120