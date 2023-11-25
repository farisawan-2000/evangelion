glabel func_8009AE40
/* 5A40 8009AE40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5A44 8009AE44 24020001 */  addiu      $v0, $zero, 0x1
/* 5A48 8009AE48 3C018017 */  lui        $at, %hi(D_8016E590)
/* 5A4C 8009AE4C AC22E590 */  sw         $v0, %lo(D_8016E590)($at)
/* 5A50 8009AE50 3C018015 */  lui        $at, %hi(D_80149BAC)
/* 5A54 8009AE54 AC229BAC */  sw         $v0, %lo(D_80149BAC)($at)
/* 5A58 8009AE58 3C018015 */  lui        $at, %hi(D_80149BC0)
/* 5A5C 8009AE5C AC229BC0 */  sw         $v0, %lo(D_80149BC0)($at)
/* 5A60 8009AE60 3C018017 */  lui        $at, %hi(D_8016D200)
/* 5A64 8009AE64 AC22D200 */  sw         $v0, %lo(D_8016D200)($at)
/* 5A68 8009AE68 2402FFFF */  addiu      $v0, $zero, -0x1
/* 5A6C 8009AE6C 3C018017 */  lui        $at, %hi(D_8016D03C)
/* 5A70 8009AE70 A422D03C */  sh         $v0, %lo(D_8016D03C)($at)
/* 5A74 8009AE74 24020050 */  addiu      $v0, $zero, 0x50
/* 5A78 8009AE78 3C018015 */  lui        $at, %hi(D_8014A2D0)
/* 5A7C 8009AE7C A422A2D0 */  sh         $v0, %lo(D_8014A2D0)($at)
/* 5A80 8009AE80 3C018015 */  lui        $at, %hi(D_80149F8C)
/* 5A84 8009AE84 A4229F8C */  sh         $v0, %lo(D_80149F8C)($at)
/* 5A88 8009AE88 24020070 */  addiu      $v0, $zero, 0x70
/* 5A8C 8009AE8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5A90 8009AE90 AFB00010 */  sw         $s0, 0x10($sp)
/* 5A94 8009AE94 3C018017 */  lui        $at, %hi(D_801765D8)
/* 5A98 8009AE98 AC2065D8 */  sw         $zero, %lo(D_801765D8)($at)
/* 5A9C 8009AE9C 3C018017 */  lui        $at, %hi(D_8016D0C0)
/* 5AA0 8009AEA0 A422D0C0 */  sh         $v0, %lo(D_8016D0C0)($at)
/* 5AA4 8009AEA4 0C025DC8 */  jal        func_80097720
/* 5AA8 8009AEA8 00000000 */   nop
/* 5AAC 8009AEAC 0C026D4E */  jal        func_8009B538
/* 5AB0 8009AEB0 00002021 */   addu      $a0, $zero, $zero
/* 5AB4 8009AEB4 0C02CA0B */  jal        func_800B282C
/* 5AB8 8009AEB8 3404F000 */   ori       $a0, $zero, 0xF000
/* 5ABC 8009AEBC 3C018010 */  lui        $at, %hi(D_800FF3B0)
/* 5AC0 8009AEC0 AC22F3B0 */  sw         $v0, %lo(D_800FF3B0)($at)
/* 5AC4 8009AEC4 0C02CA0B */  jal        func_800B282C
/* 5AC8 8009AEC8 3404F000 */   ori       $a0, $zero, 0xF000
/* 5ACC 8009AECC 3C018010 */  lui        $at, %hi(D_800FF3B4)
/* 5AD0 8009AED0 AC22F3B4 */  sw         $v0, %lo(D_800FF3B4)($at)
/* 5AD4 8009AED4 0C02CA0B */  jal        func_800B282C
/* 5AD8 8009AED8 24042800 */   addiu     $a0, $zero, 0x2800
/* 5ADC 8009AEDC 3C018010 */  lui        $at, %hi(D_800FF3B8)
/* 5AE0 8009AEE0 AC22F3B8 */  sw         $v0, %lo(D_800FF3B8)($at)
/* 5AE4 8009AEE4 0C02CA0B */  jal        func_800B282C
/* 5AE8 8009AEE8 24042800 */   addiu     $a0, $zero, 0x2800
/* 5AEC 8009AEEC 3C0400EC */  lui        $a0, %hi(Sound_effects_ptr_ROM_START)
/* 5AF0 8009AEF0 248408E0 */  addiu      $a0, $a0, %lo(Sound_effects_ptr_ROM_START)
/* 5AF4 8009AEF4 3C058010 */  lui        $a1, %hi(D_800FF3B0)
/* 5AF8 8009AEF8 8CA5F3B0 */  lw         $a1, %lo(D_800FF3B0)($a1)
/* 5AFC 8009AEFC 3C0600ED */  lui        $a2, %hi(Sound_effects_wbk_ROM_START)
/* 5B00 8009AF00 24C69060 */  addiu      $a2, $a2, %lo(Sound_effects_wbk_ROM_START)
/* 5B04 8009AF04 3C018010 */  lui        $at, %hi(D_800FF3BC)
/* 5B08 8009AF08 AC22F3BC */  sw         $v0, %lo(D_800FF3BC)($at)
/* 5B0C 8009AF0C 0C02DB40 */  jal        func_800B6D00
/* 5B10 8009AF10 00C43023 */   subu      $a2, $a2, $a0
/* 5B14 8009AF14 3C04011E */  lui        $a0, %hi(Sound_voice_ptr_ROM_START)
/* 5B18 8009AF18 248489E0 */  addiu      $a0, $a0, %lo(Sound_voice_ptr_ROM_START)
/* 5B1C 8009AF1C 3C058010 */  lui        $a1, %hi(D_800FF3B4)
/* 5B20 8009AF20 8CA5F3B4 */  lw         $a1, %lo(D_800FF3B4)($a1)
/* 5B24 8009AF24 3C06011E */  lui        $a2, %hi(Sound_voice_wbk_ROM_START)
/* 5B28 8009AF28 24C654C0 */  addiu      $a2, $a2, %lo(Sound_voice_wbk_ROM_START)
/* 5B2C 8009AF2C 0C02DB40 */  jal        func_800B6D00
/* 5B30 8009AF30 00C43023 */   subu      $a2, $a2, $a0
/* 5B34 8009AF34 3C04011D */  lui        $a0, %hi(Sound_effects_tbl_ROM_START)
/* 5B38 8009AF38 24847500 */  addiu      $a0, $a0, %lo(Sound_effects_tbl_ROM_START)
/* 5B3C 8009AF3C 3C058010 */  lui        $a1, %hi(D_800FF3B8)
/* 5B40 8009AF40 8CA5F3B8 */  lw         $a1, %lo(D_800FF3B8)($a1)
/* 5B44 8009AF44 3C06011E */  lui        $a2, %hi(Sound_voice_ptr_ROM_START)
/* 5B48 8009AF48 24C689E0 */  addiu      $a2, $a2, %lo(Sound_voice_ptr_ROM_START)
/* 5B4C 8009AF4C 0C02DB40 */  jal        func_800B6D00
/* 5B50 8009AF50 00C43023 */   subu      $a2, $a2, $a0
/* 5B54 8009AF54 3C040168 */  lui        $a0, %hi(Sound_voice_tbl_ROM_START)
/* 5B58 8009AF58 24847B20 */  addiu      $a0, $a0, %lo(Sound_voice_tbl_ROM_START)
/* 5B5C 8009AF5C 3C058010 */  lui        $a1, %hi(D_800FF3BC)
/* 5B60 8009AF60 8CA5F3BC */  lw         $a1, %lo(D_800FF3BC)($a1)
/* 5B64 8009AF64 3C060169 */  lui        $a2, %hi(Sound_sndfnt1_ptr_ROM_START)
/* 5B68 8009AF68 24C69D50 */  addiu      $a2, $a2, %lo(Sound_sndfnt1_ptr_ROM_START)
/* 5B6C 8009AF6C 0C02DB40 */  jal        func_800B6D00
/* 5B70 8009AF70 00C43023 */   subu      $a2, $a2, $a0
/* 5B74 8009AF74 3C048010 */  lui        $a0, %hi(D_800FF3B0)
/* 5B78 8009AF78 8C84F3B0 */  lw         $a0, %lo(D_800FF3B0)($a0)
/* 5B7C 8009AF7C 3C0500ED */  lui        $a1, %hi(Sound_effects_wbk_ROM_START)
/* 5B80 8009AF80 24A59060 */  addiu      $a1, $a1, %lo(Sound_effects_wbk_ROM_START)
/* 5B84 8009AF84 0C02BAC1 */  jal        func_800AEB04
/* 5B88 8009AF88 00000000 */   nop
/* 5B8C 8009AF8C 3C048010 */  lui        $a0, %hi(D_800FF3B4)
/* 5B90 8009AF90 8C84F3B4 */  lw         $a0, %lo(D_800FF3B4)($a0)
/* 5B94 8009AF94 3C05011E */  lui        $a1, %hi(Sound_voice_wbk_ROM_START)
/* 5B98 8009AF98 24A554C0 */  addiu      $a1, $a1, %lo(Sound_voice_wbk_ROM_START)
/* 5B9C 8009AF9C 0C02BAC1 */  jal        func_800AEB04
/* 5BA0 8009AFA0 00000000 */   nop
/* 5BA4 8009AFA4 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 5BA8 8009AFA8 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 5BAC 8009AFAC 0C02BB33 */  jal        func_800AECCC
/* 5BB0 8009AFB0 00000000 */   nop
/* 5BB4 8009AFB4 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 5BB8 8009AFB8 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
/* 5BBC 8009AFBC 0C02BB33 */  jal        func_800AECCC
/* 5BC0 8009AFC0 00000000 */   nop
/* 5BC4 8009AFC4 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 5BC8 8009AFC8 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 5BCC 8009AFCC 3C058010 */  lui        $a1, %hi(D_800FF3B0)
/* 5BD0 8009AFD0 8CA5F3B0 */  lw         $a1, %lo(D_800FF3B0)($a1)
/* 5BD4 8009AFD4 0C02BB5F */  jal        func_800AED7C
/* 5BD8 8009AFD8 00000000 */   nop
/* 5BDC 8009AFDC 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 5BE0 8009AFE0 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
/* 5BE4 8009AFE4 3C058010 */  lui        $a1, %hi(D_800FF3B4)
/* 5BE8 8009AFE8 8CA5F3B4 */  lw         $a1, %lo(D_800FF3B4)($a1)
/* 5BEC 8009AFEC 0C02BB5F */  jal        func_800AED7C
/* 5BF0 8009AFF0 00000000 */   nop
/* 5BF4 8009AFF4 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 5BF8 8009AFF8 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 5BFC 8009AFFC 0C02BB54 */  jal        func_800AED50
/* 5C00 8009B000 00000000 */   nop
/* 5C04 8009B004 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 5C08 8009B008 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
/* 5C0C 8009B00C 3C108015 */  lui        $s0, %hi(D_80149F10)
/* 5C10 8009B010 26109F10 */  addiu      $s0, $s0, %lo(D_80149F10)
/* 5C14 8009B014 0C02BB54 */  jal        func_800AED50
/* 5C18 8009B018 AE020000 */   sw        $v0, 0x0($s0)
/* 5C1C 8009B01C 8E030000 */  lw         $v1, 0x0($s0)
/* 5C20 8009B020 3C018015 */  lui        $at, %hi(D_80149F14)
/* 5C24 8009B024 AC229F14 */  sw         $v0, %lo(D_80149F14)($at)
/* 5C28 8009B028 00621821 */  addu       $v1, $v1, $v0
/* 5C2C 8009B02C 3C018017 */  lui        $at, %hi(D_8016E56C)
/* 5C30 8009B030 AC23E56C */  sw         $v1, %lo(D_8016E56C)($at)
/* 5C34 8009B034 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C38 8009B038 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C3C 8009B03C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5C40 8009B040 03E00008 */  jr         $ra
/* 5C44 8009B044 00000000 */   nop
.size func_8009AE40, . - func_8009AE40
