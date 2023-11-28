glabel func_80043FD0_ovl3
/* ED4E0 80043FD0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* ED4E4 80043FD4 AFBF0030 */  sw         $ra, 0x30($sp)
/* ED4E8 80043FD8 AFB3002C */  sw         $s3, 0x2C($sp)
/* ED4EC 80043FDC AFB20028 */  sw         $s2, 0x28($sp)
/* ED4F0 80043FE0 AFB10024 */  sw         $s1, 0x24($sp)
/* ED4F4 80043FE4 AFB00020 */  sw         $s0, 0x20($sp)
/* ED4F8 80043FE8 F7BE0060 */  sdc1       $f30, 0x60($sp)
/* ED4FC 80043FEC F7BC0058 */  sdc1       $f28, 0x58($sp)
/* ED500 80043FF0 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* ED504 80043FF4 F7B80048 */  sdc1       $f24, 0x48($sp)
/* ED508 80043FF8 F7B60040 */  sdc1       $f22, 0x40($sp)
/* ED50C 80043FFC F7B40038 */  sdc1       $f20, 0x38($sp)
/* ED510 80044000 0C00DFA8 */  jal        func_80037EA0_ovl3
/* ED514 80044004 24040009 */   addiu     $a0, $zero, 0x9
/* ED518 80044008 00408021 */  addu       $s0, $v0, $zero
/* ED51C 8004400C 3C01C28C */  lui        $at, (0xC28C0000 >> 16)
/* ED520 80044010 44810000 */  mtc1       $at, $f0
/* ED524 80044014 3C014270 */  lui        $at, (0x42700000 >> 16)
/* ED528 80044018 44811000 */  mtc1       $at, $f2
/* ED52C 8004401C 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* ED530 80044020 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* ED534 80044024 44812000 */  mtc1       $at, $f4
/* ED538 80044028 3C01425C */  lui        $at, (0x425C0000 >> 16)
/* ED53C 8004402C 44813000 */  mtc1       $at, $f6
/* ED540 80044030 02002021 */  addu       $a0, $s0, $zero
/* ED544 80044034 00002821 */  addu       $a1, $zero, $zero
/* ED548 80044038 240200FF */  addiu      $v0, $zero, 0xFF
/* ED54C 8004403C A6020074 */  sh         $v0, 0x74($s0)
/* ED550 80044040 A6020076 */  sh         $v0, 0x76($s0)
/* ED554 80044044 A6020078 */  sh         $v0, 0x78($s0)
/* ED558 80044048 A602007A */  sh         $v0, 0x7A($s0)
/* ED55C 8004404C 24020014 */  addiu      $v0, $zero, 0x14
/* ED560 80044050 AE000010 */  sw         $zero, 0x10($s0)
/* ED564 80044054 AE00001C */  sw         $zero, 0x1C($s0)
/* ED568 80044058 AE000024 */  sw         $zero, 0x24($s0)
/* ED56C 8004405C A6020070 */  sh         $v0, 0x70($s0)
/* ED570 80044060 E6000014 */  swc1       $f0, 0x14($s0)
/* ED574 80044064 E6020018 */  swc1       $f2, 0x18($s0)
/* ED578 80044068 E6040028 */  swc1       $f4, 0x28($s0)
/* ED57C 8004406C 0C00DFE6 */  jal        func_80037F98_ovl3
/* ED580 80044070 E6060020 */   swc1      $f6, 0x20($s0)
/* ED584 80044074 8E020004 */  lw         $v0, 0x4($s0)
/* ED588 80044078 A0400067 */  sb         $zero, 0x67($v0)
/* ED58C 8004407C 8E030004 */  lw         $v1, 0x4($s0)
/* ED590 80044080 24020001 */  addiu      $v0, $zero, 0x1
/* ED594 80044084 A6020072 */  sh         $v0, 0x72($s0)
/* ED598 80044088 90620066 */  lbu        $v0, 0x66($v1)
/* ED59C 8004408C 34420007 */  ori        $v0, $v0, 0x7
/* ED5A0 80044090 A0620066 */  sb         $v0, 0x66($v1)
/* ED5A4 80044094 8E040004 */  lw         $a0, 0x4($s0)
/* ED5A8 80044098 3C058007 */  lui        $a1, %hi(D_8006A084_ovl3)
/* ED5AC 8004409C 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084_ovl3)
/* ED5B0 800440A0 0C0284DC */  jal        func_800A1370
/* ED5B4 800440A4 00008821 */   addu      $s1, $zero, $zero
/* ED5B8 800440A8 8E040004 */  lw         $a0, 0x4($s0)
/* ED5BC 800440AC 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* ED5C0 800440B0 0C02869D */  jal        func_800A1A74
/* ED5C4 800440B4 00003021 */   addu      $a2, $zero, $zero
/* ED5C8 800440B8 8E040004 */  lw         $a0, 0x4($s0)
/* ED5CC 800440BC 3C058007 */  lui        $a1, %hi(D_8006A08C_ovl3)
/* ED5D0 800440C0 24A5A08C */  addiu      $a1, $a1, %lo(D_8006A08C_ovl3)
/* ED5D4 800440C4 0C0284DC */  jal        func_800A1370
/* ED5D8 800440C8 24130007 */   addiu     $s3, $zero, 0x7
/* ED5DC 800440CC 8E040004 */  lw         $a0, 0x4($s0)
/* ED5E0 800440D0 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* ED5E4 800440D4 0C02869D */  jal        func_800A1A74
/* ED5E8 800440D8 00003021 */   addu      $a2, $zero, $zero
/* ED5EC 800440DC 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED5F0 800440E0 2404000A */   addiu     $a0, $zero, 0xA
/* ED5F4 800440E4 3C01C110 */  lui        $at, (0xC1100000 >> 16)
/* ED5F8 800440E8 44811000 */  mtc1       $at, $f2
/* ED5FC 800440EC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* ED600 800440F0 44812000 */  mtc1       $at, $f4
/* ED604 800440F4 3C014170 */  lui        $at, (0x41700000 >> 16)
/* ED608 800440F8 4481A000 */  mtc1       $at, $f20
/* ED60C 800440FC 3C01C2A0 */  lui        $at, (0xC2A00000 >> 16)
/* ED610 80044100 44810000 */  mtc1       $at, $f0
/* ED614 80044104 00408021 */  addu       $s0, $v0, $zero
/* ED618 80044108 2404000B */  addiu      $a0, $zero, 0xB
/* ED61C 8004410C AE000020 */  sw         $zero, 0x20($s0)
/* ED620 80044110 AE000024 */  sw         $zero, 0x24($s0)
/* ED624 80044114 E6140014 */  swc1       $f20, 0x14($s0)
/* ED628 80044118 E602001C */  swc1       $f2, 0x1C($s0)
/* ED62C 8004411C E6040010 */  swc1       $f4, 0x10($s0)
/* ED630 80044120 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED634 80044124 E6000018 */   swc1      $f0, 0x18($s0)
/* ED638 80044128 3C014050 */  lui        $at, (0x40500000 >> 16)
/* ED63C 8004412C 4481D000 */  mtc1       $at, $f26
/* ED640 80044130 3C01C1F0 */  lui        $at, (0xC1F00000 >> 16)
/* ED644 80044134 4481C000 */  mtc1       $at, $f24
/* ED648 80044138 3C014150 */  lui        $at, (0x41500000 >> 16)
/* ED64C 8004413C 44810000 */  mtc1       $at, $f0
/* ED650 80044140 3C01C234 */  lui        $at, (0xC2340000 >> 16)
/* ED654 80044144 4481B000 */  mtc1       $at, $f22
/* ED658 80044148 00408021 */  addu       $s0, $v0, $zero
/* ED65C 8004414C 2404000C */  addiu      $a0, $zero, 0xC
/* ED660 80044150 E6140020 */  swc1       $f20, 0x20($s0)
/* ED664 80044154 AE000024 */  sw         $zero, 0x24($s0)
/* ED668 80044158 E61A001C */  swc1       $f26, 0x1C($s0)
/* ED66C 8004415C E6180010 */  swc1       $f24, 0x10($s0)
/* ED670 80044160 E6160018 */  swc1       $f22, 0x18($s0)
/* ED674 80044164 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED678 80044168 E6000014 */   swc1      $f0, 0x14($s0)
/* ED67C 8004416C 3C0140F8 */  lui        $at, (0x40F851EC >> 16)
/* ED680 80044170 342151EC */  ori        $at, $at, (0x40F851EC & 0xFFFF)
/* ED684 80044174 4481A000 */  mtc1       $at, $f20
/* ED688 80044178 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* ED68C 8004417C 4481E000 */  mtc1       $at, $f28
/* ED690 80044180 3C01C296 */  lui        $at, (0xC2960000 >> 16)
/* ED694 80044184 44810000 */  mtc1       $at, $f0
/* ED698 80044188 3C014040 */  lui        $at, (0x40400000 >> 16)
/* ED69C 8004418C 44811000 */  mtc1       $at, $f2
/* ED6A0 80044190 00408021 */  addu       $s0, $v0, $zero
/* ED6A4 80044194 2404000D */  addiu      $a0, $zero, 0xD
/* ED6A8 80044198 AE000024 */  sw         $zero, 0x24($s0)
/* ED6AC 8004419C AE000018 */  sw         $zero, 0x18($s0)
/* ED6B0 800441A0 E614001C */  swc1       $f20, 0x1C($s0)
/* ED6B4 800441A4 E61C0020 */  swc1       $f28, 0x20($s0)
/* ED6B8 800441A8 E6000010 */  swc1       $f0, 0x10($s0)
/* ED6BC 800441AC 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED6C0 800441B0 E6020014 */   swc1      $f2, 0x14($s0)
/* ED6C4 800441B4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* ED6C8 800441B8 4481F000 */  mtc1       $at, $f30
/* ED6CC 800441BC 3C0142E0 */  lui        $at, (0x42E00000 >> 16)
/* ED6D0 800441C0 44810000 */  mtc1       $at, $f0
/* ED6D4 800441C4 3C01C270 */  lui        $at, (0xC2700000 >> 16)
/* ED6D8 800441C8 44811000 */  mtc1       $at, $f2
/* ED6DC 800441CC 3C01428C */  lui        $at, (0x428C0000 >> 16)
/* ED6E0 800441D0 44812000 */  mtc1       $at, $f4
/* ED6E4 800441D4 00408021 */  addu       $s0, $v0, $zero
/* ED6E8 800441D8 2404000E */  addiu      $a0, $zero, 0xE
/* ED6EC 800441DC AE000024 */  sw         $zero, 0x24($s0)
/* ED6F0 800441E0 AE000014 */  sw         $zero, 0x14($s0)
/* ED6F4 800441E4 E61E001C */  swc1       $f30, 0x1C($s0)
/* ED6F8 800441E8 E6000020 */  swc1       $f0, 0x20($s0)
/* ED6FC 800441EC E6020010 */  swc1       $f2, 0x10($s0)
/* ED700 800441F0 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED704 800441F4 E6040018 */   swc1      $f4, 0x18($s0)
/* ED708 800441F8 3C01C170 */  lui        $at, (0xC1700000 >> 16)
/* ED70C 800441FC 44810000 */  mtc1       $at, $f0
/* ED710 80044200 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* ED714 80044204 44811000 */  mtc1       $at, $f2
/* ED718 80044208 3C01C040 */  lui        $at, (0xC0400000 >> 16)
/* ED71C 8004420C 44812000 */  mtc1       $at, $f4
/* ED720 80044210 00408021 */  addu       $s0, $v0, $zero
/* ED724 80044214 2404000F */  addiu      $a0, $zero, 0xF
/* ED728 80044218 E61A001C */  swc1       $f26, 0x1C($s0)
/* ED72C 8004421C AE000024 */  sw         $zero, 0x24($s0)
/* ED730 80044220 E6160018 */  swc1       $f22, 0x18($s0)
/* ED734 80044224 E6000020 */  swc1       $f0, 0x20($s0)
/* ED738 80044228 E6020010 */  swc1       $f2, 0x10($s0)
/* ED73C 8004422C 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED740 80044230 E6040014 */   swc1      $f4, 0x14($s0)
/* ED744 80044234 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* ED748 80044238 44810000 */  mtc1       $at, $f0
/* ED74C 8004423C 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* ED750 80044240 44811000 */  mtc1       $at, $f2
/* ED754 80044244 00408021 */  addu       $s0, $v0, $zero
/* ED758 80044248 24040010 */  addiu      $a0, $zero, 0x10
/* ED75C 8004424C E614001C */  swc1       $f20, 0x1C($s0)
/* ED760 80044250 E6180020 */  swc1       $f24, 0x20($s0)
/* ED764 80044254 AE000024 */  sw         $zero, 0x24($s0)
/* ED768 80044258 E61C0014 */  swc1       $f28, 0x14($s0)
/* ED76C 8004425C E6000010 */  swc1       $f0, 0x10($s0)
/* ED770 80044260 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED774 80044264 E6020018 */   swc1      $f2, 0x18($s0)
/* ED778 80044268 3C014302 */  lui        $at, (0x43020000 >> 16)
/* ED77C 8004426C 4481B000 */  mtc1       $at, $f22
/* ED780 80044270 3C0141B0 */  lui        $at, (0x41B00000 >> 16)
/* ED784 80044274 44810000 */  mtc1       $at, $f0
/* ED788 80044278 3C014120 */  lui        $at, (0x41200000 >> 16)
/* ED78C 8004427C 44811000 */  mtc1       $at, $f2
/* ED790 80044280 00408021 */  addu       $s0, $v0, $zero
/* ED794 80044284 24040011 */  addiu      $a0, $zero, 0x11
/* ED798 80044288 E614001C */  swc1       $f20, 0x1C($s0)
/* ED79C 8004428C E6180020 */  swc1       $f24, 0x20($s0)
/* ED7A0 80044290 AE000024 */  sw         $zero, 0x24($s0)
/* ED7A4 80044294 E6160010 */  swc1       $f22, 0x10($s0)
/* ED7A8 80044298 E6000014 */  swc1       $f0, 0x14($s0)
/* ED7AC 8004429C 0C00DFD6 */  jal        func_80037F58_ovl3
/* ED7B0 800442A0 E6020018 */   swc1      $f2, 0x18($s0)
/* ED7B4 800442A4 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* ED7B8 800442A8 44810000 */  mtc1       $at, $f0
/* ED7BC 800442AC 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* ED7C0 800442B0 44811000 */  mtc1       $at, $f2
/* ED7C4 800442B4 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* ED7C8 800442B8 44812000 */  mtc1       $at, $f4
/* ED7CC 800442BC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* ED7D0 800442C0 4481A000 */  mtc1       $at, $f20
/* ED7D4 800442C4 3C0142AF */  lui        $at, (0x42AF0000 >> 16)
/* ED7D8 800442C8 44813000 */  mtc1       $at, $f6
/* ED7DC 800442CC 3C01C37A */  lui        $at, (0xC37A0000 >> 16)
/* ED7E0 800442D0 44814000 */  mtc1       $at, $f8
/* ED7E4 800442D4 00408021 */  addu       $s0, $v0, $zero
/* ED7E8 800442D8 E61E001C */  swc1       $f30, 0x1C($s0)
/* ED7EC 800442DC AE000024 */  sw         $zero, 0x24($s0)
/* ED7F0 800442E0 E6160010 */  swc1       $f22, 0x10($s0)
/* ED7F4 800442E4 E6000020 */  swc1       $f0, 0x20($s0)
/* ED7F8 800442E8 E6020014 */  swc1       $f2, 0x14($s0)
/* ED7FC 800442EC E6040018 */  swc1       $f4, 0x18($s0)
/* ED800 800442F0 3C018015 */  lui        $at, %hi(D_8014A064)
/* ED804 800442F4 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* ED808 800442F8 3C018015 */  lui        $at, %hi(D_8014A068)
/* ED80C 800442FC AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* ED810 80044300 3C018015 */  lui        $at, %hi(D_8014A06C)
/* ED814 80044304 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* ED818 80044308 3C018015 */  lui        $at, %hi(D_8014A070)
/* ED81C 8004430C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* ED820 80044310 3C018015 */  lui        $at, %hi(D_8014A074)
/* ED824 80044314 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* ED828 80044318 3C018015 */  lui        $at, %hi(D_8014A078)
/* ED82C 8004431C AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* ED830 80044320 3C018015 */  lui        $at, %hi(D_8014A07C)
/* ED834 80044324 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* ED838 80044328 3C018015 */  lui        $at, %hi(D_8014A080)
/* ED83C 8004432C E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* ED840 80044330 3C018015 */  lui        $at, %hi(D_8014A084)
/* ED844 80044334 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* ED848 80044338 3C018015 */  lui        $at, %hi(D_8014A088)
/* ED84C 8004433C 0C00E339 */  jal        func_80038CE4_ovl3
/* ED850 80044340 E428A088 */   swc1      $f8, %lo(D_8014A088)($at)
/* ED854 80044344 3C048032 */  lui        $a0, (0x80326230 >> 16)
/* ED858 80044348 34846230 */  ori        $a0, $a0, (0x80326230 & 0xFFFF)
/* ED85C 8004434C 2405019A */  addiu      $a1, $zero, 0x19A
/* ED860 80044350 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* ED864 80044354 44810000 */  mtc1       $at, $f0
/* ED868 80044358 24060007 */  addiu      $a2, $zero, 0x7
/* ED86C 8004435C 3C018015 */  lui        $at, %hi(D_8014A054)
/* ED870 80044360 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* ED874 80044364 3C018015 */  lui        $at, %hi(D_8014A050)
/* ED878 80044368 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* ED87C 8004436C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* ED880 80044370 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* ED884 80044374 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* ED888 80044378 E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* ED88C 8004437C 3C018017 */  lui        $at, %hi(D_8016E568)
/* ED890 80044380 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* ED894 80044384 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* ED898 80044388 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* ED89C 8004438C 0C00D9E0 */  jal        func_80036780_ovl3
/* ED8A0 80044390 24070022 */   addiu     $a3, $zero, 0x22
/* ED8A4 80044394 00408021 */  addu       $s0, $v0, $zero
/* ED8A8 80044398 8E04000C */  lw         $a0, 0xC($s0)
/* ED8AC 8004439C 3C064001 */  lui        $a2, (0x400147AE >> 16)
/* ED8B0 800443A0 34C647AE */  ori        $a2, $a2, (0x400147AE & 0xFFFF)
/* ED8B4 800443A4 3C074000 */  lui        $a3, (0x40000000 >> 16)
/* ED8B8 800443A8 0C02915B */  jal        func_800A456C
/* ED8BC 800443AC 00002821 */   addu      $a1, $zero, $zero
/* ED8C0 800443B0 8E04000C */  lw         $a0, 0xC($s0)
/* ED8C4 800443B4 24050040 */  addiu      $a1, $zero, 0x40
/* ED8C8 800443B8 0C028D89 */  jal        func_800A3624
/* ED8CC 800443BC 24060040 */   addiu     $a2, $zero, 0x40
/* ED8D0 800443C0 8E03000C */  lw         $v1, 0xC($s0)
/* ED8D4 800443C4 240401A1 */  addiu      $a0, $zero, 0x1A1
/* ED8D8 800443C8 9462001E */  lhu        $v0, 0x1E($v1)
/* ED8DC 800443CC 24050002 */  addiu      $a1, $zero, 0x2
/* ED8E0 800443D0 24060023 */  addiu      $a2, $zero, 0x23
/* ED8E4 800443D4 34420104 */  ori        $v0, $v0, 0x104
/* ED8E8 800443D8 0C00D925 */  jal        func_80036494_ovl3
/* ED8EC 800443DC A462001E */   sh        $v0, 0x1E($v1)
/* ED8F0 800443E0 00408021 */  addu       $s0, $v0, $zero
/* ED8F4 800443E4 8E04000C */  lw         $a0, 0xC($s0)
/* ED8F8 800443E8 8C82000C */  lw         $v0, 0xC($a0)
/* ED8FC 800443EC 84460002 */  lh         $a2, 0x2($v0)
/* ED900 800443F0 3C128007 */  lui        $s2, %hi(D_8006C040_ovl3)
/* ED904 800443F4 2652C040 */  addiu      $s2, $s2, %lo(D_8006C040_ovl3)
/* ED908 800443F8 0C02912A */  jal        func_800A44A8
/* ED90C 800443FC 00002821 */   addu      $a1, $zero, $zero
/* ED910 80044400 8E04000C */  lw         $a0, 0xC($s0)
/* ED914 80044404 24050040 */  addiu      $a1, $zero, 0x40
/* ED918 80044408 0C028D89 */  jal        func_800A3624
/* ED91C 8004440C 24060380 */   addiu     $a2, $zero, 0x380
/* ED920 80044410 322600FF */  andi       $a2, $s1, 0xFF
.L80044414_ovl3:
/* ED924 80044414 24C40171 */  addiu      $a0, $a2, 0x171
/* ED928 80044418 24050002 */  addiu      $a1, $zero, 0x2
/* ED92C 8004441C 0C00D925 */  jal        func_80036494_ovl3
/* ED930 80044420 24C6005B */   addiu     $a2, $a2, 0x5B
/* ED934 80044424 00408021 */  addu       $s0, $v0, $zero
/* ED938 80044428 8E04000C */  lw         $a0, 0xC($s0)
/* ED93C 8004442C 8C82000C */  lw         $v0, 0xC($a0)
/* ED940 80044430 94450000 */  lhu        $a1, 0x0($v0)
/* ED944 80044434 94460002 */  lhu        $a2, 0x2($v0)
/* ED948 80044438 00052842 */  srl        $a1, $a1, 1
/* ED94C 8004443C 0C02912A */  jal        func_800A44A8
/* ED950 80044440 00063042 */   srl       $a2, $a2, 1
/* ED954 80044444 8E04000C */  lw         $a0, 0xC($s0)
/* ED958 80044448 24050080 */  addiu      $a1, $zero, 0x80
/* ED95C 8004444C 0C028D89 */  jal        func_800A3624
/* ED960 80044450 24060158 */   addiu     $a2, $zero, 0x158
/* ED964 80044454 8E03000C */  lw         $v1, 0xC($s0)
/* ED968 80044458 240500FF */  addiu      $a1, $zero, 0xFF
/* ED96C 8004445C 24020038 */  addiu      $v0, $zero, 0x38
/* ED970 80044460 A462001C */  sh         $v0, 0x1C($v1)
/* ED974 80044464 24020098 */  addiu      $v0, $zero, 0x98
/* ED978 80044468 AFA20010 */  sw         $v0, 0x10($sp)
/* ED97C 8004446C 8E04000C */  lw         $a0, 0xC($s0)
/* ED980 80044470 240600FF */  addiu      $a2, $zero, 0xFF
/* ED984 80044474 0C028E41 */  jal        func_800A3904
/* ED988 80044478 240700FF */   addiu     $a3, $zero, 0xFF
/* ED98C 8004447C 8E03000C */  lw         $v1, 0xC($s0)
/* ED990 80044480 9462001E */  lhu        $v0, 0x1E($v1)
/* ED994 80044484 34420004 */  ori        $v0, $v0, 0x4
/* ED998 80044488 A462001E */  sh         $v0, 0x1E($v1)
/* ED99C 8004448C 8E02000C */  lw         $v0, 0xC($s0)
/* ED9A0 80044490 8C440014 */  lw         $a0, 0x14($v0)
/* ED9A4 80044494 3C058007 */  lui        $a1, %hi(D_8006C040_ovl3)
/* ED9A8 80044498 24A5C040 */  addiu      $a1, $a1, %lo(D_8006C040_ovl3)
/* ED9AC 8004449C 0C03006C */  jal        func_800C01B0
/* ED9B0 800444A0 24060020 */   addiu     $a2, $zero, 0x20
/* ED9B4 800444A4 24040001 */  addiu      $a0, $zero, 0x1
/* ED9B8 800444A8 308300FF */  andi       $v1, $a0, 0xFF
.L800444AC_ovl3:
/* ED9BC 800444AC 10730005 */  beq        $v1, $s3, .L800444C4_ovl3
/* ED9C0 800444B0 00031840 */   sll       $v1, $v1, 1
/* ED9C4 800444B4 00721821 */  addu       $v1, $v1, $s2
/* ED9C8 800444B8 94620000 */  lhu        $v0, 0x0($v1)
/* ED9CC 800444BC 2442FFFF */  addiu      $v0, $v0, -0x1
/* ED9D0 800444C0 A4620000 */  sh         $v0, 0x0($v1)
.L800444C4_ovl3:
/* ED9D4 800444C4 24840001 */  addiu      $a0, $a0, 0x1
/* ED9D8 800444C8 308200FF */  andi       $v0, $a0, 0xFF
/* ED9DC 800444CC 2C42000A */  sltiu      $v0, $v0, 0xA
/* ED9E0 800444D0 1440FFF6 */  bnez       $v0, .L800444AC_ovl3
/* ED9E4 800444D4 308300FF */   andi      $v1, $a0, 0xFF
/* ED9E8 800444D8 8E02000C */  lw         $v0, 0xC($s0)
/* ED9EC 800444DC 322500FF */  andi       $a1, $s1, 0xFF
/* ED9F0 800444E0 8C420004 */  lw         $v0, 0x4($v0)
/* ED9F4 800444E4 24A4005B */  addiu      $a0, $a1, 0x5B
/* ED9F8 800444E8 24A50060 */  addiu      $a1, $a1, 0x60
/* ED9FC 800444EC 0C00DD19 */  jal        func_80037464_ovl3
/* EDA00 800444F0 AC520004 */   sw        $s2, 0x4($v0)
/* EDA04 800444F4 00408021 */  addu       $s0, $v0, $zero
/* EDA08 800444F8 8E04000C */  lw         $a0, 0xC($s0)
/* EDA0C 800444FC 8C82000C */  lw         $v0, 0xC($a0)
/* EDA10 80044500 94450000 */  lhu        $a1, 0x0($v0)
/* EDA14 80044504 94460002 */  lhu        $a2, 0x2($v0)
/* EDA18 80044508 00052842 */  srl        $a1, $a1, 1
/* EDA1C 8004450C 0C02912A */  jal        func_800A44A8
/* EDA20 80044510 00063042 */   srl       $a2, $a2, 1
/* EDA24 80044514 8E04000C */  lw         $a0, 0xC($s0)
/* EDA28 80044518 24050080 */  addiu      $a1, $zero, 0x80
/* EDA2C 8004451C 0C028D89 */  jal        func_800A3624
/* EDA30 80044520 24060158 */   addiu     $a2, $zero, 0x158
/* EDA34 80044524 8E03000C */  lw         $v1, 0xC($s0)
/* EDA38 80044528 240500FF */  addiu      $a1, $zero, 0xFF
/* EDA3C 8004452C 24020037 */  addiu      $v0, $zero, 0x37
/* EDA40 80044530 A462001C */  sh         $v0, 0x1C($v1)
/* EDA44 80044534 24020080 */  addiu      $v0, $zero, 0x80
/* EDA48 80044538 AFA20010 */  sw         $v0, 0x10($sp)
/* EDA4C 8004453C 8E04000C */  lw         $a0, 0xC($s0)
/* EDA50 80044540 240600FF */  addiu      $a2, $zero, 0xFF
/* EDA54 80044544 0C028E41 */  jal        func_800A3904
/* EDA58 80044548 240700FF */   addiu     $a3, $zero, 0xFF
/* EDA5C 8004454C 8E03000C */  lw         $v1, 0xC($s0)
/* EDA60 80044550 9462001E */  lhu        $v0, 0x1E($v1)
/* EDA64 80044554 26310001 */  addiu      $s1, $s1, 0x1
/* EDA68 80044558 34420004 */  ori        $v0, $v0, 0x4
/* EDA6C 8004455C A462001E */  sh         $v0, 0x1E($v1)
/* EDA70 80044560 322200FF */  andi       $v0, $s1, 0xFF
/* EDA74 80044564 2C420005 */  sltiu      $v0, $v0, 0x5
/* EDA78 80044568 1440FFAA */  bnez       $v0, .L80044414_ovl3
/* EDA7C 8004456C 322600FF */   andi      $a2, $s1, 0xFF
/* EDA80 80044570 8FBF0030 */  lw         $ra, 0x30($sp)
/* EDA84 80044574 8FB3002C */  lw         $s3, 0x2C($sp)
/* EDA88 80044578 8FB20028 */  lw         $s2, 0x28($sp)
/* EDA8C 8004457C 8FB10024 */  lw         $s1, 0x24($sp)
/* EDA90 80044580 8FB00020 */  lw         $s0, 0x20($sp)
/* EDA94 80044584 D7BE0060 */  ldc1       $f30, 0x60($sp)
/* EDA98 80044588 D7BC0058 */  ldc1       $f28, 0x58($sp)
/* EDA9C 8004458C D7BA0050 */  ldc1       $f26, 0x50($sp)
/* EDAA0 80044590 D7B80048 */  ldc1       $f24, 0x48($sp)
/* EDAA4 80044594 D7B60040 */  ldc1       $f22, 0x40($sp)
/* EDAA8 80044598 D7B40038 */  ldc1       $f20, 0x38($sp)
/* EDAAC 8004459C 03E00008 */  jr         $ra
/* EDAB0 800445A0 27BD0068 */   addiu     $sp, $sp, 0x68
.size func_80043FD0_ovl3, . - func_80043FD0_ovl3
