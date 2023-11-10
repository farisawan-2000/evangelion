glabel func_800B39E0
/* 1E5E0 800B39E0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1E5E4 800B39E4 AFB50044 */  sw         $s5, 0x44($sp)
/* 1E5E8 800B39E8 00A0A821 */  addu       $s5, $a1, $zero
/* 1E5EC 800B39EC AFB40040 */  sw         $s4, 0x40($sp)
/* 1E5F0 800B39F0 00C0A021 */  addu       $s4, $a2, $zero
/* 1E5F4 800B39F4 00E04021 */  addu       $t0, $a3, $zero
/* 1E5F8 800B39F8 AFBE0050 */  sw         $fp, 0x50($sp)
/* 1E5FC 800B39FC 0000F021 */  addu       $fp, $zero, $zero
/* 1E600 800B3A00 01002821 */  addu       $a1, $t0, $zero
/* 1E604 800B3A04 AFB00030 */  sw         $s0, 0x30($sp)
/* 1E608 800B3A08 00808021 */  addu       $s0, $a0, $zero
/* 1E60C 800B3A0C AFBF0054 */  sw         $ra, 0x54($sp)
/* 1E610 800B3A10 AFB7004C */  sw         $s7, 0x4C($sp)
/* 1E614 800B3A14 AFB60048 */  sw         $s6, 0x48($sp)
/* 1E618 800B3A18 AFB3003C */  sw         $s3, 0x3C($sp)
/* 1E61C 800B3A1C AFB20038 */  sw         $s2, 0x38($sp)
/* 1E620 800B3A20 128000F4 */  beqz       $s4, .L800B3DF4
/* 1E624 800B3A24 AFB10034 */   sw        $s1, 0x34($sp)
/* 1E628 800B3A28 8E020024 */  lw         $v0, 0x24($s0)
/* 1E62C 800B3A2C 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 1E630 800B3A30 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 1E634 800B3A34 00431024 */  and        $v0, $v0, $v1
/* 1E638 800B3A38 3C030B00 */  lui        $v1, (0xB000000 >> 16)
/* 1E63C 800B3A3C 00431025 */  or         $v0, $v0, $v1
/* 1E640 800B3A40 ACA20000 */  sw         $v0, 0x0($a1)
/* 1E644 800B3A44 8E020020 */  lw         $v0, 0x20($s0)
/* 1E648 800B3A48 25080008 */  addiu      $t0, $t0, 0x8
/* 1E64C 800B3A4C 00002021 */  addu       $a0, $zero, $zero
/* 1E650 800B3A50 8C420010 */  lw         $v0, 0x10($v0)
/* 1E654 800B3A54 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 1E658 800B3A58 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 1E65C 800B3A5C 24420008 */  addiu      $v0, $v0, 0x8
/* 1E660 800B3A60 00431024 */  and        $v0, $v0, $v1
/* 1E664 800B3A64 ACA20004 */  sw         $v0, 0x4($a1)
/* 1E668 800B3A68 8E050030 */  lw         $a1, 0x30($s0)
/* 1E66C 800B3A6C 8E030018 */  lw         $v1, 0x18($s0)
/* 1E670 800B3A70 02851021 */  addu       $v0, $s4, $a1
/* 1E674 800B3A74 0062102B */  sltu       $v0, $v1, $v0
/* 1E678 800B3A78 10400003 */  beqz       $v0, .L800B3A88
/* 1E67C 800B3A7C 0000B821 */   addu      $s7, $zero, $zero
/* 1E680 800B3A80 8E02001C */  lw         $v0, 0x1C($s0)
/* 1E684 800B3A84 0002202B */  sltu       $a0, $zero, $v0
.L800B3A88:
/* 1E688 800B3A88 10800002 */  beqz       $a0, .L800B3A94
/* 1E68C 800B3A8C 02808821 */   addu      $s1, $s4, $zero
/* 1E690 800B3A90 00658823 */  subu       $s1, $v1, $a1
.L800B3A94:
/* 1E694 800B3A94 8E030034 */  lw         $v1, 0x34($s0)
/* 1E698 800B3A98 10600003 */  beqz       $v1, .L800B3AA8
/* 1E69C 800B3A9C 24020010 */   addiu     $v0, $zero, 0x10
/* 1E6A0 800B3AA0 0802CEAB */  j          .L800B3AAC
/* 1E6A4 800B3AA4 0043B023 */   subu      $s6, $v0, $v1
.L800B3AA8:
/* 1E6A8 800B3AA8 0000B021 */  addu       $s6, $zero, $zero
.L800B3AAC:
/* 1E6AC 800B3AAC 02363023 */  subu       $a2, $s1, $s6
/* 1E6B0 800B3AB0 00061027 */  nor        $v0, $zero, $a2
/* 1E6B4 800B3AB4 000217C3 */  sra        $v0, $v0, 31
/* 1E6B8 800B3AB8 00C23024 */  and        $a2, $a2, $v0
/* 1E6BC 800B3ABC 24C2000F */  addiu      $v0, $a2, 0xF
/* 1E6C0 800B3AC0 00029103 */  sra        $s2, $v0, 4
/* 1E6C4 800B3AC4 001248C0 */  sll        $t1, $s2, 3
/* 1E6C8 800B3AC8 10800073 */  beqz       $a0, .L800B3C98
/* 1E6CC 800B3ACC 01323821 */   addu      $a3, $t1, $s2
/* 1E6D0 800B3AD0 86A20000 */  lh         $v0, 0x0($s5)
/* 1E6D4 800B3AD4 AFA00014 */  sw         $zero, 0x14($sp)
/* 1E6D8 800B3AD8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1E6DC 800B3ADC 8E020038 */  lw         $v0, 0x38($s0)
/* 1E6E0 800B3AE0 01002021 */  addu       $a0, $t0, $zero
/* 1E6E4 800B3AE4 02002821 */  addu       $a1, $s0, $zero
/* 1E6E8 800B3AE8 0C02CFED */  jal        func_800B3FB4
/* 1E6EC 800B3AEC AFA20018 */   sw        $v0, 0x18($sp)
/* 1E6F0 800B3AF0 8E030034 */  lw         $v1, 0x34($s0)
/* 1E6F4 800B3AF4 10600005 */  beqz       $v1, .L800B3B0C
/* 1E6F8 800B3AF8 00404021 */   addu      $t0, $v0, $zero
/* 1E6FC 800B3AFC 96A20000 */  lhu        $v0, 0x0($s5)
/* 1E700 800B3B00 00031840 */  sll        $v1, $v1, 1
/* 1E704 800B3B04 0802CEC5 */  j          .L800B3B14
/* 1E708 800B3B08 00431021 */   addu      $v0, $v0, $v1
.L800B3B0C:
/* 1E70C 800B3B0C 96A20000 */  lhu        $v0, 0x0($s5)
/* 1E710 800B3B10 24420020 */  addiu      $v0, $v0, 0x20
.L800B3B14:
/* 1E714 800B3B14 A6A20000 */  sh         $v0, 0x0($s5)
/* 1E718 800B3B18 8E020014 */  lw         $v0, 0x14($s0)
/* 1E71C 800B3B1C 8E050014 */  lw         $a1, 0x14($s0)
/* 1E720 800B3B20 8E030014 */  lw         $v1, 0x14($s0)
/* 1E724 800B3B24 3042000F */  andi       $v0, $v0, 0xF
/* 1E728 800B3B28 AE020034 */  sw         $v0, 0x34($s0)
/* 1E72C 800B3B2C 8E020020 */  lw         $v0, 0x20($s0)
/* 1E730 800B3B30 00031902 */  srl        $v1, $v1, 4
/* 1E734 800B3B34 24630001 */  addiu      $v1, $v1, 0x1
/* 1E738 800B3B38 8C440000 */  lw         $a0, 0x0($v0)
/* 1E73C 800B3B3C 000310C0 */  sll        $v0, $v1, 3
/* 1E740 800B3B40 00431021 */  addu       $v0, $v0, $v1
/* 1E744 800B3B44 AE050030 */  sw         $a1, 0x30($s0)
/* 1E748 800B3B48 00822021 */  addu       $a0, $a0, $v0
/* 1E74C 800B3B4C AE04003C */  sw         $a0, 0x3C($s0)
/* 1E750 800B3B50 86B30000 */  lh         $s3, 0x0($s5)
/* 1E754 800B3B54 0234102A */  slt        $v0, $s1, $s4
/* 1E758 800B3B58 10400041 */  beqz       $v0, .L800B3C60
/* 1E75C 800B3B5C 00171400 */   sll       $v0, $s7, 16
/* 1E760 800B3B60 0002B403 */  sra        $s6, $v0, 16
.L800B3B64:
/* 1E764 800B3B64 26420001 */  addiu      $v0, $s2, 0x1
/* 1E768 800B3B68 00021140 */  sll        $v0, $v0, 5
/* 1E76C 800B3B6C 02621021 */  addu       $v0, $s3, $v0
/* 1E770 800B3B70 00111840 */  sll        $v1, $s1, 1
/* 1E774 800B3B74 02639821 */  addu       $s3, $s3, $v1
/* 1E778 800B3B78 24420010 */  addiu      $v0, $v0, 0x10
/* 1E77C 800B3B7C 8E04001C */  lw         $a0, 0x1C($s0)
/* 1E780 800B3B80 2403FFE0 */  addiu      $v1, $zero, -0x20
/* 1E784 800B3B84 0043A824 */  and        $s5, $v0, $v1
/* 1E788 800B3B88 00041027 */  nor        $v0, $zero, $a0
/* 1E78C 800B3B8C 0002102B */  sltu       $v0, $zero, $v0
/* 1E790 800B3B90 0004182B */  sltu       $v1, $zero, $a0
/* 1E794 800B3B94 00431024 */  and        $v0, $v0, $v1
/* 1E798 800B3B98 10400003 */  beqz       $v0, .L800B3BA8
/* 1E79C 800B3B9C 0291A023 */   subu      $s4, $s4, $s1
/* 1E7A0 800B3BA0 2482FFFF */  addiu      $v0, $a0, -0x1
/* 1E7A4 800B3BA4 AE02001C */  sw         $v0, 0x1C($s0)
.L800B3BA8:
/* 1E7A8 800B3BA8 8E030018 */  lw         $v1, 0x18($s0)
/* 1E7AC 800B3BAC 8E020014 */  lw         $v0, 0x14($s0)
/* 1E7B0 800B3BB0 00621823 */  subu       $v1, $v1, $v0
/* 1E7B4 800B3BB4 0283102B */  sltu       $v0, $s4, $v1
/* 1E7B8 800B3BB8 14400002 */  bnez       $v0, .L800B3BC4
/* 1E7BC 800B3BBC 02808821 */   addu      $s1, $s4, $zero
/* 1E7C0 800B3BC0 00608821 */  addu       $s1, $v1, $zero
.L800B3BC4:
/* 1E7C4 800B3BC4 01002021 */  addu       $a0, $t0, $zero
/* 1E7C8 800B3BC8 02002821 */  addu       $a1, $s0, $zero
/* 1E7CC 800B3BCC 8E030034 */  lw         $v1, 0x34($s0)
/* 1E7D0 800B3BD0 00151400 */  sll        $v0, $s5, 16
/* 1E7D4 800B3BD4 00021403 */  sra        $v0, $v0, 16
/* 1E7D8 800B3BD8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1E7DC 800B3BDC AFB60014 */  sw         $s6, 0x14($sp)
/* 1E7E0 800B3BE0 2463FFF0 */  addiu      $v1, $v1, -0x10
/* 1E7E4 800B3BE4 02233021 */  addu       $a2, $s1, $v1
/* 1E7E8 800B3BE8 00061027 */  nor        $v0, $zero, $a2
/* 1E7EC 800B3BEC 000217C3 */  sra        $v0, $v0, 31
/* 1E7F0 800B3BF0 00C23024 */  and        $a2, $a2, $v0
/* 1E7F4 800B3BF4 24C2000F */  addiu      $v0, $a2, 0xF
/* 1E7F8 800B3BF8 00029103 */  sra        $s2, $v0, 4
/* 1E7FC 800B3BFC 8E020038 */  lw         $v0, 0x38($s0)
/* 1E800 800B3C00 001238C0 */  sll        $a3, $s2, 3
/* 1E804 800B3C04 00F23821 */  addu       $a3, $a3, $s2
/* 1E808 800B3C08 34420002 */  ori        $v0, $v0, 0x2
/* 1E80C 800B3C0C 0C02CFED */  jal        func_800B3FB4
/* 1E810 800B3C10 AFA20018 */   sw        $v0, 0x18($sp)
/* 1E814 800B3C14 00404021 */  addu       $t0, $v0, $zero
/* 1E818 800B3C18 01002821 */  addu       $a1, $t0, $zero
/* 1E81C 800B3C1C 25080008 */  addiu      $t0, $t0, 0x8
/* 1E820 800B3C20 3C0600FF */  lui        $a2, (0xFFFFFF >> 16)
/* 1E824 800B3C24 34C6FFFF */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
/* 1E828 800B3C28 8E030034 */  lw         $v1, 0x34($s0)
/* 1E82C 800B3C2C 00132400 */  sll        $a0, $s3, 16
/* 1E830 800B3C30 00111040 */  sll        $v0, $s1, 1
/* 1E834 800B3C34 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1E838 800B3C38 00822025 */  or         $a0, $a0, $v0
/* 1E83C 800B3C3C 3C020A00 */  lui        $v0, (0xA000000 >> 16)
/* 1E840 800B3C40 ACA40004 */  sw         $a0, 0x4($a1)
/* 1E844 800B3C44 00031840 */  sll        $v1, $v1, 1
/* 1E848 800B3C48 02A31821 */  addu       $v1, $s5, $v1
/* 1E84C 800B3C4C 00661824 */  and        $v1, $v1, $a2
/* 1E850 800B3C50 00621825 */  or         $v1, $v1, $v0
/* 1E854 800B3C54 0234102A */  slt        $v0, $s1, $s4
/* 1E858 800B3C58 1440FFC2 */  bnez       $v0, .L800B3B64
/* 1E85C 800B3C5C ACA30000 */   sw        $v1, 0x0($a1)
.L800B3C60:
/* 1E860 800B3C60 8E040030 */  lw         $a0, 0x30($s0)
/* 1E864 800B3C64 8E030034 */  lw         $v1, 0x34($s0)
/* 1E868 800B3C68 01001021 */  addu       $v0, $t0, $zero
/* 1E86C 800B3C6C 00942021 */  addu       $a0, $a0, $s4
/* 1E870 800B3C70 AE040030 */  sw         $a0, 0x30($s0)
/* 1E874 800B3C74 8E04003C */  lw         $a0, 0x3C($s0)
/* 1E878 800B3C78 02831821 */  addu       $v1, $s4, $v1
/* 1E87C 800B3C7C 3063000F */  andi       $v1, $v1, 0xF
/* 1E880 800B3C80 AE030034 */  sw         $v1, 0x34($s0)
/* 1E884 800B3C84 001218C0 */  sll        $v1, $s2, 3
/* 1E888 800B3C88 00721821 */  addu       $v1, $v1, $s2
/* 1E88C 800B3C8C 00832021 */  addu       $a0, $a0, $v1
/* 1E890 800B3C90 0802CF7E */  j          .L800B3DF8
/* 1E894 800B3C94 AE04003C */   sw        $a0, 0x3C($s0)
.L800B3C98:
/* 1E898 800B3C98 8E040020 */  lw         $a0, 0x20($s0)
/* 1E89C 800B3C9C 3C0538E3 */  lui        $a1, (0x38E38E39 >> 16)
/* 1E8A0 800B3CA0 8E03003C */  lw         $v1, 0x3C($s0)
/* 1E8A4 800B3CA4 8C820000 */  lw         $v0, 0x0($a0)
/* 1E8A8 800B3CA8 8C840004 */  lw         $a0, 0x4($a0)
/* 1E8AC 800B3CAC 34A58E39 */  ori        $a1, $a1, (0x38E38E39 & 0xFFFF)
/* 1E8B0 800B3CB0 00671821 */  addu       $v1, $v1, $a3
/* 1E8B4 800B3CB4 00441021 */  addu       $v0, $v0, $a0
/* 1E8B8 800B3CB8 00622023 */  subu       $a0, $v1, $v0
/* 1E8BC 800B3CBC 00041027 */  nor        $v0, $zero, $a0
/* 1E8C0 800B3CC0 000217C3 */  sra        $v0, $v0, 31
/* 1E8C4 800B3CC4 00822024 */  and        $a0, $a0, $v0
/* 1E8C8 800B3CC8 00850018 */  mult       $a0, $a1
/* 1E8CC 800B3CCC 00128900 */  sll        $s1, $s2, 4
/* 1E8D0 800B3CD0 00041FC3 */  sra        $v1, $a0, 31
/* 1E8D4 800B3CD4 00005010 */  mfhi       $t2
/* 1E8D8 800B3CD8 000A1043 */  sra        $v0, $t2, 1
/* 1E8DC 800B3CDC 00431023 */  subu       $v0, $v0, $v1
/* 1E8E0 800B3CE0 00029900 */  sll        $s3, $v0, 4
/* 1E8E4 800B3CE4 02361821 */  addu       $v1, $s1, $s6
/* 1E8E8 800B3CE8 0073102A */  slt        $v0, $v1, $s3
/* 1E8EC 800B3CEC 54400001 */  bnel       $v0, $zero, .L800B3CF4
/* 1E8F0 800B3CF0 00609821 */   addu      $s3, $v1, $zero
.L800B3CF4:
/* 1E8F4 800B3CF4 3262000F */  andi       $v0, $s3, 0xF
/* 1E8F8 800B3CF8 02621023 */  subu       $v0, $s3, $v0
/* 1E8FC 800B3CFC 0054102A */  slt        $v0, $v0, $s4
/* 1E900 800B3D00 10400022 */  beqz       $v0, .L800B3D8C
/* 1E904 800B3D04 00E43823 */   subu      $a3, $a3, $a0
/* 1E908 800B3D08 86A20000 */  lh         $v0, 0x0($s5)
/* 1E90C 800B3D0C 01002021 */  addu       $a0, $t0, $zero
/* 1E910 800B3D10 AFA00014 */  sw         $zero, 0x14($sp)
/* 1E914 800B3D14 AFA20010 */  sw         $v0, 0x10($sp)
/* 1E918 800B3D18 8E020038 */  lw         $v0, 0x38($s0)
/* 1E91C 800B3D1C 02002821 */  addu       $a1, $s0, $zero
/* 1E920 800B3D20 02333023 */  subu       $a2, $s1, $s3
/* 1E924 800B3D24 0C02CFED */  jal        func_800B3FB4
/* 1E928 800B3D28 AFA20018 */   sw        $v0, 0x18($sp)
/* 1E92C 800B3D2C 8E030034 */  lw         $v1, 0x34($s0)
/* 1E930 800B3D30 241E0001 */  addiu      $fp, $zero, 0x1
/* 1E934 800B3D34 10600005 */  beqz       $v1, .L800B3D4C
/* 1E938 800B3D38 00404021 */   addu      $t0, $v0, $zero
/* 1E93C 800B3D3C 96A20000 */  lhu        $v0, 0x0($s5)
/* 1E940 800B3D40 00031840 */  sll        $v1, $v1, 1
/* 1E944 800B3D44 0802CF55 */  j          .L800B3D54
/* 1E948 800B3D48 00431021 */   addu      $v0, $v0, $v1
.L800B3D4C:
/* 1E94C 800B3D4C 96A20000 */  lhu        $v0, 0x0($s5)
/* 1E950 800B3D50 24420020 */  addiu      $v0, $v0, 0x20
.L800B3D54:
/* 1E954 800B3D54 A6A20000 */  sh         $v0, 0x0($s5)
/* 1E958 800B3D58 8E030030 */  lw         $v1, 0x30($s0)
/* 1E95C 800B3D5C 8E020034 */  lw         $v0, 0x34($s0)
/* 1E960 800B3D60 00741821 */  addu       $v1, $v1, $s4
/* 1E964 800B3D64 AE030030 */  sw         $v1, 0x30($s0)
/* 1E968 800B3D68 8E03003C */  lw         $v1, 0x3C($s0)
/* 1E96C 800B3D6C 02821021 */  addu       $v0, $s4, $v0
/* 1E970 800B3D70 3042000F */  andi       $v0, $v0, 0xF
/* 1E974 800B3D74 AE020034 */  sw         $v0, 0x34($s0)
/* 1E978 800B3D78 001210C0 */  sll        $v0, $s2, 3
/* 1E97C 800B3D7C 00521021 */  addu       $v0, $v0, $s2
/* 1E980 800B3D80 00621821 */  addu       $v1, $v1, $v0
/* 1E984 800B3D84 0802CF68 */  j          .L800B3DA0
/* 1E988 800B3D88 AE03003C */   sw        $v1, 0x3C($s0)
.L800B3D8C:
/* 1E98C 800B3D8C 8E02003C */  lw         $v0, 0x3C($s0)
/* 1E990 800B3D90 01321821 */  addu       $v1, $t1, $s2
/* 1E994 800B3D94 AE000034 */  sw         $zero, 0x34($s0)
/* 1E998 800B3D98 00431021 */  addu       $v0, $v0, $v1
/* 1E99C 800B3D9C AE02003C */  sw         $v0, 0x3C($s0)
.L800B3DA0:
/* 1E9A0 800B3DA0 12600015 */  beqz       $s3, .L800B3DF8
/* 1E9A4 800B3DA4 01001021 */   addu      $v0, $t0, $zero
/* 1E9A8 800B3DA8 13C00005 */  beqz       $fp, .L800B3DC0
/* 1E9AC 800B3DAC AE000034 */   sw        $zero, 0x34($s0)
/* 1E9B0 800B3DB0 02D11021 */  addu       $v0, $s6, $s1
/* 1E9B4 800B3DB4 00531023 */  subu       $v0, $v0, $s3
/* 1E9B8 800B3DB8 0802CF71 */  j          .L800B3DC4
/* 1E9BC 800B3DBC 00023040 */   sll       $a2, $v0, 1
.L800B3DC0:
/* 1E9C0 800B3DC0 00003021 */  addu       $a2, $zero, $zero
.L800B3DC4:
/* 1E9C4 800B3DC4 01002821 */  addu       $a1, $t0, $zero
/* 1E9C8 800B3DC8 25080008 */  addiu      $t0, $t0, 0x8
/* 1E9CC 800B3DCC 3C0400FF */  lui        $a0, (0xFFFFFF >> 16)
/* 1E9D0 800B3DD0 86A20000 */  lh         $v0, 0x0($s5)
/* 1E9D4 800B3DD4 3484FFFF */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
/* 1E9D8 800B3DD8 00131840 */  sll        $v1, $s3, 1
/* 1E9DC 800B3DDC ACA30004 */  sw         $v1, 0x4($a1)
/* 1E9E0 800B3DE0 3C030200 */  lui        $v1, (0x2000000 >> 16)
/* 1E9E4 800B3DE4 00C21021 */  addu       $v0, $a2, $v0
/* 1E9E8 800B3DE8 00441024 */  and        $v0, $v0, $a0
/* 1E9EC 800B3DEC 00431025 */  or         $v0, $v0, $v1
/* 1E9F0 800B3DF0 ACA20000 */  sw         $v0, 0x0($a1)
.L800B3DF4:
/* 1E9F4 800B3DF4 01001021 */  addu       $v0, $t0, $zero
.L800B3DF8:
/* 1E9F8 800B3DF8 8FBF0054 */  lw         $ra, 0x54($sp)
/* 1E9FC 800B3DFC 8FBE0050 */  lw         $fp, 0x50($sp)
/* 1EA00 800B3E00 8FB7004C */  lw         $s7, 0x4C($sp)
/* 1EA04 800B3E04 8FB60048 */  lw         $s6, 0x48($sp)
/* 1EA08 800B3E08 8FB50044 */  lw         $s5, 0x44($sp)
/* 1EA0C 800B3E0C 8FB40040 */  lw         $s4, 0x40($sp)
/* 1EA10 800B3E10 8FB3003C */  lw         $s3, 0x3C($sp)
/* 1EA14 800B3E14 8FB20038 */  lw         $s2, 0x38($sp)
/* 1EA18 800B3E18 8FB10034 */  lw         $s1, 0x34($sp)
/* 1EA1C 800B3E1C 8FB00030 */  lw         $s0, 0x30($sp)
/* 1EA20 800B3E20 03E00008 */  jr         $ra
/* 1EA24 800B3E24 27BD0058 */   addiu     $sp, $sp, 0x58
.size func_800B39E0, . - func_800B39E0
