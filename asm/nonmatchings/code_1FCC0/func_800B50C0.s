.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B50C0
/* 1FCC0 800B50C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FCC4 800B50C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FCC8 800B50C8 00808021 */  addu       $s0, $a0, $zero
/* 1FCCC 800B50CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FCD0 800B50D0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1FCD4 800B50D4 8E020008 */  lw         $v0, 8($s0)
/* 1FCD8 800B50D8 4485A000 */  mtc1       $a1, $f20
/* 1FCDC 800B50DC 10400014 */  beqz       $v0, .L800B5130
/* 1FCE0 800B50E0 00000000 */   nop
/* 1FCE4 800B50E4 0C02D5BA */  jal        func_800B56E8
/* 1FCE8 800B50E8 00000000 */   nop
/* 1FCEC 800B50EC 00403021 */  addu       $a2, $v0, $zero
/* 1FCF0 800B50F0 10C0000F */  beqz       $a2, .L800B5130
/* 1FCF4 800B50F4 00000000 */   nop
/* 1FCF8 800B50F8 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FCFC 800B50FC 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FD00 800B5100 8E040008 */  lw         $a0, 8($s0)
/* 1FD04 800B5104 8C43001C */  lw         $v1, 0x1c($v0)
/* 1FD08 800B5108 8C840088 */  lw         $a0, 0x88($a0)
/* 1FD0C 800B510C 24020007 */  addiu      $v0, $zero, 7
/* 1FD10 800B5110 A4C20008 */  sh         $v0, 8($a2)
/* 1FD14 800B5114 E4D4000C */  swc1       $f20, 0xc($a2)
/* 1FD18 800B5118 ACC00000 */  sw         $zero, ($a2)
/* 1FD1C 800B511C 00641821 */  addu       $v1, $v1, $a0
/* 1FD20 800B5120 ACC30004 */  sw         $v1, 4($a2)
/* 1FD24 800B5124 8E040008 */  lw         $a0, 8($s0)
/* 1FD28 800B5128 0C02CD62 */  jal        func_800B3588
/* 1FD2C 800B512C 24050003 */   addiu     $a1, $zero, 3
.L800B5130:
/* 1FD30 800B5130 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FD34 800B5134 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FD38 800B5138 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1FD3C 800B513C 03E00008 */  jr         $ra
/* 1FD40 800B5140 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FD44 800B5144 00000000 */  nop
/* 1FD48 800B5148 00000000 */  nop
/* 1FD4C 800B514C 00000000 */  nop
