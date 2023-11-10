glabel func_800B4100
/* 1ED00 800B4100 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1ED04 800B4104 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1ED08 800B4108 00808821 */  addu       $s1, $a0, $zero
/* 1ED0C 800B410C AFB00018 */  sw         $s0, 0x18($sp)
/* 1ED10 800B4110 00A08021 */  addu       $s0, $a1, $zero
/* 1ED14 800B4114 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1ED18 800B4118 AFB20020 */  sw         $s2, 0x20($sp)
/* 1ED1C 800B411C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 1ED20 800B4120 8E230048 */  lw         $v1, 0x48($s1)
/* 1ED24 800B4124 00C09021 */  addu       $s2, $a2, $zero
/* 1ED28 800B4128 24020170 */  addiu      $v0, $zero, 0x170
/* 1ED2C 800B412C 10600014 */  beqz       $v1, .L800B4180
/* 1ED30 800B4130 A7A20010 */   sh        $v0, 0x10($sp)
/* 1ED34 800B4134 27A50010 */  addiu      $a1, $sp, 0x10
/* 1ED38 800B4138 240600B8 */  addiu      $a2, $zero, 0xB8
/* 1ED3C 800B413C 0C02CE78 */  jal        func_800B39E0
/* 1ED40 800B4140 02403821 */   addu      $a3, $s2, $zero
/* 1ED44 800B4144 00409021 */  addu       $s2, $v0, $zero
/* 1ED48 800B4148 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 1ED4C 800B414C 87A20010 */  lh         $v0, 0x10($sp)
/* 1ED50 800B4150 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 1ED54 800B4154 02402021 */  addu       $a0, $s2, $zero
/* 1ED58 800B4158 00431024 */  and        $v0, $v0, $v1
/* 1ED5C 800B415C 3C030A00 */  lui        $v1, (0xA000000 >> 16)
/* 1ED60 800B4160 00431025 */  or         $v0, $v0, $v1
/* 1ED64 800B4164 AC820000 */  sw         $v0, 0x0($a0)
/* 1ED68 800B4168 96020000 */  lhu        $v0, 0x0($s0)
/* 1ED6C 800B416C 26520008 */  addiu      $s2, $s2, 0x8
/* 1ED70 800B4170 00021400 */  sll        $v0, $v0, 16
/* 1ED74 800B4174 34420170 */  ori        $v0, $v0, 0x170
/* 1ED78 800B4178 0802D0A7 */  j          .L800B429C
/* 1ED7C 800B417C AC820004 */   sw        $v0, 0x4($a0)
.L800B4180:
/* 1ED80 800B4180 C6200044 */  lwc1       $f0, 0x44($s1)
/* 1ED84 800B4184 3C018010 */  lui        $at, %hi(D_800FEBC0)
/* 1ED88 800B4188 D422EBC0 */  ldc1       $f2, %lo(D_800FEBC0)($at)
/* 1ED8C 800B418C 46000021 */  cvt.d.s    $f0, $f0
/* 1ED90 800B4190 4620103C */  c.lt.d     $f2, $f0
/* 1ED94 800B4194 00000000 */  nop
/* 1ED98 800B4198 45000006 */  bc1f       .L800B41B4
/* 1ED9C 800B419C 00000000 */   nop
/* 1EDA0 800B41A0 3C013FFF */  lui        $at, (0x3FFFFEB0 >> 16)
/* 1EDA4 800B41A4 3421FEB0 */  ori        $at, $at, (0x3FFFFEB0 & 0xFFFF)
/* 1EDA8 800B41A8 44810000 */  mtc1       $at, $f0
/* 1EDAC 800B41AC 00000000 */  nop
/* 1EDB0 800B41B0 E6200044 */  swc1       $f0, 0x44($s1)
.L800B41B4:
/* 1EDB4 800B41B4 C6200044 */  lwc1       $f0, 0x44($s1)
/* 1EDB8 800B41B8 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 1EDBC 800B41BC 4481A000 */  mtc1       $at, $f20
/* 1EDC0 800B41C0 00000000 */  nop
/* 1EDC4 800B41C4 46140002 */  mul.s      $f0, $f0, $f20
/* 1EDC8 800B41C8 4600008D */  trunc.w.s  $f2, $f0
/* 1EDCC 800B41CC 44021000 */  mfc1       $v0, $f2
/* 1EDD0 800B41D0 00000000 */  nop
/* 1EDD4 800B41D4 44822000 */  mtc1       $v0, $f4
/* 1EDD8 800B41D8 00000000 */  nop
/* 1EDDC 800B41DC 46802120 */  cvt.s.w    $f4, $f4
/* 1EDE0 800B41E0 46142103 */  div.s      $f4, $f4, $f20
/* 1EDE4 800B41E4 3C014338 */  lui        $at, (0x43380000 >> 16)
/* 1EDE8 800B41E8 44810000 */  mtc1       $at, $f0
/* 1EDEC 800B41EC 00000000 */  nop
/* 1EDF0 800B41F0 46002002 */  mul.s      $f0, $f4, $f0
/* 1EDF4 800B41F4 C622004C */  lwc1       $f2, 0x4C($s1)
/* 1EDF8 800B41F8 46001080 */  add.s      $f2, $f2, $f0
/* 1EDFC 800B41FC 02202021 */  addu       $a0, $s1, $zero
/* 1EE00 800B4200 4600100D */  trunc.w.s  $f0, $f2
/* 1EE04 800B4204 44060000 */  mfc1       $a2, $f0
/* 1EE08 800B4208 00000000 */  nop
/* 1EE0C 800B420C 44860000 */  mtc1       $a2, $f0
/* 1EE10 800B4210 00000000 */  nop
/* 1EE14 800B4214 46800020 */  cvt.s.w    $f0, $f0
/* 1EE18 800B4218 46001081 */  sub.s      $f2, $f2, $f0
/* 1EE1C 800B421C 27A50010 */  addiu      $a1, $sp, 0x10
/* 1EE20 800B4220 02403821 */  addu       $a3, $s2, $zero
/* 1EE24 800B4224 E6240044 */  swc1       $f4, 0x44($s1)
/* 1EE28 800B4228 0C02CE78 */  jal        func_800B39E0
/* 1EE2C 800B422C E622004C */   swc1      $f2, 0x4C($s1)
/* 1EE30 800B4230 C6200044 */  lwc1       $f0, 0x44($s1)
/* 1EE34 800B4234 46140002 */  mul.s      $f0, $f0, $f20
/* 1EE38 800B4238 8E240040 */  lw         $a0, 0x40($s1)
/* 1EE3C 800B423C 00409021 */  addu       $s2, $v0, $zero
/* 1EE40 800B4240 4600008D */  trunc.w.s  $f2, $f0
/* 1EE44 800B4244 44101000 */  mfc1       $s0, $f2
/* 1EE48 800B4248 00000000 */  nop
/* 1EE4C 800B424C 0C02F680 */  jal        func_800BDA00
/* 1EE50 800B4250 3210FFFF */   andi      $s0, $s0, 0xFFFF
/* 1EE54 800B4254 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 1EE58 800B4258 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 1EE5C 800B425C 02402021 */  addu       $a0, $s2, $zero
/* 1EE60 800B4260 00431024 */  and        $v0, $v0, $v1
/* 1EE64 800B4264 3C030500 */  lui        $v1, (0x5000000 >> 16)
/* 1EE68 800B4268 00431025 */  or         $v0, $v0, $v1
/* 1EE6C 800B426C AC820000 */  sw         $v0, 0x0($a0)
/* 1EE70 800B4270 8E220050 */  lw         $v0, 0x50($s1)
/* 1EE74 800B4274 26520008 */  addiu      $s2, $s2, 0x8
/* 1EE78 800B4278 97A30010 */  lhu        $v1, 0x10($sp)
/* 1EE7C 800B427C 00108380 */  sll        $s0, $s0, 14
/* 1EE80 800B4280 00021780 */  sll        $v0, $v0, 30
/* 1EE84 800B4284 00501025 */  or         $v0, $v0, $s0
/* 1EE88 800B4288 30630FFF */  andi       $v1, $v1, 0xFFF
/* 1EE8C 800B428C 00031880 */  sll        $v1, $v1, 2
/* 1EE90 800B4290 00431025 */  or         $v0, $v0, $v1
/* 1EE94 800B4294 AC820004 */  sw         $v0, 0x4($a0)
/* 1EE98 800B4298 AE200050 */  sw         $zero, 0x50($s1)
.L800B429C:
/* 1EE9C 800B429C 02401021 */  addu       $v0, $s2, $zero
/* 1EEA0 800B42A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1EEA4 800B42A4 8FB20020 */  lw         $s2, 0x20($sp)
/* 1EEA8 800B42A8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1EEAC 800B42AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1EEB0 800B42B0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 1EEB4 800B42B4 03E00008 */  jr         $ra
/* 1EEB8 800B42B8 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B4100, . - func_800B4100
