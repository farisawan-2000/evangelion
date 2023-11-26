glabel func_80037708_ovl3
/* E0C18 80037708 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E0C1C 8003770C AFB50024 */  sw         $s5, 0x24($sp)
/* E0C20 80037710 00E0A821 */  addu       $s5, $a3, $zero
/* E0C24 80037714 AFB40020 */  sw         $s4, 0x20($sp)
/* E0C28 80037718 97B40042 */  lhu        $s4, 0x42($sp)
/* E0C2C 8003771C 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E0C30 80037720 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E0C34 80037724 00003821 */  addu       $a3, $zero, $zero
/* E0C38 80037728 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* E0C3C 8003772C AFBF0028 */  sw         $ra, 0x28($sp)
/* E0C40 80037730 AFB3001C */  sw         $s3, 0x1C($sp)
/* E0C44 80037734 AFB20018 */  sw         $s2, 0x18($sp)
/* E0C48 80037738 AFB10014 */  sw         $s1, 0x14($sp)
/* E0C4C 8003773C AFB00010 */  sw         $s0, 0x10($sp)
.L80037740_ovl3:
/* E0C50 80037740 94620000 */  lhu        $v0, 0x0($v1)
/* E0C54 80037744 54440003 */  bnel       $v0, $a0, .L80037754_ovl3
/* E0C58 80037748 24E70001 */   addiu     $a3, $a3, 0x1
/* E0C5C 8003774C 0800DDDA */  j          .L80037768_ovl3
/* E0C60 80037750 00609821 */   addu      $s3, $v1, $zero
.L80037754_ovl3:
/* E0C64 80037754 30E2FFFF */  andi       $v0, $a3, 0xFFFF
/* E0C68 80037758 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E0C6C 8003775C 1440FFF8 */  bnez       $v0, .L80037740_ovl3
/* E0C70 80037760 24630010 */   addiu     $v1, $v1, 0x10
/* E0C74 80037764 00009821 */  addu       $s3, $zero, $zero
.L80037768_ovl3:
/* E0C78 80037768 00002021 */  addu       $a0, $zero, $zero
/* E0C7C 8003776C 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* E0C80 80037770 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* E0C84 80037774 30A5FFFF */  andi       $a1, $a1, 0xFFFF
.L80037778_ovl3:
/* E0C88 80037778 94620000 */  lhu        $v0, 0x0($v1)
/* E0C8C 8003777C 14450003 */  bne        $v0, $a1, .L8003778C_ovl3
/* E0C90 80037780 24840001 */   addiu     $a0, $a0, 0x1
/* E0C94 80037784 0800DDE8 */  j          .L800377A0_ovl3
/* E0C98 80037788 00608021 */   addu      $s0, $v1, $zero
.L8003778C_ovl3:
/* E0C9C 8003778C 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* E0CA0 80037790 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E0CA4 80037794 1440FFF8 */  bnez       $v0, .L80037778_ovl3
/* E0CA8 80037798 24630010 */   addiu     $v1, $v1, 0x10
/* E0CAC 8003779C 00008021 */  addu       $s0, $zero, $zero
.L800377A0_ovl3:
/* E0CB0 800377A0 8E62000C */  lw         $v0, 0xC($s3)
/* E0CB4 800377A4 8E03000C */  lw         $v1, 0xC($s0)
/* E0CB8 800377A8 30D200FF */  andi       $s2, $a2, 0xFF
/* E0CBC 800377AC 24060020 */  addiu      $a2, $zero, 0x20
/* E0CC0 800377B0 8C710014 */  lw         $s1, 0x14($v1)
/* E0CC4 800377B4 8C450014 */  lw         $a1, 0x14($v0)
/* E0CC8 800377B8 00121140 */  sll        $v0, $s2, 5
/* E0CCC 800377BC 02202021 */  addu       $a0, $s1, $zero
/* E0CD0 800377C0 0C03006C */  jal        func_800C01B0
/* E0CD4 800377C4 00A22821 */   addu      $a1, $a1, $v0
/* E0CD8 800377C8 8E05000C */  lw         $a1, 0xC($s0)
/* E0CDC 800377CC 8CA2000C */  lw         $v0, 0xC($a1)
/* E0CE0 800377D0 94420002 */  lhu        $v0, 0x2($v0)
/* E0CE4 800377D4 8CA90010 */  lw         $t1, 0x10($a1)
/* E0CE8 800377D8 10400039 */  beqz       $v0, .L800378C0_ovl3
/* E0CEC 800377DC 00005021 */   addu      $t2, $zero, $zero
/* E0CF0 800377E0 328BFFFF */  andi       $t3, $s4, 0xFFFF
/* E0CF4 800377E4 32A7FFFF */  andi       $a3, $s5, 0xFFFF
/* E0CF8 800377E8 00006021 */  addu       $t4, $zero, $zero
/* E0CFC 800377EC 00123100 */  sll        $a2, $s2, 4
.L800377F0_ovl3:
/* E0D00 800377F0 8E64000C */  lw         $a0, 0xC($s3)
/* E0D04 800377F4 8C82000C */  lw         $v0, 0xC($a0)
/* E0D08 800377F8 94430000 */  lhu        $v1, 0x0($v0)
/* E0D0C 800377FC 3142FFFF */  andi       $v0, $t2, 0xFFFF
/* E0D10 80037800 01621021 */  addu       $v0, $t3, $v0
/* E0D14 80037804 00620018 */  mult       $v1, $v0
/* E0D18 80037808 00001812 */  mflo       $v1
/* E0D1C 8003780C 8CA2000C */  lw         $v0, 0xC($a1)
/* E0D20 80037810 94420000 */  lhu        $v0, 0x0($v0)
/* E0D24 80037814 00004021 */  addu       $t0, $zero, $zero
/* E0D28 80037818 8C840010 */  lw         $a0, 0x10($a0)
/* E0D2C 8003781C 00021042 */  srl        $v0, $v0, 1
/* E0D30 80037820 0182102B */  sltu       $v0, $t4, $v0
/* E0D34 80037824 00832021 */  addu       $a0, $a0, $v1
/* E0D38 80037828 1040001D */  beqz       $v0, .L800378A0_ovl3
/* E0D3C 8003782C 00872021 */   addu      $a0, $a0, $a3
.L80037830_ovl3:
/* E0D40 80037830 91250000 */  lbu        $a1, 0x0($t1)
/* E0D44 80037834 00051902 */  srl        $v1, $a1, 4
/* E0D48 80037838 00031040 */  sll        $v0, $v1, 1
/* E0D4C 8003783C 00511021 */  addu       $v0, $v0, $s1
/* E0D50 80037840 94420000 */  lhu        $v0, 0x0($v0)
/* E0D54 80037844 30420001 */  andi       $v0, $v0, 0x1
/* E0D58 80037848 10400003 */  beqz       $v0, .L80037858_ovl3
/* E0D5C 8003784C 25290001 */   addiu     $t1, $t1, 0x1
/* E0D60 80037850 00661021 */  addu       $v0, $v1, $a2
/* E0D64 80037854 A0820000 */  sb         $v0, 0x0($a0)
.L80037858_ovl3:
/* E0D68 80037858 30A3000F */  andi       $v1, $a1, 0xF
/* E0D6C 8003785C 00031040 */  sll        $v0, $v1, 1
/* E0D70 80037860 00511021 */  addu       $v0, $v0, $s1
/* E0D74 80037864 94420000 */  lhu        $v0, 0x0($v0)
/* E0D78 80037868 30420001 */  andi       $v0, $v0, 0x1
/* E0D7C 8003786C 10400003 */  beqz       $v0, .L8003787C_ovl3
/* E0D80 80037870 24840001 */   addiu     $a0, $a0, 0x1
/* E0D84 80037874 00661021 */  addu       $v0, $v1, $a2
/* E0D88 80037878 A0820000 */  sb         $v0, 0x0($a0)
.L8003787C_ovl3:
/* E0D8C 8003787C 8E02000C */  lw         $v0, 0xC($s0)
/* E0D90 80037880 8C42000C */  lw         $v0, 0xC($v0)
/* E0D94 80037884 94430000 */  lhu        $v1, 0x0($v0)
/* E0D98 80037888 25080001 */  addiu      $t0, $t0, 0x1
/* E0D9C 8003788C 3102FFFF */  andi       $v0, $t0, 0xFFFF
/* E0DA0 80037890 00031842 */  srl        $v1, $v1, 1
/* E0DA4 80037894 0043102B */  sltu       $v0, $v0, $v1
/* E0DA8 80037898 1440FFE5 */  bnez       $v0, .L80037830_ovl3
/* E0DAC 8003789C 24840001 */   addiu     $a0, $a0, 0x1
.L800378A0_ovl3:
/* E0DB0 800378A0 8E05000C */  lw         $a1, 0xC($s0)
/* E0DB4 800378A4 8CA2000C */  lw         $v0, 0xC($a1)
/* E0DB8 800378A8 94430002 */  lhu        $v1, 0x2($v0)
/* E0DBC 800378AC 254A0001 */  addiu      $t2, $t2, 0x1
/* E0DC0 800378B0 3142FFFF */  andi       $v0, $t2, 0xFFFF
/* E0DC4 800378B4 0043102B */  sltu       $v0, $v0, $v1
/* E0DC8 800378B8 1440FFCD */  bnez       $v0, .L800377F0_ovl3
/* E0DCC 800378BC 00000000 */   nop
.L800378C0_ovl3:
/* E0DD0 800378C0 02601021 */  addu       $v0, $s3, $zero
/* E0DD4 800378C4 8FBF0028 */  lw         $ra, 0x28($sp)
/* E0DD8 800378C8 8FB50024 */  lw         $s5, 0x24($sp)
/* E0DDC 800378CC 8FB40020 */  lw         $s4, 0x20($sp)
/* E0DE0 800378D0 8FB3001C */  lw         $s3, 0x1C($sp)
/* E0DE4 800378D4 8FB20018 */  lw         $s2, 0x18($sp)
/* E0DE8 800378D8 8FB10014 */  lw         $s1, 0x14($sp)
/* E0DEC 800378DC 8FB00010 */  lw         $s0, 0x10($sp)
/* E0DF0 800378E0 03E00008 */  jr         $ra
/* E0DF4 800378E4 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80037708_ovl3, . - func_80037708_ovl3
