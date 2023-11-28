glabel func_80046E68_ovl3
/* F0378 80046E68 27BDFF98 */  addiu      $sp, $sp, -0x68
/* F037C 80046E6C AFBF0058 */  sw         $ra, 0x58($sp)
/* F0380 80046E70 AFB10054 */  sw         $s1, 0x54($sp)
/* F0384 80046E74 AFB00050 */  sw         $s0, 0x50($sp)
/* F0388 80046E78 F7B40060 */  sdc1       $f20, 0x60($sp)
/* F038C 80046E7C 0C00E109 */  jal        func_80038424_ovl3
/* F0390 80046E80 241000FF */   addiu     $s0, $zero, 0xFF
/* F0394 80046E84 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F0398 80046E88 24040022 */   addiu     $a0, $zero, 0x22
/* F039C 80046E8C 00408821 */  addu       $s1, $v0, $zero
/* F03A0 80046E90 3C01C1F3 */  lui        $at, (0xC1F3C28F >> 16)
/* F03A4 80046E94 3421C28F */  ori        $at, $at, (0xC1F3C28F & 0xFFFF)
/* F03A8 80046E98 4481A000 */  mtc1       $at, $f20
/* F03AC 80046E9C 3C01408C */  lui        $at, (0x408C7AE1 >> 16)
/* F03B0 80046EA0 34217AE1 */  ori        $at, $at, (0x408C7AE1 & 0xFFFF)
/* F03B4 80046EA4 44810000 */  mtc1       $at, $f0
/* F03B8 80046EA8 3C013C5E */  lui        $at, (0x3C5E54B5 >> 16)
/* F03BC 80046EAC 342154B5 */  ori        $at, $at, (0x3C5E54B5 & 0xFFFF)
/* F03C0 80046EB0 44811000 */  mtc1       $at, $f2
/* F03C4 80046EB4 3C014188 */  lui        $at, (0x41880000 >> 16)
/* F03C8 80046EB8 44812000 */  mtc1       $at, $f4
/* F03CC 80046EBC 02202021 */  addu       $a0, $s1, $zero
/* F03D0 80046EC0 2405008C */  addiu      $a1, $zero, 0x8C
/* F03D4 80046EC4 2402FFFF */  addiu      $v0, $zero, -0x1
/* F03D8 80046EC8 AE200010 */  sw         $zero, 0x10($s1)
/* F03DC 80046ECC AE200020 */  sw         $zero, 0x20($s1)
/* F03E0 80046ED0 AE200024 */  sw         $zero, 0x24($s1)
/* F03E4 80046ED4 A6300074 */  sh         $s0, 0x74($s1)
/* F03E8 80046ED8 A6300076 */  sh         $s0, 0x76($s1)
/* F03EC 80046EDC A6300078 */  sh         $s0, 0x78($s1)
/* F03F0 80046EE0 A630007A */  sh         $s0, 0x7A($s1)
/* F03F4 80046EE4 A6220070 */  sh         $v0, 0x70($s1)
/* F03F8 80046EE8 E6340014 */  swc1       $f20, 0x14($s1)
/* F03FC 80046EEC E6200018 */  swc1       $f0, 0x18($s1)
/* F0400 80046EF0 E6220028 */  swc1       $f2, 0x28($s1)
/* F0404 80046EF4 0C00DFE6 */  jal        func_80037F98_ovl3
/* F0408 80046EF8 E624001C */   swc1      $f4, 0x1C($s1)
/* F040C 80046EFC 8E220004 */  lw         $v0, 0x4($s1)
/* F0410 80046F00 A0400067 */  sb         $zero, 0x67($v0)
/* F0414 80046F04 8E230004 */  lw         $v1, 0x4($s1)
/* F0418 80046F08 90620066 */  lbu        $v0, 0x66($v1)
/* F041C 80046F0C 34420007 */  ori        $v0, $v0, 0x7
/* F0420 80046F10 A0620066 */  sb         $v0, 0x66($v1)
/* F0424 80046F14 8E240004 */  lw         $a0, 0x4($s1)
/* F0428 80046F18 3C058007 */  lui        $a1, %hi(D_8006A094_ovl3)
/* F042C 80046F1C 0C0284DC */  jal        func_800A1370
/* F0430 80046F20 24A5A094 */   addiu     $a1, $a1, %lo(D_8006A094_ovl3)
/* F0434 80046F24 8E240004 */  lw         $a0, 0x4($s1)
/* F0438 80046F28 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* F043C 80046F2C 0C02869D */  jal        func_800A1A74
/* F0440 80046F30 00003021 */   addu      $a2, $zero, $zero
/* F0444 80046F34 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F0448 80046F38 2404001F */   addiu     $a0, $zero, 0x1F
/* F044C 80046F3C 00408821 */  addu       $s1, $v0, $zero
/* F0450 80046F40 3C014110 */  lui        $at, (0x41100000 >> 16)
/* F0454 80046F44 44810000 */  mtc1       $at, $f0
/* F0458 80046F48 3C013D71 */  lui        $at, (0x3D71A9FC >> 16)
/* F045C 80046F4C 3421A9FC */  ori        $at, $at, (0x3D71A9FC & 0xFFFF)
/* F0460 80046F50 44811000 */  mtc1       $at, $f2
/* F0464 80046F54 02202021 */  addu       $a0, $s1, $zero
/* F0468 80046F58 24050047 */  addiu      $a1, $zero, 0x47
/* F046C 80046F5C AE200010 */  sw         $zero, 0x10($s1)
/* F0470 80046F60 E6340014 */  swc1       $f20, 0x14($s1)
/* F0474 80046F64 AE20001C */  sw         $zero, 0x1C($s1)
/* F0478 80046F68 AE200020 */  sw         $zero, 0x20($s1)
/* F047C 80046F6C AE200024 */  sw         $zero, 0x24($s1)
/* F0480 80046F70 A6300074 */  sh         $s0, 0x74($s1)
/* F0484 80046F74 A6300076 */  sh         $s0, 0x76($s1)
/* F0488 80046F78 A6300078 */  sh         $s0, 0x78($s1)
/* F048C 80046F7C A630007A */  sh         $s0, 0x7A($s1)
/* F0490 80046F80 E6200018 */  swc1       $f0, 0x18($s1)
/* F0494 80046F84 0C00DFE6 */  jal        func_80037F98_ovl3
/* F0498 80046F88 E6220028 */   swc1      $f2, 0x28($s1)
/* F049C 80046F8C 8E220004 */  lw         $v0, 0x4($s1)
/* F04A0 80046F90 3C018007 */  lui        $at, %hi(D_8006A09C_ovl3)
/* F04A4 80046F94 C420A09C */  lwc1       $f0, %lo(D_8006A09C_ovl3)($at)
/* F04A8 80046F98 3C01BE4C */  lui        $at, (0xBE4CCCCD >> 16)
/* F04AC 80046F9C 3421CCCD */  ori        $at, $at, (0xBE4CCCCD & 0xFFFF)
/* F04B0 80046FA0 44811000 */  mtc1       $at, $f2
/* F04B4 80046FA4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F04B8 80046FA8 44812000 */  mtc1       $at, $f4
/* F04BC 80046FAC A0400067 */  sb         $zero, 0x67($v0)
/* F04C0 80046FB0 8E230004 */  lw         $v1, 0x4($s1)
/* F04C4 80046FB4 3C01C21B */  lui        $at, (0xC21BB852 >> 16)
/* F04C8 80046FB8 3421B852 */  ori        $at, $at, (0xC21BB852 & 0xFFFF)
/* F04CC 80046FBC 44813000 */  mtc1       $at, $f6
/* F04D0 80046FC0 3C01422C */  lui        $at, (0x422C999A >> 16)
/* F04D4 80046FC4 3421999A */  ori        $at, $at, (0x422C999A & 0xFFFF)
/* F04D8 80046FC8 44814000 */  mtc1       $at, $f8
/* F04DC 80046FCC 90620066 */  lbu        $v0, 0x66($v1)
/* F04E0 80046FD0 3C01C2BF */  lui        $at, (0xC2BF570A >> 16)
/* F04E4 80046FD4 3421570A */  ori        $at, $at, (0xC2BF570A & 0xFFFF)
/* F04E8 80046FD8 44815000 */  mtc1       $at, $f10
/* F04EC 80046FDC 34420003 */  ori        $v0, $v0, 0x3
/* F04F0 80046FE0 A0620066 */  sb         $v0, 0x66($v1)
/* F04F4 80046FE4 3C018015 */  lui        $at, %hi(D_8014A064)
/* F04F8 80046FE8 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F04FC 80046FEC 3C018015 */  lui        $at, %hi(D_8014A068)
/* F0500 80046FF0 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F0504 80046FF4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F0508 80046FF8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F050C 80046FFC 3C018015 */  lui        $at, %hi(D_8014A070)
/* F0510 80047000 E422A070 */  swc1       $f2, %lo(D_8014A070)($at)
/* F0514 80047004 3C018015 */  lui        $at, %hi(D_8014A074)
/* F0518 80047008 E424A074 */  swc1       $f4, %lo(D_8014A074)($at)
/* F051C 8004700C 3C018015 */  lui        $at, %hi(D_8014A078)
/* F0520 80047010 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F0524 80047014 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F0528 80047018 E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* F052C 8004701C 3C018015 */  lui        $at, %hi(D_8014A080)
/* F0530 80047020 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* F0534 80047024 3C018015 */  lui        $at, %hi(D_8014A084)
/* F0538 80047028 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F053C 8004702C 3C018015 */  lui        $at, %hi(D_8014A088)
/* F0540 80047030 0C00E339 */  jal        func_80038CE4_ovl3
/* F0544 80047034 E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
/* F0548 80047038 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* F054C 8004703C 44810000 */  mtc1       $at, $f0
/* F0550 80047040 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* F0554 80047044 44811000 */  mtc1       $at, $f2
/* F0558 80047048 3C018015 */  lui        $at, %hi(D_8014A054)
/* F055C 8004704C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F0560 80047050 3C018015 */  lui        $at, %hi(D_8014A050)
/* F0564 80047054 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F0568 80047058 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F056C 8004705C AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F0570 80047060 3C018017 */  lui        $at, %hi(D_8016E568)
/* F0574 80047064 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F0578 80047068 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F057C 8004706C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* F0580 80047070 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F0584 80047074 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* F0588 80047078 8FBF0058 */  lw         $ra, 0x58($sp)
/* F058C 8004707C 8FB10054 */  lw         $s1, 0x54($sp)
/* F0590 80047080 8FB00050 */  lw         $s0, 0x50($sp)
/* F0594 80047084 D7B40060 */  ldc1       $f20, 0x60($sp)
/* F0598 80047088 03E00008 */  jr         $ra
/* F059C 8004708C 27BD0068 */   addiu     $sp, $sp, 0x68
.size func_80046E68_ovl3, . - func_80046E68_ovl3
