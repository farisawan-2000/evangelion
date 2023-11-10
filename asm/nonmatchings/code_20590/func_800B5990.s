glabel func_800B5990
/* 20590 800B5990 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20594 800B5994 AFB40028 */  sw         $s4, 0x28($sp)
/* 20598 800B5998 0080A021 */  addu       $s4, $a0, $zero
/* 2059C 800B599C AFB30024 */  sw         $s3, 0x24($sp)
/* 205A0 800B59A0 00A09821 */  addu       $s3, $a1, $zero
/* 205A4 800B59A4 3C038000 */  lui        $v1, %hi(D_80000300)
/* 205A8 800B59A8 8C630300 */  lw         $v1, %lo(D_80000300)($v1)
/* 205AC 800B59AC 3C048017 */  lui        $a0, %hi(D_8016E2DC)
/* 205B0 800B59B0 2484E2DC */  addiu      $a0, $a0, %lo(D_8016E2DC)
/* 205B4 800B59B4 24020001 */  addiu      $v0, $zero, 0x1
/* 205B8 800B59B8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 205BC 800B59BC AFB20020 */  sw         $s2, 0x20($sp)
/* 205C0 800B59C0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 205C4 800B59C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 205C8 800B59C8 AC800000 */  sw         $zero, 0x0($a0)
/* 205CC 800B59CC 3C018017 */  lui        $at, %hi(D_8016E2E0)
/* 205D0 800B59D0 AC20E2E0 */  sw         $zero, %lo(D_8016E2E0)($at)
/* 205D4 800B59D4 3C018017 */  lui        $at, %hi(D_8016E2E4)
/* 205D8 800B59D8 AC20E2E4 */  sw         $zero, %lo(D_8016E2E4)($at)
/* 205DC 800B59DC 3C018017 */  lui        $at, %hi(D_8016E2D8)
/* 205E0 800B59E0 AC20E2D8 */  sw         $zero, %lo(D_8016E2D8)($at)
/* 205E4 800B59E4 A482F994 */  sh         $v0, -0x66C($a0)
/* 205E8 800B59E8 24020002 */  addiu      $v0, $zero, 0x2
/* 205EC 800B59EC 3C018017 */  lui        $at, %hi(D_8016DC72)
/* 205F0 800B59F0 A422DC72 */  sh         $v0, %lo(D_8016DC72)($at)
/* 205F4 800B59F4 326200FF */  andi       $v0, $s3, 0xFF
/* 205F8 800B59F8 3C018017 */  lui        $at, %hi(D_8016E2E8)
/* 205FC 800B59FC AC22E2E8 */  sw         $v0, %lo(D_8016E2E8)($at)
/* 20600 800B5A00 24020002 */  addiu      $v0, $zero, 0x2
/* 20604 800B5A04 3C018017 */  lui        $at, %hi(D_8016E2ED)
/* 20608 800B5A08 A022E2ED */  sb         $v0, %lo(D_8016E2ED)($at)
/* 2060C 800B5A0C 14600004 */  bnez       $v1, .L800B5A20
/* 20610 800B5A10 2402003C */   addiu     $v0, $zero, 0x3C
/* 20614 800B5A14 24020032 */  addiu      $v0, $zero, 0x32
/* 20618 800B5A18 0802D68A */  j          .L800B5A28
/* 2061C 800B5A1C A0820010 */   sb        $v0, 0x10($a0)
.L800B5A20:
/* 20620 800B5A20 3C018017 */  lui        $at, %hi(D_8016E2EC)
/* 20624 800B5A24 A022E2EC */  sb         $v0, %lo(D_8016E2EC)($at)
.L800B5A28:
/* 20628 800B5A28 3C108017 */  lui        $s0, %hi(D_8016DCE4)
/* 2062C 800B5A2C 2610DCE4 */  addiu      $s0, $s0, %lo(D_8016DCE4)
/* 20630 800B5A30 02002021 */  addu       $a0, $s0, $zero
/* 20634 800B5A34 26050018 */  addiu      $a1, $s0, 0x18
/* 20638 800B5A38 3C018015 */  lui        $at, %hi(D_80149BA0)
/* 2063C 800B5A3C A0209BA0 */  sb         $zero, %lo(D_80149BA0)($at)
/* 20640 800B5A40 0C0301A4 */  jal        func_800C0690
/* 20644 800B5A44 24060008 */   addiu     $a2, $zero, 0x8
/* 20648 800B5A48 26120038 */  addiu      $s2, $s0, 0x38
/* 2064C 800B5A4C 02402021 */  addu       $a0, $s2, $zero
/* 20650 800B5A50 26050050 */  addiu      $a1, $s0, 0x50
/* 20654 800B5A54 0C0301A4 */  jal        func_800C0690
/* 20658 800B5A58 24060008 */   addiu     $a2, $zero, 0x8
/* 2065C 800B5A5C 26110070 */  addiu      $s1, $s0, 0x70
/* 20660 800B5A60 02202021 */  addu       $a0, $s1, $zero
/* 20664 800B5A64 26050088 */  addiu      $a1, $s0, 0x88
/* 20668 800B5A68 0C0301A4 */  jal        func_800C0690
/* 2066C 800B5A6C 24060008 */   addiu     $a2, $zero, 0x8
/* 20670 800B5A70 2604FFC8 */  addiu      $a0, $s0, -0x38
/* 20674 800B5A74 2605FFE0 */  addiu      $a1, $s0, -0x20
/* 20678 800B5A78 0C0301A4 */  jal        func_800C0690
/* 2067C 800B5A7C 24060008 */   addiu     $a2, $zero, 0x8
/* 20680 800B5A80 2604FF90 */  addiu      $a0, $s0, -0x70
/* 20684 800B5A84 2605FFA8 */  addiu      $a1, $s0, -0x58
/* 20688 800B5A88 0C0301A4 */  jal        func_800C0690
/* 2068C 800B5A8C 24060008 */   addiu     $a2, $zero, 0x8
/* 20690 800B5A90 260400A8 */  addiu      $a0, $s0, 0xA8
/* 20694 800B5A94 260500C0 */  addiu      $a1, $s0, 0xC0
/* 20698 800B5A98 0C0301A4 */  jal        func_800C0690
/* 2069C 800B5A9C 24060008 */   addiu     $a2, $zero, 0x8
/* 206A0 800B5AA0 0C0308D4 */  jal        func_800C2350
/* 206A4 800B5AA4 240400FE */   addiu     $a0, $zero, 0xFE
/* 206A8 800B5AA8 328200FF */  andi       $v0, $s4, 0xFF
/* 206AC 800B5AAC 00022080 */  sll        $a0, $v0, 2
/* 206B0 800B5AB0 00822021 */  addu       $a0, $a0, $v0
/* 206B4 800B5AB4 00042100 */  sll        $a0, $a0, 4
/* 206B8 800B5AB8 3C02800F */  lui        $v0, %hi(D_800F6A00)
/* 206BC 800B5ABC 24426A00 */  addiu      $v0, $v0, %lo(D_800F6A00)
/* 206C0 800B5AC0 0C0309BC */  jal        func_800C26F0
/* 206C4 800B5AC4 00822021 */   addu      $a0, $a0, $v0
/* 206C8 800B5AC8 0C030B18 */  jal        func_800C2C60
/* 206CC 800B5ACC 24040001 */   addiu     $a0, $zero, 0x1
/* 206D0 800B5AD0 02002021 */  addu       $a0, $s0, $zero
/* 206D4 800B5AD4 2405029A */  addiu      $a1, $zero, 0x29A
/* 206D8 800B5AD8 0C0309A4 */  jal        func_800C2690
/* 206DC 800B5ADC 326600FF */   andi      $a2, $s3, 0xFF
/* 206E0 800B5AE0 24040004 */  addiu      $a0, $zero, 0x4
/* 206E4 800B5AE4 02402821 */  addu       $a1, $s2, $zero
/* 206E8 800B5AE8 0C030298 */  jal        func_800C0A60
/* 206EC 800B5AEC 2406029B */   addiu     $a2, $zero, 0x29B
/* 206F0 800B5AF0 24040009 */  addiu      $a0, $zero, 0x9
/* 206F4 800B5AF4 02202821 */  addu       $a1, $s1, $zero
/* 206F8 800B5AF8 0C030298 */  jal        func_800C0A60
/* 206FC 800B5AFC 2406029C */   addiu     $a2, $zero, 0x29C
/* 20700 800B5B00 2404000E */  addiu      $a0, $zero, 0xE
/* 20704 800B5B04 02002821 */  addu       $a1, $s0, $zero
/* 20708 800B5B08 0C030298 */  jal        func_800C0A60
/* 2070C 800B5B0C 2406029D */   addiu     $a2, $zero, 0x29D
/* 20710 800B5B10 261200E4 */  addiu      $s2, $s0, 0xE4
/* 20714 800B5B14 02402021 */  addu       $a0, $s2, $zero
/* 20718 800B5B18 24050013 */  addiu      $a1, $zero, 0x13
/* 2071C 800B5B1C 3C06800B */  lui        $a2, %hi(func_800B5BF4)
/* 20720 800B5B20 24C65BF4 */  addiu      $a2, $a2, %lo(func_800B5BF4)
/* 20724 800B5B24 2611FF8C */  addiu      $s1, $s0, -0x74
/* 20728 800B5B28 02203821 */  addu       $a3, $s1, $zero
/* 2072C 800B5B2C 3C028010 */  lui        $v0, %hi(D_80104BD0)
/* 20730 800B5B30 24424BD0 */  addiu      $v0, $v0, %lo(D_80104BD0)
/* 20734 800B5B34 AFA20010 */  sw         $v0, 0x10($sp)
/* 20738 800B5B38 24020078 */  addiu      $v0, $zero, 0x78
/* 2073C 800B5B3C 0C03065C */  jal        osCreateThread
/* 20740 800B5B40 AFA20014 */   sw        $v0, 0x14($sp)
/* 20744 800B5B44 0C0306CC */  jal        osStartThread
/* 20748 800B5B48 02402021 */   addu      $a0, $s2, $zero
/* 2074C 800B5B4C 26120294 */  addiu      $s2, $s0, 0x294
/* 20750 800B5B50 02402021 */  addu       $a0, $s2, $zero
/* 20754 800B5B54 24050012 */  addiu      $a1, $zero, 0x12
/* 20758 800B5B58 3C06800B */  lui        $a2, %hi(func_800B5EEC)
/* 2075C 800B5B5C 24C65EEC */  addiu      $a2, $a2, %lo(func_800B5EEC)
/* 20760 800B5B60 02203821 */  addu       $a3, $s1, $zero
/* 20764 800B5B64 3C028010 */  lui        $v0, %hi(D_80106BD0)
/* 20768 800B5B68 24426BD0 */  addiu      $v0, $v0, %lo(D_80106BD0)
/* 2076C 800B5B6C AFA20010 */  sw         $v0, 0x10($sp)
/* 20770 800B5B70 2402006E */  addiu      $v0, $zero, 0x6E
/* 20774 800B5B74 0C03065C */  jal        osCreateThread
/* 20778 800B5B78 AFA20014 */   sw        $v0, 0x14($sp)
/* 2077C 800B5B7C 0C0306CC */  jal        osStartThread
/* 20780 800B5B80 02402021 */   addu      $a0, $s2, $zero
/* 20784 800B5B84 26100444 */  addiu      $s0, $s0, 0x444
/* 20788 800B5B88 02002021 */  addu       $a0, $s0, $zero
/* 2078C 800B5B8C 24050011 */  addiu      $a1, $zero, 0x11
/* 20790 800B5B90 3C06800B */  lui        $a2, %hi(func_800B6048)
/* 20794 800B5B94 24C66048 */  addiu      $a2, $a2, %lo(func_800B6048)
/* 20798 800B5B98 02203821 */  addu       $a3, $s1, $zero
/* 2079C 800B5B9C 3C028011 */  lui        $v0, %hi(D_80108BD0)
/* 207A0 800B5BA0 24428BD0 */  addiu      $v0, $v0, %lo(D_80108BD0)
/* 207A4 800B5BA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 207A8 800B5BA8 24020064 */  addiu      $v0, $zero, 0x64
/* 207AC 800B5BAC 0C03065C */  jal        osCreateThread
/* 207B0 800B5BB0 AFA20014 */   sw        $v0, 0x14($sp)
/* 207B4 800B5BB4 0C0306CC */  jal        osStartThread
/* 207B8 800B5BB8 02002021 */   addu      $a0, $s0, $zero
/* 207BC 800B5BBC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 207C0 800B5BC0 8FB40028 */  lw         $s4, 0x28($sp)
/* 207C4 800B5BC4 8FB30024 */  lw         $s3, 0x24($sp)
/* 207C8 800B5BC8 8FB20020 */  lw         $s2, 0x20($sp)
/* 207CC 800B5BCC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 207D0 800B5BD0 8FB00018 */  lw         $s0, 0x18($sp)
/* 207D4 800B5BD4 03E00008 */  jr         $ra
/* 207D8 800B5BD8 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B5990, . - func_800B5990
