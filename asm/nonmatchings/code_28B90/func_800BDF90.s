glabel func_800BDF90
/* 28B90 800BDF90 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 28B94 800BDF94 AFB30024 */  sw         $s3, 0x24($sp)
/* 28B98 800BDF98 8FB3008C */  lw         $s3, 0x8C($sp)
/* 28B9C 800BDF9C AFB20020 */  sw         $s2, 0x20($sp)
/* 28BA0 800BDFA0 8FB20090 */  lw         $s2, 0x90($sp)
/* 28BA4 800BDFA4 F7BA0058 */  sdc1       $f26, 0x58($sp)
/* 28BA8 800BDFA8 C7BA0094 */  lwc1       $f26, 0x94($sp)
/* 28BAC 800BDFAC F7B40040 */  sdc1       $f20, 0x40($sp)
/* 28BB0 800BDFB0 C7B40080 */  lwc1       $f20, 0x80($sp)
/* 28BB4 800BDFB4 F7B60048 */  sdc1       $f22, 0x48($sp)
/* 28BB8 800BDFB8 C7B60084 */  lwc1       $f22, 0x84($sp)
/* 28BBC 800BDFBC F7B80050 */  sdc1       $f24, 0x50($sp)
/* 28BC0 800BDFC0 C7B80088 */  lwc1       $f24, 0x88($sp)
/* 28BC4 800BDFC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 28BC8 800BDFC8 00808021 */  addu       $s0, $a0, $zero
/* 28BCC 800BDFCC AFB40028 */  sw         $s4, 0x28($sp)
/* 28BD0 800BDFD0 00A0A021 */  addu       $s4, $a1, $zero
/* 28BD4 800BDFD4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 28BD8 800BDFD8 00C0A821 */  addu       $s5, $a2, $zero
/* 28BDC 800BDFDC AFBE0038 */  sw         $fp, 0x38($sp)
/* 28BE0 800BDFE0 AFBF003C */  sw         $ra, 0x3C($sp)
/* 28BE4 800BDFE4 AFB70034 */  sw         $s7, 0x34($sp)
/* 28BE8 800BDFE8 AFB60030 */  sw         $s6, 0x30($sp)
/* 28BEC 800BDFEC AFB1001C */  sw         $s1, 0x1C($sp)
/* 28BF0 800BDFF0 F7BE0068 */  sdc1       $f30, 0x68($sp)
/* 28BF4 800BDFF4 F7BC0060 */  sdc1       $f28, 0x60($sp)
/* 28BF8 800BDFF8 0C02FA9C */  jal        func_800BEA70
/* 28BFC 800BDFFC 00E0F021 */   addu      $fp, $a3, $zero
/* 28C00 800BE000 44947000 */  mtc1       $s4, $f14
/* 28C04 800BE004 00000000 */  nop
/* 28C08 800BE008 460EA701 */  sub.s      $f28, $f20, $f14
/* 28C0C 800BE00C 44959000 */  mtc1       $s5, $f18
/* 28C10 800BE010 461CE002 */  mul.s      $f0, $f28, $f28
/* 28C14 800BE014 4612B781 */  sub.s      $f30, $f22, $f18
/* 28C18 800BE018 449E7000 */  mtc1       $fp, $f14
/* 28C1C 800BE01C 00000000 */  nop
/* 28C20 800BE020 460EC381 */  sub.s      $f14, $f24, $f14
/* 28C24 800BE024 461EF102 */  mul.s      $f4, $f30, $f30
/* 28C28 800BE028 44117000 */  mfc1       $s1, $f14
/* 28C2C 800BE02C 00000000 */  nop
/* 28C30 800BE030 44919000 */  mtc1       $s1, $f18
/* 28C34 800BE034 00000000 */  nop
/* 28C38 800BE038 46127082 */  mul.s      $f2, $f14, $f18
/* 28C3C 800BE03C 46040000 */  add.s      $f0, $f0, $f4
/* 28C40 800BE040 46020300 */  add.s      $f12, $f0, $f2
/* 28C44 800BE044 46006084 */  sqrt.s     $f2, $f12
/* 28C48 800BE048 46021032 */  c.eq.s     $f2, $f2
/* 28C4C 800BE04C 00000000 */  nop
/* 28C50 800BE050 45010004 */  bc1t       .L800BE064
/* 28C54 800BE054 00000000 */   nop
/* 28C58 800BE058 0C02F698 */  jal        func_800BDA60
/* 28C5C 800BE05C 00000000 */   nop
/* 28C60 800BE060 46000086 */  mov.s      $f2, $f0
.L800BE064:
/* 28C64 800BE064 3C018010 */  lui        $at, %hi(D_800FEF30)
/* 28C68 800BE068 D420EF30 */  ldc1       $f0, %lo(D_800FEF30)($at)
/* 28C6C 800BE06C 460010A1 */  cvt.d.s    $f2, $f2
/* 28C70 800BE070 46220003 */  div.d      $f0, $f0, $f2
/* 28C74 800BE074 46200420 */  cvt.s.d    $f16, $f0
/* 28C78 800BE078 4610E702 */  mul.s      $f28, $f28, $f16
/* 28C7C 800BE07C 44917000 */  mtc1       $s1, $f14
/* 28C80 800BE080 00000000 */  nop
/* 28C84 800BE084 46107382 */  mul.s      $f14, $f14, $f16
/* 28C88 800BE088 00000000 */  nop
/* 28C8C 800BE08C 4610F782 */  mul.s      $f30, $f30, $f16
/* 28C90 800BE090 44929000 */  mtc1       $s2, $f18
/* 28C94 800BE094 00000000 */  nop
/* 28C98 800BE098 460E9102 */  mul.s      $f4, $f18, $f14
/* 28C9C 800BE09C 00000000 */  nop
/* 28CA0 800BE0A0 461ED002 */  mul.s      $f0, $f26, $f30
/* 28CA4 800BE0A4 00000000 */  nop
/* 28CA8 800BE0A8 461CD202 */  mul.s      $f8, $f26, $f28
/* 28CAC 800BE0AC 44939000 */  mtc1       $s3, $f18
/* 28CB0 800BE0B0 00000000 */  nop
/* 28CB4 800BE0B4 460E9082 */  mul.s      $f2, $f18, $f14
/* 28CB8 800BE0B8 00000000 */  nop
/* 28CBC 800BE0BC 461E9282 */  mul.s      $f10, $f18, $f30
/* 28CC0 800BE0C0 44117000 */  mfc1       $s1, $f14
/* 28CC4 800BE0C4 44927000 */  mtc1       $s2, $f14
/* 28CC8 800BE0C8 00000000 */  nop
/* 28CCC 800BE0CC 461C7182 */  mul.s      $f6, $f14, $f28
/* 28CD0 800BE0D0 46002601 */  sub.s      $f24, $f4, $f0
/* 28CD4 800BE0D4 4618C002 */  mul.s      $f0, $f24, $f24
/* 28CD8 800BE0D8 46024581 */  sub.s      $f22, $f8, $f2
/* 28CDC 800BE0DC 4616B102 */  mul.s      $f4, $f22, $f22
/* 28CE0 800BE0E0 46065501 */  sub.s      $f20, $f10, $f6
/* 28CE4 800BE0E4 4614A082 */  mul.s      $f2, $f20, $f20
/* 28CE8 800BE0E8 46040000 */  add.s      $f0, $f0, $f4
/* 28CEC 800BE0EC 46020300 */  add.s      $f12, $f0, $f2
/* 28CF0 800BE0F0 46006004 */  sqrt.s     $f0, $f12
/* 28CF4 800BE0F4 46000032 */  c.eq.s     $f0, $f0
/* 28CF8 800BE0F8 00000000 */  nop
/* 28CFC 800BE0FC 45010003 */  bc1t       .L800BE10C
/* 28D00 800BE100 00000000 */   nop
/* 28D04 800BE104 0C02F698 */  jal        func_800BDA60
/* 28D08 800BE108 00000000 */   nop
.L800BE10C:
/* 28D0C 800BE10C 3C018010 */  lui        $at, %hi(D_800FEF38)
/* 28D10 800BE110 8C36EF38 */  lw         $s6, %lo(D_800FEF38)($at)
/* 28D14 800BE114 8C37EF3C */  lw         $s7, %lo(D_800FEF3C)($at)
/* 28D18 800BE118 44979000 */  mtc1       $s7, $f18
/* 28D1C 800BE11C 44969800 */  mtc1       $s6, $f19
/* 28D20 800BE120 46000021 */  cvt.d.s    $f0, $f0
/* 28D24 800BE124 46209003 */  div.d      $f0, $f18, $f0
/* 28D28 800BE128 46200420 */  cvt.s.d    $f16, $f0
/* 28D2C 800BE12C 4610C602 */  mul.s      $f24, $f24, $f16
/* 28D30 800BE130 00000000 */  nop
/* 28D34 800BE134 4610A502 */  mul.s      $f20, $f20, $f16
/* 28D38 800BE138 00000000 */  nop
/* 28D3C 800BE13C 4610B582 */  mul.s      $f22, $f22, $f16
/* 28D40 800BE140 00000000 */  nop
/* 28D44 800BE144 4614F102 */  mul.s      $f4, $f30, $f20
/* 28D48 800BE148 44917000 */  mtc1       $s1, $f14
/* 28D4C 800BE14C 00000000 */  nop
/* 28D50 800BE150 46167002 */  mul.s      $f0, $f14, $f22
/* 28D54 800BE154 00000000 */  nop
/* 28D58 800BE158 46187202 */  mul.s      $f8, $f14, $f24
/* 28D5C 800BE15C 00000000 */  nop
/* 28D60 800BE160 4614E082 */  mul.s      $f2, $f28, $f20
/* 28D64 800BE164 00000000 */  nop
/* 28D68 800BE168 4616E282 */  mul.s      $f10, $f28, $f22
/* 28D6C 800BE16C 00000000 */  nop
/* 28D70 800BE170 4618F182 */  mul.s      $f6, $f30, $f24
/* 28D74 800BE174 46002101 */  sub.s      $f4, $f4, $f0
/* 28D78 800BE178 46042002 */  mul.s      $f0, $f4, $f4
/* 28D7C 800BE17C 46024201 */  sub.s      $f8, $f8, $f2
/* 28D80 800BE180 44132000 */  mfc1       $s3, $f4
/* 28D84 800BE184 46084102 */  mul.s      $f4, $f8, $f8
/* 28D88 800BE188 46065681 */  sub.s      $f26, $f10, $f6
/* 28D8C 800BE18C 461AD082 */  mul.s      $f2, $f26, $f26
/* 28D90 800BE190 46040000 */  add.s      $f0, $f0, $f4
/* 28D94 800BE194 46020300 */  add.s      $f12, $f0, $f2
/* 28D98 800BE198 46006004 */  sqrt.s     $f0, $f12
/* 28D9C 800BE19C 46000032 */  c.eq.s     $f0, $f0
/* 28DA0 800BE1A0 44124000 */  mfc1       $s2, $f8
/* 28DA4 800BE1A4 00000000 */  nop
/* 28DA8 800BE1A8 45030006 */  bc1tl      .L800BE1C4
/* 28DAC 800BE1AC 46000021 */   cvt.d.s   $f0, $f0
/* 28DB0 800BE1B0 0C02F698 */  jal        func_800BDA60
/* 28DB4 800BE1B4 00000000 */   nop
/* 28DB8 800BE1B8 44979000 */  mtc1       $s7, $f18
/* 28DBC 800BE1BC 44969800 */  mtc1       $s6, $f19
/* 28DC0 800BE1C0 46000021 */  cvt.d.s    $f0, $f0
.L800BE1C4:
/* 28DC4 800BE1C4 46209003 */  div.d      $f0, $f18, $f0
/* 28DC8 800BE1C8 44937000 */  mtc1       $s3, $f14
/* 28DCC 800BE1CC 46200420 */  cvt.s.d    $f16, $f0
/* 28DD0 800BE1D0 46107382 */  mul.s      $f14, $f14, $f16
/* 28DD4 800BE1D4 44929000 */  mtc1       $s2, $f18
/* 28DD8 800BE1D8 00000000 */  nop
/* 28DDC 800BE1DC 46109482 */  mul.s      $f18, $f18, $f16
/* 28DE0 800BE1E0 00000000 */  nop
/* 28DE4 800BE1E4 4610D682 */  mul.s      $f26, $f26, $f16
/* 28DE8 800BE1E8 44137000 */  mfc1       $s3, $f14
/* 28DEC 800BE1EC 44947000 */  mtc1       $s4, $f14
/* 28DF0 800BE1F0 00000000 */  nop
/* 28DF4 800BE1F4 46187082 */  mul.s      $f2, $f14, $f24
/* 28DF8 800BE1F8 44129000 */  mfc1       $s2, $f18
/* 28DFC 800BE1FC 44959000 */  mtc1       $s5, $f18
/* 28E00 800BE200 00000000 */  nop
/* 28E04 800BE204 46169182 */  mul.s      $f6, $f18, $f22
/* 28E08 800BE208 449E7000 */  mtc1       $fp, $f14
/* 28E0C 800BE20C 00000000 */  nop
/* 28E10 800BE210 46147202 */  mul.s      $f8, $f14, $f20
/* 28E14 800BE214 44949000 */  mtc1       $s4, $f18
/* 28E18 800BE218 44937000 */  mtc1       $s3, $f14
/* 28E1C 800BE21C 00000000 */  nop
/* 28E20 800BE220 460E9102 */  mul.s      $f4, $f18, $f14
/* 28E24 800BE224 44959000 */  mtc1       $s5, $f18
/* 28E28 800BE228 44927000 */  mtc1       $s2, $f14
/* 28E2C 800BE22C 00000000 */  nop
/* 28E30 800BE230 460E9282 */  mul.s      $f10, $f18, $f14
/* 28E34 800BE234 44949000 */  mtc1       $s4, $f18
/* 28E38 800BE238 00000000 */  nop
/* 28E3C 800BE23C 461C9002 */  mul.s      $f0, $f18, $f28
/* 28E40 800BE240 44957000 */  mtc1       $s5, $f14
/* 28E44 800BE244 00000000 */  nop
/* 28E48 800BE248 461E7302 */  mul.s      $f12, $f14, $f30
/* 28E4C 800BE24C 46061080 */  add.s      $f2, $f2, $f6
/* 28E50 800BE250 44917000 */  mtc1       $s1, $f14
/* 28E54 800BE254 449E9000 */  mtc1       $fp, $f18
/* 28E58 800BE258 46081080 */  add.s      $f2, $f2, $f8
/* 28E5C 800BE25C E6180000 */  swc1       $f24, 0x0($s0)
/* 28E60 800BE260 460E9382 */  mul.s      $f14, $f18, $f14
/* 28E64 800BE264 E6160010 */  swc1       $f22, 0x10($s0)
/* 28E68 800BE268 460A2100 */  add.s      $f4, $f4, $f10
/* 28E6C 800BE26C E6140020 */  swc1       $f20, 0x20($s0)
/* 28E70 800BE270 E61C0008 */  swc1       $f28, 0x8($s0)
/* 28E74 800BE274 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 28E78 800BE278 44813000 */  mtc1       $at, $f6
/* 28E7C 800BE27C 460C0000 */  add.s      $f0, $f0, $f12
/* 28E80 800BE280 461A9202 */  mul.s      $f8, $f18, $f26
/* 28E84 800BE284 E61E0018 */  swc1       $f30, 0x18($s0)
/* 28E88 800BE288 AE110028 */  sw         $s1, 0x28($s0)
/* 28E8C 800BE28C 460E0000 */  add.s      $f0, $f0, $f14
/* 28E90 800BE290 AE00000C */  sw         $zero, 0xC($s0)
/* 28E94 800BE294 AE00001C */  sw         $zero, 0x1C($s0)
/* 28E98 800BE298 AE00002C */  sw         $zero, 0x2C($s0)
/* 28E9C 800BE29C 46082100 */  add.s      $f4, $f4, $f8
/* 28EA0 800BE2A0 E61A0024 */  swc1       $f26, 0x24($s0)
/* 28EA4 800BE2A4 AE130004 */  sw         $s3, 0x4($s0)
/* 28EA8 800BE2A8 AE120014 */  sw         $s2, 0x14($s0)
/* 28EAC 800BE2AC 46001087 */  neg.s      $f2, $f2
/* 28EB0 800BE2B0 E606003C */  swc1       $f6, 0x3C($s0)
/* 28EB4 800BE2B4 46000007 */  neg.s      $f0, $f0
/* 28EB8 800BE2B8 E6020030 */  swc1       $f2, 0x30($s0)
/* 28EBC 800BE2BC 46002107 */  neg.s      $f4, $f4
/* 28EC0 800BE2C0 E6000038 */  swc1       $f0, 0x38($s0)
/* 28EC4 800BE2C4 E6040034 */  swc1       $f4, 0x34($s0)
/* 28EC8 800BE2C8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 28ECC 800BE2CC 8FBE0038 */  lw         $fp, 0x38($sp)
/* 28ED0 800BE2D0 8FB70034 */  lw         $s7, 0x34($sp)
/* 28ED4 800BE2D4 8FB60030 */  lw         $s6, 0x30($sp)
/* 28ED8 800BE2D8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 28EDC 800BE2DC 8FB40028 */  lw         $s4, 0x28($sp)
/* 28EE0 800BE2E0 8FB30024 */  lw         $s3, 0x24($sp)
/* 28EE4 800BE2E4 8FB20020 */  lw         $s2, 0x20($sp)
/* 28EE8 800BE2E8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 28EEC 800BE2EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 28EF0 800BE2F0 D7BE0068 */  ldc1       $f30, 0x68($sp)
/* 28EF4 800BE2F4 D7BC0060 */  ldc1       $f28, 0x60($sp)
/* 28EF8 800BE2F8 D7BA0058 */  ldc1       $f26, 0x58($sp)
/* 28EFC 800BE2FC D7B80050 */  ldc1       $f24, 0x50($sp)
/* 28F00 800BE300 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 28F04 800BE304 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 28F08 800BE308 03E00008 */  jr         $ra
/* 28F0C 800BE30C 27BD0070 */   addiu     $sp, $sp, 0x70
.size func_800BDF90, . - func_800BDF90
