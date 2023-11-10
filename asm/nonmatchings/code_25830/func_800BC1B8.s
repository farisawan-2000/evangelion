glabel func_800BC1B8
/* 26DB8 800BC1B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26DBC 800BC1BC AFBF0010 */  sw         $ra, 0x10($sp)
/* 26DC0 800BC1C0 24A3FFFE */  addiu      $v1, $a1, -0x2
/* 26DC4 800BC1C4 04610002 */  bgez       $v1, .L800BC1D0
/* 26DC8 800BC1C8 00601021 */   addu      $v0, $v1, $zero
/* 26DCC 800BC1CC 24A20005 */  addiu      $v0, $a1, 0x5
.L800BC1D0:
/* 26DD0 800BC1D0 000238C3 */  sra        $a3, $v0, 3
/* 26DD4 800BC1D4 00E02821 */  addu       $a1, $a3, $zero
/* 26DD8 800BC1D8 000510C0 */  sll        $v0, $a1, 3
/* 26DDC 800BC1DC 00623823 */  subu       $a3, $v1, $v0
/* 26DE0 800BC1E0 8CC60000 */  lw         $a2, 0x0($a2)
/* 26DE4 800BC1E4 2CE20008 */  sltiu      $v0, $a3, 0x8
/* 26DE8 800BC1E8 1040006B */  beqz       $v0, .L800BC398
/* 26DEC 800BC1EC 00000000 */   nop
/* 26DF0 800BC1F0 00071080 */  sll        $v0, $a3, 2
/* 26DF4 800BC1F4 3C018010 */  lui        $at, %hi(jtbl_800FEE60)
/* 26DF8 800BC1F8 00220821 */  addu       $at, $at, $v0
/* 26DFC 800BC1FC 8C22EE60 */  lw         $v0, %lo(jtbl_800FEE60)($at)
/* 26E00 800BC200 00400008 */  jr         $v0
/* 26E04 800BC204 00000000 */   nop
glabel .L800BC208
/* 26E08 800BC208 8C820020 */  lw         $v0, 0x20($a0)
/* 26E0C 800BC20C 00051880 */  sll        $v1, $a1, 2
/* 26E10 800BC210 00651821 */  addu       $v1, $v1, $a1
/* 26E14 800BC214 000318C0 */  sll        $v1, $v1, 3
/* 26E18 800BC218 00621821 */  addu       $v1, $v1, $v0
/* 26E1C 800BC21C 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 26E20 800BC220 00C21024 */  and        $v0, $a2, $v0
/* 26E24 800BC224 0802F0E6 */  j          .L800BC398
/* 26E28 800BC228 AC620000 */   sw        $v0, 0x0($v1)
glabel .L800BC22C
/* 26E2C 800BC22C 8C820020 */  lw         $v0, 0x20($a0)
/* 26E30 800BC230 00051880 */  sll        $v1, $a1, 2
/* 26E34 800BC234 00651821 */  addu       $v1, $v1, $a1
/* 26E38 800BC238 000318C0 */  sll        $v1, $v1, 3
/* 26E3C 800BC23C 00621821 */  addu       $v1, $v1, $v0
/* 26E40 800BC240 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 26E44 800BC244 00C21024 */  and        $v0, $a2, $v0
/* 26E48 800BC248 0802F0E6 */  j          .L800BC398
/* 26E4C 800BC24C AC620004 */   sw        $v0, 0x4($v1)
glabel .L800BC250
/* 26E50 800BC250 8C830020 */  lw         $v1, 0x20($a0)
/* 26E54 800BC254 00051080 */  sll        $v0, $a1, 2
/* 26E58 800BC258 00451021 */  addu       $v0, $v0, $a1
/* 26E5C 800BC25C 000210C0 */  sll        $v0, $v0, 3
/* 26E60 800BC260 00431021 */  addu       $v0, $v0, $v1
/* 26E64 800BC264 0802F0E6 */  j          .L800BC398
/* 26E68 800BC268 A4460008 */   sh        $a2, 0x8($v0)
glabel .L800BC26C
/* 26E6C 800BC26C 8C830020 */  lw         $v1, 0x20($a0)
/* 26E70 800BC270 00051080 */  sll        $v0, $a1, 2
/* 26E74 800BC274 00451021 */  addu       $v0, $v0, $a1
/* 26E78 800BC278 000210C0 */  sll        $v0, $v0, 3
/* 26E7C 800BC27C 00431021 */  addu       $v0, $v0, $v1
/* 26E80 800BC280 0802F0E6 */  j          .L800BC398
/* 26E84 800BC284 A446000A */   sh        $a2, 0xA($v0)
glabel .L800BC288
/* 26E88 800BC288 8C830020 */  lw         $v1, 0x20($a0)
/* 26E8C 800BC28C 00051080 */  sll        $v0, $a1, 2
/* 26E90 800BC290 00451021 */  addu       $v0, $v0, $a1
/* 26E94 800BC294 000210C0 */  sll        $v0, $v0, 3
/* 26E98 800BC298 00431021 */  addu       $v0, $v0, $v1
/* 26E9C 800BC29C 0802F0E6 */  j          .L800BC398
/* 26EA0 800BC2A0 A446000C */   sh        $a2, 0xC($v0)
glabel .L800BC2A4
/* 26EA4 800BC2A4 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 26EA8 800BC2A8 44811000 */  mtc1       $at, $f2
/* 26EAC 800BC2AC 44860000 */  mtc1       $a2, $f0
/* 26EB0 800BC2B0 00000000 */  nop
/* 26EB4 800BC2B4 46800020 */  cvt.s.w    $f0, $f0
/* 26EB8 800BC2B8 46020003 */  div.s      $f0, $f0, $f2
/* 26EBC 800BC2BC 3C02800F */  lui        $v0, %hi(D_800F6130)
/* 26EC0 800BC2C0 8C426130 */  lw         $v0, %lo(D_800F6130)($v0)
/* 26EC4 800BC2C4 46000021 */  cvt.d.s    $f0, $f0
/* 26EC8 800BC2C8 46200000 */  add.d      $f0, $f0, $f0
/* 26ECC 800BC2CC C4420044 */  lwc1       $f2, 0x44($v0)
/* 26ED0 800BC2D0 468010A1 */  cvt.d.w    $f2, $f2
/* 26ED4 800BC2D4 46220003 */  div.d      $f0, $f0, $f2
/* 26ED8 800BC2D8 8C830020 */  lw         $v1, 0x20($a0)
/* 26EDC 800BC2DC 00051080 */  sll        $v0, $a1, 2
/* 26EE0 800BC2E0 00451021 */  addu       $v0, $v0, $a1
/* 26EE4 800BC2E4 000210C0 */  sll        $v0, $v0, 3
/* 26EE8 800BC2E8 00431021 */  addu       $v0, $v0, $v1
/* 26EEC 800BC2EC 46200020 */  cvt.s.d    $f0, $f0
/* 26EF0 800BC2F0 0802F0E6 */  j          .L800BC398
/* 26EF4 800BC2F4 E4400010 */   swc1      $f0, 0x10($v0)
glabel .L800BC2F8
/* 26EF8 800BC2F8 8C830020 */  lw         $v1, 0x20($a0)
/* 26EFC 800BC2FC 00051080 */  sll        $v0, $a1, 2
/* 26F00 800BC300 00451021 */  addu       $v0, $v0, $a1
/* 26F04 800BC304 000210C0 */  sll        $v0, $v0, 3
/* 26F08 800BC308 3C018010 */  lui        $at, %hi(D_800FEE80)
/* 26F0C 800BC30C D422EE80 */  ldc1       $f2, %lo(D_800FEE80)($at)
/* 26F10 800BC310 44860000 */  mtc1       $a2, $f0
/* 26F14 800BC314 00000000 */  nop
/* 26F18 800BC318 46800020 */  cvt.s.w    $f0, $f0
/* 26F1C 800BC31C 00432021 */  addu       $a0, $v0, $v1
/* 26F20 800BC320 8C830004 */  lw         $v1, 0x4($a0)
/* 26F24 800BC324 8C820000 */  lw         $v0, 0x0($a0)
/* 26F28 800BC328 46000021 */  cvt.d.s    $f0, $f0
/* 26F2C 800BC32C 00621823 */  subu       $v1, $v1, $v0
/* 26F30 800BC330 44832000 */  mtc1       $v1, $f4
/* 26F34 800BC334 00000000 */  nop
/* 26F38 800BC338 46802121 */  cvt.d.w    $f4, $f4
/* 26F3C 800BC33C 04610004 */  bgez       $v1, .L800BC350
/* 26F40 800BC340 46220083 */   div.d     $f2, $f0, $f2
/* 26F44 800BC344 3C018010 */  lui        $at, %hi(D_800FEE88)
/* 26F48 800BC348 D420EE88 */  ldc1       $f0, %lo(D_800FEE88)($at)
/* 26F4C 800BC34C 46202100 */  add.d      $f4, $f4, $f0
.L800BC350:
/* 26F50 800BC350 00000000 */  nop
/* 26F54 800BC354 46241002 */  mul.d      $f0, $f2, $f4
/* 26F58 800BC358 46200020 */  cvt.s.d    $f0, $f0
/* 26F5C 800BC35C 0802F0E6 */  j          .L800BC398
/* 26F60 800BC360 E480001C */   swc1      $f0, 0x1C($a0)
glabel .L800BC364
/* 26F64 800BC364 8C830020 */  lw         $v1, 0x20($a0)
/* 26F68 800BC368 00051080 */  sll        $v0, $a1, 2
/* 26F6C 800BC36C 00451021 */  addu       $v0, $v0, $a1
/* 26F70 800BC370 000228C0 */  sll        $a1, $v0, 3
/* 26F74 800BC374 00A31821 */  addu       $v1, $a1, $v1
/* 26F78 800BC378 8C620020 */  lw         $v0, 0x20($v1)
/* 26F7C 800BC37C 10400006 */  beqz       $v0, .L800BC398
/* 26F80 800BC380 00000000 */   nop
/* 26F84 800BC384 A4460000 */  sh         $a2, 0x0($v0)
/* 26F88 800BC388 8C820020 */  lw         $v0, 0x20($a0)
/* 26F8C 800BC38C 00A21021 */  addu       $v0, $a1, $v0
/* 26F90 800BC390 0C02E63C */  jal        func_800B98F0
/* 26F94 800BC394 8C440020 */   lw        $a0, 0x20($v0)
.L800BC398:
/* 26F98 800BC398 8FBF0010 */  lw         $ra, 0x10($sp)
/* 26F9C 800BC39C 00001021 */  addu       $v0, $zero, $zero
/* 26FA0 800BC3A0 03E00008 */  jr         $ra
/* 26FA4 800BC3A4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800BC1B8, . - func_800BC1B8
