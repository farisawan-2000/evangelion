.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_800386D0_E1BE0
/* E1BE0 800386D0 27BDFF08 */  addiu      $sp, $sp, -0xf8
/* E1BE4 800386D4 AFB600F0 */  sw         $s6, 0xf0($sp)
/* E1BE8 800386D8 0080B021 */  addu       $s6, $a0, $zero
/* E1BEC 800386DC 27A70020 */  addiu      $a3, $sp, 0x20
/* E1BF0 800386E0 3C068007 */  lui        $a2, %hi(D_80069E60)
/* E1BF4 800386E4 24C69E60 */  addiu      $a2, $a2, %lo(D_80069E60)
/* E1BF8 800386E8 24C800B0 */  addiu      $t0, $a2, 0xb0
/* E1BFC 800386EC AFBF00F4 */  sw         $ra, 0xf4($sp)
/* E1C00 800386F0 AFB500EC */  sw         $s5, 0xec($sp)
/* E1C04 800386F4 AFB400E8 */  sw         $s4, 0xe8($sp)
/* E1C08 800386F8 AFB300E4 */  sw         $s3, 0xe4($sp)
/* E1C0C 800386FC AFB200E0 */  sw         $s2, 0xe0($sp)
/* E1C10 80038700 AFB100DC */  sw         $s1, 0xdc($sp)
/* E1C14 80038704 AFB000D8 */  sw         $s0, 0xd8($sp)
.L80038708:
/* E1C18 80038708 8CC20000 */  lw         $v0, ($a2)
/* E1C1C 8003870C 8CC30004 */  lw         $v1, 4($a2)
/* E1C20 80038710 8CC40008 */  lw         $a0, 8($a2)
/* E1C24 80038714 8CC5000C */  lw         $a1, 0xc($a2)
/* E1C28 80038718 ACE20000 */  sw         $v0, ($a3)
/* E1C2C 8003871C ACE30004 */  sw         $v1, 4($a3)
/* E1C30 80038720 ACE40008 */  sw         $a0, 8($a3)
/* E1C34 80038724 ACE5000C */  sw         $a1, 0xc($a3)
/* E1C38 80038728 24C60010 */  addiu      $a2, $a2, 0x10
/* E1C3C 8003872C 14C8FFF6 */  bne        $a2, $t0, .L80038708
/* E1C40 80038730 24E70010 */   addiu     $a3, $a3, 0x10
/* E1C44 80038734 8CC20000 */  lw         $v0, ($a2)
/* E1C48 80038738 ACE20000 */  sw         $v0, ($a3)
/* E1C4C 8003873C 32C300FF */  andi       $v1, $s6, 0xff
/* E1C50 80038740 24020004 */  addiu      $v0, $zero, 4
/* E1C54 80038744 54620018 */  bnel       $v1, $v0, .L800387A8
/* E1C58 80038748 24040199 */   addiu     $a0, $zero, 0x199
/* E1C5C 8003874C 27A40018 */  addiu      $a0, $sp, 0x18
/* E1C60 80038750 240540C9 */  addiu      $a1, $zero, 0x40c9
/* E1C64 80038754 240640CC */  addiu      $a2, $zero, 0x40cc
/* E1C68 80038758 24070017 */  addiu      $a3, $zero, 0x17
/* E1C6C 8003875C 3C028007 */  lui        $v0, %hi(D_80068D40)
/* E1C70 80038760 24428D40 */  addiu      $v0, $v0, %lo(D_80068D40)
/* E1C74 80038764 AFA20018 */  sw         $v0, 0x18($sp)
/* E1C78 80038768 2402FFFC */  addiu      $v0, $zero, -4
/* E1C7C 8003876C A3A2001C */  sb         $v0, 0x1c($sp)
/* E1C80 80038770 24020001 */  addiu      $v0, $zero, 1
/* E1C84 80038774 A3A2001E */  sb         $v0, 0x1e($sp)
/* E1C88 80038778 24020002 */  addiu      $v0, $zero, 2
/* E1C8C 8003877C A3A2001F */  sb         $v0, 0x1f($sp)
/* E1C90 80038780 24020018 */  addiu      $v0, $zero, 0x18
/* E1C94 80038784 A3A0001D */  sb         $zero, 0x1d($sp)
/* E1C98 80038788 0C00DEF7 */  jal        func_80037BDC_E10EC
/* E1C9C 8003878C AFA20010 */   sw        $v0, 0x10($sp)
/* E1CA0 80038790 0C00D8C1 */  jal        func_80036304_DF814
/* E1CA4 80038794 240440C9 */   addiu     $a0, $zero, 0x40c9
/* E1CA8 80038798 8C43000C */  lw         $v1, 0xc($v0)
/* E1CAC 8003879C 24020058 */  addiu      $v0, $zero, 0x58
/* E1CB0 800387A0 0800E1F5 */  j          .L800387D4
/* E1CB4 800387A4 A462001C */   sh        $v0, 0x1c($v1)
.L800387A8:
/* E1CB8 800387A8 24050005 */  addiu      $a1, $zero, 5
/* E1CBC 800387AC 0C00D925 */  jal        func_80036494_DF9A4
/* E1CC0 800387B0 240640C9 */   addiu     $a2, $zero, 0x40c9
/* E1CC4 800387B4 00402021 */  addu       $a0, $v0, $zero
/* E1CC8 800387B8 8C83000C */  lw         $v1, 0xc($a0)
/* E1CCC 800387BC 24020058 */  addiu      $v0, $zero, 0x58
/* E1CD0 800387C0 A462001C */  sh         $v0, 0x1c($v1)
/* E1CD4 800387C4 8C84000C */  lw         $a0, 0xc($a0)
/* E1CD8 800387C8 24050050 */  addiu      $a1, $zero, 0x50
/* E1CDC 800387CC 0C028D89 */  jal        func_800A3624
/* E1CE0 800387D0 24060060 */   addiu     $a2, $zero, 0x60
.L800387D4:
/* E1CE4 800387D4 24040198 */  addiu      $a0, $zero, 0x198
/* E1CE8 800387D8 24050005 */  addiu      $a1, $zero, 5
/* E1CEC 800387DC 0C00D925 */  jal        func_80036494_DF9A4
/* E1CF0 800387E0 240640CD */   addiu     $a2, $zero, 0x40cd
/* E1CF4 800387E4 00402021 */  addu       $a0, $v0, $zero
/* E1CF8 800387E8 8C82000C */  lw         $v0, 0xc($a0)
/* E1CFC 800387EC 24110058 */  addiu      $s1, $zero, 0x58
/* E1D00 800387F0 A451001C */  sh         $s1, 0x1c($v0)
/* E1D04 800387F4 8C84000C */  lw         $a0, 0xc($a0)
/* E1D08 800387F8 24050050 */  addiu      $a1, $zero, 0x50
/* E1D0C 800387FC 0C028D89 */  jal        func_800A3624
/* E1D10 80038800 240600D0 */   addiu     $a2, $zero, 0xd0
/* E1D14 80038804 24040197 */  addiu      $a0, $zero, 0x197
/* E1D18 80038808 24050005 */  addiu      $a1, $zero, 5
/* E1D1C 8003880C 0C00D925 */  jal        func_80036494_DF9A4
/* E1D20 80038810 240640D0 */   addiu     $a2, $zero, 0x40d0
/* E1D24 80038814 00402021 */  addu       $a0, $v0, $zero
/* E1D28 80038818 8C82000C */  lw         $v0, 0xc($a0)
/* E1D2C 8003881C A451001C */  sh         $s1, 0x1c($v0)
/* E1D30 80038820 8C84000C */  lw         $a0, 0xc($a0)
/* E1D34 80038824 24050050 */  addiu      $a1, $zero, 0x50
/* E1D38 80038828 0C028D89 */  jal        func_800A3624
/* E1D3C 8003882C 24060140 */   addiu     $a2, $zero, 0x140
/* E1D40 80038830 26C3FFFF */  addiu      $v1, $s6, -1
/* E1D44 80038834 27A40018 */  addiu      $a0, $sp, 0x18
/* E1D48 80038838 240540CA */  addiu      $a1, $zero, 0x40ca
/* E1D4C 8003883C 240640CB */  addiu      $a2, $zero, 0x40cb
/* E1D50 80038840 306300FF */  andi       $v1, $v1, 0xff
/* E1D54 80038844 00031040 */  sll        $v0, $v1, 1
/* E1D58 80038848 00431021 */  addu       $v0, $v0, $v1
/* E1D5C 8003884C 00021080 */  sll        $v0, $v0, 2
/* E1D60 80038850 27B00020 */  addiu      $s0, $sp, 0x20
/* E1D64 80038854 02028021 */  addu       $s0, $s0, $v0
/* E1D68 80038858 8E020000 */  lw         $v0, ($s0)
/* E1D6C 8003885C 2407006C */  addiu      $a3, $zero, 0x6c
/* E1D70 80038860 2414FFFC */  addiu      $s4, $zero, -4
/* E1D74 80038864 24150001 */  addiu      $s5, $zero, 1
/* E1D78 80038868 24120002 */  addiu      $s2, $zero, 2
/* E1D7C 8003886C A3B4001C */  sb         $s4, 0x1c($sp)
/* E1D80 80038870 A3A0001D */  sb         $zero, 0x1d($sp)
/* E1D84 80038874 A3B5001E */  sb         $s5, 0x1e($sp)
/* E1D88 80038878 A3B2001F */  sb         $s2, 0x1f($sp)
/* E1D8C 8003887C AFA20018 */  sw         $v0, 0x18($sp)
/* E1D90 80038880 24020018 */  addiu      $v0, $zero, 0x18
/* E1D94 80038884 0C00DEF7 */  jal        func_80037BDC_E10EC
/* E1D98 80038888 AFA20010 */   sw        $v0, 0x10($sp)
/* E1D9C 8003888C 0C00D8C1 */  jal        func_80036304_DF814
/* E1DA0 80038890 240440CA */   addiu     $a0, $zero, 0x40ca
/* E1DA4 80038894 8C42000C */  lw         $v0, 0xc($v0)
/* E1DA8 80038898 240440CB */  addiu      $a0, $zero, 0x40cb
/* E1DAC 8003889C 0C00D8C1 */  jal        func_80036304_DF814
/* E1DB0 800388A0 A451001C */   sh        $s1, 0x1c($v0)
/* E1DB4 800388A4 27A40018 */  addiu      $a0, $sp, 0x18
/* E1DB8 800388A8 8C42000C */  lw         $v0, 0xc($v0)
/* E1DBC 800388AC 240540CE */  addiu      $a1, $zero, 0x40ce
/* E1DC0 800388B0 24130057 */  addiu      $s3, $zero, 0x57
/* E1DC4 800388B4 A453001C */  sh         $s3, 0x1c($v0)
/* E1DC8 800388B8 8E020004 */  lw         $v0, 4($s0)
/* E1DCC 800388BC 240640CF */  addiu      $a2, $zero, 0x40cf
/* E1DD0 800388C0 2407006C */  addiu      $a3, $zero, 0x6c
/* E1DD4 800388C4 A3B4001C */  sb         $s4, 0x1c($sp)
/* E1DD8 800388C8 A3A0001D */  sb         $zero, 0x1d($sp)
/* E1DDC 800388CC A3B5001E */  sb         $s5, 0x1e($sp)
/* E1DE0 800388D0 A3B2001F */  sb         $s2, 0x1f($sp)
/* E1DE4 800388D4 AFA20018 */  sw         $v0, 0x18($sp)
/* E1DE8 800388D8 24020034 */  addiu      $v0, $zero, 0x34
/* E1DEC 800388DC 0C00DEF7 */  jal        func_80037BDC_E10EC
/* E1DF0 800388E0 AFA20010 */   sw        $v0, 0x10($sp)
/* E1DF4 800388E4 0C00D8C1 */  jal        func_80036304_DF814
/* E1DF8 800388E8 240440CE */   addiu     $a0, $zero, 0x40ce
/* E1DFC 800388EC 8C42000C */  lw         $v0, 0xc($v0)
/* E1E00 800388F0 240440CF */  addiu      $a0, $zero, 0x40cf
/* E1E04 800388F4 0C00D8C1 */  jal        func_80036304_DF814
/* E1E08 800388F8 A451001C */   sh        $s1, 0x1c($v0)
/* E1E0C 800388FC 8C42000C */  lw         $v0, 0xc($v0)
/* E1E10 80038900 27A40018 */  addiu      $a0, $sp, 0x18
/* E1E14 80038904 240540D1 */  addiu      $a1, $zero, 0x40d1
/* E1E18 80038908 240640D2 */  addiu      $a2, $zero, 0x40d2
/* E1E1C 8003890C A453001C */  sh         $s3, 0x1c($v0)
/* E1E20 80038910 8E030008 */  lw         $v1, 8($s0)
/* E1E24 80038914 2407006C */  addiu      $a3, $zero, 0x6c
/* E1E28 80038918 2402FFFE */  addiu      $v0, $zero, -2
/* E1E2C 8003891C A3A2001D */  sb         $v0, 0x1d($sp)
/* E1E30 80038920 24020050 */  addiu      $v0, $zero, 0x50
/* E1E34 80038924 A3B4001C */  sb         $s4, 0x1c($sp)
/* E1E38 80038928 A3B5001E */  sb         $s5, 0x1e($sp)
/* E1E3C 8003892C A3B2001F */  sb         $s2, 0x1f($sp)
/* E1E40 80038930 AFA30018 */  sw         $v1, 0x18($sp)
/* E1E44 80038934 0C00DEF7 */  jal        func_80037BDC_E10EC
/* E1E48 80038938 AFA20010 */   sw        $v0, 0x10($sp)
/* E1E4C 8003893C 0C00D8C1 */  jal        func_80036304_DF814
/* E1E50 80038940 240440D1 */   addiu     $a0, $zero, 0x40d1
/* E1E54 80038944 8C42000C */  lw         $v0, 0xc($v0)
/* E1E58 80038948 240440D2 */  addiu      $a0, $zero, 0x40d2
/* E1E5C 8003894C 0C00D8C1 */  jal        func_80036304_DF814
/* E1E60 80038950 A451001C */   sh        $s1, 0x1c($v0)
/* E1E64 80038954 2404018B */  addiu      $a0, $zero, 0x18b
/* E1E68 80038958 8C42000C */  lw         $v0, 0xc($v0)
/* E1E6C 8003895C 24050005 */  addiu      $a1, $zero, 5
/* E1E70 80038960 240640D3 */  addiu      $a2, $zero, 0x40d3
/* E1E74 80038964 0C00D925 */  jal        func_80036494_DF9A4
/* E1E78 80038968 A453001C */   sh        $s3, 0x1c($v0)
/* E1E7C 8003896C 00402021 */  addu       $a0, $v0, $zero
/* E1E80 80038970 8C82000C */  lw         $v0, 0xc($a0)
/* E1E84 80038974 A451001C */  sh         $s1, 0x1c($v0)
/* E1E88 80038978 8C84000C */  lw         $a0, 0xc($a0)
/* E1E8C 8003897C 24050200 */  addiu      $a1, $zero, 0x200
/* E1E90 80038980 0C028D89 */  jal        func_800A3624
/* E1E94 80038984 240602C8 */   addiu     $a2, $zero, 0x2c8
/* E1E98 80038988 32D200FF */  andi       $s2, $s6, 0xff
/* E1E9C 8003898C 3C02CCCC */  lui        $v0, 0xcccc
/* E1EA0 80038990 3442CCCD */  ori        $v0, $v0, 0xcccd
/* E1EA4 80038994 02420019 */  multu      $s2, $v0
/* E1EA8 80038998 24050005 */  addiu      $a1, $zero, 5
/* E1EAC 8003899C 240640D4 */  addiu      $a2, $zero, 0x40d4
/* E1EB0 800389A0 00004810 */  mfhi       $t1
/* E1EB4 800389A4 000980C2 */  srl        $s0, $t1, 3
/* E1EB8 800389A8 320400FF */  andi       $a0, $s0, 0xff
/* E1EBC 800389AC 0C00D925 */  jal        func_80036494_DF9A4
/* E1EC0 800389B0 2484018C */   addiu     $a0, $a0, 0x18c
/* E1EC4 800389B4 00402021 */  addu       $a0, $v0, $zero
/* E1EC8 800389B8 8C82000C */  lw         $v0, 0xc($a0)
/* E1ECC 800389BC A451001C */  sh         $s1, 0x1c($v0)
/* E1ED0 800389C0 8C84000C */  lw         $a0, 0xc($a0)
/* E1ED4 800389C4 24050400 */  addiu      $a1, $zero, 0x400
/* E1ED8 800389C8 0C028D89 */  jal        func_800A3624
/* E1EDC 800389CC 240602C8 */   addiu     $a2, $zero, 0x2c8
/* E1EE0 800389D0 00102080 */  sll        $a0, $s0, 2
/* E1EE4 800389D4 00902021 */  addu       $a0, $a0, $s0
/* E1EE8 800389D8 00042040 */  sll        $a0, $a0, 1
/* E1EEC 800389DC 02442023 */  subu       $a0, $s2, $a0
/* E1EF0 800389E0 308400FF */  andi       $a0, $a0, 0xff
/* E1EF4 800389E4 2484018C */  addiu      $a0, $a0, 0x18c
/* E1EF8 800389E8 24050005 */  addiu      $a1, $zero, 5
/* E1EFC 800389EC 0C00D925 */  jal        func_80036494_DF9A4
/* E1F00 800389F0 240640D5 */   addiu     $a2, $zero, 0x40d5
/* E1F04 800389F4 00402021 */  addu       $a0, $v0, $zero
/* E1F08 800389F8 8C82000C */  lw         $v0, 0xc($a0)
/* E1F0C 800389FC A451001C */  sh         $s1, 0x1c($v0)
/* E1F10 80038A00 8C84000C */  lw         $a0, 0xc($a0)
/* E1F14 80038A04 24050440 */  addiu      $a1, $zero, 0x440
/* E1F18 80038A08 0C028D89 */  jal        func_800A3624
/* E1F1C 80038A0C 240602C8 */   addiu     $a2, $zero, 0x2c8
/* E1F20 80038A10 2404018A */  addiu      $a0, $zero, 0x18a
/* E1F24 80038A14 24050006 */  addiu      $a1, $zero, 6
/* E1F28 80038A18 0C00D925 */  jal        func_80036494_DF9A4
/* E1F2C 80038A1C 240640D6 */   addiu     $a2, $zero, 0x40d6
/* E1F30 80038A20 00402021 */  addu       $a0, $v0, $zero
/* E1F34 80038A24 8C83000C */  lw         $v1, 0xc($a0)
/* E1F38 80038A28 24020056 */  addiu      $v0, $zero, 0x56
/* E1F3C 80038A2C A462001C */  sh         $v0, 0x1c($v1)
/* E1F40 80038A30 8C84000C */  lw         $a0, 0xc($a0)
/* E1F44 80038A34 24050070 */  addiu      $a1, $zero, 0x70
/* E1F48 80038A38 0C028D89 */  jal        func_800A3624
/* E1F4C 80038A3C 240601E8 */   addiu     $a2, $zero, 0x1e8
/* E1F50 80038A40 240400F7 */  addiu      $a0, $zero, 0xf7
/* E1F54 80038A44 24050001 */  addiu      $a1, $zero, 1
/* E1F58 80038A48 0C00D925 */  jal        func_80036494_DF9A4
/* E1F5C 80038A4C 240640D7 */   addiu     $a2, $zero, 0x40d7
/* E1F60 80038A50 00402021 */  addu       $a0, $v0, $zero
/* E1F64 80038A54 8C82000C */  lw         $v0, 0xc($a0)
/* E1F68 80038A58 A451001C */  sh         $s1, 0x1c($v0)
/* E1F6C 80038A5C 8C84000C */  lw         $a0, 0xc($a0)
/* E1F70 80038A60 24050260 */  addiu      $a1, $zero, 0x260
/* E1F74 80038A64 0C028D89 */  jal        func_800A3624
/* E1F78 80038A68 24060358 */   addiu     $a2, $zero, 0x358
/* E1F7C 80038A6C 240400F7 */  addiu      $a0, $zero, 0xf7
/* E1F80 80038A70 24050001 */  addiu      $a1, $zero, 1
/* E1F84 80038A74 0C00D925 */  jal        func_80036494_DF9A4
/* E1F88 80038A78 240640D8 */   addiu     $a2, $zero, 0x40d8
/* E1F8C 80038A7C 00402021 */  addu       $a0, $v0, $zero
/* E1F90 80038A80 8C82000C */  lw         $v0, 0xc($a0)
/* E1F94 80038A84 8C430000 */  lw         $v1, ($v0)
/* E1F98 80038A88 24020010 */  addiu      $v0, $zero, 0x10
/* E1F9C 80038A8C A062002F */  sb         $v0, 0x2f($v1)
/* E1FA0 80038A90 8C82000C */  lw         $v0, 0xc($a0)
/* E1FA4 80038A94 A451001C */  sh         $s1, 0x1c($v0)
/* E1FA8 80038A98 8C84000C */  lw         $a0, 0xc($a0)
/* E1FAC 80038A9C 24050260 */  addiu      $a1, $zero, 0x260
/* E1FB0 80038AA0 0C028D89 */  jal        func_800A3624
/* E1FB4 80038AA4 24060040 */   addiu     $a2, $zero, 0x40
/* E1FB8 80038AA8 00129040 */  sll        $s2, $s2, 1
/* E1FBC 80038AAC 3C048007 */  lui        $a0, %hi(D_80068EA4)
/* E1FC0 80038AB0 00922021 */  addu       $a0, $a0, $s2
/* E1FC4 80038AB4 94848EA4 */  lhu        $a0, %lo(D_80068EA4)($a0)
/* E1FC8 80038AB8 24050006 */  addiu      $a1, $zero, 6
/* E1FCC 80038ABC 0C00D925 */  jal        func_80036494_DF9A4
/* E1FD0 80038AC0 240640D9 */   addiu     $a2, $zero, 0x40d9
/* E1FD4 80038AC4 00402021 */  addu       $a0, $v0, $zero
/* E1FD8 80038AC8 8C82000C */  lw         $v0, 0xc($a0)
/* E1FDC 80038ACC A451001C */  sh         $s1, 0x1c($v0)
/* E1FE0 80038AD0 8C84000C */  lw         $a0, 0xc($a0)
/* E1FE4 80038AD4 00002821 */  addu       $a1, $zero, $zero
/* E1FE8 80038AD8 0C028D89 */  jal        func_800A3624
/* E1FEC 80038ADC 00003021 */   addu      $a2, $zero, $zero
/* E1FF0 80038AE0 8FBF00F4 */  lw         $ra, 0xf4($sp)
/* E1FF4 80038AE4 8FB600F0 */  lw         $s6, 0xf0($sp)
/* E1FF8 80038AE8 8FB500EC */  lw         $s5, 0xec($sp)
/* E1FFC 80038AEC 8FB400E8 */  lw         $s4, 0xe8($sp)
/* E2000 80038AF0 8FB300E4 */  lw         $s3, 0xe4($sp)
/* E2004 80038AF4 8FB200E0 */  lw         $s2, 0xe0($sp)
/* E2008 80038AF8 8FB100DC */  lw         $s1, 0xdc($sp)
/* E200C 80038AFC 8FB000D8 */  lw         $s0, 0xd8($sp)
/* E2010 80038B00 03E00008 */  jr         $ra
/* E2014 80038B04 27BD00F8 */   addiu     $sp, $sp, 0xf8

glabel func_80038B08_E2018
/* E2018 80038B08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E201C 80038B0C 24040011 */  addiu      $a0, $zero, 0x11
/* E2020 80038B10 24050001 */  addiu      $a1, $zero, 1
/* E2024 80038B14 240630F1 */  addiu      $a2, $zero, 0x30f1
/* E2028 80038B18 AFBF0020 */  sw         $ra, 0x20($sp)
/* E202C 80038B1C AFB1001C */  sw         $s1, 0x1c($sp)
/* E2030 80038B20 0C00D925 */  jal        func_80036494_DF9A4
/* E2034 80038B24 AFB00018 */   sw        $s0, 0x18($sp)
/* E2038 80038B28 00408821 */  addu       $s1, $v0, $zero
/* E203C 80038B2C 8E24000C */  lw         $a0, 0xc($s1)
/* E2040 80038B30 24050033 */  addiu      $a1, $zero, 0x33
/* E2044 80038B34 0C028F9A */  jal        func_800A3E68
/* E2048 80038B38 24060400 */   addiu     $a2, $zero, 0x400
/* E204C 80038B3C 8E24000C */  lw         $a0, 0xc($s1)
/* E2050 80038B40 24050020 */  addiu      $a1, $zero, 0x20
/* E2054 80038B44 0C028D89 */  jal        func_800A3624
/* E2058 80038B48 24060020 */   addiu     $a2, $zero, 0x20
/* E205C 80038B4C 24100001 */  addiu      $s0, $zero, 1
/* E2060 80038B50 AFB00010 */  sw         $s0, 0x10($sp)
/* E2064 80038B54 8E24000C */  lw         $a0, 0xc($s1)
/* E2068 80038B58 240500FF */  addiu      $a1, $zero, 0xff
/* E206C 80038B5C 240600FF */  addiu      $a2, $zero, 0xff
/* E2070 80038B60 0C028E41 */  jal        func_800A3904
/* E2074 80038B64 240700FF */   addiu     $a3, $zero, 0xff
/* E2078 80038B68 24040011 */  addiu      $a0, $zero, 0x11
/* E207C 80038B6C 8E22000C */  lw         $v0, 0xc($s1)
/* E2080 80038B70 24050001 */  addiu      $a1, $zero, 1
/* E2084 80038B74 240630F2 */  addiu      $a2, $zero, 0x30f2
/* E2088 80038B78 0C00D925 */  jal        func_80036494_DF9A4
/* E208C 80038B7C A440001C */   sh        $zero, 0x1c($v0)
/* E2090 80038B80 00408821 */  addu       $s1, $v0, $zero
/* E2094 80038B84 8E24000C */  lw         $a0, 0xc($s1)
/* E2098 80038B88 24050400 */  addiu      $a1, $zero, 0x400
/* E209C 80038B8C 0C028F9A */  jal        func_800A3E68
/* E20A0 80038B90 24060044 */   addiu     $a2, $zero, 0x44
/* E20A4 80038B94 8E24000C */  lw         $a0, 0xc($s1)
/* E20A8 80038B98 24050020 */  addiu      $a1, $zero, 0x20
/* E20AC 80038B9C 0C028D89 */  jal        func_800A3624
/* E20B0 80038BA0 24060020 */   addiu     $a2, $zero, 0x20
/* E20B4 80038BA4 AFB00010 */  sw         $s0, 0x10($sp)
/* E20B8 80038BA8 8E24000C */  lw         $a0, 0xc($s1)
/* E20BC 80038BAC 240500FF */  addiu      $a1, $zero, 0xff
/* E20C0 80038BB0 240600FF */  addiu      $a2, $zero, 0xff
/* E20C4 80038BB4 0C028E41 */  jal        func_800A3904
/* E20C8 80038BB8 240700FF */   addiu     $a3, $zero, 0xff
/* E20CC 80038BBC 24040011 */  addiu      $a0, $zero, 0x11
/* E20D0 80038BC0 8E22000C */  lw         $v0, 0xc($s1)
/* E20D4 80038BC4 24050001 */  addiu      $a1, $zero, 1
/* E20D8 80038BC8 240630F3 */  addiu      $a2, $zero, 0x30f3
/* E20DC 80038BCC 0C00D925 */  jal        func_80036494_DF9A4
/* E20E0 80038BD0 A440001C */   sh        $zero, 0x1c($v0)
/* E20E4 80038BD4 00408821 */  addu       $s1, $v0, $zero
/* E20E8 80038BD8 8E24000C */  lw         $a0, 0xc($s1)
/* E20EC 80038BDC 24050033 */  addiu      $a1, $zero, 0x33
/* E20F0 80038BE0 0C028F9A */  jal        func_800A3E68
/* E20F4 80038BE4 24060400 */   addiu     $a2, $zero, 0x400
/* E20F8 80038BE8 8E24000C */  lw         $a0, 0xc($s1)
/* E20FC 80038BEC 24050020 */  addiu      $a1, $zero, 0x20
/* E2100 80038BF0 0C028D89 */  jal        func_800A3624
/* E2104 80038BF4 2406035C */   addiu     $a2, $zero, 0x35c
/* E2108 80038BF8 AFB00010 */  sw         $s0, 0x10($sp)
/* E210C 80038BFC 8E24000C */  lw         $a0, 0xc($s1)
/* E2110 80038C00 240500FF */  addiu      $a1, $zero, 0xff
/* E2114 80038C04 240600FF */  addiu      $a2, $zero, 0xff
/* E2118 80038C08 0C028E41 */  jal        func_800A3904
/* E211C 80038C0C 240700FF */   addiu     $a3, $zero, 0xff
/* E2120 80038C10 24040011 */  addiu      $a0, $zero, 0x11
/* E2124 80038C14 8E22000C */  lw         $v0, 0xc($s1)
/* E2128 80038C18 24050001 */  addiu      $a1, $zero, 1
/* E212C 80038C1C 240630F4 */  addiu      $a2, $zero, 0x30f4
/* E2130 80038C20 0C00D925 */  jal        func_80036494_DF9A4
/* E2134 80038C24 A440001C */   sh        $zero, 0x1c($v0)
/* E2138 80038C28 00408821 */  addu       $s1, $v0, $zero
/* E213C 80038C2C 8E24000C */  lw         $a0, 0xc($s1)
/* E2140 80038C30 24050400 */  addiu      $a1, $zero, 0x400
/* E2144 80038C34 0C028F9A */  jal        func_800A3E68
/* E2148 80038C38 24060044 */   addiu     $a2, $zero, 0x44
/* E214C 80038C3C 8E24000C */  lw         $a0, 0xc($s1)
/* E2150 80038C40 2405049C */  addiu      $a1, $zero, 0x49c
/* E2154 80038C44 0C028D89 */  jal        func_800A3624
/* E2158 80038C48 24060020 */   addiu     $a2, $zero, 0x20
/* E215C 80038C4C AFB00010 */  sw         $s0, 0x10($sp)
/* E2160 80038C50 8E24000C */  lw         $a0, 0xc($s1)
/* E2164 80038C54 240500FF */  addiu      $a1, $zero, 0xff
/* E2168 80038C58 240600FF */  addiu      $a2, $zero, 0xff
/* E216C 80038C5C 0C028E41 */  jal        func_800A3904
/* E2170 80038C60 240700FF */   addiu     $a3, $zero, 0xff
/* E2174 80038C64 8E22000C */  lw         $v0, 0xc($s1)
/* E2178 80038C68 A440001C */  sh         $zero, 0x1c($v0)
/* E217C 80038C6C 8FBF0020 */  lw         $ra, 0x20($sp)
/* E2180 80038C70 8FB1001C */  lw         $s1, 0x1c($sp)
/* E2184 80038C74 8FB00018 */  lw         $s0, 0x18($sp)
/* E2188 80038C78 03E00008 */  jr         $ra
/* E218C 80038C7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80038C80_E2190
/* E2190 80038C80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E2194 80038C84 AFBF0010 */  sw         $ra, 0x10($sp)
/* E2198 80038C88 0C00D8C1 */  jal        func_80036304_DF814
/* E219C 80038C8C 240430F1 */   addiu     $a0, $zero, 0x30f1
/* E21A0 80038C90 8C44000C */  lw         $a0, 0xc($v0)
/* E21A4 80038C94 0C028A40 */  jal        func_800A2900
/* E21A8 80038C98 00000000 */   nop
/* E21AC 80038C9C 0C00D8C1 */  jal        func_80036304_DF814
/* E21B0 80038CA0 240430F2 */   addiu     $a0, $zero, 0x30f2
/* E21B4 80038CA4 8C44000C */  lw         $a0, 0xc($v0)
/* E21B8 80038CA8 0C028A40 */  jal        func_800A2900
/* E21BC 80038CAC 00000000 */   nop
/* E21C0 80038CB0 0C00D8C1 */  jal        func_80036304_DF814
/* E21C4 80038CB4 240430F3 */   addiu     $a0, $zero, 0x30f3
/* E21C8 80038CB8 8C44000C */  lw         $a0, 0xc($v0)
/* E21CC 80038CBC 0C028A40 */  jal        func_800A2900
/* E21D0 80038CC0 00000000 */   nop
/* E21D4 80038CC4 0C00D8C1 */  jal        func_80036304_DF814
/* E21D8 80038CC8 240430F4 */   addiu     $a0, $zero, 0x30f4
/* E21DC 80038CCC 8C44000C */  lw         $a0, 0xc($v0)
/* E21E0 80038CD0 0C028A40 */  jal        func_800A2900
/* E21E4 80038CD4 00000000 */   nop
/* E21E8 80038CD8 8FBF0010 */  lw         $ra, 0x10($sp)
/* E21EC 80038CDC 03E00008 */  jr         $ra
/* E21F0 80038CE0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80038CE4_E21F4
/* E21F4 80038CE4 3C01437F */  lui        $at, 0x437f
/* E21F8 80038CE8 44810000 */  mtc1       $at, $f0
/* E21FC 80038CEC 2402007F */  addiu      $v0, $zero, 0x7f
/* E2200 80038CF0 3C01800D */  lui        $at, %hi(D_800D3BC0)
/* E2204 80038CF4 A0223BC0 */  sb         $v0, %lo(D_800D3BC0)($at)
/* E2208 80038CF8 3C01800D */  lui        $at, %hi(D_800D3BC1)
/* E220C 80038CFC A0223BC1 */  sb         $v0, %lo(D_800D3BC1)($at)
/* E2210 80038D00 3C01800D */  lui        $at, %hi(D_800D3BC2)
/* E2214 80038D04 A0223BC2 */  sb         $v0, %lo(D_800D3BC2)($at)
/* E2218 80038D08 3C01800D */  lui        $at, %hi(D_800D3BC4)
/* E221C 80038D0C A0223BC4 */  sb         $v0, %lo(D_800D3BC4)($at)
/* E2220 80038D10 3C01800D */  lui        $at, %hi(D_800D3BC5)
/* E2224 80038D14 A0223BC5 */  sb         $v0, %lo(D_800D3BC5)($at)
/* E2228 80038D18 3C01800D */  lui        $at, %hi(D_800D3BC6)
/* E222C 80038D1C A0223BC6 */  sb         $v0, %lo(D_800D3BC6)($at)
/* E2230 80038D20 3C01800D */  lui        $at, %hi(D_800D3BD8)
/* E2234 80038D24 E4203BD8 */  swc1       $f0, %lo(D_800D3BD8)($at)
/* E2238 80038D28 3C01800D */  lui        $at, %hi(D_800D3BDC)
/* E223C 80038D2C E4203BDC */  swc1       $f0, %lo(D_800D3BDC)($at)
/* E2240 80038D30 3C01800D */  lui        $at, %hi(D_800D3BE0)
/* E2244 80038D34 03E00008 */  jr         $ra
/* E2248 80038D38 E4203BE0 */   swc1      $f0, %lo(D_800D3BE0)($at)

glabel func_80038D3C_E224C
/* E224C 80038D3C 93A20013 */  lbu        $v0, 0x13($sp)
/* E2250 80038D40 93A30017 */  lbu        $v1, 0x17($sp)
/* E2254 80038D44 30E700FF */  andi       $a3, $a3, 0xff
/* E2258 80038D48 44870000 */  mtc1       $a3, $f0
/* E225C 80038D4C 00000000 */  nop
/* E2260 80038D50 46800020 */  cvt.s.w    $f0, $f0
/* E2264 80038D54 3C01800D */  lui        $at, %hi(D_800D3BC0)
/* E2268 80038D58 A0243BC0 */  sb         $a0, %lo(D_800D3BC0)($at)
/* E226C 80038D5C 3C01800D */  lui        $at, %hi(D_800D3BC1)
/* E2270 80038D60 A0253BC1 */  sb         $a1, %lo(D_800D3BC1)($at)
/* E2274 80038D64 3C01800D */  lui        $at, %hi(D_800D3BC2)
/* E2278 80038D68 A0263BC2 */  sb         $a2, %lo(D_800D3BC2)($at)
/* E227C 80038D6C 3C01800D */  lui        $at, %hi(D_800D3BC4)
/* E2280 80038D70 A0243BC4 */  sb         $a0, %lo(D_800D3BC4)($at)
/* E2284 80038D74 3C01800D */  lui        $at, %hi(D_800D3BC5)
/* E2288 80038D78 A0253BC5 */  sb         $a1, %lo(D_800D3BC5)($at)
/* E228C 80038D7C 3C01800D */  lui        $at, %hi(D_800D3BC6)
/* E2290 80038D80 A0263BC6 */  sb         $a2, %lo(D_800D3BC6)($at)
/* E2294 80038D84 3C01800D */  lui        $at, %hi(D_800D3BD8)
/* E2298 80038D88 E4203BD8 */  swc1       $f0, %lo(D_800D3BD8)($at)
/* E229C 80038D8C 44820000 */  mtc1       $v0, $f0
/* E22A0 80038D90 00000000 */  nop
/* E22A4 80038D94 46800020 */  cvt.s.w    $f0, $f0
/* E22A8 80038D98 3C01800D */  lui        $at, %hi(D_800D3BDC)
/* E22AC 80038D9C E4203BDC */  swc1       $f0, %lo(D_800D3BDC)($at)
/* E22B0 80038DA0 44830000 */  mtc1       $v1, $f0
/* E22B4 80038DA4 00000000 */  nop
/* E22B8 80038DA8 46800020 */  cvt.s.w    $f0, $f0
/* E22BC 80038DAC 3C01800D */  lui        $at, %hi(D_800D3BE0)
/* E22C0 80038DB0 03E00008 */  jr         $ra
/* E22C4 80038DB4 E4203BE0 */   swc1      $f0, %lo(D_800D3BE0)($at)
/* E22C8 80038DB8 00000000 */  nop
/* E22CC 80038DBC 00000000 */  nop
