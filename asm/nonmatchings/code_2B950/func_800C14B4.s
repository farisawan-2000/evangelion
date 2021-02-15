.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C14B4
/* 2C0B4 800C14B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C0B8 800C14B8 AFB3001C */  sw         $s3, 0x1c($sp)
/* 2C0BC 800C14BC 00809821 */  addu       $s3, $a0, $zero
/* 2C0C0 800C14C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C0C4 800C14C4 00A08821 */  addu       $s1, $a1, $zero
/* 2C0C8 800C14C8 AFB20018 */  sw         $s2, 0x18($sp)
/* 2C0CC 800C14CC 00C09021 */  addu       $s2, $a2, $zero
/* 2C0D0 800C14D0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2C0D4 800C14D4 12200013 */  beqz       $s1, .L800C1524
/* 2C0D8 800C14D8 AFB00010 */   sw        $s0, 0x10($sp)
/* 2C0DC 800C14DC 8E230010 */  lw         $v1, 0x10($s1)
/* 2C0E0 800C14E0 24020002 */  addiu      $v0, $zero, 2
/* 2C0E4 800C14E4 14620003 */  bne        $v1, $v0, .L800C14F4
/* 2C0E8 800C14E8 00000000 */   nop
/* 2C0EC 800C14EC 0C02F510 */  jal        func_800BD440
/* 2C0F0 800C14F0 00000000 */   nop
.L800C14F4:
/* 2C0F4 800C14F4 8E220004 */  lw         $v0, 4($s1)
/* 2C0F8 800C14F8 26300010 */  addiu      $s0, $s1, 0x10
/* 2C0FC 800C14FC 02002021 */  addu       $a0, $s0, $zero
/* 2C100 800C1500 2403FFCF */  addiu      $v1, $zero, -0x31
/* 2C104 800C1504 00431024 */  and        $v0, $v0, $v1
/* 2C108 800C1508 0C0302C4 */  jal        func_800C0B10
/* 2C10C 800C150C AE220004 */   sw        $v0, 4($s1)
/* 2C110 800C1510 0C030347 */  jal        func_800C0D1C
/* 2C114 800C1514 02002021 */   addu      $a0, $s0, $zero
/* 2C118 800C1518 16320002 */  bne        $s1, $s2, .L800C1524
/* 2C11C 800C151C AE710274 */   sw        $s1, 0x274($s3)
/* 2C120 800C1520 AE720278 */  sw         $s2, 0x278($s3)
.L800C1524:
/* 2C124 800C1524 0012182B */  sltu       $v1, $zero, $s2
/* 2C128 800C1528 02511026 */  xor        $v0, $s2, $s1
/* 2C12C 800C152C 0002102B */  sltu       $v0, $zero, $v0
/* 2C130 800C1530 00621824 */  and        $v1, $v1, $v0
/* 2C134 800C1534 1060000C */  beqz       $v1, .L800C1568
/* 2C138 800C1538 00000000 */   nop
/* 2C13C 800C153C 8E42003C */  lw         $v0, 0x3c($s2)
/* 2C140 800C1540 8E440038 */  lw         $a0, 0x38($s2)
/* 2C144 800C1544 8C460000 */  lw         $a2, ($v0)
/* 2C148 800C1548 0C031E0C */  jal        func_800C7830
/* 2C14C 800C154C 8C470004 */   lw        $a3, 4($v0)
/* 2C150 800C1550 24020001 */  addiu      $v0, $zero, 1
/* 2C154 800C1554 3C01800F */  lui        $at, %hi(D_800F6994)
/* 2C158 800C1558 AC226994 */  sw         $v0, %lo(D_800F6994)($at)
/* 2C15C 800C155C 3C01800F */  lui        $at, %hi(D_800F6998)
/* 2C160 800C1560 AC206998 */  sw         $zero, %lo(D_800F6998)($at)
/* 2C164 800C1564 AE720278 */  sw         $s2, 0x278($s3)
.L800C1568:
/* 2C168 800C1568 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2C16C 800C156C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2C170 800C1570 8FB20018 */  lw         $s2, 0x18($sp)
/* 2C174 800C1574 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C178 800C1578 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C17C 800C157C 03E00008 */  jr         $ra
/* 2C180 800C1580 27BD0028 */   addiu     $sp, $sp, 0x28
