.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C8F1C
/* 33B1C 800C8F1C 94A30000 */  lhu        $v1, ($a1)
/* 33B20 800C8F20 30627FF0 */  andi       $v0, $v1, 0x7ff0
/* 33B24 800C8F24 00023902 */  srl        $a3, $v0, 4
/* 33B28 800C8F28 00E03021 */  addu       $a2, $a3, $zero
/* 33B2C 800C8F2C 240207FF */  addiu      $v0, $zero, 0x7ff
/* 33B30 800C8F30 14C20011 */  bne        $a2, $v0, .L800C8F78
/* 33B34 800C8F34 00A04021 */   addu      $t0, $a1, $zero
/* 33B38 800C8F38 A4800000 */  sh         $zero, ($a0)
/* 33B3C 800C8F3C 94A20000 */  lhu        $v0, ($a1)
/* 33B40 800C8F40 3042000F */  andi       $v0, $v0, 0xf
/* 33B44 800C8F44 14400019 */  bnez       $v0, .L800C8FAC
/* 33B48 800C8F48 24020002 */   addiu     $v0, $zero, 2
/* 33B4C 800C8F4C 94A20002 */  lhu        $v0, 2($a1)
/* 33B50 800C8F50 14400016 */  bnez       $v0, .L800C8FAC
/* 33B54 800C8F54 24020002 */   addiu     $v0, $zero, 2
/* 33B58 800C8F58 94A20004 */  lhu        $v0, 4($a1)
/* 33B5C 800C8F5C 14400013 */  bnez       $v0, .L800C8FAC
/* 33B60 800C8F60 24020002 */   addiu     $v0, $zero, 2
/* 33B64 800C8F64 94A20006 */  lhu        $v0, 6($a1)
/* 33B68 800C8F68 14400010 */  bnez       $v0, .L800C8FAC
/* 33B6C 800C8F6C 24020002 */   addiu     $v0, $zero, 2
/* 33B70 800C8F70 080323EB */  j          .L800C8FAC
/* 33B74 800C8F74 24020001 */   addiu     $v0, $zero, 1
.L800C8F78:
/* 33B78 800C8F78 18C00007 */  blez       $a2, .L800C8F98
/* 33B7C 800C8F7C 2402FFFF */   addiu     $v0, $zero, -1
/* 33B80 800C8F80 3063800F */  andi       $v1, $v1, 0x800f
/* 33B84 800C8F84 34633FF0 */  ori        $v1, $v1, 0x3ff0
/* 33B88 800C8F88 A5030000 */  sh         $v1, ($t0)
/* 33B8C 800C8F8C 24E3FC02 */  addiu      $v1, $a3, -0x3fe
/* 33B90 800C8F90 080323EB */  j          .L800C8FAC
/* 33B94 800C8F94 A4830000 */   sh        $v1, ($a0)
.L800C8F98:
/* 33B98 800C8F98 04C00003 */  bltz       $a2, .L800C8FA8
/* 33B9C 800C8F9C 00001021 */   addu      $v0, $zero, $zero
/* 33BA0 800C8FA0 080323EB */  j          .L800C8FAC
/* 33BA4 800C8FA4 A4800000 */   sh        $zero, ($a0)
.L800C8FA8:
/* 33BA8 800C8FA8 24020002 */  addiu      $v0, $zero, 2
.L800C8FAC:
/* 33BAC 800C8FAC 03E00008 */  jr         $ra
/* 33BB0 800C8FB0 00000000 */   nop
