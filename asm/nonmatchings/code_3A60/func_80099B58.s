glabel func_80099B58
/* 4758 80099B58 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 475C 80099B5C 00806821 */  addu       $t5, $a0, $zero
/* 4760 80099B60 00004021 */  addu       $t0, $zero, $zero
/* 4764 80099B64 30C200FF */  andi       $v0, $a2, 0xFF
/* 4768 80099B68 00021880 */  sll        $v1, $v0, 2
/* 476C 80099B6C 00621821 */  addu       $v1, $v1, $v0
/* 4770 80099B70 000318C0 */  sll        $v1, $v1, 3
/* 4774 80099B74 3C018017 */  lui        $at, %hi(D_8016E4BC)
/* 4778 80099B78 00230821 */  addu       $at, $at, $v1
/* 477C 80099B7C C424E4BC */  lwc1       $f4, %lo(D_8016E4BC)($at)
/* 4780 80099B80 00004821 */  addu       $t1, $zero, $zero
/* 4784 80099B84 44800000 */  mtc1       $zero, $f0
/* 4788 80099B88 00000000 */  nop
/* 478C 80099B8C 00005021 */  addu       $t2, $zero, $zero
/* 4790 80099B90 4604003C */  c.lt.s     $f0, $f4
/* 4794 80099B94 00000000 */  nop
/* 4798 80099B98 00000000 */  nop
/* 479C 80099B9C 00005821 */  addu       $t3, $zero, $zero
/* 47A0 80099BA0 4500000B */  bc1f       .L80099BD0
/* 47A4 80099BA4 00006021 */   addu      $t4, $zero, $zero
/* 47A8 80099BA8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 47AC 80099BAC 44810000 */  mtc1       $at, $f0
/* 47B0 80099BB0 00000000 */  nop
/* 47B4 80099BB4 4600203C */  c.lt.s     $f4, $f0
/* 47B8 80099BB8 00000000 */  nop
/* 47BC 80099BBC 00000000 */  nop
/* 47C0 80099BC0 4501000D */  bc1t       .L80099BF8
/* 47C4 80099BC4 00021040 */   sll       $v0, $v0, 1
/* 47C8 80099BC8 08026703 */  j          .L80099C0C
/* 47CC 80099BCC 00000000 */   nop
.L80099BD0:
/* 47D0 80099BD0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 47D4 80099BD4 44811000 */  mtc1       $at, $f2
/* 47D8 80099BD8 00000000 */  nop
/* 47DC 80099BDC 46002007 */  neg.s      $f0, $f4
/* 47E0 80099BE0 4602003C */  c.lt.s     $f0, $f2
/* 47E4 80099BE4 00000000 */  nop
/* 47E8 80099BE8 00000000 */  nop
/* 47EC 80099BEC 45000007 */  bc1f       .L80099C0C
/* 47F0 80099BF0 30C200FF */   andi      $v0, $a2, 0xFF
/* 47F4 80099BF4 00021040 */  sll        $v0, $v0, 1
.L80099BF8:
/* 47F8 80099BF8 3C018010 */  lui        $at, %hi(D_800FF398)
/* 47FC 80099BFC 00220821 */  addu       $at, $at, $v0
/* 4800 80099C00 A420F398 */  sh         $zero, %lo(D_800FF398)($at)
/* 4804 80099C04 0802671F */  j          .L80099C7C
/* 4808 80099C08 30C200FF */   andi      $v0, $a2, 0xFF
.L80099C0C:
/* 480C 80099C0C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 4810 80099C10 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 4814 80099C14 24030010 */  addiu      $v1, $zero, 0x10
/* 4818 80099C18 0062001A */  div        $zero, $v1, $v0
/* 481C 80099C1C 14400002 */  bnez       $v0, .L80099C28
/* 4820 80099C20 00000000 */   nop
/* 4824 80099C24 0007000D */  break      7
.L80099C28:
/* 4828 80099C28 2401FFFF */  addiu      $at, $zero, -0x1
/* 482C 80099C2C 14410004 */  bne        $v0, $at, .L80099C40
/* 4830 80099C30 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4834 80099C34 14610002 */  bne        $v1, $at, .L80099C40
/* 4838 80099C38 00000000 */   nop
/* 483C 80099C3C 0006000D */  break      6
.L80099C40:
/* 4840 80099C40 00001812 */  mflo       $v1
/* 4844 80099C44 00000000 */  nop
/* 4848 80099C48 00000000 */  nop
/* 484C 80099C4C 3C048010 */  lui        $a0, %hi(D_800FF398)
/* 4850 80099C50 2484F398 */  addiu      $a0, $a0, %lo(D_800FF398)
/* 4854 80099C54 30C200FF */  andi       $v0, $a2, 0xFF
/* 4858 80099C58 00021040 */  sll        $v0, $v0, 1
/* 485C 80099C5C 00443821 */  addu       $a3, $v0, $a0
/* 4860 80099C60 84E20000 */  lh         $v0, 0x0($a3)
/* 4864 80099C64 00402021 */  addu       $a0, $v0, $zero
/* 4868 80099C68 0043102A */  slt        $v0, $v0, $v1
/* 486C 80099C6C 10400002 */  beqz       $v0, .L80099C78
/* 4870 80099C70 24820001 */   addiu     $v0, $a0, 0x1
/* 4874 80099C74 A4E20000 */  sh         $v0, 0x0($a3)
.L80099C78:
/* 4878 80099C78 30C200FF */  andi       $v0, $a2, 0xFF
.L80099C7C:
/* 487C 80099C7C 00021880 */  sll        $v1, $v0, 2
/* 4880 80099C80 00621821 */  addu       $v1, $v1, $v0
/* 4884 80099C84 000318C0 */  sll        $v1, $v1, 3
/* 4888 80099C88 3C018017 */  lui        $at, %hi(D_8016E4C0)
/* 488C 80099C8C 00230821 */  addu       $at, $at, $v1
/* 4890 80099C90 C424E4C0 */  lwc1       $f4, %lo(D_8016E4C0)($at)
/* 4894 80099C94 44800000 */  mtc1       $zero, $f0
/* 4898 80099C98 00000000 */  nop
/* 489C 80099C9C 4604003C */  c.lt.s     $f0, $f4
/* 48A0 80099CA0 00000000 */  nop
/* 48A4 80099CA4 00000000 */  nop
/* 48A8 80099CA8 4502000B */  bc1fl      .L80099CD8
/* 48AC 80099CAC 46002007 */   neg.s     $f0, $f4
/* 48B0 80099CB0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 48B4 80099CB4 44810000 */  mtc1       $at, $f0
/* 48B8 80099CB8 00000000 */  nop
/* 48BC 80099CBC 4600203C */  c.lt.s     $f4, $f0
/* 48C0 80099CC0 00000000 */  nop
/* 48C4 80099CC4 00000000 */  nop
/* 48C8 80099CC8 4501000B */  bc1t       .L80099CF8
/* 48CC 80099CCC 30C200FF */   andi      $v0, $a2, 0xFF
/* 48D0 80099CD0 08026744 */  j          .L80099D10
/* 48D4 80099CD4 00000000 */   nop
.L80099CD8:
/* 48D8 80099CD8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 48DC 80099CDC 44811000 */  mtc1       $at, $f2
/* 48E0 80099CE0 00000000 */  nop
/* 48E4 80099CE4 4602003C */  c.lt.s     $f0, $f2
/* 48E8 80099CE8 00000000 */  nop
/* 48EC 80099CEC 00000000 */  nop
/* 48F0 80099CF0 45000007 */  bc1f       .L80099D10
/* 48F4 80099CF4 30C200FF */   andi      $v0, $a2, 0xFF
.L80099CF8:
/* 48F8 80099CF8 00021040 */  sll        $v0, $v0, 1
/* 48FC 80099CFC 3C018010 */  lui        $at, %hi(D_800FF3A0)
/* 4900 80099D00 00220821 */  addu       $at, $at, $v0
/* 4904 80099D04 A420F3A0 */  sh         $zero, %lo(D_800FF3A0)($at)
/* 4908 80099D08 08026760 */  j          .L80099D80
/* 490C 80099D0C 30C300FF */   andi      $v1, $a2, 0xFF
.L80099D10:
/* 4910 80099D10 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 4914 80099D14 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 4918 80099D18 24030010 */  addiu      $v1, $zero, 0x10
/* 491C 80099D1C 0062001A */  div        $zero, $v1, $v0
/* 4920 80099D20 14400002 */  bnez       $v0, .L80099D2C
/* 4924 80099D24 00000000 */   nop
/* 4928 80099D28 0007000D */  break      7
.L80099D2C:
/* 492C 80099D2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 4930 80099D30 14410004 */  bne        $v0, $at, .L80099D44
/* 4934 80099D34 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4938 80099D38 14610002 */  bne        $v1, $at, .L80099D44
/* 493C 80099D3C 00000000 */   nop
/* 4940 80099D40 0006000D */  break      6
.L80099D44:
/* 4944 80099D44 00001812 */  mflo       $v1
/* 4948 80099D48 00000000 */  nop
/* 494C 80099D4C 00000000 */  nop
/* 4950 80099D50 3C048010 */  lui        $a0, %hi(D_800FF3A0)
/* 4954 80099D54 2484F3A0 */  addiu      $a0, $a0, %lo(D_800FF3A0)
/* 4958 80099D58 30C200FF */  andi       $v0, $a2, 0xFF
/* 495C 80099D5C 00021040 */  sll        $v0, $v0, 1
/* 4960 80099D60 00443821 */  addu       $a3, $v0, $a0
/* 4964 80099D64 84E20000 */  lh         $v0, 0x0($a3)
/* 4968 80099D68 00402021 */  addu       $a0, $v0, $zero
/* 496C 80099D6C 0043102A */  slt        $v0, $v0, $v1
/* 4970 80099D70 10400002 */  beqz       $v0, .L80099D7C
/* 4974 80099D74 24820001 */   addiu     $v0, $a0, 0x1
/* 4978 80099D78 A4E20000 */  sh         $v0, 0x0($a3)
.L80099D7C:
/* 497C 80099D7C 30C300FF */  andi       $v1, $a2, 0xFF
.L80099D80:
/* 4980 80099D80 00031080 */  sll        $v0, $v1, 2
/* 4984 80099D84 00431021 */  addu       $v0, $v0, $v1
/* 4988 80099D88 000210C0 */  sll        $v0, $v0, 3
/* 498C 80099D8C 3C018017 */  lui        $at, %hi(D_8016E4A8)
/* 4990 80099D90 00220821 */  addu       $at, $at, $v0
/* 4994 80099D94 9422E4A8 */  lhu        $v0, %lo(D_8016E4A8)($at)
/* 4998 80099D98 30420F00 */  andi       $v0, $v0, 0xF00
/* 499C 80099D9C 1440000C */  bnez       $v0, .L80099DD0
/* 49A0 80099DA0 30C200FF */   andi      $v0, $a2, 0xFF
/* 49A4 80099DA4 00031840 */  sll        $v1, $v1, 1
/* 49A8 80099DA8 3C028010 */  lui        $v0, %hi(D_800FF398)
/* 49AC 80099DAC 00431021 */  addu       $v0, $v0, $v1
/* 49B0 80099DB0 8442F398 */  lh         $v0, %lo(D_800FF398)($v0)
/* 49B4 80099DB4 14400006 */  bnez       $v0, .L80099DD0
/* 49B8 80099DB8 30C200FF */   andi      $v0, $a2, 0xFF
/* 49BC 80099DBC 3C028010 */  lui        $v0, %hi(D_800FF3A0)
/* 49C0 80099DC0 00431021 */  addu       $v0, $v0, $v1
/* 49C4 80099DC4 8442F3A0 */  lh         $v0, %lo(D_800FF3A0)($v0)
/* 49C8 80099DC8 10400009 */  beqz       $v0, .L80099DF0
/* 49CC 80099DCC 30C200FF */   andi      $v0, $a2, 0xFF
.L80099DD0:
/* 49D0 80099DD0 3C038010 */  lui        $v1, %hi(D_800FF390)
/* 49D4 80099DD4 2463F390 */  addiu      $v1, $v1, %lo(D_800FF390)
/* 49D8 80099DD8 00021040 */  sll        $v0, $v0, 1
/* 49DC 80099DDC 00431021 */  addu       $v0, $v0, $v1
/* 49E0 80099DE0 94430000 */  lhu        $v1, 0x0($v0)
/* 49E4 80099DE4 240C0001 */  addiu      $t4, $zero, 0x1
/* 49E8 80099DE8 24630001 */  addiu      $v1, $v1, 0x1
/* 49EC 80099DEC A4430000 */  sh         $v1, 0x0($v0)
.L80099DF0:
/* 49F0 80099DF0 30C300FF */  andi       $v1, $a2, 0xFF
/* 49F4 80099DF4 00031080 */  sll        $v0, $v1, 2
/* 49F8 80099DF8 00431021 */  addu       $v0, $v0, $v1
/* 49FC 80099DFC 000210C0 */  sll        $v0, $v0, 3
/* 4A00 80099E00 3C018017 */  lui        $at, %hi(D_8016E4AA)
/* 4A04 80099E04 00220821 */  addu       $at, $at, $v0
/* 4A08 80099E08 9422E4AA */  lhu        $v0, %lo(D_8016E4AA)($at)
/* 4A0C 80099E0C 30420F00 */  andi       $v0, $v0, 0xF00
/* 4A10 80099E10 14400023 */  bnez       $v0, .L80099EA0
/* 4A14 80099E14 30C200FF */   andi      $v0, $a2, 0xFF
/* 4A18 80099E18 00032040 */  sll        $a0, $v1, 1
/* 4A1C 80099E1C 3C028010 */  lui        $v0, %hi(D_800FF398)
/* 4A20 80099E20 00441021 */  addu       $v0, $v0, $a0
/* 4A24 80099E24 8442F398 */  lh         $v0, %lo(D_800FF398)($v0)
/* 4A28 80099E28 24030001 */  addiu      $v1, $zero, 0x1
/* 4A2C 80099E2C 1043001C */  beq        $v0, $v1, .L80099EA0
/* 4A30 80099E30 30C200FF */   andi      $v0, $a2, 0xFF
/* 4A34 80099E34 3C028010 */  lui        $v0, %hi(D_800FF3A0)
/* 4A38 80099E38 00441021 */  addu       $v0, $v0, $a0
/* 4A3C 80099E3C 8442F3A0 */  lh         $v0, %lo(D_800FF3A0)($v0)
/* 4A40 80099E40 10430016 */  beq        $v0, $v1, .L80099E9C
/* 4A44 80099E44 24030004 */   addiu     $v1, $zero, 0x4
/* 4A48 80099E48 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 4A4C 80099E4C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 4A50 80099E50 0062001A */  div        $zero, $v1, $v0
/* 4A54 80099E54 14400002 */  bnez       $v0, .L80099E60
/* 4A58 80099E58 00000000 */   nop
/* 4A5C 80099E5C 0007000D */  break      7
.L80099E60:
/* 4A60 80099E60 2401FFFF */  addiu      $at, $zero, -0x1
/* 4A64 80099E64 14410004 */  bne        $v0, $at, .L80099E78
/* 4A68 80099E68 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4A6C 80099E6C 14610002 */  bne        $v1, $at, .L80099E78
/* 4A70 80099E70 00000000 */   nop
/* 4A74 80099E74 0006000D */  break      6
.L80099E78:
/* 4A78 80099E78 00001812 */  mflo       $v1
/* 4A7C 80099E7C 00000000 */  nop
/* 4A80 80099E80 00000000 */  nop
/* 4A84 80099E84 3C028010 */  lui        $v0, %hi(D_800FF390)
/* 4A88 80099E88 00441021 */  addu       $v0, $v0, $a0
/* 4A8C 80099E8C 8442F390 */  lh         $v0, %lo(D_800FF390)($v0)
/* 4A90 80099E90 0043102A */  slt        $v0, $v0, $v1
/* 4A94 80099E94 14400007 */  bnez       $v0, .L80099EB4
/* 4A98 80099E98 30C300FF */   andi      $v1, $a2, 0xFF
.L80099E9C:
/* 4A9C 80099E9C 30C200FF */  andi       $v0, $a2, 0xFF
.L80099EA0:
/* 4AA0 80099EA0 00021040 */  sll        $v0, $v0, 1
/* 4AA4 80099EA4 3C018010 */  lui        $at, %hi(D_800FF390)
/* 4AA8 80099EA8 00220821 */  addu       $at, $at, $v0
/* 4AAC 80099EAC A420F390 */  sh         $zero, %lo(D_800FF390)($at)
/* 4AB0 80099EB0 30C300FF */  andi       $v1, $a2, 0xFF
.L80099EB4:
/* 4AB4 80099EB4 00032040 */  sll        $a0, $v1, 1
/* 4AB8 80099EB8 3C028010 */  lui        $v0, %hi(D_800FF390)
/* 4ABC 80099EBC 00441021 */  addu       $v0, $v0, $a0
/* 4AC0 80099EC0 8442F390 */  lh         $v0, %lo(D_800FF390)($v0)
/* 4AC4 80099EC4 14400069 */  bnez       $v0, .L8009A06C
/* 4AC8 80099EC8 00081400 */   sll       $v0, $t0, 16
/* 4ACC 80099ECC 00031080 */  sll        $v0, $v1, 2
/* 4AD0 80099ED0 00431021 */  addu       $v0, $v0, $v1
/* 4AD4 80099ED4 000238C0 */  sll        $a3, $v0, 3
/* 4AD8 80099ED8 3C038017 */  lui        $v1, %hi(D_8016E4AC)
/* 4ADC 80099EDC 00671821 */  addu       $v1, $v1, $a3
/* 4AE0 80099EE0 9463E4AC */  lhu        $v1, %lo(D_8016E4AC)($v1)
/* 4AE4 80099EE4 30620100 */  andi       $v0, $v1, 0x100
/* 4AE8 80099EE8 54400001 */  bnel       $v0, $zero, .L80099EF0
/* 4AEC 80099EEC 25080001 */   addiu     $t0, $t0, 0x1
.L80099EF0:
/* 4AF0 80099EF0 30620200 */  andi       $v0, $v1, 0x200
/* 4AF4 80099EF4 54400001 */  bnel       $v0, $zero, .L80099EFC
/* 4AF8 80099EF8 2508FFFF */   addiu     $t0, $t0, -0x1
.L80099EFC:
/* 4AFC 80099EFC 30620400 */  andi       $v0, $v1, 0x400
/* 4B00 80099F00 54400001 */  bnel       $v0, $zero, .L80099F08
/* 4B04 80099F04 25290001 */   addiu     $t1, $t1, 0x1
.L80099F08:
/* 4B08 80099F08 30620800 */  andi       $v0, $v1, 0x800
/* 4B0C 80099F0C 54400001 */  bnel       $v0, $zero, .L80099F14
/* 4B10 80099F10 2529FFFF */   addiu     $t1, $t1, -0x1
.L80099F14:
/* 4B14 80099F14 3C018010 */  lui        $at, %hi(D_800FF398)
/* 4B18 80099F18 00240821 */  addu       $at, $at, $a0
/* 4B1C 80099F1C 8424F398 */  lh         $a0, %lo(D_800FF398)($at)
/* 4B20 80099F20 24020001 */  addiu      $v0, $zero, 0x1
/* 4B24 80099F24 10820012 */  beq        $a0, $v0, .L80099F70
/* 4B28 80099F28 24020010 */   addiu     $v0, $zero, 0x10
/* 4B2C 80099F2C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 4B30 80099F30 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 4B34 80099F34 0043001A */  div        $zero, $v0, $v1
/* 4B38 80099F38 14600002 */  bnez       $v1, .L80099F44
/* 4B3C 80099F3C 00000000 */   nop
/* 4B40 80099F40 0007000D */  break      7
.L80099F44:
/* 4B44 80099F44 2401FFFF */  addiu      $at, $zero, -0x1
/* 4B48 80099F48 14610004 */  bne        $v1, $at, .L80099F5C
/* 4B4C 80099F4C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4B50 80099F50 14410002 */  bne        $v0, $at, .L80099F5C
/* 4B54 80099F54 00000000 */   nop
/* 4B58 80099F58 0006000D */  break      6
.L80099F5C:
/* 4B5C 80099F5C 00001012 */  mflo       $v0
/* 4B60 80099F60 00000000 */  nop
/* 4B64 80099F64 00000000 */  nop
/* 4B68 80099F68 54820013 */  bnel       $a0, $v0, .L80099FB8
/* 4B6C 80099F6C 30C600FF */   andi      $a2, $a2, 0xFF
.L80099F70:
/* 4B70 80099F70 3C018017 */  lui        $at, %hi(D_8016E4BC)
/* 4B74 80099F74 00270821 */  addu       $at, $at, $a3
/* 4B78 80099F78 C420E4BC */  lwc1       $f0, %lo(D_8016E4BC)($at)
/* 4B7C 80099F7C 44801000 */  mtc1       $zero, $f2
/* 4B80 80099F80 00000000 */  nop
/* 4B84 80099F84 4600103C */  c.lt.s     $f2, $f0
/* 4B88 80099F88 00000000 */  nop
/* 4B8C 80099F8C 45000003 */  bc1f       .L80099F9C
/* 4B90 80099F90 00000000 */   nop
/* 4B94 80099F94 080267ED */  j          .L80099FB4
/* 4B98 80099F98 240A0001 */   addiu     $t2, $zero, 0x1
.L80099F9C:
/* 4B9C 80099F9C 4602003C */  c.lt.s     $f0, $f2
/* 4BA0 80099FA0 00000000 */  nop
/* 4BA4 80099FA4 00000000 */  nop
/* 4BA8 80099FA8 45000002 */  bc1f       .L80099FB4
/* 4BAC 80099FAC 00005021 */   addu      $t2, $zero, $zero
/* 4BB0 80099FB0 240AFFFF */  addiu      $t2, $zero, -0x1
.L80099FB4:
/* 4BB4 80099FB4 30C600FF */  andi       $a2, $a2, 0xFF
.L80099FB8:
/* 4BB8 80099FB8 00061040 */  sll        $v0, $a2, 1
/* 4BBC 80099FBC 3C048010 */  lui        $a0, %hi(D_800FF3A0)
/* 4BC0 80099FC0 00822021 */  addu       $a0, $a0, $v0
/* 4BC4 80099FC4 8484F3A0 */  lh         $a0, %lo(D_800FF3A0)($a0)
/* 4BC8 80099FC8 24020001 */  addiu      $v0, $zero, 0x1
/* 4BCC 80099FCC 10820012 */  beq        $a0, $v0, .L8009A018
/* 4BD0 80099FD0 24020010 */   addiu     $v0, $zero, 0x10
/* 4BD4 80099FD4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 4BD8 80099FD8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 4BDC 80099FDC 0043001A */  div        $zero, $v0, $v1
/* 4BE0 80099FE0 14600002 */  bnez       $v1, .L80099FEC
/* 4BE4 80099FE4 00000000 */   nop
/* 4BE8 80099FE8 0007000D */  break      7
.L80099FEC:
/* 4BEC 80099FEC 2401FFFF */  addiu      $at, $zero, -0x1
/* 4BF0 80099FF0 14610004 */  bne        $v1, $at, .L8009A004
/* 4BF4 80099FF4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4BF8 80099FF8 14410002 */  bne        $v0, $at, .L8009A004
/* 4BFC 80099FFC 00000000 */   nop
/* 4C00 8009A000 0006000D */  break      6
.L8009A004:
/* 4C04 8009A004 00001012 */  mflo       $v0
/* 4C08 8009A008 00000000 */  nop
/* 4C0C 8009A00C 00000000 */  nop
/* 4C10 8009A010 14820016 */  bne        $a0, $v0, .L8009A06C
/* 4C14 8009A014 00081400 */   sll       $v0, $t0, 16
.L8009A018:
/* 4C18 8009A018 00061080 */  sll        $v0, $a2, 2
/* 4C1C 8009A01C 00461021 */  addu       $v0, $v0, $a2
/* 4C20 8009A020 000210C0 */  sll        $v0, $v0, 3
/* 4C24 8009A024 3C018017 */  lui        $at, %hi(D_8016E4C0)
/* 4C28 8009A028 00220821 */  addu       $at, $at, $v0
/* 4C2C 8009A02C C420E4C0 */  lwc1       $f0, %lo(D_8016E4C0)($at)
/* 4C30 8009A030 44801000 */  mtc1       $zero, $f2
/* 4C34 8009A034 00000000 */  nop
/* 4C38 8009A038 4600103C */  c.lt.s     $f2, $f0
/* 4C3C 8009A03C 00000000 */  nop
/* 4C40 8009A040 45000003 */  bc1f       .L8009A050
/* 4C44 8009A044 00000000 */   nop
/* 4C48 8009A048 0802681A */  j          .L8009A068
/* 4C4C 8009A04C 240B0001 */   addiu     $t3, $zero, 0x1
.L8009A050:
/* 4C50 8009A050 4602003C */  c.lt.s     $f0, $f2
/* 4C54 8009A054 00000000 */  nop
/* 4C58 8009A058 00000000 */  nop
/* 4C5C 8009A05C 45000002 */  bc1f       .L8009A068
/* 4C60 8009A060 00005821 */   addu      $t3, $zero, $zero
/* 4C64 8009A064 240BFFFF */  addiu      $t3, $zero, -0x1
.L8009A068:
/* 4C68 8009A068 00081400 */  sll        $v0, $t0, 16
.L8009A06C:
/* 4C6C 8009A06C 00021403 */  sra        $v0, $v0, 16
/* 4C70 8009A070 54400004 */  bnel       $v0, $zero, .L8009A084
/* 4C74 8009A074 ADA20000 */   sw        $v0, 0x0($t5)
/* 4C78 8009A078 000A1400 */  sll        $v0, $t2, 16
/* 4C7C 8009A07C 00021403 */  sra        $v0, $v0, 16
/* 4C80 8009A080 ADA20000 */  sw         $v0, 0x0($t5)
.L8009A084:
/* 4C84 8009A084 00091400 */  sll        $v0, $t1, 16
/* 4C88 8009A088 00021403 */  sra        $v0, $v0, 16
/* 4C8C 8009A08C 54400004 */  bnel       $v0, $zero, .L8009A0A0
/* 4C90 8009A090 ACA20000 */   sw        $v0, 0x0($a1)
/* 4C94 8009A094 000B1400 */  sll        $v0, $t3, 16
/* 4C98 8009A098 00021403 */  sra        $v0, $v0, 16
/* 4C9C 8009A09C ACA20000 */  sw         $v0, 0x0($a1)
.L8009A0A0:
/* 4CA0 8009A0A0 01801021 */  addu       $v0, $t4, $zero
/* 4CA4 8009A0A4 27BD0010 */  addiu      $sp, $sp, 0x10
/* 4CA8 8009A0A8 03E00008 */  jr         $ra
/* 4CAC 8009A0AC 00000000 */   nop
.size func_80099B58, . - func_80099B58