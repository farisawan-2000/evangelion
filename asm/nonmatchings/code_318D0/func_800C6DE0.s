.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C6DE0
/* 319E0 800C6DE0 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 319E4 800C6DE4 AFB400A0 */  sw         $s4, 0xa0($sp)
/* 319E8 800C6DE8 0080A021 */  addu       $s4, $a0, $zero
/* 319EC 800C6DEC AFB3009C */  sw         $s3, 0x9c($sp)
/* 319F0 800C6DF0 00A09821 */  addu       $s3, $a1, $zero
/* 319F4 800C6DF4 00C02821 */  addu       $a1, $a2, $zero
/* 319F8 800C6DF8 AFB500A4 */  sw         $s5, 0xa4($sp)
/* 319FC 800C6DFC 3C158010 */  lui        $s5, %hi(D_800FF090)
/* 31A00 800C6E00 26B5F090 */  addiu      $s5, $s5, %lo(D_800FF090)
/* 31A04 800C6E04 AFBF00A8 */  sw         $ra, 0xa8($sp)
/* 31A08 800C6E08 AFB20098 */  sw         $s2, 0x98($sp)
/* 31A0C 800C6E0C AFB10094 */  sw         $s1, 0x94($sp)
/* 31A10 800C6E10 AFB00090 */  sw         $s0, 0x90($sp)
/* 31A14 800C6E14 AFA700BC */  sw         $a3, 0xbc($sp)
/* 31A18 800C6E18 AFA0003C */  sw         $zero, 0x3c($sp)
.L800C6E1C:
/* 31A1C 800C6E1C 80A20000 */  lb         $v0, ($a1)
/* 31A20 800C6E20 90B10000 */  lbu        $s1, ($a1)
/* 31A24 800C6E24 08031B8D */  j          .L800C6E34
/* 31A28 800C6E28 00A09021 */   addu      $s2, $a1, $zero
.L800C6E2C:
/* 31A2C 800C6E2C 82420000 */  lb         $v0, ($s2)
/* 31A30 800C6E30 92510000 */  lbu        $s1, ($s2)
.L800C6E34:
/* 31A34 800C6E34 0002182B */  sltu       $v1, $zero, $v0
/* 31A38 800C6E38 38420025 */  xori       $v0, $v0, 0x25
/* 31A3C 800C6E3C 0002102B */  sltu       $v0, $zero, $v0
/* 31A40 800C6E40 00621824 */  and        $v1, $v1, $v0
/* 31A44 800C6E44 5460FFF9 */  bnezl      $v1, .L800C6E2C
/* 31A48 800C6E48 26520001 */   addiu     $s2, $s2, 1
/* 31A4C 800C6E4C 02458023 */  subu       $s0, $s2, $a1
/* 31A50 800C6E50 1A000009 */  blez       $s0, .L800C6E78
/* 31A54 800C6E54 02602021 */   addu      $a0, $s3, $zero
/* 31A58 800C6E58 0280F809 */  jalr       $s4
/* 31A5C 800C6E5C 02003021 */   addu      $a2, $s0, $zero
/* 31A60 800C6E60 00409821 */  addu       $s3, $v0, $zero
/* 31A64 800C6E64 12600134 */  beqz       $s3, .L800C7338
/* 31A68 800C6E68 00000000 */   nop
/* 31A6C 800C6E6C 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31A70 800C6E70 00501021 */  addu       $v0, $v0, $s0
/* 31A74 800C6E74 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C6E78:
/* 31A78 800C6E78 1220012F */  beqz       $s1, .L800C7338
/* 31A7C 800C6E7C 26520001 */   addiu     $s2, $s2, 1
/* 31A80 800C6E80 AFA00040 */  sw         $zero, 0x40($sp)
/* 31A84 800C6E84 3C108010 */  lui        $s0, %hi(D_800FF098)
/* 31A88 800C6E88 2610F098 */  addiu      $s0, $s0, %lo(D_800FF098)
.L800C6E8C:
/* 31A8C 800C6E8C 82450000 */  lb         $a1, ($s2)
/* 31A90 800C6E90 0C03015C */  jal        func_800C0570
/* 31A94 800C6E94 02A02021 */   addu      $a0, $s5, $zero
/* 31A98 800C6E98 10400009 */  beqz       $v0, .L800C6EC0
/* 31A9C 800C6E9C 00551023 */   subu      $v0, $v0, $s5
/* 31AA0 800C6EA0 00021080 */  sll        $v0, $v0, 2
/* 31AA4 800C6EA4 00501021 */  addu       $v0, $v0, $s0
/* 31AA8 800C6EA8 8FA30040 */  lw         $v1, 0x40($sp)
/* 31AAC 800C6EAC 8C420000 */  lw         $v0, ($v0)
/* 31AB0 800C6EB0 26520001 */  addiu      $s2, $s2, 1
/* 31AB4 800C6EB4 00621825 */  or         $v1, $v1, $v0
/* 31AB8 800C6EB8 08031BA3 */  j          .L800C6E8C
/* 31ABC 800C6EBC AFA30040 */   sw        $v1, 0x40($sp)
.L800C6EC0:
/* 31AC0 800C6EC0 82430000 */  lb         $v1, ($s2)
/* 31AC4 800C6EC4 2402002A */  addiu      $v0, $zero, 0x2a
/* 31AC8 800C6EC8 14620011 */  bne        $v1, $v0, .L800C6F10
/* 31ACC 800C6ECC 00602021 */   addu      $a0, $v1, $zero
/* 31AD0 800C6ED0 8FA200BC */  lw         $v0, 0xbc($sp)
/* 31AD4 800C6ED4 2403FFFC */  addiu      $v1, $zero, -4
/* 31AD8 800C6ED8 24420003 */  addiu      $v0, $v0, 3
/* 31ADC 800C6EDC 00431024 */  and        $v0, $v0, $v1
/* 31AE0 800C6EE0 24430004 */  addiu      $v1, $v0, 4
/* 31AE4 800C6EE4 AFA300BC */  sw         $v1, 0xbc($sp)
/* 31AE8 800C6EE8 8C420000 */  lw         $v0, ($v0)
/* 31AEC 800C6EEC 04410006 */  bgez       $v0, .L800C6F08
/* 31AF0 800C6EF0 AFA20038 */   sw        $v0, 0x38($sp)
/* 31AF4 800C6EF4 8FA30040 */  lw         $v1, 0x40($sp)
/* 31AF8 800C6EF8 00021023 */  negu       $v0, $v0
/* 31AFC 800C6EFC AFA20038 */  sw         $v0, 0x38($sp)
/* 31B00 800C6F00 34630004 */  ori        $v1, $v1, 4
/* 31B04 800C6F04 AFA30040 */  sw         $v1, 0x40($sp)
.L800C6F08:
/* 31B08 800C6F08 08031BDA */  j          .L800C6F68
/* 31B0C 800C6F0C 26520001 */   addiu     $s2, $s2, 1
.L800C6F10:
/* 31B10 800C6F10 2482FFD0 */  addiu      $v0, $a0, -0x30
/* 31B14 800C6F14 304200FF */  andi       $v0, $v0, 0xff
/* 31B18 800C6F18 2C42000A */  sltiu      $v0, $v0, 0xa
/* 31B1C 800C6F1C 10400012 */  beqz       $v0, .L800C6F68
/* 31B20 800C6F20 AFA00038 */   sw        $zero, 0x38($sp)
.L800C6F24:
/* 31B24 800C6F24 8FA40038 */  lw         $a0, 0x38($sp)
/* 31B28 800C6F28 288203E7 */  slti       $v0, $a0, 0x3e7
/* 31B2C 800C6F2C 50400009 */  beql       $v0, $zero, .L800C6F54
/* 31B30 800C6F30 26520001 */   addiu     $s2, $s2, 1
/* 31B34 800C6F34 00041080 */  sll        $v0, $a0, 2
/* 31B38 800C6F38 82430000 */  lb         $v1, ($s2)
/* 31B3C 800C6F3C 00441021 */  addu       $v0, $v0, $a0
/* 31B40 800C6F40 00021040 */  sll        $v0, $v0, 1
/* 31B44 800C6F44 00431021 */  addu       $v0, $v0, $v1
/* 31B48 800C6F48 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 31B4C 800C6F4C AFA20038 */  sw         $v0, 0x38($sp)
/* 31B50 800C6F50 26520001 */  addiu      $s2, $s2, 1
.L800C6F54:
/* 31B54 800C6F54 92420000 */  lbu        $v0, ($s2)
/* 31B58 800C6F58 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 31B5C 800C6F5C 2C42000A */  sltiu      $v0, $v0, 0xa
/* 31B60 800C6F60 1440FFF0 */  bnez       $v0, .L800C6F24
/* 31B64 800C6F64 00000000 */   nop
.L800C6F68:
/* 31B68 800C6F68 82430000 */  lb         $v1, ($s2)
/* 31B6C 800C6F6C 2402002E */  addiu      $v0, $zero, 0x2e
/* 31B70 800C6F70 10620003 */  beq        $v1, $v0, .L800C6F80
/* 31B74 800C6F74 2402FFFF */   addiu     $v0, $zero, -1
/* 31B78 800C6F78 08031C05 */  j          .L800C7014
/* 31B7C 800C6F7C AFA20034 */   sw        $v0, 0x34($sp)
.L800C6F80:
/* 31B80 800C6F80 26520001 */  addiu      $s2, $s2, 1
/* 31B84 800C6F84 82430000 */  lb         $v1, ($s2)
/* 31B88 800C6F88 2402002A */  addiu      $v0, $zero, 0x2a
/* 31B8C 800C6F8C 1462000B */  bne        $v1, $v0, .L800C6FBC
/* 31B90 800C6F90 00602021 */   addu      $a0, $v1, $zero
/* 31B94 800C6F94 8FA300BC */  lw         $v1, 0xbc($sp)
/* 31B98 800C6F98 2402FFFC */  addiu      $v0, $zero, -4
/* 31B9C 800C6F9C 24630003 */  addiu      $v1, $v1, 3
/* 31BA0 800C6FA0 00621824 */  and        $v1, $v1, $v0
/* 31BA4 800C6FA4 24620004 */  addiu      $v0, $v1, 4
/* 31BA8 800C6FA8 AFA200BC */  sw         $v0, 0xbc($sp)
/* 31BAC 800C6FAC 8C620000 */  lw         $v0, ($v1)
/* 31BB0 800C6FB0 26520001 */  addiu      $s2, $s2, 1
/* 31BB4 800C6FB4 08031C05 */  j          .L800C7014
/* 31BB8 800C6FB8 AFA20034 */   sw        $v0, 0x34($sp)
.L800C6FBC:
/* 31BBC 800C6FBC 2482FFD0 */  addiu      $v0, $a0, -0x30
/* 31BC0 800C6FC0 304200FF */  andi       $v0, $v0, 0xff
/* 31BC4 800C6FC4 2C42000A */  sltiu      $v0, $v0, 0xa
/* 31BC8 800C6FC8 10400012 */  beqz       $v0, .L800C7014
/* 31BCC 800C6FCC AFA00034 */   sw        $zero, 0x34($sp)
.L800C6FD0:
/* 31BD0 800C6FD0 8FA40034 */  lw         $a0, 0x34($sp)
/* 31BD4 800C6FD4 288203E7 */  slti       $v0, $a0, 0x3e7
/* 31BD8 800C6FD8 50400009 */  beql       $v0, $zero, .L800C7000
/* 31BDC 800C6FDC 26520001 */   addiu     $s2, $s2, 1
/* 31BE0 800C6FE0 00041080 */  sll        $v0, $a0, 2
/* 31BE4 800C6FE4 82430000 */  lb         $v1, ($s2)
/* 31BE8 800C6FE8 00441021 */  addu       $v0, $v0, $a0
/* 31BEC 800C6FEC 00021040 */  sll        $v0, $v0, 1
/* 31BF0 800C6FF0 00431021 */  addu       $v0, $v0, $v1
/* 31BF4 800C6FF4 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 31BF8 800C6FF8 AFA20034 */  sw         $v0, 0x34($sp)
/* 31BFC 800C6FFC 26520001 */  addiu      $s2, $s2, 1
.L800C7000:
/* 31C00 800C7000 92420000 */  lbu        $v0, ($s2)
/* 31C04 800C7004 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 31C08 800C7008 2C42000A */  sltiu      $v0, $v0, 0xa
/* 31C0C 800C700C 1440FFF0 */  bnez       $v0, .L800C6FD0
/* 31C10 800C7010 00000000 */   nop
.L800C7014:
/* 31C14 800C7014 82450000 */  lb         $a1, ($s2)
/* 31C18 800C7018 3C048010 */  lui        $a0, %hi(D_800FF0B0)
/* 31C1C 800C701C 2484F0B0 */  addiu      $a0, $a0, %lo(D_800FF0B0)
/* 31C20 800C7020 0C03015C */  jal        func_800C0570
/* 31C24 800C7024 00A08021 */   addu      $s0, $a1, $zero
/* 31C28 800C7028 10400003 */  beqz       $v0, .L800C7038
/* 31C2C 800C702C 02001021 */   addu      $v0, $s0, $zero
/* 31C30 800C7030 08031C0F */  j          .L800C703C
/* 31C34 800C7034 26520001 */   addiu     $s2, $s2, 1
.L800C7038:
/* 31C38 800C7038 00001021 */  addu       $v0, $zero, $zero
.L800C703C:
/* 31C3C 800C703C A3A20044 */  sb         $v0, 0x44($sp)
/* 31C40 800C7040 00021600 */  sll        $v0, $v0, 0x18
/* 31C44 800C7044 00021E03 */  sra        $v1, $v0, 0x18
/* 31C48 800C7048 2402006C */  addiu      $v0, $zero, 0x6c
/* 31C4C 800C704C 14620007 */  bne        $v1, $v0, .L800C706C
/* 31C50 800C7050 27A40010 */   addiu     $a0, $sp, 0x10
/* 31C54 800C7054 82420000 */  lb         $v0, ($s2)
/* 31C58 800C7058 14430004 */  bne        $v0, $v1, .L800C706C
/* 31C5C 800C705C 2402004C */   addiu     $v0, $zero, 0x4c
/* 31C60 800C7060 A3A20044 */  sb         $v0, 0x44($sp)
/* 31C64 800C7064 26520001 */  addiu      $s2, $s2, 1
/* 31C68 800C7068 27A40010 */  addiu      $a0, $sp, 0x10
.L800C706C:
/* 31C6C 800C706C 82460000 */  lb         $a2, ($s2)
/* 31C70 800C7070 27A500BC */  addiu      $a1, $sp, 0xbc
/* 31C74 800C7074 0C031CD8 */  jal        func_800C7360
/* 31C78 800C7078 27A70048 */   addiu     $a3, $sp, 0x48
/* 31C7C 800C707C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 31C80 800C7080 8FA20020 */  lw         $v0, 0x20($sp)
/* 31C84 800C7084 00621821 */  addu       $v1, $v1, $v0
/* 31C88 800C7088 8FA20024 */  lw         $v0, 0x24($sp)
/* 31C8C 800C708C 8FA40028 */  lw         $a0, 0x28($sp)
/* 31C90 800C7090 8FA5002C */  lw         $a1, 0x2c($sp)
/* 31C94 800C7094 00621821 */  addu       $v1, $v1, $v0
/* 31C98 800C7098 00641821 */  addu       $v1, $v1, $a0
/* 31C9C 800C709C 00651821 */  addu       $v1, $v1, $a1
/* 31CA0 800C70A0 8FA40030 */  lw         $a0, 0x30($sp)
/* 31CA4 800C70A4 8FA50038 */  lw         $a1, 0x38($sp)
/* 31CA8 800C70A8 8FA20040 */  lw         $v0, 0x40($sp)
/* 31CAC 800C70AC 00641821 */  addu       $v1, $v1, $a0
/* 31CB0 800C70B0 00A32823 */  subu       $a1, $a1, $v1
/* 31CB4 800C70B4 30420004 */  andi       $v0, $v0, 4
/* 31CB8 800C70B8 14400017 */  bnez       $v0, .L800C7118
/* 31CBC 800C70BC AFA50038 */   sw        $a1, 0x38($sp)
/* 31CC0 800C70C0 18A00015 */  blez       $a1, .L800C7118
/* 31CC4 800C70C4 00000000 */   nop
/* 31CC8 800C70C8 00A08821 */  addu       $s1, $a1, $zero
/* 31CCC 800C70CC 2E220021 */  sltiu      $v0, $s1, 0x21
.L800C70D0:
/* 31CD0 800C70D0 10400002 */  beqz       $v0, .L800C70DC
/* 31CD4 800C70D4 24100020 */   addiu     $s0, $zero, 0x20
/* 31CD8 800C70D8 02208021 */  addu       $s0, $s1, $zero
.L800C70DC:
/* 31CDC 800C70DC 5A00000C */  blezl      $s0, .L800C7110
/* 31CE0 800C70E0 02308823 */   subu      $s1, $s1, $s0
/* 31CE4 800C70E4 02602021 */  addu       $a0, $s3, $zero
/* 31CE8 800C70E8 3C05800F */  lui        $a1, %hi(D_800F7BF0)
/* 31CEC 800C70EC 24A57BF0 */  addiu      $a1, $a1, %lo(D_800F7BF0)
/* 31CF0 800C70F0 0280F809 */  jalr       $s4
/* 31CF4 800C70F4 02003021 */   addu      $a2, $s0, $zero
/* 31CF8 800C70F8 00409821 */  addu       $s3, $v0, $zero
/* 31CFC 800C70FC 1260008E */  beqz       $s3, .L800C7338
/* 31D00 800C7100 02308823 */   subu      $s1, $s1, $s0
/* 31D04 800C7104 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31D08 800C7108 00501021 */  addu       $v0, $v0, $s0
/* 31D0C 800C710C AFA2003C */  sw         $v0, 0x3c($sp)
.L800C7110:
/* 31D10 800C7110 1E20FFEF */  bgtz       $s1, .L800C70D0
/* 31D14 800C7114 2E220021 */   sltiu     $v0, $s1, 0x21
.L800C7118:
/* 31D18 800C7118 8FA6001C */  lw         $a2, 0x1c($sp)
/* 31D1C 800C711C 18C0000A */  blez       $a2, .L800C7148
/* 31D20 800C7120 02602021 */   addu      $a0, $s3, $zero
/* 31D24 800C7124 0280F809 */  jalr       $s4
/* 31D28 800C7128 27A50048 */   addiu     $a1, $sp, 0x48
/* 31D2C 800C712C 00409821 */  addu       $s3, $v0, $zero
/* 31D30 800C7130 12600081 */  beqz       $s3, .L800C7338
/* 31D34 800C7134 00000000 */   nop
/* 31D38 800C7138 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31D3C 800C713C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 31D40 800C7140 00431021 */  addu       $v0, $v0, $v1
/* 31D44 800C7144 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C7148:
/* 31D48 800C7148 8FA20020 */  lw         $v0, 0x20($sp)
/* 31D4C 800C714C 18400015 */  blez       $v0, .L800C71A4
/* 31D50 800C7150 00000000 */   nop
/* 31D54 800C7154 00408821 */  addu       $s1, $v0, $zero
/* 31D58 800C7158 2E220021 */  sltiu      $v0, $s1, 0x21
.L800C715C:
/* 31D5C 800C715C 10400002 */  beqz       $v0, .L800C7168
/* 31D60 800C7160 24100020 */   addiu     $s0, $zero, 0x20
/* 31D64 800C7164 02208021 */  addu       $s0, $s1, $zero
.L800C7168:
/* 31D68 800C7168 5A00000C */  blezl      $s0, .L800C719C
/* 31D6C 800C716C 02308823 */   subu      $s1, $s1, $s0
/* 31D70 800C7170 02602021 */  addu       $a0, $s3, $zero
/* 31D74 800C7174 3C05800F */  lui        $a1, %hi(D_800F7C14)
/* 31D78 800C7178 24A57C14 */  addiu      $a1, $a1, %lo(D_800F7C14)
/* 31D7C 800C717C 0280F809 */  jalr       $s4
/* 31D80 800C7180 02003021 */   addu      $a2, $s0, $zero
/* 31D84 800C7184 00409821 */  addu       $s3, $v0, $zero
/* 31D88 800C7188 1260006B */  beqz       $s3, .L800C7338
/* 31D8C 800C718C 02308823 */   subu      $s1, $s1, $s0
/* 31D90 800C7190 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31D94 800C7194 00501021 */  addu       $v0, $v0, $s0
/* 31D98 800C7198 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C719C:
/* 31D9C 800C719C 1E20FFEF */  bgtz       $s1, .L800C715C
/* 31DA0 800C71A0 2E220021 */   sltiu     $v0, $s1, 0x21
.L800C71A4:
/* 31DA4 800C71A4 8FA60024 */  lw         $a2, 0x24($sp)
/* 31DA8 800C71A8 18C0000B */  blez       $a2, .L800C71D8
/* 31DAC 800C71AC 00000000 */   nop
/* 31DB0 800C71B0 8FA50018 */  lw         $a1, 0x18($sp)
/* 31DB4 800C71B4 0280F809 */  jalr       $s4
/* 31DB8 800C71B8 02602021 */   addu      $a0, $s3, $zero
/* 31DBC 800C71BC 00409821 */  addu       $s3, $v0, $zero
/* 31DC0 800C71C0 1260005D */  beqz       $s3, .L800C7338
/* 31DC4 800C71C4 00000000 */   nop
/* 31DC8 800C71C8 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31DCC 800C71CC 8FA30024 */  lw         $v1, 0x24($sp)
/* 31DD0 800C71D0 00431021 */  addu       $v0, $v0, $v1
/* 31DD4 800C71D4 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C71D8:
/* 31DD8 800C71D8 8FA20028 */  lw         $v0, 0x28($sp)
/* 31DDC 800C71DC 18400015 */  blez       $v0, .L800C7234
/* 31DE0 800C71E0 00000000 */   nop
/* 31DE4 800C71E4 00408821 */  addu       $s1, $v0, $zero
/* 31DE8 800C71E8 2E220021 */  sltiu      $v0, $s1, 0x21
.L800C71EC:
/* 31DEC 800C71EC 10400002 */  beqz       $v0, .L800C71F8
/* 31DF0 800C71F0 24100020 */   addiu     $s0, $zero, 0x20
/* 31DF4 800C71F4 02208021 */  addu       $s0, $s1, $zero
.L800C71F8:
/* 31DF8 800C71F8 5A00000C */  blezl      $s0, .L800C722C
/* 31DFC 800C71FC 02308823 */   subu      $s1, $s1, $s0
/* 31E00 800C7200 02602021 */  addu       $a0, $s3, $zero
/* 31E04 800C7204 3C05800F */  lui        $a1, %hi(D_800F7C14)
/* 31E08 800C7208 24A57C14 */  addiu      $a1, $a1, %lo(D_800F7C14)
/* 31E0C 800C720C 0280F809 */  jalr       $s4
/* 31E10 800C7210 02003021 */   addu      $a2, $s0, $zero
/* 31E14 800C7214 00409821 */  addu       $s3, $v0, $zero
/* 31E18 800C7218 12600047 */  beqz       $s3, .L800C7338
/* 31E1C 800C721C 02308823 */   subu      $s1, $s1, $s0
/* 31E20 800C7220 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31E24 800C7224 00501021 */  addu       $v0, $v0, $s0
/* 31E28 800C7228 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C722C:
/* 31E2C 800C722C 1E20FFEF */  bgtz       $s1, .L800C71EC
/* 31E30 800C7230 2E220021 */   sltiu     $v0, $s1, 0x21
.L800C7234:
/* 31E34 800C7234 8FA6002C */  lw         $a2, 0x2c($sp)
/* 31E38 800C7238 18C0000C */  blez       $a2, .L800C726C
/* 31E3C 800C723C 02602021 */   addu      $a0, $s3, $zero
/* 31E40 800C7240 8FA20018 */  lw         $v0, 0x18($sp)
/* 31E44 800C7244 8FA50024 */  lw         $a1, 0x24($sp)
/* 31E48 800C7248 0280F809 */  jalr       $s4
/* 31E4C 800C724C 00452821 */   addu      $a1, $v0, $a1
/* 31E50 800C7250 00409821 */  addu       $s3, $v0, $zero
/* 31E54 800C7254 12600038 */  beqz       $s3, .L800C7338
/* 31E58 800C7258 00000000 */   nop
/* 31E5C 800C725C 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31E60 800C7260 8FA3002C */  lw         $v1, 0x2c($sp)
/* 31E64 800C7264 00431021 */  addu       $v0, $v0, $v1
/* 31E68 800C7268 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C726C:
/* 31E6C 800C726C 8FA20030 */  lw         $v0, 0x30($sp)
/* 31E70 800C7270 18400015 */  blez       $v0, .L800C72C8
/* 31E74 800C7274 00000000 */   nop
/* 31E78 800C7278 00408821 */  addu       $s1, $v0, $zero
/* 31E7C 800C727C 2E220021 */  sltiu      $v0, $s1, 0x21
.L800C7280:
/* 31E80 800C7280 10400002 */  beqz       $v0, .L800C728C
/* 31E84 800C7284 24100020 */   addiu     $s0, $zero, 0x20
/* 31E88 800C7288 02208021 */  addu       $s0, $s1, $zero
.L800C728C:
/* 31E8C 800C728C 5A00000C */  blezl      $s0, .L800C72C0
/* 31E90 800C7290 02308823 */   subu      $s1, $s1, $s0
/* 31E94 800C7294 02602021 */  addu       $a0, $s3, $zero
/* 31E98 800C7298 3C05800F */  lui        $a1, %hi(D_800F7C14)
/* 31E9C 800C729C 24A57C14 */  addiu      $a1, $a1, %lo(D_800F7C14)
/* 31EA0 800C72A0 0280F809 */  jalr       $s4
/* 31EA4 800C72A4 02003021 */   addu      $a2, $s0, $zero
/* 31EA8 800C72A8 00409821 */  addu       $s3, $v0, $zero
/* 31EAC 800C72AC 12600022 */  beqz       $s3, .L800C7338
/* 31EB0 800C72B0 02308823 */   subu      $s1, $s1, $s0
/* 31EB4 800C72B4 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31EB8 800C72B8 00501021 */  addu       $v0, $v0, $s0
/* 31EBC 800C72BC AFA2003C */  sw         $v0, 0x3c($sp)
.L800C72C0:
/* 31EC0 800C72C0 1E20FFEF */  bgtz       $s1, .L800C7280
/* 31EC4 800C72C4 2E220021 */   sltiu     $v0, $s1, 0x21
.L800C72C8:
/* 31EC8 800C72C8 8FA20040 */  lw         $v0, 0x40($sp)
/* 31ECC 800C72CC 30420004 */  andi       $v0, $v0, 4
/* 31ED0 800C72D0 1040FED2 */  beqz       $v0, .L800C6E1C
/* 31ED4 800C72D4 26450001 */   addiu     $a1, $s2, 1
/* 31ED8 800C72D8 8FA20038 */  lw         $v0, 0x38($sp)
/* 31EDC 800C72DC 1840FECF */  blez       $v0, .L800C6E1C
/* 31EE0 800C72E0 00408821 */   addu      $s1, $v0, $zero
/* 31EE4 800C72E4 2E220021 */  sltiu      $v0, $s1, 0x21
.L800C72E8:
/* 31EE8 800C72E8 10400002 */  beqz       $v0, .L800C72F4
/* 31EEC 800C72EC 24100020 */   addiu     $s0, $zero, 0x20
/* 31EF0 800C72F0 02208021 */  addu       $s0, $s1, $zero
.L800C72F4:
/* 31EF4 800C72F4 5A00000C */  blezl      $s0, .L800C7328
/* 31EF8 800C72F8 02308823 */   subu      $s1, $s1, $s0
/* 31EFC 800C72FC 02602021 */  addu       $a0, $s3, $zero
/* 31F00 800C7300 3C05800F */  lui        $a1, %hi(D_800F7BF0)
/* 31F04 800C7304 24A57BF0 */  addiu      $a1, $a1, %lo(D_800F7BF0)
/* 31F08 800C7308 0280F809 */  jalr       $s4
/* 31F0C 800C730C 02003021 */   addu      $a2, $s0, $zero
/* 31F10 800C7310 00409821 */  addu       $s3, $v0, $zero
/* 31F14 800C7314 12600008 */  beqz       $s3, .L800C7338
/* 31F18 800C7318 02308823 */   subu      $s1, $s1, $s0
/* 31F1C 800C731C 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31F20 800C7320 00501021 */  addu       $v0, $v0, $s0
/* 31F24 800C7324 AFA2003C */  sw         $v0, 0x3c($sp)
.L800C7328:
/* 31F28 800C7328 1E20FFEF */  bgtz       $s1, .L800C72E8
/* 31F2C 800C732C 2E220021 */   sltiu     $v0, $s1, 0x21
/* 31F30 800C7330 08031B87 */  j          .L800C6E1C
/* 31F34 800C7334 26450001 */   addiu     $a1, $s2, 1
.L800C7338:
/* 31F38 800C7338 8FA2003C */  lw         $v0, 0x3c($sp)
/* 31F3C 800C733C 8FBF00A8 */  lw         $ra, 0xa8($sp)
/* 31F40 800C7340 8FB500A4 */  lw         $s5, 0xa4($sp)
/* 31F44 800C7344 8FB400A0 */  lw         $s4, 0xa0($sp)
/* 31F48 800C7348 8FB3009C */  lw         $s3, 0x9c($sp)
/* 31F4C 800C734C 8FB20098 */  lw         $s2, 0x98($sp)
/* 31F50 800C7350 8FB10094 */  lw         $s1, 0x94($sp)
/* 31F54 800C7354 8FB00090 */  lw         $s0, 0x90($sp)
/* 31F58 800C7358 03E00008 */  jr         $ra
/* 31F5C 800C735C 27BD00B0 */   addiu     $sp, $sp, 0xb0
