.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80042AB0_1348B0
/* 1348B0 80042AB0 3C028005 */  lui        $v0, %hi(D_80051FA0)
/* 1348B4 80042AB4 90421FA0 */  lbu        $v0, %lo(D_80051FA0)($v0)
/* 1348B8 80042AB8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1348BC 80042ABC AFB00020 */  sw         $s0, 0x20($sp)
/* 1348C0 80042AC0 00808021 */  addu       $s0, $a0, $zero
/* 1348C4 80042AC4 1040004A */  beqz       $v0, .L80042BF0
/* 1348C8 80042AC8 AFBF0024 */   sw        $ra, 0x24($sp)
/* 1348CC 80042ACC 0C02A5D2 */  jal        func_800A9748
/* 1348D0 80042AD0 24040001 */   addiu     $a0, $zero, 1
/* 1348D4 80042AD4 0C02725C */  jal        func_8009C970
/* 1348D8 80042AD8 00000000 */   nop
/* 1348DC 80042ADC 24040053 */  addiu      $a0, $zero, 0x53
/* 1348E0 80042AE0 24050048 */  addiu      $a1, $zero, 0x48
/* 1348E4 80042AE4 3C01423C */  lui        $at, 0x423c
/* 1348E8 80042AE8 44810000 */  mtc1       $at, $f0
/* 1348EC 80042AEC 3C01C2BC */  lui        $at, 0xc2bc
/* 1348F0 80042AF0 44811000 */  mtc1       $at, $f2
/* 1348F4 80042AF4 24060053 */  addiu      $a2, $zero, 0x53
/* 1348F8 80042AF8 240200E6 */  addiu      $v0, $zero, 0xe6
/* 1348FC 80042AFC AFA20010 */  sw         $v0, 0x10($sp)
/* 134900 80042B00 240200DC */  addiu      $v0, $zero, 0xdc
/* 134904 80042B04 3C018015 */  lui        $at, %hi(D_8014A064)
/* 134908 80042B08 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 13490C 80042B0C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 134910 80042B10 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 134914 80042B14 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 134918 80042B18 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 13491C 80042B1C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 134920 80042B20 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 134924 80042B24 3C018015 */  lui        $at, %hi(D_8014A084)
/* 134928 80042B28 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13492C 80042B2C AFA20014 */  sw         $v0, 0x14($sp)
/* 134930 80042B30 3C018015 */  lui        $at, %hi(D_8014A068)
/* 134934 80042B34 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 134938 80042B38 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13493C 80042B3C E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* 134940 80042B40 0C027101 */  jal        func_8009C404
/* 134944 80042B44 240700FF */   addiu     $a3, $zero, 0xff
/* 134948 80042B48 3C014000 */  lui        $at, 0x4000
/* 13494C 80042B4C 44810000 */  mtc1       $at, $f0
/* 134950 80042B50 3C013F80 */  lui        $at, 0x3f80
/* 134954 80042B54 44811000 */  mtc1       $at, $f2
/* 134958 80042B58 3C01C1C0 */  lui        $at, 0xc1c0
/* 13495C 80042B5C 44812000 */  mtc1       $at, $f4
/* 134960 80042B60 3C014130 */  lui        $at, 0x4130
/* 134964 80042B64 44813000 */  mtc1       $at, $f6
/* 134968 80042B68 3C014080 */  lui        $at, 0x4080
/* 13496C 80042B6C 44814000 */  mtc1       $at, $f8
/* 134970 80042B70 3C01C190 */  lui        $at, 0xc190
/* 134974 80042B74 44815000 */  mtc1       $at, $f10
/* 134978 80042B78 3C018017 */  lui        $at, %hi(D_8016E568)
/* 13497C 80042B7C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 134980 80042B80 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 134984 80042B84 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 134988 80042B88 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 13498C 80042B8C E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 134990 80042B90 3C018015 */  lui        $at, %hi(D_8014A054)
/* 134994 80042B94 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 134998 80042B98 3C018015 */  lui        $at, %hi(D_8014A050)
/* 13499C 80042B9C E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 1349A0 80042BA0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 1349A4 80042BA4 0C010B1F */  jal        func_80042C7C_134A7C
/* 1349A8 80042BA8 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 1349AC 80042BAC 00002021 */  addu       $a0, $zero, $zero
/* 1349B0 80042BB0 24050001 */  addiu      $a1, $zero, 1
/* 1349B4 80042BB4 00003021 */  addu       $a2, $zero, $zero
/* 1349B8 80042BB8 2407001A */  addiu      $a3, $zero, 0x1a
/* 1349BC 80042BBC 3C018006 */  lui        $at, %hi(D_8005DF20)
/* 1349C0 80042BC0 AC22DF20 */  sw         $v0, %lo(D_8005DF20)($at)
/* 1349C4 80042BC4 24020020 */  addiu      $v0, $zero, 0x20
/* 1349C8 80042BC8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1349CC 80042BCC AFA00014 */  sw         $zero, 0x14($sp)
/* 1349D0 80042BD0 0C0E5BE4 */  jal        func_80396F90
/* 1349D4 80042BD4 AFA00018 */   sw        $zero, 0x18($sp)
/* 1349D8 80042BD8 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1349DC 80042BDC 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 1349E0 80042BE0 0C00A157 */  jal        func_8002855C_11A35C
/* 1349E4 80042BE4 24050007 */   addiu     $a1, $zero, 7
/* 1349E8 80042BE8 3C018005 */  lui        $at, %hi(D_80051FA0)
/* 1349EC 80042BEC A0201FA0 */  sb         $zero, %lo(D_80051FA0)($at)
.L80042BF0:
/* 1349F0 80042BF0 16000003 */  bnez       $s0, .L80042C00
/* 1349F4 80042BF4 24020001 */   addiu     $v0, $zero, 1
/* 1349F8 80042BF8 3C018005 */  lui        $at, %hi(D_80051FA4)
/* 1349FC 80042BFC AC221FA4 */  sw         $v0, %lo(D_80051FA4)($at)
.L80042C00:
/* 134A00 80042C00 3C028005 */  lui        $v0, %hi(D_80051FA4)
/* 134A04 80042C04 8C421FA4 */  lw         $v0, %lo(D_80051FA4)($v0)
/* 134A08 80042C08 1440000C */  bnez       $v0, .L80042C3C
/* 134A0C 80042C0C 00000000 */   nop
/* 134A10 80042C10 3C048008 */  lui        $a0, %hi(D_80080750)
/* 134A14 80042C14 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 134A18 80042C18 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 134A1C 80042C1C 3C048006 */  lui        $a0, %hi(D_8005DF20)
/* 134A20 80042C20 0C010B85 */  jal        func_80042E14_134C14
/* 134A24 80042C24 8C84DF20 */   lw        $a0, %lo(D_8005DF20)($a0)
/* 134A28 80042C28 3C018005 */  lui        $at, %hi(D_80051FA4)
/* 134A2C 80042C2C 0C009767 */  jal        func_80025D9C_117B9C
/* 134A30 80042C30 AC221FA4 */   sw        $v0, %lo(D_80051FA4)($at)
/* 134A34 80042C34 08010B1B */  j          .L80042C6C
/* 134A38 80042C38 00001021 */   addu      $v0, $zero, $zero
.L80042C3C:
/* 134A3C 80042C3C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 134A40 80042C40 0C00A16B */  jal        func_800285AC_11A3AC
/* 134A44 80042C44 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 134A48 80042C48 3C048006 */  lui        $a0, %hi(D_8005DF20)
/* 134A4C 80042C4C 0C010BAA */  jal        func_80042EA8_134CA8
/* 134A50 80042C50 2484DF20 */   addiu     $a0, $a0, %lo(D_8005DF20)
/* 134A54 80042C54 24020001 */  addiu      $v0, $zero, 1
/* 134A58 80042C58 24030001 */  addiu      $v1, $zero, 1
/* 134A5C 80042C5C 3C018005 */  lui        $at, %hi(D_80051FA4)
/* 134A60 80042C60 AC201FA4 */  sw         $zero, %lo(D_80051FA4)($at)
/* 134A64 80042C64 3C018005 */  lui        $at, %hi(D_80051FA0)
/* 134A68 80042C68 A0231FA0 */  sb         $v1, %lo(D_80051FA0)($at)
.L80042C6C:
/* 134A6C 80042C6C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 134A70 80042C70 8FB00020 */  lw         $s0, 0x20($sp)
/* 134A74 80042C74 03E00008 */  jr         $ra
/* 134A78 80042C78 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80042C7C_134A7C
/* 134A7C 80042C7C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 134A80 80042C80 2404001C */  addiu      $a0, $zero, 0x1c
/* 134A84 80042C84 AFBF0020 */  sw         $ra, 0x20($sp)
/* 134A88 80042C88 AFB3001C */  sw         $s3, 0x1c($sp)
/* 134A8C 80042C8C AFB20018 */  sw         $s2, 0x18($sp)
/* 134A90 80042C90 AFB10014 */  sw         $s1, 0x14($sp)
/* 134A94 80042C94 0C032663 */  jal        func_800C998C
/* 134A98 80042C98 AFB00010 */   sw        $s0, 0x10($sp)
/* 134A9C 80042C9C 00408021 */  addu       $s0, $v0, $zero
/* 134AA0 80042CA0 02002021 */  addu       $a0, $s0, $zero
/* 134AA4 80042CA4 0C030134 */  jal        bzero
/* 134AA8 80042CA8 2405001C */   addiu     $a1, $zero, 0x1c
/* 134AAC 80042CAC 0C00AEC4 */  jal        func_8002BB10_11D910
/* 134AB0 80042CB0 24120007 */   addiu     $s2, $zero, 7
/* 134AB4 80042CB4 2403008D */  addiu      $v1, $zero, 0x8d
/* 134AB8 80042CB8 AE020000 */  sw         $v0, ($s0)
/* 134ABC 80042CBC AC430004 */  sw         $v1, 4($v0)
/* 134AC0 80042CC0 240300CF */  addiu      $v1, $zero, 0xcf
/* 134AC4 80042CC4 24130001 */  addiu      $s3, $zero, 1
/* 134AC8 80042CC8 AC52001C */  sw         $s2, 0x1c($v0)
/* 134ACC 80042CCC AC430008 */  sw         $v1, 8($v0)
/* 134AD0 80042CD0 AC400044 */  sw         $zero, 0x44($v0)
/* 134AD4 80042CD4 AC400054 */  sw         $zero, 0x54($v0)
/* 134AD8 80042CD8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 134ADC 80042CDC AC53000C */   sw        $s3, 0xc($v0)
/* 134AE0 80042CE0 24030058 */  addiu      $v1, $zero, 0x58
/* 134AE4 80042CE4 AE020004 */  sw         $v0, 4($s0)
/* 134AE8 80042CE8 AC52001C */  sw         $s2, 0x1c($v0)
/* 134AEC 80042CEC 0C00AEC4 */  jal        func_8002BB10_11D910
/* 134AF0 80042CF0 AC430004 */   sw        $v1, 4($v0)
/* 134AF4 80042CF4 2403005A */  addiu      $v1, $zero, 0x5a
/* 134AF8 80042CF8 AE020008 */  sw         $v0, 8($s0)
/* 134AFC 80042CFC AC52001C */  sw         $s2, 0x1c($v0)
/* 134B00 80042D00 AC430004 */  sw         $v1, 4($v0)
/* 134B04 80042D04 8E040000 */  lw         $a0, ($s0)
/* 134B08 80042D08 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134B0C 80042D0C 241100F1 */   addiu     $s1, $zero, 0xf1
/* 134B10 80042D10 8E040004 */  lw         $a0, 4($s0)
/* 134B14 80042D14 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134B18 80042D18 00000000 */   nop
/* 134B1C 80042D1C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134B20 80042D20 8E040008 */   lw        $a0, 8($s0)
/* 134B24 80042D24 8E020000 */  lw         $v0, ($s0)
/* 134B28 80042D28 8E030004 */  lw         $v1, 4($s0)
/* 134B2C 80042D2C 8C440034 */  lw         $a0, 0x34($v0)
/* 134B30 80042D30 8C660034 */  lw         $a2, 0x34($v1)
/* 134B34 80042D34 3C058006 */  lui        $a1, %hi(D_8005C5F0)
/* 134B38 80042D38 24A5C5F0 */  addiu      $a1, $a1, %lo(D_8005C5F0)
/* 134B3C 80042D3C 0C02864D */  jal        func_800A1934
/* 134B40 80042D40 00A03821 */   addu      $a3, $a1, $zero
/* 134B44 80042D44 8E020000 */  lw         $v0, ($s0)
/* 134B48 80042D48 8E030008 */  lw         $v1, 8($s0)
/* 134B4C 80042D4C 8C440034 */  lw         $a0, 0x34($v0)
/* 134B50 80042D50 8C660034 */  lw         $a2, 0x34($v1)
/* 134B54 80042D54 3C058006 */  lui        $a1, %hi(D_8005C5F8)
/* 134B58 80042D58 24A5C5F8 */  addiu      $a1, $a1, %lo(D_8005C5F8)
/* 134B5C 80042D5C 0C02864D */  jal        func_800A1934
/* 134B60 80042D60 00A03821 */   addu      $a3, $a1, $zero
/* 134B64 80042D64 0C00AEC4 */  jal        func_8002BB10_11D910
/* 134B68 80042D68 00000000 */   nop
/* 134B6C 80042D6C 3C013F00 */  lui        $at, 0x3f00
/* 134B70 80042D70 44810000 */  mtc1       $at, $f0
/* 134B74 80042D74 24030027 */  addiu      $v1, $zero, 0x27
/* 134B78 80042D78 AE02000C */  sw         $v0, 0xc($s0)
/* 134B7C 80042D7C AC43001C */  sw         $v1, 0x1c($v0)
/* 134B80 80042D80 240300EF */  addiu      $v1, $zero, 0xef
/* 134B84 80042D84 AC430004 */  sw         $v1, 4($v0)
/* 134B88 80042D88 2403000A */  addiu      $v1, $zero, 0xa
/* 134B8C 80042D8C AC400008 */  sw         $zero, 8($v0)
/* 134B90 80042D90 AC400044 */  sw         $zero, 0x44($v0)
/* 134B94 80042D94 AC400054 */  sw         $zero, 0x54($v0)
/* 134B98 80042D98 AC53000C */  sw         $s3, 0xc($v0)
/* 134B9C 80042D9C AC430018 */  sw         $v1, 0x18($v0)
/* 134BA0 80042DA0 0C00AEC4 */  jal        func_8002BB10_11D910
/* 134BA4 80042DA4 E44000EC */   swc1      $f0, 0xec($v0)
/* 134BA8 80042DA8 AE020010 */  sw         $v0, 0x10($s0)
/* 134BAC 80042DAC AC52001C */  sw         $s2, 0x1c($v0)
/* 134BB0 80042DB0 AC510004 */  sw         $s1, 4($v0)
/* 134BB4 80042DB4 AC400008 */  sw         $zero, 8($v0)
/* 134BB8 80042DB8 AC400044 */  sw         $zero, 0x44($v0)
/* 134BBC 80042DBC AC400054 */  sw         $zero, 0x54($v0)
/* 134BC0 80042DC0 0C00AEC4 */  jal        func_8002BB10_11D910
/* 134BC4 80042DC4 AC53000C */   sw        $s3, 0xc($v0)
/* 134BC8 80042DC8 3C014334 */  lui        $at, 0x4334
/* 134BCC 80042DCC 44810000 */  mtc1       $at, $f0
/* 134BD0 80042DD0 00401821 */  addu       $v1, $v0, $zero
/* 134BD4 80042DD4 02001021 */  addu       $v0, $s0, $zero
/* 134BD8 80042DD8 AC430014 */  sw         $v1, 0x14($v0)
/* 134BDC 80042DDC AC72001C */  sw         $s2, 0x1c($v1)
/* 134BE0 80042DE0 AC710004 */  sw         $s1, 4($v1)
/* 134BE4 80042DE4 AC600008 */  sw         $zero, 8($v1)
/* 134BE8 80042DE8 AC600044 */  sw         $zero, 0x44($v1)
/* 134BEC 80042DEC AC73000C */  sw         $s3, 0xc($v1)
/* 134BF0 80042DF0 E4600054 */  swc1       $f0, 0x54($v1)
/* 134BF4 80042DF4 AC400018 */  sw         $zero, 0x18($v0)
/* 134BF8 80042DF8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 134BFC 80042DFC 8FB3001C */  lw         $s3, 0x1c($sp)
/* 134C00 80042E00 8FB20018 */  lw         $s2, 0x18($sp)
/* 134C04 80042E04 8FB10014 */  lw         $s1, 0x14($sp)
/* 134C08 80042E08 8FB00010 */  lw         $s0, 0x10($sp)
/* 134C0C 80042E0C 03E00008 */  jr         $ra
/* 134C10 80042E10 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80042E14_134C14
/* 134C14 80042E14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 134C18 80042E18 AFB00010 */  sw         $s0, 0x10($sp)
/* 134C1C 80042E1C 00808021 */  addu       $s0, $a0, $zero
/* 134C20 80042E20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 134C24 80042E24 8E020018 */  lw         $v0, 0x18($s0)
/* 134C28 80042E28 8E040000 */  lw         $a0, ($s0)
/* 134C2C 80042E2C 24420001 */  addiu      $v0, $v0, 1
/* 134C30 80042E30 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134C34 80042E34 AE020018 */   sw        $v0, 0x18($s0)
/* 134C38 80042E38 8E040010 */  lw         $a0, 0x10($s0)
/* 134C3C 80042E3C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134C40 80042E40 00000000 */   nop
/* 134C44 80042E44 8E020018 */  lw         $v0, 0x18($s0)
/* 134C48 80042E48 2842001F */  slti       $v0, $v0, 0x1f
/* 134C4C 80042E4C 14400003 */  bnez       $v0, .L80042E5C
/* 134C50 80042E50 00000000 */   nop
/* 134C54 80042E54 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134C58 80042E58 8E040014 */   lw        $a0, 0x14($s0)
.L80042E5C:
/* 134C5C 80042E5C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 134C60 80042E60 8E04000C */   lw        $a0, 0xc($s0)
/* 134C64 80042E64 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 134C68 80042E68 8E040000 */   lw        $a0, ($s0)
/* 134C6C 80042E6C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 134C70 80042E70 8E040010 */   lw        $a0, 0x10($s0)
/* 134C74 80042E74 8E020018 */  lw         $v0, 0x18($s0)
/* 134C78 80042E78 2842001F */  slti       $v0, $v0, 0x1f
/* 134C7C 80042E7C 14400003 */  bnez       $v0, .L80042E8C
/* 134C80 80042E80 00000000 */   nop
/* 134C84 80042E84 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 134C88 80042E88 8E040014 */   lw        $a0, 0x14($s0)
.L80042E8C:
/* 134C8C 80042E8C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 134C90 80042E90 8E04000C */   lw        $a0, 0xc($s0)
/* 134C94 80042E94 00001021 */  addu       $v0, $zero, $zero
/* 134C98 80042E98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 134C9C 80042E9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 134CA0 80042EA0 03E00008 */  jr         $ra
/* 134CA4 80042EA4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80042EA8_134CA8
/* 134CA8 80042EA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 134CAC 80042EAC AFB00010 */  sw         $s0, 0x10($sp)
/* 134CB0 80042EB0 00808021 */  addu       $s0, $a0, $zero
/* 134CB4 80042EB4 12000019 */  beqz       $s0, .L80042F1C
/* 134CB8 80042EB8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 134CBC 80042EBC 8E040000 */  lw         $a0, ($s0)
/* 134CC0 80042EC0 10800016 */  beqz       $a0, .L80042F1C
/* 134CC4 80042EC4 00000000 */   nop
/* 134CC8 80042EC8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 134CCC 80042ECC 00000000 */   nop
/* 134CD0 80042ED0 8E040000 */  lw         $a0, ($s0)
/* 134CD4 80042ED4 0C00AF04 */  jal        func_8002BC10_11DA10
/* 134CD8 80042ED8 24840004 */   addiu     $a0, $a0, 4
/* 134CDC 80042EDC 8E040000 */  lw         $a0, ($s0)
/* 134CE0 80042EE0 0C00AF04 */  jal        func_8002BC10_11DA10
/* 134CE4 80042EE4 24840008 */   addiu     $a0, $a0, 8
/* 134CE8 80042EE8 8E040000 */  lw         $a0, ($s0)
/* 134CEC 80042EEC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 134CF0 80042EF0 24840010 */   addiu     $a0, $a0, 0x10
/* 134CF4 80042EF4 8E040000 */  lw         $a0, ($s0)
/* 134CF8 80042EF8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 134CFC 80042EFC 24840014 */   addiu     $a0, $a0, 0x14
/* 134D00 80042F00 8E040000 */  lw         $a0, ($s0)
/* 134D04 80042F04 0C00AF04 */  jal        func_8002BC10_11DA10
/* 134D08 80042F08 2484000C */   addiu     $a0, $a0, 0xc
/* 134D0C 80042F0C 8E040000 */  lw         $a0, ($s0)
/* 134D10 80042F10 0C0326A1 */  jal        func_800C9A84
/* 134D14 80042F14 00000000 */   nop
/* 134D18 80042F18 AE000000 */  sw         $zero, ($s0)
.L80042F1C:
/* 134D1C 80042F1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 134D20 80042F20 8FB00010 */  lw         $s0, 0x10($sp)
/* 134D24 80042F24 03E00008 */  jr         $ra
/* 134D28 80042F28 27BD0018 */   addiu     $sp, $sp, 0x18
/* 134D2C 80042F2C 00000000 */  nop