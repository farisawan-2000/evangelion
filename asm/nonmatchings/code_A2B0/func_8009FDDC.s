glabel func_8009FDDC
/* A9DC 8009FDDC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A9E0 8009FDE0 AFB1001C */  sw         $s1, 0x1C($sp)
/* A9E4 8009FDE4 00808821 */  addu       $s1, $a0, $zero
/* A9E8 8009FDE8 AFB20020 */  sw         $s2, 0x20($sp)
/* A9EC 8009FDEC 00A09021 */  addu       $s2, $a1, $zero
/* A9F0 8009FDF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* A9F4 8009FDF4 122001DA */  beqz       $s1, .L800A0560
/* A9F8 8009FDF8 AFB00018 */   sw        $s0, 0x18($sp)
/* A9FC 8009FDFC 92220066 */  lbu        $v0, 0x66($s1)
/* AA00 8009FE00 30420080 */  andi       $v0, $v0, 0x80
/* AA04 8009FE04 144001D6 */  bnez       $v0, .L800A0560
/* AA08 8009FE08 00000000 */   nop
/* AA0C 8009FE0C 3C068015 */  lui        $a2, %hi(gDisplayListHead)
/* AA10 8009FE10 8CC69F94 */  lw         $a2, %lo(gDisplayListHead)($a2)
/* AA14 8009FE14 24C20008 */  addiu      $v0, $a2, 0x8
/* AA18 8009FE18 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AA1C 8009FE1C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AA20 8009FE20 3C02DE00 */  lui        $v0, (0xDE000000 >> 16)
/* AA24 8009FE24 ACC20000 */  sw         $v0, 0x0($a2)
/* AA28 8009FE28 3C02800D */  lui        $v0, %hi(D_800D3D70)
/* AA2C 8009FE2C 24423D70 */  addiu      $v0, $v0, %lo(D_800D3D70)
/* AA30 8009FE30 ACC20004 */  sw         $v0, 0x4($a2)
/* AA34 8009FE34 92220066 */  lbu        $v0, 0x66($s1)
/* AA38 8009FE38 30420004 */  andi       $v0, $v0, 0x4
/* AA3C 8009FE3C 10400036 */  beqz       $v0, .L8009FF18
/* AA40 8009FE40 26300050 */   addiu     $s0, $s1, 0x50
/* AA44 8009FE44 3C018015 */  lui        $at, %hi(D_8014A054)
/* AA48 8009FE48 C420A054 */  lwc1       $f0, %lo(D_8014A054)($at)
/* AA4C 8009FE4C 3C02800D */  lui        $v0, %hi(D_800D3BE4)
/* AA50 8009FE50 24423BE4 */  addiu      $v0, $v0, %lo(D_800D3BE4)
/* AA54 8009FE54 3C018017 */  lui        $at, %hi(D_8016E568)
/* AA58 8009FE58 C424E568 */  lwc1       $f4, %lo(D_8016E568)($at)
/* AA5C 8009FE5C 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* AA60 8009FE60 C426D0D0 */  lwc1       $f6, %lo(D_8016D0D0)($at)
/* AA64 8009FE64 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* AA68 8009FE68 C428D0D4 */  lwc1       $f8, %lo(D_8016D0D4)($at)
/* AA6C 8009FE6C 2444FFF4 */  addiu      $a0, $v0, -0xC
/* AA70 8009FE70 44060000 */  mfc1       $a2, $f0
/* AA74 8009FE74 00000000 */  nop
/* AA78 8009FE78 3C018015 */  lui        $at, %hi(D_8014A050)
/* AA7C 8009FE7C C420A050 */  lwc1       $f0, %lo(D_8014A050)($at)
/* AA80 8009FE80 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* AA84 8009FE84 C422D1A8 */  lwc1       $f2, %lo(D_8016D1A8)($at)
/* AA88 8009FE88 44070000 */  mfc1       $a3, $f0
/* AA8C 8009FE8C 00000000 */  nop
/* AA90 8009FE90 02002821 */  addu       $a1, $s0, $zero
/* AA94 8009FE94 E4440000 */  swc1       $f4, 0x0($v0)
/* AA98 8009FE98 3C01800D */  lui        $at, %hi(D_800D3BE8)
/* AA9C 8009FE9C E4263BE8 */  swc1       $f6, %lo(D_800D3BE8)($at)
/* AAA0 8009FEA0 3C01800D */  lui        $at, %hi(D_800D3BEC)
/* AAA4 8009FEA4 E4283BEC */  swc1       $f8, %lo(D_800D3BEC)($at)
/* AAA8 8009FEA8 0C02FD88 */  jal        func_800BF620
/* AAAC 8009FEAC E7A20010 */   swc1      $f2, 0x10($sp)
/* AAB0 8009FEB0 3C04DC08 */  lui        $a0, (0xDC08060A >> 16)
/* AAB4 8009FEB4 3484060A */  ori        $a0, $a0, (0xDC08060A & 0xFFFF)
/* AAB8 8009FEB8 3C06D9FF */  lui        $a2, (0xD9FFFFFF >> 16)
/* AABC 8009FEBC 34C6FFFF */  ori        $a2, $a2, (0xD9FFFFFF & 0xFFFF)
/* AAC0 8009FEC0 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AAC4 8009FEC4 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AAC8 8009FEC8 3C050022 */  lui        $a1, (0x220405 >> 16)
/* AACC 8009FECC 34A50405 */  ori        $a1, $a1, (0x220405 & 0xFFFF)
/* AAD0 8009FED0 24620008 */  addiu      $v0, $v1, 0x8
/* AAD4 8009FED4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AAD8 8009FED8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AADC 8009FEDC 24620010 */  addiu      $v0, $v1, 0x10
/* AAE0 8009FEE0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AAE4 8009FEE4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AAE8 8009FEE8 3C02DB02 */  lui        $v0, (0xDB020000 >> 16)
/* AAEC 8009FEEC AC620008 */  sw         $v0, 0x8($v1)
/* AAF0 8009FEF0 24020018 */  addiu      $v0, $zero, 0x18
/* AAF4 8009FEF4 AC62000C */  sw         $v0, 0xC($v1)
/* AAF8 8009FEF8 24620018 */  addiu      $v0, $v1, 0x18
/* AAFC 8009FEFC AC640000 */  sw         $a0, 0x0($v1)
/* AB00 8009FF00 AC700004 */  sw         $s0, 0x4($v1)
/* AB04 8009FF04 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AB08 8009FF08 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AB0C 8009FF0C AC660010 */  sw         $a2, 0x10($v1)
/* AB10 8009FF10 08027FD6 */  j          .L8009FF58
/* AB14 8009FF14 AC650014 */   sw        $a1, 0x14($v1)
.L8009FF18:
/* AB18 8009FF18 3C03D9FD */  lui        $v1, (0xD9FDFFFF >> 16)
/* AB1C 8009FF1C 3463FFFF */  ori        $v1, $v1, (0xD9FDFFFF & 0xFFFF)
/* AB20 8009FF20 3C05D9FF */  lui        $a1, (0xD9FFFFFF >> 16)
/* AB24 8009FF24 34A5FFFF */  ori        $a1, $a1, (0xD9FFFFFF & 0xFFFF)
/* AB28 8009FF28 3C040020 */  lui        $a0, (0x200405 >> 16)
/* AB2C 8009FF2C 34840405 */  ori        $a0, $a0, (0x200405 & 0xFFFF)
/* AB30 8009FF30 24C20010 */  addiu      $v0, $a2, 0x10
/* AB34 8009FF34 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AB38 8009FF38 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AB3C 8009FF3C 24C20018 */  addiu      $v0, $a2, 0x18
/* AB40 8009FF40 ACC30008 */  sw         $v1, 0x8($a2)
/* AB44 8009FF44 ACC0000C */  sw         $zero, 0xC($a2)
/* AB48 8009FF48 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AB4C 8009FF4C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AB50 8009FF50 ACC50010 */  sw         $a1, 0x10($a2)
/* AB54 8009FF54 ACC40014 */  sw         $a0, 0x14($a2)
.L8009FF58:
/* AB58 8009FF58 92220066 */  lbu        $v0, 0x66($s1)
/* AB5C 8009FF5C 30420040 */  andi       $v0, $v0, 0x40
/* AB60 8009FF60 10400009 */  beqz       $v0, .L8009FF88
/* AB64 8009FF64 3C04D9FF */   lui       $a0, (0xD9FFF9FF >> 16)
/* AB68 8009FF68 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* AB6C 8009FF6C 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* AB70 8009FF70 3484F9FF */  ori        $a0, $a0, (0xD9FFF9FF & 0xFFFF)
/* AB74 8009FF74 24430008 */  addiu      $v1, $v0, 0x8
/* AB78 8009FF78 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AB7C 8009FF7C AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* AB80 8009FF80 AC440000 */  sw         $a0, 0x0($v0)
/* AB84 8009FF84 AC400004 */  sw         $zero, 0x4($v0)
.L8009FF88:
/* AB88 8009FF88 92220066 */  lbu        $v0, 0x66($s1)
/* AB8C 8009FF8C 30420001 */  andi       $v0, $v0, 0x1
/* AB90 8009FF90 1040000B */  beqz       $v0, .L8009FFC0
/* AB94 8009FF94 3C04E300 */   lui       $a0, (0xE3001201 >> 16)
/* AB98 8009FF98 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AB9C 8009FF9C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* ABA0 8009FFA0 34841201 */  ori        $a0, $a0, (0xE3001201 & 0xFFFF)
/* ABA4 8009FFA4 24620008 */  addiu      $v0, $v1, 0x8
/* ABA8 8009FFA8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* ABAC 8009FFAC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* ABB0 8009FFB0 24022000 */  addiu      $v0, $zero, 0x2000
/* ABB4 8009FFB4 AC640000 */  sw         $a0, 0x0($v1)
/* ABB8 8009FFB8 08027FF8 */  j          .L8009FFE0
/* ABBC 8009FFBC AC620004 */   sw        $v0, 0x4($v1)
.L8009FFC0:
/* ABC0 8009FFC0 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* ABC4 8009FFC4 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* ABC8 8009FFC8 34841201 */  ori        $a0, $a0, (0xE3001201 & 0xFFFF)
/* ABCC 8009FFCC 24430008 */  addiu      $v1, $v0, 0x8
/* ABD0 8009FFD0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* ABD4 8009FFD4 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* ABD8 8009FFD8 AC440000 */  sw         $a0, 0x0($v0)
/* ABDC 8009FFDC AC400004 */  sw         $zero, 0x4($v0)
.L8009FFE0:
/* ABE0 8009FFE0 92220066 */  lbu        $v0, 0x66($s1)
/* ABE4 8009FFE4 30430032 */  andi       $v1, $v0, 0x32
/* ABE8 8009FFE8 24020010 */  addiu      $v0, $zero, 0x10
/* ABEC 8009FFEC 1062000E */  beq        $v1, $v0, .L800A0028
/* ABF0 8009FFF0 28620011 */   slti      $v0, $v1, 0x11
/* ABF4 8009FFF4 10400005 */  beqz       $v0, .L800A000C
/* ABF8 8009FFF8 24020002 */   addiu     $v0, $zero, 0x2
/* ABFC 8009FFFC 10620017 */  beq        $v1, $v0, .L800A005C
/* AC00 800A0000 3C05E200 */   lui       $a1, (0xE200001C >> 16)
/* AC04 800A0004 08028024 */  j          .L800A0090
/* AC08 800A0008 34A5001C */   ori       $a1, $a1, (0xE200001C & 0xFFFF)
.L800A000C:
/* AC0C 800A000C 24020020 */  addiu      $v0, $zero, 0x20
/* AC10 800A0010 10620018 */  beq        $v1, $v0, .L800A0074
/* AC14 800A0014 24020022 */   addiu     $v0, $zero, 0x22
/* AC18 800A0018 1062000A */  beq        $v1, $v0, .L800A0044
/* AC1C 800A001C 3C05E200 */   lui       $a1, (0xE200001C >> 16)
/* AC20 800A0020 08028024 */  j          .L800A0090
/* AC24 800A0024 34A5001C */   ori       $a1, $a1, (0xE200001C & 0xFFFF)
.L800A0028:
/* AC28 800A0028 3C05E200 */  lui        $a1, (0xE200001C >> 16)
/* AC2C 800A002C 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* AC30 800A0030 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AC34 800A0034 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AC38 800A0038 3C040055 */  lui        $a0, (0x553078 >> 16)
/* AC3C 800A003C 08028028 */  j          .L800A00A0
/* AC40 800A0040 34843078 */   ori       $a0, $a0, (0x553078 & 0xFFFF)
.L800A0044:
/* AC44 800A0044 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* AC48 800A0048 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AC4C 800A004C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AC50 800A0050 3C040050 */  lui        $a0, (0x5049D8 >> 16)
/* AC54 800A0054 08028028 */  j          .L800A00A0
/* AC58 800A0058 348449D8 */   ori       $a0, $a0, (0x5049D8 & 0xFFFF)
.L800A005C:
/* AC5C 800A005C 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* AC60 800A0060 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AC64 800A0064 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AC68 800A0068 3C040055 */  lui        $a0, (0x552078 >> 16)
/* AC6C 800A006C 08028028 */  j          .L800A00A0
/* AC70 800A0070 34842078 */   ori       $a0, $a0, (0x552078 & 0xFFFF)
.L800A0074:
/* AC74 800A0074 3C05E200 */  lui        $a1, (0xE200001C >> 16)
/* AC78 800A0078 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* AC7C 800A007C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AC80 800A0080 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AC84 800A0084 3C040050 */  lui        $a0, (0x504A50 >> 16)
/* AC88 800A0088 08028028 */  j          .L800A00A0
/* AC8C 800A008C 34844A50 */   ori       $a0, $a0, (0x504A50 & 0xFFFF)
.L800A0090:
/* AC90 800A0090 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AC94 800A0094 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AC98 800A0098 3C040055 */  lui        $a0, (0x552038 >> 16)
/* AC9C 800A009C 34842038 */  ori        $a0, $a0, (0x552038 & 0xFFFF)
.L800A00A0:
/* ACA0 800A00A0 24620008 */  addiu      $v0, $v1, 0x8
/* ACA4 800A00A4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* ACA8 800A00A8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* ACAC 800A00AC AC650000 */  sw         $a1, 0x0($v1)
/* ACB0 800A00B0 AC640004 */  sw         $a0, 0x4($v1)
/* ACB4 800A00B4 92220066 */  lbu        $v0, 0x66($s1)
/* ACB8 800A00B8 3042003C */  andi       $v0, $v0, 0x3C
/* ACBC 800A00BC 2443FFFC */  addiu      $v1, $v0, -0x4
/* ACC0 800A00C0 2C62001D */  sltiu      $v0, $v1, 0x1D
/* ACC4 800A00C4 1040001A */  beqz       $v0, .L800A0130
/* ACC8 800A00C8 00031080 */   sll       $v0, $v1, 2
/* ACCC 800A00CC 3C018010 */  lui        $at, %hi(jtbl_800F9CC0)
/* ACD0 800A00D0 00220821 */  addu       $at, $at, $v0
/* ACD4 800A00D4 8C229CC0 */  lw         $v0, %lo(jtbl_800F9CC0)($at)
/* ACD8 800A00D8 00400008 */  jr         $v0
/* ACDC 800A00DC 00000000 */   nop
glabel .L800A00E0
/* ACE0 800A00E0 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* ACE4 800A00E4 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* ACE8 800A00E8 3C04FC11 */  lui        $a0, (0xFC11FE23 >> 16)
/* ACEC 800A00EC 3484FE23 */  ori        $a0, $a0, (0xFC11FE23 & 0xFFFF)
/* ACF0 800A00F0 24620008 */  addiu      $v0, $v1, 0x8
/* ACF4 800A00F4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* ACF8 800A00F8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* ACFC 800A00FC 08028049 */  j          .L800A0124
/* AD00 800A0100 2402F7FB */   addiu     $v0, $zero, -0x805
glabel .L800A0104
/* AD04 800A0104 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AD08 800A0108 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AD0C 800A010C 3C04FC12 */  lui        $a0, (0xFC127E24 >> 16)
/* AD10 800A0110 34847E24 */  ori        $a0, $a0, (0xFC127E24 & 0xFFFF)
/* AD14 800A0114 24620008 */  addiu      $v0, $v1, 0x8
/* AD18 800A0118 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AD1C 800A011C AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AD20 800A0120 2402F3F9 */  addiu      $v0, $zero, -0xC07
.L800A0124:
/* AD24 800A0124 AC640000 */  sw         $a0, 0x0($v1)
/* AD28 800A0128 08028057 */  j          .L800A015C
/* AD2C 800A012C AC620004 */   sw        $v0, 0x4($v1)
glabel .L800A0130
/* AD30 800A0130 3C05FCFF */  lui        $a1, (0xFCFFFFFF >> 16)
/* AD34 800A0134 34A5FFFF */  ori        $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* AD38 800A0138 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AD3C 800A013C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AD40 800A0140 3C04FFFC */  lui        $a0, (0xFFFCF279 >> 16)
/* AD44 800A0144 3484F279 */  ori        $a0, $a0, (0xFFFCF279 & 0xFFFF)
/* AD48 800A0148 24620008 */  addiu      $v0, $v1, 0x8
/* AD4C 800A014C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AD50 800A0150 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AD54 800A0154 AC650000 */  sw         $a1, 0x0($v1)
/* AD58 800A0158 AC640004 */  sw         $a0, 0x4($v1)
.L800A015C:
/* AD5C 800A015C 92230067 */  lbu        $v1, 0x67($s1)
/* AD60 800A0160 2C620020 */  sltiu      $v0, $v1, 0x20
/* AD64 800A0164 104000E4 */  beqz       $v0, .L800A04F8
/* AD68 800A0168 00031080 */   sll       $v0, $v1, 2
/* AD6C 800A016C 3C018010 */  lui        $at, %hi(jtbl_800F9D38)
/* AD70 800A0170 00220821 */  addu       $at, $at, $v0
/* AD74 800A0174 8C229D38 */  lw         $v0, %lo(jtbl_800F9D38)($at)
/* AD78 800A0178 00400008 */  jr         $v0
/* AD7C 800A017C 00000000 */   nop
glabel .L800A0180
/* AD80 800A0180 3C05FCFF */  lui        $a1, (0xFCFFFFFF >> 16)
/* AD84 800A0184 34A5FFFF */  ori        $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* AD88 800A0188 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AD8C 800A018C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AD90 800A0190 3C04FFFD */  lui        $a0, (0xFFFDF6FB >> 16)
/* AD94 800A0194 08028139 */  j          .L800A04E4
/* AD98 800A0198 3484F6FB */   ori       $a0, $a0, (0xFFFDF6FB & 0xFFFF)
glabel .L800A019C
/* AD9C 800A019C 3C05FCFF */  lui        $a1, (0xFCFFFFFF >> 16)
/* ADA0 800A01A0 34A5FFFF */  ori        $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* ADA4 800A01A4 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* ADA8 800A01A8 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* ADAC 800A01AC 3C04FFFE */  lui        $a0, (0xFFFE793C >> 16)
/* ADB0 800A01B0 08028139 */  j          .L800A04E4
/* ADB4 800A01B4 3484793C */   ori       $a0, $a0, (0xFFFE793C & 0xFFFF)
glabel .L800A01B8
/* ADB8 800A01B8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* ADBC 800A01BC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* ADC0 800A01C0 3C04FC12 */  lui        $a0, (0xFC127E24 >> 16)
/* ADC4 800A01C4 34847E24 */  ori        $a0, $a0, (0xFC127E24 & 0xFFFF)
/* ADC8 800A01C8 24620008 */  addiu      $v0, $v1, 0x8
/* ADCC 800A01CC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* ADD0 800A01D0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* ADD4 800A01D4 080280C0 */  j          .L800A0300
/* ADD8 800A01D8 2402F9FC */   addiu     $v0, $zero, -0x604
glabel .L800A01DC
/* ADDC 800A01DC 3C05FC12 */  lui        $a1, (0xFC121824 >> 16)
/* ADE0 800A01E0 34A51824 */  ori        $a1, $a1, (0xFC121824 & 0xFFFF)
/* ADE4 800A01E4 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* ADE8 800A01E8 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* ADEC 800A01EC 3C04FF33 */  lui        $a0, (0xFF33FFFF >> 16)
/* ADF0 800A01F0 08028139 */  j          .L800A04E4
/* ADF4 800A01F4 3484FFFF */   ori       $a0, $a0, (0xFF33FFFF & 0xFFFF)
glabel .L800A01F8
/* ADF8 800A01F8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* ADFC 800A01FC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AE00 800A0200 3C04FC12 */  lui        $a0, (0xFC127E24 >> 16)
/* AE04 800A0204 080280BC */  j          .L800A02F0
/* AE08 800A0208 34847E24 */   ori       $a0, $a0, (0xFC127E24 & 0xFFFF)
glabel .L800A020C
/* AE0C 800A020C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AE10 800A0210 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AE14 800A0214 3C04FC12 */  lui        $a0, (0xFC127E24 >> 16)
/* AE18 800A0218 34847E24 */  ori        $a0, $a0, (0xFC127E24 & 0xFFFF)
/* AE1C 800A021C 24620008 */  addiu      $v0, $v1, 0x8
/* AE20 800A0220 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AE24 800A0224 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AE28 800A0228 080280C0 */  j          .L800A0300
/* AE2C 800A022C 2402F9FC */   addiu     $v0, $zero, -0x604
glabel .L800A0230
/* AE30 800A0230 3C05FC12 */  lui        $a1, (0xFC121824 >> 16)
/* AE34 800A0234 34A51824 */  ori        $a1, $a1, (0xFC121824 & 0xFFFF)
/* AE38 800A0238 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AE3C 800A023C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AE40 800A0240 3C04FF33 */  lui        $a0, (0xFF33FFFF >> 16)
/* AE44 800A0244 08028139 */  j          .L800A04E4
/* AE48 800A0248 3484FFFF */   ori       $a0, $a0, (0xFF33FFFF & 0xFFFF)
glabel .L800A024C
/* AE4C 800A024C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AE50 800A0250 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AE54 800A0254 3C04FC12 */  lui        $a0, (0xFC127E24 >> 16)
/* AE58 800A0258 080280BC */  j          .L800A02F0
/* AE5C 800A025C 34847E24 */   ori       $a0, $a0, (0xFC127E24 & 0xFFFF)
glabel .L800A0260
/* AE60 800A0260 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AE64 800A0264 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AE68 800A0268 3C04FC11 */  lui        $a0, (0xFC11FE23 >> 16)
/* AE6C 800A026C 3484FE23 */  ori        $a0, $a0, (0xFC11FE23 & 0xFFFF)
/* AE70 800A0270 24620008 */  addiu      $v0, $v1, 0x8
/* AE74 800A0274 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AE78 800A0278 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AE7C 800A027C 080280C0 */  j          .L800A0300
/* AE80 800A0280 2402F7FB */   addiu     $v0, $zero, -0x805
glabel .L800A0284
/* AE84 800A0284 3C05FC11 */  lui        $a1, (0xFC119623 >> 16)
/* AE88 800A0288 34A59623 */  ori        $a1, $a1, (0xFC119623 & 0xFFFF)
/* AE8C 800A028C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AE90 800A0290 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AE94 800A0294 3C04FF2F */  lui        $a0, (0xFF2FFFFF >> 16)
/* AE98 800A0298 08028139 */  j          .L800A04E4
/* AE9C 800A029C 3484FFFF */   ori       $a0, $a0, (0xFF2FFFFF & 0xFFFF)
glabel .L800A02A0
/* AEA0 800A02A0 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AEA4 800A02A4 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AEA8 800A02A8 3C04FC11 */  lui        $a0, (0xFC11FE23 >> 16)
/* AEAC 800A02AC 3484FE23 */  ori        $a0, $a0, (0xFC11FE23 & 0xFFFF)
/* AEB0 800A02B0 24620008 */  addiu      $v0, $v1, 0x8
/* AEB4 800A02B4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AEB8 800A02B8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AEBC 800A02BC 080280C0 */  j          .L800A0300
/* AEC0 800A02C0 2402F7FB */   addiu     $v0, $zero, -0x805
glabel .L800A02C4
/* AEC4 800A02C4 3C05FC11 */  lui        $a1, (0xFC119623 >> 16)
/* AEC8 800A02C8 34A59623 */  ori        $a1, $a1, (0xFC119623 & 0xFFFF)
/* AECC 800A02CC 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AED0 800A02D0 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AED4 800A02D4 3C04FF2F */  lui        $a0, (0xFF2FFFFF >> 16)
/* AED8 800A02D8 08028139 */  j          .L800A04E4
/* AEDC 800A02DC 3484FFFF */   ori       $a0, $a0, (0xFF2FFFFF & 0xFFFF)
glabel .L800A02E0
/* AEE0 800A02E0 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AEE4 800A02E4 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AEE8 800A02E8 3C04FC11 */  lui        $a0, (0xFC11FE23 >> 16)
/* AEEC 800A02EC 3484FE23 */  ori        $a0, $a0, (0xFC11FE23 & 0xFFFF)
.L800A02F0:
/* AEF0 800A02F0 24620008 */  addiu      $v0, $v1, 0x8
/* AEF4 800A02F4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* AEF8 800A02F8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* AEFC 800A02FC 2402F3F9 */  addiu      $v0, $zero, -0xC07
.L800A0300:
/* AF00 800A0300 AC640000 */  sw         $a0, 0x0($v1)
/* AF04 800A0304 0802813E */  j          .L800A04F8
/* AF08 800A0308 AC620004 */   sw        $v0, 0x4($v1)
glabel .L800A030C
/* AF0C 800A030C 3C05FCFF */  lui        $a1, (0xFCFFFFFF >> 16)
/* AF10 800A0310 34A5FFFF */  ori        $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* AF14 800A0314 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AF18 800A0318 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AF1C 800A031C 3C04FFFC */  lui        $a0, (0xFFFCF87C >> 16)
/* AF20 800A0320 08028139 */  j          .L800A04E4
/* AF24 800A0324 3484F87C */   ori       $a0, $a0, (0xFFFCF87C & 0xFFFF)
glabel .L800A0328
/* AF28 800A0328 3C05FCFF */  lui        $a1, (0xFCFFFFFF >> 16)
/* AF2C 800A032C 34A5FFFF */  ori        $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* AF30 800A0330 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AF34 800A0334 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AF38 800A0338 3C04FFFC */  lui        $a0, (0xFFFCF279 >> 16)
/* AF3C 800A033C 08028139 */  j          .L800A04E4
/* AF40 800A0340 3484F279 */   ori       $a0, $a0, (0xFFFCF279 & 0xFFFF)
glabel .L800A0344
/* AF44 800A0344 3C05FC50 */  lui        $a1, (0xFC50FEA1 >> 16)
/* AF48 800A0348 34A5FEA1 */  ori        $a1, $a1, (0xFC50FEA1 & 0xFFFF)
/* AF4C 800A034C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AF50 800A0350 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AF54 800A0354 3C0444FE */  lui        $a0, (0x44FE793C >> 16)
/* AF58 800A0358 08028139 */  j          .L800A04E4
/* AF5C 800A035C 3484793C */   ori       $a0, $a0, (0x44FE793C & 0xFFFF)
glabel .L800A0360
/* AF60 800A0360 3C05FC50 */  lui        $a1, (0xFC5098A1 >> 16)
/* AF64 800A0364 34A598A1 */  ori        $a1, $a1, (0xFC5098A1 & 0xFFFF)
/* AF68 800A0368 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AF6C 800A036C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AF70 800A0370 3C044432 */  lui        $a0, (0x44327F3F >> 16)
/* AF74 800A0374 08028139 */  j          .L800A04E4
/* AF78 800A0378 34847F3F */   ori       $a0, $a0, (0x44327F3F & 0xFFFF)
glabel .L800A037C
/* AF7C 800A037C 3C05FC50 */  lui        $a1, (0xFC50FEA1 >> 16)
/* AF80 800A0380 34A5FEA1 */  ori        $a1, $a1, (0xFC50FEA1 & 0xFFFF)
/* AF84 800A0384 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AF88 800A0388 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AF8C 800A038C 3C0444FE */  lui        $a0, (0x44FE7339 >> 16)
/* AF90 800A0390 08028139 */  j          .L800A04E4
/* AF94 800A0394 34847339 */   ori       $a0, $a0, (0x44FE7339 & 0xFFFF)
glabel .L800A0398
/* AF98 800A0398 3C05FC14 */  lui        $a1, (0xFC147E28 >> 16)
/* AF9C 800A039C 34A57E28 */  ori        $a1, $a1, (0xFC147E28 & 0xFFFF)
/* AFA0 800A03A0 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AFA4 800A03A4 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AFA8 800A03A8 3C0444FE */  lui        $a0, (0x44FE793C >> 16)
/* AFAC 800A03AC 08028139 */  j          .L800A04E4
/* AFB0 800A03B0 3484793C */   ori       $a0, $a0, (0x44FE793C & 0xFFFF)
glabel .L800A03B4
/* AFB4 800A03B4 3C05FC14 */  lui        $a1, (0xFC147E28 >> 16)
/* AFB8 800A03B8 34A57E28 */  ori        $a1, $a1, (0xFC147E28 & 0xFFFF)
/* AFBC 800A03BC 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AFC0 800A03C0 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AFC4 800A03C4 3C0444FE */  lui        $a0, (0x44FE7339 >> 16)
/* AFC8 800A03C8 08028139 */  j          .L800A04E4
/* AFCC 800A03CC 34847339 */   ori       $a0, $a0, (0x44FE7339 & 0xFFFF)
glabel .L800A03D0
/* AFD0 800A03D0 3C05FC60 */  lui        $a1, (0xFC60FEC1 >> 16)
/* AFD4 800A03D4 34A5FEC1 */  ori        $a1, $a1, (0xFC60FEC1 & 0xFFFF)
/* AFD8 800A03D8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AFDC 800A03DC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AFE0 800A03E0 3C04FFFE */  lui        $a0, (0xFFFE793C >> 16)
/* AFE4 800A03E4 08028139 */  j          .L800A04E4
/* AFE8 800A03E8 3484793C */   ori       $a0, $a0, (0xFFFE793C & 0xFFFF)
glabel .L800A03EC
/* AFEC 800A03EC 3C05FC60 */  lui        $a1, (0xFC60FEC1 >> 16)
/* AFF0 800A03F0 34A5FEC1 */  ori        $a1, $a1, (0xFC60FEC1 & 0xFFFF)
/* AFF4 800A03F4 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* AFF8 800A03F8 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* AFFC 800A03FC 3C04FFFE */  lui        $a0, (0xFFFE7339 >> 16)
/* B000 800A0400 08028139 */  j          .L800A04E4
/* B004 800A0404 34847339 */   ori       $a0, $a0, (0xFFFE7339 & 0xFFFF)
glabel .L800A0408
/* B008 800A0408 3C05FC50 */  lui        $a1, (0xFC50FEA1 >> 16)
/* B00C 800A040C 34A5FEA1 */  ori        $a1, $a1, (0xFC50FEA1 & 0xFFFF)
/* B010 800A0410 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B014 800A0414 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B018 800A0418 3C04FFFE */  lui        $a0, (0xFFFE793C >> 16)
/* B01C 800A041C 08028139 */  j          .L800A04E4
/* B020 800A0420 3484793C */   ori       $a0, $a0, (0xFFFE793C & 0xFFFF)
glabel .L800A0424
/* B024 800A0424 3C05FC50 */  lui        $a1, (0xFC50FEA1 >> 16)
/* B028 800A0428 34A5FEA1 */  ori        $a1, $a1, (0xFC50FEA1 & 0xFFFF)
/* B02C 800A042C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B030 800A0430 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B034 800A0434 3C04FFFE */  lui        $a0, (0xFFFE7339 >> 16)
/* B038 800A0438 08028139 */  j          .L800A04E4
/* B03C 800A043C 34847339 */   ori       $a0, $a0, (0xFFFE7339 & 0xFFFF)
glabel .L800A0440
/* B040 800A0440 3C05FC30 */  lui        $a1, (0xFC30FE61 >> 16)
/* B044 800A0444 34A5FE61 */  ori        $a1, $a1, (0xFC30FE61 & 0xFFFF)
/* B048 800A0448 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B04C 800A044C 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B050 800A0450 3C0444FE */  lui        $a0, (0x44FE793C >> 16)
/* B054 800A0454 08028139 */  j          .L800A04E4
/* B058 800A0458 3484793C */   ori       $a0, $a0, (0x44FE793C & 0xFFFF)
glabel .L800A045C
/* B05C 800A045C 3C05FC30 */  lui        $a1, (0xFC30B261 >> 16)
/* B060 800A0460 34A5B261 */  ori        $a1, $a1, (0xFC30B261 & 0xFFFF)
/* B064 800A0464 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B068 800A0468 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B06C 800A046C 3C044466 */  lui        $a0, (0x44664924 >> 16)
/* B070 800A0470 08028139 */  j          .L800A04E4
/* B074 800A0474 34844924 */   ori       $a0, $a0, (0x44664924 & 0xFFFF)
glabel .L800A0478
/* B078 800A0478 3C05FC30 */  lui        $a1, (0xFC30FE61 >> 16)
/* B07C 800A047C 34A5FE61 */  ori        $a1, $a1, (0xFC30FE61 & 0xFFFF)
/* B080 800A0480 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B084 800A0484 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B088 800A0488 3C0444FE */  lui        $a0, (0x44FE7339 >> 16)
/* B08C 800A048C 08028139 */  j          .L800A04E4
/* B090 800A0490 34847339 */   ori       $a0, $a0, (0x44FE7339 & 0xFFFF)
glabel .L800A0494
/* B094 800A0494 3C05FCFF */  lui        $a1, (0xFCFFFFFF >> 16)
/* B098 800A0498 34A5FFFF */  ori        $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* B09C 800A049C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B0A0 800A04A0 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B0A4 800A04A4 3C04FFFE */  lui        $a0, (0xFFFE7339 >> 16)
/* B0A8 800A04A8 08028139 */  j          .L800A04E4
/* B0AC 800A04AC 34847339 */   ori       $a0, $a0, (0xFFFE7339 & 0xFFFF)
glabel .L800A04B0
/* B0B0 800A04B0 3C05FC30 */  lui        $a1, (0xFC309861 >> 16)
/* B0B4 800A04B4 34A59861 */  ori        $a1, $a1, (0xFC309861 & 0xFFFF)
/* B0B8 800A04B8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B0BC 800A04BC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B0C0 800A04C0 3C045532 */  lui        $a0, (0x5532FF7F >> 16)
/* B0C4 800A04C4 08028139 */  j          .L800A04E4
/* B0C8 800A04C8 3484FF7F */   ori       $a0, $a0, (0x5532FF7F & 0xFFFF)
glabel .L800A04CC
/* B0CC 800A04CC 3C05FC30 */  lui        $a1, (0xFC30FE61 >> 16)
/* B0D0 800A04D0 34A5FE61 */  ori        $a1, $a1, (0xFC30FE61 & 0xFFFF)
/* B0D4 800A04D4 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* B0D8 800A04D8 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* B0DC 800A04DC 3C0455FE */  lui        $a0, (0x55FEF379 >> 16)
/* B0E0 800A04E0 3484F379 */  ori        $a0, $a0, (0x55FEF379 & 0xFFFF)
.L800A04E4:
/* B0E4 800A04E4 24620008 */  addiu      $v0, $v1, 0x8
/* B0E8 800A04E8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B0EC 800A04EC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B0F0 800A04F0 AC650000 */  sw         $a1, 0x0($v1)
/* B0F4 800A04F4 AC640004 */  sw         $a0, 0x4($v1)
glabel .L800A04F8
/* B0F8 800A04F8 92220066 */  lbu        $v0, 0x66($s1)
/* B0FC 800A04FC 30420020 */  andi       $v0, $v0, 0x20
/* B100 800A0500 10400014 */  beqz       $v0, .L800A0554
/* B104 800A0504 02202021 */   addu      $a0, $s1, $zero
/* B108 800A0508 3C058015 */  lui        $a1, %hi(gDisplayListHead)
/* B10C 800A050C 8CA59F94 */  lw         $a1, %lo(gDisplayListHead)($a1)
/* B110 800A0510 24A20008 */  addiu      $v0, $a1, 0x8
/* B114 800A0514 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* B118 800A0518 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* B11C 800A051C 3C02FA00 */  lui        $v0, (0xFA000000 >> 16)
/* B120 800A0520 ACA20000 */  sw         $v0, 0x0($a1)
/* B124 800A0524 92220060 */  lbu        $v0, 0x60($s1)
/* B128 800A0528 92230061 */  lbu        $v1, 0x61($s1)
/* B12C 800A052C 92240062 */  lbu        $a0, 0x62($s1)
/* B130 800A0530 00021600 */  sll        $v0, $v0, 24
/* B134 800A0534 00031C00 */  sll        $v1, $v1, 16
/* B138 800A0538 00431025 */  or         $v0, $v0, $v1
/* B13C 800A053C 92230063 */  lbu        $v1, 0x63($s1)
/* B140 800A0540 00042200 */  sll        $a0, $a0, 8
/* B144 800A0544 00441025 */  or         $v0, $v0, $a0
/* B148 800A0548 00431025 */  or         $v0, $v0, $v1
/* B14C 800A054C ACA20004 */  sw         $v0, 0x4($a1)
/* B150 800A0550 02202021 */  addu       $a0, $s1, $zero
.L800A0554:
/* B154 800A0554 02402821 */  addu       $a1, $s2, $zero
/* B158 800A0558 0C02815F */  jal        func_800A057C
/* B15C 800A055C 00003021 */   addu      $a2, $zero, $zero
.L800A0560:
/* B160 800A0560 8FBF0024 */  lw         $ra, 0x24($sp)
/* B164 800A0564 8FB20020 */  lw         $s2, 0x20($sp)
/* B168 800A0568 8FB1001C */  lw         $s1, 0x1C($sp)
/* B16C 800A056C 8FB00018 */  lw         $s0, 0x18($sp)
/* B170 800A0570 27BD0028 */  addiu      $sp, $sp, 0x28
/* B174 800A0574 03E00008 */  jr         $ra
/* B178 800A0578 00000000 */   nop
.size func_8009FDDC, . - func_8009FDDC
