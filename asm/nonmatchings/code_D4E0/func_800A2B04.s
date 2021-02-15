.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A2B04
/* D704 800A2B04 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* D708 800A2B08 AFB00030 */  sw         $s0, 0x30($sp)
/* D70C 800A2B0C 2410FFFF */  addiu      $s0, $zero, -1
/* D710 800A2B10 AFB20038 */  sw         $s2, 0x38($sp)
/* D714 800A2B14 2412FFFF */  addiu      $s2, $zero, -1
/* D718 800A2B18 24020001 */  addiu      $v0, $zero, 1
/* D71C 800A2B1C AFBF003C */  sw         $ra, 0x3c($sp)
/* D720 800A2B20 10820008 */  beq        $a0, $v0, .L800A2B44
/* D724 800A2B24 AFB10034 */   sw        $s1, 0x34($sp)
/* D728 800A2B28 28820002 */  slti       $v0, $a0, 2
/* D72C 800A2B2C 14400011 */  bnez       $v0, .L800A2B74
/* D730 800A2B30 24020002 */   addiu     $v0, $zero, 2
/* D734 800A2B34 10820009 */  beq        $a0, $v0, .L800A2B5C
/* D738 800A2B38 00000000 */   nop
/* D73C 800A2B3C 08028ADD */  j          .L800A2B74
/* D740 800A2B40 00000000 */   nop
.L800A2B44:
/* D744 800A2B44 3C058010 */  lui        $a1, %hi(D_800FFF90)
/* D748 800A2B48 24A5FF90 */  addiu      $a1, $a1, %lo(D_800FFF90)
/* D74C 800A2B4C 3C118010 */  lui        $s1, %hi(D_800FFFE0)
/* D750 800A2B50 8E31FFE0 */  lw         $s1, %lo(D_800FFFE0)($s1)
/* D754 800A2B54 08028AE2 */  j          .L800A2B88
/* D758 800A2B58 3C040050 */   lui       $a0, 0x50
.L800A2B5C:
/* D75C 800A2B5C 3C058010 */  lui        $a1, %hi(D_800FFFE8)
/* D760 800A2B60 24A5FFE8 */  addiu      $a1, $a1, %lo(D_800FFFE8)
/* D764 800A2B64 3C118010 */  lui        $s1, %hi(D_80100010)
/* D768 800A2B68 8E310010 */  lw         $s1, %lo(D_80100010)($s1)
/* D76C 800A2B6C 08028AE2 */  j          .L800A2B88
/* D770 800A2B70 3C040050 */   lui       $a0, 0x50
.L800A2B74:
/* D774 800A2B74 3C058010 */  lui        $a1, %hi(D_800FFDF8)
/* D778 800A2B78 24A5FDF8 */  addiu      $a1, $a1, %lo(D_800FFDF8)
/* D77C 800A2B7C 3C118010 */  lui        $s1, %hi(D_800FFF88)
/* D780 800A2B80 8E31FF88 */  lw         $s1, %lo(D_800FFF88)($s1)
/* D784 800A2B84 3C040050 */  lui        $a0, 0x50
.L800A2B88:
/* D788 800A2B88 348403C0 */  ori        $a0, $a0, 0x3c0
/* D78C 800A2B8C 3C038015 */  lui        $v1, %hi(D_80149F94)
/* D790 800A2B90 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* D794 800A2B94 3C06801B */  lui        $a2, 0x801b
/* D798 800A2B98 34C6E000 */  ori        $a2, $a2, 0xe000
/* D79C 800A2B9C 24620008 */  addiu      $v0, $v1, 8
/* D7A0 800A2BA0 3C018015 */  lui        $at, %hi(D_80149F94)
/* D7A4 800A2BA4 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D7A8 800A2BA8 3C02DE00 */  lui        $v0, 0xde00
/* D7AC 800A2BAC AC620000 */  sw         $v0, ($v1)
/* D7B0 800A2BB0 3C02800D */  lui        $v0, %hi(D_800D3E00)
/* D7B4 800A2BB4 24423E00 */  addiu      $v0, $v0, %lo(D_800D3E00)
/* D7B8 800A2BB8 AC620004 */  sw         $v0, 4($v1)
/* D7BC 800A2BBC 24620010 */  addiu      $v0, $v1, 0x10
/* D7C0 800A2BC0 3C018015 */  lui        $at, %hi(D_80149F94)
/* D7C4 800A2BC4 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D7C8 800A2BC8 3C02ED00 */  lui        $v0, 0xed00
/* D7CC 800A2BCC AC620008 */  sw         $v0, 8($v1)
/* D7D0 800A2BD0 24620018 */  addiu      $v0, $v1, 0x18
/* D7D4 800A2BD4 3C018015 */  lui        $at, %hi(D_80149F94)
/* D7D8 800A2BD8 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D7DC 800A2BDC 3C02FA00 */  lui        $v0, 0xfa00
/* D7E0 800A2BE0 AC620010 */  sw         $v0, 0x10($v1)
/* D7E4 800A2BE4 2402FFFF */  addiu      $v0, $zero, -1
/* D7E8 800A2BE8 AC64000C */  sw         $a0, 0xc($v1)
/* D7EC 800A2BEC 02202021 */  addu       $a0, $s1, $zero
/* D7F0 800A2BF0 0C028A83 */  jal        func_800A2A0C
/* D7F4 800A2BF4 AC620014 */   sw        $v0, 0x14($v1)
/* D7F8 800A2BF8 1A2001B1 */  blez       $s1, .L800A32C0
/* D7FC 800A2BFC 00005021 */   addu      $t2, $zero, $zero
/* D800 800A2C00 3C0FE700 */  lui        $t7, 0xe700
/* D804 800A2C04 3C08E200 */  lui        $t0, 0xe200
/* D808 800A2C08 3508001C */  ori        $t0, $t0, 0x1c
/* D80C 800A2C0C 3C0DFCFF */  lui        $t5, 0xfcff
/* D810 800A2C10 35ADFFFF */  ori        $t5, $t5, 0xffff
/* D814 800A2C14 3C0CFFFC */  lui        $t4, 0xfffc
/* D818 800A2C18 358CF279 */  ori        $t4, $t4, 0xf279
/* D81C 800A2C1C 3C090500 */  lui        $t1, 0x500
/* D820 800A2C20 35290017 */  ori        $t1, $t1, 0x17
/* D824 800A2C24 3C0E0600 */  lui        $t6, 0x600
/* D828 800A2C28 35CE002F */  ori        $t6, $t6, 0x2f
/* D82C 800A2C2C 3C014080 */  lui        $at, 0x4080
/* D830 800A2C30 44813000 */  mtc1       $at, $f6
/* D834 800A2C34 00000000 */  nop
/* D838 800A2C38 3C0B801B */  lui        $t3, 0x801b
/* D83C 800A2C3C 356BE000 */  ori        $t3, $t3, 0xe000
.L800A2C40:
/* D840 800A2C40 8D670000 */  lw         $a3, ($t3)
/* D844 800A2C44 90E30020 */  lbu        $v1, 0x20($a3)
/* D848 800A2C48 56030005 */  bnel       $s0, $v1, .L800A2C60
/* D84C 800A2C4C 00608021 */   addu      $s0, $v1, $zero
/* D850 800A2C50 94E2001E */  lhu        $v0, 0x1e($a3)
/* D854 800A2C54 124200DA */  beq        $s2, $v0, .L800A2FC0
/* D858 800A2C58 00000000 */   nop
/* D85C 800A2C5C 00608021 */  addu       $s0, $v1, $zero
.L800A2C60:
/* D860 800A2C60 94F2001E */  lhu        $s2, 0x1e($a3)
/* D864 800A2C64 2E020007 */  sltiu      $v0, $s0, 7
/* D868 800A2C68 104000D5 */  beqz       $v0, .L800A2FC0
/* D86C 800A2C6C 00101080 */   sll       $v0, $s0, 2
/* D870 800A2C70 3C018010 */  lui        $at, %hi(D_800F9DD0)
/* D874 800A2C74 00220821 */  addu       $at, $at, $v0
/* D878 800A2C78 8C229DD0 */  lw         $v0, %lo(D_800F9DD0)($at)
/* D87C 800A2C7C 00400008 */  jr         $v0
/* D880 800A2C80 00000000 */   nop
/* D884 800A2C84 3C038015 */  lui        $v1, %hi(D_80149F94)
/* D888 800A2C88 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* D88C 800A2C8C 3C04E300 */  lui        $a0, 0xe300
/* D890 800A2C90 34840A01 */  ori        $a0, $a0, 0xa01
/* D894 800A2C94 24620008 */  addiu      $v0, $v1, 8
/* D898 800A2C98 3C018015 */  lui        $at, %hi(D_80149F94)
/* D89C 800A2C9C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D8A0 800A2CA0 24620010 */  addiu      $v0, $v1, 0x10
/* D8A4 800A2CA4 3C018015 */  lui        $at, %hi(D_80149F94)
/* D8A8 800A2CA8 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D8AC 800A2CAC 24620018 */  addiu      $v0, $v1, 0x18
/* D8B0 800A2CB0 3C018015 */  lui        $at, %hi(D_80149F94)
/* D8B4 800A2CB4 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D8B8 800A2CB8 24620020 */  addiu      $v0, $v1, 0x20
/* D8BC 800A2CBC 3C018015 */  lui        $at, %hi(D_80149F94)
/* D8C0 800A2CC0 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D8C4 800A2CC4 3C020B00 */  lui        $v0, 0xb00
/* D8C8 800A2CC8 AC620018 */  sw         $v0, 0x18($v1)
/* D8CC 800A2CCC 24620028 */  addiu      $v0, $v1, 0x28
/* D8D0 800A2CD0 3C018015 */  lui        $at, %hi(D_80149F94)
/* D8D4 800A2CD4 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D8D8 800A2CD8 3C020020 */  lui        $v0, 0x20
/* D8DC 800A2CDC AC6F0000 */  sw         $t7, ($v1)
/* D8E0 800A2CE0 AC600004 */  sw         $zero, 4($v1)
/* D8E4 800A2CE4 AC680008 */  sw         $t0, 8($v1)
/* D8E8 800A2CE8 AC60000C */  sw         $zero, 0xc($v1)
/* D8EC 800A2CEC AC6D0010 */  sw         $t5, 0x10($v1)
/* D8F0 800A2CF0 AC6C0014 */  sw         $t4, 0x14($v1)
/* D8F4 800A2CF4 AC60001C */  sw         $zero, 0x1c($v1)
/* D8F8 800A2CF8 AC640020 */  sw         $a0, 0x20($v1)
/* D8FC 800A2CFC 08028BF0 */  j          .L800A2FC0
/* D900 800A2D00 AC620024 */   sw        $v0, 0x24($v1)
/* D904 800A2D04 3C058015 */  lui        $a1, %hi(D_80149F94)
/* D908 800A2D08 8CA59F94 */  lw         $a1, %lo(D_80149F94)($a1)
/* D90C 800A2D0C ACAF0000 */  sw         $t7, ($a1)
/* D910 800A2D10 ACA00004 */  sw         $zero, 4($a1)
/* D914 800A2D14 94E3001E */  lhu        $v1, 0x1e($a3)
/* D918 800A2D18 24A20008 */  addiu      $v0, $a1, 8
/* D91C 800A2D1C 3C018015 */  lui        $at, %hi(D_80149F94)
/* D920 800A2D20 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D924 800A2D24 30630080 */  andi       $v1, $v1, 0x80
/* D928 800A2D28 10600018 */  beqz       $v1, .L800A2D8C
/* D92C 800A2D2C 3C02E200 */   lui       $v0, 0xe200
/* D930 800A2D30 34421D00 */  ori        $v0, $v0, 0x1d00
/* D934 800A2D34 ACA20008 */  sw         $v0, 8($a1)
/* D938 800A2D38 24020004 */  addiu      $v0, $zero, 4
/* D93C 800A2D3C ACA2000C */  sw         $v0, 0xc($a1)
/* D940 800A2D40 3C02EE00 */  lui        $v0, 0xee00
/* D944 800A2D44 ACA20010 */  sw         $v0, 0x10($a1)
/* D948 800A2D48 94E4001C */  lhu        $a0, 0x1c($a3)
/* D94C 800A2D4C 24A20010 */  addiu      $v0, $a1, 0x10
/* D950 800A2D50 3C018015 */  lui        $at, %hi(D_80149F94)
/* D954 800A2D54 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D958 800A2D58 24A20018 */  addiu      $v0, $a1, 0x18
/* D95C 800A2D5C 24030063 */  addiu      $v1, $zero, 0x63
/* D960 800A2D60 3C018015 */  lui        $at, %hi(D_80149F94)
/* D964 800A2D64 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* D968 800A2D68 00641823 */  subu       $v1, $v1, $a0
/* D96C 800A2D6C 00031080 */  sll        $v0, $v1, 2
/* D970 800A2D70 00431021 */  addu       $v0, $v0, $v1
/* D974 800A2D74 000210C0 */  sll        $v0, $v0, 3
/* D978 800A2D78 00431021 */  addu       $v0, $v0, $v1
/* D97C 800A2D7C 000210C0 */  sll        $v0, $v0, 3
/* D980 800A2D80 00431023 */  subu       $v0, $v0, $v1
/* D984 800A2D84 00021400 */  sll        $v0, $v0, 0x10
/* D988 800A2D88 ACA20014 */  sw         $v0, 0x14($a1)
.L800A2D8C:
/* D98C 800A2D8C 94E3001E */  lhu        $v1, 0x1e($a3)
/* D990 800A2D90 30620040 */  andi       $v0, $v1, 0x40
/* D994 800A2D94 1040002E */  beqz       $v0, .L800A2E50
/* D998 800A2D98 30620002 */   andi      $v0, $v1, 2
/* D99C 800A2D9C 10400011 */  beqz       $v0, .L800A2DE4
/* D9A0 800A2DA0 30620080 */   andi      $v0, $v1, 0x80
/* D9A4 800A2DA4 10400005 */  beqz       $v0, .L800A2DBC
/* D9A8 800A2DA8 3C040050 */   lui       $a0, 0x50
/* D9AC 800A2DAC 3C028015 */  lui        $v0, %hi(D_80149F94)
/* D9B0 800A2DB0 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* D9B4 800A2DB4 08028B72 */  j          .L800A2DC8
/* D9B8 800A2DB8 348449D8 */   ori       $a0, $a0, 0x49d8
.L800A2DBC:
/* D9BC 800A2DBC 3C028015 */  lui        $v0, %hi(D_80149F94)
/* D9C0 800A2DC0 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* D9C4 800A2DC4 348441C8 */  ori        $a0, $a0, 0x41c8
.L800A2DC8:
/* D9C8 800A2DC8 24430008 */  addiu      $v1, $v0, 8
/* D9CC 800A2DCC 3C018015 */  lui        $at, %hi(D_80149F94)
/* D9D0 800A2DD0 AC239F94 */  sw         $v1, %lo(D_80149F94)($at)
/* D9D4 800A2DD4 AC480000 */  sw         $t0, ($v0)
/* D9D8 800A2DD8 AC440004 */  sw         $a0, 4($v0)
/* D9DC 800A2DDC 08028B88 */  j          .L800A2E20
/* D9E0 800A2DE0 24060006 */   addiu     $a2, $zero, 6
.L800A2DE4:
/* D9E4 800A2DE4 10400005 */  beqz       $v0, .L800A2DFC
/* D9E8 800A2DE8 3C040050 */   lui       $a0, 0x50
/* D9EC 800A2DEC 3C028015 */  lui        $v0, %hi(D_80149F94)
/* D9F0 800A2DF0 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* D9F4 800A2DF4 08028B82 */  j          .L800A2E08
/* D9F8 800A2DF8 34844A50 */   ori       $a0, $a0, 0x4a50
.L800A2DFC:
/* D9FC 800A2DFC 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DA00 800A2E00 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DA04 800A2E04 34844240 */  ori        $a0, $a0, 0x4240
.L800A2E08:
/* DA08 800A2E08 24430008 */  addiu      $v1, $v0, 8
/* DA0C 800A2E0C 3C018015 */  lui        $at, %hi(D_80149F94)
/* DA10 800A2E10 AC239F94 */  sw         $v1, %lo(D_80149F94)($at)
/* DA14 800A2E14 AC480000 */  sw         $t0, ($v0)
/* DA18 800A2E18 AC440004 */  sw         $a0, 4($v0)
/* DA1C 800A2E1C 24060002 */  addiu      $a2, $zero, 2
.L800A2E20:
/* DA20 800A2E20 3C05FC11 */  lui        $a1, 0xfc11
/* DA24 800A2E24 34A59623 */  ori        $a1, $a1, 0x9623
/* DA28 800A2E28 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DA2C 800A2E2C 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DA30 800A2E30 3C04FF2F */  lui        $a0, 0xff2f
/* DA34 800A2E34 3484FFFF */  ori        $a0, $a0, 0xffff
/* DA38 800A2E38 24620008 */  addiu      $v0, $v1, 8
/* DA3C 800A2E3C 3C018015 */  lui        $at, %hi(D_80149F94)
/* DA40 800A2E40 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DA44 800A2E44 AC650000 */  sw         $a1, ($v1)
/* DA48 800A2E48 08028BBD */  j          .L800A2EF4
/* DA4C 800A2E4C AC640004 */   sw        $a0, 4($v1)
.L800A2E50:
/* DA50 800A2E50 10400011 */  beqz       $v0, .L800A2E98
/* DA54 800A2E54 30620080 */   andi      $v0, $v1, 0x80
/* DA58 800A2E58 10400005 */  beqz       $v0, .L800A2E70
/* DA5C 800A2E5C 3C040055 */   lui       $a0, 0x55
/* DA60 800A2E60 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DA64 800A2E64 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DA68 800A2E68 08028B9F */  j          .L800A2E7C
/* DA6C 800A2E6C 34842078 */   ori       $a0, $a0, 0x2078
.L800A2E70:
/* DA70 800A2E70 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DA74 800A2E74 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DA78 800A2E78 34842048 */  ori        $a0, $a0, 0x2048
.L800A2E7C:
/* DA7C 800A2E7C 24430008 */  addiu      $v1, $v0, 8
/* DA80 800A2E80 3C018015 */  lui        $at, %hi(D_80149F94)
/* DA84 800A2E84 AC239F94 */  sw         $v1, %lo(D_80149F94)($at)
/* DA88 800A2E88 AC480000 */  sw         $t0, ($v0)
/* DA8C 800A2E8C AC440004 */  sw         $a0, 4($v0)
/* DA90 800A2E90 08028BB6 */  j          .L800A2ED8
/* DA94 800A2E94 24060004 */   addiu     $a2, $zero, 4
.L800A2E98:
/* DA98 800A2E98 10400005 */  beqz       $v0, .L800A2EB0
/* DA9C 800A2E9C 3C040055 */   lui       $a0, 0x55
/* DAA0 800A2EA0 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DAA4 800A2EA4 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DAA8 800A2EA8 08028BB0 */  j          .L800A2EC0
/* DAAC 800A2EAC 34842230 */   ori       $a0, $a0, 0x2230
.L800A2EB0:
/* DAB0 800A2EB0 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DAB4 800A2EB4 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DAB8 800A2EB8 3C040F0A */  lui        $a0, 0xf0a
/* DABC 800A2EBC 34844000 */  ori        $a0, $a0, 0x4000
.L800A2EC0:
/* DAC0 800A2EC0 24430008 */  addiu      $v1, $v0, 8
/* DAC4 800A2EC4 3C018015 */  lui        $at, %hi(D_80149F94)
/* DAC8 800A2EC8 AC239F94 */  sw         $v1, %lo(D_80149F94)($at)
/* DACC 800A2ECC AC480000 */  sw         $t0, ($v0)
/* DAD0 800A2ED0 AC440004 */  sw         $a0, 4($v0)
/* DAD4 800A2ED4 00003021 */  addu       $a2, $zero, $zero
.L800A2ED8:
/* DAD8 800A2ED8 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DADC 800A2EDC 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DAE0 800A2EE0 24620008 */  addiu      $v0, $v1, 8
/* DAE4 800A2EE4 3C018015 */  lui        $at, %hi(D_80149F94)
/* DAE8 800A2EE8 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DAEC 800A2EEC AC6D0000 */  sw         $t5, ($v1)
/* DAF0 800A2EF0 AC6C0004 */  sw         $t4, 4($v1)
.L800A2EF4:
/* DAF4 800A2EF4 94E2001E */  lhu        $v0, 0x1e($a3)
/* DAF8 800A2EF8 30420004 */  andi       $v0, $v0, 4
/* DAFC 800A2EFC 1040000C */  beqz       $v0, .L800A2F30
/* DB00 800A2F00 3C04E300 */   lui       $a0, 0xe300
/* DB04 800A2F04 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DB08 800A2F08 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DB0C 800A2F0C 34841201 */  ori        $a0, $a0, 0x1201
/* DB10 800A2F10 34C60008 */  ori        $a2, $a2, 8
/* DB14 800A2F14 24620008 */  addiu      $v0, $v1, 8
/* DB18 800A2F18 3C018015 */  lui        $at, %hi(D_80149F94)
/* DB1C 800A2F1C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DB20 800A2F20 24022000 */  addiu      $v0, $zero, 0x2000
/* DB24 800A2F24 AC640000 */  sw         $a0, ($v1)
/* DB28 800A2F28 08028BD4 */  j          .L800A2F50
/* DB2C 800A2F2C AC620004 */   sw        $v0, 4($v1)
.L800A2F30:
/* DB30 800A2F30 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DB34 800A2F34 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DB38 800A2F38 34841201 */  ori        $a0, $a0, 0x1201
/* DB3C 800A2F3C 24430008 */  addiu      $v1, $v0, 8
/* DB40 800A2F40 3C018015 */  lui        $at, %hi(D_80149F94)
/* DB44 800A2F44 AC239F94 */  sw         $v1, %lo(D_80149F94)($at)
/* DB48 800A2F48 AC440000 */  sw         $a0, ($v0)
/* DB4C 800A2F4C AC400004 */  sw         $zero, 4($v0)
.L800A2F50:
/* DB50 800A2F50 94E3001E */  lhu        $v1, 0x1e($a3)
/* DB54 800A2F54 30620001 */  andi       $v0, $v1, 1
/* DB58 800A2F58 54400001 */  bnezl      $v0, .L800A2F60
/* DB5C 800A2F5C 34C60001 */   ori       $a2, $a2, 1
.L800A2F60:
/* DB60 800A2F60 30620008 */  andi       $v0, $v1, 8
/* DB64 800A2F64 54400001 */  bnezl      $v0, .L800A2F6C
/* DB68 800A2F68 34C60010 */   ori       $a2, $a2, 0x10
.L800A2F6C:
/* DB6C 800A2F6C 30620010 */  andi       $v0, $v1, 0x10
/* DB70 800A2F70 54400001 */  bnezl      $v0, .L800A2F78
/* DB74 800A2F74 34C60020 */   ori       $a2, $a2, 0x20
.L800A2F78:
/* DB78 800A2F78 30620020 */  andi       $v0, $v1, 0x20
/* DB7C 800A2F7C 54400001 */  bnezl      $v0, .L800A2F84
/* DB80 800A2F80 34C60040 */   ori       $a2, $a2, 0x40
.L800A2F84:
/* DB84 800A2F84 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DB88 800A2F88 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DB8C 800A2F8C 3C04E300 */  lui        $a0, 0xe300
/* DB90 800A2F90 34840A01 */  ori        $a0, $a0, 0xa01
/* DB94 800A2F94 24620008 */  addiu      $v0, $v1, 8
/* DB98 800A2F98 3C018015 */  lui        $at, %hi(D_80149F94)
/* DB9C 800A2F9C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DBA0 800A2FA0 3C020B00 */  lui        $v0, 0xb00
/* DBA4 800A2FA4 AC620000 */  sw         $v0, ($v1)
/* DBA8 800A2FA8 24620010 */  addiu      $v0, $v1, 0x10
/* DBAC 800A2FAC AC660004 */  sw         $a2, 4($v1)
/* DBB0 800A2FB0 3C018015 */  lui        $at, %hi(D_80149F94)
/* DBB4 800A2FB4 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DBB8 800A2FB8 AC640008 */  sw         $a0, 8($v1)
/* DBBC 800A2FBC AC60000C */  sw         $zero, 0xc($v1)
.L800A2FC0:
/* DBC0 800A2FC0 94E2001E */  lhu        $v0, 0x1e($a3)
/* DBC4 800A2FC4 30420040 */  andi       $v0, $v0, 0x40
/* DBC8 800A2FC8 10400013 */  beqz       $v0, .L800A3018
/* DBCC 800A2FCC 00000000 */   nop
/* DBD0 800A2FD0 3C058015 */  lui        $a1, %hi(D_80149F94)
/* DBD4 800A2FD4 8CA59F94 */  lw         $a1, %lo(D_80149F94)($a1)
/* DBD8 800A2FD8 24A20008 */  addiu      $v0, $a1, 8
/* DBDC 800A2FDC 3C018015 */  lui        $at, %hi(D_80149F94)
/* DBE0 800A2FE0 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DBE4 800A2FE4 3C02FA00 */  lui        $v0, 0xfa00
/* DBE8 800A2FE8 ACA20000 */  sw         $v0, ($a1)
/* DBEC 800A2FEC 90E20018 */  lbu        $v0, 0x18($a3)
/* DBF0 800A2FF0 90E30019 */  lbu        $v1, 0x19($a3)
/* DBF4 800A2FF4 90E4001A */  lbu        $a0, 0x1a($a3)
/* DBF8 800A2FF8 00021600 */  sll        $v0, $v0, 0x18
/* DBFC 800A2FFC 00031C00 */  sll        $v1, $v1, 0x10
/* DC00 800A3000 00431025 */  or         $v0, $v0, $v1
/* DC04 800A3004 90E3001B */  lbu        $v1, 0x1b($a3)
/* DC08 800A3008 00042200 */  sll        $a0, $a0, 8
/* DC0C 800A300C 00441025 */  or         $v0, $v0, $a0
/* DC10 800A3010 00431025 */  or         $v0, $v0, $v1
/* DC14 800A3014 ACA20004 */  sw         $v0, 4($a1)
.L800A3018:
/* DC18 800A3018 90E30020 */  lbu        $v1, 0x20($a3)
/* DC1C 800A301C 2C620008 */  sltiu      $v0, $v1, 8
/* DC20 800A3020 504000A4 */  beql       $v0, $zero, .L800A32B4
/* DC24 800A3024 254A0001 */   addiu     $t2, $t2, 1
/* DC28 800A3028 00031080 */  sll        $v0, $v1, 2
/* DC2C 800A302C 3C018010 */  lui        $at, %hi(D_800F9DF0)
/* DC30 800A3030 00220821 */  addu       $at, $at, $v0
/* DC34 800A3034 8C229DF0 */  lw         $v0, %lo(D_800F9DF0)($at)
/* DC38 800A3038 00400008 */  jr         $v0
/* DC3C 800A303C 00000000 */   nop
/* DC40 800A3040 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DC44 800A3044 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DC48 800A3048 AC690000 */  sw         $t1, ($v1)
/* DC4C 800A304C 8CE40004 */  lw         $a0, 4($a3)
/* DC50 800A3050 3C020700 */  lui        $v0, 0x700
/* DC54 800A3054 08028C43 */  j          .L800A310C
/* DC58 800A3058 3442002F */   ori       $v0, $v0, 0x2f
/* DC5C 800A305C 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DC60 800A3060 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DC64 800A3064 3C02DC17 */  lui        $v0, 0xdc17
/* DC68 800A3068 AC620000 */  sw         $v0, ($v1)
/* DC6C 800A306C 8CE20008 */  lw         $v0, 8($a3)
/* DC70 800A3070 AC690008 */  sw         $t1, 8($v1)
/* DC74 800A3074 AC620004 */  sw         $v0, 4($v1)
/* DC78 800A3078 8CE40004 */  lw         $a0, 4($a3)
/* DC7C 800A307C 24620008 */  addiu      $v0, $v1, 8
/* DC80 800A3080 3C018015 */  lui        $at, %hi(D_80149F94)
/* DC84 800A3084 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DC88 800A3088 24620010 */  addiu      $v0, $v1, 0x10
/* DC8C 800A308C 3C018015 */  lui        $at, %hi(D_80149F94)
/* DC90 800A3090 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DC94 800A3094 AC64000C */  sw         $a0, 0xc($v1)
/* DC98 800A3098 90E20021 */  lbu        $v0, 0x21($a3)
/* DC9C 800A309C 8CE50000 */  lw         $a1, ($a3)
/* DCA0 800A30A0 18400083 */  blez       $v0, .L800A32B0
/* DCA4 800A30A4 00002021 */   addu      $a0, $zero, $zero
.L800A30A8:
/* DCA8 800A30A8 3C028015 */  lui        $v0, %hi(D_80149F94)
/* DCAC 800A30AC 8C429F94 */  lw         $v0, %lo(D_80149F94)($v0)
/* DCB0 800A30B0 24430008 */  addiu      $v1, $v0, 8
/* DCB4 800A30B4 3C018015 */  lui        $at, %hi(D_80149F94)
/* DCB8 800A30B8 AC239F94 */  sw         $v1, %lo(D_80149F94)($at)
/* DCBC 800A30BC AC4E0000 */  sw         $t6, ($v0)
/* DCC0 800A30C0 AC450004 */  sw         $a1, 4($v0)
/* DCC4 800A30C4 90E20021 */  lbu        $v0, 0x21($a3)
/* DCC8 800A30C8 24840001 */  addiu      $a0, $a0, 1
/* DCCC 800A30CC 0082102A */  slt        $v0, $a0, $v0
/* DCD0 800A30D0 1440FFF5 */  bnez       $v0, .L800A30A8
/* DCD4 800A30D4 24A50030 */   addiu     $a1, $a1, 0x30
/* DCD8 800A30D8 08028CAD */  j          .L800A32B4
/* DCDC 800A30DC 254A0001 */   addiu     $t2, $t2, 1
/* DCE0 800A30E0 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DCE4 800A30E4 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DCE8 800A30E8 AC690000 */  sw         $t1, ($v1)
/* DCEC 800A30EC 8CE40004 */  lw         $a0, 4($a3)
/* DCF0 800A30F0 08028C43 */  j          .L800A310C
/* DCF4 800A30F4 3C020A00 */   lui       $v0, 0xa00
/* DCF8 800A30F8 3C038015 */  lui        $v1, %hi(D_80149F94)
/* DCFC 800A30FC 8C639F94 */  lw         $v1, %lo(D_80149F94)($v1)
/* DD00 800A3100 AC690000 */  sw         $t1, ($v1)
/* DD04 800A3104 8CE40004 */  lw         $a0, 4($a3)
/* DD08 800A3108 3C020900 */  lui        $v0, 0x900
.L800A310C:
/* DD0C 800A310C AC620008 */  sw         $v0, 8($v1)
/* DD10 800A3110 AC640004 */  sw         $a0, 4($v1)
/* DD14 800A3114 8CE40000 */  lw         $a0, ($a3)
/* DD18 800A3118 24620008 */  addiu      $v0, $v1, 8
/* DD1C 800A311C 3C018015 */  lui        $at, %hi(D_80149F94)
/* DD20 800A3120 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DD24 800A3124 24620010 */  addiu      $v0, $v1, 0x10
/* DD28 800A3128 3C018015 */  lui        $at, %hi(D_80149F94)
/* DD2C 800A312C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DD30 800A3130 08028CAC */  j          .L800A32B0
/* DD34 800A3134 AC64000C */   sw        $a0, 0xc($v1)
/* DD38 800A3138 8CE60000 */  lw         $a2, ($a3)
/* DD3C 800A313C 84C30000 */  lh         $v1, ($a2)
/* DD40 800A3140 28620141 */  slti       $v0, $v1, 0x141
/* DD44 800A3144 14400003 */  bnez       $v0, .L800A3154
/* DD48 800A3148 24020140 */   addiu     $v0, $zero, 0x140
/* DD4C 800A314C 08028C57 */  j          .L800A315C
/* DD50 800A3150 A4C20000 */   sh        $v0, ($a2)
.L800A3154:
/* DD54 800A3154 04620001 */  bltzl      $v1, .L800A315C
/* DD58 800A3158 A4C00000 */   sh        $zero, ($a2)
.L800A315C:
/* DD5C 800A315C 84C30002 */  lh         $v1, 2($a2)
/* DD60 800A3160 286200F1 */  slti       $v0, $v1, 0xf1
/* DD64 800A3164 14400003 */  bnez       $v0, .L800A3174
/* DD68 800A3168 240200F0 */   addiu     $v0, $zero, 0xf0
/* DD6C 800A316C 08028C5F */  j          .L800A317C
/* DD70 800A3170 A4C20002 */   sh        $v0, 2($a2)
.L800A3174:
/* DD74 800A3174 04620001 */  bltzl      $v1, .L800A317C
/* DD78 800A3178 A4C00002 */   sh        $zero, 2($a2)
.L800A317C:
/* DD7C 800A317C 84C30004 */  lh         $v1, 4($a2)
/* DD80 800A3180 28620141 */  slti       $v0, $v1, 0x141
/* DD84 800A3184 14400003 */  bnez       $v0, .L800A3194
/* DD88 800A3188 24020140 */   addiu     $v0, $zero, 0x140
/* DD8C 800A318C 08028C67 */  j          .L800A319C
/* DD90 800A3190 A4C20004 */   sh        $v0, 4($a2)
.L800A3194:
/* DD94 800A3194 04620001 */  bltzl      $v1, .L800A319C
/* DD98 800A3198 A4C00004 */   sh        $zero, 4($a2)
.L800A319C:
/* DD9C 800A319C 84C30006 */  lh         $v1, 6($a2)
/* DDA0 800A31A0 286200F1 */  slti       $v0, $v1, 0xf1
/* DDA4 800A31A4 14400003 */  bnez       $v0, .L800A31B4
/* DDA8 800A31A8 240200F0 */   addiu     $v0, $zero, 0xf0
/* DDAC 800A31AC 08028C6F */  j          .L800A31BC
/* DDB0 800A31B0 A4C20006 */   sh        $v0, 6($a2)
.L800A31B4:
/* DDB4 800A31B4 04620001 */  bltzl      $v1, .L800A31BC
/* DDB8 800A31B8 A4C00006 */   sh        $zero, 6($a2)
.L800A31BC:
/* DDBC 800A31BC 84C30000 */  lh         $v1, ($a2)
/* DDC0 800A31C0 84C20004 */  lh         $v0, 4($a2)
/* DDC4 800A31C4 0043102A */  slt        $v0, $v0, $v1
/* DDC8 800A31C8 10400002 */  beqz       $v0, .L800A31D4
/* DDCC 800A31CC 00602021 */   addu      $a0, $v1, $zero
/* DDD0 800A31D0 A4C40004 */  sh         $a0, 4($a2)
.L800A31D4:
/* DDD4 800A31D4 84C30002 */  lh         $v1, 2($a2)
/* DDD8 800A31D8 84C20006 */  lh         $v0, 6($a2)
/* DDDC 800A31DC 0043102A */  slt        $v0, $v0, $v1
/* DDE0 800A31E0 10400002 */  beqz       $v0, .L800A31EC
/* DDE4 800A31E4 00602021 */   addu      $a0, $v1, $zero
/* DDE8 800A31E8 A4C40006 */  sh         $a0, 6($a2)
.L800A31EC:
/* DDEC 800A31EC 84C20000 */  lh         $v0, ($a2)
/* DDF0 800A31F0 44820000 */  mtc1       $v0, $f0
/* DDF4 800A31F4 00000000 */  nop
/* DDF8 800A31F8 46800020 */  cvt.s.w    $f0, $f0
/* DDFC 800A31FC 46060002 */  mul.s      $f0, $f0, $f6
/* DE00 800A3200 84C20002 */  lh         $v0, 2($a2)
/* DE04 800A3204 44821000 */  mtc1       $v0, $f2
/* DE08 800A3208 00000000 */  nop
/* DE0C 800A320C 468010A0 */  cvt.s.w    $f2, $f2
/* DE10 800A3210 46061082 */  mul.s      $f2, $f2, $f6
/* DE14 800A3214 3C058015 */  lui        $a1, %hi(D_80149F94)
/* DE18 800A3218 8CA59F94 */  lw         $a1, %lo(D_80149F94)($a1)
/* DE1C 800A321C 4600010D */  trunc.w.s  $f4, $f0
/* DE20 800A3220 44032000 */  mfc1       $v1, $f4
/* DE24 800A3224 00000000 */  nop
/* DE28 800A3228 30630FFF */  andi       $v1, $v1, 0xfff
/* DE2C 800A322C 00031B00 */  sll        $v1, $v1, 0xc
/* DE30 800A3230 4600100D */  trunc.w.s  $f0, $f2
/* DE34 800A3234 44020000 */  mfc1       $v0, $f0
/* DE38 800A3238 00000000 */  nop
/* DE3C 800A323C 30420FFF */  andi       $v0, $v0, 0xfff
/* DE40 800A3240 3C04ED00 */  lui        $a0, 0xed00
/* DE44 800A3244 00441025 */  or         $v0, $v0, $a0
/* DE48 800A3248 00621825 */  or         $v1, $v1, $v0
/* DE4C 800A324C ACA30000 */  sw         $v1, ($a1)
/* DE50 800A3250 84C20004 */  lh         $v0, 4($a2)
/* DE54 800A3254 44820000 */  mtc1       $v0, $f0
/* DE58 800A3258 00000000 */  nop
/* DE5C 800A325C 46800020 */  cvt.s.w    $f0, $f0
/* DE60 800A3260 46060002 */  mul.s      $f0, $f0, $f6
/* DE64 800A3264 84C20006 */  lh         $v0, 6($a2)
/* DE68 800A3268 44821000 */  mtc1       $v0, $f2
/* DE6C 800A326C 00000000 */  nop
/* DE70 800A3270 468010A0 */  cvt.s.w    $f2, $f2
/* DE74 800A3274 46061082 */  mul.s      $f2, $f2, $f6
/* DE78 800A3278 24A20008 */  addiu      $v0, $a1, 8
/* DE7C 800A327C 3C018015 */  lui        $at, %hi(D_80149F94)
/* DE80 800A3280 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* DE84 800A3284 4600010D */  trunc.w.s  $f4, $f0
/* DE88 800A3288 44032000 */  mfc1       $v1, $f4
/* DE8C 800A328C 00000000 */  nop
/* DE90 800A3290 30630FFF */  andi       $v1, $v1, 0xfff
/* DE94 800A3294 00031B00 */  sll        $v1, $v1, 0xc
/* DE98 800A3298 4600100D */  trunc.w.s  $f0, $f2
/* DE9C 800A329C 44020000 */  mfc1       $v0, $f0
/* DEA0 800A32A0 00000000 */  nop
/* DEA4 800A32A4 30420FFF */  andi       $v0, $v0, 0xfff
/* DEA8 800A32A8 00621825 */  or         $v1, $v1, $v0
/* DEAC 800A32AC ACA30004 */  sw         $v1, 4($a1)
.L800A32B0:
/* DEB0 800A32B0 254A0001 */  addiu      $t2, $t2, 1
.L800A32B4:
/* DEB4 800A32B4 0151102A */  slt        $v0, $t2, $s1
/* DEB8 800A32B8 1440FE61 */  bnez       $v0, .L800A2C40
/* DEBC 800A32BC 256B0004 */   addiu     $t3, $t3, 4
.L800A32C0:
/* DEC0 800A32C0 8FBF003C */  lw         $ra, 0x3c($sp)
/* DEC4 800A32C4 8FB20038 */  lw         $s2, 0x38($sp)
/* DEC8 800A32C8 8FB10034 */  lw         $s1, 0x34($sp)
/* DECC 800A32CC 8FB00030 */  lw         $s0, 0x30($sp)
/* DED0 800A32D0 27BD0040 */  addiu      $sp, $sp, 0x40
/* DED4 800A32D4 03E00008 */  jr         $ra
/* DED8 800A32D8 00000000 */   nop
