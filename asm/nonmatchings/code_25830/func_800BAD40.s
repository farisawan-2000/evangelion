glabel func_800BAD40
/* 25940 800BAD40 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 25944 800BAD44 AFB20030 */  sw         $s2, 0x30($sp)
/* 25948 800BAD48 8FB20060 */  lw         $s2, 0x60($sp)
/* 2594C 800BAD4C AFB00028 */  sw         $s0, 0x28($sp)
/* 25950 800BAD50 00808021 */  addu       $s0, $a0, $zero
/* 25954 800BAD54 AFBF004C */  sw         $ra, 0x4C($sp)
/* 25958 800BAD58 AFBE0048 */  sw         $fp, 0x48($sp)
/* 2595C 800BAD5C AFB70044 */  sw         $s7, 0x44($sp)
/* 25960 800BAD60 AFB60040 */  sw         $s6, 0x40($sp)
/* 25964 800BAD64 AFB5003C */  sw         $s5, 0x3C($sp)
/* 25968 800BAD68 AFB40038 */  sw         $s4, 0x38($sp)
/* 2596C 800BAD6C AFB30034 */  sw         $s3, 0x34($sp)
/* 25970 800BAD70 AFB1002C */  sw         $s1, 0x2C($sp)
/* 25974 800BAD74 8E02003C */  lw         $v0, 0x3C($s0)
/* 25978 800BAD78 00C0B821 */  addu       $s7, $a2, $zero
/* 2597C 800BAD7C 00E0B021 */  addu       $s6, $a3, $zero
/* 25980 800BAD80 AFB60024 */  sw         $s6, 0x24($sp)
/* 25984 800BAD84 A7A0001A */  sh         $zero, 0x1A($sp)
/* 25988 800BAD88 10400113 */  beqz       $v0, .L800BB1D8
/* 2598C 800BAD8C A7A00018 */   sh        $zero, 0x18($sp)
/* 25990 800BAD90 241E0001 */  addiu      $fp, $zero, 0x1
/* 25994 800BAD94 3C14800F */  lui        $s4, %hi(D_800F6010)
/* 25998 800BAD98 26946010 */  addiu      $s4, $s4, %lo(D_800F6010)
.L800BAD9C:
/* 2599C 800BAD9C 8E03003C */  lw         $v1, 0x3C($s0)
/* 259A0 800BADA0 8FA20024 */  lw         $v0, 0x24($sp)
/* 259A4 800BADA4 8C680004 */  lw         $t0, 0x4($v1)
/* 259A8 800BADA8 01029823 */  subu       $s3, $t0, $v0
/* 259AC 800BADAC 02F3102A */  slt        $v0, $s7, $s3
/* 259B0 800BADB0 14400109 */  bnez       $v0, .L800BB1D8
/* 259B4 800BADB4 AFA80024 */   sw        $t0, 0x24($sp)
/* 259B8 800BADB8 84630008 */  lh         $v1, 0x8($v1)
/* 259BC 800BADBC 2C620011 */  sltiu      $v0, $v1, 0x11
/* 259C0 800BADC0 104000E8 */  beqz       $v0, .L800BB164
/* 259C4 800BADC4 00031080 */   sll       $v0, $v1, 2
/* 259C8 800BADC8 3C018010 */  lui        $at, %hi(jtbl_800FED40)
/* 259CC 800BADCC 00220821 */  addu       $at, $at, $v0
/* 259D0 800BADD0 8C22ED40 */  lw         $v0, %lo(jtbl_800FED40)($at)
/* 259D4 800BADD4 00400008 */  jr         $v0
/* 259D8 800BADD8 00000000 */   nop
glabel .L800BADDC
/* 259DC 800BADDC 8E11003C */  lw         $s1, 0x3C($s0)
/* 259E0 800BADE0 8622000A */  lh         $v0, 0xA($s1)
/* 259E4 800BADE4 10400006 */  beqz       $v0, .L800BAE00
/* 259E8 800BADE8 0200A821 */   addu      $s5, $s0, $zero
/* 259EC 800BADEC 02002021 */  addu       $a0, $s0, $zero
/* 259F0 800BADF0 8E020008 */  lw         $v0, 0x8($s0)
/* 259F4 800BADF4 24050008 */  addiu      $a1, $zero, 0x8
/* 259F8 800BADF8 0040F809 */  jalr       $v0
/* 259FC 800BADFC 00003021 */   addu      $a2, $zero, $zero
.L800BAE00:
/* 25A00 800BAE00 8E260018 */  lw         $a2, 0x18($s1)
/* 25A04 800BAE04 8E020008 */  lw         $v0, 0x8($s0)
/* 25A08 800BAE08 02002021 */  addu       $a0, $s0, $zero
/* 25A0C 800BAE0C 0040F809 */  jalr       $v0
/* 25A10 800BAE10 24050005 */   addiu     $a1, $zero, 0x5
/* 25A14 800BAE14 02002021 */  addu       $a0, $s0, $zero
/* 25A18 800BAE18 8E020008 */  lw         $v0, 0x8($s0)
/* 25A1C 800BAE1C 24050009 */  addiu      $a1, $zero, 0x9
/* 25A20 800BAE20 0040F809 */  jalr       $v0
/* 25A24 800BAE24 00003021 */   addu      $a2, $zero, $zero
/* 25A28 800BAE28 AE1E0038 */  sw         $fp, 0x38($s0)
/* 25A2C 800BAE2C AE000030 */  sw         $zero, 0x30($s0)
/* 25A30 800BAE30 8E220014 */  lw         $v0, 0x14($s1)
/* 25A34 800BAE34 AE020034 */  sw         $v0, 0x34($s0)
/* 25A38 800BAE38 86220010 */  lh         $v0, 0x10($s1)
/* 25A3C 800BAE3C 00420018 */  mult       $v0, $v0
/* 25A40 800BAE40 00001012 */  mflo       $v0
/* 25A44 800BAE44 000213C3 */  sra        $v0, $v0, 15
/* 25A48 800BAE48 A602001A */  sh         $v0, 0x1A($s0)
/* 25A4C 800BAE4C 92220012 */  lbu        $v0, 0x12($s1)
/* 25A50 800BAE50 A6020018 */  sh         $v0, 0x18($s0)
/* 25A54 800BAE54 92220013 */  lbu        $v0, 0x13($s1)
/* 25A58 800BAE58 00021040 */  sll        $v0, $v0, 1
/* 25A5C 800BAE5C 00541021 */  addu       $v0, $v0, $s4
/* 25A60 800BAE60 94420000 */  lhu        $v0, 0x0($v0)
/* 25A64 800BAE64 A6020020 */  sh         $v0, 0x20($s0)
/* 25A68 800BAE68 92220013 */  lbu        $v0, 0x13($s1)
/* 25A6C 800BAE6C 2408007F */  addiu      $t0, $zero, 0x7F
/* 25A70 800BAE70 01021023 */  subu       $v0, $t0, $v0
/* 25A74 800BAE74 00021040 */  sll        $v0, $v0, 1
/* 25A78 800BAE78 00541021 */  addu       $v0, $v0, $s4
/* 25A7C 800BAE7C 94420000 */  lhu        $v0, 0x0($v0)
/* 25A80 800BAE80 A6020022 */  sh         $v0, 0x22($s0)
/* 25A84 800BAE84 8E220014 */  lw         $v0, 0x14($s1)
/* 25A88 800BAE88 10400004 */  beqz       $v0, .L800BAE9C
/* 25A8C 800BAE8C 00000000 */   nop
/* 25A90 800BAE90 A61E001C */  sh         $fp, 0x1C($s0)
/* 25A94 800BAE94 0802EBBA */  j          .L800BAEE8
/* 25A98 800BAE98 A61E001E */   sh        $fp, 0x1E($s0)
.L800BAE9C:
/* 25A9C 800BAE9C 86020018 */  lh         $v0, 0x18($s0)
/* 25AA0 800BAEA0 8603001A */  lh         $v1, 0x1A($s0)
/* 25AA4 800BAEA4 00021040 */  sll        $v0, $v0, 1
/* 25AA8 800BAEA8 00541021 */  addu       $v0, $v0, $s4
/* 25AAC 800BAEAC 84420000 */  lh         $v0, 0x0($v0)
/* 25AB0 800BAEB0 00620018 */  mult       $v1, $v0
/* 25AB4 800BAEB4 00001812 */  mflo       $v1
/* 25AB8 800BAEB8 86020018 */  lh         $v0, 0x18($s0)
/* 25ABC 800BAEBC 01021023 */  subu       $v0, $t0, $v0
/* 25AC0 800BAEC0 00021040 */  sll        $v0, $v0, 1
/* 25AC4 800BAEC4 00541021 */  addu       $v0, $v0, $s4
/* 25AC8 800BAEC8 00031BC3 */  sra        $v1, $v1, 15
/* 25ACC 800BAECC A603001C */  sh         $v1, 0x1C($s0)
/* 25AD0 800BAED0 8603001A */  lh         $v1, 0x1A($s0)
/* 25AD4 800BAED4 84420000 */  lh         $v0, 0x0($v0)
/* 25AD8 800BAED8 00620018 */  mult       $v1, $v0
/* 25ADC 800BAEDC 00001812 */  mflo       $v1
/* 25AE0 800BAEE0 00031BC3 */  sra        $v1, $v1, 15
/* 25AE4 800BAEE4 A603001E */  sh         $v1, 0x1E($s0)
.L800BAEE8:
/* 25AE8 800BAEE8 8EA40000 */  lw         $a0, 0x0($s5)
/* 25AEC 800BAEEC 108000AB */  beqz       $a0, .L800BB19C
/* 25AF0 800BAEF0 00000000 */   nop
/* 25AF4 800BAEF4 8E26000C */  lw         $a2, 0xC($s1)
/* 25AF8 800BAEF8 8C820008 */  lw         $v0, 0x8($a0)
/* 25AFC 800BAEFC 0040F809 */  jalr       $v0
/* 25B00 800BAF00 24050007 */   addiu     $a1, $zero, 0x7
/* 25B04 800BAF04 0802EC67 */  j          .L800BB19C
/* 25B08 800BAF08 00000000 */   nop
glabel .L800BAF0C
/* 25B0C 800BAF0C 02002021 */  addu       $a0, $s0, $zero
/* 25B10 800BAF10 27A50018 */  addiu      $a1, $sp, 0x18
/* 25B14 800BAF14 27A6001A */  addiu      $a2, $sp, 0x1A
/* 25B18 800BAF18 02603821 */  addu       $a3, $s3, $zero
/* 25B1C 800BAF1C AFB60010 */  sw         $s6, 0x10($sp)
/* 25B20 800BAF20 0C02ECC5 */  jal        func_800BB314
/* 25B24 800BAF24 AFB20014 */   sw        $s2, 0x14($sp)
/* 25B28 800BAF28 8E050030 */  lw         $a1, 0x30($s0)
/* 25B2C 800BAF2C 8E030034 */  lw         $v1, 0x34($s0)
/* 25B30 800BAF30 00A3182A */  slt        $v1, $a1, $v1
/* 25B34 800BAF34 1460001C */  bnez       $v1, .L800BAFA8
/* 25B38 800BAF38 00409021 */   addu      $s2, $v0, $zero
/* 25B3C 800BAF3C 86020018 */  lh         $v0, 0x18($s0)
/* 25B40 800BAF40 8603001A */  lh         $v1, 0x1A($s0)
/* 25B44 800BAF44 00021040 */  sll        $v0, $v0, 1
/* 25B48 800BAF48 00541021 */  addu       $v0, $v0, $s4
/* 25B4C 800BAF4C 84420000 */  lh         $v0, 0x0($v0)
/* 25B50 800BAF50 00620018 */  mult       $v1, $v0
/* 25B54 800BAF54 00001812 */  mflo       $v1
/* 25B58 800BAF58 86020018 */  lh         $v0, 0x18($s0)
/* 25B5C 800BAF5C 2408007F */  addiu      $t0, $zero, 0x7F
/* 25B60 800BAF60 01021023 */  subu       $v0, $t0, $v0
/* 25B64 800BAF64 00021040 */  sll        $v0, $v0, 1
/* 25B68 800BAF68 00541021 */  addu       $v0, $v0, $s4
/* 25B6C 800BAF6C 00031BC3 */  sra        $v1, $v1, 15
/* 25B70 800BAF70 A6030028 */  sh         $v1, 0x28($s0)
/* 25B74 800BAF74 8603001A */  lh         $v1, 0x1A($s0)
/* 25B78 800BAF78 84420000 */  lh         $v0, 0x0($v0)
/* 25B7C 800BAF7C 00620018 */  mult       $v1, $v0
/* 25B80 800BAF80 00001812 */  mflo       $v1
/* 25B84 800BAF84 8E020034 */  lw         $v0, 0x34($s0)
/* 25B88 800BAF88 00031BC3 */  sra        $v1, $v1, 15
/* 25B8C 800BAF8C A603002E */  sh         $v1, 0x2E($s0)
/* 25B90 800BAF90 96030028 */  lhu        $v1, 0x28($s0)
/* 25B94 800BAF94 9604002E */  lhu        $a0, 0x2E($s0)
/* 25B98 800BAF98 AE020030 */  sw         $v0, 0x30($s0)
/* 25B9C 800BAF9C A603001C */  sh         $v1, 0x1C($s0)
/* 25BA0 800BAFA0 0802EC00 */  j          .L800BB000
/* 25BA4 800BAFA4 A604001E */   sh        $a0, 0x1E($s0)
.L800BAFA8:
/* 25BA8 800BAFA8 86060026 */  lh         $a2, 0x26($s0)
/* 25BAC 800BAFAC 8602001C */  lh         $v0, 0x1C($s0)
/* 25BB0 800BAFB0 96070024 */  lhu        $a3, 0x24($s0)
/* 25BB4 800BAFB4 44826000 */  mtc1       $v0, $f12
/* 25BB8 800BAFB8 00000000 */  nop
/* 25BBC 800BAFBC 0C02EE5B */  jal        func_800BB96C
/* 25BC0 800BAFC0 46806320 */   cvt.s.w   $f12, $f12
/* 25BC4 800BAFC4 8E050030 */  lw         $a1, 0x30($s0)
/* 25BC8 800BAFC8 8606002C */  lh         $a2, 0x2C($s0)
/* 25BCC 800BAFCC 9607002A */  lhu        $a3, 0x2A($s0)
/* 25BD0 800BAFD0 8603001E */  lh         $v1, 0x1E($s0)
/* 25BD4 800BAFD4 4600008D */  trunc.w.s  $f2, $f0
/* 25BD8 800BAFD8 44021000 */  mfc1       $v0, $f2
/* 25BDC 800BAFDC 44836000 */  mtc1       $v1, $f12
/* 25BE0 800BAFE0 00000000 */  nop
/* 25BE4 800BAFE4 46806320 */  cvt.s.w    $f12, $f12
/* 25BE8 800BAFE8 0C02EE5B */  jal        func_800BB96C
/* 25BEC 800BAFEC A602001C */   sh        $v0, 0x1C($s0)
/* 25BF0 800BAFF0 4600008D */  trunc.w.s  $f2, $f0
/* 25BF4 800BAFF4 44021000 */  mfc1       $v0, $f2
/* 25BF8 800BAFF8 00000000 */  nop
/* 25BFC 800BAFFC A602001E */  sh         $v0, 0x1E($s0)
.L800BB000:
/* 25C00 800BB000 8602001C */  lh         $v0, 0x1C($s0)
/* 25C04 800BB004 50400001 */  beql       $v0, $zero, .L800BB00C
/* 25C08 800BB008 A61E001C */   sh        $fp, 0x1C($s0)
.L800BB00C:
/* 25C0C 800BB00C 8602001E */  lh         $v0, 0x1E($s0)
/* 25C10 800BB010 50400001 */  beql       $v0, $zero, .L800BB018
/* 25C14 800BB014 A61E001E */   sh        $fp, 0x1E($s0)
.L800BB018:
/* 25C18 800BB018 8E04003C */  lw         $a0, 0x3C($s0)
/* 25C1C 800BB01C 84830008 */  lh         $v1, 0x8($a0)
/* 25C20 800BB020 2402000C */  addiu      $v0, $zero, 0xC
/* 25C24 800BB024 14620003 */  bne        $v1, $v0, .L800BB034
/* 25C28 800BB028 00000000 */   nop
/* 25C2C 800BB02C 8C82000C */  lw         $v0, 0xC($a0)
/* 25C30 800BB030 A6020018 */  sh         $v0, 0x18($s0)
.L800BB034:
/* 25C34 800BB034 8E02003C */  lw         $v0, 0x3C($s0)
/* 25C38 800BB038 84430008 */  lh         $v1, 0x8($v0)
/* 25C3C 800BB03C 2402000B */  addiu      $v0, $zero, 0xB
/* 25C40 800BB040 1462000B */  bne        $v1, $v0, .L800BB070
/* 25C44 800BB044 00000000 */   nop
/* 25C48 800BB048 8E02003C */  lw         $v0, 0x3C($s0)
/* 25C4C 800BB04C AE000030 */  sw         $zero, 0x30($s0)
/* 25C50 800BB050 8C42000C */  lw         $v0, 0xC($v0)
/* 25C54 800BB054 00420018 */  mult       $v0, $v0
/* 25C58 800BB058 00001012 */  mflo       $v0
/* 25C5C 800BB05C 8E03003C */  lw         $v1, 0x3C($s0)
/* 25C60 800BB060 000213C3 */  sra        $v0, $v0, 15
/* 25C64 800BB064 A602001A */  sh         $v0, 0x1A($s0)
/* 25C68 800BB068 8C620010 */  lw         $v0, 0x10($v1)
/* 25C6C 800BB06C AE020034 */  sw         $v0, 0x34($s0)
.L800BB070:
/* 25C70 800BB070 8E04003C */  lw         $a0, 0x3C($s0)
/* 25C74 800BB074 84830008 */  lh         $v1, 0x8($a0)
/* 25C78 800BB078 24020010 */  addiu      $v0, $zero, 0x10
/* 25C7C 800BB07C 54620047 */  bnel       $v1, $v0, .L800BB19C
/* 25C80 800BB080 AE1E0038 */   sw        $fp, 0x38($s0)
/* 25C84 800BB084 8C82000C */  lw         $v0, 0xC($a0)
/* 25C88 800BB088 8E03003C */  lw         $v1, 0x3C($s0)
/* 25C8C 800BB08C 00021040 */  sll        $v0, $v0, 1
/* 25C90 800BB090 00541021 */  addu       $v0, $v0, $s4
/* 25C94 800BB094 94420000 */  lhu        $v0, 0x0($v0)
/* 25C98 800BB098 A6020020 */  sh         $v0, 0x20($s0)
/* 25C9C 800BB09C 8C62000C */  lw         $v0, 0xC($v1)
/* 25CA0 800BB0A0 2408007F */  addiu      $t0, $zero, 0x7F
/* 25CA4 800BB0A4 01021023 */  subu       $v0, $t0, $v0
/* 25CA8 800BB0A8 00021040 */  sll        $v0, $v0, 1
/* 25CAC 800BB0AC 00541021 */  addu       $v0, $v0, $s4
/* 25CB0 800BB0B0 94420000 */  lhu        $v0, 0x0($v0)
/* 25CB4 800BB0B4 A6020022 */  sh         $v0, 0x22($s0)
/* 25CB8 800BB0B8 0802EC67 */  j          .L800BB19C
/* 25CBC 800BB0BC AE1E0038 */   sw        $fp, 0x38($s0)
glabel .L800BB0C0
/* 25CC0 800BB0C0 8E11003C */  lw         $s1, 0x3C($s0)
/* 25CC4 800BB0C4 8622000A */  lh         $v0, 0xA($s1)
/* 25CC8 800BB0C8 10400005 */  beqz       $v0, .L800BB0E0
/* 25CCC 800BB0CC 02002021 */   addu      $a0, $s0, $zero
/* 25CD0 800BB0D0 8E020008 */  lw         $v0, 0x8($s0)
/* 25CD4 800BB0D4 24050008 */  addiu      $a1, $zero, 0x8
/* 25CD8 800BB0D8 0040F809 */  jalr       $v0
/* 25CDC 800BB0DC 00003021 */   addu      $a2, $zero, $zero
.L800BB0E0:
/* 25CE0 800BB0E0 8E26000C */  lw         $a2, 0xC($s1)
/* 25CE4 800BB0E4 8E020008 */  lw         $v0, 0x8($s0)
/* 25CE8 800BB0E8 02002021 */  addu       $a0, $s0, $zero
/* 25CEC 800BB0EC 0040F809 */  jalr       $v0
/* 25CF0 800BB0F0 24050005 */   addiu     $a1, $zero, 0x5
/* 25CF4 800BB0F4 02002021 */  addu       $a0, $s0, $zero
/* 25CF8 800BB0F8 8E020008 */  lw         $v0, 0x8($s0)
/* 25CFC 800BB0FC 0802EC4C */  j          .L800BB130
/* 25D00 800BB100 24050009 */   addiu     $a1, $zero, 0x9
glabel .L800BB104
/* 25D04 800BB104 02002021 */  addu       $a0, $s0, $zero
/* 25D08 800BB108 27A50018 */  addiu      $a1, $sp, 0x18
/* 25D0C 800BB10C 27A6001A */  addiu      $a2, $sp, 0x1A
/* 25D10 800BB110 02603821 */  addu       $a3, $s3, $zero
/* 25D14 800BB114 AFB60010 */  sw         $s6, 0x10($sp)
/* 25D18 800BB118 0C02ECC5 */  jal        func_800BB314
/* 25D1C 800BB11C AFB20014 */   sw        $s2, 0x14($sp)
/* 25D20 800BB120 00409021 */  addu       $s2, $v0, $zero
/* 25D24 800BB124 02002021 */  addu       $a0, $s0, $zero
/* 25D28 800BB128 8E020008 */  lw         $v0, 0x8($s0)
/* 25D2C 800BB12C 24050004 */  addiu      $a1, $zero, 0x4
.L800BB130:
/* 25D30 800BB130 0040F809 */  jalr       $v0
/* 25D34 800BB134 00003021 */   addu      $a2, $zero, $zero
/* 25D38 800BB138 0802EC67 */  j          .L800BB19C
/* 25D3C 800BB13C 00000000 */   nop
glabel .L800BB140
/* 25D40 800BB140 8E02003C */  lw         $v0, 0x3C($s0)
/* 25D44 800BB144 3C04800F */  lui        $a0, %hi(D_800F6130)
/* 25D48 800BB148 8C846130 */  lw         $a0, %lo(D_800F6130)($a0)
/* 25D4C 800BB14C 8C43000C */  lw         $v1, 0xC($v0)
/* 25D50 800BB150 AC6000D8 */  sw         $zero, 0xD8($v1)
/* 25D54 800BB154 0C02F44D */  jal        func_800BD134
/* 25D58 800BB158 8C45000C */   lw        $a1, 0xC($v0)
/* 25D5C 800BB15C 0802EC67 */  j          .L800BB19C
/* 25D60 800BB160 00000000 */   nop
glabel .L800BB164
/* 25D64 800BB164 02002021 */  addu       $a0, $s0, $zero
/* 25D68 800BB168 27A50018 */  addiu      $a1, $sp, 0x18
/* 25D6C 800BB16C 27A6001A */  addiu      $a2, $sp, 0x1A
/* 25D70 800BB170 02603821 */  addu       $a3, $s3, $zero
/* 25D74 800BB174 AFB60010 */  sw         $s6, 0x10($sp)
/* 25D78 800BB178 0C02ECC5 */  jal        func_800BB314
/* 25D7C 800BB17C AFB20014 */   sw        $s2, 0x14($sp)
/* 25D80 800BB180 8E03003C */  lw         $v1, 0x3C($s0)
/* 25D84 800BB184 84650008 */  lh         $a1, 0x8($v1)
/* 25D88 800BB188 8C66000C */  lw         $a2, 0xC($v1)
/* 25D8C 800BB18C 8E030008 */  lw         $v1, 0x8($s0)
/* 25D90 800BB190 00409021 */  addu       $s2, $v0, $zero
/* 25D94 800BB194 0060F809 */  jalr       $v1
/* 25D98 800BB198 02002021 */   addu      $a0, $s0, $zero
.L800BB19C:
/* 25D9C 800BB19C 8E05003C */  lw         $a1, 0x3C($s0)
/* 25DA0 800BB1A0 02F3B823 */  subu       $s7, $s7, $s3
/* 25DA4 800BB1A4 97A2001A */  lhu        $v0, 0x1A($sp)
/* 25DA8 800BB1A8 8CA40000 */  lw         $a0, 0x0($a1)
/* 25DAC 800BB1AC 00131840 */  sll        $v1, $s3, 1
/* 25DB0 800BB1B0 00431021 */  addu       $v0, $v0, $v1
/* 25DB4 800BB1B4 A7A2001A */  sh         $v0, 0x1A($sp)
/* 25DB8 800BB1B8 14800002 */  bnez       $a0, .L800BB1C4
/* 25DBC 800BB1BC AE04003C */   sw        $a0, 0x3C($s0)
/* 25DC0 800BB1C0 AE000040 */  sw         $zero, 0x40($s0)
.L800BB1C4:
/* 25DC4 800BB1C4 0C02F432 */  jal        func_800BD0C8
/* 25DC8 800BB1C8 00A02021 */   addu      $a0, $a1, $zero
/* 25DCC 800BB1CC 8E02003C */  lw         $v0, 0x3C($s0)
/* 25DD0 800BB1D0 1440FEF2 */  bnez       $v0, .L800BAD9C
/* 25DD4 800BB1D4 00000000 */   nop
.L800BB1D8:
/* 25DD8 800BB1D8 02002021 */  addu       $a0, $s0, $zero
/* 25DDC 800BB1DC 27A50018 */  addiu      $a1, $sp, 0x18
/* 25DE0 800BB1E0 27A6001A */  addiu      $a2, $sp, 0x1A
/* 25DE4 800BB1E4 02E03821 */  addu       $a3, $s7, $zero
/* 25DE8 800BB1E8 AFB60010 */  sw         $s6, 0x10($sp)
/* 25DEC 800BB1EC 0C02ECC5 */  jal        func_800BB314
/* 25DF0 800BB1F0 AFB20014 */   sw        $s2, 0x14($sp)
/* 25DF4 800BB1F4 8E030030 */  lw         $v1, 0x30($s0)
/* 25DF8 800BB1F8 8E040034 */  lw         $a0, 0x34($s0)
/* 25DFC 800BB1FC 0083182A */  slt        $v1, $a0, $v1
/* 25E00 800BB200 10600002 */  beqz       $v1, .L800BB20C
/* 25E04 800BB204 00409021 */   addu      $s2, $v0, $zero
/* 25E08 800BB208 AE040030 */  sw         $a0, 0x30($s0)
.L800BB20C:
/* 25E0C 800BB20C 02401021 */  addu       $v0, $s2, $zero
/* 25E10 800BB210 8FBF004C */  lw         $ra, 0x4C($sp)
/* 25E14 800BB214 8FBE0048 */  lw         $fp, 0x48($sp)
/* 25E18 800BB218 8FB70044 */  lw         $s7, 0x44($sp)
/* 25E1C 800BB21C 8FB60040 */  lw         $s6, 0x40($sp)
/* 25E20 800BB220 8FB5003C */  lw         $s5, 0x3C($sp)
/* 25E24 800BB224 8FB40038 */  lw         $s4, 0x38($sp)
/* 25E28 800BB228 8FB30034 */  lw         $s3, 0x34($sp)
/* 25E2C 800BB22C 8FB20030 */  lw         $s2, 0x30($sp)
/* 25E30 800BB230 8FB1002C */  lw         $s1, 0x2C($sp)
/* 25E34 800BB234 8FB00028 */  lw         $s0, 0x28($sp)
/* 25E38 800BB238 03E00008 */  jr         $ra
/* 25E3C 800BB23C 27BD0050 */   addiu     $sp, $sp, 0x50
.size func_800BAD40, . - func_800BAD40
