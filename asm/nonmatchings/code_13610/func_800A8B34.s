.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A8B34
/* 13734 800A8B34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13738 800A8B38 AFB00010 */  sw         $s0, 0x10($sp)
/* 1373C 800A8B3C 3C108015 */  lui        $s0, %hi(D_80149FC0)
/* 13740 800A8B40 8E109FC0 */  lw         $s0, %lo(D_80149FC0)($s0)
/* 13744 800A8B44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13748 800A8B48 0C026C12 */  jal        func_8009B048
/* 1374C 800A8B4C 00000000 */   nop
/* 13750 800A8B50 3C028015 */  lui        $v0, %hi(D_80149FC4)
/* 13754 800A8B54 90429FC4 */  lbu        $v0, %lo(D_80149FC4)($v0)
/* 13758 800A8B58 10400006 */  beqz       $v0, .L800A8B74
/* 1375C 800A8B5C 00000000 */   nop
/* 13760 800A8B60 3C028015 */  lui        $v0, %hi(D_8014A2CC)
/* 13764 800A8B64 8C42A2CC */  lw         $v0, %lo(D_8014A2CC)($v0)
/* 13768 800A8B68 38420001 */  xori       $v0, $v0, 1
/* 1376C 800A8B6C 3C018015 */  lui        $at, %hi(D_8014A2CC)
/* 13770 800A8B70 AC22A2CC */  sw         $v0, %lo(D_8014A2CC)($at)
.L800A8B74:
/* 13774 800A8B74 3C028015 */  lui        $v0, %hi(D_8014A0C4)
/* 13778 800A8B78 8C42A0C4 */  lw         $v0, %lo(D_8014A0C4)($v0)
/* 1377C 800A8B7C 3C038017 */  lui        $v1, %hi(D_8016E5A0)
/* 13780 800A8B80 2463E5A0 */  addiu      $v1, $v1, %lo(D_8016E5A0)
/* 13784 800A8B84 3C018010 */  lui        $at, %hi(D_801001D0)
/* 13788 800A8B88 AC2301D0 */  sw         $v1, %lo(D_801001D0)($at)
/* 1378C 800A8B8C 38420001 */  xori       $v0, $v0, 1
/* 13790 800A8B90 3C018015 */  lui        $at, %hi(D_8014A0C4)
/* 13794 800A8B94 AC22A0C4 */  sw         $v0, %lo(D_8014A0C4)($at)
/* 13798 800A8B98 0C02A36B */  jal        func_800A8DAC
/* 1379C 800A8B9C 00000000 */   nop
/* 137A0 800A8BA0 0C02654F */  jal        func_8009953C
/* 137A4 800A8BA4 00000000 */   nop
/* 137A8 800A8BA8 0C02A4ED */  jal        func_800A93B4
/* 137AC 800A8BAC 00000000 */   nop
/* 137B0 800A8BB0 0C02A66D */  jal        func_800A99B4
/* 137B4 800A8BB4 00000000 */   nop
/* 137B8 800A8BB8 3C028015 */  lui        $v0, %hi(D_80149FC4)
/* 137BC 800A8BBC 90429FC4 */  lbu        $v0, %lo(D_80149FC4)($v0)
/* 137C0 800A8BC0 10400007 */  beqz       $v0, .L800A8BE0
/* 137C4 800A8BC4 00000000 */   nop
/* 137C8 800A8BC8 0C02A390 */  jal        func_800A8E40
/* 137CC 800A8BCC 00000000 */   nop
/* 137D0 800A8BD0 0C02A3C5 */  jal        func_800A8F14
/* 137D4 800A8BD4 00000000 */   nop
/* 137D8 800A8BD8 0C02A426 */  jal        func_800A9098
/* 137DC 800A8BDC 00000000 */   nop
.L800A8BE0:
/* 137E0 800A8BE0 3C02800D */  lui        $v0, %hi(D_800D4960)
/* 137E4 800A8BE4 8C424960 */  lw         $v0, %lo(D_800D4960)($v0)
/* 137E8 800A8BE8 1440005E */  bnez       $v0, .L800A8D64
/* 137EC 800A8BEC 00000000 */   nop
/* 137F0 800A8BF0 3C028010 */  lui        $v0, %hi(D_801001F0)
/* 137F4 800A8BF4 8C4201F0 */  lw         $v0, %lo(D_801001F0)($v0)
/* 137F8 800A8BF8 3C048010 */  lui        $a0, %hi(D_801001D8)
/* 137FC 800A8BFC 8C8401D8 */  lw         $a0, %lo(D_801001D8)($a0)
/* 13800 800A8C00 00441023 */  subu       $v0, $v0, $a0
/* 13804 800A8C04 000210C3 */  sra        $v0, $v0, 3
/* 13808 800A8C08 000228C0 */  sll        $a1, $v0, 3
/* 1380C 800A8C0C 10A00003 */  beqz       $a1, .L800A8C1C
/* 13810 800A8C10 24060005 */   addiu     $a2, $zero, 5
/* 13814 800A8C14 0C02D99B */  jal        func_800B666C
/* 13818 800A8C18 00003821 */   addu      $a3, $zero, $zero
.L800A8C1C:
/* 1381C 800A8C1C 3C028010 */  lui        $v0, %hi(D_801001F4)
/* 13820 800A8C20 8C4201F4 */  lw         $v0, %lo(D_801001F4)($v0)
/* 13824 800A8C24 3C048010 */  lui        $a0, %hi(D_801001DC)
/* 13828 800A8C28 8C8401DC */  lw         $a0, %lo(D_801001DC)($a0)
/* 1382C 800A8C2C 00441023 */  subu       $v0, $v0, $a0
/* 13830 800A8C30 000210C3 */  sra        $v0, $v0, 3
/* 13834 800A8C34 000228C0 */  sll        $a1, $v0, 3
/* 13838 800A8C38 10A00003 */  beqz       $a1, .L800A8C48
/* 1383C 800A8C3C 00003021 */   addu      $a2, $zero, $zero
/* 13840 800A8C40 0C02D99B */  jal        func_800B666C
/* 13844 800A8C44 00003821 */   addu      $a3, $zero, $zero
.L800A8C48:
/* 13848 800A8C48 3C028010 */  lui        $v0, %hi(D_801001F8)
/* 1384C 800A8C4C 8C4201F8 */  lw         $v0, %lo(D_801001F8)($v0)
/* 13850 800A8C50 3C048010 */  lui        $a0, %hi(D_801001E0)
/* 13854 800A8C54 8C8401E0 */  lw         $a0, %lo(D_801001E0)($a0)
/* 13858 800A8C58 00441023 */  subu       $v0, $v0, $a0
/* 1385C 800A8C5C 000210C3 */  sra        $v0, $v0, 3
/* 13860 800A8C60 000228C0 */  sll        $a1, $v0, 3
/* 13864 800A8C64 10A00003 */  beqz       $a1, .L800A8C74
/* 13868 800A8C68 24060005 */   addiu     $a2, $zero, 5
/* 1386C 800A8C6C 0C02D99B */  jal        func_800B666C
/* 13870 800A8C70 00003821 */   addu      $a3, $zero, $zero
.L800A8C74:
/* 13874 800A8C74 3C028015 */  lui        $v0, %hi(D_80149BBC)
/* 13878 800A8C78 8C429BBC */  lw         $v0, %lo(D_80149BBC)($v0)
/* 1387C 800A8C7C 10400011 */  beqz       $v0, .L800A8CC4
/* 13880 800A8C80 00000000 */   nop
/* 13884 800A8C84 3C028015 */  lui        $v0, %hi(D_80149FC4)
/* 13888 800A8C88 90429FC4 */  lbu        $v0, %lo(D_80149FC4)($v0)
/* 1388C 800A8C8C 1440000D */  bnez       $v0, .L800A8CC4
/* 13890 800A8C90 00000000 */   nop
/* 13894 800A8C94 0C02A404 */  jal        func_800A9010
/* 13898 800A8C98 00000000 */   nop
/* 1389C 800A8C9C 3C048010 */  lui        $a0, %hi(D_801001E8)
/* 138A0 800A8CA0 8C8401E8 */  lw         $a0, %lo(D_801001E8)($a0)
/* 138A4 800A8CA4 3C058010 */  lui        $a1, %hi(D_80100200)
/* 138A8 800A8CA8 8CA50200 */  lw         $a1, %lo(D_80100200)($a1)
/* 138AC 800A8CAC 24060005 */  addiu      $a2, $zero, 5
/* 138B0 800A8CB0 00003821 */  addu       $a3, $zero, $zero
/* 138B4 800A8CB4 00A42823 */  subu       $a1, $a1, $a0
/* 138B8 800A8CB8 000528C3 */  sra        $a1, $a1, 3
/* 138BC 800A8CBC 0C02D99B */  jal        func_800B666C
/* 138C0 800A8CC0 000528C0 */   sll       $a1, $a1, 3
.L800A8CC4:
/* 138C4 800A8CC4 3C028017 */  lui        $v0, %hi(D_8016D16C)
/* 138C8 800A8CC8 8C42D16C */  lw         $v0, %lo(D_8016D16C)($v0)
/* 138CC 800A8CCC 1040000C */  beqz       $v0, .L800A8D00
/* 138D0 800A8CD0 00000000 */   nop
/* 138D4 800A8CD4 3C028010 */  lui        $v0, %hi(D_801001FC)
/* 138D8 800A8CD8 8C4201FC */  lw         $v0, %lo(D_801001FC)($v0)
/* 138DC 800A8CDC 3C048010 */  lui        $a0, %hi(D_801001E4)
/* 138E0 800A8CE0 8C8401E4 */  lw         $a0, %lo(D_801001E4)($a0)
/* 138E4 800A8CE4 00441023 */  subu       $v0, $v0, $a0
/* 138E8 800A8CE8 000210C3 */  sra        $v0, $v0, 3
/* 138EC 800A8CEC 000228C0 */  sll        $a1, $v0, 3
/* 138F0 800A8CF0 10A00003 */  beqz       $a1, .L800A8D00
/* 138F4 800A8CF4 24060004 */   addiu     $a2, $zero, 4
/* 138F8 800A8CF8 0C02D99B */  jal        func_800B666C
/* 138FC 800A8CFC 00003821 */   addu      $a3, $zero, $zero
.L800A8D00:
/* 13900 800A8D00 0C02DA20 */  jal        func_800B6880
/* 13904 800A8D04 00000000 */   nop
/* 13908 800A8D08 3C028015 */  lui        $v0, %hi(D_80149FC0)
/* 1390C 800A8D0C 8C429FC0 */  lw         $v0, %lo(D_80149FC0)($v0)
/* 13910 800A8D10 3C048015 */  lui        $a0, %hi(D_80149F90)
/* 13914 800A8D14 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* 13918 800A8D18 00508023 */  subu       $s0, $v0, $s0
/* 1391C 800A8D1C 0204102B */  sltu       $v0, $s0, $a0
/* 13920 800A8D20 10400005 */  beqz       $v0, .L800A8D38
/* 13924 800A8D24 28820002 */   slti      $v0, $a0, 2
/* 13928 800A8D28 14400003 */  bnez       $v0, .L800A8D38
/* 1392C 800A8D2C 00000000 */   nop
/* 13930 800A8D30 0C02DA28 */  jal        func_800B68A0
/* 13934 800A8D34 00902023 */   subu      $a0, $a0, $s0
.L800A8D38:
/* 13938 800A8D38 0C02A4EB */  jal        func_800A93AC
/* 1393C 800A8D3C 00000000 */   nop
/* 13940 800A8D40 0C02A4EF */  jal        func_800A93BC
/* 13944 800A8D44 00000000 */   nop
/* 13948 800A8D48 3C058017 */  lui        $a1, %hi(D_8016D5B4)
/* 1394C 800A8D4C 8CA5D5B4 */  lw         $a1, %lo(D_8016D5B4)($a1)
/* 13950 800A8D50 00002021 */  addu       $a0, $zero, $zero
/* 13954 800A8D54 0C02DAB0 */  jal        func_800B6AC0
/* 13958 800A8D58 0005282B */   sltu      $a1, $zero, $a1
/* 1395C 800A8D5C 0C02DC6C */  jal        func_800B71B0
/* 13960 800A8D60 24040001 */   addiu     $a0, $zero, 1
.L800A8D64:
/* 13964 800A8D64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13968 800A8D68 8FB00010 */  lw         $s0, 0x10($sp)
/* 1396C 800A8D6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13970 800A8D70 03E00008 */  jr         $ra
/* 13974 800A8D74 00000000 */   nop
