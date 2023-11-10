glabel func_800B49F0
/* 1F5F0 800B49F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1F5F4 800B49F4 AFB40020 */  sw         $s4, 0x20($sp)
/* 1F5F8 800B49F8 8FB40040 */  lw         $s4, 0x40($sp)
/* 1F5FC 800B49FC AFB50024 */  sw         $s5, 0x24($sp)
/* 1F600 800B4A00 0080A821 */  addu       $s5, $a0, $zero
/* 1F604 800B4A04 00A02021 */  addu       $a0, $a1, $zero
/* 1F608 800B4A08 AFB60028 */  sw         $s6, 0x28($sp)
/* 1F60C 800B4A0C 00C0B021 */  addu       $s6, $a2, $zero
/* 1F610 800B4A10 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1F614 800B4A14 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F618 800B4A18 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F61C 800B4A1C AFB10014 */  sw         $s1, 0x14($sp)
/* 1F620 800B4A20 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F624 800B4A24 8EA3001C */  lw         $v1, 0x1C($s5)
/* 1F628 800B4A28 8EA20014 */  lw         $v0, 0x14($s5)
/* 1F62C 800B4A2C 00031840 */  sll        $v1, $v1, 1
/* 1F630 800B4A30 00432821 */  addu       $a1, $v0, $v1
/* 1F634 800B4A34 0082102B */  sltu       $v0, $a0, $v0
/* 1F638 800B4A38 10400002 */  beqz       $v0, .L800B4A44
/* 1F63C 800B4A3C 02809021 */   addu      $s2, $s4, $zero
/* 1F640 800B4A40 00832021 */  addu       $a0, $a0, $v1
.L800B4A44:
/* 1F644 800B4A44 00073840 */  sll        $a3, $a3, 1
/* 1F648 800B4A48 00878021 */  addu       $s0, $a0, $a3
/* 1F64C 800B4A4C 00B0102B */  sltu       $v0, $a1, $s0
/* 1F650 800B4A50 1040001B */  beqz       $v0, .L800B4AC0
/* 1F654 800B4A54 00A48823 */   subu      $s1, $a1, $a0
/* 1F658 800B4A58 26940008 */  addiu      $s4, $s4, 0x8
/* 1F65C 800B4A5C 00118843 */  sra        $s1, $s1, 1
/* 1F660 800B4A60 00118840 */  sll        $s1, $s1, 1
/* 1F664 800B4A64 32230FFF */  andi       $v1, $s1, 0xFFF
/* 1F668 800B4A68 00031B00 */  sll        $v1, $v1, 12
/* 1F66C 800B4A6C 32C20FFF */  andi       $v0, $s6, 0xFFF
/* 1F670 800B4A70 3C130400 */  lui        $s3, (0x4000000 >> 16)
/* 1F674 800B4A74 00531025 */  or         $v0, $v0, $s3
/* 1F678 800B4A78 00621825 */  or         $v1, $v1, $v0
/* 1F67C 800B4A7C 02058023 */  subu       $s0, $s0, $a1
/* 1F680 800B4A80 00108043 */  sra        $s0, $s0, 1
/* 1F684 800B4A84 0C02F680 */  jal        func_800BDA00
/* 1F688 800B4A88 AE430000 */   sw        $v1, 0x0($s2)
/* 1F68C 800B4A8C AE420004 */  sw         $v0, 0x4($s2)
/* 1F690 800B4A90 02809021 */  addu       $s2, $s4, $zero
/* 1F694 800B4A94 00108040 */  sll        $s0, $s0, 1
/* 1F698 800B4A98 32100FFF */  andi       $s0, $s0, 0xFFF
/* 1F69C 800B4A9C 00108300 */  sll        $s0, $s0, 12
/* 1F6A0 800B4AA0 02D18821 */  addu       $s1, $s6, $s1
/* 1F6A4 800B4AA4 32310FFF */  andi       $s1, $s1, 0xFFF
/* 1F6A8 800B4AA8 02338825 */  or         $s1, $s1, $s3
/* 1F6AC 800B4AAC 02118025 */  or         $s0, $s0, $s1
/* 1F6B0 800B4AB0 AE500000 */  sw         $s0, 0x0($s2)
/* 1F6B4 800B4AB4 8EA40014 */  lw         $a0, 0x14($s5)
/* 1F6B8 800B4AB8 0802D2B8 */  j          .L800B4AE0
/* 1F6BC 800B4ABC 26940008 */   addiu     $s4, $s4, 0x8
.L800B4AC0:
/* 1F6C0 800B4AC0 26940008 */  addiu      $s4, $s4, 0x8
/* 1F6C4 800B4AC4 30E20FFF */  andi       $v0, $a3, 0xFFF
/* 1F6C8 800B4AC8 00021300 */  sll        $v0, $v0, 12
/* 1F6CC 800B4ACC 32C30FFF */  andi       $v1, $s6, 0xFFF
/* 1F6D0 800B4AD0 3C050400 */  lui        $a1, (0x4000000 >> 16)
/* 1F6D4 800B4AD4 00651825 */  or         $v1, $v1, $a1
/* 1F6D8 800B4AD8 00431025 */  or         $v0, $v0, $v1
/* 1F6DC 800B4ADC AE420000 */  sw         $v0, 0x0($s2)
.L800B4AE0:
/* 1F6E0 800B4AE0 0C02F680 */  jal        func_800BDA00
/* 1F6E4 800B4AE4 00000000 */   nop
/* 1F6E8 800B4AE8 AE420004 */  sw         $v0, 0x4($s2)
/* 1F6EC 800B4AEC 02801021 */  addu       $v0, $s4, $zero
/* 1F6F0 800B4AF0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1F6F4 800B4AF4 8FB60028 */  lw         $s6, 0x28($sp)
/* 1F6F8 800B4AF8 8FB50024 */  lw         $s5, 0x24($sp)
/* 1F6FC 800B4AFC 8FB40020 */  lw         $s4, 0x20($sp)
/* 1F700 800B4B00 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F704 800B4B04 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F708 800B4B08 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F70C 800B4B0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F710 800B4B10 03E00008 */  jr         $ra
/* 1F714 800B4B14 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B49F0, . - func_800B49F0
