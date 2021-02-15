.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B71B0
/* 21DB0 800B71B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 21DB4 800B71B4 AFB5002C */  sw         $s5, 0x2c($sp)
/* 21DB8 800B71B8 0080A821 */  addu       $s5, $a0, $zero
/* 21DBC 800B71BC AFBF0030 */  sw         $ra, 0x30($sp)
/* 21DC0 800B71C0 AFB40028 */  sw         $s4, 0x28($sp)
/* 21DC4 800B71C4 AFB30024 */  sw         $s3, 0x24($sp)
/* 21DC8 800B71C8 AFB20020 */  sw         $s2, 0x20($sp)
/* 21DCC 800B71CC AFB1001C */  sw         $s1, 0x1c($sp)
/* 21DD0 800B71D0 0C0308C4 */  jal        func_800C2310
/* 21DD4 800B71D4 AFB00018 */   sw        $s0, 0x18($sp)
/* 21DD8 800B71D8 3C04800F */  lui        $a0, %hi(D_800F5C78)
/* 21DDC 800B71DC 8C845C78 */  lw         $a0, %lo(D_800F5C78)($a0)
/* 21DE0 800B71E0 000418C0 */  sll        $v1, $a0, 3
/* 21DE4 800B71E4 00641823 */  subu       $v1, $v1, $a0
/* 21DE8 800B71E8 00031940 */  sll        $v1, $v1, 5
/* 21DEC 800B71EC 00641821 */  addu       $v1, $v1, $a0
/* 21DF0 800B71F0 00031A40 */  sll        $v1, $v1, 9
/* 21DF4 800B71F4 3C048011 */  lui        $a0, %hi(D_8010D060)
/* 21DF8 800B71F8 2484D060 */  addiu      $a0, $a0, %lo(D_8010D060)
/* 21DFC 800B71FC 00648021 */  addu       $s0, $v1, $a0
/* 21E00 800B7200 26030008 */  addiu      $v1, $s0, 8
/* 21E04 800B7204 AFA30010 */  sw         $v1, 0x10($sp)
/* 21E08 800B7208 3C03DE00 */  lui        $v1, 0xde00
/* 21E0C 800B720C AE030000 */  sw         $v1, ($s0)
/* 21E10 800B7210 3C03800F */  lui        $v1, %hi(D_800F5C80)
/* 21E14 800B7214 24635C80 */  addiu      $v1, $v1, %lo(D_800F5C80)
/* 21E18 800B7218 AE030004 */  sw         $v1, 4($s0)
/* 21E1C 800B721C 00401821 */  addu       $v1, $v0, $zero
/* 21E20 800B7220 2C620008 */  sltiu      $v0, $v1, 8
/* 21E24 800B7224 10400006 */  beqz       $v0, .L800B7240
/* 21E28 800B7228 00009821 */   addu      $s3, $zero, $zero
/* 21E2C 800B722C 3C03FF10 */  lui        $v1, 0xff10
/* 21E30 800B7230 3C048017 */  lui        $a0, %hi(D_8016D6B8)
/* 21E34 800B7234 8C84D6B8 */  lw         $a0, %lo(D_8016D6B8)($a0)
/* 21E38 800B7238 0802DC97 */  j          .L800B725C
/* 21E3C 800B723C 3463013F */   ori       $v1, $v1, 0x13f
.L800B7240:
/* 21E40 800B7240 2C62000E */  sltiu      $v0, $v1, 0xe
/* 21E44 800B7244 10400042 */  beqz       $v0, .L800B7350
/* 21E48 800B7248 3C03FF10 */   lui       $v1, 0xff10
/* 21E4C 800B724C 3463027F */  ori        $v1, $v1, 0x27f
/* 21E50 800B7250 3C048017 */  lui        $a0, %hi(D_8016D6B8)
/* 21E54 800B7254 8C84D6B8 */  lw         $a0, %lo(D_8016D6B8)($a0)
/* 21E58 800B7258 24130001 */  addiu      $s3, $zero, 1
.L800B725C:
/* 21E5C 800B725C 26020010 */  addiu      $v0, $s0, 0x10
/* 21E60 800B7260 AFA20010 */  sw         $v0, 0x10($sp)
/* 21E64 800B7264 0C02F680 */  jal        func_800BDA00
/* 21E68 800B7268 AE030008 */   sw        $v1, 8($s0)
/* 21E6C 800B726C AE02000C */  sw         $v0, 0xc($s0)
/* 21E70 800B7270 8FB40010 */  lw         $s4, 0x10($sp)
/* 21E74 800B7274 00009021 */  addu       $s2, $zero, $zero
/* 21E78 800B7278 3C11800F */  lui        $s1, %hi(D_800F1830)
/* 21E7C 800B727C 26311830 */  addiu      $s1, $s1, %lo(D_800F1830)
/* 21E80 800B7280 00008021 */  addu       $s0, $zero, $zero
.L800B7284:
/* 21E84 800B7284 3C02800F */  lui        $v0, %hi(D_800F1830)
/* 21E88 800B7288 00501021 */  addu       $v0, $v0, $s0
/* 21E8C 800B728C 90421830 */  lbu        $v0, %lo(D_800F1830)($v0)
/* 21E90 800B7290 10400004 */  beqz       $v0, .L800B72A4
/* 21E94 800B7294 27A40010 */   addiu     $a0, $sp, 0x10
/* 21E98 800B7298 02202821 */  addu       $a1, $s1, $zero
/* 21E9C 800B729C 0C02DB70 */  jal        func_800B6DC0
/* 21EA0 800B72A0 02603021 */   addu      $a2, $s3, $zero
.L800B72A4:
/* 21EA4 800B72A4 26310976 */  addiu      $s1, $s1, 0x976
/* 21EA8 800B72A8 26520001 */  addiu      $s2, $s2, 1
/* 21EAC 800B72AC 2E420004 */  sltiu      $v0, $s2, 4
/* 21EB0 800B72B0 1440FFF4 */  bnez       $v0, .L800B7284
/* 21EB4 800B72B4 26100976 */   addiu     $s0, $s0, 0x976
/* 21EB8 800B72B8 8FA40010 */  lw         $a0, 0x10($sp)
/* 21EBC 800B72BC 16840003 */  bne        $s4, $a0, .L800B72CC
/* 21EC0 800B72C0 32A20001 */   andi      $v0, $s5, 1
/* 21EC4 800B72C4 10400022 */  beqz       $v0, .L800B7350
/* 21EC8 800B72C8 00000000 */   nop
.L800B72CC:
/* 21ECC 800B72CC 3C03800F */  lui        $v1, %hi(D_800F5C78)
/* 21ED0 800B72D0 8C635C78 */  lw         $v1, %lo(D_800F5C78)($v1)
/* 21ED4 800B72D4 00003021 */  addu       $a2, $zero, $zero
/* 21ED8 800B72D8 24820008 */  addiu      $v0, $a0, 8
/* 21EDC 800B72DC AFA20010 */  sw         $v0, 0x10($sp)
/* 21EE0 800B72E0 3C02E900 */  lui        $v0, 0xe900
/* 21EE4 800B72E4 24850010 */  addiu      $a1, $a0, 0x10
/* 21EE8 800B72E8 AC820000 */  sw         $v0, ($a0)
/* 21EEC 800B72EC 3C02DF00 */  lui        $v0, 0xdf00
/* 21EF0 800B72F0 02A03821 */  addu       $a3, $s5, $zero
/* 21EF4 800B72F4 AC800004 */  sw         $zero, 4($a0)
/* 21EF8 800B72F8 AFA50010 */  sw         $a1, 0x10($sp)
/* 21EFC 800B72FC AC820008 */  sw         $v0, 8($a0)
/* 21F00 800B7300 AC80000C */  sw         $zero, 0xc($a0)
/* 21F04 800B7304 000310C0 */  sll        $v0, $v1, 3
/* 21F08 800B7308 00431023 */  subu       $v0, $v0, $v1
/* 21F0C 800B730C 00021140 */  sll        $v0, $v0, 5
/* 21F10 800B7310 00431021 */  addu       $v0, $v0, $v1
/* 21F14 800B7314 00021240 */  sll        $v0, $v0, 9
/* 21F18 800B7318 3C038011 */  lui        $v1, %hi(D_8010D060)
/* 21F1C 800B731C 2463D060 */  addiu      $v1, $v1, %lo(D_8010D060)
/* 21F20 800B7320 00432021 */  addu       $a0, $v0, $v1
/* 21F24 800B7324 00A32823 */  subu       $a1, $a1, $v1
/* 21F28 800B7328 00A22823 */  subu       $a1, $a1, $v0
/* 21F2C 800B732C 000528C3 */  sra        $a1, $a1, 3
/* 21F30 800B7330 0C02D99B */  jal        func_800B666C
/* 21F34 800B7334 000528C0 */   sll       $a1, $a1, 3
/* 21F38 800B7338 3C02800F */  lui        $v0, %hi(D_800F5C78)
/* 21F3C 800B733C 8C425C78 */  lw         $v0, %lo(D_800F5C78)($v0)
/* 21F40 800B7340 24420001 */  addiu      $v0, $v0, 1
/* 21F44 800B7344 30420001 */  andi       $v0, $v0, 1
/* 21F48 800B7348 3C01800F */  lui        $at, %hi(D_800F5C78)
/* 21F4C 800B734C AC225C78 */  sw         $v0, %lo(D_800F5C78)($at)
.L800B7350:
/* 21F50 800B7350 8FBF0030 */  lw         $ra, 0x30($sp)
/* 21F54 800B7354 8FB5002C */  lw         $s5, 0x2c($sp)
/* 21F58 800B7358 8FB40028 */  lw         $s4, 0x28($sp)
/* 21F5C 800B735C 8FB30024 */  lw         $s3, 0x24($sp)
/* 21F60 800B7360 8FB20020 */  lw         $s2, 0x20($sp)
/* 21F64 800B7364 8FB1001C */  lw         $s1, 0x1c($sp)
/* 21F68 800B7368 8FB00018 */  lw         $s0, 0x18($sp)
/* 21F6C 800B736C 03E00008 */  jr         $ra
/* 21F70 800B7370 27BD0038 */   addiu     $sp, $sp, 0x38
/* 21F74 800B7374 00000000 */  nop
/* 21F78 800B7378 00000000 */  nop
/* 21F7C 800B737C 00000000 */  nop
