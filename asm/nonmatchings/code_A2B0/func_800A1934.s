.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1934
/* C534 800A1934 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C538 800A1938 AFB20028 */  sw         $s2, 0x28($sp)
/* C53C 800A193C 00809021 */  addu       $s2, $a0, $zero
/* C540 800A1940 AFB40030 */  sw         $s4, 0x30($sp)
/* C544 800A1944 00A0A021 */  addu       $s4, $a1, $zero
/* C548 800A1948 AFBF0038 */  sw         $ra, 0x38($sp)
/* C54C 800A194C AFB50034 */  sw         $s5, 0x34($sp)
/* C550 800A1950 AFB3002C */  sw         $s3, 0x2c($sp)
/* C554 800A1954 AFB10024 */  sw         $s1, 0x24($sp)
/* C558 800A1958 AFB00020 */  sw         $s0, 0x20($sp)
/* C55C 800A195C 8E420004 */  lw         $v0, 4($s2)
/* C560 800A1960 00C09821 */  addu       $s3, $a2, $zero
/* C564 800A1964 00E0A821 */  addu       $s5, $a3, $zero
/* C568 800A1968 8C430008 */  lw         $v1, 8($v0)
/* C56C 800A196C 86440064 */  lh         $a0, 0x64($s2)
/* C570 800A1970 00008021 */  addu       $s0, $zero, $zero
/* C574 800A1974 1880000C */  blez       $a0, .L800A19A8
/* C578 800A1978 00438821 */   addu      $s1, $v0, $v1
.L800A197C:
/* C57C 800A197C 02202021 */  addu       $a0, $s1, $zero
/* C580 800A1980 0C0325FC */  jal        func_800C97F0
/* C584 800A1984 02802821 */   addu      $a1, $s4, $zero
/* C588 800A1988 54400003 */  bnezl      $v0, .L800A1998
/* C58C 800A198C 26100001 */   addiu     $s0, $s0, 1
/* C590 800A1990 0802866B */  j          .L800A19AC
/* C594 800A1994 0200A021 */   addu      $s4, $s0, $zero
.L800A1998:
/* C598 800A1998 86420064 */  lh         $v0, 0x64($s2)
/* C59C 800A199C 0202102A */  slt        $v0, $s0, $v0
/* C5A0 800A19A0 1440FFF6 */  bnez       $v0, .L800A197C
/* C5A4 800A19A4 26310014 */   addiu     $s1, $s1, 0x14
.L800A19A8:
/* C5A8 800A19A8 0000A021 */  addu       $s4, $zero, $zero
.L800A19AC:
/* C5AC 800A19AC 8E620004 */  lw         $v0, 4($s3)
/* C5B0 800A19B0 8C430008 */  lw         $v1, 8($v0)
/* C5B4 800A19B4 86640064 */  lh         $a0, 0x64($s3)
/* C5B8 800A19B8 00008021 */  addu       $s0, $zero, $zero
/* C5BC 800A19BC 1880000C */  blez       $a0, .L800A19F0
/* C5C0 800A19C0 00438821 */   addu      $s1, $v0, $v1
.L800A19C4:
/* C5C4 800A19C4 02202021 */  addu       $a0, $s1, $zero
/* C5C8 800A19C8 0C0325FC */  jal        func_800C97F0
/* C5CC 800A19CC 02A02821 */   addu      $a1, $s5, $zero
/* C5D0 800A19D0 54400003 */  bnezl      $v0, .L800A19E0
/* C5D4 800A19D4 26100001 */   addiu     $s0, $s0, 1
/* C5D8 800A19D8 0802867D */  j          .L800A19F4
/* C5DC 800A19DC 02002821 */   addu      $a1, $s0, $zero
.L800A19E0:
/* C5E0 800A19E0 86620064 */  lh         $v0, 0x64($s3)
/* C5E4 800A19E4 0202102A */  slt        $v0, $s0, $v0
/* C5E8 800A19E8 1440FFF6 */  bnez       $v0, .L800A19C4
/* C5EC 800A19EC 26310014 */   addiu     $s1, $s1, 0x14
.L800A19F0:
/* C5F0 800A19F0 00002821 */  addu       $a1, $zero, $zero
.L800A19F4:
/* C5F4 800A19F4 2E420001 */  sltiu      $v0, $s2, 1
/* C5F8 800A19F8 2E630001 */  sltiu      $v1, $s3, 1
/* C5FC 800A19FC 00431025 */  or         $v0, $v0, $v1
/* C600 800A1A00 14400012 */  bnez       $v0, .L800A1A4C
/* C604 800A1A04 00141400 */   sll       $v0, $s4, 0x10
/* C608 800A1A08 8E430008 */  lw         $v1, 8($s2)
/* C60C 800A1A0C 00021383 */  sra        $v0, $v0, 0xe
/* C610 800A1A10 00431021 */  addu       $v0, $v0, $v1
/* C614 800A1A14 8C440000 */  lw         $a0, ($v0)
/* C618 800A1A18 8E630008 */  lw         $v1, 8($s3)
/* C61C 800A1A1C 00051400 */  sll        $v0, $a1, 0x10
/* C620 800A1A20 00021383 */  sra        $v0, $v0, 0xe
/* C624 800A1A24 00431021 */  addu       $v0, $v0, $v1
/* C628 800A1A28 8C430000 */  lw         $v1, ($v0)
/* C62C 800A1A2C 8C8500A0 */  lw         $a1, 0xa0($a0)
/* C630 800A1A30 8C6200A0 */  lw         $v0, 0xa0($v1)
/* C634 800A1A34 AC8200A0 */  sw         $v0, 0xa0($a0)
/* C638 800A1A38 8C620008 */  lw         $v0, 8($v1)
/* C63C 800A1A3C AC6500A0 */  sw         $a1, 0xa0($v1)
/* C640 800A1A40 8C850008 */  lw         $a1, 8($a0)
/* C644 800A1A44 AC820008 */  sw         $v0, 8($a0)
/* C648 800A1A48 AC650008 */  sw         $a1, 8($v1)
.L800A1A4C:
/* C64C 800A1A4C 8FBF0038 */  lw         $ra, 0x38($sp)
/* C650 800A1A50 8FB50034 */  lw         $s5, 0x34($sp)
/* C654 800A1A54 8FB40030 */  lw         $s4, 0x30($sp)
/* C658 800A1A58 8FB3002C */  lw         $s3, 0x2c($sp)
/* C65C 800A1A5C 8FB20028 */  lw         $s2, 0x28($sp)
/* C660 800A1A60 8FB10024 */  lw         $s1, 0x24($sp)
/* C664 800A1A64 8FB00020 */  lw         $s0, 0x20($sp)
/* C668 800A1A68 27BD0040 */  addiu      $sp, $sp, 0x40
/* C66C 800A1A6C 03E00008 */  jr         $ra
/* C670 800A1A70 00000000 */   nop
