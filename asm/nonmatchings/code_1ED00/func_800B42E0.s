.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B42E0
/* 1EEE0 800B42E0 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1EEE4 800B42E4 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1EEE8 800B42E8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1EEEC 800B42EC AFB5004C */  sw         $s5, 0x4c($sp)
/* 1EEF0 800B42F0 0000A821 */  addu       $s5, $zero, $zero
/* 1EEF4 800B42F4 AFBF005C */  sw         $ra, 0x5c($sp)
/* 1EEF8 800B42F8 AFBE0058 */  sw         $fp, 0x58($sp)
/* 1EEFC 800B42FC AFB70054 */  sw         $s7, 0x54($sp)
/* 1EF00 800B4300 AFB60050 */  sw         $s6, 0x50($sp)
/* 1EF04 800B4304 AFB40048 */  sw         $s4, 0x48($sp)
/* 1EF08 800B4308 AFB30044 */  sw         $s3, 0x44($sp)
/* 1EF0C 800B430C AFB20040 */  sw         $s2, 0x40($sp)
/* 1EF10 800B4310 AFB1003C */  sw         $s1, 0x3c($sp)
/* 1EF14 800B4314 AFB00038 */  sw         $s0, 0x38($sp)
/* 1EF18 800B4318 8C420034 */  lw         $v0, 0x34($v0)
/* 1EF1C 800B431C 24140170 */  addiu      $s4, $zero, 0x170
/* 1EF20 800B4320 8C520020 */  lw         $s2, 0x20($v0)
/* 1EF24 800B4324 0C02CA94 */  jal        func_800B2A50
/* 1EF28 800B4328 0000B821 */   addu      $s7, $zero, $zero
/* 1EF2C 800B432C 00404021 */  addu       $t0, $v0, $zero
/* 1EF30 800B4330 01001821 */  addu       $v1, $t0, $zero
/* 1EF34 800B4334 25080008 */  addiu      $t0, $t0, 8
/* 1EF38 800B4338 3C070C00 */  lui        $a3, 0xc00
/* 1EF3C 800B433C 34E7DA83 */  ori        $a3, $a3, 0xda83
/* 1EF40 800B4340 3C0407C0 */  lui        $a0, 0x7c0
/* 1EF44 800B4344 348407C0 */  ori        $a0, $a0, 0x7c0
/* 1EF48 800B4348 3C050C00 */  lui        $a1, 0xc00
/* 1EF4C 800B434C 34A55A82 */  ori        $a1, $a1, 0x5a82
/* 1EF50 800B4350 3C020930 */  lui        $v0, 0x930
/* 1EF54 800B4354 344207C0 */  ori        $v0, $v0, 0x7c0
/* 1EF58 800B4358 240607C0 */  addiu      $a2, $zero, 0x7c0
/* 1EF5C 800B435C AC670000 */  sw         $a3, ($v1)
/* 1EF60 800B4360 01003821 */  addu       $a3, $t0, $zero
/* 1EF64 800B4364 AC640004 */  sw         $a0, 4($v1)
/* 1EF68 800B4368 ACE50000 */  sw         $a1, ($a3)
/* 1EF6C 800B436C ACE20004 */  sw         $v0, 4($a3)
/* 1EF70 800B4370 8E450018 */  lw         $a1, 0x18($s2)
/* 1EF74 800B4374 24E70008 */  addiu      $a3, $a3, 8
/* 1EF78 800B4378 0C02D2C6 */  jal        func_800B4B18
/* 1EF7C 800B437C 02402021 */   addu      $a0, $s2, $zero
/* 1EF80 800B4380 00404021 */  addu       $t0, $v0, $zero
/* 1EF84 800B4384 3C020200 */  lui        $v0, 0x200
/* 1EF88 800B4388 34420930 */  ori        $v0, $v0, 0x930
/* 1EF8C 800B438C 01001821 */  addu       $v1, $t0, $zero
/* 1EF90 800B4390 AC620000 */  sw         $v0, ($v1)
/* 1EF94 800B4394 24020170 */  addiu      $v0, $zero, 0x170
/* 1EF98 800B4398 AC620004 */  sw         $v0, 4($v1)
/* 1EF9C 800B439C 92420024 */  lbu        $v0, 0x24($s2)
/* 1EFA0 800B43A0 00008021 */  addu       $s0, $zero, $zero
/* 1EFA4 800B43A4 18400073 */  blez       $v0, .L800B4574
/* 1EFA8 800B43A8 25080008 */   addiu     $t0, $t0, 8
/* 1EFAC 800B43AC 3C1E0C00 */  lui        $fp, 0xc00
/* 1EFB0 800B43B0 00171C00 */  sll        $v1, $s7, 0x10
.L800B43B4:
/* 1EFB4 800B43B4 00031C03 */  sra        $v1, $v1, 0x10
/* 1EFB8 800B43B8 00031080 */  sll        $v0, $v1, 2
/* 1EFBC 800B43BC 8E440020 */  lw         $a0, 0x20($s2)
/* 1EFC0 800B43C0 00431021 */  addu       $v0, $v0, $v1
/* 1EFC4 800B43C4 000210C0 */  sll        $v0, $v0, 3
/* 1EFC8 800B43C8 00828821 */  addu       $s1, $a0, $v0
/* 1EFCC 800B43CC 8E220000 */  lw         $v0, ($s1)
/* 1EFD0 800B43D0 8E440018 */  lw         $a0, 0x18($s2)
/* 1EFD4 800B43D4 8E230004 */  lw         $v1, 4($s1)
/* 1EFD8 800B43D8 00021040 */  sll        $v0, $v0, 1
/* 1EFDC 800B43DC 00829823 */  subu       $s3, $a0, $v0
/* 1EFE0 800B43E0 00031840 */  sll        $v1, $v1, 1
/* 1EFE4 800B43E4 16700005 */  bne        $s3, $s0, .L800B43FC
/* 1EFE8 800B43E8 0083B023 */   subu      $s6, $a0, $v1
/* 1EFEC 800B43EC 02801021 */  addu       $v0, $s4, $zero
/* 1EFF0 800B43F0 02A0A021 */  addu       $s4, $s5, $zero
/* 1EFF4 800B43F4 0802D107 */  j          .L800B441C
/* 1EFF8 800B43F8 0040A821 */   addu      $s5, $v0, $zero
.L800B43FC:
/* 1EFFC 800B43FC AFA80010 */  sw         $t0, 0x10($sp)
/* 1F000 800B4400 02402021 */  addu       $a0, $s2, $zero
/* 1F004 800B4404 02602821 */  addu       $a1, $s3, $zero
/* 1F008 800B4408 00153400 */  sll        $a2, $s5, 0x10
/* 1F00C 800B440C 00063403 */  sra        $a2, $a2, 0x10
/* 1F010 800B4410 0C02D27C */  jal        func_800B49F0
/* 1F014 800B4414 240700B8 */   addiu     $a3, $zero, 0xb8
/* 1F018 800B4418 00404021 */  addu       $t0, $v0, $zero
.L800B441C:
/* 1F01C 800B441C 02402021 */  addu       $a0, $s2, $zero
/* 1F020 800B4420 02202821 */  addu       $a1, $s1, $zero
/* 1F024 800B4424 00141400 */  sll        $v0, $s4, 0x10
/* 1F028 800B4428 00028403 */  sra        $s0, $v0, 0x10
/* 1F02C 800B442C 02003021 */  addu       $a2, $s0, $zero
/* 1F030 800B4430 0C02D1F8 */  jal        func_800B47E0
/* 1F034 800B4434 01003821 */   addu      $a3, $t0, $zero
/* 1F038 800B4438 86230008 */  lh         $v1, 8($s1)
/* 1F03C 800B443C 00404021 */  addu       $t0, $v0, $zero
/* 1F040 800B4440 10600014 */  beqz       $v1, .L800B4494
/* 1F044 800B4444 00601021 */   addu      $v0, $v1, $zero
/* 1F048 800B4448 01002021 */  addu       $a0, $t0, $zero
/* 1F04C 800B444C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1F050 800B4450 005E1025 */  or         $v0, $v0, $fp
/* 1F054 800B4454 AC820000 */  sw         $v0, ($a0)
/* 1F058 800B4458 00151400 */  sll        $v0, $s5, 0x10
/* 1F05C 800B445C 3203FFFF */  andi       $v1, $s0, 0xffff
/* 1F060 800B4460 00431025 */  or         $v0, $v0, $v1
/* 1F064 800B4464 AC820004 */  sw         $v0, 4($a0)
/* 1F068 800B4468 8E220024 */  lw         $v0, 0x24($s1)
/* 1F06C 800B446C 14400009 */  bnez       $v0, .L800B4494
/* 1F070 800B4470 25080008 */   addiu     $t0, $t0, 8
/* 1F074 800B4474 8E220020 */  lw         $v0, 0x20($s1)
/* 1F078 800B4478 14400006 */  bnez       $v0, .L800B4494
/* 1F07C 800B447C 02402021 */   addu      $a0, $s2, $zero
/* 1F080 800B4480 02C02821 */  addu       $a1, $s6, $zero
/* 1F084 800B4484 02003021 */  addu       $a2, $s0, $zero
/* 1F088 800B4488 0C02D2C6 */  jal        func_800B4B18
/* 1F08C 800B448C 01003821 */   addu      $a3, $t0, $zero
/* 1F090 800B4490 00404021 */  addu       $t0, $v0, $zero
.L800B4494:
/* 1F094 800B4494 8622000A */  lh         $v0, 0xa($s1)
/* 1F098 800B4498 1040000F */  beqz       $v0, .L800B44D8
/* 1F09C 800B449C 00401821 */   addu      $v1, $v0, $zero
/* 1F0A0 800B44A0 02402021 */  addu       $a0, $s2, $zero
/* 1F0A4 800B44A4 02602821 */  addu       $a1, $s3, $zero
/* 1F0A8 800B44A8 00153400 */  sll        $a2, $s5, 0x10
/* 1F0AC 800B44AC 00063403 */  sra        $a2, $a2, 0x10
/* 1F0B0 800B44B0 25070008 */  addiu      $a3, $t0, 8
/* 1F0B4 800B44B4 3062FFFF */  andi       $v0, $v1, 0xffff
/* 1F0B8 800B44B8 005E1025 */  or         $v0, $v0, $fp
/* 1F0BC 800B44BC AD020000 */  sw         $v0, ($t0)
/* 1F0C0 800B44C0 00141400 */  sll        $v0, $s4, 0x10
/* 1F0C4 800B44C4 30C3FFFF */  andi       $v1, $a2, 0xffff
/* 1F0C8 800B44C8 00431025 */  or         $v0, $v0, $v1
/* 1F0CC 800B44CC 0C02D2C6 */  jal        func_800B4B18
/* 1F0D0 800B44D0 AD020004 */   sw        $v0, 4($t0)
/* 1F0D4 800B44D4 00404021 */  addu       $t0, $v0, $zero
.L800B44D8:
/* 1F0D8 800B44D8 8E240020 */  lw         $a0, 0x20($s1)
/* 1F0DC 800B44DC 10800005 */  beqz       $a0, .L800B44F4
/* 1F0E0 800B44E0 00142C00 */   sll       $a1, $s4, 0x10
/* 1F0E4 800B44E4 00052C03 */  sra        $a1, $a1, 0x10
/* 1F0E8 800B44E8 0C02D30C */  jal        func_800B4C30
/* 1F0EC 800B44EC 01003021 */   addu      $a2, $t0, $zero
/* 1F0F0 800B44F0 00404021 */  addu       $t0, $v0, $zero
.L800B44F4:
/* 1F0F4 800B44F4 8E220024 */  lw         $v0, 0x24($s1)
/* 1F0F8 800B44F8 14400007 */  bnez       $v0, .L800B4518
/* 1F0FC 800B44FC 02402021 */   addu      $a0, $s2, $zero
/* 1F100 800B4500 02C02821 */  addu       $a1, $s6, $zero
/* 1F104 800B4504 00143400 */  sll        $a2, $s4, 0x10
/* 1F108 800B4508 00063403 */  sra        $a2, $a2, 0x10
/* 1F10C 800B450C 0C02D2C6 */  jal        func_800B4B18
/* 1F110 800B4510 01003821 */   addu      $a3, $t0, $zero
/* 1F114 800B4514 00404021 */  addu       $t0, $v0, $zero
.L800B4518:
/* 1F118 800B4518 8622000C */  lh         $v0, 0xc($s1)
/* 1F11C 800B451C 10400009 */  beqz       $v0, .L800B4544
/* 1F120 800B4520 00401821 */   addu      $v1, $v0, $zero
/* 1F124 800B4524 01001021 */  addu       $v0, $t0, $zero
/* 1F128 800B4528 25080008 */  addiu      $t0, $t0, 8
/* 1F12C 800B452C 3063FFFF */  andi       $v1, $v1, 0xffff
/* 1F130 800B4530 007E1825 */  or         $v1, $v1, $fp
/* 1F134 800B4534 AC430000 */  sw         $v1, ($v0)
/* 1F138 800B4538 00141C00 */  sll        $v1, $s4, 0x10
/* 1F13C 800B453C 34630930 */  ori        $v1, $v1, 0x930
/* 1F140 800B4540 AC430004 */  sw         $v1, 4($v0)
.L800B4544:
/* 1F144 800B4544 8E230004 */  lw         $v1, 4($s1)
/* 1F148 800B4548 8E440018 */  lw         $a0, 0x18($s2)
/* 1F14C 800B454C 26E20001 */  addiu      $v0, $s7, 1
/* 1F150 800B4550 0040B821 */  addu       $s7, $v0, $zero
/* 1F154 800B4554 00031840 */  sll        $v1, $v1, 1
/* 1F158 800B4558 00838021 */  addu       $s0, $a0, $v1
/* 1F15C 800B455C 92430024 */  lbu        $v1, 0x24($s2)
/* 1F160 800B4560 00021400 */  sll        $v0, $v0, 0x10
/* 1F164 800B4564 00021403 */  sra        $v0, $v0, 0x10
/* 1F168 800B4568 0043102A */  slt        $v0, $v0, $v1
/* 1F16C 800B456C 1440FF91 */  bnez       $v0, .L800B43B4
/* 1F170 800B4570 00171C00 */   sll       $v1, $s7, 0x10
.L800B4574:
/* 1F174 800B4574 8E420018 */  lw         $v0, 0x18($s2)
/* 1F178 800B4578 8E44001C */  lw         $a0, 0x1c($s2)
/* 1F17C 800B457C 8E430014 */  lw         $v1, 0x14($s2)
/* 1F180 800B4580 24420170 */  addiu      $v0, $v0, 0x170
/* 1F184 800B4584 00042040 */  sll        $a0, $a0, 1
/* 1F188 800B4588 00641821 */  addu       $v1, $v1, $a0
/* 1F18C 800B458C 0062182B */  sltu       $v1, $v1, $v0
/* 1F190 800B4590 10600003 */  beqz       $v1, .L800B45A0
/* 1F194 800B4594 AE420018 */   sw        $v0, 0x18($s2)
/* 1F198 800B4598 00441023 */  subu       $v0, $v0, $a0
/* 1F19C 800B459C AE420018 */  sw         $v0, 0x18($s2)
.L800B45A0:
/* 1F1A0 800B45A0 3C0507C0 */  lui        $a1, 0x7c0
/* 1F1A4 800B45A4 34A50170 */  ori        $a1, $a1, 0x170
/* 1F1A8 800B45A8 25020008 */  addiu      $v0, $t0, 8
/* 1F1AC 800B45AC 01002021 */  addu       $a0, $t0, $zero
/* 1F1B0 800B45B0 3C030A00 */  lui        $v1, 0xa00
/* 1F1B4 800B45B4 34630930 */  ori        $v1, $v1, 0x930
/* 1F1B8 800B45B8 AC830000 */  sw         $v1, ($a0)
/* 1F1BC 800B45BC AC850004 */  sw         $a1, 4($a0)
/* 1F1C0 800B45C0 8FBF005C */  lw         $ra, 0x5c($sp)
/* 1F1C4 800B45C4 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1F1C8 800B45C8 8FB70054 */  lw         $s7, 0x54($sp)
/* 1F1CC 800B45CC 8FB60050 */  lw         $s6, 0x50($sp)
/* 1F1D0 800B45D0 8FB5004C */  lw         $s5, 0x4c($sp)
/* 1F1D4 800B45D4 8FB40048 */  lw         $s4, 0x48($sp)
/* 1F1D8 800B45D8 8FB30044 */  lw         $s3, 0x44($sp)
/* 1F1DC 800B45DC 8FB20040 */  lw         $s2, 0x40($sp)
/* 1F1E0 800B45E0 8FB1003C */  lw         $s1, 0x3c($sp)
/* 1F1E4 800B45E4 8FB00038 */  lw         $s0, 0x38($sp)
/* 1F1E8 800B45E8 03E00008 */  jr         $ra
/* 1F1EC 800B45EC 27BD0060 */   addiu     $sp, $sp, 0x60
