glabel func_800BBD6C
/* 2696C 800BBD6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26970 800BBD70 AFBF0010 */  sw         $ra, 0x10($sp)
/* 26974 800BBD74 24A7FFFF */  addiu      $a3, $a1, -0x1
/* 26978 800BBD78 2CE20009 */  sltiu      $v0, $a3, 0x9
/* 2697C 800BBD7C 10400021 */  beqz       $v0, .L800BBE04
/* 26980 800BBD80 00801821 */   addu      $v1, $a0, $zero
/* 26984 800BBD84 00071080 */  sll        $v0, $a3, 2
/* 26988 800BBD88 3C018010 */  lui        $at, %hi(jtbl_800FEE38)
/* 2698C 800BBD8C 00220821 */  addu       $at, $at, $v0
/* 26990 800BBD90 8C22EE38 */  lw         $v0, %lo(jtbl_800FEE38)($at)
/* 26994 800BBD94 00400008 */  jr         $v0
/* 26998 800BBD98 00000000 */   nop
glabel .L800BBD9C
/* 2699C 800BBD9C 0802EF87 */  j          .L800BBE1C
/* 269A0 800BBDA0 AC860000 */   sw        $a2, 0x0($a0)
glabel .L800BBDA4
/* 269A4 800BBDA4 24020001 */  addiu      $v0, $zero, 0x1
/* 269A8 800BBDA8 AC600020 */  sw         $zero, 0x20($v1)
/* 269AC 800BBDAC AC620024 */  sw         $v0, 0x24($v1)
/* 269B0 800BBDB0 AC600030 */  sw         $zero, 0x30($v1)
/* 269B4 800BBDB4 AC60001C */  sw         $zero, 0x1C($v1)
/* 269B8 800BBDB8 8C840000 */  lw         $a0, 0x0($a0)
/* 269BC 800BBDBC 10800017 */  beqz       $a0, .L800BBE1C
/* 269C0 800BBDC0 24050004 */   addiu     $a1, $zero, 0x4
/* 269C4 800BBDC4 8C820008 */  lw         $v0, 0x8($a0)
/* 269C8 800BBDC8 0802EF85 */  j          .L800BBE14
/* 269CC 800BBDCC 00003021 */   addu      $a2, $zero, $zero
glabel .L800BBDD0
/* 269D0 800BBDD0 24020001 */  addiu      $v0, $zero, 0x1
/* 269D4 800BBDD4 AC620030 */  sw         $v0, 0x30($v1)
/* 269D8 800BBDD8 8C840000 */  lw         $a0, 0x0($a0)
/* 269DC 800BBDDC 1080000F */  beqz       $a0, .L800BBE1C
/* 269E0 800BBDE0 24050009 */   addiu     $a1, $zero, 0x9
/* 269E4 800BBDE4 8C820008 */  lw         $v0, 0x8($a0)
/* 269E8 800BBDE8 0802EF85 */  j          .L800BBE14
/* 269EC 800BBDEC 00003021 */   addu      $a2, $zero, $zero
glabel .L800BBDF0
/* 269F0 800BBDF0 0802EF87 */  j          .L800BBE1C
/* 269F4 800BBDF4 AC660018 */   sw        $a2, 0x18($v1)
glabel .L800BBDF8
/* 269F8 800BBDF8 24020001 */  addiu      $v0, $zero, 0x1
/* 269FC 800BBDFC 0802EF87 */  j          .L800BBE1C
/* 26A00 800BBE00 AC62001C */   sw        $v0, 0x1C($v1)
glabel .L800BBE04
/* 26A04 800BBE04 8C840000 */  lw         $a0, 0x0($a0)
/* 26A08 800BBE08 10800004 */  beqz       $a0, .L800BBE1C
/* 26A0C 800BBE0C 00000000 */   nop
/* 26A10 800BBE10 8C820008 */  lw         $v0, 0x8($a0)
.L800BBE14:
/* 26A14 800BBE14 0040F809 */  jalr       $v0
/* 26A18 800BBE18 00000000 */   nop
.L800BBE1C:
/* 26A1C 800BBE1C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 26A20 800BBE20 00001021 */  addu       $v0, $zero, $zero
/* 26A24 800BBE24 03E00008 */  jr         $ra
/* 26A28 800BBE28 27BD0018 */   addiu     $sp, $sp, 0x18
/* 26A2C 800BBE2C 00000000 */  nop
.size func_800BBD6C, . - func_800BBD6C
