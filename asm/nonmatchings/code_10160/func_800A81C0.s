glabel func_800A81C0
/* 12DC0 800A81C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12DC4 800A81C4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12DC8 800A81C8 00809821 */  addu       $s3, $a0, $zero
/* 12DCC 800A81CC AFBF0020 */  sw         $ra, 0x20($sp)
/* 12DD0 800A81D0 AFB20018 */  sw         $s2, 0x18($sp)
/* 12DD4 800A81D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 12DD8 800A81D8 12600016 */  beqz       $s3, .L800A8234
/* 12DDC 800A81DC AFB00010 */   sw        $s0, 0x10($sp)
/* 12DE0 800A81E0 00009021 */  addu       $s2, $zero, $zero
/* 12DE4 800A81E4 02608821 */  addu       $s1, $s3, $zero
.L800A81E8:
/* 12DE8 800A81E8 8E300000 */  lw         $s0, 0x0($s1)
/* 12DEC 800A81EC 12000006 */  beqz       $s0, .L800A8208
/* 12DF0 800A81F0 26520001 */   addiu     $s2, $s2, 0x1
/* 12DF4 800A81F4 8E040000 */  lw         $a0, 0x0($s0)
/* 12DF8 800A81F8 0C028D30 */  jal        func_800A34C0
/* 12DFC 800A81FC 00000000 */   nop
/* 12E00 800A8200 0C0326A1 */  jal        func_800C9A84
/* 12E04 800A8204 02002021 */   addu      $a0, $s0, $zero
.L800A8208:
/* 12E08 800A8208 2A420004 */  slti       $v0, $s2, 0x4
/* 12E0C 800A820C 1440FFF6 */  bnez       $v0, .L800A81E8
/* 12E10 800A8210 26310004 */   addiu     $s1, $s1, 0x4
/* 12E14 800A8214 8E640018 */  lw         $a0, 0x18($s3)
/* 12E18 800A8218 0C029393 */  jal        func_800A4E4C
/* 12E1C 800A821C 00000000 */   nop
/* 12E20 800A8220 8E64001C */  lw         $a0, 0x1C($s3)
/* 12E24 800A8224 0C029393 */  jal        func_800A4E4C
/* 12E28 800A8228 00000000 */   nop
/* 12E2C 800A822C 0C0326A1 */  jal        func_800C9A84
/* 12E30 800A8230 02602021 */   addu      $a0, $s3, $zero
.L800A8234:
/* 12E34 800A8234 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12E38 800A8238 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12E3C 800A823C 8FB20018 */  lw         $s2, 0x18($sp)
/* 12E40 800A8240 8FB10014 */  lw         $s1, 0x14($sp)
/* 12E44 800A8244 8FB00010 */  lw         $s0, 0x10($sp)
/* 12E48 800A8248 27BD0028 */  addiu      $sp, $sp, 0x28
/* 12E4C 800A824C 03E00008 */  jr         $ra
/* 12E50 800A8250 00000000 */   nop
.size func_800A81C0, . - func_800A81C0
