glabel func_8004DA18_ovl3
/* F6F28 8004DA18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F6F2C 8004DA1C AFBF001C */  sw         $ra, 0x1C($sp)
/* F6F30 8004DA20 AFB00018 */  sw         $s0, 0x18($sp)
/* F6F34 8004DA24 0C00E109 */  jal        func_80038424_ovl3
/* F6F38 8004DA28 F7B40020 */   sdc1      $f20, 0x20($sp)
/* F6F3C 8004DA2C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6F40 8004DA30 24040006 */   addiu     $a0, $zero, 0x6
/* F6F44 8004DA34 00408021 */  addu       $s0, $v0, $zero
/* F6F48 8004DA38 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* F6F4C 8004DA3C 44810000 */  mtc1       $at, $f0
/* F6F50 8004DA40 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* F6F54 8004DA44 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* F6F58 8004DA48 44811000 */  mtc1       $at, $f2
/* F6F5C 8004DA4C 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* F6F60 8004DA50 44812000 */  mtc1       $at, $f4
/* F6F64 8004DA54 02002021 */  addu       $a0, $s0, $zero
/* F6F68 8004DA58 240500E9 */  addiu      $a1, $zero, 0xE9
/* F6F6C 8004DA5C 240200FF */  addiu      $v0, $zero, 0xFF
/* F6F70 8004DA60 AE000014 */  sw         $zero, 0x14($s0)
/* F6F74 8004DA64 AE000018 */  sw         $zero, 0x18($s0)
/* F6F78 8004DA68 AE00001C */  sw         $zero, 0x1C($s0)
/* F6F7C 8004DA6C AE000020 */  sw         $zero, 0x20($s0)
/* F6F80 8004DA70 A6020074 */  sh         $v0, 0x74($s0)
/* F6F84 8004DA74 A6020076 */  sh         $v0, 0x76($s0)
/* F6F88 8004DA78 A6020078 */  sh         $v0, 0x78($s0)
/* F6F8C 8004DA7C A602007A */  sh         $v0, 0x7A($s0)
/* F6F90 8004DA80 E6000010 */  swc1       $f0, 0x10($s0)
/* F6F94 8004DA84 E6020028 */  swc1       $f2, 0x28($s0)
/* F6F98 8004DA88 0C00DFE6 */  jal        func_80037F98_ovl3
/* F6F9C 8004DA8C E6040024 */   swc1      $f4, 0x24($s0)
/* F6FA0 8004DA90 8E020004 */  lw         $v0, 0x4($s0)
/* F6FA4 8004DA94 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* F6FA8 8004DA98 44810000 */  mtc1       $at, $f0
/* F6FAC 8004DA9C A0400067 */  sb         $zero, 0x67($v0)
/* F6FB0 8004DAA0 8E030004 */  lw         $v1, 0x4($s0)
/* F6FB4 8004DAA4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F6FB8 8004DAA8 4481A000 */  mtc1       $at, $f20
/* F6FBC 8004DAAC 3C014324 */  lui        $at, (0x43240000 >> 16)
/* F6FC0 8004DAB0 44811000 */  mtc1       $at, $f2
/* F6FC4 8004DAB4 90620066 */  lbu        $v0, 0x66($v1)
/* F6FC8 8004DAB8 3C01C1D0 */  lui        $at, (0xC1D00000 >> 16)
/* F6FCC 8004DABC 44812000 */  mtc1       $at, $f4
/* F6FD0 8004DAC0 34420015 */  ori        $v0, $v0, 0x15
/* F6FD4 8004DAC4 A0620066 */  sb         $v0, 0x66($v1)
/* F6FD8 8004DAC8 3C018015 */  lui        $at, %hi(D_8014A064)
/* F6FDC 8004DACC AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F6FE0 8004DAD0 3C018015 */  lui        $at, %hi(D_8014A068)
/* F6FE4 8004DAD4 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F6FE8 8004DAD8 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F6FEC 8004DADC AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F6FF0 8004DAE0 3C018015 */  lui        $at, %hi(D_8014A070)
/* F6FF4 8004DAE4 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F6FF8 8004DAE8 3C018015 */  lui        $at, %hi(D_8014A074)
/* F6FFC 8004DAEC E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* F7000 8004DAF0 3C018015 */  lui        $at, %hi(D_8014A078)
/* F7004 8004DAF4 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F7008 8004DAF8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F700C 8004DAFC AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* F7010 8004DB00 3C018015 */  lui        $at, %hi(D_8014A080)
/* F7014 8004DB04 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* F7018 8004DB08 3C018015 */  lui        $at, %hi(D_8014A084)
/* F701C 8004DB0C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F7020 8004DB10 3C018015 */  lui        $at, %hi(D_8014A088)
/* F7024 8004DB14 0C00E339 */  jal        func_80038CE4_ovl3
/* F7028 8004DB18 E424A088 */   swc1      $f4, %lo(D_8014A088)($at)
/* F702C 8004DB1C 240401C6 */  addiu      $a0, $zero, 0x1C6
/* F7030 8004DB20 3C013FD9 */  lui        $at, (0x3FD9999A >> 16)
/* F7034 8004DB24 3421999A */  ori        $at, $at, (0x3FD9999A & 0xFFFF)
/* F7038 8004DB28 44810000 */  mtc1       $at, $f0
/* F703C 8004DB2C 24050002 */  addiu      $a1, $zero, 0x2
/* F7040 8004DB30 3C018015 */  lui        $at, %hi(D_8014A054)
/* F7044 8004DB34 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F7048 8004DB38 3C018015 */  lui        $at, %hi(D_8014A050)
/* F704C 8004DB3C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F7050 8004DB40 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F7054 8004DB44 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F7058 8004DB48 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F705C 8004DB4C E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* F7060 8004DB50 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F7064 8004DB54 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* F7068 8004DB58 3C018017 */  lui        $at, %hi(D_8016E568)
/* F706C 8004DB5C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F7070 8004DB60 0C00D925 */  jal        func_80036494_ovl3
/* F7074 8004DB64 24060022 */   addiu     $a2, $zero, 0x22
/* F7078 8004DB68 00408021 */  addu       $s0, $v0, $zero
/* F707C 8004DB6C 8E04000C */  lw         $a0, 0xC($s0)
/* F7080 8004DB70 24050040 */  addiu      $a1, $zero, 0x40
/* F7084 8004DB74 0C028D89 */  jal        func_800A3624
/* F7088 8004DB78 24060040 */   addiu     $a2, $zero, 0x40
/* F708C 8004DB7C 240200C0 */  addiu      $v0, $zero, 0xC0
/* F7090 8004DB80 AFA20010 */  sw         $v0, 0x10($sp)
/* F7094 8004DB84 8E04000C */  lw         $a0, 0xC($s0)
/* F7098 8004DB88 240500FF */  addiu      $a1, $zero, 0xFF
/* F709C 8004DB8C 240600FF */  addiu      $a2, $zero, 0xFF
/* F70A0 8004DB90 0C028E41 */  jal        func_800A3904
/* F70A4 8004DB94 240700FF */   addiu     $a3, $zero, 0xFF
/* F70A8 8004DB98 8E03000C */  lw         $v1, 0xC($s0)
/* F70AC 8004DB9C 240401C5 */  addiu      $a0, $zero, 0x1C5
/* F70B0 8004DBA0 9462001E */  lhu        $v0, 0x1E($v1)
/* F70B4 8004DBA4 24050005 */  addiu      $a1, $zero, 0x5
/* F70B8 8004DBA8 24060023 */  addiu      $a2, $zero, 0x23
/* F70BC 8004DBAC 34420004 */  ori        $v0, $v0, 0x4
/* F70C0 8004DBB0 0C00D925 */  jal        func_80036494_ovl3
/* F70C4 8004DBB4 A462001E */   sh        $v0, 0x1E($v1)
/* F70C8 8004DBB8 8C44000C */  lw         $a0, 0xC($v0)
/* F70CC 8004DBBC 24050440 */  addiu      $a1, $zero, 0x440
/* F70D0 8004DBC0 0C028D89 */  jal        func_800A3624
/* F70D4 8004DBC4 24060040 */   addiu     $a2, $zero, 0x40
/* F70D8 8004DBC8 240401C1 */  addiu      $a0, $zero, 0x1C1
/* F70DC 8004DBCC 00002821 */  addu       $a1, $zero, $zero
/* F70E0 8004DBD0 0C00D925 */  jal        func_80036494_ovl3
/* F70E4 8004DBD4 24060024 */   addiu     $a2, $zero, 0x24
/* F70E8 8004DBD8 8C44000C */  lw         $a0, 0xC($v0)
/* F70EC 8004DBDC 2405040C */  addiu      $a1, $zero, 0x40C
/* F70F0 8004DBE0 0C028D89 */  jal        func_800A3624
/* F70F4 8004DBE4 240602CC */   addiu     $a2, $zero, 0x2CC
/* F70F8 8004DBE8 240401BD */  addiu      $a0, $zero, 0x1BD
/* F70FC 8004DBEC 00002821 */  addu       $a1, $zero, $zero
/* F7100 8004DBF0 0C00D925 */  jal        func_80036494_ovl3
/* F7104 8004DBF4 24060025 */   addiu     $a2, $zero, 0x25
/* F7108 8004DBF8 8C44000C */  lw         $a0, 0xC($v0)
/* F710C 8004DBFC 24050284 */  addiu      $a1, $zero, 0x284
/* F7110 8004DC00 0C028D89 */  jal        func_800A3624
/* F7114 8004DC04 24060174 */   addiu     $a2, $zero, 0x174
/* F7118 8004DC08 240401BE */  addiu      $a0, $zero, 0x1BE
/* F711C 8004DC0C 00002821 */  addu       $a1, $zero, $zero
/* F7120 8004DC10 0C00D925 */  jal        func_80036494_ovl3
/* F7124 8004DC14 24060026 */   addiu     $a2, $zero, 0x26
/* F7128 8004DC18 8C44000C */  lw         $a0, 0xC($v0)
/* F712C 8004DC1C 24050318 */  addiu      $a1, $zero, 0x318
/* F7130 8004DC20 0C028D89 */  jal        func_800A3624
/* F7134 8004DC24 240601C4 */   addiu     $a2, $zero, 0x1C4
/* F7138 8004DC28 240401BF */  addiu      $a0, $zero, 0x1BF
/* F713C 8004DC2C 00002821 */  addu       $a1, $zero, $zero
/* F7140 8004DC30 0C00D925 */  jal        func_80036494_ovl3
/* F7144 8004DC34 24060027 */   addiu     $a2, $zero, 0x27
/* F7148 8004DC38 8C44000C */  lw         $a0, 0xC($v0)
/* F714C 8004DC3C 240503A8 */  addiu      $a1, $zero, 0x3A8
/* F7150 8004DC40 0C028D89 */  jal        func_800A3624
/* F7154 8004DC44 24060178 */   addiu     $a2, $zero, 0x178
/* F7158 8004DC48 240401C4 */  addiu      $a0, $zero, 0x1C4
/* F715C 8004DC4C 24050005 */  addiu      $a1, $zero, 0x5
/* F7160 8004DC50 0C00D925 */  jal        func_80036494_ovl3
/* F7164 8004DC54 24060028 */   addiu     $a2, $zero, 0x28
/* F7168 8004DC58 8C44000C */  lw         $a0, 0xC($v0)
/* F716C 8004DC5C 24050100 */  addiu      $a1, $zero, 0x100
/* F7170 8004DC60 0C028D89 */  jal        func_800A3624
/* F7174 8004DC64 24060170 */   addiu     $a2, $zero, 0x170
/* F7178 8004DC68 240401C3 */  addiu      $a0, $zero, 0x1C3
/* F717C 8004DC6C 24050005 */  addiu      $a1, $zero, 0x5
/* F7180 8004DC70 0C00D925 */  jal        func_80036494_ovl3
/* F7184 8004DC74 24060029 */   addiu     $a2, $zero, 0x29
/* F7188 8004DC78 8C44000C */  lw         $a0, 0xC($v0)
/* F718C 8004DC7C 24050040 */  addiu      $a1, $zero, 0x40
/* F7190 8004DC80 0C028D89 */  jal        func_800A3624
/* F7194 8004DC84 24060040 */   addiu     $a2, $zero, 0x40
/* F7198 8004DC88 240401C2 */  addiu      $a0, $zero, 0x1C2
/* F719C 8004DC8C 00002821 */  addu       $a1, $zero, $zero
/* F71A0 8004DC90 0C00D925 */  jal        func_80036494_ovl3
/* F71A4 8004DC94 2406002A */   addiu     $a2, $zero, 0x2A
/* F71A8 8004DC98 8C44000C */  lw         $a0, 0xC($v0)
/* F71AC 8004DC9C 24050354 */  addiu      $a1, $zero, 0x354
/* F71B0 8004DCA0 0C028D89 */  jal        func_800A3624
/* F71B4 8004DCA4 24060220 */   addiu     $a2, $zero, 0x220
/* F71B8 8004DCA8 2404002A */  addiu      $a0, $zero, 0x2A
/* F71BC 8004DCAC 0C00DD19 */  jal        func_80037464_ovl3
/* F71C0 8004DCB0 2405002B */   addiu     $a1, $zero, 0x2B
/* F71C4 8004DCB4 8C44000C */  lw         $a0, 0xC($v0)
/* F71C8 8004DCB8 2405028C */  addiu      $a1, $zero, 0x28C
/* F71CC 8004DCBC 0C028D89 */  jal        func_800A3624
/* F71D0 8004DCC0 24060220 */   addiu     $a2, $zero, 0x220
/* F71D4 8004DCC4 2404002A */  addiu      $a0, $zero, 0x2A
/* F71D8 8004DCC8 0C00DD19 */  jal        func_80037464_ovl3
/* F71DC 8004DCCC 2405002C */   addiu     $a1, $zero, 0x2C
/* F71E0 8004DCD0 8C44000C */  lw         $a0, 0xC($v0)
/* F71E4 8004DCD4 240501B8 */  addiu      $a1, $zero, 0x1B8
/* F71E8 8004DCD8 0C028D89 */  jal        func_800A3624
/* F71EC 8004DCDC 24060228 */   addiu     $a2, $zero, 0x228
/* F71F0 8004DCE0 2404002A */  addiu      $a0, $zero, 0x2A
/* F71F4 8004DCE4 0C00DD19 */  jal        func_80037464_ovl3
/* F71F8 8004DCE8 2405002D */   addiu     $a1, $zero, 0x2D
/* F71FC 8004DCEC 8C44000C */  lw         $a0, 0xC($v0)
/* F7200 8004DCF0 24050020 */  addiu      $a1, $zero, 0x20
/* F7204 8004DCF4 0C028D89 */  jal        func_800A3624
/* F7208 8004DCF8 24060218 */   addiu     $a2, $zero, 0x218
/* F720C 8004DCFC 240401C0 */  addiu      $a0, $zero, 0x1C0
/* F7210 8004DD00 24050005 */  addiu      $a1, $zero, 0x5
/* F7214 8004DD04 0C00D925 */  jal        func_80036494_ovl3
/* F7218 8004DD08 2406002E */   addiu     $a2, $zero, 0x2E
/* F721C 8004DD0C 8C44000C */  lw         $a0, 0xC($v0)
/* F7220 8004DD10 24050310 */  addiu      $a1, $zero, 0x310
/* F7224 8004DD14 0C028D89 */  jal        func_800A3624
/* F7228 8004DD18 240602E4 */   addiu     $a2, $zero, 0x2E4
/* F722C 8004DD1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* F7230 8004DD20 8FB00018 */  lw         $s0, 0x18($sp)
/* F7234 8004DD24 D7B40020 */  ldc1       $f20, 0x20($sp)
/* F7238 8004DD28 03E00008 */  jr         $ra
/* F723C 8004DD2C 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_8004DA18_ovl3, . - func_8004DA18_ovl3
