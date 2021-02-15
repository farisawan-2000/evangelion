.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A3A6C
/* E66C 800A3A6C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E670 800A3A70 AFB00010 */  sw         $s0, 0x10($sp)
/* E674 800A3A74 00808021 */  addu       $s0, $a0, $zero
/* E678 800A3A78 AFB3001C */  sw         $s3, 0x1c($sp)
/* E67C 800A3A7C 00A09821 */  addu       $s3, $a1, $zero
/* E680 800A3A80 AFB7002C */  sw         $s7, 0x2c($sp)
/* E684 800A3A84 00C0B821 */  addu       $s7, $a2, $zero
/* E688 800A3A88 AFB60028 */  sw         $s6, 0x28($sp)
/* E68C 800A3A8C AFBF0030 */  sw         $ra, 0x30($sp)
/* E690 800A3A90 AFB50024 */  sw         $s5, 0x24($sp)
/* E694 800A3A94 AFB40020 */  sw         $s4, 0x20($sp)
/* E698 800A3A98 AFB20018 */  sw         $s2, 0x18($sp)
/* E69C 800A3A9C AFB10014 */  sw         $s1, 0x14($sp)
/* E6A0 800A3AA0 92110004 */  lbu        $s1, 4($s0)
/* E6A4 800A3AA4 96120000 */  lhu        $s2, ($s0)
/* E6A8 800A3AA8 96140002 */  lhu        $s4, 2($s0)
/* E6AC 800A3AAC 24020001 */  addiu      $v0, $zero, 1
/* E6B0 800A3AB0 3223FFFF */  andi       $v1, $s1, 0xffff
/* E6B4 800A3AB4 1062000C */  beq        $v1, $v0, .L800A3AE8
/* E6B8 800A3AB8 00E0B021 */   addu      $s6, $a3, $zero
/* E6BC 800A3ABC 28620002 */  slti       $v0, $v1, 2
/* E6C0 800A3AC0 50400005 */  beql       $v0, $zero, .L800A3AD8
/* E6C4 800A3AC4 28620004 */   slti      $v0, $v1, 4
/* E6C8 800A3AC8 50600008 */  beql       $v1, $zero, .L800A3AEC
/* E6CC 800A3ACC 24150002 */   addiu     $s5, $zero, 2
/* E6D0 800A3AD0 08028EBC */  j          .L800A3AF0
/* E6D4 800A3AD4 32C300FF */   andi      $v1, $s6, 0xff
.L800A3AD8:
/* E6D8 800A3AD8 10400005 */  beqz       $v0, .L800A3AF0
/* E6DC 800A3ADC 32C300FF */   andi      $v1, $s6, 0xff
/* E6E0 800A3AE0 08028EBC */  j          .L800A3AF0
/* E6E4 800A3AE4 0000A821 */   addu      $s5, $zero, $zero
.L800A3AE8:
/* E6E8 800A3AE8 24150002 */  addiu      $s5, $zero, 2
.L800A3AEC:
/* E6EC 800A3AEC 32C300FF */  andi       $v1, $s6, 0xff
.L800A3AF0:
/* E6F0 800A3AF0 24020001 */  addiu      $v0, $zero, 1
/* E6F4 800A3AF4 1062000F */  beq        $v1, $v0, .L800A3B34
/* E6F8 800A3AF8 28620002 */   slti      $v0, $v1, 2
/* E6FC 800A3AFC 50400005 */  beql       $v0, $zero, .L800A3B14
/* E700 800A3B00 24020002 */   addiu     $v0, $zero, 2
/* E704 800A3B04 10600007 */  beqz       $v1, .L800A3B24
/* E708 800A3B08 00002821 */   addu      $a1, $zero, $zero
/* E70C 800A3B0C 08028ED7 */  j          .L800A3B5C
/* E710 800A3B10 00000000 */   nop
.L800A3B14:
/* E714 800A3B14 1062000D */  beq        $v1, $v0, .L800A3B4C
/* E718 800A3B18 00002821 */   addu      $a1, $zero, $zero
/* E71C 800A3B1C 08028ED7 */  j          .L800A3B5C
/* E720 800A3B20 00000000 */   nop
.L800A3B24:
/* E724 800A3B24 0C032663 */  jal        func_800C998C
/* E728 800A3B28 24040078 */   addiu     $a0, $zero, 0x78
/* E72C 800A3B2C 08028ED6 */  j          .L800A3B58
/* E730 800A3B30 00404821 */   addu      $t1, $v0, $zero
.L800A3B34:
/* E734 800A3B34 0C025E63 */  jal        func_8009798C
/* E738 800A3B38 24040078 */   addiu     $a0, $zero, 0x78
/* E73C 800A3B3C 08028ED6 */  j          .L800A3B58
/* E740 800A3B40 00404821 */   addu      $t1, $v0, $zero
.L800A3B44:
/* E744 800A3B44 08028F0E */  j          .L800A3C38
/* E748 800A3B48 24081033 */   addiu     $t0, $zero, 0x1033
.L800A3B4C:
/* E74C 800A3B4C 0C026127 */  jal        func_8009849C
/* E750 800A3B50 24040078 */   addiu     $a0, $zero, 0x78
/* E754 800A3B54 00404821 */  addu       $t1, $v0, $zero
.L800A3B58:
/* E758 800A3B58 00002821 */  addu       $a1, $zero, $zero
.L800A3B5C:
/* E75C 800A3B5C 240D0001 */  addiu      $t5, $zero, 1
/* E760 800A3B60 02201821 */  addu       $v1, $s1, $zero
/* E764 800A3B64 28680002 */  slti       $t0, $v1, 2
/* E768 800A3B68 240C0002 */  addiu      $t4, $zero, 2
/* E76C 800A3B6C 240B0003 */  addiu      $t3, $zero, 3
/* E770 800A3B70 3246FFFF */  andi       $a2, $s2, 0xffff
/* E774 800A3B74 3C04800D */  lui        $a0, %hi(D_800D3DC0)
/* E778 800A3B78 24843DC0 */  addiu      $a0, $a0, %lo(D_800D3DC0)
/* E77C 800A3B7C 25270030 */  addiu      $a3, $t1, 0x30
/* E780 800A3B80 252A0060 */  addiu      $t2, $t1, 0x60
/* E784 800A3B84 240200FF */  addiu      $v0, $zero, 0xff
/* E788 800A3B88 A1220018 */  sb         $v0, 0x18($t1)
/* E78C 800A3B8C A1220019 */  sb         $v0, 0x19($t1)
/* E790 800A3B90 A122001A */  sb         $v0, 0x1a($t1)
/* E794 800A3B94 A122001B */  sb         $v0, 0x1b($t1)
/* E798 800A3B98 2402000A */  addiu      $v0, $zero, 0xa
/* E79C 800A3B9C AD270000 */  sw         $a3, ($t1)
/* E7A0 800A3BA0 AD2A0004 */  sw         $t2, 4($t1)
/* E7A4 800A3BA4 AD200008 */  sw         $zero, 8($t1)
/* E7A8 800A3BA8 AD30000C */  sw         $s0, 0xc($t1)
/* E7AC 800A3BAC AD330010 */  sw         $s3, 0x10($t1)
/* E7B0 800A3BB0 AD370014 */  sw         $s7, 0x14($t1)
/* E7B4 800A3BB4 A522001C */  sh         $v0, 0x1c($t1)
/* E7B8 800A3BB8 A1200020 */  sb         $zero, 0x20($t1)
/* E7BC 800A3BBC A1200021 */  sb         $zero, 0x21($t1)
/* E7C0 800A3BC0 A1360022 */  sb         $s6, 0x22($t1)
/* E7C4 800A3BC4 A520001E */  sh         $zero, 0x1e($t1)
.L800A3BC8:
/* E7C8 800A3BC8 94820000 */  lhu        $v0, ($a0)
/* E7CC 800A3BCC 506D000F */  beql       $v1, $t5, .L800A3C0C
/* E7D0 800A3BD0 3042FFFF */   andi      $v0, $v0, 0xffff
/* E7D4 800A3BD4 11000005 */  beqz       $t0, .L800A3BEC
/* E7D8 800A3BD8 00000000 */   nop
/* E7DC 800A3BDC 10600009 */  beqz       $v1, .L800A3C04
/* E7E0 800A3BE0 3042FFFF */   andi      $v0, $v0, 0xffff
/* E7E4 800A3BE4 08028F07 */  j          .L800A3C1C
/* E7E8 800A3BE8 00000000 */   nop
.L800A3BEC:
/* E7EC 800A3BEC 106C000B */  beq        $v1, $t4, .L800A3C1C
/* E7F0 800A3BF0 3042FFFF */   andi      $v0, $v0, 0xffff
/* E7F4 800A3BF4 106B0007 */  beq        $v1, $t3, .L800A3C14
/* E7F8 800A3BF8 00000000 */   nop
/* E7FC 800A3BFC 08028F07 */  j          .L800A3C1C
/* E800 800A3C00 00000000 */   nop
.L800A3C04:
/* E804 800A3C04 08028F06 */  j          .L800A3C18
/* E808 800A3C08 00021080 */   sll       $v0, $v0, 2
.L800A3C0C:
/* E80C 800A3C0C 08028F06 */  j          .L800A3C18
/* E810 800A3C10 00021040 */   sll       $v0, $v0, 1
.L800A3C14:
/* E814 800A3C14 00021042 */  srl        $v0, $v0, 1
.L800A3C18:
/* E818 800A3C18 3042FFFF */  andi       $v0, $v0, 0xffff
.L800A3C1C:
/* E81C 800A3C1C 10C2FFC9 */  beq        $a2, $v0, .L800A3B44
/* E820 800A3C20 24A50001 */   addiu     $a1, $a1, 1
/* E824 800A3C24 28A20020 */  slti       $v0, $a1, 0x20
/* E828 800A3C28 1440FFE7 */  bnez       $v0, .L800A3BC8
/* E82C 800A3C2C 24840002 */   addiu     $a0, $a0, 2
/* E830 800A3C30 3C0800FC */  lui        $t0, 0xfc
/* E834 800A3C34 35081034 */  ori        $t0, $t0, 0x1034
.L800A3C38:
/* E838 800A3C38 24021033 */  addiu      $v0, $zero, 0x1033
/* E83C 800A3C3C 15020026 */  bne        $t0, $v0, .L800A3CD8
/* E840 800A3C40 24020004 */   addiu     $v0, $zero, 4
/* E844 800A3C44 24050004 */  addiu      $a1, $zero, 4
/* E848 800A3C48 00B12823 */  subu       $a1, $a1, $s1
/* E84C 800A3C4C 3243FFFF */  andi       $v1, $s2, 0xffff
/* E850 800A3C50 00A31007 */  srav       $v0, $v1, $a1
/* E854 800A3C54 240407FF */  addiu      $a0, $zero, 0x7ff
/* E858 800A3C58 0082001A */  div        $zero, $a0, $v0
/* E85C 800A3C5C 14400002 */  bnez       $v0, .L800A3C68
/* E860 800A3C60 00000000 */   nop
/* E864 800A3C64 0007000D */  break      7
.L800A3C68:
/* E868 800A3C68 2401FFFF */   addiu     $at, $zero, -1
/* E86C 800A3C6C 14410004 */  bne        $v0, $at, .L800A3C80
/* E870 800A3C70 3C018000 */   lui       $at, 0x8000
/* E874 800A3C74 14810002 */  bne        $a0, $at, .L800A3C80
/* E878 800A3C78 00000000 */   nop
/* E87C 800A3C7C 0006000D */  break      6
.L800A3C80:
/* E880 800A3C80 00002012 */   mflo      $a0
/* E884 800A3C84 00000000 */  nop
/* E888 800A3C88 00000000 */  nop
/* E88C 800A3C8C 00000000 */  nop
/* E890 800A3C90 02830018 */  mult       $s4, $v1
/* E894 800A3C94 00001812 */  mflo       $v1
/* E898 800A3C98 00000000 */  nop
/* E89C 800A3C9C 00000000 */  nop
/* E8A0 800A3CA0 ACF30004 */  sw         $s3, 4($a3)
/* E8A4 800A3CA4 8CE60004 */  lw         $a2, 4($a3)
/* E8A8 800A3CA8 2402FFFF */  addiu      $v0, $zero, -1
/* E8AC 800A3CAC ACE80000 */  sw         $t0, ($a3)
/* E8B0 800A3CB0 A4E00008 */  sh         $zero, 8($a3)
/* E8B4 800A3CB4 A4E0000E */  sh         $zero, 0xe($a3)
/* E8B8 800A3CB8 ACE20014 */  sw         $v0, 0x14($a3)
/* E8BC 800A3CBC ACE60010 */  sw         $a2, 0x10($a3)
/* E8C0 800A3CC0 00A31807 */  srav       $v1, $v1, $a1
/* E8C4 800A3CC4 2463FFFF */  addiu      $v1, $v1, -1
/* E8C8 800A3CC8 A4E3000A */  sh         $v1, 0xa($a3)
/* E8CC 800A3CCC 24840001 */  addiu      $a0, $a0, 1
/* E8D0 800A3CD0 08028F46 */  j          .L800A3D18
/* E8D4 800A3CD4 A4E4000C */   sh        $a0, 0xc($a3)
.L800A3CD8:
/* E8D8 800A3CD8 00511023 */  subu       $v0, $v0, $s1
/* E8DC 800A3CDC 00521007 */  srav       $v0, $s2, $v0
/* E8E0 800A3CE0 ACF30004 */  sw         $s3, 4($a3)
/* E8E4 800A3CE4 8CE30004 */  lw         $v1, 4($a3)
/* E8E8 800A3CE8 00021080 */  sll        $v0, $v0, 2
/* E8EC 800A3CEC 2442FFFF */  addiu      $v0, $v0, -1
/* E8F0 800A3CF0 A4E2000A */  sh         $v0, 0xa($a3)
/* E8F4 800A3CF4 00141080 */  sll        $v0, $s4, 2
/* E8F8 800A3CF8 2442FFFF */  addiu      $v0, $v0, -1
/* E8FC 800A3CFC A4E2000C */  sh         $v0, 0xc($a3)
/* E900 800A3D00 2402FFFF */  addiu      $v0, $zero, -1
/* E904 800A3D04 ACE80000 */  sw         $t0, ($a3)
/* E908 800A3D08 A4E00008 */  sh         $zero, 8($a3)
/* E90C 800A3D0C A4E0000E */  sh         $zero, 0xe($a3)
/* E910 800A3D10 ACE20014 */  sw         $v0, 0x14($a3)
/* E914 800A3D14 ACE30010 */  sw         $v1, 0x10($a3)
.L800A3D18:
/* E918 800A3D18 24030400 */  addiu      $v1, $zero, 0x400
/* E91C 800A3D1C 00121140 */  sll        $v0, $s2, 5
/* E920 800A3D20 A4E2001C */  sh         $v0, 0x1c($a3)
/* E924 800A3D24 00141140 */  sll        $v0, $s4, 5
/* E928 800A3D28 A4E3001A */  sh         $v1, 0x1a($a3)
/* E92C 800A3D2C A4E30022 */  sh         $v1, 0x22($a3)
/* E930 800A3D30 3223FFFF */  andi       $v1, $s1, 0xffff
/* E934 800A3D34 A4E20024 */  sh         $v0, 0x24($a3)
/* E938 800A3D38 24020004 */  addiu      $v0, $zero, 4
/* E93C 800A3D3C 00431023 */  subu       $v0, $v0, $v1
/* E940 800A3D40 00521007 */  srav       $v0, $s2, $v0
/* E944 800A3D44 A4E20028 */  sh         $v0, 0x28($a3)
/* E948 800A3D48 24020030 */  addiu      $v0, $zero, 0x30
/* E94C 800A3D4C A4E00018 */  sh         $zero, 0x18($a3)
/* E950 800A3D50 A4E0001E */  sh         $zero, 0x1e($a3)
/* E954 800A3D54 A4E00020 */  sh         $zero, 0x20($a3)
/* E958 800A3D58 A4E00026 */  sh         $zero, 0x26($a3)
/* E95C 800A3D5C A4E0002A */  sh         $zero, 0x2a($a3)
/* E960 800A3D60 A0F5002C */  sb         $s5, 0x2c($a3)
/* E964 800A3D64 A0F1002D */  sb         $s1, 0x2d($a3)
/* E968 800A3D68 A0E0002E */  sb         $zero, 0x2e($a3)
/* E96C 800A3D6C A0E0002F */  sb         $zero, 0x2f($a3)
/* E970 800A3D70 AD420000 */  sw         $v0, ($t2)
/* E974 800A3D74 24020100 */  addiu      $v0, $zero, 0x100
/* E978 800A3D78 AD570004 */  sw         $s7, 4($t2)
/* E97C 800A3D7C 10600006 */  beqz       $v1, .L800A3D98
/* E980 800A3D80 A5420008 */   sh        $v0, 8($t2)
/* E984 800A3D84 24020001 */  addiu      $v0, $zero, 1
/* E988 800A3D88 10620004 */  beq        $v1, $v0, .L800A3D9C
/* E98C 800A3D8C 240200FF */   addiu     $v0, $zero, 0xff
/* E990 800A3D90 08028F68 */  j          .L800A3DA0
/* E994 800A3D94 00000000 */   nop
.L800A3D98:
/* E998 800A3D98 2402000F */  addiu      $v0, $zero, 0xf
.L800A3D9C:
/* E99C 800A3D9C A542000A */  sh         $v0, 0xa($t2)
.L800A3DA0:
/* E9A0 800A3DA0 8D440004 */  lw         $a0, 4($t2)
/* E9A4 800A3DA4 01201021 */  addu       $v0, $t1, $zero
/* E9A8 800A3DA8 2403FFFF */  addiu      $v1, $zero, -1
/* E9AC 800A3DAC A540000C */  sh         $zero, 0xc($t2)
/* E9B0 800A3DB0 A540000E */  sh         $zero, 0xe($t2)
/* E9B4 800A3DB4 AD430014 */  sw         $v1, 0x14($t2)
/* E9B8 800A3DB8 AD440010 */  sw         $a0, 0x10($t2)
/* E9BC 800A3DBC 8FBF0030 */  lw         $ra, 0x30($sp)
/* E9C0 800A3DC0 8FB7002C */  lw         $s7, 0x2c($sp)
/* E9C4 800A3DC4 8FB60028 */  lw         $s6, 0x28($sp)
/* E9C8 800A3DC8 8FB50024 */  lw         $s5, 0x24($sp)
/* E9CC 800A3DCC 8FB40020 */  lw         $s4, 0x20($sp)
/* E9D0 800A3DD0 8FB3001C */  lw         $s3, 0x1c($sp)
/* E9D4 800A3DD4 8FB20018 */  lw         $s2, 0x18($sp)
/* E9D8 800A3DD8 8FB10014 */  lw         $s1, 0x14($sp)
/* E9DC 800A3DDC 8FB00010 */  lw         $s0, 0x10($sp)
/* E9E0 800A3DE0 27BD0038 */  addiu      $sp, $sp, 0x38
/* E9E4 800A3DE4 03E00008 */  jr         $ra
/* E9E8 800A3DE8 00000000 */   nop
