.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B268
/* 5E68 8009B268 3C028015 */  lui        $v0, %hi(D_80149BC0)
/* 5E6C 8009B26C 8C429BC0 */  lw         $v0, %lo(D_80149BC0)($v0)
/* 5E70 8009B270 97A90012 */  lhu        $t1, 0x12($sp)
/* 5E74 8009B274 1040006F */  beqz       $v0, .L8009B434
/* 5E78 8009B278 00000000 */   nop
/* 5E7C 8009B27C 3C028017 */  lui        $v0, %hi(D_8016D200)
/* 5E80 8009B280 8C42D200 */  lw         $v0, %lo(D_8016D200)($v0)
/* 5E84 8009B284 1040006B */  beqz       $v0, .L8009B434
/* 5E88 8009B288 30C2FFFF */   andi      $v0, $a2, 0xffff
/* 5E8C 8009B28C 50400001 */  beql       $v0, $zero, .L8009B294
/* 5E90 8009B290 24060001 */   addiu     $a2, $zero, 1
.L8009B294:
/* 5E94 8009B294 01201821 */  addu       $v1, $t1, $zero
/* 5E98 8009B298 3062FFFF */  andi       $v0, $v1, 0xffff
/* 5E9C 8009B29C 50400001 */  beql       $v0, $zero, .L8009B2A4
/* 5EA0 8009B2A0 24030001 */   addiu     $v1, $zero, 1
.L8009B2A4:
/* 5EA4 8009B2A4 00041040 */  sll        $v0, $a0, 1
/* 5EA8 8009B2A8 3C08800D */  lui        $t0, %hi(D_800D4164)
/* 5EAC 8009B2AC 01024021 */  addu       $t0, $t0, $v0
/* 5EB0 8009B2B0 85084164 */  lh         $t0, %lo(D_800D4164)($t0)
/* 5EB4 8009B2B4 0105102A */  slt        $v0, $t0, $a1
/* 5EB8 8009B2B8 10400003 */  beqz       $v0, .L8009B2C8
/* 5EBC 8009B2BC 00604821 */   addu      $t1, $v1, $zero
/* 5EC0 8009B2C0 08026CB5 */  j          .L8009B2D4
/* 5EC4 8009B2C4 01002821 */   addu      $a1, $t0, $zero
.L8009B2C8:
/* 5EC8 8009B2C8 28A2FFFF */  slti       $v0, $a1, -1
/* 5ECC 8009B2CC 54400001 */  bnezl      $v0, .L8009B2D4
/* 5ED0 8009B2D0 2405FFFF */   addiu     $a1, $zero, -1
.L8009B2D4:
/* 5ED4 8009B2D4 3123FFFF */  andi       $v1, $t1, 0xffff
/* 5ED8 8009B2D8 00E3001A */  div        $zero, $a3, $v1
/* 5EDC 8009B2DC 14600002 */  bnez       $v1, .L8009B2E8
/* 5EE0 8009B2E0 00000000 */   nop
/* 5EE4 8009B2E4 0007000D */  break      7
.L8009B2E8:
/* 5EE8 8009B2E8 2401FFFF */   addiu     $at, $zero, -1
/* 5EEC 8009B2EC 14610004 */  bne        $v1, $at, .L8009B300
/* 5EF0 8009B2F0 3C018000 */   lui       $at, 0x8000
/* 5EF4 8009B2F4 14E10002 */  bne        $a3, $at, .L8009B300
/* 5EF8 8009B2F8 00000000 */   nop
/* 5EFC 8009B2FC 0006000D */  break      6
.L8009B300:
/* 5F00 8009B300 00001812 */   mflo      $v1
/* 5F04 8009B304 00000000 */  nop
/* 5F08 8009B308 00000000 */  nop
/* 5F0C 8009B30C 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5F10 8009B310 C4223B88 */  lwc1       $f2, %lo(D_800D3B88)($at)
/* 5F14 8009B314 30C2FFFF */  andi       $v0, $a2, 0xffff
/* 5F18 8009B318 44820000 */  mtc1       $v0, $f0
/* 5F1C 8009B31C 00000000 */  nop
/* 5F20 8009B320 46800020 */  cvt.s.w    $f0, $f0
/* 5F24 8009B324 46001003 */  div.s      $f0, $f2, $f0
/* 5F28 8009B328 44872000 */  mtc1       $a3, $f4
/* 5F2C 8009B32C 00000000 */  nop
/* 5F30 8009B330 46802120 */  cvt.s.w    $f4, $f4
/* 5F34 8009B334 3C01800D */  lui        $at, %hi(D_800D3B80)
/* 5F38 8009B338 AC243B80 */  sw         $a0, %lo(D_800D3B80)($at)
/* 5F3C 8009B33C 3C01800D */  lui        $at, %hi(D_800D3B84)
/* 5F40 8009B340 AC253B84 */  sw         $a1, %lo(D_800D3B84)($at)
/* 5F44 8009B344 3C01800D */  lui        $at, %hi(D_800D3B90)
/* 5F48 8009B348 E4243B90 */  swc1       $f4, %lo(D_800D3B90)($at)
/* 5F4C 8009B34C 4604103C */  c.lt.s     $f2, $f4
/* 5F50 8009B350 00000000 */  nop
/* 5F54 8009B354 00000000 */  nop
/* 5F58 8009B358 3C01800D */  lui        $at, %hi(D_800D3B8C)
/* 5F5C 8009B35C E4203B8C */  swc1       $f0, %lo(D_800D3B8C)($at)
/* 5F60 8009B360 44830000 */  mtc1       $v1, $f0
/* 5F64 8009B364 00000000 */  nop
/* 5F68 8009B368 46800020 */  cvt.s.w    $f0, $f0
/* 5F6C 8009B36C 3C01800D */  lui        $at, %hi(D_800D3B94)
/* 5F70 8009B370 E4203B94 */  swc1       $f0, %lo(D_800D3B94)($at)
/* 5F74 8009B374 45000007 */  bc1f       .L8009B394
/* 5F78 8009B378 00000000 */   nop
/* 5F7C 8009B37C 3C01800D */  lui        $at, %hi(D_800D3B98)
/* 5F80 8009B380 AC203B98 */  sw         $zero, %lo(D_800D3B98)($at)
/* 5F84 8009B384 3C01800D */  lui        $at, %hi(D_800D3B9C)
/* 5F88 8009B388 E4243B9C */  swc1       $f4, %lo(D_800D3B9C)($at)
/* 5F8C 8009B38C 08026CEC */  j          .L8009B3B0
/* 5F90 8009B390 00000000 */   nop
.L8009B394:
/* 5F94 8009B394 3C014380 */  lui        $at, 0x4380
/* 5F98 8009B398 44810000 */  mtc1       $at, $f0
/* 5F9C 8009B39C 00000000 */  nop
/* 5FA0 8009B3A0 3C01800D */  lui        $at, %hi(D_800D3B98)
/* 5FA4 8009B3A4 E4243B98 */  swc1       $f4, %lo(D_800D3B98)($at)
/* 5FA8 8009B3A8 3C01800D */  lui        $at, %hi(D_800D3B9C)
/* 5FAC 8009B3AC E4203B9C */  swc1       $f0, %lo(D_800D3B9C)($at)
.L8009B3B0:
/* 5FB0 8009B3B0 3C01800D */  lui        $at, %hi(D_800D3B8C)
/* 5FB4 8009B3B4 C4203B8C */  lwc1       $f0, %lo(D_800D3B8C)($at)
/* 5FB8 8009B3B8 44803000 */  mtc1       $zero, $f6
/* 5FBC 8009B3BC 00000000 */  nop
/* 5FC0 8009B3C0 3C013F80 */  lui        $at, 0x3f80
/* 5FC4 8009B3C4 44812000 */  mtc1       $at, $f4
/* 5FC8 8009B3C8 00000000 */  nop
/* 5FCC 8009B3CC 46060032 */  c.eq.s     $f0, $f6
/* 5FD0 8009B3D0 00000000 */  nop
/* 5FD4 8009B3D4 00000000 */  nop
/* 5FD8 8009B3D8 3C01800D */  lui        $at, %hi(D_800D3BA0)
/* 5FDC 8009B3DC A4263BA0 */  sh         $a2, %lo(D_800D3BA0)($at)
/* 5FE0 8009B3E0 45020001 */  bc1fl      .L8009B3E8
/* 5FE4 8009B3E4 46000106 */   mov.s     $f4, $f0
.L8009B3E8:
/* 5FE8 8009B3E8 3C01800D */  lui        $at, %hi(D_800D3B94)
/* 5FEC 8009B3EC C4223B94 */  lwc1       $f2, %lo(D_800D3B94)($at)
/* 5FF0 8009B3F0 3C013F80 */  lui        $at, 0x3f80
/* 5FF4 8009B3F4 44810000 */  mtc1       $at, $f0
/* 5FF8 8009B3F8 00000000 */  nop
/* 5FFC 8009B3FC 46061032 */  c.eq.s     $f2, $f6
/* 6000 8009B400 00000000 */  nop
/* 6004 8009B404 00000000 */  nop
/* 6008 8009B408 3C01800D */  lui        $at, %hi(D_800D3B8C)
/* 600C 8009B40C E4243B8C */  swc1       $f4, %lo(D_800D3B8C)($at)
/* 6010 8009B410 45020001 */  bc1fl      .L8009B418
/* 6014 8009B414 46001006 */   mov.s     $f0, $f2
.L8009B418:
/* 6018 8009B418 3122FFFF */  andi       $v0, $t1, 0xffff
/* 601C 8009B41C 38420001 */  xori       $v0, $v0, 1
/* 6020 8009B420 2C420001 */  sltiu      $v0, $v0, 1
/* 6024 8009B424 3C01800D */  lui        $at, %hi(D_800D3B94)
/* 6028 8009B428 E4203B94 */  swc1       $f0, %lo(D_800D3B94)($at)
/* 602C 8009B42C 3C01800D */  lui        $at, %hi(D_800D3BA2)
/* 6030 8009B430 A0223BA2 */  sb         $v0, %lo(D_800D3BA2)($at)
.L8009B434:
/* 6034 8009B434 03E00008 */  jr         $ra
/* 6038 8009B438 00000000 */   nop
