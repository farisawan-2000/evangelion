glabel func_8002A2F8_ovl7
/* 179D38 8002A2F8 3C028004 */  lui        $v0, %hi(D_80043FF4_ovl7)
/* 179D3C 8002A2FC 90423FF4 */  lbu        $v0, %lo(D_80043FF4_ovl7)($v0)
/* 179D40 8002A300 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 179D44 8002A304 1040001D */  beqz       $v0, .L8002A37C_ovl7
/* 179D48 8002A308 AFBF0010 */   sw        $ra, 0x10($sp)
/* 179D4C 8002A30C 0C009758 */  jal        func_80025D60_ovl7
/* 179D50 8002A310 00000000 */   nop
/* 179D54 8002A314 0C02A5D2 */  jal        func_800A9748
/* 179D58 8002A318 24040001 */   addiu     $a0, $zero, 0x1
/* 179D5C 8002A31C 24020006 */  addiu      $v0, $zero, 0x6
/* 179D60 8002A320 3C018005 */  lui        $at, %hi(D_80052061_ovl7)
/* 179D64 8002A324 A0222061 */  sb         $v0, %lo(D_80052061_ovl7)($at)
/* 179D68 8002A328 3C028004 */  lui        $v0, %hi(D_80043FC4_ovl7)
/* 179D6C 8002A32C 24423FC4 */  addiu      $v0, $v0, %lo(D_80043FC4_ovl7)
/* 179D70 8002A330 3C018004 */  lui        $at, %hi(D_80043FF4_ovl7)
/* 179D74 8002A334 A0203FF4 */  sb         $zero, %lo(D_80043FF4_ovl7)($at)
/* 179D78 8002A338 3C018005 */  lui        $at, %hi(D_80052060_ovl7)
/* 179D7C 8002A33C A0202060 */  sb         $zero, %lo(D_80052060_ovl7)($at)
/* 179D80 8002A340 3C018005 */  lui        $at, %hi(D_80052000_ovl7)
/* 179D84 8002A344 AC222000 */  sw         $v0, %lo(D_80052000_ovl7)($at)
/* 179D88 8002A348 0C032663 */  jal        func_800C998C
/* 179D8C 8002A34C 24040004 */   addiu     $a0, $zero, 0x4
/* 179D90 8002A350 00402021 */  addu       $a0, $v0, $zero
/* 179D94 8002A354 3C018005 */  lui        $at, %hi(D_80052244_ovl7)
/* 179D98 8002A358 AC242244 */  sw         $a0, %lo(D_80052244_ovl7)($at)
/* 179D9C 8002A35C 0C030134 */  jal        bzero
/* 179DA0 8002A360 24050004 */   addiu     $a1, $zero, 0x4
/* 179DA4 8002A364 3C048003 */  lui        $a0, %hi(func_80028084_ovl7)
/* 179DA8 8002A368 24848084 */  addiu      $a0, $a0, %lo(func_80028084_ovl7)
/* 179DAC 8002A36C 00002821 */  addu       $a1, $zero, $zero
/* 179DB0 8002A370 2406012C */  addiu      $a2, $zero, 0x12C
/* 179DB4 8002A374 0C025D06 */  jal        func_80097418
/* 179DB8 8002A378 00003821 */   addu      $a3, $zero, $zero
.L8002A37C_ovl7:
/* 179DBC 8002A37C 3C038005 */  lui        $v1, %hi(D_80052060_ovl7)
/* 179DC0 8002A380 90632060 */  lbu        $v1, %lo(D_80052060_ovl7)($v1)
/* 179DC4 8002A384 24020001 */  addiu      $v0, $zero, 0x1
/* 179DC8 8002A388 14620008 */  bne        $v1, $v0, .L8002A3AC_ovl7
/* 179DCC 8002A38C 00001021 */   addu      $v0, $zero, $zero
/* 179DD0 8002A390 3C048005 */  lui        $a0, %hi(D_80052244_ovl7)
/* 179DD4 8002A394 8C842244 */  lw         $a0, %lo(D_80052244_ovl7)($a0)
/* 179DD8 8002A398 24020001 */  addiu      $v0, $zero, 0x1
/* 179DDC 8002A39C 3C018004 */  lui        $at, %hi(D_80043FF4_ovl7)
/* 179DE0 8002A3A0 0C0326A1 */  jal        func_800C9A84
/* 179DE4 8002A3A4 A0223FF4 */   sb        $v0, %lo(D_80043FF4_ovl7)($at)
/* 179DE8 8002A3A8 24020001 */  addiu      $v0, $zero, 0x1
.L8002A3AC_ovl7:
/* 179DEC 8002A3AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 179DF0 8002A3B0 03E00008 */  jr         $ra
/* 179DF4 8002A3B4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 179DF8 8002A3B8 00000000 */  nop
/* 179DFC 8002A3BC 00000000 */  nop
.size func_8002A2F8_ovl7, . - func_8002A2F8_ovl7
