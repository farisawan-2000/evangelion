.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD940
/* 28540 800BD940 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 28544 800BD944 00802821 */  addu       $a1, $a0, $zero
/* 28548 800BD948 2406000E */  addiu      $a2, $zero, 0xe
/* 2854C 800BD94C 3C028015 */  lui        $v0, %hi(D_80149E08)
/* 28550 800BD950 24429E08 */  addiu      $v0, $v0, %lo(D_80149E08)
.L800BD954:
/* 28554 800BD954 AC400000 */  sw         $zero, ($v0)
/* 28558 800BD958 24C6FFFF */  addiu      $a2, $a2, -1
/* 2855C 800BD95C 04C1FFFD */  bgez       $a2, .L800BD954
/* 28560 800BD960 2442FFFC */   addiu     $v0, $v0, -4
/* 28564 800BD964 3C038015 */  lui        $v1, %hi(D_80149E0C)
/* 28568 800BD968 24639E0C */  addiu      $v1, $v1, %lo(D_80149E0C)
/* 2856C 800BD96C 2467FFC4 */  addiu      $a3, $v1, -0x3c
/* 28570 800BD970 3C048015 */  lui        $a0, %hi(D_8014A04C)
/* 28574 800BD974 9084A04C */  lbu        $a0, %lo(D_8014A04C)($a0)
/* 28578 800BD978 00003021 */  addu       $a2, $zero, $zero
/* 2857C 800BD97C 24020001 */  addiu      $v0, $zero, 1
/* 28580 800BD980 AC620000 */  sw         $v0, ($v1)
/* 28584 800BD984 240300FF */  addiu      $v1, $zero, 0xff
/* 28588 800BD988 24020001 */  addiu      $v0, $zero, 1
/* 2858C 800BD98C A3A20001 */  sb         $v0, 1($sp)
/* 28590 800BD990 24020003 */  addiu      $v0, $zero, 3
/* 28594 800BD994 A3A30000 */  sb         $v1, ($sp)
/* 28598 800BD998 A3A20002 */  sb         $v0, 2($sp)
/* 2859C 800BD99C A3A50003 */  sb         $a1, 3($sp)
/* 285A0 800BD9A0 A3A30004 */  sb         $v1, 4($sp)
/* 285A4 800BD9A4 A3A30005 */  sb         $v1, 5($sp)
/* 285A8 800BD9A8 A3A30006 */  sb         $v1, 6($sp)
/* 285AC 800BD9AC 1880000F */  blez       $a0, .L800BD9EC
/* 285B0 800BD9B0 A3A30007 */   sb        $v1, 7($sp)
.L800BD9B4:
/* 285B4 800BD9B4 8BA20000 */  lwl        $v0, ($sp)
/* 285B8 800BD9B8 9BA20003 */  lwr        $v0, 3($sp)
/* 285BC 800BD9BC 8BA30004 */  lwl        $v1, 4($sp)
/* 285C0 800BD9C0 9BA30007 */  lwr        $v1, 7($sp)
/* 285C4 800BD9C4 A8E20000 */  swl        $v0, ($a3)
/* 285C8 800BD9C8 B8E20003 */  swr        $v0, 3($a3)
/* 285CC 800BD9CC A8E30004 */  swl        $v1, 4($a3)
/* 285D0 800BD9D0 B8E30007 */  swr        $v1, 7($a3)
/* 285D4 800BD9D4 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 285D8 800BD9D8 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 285DC 800BD9DC 24C60001 */  addiu      $a2, $a2, 1
/* 285E0 800BD9E0 00C2102A */  slt        $v0, $a2, $v0
/* 285E4 800BD9E4 1440FFF3 */  bnez       $v0, .L800BD9B4
/* 285E8 800BD9E8 24E70008 */   addiu     $a3, $a3, 8
.L800BD9EC:
/* 285EC 800BD9EC 240200FE */  addiu      $v0, $zero, 0xfe
/* 285F0 800BD9F0 A0E20000 */  sb         $v0, ($a3)
/* 285F4 800BD9F4 03E00008 */  jr         $ra
/* 285F8 800BD9F8 27BD0010 */   addiu     $sp, $sp, 0x10
/* 285FC 800BD9FC 00000000 */  nop
