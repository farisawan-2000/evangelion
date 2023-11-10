glabel func_800A09A0
/* B5A0 800A09A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5A4 800A09A4 AFB10014 */  sw         $s1, 0x14($sp)
/* B5A8 800A09A8 00808821 */  addu       $s1, $a0, $zero
/* B5AC 800A09AC 00061400 */  sll        $v0, $a2, 16
/* B5B0 800A09B0 AFBF0024 */  sw         $ra, 0x24($sp)
/* B5B4 800A09B4 AFB40020 */  sw         $s4, 0x20($sp)
/* B5B8 800A09B8 AFB3001C */  sw         $s3, 0x1C($sp)
/* B5BC 800A09BC AFB20018 */  sw         $s2, 0x18($sp)
/* B5C0 800A09C0 AFB00010 */  sw         $s0, 0x10($sp)
/* B5C4 800A09C4 8E290008 */  lw         $t1, 0x8($s1)
/* B5C8 800A09C8 00022403 */  sra        $a0, $v0, 16
/* B5CC 800A09CC 00041080 */  sll        $v0, $a0, 2
/* B5D0 800A09D0 00491021 */  addu       $v0, $v0, $t1
/* B5D4 800A09D4 8C500000 */  lw         $s0, 0x0($v0)
/* B5D8 800A09D8 00A09021 */  addu       $s2, $a1, $zero
/* B5DC 800A09DC 8E070000 */  lw         $a3, 0x0($s0)
/* B5E0 800A09E0 00009821 */  addu       $s3, $zero, $zero
/* B5E4 800A09E4 96220064 */  lhu        $v0, 0x64($s1)
/* B5E8 800A09E8 84E8000A */  lh         $t0, 0xA($a3)
/* B5EC 800A09EC 2443FFFF */  addiu      $v1, $v0, -0x1
/* B5F0 800A09F0 29020012 */  slti       $v0, $t0, 0x12
/* B5F4 800A09F4 10400036 */  beqz       $v0, .L800A0AD0
/* B5F8 800A09F8 00C0A021 */   addu      $s4, $a2, $zero
/* B5FC 800A09FC 00031400 */  sll        $v0, $v1, 16
/* B600 800A0A00 00022C03 */  sra        $a1, $v0, 16
/* B604 800A0A04 0085102A */  slt        $v0, $a0, $a1
/* B608 800A0A08 1040000E */  beqz       $v0, .L800A0A44
/* B60C 800A0A0C 00000000 */   nop
/* B610 800A0A10 84E3000C */  lh         $v1, 0xC($a3)
/* B614 800A0A14 00641821 */  addu       $v1, $v1, $a0
/* B618 800A0A18 00031080 */  sll        $v0, $v1, 2
/* B61C 800A0A1C 00491021 */  addu       $v0, $v0, $t1
/* B620 800A0A20 8C420004 */  lw         $v0, 0x4($v0)
/* B624 800A0A24 0065182A */  slt        $v1, $v1, $a1
/* B628 800A0A28 10600006 */  beqz       $v1, .L800A0A44
/* B62C 800A0A2C 00000000 */   nop
/* B630 800A0A30 8C420000 */  lw         $v0, 0x0($v0)
/* B634 800A0A34 8442000A */  lh         $v0, 0xA($v0)
/* B638 800A0A38 01021026 */  xor        $v0, $t0, $v0
/* B63C 800A0A3C 2C420001 */  sltiu      $v0, $v0, 0x1
/* B640 800A0A40 00409821 */  addu       $s3, $v0, $zero
.L800A0A44:
/* B644 800A0A44 8E020000 */  lw         $v0, 0x0($s0)
/* B648 800A0A48 96430000 */  lhu        $v1, 0x0($s2)
/* B64C 800A0A4C 9442000E */  lhu        $v0, 0xE($v0)
/* B650 800A0A50 8E040000 */  lw         $a0, 0x0($s0)
/* B654 800A0A54 00431023 */  subu       $v0, $v0, $v1
/* B658 800A0A58 A6020014 */  sh         $v0, 0x14($s0)
/* B65C 800A0A5C 94820010 */  lhu        $v0, 0x10($a0)
/* B660 800A0A60 96430002 */  lhu        $v1, 0x2($s2)
/* B664 800A0A64 8E040000 */  lw         $a0, 0x0($s0)
/* B668 800A0A68 00431023 */  subu       $v0, $v0, $v1
/* B66C 800A0A6C A6020016 */  sh         $v0, 0x16($s0)
/* B670 800A0A70 94820012 */  lhu        $v0, 0x12($a0)
/* B674 800A0A74 96430004 */  lhu        $v1, 0x4($s2)
/* B678 800A0A78 8E050000 */  lw         $a1, 0x0($s0)
/* B67C 800A0A7C 00431023 */  subu       $v0, $v0, $v1
/* B680 800A0A80 A6020018 */  sh         $v0, 0x18($s0)
/* B684 800A0A84 84A2000C */  lh         $v0, 0xC($a1)
/* B688 800A0A88 10400006 */  beqz       $v0, .L800A0AA4
/* B68C 800A0A8C 02202021 */   addu      $a0, $s1, $zero
/* B690 800A0A90 24A5000E */  addiu      $a1, $a1, 0xE
/* B694 800A0A94 26860001 */  addiu      $a2, $s4, 0x1
/* B698 800A0A98 00063400 */  sll        $a2, $a2, 16
/* B69C 800A0A9C 0C028268 */  jal        func_800A09A0
/* B6A0 800A0AA0 00063403 */   sra       $a2, $a2, 16
.L800A0AA4:
/* B6A4 800A0AA4 02601021 */  addu       $v0, $s3, $zero
/* B6A8 800A0AA8 10400009 */  beqz       $v0, .L800A0AD0
/* B6AC 800A0AAC 02202021 */   addu      $a0, $s1, $zero
/* B6B0 800A0AB0 8E020000 */  lw         $v0, 0x0($s0)
/* B6B4 800A0AB4 9446000C */  lhu        $a2, 0xC($v0)
/* B6B8 800A0AB8 02402821 */  addu       $a1, $s2, $zero
/* B6BC 800A0ABC 24C60001 */  addiu      $a2, $a2, 0x1
/* B6C0 800A0AC0 02863021 */  addu       $a2, $s4, $a2
/* B6C4 800A0AC4 00063400 */  sll        $a2, $a2, 16
/* B6C8 800A0AC8 0C028268 */  jal        func_800A09A0
/* B6CC 800A0ACC 00063403 */   sra       $a2, $a2, 16
.L800A0AD0:
/* B6D0 800A0AD0 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6D4 800A0AD4 8FB40020 */  lw         $s4, 0x20($sp)
/* B6D8 800A0AD8 8FB3001C */  lw         $s3, 0x1C($sp)
/* B6DC 800A0ADC 8FB20018 */  lw         $s2, 0x18($sp)
/* B6E0 800A0AE0 8FB10014 */  lw         $s1, 0x14($sp)
/* B6E4 800A0AE4 8FB00010 */  lw         $s0, 0x10($sp)
/* B6E8 800A0AE8 27BD0028 */  addiu      $sp, $sp, 0x28
/* B6EC 800A0AEC 03E00008 */  jr         $ra
/* B6F0 800A0AF0 00000000 */   nop
.size func_800A09A0, . - func_800A09A0
