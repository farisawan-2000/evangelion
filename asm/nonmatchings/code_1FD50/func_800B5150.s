glabel func_800B5150
/* 1FD50 800B5150 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1FD54 800B5154 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FD58 800B5158 00808821 */  addu       $s1, $a0, $zero
/* 1FD5C 800B515C AFBF0020 */  sw         $ra, 0x20($sp)
/* 1FD60 800B5160 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1FD64 800B5164 AFB20018 */  sw         $s2, 0x18($sp)
/* 1FD68 800B5168 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FD6C 800B516C 8E220008 */  lw         $v0, 0x8($s1)
/* 1FD70 800B5170 00A09821 */  addu       $s3, $a1, $zero
/* 1FD74 800B5174 10400019 */  beqz       $v0, .L800B51DC
/* 1FD78 800B5178 00C09021 */   addu      $s2, $a2, $zero
/* 1FD7C 800B517C 0C02D5BA */  jal        func_800B56E8
/* 1FD80 800B5180 00000000 */   nop
/* 1FD84 800B5184 00408021 */  addu       $s0, $v0, $zero
/* 1FD88 800B5188 12000014 */  beqz       $s0, .L800B51DC
/* 1FD8C 800B518C 02402021 */   addu      $a0, $s2, $zero
/* 1FD90 800B5190 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FD94 800B5194 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FD98 800B5198 8E230008 */  lw         $v1, 0x8($s1)
/* 1FD9C 800B519C 8C45001C */  lw         $a1, 0x1C($v0)
/* 1FDA0 800B51A0 8C630088 */  lw         $v1, 0x88($v1)
/* 1FDA4 800B51A4 2402000B */  addiu      $v0, $zero, 0xB
/* 1FDA8 800B51A8 A6020008 */  sh         $v0, 0x8($s0)
/* 1FDAC 800B51AC 00131400 */  sll        $v0, $s3, 16
/* 1FDB0 800B51B0 00021403 */  sra        $v0, $v0, 16
/* 1FDB4 800B51B4 AE02000C */  sw         $v0, 0xC($s0)
/* 1FDB8 800B51B8 00A32821 */  addu       $a1, $a1, $v1
/* 1FDBC 800B51BC 0C02D605 */  jal        func_800B5814
/* 1FDC0 800B51C0 AE050004 */   sw        $a1, 0x4($s0)
/* 1FDC4 800B51C4 AE020010 */  sw         $v0, 0x10($s0)
/* 1FDC8 800B51C8 AE000000 */  sw         $zero, 0x0($s0)
/* 1FDCC 800B51CC 8E240008 */  lw         $a0, 0x8($s1)
/* 1FDD0 800B51D0 24050003 */  addiu      $a1, $zero, 0x3
/* 1FDD4 800B51D4 0C02CD62 */  jal        func_800B3588
/* 1FDD8 800B51D8 02003021 */   addu      $a2, $s0, $zero
.L800B51DC:
/* 1FDDC 800B51DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1FDE0 800B51E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1FDE4 800B51E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1FDE8 800B51E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FDEC 800B51EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FDF0 800B51F0 03E00008 */  jr         $ra
/* 1FDF4 800B51F4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1FDF8 800B51F8 00000000 */  nop
/* 1FDFC 800B51FC 00000000 */  nop
.size func_800B5150, . - func_800B5150
