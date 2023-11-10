glabel func_800A6148
/* 10D48 800A6148 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10D4C 800A614C AFB40020 */  sw         $s4, 0x20($sp)
/* 10D50 800A6150 93B4004B */  lbu        $s4, 0x4B($sp)
/* 10D54 800A6154 AFB50024 */  sw         $s5, 0x24($sp)
/* 10D58 800A6158 93B5004F */  lbu        $s5, 0x4F($sp)
/* 10D5C 800A615C AFB60028 */  sw         $s6, 0x28($sp)
/* 10D60 800A6160 93B60053 */  lbu        $s6, 0x53($sp)
/* 10D64 800A6164 AFB7002C */  sw         $s7, 0x2C($sp)
/* 10D68 800A6168 93B70057 */  lbu        $s7, 0x57($sp)
/* 10D6C 800A616C AFB00010 */  sw         $s0, 0x10($sp)
/* 10D70 800A6170 00808021 */  addu       $s0, $a0, $zero
/* 10D74 800A6174 AFB10014 */  sw         $s1, 0x14($sp)
/* 10D78 800A6178 00A08821 */  addu       $s1, $a1, $zero
/* 10D7C 800A617C AFB20018 */  sw         $s2, 0x18($sp)
/* 10D80 800A6180 00C09021 */  addu       $s2, $a2, $zero
/* 10D84 800A6184 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10D88 800A6188 00E09821 */  addu       $s3, $a3, $zero
/* 10D8C 800A618C AFBF0030 */  sw         $ra, 0x30($sp)
/* 10D90 800A6190 0C032663 */  jal        func_800C998C
/* 10D94 800A6194 24040008 */   addiu     $a0, $zero, 0x8
/* 10D98 800A6198 A0500000 */  sb         $s0, 0x0($v0)
/* 10D9C 800A619C A0510001 */  sb         $s1, 0x1($v0)
/* 10DA0 800A61A0 A0520002 */  sb         $s2, 0x2($v0)
/* 10DA4 800A61A4 A0530003 */  sb         $s3, 0x3($v0)
/* 10DA8 800A61A8 A0540004 */  sb         $s4, 0x4($v0)
/* 10DAC 800A61AC A0550005 */  sb         $s5, 0x5($v0)
/* 10DB0 800A61B0 A0560006 */  sb         $s6, 0x6($v0)
/* 10DB4 800A61B4 A0570007 */  sb         $s7, 0x7($v0)
/* 10DB8 800A61B8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 10DBC 800A61BC 8FB7002C */  lw         $s7, 0x2C($sp)
/* 10DC0 800A61C0 8FB60028 */  lw         $s6, 0x28($sp)
/* 10DC4 800A61C4 8FB50024 */  lw         $s5, 0x24($sp)
/* 10DC8 800A61C8 8FB40020 */  lw         $s4, 0x20($sp)
/* 10DCC 800A61CC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10DD0 800A61D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 10DD4 800A61D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 10DD8 800A61D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10DDC 800A61DC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 10DE0 800A61E0 03E00008 */  jr         $ra
/* 10DE4 800A61E4 00000000 */   nop
.size func_800A6148, . - func_800A6148
