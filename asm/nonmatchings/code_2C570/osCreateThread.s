glabel osCreateThread
/* 2C570 800C1970 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C574 800C1974 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C578 800C1978 00808021 */  addu       $s0, $a0, $zero
/* 2C57C 800C197C 00E04821 */  addu       $t1, $a3, $zero
/* 2C580 800C1980 000747C3 */  sra        $t0, $a3, 31
/* 2C584 800C1984 3C04800C */  lui        $a0, %hi(D_800C6728)
/* 2C588 800C1988 24846728 */  addiu      $a0, $a0, %lo(D_800C6728)
/* 2C58C 800C198C 00801821 */  addu       $v1, $a0, $zero
/* 2C590 800C1990 000417C3 */  sra        $v0, $a0, 31
/* 2C594 800C1994 8FA70028 */  lw         $a3, 0x28($sp)
/* 2C598 800C1998 3C040100 */  lui        $a0, (0x1000800 >> 16)
/* 2C59C 800C199C 34840800 */  ori        $a0, $a0, (0x1000800 & 0xFFFF)
/* 2C5A0 800C19A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C5A4 800C19A4 AE020100 */  sw         $v0, 0x100($s0)
/* 2C5A8 800C19A8 AE030104 */  sw         $v1, 0x104($s0)
/* 2C5AC 800C19AC 3402FF03 */  ori        $v0, $zero, 0xFF03
/* 2C5B0 800C19B0 AE020118 */  sw         $v0, 0x118($s0)
/* 2C5B4 800C19B4 2402003F */  addiu      $v0, $zero, 0x3F
/* 2C5B8 800C19B8 AE020128 */  sw         $v0, 0x128($s0)
/* 2C5BC 800C19BC 24020001 */  addiu      $v0, $zero, 0x1
/* 2C5C0 800C19C0 AE050014 */  sw         $a1, 0x14($s0)
/* 2C5C4 800C19C4 AE000000 */  sw         $zero, 0x0($s0)
/* 2C5C8 800C19C8 AE000008 */  sw         $zero, 0x8($s0)
/* 2C5CC 800C19CC AE06011C */  sw         $a2, 0x11C($s0)
/* 2C5D0 800C19D0 AE080038 */  sw         $t0, 0x38($s0)
/* 2C5D4 800C19D4 AE09003C */  sw         $t1, 0x3C($s0)
/* 2C5D8 800C19D8 AE04012C */  sw         $a0, 0x12C($s0)
/* 2C5DC 800C19DC AE000018 */  sw         $zero, 0x18($s0)
/* 2C5E0 800C19E0 A6020010 */  sh         $v0, 0x10($s0)
/* 2C5E4 800C19E4 A6000012 */  sh         $zero, 0x12($s0)
/* 2C5E8 800C19E8 8FA2002C */  lw         $v0, 0x2C($sp)
/* 2C5EC 800C19EC 00E05821 */  addu       $t3, $a3, $zero
/* 2C5F0 800C19F0 000757C3 */  sra        $t2, $a3, 31
/* 2C5F4 800C19F4 AE020004 */  sw         $v0, 0x4($s0)
/* 2C5F8 800C19F8 256BFFF0 */  addiu      $t3, $t3, -0x10
/* 2C5FC 800C19FC 2D62FFF0 */  sltiu      $v0, $t3, -0x10
/* 2C600 800C1A00 254AFFFF */  addiu      $t2, $t2, -0x1
/* 2C604 800C1A04 01425021 */  addu       $t2, $t2, $v0
/* 2C608 800C1A08 AE0A00F0 */  sw         $t2, 0xF0($s0)
/* 2C60C 800C1A0C 0C0319D0 */  jal        __osDisableInt
/* 2C610 800C1A10 AE0B00F4 */   sw        $t3, 0xF4($s0)
/* 2C614 800C1A14 3C03800F */  lui        $v1, %hi(__osActiveQueue)
/* 2C618 800C1A18 8C6369BC */  lw         $v1, %lo(__osActiveQueue)($v1)
/* 2C61C 800C1A1C 00402021 */  addu       $a0, $v0, $zero
/* 2C620 800C1A20 3C01800F */  lui        $at, %hi(__osActiveQueue)
/* 2C624 800C1A24 AC3069BC */  sw         $s0, %lo(__osActiveQueue)($at)
/* 2C628 800C1A28 0C0319EC */  jal        __osRestoreInt
/* 2C62C 800C1A2C AE03000C */   sw        $v1, 0xC($s0)
/* 2C630 800C1A30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C634 800C1A34 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C638 800C1A38 03E00008 */  jr         $ra
/* 2C63C 800C1A3C 27BD0018 */   addiu     $sp, $sp, 0x18
.size osCreateThread, . - osCreateThread
