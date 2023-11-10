glabel func_800B1B30
/* 1C730 800B1B30 3C028017 */  lui        $v0, %hi(D_8016D7F8)
/* 1C734 800B1B34 8C42D7F8 */  lw         $v0, %lo(D_8016D7F8)($v0)
/* 1C738 800B1B38 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1C73C 800B1B3C AFBF0028 */  sw         $ra, 0x28($sp)
/* 1C740 800B1B40 AFB50024 */  sw         $s5, 0x24($sp)
/* 1C744 800B1B44 AFB40020 */  sw         $s4, 0x20($sp)
/* 1C748 800B1B48 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1C74C 800B1B4C AFB20018 */  sw         $s2, 0x18($sp)
/* 1C750 800B1B50 AFB10014 */  sw         $s1, 0x14($sp)
/* 1C754 800B1B54 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C758 800B1B58 8C420034 */  lw         $v0, 0x34($v0)
/* 1C75C 800B1B5C 00808821 */  addu       $s1, $a0, $zero
/* 1C760 800B1B60 8C530024 */  lw         $s3, 0x24($v0)
/* 1C764 800B1B64 8E220000 */  lw         $v0, 0x0($s1)
/* 1C768 800B1B68 A2620024 */  sb         $v0, 0x24($s3)
/* 1C76C 800B1B6C 8E220004 */  lw         $v0, 0x4($s1)
/* 1C770 800B1B70 AE62001C */  sw         $v0, 0x1C($s3)
/* 1C774 800B1B74 3C028017 */  lui        $v0, %hi(D_8016D808)
/* 1C778 800B1B78 8C42D808 */  lw         $v0, %lo(D_8016D808)($v0)
/* 1C77C 800B1B7C 8E63001C */  lw         $v1, 0x1C($s3)
/* 1C780 800B1B80 AE620020 */  sw         $v0, 0x20($s3)
/* 1C784 800B1B84 3C028017 */  lui        $v0, %hi(D_8016D80C)
/* 1C788 800B1B88 8C42D80C */  lw         $v0, %lo(D_8016D80C)($v0)
/* 1C78C 800B1B8C 24100002 */  addiu      $s0, $zero, 0x2
/* 1C790 800B1B90 00009021 */  addu       $s2, $zero, $zero
/* 1C794 800B1B94 AE620014 */  sw         $v0, 0x14($s3)
/* 1C798 800B1B98 1060000C */  beqz       $v1, .L800B1BCC
/* 1C79C 800B1B9C AE620018 */   sw        $v0, 0x18($s3)
.L800B1BA0:
/* 1C7A0 800B1BA0 8E630014 */  lw         $v1, 0x14($s3)
/* 1C7A4 800B1BA4 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* 1C7A8 800B1BA8 00021040 */  sll        $v0, $v0, 1
/* 1C7AC 800B1BAC 00431021 */  addu       $v0, $v0, $v1
/* 1C7B0 800B1BB0 A4400000 */  sh         $zero, 0x0($v0)
/* 1C7B4 800B1BB4 8E63001C */  lw         $v1, 0x1C($s3)
/* 1C7B8 800B1BB8 26520001 */  addiu      $s2, $s2, 0x1
/* 1C7BC 800B1BBC 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* 1C7C0 800B1BC0 0043102B */  sltu       $v0, $v0, $v1
/* 1C7C4 800B1BC4 1440FFF6 */  bnez       $v0, .L800B1BA0
/* 1C7C8 800B1BC8 00000000 */   nop
.L800B1BCC:
/* 1C7CC 800B1BCC 92620024 */  lbu        $v0, 0x24($s3)
/* 1C7D0 800B1BD0 10400086 */  beqz       $v0, .L800B1DEC
/* 1C7D4 800B1BD4 00009021 */   addu      $s2, $zero, $zero
/* 1C7D8 800B1BD8 3C148017 */  lui        $s4, %hi(D_8016D810)
/* 1C7DC 800B1BDC 2694D810 */  addiu      $s4, $s4, %lo(D_8016D810)
/* 1C7E0 800B1BE0 26950008 */  addiu      $s5, $s4, 0x8
/* 1C7E4 800B1BE4 3242FFFF */  andi       $v0, $s2, 0xFFFF
.L800B1BE8:
/* 1C7E8 800B1BE8 00021880 */  sll        $v1, $v0, 2
/* 1C7EC 800B1BEC 00621821 */  addu       $v1, $v1, $v0
/* 1C7F0 800B1BF0 8E650020 */  lw         $a1, 0x20($s3)
/* 1C7F4 800B1BF4 02002021 */  addu       $a0, $s0, $zero
/* 1C7F8 800B1BF8 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 1C7FC 800B1BFC 00021080 */  sll        $v0, $v0, 2
/* 1C800 800B1C00 00511021 */  addu       $v0, $v0, $s1
/* 1C804 800B1C04 8C420000 */  lw         $v0, 0x0($v0)
/* 1C808 800B1C08 000318C0 */  sll        $v1, $v1, 3
/* 1C80C 800B1C0C 24860001 */  addiu      $a2, $a0, 0x1
/* 1C810 800B1C10 00A32821 */  addu       $a1, $a1, $v1
/* 1C814 800B1C14 ACA20000 */  sw         $v0, 0x0($a1)
/* 1C818 800B1C18 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 1C81C 800B1C1C 00021080 */  sll        $v0, $v0, 2
/* 1C820 800B1C20 00511021 */  addu       $v0, $v0, $s1
/* 1C824 800B1C24 8C430000 */  lw         $v1, 0x0($v0)
/* 1C828 800B1C28 24C20001 */  addiu      $v0, $a2, 0x1
/* 1C82C 800B1C2C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1C830 800B1C30 00021080 */  sll        $v0, $v0, 2
/* 1C834 800B1C34 00511021 */  addu       $v0, $v0, $s1
/* 1C838 800B1C38 ACA30004 */  sw         $v1, 0x4($a1)
/* 1C83C 800B1C3C 8C430000 */  lw         $v1, 0x0($v0)
/* 1C840 800B1C40 24C20002 */  addiu      $v0, $a2, 0x2
/* 1C844 800B1C44 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1C848 800B1C48 00021080 */  sll        $v0, $v0, 2
/* 1C84C 800B1C4C 00511021 */  addu       $v0, $v0, $s1
/* 1C850 800B1C50 A4A3000A */  sh         $v1, 0xA($a1)
/* 1C854 800B1C54 8C430000 */  lw         $v1, 0x0($v0)
/* 1C858 800B1C58 24C20003 */  addiu      $v0, $a2, 0x3
/* 1C85C 800B1C5C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1C860 800B1C60 00021080 */  sll        $v0, $v0, 2
/* 1C864 800B1C64 00511021 */  addu       $v0, $v0, $s1
/* 1C868 800B1C68 A4A30008 */  sh         $v1, 0x8($a1)
/* 1C86C 800B1C6C 8C420000 */  lw         $v0, 0x0($v0)
/* 1C870 800B1C70 24D00004 */  addiu      $s0, $a2, 0x4
/* 1C874 800B1C74 A4A2000C */  sh         $v0, 0xC($a1)
/* 1C878 800B1C78 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 1C87C 800B1C7C 00021080 */  sll        $v0, $v0, 2
/* 1C880 800B1C80 00511021 */  addu       $v0, $v0, $s1
/* 1C884 800B1C84 8C420000 */  lw         $v0, 0x0($v0)
/* 1C888 800B1C88 10400039 */  beqz       $v0, .L800B1D70
/* 1C88C 800B1C8C 02001021 */   addu      $v0, $s0, $zero
/* 1C890 800B1C90 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1C894 800B1C94 00021080 */  sll        $v0, $v0, 2
/* 1C898 800B1C98 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 1C89C 800B1C9C 44810000 */  mtc1       $at, $f0
/* 1C8A0 800B1CA0 00511021 */  addu       $v0, $v0, $s1
/* 1C8A4 800B1CA4 C4420000 */  lwc1       $f2, 0x0($v0)
/* 1C8A8 800B1CA8 468010A0 */  cvt.s.w    $f2, $f2
/* 1C8AC 800B1CAC 46001083 */  div.s      $f2, $f2, $f0
/* 1C8B0 800B1CB0 3C028017 */  lui        $v0, %hi(D_8016D7F8)
/* 1C8B4 800B1CB4 8C42D7F8 */  lw         $v0, %lo(D_8016D7F8)($v0)
/* 1C8B8 800B1CB8 460010A1 */  cvt.d.s    $f2, $f2
/* 1C8BC 800B1CBC 46221080 */  add.d      $f2, $f2, $f2
/* 1C8C0 800B1CC0 C4400040 */  lwc1       $f0, 0x40($v0)
/* 1C8C4 800B1CC4 46800021 */  cvt.d.w    $f0, $f0
/* 1C8C8 800B1CC8 46201083 */  div.d      $f2, $f2, $f0
/* 1C8CC 800B1CCC 8CA40004 */  lw         $a0, 0x4($a1)
/* 1C8D0 800B1CD0 8CA30000 */  lw         $v1, 0x0($a1)
/* 1C8D4 800B1CD4 24D00006 */  addiu      $s0, $a2, 0x6
/* 1C8D8 800B1CD8 24C20005 */  addiu      $v0, $a2, 0x5
/* 1C8DC 800B1CDC 00832023 */  subu       $a0, $a0, $v1
/* 1C8E0 800B1CE0 44842000 */  mtc1       $a0, $f4
/* 1C8E4 800B1CE4 00000000 */  nop
/* 1C8E8 800B1CE8 46802121 */  cvt.d.w    $f4, $f4
/* 1C8EC 800B1CEC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1C8F0 800B1CF0 00021080 */  sll        $v0, $v0, 2
/* 1C8F4 800B1CF4 00511021 */  addu       $v0, $v0, $s1
/* 1C8F8 800B1CF8 462010A0 */  cvt.s.d    $f2, $f2
/* 1C8FC 800B1CFC E4A20010 */  swc1       $f2, 0x10($a1)
/* 1C900 800B1D00 3C018010 */  lui        $at, %hi(D_800FEB10)
/* 1C904 800B1D04 D422EB10 */  ldc1       $f2, %lo(D_800FEB10)($at)
/* 1C908 800B1D08 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1C90C 800B1D0C 46800020 */  cvt.s.w    $f0, $f0
/* 1C910 800B1D10 46000021 */  cvt.d.s    $f0, $f0
/* 1C914 800B1D14 04810004 */  bgez       $a0, .L800B1D28
/* 1C918 800B1D18 46220083 */   div.d     $f2, $f0, $f2
/* 1C91C 800B1D1C 3C018010 */  lui        $at, %hi(D_800FEB18)
/* 1C920 800B1D20 D420EB18 */  ldc1       $f0, %lo(D_800FEB18)($at)
/* 1C924 800B1D24 46202100 */  add.d      $f4, $f4, $f0
.L800B1D28:
/* 1C928 800B1D28 00000000 */  nop
/* 1C92C 800B1D2C 46241002 */  mul.d      $f0, $f2, $f4
/* 1C930 800B1D30 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C934 800B1D34 44811000 */  mtc1       $at, $f2
/* 1C938 800B1D38 ACA00018 */  sw         $zero, 0x18($a1)
/* 1C93C 800B1D3C E4A20014 */  swc1       $f2, 0x14($a1)
/* 1C940 800B1D40 46200020 */  cvt.s.d    $f0, $f0
/* 1C944 800B1D44 E4A0001C */  swc1       $f0, 0x1C($a1)
/* 1C948 800B1D48 8E830000 */  lw         $v1, 0x0($s4)
/* 1C94C 800B1D4C ACA30024 */  sw         $v1, 0x24($a1)
/* 1C950 800B1D50 8E820004 */  lw         $v0, 0x4($s4)
/* 1C954 800B1D54 AC620014 */  sw         $v0, 0x14($v1)
/* 1C958 800B1D58 8CA20024 */  lw         $v0, 0x24($a1)
/* 1C95C 800B1D5C AC400020 */  sw         $zero, 0x20($v0)
/* 1C960 800B1D60 8CA30024 */  lw         $v1, 0x24($a1)
/* 1C964 800B1D64 24020001 */  addiu      $v0, $zero, 0x1
/* 1C968 800B1D68 0802C75E */  j          .L800B1D78
/* 1C96C 800B1D6C AC620024 */   sw        $v0, 0x24($v1)
.L800B1D70:
/* 1C970 800B1D70 ACA00024 */  sw         $zero, 0x24($a1)
/* 1C974 800B1D74 24D00006 */  addiu      $s0, $a2, 0x6
.L800B1D78:
/* 1C978 800B1D78 3202FFFF */  andi       $v0, $s0, 0xFFFF
/* 1C97C 800B1D7C 00021080 */  sll        $v0, $v0, 2
/* 1C980 800B1D80 00511021 */  addu       $v0, $v0, $s1
/* 1C984 800B1D84 8C420000 */  lw         $v0, 0x0($v0)
/* 1C988 800B1D88 50400011 */  beql       $v0, $zero, .L800B1DD0
/* 1C98C 800B1D8C ACA00020 */   sw        $zero, 0x20($a1)
/* 1C990 800B1D90 8EA30000 */  lw         $v1, 0x0($s5)
/* 1C994 800B1D94 ACA30020 */  sw         $v1, 0x20($a1)
/* 1C998 800B1D98 8EA20004 */  lw         $v0, 0x4($s5)
/* 1C99C 800B1D9C AC620028 */  sw         $v0, 0x28($v1)
/* 1C9A0 800B1DA0 8CA30020 */  lw         $v1, 0x20($a1)
/* 1C9A4 800B1DA4 02001021 */  addu       $v0, $s0, $zero
/* 1C9A8 800B1DA8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1C9AC 800B1DAC 00021080 */  sll        $v0, $v0, 2
/* 1C9B0 800B1DB0 00511021 */  addu       $v0, $v0, $s1
/* 1C9B4 800B1DB4 8C420000 */  lw         $v0, 0x0($v0)
/* 1C9B8 800B1DB8 A4620000 */  sh         $v0, 0x0($v1)
/* 1C9BC 800B1DBC 8CA40020 */  lw         $a0, 0x20($a1)
/* 1C9C0 800B1DC0 0C02E63C */  jal        func_800B98F0
/* 1C9C4 800B1DC4 26100001 */   addiu     $s0, $s0, 0x1
/* 1C9C8 800B1DC8 0802C775 */  j          .L800B1DD4
/* 1C9CC 800B1DCC 00000000 */   nop
.L800B1DD0:
/* 1C9D0 800B1DD0 26100001 */  addiu      $s0, $s0, 0x1
.L800B1DD4:
/* 1C9D4 800B1DD4 92630024 */  lbu        $v1, 0x24($s3)
/* 1C9D8 800B1DD8 26520001 */  addiu      $s2, $s2, 0x1
/* 1C9DC 800B1DDC 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* 1C9E0 800B1DE0 0043102B */  sltu       $v0, $v0, $v1
/* 1C9E4 800B1DE4 1440FF80 */  bnez       $v0, .L800B1BE8
/* 1C9E8 800B1DE8 3242FFFF */   andi      $v0, $s2, 0xFFFF
.L800B1DEC:
/* 1C9EC 800B1DEC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1C9F0 800B1DF0 8FB50024 */  lw         $s5, 0x24($sp)
/* 1C9F4 800B1DF4 8FB40020 */  lw         $s4, 0x20($sp)
/* 1C9F8 800B1DF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1C9FC 800B1DFC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1CA00 800B1E00 8FB10014 */  lw         $s1, 0x14($sp)
/* 1CA04 800B1E04 8FB00010 */  lw         $s0, 0x10($sp)
/* 1CA08 800B1E08 03E00008 */  jr         $ra
/* 1CA0C 800B1E0C 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B1B30, . - func_800B1B30
