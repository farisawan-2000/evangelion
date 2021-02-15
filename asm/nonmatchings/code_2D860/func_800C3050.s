.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C3050
/* 2DC50 800C3050 27BDFD68 */  addiu      $sp, $sp, -0x298
/* 2DC54 800C3054 AFB00270 */  sw         $s0, 0x270($sp)
/* 2DC58 800C3058 8FB002AC */  lw         $s0, 0x2ac($sp)
/* 2DC5C 800C305C A7A50256 */  sh         $a1, 0x256($sp)
/* 2DC60 800C3060 97A50256 */  lhu        $a1, 0x256($sp)
/* 2DC64 800C3064 AFB20278 */  sw         $s2, 0x278($sp)
/* 2DC68 800C3068 00809021 */  addu       $s2, $a0, $zero
/* 2DC6C 800C306C AFB60288 */  sw         $s6, 0x288($sp)
/* 2DC70 800C3070 0000B021 */  addu       $s6, $zero, $zero
/* 2DC74 800C3074 AFB7028C */  sw         $s7, 0x28c($sp)
/* 2DC78 800C3078 0000B821 */  addu       $s7, $zero, $zero
/* 2DC7C 800C307C AFB50284 */  sw         $s5, 0x284($sp)
/* 2DC80 800C3080 0000A821 */  addu       $s5, $zero, $zero
/* 2DC84 800C3084 AFA6025C */  sw         $a2, 0x25c($sp)
/* 2DC88 800C3088 2CC30001 */  sltiu      $v1, $a2, 1
/* 2DC8C 800C308C AFBF0294 */  sw         $ra, 0x294($sp)
/* 2DC90 800C3090 AFBE0290 */  sw         $fp, 0x290($sp)
/* 2DC94 800C3094 AFB40280 */  sw         $s4, 0x280($sp)
/* 2DC98 800C3098 AFB3027C */  sw         $s3, 0x27c($sp)
/* 2DC9C 800C309C AFB10274 */  sw         $s1, 0x274($sp)
/* 2DCA0 800C30A0 2CA20001 */  sltiu      $v0, $a1, 1
/* 2DCA4 800C30A4 00431025 */  or         $v0, $v0, $v1
/* 2DCA8 800C30A8 14400020 */  bnez       $v0, .L800C312C
/* 2DCAC 800C30AC AFA70264 */   sw        $a3, 0x264($sp)
/* 2DCB0 800C30B0 260600FF */  addiu      $a2, $s0, 0xff
/* 2DCB4 800C30B4 04C20001 */  bltzl      $a2, .L800C30BC
/* 2DCB8 800C30B8 260601FE */   addiu     $a2, $s0, 0x1fe
.L800C30BC:
/* 2DCBC 800C30BC 00069A03 */  sra        $s3, $a2, 8
/* 2DCC0 800C30C0 8FA802A8 */  lw         $t0, 0x2a8($sp)
/* 2DCC4 800C30C4 8FA6025C */  lw         $a2, 0x25c($sp)
/* 2DCC8 800C30C8 8FA70264 */  lw         $a3, 0x264($sp)
/* 2DCCC 800C30CC AFA80010 */  sw         $t0, 0x10($sp)
/* 2DCD0 800C30D0 8FA802B0 */  lw         $t0, 0x2b0($sp)
/* 2DCD4 800C30D4 02402021 */  addu       $a0, $s2, $zero
/* 2DCD8 800C30D8 0C030F20 */  jal        func_800C3C80
/* 2DCDC 800C30DC AFA80014 */   sw        $t0, 0x14($sp)
/* 2DCE0 800C30E0 00401821 */  addu       $v1, $v0, $zero
/* 2DCE4 800C30E4 10600003 */  beqz       $v1, .L800C30F4
/* 2DCE8 800C30E8 24020005 */   addiu     $v0, $zero, 5
/* 2DCEC 800C30EC 1462008F */  bne        $v1, $v0, .L800C332C
/* 2DCF0 800C30F0 00601021 */   addu      $v0, $v1, $zero
.L800C30F4:
/* 2DCF4 800C30F4 8FA802B0 */  lw         $t0, 0x2b0($sp)
/* 2DCF8 800C30F8 8D030000 */  lw         $v1, ($t0)
/* 2DCFC 800C30FC 2402FFFF */  addiu      $v0, $zero, -1
/* 2DD00 800C3100 1462008A */  bne        $v1, $v0, .L800C332C
/* 2DD04 800C3104 24020009 */   addiu     $v0, $zero, 9
/* 2DD08 800C3108 02402021 */  addu       $a0, $s2, $zero
/* 2DD0C 800C310C 0C030F90 */  jal        func_800C3E40
/* 2DD10 800C3110 27A50240 */   addiu     $a1, $sp, 0x240
/* 2DD14 800C3114 8FA20240 */  lw         $v0, 0x240($sp)
/* 2DD18 800C3118 0050102A */  slt        $v0, $v0, $s0
/* 2DD1C 800C311C 14400083 */  bnez       $v0, .L800C332C
/* 2DD20 800C3120 24020007 */   addiu     $v0, $zero, 7
/* 2DD24 800C3124 16600003 */  bnez       $s3, .L800C3134
/* 2DD28 800C3128 02402021 */   addu      $a0, $s2, $zero
.L800C312C:
/* 2DD2C 800C312C 08030CCB */  j          .L800C332C
/* 2DD30 800C3130 24020005 */   addiu     $v0, $zero, 5
.L800C3134:
/* 2DD34 800C3134 00002821 */  addu       $a1, $zero, $zero
/* 2DD38 800C3138 8FA802B0 */  lw         $t0, 0x2b0($sp)
/* 2DD3C 800C313C 00003021 */  addu       $a2, $zero, $zero
/* 2DD40 800C3140 00003821 */  addu       $a3, $zero, $zero
/* 2DD44 800C3144 AFA00010 */  sw         $zero, 0x10($sp)
/* 2DD48 800C3148 0C030F20 */  jal        func_800C3C80
/* 2DD4C 800C314C AFA80014 */   sw        $t0, 0x14($sp)
/* 2DD50 800C3150 00401821 */  addu       $v1, $v0, $zero
/* 2DD54 800C3154 10600003 */  beqz       $v1, .L800C3164
/* 2DD58 800C3158 24020005 */   addiu     $v0, $zero, 5
/* 2DD5C 800C315C 14620073 */  bne        $v1, $v0, .L800C332C
/* 2DD60 800C3160 00601021 */   addu      $v0, $v1, $zero
.L800C3164:
/* 2DD64 800C3164 8FA802B0 */  lw         $t0, 0x2b0($sp)
/* 2DD68 800C3168 8D030000 */  lw         $v1, ($t0)
/* 2DD6C 800C316C 2402FFFF */  addiu      $v0, $zero, -1
/* 2DD70 800C3170 1062006E */  beq        $v1, $v0, .L800C332C
/* 2DD74 800C3174 24020008 */   addiu     $v0, $zero, 8
/* 2DD78 800C3178 92420064 */  lbu        $v0, 0x64($s2)
/* 2DD7C 800C317C 1040004A */  beqz       $v0, .L800C32A8
/* 2DD80 800C3180 00008821 */   addu      $s1, $zero, $zero
/* 2DD84 800C3184 27B40120 */  addiu      $s4, $sp, 0x120
/* 2DD88 800C3188 02402021 */  addu       $a0, $s2, $zero
.L800C318C:
/* 2DD8C 800C318C 27A50020 */  addiu      $a1, $sp, 0x20
/* 2DD90 800C3190 00003021 */  addu       $a2, $zero, $zero
/* 2DD94 800C3194 323000FF */  andi       $s0, $s1, 0xff
/* 2DD98 800C3198 0C031353 */  jal        func_800C4D4C
/* 2DD9C 800C319C 02003821 */   addu      $a3, $s0, $zero
/* 2DDA0 800C31A0 00401821 */  addu       $v1, $v0, $zero
/* 2DDA4 800C31A4 14600048 */  bnez       $v1, .L800C32C8
/* 2DDA8 800C31A8 02402021 */   addu      $a0, $s2, $zero
/* 2DDAC 800C31AC 27A50020 */  addiu      $a1, $sp, 0x20
/* 2DDB0 800C31B0 02603021 */  addu       $a2, $s3, $zero
/* 2DDB4 800C31B4 27A70244 */  addiu      $a3, $sp, 0x244
/* 2DDB8 800C31B8 27A20248 */  addiu      $v0, $sp, 0x248
/* 2DDBC 800C31BC AFA20014 */  sw         $v0, 0x14($sp)
/* 2DDC0 800C31C0 27A2024C */  addiu      $v0, $sp, 0x24c
/* 2DDC4 800C31C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2DDC8 800C31C8 0C030CD7 */  jal        func_800C335C
/* 2DDCC 800C31CC AFA20018 */   sw        $v0, 0x18($sp)
/* 2DDD0 800C31D0 00401821 */  addu       $v1, $v0, $zero
/* 2DDD4 800C31D4 1460003C */  bnez       $v1, .L800C32C8
/* 2DDD8 800C31D8 2402FFFF */   addiu     $v0, $zero, -1
/* 2DDDC 800C31DC 8FA30244 */  lw         $v1, 0x244($sp)
/* 2DDE0 800C31E0 1062002B */  beq        $v1, $v0, .L800C3290
/* 2DDE4 800C31E4 00000000 */   nop
/* 2DDE8 800C31E8 12A0000F */  beqz       $s5, .L800C3228
/* 2DDEC 800C31EC 02402021 */   addu      $a0, $s2, $zero
/* 2DDF0 800C31F0 02802821 */  addu       $a1, $s4, $zero
/* 2DDF4 800C31F4 00161040 */  sll        $v0, $s6, 1
/* 2DDF8 800C31F8 02821021 */  addu       $v0, $s4, $v0
/* 2DDFC 800C31FC A0510000 */  sb         $s1, ($v0)
/* 2DE00 800C3200 8FA30244 */  lw         $v1, 0x244($sp)
/* 2DE04 800C3204 24060001 */  addiu      $a2, $zero, 1
/* 2DE08 800C3208 32E700FF */  andi       $a3, $s7, 0xff
/* 2DE0C 800C320C 0C031353 */  jal        func_800C4D4C
/* 2DE10 800C3210 A0430001 */   sb        $v1, 1($v0)
/* 2DE14 800C3214 00401821 */  addu       $v1, $v0, $zero
/* 2DE18 800C3218 10600006 */  beqz       $v1, .L800C3234
/* 2DE1C 800C321C 00000000 */   nop
/* 2DE20 800C3220 08030CCB */  j          .L800C332C
/* 2DE24 800C3224 00000000 */   nop
.L800C3228:
/* 2DE28 800C3228 306300FF */  andi       $v1, $v1, 0xff
/* 2DE2C 800C322C 00111200 */  sll        $v0, $s1, 8
/* 2DE30 800C3230 0043F025 */  or         $fp, $v0, $v1
.L800C3234:
/* 2DE34 800C3234 8FA20248 */  lw         $v0, 0x248($sp)
/* 2DE38 800C3238 0053102A */  slt        $v0, $v0, $s3
/* 2DE3C 800C323C 1440000C */  bnez       $v0, .L800C3270
/* 2DE40 800C3240 27A40020 */   addiu     $a0, $sp, 0x20
/* 2DE44 800C3244 00009821 */  addu       $s3, $zero, $zero
/* 2DE48 800C3248 02402021 */  addu       $a0, $s2, $zero
/* 2DE4C 800C324C 27A50020 */  addiu      $a1, $sp, 0x20
/* 2DE50 800C3250 24060001 */  addiu      $a2, $zero, 1
/* 2DE54 800C3254 0C031353 */  jal        func_800C4D4C
/* 2DE58 800C3258 322700FF */   andi      $a3, $s1, 0xff
/* 2DE5C 800C325C 00401821 */  addu       $v1, $v0, $zero
/* 2DE60 800C3260 10600011 */  beqz       $v1, .L800C32A8
/* 2DE64 800C3264 00000000 */   nop
/* 2DE68 800C3268 08030CCB */  j          .L800C332C
/* 2DE6C 800C326C 00000000 */   nop
.L800C3270:
/* 2DE70 800C3270 27A50120 */  addiu      $a1, $sp, 0x120
/* 2DE74 800C3274 0C03006C */  jal        func_800C01B0
/* 2DE78 800C3278 24060100 */   addiu     $a2, $zero, 0x100
/* 2DE7C 800C327C 8FB6024C */  lw         $s6, 0x24c($sp)
/* 2DE80 800C3280 8FA20248 */  lw         $v0, 0x248($sp)
/* 2DE84 800C3284 0220B821 */  addu       $s7, $s1, $zero
/* 2DE88 800C3288 26B50001 */  addiu      $s5, $s5, 1
/* 2DE8C 800C328C 02629823 */  subu       $s3, $s3, $v0
.L800C3290:
/* 2DE90 800C3290 92430064 */  lbu        $v1, 0x64($s2)
/* 2DE94 800C3294 26310001 */  addiu      $s1, $s1, 1
/* 2DE98 800C3298 322200FF */  andi       $v0, $s1, 0xff
/* 2DE9C 800C329C 0043102B */  sltu       $v0, $v0, $v1
/* 2DEA0 800C32A0 1440FFBA */  bnez       $v0, .L800C318C
/* 2DEA4 800C32A4 02402021 */   addu      $a0, $s2, $zero
.L800C32A8:
/* 2DEA8 800C32A8 1E600020 */  bgtz       $s3, .L800C332C
/* 2DEAC 800C32AC 24020003 */   addiu     $v0, $zero, 3
/* 2DEB0 800C32B0 8FA30244 */  lw         $v1, 0x244($sp)
/* 2DEB4 800C32B4 2402FFFF */  addiu      $v0, $zero, -1
/* 2DEB8 800C32B8 14620005 */  bne        $v1, $v0, .L800C32D0
/* 2DEBC 800C32BC 27A50230 */   addiu     $a1, $sp, 0x230
/* 2DEC0 800C32C0 08030CCB */  j          .L800C332C
/* 2DEC4 800C32C4 24020003 */   addiu     $v0, $zero, 3
.L800C32C8:
/* 2DEC8 800C32C8 08030CCB */  j          .L800C332C
/* 2DECC 800C32CC 00601021 */   addu      $v0, $v1, $zero
.L800C32D0:
/* 2DED0 800C32D0 97A80256 */  lhu        $t0, 0x256($sp)
/* 2DED4 800C32D4 8FA40264 */  lw         $a0, 0x264($sp)
/* 2DED8 800C32D8 A7A80224 */  sh         $t0, 0x224($sp)
/* 2DEDC 800C32DC 8FA8025C */  lw         $t0, 0x25c($sp)
/* 2DEE0 800C32E0 24060010 */  addiu      $a2, $zero, 0x10
/* 2DEE4 800C32E4 A7BE0226 */  sh         $fp, 0x226($sp)
/* 2DEE8 800C32E8 A7A0022A */  sh         $zero, 0x22a($sp)
/* 2DEEC 800C32EC 0C03006C */  jal        func_800C01B0
/* 2DEF0 800C32F0 AFA80220 */   sw        $t0, 0x220($sp)
/* 2DEF4 800C32F4 8FA402A8 */  lw         $a0, 0x2a8($sp)
/* 2DEF8 800C32F8 27A5022C */  addiu      $a1, $sp, 0x22c
/* 2DEFC 800C32FC 0C03006C */  jal        func_800C01B0
/* 2DF00 800C3300 24060004 */   addiu     $a2, $zero, 4
/* 2DF04 800C3304 8FA802B0 */  lw         $t0, 0x2b0($sp)
/* 2DF08 800C3308 8E46005C */  lw         $a2, 0x5c($s2)
/* 2DF0C 800C330C 8D020000 */  lw         $v0, ($t0)
/* 2DF10 800C3310 27A70220 */  addiu      $a3, $sp, 0x220
/* 2DF14 800C3314 AFA00010 */  sw         $zero, 0x10($sp)
/* 2DF18 800C3318 8E440004 */  lw         $a0, 4($s2)
/* 2DF1C 800C331C 8E450008 */  lw         $a1, 8($s2)
/* 2DF20 800C3320 00C23021 */  addu       $a2, $a2, $v0
/* 2DF24 800C3324 0C0314A0 */  jal        func_800C5280
/* 2DF28 800C3328 30C6FFFF */   andi      $a2, $a2, 0xffff
.L800C332C:
/* 2DF2C 800C332C 8FBF0294 */  lw         $ra, 0x294($sp)
/* 2DF30 800C3330 8FBE0290 */  lw         $fp, 0x290($sp)
/* 2DF34 800C3334 8FB7028C */  lw         $s7, 0x28c($sp)
/* 2DF38 800C3338 8FB60288 */  lw         $s6, 0x288($sp)
/* 2DF3C 800C333C 8FB50284 */  lw         $s5, 0x284($sp)
/* 2DF40 800C3340 8FB40280 */  lw         $s4, 0x280($sp)
/* 2DF44 800C3344 8FB3027C */  lw         $s3, 0x27c($sp)
/* 2DF48 800C3348 8FB20278 */  lw         $s2, 0x278($sp)
/* 2DF4C 800C334C 8FB10274 */  lw         $s1, 0x274($sp)
/* 2DF50 800C3350 8FB00270 */  lw         $s0, 0x270($sp)
/* 2DF54 800C3354 03E00008 */  jr         $ra
/* 2DF58 800C3358 27BD0298 */   addiu     $sp, $sp, 0x298
