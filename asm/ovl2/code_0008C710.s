.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003D760_8C710
/* 8C710 8003D760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C714 8003D764 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C718 8003D768 3C108008 */  lui        $s0, %hi(D_800805E0)
/* 8C71C 8003D76C 261005E0 */  addiu      $s0, $s0, %lo(D_800805E0)
/* 8C720 8003D770 02002021 */  addu       $a0, $s0, $zero
/* 8C724 8003D774 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C728 8003D778 0C030134 */  jal        bzero
/* 8C72C 8003D77C 24050058 */   addiu     $a1, $zero, 0x58
/* 8C730 8003D780 24020009 */  addiu      $v0, $zero, 9
/* 8C734 8003D784 24030001 */  addiu      $v1, $zero, 1
/* 8C738 8003D788 A6020000 */  sh         $v0, ($s0)
/* 8C73C 8003D78C 24020001 */  addiu      $v0, $zero, 1
/* 8C740 8003D790 26100057 */  addiu      $s0, $s0, 0x57
.L8003D794:
/* 8C744 8003D794 A2030000 */  sb         $v1, ($s0)
/* 8C748 8003D798 2442FFFF */  addiu      $v0, $v0, -1
/* 8C74C 8003D79C 0441FFFD */  bgez       $v0, .L8003D794
/* 8C750 8003D7A0 2610FFFF */   addiu     $s0, $s0, -1
/* 8C754 8003D7A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C758 8003D7A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C75C 8003D7AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C760 8003D7B0 03E00008 */  jr         $ra
/* 8C764 8003D7B4 00000000 */   nop

glabel func_8003D7B8_8C768
/* 8C768 8003D7B8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8C76C 8003D7BC AFB3002C */  sw         $s3, 0x2c($sp)
/* 8C770 8003D7C0 24130001 */  addiu      $s3, $zero, 1
/* 8C774 8003D7C4 AFB00020 */  sw         $s0, 0x20($sp)
/* 8C778 8003D7C8 3C108008 */  lui        $s0, %hi(D_80080636)
/* 8C77C 8003D7CC 26100636 */  addiu      $s0, $s0, %lo(D_80080636)
/* 8C780 8003D7D0 AFB10024 */  sw         $s1, 0x24($sp)
/* 8C784 8003D7D4 3C118008 */  lui        $s1, %hi(D_8008072C)
/* 8C788 8003D7D8 2631072C */  addiu      $s1, $s1, %lo(D_8008072C)
/* 8C78C 8003D7DC AFB20028 */  sw         $s2, 0x28($sp)
/* 8C790 8003D7E0 00009021 */  addu       $s2, $zero, $zero
/* 8C794 8003D7E4 AFBF0030 */  sw         $ra, 0x30($sp)
.L8003D7E8:
/* 8C798 8003D7E8 3C038007 */  lui        $v1, %hi(D_8006AD90_B9D40)
/* 8C79C 8003D7EC 8463AD90 */  lh         $v1, %lo(D_8006AD90_B9D40)($v1)
/* 8C7A0 8003D7F0 00031040 */  sll        $v0, $v1, 1
/* 8C7A4 8003D7F4 00431021 */  addu       $v0, $v0, $v1
/* 8C7A8 8003D7F8 00023040 */  sll        $a2, $v0, 1
/* 8C7AC 8003D7FC 3C038007 */  lui        $v1, %hi(D_8006AD30_B9CE0)
/* 8C7B0 8003D800 00661821 */  addu       $v1, $v1, $a2
/* 8C7B4 8003D804 8063AD30 */  lb         $v1, %lo(D_8006AD30_B9CE0)($v1)
/* 8C7B8 8003D808 2402FFFF */  addiu      $v0, $zero, -1
/* 8C7BC 8003D80C 14620004 */  bne        $v1, $v0, .L8003D820
/* 8C7C0 8003D810 00602821 */   addu      $a1, $v1, $zero
/* 8C7C4 8003D814 AE200000 */  sw         $zero, ($s1)
/* 8C7C8 8003D818 0800F63C */  j          .L8003D8F0
/* 8C7CC 8003D81C A2130000 */   sb        $s3, ($s0)
.L8003D820:
/* 8C7D0 8003D820 3C028007 */  lui        $v0, %hi(D_8006AD32_B9CE2)
/* 8C7D4 8003D824 00461021 */  addu       $v0, $v0, $a2
/* 8C7D8 8003D828 8442AD32 */  lh         $v0, %lo(D_8006AD32_B9CE2)($v0)
/* 8C7DC 8003D82C 3C038008 */  lui        $v1, %hi(D_80084614)
/* 8C7E0 8003D830 8C634614 */  lw         $v1, %lo(D_80084614)($v1)
/* 8C7E4 8003D834 3C048007 */  lui        $a0, %hi(D_8006AD31_B9CE1)
/* 8C7E8 8003D838 00862021 */  addu       $a0, $a0, $a2
/* 8C7EC 8003D83C 9084AD31 */  lbu        $a0, %lo(D_8006AD31_B9CE1)($a0)
/* 8C7F0 8003D840 3C078007 */  lui        $a3, %hi(D_8006AD34_B9CE4)
/* 8C7F4 8003D844 00E63821 */  addu       $a3, $a3, $a2
/* 8C7F8 8003D848 80E7AD34 */  lb         $a3, %lo(D_8006AD34_B9CE4)($a3)
/* 8C7FC 8003D84C C4620008 */  lwc1       $f2, 8($v1)
/* 8C800 8003D850 44820000 */  mtc1       $v0, $f0
/* 8C804 8003D854 00000000 */  nop
/* 8C808 8003D858 46800020 */  cvt.s.w    $f0, $f0
/* 8C80C 8003D85C 3C028008 */  lui        $v0, %hi(D_80080635)
/* 8C810 8003D860 90420635 */  lbu        $v0, %lo(D_80080635)($v0)
/* 8C814 8003D864 46020000 */  add.s      $f0, $f0, $f2
/* 8C818 8003D868 30A500FF */  andi       $a1, $a1, 0xff
/* 8C81C 8003D86C AFB30010 */  sw         $s3, 0x10($sp)
/* 8C820 8003D870 AFA20014 */  sw         $v0, 0x14($sp)
/* 8C824 8003D874 4600008D */  trunc.w.s  $f2, $f0
/* 8C828 8003D878 44061000 */  mfc1       $a2, $f2
/* 8C82C 8003D87C 00000000 */  nop
/* 8C830 8003D880 00063400 */  sll        $a2, $a2, 0x10
/* 8C834 8003D884 0C00F938 */  jal        func_8003E4E0_8D490
/* 8C838 8003D888 00063403 */   sra       $a2, $a2, 0x10
/* 8C83C 8003D88C AE220000 */  sw         $v0, ($s1)
/* 8C840 8003D890 A2000000 */  sb         $zero, ($s0)
/* 8C844 8003D894 3C038007 */  lui        $v1, %hi(D_8006AD90_B9D40)
/* 8C848 8003D898 8463AD90 */  lh         $v1, %lo(D_8006AD90_B9D40)($v1)
/* 8C84C 8003D89C 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8C850 8003D8A0 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8C854 8003D8A4 00031040 */  sll        $v0, $v1, 1
/* 8C858 8003D8A8 00431021 */  addu       $v0, $v0, $v1
/* 8C85C 8003D8AC 00021040 */  sll        $v0, $v0, 1
/* 8C860 8003D8B0 3C058007 */  lui        $a1, %hi(D_8006AD30_B9CE0)
/* 8C864 8003D8B4 00A22821 */  addu       $a1, $a1, $v0
/* 8C868 8003D8B8 80A5AD30 */  lb         $a1, %lo(D_8006AD30_B9CE0)($a1)
/* 8C86C 8003D8BC 0C0E4959 */  jal        func_80392564
/* 8C870 8003D8C0 24060001 */   addiu     $a2, $zero, 1
/* 8C874 8003D8C4 3C038007 */  lui        $v1, %hi(D_8006AD90_B9D40)
/* 8C878 8003D8C8 8463AD90 */  lh         $v1, %lo(D_8006AD90_B9D40)($v1)
/* 8C87C 8003D8CC 00031040 */  sll        $v0, $v1, 1
/* 8C880 8003D8D0 00431021 */  addu       $v0, $v0, $v1
/* 8C884 8003D8D4 00021040 */  sll        $v0, $v0, 1
/* 8C888 8003D8D8 3C018007 */  lui        $at, %hi(D_8006AD30_B9CE0)
/* 8C88C 8003D8DC 00220821 */  addu       $at, $at, $v0
/* 8C890 8003D8E0 8022AD30 */  lb         $v0, %lo(D_8006AD30_B9CE0)($at)
/* 8C894 8003D8E4 3C018008 */  lui        $at, %hi(D_80083A34)
/* 8C898 8003D8E8 00320821 */  addu       $at, $at, $s2
/* 8C89C 8003D8EC AC223A34 */  sw         $v0, %lo(D_80083A34)($at)
.L8003D8F0:
/* 8C8A0 8003D8F0 26100001 */  addiu      $s0, $s0, 1
/* 8C8A4 8003D8F4 3C028007 */  lui        $v0, %hi(D_8006AD90_B9D40)
/* 8C8A8 8003D8F8 9442AD90 */  lhu        $v0, %lo(D_8006AD90_B9D40)($v0)
/* 8C8AC 8003D8FC 26310004 */  addiu      $s1, $s1, 4
/* 8C8B0 8003D900 24420001 */  addiu      $v0, $v0, 1
/* 8C8B4 8003D904 3C018007 */  lui        $at, %hi(D_8006AD90_B9D40)
/* 8C8B8 8003D908 A422AD90 */  sh         $v0, %lo(D_8006AD90_B9D40)($at)
/* 8C8BC 8003D90C 3C028008 */  lui        $v0, %hi(D_80080638)
/* 8C8C0 8003D910 24420638 */  addiu      $v0, $v0, %lo(D_80080638)
/* 8C8C4 8003D914 0202102A */  slt        $v0, $s0, $v0
/* 8C8C8 8003D918 1440FFB3 */  bnez       $v0, .L8003D7E8
/* 8C8CC 8003D91C 26520004 */   addiu     $s2, $s2, 4
/* 8C8D0 8003D920 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8C8D4 8003D924 8FB3002C */  lw         $s3, 0x2c($sp)
/* 8C8D8 8003D928 8FB20028 */  lw         $s2, 0x28($sp)
/* 8C8DC 8003D92C 8FB10024 */  lw         $s1, 0x24($sp)
/* 8C8E0 8003D930 8FB00020 */  lw         $s0, 0x20($sp)
/* 8C8E4 8003D934 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8C8E8 8003D938 03E00008 */  jr         $ra
/* 8C8EC 8003D93C 00000000 */   nop

glabel func_8003D940_8C8F0
/* 8C8F0 8003D940 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C8F4 8003D944 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C8F8 8003D948 00808021 */  addu       $s0, $a0, $zero
/* 8C8FC 8003D94C 3C048008 */  lui        $a0, %hi(D_800805E0)
/* 8C900 8003D950 248405E0 */  addiu      $a0, $a0, %lo(D_800805E0)
/* 8C904 8003D954 24020005 */  addiu      $v0, $zero, 5
/* 8C908 8003D958 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C90C 8003D95C 3C018008 */  lui        $at, %hi(D_80080728)
/* 8C910 8003D960 AC220728 */  sw         $v0, %lo(D_80080728)($at)
/* 8C914 8003D964 3C018008 */  lui        $at, %hi(D_80083A2C)
/* 8C918 8003D968 AC203A2C */  sw         $zero, %lo(D_80083A2C)($at)
/* 8C91C 8003D96C 0C030134 */  jal        bzero
/* 8C920 8003D970 24050058 */   addiu     $a1, $zero, 0x58
/* 8C924 8003D974 24060001 */  addiu      $a2, $zero, 1
/* 8C928 8003D978 24050001 */  addiu      $a1, $zero, 1
/* 8C92C 8003D97C 3C038008 */  lui        $v1, %hi(D_800805E0)
/* 8C930 8003D980 246305E0 */  addiu      $v1, $v1, %lo(D_800805E0)
/* 8C934 8003D984 24640057 */  addiu      $a0, $v1, 0x57
/* 8C938 8003D988 24020009 */  addiu      $v0, $zero, 9
/* 8C93C 8003D98C A4620000 */  sh         $v0, ($v1)
.L8003D990:
/* 8C940 8003D990 A0860000 */  sb         $a2, ($a0)
/* 8C944 8003D994 24A5FFFF */  addiu      $a1, $a1, -1
/* 8C948 8003D998 04A1FFFD */  bgez       $a1, .L8003D990
/* 8C94C 8003D99C 2484FFFF */   addiu     $a0, $a0, -1
/* 8C950 8003D9A0 24040134 */  addiu      $a0, $zero, 0x134
/* 8C954 8003D9A4 00002821 */  addu       $a1, $zero, $zero
/* 8C958 8003D9A8 3C018008 */  lui        $at, %hi(D_80080635)
/* 8C95C 8003D9AC A0300635 */  sb         $s0, %lo(D_80080635)($at)
/* 8C960 8003D9B0 0C027DAC */  jal        func_8009F6B0
/* 8C964 8003D9B4 00003021 */   addu      $a2, $zero, $zero
/* 8C968 8003D9B8 3C018008 */  lui        $at, %hi(D_800805E4)
/* 8C96C 8003D9BC AC2205E4 */  sw         $v0, %lo(D_800805E4)($at)
/* 8C970 8003D9C0 90430066 */  lbu        $v1, 0x66($v0)
/* 8C974 8003D9C4 3C01C2C8 */  lui        $at, 0xc2c8
/* 8C978 8003D9C8 44810000 */  mtc1       $at, $f0
/* 8C97C 8003D9CC 00000000 */  nop
/* 8C980 8003D9D0 3C0141E0 */  lui        $at, 0x41e0
/* 8C984 8003D9D4 44811000 */  mtc1       $at, $f2
/* 8C988 8003D9D8 00000000 */  nop
/* 8C98C 8003D9DC 3C0141F0 */  lui        $at, 0x41f0
/* 8C990 8003D9E0 44812000 */  mtc1       $at, $f4
/* 8C994 8003D9E4 00000000 */  nop
/* 8C998 8003D9E8 34630007 */  ori        $v1, $v1, 7
/* 8C99C 8003D9EC A0430066 */  sb         $v1, 0x66($v0)
/* 8C9A0 8003D9F0 3C018008 */  lui        $at, %hi(D_80080628)
/* 8C9A4 8003D9F4 E4200628 */  swc1       $f0, %lo(D_80080628)($at)
/* 8C9A8 8003D9F8 3C018008 */  lui        $at, %hi(D_8008062C)
/* 8C9AC 8003D9FC E422062C */  swc1       $f2, %lo(D_8008062C)($at)
/* 8C9B0 8003DA00 3C018008 */  lui        $at, %hi(D_80080630)
/* 8C9B4 8003DA04 E4240630 */  swc1       $f4, %lo(D_80080630)($at)
/* 8C9B8 8003DA08 3C018008 */  lui        $at, %hi(D_80080634)
/* 8C9BC 8003DA0C A0200634 */  sb         $zero, %lo(D_80080634)($at)
/* 8C9C0 8003DA10 3C018007 */  lui        $at, %hi(D_8006AD90_B9D40)
/* 8C9C4 8003DA14 A420AD90 */  sh         $zero, %lo(D_8006AD90_B9D40)($at)
/* 8C9C8 8003DA18 0C00F5EE */  jal        func_8003D7B8_8C768
/* 8C9CC 8003DA1C 00000000 */   nop
/* 8C9D0 8003DA20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C9D4 8003DA24 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C9D8 8003DA28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8C9DC 8003DA2C 03E00008 */  jr         $ra
/* 8C9E0 8003DA30 00000000 */   nop

glabel func_8003DA34_8C9E4
/* 8C9E4 8003DA34 3C048008 */  lui        $a0, %hi(D_800805E4)
/* 8C9E8 8003DA38 8C8405E4 */  lw         $a0, %lo(D_800805E4)($a0)
/* 8C9EC 8003DA3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C9F0 8003DA40 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C9F4 8003DA44 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C9F8 8003DA48 3C108008 */  lui        $s0, %hi(D_8008072C)
/* 8C9FC 8003DA4C 2610072C */  addiu      $s0, $s0, %lo(D_8008072C)
/* 8CA00 8003DA50 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CA04 8003DA54 0C027E98 */  jal        func_8009FA60
/* 8CA08 8003DA58 00008821 */   addu      $s1, $zero, $zero
.L8003DA5C:
/* 8CA0C 8003DA5C 8E040000 */  lw         $a0, ($s0)
/* 8CA10 8003DA60 10800003 */  beqz       $a0, .L8003DA70
/* 8CA14 8003DA64 26310001 */   addiu     $s1, $s1, 1
/* 8CA18 8003DA68 0C00F9C5 */  jal        func_8003E714_8D6C4
/* 8CA1C 8003DA6C 00000000 */   nop
.L8003DA70:
/* 8CA20 8003DA70 2A220002 */  slti       $v0, $s1, 2
/* 8CA24 8003DA74 1440FFF9 */  bnez       $v0, .L8003DA5C
/* 8CA28 8003DA78 26100004 */   addiu     $s0, $s0, 4
/* 8CA2C 8003DA7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CA30 8003DA80 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CA34 8003DA84 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CA38 8003DA88 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8CA3C 8003DA8C 03E00008 */  jr         $ra
/* 8CA40 8003DA90 00000000 */   nop

glabel func_8003DA94_8CA44
/* 8CA44 8003DA94 3C028008 */  lui        $v0, %hi(D_80080634)
/* 8CA48 8003DA98 90420634 */  lbu        $v0, %lo(D_80080634)($v0)
/* 8CA4C 8003DA9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CA50 8003DAA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CA54 8003DAA4 00008821 */  addu       $s1, $zero, $zero
/* 8CA58 8003DAA8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8CA5C 8003DAAC AFB20018 */  sw         $s2, 0x18($sp)
/* 8CA60 8003DAB0 10400037 */  beqz       $v0, .L8003DB90
/* 8CA64 8003DAB4 AFB00010 */   sw        $s0, 0x10($sp)
/* 8CA68 8003DAB8 3C028008 */  lui        $v0, %hi(D_80084614)
/* 8CA6C 8003DABC 8C424614 */  lw         $v0, %lo(D_80084614)($v0)
/* 8CA70 8003DAC0 3C018008 */  lui        $at, %hi(D_80080628)
/* 8CA74 8003DAC4 C4200628 */  lwc1       $f0, %lo(D_80080628)($at)
/* 8CA78 8003DAC8 C4420008 */  lwc1       $f2, 8($v0)
/* 8CA7C 8003DACC 46001101 */  sub.s      $f4, $f2, $f0
/* 8CA80 8003DAD0 44800000 */  mtc1       $zero, $f0
/* 8CA84 8003DAD4 00000000 */  nop
/* 8CA88 8003DAD8 4604003C */  c.lt.s     $f0, $f4
/* 8CA8C 8003DADC 00000000 */  nop
/* 8CA90 8003DAE0 00000000 */  nop
/* 8CA94 8003DAE4 4502000B */  bc1fl      .L8003DB14
/* 8CA98 8003DAE8 46002007 */   neg.s     $f0, $f4
/* 8CA9C 8003DAEC 3C014120 */  lui        $at, 0x4120
/* 8CAA0 8003DAF0 44810000 */  mtc1       $at, $f0
/* 8CAA4 8003DAF4 00000000 */  nop
/* 8CAA8 8003DAF8 4600203C */  c.lt.s     $f4, $f0
/* 8CAAC 8003DAFC 00000000 */  nop
/* 8CAB0 8003DB00 00000000 */  nop
/* 8CAB4 8003DB04 4501000B */  bc1t       .L8003DB34
/* 8CAB8 8003DB08 00002021 */   addu      $a0, $zero, $zero
/* 8CABC 8003DB0C 0800F6E4 */  j          .L8003DB90
/* 8CAC0 8003DB10 00000000 */   nop
.L8003DB14:
/* 8CAC4 8003DB14 3C014120 */  lui        $at, 0x4120
/* 8CAC8 8003DB18 44811000 */  mtc1       $at, $f2
/* 8CACC 8003DB1C 00000000 */  nop
/* 8CAD0 8003DB20 4602003C */  c.lt.s     $f0, $f2
/* 8CAD4 8003DB24 00000000 */  nop
/* 8CAD8 8003DB28 00000000 */  nop
/* 8CADC 8003DB2C 45000018 */  bc1f       .L8003DB90
/* 8CAE0 8003DB30 00002021 */   addu      $a0, $zero, $zero
.L8003DB34:
/* 8CAE4 8003DB34 0C026962 */  jal        func_8009A588
/* 8CAE8 8003DB38 24050004 */   addiu     $a1, $zero, 4
/* 8CAEC 8003DB3C 00021400 */  sll        $v0, $v0, 0x10
/* 8CAF0 8003DB40 00021403 */  sra        $v0, $v0, 0x10
/* 8CAF4 8003DB44 24030001 */  addiu      $v1, $zero, 1
/* 8CAF8 8003DB48 14430011 */  bne        $v0, $v1, .L8003DB90
/* 8CAFC 8003DB4C 00000000 */   nop
/* 8CB00 8003DB50 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 8CB04 8003DB54 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 8CB08 8003DB58 30428000 */  andi       $v0, $v0, 0x8000
/* 8CB0C 8003DB5C 1040000C */  beqz       $v0, .L8003DB90
/* 8CB10 8003DB60 00000000 */   nop
/* 8CB14 8003DB64 3C028008 */  lui        $v0, %hi(D_80084614)
/* 8CB18 8003DB68 8C424614 */  lw         $v0, %lo(D_80084614)($v0)
/* 8CB1C 8003DB6C 80440001 */  lb         $a0, 1($v0)
/* 8CB20 8003DB70 38840001 */  xori       $a0, $a0, 1
/* 8CB24 8003DB74 0004202B */  sltu       $a0, $zero, $a0
/* 8CB28 8003DB78 00042023 */  negu       $a0, $a0
/* 8CB2C 8003DB7C 3084015F */  andi       $a0, $a0, 0x15f
/* 8CB30 8003DB80 0C00BF2A */  jal        func_8002FCA8_7EC58
/* 8CB34 8003DB84 3484015E */   ori       $a0, $a0, 0x15e
/* 8CB38 8003DB88 3C018008 */  lui        $at, %hi(D_80080634)
/* 8CB3C 8003DB8C A0200634 */  sb         $zero, %lo(D_80080634)($at)
.L8003DB90:
/* 8CB40 8003DB90 3C108008 */  lui        $s0, %hi(D_8008072C)
/* 8CB44 8003DB94 2610072C */  addiu      $s0, $s0, %lo(D_8008072C)
/* 8CB48 8003DB98 26120008 */  addiu      $s2, $s0, 8
.L8003DB9C:
/* 8CB4C 8003DB9C 8E040000 */  lw         $a0, ($s0)
/* 8CB50 8003DBA0 10800007 */  beqz       $a0, .L8003DBC0
/* 8CB54 8003DBA4 00000000 */   nop
/* 8CB58 8003DBA8 90820045 */  lbu        $v0, 0x45($a0)
/* 8CB5C 8003DBAC 10400004 */  beqz       $v0, .L8003DBC0
/* 8CB60 8003DBB0 00000000 */   nop
/* 8CB64 8003DBB4 0C00F9C5 */  jal        func_8003E714_8D6C4
/* 8CB68 8003DBB8 00000000 */   nop
/* 8CB6C 8003DBBC AE000000 */  sw         $zero, ($s0)
.L8003DBC0:
/* 8CB70 8003DBC0 8E020000 */  lw         $v0, ($s0)
/* 8CB74 8003DBC4 26100004 */  addiu      $s0, $s0, 4
/* 8CB78 8003DBC8 2C420001 */  sltiu      $v0, $v0, 1
/* 8CB7C 8003DBCC 02228821 */  addu       $s1, $s1, $v0
/* 8CB80 8003DBD0 0212102A */  slt        $v0, $s0, $s2
/* 8CB84 8003DBD4 1440FFF1 */  bnez       $v0, .L8003DB9C
/* 8CB88 8003DBD8 00000000 */   nop
/* 8CB8C 8003DBDC 24100002 */  addiu      $s0, $zero, 2
/* 8CB90 8003DBE0 16300008 */  bne        $s1, $s0, .L8003DC04
/* 8CB94 8003DBE4 00008021 */   addu      $s0, $zero, $zero
/* 8CB98 8003DBE8 3C028007 */  lui        $v0, %hi(D_8006AD90_B9D40)
/* 8CB9C 8003DBEC 8442AD90 */  lh         $v0, %lo(D_8006AD90_B9D40)($v0)
/* 8CBA0 8003DBF0 28420010 */  slti       $v0, $v0, 0x10
/* 8CBA4 8003DBF4 10400003 */  beqz       $v0, .L8003DC04
/* 8CBA8 8003DBF8 00000000 */   nop
/* 8CBAC 8003DBFC 0C00F5EE */  jal        func_8003D7B8_8C768
/* 8CBB0 8003DC00 00000000 */   nop
.L8003DC04:
/* 8CBB4 8003DC04 3C118008 */  lui        $s1, %hi(D_8008072C)
/* 8CBB8 8003DC08 2631072C */  addiu      $s1, $s1, %lo(D_8008072C)
.L8003DC0C:
/* 8CBBC 8003DC0C 8E240000 */  lw         $a0, ($s1)
/* 8CBC0 8003DC10 10800003 */  beqz       $a0, .L8003DC20
/* 8CBC4 8003DC14 26100001 */   addiu     $s0, $s0, 1
/* 8CBC8 8003DC18 0C00FACF */  jal        func_8003EB3C_8DAEC
/* 8CBCC 8003DC1C 00000000 */   nop
.L8003DC20:
/* 8CBD0 8003DC20 2A020002 */  slti       $v0, $s0, 2
/* 8CBD4 8003DC24 1440FFF9 */  bnez       $v0, .L8003DC0C
/* 8CBD8 8003DC28 26310004 */   addiu     $s1, $s1, 4
/* 8CBDC 8003DC2C 3C028008 */  lui        $v0, %hi(D_800805E0)
/* 8CBE0 8003DC30 844205E0 */  lh         $v0, %lo(D_800805E0)($v0)
/* 8CBE4 8003DC34 1C400003 */  bgtz       $v0, .L8003DC44
/* 8CBE8 8003DC38 00000000 */   nop
/* 8CBEC 8003DC3C 0C00A3B1 */  jal        func_80028EC4_77E74
/* 8CBF0 8003DC40 00000000 */   nop
.L8003DC44:
/* 8CBF4 8003DC44 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8CBF8 8003DC48 8FB20018 */  lw         $s2, 0x18($sp)
/* 8CBFC 8003DC4C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CC00 8003DC50 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CC04 8003DC54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8CC08 8003DC58 03E00008 */  jr         $ra
/* 8CC0C 8003DC5C 00000000 */   nop

glabel func_8003DC60_8CC10
/* 8CC10 8003DC60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CC14 8003DC64 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CC18 8003DC68 00008821 */  addu       $s1, $zero, $zero
/* 8CC1C 8003DC6C AFB00010 */  sw         $s0, 0x10($sp)
/* 8CC20 8003DC70 3C108008 */  lui        $s0, %hi(D_8008072C)
/* 8CC24 8003DC74 2610072C */  addiu      $s0, $s0, %lo(D_8008072C)
/* 8CC28 8003DC78 AFBF0018 */  sw         $ra, 0x18($sp)
.L8003DC7C:
/* 8CC2C 8003DC7C 8E040000 */  lw         $a0, ($s0)
/* 8CC30 8003DC80 10800003 */  beqz       $a0, .L8003DC90
/* 8CC34 8003DC84 26310001 */   addiu     $s1, $s1, 1
/* 8CC38 8003DC88 0C00FC9E */  jal        func_8003F278_8E228
/* 8CC3C 8003DC8C 00000000 */   nop
.L8003DC90:
/* 8CC40 8003DC90 2A220002 */  slti       $v0, $s1, 2
/* 8CC44 8003DC94 1440FFF9 */  bnez       $v0, .L8003DC7C
/* 8CC48 8003DC98 26100004 */   addiu     $s0, $s0, 4
/* 8CC4C 8003DC9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CC50 8003DCA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CC54 8003DCA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CC58 8003DCA8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8CC5C 8003DCAC 03E00008 */  jr         $ra
/* 8CC60 8003DCB0 00000000 */   nop

glabel func_8003DCB4_8CC64
/* 8CC64 8003DCB4 3C028008 */  lui        $v0, %hi(D_80080634)
/* 8CC68 8003DCB8 90420634 */  lbu        $v0, %lo(D_80080634)($v0)
/* 8CC6C 8003DCBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CC70 8003DCC0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CC74 8003DCC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CC78 8003DCC8 1040003B */  beqz       $v0, .L8003DDB8
/* 8CC7C 8003DCCC AFB00010 */   sw        $s0, 0x10($sp)
/* 8CC80 8003DCD0 3C018008 */  lui        $at, %hi(D_80080628)
/* 8CC84 8003DCD4 C4200628 */  lwc1       $f0, %lo(D_80080628)($at)
/* 8CC88 8003DCD8 3C018008 */  lui        $at, %hi(D_80083A3C)
/* 8CC8C 8003DCDC C4223A3C */  lwc1       $f2, %lo(D_80083A3C)($at)
/* 8CC90 8003DCE0 46020080 */  add.s      $f2, $f0, $f2
/* 8CC94 8003DCE4 3C01C3B4 */  lui        $at, 0xc3b4
/* 8CC98 8003DCE8 44810000 */  mtc1       $at, $f0
/* 8CC9C 8003DCEC 00000000 */  nop
/* 8CCA0 8003DCF0 4600103C */  c.lt.s     $f2, $f0
/* 8CCA4 8003DCF4 00000000 */  nop
/* 8CCA8 8003DCF8 00000000 */  nop
/* 8CCAC 8003DCFC 3C018008 */  lui        $at, %hi(D_80080628)
/* 8CCB0 8003DD00 E4220628 */  swc1       $f2, %lo(D_80080628)($at)
/* 8CCB4 8003DD04 0800F765 */  j          .L8003DD94
/* 8CCB8 8003DD08 00000000 */   nop
.L8003DD0C:
/* 8CCBC 8003DD0C 3C028008 */  lui        $v0, %hi(D_80080628)
/* 8CCC0 8003DD10 24420628 */  addiu      $v0, $v0, %lo(D_80080628)
/* 8CCC4 8003DD14 C4420000 */  lwc1       $f2, ($v0)
/* 8CCC8 8003DD18 3C0143B4 */  lui        $at, 0x43b4
/* 8CCCC 8003DD1C 44810000 */  mtc1       $at, $f0
/* 8CCD0 8003DD20 00000000 */  nop
/* 8CCD4 8003DD24 4602003E */  c.le.s     $f0, $f2
/* 8CCD8 8003DD28 00000000 */  nop
/* 8CCDC 8003DD2C 45000006 */  bc1f       .L8003DD48
/* 8CCE0 8003DD30 00000000 */   nop
/* 8CCE4 8003DD34 3C014434 */  lui        $at, 0x4434
/* 8CCE8 8003DD38 44810000 */  mtc1       $at, $f0
/* 8CCEC 8003DD3C 00000000 */  nop
/* 8CCF0 8003DD40 0800F75D */  j          .L8003DD74
/* 8CCF4 8003DD44 46001001 */   sub.s     $f0, $f2, $f0
.L8003DD48:
/* 8CCF8 8003DD48 3C01C3B4 */  lui        $at, 0xc3b4
/* 8CCFC 8003DD4C 44810000 */  mtc1       $at, $f0
/* 8CD00 8003DD50 00000000 */  nop
/* 8CD04 8003DD54 4600103C */  c.lt.s     $f2, $f0
/* 8CD08 8003DD58 00000000 */  nop
/* 8CD0C 8003DD5C 45000006 */  bc1f       .L8003DD78
/* 8CD10 8003DD60 00000000 */   nop
/* 8CD14 8003DD64 3C014434 */  lui        $at, 0x4434
/* 8CD18 8003DD68 44810000 */  mtc1       $at, $f0
/* 8CD1C 8003DD6C 00000000 */  nop
/* 8CD20 8003DD70 46001000 */  add.s      $f0, $f2, $f0
.L8003DD74:
/* 8CD24 8003DD74 E4400000 */  swc1       $f0, ($v0)
.L8003DD78:
/* 8CD28 8003DD78 3C018008 */  lui        $at, %hi(D_80080628)
/* 8CD2C 8003DD7C C4220628 */  lwc1       $f2, %lo(D_80080628)($at)
/* 8CD30 8003DD80 3C01C3B4 */  lui        $at, 0xc3b4
/* 8CD34 8003DD84 44810000 */  mtc1       $at, $f0
/* 8CD38 8003DD88 00000000 */  nop
/* 8CD3C 8003DD8C 4600103C */  c.lt.s     $f2, $f0
/* 8CD40 8003DD90 00000000 */  nop
.L8003DD94:
/* 8CD44 8003DD94 4501FFDD */  bc1t       .L8003DD0C
/* 8CD48 8003DD98 00000000 */   nop
/* 8CD4C 8003DD9C 3C0143B4 */  lui        $at, 0x43b4
/* 8CD50 8003DDA0 44810000 */  mtc1       $at, $f0
/* 8CD54 8003DDA4 00000000 */  nop
/* 8CD58 8003DDA8 4602003E */  c.le.s     $f0, $f2
/* 8CD5C 8003DDAC 00000000 */  nop
/* 8CD60 8003DDB0 4501FFD6 */  bc1t       .L8003DD0C
/* 8CD64 8003DDB4 00000000 */   nop
.L8003DDB8:
/* 8CD68 8003DDB8 00008821 */  addu       $s1, $zero, $zero
/* 8CD6C 8003DDBC 3C108008 */  lui        $s0, %hi(D_8008072C)
/* 8CD70 8003DDC0 2610072C */  addiu      $s0, $s0, %lo(D_8008072C)
.L8003DDC4:
/* 8CD74 8003DDC4 8E040000 */  lw         $a0, ($s0)
/* 8CD78 8003DDC8 10800003 */  beqz       $a0, .L8003DDD8
/* 8CD7C 8003DDCC 26310001 */   addiu     $s1, $s1, 1
/* 8CD80 8003DDD0 0C00FCD9 */  jal        func_8003F364_8E314
/* 8CD84 8003DDD4 00000000 */   nop
.L8003DDD8:
/* 8CD88 8003DDD8 2A220002 */  slti       $v0, $s1, 2
/* 8CD8C 8003DDDC 1440FFF9 */  bnez       $v0, .L8003DDC4
/* 8CD90 8003DDE0 26100004 */   addiu     $s0, $s0, 4
/* 8CD94 8003DDE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CD98 8003DDE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CD9C 8003DDEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CDA0 8003DDF0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8CDA4 8003DDF4 03E00008 */  jr         $ra
/* 8CDA8 8003DDF8 00000000 */   nop

glabel func_8003DDFC_8CDAC
/* 8CDAC 8003DDFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8CDB0 8003DE00 AFB00020 */  sw         $s0, 0x20($sp)
/* 8CDB4 8003DE04 3C108008 */  lui        $s0, %hi(D_80080634)
/* 8CDB8 8003DE08 26100634 */  addiu      $s0, $s0, %lo(D_80080634)
/* 8CDBC 8003DE0C AFBF0028 */  sw         $ra, 0x28($sp)
/* 8CDC0 8003DE10 AFB10024 */  sw         $s1, 0x24($sp)
/* 8CDC4 8003DE14 92020000 */  lbu        $v0, ($s0)
/* 8CDC8 8003DE18 10400021 */  beqz       $v0, .L8003DEA0
/* 8CDCC 8003DE1C 2610FFB4 */   addiu     $s0, $s0, -0x4c
/* 8CDD0 8003DE20 3C05429E */  lui        $a1, 0x429e
/* 8CDD4 8003DE24 3C013CA3 */  lui        $at, 0x3ca3
/* 8CDD8 8003DE28 3421D70A */  ori        $at, $at, 0xd70a
/* 8CDDC 8003DE2C 44810000 */  mtc1       $at, $f0
/* 8CDE0 8003DE30 00000000 */  nop
/* 8CDE4 8003DE34 3C018008 */  lui        $at, %hi(D_80080628)
/* 8CDE8 8003DE38 C4220628 */  lwc1       $f2, %lo(D_80080628)($at)
/* 8CDEC 8003DE3C 3C018008 */  lui        $at, %hi(D_8008062C)
/* 8CDF0 8003DE40 C424062C */  lwc1       $f4, %lo(D_8008062C)($at)
/* 8CDF4 8003DE44 3C018008 */  lui        $at, %hi(D_80080630)
/* 8CDF8 8003DE48 C4260630 */  lwc1       $f6, %lo(D_80080630)($at)
/* 8CDFC 8003DE4C 3C064284 */  lui        $a2, 0x4284
/* 8CE00 8003DE50 02002021 */  addu       $a0, $s0, $zero
/* 8CE04 8003DE54 00003821 */  addu       $a3, $zero, $zero
/* 8CE08 8003DE58 E7A00010 */  swc1       $f0, 0x10($sp)
/* 8CE0C 8003DE5C E7A20014 */  swc1       $f2, 0x14($sp)
/* 8CE10 8003DE60 E7A40018 */  swc1       $f4, 0x18($sp)
/* 8CE14 8003DE64 0C02FD0E */  jal        func_800BF438
/* 8CE18 8003DE68 E7A6001C */   swc1      $f6, 0x1c($sp)
/* 8CE1C 8003DE6C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 8CE20 8003DE70 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 8CE24 8003DE74 3C03DA38 */  lui        $v1, 0xda38
/* 8CE28 8003DE78 34630003 */  ori        $v1, $v1, 3
/* 8CE2C 8003DE7C AC430000 */  sw         $v1, ($v0)
/* 8CE30 8003DE80 AC500004 */  sw         $s0, 4($v0)
/* 8CE34 8003DE84 3C048008 */  lui        $a0, %hi(D_800805E4)
/* 8CE38 8003DE88 8C8405E4 */  lw         $a0, %lo(D_800805E4)($a0)
/* 8CE3C 8003DE8C 24420008 */  addiu      $v0, $v0, 8
/* 8CE40 8003DE90 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 8CE44 8003DE94 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 8CE48 8003DE98 0C027F77 */  jal        func_8009FDDC
/* 8CE4C 8003DE9C 00002821 */   addu      $a1, $zero, $zero
.L8003DEA0:
/* 8CE50 8003DEA0 00008821 */  addu       $s1, $zero, $zero
/* 8CE54 8003DEA4 3C108008 */  lui        $s0, %hi(D_8008072C)
/* 8CE58 8003DEA8 2610072C */  addiu      $s0, $s0, %lo(D_8008072C)
.L8003DEAC:
/* 8CE5C 8003DEAC 8E040000 */  lw         $a0, ($s0)
/* 8CE60 8003DEB0 10800003 */  beqz       $a0, .L8003DEC0
/* 8CE64 8003DEB4 26310001 */   addiu     $s1, $s1, 1
/* 8CE68 8003DEB8 0C00FCE2 */  jal        func_8003F388_8E338
/* 8CE6C 8003DEBC 00000000 */   nop
.L8003DEC0:
/* 8CE70 8003DEC0 2A220002 */  slti       $v0, $s1, 2
/* 8CE74 8003DEC4 1440FFF9 */  bnez       $v0, .L8003DEAC
/* 8CE78 8003DEC8 26100004 */   addiu     $s0, $s0, 4
/* 8CE7C 8003DECC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8CE80 8003DED0 8FB10024 */  lw         $s1, 0x24($sp)
/* 8CE84 8003DED4 8FB00020 */  lw         $s0, 0x20($sp)
/* 8CE88 8003DED8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8CE8C 8003DEDC 03E00008 */  jr         $ra
/* 8CE90 8003DEE0 00000000 */   nop

glabel func_8003DEE4_8CE94
/* 8CE94 8003DEE4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8CE98 8003DEE8 AFB20018 */  sw         $s2, 0x18($sp)
/* 8CE9C 8003DEEC 00009021 */  addu       $s2, $zero, $zero
/* 8CEA0 8003DEF0 AFB50024 */  sw         $s5, 0x24($sp)
/* 8CEA4 8003DEF4 24150001 */  addiu      $s5, $zero, 1
/* 8CEA8 8003DEF8 AFB40020 */  sw         $s4, 0x20($sp)
/* 8CEAC 8003DEFC 24140006 */  addiu      $s4, $zero, 6
/* 8CEB0 8003DF00 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CEB4 8003DF04 3C118008 */  lui        $s1, %hi(D_80083A34)
/* 8CEB8 8003DF08 26313A34 */  addiu      $s1, $s1, %lo(D_80083A34)
/* 8CEBC 8003DF0C AFB3001C */  sw         $s3, 0x1c($sp)
/* 8CEC0 8003DF10 3C138008 */  lui        $s3, %hi(D_800805E0)
/* 8CEC4 8003DF14 267305E0 */  addiu      $s3, $s3, %lo(D_800805E0)
/* 8CEC8 8003DF18 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CECC 8003DF1C 26700056 */  addiu      $s0, $s3, 0x56
/* 8CED0 8003DF20 AFBF0028 */  sw         $ra, 0x28($sp)
.L8003DF24:
/* 8CED4 8003DF24 92020000 */  lbu        $v0, ($s0)
/* 8CED8 8003DF28 5440001C */  bnezl      $v0, .L8003DF9C
/* 8CEDC 8003DF2C 26310004 */   addiu     $s1, $s1, 4
/* 8CEE0 8003DF30 A2150000 */  sb         $s5, ($s0)
/* 8CEE4 8003DF34 96620000 */  lhu        $v0, ($s3)
/* 8CEE8 8003DF38 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8CEEC 8003DF3C 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8CEF0 8003DF40 2442FFFF */  addiu      $v0, $v0, -1
/* 8CEF4 8003DF44 A6620000 */  sh         $v0, ($s3)
/* 8CEF8 8003DF48 8E250000 */  lw         $a1, ($s1)
/* 8CEFC 8003DF4C 0C0E4959 */  jal        func_80392564
/* 8CF00 8003DF50 24060002 */   addiu     $a2, $zero, 2
/* 8CF04 8003DF54 3C028008 */  lui        $v0, %hi(D_80080728)
/* 8CF08 8003DF58 8C420728 */  lw         $v0, %lo(D_80080728)($v0)
/* 8CF0C 8003DF5C 1454000C */  bne        $v0, $s4, .L8003DF90
/* 8CF10 8003DF60 24420001 */   addiu     $v0, $v0, 1
/* 8CF14 8003DF64 0C00DA01 */  jal        func_80036804_857B4
/* 8CF18 8003DF68 00000000 */   nop
/* 8CF1C 8003DF6C 10400005 */  beqz       $v0, .L8003DF84
/* 8CF20 8003DF70 00000000 */   nop
/* 8CF24 8003DF74 3C048008 */  lui        $a0, %hi(D_80084614)
/* 8CF28 8003DF78 8C844614 */  lw         $a0, %lo(D_80084614)($a0)
/* 8CF2C 8003DF7C 0C00D99C */  jal        func_80036670_85620
/* 8CF30 8003DF80 2405FFFF */   addiu     $a1, $zero, -1
.L8003DF84:
/* 8CF34 8003DF84 3C028008 */  lui        $v0, %hi(D_80080728)
/* 8CF38 8003DF88 8C420728 */  lw         $v0, %lo(D_80080728)($v0)
/* 8CF3C 8003DF8C 24420001 */  addiu      $v0, $v0, 1
.L8003DF90:
/* 8CF40 8003DF90 3C018008 */  lui        $at, %hi(D_80080728)
/* 8CF44 8003DF94 AC220728 */  sw         $v0, %lo(D_80080728)($at)
/* 8CF48 8003DF98 26310004 */  addiu      $s1, $s1, 4
.L8003DF9C:
/* 8CF4C 8003DF9C 26520001 */  addiu      $s2, $s2, 1
/* 8CF50 8003DFA0 2A420002 */  slti       $v0, $s2, 2
/* 8CF54 8003DFA4 1440FFDF */  bnez       $v0, .L8003DF24
/* 8CF58 8003DFA8 26100001 */   addiu     $s0, $s0, 1
/* 8CF5C 8003DFAC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8CF60 8003DFB0 8FB50024 */  lw         $s5, 0x24($sp)
/* 8CF64 8003DFB4 8FB40020 */  lw         $s4, 0x20($sp)
/* 8CF68 8003DFB8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 8CF6C 8003DFBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 8CF70 8003DFC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CF74 8003DFC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CF78 8003DFC8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8CF7C 8003DFCC 03E00008 */  jr         $ra
/* 8CF80 8003DFD0 00000000 */   nop

glabel func_8003DFD4_8CF84
/* 8CF84 8003DFD4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8CF88 8003DFD8 AFB3001C */  sw         $s3, 0x1c($sp)
/* 8CF8C 8003DFDC 00009821 */  addu       $s3, $zero, $zero
/* 8CF90 8003DFE0 AFB60028 */  sw         $s6, 0x28($sp)
/* 8CF94 8003DFE4 24160001 */  addiu      $s6, $zero, 1
/* 8CF98 8003DFE8 AFB50024 */  sw         $s5, 0x24($sp)
/* 8CF9C 8003DFEC 24150006 */  addiu      $s5, $zero, 6
/* 8CFA0 8003DFF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 8CFA4 8003DFF4 3C128008 */  lui        $s2, %hi(D_80083A34)
/* 8CFA8 8003DFF8 26523A34 */  addiu      $s2, $s2, %lo(D_80083A34)
/* 8CFAC 8003DFFC AFB40020 */  sw         $s4, 0x20($sp)
/* 8CFB0 8003E000 3C148008 */  lui        $s4, %hi(D_800805E0)
/* 8CFB4 8003E004 269405E0 */  addiu      $s4, $s4, %lo(D_800805E0)
/* 8CFB8 8003E008 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CFBC 8003E00C 26900056 */  addiu      $s0, $s4, 0x56
/* 8CFC0 8003E010 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CFC4 8003E014 00008821 */  addu       $s1, $zero, $zero
/* 8CFC8 8003E018 AFBF002C */  sw         $ra, 0x2c($sp)
.L8003E01C:
/* 8CFCC 8003E01C 92020000 */  lbu        $v0, ($s0)
/* 8CFD0 8003E020 54400024 */  bnezl      $v0, .L8003E0B4
/* 8CFD4 8003E024 26520004 */   addiu     $s2, $s2, 4
/* 8CFD8 8003E028 3C028008 */  lui        $v0, %hi(D_80084614)
/* 8CFDC 8003E02C 8C424614 */  lw         $v0, %lo(D_80084614)($v0)
/* 8CFE0 8003E030 3C038008 */  lui        $v1, %hi(D_800802B4)
/* 8CFE4 8003E034 00711821 */  addu       $v1, $v1, $s1
/* 8CFE8 8003E038 806302B4 */  lb         $v1, %lo(D_800802B4)($v1)
/* 8CFEC 8003E03C 80420001 */  lb         $v0, 1($v0)
/* 8CFF0 8003E040 5062001C */  beql       $v1, $v0, .L8003E0B4
/* 8CFF4 8003E044 26520004 */   addiu     $s2, $s2, 4
/* 8CFF8 8003E048 A2160000 */  sb         $s6, ($s0)
/* 8CFFC 8003E04C 96820000 */  lhu        $v0, ($s4)
/* 8D000 8003E050 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8D004 8003E054 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8D008 8003E058 2442FFFF */  addiu      $v0, $v0, -1
/* 8D00C 8003E05C A6820000 */  sh         $v0, ($s4)
/* 8D010 8003E060 8E450000 */  lw         $a1, ($s2)
/* 8D014 8003E064 0C0E4959 */  jal        func_80392564
/* 8D018 8003E068 24060002 */   addiu     $a2, $zero, 2
/* 8D01C 8003E06C 3C028008 */  lui        $v0, %hi(D_80080728)
/* 8D020 8003E070 8C420728 */  lw         $v0, %lo(D_80080728)($v0)
/* 8D024 8003E074 1455000C */  bne        $v0, $s5, .L8003E0A8
/* 8D028 8003E078 24420001 */   addiu     $v0, $v0, 1
/* 8D02C 8003E07C 0C00DA01 */  jal        func_80036804_857B4
/* 8D030 8003E080 00000000 */   nop
/* 8D034 8003E084 10400005 */  beqz       $v0, .L8003E09C
/* 8D038 8003E088 00000000 */   nop
/* 8D03C 8003E08C 3C048008 */  lui        $a0, %hi(D_80084614)
/* 8D040 8003E090 8C844614 */  lw         $a0, %lo(D_80084614)($a0)
/* 8D044 8003E094 0C00D99C */  jal        func_80036670_85620
/* 8D048 8003E098 2405FFFF */   addiu     $a1, $zero, -1
.L8003E09C:
/* 8D04C 8003E09C 3C028008 */  lui        $v0, %hi(D_80080728)
/* 8D050 8003E0A0 8C420728 */  lw         $v0, %lo(D_80080728)($v0)
/* 8D054 8003E0A4 24420001 */  addiu      $v0, $v0, 1
.L8003E0A8:
/* 8D058 8003E0A8 3C018008 */  lui        $at, %hi(D_80080728)
/* 8D05C 8003E0AC AC220728 */  sw         $v0, %lo(D_80080728)($at)
/* 8D060 8003E0B0 26520004 */  addiu      $s2, $s2, 4
.L8003E0B4:
/* 8D064 8003E0B4 26100001 */  addiu      $s0, $s0, 1
/* 8D068 8003E0B8 26730001 */  addiu      $s3, $s3, 1
/* 8D06C 8003E0BC 2A620002 */  slti       $v0, $s3, 2
/* 8D070 8003E0C0 1440FFD6 */  bnez       $v0, .L8003E01C
/* 8D074 8003E0C4 26310006 */   addiu     $s1, $s1, 6
/* 8D078 8003E0C8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 8D07C 8003E0CC 8FB60028 */  lw         $s6, 0x28($sp)
/* 8D080 8003E0D0 8FB50024 */  lw         $s5, 0x24($sp)
/* 8D084 8003E0D4 8FB40020 */  lw         $s4, 0x20($sp)
/* 8D088 8003E0D8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 8D08C 8003E0DC 8FB20018 */  lw         $s2, 0x18($sp)
/* 8D090 8003E0E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 8D094 8003E0E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 8D098 8003E0E8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8D09C 8003E0EC 03E00008 */  jr         $ra
/* 8D0A0 8003E0F0 00000000 */   nop

glabel func_8003E0F4_8D0A4
/* 8D0A4 8003E0F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D0A8 8003E0F8 00042600 */  sll        $a0, $a0, 0x18
/* 8D0AC 8003E0FC 00041E03 */  sra        $v1, $a0, 0x18
/* 8D0B0 8003E100 2402FFFF */  addiu      $v0, $zero, -1
/* 8D0B4 8003E104 1462000D */  bne        $v1, $v0, .L8003E13C
/* 8D0B8 8003E108 AFBF0010 */   sw        $ra, 0x10($sp)
/* 8D0BC 8003E10C 00001821 */  addu       $v1, $zero, $zero
.L8003E110:
/* 8D0C0 8003E110 3C028008 */  lui        $v0, %hi(D_80080636)
/* 8D0C4 8003E114 00431021 */  addu       $v0, $v0, $v1
/* 8D0C8 8003E118 90420636 */  lbu        $v0, %lo(D_80080636)($v0)
/* 8D0CC 8003E11C 10400007 */  beqz       $v0, .L8003E13C
/* 8D0D0 8003E120 00000000 */   nop
/* 8D0D4 8003E124 24630001 */  addiu      $v1, $v1, 1
/* 8D0D8 8003E128 28620002 */  slti       $v0, $v1, 2
/* 8D0DC 8003E12C 1040000B */  beqz       $v0, .L8003E15C
/* 8D0E0 8003E130 00000000 */   nop
/* 8D0E4 8003E134 0800F844 */  j          .L8003E110
/* 8D0E8 8003E138 00000000 */   nop
.L8003E13C:
/* 8D0EC 8003E13C 3C048017 */  lui        $a0, %hi(D_8016D0C4)
/* 8D0F0 8003E140 8C84D0C4 */  lw         $a0, %lo(D_8016D0C4)($a0)
/* 8D0F4 8003E144 00031080 */  sll        $v0, $v1, 2
/* 8D0F8 8003E148 3C058008 */  lui        $a1, %hi(D_80083A34)
/* 8D0FC 8003E14C 00A22821 */  addu       $a1, $a1, $v0
/* 8D100 8003E150 8CA53A34 */  lw         $a1, %lo(D_80083A34)($a1)
/* 8D104 8003E154 0C0E4959 */  jal        func_80392564
/* 8D108 8003E158 24060003 */   addiu     $a2, $zero, 3
.L8003E15C:
/* 8D10C 8003E15C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D110 8003E160 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8D114 8003E164 03E00008 */  jr         $ra
/* 8D118 8003E168 00000000 */   nop

glabel func_8003E16C_8D11C
/* 8D11C 8003E16C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8D120 8003E170 AFB20018 */  sw         $s2, 0x18($sp)
/* 8D124 8003E174 00009021 */  addu       $s2, $zero, $zero
/* 8D128 8003E178 AFB00010 */  sw         $s0, 0x10($sp)
/* 8D12C 8003E17C 3C108008 */  lui        $s0, %hi(D_8008072C)
/* 8D130 8003E180 2610072C */  addiu      $s0, $s0, %lo(D_8008072C)
/* 8D134 8003E184 AFB10014 */  sw         $s1, 0x14($sp)
/* 8D138 8003E188 00008821 */  addu       $s1, $zero, $zero
/* 8D13C 8003E18C AFBF001C */  sw         $ra, 0x1c($sp)
.L8003E190:
/* 8D140 8003E190 8E020000 */  lw         $v0, ($s0)
/* 8D144 8003E194 5040001C */  beql       $v0, $zero, .L8003E208
/* 8D148 8003E198 26100004 */   addiu     $s0, $s0, 4
/* 8D14C 8003E19C 90420000 */  lbu        $v0, ($v0)
/* 8D150 8003E1A0 3C018008 */  lui        $at, %hi(D_800802B1)
/* 8D154 8003E1A4 00310821 */  addu       $at, $at, $s1
/* 8D158 8003E1A8 A02202B1 */  sb         $v0, %lo(D_800802B1)($at)
/* 8D15C 8003E1AC 8E020000 */  lw         $v0, ($s0)
/* 8D160 8003E1B0 C4400008 */  lwc1       $f0, 8($v0)
/* 8D164 8003E1B4 4600008D */  trunc.w.s  $f2, $f0
/* 8D168 8003E1B8 44021000 */  mfc1       $v0, $f2
/* 8D16C 8003E1BC 00000000 */  nop
/* 8D170 8003E1C0 3C018008 */  lui        $at, %hi(D_800802B2)
/* 8D174 8003E1C4 00310821 */  addu       $at, $at, $s1
/* 8D178 8003E1C8 A42202B2 */  sh         $v0, %lo(D_800802B2)($at)
/* 8D17C 8003E1CC 8E020000 */  lw         $v0, ($s0)
/* 8D180 8003E1D0 90420001 */  lbu        $v0, 1($v0)
/* 8D184 8003E1D4 3C018008 */  lui        $at, %hi(D_800802B4)
/* 8D188 8003E1D8 00310821 */  addu       $at, $at, $s1
/* 8D18C 8003E1DC A02202B4 */  sb         $v0, %lo(D_800802B4)($at)
/* 8D190 8003E1E0 8E020000 */  lw         $v0, ($s0)
/* 8D194 8003E1E4 904200F9 */  lbu        $v0, 0xf9($v0)
/* 8D198 8003E1E8 3C018008 */  lui        $at, %hi(D_800802B0)
/* 8D19C 8003E1EC 00310821 */  addu       $at, $at, $s1
/* 8D1A0 8003E1F0 A02202B0 */  sb         $v0, %lo(D_800802B0)($at)
/* 8D1A4 8003E1F4 8E040000 */  lw         $a0, ($s0)
/* 8D1A8 8003E1F8 0C00F9C5 */  jal        func_8003E714_8D6C4
/* 8D1AC 8003E1FC 00000000 */   nop
/* 8D1B0 8003E200 AE000000 */  sw         $zero, ($s0)
/* 8D1B4 8003E204 26100004 */  addiu      $s0, $s0, 4
.L8003E208:
/* 8D1B8 8003E208 26520001 */  addiu      $s2, $s2, 1
/* 8D1BC 8003E20C 2A420002 */  slti       $v0, $s2, 2
/* 8D1C0 8003E210 1440FFDF */  bnez       $v0, .L8003E190
/* 8D1C4 8003E214 26310006 */   addiu     $s1, $s1, 6
/* 8D1C8 8003E218 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8D1CC 8003E21C 8FB20018 */  lw         $s2, 0x18($sp)
/* 8D1D0 8003E220 8FB10014 */  lw         $s1, 0x14($sp)
/* 8D1D4 8003E224 8FB00010 */  lw         $s0, 0x10($sp)
/* 8D1D8 8003E228 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8D1DC 8003E22C 03E00008 */  jr         $ra
/* 8D1E0 8003E230 00000000 */   nop

glabel func_8003E234_8D1E4
/* 8D1E4 8003E234 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8D1E8 8003E238 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8D1EC 8003E23C 00008821 */  addu       $s1, $zero, $zero
/* 8D1F0 8003E240 AFB30024 */  sw         $s3, 0x24($sp)
/* 8D1F4 8003E244 24130001 */  addiu      $s3, $zero, 1
/* 8D1F8 8003E248 AFB20020 */  sw         $s2, 0x20($sp)
/* 8D1FC 8003E24C 3C128008 */  lui        $s2, %hi(D_8008072C)
/* 8D200 8003E250 2652072C */  addiu      $s2, $s2, %lo(D_8008072C)
/* 8D204 8003E254 AFB00018 */  sw         $s0, 0x18($sp)
/* 8D208 8003E258 00008021 */  addu       $s0, $zero, $zero
/* 8D20C 8003E25C AFBF0028 */  sw         $ra, 0x28($sp)
.L8003E260:
/* 8D210 8003E260 3C028008 */  lui        $v0, %hi(D_80080636)
/* 8D214 8003E264 00511021 */  addu       $v0, $v0, $s1
/* 8D218 8003E268 90420636 */  lbu        $v0, %lo(D_80080636)($v0)
/* 8D21C 8003E26C 54400012 */  bnezl      $v0, .L8003E2B8
/* 8D220 8003E270 26520004 */   addiu     $s2, $s2, 4
/* 8D224 8003E274 3C058008 */  lui        $a1, %hi(D_800802B0)
/* 8D228 8003E278 00B02821 */  addu       $a1, $a1, $s0
/* 8D22C 8003E27C 90A502B0 */  lbu        $a1, %lo(D_800802B0)($a1)
/* 8D230 8003E280 3C068008 */  lui        $a2, %hi(D_800802B2)
/* 8D234 8003E284 00D03021 */  addu       $a2, $a2, $s0
/* 8D238 8003E288 84C602B2 */  lh         $a2, %lo(D_800802B2)($a2)
/* 8D23C 8003E28C 3C078008 */  lui        $a3, %hi(D_800802B4)
/* 8D240 8003E290 00F03821 */  addu       $a3, $a3, $s0
/* 8D244 8003E294 80E702B4 */  lb         $a3, %lo(D_800802B4)($a3)
/* 8D248 8003E298 3C028008 */  lui        $v0, %hi(D_80080635)
/* 8D24C 8003E29C 90420635 */  lbu        $v0, %lo(D_80080635)($v0)
/* 8D250 8003E2A0 00002021 */  addu       $a0, $zero, $zero
/* 8D254 8003E2A4 AFB30010 */  sw         $s3, 0x10($sp)
/* 8D258 8003E2A8 0C00F938 */  jal        func_8003E4E0_8D490
/* 8D25C 8003E2AC AFA20014 */   sw        $v0, 0x14($sp)
/* 8D260 8003E2B0 AE420000 */  sw         $v0, ($s2)
/* 8D264 8003E2B4 26520004 */  addiu      $s2, $s2, 4
.L8003E2B8:
/* 8D268 8003E2B8 26310001 */  addiu      $s1, $s1, 1
/* 8D26C 8003E2BC 2A220002 */  slti       $v0, $s1, 2
/* 8D270 8003E2C0 1440FFE7 */  bnez       $v0, .L8003E260
/* 8D274 8003E2C4 26100006 */   addiu     $s0, $s0, 6
/* 8D278 8003E2C8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8D27C 8003E2CC 8FB30024 */  lw         $s3, 0x24($sp)
/* 8D280 8003E2D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 8D284 8003E2D4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8D288 8003E2D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 8D28C 8003E2DC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8D290 8003E2E0 03E00008 */  jr         $ra
/* 8D294 8003E2E4 00000000 */   nop

glabel func_8003E2E8_8D298
/* 8D298 8003E2E8 00002821 */  addu       $a1, $zero, $zero
/* 8D29C 8003E2EC 00002021 */  addu       $a0, $zero, $zero
/* 8D2A0 8003E2F0 3C038008 */  lui        $v1, %hi(D_8008072C)
/* 8D2A4 8003E2F4 2463072C */  addiu      $v1, $v1, %lo(D_8008072C)
.L8003E2F8:
/* 8D2A8 8003E2F8 8C620000 */  lw         $v0, ($v1)
/* 8D2AC 8003E2FC 24840001 */  addiu      $a0, $a0, 1
/* 8D2B0 8003E300 0002102B */  sltu       $v0, $zero, $v0
/* 8D2B4 8003E304 00A22821 */  addu       $a1, $a1, $v0
/* 8D2B8 8003E308 28820002 */  slti       $v0, $a0, 2
/* 8D2BC 8003E30C 1440FFFA */  bnez       $v0, .L8003E2F8
/* 8D2C0 8003E310 24630004 */   addiu     $v1, $v1, 4
/* 8D2C4 8003E314 03E00008 */  jr         $ra
/* 8D2C8 8003E318 00A01021 */   addu      $v0, $a1, $zero

glabel func_8003E31C_8D2CC
/* 8D2CC 8003E31C 00002021 */  addu       $a0, $zero, $zero
/* 8D2D0 8003E320 3C038008 */  lui        $v1, %hi(D_8008072C)
/* 8D2D4 8003E324 2463072C */  addiu      $v1, $v1, %lo(D_8008072C)
.L8003E328:
/* 8D2D8 8003E328 8C620000 */  lw         $v0, ($v1)
/* 8D2DC 8003E32C 50400004 */  beql       $v0, $zero, .L8003E340
/* 8D2E0 8003E330 24840001 */   addiu     $a0, $a0, 1
/* 8D2E4 8003E334 80420001 */  lb         $v0, 1($v0)
/* 8D2E8 8003E338 0800F8D4 */  j          .L8003E350
/* 8D2EC 8003E33C 00000000 */   nop
.L8003E340:
/* 8D2F0 8003E340 28820002 */  slti       $v0, $a0, 2
/* 8D2F4 8003E344 1440FFF8 */  bnez       $v0, .L8003E328
/* 8D2F8 8003E348 24630004 */   addiu     $v1, $v1, 4
/* 8D2FC 8003E34C 00001021 */  addu       $v0, $zero, $zero
.L8003E350:
/* 8D300 8003E350 03E00008 */  jr         $ra
/* 8D304 8003E354 00000000 */   nop

glabel func_8003E358_8D308
/* 8D308 8003E358 3C028008 */  lui        $v0, %hi(D_800805E0)
/* 8D30C 8003E35C 844205E0 */  lh         $v0, %lo(D_800805E0)($v0)
/* 8D310 8003E360 03E00008 */  jr         $ra
/* 8D314 8003E364 00000000 */   nop

glabel func_8003E368_8D318
/* 8D318 8003E368 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D31C 8003E36C AFBF0010 */  sw         $ra, 0x10($sp)
/* 8D320 8003E370 00002821 */  addu       $a1, $zero, $zero
/* 8D324 8003E374 00002021 */  addu       $a0, $zero, $zero
/* 8D328 8003E378 3C038008 */  lui        $v1, %hi(D_8008072C)
/* 8D32C 8003E37C 2463072C */  addiu      $v1, $v1, %lo(D_8008072C)
.L8003E380:
/* 8D330 8003E380 8C620000 */  lw         $v0, ($v1)
/* 8D334 8003E384 24840001 */  addiu      $a0, $a0, 1
/* 8D338 8003E388 0002102B */  sltu       $v0, $zero, $v0
/* 8D33C 8003E38C 00A22821 */  addu       $a1, $a1, $v0
/* 8D340 8003E390 28820002 */  slti       $v0, $a0, 2
/* 8D344 8003E394 1440FFFA */  bnez       $v0, .L8003E380
/* 8D348 8003E398 24630004 */   addiu     $v1, $v1, 4
/* 8D34C 8003E39C 24020002 */  addiu      $v0, $zero, 2
/* 8D350 8003E3A0 14A2001C */  bne        $a1, $v0, .L8003E414
/* 8D354 8003E3A4 00000000 */   nop
/* 8D358 8003E3A8 3C028008 */  lui        $v0, %hi(D_80080730)
/* 8D35C 8003E3AC 8C420730 */  lw         $v0, %lo(D_80080730)($v0)
/* 8D360 8003E3B0 3C038008 */  lui        $v1, %hi(D_8008072C)
/* 8D364 8003E3B4 8C63072C */  lw         $v1, %lo(D_8008072C)($v1)
/* 8D368 8003E3B8 8C450008 */  lw         $a1, 8($v0)
/* 8D36C 8003E3BC 8C660008 */  lw         $a2, 8($v1)
/* 8D370 8003E3C0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 8D374 8003E3C4 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 8D378 8003E3C8 0C00AD88 */  jal        func_8002B620_7A5D0
/* 8D37C 8003E3CC 00000000 */   nop
/* 8D380 8003E3D0 3C028008 */  lui        $v0, %hi(D_8008072C)
/* 8D384 8003E3D4 8C42072C */  lw         $v0, %lo(D_8008072C)($v0)
/* 8D388 8003E3D8 3C038008 */  lui        $v1, %hi(D_80084624)
/* 8D38C 8003E3DC 8C634624 */  lw         $v1, %lo(D_80084624)($v1)
/* 8D390 8003E3E0 C4400008 */  lwc1       $f0, 8($v0)
/* 8D394 8003E3E4 E4600020 */  swc1       $f0, 0x20($v1)
/* 8D398 8003E3E8 3C028008 */  lui        $v0, %hi(D_80080730)
/* 8D39C 8003E3EC 8C420730 */  lw         $v0, %lo(D_80080730)($v0)
/* 8D3A0 8003E3F0 3C0141F0 */  lui        $at, 0x41f0
/* 8D3A4 8003E3F4 44811000 */  mtc1       $at, $f2
/* 8D3A8 8003E3F8 00000000 */  nop
/* 8D3AC 8003E3FC C4400008 */  lwc1       $f0, 8($v0)
/* 8D3B0 8003E400 46020001 */  sub.s      $f0, $f0, $f2
/* 8D3B4 8003E404 3C028008 */  lui        $v0, %hi(D_80084624)
/* 8D3B8 8003E408 8C424624 */  lw         $v0, %lo(D_80084624)($v0)
/* 8D3BC 8003E40C 0800F90F */  j          .L8003E43C
/* 8D3C0 8003E410 E4400024 */   swc1      $f0, 0x24($v0)
.L8003E414:
/* 8D3C4 8003E414 3C028008 */  lui        $v0, %hi(D_80084624)
/* 8D3C8 8003E418 8C424624 */  lw         $v0, %lo(D_80084624)($v0)
/* 8D3CC 8003E41C 3C038008 */  lui        $v1, %hi(D_80084628)
/* 8D3D0 8003E420 8C634628 */  lw         $v1, %lo(D_80084628)($v1)
/* 8D3D4 8003E424 8C450008 */  lw         $a1, 8($v0)
/* 8D3D8 8003E428 8C660008 */  lw         $a2, 8($v1)
/* 8D3DC 8003E42C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 8D3E0 8003E430 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 8D3E4 8003E434 0C00AD88 */  jal        func_8002B620_7A5D0
/* 8D3E8 8003E438 00000000 */   nop
.L8003E43C:
/* 8D3EC 8003E43C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D3F0 8003E440 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8D3F4 8003E444 03E00008 */  jr         $ra
/* 8D3F8 8003E448 00000000 */   nop

glabel func_8003E44C_8D3FC
/* 8D3FC 8003E44C 3C028008 */  lui        $v0, %hi(D_80080636)
/* 8D400 8003E450 90420636 */  lbu        $v0, %lo(D_80080636)($v0)
/* 8D404 8003E454 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D408 8003E458 14400007 */  bnez       $v0, .L8003E478
/* 8D40C 8003E45C AFBF0010 */   sw        $ra, 0x10($sp)
/* 8D410 8003E460 3C048008 */  lui        $a0, %hi(D_80084614)
/* 8D414 8003E464 8C844614 */  lw         $a0, %lo(D_80084614)($a0)
/* 8D418 8003E468 3C058008 */  lui        $a1, %hi(D_8008072C)
/* 8D41C 8003E46C 8CA5072C */  lw         $a1, %lo(D_8008072C)($a1)
/* 8D420 8003E470 0800F922 */  j          .L8003E488
/* 8D424 8003E474 00000000 */   nop
.L8003E478:
/* 8D428 8003E478 3C048008 */  lui        $a0, %hi(D_80084614)
/* 8D42C 8003E47C 8C844614 */  lw         $a0, %lo(D_80084614)($a0)
/* 8D430 8003E480 3C058008 */  lui        $a1, %hi(D_80080730)
/* 8D434 8003E484 8CA50730 */  lw         $a1, %lo(D_80080730)($a1)
.L8003E488:
/* 8D438 8003E488 0C00C8DF */  jal        func_8003237C_8132C
/* 8D43C 8003E48C 00000000 */   nop
/* 8D440 8003E490 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D444 8003E494 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8D448 8003E498 03E00008 */  jr         $ra
/* 8D44C 8003E49C 00000000 */   nop

glabel func_8003E4A0_8D450
/* 8D450 8003E4A0 3C028008 */  lui        $v0, %hi(D_80084624)
/* 8D454 8003E4A4 8C424624 */  lw         $v0, %lo(D_80084624)($v0)
/* 8D458 8003E4A8 3C0142C8 */  lui        $at, 0x42c8
/* 8D45C 8003E4AC 44811000 */  mtc1       $at, $f2
/* 8D460 8003E4B0 00000000 */  nop
/* 8D464 8003E4B4 3C018008 */  lui        $at, %hi(D_80080634)
/* 8D468 8003E4B8 A0240634 */  sb         $a0, %lo(D_80080634)($at)
/* 8D46C 8003E4BC C4400008 */  lwc1       $f0, 8($v0)
/* 8D470 8003E4C0 46020001 */  sub.s      $f0, $f0, $f2
/* 8D474 8003E4C4 3C018008 */  lui        $at, %hi(D_80080628)
/* 8D478 8003E4C8 E4200628 */  swc1       $f0, %lo(D_80080628)($at)
/* 8D47C 8003E4CC 03E00008 */  jr         $ra
/* 8D480 8003E4D0 00000000 */   nop
/* 8D484 8003E4D4 00000000 */  nop
/* 8D488 8003E4D8 00000000 */  nop
/* 8D48C 8003E4DC 00000000 */  nop
