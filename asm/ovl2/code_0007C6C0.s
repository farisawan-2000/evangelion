.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002D710_7C6C0
/* 7C6C0 8002D710 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7C6C4 8002D714 AFB50044 */  sw         $s5, 0x44($sp)
/* 7C6C8 8002D718 0080A821 */  addu       $s5, $a0, $zero
/* 7C6CC 8002D71C 32A2FFFF */  andi       $v0, $s5, 0xffff
/* 7C6D0 8002D720 00021880 */  sll        $v1, $v0, 2
/* 7C6D4 8002D724 00621821 */  addu       $v1, $v1, $v0
/* 7C6D8 8002D728 00031880 */  sll        $v1, $v1, 2
/* 7C6DC 8002D72C 3C028007 */  lui        $v0, %hi(D_8006C404_BB3B4)
/* 7C6E0 8002D730 2442C404 */  addiu      $v0, $v0, %lo(D_8006C404_BB3B4)
/* 7C6E4 8002D734 00621821 */  addu       $v1, $v1, $v0
/* 7C6E8 8002D738 AFBF0054 */  sw         $ra, 0x54($sp)
/* 7C6EC 8002D73C AFBE0050 */  sw         $fp, 0x50($sp)
/* 7C6F0 8002D740 AFB7004C */  sw         $s7, 0x4c($sp)
/* 7C6F4 8002D744 AFB60048 */  sw         $s6, 0x48($sp)
/* 7C6F8 8002D748 AFB40040 */  sw         $s4, 0x40($sp)
/* 7C6FC 8002D74C AFB3003C */  sw         $s3, 0x3c($sp)
/* 7C700 8002D750 AFB20038 */  sw         $s2, 0x38($sp)
/* 7C704 8002D754 AFB10034 */  sw         $s1, 0x34($sp)
/* 7C708 8002D758 AFB00030 */  sw         $s0, 0x30($sp)
/* 7C70C 8002D75C 8C770004 */  lw         $s7, 4($v1)
/* 7C710 8002D760 3C128008 */  lui        $s2, %hi(D_800841E0)
/* 7C714 8002D764 265241E0 */  addiu      $s2, $s2, %lo(D_800841E0)
/* 7C718 8002D768 02402021 */  addu       $a0, $s2, $zero
/* 7C71C 8002D76C 24050430 */  addiu      $a1, $zero, 0x430
/* 7C720 8002D770 94660010 */  lhu        $a2, 0x10($v1)
/* 7C724 8002D774 0000B021 */  addu       $s6, $zero, $zero
/* 7C728 8002D778 26480300 */  addiu      $t0, $s2, 0x300
/* 7C72C 8002D77C AFA8002C */  sw         $t0, 0x2c($sp)
/* 7C730 8002D780 00061040 */  sll        $v0, $a2, 1
/* 7C734 8002D784 00461021 */  addu       $v0, $v0, $a2
/* 7C738 8002D788 00021080 */  sll        $v0, $v0, 2
/* 7C73C 8002D78C 3C068007 */  lui        $a2, %hi(D_8006E830_BD7E0)
/* 7C740 8002D790 00C23021 */  addu       $a2, $a2, $v0
/* 7C744 8002D794 8CC6E830 */  lw         $a2, %lo(D_8006E830_BD7E0)($a2)
/* 7C748 8002D798 8C740008 */  lw         $s4, 8($v1)
/* 7C74C 8002D79C 3C028007 */  lui        $v0, %hi(D_8006FBC8_BEB78)
/* 7C750 8002D7A0 2442FBC8 */  addiu      $v0, $v0, %lo(D_8006FBC8_BEB78)
/* 7C754 8002D7A4 00C2F021 */  addu       $fp, $a2, $v0
/* 7C758 8002D7A8 8FD00010 */  lw         $s0, 0x10($fp)
/* 7C75C 8002D7AC 8FD10014 */  lw         $s1, 0x14($fp)
/* 7C760 8002D7B0 8C73000C */  lw         $s3, 0xc($v1)
/* 7C764 8002D7B4 03D08021 */  addu       $s0, $fp, $s0
/* 7C768 8002D7B8 0C030134 */  jal        bzero
/* 7C76C 8002D7BC 03D18821 */   addu      $s1, $fp, $s1
/* 7C770 8002D7C0 2402FFFF */  addiu      $v0, $zero, -1
/* 7C774 8002D7C4 3C018008 */  lui        $at, %hi(D_80084501)
/* 7C778 8002D7C8 A0224501 */  sb         $v0, %lo(D_80084501)($at)
/* 7C77C 8002D7CC 3C018008 */  lui        $at, %hi(D_80084502)
/* 7C780 8002D7D0 A0224502 */  sb         $v0, %lo(D_80084502)($at)
/* 7C784 8002D7D4 A6550000 */  sh         $s5, ($s2)
/* 7C788 8002D7D8 3C018008 */  lui        $at, %hi(D_800841E4)
/* 7C78C 8002D7DC AC3E41E4 */  sw         $fp, %lo(D_800841E4)($at)
/* 7C790 8002D7E0 3C018008 */  lui        $at, %hi(D_800841E8)
/* 7C794 8002D7E4 AC3041E8 */  sw         $s0, %lo(D_800841E8)($at)
/* 7C798 8002D7E8 3C018008 */  lui        $at, %hi(D_800841EC)
/* 7C79C 8002D7EC AC3141EC */  sw         $s1, %lo(D_800841EC)($at)
/* 7C7A0 8002D7F0 3C018008 */  lui        $at, %hi(D_800841F0)
/* 7C7A4 8002D7F4 AC3441F0 */  sw         $s4, %lo(D_800841F0)($at)
/* 7C7A8 8002D7F8 3C018008 */  lui        $at, %hi(D_800841F4)
/* 7C7AC 8002D7FC AC3341F4 */  sw         $s3, %lo(D_800841F4)($at)
/* 7C7B0 8002D800 97C20004 */  lhu        $v0, 4($fp)
/* 7C7B4 8002D804 2652001C */  addiu      $s2, $s2, 0x1c
/* 7C7B8 8002D808 0240A821 */  addu       $s5, $s2, $zero
/* 7C7BC 8002D80C 3C018008 */  lui        $at, %hi(D_800841F8)
/* 7C7C0 8002D810 A42241F8 */  sh         $v0, %lo(D_800841F8)($at)
.L8002D814:
/* 7C7C4 8002D814 96E20000 */  lhu        $v0, ($s7)
/* 7C7C8 8002D818 3408FFFF */  ori        $t0, $zero, 0xffff
/* 7C7CC 8002D81C 10480068 */  beq        $v0, $t0, .L8002D9C0
/* 7C7D0 8002D820 0040A021 */   addu      $s4, $v0, $zero
/* 7C7D4 8002D824 00141400 */  sll        $v0, $s4, 0x10
/* 7C7D8 8002D828 00029C03 */  sra        $s3, $v0, 0x10
/* 7C7DC 8002D82C 02602021 */  addu       $a0, $s3, $zero
/* 7C7E0 8002D830 00002821 */  addu       $a1, $zero, $zero
/* 7C7E4 8002D834 96F00002 */  lhu        $s0, 2($s7)
/* 7C7E8 8002D838 0C027DAC */  jal        func_8009F6B0
/* 7C7EC 8002D83C 24060001 */   addiu     $a2, $zero, 1
/* 7C7F0 8002D840 00408821 */  addu       $s1, $v0, $zero
/* 7C7F4 8002D844 92220066 */  lbu        $v0, 0x66($s1)
/* 7C7F8 8002D848 3408FFFF */  ori        $t0, $zero, 0xffff
/* 7C7FC 8002D84C 34420007 */  ori        $v0, $v0, 7
/* 7C800 8002D850 1208000D */  beq        $s0, $t0, .L8002D888
/* 7C804 8002D854 A2220066 */   sb        $v0, 0x66($s1)
/* 7C808 8002D858 27A40018 */  addiu      $a0, $sp, 0x18
/* 7C80C 8002D85C 27A5001C */  addiu      $a1, $sp, 0x1c
/* 7C810 8002D860 02203021 */  addu       $a2, $s1, $zero
/* 7C814 8002D864 02603821 */  addu       $a3, $s3, $zero
/* 7C818 8002D868 00101400 */  sll        $v0, $s0, 0x10
/* 7C81C 8002D86C 00021403 */  sra        $v0, $v0, 0x10
/* 7C820 8002D870 AFA20010 */  sw         $v0, 0x10($sp)
/* 7C824 8002D874 24020001 */  addiu      $v0, $zero, 1
/* 7C828 8002D878 0C027D66 */  jal        func_8009F598
/* 7C82C 8002D87C AFA20014 */   sw        $v0, 0x14($sp)
/* 7C830 8002D880 0800B625 */  j          .L8002D894
/* 7C834 8002D884 00142400 */   sll       $a0, $s4, 0x10
.L8002D888:
/* 7C838 8002D888 AFA00018 */  sw         $zero, 0x18($sp)
/* 7C83C 8002D88C AFA0001C */  sw         $zero, 0x1c($sp)
/* 7C840 8002D890 00142400 */  sll        $a0, $s4, 0x10
.L8002D894:
/* 7C844 8002D894 0C00B9F7 */  jal        func_8002E7DC_7D78C
/* 7C848 8002D898 00042403 */   sra       $a0, $a0, 0x10
/* 7C84C 8002D89C 10400003 */  beqz       $v0, .L8002D8AC
/* 7C850 8002D8A0 00000000 */   nop
/* 7C854 8002D8A4 3C018008 */  lui        $at, %hi(D_80084501)
/* 7C858 8002D8A8 A0364501 */  sb         $s6, %lo(D_80084501)($at)
.L8002D8AC:
/* 7C85C 8002D8AC 1680000C */  bnez       $s4, .L8002D8E0
/* 7C860 8002D8B0 24020002 */   addiu     $v0, $zero, 2
/* 7C864 8002D8B4 02202021 */  addu       $a0, $s1, $zero
/* 7C868 8002D8B8 3C058008 */  lui        $a1, %hi(D_8007DA28_CC9D8)
/* 7C86C 8002D8BC 24A5DA28 */  addiu      $a1, $a1, %lo(D_8007DA28_CC9D8)
/* 7C870 8002D8C0 0C0286A4 */  jal        func_800A1A90
/* 7C874 8002D8C4 00003021 */   addu      $a2, $zero, $zero
/* 7C878 8002D8C8 02202021 */  addu       $a0, $s1, $zero
/* 7C87C 8002D8CC 3C058008 */  lui        $a1, %hi(D_8007DA30_CC9E0)
/* 7C880 8002D8D0 24A5DA30 */  addiu      $a1, $a1, %lo(D_8007DA30_CC9E0)
/* 7C884 8002D8D4 0C0286A4 */  jal        func_800A1A90
/* 7C888 8002D8D8 00003021 */   addu      $a2, $zero, $zero
/* 7C88C 8002D8DC 24020002 */  addiu      $v0, $zero, 2
.L8002D8E0:
/* 7C890 8002D8E0 56820015 */  bnel       $s4, $v0, .L8002D938
/* 7C894 8002D8E4 26F70004 */   addiu     $s7, $s7, 4
/* 7C898 8002D8E8 02202021 */  addu       $a0, $s1, $zero
/* 7C89C 8002D8EC 3C058008 */  lui        $a1, %hi(D_8007DA38_CC9E8)
/* 7C8A0 8002D8F0 24A5DA38 */  addiu      $a1, $a1, %lo(D_8007DA38_CC9E8)
/* 7C8A4 8002D8F4 3C018008 */  lui        $at, %hi(D_80084502)
/* 7C8A8 8002D8F8 A0364502 */  sb         $s6, %lo(D_80084502)($at)
/* 7C8AC 8002D8FC 3C018008 */  lui        $at, %hi(D_8008457C)
/* 7C8B0 8002D900 A020457C */  sb         $zero, %lo(D_8008457C)($at)
/* 7C8B4 8002D904 0C0286A4 */  jal        func_800A1A90
/* 7C8B8 8002D908 00003021 */   addu      $a2, $zero, $zero
/* 7C8BC 8002D90C 02202021 */  addu       $a0, $s1, $zero
/* 7C8C0 8002D910 3C058008 */  lui        $a1, %hi(D_8007DA40_CC9F0)
/* 7C8C4 8002D914 24A5DA40 */  addiu      $a1, $a1, %lo(D_8007DA40_CC9F0)
/* 7C8C8 8002D918 0C0286A4 */  jal        func_800A1A90
/* 7C8CC 8002D91C 00003021 */   addu      $a2, $zero, $zero
/* 7C8D0 8002D920 02202021 */  addu       $a0, $s1, $zero
/* 7C8D4 8002D924 3C058008 */  lui        $a1, %hi(D_8007DA48_CC9F8)
/* 7C8D8 8002D928 24A5DA48 */  addiu      $a1, $a1, %lo(D_8007DA48_CC9F8)
/* 7C8DC 8002D92C 0C0286A4 */  jal        func_800A1A90
/* 7C8E0 8002D930 00003021 */   addu      $a2, $zero, $zero
/* 7C8E4 8002D934 26F70004 */  addiu      $s7, $s7, 4
.L8002D938:
/* 7C8E8 8002D938 AEB10000 */  sw         $s1, ($s5)
/* 7C8EC 8002D93C 26B50004 */  addiu      $s5, $s5, 4
/* 7C8F0 8002D940 00161880 */  sll        $v1, $s6, 2
/* 7C8F4 8002D944 8FA40018 */  lw         $a0, 0x18($sp)
/* 7C8F8 8002D948 3C013CA3 */  lui        $at, 0x3ca3
/* 7C8FC 8002D94C 3421D70A */  ori        $at, $at, 0xd70a
/* 7C900 8002D950 44810000 */  mtc1       $at, $f0
/* 7C904 8002D954 00000000 */  nop
/* 7C908 8002D958 26420020 */  addiu      $v0, $s2, 0x20
/* 7C90C 8002D95C 00621021 */  addu       $v0, $v1, $v0
/* 7C910 8002D960 AC440000 */  sw         $a0, ($v0)
/* 7C914 8002D964 8FA4001C */  lw         $a0, 0x1c($sp)
/* 7C918 8002D968 26420040 */  addiu      $v0, $s2, 0x40
/* 7C91C 8002D96C 00621021 */  addu       $v0, $v1, $v0
/* 7C920 8002D970 AC440000 */  sw         $a0, ($v0)
/* 7C924 8002D974 26420264 */  addiu      $v0, $s2, 0x264
/* 7C928 8002D978 00621021 */  addu       $v0, $v1, $v0
/* 7C92C 8002D97C AC400000 */  sw         $zero, ($v0)
/* 7C930 8002D980 26420284 */  addiu      $v0, $s2, 0x284
/* 7C934 8002D984 00621021 */  addu       $v0, $v1, $v0
/* 7C938 8002D988 AC400000 */  sw         $zero, ($v0)
/* 7C93C 8002D98C 264202A4 */  addiu      $v0, $s2, 0x2a4
/* 7C940 8002D990 00621021 */  addu       $v0, $v1, $v0
/* 7C944 8002D994 AC400000 */  sw         $zero, ($v0)
/* 7C948 8002D998 264202C4 */  addiu      $v0, $s2, 0x2c4
/* 7C94C 8002D99C 00621821 */  addu       $v1, $v1, $v0
/* 7C950 8002D9A0 AC600000 */  sw         $zero, ($v1)
/* 7C954 8002D9A4 8FA8002C */  lw         $t0, 0x2c($sp)
/* 7C958 8002D9A8 26D60001 */  addiu      $s6, $s6, 1
/* 7C95C 8002D9AC 2AC20008 */  slti       $v0, $s6, 8
/* 7C960 8002D9B0 E5000000 */  swc1       $f0, ($t0)
/* 7C964 8002D9B4 25080004 */  addiu      $t0, $t0, 4
/* 7C968 8002D9B8 1440FF96 */  bnez       $v0, .L8002D814
/* 7C96C 8002D9BC AFA8002C */   sw        $t0, 0x2c($sp)
.L8002D9C0:
/* 7C970 8002D9C0 3C038008 */  lui        $v1, %hi(D_80084501)
/* 7C974 8002D9C4 80634501 */  lb         $v1, %lo(D_80084501)($v1)
/* 7C978 8002D9C8 3C128008 */  lui        $s2, %hi(D_80084500)
/* 7C97C 8002D9CC 26524500 */  addiu      $s2, $s2, %lo(D_80084500)
/* 7C980 8002D9D0 2402FFFF */  addiu      $v0, $zero, -1
/* 7C984 8002D9D4 106200B2 */  beq        $v1, $v0, .L8002DCA0
/* 7C988 8002D9D8 A2560000 */   sb        $s6, ($s2)
/* 7C98C 8002D9DC 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 7C990 8002D9E0 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 7C994 8002D9E4 24020002 */  addiu      $v0, $zero, 2
/* 7C998 8002D9E8 10620005 */  beq        $v1, $v0, .L8002DA00
/* 7C99C 8002D9EC 24020005 */   addiu     $v0, $zero, 5
/* 7C9A0 8002D9F0 1062001C */  beq        $v1, $v0, .L8002DA64
/* 7C9A4 8002D9F4 24040055 */   addiu     $a0, $zero, 0x55
/* 7C9A8 8002D9F8 0800B6BE */  j          .L8002DAF8
/* 7C9AC 8002D9FC 24040054 */   addiu     $a0, $zero, 0x54
.L8002DA00:
/* 7C9B0 8002DA00 24040054 */  addiu      $a0, $zero, 0x54
/* 7C9B4 8002DA04 00002821 */  addu       $a1, $zero, $zero
/* 7C9B8 8002DA08 0C027DAC */  jal        func_8009F6B0
/* 7C9BC 8002DA0C 24060001 */   addiu     $a2, $zero, 1
/* 7C9C0 8002DA10 00408821 */  addu       $s1, $v0, $zero
/* 7C9C4 8002DA14 02202021 */  addu       $a0, $s1, $zero
/* 7C9C8 8002DA18 3C108008 */  lui        $s0, %hi(D_8007DA50_CCA00)
/* 7C9CC 8002DA1C 2610DA50 */  addiu      $s0, $s0, %lo(D_8007DA50_CCA00)
/* 7C9D0 8002DA20 3C018008 */  lui        $at, %hi(D_80084504)
/* 7C9D4 8002DA24 AC244504 */  sw         $a0, %lo(D_80084504)($at)
/* 7C9D8 8002DA28 0C0285D4 */  jal        func_800A1750
/* 7C9DC 8002DA2C 02002821 */   addu      $a1, $s0, $zero
/* 7C9E0 8002DA30 3403F801 */  ori        $v1, $zero, 0xf801
/* 7C9E4 8002DA34 A443001E */  sh         $v1, 0x1e($v0)
/* 7C9E8 8002DA38 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7C9EC 8002DA3C 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7C9F0 8002DA40 3C068008 */  lui        $a2, %hi(D_80084504)
/* 7C9F4 8002DA44 8CC64504 */  lw         $a2, %lo(D_80084504)($a2)
/* 7C9F8 8002DA48 00021080 */  sll        $v0, $v0, 2
/* 7C9FC 8002DA4C 02421021 */  addu       $v0, $s2, $v0
/* 7CA00 8002DA50 8C44FCFC */  lw         $a0, -0x304($v0)
/* 7CA04 8002DA54 3C058008 */  lui        $a1, %hi(D_8007DA58_CCA08)
/* 7CA08 8002DA58 24A5DA58 */  addiu      $a1, $a1, %lo(D_8007DA58_CCA08)
/* 7CA0C 8002DA5C 0800B6D1 */  j          .L8002DB44
/* 7CA10 8002DA60 00000000 */   nop
.L8002DA64:
/* 7CA14 8002DA64 00002821 */  addu       $a1, $zero, $zero
/* 7CA18 8002DA68 0C027DAC */  jal        func_8009F6B0
/* 7CA1C 8002DA6C 24060001 */   addiu     $a2, $zero, 1
/* 7CA20 8002DA70 00408821 */  addu       $s1, $v0, $zero
/* 7CA24 8002DA74 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7CA28 8002DA78 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7CA2C 8002DA7C 3C058008 */  lui        $a1, %hi(D_8007DA58_CCA08)
/* 7CA30 8002DA80 24A5DA58 */  addiu      $a1, $a1, %lo(D_8007DA58_CCA08)
/* 7CA34 8002DA84 2650FCFC */  addiu      $s0, $s2, -0x304
/* 7CA38 8002DA88 3C018008 */  lui        $at, %hi(D_80084504)
/* 7CA3C 8002DA8C AC314504 */  sw         $s1, %lo(D_80084504)($at)
/* 7CA40 8002DA90 00021080 */  sll        $v0, $v0, 2
/* 7CA44 8002DA94 00501021 */  addu       $v0, $v0, $s0
/* 7CA48 8002DA98 8C440000 */  lw         $a0, ($v0)
/* 7CA4C 8002DA9C 02203021 */  addu       $a2, $s1, $zero
/* 7CA50 8002DAA0 0C02864D */  jal        func_800A1934
/* 7CA54 8002DAA4 00A03821 */   addu      $a3, $a1, $zero
/* 7CA58 8002DAA8 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7CA5C 8002DAAC 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7CA60 8002DAB0 00021080 */  sll        $v0, $v0, 2
/* 7CA64 8002DAB4 00501021 */  addu       $v0, $v0, $s0
/* 7CA68 8002DAB8 8C440000 */  lw         $a0, ($v0)
/* 7CA6C 8002DABC 3C058008 */  lui        $a1, %hi(D_8007DA60_CCA10)
/* 7CA70 8002DAC0 24A5DA60 */  addiu      $a1, $a1, %lo(D_8007DA60_CCA10)
/* 7CA74 8002DAC4 0C027F32 */  jal        func_8009FCC8
/* 7CA78 8002DAC8 00000000 */   nop
/* 7CA7C 8002DACC 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7CA80 8002DAD0 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7CA84 8002DAD4 00021080 */  sll        $v0, $v0, 2
/* 7CA88 8002DAD8 00501021 */  addu       $v0, $v0, $s0
/* 7CA8C 8002DADC 8C440000 */  lw         $a0, ($v0)
/* 7CA90 8002DAE0 3C058008 */  lui        $a1, %hi(D_8007DA68_CCA18)
/* 7CA94 8002DAE4 24A5DA68 */  addiu      $a1, $a1, %lo(D_8007DA68_CCA18)
/* 7CA98 8002DAE8 0C027F32 */  jal        func_8009FCC8
/* 7CA9C 8002DAEC 00000000 */   nop
/* 7CAA0 8002DAF0 0800B6D5 */  j          .L8002DB54
/* 7CAA4 8002DAF4 00000000 */   nop
.L8002DAF8:
/* 7CAA8 8002DAF8 00002821 */  addu       $a1, $zero, $zero
/* 7CAAC 8002DAFC 0C027DAC */  jal        func_8009F6B0
/* 7CAB0 8002DB00 24060001 */   addiu     $a2, $zero, 1
/* 7CAB4 8002DB04 3C038008 */  lui        $v1, %hi(D_80083A20)
/* 7CAB8 8002DB08 90633A20 */  lbu        $v1, %lo(D_80083A20)($v1)
/* 7CABC 8002DB0C 00408821 */  addu       $s1, $v0, $zero
/* 7CAC0 8002DB10 3C048008 */  lui        $a0, %hi(D_80084504)
/* 7CAC4 8002DB14 24844504 */  addiu      $a0, $a0, %lo(D_80084504)
/* 7CAC8 8002DB18 24020001 */  addiu      $v0, $zero, 1
/* 7CACC 8002DB1C 1462000D */  bne        $v1, $v0, .L8002DB54
/* 7CAD0 8002DB20 AC910000 */   sw        $s1, ($a0)
/* 7CAD4 8002DB24 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7CAD8 8002DB28 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7CADC 8002DB2C 3C058008 */  lui        $a1, %hi(D_8007DA58_CCA08)
/* 7CAE0 8002DB30 24A5DA58 */  addiu      $a1, $a1, %lo(D_8007DA58_CCA08)
/* 7CAE4 8002DB34 00021080 */  sll        $v0, $v0, 2
/* 7CAE8 8002DB38 00821021 */  addu       $v0, $a0, $v0
/* 7CAEC 8002DB3C 8C44FCF8 */  lw         $a0, -0x308($v0)
/* 7CAF0 8002DB40 02203021 */  addu       $a2, $s1, $zero
.L8002DB44:
/* 7CAF4 8002DB44 3C078008 */  lui        $a3, %hi(D_8007DA50_CCA00)
/* 7CAF8 8002DB48 24E7DA50 */  addiu      $a3, $a3, %lo(D_8007DA50_CCA00)
/* 7CAFC 8002DB4C 0C02864D */  jal        func_800A1934
/* 7CB00 8002DB50 00000000 */   nop
.L8002DB54:
/* 7CB04 8002DB54 3C108008 */  lui        $s0, %hi(D_80084501)
/* 7CB08 8002DB58 26104501 */  addiu      $s0, $s0, %lo(D_80084501)
/* 7CB0C 8002DB5C 82020000 */  lb         $v0, ($s0)
/* 7CB10 8002DB60 2412FFFF */  addiu      $s2, $zero, -1
/* 7CB14 8002DB64 1052004E */  beq        $v0, $s2, .L8002DCA0
/* 7CB18 8002DB68 2404002A */   addiu     $a0, $zero, 0x2a
/* 7CB1C 8002DB6C 00002821 */  addu       $a1, $zero, $zero
/* 7CB20 8002DB70 0C027DAC */  jal        func_8009F6B0
/* 7CB24 8002DB74 24060001 */   addiu     $a2, $zero, 1
/* 7CB28 8002DB78 3C038008 */  lui        $v1, %hi(D_800841D0)
/* 7CB2C 8002DB7C 906341D0 */  lbu        $v1, %lo(D_800841D0)($v1)
/* 7CB30 8002DB80 3C018008 */  lui        $at, %hi(D_80084508)
/* 7CB34 8002DB84 AC224508 */  sw         $v0, %lo(D_80084508)($at)
/* 7CB38 8002DB88 24020001 */  addiu      $v0, $zero, 1
/* 7CB3C 8002DB8C 3C018008 */  lui        $at, %hi(D_8008450C)
/* 7CB40 8002DB90 A020450C */  sb         $zero, %lo(D_8008450C)($at)
/* 7CB44 8002DB94 14620004 */  bne        $v1, $v0, .L8002DBA8
/* 7CB48 8002DB98 00000000 */   nop
/* 7CB4C 8002DB9C 93C40008 */  lbu        $a0, 8($fp)
/* 7CB50 8002DBA0 0C00BF31 */  jal        func_8002FCC4_7EC74
/* 7CB54 8002DBA4 00000000 */   nop
.L8002DBA8:
/* 7CB58 8002DBA8 82020000 */  lb         $v0, ($s0)
/* 7CB5C 8002DBAC 1052003C */  beq        $v0, $s2, .L8002DCA0
/* 7CB60 8002DBB0 2404005A */   addiu     $a0, $zero, 0x5a
/* 7CB64 8002DBB4 00002821 */  addu       $a1, $zero, $zero
/* 7CB68 8002DBB8 0C027DAC */  jal        func_8009F6B0
/* 7CB6C 8002DBBC 24060001 */   addiu     $a2, $zero, 1
/* 7CB70 8002DBC0 2404013A */  addiu      $a0, $zero, 0x13a
/* 7CB74 8002DBC4 00002821 */  addu       $a1, $zero, $zero
/* 7CB78 8002DBC8 3C018008 */  lui        $at, %hi(D_80084510)
/* 7CB7C 8002DBCC AC224510 */  sw         $v0, %lo(D_80084510)($at)
/* 7CB80 8002DBD0 0C027DAC */  jal        func_8009F6B0
/* 7CB84 8002DBD4 24060001 */   addiu     $a2, $zero, 1
/* 7CB88 8002DBD8 82030000 */  lb         $v1, ($s0)
/* 7CB8C 8002DBDC 00408821 */  addu       $s1, $v0, $zero
/* 7CB90 8002DBE0 00031880 */  sll        $v1, $v1, 2
/* 7CB94 8002DBE4 02031821 */  addu       $v1, $s0, $v1
/* 7CB98 8002DBE8 8C64FCFB */  lw         $a0, -0x305($v1)
/* 7CB9C 8002DBEC 3C058008 */  lui        $a1, %hi(D_8007DA70_CCA20)
/* 7CBA0 8002DBF0 24A5DA70 */  addiu      $a1, $a1, %lo(D_8007DA70_CCA20)
/* 7CBA4 8002DBF4 0C0286A4 */  jal        func_800A1A90
/* 7CBA8 8002DBF8 00003021 */   addu      $a2, $zero, $zero
/* 7CBAC 8002DBFC 3C018008 */  lui        $at, %hi(D_80084514)
/* 7CBB0 8002DC00 AC314514 */  sw         $s1, %lo(D_80084514)($at)
/* 7CBB4 8002DC04 3C018008 */  lui        $at, %hi(D_80084518)
/* 7CBB8 8002DC08 A0204518 */  sb         $zero, %lo(D_80084518)($at)
/* 7CBBC 8002DC0C 0C00DA01 */  jal        func_80036804_857B4
/* 7CBC0 8002DC10 00000000 */   nop
/* 7CBC4 8002DC14 10400005 */  beqz       $v0, .L8002DC2C
/* 7CBC8 8002DC18 00000000 */   nop
/* 7CBCC 8002DC1C 3C048008 */  lui        $a0, %hi(D_80083018)
/* 7CBD0 8002DC20 80843018 */  lb         $a0, %lo(D_80083018)($a0)
/* 7CBD4 8002DC24 0C00BF6B */  jal        func_8002FDAC_7ED5C
/* 7CBD8 8002DC28 00000000 */   nop
.L8002DC2C:
/* 7CBDC 8002DC2C 82020000 */  lb         $v0, ($s0)
/* 7CBE0 8002DC30 1052001B */  beq        $v0, $s2, .L8002DCA0
/* 7CBE4 8002DC34 24020005 */   addiu     $v0, $zero, 5
/* 7CBE8 8002DC38 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 7CBEC 8002DC3C 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 7CBF0 8002DC40 14620017 */  bne        $v1, $v0, .L8002DCA0
/* 7CBF4 8002DC44 24040061 */   addiu     $a0, $zero, 0x61
/* 7CBF8 8002DC48 00002821 */  addu       $a1, $zero, $zero
/* 7CBFC 8002DC4C 0C027DAC */  jal        func_8009F6B0
/* 7CC00 8002DC50 24060001 */   addiu     $a2, $zero, 1
/* 7CC04 8002DC54 00408821 */  addu       $s1, $v0, $zero
/* 7CC08 8002DC58 02202021 */  addu       $a0, $s1, $zero
/* 7CC0C 8002DC5C 240500FF */  addiu      $a1, $zero, 0xff
/* 7CC10 8002DC60 92220066 */  lbu        $v0, 0x66($s1)
/* 7CC14 8002DC64 240600FF */  addiu      $a2, $zero, 0xff
/* 7CC18 8002DC68 240700FF */  addiu      $a3, $zero, 0xff
/* 7CC1C 8002DC6C 34420021 */  ori        $v0, $v0, 0x21
/* 7CC20 8002DC70 A2220066 */  sb         $v0, 0x66($s1)
/* 7CC24 8002DC74 0C027F5E */  jal        func_8009FD78
/* 7CC28 8002DC78 AFA00010 */   sw        $zero, 0x10($sp)
/* 7CC2C 8002DC7C 2402000A */  addiu      $v0, $zero, 0xa
/* 7CC30 8002DC80 A2220067 */  sb         $v0, 0x67($s1)
/* 7CC34 8002DC84 24020008 */  addiu      $v0, $zero, 8
/* 7CC38 8002DC88 3C018008 */  lui        $at, %hi(D_8008451C)
/* 7CC3C 8002DC8C AC31451C */  sw         $s1, %lo(D_8008451C)($at)
/* 7CC40 8002DC90 3C018008 */  lui        $at, %hi(D_80084560)
/* 7CC44 8002DC94 A4204560 */  sh         $zero, %lo(D_80084560)($at)
/* 7CC48 8002DC98 3C018008 */  lui        $at, %hi(D_80084562)
/* 7CC4C 8002DC9C A4224562 */  sh         $v0, %lo(D_80084562)($at)
.L8002DCA0:
/* 7CC50 8002DCA0 3C048008 */  lui        $a0, %hi(D_80084502)
/* 7CC54 8002DCA4 24844502 */  addiu      $a0, $a0, %lo(D_80084502)
/* 7CC58 8002DCA8 80830000 */  lb         $v1, ($a0)
/* 7CC5C 8002DCAC 2402FFFF */  addiu      $v0, $zero, -1
/* 7CC60 8002DCB0 10620027 */  beq        $v1, $v0, .L8002DD50
/* 7CC64 8002DCB4 00000000 */   nop
/* 7CC68 8002DCB8 0000B021 */  addu       $s6, $zero, $zero
/* 7CC6C 8002DCBC 24170001 */  addiu      $s7, $zero, 1
/* 7CC70 8002DCC0 24940072 */  addiu      $s4, $a0, 0x72
/* 7CC74 8002DCC4 2493006A */  addiu      $s3, $a0, 0x6a
/* 7CC78 8002DCC8 24920062 */  addiu      $s2, $a0, 0x62
/* 7CC7C 8002DCCC 27B50018 */  addiu      $s5, $sp, 0x18
/* 7CC80 8002DCD0 02A08021 */  addu       $s0, $s5, $zero
.L8002DCD4:
/* 7CC84 8002DCD4 24040003 */  addiu      $a0, $zero, 3
/* 7CC88 8002DCD8 00002821 */  addu       $a1, $zero, $zero
/* 7CC8C 8002DCDC 24060001 */  addiu      $a2, $zero, 1
/* 7CC90 8002DCE0 2408000B */  addiu      $t0, $zero, 0xb
/* 7CC94 8002DCE4 A7A80020 */  sh         $t0, 0x20($sp)
/* 7CC98 8002DCE8 2408001A */  addiu      $t0, $zero, 0x1a
/* 7CC9C 8002DCEC 0C027DAC */  jal        func_8009F6B0
/* 7CCA0 8002DCF0 A7A80022 */   sh        $t0, 0x22($sp)
/* 7CCA4 8002DCF4 00408821 */  addu       $s1, $v0, $zero
/* 7CCA8 8002DCF8 02A02021 */  addu       $a0, $s5, $zero
/* 7CCAC 8002DCFC 27A5001C */  addiu      $a1, $sp, 0x1c
/* 7CCB0 8002DD00 86020008 */  lh         $v0, 8($s0)
/* 7CCB4 8002DD04 02203021 */  addu       $a2, $s1, $zero
/* 7CCB8 8002DD08 24070003 */  addiu      $a3, $zero, 3
/* 7CCBC 8002DD0C AFB70014 */  sw         $s7, 0x14($sp)
/* 7CCC0 8002DD10 0C027D66 */  jal        func_8009F598
/* 7CCC4 8002DD14 AFA20010 */   sw        $v0, 0x10($sp)
/* 7CCC8 8002DD18 8FA20018 */  lw         $v0, 0x18($sp)
/* 7CCCC 8002DD1C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 7CCD0 8002DD20 26100002 */  addiu      $s0, $s0, 2
/* 7CCD4 8002DD24 26D60001 */  addiu      $s6, $s6, 1
/* 7CCD8 8002DD28 AE510000 */  sw         $s1, ($s2)
/* 7CCDC 8002DD2C 26520004 */  addiu      $s2, $s2, 4
/* 7CCE0 8002DD30 AE620000 */  sw         $v0, ($s3)
/* 7CCE4 8002DD34 AE830000 */  sw         $v1, ($s4)
/* 7CCE8 8002DD38 26940004 */  addiu      $s4, $s4, 4
/* 7CCEC 8002DD3C 2AC20002 */  slti       $v0, $s6, 2
/* 7CCF0 8002DD40 1440FFE4 */  bnez       $v0, .L8002DCD4
/* 7CCF4 8002DD44 26730004 */   addiu     $s3, $s3, 4
/* 7CCF8 8002DD48 0C00BFB7 */  jal        func_8002FEDC_7EE8C
/* 7CCFC 8002DD4C 24040001 */   addiu     $a0, $zero, 1
.L8002DD50:
/* 7CD00 8002DD50 0C00B783 */  jal        func_8002DE0C_7CDBC
/* 7CD04 8002DD54 00000000 */   nop
/* 7CD08 8002DD58 93C50000 */  lbu        $a1, ($fp)
/* 7CD0C 8002DD5C 3C108008 */  lui        $s0, %hi(D_80081BA0)
/* 7CD10 8002DD60 26101BA0 */  addiu      $s0, $s0, %lo(D_80081BA0)
/* 7CD14 8002DD64 02002021 */  addu       $a0, $s0, $zero
/* 7CD18 8002DD68 0C00AB68 */  jal        func_8002ADA0_79D50
/* 7CD1C 8002DD6C 24060001 */   addiu     $a2, $zero, 1
/* 7CD20 8002DD70 87C20002 */  lh         $v0, 2($fp)
/* 7CD24 8002DD74 44800000 */  mtc1       $zero, $f0
/* 7CD28 8002DD78 00000000 */  nop
/* 7CD2C 8002DD7C 02002021 */  addu       $a0, $s0, $zero
/* 7CD30 8002DD80 44060000 */  mfc1       $a2, $f0
/* 7CD34 8002DD84 00000000 */  nop
/* 7CD38 8002DD88 44821000 */  mtc1       $v0, $f2
/* 7CD3C 8002DD8C 00000000 */  nop
/* 7CD40 8002DD90 468010A0 */  cvt.s.w    $f2, $f2
/* 7CD44 8002DD94 44051000 */  mfc1       $a1, $f2
/* 7CD48 8002DD98 00000000 */  nop
/* 7CD4C 8002DD9C 0C00AD43 */  jal        func_8002B50C_7A4BC
/* 7CD50 8002DDA0 00C03821 */   addu      $a3, $a2, $zero
/* 7CD54 8002DDA4 93C2000D */  lbu        $v0, 0xd($fp)
/* 7CD58 8002DDA8 93C40009 */  lbu        $a0, 9($fp)
/* 7CD5C 8002DDAC 93C5000A */  lbu        $a1, 0xa($fp)
/* 7CD60 8002DDB0 93C6000B */  lbu        $a2, 0xb($fp)
/* 7CD64 8002DDB4 93C7000C */  lbu        $a3, 0xc($fp)
/* 7CD68 8002DDB8 AFA20010 */  sw         $v0, 0x10($sp)
/* 7CD6C 8002DDBC 93C2000E */  lbu        $v0, 0xe($fp)
/* 7CD70 8002DDC0 0C02A603 */  jal        func_800A980C
/* 7CD74 8002DDC4 AFA20014 */   sw        $v0, 0x14($sp)
/* 7CD78 8002DDC8 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 7CD7C 8002DDCC 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 7CD80 8002DDD0 0C0E552C */  jal        func_803954B0
/* 7CD84 8002DDD4 00002821 */   addu      $a1, $zero, $zero
/* 7CD88 8002DDD8 8FBF0054 */  lw         $ra, 0x54($sp)
/* 7CD8C 8002DDDC 8FBE0050 */  lw         $fp, 0x50($sp)
/* 7CD90 8002DDE0 8FB7004C */  lw         $s7, 0x4c($sp)
/* 7CD94 8002DDE4 8FB60048 */  lw         $s6, 0x48($sp)
/* 7CD98 8002DDE8 8FB50044 */  lw         $s5, 0x44($sp)
/* 7CD9C 8002DDEC 8FB40040 */  lw         $s4, 0x40($sp)
/* 7CDA0 8002DDF0 8FB3003C */  lw         $s3, 0x3c($sp)
/* 7CDA4 8002DDF4 8FB20038 */  lw         $s2, 0x38($sp)
/* 7CDA8 8002DDF8 8FB10034 */  lw         $s1, 0x34($sp)
/* 7CDAC 8002DDFC 8FB00030 */  lw         $s0, 0x30($sp)
/* 7CDB0 8002DE00 27BD0058 */  addiu      $sp, $sp, 0x58
/* 7CDB4 8002DE04 03E00008 */  jr         $ra
/* 7CDB8 8002DE08 00000000 */   nop

glabel func_8002DE0C_7CDBC
/* 7CDBC 8002DE0C 3C038008 */  lui        $v1, %hi(D_800841E4)
/* 7CDC0 8002DE10 8C6341E4 */  lw         $v1, %lo(D_800841E4)($v1)
/* 7CDC4 8002DE14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7CDC8 8002DE18 2402FFFD */  addiu      $v0, $zero, -3
/* 7CDCC 8002DE1C AFBF0010 */  sw         $ra, 0x10($sp)
/* 7CDD0 8002DE20 3C018008 */  lui        $at, %hi(D_800845F0)
/* 7CDD4 8002DE24 A42045F0 */  sh         $zero, %lo(D_800845F0)($at)
/* 7CDD8 8002DE28 3C018008 */  lui        $at, %hi(D_800845F2)
/* 7CDDC 8002DE2C A42245F2 */  sh         $v0, %lo(D_800845F2)($at)
/* 7CDE0 8002DE30 3C018008 */  lui        $at, %hi(D_800845F4)
/* 7CDE4 8002DE34 A02045F4 */  sb         $zero, %lo(D_800845F4)($at)
/* 7CDE8 8002DE38 3C018008 */  lui        $at, %hi(D_8008457E)
/* 7CDEC 8002DE3C A420457E */  sh         $zero, %lo(D_8008457E)($at)
/* 7CDF0 8002DE40 3C018008 */  lui        $at, %hi(D_80084580)
/* 7CDF4 8002DE44 A4204580 */  sh         $zero, %lo(D_80084580)($at)
/* 7CDF8 8002DE48 3C018008 */  lui        $at, %hi(D_800845BC)
/* 7CDFC 8002DE4C A42045BC */  sh         $zero, %lo(D_800845BC)($at)
/* 7CE00 8002DE50 3C018008 */  lui        $at, %hi(D_800845BE)
/* 7CE04 8002DE54 A42045BE */  sh         $zero, %lo(D_800845BE)($at)
/* 7CE08 8002DE58 3C018008 */  lui        $at, %hi(D_800845F8)
/* 7CE0C 8002DE5C AC2045F8 */  sw         $zero, %lo(D_800845F8)($at)
/* 7CE10 8002DE60 84630006 */  lh         $v1, 6($v1)
/* 7CE14 8002DE64 24020001 */  addiu      $v0, $zero, 1
/* 7CE18 8002DE68 3C018008 */  lui        $at, %hi(D_80084600)
/* 7CE1C 8002DE6C AC204600 */  sw         $zero, %lo(D_80084600)($at)
/* 7CE20 8002DE70 3C018008 */  lui        $at, %hi(D_80084604)
/* 7CE24 8002DE74 AC204604 */  sw         $zero, %lo(D_80084604)($at)
/* 7CE28 8002DE78 3C018008 */  lui        $at, %hi(D_80084608)
/* 7CE2C 8002DE7C AC204608 */  sw         $zero, %lo(D_80084608)($at)
/* 7CE30 8002DE80 3C018008 */  lui        $at, %hi(D_8008460C)
/* 7CE34 8002DE84 A022460C */  sb         $v0, %lo(D_8008460C)($at)
/* 7CE38 8002DE88 3C018008 */  lui        $at, %hi(D_800845FC)
/* 7CE3C 8002DE8C AC2345FC */  sw         $v1, %lo(D_800845FC)($at)
/* 7CE40 8002DE90 0C0E5C60 */  jal        func_80397180
/* 7CE44 8002DE94 00000000 */   nop
/* 7CE48 8002DE98 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7CE4C 8002DE9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7CE50 8002DEA0 03E00008 */  jr         $ra
/* 7CE54 8002DEA4 00000000 */   nop

glabel func_8002DEA8_7CE58
/* 7CE58 8002DEA8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7CE5C 8002DEAC 3C038008 */  lui        $v1, %hi(D_80084500)
/* 7CE60 8002DEB0 24634500 */  addiu      $v1, $v1, %lo(D_80084500)
/* 7CE64 8002DEB4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 7CE68 8002DEB8 AFB40028 */  sw         $s4, 0x28($sp)
/* 7CE6C 8002DEBC AFB30024 */  sw         $s3, 0x24($sp)
/* 7CE70 8002DEC0 AFB20020 */  sw         $s2, 0x20($sp)
/* 7CE74 8002DEC4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 7CE78 8002DEC8 AFB00018 */  sw         $s0, 0x18($sp)
/* 7CE7C 8002DECC 90620000 */  lbu        $v0, ($v1)
/* 7CE80 8002DED0 18400012 */  blez       $v0, .L8002DF1C
/* 7CE84 8002DED4 00008021 */   addu      $s0, $zero, $zero
/* 7CE88 8002DED8 2473FD3C */  addiu      $s3, $v1, -0x2c4
/* 7CE8C 8002DEDC 2472FD1C */  addiu      $s2, $v1, -0x2e4
/* 7CE90 8002DEE0 2474FCFC */  addiu      $s4, $v1, -0x304
/* 7CE94 8002DEE4 02808821 */  addu       $s1, $s4, $zero
.L8002DEE8:
/* 7CE98 8002DEE8 8E240000 */  lw         $a0, ($s1)
/* 7CE9C 8002DEEC 0C027E98 */  jal        func_8009FA60
/* 7CEA0 8002DEF0 26310004 */   addiu     $s1, $s1, 4
/* 7CEA4 8002DEF4 8E440000 */  lw         $a0, ($s2)
/* 7CEA8 8002DEF8 0C027880 */  jal        func_8009E200
/* 7CEAC 8002DEFC 26100001 */   addiu     $s0, $s0, 1
/* 7CEB0 8002DF00 8E640000 */  lw         $a0, ($s3)
/* 7CEB4 8002DF04 0C027BB8 */  jal        func_8009EEE0
/* 7CEB8 8002DF08 26520004 */   addiu     $s2, $s2, 4
/* 7CEBC 8002DF0C 92820304 */  lbu        $v0, 0x304($s4)
/* 7CEC0 8002DF10 0202102A */  slt        $v0, $s0, $v0
/* 7CEC4 8002DF14 1440FFF4 */  bnez       $v0, .L8002DEE8
/* 7CEC8 8002DF18 26730004 */   addiu     $s3, $s3, 4
.L8002DF1C:
/* 7CECC 8002DF1C 3C118008 */  lui        $s1, %hi(D_80084501)
/* 7CED0 8002DF20 26314501 */  addiu      $s1, $s1, %lo(D_80084501)
/* 7CED4 8002DF24 82220000 */  lb         $v0, ($s1)
/* 7CED8 8002DF28 2410FFFF */  addiu      $s0, $zero, -1
/* 7CEDC 8002DF2C 10500022 */  beq        $v0, $s0, .L8002DFB8
/* 7CEE0 8002DF30 00000000 */   nop
/* 7CEE4 8002DF34 3C048008 */  lui        $a0, %hi(D_80084504)
/* 7CEE8 8002DF38 8C844504 */  lw         $a0, %lo(D_80084504)($a0)
/* 7CEEC 8002DF3C 0C027E98 */  jal        func_8009FA60
/* 7CEF0 8002DF40 00000000 */   nop
/* 7CEF4 8002DF44 82220000 */  lb         $v0, ($s1)
/* 7CEF8 8002DF48 1050001B */  beq        $v0, $s0, .L8002DFB8
/* 7CEFC 8002DF4C 00000000 */   nop
/* 7CF00 8002DF50 3C048008 */  lui        $a0, %hi(D_80084508)
/* 7CF04 8002DF54 8C844508 */  lw         $a0, %lo(D_80084508)($a0)
/* 7CF08 8002DF58 0C027E98 */  jal        func_8009FA60
/* 7CF0C 8002DF5C 00000000 */   nop
/* 7CF10 8002DF60 82220000 */  lb         $v0, ($s1)
/* 7CF14 8002DF64 10500014 */  beq        $v0, $s0, .L8002DFB8
/* 7CF18 8002DF68 00000000 */   nop
/* 7CF1C 8002DF6C 3C048008 */  lui        $a0, %hi(D_80084510)
/* 7CF20 8002DF70 8C844510 */  lw         $a0, %lo(D_80084510)($a0)
/* 7CF24 8002DF74 0C027E98 */  jal        func_8009FA60
/* 7CF28 8002DF78 00000000 */   nop
/* 7CF2C 8002DF7C 3C048008 */  lui        $a0, %hi(D_80084514)
/* 7CF30 8002DF80 8C844514 */  lw         $a0, %lo(D_80084514)($a0)
/* 7CF34 8002DF84 0C027E98 */  jal        func_8009FA60
/* 7CF38 8002DF88 00000000 */   nop
/* 7CF3C 8002DF8C 82220000 */  lb         $v0, ($s1)
/* 7CF40 8002DF90 10500009 */  beq        $v0, $s0, .L8002DFB8
/* 7CF44 8002DF94 24020005 */   addiu     $v0, $zero, 5
/* 7CF48 8002DF98 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 7CF4C 8002DF9C 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 7CF50 8002DFA0 14620005 */  bne        $v1, $v0, .L8002DFB8
/* 7CF54 8002DFA4 00000000 */   nop
/* 7CF58 8002DFA8 3C048008 */  lui        $a0, %hi(D_8008451C)
/* 7CF5C 8002DFAC 8C84451C */  lw         $a0, %lo(D_8008451C)($a0)
/* 7CF60 8002DFB0 0C027E98 */  jal        func_8009FA60
/* 7CF64 8002DFB4 00000000 */   nop
.L8002DFB8:
/* 7CF68 8002DFB8 3C048008 */  lui        $a0, %hi(D_80084502)
/* 7CF6C 8002DFBC 24844502 */  addiu      $a0, $a0, %lo(D_80084502)
/* 7CF70 8002DFC0 80830000 */  lb         $v1, ($a0)
/* 7CF74 8002DFC4 2402FFFF */  addiu      $v0, $zero, -1
/* 7CF78 8002DFC8 10620011 */  beq        $v1, $v0, .L8002E010
/* 7CF7C 8002DFCC 00008021 */   addu      $s0, $zero, $zero
/* 7CF80 8002DFD0 24930072 */  addiu      $s3, $a0, 0x72
/* 7CF84 8002DFD4 2492006A */  addiu      $s2, $a0, 0x6a
/* 7CF88 8002DFD8 24910062 */  addiu      $s1, $a0, 0x62
.L8002DFDC:
/* 7CF8C 8002DFDC 8E240000 */  lw         $a0, ($s1)
/* 7CF90 8002DFE0 0C027E98 */  jal        func_8009FA60
/* 7CF94 8002DFE4 26310004 */   addiu     $s1, $s1, 4
/* 7CF98 8002DFE8 8E440000 */  lw         $a0, ($s2)
/* 7CF9C 8002DFEC 0C027880 */  jal        func_8009E200
/* 7CFA0 8002DFF0 26100001 */   addiu     $s0, $s0, 1
/* 7CFA4 8002DFF4 8E640000 */  lw         $a0, ($s3)
/* 7CFA8 8002DFF8 26520004 */  addiu      $s2, $s2, 4
/* 7CFAC 8002DFFC 0C027BB8 */  jal        func_8009EEE0
/* 7CFB0 8002E000 26730004 */   addiu     $s3, $s3, 4
/* 7CFB4 8002E004 2A020002 */  slti       $v0, $s0, 2
/* 7CFB8 8002E008 1440FFF4 */  bnez       $v0, .L8002DFDC
/* 7CFBC 8002E00C 00000000 */   nop
.L8002E010:
/* 7CFC0 8002E010 3C108008 */  lui        $s0, %hi(D_80084600)
/* 7CFC4 8002E014 26104600 */  addiu      $s0, $s0, %lo(D_80084600)
/* 7CFC8 8002E018 0C026E4E */  jal        func_8009B938
/* 7CFCC 8002E01C 02002021 */   addu      $a0, $s0, $zero
/* 7CFD0 8002E020 0C026E4E */  jal        func_8009B938
/* 7CFD4 8002E024 26040004 */   addiu     $a0, $s0, 4
/* 7CFD8 8002E028 3C048008 */  lui        $a0, %hi(D_80084608)
/* 7CFDC 8002E02C 8C844608 */  lw         $a0, %lo(D_80084608)($a0)
/* 7CFE0 8002E030 10800003 */  beqz       $a0, .L8002E040
/* 7CFE4 8002E034 00000000 */   nop
/* 7CFE8 8002E038 0C025D58 */  jal        func_80097560
/* 7CFEC 8002E03C 00000000 */   nop
.L8002E040:
/* 7CFF0 8002E040 3C048008 */  lui        $a0, %hi(D_80081BA0)
/* 7CFF4 8002E044 24841BA0 */  addiu      $a0, $a0, %lo(D_80081BA0)
/* 7CFF8 8002E048 0C00ABA6 */  jal        func_8002AE98_79E48
/* 7CFFC 8002E04C 00000000 */   nop
/* 7D000 8002E050 3C048017 */  lui        $a0, %hi(D_8016D084)
/* 7D004 8002E054 8C84D084 */  lw         $a0, %lo(D_8016D084)($a0)
/* 7D008 8002E058 0C0E552C */  jal        func_803954B0
/* 7D00C 8002E05C 24050001 */   addiu     $a1, $zero, 1
/* 7D010 8002E060 0C0E5C60 */  jal        func_80397180
/* 7D014 8002E064 00000000 */   nop
/* 7D018 8002E068 8FBF002C */  lw         $ra, 0x2c($sp)
/* 7D01C 8002E06C 8FB40028 */  lw         $s4, 0x28($sp)
/* 7D020 8002E070 8FB30024 */  lw         $s3, 0x24($sp)
/* 7D024 8002E074 8FB20020 */  lw         $s2, 0x20($sp)
/* 7D028 8002E078 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7D02C 8002E07C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7D030 8002E080 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7D034 8002E084 03E00008 */  jr         $ra
/* 7D038 8002E088 00000000 */   nop

glabel func_8002E08C_7D03C
/* 7D03C 8002E08C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7D040 8002E090 AFB1001C */  sw         $s1, 0x1c($sp)
/* 7D044 8002E094 3C118008 */  lui        $s1, %hi(D_80084600)
/* 7D048 8002E098 26314600 */  addiu      $s1, $s1, %lo(D_80084600)
/* 7D04C 8002E09C 02202021 */  addu       $a0, $s1, $zero
/* 7D050 8002E0A0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 7D054 8002E0A4 AFB30024 */  sw         $s3, 0x24($sp)
/* 7D058 8002E0A8 AFB20020 */  sw         $s2, 0x20($sp)
/* 7D05C 8002E0AC 0C026E4E */  jal        func_8009B938
/* 7D060 8002E0B0 AFB00018 */   sw        $s0, 0x18($sp)
/* 7D064 8002E0B4 0C026E4E */  jal        func_8009B938
/* 7D068 8002E0B8 26240004 */   addiu     $a0, $s1, 4
/* 7D06C 8002E0BC 0C026EB8 */  jal        func_8009BAE0
/* 7D070 8002E0C0 00000000 */   nop
/* 7D074 8002E0C4 3C048008 */  lui        $a0, %hi(D_80084608)
/* 7D078 8002E0C8 8C844608 */  lw         $a0, %lo(D_80084608)($a0)
/* 7D07C 8002E0CC 10800003 */  beqz       $a0, .L8002E0DC
/* 7D080 8002E0D0 00000000 */   nop
/* 7D084 8002E0D4 0C025D58 */  jal        func_80097560
/* 7D088 8002E0D8 00000000 */   nop
.L8002E0DC:
/* 7D08C 8002E0DC 3C028008 */  lui        $v0, %hi(D_80084500)
/* 7D090 8002E0E0 90424500 */  lbu        $v0, %lo(D_80084500)($v0)
/* 7D094 8002E0E4 1840000E */  blez       $v0, .L8002E120
/* 7D098 8002E0E8 00008021 */   addu      $s0, $zero, $zero
/* 7D09C 8002E0EC 2632FC3C */  addiu      $s2, $s1, -0x3c4
/* 7D0A0 8002E0F0 2633FC1C */  addiu      $s3, $s1, -0x3e4
/* 7D0A4 8002E0F4 02608821 */  addu       $s1, $s3, $zero
.L8002E0F8:
/* 7D0A8 8002E0F8 8E240000 */  lw         $a0, ($s1)
/* 7D0AC 8002E0FC 0C027ABB */  jal        func_8009EAEC
/* 7D0B0 8002E100 26310004 */   addiu     $s1, $s1, 4
/* 7D0B4 8002E104 8E440000 */  lw         $a0, ($s2)
/* 7D0B8 8002E108 0C027D2B */  jal        func_8009F4AC
/* 7D0BC 8002E10C 26100001 */   addiu     $s0, $s0, 1
/* 7D0C0 8002E110 926202E4 */  lbu        $v0, 0x2e4($s3)
/* 7D0C4 8002E114 0202102A */  slt        $v0, $s0, $v0
/* 7D0C8 8002E118 1440FFF7 */  bnez       $v0, .L8002E0F8
/* 7D0CC 8002E11C 26520004 */   addiu     $s2, $s2, 4
.L8002E120:
/* 7D0D0 8002E120 3C048008 */  lui        $a0, %hi(D_80084502)
/* 7D0D4 8002E124 24844502 */  addiu      $a0, $a0, %lo(D_80084502)
/* 7D0D8 8002E128 80830000 */  lb         $v1, ($a0)
/* 7D0DC 8002E12C 2402FFFF */  addiu      $v0, $zero, -1
/* 7D0E0 8002E130 1062000E */  beq        $v1, $v0, .L8002E16C
/* 7D0E4 8002E134 00000000 */   nop
/* 7D0E8 8002E138 00008021 */  addu       $s0, $zero, $zero
/* 7D0EC 8002E13C 24920072 */  addiu      $s2, $a0, 0x72
/* 7D0F0 8002E140 2491006A */  addiu      $s1, $a0, 0x6a
.L8002E144:
/* 7D0F4 8002E144 8E240000 */  lw         $a0, ($s1)
/* 7D0F8 8002E148 0C027ABB */  jal        func_8009EAEC
/* 7D0FC 8002E14C 26310004 */   addiu     $s1, $s1, 4
/* 7D100 8002E150 8E440000 */  lw         $a0, ($s2)
/* 7D104 8002E154 26100001 */  addiu      $s0, $s0, 1
/* 7D108 8002E158 0C027D2B */  jal        func_8009F4AC
/* 7D10C 8002E15C 26520004 */   addiu     $s2, $s2, 4
/* 7D110 8002E160 2A020002 */  slti       $v0, $s0, 2
/* 7D114 8002E164 1440FFF7 */  bnez       $v0, .L8002E144
/* 7D118 8002E168 00000000 */   nop
.L8002E16C:
/* 7D11C 8002E16C 3C038008 */  lui        $v1, %hi(D_800841E4)
/* 7D120 8002E170 8C6341E4 */  lw         $v1, %lo(D_800841E4)($v1)
/* 7D124 8002E174 2402FFFD */  addiu      $v0, $zero, -3
/* 7D128 8002E178 3C018008 */  lui        $at, %hi(D_800845F0)
/* 7D12C 8002E17C A42045F0 */  sh         $zero, %lo(D_800845F0)($at)
/* 7D130 8002E180 3C018008 */  lui        $at, %hi(D_800845F2)
/* 7D134 8002E184 A42245F2 */  sh         $v0, %lo(D_800845F2)($at)
/* 7D138 8002E188 3C018008 */  lui        $at, %hi(D_800845F4)
/* 7D13C 8002E18C A02045F4 */  sb         $zero, %lo(D_800845F4)($at)
/* 7D140 8002E190 3C018008 */  lui        $at, %hi(D_8008457E)
/* 7D144 8002E194 A420457E */  sh         $zero, %lo(D_8008457E)($at)
/* 7D148 8002E198 3C018008 */  lui        $at, %hi(D_80084580)
/* 7D14C 8002E19C A4204580 */  sh         $zero, %lo(D_80084580)($at)
/* 7D150 8002E1A0 3C018008 */  lui        $at, %hi(D_800845BC)
/* 7D154 8002E1A4 A42045BC */  sh         $zero, %lo(D_800845BC)($at)
/* 7D158 8002E1A8 3C018008 */  lui        $at, %hi(D_800845BE)
/* 7D15C 8002E1AC A42045BE */  sh         $zero, %lo(D_800845BE)($at)
/* 7D160 8002E1B0 3C018008 */  lui        $at, %hi(D_800845F8)
/* 7D164 8002E1B4 AC2045F8 */  sw         $zero, %lo(D_800845F8)($at)
/* 7D168 8002E1B8 84630006 */  lh         $v1, 6($v1)
/* 7D16C 8002E1BC 24020001 */  addiu      $v0, $zero, 1
/* 7D170 8002E1C0 3C018008 */  lui        $at, %hi(D_80084600)
/* 7D174 8002E1C4 AC204600 */  sw         $zero, %lo(D_80084600)($at)
/* 7D178 8002E1C8 3C018008 */  lui        $at, %hi(D_80084604)
/* 7D17C 8002E1CC AC204604 */  sw         $zero, %lo(D_80084604)($at)
/* 7D180 8002E1D0 3C018008 */  lui        $at, %hi(D_80084608)
/* 7D184 8002E1D4 AC204608 */  sw         $zero, %lo(D_80084608)($at)
/* 7D188 8002E1D8 3C018008 */  lui        $at, %hi(D_8008460C)
/* 7D18C 8002E1DC A022460C */  sb         $v0, %lo(D_8008460C)($at)
/* 7D190 8002E1E0 3C018008 */  lui        $at, %hi(D_800845FC)
/* 7D194 8002E1E4 AC2345FC */  sw         $v1, %lo(D_800845FC)($at)
/* 7D198 8002E1E8 0C0E5C60 */  jal        func_80397180
/* 7D19C 8002E1EC 00000000 */   nop
/* 7D1A0 8002E1F0 3C018008 */  lui        $at, %hi(D_8008460C)
/* 7D1A4 8002E1F4 A020460C */  sb         $zero, %lo(D_8008460C)($at)
/* 7D1A8 8002E1F8 0C026E5D */  jal        func_8009B974
/* 7D1AC 8002E1FC 24040001 */   addiu     $a0, $zero, 1
/* 7D1B0 8002E200 0C026B46 */  jal        func_8009AD18
/* 7D1B4 8002E204 00000000 */   nop
/* 7D1B8 8002E208 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7D1BC 8002E20C 8FB30024 */  lw         $s3, 0x24($sp)
/* 7D1C0 8002E210 8FB20020 */  lw         $s2, 0x20($sp)
/* 7D1C4 8002E214 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7D1C8 8002E218 8FB00018 */  lw         $s0, 0x18($sp)
/* 7D1CC 8002E21C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7D1D0 8002E220 03E00008 */  jr         $ra
/* 7D1D4 8002E224 00000000 */   nop

glabel func_8002E228_7D1D8
/* 7D1D8 8002E228 3C038008 */  lui        $v1, %hi(D_8008457E)
/* 7D1DC 8002E22C 8463457E */  lh         $v1, %lo(D_8008457E)($v1)
/* 7D1E0 8002E230 3C048008 */  lui        $a0, %hi(D_800841E8)
/* 7D1E4 8002E234 8C8441E8 */  lw         $a0, %lo(D_800841E8)($a0)
/* 7D1E8 8002E238 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D1EC 8002E23C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D1F0 8002E240 AFB00010 */  sw         $s0, 0x10($sp)
/* 7D1F4 8002E244 000310C0 */  sll        $v0, $v1, 3
/* 7D1F8 8002E248 00431021 */  addu       $v0, $v0, $v1
/* 7D1FC 8002E24C 00021040 */  sll        $v0, $v0, 1
/* 7D200 8002E250 00822021 */  addu       $a0, $a0, $v0
/* 7D204 8002E254 90830002 */  lbu        $v1, 2($a0)
/* 7D208 8002E258 24020002 */  addiu      $v0, $zero, 2
/* 7D20C 8002E25C 1062001E */  beq        $v1, $v0, .L8002E2D8
/* 7D210 8002E260 28620003 */   slti      $v0, $v1, 3
/* 7D214 8002E264 50400007 */  beql       $v0, $zero, .L8002E284
/* 7D218 8002E268 24020003 */   addiu     $v0, $zero, 3
/* 7D21C 8002E26C 10600009 */  beqz       $v1, .L8002E294
/* 7D220 8002E270 24020001 */   addiu     $v0, $zero, 1
/* 7D224 8002E274 10620010 */  beq        $v1, $v0, .L8002E2B8
/* 7D228 8002E278 00000000 */   nop
/* 7D22C 8002E27C 0800B8C4 */  j          .L8002E310
/* 7D230 8002E280 00000000 */   nop
.L8002E284:
/* 7D234 8002E284 1062001C */  beq        $v1, $v0, .L8002E2F8
/* 7D238 8002E288 00000000 */   nop
/* 7D23C 8002E28C 0800B8C4 */  j          .L8002E310
/* 7D240 8002E290 00000000 */   nop
.L8002E294:
/* 7D244 8002E294 94830000 */  lhu        $v1, ($a0)
/* 7D248 8002E298 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7D24C 8002E29C 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7D250 8002E2A0 1443001B */  bne        $v0, $v1, .L8002E310
/* 7D254 8002E2A4 00000000 */   nop
/* 7D258 8002E2A8 0C00B9FC */  jal        func_8002E7F0_7D7A0
/* 7D25C 8002E2AC 00000000 */   nop
/* 7D260 8002E2B0 0800B8C4 */  j          .L8002E310
/* 7D264 8002E2B4 00000000 */   nop
.L8002E2B8:
/* 7D268 8002E2B8 3C028008 */  lui        $v0, %hi(D_80084580)
/* 7D26C 8002E2BC 84424580 */  lh         $v0, %lo(D_80084580)($v0)
/* 7D270 8002E2C0 14400013 */  bnez       $v0, .L8002E310
/* 7D274 8002E2C4 00000000 */   nop
/* 7D278 8002E2C8 0C00BA8E */  jal        func_8002EA38_7D9E8
/* 7D27C 8002E2CC 00000000 */   nop
/* 7D280 8002E2D0 0800B8C4 */  j          .L8002E310
/* 7D284 8002E2D4 00000000 */   nop
.L8002E2D8:
/* 7D288 8002E2D8 3C028008 */  lui        $v0, %hi(D_80084580)
/* 7D28C 8002E2DC 84424580 */  lh         $v0, %lo(D_80084580)($v0)
/* 7D290 8002E2E0 1440000B */  bnez       $v0, .L8002E310
/* 7D294 8002E2E4 00000000 */   nop
/* 7D298 8002E2E8 0C00BB7B */  jal        func_8002EDEC_7DD9C
/* 7D29C 8002E2EC 00000000 */   nop
/* 7D2A0 8002E2F0 0800B8C4 */  j          .L8002E310
/* 7D2A4 8002E2F4 00000000 */   nop
.L8002E2F8:
/* 7D2A8 8002E2F8 3C028008 */  lui        $v0, %hi(D_80084580)
/* 7D2AC 8002E2FC 84424580 */  lh         $v0, %lo(D_80084580)($v0)
/* 7D2B0 8002E300 14400003 */  bnez       $v0, .L8002E310
/* 7D2B4 8002E304 00000000 */   nop
/* 7D2B8 8002E308 0C00BC9D */  jal        func_8002F274_7E224
/* 7D2BC 8002E30C 00000000 */   nop
.L8002E310:
/* 7D2C0 8002E310 0C00BDB0 */  jal        func_8002F6C0_7E670
/* 7D2C4 8002E314 00000000 */   nop
/* 7D2C8 8002E318 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7D2CC 8002E31C 844245BC */  lh         $v0, %lo(D_800845BC)($v0)
/* 7D2D0 8002E320 3C038008 */  lui        $v1, %hi(D_800841EC)
/* 7D2D4 8002E324 8C6341EC */  lw         $v1, %lo(D_800841EC)($v1)
/* 7D2D8 8002E328 00021100 */  sll        $v0, $v0, 4
/* 7D2DC 8002E32C 00621821 */  addu       $v1, $v1, $v0
/* 7D2E0 8002E330 90640002 */  lbu        $a0, 2($v1)
/* 7D2E4 8002E334 24020002 */  addiu      $v0, $zero, 2
/* 7D2E8 8002E338 1082001E */  beq        $a0, $v0, .L8002E3B4
/* 7D2EC 8002E33C 28820003 */   slti      $v0, $a0, 3
/* 7D2F0 8002E340 50400007 */  beql       $v0, $zero, .L8002E360
/* 7D2F4 8002E344 24020003 */   addiu     $v0, $zero, 3
/* 7D2F8 8002E348 10800009 */  beqz       $a0, .L8002E370
/* 7D2FC 8002E34C 24020001 */   addiu     $v0, $zero, 1
/* 7D300 8002E350 10820010 */  beq        $a0, $v0, .L8002E394
/* 7D304 8002E354 00000000 */   nop
/* 7D308 8002E358 0800B8FB */  j          .L8002E3EC
/* 7D30C 8002E35C 00000000 */   nop
.L8002E360:
/* 7D310 8002E360 1082001C */  beq        $a0, $v0, .L8002E3D4
/* 7D314 8002E364 00000000 */   nop
/* 7D318 8002E368 0800B8FB */  j          .L8002E3EC
/* 7D31C 8002E36C 00000000 */   nop
.L8002E370:
/* 7D320 8002E370 94630000 */  lhu        $v1, ($v1)
/* 7D324 8002E374 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7D328 8002E378 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7D32C 8002E37C 1443001B */  bne        $v0, $v1, .L8002E3EC
/* 7D330 8002E380 00000000 */   nop
/* 7D334 8002E384 0C00BA55 */  jal        func_8002E954_7D904
/* 7D338 8002E388 00000000 */   nop
/* 7D33C 8002E38C 0800B8FB */  j          .L8002E3EC
/* 7D340 8002E390 00000000 */   nop
.L8002E394:
/* 7D344 8002E394 3C028008 */  lui        $v0, %hi(D_800845BE)
/* 7D348 8002E398 844245BE */  lh         $v0, %lo(D_800845BE)($v0)
/* 7D34C 8002E39C 14400013 */  bnez       $v0, .L8002E3EC
/* 7D350 8002E3A0 00000000 */   nop
/* 7D354 8002E3A4 0C00BB0B */  jal        func_8002EC2C_7DBDC
/* 7D358 8002E3A8 00000000 */   nop
/* 7D35C 8002E3AC 0800B8FB */  j          .L8002E3EC
/* 7D360 8002E3B0 00000000 */   nop
.L8002E3B4:
/* 7D364 8002E3B4 3C028008 */  lui        $v0, %hi(D_800845BE)
/* 7D368 8002E3B8 844245BE */  lh         $v0, %lo(D_800845BE)($v0)
/* 7D36C 8002E3BC 1440000B */  bnez       $v0, .L8002E3EC
/* 7D370 8002E3C0 00000000 */   nop
/* 7D374 8002E3C4 0C00BC15 */  jal        func_8002F054_7E004
/* 7D378 8002E3C8 00000000 */   nop
/* 7D37C 8002E3CC 0800B8FB */  j          .L8002E3EC
/* 7D380 8002E3D0 00000000 */   nop
.L8002E3D4:
/* 7D384 8002E3D4 3C028008 */  lui        $v0, %hi(D_800845BE)
/* 7D388 8002E3D8 844245BE */  lh         $v0, %lo(D_800845BE)($v0)
/* 7D38C 8002E3DC 14400003 */  bnez       $v0, .L8002E3EC
/* 7D390 8002E3E0 00000000 */   nop
/* 7D394 8002E3E4 0C00BD2E */  jal        func_8002F4B8_7E468
/* 7D398 8002E3E8 00000000 */   nop
.L8002E3EC:
/* 7D39C 8002E3EC 0C00BE02 */  jal        func_8002F808_7E7B8
/* 7D3A0 8002E3F0 00000000 */   nop
/* 7D3A4 8002E3F4 3C028008 */  lui        $v0, %hi(D_800841F0)
/* 7D3A8 8002E3F8 8C4241F0 */  lw         $v0, %lo(D_800841F0)($v0)
/* 7D3AC 8002E3FC 10400003 */  beqz       $v0, .L8002E40C
/* 7D3B0 8002E400 00000000 */   nop
/* 7D3B4 8002E404 0040F809 */  jalr       $v0
/* 7D3B8 8002E408 00000000 */   nop
.L8002E40C:
/* 7D3BC 8002E40C 3C028008 */  lui        $v0, %hi(D_800841F4)
/* 7D3C0 8002E410 8C4241F4 */  lw         $v0, %lo(D_800841F4)($v0)
/* 7D3C4 8002E414 0040F809 */  jalr       $v0
/* 7D3C8 8002E418 00000000 */   nop
/* 7D3CC 8002E41C 00408021 */  addu       $s0, $v0, $zero
/* 7D3D0 8002E420 3C038008 */  lui        $v1, %hi(D_80083A30)
/* 7D3D4 8002E424 8C633A30 */  lw         $v1, %lo(D_80083A30)($v1)
/* 7D3D8 8002E428 00101027 */  nor        $v0, $zero, $s0
/* 7D3DC 8002E42C 000217C2 */  srl        $v0, $v0, 0x1f
/* 7D3E0 8002E430 0003182B */  sltu       $v1, $zero, $v1
/* 7D3E4 8002E434 00621824 */  and        $v1, $v1, $v0
/* 7D3E8 8002E438 1060000B */  beqz       $v1, .L8002E468
/* 7D3EC 8002E43C 00000000 */   nop
/* 7D3F0 8002E440 0C00B7AA */  jal        func_8002DEA8_7CE58
/* 7D3F4 8002E444 00000000 */   nop
/* 7D3F8 8002E448 0C00B5C4 */  jal        func_8002D710_7C6C0
/* 7D3FC 8002E44C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 7D400 8002E450 0C00B88A */  jal        func_8002E228_7D1D8
/* 7D404 8002E454 00000000 */   nop
/* 7D408 8002E458 3C018008 */  lui        $at, %hi(D_80083A24)
/* 7D40C 8002E45C AC303A24 */  sw         $s0, %lo(D_80083A24)($at)
/* 7D410 8002E460 0800B926 */  j          .L8002E498
/* 7D414 8002E464 00000000 */   nop
.L8002E468:
/* 7D418 8002E468 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7D41C 8002E46C 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7D420 8002E470 3C038008 */  lui        $v1, %hi(D_800845FC)
/* 7D424 8002E474 8C6345FC */  lw         $v1, %lo(D_800845FC)($v1)
/* 7D428 8002E478 24420001 */  addiu      $v0, $v0, 1
/* 7D42C 8002E47C 0062182A */  slt        $v1, $v1, $v0
/* 7D430 8002E480 3C018008 */  lui        $at, %hi(D_800845F8)
/* 7D434 8002E484 AC2245F8 */  sw         $v0, %lo(D_800845F8)($at)
/* 7D438 8002E488 10600003 */  beqz       $v1, .L8002E498
/* 7D43C 8002E48C 24020003 */   addiu     $v0, $zero, 3
/* 7D440 8002E490 3C018008 */  lui        $at, %hi(D_80084610)
/* 7D444 8002E494 AC224610 */  sw         $v0, %lo(D_80084610)($at)
.L8002E498:
/* 7D448 8002E498 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D44C 8002E49C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D450 8002E4A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D454 8002E4A4 03E00008 */  jr         $ra
/* 7D458 8002E4A8 00000000 */   nop

glabel func_8002E4AC_7D45C
/* 7D45C 8002E4AC 27BDFF20 */  addiu      $sp, $sp, -0xe0
/* 7D460 8002E4B0 3C048008 */  lui        $a0, %hi(D_80081BA0)
/* 7D464 8002E4B4 24841BA0 */  addiu      $a0, $a0, %lo(D_80081BA0)
/* 7D468 8002E4B8 AFBF00D4 */  sw         $ra, 0xd4($sp)
/* 7D46C 8002E4BC AFB600D0 */  sw         $s6, 0xd0($sp)
/* 7D470 8002E4C0 AFB500CC */  sw         $s5, 0xcc($sp)
/* 7D474 8002E4C4 AFB400C8 */  sw         $s4, 0xc8($sp)
/* 7D478 8002E4C8 AFB300C4 */  sw         $s3, 0xc4($sp)
/* 7D47C 8002E4CC AFB200C0 */  sw         $s2, 0xc0($sp)
/* 7D480 8002E4D0 AFB100BC */  sw         $s1, 0xbc($sp)
/* 7D484 8002E4D4 AFB000B8 */  sw         $s0, 0xb8($sp)
/* 7D488 8002E4D8 F7B400D8 */  sdc1       $f20, 0xd8($sp)
/* 7D48C 8002E4DC 0C00ABC3 */  jal        func_8002AF0C_79EBC
/* 7D490 8002E4E0 0000A821 */   addu      $s5, $zero, $zero
/* 7D494 8002E4E4 3C038008 */  lui        $v1, %hi(D_80084500)
/* 7D498 8002E4E8 24634500 */  addiu      $v1, $v1, %lo(D_80084500)
/* 7D49C 8002E4EC 90620000 */  lbu        $v0, ($v1)
/* 7D4A0 8002E4F0 1840004E */  blez       $v0, .L8002E62C
/* 7D4A4 8002E4F4 00000000 */   nop
/* 7D4A8 8002E4F8 4480A000 */  mtc1       $zero, $f20
/* 7D4AC 8002E4FC 00000000 */  nop
/* 7D4B0 8002E500 2474FCFC */  addiu      $s4, $v1, -0x304
/* 7D4B4 8002E504 0280B021 */  addu       $s6, $s4, $zero
.L8002E508:
/* 7D4B8 8002E508 00151880 */  sll        $v1, $s5, 2
/* 7D4BC 8002E50C 02832021 */  addu       $a0, $s4, $v1
/* 7D4C0 8002E510 02832821 */  addu       $a1, $s4, $v1
/* 7D4C4 8002E514 02833021 */  addu       $a2, $s4, $v1
/* 7D4C8 8002E518 02831021 */  addu       $v0, $s4, $v1
/* 7D4CC 8002E51C C44002E4 */  lwc1       $f0, 0x2e4($v0)
/* 7D4D0 8002E520 8ED10000 */  lw         $s1, ($s6)
/* 7D4D4 8002E524 8C920020 */  lw         $s2, 0x20($a0)
/* 7D4D8 8002E528 8CB30040 */  lw         $s3, 0x40($a1)
/* 7D4DC 8002E52C C4C402C4 */  lwc1       $f4, 0x2c4($a2)
/* 7D4E0 8002E530 02831021 */  addu       $v0, $s4, $v1
/* 7D4E4 8002E534 E7A00010 */  swc1       $f0, 0x10($sp)
/* 7D4E8 8002E538 C4400264 */  lwc1       $f0, 0x264($v0)
/* 7D4EC 8002E53C 4405A000 */  mfc1       $a1, $f20
/* 7D4F0 8002E540 00000000 */  nop
/* 7D4F4 8002E544 4407A000 */  mfc1       $a3, $f20
/* 7D4F8 8002E548 00000000 */  nop
/* 7D4FC 8002E54C 00158180 */  sll        $s0, $s5, 6
/* 7D500 8002E550 E7A00014 */  swc1       $f0, 0x14($sp)
/* 7D504 8002E554 8684FFFC */  lh         $a0, -4($s4)
/* 7D508 8002E558 02831021 */  addu       $v0, $s4, $v1
/* 7D50C 8002E55C C4420284 */  lwc1       $f2, 0x284($v0)
/* 7D510 8002E560 44840000 */  mtc1       $a0, $f0
/* 7D514 8002E564 00000000 */  nop
/* 7D518 8002E568 46800020 */  cvt.s.w    $f0, $f0
/* 7D51C 8002E56C 46040000 */  add.s      $f0, $f0, $f4
/* 7D520 8002E570 02831821 */  addu       $v1, $s4, $v1
/* 7D524 8002E574 26820064 */  addiu      $v0, $s4, 0x64
/* 7D528 8002E578 E7A20018 */  swc1       $f2, 0x18($sp)
/* 7D52C 8002E57C 44060000 */  mfc1       $a2, $f0
/* 7D530 8002E580 00000000 */  nop
/* 7D534 8002E584 C46002A4 */  lwc1       $f0, 0x2a4($v1)
/* 7D538 8002E588 02028021 */  addu       $s0, $s0, $v0
/* 7D53C 8002E58C 02002021 */  addu       $a0, $s0, $zero
/* 7D540 8002E590 0C02FD0E */  jal        func_800BF438
/* 7D544 8002E594 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 7D548 8002E598 3C05DA38 */  lui        $a1, 0xda38
/* 7D54C 8002E59C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 7D550 8002E5A0 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 7D554 8002E5A4 34A50003 */  ori        $a1, $a1, 3
/* 7D558 8002E5A8 02402021 */  addu       $a0, $s2, $zero
/* 7D55C 8002E5AC 24620008 */  addiu      $v0, $v1, 8
/* 7D560 8002E5B0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 7D564 8002E5B4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 7D568 8002E5B8 AC650000 */  sw         $a1, ($v1)
/* 7D56C 8002E5BC 0C027A93 */  jal        func_8009EA4C
/* 7D570 8002E5C0 AC700004 */   sw        $s0, 4($v1)
/* 7D574 8002E5C4 0C027CED */  jal        func_8009F3B4
/* 7D578 8002E5C8 02602021 */   addu      $a0, $s3, $zero
/* 7D57C 8002E5CC 02202021 */  addu       $a0, $s1, $zero
/* 7D580 8002E5D0 0C027F67 */  jal        func_8009FD9C
/* 7D584 8002E5D4 02002821 */   addu      $a1, $s0, $zero
/* 7D588 8002E5D8 02202021 */  addu       $a0, $s1, $zero
/* 7D58C 8002E5DC 0C027F77 */  jal        func_8009FDDC
/* 7D590 8002E5E0 02402821 */   addu      $a1, $s2, $zero
/* 7D594 8002E5E4 92820380 */  lbu        $v0, 0x380($s4)
/* 7D598 8002E5E8 1040000A */  beqz       $v0, .L8002E614
/* 7D59C 8002E5EC 00000000 */   nop
/* 7D5A0 8002E5F0 82820306 */  lb         $v0, 0x306($s4)
/* 7D5A4 8002E5F4 14550007 */  bne        $v0, $s5, .L8002E614
/* 7D5A8 8002E5F8 00000000 */   nop
/* 7D5AC 8002E5FC 8E840378 */  lw         $a0, 0x378($s4)
/* 7D5B0 8002E600 0C027CED */  jal        func_8009F3B4
/* 7D5B4 8002E604 00000000 */   nop
/* 7D5B8 8002E608 8E84037C */  lw         $a0, 0x37c($s4)
/* 7D5BC 8002E60C 0C027CED */  jal        func_8009F3B4
/* 7D5C0 8002E610 00000000 */   nop
.L8002E614:
/* 7D5C4 8002E614 3C028008 */  lui        $v0, %hi(D_80084500)
/* 7D5C8 8002E618 90424500 */  lbu        $v0, %lo(D_80084500)($v0)
/* 7D5CC 8002E61C 26B50001 */  addiu      $s5, $s5, 1
/* 7D5D0 8002E620 02A2102A */  slt        $v0, $s5, $v0
/* 7D5D4 8002E624 1440FFB8 */  bnez       $v0, .L8002E508
/* 7D5D8 8002E628 26D60004 */   addiu     $s6, $s6, 4
.L8002E62C:
/* 7D5DC 8002E62C 3C038008 */  lui        $v1, %hi(D_80084501)
/* 7D5E0 8002E630 80634501 */  lb         $v1, %lo(D_80084501)($v1)
/* 7D5E4 8002E634 2402FFFF */  addiu      $v0, $zero, -1
/* 7D5E8 8002E638 1062005C */  beq        $v1, $v0, .L8002E7AC
/* 7D5EC 8002E63C 24020005 */   addiu     $v0, $zero, 5
/* 7D5F0 8002E640 3C038008 */  lui        $v1, %hi(D_8008462C)
/* 7D5F4 8002E644 8C63462C */  lw         $v1, %lo(D_8008462C)($v1)
/* 7D5F8 8002E648 14620058 */  bne        $v1, $v0, .L8002E7AC
/* 7D5FC 8002E64C 00000000 */   nop
/* 7D600 8002E650 3C028008 */  lui        $v0, %hi(D_80084560)
/* 7D604 8002E654 94424560 */  lhu        $v0, %lo(D_80084560)($v0)
/* 7D608 8002E658 3C048008 */  lui        $a0, %hi(D_80084562)
/* 7D60C 8002E65C 94844562 */  lhu        $a0, %lo(D_80084562)($a0)
/* 7D610 8002E660 00441821 */  addu       $v1, $v0, $a0
/* 7D614 8002E664 00041400 */  sll        $v0, $a0, 0x10
/* 7D618 8002E668 3C018008 */  lui        $at, %hi(D_80084560)
/* 7D61C 8002E66C A4234560 */  sh         $v1, %lo(D_80084560)($at)
/* 7D620 8002E670 1840000D */  blez       $v0, .L8002E6A8
/* 7D624 8002E674 00031400 */   sll       $v0, $v1, 0x10
/* 7D628 8002E678 00021403 */  sra        $v0, $v0, 0x10
/* 7D62C 8002E67C 28420100 */  slti       $v0, $v0, 0x100
/* 7D630 8002E680 14400009 */  bnez       $v0, .L8002E6A8
/* 7D634 8002E684 240201FE */   addiu     $v0, $zero, 0x1fe
/* 7D638 8002E688 00431023 */  subu       $v0, $v0, $v1
/* 7D63C 8002E68C 3C018008 */  lui        $at, %hi(D_80084560)
/* 7D640 8002E690 A4224560 */  sh         $v0, %lo(D_80084560)($at)
/* 7D644 8002E694 00041023 */  negu       $v0, $a0
/* 7D648 8002E698 3C018008 */  lui        $at, %hi(D_80084562)
/* 7D64C 8002E69C A4224562 */  sh         $v0, %lo(D_80084562)($at)
/* 7D650 8002E6A0 0800B9B8 */  j          .L8002E6E0
/* 7D654 8002E6A4 00000000 */   nop
.L8002E6A8:
/* 7D658 8002E6A8 3C058008 */  lui        $a1, %hi(D_80084562)
/* 7D65C 8002E6AC 24A54562 */  addiu      $a1, $a1, %lo(D_80084562)
/* 7D660 8002E6B0 84A20000 */  lh         $v0, ($a1)
/* 7D664 8002E6B4 0441000A */  bgez       $v0, .L8002E6E0
/* 7D668 8002E6B8 00402021 */   addu      $a0, $v0, $zero
/* 7D66C 8002E6BC 3C028008 */  lui        $v0, %hi(D_80084560)
/* 7D670 8002E6C0 84424560 */  lh         $v0, %lo(D_80084560)($v0)
/* 7D674 8002E6C4 04410006 */  bgez       $v0, .L8002E6E0
/* 7D678 8002E6C8 00401821 */   addu      $v1, $v0, $zero
/* 7D67C 8002E6CC 00031023 */  negu       $v0, $v1
/* 7D680 8002E6D0 3C018008 */  lui        $at, %hi(D_80084560)
/* 7D684 8002E6D4 A4224560 */  sh         $v0, %lo(D_80084560)($at)
/* 7D688 8002E6D8 00041023 */  negu       $v0, $a0
/* 7D68C 8002E6DC A4A20000 */  sh         $v0, ($a1)
.L8002E6E0:
/* 7D690 8002E6E0 3C118008 */  lui        $s1, %hi(D_8008451C)
/* 7D694 8002E6E4 2631451C */  addiu      $s1, $s1, %lo(D_8008451C)
/* 7D698 8002E6E8 8E240000 */  lw         $a0, ($s1)
/* 7D69C 8002E6EC 240500FF */  addiu      $a1, $zero, 0xff
/* 7D6A0 8002E6F0 3C028008 */  lui        $v0, %hi(D_80084561)
/* 7D6A4 8002E6F4 90424561 */  lbu        $v0, %lo(D_80084561)($v0)
/* 7D6A8 8002E6F8 240600FF */  addiu      $a2, $zero, 0xff
/* 7D6AC 8002E6FC 240700FF */  addiu      $a3, $zero, 0xff
/* 7D6B0 8002E700 0C027F5E */  jal        func_8009FD78
/* 7D6B4 8002E704 AFA20010 */   sw        $v0, 0x10($sp)
/* 7D6B8 8002E708 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7D6BC 8002E70C 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7D6C0 8002E710 27B00060 */  addiu      $s0, $sp, 0x60
/* 7D6C4 8002E714 02002021 */  addu       $a0, $s0, $zero
/* 7D6C8 8002E718 2625FD44 */  addiu      $a1, $s1, -0x2bc
/* 7D6CC 8002E71C 00021180 */  sll        $v0, $v0, 6
/* 7D6D0 8002E720 0C02FA72 */  jal        func_800BE9C8
/* 7D6D4 8002E724 00452821 */   addu      $a1, $v0, $a1
/* 7D6D8 8002E728 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7D6DC 8002E72C 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7D6E0 8002E730 3C038008 */  lui        $v1, %hi(D_8007DA78_CCA28)
/* 7D6E4 8002E734 2463DA78 */  addiu      $v1, $v1, %lo(D_8007DA78_CCA28)
/* 7D6E8 8002E738 AFA30010 */  sw         $v1, 0x10($sp)
/* 7D6EC 8002E73C 00021080 */  sll        $v0, $v0, 2
/* 7D6F0 8002E740 02221821 */  addu       $v1, $s1, $v0
/* 7D6F4 8002E744 8C65FCE0 */  lw         $a1, -0x320($v1)
/* 7D6F8 8002E748 02221021 */  addu       $v0, $s1, $v0
/* 7D6FC 8002E74C 8C46FD00 */  lw         $a2, -0x300($v0)
/* 7D700 8002E750 27A40020 */  addiu      $a0, $sp, 0x20
/* 7D704 8002E754 0C0284BE */  jal        func_800A12F8
/* 7D708 8002E758 00003821 */   addu      $a3, $zero, $zero
/* 7D70C 8002E75C 27A40020 */  addiu      $a0, $sp, 0x20
/* 7D710 8002E760 02002821 */  addu       $a1, $s0, $zero
/* 7D714 8002E764 0C02F9A8 */  jal        func_800BE6A0
/* 7D718 8002E768 00803021 */   addu      $a2, $a0, $zero
/* 7D71C 8002E76C 27A40020 */  addiu      $a0, $sp, 0x20
/* 7D720 8002E770 26300004 */  addiu      $s0, $s1, 4
/* 7D724 8002E774 0C02FA4C */  jal        func_800BE930
/* 7D728 8002E778 02002821 */   addu      $a1, $s0, $zero
/* 7D72C 8002E77C 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 7D730 8002E780 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 7D734 8002E784 3C03DA38 */  lui        $v1, 0xda38
/* 7D738 8002E788 34630003 */  ori        $v1, $v1, 3
/* 7D73C 8002E78C AC430000 */  sw         $v1, ($v0)
/* 7D740 8002E790 AC500004 */  sw         $s0, 4($v0)
/* 7D744 8002E794 8E240000 */  lw         $a0, ($s1)
/* 7D748 8002E798 24420008 */  addiu      $v0, $v0, 8
/* 7D74C 8002E79C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 7D750 8002E7A0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 7D754 8002E7A4 0C027F77 */  jal        func_8009FDDC
/* 7D758 8002E7A8 00002821 */   addu      $a1, $zero, $zero
.L8002E7AC:
/* 7D75C 8002E7AC 8FBF00D4 */  lw         $ra, 0xd4($sp)
/* 7D760 8002E7B0 8FB600D0 */  lw         $s6, 0xd0($sp)
/* 7D764 8002E7B4 8FB500CC */  lw         $s5, 0xcc($sp)
/* 7D768 8002E7B8 8FB400C8 */  lw         $s4, 0xc8($sp)
/* 7D76C 8002E7BC 8FB300C4 */  lw         $s3, 0xc4($sp)
/* 7D770 8002E7C0 8FB200C0 */  lw         $s2, 0xc0($sp)
/* 7D774 8002E7C4 8FB100BC */  lw         $s1, 0xbc($sp)
/* 7D778 8002E7C8 8FB000B8 */  lw         $s0, 0xb8($sp)
/* 7D77C 8002E7CC D7B400D8 */  ldc1       $f20, 0xd8($sp)
/* 7D780 8002E7D0 27BD00E0 */  addiu      $sp, $sp, 0xe0
/* 7D784 8002E7D4 03E00008 */  jr         $ra
/* 7D788 8002E7D8 00000000 */   nop

glabel func_8002E7DC_7D78C
/* 7D78C 8002E7DC 00041400 */  sll        $v0, $a0, 0x10
/* 7D790 8002E7E0 00021403 */  sra        $v0, $v0, 0x10
/* 7D794 8002E7E4 3842008D */  xori       $v0, $v0, 0x8d
/* 7D798 8002E7E8 03E00008 */  jr         $ra
/* 7D79C 8002E7EC 2C420001 */   sltiu     $v0, $v0, 1

glabel func_8002E7F0_7D7A0
/* 7D7A0 8002E7F0 3C038008 */  lui        $v1, %hi(D_8008457E)
/* 7D7A4 8002E7F4 8463457E */  lh         $v1, %lo(D_8008457E)($v1)
/* 7D7A8 8002E7F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7D7AC 8002E7FC AFB00010 */  sw         $s0, 0x10($sp)
/* 7D7B0 8002E800 3C108008 */  lui        $s0, %hi(D_800841E8)
/* 7D7B4 8002E804 8E1041E8 */  lw         $s0, %lo(D_800841E8)($s0)
/* 7D7B8 8002E808 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D7BC 8002E80C F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 7D7C0 8002E810 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 7D7C4 8002E814 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 7D7C8 8002E818 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 7D7CC 8002E81C 000310C0 */  sll        $v0, $v1, 3
/* 7D7D0 8002E820 00431021 */  addu       $v0, $v0, $v1
/* 7D7D4 8002E824 00021040 */  sll        $v0, $v0, 1
/* 7D7D8 8002E828 02028021 */  addu       $s0, $s0, $v0
/* 7D7DC 8002E82C 86020004 */  lh         $v0, 4($s0)
/* 7D7E0 8002E830 86030006 */  lh         $v1, 6($s0)
/* 7D7E4 8002E834 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7D7E8 8002E838 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 7D7EC 8002E83C 4482D000 */  mtc1       $v0, $f26
/* 7D7F0 8002E840 00000000 */  nop
/* 7D7F4 8002E844 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7D7F8 8002E848 4483C000 */  mtc1       $v1, $f24
/* 7D7FC 8002E84C 00000000 */  nop
/* 7D800 8002E850 4680C620 */  cvt.s.w    $f24, $f24
/* 7D804 8002E854 86020008 */  lh         $v0, 8($s0)
/* 7D808 8002E858 4600D681 */  sub.s      $f26, $f26, $f0
/* 7D80C 8002E85C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7D810 8002E860 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 7D814 8002E864 4482B000 */  mtc1       $v0, $f22
/* 7D818 8002E868 00000000 */  nop
/* 7D81C 8002E86C 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7D820 8002E870 8602000A */  lh         $v0, 0xa($s0)
/* 7D824 8002E874 4600C601 */  sub.s      $f24, $f24, $f0
/* 7D828 8002E878 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7D82C 8002E87C C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 7D830 8002E880 4482A000 */  mtc1       $v0, $f20
/* 7D834 8002E884 00000000 */  nop
/* 7D838 8002E888 4680A520 */  cvt.s.w    $f20, $f20
/* 7D83C 8002E88C 8602000C */  lh         $v0, 0xc($s0)
/* 7D840 8002E890 4600B581 */  sub.s      $f22, $f22, $f0
/* 7D844 8002E894 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 7D848 8002E898 C420A07C */  lwc1       $f0, %lo(D_8014A07C)($at)
/* 7D84C 8002E89C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 7D850 8002E8A0 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 7D854 8002E8A4 44827000 */  mtc1       $v0, $f14
/* 7D858 8002E8A8 00000000 */  nop
/* 7D85C 8002E8AC 468073A0 */  cvt.s.w    $f14, $f14
/* 7D860 8002E8B0 0C025A04 */  jal        func_80096810
/* 7D864 8002E8B4 4600A501 */   sub.s     $f20, $f20, $f0
/* 7D868 8002E8B8 86020010 */  lh         $v0, 0x10($s0)
/* 7D86C 8002E8BC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 7D870 8002E8C0 C422A088 */  lwc1       $f2, %lo(D_8014A088)($at)
/* 7D874 8002E8C4 44050000 */  mfc1       $a1, $f0
/* 7D878 8002E8C8 00000000 */  nop
/* 7D87C 8002E8CC 44820000 */  mtc1       $v0, $f0
/* 7D880 8002E8D0 00000000 */  nop
/* 7D884 8002E8D4 46800020 */  cvt.s.w    $f0, $f0
/* 7D888 8002E8D8 46020001 */  sub.s      $f0, $f0, $f2
/* 7D88C 8002E8DC 3C108008 */  lui        $s0, %hi(D_80081BA0)
/* 7D890 8002E8E0 26101BA0 */  addiu      $s0, $s0, %lo(D_80081BA0)
/* 7D894 8002E8E4 4406A000 */  mfc1       $a2, $f20
/* 7D898 8002E8E8 00000000 */  nop
/* 7D89C 8002E8EC 44070000 */  mfc1       $a3, $f0
/* 7D8A0 8002E8F0 00000000 */  nop
/* 7D8A4 8002E8F4 0C00ABEB */  jal        func_8002AFAC_79F5C
/* 7D8A8 8002E8F8 02002021 */   addu      $a0, $s0, $zero
/* 7D8AC 8002E8FC 4405D000 */  mfc1       $a1, $f26
/* 7D8B0 8002E900 00000000 */  nop
/* 7D8B4 8002E904 4406C000 */  mfc1       $a2, $f24
/* 7D8B8 8002E908 00000000 */  nop
/* 7D8BC 8002E90C 4407B000 */  mfc1       $a3, $f22
/* 7D8C0 8002E910 00000000 */  nop
/* 7D8C4 8002E914 0C00AC5F */  jal        func_8002B17C_7A12C
/* 7D8C8 8002E918 02002021 */   addu      $a0, $s0, $zero
/* 7D8CC 8002E91C 3C028008 */  lui        $v0, %hi(D_8008457E)
/* 7D8D0 8002E920 9442457E */  lhu        $v0, %lo(D_8008457E)($v0)
/* 7D8D4 8002E924 24420001 */  addiu      $v0, $v0, 1
/* 7D8D8 8002E928 3C018008 */  lui        $at, %hi(D_8008457E)
/* 7D8DC 8002E92C A422457E */  sh         $v0, %lo(D_8008457E)($at)
/* 7D8E0 8002E930 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D8E4 8002E934 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D8E8 8002E938 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 7D8EC 8002E93C D7B80028 */  ldc1       $f24, 0x28($sp)
/* 7D8F0 8002E940 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 7D8F4 8002E944 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7D8F8 8002E948 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7D8FC 8002E94C 03E00008 */  jr         $ra
/* 7D900 8002E950 00000000 */   nop

glabel func_8002E954_7D904
/* 7D904 8002E954 3C038008 */  lui        $v1, %hi(D_800845BC)
/* 7D908 8002E958 846345BC */  lh         $v1, %lo(D_800845BC)($v1)
/* 7D90C 8002E95C 3C028008 */  lui        $v0, %hi(D_800841EC)
/* 7D910 8002E960 8C4241EC */  lw         $v0, %lo(D_800841EC)($v0)
/* 7D914 8002E964 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D918 8002E968 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7D91C 8002E96C 00031900 */  sll        $v1, $v1, 4
/* 7D920 8002E970 00431021 */  addu       $v0, $v0, $v1
/* 7D924 8002E974 84430004 */  lh         $v1, 4($v0)
/* 7D928 8002E978 84440006 */  lh         $a0, 6($v0)
/* 7D92C 8002E97C 84450008 */  lh         $a1, 8($v0)
/* 7D930 8002E980 8446000A */  lh         $a2, 0xa($v0)
/* 7D934 8002E984 8447000C */  lh         $a3, 0xc($v0)
/* 7D938 8002E988 8442000E */  lh         $v0, 0xe($v0)
/* 7D93C 8002E98C 3C018017 */  lui        $at, %hi(D_8016D824)
/* 7D940 8002E990 AC20D824 */  sw         $zero, %lo(D_8016D824)($at)
/* 7D944 8002E994 44830000 */  mtc1       $v1, $f0
/* 7D948 8002E998 00000000 */  nop
/* 7D94C 8002E99C 46800020 */  cvt.s.w    $f0, $f0
/* 7D950 8002E9A0 3C018015 */  lui        $at, %hi(D_8014A054)
/* 7D954 8002E9A4 E420A054 */  swc1       $f0, %lo(D_8014A054)($at)
/* 7D958 8002E9A8 44840000 */  mtc1       $a0, $f0
/* 7D95C 8002E9AC 00000000 */  nop
/* 7D960 8002E9B0 46800020 */  cvt.s.w    $f0, $f0
/* 7D964 8002E9B4 3C018015 */  lui        $at, %hi(D_8014A050)
/* 7D968 8002E9B8 E420A050 */  swc1       $f0, %lo(D_8014A050)($at)
/* 7D96C 8002E9BC 44850000 */  mtc1       $a1, $f0
/* 7D970 8002E9C0 00000000 */  nop
/* 7D974 8002E9C4 46800020 */  cvt.s.w    $f0, $f0
/* 7D978 8002E9C8 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 7D97C 8002E9CC E420D1A8 */  swc1       $f0, %lo(D_8016D1A8)($at)
/* 7D980 8002E9D0 44860000 */  mtc1       $a2, $f0
/* 7D984 8002E9D4 00000000 */  nop
/* 7D988 8002E9D8 46800020 */  cvt.s.w    $f0, $f0
/* 7D98C 8002E9DC 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 7D990 8002E9E0 E4209ECC */  swc1       $f0, %lo(D_80149ECC)($at)
/* 7D994 8002E9E4 44870000 */  mtc1       $a3, $f0
/* 7D998 8002E9E8 00000000 */  nop
/* 7D99C 8002E9EC 46800020 */  cvt.s.w    $f0, $f0
/* 7D9A0 8002E9F0 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 7D9A4 8002E9F4 E420A02C */  swc1       $f0, %lo(D_8014A02C)($at)
/* 7D9A8 8002E9F8 44820000 */  mtc1       $v0, $f0
/* 7D9AC 8002E9FC 00000000 */  nop
/* 7D9B0 8002EA00 46800020 */  cvt.s.w    $f0, $f0
/* 7D9B4 8002EA04 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 7D9B8 8002EA08 E420A2A0 */  swc1       $f0, %lo(D_8014A2A0)($at)
/* 7D9BC 8002EA0C 0C027224 */  jal        func_8009C890
/* 7D9C0 8002EA10 00000000 */   nop
/* 7D9C4 8002EA14 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7D9C8 8002EA18 944245BC */  lhu        $v0, %lo(D_800845BC)($v0)
/* 7D9CC 8002EA1C 24420001 */  addiu      $v0, $v0, 1
/* 7D9D0 8002EA20 3C018008 */  lui        $at, %hi(D_800845BC)
/* 7D9D4 8002EA24 A42245BC */  sh         $v0, %lo(D_800845BC)($at)
/* 7D9D8 8002EA28 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7D9DC 8002EA2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D9E0 8002EA30 03E00008 */  jr         $ra
/* 7D9E4 8002EA34 00000000 */   nop

glabel func_8002EA38_7D9E8
/* 7D9E8 8002EA38 3C038008 */  lui        $v1, %hi(D_8008457E)
/* 7D9EC 8002EA3C 8463457E */  lh         $v1, %lo(D_8008457E)($v1)
/* 7D9F0 8002EA40 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7D9F4 8002EA44 AFB00010 */  sw         $s0, 0x10($sp)
/* 7D9F8 8002EA48 3C108008 */  lui        $s0, %hi(D_800841E8)
/* 7D9FC 8002EA4C 8E1041E8 */  lw         $s0, %lo(D_800841E8)($s0)
/* 7DA00 8002EA50 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7DA04 8002EA54 AFB10014 */  sw         $s1, 0x14($sp)
/* 7DA08 8002EA58 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 7DA0C 8002EA5C F7B80030 */  sdc1       $f24, 0x30($sp)
/* 7DA10 8002EA60 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7DA14 8002EA64 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7DA18 8002EA68 000310C0 */  sll        $v0, $v1, 3
/* 7DA1C 8002EA6C 00431021 */  addu       $v0, $v0, $v1
/* 7DA20 8002EA70 00021040 */  sll        $v0, $v0, 1
/* 7DA24 8002EA74 02028021 */  addu       $s0, $s0, $v0
/* 7DA28 8002EA78 96110000 */  lhu        $s1, ($s0)
/* 7DA2C 8002EA7C 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7DA30 8002EA80 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7DA34 8002EA84 02228823 */  subu       $s1, $s1, $v0
/* 7DA38 8002EA88 26310001 */  addiu      $s1, $s1, 1
/* 7DA3C 8002EA8C 3C018008 */  lui        $at, %hi(D_80084580)
/* 7DA40 8002EA90 A4314580 */  sh         $s1, %lo(D_80084580)($at)
/* 7DA44 8002EA94 86020004 */  lh         $v0, 4($s0)
/* 7DA48 8002EA98 86030006 */  lh         $v1, 6($s0)
/* 7DA4C 8002EA9C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7DA50 8002EAA0 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 7DA54 8002EAA4 4482D000 */  mtc1       $v0, $f26
/* 7DA58 8002EAA8 00000000 */  nop
/* 7DA5C 8002EAAC 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7DA60 8002EAB0 4483C000 */  mtc1       $v1, $f24
/* 7DA64 8002EAB4 00000000 */  nop
/* 7DA68 8002EAB8 4680C620 */  cvt.s.w    $f24, $f24
/* 7DA6C 8002EABC 86020008 */  lh         $v0, 8($s0)
/* 7DA70 8002EAC0 4600D681 */  sub.s      $f26, $f26, $f0
/* 7DA74 8002EAC4 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7DA78 8002EAC8 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 7DA7C 8002EACC 4482B000 */  mtc1       $v0, $f22
/* 7DA80 8002EAD0 00000000 */  nop
/* 7DA84 8002EAD4 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7DA88 8002EAD8 8602000A */  lh         $v0, 0xa($s0)
/* 7DA8C 8002EADC 4600C601 */  sub.s      $f24, $f24, $f0
/* 7DA90 8002EAE0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7DA94 8002EAE4 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 7DA98 8002EAE8 4482A000 */  mtc1       $v0, $f20
/* 7DA9C 8002EAEC 00000000 */  nop
/* 7DAA0 8002EAF0 4680A520 */  cvt.s.w    $f20, $f20
/* 7DAA4 8002EAF4 8602000C */  lh         $v0, 0xc($s0)
/* 7DAA8 8002EAF8 4600B581 */  sub.s      $f22, $f22, $f0
/* 7DAAC 8002EAFC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 7DAB0 8002EB00 C420A07C */  lwc1       $f0, %lo(D_8014A07C)($at)
/* 7DAB4 8002EB04 3C018015 */  lui        $at, %hi(D_8014A080)
/* 7DAB8 8002EB08 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 7DABC 8002EB0C 44827000 */  mtc1       $v0, $f14
/* 7DAC0 8002EB10 00000000 */  nop
/* 7DAC4 8002EB14 468073A0 */  cvt.s.w    $f14, $f14
/* 7DAC8 8002EB18 0C025A04 */  jal        func_80096810
/* 7DACC 8002EB1C 4600A501 */   sub.s     $f20, $f20, $f0
/* 7DAD0 8002EB20 44911000 */  mtc1       $s1, $f2
/* 7DAD4 8002EB24 00000000 */  nop
/* 7DAD8 8002EB28 468010A0 */  cvt.s.w    $f2, $f2
/* 7DADC 8002EB2C 4602D683 */  div.s      $f26, $f26, $f2
/* 7DAE0 8002EB30 4602C603 */  div.s      $f24, $f24, $f2
/* 7DAE4 8002EB34 46020003 */  div.s      $f0, $f0, $f2
/* 7DAE8 8002EB38 4602B583 */  div.s      $f22, $f22, $f2
/* 7DAEC 8002EB3C 4602A503 */  div.s      $f20, $f20, $f2
/* 7DAF0 8002EB40 8602000E */  lh         $v0, 0xe($s0)
/* 7DAF4 8002EB44 3C018015 */  lui        $at, %hi(D_8014A084)
/* 7DAF8 8002EB48 C424A084 */  lwc1       $f4, %lo(D_8014A084)($at)
/* 7DAFC 8002EB4C 44824000 */  mtc1       $v0, $f8
/* 7DB00 8002EB50 00000000 */  nop
/* 7DB04 8002EB54 46804220 */  cvt.s.w    $f8, $f8
/* 7DB08 8002EB58 46044201 */  sub.s      $f8, $f8, $f4
/* 7DB0C 8002EB5C 46024203 */  div.s      $f8, $f8, $f2
/* 7DB10 8002EB60 86020010 */  lh         $v0, 0x10($s0)
/* 7DB14 8002EB64 3C018015 */  lui        $at, %hi(D_8014A088)
/* 7DB18 8002EB68 C424A088 */  lwc1       $f4, %lo(D_8014A088)($at)
/* 7DB1C 8002EB6C 44823000 */  mtc1       $v0, $f6
/* 7DB20 8002EB70 00000000 */  nop
/* 7DB24 8002EB74 468031A0 */  cvt.s.w    $f6, $f6
/* 7DB28 8002EB78 46043181 */  sub.s      $f6, $f6, $f4
/* 7DB2C 8002EB7C 46023183 */  div.s      $f6, $f6, $f2
/* 7DB30 8002EB80 3C028008 */  lui        $v0, %hi(D_8008457E)
/* 7DB34 8002EB84 9442457E */  lhu        $v0, %lo(D_8008457E)($v0)
/* 7DB38 8002EB88 3C018008 */  lui        $at, %hi(D_800845A0)
/* 7DB3C 8002EB8C AC2045A0 */  sw         $zero, %lo(D_800845A0)($at)
/* 7DB40 8002EB90 3C018008 */  lui        $at, %hi(D_800845A4)
/* 7DB44 8002EB94 AC2045A4 */  sw         $zero, %lo(D_800845A4)($at)
/* 7DB48 8002EB98 3C018008 */  lui        $at, %hi(D_800845A8)
/* 7DB4C 8002EB9C AC2045A8 */  sw         $zero, %lo(D_800845A8)($at)
/* 7DB50 8002EBA0 3C018008 */  lui        $at, %hi(D_800845AC)
/* 7DB54 8002EBA4 AC2045AC */  sw         $zero, %lo(D_800845AC)($at)
/* 7DB58 8002EBA8 3C018008 */  lui        $at, %hi(D_800845B0)
/* 7DB5C 8002EBAC AC2045B0 */  sw         $zero, %lo(D_800845B0)($at)
/* 7DB60 8002EBB0 3C018008 */  lui        $at, %hi(D_800845B4)
/* 7DB64 8002EBB4 AC2045B4 */  sw         $zero, %lo(D_800845B4)($at)
/* 7DB68 8002EBB8 3C018008 */  lui        $at, %hi(D_800845B8)
/* 7DB6C 8002EBBC AC2045B8 */  sw         $zero, %lo(D_800845B8)($at)
/* 7DB70 8002EBC0 24420001 */  addiu      $v0, $v0, 1
/* 7DB74 8002EBC4 3C018008 */  lui        $at, %hi(D_8008457E)
/* 7DB78 8002EBC8 A422457E */  sh         $v0, %lo(D_8008457E)($at)
/* 7DB7C 8002EBCC 3C018008 */  lui        $at, %hi(D_80084594)
/* 7DB80 8002EBD0 E4204594 */  swc1       $f0, %lo(D_80084594)($at)
/* 7DB84 8002EBD4 3C018008 */  lui        $at, %hi(D_80084584)
/* 7DB88 8002EBD8 E43A4584 */  swc1       $f26, %lo(D_80084584)($at)
/* 7DB8C 8002EBDC 3C018008 */  lui        $at, %hi(D_80084588)
/* 7DB90 8002EBE0 E4384588 */  swc1       $f24, %lo(D_80084588)($at)
/* 7DB94 8002EBE4 3C018008 */  lui        $at, %hi(D_8008458C)
/* 7DB98 8002EBE8 E436458C */  swc1       $f22, %lo(D_8008458C)($at)
/* 7DB9C 8002EBEC 3C018008 */  lui        $at, %hi(D_80084590)
/* 7DBA0 8002EBF0 E4344590 */  swc1       $f20, %lo(D_80084590)($at)
/* 7DBA4 8002EBF4 3C018008 */  lui        $at, %hi(D_80084598)
/* 7DBA8 8002EBF8 E4284598 */  swc1       $f8, %lo(D_80084598)($at)
/* 7DBAC 8002EBFC 3C018008 */  lui        $at, %hi(D_8008459C)
/* 7DBB0 8002EC00 E426459C */  swc1       $f6, %lo(D_8008459C)($at)
/* 7DBB4 8002EC04 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7DBB8 8002EC08 8FB10014 */  lw         $s1, 0x14($sp)
/* 7DBBC 8002EC0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7DBC0 8002EC10 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 7DBC4 8002EC14 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7DBC8 8002EC18 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7DBCC 8002EC1C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7DBD0 8002EC20 27BD0040 */  addiu      $sp, $sp, 0x40
/* 7DBD4 8002EC24 03E00008 */  jr         $ra
/* 7DBD8 8002EC28 00000000 */   nop

glabel func_8002EC2C_7DBDC
/* 7DBDC 8002EC2C 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7DBE0 8002EC30 844245BC */  lh         $v0, %lo(D_800845BC)($v0)
/* 7DBE4 8002EC34 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7DBE8 8002EC38 AFB00010 */  sw         $s0, 0x10($sp)
/* 7DBEC 8002EC3C 3C108008 */  lui        $s0, %hi(D_800841EC)
/* 7DBF0 8002EC40 8E1041EC */  lw         $s0, %lo(D_800841EC)($s0)
/* 7DBF4 8002EC44 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7DBF8 8002EC48 AFB10014 */  sw         $s1, 0x14($sp)
/* 7DBFC 8002EC4C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 7DC00 8002EC50 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 7DC04 8002EC54 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7DC08 8002EC58 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7DC0C 8002EC5C 00021100 */  sll        $v0, $v0, 4
/* 7DC10 8002EC60 02028021 */  addu       $s0, $s0, $v0
/* 7DC14 8002EC64 96110000 */  lhu        $s1, ($s0)
/* 7DC18 8002EC68 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7DC1C 8002EC6C 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7DC20 8002EC70 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 7DC24 8002EC74 C42C9ECC */  lwc1       $f12, %lo(D_80149ECC)($at)
/* 7DC28 8002EC78 02228823 */  subu       $s1, $s1, $v0
/* 7DC2C 8002EC7C 26310001 */  addiu      $s1, $s1, 1
/* 7DC30 8002EC80 3C018008 */  lui        $at, %hi(D_800845BE)
/* 7DC34 8002EC84 A43145BE */  sh         $s1, %lo(D_800845BE)($at)
/* 7DC38 8002EC88 86020004 */  lh         $v0, 4($s0)
/* 7DC3C 8002EC8C 86030006 */  lh         $v1, 6($s0)
/* 7DC40 8002EC90 3C018015 */  lui        $at, %hi(D_8014A054)
/* 7DC44 8002EC94 C420A054 */  lwc1       $f0, %lo(D_8014A054)($at)
/* 7DC48 8002EC98 4482C000 */  mtc1       $v0, $f24
/* 7DC4C 8002EC9C 00000000 */  nop
/* 7DC50 8002ECA0 4680C620 */  cvt.s.w    $f24, $f24
/* 7DC54 8002ECA4 4483D000 */  mtc1       $v1, $f26
/* 7DC58 8002ECA8 00000000 */  nop
/* 7DC5C 8002ECAC 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7DC60 8002ECB0 4600C601 */  sub.s      $f24, $f24, $f0
/* 7DC64 8002ECB4 3C018015 */  lui        $at, %hi(D_8014A050)
/* 7DC68 8002ECB8 C420A050 */  lwc1       $f0, %lo(D_8014A050)($at)
/* 7DC6C 8002ECBC 86030008 */  lh         $v1, 8($s0)
/* 7DC70 8002ECC0 8602000A */  lh         $v0, 0xa($s0)
/* 7DC74 8002ECC4 4600D681 */  sub.s      $f26, $f26, $f0
/* 7DC78 8002ECC8 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 7DC7C 8002ECCC C420D1A8 */  lwc1       $f0, %lo(D_8016D1A8)($at)
/* 7DC80 8002ECD0 44827000 */  mtc1       $v0, $f14
/* 7DC84 8002ECD4 00000000 */  nop
/* 7DC88 8002ECD8 468073A0 */  cvt.s.w    $f14, $f14
/* 7DC8C 8002ECDC 4483A000 */  mtc1       $v1, $f20
/* 7DC90 8002ECE0 00000000 */  nop
/* 7DC94 8002ECE4 4680A520 */  cvt.s.w    $f20, $f20
/* 7DC98 8002ECE8 0C025A04 */  jal        func_80096810
/* 7DC9C 8002ECEC 4600A501 */   sub.s     $f20, $f20, $f0
/* 7DCA0 8002ECF0 8602000C */  lh         $v0, 0xc($s0)
/* 7DCA4 8002ECF4 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 7DCA8 8002ECF8 C42CA02C */  lwc1       $f12, %lo(D_8014A02C)($at)
/* 7DCAC 8002ECFC 44827000 */  mtc1       $v0, $f14
/* 7DCB0 8002ED00 00000000 */  nop
/* 7DCB4 8002ED04 468073A0 */  cvt.s.w    $f14, $f14
/* 7DCB8 8002ED08 0C025A04 */  jal        func_80096810
/* 7DCBC 8002ED0C 46000586 */   mov.s     $f22, $f0
/* 7DCC0 8002ED10 44911000 */  mtc1       $s1, $f2
/* 7DCC4 8002ED14 00000000 */  nop
/* 7DCC8 8002ED18 468010A0 */  cvt.s.w    $f2, $f2
/* 7DCCC 8002ED1C 4602C603 */  div.s      $f24, $f24, $f2
/* 7DCD0 8002ED20 4602D683 */  div.s      $f26, $f26, $f2
/* 7DCD4 8002ED24 4602B583 */  div.s      $f22, $f22, $f2
/* 7DCD8 8002ED28 46020003 */  div.s      $f0, $f0, $f2
/* 7DCDC 8002ED2C 4602A503 */  div.s      $f20, $f20, $f2
/* 7DCE0 8002ED30 8602000E */  lh         $v0, 0xe($s0)
/* 7DCE4 8002ED34 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 7DCE8 8002ED38 C424A2A0 */  lwc1       $f4, %lo(D_8014A2A0)($at)
/* 7DCEC 8002ED3C 44823000 */  mtc1       $v0, $f6
/* 7DCF0 8002ED40 00000000 */  nop
/* 7DCF4 8002ED44 468031A0 */  cvt.s.w    $f6, $f6
/* 7DCF8 8002ED48 46043181 */  sub.s      $f6, $f6, $f4
/* 7DCFC 8002ED4C 46023183 */  div.s      $f6, $f6, $f2
/* 7DD00 8002ED50 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7DD04 8002ED54 944245BC */  lhu        $v0, %lo(D_800845BC)($v0)
/* 7DD08 8002ED58 3C018008 */  lui        $at, %hi(D_800845D8)
/* 7DD0C 8002ED5C AC2045D8 */  sw         $zero, %lo(D_800845D8)($at)
/* 7DD10 8002ED60 3C018008 */  lui        $at, %hi(D_800845DC)
/* 7DD14 8002ED64 AC2045DC */  sw         $zero, %lo(D_800845DC)($at)
/* 7DD18 8002ED68 3C018008 */  lui        $at, %hi(D_800845E0)
/* 7DD1C 8002ED6C AC2045E0 */  sw         $zero, %lo(D_800845E0)($at)
/* 7DD20 8002ED70 3C018008 */  lui        $at, %hi(D_800845E4)
/* 7DD24 8002ED74 AC2045E4 */  sw         $zero, %lo(D_800845E4)($at)
/* 7DD28 8002ED78 3C018008 */  lui        $at, %hi(D_800845E8)
/* 7DD2C 8002ED7C AC2045E8 */  sw         $zero, %lo(D_800845E8)($at)
/* 7DD30 8002ED80 3C018008 */  lui        $at, %hi(D_800845EC)
/* 7DD34 8002ED84 AC2045EC */  sw         $zero, %lo(D_800845EC)($at)
/* 7DD38 8002ED88 24420001 */  addiu      $v0, $v0, 1
/* 7DD3C 8002ED8C 3C018008 */  lui        $at, %hi(D_800845BC)
/* 7DD40 8002ED90 A42245BC */  sh         $v0, %lo(D_800845BC)($at)
/* 7DD44 8002ED94 3C018008 */  lui        $at, %hi(D_800845CC)
/* 7DD48 8002ED98 E43645CC */  swc1       $f22, %lo(D_800845CC)($at)
/* 7DD4C 8002ED9C 3C018008 */  lui        $at, %hi(D_800845D0)
/* 7DD50 8002EDA0 E42045D0 */  swc1       $f0, %lo(D_800845D0)($at)
/* 7DD54 8002EDA4 3C018008 */  lui        $at, %hi(D_800845C0)
/* 7DD58 8002EDA8 E43845C0 */  swc1       $f24, %lo(D_800845C0)($at)
/* 7DD5C 8002EDAC 3C018008 */  lui        $at, %hi(D_800845C4)
/* 7DD60 8002EDB0 E43A45C4 */  swc1       $f26, %lo(D_800845C4)($at)
/* 7DD64 8002EDB4 3C018008 */  lui        $at, %hi(D_800845C8)
/* 7DD68 8002EDB8 E43445C8 */  swc1       $f20, %lo(D_800845C8)($at)
/* 7DD6C 8002EDBC 3C018008 */  lui        $at, %hi(D_800845D4)
/* 7DD70 8002EDC0 E42645D4 */  swc1       $f6, %lo(D_800845D4)($at)
/* 7DD74 8002EDC4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7DD78 8002EDC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 7DD7C 8002EDCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 7DD80 8002EDD0 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 7DD84 8002EDD4 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7DD88 8002EDD8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7DD8C 8002EDDC D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7DD90 8002EDE0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 7DD94 8002EDE4 03E00008 */  jr         $ra
/* 7DD98 8002EDE8 00000000 */   nop

glabel func_8002EDEC_7DD9C
/* 7DD9C 8002EDEC 3C038008 */  lui        $v1, %hi(D_8008457E)
/* 7DDA0 8002EDF0 8463457E */  lh         $v1, %lo(D_8008457E)($v1)
/* 7DDA4 8002EDF4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 7DDA8 8002EDF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 7DDAC 8002EDFC 3C108008 */  lui        $s0, %hi(D_800841E8)
/* 7DDB0 8002EE00 8E1041E8 */  lw         $s0, %lo(D_800841E8)($s0)
/* 7DDB4 8002EE04 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7DDB8 8002EE08 AFB20018 */  sw         $s2, 0x18($sp)
/* 7DDBC 8002EE0C AFB10014 */  sw         $s1, 0x14($sp)
/* 7DDC0 8002EE10 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 7DDC4 8002EE14 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 7DDC8 8002EE18 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 7DDCC 8002EE1C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7DDD0 8002EE20 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7DDD4 8002EE24 000310C0 */  sll        $v0, $v1, 3
/* 7DDD8 8002EE28 00431021 */  addu       $v0, $v0, $v1
/* 7DDDC 8002EE2C 00021040 */  sll        $v0, $v0, 1
/* 7DDE0 8002EE30 02028021 */  addu       $s0, $s0, $v0
/* 7DDE4 8002EE34 96110000 */  lhu        $s1, ($s0)
/* 7DDE8 8002EE38 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7DDEC 8002EE3C 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7DDF0 8002EE40 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7DDF4 8002EE44 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 7DDF8 8002EE48 02228823 */  subu       $s1, $s1, $v0
/* 7DDFC 8002EE4C 26320001 */  addiu      $s2, $s1, 1
/* 7DE00 8002EE50 3C018008 */  lui        $at, %hi(D_80084580)
/* 7DE04 8002EE54 A4324580 */  sh         $s2, %lo(D_80084580)($at)
/* 7DE08 8002EE58 86020004 */  lh         $v0, 4($s0)
/* 7DE0C 8002EE5C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 7DE10 8002EE60 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 7DE14 8002EE64 86030006 */  lh         $v1, 6($s0)
/* 7DE18 8002EE68 4482C000 */  mtc1       $v0, $f24
/* 7DE1C 8002EE6C 00000000 */  nop
/* 7DE20 8002EE70 4680C620 */  cvt.s.w    $f24, $f24
/* 7DE24 8002EE74 4600C601 */  sub.s      $f24, $f24, $f0
/* 7DE28 8002EE78 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7DE2C 8002EE7C C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 7DE30 8002EE80 4483D000 */  mtc1       $v1, $f26
/* 7DE34 8002EE84 00000000 */  nop
/* 7DE38 8002EE88 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7DE3C 8002EE8C 86020008 */  lh         $v0, 8($s0)
/* 7DE40 8002EE90 4600D681 */  sub.s      $f26, $f26, $f0
/* 7DE44 8002EE94 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7DE48 8002EE98 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 7DE4C 8002EE9C 8603000A */  lh         $v1, 0xa($s0)
/* 7DE50 8002EEA0 4482A000 */  mtc1       $v0, $f20
/* 7DE54 8002EEA4 00000000 */  nop
/* 7DE58 8002EEA8 4680A520 */  cvt.s.w    $f20, $f20
/* 7DE5C 8002EEAC 4600A501 */  sub.s      $f20, $f20, $f0
/* 7DE60 8002EEB0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 7DE64 8002EEB4 C420A07C */  lwc1       $f0, %lo(D_8014A07C)($at)
/* 7DE68 8002EEB8 4483B000 */  mtc1       $v1, $f22
/* 7DE6C 8002EEBC 00000000 */  nop
/* 7DE70 8002EEC0 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7DE74 8002EEC4 8602000C */  lh         $v0, 0xc($s0)
/* 7DE78 8002EEC8 44827000 */  mtc1       $v0, $f14
/* 7DE7C 8002EECC 00000000 */  nop
/* 7DE80 8002EED0 468073A0 */  cvt.s.w    $f14, $f14
/* 7DE84 8002EED4 0C025A04 */  jal        func_80096810
/* 7DE88 8002EED8 4600B581 */   sub.s     $f22, $f22, $f0
/* 7DE8C 8002EEDC 4618C600 */  add.s      $f24, $f24, $f24
/* 7DE90 8002EEE0 44921000 */  mtc1       $s2, $f2
/* 7DE94 8002EEE4 00000000 */  nop
/* 7DE98 8002EEE8 468010A0 */  cvt.s.w    $f2, $f2
/* 7DE9C 8002EEEC 4602C603 */  div.s      $f24, $f24, $f2
/* 7DEA0 8002EEF0 461AD680 */  add.s      $f26, $f26, $f26
/* 7DEA4 8002EEF4 4602D683 */  div.s      $f26, $f26, $f2
/* 7DEA8 8002EEF8 46000000 */  add.s      $f0, $f0, $f0
/* 7DEAC 8002EEFC 46020003 */  div.s      $f0, $f0, $f2
/* 7DEB0 8002EF00 4614A500 */  add.s      $f20, $f20, $f20
/* 7DEB4 8002EF04 4602A503 */  div.s      $f20, $f20, $f2
/* 7DEB8 8002EF08 4616B580 */  add.s      $f22, $f22, $f22
/* 7DEBC 8002EF0C 4602B583 */  div.s      $f22, $f22, $f2
/* 7DEC0 8002EF10 8602000E */  lh         $v0, 0xe($s0)
/* 7DEC4 8002EF14 3C018015 */  lui        $at, %hi(D_8014A084)
/* 7DEC8 8002EF18 C424A084 */  lwc1       $f4, %lo(D_8014A084)($at)
/* 7DECC 8002EF1C 44824000 */  mtc1       $v0, $f8
/* 7DED0 8002EF20 00000000 */  nop
/* 7DED4 8002EF24 46804220 */  cvt.s.w    $f8, $f8
/* 7DED8 8002EF28 46044201 */  sub.s      $f8, $f8, $f4
/* 7DEDC 8002EF2C 46084200 */  add.s      $f8, $f8, $f8
/* 7DEE0 8002EF30 46024203 */  div.s      $f8, $f8, $f2
/* 7DEE4 8002EF34 86020010 */  lh         $v0, 0x10($s0)
/* 7DEE8 8002EF38 3C018015 */  lui        $at, %hi(D_8014A088)
/* 7DEEC 8002EF3C C426A088 */  lwc1       $f6, %lo(D_8014A088)($at)
/* 7DEF0 8002EF40 44822000 */  mtc1       $v0, $f4
/* 7DEF4 8002EF44 00000000 */  nop
/* 7DEF8 8002EF48 46802120 */  cvt.s.w    $f4, $f4
/* 7DEFC 8002EF4C 46062101 */  sub.s      $f4, $f4, $f6
/* 7DF00 8002EF50 46042100 */  add.s      $f4, $f4, $f4
/* 7DF04 8002EF54 46022103 */  div.s      $f4, $f4, $f2
/* 7DF08 8002EF58 26310002 */  addiu      $s1, $s1, 2
/* 7DF0C 8002EF5C 4600C707 */  neg.s      $f28, $f24
/* 7DF10 8002EF60 44911000 */  mtc1       $s1, $f2
/* 7DF14 8002EF64 00000000 */  nop
/* 7DF18 8002EF68 468010A0 */  cvt.s.w    $f2, $f2
/* 7DF1C 8002EF6C 4602E703 */  div.s      $f28, $f28, $f2
/* 7DF20 8002EF70 4600D487 */  neg.s      $f18, $f26
/* 7DF24 8002EF74 46029483 */  div.s      $f18, $f18, $f2
/* 7DF28 8002EF78 46000187 */  neg.s      $f6, $f0
/* 7DF2C 8002EF7C 46023183 */  div.s      $f6, $f6, $f2
/* 7DF30 8002EF80 4600A407 */  neg.s      $f16, $f20
/* 7DF34 8002EF84 46028403 */  div.s      $f16, $f16, $f2
/* 7DF38 8002EF88 4600B387 */  neg.s      $f14, $f22
/* 7DF3C 8002EF8C 46027383 */  div.s      $f14, $f14, $f2
/* 7DF40 8002EF90 46004307 */  neg.s      $f12, $f8
/* 7DF44 8002EF94 46026303 */  div.s      $f12, $f12, $f2
/* 7DF48 8002EF98 46002287 */  neg.s      $f10, $f4
/* 7DF4C 8002EF9C 46025283 */  div.s      $f10, $f10, $f2
/* 7DF50 8002EFA0 3C028008 */  lui        $v0, %hi(D_8008457E)
/* 7DF54 8002EFA4 9442457E */  lhu        $v0, %lo(D_8008457E)($v0)
/* 7DF58 8002EFA8 24420001 */  addiu      $v0, $v0, 1
/* 7DF5C 8002EFAC 3C018008 */  lui        $at, %hi(D_8008457E)
/* 7DF60 8002EFB0 A422457E */  sh         $v0, %lo(D_8008457E)($at)
/* 7DF64 8002EFB4 3C018008 */  lui        $at, %hi(D_80084594)
/* 7DF68 8002EFB8 E4204594 */  swc1       $f0, %lo(D_80084594)($at)
/* 7DF6C 8002EFBC 3C018008 */  lui        $at, %hi(D_80084584)
/* 7DF70 8002EFC0 E4384584 */  swc1       $f24, %lo(D_80084584)($at)
/* 7DF74 8002EFC4 3C018008 */  lui        $at, %hi(D_80084588)
/* 7DF78 8002EFC8 E43A4588 */  swc1       $f26, %lo(D_80084588)($at)
/* 7DF7C 8002EFCC 3C018008 */  lui        $at, %hi(D_8008458C)
/* 7DF80 8002EFD0 E434458C */  swc1       $f20, %lo(D_8008458C)($at)
/* 7DF84 8002EFD4 3C018008 */  lui        $at, %hi(D_80084590)
/* 7DF88 8002EFD8 E4364590 */  swc1       $f22, %lo(D_80084590)($at)
/* 7DF8C 8002EFDC 3C018008 */  lui        $at, %hi(D_80084598)
/* 7DF90 8002EFE0 E4284598 */  swc1       $f8, %lo(D_80084598)($at)
/* 7DF94 8002EFE4 3C018008 */  lui        $at, %hi(D_8008459C)
/* 7DF98 8002EFE8 E424459C */  swc1       $f4, %lo(D_8008459C)($at)
/* 7DF9C 8002EFEC 3C018008 */  lui        $at, %hi(D_800845B0)
/* 7DFA0 8002EFF0 E42645B0 */  swc1       $f6, %lo(D_800845B0)($at)
/* 7DFA4 8002EFF4 3C018008 */  lui        $at, %hi(D_800845A0)
/* 7DFA8 8002EFF8 E43C45A0 */  swc1       $f28, %lo(D_800845A0)($at)
/* 7DFAC 8002EFFC 3C018008 */  lui        $at, %hi(D_800845A4)
/* 7DFB0 8002F000 E43245A4 */  swc1       $f18, %lo(D_800845A4)($at)
/* 7DFB4 8002F004 3C018008 */  lui        $at, %hi(D_800845A8)
/* 7DFB8 8002F008 E43045A8 */  swc1       $f16, %lo(D_800845A8)($at)
/* 7DFBC 8002F00C 3C018008 */  lui        $at, %hi(D_800845AC)
/* 7DFC0 8002F010 E42E45AC */  swc1       $f14, %lo(D_800845AC)($at)
/* 7DFC4 8002F014 3C018008 */  lui        $at, %hi(D_800845B4)
/* 7DFC8 8002F018 E42C45B4 */  swc1       $f12, %lo(D_800845B4)($at)
/* 7DFCC 8002F01C 3C018008 */  lui        $at, %hi(D_800845B8)
/* 7DFD0 8002F020 E42A45B8 */  swc1       $f10, %lo(D_800845B8)($at)
/* 7DFD4 8002F024 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7DFD8 8002F028 8FB20018 */  lw         $s2, 0x18($sp)
/* 7DFDC 8002F02C 8FB10014 */  lw         $s1, 0x14($sp)
/* 7DFE0 8002F030 8FB00010 */  lw         $s0, 0x10($sp)
/* 7DFE4 8002F034 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 7DFE8 8002F038 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 7DFEC 8002F03C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7DFF0 8002F040 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7DFF4 8002F044 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7DFF8 8002F048 27BD0048 */  addiu      $sp, $sp, 0x48
/* 7DFFC 8002F04C 03E00008 */  jr         $ra
/* 7E000 8002F050 00000000 */   nop

glabel func_8002F054_7E004
/* 7E004 8002F054 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7E008 8002F058 844245BC */  lh         $v0, %lo(D_800845BC)($v0)
/* 7E00C 8002F05C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7E010 8002F060 AFB00010 */  sw         $s0, 0x10($sp)
/* 7E014 8002F064 3C108008 */  lui        $s0, %hi(D_800841EC)
/* 7E018 8002F068 8E1041EC */  lw         $s0, %lo(D_800841EC)($s0)
/* 7E01C 8002F06C AFBF001C */  sw         $ra, 0x1c($sp)
/* 7E020 8002F070 AFB20018 */  sw         $s2, 0x18($sp)
/* 7E024 8002F074 AFB10014 */  sw         $s1, 0x14($sp)
/* 7E028 8002F078 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 7E02C 8002F07C F7B80030 */  sdc1       $f24, 0x30($sp)
/* 7E030 8002F080 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7E034 8002F084 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7E038 8002F088 00021100 */  sll        $v0, $v0, 4
/* 7E03C 8002F08C 02028021 */  addu       $s0, $s0, $v0
/* 7E040 8002F090 96110000 */  lhu        $s1, ($s0)
/* 7E044 8002F094 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7E048 8002F098 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7E04C 8002F09C 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 7E050 8002F0A0 C42C9ECC */  lwc1       $f12, %lo(D_80149ECC)($at)
/* 7E054 8002F0A4 02228823 */  subu       $s1, $s1, $v0
/* 7E058 8002F0A8 26320001 */  addiu      $s2, $s1, 1
/* 7E05C 8002F0AC 3C018008 */  lui        $at, %hi(D_800845BE)
/* 7E060 8002F0B0 A43245BE */  sh         $s2, %lo(D_800845BE)($at)
/* 7E064 8002F0B4 86020004 */  lh         $v0, 4($s0)
/* 7E068 8002F0B8 86030006 */  lh         $v1, 6($s0)
/* 7E06C 8002F0BC 3C018015 */  lui        $at, %hi(D_8014A054)
/* 7E070 8002F0C0 C420A054 */  lwc1       $f0, %lo(D_8014A054)($at)
/* 7E074 8002F0C4 4482C000 */  mtc1       $v0, $f24
/* 7E078 8002F0C8 00000000 */  nop
/* 7E07C 8002F0CC 4680C620 */  cvt.s.w    $f24, $f24
/* 7E080 8002F0D0 4483D000 */  mtc1       $v1, $f26
/* 7E084 8002F0D4 00000000 */  nop
/* 7E088 8002F0D8 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7E08C 8002F0DC 4600C601 */  sub.s      $f24, $f24, $f0
/* 7E090 8002F0E0 3C018015 */  lui        $at, %hi(D_8014A050)
/* 7E094 8002F0E4 C420A050 */  lwc1       $f0, %lo(D_8014A050)($at)
/* 7E098 8002F0E8 86030008 */  lh         $v1, 8($s0)
/* 7E09C 8002F0EC 8602000A */  lh         $v0, 0xa($s0)
/* 7E0A0 8002F0F0 4600D681 */  sub.s      $f26, $f26, $f0
/* 7E0A4 8002F0F4 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 7E0A8 8002F0F8 C420D1A8 */  lwc1       $f0, %lo(D_8016D1A8)($at)
/* 7E0AC 8002F0FC 44827000 */  mtc1       $v0, $f14
/* 7E0B0 8002F100 00000000 */  nop
/* 7E0B4 8002F104 468073A0 */  cvt.s.w    $f14, $f14
/* 7E0B8 8002F108 4483B000 */  mtc1       $v1, $f22
/* 7E0BC 8002F10C 00000000 */  nop
/* 7E0C0 8002F110 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7E0C4 8002F114 0C025A04 */  jal        func_80096810
/* 7E0C8 8002F118 4600B581 */   sub.s     $f22, $f22, $f0
/* 7E0CC 8002F11C 8602000C */  lh         $v0, 0xc($s0)
/* 7E0D0 8002F120 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 7E0D4 8002F124 C42CA02C */  lwc1       $f12, %lo(D_8014A02C)($at)
/* 7E0D8 8002F128 44827000 */  mtc1       $v0, $f14
/* 7E0DC 8002F12C 00000000 */  nop
/* 7E0E0 8002F130 468073A0 */  cvt.s.w    $f14, $f14
/* 7E0E4 8002F134 0C025A04 */  jal        func_80096810
/* 7E0E8 8002F138 46000506 */   mov.s     $f20, $f0
/* 7E0EC 8002F13C 4618C600 */  add.s      $f24, $f24, $f24
/* 7E0F0 8002F140 44923000 */  mtc1       $s2, $f6
/* 7E0F4 8002F144 00000000 */  nop
/* 7E0F8 8002F148 468031A0 */  cvt.s.w    $f6, $f6
/* 7E0FC 8002F14C 4606C603 */  div.s      $f24, $f24, $f6
/* 7E100 8002F150 461AD680 */  add.s      $f26, $f26, $f26
/* 7E104 8002F154 4606D683 */  div.s      $f26, $f26, $f6
/* 7E108 8002F158 4614A500 */  add.s      $f20, $f20, $f20
/* 7E10C 8002F15C 4606A503 */  div.s      $f20, $f20, $f6
/* 7E110 8002F160 46000000 */  add.s      $f0, $f0, $f0
/* 7E114 8002F164 46060003 */  div.s      $f0, $f0, $f6
/* 7E118 8002F168 4616B580 */  add.s      $f22, $f22, $f22
/* 7E11C 8002F16C 4606B583 */  div.s      $f22, $f22, $f6
/* 7E120 8002F170 8602000E */  lh         $v0, 0xe($s0)
/* 7E124 8002F174 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 7E128 8002F178 C422A2A0 */  lwc1       $f2, %lo(D_8014A2A0)($at)
/* 7E12C 8002F17C 44822000 */  mtc1       $v0, $f4
/* 7E130 8002F180 00000000 */  nop
/* 7E134 8002F184 46802120 */  cvt.s.w    $f4, $f4
/* 7E138 8002F188 46022101 */  sub.s      $f4, $f4, $f2
/* 7E13C 8002F18C 46042100 */  add.s      $f4, $f4, $f4
/* 7E140 8002F190 46062103 */  div.s      $f4, $f4, $f6
/* 7E144 8002F194 26310002 */  addiu      $s1, $s1, 2
/* 7E148 8002F198 4600C407 */  neg.s      $f16, $f24
/* 7E14C 8002F19C 44911000 */  mtc1       $s1, $f2
/* 7E150 8002F1A0 00000000 */  nop
/* 7E154 8002F1A4 468010A0 */  cvt.s.w    $f2, $f2
/* 7E158 8002F1A8 46028403 */  div.s      $f16, $f16, $f2
/* 7E15C 8002F1AC 4600D387 */  neg.s      $f14, $f26
/* 7E160 8002F1B0 46027383 */  div.s      $f14, $f14, $f2
/* 7E164 8002F1B4 4600A207 */  neg.s      $f8, $f20
/* 7E168 8002F1B8 46024203 */  div.s      $f8, $f8, $f2
/* 7E16C 8002F1BC 46000187 */  neg.s      $f6, $f0
/* 7E170 8002F1C0 46023183 */  div.s      $f6, $f6, $f2
/* 7E174 8002F1C4 4600B307 */  neg.s      $f12, $f22
/* 7E178 8002F1C8 46026303 */  div.s      $f12, $f12, $f2
/* 7E17C 8002F1CC 46002287 */  neg.s      $f10, $f4
/* 7E180 8002F1D0 46025283 */  div.s      $f10, $f10, $f2
/* 7E184 8002F1D4 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7E188 8002F1D8 944245BC */  lhu        $v0, %lo(D_800845BC)($v0)
/* 7E18C 8002F1DC 24420001 */  addiu      $v0, $v0, 1
/* 7E190 8002F1E0 3C018008 */  lui        $at, %hi(D_800845BC)
/* 7E194 8002F1E4 A42245BC */  sh         $v0, %lo(D_800845BC)($at)
/* 7E198 8002F1E8 3C018008 */  lui        $at, %hi(D_800845CC)
/* 7E19C 8002F1EC E43445CC */  swc1       $f20, %lo(D_800845CC)($at)
/* 7E1A0 8002F1F0 3C018008 */  lui        $at, %hi(D_800845D0)
/* 7E1A4 8002F1F4 E42045D0 */  swc1       $f0, %lo(D_800845D0)($at)
/* 7E1A8 8002F1F8 3C018008 */  lui        $at, %hi(D_800845C0)
/* 7E1AC 8002F1FC E43845C0 */  swc1       $f24, %lo(D_800845C0)($at)
/* 7E1B0 8002F200 3C018008 */  lui        $at, %hi(D_800845C4)
/* 7E1B4 8002F204 E43A45C4 */  swc1       $f26, %lo(D_800845C4)($at)
/* 7E1B8 8002F208 3C018008 */  lui        $at, %hi(D_800845C8)
/* 7E1BC 8002F20C E43645C8 */  swc1       $f22, %lo(D_800845C8)($at)
/* 7E1C0 8002F210 3C018008 */  lui        $at, %hi(D_800845D4)
/* 7E1C4 8002F214 E42445D4 */  swc1       $f4, %lo(D_800845D4)($at)
/* 7E1C8 8002F218 3C018008 */  lui        $at, %hi(D_800845E4)
/* 7E1CC 8002F21C E42845E4 */  swc1       $f8, %lo(D_800845E4)($at)
/* 7E1D0 8002F220 3C018008 */  lui        $at, %hi(D_800845E8)
/* 7E1D4 8002F224 E42645E8 */  swc1       $f6, %lo(D_800845E8)($at)
/* 7E1D8 8002F228 3C018008 */  lui        $at, %hi(D_800845D8)
/* 7E1DC 8002F22C E43045D8 */  swc1       $f16, %lo(D_800845D8)($at)
/* 7E1E0 8002F230 3C018008 */  lui        $at, %hi(D_800845DC)
/* 7E1E4 8002F234 E42E45DC */  swc1       $f14, %lo(D_800845DC)($at)
/* 7E1E8 8002F238 3C018008 */  lui        $at, %hi(D_800845E0)
/* 7E1EC 8002F23C E42C45E0 */  swc1       $f12, %lo(D_800845E0)($at)
/* 7E1F0 8002F240 3C018008 */  lui        $at, %hi(D_800845EC)
/* 7E1F4 8002F244 E42A45EC */  swc1       $f10, %lo(D_800845EC)($at)
/* 7E1F8 8002F248 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7E1FC 8002F24C 8FB20018 */  lw         $s2, 0x18($sp)
/* 7E200 8002F250 8FB10014 */  lw         $s1, 0x14($sp)
/* 7E204 8002F254 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E208 8002F258 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 7E20C 8002F25C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7E210 8002F260 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7E214 8002F264 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7E218 8002F268 27BD0040 */  addiu      $sp, $sp, 0x40
/* 7E21C 8002F26C 03E00008 */  jr         $ra
/* 7E220 8002F270 00000000 */   nop

glabel func_8002F274_7E224
/* 7E224 8002F274 3C038008 */  lui        $v1, %hi(D_8008457E)
/* 7E228 8002F278 8463457E */  lh         $v1, %lo(D_8008457E)($v1)
/* 7E22C 8002F27C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7E230 8002F280 AFB00010 */  sw         $s0, 0x10($sp)
/* 7E234 8002F284 3C108008 */  lui        $s0, %hi(D_800841E8)
/* 7E238 8002F288 8E1041E8 */  lw         $s0, %lo(D_800841E8)($s0)
/* 7E23C 8002F28C AFBF001C */  sw         $ra, 0x1c($sp)
/* 7E240 8002F290 AFB20018 */  sw         $s2, 0x18($sp)
/* 7E244 8002F294 AFB10014 */  sw         $s1, 0x14($sp)
/* 7E248 8002F298 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 7E24C 8002F29C F7B80030 */  sdc1       $f24, 0x30($sp)
/* 7E250 8002F2A0 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7E254 8002F2A4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7E258 8002F2A8 000310C0 */  sll        $v0, $v1, 3
/* 7E25C 8002F2AC 00431021 */  addu       $v0, $v0, $v1
/* 7E260 8002F2B0 00021040 */  sll        $v0, $v0, 1
/* 7E264 8002F2B4 02028021 */  addu       $s0, $s0, $v0
/* 7E268 8002F2B8 96110000 */  lhu        $s1, ($s0)
/* 7E26C 8002F2BC 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7E270 8002F2C0 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7E274 8002F2C4 3C018015 */  lui        $at, %hi(D_8014A064)
/* 7E278 8002F2C8 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 7E27C 8002F2CC 02228823 */  subu       $s1, $s1, $v0
/* 7E280 8002F2D0 26320001 */  addiu      $s2, $s1, 1
/* 7E284 8002F2D4 3C018008 */  lui        $at, %hi(D_80084580)
/* 7E288 8002F2D8 A4324580 */  sh         $s2, %lo(D_80084580)($at)
/* 7E28C 8002F2DC 86020004 */  lh         $v0, 4($s0)
/* 7E290 8002F2E0 3C018015 */  lui        $at, %hi(D_8014A080)
/* 7E294 8002F2E4 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 7E298 8002F2E8 86030006 */  lh         $v1, 6($s0)
/* 7E29C 8002F2EC 4482C000 */  mtc1       $v0, $f24
/* 7E2A0 8002F2F0 00000000 */  nop
/* 7E2A4 8002F2F4 4680C620 */  cvt.s.w    $f24, $f24
/* 7E2A8 8002F2F8 4600C601 */  sub.s      $f24, $f24, $f0
/* 7E2AC 8002F2FC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 7E2B0 8002F300 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 7E2B4 8002F304 4483D000 */  mtc1       $v1, $f26
/* 7E2B8 8002F308 00000000 */  nop
/* 7E2BC 8002F30C 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7E2C0 8002F310 86020008 */  lh         $v0, 8($s0)
/* 7E2C4 8002F314 4600D681 */  sub.s      $f26, $f26, $f0
/* 7E2C8 8002F318 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 7E2CC 8002F31C C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 7E2D0 8002F320 8603000A */  lh         $v1, 0xa($s0)
/* 7E2D4 8002F324 4482A000 */  mtc1       $v0, $f20
/* 7E2D8 8002F328 00000000 */  nop
/* 7E2DC 8002F32C 4680A520 */  cvt.s.w    $f20, $f20
/* 7E2E0 8002F330 4600A501 */  sub.s      $f20, $f20, $f0
/* 7E2E4 8002F334 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 7E2E8 8002F338 C420A07C */  lwc1       $f0, %lo(D_8014A07C)($at)
/* 7E2EC 8002F33C 4483B000 */  mtc1       $v1, $f22
/* 7E2F0 8002F340 00000000 */  nop
/* 7E2F4 8002F344 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7E2F8 8002F348 8602000C */  lh         $v0, 0xc($s0)
/* 7E2FC 8002F34C 44827000 */  mtc1       $v0, $f14
/* 7E300 8002F350 00000000 */  nop
/* 7E304 8002F354 468073A0 */  cvt.s.w    $f14, $f14
/* 7E308 8002F358 0C025A04 */  jal        func_80096810
/* 7E30C 8002F35C 4600B581 */   sub.s     $f22, $f22, $f0
/* 7E310 8002F360 4618C600 */  add.s      $f24, $f24, $f24
/* 7E314 8002F364 44925000 */  mtc1       $s2, $f10
/* 7E318 8002F368 00000000 */  nop
/* 7E31C 8002F36C 468052A0 */  cvt.s.w    $f10, $f10
/* 7E320 8002F370 460AC603 */  div.s      $f24, $f24, $f10
/* 7E324 8002F374 461AD680 */  add.s      $f26, $f26, $f26
/* 7E328 8002F378 460AD683 */  div.s      $f26, $f26, $f10
/* 7E32C 8002F37C 46000000 */  add.s      $f0, $f0, $f0
/* 7E330 8002F380 460A0003 */  div.s      $f0, $f0, $f10
/* 7E334 8002F384 4614A500 */  add.s      $f20, $f20, $f20
/* 7E338 8002F388 460AA503 */  div.s      $f20, $f20, $f10
/* 7E33C 8002F38C 4616B580 */  add.s      $f22, $f22, $f22
/* 7E340 8002F390 460AB583 */  div.s      $f22, $f22, $f10
/* 7E344 8002F394 8602000E */  lh         $v0, 0xe($s0)
/* 7E348 8002F398 3C018015 */  lui        $at, %hi(D_8014A084)
/* 7E34C 8002F39C C422A084 */  lwc1       $f2, %lo(D_8014A084)($at)
/* 7E350 8002F3A0 44822000 */  mtc1       $v0, $f4
/* 7E354 8002F3A4 00000000 */  nop
/* 7E358 8002F3A8 46802120 */  cvt.s.w    $f4, $f4
/* 7E35C 8002F3AC 46022101 */  sub.s      $f4, $f4, $f2
/* 7E360 8002F3B0 46042100 */  add.s      $f4, $f4, $f4
/* 7E364 8002F3B4 460A2103 */  div.s      $f4, $f4, $f10
/* 7E368 8002F3B8 86020010 */  lh         $v0, 0x10($s0)
/* 7E36C 8002F3BC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 7E370 8002F3C0 C426A088 */  lwc1       $f6, %lo(D_8014A088)($at)
/* 7E374 8002F3C4 44821000 */  mtc1       $v0, $f2
/* 7E378 8002F3C8 00000000 */  nop
/* 7E37C 8002F3CC 468010A0 */  cvt.s.w    $f2, $f2
/* 7E380 8002F3D0 46061081 */  sub.s      $f2, $f2, $f6
/* 7E384 8002F3D4 46021080 */  add.s      $f2, $f2, $f2
/* 7E388 8002F3D8 460A1083 */  div.s      $f2, $f2, $f10
/* 7E38C 8002F3DC 26310002 */  addiu      $s1, $s1, 2
/* 7E390 8002F3E0 44914000 */  mtc1       $s1, $f8
/* 7E394 8002F3E4 00000000 */  nop
/* 7E398 8002F3E8 46804220 */  cvt.s.w    $f8, $f8
/* 7E39C 8002F3EC 4608C603 */  div.s      $f24, $f24, $f8
/* 7E3A0 8002F3F0 4608D683 */  div.s      $f26, $f26, $f8
/* 7E3A4 8002F3F4 46080003 */  div.s      $f0, $f0, $f8
/* 7E3A8 8002F3F8 4608A503 */  div.s      $f20, $f20, $f8
/* 7E3AC 8002F3FC 4608B583 */  div.s      $f22, $f22, $f8
/* 7E3B0 8002F400 46082103 */  div.s      $f4, $f4, $f8
/* 7E3B4 8002F404 46081083 */  div.s      $f2, $f2, $f8
/* 7E3B8 8002F408 3C028008 */  lui        $v0, %hi(D_8008457E)
/* 7E3BC 8002F40C 9442457E */  lhu        $v0, %lo(D_8008457E)($v0)
/* 7E3C0 8002F410 3C018008 */  lui        $at, %hi(D_80084584)
/* 7E3C4 8002F414 AC204584 */  sw         $zero, %lo(D_80084584)($at)
/* 7E3C8 8002F418 3C018008 */  lui        $at, %hi(D_80084588)
/* 7E3CC 8002F41C AC204588 */  sw         $zero, %lo(D_80084588)($at)
/* 7E3D0 8002F420 3C018008 */  lui        $at, %hi(D_8008458C)
/* 7E3D4 8002F424 AC20458C */  sw         $zero, %lo(D_8008458C)($at)
/* 7E3D8 8002F428 3C018008 */  lui        $at, %hi(D_80084590)
/* 7E3DC 8002F42C AC204590 */  sw         $zero, %lo(D_80084590)($at)
/* 7E3E0 8002F430 3C018008 */  lui        $at, %hi(D_80084594)
/* 7E3E4 8002F434 AC204594 */  sw         $zero, %lo(D_80084594)($at)
/* 7E3E8 8002F438 3C018008 */  lui        $at, %hi(D_80084598)
/* 7E3EC 8002F43C AC204598 */  sw         $zero, %lo(D_80084598)($at)
/* 7E3F0 8002F440 3C018008 */  lui        $at, %hi(D_8008459C)
/* 7E3F4 8002F444 AC20459C */  sw         $zero, %lo(D_8008459C)($at)
/* 7E3F8 8002F448 24420001 */  addiu      $v0, $v0, 1
/* 7E3FC 8002F44C 3C018008 */  lui        $at, %hi(D_8008457E)
/* 7E400 8002F450 A422457E */  sh         $v0, %lo(D_8008457E)($at)
/* 7E404 8002F454 3C018008 */  lui        $at, %hi(D_800845B0)
/* 7E408 8002F458 E42045B0 */  swc1       $f0, %lo(D_800845B0)($at)
/* 7E40C 8002F45C 3C018008 */  lui        $at, %hi(D_800845A0)
/* 7E410 8002F460 E43845A0 */  swc1       $f24, %lo(D_800845A0)($at)
/* 7E414 8002F464 3C018008 */  lui        $at, %hi(D_800845A4)
/* 7E418 8002F468 E43A45A4 */  swc1       $f26, %lo(D_800845A4)($at)
/* 7E41C 8002F46C 3C018008 */  lui        $at, %hi(D_800845A8)
/* 7E420 8002F470 E43445A8 */  swc1       $f20, %lo(D_800845A8)($at)
/* 7E424 8002F474 3C018008 */  lui        $at, %hi(D_800845AC)
/* 7E428 8002F478 E43645AC */  swc1       $f22, %lo(D_800845AC)($at)
/* 7E42C 8002F47C 3C018008 */  lui        $at, %hi(D_800845B4)
/* 7E430 8002F480 E42445B4 */  swc1       $f4, %lo(D_800845B4)($at)
/* 7E434 8002F484 3C018008 */  lui        $at, %hi(D_800845B8)
/* 7E438 8002F488 E42245B8 */  swc1       $f2, %lo(D_800845B8)($at)
/* 7E43C 8002F48C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7E440 8002F490 8FB20018 */  lw         $s2, 0x18($sp)
/* 7E444 8002F494 8FB10014 */  lw         $s1, 0x14($sp)
/* 7E448 8002F498 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E44C 8002F49C D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 7E450 8002F4A0 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7E454 8002F4A4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7E458 8002F4A8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7E45C 8002F4AC 27BD0040 */  addiu      $sp, $sp, 0x40
/* 7E460 8002F4B0 03E00008 */  jr         $ra
/* 7E464 8002F4B4 00000000 */   nop

glabel func_8002F4B8_7E468
/* 7E468 8002F4B8 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7E46C 8002F4BC 844245BC */  lh         $v0, %lo(D_800845BC)($v0)
/* 7E470 8002F4C0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7E474 8002F4C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 7E478 8002F4C8 3C108008 */  lui        $s0, %hi(D_800841EC)
/* 7E47C 8002F4CC 8E1041EC */  lw         $s0, %lo(D_800841EC)($s0)
/* 7E480 8002F4D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7E484 8002F4D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 7E488 8002F4D8 AFB10014 */  sw         $s1, 0x14($sp)
/* 7E48C 8002F4DC F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 7E490 8002F4E0 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 7E494 8002F4E4 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7E498 8002F4E8 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7E49C 8002F4EC 00021100 */  sll        $v0, $v0, 4
/* 7E4A0 8002F4F0 02028021 */  addu       $s0, $s0, $v0
/* 7E4A4 8002F4F4 96110000 */  lhu        $s1, ($s0)
/* 7E4A8 8002F4F8 3C028008 */  lui        $v0, %hi(D_800845F8)
/* 7E4AC 8002F4FC 8C4245F8 */  lw         $v0, %lo(D_800845F8)($v0)
/* 7E4B0 8002F500 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 7E4B4 8002F504 C42C9ECC */  lwc1       $f12, %lo(D_80149ECC)($at)
/* 7E4B8 8002F508 02228823 */  subu       $s1, $s1, $v0
/* 7E4BC 8002F50C 26320001 */  addiu      $s2, $s1, 1
/* 7E4C0 8002F510 3C018008 */  lui        $at, %hi(D_800845BE)
/* 7E4C4 8002F514 A43245BE */  sh         $s2, %lo(D_800845BE)($at)
/* 7E4C8 8002F518 86020004 */  lh         $v0, 4($s0)
/* 7E4CC 8002F51C 86030006 */  lh         $v1, 6($s0)
/* 7E4D0 8002F520 3C018015 */  lui        $at, %hi(D_8014A054)
/* 7E4D4 8002F524 C420A054 */  lwc1       $f0, %lo(D_8014A054)($at)
/* 7E4D8 8002F528 4482C000 */  mtc1       $v0, $f24
/* 7E4DC 8002F52C 00000000 */  nop
/* 7E4E0 8002F530 4680C620 */  cvt.s.w    $f24, $f24
/* 7E4E4 8002F534 4483D000 */  mtc1       $v1, $f26
/* 7E4E8 8002F538 00000000 */  nop
/* 7E4EC 8002F53C 4680D6A0 */  cvt.s.w    $f26, $f26
/* 7E4F0 8002F540 4600C601 */  sub.s      $f24, $f24, $f0
/* 7E4F4 8002F544 3C018015 */  lui        $at, %hi(D_8014A050)
/* 7E4F8 8002F548 C420A050 */  lwc1       $f0, %lo(D_8014A050)($at)
/* 7E4FC 8002F54C 86030008 */  lh         $v1, 8($s0)
/* 7E500 8002F550 8602000A */  lh         $v0, 0xa($s0)
/* 7E504 8002F554 4600D681 */  sub.s      $f26, $f26, $f0
/* 7E508 8002F558 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 7E50C 8002F55C C420D1A8 */  lwc1       $f0, %lo(D_8016D1A8)($at)
/* 7E510 8002F560 44827000 */  mtc1       $v0, $f14
/* 7E514 8002F564 00000000 */  nop
/* 7E518 8002F568 468073A0 */  cvt.s.w    $f14, $f14
/* 7E51C 8002F56C 4483B000 */  mtc1       $v1, $f22
/* 7E520 8002F570 00000000 */  nop
/* 7E524 8002F574 4680B5A0 */  cvt.s.w    $f22, $f22
/* 7E528 8002F578 0C025A04 */  jal        func_80096810
/* 7E52C 8002F57C 4600B581 */   sub.s     $f22, $f22, $f0
/* 7E530 8002F580 8602000C */  lh         $v0, 0xc($s0)
/* 7E534 8002F584 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 7E538 8002F588 C42CA02C */  lwc1       $f12, %lo(D_8014A02C)($at)
/* 7E53C 8002F58C 44827000 */  mtc1       $v0, $f14
/* 7E540 8002F590 00000000 */  nop
/* 7E544 8002F594 468073A0 */  cvt.s.w    $f14, $f14
/* 7E548 8002F598 0C025A04 */  jal        func_80096810
/* 7E54C 8002F59C 46000506 */   mov.s     $f20, $f0
/* 7E550 8002F5A0 4618C600 */  add.s      $f24, $f24, $f24
/* 7E554 8002F5A4 44924000 */  mtc1       $s2, $f8
/* 7E558 8002F5A8 00000000 */  nop
/* 7E55C 8002F5AC 46804220 */  cvt.s.w    $f8, $f8
/* 7E560 8002F5B0 4608C603 */  div.s      $f24, $f24, $f8
/* 7E564 8002F5B4 461AD680 */  add.s      $f26, $f26, $f26
/* 7E568 8002F5B8 4608D683 */  div.s      $f26, $f26, $f8
/* 7E56C 8002F5BC 4614A500 */  add.s      $f20, $f20, $f20
/* 7E570 8002F5C0 4608A503 */  div.s      $f20, $f20, $f8
/* 7E574 8002F5C4 46000000 */  add.s      $f0, $f0, $f0
/* 7E578 8002F5C8 46080003 */  div.s      $f0, $f0, $f8
/* 7E57C 8002F5CC 4616B580 */  add.s      $f22, $f22, $f22
/* 7E580 8002F5D0 4608B583 */  div.s      $f22, $f22, $f8
/* 7E584 8002F5D4 8602000E */  lh         $v0, 0xe($s0)
/* 7E588 8002F5D8 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 7E58C 8002F5DC C424A2A0 */  lwc1       $f4, %lo(D_8014A2A0)($at)
/* 7E590 8002F5E0 44821000 */  mtc1       $v0, $f2
/* 7E594 8002F5E4 00000000 */  nop
/* 7E598 8002F5E8 468010A0 */  cvt.s.w    $f2, $f2
/* 7E59C 8002F5EC 46041081 */  sub.s      $f2, $f2, $f4
/* 7E5A0 8002F5F0 46021080 */  add.s      $f2, $f2, $f2
/* 7E5A4 8002F5F4 46081083 */  div.s      $f2, $f2, $f8
/* 7E5A8 8002F5F8 26310002 */  addiu      $s1, $s1, 2
/* 7E5AC 8002F5FC 44913000 */  mtc1       $s1, $f6
/* 7E5B0 8002F600 00000000 */  nop
/* 7E5B4 8002F604 468031A0 */  cvt.s.w    $f6, $f6
/* 7E5B8 8002F608 4606C603 */  div.s      $f24, $f24, $f6
/* 7E5BC 8002F60C 4606D683 */  div.s      $f26, $f26, $f6
/* 7E5C0 8002F610 4606A503 */  div.s      $f20, $f20, $f6
/* 7E5C4 8002F614 46060003 */  div.s      $f0, $f0, $f6
/* 7E5C8 8002F618 4606B583 */  div.s      $f22, $f22, $f6
/* 7E5CC 8002F61C 46061083 */  div.s      $f2, $f2, $f6
/* 7E5D0 8002F620 3C028008 */  lui        $v0, %hi(D_800845BC)
/* 7E5D4 8002F624 944245BC */  lhu        $v0, %lo(D_800845BC)($v0)
/* 7E5D8 8002F628 3C018008 */  lui        $at, %hi(D_800845C0)
/* 7E5DC 8002F62C AC2045C0 */  sw         $zero, %lo(D_800845C0)($at)
/* 7E5E0 8002F630 3C018008 */  lui        $at, %hi(D_800845C4)
/* 7E5E4 8002F634 AC2045C4 */  sw         $zero, %lo(D_800845C4)($at)
/* 7E5E8 8002F638 3C018008 */  lui        $at, %hi(D_800845C8)
/* 7E5EC 8002F63C AC2045C8 */  sw         $zero, %lo(D_800845C8)($at)
/* 7E5F0 8002F640 3C018008 */  lui        $at, %hi(D_800845CC)
/* 7E5F4 8002F644 AC2045CC */  sw         $zero, %lo(D_800845CC)($at)
/* 7E5F8 8002F648 3C018008 */  lui        $at, %hi(D_800845D0)
/* 7E5FC 8002F64C AC2045D0 */  sw         $zero, %lo(D_800845D0)($at)
/* 7E600 8002F650 3C018008 */  lui        $at, %hi(D_800845D4)
/* 7E604 8002F654 AC2045D4 */  sw         $zero, %lo(D_800845D4)($at)
/* 7E608 8002F658 24420001 */  addiu      $v0, $v0, 1
/* 7E60C 8002F65C 3C018008 */  lui        $at, %hi(D_800845BC)
/* 7E610 8002F660 A42245BC */  sh         $v0, %lo(D_800845BC)($at)
/* 7E614 8002F664 3C018008 */  lui        $at, %hi(D_800845E4)
/* 7E618 8002F668 E43445E4 */  swc1       $f20, %lo(D_800845E4)($at)
/* 7E61C 8002F66C 3C018008 */  lui        $at, %hi(D_800845E8)
/* 7E620 8002F670 E42045E8 */  swc1       $f0, %lo(D_800845E8)($at)
/* 7E624 8002F674 3C018008 */  lui        $at, %hi(D_800845D8)
/* 7E628 8002F678 E43845D8 */  swc1       $f24, %lo(D_800845D8)($at)
/* 7E62C 8002F67C 3C018008 */  lui        $at, %hi(D_800845DC)
/* 7E630 8002F680 E43A45DC */  swc1       $f26, %lo(D_800845DC)($at)
/* 7E634 8002F684 3C018008 */  lui        $at, %hi(D_800845E0)
/* 7E638 8002F688 E43645E0 */  swc1       $f22, %lo(D_800845E0)($at)
/* 7E63C 8002F68C 3C018008 */  lui        $at, %hi(D_800845EC)
/* 7E640 8002F690 E42245EC */  swc1       $f2, %lo(D_800845EC)($at)
/* 7E644 8002F694 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7E648 8002F698 8FB20018 */  lw         $s2, 0x18($sp)
/* 7E64C 8002F69C 8FB10014 */  lw         $s1, 0x14($sp)
/* 7E650 8002F6A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E654 8002F6A4 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 7E658 8002F6A8 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7E65C 8002F6AC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7E660 8002F6B0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7E664 8002F6B4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 7E668 8002F6B8 03E00008 */  jr         $ra
/* 7E66C 8002F6BC 00000000 */   nop

glabel func_8002F6C0_7E670
/* 7E670 8002F6C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7E674 8002F6C4 3C058008 */  lui        $a1, %hi(D_80084580)
/* 7E678 8002F6C8 24A54580 */  addiu      $a1, $a1, %lo(D_80084580)
/* 7E67C 8002F6CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 7E680 8002F6D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 7E684 8002F6D4 84A20000 */  lh         $v0, ($a1)
/* 7E688 8002F6D8 10400046 */  beqz       $v0, .L8002F7F4
/* 7E68C 8002F6DC 00401821 */   addu      $v1, $v0, $zero
/* 7E690 8002F6E0 3C018008 */  lui        $at, %hi(D_80084590)
/* 7E694 8002F6E4 C42E4590 */  lwc1       $f14, %lo(D_80084590)($at)
/* 7E698 8002F6E8 3C018008 */  lui        $at, %hi(D_800845AC)
/* 7E69C 8002F6EC C42045AC */  lwc1       $f0, %lo(D_800845AC)($at)
/* 7E6A0 8002F6F0 3C018008 */  lui        $at, %hi(D_80084594)
/* 7E6A4 8002F6F4 C4284594 */  lwc1       $f8, %lo(D_80084594)($at)
/* 7E6A8 8002F6F8 3C018008 */  lui        $at, %hi(D_800845B0)
/* 7E6AC 8002F6FC C42245B0 */  lwc1       $f2, %lo(D_800845B0)($at)
/* 7E6B0 8002F700 46007380 */  add.s      $f14, $f14, $f0
/* 7E6B4 8002F704 2462FFFF */  addiu      $v0, $v1, -1
/* 7E6B8 8002F708 A4A20000 */  sh         $v0, ($a1)
/* 7E6BC 8002F70C 3C018008 */  lui        $at, %hi(D_80084584)
/* 7E6C0 8002F710 C4264584 */  lwc1       $f6, %lo(D_80084584)($at)
/* 7E6C4 8002F714 46024200 */  add.s      $f8, $f8, $f2
/* 7E6C8 8002F718 3C018008 */  lui        $at, %hi(D_800845A0)
/* 7E6CC 8002F71C C43045A0 */  lwc1       $f16, %lo(D_800845A0)($at)
/* 7E6D0 8002F720 3C018008 */  lui        $at, %hi(D_800845B8)
/* 7E6D4 8002F724 C42C45B8 */  lwc1       $f12, %lo(D_800845B8)($at)
/* 7E6D8 8002F728 46103180 */  add.s      $f6, $f6, $f16
/* 7E6DC 8002F72C 3C018008 */  lui        $at, %hi(D_8008459C)
/* 7E6E0 8002F730 C422459C */  lwc1       $f2, %lo(D_8008459C)($at)
/* 7E6E4 8002F734 3C018008 */  lui        $at, %hi(D_80084598)
/* 7E6E8 8002F738 C42A4598 */  lwc1       $f10, %lo(D_80084598)($at)
/* 7E6EC 8002F73C 3C018008 */  lui        $at, %hi(D_80084588)
/* 7E6F0 8002F740 C4244588 */  lwc1       $f4, %lo(D_80084588)($at)
/* 7E6F4 8002F744 460C1080 */  add.s      $f2, $f2, $f12
/* 7E6F8 8002F748 3C018008 */  lui        $at, %hi(D_800845B4)
/* 7E6FC 8002F74C C42045B4 */  lwc1       $f0, %lo(D_800845B4)($at)
/* 7E700 8002F750 3C018008 */  lui        $at, %hi(D_800845A8)
/* 7E704 8002F754 C43245A8 */  lwc1       $f18, %lo(D_800845A8)($at)
/* 7E708 8002F758 3C018008 */  lui        $at, %hi(D_800845A4)
/* 7E70C 8002F75C C42C45A4 */  lwc1       $f12, %lo(D_800845A4)($at)
/* 7E710 8002F760 46005280 */  add.s      $f10, $f10, $f0
/* 7E714 8002F764 3C018008 */  lui        $at, %hi(D_8008458C)
/* 7E718 8002F768 C420458C */  lwc1       $f0, %lo(D_8008458C)($at)
/* 7E71C 8002F76C 3C108008 */  lui        $s0, %hi(D_80081BA0)
/* 7E720 8002F770 26101BA0 */  addiu      $s0, $s0, %lo(D_80081BA0)
/* 7E724 8002F774 44054000 */  mfc1       $a1, $f8
/* 7E728 8002F778 00000000 */  nop
/* 7E72C 8002F77C 44067000 */  mfc1       $a2, $f14
/* 7E730 8002F780 00000000 */  nop
/* 7E734 8002F784 460C2100 */  add.s      $f4, $f4, $f12
/* 7E738 8002F788 3C018008 */  lui        $at, %hi(D_80084584)
/* 7E73C 8002F78C E4264584 */  swc1       $f6, %lo(D_80084584)($at)
/* 7E740 8002F790 44071000 */  mfc1       $a3, $f2
/* 7E744 8002F794 00000000 */  nop
/* 7E748 8002F798 46120000 */  add.s      $f0, $f0, $f18
/* 7E74C 8002F79C 3C018008 */  lui        $at, %hi(D_80084590)
/* 7E750 8002F7A0 AC264590 */  sw         $a2, %lo(D_80084590)($at)
/* 7E754 8002F7A4 3C018008 */  lui        $at, %hi(D_80084594)
/* 7E758 8002F7A8 AC254594 */  sw         $a1, %lo(D_80084594)($at)
/* 7E75C 8002F7AC 3C018008 */  lui        $at, %hi(D_80084598)
/* 7E760 8002F7B0 E42A4598 */  swc1       $f10, %lo(D_80084598)($at)
/* 7E764 8002F7B4 3C018008 */  lui        $at, %hi(D_8008459C)
/* 7E768 8002F7B8 AC27459C */  sw         $a3, %lo(D_8008459C)($at)
/* 7E76C 8002F7BC 3C018008 */  lui        $at, %hi(D_80084588)
/* 7E770 8002F7C0 E4244588 */  swc1       $f4, %lo(D_80084588)($at)
/* 7E774 8002F7C4 3C018008 */  lui        $at, %hi(D_8008458C)
/* 7E778 8002F7C8 E420458C */  swc1       $f0, %lo(D_8008458C)($at)
/* 7E77C 8002F7CC 0C00ABEB */  jal        func_8002AFAC_79F5C
/* 7E780 8002F7D0 02002021 */   addu      $a0, $s0, $zero
/* 7E784 8002F7D4 3C058008 */  lui        $a1, %hi(D_80084584)
/* 7E788 8002F7D8 8CA54584 */  lw         $a1, %lo(D_80084584)($a1)
/* 7E78C 8002F7DC 3C068008 */  lui        $a2, %hi(D_80084588)
/* 7E790 8002F7E0 8CC64588 */  lw         $a2, %lo(D_80084588)($a2)
/* 7E794 8002F7E4 3C078008 */  lui        $a3, %hi(D_8008458C)
/* 7E798 8002F7E8 8CE7458C */  lw         $a3, %lo(D_8008458C)($a3)
/* 7E79C 8002F7EC 0C00AC5F */  jal        func_8002B17C_7A12C
/* 7E7A0 8002F7F0 02002021 */   addu      $a0, $s0, $zero
.L8002F7F4:
/* 7E7A4 8002F7F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7E7A8 8002F7F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7E7AC 8002F7FC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7E7B0 8002F800 03E00008 */  jr         $ra
/* 7E7B4 8002F804 00000000 */   nop

glabel func_8002F808_7E7B8
/* 7E7B8 8002F808 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7E7BC 8002F80C 3C048008 */  lui        $a0, %hi(D_800845BE)
/* 7E7C0 8002F810 248445BE */  addiu      $a0, $a0, %lo(D_800845BE)
/* 7E7C4 8002F814 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7E7C8 8002F818 84820000 */  lh         $v0, ($a0)
/* 7E7CC 8002F81C 10400053 */  beqz       $v0, .L8002F96C
/* 7E7D0 8002F820 00401821 */   addu      $v1, $v0, $zero
/* 7E7D4 8002F824 3C018008 */  lui        $at, %hi(D_800845C0)
/* 7E7D8 8002F828 C42A45C0 */  lwc1       $f10, %lo(D_800845C0)($at)
/* 7E7DC 8002F82C 3C018008 */  lui        $at, %hi(D_800845D8)
/* 7E7E0 8002F830 C42045D8 */  lwc1       $f0, %lo(D_800845D8)($at)
/* 7E7E4 8002F834 3C018008 */  lui        $at, %hi(D_800845D4)
/* 7E7E8 8002F838 C42645D4 */  lwc1       $f6, %lo(D_800845D4)($at)
/* 7E7EC 8002F83C 46005280 */  add.s      $f10, $f10, $f0
/* 7E7F0 8002F840 3C018008 */  lui        $at, %hi(D_800845EC)
/* 7E7F4 8002F844 C42245EC */  lwc1       $f2, %lo(D_800845EC)($at)
/* 7E7F8 8002F848 3C018008 */  lui        $at, %hi(D_800845C4)
/* 7E7FC 8002F84C C43045C4 */  lwc1       $f16, %lo(D_800845C4)($at)
/* 7E800 8002F850 46023180 */  add.s      $f6, $f6, $f2
/* 7E804 8002F854 3C018008 */  lui        $at, %hi(D_800845DC)
/* 7E808 8002F858 C42045DC */  lwc1       $f0, %lo(D_800845DC)($at)
/* 7E80C 8002F85C 3C018008 */  lui        $at, %hi(D_800845C8)
/* 7E810 8002F860 C43245C8 */  lwc1       $f18, %lo(D_800845C8)($at)
/* 7E814 8002F864 46008400 */  add.s      $f16, $f16, $f0
/* 7E818 8002F868 3C018008 */  lui        $at, %hi(D_800845E0)
/* 7E81C 8002F86C C42045E0 */  lwc1       $f0, %lo(D_800845E0)($at)
/* 7E820 8002F870 3C018008 */  lui        $at, %hi(D_800845CC)
/* 7E824 8002F874 C42E45CC */  lwc1       $f14, %lo(D_800845CC)($at)
/* 7E828 8002F878 46009480 */  add.s      $f18, $f18, $f0
/* 7E82C 8002F87C 3C018008 */  lui        $at, %hi(D_800845E4)
/* 7E830 8002F880 C42045E4 */  lwc1       $f0, %lo(D_800845E4)($at)
/* 7E834 8002F884 3C018008 */  lui        $at, %hi(D_800845D0)
/* 7E838 8002F888 C42845D0 */  lwc1       $f8, %lo(D_800845D0)($at)
/* 7E83C 8002F88C 46007380 */  add.s      $f14, $f14, $f0
/* 7E840 8002F890 3C018008 */  lui        $at, %hi(D_800845E8)
/* 7E844 8002F894 C42045E8 */  lwc1       $f0, %lo(D_800845E8)($at)
/* 7E848 8002F898 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 7E84C 8002F89C C42C9ECC */  lwc1       $f12, %lo(D_80149ECC)($at)
/* 7E850 8002F8A0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 7E854 8002F8A4 C424D1A8 */  lwc1       $f4, %lo(D_8016D1A8)($at)
/* 7E858 8002F8A8 46004200 */  add.s      $f8, $f8, $f0
/* 7E85C 8002F8AC 3C018015 */  lui        $at, %hi(D_8014A050)
/* 7E860 8002F8B0 C422A050 */  lwc1       $f2, %lo(D_8014A050)($at)
/* 7E864 8002F8B4 3C018015 */  lui        $at, %hi(D_8014A054)
/* 7E868 8002F8B8 C420A054 */  lwc1       $f0, %lo(D_8014A054)($at)
/* 7E86C 8002F8BC 2462FFFF */  addiu      $v0, $v1, -1
/* 7E870 8002F8C0 46101080 */  add.s      $f2, $f2, $f16
/* 7E874 8002F8C4 A4820000 */  sh         $v0, ($a0)
/* 7E878 8002F8C8 3C018008 */  lui        $at, %hi(D_800845C0)
/* 7E87C 8002F8CC E42A45C0 */  swc1       $f10, %lo(D_800845C0)($at)
/* 7E880 8002F8D0 3C018008 */  lui        $at, %hi(D_800845C4)
/* 7E884 8002F8D4 E43045C4 */  swc1       $f16, %lo(D_800845C4)($at)
/* 7E888 8002F8D8 46122100 */  add.s      $f4, $f4, $f18
/* 7E88C 8002F8DC 3C018008 */  lui        $at, %hi(D_800845D4)
/* 7E890 8002F8E0 E42645D4 */  swc1       $f6, %lo(D_800845D4)($at)
/* 7E894 8002F8E4 3C018008 */  lui        $at, %hi(D_800845C8)
/* 7E898 8002F8E8 E43245C8 */  swc1       $f18, %lo(D_800845C8)($at)
/* 7E89C 8002F8EC 3C018015 */  lui        $at, %hi(D_8014A050)
/* 7E8A0 8002F8F0 E422A050 */  swc1       $f2, %lo(D_8014A050)($at)
/* 7E8A4 8002F8F4 460A0000 */  add.s      $f0, $f0, $f10
/* 7E8A8 8002F8F8 3C018008 */  lui        $at, %hi(D_800845CC)
/* 7E8AC 8002F8FC E42E45CC */  swc1       $f14, %lo(D_800845CC)($at)
/* 7E8B0 8002F900 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 7E8B4 8002F904 E424D1A8 */  swc1       $f4, %lo(D_8016D1A8)($at)
/* 7E8B8 8002F908 3C018008 */  lui        $at, %hi(D_800845D0)
/* 7E8BC 8002F90C E42845D0 */  swc1       $f8, %lo(D_800845D0)($at)
/* 7E8C0 8002F910 3C018015 */  lui        $at, %hi(D_8014A054)
/* 7E8C4 8002F914 E420A054 */  swc1       $f0, %lo(D_8014A054)($at)
/* 7E8C8 8002F918 0C0259AB */  jal        func_800966AC
/* 7E8CC 8002F91C 00000000 */   nop
/* 7E8D0 8002F920 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 7E8D4 8002F924 C42CA02C */  lwc1       $f12, %lo(D_8014A02C)($at)
/* 7E8D8 8002F928 3C018008 */  lui        $at, %hi(D_800845D0)
/* 7E8DC 8002F92C C42E45D0 */  lwc1       $f14, %lo(D_800845D0)($at)
/* 7E8E0 8002F930 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 7E8E4 8002F934 E4209ECC */  swc1       $f0, %lo(D_80149ECC)($at)
/* 7E8E8 8002F938 0C0259AB */  jal        func_800966AC
/* 7E8EC 8002F93C 00000000 */   nop
/* 7E8F0 8002F940 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 7E8F4 8002F944 C422A2A0 */  lwc1       $f2, %lo(D_8014A2A0)($at)
/* 7E8F8 8002F948 3C018008 */  lui        $at, %hi(D_800845D4)
/* 7E8FC 8002F94C C42445D4 */  lwc1       $f4, %lo(D_800845D4)($at)
/* 7E900 8002F950 46041080 */  add.s      $f2, $f2, $f4
/* 7E904 8002F954 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 7E908 8002F958 E420A02C */  swc1       $f0, %lo(D_8014A02C)($at)
/* 7E90C 8002F95C 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 7E910 8002F960 E422A2A0 */  swc1       $f2, %lo(D_8014A2A0)($at)
/* 7E914 8002F964 0C027224 */  jal        func_8009C890
/* 7E918 8002F968 00000000 */   nop
.L8002F96C:
/* 7E91C 8002F96C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7E920 8002F970 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7E924 8002F974 03E00008 */  jr         $ra
/* 7E928 8002F978 00000000 */   nop

glabel func_8002F97C_7E92C
/* 7E92C 8002F97C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7E930 8002F980 AFB30024 */  sw         $s3, 0x24($sp)
/* 7E934 8002F984 00809821 */  addu       $s3, $a0, $zero
/* 7E938 8002F988 3C048008 */  lui        $a0, %hi(D_80084500)
/* 7E93C 8002F98C 24844500 */  addiu      $a0, $a0, %lo(D_80084500)
/* 7E940 8002F990 AFBF002C */  sw         $ra, 0x2c($sp)
/* 7E944 8002F994 AFB40028 */  sw         $s4, 0x28($sp)
/* 7E948 8002F998 AFB20020 */  sw         $s2, 0x20($sp)
/* 7E94C 8002F99C AFB1001C */  sw         $s1, 0x1c($sp)
/* 7E950 8002F9A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 7E954 8002F9A4 90820000 */  lbu        $v0, ($a0)
/* 7E958 8002F9A8 1840001A */  blez       $v0, .L8002FA14
/* 7E95C 8002F9AC 00009021 */   addu      $s2, $zero, $zero
/* 7E960 8002F9B0 327400FF */  andi       $s4, $s3, 0xff
/* 7E964 8002F9B4 2491FD3C */  addiu      $s1, $a0, -0x2c4
/* 7E968 8002F9B8 2490FD1C */  addiu      $s0, $a0, -0x2e4
.L8002F9BC:
/* 7E96C 8002F9BC 12800009 */  beqz       $s4, .L8002F9E4
/* 7E970 8002F9C0 00000000 */   nop
/* 7E974 8002F9C4 8E040000 */  lw         $a0, ($s0)
/* 7E978 8002F9C8 0C027AFA */  jal        func_8009EBE8
/* 7E97C 8002F9CC 00000000 */   nop
/* 7E980 8002F9D0 8E240000 */  lw         $a0, ($s1)
/* 7E984 8002F9D4 0C027D3A */  jal        func_8009F4E8
/* 7E988 8002F9D8 26310004 */   addiu     $s1, $s1, 4
/* 7E98C 8002F9DC 0800BE7F */  j          .L8002F9FC
/* 7E990 8002F9E0 00000000 */   nop
.L8002F9E4:
/* 7E994 8002F9E4 8E040000 */  lw         $a0, ($s0)
/* 7E998 8002F9E8 0C027AF5 */  jal        func_8009EBD4
/* 7E99C 8002F9EC 00000000 */   nop
/* 7E9A0 8002F9F0 8E240000 */  lw         $a0, ($s1)
/* 7E9A4 8002F9F4 0C027D35 */  jal        func_8009F4D4
/* 7E9A8 8002F9F8 26310004 */   addiu     $s1, $s1, 4
.L8002F9FC:
/* 7E9AC 8002F9FC 3C028008 */  lui        $v0, %hi(D_80084500)
/* 7E9B0 8002FA00 90424500 */  lbu        $v0, %lo(D_80084500)($v0)
/* 7E9B4 8002FA04 26520001 */  addiu      $s2, $s2, 1
/* 7E9B8 8002FA08 0242102A */  slt        $v0, $s2, $v0
/* 7E9BC 8002FA0C 1440FFEB */  bnez       $v0, .L8002F9BC
/* 7E9C0 8002FA10 26100004 */   addiu     $s0, $s0, 4
.L8002FA14:
/* 7E9C4 8002FA14 3C048008 */  lui        $a0, %hi(D_80084502)
/* 7E9C8 8002FA18 24844502 */  addiu      $a0, $a0, %lo(D_80084502)
/* 7E9CC 8002FA1C 80830000 */  lb         $v1, ($a0)
/* 7E9D0 8002FA20 2402FFFF */  addiu      $v0, $zero, -1
/* 7E9D4 8002FA24 10620019 */  beq        $v1, $v0, .L8002FA8C
/* 7E9D8 8002FA28 326200FF */   andi      $v0, $s3, 0xff
/* 7E9DC 8002FA2C 327400FF */  andi       $s4, $s3, 0xff
/* 7E9E0 8002FA30 24900072 */  addiu      $s0, $a0, 0x72
/* 7E9E4 8002FA34 2491006A */  addiu      $s1, $a0, 0x6a
/* 7E9E8 8002FA38 2492007A */  addiu      $s2, $a0, 0x7a
.L8002FA3C:
/* 7E9EC 8002FA3C 12800009 */  beqz       $s4, .L8002FA64
/* 7E9F0 8002FA40 00000000 */   nop
/* 7E9F4 8002FA44 8E240000 */  lw         $a0, ($s1)
/* 7E9F8 8002FA48 0C027AFA */  jal        func_8009EBE8
/* 7E9FC 8002FA4C 00000000 */   nop
/* 7EA00 8002FA50 8E040000 */  lw         $a0, ($s0)
/* 7EA04 8002FA54 0C027D3A */  jal        func_8009F4E8
/* 7EA08 8002FA58 26100004 */   addiu     $s0, $s0, 4
/* 7EA0C 8002FA5C 0800BEA0 */  j          .L8002FA80
/* 7EA10 8002FA60 0212102A */   slt       $v0, $s0, $s2
.L8002FA64:
/* 7EA14 8002FA64 8E240000 */  lw         $a0, ($s1)
/* 7EA18 8002FA68 0C027AF5 */  jal        func_8009EBD4
/* 7EA1C 8002FA6C 00000000 */   nop
/* 7EA20 8002FA70 8E040000 */  lw         $a0, ($s0)
/* 7EA24 8002FA74 0C027D35 */  jal        func_8009F4D4
/* 7EA28 8002FA78 26100004 */   addiu     $s0, $s0, 4
/* 7EA2C 8002FA7C 0212102A */  slt        $v0, $s0, $s2
.L8002FA80:
/* 7EA30 8002FA80 1440FFEE */  bnez       $v0, .L8002FA3C
/* 7EA34 8002FA84 26310004 */   addiu     $s1, $s1, 4
/* 7EA38 8002FA88 326200FF */  andi       $v0, $s3, 0xff
.L8002FA8C:
/* 7EA3C 8002FA8C 3C018008 */  lui        $at, %hi(D_80080744)
/* 7EA40 8002FA90 AC220744 */  sw         $v0, %lo(D_80080744)($at)
/* 7EA44 8002FA94 8FBF002C */  lw         $ra, 0x2c($sp)
/* 7EA48 8002FA98 8FB40028 */  lw         $s4, 0x28($sp)
/* 7EA4C 8002FA9C 8FB30024 */  lw         $s3, 0x24($sp)
/* 7EA50 8002FAA0 8FB20020 */  lw         $s2, 0x20($sp)
/* 7EA54 8002FAA4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7EA58 8002FAA8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7EA5C 8002FAAC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7EA60 8002FAB0 03E00008 */  jr         $ra
/* 7EA64 8002FAB4 00000000 */   nop

glabel func_8002FAB8_7EA68
/* 7EA68 8002FAB8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7EA6C 8002FABC 3C038008 */  lui        $v1, %hi(D_80084500)
/* 7EA70 8002FAC0 24634500 */  addiu      $v1, $v1, %lo(D_80084500)
/* 7EA74 8002FAC4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 7EA78 8002FAC8 AFB5002C */  sw         $s5, 0x2c($sp)
/* 7EA7C 8002FACC AFB40028 */  sw         $s4, 0x28($sp)
/* 7EA80 8002FAD0 AFB30024 */  sw         $s3, 0x24($sp)
/* 7EA84 8002FAD4 AFB20020 */  sw         $s2, 0x20($sp)
/* 7EA88 8002FAD8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 7EA8C 8002FADC AFB00018 */  sw         $s0, 0x18($sp)
/* 7EA90 8002FAE0 90620000 */  lbu        $v0, ($v1)
/* 7EA94 8002FAE4 0080A821 */  addu       $s5, $a0, $zero
/* 7EA98 8002FAE8 18400011 */  blez       $v0, .L8002FB30
/* 7EA9C 8002FAEC 00008021 */   addu      $s0, $zero, $zero
/* 7EAA0 8002FAF0 32B300FF */  andi       $s3, $s5, 0xff
/* 7EAA4 8002FAF4 2472FD3C */  addiu      $s2, $v1, -0x2c4
/* 7EAA8 8002FAF8 2474FD1C */  addiu      $s4, $v1, -0x2e4
/* 7EAAC 8002FAFC 02808821 */  addu       $s1, $s4, $zero
.L8002FB00:
/* 7EAB0 8002FB00 8E240000 */  lw         $a0, ($s1)
/* 7EAB4 8002FB04 0C027B09 */  jal        func_8009EC24
/* 7EAB8 8002FB08 02602821 */   addu      $a1, $s3, $zero
/* 7EABC 8002FB0C 8E440000 */  lw         $a0, ($s2)
/* 7EAC0 8002FB10 26310004 */  addiu      $s1, $s1, 4
/* 7EAC4 8002FB14 0C027D49 */  jal        func_8009F524
/* 7EAC8 8002FB18 02602821 */   addu      $a1, $s3, $zero
/* 7EACC 8002FB1C 928202E4 */  lbu        $v0, 0x2e4($s4)
/* 7EAD0 8002FB20 26100001 */  addiu      $s0, $s0, 1
/* 7EAD4 8002FB24 0202102A */  slt        $v0, $s0, $v0
/* 7EAD8 8002FB28 1440FFF5 */  bnez       $v0, .L8002FB00
/* 7EADC 8002FB2C 26520004 */   addiu     $s2, $s2, 4
.L8002FB30:
/* 7EAE0 8002FB30 3C048008 */  lui        $a0, %hi(D_80084502)
/* 7EAE4 8002FB34 24844502 */  addiu      $a0, $a0, %lo(D_80084502)
/* 7EAE8 8002FB38 80830000 */  lb         $v1, ($a0)
/* 7EAEC 8002FB3C 2402FFFF */  addiu      $v0, $zero, -1
/* 7EAF0 8002FB40 10620010 */  beq        $v1, $v0, .L8002FB84
/* 7EAF4 8002FB44 00008021 */   addu      $s0, $zero, $zero
/* 7EAF8 8002FB48 32B300FF */  andi       $s3, $s5, 0xff
/* 7EAFC 8002FB4C 24920072 */  addiu      $s2, $a0, 0x72
/* 7EB00 8002FB50 2491006A */  addiu      $s1, $a0, 0x6a
.L8002FB54:
/* 7EB04 8002FB54 8E240000 */  lw         $a0, ($s1)
/* 7EB08 8002FB58 02602821 */  addu       $a1, $s3, $zero
/* 7EB0C 8002FB5C 26310004 */  addiu      $s1, $s1, 4
/* 7EB10 8002FB60 0C027B09 */  jal        func_8009EC24
/* 7EB14 8002FB64 26100001 */   addiu     $s0, $s0, 1
/* 7EB18 8002FB68 8E440000 */  lw         $a0, ($s2)
/* 7EB1C 8002FB6C 02602821 */  addu       $a1, $s3, $zero
/* 7EB20 8002FB70 0C027D49 */  jal        func_8009F524
/* 7EB24 8002FB74 26520004 */   addiu     $s2, $s2, 4
/* 7EB28 8002FB78 2A020002 */  slti       $v0, $s0, 2
/* 7EB2C 8002FB7C 1440FFF5 */  bnez       $v0, .L8002FB54
/* 7EB30 8002FB80 00000000 */   nop
.L8002FB84:
/* 7EB34 8002FB84 8FBF0030 */  lw         $ra, 0x30($sp)
/* 7EB38 8002FB88 8FB5002C */  lw         $s5, 0x2c($sp)
/* 7EB3C 8002FB8C 8FB40028 */  lw         $s4, 0x28($sp)
/* 7EB40 8002FB90 8FB30024 */  lw         $s3, 0x24($sp)
/* 7EB44 8002FB94 8FB20020 */  lw         $s2, 0x20($sp)
/* 7EB48 8002FB98 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7EB4C 8002FB9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7EB50 8002FBA0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7EB54 8002FBA4 03E00008 */  jr         $ra
/* 7EB58 8002FBA8 00000000 */   nop

glabel func_8002FBAC_7EB5C
/* 7EB5C 8002FBAC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7EB60 8002FBB0 3C038008 */  lui        $v1, %hi(D_80084500)
/* 7EB64 8002FBB4 24634500 */  addiu      $v1, $v1, %lo(D_80084500)
/* 7EB68 8002FBB8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 7EB6C 8002FBBC AFB5002C */  sw         $s5, 0x2c($sp)
/* 7EB70 8002FBC0 AFB40028 */  sw         $s4, 0x28($sp)
/* 7EB74 8002FBC4 AFB30024 */  sw         $s3, 0x24($sp)
/* 7EB78 8002FBC8 AFB20020 */  sw         $s2, 0x20($sp)
/* 7EB7C 8002FBCC AFB1001C */  sw         $s1, 0x1c($sp)
/* 7EB80 8002FBD0 AFB00018 */  sw         $s0, 0x18($sp)
/* 7EB84 8002FBD4 90620000 */  lbu        $v0, ($v1)
/* 7EB88 8002FBD8 00008021 */  addu       $s0, $zero, $zero
/* 7EB8C 8002FBDC 18400012 */  blez       $v0, .L8002FC28
/* 7EB90 8002FBE0 0080A821 */   addu      $s5, $a0, $zero
/* 7EB94 8002FBE4 00041400 */  sll        $v0, $a0, 0x10
/* 7EB98 8002FBE8 00029C03 */  sra        $s3, $v0, 0x10
/* 7EB9C 8002FBEC 2472FD3C */  addiu      $s2, $v1, -0x2c4
/* 7EBA0 8002FBF0 2474FD1C */  addiu      $s4, $v1, -0x2e4
/* 7EBA4 8002FBF4 02808821 */  addu       $s1, $s4, $zero
.L8002FBF8:
/* 7EBA8 8002FBF8 8E240000 */  lw         $a0, ($s1)
/* 7EBAC 8002FBFC 0C027962 */  jal        func_8009E588
/* 7EBB0 8002FC00 02602821 */   addu      $a1, $s3, $zero
/* 7EBB4 8002FC04 8E440000 */  lw         $a0, ($s2)
/* 7EBB8 8002FC08 26310004 */  addiu      $s1, $s1, 4
/* 7EBBC 8002FC0C 0C027C64 */  jal        func_8009F190
/* 7EBC0 8002FC10 02602821 */   addu      $a1, $s3, $zero
/* 7EBC4 8002FC14 928202E4 */  lbu        $v0, 0x2e4($s4)
/* 7EBC8 8002FC18 26100001 */  addiu      $s0, $s0, 1
/* 7EBCC 8002FC1C 0202102A */  slt        $v0, $s0, $v0
/* 7EBD0 8002FC20 1440FFF5 */  bnez       $v0, .L8002FBF8
/* 7EBD4 8002FC24 26520004 */   addiu     $s2, $s2, 4
.L8002FC28:
/* 7EBD8 8002FC28 3C048008 */  lui        $a0, %hi(D_80084502)
/* 7EBDC 8002FC2C 24844502 */  addiu      $a0, $a0, %lo(D_80084502)
/* 7EBE0 8002FC30 80830000 */  lb         $v1, ($a0)
/* 7EBE4 8002FC34 2402FFFF */  addiu      $v0, $zero, -1
/* 7EBE8 8002FC38 10620011 */  beq        $v1, $v0, .L8002FC80
/* 7EBEC 8002FC3C 00008021 */   addu      $s0, $zero, $zero
/* 7EBF0 8002FC40 00151400 */  sll        $v0, $s5, 0x10
/* 7EBF4 8002FC44 00029C03 */  sra        $s3, $v0, 0x10
/* 7EBF8 8002FC48 24920072 */  addiu      $s2, $a0, 0x72
/* 7EBFC 8002FC4C 2491006A */  addiu      $s1, $a0, 0x6a
.L8002FC50:
/* 7EC00 8002FC50 8E240000 */  lw         $a0, ($s1)
/* 7EC04 8002FC54 02602821 */  addu       $a1, $s3, $zero
/* 7EC08 8002FC58 26310004 */  addiu      $s1, $s1, 4
/* 7EC0C 8002FC5C 0C027962 */  jal        func_8009E588
/* 7EC10 8002FC60 26100001 */   addiu     $s0, $s0, 1
/* 7EC14 8002FC64 8E440000 */  lw         $a0, ($s2)
/* 7EC18 8002FC68 02602821 */  addu       $a1, $s3, $zero
/* 7EC1C 8002FC6C 0C027C64 */  jal        func_8009F190
/* 7EC20 8002FC70 26520004 */   addiu     $s2, $s2, 4
/* 7EC24 8002FC74 2A020002 */  slti       $v0, $s0, 2
/* 7EC28 8002FC78 1440FFF5 */  bnez       $v0, .L8002FC50
/* 7EC2C 8002FC7C 00000000 */   nop
.L8002FC80:
/* 7EC30 8002FC80 8FBF0030 */  lw         $ra, 0x30($sp)
/* 7EC34 8002FC84 8FB5002C */  lw         $s5, 0x2c($sp)
/* 7EC38 8002FC88 8FB40028 */  lw         $s4, 0x28($sp)
/* 7EC3C 8002FC8C 8FB30024 */  lw         $s3, 0x24($sp)
/* 7EC40 8002FC90 8FB20020 */  lw         $s2, 0x20($sp)
/* 7EC44 8002FC94 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7EC48 8002FC98 8FB00018 */  lw         $s0, 0x18($sp)
/* 7EC4C 8002FC9C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7EC50 8002FCA0 03E00008 */  jr         $ra
/* 7EC54 8002FCA4 00000000 */   nop

glabel func_8002FCA8_7EC58
/* 7EC58 8002FCA8 24020001 */  addiu      $v0, $zero, 1
/* 7EC5C 8002FCAC 3C018008 */  lui        $at, %hi(D_80084610)
/* 7EC60 8002FCB0 AC224610 */  sw         $v0, %lo(D_80084610)($at)
/* 7EC64 8002FCB4 3C018008 */  lui        $at, %hi(D_80083A24)
/* 7EC68 8002FCB8 AC243A24 */  sw         $a0, %lo(D_80083A24)($at)
/* 7EC6C 8002FCBC 03E00008 */  jr         $ra
/* 7EC70 8002FCC0 00000000 */   nop

glabel func_8002FCC4_7EC74
/* 7EC74 8002FCC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7EC78 8002FCC8 3C068008 */  lui        $a2, %hi(D_80084501)
/* 7EC7C 8002FCCC 24C64501 */  addiu      $a2, $a2, %lo(D_80084501)
/* 7EC80 8002FCD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7EC84 8002FCD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 7EC88 8002FCD8 80C50000 */  lb         $a1, ($a2)
/* 7EC8C 8002FCDC 2402FFFF */  addiu      $v0, $zero, -1
/* 7EC90 8002FCE0 10A2002D */  beq        $a1, $v0, .L8002FD98
/* 7EC94 8002FCE4 308300FF */   andi      $v1, $a0, 0xff
/* 7EC98 8002FCE8 24020001 */  addiu      $v0, $zero, 1
/* 7EC9C 8002FCEC 14620015 */  bne        $v1, $v0, .L8002FD44
/* 7ECA0 8002FCF0 308200FF */   andi      $v0, $a0, 0xff
/* 7ECA4 8002FCF4 3C028008 */  lui        $v0, %hi(D_8008450C)
/* 7ECA8 8002FCF8 9042450C */  lbu        $v0, %lo(D_8008450C)($v0)
/* 7ECAC 8002FCFC 14400011 */  bnez       $v0, .L8002FD44
/* 7ECB0 8002FD00 308200FF */   andi      $v0, $a0, 0xff
/* 7ECB4 8002FD04 00051080 */  sll        $v0, $a1, 2
/* 7ECB8 8002FD08 00C21021 */  addu       $v0, $a2, $v0
/* 7ECBC 8002FD0C 8C44FCFB */  lw         $a0, -0x305($v0)
/* 7ECC0 8002FD10 3C068008 */  lui        $a2, %hi(D_80084508)
/* 7ECC4 8002FD14 8CC64508 */  lw         $a2, %lo(D_80084508)($a2)
/* 7ECC8 8002FD18 3C058008 */  lui        $a1, %hi(D_8007DA78_CCA28)
/* 7ECCC 8002FD1C 24A5DA78 */  addiu      $a1, $a1, %lo(D_8007DA78_CCA28)
/* 7ECD0 8002FD20 3C078008 */  lui        $a3, %hi(D_8007DA80_CCA30)
/* 7ECD4 8002FD24 24E7DA80 */  addiu      $a3, $a3, %lo(D_8007DA80_CCA30)
/* 7ECD8 8002FD28 0C02864D */  jal        func_800A1934
/* 7ECDC 8002FD2C 00000000 */   nop
/* 7ECE0 8002FD30 24020001 */  addiu      $v0, $zero, 1
/* 7ECE4 8002FD34 3C018008 */  lui        $at, %hi(D_8008450C)
/* 7ECE8 8002FD38 A022450C */  sb         $v0, %lo(D_8008450C)($at)
/* 7ECEC 8002FD3C 0800BF66 */  j          .L8002FD98
/* 7ECF0 8002FD40 00000000 */   nop
.L8002FD44:
/* 7ECF4 8002FD44 14400014 */  bnez       $v0, .L8002FD98
/* 7ECF8 8002FD48 24020001 */   addiu     $v0, $zero, 1
/* 7ECFC 8002FD4C 3C108008 */  lui        $s0, %hi(D_8008450C)
/* 7ED00 8002FD50 2610450C */  addiu      $s0, $s0, %lo(D_8008450C)
/* 7ED04 8002FD54 92030000 */  lbu        $v1, ($s0)
/* 7ED08 8002FD58 1462000F */  bne        $v1, $v0, .L8002FD98
/* 7ED0C 8002FD5C 00000000 */   nop
/* 7ED10 8002FD60 3C028008 */  lui        $v0, %hi(D_80084501)
/* 7ED14 8002FD64 80424501 */  lb         $v0, %lo(D_80084501)($v0)
/* 7ED18 8002FD68 3C068008 */  lui        $a2, %hi(D_80084508)
/* 7ED1C 8002FD6C 8CC64508 */  lw         $a2, %lo(D_80084508)($a2)
/* 7ED20 8002FD70 00021080 */  sll        $v0, $v0, 2
/* 7ED24 8002FD74 02021021 */  addu       $v0, $s0, $v0
/* 7ED28 8002FD78 8C44FCF0 */  lw         $a0, -0x310($v0)
/* 7ED2C 8002FD7C 3C058008 */  lui        $a1, %hi(D_8007DA78_CCA28)
/* 7ED30 8002FD80 24A5DA78 */  addiu      $a1, $a1, %lo(D_8007DA78_CCA28)
/* 7ED34 8002FD84 3C078008 */  lui        $a3, %hi(D_8007DA80_CCA30)
/* 7ED38 8002FD88 24E7DA80 */  addiu      $a3, $a3, %lo(D_8007DA80_CCA30)
/* 7ED3C 8002FD8C 0C02864D */  jal        func_800A1934
/* 7ED40 8002FD90 00000000 */   nop
/* 7ED44 8002FD94 A2000000 */  sb         $zero, ($s0)
.L8002FD98:
/* 7ED48 8002FD98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7ED4C 8002FD9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7ED50 8002FDA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7ED54 8002FDA4 03E00008 */  jr         $ra
/* 7ED58 8002FDA8 00000000 */   nop

glabel func_8002FDAC_7ED5C
/* 7ED5C 8002FDAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7ED60 8002FDB0 AFB10014 */  sw         $s1, 0x14($sp)
/* 7ED64 8002FDB4 3C118008 */  lui        $s1, %hi(D_80084501)
/* 7ED68 8002FDB8 26314501 */  addiu      $s1, $s1, %lo(D_80084501)
/* 7ED6C 8002FDBC AFBF0018 */  sw         $ra, 0x18($sp)
/* 7ED70 8002FDC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 7ED74 8002FDC4 82250000 */  lb         $a1, ($s1)
/* 7ED78 8002FDC8 2403FFFF */  addiu      $v1, $zero, -1
/* 7ED7C 8002FDCC 10A3003D */  beq        $a1, $v1, .L8002FEC4
/* 7ED80 8002FDD0 00041600 */   sll       $v0, $a0, 0x18
/* 7ED84 8002FDD4 00021603 */  sra        $v0, $v0, 0x18
/* 7ED88 8002FDD8 1043001F */  beq        $v0, $v1, .L8002FE58
/* 7ED8C 8002FDDC 24020001 */   addiu     $v0, $zero, 1
/* 7ED90 8002FDE0 3C028008 */  lui        $v0, %hi(D_80084518)
/* 7ED94 8002FDE4 90424518 */  lbu        $v0, %lo(D_80084518)($v0)
/* 7ED98 8002FDE8 14400036 */  bnez       $v0, .L8002FEC4
/* 7ED9C 8002FDEC 2630FCFB */   addiu     $s0, $s1, -0x305
/* 7EDA0 8002FDF0 00051080 */  sll        $v0, $a1, 2
/* 7EDA4 8002FDF4 00501021 */  addu       $v0, $v0, $s0
/* 7EDA8 8002FDF8 8C440000 */  lw         $a0, ($v0)
/* 7EDAC 8002FDFC 3C068008 */  lui        $a2, %hi(D_80084510)
/* 7EDB0 8002FE00 8CC64510 */  lw         $a2, %lo(D_80084510)($a2)
/* 7EDB4 8002FE04 3C058008 */  lui        $a1, %hi(D_8007DA48_CC9F8)
/* 7EDB8 8002FE08 24A5DA48 */  addiu      $a1, $a1, %lo(D_8007DA48_CC9F8)
/* 7EDBC 8002FE0C 0C02864D */  jal        func_800A1934
/* 7EDC0 8002FE10 00A03821 */   addu      $a3, $a1, $zero
/* 7EDC4 8002FE14 82220000 */  lb         $v0, ($s1)
/* 7EDC8 8002FE18 3C068008 */  lui        $a2, %hi(D_80084514)
/* 7EDCC 8002FE1C 8CC64514 */  lw         $a2, %lo(D_80084514)($a2)
/* 7EDD0 8002FE20 00021080 */  sll        $v0, $v0, 2
/* 7EDD4 8002FE24 00501021 */  addu       $v0, $v0, $s0
/* 7EDD8 8002FE28 8C440000 */  lw         $a0, ($v0)
/* 7EDDC 8002FE2C 3C058008 */  lui        $a1, %hi(D_8007DA70_CCA20)
/* 7EDE0 8002FE30 24A5DA70 */  addiu      $a1, $a1, %lo(D_8007DA70_CCA20)
/* 7EDE4 8002FE34 3C078008 */  lui        $a3, %hi(D_8007DA88_CCA38)
/* 7EDE8 8002FE38 24E7DA88 */  addiu      $a3, $a3, %lo(D_8007DA88_CCA38)
/* 7EDEC 8002FE3C 0C02864D */  jal        func_800A1934
/* 7EDF0 8002FE40 00000000 */   nop
/* 7EDF4 8002FE44 24020001 */  addiu      $v0, $zero, 1
/* 7EDF8 8002FE48 3C018008 */  lui        $at, %hi(D_80084518)
/* 7EDFC 8002FE4C A0224518 */  sb         $v0, %lo(D_80084518)($at)
/* 7EE00 8002FE50 0800BFB1 */  j          .L8002FEC4
/* 7EE04 8002FE54 00000000 */   nop
.L8002FE58:
/* 7EE08 8002FE58 3C038008 */  lui        $v1, %hi(D_80084518)
/* 7EE0C 8002FE5C 90634518 */  lbu        $v1, %lo(D_80084518)($v1)
/* 7EE10 8002FE60 14620018 */  bne        $v1, $v0, .L8002FEC4
/* 7EE14 8002FE64 2630FCFB */   addiu     $s0, $s1, -0x305
/* 7EE18 8002FE68 00051080 */  sll        $v0, $a1, 2
/* 7EE1C 8002FE6C 00501021 */  addu       $v0, $v0, $s0
/* 7EE20 8002FE70 8C440000 */  lw         $a0, ($v0)
/* 7EE24 8002FE74 3C068008 */  lui        $a2, %hi(D_80084510)
/* 7EE28 8002FE78 8CC64510 */  lw         $a2, %lo(D_80084510)($a2)
/* 7EE2C 8002FE7C 3C058008 */  lui        $a1, %hi(D_8007DA48_CC9F8)
/* 7EE30 8002FE80 24A5DA48 */  addiu      $a1, $a1, %lo(D_8007DA48_CC9F8)
/* 7EE34 8002FE84 0C02864D */  jal        func_800A1934
/* 7EE38 8002FE88 00A03821 */   addu      $a3, $a1, $zero
/* 7EE3C 8002FE8C 82220000 */  lb         $v0, ($s1)
/* 7EE40 8002FE90 3C068008 */  lui        $a2, %hi(D_80084514)
/* 7EE44 8002FE94 8CC64514 */  lw         $a2, %lo(D_80084514)($a2)
/* 7EE48 8002FE98 00021080 */  sll        $v0, $v0, 2
/* 7EE4C 8002FE9C 00501021 */  addu       $v0, $v0, $s0
/* 7EE50 8002FEA0 8C440000 */  lw         $a0, ($v0)
/* 7EE54 8002FEA4 3C058008 */  lui        $a1, %hi(D_8007DA70_CCA20)
/* 7EE58 8002FEA8 24A5DA70 */  addiu      $a1, $a1, %lo(D_8007DA70_CCA20)
/* 7EE5C 8002FEAC 3C078008 */  lui        $a3, %hi(D_8007DA88_CCA38)
/* 7EE60 8002FEB0 24E7DA88 */  addiu      $a3, $a3, %lo(D_8007DA88_CCA38)
/* 7EE64 8002FEB4 0C02864D */  jal        func_800A1934
/* 7EE68 8002FEB8 00000000 */   nop
/* 7EE6C 8002FEBC 3C018008 */  lui        $at, %hi(D_80084518)
/* 7EE70 8002FEC0 A0204518 */  sb         $zero, %lo(D_80084518)($at)
.L8002FEC4:
/* 7EE74 8002FEC4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7EE78 8002FEC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 7EE7C 8002FECC 8FB00010 */  lw         $s0, 0x10($sp)
/* 7EE80 8002FED0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7EE84 8002FED4 03E00008 */  jr         $ra
/* 7EE88 8002FED8 00000000 */   nop

glabel func_8002FEDC_7EE8C
/* 7EE8C 8002FEDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7EE90 8002FEE0 AFB20018 */  sw         $s2, 0x18($sp)
/* 7EE94 8002FEE4 3C128008 */  lui        $s2, %hi(D_80084502)
/* 7EE98 8002FEE8 26524502 */  addiu      $s2, $s2, %lo(D_80084502)
/* 7EE9C 8002FEEC AFBF001C */  sw         $ra, 0x1c($sp)
/* 7EEA0 8002FEF0 AFB10014 */  sw         $s1, 0x14($sp)
/* 7EEA4 8002FEF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 7EEA8 8002FEF8 82450000 */  lb         $a1, ($s2)
/* 7EEAC 8002FEFC 2402FFFF */  addiu      $v0, $zero, -1
/* 7EEB0 8002FF00 10A20043 */  beq        $a1, $v0, .L80030010
/* 7EEB4 8002FF04 308300FF */   andi      $v1, $a0, 0xff
/* 7EEB8 8002FF08 24020001 */  addiu      $v0, $zero, 1
/* 7EEBC 8002FF0C 14620020 */  bne        $v1, $v0, .L8002FF90
/* 7EEC0 8002FF10 308200FF */   andi      $v0, $a0, 0xff
/* 7EEC4 8002FF14 3C028008 */  lui        $v0, %hi(D_8008457C)
/* 7EEC8 8002FF18 9042457C */  lbu        $v0, %lo(D_8008457C)($v0)
/* 7EECC 8002FF1C 1440001C */  bnez       $v0, .L8002FF90
/* 7EED0 8002FF20 308200FF */   andi      $v0, $a0, 0xff
/* 7EED4 8002FF24 2651FCFA */  addiu      $s1, $s2, -0x306
/* 7EED8 8002FF28 00051080 */  sll        $v0, $a1, 2
/* 7EEDC 8002FF2C 00511021 */  addu       $v0, $v0, $s1
/* 7EEE0 8002FF30 8C440000 */  lw         $a0, ($v0)
/* 7EEE4 8002FF34 3C058008 */  lui        $a1, %hi(D_8007DA40_CC9F0)
/* 7EEE8 8002FF38 24A5DA40 */  addiu      $a1, $a1, %lo(D_8007DA40_CC9F0)
/* 7EEEC 8002FF3C 3C068008 */  lui        $a2, %hi(D_80084564)
/* 7EEF0 8002FF40 8CC64564 */  lw         $a2, %lo(D_80084564)($a2)
/* 7EEF4 8002FF44 3C108008 */  lui        $s0, %hi(D_8007DA90_CCA40)
/* 7EEF8 8002FF48 2610DA90 */  addiu      $s0, $s0, %lo(D_8007DA90_CCA40)
/* 7EEFC 8002FF4C 0C02864D */  jal        func_800A1934
/* 7EF00 8002FF50 02003821 */   addu      $a3, $s0, $zero
/* 7EF04 8002FF54 82420000 */  lb         $v0, ($s2)
/* 7EF08 8002FF58 3C068008 */  lui        $a2, %hi(D_80084568)
/* 7EF0C 8002FF5C 8CC64568 */  lw         $a2, %lo(D_80084568)($a2)
/* 7EF10 8002FF60 00021080 */  sll        $v0, $v0, 2
/* 7EF14 8002FF64 00511021 */  addu       $v0, $v0, $s1
/* 7EF18 8002FF68 8C440000 */  lw         $a0, ($v0)
/* 7EF1C 8002FF6C 3C058008 */  lui        $a1, %hi(D_8007DA48_CC9F8)
/* 7EF20 8002FF70 24A5DA48 */  addiu      $a1, $a1, %lo(D_8007DA48_CC9F8)
/* 7EF24 8002FF74 0C02864D */  jal        func_800A1934
/* 7EF28 8002FF78 02003821 */   addu      $a3, $s0, $zero
/* 7EF2C 8002FF7C 24020001 */  addiu      $v0, $zero, 1
/* 7EF30 8002FF80 3C018008 */  lui        $at, %hi(D_8008457C)
/* 7EF34 8002FF84 A022457C */  sb         $v0, %lo(D_8008457C)($at)
/* 7EF38 8002FF88 0800C004 */  j          .L80030010
/* 7EF3C 8002FF8C 00000000 */   nop
.L8002FF90:
/* 7EF40 8002FF90 1440001F */  bnez       $v0, .L80030010
/* 7EF44 8002FF94 24020001 */   addiu     $v0, $zero, 1
/* 7EF48 8002FF98 3C128008 */  lui        $s2, %hi(D_8008457C)
/* 7EF4C 8002FF9C 2652457C */  addiu      $s2, $s2, %lo(D_8008457C)
/* 7EF50 8002FFA0 92430000 */  lbu        $v1, ($s2)
/* 7EF54 8002FFA4 1462001A */  bne        $v1, $v0, .L80030010
/* 7EF58 8002FFA8 2651FC80 */   addiu     $s1, $s2, -0x380
/* 7EF5C 8002FFAC 3C058008 */  lui        $a1, %hi(D_8007DA40_CC9F0)
/* 7EF60 8002FFB0 24A5DA40 */  addiu      $a1, $a1, %lo(D_8007DA40_CC9F0)
/* 7EF64 8002FFB4 3C028008 */  lui        $v0, %hi(D_80084502)
/* 7EF68 8002FFB8 80424502 */  lb         $v0, %lo(D_80084502)($v0)
/* 7EF6C 8002FFBC 3C068008 */  lui        $a2, %hi(D_80084564)
/* 7EF70 8002FFC0 8CC64564 */  lw         $a2, %lo(D_80084564)($a2)
/* 7EF74 8002FFC4 00021080 */  sll        $v0, $v0, 2
/* 7EF78 8002FFC8 00511021 */  addu       $v0, $v0, $s1
/* 7EF7C 8002FFCC 8C440000 */  lw         $a0, ($v0)
/* 7EF80 8002FFD0 3C108008 */  lui        $s0, %hi(D_8007DA90_CCA40)
/* 7EF84 8002FFD4 2610DA90 */  addiu      $s0, $s0, %lo(D_8007DA90_CCA40)
/* 7EF88 8002FFD8 0C02864D */  jal        func_800A1934
/* 7EF8C 8002FFDC 02003821 */   addu      $a3, $s0, $zero
/* 7EF90 8002FFE0 3C028008 */  lui        $v0, %hi(D_80084502)
/* 7EF94 8002FFE4 80424502 */  lb         $v0, %lo(D_80084502)($v0)
/* 7EF98 8002FFE8 3C068008 */  lui        $a2, %hi(D_80084568)
/* 7EF9C 8002FFEC 8CC64568 */  lw         $a2, %lo(D_80084568)($a2)
/* 7EFA0 8002FFF0 00021080 */  sll        $v0, $v0, 2
/* 7EFA4 8002FFF4 00511021 */  addu       $v0, $v0, $s1
/* 7EFA8 8002FFF8 8C440000 */  lw         $a0, ($v0)
/* 7EFAC 8002FFFC 3C058008 */  lui        $a1, %hi(D_8007DA48_CC9F8)
/* 7EFB0 80030000 24A5DA48 */  addiu      $a1, $a1, %lo(D_8007DA48_CC9F8)
/* 7EFB4 80030004 0C02864D */  jal        func_800A1934
/* 7EFB8 80030008 02003821 */   addu      $a3, $s0, $zero
/* 7EFBC 8003000C A2400000 */  sb         $zero, ($s2)
.L80030010:
/* 7EFC0 80030010 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7EFC4 80030014 8FB20018 */  lw         $s2, 0x18($sp)
/* 7EFC8 80030018 8FB10014 */  lw         $s1, 0x14($sp)
/* 7EFCC 8003001C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7EFD0 80030020 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7EFD4 80030024 03E00008 */  jr         $ra
/* 7EFD8 80030028 00000000 */   nop
/* 7EFDC 8003002C 00000000 */  nop
