glabel func_800506E0_ovl3
/* F9BF0 800506E0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* F9BF4 800506E4 AFBF0030 */  sw         $ra, 0x30($sp)
/* F9BF8 800506E8 AFB3002C */  sw         $s3, 0x2C($sp)
/* F9BFC 800506EC AFB20028 */  sw         $s2, 0x28($sp)
/* F9C00 800506F0 AFB10024 */  sw         $s1, 0x24($sp)
/* F9C04 800506F4 AFB00020 */  sw         $s0, 0x20($sp)
/* F9C08 800506F8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* F9C0C 800506FC 0C00E109 */  jal        func_80038424_ovl3
/* F9C10 80050700 00009821 */   addu      $s3, $zero, $zero
/* F9C14 80050704 3C048031 */  lui        $a0, (0x80317420 >> 16)
/* F9C18 80050708 34847420 */  ori        $a0, $a0, (0x80317420 & 0xFFFF)
/* F9C1C 8005070C 240501FD */  addiu      $a1, $zero, 0x1FD
/* F9C20 80050710 24060009 */  addiu      $a2, $zero, 0x9
/* F9C24 80050714 0C00D9E0 */  jal        func_80036780_ovl3
/* F9C28 80050718 24070024 */   addiu     $a3, $zero, 0x24
/* F9C2C 8005071C 3C048032 */  lui        $a0, (0x80326230 >> 16)
/* F9C30 80050720 8C43000C */  lw         $v1, 0xC($v0)
/* F9C34 80050724 34846230 */  ori        $a0, $a0, (0x80326230 & 0xFFFF)
/* F9C38 80050728 240501F4 */  addiu      $a1, $zero, 0x1F4
/* F9C3C 8005072C 9462001E */  lhu        $v0, 0x1E($v1)
/* F9C40 80050730 24060009 */  addiu      $a2, $zero, 0x9
/* F9C44 80050734 24070023 */  addiu      $a3, $zero, 0x23
/* F9C48 80050738 34420004 */  ori        $v0, $v0, 0x4
/* F9C4C 8005073C 0C00D9E0 */  jal        func_80036780_ovl3
/* F9C50 80050740 A462001E */   sh        $v0, 0x1E($v1)
/* F9C54 80050744 8C43000C */  lw         $v1, 0xC($v0)
/* F9C58 80050748 2404020B */  addiu      $a0, $zero, 0x20B
/* F9C5C 8005074C 9462001E */  lhu        $v0, 0x1E($v1)
/* F9C60 80050750 24050002 */  addiu      $a1, $zero, 0x2
/* F9C64 80050754 2406001E */  addiu      $a2, $zero, 0x1E
/* F9C68 80050758 34420004 */  ori        $v0, $v0, 0x4
/* F9C6C 8005075C 0C00D925 */  jal        func_80036494_ovl3
/* F9C70 80050760 A462001E */   sh        $v0, 0x1E($v1)
/* F9C74 80050764 00408821 */  addu       $s1, $v0, $zero
/* F9C78 80050768 8E24000C */  lw         $a0, 0xC($s1)
/* F9C7C 8005076C 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* F9C80 80050770 3C073F81 */  lui        $a3, (0x3F8147AE >> 16)
/* F9C84 80050774 34E747AE */  ori        $a3, $a3, (0x3F8147AE & 0xFFFF)
/* F9C88 80050778 0C02915B */  jal        func_800A456C
/* F9C8C 8005077C 00002821 */   addu      $a1, $zero, $zero
/* F9C90 80050780 8E24000C */  lw         $a0, 0xC($s1)
/* F9C94 80050784 24050040 */  addiu      $a1, $zero, 0x40
/* F9C98 80050788 0C028D89 */  jal        func_800A3624
/* F9C9C 8005078C 240600C0 */   addiu     $a2, $zero, 0xC0
/* F9CA0 80050790 8E23000C */  lw         $v1, 0xC($s1)
/* F9CA4 80050794 9462001E */  lhu        $v0, 0x1E($v1)
/* F9CA8 80050798 34420004 */  ori        $v0, $v0, 0x4
/* F9CAC 8005079C A462001E */  sh         $v0, 0x1E($v1)
/* F9CB0 800507A0 26640206 */  addiu      $a0, $s3, 0x206
.L800507A4_ovl3:
/* F9CB4 800507A4 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* F9CB8 800507A8 24050002 */  addiu      $a1, $zero, 0x2
/* F9CBC 800507AC 26700025 */  addiu      $s0, $s3, 0x25
/* F9CC0 800507B0 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* F9CC4 800507B4 0C00D925 */  jal        func_80036494_ovl3
/* F9CC8 800507B8 02003021 */   addu      $a2, $s0, $zero
/* F9CCC 800507BC 00408821 */  addu       $s1, $v0, $zero
/* F9CD0 800507C0 8E24000C */  lw         $a0, 0xC($s1)
/* F9CD4 800507C4 8C82000C */  lw         $v0, 0xC($a0)
/* F9CD8 800507C8 94450000 */  lhu        $a1, 0x0($v0)
/* F9CDC 800507CC 94460002 */  lhu        $a2, 0x2($v0)
/* F9CE0 800507D0 00052842 */  srl        $a1, $a1, 1
/* F9CE4 800507D4 0C02912A */  jal        func_800A44A8
/* F9CE8 800507D8 00063042 */   srl       $a2, $a2, 1
/* F9CEC 800507DC 8E24000C */  lw         $a0, 0xC($s1)
/* F9CF0 800507E0 24050280 */  addiu      $a1, $zero, 0x280
/* F9CF4 800507E4 0C028D89 */  jal        func_800A3624
/* F9CF8 800507E8 240601E0 */   addiu     $a2, $zero, 0x1E0
/* F9CFC 800507EC 8E23000C */  lw         $v1, 0xC($s1)
/* F9D00 800507F0 2402004B */  addiu      $v0, $zero, 0x4B
/* F9D04 800507F4 A462001C */  sh         $v0, 0x1C($v1)
/* F9D08 800507F8 8E23000C */  lw         $v1, 0xC($s1)
/* F9D0C 800507FC 02002021 */  addu       $a0, $s0, $zero
/* F9D10 80050800 9462001E */  lhu        $v0, 0x1E($v1)
/* F9D14 80050804 2665002A */  addiu      $a1, $s3, 0x2A
/* F9D18 80050808 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* F9D1C 8005080C 34420004 */  ori        $v0, $v0, 0x4
/* F9D20 80050810 0C00DD19 */  jal        func_80037464_ovl3
/* F9D24 80050814 A462001E */   sh        $v0, 0x1E($v1)
/* F9D28 80050818 00408821 */  addu       $s1, $v0, $zero
/* F9D2C 8005081C 8E24000C */  lw         $a0, 0xC($s1)
/* F9D30 80050820 8C82000C */  lw         $v0, 0xC($a0)
/* F9D34 80050824 94450000 */  lhu        $a1, 0x0($v0)
/* F9D38 80050828 94460002 */  lhu        $a2, 0x2($v0)
/* F9D3C 8005082C 00052842 */  srl        $a1, $a1, 1
/* F9D40 80050830 0C02912A */  jal        func_800A44A8
/* F9D44 80050834 00063042 */   srl       $a2, $a2, 1
/* F9D48 80050838 8E24000C */  lw         $a0, 0xC($s1)
/* F9D4C 8005083C 24050280 */  addiu      $a1, $zero, 0x280
/* F9D50 80050840 0C028D89 */  jal        func_800A3624
/* F9D54 80050844 240601E0 */   addiu     $a2, $zero, 0x1E0
/* F9D58 80050848 24020080 */  addiu      $v0, $zero, 0x80
/* F9D5C 8005084C AFA20010 */  sw         $v0, 0x10($sp)
/* F9D60 80050850 8E24000C */  lw         $a0, 0xC($s1)
/* F9D64 80050854 240500FF */  addiu      $a1, $zero, 0xFF
/* F9D68 80050858 240600FF */  addiu      $a2, $zero, 0xFF
/* F9D6C 8005085C 0C028E41 */  jal        func_800A3904
/* F9D70 80050860 240700FF */   addiu     $a3, $zero, 0xFF
/* F9D74 80050864 8E23000C */  lw         $v1, 0xC($s1)
/* F9D78 80050868 2402004A */  addiu      $v0, $zero, 0x4A
/* F9D7C 8005086C A462001C */  sh         $v0, 0x1C($v1)
/* F9D80 80050870 8E23000C */  lw         $v1, 0xC($s1)
/* F9D84 80050874 9462001E */  lhu        $v0, 0x1E($v1)
/* F9D88 80050878 26730001 */  addiu      $s3, $s3, 0x1
/* F9D8C 8005087C 02002021 */  addu       $a0, $s0, $zero
/* F9D90 80050880 34420004 */  ori        $v0, $v0, 0x4
/* F9D94 80050884 0C00D8C1 */  jal        func_80036304_ovl3
/* F9D98 80050888 A462001E */   sh        $v0, 0x1E($v1)
/* F9D9C 8005088C 8C44000C */  lw         $a0, 0xC($v0)
/* F9DA0 80050890 24050001 */  addiu      $a1, $zero, 0x1
/* F9DA4 80050894 0C00DE72 */  jal        func_800379C8_ovl3
/* F9DA8 80050898 00003021 */   addu      $a2, $zero, $zero
/* F9DAC 8005089C 3262FFFF */  andi       $v0, $s3, 0xFFFF
/* F9DB0 800508A0 2C420005 */  sltiu      $v0, $v0, 0x5
/* F9DB4 800508A4 1440FFBF */  bnez       $v0, .L800507A4_ovl3
/* F9DB8 800508A8 26640206 */   addiu     $a0, $s3, 0x206
/* F9DBC 800508AC 24040011 */  addiu      $a0, $zero, 0x11
/* F9DC0 800508B0 24050001 */  addiu      $a1, $zero, 0x1
/* F9DC4 800508B4 0C00D925 */  jal        func_80036494_ovl3
/* F9DC8 800508B8 24060017 */   addiu     $a2, $zero, 0x17
/* F9DCC 800508BC 00408821 */  addu       $s1, $v0, $zero
/* F9DD0 800508C0 8E24000C */  lw         $a0, 0xC($s1)
/* F9DD4 800508C4 24050038 */  addiu      $a1, $zero, 0x38
/* F9DD8 800508C8 0C028F9A */  jal        func_800A3E68
/* F9DDC 800508CC 24060071 */   addiu     $a2, $zero, 0x71
/* F9DE0 800508D0 8E24000C */  lw         $a0, 0xC($s1)
/* F9DE4 800508D4 24050040 */  addiu      $a1, $zero, 0x40
/* F9DE8 800508D8 0C028D89 */  jal        func_800A3624
/* F9DEC 800508DC 240600C0 */   addiu     $a2, $zero, 0xC0
/* F9DF0 800508E0 3C048033 */  lui        $a0, (0x80335040 >> 16)
/* F9DF4 800508E4 34845040 */  ori        $a0, $a0, (0x80335040 & 0xFFFF)
/* F9DF8 800508E8 2405020C */  addiu      $a1, $zero, 0x20C
/* F9DFC 800508EC 24060005 */  addiu      $a2, $zero, 0x5
/* F9E00 800508F0 0C00D9E0 */  jal        func_80036780_ovl3
/* F9E04 800508F4 24070049 */   addiu     $a3, $zero, 0x49
/* F9E08 800508F8 00408821 */  addu       $s1, $v0, $zero
/* F9E0C 800508FC 8E24000C */  lw         $a0, 0xC($s1)
/* F9E10 80050900 3C064000 */  lui        $a2, (0x4000A3D7 >> 16)
/* F9E14 80050904 34C6A3D7 */  ori        $a2, $a2, (0x4000A3D7 & 0xFFFF)
/* F9E18 80050908 3C074001 */  lui        $a3, (0x400147AE >> 16)
/* F9E1C 8005090C 34E747AE */  ori        $a3, $a3, (0x400147AE & 0xFFFF)
/* F9E20 80050910 0C02915B */  jal        func_800A456C
/* F9E24 80050914 00002821 */   addu      $a1, $zero, $zero
/* F9E28 80050918 8E24000C */  lw         $a0, 0xC($s1)
/* F9E2C 8005091C 24050040 */  addiu      $a1, $zero, 0x40
/* F9E30 80050920 0C028D89 */  jal        func_800A3624
/* F9E34 80050924 240600C0 */   addiu     $a2, $zero, 0xC0
/* F9E38 80050928 8E23000C */  lw         $v1, 0xC($s1)
/* F9E3C 8005092C 9462001E */  lhu        $v0, 0x1E($v1)
/* F9E40 80050930 3C014000 */  lui        $at, (0x40000000 >> 16)
/* F9E44 80050934 4481A000 */  mtc1       $at, $f20
/* F9E48 80050938 00009821 */  addu       $s3, $zero, $zero
/* F9E4C 8005093C 34420004 */  ori        $v0, $v0, 0x4
/* F9E50 80050940 A462001E */  sh         $v0, 0x1E($v1)
/* F9E54 80050944 26640211 */  addiu      $a0, $s3, 0x211
.L80050948_ovl3:
/* F9E58 80050948 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* F9E5C 8005094C 24050002 */  addiu      $a1, $zero, 0x2
/* F9E60 80050950 2670003D */  addiu      $s0, $s3, 0x3D
/* F9E64 80050954 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* F9E68 80050958 0C00D925 */  jal        func_80036494_ovl3
/* F9E6C 8005095C 02003021 */   addu      $a2, $s0, $zero
/* F9E70 80050960 00408821 */  addu       $s1, $v0, $zero
/* F9E74 80050964 8E24000C */  lw         $a0, 0xC($s1)
/* F9E78 80050968 8C82000C */  lw         $v0, 0xC($a0)
/* F9E7C 8005096C 94450000 */  lhu        $a1, 0x0($v0)
/* F9E80 80050970 24060038 */  addiu      $a2, $zero, 0x38
/* F9E84 80050974 0C02912A */  jal        func_800A44A8
/* F9E88 80050978 00052842 */   srl       $a1, $a1, 1
/* F9E8C 8005097C 8E24000C */  lw         $a0, 0xC($s1)
/* F9E90 80050980 4406A000 */  mfc1       $a2, $f20
/* F9E94 80050984 4407A000 */  mfc1       $a3, $f20
/* F9E98 80050988 00000000 */  nop
/* F9E9C 8005098C 0C02915B */  jal        func_800A456C
/* F9EA0 80050990 00002821 */   addu      $a1, $zero, $zero
/* F9EA4 80050994 8E24000C */  lw         $a0, 0xC($s1)
/* F9EA8 80050998 24050280 */  addiu      $a1, $zero, 0x280
/* F9EAC 8005099C 0C028D89 */  jal        func_800A3624
/* F9EB0 800509A0 24060280 */   addiu     $a2, $zero, 0x280
/* F9EB4 800509A4 8E23000C */  lw         $v1, 0xC($s1)
/* F9EB8 800509A8 2402004B */  addiu      $v0, $zero, 0x4B
/* F9EBC 800509AC A462001C */  sh         $v0, 0x1C($v1)
/* F9EC0 800509B0 8E23000C */  lw         $v1, 0xC($s1)
/* F9EC4 800509B4 02002021 */  addu       $a0, $s0, $zero
/* F9EC8 800509B8 9462001E */  lhu        $v0, 0x1E($v1)
/* F9ECC 800509BC 26650043 */  addiu      $a1, $s3, 0x43
/* F9ED0 800509C0 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* F9ED4 800509C4 34420004 */  ori        $v0, $v0, 0x4
/* F9ED8 800509C8 0C00DD19 */  jal        func_80037464_ovl3
/* F9EDC 800509CC A462001E */   sh        $v0, 0x1E($v1)
/* F9EE0 800509D0 00408821 */  addu       $s1, $v0, $zero
/* F9EE4 800509D4 8E24000C */  lw         $a0, 0xC($s1)
/* F9EE8 800509D8 8C82000C */  lw         $v0, 0xC($a0)
/* F9EEC 800509DC 94450000 */  lhu        $a1, 0x0($v0)
/* F9EF0 800509E0 24060038 */  addiu      $a2, $zero, 0x38
/* F9EF4 800509E4 0C02912A */  jal        func_800A44A8
/* F9EF8 800509E8 00052842 */   srl       $a1, $a1, 1
/* F9EFC 800509EC 8E24000C */  lw         $a0, 0xC($s1)
/* F9F00 800509F0 4406A000 */  mfc1       $a2, $f20
/* F9F04 800509F4 4407A000 */  mfc1       $a3, $f20
/* F9F08 800509F8 00000000 */  nop
/* F9F0C 800509FC 0C02915B */  jal        func_800A456C
/* F9F10 80050A00 00002821 */   addu      $a1, $zero, $zero
/* F9F14 80050A04 8E24000C */  lw         $a0, 0xC($s1)
/* F9F18 80050A08 24050280 */  addiu      $a1, $zero, 0x280
/* F9F1C 80050A0C 0C028D89 */  jal        func_800A3624
/* F9F20 80050A10 24060280 */   addiu     $a2, $zero, 0x280
/* F9F24 80050A14 8E24000C */  lw         $a0, 0xC($s1)
/* F9F28 80050A18 00002821 */  addu       $a1, $zero, $zero
/* F9F2C 80050A1C 0C00DE6C */  jal        func_800379B0_ovl3
/* F9F30 80050A20 3406A56A */   ori       $a2, $zero, 0xA56A
/* F9F34 80050A24 240200C0 */  addiu      $v0, $zero, 0xC0
/* F9F38 80050A28 AFA20010 */  sw         $v0, 0x10($sp)
/* F9F3C 80050A2C 8E24000C */  lw         $a0, 0xC($s1)
/* F9F40 80050A30 240500FF */  addiu      $a1, $zero, 0xFF
/* F9F44 80050A34 240600FF */  addiu      $a2, $zero, 0xFF
/* F9F48 80050A38 0C028E41 */  jal        func_800A3904
/* F9F4C 80050A3C 240700FF */   addiu     $a3, $zero, 0xFF
/* F9F50 80050A40 8E23000C */  lw         $v1, 0xC($s1)
/* F9F54 80050A44 2402004A */  addiu      $v0, $zero, 0x4A
/* F9F58 80050A48 A462001C */  sh         $v0, 0x1C($v1)
/* F9F5C 80050A4C 8E23000C */  lw         $v1, 0xC($s1)
/* F9F60 80050A50 9462001E */  lhu        $v0, 0x1E($v1)
/* F9F64 80050A54 24120001 */  addiu      $s2, $zero, 0x1
/* F9F68 80050A58 02002021 */  addu       $a0, $s0, $zero
/* F9F6C 80050A5C 34420004 */  ori        $v0, $v0, 0x4
/* F9F70 80050A60 0C00D8C1 */  jal        func_80036304_ovl3
/* F9F74 80050A64 A462001E */   sh        $v0, 0x1E($v1)
/* F9F78 80050A68 00408821 */  addu       $s1, $v0, $zero
/* F9F7C 80050A6C 8E24000C */  lw         $a0, 0xC($s1)
/* F9F80 80050A70 00002821 */  addu       $a1, $zero, $zero
/* F9F84 80050A74 0C00DE6C */  jal        func_800379B0_ovl3
/* F9F88 80050A78 3406FFFE */   ori       $a2, $zero, 0xFFFE
.L80050A7C_ovl3:
/* F9F8C 80050A7C 8E24000C */  lw         $a0, 0xC($s1)
/* F9F90 80050A80 324500FF */  andi       $a1, $s2, 0xFF
/* F9F94 80050A84 00003021 */  addu       $a2, $zero, $zero
/* F9F98 80050A88 0C00DE72 */  jal        func_800379C8_ovl3
/* F9F9C 80050A8C 26520001 */   addiu     $s2, $s2, 0x1
/* F9FA0 80050A90 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* F9FA4 80050A94 2C42000F */  sltiu      $v0, $v0, 0xF
/* F9FA8 80050A98 1440FFF8 */  bnez       $v0, .L80050A7C_ovl3
/* F9FAC 80050A9C 00000000 */   nop
/* F9FB0 80050AA0 26730001 */  addiu      $s3, $s3, 0x1
/* F9FB4 80050AA4 3262FFFF */  andi       $v0, $s3, 0xFFFF
/* F9FB8 80050AA8 2C420006 */  sltiu      $v0, $v0, 0x6
/* F9FBC 80050AAC 1440FFA6 */  bnez       $v0, .L80050948_ovl3
/* F9FC0 80050AB0 26640211 */   addiu     $a0, $s3, 0x211
/* F9FC4 80050AB4 27A40018 */  addiu      $a0, $sp, 0x18
/* F9FC8 80050AB8 240520C9 */  addiu      $a1, $zero, 0x20C9
/* F9FCC 80050ABC 24060002 */  addiu      $a2, $zero, 0x2
/* F9FD0 80050AC0 3C028007 */  lui        $v0, %hi(D_800692CC_ovl3)
/* F9FD4 80050AC4 244292CC */  addiu      $v0, $v0, %lo(D_800692CC_ovl3)
/* F9FD8 80050AC8 2412FFFE */  addiu      $s2, $zero, -0x2
/* F9FDC 80050ACC 24110001 */  addiu      $s1, $zero, 0x1
/* F9FE0 80050AD0 24100003 */  addiu      $s0, $zero, 0x3
/* F9FE4 80050AD4 AFA20018 */  sw         $v0, 0x18($sp)
/* F9FE8 80050AD8 A3B2001C */  sb         $s2, 0x1C($sp)
/* F9FEC 80050ADC A3A0001D */  sb         $zero, 0x1D($sp)
/* F9FF0 80050AE0 A3B1001E */  sb         $s1, 0x1E($sp)
/* F9FF4 80050AE4 0C00DE82 */  jal        func_80037A08_ovl3
/* F9FF8 80050AE8 A3B0001F */   sb        $s0, 0x1F($sp)
/* F9FFC 80050AEC 27A40018 */  addiu      $a0, $sp, 0x18
/* FA000 80050AF0 240520CA */  addiu      $a1, $zero, 0x20CA
/* FA004 80050AF4 24060002 */  addiu      $a2, $zero, 0x2
/* FA008 80050AF8 3C028007 */  lui        $v0, %hi(D_800692E8_ovl3)
/* FA00C 80050AFC 244292E8 */  addiu      $v0, $v0, %lo(D_800692E8_ovl3)
/* FA010 80050B00 AFA20018 */  sw         $v0, 0x18($sp)
/* FA014 80050B04 A3B2001C */  sb         $s2, 0x1C($sp)
/* FA018 80050B08 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA01C 80050B0C A3B1001E */  sb         $s1, 0x1E($sp)
/* FA020 80050B10 0C00DE82 */  jal        func_80037A08_ovl3
/* FA024 80050B14 A3B0001F */   sb        $s0, 0x1F($sp)
/* FA028 80050B18 8FBF0030 */  lw         $ra, 0x30($sp)
/* FA02C 80050B1C 8FB3002C */  lw         $s3, 0x2C($sp)
/* FA030 80050B20 8FB20028 */  lw         $s2, 0x28($sp)
/* FA034 80050B24 8FB10024 */  lw         $s1, 0x24($sp)
/* FA038 80050B28 8FB00020 */  lw         $s0, 0x20($sp)
/* FA03C 80050B2C D7B40038 */  ldc1       $f20, 0x38($sp)
/* FA040 80050B30 03E00008 */  jr         $ra
/* FA044 80050B34 27BD0040 */   addiu     $sp, $sp, 0x40
.size func_800506E0_ovl3, . - func_800506E0_ovl3
