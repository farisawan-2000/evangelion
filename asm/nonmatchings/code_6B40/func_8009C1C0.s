glabel func_8009C1C0
/* 6DC0 8009C1C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6DC4 8009C1C4 3C03E300 */  lui        $v1, (0xE3000A01 >> 16)
/* 6DC8 8009C1C8 34630A01 */  ori        $v1, $v1, (0xE3000A01 & 0xFFFF)
/* 6DCC 8009C1CC AFB00010 */  sw         $s0, 0x10($sp)
/* 6DD0 8009C1D0 3C108015 */  lui        $s0, %hi(gDisplayListHead)
/* 6DD4 8009C1D4 8E109F94 */  lw         $s0, %lo(gDisplayListHead)($s0)
/* 6DD8 8009C1D8 3C048015 */  lui        $a0, %hi(D_80149EC8)
/* 6DDC 8009C1DC 8C849EC8 */  lw         $a0, %lo(D_80149EC8)($a0)
/* 6DE0 8009C1E0 3C068015 */  lui        $a2, %hi(D_8014A0BC)
/* 6DE4 8009C1E4 8CC6A0BC */  lw         $a2, %lo(D_8014A0BC)($a2)
/* 6DE8 8009C1E8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6DEC 8009C1EC 44812000 */  mtc1       $at, $f4
/* 6DF0 8009C1F0 00000000 */  nop
/* 6DF4 8009C1F4 3C07FFFC */  lui        $a3, (0xFFFCFFFC >> 16)
/* 6DF8 8009C1F8 34E7FFFC */  ori        $a3, $a3, (0xFFFCFFFC & 0xFFFF)
/* 6DFC 8009C1FC AFB3001C */  sw         $s3, 0x1C($sp)
/* 6E00 8009C200 3C13F700 */  lui        $s3, (0xF7000000 >> 16)
/* 6E04 8009C204 AFB20018 */  sw         $s2, 0x18($sp)
/* 6E08 8009C208 3C12F600 */  lui        $s2, (0xF6000000 >> 16)
/* 6E0C 8009C20C AFB10014 */  sw         $s1, 0x14($sp)
/* 6E10 8009C210 3C11E700 */  lui        $s1, (0xE7000000 >> 16)
/* 6E14 8009C214 AFBF0020 */  sw         $ra, 0x20($sp)
/* 6E18 8009C218 26020008 */  addiu      $v0, $s0, 0x8
/* 6E1C 8009C21C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6E20 8009C220 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6E24 8009C224 3C02ED00 */  lui        $v0, (0xED000000 >> 16)
/* 6E28 8009C228 AE020000 */  sw         $v0, 0x0($s0)
/* 6E2C 8009C22C 26020010 */  addiu      $v0, $s0, 0x10
/* 6E30 8009C230 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6E34 8009C234 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6E38 8009C238 3C02FE00 */  lui        $v0, (0xFE000000 >> 16)
/* 6E3C 8009C23C AE020008 */  sw         $v0, 0x8($s0)
/* 6E40 8009C240 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 6E44 8009C244 00822023 */  subu       $a0, $a0, $v0
/* 6E48 8009C248 26020018 */  addiu      $v0, $s0, 0x18
/* 6E4C 8009C24C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6E50 8009C250 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6E54 8009C254 3C020030 */  lui        $v0, (0x300000 >> 16)
/* 6E58 8009C258 AE020014 */  sw         $v0, 0x14($s0)
/* 6E5C 8009C25C 26020020 */  addiu      $v0, $s0, 0x20
/* 6E60 8009C260 AE030010 */  sw         $v1, 0x10($s0)
/* 6E64 8009C264 24C3FFFF */  addiu      $v1, $a2, -0x1
/* 6E68 8009C268 30650FFF */  andi       $a1, $v1, 0xFFF
/* 6E6C 8009C26C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6E70 8009C270 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6E74 8009C274 3C02FF10 */  lui        $v0, (0xFF100000 >> 16)
/* 6E78 8009C278 00A22825 */  or         $a1, $a1, $v0
/* 6E7C 8009C27C 26020028 */  addiu      $v0, $s0, 0x28
/* 6E80 8009C280 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6E84 8009C284 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6E88 8009C288 26020030 */  addiu      $v0, $s0, 0x30
/* 6E8C 8009C28C AE04000C */  sw         $a0, 0xC($s0)
/* 6E90 8009C290 AE04001C */  sw         $a0, 0x1C($s0)
/* 6E94 8009C294 3C048015 */  lui        $a0, %hi(D_80149DB8)
/* 6E98 8009C298 8C849DB8 */  lw         $a0, %lo(D_80149DB8)($a0)
/* 6E9C 8009C29C 306303FF */  andi       $v1, $v1, 0x3FF
/* 6EA0 8009C2A0 00031B80 */  sll        $v1, $v1, 14
/* 6EA4 8009C2A4 44861000 */  mtc1       $a2, $f2
/* 6EA8 8009C2A8 00000000 */  nop
/* 6EAC 8009C2AC 468010A0 */  cvt.s.w    $f2, $f2
/* 6EB0 8009C2B0 46041082 */  mul.s      $f2, $f2, $f4
/* 6EB4 8009C2B4 AE050018 */  sw         $a1, 0x18($s0)
/* 6EB8 8009C2B8 AE130020 */  sw         $s3, 0x20($s0)
/* 6EBC 8009C2BC AE070024 */  sw         $a3, 0x24($s0)
/* 6EC0 8009C2C0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6EC4 8009C2C4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6EC8 8009C2C8 AE00002C */  sw         $zero, 0x2C($s0)
/* 6ECC 8009C2CC AE110030 */  sw         $s1, 0x30($s0)
/* 6ED0 8009C2D0 AE000034 */  sw         $zero, 0x34($s0)
/* 6ED4 8009C2D4 AE050038 */  sw         $a1, 0x38($s0)
/* 6ED8 8009C2D8 2482FFFF */  addiu      $v0, $a0, -0x1
/* 6EDC 8009C2DC 304203FF */  andi       $v0, $v0, 0x3FF
/* 6EE0 8009C2E0 00021080 */  sll        $v0, $v0, 2
/* 6EE4 8009C2E4 00521025 */  or         $v0, $v0, $s2
/* 6EE8 8009C2E8 00621825 */  or         $v1, $v1, $v0
/* 6EEC 8009C2EC 26020038 */  addiu      $v0, $s0, 0x38
/* 6EF0 8009C2F0 44840000 */  mtc1       $a0, $f0
/* 6EF4 8009C2F4 00000000 */  nop
/* 6EF8 8009C2F8 46800020 */  cvt.s.w    $f0, $f0
/* 6EFC 8009C2FC 46040002 */  mul.s      $f0, $f0, $f4
/* 6F00 8009C300 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6F04 8009C304 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6F08 8009C308 26020040 */  addiu      $v0, $s0, 0x40
/* 6F0C 8009C30C AE030028 */  sw         $v1, 0x28($s0)
/* 6F10 8009C310 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6F14 8009C314 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6F18 8009C318 4600110D */  trunc.w.s  $f4, $f2
/* 6F1C 8009C31C 44022000 */  mfc1       $v0, $f4
/* 6F20 8009C320 00000000 */  nop
/* 6F24 8009C324 30420FFF */  andi       $v0, $v0, 0xFFF
/* 6F28 8009C328 00021300 */  sll        $v0, $v0, 12
/* 6F2C 8009C32C 4600008D */  trunc.w.s  $f2, $f0
/* 6F30 8009C330 44031000 */  mfc1       $v1, $f2
/* 6F34 8009C334 00000000 */  nop
/* 6F38 8009C338 3C048017 */  lui        $a0, %hi(D_8016D6B8)
/* 6F3C 8009C33C 8C84D6B8 */  lw         $a0, %lo(D_8016D6B8)($a0)
/* 6F40 8009C340 30630FFF */  andi       $v1, $v1, 0xFFF
/* 6F44 8009C344 00431025 */  or         $v0, $v0, $v1
/* 6F48 8009C348 0C02F680 */  jal        func_800BDA00
/* 6F4C 8009C34C AE020004 */   sw        $v0, 0x4($s0)
/* 6F50 8009C350 3C038015 */  lui        $v1, %hi(D_80149BB8)
/* 6F54 8009C354 8C639BB8 */  lw         $v1, %lo(D_80149BB8)($v1)
/* 6F58 8009C358 1460001B */  bnez       $v1, .L8009C3C8
/* 6F5C 8009C35C AE02003C */   sw        $v0, 0x3C($s0)
/* 6F60 8009C360 3C050001 */  lui        $a1, (0x10001 >> 16)
/* 6F64 8009C364 3C048015 */  lui        $a0, %hi(gDisplayListHead)
/* 6F68 8009C368 8C849F94 */  lw         $a0, %lo(gDisplayListHead)($a0)
/* 6F6C 8009C36C 3C038015 */  lui        $v1, %hi(D_8014A0BC)
/* 6F70 8009C370 8C63A0BC */  lw         $v1, %lo(D_8014A0BC)($v1)
/* 6F74 8009C374 34A50001 */  ori        $a1, $a1, (0x10001 & 0xFFFF)
/* 6F78 8009C378 24820008 */  addiu      $v0, $a0, 0x8
/* 6F7C 8009C37C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6F80 8009C380 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6F84 8009C384 24820010 */  addiu      $v0, $a0, 0x10
/* 6F88 8009C388 2463FFFF */  addiu      $v1, $v1, -0x1
/* 6F8C 8009C38C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6F90 8009C390 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 6F94 8009C394 3C028015 */  lui        $v0, %hi(D_80149DB8)
/* 6F98 8009C398 8C429DB8 */  lw         $v0, %lo(D_80149DB8)($v0)
/* 6F9C 8009C39C 306303FF */  andi       $v1, $v1, 0x3FF
/* 6FA0 8009C3A0 00031B80 */  sll        $v1, $v1, 14
/* 6FA4 8009C3A4 AC930000 */  sw         $s3, 0x0($a0)
/* 6FA8 8009C3A8 AC850004 */  sw         $a1, 0x4($a0)
/* 6FAC 8009C3AC AC80000C */  sw         $zero, 0xC($a0)
/* 6FB0 8009C3B0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 6FB4 8009C3B4 304203FF */  andi       $v0, $v0, 0x3FF
/* 6FB8 8009C3B8 00021080 */  sll        $v0, $v0, 2
/* 6FBC 8009C3BC 00521025 */  or         $v0, $v0, $s2
/* 6FC0 8009C3C0 00621825 */  or         $v1, $v1, $v0
/* 6FC4 8009C3C4 AC830008 */  sw         $v1, 0x8($a0)
.L8009C3C8:
/* 6FC8 8009C3C8 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 6FCC 8009C3CC 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 6FD0 8009C3D0 24430008 */  addiu      $v1, $v0, 0x8
/* 6FD4 8009C3D4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 6FD8 8009C3D8 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 6FDC 8009C3DC AC510000 */  sw         $s1, 0x0($v0)
/* 6FE0 8009C3E0 AC400004 */  sw         $zero, 0x4($v0)
/* 6FE4 8009C3E4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6FE8 8009C3E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 6FEC 8009C3EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 6FF0 8009C3F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 6FF4 8009C3F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 6FF8 8009C3F8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6FFC 8009C3FC 03E00008 */  jr         $ra
/* 7000 8009C400 00000000 */   nop
.size func_8009C1C0, . - func_8009C1C0
