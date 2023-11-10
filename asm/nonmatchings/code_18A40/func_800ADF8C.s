glabel func_800ADF8C
/* 18B8C 800ADF8C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 18B90 800ADF90 AFB3002C */  sw         $s3, 0x2C($sp)
/* 18B94 800ADF94 00809821 */  addu       $s3, $a0, $zero
/* 18B98 800ADF98 AFBF0030 */  sw         $ra, 0x30($sp)
/* 18B9C 800ADF9C AFB20028 */  sw         $s2, 0x28($sp)
/* 18BA0 800ADFA0 AFB10024 */  sw         $s1, 0x24($sp)
/* 18BA4 800ADFA4 AFB00020 */  sw         $s0, 0x20($sp)
/* 18BA8 800ADFA8 8E630040 */  lw         $v1, 0x40($s3)
/* 18BAC 800ADFAC 8E640000 */  lw         $a0, 0x0($s3)
/* 18BB0 800ADFB0 8E620004 */  lw         $v0, 0x4($s3)
/* 18BB4 800ADFB4 3C058000 */  lui        $a1, %hi(D_80000300)
/* 18BB8 800ADFB8 8CA50300 */  lw         $a1, %lo(D_80000300)($a1)
/* 18BBC 800ADFBC 24420004 */  addiu      $v0, $v0, 0x4
/* 18BC0 800ADFC0 3C018015 */  lui        $at, %hi(D_80149F18)
/* 18BC4 800ADFC4 AC239F18 */  sw         $v1, %lo(D_80149F18)($at)
/* 18BC8 800ADFC8 3C018017 */  lui        $at, %hi(D_8016D0DC)
/* 18BCC 800ADFCC AC24D0DC */  sw         $a0, %lo(D_8016D0DC)($at)
/* 18BD0 800ADFD0 3C018010 */  lui        $at, %hi(D_80102944)
/* 18BD4 800ADFD4 AC222944 */  sw         $v0, %lo(D_80102944)($at)
/* 18BD8 800ADFD8 14A00002 */  bnez       $a1, .L800ADFE4
/* 18BDC 800ADFDC 2402003C */   addiu     $v0, $zero, 0x3C
/* 18BE0 800ADFE0 24020032 */  addiu      $v0, $zero, 0x32
.L800ADFE4:
/* 18BE4 800ADFE4 3C018010 */  lui        $at, %hi(D_80102954)
/* 18BE8 800ADFE8 AC222954 */  sw         $v0, %lo(D_80102954)($at)
/* 18BEC 800ADFEC 3C038010 */  lui        $v1, %hi(D_80102954)
/* 18BF0 800ADFF0 8C632954 */  lw         $v1, %lo(D_80102954)($v1)
/* 18BF4 800ADFF4 3C02000F */  lui        $v0, (0xF4240 >> 16)
/* 18BF8 800ADFF8 34424240 */  ori        $v0, $v0, (0xF4240 & 0xFFFF)
/* 18BFC 800ADFFC 0043001A */  div        $zero, $v0, $v1
/* 18C00 800AE000 14600002 */  bnez       $v1, .L800AE00C
/* 18C04 800AE004 00000000 */   nop
/* 18C08 800AE008 0007000D */  break      7
.L800AE00C:
/* 18C0C 800AE00C 2401FFFF */  addiu      $at, $zero, -0x1
/* 18C10 800AE010 14610004 */  bne        $v1, $at, .L800AE024
/* 18C14 800AE014 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 18C18 800AE018 14410002 */  bne        $v0, $at, .L800AE024
/* 18C1C 800AE01C 00000000 */   nop
/* 18C20 800AE020 0006000D */  break      6
.L800AE024:
/* 18C24 800AE024 00001012 */  mflo       $v0
/* 18C28 800AE028 8E640010 */  lw         $a0, 0x10($s3)
/* 18C2C 800AE02C 8E650014 */  lw         $a1, 0x14($s3)
/* 18C30 800AE030 3C018010 */  lui        $at, %hi(D_80102958)
/* 18C34 800AE034 0C02C9F8 */  jal        func_800B27E0
/* 18C38 800AE038 AC222958 */   sw        $v0, %lo(D_80102958)($at)
/* 18C3C 800AE03C 0C02C8DC */  jal        func_800B2370
/* 18C40 800AE040 8E640008 */   lw        $a0, 0x8($s3)
/* 18C44 800AE044 3C028010 */  lui        $v0, %hi(D_80102944)
/* 18C48 800AE048 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 18C4C 800AE04C 2442FFFC */  addiu      $v0, $v0, -0x4
/* 18C50 800AE050 000220C0 */  sll        $a0, $v0, 3
/* 18C54 800AE054 00822023 */  subu       $a0, $a0, $v0
/* 18C58 800AE058 0C02CA0B */  jal        func_800B282C
/* 18C5C 800AE05C 00042080 */   sll       $a0, $a0, 2
/* 18C60 800AE060 3C038010 */  lui        $v1, %hi(D_80102944)
/* 18C64 800AE064 8C632944 */  lw         $v1, %lo(D_80102944)($v1)
/* 18C68 800AE068 3C018010 */  lui        $at, %hi(D_80102948)
/* 18C6C 800AE06C AC222948 */  sw         $v0, %lo(D_80102948)($at)
/* 18C70 800AE070 00032080 */  sll        $a0, $v1, 2
/* 18C74 800AE074 00832021 */  addu       $a0, $a0, $v1
/* 18C78 800AE078 00042100 */  sll        $a0, $a0, 4
/* 18C7C 800AE07C 00832023 */  subu       $a0, $a0, $v1
/* 18C80 800AE080 0C02CA0B */  jal        func_800B282C
/* 18C84 800AE084 00042080 */   sll       $a0, $a0, 2
/* 18C88 800AE088 8E640024 */  lw         $a0, 0x24($s3)
/* 18C8C 800AE08C 3C018010 */  lui        $at, %hi(D_8010294C)
/* 18C90 800AE090 AC22294C */  sw         $v0, %lo(D_8010294C)($at)
/* 18C94 800AE094 244204F0 */  addiu      $v0, $v0, 0x4F0
/* 18C98 800AE098 3C018010 */  lui        $at, %hi(D_80102950)
/* 18C9C 800AE09C 0C02BBA0 */  jal        func_800AEE80
/* 18CA0 800AE0A0 AC222950 */   sw        $v0, %lo(D_80102950)($at)
/* 18CA4 800AE0A4 8E640018 */  lw         $a0, 0x18($s3)
/* 18CA8 800AE0A8 3C018010 */  lui        $at, %hi(D_80102968)
/* 18CAC 800AE0AC AC202968 */  sw         $zero, %lo(D_80102968)($at)
/* 18CB0 800AE0B0 3C018010 */  lui        $at, %hi(D_8010296C)
/* 18CB4 800AE0B4 10800006 */  beqz       $a0, .L800AE0D0
/* 18CB8 800AE0B8 AC20296C */   sw        $zero, %lo(D_8010296C)($at)
/* 18CBC 800AE0BC 8E65001C */  lw         $a1, 0x1C($s3)
/* 18CC0 800AE0C0 10A00003 */  beqz       $a1, .L800AE0D0
/* 18CC4 800AE0C4 00000000 */   nop
/* 18CC8 800AE0C8 0C02BAC1 */  jal        func_800AEB04
/* 18CCC 800AE0CC 00000000 */   nop
.L800AE0D0:
/* 18CD0 800AE0D0 8E640020 */  lw         $a0, 0x20($s3)
/* 18CD4 800AE0D4 3C018010 */  lui        $at, %hi(D_8010297C)
/* 18CD8 800AE0D8 AC20297C */  sw         $zero, %lo(D_8010297C)($at)
/* 18CDC 800AE0DC 3C018010 */  lui        $at, %hi(D_80102978)
/* 18CE0 800AE0E0 10800003 */  beqz       $a0, .L800AE0F0
/* 18CE4 800AE0E4 AC202978 */   sw        $zero, %lo(D_80102978)($at)
/* 18CE8 800AE0E8 0C02BB33 */  jal        func_800AECCC
/* 18CEC 800AE0EC 00000000 */   nop
.L800AE0F0:
/* 18CF0 800AE0F0 3C058010 */  lui        $a1, %hi(D_80102954)
/* 18CF4 800AE0F4 8CA52954 */  lw         $a1, %lo(D_80102954)($a1)
/* 18CF8 800AE0F8 02602021 */  addu       $a0, $s3, $zero
/* 18CFC 800AE0FC 24020002 */  addiu      $v0, $zero, 0x2
/* 18D00 800AE100 3C018010 */  lui        $at, %hi(D_80102980)
/* 18D04 800AE104 AC202980 */  sw         $zero, %lo(D_80102980)($at)
/* 18D08 800AE108 3C018010 */  lui        $at, %hi(D_80102974)
/* 18D0C 800AE10C AC222974 */  sw         $v0, %lo(D_80102974)($at)
/* 18D10 800AE110 0C02C948 */  jal        func_800B2520
/* 18D14 800AE114 24060002 */   addiu     $a2, $zero, 0x2
/* 18D18 800AE118 24040003 */  addiu      $a0, $zero, 0x3
/* 18D1C 800AE11C 0C02B885 */  jal        func_800AE214
/* 18D20 800AE120 24057FFF */   addiu     $a1, $zero, 0x7FFF
/* 18D24 800AE124 3C031234 */  lui        $v1, (0x12345678 >> 16)
/* 18D28 800AE128 34635678 */  ori        $v1, $v1, (0x12345678 & 0xFFFF)
/* 18D2C 800AE12C 3C048010 */  lui        $a0, %hi(D_80102930)
/* 18D30 800AE130 24842930 */  addiu      $a0, $a0, %lo(D_80102930)
/* 18D34 800AE134 24020001 */  addiu      $v0, $zero, 0x1
/* 18D38 800AE138 3C018010 */  lui        $at, %hi(D_80102960)
/* 18D3C 800AE13C AC222960 */  sw         $v0, %lo(D_80102960)($at)
/* 18D40 800AE140 3C02800B */  lui        $v0, %hi(func_800AEFFC)
/* 18D44 800AE144 2442EFFC */  addiu      $v0, $v0, %lo(func_800AEFFC)
/* 18D48 800AE148 3C018010 */  lui        $at, %hi(D_80102964)
/* 18D4C 800AE14C AC232964 */  sw         $v1, %lo(D_80102964)($at)
/* 18D50 800AE150 AC800000 */  sw         $zero, 0x0($a0)
/* 18D54 800AE154 3C018010 */  lui        $at, %hi(D_80102938)
/* 18D58 800AE158 AC222938 */  sw         $v0, %lo(D_80102938)($at)
/* 18D5C 800AE15C 3C018010 */  lui        $at, %hi(D_80102934)
/* 18D60 800AE160 AC242934 */  sw         $a0, %lo(D_80102934)($at)
/* 18D64 800AE164 0C02D354 */  jal        func_800B4D50
/* 18D68 800AE168 00008821 */   addu      $s1, $zero, $zero
/* 18D6C 800AE16C 3C028010 */  lui        $v0, %hi(D_80102944)
/* 18D70 800AE170 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 18D74 800AE174 1840001E */  blez       $v0, .L800AE1F0
/* 18D78 800AE178 00000000 */   nop
/* 18D7C 800AE17C 2412FF90 */  addiu      $s2, $zero, -0x70
/* 18D80 800AE180 00008021 */  addu       $s0, $zero, $zero
.L800AE184:
/* 18D84 800AE184 3C028010 */  lui        $v0, %hi(D_8010294C)
/* 18D88 800AE188 8C42294C */  lw         $v0, %lo(D_8010294C)($v0)
/* 18D8C 800AE18C 02021021 */  addu       $v0, $s0, $v0
/* 18D90 800AE190 A04000C9 */  sb         $zero, 0xC9($v0)
/* 18D94 800AE194 3C048010 */  lui        $a0, %hi(D_8010294C)
/* 18D98 800AE198 8C84294C */  lw         $a0, %lo(D_8010294C)($a0)
/* 18D9C 800AE19C 0C02C122 */  jal        func_800B0488
/* 18DA0 800AE1A0 00902021 */   addu      $a0, $a0, $s0
/* 18DA4 800AE1A4 A3A00014 */  sb         $zero, 0x14($sp)
/* 18DA8 800AE1A8 8E62000C */  lw         $v0, 0xC($s3)
/* 18DAC 800AE1AC A7A00012 */  sh         $zero, 0x12($sp)
/* 18DB0 800AE1B0 A7A20010 */  sh         $v0, 0x10($sp)
/* 18DB4 800AE1B4 2A220004 */  slti       $v0, $s1, 0x4
/* 18DB8 800AE1B8 54400007 */  bnel       $v0, $zero, .L800AE1D8
/* 18DBC 800AE1BC 2652001C */   addiu     $s2, $s2, 0x1C
/* 18DC0 800AE1C0 3C048010 */  lui        $a0, %hi(D_80102948)
/* 18DC4 800AE1C4 8C842948 */  lw         $a0, %lo(D_80102948)($a0)
/* 18DC8 800AE1C8 27A50010 */  addiu      $a1, $sp, 0x10
/* 18DCC 800AE1CC 0C02D368 */  jal        func_800B4DA0
/* 18DD0 800AE1D0 00922021 */   addu      $a0, $a0, $s2
/* 18DD4 800AE1D4 2652001C */  addiu      $s2, $s2, 0x1C
.L800AE1D8:
/* 18DD8 800AE1D8 3C028010 */  lui        $v0, %hi(D_80102944)
/* 18DDC 800AE1DC 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 18DE0 800AE1E0 26310001 */  addiu      $s1, $s1, 0x1
/* 18DE4 800AE1E4 0222102A */  slt        $v0, $s1, $v0
/* 18DE8 800AE1E8 1440FFE6 */  bnez       $v0, .L800AE184
/* 18DEC 800AE1EC 2610013C */   addiu     $s0, $s0, 0x13C
.L800AE1F0:
/* 18DF0 800AE1F0 0C02CA17 */  jal        func_800B285C
/* 18DF4 800AE1F4 00000000 */   nop
/* 18DF8 800AE1F8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 18DFC 800AE1FC 8FB3002C */  lw         $s3, 0x2C($sp)
/* 18E00 800AE200 8FB20028 */  lw         $s2, 0x28($sp)
/* 18E04 800AE204 8FB10024 */  lw         $s1, 0x24($sp)
/* 18E08 800AE208 8FB00020 */  lw         $s0, 0x20($sp)
/* 18E0C 800AE20C 03E00008 */  jr         $ra
/* 18E10 800AE210 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800ADF8C, . - func_800ADF8C
