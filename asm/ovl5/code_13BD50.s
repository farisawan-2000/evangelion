.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80049F50_13BD50
/* 13BD50 80049F50 3C028005 */  lui        $v0, %hi(D_80052E50)
/* 13BD54 80049F54 90422E50 */  lbu        $v0, %lo(D_80052E50)($v0)
/* 13BD58 80049F58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13BD5C 80049F5C AFB1001C */  sw         $s1, 0x1c($sp)
/* 13BD60 80049F60 00808821 */  addu       $s1, $a0, $zero
/* 13BD64 80049F64 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13BD68 80049F68 1040006C */  beqz       $v0, .L8004A11C
/* 13BD6C 80049F6C AFB00018 */   sw        $s0, 0x18($sp)
/* 13BD70 80049F70 0C02A5D2 */  jal        func_800A9748
/* 13BD74 80049F74 24040001 */   addiu     $a0, $zero, 1
/* 13BD78 80049F78 0C02725C */  jal        func_8009C970
/* 13BD7C 80049F7C 00000000 */   nop
/* 13BD80 80049F80 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13BD84 80049F84 8442E0C0 */  lh         $v0, %lo(D_8005E0C0)($v0)
/* 13BD88 80049F88 1840000E */  blez       $v0, .L80049FC4
/* 13BD8C 80049F8C 00000000 */   nop
/* 13BD90 80049F90 3C018006 */  lui        $at, %hi(D_8005CE90)
/* 13BD94 80049F94 8C26CE90 */  lw         $a2, %lo(D_8005CE90)($at)
/* 13BD98 80049F98 8C27CE94 */  lw         $a3, -0x316c($at)
/* 13BD9C 80049F9C 3C01C2E0 */  lui        $at, 0xc2e0
/* 13BDA0 80049FA0 44810000 */  mtc1       $at, $f0
/* 13BDA4 80049FA4 3C014228 */  lui        $at, 0x4228
/* 13BDA8 80049FA8 44811000 */  mtc1       $at, $f2
/* 13BDAC 80049FAC 3C01C120 */  lui        $at, 0xc120
/* 13BDB0 80049FB0 44812000 */  mtc1       $at, $f4
/* 13BDB4 80049FB4 3C01C396 */  lui        $at, 0xc396
/* 13BDB8 80049FB8 44813000 */  mtc1       $at, $f6
/* 13BDBC 80049FBC 080127FC */  j          .L80049FF0
/* 13BDC0 80049FC0 00000000 */   nop
.L80049FC4:
/* 13BDC4 80049FC4 3C018006 */  lui        $at, %hi(D_8005CE98)
/* 13BDC8 80049FC8 8C26CE98 */  lw         $a2, %lo(D_8005CE98)($at)
/* 13BDCC 80049FCC 8C27CE9C */  lw         $a3, -0x3164($at)
/* 13BDD0 80049FD0 3C0142E0 */  lui        $at, 0x42e0
/* 13BDD4 80049FD4 44810000 */  mtc1       $at, $f0
/* 13BDD8 80049FD8 3C014228 */  lui        $at, 0x4228
/* 13BDDC 80049FDC 44811000 */  mtc1       $at, $f2
/* 13BDE0 80049FE0 3C01C120 */  lui        $at, 0xc120
/* 13BDE4 80049FE4 44812000 */  mtc1       $at, $f4
/* 13BDE8 80049FE8 3C014396 */  lui        $at, 0x4396
/* 13BDEC 80049FEC 44813000 */  mtc1       $at, $f6
.L80049FF0:
/* 13BDF0 80049FF0 3C01C28C */  lui        $at, 0xc28c
/* 13BDF4 80049FF4 44814000 */  mtc1       $at, $f8
/* 13BDF8 80049FF8 2404001C */  addiu      $a0, $zero, 0x1c
/* 13BDFC 80049FFC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13BE00 8004A000 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13BE04 8004A004 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13BE08 8004A008 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13BE0C 8004A00C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13BE10 8004A010 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 13BE14 8004A014 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13BE18 8004A018 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 13BE1C 8004A01C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13BE20 8004A020 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 13BE24 8004A024 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13BE28 8004A028 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 13BE2C 8004A02C 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13BE30 8004A030 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
/* 13BE34 8004A034 0C009A78 */  jal        func_800269E0_1187E0
/* 13BE38 8004A038 24050046 */   addiu     $a1, $zero, 0x46
/* 13BE3C 8004A03C 3C018006 */  lui        $at, %hi(D_8005CEA0)
/* 13BE40 8004A040 8C26CEA0 */  lw         $a2, %lo(D_8005CEA0)($at)
/* 13BE44 8004A044 8C27CEA4 */  lw         $a3, -0x315c($at)
/* 13BE48 8004A048 2404001B */  addiu      $a0, $zero, 0x1b
/* 13BE4C 8004A04C 0C009A78 */  jal        func_800269E0_1187E0
/* 13BE50 8004A050 24050046 */   addiu     $a1, $zero, 0x46
/* 13BE54 8004A054 24040053 */  addiu      $a0, $zero, 0x53
/* 13BE58 8004A058 24050048 */  addiu      $a1, $zero, 0x48
/* 13BE5C 8004A05C 24060053 */  addiu      $a2, $zero, 0x53
/* 13BE60 8004A060 240700FF */  addiu      $a3, $zero, 0xff
/* 13BE64 8004A064 240200E6 */  addiu      $v0, $zero, 0xe6
/* 13BE68 8004A068 AFA20010 */  sw         $v0, 0x10($sp)
/* 13BE6C 8004A06C 240200DC */  addiu      $v0, $zero, 0xdc
/* 13BE70 8004A070 0C027101 */  jal        func_8009C404
/* 13BE74 8004A074 AFA20014 */   sw        $v0, 0x14($sp)
/* 13BE78 8004A078 3C014170 */  lui        $at, 0x4170
/* 13BE7C 8004A07C 44810000 */  mtc1       $at, $f0
/* 13BE80 8004A080 3C014180 */  lui        $at, 0x4180
/* 13BE84 8004A084 44811000 */  mtc1       $at, $f2
/* 13BE88 8004A088 3C01C1C0 */  lui        $at, 0xc1c0
/* 13BE8C 8004A08C 44812000 */  mtc1       $at, $f4
/* 13BE90 8004A090 3C014130 */  lui        $at, 0x4130
/* 13BE94 8004A094 44813000 */  mtc1       $at, $f6
/* 13BE98 8004A098 3C0140A0 */  lui        $at, 0x40a0
/* 13BE9C 8004A09C 44814000 */  mtc1       $at, $f8
/* 13BEA0 8004A0A0 3C01C190 */  lui        $at, 0xc190
/* 13BEA4 8004A0A4 44815000 */  mtc1       $at, $f10
/* 13BEA8 8004A0A8 3C018017 */  lui        $at, %hi(D_8016E568)
/* 13BEAC 8004A0AC E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 13BEB0 8004A0B0 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 13BEB4 8004A0B4 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 13BEB8 8004A0B8 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 13BEBC 8004A0BC E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 13BEC0 8004A0C0 3C018015 */  lui        $at, %hi(D_8014A054)
/* 13BEC4 8004A0C4 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 13BEC8 8004A0C8 3C018015 */  lui        $at, %hi(D_8014A050)
/* 13BECC 8004A0CC E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 13BED0 8004A0D0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 13BED4 8004A0D4 0C01286B */  jal        func_8004A1AC_13BFAC
/* 13BED8 8004A0D8 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 13BEDC 8004A0DC 3C108008 */  lui        $s0, %hi(D_80080750)
/* 13BEE0 8004A0E0 26100750 */  addiu      $s0, $s0, %lo(D_80080750)
/* 13BEE4 8004A0E4 02002021 */  addu       $a0, $s0, $zero
/* 13BEE8 8004A0E8 3C018006 */  lui        $at, %hi(D_8005E010)
/* 13BEEC 8004A0EC AC22E010 */  sw         $v0, %lo(D_8005E010)($at)
/* 13BEF0 8004A0F0 0C00A157 */  jal        func_8002855C_11A35C
/* 13BEF4 8004A0F4 2405000D */   addiu     $a1, $zero, 0xd
/* 13BEF8 8004A0F8 3C05C248 */  lui        $a1, 0xc248
/* 13BEFC 8004A0FC 44800000 */  mtc1       $zero, $f0
/* 13BF00 8004A100 00000000 */  nop
/* 13BF04 8004A104 44060000 */  mfc1       $a2, $f0
/* 13BF08 8004A108 02002021 */  addu       $a0, $s0, $zero
/* 13BF0C 8004A10C 0C00A18C */  jal        func_80028630_11A430
/* 13BF10 8004A110 00C03821 */   addu      $a3, $a2, $zero
/* 13BF14 8004A114 3C018005 */  lui        $at, %hi(D_80052E50)
/* 13BF18 8004A118 A0202E50 */  sb         $zero, %lo(D_80052E50)($at)
.L8004A11C:
/* 13BF1C 8004A11C 16200003 */  bnez       $s1, .L8004A12C
/* 13BF20 8004A120 24020001 */   addiu     $v0, $zero, 1
/* 13BF24 8004A124 3C018005 */  lui        $at, %hi(D_80052E54)
/* 13BF28 8004A128 AC222E54 */  sw         $v0, %lo(D_80052E54)($at)
.L8004A12C:
/* 13BF2C 8004A12C 3C028005 */  lui        $v0, %hi(D_80052E54)
/* 13BF30 8004A130 8C422E54 */  lw         $v0, %lo(D_80052E54)($v0)
/* 13BF34 8004A134 1440000C */  bnez       $v0, .L8004A168
/* 13BF38 8004A138 00000000 */   nop
/* 13BF3C 8004A13C 3C048006 */  lui        $a0, %hi(D_8005E010)
/* 13BF40 8004A140 0C01292C */  jal        func_8004A4B0_13C2B0
/* 13BF44 8004A144 8C84E010 */   lw        $a0, %lo(D_8005E010)($a0)
/* 13BF48 8004A148 3C018005 */  lui        $at, %hi(D_80052E54)
/* 13BF4C 8004A14C 0C009767 */  jal        func_80025D9C_117B9C
/* 13BF50 8004A150 AC222E54 */   sw        $v0, %lo(D_80052E54)($at)
/* 13BF54 8004A154 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13BF58 8004A158 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 13BF5C 8004A15C 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13BF60 8004A160 08012866 */  j          .L8004A198
/* 13BF64 8004A164 00001021 */   addu      $v0, $zero, $zero
.L8004A168:
/* 13BF68 8004A168 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13BF6C 8004A16C 0C00A16B */  jal        func_800285AC_11A3AC
/* 13BF70 8004A170 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13BF74 8004A174 3C048006 */  lui        $a0, %hi(D_8005E010)
/* 13BF78 8004A178 0C01298F */  jal        func_8004A63C_13C43C
/* 13BF7C 8004A17C 2484E010 */   addiu     $a0, $a0, %lo(D_8005E010)
/* 13BF80 8004A180 24020001 */  addiu      $v0, $zero, 1
/* 13BF84 8004A184 24030001 */  addiu      $v1, $zero, 1
/* 13BF88 8004A188 3C018005 */  lui        $at, %hi(D_80052E54)
/* 13BF8C 8004A18C AC202E54 */  sw         $zero, %lo(D_80052E54)($at)
/* 13BF90 8004A190 3C018005 */  lui        $at, %hi(D_80052E50)
/* 13BF94 8004A194 A0232E50 */  sb         $v1, %lo(D_80052E50)($at)
.L8004A198:
/* 13BF98 8004A198 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13BF9C 8004A19C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 13BFA0 8004A1A0 8FB00018 */  lw         $s0, 0x18($sp)
/* 13BFA4 8004A1A4 03E00008 */  jr         $ra
/* 13BFA8 8004A1A8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004A1AC_13BFAC
/* 13BFAC 8004A1AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13BFB0 8004A1B0 24040024 */  addiu      $a0, $zero, 0x24
/* 13BFB4 8004A1B4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13BFB8 8004A1B8 AFB3001C */  sw         $s3, 0x1c($sp)
/* 13BFBC 8004A1BC AFB20018 */  sw         $s2, 0x18($sp)
/* 13BFC0 8004A1C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 13BFC4 8004A1C4 0C032663 */  jal        func_800C998C
/* 13BFC8 8004A1C8 AFB00010 */   sw        $s0, 0x10($sp)
/* 13BFCC 8004A1CC 00409821 */  addu       $s3, $v0, $zero
/* 13BFD0 8004A1D0 02602021 */  addu       $a0, $s3, $zero
/* 13BFD4 8004A1D4 0C030134 */  jal        bzero
/* 13BFD8 8004A1D8 24050024 */   addiu     $a1, $zero, 0x24
/* 13BFDC 8004A1DC 3C038006 */  lui        $v1, %hi(D_8005E0C0)
/* 13BFE0 8004A1E0 8463E0C0 */  lh         $v1, %lo(D_8005E0C0)($v1)
/* 13BFE4 8004A1E4 24020014 */  addiu      $v0, $zero, 0x14
/* 13BFE8 8004A1E8 1C60004C */  bgtz       $v1, .L8004A31C
/* 13BFEC 8004A1EC A6620020 */   sh        $v0, 0x20($s3)
/* 13BFF0 8004A1F0 24100001 */  addiu      $s0, $zero, 1
/* 13BFF4 8004A1F4 A670001C */  sh         $s0, 0x1c($s3)
/* 13BFF8 8004A1F8 3C018006 */  lui        $at, %hi(D_8005E124)
/* 13BFFC 8004A1FC A430E124 */  sh         $s0, %lo(D_8005E124)($at)
/* 13C000 8004A200 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C004 8004A204 24120007 */   addiu     $s2, $zero, 7
/* 13C008 8004A208 00402021 */  addu       $a0, $v0, $zero
/* 13C00C 8004A20C 3C118006 */  lui        $s1, %hi(D_8005E1E0)
/* 13C010 8004A210 2631E1E0 */  addiu      $s1, $s1, %lo(D_8005E1E0)
/* 13C014 8004A214 AE640000 */  sw         $a0, ($s3)
/* 13C018 8004A218 AC92001C */  sw         $s2, 0x1c($a0)
/* 13C01C 8004A21C 86230000 */  lh         $v1, ($s1)
/* 13C020 8004A220 3C0142B4 */  lui        $at, 0x42b4
/* 13C024 8004A224 44810000 */  mtc1       $at, $f0
/* 13C028 8004A228 000310C0 */  sll        $v0, $v1, 3
/* 13C02C 8004A22C 00431023 */  subu       $v0, $v0, $v1
/* 13C030 8004A230 00021080 */  sll        $v0, $v0, 2
/* 13C034 8004A234 3C038006 */  lui        $v1, %hi(D_8005CEF4)
/* 13C038 8004A238 00621821 */  addu       $v1, $v1, $v0
/* 13C03C 8004A23C 8C63CEF4 */  lw         $v1, %lo(D_8005CEF4)($v1)
/* 13C040 8004A240 AC800044 */  sw         $zero, 0x44($a0)
/* 13C044 8004A244 A48000F2 */  sh         $zero, 0xf2($a0)
/* 13C048 8004A248 A49000F0 */  sh         $s0, 0xf0($a0)
/* 13C04C 8004A24C 24020121 */  addiu      $v0, $zero, 0x121
/* 13C050 8004A250 AC820008 */  sw         $v0, 8($a0)
/* 13C054 8004A254 24020001 */  addiu      $v0, $zero, 1
/* 13C058 8004A258 AC82000C */  sw         $v0, 0xc($a0)
/* 13C05C 8004A25C E4800054 */  swc1       $f0, 0x54($a0)
/* 13C060 8004A260 AC830004 */  sw         $v1, 4($a0)
/* 13C064 8004A264 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C068 8004A268 8E640000 */   lw        $a0, ($s3)
/* 13C06C 8004A26C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C070 8004A270 00000000 */   nop
/* 13C074 8004A274 00402021 */  addu       $a0, $v0, $zero
/* 13C078 8004A278 AE64000C */  sw         $a0, 0xc($s3)
/* 13C07C 8004A27C AC92001C */  sw         $s2, 0x1c($a0)
/* 13C080 8004A280 86230000 */  lh         $v1, ($s1)
/* 13C084 8004A284 000310C0 */  sll        $v0, $v1, 3
/* 13C088 8004A288 00431023 */  subu       $v0, $v0, $v1
/* 13C08C 8004A28C 00021080 */  sll        $v0, $v0, 2
/* 13C090 8004A290 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 13C094 8004A294 00220821 */  addu       $at, $at, $v0
/* 13C098 8004A298 8C22CEF8 */  lw         $v0, %lo(D_8005CEF8)($at)
/* 13C09C 8004A29C AC820004 */  sw         $v0, 4($a0)
/* 13C0A0 8004A2A0 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C0A4 8004A2A4 8E64000C */   lw        $a0, 0xc($s3)
/* 13C0A8 8004A2A8 8E620000 */  lw         $v0, ($s3)
/* 13C0AC 8004A2AC 8E63000C */  lw         $v1, 0xc($s3)
/* 13C0B0 8004A2B0 8C440034 */  lw         $a0, 0x34($v0)
/* 13C0B4 8004A2B4 8C660034 */  lw         $a2, 0x34($v1)
/* 13C0B8 8004A2B8 3C058006 */  lui        $a1, %hi(D_8005CEA8)
/* 13C0BC 8004A2BC 24A5CEA8 */  addiu      $a1, $a1, %lo(D_8005CEA8)
/* 13C0C0 8004A2C0 0C02864D */  jal        func_800A1934
/* 13C0C4 8004A2C4 00A03821 */   addu      $a3, $a1, $zero
/* 13C0C8 8004A2C8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C0CC 8004A2CC 00000000 */   nop
/* 13C0D0 8004A2D0 00402021 */  addu       $a0, $v0, $zero
/* 13C0D4 8004A2D4 24020003 */  addiu      $v0, $zero, 3
/* 13C0D8 8004A2D8 AE640010 */  sw         $a0, 0x10($s3)
/* 13C0DC 8004A2DC AC82001C */  sw         $v0, 0x1c($a0)
/* 13C0E0 8004A2E0 86230000 */  lh         $v1, ($s1)
/* 13C0E4 8004A2E4 3C013F80 */  lui        $at, 0x3f80
/* 13C0E8 8004A2E8 44810000 */  mtc1       $at, $f0
/* 13C0EC 8004A2EC 000310C0 */  sll        $v0, $v1, 3
/* 13C0F0 8004A2F0 00431023 */  subu       $v0, $v0, $v1
/* 13C0F4 8004A2F4 00021080 */  sll        $v0, $v0, 2
/* 13C0F8 8004A2F8 3C018006 */  lui        $at, %hi(D_8005CF00)
/* 13C0FC 8004A2FC 00220821 */  addu       $at, $at, $v0
/* 13C100 8004A300 8C22CF00 */  lw         $v0, %lo(D_8005CF00)($at)
/* 13C104 8004A304 E480005C */  swc1       $f0, 0x5c($a0)
/* 13C108 8004A308 AC820004 */  sw         $v0, 4($a0)
/* 13C10C 8004A30C 8E630000 */  lw         $v1, ($s3)
/* 13C110 8004A310 8E620010 */  lw         $v0, 0x10($s3)
/* 13C114 8004A314 080128C8 */  j          .L8004A320
/* 13C118 8004A318 AC620100 */   sw        $v0, 0x100($v1)
.L8004A31C:
/* 13C11C 8004A31C A660001C */  sh         $zero, 0x1c($s3)
.L8004A320:
/* 13C120 8004A320 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13C124 8004A324 8442E0C0 */  lh         $v0, %lo(D_8005E0C0)($v0)
/* 13C128 8004A328 1840004B */  blez       $v0, .L8004A458
/* 13C12C 8004A32C 24100001 */   addiu     $s0, $zero, 1
/* 13C130 8004A330 A670001E */  sh         $s0, 0x1e($s3)
/* 13C134 8004A334 3C018006 */  lui        $at, %hi(D_8005E126)
/* 13C138 8004A338 A430E126 */  sh         $s0, %lo(D_8005E126)($at)
/* 13C13C 8004A33C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C140 8004A340 24120007 */   addiu     $s2, $zero, 7
/* 13C144 8004A344 00402021 */  addu       $a0, $v0, $zero
/* 13C148 8004A348 3C118006 */  lui        $s1, %hi(D_8005E1E2)
/* 13C14C 8004A34C 2631E1E2 */  addiu      $s1, $s1, %lo(D_8005E1E2)
/* 13C150 8004A350 AE640004 */  sw         $a0, 4($s3)
/* 13C154 8004A354 AC92001C */  sw         $s2, 0x1c($a0)
/* 13C158 8004A358 86230000 */  lh         $v1, ($s1)
/* 13C15C 8004A35C 3C01C2B4 */  lui        $at, 0xc2b4
/* 13C160 8004A360 44810000 */  mtc1       $at, $f0
/* 13C164 8004A364 000310C0 */  sll        $v0, $v1, 3
/* 13C168 8004A368 00431023 */  subu       $v0, $v0, $v1
/* 13C16C 8004A36C 00021080 */  sll        $v0, $v0, 2
/* 13C170 8004A370 3C038006 */  lui        $v1, %hi(D_8005CEF4)
/* 13C174 8004A374 00621821 */  addu       $v1, $v1, $v0
/* 13C178 8004A378 8C63CEF4 */  lw         $v1, %lo(D_8005CEF4)($v1)
/* 13C17C 8004A37C AC800044 */  sw         $zero, 0x44($a0)
/* 13C180 8004A380 A49000F2 */  sh         $s0, 0xf2($a0)
/* 13C184 8004A384 A49000F0 */  sh         $s0, 0xf0($a0)
/* 13C188 8004A388 24020121 */  addiu      $v0, $zero, 0x121
/* 13C18C 8004A38C AC820008 */  sw         $v0, 8($a0)
/* 13C190 8004A390 24020001 */  addiu      $v0, $zero, 1
/* 13C194 8004A394 AC82000C */  sw         $v0, 0xc($a0)
/* 13C198 8004A398 E4800054 */  swc1       $f0, 0x54($a0)
/* 13C19C 8004A39C AC830004 */  sw         $v1, 4($a0)
/* 13C1A0 8004A3A0 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C1A4 8004A3A4 8E640004 */   lw        $a0, 4($s3)
/* 13C1A8 8004A3A8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C1AC 8004A3AC 00000000 */   nop
/* 13C1B0 8004A3B0 00402021 */  addu       $a0, $v0, $zero
/* 13C1B4 8004A3B4 AE640014 */  sw         $a0, 0x14($s3)
/* 13C1B8 8004A3B8 AC92001C */  sw         $s2, 0x1c($a0)
/* 13C1BC 8004A3BC 86230000 */  lh         $v1, ($s1)
/* 13C1C0 8004A3C0 000310C0 */  sll        $v0, $v1, 3
/* 13C1C4 8004A3C4 00431023 */  subu       $v0, $v0, $v1
/* 13C1C8 8004A3C8 00021080 */  sll        $v0, $v0, 2
/* 13C1CC 8004A3CC 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 13C1D0 8004A3D0 00220821 */  addu       $at, $at, $v0
/* 13C1D4 8004A3D4 8C22CEF8 */  lw         $v0, %lo(D_8005CEF8)($at)
/* 13C1D8 8004A3D8 AC820004 */  sw         $v0, 4($a0)
/* 13C1DC 8004A3DC 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C1E0 8004A3E0 8E640014 */   lw        $a0, 0x14($s3)
/* 13C1E4 8004A3E4 8E620004 */  lw         $v0, 4($s3)
/* 13C1E8 8004A3E8 8E630014 */  lw         $v1, 0x14($s3)
/* 13C1EC 8004A3EC 8C440034 */  lw         $a0, 0x34($v0)
/* 13C1F0 8004A3F0 8C660034 */  lw         $a2, 0x34($v1)
/* 13C1F4 8004A3F4 3C058006 */  lui        $a1, %hi(D_8005CEA8)
/* 13C1F8 8004A3F8 24A5CEA8 */  addiu      $a1, $a1, %lo(D_8005CEA8)
/* 13C1FC 8004A3FC 0C02864D */  jal        func_800A1934
/* 13C200 8004A400 00A03821 */   addu      $a3, $a1, $zero
/* 13C204 8004A404 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C208 8004A408 00000000 */   nop
/* 13C20C 8004A40C 00402021 */  addu       $a0, $v0, $zero
/* 13C210 8004A410 24020003 */  addiu      $v0, $zero, 3
/* 13C214 8004A414 AE640018 */  sw         $a0, 0x18($s3)
/* 13C218 8004A418 AC82001C */  sw         $v0, 0x1c($a0)
/* 13C21C 8004A41C 86230000 */  lh         $v1, ($s1)
/* 13C220 8004A420 3C013F80 */  lui        $at, 0x3f80
/* 13C224 8004A424 44810000 */  mtc1       $at, $f0
/* 13C228 8004A428 000310C0 */  sll        $v0, $v1, 3
/* 13C22C 8004A42C 00431023 */  subu       $v0, $v0, $v1
/* 13C230 8004A430 00021080 */  sll        $v0, $v0, 2
/* 13C234 8004A434 3C018006 */  lui        $at, %hi(D_8005CF00)
/* 13C238 8004A438 00220821 */  addu       $at, $at, $v0
/* 13C23C 8004A43C 8C22CF00 */  lw         $v0, %lo(D_8005CF00)($at)
/* 13C240 8004A440 E480005C */  swc1       $f0, 0x5c($a0)
/* 13C244 8004A444 AC820004 */  sw         $v0, 4($a0)
/* 13C248 8004A448 8E630004 */  lw         $v1, 4($s3)
/* 13C24C 8004A44C 8E620018 */  lw         $v0, 0x18($s3)
/* 13C250 8004A450 08012917 */  j          .L8004A45C
/* 13C254 8004A454 AC620100 */   sw        $v0, 0x100($v1)
.L8004A458:
/* 13C258 8004A458 A660001E */  sh         $zero, 0x1e($s3)
.L8004A45C:
/* 13C25C 8004A45C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13C260 8004A460 00000000 */   nop
/* 13C264 8004A464 3C013DF5 */  lui        $at, 0x3df5
/* 13C268 8004A468 3421C28F */  ori        $at, $at, 0xc28f
/* 13C26C 8004A46C 44810000 */  mtc1       $at, $f0
/* 13C270 8004A470 00402021 */  addu       $a0, $v0, $zero
/* 13C274 8004A474 02601021 */  addu       $v0, $s3, $zero
/* 13C278 8004A478 24030011 */  addiu      $v1, $zero, 0x11
/* 13C27C 8004A47C AC440008 */  sw         $a0, 8($v0)
/* 13C280 8004A480 AC83001C */  sw         $v1, 0x1c($a0)
/* 13C284 8004A484 240300A1 */  addiu      $v1, $zero, 0xa1
/* 13C288 8004A488 AC830004 */  sw         $v1, 4($a0)
/* 13C28C 8004A48C AC800044 */  sw         $zero, 0x44($a0)
/* 13C290 8004A490 E480005C */  swc1       $f0, 0x5c($a0)
/* 13C294 8004A494 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13C298 8004A498 8FB3001C */  lw         $s3, 0x1c($sp)
/* 13C29C 8004A49C 8FB20018 */  lw         $s2, 0x18($sp)
/* 13C2A0 8004A4A0 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C2A4 8004A4A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C2A8 8004A4A8 03E00008 */  jr         $ra
/* 13C2AC 8004A4AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004A4B0_13C2B0
/* 13C2B0 8004A4B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13C2B4 8004A4B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C2B8 8004A4B8 00808021 */  addu       $s0, $a0, $zero
/* 13C2BC 8004A4BC AFBF0018 */  sw         $ra, 0x18($sp)
/* 13C2C0 8004A4C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 13C2C4 8004A4C4 9602001C */  lhu        $v0, 0x1c($s0)
/* 13C2C8 8004A4C8 1040000A */  beqz       $v0, .L8004A4F4
/* 13C2CC 8004A4CC 00008821 */   addu      $s1, $zero, $zero
/* 13C2D0 8004A4D0 8E020000 */  lw         $v0, ($s0)
/* 13C2D4 8004A4D4 8C420038 */  lw         $v0, 0x38($v0)
/* 13C2D8 8004A4D8 10400007 */  beqz       $v0, .L8004A4F8
/* 13C2DC 8004A4DC 00000000 */   nop
/* 13C2E0 8004A4E0 8442001E */  lh         $v0, 0x1e($v0)
/* 13C2E4 8004A4E4 384200FF */  xori       $v0, $v0, 0xff
/* 13C2E8 8004A4E8 2C420001 */  sltiu      $v0, $v0, 1
/* 13C2EC 8004A4EC 0801293E */  j          .L8004A4F8
/* 13C2F0 8004A4F0 00408821 */   addu      $s1, $v0, $zero
.L8004A4F4:
/* 13C2F4 8004A4F4 24110001 */  addiu      $s1, $zero, 1
.L8004A4F8:
/* 13C2F8 8004A4F8 9602001E */  lhu        $v0, 0x1e($s0)
/* 13C2FC 8004A4FC 50400009 */  beql       $v0, $zero, .L8004A524
/* 13C300 8004A500 26310001 */   addiu     $s1, $s1, 1
/* 13C304 8004A504 8E020004 */  lw         $v0, 4($s0)
/* 13C308 8004A508 8C420038 */  lw         $v0, 0x38($v0)
/* 13C30C 8004A50C 10400005 */  beqz       $v0, .L8004A524
/* 13C310 8004A510 00000000 */   nop
/* 13C314 8004A514 8443001E */  lh         $v1, 0x1e($v0)
/* 13C318 8004A518 240200FF */  addiu      $v0, $zero, 0xff
/* 13C31C 8004A51C 50620001 */  beql       $v1, $v0, .L8004A524
/* 13C320 8004A520 26310001 */   addiu     $s1, $s1, 1
.L8004A524:
/* 13C324 8004A524 9602001C */  lhu        $v0, 0x1c($s0)
/* 13C328 8004A528 10400005 */  beqz       $v0, .L8004A540
/* 13C32C 8004A52C 00000000 */   nop
/* 13C330 8004A530 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C334 8004A534 8E040000 */   lw        $a0, ($s0)
/* 13C338 8004A538 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C33C 8004A53C 8E040010 */   lw        $a0, 0x10($s0)
.L8004A540:
/* 13C340 8004A540 9602001E */  lhu        $v0, 0x1e($s0)
/* 13C344 8004A544 10400005 */  beqz       $v0, .L8004A55C
/* 13C348 8004A548 00000000 */   nop
/* 13C34C 8004A54C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C350 8004A550 8E040004 */   lw        $a0, 4($s0)
/* 13C354 8004A554 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C358 8004A558 8E040018 */   lw        $a0, 0x18($s0)
.L8004A55C:
/* 13C35C 8004A55C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13C360 8004A560 8E040008 */   lw        $a0, 8($s0)
/* 13C364 8004A564 9602001C */  lhu        $v0, 0x1c($s0)
/* 13C368 8004A568 10400010 */  beqz       $v0, .L8004A5AC
/* 13C36C 8004A56C 00000000 */   nop
/* 13C370 8004A570 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13C374 8004A574 8E040000 */   lw        $a0, ($s0)
/* 13C378 8004A578 8E040000 */  lw         $a0, ($s0)
/* 13C37C 8004A57C 8E070010 */  lw         $a3, 0x10($s0)
/* 13C380 8004A580 3C058006 */  lui        $a1, %hi(D_8005CEB0)
/* 13C384 8004A584 24A5CEB0 */  addiu      $a1, $a1, %lo(D_8005CEB0)
/* 13C388 8004A588 00003021 */  addu       $a2, $zero, $zero
/* 13C38C 8004A58C 0C00B361 */  jal        func_8002CD84_11EB84
/* 13C390 8004A590 24E70060 */   addiu     $a3, $a3, 0x60
/* 13C394 8004A594 8E030010 */  lw         $v1, 0x10($s0)
/* 13C398 8004A598 8C620000 */  lw         $v0, ($v1)
/* 13C39C 8004A59C 34420001 */  ori        $v0, $v0, 1
/* 13C3A0 8004A5A0 AC620000 */  sw         $v0, ($v1)
/* 13C3A4 8004A5A4 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13C3A8 8004A5A8 8E040010 */   lw        $a0, 0x10($s0)
.L8004A5AC:
/* 13C3AC 8004A5AC 9602001E */  lhu        $v0, 0x1e($s0)
/* 13C3B0 8004A5B0 10400010 */  beqz       $v0, .L8004A5F4
/* 13C3B4 8004A5B4 00000000 */   nop
/* 13C3B8 8004A5B8 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13C3BC 8004A5BC 8E040004 */   lw        $a0, 4($s0)
/* 13C3C0 8004A5C0 8E040004 */  lw         $a0, 4($s0)
/* 13C3C4 8004A5C4 8E070018 */  lw         $a3, 0x18($s0)
/* 13C3C8 8004A5C8 3C058006 */  lui        $a1, %hi(D_8005CEB0)
/* 13C3CC 8004A5CC 24A5CEB0 */  addiu      $a1, $a1, %lo(D_8005CEB0)
/* 13C3D0 8004A5D0 00003021 */  addu       $a2, $zero, $zero
/* 13C3D4 8004A5D4 0C00B361 */  jal        func_8002CD84_11EB84
/* 13C3D8 8004A5D8 24E70060 */   addiu     $a3, $a3, 0x60
/* 13C3DC 8004A5DC 8E030018 */  lw         $v1, 0x18($s0)
/* 13C3E0 8004A5E0 8C620000 */  lw         $v0, ($v1)
/* 13C3E4 8004A5E4 34420001 */  ori        $v0, $v0, 1
/* 13C3E8 8004A5E8 AC620000 */  sw         $v0, ($v1)
/* 13C3EC 8004A5EC 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13C3F0 8004A5F0 8E040018 */   lw        $a0, 0x18($s0)
.L8004A5F4:
/* 13C3F4 8004A5F4 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 13C3F8 8004A5F8 8E040008 */   lw        $a0, 8($s0)
/* 13C3FC 8004A5FC 3223FFFF */  andi       $v1, $s1, 0xffff
/* 13C400 8004A600 24020002 */  addiu      $v0, $zero, 2
/* 13C404 8004A604 14620008 */  bne        $v1, $v0, .L8004A628
/* 13C408 8004A608 00001021 */   addu      $v0, $zero, $zero
/* 13C40C 8004A60C 96020020 */  lhu        $v0, 0x20($s0)
/* 13C410 8004A610 14400003 */  bnez       $v0, .L8004A620
/* 13C414 8004A614 2442FFFF */   addiu     $v0, $v0, -1
/* 13C418 8004A618 0801298A */  j          .L8004A628
/* 13C41C 8004A61C 24020001 */   addiu     $v0, $zero, 1
.L8004A620:
/* 13C420 8004A620 A6020020 */  sh         $v0, 0x20($s0)
/* 13C424 8004A624 00001021 */  addu       $v0, $zero, $zero
.L8004A628:
/* 13C428 8004A628 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13C42C 8004A62C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C430 8004A630 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C434 8004A634 03E00008 */  jr         $ra
/* 13C438 8004A638 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004A63C_13C43C
/* 13C43C 8004A63C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C440 8004A640 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C444 8004A644 00808021 */  addu       $s0, $a0, $zero
/* 13C448 8004A648 12000022 */  beqz       $s0, .L8004A6D4
/* 13C44C 8004A64C AFBF0014 */   sw        $ra, 0x14($sp)
/* 13C450 8004A650 8E040000 */  lw         $a0, ($s0)
/* 13C454 8004A654 1080001F */  beqz       $a0, .L8004A6D4
/* 13C458 8004A658 00000000 */   nop
/* 13C45C 8004A65C 9482001C */  lhu        $v0, 0x1c($a0)
/* 13C460 8004A660 1040000A */  beqz       $v0, .L8004A68C
/* 13C464 8004A664 00000000 */   nop
/* 13C468 8004A668 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C46C 8004A66C 00000000 */   nop
/* 13C470 8004A670 8E040000 */  lw         $a0, ($s0)
/* 13C474 8004A674 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C478 8004A678 2484000C */   addiu     $a0, $a0, 0xc
/* 13C47C 8004A67C 8E040000 */  lw         $a0, ($s0)
/* 13C480 8004A680 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C484 8004A684 24840010 */   addiu     $a0, $a0, 0x10
/* 13C488 8004A688 8E040000 */  lw         $a0, ($s0)
.L8004A68C:
/* 13C48C 8004A68C 9482001E */  lhu        $v0, 0x1e($a0)
/* 13C490 8004A690 10400009 */  beqz       $v0, .L8004A6B8
/* 13C494 8004A694 00000000 */   nop
/* 13C498 8004A698 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C49C 8004A69C 24840004 */   addiu     $a0, $a0, 4
/* 13C4A0 8004A6A0 8E040000 */  lw         $a0, ($s0)
/* 13C4A4 8004A6A4 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C4A8 8004A6A8 24840014 */   addiu     $a0, $a0, 0x14
/* 13C4AC 8004A6AC 8E040000 */  lw         $a0, ($s0)
/* 13C4B0 8004A6B0 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C4B4 8004A6B4 24840018 */   addiu     $a0, $a0, 0x18
.L8004A6B8:
/* 13C4B8 8004A6B8 8E040000 */  lw         $a0, ($s0)
/* 13C4BC 8004A6BC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 13C4C0 8004A6C0 24840008 */   addiu     $a0, $a0, 8
/* 13C4C4 8004A6C4 8E040000 */  lw         $a0, ($s0)
/* 13C4C8 8004A6C8 0C0326A1 */  jal        func_800C9A84
/* 13C4CC 8004A6CC 00000000 */   nop
/* 13C4D0 8004A6D0 AE000000 */  sw         $zero, ($s0)
.L8004A6D4:
/* 13C4D4 8004A6D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13C4D8 8004A6D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C4DC 8004A6DC 03E00008 */  jr         $ra
/* 13C4E0 8004A6E0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 13C4E4 8004A6E4 00000000 */  nop
/* 13C4E8 8004A6E8 00000000 */  nop
/* 13C4EC 8004A6EC 00000000 */  nop