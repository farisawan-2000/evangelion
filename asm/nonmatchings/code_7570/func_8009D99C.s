glabel func_8009D99C
/* 859C 8009D99C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 85A0 8009D9A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 85A4 8009D9A4 8FB10048 */  lw         $s1, 0x48($sp)
/* 85A8 8009D9A8 8FA8004C */  lw         $t0, 0x4C($sp)
/* 85AC 8009D9AC AFB3001C */  sw         $s3, 0x1C($sp)
/* 85B0 8009D9B0 00809821 */  addu       $s3, $a0, $zero
/* 85B4 8009D9B4 AFB40020 */  sw         $s4, 0x20($sp)
/* 85B8 8009D9B8 00A0A021 */  addu       $s4, $a1, $zero
/* 85BC 8009D9BC AFB00010 */  sw         $s0, 0x10($sp)
/* 85C0 8009D9C0 00C08021 */  addu       $s0, $a2, $zero
/* 85C4 8009D9C4 AFB7002C */  sw         $s7, 0x2C($sp)
/* 85C8 8009D9C8 2617FFFF */  addiu      $s7, $s0, -0x1
/* 85CC 8009D9CC AFBE0030 */  sw         $fp, 0x30($sp)
/* 85D0 8009D9D0 24FEFFFF */  addiu      $fp, $a3, -0x1
/* 85D4 8009D9D4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 85D8 8009D9D8 AFB60028 */  sw         $s6, 0x28($sp)
/* 85DC 8009D9DC AFB50024 */  sw         $s5, 0x24($sp)
/* 85E0 8009D9E0 11000004 */  beqz       $t0, .L8009D9F4
/* 85E4 8009D9E4 AFB20018 */   sw        $s2, 0x18($sp)
/* 85E8 8009D9E8 00002021 */  addu       $a0, $zero, $zero
/* 85EC 8009D9EC 0802767F */  j          .L8009D9FC
/* 85F0 8009D9F0 2405000B */   addiu     $a1, $zero, 0xB
.L8009D9F4:
/* 85F4 8009D9F4 00002021 */  addu       $a0, $zero, $zero
/* 85F8 8009D9F8 24050003 */  addiu      $a1, $zero, 0x3
.L8009D9FC:
/* 85FC 8009D9FC 0C02DAC0 */  jal        func_800B6B00
/* 8600 8009DA00 00000000 */   nop
/* 8604 8009DA04 0C03016C */  jal        func_800C05B0
/* 8608 8009DA08 02202021 */   addu      $a0, $s1, $zero
/* 860C 8009DA0C 02202021 */  addu       $a0, $s1, $zero
/* 8610 8009DA10 0C03016C */  jal        func_800C05B0
/* 8614 8009DA14 0040A821 */   addu      $s5, $v0, $zero
/* 8618 8009DA18 00002021 */  addu       $a0, $zero, $zero
/* 861C 8009DA1C 02021023 */  subu       $v0, $s0, $v0
/* 8620 8009DA20 00021042 */  srl        $v0, $v0, 1
/* 8624 8009DA24 02629021 */  addu       $s2, $s3, $v0
/* 8628 8009DA28 02402821 */  addu       $a1, $s2, $zero
/* 862C 8009DA2C 0C02DAE0 */  jal        func_800B6B80
/* 8630 8009DA30 02803021 */   addu      $a2, $s4, $zero
/* 8634 8009DA34 00002021 */  addu       $a0, $zero, $zero
/* 8638 8009DA38 0C02DA9C */  jal        func_800B6A70
/* 863C 8009DA3C 02202821 */   addu      $a1, $s1, $zero
/* 8640 8009DA40 8FA8004C */  lw         $t0, 0x4C($sp)
/* 8644 8009DA44 11000003 */  beqz       $t0, .L8009DA54
/* 8648 8009DA48 00002021 */   addu      $a0, $zero, $zero
/* 864C 8009DA4C 08027696 */  j          .L8009DA58
/* 8650 8009DA50 2405000B */   addiu     $a1, $zero, 0xB
.L8009DA54:
/* 8654 8009DA54 24050003 */  addiu      $a1, $zero, 0x3
.L8009DA58:
/* 8658 8009DA58 0C02DAC0 */  jal        func_800B6B00
/* 865C 8009DA5C 26700001 */   addiu     $s0, $s3, 0x1
/* 8660 8009DA60 02771821 */  addu       $v1, $s3, $s7
/* 8664 8009DA64 0203102A */  slt        $v0, $s0, $v1
/* 8668 8009DA68 1040001D */  beqz       $v0, .L8009DAE0
/* 866C 8009DA6C 02808821 */   addu      $s1, $s4, $zero
/* 8670 8009DA70 0255B021 */  addu       $s6, $s2, $s5
/* 8674 8009DA74 0060A821 */  addu       $s5, $v1, $zero
/* 8678 8009DA78 0212102A */  slt        $v0, $s0, $s2
.L8009DA7C:
/* 867C 8009DA7C 14400005 */  bnez       $v0, .L8009DA94
/* 8680 8009DA80 00002021 */   addu      $a0, $zero, $zero
/* 8684 8009DA84 0216102A */  slt        $v0, $s0, $s6
/* 8688 8009DA88 1440000B */  bnez       $v0, .L8009DAB8
/* 868C 8009DA8C 02002821 */   addu      $a1, $s0, $zero
/* 8690 8009DA90 00002021 */  addu       $a0, $zero, $zero
.L8009DA94:
/* 8694 8009DA94 02002821 */  addu       $a1, $s0, $zero
/* 8698 8009DA98 0C02DAE0 */  jal        func_800B6B80
/* 869C 8009DA9C 02203021 */   addu      $a2, $s1, $zero
/* 86A0 8009DAA0 3C058010 */  lui        $a1, %hi(D_800F9CA4)
/* 86A4 8009DAA4 24A59CA4 */  addiu      $a1, $a1, %lo(D_800F9CA4)
/* 86A8 8009DAA8 0C02DA9C */  jal        func_800B6A70
/* 86AC 8009DAAC 00002021 */   addu      $a0, $zero, $zero
/* 86B0 8009DAB0 00002021 */  addu       $a0, $zero, $zero
/* 86B4 8009DAB4 02002821 */  addu       $a1, $s0, $zero
.L8009DAB8:
/* 86B8 8009DAB8 0C02DAE0 */  jal        func_800B6B80
/* 86BC 8009DABC 023E3021 */   addu      $a2, $s1, $fp
/* 86C0 8009DAC0 3C058010 */  lui        $a1, %hi(D_800F9CA4)
/* 86C4 8009DAC4 24A59CA4 */  addiu      $a1, $a1, %lo(D_800F9CA4)
/* 86C8 8009DAC8 0C02DA9C */  jal        func_800B6A70
/* 86CC 8009DACC 00002021 */   addu      $a0, $zero, $zero
/* 86D0 8009DAD0 26100001 */  addiu      $s0, $s0, 0x1
/* 86D4 8009DAD4 0215102A */  slt        $v0, $s0, $s5
/* 86D8 8009DAD8 1440FFE8 */  bnez       $v0, .L8009DA7C
/* 86DC 8009DADC 0212102A */   slt       $v0, $s0, $s2
.L8009DAE0:
/* 86E0 8009DAE0 26910001 */  addiu      $s1, $s4, 0x1
/* 86E4 8009DAE4 029E1821 */  addu       $v1, $s4, $fp
/* 86E8 8009DAE8 0223102A */  slt        $v0, $s1, $v1
/* 86EC 8009DAEC 10400016 */  beqz       $v0, .L8009DB48
/* 86F0 8009DAF0 02608021 */   addu      $s0, $s3, $zero
/* 86F4 8009DAF4 3C128010 */  lui        $s2, %hi(D_800F9CA8)
/* 86F8 8009DAF8 26529CA8 */  addiu      $s2, $s2, %lo(D_800F9CA8)
/* 86FC 8009DAFC 0060A821 */  addu       $s5, $v1, $zero
/* 8700 8009DB00 00002021 */  addu       $a0, $zero, $zero
.L8009DB04:
/* 8704 8009DB04 02002821 */  addu       $a1, $s0, $zero
/* 8708 8009DB08 0C02DAE0 */  jal        func_800B6B80
/* 870C 8009DB0C 02203021 */   addu      $a2, $s1, $zero
/* 8710 8009DB10 00002021 */  addu       $a0, $zero, $zero
/* 8714 8009DB14 0C02DA9C */  jal        func_800B6A70
/* 8718 8009DB18 02402821 */   addu      $a1, $s2, $zero
/* 871C 8009DB1C 00002021 */  addu       $a0, $zero, $zero
/* 8720 8009DB20 02172821 */  addu       $a1, $s0, $s7
/* 8724 8009DB24 0C02DAE0 */  jal        func_800B6B80
/* 8728 8009DB28 02203021 */   addu      $a2, $s1, $zero
/* 872C 8009DB2C 00002021 */  addu       $a0, $zero, $zero
/* 8730 8009DB30 0C02DA9C */  jal        func_800B6A70
/* 8734 8009DB34 02402821 */   addu      $a1, $s2, $zero
/* 8738 8009DB38 26310001 */  addiu      $s1, $s1, 0x1
/* 873C 8009DB3C 0235102A */  slt        $v0, $s1, $s5
/* 8740 8009DB40 1440FFF0 */  bnez       $v0, .L8009DB04
/* 8744 8009DB44 00002021 */   addu      $a0, $zero, $zero
.L8009DB48:
/* 8748 8009DB48 00002021 */  addu       $a0, $zero, $zero
/* 874C 8009DB4C 02602821 */  addu       $a1, $s3, $zero
/* 8750 8009DB50 0C02DAE0 */  jal        func_800B6B80
/* 8754 8009DB54 02803021 */   addu      $a2, $s4, $zero
/* 8758 8009DB58 00002021 */  addu       $a0, $zero, $zero
/* 875C 8009DB5C 3C108010 */  lui        $s0, %hi(D_800F9CAC)
/* 8760 8009DB60 26109CAC */  addiu      $s0, $s0, %lo(D_800F9CAC)
/* 8764 8009DB64 0C02DA9C */  jal        func_800B6A70
/* 8768 8009DB68 02002821 */   addu      $a1, $s0, $zero
/* 876C 8009DB6C 00002021 */  addu       $a0, $zero, $zero
/* 8770 8009DB70 02602821 */  addu       $a1, $s3, $zero
/* 8774 8009DB74 029E9021 */  addu       $s2, $s4, $fp
/* 8778 8009DB78 0C02DAE0 */  jal        func_800B6B80
/* 877C 8009DB7C 02403021 */   addu      $a2, $s2, $zero
/* 8780 8009DB80 00002021 */  addu       $a0, $zero, $zero
/* 8784 8009DB84 0C02DA9C */  jal        func_800B6A70
/* 8788 8009DB88 02002821 */   addu      $a1, $s0, $zero
/* 878C 8009DB8C 00002021 */  addu       $a0, $zero, $zero
/* 8790 8009DB90 02778821 */  addu       $s1, $s3, $s7
/* 8794 8009DB94 02202821 */  addu       $a1, $s1, $zero
/* 8798 8009DB98 0C02DAE0 */  jal        func_800B6B80
/* 879C 8009DB9C 02803021 */   addu      $a2, $s4, $zero
/* 87A0 8009DBA0 00002021 */  addu       $a0, $zero, $zero
/* 87A4 8009DBA4 0C02DA9C */  jal        func_800B6A70
/* 87A8 8009DBA8 02002821 */   addu      $a1, $s0, $zero
/* 87AC 8009DBAC 00002021 */  addu       $a0, $zero, $zero
/* 87B0 8009DBB0 02202821 */  addu       $a1, $s1, $zero
/* 87B4 8009DBB4 0C02DAE0 */  jal        func_800B6B80
/* 87B8 8009DBB8 02403021 */   addu      $a2, $s2, $zero
/* 87BC 8009DBBC 00002021 */  addu       $a0, $zero, $zero
/* 87C0 8009DBC0 0C02DA9C */  jal        func_800B6A70
/* 87C4 8009DBC4 02002821 */   addu      $a1, $s0, $zero
/* 87C8 8009DBC8 8FA8004C */  lw         $t0, 0x4C($sp)
/* 87CC 8009DBCC 11000003 */  beqz       $t0, .L8009DBDC
/* 87D0 8009DBD0 00002021 */   addu      $a0, $zero, $zero
/* 87D4 8009DBD4 080276F8 */  j          .L8009DBE0
/* 87D8 8009DBD8 2405000D */   addiu     $a1, $zero, 0xD
.L8009DBDC:
/* 87DC 8009DBDC 24050005 */  addiu      $a1, $zero, 0x5
.L8009DBE0:
/* 87E0 8009DBE0 0C02DAC0 */  jal        func_800B6B00
/* 87E4 8009DBE4 00000000 */   nop
/* 87E8 8009DBE8 8FA80050 */  lw         $t0, 0x50($sp)
/* 87EC 8009DBEC 1100000F */  beqz       $t0, .L8009DC2C
/* 87F0 8009DBF0 00002021 */   addu      $a0, $zero, $zero
/* 87F4 8009DBF4 0C02DAD0 */  jal        func_800B6B40
/* 87F8 8009DBF8 24050001 */   addiu     $a1, $zero, 0x1
/* 87FC 8009DBFC 00002021 */  addu       $a0, $zero, $zero
/* 8800 8009DC00 02772821 */  addu       $a1, $s3, $s7
/* 8804 8009DC04 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 8808 8009DC08 0C02DAE0 */  jal        func_800B6B80
/* 880C 8009DC0C 02803021 */   addu      $a2, $s4, $zero
/* 8810 8009DC10 3C058010 */  lui        $a1, %hi(D_800F9CB0)
/* 8814 8009DC14 24A59CB0 */  addiu      $a1, $a1, %lo(D_800F9CB0)
/* 8818 8009DC18 0C02DA9C */  jal        func_800B6A70
/* 881C 8009DC1C 00002021 */   addu      $a0, $zero, $zero
/* 8820 8009DC20 00002021 */  addu       $a0, $zero, $zero
/* 8824 8009DC24 0C02DAD0 */  jal        func_800B6B40
/* 8828 8009DC28 00002821 */   addu      $a1, $zero, $zero
.L8009DC2C:
/* 882C 8009DC2C 8FA80054 */  lw         $t0, 0x54($sp)
/* 8830 8009DC30 1100000F */  beqz       $t0, .L8009DC70
/* 8834 8009DC34 00002021 */   addu      $a0, $zero, $zero
/* 8838 8009DC38 0C02DAD0 */  jal        func_800B6B40
/* 883C 8009DC3C 24050001 */   addiu     $a1, $zero, 0x1
/* 8840 8009DC40 00002021 */  addu       $a0, $zero, $zero
/* 8844 8009DC44 02772821 */  addu       $a1, $s3, $s7
/* 8848 8009DC48 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 884C 8009DC4C 0C02DAE0 */  jal        func_800B6B80
/* 8850 8009DC50 029E3021 */   addu      $a2, $s4, $fp
/* 8854 8009DC54 3C058010 */  lui        $a1, %hi(D_800F9CB4)
/* 8858 8009DC58 24A59CB4 */  addiu      $a1, $a1, %lo(D_800F9CB4)
/* 885C 8009DC5C 0C02DA9C */  jal        func_800B6A70
/* 8860 8009DC60 00002021 */   addu      $a0, $zero, $zero
/* 8864 8009DC64 00002021 */  addu       $a0, $zero, $zero
/* 8868 8009DC68 0C02DAD0 */  jal        func_800B6B40
/* 886C 8009DC6C 00002821 */   addu      $a1, $zero, $zero
.L8009DC70:
/* 8870 8009DC70 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8874 8009DC74 8FBE0030 */  lw         $fp, 0x30($sp)
/* 8878 8009DC78 8FB7002C */  lw         $s7, 0x2C($sp)
/* 887C 8009DC7C 8FB60028 */  lw         $s6, 0x28($sp)
/* 8880 8009DC80 8FB50024 */  lw         $s5, 0x24($sp)
/* 8884 8009DC84 8FB40020 */  lw         $s4, 0x20($sp)
/* 8888 8009DC88 8FB3001C */  lw         $s3, 0x1C($sp)
/* 888C 8009DC8C 8FB20018 */  lw         $s2, 0x18($sp)
/* 8890 8009DC90 8FB10014 */  lw         $s1, 0x14($sp)
/* 8894 8009DC94 8FB00010 */  lw         $s0, 0x10($sp)
/* 8898 8009DC98 27BD0038 */  addiu      $sp, $sp, 0x38
/* 889C 8009DC9C 03E00008 */  jr         $ra
/* 88A0 8009DCA0 00000000 */   nop
.size func_8009D99C, . - func_8009D99C
