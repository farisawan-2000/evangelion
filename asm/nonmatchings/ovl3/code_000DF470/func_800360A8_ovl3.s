glabel func_800360A8_ovl3
/* DF5B8 800360A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DF5BC 800360AC AFB10014 */  sw         $s1, 0x14($sp)
/* DF5C0 800360B0 3C118007 */  lui        $s1, %hi(D_8006C588_ovl3)
/* DF5C4 800360B4 8E31C588 */  lw         $s1, %lo(D_8006C588_ovl3)($s1)
/* DF5C8 800360B8 AFB20018 */  sw         $s2, 0x18($sp)
/* DF5CC 800360BC 00009021 */  addu       $s2, $zero, $zero
/* DF5D0 800360C0 AFB40020 */  sw         $s4, 0x20($sp)
/* DF5D4 800360C4 3C14802F */  lui        $s4, (0x802F97FF >> 16)
/* DF5D8 800360C8 369497FF */  ori        $s4, $s4, (0x802F97FF & 0xFFFF)
/* DF5DC 800360CC AFB50024 */  sw         $s5, 0x24($sp)
/* DF5E0 800360D0 24150001 */  addiu      $s5, $zero, 0x1
/* DF5E4 800360D4 AFB3001C */  sw         $s3, 0x1C($sp)
/* DF5E8 800360D8 3413FFFF */  ori        $s3, $zero, 0xFFFF
/* DF5EC 800360DC AFBF0028 */  sw         $ra, 0x28($sp)
/* DF5F0 800360E0 AFB00010 */  sw         $s0, 0x10($sp)
/* DF5F4 800360E4 2630000C */  addiu      $s0, $s1, 0xC
.L800360E8_ovl3:
/* DF5F8 800360E8 96220000 */  lhu        $v0, 0x0($s1)
/* DF5FC 800360EC 5040001B */  beql       $v0, $zero, .L8003615C_ovl3
/* DF600 800360F0 26520001 */   addiu     $s2, $s2, 0x1
/* DF604 800360F4 8E030000 */  lw         $v1, 0x0($s0)
/* DF608 800360F8 8C62000C */  lw         $v0, 0xC($v1)
/* DF60C 800360FC 0282102B */  sltu       $v0, $s4, $v0
/* DF610 80036100 1440000A */  bnez       $v0, .L8003612C_ovl3
/* DF614 80036104 00000000 */   nop
/* DF618 80036108 8202FFF7 */  lb         $v0, -0x9($s0)
/* DF61C 8003610C 14550003 */  bne        $v0, $s5, .L8003611C_ovl3
/* DF620 80036110 00000000 */   nop
/* DF624 80036114 0C0326A1 */  jal        func_800C9A84
/* DF628 80036118 8C640010 */   lw        $a0, 0x10($v1)
.L8003611C_ovl3:
/* DF62C 8003611C 0C028D30 */  jal        func_800A34C0
/* DF630 80036120 8E040000 */   lw        $a0, 0x0($s0)
/* DF634 80036124 0800D851 */  j          .L80036144_ovl3
/* DF638 80036128 A6200000 */   sh        $zero, 0x0($s1)
.L8003612C_ovl3:
/* DF63C 8003612C 8C640014 */  lw         $a0, 0x14($v1)
/* DF640 80036130 0C0326A1 */  jal        func_800C9A84
/* DF644 80036134 00000000 */   nop
/* DF648 80036138 0C02910B */  jal        func_800A442C
/* DF64C 8003613C 8E040000 */   lw        $a0, 0x0($s0)
/* DF650 80036140 A6200000 */  sh         $zero, 0x0($s1)
.L80036144_ovl3:
/* DF654 80036144 AE13FFFC */  sw         $s3, -0x4($s0)
/* DF658 80036148 AE13FFF8 */  sw         $s3, -0x8($s0)
/* DF65C 8003614C A200FFF6 */  sb         $zero, -0xA($s0)
/* DF660 80036150 A200FFF7 */  sb         $zero, -0x9($s0)
/* DF664 80036154 AE000000 */  sw         $zero, 0x0($s0)
/* DF668 80036158 26520001 */  addiu      $s2, $s2, 0x1
.L8003615C_ovl3:
/* DF66C 8003615C 26100010 */  addiu      $s0, $s0, 0x10
/* DF670 80036160 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* DF674 80036164 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DF678 80036168 1440FFDF */  bnez       $v0, .L800360E8_ovl3
/* DF67C 8003616C 26310010 */   addiu     $s1, $s1, 0x10
/* DF680 80036170 8FBF0028 */  lw         $ra, 0x28($sp)
/* DF684 80036174 8FB50024 */  lw         $s5, 0x24($sp)
/* DF688 80036178 8FB40020 */  lw         $s4, 0x20($sp)
/* DF68C 8003617C 8FB3001C */  lw         $s3, 0x1C($sp)
/* DF690 80036180 8FB20018 */  lw         $s2, 0x18($sp)
/* DF694 80036184 8FB10014 */  lw         $s1, 0x14($sp)
/* DF698 80036188 8FB00010 */  lw         $s0, 0x10($sp)
/* DF69C 8003618C 03E00008 */  jr         $ra
/* DF6A0 80036190 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800360A8_ovl3, . - func_800360A8_ovl3
