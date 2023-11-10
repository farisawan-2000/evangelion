glabel func_800BAAAC
/* 256AC 800BAAAC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 256B0 800BAAB0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 256B4 800BAAB4 8FB3004C */  lw         $s3, 0x4C($sp)
/* 256B8 800BAAB8 AFB7002C */  sw         $s7, 0x2C($sp)
/* 256BC 800BAABC 8FB70050 */  lw         $s7, 0x50($sp)
/* 256C0 800BAAC0 AFB50024 */  sw         $s5, 0x24($sp)
/* 256C4 800BAAC4 97B5004A */  lhu        $s5, 0x4A($sp)
/* 256C8 800BAAC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 256CC 800BAACC 00808021 */  addu       $s0, $a0, $zero
/* 256D0 800BAAD0 AFB20018 */  sw         $s2, 0x18($sp)
/* 256D4 800BAAD4 00A09021 */  addu       $s2, $a1, $zero
/* 256D8 800BAAD8 AFB60028 */  sw         $s6, 0x28($sp)
/* 256DC 800BAADC 00C0B021 */  addu       $s6, $a2, $zero
/* 256E0 800BAAE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 256E4 800BAAE4 00E08821 */  addu       $s1, $a3, $zero
/* 256E8 800BAAE8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 256EC 800BAAEC AFB40020 */  sw         $s4, 0x20($sp)
/* 256F0 800BAAF0 1A20001A */  blez       $s1, .L800BAB5C
/* 256F4 800BAAF4 0260A021 */   addu      $s4, $s3, $zero
/* 256F8 800BAAF8 8E420030 */  lw         $v0, 0x30($s2)
/* 256FC 800BAAFC 8E440044 */  lw         $a0, 0x44($s2)
/* 25700 800BAB00 8E460034 */  lw         $a2, 0x34($s2)
/* 25704 800BAB04 0040F809 */  jalr       $v0
/* 25708 800BAB08 02202821 */   addu      $a1, $s1, $zero
/* 2570C 800BAB0C 30470007 */  andi       $a3, $v0, 0x7
/* 25710 800BAB10 02278821 */  addu       $s1, $s1, $a3
/* 25714 800BAB14 02002821 */  addu       $a1, $s0, $zero
/* 25718 800BAB18 26100008 */  addiu      $s0, $s0, 0x8
/* 2571C 800BAB1C 02003021 */  addu       $a2, $s0, $zero
/* 25720 800BAB20 26100008 */  addiu      $s0, $s0, 0x8
/* 25724 800BAB24 3263FFFF */  andi       $v1, $s3, 0xFFFF
/* 25728 800BAB28 3C040800 */  lui        $a0, (0x8000000 >> 16)
/* 2572C 800BAB2C 00641825 */  or         $v1, $v1, $a0
/* 25730 800BAB30 ACA30000 */  sw         $v1, 0x0($a1)
/* 25734 800BAB34 32230007 */  andi       $v1, $s1, 0x7
/* 25738 800BAB38 2463FFF8 */  addiu      $v1, $v1, -0x8
/* 2573C 800BAB3C 02231823 */  subu       $v1, $s1, $v1
/* 25740 800BAB40 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 25744 800BAB44 ACA30004 */  sw         $v1, 0x4($a1)
/* 25748 800BAB48 3C030400 */  lui        $v1, (0x4000000 >> 16)
/* 2574C 800BAB4C 00471023 */  subu       $v0, $v0, $a3
/* 25750 800BAB50 ACC30000 */  sw         $v1, 0x0($a2)
/* 25754 800BAB54 0802EAD8 */  j          .L800BAB60
/* 25758 800BAB58 ACC20004 */   sw        $v0, 0x4($a2)
.L800BAB5C:
/* 2575C 800BAB5C 00003821 */  addu       $a3, $zero, $zero
.L800BAB60:
/* 25760 800BAB60 32E20002 */  andi       $v0, $s7, 0x2
/* 25764 800BAB64 10400009 */  beqz       $v0, .L800BAB8C
/* 25768 800BAB68 02002021 */   addu      $a0, $s0, $zero
/* 2576C 800BAB6C 26100008 */  addiu      $s0, $s0, 0x8
/* 25770 800BAB70 3C020F00 */  lui        $v0, (0xF000000 >> 16)
/* 25774 800BAB74 AC820000 */  sw         $v0, 0x0($a0)
/* 25778 800BAB78 8E420018 */  lw         $v0, 0x18($s2)
/* 2577C 800BAB7C 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 25780 800BAB80 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 25784 800BAB84 00431024 */  and        $v0, $v0, $v1
/* 25788 800BAB88 AC820004 */  sw         $v0, 0x4($a0)
.L800BAB8C:
/* 2578C 800BAB8C 02002021 */  addu       $a0, $s0, $zero
/* 25790 800BAB90 26100008 */  addiu      $s0, $s0, 0x8
/* 25794 800BAB94 3C051FFF */  lui        $a1, (0x1FFFFFFF >> 16)
/* 25798 800BAB98 00141400 */  sll        $v0, $s4, 16
/* 2579C 800BAB9C 00021403 */  sra        $v0, $v0, 16
/* 257A0 800BABA0 00471021 */  addu       $v0, $v0, $a3
/* 257A4 800BABA4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 257A8 800BABA8 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 257AC 800BABAC 00431025 */  or         $v0, $v0, $v1
/* 257B0 800BABB0 00151C00 */  sll        $v1, $s5, 16
/* 257B4 800BABB4 AC820000 */  sw         $v0, 0x0($a0)
/* 257B8 800BABB8 00161040 */  sll        $v0, $s6, 1
/* 257BC 800BABBC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 257C0 800BABC0 00621825 */  or         $v1, $v1, $v0
/* 257C4 800BABC4 AC830004 */  sw         $v1, 0x4($a0)
/* 257C8 800BABC8 02002021 */  addu       $a0, $s0, $zero
/* 257CC 800BABCC 32E200FF */  andi       $v0, $s7, 0xFF
/* 257D0 800BABD0 00021400 */  sll        $v0, $v0, 16
/* 257D4 800BABD4 3C030100 */  lui        $v1, (0x1000000 >> 16)
/* 257D8 800BABD8 00431025 */  or         $v0, $v0, $v1
/* 257DC 800BABDC AC820000 */  sw         $v0, 0x0($a0)
/* 257E0 800BABE0 8E430014 */  lw         $v1, 0x14($s2)
/* 257E4 800BABE4 34A5FFFF */  ori        $a1, $a1, (0x1FFFFFFF & 0xFFFF)
/* 257E8 800BABE8 24820008 */  addiu      $v0, $a0, 0x8
/* 257EC 800BABEC 00651824 */  and        $v1, $v1, $a1
/* 257F0 800BABF0 AC830004 */  sw         $v1, 0x4($a0)
/* 257F4 800BABF4 AE400040 */  sw         $zero, 0x40($s2)
/* 257F8 800BABF8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 257FC 800BABFC 8FB7002C */  lw         $s7, 0x2C($sp)
/* 25800 800BAC00 8FB60028 */  lw         $s6, 0x28($sp)
/* 25804 800BAC04 8FB50024 */  lw         $s5, 0x24($sp)
/* 25808 800BAC08 8FB40020 */  lw         $s4, 0x20($sp)
/* 2580C 800BAC0C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 25810 800BAC10 8FB20018 */  lw         $s2, 0x18($sp)
/* 25814 800BAC14 8FB10014 */  lw         $s1, 0x14($sp)
/* 25818 800BAC18 8FB00010 */  lw         $s0, 0x10($sp)
/* 2581C 800BAC1C 03E00008 */  jr         $ra
/* 25820 800BAC20 27BD0038 */   addiu     $sp, $sp, 0x38
/* 25824 800BAC24 00000000 */  nop
/* 25828 800BAC28 00000000 */  nop
/* 2582C 800BAC2C 00000000 */  nop
.size func_800BAAAC, . - func_800BAAAC
