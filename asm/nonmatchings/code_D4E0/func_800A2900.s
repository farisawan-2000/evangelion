glabel func_800A2900
/* D500 800A2900 9483001E */  lhu        $v1, 0x1E($a0)
/* D504 800A2904 30620400 */  andi       $v0, $v1, 0x400
/* D508 800A2908 1440003E */  bnez       $v0, .L800A2A04
/* D50C 800A290C 30620100 */   andi      $v0, $v1, 0x100
/* D510 800A2910 10400013 */  beqz       $v0, .L800A2960
/* D514 800A2914 30620200 */   andi      $v0, $v1, 0x200
/* D518 800A2918 3C028010 */  lui        $v0, %hi(D_800FFFE0)
/* D51C 800A291C 8C42FFE0 */  lw         $v0, %lo(D_800FFFE0)($v0)
/* D520 800A2920 28420014 */  slti       $v0, $v0, 0x14
/* D524 800A2924 14400003 */  bnez       $v0, .L800A2934
/* D528 800A2928 24020013 */   addiu     $v0, $zero, 0x13
/* D52C 800A292C 3C018010 */  lui        $at, %hi(D_800FFFE0)
/* D530 800A2930 AC22FFE0 */  sw         $v0, %lo(D_800FFFE0)($at)
.L800A2934:
/* D534 800A2934 3C028010 */  lui        $v0, %hi(D_800FFFE0)
/* D538 800A2938 8C42FFE0 */  lw         $v0, %lo(D_800FFFE0)($v0)
/* D53C 800A293C 24430001 */  addiu      $v1, $v0, 0x1
/* D540 800A2940 00021080 */  sll        $v0, $v0, 2
/* D544 800A2944 3C018010 */  lui        $at, %hi(D_800FFFE0)
/* D548 800A2948 AC23FFE0 */  sw         $v1, %lo(D_800FFFE0)($at)
/* D54C 800A294C 3C018010 */  lui        $at, %hi(D_800FFF90)
/* D550 800A2950 00220821 */  addu       $at, $at, $v0
/* D554 800A2954 AC24FF90 */  sw         $a0, %lo(D_800FFF90)($at)
/* D558 800A2958 08028A7C */  j          .L800A29F0
/* D55C 800A295C 00000000 */   nop
.L800A2960:
/* D560 800A2960 10400013 */  beqz       $v0, .L800A29B0
/* D564 800A2964 00000000 */   nop
/* D568 800A2968 3C028010 */  lui        $v0, %hi(D_80100010)
/* D56C 800A296C 8C420010 */  lw         $v0, %lo(D_80100010)($v0)
/* D570 800A2970 2842000A */  slti       $v0, $v0, 0xA
/* D574 800A2974 14400003 */  bnez       $v0, .L800A2984
/* D578 800A2978 24020009 */   addiu     $v0, $zero, 0x9
/* D57C 800A297C 3C018010 */  lui        $at, %hi(D_80100010)
/* D580 800A2980 AC220010 */  sw         $v0, %lo(D_80100010)($at)
.L800A2984:
/* D584 800A2984 3C028010 */  lui        $v0, %hi(D_80100010)
/* D588 800A2988 8C420010 */  lw         $v0, %lo(D_80100010)($v0)
/* D58C 800A298C 24430001 */  addiu      $v1, $v0, 0x1
/* D590 800A2990 00021080 */  sll        $v0, $v0, 2
/* D594 800A2994 3C018010 */  lui        $at, %hi(D_80100010)
/* D598 800A2998 AC230010 */  sw         $v1, %lo(D_80100010)($at)
/* D59C 800A299C 3C018010 */  lui        $at, %hi(D_800FFFE8)
/* D5A0 800A29A0 00220821 */  addu       $at, $at, $v0
/* D5A4 800A29A4 AC24FFE8 */  sw         $a0, %lo(D_800FFFE8)($at)
/* D5A8 800A29A8 08028A7C */  j          .L800A29F0
/* D5AC 800A29AC 00000000 */   nop
.L800A29B0:
/* D5B0 800A29B0 3C028010 */  lui        $v0, %hi(D_800FFF88)
/* D5B4 800A29B4 8C42FF88 */  lw         $v0, %lo(D_800FFF88)($v0)
/* D5B8 800A29B8 28420064 */  slti       $v0, $v0, 0x64
/* D5BC 800A29BC 14400003 */  bnez       $v0, .L800A29CC
/* D5C0 800A29C0 24020063 */   addiu     $v0, $zero, 0x63
/* D5C4 800A29C4 3C018010 */  lui        $at, %hi(D_800FFF88)
/* D5C8 800A29C8 AC22FF88 */  sw         $v0, %lo(D_800FFF88)($at)
.L800A29CC:
/* D5CC 800A29CC 3C028010 */  lui        $v0, %hi(D_800FFF88)
/* D5D0 800A29D0 8C42FF88 */  lw         $v0, %lo(D_800FFF88)($v0)
/* D5D4 800A29D4 24430001 */  addiu      $v1, $v0, 0x1
/* D5D8 800A29D8 00021080 */  sll        $v0, $v0, 2
/* D5DC 800A29DC 3C018010 */  lui        $at, %hi(D_800FFF88)
/* D5E0 800A29E0 AC23FF88 */  sw         $v1, %lo(D_800FFF88)($at)
/* D5E4 800A29E4 3C018010 */  lui        $at, %hi(D_800FFDF8)
/* D5E8 800A29E8 00220821 */  addu       $at, $at, $v0
/* D5EC 800A29EC AC24FDF8 */  sw         $a0, %lo(D_800FFDF8)($at)
.L800A29F0:
/* D5F0 800A29F0 9482001C */  lhu        $v0, 0x1C($a0)
/* D5F4 800A29F4 2C420064 */  sltiu      $v0, $v0, 0x64
/* D5F8 800A29F8 14400002 */  bnez       $v0, .L800A2A04
/* D5FC 800A29FC 24020063 */   addiu     $v0, $zero, 0x63
/* D600 800A2A00 A482001C */  sh         $v0, 0x1C($a0)
.L800A2A04:
/* D604 800A2A04 03E00008 */  jr         $ra
/* D608 800A2A08 00000000 */   nop
.size func_800A2900, . - func_800A2900
