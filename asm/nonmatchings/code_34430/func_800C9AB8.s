glabel func_800C9AB8
/* 346B8 800C9AB8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 346BC 800C9ABC AFB00018 */  sw         $s0, 0x18($sp)
/* 346C0 800C9AC0 00808025 */  or         $s0, $a0, $zero
/* 346C4 800C9AC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 346C8 800C9AC8 14800005 */  bnez       $a0, .L800C9AE0
/* 346CC 800C9ACC 00A03025 */   or        $a2, $a1, $zero
/* 346D0 800C9AD0 0C032663 */  jal        func_800C998C
/* 346D4 800C9AD4 00A02025 */   or        $a0, $a1, $zero
/* 346D8 800C9AD8 1000004B */  b          .L800C9C08
/* 346DC 800C9ADC 8FBF001C */   lw        $ra, 0x1C($sp)
.L800C9AE0:
/* 346E0 800C9AE0 14C00005 */  bnez       $a2, .L800C9AF8
/* 346E4 800C9AE4 3C038015 */   lui       $v1, %hi(D_80149B90)
/* 346E8 800C9AE8 0C0326A1 */  jal        func_800C9A84
/* 346EC 800C9AEC 02002025 */   or        $a0, $s0, $zero
/* 346F0 800C9AF0 10000044 */  b          .L800C9C04
/* 346F4 800C9AF4 00001025 */   or        $v0, $zero, $zero
.L800C9AF8:
/* 346F8 800C9AF8 24639B90 */  addiu      $v1, $v1, %lo(D_80149B90)
/* 346FC 800C9AFC 2607FFF0 */  addiu      $a3, $s0, -0x10
/* 34700 800C9B00 AC670000 */  sw         $a3, 0x0($v1)
/* 34704 800C9B04 8CEE0008 */  lw         $t6, 0x8($a3)
/* 34708 800C9B08 24C6000F */  addiu      $a2, $a2, 0xF
/* 3470C 800C9B0C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 34710 800C9B10 00C13024 */  and        $a2, $a2, $at
/* 34714 800C9B14 15C00003 */  bnez       $t6, .L800C9B24
/* 34718 800C9B18 00E01025 */   or        $v0, $a3, $zero
/* 3471C 800C9B1C 10000039 */  b          .L800C9C04
/* 34720 800C9B20 00001025 */   or        $v0, $zero, $zero
.L800C9B24:
/* 34724 800C9B24 8C450000 */  lw         $a1, 0x0($v0)
/* 34728 800C9B28 8C440004 */  lw         $a0, 0x4($v0)
/* 3472C 800C9B2C 3C018015 */  lui        $at, %hi(D_80149B90)
/* 34730 800C9B30 10A00009 */  beqz       $a1, .L800C9B58
/* 34734 800C9B34 AC650000 */   sw        $a1, 0x0($v1)
/* 34738 800C9B38 8CAF0008 */  lw         $t7, 0x8($a1)
/* 3473C 800C9B3C 00A01025 */  or         $v0, $a1, $zero
/* 34740 800C9B40 15E00005 */  bnez       $t7, .L800C9B58
/* 34744 800C9B44 00000000 */   nop
/* 34748 800C9B48 8C580004 */  lw         $t8, 0x4($v0)
/* 3474C 800C9B4C 8C450000 */  lw         $a1, 0x0($v0)
/* 34750 800C9B50 00982021 */  addu       $a0, $a0, $t8
/* 34754 800C9B54 24840010 */  addiu      $a0, $a0, 0x10
.L800C9B58:
/* 34758 800C9B58 AC279B90 */  sw         $a3, %lo(D_80149B90)($at)
/* 3475C 800C9B5C 0086082B */  sltu       $at, $a0, $a2
/* 34760 800C9B60 10200010 */  beqz       $at, .L800C9BA4
/* 34764 800C9B64 24D90020 */   addiu     $t9, $a2, 0x20
/* 34768 800C9B68 00C02025 */  or         $a0, $a2, $zero
/* 3476C 800C9B6C 0C032663 */  jal        func_800C998C
/* 34770 800C9B70 AFA60034 */   sw        $a2, 0x34($sp)
/* 34774 800C9B74 8FA60034 */  lw         $a2, 0x34($sp)
/* 34778 800C9B78 14400003 */  bnez       $v0, .L800C9B88
/* 3477C 800C9B7C 00402025 */   or        $a0, $v0, $zero
/* 34780 800C9B80 10000020 */  b          .L800C9C04
/* 34784 800C9B84 00001025 */   or        $v0, $zero, $zero
.L800C9B88:
/* 34788 800C9B88 02002825 */  or         $a1, $s0, $zero
/* 3478C 800C9B8C 0C030175 */  jal        func_800C05D4
/* 34790 800C9B90 AFA40024 */   sw        $a0, 0x24($sp)
/* 34794 800C9B94 0C0326A1 */  jal        func_800C9A84
/* 34798 800C9B98 02002025 */   or        $a0, $s0, $zero
/* 3479C 800C9B9C 10000019 */  b          .L800C9C04
/* 347A0 800C9BA0 8FA20024 */   lw        $v0, 0x24($sp)
.L800C9BA4:
/* 347A4 800C9BA4 0324082B */  sltu       $at, $t9, $a0
/* 347A8 800C9BA8 10200012 */  beqz       $at, .L800C9BF4
/* 347AC 800C9BAC 02001025 */   or        $v0, $s0, $zero
/* 347B0 800C9BB0 8C6A0000 */  lw         $t2, 0x0($v1)
/* 347B4 800C9BB4 02064021 */  addu       $t0, $s0, $a2
/* 347B8 800C9BB8 25090010 */  addiu      $t1, $t0, 0x10
/* 347BC 800C9BBC AD490000 */  sw         $t1, 0x0($t2)
/* 347C0 800C9BC0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 347C4 800C9BC4 00867823 */  subu       $t7, $a0, $a2
/* 347C8 800C9BC8 25F8FFF0 */  addiu      $t8, $t7, -0x10
/* 347CC 800C9BCC AD660004 */  sw         $a2, 0x4($t3)
/* 347D0 800C9BD0 8C6C0000 */  lw         $t4, 0x0($v1)
/* 347D4 800C9BD4 8D8D0000 */  lw         $t5, 0x0($t4)
/* 347D8 800C9BD8 AC6D0000 */  sw         $t5, 0x0($v1)
/* 347DC 800C9BDC ADA50000 */  sw         $a1, 0x0($t5)
/* 347E0 800C9BE0 8C790000 */  lw         $t9, 0x0($v1)
/* 347E4 800C9BE4 AF380004 */  sw         $t8, 0x4($t9)
/* 347E8 800C9BE8 8C680000 */  lw         $t0, 0x0($v1)
/* 347EC 800C9BEC 10000005 */  b          .L800C9C04
/* 347F0 800C9BF0 AD000008 */   sw        $zero, 0x8($t0)
.L800C9BF4:
/* 347F4 800C9BF4 8C690000 */  lw         $t1, 0x0($v1)
/* 347F8 800C9BF8 AD250000 */  sw         $a1, 0x0($t1)
/* 347FC 800C9BFC 8C6A0000 */  lw         $t2, 0x0($v1)
/* 34800 800C9C00 AD440004 */  sw         $a0, 0x4($t2)
.L800C9C04:
/* 34804 800C9C04 8FBF001C */  lw         $ra, 0x1C($sp)
.L800C9C08:
/* 34808 800C9C08 8FB00018 */  lw         $s0, 0x18($sp)
/* 3480C 800C9C0C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 34810 800C9C10 03E00008 */  jr         $ra
/* 34814 800C9C14 00000000 */   nop
.size func_800C9AB8, . - func_800C9AB8