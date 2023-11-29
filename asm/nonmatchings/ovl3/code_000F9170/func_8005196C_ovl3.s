glabel func_8005196C_ovl3
/* FAE7C 8005196C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* FAE80 80051970 AFBF0044 */  sw         $ra, 0x44($sp)
/* FAE84 80051974 AFB60040 */  sw         $s6, 0x40($sp)
/* FAE88 80051978 AFB5003C */  sw         $s5, 0x3C($sp)
/* FAE8C 8005197C AFB40038 */  sw         $s4, 0x38($sp)
/* FAE90 80051980 AFB30034 */  sw         $s3, 0x34($sp)
/* FAE94 80051984 AFB20030 */  sw         $s2, 0x30($sp)
/* FAE98 80051988 AFB1002C */  sw         $s1, 0x2C($sp)
/* FAE9C 8005198C AFB00028 */  sw         $s0, 0x28($sp)
/* FAEA0 80051990 3C058007 */  lui        $a1, %hi(D_8006A238_ovl3)
/* FAEA4 80051994 24A5A238 */  addiu      $a1, $a1, %lo(D_8006A238_ovl3)
/* FAEA8 80051998 88A20000 */  lwl        $v0, 0x0($a1)
/* FAEAC 8005199C 98A20003 */  lwr        $v0, 0x3($a1)
/* FAEB0 800519A0 88A30004 */  lwl        $v1, 0x4($a1)
/* FAEB4 800519A4 98A30007 */  lwr        $v1, 0x7($a1)
/* FAEB8 800519A8 88A40008 */  lwl        $a0, 0x8($a1)
/* FAEBC 800519AC 98A4000B */  lwr        $a0, 0xB($a1)
/* FAEC0 800519B0 ABA20018 */  swl        $v0, 0x18($sp)
/* FAEC4 800519B4 BBA2001B */  swr        $v0, 0x1B($sp)
/* FAEC8 800519B8 ABA3001C */  swl        $v1, 0x1C($sp)
/* FAECC 800519BC BBA3001F */  swr        $v1, 0x1F($sp)
/* FAED0 800519C0 ABA40020 */  swl        $a0, 0x20($sp)
/* FAED4 800519C4 BBA40023 */  swr        $a0, 0x23($sp)
/* FAED8 800519C8 0C00E109 */  jal        func_80038424_ovl3
/* FAEDC 800519CC 0000A021 */   addu      $s4, $zero, $zero
/* FAEE0 800519D0 24040011 */  addiu      $a0, $zero, 0x11
/* FAEE4 800519D4 24050001 */  addiu      $a1, $zero, 0x1
/* FAEE8 800519D8 0C00D925 */  jal        func_80036494_ovl3
/* FAEEC 800519DC 24060036 */   addiu     $a2, $zero, 0x36
/* FAEF0 800519E0 00409821 */  addu       $s3, $v0, $zero
/* FAEF4 800519E4 8E64000C */  lw         $a0, 0xC($s3)
/* FAEF8 800519E8 24050038 */  addiu      $a1, $zero, 0x38
/* FAEFC 800519EC 2406004E */  addiu      $a2, $zero, 0x4E
/* FAF00 800519F0 0C028F9A */  jal        func_800A3E68
/* FAF04 800519F4 2415004A */   addiu     $s5, $zero, 0x4A
/* FAF08 800519F8 8E64000C */  lw         $a0, 0xC($s3)
/* FAF0C 800519FC 24050040 */  addiu      $a1, $zero, 0x40
/* FAF10 80051A00 0C028D89 */  jal        func_800A3624
/* FAF14 80051A04 24060040 */   addiu     $a2, $zero, 0x40
/* FAF18 80051A08 24040259 */  addiu      $a0, $zero, 0x259
/* FAF1C 80051A0C 8E62000C */  lw         $v0, 0xC($s3)
/* FAF20 80051A10 00002821 */  addu       $a1, $zero, $zero
/* FAF24 80051A14 2406004A */  addiu      $a2, $zero, 0x4A
/* FAF28 80051A18 0C00D925 */  jal        func_80036494_ovl3
/* FAF2C 80051A1C A440001C */   sh        $zero, 0x1C($v0)
/* FAF30 80051A20 8C44000C */  lw         $a0, 0xC($v0)
/* FAF34 80051A24 24050060 */  addiu      $a1, $zero, 0x60
/* FAF38 80051A28 0C028D89 */  jal        func_800A3624
/* FAF3C 80051A2C 240600A0 */   addiu     $a2, $zero, 0xA0
/* FAF40 80051A30 2404025A */  addiu      $a0, $zero, 0x25A
/* FAF44 80051A34 00002821 */  addu       $a1, $zero, $zero
/* FAF48 80051A38 0C00D925 */  jal        func_80036494_ovl3
/* FAF4C 80051A3C 2406004B */   addiu     $a2, $zero, 0x4B
/* FAF50 80051A40 8C44000C */  lw         $a0, 0xC($v0)
/* FAF54 80051A44 240502C0 */  addiu      $a1, $zero, 0x2C0
/* FAF58 80051A48 0C028D89 */  jal        func_800A3624
/* FAF5C 80051A4C 24060094 */   addiu     $a2, $zero, 0x94
/* FAF60 80051A50 2404025B */  addiu      $a0, $zero, 0x25B
/* FAF64 80051A54 00002821 */  addu       $a1, $zero, $zero
/* FAF68 80051A58 0C00D925 */  jal        func_80036494_ovl3
/* FAF6C 80051A5C 24060052 */   addiu     $a2, $zero, 0x52
/* FAF70 80051A60 8C44000C */  lw         $a0, 0xC($v0)
/* FAF74 80051A64 240501C0 */  addiu      $a1, $zero, 0x1C0
/* FAF78 80051A68 0C028D89 */  jal        func_800A3624
/* FAF7C 80051A6C 24060134 */   addiu     $a2, $zero, 0x134
/* FAF80 80051A70 24040052 */  addiu      $a0, $zero, 0x52
/* FAF84 80051A74 0C00DD19 */  jal        func_80037464_ovl3
/* FAF88 80051A78 24050053 */   addiu     $a1, $zero, 0x53
/* FAF8C 80051A7C 8C44000C */  lw         $a0, 0xC($v0)
/* FAF90 80051A80 24050324 */  addiu      $a1, $zero, 0x324
/* FAF94 80051A84 0C028D89 */  jal        func_800A3624
/* FAF98 80051A88 24060134 */   addiu     $a2, $zero, 0x134
/* FAF9C 80051A8C 2404025C */  addiu      $a0, $zero, 0x25C
/* FAFA0 80051A90 00002821 */  addu       $a1, $zero, $zero
/* FAFA4 80051A94 0C00D925 */  jal        func_80036494_ovl3
/* FAFA8 80051A98 2406004C */   addiu     $a2, $zero, 0x4C
/* FAFAC 80051A9C 8C44000C */  lw         $a0, 0xC($v0)
/* FAFB0 80051AA0 24050080 */  addiu      $a1, $zero, 0x80
/* FAFB4 80051AA4 0C028D89 */  jal        func_800A3624
/* FAFB8 80051AA8 24060314 */   addiu     $a2, $zero, 0x314
/* FAFBC 80051AAC 2404025D */  addiu      $a0, $zero, 0x25D
/* FAFC0 80051AB0 00002821 */  addu       $a1, $zero, $zero
/* FAFC4 80051AB4 0C00D925 */  jal        func_80036494_ovl3
/* FAFC8 80051AB8 2406004D */   addiu     $a2, $zero, 0x4D
/* FAFCC 80051ABC 8C44000C */  lw         $a0, 0xC($v0)
/* FAFD0 80051AC0 24050300 */  addiu      $a1, $zero, 0x300
/* FAFD4 80051AC4 0C028D89 */  jal        func_800A3624
/* FAFD8 80051AC8 24060320 */   addiu     $a2, $zero, 0x320
/* FAFDC 80051ACC 2404025E */  addiu      $a0, $zero, 0x25E
/* FAFE0 80051AD0 00002821 */  addu       $a1, $zero, $zero
/* FAFE4 80051AD4 0C00D925 */  jal        func_80036494_ovl3
/* FAFE8 80051AD8 2406004E */   addiu     $a2, $zero, 0x4E
/* FAFEC 80051ADC 8C44000C */  lw         $a0, 0xC($v0)
/* FAFF0 80051AE0 24050420 */  addiu      $a1, $zero, 0x420
/* FAFF4 80051AE4 0C028D89 */  jal        func_800A3624
/* FAFF8 80051AE8 24060320 */   addiu     $a2, $zero, 0x320
/* FAFFC 80051AEC 2404025F */  addiu      $a0, $zero, 0x25F
/* FB000 80051AF0 00002821 */  addu       $a1, $zero, $zero
/* FB004 80051AF4 0C00D925 */  jal        func_80036494_ovl3
/* FB008 80051AF8 2406004F */   addiu     $a2, $zero, 0x4F
/* FB00C 80051AFC 8C44000C */  lw         $a0, 0xC($v0)
/* FB010 80051B00 24050420 */  addiu      $a1, $zero, 0x420
/* FB014 80051B04 0C028D89 */  jal        func_800A3624
/* FB018 80051B08 24060320 */   addiu     $a2, $zero, 0x320
/* FB01C 80051B0C 24040260 */  addiu      $a0, $zero, 0x260
/* FB020 80051B10 00002821 */  addu       $a1, $zero, $zero
/* FB024 80051B14 0C00D925 */  jal        func_80036494_ovl3
/* FB028 80051B18 24060050 */   addiu     $a2, $zero, 0x50
/* FB02C 80051B1C 8C44000C */  lw         $a0, 0xC($v0)
/* FB030 80051B20 24050420 */  addiu      $a1, $zero, 0x420
/* FB034 80051B24 0C028D89 */  jal        func_800A3624
/* FB038 80051B28 24060320 */   addiu     $a2, $zero, 0x320
/* FB03C 80051B2C 24040261 */  addiu      $a0, $zero, 0x261
/* FB040 80051B30 00002821 */  addu       $a1, $zero, $zero
/* FB044 80051B34 0C00D925 */  jal        func_80036494_ovl3
/* FB048 80051B38 24060051 */   addiu     $a2, $zero, 0x51
/* FB04C 80051B3C 8C44000C */  lw         $a0, 0xC($v0)
/* FB050 80051B40 24050420 */  addiu      $a1, $zero, 0x420
/* FB054 80051B44 0C028D89 */  jal        func_800A3624
/* FB058 80051B48 24060320 */   addiu     $a2, $zero, 0x320
/* FB05C 80051B4C 24040262 */  addiu      $a0, $zero, 0x262
.L80051B50_ovl3:
/* FB060 80051B50 24050001 */  addiu      $a1, $zero, 0x1
/* FB064 80051B54 3290FFFF */  andi       $s0, $s4, 0xFFFF
/* FB068 80051B58 001088C0 */  sll        $s1, $s0, 3
/* FB06C 80051B5C 02308823 */  subu       $s1, $s1, $s0
/* FB070 80051B60 26260054 */  addiu      $a2, $s1, 0x54
/* FB074 80051B64 0C00D925 */  jal        func_80036494_ovl3
/* FB078 80051B68 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* FB07C 80051B6C 00409821 */  addu       $s3, $v0, $zero
/* FB080 80051B70 00108040 */  sll        $s0, $s0, 1
/* FB084 80051B74 27B60010 */  addiu      $s6, $sp, 0x10
/* FB088 80051B78 02168021 */  addu       $s0, $s0, $s6
/* FB08C 80051B7C 96120008 */  lhu        $s2, 0x8($s0)
/* FB090 80051B80 8E64000C */  lw         $a0, 0xC($s3)
/* FB094 80051B84 24060134 */  addiu      $a2, $zero, 0x134
/* FB098 80051B88 26500015 */  addiu      $s0, $s2, 0x15
/* FB09C 80051B8C 00108480 */  sll        $s0, $s0, 18
/* FB0A0 80051B90 00108403 */  sra        $s0, $s0, 16
/* FB0A4 80051B94 0C028D89 */  jal        func_800A3624
/* FB0A8 80051B98 02002821 */   addu      $a1, $s0, $zero
/* FB0AC 80051B9C 24040054 */  addiu      $a0, $zero, 0x54
/* FB0B0 80051BA0 8E62000C */  lw         $v0, 0xC($s3)
/* FB0B4 80051BA4 26250057 */  addiu      $a1, $s1, 0x57
/* FB0B8 80051BA8 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* FB0BC 80051BAC 0C00DD19 */  jal        func_80037464_ovl3
/* FB0C0 80051BB0 A455001C */   sh        $s5, 0x1C($v0)
/* FB0C4 80051BB4 00409821 */  addu       $s3, $v0, $zero
/* FB0C8 80051BB8 8E64000C */  lw         $a0, 0xC($s3)
/* FB0CC 80051BBC 02002821 */  addu       $a1, $s0, $zero
/* FB0D0 80051BC0 0C028D89 */  jal        func_800A3624
/* FB0D4 80051BC4 240601CC */   addiu     $a2, $zero, 0x1CC
/* FB0D8 80051BC8 8E62000C */  lw         $v0, 0xC($s3)
/* FB0DC 80051BCC A455001C */  sh         $s5, 0x1C($v0)
/* FB0E0 80051BD0 8E62000C */  lw         $v0, 0xC($s3)
/* FB0E4 80051BD4 24040054 */  addiu      $a0, $zero, 0x54
/* FB0E8 80051BD8 8C420000 */  lw         $v0, 0x0($v0)
/* FB0EC 80051BDC 2625005A */  addiu      $a1, $s1, 0x5A
/* FB0F0 80051BE0 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* FB0F4 80051BE4 0C00DD19 */  jal        func_80037464_ovl3
/* FB0F8 80051BE8 A040002F */   sb        $zero, 0x2F($v0)
/* FB0FC 80051BEC 00409821 */  addu       $s3, $v0, $zero
/* FB100 80051BF0 8E64000C */  lw         $a0, 0xC($s3)
/* FB104 80051BF4 02002821 */  addu       $a1, $s0, $zero
/* FB108 80051BF8 0C028D89 */  jal        func_800A3624
/* FB10C 80051BFC 2406026C */   addiu     $a2, $zero, 0x26C
/* FB110 80051C00 8E62000C */  lw         $v0, 0xC($s3)
/* FB114 80051C04 A455001C */  sh         $s5, 0x1C($v0)
/* FB118 80051C08 8E62000C */  lw         $v0, 0xC($s3)
/* FB11C 80051C0C 24040263 */  addiu      $a0, $zero, 0x263
/* FB120 80051C10 24050001 */  addiu      $a1, $zero, 0x1
/* FB124 80051C14 8C420000 */  lw         $v0, 0x0($v0)
/* FB128 80051C18 26260055 */  addiu      $a2, $s1, 0x55
/* FB12C 80051C1C 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* FB130 80051C20 0C00D925 */  jal        func_80036494_ovl3
/* FB134 80051C24 A040002F */   sb        $zero, 0x2F($v0)
/* FB138 80051C28 00409821 */  addu       $s3, $v0, $zero
/* FB13C 80051C2C 8E64000C */  lw         $a0, 0xC($s3)
/* FB140 80051C30 26500010 */  addiu      $s0, $s2, 0x10
/* FB144 80051C34 00108480 */  sll        $s0, $s0, 18
/* FB148 80051C38 00108403 */  sra        $s0, $s0, 16
/* FB14C 80051C3C 02002821 */  addu       $a1, $s0, $zero
/* FB150 80051C40 0C028D89 */  jal        func_800A3624
/* FB154 80051C44 2406014C */   addiu     $a2, $zero, 0x14C
/* FB158 80051C48 24040055 */  addiu      $a0, $zero, 0x55
/* FB15C 80051C4C 8E62000C */  lw         $v0, 0xC($s3)
/* FB160 80051C50 26250056 */  addiu      $a1, $s1, 0x56
/* FB164 80051C54 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* FB168 80051C58 0C00DD19 */  jal        func_80037464_ovl3
/* FB16C 80051C5C A455001C */   sh        $s5, 0x1C($v0)
/* FB170 80051C60 00409821 */  addu       $s3, $v0, $zero
/* FB174 80051C64 8E64000C */  lw         $a0, 0xC($s3)
/* FB178 80051C68 2652002B */  addiu      $s2, $s2, 0x2B
/* FB17C 80051C6C 00129480 */  sll        $s2, $s2, 18
/* FB180 80051C70 00129403 */  sra        $s2, $s2, 16
/* FB184 80051C74 02402821 */  addu       $a1, $s2, $zero
/* FB188 80051C78 0C028D89 */  jal        func_800A3624
/* FB18C 80051C7C 2406014C */   addiu     $a2, $zero, 0x14C
/* FB190 80051C80 8E62000C */  lw         $v0, 0xC($s3)
/* FB194 80051C84 A455001C */  sh         $s5, 0x1C($v0)
/* FB198 80051C88 8E62000C */  lw         $v0, 0xC($s3)
/* FB19C 80051C8C 24040055 */  addiu      $a0, $zero, 0x55
/* FB1A0 80051C90 8C420000 */  lw         $v0, 0x0($v0)
/* FB1A4 80051C94 26250058 */  addiu      $a1, $s1, 0x58
/* FB1A8 80051C98 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* FB1AC 80051C9C 0C00DD19 */  jal        func_80037464_ovl3
/* FB1B0 80051CA0 A040002F */   sb        $zero, 0x2F($v0)
/* FB1B4 80051CA4 00409821 */  addu       $s3, $v0, $zero
/* FB1B8 80051CA8 8E64000C */  lw         $a0, 0xC($s3)
/* FB1BC 80051CAC 02002821 */  addu       $a1, $s0, $zero
/* FB1C0 80051CB0 0C028D89 */  jal        func_800A3624
/* FB1C4 80051CB4 240601E8 */   addiu     $a2, $zero, 0x1E8
/* FB1C8 80051CB8 8E62000C */  lw         $v0, 0xC($s3)
/* FB1CC 80051CBC A455001C */  sh         $s5, 0x1C($v0)
/* FB1D0 80051CC0 8E62000C */  lw         $v0, 0xC($s3)
/* FB1D4 80051CC4 24040055 */  addiu      $a0, $zero, 0x55
/* FB1D8 80051CC8 8C420000 */  lw         $v0, 0x0($v0)
/* FB1DC 80051CCC 26310059 */  addiu      $s1, $s1, 0x59
/* FB1E0 80051CD0 3225FFFF */  andi       $a1, $s1, 0xFFFF
/* FB1E4 80051CD4 0C00DD19 */  jal        func_80037464_ovl3
/* FB1E8 80051CD8 A040002F */   sb        $zero, 0x2F($v0)
/* FB1EC 80051CDC 00409821 */  addu       $s3, $v0, $zero
/* FB1F0 80051CE0 8E64000C */  lw         $a0, 0xC($s3)
/* FB1F4 80051CE4 02402821 */  addu       $a1, $s2, $zero
/* FB1F8 80051CE8 0C028D89 */  jal        func_800A3624
/* FB1FC 80051CEC 240601E8 */   addiu     $a2, $zero, 0x1E8
/* FB200 80051CF0 8E62000C */  lw         $v0, 0xC($s3)
/* FB204 80051CF4 A455001C */  sh         $s5, 0x1C($v0)
/* FB208 80051CF8 8E62000C */  lw         $v0, 0xC($s3)
/* FB20C 80051CFC 8C420000 */  lw         $v0, 0x0($v0)
/* FB210 80051D00 26940001 */  addiu      $s4, $s4, 0x1
/* FB214 80051D04 A040002F */  sb         $zero, 0x2F($v0)
/* FB218 80051D08 3282FFFF */  andi       $v0, $s4, 0xFFFF
/* FB21C 80051D0C 2C420006 */  sltiu      $v0, $v0, 0x6
/* FB220 80051D10 1440FF8F */  bnez       $v0, .L80051B50_ovl3
/* FB224 80051D14 24040262 */   addiu     $a0, $zero, 0x262
/* FB228 80051D18 02C02021 */  addu       $a0, $s6, $zero
/* FB22C 80051D1C 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FB230 80051D20 24060003 */  addiu      $a2, $zero, 0x3
/* FB234 80051D24 3C028007 */  lui        $v0, %hi(D_8006955C_ovl3)
/* FB238 80051D28 2442955C */  addiu      $v0, $v0, %lo(D_8006955C_ovl3)
/* FB23C 80051D2C AFA20010 */  sw         $v0, 0x10($sp)
/* FB240 80051D30 2402FFFE */  addiu      $v0, $zero, -0x2
/* FB244 80051D34 A3A20014 */  sb         $v0, 0x14($sp)
/* FB248 80051D38 24020001 */  addiu      $v0, $zero, 0x1
/* FB24C 80051D3C A3A20016 */  sb         $v0, 0x16($sp)
/* FB250 80051D40 24020003 */  addiu      $v0, $zero, 0x3
/* FB254 80051D44 A3A00015 */  sb         $zero, 0x15($sp)
/* FB258 80051D48 0C00DE82 */  jal        func_80037A08_ovl3
/* FB25C 80051D4C A3A20017 */   sb        $v0, 0x17($sp)
/* FB260 80051D50 8FBF0044 */  lw         $ra, 0x44($sp)
/* FB264 80051D54 8FB60040 */  lw         $s6, 0x40($sp)
/* FB268 80051D58 8FB5003C */  lw         $s5, 0x3C($sp)
/* FB26C 80051D5C 8FB40038 */  lw         $s4, 0x38($sp)
/* FB270 80051D60 8FB30034 */  lw         $s3, 0x34($sp)
/* FB274 80051D64 8FB20030 */  lw         $s2, 0x30($sp)
/* FB278 80051D68 8FB1002C */  lw         $s1, 0x2C($sp)
/* FB27C 80051D6C 8FB00028 */  lw         $s0, 0x28($sp)
/* FB280 80051D70 03E00008 */  jr         $ra
/* FB284 80051D74 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_8005196C_ovl3, . - func_8005196C_ovl3
