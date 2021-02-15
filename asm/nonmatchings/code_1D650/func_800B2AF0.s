.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2AF0
/* 1D6F0 800B2AF0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1D6F4 800B2AF4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1D6F8 800B2AF8 00808021 */  addu       $s0, $a0, $zero
/* 1D6FC 800B2AFC AFB60030 */  sw         $s6, 0x30($sp)
/* 1D700 800B2B00 00A0B021 */  addu       $s6, $a1, $zero
/* 1D704 800B2B04 AFB5002C */  sw         $s5, 0x2c($sp)
/* 1D708 800B2B08 00C0A821 */  addu       $s5, $a2, $zero
/* 1D70C 800B2B0C 00002021 */  addu       $a0, $zero, $zero
/* 1D710 800B2B10 00002821 */  addu       $a1, $zero, $zero
/* 1D714 800B2B14 24070001 */  addiu      $a3, $zero, 1
/* 1D718 800B2B18 2402002C */  addiu      $v0, $zero, 0x2c
/* 1D71C 800B2B1C AFBF0034 */  sw         $ra, 0x34($sp)
/* 1D720 800B2B20 AFB40028 */  sw         $s4, 0x28($sp)
/* 1D724 800B2B24 AFB30024 */  sw         $s3, 0x24($sp)
/* 1D728 800B2B28 AFB20020 */  sw         $s2, 0x20($sp)
/* 1D72C 800B2B2C AFB1001C */  sw         $s1, 0x1c($sp)
/* 1D730 800B2B30 0C02F2E4 */  jal        func_800BCB90
/* 1D734 800B2B34 AFA20010 */   sw        $v0, 0x10($sp)
/* 1D738 800B2B38 00409821 */  addu       $s3, $v0, $zero
/* 1D73C 800B2B3C AE130000 */  sw         $s3, ($s0)
/* 1D740 800B2B40 92C2001C */  lbu        $v0, 0x1c($s6)
/* 1D744 800B2B44 2443FFFF */  addiu      $v1, $v0, -1
/* 1D748 800B2B48 2C620006 */  sltiu      $v0, $v1, 6
/* 1D74C 800B2B4C 10400017 */  beqz       $v0, .L800B2BAC
/* 1D750 800B2B50 00031080 */   sll       $v0, $v1, 2
/* 1D754 800B2B54 3C018010 */  lui        $at, %hi(D_800FEB20)
/* 1D758 800B2B58 00220821 */  addu       $at, $at, $v0
/* 1D75C 800B2B5C 8C22EB20 */  lw         $v0, %lo(D_800FEB20)($at)
/* 1D760 800B2B60 00400008 */  jr         $v0
/* 1D764 800B2B64 00000000 */   nop
/* 1D768 800B2B68 3C12800F */  lui        $s2, %hi(D_800F1550)
/* 1D76C 800B2B6C 0802CAED */  j          .L800B2BB4
/* 1D770 800B2B70 26521550 */   addiu     $s2, $s2, %lo(D_800F1550)
/* 1D774 800B2B74 3C12800F */  lui        $s2, %hi(D_800F15B8)
/* 1D778 800B2B78 0802CAED */  j          .L800B2BB4
/* 1D77C 800B2B7C 265215B8 */   addiu     $s2, $s2, %lo(D_800F15B8)
/* 1D780 800B2B80 3C12800F */  lui        $s2, %hi(D_800F1640)
/* 1D784 800B2B84 0802CAED */  j          .L800B2BB4
/* 1D788 800B2B88 26521640 */   addiu     $s2, $s2, %lo(D_800F1640)
/* 1D78C 800B2B8C 3C12800F */  lui        $s2, %hi(D_800F1668)
/* 1D790 800B2B90 0802CAED */  j          .L800B2BB4
/* 1D794 800B2B94 26521668 */   addiu     $s2, $s2, %lo(D_800F1668)
/* 1D798 800B2B98 3C12800F */  lui        $s2, %hi(D_800F1690)
/* 1D79C 800B2B9C 0802CAED */  j          .L800B2BB4
/* 1D7A0 800B2BA0 26521690 */   addiu     $s2, $s2, %lo(D_800F1690)
/* 1D7A4 800B2BA4 0802CAED */  j          .L800B2BB4
/* 1D7A8 800B2BA8 8ED20020 */   lw        $s2, 0x20($s6)
.L800B2BAC:
/* 1D7AC 800B2BAC 3C12800F */  lui        $s2, %hi(D_800F16B8)
/* 1D7B0 800B2BB0 265216B8 */  addiu      $s2, $s2, %lo(D_800F16B8)
.L800B2BB4:
/* 1D7B4 800B2BB4 8E420000 */  lw         $v0, ($s2)
/* 1D7B8 800B2BB8 00002021 */  addu       $a0, $zero, $zero
/* 1D7BC 800B2BBC A2620024 */  sb         $v0, 0x24($s3)
/* 1D7C0 800B2BC0 92670024 */  lbu        $a3, 0x24($s3)
/* 1D7C4 800B2BC4 8E420004 */  lw         $v0, 4($s2)
/* 1D7C8 800B2BC8 00002821 */  addu       $a1, $zero, $zero
/* 1D7CC 800B2BCC 02A03021 */  addu       $a2, $s5, $zero
/* 1D7D0 800B2BD0 AE62001C */  sw         $v0, 0x1c($s3)
/* 1D7D4 800B2BD4 24020028 */  addiu      $v0, $zero, 0x28
/* 1D7D8 800B2BD8 0C02F2E4 */  jal        func_800BCB90
/* 1D7DC 800B2BDC AFA20010 */   sw        $v0, 0x10($sp)
/* 1D7E0 800B2BE0 00002021 */  addu       $a0, $zero, $zero
/* 1D7E4 800B2BE4 AE620020 */  sw         $v0, 0x20($s3)
/* 1D7E8 800B2BE8 24020002 */  addiu      $v0, $zero, 2
/* 1D7EC 800B2BEC AFA20010 */  sw         $v0, 0x10($sp)
/* 1D7F0 800B2BF0 8E67001C */  lw         $a3, 0x1c($s3)
/* 1D7F4 800B2BF4 00002821 */  addu       $a1, $zero, $zero
/* 1D7F8 800B2BF8 0C02F2E4 */  jal        func_800BCB90
/* 1D7FC 800B2BFC 02A03021 */   addu      $a2, $s5, $zero
/* 1D800 800B2C00 8E63001C */  lw         $v1, 0x1c($s3)
/* 1D804 800B2C04 24110002 */  addiu      $s1, $zero, 2
/* 1D808 800B2C08 00002021 */  addu       $a0, $zero, $zero
/* 1D80C 800B2C0C AE620014 */  sw         $v0, 0x14($s3)
/* 1D810 800B2C10 1060000C */  beqz       $v1, .L800B2C44
/* 1D814 800B2C14 AE620018 */   sw        $v0, 0x18($s3)
.L800B2C18:
/* 1D818 800B2C18 8E630014 */  lw         $v1, 0x14($s3)
/* 1D81C 800B2C1C 3082FFFF */  andi       $v0, $a0, 0xffff
/* 1D820 800B2C20 00021040 */  sll        $v0, $v0, 1
/* 1D824 800B2C24 00431021 */  addu       $v0, $v0, $v1
/* 1D828 800B2C28 A4400000 */  sh         $zero, ($v0)
/* 1D82C 800B2C2C 8E63001C */  lw         $v1, 0x1c($s3)
/* 1D830 800B2C30 24840001 */  addiu      $a0, $a0, 1
/* 1D834 800B2C34 3082FFFF */  andi       $v0, $a0, 0xffff
/* 1D838 800B2C38 0043102B */  sltu       $v0, $v0, $v1
/* 1D83C 800B2C3C 1440FFF6 */  bnez       $v0, .L800B2C18
/* 1D840 800B2C40 00000000 */   nop
.L800B2C44:
/* 1D844 800B2C44 92620024 */  lbu        $v0, 0x24($s3)
/* 1D848 800B2C48 1040009A */  beqz       $v0, .L800B2EB4
/* 1D84C 800B2C4C 0000A021 */   addu      $s4, $zero, $zero
/* 1D850 800B2C50 3282FFFF */  andi       $v0, $s4, 0xffff
.L800B2C54:
/* 1D854 800B2C54 00021880 */  sll        $v1, $v0, 2
/* 1D858 800B2C58 00621821 */  addu       $v1, $v1, $v0
/* 1D85C 800B2C5C 8E650020 */  lw         $a1, 0x20($s3)
/* 1D860 800B2C60 02202021 */  addu       $a0, $s1, $zero
/* 1D864 800B2C64 3082FFFF */  andi       $v0, $a0, 0xffff
/* 1D868 800B2C68 00021080 */  sll        $v0, $v0, 2
/* 1D86C 800B2C6C 00521021 */  addu       $v0, $v0, $s2
/* 1D870 800B2C70 8C420000 */  lw         $v0, ($v0)
/* 1D874 800B2C74 000318C0 */  sll        $v1, $v1, 3
/* 1D878 800B2C78 00A38021 */  addu       $s0, $a1, $v1
/* 1D87C 800B2C7C 24850001 */  addiu      $a1, $a0, 1
/* 1D880 800B2C80 AE020000 */  sw         $v0, ($s0)
/* 1D884 800B2C84 30A2FFFF */  andi       $v0, $a1, 0xffff
/* 1D888 800B2C88 00021080 */  sll        $v0, $v0, 2
/* 1D88C 800B2C8C 00521021 */  addu       $v0, $v0, $s2
/* 1D890 800B2C90 8C430000 */  lw         $v1, ($v0)
/* 1D894 800B2C94 24A20001 */  addiu      $v0, $a1, 1
/* 1D898 800B2C98 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1D89C 800B2C9C 00021080 */  sll        $v0, $v0, 2
/* 1D8A0 800B2CA0 00521021 */  addu       $v0, $v0, $s2
/* 1D8A4 800B2CA4 AE030004 */  sw         $v1, 4($s0)
/* 1D8A8 800B2CA8 8C430000 */  lw         $v1, ($v0)
/* 1D8AC 800B2CAC 24A20002 */  addiu      $v0, $a1, 2
/* 1D8B0 800B2CB0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1D8B4 800B2CB4 00021080 */  sll        $v0, $v0, 2
/* 1D8B8 800B2CB8 00521021 */  addu       $v0, $v0, $s2
/* 1D8BC 800B2CBC A603000A */  sh         $v1, 0xa($s0)
/* 1D8C0 800B2CC0 8C430000 */  lw         $v1, ($v0)
/* 1D8C4 800B2CC4 24A20003 */  addiu      $v0, $a1, 3
/* 1D8C8 800B2CC8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1D8CC 800B2CCC 00021080 */  sll        $v0, $v0, 2
/* 1D8D0 800B2CD0 00521021 */  addu       $v0, $v0, $s2
/* 1D8D4 800B2CD4 A6030008 */  sh         $v1, 8($s0)
/* 1D8D8 800B2CD8 8C420000 */  lw         $v0, ($v0)
/* 1D8DC 800B2CDC 24B10004 */  addiu      $s1, $a1, 4
/* 1D8E0 800B2CE0 A602000C */  sh         $v0, 0xc($s0)
/* 1D8E4 800B2CE4 3222FFFF */  andi       $v0, $s1, 0xffff
/* 1D8E8 800B2CE8 00021080 */  sll        $v0, $v0, 2
/* 1D8EC 800B2CEC 00521021 */  addu       $v0, $v0, $s2
/* 1D8F0 800B2CF0 8C420000 */  lw         $v0, ($v0)
/* 1D8F4 800B2CF4 10400043 */  beqz       $v0, .L800B2E04
/* 1D8F8 800B2CF8 02201021 */   addu      $v0, $s1, $zero
/* 1D8FC 800B2CFC 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1D900 800B2D00 00021080 */  sll        $v0, $v0, 2
/* 1D904 800B2D04 3C01447A */  lui        $at, 0x447a
/* 1D908 800B2D08 44811000 */  mtc1       $at, $f2
/* 1D90C 800B2D0C 00521021 */  addu       $v0, $v0, $s2
/* 1D910 800B2D10 C4400000 */  lwc1       $f0, ($v0)
/* 1D914 800B2D14 46800020 */  cvt.s.w    $f0, $f0
/* 1D918 800B2D18 46020003 */  div.s      $f0, $f0, $f2
/* 1D91C 800B2D1C 46000021 */  cvt.d.s    $f0, $f0
/* 1D920 800B2D20 46200000 */  add.d      $f0, $f0, $f0
/* 1D924 800B2D24 C6C20018 */  lwc1       $f2, 0x18($s6)
/* 1D928 800B2D28 468010A1 */  cvt.d.w    $f2, $f2
/* 1D92C 800B2D2C 46220003 */  div.d      $f0, $f0, $f2
/* 1D930 800B2D30 8E040004 */  lw         $a0, 4($s0)
/* 1D934 800B2D34 8E030000 */  lw         $v1, ($s0)
/* 1D938 800B2D38 24A20005 */  addiu      $v0, $a1, 5
/* 1D93C 800B2D3C 24B10006 */  addiu      $s1, $a1, 6
/* 1D940 800B2D40 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1D944 800B2D44 00021080 */  sll        $v0, $v0, 2
/* 1D948 800B2D48 00521021 */  addu       $v0, $v0, $s2
/* 1D94C 800B2D4C 00832023 */  subu       $a0, $a0, $v1
/* 1D950 800B2D50 3C018010 */  lui        $at, %hi(D_800FEB38)
/* 1D954 800B2D54 D422EB38 */  ldc1       $f2, %lo(D_800FEB38)($at)
/* 1D958 800B2D58 44842000 */  mtc1       $a0, $f4
/* 1D95C 800B2D5C 00000000 */  nop
/* 1D960 800B2D60 46802121 */  cvt.d.w    $f4, $f4
/* 1D964 800B2D64 46200020 */  cvt.s.d    $f0, $f0
/* 1D968 800B2D68 E6000010 */  swc1       $f0, 0x10($s0)
/* 1D96C 800B2D6C C4400000 */  lwc1       $f0, ($v0)
/* 1D970 800B2D70 46800020 */  cvt.s.w    $f0, $f0
/* 1D974 800B2D74 46000021 */  cvt.d.s    $f0, $f0
/* 1D978 800B2D78 04810004 */  bgez       $a0, .L800B2D8C
/* 1D97C 800B2D7C 46220083 */   div.d     $f2, $f0, $f2
/* 1D980 800B2D80 3C018010 */  lui        $at, %hi(D_800FEB40)
/* 1D984 800B2D84 D420EB40 */  ldc1       $f0, %lo(D_800FEB40)($at)
/* 1D988 800B2D88 46202100 */  add.d      $f4, $f4, $f0
.L800B2D8C:
/* 1D98C 800B2D8C 00002021 */  addu       $a0, $zero, $zero
/* 1D990 800B2D90 46241002 */  mul.d      $f0, $f2, $f4
/* 1D994 800B2D94 00002821 */  addu       $a1, $zero, $zero
/* 1D998 800B2D98 3C013F80 */  lui        $at, 0x3f80
/* 1D99C 800B2D9C 44811000 */  mtc1       $at, $f2
/* 1D9A0 800B2DA0 02A03021 */  addu       $a2, $s5, $zero
/* 1D9A4 800B2DA4 24070001 */  addiu      $a3, $zero, 1
/* 1D9A8 800B2DA8 24020034 */  addiu      $v0, $zero, 0x34
/* 1D9AC 800B2DAC AE000018 */  sw         $zero, 0x18($s0)
/* 1D9B0 800B2DB0 E6020014 */  swc1       $f2, 0x14($s0)
/* 1D9B4 800B2DB4 46200020 */  cvt.s.d    $f0, $f0
/* 1D9B8 800B2DB8 E600001C */  swc1       $f0, 0x1c($s0)
/* 1D9BC 800B2DBC 0C02F2E4 */  jal        func_800BCB90
/* 1D9C0 800B2DC0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1D9C4 800B2DC4 00002021 */  addu       $a0, $zero, $zero
/* 1D9C8 800B2DC8 00002821 */  addu       $a1, $zero, $zero
/* 1D9CC 800B2DCC 02A03021 */  addu       $a2, $s5, $zero
/* 1D9D0 800B2DD0 24070001 */  addiu      $a3, $zero, 1
/* 1D9D4 800B2DD4 AE020024 */  sw         $v0, 0x24($s0)
/* 1D9D8 800B2DD8 24020020 */  addiu      $v0, $zero, 0x20
/* 1D9DC 800B2DDC 0C02F2E4 */  jal        func_800BCB90
/* 1D9E0 800B2DE0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1D9E4 800B2DE4 8E030024 */  lw         $v1, 0x24($s0)
/* 1D9E8 800B2DE8 AC620014 */  sw         $v0, 0x14($v1)
/* 1D9EC 800B2DEC 8E020024 */  lw         $v0, 0x24($s0)
/* 1D9F0 800B2DF0 AC400020 */  sw         $zero, 0x20($v0)
/* 1D9F4 800B2DF4 8E030024 */  lw         $v1, 0x24($s0)
/* 1D9F8 800B2DF8 24020001 */  addiu      $v0, $zero, 1
/* 1D9FC 800B2DFC 0802CB83 */  j          .L800B2E0C
/* 1DA00 800B2E00 AC620024 */   sw        $v0, 0x24($v1)
.L800B2E04:
/* 1DA04 800B2E04 AE000024 */  sw         $zero, 0x24($s0)
/* 1DA08 800B2E08 24B10006 */  addiu      $s1, $a1, 6
.L800B2E0C:
/* 1DA0C 800B2E0C 3222FFFF */  andi       $v0, $s1, 0xffff
/* 1DA10 800B2E10 00021080 */  sll        $v0, $v0, 2
/* 1DA14 800B2E14 00521021 */  addu       $v0, $v0, $s2
/* 1DA18 800B2E18 8C420000 */  lw         $v0, ($v0)
/* 1DA1C 800B2E1C 1040001D */  beqz       $v0, .L800B2E94
/* 1DA20 800B2E20 00002021 */   addu      $a0, $zero, $zero
/* 1DA24 800B2E24 00002821 */  addu       $a1, $zero, $zero
/* 1DA28 800B2E28 02A03021 */  addu       $a2, $s5, $zero
/* 1DA2C 800B2E2C 24070001 */  addiu      $a3, $zero, 1
/* 1DA30 800B2E30 24020030 */  addiu      $v0, $zero, 0x30
/* 1DA34 800B2E34 0C02F2E4 */  jal        func_800BCB90
/* 1DA38 800B2E38 AFA20010 */   sw        $v0, 0x10($sp)
/* 1DA3C 800B2E3C 00002021 */  addu       $a0, $zero, $zero
/* 1DA40 800B2E40 00002821 */  addu       $a1, $zero, $zero
/* 1DA44 800B2E44 02A03021 */  addu       $a2, $s5, $zero
/* 1DA48 800B2E48 24070001 */  addiu      $a3, $zero, 1
/* 1DA4C 800B2E4C AE020020 */  sw         $v0, 0x20($s0)
/* 1DA50 800B2E50 24020008 */  addiu      $v0, $zero, 8
/* 1DA54 800B2E54 0C02F2E4 */  jal        func_800BCB90
/* 1DA58 800B2E58 AFA20010 */   sw        $v0, 0x10($sp)
/* 1DA5C 800B2E5C 8E030020 */  lw         $v1, 0x20($s0)
/* 1DA60 800B2E60 AC620028 */  sw         $v0, 0x28($v1)
/* 1DA64 800B2E64 8E030020 */  lw         $v1, 0x20($s0)
/* 1DA68 800B2E68 02201021 */  addu       $v0, $s1, $zero
/* 1DA6C 800B2E6C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1DA70 800B2E70 00021080 */  sll        $v0, $v0, 2
/* 1DA74 800B2E74 00521021 */  addu       $v0, $v0, $s2
/* 1DA78 800B2E78 8C420000 */  lw         $v0, ($v0)
/* 1DA7C 800B2E7C A4620000 */  sh         $v0, ($v1)
/* 1DA80 800B2E80 8E040020 */  lw         $a0, 0x20($s0)
/* 1DA84 800B2E84 0C02E63C */  jal        func_800B98F0
/* 1DA88 800B2E88 26310001 */   addiu     $s1, $s1, 1
/* 1DA8C 800B2E8C 0802CBA7 */  j          .L800B2E9C
/* 1DA90 800B2E90 00000000 */   nop
.L800B2E94:
/* 1DA94 800B2E94 AE000020 */  sw         $zero, 0x20($s0)
/* 1DA98 800B2E98 26310001 */  addiu      $s1, $s1, 1
.L800B2E9C:
/* 1DA9C 800B2E9C 92630024 */  lbu        $v1, 0x24($s3)
/* 1DAA0 800B2EA0 26940001 */  addiu      $s4, $s4, 1
/* 1DAA4 800B2EA4 3282FFFF */  andi       $v0, $s4, 0xffff
/* 1DAA8 800B2EA8 0043102B */  sltu       $v0, $v0, $v1
/* 1DAAC 800B2EAC 1440FF69 */  bnez       $v0, .L800B2C54
/* 1DAB0 800B2EB0 3282FFFF */   andi      $v0, $s4, 0xffff
.L800B2EB4:
/* 1DAB4 800B2EB4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1DAB8 800B2EB8 8FB60030 */  lw         $s6, 0x30($sp)
/* 1DABC 800B2EBC 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1DAC0 800B2EC0 8FB40028 */  lw         $s4, 0x28($sp)
/* 1DAC4 800B2EC4 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DAC8 800B2EC8 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DACC 800B2ECC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1DAD0 800B2ED0 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DAD4 800B2ED4 03E00008 */  jr         $ra
/* 1DAD8 800B2ED8 27BD0038 */   addiu     $sp, $sp, 0x38
