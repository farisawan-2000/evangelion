.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8004A900_F3E10
/* F3E10 8004A900 27BDFEE0 */  addiu      $sp, $sp, -0x120
/* F3E14 8004A904 AFB20108 */  sw         $s2, 0x108($sp)
/* F3E18 8004A908 00809021 */  addu       $s2, $a0, $zero
/* F3E1C 8004A90C AFBF010C */  sw         $ra, 0x10c($sp)
/* F3E20 8004A910 AFB10104 */  sw         $s1, 0x104($sp)
/* F3E24 8004A914 AFB00100 */  sw         $s0, 0x100($sp)
/* F3E28 8004A918 F7B60118 */  sdc1       $f22, 0x118($sp)
/* F3E2C 8004A91C F7B40110 */  sdc1       $f20, 0x110($sp)
/* F3E30 8004A920 3C058007 */  lui        $a1, %hi(D_8006A160)
/* F3E34 8004A924 24A5A160 */  addiu      $a1, $a1, %lo(D_8006A160)
/* F3E38 8004A928 88A20000 */  lwl        $v0, ($a1)
/* F3E3C 8004A92C 98A20003 */  lwr        $v0, 3($a1)
/* F3E40 8004A930 88A30004 */  lwl        $v1, 4($a1)
/* F3E44 8004A934 98A30007 */  lwr        $v1, 7($a1)
/* F3E48 8004A938 80A40008 */  lb         $a0, 8($a1)
/* F3E4C 8004A93C ABA20058 */  swl        $v0, 0x58($sp)
/* F3E50 8004A940 BBA2005B */  swr        $v0, 0x5b($sp)
/* F3E54 8004A944 ABA3005C */  swl        $v1, 0x5c($sp)
/* F3E58 8004A948 BBA3005F */  swr        $v1, 0x5f($sp)
/* F3E5C 8004A94C A3A40060 */  sb         $a0, 0x60($sp)
/* F3E60 8004A950 80A20009 */  lb         $v0, 9($a1)
/* F3E64 8004A954 80A3000A */  lb         $v1, 0xa($a1)
/* F3E68 8004A958 A3A20061 */  sb         $v0, 0x61($sp)
/* F3E6C 8004A95C A3A30062 */  sb         $v1, 0x62($sp)
/* F3E70 8004A960 3C058007 */  lui        $a1, %hi(D_8006A16C)
/* F3E74 8004A964 24A5A16C */  addiu      $a1, $a1, %lo(D_8006A16C)
/* F3E78 8004A968 88A20000 */  lwl        $v0, ($a1)
/* F3E7C 8004A96C 98A20003 */  lwr        $v0, 3($a1)
/* F3E80 8004A970 88A30004 */  lwl        $v1, 4($a1)
/* F3E84 8004A974 98A30007 */  lwr        $v1, 7($a1)
/* F3E88 8004A978 88A40008 */  lwl        $a0, 8($a1)
/* F3E8C 8004A97C 98A4000B */  lwr        $a0, 0xb($a1)
/* F3E90 8004A980 ABA20068 */  swl        $v0, 0x68($sp)
/* F3E94 8004A984 BBA2006B */  swr        $v0, 0x6b($sp)
/* F3E98 8004A988 ABA3006C */  swl        $v1, 0x6c($sp)
/* F3E9C 8004A98C BBA3006F */  swr        $v1, 0x6f($sp)
/* F3EA0 8004A990 ABA40070 */  swl        $a0, 0x70($sp)
/* F3EA4 8004A994 BBA40073 */  swr        $a0, 0x73($sp)
/* F3EA8 8004A998 88A2000C */  lwl        $v0, 0xc($a1)
/* F3EAC 8004A99C 98A2000F */  lwr        $v0, 0xf($a1)
/* F3EB0 8004A9A0 88A30010 */  lwl        $v1, 0x10($a1)
/* F3EB4 8004A9A4 98A30013 */  lwr        $v1, 0x13($a1)
/* F3EB8 8004A9A8 88A40014 */  lwl        $a0, 0x14($a1)
/* F3EBC 8004A9AC 98A40017 */  lwr        $a0, 0x17($a1)
/* F3EC0 8004A9B0 ABA20074 */  swl        $v0, 0x74($sp)
/* F3EC4 8004A9B4 BBA20077 */  swr        $v0, 0x77($sp)
/* F3EC8 8004A9B8 ABA30078 */  swl        $v1, 0x78($sp)
/* F3ECC 8004A9BC BBA3007B */  swr        $v1, 0x7b($sp)
/* F3ED0 8004A9C0 ABA4007C */  swl        $a0, 0x7c($sp)
/* F3ED4 8004A9C4 BBA4007F */  swr        $a0, 0x7f($sp)
/* F3ED8 8004A9C8 88A20018 */  lwl        $v0, 0x18($a1)
/* F3EDC 8004A9CC 98A2001B */  lwr        $v0, 0x1b($a1)
/* F3EE0 8004A9D0 80A3001C */  lb         $v1, 0x1c($a1)
/* F3EE4 8004A9D4 80A4001D */  lb         $a0, 0x1d($a1)
/* F3EE8 8004A9D8 ABA20080 */  swl        $v0, 0x80($sp)
/* F3EEC 8004A9DC BBA20083 */  swr        $v0, 0x83($sp)
/* F3EF0 8004A9E0 A3A30084 */  sb         $v1, 0x84($sp)
/* F3EF4 8004A9E4 A3A40085 */  sb         $a0, 0x85($sp)
/* F3EF8 8004A9E8 80A2001E */  lb         $v0, 0x1e($a1)
/* F3EFC 8004A9EC A3A20086 */  sb         $v0, 0x86($sp)
/* F3F00 8004A9F0 3C058007 */  lui        $a1, %hi(D_8006A18C)
/* F3F04 8004A9F4 24A5A18C */  addiu      $a1, $a1, %lo(D_8006A18C)
/* F3F08 8004A9F8 88A20000 */  lwl        $v0, ($a1)
/* F3F0C 8004A9FC 98A20003 */  lwr        $v0, 3($a1)
/* F3F10 8004AA00 88A30004 */  lwl        $v1, 4($a1)
/* F3F14 8004AA04 98A30007 */  lwr        $v1, 7($a1)
/* F3F18 8004AA08 88A40008 */  lwl        $a0, 8($a1)
/* F3F1C 8004AA0C 98A4000B */  lwr        $a0, 0xb($a1)
/* F3F20 8004AA10 ABA20088 */  swl        $v0, 0x88($sp)
/* F3F24 8004AA14 BBA2008B */  swr        $v0, 0x8b($sp)
/* F3F28 8004AA18 ABA3008C */  swl        $v1, 0x8c($sp)
/* F3F2C 8004AA1C BBA3008F */  swr        $v1, 0x8f($sp)
/* F3F30 8004AA20 ABA40090 */  swl        $a0, 0x90($sp)
/* F3F34 8004AA24 BBA40093 */  swr        $a0, 0x93($sp)
/* F3F38 8004AA28 80A2000C */  lb         $v0, 0xc($a1)
/* F3F3C 8004AA2C A3A20094 */  sb         $v0, 0x94($sp)
/* F3F40 8004AA30 3C058007 */  lui        $a1, %hi(D_8006A19C)
/* F3F44 8004AA34 24A5A19C */  addiu      $a1, $a1, %lo(D_8006A19C)
/* F3F48 8004AA38 88A20000 */  lwl        $v0, ($a1)
/* F3F4C 8004AA3C 98A20003 */  lwr        $v0, 3($a1)
/* F3F50 8004AA40 88A30004 */  lwl        $v1, 4($a1)
/* F3F54 8004AA44 98A30007 */  lwr        $v1, 7($a1)
/* F3F58 8004AA48 ABA20098 */  swl        $v0, 0x98($sp)
/* F3F5C 8004AA4C BBA2009B */  swr        $v0, 0x9b($sp)
/* F3F60 8004AA50 ABA3009C */  swl        $v1, 0x9c($sp)
/* F3F64 8004AA54 BBA3009F */  swr        $v1, 0x9f($sp)
/* F3F68 8004AA58 27A700A0 */  addiu      $a3, $sp, 0xa0
/* F3F6C 8004AA5C 3C068007 */  lui        $a2, %hi(D_8006A1A4)
/* F3F70 8004AA60 24C6A1A4 */  addiu      $a2, $a2, %lo(D_8006A1A4)
/* F3F74 8004AA64 00E61025 */  or         $v0, $a3, $a2
/* F3F78 8004AA68 30420003 */  andi       $v0, $v0, 3
/* F3F7C 8004AA6C 10400016 */  beqz       $v0, .L8004AAC8
/* F3F80 8004AA70 24C80030 */   addiu     $t0, $a2, 0x30
.L8004AA74:
/* F3F84 8004AA74 88C20000 */  lwl        $v0, ($a2)
/* F3F88 8004AA78 98C20003 */  lwr        $v0, 3($a2)
/* F3F8C 8004AA7C 88C30004 */  lwl        $v1, 4($a2)
/* F3F90 8004AA80 98C30007 */  lwr        $v1, 7($a2)
/* F3F94 8004AA84 88C40008 */  lwl        $a0, 8($a2)
/* F3F98 8004AA88 98C4000B */  lwr        $a0, 0xb($a2)
/* F3F9C 8004AA8C 88C5000C */  lwl        $a1, 0xc($a2)
/* F3FA0 8004AA90 98C5000F */  lwr        $a1, 0xf($a2)
/* F3FA4 8004AA94 A8E20000 */  swl        $v0, ($a3)
/* F3FA8 8004AA98 B8E20003 */  swr        $v0, 3($a3)
/* F3FAC 8004AA9C A8E30004 */  swl        $v1, 4($a3)
/* F3FB0 8004AAA0 B8E30007 */  swr        $v1, 7($a3)
/* F3FB4 8004AAA4 A8E40008 */  swl        $a0, 8($a3)
/* F3FB8 8004AAA8 B8E4000B */  swr        $a0, 0xb($a3)
/* F3FBC 8004AAAC A8E5000C */  swl        $a1, 0xc($a3)
/* F3FC0 8004AAB0 B8E5000F */  swr        $a1, 0xf($a3)
/* F3FC4 8004AAB4 24C60010 */  addiu      $a2, $a2, 0x10
/* F3FC8 8004AAB8 14C8FFEE */  bne        $a2, $t0, .L8004AA74
/* F3FCC 8004AABC 24E70010 */   addiu     $a3, $a3, 0x10
/* F3FD0 8004AAC0 08012ABD */  j          .L8004AAF4
/* F3FD4 8004AAC4 00000000 */   nop
.L8004AAC8:
/* F3FD8 8004AAC8 8CC20000 */  lw         $v0, ($a2)
/* F3FDC 8004AACC 8CC30004 */  lw         $v1, 4($a2)
/* F3FE0 8004AAD0 8CC40008 */  lw         $a0, 8($a2)
/* F3FE4 8004AAD4 8CC5000C */  lw         $a1, 0xc($a2)
/* F3FE8 8004AAD8 ACE20000 */  sw         $v0, ($a3)
/* F3FEC 8004AADC ACE30004 */  sw         $v1, 4($a3)
/* F3FF0 8004AAE0 ACE40008 */  sw         $a0, 8($a3)
/* F3FF4 8004AAE4 ACE5000C */  sw         $a1, 0xc($a3)
/* F3FF8 8004AAE8 24C60010 */  addiu      $a2, $a2, 0x10
/* F3FFC 8004AAEC 14C8FFF6 */  bne        $a2, $t0, .L8004AAC8
/* F4000 8004AAF0 24E70010 */   addiu     $a3, $a3, 0x10
.L8004AAF4:
/* F4004 8004AAF4 88C20000 */  lwl        $v0, ($a2)
/* F4008 8004AAF8 98C20003 */  lwr        $v0, 3($a2)
/* F400C 8004AAFC 88C30004 */  lwl        $v1, 4($a2)
/* F4010 8004AB00 98C30007 */  lwr        $v1, 7($a2)
/* F4014 8004AB04 88C40008 */  lwl        $a0, 8($a2)
/* F4018 8004AB08 98C4000B */  lwr        $a0, 0xb($a2)
/* F401C 8004AB0C A8E20000 */  swl        $v0, ($a3)
/* F4020 8004AB10 B8E20003 */  swr        $v0, 3($a3)
/* F4024 8004AB14 A8E30004 */  swl        $v1, 4($a3)
/* F4028 8004AB18 B8E30007 */  swr        $v1, 7($a3)
/* F402C 8004AB1C A8E40008 */  swl        $a0, 8($a3)
/* F4030 8004AB20 0C00D7D8 */  jal        func_80035F60_DF470
/* F4034 8004AB24 B8E4000B */   swr       $a0, 0xb($a3)
/* F4038 8004AB28 1040000D */  beqz       $v0, .L8004AB60
/* F403C 8004AB2C 00000000 */   nop
/* F4040 8004AB30 3C028007 */  lui        $v0, %hi(D_8006C12A)
/* F4044 8004AB34 9042C12A */  lbu        $v0, %lo(D_8006C12A)($v0)
/* F4048 8004AB38 14400009 */  bnez       $v0, .L8004AB60
/* F404C 8004AB3C 24030001 */   addiu     $v1, $zero, 1
/* F4050 8004AB40 9642001C */  lhu        $v0, 0x1c($s2)
/* F4054 8004AB44 3C018007 */  lui        $at, %hi(D_8006C12A)
/* F4058 8004AB48 A023C12A */  sb         $v1, %lo(D_8006C12A)($at)
/* F405C 8004AB4C 0002182B */  sltu       $v1, $zero, $v0
/* F4060 8004AB50 2C420013 */  sltiu      $v0, $v0, 0x13
/* F4064 8004AB54 00621824 */  and        $v1, $v1, $v0
/* F4068 8004AB58 1460066A */  bnez       $v1, .L8004C504
/* F406C 8004AB5C 24020013 */   addiu     $v0, $zero, 0x13
.L8004AB60:
/* F4070 8004AB60 9642001C */  lhu        $v0, 0x1c($s2)
/* F4074 8004AB64 2C420002 */  sltiu      $v0, $v0, 2
/* F4078 8004AB68 1440000A */  bnez       $v0, .L8004AB94
/* F407C 8004AB6C 00000000 */   nop
/* F4080 8004AB70 3C048007 */  lui        $a0, %hi(D_8006C0D0)
/* F4084 8004AB74 0C028A40 */  jal        func_800A2900
/* F4088 8004AB78 8C84C0D0 */   lw        $a0, %lo(D_8006C0D0)($a0)
/* F408C 8004AB7C 3C048007 */  lui        $a0, %hi(D_8006C0D4)
/* F4090 8004AB80 0C028A40 */  jal        func_800A2900
/* F4094 8004AB84 8C84C0D4 */   lw        $a0, %lo(D_8006C0D4)($a0)
/* F4098 8004AB88 3C048007 */  lui        $a0, %hi(D_8006C0D8)
/* F409C 8004AB8C 0C028A40 */  jal        func_800A2900
/* F40A0 8004AB90 8C84C0D8 */   lw        $a0, %lo(D_8006C0D8)($a0)
.L8004AB94:
/* F40A4 8004AB94 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F40A8 8004AB98 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F40AC 8004AB9C 9644001C */  lhu        $a0, 0x1c($s2)
/* F40B0 8004ABA0 3C038007 */  lui        $v1, %hi(D_8006C0DC)
/* F40B4 8004ABA4 9463C0DC */  lhu        $v1, %lo(D_8006C0DC)($v1)
/* F40B8 8004ABA8 24420001 */  addiu      $v0, $v0, 1
/* F40BC 8004ABAC 3C018007 */  lui        $at, %hi(D_8006C564)
/* F40C0 8004ABB0 10830006 */  beq        $a0, $v1, .L8004ABCC
/* F40C4 8004ABB4 AC22C564 */   sw        $v0, %lo(D_8006C564)($at)
/* F40C8 8004ABB8 9642001C */  lhu        $v0, 0x1c($s2)
/* F40CC 8004ABBC 3C018007 */  lui        $at, %hi(D_8006C564)
/* F40D0 8004ABC0 AC20C564 */  sw         $zero, %lo(D_8006C564)($at)
/* F40D4 8004ABC4 3C018007 */  lui        $at, %hi(D_8006C0DC)
/* F40D8 8004ABC8 A422C0DC */  sh         $v0, %lo(D_8006C0DC)($at)
.L8004ABCC:
/* F40DC 8004ABCC 9643001C */  lhu        $v1, 0x1c($s2)
/* F40E0 8004ABD0 2402000D */  addiu      $v0, $zero, 0xd
/* F40E4 8004ABD4 1062047A */  beq        $v1, $v0, .L8004BDC0
/* F40E8 8004ABD8 2862000E */   slti      $v0, $v1, 0xe
/* F40EC 8004ABDC 10400027 */  beqz       $v0, .L8004AC7C
/* F40F0 8004ABE0 24020006 */   addiu     $v0, $zero, 6
/* F40F4 8004ABE4 1062025D */  beq        $v1, $v0, .L8004B55C
/* F40F8 8004ABE8 28620007 */   slti      $v0, $v1, 7
/* F40FC 8004ABEC 10400011 */  beqz       $v0, .L8004AC34
/* F4100 8004ABF0 24100002 */   addiu     $s0, $zero, 2
/* F4104 8004ABF4 1070009B */  beq        $v1, $s0, .L8004AE64
/* F4108 8004ABF8 28620003 */   slti      $v0, $v1, 3
/* F410C 8004ABFC 50400007 */  beql       $v0, $zero, .L8004AC1C
/* F4110 8004AC00 24020004 */   addiu     $v0, $zero, 4
/* F4114 8004AC04 1060004C */  beqz       $v1, .L8004AD38
/* F4118 8004AC08 24020001 */   addiu     $v0, $zero, 1
/* F411C 8004AC0C 10620077 */  beq        $v1, $v0, .L8004ADEC
/* F4120 8004AC10 00001021 */   addu      $v0, $zero, $zero
/* F4124 8004AC14 08013436 */  j          .L8004D0D8
/* F4128 8004AC18 00000000 */   nop
.L8004AC1C:
/* F412C 8004AC1C 10620144 */  beq        $v1, $v0, .L8004B130
/* F4130 8004AC20 28620005 */   slti      $v0, $v1, 5
/* F4134 8004AC24 10400236 */  beqz       $v0, .L8004B500
/* F4138 8004AC28 00000000 */   nop
/* F413C 8004AC2C 08012C2B */  j          .L8004B0AC
/* F4140 8004AC30 00000000 */   nop
.L8004AC34:
/* F4144 8004AC34 24020009 */  addiu      $v0, $zero, 9
/* F4148 8004AC38 10620349 */  beq        $v1, $v0, .L8004B960
/* F414C 8004AC3C 2862000A */   slti      $v0, $v1, 0xa
/* F4150 8004AC40 10400007 */  beqz       $v0, .L8004AC60
/* F4154 8004AC44 24020007 */   addiu     $v0, $zero, 7
/* F4158 8004AC48 10620301 */  beq        $v1, $v0, .L8004B850
/* F415C 8004AC4C 24020008 */   addiu     $v0, $zero, 8
/* F4160 8004AC50 10620313 */  beq        $v1, $v0, .L8004B8A0
/* F4164 8004AC54 00001021 */   addu      $v0, $zero, $zero
/* F4168 8004AC58 08013436 */  j          .L8004D0D8
/* F416C 8004AC5C 00000000 */   nop
.L8004AC60:
/* F4170 8004AC60 2402000B */  addiu      $v0, $zero, 0xb
/* F4174 8004AC64 106203F3 */  beq        $v1, $v0, .L8004BC34
/* F4178 8004AC68 2862000C */   slti      $v0, $v1, 0xc
/* F417C 8004AC6C 104003F9 */  beqz       $v0, .L8004BC54
/* F4180 8004AC70 00000000 */   nop
/* F4184 8004AC74 08012E62 */  j          .L8004B988
/* F4188 8004AC78 00000000 */   nop
.L8004AC7C:
/* F418C 8004AC7C 24020014 */  addiu      $v0, $zero, 0x14
/* F4190 8004AC80 10620640 */  beq        $v1, $v0, .L8004C584
/* F4194 8004AC84 28620015 */   slti      $v0, $v1, 0x15
/* F4198 8004AC88 10400012 */  beqz       $v0, .L8004ACD4
/* F419C 8004AC8C 24020010 */   addiu     $v0, $zero, 0x10
/* F41A0 8004AC90 106204ED */  beq        $v1, $v0, .L8004C048
/* F41A4 8004AC94 28620011 */   slti      $v0, $v1, 0x11
/* F41A8 8004AC98 10400007 */  beqz       $v0, .L8004ACB8
/* F41AC 8004AC9C 2402000E */   addiu     $v0, $zero, 0xe
/* F41B0 8004ACA0 10620451 */  beq        $v1, $v0, .L8004BDE8
/* F41B4 8004ACA4 2402000F */   addiu     $v0, $zero, 0xf
/* F41B8 8004ACA8 106204DD */  beq        $v1, $v0, .L8004C020
/* F41BC 8004ACAC 00001021 */   addu      $v0, $zero, $zero
/* F41C0 8004ACB0 08013436 */  j          .L8004D0D8
/* F41C4 8004ACB4 00000000 */   nop
.L8004ACB8:
/* F41C8 8004ACB8 24020012 */  addiu      $v0, $zero, 0x12
/* F41CC 8004ACBC 10620535 */  beq        $v1, $v0, .L8004C194
/* F41D0 8004ACC0 28620013 */   slti      $v0, $v1, 0x13
/* F41D4 8004ACC4 10400611 */  beqz       $v0, .L8004C50C
/* F41D8 8004ACC8 00000000 */   nop
/* F41DC 8004ACCC 08013054 */  j          .L8004C150
/* F41E0 8004ACD0 00000000 */   nop
.L8004ACD4:
/* F41E4 8004ACD4 24020018 */  addiu      $v0, $zero, 0x18
/* F41E8 8004ACD8 10620869 */  beq        $v1, $v0, .L8004CE80
/* F41EC 8004ACDC 28620019 */   slti      $v0, $v1, 0x19
/* F41F0 8004ACE0 10400007 */  beqz       $v0, .L8004AD00
/* F41F4 8004ACE4 24020016 */   addiu     $v0, $zero, 0x16
/* F41F8 8004ACE8 10620713 */  beq        $v1, $v0, .L8004C938
/* F41FC 8004ACEC 28620017 */   slti      $v0, $v1, 0x17
/* F4200 8004ACF0 1040085B */  beqz       $v0, .L8004CE60
/* F4204 8004ACF4 00000000 */   nop
/* F4208 8004ACF8 08013209 */  j          .L8004C824
/* F420C 8004ACFC 00000000 */   nop
.L8004AD00:
/* F4210 8004AD00 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F4214 8004AD04 106208E1 */  beq        $v1, $v0, .L8004D08C
/* F4218 8004AD08 0043102A */   slt       $v0, $v0, $v1
/* F421C 8004AD0C 14400006 */  bnez       $v0, .L8004AD28
/* F4220 8004AD10 3402FFFF */   ori       $v0, $zero, 0xffff
/* F4224 8004AD14 24020019 */  addiu      $v0, $zero, 0x19
/* F4228 8004AD18 106208D6 */  beq        $v1, $v0, .L8004D074
/* F422C 8004AD1C 00000000 */   nop
/* F4230 8004AD20 08013436 */  j          .L8004D0D8
/* F4234 8004AD24 00001021 */   addu      $v0, $zero, $zero
.L8004AD28:
/* F4238 8004AD28 106208D2 */  beq        $v1, $v0, .L8004D074
/* F423C 8004AD2C 00000000 */   nop
/* F4240 8004AD30 08013436 */  j          .L8004D0D8
/* F4244 8004AD34 00001021 */   addu      $v0, $zero, $zero
.L8004AD38:
/* F4248 8004AD38 0C00D7DD */  jal        func_80035F74_DF484
/* F424C 8004AD3C 241000E0 */   addiu     $s0, $zero, 0xe0
/* F4250 8004AD40 0C029375 */  jal        func_800A4DD4
/* F4254 8004AD44 00000000 */   nop
/* F4258 8004AD48 00402021 */  addu       $a0, $v0, $zero
/* F425C 8004AD4C 24050010 */  addiu      $a1, $zero, 0x10
/* F4260 8004AD50 9482001E */  lhu        $v0, 0x1e($a0)
/* F4264 8004AD54 24060010 */  addiu      $a2, $zero, 0x10
/* F4268 8004AD58 24070130 */  addiu      $a3, $zero, 0x130
/* F426C 8004AD5C 3C018007 */  lui        $at, %hi(D_8006C0D0)
/* F4270 8004AD60 AC24C0D0 */  sw         $a0, %lo(D_8006C0D0)($at)
/* F4274 8004AD64 A480001C */  sh         $zero, 0x1c($a0)
/* F4278 8004AD68 34420100 */  ori        $v0, $v0, 0x100
/* F427C 8004AD6C A482001E */  sh         $v0, 0x1e($a0)
/* F4280 8004AD70 0C02939C */  jal        func_800A4E70
/* F4284 8004AD74 AFB00010 */   sw        $s0, 0x10($sp)
/* F4288 8004AD78 0C029375 */  jal        func_800A4DD4
/* F428C 8004AD7C 00000000 */   nop
/* F4290 8004AD80 00402021 */  addu       $a0, $v0, $zero
/* F4294 8004AD84 24050010 */  addiu      $a1, $zero, 0x10
/* F4298 8004AD88 24060010 */  addiu      $a2, $zero, 0x10
/* F429C 8004AD8C 24070130 */  addiu      $a3, $zero, 0x130
/* F42A0 8004AD90 3C018007 */  lui        $at, %hi(D_8006C0D4)
/* F42A4 8004AD94 AC24C0D4 */  sw         $a0, %lo(D_8006C0D4)($at)
/* F42A8 8004AD98 A480001C */  sh         $zero, 0x1c($a0)
/* F42AC 8004AD9C 0C02939C */  jal        func_800A4E70
/* F42B0 8004ADA0 AFB00010 */   sw        $s0, 0x10($sp)
/* F42B4 8004ADA4 0C029375 */  jal        func_800A4DD4
/* F42B8 8004ADA8 00000000 */   nop
/* F42BC 8004ADAC 00402021 */  addu       $a0, $v0, $zero
/* F42C0 8004ADB0 24050010 */  addiu      $a1, $zero, 0x10
/* F42C4 8004ADB4 24060010 */  addiu      $a2, $zero, 0x10
/* F42C8 8004ADB8 24070130 */  addiu      $a3, $zero, 0x130
/* F42CC 8004ADBC 2402004E */  addiu      $v0, $zero, 0x4e
/* F42D0 8004ADC0 3C018007 */  lui        $at, %hi(D_8006C0D8)
/* F42D4 8004ADC4 AC24C0D8 */  sw         $a0, %lo(D_8006C0D8)($at)
/* F42D8 8004ADC8 A482001C */  sh         $v0, 0x1c($a0)
/* F42DC 8004ADCC 0C02939C */  jal        func_800A4E70
/* F42E0 8004ADD0 AFB00010 */   sw        $s0, 0x10($sp)
/* F42E4 8004ADD4 00001021 */  addu       $v0, $zero, $zero
/* F42E8 8004ADD8 24030001 */  addiu      $v1, $zero, 1
/* F42EC 8004ADDC 3C018007 */  lui        $at, %hi(D_8006C12A)
/* F42F0 8004ADE0 A020C12A */  sb         $zero, %lo(D_8006C12A)($at)
/* F42F4 8004ADE4 08013436 */  j          .L8004D0D8
/* F42F8 8004ADE8 A643001C */   sh        $v1, 0x1c($s2)
.L8004ADEC:
/* F42FC 8004ADEC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F4300 8004ADF0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F4304 8004ADF4 14400003 */  bnez       $v0, .L8004AE04
/* F4308 8004ADF8 00000000 */   nop
/* F430C 8004ADFC 0C0115AA */  jal        func_800456A8_EEBB8
/* F4310 8004AE00 00000000 */   nop
.L8004AE04:
/* F4314 8004AE04 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F4318 8004AE08 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F431C 8004AE0C 24620001 */  addiu      $v0, $v1, 1
/* F4320 8004AE10 3C018007 */  lui        $at, %hi(D_8006C564)
/* F4324 8004AE14 AC22C564 */  sw         $v0, %lo(D_8006C564)($at)
/* F4328 8004AE18 147008AF */  bne        $v1, $s0, .L8004D0D8
/* F432C 8004AE1C 00001021 */   addu      $v0, $zero, $zero
/* F4330 8004AE20 0C02A5AF */  jal        func_800A96BC
/* F4334 8004AE24 24040001 */   addiu     $a0, $zero, 1
/* F4338 8004AE28 3C01C1E0 */  lui        $at, 0xc1e0
/* F433C 8004AE2C 44810000 */  mtc1       $at, $f0
/* F4340 8004AE30 3C0140A0 */  lui        $at, 0x40a0
/* F4344 8004AE34 44811000 */  mtc1       $at, $f2
/* F4348 8004AE38 24020070 */  addiu      $v0, $zero, 0x70
/* F434C 8004AE3C 3C018007 */  lui        $at, %hi(D_8006C126)
/* F4350 8004AE40 A022C126 */  sb         $v0, %lo(D_8006C126)($at)
/* F4354 8004AE44 24020002 */  addiu      $v0, $zero, 2
/* F4358 8004AE48 A642001C */  sh         $v0, 0x1c($s2)
/* F435C 8004AE4C 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4360 8004AE50 E420C0E4 */  swc1       $f0, %lo(D_8006C0E4)($at)
/* F4364 8004AE54 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4368 8004AE58 E422C0E8 */  swc1       $f2, %lo(D_8006C0E8)($at)
/* F436C 8004AE5C 08013436 */  j          .L8004D0D8
/* F4370 8004AE60 00001021 */   addu      $v0, $zero, $zero
.L8004AE64:
/* F4374 8004AE64 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F4378 8004AE68 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F437C 8004AE6C 1440000B */  bnez       $v0, .L8004AE9C
/* F4380 8004AE70 30420001 */   andi      $v0, $v0, 1
/* F4384 8004AE74 0C026DD5 */  jal        func_8009B754
/* F4388 8004AE78 24040042 */   addiu     $a0, $zero, 0x42
/* F438C 8004AE7C 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F4390 8004AE80 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* F4394 8004AE84 00402021 */  addu       $a0, $v0, $zero
/* F4398 8004AE88 3C018007 */  lui        $at, %hi(D_800691C0)
/* F439C 8004AE8C 0C026E66 */  jal        func_8009B998
/* F43A0 8004AE90 AC2491C0 */   sw        $a0, %lo(D_800691C0)($at)
/* F43A4 8004AE94 08012BB2 */  j          .L8004AEC8
/* F43A8 8004AE98 00000000 */   nop
.L8004AE9C:
/* F43AC 8004AE9C 1440000A */  bnez       $v0, .L8004AEC8
/* F43B0 8004AEA0 00000000 */   nop
/* F43B4 8004AEA4 3C028007 */  lui        $v0, %hi(D_8006C126)
/* F43B8 8004AEA8 9042C126 */  lbu        $v0, %lo(D_8006C126)($v0)
/* F43BC 8004AEAC 3C048007 */  lui        $a0, %hi(D_800691C0)
/* F43C0 8004AEB0 8C8491C0 */  lw         $a0, %lo(D_800691C0)($a0)
/* F43C4 8004AEB4 24420001 */  addiu      $v0, $v0, 1
/* F43C8 8004AEB8 3C018007 */  lui        $at, %hi(D_8006C126)
/* F43CC 8004AEBC A022C126 */  sb         $v0, %lo(D_8006C126)($at)
/* F43D0 8004AEC0 0C026E75 */  jal        func_8009B9D4
/* F43D4 8004AEC4 304500FF */   andi      $a1, $v0, 0xff
.L8004AEC8:
/* F43D8 8004AEC8 0C00D8C1 */  jal        func_80036304_DF814
/* F43DC 8004AECC 24040037 */   addiu     $a0, $zero, 0x37
/* F43E0 8004AED0 8C44000C */  lw         $a0, 0xc($v0)
/* F43E4 8004AED4 0C028A40 */  jal        func_800A2900
/* F43E8 8004AED8 00008021 */   addu      $s0, $zero, $zero
/* F43EC 8004AEDC 0C00D8C1 */  jal        func_80036304_DF814
/* F43F0 8004AEE0 24040035 */   addiu     $a0, $zero, 0x35
/* F43F4 8004AEE4 8C44000C */  lw         $a0, 0xc($v0)
/* F43F8 8004AEE8 0C028A40 */  jal        func_800A2900
/* F43FC 8004AEEC 00000000 */   nop
/* F4400 8004AEF0 0C00D8C1 */  jal        func_80036304_DF814
/* F4404 8004AEF4 24040036 */   addiu     $a0, $zero, 0x36
/* F4408 8004AEF8 8C44000C */  lw         $a0, 0xc($v0)
/* F440C 8004AEFC 0C028A40 */  jal        func_800A2900
/* F4410 8004AF00 00000000 */   nop
/* F4414 8004AF04 0C00D8C1 */  jal        func_80036304_DF814
/* F4418 8004AF08 24040022 */   addiu     $a0, $zero, 0x22
/* F441C 8004AF0C 8C44000C */  lw         $a0, 0xc($v0)
/* F4420 8004AF10 0C028A40 */  jal        func_800A2900
/* F4424 8004AF14 00000000 */   nop
/* F4428 8004AF18 26040023 */  addiu      $a0, $s0, 0x23
.L8004AF1C:
/* F442C 8004AF1C 0C00D8C1 */  jal        func_80036304_DF814
/* F4430 8004AF20 3084FFFF */   andi      $a0, $a0, 0xffff
/* F4434 8004AF24 8C44000C */  lw         $a0, 0xc($v0)
/* F4438 8004AF28 0C028A40 */  jal        func_800A2900
/* F443C 8004AF2C 00000000 */   nop
/* F4440 8004AF30 2604002C */  addiu      $a0, $s0, 0x2c
/* F4444 8004AF34 0C00D8C1 */  jal        func_80036304_DF814
/* F4448 8004AF38 3084FFFF */   andi      $a0, $a0, 0xffff
/* F444C 8004AF3C 8C44000C */  lw         $a0, 0xc($v0)
/* F4450 8004AF40 0C028A40 */  jal        func_800A2900
/* F4454 8004AF44 26100001 */   addiu     $s0, $s0, 1
/* F4458 8004AF48 3202FFFF */  andi       $v0, $s0, 0xffff
/* F445C 8004AF4C 2C420008 */  sltiu      $v0, $v0, 8
/* F4460 8004AF50 5440FFF2 */  bnezl      $v0, .L8004AF1C
/* F4464 8004AF54 26040023 */   addiu     $a0, $s0, 0x23
/* F4468 8004AF58 00008021 */  addu       $s0, $zero, $zero
/* F446C 8004AF5C 260430C9 */  addiu      $a0, $s0, 0x30c9
.L8004AF60:
/* F4470 8004AF60 0C00D8C1 */  jal        func_80036304_DF814
/* F4474 8004AF64 3084FFFF */   andi      $a0, $a0, 0xffff
/* F4478 8004AF68 8C44000C */  lw         $a0, 0xc($v0)
/* F447C 8004AF6C 0C028A40 */  jal        func_800A2900
/* F4480 8004AF70 26100001 */   addiu     $s0, $s0, 1
/* F4484 8004AF74 3202FFFF */  andi       $v0, $s0, 0xffff
/* F4488 8004AF78 2C420022 */  sltiu      $v0, $v0, 0x22
/* F448C 8004AF7C 1440FFF8 */  bnez       $v0, .L8004AF60
/* F4490 8004AF80 260430C9 */   addiu     $a0, $s0, 0x30c9
/* F4494 8004AF84 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4498 8004AF88 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F449C 8004AF8C 3C0141F0 */  lui        $at, 0x41f0
/* F44A0 8004AF90 44810000 */  mtc1       $at, $f0
/* F44A4 8004AF94 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F44A8 8004AF98 C426C0E8 */  lwc1       $f6, %lo(D_8006C0E8)($at)
/* F44AC 8004AF9C 46001080 */  add.s      $f2, $f2, $f0
/* F44B0 8004AFA0 3C014110 */  lui        $at, 0x4110
/* F44B4 8004AFA4 44810000 */  mtc1       $at, $f0
/* F44B8 8004AFA8 00000000 */  nop
/* F44BC 8004AFAC 46060001 */  sub.s      $f0, $f0, $f6
/* F44C0 8004AFB0 3C01BF80 */  lui        $at, 0xbf80
/* F44C4 8004AFB4 44812000 */  mtc1       $at, $f4
/* F44C8 8004AFB8 46001087 */  neg.s      $f2, $f2
/* F44CC 8004AFBC 3C018017 */  lui        $at, %hi(D_8016E568)
/* F44D0 8004AFC0 E424E568 */  swc1       $f4, %lo(D_8016E568)($at)
/* F44D4 8004AFC4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F44D8 8004AFC8 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* F44DC 8004AFCC 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F44E0 8004AFD0 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* F44E4 8004AFD4 0C00DFD6 */  jal        func_80037F58_E1468
/* F44E8 8004AFD8 24040022 */   addiu     $a0, $zero, 0x22
/* F44EC 8004AFDC 3C01BF63 */  lui        $at, 0xbf63
/* F44F0 8004AFE0 3421D70A */  ori        $at, $at, 0xd70a
/* F44F4 8004AFE4 44810000 */  mtc1       $at, $f0
/* F44F8 8004AFE8 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F44FC 8004AFEC C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F4500 8004AFF0 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4504 8004AFF4 C424C0E8 */  lwc1       $f4, %lo(D_8006C0E8)($at)
/* F4508 8004AFF8 00408021 */  addu       $s0, $v0, $zero
/* F450C 8004AFFC 24040022 */  addiu      $a0, $zero, 0x22
/* F4510 8004B000 E6000010 */  swc1       $f0, 0x10($s0)
/* F4514 8004B004 E6020014 */  swc1       $f2, 0x14($s0)
/* F4518 8004B008 0C00E032 */  jal        func_800380C8_E15D8
/* F451C 8004B00C E6040018 */   swc1      $f4, 0x18($s0)
/* F4520 8004B010 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F4524 8004B014 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F4528 8004B018 2403003C */  addiu      $v1, $zero, 0x3c
/* F452C 8004B01C 0062001A */  div        $zero, $v1, $v0
/* F4530 8004B020 14400002 */  bnez       $v0, .L8004B02C
/* F4534 8004B024 00000000 */   nop
/* F4538 8004B028 0007000D */  break      7
.L8004B02C:
/* F453C 8004B02C 2401FFFF */   addiu     $at, $zero, -1
/* F4540 8004B030 14410004 */  bne        $v0, $at, .L8004B044
/* F4544 8004B034 3C018000 */   lui       $at, 0x8000
/* F4548 8004B038 14610002 */  bne        $v1, $at, .L8004B044
/* F454C 8004B03C 00000000 */   nop
/* F4550 8004B040 0006000D */  break      6
.L8004B044:
/* F4554 8004B044 00001812 */   mflo      $v1
/* F4558 8004B048 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F455C 8004B04C C424C0E4 */  lwc1       $f4, %lo(D_8006C0E4)($at)
/* F4560 8004B050 3C013D38 */  lui        $at, 0x3d38
/* F4564 8004B054 342151EC */  ori        $at, $at, 0x51ec
/* F4568 8004B058 44810000 */  mtc1       $at, $f0
/* F456C 8004B05C 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4570 8004B060 C422C0E8 */  lwc1       $f2, %lo(D_8006C0E8)($at)
/* F4574 8004B064 46002100 */  add.s      $f4, $f4, $f0
/* F4578 8004B068 3C013E19 */  lui        $at, 0x3e19
/* F457C 8004B06C 3421999A */  ori        $at, $at, 0x999a
/* F4580 8004B070 44810000 */  mtc1       $at, $f0
/* F4584 8004B074 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F4588 8004B078 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F458C 8004B07C 46001080 */  add.s      $f2, $f2, $f0
/* F4590 8004B080 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4594 8004B084 E424C0E4 */  swc1       $f4, %lo(D_8006C0E4)($at)
/* F4598 8004B088 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F459C 8004B08C E422C0E8 */  swc1       $f2, %lo(D_8006C0E8)($at)
/* F45A0 8004B090 00031080 */  sll        $v0, $v1, 2
/* F45A4 8004B094 00431021 */  addu       $v0, $v0, $v1
/* F45A8 8004B098 1482080F */  bne        $a0, $v0, .L8004D0D8
/* F45AC 8004B09C 00001021 */   addu      $v0, $zero, $zero
/* F45B0 8004B0A0 24020003 */  addiu      $v0, $zero, 3
/* F45B4 8004B0A4 08013435 */  j          .L8004D0D4
/* F45B8 8004B0A8 A642001C */   sh        $v0, 0x1c($s2)
.L8004B0AC:
/* F45BC 8004B0AC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F45C0 8004B0B0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F45C4 8004B0B4 14400006 */  bnez       $v0, .L8004B0D0
/* F45C8 8004B0B8 24430001 */   addiu     $v1, $v0, 1
/* F45CC 8004B0BC 0C011745 */  jal        func_80045D14_EF224
/* F45D0 8004B0C0 00000000 */   nop
/* F45D4 8004B0C4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F45D8 8004B0C8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F45DC 8004B0CC 24430001 */  addiu      $v1, $v0, 1
.L8004B0D0:
/* F45E0 8004B0D0 3C018007 */  lui        $at, %hi(D_8006C564)
/* F45E4 8004B0D4 AC23C564 */  sw         $v1, %lo(D_8006C564)($at)
/* F45E8 8004B0D8 24030002 */  addiu      $v1, $zero, 2
/* F45EC 8004B0DC 144307FE */  bne        $v0, $v1, .L8004D0D8
/* F45F0 8004B0E0 00001021 */   addu      $v0, $zero, $zero
/* F45F4 8004B0E4 0C02A5AF */  jal        func_800A96BC
/* F45F8 8004B0E8 24040001 */   addiu     $a0, $zero, 1
/* F45FC 8004B0EC 3C01C120 */  lui        $at, 0xc120
/* F4600 8004B0F0 44810000 */  mtc1       $at, $f0
/* F4604 8004B0F4 3C014110 */  lui        $at, 0x4110
/* F4608 8004B0F8 44811000 */  mtc1       $at, $f2
/* F460C 8004B0FC 3C014359 */  lui        $at, 0x4359
/* F4610 8004B100 3421851F */  ori        $at, $at, 0x851f
/* F4614 8004B104 44812000 */  mtc1       $at, $f4
/* F4618 8004B108 24020004 */  addiu      $v0, $zero, 4
/* F461C 8004B10C A642001C */  sh         $v0, 0x1c($s2)
/* F4620 8004B110 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4624 8004B114 E420C0E4 */  swc1       $f0, %lo(D_8006C0E4)($at)
/* F4628 8004B118 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F462C 8004B11C E422C0E8 */  swc1       $f2, %lo(D_8006C0E8)($at)
/* F4630 8004B120 3C018007 */  lui        $at, %hi(D_8006C0F0)
/* F4634 8004B124 E424C0F0 */  swc1       $f4, %lo(D_8006C0F0)($at)
/* F4638 8004B128 08013436 */  j          .L8004D0D8
/* F463C 8004B12C 00001021 */   addu      $v0, $zero, $zero
.L8004B130:
/* F4640 8004B130 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F4644 8004B134 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F4648 8004B138 1440000F */  bnez       $v0, .L8004B178
/* F464C 8004B13C 00000000 */   nop
/* F4650 8004B140 3C028015 */  lui        $v0, %hi(D_80149F8C)
/* F4654 8004B144 94429F8C */  lhu        $v0, %lo(D_80149F8C)($v0)
/* F4658 8004B148 3C048007 */  lui        $a0, %hi(D_800691C0)
/* F465C 8004B14C 8C8491C0 */  lw         $a0, %lo(D_800691C0)($a0)
/* F4660 8004B150 00021400 */  sll        $v0, $v0, 0x10
/* F4664 8004B154 00022C03 */  sra        $a1, $v0, 0x10
/* F4668 8004B158 000217C2 */  srl        $v0, $v0, 0x1f
/* F466C 8004B15C 00A22821 */  addu       $a1, $a1, $v0
/* F4670 8004B160 0C026E66 */  jal        func_8009B998
/* F4674 8004B164 00052843 */   sra       $a1, $a1, 1
/* F4678 8004B168 3C048007 */  lui        $a0, %hi(D_800691C0)
/* F467C 8004B16C 8C8491C0 */  lw         $a0, %lo(D_800691C0)($a0)
/* F4680 8004B170 0C026E75 */  jal        func_8009B9D4
/* F4684 8004B174 24050080 */   addiu     $a1, $zero, 0x80
.L8004B178:
/* F4688 8004B178 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F468C 8004B17C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F4690 8004B180 2411003C */  addiu      $s1, $zero, 0x3c
/* F4694 8004B184 0223001A */  div        $zero, $s1, $v1
/* F4698 8004B188 14600002 */  bnez       $v1, .L8004B194
/* F469C 8004B18C 00000000 */   nop
/* F46A0 8004B190 0007000D */  break      7
.L8004B194:
/* F46A4 8004B194 2401FFFF */   addiu     $at, $zero, -1
/* F46A8 8004B198 14610004 */  bne        $v1, $at, .L8004B1AC
/* F46AC 8004B19C 3C018000 */   lui       $at, 0x8000
/* F46B0 8004B1A0 16210002 */  bne        $s1, $at, .L8004B1AC
/* F46B4 8004B1A4 00000000 */   nop
/* F46B8 8004B1A8 0006000D */  break      6
.L8004B1AC:
/* F46BC 8004B1AC 00001812 */   mflo      $v1
/* F46C0 8004B1B0 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F46C4 8004B1B4 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F46C8 8004B1B8 00031080 */  sll        $v0, $v1, 2
/* F46CC 8004B1BC 00431021 */  addu       $v0, $v0, $v1
/* F46D0 8004B1C0 2442FFF6 */  addiu      $v0, $v0, -0xa
/* F46D4 8004B1C4 14820005 */  bne        $a0, $v0, .L8004B1DC
/* F46D8 8004B1C8 00000000 */   nop
/* F46DC 8004B1CC 3C048007 */  lui        $a0, %hi(D_800691C0)
/* F46E0 8004B1D0 8C8491C0 */  lw         $a0, %lo(D_800691C0)($a0)
/* F46E4 8004B1D4 0C026E46 */  jal        func_8009B918
/* F46E8 8004B1D8 2405003C */   addiu     $a1, $zero, 0x3c
.L8004B1DC:
/* F46EC 8004B1DC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F46F0 8004B1E0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F46F4 8004B1E4 0222001A */  div        $zero, $s1, $v0
/* F46F8 8004B1E8 14400002 */  bnez       $v0, .L8004B1F4
/* F46FC 8004B1EC 00000000 */   nop
/* F4700 8004B1F0 0007000D */  break      7
.L8004B1F4:
/* F4704 8004B1F4 2401FFFF */   addiu     $at, $zero, -1
/* F4708 8004B1F8 14410004 */  bne        $v0, $at, .L8004B20C
/* F470C 8004B1FC 3C018000 */   lui       $at, 0x8000
/* F4710 8004B200 16210002 */  bne        $s1, $at, .L8004B20C
/* F4714 8004B204 00000000 */   nop
/* F4718 8004B208 0006000D */  break      6
.L8004B20C:
/* F471C 8004B20C 00001012 */   mflo      $v0
/* F4720 8004B210 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F4724 8004B214 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F4728 8004B218 00021880 */  sll        $v1, $v0, 2
/* F472C 8004B21C 00621821 */  addu       $v1, $v1, $v0
/* F4730 8004B220 24630003 */  addiu      $v1, $v1, 3
/* F4734 8004B224 14830005 */  bne        $a0, $v1, .L8004B23C
/* F4738 8004B228 00000000 */   nop
/* F473C 8004B22C 0C026DD5 */  jal        func_8009B754
/* F4740 8004B230 24040043 */   addiu     $a0, $zero, 0x43
/* F4744 8004B234 3C018007 */  lui        $at, %hi(D_800691C0)
/* F4748 8004B238 AC2291C0 */  sw         $v0, %lo(D_800691C0)($at)
.L8004B23C:
/* F474C 8004B23C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F4750 8004B240 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F4754 8004B244 0222001A */  div        $zero, $s1, $v0
/* F4758 8004B248 14400002 */  bnez       $v0, .L8004B254
/* F475C 8004B24C 00000000 */   nop
/* F4760 8004B250 0007000D */  break      7
.L8004B254:
/* F4764 8004B254 2401FFFF */   addiu     $at, $zero, -1
/* F4768 8004B258 14410004 */  bne        $v0, $at, .L8004B26C
/* F476C 8004B25C 3C018000 */   lui       $at, 0x8000
/* F4770 8004B260 16210002 */  bne        $s1, $at, .L8004B26C
/* F4774 8004B264 00000000 */   nop
/* F4778 8004B268 0006000D */  break      6
.L8004B26C:
/* F477C 8004B26C 00001012 */   mflo      $v0
/* F4780 8004B270 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F4784 8004B274 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F4788 8004B278 00021880 */  sll        $v1, $v0, 2
/* F478C 8004B27C 00621821 */  addu       $v1, $v1, $v0
/* F4790 8004B280 2462FFFB */  addiu      $v0, $v1, -5
/* F4794 8004B284 0044102A */  slt        $v0, $v0, $a0
/* F4798 8004B288 14400012 */  bnez       $v0, .L8004B2D4
/* F479C 8004B28C 24620005 */   addiu     $v0, $v1, 5
/* F47A0 8004B290 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F47A4 8004B294 C424C0E4 */  lwc1       $f4, %lo(D_8006C0E4)($at)
/* F47A8 8004B298 3C013CA3 */  lui        $at, 0x3ca3
/* F47AC 8004B29C 3421D70A */  ori        $at, $at, 0xd70a
/* F47B0 8004B2A0 44810000 */  mtc1       $at, $f0
/* F47B4 8004B2A4 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F47B8 8004B2A8 C422C0E8 */  lwc1       $f2, %lo(D_8006C0E8)($at)
/* F47BC 8004B2AC 46002100 */  add.s      $f4, $f4, $f0
/* F47C0 8004B2B0 3C013CF5 */  lui        $at, 0x3cf5
/* F47C4 8004B2B4 3421C28F */  ori        $at, $at, 0xc28f
/* F47C8 8004B2B8 44810000 */  mtc1       $at, $f0
/* F47CC 8004B2BC 00000000 */  nop
/* F47D0 8004B2C0 46001081 */  sub.s      $f2, $f2, $f0
/* F47D4 8004B2C4 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F47D8 8004B2C8 E424C0E4 */  swc1       $f4, %lo(D_8006C0E4)($at)
/* F47DC 8004B2CC 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F47E0 8004B2D0 E422C0E8 */  swc1       $f2, %lo(D_8006C0E8)($at)
.L8004B2D4:
/* F47E4 8004B2D4 0044102A */  slt        $v0, $v0, $a0
/* F47E8 8004B2D8 14400012 */  bnez       $v0, .L8004B324
/* F47EC 8004B2DC 00000000 */   nop
/* F47F0 8004B2E0 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F47F4 8004B2E4 C424C0E4 */  lwc1       $f4, %lo(D_8006C0E4)($at)
/* F47F8 8004B2E8 3C013CA3 */  lui        $at, 0x3ca3
/* F47FC 8004B2EC 3421D70A */  ori        $at, $at, 0xd70a
/* F4800 8004B2F0 44810000 */  mtc1       $at, $f0
/* F4804 8004B2F4 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4808 8004B2F8 C422C0E8 */  lwc1       $f2, %lo(D_8006C0E8)($at)
/* F480C 8004B2FC 46002100 */  add.s      $f4, $f4, $f0
/* F4810 8004B300 3C013CF5 */  lui        $at, 0x3cf5
/* F4814 8004B304 3421C28F */  ori        $at, $at, 0xc28f
/* F4818 8004B308 44810000 */  mtc1       $at, $f0
/* F481C 8004B30C 00000000 */  nop
/* F4820 8004B310 46001081 */  sub.s      $f2, $f2, $f0
/* F4824 8004B314 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4828 8004B318 E424C0E4 */  swc1       $f4, %lo(D_8006C0E4)($at)
/* F482C 8004B31C 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4830 8004B320 E422C0E8 */  swc1       $f2, %lo(D_8006C0E8)($at)
.L8004B324:
/* F4834 8004B324 0C00E032 */  jal        func_800380C8_E15D8
/* F4838 8004B328 2404001E */   addiu     $a0, $zero, 0x1e
/* F483C 8004B32C 0C00DFD6 */  jal        func_80037F58_E1468
/* F4840 8004B330 2404001F */   addiu     $a0, $zero, 0x1f
/* F4844 8004B334 3C01C1F0 */  lui        $at, 0xc1f0
/* F4848 8004B338 44810000 */  mtc1       $at, $f0
/* F484C 8004B33C 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4850 8004B340 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F4854 8004B344 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4858 8004B348 C424C0E8 */  lwc1       $f4, %lo(D_8006C0E8)($at)
/* F485C 8004B34C 00408021 */  addu       $s0, $v0, $zero
/* F4860 8004B350 2404001F */  addiu      $a0, $zero, 0x1f
/* F4864 8004B354 E6000010 */  swc1       $f0, 0x10($s0)
/* F4868 8004B358 E6020014 */  swc1       $f2, 0x14($s0)
/* F486C 8004B35C 0C00E032 */  jal        func_800380C8_E15D8
/* F4870 8004B360 E6040018 */   swc1      $f4, 0x18($s0)
/* F4874 8004B364 0C00DFD6 */  jal        func_80037F58_E1468
/* F4878 8004B368 24040020 */   addiu     $a0, $zero, 0x20
/* F487C 8004B36C 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F4880 8004B370 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F4884 8004B374 3C0141A4 */  lui        $at, 0x41a4
/* F4888 8004B378 4481A000 */  mtc1       $at, $f20
/* F488C 8004B37C 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4890 8004B380 C420C0E8 */  lwc1       $f0, %lo(D_8006C0E8)($at)
/* F4894 8004B384 46141081 */  sub.s      $f2, $f2, $f20
/* F4898 8004B388 3C0140D3 */  lui        $at, 0x40d3
/* F489C 8004B38C 34213333 */  ori        $at, $at, 0x3333
/* F48A0 8004B390 4481B000 */  mtc1       $at, $f22
/* F48A4 8004B394 00408021 */  addu       $s0, $v0, $zero
/* F48A8 8004B398 3C013D4C */  lui        $at, 0x3d4c
/* F48AC 8004B39C 3421CCCD */  ori        $at, $at, 0xcccd
/* F48B0 8004B3A0 44812000 */  mtc1       $at, $f4
/* F48B4 8004B3A4 46160001 */  sub.s      $f0, $f0, $f22
/* F48B8 8004B3A8 24040020 */  addiu      $a0, $zero, 0x20
/* F48BC 8004B3AC E6040010 */  swc1       $f4, 0x10($s0)
/* F48C0 8004B3B0 E6020014 */  swc1       $f2, 0x14($s0)
/* F48C4 8004B3B4 0C00E032 */  jal        func_800380C8_E15D8
/* F48C8 8004B3B8 E6000018 */   swc1      $f0, 0x18($s0)
/* F48CC 8004B3BC 0C00DFD6 */  jal        func_80037F58_E1468
/* F48D0 8004B3C0 24040021 */   addiu     $a0, $zero, 0x21
/* F48D4 8004B3C4 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F48D8 8004B3C8 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F48DC 8004B3CC 46141081 */  sub.s      $f2, $f2, $f20
/* F48E0 8004B3D0 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F48E4 8004B3D4 C420C0E8 */  lwc1       $f0, %lo(D_8006C0E8)($at)
/* F48E8 8004B3D8 00408021 */  addu       $s0, $v0, $zero
/* F48EC 8004B3DC 3C01C0B4 */  lui        $at, 0xc0b4
/* F48F0 8004B3E0 3421CCCD */  ori        $at, $at, 0xcccd
/* F48F4 8004B3E4 44812000 */  mtc1       $at, $f4
/* F48F8 8004B3E8 46160001 */  sub.s      $f0, $f0, $f22
/* F48FC 8004B3EC 24040021 */  addiu      $a0, $zero, 0x21
/* F4900 8004B3F0 E6040010 */  swc1       $f4, 0x10($s0)
/* F4904 8004B3F4 E6020014 */  swc1       $f2, 0x14($s0)
/* F4908 8004B3F8 0C00E032 */  jal        func_800380C8_E15D8
/* F490C 8004B3FC E6000018 */   swc1      $f0, 0x18($s0)
/* F4910 8004B400 0C00DFD6 */  jal        func_80037F58_E1468
/* F4914 8004B404 24040022 */   addiu     $a0, $zero, 0x22
/* F4918 8004B408 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F491C 8004B40C C424C0E4 */  lwc1       $f4, %lo(D_8006C0E4)($at)
/* F4920 8004B410 3C014104 */  lui        $at, 0x4104
/* F4924 8004B414 3421CCCD */  ori        $at, $at, 0xcccd
/* F4928 8004B418 44810000 */  mtc1       $at, $f0
/* F492C 8004B41C 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F4930 8004B420 C422C0E8 */  lwc1       $f2, %lo(D_8006C0E8)($at)
/* F4934 8004B424 46002101 */  sub.s      $f4, $f4, $f0
/* F4938 8004B428 3C014096 */  lui        $at, 0x4096
/* F493C 8004B42C 34216666 */  ori        $at, $at, 0x6666
/* F4940 8004B430 44810000 */  mtc1       $at, $f0
/* F4944 8004B434 00408021 */  addu       $s0, $v0, $zero
/* F4948 8004B438 3C01C033 */  lui        $at, 0xc033
/* F494C 8004B43C 34213333 */  ori        $at, $at, 0x3333
/* F4950 8004B440 44813000 */  mtc1       $at, $f6
/* F4954 8004B444 46001081 */  sub.s      $f2, $f2, $f0
/* F4958 8004B448 24040022 */  addiu      $a0, $zero, 0x22
/* F495C 8004B44C E6060010 */  swc1       $f6, 0x10($s0)
/* F4960 8004B450 E6040014 */  swc1       $f4, 0x14($s0)
/* F4964 8004B454 0C00E032 */  jal        func_800380C8_E15D8
/* F4968 8004B458 E6020018 */   swc1      $f2, 0x18($s0)
/* F496C 8004B45C 0C00E032 */  jal        func_800380C8_E15D8
/* F4970 8004B460 24040023 */   addiu     $a0, $zero, 0x23
/* F4974 8004B464 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F4978 8004B468 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F497C 8004B46C 0223001A */  div        $zero, $s1, $v1
/* F4980 8004B470 14600002 */  bnez       $v1, .L8004B47C
/* F4984 8004B474 00000000 */   nop
/* F4988 8004B478 0007000D */  break      7
.L8004B47C:
/* F498C 8004B47C 2401FFFF */   addiu     $at, $zero, -1
/* F4990 8004B480 14610004 */  bne        $v1, $at, .L8004B494
/* F4994 8004B484 3C018000 */   lui       $at, 0x8000
/* F4998 8004B488 16210002 */  bne        $s1, $at, .L8004B494
/* F499C 8004B48C 00000000 */   nop
/* F49A0 8004B490 0006000D */  break      6
.L8004B494:
/* F49A4 8004B494 00001812 */   mflo      $v1
/* F49A8 8004B498 3C018007 */  lui        $at, %hi(D_8006C0F0)
/* F49AC 8004B49C C424C0F0 */  lwc1       $f4, %lo(D_8006C0F0)($at)
/* F49B0 8004B4A0 3C013CF5 */  lui        $at, 0x3cf5
/* F49B4 8004B4A4 3421C28F */  ori        $at, $at, 0xc28f
/* F49B8 8004B4A8 44810000 */  mtc1       $at, $f0
/* F49BC 8004B4AC 3C01C149 */  lui        $at, 0xc149
/* F49C0 8004B4B0 3421C28F */  ori        $at, $at, 0xc28f
/* F49C4 8004B4B4 44811000 */  mtc1       $at, $f2
/* F49C8 8004B4B8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F49CC 8004B4BC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F49D0 8004B4C0 46002001 */  sub.s      $f0, $f4, $f0
/* F49D4 8004B4C4 3C018015 */  lui        $at, %hi(D_8014A084)
/* F49D8 8004B4C8 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F49DC 8004B4CC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F49E0 8004B4D0 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F49E4 8004B4D4 3C018015 */  lui        $at, %hi(D_8014A080)
/* F49E8 8004B4D8 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F49EC 8004B4DC 3C018007 */  lui        $at, %hi(D_8006C0F0)
/* F49F0 8004B4E0 E420C0F0 */  swc1       $f0, %lo(D_8006C0F0)($at)
/* F49F4 8004B4E4 000310C0 */  sll        $v0, $v1, 3
/* F49F8 8004B4E8 00431023 */  subu       $v0, $v0, $v1
/* F49FC 8004B4EC 148206FA */  bne        $a0, $v0, .L8004D0D8
/* F4A00 8004B4F0 00001021 */   addu      $v0, $zero, $zero
/* F4A04 8004B4F4 24020005 */  addiu      $v0, $zero, 5
/* F4A08 8004B4F8 08013435 */  j          .L8004D0D4
/* F4A0C 8004B4FC A642001C */   sh        $v0, 0x1c($s2)
.L8004B500:
/* F4A10 8004B500 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F4A14 8004B504 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F4A18 8004B508 14400003 */  bnez       $v0, .L8004B518
/* F4A1C 8004B50C 00000000 */   nop
/* F4A20 8004B510 0C0118AD */  jal        func_800462B4_EF7C4
/* F4A24 8004B514 00000000 */   nop
.L8004B518:
/* F4A28 8004B518 0C026E5D */  jal        func_8009B974
/* F4A2C 8004B51C 24040001 */   addiu     $a0, $zero, 1
/* F4A30 8004B520 24020080 */  addiu      $v0, $zero, 0x80
/* F4A34 8004B524 3C018007 */  lui        $at, %hi(D_8006C125)
/* F4A38 8004B528 A022C125 */  sb         $v0, %lo(D_8006C125)($at)
/* F4A3C 8004B52C 24020006 */  addiu      $v0, $zero, 6
/* F4A40 8004B530 3C018007 */  lui        $at, %hi(D_8006C120)
/* F4A44 8004B534 A020C120 */  sb         $zero, %lo(D_8006C120)($at)
/* F4A48 8004B538 3C018007 */  lui        $at, %hi(D_8006C121)
/* F4A4C 8004B53C A020C121 */  sb         $zero, %lo(D_8006C121)($at)
/* F4A50 8004B540 3C018007 */  lui        $at, %hi(D_8006C122)
/* F4A54 8004B544 A020C122 */  sb         $zero, %lo(D_8006C122)($at)
/* F4A58 8004B548 3C018007 */  lui        $at, %hi(D_8006C123)
/* F4A5C 8004B54C A020C123 */  sb         $zero, %lo(D_8006C123)($at)
/* F4A60 8004B550 3C018007 */  lui        $at, %hi(D_8006C124)
/* F4A64 8004B554 A020C124 */  sb         $zero, %lo(D_8006C124)($at)
/* F4A68 8004B558 A642001C */  sh         $v0, 0x1c($s2)
.L8004B55C:
/* F4A6C 8004B55C 0C00D8C1 */  jal        func_80036304_DF814
/* F4A70 8004B560 24040017 */   addiu     $a0, $zero, 0x17
/* F4A74 8004B564 8C44000C */  lw         $a0, 0xc($v0)
/* F4A78 8004B568 0C028A40 */  jal        func_800A2900
/* F4A7C 8004B56C 2411003C */   addiu     $s1, $zero, 0x3c
/* F4A80 8004B570 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F4A84 8004B574 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F4A88 8004B578 0223001A */  div        $zero, $s1, $v1
/* F4A8C 8004B57C 14600002 */  bnez       $v1, .L8004B588
/* F4A90 8004B580 00000000 */   nop
/* F4A94 8004B584 0007000D */  break      7
.L8004B588:
/* F4A98 8004B588 2401FFFF */   addiu     $at, $zero, -1
/* F4A9C 8004B58C 14610004 */  bne        $v1, $at, .L8004B5A0
/* F4AA0 8004B590 3C018000 */   lui       $at, 0x8000
/* F4AA4 8004B594 16210002 */  bne        $s1, $at, .L8004B5A0
/* F4AA8 8004B598 00000000 */   nop
/* F4AAC 8004B59C 0006000D */  break      6
.L8004B5A0:
/* F4AB0 8004B5A0 00001812 */   mflo      $v1
/* F4AB4 8004B5A4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F4AB8 8004B5A8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F4ABC 8004B5AC 00031040 */  sll        $v0, $v1, 1
/* F4AC0 8004B5B0 00431021 */  addu       $v0, $v0, $v1
/* F4AC4 8004B5B4 14820016 */  bne        $a0, $v0, .L8004B610
/* F4AC8 8004B5B8 00000000 */   nop
/* F4ACC 8004B5BC 0C026DD5 */  jal        func_8009B754
/* F4AD0 8004B5C0 24040049 */   addiu     $a0, $zero, 0x49
/* F4AD4 8004B5C4 0C00DFD6 */  jal        func_80037F58_E1468
/* F4AD8 8004B5C8 24040025 */   addiu     $a0, $zero, 0x25
/* F4ADC 8004B5CC 00408021 */  addu       $s0, $v0, $zero
/* F4AE0 8004B5D0 8E040004 */  lw         $a0, 4($s0)
/* F4AE4 8004B5D4 3C058007 */  lui        $a1, %hi(D_8006A1E0)
/* F4AE8 8004B5D8 0C0284DC */  jal        func_800A1370
/* F4AEC 8004B5DC 24A5A1E0 */   addiu     $a1, $a1, %lo(D_8006A1E0)
/* F4AF0 8004B5E0 8E040004 */  lw         $a0, 4($s0)
/* F4AF4 8004B5E4 00021400 */  sll        $v0, $v0, 0x10
/* F4AF8 8004B5E8 0C0285CC */  jal        func_800A1730
/* F4AFC 8004B5EC 00022C03 */   sra       $a1, $v0, 0x10
/* F4B00 8004B5F0 24430010 */  addiu      $v1, $v0, 0x10
/* F4B04 8004B5F4 2402023F */  addiu      $v0, $zero, 0x23f
/* F4B08 8004B5F8 A4620000 */  sh         $v0, ($v1)
/* F4B0C 8004B5FC 24630002 */  addiu      $v1, $v1, 2
/* F4B10 8004B600 240254BF */  addiu      $v0, $zero, 0x54bf
/* F4B14 8004B604 A4620000 */  sh         $v0, ($v1)
/* F4B18 8004B608 3402A7FF */  ori        $v0, $zero, 0xa7ff
/* F4B1C 8004B60C A4620002 */  sh         $v0, 2($v1)
.L8004B610:
/* F4B20 8004B610 0C00E032 */  jal        func_800380C8_E15D8
/* F4B24 8004B614 24040024 */   addiu     $a0, $zero, 0x24
/* F4B28 8004B618 0C00E032 */  jal        func_800380C8_E15D8
/* F4B2C 8004B61C 24040025 */   addiu     $a0, $zero, 0x25
/* F4B30 8004B620 0C00E032 */  jal        func_800380C8_E15D8
/* F4B34 8004B624 24040026 */   addiu     $a0, $zero, 0x26
/* F4B38 8004B628 0C00E032 */  jal        func_800380C8_E15D8
/* F4B3C 8004B62C 24040027 */   addiu     $a0, $zero, 0x27
/* F4B40 8004B630 0C00E032 */  jal        func_800380C8_E15D8
/* F4B44 8004B634 2404002A */   addiu     $a0, $zero, 0x2a
/* F4B48 8004B638 0C00E032 */  jal        func_800380C8_E15D8
/* F4B4C 8004B63C 2404002B */   addiu     $a0, $zero, 0x2b
/* F4B50 8004B640 0C00E032 */  jal        func_800380C8_E15D8
/* F4B54 8004B644 2404002C */   addiu     $a0, $zero, 0x2c
/* F4B58 8004B648 0C00E032 */  jal        func_800380C8_E15D8
/* F4B5C 8004B64C 2404002D */   addiu     $a0, $zero, 0x2d
/* F4B60 8004B650 0C00E032 */  jal        func_800380C8_E15D8
/* F4B64 8004B654 2404002E */   addiu     $a0, $zero, 0x2e
/* F4B68 8004B658 0C00E032 */  jal        func_800380C8_E15D8
/* F4B6C 8004B65C 2404002F */   addiu     $a0, $zero, 0x2f
/* F4B70 8004B660 0C00E032 */  jal        func_800380C8_E15D8
/* F4B74 8004B664 24040030 */   addiu     $a0, $zero, 0x30
/* F4B78 8004B668 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F4B7C 8004B66C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F4B80 8004B670 0222001A */  div        $zero, $s1, $v0
/* F4B84 8004B674 14400002 */  bnez       $v0, .L8004B680
/* F4B88 8004B678 00000000 */   nop
/* F4B8C 8004B67C 0007000D */  break      7
.L8004B680:
/* F4B90 8004B680 2401FFFF */   addiu     $at, $zero, -1
/* F4B94 8004B684 14410004 */  bne        $v0, $at, .L8004B698
/* F4B98 8004B688 3C018000 */   lui       $at, 0x8000
/* F4B9C 8004B68C 16210002 */  bne        $s1, $at, .L8004B698
/* F4BA0 8004B690 00000000 */   nop
/* F4BA4 8004B694 0006000D */  break      6
.L8004B698:
/* F4BA8 8004B698 00001012 */   mflo      $v0
/* F4BAC 8004B69C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F4BB0 8004B6A0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F4BB4 8004B6A4 1462000E */  bne        $v1, $v0, .L8004B6E0
/* F4BB8 8004B6A8 00000000 */   nop
/* F4BBC 8004B6AC 0C026DD5 */  jal        func_8009B754
/* F4BC0 8004B6B0 24040048 */   addiu     $a0, $zero, 0x48
/* F4BC4 8004B6B4 3C058007 */  lui        $a1, %hi(D_8006C125)
/* F4BC8 8004B6B8 90A5C125 */  lbu        $a1, %lo(D_8006C125)($a1)
/* F4BCC 8004B6BC 00402021 */  addu       $a0, $v0, $zero
/* F4BD0 8004B6C0 3C018007 */  lui        $at, %hi(D_800691C0)
/* F4BD4 8004B6C4 0C026E75 */  jal        func_8009B9D4
/* F4BD8 8004B6C8 AC2491C0 */   sw        $a0, %lo(D_800691C0)($at)
/* F4BDC 8004B6CC 0C00DFD6 */  jal        func_80037F58_E1468
/* F4BE0 8004B6D0 2404002A */   addiu     $a0, $zero, 0x2a
/* F4BE4 8004B6D4 8C440008 */  lw         $a0, 8($v0)
/* F4BE8 8004B6D8 0C027AFA */  jal        func_8009EBE8
/* F4BEC 8004B6DC 00000000 */   nop
.L8004B6E0:
/* F4BF0 8004B6E0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F4BF4 8004B6E4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F4BF8 8004B6E8 0222001A */  div        $zero, $s1, $v0
/* F4BFC 8004B6EC 14400002 */  bnez       $v0, .L8004B6F8
/* F4C00 8004B6F0 00000000 */   nop
/* F4C04 8004B6F4 0007000D */  break      7
.L8004B6F8:
/* F4C08 8004B6F8 2401FFFF */   addiu     $at, $zero, -1
/* F4C0C 8004B6FC 14410004 */  bne        $v0, $at, .L8004B710
/* F4C10 8004B700 3C018000 */   lui       $at, 0x8000
/* F4C14 8004B704 16210002 */  bne        $s1, $at, .L8004B710
/* F4C18 8004B708 00000000 */   nop
/* F4C1C 8004B70C 0006000D */  break      6
.L8004B710:
/* F4C20 8004B710 00001012 */   mflo      $v0
/* F4C24 8004B714 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F4C28 8004B718 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F4C2C 8004B71C 0062102A */  slt        $v0, $v1, $v0
/* F4C30 8004B720 14400010 */  bnez       $v0, .L8004B764
/* F4C34 8004B724 00008021 */   addu      $s0, $zero, $zero
/* F4C38 8004B728 30620003 */  andi       $v0, $v1, 3
/* F4C3C 8004B72C 5440000E */  bnezl      $v0, .L8004B768
/* F4C40 8004B730 24110004 */   addiu     $s1, $zero, 4
/* F4C44 8004B734 3C028007 */  lui        $v0, %hi(D_8006C125)
/* F4C48 8004B738 9042C125 */  lbu        $v0, %lo(D_8006C125)($v0)
/* F4C4C 8004B73C 10400003 */  beqz       $v0, .L8004B74C
/* F4C50 8004B740 2442FFF0 */   addiu     $v0, $v0, -0x10
/* F4C54 8004B744 3C018007 */  lui        $at, %hi(D_8006C125)
/* F4C58 8004B748 A022C125 */  sb         $v0, %lo(D_8006C125)($at)
.L8004B74C:
/* F4C5C 8004B74C 3C048007 */  lui        $a0, %hi(D_800691C0)
/* F4C60 8004B750 8C8491C0 */  lw         $a0, %lo(D_800691C0)($a0)
/* F4C64 8004B754 3C058007 */  lui        $a1, %hi(D_8006C125)
/* F4C68 8004B758 90A5C125 */  lbu        $a1, %lo(D_8006C125)($a1)
/* F4C6C 8004B75C 0C026E66 */  jal        func_8009B998
/* F4C70 8004B760 00008021 */   addu      $s0, $zero, $zero
.L8004B764:
/* F4C74 8004B764 24110004 */  addiu      $s1, $zero, 4
.L8004B768:
/* F4C78 8004B768 2604002A */  addiu      $a0, $s0, 0x2a
.L8004B76C:
/* F4C7C 8004B76C 0C00DFD6 */  jal        func_80037F58_E1468
/* F4C80 8004B770 3084FFFF */   andi      $a0, $a0, 0xffff
/* F4C84 8004B774 8C420008 */  lw         $v0, 8($v0)
/* F4C88 8004B778 84440022 */  lh         $a0, 0x22($v0)
/* F4C8C 8004B77C 54910012 */  bnel       $a0, $s1, .L8004B7C8
/* F4C90 8004B780 26100001 */   addiu     $s0, $s0, 1
/* F4C94 8004B784 3203FFFF */  andi       $v1, $s0, 0xffff
/* F4C98 8004B788 3C028007 */  lui        $v0, %hi(D_8006C120)
/* F4C9C 8004B78C 00431021 */  addu       $v0, $v0, $v1
/* F4CA0 8004B790 9042C120 */  lbu        $v0, %lo(D_8006C120)($v0)
/* F4CA4 8004B794 24420001 */  addiu      $v0, $v0, 1
/* F4CA8 8004B798 3C018007 */  lui        $at, %hi(D_8006C120)
/* F4CAC 8004B79C 00230821 */  addu       $at, $at, $v1
/* F4CB0 8004B7A0 A022C120 */  sb         $v0, %lo(D_8006C120)($at)
/* F4CB4 8004B7A4 304200FF */  andi       $v0, $v0, 0xff
/* F4CB8 8004B7A8 54440007 */  bnel       $v0, $a0, .L8004B7C8
/* F4CBC 8004B7AC 26100001 */   addiu     $s0, $s0, 1
/* F4CC0 8004B7B0 2604002B */  addiu      $a0, $s0, 0x2b
/* F4CC4 8004B7B4 0C00DFD6 */  jal        func_80037F58_E1468
/* F4CC8 8004B7B8 3084FFFF */   andi      $a0, $a0, 0xffff
/* F4CCC 8004B7BC 8C440008 */  lw         $a0, 8($v0)
/* F4CD0 8004B7C0 0C027AFA */  jal        func_8009EBE8
/* F4CD4 8004B7C4 26100001 */   addiu     $s0, $s0, 1
.L8004B7C8:
/* F4CD8 8004B7C8 3202FFFF */  andi       $v0, $s0, 0xffff
/* F4CDC 8004B7CC 2C420005 */  sltiu      $v0, $v0, 5
/* F4CE0 8004B7D0 1440FFE6 */  bnez       $v0, .L8004B76C
/* F4CE4 8004B7D4 2604002A */   addiu     $a0, $s0, 0x2a
/* F4CE8 8004B7D8 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F4CEC 8004B7DC 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F4CF0 8004B7E0 2402003C */  addiu      $v0, $zero, 0x3c
/* F4CF4 8004B7E4 0043001A */  div        $zero, $v0, $v1
/* F4CF8 8004B7E8 14600002 */  bnez       $v1, .L8004B7F4
/* F4CFC 8004B7EC 00000000 */   nop
/* F4D00 8004B7F0 0007000D */  break      7
.L8004B7F4:
/* F4D04 8004B7F4 2401FFFF */   addiu     $at, $zero, -1
/* F4D08 8004B7F8 14610004 */  bne        $v1, $at, .L8004B80C
/* F4D0C 8004B7FC 3C018000 */   lui       $at, 0x8000
/* F4D10 8004B800 14410002 */  bne        $v0, $at, .L8004B80C
/* F4D14 8004B804 00000000 */   nop
/* F4D18 8004B808 0006000D */  break      6
.L8004B80C:
/* F4D1C 8004B80C 00001012 */   mflo      $v0
/* F4D20 8004B810 3C018007 */  lui        $at, %hi(D_8006A1E8)
/* F4D24 8004B814 D422A1E8 */  ldc1       $f2, %lo(D_8006A1E8)($at)
/* F4D28 8004B818 44820000 */  mtc1       $v0, $f0
/* F4D2C 8004B81C 00000000 */  nop
/* F4D30 8004B820 46800021 */  cvt.d.w    $f0, $f0
/* F4D34 8004B824 46220002 */  mul.d      $f0, $f0, $f2
/* F4D38 8004B828 3C018007 */  lui        $at, %hi(D_8006C564)
/* F4D3C 8004B82C C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F4D40 8004B830 468010A1 */  cvt.d.w    $f2, $f2
/* F4D44 8004B834 46201032 */  c.eq.d     $f2, $f0
/* F4D48 8004B838 00000000 */  nop
/* F4D4C 8004B83C 00000000 */  nop
/* F4D50 8004B840 45000624 */  bc1f       .L8004D0D4
/* F4D54 8004B844 24020007 */   addiu     $v0, $zero, 7
/* F4D58 8004B848 08013435 */  j          .L8004D0D4
/* F4D5C 8004B84C A642001C */   sh        $v0, 0x1c($s2)
.L8004B850:
/* F4D60 8004B850 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F4D64 8004B854 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F4D68 8004B858 14400003 */  bnez       $v0, .L8004B868
/* F4D6C 8004B85C 00000000 */   nop
/* F4D70 8004B860 0C011495 */  jal        func_80045254_EE764
/* F4D74 8004B864 00000000 */   nop
.L8004B868:
/* F4D78 8004B868 0C026E5D */  jal        func_8009B974
/* F4D7C 8004B86C 24040001 */   addiu     $a0, $zero, 1
/* F4D80 8004B870 0C026DD5 */  jal        func_8009B754
/* F4D84 8004B874 24040160 */   addiu     $a0, $zero, 0x160
/* F4D88 8004B878 24050010 */  addiu      $a1, $zero, 0x10
/* F4D8C 8004B87C 24060030 */  addiu      $a2, $zero, 0x30
/* F4D90 8004B880 3C048007 */  lui        $a0, %hi(D_8006C0D4)
/* F4D94 8004B884 8C84C0D4 */  lw         $a0, %lo(D_8006C0D4)($a0)
/* F4D98 8004B888 2407012F */  addiu      $a3, $zero, 0x12f
/* F4D9C 8004B88C 240200BF */  addiu      $v0, $zero, 0xbf
/* F4DA0 8004B890 0C02939C */  jal        func_800A4E70
/* F4DA4 8004B894 AFA20010 */   sw        $v0, 0x10($sp)
/* F4DA8 8004B898 24020008 */  addiu      $v0, $zero, 8
/* F4DAC 8004B89C A642001C */  sh         $v0, 0x1c($s2)
.L8004B8A0:
/* F4DB0 8004B8A0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F4DB4 8004B8A4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F4DB8 8004B8A8 2410003C */  addiu      $s0, $zero, 0x3c
/* F4DBC 8004B8AC 0202001A */  div        $zero, $s0, $v0
/* F4DC0 8004B8B0 14400002 */  bnez       $v0, .L8004B8BC
/* F4DC4 8004B8B4 00000000 */   nop
/* F4DC8 8004B8B8 0007000D */  break      7
.L8004B8BC:
/* F4DCC 8004B8BC 2401FFFF */   addiu     $at, $zero, -1
/* F4DD0 8004B8C0 14410004 */  bne        $v0, $at, .L8004B8D4
/* F4DD4 8004B8C4 3C018000 */   lui       $at, 0x8000
/* F4DD8 8004B8C8 16010002 */  bne        $s0, $at, .L8004B8D4
/* F4DDC 8004B8CC 00000000 */   nop
/* F4DE0 8004B8D0 0006000D */  break      6
.L8004B8D4:
/* F4DE4 8004B8D4 00001012 */   mflo      $v0
/* F4DE8 8004B8D8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F4DEC 8004B8DC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F4DF0 8004B8E0 00021040 */  sll        $v0, $v0, 1
/* F4DF4 8004B8E4 14620003 */  bne        $v1, $v0, .L8004B8F4
/* F4DF8 8004B8E8 00000000 */   nop
/* F4DFC 8004B8EC 0C026DD5 */  jal        func_8009B754
/* F4E00 8004B8F0 240400F5 */   addiu     $a0, $zero, 0xf5
.L8004B8F4:
/* F4E04 8004B8F4 0C00D8C1 */  jal        func_80036304_DF814
/* F4E08 8004B8F8 2404003F */   addiu     $a0, $zero, 0x3f
/* F4E0C 8004B8FC 8C44000C */  lw         $a0, 0xc($v0)
/* F4E10 8004B900 0C028A40 */  jal        func_800A2900
/* F4E14 8004B904 00000000 */   nop
/* F4E18 8004B908 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F4E1C 8004B90C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F4E20 8004B910 0203001A */  div        $zero, $s0, $v1
/* F4E24 8004B914 14600002 */  bnez       $v1, .L8004B920
/* F4E28 8004B918 00000000 */   nop
/* F4E2C 8004B91C 0007000D */  break      7
.L8004B920:
/* F4E30 8004B920 2401FFFF */   addiu     $at, $zero, -1
/* F4E34 8004B924 14610004 */  bne        $v1, $at, .L8004B938
/* F4E38 8004B928 3C018000 */   lui       $at, 0x8000
/* F4E3C 8004B92C 16010002 */  bne        $s0, $at, .L8004B938
/* F4E40 8004B930 00000000 */   nop
/* F4E44 8004B934 0006000D */  break      6
.L8004B938:
/* F4E48 8004B938 00001812 */   mflo      $v1
/* F4E4C 8004B93C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F4E50 8004B940 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F4E54 8004B944 00031040 */  sll        $v0, $v1, 1
/* F4E58 8004B948 00431021 */  addu       $v0, $v0, $v1
/* F4E5C 8004B94C 148205E2 */  bne        $a0, $v0, .L8004D0D8
/* F4E60 8004B950 00001021 */   addu      $v0, $zero, $zero
/* F4E64 8004B954 24020009 */  addiu      $v0, $zero, 9
/* F4E68 8004B958 08013435 */  j          .L8004D0D4
/* F4E6C 8004B95C A642001C */   sh        $v0, 0x1c($s2)
.L8004B960:
/* F4E70 8004B960 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F4E74 8004B964 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F4E78 8004B968 14400004 */  bnez       $v0, .L8004B97C
/* F4E7C 8004B96C 2402000A */   addiu     $v0, $zero, 0xa
/* F4E80 8004B970 0C0114A6 */  jal        func_80045298_EE7A8
/* F4E84 8004B974 00000000 */   nop
/* F4E88 8004B978 2402000A */  addiu      $v0, $zero, 0xa
.L8004B97C:
/* F4E8C 8004B97C 3C018007 */  lui        $at, %hi(D_8006C104)
/* F4E90 8004B980 A420C104 */  sh         $zero, %lo(D_8006C104)($at)
/* F4E94 8004B984 A642001C */  sh         $v0, 0x1c($s2)
.L8004B988:
/* F4E98 8004B988 0C00D8C1 */  jal        func_80036304_DF814
/* F4E9C 8004B98C 2404003F */   addiu     $a0, $zero, 0x3f
/* F4EA0 8004B990 8C44000C */  lw         $a0, 0xc($v0)
/* F4EA4 8004B994 0C028A40 */  jal        func_800A2900
/* F4EA8 8004B998 00000000 */   nop
/* F4EAC 8004B99C 0C00D8C1 */  jal        func_80036304_DF814
/* F4EB0 8004B9A0 2404003A */   addiu     $a0, $zero, 0x3a
/* F4EB4 8004B9A4 3C048015 */  lui        $a0, %hi(D_80149F90)
/* F4EB8 8004B9A8 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* F4EBC 8004B9AC 2403003C */  addiu      $v1, $zero, 0x3c
/* F4EC0 8004B9B0 0064001A */  div        $zero, $v1, $a0
/* F4EC4 8004B9B4 14800002 */  bnez       $a0, .L8004B9C0
/* F4EC8 8004B9B8 00000000 */   nop
/* F4ECC 8004B9BC 0007000D */  break      7
.L8004B9C0:
/* F4ED0 8004B9C0 2401FFFF */   addiu     $at, $zero, -1
/* F4ED4 8004B9C4 14810004 */  bne        $a0, $at, .L8004B9D8
/* F4ED8 8004B9C8 3C018000 */   lui       $at, 0x8000
/* F4EDC 8004B9CC 14610002 */  bne        $v1, $at, .L8004B9D8
/* F4EE0 8004B9D0 00000000 */   nop
/* F4EE4 8004B9D4 0006000D */  break      6
.L8004B9D8:
/* F4EE8 8004B9D8 00001812 */   mflo      $v1
/* F4EEC 8004B9DC 3C013F00 */  lui        $at, 0x3f00
/* F4EF0 8004B9E0 44811000 */  mtc1       $at, $f2
/* F4EF4 8004B9E4 44830000 */  mtc1       $v1, $f0
/* F4EF8 8004B9E8 00000000 */  nop
/* F4EFC 8004B9EC 46800020 */  cvt.s.w    $f0, $f0
/* F4F00 8004B9F0 46020002 */  mul.s      $f0, $f0, $f2
/* F4F04 8004B9F4 3C018007 */  lui        $at, %hi(D_8006C564)
/* F4F08 8004B9F8 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F4F0C 8004B9FC 468010A0 */  cvt.s.w    $f2, $f2
/* F4F10 8004BA00 4602003E */  c.le.s     $f0, $f2
/* F4F14 8004BA04 00000000 */  nop
/* F4F18 8004BA08 00000000 */  nop
/* F4F1C 8004BA0C 4500002B */  bc1f       .L8004BABC
/* F4F20 8004BA10 00408821 */   addu      $s1, $v0, $zero
/* F4F24 8004BA14 3C048007 */  lui        $a0, %hi(D_8006C104)
/* F4F28 8004BA18 9484C104 */  lhu        $a0, %lo(D_8006C104)($a0)
/* F4F2C 8004BA1C 3C065555 */  lui        $a2, 0x5555
/* F4F30 8004BA20 34C65556 */  ori        $a2, $a2, 0x5556
/* F4F34 8004BA24 00041400 */  sll        $v0, $a0, 0x10
/* F4F38 8004BA28 00021C03 */  sra        $v1, $v0, 0x10
/* F4F3C 8004BA2C 00660018 */  mult       $v1, $a2
/* F4F40 8004BA30 27A50058 */  addiu      $a1, $sp, 0x58
/* F4F44 8004BA34 000217C3 */  sra        $v0, $v0, 0x1f
/* F4F48 8004BA38 00004810 */  mfhi       $t1
/* F4F4C 8004BA3C 01221023 */  subu       $v0, $t1, $v0
/* F4F50 8004BA40 00021400 */  sll        $v0, $v0, 0x10
/* F4F54 8004BA44 00021403 */  sra        $v0, $v0, 0x10
/* F4F58 8004BA48 00A21021 */  addu       $v0, $a1, $v0
/* F4F5C 8004BA4C 90430000 */  lbu        $v1, ($v0)
/* F4F60 8004BA50 24020009 */  addiu      $v0, $zero, 9
/* F4F64 8004BA54 10620003 */  beq        $v1, $v0, .L8004BA64
/* F4F68 8004BA58 24820001 */   addiu     $v0, $a0, 1
/* F4F6C 8004BA5C 3C018007 */  lui        $at, %hi(D_8006C104)
/* F4F70 8004BA60 A422C104 */  sh         $v0, %lo(D_8006C104)($at)
.L8004BA64:
/* F4F74 8004BA64 3C028007 */  lui        $v0, %hi(D_8006C104)
/* F4F78 8004BA68 9442C104 */  lhu        $v0, %lo(D_8006C104)($v0)
/* F4F7C 8004BA6C 00021400 */  sll        $v0, $v0, 0x10
/* F4F80 8004BA70 00021C03 */  sra        $v1, $v0, 0x10
/* F4F84 8004BA74 00660018 */  mult       $v1, $a2
/* F4F88 8004BA78 000217C3 */  sra        $v0, $v0, 0x1f
/* F4F8C 8004BA7C 00004810 */  mfhi       $t1
/* F4F90 8004BA80 01221023 */  subu       $v0, $t1, $v0
/* F4F94 8004BA84 00021400 */  sll        $v0, $v0, 0x10
/* F4F98 8004BA88 00021403 */  sra        $v0, $v0, 0x10
/* F4F9C 8004BA8C 00A21021 */  addu       $v0, $a1, $v0
/* F4FA0 8004BA90 90440000 */  lbu        $a0, ($v0)
/* F4FA4 8004BA94 308200FF */  andi       $v0, $a0, 0xff
/* F4FA8 8004BA98 0002182B */  sltu       $v1, $zero, $v0
/* F4FAC 8004BA9C 38420009 */  xori       $v0, $v0, 9
/* F4FB0 8004BAA0 0002102B */  sltu       $v0, $zero, $v0
/* F4FB4 8004BAA4 00621824 */  and        $v1, $v1, $v0
/* F4FB8 8004BAA8 10600004 */  beqz       $v1, .L8004BABC
/* F4FBC 8004BAAC 00000000 */   nop
/* F4FC0 8004BAB0 0C00D8C1 */  jal        func_80036304_DF814
/* F4FC4 8004BAB4 2484003A */   addiu     $a0, $a0, 0x3a
/* F4FC8 8004BAB8 00408821 */  addu       $s1, $v0, $zero
.L8004BABC:
/* F4FCC 8004BABC 8E24000C */  lw         $a0, 0xc($s1)
/* F4FD0 8004BAC0 0C028A40 */  jal        func_800A2900
/* F4FD4 8004BAC4 2410003C */   addiu     $s0, $zero, 0x3c
/* F4FD8 8004BAC8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F4FDC 8004BACC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F4FE0 8004BAD0 0202001A */  div        $zero, $s0, $v0
/* F4FE4 8004BAD4 14400002 */  bnez       $v0, .L8004BAE0
/* F4FE8 8004BAD8 00000000 */   nop
/* F4FEC 8004BADC 0007000D */  break      7
.L8004BAE0:
/* F4FF0 8004BAE0 2401FFFF */   addiu     $at, $zero, -1
/* F4FF4 8004BAE4 14410004 */  bne        $v0, $at, .L8004BAF8
/* F4FF8 8004BAE8 3C018000 */   lui       $at, 0x8000
/* F4FFC 8004BAEC 16010002 */  bne        $s0, $at, .L8004BAF8
/* F5000 8004BAF0 00000000 */   nop
/* F5004 8004BAF4 0006000D */  break      6
.L8004BAF8:
/* F5008 8004BAF8 00001012 */   mflo      $v0
/* F500C 8004BAFC 3C013F00 */  lui        $at, 0x3f00
/* F5010 8004BB00 4481A000 */  mtc1       $at, $f20
/* F5014 8004BB04 44820000 */  mtc1       $v0, $f0
/* F5018 8004BB08 00000000 */  nop
/* F501C 8004BB0C 46800020 */  cvt.s.w    $f0, $f0
/* F5020 8004BB10 46140002 */  mul.s      $f0, $f0, $f20
/* F5024 8004BB14 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5028 8004BB18 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F502C 8004BB1C 468010A0 */  cvt.s.w    $f2, $f2
/* F5030 8004BB20 46001032 */  c.eq.s     $f2, $f0
/* F5034 8004BB24 00000000 */  nop
/* F5038 8004BB28 45000003 */  bc1f       .L8004BB38
/* F503C 8004BB2C 00000000 */   nop
/* F5040 8004BB30 0C026DD5 */  jal        func_8009B754
/* F5044 8004BB34 24040137 */   addiu     $a0, $zero, 0x137
.L8004BB38:
/* F5048 8004BB38 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F504C 8004BB3C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5050 8004BB40 0202001A */  div        $zero, $s0, $v0
/* F5054 8004BB44 14400002 */  bnez       $v0, .L8004BB50
/* F5058 8004BB48 00000000 */   nop
/* F505C 8004BB4C 0007000D */  break      7
.L8004BB50:
/* F5060 8004BB50 2401FFFF */   addiu     $at, $zero, -1
/* F5064 8004BB54 14410004 */  bne        $v0, $at, .L8004BB68
/* F5068 8004BB58 3C018000 */   lui       $at, 0x8000
/* F506C 8004BB5C 16010002 */  bne        $s0, $at, .L8004BB68
/* F5070 8004BB60 00000000 */   nop
/* F5074 8004BB64 0006000D */  break      6
.L8004BB68:
/* F5078 8004BB68 00001012 */   mflo      $v0
/* F507C 8004BB6C 44820000 */  mtc1       $v0, $f0
/* F5080 8004BB70 00000000 */  nop
/* F5084 8004BB74 46800020 */  cvt.s.w    $f0, $f0
/* F5088 8004BB78 46140002 */  mul.s      $f0, $f0, $f20
/* F508C 8004BB7C 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5090 8004BB80 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5094 8004BB84 468010A0 */  cvt.s.w    $f2, $f2
/* F5098 8004BB88 4602003E */  c.le.s     $f0, $f2
/* F509C 8004BB8C 00000000 */  nop
/* F50A0 8004BB90 4500000B */  bc1f       .L8004BBC0
/* F50A4 8004BB94 00000000 */   nop
/* F50A8 8004BB98 0C00D8C1 */  jal        func_80036304_DF814
/* F50AC 8004BB9C 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F50B0 8004BBA0 8C44000C */  lw         $a0, 0xc($v0)
/* F50B4 8004BBA4 0C028A40 */  jal        func_800A2900
/* F50B8 8004BBA8 00000000 */   nop
/* F50BC 8004BBAC 0C00D8C1 */  jal        func_80036304_DF814
/* F50C0 8004BBB0 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F50C4 8004BBB4 8C44000C */  lw         $a0, 0xc($v0)
/* F50C8 8004BBB8 0C028A40 */  jal        func_800A2900
/* F50CC 8004BBBC 00000000 */   nop
.L8004BBC0:
/* F50D0 8004BBC0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F50D4 8004BBC4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F50D8 8004BBC8 0202001A */  div        $zero, $s0, $v0
/* F50DC 8004BBCC 14400002 */  bnez       $v0, .L8004BBD8
/* F50E0 8004BBD0 00000000 */   nop
/* F50E4 8004BBD4 0007000D */  break      7
.L8004BBD8:
/* F50E8 8004BBD8 2401FFFF */   addiu     $at, $zero, -1
/* F50EC 8004BBDC 14410004 */  bne        $v0, $at, .L8004BBF0
/* F50F0 8004BBE0 3C018000 */   lui       $at, 0x8000
/* F50F4 8004BBE4 16010002 */  bne        $s0, $at, .L8004BBF0
/* F50F8 8004BBE8 00000000 */   nop
/* F50FC 8004BBEC 0006000D */  break      6
.L8004BBF0:
/* F5100 8004BBF0 00001012 */   mflo      $v0
/* F5104 8004BBF4 3C018007 */  lui        $at, %hi(D_8006A1F0)
/* F5108 8004BBF8 D422A1F0 */  ldc1       $f2, %lo(D_8006A1F0)($at)
/* F510C 8004BBFC 44820000 */  mtc1       $v0, $f0
/* F5110 8004BC00 00000000 */  nop
/* F5114 8004BC04 46800021 */  cvt.d.w    $f0, $f0
/* F5118 8004BC08 46220002 */  mul.d      $f0, $f0, $f2
/* F511C 8004BC0C 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5120 8004BC10 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5124 8004BC14 468010A1 */  cvt.d.w    $f2, $f2
/* F5128 8004BC18 46201032 */  c.eq.d     $f2, $f0
/* F512C 8004BC1C 00000000 */  nop
/* F5130 8004BC20 00000000 */  nop
/* F5134 8004BC24 4500052B */  bc1f       .L8004D0D4
/* F5138 8004BC28 2402000B */   addiu     $v0, $zero, 0xb
/* F513C 8004BC2C 08013435 */  j          .L8004D0D4
/* F5140 8004BC30 A642001C */   sh        $v0, 0x1c($s2)
.L8004BC34:
/* F5144 8004BC34 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F5148 8004BC38 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F514C 8004BC3C 14400004 */  bnez       $v0, .L8004BC50
/* F5150 8004BC40 2402000C */   addiu     $v0, $zero, 0xc
/* F5154 8004BC44 0C0114D5 */  jal        func_80045354_EE864
/* F5158 8004BC48 00000000 */   nop
/* F515C 8004BC4C 2402000C */  addiu      $v0, $zero, 0xc
.L8004BC50:
/* F5160 8004BC50 A642001C */  sh         $v0, 0x1c($s2)
.L8004BC54:
/* F5164 8004BC54 0C00D8C1 */  jal        func_80036304_DF814
/* F5168 8004BC58 2404003F */   addiu     $a0, $zero, 0x3f
/* F516C 8004BC5C 8C44000C */  lw         $a0, 0xc($v0)
/* F5170 8004BC60 0C028A40 */  jal        func_800A2900
/* F5174 8004BC64 2410003C */   addiu     $s0, $zero, 0x3c
/* F5178 8004BC68 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F517C 8004BC6C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5180 8004BC70 0202001A */  div        $zero, $s0, $v0
/* F5184 8004BC74 14400002 */  bnez       $v0, .L8004BC80
/* F5188 8004BC78 00000000 */   nop
/* F518C 8004BC7C 0007000D */  break      7
.L8004BC80:
/* F5190 8004BC80 2401FFFF */   addiu     $at, $zero, -1
/* F5194 8004BC84 14410004 */  bne        $v0, $at, .L8004BC98
/* F5198 8004BC88 3C018000 */   lui       $at, 0x8000
/* F519C 8004BC8C 16010002 */  bne        $s0, $at, .L8004BC98
/* F51A0 8004BC90 00000000 */   nop
/* F51A4 8004BC94 0006000D */  break      6
.L8004BC98:
/* F51A8 8004BC98 00001012 */   mflo      $v0
/* F51AC 8004BC9C 3C013E99 */  lui        $at, 0x3e99
/* F51B0 8004BCA0 3421999A */  ori        $at, $at, 0x999a
/* F51B4 8004BCA4 4481A000 */  mtc1       $at, $f20
/* F51B8 8004BCA8 44820000 */  mtc1       $v0, $f0
/* F51BC 8004BCAC 00000000 */  nop
/* F51C0 8004BCB0 46800020 */  cvt.s.w    $f0, $f0
/* F51C4 8004BCB4 46140002 */  mul.s      $f0, $f0, $f20
/* F51C8 8004BCB8 3C018007 */  lui        $at, %hi(D_8006C564)
/* F51CC 8004BCBC C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F51D0 8004BCC0 468010A0 */  cvt.s.w    $f2, $f2
/* F51D4 8004BCC4 46001032 */  c.eq.s     $f2, $f0
/* F51D8 8004BCC8 00000000 */  nop
/* F51DC 8004BCCC 45000003 */  bc1f       .L8004BCDC
/* F51E0 8004BCD0 00000000 */   nop
/* F51E4 8004BCD4 0C026DD5 */  jal        func_8009B754
/* F51E8 8004BCD8 24040109 */   addiu     $a0, $zero, 0x109
.L8004BCDC:
/* F51EC 8004BCDC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F51F0 8004BCE0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F51F4 8004BCE4 0202001A */  div        $zero, $s0, $v0
/* F51F8 8004BCE8 14400002 */  bnez       $v0, .L8004BCF4
/* F51FC 8004BCEC 00000000 */   nop
/* F5200 8004BCF0 0007000D */  break      7
.L8004BCF4:
/* F5204 8004BCF4 2401FFFF */   addiu     $at, $zero, -1
/* F5208 8004BCF8 14410004 */  bne        $v0, $at, .L8004BD0C
/* F520C 8004BCFC 3C018000 */   lui       $at, 0x8000
/* F5210 8004BD00 16010002 */  bne        $s0, $at, .L8004BD0C
/* F5214 8004BD04 00000000 */   nop
/* F5218 8004BD08 0006000D */  break      6
.L8004BD0C:
/* F521C 8004BD0C 00001012 */   mflo      $v0
/* F5220 8004BD10 44820000 */  mtc1       $v0, $f0
/* F5224 8004BD14 00000000 */  nop
/* F5228 8004BD18 46800020 */  cvt.s.w    $f0, $f0
/* F522C 8004BD1C 46140002 */  mul.s      $f0, $f0, $f20
/* F5230 8004BD20 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5234 8004BD24 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5238 8004BD28 468010A0 */  cvt.s.w    $f2, $f2
/* F523C 8004BD2C 4602003E */  c.le.s     $f0, $f2
/* F5240 8004BD30 00000000 */  nop
/* F5244 8004BD34 4500000B */  bc1f       .L8004BD64
/* F5248 8004BD38 00000000 */   nop
/* F524C 8004BD3C 0C00D8C1 */  jal        func_80036304_DF814
/* F5250 8004BD40 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F5254 8004BD44 8C44000C */  lw         $a0, 0xc($v0)
/* F5258 8004BD48 0C028A40 */  jal        func_800A2900
/* F525C 8004BD4C 00000000 */   nop
/* F5260 8004BD50 0C00D8C1 */  jal        func_80036304_DF814
/* F5264 8004BD54 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F5268 8004BD58 8C44000C */  lw         $a0, 0xc($v0)
/* F526C 8004BD5C 0C028A40 */  jal        func_800A2900
/* F5270 8004BD60 00000000 */   nop
.L8004BD64:
/* F5274 8004BD64 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F5278 8004BD68 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F527C 8004BD6C 0202001A */  div        $zero, $s0, $v0
/* F5280 8004BD70 14400002 */  bnez       $v0, .L8004BD7C
/* F5284 8004BD74 00000000 */   nop
/* F5288 8004BD78 0007000D */  break      7
.L8004BD7C:
/* F528C 8004BD7C 2401FFFF */   addiu     $at, $zero, -1
/* F5290 8004BD80 14410004 */  bne        $v0, $at, .L8004BD94
/* F5294 8004BD84 3C018000 */   lui       $at, 0x8000
/* F5298 8004BD88 16010002 */  bne        $s0, $at, .L8004BD94
/* F529C 8004BD8C 00000000 */   nop
/* F52A0 8004BD90 0006000D */  break      6
.L8004BD94:
/* F52A4 8004BD94 00001012 */   mflo      $v0
/* F52A8 8004BD98 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F52AC 8004BD9C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F52B0 8004BDA0 00021840 */  sll        $v1, $v0, 1
/* F52B4 8004BDA4 00621821 */  addu       $v1, $v1, $v0
/* F52B8 8004BDA8 00031840 */  sll        $v1, $v1, 1
/* F52BC 8004BDAC 148304CA */  bne        $a0, $v1, .L8004D0D8
/* F52C0 8004BDB0 00001021 */   addu      $v0, $zero, $zero
/* F52C4 8004BDB4 2402000D */  addiu      $v0, $zero, 0xd
/* F52C8 8004BDB8 08013435 */  j          .L8004D0D4
/* F52CC 8004BDBC A642001C */   sh        $v0, 0x1c($s2)
.L8004BDC0:
/* F52D0 8004BDC0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F52D4 8004BDC4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F52D8 8004BDC8 14400004 */  bnez       $v0, .L8004BDDC
/* F52DC 8004BDCC 2402000E */   addiu     $v0, $zero, 0xe
/* F52E0 8004BDD0 0C0114FF */  jal        func_800453FC_EE90C
/* F52E4 8004BDD4 00000000 */   nop
/* F52E8 8004BDD8 2402000E */  addiu      $v0, $zero, 0xe
.L8004BDDC:
/* F52EC 8004BDDC 3C018007 */  lui        $at, %hi(D_8006C104)
/* F52F0 8004BDE0 A420C104 */  sh         $zero, %lo(D_8006C104)($at)
/* F52F4 8004BDE4 A642001C */  sh         $v0, 0x1c($s2)
.L8004BDE8:
/* F52F8 8004BDE8 0C00D8C1 */  jal        func_80036304_DF814
/* F52FC 8004BDEC 2404003F */   addiu     $a0, $zero, 0x3f
/* F5300 8004BDF0 8C44000C */  lw         $a0, 0xc($v0)
/* F5304 8004BDF4 0C028A40 */  jal        func_800A2900
/* F5308 8004BDF8 00000000 */   nop
/* F530C 8004BDFC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F5310 8004BE00 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5314 8004BE04 2403003C */  addiu      $v1, $zero, 0x3c
/* F5318 8004BE08 0062001A */  div        $zero, $v1, $v0
/* F531C 8004BE0C 14400002 */  bnez       $v0, .L8004BE18
/* F5320 8004BE10 00000000 */   nop
/* F5324 8004BE14 0007000D */  break      7
.L8004BE18:
/* F5328 8004BE18 2401FFFF */   addiu     $at, $zero, -1
/* F532C 8004BE1C 14410004 */  bne        $v0, $at, .L8004BE30
/* F5330 8004BE20 3C018000 */   lui       $at, 0x8000
/* F5334 8004BE24 14610002 */  bne        $v1, $at, .L8004BE30
/* F5338 8004BE28 00000000 */   nop
/* F533C 8004BE2C 0006000D */  break      6
.L8004BE30:
/* F5340 8004BE30 00001812 */   mflo      $v1
/* F5344 8004BE34 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F5348 8004BE38 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F534C 8004BE3C 0043102A */  slt        $v0, $v0, $v1
/* F5350 8004BE40 1440002C */  bnez       $v0, .L8004BEF4
/* F5354 8004BE44 3C065555 */   lui       $a2, 0x5555
/* F5358 8004BE48 3C048007 */  lui        $a0, %hi(D_8006C104)
/* F535C 8004BE4C 9484C104 */  lhu        $a0, %lo(D_8006C104)($a0)
/* F5360 8004BE50 34C65556 */  ori        $a2, $a2, 0x5556
/* F5364 8004BE54 00041400 */  sll        $v0, $a0, 0x10
/* F5368 8004BE58 00021C03 */  sra        $v1, $v0, 0x10
/* F536C 8004BE5C 00660018 */  mult       $v1, $a2
/* F5370 8004BE60 27A50068 */  addiu      $a1, $sp, 0x68
/* F5374 8004BE64 000217C3 */  sra        $v0, $v0, 0x1f
/* F5378 8004BE68 00004810 */  mfhi       $t1
/* F537C 8004BE6C 01221023 */  subu       $v0, $t1, $v0
/* F5380 8004BE70 00021400 */  sll        $v0, $v0, 0x10
/* F5384 8004BE74 00021403 */  sra        $v0, $v0, 0x10
/* F5388 8004BE78 00A21021 */  addu       $v0, $a1, $v0
/* F538C 8004BE7C 90430000 */  lbu        $v1, ($v0)
/* F5390 8004BE80 24020009 */  addiu      $v0, $zero, 9
/* F5394 8004BE84 10620003 */  beq        $v1, $v0, .L8004BE94
/* F5398 8004BE88 24820001 */   addiu     $v0, $a0, 1
/* F539C 8004BE8C 3C018007 */  lui        $at, %hi(D_8006C104)
/* F53A0 8004BE90 A422C104 */  sh         $v0, %lo(D_8006C104)($at)
.L8004BE94:
/* F53A4 8004BE94 3C028007 */  lui        $v0, %hi(D_8006C104)
/* F53A8 8004BE98 9442C104 */  lhu        $v0, %lo(D_8006C104)($v0)
/* F53AC 8004BE9C 00021400 */  sll        $v0, $v0, 0x10
/* F53B0 8004BEA0 00021C03 */  sra        $v1, $v0, 0x10
/* F53B4 8004BEA4 00660018 */  mult       $v1, $a2
/* F53B8 8004BEA8 000217C3 */  sra        $v0, $v0, 0x1f
/* F53BC 8004BEAC 00004810 */  mfhi       $t1
/* F53C0 8004BEB0 01221023 */  subu       $v0, $t1, $v0
/* F53C4 8004BEB4 00021400 */  sll        $v0, $v0, 0x10
/* F53C8 8004BEB8 00021403 */  sra        $v0, $v0, 0x10
/* F53CC 8004BEBC 00A21021 */  addu       $v0, $a1, $v0
/* F53D0 8004BEC0 90440000 */  lbu        $a0, ($v0)
/* F53D4 8004BEC4 308200FF */  andi       $v0, $a0, 0xff
/* F53D8 8004BEC8 0002182B */  sltu       $v1, $zero, $v0
/* F53DC 8004BECC 38420009 */  xori       $v0, $v0, 9
/* F53E0 8004BED0 0002102B */  sltu       $v0, $zero, $v0
/* F53E4 8004BED4 00621824 */  and        $v1, $v1, $v0
/* F53E8 8004BED8 10600006 */  beqz       $v1, .L8004BEF4
/* F53EC 8004BEDC 00000000 */   nop
/* F53F0 8004BEE0 0C00D8C1 */  jal        func_80036304_DF814
/* F53F4 8004BEE4 2484003A */   addiu     $a0, $a0, 0x3a
/* F53F8 8004BEE8 8C44000C */  lw         $a0, 0xc($v0)
/* F53FC 8004BEEC 0C028A40 */  jal        func_800A2900
/* F5400 8004BEF0 00000000 */   nop
.L8004BEF4:
/* F5404 8004BEF4 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F5408 8004BEF8 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F540C 8004BEFC 2410003C */  addiu      $s0, $zero, 0x3c
/* F5410 8004BF00 0202001A */  div        $zero, $s0, $v0
/* F5414 8004BF04 14400002 */  bnez       $v0, .L8004BF10
/* F5418 8004BF08 00000000 */   nop
/* F541C 8004BF0C 0007000D */  break      7
.L8004BF10:
/* F5420 8004BF10 2401FFFF */   addiu     $at, $zero, -1
/* F5424 8004BF14 14410004 */  bne        $v0, $at, .L8004BF28
/* F5428 8004BF18 3C018000 */   lui       $at, 0x8000
/* F542C 8004BF1C 16010002 */  bne        $s0, $at, .L8004BF28
/* F5430 8004BF20 00000000 */   nop
/* F5434 8004BF24 0006000D */  break      6
.L8004BF28:
/* F5438 8004BF28 00001012 */   mflo      $v0
/* F543C 8004BF2C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F5440 8004BF30 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F5444 8004BF34 14620009 */  bne        $v1, $v0, .L8004BF5C
/* F5448 8004BF38 00000000 */   nop
/* F544C 8004BF3C 0C026DD5 */  jal        func_8009B754
/* F5450 8004BF40 240400EC */   addiu     $a0, $zero, 0xec
/* F5454 8004BF44 3C058017 */  lui        $a1, %hi(D_8016D0C0)
/* F5458 8004BF48 84A5D0C0 */  lh         $a1, %lo(D_8016D0C0)($a1)
/* F545C 8004BF4C 00402021 */  addu       $a0, $v0, $zero
/* F5460 8004BF50 3C018007 */  lui        $at, %hi(D_800691C0)
/* F5464 8004BF54 0C026E66 */  jal        func_8009B998
/* F5468 8004BF58 AC2491C0 */   sw        $a0, %lo(D_800691C0)($at)
.L8004BF5C:
/* F546C 8004BF5C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F5470 8004BF60 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F5474 8004BF64 0203001A */  div        $zero, $s0, $v1
/* F5478 8004BF68 14600002 */  bnez       $v1, .L8004BF74
/* F547C 8004BF6C 00000000 */   nop
/* F5480 8004BF70 0007000D */  break      7
.L8004BF74:
/* F5484 8004BF74 2401FFFF */   addiu     $at, $zero, -1
/* F5488 8004BF78 14610004 */  bne        $v1, $at, .L8004BF8C
/* F548C 8004BF7C 3C018000 */   lui       $at, 0x8000
/* F5490 8004BF80 16010002 */  bne        $s0, $at, .L8004BF8C
/* F5494 8004BF84 00000000 */   nop
/* F5498 8004BF88 0006000D */  break      6
.L8004BF8C:
/* F549C 8004BF8C 00001812 */   mflo      $v1
/* F54A0 8004BF90 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F54A4 8004BF94 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F54A8 8004BF98 0043102A */  slt        $v0, $v0, $v1
/* F54AC 8004BF9C 1440000B */  bnez       $v0, .L8004BFCC
/* F54B0 8004BFA0 00000000 */   nop
/* F54B4 8004BFA4 0C00D8C1 */  jal        func_80036304_DF814
/* F54B8 8004BFA8 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F54BC 8004BFAC 8C44000C */  lw         $a0, 0xc($v0)
/* F54C0 8004BFB0 0C028A40 */  jal        func_800A2900
/* F54C4 8004BFB4 00000000 */   nop
/* F54C8 8004BFB8 0C00D8C1 */  jal        func_80036304_DF814
/* F54CC 8004BFBC 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F54D0 8004BFC0 8C44000C */  lw         $a0, 0xc($v0)
/* F54D4 8004BFC4 0C028A40 */  jal        func_800A2900
/* F54D8 8004BFC8 00000000 */   nop
.L8004BFCC:
/* F54DC 8004BFCC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F54E0 8004BFD0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F54E4 8004BFD4 0202001A */  div        $zero, $s0, $v0
/* F54E8 8004BFD8 14400002 */  bnez       $v0, .L8004BFE4
/* F54EC 8004BFDC 00000000 */   nop
/* F54F0 8004BFE0 0007000D */  break      7
.L8004BFE4:
/* F54F4 8004BFE4 2401FFFF */   addiu     $at, $zero, -1
/* F54F8 8004BFE8 14410004 */  bne        $v0, $at, .L8004BFFC
/* F54FC 8004BFEC 3C018000 */   lui       $at, 0x8000
/* F5500 8004BFF0 16010002 */  bne        $s0, $at, .L8004BFFC
/* F5504 8004BFF4 00000000 */   nop
/* F5508 8004BFF8 0006000D */  break      6
.L8004BFFC:
/* F550C 8004BFFC 00001012 */   mflo      $v0
/* F5510 8004C000 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F5514 8004C004 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F5518 8004C008 00021080 */  sll        $v0, $v0, 2
/* F551C 8004C00C 14620432 */  bne        $v1, $v0, .L8004D0D8
/* F5520 8004C010 00001021 */   addu      $v0, $zero, $zero
/* F5524 8004C014 2402000F */  addiu      $v0, $zero, 0xf
/* F5528 8004C018 08013435 */  j          .L8004D0D4
/* F552C 8004C01C A642001C */   sh        $v0, 0x1c($s2)
.L8004C020:
/* F5530 8004C020 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F5534 8004C024 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F5538 8004C028 14400004 */  bnez       $v0, .L8004C03C
/* F553C 8004C02C 24020010 */   addiu     $v0, $zero, 0x10
/* F5540 8004C030 0C011539 */  jal        func_800454E4_EE9F4
/* F5544 8004C034 00000000 */   nop
/* F5548 8004C038 24020010 */  addiu      $v0, $zero, 0x10
.L8004C03C:
/* F554C 8004C03C 3C018007 */  lui        $at, %hi(D_8006C104)
/* F5550 8004C040 A420C104 */  sh         $zero, %lo(D_8006C104)($at)
/* F5554 8004C044 A642001C */  sh         $v0, 0x1c($s2)
.L8004C048:
/* F5558 8004C048 0C00D8C1 */  jal        func_80036304_DF814
/* F555C 8004C04C 2404003F */   addiu     $a0, $zero, 0x3f
/* F5560 8004C050 8C44000C */  lw         $a0, 0xc($v0)
/* F5564 8004C054 0C028A40 */  jal        func_800A2900
/* F5568 8004C058 00000000 */   nop
/* F556C 8004C05C 3C028007 */  lui        $v0, %hi(D_8006C104)
/* F5570 8004C060 8442C104 */  lh         $v0, %lo(D_8006C104)($v0)
/* F5574 8004C064 04410002 */  bgez       $v0, .L8004C070
/* F5578 8004C068 00401821 */   addu      $v1, $v0, $zero
/* F557C 8004C06C 24420003 */  addiu      $v0, $v0, 3
.L8004C070:
/* F5580 8004C070 00021083 */  sra        $v0, $v0, 2
/* F5584 8004C074 27A40088 */  addiu      $a0, $sp, 0x88
/* F5588 8004C078 00821021 */  addu       $v0, $a0, $v0
/* F558C 8004C07C 90420000 */  lbu        $v0, ($v0)
/* F5590 8004C080 24050009 */  addiu      $a1, $zero, 9
/* F5594 8004C084 10450004 */  beq        $v0, $a1, .L8004C098
/* F5598 8004C088 00000000 */   nop
/* F559C 8004C08C 24620001 */  addiu      $v0, $v1, 1
/* F55A0 8004C090 3C018007 */  lui        $at, %hi(D_8006C104)
/* F55A4 8004C094 A422C104 */  sh         $v0, %lo(D_8006C104)($at)
.L8004C098:
/* F55A8 8004C098 3C038007 */  lui        $v1, %hi(D_8006C104)
/* F55AC 8004C09C 8463C104 */  lh         $v1, %lo(D_8006C104)($v1)
/* F55B0 8004C0A0 04610002 */  bgez       $v1, .L8004C0AC
/* F55B4 8004C0A4 00601021 */   addu      $v0, $v1, $zero
/* F55B8 8004C0A8 24620003 */  addiu      $v0, $v1, 3
.L8004C0AC:
/* F55BC 8004C0AC 00021083 */  sra        $v0, $v0, 2
/* F55C0 8004C0B0 00821021 */  addu       $v0, $a0, $v0
/* F55C4 8004C0B4 90420000 */  lbu        $v0, ($v0)
/* F55C8 8004C0B8 10450002 */  beq        $v0, $a1, .L8004C0C4
/* F55CC 8004C0BC 2404003E */   addiu     $a0, $zero, 0x3e
/* F55D0 8004C0C0 2444003A */  addiu      $a0, $v0, 0x3a
.L8004C0C4:
/* F55D4 8004C0C4 0C00D8C1 */  jal        func_80036304_DF814
/* F55D8 8004C0C8 00000000 */   nop
/* F55DC 8004C0CC 00408821 */  addu       $s1, $v0, $zero
/* F55E0 8004C0D0 0C028A40 */  jal        func_800A2900
/* F55E4 8004C0D4 8E24000C */   lw        $a0, 0xc($s1)
/* F55E8 8004C0D8 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F55EC 8004C0DC 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F55F0 8004C0E0 2402003C */  addiu      $v0, $zero, 0x3c
/* F55F4 8004C0E4 0043001A */  div        $zero, $v0, $v1
/* F55F8 8004C0E8 14600002 */  bnez       $v1, .L8004C0F4
/* F55FC 8004C0EC 00000000 */   nop
/* F5600 8004C0F0 0007000D */  break      7
.L8004C0F4:
/* F5604 8004C0F4 2401FFFF */   addiu     $at, $zero, -1
/* F5608 8004C0F8 14610004 */  bne        $v1, $at, .L8004C10C
/* F560C 8004C0FC 3C018000 */   lui       $at, 0x8000
/* F5610 8004C100 14410002 */  bne        $v0, $at, .L8004C10C
/* F5614 8004C104 00000000 */   nop
/* F5618 8004C108 0006000D */  break      6
.L8004C10C:
/* F561C 8004C10C 00001012 */   mflo      $v0
/* F5620 8004C110 3C018007 */  lui        $at, %hi(D_8006A1F8)
/* F5624 8004C114 D422A1F8 */  ldc1       $f2, %lo(D_8006A1F8)($at)
/* F5628 8004C118 44820000 */  mtc1       $v0, $f0
/* F562C 8004C11C 00000000 */  nop
/* F5630 8004C120 46800021 */  cvt.d.w    $f0, $f0
/* F5634 8004C124 46220002 */  mul.d      $f0, $f0, $f2
/* F5638 8004C128 3C018007 */  lui        $at, %hi(D_8006C564)
/* F563C 8004C12C C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5640 8004C130 468010A1 */  cvt.d.w    $f2, $f2
/* F5644 8004C134 46201032 */  c.eq.d     $f2, $f0
/* F5648 8004C138 00000000 */  nop
/* F564C 8004C13C 00000000 */  nop
/* F5650 8004C140 450003E4 */  bc1f       .L8004D0D4
/* F5654 8004C144 24020011 */   addiu     $v0, $zero, 0x11
/* F5658 8004C148 08013435 */  j          .L8004D0D4
/* F565C 8004C14C A642001C */   sh        $v0, 0x1c($s2)
.L8004C150:
/* F5660 8004C150 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F5664 8004C154 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F5668 8004C158 14400003 */  bnez       $v0, .L8004C168
/* F566C 8004C15C 00000000 */   nop
/* F5670 8004C160 0C01155F */  jal        func_8004557C_EEA8C
/* F5674 8004C164 00000000 */   nop
.L8004C168:
/* F5678 8004C168 3C014318 */  lui        $at, 0x4318
/* F567C 8004C16C 44810000 */  mtc1       $at, $f0
/* F5680 8004C170 24020010 */  addiu      $v0, $zero, 0x10
/* F5684 8004C174 3C018007 */  lui        $at, %hi(D_8006C106)
/* F5688 8004C178 A422C106 */  sh         $v0, %lo(D_8006C106)($at)
/* F568C 8004C17C 24020012 */  addiu      $v0, $zero, 0x12
/* F5690 8004C180 3C018007 */  lui        $at, %hi(D_8006C104)
/* F5694 8004C184 A420C104 */  sh         $zero, %lo(D_8006C104)($at)
/* F5698 8004C188 A642001C */  sh         $v0, 0x1c($s2)
/* F569C 8004C18C 3C018007 */  lui        $at, %hi(D_8006C0E0)
/* F56A0 8004C190 E420C0E0 */  swc1       $f0, %lo(D_8006C0E0)($at)
.L8004C194:
/* F56A4 8004C194 0C00D8C1 */  jal        func_80036304_DF814
/* F56A8 8004C198 24040044 */   addiu     $a0, $zero, 0x44
/* F56AC 8004C19C 8C44000C */  lw         $a0, 0xc($v0)
/* F56B0 8004C1A0 0C028A40 */  jal        func_800A2900
/* F56B4 8004C1A4 00000000 */   nop
/* F56B8 8004C1A8 3C018007 */  lui        $at, %hi(D_8006C0E0)
/* F56BC 8004C1AC C422C0E0 */  lwc1       $f2, %lo(D_8006C0E0)($at)
/* F56C0 8004C1B0 3C014180 */  lui        $at, 0x4180
/* F56C4 8004C1B4 44810000 */  mtc1       $at, $f0
/* F56C8 8004C1B8 00000000 */  nop
/* F56CC 8004C1BC 4602003C */  c.lt.s     $f0, $f2
/* F56D0 8004C1C0 00000000 */  nop
/* F56D4 8004C1C4 4500000C */  bc1f       .L8004C1F8
/* F56D8 8004C1C8 00000000 */   nop
/* F56DC 8004C1CC 3C028007 */  lui        $v0, %hi(D_8006C106)
/* F56E0 8004C1D0 8442C106 */  lh         $v0, %lo(D_8006C106)($v0)
/* F56E4 8004C1D4 44820000 */  mtc1       $v0, $f0
/* F56E8 8004C1D8 00000000 */  nop
/* F56EC 8004C1DC 46800020 */  cvt.s.w    $f0, $f0
/* F56F0 8004C1E0 46001001 */  sub.s      $f0, $f2, $f0
/* F56F4 8004C1E4 2442FFFF */  addiu      $v0, $v0, -1
/* F56F8 8004C1E8 3C018007 */  lui        $at, %hi(D_8006C106)
/* F56FC 8004C1EC A422C106 */  sh         $v0, %lo(D_8006C106)($at)
/* F5700 8004C1F0 3C018007 */  lui        $at, %hi(D_8006C0E0)
/* F5704 8004C1F4 E420C0E0 */  swc1       $f0, %lo(D_8006C0E0)($at)
.L8004C1F8:
/* F5708 8004C1F8 0C00D8C1 */  jal        func_80036304_DF814
/* F570C 8004C1FC 2404003F */   addiu     $a0, $zero, 0x3f
/* F5710 8004C200 3C018007 */  lui        $at, %hi(D_8006C0E0)
/* F5714 8004C204 C420C0E0 */  lwc1       $f0, %lo(D_8006C0E0)($at)
/* F5718 8004C208 3C014080 */  lui        $at, 0x4080
/* F571C 8004C20C 4481B000 */  mtc1       $at, $f22
/* F5720 8004C210 00000000 */  nop
/* F5724 8004C214 46160002 */  mul.s      $f0, $f0, $f22
/* F5728 8004C218 00408821 */  addu       $s1, $v0, $zero
/* F572C 8004C21C 8E24000C */  lw         $a0, 0xc($s1)
/* F5730 8004C220 240600C0 */  addiu      $a2, $zero, 0xc0
/* F5734 8004C224 4600008D */  trunc.w.s  $f2, $f0
/* F5738 8004C228 44051000 */  mfc1       $a1, $f2
/* F573C 8004C22C 00000000 */  nop
/* F5740 8004C230 00052C00 */  sll        $a1, $a1, 0x10
/* F5744 8004C234 0C028D89 */  jal        func_800A3624
/* F5748 8004C238 00052C03 */   sra       $a1, $a1, 0x10
/* F574C 8004C23C 8E24000C */  lw         $a0, 0xc($s1)
/* F5750 8004C240 0C028A40 */  jal        func_800A2900
/* F5754 8004C244 2410003C */   addiu     $s0, $zero, 0x3c
/* F5758 8004C248 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F575C 8004C24C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5760 8004C250 0202001A */  div        $zero, $s0, $v0
/* F5764 8004C254 14400002 */  bnez       $v0, .L8004C260
/* F5768 8004C258 00000000 */   nop
/* F576C 8004C25C 0007000D */  break      7
.L8004C260:
/* F5770 8004C260 2401FFFF */   addiu     $at, $zero, -1
/* F5774 8004C264 14410004 */  bne        $v0, $at, .L8004C278
/* F5778 8004C268 3C018000 */   lui       $at, 0x8000
/* F577C 8004C26C 16010002 */  bne        $s0, $at, .L8004C278
/* F5780 8004C270 00000000 */   nop
/* F5784 8004C274 0006000D */  break      6
.L8004C278:
/* F5788 8004C278 00001012 */   mflo      $v0
/* F578C 8004C27C 3C013DCC */  lui        $at, 0x3dcc
/* F5790 8004C280 3421CCCD */  ori        $at, $at, 0xcccd
/* F5794 8004C284 4481A000 */  mtc1       $at, $f20
/* F5798 8004C288 44820000 */  mtc1       $v0, $f0
/* F579C 8004C28C 00000000 */  nop
/* F57A0 8004C290 46800020 */  cvt.s.w    $f0, $f0
/* F57A4 8004C294 46140002 */  mul.s      $f0, $f0, $f20
/* F57A8 8004C298 3C018007 */  lui        $at, %hi(D_8006C564)
/* F57AC 8004C29C C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F57B0 8004C2A0 468010A0 */  cvt.s.w    $f2, $f2
/* F57B4 8004C2A4 46001032 */  c.eq.s     $f2, $f0
/* F57B8 8004C2A8 00000000 */  nop
/* F57BC 8004C2AC 45000003 */  bc1f       .L8004C2BC
/* F57C0 8004C2B0 00000000 */   nop
/* F57C4 8004C2B4 0C026DD5 */  jal        func_8009B754
/* F57C8 8004C2B8 2404012A */   addiu     $a0, $zero, 0x12a
.L8004C2BC:
/* F57CC 8004C2BC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F57D0 8004C2C0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F57D4 8004C2C4 0202001A */  div        $zero, $s0, $v0
/* F57D8 8004C2C8 14400002 */  bnez       $v0, .L8004C2D4
/* F57DC 8004C2CC 00000000 */   nop
/* F57E0 8004C2D0 0007000D */  break      7
.L8004C2D4:
/* F57E4 8004C2D4 2401FFFF */   addiu     $at, $zero, -1
/* F57E8 8004C2D8 14410004 */  bne        $v0, $at, .L8004C2EC
/* F57EC 8004C2DC 3C018000 */   lui       $at, 0x8000
/* F57F0 8004C2E0 16010002 */  bne        $s0, $at, .L8004C2EC
/* F57F4 8004C2E4 00000000 */   nop
/* F57F8 8004C2E8 0006000D */  break      6
.L8004C2EC:
/* F57FC 8004C2EC 00001012 */   mflo      $v0
/* F5800 8004C2F0 44820000 */  mtc1       $v0, $f0
/* F5804 8004C2F4 00000000 */  nop
/* F5808 8004C2F8 46800020 */  cvt.s.w    $f0, $f0
/* F580C 8004C2FC 46140002 */  mul.s      $f0, $f0, $f20
/* F5810 8004C300 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5814 8004C304 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5818 8004C308 468010A0 */  cvt.s.w    $f2, $f2
/* F581C 8004C30C 4602003C */  c.lt.s     $f0, $f2
/* F5820 8004C310 00000000 */  nop
/* F5824 8004C314 00000000 */  nop
/* F5828 8004C318 4500003C */  bc1f       .L8004C40C
/* F582C 8004C31C 3C065555 */   lui       $a2, 0x5555
/* F5830 8004C320 3C048007 */  lui        $a0, %hi(D_8006C104)
/* F5834 8004C324 9484C104 */  lhu        $a0, %lo(D_8006C104)($a0)
/* F5838 8004C328 34C65556 */  ori        $a2, $a2, 0x5556
/* F583C 8004C32C 00041400 */  sll        $v0, $a0, 0x10
/* F5840 8004C330 00021C03 */  sra        $v1, $v0, 0x10
/* F5844 8004C334 00660018 */  mult       $v1, $a2
/* F5848 8004C338 27A50098 */  addiu      $a1, $sp, 0x98
/* F584C 8004C33C 000217C3 */  sra        $v0, $v0, 0x1f
/* F5850 8004C340 00004810 */  mfhi       $t1
/* F5854 8004C344 01221023 */  subu       $v0, $t1, $v0
/* F5858 8004C348 00021400 */  sll        $v0, $v0, 0x10
/* F585C 8004C34C 00021403 */  sra        $v0, $v0, 0x10
/* F5860 8004C350 00A21021 */  addu       $v0, $a1, $v0
/* F5864 8004C354 90430000 */  lbu        $v1, ($v0)
/* F5868 8004C358 24020009 */  addiu      $v0, $zero, 9
/* F586C 8004C35C 10620003 */  beq        $v1, $v0, .L8004C36C
/* F5870 8004C360 24820001 */   addiu     $v0, $a0, 1
/* F5874 8004C364 3C018007 */  lui        $at, %hi(D_8006C104)
/* F5878 8004C368 A422C104 */  sh         $v0, %lo(D_8006C104)($at)
.L8004C36C:
/* F587C 8004C36C 3C028007 */  lui        $v0, %hi(D_8006C104)
/* F5880 8004C370 9442C104 */  lhu        $v0, %lo(D_8006C104)($v0)
/* F5884 8004C374 00021400 */  sll        $v0, $v0, 0x10
/* F5888 8004C378 00021C03 */  sra        $v1, $v0, 0x10
/* F588C 8004C37C 00660018 */  mult       $v1, $a2
/* F5890 8004C380 000217C3 */  sra        $v0, $v0, 0x1f
/* F5894 8004C384 00004810 */  mfhi       $t1
/* F5898 8004C388 01221023 */  subu       $v0, $t1, $v0
/* F589C 8004C38C 00021400 */  sll        $v0, $v0, 0x10
/* F58A0 8004C390 00021403 */  sra        $v0, $v0, 0x10
/* F58A4 8004C394 00A21021 */  addu       $v0, $a1, $v0
/* F58A8 8004C398 90440000 */  lbu        $a0, ($v0)
/* F58AC 8004C39C 308200FF */  andi       $v0, $a0, 0xff
/* F58B0 8004C3A0 0002182B */  sltu       $v1, $zero, $v0
/* F58B4 8004C3A4 38420009 */  xori       $v0, $v0, 9
/* F58B8 8004C3A8 0002102B */  sltu       $v0, $zero, $v0
/* F58BC 8004C3AC 00621824 */  and        $v1, $v1, $v0
/* F58C0 8004C3B0 10600016 */  beqz       $v1, .L8004C40C
/* F58C4 8004C3B4 00000000 */   nop
/* F58C8 8004C3B8 0C00D8C1 */  jal        func_80036304_DF814
/* F58CC 8004C3BC 24840039 */   addiu     $a0, $a0, 0x39
/* F58D0 8004C3C0 3C018007 */  lui        $at, %hi(D_8006C0E0)
/* F58D4 8004C3C4 C422C0E0 */  lwc1       $f2, %lo(D_8006C0E0)($at)
/* F58D8 8004C3C8 3C014280 */  lui        $at, 0x4280
/* F58DC 8004C3CC 44810000 */  mtc1       $at, $f0
/* F58E0 8004C3D0 00000000 */  nop
/* F58E4 8004C3D4 46001080 */  add.s      $f2, $f2, $f0
/* F58E8 8004C3D8 46161082 */  mul.s      $f2, $f2, $f22
/* F58EC 8004C3DC 00408821 */  addu       $s1, $v0, $zero
/* F58F0 8004C3E0 8E24000C */  lw         $a0, 0xc($s1)
/* F58F4 8004C3E4 240601C0 */  addiu      $a2, $zero, 0x1c0
/* F58F8 8004C3E8 4600100D */  trunc.w.s  $f0, $f2
/* F58FC 8004C3EC 44050000 */  mfc1       $a1, $f0
/* F5900 8004C3F0 00000000 */  nop
/* F5904 8004C3F4 00052C00 */  sll        $a1, $a1, 0x10
/* F5908 8004C3F8 0C028D89 */  jal        func_800A3624
/* F590C 8004C3FC 00052C03 */   sra       $a1, $a1, 0x10
/* F5910 8004C400 8E24000C */  lw         $a0, 0xc($s1)
/* F5914 8004C404 0C028A40 */  jal        func_800A2900
/* F5918 8004C408 00000000 */   nop
.L8004C40C:
/* F591C 8004C40C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F5920 8004C410 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5924 8004C414 2410003C */  addiu      $s0, $zero, 0x3c
/* F5928 8004C418 0202001A */  div        $zero, $s0, $v0
/* F592C 8004C41C 14400002 */  bnez       $v0, .L8004C428
/* F5930 8004C420 00000000 */   nop
/* F5934 8004C424 0007000D */  break      7
.L8004C428:
/* F5938 8004C428 2401FFFF */   addiu     $at, $zero, -1
/* F593C 8004C42C 14410004 */  bne        $v0, $at, .L8004C440
/* F5940 8004C430 3C018000 */   lui       $at, 0x8000
/* F5944 8004C434 16010002 */  bne        $s0, $at, .L8004C440
/* F5948 8004C438 00000000 */   nop
/* F594C 8004C43C 0006000D */  break      6
.L8004C440:
/* F5950 8004C440 00001012 */   mflo      $v0
/* F5954 8004C444 3C013DCC */  lui        $at, 0x3dcc
/* F5958 8004C448 3421CCCD */  ori        $at, $at, 0xcccd
/* F595C 8004C44C 44811000 */  mtc1       $at, $f2
/* F5960 8004C450 44820000 */  mtc1       $v0, $f0
/* F5964 8004C454 00000000 */  nop
/* F5968 8004C458 46800020 */  cvt.s.w    $f0, $f0
/* F596C 8004C45C 46020002 */  mul.s      $f0, $f0, $f2
/* F5970 8004C460 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5974 8004C464 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5978 8004C468 468010A0 */  cvt.s.w    $f2, $f2
/* F597C 8004C46C 4602003E */  c.le.s     $f0, $f2
/* F5980 8004C470 00000000 */  nop
/* F5984 8004C474 4500000B */  bc1f       .L8004C4A4
/* F5988 8004C478 00000000 */   nop
/* F598C 8004C47C 0C00D8C1 */  jal        func_80036304_DF814
/* F5990 8004C480 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F5994 8004C484 8C44000C */  lw         $a0, 0xc($v0)
/* F5998 8004C488 0C028A40 */  jal        func_800A2900
/* F599C 8004C48C 00000000 */   nop
/* F59A0 8004C490 0C00D8C1 */  jal        func_80036304_DF814
/* F59A4 8004C494 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F59A8 8004C498 8C44000C */  lw         $a0, 0xc($v0)
/* F59AC 8004C49C 0C028A40 */  jal        func_800A2900
/* F59B0 8004C4A0 00000000 */   nop
.L8004C4A4:
/* F59B4 8004C4A4 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F59B8 8004C4A8 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F59BC 8004C4AC 0202001A */  div        $zero, $s0, $v0
/* F59C0 8004C4B0 14400002 */  bnez       $v0, .L8004C4BC
/* F59C4 8004C4B4 00000000 */   nop
/* F59C8 8004C4B8 0007000D */  break      7
.L8004C4BC:
/* F59CC 8004C4BC 2401FFFF */   addiu     $at, $zero, -1
/* F59D0 8004C4C0 14410004 */  bne        $v0, $at, .L8004C4D4
/* F59D4 8004C4C4 3C018000 */   lui       $at, 0x8000
/* F59D8 8004C4C8 16010002 */  bne        $s0, $at, .L8004C4D4
/* F59DC 8004C4CC 00000000 */   nop
/* F59E0 8004C4D0 0006000D */  break      6
.L8004C4D4:
/* F59E4 8004C4D4 00001012 */   mflo      $v0
/* F59E8 8004C4D8 3C018007 */  lui        $at, %hi(D_8006C564)
/* F59EC 8004C4DC C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F59F0 8004C4E0 468010A1 */  cvt.d.w    $f2, $f2
/* F59F4 8004C4E4 44820000 */  mtc1       $v0, $f0
/* F59F8 8004C4E8 00000000 */  nop
/* F59FC 8004C4EC 46800021 */  cvt.d.w    $f0, $f0
/* F5A00 8004C4F0 46201032 */  c.eq.d     $f2, $f0
/* F5A04 8004C4F4 00000000 */  nop
/* F5A08 8004C4F8 00000000 */  nop
/* F5A0C 8004C4FC 450002F5 */  bc1f       .L8004D0D4
/* F5A10 8004C500 24020013 */   addiu     $v0, $zero, 0x13
.L8004C504:
/* F5A14 8004C504 08013435 */  j          .L8004D0D4
/* F5A18 8004C508 A642001C */   sh        $v0, 0x1c($s2)
.L8004C50C:
/* F5A1C 8004C50C 0C011A39 */  jal        func_800468E4_EFDF4
/* F5A20 8004C510 00000000 */   nop
/* F5A24 8004C514 0C026E5D */  jal        func_8009B974
/* F5A28 8004C518 24040001 */   addiu     $a0, $zero, 1
/* F5A2C 8004C51C 24040009 */  addiu      $a0, $zero, 9
/* F5A30 8004C520 00002821 */  addu       $a1, $zero, $zero
/* F5A34 8004C524 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* F5A38 8004C528 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* F5A3C 8004C52C 2406000A */  addiu      $a2, $zero, 0xa
/* F5A40 8004C530 24020001 */  addiu      $v0, $zero, 1
/* F5A44 8004C534 0C026C9A */  jal        func_8009B268
/* F5A48 8004C538 AFA20010 */   sw        $v0, 0x10($sp)
/* F5A4C 8004C53C 24050010 */  addiu      $a1, $zero, 0x10
/* F5A50 8004C540 24060010 */  addiu      $a2, $zero, 0x10
/* F5A54 8004C544 3C014378 */  lui        $at, 0x4378
/* F5A58 8004C548 44810000 */  mtc1       $at, $f0
/* F5A5C 8004C54C 3C048007 */  lui        $a0, %hi(D_8006C0D4)
/* F5A60 8004C550 8C84C0D4 */  lw         $a0, %lo(D_8006C0D4)($a0)
/* F5A64 8004C554 240200E0 */  addiu      $v0, $zero, 0xe0
/* F5A68 8004C558 AFA20010 */  sw         $v0, 0x10($sp)
/* F5A6C 8004C55C 3C018007 */  lui        $at, %hi(D_8006C10C)
/* F5A70 8004C560 E420C10C */  swc1       $f0, %lo(D_8006C10C)($at)
/* F5A74 8004C564 3C018007 */  lui        $at, %hi(D_8006C110)
/* F5A78 8004C568 E420C110 */  swc1       $f0, %lo(D_8006C110)($at)
/* F5A7C 8004C56C 0C02939C */  jal        func_800A4E70
/* F5A80 8004C570 24070130 */   addiu     $a3, $zero, 0x130
/* F5A84 8004C574 00001021 */  addu       $v0, $zero, $zero
/* F5A88 8004C578 24030014 */  addiu      $v1, $zero, 0x14
/* F5A8C 8004C57C 08013436 */  j          .L8004D0D8
/* F5A90 8004C580 A643001C */   sh        $v1, 0x1c($s2)
.L8004C584:
/* F5A94 8004C584 0C00E320 */  jal        func_80038C80_E2190
/* F5A98 8004C588 00000000 */   nop
/* F5A9C 8004C58C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F5AA0 8004C590 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F5AA4 8004C594 24020004 */  addiu      $v0, $zero, 4
/* F5AA8 8004C598 14620003 */  bne        $v1, $v0, .L8004C5A8
/* F5AAC 8004C59C 00000000 */   nop
/* F5AB0 8004C5A0 0C026DD5 */  jal        func_8009B754
/* F5AB4 8004C5A4 2404004B */   addiu     $a0, $zero, 0x4b
.L8004C5A8:
/* F5AB8 8004C5A8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F5ABC 8004C5AC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F5AC0 8004C5B0 28420005 */  slti       $v0, $v0, 5
/* F5AC4 8004C5B4 1440007E */  bnez       $v0, .L8004C7B0
/* F5AC8 8004C5B8 00000000 */   nop
/* F5ACC 8004C5BC 0C00D8C1 */  jal        func_80036304_DF814
/* F5AD0 8004C5C0 24040055 */   addiu     $a0, $zero, 0x55
/* F5AD4 8004C5C4 3C018007 */  lui        $at, %hi(D_8006C110)
/* F5AD8 8004C5C8 C422C110 */  lwc1       $f2, %lo(D_8006C110)($at)
/* F5ADC 8004C5CC 3C014F00 */  lui        $at, 0x4f00
/* F5AE0 8004C5D0 44810000 */  mtc1       $at, $f0
/* F5AE4 8004C5D4 00000000 */  nop
/* F5AE8 8004C5D8 4602003E */  c.le.s     $f0, $f2
/* F5AEC 8004C5DC 00000000 */  nop
/* F5AF0 8004C5E0 00000000 */  nop
/* F5AF4 8004C5E4 45010006 */  bc1t       .L8004C600
/* F5AF8 8004C5E8 00408821 */   addu      $s1, $v0, $zero
/* F5AFC 8004C5EC 4600100D */  trunc.w.s  $f0, $f2
/* F5B00 8004C5F0 44030000 */  mfc1       $v1, $f0
/* F5B04 8004C5F4 00000000 */  nop
/* F5B08 8004C5F8 08013186 */  j          .L8004C618
/* F5B0C 8004C5FC 306200FF */   andi      $v0, $v1, 0xff
.L8004C600:
/* F5B10 8004C600 46001001 */  sub.s      $f0, $f2, $f0
/* F5B14 8004C604 4600008D */  trunc.w.s  $f2, $f0
/* F5B18 8004C608 44031000 */  mfc1       $v1, $f2
/* F5B1C 8004C60C 3C028000 */  lui        $v0, 0x8000
/* F5B20 8004C610 00621825 */  or         $v1, $v1, $v0
/* F5B24 8004C614 306200FF */  andi       $v0, $v1, 0xff
.L8004C618:
/* F5B28 8004C618 AFA20010 */  sw         $v0, 0x10($sp)
/* F5B2C 8004C61C 8E24000C */  lw         $a0, 0xc($s1)
/* F5B30 8004C620 240500E0 */  addiu      $a1, $zero, 0xe0
/* F5B34 8004C624 240600FF */  addiu      $a2, $zero, 0xff
/* F5B38 8004C628 0C028E41 */  jal        func_800A3904
/* F5B3C 8004C62C 240700FF */   addiu     $a3, $zero, 0xff
/* F5B40 8004C630 8E24000C */  lw         $a0, 0xc($s1)
/* F5B44 8004C634 0C028A40 */  jal        func_800A2900
/* F5B48 8004C638 00000000 */   nop
/* F5B4C 8004C63C 3C018007 */  lui        $at, %hi(D_8006C110)
/* F5B50 8004C640 C422C110 */  lwc1       $f2, %lo(D_8006C110)($at)
/* F5B54 8004C644 3C0141C0 */  lui        $at, 0x41c0
/* F5B58 8004C648 44810000 */  mtc1       $at, $f0
/* F5B5C 8004C64C 00000000 */  nop
/* F5B60 8004C650 4602003C */  c.lt.s     $f0, $f2
/* F5B64 8004C654 00000000 */  nop
/* F5B68 8004C658 45000007 */  bc1f       .L8004C678
/* F5B6C 8004C65C 00000000 */   nop
/* F5B70 8004C660 3C014200 */  lui        $at, 0x4200
/* F5B74 8004C664 44810000 */  mtc1       $at, $f0
/* F5B78 8004C668 00000000 */  nop
/* F5B7C 8004C66C 46001001 */  sub.s      $f0, $f2, $f0
/* F5B80 8004C670 3C018007 */  lui        $at, %hi(D_8006C110)
/* F5B84 8004C674 E420C110 */  swc1       $f0, %lo(D_8006C110)($at)
.L8004C678:
/* F5B88 8004C678 3C018007 */  lui        $at, %hi(D_8006C10C)
/* F5B8C 8004C67C C422C10C */  lwc1       $f2, %lo(D_8006C10C)($at)
/* F5B90 8004C680 3C014F00 */  lui        $at, 0x4f00
/* F5B94 8004C684 44810000 */  mtc1       $at, $f0
/* F5B98 8004C688 00000000 */  nop
/* F5B9C 8004C68C 4602003E */  c.le.s     $f0, $f2
/* F5BA0 8004C690 00000000 */  nop
/* F5BA4 8004C694 00000000 */  nop
/* F5BA8 8004C698 45030005 */  bc1tl      .L8004C6B0
/* F5BAC 8004C69C 46001001 */   sub.s     $f0, $f2, $f0
/* F5BB0 8004C6A0 4600100D */  trunc.w.s  $f0, $f2
/* F5BB4 8004C6A4 44040000 */  mfc1       $a0, $f0
/* F5BB8 8004C6A8 080131B0 */  j          .L8004C6C0
/* F5BBC 8004C6AC 00000000 */   nop
.L8004C6B0:
/* F5BC0 8004C6B0 4600008D */  trunc.w.s  $f2, $f0
/* F5BC4 8004C6B4 44041000 */  mfc1       $a0, $f2
/* F5BC8 8004C6B8 3C028000 */  lui        $v0, 0x8000
/* F5BCC 8004C6BC 00822025 */  or         $a0, $a0, $v0
.L8004C6C0:
/* F5BD0 8004C6C0 3C018007 */  lui        $at, %hi(D_8006C10C)
/* F5BD4 8004C6C4 C422C10C */  lwc1       $f2, %lo(D_8006C10C)($at)
/* F5BD8 8004C6C8 3C014F00 */  lui        $at, 0x4f00
/* F5BDC 8004C6CC 44810000 */  mtc1       $at, $f0
/* F5BE0 8004C6D0 00000000 */  nop
/* F5BE4 8004C6D4 4602003E */  c.le.s     $f0, $f2
/* F5BE8 8004C6D8 00000000 */  nop
/* F5BEC 8004C6DC 00000000 */  nop
/* F5BF0 8004C6E0 45010005 */  bc1t       .L8004C6F8
/* F5BF4 8004C6E4 308400FF */   andi      $a0, $a0, 0xff
/* F5BF8 8004C6E8 4600100D */  trunc.w.s  $f0, $f2
/* F5BFC 8004C6EC 44050000 */  mfc1       $a1, $f0
/* F5C00 8004C6F0 080131C3 */  j          .L8004C70C
/* F5C04 8004C6F4 00000000 */   nop
.L8004C6F8:
/* F5C08 8004C6F8 46001001 */  sub.s      $f0, $f2, $f0
/* F5C0C 8004C6FC 4600008D */  trunc.w.s  $f2, $f0
/* F5C10 8004C700 44051000 */  mfc1       $a1, $f2
/* F5C14 8004C704 3C028000 */  lui        $v0, 0x8000
/* F5C18 8004C708 00A22825 */  or         $a1, $a1, $v0
.L8004C70C:
/* F5C1C 8004C70C 3C018007 */  lui        $at, %hi(D_8006C10C)
/* F5C20 8004C710 C422C10C */  lwc1       $f2, %lo(D_8006C10C)($at)
/* F5C24 8004C714 3C014F00 */  lui        $at, 0x4f00
/* F5C28 8004C718 44810000 */  mtc1       $at, $f0
/* F5C2C 8004C71C 00000000 */  nop
/* F5C30 8004C720 4602003E */  c.le.s     $f0, $f2
/* F5C34 8004C724 00000000 */  nop
/* F5C38 8004C728 00000000 */  nop
/* F5C3C 8004C72C 45010006 */  bc1t       .L8004C748
/* F5C40 8004C730 30A500FF */   andi      $a1, $a1, 0xff
/* F5C44 8004C734 4600100D */  trunc.w.s  $f0, $f2
/* F5C48 8004C738 44060000 */  mfc1       $a2, $f0
/* F5C4C 8004C73C 00000000 */  nop
/* F5C50 8004C740 080131D8 */  j          .L8004C760
/* F5C54 8004C744 30C600FF */   andi      $a2, $a2, 0xff
.L8004C748:
/* F5C58 8004C748 46001001 */  sub.s      $f0, $f2, $f0
/* F5C5C 8004C74C 4600008D */  trunc.w.s  $f2, $f0
/* F5C60 8004C750 44061000 */  mfc1       $a2, $f2
/* F5C64 8004C754 3C028000 */  lui        $v0, 0x8000
/* F5C68 8004C758 00C23025 */  or         $a2, $a2, $v0
/* F5C6C 8004C75C 30C600FF */  andi       $a2, $a2, 0xff
.L8004C760:
/* F5C70 8004C760 240700FF */  addiu      $a3, $zero, 0xff
/* F5C74 8004C764 240200FF */  addiu      $v0, $zero, 0xff
/* F5C78 8004C768 AFA20010 */  sw         $v0, 0x10($sp)
/* F5C7C 8004C76C 0C00E34F */  jal        func_80038D3C_E224C
/* F5C80 8004C770 AFA20014 */   sw        $v0, 0x14($sp)
/* F5C84 8004C774 3C018007 */  lui        $at, %hi(D_8006C10C)
/* F5C88 8004C778 C422C10C */  lwc1       $f2, %lo(D_8006C10C)($at)
/* F5C8C 8004C77C 3C014100 */  lui        $at, 0x4100
/* F5C90 8004C780 44810000 */  mtc1       $at, $f0
/* F5C94 8004C784 00000000 */  nop
/* F5C98 8004C788 4602003C */  c.lt.s     $f0, $f2
/* F5C9C 8004C78C 00000000 */  nop
/* F5CA0 8004C790 45000007 */  bc1f       .L8004C7B0
/* F5CA4 8004C794 00000000 */   nop
/* F5CA8 8004C798 3C014180 */  lui        $at, 0x4180
/* F5CAC 8004C79C 44810000 */  mtc1       $at, $f0
/* F5CB0 8004C7A0 00000000 */  nop
/* F5CB4 8004C7A4 46001001 */  sub.s      $f0, $f2, $f0
/* F5CB8 8004C7A8 3C018007 */  lui        $at, %hi(D_8006C10C)
/* F5CBC 8004C7AC E420C10C */  swc1       $f0, %lo(D_8006C10C)($at)
.L8004C7B0:
/* F5CC0 8004C7B0 0C00D8C1 */  jal        func_80036304_DF814
/* F5CC4 8004C7B4 24040018 */   addiu     $a0, $zero, 0x18
/* F5CC8 8004C7B8 8C44000C */  lw         $a0, 0xc($v0)
/* F5CCC 8004C7BC 0C028A40 */  jal        func_800A2900
/* F5CD0 8004C7C0 00000000 */   nop
/* F5CD4 8004C7C4 0C00E032 */  jal        func_800380C8_E15D8
/* F5CD8 8004C7C8 24040031 */   addiu     $a0, $zero, 0x31
/* F5CDC 8004C7CC 0C00E032 */  jal        func_800380C8_E15D8
/* F5CE0 8004C7D0 24040032 */   addiu     $a0, $zero, 0x32
/* F5CE4 8004C7D4 0C00E032 */  jal        func_800380C8_E15D8
/* F5CE8 8004C7D8 24040034 */   addiu     $a0, $zero, 0x34
/* F5CEC 8004C7DC 0C00E032 */  jal        func_800380C8_E15D8
/* F5CF0 8004C7E0 24040035 */   addiu     $a0, $zero, 0x35
/* F5CF4 8004C7E4 0C00E032 */  jal        func_800380C8_E15D8
/* F5CF8 8004C7E8 24040036 */   addiu     $a0, $zero, 0x36
/* F5CFC 8004C7EC 0C00E032 */  jal        func_800380C8_E15D8
/* F5D00 8004C7F0 24040037 */   addiu     $a0, $zero, 0x37
/* F5D04 8004C7F4 0C00E032 */  jal        func_800380C8_E15D8
/* F5D08 8004C7F8 24040033 */   addiu     $a0, $zero, 0x33
/* F5D0C 8004C7FC 0C00DFD6 */  jal        func_80037F58_E1468
/* F5D10 8004C800 24040035 */   addiu     $a0, $zero, 0x35
/* F5D14 8004C804 8C420008 */  lw         $v0, 8($v0)
/* F5D18 8004C808 84430024 */  lh         $v1, 0x24($v0)
/* F5D1C 8004C80C 24020010 */  addiu      $v0, $zero, 0x10
/* F5D20 8004C810 14620231 */  bne        $v1, $v0, .L8004D0D8
/* F5D24 8004C814 00001021 */   addu      $v0, $zero, $zero
/* F5D28 8004C818 24020015 */  addiu      $v0, $zero, 0x15
/* F5D2C 8004C81C 08013435 */  j          .L8004D0D4
/* F5D30 8004C820 A642001C */   sh        $v0, 0x1c($s2)
.L8004C824:
/* F5D34 8004C824 0C00DFD6 */  jal        func_80037F58_E1468
/* F5D38 8004C828 2404001E */   addiu     $a0, $zero, 0x1e
/* F5D3C 8004C82C 14400003 */  bnez       $v0, .L8004C83C
/* F5D40 8004C830 00000000 */   nop
/* F5D44 8004C834 0C011745 */  jal        func_80045D14_EF224
/* F5D48 8004C838 00000000 */   nop
.L8004C83C:
/* F5D4C 8004C83C 0C011846 */  jal        func_80046118_EF628
/* F5D50 8004C840 00000000 */   nop
/* F5D54 8004C844 24050010 */  addiu      $a1, $zero, 0x10
/* F5D58 8004C848 3C01C080 */  lui        $at, 0xc080
/* F5D5C 8004C84C 44810000 */  mtc1       $at, $f0
/* F5D60 8004C850 3C014353 */  lui        $at, 0x4353
/* F5D64 8004C854 34213852 */  ori        $at, $at, 0x3852
/* F5D68 8004C858 44811000 */  mtc1       $at, $f2
/* F5D6C 8004C85C 3C048007 */  lui        $a0, %hi(D_8006C0D4)
/* F5D70 8004C860 8C84C0D4 */  lw         $a0, %lo(D_8006C0D4)($a0)
/* F5D74 8004C864 24060010 */  addiu      $a2, $zero, 0x10
/* F5D78 8004C868 240200E0 */  addiu      $v0, $zero, 0xe0
/* F5D7C 8004C86C 3C018007 */  lui        $at, %hi(D_8006C104)
/* F5D80 8004C870 A420C104 */  sh         $zero, %lo(D_8006C104)($at)
/* F5D84 8004C874 3C018007 */  lui        $at, %hi(D_8006C106)
/* F5D88 8004C878 A420C106 */  sh         $zero, %lo(D_8006C106)($at)
/* F5D8C 8004C87C 3C018007 */  lui        $at, %hi(D_8006C108)
/* F5D90 8004C880 A420C108 */  sh         $zero, %lo(D_8006C108)($at)
/* F5D94 8004C884 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F5D98 8004C888 AC20C0E8 */  sw         $zero, %lo(D_8006C0E8)($at)
/* F5D9C 8004C88C AFA20010 */  sw         $v0, 0x10($sp)
/* F5DA0 8004C890 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F5DA4 8004C894 E420C0E4 */  swc1       $f0, %lo(D_8006C0E4)($at)
/* F5DA8 8004C898 3C018007 */  lui        $at, %hi(D_8006C0F0)
/* F5DAC 8004C89C E422C0F0 */  swc1       $f2, %lo(D_8006C0F0)($at)
/* F5DB0 8004C8A0 0C02939C */  jal        func_800A4E70
/* F5DB4 8004C8A4 24070130 */   addiu     $a3, $zero, 0x130
/* F5DB8 8004C8A8 3C01C0A0 */  lui        $at, 0xc0a0
/* F5DBC 8004C8AC 44811000 */  mtc1       $at, $f2
/* F5DC0 8004C8B0 3C013F80 */  lui        $at, 0x3f80
/* F5DC4 8004C8B4 44810000 */  mtc1       $at, $f0
/* F5DC8 8004C8B8 3C01C2BE */  lui        $at, 0xc2be
/* F5DCC 8004C8BC 44812000 */  mtc1       $at, $f4
/* F5DD0 8004C8C0 3C01C0C0 */  lui        $at, 0xc0c0
/* F5DD4 8004C8C4 44813000 */  mtc1       $at, $f6
/* F5DD8 8004C8C8 24020016 */  addiu      $v0, $zero, 0x16
/* F5DDC 8004C8CC 3C018015 */  lui        $at, %hi(D_8014A064)
/* F5DE0 8004C8D0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F5DE4 8004C8D4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F5DE8 8004C8D8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F5DEC 8004C8DC 3C018015 */  lui        $at, %hi(D_8014A070)
/* F5DF0 8004C8E0 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F5DF4 8004C8E4 3C018015 */  lui        $at, %hi(D_8014A078)
/* F5DF8 8004C8E8 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F5DFC 8004C8EC 3C018015 */  lui        $at, %hi(D_8014A054)
/* F5E00 8004C8F0 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F5E04 8004C8F4 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F5E08 8004C8F8 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F5E0C 8004C8FC 3C018015 */  lui        $at, %hi(D_8014A068)
/* F5E10 8004C900 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* F5E14 8004C904 3C018015 */  lui        $at, %hi(D_8014A074)
/* F5E18 8004C908 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F5E1C 8004C90C 3C018015 */  lui        $at, %hi(D_8014A088)
/* F5E20 8004C910 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* F5E24 8004C914 3C018015 */  lui        $at, %hi(D_8014A050)
/* F5E28 8004C918 E422A050 */  swc1       $f2, %lo(D_8014A050)($at)
/* F5E2C 8004C91C 3C018017 */  lui        $at, %hi(D_8016E568)
/* F5E30 8004C920 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F5E34 8004C924 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F5E38 8004C928 E426D0D0 */  swc1       $f6, %lo(D_8016D0D0)($at)
/* F5E3C 8004C92C 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F5E40 8004C930 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* F5E44 8004C934 A642001C */  sh         $v0, 0x1c($s2)
.L8004C938:
/* F5E48 8004C938 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F5E4C 8004C93C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5E50 8004C940 2410003C */  addiu      $s0, $zero, 0x3c
/* F5E54 8004C944 0202001A */  div        $zero, $s0, $v0
/* F5E58 8004C948 14400002 */  bnez       $v0, .L8004C954
/* F5E5C 8004C94C 00000000 */   nop
/* F5E60 8004C950 0007000D */  break      7
.L8004C954:
/* F5E64 8004C954 2401FFFF */   addiu     $at, $zero, -1
/* F5E68 8004C958 14410004 */  bne        $v0, $at, .L8004C96C
/* F5E6C 8004C95C 3C018000 */   lui       $at, 0x8000
/* F5E70 8004C960 16010002 */  bne        $s0, $at, .L8004C96C
/* F5E74 8004C964 00000000 */   nop
/* F5E78 8004C968 0006000D */  break      6
.L8004C96C:
/* F5E7C 8004C96C 00001012 */   mflo      $v0
/* F5E80 8004C970 3C013DCC */  lui        $at, 0x3dcc
/* F5E84 8004C974 3421CCCD */  ori        $at, $at, 0xcccd
/* F5E88 8004C978 4481A000 */  mtc1       $at, $f20
/* F5E8C 8004C97C 44820000 */  mtc1       $v0, $f0
/* F5E90 8004C980 00000000 */  nop
/* F5E94 8004C984 46800020 */  cvt.s.w    $f0, $f0
/* F5E98 8004C988 46140002 */  mul.s      $f0, $f0, $f20
/* F5E9C 8004C98C 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5EA0 8004C990 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5EA4 8004C994 468010A0 */  cvt.s.w    $f2, $f2
/* F5EA8 8004C998 46001032 */  c.eq.s     $f2, $f0
/* F5EAC 8004C99C 00000000 */  nop
/* F5EB0 8004C9A0 45000003 */  bc1f       .L8004C9B0
/* F5EB4 8004C9A4 00000000 */   nop
/* F5EB8 8004C9A8 0C026DD5 */  jal        func_8009B754
/* F5EBC 8004C9AC 2404004C */   addiu     $a0, $zero, 0x4c
.L8004C9B0:
/* F5EC0 8004C9B0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F5EC4 8004C9B4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F5EC8 8004C9B8 0202001A */  div        $zero, $s0, $v0
/* F5ECC 8004C9BC 14400002 */  bnez       $v0, .L8004C9C8
/* F5ED0 8004C9C0 00000000 */   nop
/* F5ED4 8004C9C4 0007000D */  break      7
.L8004C9C8:
/* F5ED8 8004C9C8 2401FFFF */   addiu     $at, $zero, -1
/* F5EDC 8004C9CC 14410004 */  bne        $v0, $at, .L8004C9E0
/* F5EE0 8004C9D0 3C018000 */   lui       $at, 0x8000
/* F5EE4 8004C9D4 16010002 */  bne        $s0, $at, .L8004C9E0
/* F5EE8 8004C9D8 00000000 */   nop
/* F5EEC 8004C9DC 0006000D */  break      6
.L8004C9E0:
/* F5EF0 8004C9E0 00001012 */   mflo      $v0
/* F5EF4 8004C9E4 44820000 */  mtc1       $v0, $f0
/* F5EF8 8004C9E8 00000000 */  nop
/* F5EFC 8004C9EC 46800020 */  cvt.s.w    $f0, $f0
/* F5F00 8004C9F0 46140002 */  mul.s      $f0, $f0, $f20
/* F5F04 8004C9F4 3C018007 */  lui        $at, %hi(D_8006C564)
/* F5F08 8004C9F8 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F5F0C 8004C9FC 468010A0 */  cvt.s.w    $f2, $f2
/* F5F10 8004CA00 4602003E */  c.le.s     $f0, $f2
/* F5F14 8004CA04 00000000 */  nop
/* F5F18 8004CA08 4500009F */  bc1f       .L8004CC88
/* F5F1C 8004CA0C 00000000 */   nop
/* F5F20 8004CA10 3C028007 */  lui        $v0, %hi(D_8006C106)
/* F5F24 8004CA14 8442C106 */  lh         $v0, %lo(D_8006C106)($v0)
/* F5F28 8004CA18 3C014020 */  lui        $at, 0x4020
/* F5F2C 8004CA1C 44811000 */  mtc1       $at, $f2
/* F5F30 8004CA20 44820000 */  mtc1       $v0, $f0
/* F5F34 8004CA24 00000000 */  nop
/* F5F38 8004CA28 46800020 */  cvt.s.w    $f0, $f0
/* F5F3C 8004CA2C 46020003 */  div.s      $f0, $f0, $f2
/* F5F40 8004CA30 3C0140D0 */  lui        $at, 0x40d0
/* F5F44 8004CA34 44811000 */  mtc1       $at, $f2
/* F5F48 8004CA38 3C013F80 */  lui        $at, 0x3f80
/* F5F4C 8004CA3C 44812000 */  mtc1       $at, $f4
/* F5F50 8004CA40 46020000 */  add.s      $f0, $f0, $f2
/* F5F54 8004CA44 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F5F58 8004CA48 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F5F5C 8004CA4C 3C038007 */  lui        $v1, %hi(D_8006C104)
/* F5F60 8004CA50 8463C104 */  lh         $v1, %lo(D_8006C104)($v1)
/* F5F64 8004CA54 24420001 */  addiu      $v0, $v0, 1
/* F5F68 8004CA58 46001080 */  add.s      $f2, $f2, $f0
/* F5F6C 8004CA5C 3C018007 */  lui        $at, %hi(D_8006C106)
/* F5F70 8004CA60 A422C106 */  sh         $v0, %lo(D_8006C106)($at)
/* F5F74 8004CA64 28620009 */  slti       $v0, $v1, 9
/* F5F78 8004CA68 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F5F7C 8004CA6C E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* F5F80 8004CA70 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F5F84 8004CA74 E422C0E4 */  swc1       $f2, %lo(D_8006C0E4)($at)
/* F5F88 8004CA78 10400045 */  beqz       $v0, .L8004CB90
/* F5F8C 8004CA7C 00031040 */   sll       $v0, $v1, 1
/* F5F90 8004CA80 00431021 */  addu       $v0, $v0, $v1
/* F5F94 8004CA84 00021040 */  sll        $v0, $v0, 1
/* F5F98 8004CA88 27B000A0 */  addiu      $s0, $sp, 0xa0
/* F5F9C 8004CA8C 02021021 */  addu       $v0, $s0, $v0
/* F5FA0 8004CA90 0C00D8C1 */  jal        func_80036304_DF814
/* F5FA4 8004CA94 94440004 */   lhu       $a0, 4($v0)
/* F5FA8 8004CA98 3C038007 */  lui        $v1, %hi(D_8006C104)
/* F5FAC 8004CA9C 8463C104 */  lh         $v1, %lo(D_8006C104)($v1)
/* F5FB0 8004CAA0 00408821 */  addu       $s1, $v0, $zero
/* F5FB4 8004CAA4 00031040 */  sll        $v0, $v1, 1
/* F5FB8 8004CAA8 00431021 */  addu       $v0, $v0, $v1
/* F5FBC 8004CAAC 00021040 */  sll        $v0, $v0, 1
/* F5FC0 8004CAB0 02021021 */  addu       $v0, $s0, $v0
/* F5FC4 8004CAB4 94450000 */  lhu        $a1, ($v0)
/* F5FC8 8004CAB8 8E24000C */  lw         $a0, 0xc($s1)
/* F5FCC 8004CABC 94460002 */  lhu        $a2, 2($v0)
/* F5FD0 8004CAC0 00052C80 */  sll        $a1, $a1, 0x12
/* F5FD4 8004CAC4 00052C03 */  sra        $a1, $a1, 0x10
/* F5FD8 8004CAC8 00063480 */  sll        $a2, $a2, 0x12
/* F5FDC 8004CACC 0C028D89 */  jal        func_800A3624
/* F5FE0 8004CAD0 00063403 */   sra       $a2, $a2, 0x10
/* F5FE4 8004CAD4 8E24000C */  lw         $a0, 0xc($s1)
/* F5FE8 8004CAD8 0C028A40 */  jal        func_800A2900
/* F5FEC 8004CADC 00000000 */   nop
/* F5FF0 8004CAE0 3C038007 */  lui        $v1, %hi(D_8006C104)
/* F5FF4 8004CAE4 8463C104 */  lh         $v1, %lo(D_8006C104)($v1)
/* F5FF8 8004CAE8 00031040 */  sll        $v0, $v1, 1
/* F5FFC 8004CAEC 00431021 */  addu       $v0, $v0, $v1
/* F6000 8004CAF0 00021040 */  sll        $v0, $v0, 1
/* F6004 8004CAF4 02021021 */  addu       $v0, $s0, $v0
/* F6008 8004CAF8 94440004 */  lhu        $a0, 4($v0)
/* F600C 8004CAFC 24840006 */  addiu      $a0, $a0, 6
/* F6010 8004CB00 0C00D8C1 */  jal        func_80036304_DF814
/* F6014 8004CB04 3084FFFF */   andi      $a0, $a0, 0xffff
/* F6018 8004CB08 3C038007 */  lui        $v1, %hi(D_8006C104)
/* F601C 8004CB0C 8463C104 */  lh         $v1, %lo(D_8006C104)($v1)
/* F6020 8004CB10 00408821 */  addu       $s1, $v0, $zero
/* F6024 8004CB14 00031040 */  sll        $v0, $v1, 1
/* F6028 8004CB18 00431021 */  addu       $v0, $v0, $v1
/* F602C 8004CB1C 00021040 */  sll        $v0, $v0, 1
/* F6030 8004CB20 02028021 */  addu       $s0, $s0, $v0
/* F6034 8004CB24 96050000 */  lhu        $a1, ($s0)
/* F6038 8004CB28 8E24000C */  lw         $a0, 0xc($s1)
/* F603C 8004CB2C 96060002 */  lhu        $a2, 2($s0)
/* F6040 8004CB30 00052C80 */  sll        $a1, $a1, 0x12
/* F6044 8004CB34 00052C03 */  sra        $a1, $a1, 0x10
/* F6048 8004CB38 00063480 */  sll        $a2, $a2, 0x12
/* F604C 8004CB3C 0C028D89 */  jal        func_800A3624
/* F6050 8004CB40 00063403 */   sra       $a2, $a2, 0x10
/* F6054 8004CB44 8E24000C */  lw         $a0, 0xc($s1)
/* F6058 8004CB48 0C028A40 */  jal        func_800A2900
/* F605C 8004CB4C 00000000 */   nop
/* F6060 8004CB50 240400A0 */  addiu      $a0, $zero, 0xa0
/* F6064 8004CB54 240500A0 */  addiu      $a1, $zero, 0xa0
/* F6068 8004CB58 240600A0 */  addiu      $a2, $zero, 0xa0
/* F606C 8004CB5C 3C0141A0 */  lui        $at, 0x41a0
/* F6070 8004CB60 44811000 */  mtc1       $at, $f2
/* F6074 8004CB64 3C018007 */  lui        $at, %hi(D_8006C564)
/* F6078 8004CB68 C420C564 */  lwc1       $f0, %lo(D_8006C564)($at)
/* F607C 8004CB6C 46800020 */  cvt.s.w    $f0, $f0
/* F6080 8004CB70 46001081 */  sub.s      $f2, $f2, $f0
/* F6084 8004CB74 240200FF */  addiu      $v0, $zero, 0xff
/* F6088 8004CB78 AFA20010 */  sw         $v0, 0x10($sp)
/* F608C 8004CB7C AFA20014 */  sw         $v0, 0x14($sp)
/* F6090 8004CB80 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F6094 8004CB84 E422D0D4 */  swc1       $f2, %lo(D_8016D0D4)($at)
/* F6098 8004CB88 080132EF */  j          .L8004CBBC
/* F609C 8004CB8C 240700FF */   addiu     $a3, $zero, 0xff
.L8004CB90:
/* F60A0 8004CB90 24040090 */  addiu      $a0, $zero, 0x90
/* F60A4 8004CB94 24050090 */  addiu      $a1, $zero, 0x90
/* F60A8 8004CB98 24060090 */  addiu      $a2, $zero, 0x90
/* F60AC 8004CB9C 3C014160 */  lui        $at, 0x4160
/* F60B0 8004CBA0 44810000 */  mtc1       $at, $f0
/* F60B4 8004CBA4 24070098 */  addiu      $a3, $zero, 0x98
/* F60B8 8004CBA8 24020098 */  addiu      $v0, $zero, 0x98
/* F60BC 8004CBAC AFA20010 */  sw         $v0, 0x10($sp)
/* F60C0 8004CBB0 AFA20014 */  sw         $v0, 0x14($sp)
/* F60C4 8004CBB4 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F60C8 8004CBB8 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
.L8004CBBC:
/* F60CC 8004CBBC 0C00E34F */  jal        func_80038D3C_E224C
/* F60D0 8004CBC0 00000000 */   nop
/* F60D4 8004CBC4 3C028007 */  lui        $v0, %hi(D_8006C104)
/* F60D8 8004CBC8 9442C104 */  lhu        $v0, %lo(D_8006C104)($v0)
/* F60DC 8004CBCC 00021400 */  sll        $v0, $v0, 0x10
/* F60E0 8004CBD0 00022403 */  sra        $a0, $v0, 0x10
/* F60E4 8004CBD4 18800024 */  blez       $a0, .L8004CC68
/* F60E8 8004CBD8 000217C2 */   srl       $v0, $v0, 0x1f
/* F60EC 8004CBDC 00821021 */  addu       $v0, $a0, $v0
/* F60F0 8004CBE0 00021043 */  sra        $v0, $v0, 1
/* F60F4 8004CBE4 00021040 */  sll        $v0, $v0, 1
/* F60F8 8004CBE8 00821023 */  subu       $v0, $a0, $v0
/* F60FC 8004CBEC 00021400 */  sll        $v0, $v0, 0x10
/* F6100 8004CBF0 00021403 */  sra        $v0, $v0, 0x10
/* F6104 8004CBF4 24030001 */  addiu      $v1, $zero, 1
/* F6108 8004CBF8 1443001B */  bne        $v0, $v1, .L8004CC68
/* F610C 8004CBFC 2483FFFF */   addiu     $v1, $a0, -1
/* F6110 8004CC00 00031040 */  sll        $v0, $v1, 1
/* F6114 8004CC04 00431021 */  addu       $v0, $v0, $v1
/* F6118 8004CC08 00021040 */  sll        $v0, $v0, 1
/* F611C 8004CC0C 27B000A0 */  addiu      $s0, $sp, 0xa0
/* F6120 8004CC10 02021021 */  addu       $v0, $s0, $v0
/* F6124 8004CC14 0C00D8C1 */  jal        func_80036304_DF814
/* F6128 8004CC18 94440004 */   lhu       $a0, 4($v0)
/* F612C 8004CC1C 3C038007 */  lui        $v1, %hi(D_8006C104)
/* F6130 8004CC20 8463C104 */  lh         $v1, %lo(D_8006C104)($v1)
/* F6134 8004CC24 00408821 */  addu       $s1, $v0, $zero
/* F6138 8004CC28 2463FFFF */  addiu      $v1, $v1, -1
/* F613C 8004CC2C 00031040 */  sll        $v0, $v1, 1
/* F6140 8004CC30 00431021 */  addu       $v0, $v0, $v1
/* F6144 8004CC34 00021040 */  sll        $v0, $v0, 1
/* F6148 8004CC38 02028021 */  addu       $s0, $s0, $v0
/* F614C 8004CC3C 96050000 */  lhu        $a1, ($s0)
/* F6150 8004CC40 8E24000C */  lw         $a0, 0xc($s1)
/* F6154 8004CC44 96060002 */  lhu        $a2, 2($s0)
/* F6158 8004CC48 00052C80 */  sll        $a1, $a1, 0x12
/* F615C 8004CC4C 00052C03 */  sra        $a1, $a1, 0x10
/* F6160 8004CC50 00063480 */  sll        $a2, $a2, 0x12
/* F6164 8004CC54 0C028D89 */  jal        func_800A3624
/* F6168 8004CC58 00063403 */   sra       $a2, $a2, 0x10
/* F616C 8004CC5C 8E24000C */  lw         $a0, 0xc($s1)
/* F6170 8004CC60 0C028A40 */  jal        func_800A2900
/* F6174 8004CC64 00000000 */   nop
.L8004CC68:
/* F6178 8004CC68 3C028007 */  lui        $v0, %hi(D_8006C104)
/* F617C 8004CC6C 8442C104 */  lh         $v0, %lo(D_8006C104)($v0)
/* F6180 8004CC70 00401821 */  addu       $v1, $v0, $zero
/* F6184 8004CC74 2842000A */  slti       $v0, $v0, 0xa
/* F6188 8004CC78 10400003 */  beqz       $v0, .L8004CC88
/* F618C 8004CC7C 24620001 */   addiu     $v0, $v1, 1
/* F6190 8004CC80 3C018007 */  lui        $at, %hi(D_8006C104)
/* F6194 8004CC84 A422C104 */  sh         $v0, %lo(D_8006C104)($at)
.L8004CC88:
/* F6198 8004CC88 0C00E032 */  jal        func_800380C8_E15D8
/* F619C 8004CC8C 2404001E */   addiu     $a0, $zero, 0x1e
/* F61A0 8004CC90 0C00DFD6 */  jal        func_80037F58_E1468
/* F61A4 8004CC94 2404001F */   addiu     $a0, $zero, 0x1f
/* F61A8 8004CC98 3C01C1F0 */  lui        $at, 0xc1f0
/* F61AC 8004CC9C 44810000 */  mtc1       $at, $f0
/* F61B0 8004CCA0 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F61B4 8004CCA4 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F61B8 8004CCA8 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F61BC 8004CCAC C424C0E8 */  lwc1       $f4, %lo(D_8006C0E8)($at)
/* F61C0 8004CCB0 00408021 */  addu       $s0, $v0, $zero
/* F61C4 8004CCB4 2404001F */  addiu      $a0, $zero, 0x1f
/* F61C8 8004CCB8 E6000010 */  swc1       $f0, 0x10($s0)
/* F61CC 8004CCBC E6020014 */  swc1       $f2, 0x14($s0)
/* F61D0 8004CCC0 0C00E032 */  jal        func_800380C8_E15D8
/* F61D4 8004CCC4 E6040018 */   swc1      $f4, 0x18($s0)
/* F61D8 8004CCC8 0C00DFD6 */  jal        func_80037F58_E1468
/* F61DC 8004CCCC 24040020 */   addiu     $a0, $zero, 0x20
/* F61E0 8004CCD0 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F61E4 8004CCD4 C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F61E8 8004CCD8 3C0141A4 */  lui        $at, 0x41a4
/* F61EC 8004CCDC 4481A000 */  mtc1       $at, $f20
/* F61F0 8004CCE0 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F61F4 8004CCE4 C420C0E8 */  lwc1       $f0, %lo(D_8006C0E8)($at)
/* F61F8 8004CCE8 46141081 */  sub.s      $f2, $f2, $f20
/* F61FC 8004CCEC 3C0140D3 */  lui        $at, 0x40d3
/* F6200 8004CCF0 34213333 */  ori        $at, $at, 0x3333
/* F6204 8004CCF4 4481B000 */  mtc1       $at, $f22
/* F6208 8004CCF8 00408021 */  addu       $s0, $v0, $zero
/* F620C 8004CCFC 3C013D4C */  lui        $at, 0x3d4c
/* F6210 8004CD00 3421CCCD */  ori        $at, $at, 0xcccd
/* F6214 8004CD04 44812000 */  mtc1       $at, $f4
/* F6218 8004CD08 46160001 */  sub.s      $f0, $f0, $f22
/* F621C 8004CD0C 24040020 */  addiu      $a0, $zero, 0x20
/* F6220 8004CD10 E6040010 */  swc1       $f4, 0x10($s0)
/* F6224 8004CD14 E6020014 */  swc1       $f2, 0x14($s0)
/* F6228 8004CD18 0C00E032 */  jal        func_800380C8_E15D8
/* F622C 8004CD1C E6000018 */   swc1      $f0, 0x18($s0)
/* F6230 8004CD20 0C00DFD6 */  jal        func_80037F58_E1468
/* F6234 8004CD24 24040021 */   addiu     $a0, $zero, 0x21
/* F6238 8004CD28 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F623C 8004CD2C C422C0E4 */  lwc1       $f2, %lo(D_8006C0E4)($at)
/* F6240 8004CD30 46141081 */  sub.s      $f2, $f2, $f20
/* F6244 8004CD34 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F6248 8004CD38 C420C0E8 */  lwc1       $f0, %lo(D_8006C0E8)($at)
/* F624C 8004CD3C 00408021 */  addu       $s0, $v0, $zero
/* F6250 8004CD40 3C01C0B4 */  lui        $at, 0xc0b4
/* F6254 8004CD44 3421CCCD */  ori        $at, $at, 0xcccd
/* F6258 8004CD48 44812000 */  mtc1       $at, $f4
/* F625C 8004CD4C 46160001 */  sub.s      $f0, $f0, $f22
/* F6260 8004CD50 24040021 */  addiu      $a0, $zero, 0x21
/* F6264 8004CD54 E6040010 */  swc1       $f4, 0x10($s0)
/* F6268 8004CD58 E6020014 */  swc1       $f2, 0x14($s0)
/* F626C 8004CD5C 0C00E032 */  jal        func_800380C8_E15D8
/* F6270 8004CD60 E6000018 */   swc1      $f0, 0x18($s0)
/* F6274 8004CD64 0C00DFD6 */  jal        func_80037F58_E1468
/* F6278 8004CD68 24040022 */   addiu     $a0, $zero, 0x22
/* F627C 8004CD6C 3C018007 */  lui        $at, %hi(D_8006C0E4)
/* F6280 8004CD70 C424C0E4 */  lwc1       $f4, %lo(D_8006C0E4)($at)
/* F6284 8004CD74 3C014104 */  lui        $at, 0x4104
/* F6288 8004CD78 3421CCCD */  ori        $at, $at, 0xcccd
/* F628C 8004CD7C 44810000 */  mtc1       $at, $f0
/* F6290 8004CD80 3C018007 */  lui        $at, %hi(D_8006C0E8)
/* F6294 8004CD84 C422C0E8 */  lwc1       $f2, %lo(D_8006C0E8)($at)
/* F6298 8004CD88 46002101 */  sub.s      $f4, $f4, $f0
/* F629C 8004CD8C 3C014096 */  lui        $at, 0x4096
/* F62A0 8004CD90 34216666 */  ori        $at, $at, 0x6666
/* F62A4 8004CD94 44810000 */  mtc1       $at, $f0
/* F62A8 8004CD98 00408021 */  addu       $s0, $v0, $zero
/* F62AC 8004CD9C 3C01C033 */  lui        $at, 0xc033
/* F62B0 8004CDA0 34213333 */  ori        $at, $at, 0x3333
/* F62B4 8004CDA4 44813000 */  mtc1       $at, $f6
/* F62B8 8004CDA8 46001081 */  sub.s      $f2, $f2, $f0
/* F62BC 8004CDAC 24040022 */  addiu      $a0, $zero, 0x22
/* F62C0 8004CDB0 E6060010 */  swc1       $f6, 0x10($s0)
/* F62C4 8004CDB4 E6040014 */  swc1       $f4, 0x14($s0)
/* F62C8 8004CDB8 0C00E032 */  jal        func_800380C8_E15D8
/* F62CC 8004CDBC E6020018 */   swc1      $f2, 0x18($s0)
/* F62D0 8004CDC0 0C00E032 */  jal        func_800380C8_E15D8
/* F62D4 8004CDC4 24040023 */   addiu     $a0, $zero, 0x23
/* F62D8 8004CDC8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F62DC 8004CDCC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F62E0 8004CDD0 2403003C */  addiu      $v1, $zero, 0x3c
/* F62E4 8004CDD4 0062001A */  div        $zero, $v1, $v0
/* F62E8 8004CDD8 14400002 */  bnez       $v0, .L8004CDE4
/* F62EC 8004CDDC 00000000 */   nop
/* F62F0 8004CDE0 0007000D */  break      7
.L8004CDE4:
/* F62F4 8004CDE4 2401FFFF */   addiu     $at, $zero, -1
/* F62F8 8004CDE8 14410004 */  bne        $v0, $at, .L8004CDFC
/* F62FC 8004CDEC 3C018000 */   lui       $at, 0x8000
/* F6300 8004CDF0 14610002 */  bne        $v1, $at, .L8004CDFC
/* F6304 8004CDF4 00000000 */   nop
/* F6308 8004CDF8 0006000D */  break      6
.L8004CDFC:
/* F630C 8004CDFC 00001812 */   mflo      $v1
/* F6310 8004CE00 3C01C149 */  lui        $at, 0xc149
/* F6314 8004CE04 3421C28F */  ori        $at, $at, 0xc28f
/* F6318 8004CE08 44812000 */  mtc1       $at, $f4
/* F631C 8004CE0C 3C018007 */  lui        $at, %hi(D_8006C0F0)
/* F6320 8004CE10 C422C0F0 */  lwc1       $f2, %lo(D_8006C0F0)($at)
/* F6324 8004CE14 3C013CF5 */  lui        $at, 0x3cf5
/* F6328 8004CE18 3421C28F */  ori        $at, $at, 0xc28f
/* F632C 8004CE1C 44810000 */  mtc1       $at, $f0
/* F6330 8004CE20 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F6334 8004CE24 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F6338 8004CE28 46001001 */  sub.s      $f0, $f2, $f0
/* F633C 8004CE2C 3C018015 */  lui        $at, %hi(D_8014A084)
/* F6340 8004CE30 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F6344 8004CE34 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F6348 8004CE38 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* F634C 8004CE3C 3C018015 */  lui        $at, %hi(D_8014A080)
/* F6350 8004CE40 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* F6354 8004CE44 3C018007 */  lui        $at, %hi(D_8006C0F0)
/* F6358 8004CE48 E420C0F0 */  swc1       $f0, %lo(D_8006C0F0)($at)
/* F635C 8004CE4C 144300A2 */  bne        $v0, $v1, .L8004D0D8
/* F6360 8004CE50 00001021 */   addu      $v0, $zero, $zero
/* F6364 8004CE54 24020017 */  addiu      $v0, $zero, 0x17
/* F6368 8004CE58 08013435 */  j          .L8004D0D4
/* F636C 8004CE5C A642001C */   sh        $v0, 0x1c($s2)
.L8004CE60:
/* F6370 8004CE60 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F6374 8004CE64 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F6378 8004CE68 14400004 */  bnez       $v0, .L8004CE7C
/* F637C 8004CE6C 24020018 */   addiu     $v0, $zero, 0x18
/* F6380 8004CE70 0C011B9A */  jal        func_80046E68_F0378
/* F6384 8004CE74 00000000 */   nop
/* F6388 8004CE78 24020018 */  addiu      $v0, $zero, 0x18
.L8004CE7C:
/* F638C 8004CE7C A642001C */  sh         $v0, 0x1c($s2)
.L8004CE80:
/* F6390 8004CE80 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F6394 8004CE84 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F6398 8004CE88 2402003C */  addiu      $v0, $zero, 0x3c
/* F639C 8004CE8C 0043001A */  div        $zero, $v0, $v1
/* F63A0 8004CE90 14600002 */  bnez       $v1, .L8004CE9C
/* F63A4 8004CE94 00000000 */   nop
/* F63A8 8004CE98 0007000D */  break      7
.L8004CE9C:
/* F63AC 8004CE9C 2401FFFF */   addiu     $at, $zero, -1
/* F63B0 8004CEA0 14610004 */  bne        $v1, $at, .L8004CEB4
/* F63B4 8004CEA4 3C018000 */   lui       $at, 0x8000
/* F63B8 8004CEA8 14410002 */  bne        $v0, $at, .L8004CEB4
/* F63BC 8004CEAC 00000000 */   nop
/* F63C0 8004CEB0 0006000D */  break      6
.L8004CEB4:
/* F63C4 8004CEB4 00001012 */   mflo      $v0
/* F63C8 8004CEB8 3C013E4C */  lui        $at, 0x3e4c
/* F63CC 8004CEBC 3421CCCD */  ori        $at, $at, 0xcccd
/* F63D0 8004CEC0 44811000 */  mtc1       $at, $f2
/* F63D4 8004CEC4 44820000 */  mtc1       $v0, $f0
/* F63D8 8004CEC8 00000000 */  nop
/* F63DC 8004CECC 46800020 */  cvt.s.w    $f0, $f0
/* F63E0 8004CED0 46020002 */  mul.s      $f0, $f0, $f2
/* F63E4 8004CED4 3C018007 */  lui        $at, %hi(D_8006C564)
/* F63E8 8004CED8 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F63EC 8004CEDC 468010A0 */  cvt.s.w    $f2, $f2
/* F63F0 8004CEE0 46001032 */  c.eq.s     $f2, $f0
/* F63F4 8004CEE4 00000000 */  nop
/* F63F8 8004CEE8 45000003 */  bc1f       .L8004CEF8
/* F63FC 8004CEEC 00000000 */   nop
/* F6400 8004CEF0 0C026DD5 */  jal        func_8009B754
/* F6404 8004CEF4 2404004D */   addiu     $a0, $zero, 0x4d
.L8004CEF8:
/* F6408 8004CEF8 0C00DFD6 */  jal        func_80037F58_E1468
/* F640C 8004CEFC 2404001F */   addiu     $a0, $zero, 0x1f
/* F6410 8004CF00 00408021 */  addu       $s0, $v0, $zero
/* F6414 8004CF04 C6000014 */  lwc1       $f0, 0x14($s0)
/* F6418 8004CF08 3C014160 */  lui        $at, 0x4160
/* F641C 8004CF0C 44811000 */  mtc1       $at, $f2
/* F6420 8004CF10 3C018017 */  lui        $at, %hi(D_8016E568)
/* F6424 8004CF14 C424E568 */  lwc1       $f4, %lo(D_8016E568)($at)
/* F6428 8004CF18 46020001 */  sub.s      $f0, $f0, $f2
/* F642C 8004CF1C 3C013F80 */  lui        $at, 0x3f80
/* F6430 8004CF20 44813000 */  mtc1       $at, $f6
/* F6434 8004CF24 3C014000 */  lui        $at, 0x4000
/* F6438 8004CF28 44814000 */  mtc1       $at, $f8
/* F643C 8004CF2C 46062100 */  add.s      $f4, $f4, $f6
/* F6440 8004CF30 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F6444 8004CF34 C422D0D0 */  lwc1       $f2, %lo(D_8016D0D0)($at)
/* F6448 8004CF38 46081081 */  sub.s      $f2, $f2, $f8
/* F644C 8004CF3C E6000014 */  swc1       $f0, 0x14($s0)
/* F6450 8004CF40 C6060014 */  lwc1       $f6, 0x14($s0)
/* F6454 8004CF44 3C01C28C */  lui        $at, 0xc28c
/* F6458 8004CF48 44810000 */  mtc1       $at, $f0
/* F645C 8004CF4C 00000000 */  nop
/* F6460 8004CF50 4600303C */  c.lt.s     $f6, $f0
/* F6464 8004CF54 3C018017 */  lui        $at, %hi(D_8016E568)
/* F6468 8004CF58 E424E568 */  swc1       $f4, %lo(D_8016E568)($at)
/* F646C 8004CF5C 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F6470 8004CF60 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* F6474 8004CF64 4500000D */  bc1f       .L8004CF9C
/* F6478 8004CF68 00000000 */   nop
/* F647C 8004CF6C 3C01428C */  lui        $at, 0x428c
/* F6480 8004CF70 44810000 */  mtc1       $at, $f0
/* F6484 8004CF74 3C01C0A0 */  lui        $at, 0xc0a0
/* F6488 8004CF78 44811000 */  mtc1       $at, $f2
/* F648C 8004CF7C 3C0140A0 */  lui        $at, 0x40a0
/* F6490 8004CF80 44812000 */  mtc1       $at, $f4
/* F6494 8004CF84 46003000 */  add.s      $f0, $f6, $f0
/* F6498 8004CF88 3C018017 */  lui        $at, %hi(D_8016E568)
/* F649C 8004CF8C E422E568 */  swc1       $f2, %lo(D_8016E568)($at)
/* F64A0 8004CF90 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F64A4 8004CF94 E424D0D0 */  swc1       $f4, %lo(D_8016D0D0)($at)
/* F64A8 8004CF98 E6000014 */  swc1       $f0, 0x14($s0)
.L8004CF9C:
/* F64AC 8004CF9C 0C00E032 */  jal        func_800380C8_E15D8
/* F64B0 8004CFA0 2404001F */   addiu     $a0, $zero, 0x1f
/* F64B4 8004CFA4 0C00DFD6 */  jal        func_80037F58_E1468
/* F64B8 8004CFA8 24040022 */   addiu     $a0, $zero, 0x22
/* F64BC 8004CFAC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F64C0 8004CFB0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F64C4 8004CFB4 30630001 */  andi       $v1, $v1, 1
/* F64C8 8004CFB8 10600008 */  beqz       $v1, .L8004CFDC
/* F64CC 8004CFBC 00408021 */   addu      $s0, $v0, $zero
/* F64D0 8004CFC0 C6000010 */  lwc1       $f0, 0x10($s0)
/* F64D4 8004CFC4 3C013DCC */  lui        $at, 0x3dcc
/* F64D8 8004CFC8 3421CCCD */  ori        $at, $at, 0xcccd
/* F64DC 8004CFCC 44811000 */  mtc1       $at, $f2
/* F64E0 8004CFD0 00000000 */  nop
/* F64E4 8004CFD4 080133FD */  j          .L8004CFF4
/* F64E8 8004CFD8 46020000 */   add.s     $f0, $f0, $f2
.L8004CFDC:
/* F64EC 8004CFDC C6000010 */  lwc1       $f0, 0x10($s0)
/* F64F0 8004CFE0 3C013DCC */  lui        $at, 0x3dcc
/* F64F4 8004CFE4 3421CCCD */  ori        $at, $at, 0xcccd
/* F64F8 8004CFE8 44811000 */  mtc1       $at, $f2
/* F64FC 8004CFEC 00000000 */  nop
/* F6500 8004CFF0 46020001 */  sub.s      $f0, $f0, $f2
.L8004CFF4:
/* F6504 8004CFF4 E6000010 */  swc1       $f0, 0x10($s0)
/* F6508 8004CFF8 C6000014 */  lwc1       $f0, 0x14($s0)
/* F650C 8004CFFC 3C013CA3 */  lui        $at, 0x3ca3
/* F6510 8004D000 3421D70A */  ori        $at, $at, 0xd70a
/* F6514 8004D004 44811000 */  mtc1       $at, $f2
/* F6518 8004D008 00000000 */  nop
/* F651C 8004D00C 46020000 */  add.s      $f0, $f0, $f2
/* F6520 8004D010 24040022 */  addiu      $a0, $zero, 0x22
/* F6524 8004D014 0C00E032 */  jal        func_800380C8_E15D8
/* F6528 8004D018 E6000014 */   swc1      $f0, 0x14($s0)
/* F652C 8004D01C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F6530 8004D020 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F6534 8004D024 2402003C */  addiu      $v0, $zero, 0x3c
/* F6538 8004D028 0043001A */  div        $zero, $v0, $v1
/* F653C 8004D02C 14600002 */  bnez       $v1, .L8004D038
/* F6540 8004D030 00000000 */   nop
/* F6544 8004D034 0007000D */  break      7
.L8004D038:
/* F6548 8004D038 2401FFFF */   addiu     $at, $zero, -1
/* F654C 8004D03C 14610004 */  bne        $v1, $at, .L8004D050
/* F6550 8004D040 3C018000 */   lui       $at, 0x8000
/* F6554 8004D044 14410002 */  bne        $v0, $at, .L8004D050
/* F6558 8004D048 00000000 */   nop
/* F655C 8004D04C 0006000D */  break      6
.L8004D050:
/* F6560 8004D050 00001012 */   mflo      $v0
/* F6564 8004D054 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F6568 8004D058 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F656C 8004D05C 00021080 */  sll        $v0, $v0, 2
/* F6570 8004D060 1462001D */  bne        $v1, $v0, .L8004D0D8
/* F6574 8004D064 00001021 */   addu      $v0, $zero, $zero
/* F6578 8004D068 24020019 */  addiu      $v0, $zero, 0x19
/* F657C 8004D06C 08013435 */  j          .L8004D0D4
/* F6580 8004D070 A642001C */   sh        $v0, 0x1c($s2)
.L8004D074:
/* F6584 8004D074 0C026E5D */  jal        func_8009B974
/* F6588 8004D078 24040001 */   addiu     $a0, $zero, 1
/* F658C 8004D07C 0C00E339 */  jal        func_80038CE4_E21F4
/* F6590 8004D080 00000000 */   nop
/* F6594 8004D084 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F6598 8004D088 A642001C */  sh         $v0, 0x1c($s2)
.L8004D08C:
/* F659C 8004D08C 0C02A5C1 */  jal        func_800A9704
/* F65A0 8004D090 24040001 */   addiu     $a0, $zero, 1
/* F65A4 8004D094 3C048007 */  lui        $a0, %hi(D_8006C0D0)
/* F65A8 8004D098 0C029393 */  jal        func_800A4E4C
/* F65AC 8004D09C 8C84C0D0 */   lw        $a0, %lo(D_8006C0D0)($a0)
/* F65B0 8004D0A0 3C048007 */  lui        $a0, %hi(D_8006C0D4)
/* F65B4 8004D0A4 0C029393 */  jal        func_800A4E4C
/* F65B8 8004D0A8 8C84C0D4 */   lw        $a0, %lo(D_8006C0D4)($a0)
/* F65BC 8004D0AC 3C048007 */  lui        $a0, %hi(D_8006C0D8)
/* F65C0 8004D0B0 0C029393 */  jal        func_800A4E4C
/* F65C4 8004D0B4 8C84C0D8 */   lw        $a0, %lo(D_8006C0D8)($a0)
/* F65C8 8004D0B8 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* F65CC 8004D0BC 00000000 */   nop
/* F65D0 8004D0C0 24030001 */  addiu      $v1, $zero, 1
/* F65D4 8004D0C4 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* F65D8 8004D0C8 A023C3C8 */  sb         $v1, %lo(D_8006C3C8)($at)
/* F65DC 8004D0CC 08013436 */  j          .L8004D0D8
/* F65E0 8004D0D0 24020001 */   addiu     $v0, $zero, 1
.L8004D0D4:
/* F65E4 8004D0D4 00001021 */  addu       $v0, $zero, $zero
.L8004D0D8:
/* F65E8 8004D0D8 8FBF010C */  lw         $ra, 0x10c($sp)
/* F65EC 8004D0DC 8FB20108 */  lw         $s2, 0x108($sp)
/* F65F0 8004D0E0 8FB10104 */  lw         $s1, 0x104($sp)
/* F65F4 8004D0E4 8FB00100 */  lw         $s0, 0x100($sp)
/* F65F8 8004D0E8 D7B60118 */  ldc1       $f22, 0x118($sp)
/* F65FC 8004D0EC D7B40110 */  ldc1       $f20, 0x110($sp)
/* F6600 8004D0F0 03E00008 */  jr         $ra
/* F6604 8004D0F4 27BD0120 */   addiu     $sp, $sp, 0x120

glabel func_8004D0F8_F6608
/* F6608 8004D0F8 3C028007 */  lui        $v0, %hi(D_800691C4)
/* F660C 8004D0FC 904291C4 */  lbu        $v0, %lo(D_800691C4)($v0)
/* F6610 8004D100 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6614 8004D104 1040000D */  beqz       $v0, .L8004D13C
/* F6618 8004D108 AFBF0010 */   sw        $ra, 0x10($sp)
/* F661C 8004D10C 3C048005 */  lui        $a0, %hi(func_8004A900_F3E10)
/* F6620 8004D110 2484A900 */  addiu      $a0, $a0, %lo(func_8004A900_F3E10)
/* F6624 8004D114 00002821 */  addu       $a1, $zero, $zero
/* F6628 8004D118 2406012C */  addiu      $a2, $zero, 0x12c
/* F662C 8004D11C 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* F6630 8004D120 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* F6634 8004D124 0C025D06 */  jal        func_80097418
/* F6638 8004D128 00003821 */   addu      $a3, $zero, $zero
/* F663C 8004D12C 0C02A5D2 */  jal        func_800A9748
/* F6640 8004D130 24040001 */   addiu     $a0, $zero, 1
/* F6644 8004D134 3C018007 */  lui        $at, %hi(D_800691C4)
/* F6648 8004D138 A02091C4 */  sb         $zero, %lo(D_800691C4)($at)
.L8004D13C:
/* F664C 8004D13C 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* F6650 8004D140 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* F6654 8004D144 24020001 */  addiu      $v0, $zero, 1
/* F6658 8004D148 14620005 */  bne        $v1, $v0, .L8004D160
/* F665C 8004D14C 00001021 */   addu      $v0, $zero, $zero
/* F6660 8004D150 24020001 */  addiu      $v0, $zero, 1
/* F6664 8004D154 3C018007 */  lui        $at, %hi(D_800691C4)
/* F6668 8004D158 A02291C4 */  sb         $v0, %lo(D_800691C4)($at)
/* F666C 8004D15C 24020001 */  addiu      $v0, $zero, 1
.L8004D160:
/* F6670 8004D160 8FBF0010 */  lw         $ra, 0x10($sp)
/* F6674 8004D164 03E00008 */  jr         $ra
/* F6678 8004D168 27BD0018 */   addiu     $sp, $sp, 0x18
/* F667C 8004D16C 00000000 */  nop