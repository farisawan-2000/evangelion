glabel thread3_main
/* 13610 800A8A10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13614 800A8A14 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13618 800A8A18 3C04800B */  lui        $a0, %hi(func_800A8D78)
/* 1361C 800A8A1C 24848D78 */  addiu      $a0, $a0, %lo(func_800A8D78)
/* 13620 800A8A20 0C02D88C */  jal        func_800B6230
/* 13624 800A8A24 00000000 */   nop
/* 13628 800A8A28 0C02DA8C */  jal        func_800B6A30
/* 1362C 800A8A2C 00000000 */   nop
/* 13630 800A8A30 0C02A450 */  jal        func_800A9140
/* 13634 800A8A34 00000000 */   nop
/* 13638 800A8A38 0C026398 */  jal        func_80098E60
/* 1363C 800A8A3C 00000000 */   nop
/* 13640 800A8A40 0C02A460 */  jal        func_800A9180
/* 13644 800A8A44 00000000 */   nop
/* 13648 800A8A48 0C02A47D */  jal        func_800A91F4
/* 1364C 800A8A4C 00000000 */   nop
/* 13650 800A8A50 0C02A496 */  jal        func_800A9258
/* 13654 800A8A54 00000000 */   nop
/* 13658 800A8A58 0C02A4F1 */  jal        func_800A93C4
/* 1365C 800A8A5C 00000000 */   nop
/* 13660 800A8A60 0C02A5FB */  jal        func_800A97EC
/* 13664 800A8A64 00000000 */   nop
/* 13668 800A8A68 0C02A5FF */  jal        func_800A97FC
/* 1366C 800A8A6C 00000000 */   nop
/* 13670 800A8A70 0C02A612 */  jal        func_800A9848
/* 13674 800A8A74 00000000 */   nop
/* 13678 800A8A78 0C02A626 */  jal        func_800A9898
/* 1367C 800A8A7C 00002021 */   addu      $a0, $zero, $zero
/* 13680 800A8A80 00002821 */  addu       $a1, $zero, $zero
/* 13684 800A8A84 3C048010 */  lui        $a0, %hi(D_801001F0)
/* 13688 800A8A88 248401F0 */  addiu      $a0, $a0, %lo(D_801001F0)
/* 1368C 800A8A8C 3C038010 */  lui        $v1, %hi(D_801001D8)
/* 13690 800A8A90 246301D8 */  addiu      $v1, $v1, %lo(D_801001D8)
.L800A8A94:
/* 13694 800A8A94 AC600000 */  sw         $zero, 0x0($v1)
/* 13698 800A8A98 AC800000 */  sw         $zero, 0x0($a0)
/* 1369C 800A8A9C 24840004 */  addiu      $a0, $a0, 0x4
/* 136A0 800A8AA0 24A50001 */  addiu      $a1, $a1, 0x1
/* 136A4 800A8AA4 28A20005 */  slti       $v0, $a1, 0x5
/* 136A8 800A8AA8 1440FFFA */  bnez       $v0, .L800A8A94
/* 136AC 800A8AAC 24630004 */   addiu     $v1, $v1, 0x4
/* 136B0 800A8AB0 0C02A36B */  jal        func_800A8DAC
/* 136B4 800A8AB4 00000000 */   nop
/* 136B8 800A8AB8 24040001 */  addiu      $a0, $zero, 0x1
/* 136BC 800A8ABC 0C02DAB0 */  jal        func_800B6AC0
/* 136C0 800A8AC0 00002821 */   addu      $a1, $zero, $zero
/* 136C4 800A8AC4 24040002 */  addiu      $a0, $zero, 0x2
/* 136C8 800A8AC8 0C02DAB0 */  jal        func_800B6AC0
/* 136CC 800A8ACC 00002821 */   addu      $a1, $zero, $zero
/* 136D0 800A8AD0 24040003 */  addiu      $a0, $zero, 0x3
/* 136D4 800A8AD4 0C02DAB0 */  jal        func_800B6AC0
/* 136D8 800A8AD8 00002821 */   addu      $a1, $zero, $zero
/* 136DC 800A8ADC 0C02DA98 */  jal        func_800B6A60
/* 136E0 800A8AE0 00000000 */   nop
/* 136E4 800A8AE4 3C04800B */  lui        $a0, %hi(func_800A8B34)
/* 136E8 800A8AE8 24848B34 */  addiu      $a0, $a0, %lo(func_800A8B34)
/* 136EC 800A8AEC 0C02D9F8 */  jal        func_800B67E0
/* 136F0 800A8AF0 00000000 */   nop
/* 136F4 800A8AF4 3C02800D */  lui        $v0, %hi(D_800D4960)
/* 136F8 800A8AF8 8C424960 */  lw         $v0, %lo(D_800D4960)($v0)
/* 136FC 800A8AFC 14400003 */  bnez       $v0, .L800A8B0C
/* 13700 800A8B00 00001021 */   addu      $v0, $zero, $zero
.L800A8B04:
/* 13704 800A8B04 1040FFFF */  beqz       $v0, .L800A8B04
/* 13708 800A8B08 00000000 */   nop
.L800A8B0C:
/* 1370C 800A8B0C 0C02DA8C */  jal        func_800B6A30
/* 13710 800A8B10 00000000 */   nop
/* 13714 800A8B14 0C02A450 */  jal        func_800A9140
/* 13718 800A8B18 00000000 */   nop
/* 1371C 800A8B1C 0802A2C3 */  j          .L800A8B0C
/* 13720 800A8B20 00000000 */   nop
/* 13724 800A8B24 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13728 800A8B28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1372C 800A8B2C 03E00008 */  jr         $ra
/* 13730 800A8B30 00000000 */   nop
.size thread3_main, . - thread3_main
