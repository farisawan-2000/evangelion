glabel func_800A12F8
/* BEF8 800A12F8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BEFC 800A12FC AFB1001C */  sw         $s1, 0x1C($sp)
/* BF00 800A1300 00A08821 */  addu       $s1, $a1, $zero
/* BF04 800A1304 8FA50040 */  lw         $a1, 0x40($sp)
/* BF08 800A1308 AFB20020 */  sw         $s2, 0x20($sp)
/* BF0C 800A130C 00809021 */  addu       $s2, $a0, $zero
/* BF10 800A1310 AFB30024 */  sw         $s3, 0x24($sp)
/* BF14 800A1314 00C09821 */  addu       $s3, $a2, $zero
/* BF18 800A1318 AFB00018 */  sw         $s0, 0x18($sp)
/* BF1C 800A131C 00E08021 */  addu       $s0, $a3, $zero
/* BF20 800A1320 AFBF0028 */  sw         $ra, 0x28($sp)
/* BF24 800A1324 0C0284DC */  jal        func_800A1370
/* BF28 800A1328 02202021 */   addu      $a0, $s1, $zero
/* BF2C 800A132C 02402021 */  addu       $a0, $s2, $zero
/* BF30 800A1330 02202821 */  addu       $a1, $s1, $zero
/* BF34 800A1334 00021400 */  sll        $v0, $v0, 16
/* BF38 800A1338 00021403 */  sra        $v0, $v0, 16
/* BF3C 800A133C 00108400 */  sll        $s0, $s0, 16
/* BF40 800A1340 02603021 */  addu       $a2, $s3, $zero
/* BF44 800A1344 00103C03 */  sra        $a3, $s0, 16
/* BF48 800A1348 0C028429 */  jal        func_800A10A4
/* BF4C 800A134C AFA20010 */   sw        $v0, 0x10($sp)
/* BF50 800A1350 8FBF0028 */  lw         $ra, 0x28($sp)
/* BF54 800A1354 8FB30024 */  lw         $s3, 0x24($sp)
/* BF58 800A1358 8FB20020 */  lw         $s2, 0x20($sp)
/* BF5C 800A135C 8FB1001C */  lw         $s1, 0x1C($sp)
/* BF60 800A1360 8FB00018 */  lw         $s0, 0x18($sp)
/* BF64 800A1364 27BD0030 */  addiu      $sp, $sp, 0x30
/* BF68 800A1368 03E00008 */  jr         $ra
/* BF6C 800A136C 00000000 */   nop
.size func_800A12F8, . - func_800A12F8
