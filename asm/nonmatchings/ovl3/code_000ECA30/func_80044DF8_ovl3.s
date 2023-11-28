glabel func_80044DF8_ovl3
/* EE308 80044DF8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* EE30C 80044DFC AFBF0064 */  sw         $ra, 0x64($sp)
/* EE310 80044E00 AFB20060 */  sw         $s2, 0x60($sp)
/* EE314 80044E04 AFB1005C */  sw         $s1, 0x5C($sp)
/* EE318 80044E08 AFB00058 */  sw         $s0, 0x58($sp)
/* EE31C 80044E0C F7B40068 */  sdc1       $f20, 0x68($sp)
/* EE320 80044E10 0C00E109 */  jal        func_80038424_ovl3
/* EE324 80044E14 241000FF */   addiu     $s0, $zero, 0xFF
/* EE328 80044E18 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE32C 80044E1C 24040001 */   addiu     $a0, $zero, 0x1
/* EE330 80044E20 00409021 */  addu       $s2, $v0, $zero
/* EE334 80044E24 3C013DCC */  lui        $at, (0x3DCCCCCD >> 16)
/* EE338 80044E28 3421CCCD */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
/* EE33C 80044E2C 4481A000 */  mtc1       $at, $f20
/* EE340 80044E30 02402021 */  addu       $a0, $s2, $zero
/* EE344 80044E34 240500FC */  addiu      $a1, $zero, 0xFC
/* EE348 80044E38 AE400010 */  sw         $zero, 0x10($s2)
/* EE34C 80044E3C AE400014 */  sw         $zero, 0x14($s2)
/* EE350 80044E40 AE400018 */  sw         $zero, 0x18($s2)
/* EE354 80044E44 AE40001C */  sw         $zero, 0x1C($s2)
/* EE358 80044E48 AE400020 */  sw         $zero, 0x20($s2)
/* EE35C 80044E4C AE400024 */  sw         $zero, 0x24($s2)
/* EE360 80044E50 A6500074 */  sh         $s0, 0x74($s2)
/* EE364 80044E54 A6500076 */  sh         $s0, 0x76($s2)
/* EE368 80044E58 A6500078 */  sh         $s0, 0x78($s2)
/* EE36C 80044E5C A650007A */  sh         $s0, 0x7A($s2)
/* EE370 80044E60 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE374 80044E64 E6540028 */   swc1      $f20, 0x28($s2)
/* EE378 80044E68 8E420004 */  lw         $v0, 0x4($s2)
/* EE37C 80044E6C A0400067 */  sb         $zero, 0x67($v0)
/* EE380 80044E70 8E430004 */  lw         $v1, 0x4($s2)
/* EE384 80044E74 90620066 */  lbu        $v0, 0x66($v1)
/* EE388 80044E78 24040002 */  addiu      $a0, $zero, 0x2
/* EE38C 80044E7C 34420007 */  ori        $v0, $v0, 0x7
/* EE390 80044E80 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE394 80044E84 A0620066 */   sb        $v0, 0x66($v1)
/* EE398 80044E88 00409021 */  addu       $s2, $v0, $zero
/* EE39C 80044E8C 02402021 */  addu       $a0, $s2, $zero
/* EE3A0 80044E90 240500FE */  addiu      $a1, $zero, 0xFE
/* EE3A4 80044E94 240200C0 */  addiu      $v0, $zero, 0xC0
/* EE3A8 80044E98 AE400010 */  sw         $zero, 0x10($s2)
/* EE3AC 80044E9C AE400014 */  sw         $zero, 0x14($s2)
/* EE3B0 80044EA0 AE400018 */  sw         $zero, 0x18($s2)
/* EE3B4 80044EA4 E6540028 */  swc1       $f20, 0x28($s2)
/* EE3B8 80044EA8 AE40001C */  sw         $zero, 0x1C($s2)
/* EE3BC 80044EAC AE400020 */  sw         $zero, 0x20($s2)
/* EE3C0 80044EB0 AE400024 */  sw         $zero, 0x24($s2)
/* EE3C4 80044EB4 A6500074 */  sh         $s0, 0x74($s2)
/* EE3C8 80044EB8 A6500076 */  sh         $s0, 0x76($s2)
/* EE3CC 80044EBC A6500078 */  sh         $s0, 0x78($s2)
/* EE3D0 80044EC0 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE3D4 80044EC4 A642007A */   sh        $v0, 0x7A($s2)
/* EE3D8 80044EC8 8E420004 */  lw         $v0, 0x4($s2)
/* EE3DC 80044ECC 2411000A */  addiu      $s1, $zero, 0xA
/* EE3E0 80044ED0 A0510067 */  sb         $s1, 0x67($v0)
/* EE3E4 80044ED4 8E430004 */  lw         $v1, 0x4($s2)
/* EE3E8 80044ED8 90620066 */  lbu        $v0, 0x66($v1)
/* EE3EC 80044EDC 24040003 */  addiu      $a0, $zero, 0x3
/* EE3F0 80044EE0 34420023 */  ori        $v0, $v0, 0x23
/* EE3F4 80044EE4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE3F8 80044EE8 A0620066 */   sb        $v0, 0x66($v1)
/* EE3FC 80044EEC 00409021 */  addu       $s2, $v0, $zero
/* EE400 80044EF0 02402021 */  addu       $a0, $s2, $zero
/* EE404 80044EF4 240500F6 */  addiu      $a1, $zero, 0xF6
/* EE408 80044EF8 AE400010 */  sw         $zero, 0x10($s2)
/* EE40C 80044EFC AE400014 */  sw         $zero, 0x14($s2)
/* EE410 80044F00 AE400018 */  sw         $zero, 0x18($s2)
/* EE414 80044F04 E6540028 */  swc1       $f20, 0x28($s2)
/* EE418 80044F08 AE40001C */  sw         $zero, 0x1C($s2)
/* EE41C 80044F0C AE400020 */  sw         $zero, 0x20($s2)
/* EE420 80044F10 AE400024 */  sw         $zero, 0x24($s2)
/* EE424 80044F14 A6500074 */  sh         $s0, 0x74($s2)
/* EE428 80044F18 A6500076 */  sh         $s0, 0x76($s2)
/* EE42C 80044F1C A6500078 */  sh         $s0, 0x78($s2)
/* EE430 80044F20 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE434 80044F24 A650007A */   sh        $s0, 0x7A($s2)
/* EE438 80044F28 8E420004 */  lw         $v0, 0x4($s2)
/* EE43C 80044F2C A0400067 */  sb         $zero, 0x67($v0)
/* EE440 80044F30 8E430004 */  lw         $v1, 0x4($s2)
/* EE444 80044F34 90620066 */  lbu        $v0, 0x66($v1)
/* EE448 80044F38 24040004 */  addiu      $a0, $zero, 0x4
/* EE44C 80044F3C 34420003 */  ori        $v0, $v0, 0x3
/* EE450 80044F40 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE454 80044F44 A0620066 */   sb        $v0, 0x66($v1)
/* EE458 80044F48 00409021 */  addu       $s2, $v0, $zero
/* EE45C 80044F4C 02402021 */  addu       $a0, $s2, $zero
/* EE460 80044F50 240500F7 */  addiu      $a1, $zero, 0xF7
/* EE464 80044F54 AE400010 */  sw         $zero, 0x10($s2)
/* EE468 80044F58 AE400014 */  sw         $zero, 0x14($s2)
/* EE46C 80044F5C AE400018 */  sw         $zero, 0x18($s2)
/* EE470 80044F60 E6540028 */  swc1       $f20, 0x28($s2)
/* EE474 80044F64 AE40001C */  sw         $zero, 0x1C($s2)
/* EE478 80044F68 AE400020 */  sw         $zero, 0x20($s2)
/* EE47C 80044F6C AE400024 */  sw         $zero, 0x24($s2)
/* EE480 80044F70 A6500074 */  sh         $s0, 0x74($s2)
/* EE484 80044F74 A6500076 */  sh         $s0, 0x76($s2)
/* EE488 80044F78 A6500078 */  sh         $s0, 0x78($s2)
/* EE48C 80044F7C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE490 80044F80 A650007A */   sh        $s0, 0x7A($s2)
/* EE494 80044F84 8E420004 */  lw         $v0, 0x4($s2)
/* EE498 80044F88 A0400067 */  sb         $zero, 0x67($v0)
/* EE49C 80044F8C 8E430004 */  lw         $v1, 0x4($s2)
/* EE4A0 80044F90 90620066 */  lbu        $v0, 0x66($v1)
/* EE4A4 80044F94 24040005 */  addiu      $a0, $zero, 0x5
/* EE4A8 80044F98 34420003 */  ori        $v0, $v0, 0x3
/* EE4AC 80044F9C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE4B0 80044FA0 A0620066 */   sb        $v0, 0x66($v1)
/* EE4B4 80044FA4 00409021 */  addu       $s2, $v0, $zero
/* EE4B8 80044FA8 02402021 */  addu       $a0, $s2, $zero
/* EE4BC 80044FAC 2405010C */  addiu      $a1, $zero, 0x10C
/* EE4C0 80044FB0 24020090 */  addiu      $v0, $zero, 0x90
/* EE4C4 80044FB4 AE400010 */  sw         $zero, 0x10($s2)
/* EE4C8 80044FB8 AE400014 */  sw         $zero, 0x14($s2)
/* EE4CC 80044FBC AE400018 */  sw         $zero, 0x18($s2)
/* EE4D0 80044FC0 E6540028 */  swc1       $f20, 0x28($s2)
/* EE4D4 80044FC4 AE40001C */  sw         $zero, 0x1C($s2)
/* EE4D8 80044FC8 AE400020 */  sw         $zero, 0x20($s2)
/* EE4DC 80044FCC AE400024 */  sw         $zero, 0x24($s2)
/* EE4E0 80044FD0 A6500074 */  sh         $s0, 0x74($s2)
/* EE4E4 80044FD4 A6500076 */  sh         $s0, 0x76($s2)
/* EE4E8 80044FD8 A6500078 */  sh         $s0, 0x78($s2)
/* EE4EC 80044FDC 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE4F0 80044FE0 A642007A */   sh        $v0, 0x7A($s2)
/* EE4F4 80044FE4 8E420004 */  lw         $v0, 0x4($s2)
/* EE4F8 80044FE8 A0510067 */  sb         $s1, 0x67($v0)
/* EE4FC 80044FEC 8E430004 */  lw         $v1, 0x4($s2)
/* EE500 80044FF0 90620066 */  lbu        $v0, 0x66($v1)
/* EE504 80044FF4 24040006 */  addiu      $a0, $zero, 0x6
/* EE508 80044FF8 34420023 */  ori        $v0, $v0, 0x23
/* EE50C 80044FFC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE510 80045000 A0620066 */   sb        $v0, 0x66($v1)
/* EE514 80045004 00409021 */  addu       $s2, $v0, $zero
/* EE518 80045008 02402021 */  addu       $a0, $s2, $zero
/* EE51C 8004500C 2405010E */  addiu      $a1, $zero, 0x10E
/* EE520 80045010 24020070 */  addiu      $v0, $zero, 0x70
/* EE524 80045014 AE400010 */  sw         $zero, 0x10($s2)
/* EE528 80045018 AE400014 */  sw         $zero, 0x14($s2)
/* EE52C 8004501C AE400018 */  sw         $zero, 0x18($s2)
/* EE530 80045020 E6540028 */  swc1       $f20, 0x28($s2)
/* EE534 80045024 AE40001C */  sw         $zero, 0x1C($s2)
/* EE538 80045028 AE400020 */  sw         $zero, 0x20($s2)
/* EE53C 8004502C AE400024 */  sw         $zero, 0x24($s2)
/* EE540 80045030 A6500074 */  sh         $s0, 0x74($s2)
/* EE544 80045034 A6500076 */  sh         $s0, 0x76($s2)
/* EE548 80045038 A6500078 */  sh         $s0, 0x78($s2)
/* EE54C 8004503C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE550 80045040 A642007A */   sh        $v0, 0x7A($s2)
/* EE554 80045044 8E420004 */  lw         $v0, 0x4($s2)
/* EE558 80045048 A0510067 */  sb         $s1, 0x67($v0)
/* EE55C 8004504C 8E430004 */  lw         $v1, 0x4($s2)
/* EE560 80045050 90620066 */  lbu        $v0, 0x66($v1)
/* EE564 80045054 24040007 */  addiu      $a0, $zero, 0x7
/* EE568 80045058 34420023 */  ori        $v0, $v0, 0x23
/* EE56C 8004505C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE570 80045060 A0620066 */   sb        $v0, 0x66($v1)
/* EE574 80045064 00409021 */  addu       $s2, $v0, $zero
/* EE578 80045068 02402021 */  addu       $a0, $s2, $zero
/* EE57C 8004506C 2405010F */  addiu      $a1, $zero, 0x10F
/* EE580 80045070 24020080 */  addiu      $v0, $zero, 0x80
/* EE584 80045074 AE400010 */  sw         $zero, 0x10($s2)
/* EE588 80045078 AE400014 */  sw         $zero, 0x14($s2)
/* EE58C 8004507C AE400018 */  sw         $zero, 0x18($s2)
/* EE590 80045080 E6540028 */  swc1       $f20, 0x28($s2)
/* EE594 80045084 AE40001C */  sw         $zero, 0x1C($s2)
/* EE598 80045088 AE400020 */  sw         $zero, 0x20($s2)
/* EE59C 8004508C AE400024 */  sw         $zero, 0x24($s2)
/* EE5A0 80045090 A6500074 */  sh         $s0, 0x74($s2)
/* EE5A4 80045094 A6500076 */  sh         $s0, 0x76($s2)
/* EE5A8 80045098 A6500078 */  sh         $s0, 0x78($s2)
/* EE5AC 8004509C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE5B0 800450A0 A642007A */   sh        $v0, 0x7A($s2)
/* EE5B4 800450A4 8E420004 */  lw         $v0, 0x4($s2)
/* EE5B8 800450A8 A0510067 */  sb         $s1, 0x67($v0)
/* EE5BC 800450AC 8E430004 */  lw         $v1, 0x4($s2)
/* EE5C0 800450B0 90620066 */  lbu        $v0, 0x66($v1)
/* EE5C4 800450B4 24040008 */  addiu      $a0, $zero, 0x8
/* EE5C8 800450B8 34420023 */  ori        $v0, $v0, 0x23
/* EE5CC 800450BC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EE5D0 800450C0 A0620066 */   sb        $v0, 0x66($v1)
/* EE5D4 800450C4 00409021 */  addu       $s2, $v0, $zero
/* EE5D8 800450C8 02402021 */  addu       $a0, $s2, $zero
/* EE5DC 800450CC 24050110 */  addiu      $a1, $zero, 0x110
/* EE5E0 800450D0 240200B0 */  addiu      $v0, $zero, 0xB0
/* EE5E4 800450D4 AE400010 */  sw         $zero, 0x10($s2)
/* EE5E8 800450D8 AE400014 */  sw         $zero, 0x14($s2)
/* EE5EC 800450DC AE400018 */  sw         $zero, 0x18($s2)
/* EE5F0 800450E0 E6540028 */  swc1       $f20, 0x28($s2)
/* EE5F4 800450E4 AE40001C */  sw         $zero, 0x1C($s2)
/* EE5F8 800450E8 AE400020 */  sw         $zero, 0x20($s2)
/* EE5FC 800450EC AE400024 */  sw         $zero, 0x24($s2)
/* EE600 800450F0 A6500074 */  sh         $s0, 0x74($s2)
/* EE604 800450F4 A6500076 */  sh         $s0, 0x76($s2)
/* EE608 800450F8 A6500078 */  sh         $s0, 0x78($s2)
/* EE60C 800450FC 0C00DFE6 */  jal        func_80037F98_ovl3
/* EE610 80045100 A642007A */   sh        $v0, 0x7A($s2)
/* EE614 80045104 8E420004 */  lw         $v0, 0x4($s2)
/* EE618 80045108 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EE61C 8004510C 4481A000 */  mtc1       $at, $f20
/* EE620 80045110 A0510067 */  sb         $s1, 0x67($v0)
/* EE624 80045114 8E430004 */  lw         $v1, 0x4($s2)
/* EE628 80045118 3C014150 */  lui        $at, (0x41500000 >> 16)
/* EE62C 8004511C 44810000 */  mtc1       $at, $f0
/* EE630 80045120 3C014398 */  lui        $at, (0x43988000 >> 16)
/* EE634 80045124 34218000 */  ori        $at, $at, (0x43988000 & 0xFFFF)
/* EE638 80045128 44811000 */  mtc1       $at, $f2
/* EE63C 8004512C 90620066 */  lbu        $v0, 0x66($v1)
/* EE640 80045130 3C01C32A */  lui        $at, (0xC32A0000 >> 16)
/* EE644 80045134 44812000 */  mtc1       $at, $f4
/* EE648 80045138 34420023 */  ori        $v0, $v0, 0x23
/* EE64C 8004513C A0620066 */  sb         $v0, 0x66($v1)
/* EE650 80045140 3C018015 */  lui        $at, %hi(D_8014A064)
/* EE654 80045144 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EE658 80045148 3C018015 */  lui        $at, %hi(D_8014A068)
/* EE65C 8004514C AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EE660 80045150 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EE664 80045154 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EE668 80045158 3C018015 */  lui        $at, %hi(D_8014A070)
/* EE66C 8004515C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EE670 80045160 3C018015 */  lui        $at, %hi(D_8014A074)
/* EE674 80045164 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* EE678 80045168 3C018015 */  lui        $at, %hi(D_8014A078)
/* EE67C 8004516C AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EE680 80045170 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EE684 80045174 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* EE688 80045178 3C018015 */  lui        $at, %hi(D_8014A080)
/* EE68C 8004517C E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* EE690 80045180 3C018015 */  lui        $at, %hi(D_8014A084)
/* EE694 80045184 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EE698 80045188 3C018015 */  lui        $at, %hi(D_8014A088)
/* EE69C 8004518C E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* EE6A0 80045190 0C00E339 */  jal        func_80038CE4_ovl3
/* EE6A4 80045194 2410FFFD */   addiu     $s0, $zero, -0x3
/* EE6A8 80045198 27A40010 */  addiu      $a0, $sp, 0x10
/* EE6AC 8004519C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* EE6B0 800451A0 44810000 */  mtc1       $at, $f0
/* EE6B4 800451A4 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EE6B8 800451A8 3C028007 */  lui        $v0, %hi(D_800690AC_ovl3)
/* EE6BC 800451AC 244290AC */  addiu      $v0, $v0, %lo(D_800690AC_ovl3)
/* EE6C0 800451B0 24110001 */  addiu      $s1, $zero, 0x1
/* EE6C4 800451B4 AFA20010 */  sw         $v0, 0x10($sp)
/* EE6C8 800451B8 24020003 */  addiu      $v0, $zero, 0x3
/* EE6CC 800451BC 3C018015 */  lui        $at, %hi(D_8014A054)
/* EE6D0 800451C0 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EE6D4 800451C4 3C018015 */  lui        $at, %hi(D_8014A050)
/* EE6D8 800451C8 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EE6DC 800451CC 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EE6E0 800451D0 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EE6E4 800451D4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EE6E8 800451D8 E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* EE6EC 800451DC A3B00014 */  sb         $s0, 0x14($sp)
/* EE6F0 800451E0 A3A00015 */  sb         $zero, 0x15($sp)
/* EE6F4 800451E4 A3B10016 */  sb         $s1, 0x16($sp)
/* EE6F8 800451E8 A3A20017 */  sb         $v0, 0x17($sp)
/* EE6FC 800451EC 3C018017 */  lui        $at, %hi(D_8016E568)
/* EE700 800451F0 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* EE704 800451F4 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EE708 800451F8 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* EE70C 800451FC 0C00DE82 */  jal        func_80037A08_ovl3
/* EE710 80045200 24060003 */   addiu     $a2, $zero, 0x3
/* EE714 80045204 27A40010 */  addiu      $a0, $sp, 0x10
/* EE718 80045208 240520CA */  addiu      $a1, $zero, 0x20CA
/* EE71C 8004520C 24060003 */  addiu      $a2, $zero, 0x3
/* EE720 80045210 3C028007 */  lui        $v0, %hi(D_800690C0_ovl3)
/* EE724 80045214 244290C0 */  addiu      $v0, $v0, %lo(D_800690C0_ovl3)
/* EE728 80045218 AFA20010 */  sw         $v0, 0x10($sp)
/* EE72C 8004521C 2402FFFF */  addiu      $v0, $zero, -0x1
/* EE730 80045220 A3A20015 */  sb         $v0, 0x15($sp)
/* EE734 80045224 24020002 */  addiu      $v0, $zero, 0x2
/* EE738 80045228 A3B00014 */  sb         $s0, 0x14($sp)
/* EE73C 8004522C A3B10016 */  sb         $s1, 0x16($sp)
/* EE740 80045230 0C00DE82 */  jal        func_80037A08_ovl3
/* EE744 80045234 A3A20017 */   sb        $v0, 0x17($sp)
/* EE748 80045238 8FBF0064 */  lw         $ra, 0x64($sp)
/* EE74C 8004523C 8FB20060 */  lw         $s2, 0x60($sp)
/* EE750 80045240 8FB1005C */  lw         $s1, 0x5C($sp)
/* EE754 80045244 8FB00058 */  lw         $s0, 0x58($sp)
/* EE758 80045248 D7B40068 */  ldc1       $f20, 0x68($sp)
/* EE75C 8004524C 03E00008 */  jr         $ra
/* EE760 80045250 27BD0070 */   addiu     $sp, $sp, 0x70
.size func_80044DF8_ovl3, . - func_80044DF8_ovl3
