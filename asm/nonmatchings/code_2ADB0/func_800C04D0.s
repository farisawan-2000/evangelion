.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C04D0
/* 2B0D0 800C04D0 00041823 */  negu       $v1, $a0
/* 2B0D4 800C04D4 28A1000C */  slti       $at, $a1, 0xc
/* 2B0D8 800C04D8 1420001D */  bnez       $at, .L800C0550
/* 2B0DC 800C04DC 00000000 */   nop
/* 2B0E0 800C04E0 30630003 */  andi       $v1, $v1, 3
/* 2B0E4 800C04E4 10600003 */  beqz       $v1, .L800C04F4
/* 2B0E8 800C04E8 00A32823 */   subu      $a1, $a1, $v1
/* 2B0EC 800C04EC A8800000 */  swl        $zero, ($a0)
/* 2B0F0 800C04F0 00832021 */  addu       $a0, $a0, $v1
.L800C04F4:
/* 2B0F4 800C04F4 2401FFE0 */  addiu      $at, $zero, -0x20
/* 2B0F8 800C04F8 00A13824 */  and        $a3, $a1, $at
/* 2B0FC 800C04FC 10E0000C */  beqz       $a3, .L800C0530
/* 2B100 800C0500 00A72823 */   subu      $a1, $a1, $a3
/* 2B104 800C0504 00E43821 */  addu       $a3, $a3, $a0
.L800C0508:
/* 2B108 800C0508 AC800000 */  sw         $zero, ($a0)
/* 2B10C 800C050C AC800004 */  sw         $zero, 4($a0)
/* 2B110 800C0510 AC800008 */  sw         $zero, 8($a0)
/* 2B114 800C0514 AC80000C */  sw         $zero, 0xc($a0)
/* 2B118 800C0518 24840020 */  addiu      $a0, $a0, 0x20
/* 2B11C 800C051C AC80FFF0 */  sw         $zero, -0x10($a0)
/* 2B120 800C0520 AC80FFF4 */  sw         $zero, -0xc($a0)
/* 2B124 800C0524 AC80FFF8 */  sw         $zero, -8($a0)
/* 2B128 800C0528 1487FFF7 */  bne        $a0, $a3, .L800C0508
/* 2B12C 800C052C AC80FFFC */   sw        $zero, -4($a0)
.L800C0530:
/* 2B130 800C0530 2401FFFC */  addiu      $at, $zero, -4
/* 2B134 800C0534 00A13824 */  and        $a3, $a1, $at
/* 2B138 800C0538 10E00005 */  beqz       $a3, .L800C0550
/* 2B13C 800C053C 00A72823 */   subu      $a1, $a1, $a3
/* 2B140 800C0540 00E43821 */  addu       $a3, $a3, $a0
.L800C0544:
/* 2B144 800C0544 24840004 */  addiu      $a0, $a0, 4
/* 2B148 800C0548 1487FFFE */  bne        $a0, $a3, .L800C0544
/* 2B14C 800C054C AC80FFFC */   sw        $zero, -4($a0)
.L800C0550:
/* 2B150 800C0550 18A00005 */  blez       $a1, .L800C0568
/* 2B154 800C0554 00000000 */   nop
/* 2B158 800C0558 00A42821 */  addu       $a1, $a1, $a0
.L800C055C:
/* 2B15C 800C055C 24840001 */  addiu      $a0, $a0, 1
/* 2B160 800C0560 1485FFFE */  bne        $a0, $a1, .L800C055C
/* 2B164 800C0564 A080FFFF */   sb        $zero, -1($a0)
.L800C0568:
/* 2B168 800C0568 03E00008 */  jr         $ra
/* 2B16C 800C056C 00000000 */   nop
