glabel func_800BCC20
/* 27820 800BCC20 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 27824 800BCC24 AFB5003C */  sw         $s5, 0x3C($sp)
/* 27828 800BCC28 00A0A821 */  addu       $s5, $a1, $zero
/* 2782C 800BCC2C AFBF0048 */  sw         $ra, 0x48($sp)
/* 27830 800BCC30 AFB70044 */  sw         $s7, 0x44($sp)
/* 27834 800BCC34 AFB60040 */  sw         $s6, 0x40($sp)
/* 27838 800BCC38 AFB40038 */  sw         $s4, 0x38($sp)
/* 2783C 800BCC3C AFB30034 */  sw         $s3, 0x34($sp)
/* 27840 800BCC40 AFB20030 */  sw         $s2, 0x30($sp)
/* 27844 800BCC44 AFB1002C */  sw         $s1, 0x2C($sp)
/* 27848 800BCC48 AFB00028 */  sw         $s0, 0x28($sp)
/* 2784C 800BCC4C 8EB60014 */  lw         $s6, 0x14($s5)
/* 27850 800BCC50 0080A021 */  addu       $s4, $a0, $zero
/* 27854 800BCC54 AE800000 */  sw         $zero, 0x0($s4)
/* 27858 800BCC58 8EA20004 */  lw         $v0, 0x4($s5)
/* 2785C 800BCC5C 00002021 */  addu       $a0, $zero, $zero
/* 27860 800BCC60 AE800020 */  sw         $zero, 0x20($s4)
/* 27864 800BCC64 AE80001C */  sw         $zero, 0x1C($s4)
/* 27868 800BCC68 AE82003C */  sw         $v0, 0x3C($s4)
/* 2786C 800BCC6C 8EA30018 */  lw         $v1, 0x18($s5)
/* 27870 800BCC70 00002821 */  addu       $a1, $zero, $zero
/* 27874 800BCC74 240200A0 */  addiu      $v0, $zero, 0xA0
/* 27878 800BCC78 AE820048 */  sw         $v0, 0x48($s4)
/* 2787C 800BCC7C AE830044 */  sw         $v1, 0x44($s4)
/* 27880 800BCC80 8EA20010 */  lw         $v0, 0x10($s5)
/* 27884 800BCC84 24070001 */  addiu      $a3, $zero, 0x1
/* 27888 800BCC88 02C03021 */  addu       $a2, $s6, $zero
/* 2788C 800BCC8C AE820024 */  sw         $v0, 0x24($s4)
/* 27890 800BCC90 2402001C */  addiu      $v0, $zero, 0x1C
/* 27894 800BCC94 0C02F2E4 */  jal        func_800BCB90
/* 27898 800BCC98 AFA20010 */   sw        $v0, 0x10($sp)
/* 2789C 800BCC9C 0040B821 */  addu       $s7, $v0, $zero
/* 278A0 800BCCA0 0C02E836 */  jal        func_800BA0D8
/* 278A4 800BCCA4 02E02021 */   addu      $a0, $s7, $zero
/* 278A8 800BCCA8 00002021 */  addu       $a0, $zero, $zero
/* 278AC 800BCCAC 00002821 */  addu       $a1, $zero, $zero
/* 278B0 800BCCB0 02C03021 */  addu       $a2, $s6, $zero
/* 278B4 800BCCB4 24070001 */  addiu      $a3, $zero, 0x1
/* 278B8 800BCCB8 2402004C */  addiu      $v0, $zero, 0x4C
/* 278BC 800BCCBC AE970038 */  sw         $s7, 0x38($s4)
/* 278C0 800BCCC0 0C02F2E4 */  jal        func_800BCB90
/* 278C4 800BCCC4 AFA20010 */   sw        $v0, 0x10($sp)
/* 278C8 800BCCC8 00002021 */  addu       $a0, $zero, $zero
/* 278CC 800BCCCC AE820034 */  sw         $v0, 0x34($s4)
/* 278D0 800BCCD0 24020001 */  addiu      $v0, $zero, 0x1
/* 278D4 800BCCD4 24100004 */  addiu      $s0, $zero, 0x4
/* 278D8 800BCCD8 AE820040 */  sw         $v0, 0x40($s4)
/* 278DC 800BCCDC AFB00010 */  sw         $s0, 0x10($sp)
/* 278E0 800BCCE0 8EA70004 */  lw         $a3, 0x4($s5)
/* 278E4 800BCCE4 00002821 */  addu       $a1, $zero, $zero
/* 278E8 800BCCE8 0C02F2E4 */  jal        func_800BCB90
/* 278EC 800BCCEC 02C03021 */   addu      $a2, $s6, $zero
/* 278F0 800BCCF0 8E840034 */  lw         $a0, 0x34($s4)
/* 278F4 800BCCF4 8EA60004 */  lw         $a2, 0x4($s5)
/* 278F8 800BCCF8 0C02E808 */  jal        func_800BA020
/* 278FC 800BCCFC 00402821 */   addu      $a1, $v0, $zero
/* 27900 800BCD00 00002021 */  addu       $a0, $zero, $zero
/* 27904 800BCD04 00002821 */  addu       $a1, $zero, $zero
/* 27908 800BCD08 02C03021 */  addu       $a2, $s6, $zero
/* 2790C 800BCD0C 24070001 */  addiu      $a3, $zero, 0x1
/* 27910 800BCD10 24020020 */  addiu      $v0, $zero, 0x20
/* 27914 800BCD14 0C02F2E4 */  jal        func_800BCB90
/* 27918 800BCD18 AFA20010 */   sw        $v0, 0x10($sp)
/* 2791C 800BCD1C 00002021 */  addu       $a0, $zero, $zero
/* 27920 800BCD20 AE820030 */  sw         $v0, 0x30($s4)
/* 27924 800BCD24 AFB00010 */  sw         $s0, 0x10($sp)
/* 27928 800BCD28 8EA70004 */  lw         $a3, 0x4($s5)
/* 2792C 800BCD2C 00002821 */  addu       $a1, $zero, $zero
/* 27930 800BCD30 0C02F2E4 */  jal        func_800BCB90
/* 27934 800BCD34 02C03021 */   addu      $a2, $s6, $zero
/* 27938 800BCD38 8E840030 */  lw         $a0, 0x30($s4)
/* 2793C 800BCD3C 8EA60004 */  lw         $a2, 0x4($s5)
/* 27940 800BCD40 0C02E81F */  jal        func_800BA07C
/* 27944 800BCD44 00402821 */   addu      $a1, $v0, $zero
/* 27948 800BCD48 92A2001C */  lbu        $v0, 0x1C($s5)
/* 2794C 800BCD4C 10400007 */  beqz       $v0, .L800BCD6C
/* 27950 800BCD50 02802021 */   addu      $a0, $s4, $zero
/* 27954 800BCD54 00002821 */  addu       $a1, $zero, $zero
/* 27958 800BCD58 02A03021 */  addu       $a2, $s5, $zero
/* 2795C 800BCD5C 0C02F49C */  jal        func_800BD270
/* 27960 800BCD60 02C03821 */   addu      $a3, $s6, $zero
/* 27964 800BCD64 0802F360 */  j          .L800BCD80
/* 27968 800BCD68 00002021 */   addu      $a0, $zero, $zero
.L800BCD6C:
/* 2796C 800BCD6C 8E840030 */  lw         $a0, 0x30($s4)
/* 27970 800BCD70 8E860034 */  lw         $a2, 0x34($s4)
/* 27974 800BCD74 0C02EED4 */  jal        func_800BBB50
/* 27978 800BCD78 24050002 */   addiu     $a1, $zero, 0x2
/* 2797C 800BCD7C 00002021 */  addu       $a0, $zero, $zero
.L800BCD80:
/* 27980 800BCD80 240200DC */  addiu      $v0, $zero, 0xDC
/* 27984 800BCD84 AE800004 */  sw         $zero, 0x4($s4)
/* 27988 800BCD88 AE800008 */  sw         $zero, 0x8($s4)
/* 2798C 800BCD8C AE800014 */  sw         $zero, 0x14($s4)
/* 27990 800BCD90 AE800018 */  sw         $zero, 0x18($s4)
/* 27994 800BCD94 AE80000C */  sw         $zero, 0xC($s4)
/* 27998 800BCD98 AE800010 */  sw         $zero, 0x10($s4)
/* 2799C 800BCD9C AFA20010 */  sw         $v0, 0x10($sp)
/* 279A0 800BCDA0 8EA70004 */  lw         $a3, 0x4($s5)
/* 279A4 800BCDA4 00002821 */  addu       $a1, $zero, $zero
/* 279A8 800BCDA8 0C02F2E4 */  jal        func_800BCB90
/* 279AC 800BCDAC 02C03021 */   addu      $a2, $s6, $zero
/* 279B0 800BCDB0 8EA30004 */  lw         $v1, 0x4($s5)
/* 279B4 800BCDB4 18600029 */  blez       $v1, .L800BCE5C
/* 279B8 800BCDB8 00009821 */   addu      $s3, $zero, $zero
/* 279BC 800BCDBC 00409021 */  addu       $s2, $v0, $zero
.L800BCDC0:
/* 279C0 800BCDC0 02402021 */  addu       $a0, $s2, $zero
/* 279C4 800BCDC4 0C02F2BF */  jal        func_800BCAFC
/* 279C8 800BCDC8 26850004 */   addiu     $a1, $s4, 0x4
/* 279CC 800BCDCC AE400008 */  sw         $zero, 0x8($s2)
/* 279D0 800BCDD0 8E850024 */  lw         $a1, 0x24($s4)
/* 279D4 800BCDD4 26500010 */  addiu      $s0, $s2, 0x10
/* 279D8 800BCDD8 02002021 */  addu       $a0, $s0, $zero
/* 279DC 800BCDDC 0C02E7B9 */  jal        func_800B9EE4
/* 279E0 800BCDE0 02C03021 */   addu      $a2, $s6, $zero
/* 279E4 800BCDE4 02002021 */  addu       $a0, $s0, $zero
/* 279E8 800BCDE8 24050001 */  addiu      $a1, $zero, 0x1
/* 279EC 800BCDEC 0C02EA40 */  jal        func_800BA900
/* 279F0 800BCDF0 00003021 */   addu      $a2, $zero, $zero
/* 279F4 800BCDF4 26510058 */  addiu      $s1, $s2, 0x58
/* 279F8 800BCDF8 02202021 */  addu       $a0, $s1, $zero
/* 279FC 800BCDFC 0C02E7E5 */  jal        func_800B9F94
/* 27A00 800BCE00 02C02821 */   addu      $a1, $s6, $zero
/* 27A04 800BCE04 02202021 */  addu       $a0, $s1, $zero
/* 27A08 800BCE08 24050001 */  addiu      $a1, $zero, 0x1
/* 27A0C 800BCE0C 0C02EF5B */  jal        func_800BBD6C
/* 27A10 800BCE10 02003021 */   addu      $a2, $s0, $zero
/* 27A14 800BCE14 2650008C */  addiu      $s0, $s2, 0x8C
/* 27A18 800BCE18 02002021 */  addu       $a0, $s0, $zero
/* 27A1C 800BCE1C 0C02E78B */  jal        func_800B9E2C
/* 27A20 800BCE20 02C02821 */   addu      $a1, $s6, $zero
/* 27A24 800BCE24 02002021 */  addu       $a0, $s0, $zero
/* 27A28 800BCE28 24050001 */  addiu      $a1, $zero, 0x1
/* 27A2C 800BCE2C 0C02EC90 */  jal        func_800BB240
/* 27A30 800BCE30 02203021 */   addu      $a2, $s1, $zero
/* 27A34 800BCE34 8E840034 */  lw         $a0, 0x34($s4)
/* 27A38 800BCE38 24050002 */  addiu      $a1, $zero, 0x2
/* 27A3C 800BCE3C 0C02EB43 */  jal        func_800BAD0C
/* 27A40 800BCE40 02003021 */   addu      $a2, $s0, $zero
/* 27A44 800BCE44 AE50000C */  sw         $s0, 0xC($s2)
/* 27A48 800BCE48 8EA20004 */  lw         $v0, 0x4($s5)
/* 27A4C 800BCE4C 26730001 */  addiu      $s3, $s3, 0x1
/* 27A50 800BCE50 0262102A */  slt        $v0, $s3, $v0
/* 27A54 800BCE54 1440FFDA */  bnez       $v0, .L800BCDC0
/* 27A58 800BCE58 265200DC */   addiu     $s2, $s2, 0xDC
.L800BCE5C:
/* 27A5C 800BCE5C 8E860030 */  lw         $a2, 0x30($s4)
/* 27A60 800BCE60 02E02021 */  addu       $a0, $s7, $zero
/* 27A64 800BCE64 0C02F29E */  jal        func_800BCA78
/* 27A68 800BCE68 24050001 */   addiu     $a1, $zero, 0x1
/* 27A6C 800BCE6C 00002021 */  addu       $a0, $zero, $zero
/* 27A70 800BCE70 2402001C */  addiu      $v0, $zero, 0x1C
/* 27A74 800BCE74 AFA20010 */  sw         $v0, 0x10($sp)
/* 27A78 800BCE78 8EA70008 */  lw         $a3, 0x8($s5)
/* 27A7C 800BCE7C 00002821 */  addu       $a1, $zero, $zero
/* 27A80 800BCE80 0C02F2E4 */  jal        func_800BCB90
/* 27A84 800BCE84 02C03021 */   addu      $a2, $s6, $zero
/* 27A88 800BCE88 AE80002C */  sw         $zero, 0x2C($s4)
/* 27A8C 800BCE8C 8EA30008 */  lw         $v1, 0x8($s5)
/* 27A90 800BCE90 1860000A */  blez       $v1, .L800BCEBC
/* 27A94 800BCE94 00009821 */   addu      $s3, $zero, $zero
/* 27A98 800BCE98 00401821 */  addu       $v1, $v0, $zero
.L800BCE9C:
/* 27A9C 800BCE9C 8E82002C */  lw         $v0, 0x2C($s4)
/* 27AA0 800BCEA0 AC620000 */  sw         $v0, 0x0($v1)
/* 27AA4 800BCEA4 AE83002C */  sw         $v1, 0x2C($s4)
/* 27AA8 800BCEA8 8EA20008 */  lw         $v0, 0x8($s5)
/* 27AAC 800BCEAC 26730001 */  addiu      $s3, $s3, 0x1
/* 27AB0 800BCEB0 0262102A */  slt        $v0, $s3, $v0
/* 27AB4 800BCEB4 1440FFF9 */  bnez       $v0, .L800BCE9C
/* 27AB8 800BCEB8 2463001C */   addiu     $v1, $v1, 0x1C
.L800BCEBC:
/* 27ABC 800BCEBC AE960028 */  sw         $s6, 0x28($s4)
/* 27AC0 800BCEC0 8FBF0048 */  lw         $ra, 0x48($sp)
/* 27AC4 800BCEC4 8FB70044 */  lw         $s7, 0x44($sp)
/* 27AC8 800BCEC8 8FB60040 */  lw         $s6, 0x40($sp)
/* 27ACC 800BCECC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 27AD0 800BCED0 8FB40038 */  lw         $s4, 0x38($sp)
/* 27AD4 800BCED4 8FB30034 */  lw         $s3, 0x34($sp)
/* 27AD8 800BCED8 8FB20030 */  lw         $s2, 0x30($sp)
/* 27ADC 800BCEDC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 27AE0 800BCEE0 8FB00028 */  lw         $s0, 0x28($sp)
/* 27AE4 800BCEE4 03E00008 */  jr         $ra
/* 27AE8 800BCEE8 27BD0050 */   addiu     $sp, $sp, 0x50
.size func_800BCC20, . - func_800BCC20
