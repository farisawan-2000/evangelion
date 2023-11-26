glabel func_80038570_ovl3
/* E1A80 80038570 3C028007 */  lui        $v0, %hi(D_8006C588_ovl3)
/* E1A84 80038574 8C42C588 */  lw         $v0, %lo(D_8006C588_ovl3)($v0)
/* E1A88 80038578 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E1A8C 8003857C AFBF0028 */  sw         $ra, 0x28($sp)
/* E1A90 80038580 AFB50024 */  sw         $s5, 0x24($sp)
/* E1A94 80038584 AFB40020 */  sw         $s4, 0x20($sp)
/* E1A98 80038588 AFB3001C */  sw         $s3, 0x1C($sp)
/* E1A9C 8003858C AFB20018 */  sw         $s2, 0x18($sp)
/* E1AA0 80038590 AFB10014 */  sw         $s1, 0x14($sp)
/* E1AA4 80038594 1040002A */  beqz       $v0, .L80038640_ovl3
/* E1AA8 80038598 AFB00010 */   sw        $s0, 0x10($sp)
/* E1AAC 8003859C 00009021 */  addu       $s2, $zero, $zero
/* E1AB0 800385A0 00408821 */  addu       $s1, $v0, $zero
/* E1AB4 800385A4 3C14802F */  lui        $s4, (0x802F97FF >> 16)
/* E1AB8 800385A8 369497FF */  ori        $s4, $s4, (0x802F97FF & 0xFFFF)
/* E1ABC 800385AC 24150001 */  addiu      $s5, $zero, 0x1
/* E1AC0 800385B0 3413FFFF */  ori        $s3, $zero, 0xFFFF
/* E1AC4 800385B4 2630000C */  addiu      $s0, $s1, 0xC
.L800385B8_ovl3:
/* E1AC8 800385B8 96220000 */  lhu        $v0, 0x0($s1)
/* E1ACC 800385BC 5040001B */  beql       $v0, $zero, .L8003862C_ovl3
/* E1AD0 800385C0 26520001 */   addiu     $s2, $s2, 0x1
/* E1AD4 800385C4 8E030000 */  lw         $v1, 0x0($s0)
/* E1AD8 800385C8 8C62000C */  lw         $v0, 0xC($v1)
/* E1ADC 800385CC 0282102B */  sltu       $v0, $s4, $v0
/* E1AE0 800385D0 1440000A */  bnez       $v0, .L800385FC_ovl3
/* E1AE4 800385D4 00000000 */   nop
/* E1AE8 800385D8 8202FFF7 */  lb         $v0, -0x9($s0)
/* E1AEC 800385DC 14550003 */  bne        $v0, $s5, .L800385EC_ovl3
/* E1AF0 800385E0 00000000 */   nop
/* E1AF4 800385E4 0C0326A1 */  jal        func_800C9A84
/* E1AF8 800385E8 8C640010 */   lw        $a0, 0x10($v1)
.L800385EC_ovl3:
/* E1AFC 800385EC 0C028D30 */  jal        func_800A34C0
/* E1B00 800385F0 8E040000 */   lw        $a0, 0x0($s0)
/* E1B04 800385F4 0800E185 */  j          .L80038614_ovl3
/* E1B08 800385F8 A6200000 */   sh        $zero, 0x0($s1)
.L800385FC_ovl3:
/* E1B0C 800385FC 8C640014 */  lw         $a0, 0x14($v1)
/* E1B10 80038600 0C0326A1 */  jal        func_800C9A84
/* E1B14 80038604 00000000 */   nop
/* E1B18 80038608 0C02910B */  jal        func_800A442C
/* E1B1C 8003860C 8E040000 */   lw        $a0, 0x0($s0)
/* E1B20 80038610 A6200000 */  sh         $zero, 0x0($s1)
.L80038614_ovl3:
/* E1B24 80038614 AE13FFFC */  sw         $s3, -0x4($s0)
/* E1B28 80038618 AE13FFF8 */  sw         $s3, -0x8($s0)
/* E1B2C 8003861C A200FFF6 */  sb         $zero, -0xA($s0)
/* E1B30 80038620 A200FFF7 */  sb         $zero, -0x9($s0)
/* E1B34 80038624 AE000000 */  sw         $zero, 0x0($s0)
/* E1B38 80038628 26520001 */  addiu      $s2, $s2, 0x1
.L8003862C_ovl3:
/* E1B3C 8003862C 26100010 */  addiu      $s0, $s0, 0x10
/* E1B40 80038630 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* E1B44 80038634 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E1B48 80038638 1440FFDF */  bnez       $v0, .L800385B8_ovl3
/* E1B4C 8003863C 26310010 */   addiu     $s1, $s1, 0x10
.L80038640_ovl3:
/* E1B50 80038640 3C028007 */  lui        $v0, %hi(D_8006C3C4_ovl3)
/* E1B54 80038644 8C42C3C4 */  lw         $v0, %lo(D_8006C3C4_ovl3)($v0)
/* E1B58 80038648 10400016 */  beqz       $v0, .L800386A4_ovl3
/* E1B5C 8003864C 00009021 */   addu      $s2, $zero, $zero
/* E1B60 80038650 00408821 */  addu       $s1, $v0, $zero
/* E1B64 80038654 2630000C */  addiu      $s0, $s1, 0xC
.L80038658_ovl3:
/* E1B68 80038658 96220000 */  lhu        $v0, 0x0($s1)
/* E1B6C 8003865C 1040000C */  beqz       $v0, .L80038690_ovl3
/* E1B70 80038660 26520001 */   addiu     $s2, $s2, 0x1
/* E1B74 80038664 8E04FFF8 */  lw         $a0, -0x8($s0)
/* E1B78 80038668 0C027E98 */  jal        func_8009FA60
/* E1B7C 8003866C 00000000 */   nop
/* E1B80 80038670 0C027880 */  jal        func_8009E200
/* E1B84 80038674 8E04FFFC */   lw        $a0, -0x4($s0)
/* E1B88 80038678 0C027BB8 */  jal        func_8009EEE0
/* E1B8C 8003867C 8E040000 */   lw        $a0, 0x0($s0)
/* E1B90 80038680 A6200000 */  sh         $zero, 0x0($s1)
/* E1B94 80038684 AE00FFF8 */  sw         $zero, -0x8($s0)
/* E1B98 80038688 AE00FFFC */  sw         $zero, -0x4($s0)
/* E1B9C 8003868C AE000000 */  sw         $zero, 0x0($s0)
.L80038690_ovl3:
/* E1BA0 80038690 26100080 */  addiu      $s0, $s0, 0x80
/* E1BA4 80038694 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* E1BA8 80038698 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1BAC 8003869C 1440FFEE */  bnez       $v0, .L80038658_ovl3
/* E1BB0 800386A0 26310080 */   addiu     $s1, $s1, 0x80
.L800386A4_ovl3:
/* E1BB4 800386A4 8FBF0028 */  lw         $ra, 0x28($sp)
/* E1BB8 800386A8 8FB50024 */  lw         $s5, 0x24($sp)
/* E1BBC 800386AC 8FB40020 */  lw         $s4, 0x20($sp)
/* E1BC0 800386B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* E1BC4 800386B4 8FB20018 */  lw         $s2, 0x18($sp)
/* E1BC8 800386B8 8FB10014 */  lw         $s1, 0x14($sp)
/* E1BCC 800386BC 8FB00010 */  lw         $s0, 0x10($sp)
/* E1BD0 800386C0 03E00008 */  jr         $ra
/* E1BD4 800386C4 27BD0030 */   addiu     $sp, $sp, 0x30
/* E1BD8 800386C8 00000000 */  nop
/* E1BDC 800386CC 00000000 */  nop
.size func_80038570_ovl3, . - func_80038570_ovl3
