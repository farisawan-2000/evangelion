glabel func_800AEFFC
/* 19BFC 800AEFFC 3C038010 */  lui        $v1, %hi(D_80102984)
/* 19C00 800AF000 8C632984 */  lw         $v1, %lo(D_80102984)($v1)
/* 19C04 800AF004 3C028010 */  lui        $v0, %hi(D_80102988)
/* 19C08 800AF008 8C422988 */  lw         $v0, %lo(D_80102988)($v0)
/* 19C0C 800AF00C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 19C10 800AF010 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19C14 800AF014 AFB40020 */  sw         $s4, 0x20($sp)
/* 19C18 800AF018 AFB3001C */  sw         $s3, 0x1C($sp)
/* 19C1C 800AF01C AFB20018 */  sw         $s2, 0x18($sp)
/* 19C20 800AF020 AFB10014 */  sw         $s1, 0x14($sp)
/* 19C24 800AF024 AFB00010 */  sw         $s0, 0x10($sp)
/* 19C28 800AF028 10620018 */  beq        $v1, $v0, .L800AF08C
/* 19C2C 800AF02C F7B40028 */   sdc1      $f20, 0x28($sp)
.L800AF030:
/* 19C30 800AF030 3C048010 */  lui        $a0, %hi(D_80102984)
/* 19C34 800AF034 8C842984 */  lw         $a0, %lo(D_80102984)($a0)
/* 19C38 800AF038 3C028010 */  lui        $v0, %hi(D_80102990)
/* 19C3C 800AF03C 8C422990 */  lw         $v0, %lo(D_80102990)($v0)
/* 19C40 800AF040 000420C0 */  sll        $a0, $a0, 3
/* 19C44 800AF044 0C02BBB9 */  jal        func_800AEEE4
/* 19C48 800AF048 00442021 */   addu      $a0, $v0, $a0
/* 19C4C 800AF04C 3C028010 */  lui        $v0, %hi(D_80102984)
/* 19C50 800AF050 8C422984 */  lw         $v0, %lo(D_80102984)($v0)
/* 19C54 800AF054 3C038010 */  lui        $v1, %hi(D_8010298C)
/* 19C58 800AF058 8C63298C */  lw         $v1, %lo(D_8010298C)($v1)
/* 19C5C 800AF05C 24420001 */  addiu      $v0, $v0, 0x1
/* 19C60 800AF060 3C018010 */  lui        $at, %hi(D_80102984)
/* 19C64 800AF064 14430003 */  bne        $v0, $v1, .L800AF074
/* 19C68 800AF068 AC222984 */   sw        $v0, %lo(D_80102984)($at)
/* 19C6C 800AF06C 3C018010 */  lui        $at, %hi(D_80102984)
/* 19C70 800AF070 AC202984 */  sw         $zero, %lo(D_80102984)($at)
.L800AF074:
/* 19C74 800AF074 3C038010 */  lui        $v1, %hi(D_80102984)
/* 19C78 800AF078 8C632984 */  lw         $v1, %lo(D_80102984)($v1)
/* 19C7C 800AF07C 3C028010 */  lui        $v0, %hi(D_80102988)
/* 19C80 800AF080 8C422988 */  lw         $v0, %lo(D_80102988)($v0)
/* 19C84 800AF084 1462FFEA */  bne        $v1, $v0, .L800AF030
/* 19C88 800AF088 00000000 */   nop
.L800AF08C:
/* 19C8C 800AF08C 3C028010 */  lui        $v0, %hi(D_80102944)
/* 19C90 800AF090 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 19C94 800AF094 2412FFFC */  addiu      $s2, $zero, -0x4
/* 19C98 800AF098 3C118010 */  lui        $s1, %hi(D_8010294C)
/* 19C9C 800AF09C 8E31294C */  lw         $s1, %lo(D_8010294C)($s1)
/* 19CA0 800AF0A0 2442FFFC */  addiu      $v0, $v0, -0x4
/* 19CA4 800AF0A4 0242102A */  slt        $v0, $s2, $v0
/* 19CA8 800AF0A8 10400085 */  beqz       $v0, .L800AF2C0
/* 19CAC 800AF0AC 00000000 */   nop
/* 19CB0 800AF0B0 2414FFFF */  addiu      $s4, $zero, -0x1
/* 19CB4 800AF0B4 263000AA */  addiu      $s0, $s1, 0xAA
/* 19CB8 800AF0B8 2413FF90 */  addiu      $s3, $zero, -0x70
.L800AF0BC:
/* 19CBC 800AF0BC 8E02FF5A */  lw         $v0, -0xA6($s0)
/* 19CC0 800AF0C0 50400077 */  beql       $v0, $zero, .L800AF2A0
/* 19CC4 800AF0C4 2673001C */   addiu     $s3, $s3, 0x1C
/* 19CC8 800AF0C8 8E220000 */  lw         $v0, 0x0($s1)
/* 19CCC 800AF0CC 30420001 */  andi       $v0, $v0, 0x1
/* 19CD0 800AF0D0 54400073 */  bnel       $v0, $zero, .L800AF2A0
/* 19CD4 800AF0D4 2673001C */   addiu     $s3, $s3, 0x1C
/* 19CD8 800AF0D8 8E02FF5E */  lw         $v0, -0xA2($s0)
/* 19CDC 800AF0DC 10400003 */  beqz       $v0, .L800AF0EC
/* 19CE0 800AF0E0 02202021 */   addu      $a0, $s1, $zero
/* 19CE4 800AF0E4 0C02BE0E */  jal        func_800AF838
/* 19CE8 800AF0E8 02402821 */   addu      $a1, $s2, $zero
.L800AF0EC:
/* 19CEC 800AF0EC 9603FFF2 */  lhu        $v1, -0xE($s0)
/* 19CF0 800AF0F0 8E02FF62 */  lw         $v0, -0x9E($s0)
/* 19CF4 800AF0F4 9604FFF0 */  lhu        $a0, -0x10($s0)
/* 19CF8 800AF0F8 00431821 */  addu       $v1, $v0, $v1
/* 19CFC 800AF0FC 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 19D00 800AF100 10820012 */  beq        $a0, $v0, .L800AF14C
/* 19D04 800AF104 AE03FF62 */   sw        $v1, -0x9E($s0)
/* 19D08 800AF108 8E02FF92 */  lw         $v0, -0x6E($s0)
/* 19D0C 800AF10C 00431023 */  subu       $v0, $v0, $v1
/* 19D10 800AF110 0441000B */  bgez       $v0, .L800AF140
/* 19D14 800AF114 00000000 */   nop
.L800AF118:
/* 19D18 800AF118 8E02FF5A */  lw         $v0, -0xA6($s0)
/* 19D1C 800AF11C 1040005F */  beqz       $v0, .L800AF29C
/* 19D20 800AF120 02202021 */   addu      $a0, $s1, $zero
/* 19D24 800AF124 0C02BCBB */  jal        func_800AF2EC
/* 19D28 800AF128 02402821 */   addu      $a1, $s2, $zero
/* 19D2C 800AF12C 8E02FF92 */  lw         $v0, -0x6E($s0)
/* 19D30 800AF130 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 19D34 800AF134 00431023 */  subu       $v0, $v0, $v1
/* 19D38 800AF138 0440FFF7 */  bltz       $v0, .L800AF118
/* 19D3C 800AF13C 00000000 */   nop
.L800AF140:
/* 19D40 800AF140 8E02FF5A */  lw         $v0, -0xA6($s0)
/* 19D44 800AF144 50400056 */  beql       $v0, $zero, .L800AF2A0
/* 19D48 800AF148 2673001C */   addiu     $s3, $s3, 0x1C
.L800AF14C:
/* 19D4C 800AF14C 8E02FF8E */  lw         $v0, -0x72($s0)
/* 19D50 800AF150 10400008 */  beqz       $v0, .L800AF174
/* 19D54 800AF154 00000000 */   nop
/* 19D58 800AF158 8E02FF6A */  lw         $v0, -0x96($s0)
/* 19D5C 800AF15C 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 19D60 800AF160 00431023 */  subu       $v0, $v0, $v1
/* 19D64 800AF164 04410003 */  bgez       $v0, .L800AF174
/* 19D68 800AF168 00000000 */   nop
/* 19D6C 800AF16C 0C02BFBC */  jal        func_800AFEF0
/* 19D70 800AF170 02202021 */   addu      $a0, $s1, $zero
.L800AF174:
/* 19D74 800AF174 8E02FF8A */  lw         $v0, -0x76($s0)
/* 19D78 800AF178 10400008 */  beqz       $v0, .L800AF19C
/* 19D7C 800AF17C 00000000 */   nop
/* 19D80 800AF180 8E02FF6E */  lw         $v0, -0x92($s0)
/* 19D84 800AF184 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 19D88 800AF188 00431023 */  subu       $v0, $v0, $v1
/* 19D8C 800AF18C 04410003 */  bgez       $v0, .L800AF19C
/* 19D90 800AF190 00000000 */   nop
/* 19D94 800AF194 0C02BFED */  jal        func_800AFFB4
/* 19D98 800AF198 02202021 */   addu      $a0, $s1, $zero
.L800AF19C:
/* 19D9C 800AF19C 8E02FF66 */  lw         $v0, -0x9A($s0)
/* 19DA0 800AF1A0 10540011 */  beq        $v0, $s4, .L800AF1E8
/* 19DA4 800AF1A4 2442FFFF */   addiu     $v0, $v0, -0x1
/* 19DA8 800AF1A8 1454000F */  bne        $v0, $s4, .L800AF1E8
/* 19DAC 800AF1AC AE02FF66 */   sw        $v0, -0x9A($s0)
/* 19DB0 800AF1B0 9202001F */  lbu        $v0, 0x1F($s0)
/* 19DB4 800AF1B4 AE00FF8E */  sw         $zero, -0x72($s0)
/* 19DB8 800AF1B8 AE00FF8A */  sw         $zero, -0x76($s0)
/* 19DBC 800AF1BC AE00FFCA */  sw         $zero, -0x36($s0)
/* 19DC0 800AF1C0 AE00FFCE */  sw         $zero, -0x32($s0)
/* 19DC4 800AF1C4 AE00FF9A */  sw         $zero, -0x66($s0)
/* 19DC8 800AF1C8 AE00FF5E */  sw         $zero, -0xA2($s0)
/* 19DCC 800AF1CC 1040002E */  beqz       $v0, .L800AF288
/* 19DD0 800AF1D0 AE00FF5A */   sw        $zero, -0xA6($s0)
/* 19DD4 800AF1D4 A200001F */  sb         $zero, 0x1F($s0)
/* 19DD8 800AF1D8 3C048010 */  lui        $a0, %hi(D_80102948)
/* 19DDC 800AF1DC 8C842948 */  lw         $a0, %lo(D_80102948)($a0)
/* 19DE0 800AF1E0 0C02D4A4 */  jal        func_800B5290
/* 19DE4 800AF1E4 00932021 */   addu      $a0, $a0, $s3
.L800AF1E8:
/* 19DE8 800AF1E8 9202001F */  lbu        $v0, 0x1F($s0)
/* 19DEC 800AF1EC 10400026 */  beqz       $v0, .L800AF288
/* 19DF0 800AF1F0 00000000 */   nop
/* 19DF4 800AF1F4 92020019 */  lbu        $v0, 0x19($s0)
/* 19DF8 800AF1F8 10400003 */  beqz       $v0, .L800AF208
/* 19DFC 800AF1FC 00000000 */   nop
/* 19E00 800AF200 0C02BEE1 */  jal        func_800AFB84
/* 19E04 800AF204 02202021 */   addu      $a0, $s1, $zero
.L800AF208:
/* 19E08 800AF208 9202002A */  lbu        $v0, 0x2A($s0)
/* 19E0C 800AF20C 10400008 */  beqz       $v0, .L800AF230
/* 19E10 800AF210 00000000 */   nop
/* 19E14 800AF214 8E02FFEA */  lw         $v0, -0x16($s0)
/* 19E18 800AF218 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 19E1C 800AF21C 00431023 */  subu       $v0, $v0, $v1
/* 19E20 800AF220 04410003 */  bgez       $v0, .L800AF230
/* 19E24 800AF224 00000000 */   nop
/* 19E28 800AF228 0C02BF5F */  jal        func_800AFD7C
/* 19E2C 800AF22C 02202021 */   addu      $a0, $s1, $zero
.L800AF230:
/* 19E30 800AF230 9202002B */  lbu        $v0, 0x2B($s0)
/* 19E34 800AF234 10400004 */  beqz       $v0, .L800AF248
/* 19E38 800AF238 C614FF86 */   lwc1      $f20, -0x7A($s0)
/* 19E3C 800AF23C 0C02BFA3 */  jal        func_800AFE8C
/* 19E40 800AF240 02202021 */   addu      $a0, $s1, $zero
/* 19E44 800AF244 4600A500 */  add.s      $f20, $f20, $f0
.L800AF248:
/* 19E48 800AF248 92020024 */  lbu        $v0, 0x24($s0)
/* 19E4C 800AF24C 10400004 */  beqz       $v0, .L800AF260
/* 19E50 800AF250 00000000 */   nop
/* 19E54 800AF254 0C02BF8D */  jal        func_800AFE34
/* 19E58 800AF258 02202021 */   addu      $a0, $s1, $zero
/* 19E5C 800AF25C 4600A500 */  add.s      $f20, $f20, $f0
.L800AF260:
/* 19E60 800AF260 8E02FF5E */  lw         $v0, -0xA2($s0)
/* 19E64 800AF264 14400008 */  bnez       $v0, .L800AF288
/* 19E68 800AF268 02202021 */   addu      $a0, $s1, $zero
/* 19E6C 800AF26C 4406A000 */  mfc1       $a2, $f20
/* 19E70 800AF270 00000000 */  nop
/* 19E74 800AF274 0C02BE82 */  jal        func_800AFA08
/* 19E78 800AF278 02402821 */   addu      $a1, $s2, $zero
/* 19E7C 800AF27C 02202021 */  addu       $a0, $s1, $zero
/* 19E80 800AF280 0C02BE2D */  jal        func_800AF8B4
/* 19E84 800AF284 02402821 */   addu      $a1, $s2, $zero
.L800AF288:
/* 19E88 800AF288 8E02FF62 */  lw         $v0, -0x9E($s0)
/* 19E8C 800AF28C 8E03FF96 */  lw         $v1, -0x6A($s0)
/* 19E90 800AF290 00431023 */  subu       $v0, $v0, $v1
/* 19E94 800AF294 00021202 */  srl        $v0, $v0, 8
/* 19E98 800AF298 A6020000 */  sh         $v0, 0x0($s0)
.L800AF29C:
/* 19E9C 800AF29C 2673001C */  addiu      $s3, $s3, 0x1C
.L800AF2A0:
/* 19EA0 800AF2A0 26520001 */  addiu      $s2, $s2, 0x1
/* 19EA4 800AF2A4 3C028010 */  lui        $v0, %hi(D_80102944)
/* 19EA8 800AF2A8 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 19EAC 800AF2AC 2610013C */  addiu      $s0, $s0, 0x13C
/* 19EB0 800AF2B0 2442FFFC */  addiu      $v0, $v0, -0x4
/* 19EB4 800AF2B4 0242102A */  slt        $v0, $s2, $v0
/* 19EB8 800AF2B8 1440FF80 */  bnez       $v0, .L800AF0BC
/* 19EBC 800AF2BC 2631013C */   addiu     $s1, $s1, 0x13C
.L800AF2C0:
/* 19EC0 800AF2C0 3C028010 */  lui        $v0, %hi(D_80102958)
/* 19EC4 800AF2C4 8C422958 */  lw         $v0, %lo(D_80102958)($v0)
/* 19EC8 800AF2C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 19ECC 800AF2CC 8FB40020 */  lw         $s4, 0x20($sp)
/* 19ED0 800AF2D0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 19ED4 800AF2D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 19ED8 800AF2D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 19EDC 800AF2DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 19EE0 800AF2E0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 19EE4 800AF2E4 03E00008 */  jr         $ra
/* 19EE8 800AF2E8 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800AEFFC, . - func_800AEFFC
