.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A4830
/* F430 800A4830 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* F434 800A4834 AFB20020 */  sw         $s2, 0x20($sp)
/* F438 800A4838 00809021 */  addu       $s2, $a0, $zero
/* F43C 800A483C AFB70034 */  sw         $s7, 0x34($sp)
/* F440 800A4840 00A0B821 */  addu       $s7, $a1, $zero
/* F444 800A4844 AFB5002C */  sw         $s5, 0x2c($sp)
/* F448 800A4848 AFBF003C */  sw         $ra, 0x3c($sp)
/* F44C 800A484C AFBE0038 */  sw         $fp, 0x38($sp)
/* F450 800A4850 AFB60030 */  sw         $s6, 0x30($sp)
/* F454 800A4854 AFB40028 */  sw         $s4, 0x28($sp)
/* F458 800A4858 AFB30024 */  sw         $s3, 0x24($sp)
/* F45C 800A485C AFB1001C */  sw         $s1, 0x1c($sp)
/* F460 800A4860 AFB00018 */  sw         $s0, 0x18($sp)
/* F464 800A4864 AFA60014 */  sw         $a2, 0x14($sp)
/* F468 800A4868 92530004 */  lbu        $s3, 4($s2)
/* F46C 800A486C 96560000 */  lhu        $s6, ($s2)
/* F470 800A4870 965E0002 */  lhu        $fp, 2($s2)
/* F474 800A4874 24020001 */  addiu      $v0, $zero, 1
/* F478 800A4878 3263FFFF */  andi       $v1, $s3, 0xffff
/* F47C 800A487C 1062000C */  beq        $v1, $v0, .L800A48B0
/* F480 800A4880 00E0A821 */   addu      $s5, $a3, $zero
/* F484 800A4884 28620002 */  slti       $v0, $v1, 2
/* F488 800A4888 50400005 */  beql       $v0, $zero, .L800A48A0
/* F48C 800A488C 28620004 */   slti      $v0, $v1, 4
/* F490 800A4890 50600008 */  beql       $v1, $zero, .L800A48B4
/* F494 800A4894 24140002 */   addiu     $s4, $zero, 2
/* F498 800A4898 0802922E */  j          .L800A48B8
/* F49C 800A489C 32A300FF */   andi      $v1, $s5, 0xff
.L800A48A0:
/* F4A0 800A48A0 10400005 */  beqz       $v0, .L800A48B8
/* F4A4 800A48A4 32A300FF */   andi      $v1, $s5, 0xff
/* F4A8 800A48A8 0802922E */  j          .L800A48B8
/* F4AC 800A48AC 0000A021 */   addu      $s4, $zero, $zero
.L800A48B0:
/* F4B0 800A48B0 24140002 */  addiu      $s4, $zero, 2
.L800A48B4:
/* F4B4 800A48B4 32A300FF */  andi       $v1, $s5, 0xff
.L800A48B8:
/* F4B8 800A48B8 24020001 */  addiu      $v0, $zero, 1
/* F4BC 800A48BC 1062000F */  beq        $v1, $v0, .L800A48FC
/* F4C0 800A48C0 28620002 */   slti      $v0, $v1, 2
/* F4C4 800A48C4 50400005 */  beql       $v0, $zero, .L800A48DC
/* F4C8 800A48C8 24020002 */   addiu     $v0, $zero, 2
/* F4CC 800A48CC 10600007 */  beqz       $v1, .L800A48EC
/* F4D0 800A48D0 00003021 */   addu      $a2, $zero, $zero
/* F4D4 800A48D4 08029249 */  j          .L800A4924
/* F4D8 800A48D8 00000000 */   nop
.L800A48DC:
/* F4DC 800A48DC 1062000D */  beq        $v1, $v0, .L800A4914
/* F4E0 800A48E0 00003021 */   addu      $a2, $zero, $zero
/* F4E4 800A48E4 08029249 */  j          .L800A4924
/* F4E8 800A48E8 00000000 */   nop
.L800A48EC:
/* F4EC 800A48EC 0C032663 */  jal        func_800C998C
/* F4F0 800A48F0 24040070 */   addiu     $a0, $zero, 0x70
/* F4F4 800A48F4 08029248 */  j          .L800A4920
/* F4F8 800A48F8 00408021 */   addu      $s0, $v0, $zero
.L800A48FC:
/* F4FC 800A48FC 0C025E63 */  jal        func_8009798C
/* F500 800A4900 24040070 */   addiu     $a0, $zero, 0x70
/* F504 800A4904 08029248 */  j          .L800A4920
/* F508 800A4908 00408021 */   addu      $s0, $v0, $zero
.L800A490C:
/* F50C 800A490C 0802928C */  j          .L800A4A30
/* F510 800A4910 24020033 */   addiu     $v0, $zero, 0x33
.L800A4914:
/* F514 800A4914 0C026127 */  jal        func_8009849C
/* F518 800A4918 24040070 */   addiu     $a0, $zero, 0x70
/* F51C 800A491C 00408021 */  addu       $s0, $v0, $zero
.L800A4920:
/* F520 800A4920 00003021 */  addu       $a2, $zero, $zero
.L800A4924:
/* F524 800A4924 240B0001 */  addiu      $t3, $zero, 1
/* F528 800A4928 02601821 */  addu       $v1, $s3, $zero
/* F52C 800A492C 28680002 */  slti       $t0, $v1, 2
/* F530 800A4930 240A0002 */  addiu      $t2, $zero, 2
/* F534 800A4934 24090003 */  addiu      $t1, $zero, 3
/* F538 800A4938 32C7FFFF */  andi       $a3, $s6, 0xffff
/* F53C 800A493C 26040030 */  addiu      $a0, $s0, 0x30
/* F540 800A4940 26110058 */  addiu      $s1, $s0, 0x58
/* F544 800A4944 AE040000 */  sw         $a0, ($s0)
/* F548 800A4948 AE110004 */  sw         $s1, 4($s0)
/* F54C 800A494C AE000008 */  sw         $zero, 8($s0)
/* F550 800A4950 AE12000C */  sw         $s2, 0xc($s0)
/* F554 800A4954 AE170010 */  sw         $s7, 0x10($s0)
/* F558 800A4958 8FAC0014 */  lw         $t4, 0x14($sp)
/* F55C 800A495C 3C05800D */  lui        $a1, %hi(D_800D3DC0)
/* F560 800A4960 24A53DC0 */  addiu      $a1, $a1, %lo(D_800D3DC0)
/* F564 800A4964 240200FF */  addiu      $v0, $zero, 0xff
/* F568 800A4968 A2020018 */  sb         $v0, 0x18($s0)
/* F56C 800A496C A2020019 */  sb         $v0, 0x19($s0)
/* F570 800A4970 A202001A */  sb         $v0, 0x1a($s0)
/* F574 800A4974 A202001B */  sb         $v0, 0x1b($s0)
/* F578 800A4978 2402000A */  addiu      $v0, $zero, 0xa
/* F57C 800A497C A602001C */  sh         $v0, 0x1c($s0)
/* F580 800A4980 24020005 */  addiu      $v0, $zero, 5
/* F584 800A4984 A2020020 */  sb         $v0, 0x20($s0)
/* F588 800A4988 00161080 */  sll        $v0, $s6, 2
/* F58C 800A498C A6020032 */  sh         $v0, 0x32($s0)
/* F590 800A4990 A6020036 */  sh         $v0, 0x36($s0)
/* F594 800A4994 001E1080 */  sll        $v0, $fp, 2
/* F598 800A4998 A2000021 */  sb         $zero, 0x21($s0)
/* F59C 800A499C A2150022 */  sb         $s5, 0x22($s0)
/* F5A0 800A49A0 A600001E */  sh         $zero, 0x1e($s0)
/* F5A4 800A49A4 A6000030 */  sh         $zero, 0x30($s0)
/* F5A8 800A49A8 A6000034 */  sh         $zero, 0x34($s0)
/* F5AC 800A49AC A6000038 */  sh         $zero, 0x38($s0)
/* F5B0 800A49B0 A602003A */  sh         $v0, 0x3a($s0)
/* F5B4 800A49B4 A600003C */  sh         $zero, 0x3c($s0)
/* F5B8 800A49B8 A602003E */  sh         $v0, 0x3e($s0)
/* F5BC 800A49BC AE170040 */  sw         $s7, 0x40($s0)
/* F5C0 800A49C0 AE0C0014 */  sw         $t4, 0x14($s0)
.L800A49C4:
/* F5C4 800A49C4 94A20000 */  lhu        $v0, ($a1)
/* F5C8 800A49C8 506B000F */  beql       $v1, $t3, .L800A4A08
/* F5CC 800A49CC 3042FFFF */   andi      $v0, $v0, 0xffff
/* F5D0 800A49D0 11000005 */  beqz       $t0, .L800A49E8
/* F5D4 800A49D4 00000000 */   nop
/* F5D8 800A49D8 10600009 */  beqz       $v1, .L800A4A00
/* F5DC 800A49DC 3042FFFF */   andi      $v0, $v0, 0xffff
/* F5E0 800A49E0 08029286 */  j          .L800A4A18
/* F5E4 800A49E4 00000000 */   nop
.L800A49E8:
/* F5E8 800A49E8 106A000B */  beq        $v1, $t2, .L800A4A18
/* F5EC 800A49EC 3042FFFF */   andi      $v0, $v0, 0xffff
/* F5F0 800A49F0 10690007 */  beq        $v1, $t1, .L800A4A10
/* F5F4 800A49F4 00000000 */   nop
/* F5F8 800A49F8 08029286 */  j          .L800A4A18
/* F5FC 800A49FC 00000000 */   nop
.L800A4A00:
/* F600 800A4A00 08029285 */  j          .L800A4A14
/* F604 800A4A04 00021080 */   sll       $v0, $v0, 2
.L800A4A08:
/* F608 800A4A08 08029285 */  j          .L800A4A14
/* F60C 800A4A0C 00021040 */   sll       $v0, $v0, 1
.L800A4A10:
/* F610 800A4A10 00021042 */  srl        $v0, $v0, 1
.L800A4A14:
/* F614 800A4A14 3042FFFF */  andi       $v0, $v0, 0xffff
.L800A4A18:
/* F618 800A4A18 10E2FFBC */  beq        $a3, $v0, .L800A490C
/* F61C 800A4A1C 24C60001 */   addiu     $a2, $a2, 1
/* F620 800A4A20 28C20020 */  slti       $v0, $a2, 0x20
/* F624 800A4A24 1440FFE7 */  bnez       $v0, .L800A49C4
/* F628 800A4A28 24A50002 */   addiu     $a1, $a1, 2
/* F62C 800A4A2C 3402FFF4 */  ori        $v0, $zero, 0xfff4
.L800A4A30:
/* F630 800A4A30 A4820014 */  sh         $v0, 0x14($a0)
/* F634 800A4A34 A0940016 */  sb         $s4, 0x16($a0)
/* F638 800A4A38 A0930017 */  sb         $s3, 0x17($a0)
/* F63C 800A4A3C A4800018 */  sh         $zero, 0x18($a0)
/* F640 800A4A40 0C03001C */  jal        func_800C0070
/* F644 800A4A44 A480001A */   sh        $zero, 0x1a($a0)
/* F648 800A4A48 24020030 */  addiu      $v0, $zero, 0x30
/* F64C 800A4A4C AE220000 */  sw         $v0, ($s1)
/* F650 800A4A50 8FAC0014 */  lw         $t4, 0x14($sp)
/* F654 800A4A54 24020100 */  addiu      $v0, $zero, 0x100
/* F658 800A4A58 3263FFFF */  andi       $v1, $s3, 0xffff
/* F65C 800A4A5C AE2C0004 */  sw         $t4, 4($s1)
/* F660 800A4A60 10600006 */  beqz       $v1, .L800A4A7C
/* F664 800A4A64 A6220008 */   sh        $v0, 8($s1)
/* F668 800A4A68 24020001 */  addiu      $v0, $zero, 1
/* F66C 800A4A6C 10620004 */  beq        $v1, $v0, .L800A4A80
/* F670 800A4A70 240200FF */   addiu     $v0, $zero, 0xff
/* F674 800A4A74 080292A1 */  j          .L800A4A84
/* F678 800A4A78 00000000 */   nop
.L800A4A7C:
/* F67C 800A4A7C 2402000F */  addiu      $v0, $zero, 0xf
.L800A4A80:
/* F680 800A4A80 A622000A */  sh         $v0, 0xa($s1)
.L800A4A84:
/* F684 800A4A84 8E240004 */  lw         $a0, 4($s1)
/* F688 800A4A88 02001021 */  addu       $v0, $s0, $zero
/* F68C 800A4A8C 2403FFFF */  addiu      $v1, $zero, -1
/* F690 800A4A90 A620000C */  sh         $zero, 0xc($s1)
/* F694 800A4A94 A620000E */  sh         $zero, 0xe($s1)
/* F698 800A4A98 AE230014 */  sw         $v1, 0x14($s1)
/* F69C 800A4A9C AE240010 */  sw         $a0, 0x10($s1)
/* F6A0 800A4AA0 8FBF003C */  lw         $ra, 0x3c($sp)
/* F6A4 800A4AA4 8FBE0038 */  lw         $fp, 0x38($sp)
/* F6A8 800A4AA8 8FB70034 */  lw         $s7, 0x34($sp)
/* F6AC 800A4AAC 8FB60030 */  lw         $s6, 0x30($sp)
/* F6B0 800A4AB0 8FB5002C */  lw         $s5, 0x2c($sp)
/* F6B4 800A4AB4 8FB40028 */  lw         $s4, 0x28($sp)
/* F6B8 800A4AB8 8FB30024 */  lw         $s3, 0x24($sp)
/* F6BC 800A4ABC 8FB20020 */  lw         $s2, 0x20($sp)
/* F6C0 800A4AC0 8FB1001C */  lw         $s1, 0x1c($sp)
/* F6C4 800A4AC4 8FB00018 */  lw         $s0, 0x18($sp)
/* F6C8 800A4AC8 27BD0040 */  addiu      $sp, $sp, 0x40
/* F6CC 800A4ACC 03E00008 */  jr         $ra
/* F6D0 800A4AD0 00000000 */   nop
