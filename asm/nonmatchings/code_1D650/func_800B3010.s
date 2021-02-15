.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B3010
/* 1DC10 800B3010 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1DC14 800B3014 AFB20028 */  sw         $s2, 0x28($sp)
/* 1DC18 800B3018 00C09021 */  addu       $s2, $a2, $zero
/* 1DC1C 800B301C AFB00020 */  sw         $s0, 0x20($sp)
/* 1DC20 800B3020 00808021 */  addu       $s0, $a0, $zero
/* 1DC24 800B3024 AFBF0044 */  sw         $ra, 0x44($sp)
/* 1DC28 800B3028 AFBE0040 */  sw         $fp, 0x40($sp)
/* 1DC2C 800B302C AFB7003C */  sw         $s7, 0x3c($sp)
/* 1DC30 800B3030 AFB60038 */  sw         $s6, 0x38($sp)
/* 1DC34 800B3034 AFB50034 */  sw         $s5, 0x34($sp)
/* 1DC38 800B3038 AFB40030 */  sw         $s4, 0x30($sp)
/* 1DC3C 800B303C AFB3002C */  sw         $s3, 0x2c($sp)
/* 1DC40 800B3040 AFB10024 */  sw         $s1, 0x24($sp)
/* 1DC44 800B3044 8E02007C */  lw         $v0, 0x7c($s0)
/* 1DC48 800B3048 00A0B021 */  addu       $s6, $a1, $zero
/* 1DC4C 800B304C 241700B8 */  addiu      $s7, $zero, 0xb8
/* 1DC50 800B3050 A7A0001A */  sh         $zero, 0x1a($sp)
/* 1DC54 800B3054 10400133 */  beqz       $v0, .L800B3524
/* 1DC58 800B3058 A7A00018 */   sh        $zero, 0x18($sp)
/* 1DC5C 800B305C 3C1EB216 */  lui        $fp, 0xb216
/* 1DC60 800B3060 37DE42C9 */  ori        $fp, $fp, 0x42c9
/* 1DC64 800B3064 24140001 */  addiu      $s4, $zero, 1
/* 1DC68 800B3068 3C15800F */  lui        $s5, %hi(D_800F16E0)
/* 1DC6C 800B306C 26B516E0 */  addiu      $s5, $s5, %lo(D_800F16E0)
.L800B3070:
/* 1DC70 800B3070 8E05007C */  lw         $a1, 0x7c($s0)
/* 1DC74 800B3074 02C02021 */  addu       $a0, $s6, $zero
/* 1DC78 800B3078 8CB60004 */  lw         $s6, 4($a1)
/* 1DC7C 800B307C 02C41023 */  subu       $v0, $s6, $a0
/* 1DC80 800B3080 2442005C */  addiu      $v0, $v0, 0x5c
/* 1DC84 800B3084 005E0018 */  mult       $v0, $fp
/* 1DC88 800B3088 00004010 */  mfhi       $t0
/* 1DC8C 800B308C 01021821 */  addu       $v1, $t0, $v0
/* 1DC90 800B3090 000319C3 */  sra        $v1, $v1, 7
/* 1DC94 800B3094 000217C3 */  sra        $v0, $v0, 0x1f
/* 1DC98 800B3098 00621823 */  subu       $v1, $v1, $v0
/* 1DC9C 800B309C 00031040 */  sll        $v0, $v1, 1
/* 1DCA0 800B30A0 00431021 */  addu       $v0, $v0, $v1
/* 1DCA4 800B30A4 000210C0 */  sll        $v0, $v0, 3
/* 1DCA8 800B30A8 00431023 */  subu       $v0, $v0, $v1
/* 1DCAC 800B30AC 000298C0 */  sll        $s3, $v0, 3
/* 1DCB0 800B30B0 52600001 */  beql       $s3, $zero, .L800B30B8
/* 1DCB4 800B30B4 0080B021 */   addu      $s6, $a0, $zero
.L800B30B8:
/* 1DCB8 800B30B8 02F3102A */  slt        $v0, $s7, $s3
/* 1DCBC 800B30BC 5440011A */  bnezl      $v0, .L800B3528
/* 1DCC0 800B30C0 02002021 */   addu      $a0, $s0, $zero
/* 1DCC4 800B30C4 84A30008 */  lh         $v1, 8($a1)
/* 1DCC8 800B30C8 2C620011 */  sltiu      $v0, $v1, 0x11
/* 1DCCC 800B30CC 104000F9 */  beqz       $v0, .L800B34B4
/* 1DCD0 800B30D0 00031080 */   sll       $v0, $v1, 2
/* 1DCD4 800B30D4 3C018010 */  lui        $at, %hi(D_800FEB50)
/* 1DCD8 800B30D8 00220821 */  addu       $at, $at, $v0
/* 1DCDC 800B30DC 8C22EB50 */  lw         $v0, %lo(D_800FEB50)($at)
/* 1DCE0 800B30E0 00400008 */  jr         $v0
/* 1DCE4 800B30E4 00000000 */   nop
/* 1DCE8 800B30E8 8E11007C */  lw         $s1, 0x7c($s0)
/* 1DCEC 800B30EC 8622000A */  lh         $v0, 0xa($s1)
/* 1DCF0 800B30F0 54400001 */  bnezl      $v0, .L800B30F8
/* 1DCF4 800B30F4 AE140048 */   sw        $s4, 0x48($s0)
.L800B30F8:
/* 1DCF8 800B30F8 8E260018 */  lw         $a2, 0x18($s1)
/* 1DCFC 800B30FC 02002021 */  addu       $a0, $s0, $zero
/* 1DD00 800B3100 0C02CF8A */  jal        func_800B3E28
/* 1DD04 800B3104 24050005 */   addiu     $a1, $zero, 5
/* 1DD08 800B3108 AE140084 */  sw         $s4, 0x84($s0)
/* 1DD0C 800B310C AE140078 */  sw         $s4, 0x78($s0)
/* 1DD10 800B3110 AE000070 */  sw         $zero, 0x70($s0)
/* 1DD14 800B3114 8E220014 */  lw         $v0, 0x14($s1)
/* 1DD18 800B3118 2442005C */  addiu      $v0, $v0, 0x5c
/* 1DD1C 800B311C 005E0018 */  mult       $v0, $fp
/* 1DD20 800B3120 00004010 */  mfhi       $t0
/* 1DD24 800B3124 01021821 */  addu       $v1, $t0, $v0
/* 1DD28 800B3128 000319C3 */  sra        $v1, $v1, 7
/* 1DD2C 800B312C 000217C3 */  sra        $v0, $v0, 0x1f
/* 1DD30 800B3130 00621823 */  subu       $v1, $v1, $v0
/* 1DD34 800B3134 00031040 */  sll        $v0, $v1, 1
/* 1DD38 800B3138 00431021 */  addu       $v0, $v0, $v1
/* 1DD3C 800B313C 000210C0 */  sll        $v0, $v0, 3
/* 1DD40 800B3140 00431023 */  subu       $v0, $v0, $v1
/* 1DD44 800B3144 000210C0 */  sll        $v0, $v0, 3
/* 1DD48 800B3148 AE020074 */  sw         $v0, 0x74($s0)
/* 1DD4C 800B314C 86220010 */  lh         $v0, 0x10($s1)
/* 1DD50 800B3150 00420018 */  mult       $v0, $v0
/* 1DD54 800B3154 00001012 */  mflo       $v0
/* 1DD58 800B3158 000213C3 */  sra        $v0, $v0, 0xf
/* 1DD5C 800B315C A602005A */  sh         $v0, 0x5a($s0)
/* 1DD60 800B3160 92220012 */  lbu        $v0, 0x12($s1)
/* 1DD64 800B3164 A6020058 */  sh         $v0, 0x58($s0)
/* 1DD68 800B3168 92220013 */  lbu        $v0, 0x13($s1)
/* 1DD6C 800B316C 00021040 */  sll        $v0, $v0, 1
/* 1DD70 800B3170 00551021 */  addu       $v0, $v0, $s5
/* 1DD74 800B3174 94420000 */  lhu        $v0, ($v0)
/* 1DD78 800B3178 A6020060 */  sh         $v0, 0x60($s0)
/* 1DD7C 800B317C 92220013 */  lbu        $v0, 0x13($s1)
/* 1DD80 800B3180 2408007F */  addiu      $t0, $zero, 0x7f
/* 1DD84 800B3184 01021023 */  subu       $v0, $t0, $v0
/* 1DD88 800B3188 00021040 */  sll        $v0, $v0, 1
/* 1DD8C 800B318C 00551021 */  addu       $v0, $v0, $s5
/* 1DD90 800B3190 94420000 */  lhu        $v0, ($v0)
/* 1DD94 800B3194 A6020062 */  sh         $v0, 0x62($s0)
/* 1DD98 800B3198 8E220014 */  lw         $v0, 0x14($s1)
/* 1DD9C 800B319C 10400004 */  beqz       $v0, .L800B31B0
/* 1DDA0 800B31A0 00000000 */   nop
/* 1DDA4 800B31A4 A614005C */  sh         $s4, 0x5c($s0)
/* 1DDA8 800B31A8 0802CC7F */  j          .L800B31FC
/* 1DDAC 800B31AC A614005E */   sh        $s4, 0x5e($s0)
.L800B31B0:
/* 1DDB0 800B31B0 86020058 */  lh         $v0, 0x58($s0)
/* 1DDB4 800B31B4 8603005A */  lh         $v1, 0x5a($s0)
/* 1DDB8 800B31B8 00021040 */  sll        $v0, $v0, 1
/* 1DDBC 800B31BC 00551021 */  addu       $v0, $v0, $s5
/* 1DDC0 800B31C0 84420000 */  lh         $v0, ($v0)
/* 1DDC4 800B31C4 00620018 */  mult       $v1, $v0
/* 1DDC8 800B31C8 00001812 */  mflo       $v1
/* 1DDCC 800B31CC 86020058 */  lh         $v0, 0x58($s0)
/* 1DDD0 800B31D0 01021023 */  subu       $v0, $t0, $v0
/* 1DDD4 800B31D4 00021040 */  sll        $v0, $v0, 1
/* 1DDD8 800B31D8 00551021 */  addu       $v0, $v0, $s5
/* 1DDDC 800B31DC 00031BC3 */  sra        $v1, $v1, 0xf
/* 1DDE0 800B31E0 A603005C */  sh         $v1, 0x5c($s0)
/* 1DDE4 800B31E4 8603005A */  lh         $v1, 0x5a($s0)
/* 1DDE8 800B31E8 84420000 */  lh         $v0, ($v0)
/* 1DDEC 800B31EC 00620018 */  mult       $v1, $v0
/* 1DDF0 800B31F0 00001812 */  mflo       $v1
/* 1DDF4 800B31F4 00031BC3 */  sra        $v1, $v1, 0xf
/* 1DDF8 800B31F8 A603005E */  sh         $v1, 0x5e($s0)
.L800B31FC:
/* 1DDFC 800B31FC C620000C */  lwc1       $f0, 0xc($s1)
/* 1DE00 800B3200 0802CD3A */  j          .L800B34E8
/* 1DE04 800B3204 E6000044 */   swc1      $f0, 0x44($s0)
/* 1DE08 800B3208 02002021 */  addu       $a0, $s0, $zero
/* 1DE0C 800B320C 27A50018 */  addiu      $a1, $sp, 0x18
/* 1DE10 800B3210 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1DE14 800B3214 02603821 */  addu       $a3, $s3, $zero
/* 1DE18 800B3218 0C02CD8B */  jal        func_800B362C
/* 1DE1C 800B321C AFB20010 */   sw        $s2, 0x10($sp)
/* 1DE20 800B3220 8E050070 */  lw         $a1, 0x70($s0)
/* 1DE24 800B3224 8E030074 */  lw         $v1, 0x74($s0)
/* 1DE28 800B3228 00A3182A */  slt        $v1, $a1, $v1
/* 1DE2C 800B322C 1460001C */  bnez       $v1, .L800B32A0
/* 1DE30 800B3230 00409021 */   addu      $s2, $v0, $zero
/* 1DE34 800B3234 86020058 */  lh         $v0, 0x58($s0)
/* 1DE38 800B3238 8603005A */  lh         $v1, 0x5a($s0)
/* 1DE3C 800B323C 00021040 */  sll        $v0, $v0, 1
/* 1DE40 800B3240 00551021 */  addu       $v0, $v0, $s5
/* 1DE44 800B3244 84420000 */  lh         $v0, ($v0)
/* 1DE48 800B3248 00620018 */  mult       $v1, $v0
/* 1DE4C 800B324C 00001812 */  mflo       $v1
/* 1DE50 800B3250 86020058 */  lh         $v0, 0x58($s0)
/* 1DE54 800B3254 2408007F */  addiu      $t0, $zero, 0x7f
/* 1DE58 800B3258 01021023 */  subu       $v0, $t0, $v0
/* 1DE5C 800B325C 00021040 */  sll        $v0, $v0, 1
/* 1DE60 800B3260 00551021 */  addu       $v0, $v0, $s5
/* 1DE64 800B3264 00031BC3 */  sra        $v1, $v1, 0xf
/* 1DE68 800B3268 A6030068 */  sh         $v1, 0x68($s0)
/* 1DE6C 800B326C 8603005A */  lh         $v1, 0x5a($s0)
/* 1DE70 800B3270 84420000 */  lh         $v0, ($v0)
/* 1DE74 800B3274 00620018 */  mult       $v1, $v0
/* 1DE78 800B3278 00001812 */  mflo       $v1
/* 1DE7C 800B327C 8E020074 */  lw         $v0, 0x74($s0)
/* 1DE80 800B3280 00031BC3 */  sra        $v1, $v1, 0xf
/* 1DE84 800B3284 A603006E */  sh         $v1, 0x6e($s0)
/* 1DE88 800B3288 96030068 */  lhu        $v1, 0x68($s0)
/* 1DE8C 800B328C 9604006E */  lhu        $a0, 0x6e($s0)
/* 1DE90 800B3290 AE020070 */  sw         $v0, 0x70($s0)
/* 1DE94 800B3294 A603005C */  sh         $v1, 0x5c($s0)
/* 1DE98 800B3298 0802CCB3 */  j          .L800B32CC
/* 1DE9C 800B329C A604005E */   sh        $a0, 0x5e($s0)
.L800B32A0:
/* 1DEA0 800B32A0 8604005C */  lh         $a0, 0x5c($s0)
/* 1DEA4 800B32A4 86060066 */  lh         $a2, 0x66($s0)
/* 1DEA8 800B32A8 0C02CE63 */  jal        func_800B398C
/* 1DEAC 800B32AC 96070064 */   lhu       $a3, 0x64($s0)
/* 1DEB0 800B32B0 8604005E */  lh         $a0, 0x5e($s0)
/* 1DEB4 800B32B4 8E050070 */  lw         $a1, 0x70($s0)
/* 1DEB8 800B32B8 8606006C */  lh         $a2, 0x6c($s0)
/* 1DEBC 800B32BC 9607006A */  lhu        $a3, 0x6a($s0)
/* 1DEC0 800B32C0 0C02CE63 */  jal        func_800B398C
/* 1DEC4 800B32C4 A602005C */   sh        $v0, 0x5c($s0)
/* 1DEC8 800B32C8 A602005E */  sh         $v0, 0x5e($s0)
.L800B32CC:
/* 1DECC 800B32CC 8602005C */  lh         $v0, 0x5c($s0)
/* 1DED0 800B32D0 50400001 */  beql       $v0, $zero, .L800B32D8
/* 1DED4 800B32D4 A614005C */   sh        $s4, 0x5c($s0)
.L800B32D8:
/* 1DED8 800B32D8 8602005E */  lh         $v0, 0x5e($s0)
/* 1DEDC 800B32DC 50400001 */  beql       $v0, $zero, .L800B32E4
/* 1DEE0 800B32E0 A614005E */   sh        $s4, 0x5e($s0)
.L800B32E4:
/* 1DEE4 800B32E4 8E04007C */  lw         $a0, 0x7c($s0)
/* 1DEE8 800B32E8 84830008 */  lh         $v1, 8($a0)
/* 1DEEC 800B32EC 2402000C */  addiu      $v0, $zero, 0xc
/* 1DEF0 800B32F0 14620003 */  bne        $v1, $v0, .L800B3300
/* 1DEF4 800B32F4 00000000 */   nop
/* 1DEF8 800B32F8 8C82000C */  lw         $v0, 0xc($a0)
/* 1DEFC 800B32FC A6020058 */  sh         $v0, 0x58($s0)
.L800B3300:
/* 1DF00 800B3300 8E02007C */  lw         $v0, 0x7c($s0)
/* 1DF04 800B3304 84430008 */  lh         $v1, 8($v0)
/* 1DF08 800B3308 2402000B */  addiu      $v0, $zero, 0xb
/* 1DF0C 800B330C 14620017 */  bne        $v1, $v0, .L800B336C
/* 1DF10 800B3310 00000000 */   nop
/* 1DF14 800B3314 8E02007C */  lw         $v0, 0x7c($s0)
/* 1DF18 800B3318 AE000070 */  sw         $zero, 0x70($s0)
/* 1DF1C 800B331C 8C42000C */  lw         $v0, 0xc($v0)
/* 1DF20 800B3320 00420018 */  mult       $v0, $v0
/* 1DF24 800B3324 00001012 */  mflo       $v0
/* 1DF28 800B3328 8E03007C */  lw         $v1, 0x7c($s0)
/* 1DF2C 800B332C 000213C3 */  sra        $v0, $v0, 0xf
/* 1DF30 800B3330 A602005A */  sh         $v0, 0x5a($s0)
/* 1DF34 800B3334 8C620010 */  lw         $v0, 0x10($v1)
/* 1DF38 800B3338 2442005C */  addiu      $v0, $v0, 0x5c
/* 1DF3C 800B333C 005E0018 */  mult       $v0, $fp
/* 1DF40 800B3340 00004010 */  mfhi       $t0
/* 1DF44 800B3344 01021821 */  addu       $v1, $t0, $v0
/* 1DF48 800B3348 000319C3 */  sra        $v1, $v1, 7
/* 1DF4C 800B334C 000217C3 */  sra        $v0, $v0, 0x1f
/* 1DF50 800B3350 00621823 */  subu       $v1, $v1, $v0
/* 1DF54 800B3354 00031040 */  sll        $v0, $v1, 1
/* 1DF58 800B3358 00431021 */  addu       $v0, $v0, $v1
/* 1DF5C 800B335C 000210C0 */  sll        $v0, $v0, 3
/* 1DF60 800B3360 00431023 */  subu       $v0, $v0, $v1
/* 1DF64 800B3364 000210C0 */  sll        $v0, $v0, 3
/* 1DF68 800B3368 AE020074 */  sw         $v0, 0x74($s0)
.L800B336C:
/* 1DF6C 800B336C 8E04007C */  lw         $a0, 0x7c($s0)
/* 1DF70 800B3370 84830008 */  lh         $v1, 8($a0)
/* 1DF74 800B3374 24020010 */  addiu      $v0, $zero, 0x10
/* 1DF78 800B3378 5462005B */  bnel       $v1, $v0, .L800B34E8
/* 1DF7C 800B337C AE140078 */   sw        $s4, 0x78($s0)
/* 1DF80 800B3380 8C82000C */  lw         $v0, 0xc($a0)
/* 1DF84 800B3384 8E03007C */  lw         $v1, 0x7c($s0)
/* 1DF88 800B3388 00021040 */  sll        $v0, $v0, 1
/* 1DF8C 800B338C 00551021 */  addu       $v0, $v0, $s5
/* 1DF90 800B3390 94420000 */  lhu        $v0, ($v0)
/* 1DF94 800B3394 A6020060 */  sh         $v0, 0x60($s0)
/* 1DF98 800B3398 8C62000C */  lw         $v0, 0xc($v1)
/* 1DF9C 800B339C 2408007F */  addiu      $t0, $zero, 0x7f
/* 1DFA0 800B33A0 01021023 */  subu       $v0, $t0, $v0
/* 1DFA4 800B33A4 00021040 */  sll        $v0, $v0, 1
/* 1DFA8 800B33A8 00551021 */  addu       $v0, $v0, $s5
/* 1DFAC 800B33AC 94420000 */  lhu        $v0, ($v0)
/* 1DFB0 800B33B0 A6020062 */  sh         $v0, 0x62($s0)
/* 1DFB4 800B33B4 0802CD3A */  j          .L800B34E8
/* 1DFB8 800B33B8 AE140078 */   sw        $s4, 0x78($s0)
/* 1DFBC 800B33BC 8E03007C */  lw         $v1, 0x7c($s0)
/* 1DFC0 800B33C0 8462000A */  lh         $v0, 0xa($v1)
/* 1DFC4 800B33C4 54400001 */  bnezl      $v0, .L800B33CC
/* 1DFC8 800B33C8 AE140048 */   sw        $s4, 0x48($s0)
.L800B33CC:
/* 1DFCC 800B33CC 8C66000C */  lw         $a2, 0xc($v1)
/* 1DFD0 800B33D0 02002021 */  addu       $a0, $s0, $zero
/* 1DFD4 800B33D4 0C02CF8A */  jal        func_800B3E28
/* 1DFD8 800B33D8 24050005 */   addiu     $a1, $zero, 5
/* 1DFDC 800B33DC 0802CD3A */  j          .L800B34E8
/* 1DFE0 800B33E0 AE140084 */   sw        $s4, 0x84($s0)
/* 1DFE4 800B33E4 AFB20010 */  sw         $s2, 0x10($sp)
/* 1DFE8 800B33E8 02002021 */  addu       $a0, $s0, $zero
/* 1DFEC 800B33EC 27A50018 */  addiu      $a1, $sp, 0x18
/* 1DFF0 800B33F0 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1DFF4 800B33F4 0C02CD8B */  jal        func_800B362C
/* 1DFF8 800B33F8 02603821 */   addu      $a3, $s3, $zero
/* 1DFFC 800B33FC 00409021 */  addu       $s2, $v0, $zero
/* 1E000 800B3400 02002021 */  addu       $a0, $s0, $zero
/* 1E004 800B3404 24050004 */  addiu      $a1, $zero, 4
/* 1E008 800B3408 0802CD38 */  j          .L800B34E0
/* 1E00C 800B340C 00003021 */   addu      $a2, $zero, $zero
/* 1E010 800B3410 8E03007C */  lw         $v1, 0x7c($s0)
/* 1E014 800B3414 8C62000C */  lw         $v0, 0xc($v1)
/* 1E018 800B3418 AC400088 */  sw         $zero, 0x88($v0)
/* 1E01C 800B341C 0C02D5E3 */  jal        func_800B578C
/* 1E020 800B3420 8C64000C */   lw        $a0, 0xc($v1)
/* 1E024 800B3424 0802CD3A */  j          .L800B34E8
/* 1E028 800B3428 00000000 */   nop
/* 1E02C 800B342C 02002021 */  addu       $a0, $s0, $zero
/* 1E030 800B3430 27A50018 */  addiu      $a1, $sp, 0x18
/* 1E034 800B3434 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1E038 800B3438 02603821 */  addu       $a3, $s3, $zero
/* 1E03C 800B343C 0C02CD8B */  jal        func_800B362C
/* 1E040 800B3440 AFB20010 */   sw        $s2, 0x10($sp)
/* 1E044 800B3444 8E03007C */  lw         $v1, 0x7c($s0)
/* 1E048 800B3448 C460000C */  lwc1       $f0, 0xc($v1)
/* 1E04C 800B344C 00409021 */  addu       $s2, $v0, $zero
/* 1E050 800B3450 0802CD3A */  j          .L800B34E8
/* 1E054 800B3454 E6000044 */   swc1      $f0, 0x44($s0)
/* 1E058 800B3458 02002021 */  addu       $a0, $s0, $zero
/* 1E05C 800B345C 27A50018 */  addiu      $a1, $sp, 0x18
/* 1E060 800B3460 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1E064 800B3464 02603821 */  addu       $a3, $s3, $zero
/* 1E068 800B3468 0C02CD8B */  jal        func_800B362C
/* 1E06C 800B346C AFB20010 */   sw        $s2, 0x10($sp)
/* 1E070 800B3470 00409021 */  addu       $s2, $v0, $zero
/* 1E074 800B3474 0802CD3A */  j          .L800B34E8
/* 1E078 800B3478 AE140048 */   sw        $s4, 0x48($s0)
/* 1E07C 800B347C 02002021 */  addu       $a0, $s0, $zero
/* 1E080 800B3480 27A50018 */  addiu      $a1, $sp, 0x18
/* 1E084 800B3484 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1E088 800B3488 02603821 */  addu       $a3, $s3, $zero
/* 1E08C 800B348C 0C02CD8B */  jal        func_800B362C
/* 1E090 800B3490 AFB20010 */   sw        $s2, 0x10($sp)
/* 1E094 800B3494 8E03007C */  lw         $v1, 0x7c($s0)
/* 1E098 800B3498 00409021 */  addu       $s2, $v0, $zero
/* 1E09C 800B349C 8C66000C */  lw         $a2, 0xc($v1)
/* 1E0A0 800B34A0 02002021 */  addu       $a0, $s0, $zero
/* 1E0A4 800B34A4 0C02CF8A */  jal        func_800B3E28
/* 1E0A8 800B34A8 24050005 */   addiu     $a1, $zero, 5
/* 1E0AC 800B34AC 0802CD3A */  j          .L800B34E8
/* 1E0B0 800B34B0 00000000 */   nop
.L800B34B4:
/* 1E0B4 800B34B4 02002021 */  addu       $a0, $s0, $zero
/* 1E0B8 800B34B8 27A50018 */  addiu      $a1, $sp, 0x18
/* 1E0BC 800B34BC 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1E0C0 800B34C0 02603821 */  addu       $a3, $s3, $zero
/* 1E0C4 800B34C4 0C02CD8B */  jal        func_800B362C
/* 1E0C8 800B34C8 AFB20010 */   sw        $s2, 0x10($sp)
/* 1E0CC 800B34CC 8E03007C */  lw         $v1, 0x7c($s0)
/* 1E0D0 800B34D0 84650008 */  lh         $a1, 8($v1)
/* 1E0D4 800B34D4 8C66000C */  lw         $a2, 0xc($v1)
/* 1E0D8 800B34D8 00409021 */  addu       $s2, $v0, $zero
/* 1E0DC 800B34DC 02002021 */  addu       $a0, $s0, $zero
.L800B34E0:
/* 1E0E0 800B34E0 0C02CD62 */  jal        func_800B3588
/* 1E0E4 800B34E4 00000000 */   nop
.L800B34E8:
/* 1E0E8 800B34E8 8E05007C */  lw         $a1, 0x7c($s0)
/* 1E0EC 800B34EC 02F3B823 */  subu       $s7, $s7, $s3
/* 1E0F0 800B34F0 97A2001A */  lhu        $v0, 0x1a($sp)
/* 1E0F4 800B34F4 8CA40000 */  lw         $a0, ($a1)
/* 1E0F8 800B34F8 00131840 */  sll        $v1, $s3, 1
/* 1E0FC 800B34FC 00431021 */  addu       $v0, $v0, $v1
/* 1E100 800B3500 A7A2001A */  sh         $v0, 0x1a($sp)
/* 1E104 800B3504 14800002 */  bnez       $a0, .L800B3510
/* 1E108 800B3508 AE04007C */   sw        $a0, 0x7c($s0)
/* 1E10C 800B350C AE000080 */  sw         $zero, 0x80($s0)
.L800B3510:
/* 1E110 800B3510 0C02D5C5 */  jal        func_800B5714
/* 1E114 800B3514 00A02021 */   addu      $a0, $a1, $zero
/* 1E118 800B3518 8E02007C */  lw         $v0, 0x7c($s0)
/* 1E11C 800B351C 1440FED4 */  bnez       $v0, .L800B3070
/* 1E120 800B3520 00000000 */   nop
.L800B3524:
/* 1E124 800B3524 02002021 */  addu       $a0, $s0, $zero
.L800B3528:
/* 1E128 800B3528 27A50018 */  addiu      $a1, $sp, 0x18
/* 1E12C 800B352C 27A6001A */  addiu      $a2, $sp, 0x1a
/* 1E130 800B3530 02E03821 */  addu       $a3, $s7, $zero
/* 1E134 800B3534 0C02CD8B */  jal        func_800B362C
/* 1E138 800B3538 AFB20010 */   sw        $s2, 0x10($sp)
/* 1E13C 800B353C 8E030070 */  lw         $v1, 0x70($s0)
/* 1E140 800B3540 8E040074 */  lw         $a0, 0x74($s0)
/* 1E144 800B3544 0083182A */  slt        $v1, $a0, $v1
/* 1E148 800B3548 10600002 */  beqz       $v1, .L800B3554
/* 1E14C 800B354C 00409021 */   addu      $s2, $v0, $zero
/* 1E150 800B3550 AE040070 */  sw         $a0, 0x70($s0)
.L800B3554:
/* 1E154 800B3554 02401021 */  addu       $v0, $s2, $zero
/* 1E158 800B3558 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1E15C 800B355C 8FBE0040 */  lw         $fp, 0x40($sp)
/* 1E160 800B3560 8FB7003C */  lw         $s7, 0x3c($sp)
/* 1E164 800B3564 8FB60038 */  lw         $s6, 0x38($sp)
/* 1E168 800B3568 8FB50034 */  lw         $s5, 0x34($sp)
/* 1E16C 800B356C 8FB40030 */  lw         $s4, 0x30($sp)
/* 1E170 800B3570 8FB3002C */  lw         $s3, 0x2c($sp)
/* 1E174 800B3574 8FB20028 */  lw         $s2, 0x28($sp)
/* 1E178 800B3578 8FB10024 */  lw         $s1, 0x24($sp)
/* 1E17C 800B357C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1E180 800B3580 03E00008 */  jr         $ra
/* 1E184 800B3584 27BD0048 */   addiu     $sp, $sp, 0x48
