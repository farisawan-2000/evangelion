.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009F6B0
/* A2B0 8009F6B0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A2B4 8009F6B4 AFBF006C */  sw         $ra, 0x6c($sp)
/* A2B8 8009F6B8 AFBE0068 */  sw         $fp, 0x68($sp)
/* A2BC 8009F6BC AFB70064 */  sw         $s7, 0x64($sp)
/* A2C0 8009F6C0 AFB60060 */  sw         $s6, 0x60($sp)
/* A2C4 8009F6C4 AFB5005C */  sw         $s5, 0x5c($sp)
/* A2C8 8009F6C8 AFB40058 */  sw         $s4, 0x58($sp)
/* A2CC 8009F6CC AFB30054 */  sw         $s3, 0x54($sp)
/* A2D0 8009F6D0 AFB20050 */  sw         $s2, 0x50($sp)
/* A2D4 8009F6D4 AFB1004C */  sw         $s1, 0x4c($sp)
/* A2D8 8009F6D8 AFB00048 */  sw         $s0, 0x48($sp)
/* A2DC 8009F6DC AFA5001C */  sw         $a1, 0x1c($sp)
/* A2E0 8009F6E0 3C078010 */  lui        $a3, %hi(D_800F9CB8)
/* A2E4 8009F6E4 24E79CB8 */  addiu      $a3, $a3, %lo(D_800F9CB8)
/* A2E8 8009F6E8 88E20000 */  lwl        $v0, ($a3)
/* A2EC 8009F6EC 98E20003 */  lwr        $v0, 3($a3)
/* A2F0 8009F6F0 84E30004 */  lh         $v1, 4($a3)
/* A2F4 8009F6F4 ABA20010 */  swl        $v0, 0x10($sp)
/* A2F8 8009F6F8 BBA20013 */  swr        $v0, 0x13($sp)
/* A2FC 8009F6FC A7A30014 */  sh         $v1, 0x14($sp)
/* A300 8009F700 00048400 */  sll        $s0, $a0, 0x10
/* A304 8009F704 3C0400D4 */  lui        $a0, 0xd4
/* A308 8009F708 24846ED0 */  addiu      $a0, $a0, 0x6ed0
/* A30C 8009F70C 3C05800F */  lui        $a1, %hi(D_800EF140)
/* A310 8009F710 24A5F140 */  addiu      $a1, $a1, %lo(D_800EF140)
/* A314 8009F714 00C09821 */  addu       $s3, $a2, $zero
/* A318 8009F718 00108403 */  sra        $s0, $s0, 0x10
/* A31C 8009F71C 02003021 */  addu       $a2, $s0, $zero
/* A320 8009F720 327200FF */  andi       $s2, $s3, 0xff
/* A324 8009F724 0C02648E */  jal        func_80099238
/* A328 8009F728 02403821 */   addu      $a3, $s2, $zero
/* A32C 8009F72C 3C04801B */  lui        $a0, 0x801b
/* A330 8009F730 3484E000 */  ori        $a0, $a0, 0xe000
/* A334 8009F734 3C0500EA */  lui        $a1, 0xea
/* A338 8009F738 24A59380 */  addiu      $a1, $a1, -0x6c80
/* A33C 8009F73C 3C06800F */  lui        $a2, %hi(D_800F00A0)
/* A340 8009F740 24C600A0 */  addiu      $a2, $a2, %lo(D_800F00A0)
/* A344 8009F744 02003821 */  addu       $a3, $s0, $zero
/* A348 8009F748 0C0264C3 */  jal        func_8009930C
/* A34C 8009F74C 00408021 */   addu      $s0, $v0, $zero
/* A350 8009F750 8E03000C */  lw         $v1, 0xc($s0)
/* A354 8009F754 3C02CCCC */  lui        $v0, 0xcccc
/* A358 8009F758 3442CCCD */  ori        $v0, $v0, 0xcccd
/* A35C 8009F75C 00620019 */  multu      $v1, $v0
/* A360 8009F760 3C08801B */  lui        $t0, 0x801b
/* A364 8009F764 3508E000 */  ori        $t0, $t0, 0xe000
/* A368 8009F768 AFA80024 */  sw         $t0, 0x24($sp)
/* A36C 8009F76C 00004010 */  mfhi       $t0
/* A370 8009F770 00000000 */  nop
/* A374 8009F774 00000000 */  nop
/* A378 8009F778 00081102 */  srl        $v0, $t0, 4
/* A37C 8009F77C 0040B821 */  addu       $s7, $v0, $zero
/* A380 8009F780 00021400 */  sll        $v0, $v0, 0x10
/* A384 8009F784 00021383 */  sra        $v0, $v0, 0xe
/* A388 8009F788 24440070 */  addiu      $a0, $v0, 0x70
/* A38C 8009F78C 24020001 */  addiu      $v0, $zero, 1
/* A390 8009F790 1242000F */  beq        $s2, $v0, .L8009F7D0
/* A394 8009F794 2A420002 */   slti      $v0, $s2, 2
/* A398 8009F798 50400005 */  beql       $v0, $zero, .L8009F7B0
/* A39C 8009F79C 24020002 */   addiu     $v0, $zero, 2
/* A3A0 8009F7A0 12400007 */  beqz       $s2, .L8009F7C0
/* A3A4 8009F7A4 26960070 */   addiu     $s6, $s4, 0x70
/* A3A8 8009F7A8 08027DFC */  j          .L8009F7F0
/* A3AC 8009F7AC 00000000 */   nop
.L8009F7B0:
/* A3B0 8009F7B0 1242000B */  beq        $s2, $v0, .L8009F7E0
/* A3B4 8009F7B4 26960070 */   addiu     $s6, $s4, 0x70
/* A3B8 8009F7B8 08027DFC */  j          .L8009F7F0
/* A3BC 8009F7BC 00000000 */   nop
.L8009F7C0:
/* A3C0 8009F7C0 0C032663 */  jal        func_800C998C
/* A3C4 8009F7C4 00000000 */   nop
/* A3C8 8009F7C8 08027DFB */  j          .L8009F7EC
/* A3CC 8009F7CC 0040A021 */   addu      $s4, $v0, $zero
.L8009F7D0:
/* A3D0 8009F7D0 0C025E63 */  jal        func_8009798C
/* A3D4 8009F7D4 00000000 */   nop
/* A3D8 8009F7D8 08027DFB */  j          .L8009F7EC
/* A3DC 8009F7DC 0040A021 */   addu      $s4, $v0, $zero
.L8009F7E0:
/* A3E0 8009F7E0 0C026127 */  jal        func_8009849C
/* A3E4 8009F7E4 00000000 */   nop
/* A3E8 8009F7E8 0040A021 */  addu       $s4, $v0, $zero
.L8009F7EC:
/* A3EC 8009F7EC 26960070 */  addiu      $s6, $s4, 0x70
.L8009F7F0:
/* A3F0 8009F7F0 0000A821 */  addu       $s5, $zero, $zero
/* A3F4 8009F7F4 240200FF */  addiu      $v0, $zero, 0xff
/* A3F8 8009F7F8 A2820060 */  sb         $v0, 0x60($s4)
/* A3FC 8009F7FC A2820061 */  sb         $v0, 0x61($s4)
/* A400 8009F800 A2820062 */  sb         $v0, 0x62($s4)
/* A404 8009F804 A2820063 */  sb         $v0, 0x63($s4)
/* A408 8009F808 00171400 */  sll        $v0, $s7, 0x10
/* A40C 8009F80C 00021403 */  sra        $v0, $v0, 0x10
/* A410 8009F810 A2930000 */  sb         $s3, ($s4)
/* A414 8009F814 AE900004 */  sw         $s0, 4($s4)
/* A418 8009F818 AE960008 */  sw         $s6, 8($s4)
/* A41C 8009F81C A6970064 */  sh         $s7, 0x64($s4)
/* A420 8009F820 A2800066 */  sb         $zero, 0x66($s4)
/* A424 8009F824 18400079 */  blez       $v0, .L8009FA0C
/* A428 8009F828 A2800067 */   sb        $zero, 0x67($s4)
/* A42C 8009F82C 327300FF */  andi       $s3, $s3, 0xff
/* A430 8009F830 2A680002 */  slti       $t0, $s3, 2
/* A434 8009F834 AFA80034 */  sw         $t0, 0x34($sp)
/* A438 8009F838 AFA2002C */  sw         $v0, 0x2c($sp)
/* A43C 8009F83C AFA00044 */  sw         $zero, 0x44($sp)
/* A440 8009F840 24080001 */  addiu      $t0, $zero, 1
.L8009F844:
/* A444 8009F844 12680010 */  beq        $s3, $t0, .L8009F888
/* A448 8009F848 00000000 */   nop
/* A44C 8009F84C 8FA80034 */  lw         $t0, 0x34($sp)
/* A450 8009F850 51000005 */  beql       $t0, $zero, .L8009F868
/* A454 8009F854 24080002 */   addiu     $t0, $zero, 2
/* A458 8009F858 12600007 */  beqz       $s3, .L8009F878
/* A45C 8009F85C 00000000 */   nop
/* A460 8009F860 08027E2A */  j          .L8009F8A8
/* A464 8009F864 AED10000 */   sw        $s1, ($s6)
.L8009F868:
/* A468 8009F868 1268000B */  beq        $s3, $t0, .L8009F898
/* A46C 8009F86C 00000000 */   nop
/* A470 8009F870 08027E2A */  j          .L8009F8A8
/* A474 8009F874 AED10000 */   sw        $s1, ($s6)
.L8009F878:
/* A478 8009F878 0C032663 */  jal        func_800C998C
/* A47C 8009F87C 240400A8 */   addiu     $a0, $zero, 0xa8
/* A480 8009F880 08027E29 */  j          .L8009F8A4
/* A484 8009F884 00408821 */   addu      $s1, $v0, $zero
.L8009F888:
/* A488 8009F888 0C025E63 */  jal        func_8009798C
/* A48C 8009F88C 240400A8 */   addiu     $a0, $zero, 0xa8
/* A490 8009F890 08027E29 */  j          .L8009F8A4
/* A494 8009F894 00408821 */   addu      $s1, $v0, $zero
.L8009F898:
/* A498 8009F898 0C026127 */  jal        func_8009849C
/* A49C 8009F89C 240400A8 */   addiu     $a0, $zero, 0xa8
/* A4A0 8009F8A0 00408821 */  addu       $s1, $v0, $zero
.L8009F8A4:
/* A4A4 8009F8A4 AED10000 */  sw         $s1, ($s6)
.L8009F8A8:
/* A4A8 8009F8A8 8E020008 */  lw         $v0, 8($s0)
/* A4AC 8009F8AC 8FA80044 */  lw         $t0, 0x44($sp)
/* A4B0 8009F8B0 02021021 */  addu       $v0, $s0, $v0
/* A4B4 8009F8B4 00481021 */  addu       $v0, $v0, $t0
/* A4B8 8009F8B8 AE220000 */  sw         $v0, ($s1)
/* A4BC 8009F8BC 9442000E */  lhu        $v0, 0xe($v0)
/* A4C0 8009F8C0 8E230000 */  lw         $v1, ($s1)
/* A4C4 8009F8C4 A6220014 */  sh         $v0, 0x14($s1)
/* A4C8 8009F8C8 94620010 */  lhu        $v0, 0x10($v1)
/* A4CC 8009F8CC 8E230000 */  lw         $v1, ($s1)
/* A4D0 8009F8D0 A6220016 */  sh         $v0, 0x16($s1)
/* A4D4 8009F8D4 94620012 */  lhu        $v0, 0x12($v1)
/* A4D8 8009F8D8 8E230000 */  lw         $v1, ($s1)
/* A4DC 8009F8DC 26D60004 */  addiu      $s6, $s6, 4
/* A4E0 8009F8E0 A6220018 */  sh         $v0, 0x18($s1)
/* A4E4 8009F8E4 84720008 */  lh         $s2, 8($v1)
/* A4E8 8009F8E8 24080001 */  addiu      $t0, $zero, 1
/* A4EC 8009F8EC 2402FFFF */  addiu      $v0, $zero, -1
/* A4F0 8009F8F0 16420007 */  bne        $s2, $v0, .L8009F910
/* A4F4 8009F8F4 A22800A4 */   sb        $t0, 0xa4($s1)
/* A4F8 8009F8F8 AE200004 */  sw         $zero, 4($s1)
/* A4FC 8009F8FC AE200008 */  sw         $zero, 8($s1)
/* A500 8009F900 AE20000C */  sw         $zero, 0xc($s1)
/* A504 8009F904 AE200010 */  sw         $zero, 0x10($s1)
/* A508 8009F908 08027E7B */  j          .L8009F9EC
/* A50C 8009F90C AE2000A0 */   sw        $zero, 0xa0($s1)
.L8009F910:
/* A510 8009F910 8FA80024 */  lw         $t0, 0x24($sp)
/* A514 8009F914 001210C0 */  sll        $v0, $s2, 3
/* A518 8009F918 00481821 */  addu       $v1, $v0, $t0
/* A51C 8009F91C 8C620000 */  lw         $v0, ($v1)
/* A520 8009F920 0102B821 */  addu       $s7, $t0, $v0
/* A524 8009F924 24080001 */  addiu      $t0, $zero, 1
/* A528 8009F928 12680011 */  beq        $s3, $t0, .L8009F970
/* A52C 8009F92C 00000000 */   nop
/* A530 8009F930 8FA80034 */  lw         $t0, 0x34($sp)
/* A534 8009F934 51000005 */  beql       $t0, $zero, .L8009F94C
/* A538 8009F938 24080002 */   addiu     $t0, $zero, 2
/* A53C 8009F93C 12600007 */  beqz       $s3, .L8009F95C
/* A540 8009F940 00000000 */   nop
/* A544 8009F944 08027E65 */  j          .L8009F994
/* A548 8009F948 00000000 */   nop
.L8009F94C:
/* A54C 8009F94C 1268000D */  beq        $s3, $t0, .L8009F984
/* A550 8009F950 00000000 */   nop
/* A554 8009F954 08027E65 */  j          .L8009F994
/* A558 8009F958 00000000 */   nop
.L8009F95C:
/* A55C 8009F95C 94640006 */  lhu        $a0, 6($v1)
/* A560 8009F960 0C032663 */  jal        func_800C998C
/* A564 8009F964 000420C0 */   sll       $a0, $a0, 3
/* A568 8009F968 08027E65 */  j          .L8009F994
/* A56C 8009F96C 0040F021 */   addu      $fp, $v0, $zero
.L8009F970:
/* A570 8009F970 94640006 */  lhu        $a0, 6($v1)
/* A574 8009F974 0C025E63 */  jal        func_8009798C
/* A578 8009F978 000420C0 */   sll       $a0, $a0, 3
/* A57C 8009F97C 08027E65 */  j          .L8009F994
/* A580 8009F980 0040F021 */   addu      $fp, $v0, $zero
.L8009F984:
/* A584 8009F984 94640006 */  lhu        $a0, 6($v1)
/* A588 8009F988 0C026127 */  jal        func_8009849C
/* A58C 8009F98C 000420C0 */   sll       $a0, $a0, 3
/* A590 8009F990 0040F021 */  addu       $fp, $v0, $zero
.L8009F994:
/* A594 8009F994 8E020010 */  lw         $v0, 0x10($s0)
/* A598 8009F998 02021021 */  addu       $v0, $s0, $v0
/* A59C 8009F99C AE220004 */  sw         $v0, 4($s1)
/* A5A0 8009F9A0 8E020018 */  lw         $v0, 0x18($s0)
/* A5A4 8009F9A4 02021021 */  addu       $v0, $s0, $v0
/* A5A8 8009F9A8 AE220008 */  sw         $v0, 8($s1)
/* A5AC 8009F9AC 8E020020 */  lw         $v0, 0x20($s0)
/* A5B0 8009F9B0 001228C0 */  sll        $a1, $s2, 3
/* A5B4 8009F9B4 8E030028 */  lw         $v1, 0x28($s0)
/* A5B8 8009F9B8 02021021 */  addu       $v0, $s0, $v0
/* A5BC 8009F9BC 00A22821 */  addu       $a1, $a1, $v0
/* A5C0 8009F9C0 8CA20000 */  lw         $v0, ($a1)
/* A5C4 8009F9C4 02031821 */  addu       $v1, $s0, $v1
/* A5C8 8009F9C8 00621821 */  addu       $v1, $v1, $v0
/* A5CC 8009F9CC AE23000C */  sw         $v1, 0xc($s1)
/* A5D0 8009F9D0 8CA20004 */  lw         $v0, 4($a1)
/* A5D4 8009F9D4 8FA6001C */  lw         $a2, 0x1c($sp)
/* A5D8 8009F9D8 02202021 */  addu       $a0, $s1, $zero
/* A5DC 8009F9DC 02E02821 */  addu       $a1, $s7, $zero
/* A5E0 8009F9E0 AE3E00A0 */  sw         $fp, 0xa0($s1)
/* A5E4 8009F9E4 0C0287B4 */  jal        func_800A1ED0
/* A5E8 8009F9E8 AE220010 */   sw        $v0, 0x10($s1)
.L8009F9EC:
/* A5EC 8009F9EC 8FA80044 */  lw         $t0, 0x44($sp)
/* A5F0 8009F9F0 25080014 */  addiu      $t0, $t0, 0x14
/* A5F4 8009F9F4 AFA80044 */  sw         $t0, 0x44($sp)
/* A5F8 8009F9F8 8FA8002C */  lw         $t0, 0x2c($sp)
/* A5FC 8009F9FC 26B50001 */  addiu      $s5, $s5, 1
/* A600 8009FA00 02A8102A */  slt        $v0, $s5, $t0
/* A604 8009FA04 1440FF8F */  bnez       $v0, .L8009F844
/* A608 8009FA08 24080001 */   addiu     $t0, $zero, 1
.L8009FA0C:
/* A60C 8009FA0C 02802021 */  addu       $a0, $s4, $zero
/* A610 8009FA10 27A50010 */  addiu      $a1, $sp, 0x10
/* A614 8009FA14 0C028268 */  jal        func_800A09A0
/* A618 8009FA18 00003021 */   addu      $a2, $zero, $zero
/* A61C 8009FA1C 2402FFFF */  addiu      $v0, $zero, -1
/* A620 8009FA20 3C018015 */  lui        $at, %hi(D_80149BA8)
/* A624 8009FA24 AC229BA8 */  sw         $v0, %lo(D_80149BA8)($at)
/* A628 8009FA28 02801021 */  addu       $v0, $s4, $zero
/* A62C 8009FA2C 8FBF006C */  lw         $ra, 0x6c($sp)
/* A630 8009FA30 8FBE0068 */  lw         $fp, 0x68($sp)
/* A634 8009FA34 8FB70064 */  lw         $s7, 0x64($sp)
/* A638 8009FA38 8FB60060 */  lw         $s6, 0x60($sp)
/* A63C 8009FA3C 8FB5005C */  lw         $s5, 0x5c($sp)
/* A640 8009FA40 8FB40058 */  lw         $s4, 0x58($sp)
/* A644 8009FA44 8FB30054 */  lw         $s3, 0x54($sp)
/* A648 8009FA48 8FB20050 */  lw         $s2, 0x50($sp)
/* A64C 8009FA4C 8FB1004C */  lw         $s1, 0x4c($sp)
/* A650 8009FA50 8FB00048 */  lw         $s0, 0x48($sp)
/* A654 8009FA54 27BD0070 */  addiu      $sp, $sp, 0x70
/* A658 8009FA58 03E00008 */  jr         $ra
/* A65C 8009FA5C 00000000 */   nop
