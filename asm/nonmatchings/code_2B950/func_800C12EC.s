glabel func_800C12EC
/* 2BEEC 800C12EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2BEF0 800C12F0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2BEF4 800C12F4 00808821 */  addu       $s1, $a0, $zero
/* 2BEF8 800C12F8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2BEFC 800C12FC AFB00018 */  sw         $s0, 0x18($sp)
/* 2BF00 800C1300 8E250278 */  lw         $a1, 0x278($s1)
/* 2BF04 800C1304 AFA00010 */  sw         $zero, 0x10($sp)
/* 2BF08 800C1308 AFA00014 */  sw         $zero, 0x14($sp)
/* 2BF0C 800C130C AE200278 */  sw         $zero, 0x278($s1)
/* 2BF10 800C1310 8CA20004 */  lw         $v0, 0x4($a1)
/* 2BF14 800C1314 2403FFFE */  addiu      $v1, $zero, -0x2
/* 2BF18 800C1318 00431024 */  and        $v0, $v0, $v1
/* 2BF1C 800C131C 0C0304F4 */  jal        func_800C13D0
/* 2BF20 800C1320 ACA20004 */   sw        $v0, 0x4($a1)
/* 2BF24 800C1324 8E220274 */  lw         $v0, 0x274($s1)
/* 2BF28 800C1328 8E230278 */  lw         $v1, 0x278($s1)
/* 2BF2C 800C132C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 2BF30 800C1330 14600002 */  bnez       $v1, .L800C133C
/* 2BF34 800C1334 00028040 */   sll       $s0, $v0, 1
/* 2BF38 800C1338 36100001 */  ori        $s0, $s0, 0x1
.L800C133C:
/* 2BF3C 800C133C 02202021 */  addu       $a0, $s1, $zero
/* 2BF40 800C1340 27A50010 */  addiu      $a1, $sp, 0x10
/* 2BF44 800C1344 27A60014 */  addiu      $a2, $sp, 0x14
/* 2BF48 800C1348 0C03056F */  jal        func_800C15BC
/* 2BF4C 800C134C 02003821 */   addu      $a3, $s0, $zero
/* 2BF50 800C1350 10500005 */  beq        $v0, $s0, .L800C1368
/* 2BF54 800C1354 00000000 */   nop
/* 2BF58 800C1358 8FA50010 */  lw         $a1, 0x10($sp)
/* 2BF5C 800C135C 8FA60014 */  lw         $a2, 0x14($sp)
/* 2BF60 800C1360 0C03052D */  jal        func_800C14B4
/* 2BF64 800C1364 02202021 */   addu      $a0, $s1, $zero
.L800C1368:
/* 2BF68 800C1368 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2BF6C 800C136C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2BF70 800C1370 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BF74 800C1374 03E00008 */  jr         $ra
/* 2BF78 800C1378 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800C12EC, . - func_800C12EC
