.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003AFC0_18AA00
/* 18AA00 8003AFC0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18AA04 8003AFC4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18AA08 8003AFC8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 18AA0C 8003AFCC AFBF005C */  sw         $ra, 0x5c($sp)
/* 18AA10 8003AFD0 AFB00058 */  sw         $s0, 0x58($sp)
/* 18AA14 8003AFD4 8C50002C */  lw         $s0, 0x2c($v0)
/* 18AA18 8003AFD8 3C058005 */  lui        $a1, %hi(D_80051AD0)
/* 18AA1C 8003AFDC 24A51AD0 */  addiu      $a1, $a1, %lo(D_80051AD0)
/* 18AA20 8003AFE0 88A20000 */  lwl        $v0, ($a1)
/* 18AA24 8003AFE4 98A20003 */  lwr        $v0, 3($a1)
/* 18AA28 8003AFE8 88A30004 */  lwl        $v1, 4($a1)
/* 18AA2C 8003AFEC 98A30007 */  lwr        $v1, 7($a1)
/* 18AA30 8003AFF0 88A40008 */  lwl        $a0, 8($a1)
/* 18AA34 8003AFF4 98A4000B */  lwr        $a0, 0xb($a1)
/* 18AA38 8003AFF8 ABA20018 */  swl        $v0, 0x18($sp)
/* 18AA3C 8003AFFC BBA2001B */  swr        $v0, 0x1b($sp)
/* 18AA40 8003B000 ABA3001C */  swl        $v1, 0x1c($sp)
/* 18AA44 8003B004 BBA3001F */  swr        $v1, 0x1f($sp)
/* 18AA48 8003B008 ABA40020 */  swl        $a0, 0x20($sp)
/* 18AA4C 8003B00C BBA40023 */  swr        $a0, 0x23($sp)
/* 18AA50 8003B010 88A2000C */  lwl        $v0, 0xc($a1)
/* 18AA54 8003B014 98A2000F */  lwr        $v0, 0xf($a1)
/* 18AA58 8003B018 88A30010 */  lwl        $v1, 0x10($a1)
/* 18AA5C 8003B01C 98A30013 */  lwr        $v1, 0x13($a1)
/* 18AA60 8003B020 88A40014 */  lwl        $a0, 0x14($a1)
/* 18AA64 8003B024 98A40017 */  lwr        $a0, 0x17($a1)
/* 18AA68 8003B028 ABA20024 */  swl        $v0, 0x24($sp)
/* 18AA6C 8003B02C BBA20027 */  swr        $v0, 0x27($sp)
/* 18AA70 8003B030 ABA30028 */  swl        $v1, 0x28($sp)
/* 18AA74 8003B034 BBA3002B */  swr        $v1, 0x2b($sp)
/* 18AA78 8003B038 ABA4002C */  swl        $a0, 0x2c($sp)
/* 18AA7C 8003B03C BBA4002F */  swr        $a0, 0x2f($sp)
/* 18AA80 8003B040 88A20018 */  lwl        $v0, 0x18($a1)
/* 18AA84 8003B044 98A2001B */  lwr        $v0, 0x1b($a1)
/* 18AA88 8003B048 80A3001C */  lb         $v1, 0x1c($a1)
/* 18AA8C 8003B04C 80A4001D */  lb         $a0, 0x1d($a1)
/* 18AA90 8003B050 ABA20030 */  swl        $v0, 0x30($sp)
/* 18AA94 8003B054 BBA20033 */  swr        $v0, 0x33($sp)
/* 18AA98 8003B058 A3A30034 */  sb         $v1, 0x34($sp)
/* 18AA9C 8003B05C A3A40035 */  sb         $a0, 0x35($sp)
/* 18AAA0 8003B060 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18AAA4 8003B064 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18AAA8 8003B068 2402001E */  addiu      $v0, $zero, 0x1e
/* 18AAAC 8003B06C A7A20048 */  sh         $v0, 0x48($sp)
/* 18AAB0 8003B070 2402001E */  addiu      $v0, $zero, 0x1e
/* 18AAB4 8003B074 A3A2004A */  sb         $v0, 0x4a($sp)
/* 18AAB8 8003B078 24020003 */  addiu      $v0, $zero, 3
/* 18AABC 8003B07C A3A2004B */  sb         $v0, 0x4b($sp)
/* 18AAC0 8003B080 27A20018 */  addiu      $v0, $sp, 0x18
/* 18AAC4 8003B084 A3A0004C */  sb         $zero, 0x4c($sp)
/* 18AAC8 8003B088 A3A0004D */  sb         $zero, 0x4d($sp)
/* 18AACC 8003B08C AFA20050 */  sw         $v0, 0x50($sp)
/* 18AAD0 8003B090 8FA20048 */  lw         $v0, 0x48($sp)
/* 18AAD4 8003B094 8FA4004C */  lw         $a0, 0x4c($sp)
/* 18AAD8 8003B098 8FA50050 */  lw         $a1, 0x50($sp)
/* 18AADC 8003B09C AFA20038 */  sw         $v0, 0x38($sp)
/* 18AAE0 8003B0A0 AFA4003C */  sw         $a0, 0x3c($sp)
/* 18AAE4 8003B0A4 AFA50040 */  sw         $a1, 0x40($sp)
/* 18AAE8 8003B0A8 14600008 */  bnez       $v1, .L8003B0CC
/* 18AAEC 8003B0AC 00002821 */   addu      $a1, $zero, $zero
/* 18AAF0 8003B0B0 8E030000 */  lw         $v1, ($s0)
/* 18AAF4 8003B0B4 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AAF8 8003B0B8 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 18AAFC 8003B0BC A462001E */  sh         $v0, 0x1e($v1)
/* 18AB00 8003B0C0 8E040000 */  lw         $a0, ($s0)
/* 18AB04 8003B0C4 0C02912A */  jal        func_800A44A8
/* 18AB08 8003B0C8 00003021 */   addu      $a2, $zero, $zero
.L8003B0CC:
/* 18AB0C 8003B0CC 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18AB10 8003B0D0 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18AB14 8003B0D4 2402FFFF */  addiu      $v0, $zero, -1
/* 18AB18 8003B0D8 10620032 */  beq        $v1, $v0, .L8003B1A4
/* 18AB1C 8003B0DC 2402001E */   addiu     $v0, $zero, 0x1e
/* 18AB20 8003B0E0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18AB24 8003B0E4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18AB28 8003B0E8 14620007 */  bne        $v1, $v0, .L8003B108
/* 18AB2C 8003B0EC 24020064 */   addiu     $v0, $zero, 0x64
/* 18AB30 8003B0F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 18AB34 8003B0F4 24040100 */  addiu      $a0, $zero, 0x100
/* 18AB38 8003B0F8 24050080 */  addiu      $a1, $zero, 0x80
/* 18AB3C 8003B0FC 24060080 */  addiu      $a2, $zero, 0x80
/* 18AB40 8003B100 0C026E0C */  jal        func_8009B830
/* 18AB44 8003B104 24070001 */   addiu     $a3, $zero, 1
.L8003B108:
/* 18AB48 8003B108 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18AB4C 8003B10C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18AB50 8003B110 14400010 */  bnez       $v0, .L8003B154
/* 18AB54 8003B114 00002821 */   addu      $a1, $zero, $zero
/* 18AB58 8003B118 8E030000 */  lw         $v1, ($s0)
/* 18AB5C 8003B11C 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AB60 8003B120 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 18AB64 8003B124 A462001E */  sh         $v0, 0x1e($v1)
/* 18AB68 8003B128 8E040000 */  lw         $a0, ($s0)
/* 18AB6C 8003B12C 0C02912A */  jal        func_800A44A8
/* 18AB70 8003B130 00003021 */   addu      $a2, $zero, $zero
/* 18AB74 8003B134 8E03000C */  lw         $v1, 0xc($s0)
/* 18AB78 8003B138 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AB7C 8003B13C 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 18AB80 8003B140 A462001E */  sh         $v0, 0x1e($v1)
/* 18AB84 8003B144 8E04000C */  lw         $a0, 0xc($s0)
/* 18AB88 8003B148 00002821 */  addu       $a1, $zero, $zero
/* 18AB8C 8003B14C 0C02912A */  jal        func_800A44A8
/* 18AB90 8003B150 00003021 */   addu      $a2, $zero, $zero
.L8003B154:
/* 18AB94 8003B154 8E03000C */  lw         $v1, 0xc($s0)
/* 18AB98 8003B158 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AB9C 8003B15C 3C078005 */  lui        $a3, %hi(D_80052038)
/* 18ABA0 8003B160 84E72038 */  lh         $a3, %lo(D_80052038)($a3)
/* 18ABA4 8003B164 34420400 */  ori        $v0, $v0, 0x400
/* 18ABA8 8003B168 A462001E */  sh         $v0, 0x1e($v1)
/* 18ABAC 8003B16C 8FA40038 */  lw         $a0, 0x38($sp)
/* 18ABB0 8003B170 8FA5003C */  lw         $a1, 0x3c($sp)
/* 18ABB4 8003B174 0C00D4EF */  jal        func_800353BC_184DFC
/* 18ABB8 8003B178 8FA60040 */   lw        $a2, 0x40($sp)
/* 18ABBC 8003B17C 00401821 */  addu       $v1, $v0, $zero
/* 18ABC0 8003B180 10600008 */  beqz       $v1, .L8003B1A4
/* 18ABC4 8003B184 00031040 */   sll       $v0, $v1, 1
/* 18ABC8 8003B188 00431021 */  addu       $v0, $v0, $v1
/* 18ABCC 8003B18C 00021080 */  sll        $v0, $v0, 2
/* 18ABD0 8003B190 00501021 */  addu       $v0, $v0, $s0
/* 18ABD4 8003B194 8C430000 */  lw         $v1, ($v0)
/* 18ABD8 8003B198 9462001E */  lhu        $v0, 0x1e($v1)
/* 18ABDC 8003B19C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 18ABE0 8003B1A0 A462001E */  sh         $v0, 0x1e($v1)
.L8003B1A4:
/* 18ABE4 8003B1A4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18ABE8 8003B1A8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18ABEC 8003B1AC 240200AA */  addiu      $v0, $zero, 0xaa
/* 18ABF0 8003B1B0 14620003 */  bne        $v1, $v0, .L8003B1C0
/* 18ABF4 8003B1B4 00000000 */   nop
/* 18ABF8 8003B1B8 0C026E5D */  jal        func_8009B974
/* 18ABFC 8003B1BC 24040005 */   addiu     $a0, $zero, 5
.L8003B1C0:
/* 18AC00 8003B1C0 8FBF005C */  lw         $ra, 0x5c($sp)
/* 18AC04 8003B1C4 8FB00058 */  lw         $s0, 0x58($sp)
/* 18AC08 8003B1C8 03E00008 */  jr         $ra
/* 18AC0C 8003B1CC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8003B1D0_18AC10
/* 18AC10 8003B1D0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18AC14 8003B1D4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18AC18 8003B1D8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 18AC1C 8003B1DC AFBF0060 */  sw         $ra, 0x60($sp)
/* 18AC20 8003B1E0 AFB1005C */  sw         $s1, 0x5c($sp)
/* 18AC24 8003B1E4 AFB00058 */  sw         $s0, 0x58($sp)
/* 18AC28 8003B1E8 8C51002C */  lw         $s1, 0x2c($v0)
/* 18AC2C 8003B1EC 3C058005 */  lui        $a1, %hi(D_80051AF0)
/* 18AC30 8003B1F0 24A51AF0 */  addiu      $a1, $a1, %lo(D_80051AF0)
/* 18AC34 8003B1F4 88A20000 */  lwl        $v0, ($a1)
/* 18AC38 8003B1F8 98A20003 */  lwr        $v0, 3($a1)
/* 18AC3C 8003B1FC 88A30004 */  lwl        $v1, 4($a1)
/* 18AC40 8003B200 98A30007 */  lwr        $v1, 7($a1)
/* 18AC44 8003B204 88A40008 */  lwl        $a0, 8($a1)
/* 18AC48 8003B208 98A4000B */  lwr        $a0, 0xb($a1)
/* 18AC4C 8003B20C ABA20018 */  swl        $v0, 0x18($sp)
/* 18AC50 8003B210 BBA2001B */  swr        $v0, 0x1b($sp)
/* 18AC54 8003B214 ABA3001C */  swl        $v1, 0x1c($sp)
/* 18AC58 8003B218 BBA3001F */  swr        $v1, 0x1f($sp)
/* 18AC5C 8003B21C ABA40020 */  swl        $a0, 0x20($sp)
/* 18AC60 8003B220 BBA40023 */  swr        $a0, 0x23($sp)
/* 18AC64 8003B224 88A2000C */  lwl        $v0, 0xc($a1)
/* 18AC68 8003B228 98A2000F */  lwr        $v0, 0xf($a1)
/* 18AC6C 8003B22C 88A30010 */  lwl        $v1, 0x10($a1)
/* 18AC70 8003B230 98A30013 */  lwr        $v1, 0x13($a1)
/* 18AC74 8003B234 88A40014 */  lwl        $a0, 0x14($a1)
/* 18AC78 8003B238 98A40017 */  lwr        $a0, 0x17($a1)
/* 18AC7C 8003B23C ABA20024 */  swl        $v0, 0x24($sp)
/* 18AC80 8003B240 BBA20027 */  swr        $v0, 0x27($sp)
/* 18AC84 8003B244 ABA30028 */  swl        $v1, 0x28($sp)
/* 18AC88 8003B248 BBA3002B */  swr        $v1, 0x2b($sp)
/* 18AC8C 8003B24C ABA4002C */  swl        $a0, 0x2c($sp)
/* 18AC90 8003B250 BBA4002F */  swr        $a0, 0x2f($sp)
/* 18AC94 8003B254 88A20018 */  lwl        $v0, 0x18($a1)
/* 18AC98 8003B258 98A2001B */  lwr        $v0, 0x1b($a1)
/* 18AC9C 8003B25C 80A3001C */  lb         $v1, 0x1c($a1)
/* 18ACA0 8003B260 80A4001D */  lb         $a0, 0x1d($a1)
/* 18ACA4 8003B264 ABA20030 */  swl        $v0, 0x30($sp)
/* 18ACA8 8003B268 BBA20033 */  swr        $v0, 0x33($sp)
/* 18ACAC 8003B26C A3A30034 */  sb         $v1, 0x34($sp)
/* 18ACB0 8003B270 A3A40035 */  sb         $a0, 0x35($sp)
/* 18ACB4 8003B274 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18ACB8 8003B278 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18ACBC 8003B27C 2402001E */  addiu      $v0, $zero, 0x1e
/* 18ACC0 8003B280 A7A20048 */  sh         $v0, 0x48($sp)
/* 18ACC4 8003B284 2402001E */  addiu      $v0, $zero, 0x1e
/* 18ACC8 8003B288 A3A2004A */  sb         $v0, 0x4a($sp)
/* 18ACCC 8003B28C 24020003 */  addiu      $v0, $zero, 3
/* 18ACD0 8003B290 A3A2004B */  sb         $v0, 0x4b($sp)
/* 18ACD4 8003B294 27A20018 */  addiu      $v0, $sp, 0x18
/* 18ACD8 8003B298 A3A0004C */  sb         $zero, 0x4c($sp)
/* 18ACDC 8003B29C A3A0004D */  sb         $zero, 0x4d($sp)
/* 18ACE0 8003B2A0 AFA20050 */  sw         $v0, 0x50($sp)
/* 18ACE4 8003B2A4 8FA20048 */  lw         $v0, 0x48($sp)
/* 18ACE8 8003B2A8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 18ACEC 8003B2AC 8FA50050 */  lw         $a1, 0x50($sp)
/* 18ACF0 8003B2B0 AFA20038 */  sw         $v0, 0x38($sp)
/* 18ACF4 8003B2B4 AFA4003C */  sw         $a0, 0x3c($sp)
/* 18ACF8 8003B2B8 AFA50040 */  sw         $a1, 0x40($sp)
/* 18ACFC 8003B2BC 14600008 */  bnez       $v1, .L8003B2E0
/* 18AD00 8003B2C0 00002821 */   addu      $a1, $zero, $zero
/* 18AD04 8003B2C4 8E230000 */  lw         $v1, ($s1)
/* 18AD08 8003B2C8 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AD0C 8003B2CC 3042FFBF */  andi       $v0, $v0, 0xffbf
/* 18AD10 8003B2D0 A462001E */  sh         $v0, 0x1e($v1)
/* 18AD14 8003B2D4 8E240000 */  lw         $a0, ($s1)
/* 18AD18 8003B2D8 0C02912A */  jal        func_800A44A8
/* 18AD1C 8003B2DC 00003021 */   addu      $a2, $zero, $zero
.L8003B2E0:
/* 18AD20 8003B2E0 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18AD24 8003B2E4 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18AD28 8003B2E8 2402FFFF */  addiu      $v0, $zero, -1
/* 18AD2C 8003B2EC 10620052 */  beq        $v1, $v0, .L8003B438
/* 18AD30 8003B2F0 00000000 */   nop
/* 18AD34 8003B2F4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18AD38 8003B2F8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18AD3C 8003B2FC 1440001C */  bnez       $v0, .L8003B370
/* 18AD40 8003B300 24040045 */   addiu     $a0, $zero, 0x45
/* 18AD44 8003B304 24060080 */  addiu      $a2, $zero, 0x80
/* 18AD48 8003B308 24070001 */  addiu      $a3, $zero, 1
/* 18AD4C 8003B30C 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* 18AD50 8003B310 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* 18AD54 8003B314 00008021 */  addu       $s0, $zero, $zero
/* 18AD58 8003B318 24020064 */  addiu      $v0, $zero, 0x64
/* 18AD5C 8003B31C AFA20010 */  sw         $v0, 0x10($sp)
/* 18AD60 8003B320 0C026E0C */  jal        func_8009B830
/* 18AD64 8003B324 24A50010 */   addiu     $a1, $a1, 0x10
/* 18AD68 8003B328 320300FF */  andi       $v1, $s0, 0xff
.L8003B32C:
/* 18AD6C 8003B32C 00031040 */  sll        $v0, $v1, 1
/* 18AD70 8003B330 00431021 */  addu       $v0, $v0, $v1
/* 18AD74 8003B334 00021080 */  sll        $v0, $v0, 2
/* 18AD78 8003B338 00511021 */  addu       $v0, $v0, $s1
/* 18AD7C 8003B33C 8C440000 */  lw         $a0, ($v0)
/* 18AD80 8003B340 9483001E */  lhu        $v1, 0x1e($a0)
/* 18AD84 8003B344 00002821 */  addu       $a1, $zero, $zero
/* 18AD88 8003B348 3063FFBF */  andi       $v1, $v1, 0xffbf
/* 18AD8C 8003B34C A483001E */  sh         $v1, 0x1e($a0)
/* 18AD90 8003B350 8C440000 */  lw         $a0, ($v0)
/* 18AD94 8003B354 00003021 */  addu       $a2, $zero, $zero
/* 18AD98 8003B358 0C02912A */  jal        func_800A44A8
/* 18AD9C 8003B35C 26100001 */   addiu     $s0, $s0, 1
/* 18ADA0 8003B360 320200FF */  andi       $v0, $s0, 0xff
/* 18ADA4 8003B364 2C420003 */  sltiu      $v0, $v0, 3
/* 18ADA8 8003B368 1440FFF0 */  bnez       $v0, .L8003B32C
/* 18ADAC 8003B36C 320300FF */   andi      $v1, $s0, 0xff
.L8003B370:
/* 18ADB0 8003B370 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18ADB4 8003B374 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18ADB8 8003B378 2402001E */  addiu      $v0, $zero, 0x1e
/* 18ADBC 8003B37C 1462000B */  bne        $v1, $v0, .L8003B3AC
/* 18ADC0 8003B380 240200AA */   addiu     $v0, $zero, 0xaa
/* 18ADC4 8003B384 24020064 */  addiu      $v0, $zero, 0x64
/* 18ADC8 8003B388 AFA20010 */  sw         $v0, 0x10($sp)
/* 18ADCC 8003B38C 24040166 */  addiu      $a0, $zero, 0x166
/* 18ADD0 8003B390 24050080 */  addiu      $a1, $zero, 0x80
/* 18ADD4 8003B394 24060080 */  addiu      $a2, $zero, 0x80
/* 18ADD8 8003B398 0C026E0C */  jal        func_8009B830
/* 18ADDC 8003B39C 24070001 */   addiu     $a3, $zero, 1
/* 18ADE0 8003B3A0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18ADE4 8003B3A4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18ADE8 8003B3A8 240200AA */  addiu      $v0, $zero, 0xaa
.L8003B3AC:
/* 18ADEC 8003B3AC 14620004 */  bne        $v1, $v0, .L8003B3C0
/* 18ADF0 8003B3B0 24100001 */   addiu     $s0, $zero, 1
/* 18ADF4 8003B3B4 0C026E5D */  jal        func_8009B974
/* 18ADF8 8003B3B8 24040005 */   addiu     $a0, $zero, 5
/* 18ADFC 8003B3BC 24100001 */  addiu      $s0, $zero, 1
.L8003B3C0:
/* 18AE00 8003B3C0 320300FF */  andi       $v1, $s0, 0xff
.L8003B3C4:
/* 18AE04 8003B3C4 00031040 */  sll        $v0, $v1, 1
/* 18AE08 8003B3C8 00431021 */  addu       $v0, $v0, $v1
/* 18AE0C 8003B3CC 00021080 */  sll        $v0, $v0, 2
/* 18AE10 8003B3D0 00511021 */  addu       $v0, $v0, $s1
/* 18AE14 8003B3D4 8C430000 */  lw         $v1, ($v0)
/* 18AE18 8003B3D8 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AE1C 8003B3DC 26100001 */  addiu      $s0, $s0, 1
/* 18AE20 8003B3E0 34420400 */  ori        $v0, $v0, 0x400
/* 18AE24 8003B3E4 A462001E */  sh         $v0, 0x1e($v1)
/* 18AE28 8003B3E8 320200FF */  andi       $v0, $s0, 0xff
/* 18AE2C 8003B3EC 2C420003 */  sltiu      $v0, $v0, 3
/* 18AE30 8003B3F0 1440FFF4 */  bnez       $v0, .L8003B3C4
/* 18AE34 8003B3F4 320300FF */   andi      $v1, $s0, 0xff
/* 18AE38 8003B3F8 8FA40038 */  lw         $a0, 0x38($sp)
/* 18AE3C 8003B3FC 8FA5003C */  lw         $a1, 0x3c($sp)
/* 18AE40 8003B400 8FA60040 */  lw         $a2, 0x40($sp)
/* 18AE44 8003B404 3C078005 */  lui        $a3, %hi(D_80052038)
/* 18AE48 8003B408 0C00D4EF */  jal        func_800353BC_184DFC
/* 18AE4C 8003B40C 84E72038 */   lh        $a3, %lo(D_80052038)($a3)
/* 18AE50 8003B410 00401821 */  addu       $v1, $v0, $zero
/* 18AE54 8003B414 10600008 */  beqz       $v1, .L8003B438
/* 18AE58 8003B418 00031040 */   sll       $v0, $v1, 1
/* 18AE5C 8003B41C 00431021 */  addu       $v0, $v0, $v1
/* 18AE60 8003B420 00021080 */  sll        $v0, $v0, 2
/* 18AE64 8003B424 00511021 */  addu       $v0, $v0, $s1
/* 18AE68 8003B428 8C430000 */  lw         $v1, ($v0)
/* 18AE6C 8003B42C 9462001E */  lhu        $v0, 0x1e($v1)
/* 18AE70 8003B430 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 18AE74 8003B434 A462001E */  sh         $v0, 0x1e($v1)
.L8003B438:
/* 18AE78 8003B438 8FBF0060 */  lw         $ra, 0x60($sp)
/* 18AE7C 8003B43C 8FB1005C */  lw         $s1, 0x5c($sp)
/* 18AE80 8003B440 8FB00058 */  lw         $s0, 0x58($sp)
/* 18AE84 8003B444 03E00008 */  jr         $ra
/* 18AE88 8003B448 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8003B44C_18AE8C
/* 18AE8C 8003B44C 03E00008 */  jr         $ra
/* 18AE90 8003B450 00000000 */   nop

glabel func_8003B454_18AE94
/* 18AE94 8003B454 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18AE98 8003B458 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18AE9C 8003B45C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18AEA0 8003B460 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18AEA4 8003B464 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18AEA8 8003B468 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18AEAC 8003B46C AFB00018 */  sw         $s0, 0x18($sp)
/* 18AEB0 8003B470 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 18AEB4 8003B474 1460000B */  bnez       $v1, .L8003B4A4
/* 18AEB8 8003B478 8C500028 */   lw        $s0, 0x28($v0)
/* 18AEBC 8003B47C 3C014000 */  lui        $at, 0x4000
/* 18AEC0 8003B480 4481A000 */  mtc1       $at, $f20
/* 18AEC4 8003B484 8E04006C */  lw         $a0, 0x6c($s0)
/* 18AEC8 8003B488 4405A000 */  mfc1       $a1, $f20
/* 18AECC 8003B48C 0C02795C */  jal        func_8009E570
/* 18AED0 8003B490 00000000 */   nop
/* 18AED4 8003B494 8E040070 */  lw         $a0, 0x70($s0)
/* 18AED8 8003B498 4405A000 */  mfc1       $a1, $f20
/* 18AEDC 8003B49C 0C027C5E */  jal        func_8009F178
/* 18AEE0 8003B4A0 00000000 */   nop
.L8003B4A4:
/* 18AEE4 8003B4A4 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18AEE8 8003B4A8 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18AEEC 8003B4AC 2402FFFF */  addiu      $v0, $zero, -1
/* 18AEF0 8003B4B0 1062000B */  beq        $v1, $v0, .L8003B4E0
/* 18AEF4 8003B4B4 00000000 */   nop
/* 18AEF8 8003B4B8 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18AEFC 8003B4BC 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18AF00 8003B4C0 14400007 */  bnez       $v0, .L8003B4E0
/* 18AF04 8003B4C4 24020064 */   addiu     $v0, $zero, 0x64
/* 18AF08 8003B4C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 18AF0C 8003B4CC 24040020 */  addiu      $a0, $zero, 0x20
/* 18AF10 8003B4D0 24050080 */  addiu      $a1, $zero, 0x80
/* 18AF14 8003B4D4 24060080 */  addiu      $a2, $zero, 0x80
/* 18AF18 8003B4D8 0C026E0C */  jal        func_8009B830
/* 18AF1C 8003B4DC 24070001 */   addiu     $a3, $zero, 1
.L8003B4E0:
/* 18AF20 8003B4E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18AF24 8003B4E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 18AF28 8003B4E8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 18AF2C 8003B4EC 03E00008 */  jr         $ra
/* 18AF30 8003B4F0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003B4F4_18AF34
/* 18AF34 8003B4F4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18AF38 8003B4F8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18AF3C 8003B4FC 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18AF40 8003B500 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18AF44 8003B504 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18AF48 8003B508 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18AF4C 8003B50C AFB00018 */  sw         $s0, 0x18($sp)
/* 18AF50 8003B510 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 18AF54 8003B514 8C500028 */  lw         $s0, 0x28($v0)
/* 18AF58 8003B518 14600021 */  bnez       $v1, .L8003B5A0
/* 18AF5C 8003B51C 2402FFFF */   addiu     $v0, $zero, -1
/* 18AF60 8003B520 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18AF64 8003B524 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18AF68 8003B528 10620007 */  beq        $v1, $v0, .L8003B548
/* 18AF6C 8003B52C 24020064 */   addiu     $v0, $zero, 0x64
/* 18AF70 8003B530 AFA20010 */  sw         $v0, 0x10($sp)
/* 18AF74 8003B534 24040020 */  addiu      $a0, $zero, 0x20
/* 18AF78 8003B538 24050080 */  addiu      $a1, $zero, 0x80
/* 18AF7C 8003B53C 24060080 */  addiu      $a2, $zero, 0x80
/* 18AF80 8003B540 0C026E0C */  jal        func_8009B830
/* 18AF84 8003B544 24070001 */   addiu     $a3, $zero, 1
.L8003B548:
/* 18AF88 8003B548 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18AF8C 8003B54C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18AF90 8003B550 14400013 */  bnez       $v0, .L8003B5A0
/* 18AF94 8003B554 00000000 */   nop
/* 18AF98 8003B558 3C014000 */  lui        $at, 0x4000
/* 18AF9C 8003B55C 4481A000 */  mtc1       $at, $f20
/* 18AFA0 8003B560 8E04006C */  lw         $a0, 0x6c($s0)
/* 18AFA4 8003B564 4405A000 */  mfc1       $a1, $f20
/* 18AFA8 8003B568 0C02795C */  jal        func_8009E570
/* 18AFAC 8003B56C 00000000 */   nop
/* 18AFB0 8003B570 8E040070 */  lw         $a0, 0x70($s0)
/* 18AFB4 8003B574 4405A000 */  mfc1       $a1, $f20
/* 18AFB8 8003B578 0C027C5E */  jal        func_8009F178
/* 18AFBC 8003B57C 00000000 */   nop
/* 18AFC0 8003B580 8E0400E4 */  lw         $a0, 0xe4($s0)
/* 18AFC4 8003B584 4405A000 */  mfc1       $a1, $f20
/* 18AFC8 8003B588 0C02795C */  jal        func_8009E570
/* 18AFCC 8003B58C 00000000 */   nop
/* 18AFD0 8003B590 8E0400E8 */  lw         $a0, 0xe8($s0)
/* 18AFD4 8003B594 4405A000 */  mfc1       $a1, $f20
/* 18AFD8 8003B598 0C027C5E */  jal        func_8009F178
/* 18AFDC 8003B59C 00000000 */   nop
.L8003B5A0:
/* 18AFE0 8003B5A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18AFE4 8003B5A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 18AFE8 8003B5A8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 18AFEC 8003B5AC 03E00008 */  jr         $ra
/* 18AFF0 8003B5B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003B5B4_18AFF4
/* 18AFF4 8003B5B4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18AFF8 8003B5B8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18AFFC 8003B5BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18B000 8003B5C0 1440000C */  bnez       $v0, .L8003B5F4
/* 18B004 8003B5C4 AFBF0018 */   sw        $ra, 0x18($sp)
/* 18B008 8003B5C8 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18B00C 8003B5CC 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18B010 8003B5D0 2402FFFF */  addiu      $v0, $zero, -1
/* 18B014 8003B5D4 10620007 */  beq        $v1, $v0, .L8003B5F4
/* 18B018 8003B5D8 24020064 */   addiu     $v0, $zero, 0x64
/* 18B01C 8003B5DC AFA20010 */  sw         $v0, 0x10($sp)
/* 18B020 8003B5E0 24040020 */  addiu      $a0, $zero, 0x20
/* 18B024 8003B5E4 24050080 */  addiu      $a1, $zero, 0x80
/* 18B028 8003B5E8 24060080 */  addiu      $a2, $zero, 0x80
/* 18B02C 8003B5EC 0C026E0C */  jal        func_8009B830
/* 18B030 8003B5F0 24070001 */   addiu     $a3, $zero, 1
.L8003B5F4:
/* 18B034 8003B5F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18B038 8003B5F8 03E00008 */  jr         $ra
/* 18B03C 8003B5FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003B600_18B040
/* 18B040 8003B600 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18B044 8003B604 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18B048 8003B608 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B04C 8003B60C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B050 8003B610 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18B054 8003B614 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18B058 8003B618 AFB00018 */  sw         $s0, 0x18($sp)
/* 18B05C 8003B61C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 18B060 8003B620 8C500028 */  lw         $s0, 0x28($v0)
/* 18B064 8003B624 14600019 */  bnez       $v1, .L8003B68C
/* 18B068 8003B628 2402FFFF */   addiu     $v0, $zero, -1
/* 18B06C 8003B62C 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18B070 8003B630 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18B074 8003B634 10620007 */  beq        $v1, $v0, .L8003B654
/* 18B078 8003B638 24020064 */   addiu     $v0, $zero, 0x64
/* 18B07C 8003B63C AFA20010 */  sw         $v0, 0x10($sp)
/* 18B080 8003B640 24040027 */  addiu      $a0, $zero, 0x27
/* 18B084 8003B644 24050080 */  addiu      $a1, $zero, 0x80
/* 18B088 8003B648 24060080 */  addiu      $a2, $zero, 0x80
/* 18B08C 8003B64C 0C026E0C */  jal        func_8009B830
/* 18B090 8003B650 24070001 */   addiu     $a3, $zero, 1
.L8003B654:
/* 18B094 8003B654 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18B098 8003B658 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18B09C 8003B65C 1440000B */  bnez       $v0, .L8003B68C
/* 18B0A0 8003B660 00000000 */   nop
/* 18B0A4 8003B664 3C014000 */  lui        $at, 0x4000
/* 18B0A8 8003B668 4481A000 */  mtc1       $at, $f20
/* 18B0AC 8003B66C 8E04006C */  lw         $a0, 0x6c($s0)
/* 18B0B0 8003B670 4405A000 */  mfc1       $a1, $f20
/* 18B0B4 8003B674 0C02795C */  jal        func_8009E570
/* 18B0B8 8003B678 00000000 */   nop
/* 18B0BC 8003B67C 8E040070 */  lw         $a0, 0x70($s0)
/* 18B0C0 8003B680 4405A000 */  mfc1       $a1, $f20
/* 18B0C4 8003B684 0C027C5E */  jal        func_8009F178
/* 18B0C8 8003B688 00000000 */   nop
.L8003B68C:
/* 18B0CC 8003B68C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18B0D0 8003B690 8FB00018 */  lw         $s0, 0x18($sp)
/* 18B0D4 8003B694 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 18B0D8 8003B698 03E00008 */  jr         $ra
/* 18B0DC 8003B69C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003B6A0_18B0E0
/* 18B0E0 8003B6A0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18B0E4 8003B6A4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18B0E8 8003B6A8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B0EC 8003B6AC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B0F0 8003B6B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18B0F4 8003B6B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 18B0F8 8003B6B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 18B0FC 8003B6BC F7B40020 */  sdc1       $f20, 0x20($sp)
/* 18B100 8003B6C0 8C500028 */  lw         $s0, 0x28($v0)
/* 18B104 8003B6C4 14600019 */  bnez       $v1, .L8003B72C
/* 18B108 8003B6C8 2402FFFF */   addiu     $v0, $zero, -1
/* 18B10C 8003B6CC 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18B110 8003B6D0 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18B114 8003B6D4 10620007 */  beq        $v1, $v0, .L8003B6F4
/* 18B118 8003B6D8 24020064 */   addiu     $v0, $zero, 0x64
/* 18B11C 8003B6DC AFA20010 */  sw         $v0, 0x10($sp)
/* 18B120 8003B6E0 24040027 */  addiu      $a0, $zero, 0x27
/* 18B124 8003B6E4 24050080 */  addiu      $a1, $zero, 0x80
/* 18B128 8003B6E8 24060080 */  addiu      $a2, $zero, 0x80
/* 18B12C 8003B6EC 0C026E0C */  jal        func_8009B830
/* 18B130 8003B6F0 24070001 */   addiu     $a3, $zero, 1
.L8003B6F4:
/* 18B134 8003B6F4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18B138 8003B6F8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18B13C 8003B6FC 1440000B */  bnez       $v0, .L8003B72C
/* 18B140 8003B700 00000000 */   nop
/* 18B144 8003B704 3C014000 */  lui        $at, 0x4000
/* 18B148 8003B708 4481A000 */  mtc1       $at, $f20
/* 18B14C 8003B70C 8E04006C */  lw         $a0, 0x6c($s0)
/* 18B150 8003B710 4405A000 */  mfc1       $a1, $f20
/* 18B154 8003B714 0C02795C */  jal        func_8009E570
/* 18B158 8003B718 00000000 */   nop
/* 18B15C 8003B71C 8E040070 */  lw         $a0, 0x70($s0)
/* 18B160 8003B720 4405A000 */  mfc1       $a1, $f20
/* 18B164 8003B724 0C027C5E */  jal        func_8009F178
/* 18B168 8003B728 00000000 */   nop
.L8003B72C:
/* 18B16C 8003B72C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18B170 8003B730 8FB00018 */  lw         $s0, 0x18($sp)
/* 18B174 8003B734 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 18B178 8003B738 03E00008 */  jr         $ra
/* 18B17C 8003B73C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003B740_18B180
/* 18B180 8003B740 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 18B184 8003B744 27A70030 */  addiu      $a3, $sp, 0x30
/* 18B188 8003B748 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18B18C 8003B74C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18B190 8003B750 3C068005 */  lui        $a2, %hi(D_80051B10)
/* 18B194 8003B754 24C61B10 */  addiu      $a2, $a2, %lo(D_80051B10)
/* 18B198 8003B758 24C80020 */  addiu      $t0, $a2, 0x20
/* 18B19C 8003B75C AFBF0098 */  sw         $ra, 0x98($sp)
/* 18B1A0 8003B760 AFB70094 */  sw         $s7, 0x94($sp)
/* 18B1A4 8003B764 AFB60090 */  sw         $s6, 0x90($sp)
/* 18B1A8 8003B768 AFB5008C */  sw         $s5, 0x8c($sp)
/* 18B1AC 8003B76C AFB40088 */  sw         $s4, 0x88($sp)
/* 18B1B0 8003B770 AFB30084 */  sw         $s3, 0x84($sp)
/* 18B1B4 8003B774 AFB20080 */  sw         $s2, 0x80($sp)
/* 18B1B8 8003B778 AFB1007C */  sw         $s1, 0x7c($sp)
/* 18B1BC 8003B77C AFB00078 */  sw         $s0, 0x78($sp)
/* 18B1C0 8003B780 F7B600A8 */  sdc1       $f22, 0xa8($sp)
/* 18B1C4 8003B784 F7B400A0 */  sdc1       $f20, 0xa0($sp)
/* 18B1C8 8003B788 8C55002C */  lw         $s5, 0x2c($v0)
/* 18B1CC 8003B78C 8C540028 */  lw         $s4, 0x28($v0)
.L8003B790:
/* 18B1D0 8003B790 8CC20000 */  lw         $v0, ($a2)
/* 18B1D4 8003B794 8CC30004 */  lw         $v1, 4($a2)
/* 18B1D8 8003B798 8CC40008 */  lw         $a0, 8($a2)
/* 18B1DC 8003B79C 8CC5000C */  lw         $a1, 0xc($a2)
/* 18B1E0 8003B7A0 ACE20000 */  sw         $v0, ($a3)
/* 18B1E4 8003B7A4 ACE30004 */  sw         $v1, 4($a3)
/* 18B1E8 8003B7A8 ACE40008 */  sw         $a0, 8($a3)
/* 18B1EC 8003B7AC ACE5000C */  sw         $a1, 0xc($a3)
/* 18B1F0 8003B7B0 24C60010 */  addiu      $a2, $a2, 0x10
/* 18B1F4 8003B7B4 14C8FFF6 */  bne        $a2, $t0, .L8003B790
/* 18B1F8 8003B7B8 24E70010 */   addiu     $a3, $a3, 0x10
/* 18B1FC 8003B7BC 8CC20000 */  lw         $v0, ($a2)
/* 18B200 8003B7C0 8CC30004 */  lw         $v1, 4($a2)
/* 18B204 8003B7C4 8CC40008 */  lw         $a0, 8($a2)
/* 18B208 8003B7C8 ACE20000 */  sw         $v0, ($a3)
/* 18B20C 8003B7CC ACE30004 */  sw         $v1, 4($a3)
/* 18B210 8003B7D0 ACE40008 */  sw         $a0, 8($a3)
/* 18B214 8003B7D4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18B218 8003B7D8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18B21C 8003B7DC 14400069 */  bnez       $v0, .L8003B984
/* 18B220 8003B7E0 00000000 */   nop
/* 18B224 8003B7E4 8FA20040 */  lw         $v0, 0x40($sp)
/* 18B228 8003B7E8 8FA30044 */  lw         $v1, 0x44($sp)
/* 18B22C 8003B7EC 8FA40048 */  lw         $a0, 0x48($sp)
/* 18B230 8003B7F0 8FA5004C */  lw         $a1, 0x4c($sp)
/* 18B234 8003B7F4 AFA20010 */  sw         $v0, 0x10($sp)
/* 18B238 8003B7F8 AFA30014 */  sw         $v1, 0x14($sp)
/* 18B23C 8003B7FC AFA40018 */  sw         $a0, 0x18($sp)
/* 18B240 8003B800 AFA5001C */  sw         $a1, 0x1c($sp)
/* 18B244 8003B804 8FA20050 */  lw         $v0, 0x50($sp)
/* 18B248 8003B808 8FA30054 */  lw         $v1, 0x54($sp)
/* 18B24C 8003B80C 8FA40058 */  lw         $a0, 0x58($sp)
/* 18B250 8003B810 AFA20020 */  sw         $v0, 0x20($sp)
/* 18B254 8003B814 AFA30024 */  sw         $v1, 0x24($sp)
/* 18B258 8003B818 AFA40028 */  sw         $a0, 0x28($sp)
/* 18B25C 8003B81C 8FA40030 */  lw         $a0, 0x30($sp)
/* 18B260 8003B820 8FA50034 */  lw         $a1, 0x34($sp)
/* 18B264 8003B824 8FA60038 */  lw         $a2, 0x38($sp)
/* 18B268 8003B828 0C0099F7 */  jal        func_800267DC_17621C
/* 18B26C 8003B82C 8FA7003C */   lw        $a3, 0x3c($sp)
/* 18B270 8003B830 24040020 */  addiu      $a0, $zero, 0x20
/* 18B274 8003B834 24050020 */  addiu      $a1, $zero, 0x20
/* 18B278 8003B838 24060020 */  addiu      $a2, $zero, 0x20
/* 18B27C 8003B83C 240700FF */  addiu      $a3, $zero, 0xff
/* 18B280 8003B840 240200FF */  addiu      $v0, $zero, 0xff
/* 18B284 8003B844 AFA20010 */  sw         $v0, 0x10($sp)
/* 18B288 8003B848 0C027101 */  jal        func_8009C404
/* 18B28C 8003B84C AFA20014 */   sw        $v0, 0x14($sp)
/* 18B290 8003B850 0C027224 */  jal        func_8009C890
/* 18B294 8003B854 00000000 */   nop
/* 18B298 8003B858 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18B29C 8003B85C 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18B2A0 8003B860 2402FFFF */  addiu      $v0, $zero, -1
/* 18B2A4 8003B864 10620007 */  beq        $v1, $v0, .L8003B884
/* 18B2A8 8003B868 24020064 */   addiu     $v0, $zero, 0x64
/* 18B2AC 8003B86C AFA20010 */  sw         $v0, 0x10($sp)
/* 18B2B0 8003B870 240400B2 */  addiu      $a0, $zero, 0xb2
/* 18B2B4 8003B874 24050080 */  addiu      $a1, $zero, 0x80
/* 18B2B8 8003B878 24060080 */  addiu      $a2, $zero, 0x80
/* 18B2BC 8003B87C 0C026E0C */  jal        func_8009B830
/* 18B2C0 8003B880 24070001 */   addiu     $a3, $zero, 1
.L8003B884:
/* 18B2C4 8003B884 00009021 */  addu       $s2, $zero, $zero
/* 18B2C8 8003B888 24160020 */  addiu      $s6, $zero, 0x20
/* 18B2CC 8003B88C 3C013DA3 */  lui        $at, 0x3da3
/* 18B2D0 8003B890 3421D70A */  ori        $at, $at, 0xd70a
/* 18B2D4 8003B894 4481B000 */  mtc1       $at, $f22
/* 18B2D8 8003B898 24110005 */  addiu      $s1, $zero, 5
.L8003B89C:
/* 18B2DC 8003B89C 3C014000 */  lui        $at, 0x4000
/* 18B2E0 8003B8A0 4481A000 */  mtc1       $at, $f20
/* 18B2E4 8003B8A4 00121600 */  sll        $v0, $s2, 0x18
/* 18B2E8 8003B8A8 00029E03 */  sra        $s3, $v0, 0x18
/* 18B2EC 8003B8AC 00111600 */  sll        $v0, $s1, 0x18
.L8003B8B0:
/* 18B2F0 8003B8B0 00021603 */  sra        $v0, $v0, 0x18
/* 18B2F4 8003B8B4 00531021 */  addu       $v0, $v0, $s3
/* 18B2F8 8003B8B8 00028040 */  sll        $s0, $v0, 1
/* 18B2FC 8003B8BC 02028021 */  addu       $s0, $s0, $v0
/* 18B300 8003B8C0 00108080 */  sll        $s0, $s0, 2
/* 18B304 8003B8C4 02158021 */  addu       $s0, $s0, $s5
/* 18B308 8003B8C8 AFB60010 */  sw         $s6, 0x10($sp)
/* 18B30C 8003B8CC 8E040000 */  lw         $a0, ($s0)
/* 18B310 8003B8D0 240500FF */  addiu      $a1, $zero, 0xff
/* 18B314 8003B8D4 240600FF */  addiu      $a2, $zero, 0xff
/* 18B318 8003B8D8 0C028E41 */  jal        func_800A3904
/* 18B31C 8003B8DC 240700FF */   addiu     $a3, $zero, 0xff
/* 18B320 8003B8E0 8E040000 */  lw         $a0, ($s0)
/* 18B324 8003B8E4 00002821 */  addu       $a1, $zero, $zero
/* 18B328 8003B8E8 4406A000 */  mfc1       $a2, $f20
/* 18B32C 8003B8EC 4407A000 */  mfc1       $a3, $f20
/* 18B330 8003B8F0 00000000 */  nop
/* 18B334 8003B8F4 0C02915B */  jal        func_800A456C
/* 18B338 8003B8F8 4616A501 */   sub.s     $f20, $f20, $f22
/* 18B33C 8003B8FC 26220001 */  addiu      $v0, $s1, 1
/* 18B340 8003B900 00408821 */  addu       $s1, $v0, $zero
/* 18B344 8003B904 00021600 */  sll        $v0, $v0, 0x18
/* 18B348 8003B908 00021603 */  sra        $v0, $v0, 0x18
/* 18B34C 8003B90C 28420010 */  slti       $v0, $v0, 0x10
/* 18B350 8003B910 1440FFE7 */  bnez       $v0, .L8003B8B0
/* 18B354 8003B914 00111600 */   sll       $v0, $s1, 0x18
/* 18B358 8003B918 2642000B */  addiu      $v0, $s2, 0xb
/* 18B35C 8003B91C 00409021 */  addu       $s2, $v0, $zero
/* 18B360 8003B920 00021600 */  sll        $v0, $v0, 0x18
/* 18B364 8003B924 00021603 */  sra        $v0, $v0, 0x18
/* 18B368 8003B928 2842001E */  slti       $v0, $v0, 0x1e
/* 18B36C 8003B92C 5440FFDB */  bnezl      $v0, .L8003B89C
/* 18B370 8003B930 24110005 */   addiu     $s1, $zero, 5
/* 18B374 8003B934 8E840068 */  lw         $a0, 0x68($s4)
/* 18B378 8003B938 3C058005 */  lui        $a1, %hi(D_80051B3C)
/* 18B37C 8003B93C 24A51B3C */  addiu      $a1, $a1, %lo(D_80051B3C)
/* 18B380 8003B940 0C009A55 */  jal        func_80026954_176394
/* 18B384 8003B944 2406052D */   addiu     $a2, $zero, 0x52d
/* 18B388 8003B948 8E840068 */  lw         $a0, 0x68($s4)
/* 18B38C 8003B94C 3C058005 */  lui        $a1, %hi(D_80051B44)
/* 18B390 8003B950 24A51B44 */  addiu      $a1, $a1, %lo(D_80051B44)
/* 18B394 8003B954 0C009A55 */  jal        func_80026954_176394
/* 18B398 8003B958 2406052C */   addiu     $a2, $zero, 0x52c
/* 18B39C 8003B95C 8E840068 */  lw         $a0, 0x68($s4)
/* 18B3A0 8003B960 3C058005 */  lui        $a1, %hi(D_80051B4C)
/* 18B3A4 8003B964 24A51B4C */  addiu      $a1, $a1, %lo(D_80051B4C)
/* 18B3A8 8003B968 0C009A55 */  jal        func_80026954_176394
/* 18B3AC 8003B96C 2406052B */   addiu     $a2, $zero, 0x52b
/* 18B3B0 8003B970 8E840068 */  lw         $a0, 0x68($s4)
/* 18B3B4 8003B974 3C058005 */  lui        $a1, %hi(D_80051B54)
/* 18B3B8 8003B978 24A51B54 */  addiu      $a1, $a1, %lo(D_80051B54)
/* 18B3BC 8003B97C 0C009A55 */  jal        func_80026954_176394
/* 18B3C0 8003B980 2406052A */   addiu     $a2, $zero, 0x52a
.L8003B984:
/* 18B3C4 8003B984 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B3C8 8003B988 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B3CC 8003B98C 240200A0 */  addiu      $v0, $zero, 0xa0
/* 18B3D0 8003B990 14620004 */  bne        $v1, $v0, .L8003B9A4
/* 18B3D4 8003B994 00008821 */   addu      $s1, $zero, $zero
/* 18B3D8 8003B998 0C026E5D */  jal        func_8009B974
/* 18B3DC 8003B99C 24040005 */   addiu     $a0, $zero, 5
/* 18B3E0 8003B9A0 00008821 */  addu       $s1, $zero, $zero
.L8003B9A4:
/* 18B3E4 8003B9A4 27A30060 */  addiu      $v1, $sp, 0x60
/* 18B3E8 8003B9A8 00111600 */  sll        $v0, $s1, 0x18
.L8003B9AC:
/* 18B3EC 8003B9AC 00021603 */  sra        $v0, $v0, 0x18
/* 18B3F0 8003B9B0 00621021 */  addu       $v0, $v1, $v0
/* 18B3F4 8003B9B4 A0400000 */  sb         $zero, ($v0)
/* 18B3F8 8003B9B8 26220001 */  addiu      $v0, $s1, 1
/* 18B3FC 8003B9BC 00408821 */  addu       $s1, $v0, $zero
/* 18B400 8003B9C0 00021600 */  sll        $v0, $v0, 0x18
/* 18B404 8003B9C4 00021603 */  sra        $v0, $v0, 0x18
/* 18B408 8003B9C8 28420003 */  slti       $v0, $v0, 3
/* 18B40C 8003B9CC 1440FFF7 */  bnez       $v0, .L8003B9AC
/* 18B410 8003B9D0 00111600 */   sll       $v0, $s1, 0x18
/* 18B414 8003B9D4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18B418 8003B9D8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18B41C 8003B9DC 2C420064 */  sltiu      $v0, $v0, 0x64
/* 18B420 8003B9E0 10400006 */  beqz       $v0, .L8003B9FC
/* 18B424 8003B9E4 00000000 */   nop
/* 18B428 8003B9E8 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18B42C 8003B9EC 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18B430 8003B9F0 A4400002 */  sh         $zero, 2($v0)
/* 18B434 8003B9F4 0800EE9A */  j          .L8003BA68
/* 18B438 8003B9F8 A4400000 */   sh        $zero, ($v0)
.L8003B9FC:
/* 18B43C 8003B9FC 3C048005 */  lui        $a0, %hi(D_80052218)
/* 18B440 8003BA00 8C842218 */  lw         $a0, %lo(D_80052218)($a0)
/* 18B444 8003BA04 84820000 */  lh         $v0, ($a0)
/* 18B448 8003BA08 00402821 */  addu       $a1, $v0, $zero
/* 18B44C 8003BA0C 28420007 */  slti       $v0, $v0, 7
/* 18B450 8003BA10 10400015 */  beqz       $v0, .L8003BA68
/* 18B454 8003BA14 00000000 */   nop
/* 18B458 8003BA18 84820002 */  lh         $v0, 2($a0)
/* 18B45C 8003BA1C 1C400010 */  bgtz       $v0, .L8003BA60
/* 18B460 8003BA20 00401821 */   addu      $v1, $v0, $zero
/* 18B464 8003BA24 24A20001 */  addiu      $v0, $a1, 1
/* 18B468 8003BA28 A4820000 */  sh         $v0, ($a0)
/* 18B46C 8003BA2C 3C048005 */  lui        $a0, %hi(D_80052218)
/* 18B470 8003BA30 8C842218 */  lw         $a0, %lo(D_80052218)($a0)
/* 18B474 8003BA34 84830000 */  lh         $v1, ($a0)
/* 18B478 8003BA38 24020004 */  addiu      $v0, $zero, 4
/* 18B47C 8003BA3C 10620009 */  beq        $v1, $v0, .L8003BA64
/* 18B480 8003BA40 24020012 */   addiu     $v0, $zero, 0x12
/* 18B484 8003BA44 0C02591A */  jal        func_80096468
/* 18B488 8003BA48 24040001 */   addiu     $a0, $zero, 1
/* 18B48C 8003BA4C 3C038005 */  lui        $v1, %hi(D_80052218)
/* 18B490 8003BA50 8C632218 */  lw         $v1, %lo(D_80052218)($v1)
/* 18B494 8003BA54 24420001 */  addiu      $v0, $v0, 1
/* 18B498 8003BA58 0800EE9A */  j          .L8003BA68
/* 18B49C 8003BA5C A4620002 */   sh        $v0, 2($v1)
.L8003BA60:
/* 18B4A0 8003BA60 2462FFFF */  addiu      $v0, $v1, -1
.L8003BA64:
/* 18B4A4 8003BA64 A4820002 */  sh         $v0, 2($a0)
.L8003BA68:
/* 18B4A8 8003BA68 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18B4AC 8003BA6C 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18B4B0 8003BA70 84430000 */  lh         $v1, ($v0)
/* 18B4B4 8003BA74 2C620008 */  sltiu      $v0, $v1, 8
/* 18B4B8 8003BA78 1040000E */  beqz       $v0, .L8003BAB4
/* 18B4BC 8003BA7C 00031080 */   sll       $v0, $v1, 2
/* 18B4C0 8003BA80 3C018005 */  lui        $at, %hi(D_80051B60)
/* 18B4C4 8003BA84 00220821 */  addu       $at, $at, $v0
/* 18B4C8 8003BA88 8C221B60 */  lw         $v0, %lo(D_80051B60)($at)
/* 18B4CC 8003BA8C 00400008 */  jr         $v0
/* 18B4D0 8003BA90 00000000 */   nop
/* 18B4D4 8003BA94 24020001 */  addiu      $v0, $zero, 1
/* 18B4D8 8003BA98 0800EEAD */  j          .L8003BAB4
/* 18B4DC 8003BA9C A3A20060 */   sb        $v0, 0x60($sp)
/* 18B4E0 8003BAA0 24020001 */  addiu      $v0, $zero, 1
/* 18B4E4 8003BAA4 0800EEAD */  j          .L8003BAB4
/* 18B4E8 8003BAA8 A3A20061 */   sb        $v0, 0x61($sp)
/* 18B4EC 8003BAAC 24020001 */  addiu      $v0, $zero, 1
/* 18B4F0 8003BAB0 A3A20062 */  sb         $v0, 0x62($sp)
.L8003BAB4:
/* 18B4F4 8003BAB4 00009021 */  addu       $s2, $zero, $zero
/* 18B4F8 8003BAB8 0000A021 */  addu       $s4, $zero, $zero
/* 18B4FC 8003BABC 24170020 */  addiu      $s7, $zero, 0x20
/* 18B500 8003BAC0 24160010 */  addiu      $s6, $zero, 0x10
.L8003BAC4:
/* 18B504 8003BAC4 00141600 */  sll        $v0, $s4, 0x18
/* 18B508 8003BAC8 00021603 */  sra        $v0, $v0, 0x18
/* 18B50C 8003BACC 03A21021 */  addu       $v0, $sp, $v0
/* 18B510 8003BAD0 80420060 */  lb         $v0, 0x60($v0)
/* 18B514 8003BAD4 1040001C */  beqz       $v0, .L8003BB48
/* 18B518 8003BAD8 24110005 */   addiu     $s1, $zero, 5
/* 18B51C 8003BADC 00121600 */  sll        $v0, $s2, 0x18
/* 18B520 8003BAE0 00029E03 */  sra        $s3, $v0, 0x18
.L8003BAE4:
/* 18B524 8003BAE4 00111600 */  sll        $v0, $s1, 0x18
/* 18B528 8003BAE8 00021603 */  sra        $v0, $v0, 0x18
/* 18B52C 8003BAEC 00531021 */  addu       $v0, $v0, $s3
/* 18B530 8003BAF0 00028040 */  sll        $s0, $v0, 1
/* 18B534 8003BAF4 02028021 */  addu       $s0, $s0, $v0
/* 18B538 8003BAF8 00108080 */  sll        $s0, $s0, 2
/* 18B53C 8003BAFC 02158021 */  addu       $s0, $s0, $s5
/* 18B540 8003BB00 AFB70010 */  sw         $s7, 0x10($sp)
/* 18B544 8003BB04 8E040000 */  lw         $a0, ($s0)
/* 18B548 8003BB08 240500FF */  addiu      $a1, $zero, 0xff
/* 18B54C 8003BB0C 240600FF */  addiu      $a2, $zero, 0xff
/* 18B550 8003BB10 0C028E41 */  jal        func_800A3904
/* 18B554 8003BB14 240700FF */   addiu     $a3, $zero, 0xff
/* 18B558 8003BB18 8E040000 */  lw         $a0, ($s0)
/* 18B55C 8003BB1C 26220001 */  addiu      $v0, $s1, 1
/* 18B560 8003BB20 00408821 */  addu       $s1, $v0, $zero
/* 18B564 8003BB24 00021600 */  sll        $v0, $v0, 0x18
/* 18B568 8003BB28 9483001E */  lhu        $v1, 0x1e($a0)
/* 18B56C 8003BB2C 00021603 */  sra        $v0, $v0, 0x18
/* 18B570 8003BB30 28420010 */  slti       $v0, $v0, 0x10
/* 18B574 8003BB34 3063FBFF */  andi       $v1, $v1, 0xfbff
/* 18B578 8003BB38 1440FFEA */  bnez       $v0, .L8003BAE4
/* 18B57C 8003BB3C A483001E */   sh        $v1, 0x1e($a0)
/* 18B580 8003BB40 0800EEED */  j          .L8003BBB4
/* 18B584 8003BB44 2642000B */   addiu     $v0, $s2, 0xb
.L8003BB48:
/* 18B588 8003BB48 00121600 */  sll        $v0, $s2, 0x18
/* 18B58C 8003BB4C 00028603 */  sra        $s0, $v0, 0x18
/* 18B590 8003BB50 00111600 */  sll        $v0, $s1, 0x18
.L8003BB54:
/* 18B594 8003BB54 00021603 */  sra        $v0, $v0, 0x18
/* 18B598 8003BB58 00501021 */  addu       $v0, $v0, $s0
/* 18B59C 8003BB5C 00021840 */  sll        $v1, $v0, 1
/* 18B5A0 8003BB60 00621821 */  addu       $v1, $v1, $v0
/* 18B5A4 8003BB64 00031880 */  sll        $v1, $v1, 2
/* 18B5A8 8003BB68 00751821 */  addu       $v1, $v1, $s5
/* 18B5AC 8003BB6C 8C640000 */  lw         $a0, ($v1)
/* 18B5B0 8003BB70 9482001E */  lhu        $v0, 0x1e($a0)
/* 18B5B4 8003BB74 240500FF */  addiu      $a1, $zero, 0xff
/* 18B5B8 8003BB78 34420400 */  ori        $v0, $v0, 0x400
/* 18B5BC 8003BB7C A482001E */  sh         $v0, 0x1e($a0)
/* 18B5C0 8003BB80 AFB60010 */  sw         $s6, 0x10($sp)
/* 18B5C4 8003BB84 8C640000 */  lw         $a0, ($v1)
/* 18B5C8 8003BB88 240600FF */  addiu      $a2, $zero, 0xff
/* 18B5CC 8003BB8C 0C028E41 */  jal        func_800A3904
/* 18B5D0 8003BB90 240700FF */   addiu     $a3, $zero, 0xff
/* 18B5D4 8003BB94 26220001 */  addiu      $v0, $s1, 1
/* 18B5D8 8003BB98 00408821 */  addu       $s1, $v0, $zero
/* 18B5DC 8003BB9C 00021600 */  sll        $v0, $v0, 0x18
/* 18B5E0 8003BBA0 00021603 */  sra        $v0, $v0, 0x18
/* 18B5E4 8003BBA4 28420010 */  slti       $v0, $v0, 0x10
/* 18B5E8 8003BBA8 1440FFEA */  bnez       $v0, .L8003BB54
/* 18B5EC 8003BBAC 00111600 */   sll       $v0, $s1, 0x18
/* 18B5F0 8003BBB0 2642000B */  addiu      $v0, $s2, 0xb
.L8003BBB4:
/* 18B5F4 8003BBB4 00409021 */  addu       $s2, $v0, $zero
/* 18B5F8 8003BBB8 00021600 */  sll        $v0, $v0, 0x18
/* 18B5FC 8003BBBC 00021603 */  sra        $v0, $v0, 0x18
/* 18B600 8003BBC0 2842001E */  slti       $v0, $v0, 0x1e
/* 18B604 8003BBC4 1440FFBF */  bnez       $v0, .L8003BAC4
/* 18B608 8003BBC8 26940001 */   addiu     $s4, $s4, 1
/* 18B60C 8003BBCC 8FBF0098 */  lw         $ra, 0x98($sp)
/* 18B610 8003BBD0 8FB70094 */  lw         $s7, 0x94($sp)
/* 18B614 8003BBD4 8FB60090 */  lw         $s6, 0x90($sp)
/* 18B618 8003BBD8 8FB5008C */  lw         $s5, 0x8c($sp)
/* 18B61C 8003BBDC 8FB40088 */  lw         $s4, 0x88($sp)
/* 18B620 8003BBE0 8FB30084 */  lw         $s3, 0x84($sp)
/* 18B624 8003BBE4 8FB20080 */  lw         $s2, 0x80($sp)
/* 18B628 8003BBE8 8FB1007C */  lw         $s1, 0x7c($sp)
/* 18B62C 8003BBEC 8FB00078 */  lw         $s0, 0x78($sp)
/* 18B630 8003BBF0 D7B600A8 */  ldc1       $f22, 0xa8($sp)
/* 18B634 8003BBF4 D7B400A0 */  ldc1       $f20, 0xa0($sp)
/* 18B638 8003BBF8 03E00008 */  jr         $ra
/* 18B63C 8003BBFC 27BD00B0 */   addiu     $sp, $sp, 0xb0

glabel func_8003BC00_18B640
/* 18B640 8003BC00 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18B644 8003BC04 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18B648 8003BC08 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B64C 8003BC0C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B650 8003BC10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18B654 8003BC14 AFBF0024 */  sw         $ra, 0x24($sp)
/* 18B658 8003BC18 AFB00020 */  sw         $s0, 0x20($sp)
/* 18B65C 8003BC1C 14600004 */  bnez       $v1, .L8003BC30
/* 18B660 8003BC20 8C50002C */   lw        $s0, 0x2c($v0)
/* 18B664 8003BC24 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18B668 8003BC28 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18B66C 8003BC2C A4400000 */  sh         $zero, ($v0)
.L8003BC30:
/* 18B670 8003BC30 3C048005 */  lui        $a0, %hi(D_80052218)
/* 18B674 8003BC34 8C842218 */  lw         $a0, %lo(D_80052218)($a0)
/* 18B678 8003BC38 84820000 */  lh         $v0, ($a0)
/* 18B67C 8003BC3C 1C400013 */  bgtz       $v0, .L8003BC8C
/* 18B680 8003BC40 00401821 */   addu      $v1, $v0, $zero
/* 18B684 8003BC44 0C02591A */  jal        func_80096468
/* 18B688 8003BC48 24040002 */   addiu     $a0, $zero, 2
/* 18B68C 8003BC4C 3C038005 */  lui        $v1, %hi(D_80052218)
/* 18B690 8003BC50 8C632218 */  lw         $v1, %lo(D_80052218)($v1)
/* 18B694 8003BC54 24040027 */  addiu      $a0, $zero, 0x27
/* 18B698 8003BC58 24420002 */  addiu      $v0, $v0, 2
/* 18B69C 8003BC5C 0C02591A */  jal        func_80096468
/* 18B6A0 8003BC60 A4620000 */   sh        $v0, ($v1)
/* 18B6A4 8003BC64 244200D8 */  addiu      $v0, $v0, 0xd8
/* 18B6A8 8003BC68 304200FF */  andi       $v0, $v0, 0xff
/* 18B6AC 8003BC6C AFA20010 */  sw         $v0, 0x10($sp)
/* 18B6B0 8003BC70 8E040000 */  lw         $a0, ($s0)
/* 18B6B4 8003BC74 240500FF */  addiu      $a1, $zero, 0xff
/* 18B6B8 8003BC78 240600FF */  addiu      $a2, $zero, 0xff
/* 18B6BC 8003BC7C 0C028E41 */  jal        func_800A3904
/* 18B6C0 8003BC80 240700FF */   addiu     $a3, $zero, 0xff
/* 18B6C4 8003BC84 0800EF25 */  j          .L8003BC94
/* 18B6C8 8003BC88 00000000 */   nop
.L8003BC8C:
/* 18B6CC 8003BC8C 2462FFFF */  addiu      $v0, $v1, -1
/* 18B6D0 8003BC90 A4820000 */  sh         $v0, ($a0)
.L8003BC94:
/* 18B6D4 8003BC94 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18B6D8 8003BC98 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18B6DC 8003BC9C 2402FFFF */  addiu      $v0, $zero, -1
/* 18B6E0 8003BCA0 1062000B */  beq        $v1, $v0, .L8003BCD0
/* 18B6E4 8003BCA4 2402001E */   addiu     $v0, $zero, 0x1e
/* 18B6E8 8003BCA8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B6EC 8003BCAC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B6F0 8003BCB0 14620007 */  bne        $v1, $v0, .L8003BCD0
/* 18B6F4 8003BCB4 24020064 */   addiu     $v0, $zero, 0x64
/* 18B6F8 8003BCB8 AFA20010 */  sw         $v0, 0x10($sp)
/* 18B6FC 8003BCBC 24040164 */  addiu      $a0, $zero, 0x164
/* 18B700 8003BCC0 24050060 */  addiu      $a1, $zero, 0x60
/* 18B704 8003BCC4 24060080 */  addiu      $a2, $zero, 0x80
/* 18B708 8003BCC8 0C026E0C */  jal        func_8009B830
/* 18B70C 8003BCCC 24070001 */   addiu     $a3, $zero, 1
.L8003BCD0:
/* 18B710 8003BCD0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 18B714 8003BCD4 8FB00020 */  lw         $s0, 0x20($sp)
/* 18B718 8003BCD8 03E00008 */  jr         $ra
/* 18B71C 8003BCDC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003BCE0_18B720
/* 18B720 8003BCE0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18B724 8003BCE4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18B728 8003BCE8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B72C 8003BCEC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B730 8003BCF0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 18B734 8003BCF4 AFBF0060 */  sw         $ra, 0x60($sp)
/* 18B738 8003BCF8 AFB1005C */  sw         $s1, 0x5c($sp)
/* 18B73C 8003BCFC AFB00058 */  sw         $s0, 0x58($sp)
/* 18B740 8003BD00 8C50002C */  lw         $s0, 0x2c($v0)
/* 18B744 8003BD04 3C068005 */  lui        $a2, %hi(D_80051B80)
/* 18B748 8003BD08 24C61B80 */  addiu      $a2, $a2, %lo(D_80051B80)
/* 18B74C 8003BD0C 88C20000 */  lwl        $v0, ($a2)
/* 18B750 8003BD10 98C20003 */  lwr        $v0, 3($a2)
/* 18B754 8003BD14 88C40004 */  lwl        $a0, 4($a2)
/* 18B758 8003BD18 98C40007 */  lwr        $a0, 7($a2)
/* 18B75C 8003BD1C 88C50008 */  lwl        $a1, 8($a2)
/* 18B760 8003BD20 98C5000B */  lwr        $a1, 0xb($a2)
/* 18B764 8003BD24 ABA20018 */  swl        $v0, 0x18($sp)
/* 18B768 8003BD28 BBA2001B */  swr        $v0, 0x1b($sp)
/* 18B76C 8003BD2C ABA4001C */  swl        $a0, 0x1c($sp)
/* 18B770 8003BD30 BBA4001F */  swr        $a0, 0x1f($sp)
/* 18B774 8003BD34 ABA50020 */  swl        $a1, 0x20($sp)
/* 18B778 8003BD38 BBA50023 */  swr        $a1, 0x23($sp)
/* 18B77C 8003BD3C 88C2000C */  lwl        $v0, 0xc($a2)
/* 18B780 8003BD40 98C2000F */  lwr        $v0, 0xf($a2)
/* 18B784 8003BD44 88C40010 */  lwl        $a0, 0x10($a2)
/* 18B788 8003BD48 98C40013 */  lwr        $a0, 0x13($a2)
/* 18B78C 8003BD4C 88C50014 */  lwl        $a1, 0x14($a2)
/* 18B790 8003BD50 98C50017 */  lwr        $a1, 0x17($a2)
/* 18B794 8003BD54 ABA20024 */  swl        $v0, 0x24($sp)
/* 18B798 8003BD58 BBA20027 */  swr        $v0, 0x27($sp)
/* 18B79C 8003BD5C ABA40028 */  swl        $a0, 0x28($sp)
/* 18B7A0 8003BD60 BBA4002B */  swr        $a0, 0x2b($sp)
/* 18B7A4 8003BD64 ABA5002C */  swl        $a1, 0x2c($sp)
/* 18B7A8 8003BD68 BBA5002F */  swr        $a1, 0x2f($sp)
/* 18B7AC 8003BD6C 88C20018 */  lwl        $v0, 0x18($a2)
/* 18B7B0 8003BD70 98C2001B */  lwr        $v0, 0x1b($a2)
/* 18B7B4 8003BD74 80C4001C */  lb         $a0, 0x1c($a2)
/* 18B7B8 8003BD78 80C5001D */  lb         $a1, 0x1d($a2)
/* 18B7BC 8003BD7C ABA20030 */  swl        $v0, 0x30($sp)
/* 18B7C0 8003BD80 BBA20033 */  swr        $v0, 0x33($sp)
/* 18B7C4 8003BD84 A3A40034 */  sb         $a0, 0x34($sp)
/* 18B7C8 8003BD88 A3A50035 */  sb         $a1, 0x35($sp)
/* 18B7CC 8003BD8C 2402001E */  addiu      $v0, $zero, 0x1e
/* 18B7D0 8003BD90 A3A2004A */  sb         $v0, 0x4a($sp)
/* 18B7D4 8003BD94 24020006 */  addiu      $v0, $zero, 6
/* 18B7D8 8003BD98 A3A2004B */  sb         $v0, 0x4b($sp)
/* 18B7DC 8003BD9C 24020002 */  addiu      $v0, $zero, 2
/* 18B7E0 8003BDA0 A3A2004C */  sb         $v0, 0x4c($sp)
/* 18B7E4 8003BDA4 27A20018 */  addiu      $v0, $sp, 0x18
/* 18B7E8 8003BDA8 A7A00048 */  sh         $zero, 0x48($sp)
/* 18B7EC 8003BDAC A3A0004D */  sb         $zero, 0x4d($sp)
/* 18B7F0 8003BDB0 AFA20050 */  sw         $v0, 0x50($sp)
/* 18B7F4 8003BDB4 8FA20048 */  lw         $v0, 0x48($sp)
/* 18B7F8 8003BDB8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 18B7FC 8003BDBC 8FA50050 */  lw         $a1, 0x50($sp)
/* 18B800 8003BDC0 AFA20038 */  sw         $v0, 0x38($sp)
/* 18B804 8003BDC4 AFA4003C */  sw         $a0, 0x3c($sp)
/* 18B808 8003BDC8 14600004 */  bnez       $v1, .L8003BDDC
/* 18B80C 8003BDCC AFA50040 */   sw        $a1, 0x40($sp)
/* 18B810 8003BDD0 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18B814 8003BDD4 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18B818 8003BDD8 A4400000 */  sh         $zero, ($v0)
.L8003BDDC:
/* 18B81C 8003BDDC 8FA40038 */  lw         $a0, 0x38($sp)
/* 18B820 8003BDE0 8FA5003C */  lw         $a1, 0x3c($sp)
/* 18B824 8003BDE4 8FA60040 */  lw         $a2, 0x40($sp)
/* 18B828 8003BDE8 3C078005 */  lui        $a3, %hi(D_80052038)
/* 18B82C 8003BDEC 0C00D4EF */  jal        func_800353BC_184DFC
/* 18B830 8003BDF0 84E72038 */   lh        $a3, %lo(D_80052038)($a3)
/* 18B834 8003BDF4 00408821 */  addu       $s1, $v0, $zero
/* 18B838 8003BDF8 2E220007 */  sltiu      $v0, $s1, 7
/* 18B83C 8003BDFC 1040001B */  beqz       $v0, .L8003BE6C
/* 18B840 8003BE00 00111080 */   sll       $v0, $s1, 2
/* 18B844 8003BE04 3C018005 */  lui        $at, %hi(D_80051BA0)
/* 18B848 8003BE08 00220821 */  addu       $at, $at, $v0
/* 18B84C 8003BE0C 8C221BA0 */  lw         $v0, %lo(D_80051BA0)($at)
/* 18B850 8003BE10 00400008 */  jr         $v0
/* 18B854 8003BE14 00000000 */   nop
/* 18B858 8003BE18 0C028A40 */  jal        func_800A2900
/* 18B85C 8003BE1C 8E040024 */   lw        $a0, 0x24($s0)
/* 18B860 8003BE20 0C028A40 */  jal        func_800A2900
/* 18B864 8003BE24 8E040018 */   lw        $a0, 0x18($s0)
/* 18B868 8003BE28 0800EF99 */  j          .L8003BE64
/* 18B86C 8003BE2C 8E04000C */   lw        $a0, 0xc($s0)
/* 18B870 8003BE30 0800EF99 */  j          .L8003BE64
/* 18B874 8003BE34 8E040030 */   lw        $a0, 0x30($s0)
/* 18B878 8003BE38 0C028A40 */  jal        func_800A2900
/* 18B87C 8003BE3C 8E040054 */   lw        $a0, 0x54($s0)
/* 18B880 8003BE40 0C028A40 */  jal        func_800A2900
/* 18B884 8003BE44 8E04003C */   lw        $a0, 0x3c($s0)
/* 18B888 8003BE48 0800EF99 */  j          .L8003BE64
/* 18B88C 8003BE4C 8E040048 */   lw        $a0, 0x48($s0)
/* 18B890 8003BE50 0C028A40 */  jal        func_800A2900
/* 18B894 8003BE54 8E040054 */   lw        $a0, 0x54($s0)
/* 18B898 8003BE58 0C028A40 */  jal        func_800A2900
/* 18B89C 8003BE5C 8E040060 */   lw        $a0, 0x60($s0)
/* 18B8A0 8003BE60 8E04006C */  lw         $a0, 0x6c($s0)
.L8003BE64:
/* 18B8A4 8003BE64 0C028A40 */  jal        func_800A2900
/* 18B8A8 8003BE68 00000000 */   nop
.L8003BE6C:
/* 18B8AC 8003BE6C 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18B8B0 8003BE70 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18B8B4 8003BE74 2402FFFF */  addiu      $v0, $zero, -1
/* 18B8B8 8003BE78 10620019 */  beq        $v1, $v0, .L8003BEE0
/* 18B8BC 8003BE7C 00000000 */   nop
/* 18B8C0 8003BE80 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18B8C4 8003BE84 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18B8C8 8003BE88 3C02AAAA */  lui        $v0, 0xaaaa
/* 18B8CC 8003BE8C 3442AAAB */  ori        $v0, $v0, 0xaaab
/* 18B8D0 8003BE90 00620019 */  multu      $v1, $v0
/* 18B8D4 8003BE94 00004010 */  mfhi       $t0
/* 18B8D8 8003BE98 00082082 */  srl        $a0, $t0, 2
/* 18B8DC 8003BE9C 00041040 */  sll        $v0, $a0, 1
/* 18B8E0 8003BEA0 00441021 */  addu       $v0, $v0, $a0
/* 18B8E4 8003BEA4 00021040 */  sll        $v0, $v0, 1
/* 18B8E8 8003BEA8 00621823 */  subu       $v1, $v1, $v0
/* 18B8EC 8003BEAC 3063FFFF */  andi       $v1, $v1, 0xffff
/* 18B8F0 8003BEB0 2C630001 */  sltiu      $v1, $v1, 1
/* 18B8F4 8003BEB4 3A220003 */  xori       $v0, $s1, 3
/* 18B8F8 8003BEB8 2C420001 */  sltiu      $v0, $v0, 1
/* 18B8FC 8003BEBC 00621824 */  and        $v1, $v1, $v0
/* 18B900 8003BEC0 10600007 */  beqz       $v1, .L8003BEE0
/* 18B904 8003BEC4 24020064 */   addiu     $v0, $zero, 0x64
/* 18B908 8003BEC8 AFA20010 */  sw         $v0, 0x10($sp)
/* 18B90C 8003BECC 24040066 */  addiu      $a0, $zero, 0x66
/* 18B910 8003BED0 24050080 */  addiu      $a1, $zero, 0x80
/* 18B914 8003BED4 24060080 */  addiu      $a2, $zero, 0x80
/* 18B918 8003BED8 0C026E0C */  jal        func_8009B830
/* 18B91C 8003BEDC 24070001 */   addiu     $a3, $zero, 1
.L8003BEE0:
/* 18B920 8003BEE0 8FBF0060 */  lw         $ra, 0x60($sp)
/* 18B924 8003BEE4 8FB1005C */  lw         $s1, 0x5c($sp)
/* 18B928 8003BEE8 8FB00058 */  lw         $s0, 0x58($sp)
/* 18B92C 8003BEEC 03E00008 */  jr         $ra
/* 18B930 8003BEF0 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8003BEF4_18B934
/* 18B934 8003BEF4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 18B938 8003BEF8 27A70030 */  addiu      $a3, $sp, 0x30
/* 18B93C 8003BEFC 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18B940 8003BF00 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18B944 8003BF04 3C068005 */  lui        $a2, %hi(D_80051BBC)
/* 18B948 8003BF08 24C61BBC */  addiu      $a2, $a2, %lo(D_80051BBC)
/* 18B94C 8003BF0C 24C80020 */  addiu      $t0, $a2, 0x20
/* 18B950 8003BF10 AFBF006C */  sw         $ra, 0x6c($sp)
/* 18B954 8003BF14 AFB20068 */  sw         $s2, 0x68($sp)
/* 18B958 8003BF18 AFB10064 */  sw         $s1, 0x64($sp)
/* 18B95C 8003BF1C AFB00060 */  sw         $s0, 0x60($sp)
/* 18B960 8003BF20 F7B40070 */  sdc1       $f20, 0x70($sp)
/* 18B964 8003BF24 8C520028 */  lw         $s2, 0x28($v0)
.L8003BF28:
/* 18B968 8003BF28 8CC20000 */  lw         $v0, ($a2)
/* 18B96C 8003BF2C 8CC30004 */  lw         $v1, 4($a2)
/* 18B970 8003BF30 8CC40008 */  lw         $a0, 8($a2)
/* 18B974 8003BF34 8CC5000C */  lw         $a1, 0xc($a2)
/* 18B978 8003BF38 ACE20000 */  sw         $v0, ($a3)
/* 18B97C 8003BF3C ACE30004 */  sw         $v1, 4($a3)
/* 18B980 8003BF40 ACE40008 */  sw         $a0, 8($a3)
/* 18B984 8003BF44 ACE5000C */  sw         $a1, 0xc($a3)
/* 18B988 8003BF48 24C60010 */  addiu      $a2, $a2, 0x10
/* 18B98C 8003BF4C 14C8FFF6 */  bne        $a2, $t0, .L8003BF28
/* 18B990 8003BF50 24E70010 */   addiu     $a3, $a3, 0x10
/* 18B994 8003BF54 8CC20000 */  lw         $v0, ($a2)
/* 18B998 8003BF58 8CC30004 */  lw         $v1, 4($a2)
/* 18B99C 8003BF5C 8CC40008 */  lw         $a0, 8($a2)
/* 18B9A0 8003BF60 ACE20000 */  sw         $v0, ($a3)
/* 18B9A4 8003BF64 ACE30004 */  sw         $v1, 4($a3)
/* 18B9A8 8003BF68 ACE40008 */  sw         $a0, 8($a3)
/* 18B9AC 8003BF6C 3C108005 */  lui        $s0, %hi(D_80052038)
/* 18B9B0 8003BF70 96102038 */  lhu        $s0, %lo(D_80052038)($s0)
/* 18B9B4 8003BF74 1600003A */  bnez       $s0, .L8003C060
/* 18B9B8 8003BF78 00000000 */   nop
/* 18B9BC 8003BF7C 8E440158 */  lw         $a0, 0x158($s2)
/* 18B9C0 8003BF80 3C058005 */  lui        $a1, %hi(D_80051BE8)
/* 18B9C4 8003BF84 24A51BE8 */  addiu      $a1, $a1, %lo(D_80051BE8)
/* 18B9C8 8003BF88 0C0285D4 */  jal        func_800A1750
/* 18B9CC 8003BF8C 00008821 */   addu      $s1, $zero, $zero
/* 18B9D0 8003BF90 3403AD6A */  ori        $v1, $zero, 0xad6a
/* 18B9D4 8003BF94 A4430002 */  sh         $v1, 2($v0)
/* 18B9D8 8003BF98 8FA20040 */  lw         $v0, 0x40($sp)
/* 18B9DC 8003BF9C 8FA30044 */  lw         $v1, 0x44($sp)
/* 18B9E0 8003BFA0 8FA40048 */  lw         $a0, 0x48($sp)
/* 18B9E4 8003BFA4 8FA5004C */  lw         $a1, 0x4c($sp)
/* 18B9E8 8003BFA8 AFA20010 */  sw         $v0, 0x10($sp)
/* 18B9EC 8003BFAC AFA30014 */  sw         $v1, 0x14($sp)
/* 18B9F0 8003BFB0 AFA40018 */  sw         $a0, 0x18($sp)
/* 18B9F4 8003BFB4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 18B9F8 8003BFB8 8FA20050 */  lw         $v0, 0x50($sp)
/* 18B9FC 8003BFBC 8FA30054 */  lw         $v1, 0x54($sp)
/* 18BA00 8003BFC0 8FA40058 */  lw         $a0, 0x58($sp)
/* 18BA04 8003BFC4 AFA20020 */  sw         $v0, 0x20($sp)
/* 18BA08 8003BFC8 AFA30024 */  sw         $v1, 0x24($sp)
/* 18BA0C 8003BFCC AFA40028 */  sw         $a0, 0x28($sp)
/* 18BA10 8003BFD0 8FA40030 */  lw         $a0, 0x30($sp)
/* 18BA14 8003BFD4 8FA50034 */  lw         $a1, 0x34($sp)
/* 18BA18 8003BFD8 8FA60038 */  lw         $a2, 0x38($sp)
/* 18BA1C 8003BFDC 0C0099F7 */  jal        func_800267DC_17621C
/* 18BA20 8003BFE0 8FA7003C */   lw        $a3, 0x3c($sp)
/* 18BA24 8003BFE4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18BA28 8003BFE8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18BA2C 8003BFEC 9442000C */  lhu        $v0, 0xc($v0)
/* 18BA30 8003BFF0 0202102A */  slt        $v0, $s0, $v0
/* 18BA34 8003BFF4 1040001A */  beqz       $v0, .L8003C060
/* 18BA38 8003BFF8 00111600 */   sll       $v0, $s1, 0x18
/* 18BA3C 8003BFFC 3C014000 */  lui        $at, 0x4000
/* 18BA40 8003C000 4481A000 */  mtc1       $at, $f20
.L8003C004:
/* 18BA44 8003C004 00021603 */  sra        $v0, $v0, 0x18
/* 18BA48 8003C008 00028100 */  sll        $s0, $v0, 4
/* 18BA4C 8003C00C 02028023 */  subu       $s0, $s0, $v0
/* 18BA50 8003C010 001080C0 */  sll        $s0, $s0, 3
/* 18BA54 8003C014 02128021 */  addu       $s0, $s0, $s2
/* 18BA58 8003C018 8E04006C */  lw         $a0, 0x6c($s0)
/* 18BA5C 8003C01C 4405A000 */  mfc1       $a1, $f20
/* 18BA60 8003C020 0C02795C */  jal        func_8009E570
/* 18BA64 8003C024 00000000 */   nop
/* 18BA68 8003C028 8E040070 */  lw         $a0, 0x70($s0)
/* 18BA6C 8003C02C 4405A000 */  mfc1       $a1, $f20
/* 18BA70 8003C030 0C027C5E */  jal        func_8009F178
/* 18BA74 8003C034 00000000 */   nop
/* 18BA78 8003C038 3C038005 */  lui        $v1, %hi(D_80052000)
/* 18BA7C 8003C03C 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 18BA80 8003C040 26220001 */  addiu      $v0, $s1, 1
/* 18BA84 8003C044 00408821 */  addu       $s1, $v0, $zero
/* 18BA88 8003C048 9463000C */  lhu        $v1, 0xc($v1)
/* 18BA8C 8003C04C 00021600 */  sll        $v0, $v0, 0x18
/* 18BA90 8003C050 00021603 */  sra        $v0, $v0, 0x18
/* 18BA94 8003C054 0043102A */  slt        $v0, $v0, $v1
/* 18BA98 8003C058 1440FFEA */  bnez       $v0, .L8003C004
/* 18BA9C 8003C05C 00111600 */   sll       $v0, $s1, 0x18
.L8003C060:
/* 18BAA0 8003C060 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18BAA4 8003C064 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18BAA8 8003C068 2402FFFF */  addiu      $v0, $zero, -1
/* 18BAAC 8003C06C 1062000F */  beq        $v1, $v0, .L8003C0AC
/* 18BAB0 8003C070 00000000 */   nop
/* 18BAB4 8003C074 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18BAB8 8003C078 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18BABC 8003C07C 2C430001 */  sltiu      $v1, $v0, 1
/* 18BAC0 8003C080 3842001E */  xori       $v0, $v0, 0x1e
/* 18BAC4 8003C084 2C420001 */  sltiu      $v0, $v0, 1
/* 18BAC8 8003C088 00621825 */  or         $v1, $v1, $v0
/* 18BACC 8003C08C 10600007 */  beqz       $v1, .L8003C0AC
/* 18BAD0 8003C090 24020064 */   addiu     $v0, $zero, 0x64
/* 18BAD4 8003C094 AFA20010 */  sw         $v0, 0x10($sp)
/* 18BAD8 8003C098 240400B0 */  addiu      $a0, $zero, 0xb0
/* 18BADC 8003C09C 24050080 */  addiu      $a1, $zero, 0x80
/* 18BAE0 8003C0A0 24060080 */  addiu      $a2, $zero, 0x80
/* 18BAE4 8003C0A4 0C026E0C */  jal        func_8009B830
/* 18BAE8 8003C0A8 24070001 */   addiu     $a3, $zero, 1
.L8003C0AC:
/* 18BAEC 8003C0AC 8FBF006C */  lw         $ra, 0x6c($sp)
/* 18BAF0 8003C0B0 8FB20068 */  lw         $s2, 0x68($sp)
/* 18BAF4 8003C0B4 8FB10064 */  lw         $s1, 0x64($sp)
/* 18BAF8 8003C0B8 8FB00060 */  lw         $s0, 0x60($sp)
/* 18BAFC 8003C0BC D7B40070 */  ldc1       $f20, 0x70($sp)
/* 18BB00 8003C0C0 03E00008 */  jr         $ra
/* 18BB04 8003C0C4 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8003C0C8_18BB08
/* 18BB08 8003C0C8 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 18BB0C 8003C0CC 27A70030 */  addiu      $a3, $sp, 0x30
/* 18BB10 8003C0D0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18BB14 8003C0D4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18BB18 8003C0D8 3C068005 */  lui        $a2, %hi(D_80051BF0)
/* 18BB1C 8003C0DC 24C61BF0 */  addiu      $a2, $a2, %lo(D_80051BF0)
/* 18BB20 8003C0E0 24C80020 */  addiu      $t0, $a2, 0x20
/* 18BB24 8003C0E4 AFBF0134 */  sw         $ra, 0x134($sp)
/* 18BB28 8003C0E8 AFB40130 */  sw         $s4, 0x130($sp)
/* 18BB2C 8003C0EC AFB3012C */  sw         $s3, 0x12c($sp)
/* 18BB30 8003C0F0 AFB20128 */  sw         $s2, 0x128($sp)
/* 18BB34 8003C0F4 AFB10124 */  sw         $s1, 0x124($sp)
/* 18BB38 8003C0F8 AFB00120 */  sw         $s0, 0x120($sp)
/* 18BB3C 8003C0FC F7BC0158 */  sdc1       $f28, 0x158($sp)
/* 18BB40 8003C100 F7BA0150 */  sdc1       $f26, 0x150($sp)
/* 18BB44 8003C104 F7B80148 */  sdc1       $f24, 0x148($sp)
/* 18BB48 8003C108 F7B60140 */  sdc1       $f22, 0x140($sp)
/* 18BB4C 8003C10C F7B40138 */  sdc1       $f20, 0x138($sp)
/* 18BB50 8003C110 8C54002C */  lw         $s4, 0x2c($v0)
/* 18BB54 8003C114 8C530028 */  lw         $s3, 0x28($v0)
.L8003C118:
/* 18BB58 8003C118 8CC20000 */  lw         $v0, ($a2)
/* 18BB5C 8003C11C 8CC30004 */  lw         $v1, 4($a2)
/* 18BB60 8003C120 8CC40008 */  lw         $a0, 8($a2)
/* 18BB64 8003C124 8CC5000C */  lw         $a1, 0xc($a2)
/* 18BB68 8003C128 ACE20000 */  sw         $v0, ($a3)
/* 18BB6C 8003C12C ACE30004 */  sw         $v1, 4($a3)
/* 18BB70 8003C130 ACE40008 */  sw         $a0, 8($a3)
/* 18BB74 8003C134 ACE5000C */  sw         $a1, 0xc($a3)
/* 18BB78 8003C138 24C60010 */  addiu      $a2, $a2, 0x10
/* 18BB7C 8003C13C 14C8FFF6 */  bne        $a2, $t0, .L8003C118
/* 18BB80 8003C140 24E70010 */   addiu     $a3, $a3, 0x10
/* 18BB84 8003C144 8CC20000 */  lw         $v0, ($a2)
/* 18BB88 8003C148 8CC30004 */  lw         $v1, 4($a2)
/* 18BB8C 8003C14C 8CC40008 */  lw         $a0, 8($a2)
/* 18BB90 8003C150 ACE20000 */  sw         $v0, ($a3)
/* 18BB94 8003C154 ACE30004 */  sw         $v1, 4($a3)
/* 18BB98 8003C158 ACE40008 */  sw         $a0, 8($a3)
/* 18BB9C 8003C15C 27A70060 */  addiu      $a3, $sp, 0x60
/* 18BBA0 8003C160 3C068005 */  lui        $a2, %hi(D_80051C1C)
/* 18BBA4 8003C164 24C61C1C */  addiu      $a2, $a2, %lo(D_80051C1C)
/* 18BBA8 8003C168 24C80020 */  addiu      $t0, $a2, 0x20
.L8003C16C:
/* 18BBAC 8003C16C 8CC20000 */  lw         $v0, ($a2)
/* 18BBB0 8003C170 8CC30004 */  lw         $v1, 4($a2)
/* 18BBB4 8003C174 8CC40008 */  lw         $a0, 8($a2)
/* 18BBB8 8003C178 8CC5000C */  lw         $a1, 0xc($a2)
/* 18BBBC 8003C17C ACE20000 */  sw         $v0, ($a3)
/* 18BBC0 8003C180 ACE30004 */  sw         $v1, 4($a3)
/* 18BBC4 8003C184 ACE40008 */  sw         $a0, 8($a3)
/* 18BBC8 8003C188 ACE5000C */  sw         $a1, 0xc($a3)
/* 18BBCC 8003C18C 24C60010 */  addiu      $a2, $a2, 0x10
/* 18BBD0 8003C190 14C8FFF6 */  bne        $a2, $t0, .L8003C16C
/* 18BBD4 8003C194 24E70010 */   addiu     $a3, $a3, 0x10
/* 18BBD8 8003C198 8CC20000 */  lw         $v0, ($a2)
/* 18BBDC 8003C19C 8CC30004 */  lw         $v1, 4($a2)
/* 18BBE0 8003C1A0 8CC40008 */  lw         $a0, 8($a2)
/* 18BBE4 8003C1A4 ACE20000 */  sw         $v0, ($a3)
/* 18BBE8 8003C1A8 ACE30004 */  sw         $v1, 4($a3)
/* 18BBEC 8003C1AC ACE40008 */  sw         $a0, 8($a3)
/* 18BBF0 8003C1B0 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18BBF4 8003C1B4 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18BBF8 8003C1B8 2402FFFF */  addiu      $v0, $zero, -1
/* 18BBFC 8003C1BC 10620012 */  beq        $v1, $v0, .L8003C208
/* 18BC00 8003C1C0 00000000 */   nop
/* 18BC04 8003C1C4 3C048005 */  lui        $a0, %hi(D_80052038)
/* 18BC08 8003C1C8 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 18BC0C 8003C1CC 2C830001 */  sltiu      $v1, $a0, 1
/* 18BC10 8003C1D0 3882001E */  xori       $v0, $a0, 0x1e
/* 18BC14 8003C1D4 2C420001 */  sltiu      $v0, $v0, 1
/* 18BC18 8003C1D8 00621825 */  or         $v1, $v1, $v0
/* 18BC1C 8003C1DC 14600004 */  bnez       $v1, .L8003C1F0
/* 18BC20 8003C1E0 24020064 */   addiu     $v0, $zero, 0x64
/* 18BC24 8003C1E4 2402003C */  addiu      $v0, $zero, 0x3c
/* 18BC28 8003C1E8 14820007 */  bne        $a0, $v0, .L8003C208
/* 18BC2C 8003C1EC 24020064 */   addiu     $v0, $zero, 0x64
.L8003C1F0:
/* 18BC30 8003C1F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 18BC34 8003C1F4 240400B0 */  addiu      $a0, $zero, 0xb0
/* 18BC38 8003C1F8 24050080 */  addiu      $a1, $zero, 0x80
/* 18BC3C 8003C1FC 24060080 */  addiu      $a2, $zero, 0x80
/* 18BC40 8003C200 0C026E0C */  jal        func_8009B830
/* 18BC44 8003C204 24070001 */   addiu     $a3, $zero, 1
.L8003C208:
/* 18BC48 8003C208 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18BC4C 8003C20C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18BC50 8003C210 14400047 */  bnez       $v0, .L8003C330
/* 18BC54 8003C214 00000000 */   nop
/* 18BC58 8003C218 8E6401D0 */  lw         $a0, 0x1d0($s3)
/* 18BC5C 8003C21C 3C118005 */  lui        $s1, %hi(D_80051BE8)
/* 18BC60 8003C220 26311BE8 */  addiu      $s1, $s1, %lo(D_80051BE8)
/* 18BC64 8003C224 3C0143B0 */  lui        $at, 0x43b0
/* 18BC68 8003C228 4481B000 */  mtc1       $at, $f22
/* 18BC6C 8003C22C 3C014110 */  lui        $at, 0x4110
/* 18BC70 8003C230 4481E000 */  mtc1       $at, $f28
/* 18BC74 8003C234 00000000 */  nop
/* 18BC78 8003C238 0C0285D4 */  jal        func_800A1750
/* 18BC7C 8003C23C 02202821 */   addu      $a1, $s1, $zero
/* 18BC80 8003C240 3410AD6A */  ori        $s0, $zero, 0xad6a
/* 18BC84 8003C244 A4500002 */  sh         $s0, 2($v0)
/* 18BC88 8003C248 8E640248 */  lw         $a0, 0x248($s3)
/* 18BC8C 8003C24C 3C01C29E */  lui        $at, 0xc29e
/* 18BC90 8003C250 4481A000 */  mtc1       $at, $f20
/* 18BC94 8003C254 00000000 */  nop
/* 18BC98 8003C258 0C0285D4 */  jal        func_800A1750
/* 18BC9C 8003C25C 02202821 */   addu      $a1, $s1, $zero
/* 18BCA0 8003C260 A4500002 */  sh         $s0, 2($v0)
/* 18BCA4 8003C264 8E6402C0 */  lw         $a0, 0x2c0($s3)
/* 18BCA8 8003C268 2412000B */  addiu      $s2, $zero, 0xb
/* 18BCAC 8003C26C 0C0285D4 */  jal        func_800A1750
/* 18BCB0 8003C270 02202821 */   addu      $a1, $s1, $zero
/* 18BCB4 8003C274 A4500002 */  sh         $s0, 2($v0)
/* 18BCB8 8003C278 8FA20040 */  lw         $v0, 0x40($sp)
/* 18BCBC 8003C27C 8FA30044 */  lw         $v1, 0x44($sp)
/* 18BCC0 8003C280 8FA40048 */  lw         $a0, 0x48($sp)
/* 18BCC4 8003C284 8FA5004C */  lw         $a1, 0x4c($sp)
/* 18BCC8 8003C288 AFA20010 */  sw         $v0, 0x10($sp)
/* 18BCCC 8003C28C AFA30014 */  sw         $v1, 0x14($sp)
/* 18BCD0 8003C290 AFA40018 */  sw         $a0, 0x18($sp)
/* 18BCD4 8003C294 AFA5001C */  sw         $a1, 0x1c($sp)
/* 18BCD8 8003C298 8FA20050 */  lw         $v0, 0x50($sp)
/* 18BCDC 8003C29C 8FA30054 */  lw         $v1, 0x54($sp)
/* 18BCE0 8003C2A0 8FA40058 */  lw         $a0, 0x58($sp)
/* 18BCE4 8003C2A4 AFA20020 */  sw         $v0, 0x20($sp)
/* 18BCE8 8003C2A8 AFA30024 */  sw         $v1, 0x24($sp)
/* 18BCEC 8003C2AC AFA40028 */  sw         $a0, 0x28($sp)
/* 18BCF0 8003C2B0 8FA40030 */  lw         $a0, 0x30($sp)
/* 18BCF4 8003C2B4 8FA50034 */  lw         $a1, 0x34($sp)
/* 18BCF8 8003C2B8 8FA60038 */  lw         $a2, 0x38($sp)
/* 18BCFC 8003C2BC 8FA7003C */  lw         $a3, 0x3c($sp)
/* 18BD00 8003C2C0 3C0141F0 */  lui        $at, 0x41f0
/* 18BD04 8003C2C4 4481D000 */  mtc1       $at, $f26
/* 18BD08 8003C2C8 3C0140E0 */  lui        $at, 0x40e0
/* 18BD0C 8003C2CC 4481C000 */  mtc1       $at, $f24
/* 18BD10 8003C2D0 0C0099F7 */  jal        func_800267DC_17621C
/* 18BD14 8003C2D4 00000000 */   nop
.L8003C2D8:
/* 18BD18 8003C2D8 00121600 */  sll        $v0, $s2, 0x18
/* 18BD1C 8003C2DC 00021603 */  sra        $v0, $v0, 0x18
/* 18BD20 8003C2E0 00028100 */  sll        $s0, $v0, 4
/* 18BD24 8003C2E4 02028023 */  subu       $s0, $s0, $v0
/* 18BD28 8003C2E8 001080C0 */  sll        $s0, $s0, 3
/* 18BD2C 8003C2EC 02138021 */  addu       $s0, $s0, $s3
/* 18BD30 8003C2F0 8E040068 */  lw         $a0, 0x68($s0)
/* 18BD34 8003C2F4 3C058005 */  lui        $a1, %hi(D_80051C48)
/* 18BD38 8003C2F8 0C0285D4 */  jal        func_800A1750
/* 18BD3C 8003C2FC 24A51C48 */   addiu     $a1, $a1, %lo(D_80051C48)
/* 18BD40 8003C300 A4400000 */  sh         $zero, ($v0)
/* 18BD44 8003C304 26420001 */  addiu      $v0, $s2, 1
/* 18BD48 8003C308 00409021 */  addu       $s2, $v0, $zero
/* 18BD4C 8003C30C 00021600 */  sll        $v0, $v0, 0x18
/* 18BD50 8003C310 E6160018 */  swc1       $f22, 0x18($s0)
/* 18BD54 8003C314 461AB581 */  sub.s      $f22, $f22, $f26
/* 18BD58 8003C318 00021603 */  sra        $v0, $v0, 0x18
/* 18BD5C 8003C31C 2842001D */  slti       $v0, $v0, 0x1d
/* 18BD60 8003C320 E6140020 */  swc1       $f20, 0x20($s0)
/* 18BD64 8003C324 4618A500 */  add.s      $f20, $f20, $f24
/* 18BD68 8003C328 1440FFEB */  bnez       $v0, .L8003C2D8
/* 18BD6C 8003C32C E61C001C */   swc1      $f28, 0x1c($s0)
.L8003C330:
/* 18BD70 8003C330 3C018015 */  lui        $at, %hi(D_8014A064)
/* 18BD74 8003C334 C422A064 */  lwc1       $f2, %lo(D_8014A064)($at)
/* 18BD78 8003C338 C7A00060 */  lwc1       $f0, 0x60($sp)
/* 18BD7C 8003C33C 4600103C */  c.lt.s     $f2, $f0
/* 18BD80 8003C340 00000000 */  nop
/* 18BD84 8003C344 00000000 */  nop
/* 18BD88 8003C348 45000087 */  bc1f       .L8003C568
/* 18BD8C 8003C34C 27A70090 */   addiu     $a3, $sp, 0x90
/* 18BD90 8003C350 C7B00060 */  lwc1       $f16, 0x60($sp)
/* 18BD94 8003C354 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 18BD98 8003C358 46008401 */  sub.s      $f16, $f16, $f0
/* 18BD9C 8003C35C 3C0142C8 */  lui        $at, 0x42c8
/* 18BDA0 8003C360 44812000 */  mtc1       $at, $f4
/* 18BDA4 8003C364 00000000 */  nop
/* 18BDA8 8003C368 46048403 */  div.s      $f16, $f16, $f4
/* 18BDAC 8003C36C C7AE0064 */  lwc1       $f14, 0x64($sp)
/* 18BDB0 8003C370 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 18BDB4 8003C374 46007381 */  sub.s      $f14, $f14, $f0
/* 18BDB8 8003C378 46047383 */  div.s      $f14, $f14, $f4
/* 18BDBC 8003C37C C7AC0068 */  lwc1       $f12, 0x68($sp)
/* 18BDC0 8003C380 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 18BDC4 8003C384 46006301 */  sub.s      $f12, $f12, $f0
/* 18BDC8 8003C388 46046303 */  div.s      $f12, $f12, $f4
/* 18BDCC 8003C38C C7AA006C */  lwc1       $f10, 0x6c($sp)
/* 18BDD0 8003C390 C7A0003C */  lwc1       $f0, 0x3c($sp)
/* 18BDD4 8003C394 46005281 */  sub.s      $f10, $f10, $f0
/* 18BDD8 8003C398 46045283 */  div.s      $f10, $f10, $f4
/* 18BDDC 8003C39C C7A80070 */  lwc1       $f8, 0x70($sp)
/* 18BDE0 8003C3A0 C7A00040 */  lwc1       $f0, 0x40($sp)
/* 18BDE4 8003C3A4 46004201 */  sub.s      $f8, $f8, $f0
/* 18BDE8 8003C3A8 46044203 */  div.s      $f8, $f8, $f4
/* 18BDEC 8003C3AC C7A60074 */  lwc1       $f6, 0x74($sp)
/* 18BDF0 8003C3B0 C7A00044 */  lwc1       $f0, 0x44($sp)
/* 18BDF4 8003C3B4 46003181 */  sub.s      $f6, $f6, $f0
/* 18BDF8 8003C3B8 46043183 */  div.s      $f6, $f6, $f4
/* 18BDFC 8003C3BC C7A20078 */  lwc1       $f2, 0x78($sp)
/* 18BE00 8003C3C0 C7A00048 */  lwc1       $f0, 0x48($sp)
/* 18BE04 8003C3C4 46001081 */  sub.s      $f2, $f2, $f0
/* 18BE08 8003C3C8 46041083 */  div.s      $f2, $f2, $f4
/* 18BE0C 8003C3CC E7B000F0 */  swc1       $f16, 0xf0($sp)
/* 18BE10 8003C3D0 E7AE00F4 */  swc1       $f14, 0xf4($sp)
/* 18BE14 8003C3D4 E7AC00F8 */  swc1       $f12, 0xf8($sp)
/* 18BE18 8003C3D8 E7AA00FC */  swc1       $f10, 0xfc($sp)
/* 18BE1C 8003C3DC E7A80100 */  swc1       $f8, 0x100($sp)
/* 18BE20 8003C3E0 E7A60104 */  swc1       $f6, 0x104($sp)
/* 18BE24 8003C3E4 E7A20108 */  swc1       $f2, 0x108($sp)
/* 18BE28 8003C3E8 8FA200F0 */  lw         $v0, 0xf0($sp)
/* 18BE2C 8003C3EC 8FA300F4 */  lw         $v1, 0xf4($sp)
/* 18BE30 8003C3F0 8FA400F8 */  lw         $a0, 0xf8($sp)
/* 18BE34 8003C3F4 8FA500FC */  lw         $a1, 0xfc($sp)
/* 18BE38 8003C3F8 AFA200C0 */  sw         $v0, 0xc0($sp)
/* 18BE3C 8003C3FC AFA300C4 */  sw         $v1, 0xc4($sp)
/* 18BE40 8003C400 AFA400C8 */  sw         $a0, 0xc8($sp)
/* 18BE44 8003C404 AFA500CC */  sw         $a1, 0xcc($sp)
/* 18BE48 8003C408 8FA20100 */  lw         $v0, 0x100($sp)
/* 18BE4C 8003C40C 8FA30104 */  lw         $v1, 0x104($sp)
/* 18BE50 8003C410 8FA40108 */  lw         $a0, 0x108($sp)
/* 18BE54 8003C414 AFA200D0 */  sw         $v0, 0xd0($sp)
/* 18BE58 8003C418 AFA300D4 */  sw         $v1, 0xd4($sp)
/* 18BE5C 8003C41C AFA400D8 */  sw         $a0, 0xd8($sp)
/* 18BE60 8003C420 C7A0007C */  lwc1       $f0, 0x7c($sp)
/* 18BE64 8003C424 C7A20080 */  lwc1       $f2, 0x80($sp)
/* 18BE68 8003C428 C7A40084 */  lwc1       $f4, 0x84($sp)
/* 18BE6C 8003C42C C7A60088 */  lwc1       $f6, 0x88($sp)
/* 18BE70 8003C430 27A600C0 */  addiu      $a2, $sp, 0xc0
/* 18BE74 8003C434 27A800E0 */  addiu      $t0, $sp, 0xe0
/* 18BE78 8003C438 E7A00110 */  swc1       $f0, 0x110($sp)
/* 18BE7C 8003C43C E7A20114 */  swc1       $f2, 0x114($sp)
/* 18BE80 8003C440 E7A40118 */  swc1       $f4, 0x118($sp)
/* 18BE84 8003C444 E7A6011C */  swc1       $f6, 0x11c($sp)
/* 18BE88 8003C448 8FA20110 */  lw         $v0, 0x110($sp)
/* 18BE8C 8003C44C 8FA30114 */  lw         $v1, 0x114($sp)
/* 18BE90 8003C450 8FA40118 */  lw         $a0, 0x118($sp)
/* 18BE94 8003C454 8FA5011C */  lw         $a1, 0x11c($sp)
/* 18BE98 8003C458 AFA200DC */  sw         $v0, 0xdc($sp)
/* 18BE9C 8003C45C AFA300E0 */  sw         $v1, 0xe0($sp)
/* 18BEA0 8003C460 AFA400E4 */  sw         $a0, 0xe4($sp)
/* 18BEA4 8003C464 AFA500E8 */  sw         $a1, 0xe8($sp)
.L8003C468:
/* 18BEA8 8003C468 8CC20000 */  lw         $v0, ($a2)
/* 18BEAC 8003C46C 8CC30004 */  lw         $v1, 4($a2)
/* 18BEB0 8003C470 8CC40008 */  lw         $a0, 8($a2)
/* 18BEB4 8003C474 8CC5000C */  lw         $a1, 0xc($a2)
/* 18BEB8 8003C478 ACE20000 */  sw         $v0, ($a3)
/* 18BEBC 8003C47C ACE30004 */  sw         $v1, 4($a3)
/* 18BEC0 8003C480 ACE40008 */  sw         $a0, 8($a3)
/* 18BEC4 8003C484 ACE5000C */  sw         $a1, 0xc($a3)
/* 18BEC8 8003C488 24C60010 */  addiu      $a2, $a2, 0x10
/* 18BECC 8003C48C 14C8FFF6 */  bne        $a2, $t0, .L8003C468
/* 18BED0 8003C490 24E70010 */   addiu     $a3, $a3, 0x10
/* 18BED4 8003C494 8CC20000 */  lw         $v0, ($a2)
/* 18BED8 8003C498 8CC30004 */  lw         $v1, 4($a2)
/* 18BEDC 8003C49C 8CC40008 */  lw         $a0, 8($a2)
/* 18BEE0 8003C4A0 ACE20000 */  sw         $v0, ($a3)
/* 18BEE4 8003C4A4 ACE30004 */  sw         $v1, 4($a3)
/* 18BEE8 8003C4A8 ACE40008 */  sw         $a0, 8($a3)
/* 18BEEC 8003C4AC 3C028015 */  lui        $v0, %hi(D_8014A064)
/* 18BEF0 8003C4B0 2442A064 */  addiu      $v0, $v0, %lo(D_8014A064)
/* 18BEF4 8003C4B4 C44E0000 */  lwc1       $f14, ($v0)
/* 18BEF8 8003C4B8 C7A00090 */  lwc1       $f0, 0x90($sp)
/* 18BEFC 8003C4BC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 18BF00 8003C4C0 C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 18BF04 8003C4C4 46007380 */  add.s      $f14, $f14, $f0
/* 18BF08 8003C4C8 C7A00094 */  lwc1       $f0, 0x94($sp)
/* 18BF0C 8003C4CC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 18BF10 8003C4D0 C42AA06C */  lwc1       $f10, %lo(D_8014A06C)($at)
/* 18BF14 8003C4D4 46006300 */  add.s      $f12, $f12, $f0
/* 18BF18 8003C4D8 C7A00098 */  lwc1       $f0, 0x98($sp)
/* 18BF1C 8003C4DC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 18BF20 8003C4E0 C426A07C */  lwc1       $f6, %lo(D_8014A07C)($at)
/* 18BF24 8003C4E4 46005280 */  add.s      $f10, $f10, $f0
/* 18BF28 8003C4E8 C7A0009C */  lwc1       $f0, 0x9c($sp)
/* 18BF2C 8003C4EC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 18BF30 8003C4F0 C424A080 */  lwc1       $f4, %lo(D_8014A080)($at)
/* 18BF34 8003C4F4 46003180 */  add.s      $f6, $f6, $f0
/* 18BF38 8003C4F8 C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* 18BF3C 8003C4FC 3C018015 */  lui        $at, %hi(D_8014A084)
/* 18BF40 8003C500 C422A084 */  lwc1       $f2, %lo(D_8014A084)($at)
/* 18BF44 8003C504 C7A800A4 */  lwc1       $f8, 0xa4($sp)
/* 18BF48 8003C508 46002100 */  add.s      $f4, $f4, $f0
/* 18BF4C 8003C50C C7B000A8 */  lwc1       $f16, 0xa8($sp)
/* 18BF50 8003C510 3C018015 */  lui        $at, %hi(D_8014A088)
/* 18BF54 8003C514 C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 18BF58 8003C518 46081080 */  add.s      $f2, $f2, $f8
/* 18BF5C 8003C51C E44E0000 */  swc1       $f14, ($v0)
/* 18BF60 8003C520 3C018015 */  lui        $at, %hi(D_8014A068)
/* 18BF64 8003C524 E42CA068 */  swc1       $f12, %lo(D_8014A068)($at)
/* 18BF68 8003C528 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 18BF6C 8003C52C E42AA06C */  swc1       $f10, %lo(D_8014A06C)($at)
/* 18BF70 8003C530 46100000 */  add.s      $f0, $f0, $f16
/* 18BF74 8003C534 3C018015 */  lui        $at, %hi(D_8014A084)
/* 18BF78 8003C538 E422A084 */  swc1       $f2, %lo(D_8014A084)($at)
/* 18BF7C 8003C53C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 18BF80 8003C540 E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* 18BF84 8003C544 3C018015 */  lui        $at, %hi(D_8014A080)
/* 18BF88 8003C548 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* 18BF8C 8003C54C 3C018015 */  lui        $at, %hi(D_8014A088)
/* 18BF90 8003C550 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 18BF94 8003C554 8E820000 */  lw         $v0, ($s4)
/* 18BF98 8003C558 8C430008 */  lw         $v1, 8($v0)
/* 18BF9C 8003C55C 94620010 */  lhu        $v0, 0x10($v1)
/* 18BFA0 8003C560 2442000A */  addiu      $v0, $v0, 0xa
/* 18BFA4 8003C564 A4620010 */  sh         $v0, 0x10($v1)
.L8003C568:
/* 18BFA8 8003C568 8FBF0134 */  lw         $ra, 0x134($sp)
/* 18BFAC 8003C56C 8FB40130 */  lw         $s4, 0x130($sp)
/* 18BFB0 8003C570 8FB3012C */  lw         $s3, 0x12c($sp)
/* 18BFB4 8003C574 8FB20128 */  lw         $s2, 0x128($sp)
/* 18BFB8 8003C578 8FB10124 */  lw         $s1, 0x124($sp)
/* 18BFBC 8003C57C 8FB00120 */  lw         $s0, 0x120($sp)
/* 18BFC0 8003C580 D7BC0158 */  ldc1       $f28, 0x158($sp)
/* 18BFC4 8003C584 D7BA0150 */  ldc1       $f26, 0x150($sp)
/* 18BFC8 8003C588 D7B80148 */  ldc1       $f24, 0x148($sp)
/* 18BFCC 8003C58C D7B60140 */  ldc1       $f22, 0x140($sp)
/* 18BFD0 8003C590 D7B40138 */  ldc1       $f20, 0x138($sp)
/* 18BFD4 8003C594 03E00008 */  jr         $ra
/* 18BFD8 8003C598 27BD0160 */   addiu     $sp, $sp, 0x160

glabel func_8003C59C_18BFDC
/* 18BFDC 8003C59C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 18BFE0 8003C5A0 AFBF0060 */  sw         $ra, 0x60($sp)
/* 18BFE4 8003C5A4 27A70030 */  addiu      $a3, $sp, 0x30
/* 18BFE8 8003C5A8 3C068005 */  lui        $a2, %hi(D_80051C4C)
/* 18BFEC 8003C5AC 24C61C4C */  addiu      $a2, $a2, %lo(D_80051C4C)
/* 18BFF0 8003C5B0 24C80020 */  addiu      $t0, $a2, 0x20
.L8003C5B4:
/* 18BFF4 8003C5B4 8CC20000 */  lw         $v0, ($a2)
/* 18BFF8 8003C5B8 8CC30004 */  lw         $v1, 4($a2)
/* 18BFFC 8003C5BC 8CC40008 */  lw         $a0, 8($a2)
/* 18C000 8003C5C0 8CC5000C */  lw         $a1, 0xc($a2)
/* 18C004 8003C5C4 ACE20000 */  sw         $v0, ($a3)
/* 18C008 8003C5C8 ACE30004 */  sw         $v1, 4($a3)
/* 18C00C 8003C5CC ACE40008 */  sw         $a0, 8($a3)
/* 18C010 8003C5D0 ACE5000C */  sw         $a1, 0xc($a3)
/* 18C014 8003C5D4 24C60010 */  addiu      $a2, $a2, 0x10
/* 18C018 8003C5D8 14C8FFF6 */  bne        $a2, $t0, .L8003C5B4
/* 18C01C 8003C5DC 24E70010 */   addiu     $a3, $a3, 0x10
/* 18C020 8003C5E0 8CC20000 */  lw         $v0, ($a2)
/* 18C024 8003C5E4 8CC30004 */  lw         $v1, 4($a2)
/* 18C028 8003C5E8 8CC40008 */  lw         $a0, 8($a2)
/* 18C02C 8003C5EC ACE20000 */  sw         $v0, ($a3)
/* 18C030 8003C5F0 ACE30004 */  sw         $v1, 4($a3)
/* 18C034 8003C5F4 ACE40008 */  sw         $a0, 8($a3)
/* 18C038 8003C5F8 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18C03C 8003C5FC 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18C040 8003C600 14400022 */  bnez       $v0, .L8003C68C
/* 18C044 8003C604 00000000 */   nop
/* 18C048 8003C608 8FA20040 */  lw         $v0, 0x40($sp)
/* 18C04C 8003C60C 8FA30044 */  lw         $v1, 0x44($sp)
/* 18C050 8003C610 8FA40048 */  lw         $a0, 0x48($sp)
/* 18C054 8003C614 8FA5004C */  lw         $a1, 0x4c($sp)
/* 18C058 8003C618 AFA20010 */  sw         $v0, 0x10($sp)
/* 18C05C 8003C61C AFA30014 */  sw         $v1, 0x14($sp)
/* 18C060 8003C620 AFA40018 */  sw         $a0, 0x18($sp)
/* 18C064 8003C624 AFA5001C */  sw         $a1, 0x1c($sp)
/* 18C068 8003C628 8FA20050 */  lw         $v0, 0x50($sp)
/* 18C06C 8003C62C 8FA30054 */  lw         $v1, 0x54($sp)
/* 18C070 8003C630 8FA40058 */  lw         $a0, 0x58($sp)
/* 18C074 8003C634 AFA20020 */  sw         $v0, 0x20($sp)
/* 18C078 8003C638 AFA30024 */  sw         $v1, 0x24($sp)
/* 18C07C 8003C63C AFA40028 */  sw         $a0, 0x28($sp)
/* 18C080 8003C640 8FA40030 */  lw         $a0, 0x30($sp)
/* 18C084 8003C644 8FA50034 */  lw         $a1, 0x34($sp)
/* 18C088 8003C648 8FA60038 */  lw         $a2, 0x38($sp)
/* 18C08C 8003C64C 0C0099F7 */  jal        func_800267DC_17621C
/* 18C090 8003C650 8FA7003C */   lw        $a3, 0x3c($sp)
/* 18C094 8003C654 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18C098 8003C658 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18C09C 8003C65C 1440000B */  bnez       $v0, .L8003C68C
/* 18C0A0 8003C660 2402FFFF */   addiu     $v0, $zero, -1
/* 18C0A4 8003C664 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18C0A8 8003C668 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18C0AC 8003C66C 10620007 */  beq        $v1, $v0, .L8003C68C
/* 18C0B0 8003C670 24020064 */   addiu     $v0, $zero, 0x64
/* 18C0B4 8003C674 AFA20010 */  sw         $v0, 0x10($sp)
/* 18C0B8 8003C678 24040052 */  addiu      $a0, $zero, 0x52
/* 18C0BC 8003C67C 24050080 */  addiu      $a1, $zero, 0x80
/* 18C0C0 8003C680 24060080 */  addiu      $a2, $zero, 0x80
/* 18C0C4 8003C684 0C026E0C */  jal        func_8009B830
/* 18C0C8 8003C688 24070001 */   addiu     $a3, $zero, 1
.L8003C68C:
/* 18C0CC 8003C68C 8FBF0060 */  lw         $ra, 0x60($sp)
/* 18C0D0 8003C690 03E00008 */  jr         $ra
/* 18C0D4 8003C694 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8003C698_18C0D8
/* 18C0D8 8003C698 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18C0DC 8003C69C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18C0E0 8003C6A0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18C0E4 8003C6A4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18C0E8 8003C6A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18C0EC 8003C6AC AFBF0024 */  sw         $ra, 0x24($sp)
/* 18C0F0 8003C6B0 AFB20020 */  sw         $s2, 0x20($sp)
/* 18C0F4 8003C6B4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18C0F8 8003C6B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 18C0FC 8003C6BC 14600021 */  bnez       $v1, .L8003C744
/* 18C100 8003C6C0 8C52002C */   lw        $s2, 0x2c($v0)
/* 18C104 8003C6C4 9442000E */  lhu        $v0, 0xe($v0)
/* 18C108 8003C6C8 0062102A */  slt        $v0, $v1, $v0
/* 18C10C 8003C6CC 10400019 */  beqz       $v0, .L8003C734
/* 18C110 8003C6D0 00008821 */   addu      $s1, $zero, $zero
/* 18C114 8003C6D4 00111600 */  sll        $v0, $s1, 0x18
.L8003C6D8:
/* 18C118 8003C6D8 00021603 */  sra        $v0, $v0, 0x18
/* 18C11C 8003C6DC 00028040 */  sll        $s0, $v0, 1
/* 18C120 8003C6E0 02028021 */  addu       $s0, $s0, $v0
/* 18C124 8003C6E4 00108080 */  sll        $s0, $s0, 2
/* 18C128 8003C6E8 02128021 */  addu       $s0, $s0, $s2
/* 18C12C 8003C6EC 8E040000 */  lw         $a0, ($s0)
/* 18C130 8003C6F0 00002821 */  addu       $a1, $zero, $zero
/* 18C134 8003C6F4 0C02912A */  jal        func_800A44A8
/* 18C138 8003C6F8 00003021 */   addu      $a2, $zero, $zero
/* 18C13C 8003C6FC 8E040000 */  lw         $a0, ($s0)
/* 18C140 8003C700 26220001 */  addiu      $v0, $s1, 1
/* 18C144 8003C704 9483001E */  lhu        $v1, 0x1e($a0)
/* 18C148 8003C708 3C058005 */  lui        $a1, %hi(D_80052000)
/* 18C14C 8003C70C 8CA52000 */  lw         $a1, %lo(D_80052000)($a1)
/* 18C150 8003C710 00408821 */  addu       $s1, $v0, $zero
/* 18C154 8003C714 3063FBFF */  andi       $v1, $v1, 0xfbff
/* 18C158 8003C718 A483001E */  sh         $v1, 0x1e($a0)
/* 18C15C 8003C71C 94A3000E */  lhu        $v1, 0xe($a1)
/* 18C160 8003C720 00021600 */  sll        $v0, $v0, 0x18
/* 18C164 8003C724 00021603 */  sra        $v0, $v0, 0x18
/* 18C168 8003C728 0043102A */  slt        $v0, $v0, $v1
/* 18C16C 8003C72C 1440FFEA */  bnez       $v0, .L8003C6D8
/* 18C170 8003C730 00111600 */   sll       $v0, $s1, 0x18
.L8003C734:
/* 18C174 8003C734 3C038005 */  lui        $v1, %hi(D_80052218)
/* 18C178 8003C738 8C632218 */  lw         $v1, %lo(D_80052218)($v1)
/* 18C17C 8003C73C 24020002 */  addiu      $v0, $zero, 2
/* 18C180 8003C740 A4620000 */  sh         $v0, ($v1)
.L8003C744:
/* 18C184 8003C744 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18C188 8003C748 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18C18C 8003C74C 2C62001E */  sltiu      $v0, $v1, 0x1e
/* 18C190 8003C750 14400008 */  bnez       $v0, .L8003C774
/* 18C194 8003C754 30620003 */   andi      $v0, $v1, 3
/* 18C198 8003C758 14400006 */  bnez       $v0, .L8003C774
/* 18C19C 8003C75C 00000000 */   nop
/* 18C1A0 8003C760 3C038005 */  lui        $v1, %hi(D_80052218)
/* 18C1A4 8003C764 8C632218 */  lw         $v1, %lo(D_80052218)($v1)
/* 18C1A8 8003C768 94620000 */  lhu        $v0, ($v1)
/* 18C1AC 8003C76C 24420001 */  addiu      $v0, $v0, 1
/* 18C1B0 8003C770 A4620000 */  sh         $v0, ($v1)
.L8003C774:
/* 18C1B4 8003C774 3C048005 */  lui        $a0, %hi(D_80052218)
/* 18C1B8 8003C778 8C842218 */  lw         $a0, %lo(D_80052218)($a0)
/* 18C1BC 8003C77C 3C038005 */  lui        $v1, %hi(D_80052000)
/* 18C1C0 8003C780 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 18C1C4 8003C784 84820000 */  lh         $v0, ($a0)
/* 18C1C8 8003C788 9463000E */  lhu        $v1, 0xe($v1)
/* 18C1CC 8003C78C 0043102A */  slt        $v0, $v0, $v1
/* 18C1D0 8003C790 14400002 */  bnez       $v0, .L8003C79C
/* 18C1D4 8003C794 2462FFFF */   addiu     $v0, $v1, -1
/* 18C1D8 8003C798 A4820000 */  sh         $v0, ($a0)
.L8003C79C:
/* 18C1DC 8003C79C 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18C1E0 8003C7A0 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18C1E4 8003C7A4 84430000 */  lh         $v1, ($v0)
/* 18C1E8 8003C7A8 00031040 */  sll        $v0, $v1, 1
/* 18C1EC 8003C7AC 00431021 */  addu       $v0, $v0, $v1
/* 18C1F0 8003C7B0 00021080 */  sll        $v0, $v0, 2
/* 18C1F4 8003C7B4 00521021 */  addu       $v0, $v0, $s2
/* 18C1F8 8003C7B8 0C028A40 */  jal        func_800A2900
/* 18C1FC 8003C7BC 8C440000 */   lw        $a0, ($v0)
/* 18C200 8003C7C0 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18C204 8003C7C4 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18C208 8003C7C8 2402FFFF */  addiu      $v0, $zero, -1
/* 18C20C 8003C7CC 1062000B */  beq        $v1, $v0, .L8003C7FC
/* 18C210 8003C7D0 24020023 */   addiu     $v0, $zero, 0x23
/* 18C214 8003C7D4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18C218 8003C7D8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18C21C 8003C7DC 14620007 */  bne        $v1, $v0, .L8003C7FC
/* 18C220 8003C7E0 24020064 */   addiu     $v0, $zero, 0x64
/* 18C224 8003C7E4 AFA20010 */  sw         $v0, 0x10($sp)
/* 18C228 8003C7E8 240400B7 */  addiu      $a0, $zero, 0xb7
/* 18C22C 8003C7EC 24050080 */  addiu      $a1, $zero, 0x80
/* 18C230 8003C7F0 24060080 */  addiu      $a2, $zero, 0x80
/* 18C234 8003C7F4 0C026E0C */  jal        func_8009B830
/* 18C238 8003C7F8 24070001 */   addiu     $a3, $zero, 1
.L8003C7FC:
/* 18C23C 8003C7FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 18C240 8003C800 8FB20020 */  lw         $s2, 0x20($sp)
/* 18C244 8003C804 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18C248 8003C808 8FB00018 */  lw         $s0, 0x18($sp)
/* 18C24C 8003C80C 03E00008 */  jr         $ra
/* 18C250 8003C810 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003C814_18C254
/* 18C254 8003C814 27BDFEB8 */  addiu      $sp, $sp, -0x148
/* 18C258 8003C818 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18C25C 8003C81C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18C260 8003C820 3C013F4C */  lui        $at, 0x3f4c
/* 18C264 8003C824 3421CCCD */  ori        $at, $at, 0xcccd
/* 18C268 8003C828 44810000 */  mtc1       $at, $f0
/* 18C26C 8003C82C 2403FC6C */  addiu      $v1, $zero, -0x394
/* 18C270 8003C830 240600A8 */  addiu      $a2, $zero, 0xa8
/* 18C274 8003C834 2405FFFE */  addiu      $a1, $zero, -2
/* 18C278 8003C838 24040060 */  addiu      $a0, $zero, 0x60
/* 18C27C 8003C83C AFBF0140 */  sw         $ra, 0x140($sp)
/* 18C280 8003C840 AFB5013C */  sw         $s5, 0x13c($sp)
/* 18C284 8003C844 AFB40138 */  sw         $s4, 0x138($sp)
/* 18C288 8003C848 AFB30134 */  sw         $s3, 0x134($sp)
/* 18C28C 8003C84C AFB20130 */  sw         $s2, 0x130($sp)
/* 18C290 8003C850 AFB1012C */  sw         $s1, 0x12c($sp)
/* 18C294 8003C854 AFB00128 */  sw         $s0, 0x128($sp)
/* 18C298 8003C858 8C54002C */  lw         $s4, 0x2c($v0)
/* 18C29C 8003C85C A7A30028 */  sh         $v1, 0x28($sp)
/* 18C2A0 8003C860 A7A6002A */  sh         $a2, 0x2a($sp)
/* 18C2A4 8003C864 A7A3002C */  sh         $v1, 0x2c($sp)
/* 18C2A8 8003C868 A7A5002E */  sh         $a1, 0x2e($sp)
/* 18C2AC 8003C86C E7A00030 */  swc1       $f0, 0x30($sp)
/* 18C2B0 8003C870 A3A40034 */  sb         $a0, 0x34($sp)
/* 18C2B4 8003C874 A3A00035 */  sb         $zero, 0x35($sp)
/* 18C2B8 8003C878 A3A00036 */  sb         $zero, 0x36($sp)
/* 18C2BC 8003C87C A3A00037 */  sb         $zero, 0x37($sp)
/* 18C2C0 8003C880 26820054 */  addiu      $v0, $s4, 0x54
/* 18C2C4 8003C884 AFA20038 */  sw         $v0, 0x38($sp)
/* 18C2C8 8003C888 26820060 */  addiu      $v0, $s4, 0x60
/* 18C2CC 8003C88C A7A0003C */  sh         $zero, 0x3c($sp)
/* 18C2D0 8003C890 A7A6003E */  sh         $a2, 0x3e($sp)
/* 18C2D4 8003C894 A7A30040 */  sh         $v1, 0x40($sp)
/* 18C2D8 8003C898 A7A50042 */  sh         $a1, 0x42($sp)
/* 18C2DC 8003C89C E7A00044 */  swc1       $f0, 0x44($sp)
/* 18C2E0 8003C8A0 A3A40048 */  sb         $a0, 0x48($sp)
/* 18C2E4 8003C8A4 A3A00049 */  sb         $zero, 0x49($sp)
/* 18C2E8 8003C8A8 A3A0004A */  sb         $zero, 0x4a($sp)
/* 18C2EC 8003C8AC A3A0004B */  sb         $zero, 0x4b($sp)
/* 18C2F0 8003C8B0 AFA2004C */  sw         $v0, 0x4c($sp)
/* 18C2F4 8003C8B4 24020394 */  addiu      $v0, $zero, 0x394
/* 18C2F8 8003C8B8 A7A20050 */  sh         $v0, 0x50($sp)
/* 18C2FC 8003C8BC E7A00058 */  swc1       $f0, 0x58($sp)
/* 18C300 8003C8C0 3C013F66 */  lui        $at, 0x3f66
/* 18C304 8003C8C4 34216666 */  ori        $at, $at, 0x6666
/* 18C308 8003C8C8 44810000 */  mtc1       $at, $f0
/* 18C30C 8003C8CC 2682006C */  addiu      $v0, $s4, 0x6c
/* 18C310 8003C8D0 A7A60052 */  sh         $a2, 0x52($sp)
/* 18C314 8003C8D4 A7A30054 */  sh         $v1, 0x54($sp)
/* 18C318 8003C8D8 A7A50056 */  sh         $a1, 0x56($sp)
/* 18C31C 8003C8DC A3A4005C */  sb         $a0, 0x5c($sp)
/* 18C320 8003C8E0 A3A0005D */  sb         $zero, 0x5d($sp)
/* 18C324 8003C8E4 A3A0005E */  sb         $zero, 0x5e($sp)
/* 18C328 8003C8E8 A3A0005F */  sb         $zero, 0x5f($sp)
/* 18C32C 8003C8EC AFA20060 */  sw         $v0, 0x60($sp)
/* 18C330 8003C8F0 2403FBF0 */  addiu      $v1, $zero, -0x410
/* 18C334 8003C8F4 2405012C */  addiu      $a1, $zero, 0x12c
/* 18C338 8003C8F8 2404FFFC */  addiu      $a0, $zero, -4
/* 18C33C 8003C8FC 24060080 */  addiu      $a2, $zero, 0x80
/* 18C340 8003C900 26820078 */  addiu      $v0, $s4, 0x78
/* 18C344 8003C904 AFA20074 */  sw         $v0, 0x74($sp)
/* 18C348 8003C908 26820084 */  addiu      $v0, $s4, 0x84
/* 18C34C 8003C90C A7A30064 */  sh         $v1, 0x64($sp)
/* 18C350 8003C910 A7A50066 */  sh         $a1, 0x66($sp)
/* 18C354 8003C914 A7A30068 */  sh         $v1, 0x68($sp)
/* 18C358 8003C918 A7A4006A */  sh         $a0, 0x6a($sp)
/* 18C35C 8003C91C A3A60070 */  sb         $a2, 0x70($sp)
/* 18C360 8003C920 A3A00071 */  sb         $zero, 0x71($sp)
/* 18C364 8003C924 A3A00072 */  sb         $zero, 0x72($sp)
/* 18C368 8003C928 A3A00073 */  sb         $zero, 0x73($sp)
/* 18C36C 8003C92C E7A0006C */  swc1       $f0, 0x6c($sp)
/* 18C370 8003C930 A7A00078 */  sh         $zero, 0x78($sp)
/* 18C374 8003C934 A7A5007A */  sh         $a1, 0x7a($sp)
/* 18C378 8003C938 A7A3007C */  sh         $v1, 0x7c($sp)
/* 18C37C 8003C93C A7A4007E */  sh         $a0, 0x7e($sp)
/* 18C380 8003C940 E7A00080 */  swc1       $f0, 0x80($sp)
/* 18C384 8003C944 A3A60084 */  sb         $a2, 0x84($sp)
/* 18C388 8003C948 A3A00085 */  sb         $zero, 0x85($sp)
/* 18C38C 8003C94C A3A00086 */  sb         $zero, 0x86($sp)
/* 18C390 8003C950 A3A00087 */  sb         $zero, 0x87($sp)
/* 18C394 8003C954 AFA20088 */  sw         $v0, 0x88($sp)
/* 18C398 8003C958 24020410 */  addiu      $v0, $zero, 0x410
/* 18C39C 8003C95C A7A2008C */  sh         $v0, 0x8c($sp)
/* 18C3A0 8003C960 A7A5008E */  sh         $a1, 0x8e($sp)
/* 18C3A4 8003C964 E7A00094 */  swc1       $f0, 0x94($sp)
/* 18C3A8 8003C968 3C013F80 */  lui        $at, 0x3f80
/* 18C3AC 8003C96C 44810000 */  mtc1       $at, $f0
/* 18C3B0 8003C970 26820090 */  addiu      $v0, $s4, 0x90
/* 18C3B4 8003C974 A7A30090 */  sh         $v1, 0x90($sp)
/* 18C3B8 8003C978 A7A40092 */  sh         $a0, 0x92($sp)
/* 18C3BC 8003C97C A3A60098 */  sb         $a2, 0x98($sp)
/* 18C3C0 8003C980 A3A00099 */  sb         $zero, 0x99($sp)
/* 18C3C4 8003C984 A3A0009A */  sb         $zero, 0x9a($sp)
/* 18C3C8 8003C988 A3A0009B */  sb         $zero, 0x9b($sp)
/* 18C3CC 8003C98C AFA2009C */  sw         $v0, 0x9c($sp)
/* 18C3D0 8003C990 2402FB80 */  addiu      $v0, $zero, -0x480
/* 18C3D4 8003C994 240501C2 */  addiu      $a1, $zero, 0x1c2
/* 18C3D8 8003C998 24040480 */  addiu      $a0, $zero, 0x480
/* 18C3DC 8003C99C 24030014 */  addiu      $v1, $zero, 0x14
/* 18C3E0 8003C9A0 A7A200A0 */  sh         $v0, 0xa0($sp)
/* 18C3E4 8003C9A4 2682009C */  addiu      $v0, $s4, 0x9c
/* 18C3E8 8003C9A8 A7A500A2 */  sh         $a1, 0xa2($sp)
/* 18C3EC 8003C9AC A7A400A4 */  sh         $a0, 0xa4($sp)
/* 18C3F0 8003C9B0 A7A300A6 */  sh         $v1, 0xa6($sp)
/* 18C3F4 8003C9B4 A3A600AC */  sb         $a2, 0xac($sp)
/* 18C3F8 8003C9B8 A3A000AD */  sb         $zero, 0xad($sp)
/* 18C3FC 8003C9BC A3A000AE */  sb         $zero, 0xae($sp)
/* 18C400 8003C9C0 A3A000AF */  sb         $zero, 0xaf($sp)
/* 18C404 8003C9C4 AFA200B0 */  sw         $v0, 0xb0($sp)
/* 18C408 8003C9C8 E7A000A8 */  swc1       $f0, 0xa8($sp)
/* 18C40C 8003C9CC E7A000BC */  swc1       $f0, 0xbc($sp)
/* 18C410 8003C9D0 3C013F8C */  lui        $at, 0x3f8c
/* 18C414 8003C9D4 3421CCCD */  ori        $at, $at, 0xcccd
/* 18C418 8003C9D8 44810000 */  mtc1       $at, $f0
/* 18C41C 8003C9DC 24070226 */  addiu      $a3, $zero, 0x226
/* 18C420 8003C9E0 268200A8 */  addiu      $v0, $s4, 0xa8
/* 18C424 8003C9E4 A7A000B4 */  sh         $zero, 0xb4($sp)
/* 18C428 8003C9E8 A7A500B6 */  sh         $a1, 0xb6($sp)
/* 18C42C 8003C9EC A7A400B8 */  sh         $a0, 0xb8($sp)
/* 18C430 8003C9F0 A7A300BA */  sh         $v1, 0xba($sp)
/* 18C434 8003C9F4 A3A600C0 */  sb         $a2, 0xc0($sp)
/* 18C438 8003C9F8 A3A000C1 */  sb         $zero, 0xc1($sp)
/* 18C43C 8003C9FC A3A000C2 */  sb         $zero, 0xc2($sp)
/* 18C440 8003CA00 A3A000C3 */  sb         $zero, 0xc3($sp)
/* 18C444 8003CA04 AFA200C4 */  sw         $v0, 0xc4($sp)
/* 18C448 8003CA08 2402FB10 */  addiu      $v0, $zero, -0x4f0
/* 18C44C 8003CA0C 240604F0 */  addiu      $a2, $zero, 0x4f0
/* 18C450 8003CA10 24050028 */  addiu      $a1, $zero, 0x28
/* 18C454 8003CA14 240400A0 */  addiu      $a0, $zero, 0xa0
/* 18C458 8003CA18 240300FF */  addiu      $v1, $zero, 0xff
/* 18C45C 8003CA1C A7A200C8 */  sh         $v0, 0xc8($sp)
/* 18C460 8003CA20 268200B4 */  addiu      $v0, $s4, 0xb4
/* 18C464 8003CA24 A7A700CA */  sh         $a3, 0xca($sp)
/* 18C468 8003CA28 A7A600CC */  sh         $a2, 0xcc($sp)
/* 18C46C 8003CA2C A7A500CE */  sh         $a1, 0xce($sp)
/* 18C470 8003CA30 A3A400D4 */  sb         $a0, 0xd4($sp)
/* 18C474 8003CA34 A3A300D5 */  sb         $v1, 0xd5($sp)
/* 18C478 8003CA38 A3A300D6 */  sb         $v1, 0xd6($sp)
/* 18C47C 8003CA3C A3A300D7 */  sb         $v1, 0xd7($sp)
/* 18C480 8003CA40 E7A000D0 */  swc1       $f0, 0xd0($sp)
/* 18C484 8003CA44 AFA200D8 */  sw         $v0, 0xd8($sp)
/* 18C488 8003CA48 E7A000E4 */  swc1       $f0, 0xe4($sp)
/* 18C48C 8003CA4C 3C014000 */  lui        $at, 0x4000
/* 18C490 8003CA50 44810000 */  mtc1       $at, $f0
/* 18C494 8003CA54 A7A700DE */  sh         $a3, 0xde($sp)
/* 18C498 8003CA58 3C078005 */  lui        $a3, %hi(D_80052038)
/* 18C49C 8003CA5C 94E72038 */  lhu        $a3, %lo(D_80052038)($a3)
/* 18C4A0 8003CA60 268200C0 */  addiu      $v0, $s4, 0xc0
/* 18C4A4 8003CA64 A7A000DC */  sh         $zero, 0xdc($sp)
/* 18C4A8 8003CA68 A7A600E0 */  sh         $a2, 0xe0($sp)
/* 18C4AC 8003CA6C A7A500E2 */  sh         $a1, 0xe2($sp)
/* 18C4B0 8003CA70 A3A400E8 */  sb         $a0, 0xe8($sp)
/* 18C4B4 8003CA74 A3A300E9 */  sb         $v1, 0xe9($sp)
/* 18C4B8 8003CA78 A3A300EA */  sb         $v1, 0xea($sp)
/* 18C4BC 8003CA7C A3A300EB */  sb         $v1, 0xeb($sp)
/* 18C4C0 8003CA80 AFA200EC */  sw         $v0, 0xec($sp)
/* 18C4C4 8003CA84 2402F700 */  addiu      $v0, $zero, -0x900
/* 18C4C8 8003CA88 240601F2 */  addiu      $a2, $zero, 0x1f2
/* 18C4CC 8003CA8C 24050900 */  addiu      $a1, $zero, 0x900
/* 18C4D0 8003CA90 2404003C */  addiu      $a0, $zero, 0x3c
/* 18C4D4 8003CA94 240300C4 */  addiu      $v1, $zero, 0xc4
/* 18C4D8 8003CA98 A7A200F0 */  sh         $v0, 0xf0($sp)
/* 18C4DC 8003CA9C 268200CC */  addiu      $v0, $s4, 0xcc
/* 18C4E0 8003CAA0 AFA20100 */  sw         $v0, 0x100($sp)
/* 18C4E4 8003CAA4 268200D8 */  addiu      $v0, $s4, 0xd8
/* 18C4E8 8003CAA8 A7A600F2 */  sh         $a2, 0xf2($sp)
/* 18C4EC 8003CAAC A7A500F4 */  sh         $a1, 0xf4($sp)
/* 18C4F0 8003CAB0 A7A400F6 */  sh         $a0, 0xf6($sp)
/* 18C4F4 8003CAB4 A3A300FC */  sb         $v1, 0xfc($sp)
/* 18C4F8 8003CAB8 A3A000FD */  sb         $zero, 0xfd($sp)
/* 18C4FC 8003CABC A3A000FE */  sb         $zero, 0xfe($sp)
/* 18C500 8003CAC0 A3A000FF */  sb         $zero, 0xff($sp)
/* 18C504 8003CAC4 E7A000F8 */  swc1       $f0, 0xf8($sp)
/* 18C508 8003CAC8 A7A00104 */  sh         $zero, 0x104($sp)
/* 18C50C 8003CACC A7A60106 */  sh         $a2, 0x106($sp)
/* 18C510 8003CAD0 A7A50108 */  sh         $a1, 0x108($sp)
/* 18C514 8003CAD4 A7A4010A */  sh         $a0, 0x10a($sp)
/* 18C518 8003CAD8 E7A0010C */  swc1       $f0, 0x10c($sp)
/* 18C51C 8003CADC A3A30110 */  sb         $v1, 0x110($sp)
/* 18C520 8003CAE0 A3A00111 */  sb         $zero, 0x111($sp)
/* 18C524 8003CAE4 A3A00112 */  sb         $zero, 0x112($sp)
/* 18C528 8003CAE8 A3A00113 */  sb         $zero, 0x113($sp)
/* 18C52C 8003CAEC 14E00050 */  bnez       $a3, .L8003CC30
/* 18C530 8003CAF0 AFA20114 */   sw        $v0, 0x114($sp)
/* 18C534 8003CAF4 3C038005 */  lui        $v1, %hi(D_80052061)
/* 18C538 8003CAF8 80632061 */  lb         $v1, %lo(D_80052061)($v1)
/* 18C53C 8003CAFC 2402FFFF */  addiu      $v0, $zero, -1
/* 18C540 8003CB00 10620011 */  beq        $v1, $v0, .L8003CB48
/* 18C544 8003CB04 2404002F */   addiu     $a0, $zero, 0x2f
/* 18C548 8003CB08 24050001 */  addiu      $a1, $zero, 1
/* 18C54C 8003CB0C 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* 18C550 8003CB10 84639F8C */  lh         $v1, %lo(D_80149F8C)($v1)
/* 18C554 8003CB14 2406015E */  addiu      $a2, $zero, 0x15e
/* 18C558 8003CB18 2407001E */  addiu      $a3, $zero, 0x1e
/* 18C55C 8003CB1C 24020080 */  addiu      $v0, $zero, 0x80
/* 18C560 8003CB20 AFA00018 */  sw         $zero, 0x18($sp)
/* 18C564 8003CB24 AFA2001C */  sw         $v0, 0x1c($sp)
/* 18C568 8003CB28 AFA20020 */  sw         $v0, 0x20($sp)
/* 18C56C 8003CB2C AFA20024 */  sw         $v0, 0x24($sp)
/* 18C570 8003CB30 AFA30010 */  sw         $v1, 0x10($sp)
/* 18C574 8003CB34 24630020 */  addiu      $v1, $v1, 0x20
/* 18C578 8003CB38 00031C00 */  sll        $v1, $v1, 0x10
/* 18C57C 8003CB3C 00031C03 */  sra        $v1, $v1, 0x10
/* 18C580 8003CB40 0C026E84 */  jal        func_8009BA10
/* 18C584 8003CB44 AFA30014 */   sw        $v1, 0x14($sp)
.L8003CB48:
/* 18C588 8003CB48 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18C58C 8003CB4C 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18C590 8003CB50 A4400000 */  sh         $zero, ($v0)
/* 18C594 8003CB54 3C038005 */  lui        $v1, %hi(D_80052000)
/* 18C598 8003CB58 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 18C59C 8003CB5C A4400002 */  sh         $zero, 2($v0)
/* 18C5A0 8003CB60 9463000E */  lhu        $v1, 0xe($v1)
/* 18C5A4 8003CB64 24020007 */  addiu      $v0, $zero, 7
/* 18C5A8 8003CB68 0043102A */  slt        $v0, $v0, $v1
/* 18C5AC 8003CB6C 10400030 */  beqz       $v0, .L8003CC30
/* 18C5B0 8003CB70 24130007 */   addiu     $s3, $zero, 7
/* 18C5B4 8003CB74 27B50028 */  addiu      $s5, $sp, 0x28
/* 18C5B8 8003CB78 00138E00 */  sll        $s1, $s3, 0x18
.L8003CB7C:
/* 18C5BC 8003CB7C 00118E03 */  sra        $s1, $s1, 0x18
/* 18C5C0 8003CB80 00111040 */  sll        $v0, $s1, 1
/* 18C5C4 8003CB84 00511021 */  addu       $v0, $v0, $s1
/* 18C5C8 8003CB88 00021080 */  sll        $v0, $v0, 2
/* 18C5CC 8003CB8C 00549021 */  addu       $s2, $v0, $s4
/* 18C5D0 8003CB90 8E440000 */  lw         $a0, ($s2)
/* 18C5D4 8003CB94 00002821 */  addu       $a1, $zero, $zero
/* 18C5D8 8003CB98 0C02912A */  jal        func_800A44A8
/* 18C5DC 8003CB9C 00003021 */   addu      $a2, $zero, $zero
/* 18C5E0 8003CBA0 8E440000 */  lw         $a0, ($s2)
/* 18C5E4 8003CBA4 2622FFF9 */  addiu      $v0, $s1, -7
/* 18C5E8 8003CBA8 00028080 */  sll        $s0, $v0, 2
/* 18C5EC 8003CBAC 02028021 */  addu       $s0, $s0, $v0
/* 18C5F0 8003CBB0 00108080 */  sll        $s0, $s0, 2
/* 18C5F4 8003CBB4 02B08021 */  addu       $s0, $s5, $s0
/* 18C5F8 8003CBB8 86050000 */  lh         $a1, ($s0)
/* 18C5FC 8003CBBC 86060002 */  lh         $a2, 2($s0)
/* 18C600 8003CBC0 0C028D89 */  jal        func_800A3624
/* 18C604 8003CBC4 2A31000D */   slti      $s1, $s1, 0xd
/* 18C608 8003CBC8 8E060008 */  lw         $a2, 8($s0)
/* 18C60C 8003CBCC 8E440000 */  lw         $a0, ($s2)
/* 18C610 8003CBD0 00002821 */  addu       $a1, $zero, $zero
/* 18C614 8003CBD4 0C02915B */  jal        func_800A456C
/* 18C618 8003CBD8 00C03821 */   addu      $a3, $a2, $zero
/* 18C61C 8003CBDC 9202000C */  lbu        $v0, 0xc($s0)
/* 18C620 8003CBE0 9205000D */  lbu        $a1, 0xd($s0)
/* 18C624 8003CBE4 9206000E */  lbu        $a2, 0xe($s0)
/* 18C628 8003CBE8 9207000F */  lbu        $a3, 0xf($s0)
/* 18C62C 8003CBEC AFA20010 */  sw         $v0, 0x10($sp)
/* 18C630 8003CBF0 0C028E41 */  jal        func_800A3904
/* 18C634 8003CBF4 8E440000 */   lw        $a0, ($s2)
/* 18C638 8003CBF8 12200003 */  beqz       $s1, .L8003CC08
/* 18C63C 8003CBFC 24020001 */   addiu     $v0, $zero, 1
/* 18C640 8003CC00 8E430000 */  lw         $v1, ($s2)
/* 18C644 8003CC04 A462001C */  sh         $v0, 0x1c($v1)
.L8003CC08:
/* 18C648 8003CC08 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18C64C 8003CC0C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18C650 8003CC10 26630001 */  addiu      $v1, $s3, 1
/* 18C654 8003CC14 00609821 */  addu       $s3, $v1, $zero
/* 18C658 8003CC18 9442000E */  lhu        $v0, 0xe($v0)
/* 18C65C 8003CC1C 00031E00 */  sll        $v1, $v1, 0x18
/* 18C660 8003CC20 00031E03 */  sra        $v1, $v1, 0x18
/* 18C664 8003CC24 0062182A */  slt        $v1, $v1, $v0
/* 18C668 8003CC28 1460FFD4 */  bnez       $v1, .L8003CB7C
/* 18C66C 8003CC2C 00138E00 */   sll       $s1, $s3, 0x18
.L8003CC30:
/* 18C670 8003CC30 00009821 */  addu       $s3, $zero, $zero
/* 18C674 8003CC34 27A70028 */  addiu      $a3, $sp, 0x28
.L8003CC38:
/* 18C678 8003CC38 00131E00 */  sll        $v1, $s3, 0x18
/* 18C67C 8003CC3C 00031E03 */  sra        $v1, $v1, 0x18
/* 18C680 8003CC40 00031080 */  sll        $v0, $v1, 2
/* 18C684 8003CC44 00431021 */  addu       $v0, $v0, $v1
/* 18C688 8003CC48 00021080 */  sll        $v0, $v0, 2
/* 18C68C 8003CC4C 00E22021 */  addu       $a0, $a3, $v0
/* 18C690 8003CC50 8C820010 */  lw         $v0, 0x10($a0)
/* 18C694 8003CC54 8C420000 */  lw         $v0, ($v0)
/* 18C698 8003CC58 8C420008 */  lw         $v0, 8($v0)
/* 18C69C 8003CC5C 94460010 */  lhu        $a2, 0x10($v0)
/* 18C6A0 8003CC60 94820006 */  lhu        $v0, 6($a0)
/* 18C6A4 8003CC64 28630006 */  slti       $v1, $v1, 6
/* 18C6A8 8003CC68 00C22821 */  addu       $a1, $a2, $v0
/* 18C6AC 8003CC6C 14600009 */  bnez       $v1, .L8003CC94
/* 18C6B0 8003CC70 00A03021 */   addu      $a2, $a1, $zero
/* 18C6B4 8003CC74 84830004 */  lh         $v1, 4($a0)
/* 18C6B8 8003CC78 00051400 */  sll        $v0, $a1, 0x10
/* 18C6BC 8003CC7C 00021403 */  sra        $v0, $v0, 0x10
/* 18C6C0 8003CC80 0062102A */  slt        $v0, $v1, $v0
/* 18C6C4 8003CC84 1040000B */  beqz       $v0, .L8003CCB4
/* 18C6C8 8003CC88 00031040 */   sll       $v0, $v1, 1
/* 18C6CC 8003CC8C 0800F32D */  j          .L8003CCB4
/* 18C6D0 8003CC90 00A23023 */   subu      $a2, $a1, $v0
.L8003CC94:
/* 18C6D4 8003CC94 84830004 */  lh         $v1, 4($a0)
/* 18C6D8 8003CC98 00051400 */  sll        $v0, $a1, 0x10
/* 18C6DC 8003CC9C 00021403 */  sra        $v0, $v0, 0x10
/* 18C6E0 8003CCA0 0043102A */  slt        $v0, $v0, $v1
/* 18C6E4 8003CCA4 10400003 */  beqz       $v0, .L8003CCB4
/* 18C6E8 8003CCA8 00031040 */   sll       $v0, $v1, 1
/* 18C6EC 8003CCAC 00431021 */  addu       $v0, $v0, $v1
/* 18C6F0 8003CCB0 00A23023 */  subu       $a2, $a1, $v0
.L8003CCB4:
/* 18C6F4 8003CCB4 00131E00 */  sll        $v1, $s3, 0x18
/* 18C6F8 8003CCB8 00031E03 */  sra        $v1, $v1, 0x18
/* 18C6FC 8003CCBC 00031080 */  sll        $v0, $v1, 2
/* 18C700 8003CCC0 00431021 */  addu       $v0, $v0, $v1
/* 18C704 8003CCC4 00021080 */  sll        $v0, $v0, 2
/* 18C708 8003CCC8 00E21021 */  addu       $v0, $a3, $v0
/* 18C70C 8003CCCC 8C420010 */  lw         $v0, 0x10($v0)
/* 18C710 8003CCD0 8C420000 */  lw         $v0, ($v0)
/* 18C714 8003CCD4 8C430008 */  lw         $v1, 8($v0)
/* 18C718 8003CCD8 26620001 */  addiu      $v0, $s3, 1
/* 18C71C 8003CCDC 00409821 */  addu       $s3, $v0, $zero
/* 18C720 8003CCE0 00021600 */  sll        $v0, $v0, 0x18
/* 18C724 8003CCE4 00021603 */  sra        $v0, $v0, 0x18
/* 18C728 8003CCE8 2842000C */  slti       $v0, $v0, 0xc
/* 18C72C 8003CCEC 1440FFD2 */  bnez       $v0, .L8003CC38
/* 18C730 8003CCF0 A4660010 */   sh        $a2, 0x10($v1)
/* 18C734 8003CCF4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18C738 8003CCF8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18C73C 8003CCFC 30420001 */  andi       $v0, $v0, 1
/* 18C740 8003CD00 10400021 */  beqz       $v0, .L8003CD88
/* 18C744 8003CD04 24130001 */   addiu     $s3, $zero, 1
/* 18C748 8003CD08 24050002 */  addiu      $a1, $zero, 2
/* 18C74C 8003CD0C 24040006 */  addiu      $a0, $zero, 6
/* 18C750 8003CD10 00131E00 */  sll        $v1, $s3, 0x18
.L8003CD14:
/* 18C754 8003CD14 00031E03 */  sra        $v1, $v1, 0x18
/* 18C758 8003CD18 00031040 */  sll        $v0, $v1, 1
/* 18C75C 8003CD1C 00431021 */  addu       $v0, $v0, $v1
/* 18C760 8003CD20 00021080 */  sll        $v0, $v0, 2
/* 18C764 8003CD24 00541021 */  addu       $v0, $v0, $s4
/* 18C768 8003CD28 8C420000 */  lw         $v0, ($v0)
/* 18C76C 8003CD2C 90430020 */  lbu        $v1, 0x20($v0)
/* 18C770 8003CD30 10650005 */  beq        $v1, $a1, .L8003CD48
/* 18C774 8003CD34 00000000 */   nop
/* 18C778 8003CD38 10640008 */  beq        $v1, $a0, .L8003CD5C
/* 18C77C 8003CD3C 00000000 */   nop
/* 18C780 8003CD40 0800F35C */  j          .L8003CD70
/* 18C784 8003CD44 26620001 */   addiu     $v0, $s3, 1
.L8003CD48:
/* 18C788 8003CD48 8C430008 */  lw         $v1, 8($v0)
/* 18C78C 8003CD4C 94620012 */  lhu        $v0, 0x12($v1)
/* 18C790 8003CD50 2442FFFF */  addiu      $v0, $v0, -1
/* 18C794 8003CD54 0800F35B */  j          .L8003CD6C
/* 18C798 8003CD58 A4620012 */   sh        $v0, 0x12($v1)
.L8003CD5C:
/* 18C79C 8003CD5C 8C430000 */  lw         $v1, ($v0)
/* 18C7A0 8003CD60 9462000C */  lhu        $v0, 0xc($v1)
/* 18C7A4 8003CD64 2442FFFF */  addiu      $v0, $v0, -1
/* 18C7A8 8003CD68 A462000C */  sh         $v0, 0xc($v1)
.L8003CD6C:
/* 18C7AC 8003CD6C 26620001 */  addiu      $v0, $s3, 1
.L8003CD70:
/* 18C7B0 8003CD70 00409821 */  addu       $s3, $v0, $zero
/* 18C7B4 8003CD74 00021600 */  sll        $v0, $v0, 0x18
/* 18C7B8 8003CD78 00021603 */  sra        $v0, $v0, 0x18
/* 18C7BC 8003CD7C 28420007 */  slti       $v0, $v0, 7
/* 18C7C0 8003CD80 1440FFE4 */  bnez       $v0, .L8003CD14
/* 18C7C4 8003CD84 00131E00 */   sll       $v1, $s3, 0x18
.L8003CD88:
/* 18C7C8 8003CD88 0C02591A */  jal        func_80096468
/* 18C7CC 8003CD8C 2404008C */   addiu     $a0, $zero, 0x8c
/* 18C7D0 8003CD90 24130001 */  addiu      $s3, $zero, 1
/* 18C7D4 8003CD94 305000FF */  andi       $s0, $v0, 0xff
/* 18C7D8 8003CD98 00131600 */  sll        $v0, $s3, 0x18
.L8003CD9C:
/* 18C7DC 8003CD9C 00021603 */  sra        $v0, $v0, 0x18
/* 18C7E0 8003CDA0 00021840 */  sll        $v1, $v0, 1
/* 18C7E4 8003CDA4 00621821 */  addu       $v1, $v1, $v0
/* 18C7E8 8003CDA8 00031880 */  sll        $v1, $v1, 2
/* 18C7EC 8003CDAC 00741821 */  addu       $v1, $v1, $s4
/* 18C7F0 8003CDB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 18C7F4 8003CDB4 8C640000 */  lw         $a0, ($v1)
/* 18C7F8 8003CDB8 240500FF */  addiu      $a1, $zero, 0xff
/* 18C7FC 8003CDBC 240600FF */  addiu      $a2, $zero, 0xff
/* 18C800 8003CDC0 0C028E41 */  jal        func_800A3904
/* 18C804 8003CDC4 240700FF */   addiu     $a3, $zero, 0xff
/* 18C808 8003CDC8 26620001 */  addiu      $v0, $s3, 1
/* 18C80C 8003CDCC 00409821 */  addu       $s3, $v0, $zero
/* 18C810 8003CDD0 00021600 */  sll        $v0, $v0, 0x18
/* 18C814 8003CDD4 00021603 */  sra        $v0, $v0, 0x18
/* 18C818 8003CDD8 28420003 */  slti       $v0, $v0, 3
/* 18C81C 8003CDDC 1440FFEF */  bnez       $v0, .L8003CD9C
/* 18C820 8003CDE0 00131600 */   sll       $v0, $s3, 0x18
/* 18C824 8003CDE4 3C048005 */  lui        $a0, %hi(D_80052218)
/* 18C828 8003CDE8 8C842218 */  lw         $a0, %lo(D_80052218)($a0)
/* 18C82C 8003CDEC 84820000 */  lh         $v0, ($a0)
/* 18C830 8003CDF0 1C40000D */  bgtz       $v0, .L8003CE28
/* 18C834 8003CDF4 00401821 */   addu      $v1, $v0, $zero
/* 18C838 8003CDF8 0C02591A */  jal        func_80096468
/* 18C83C 8003CDFC 24040002 */   addiu     $a0, $zero, 2
/* 18C840 8003CE00 3C038005 */  lui        $v1, %hi(D_80052218)
/* 18C844 8003CE04 8C632218 */  lw         $v1, %lo(D_80052218)($v1)
/* 18C848 8003CE08 24420001 */  addiu      $v0, $v0, 1
/* 18C84C 8003CE0C A4620000 */  sh         $v0, ($v1)
/* 18C850 8003CE10 3C038005 */  lui        $v1, %hi(D_80052218)
/* 18C854 8003CE14 8C632218 */  lw         $v1, %lo(D_80052218)($v1)
/* 18C858 8003CE18 94620002 */  lhu        $v0, 2($v1)
/* 18C85C 8003CE1C 38420001 */  xori       $v0, $v0, 1
/* 18C860 8003CE20 0800F38C */  j          .L8003CE30
/* 18C864 8003CE24 A4620002 */   sh        $v0, 2($v1)
.L8003CE28:
/* 18C868 8003CE28 2462FFFF */  addiu      $v0, $v1, -1
/* 18C86C 8003CE2C A4820000 */  sh         $v0, ($a0)
.L8003CE30:
/* 18C870 8003CE30 3C028005 */  lui        $v0, %hi(D_80052218)
/* 18C874 8003CE34 8C422218 */  lw         $v0, %lo(D_80052218)($v0)
/* 18C878 8003CE38 84420002 */  lh         $v0, 2($v0)
/* 18C87C 8003CE3C 10400005 */  beqz       $v0, .L8003CE54
/* 18C880 8003CE40 00000000 */   nop
/* 18C884 8003CE44 8E83003C */  lw         $v1, 0x3c($s4)
/* 18C888 8003CE48 9462001E */  lhu        $v0, 0x1e($v1)
/* 18C88C 8003CE4C 0800F398 */  j          .L8003CE60
/* 18C890 8003CE50 3042FBFF */   andi      $v0, $v0, 0xfbff
.L8003CE54:
/* 18C894 8003CE54 8E83003C */  lw         $v1, 0x3c($s4)
/* 18C898 8003CE58 9462001E */  lhu        $v0, 0x1e($v1)
/* 18C89C 8003CE5C 34420400 */  ori        $v0, $v0, 0x400
.L8003CE60:
/* 18C8A0 8003CE60 A462001E */  sh         $v0, 0x1e($v1)
/* 18C8A4 8003CE64 8FBF0140 */  lw         $ra, 0x140($sp)
/* 18C8A8 8003CE68 8FB5013C */  lw         $s5, 0x13c($sp)
/* 18C8AC 8003CE6C 8FB40138 */  lw         $s4, 0x138($sp)
/* 18C8B0 8003CE70 8FB30134 */  lw         $s3, 0x134($sp)
/* 18C8B4 8003CE74 8FB20130 */  lw         $s2, 0x130($sp)
/* 18C8B8 8003CE78 8FB1012C */  lw         $s1, 0x12c($sp)
/* 18C8BC 8003CE7C 8FB00128 */  lw         $s0, 0x128($sp)
/* 18C8C0 8003CE80 03E00008 */  jr         $ra
/* 18C8C4 8003CE84 27BD0148 */   addiu     $sp, $sp, 0x148

glabel func_8003CE88_18C8C8
/* 18C8C8 8003CE88 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18C8CC 8003CE8C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18C8D0 8003CE90 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18C8D4 8003CE94 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18C8D8 8003CE98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18C8DC 8003CE9C AFBF0020 */  sw         $ra, 0x20($sp)
/* 18C8E0 8003CEA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18C8E4 8003CEA4 AFB00018 */  sw         $s0, 0x18($sp)
/* 18C8E8 8003CEA8 8C51002C */  lw         $s1, 0x2c($v0)
/* 18C8EC 8003CEAC 14600051 */  bnez       $v1, .L8003CFF4
/* 18C8F0 8003CEB0 8C500028 */   lw        $s0, 0x28($v0)
/* 18C8F4 8003CEB4 8E040068 */  lw         $a0, 0x68($s0)
/* 18C8F8 8003CEB8 3C058005 */  lui        $a1, %hi(D_80051C78)
/* 18C8FC 8003CEBC 24A51C78 */  addiu      $a1, $a1, %lo(D_80051C78)
/* 18C900 8003CEC0 0C0286A4 */  jal        func_800A1A90
/* 18C904 8003CEC4 00003021 */   addu      $a2, $zero, $zero
/* 18C908 8003CEC8 8E040068 */  lw         $a0, 0x68($s0)
/* 18C90C 8003CECC 3C058005 */  lui        $a1, %hi(D_80051C80)
/* 18C910 8003CED0 24A51C80 */  addiu      $a1, $a1, %lo(D_80051C80)
/* 18C914 8003CED4 0C0286A4 */  jal        func_800A1A90
/* 18C918 8003CED8 00003021 */   addu      $a2, $zero, $zero
/* 18C91C 8003CEDC 8E040068 */  lw         $a0, 0x68($s0)
/* 18C920 8003CEE0 3C058005 */  lui        $a1, %hi(D_80051C88)
/* 18C924 8003CEE4 24A51C88 */  addiu      $a1, $a1, %lo(D_80051C88)
/* 18C928 8003CEE8 0C0286A4 */  jal        func_800A1A90
/* 18C92C 8003CEEC 00003021 */   addu      $a2, $zero, $zero
/* 18C930 8003CEF0 24040013 */  addiu      $a0, $zero, 0x13
/* 18C934 8003CEF4 2405001D */  addiu      $a1, $zero, 0x1d
/* 18C938 8003CEF8 24060014 */  addiu      $a2, $zero, 0x14
/* 18C93C 8003CEFC 240700AA */  addiu      $a3, $zero, 0xaa
/* 18C940 8003CF00 24020052 */  addiu      $v0, $zero, 0x52
/* 18C944 8003CF04 AFA20010 */  sw         $v0, 0x10($sp)
/* 18C948 8003CF08 2402001E */  addiu      $v0, $zero, 0x1e
/* 18C94C 8003CF0C 0C027101 */  jal        func_8009C404
/* 18C950 8003CF10 AFA20014 */   sw        $v0, 0x14($sp)
/* 18C954 8003CF14 0C027224 */  jal        func_8009C890
/* 18C958 8003CF18 24100080 */   addiu     $s0, $zero, 0x80
/* 18C95C 8003CF1C 8E24000C */  lw         $a0, 0xc($s1)
/* 18C960 8003CF20 00002821 */  addu       $a1, $zero, $zero
/* 18C964 8003CF24 0C028D89 */  jal        func_800A3624
/* 18C968 8003CF28 2406013A */   addiu     $a2, $zero, 0x13a
/* 18C96C 8003CF2C 8E240018 */  lw         $a0, 0x18($s1)
/* 18C970 8003CF30 00002821 */  addu       $a1, $zero, $zero
/* 18C974 8003CF34 0C028D89 */  jal        func_800A3624
/* 18C978 8003CF38 240601C0 */   addiu     $a2, $zero, 0x1c0
/* 18C97C 8003CF3C 8E240024 */  lw         $a0, 0x24($s1)
/* 18C980 8003CF40 00002821 */  addu       $a1, $zero, $zero
/* 18C984 8003CF44 0C028D89 */  jal        func_800A3624
/* 18C988 8003CF48 2406005F */   addiu     $a2, $zero, 0x5f
/* 18C98C 8003CF4C 240200FF */  addiu      $v0, $zero, 0xff
/* 18C990 8003CF50 AFA20010 */  sw         $v0, 0x10($sp)
/* 18C994 8003CF54 8E240000 */  lw         $a0, ($s1)
/* 18C998 8003CF58 24050060 */  addiu      $a1, $zero, 0x60
/* 18C99C 8003CF5C 24060060 */  addiu      $a2, $zero, 0x60
/* 18C9A0 8003CF60 0C028E41 */  jal        func_800A3904
/* 18C9A4 8003CF64 24070060 */   addiu     $a3, $zero, 0x60
/* 18C9A8 8003CF68 AFB00010 */  sw         $s0, 0x10($sp)
/* 18C9AC 8003CF6C 8E24000C */  lw         $a0, 0xc($s1)
/* 18C9B0 8003CF70 24050080 */  addiu      $a1, $zero, 0x80
/* 18C9B4 8003CF74 24060080 */  addiu      $a2, $zero, 0x80
/* 18C9B8 8003CF78 0C028E41 */  jal        func_800A3904
/* 18C9BC 8003CF7C 24070080 */   addiu     $a3, $zero, 0x80
/* 18C9C0 8003CF80 AFB00010 */  sw         $s0, 0x10($sp)
/* 18C9C4 8003CF84 8E240018 */  lw         $a0, 0x18($s1)
/* 18C9C8 8003CF88 00002821 */  addu       $a1, $zero, $zero
/* 18C9CC 8003CF8C 00003021 */  addu       $a2, $zero, $zero
/* 18C9D0 8003CF90 0C028E41 */  jal        func_800A3904
/* 18C9D4 8003CF94 00003821 */   addu      $a3, $zero, $zero
/* 18C9D8 8003CF98 24020050 */  addiu      $v0, $zero, 0x50
/* 18C9DC 8003CF9C AFA20010 */  sw         $v0, 0x10($sp)
/* 18C9E0 8003CFA0 8E240024 */  lw         $a0, 0x24($s1)
/* 18C9E4 8003CFA4 240500FF */  addiu      $a1, $zero, 0xff
/* 18C9E8 8003CFA8 240600FF */  addiu      $a2, $zero, 0xff
/* 18C9EC 8003CFAC 0C028E41 */  jal        func_800A3904
/* 18C9F0 8003CFB0 240700FF */   addiu     $a3, $zero, 0xff
/* 18C9F4 8003CFB4 8E24000C */  lw         $a0, 0xc($s1)
/* 18C9F8 8003CFB8 24050200 */  addiu      $a1, $zero, 0x200
/* 18C9FC 8003CFBC 0C0292D4 */  jal        func_800A4B50
/* 18CA00 8003CFC0 24060200 */   addiu     $a2, $zero, 0x200
/* 18CA04 8003CFC4 8E240018 */  lw         $a0, 0x18($s1)
/* 18CA08 8003CFC8 24050199 */  addiu      $a1, $zero, 0x199
/* 18CA0C 8003CFCC 0C0292D4 */  jal        func_800A4B50
/* 18CA10 8003CFD0 24060199 */   addiu     $a2, $zero, 0x199
/* 18CA14 8003CFD4 8E240024 */  lw         $a0, 0x24($s1)
/* 18CA18 8003CFD8 240502AA */  addiu      $a1, $zero, 0x2aa
/* 18CA1C 8003CFDC 0C0292D4 */  jal        func_800A4B50
/* 18CA20 8003CFE0 240602AA */   addiu     $a2, $zero, 0x2aa
/* 18CA24 8003CFE4 8E230024 */  lw         $v1, 0x24($s1)
/* 18CA28 8003CFE8 9462001E */  lhu        $v0, 0x1e($v1)
/* 18CA2C 8003CFEC 34420100 */  ori        $v0, $v0, 0x100
/* 18CA30 8003CFF0 A462001E */  sh         $v0, 0x1e($v1)
.L8003CFF4:
/* 18CA34 8003CFF4 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18CA38 8003CFF8 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18CA3C 8003CFFC 9442000A */  lhu        $v0, 0xa($v0)
/* 18CA40 8003D000 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18CA44 8003D004 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18CA48 8003D008 2442FFF6 */  addiu      $v0, $v0, -0xa
/* 18CA4C 8003D00C 1462000B */  bne        $v1, $v0, .L8003D03C
/* 18CA50 8003D010 00000000 */   nop
/* 18CA54 8003D014 0C026EB8 */  jal        func_8009BAE0
/* 18CA58 8003D018 00000000 */   nop
/* 18CA5C 8003D01C 0C026E5D */  jal        func_8009B974
/* 18CA60 8003D020 24040005 */   addiu     $a0, $zero, 5
/* 18CA64 8003D024 AFA00010 */  sw         $zero, 0x10($sp)
/* 18CA68 8003D028 2404FFFE */  addiu      $a0, $zero, -2
/* 18CA6C 8003D02C 2405FFFF */  addiu      $a1, $zero, -1
/* 18CA70 8003D030 24060005 */  addiu      $a2, $zero, 5
/* 18CA74 8003D034 0C026C9A */  jal        func_8009B268
/* 18CA78 8003D038 00003821 */   addu      $a3, $zero, $zero
.L8003D03C:
/* 18CA7C 8003D03C 8E24000C */  lw         $a0, 0xc($s1)
/* 18CA80 8003D040 2405FE70 */  addiu      $a1, $zero, -0x190
/* 18CA84 8003D044 0C00F420 */  jal        func_8003D080_18CAC0
/* 18CA88 8003D048 00003021 */   addu      $a2, $zero, $zero
/* 18CA8C 8003D04C 8E240018 */  lw         $a0, 0x18($s1)
/* 18CA90 8003D050 2405FE0C */  addiu      $a1, $zero, -0x1f4
/* 18CA94 8003D054 0C00F420 */  jal        func_8003D080_18CAC0
/* 18CA98 8003D058 00003021 */   addu      $a2, $zero, $zero
/* 18CA9C 8003D05C 8E240024 */  lw         $a0, 0x24($s1)
/* 18CAA0 8003D060 240500C8 */  addiu      $a1, $zero, 0xc8
/* 18CAA4 8003D064 0C00F420 */  jal        func_8003D080_18CAC0
/* 18CAA8 8003D068 00003021 */   addu      $a2, $zero, $zero
/* 18CAAC 8003D06C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 18CAB0 8003D070 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18CAB4 8003D074 8FB00018 */  lw         $s0, 0x18($sp)
/* 18CAB8 8003D078 03E00008 */  jr         $ra
/* 18CABC 8003D07C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003D080_18CAC0
/* 18CAC0 8003D080 00804821 */  addu       $t1, $a0, $zero
/* 18CAC4 8003D084 8D270000 */  lw         $a3, ($t1)
/* 18CAC8 8003D088 00052C00 */  sll        $a1, $a1, 0x10
/* 18CACC 8003D08C 00052C03 */  sra        $a1, $a1, 0x10
/* 18CAD0 8003D090 00063400 */  sll        $a2, $a2, 0x10
/* 18CAD4 8003D094 00063403 */  sra        $a2, $a2, 0x10
/* 18CAD8 8003D098 94E20000 */  lhu        $v0, ($a3)
/* 18CADC 8003D09C 94E40008 */  lhu        $a0, 8($a3)
/* 18CAE0 8003D0A0 94E3000A */  lhu        $v1, 0xa($a3)
/* 18CAE4 8003D0A4 00454021 */  addu       $t0, $v0, $a1
/* 18CAE8 8003D0A8 94E20002 */  lhu        $v0, 2($a3)
/* 18CAEC 8003D0AC 00862021 */  addu       $a0, $a0, $a2
/* 18CAF0 8003D0B0 000330C0 */  sll        $a2, $v1, 3
/* 18CAF4 8003D0B4 05010002 */  bgez       $t0, .L8003D0C0
/* 18CAF8 8003D0B8 000228C0 */   sll       $a1, $v0, 3
/* 18CAFC 8003D0BC 01054021 */  addu       $t0, $t0, $a1
.L8003D0C0:
/* 18CB00 8003D0C0 0105102A */  slt        $v0, $t0, $a1
/* 18CB04 8003D0C4 14400007 */  bnez       $v0, .L8003D0E4
/* 18CB08 8003D0C8 24020006 */   addiu     $v0, $zero, 6
/* 18CB0C 8003D0CC 91230020 */  lbu        $v1, 0x20($t1)
/* 18CB10 8003D0D0 14620004 */  bne        $v1, $v0, .L8003D0E4
/* 18CB14 8003D0D4 01054023 */   subu      $t0, $t0, $a1
/* 18CB18 8003D0D8 8CE20020 */  lw         $v0, 0x20($a3)
/* 18CB1C 8003D0DC 24420020 */  addiu      $v0, $v0, 0x20
/* 18CB20 8003D0E0 ACE20020 */  sw         $v0, 0x20($a3)
.L8003D0E4:
/* 18CB24 8003D0E4 04810009 */  bgez       $a0, .L8003D10C
/* 18CB28 8003D0E8 0086102A */   slt       $v0, $a0, $a2
/* 18CB2C 8003D0EC 91230020 */  lbu        $v1, 0x20($t1)
/* 18CB30 8003D0F0 24020006 */  addiu      $v0, $zero, 6
/* 18CB34 8003D0F4 14620004 */  bne        $v1, $v0, .L8003D108
/* 18CB38 8003D0F8 00862021 */   addu      $a0, $a0, $a2
/* 18CB3C 8003D0FC 8CE20020 */  lw         $v0, 0x20($a3)
/* 18CB40 8003D100 00461021 */  addu       $v0, $v0, $a2
/* 18CB44 8003D104 ACE20020 */  sw         $v0, 0x20($a3)
.L8003D108:
/* 18CB48 8003D108 0086102A */  slt        $v0, $a0, $a2
.L8003D10C:
/* 18CB4C 8003D10C 54400009 */  bnezl      $v0, .L8003D134
/* 18CB50 8003D110 A4E80000 */   sh        $t0, ($a3)
/* 18CB54 8003D114 91230020 */  lbu        $v1, 0x20($t1)
/* 18CB58 8003D118 24020006 */  addiu      $v0, $zero, 6
/* 18CB5C 8003D11C 14620004 */  bne        $v1, $v0, .L8003D130
/* 18CB60 8003D120 00862023 */   subu      $a0, $a0, $a2
/* 18CB64 8003D124 8CE20020 */  lw         $v0, 0x20($a3)
/* 18CB68 8003D128 00461023 */  subu       $v0, $v0, $a2
/* 18CB6C 8003D12C ACE20020 */  sw         $v0, 0x20($a3)
.L8003D130:
/* 18CB70 8003D130 A4E80000 */  sh         $t0, ($a3)
.L8003D134:
/* 18CB74 8003D134 03E00008 */  jr         $ra
/* 18CB78 8003D138 A4E40008 */   sh        $a0, 8($a3)

glabel func_8003D13C_18CB7C
/* 18CB7C 8003D13C 3C028005 */  lui        $v0, %hi(D_8004D9BC)
/* 18CB80 8003D140 9042D9BC */  lbu        $v0, %lo(D_8004D9BC)($v0)
/* 18CB84 8003D144 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18CB88 8003D148 10400027 */  beqz       $v0, .L8003D1E8
/* 18CB8C 8003D14C AFBF0010 */   sw        $ra, 0x10($sp)
/* 18CB90 8003D150 0C009758 */  jal        func_80025D60_1757A0
/* 18CB94 8003D154 00000000 */   nop
/* 18CB98 8003D158 0C02A5D2 */  jal        func_800A9748
/* 18CB9C 8003D15C 24040001 */   addiu     $a0, $zero, 1
/* 18CBA0 8003D160 2402000E */  addiu      $v0, $zero, 0xe
/* 18CBA4 8003D164 3C018005 */  lui        $at, %hi(D_80052061)
/* 18CBA8 8003D168 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 18CBAC 8003D16C 24020001 */  addiu      $v0, $zero, 1
/* 18CBB0 8003D170 3C018005 */  lui        $at, %hi(D_80052006)
/* 18CBB4 8003D174 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 18CBB8 8003D178 3C028005 */  lui        $v0, %hi(D_8004D98C)
/* 18CBBC 8003D17C 2442D98C */  addiu      $v0, $v0, %lo(D_8004D98C)
/* 18CBC0 8003D180 3C018005 */  lui        $at, %hi(D_8004D9BC)
/* 18CBC4 8003D184 A020D9BC */  sb         $zero, %lo(D_8004D9BC)($at)
/* 18CBC8 8003D188 3C018005 */  lui        $at, %hi(D_80052060)
/* 18CBCC 8003D18C A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 18CBD0 8003D190 3C018005 */  lui        $at, %hi(D_80052000)
/* 18CBD4 8003D194 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 18CBD8 8003D198 0C032663 */  jal        func_800C998C
/* 18CBDC 8003D19C 24040014 */   addiu     $a0, $zero, 0x14
/* 18CBE0 8003D1A0 00402021 */  addu       $a0, $v0, $zero
/* 18CBE4 8003D1A4 3C018005 */  lui        $at, %hi(D_80052244)
/* 18CBE8 8003D1A8 AC242244 */  sw         $a0, %lo(D_80052244)($at)
/* 18CBEC 8003D1AC 0C030134 */  jal        bzero
/* 18CBF0 8003D1B0 24050014 */   addiu     $a1, $zero, 0x14
/* 18CBF4 8003D1B4 0C032663 */  jal        func_800C998C
/* 18CBF8 8003D1B8 24040018 */   addiu     $a0, $zero, 0x18
/* 18CBFC 8003D1BC 00402021 */  addu       $a0, $v0, $zero
/* 18CC00 8003D1C0 3C018005 */  lui        $at, %hi(D_80052218)
/* 18CC04 8003D1C4 AC242218 */  sw         $a0, %lo(D_80052218)($at)
/* 18CC08 8003D1C8 0C030134 */  jal        bzero
/* 18CC0C 8003D1CC 24050018 */   addiu     $a1, $zero, 0x18
/* 18CC10 8003D1D0 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 18CC14 8003D1D4 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 18CC18 8003D1D8 00002821 */  addu       $a1, $zero, $zero
/* 18CC1C 8003D1DC 2406012C */  addiu      $a2, $zero, 0x12c
/* 18CC20 8003D1E0 0C025D06 */  jal        func_80097418
/* 18CC24 8003D1E4 00003821 */   addu      $a3, $zero, $zero
.L8003D1E8:
/* 18CC28 8003D1E8 3C038005 */  lui        $v1, %hi(D_80052060)
/* 18CC2C 8003D1EC 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 18CC30 8003D1F0 24020001 */  addiu      $v0, $zero, 1
/* 18CC34 8003D1F4 1462000B */  bne        $v1, $v0, .L8003D224
/* 18CC38 8003D1F8 00001021 */   addu      $v0, $zero, $zero
/* 18CC3C 8003D1FC 3C048005 */  lui        $a0, %hi(D_80052244)
/* 18CC40 8003D200 8C842244 */  lw         $a0, %lo(D_80052244)($a0)
/* 18CC44 8003D204 24020001 */  addiu      $v0, $zero, 1
/* 18CC48 8003D208 3C018005 */  lui        $at, %hi(D_8004D9BC)
/* 18CC4C 8003D20C 0C0326A1 */  jal        func_800C9A84
/* 18CC50 8003D210 A022D9BC */   sb        $v0, %lo(D_8004D9BC)($at)
/* 18CC54 8003D214 3C048005 */  lui        $a0, %hi(D_80052218)
/* 18CC58 8003D218 0C0326A1 */  jal        func_800C9A84
/* 18CC5C 8003D21C 8C842218 */   lw        $a0, %lo(D_80052218)($a0)
/* 18CC60 8003D220 24020001 */  addiu      $v0, $zero, 1
.L8003D224:
/* 18CC64 8003D224 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18CC68 8003D228 03E00008 */  jr         $ra
/* 18CC6C 8003D22C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003D230_18CC70
/* 18CC70 8003D230 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 18CC74 8003D234 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 18CC78 8003D238 3C01437F */  lui        $at, 0x437f
/* 18CC7C 8003D23C 4481C000 */  mtc1       $at, $f24
/* 18CC80 8003D240 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 18CC84 8003D244 3C014F00 */  lui        $at, 0x4f00
/* 18CC88 8003D248 4481B000 */  mtc1       $at, $f22
/* 18CC8C 8003D24C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 18CC90 8003D250 3C013F80 */  lui        $at, 0x3f80
/* 18CC94 8003D254 4481A000 */  mtc1       $at, $f20
/* 18CC98 8003D258 AFB20020 */  sw         $s2, 0x20($sp)
/* 18CC9C 8003D25C 00809021 */  addu       $s2, $a0, $zero
/* 18CCA0 8003D260 AFB30024 */  sw         $s3, 0x24($sp)
/* 18CCA4 8003D264 00A09821 */  addu       $s3, $a1, $zero
/* 18CCA8 8003D268 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18CCAC 8003D26C 00008821 */  addu       $s1, $zero, $zero
/* 18CCB0 8003D270 AFB40028 */  sw         $s4, 0x28($sp)
/* 18CCB4 8003D274 3C148000 */  lui        $s4, 0x8000
/* 18CCB8 8003D278 24020001 */  addiu      $v0, $zero, 1
/* 18CCBC 8003D27C AFBF002C */  sw         $ra, 0x2c($sp)
/* 18CCC0 8003D280 AFB00018 */  sw         $s0, 0x18($sp)
/* 18CCC4 8003D284 A6420000 */  sh         $v0, ($s2)
/* 18CCC8 8003D288 AE40000C */  sw         $zero, 0xc($s2)
/* 18CCCC 8003D28C AE460010 */  sw         $a2, 0x10($s2)
/* 18CCD0 8003D290 3264FFFF */  andi       $a0, $s3, 0xffff
.L8003D294:
/* 18CCD4 8003D294 24050003 */  addiu      $a1, $zero, 3
/* 18CCD8 8003D298 0C028CB7 */  jal        func_800A32DC
/* 18CCDC 8003D29C 00003021 */   addu      $a2, $zero, $zero
/* 18CCE0 8003D2A0 3225FFFF */  andi       $a1, $s1, 0xffff
/* 18CCE4 8003D2A4 00053080 */  sll        $a2, $a1, 2
/* 18CCE8 8003D2A8 00D23021 */  addu       $a2, $a2, $s2
/* 18CCEC 8003D2AC 000528C0 */  sll        $a1, $a1, 3
/* 18CCF0 8003D2B0 ACC20004 */  sw         $v0, 4($a2)
/* 18CCF4 8003D2B4 9443001E */  lhu        $v1, 0x1e($v0)
/* 18CCF8 8003D2B8 3C048005 */  lui        $a0, %hi(D_80051D6E)
/* 18CCFC 8003D2BC 00852021 */  addu       $a0, $a0, $a1
/* 18CD00 8003D2C0 94841D6E */  lhu        $a0, %lo(D_80051D6E)($a0)
/* 18CD04 8003D2C4 3C018005 */  lui        $at, %hi(D_80051D70)
/* 18CD08 8003D2C8 00250821 */  addu       $at, $at, $a1
/* 18CD0C 8003D2CC C4201D70 */  lwc1       $f0, %lo(D_80051D70)($at)
/* 18CD10 8003D2D0 00641825 */  or         $v1, $v1, $a0
/* 18CD14 8003D2D4 A443001E */  sh         $v1, 0x1e($v0)
/* 18CD18 8003D2D8 C642000C */  lwc1       $f2, 0xc($s2)
/* 18CD1C 8003D2DC 46020002 */  mul.s      $f0, $f0, $f2
/* 18CD20 8003D2E0 00000000 */  nop
/* 18CD24 8003D2E4 46180082 */  mul.s      $f2, $f0, $f24
/* 18CD28 8003D2E8 4602B03E */  c.le.s     $f22, $f2
/* 18CD2C 8003D2EC 00000000 */  nop
/* 18CD30 8003D2F0 00000000 */  nop
/* 18CD34 8003D2F4 45010006 */  bc1t       .L8003D310
/* 18CD38 8003D2F8 24C40004 */   addiu     $a0, $a2, 4
/* 18CD3C 8003D2FC 4600100D */  trunc.w.s  $f0, $f2
/* 18CD40 8003D300 44030000 */  mfc1       $v1, $f0
/* 18CD44 8003D304 00000000 */  nop
/* 18CD48 8003D308 0800F4CA */  j          .L8003D328
/* 18CD4C 8003D30C 306200FF */   andi      $v0, $v1, 0xff
.L8003D310:
/* 18CD50 8003D310 46161001 */  sub.s      $f0, $f2, $f22
/* 18CD54 8003D314 4600008D */  trunc.w.s  $f2, $f0
/* 18CD58 8003D318 44031000 */  mfc1       $v1, $f2
/* 18CD5C 8003D31C 00000000 */  nop
/* 18CD60 8003D320 00741825 */  or         $v1, $v1, $s4
/* 18CD64 8003D324 306200FF */  andi       $v0, $v1, 0xff
.L8003D328:
/* 18CD68 8003D328 AFA20010 */  sw         $v0, 0x10($sp)
/* 18CD6C 8003D32C 8C840000 */  lw         $a0, ($a0)
/* 18CD70 8003D330 240500FF */  addiu      $a1, $zero, 0xff
/* 18CD74 8003D334 240600FF */  addiu      $a2, $zero, 0xff
/* 18CD78 8003D338 0C028E41 */  jal        func_800A3904
/* 18CD7C 8003D33C 240700FF */   addiu     $a3, $zero, 0xff
/* 18CD80 8003D340 3222FFFF */  andi       $v0, $s1, 0xffff
/* 18CD84 8003D344 00028080 */  sll        $s0, $v0, 2
/* 18CD88 8003D348 02128021 */  addu       $s0, $s0, $s2
/* 18CD8C 8003D34C 8E030004 */  lw         $v1, 4($s0)
/* 18CD90 8003D350 000210C0 */  sll        $v0, $v0, 3
/* 18CD94 8003D354 3C018005 */  lui        $at, %hi(D_80051D6C)
/* 18CD98 8003D358 00220821 */  addu       $at, $at, $v0
/* 18CD9C 8003D35C 94221D6C */  lhu        $v0, %lo(D_80051D6C)($at)
/* 18CDA0 8003D360 A462001C */  sh         $v0, 0x1c($v1)
/* 18CDA4 8003D364 8E040004 */  lw         $a0, 4($s0)
/* 18CDA8 8003D368 4406A000 */  mfc1       $a2, $f20
/* 18CDAC 8003D36C 4407A000 */  mfc1       $a3, $f20
/* 18CDB0 8003D370 00000000 */  nop
/* 18CDB4 8003D374 0C02915B */  jal        func_800A456C
/* 18CDB8 8003D378 00002821 */   addu      $a1, $zero, $zero
/* 18CDBC 8003D37C 8E040004 */  lw         $a0, 4($s0)
/* 18CDC0 8003D380 26310001 */  addiu      $s1, $s1, 1
/* 18CDC4 8003D384 0C02919B */  jal        func_800A466C
/* 18CDC8 8003D388 24050001 */   addiu     $a1, $zero, 1
/* 18CDCC 8003D38C 3222FFFF */  andi       $v0, $s1, 0xffff
/* 18CDD0 8003D390 2C420002 */  sltiu      $v0, $v0, 2
/* 18CDD4 8003D394 1440FFBF */  bnez       $v0, .L8003D294
/* 18CDD8 8003D398 3264FFFF */   andi      $a0, $s3, 0xffff
/* 18CDDC 8003D39C 8E420008 */  lw         $v0, 8($s2)
/* 18CDE0 8003D3A0 8C420014 */  lw         $v0, 0x14($v0)
/* 18CDE4 8003D3A4 A4400002 */  sh         $zero, 2($v0)
/* 18CDE8 8003D3A8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 18CDEC 8003D3AC 8FB40028 */  lw         $s4, 0x28($sp)
/* 18CDF0 8003D3B0 8FB30024 */  lw         $s3, 0x24($sp)
/* 18CDF4 8003D3B4 8FB20020 */  lw         $s2, 0x20($sp)
/* 18CDF8 8003D3B8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18CDFC 8003D3BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 18CE00 8003D3C0 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 18CE04 8003D3C4 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 18CE08 8003D3C8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 18CE0C 8003D3CC 03E00008 */  jr         $ra
/* 18CE10 8003D3D0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8003D3D4_18CE14
/* 18CE14 8003D3D4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 18CE18 8003D3D8 AFB20020 */  sw         $s2, 0x20($sp)
/* 18CE1C 8003D3DC 00809021 */  addu       $s2, $a0, $zero
/* 18CE20 8003D3E0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 18CE24 8003D3E4 AFB40028 */  sw         $s4, 0x28($sp)
/* 18CE28 8003D3E8 AFB30024 */  sw         $s3, 0x24($sp)
/* 18CE2C 8003D3EC AFB1001C */  sw         $s1, 0x1c($sp)
/* 18CE30 8003D3F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 18CE34 8003D3F4 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 18CE38 8003D3F8 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 18CE3C 8003D3FC 8E420010 */  lw         $v0, 0x10($s2)
/* 18CE40 8003D400 3C01461E */  lui        $at, 0x461e
/* 18CE44 8003D404 3421A000 */  ori        $at, $at, 0xa000
/* 18CE48 8003D408 44811000 */  mtc1       $at, $f2
/* 18CE4C 8003D40C 00451023 */  subu       $v0, $v0, $a1
/* 18CE50 8003D410 44820000 */  mtc1       $v0, $f0
/* 18CE54 8003D414 00000000 */  nop
/* 18CE58 8003D418 46800020 */  cvt.s.w    $f0, $f0
/* 18CE5C 8003D41C 3C028015 */  lui        $v0, %hi(D_80149E28)
/* 18CE60 8003D420 90429E28 */  lbu        $v0, %lo(D_80149E28)($v0)
/* 18CE64 8003D424 46020002 */  mul.s      $f0, $f0, $f2
/* 18CE68 8003D428 00021040 */  sll        $v0, $v0, 1
/* 18CE6C 8003D42C 3C018005 */  lui        $at, %hi(D_80051D64)
/* 18CE70 8003D430 00220821 */  addu       $at, $at, $v0
/* 18CE74 8003D434 94221D64 */  lhu        $v0, %lo(D_80051D64)($at)
/* 18CE78 8003D438 44821000 */  mtc1       $v0, $f2
/* 18CE7C 8003D43C 00000000 */  nop
/* 18CE80 8003D440 468010A0 */  cvt.s.w    $f2, $f2
/* 18CE84 8003D444 46020003 */  div.s      $f0, $f0, $f2
/* 18CE88 8003D448 3C014470 */  lui        $at, 0x4470
/* 18CE8C 8003D44C 44811000 */  mtc1       $at, $f2
/* 18CE90 8003D450 00000000 */  nop
/* 18CE94 8003D454 46020000 */  add.s      $f0, $f0, $f2
/* 18CE98 8003D458 3C01C300 */  lui        $at, 0xc300
/* 18CE9C 8003D45C 44811000 */  mtc1       $at, $f2
/* 18CEA0 8003D460 4600010D */  trunc.w.s  $f4, $f0
/* 18CEA4 8003D464 44062000 */  mfc1       $a2, $f4
/* 18CEA8 8003D468 00000000 */  nop
/* 18CEAC 8003D46C 44862000 */  mtc1       $a2, $f4
/* 18CEB0 8003D470 00000000 */  nop
/* 18CEB4 8003D474 46802120 */  cvt.s.w    $f4, $f4
/* 18CEB8 8003D478 4604103C */  c.lt.s     $f2, $f4
/* 18CEBC 8003D47C 00000000 */  nop
/* 18CEC0 8003D480 00000000 */  nop
/* 18CEC4 8003D484 45000074 */  bc1f       .L8003D658
/* 18CEC8 8003D488 00008021 */   addu      $s0, $zero, $zero
/* 18CECC 8003D48C 3C0143E0 */  lui        $at, 0x43e0
/* 18CED0 8003D490 44810000 */  mtc1       $at, $f0
/* 18CED4 8003D494 00000000 */  nop
/* 18CED8 8003D498 4600203C */  c.lt.s     $f4, $f0
/* 18CEDC 8003D49C 00000000 */  nop
/* 18CEE0 8003D4A0 4500001A */  bc1f       .L8003D50C
/* 18CEE4 8003D4A4 00000000 */   nop
/* 18CEE8 8003D4A8 3C014340 */  lui        $at, 0x4340
/* 18CEEC 8003D4AC 44810000 */  mtc1       $at, $f0
/* 18CEF0 8003D4B0 00000000 */  nop
/* 18CEF4 8003D4B4 46002001 */  sub.s      $f0, $f4, $f0
/* 18CEF8 8003D4B8 3C014380 */  lui        $at, 0x4380
/* 18CEFC 8003D4BC 44811000 */  mtc1       $at, $f2
/* 18CF00 8003D4C0 00000000 */  nop
/* 18CF04 8003D4C4 46020003 */  div.s      $f0, $f0, $f2
/* 18CF08 8003D4C8 3C013F80 */  lui        $at, 0x3f80
/* 18CF0C 8003D4CC 44811000 */  mtc1       $at, $f2
/* 18CF10 8003D4D0 00000000 */  nop
/* 18CF14 8003D4D4 4600103C */  c.lt.s     $f2, $f0
/* 18CF18 8003D4D8 00000000 */  nop
/* 18CF1C 8003D4DC 00000000 */  nop
/* 18CF20 8003D4E0 45010008 */  bc1t       .L8003D504
/* 18CF24 8003D4E4 E640000C */   swc1      $f0, 0xc($s2)
/* 18CF28 8003D4E8 44801000 */  mtc1       $zero, $f2
/* 18CF2C 8003D4EC 00000000 */  nop
/* 18CF30 8003D4F0 4602003C */  c.lt.s     $f0, $f2
/* 18CF34 8003D4F4 00000000 */  nop
/* 18CF38 8003D4F8 00000000 */  nop
/* 18CF3C 8003D4FC 45000020 */  bc1f       .L8003D580
/* 18CF40 8003D500 00008821 */   addu      $s1, $zero, $zero
.L8003D504:
/* 18CF44 8003D504 0800F55F */  j          .L8003D57C
/* 18CF48 8003D508 E642000C */   swc1      $f2, 0xc($s2)
.L8003D50C:
/* 18CF4C 8003D50C 3C014440 */  lui        $at, 0x4440
/* 18CF50 8003D510 44811000 */  mtc1       $at, $f2
/* 18CF54 8003D514 00000000 */  nop
/* 18CF58 8003D518 4602203C */  c.lt.s     $f4, $f2
/* 18CF5C 8003D51C 00000000 */  nop
/* 18CF60 8003D520 00000000 */  nop
/* 18CF64 8003D524 45000016 */  bc1f       .L8003D580
/* 18CF68 8003D528 00008821 */   addu      $s1, $zero, $zero
/* 18CF6C 8003D52C 46041081 */  sub.s      $f2, $f2, $f4
/* 18CF70 8003D530 3C014380 */  lui        $at, 0x4380
/* 18CF74 8003D534 44810000 */  mtc1       $at, $f0
/* 18CF78 8003D538 00000000 */  nop
/* 18CF7C 8003D53C 46001083 */  div.s      $f2, $f2, $f0
/* 18CF80 8003D540 3C013F80 */  lui        $at, 0x3f80
/* 18CF84 8003D544 44810000 */  mtc1       $at, $f0
/* 18CF88 8003D548 00000000 */  nop
/* 18CF8C 8003D54C 4602003C */  c.lt.s     $f0, $f2
/* 18CF90 8003D550 00000000 */  nop
/* 18CF94 8003D554 00000000 */  nop
/* 18CF98 8003D558 45010007 */  bc1t       .L8003D578
/* 18CF9C 8003D55C E642000C */   swc1      $f2, 0xc($s2)
/* 18CFA0 8003D560 44800000 */  mtc1       $zero, $f0
/* 18CFA4 8003D564 00000000 */  nop
/* 18CFA8 8003D568 4600103C */  c.lt.s     $f2, $f0
/* 18CFAC 8003D56C 00000000 */  nop
/* 18CFB0 8003D570 45000003 */  bc1f       .L8003D580
/* 18CFB4 8003D574 00000000 */   nop
.L8003D578:
/* 18CFB8 8003D578 E640000C */  swc1       $f0, 0xc($s2)
.L8003D57C:
/* 18CFBC 8003D57C 00008821 */  addu       $s1, $zero, $zero
.L8003D580:
/* 18CFC0 8003D580 3C01437F */  lui        $at, 0x437f
/* 18CFC4 8003D584 4481B000 */  mtc1       $at, $f22
/* 18CFC8 8003D588 3C014F00 */  lui        $at, 0x4f00
/* 18CFCC 8003D58C 4481A000 */  mtc1       $at, $f20
/* 18CFD0 8003D590 3C148000 */  lui        $s4, 0x8000
/* 18CFD4 8003D594 00069C00 */  sll        $s3, $a2, 0x10
/* 18CFD8 8003D598 3223FFFF */  andi       $v1, $s1, 0xffff
.L8003D59C:
/* 18CFDC 8003D59C 000310C0 */  sll        $v0, $v1, 3
/* 18CFE0 8003D5A0 3C018005 */  lui        $at, %hi(D_80051D70)
/* 18CFE4 8003D5A4 00220821 */  addu       $at, $at, $v0
/* 18CFE8 8003D5A8 C4201D70 */  lwc1       $f0, %lo(D_80051D70)($at)
/* 18CFEC 8003D5AC C642000C */  lwc1       $f2, 0xc($s2)
/* 18CFF0 8003D5B0 46020002 */  mul.s      $f0, $f0, $f2
/* 18CFF4 8003D5B4 00000000 */  nop
/* 18CFF8 8003D5B8 46160082 */  mul.s      $f2, $f0, $f22
/* 18CFFC 8003D5BC 00031880 */  sll        $v1, $v1, 2
/* 18D000 8003D5C0 4602A03E */  c.le.s     $f20, $f2
/* 18D004 8003D5C4 00721821 */  addu       $v1, $v1, $s2
/* 18D008 8003D5C8 00000000 */  nop
/* 18D00C 8003D5CC 45010006 */  bc1t       .L8003D5E8
/* 18D010 8003D5D0 24630004 */   addiu     $v1, $v1, 4
/* 18D014 8003D5D4 4600100D */  trunc.w.s  $f0, $f2
/* 18D018 8003D5D8 44050000 */  mfc1       $a1, $f0
/* 18D01C 8003D5DC 00000000 */  nop
/* 18D020 8003D5E0 0800F580 */  j          .L8003D600
/* 18D024 8003D5E4 30A200FF */   andi      $v0, $a1, 0xff
.L8003D5E8:
/* 18D028 8003D5E8 46141001 */  sub.s      $f0, $f2, $f20
/* 18D02C 8003D5EC 4600008D */  trunc.w.s  $f2, $f0
/* 18D030 8003D5F0 44051000 */  mfc1       $a1, $f2
/* 18D034 8003D5F4 00000000 */  nop
/* 18D038 8003D5F8 00B42825 */  or         $a1, $a1, $s4
/* 18D03C 8003D5FC 30A200FF */  andi       $v0, $a1, 0xff
.L8003D600:
/* 18D040 8003D600 AFA20010 */  sw         $v0, 0x10($sp)
/* 18D044 8003D604 8C640000 */  lw         $a0, ($v1)
/* 18D048 8003D608 240500FF */  addiu      $a1, $zero, 0xff
/* 18D04C 8003D60C 240600FF */  addiu      $a2, $zero, 0xff
/* 18D050 8003D610 0C028E41 */  jal        func_800A3904
/* 18D054 8003D614 240700FF */   addiu     $a3, $zero, 0xff
/* 18D058 8003D618 3230FFFF */  andi       $s0, $s1, 0xffff
/* 18D05C 8003D61C 00108080 */  sll        $s0, $s0, 2
/* 18D060 8003D620 02128021 */  addu       $s0, $s0, $s2
/* 18D064 8003D624 8E040004 */  lw         $a0, 4($s0)
/* 18D068 8003D628 24050280 */  addiu      $a1, $zero, 0x280
/* 18D06C 8003D62C 0C028D89 */  jal        func_800A3624
/* 18D070 8003D630 00133403 */   sra       $a2, $s3, 0x10
/* 18D074 8003D634 8E040004 */  lw         $a0, 4($s0)
/* 18D078 8003D638 0C028A40 */  jal        func_800A2900
/* 18D07C 8003D63C 26310001 */   addiu     $s1, $s1, 1
/* 18D080 8003D640 3222FFFF */  andi       $v0, $s1, 0xffff
/* 18D084 8003D644 2C420002 */  sltiu      $v0, $v0, 2
/* 18D088 8003D648 1440FFD4 */  bnez       $v0, .L8003D59C
/* 18D08C 8003D64C 3223FFFF */   andi      $v1, $s1, 0xffff
/* 18D090 8003D650 0800F5A5 */  j          .L8003D694
/* 18D094 8003D654 24020001 */   addiu     $v0, $zero, 1
.L8003D658:
/* 18D098 8003D658 3202FFFF */  andi       $v0, $s0, 0xffff
.L8003D65C:
/* 18D09C 8003D65C 00021080 */  sll        $v0, $v0, 2
/* 18D0A0 8003D660 00528821 */  addu       $s1, $v0, $s2
/* 18D0A4 8003D664 8E240004 */  lw         $a0, 4($s1)
/* 18D0A8 8003D668 10800004 */  beqz       $a0, .L8003D67C
/* 18D0AC 8003D66C 26100001 */   addiu     $s0, $s0, 1
/* 18D0B0 8003D670 0C028D30 */  jal        func_800A34C0
/* 18D0B4 8003D674 00000000 */   nop
/* 18D0B8 8003D678 AE200004 */  sw         $zero, 4($s1)
.L8003D67C:
/* 18D0BC 8003D67C 3202FFFF */  andi       $v0, $s0, 0xffff
/* 18D0C0 8003D680 2C420002 */  sltiu      $v0, $v0, 2
/* 18D0C4 8003D684 1440FFF5 */  bnez       $v0, .L8003D65C
/* 18D0C8 8003D688 3202FFFF */   andi      $v0, $s0, 0xffff
/* 18D0CC 8003D68C A6400000 */  sh         $zero, ($s2)
/* 18D0D0 8003D690 00001021 */  addu       $v0, $zero, $zero
.L8003D694:
/* 18D0D4 8003D694 8FBF002C */  lw         $ra, 0x2c($sp)
/* 18D0D8 8003D698 8FB40028 */  lw         $s4, 0x28($sp)
/* 18D0DC 8003D69C 8FB30024 */  lw         $s3, 0x24($sp)
/* 18D0E0 8003D6A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 18D0E4 8003D6A4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18D0E8 8003D6A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 18D0EC 8003D6AC D7B60038 */  ldc1       $f22, 0x38($sp)
/* 18D0F0 8003D6B0 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 18D0F4 8003D6B4 03E00008 */  jr         $ra
/* 18D0F8 8003D6B8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8003D6BC_18D0FC
/* 18D0FC 8003D6BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 18D100 8003D6C0 AFB30024 */  sw         $s3, 0x24($sp)
/* 18D104 8003D6C4 00809821 */  addu       $s3, $a0, $zero
/* 18D108 8003D6C8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 18D10C 8003D6CC AFB20020 */  sw         $s2, 0x20($sp)
/* 18D110 8003D6D0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 18D114 8003D6D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 18D118 8003D6D8 9663001C */  lhu        $v1, 0x1c($s3)
/* 18D11C 8003D6DC 8E710014 */  lw         $s1, 0x14($s3)
/* 18D120 8003D6E0 24020001 */  addiu      $v0, $zero, 1
/* 18D124 8003D6E4 1062003A */  beq        $v1, $v0, .L8003D7D0
/* 18D128 8003D6E8 28620002 */   slti      $v0, $v1, 2
/* 18D12C 8003D6EC 50400005 */  beql       $v0, $zero, .L8003D704
/* 18D130 8003D6F0 3402FFFF */   ori       $v0, $zero, 0xffff
/* 18D134 8003D6F4 10600007 */  beqz       $v1, .L8003D714
/* 18D138 8003D6F8 00001021 */   addu      $v0, $zero, $zero
/* 18D13C 8003D6FC 0800F662 */  j          .L8003D988
/* 18D140 8003D700 00000000 */   nop
.L8003D704:
/* 18D144 8003D704 10620095 */  beq        $v1, $v0, .L8003D95C
/* 18D148 8003D708 00001021 */   addu      $v0, $zero, $zero
/* 18D14C 8003D70C 0800F662 */  j          .L8003D988
/* 18D150 8003D710 00000000 */   nop
.L8003D714:
/* 18D154 8003D714 0C032663 */  jal        func_800C998C
/* 18D158 8003D718 2404014C */   addiu     $a0, $zero, 0x14c
/* 18D15C 8003D71C 00402021 */  addu       $a0, $v0, $zero
/* 18D160 8003D720 2405014C */  addiu      $a1, $zero, 0x14c
/* 18D164 8003D724 0C030134 */  jal        bzero
/* 18D168 8003D728 AE640014 */   sw        $a0, 0x14($s3)
/* 18D16C 8003D72C 8E710014 */  lw         $s1, 0x14($s3)
/* 18D170 8003D730 00008021 */  addu       $s0, $zero, $zero
/* 18D174 8003D734 A6200144 */  sh         $zero, 0x144($s1)
/* 18D178 8003D738 AE200148 */  sw         $zero, 0x148($s1)
/* 18D17C 8003D73C 3203FFFF */  andi       $v1, $s0, 0xffff
.L8003D740:
/* 18D180 8003D740 00031080 */  sll        $v0, $v1, 2
/* 18D184 8003D744 00431021 */  addu       $v0, $v0, $v1
/* 18D188 8003D748 00021080 */  sll        $v0, $v0, 2
/* 18D18C 8003D74C 00512021 */  addu       $a0, $v0, $s1
/* 18D190 8003D750 A4800000 */  sh         $zero, ($a0)
/* 18D194 8003D754 00001821 */  addu       $v1, $zero, $zero
/* 18D198 8003D758 3062FFFF */  andi       $v0, $v1, 0xffff
.L8003D75C:
/* 18D19C 8003D75C 00021080 */  sll        $v0, $v0, 2
/* 18D1A0 8003D760 00441021 */  addu       $v0, $v0, $a0
/* 18D1A4 8003D764 AC400004 */  sw         $zero, 4($v0)
/* 18D1A8 8003D768 24630001 */  addiu      $v1, $v1, 1
/* 18D1AC 8003D76C 3062FFFF */  andi       $v0, $v1, 0xffff
/* 18D1B0 8003D770 2C420002 */  sltiu      $v0, $v0, 2
/* 18D1B4 8003D774 1440FFF9 */  bnez       $v0, .L8003D75C
/* 18D1B8 8003D778 3062FFFF */   andi      $v0, $v1, 0xffff
/* 18D1BC 8003D77C 26100001 */  addiu      $s0, $s0, 1
/* 18D1C0 8003D780 3202FFFF */  andi       $v0, $s0, 0xffff
/* 18D1C4 8003D784 2C420010 */  sltiu      $v0, $v0, 0x10
/* 18D1C8 8003D788 1440FFED */  bnez       $v0, .L8003D740
/* 18D1CC 8003D78C 3203FFFF */   andi      $v1, $s0, 0xffff
/* 18D1D0 8003D790 0C029375 */  jal        func_800A4DD4
/* 18D1D4 8003D794 00000000 */   nop
/* 18D1D8 8003D798 AE220140 */  sw         $v0, 0x140($s1)
/* 18D1DC 8003D79C 240200C0 */  addiu      $v0, $zero, 0xc0
/* 18D1E0 8003D7A0 AFA20010 */  sw         $v0, 0x10($sp)
/* 18D1E4 8003D7A4 8E240140 */  lw         $a0, 0x140($s1)
/* 18D1E8 8003D7A8 24050010 */  addiu      $a1, $zero, 0x10
/* 18D1EC 8003D7AC 24060030 */  addiu      $a2, $zero, 0x30
/* 18D1F0 8003D7B0 0C02939C */  jal        func_800A4E70
/* 18D1F4 8003D7B4 24070130 */   addiu     $a3, $zero, 0x130
/* 18D1F8 8003D7B8 8E230140 */  lw         $v1, 0x140($s1)
/* 18D1FC 8003D7BC 00001021 */  addu       $v0, $zero, $zero
/* 18D200 8003D7C0 A460001C */  sh         $zero, 0x1c($v1)
/* 18D204 8003D7C4 24030001 */  addiu      $v1, $zero, 1
/* 18D208 8003D7C8 0800F662 */  j          .L8003D988
/* 18D20C 8003D7CC A663001C */   sh        $v1, 0x1c($s3)
.L8003D7D0:
/* 18D210 8003D7D0 8E260148 */  lw         $a2, 0x148($s1)
/* 18D214 8003D7D4 3C01461E */  lui        $at, 0x461e
/* 18D218 8003D7D8 3421A000 */  ori        $at, $at, 0xa000
/* 18D21C 8003D7DC 44814000 */  mtc1       $at, $f8
/* 18D220 8003D7E0 24C2FFFF */  addiu      $v0, $a2, -1
/* 18D224 8003D7E4 44821000 */  mtc1       $v0, $f2
/* 18D228 8003D7E8 00000000 */  nop
/* 18D22C 8003D7EC 468010A0 */  cvt.s.w    $f2, $f2
/* 18D230 8003D7F0 3C028015 */  lui        $v0, %hi(D_80149E28)
/* 18D234 8003D7F4 90429E28 */  lbu        $v0, %lo(D_80149E28)($v0)
/* 18D238 8003D7F8 46081082 */  mul.s      $f2, $f2, $f8
/* 18D23C 8003D7FC 00021040 */  sll        $v0, $v0, 1
/* 18D240 8003D800 3C018005 */  lui        $at, %hi(D_80051D64)
/* 18D244 8003D804 00220821 */  addu       $at, $at, $v0
/* 18D248 8003D808 94221D64 */  lhu        $v0, %lo(D_80051D64)($at)
/* 18D24C 8003D80C 44823000 */  mtc1       $v0, $f6
/* 18D250 8003D810 00000000 */  nop
/* 18D254 8003D814 468031A0 */  cvt.s.w    $f6, $f6
/* 18D258 8003D818 46061083 */  div.s      $f2, $f2, $f6
/* 18D25C 8003D81C 96240144 */  lhu        $a0, 0x144($s1)
/* 18D260 8003D820 3C0142B0 */  lui        $at, 0x42b0
/* 18D264 8003D824 44812000 */  mtc1       $at, $f4
/* 18D268 8003D828 3083FFFF */  andi       $v1, $a0, 0xffff
/* 18D26C 8003D82C 44830000 */  mtc1       $v1, $f0
/* 18D270 8003D830 00000000 */  nop
/* 18D274 8003D834 46800020 */  cvt.s.w    $f0, $f0
/* 18D278 8003D838 46040102 */  mul.s      $f4, $f0, $f4
/* 18D27C 8003D83C 4604103C */  c.lt.s     $f2, $f4
/* 18D280 8003D840 00000000 */  nop
/* 18D284 8003D844 4500001F */  bc1f       .L8003D8C4
/* 18D288 8003D848 00000000 */   nop
/* 18D28C 8003D84C 44860000 */  mtc1       $a2, $f0
/* 18D290 8003D850 00000000 */  nop
/* 18D294 8003D854 46800020 */  cvt.s.w    $f0, $f0
/* 18D298 8003D858 46080002 */  mul.s      $f0, $f0, $f8
/* 18D29C 8003D85C 46060003 */  div.s      $f0, $f0, $f6
/* 18D2A0 8003D860 4600203E */  c.le.s     $f4, $f0
/* 18D2A4 8003D864 00000000 */  nop
/* 18D2A8 8003D868 00000000 */  nop
/* 18D2AC 8003D86C 45000015 */  bc1f       .L8003D8C4
/* 18D2B0 8003D870 00031040 */   sll       $v0, $v1, 1
/* 18D2B4 8003D874 3C058005 */  lui        $a1, %hi(D_80051C90)
/* 18D2B8 8003D878 00A22821 */  addu       $a1, $a1, $v0
/* 18D2BC 8003D87C 94A51C90 */  lhu        $a1, %lo(D_80051C90)($a1)
/* 18D2C0 8003D880 2402091B */  addiu      $v0, $zero, 0x91b
/* 18D2C4 8003D884 10A20005 */  beq        $a1, $v0, .L8003D89C
/* 18D2C8 8003D888 2402091C */   addiu     $v0, $zero, 0x91c
/* 18D2CC 8003D88C 14A20005 */  bne        $a1, $v0, .L8003D8A4
/* 18D2D0 8003D890 3062000F */   andi      $v0, $v1, 0xf
/* 18D2D4 8003D894 0800F631 */  j          .L8003D8C4
/* 18D2D8 8003D898 00000000 */   nop
.L8003D89C:
/* 18D2DC 8003D89C 0800F630 */  j          .L8003D8C0
/* 18D2E0 8003D8A0 24820001 */   addiu     $v0, $a0, 1
.L8003D8A4:
/* 18D2E4 8003D8A4 00022080 */  sll        $a0, $v0, 2
/* 18D2E8 8003D8A8 00822021 */  addu       $a0, $a0, $v0
/* 18D2EC 8003D8AC 00042080 */  sll        $a0, $a0, 2
/* 18D2F0 8003D8B0 0C00F48C */  jal        func_8003D230_18CC70
/* 18D2F4 8003D8B4 02242021 */   addu      $a0, $s1, $a0
/* 18D2F8 8003D8B8 96220144 */  lhu        $v0, 0x144($s1)
/* 18D2FC 8003D8BC 24420001 */  addiu      $v0, $v0, 1
.L8003D8C0:
/* 18D300 8003D8C0 A6220144 */  sh         $v0, 0x144($s1)
.L8003D8C4:
/* 18D304 8003D8C4 8E240140 */  lw         $a0, 0x140($s1)
/* 18D308 8003D8C8 00008021 */  addu       $s0, $zero, $zero
/* 18D30C 8003D8CC 0C028A40 */  jal        func_800A2900
/* 18D310 8003D8D0 00009021 */   addu      $s2, $zero, $zero
/* 18D314 8003D8D4 3202FFFF */  andi       $v0, $s0, 0xffff
.L8003D8D8:
/* 18D318 8003D8D8 00021880 */  sll        $v1, $v0, 2
/* 18D31C 8003D8DC 00621821 */  addu       $v1, $v1, $v0
/* 18D320 8003D8E0 00031880 */  sll        $v1, $v1, 2
/* 18D324 8003D8E4 02232021 */  addu       $a0, $s1, $v1
/* 18D328 8003D8E8 94820000 */  lhu        $v0, ($a0)
/* 18D32C 8003D8EC 10400005 */  beqz       $v0, .L8003D904
/* 18D330 8003D8F0 26100001 */   addiu     $s0, $s0, 1
/* 18D334 8003D8F4 8E250148 */  lw         $a1, 0x148($s1)
/* 18D338 8003D8F8 0C00F4F5 */  jal        func_8003D3D4_18CE14
/* 18D33C 8003D8FC 00000000 */   nop
/* 18D340 8003D900 02429021 */  addu       $s2, $s2, $v0
.L8003D904:
/* 18D344 8003D904 3202FFFF */  andi       $v0, $s0, 0xffff
/* 18D348 8003D908 2C420010 */  sltiu      $v0, $v0, 0x10
/* 18D34C 8003D90C 1440FFF2 */  bnez       $v0, .L8003D8D8
/* 18D350 8003D910 3202FFFF */   andi      $v0, $s0, 0xffff
/* 18D354 8003D914 96220144 */  lhu        $v0, 0x144($s1)
/* 18D358 8003D918 00021040 */  sll        $v0, $v0, 1
/* 18D35C 8003D91C 3C018005 */  lui        $at, %hi(D_80051C90)
/* 18D360 8003D920 00220821 */  addu       $at, $at, $v0
/* 18D364 8003D924 94221C90 */  lhu        $v0, %lo(D_80051C90)($at)
/* 18D368 8003D928 3243FFFF */  andi       $v1, $s2, 0xffff
/* 18D36C 8003D92C 2C630001 */  sltiu      $v1, $v1, 1
/* 18D370 8003D930 3842091C */  xori       $v0, $v0, 0x91c
/* 18D374 8003D934 2C420001 */  sltiu      $v0, $v0, 1
/* 18D378 8003D938 00431024 */  and        $v0, $v0, $v1
/* 18D37C 8003D93C 10400002 */  beqz       $v0, .L8003D948
/* 18D380 8003D940 3402FFFF */   ori       $v0, $zero, 0xffff
/* 18D384 8003D944 A662001C */  sh         $v0, 0x1c($s3)
.L8003D948:
/* 18D388 8003D948 8E230148 */  lw         $v1, 0x148($s1)
/* 18D38C 8003D94C 00001021 */  addu       $v0, $zero, $zero
/* 18D390 8003D950 24630001 */  addiu      $v1, $v1, 1
/* 18D394 8003D954 0800F662 */  j          .L8003D988
/* 18D398 8003D958 AE230148 */   sw        $v1, 0x148($s1)
.L8003D95C:
/* 18D39C 8003D95C 8E240140 */  lw         $a0, 0x140($s1)
/* 18D3A0 8003D960 0C029393 */  jal        func_800A4E4C
/* 18D3A4 8003D964 00000000 */   nop
/* 18D3A8 8003D968 0C0326A1 */  jal        func_800C9A84
/* 18D3AC 8003D96C 8E640014 */   lw        $a0, 0x14($s3)
/* 18D3B0 8003D970 24030001 */  addiu      $v1, $zero, 1
/* 18D3B4 8003D974 3C018005 */  lui        $at, %hi(D_8005222C)
/* 18D3B8 8003D978 AC20222C */  sw         $zero, %lo(D_8005222C)($at)
/* 18D3BC 8003D97C 3C018005 */  lui        $at, %hi(D_80052062)
/* 18D3C0 8003D980 A0232062 */  sb         $v1, %lo(D_80052062)($at)
/* 18D3C4 8003D984 24020001 */  addiu      $v0, $zero, 1
.L8003D988:
/* 18D3C8 8003D988 8FBF0028 */  lw         $ra, 0x28($sp)
/* 18D3CC 8003D98C 8FB30024 */  lw         $s3, 0x24($sp)
/* 18D3D0 8003D990 8FB20020 */  lw         $s2, 0x20($sp)
/* 18D3D4 8003D994 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18D3D8 8003D998 8FB00018 */  lw         $s0, 0x18($sp)
/* 18D3DC 8003D99C 03E00008 */  jr         $ra
/* 18D3E0 8003D9A0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8003D9A4_18D3E4
/* 18D3E4 8003D9A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18D3E8 8003D9A8 3C048004 */  lui        $a0, %hi(func_8003D6BC_18D0FC)
/* 18D3EC 8003D9AC 2484D6BC */  addiu      $a0, $a0, %lo(func_8003D6BC_18D0FC)
/* 18D3F0 8003D9B0 00002821 */  addu       $a1, $zero, $zero
/* 18D3F4 8003D9B4 2406012C */  addiu      $a2, $zero, 0x12c
/* 18D3F8 8003D9B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 18D3FC 8003D9BC 0C025D06 */  jal        func_80097418
/* 18D400 8003D9C0 24070001 */   addiu     $a3, $zero, 1
/* 18D404 8003D9C4 3C018005 */  lui        $at, %hi(D_8005222C)
/* 18D408 8003D9C8 AC22222C */  sw         $v0, %lo(D_8005222C)($at)
/* 18D40C 8003D9CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18D410 8003D9D0 24020001 */  addiu      $v0, $zero, 1
/* 18D414 8003D9D4 03E00008 */  jr         $ra
/* 18D418 8003D9D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003D9DC_18D41C
/* 18D41C 8003D9DC 3C028005 */  lui        $v0, %hi(D_8005222C)
/* 18D420 8003D9E0 8C42222C */  lw         $v0, %lo(D_8005222C)($v0)
/* 18D424 8003D9E4 03E00008 */  jr         $ra
/* 18D428 8003D9E8 0002102B */   sltu      $v0, $zero, $v0
/* 18D42C 8003D9EC 00000000 */  nop