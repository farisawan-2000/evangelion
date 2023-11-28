glabel func_800445A4_ovl3
/* EDAB4 800445A4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* EDAB8 800445A8 AFBF0064 */  sw         $ra, 0x64($sp)
/* EDABC 800445AC AFB20060 */  sw         $s2, 0x60($sp)
/* EDAC0 800445B0 AFB1005C */  sw         $s1, 0x5C($sp)
/* EDAC4 800445B4 AFB00058 */  sw         $s0, 0x58($sp)
/* EDAC8 800445B8 F7B60070 */  sdc1       $f22, 0x70($sp)
/* EDACC 800445BC F7B40068 */  sdc1       $f20, 0x68($sp)
/* EDAD0 800445C0 0C00E109 */  jal        func_80038424_ovl3
/* EDAD4 800445C4 241000FF */   addiu     $s0, $zero, 0xFF
/* EDAD8 800445C8 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDADC 800445CC 24040001 */   addiu     $a0, $zero, 0x1
/* EDAE0 800445D0 00409021 */  addu       $s2, $v0, $zero
/* EDAE4 800445D4 3C013DCC */  lui        $at, (0x3DCCCCCD >> 16)
/* EDAE8 800445D8 3421CCCD */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
/* EDAEC 800445DC 4481A000 */  mtc1       $at, $f20
/* EDAF0 800445E0 02402021 */  addu       $a0, $s2, $zero
/* EDAF4 800445E4 240500FD */  addiu      $a1, $zero, 0xFD
/* EDAF8 800445E8 AE400010 */  sw         $zero, 0x10($s2)
/* EDAFC 800445EC AE400014 */  sw         $zero, 0x14($s2)
/* EDB00 800445F0 AE400018 */  sw         $zero, 0x18($s2)
/* EDB04 800445F4 AE40001C */  sw         $zero, 0x1C($s2)
/* EDB08 800445F8 AE400020 */  sw         $zero, 0x20($s2)
/* EDB0C 800445FC AE400024 */  sw         $zero, 0x24($s2)
/* EDB10 80044600 A6500074 */  sh         $s0, 0x74($s2)
/* EDB14 80044604 A6500076 */  sh         $s0, 0x76($s2)
/* EDB18 80044608 A6500078 */  sh         $s0, 0x78($s2)
/* EDB1C 8004460C A650007A */  sh         $s0, 0x7A($s2)
/* EDB20 80044610 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDB24 80044614 E6540028 */   swc1      $f20, 0x28($s2)
/* EDB28 80044618 8E420004 */  lw         $v0, 0x4($s2)
/* EDB2C 8004461C A0400067 */  sb         $zero, 0x67($v0)
/* EDB30 80044620 8E430004 */  lw         $v1, 0x4($s2)
/* EDB34 80044624 90620066 */  lbu        $v0, 0x66($v1)
/* EDB38 80044628 24040003 */  addiu      $a0, $zero, 0x3
/* EDB3C 8004462C 34420007 */  ori        $v0, $v0, 0x7
/* EDB40 80044630 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDB44 80044634 A0620066 */   sb        $v0, 0x66($v1)
/* EDB48 80044638 00409021 */  addu       $s2, $v0, $zero
/* EDB4C 8004463C 02402021 */  addu       $a0, $s2, $zero
/* EDB50 80044640 240500F6 */  addiu      $a1, $zero, 0xF6
/* EDB54 80044644 AE400010 */  sw         $zero, 0x10($s2)
/* EDB58 80044648 AE400014 */  sw         $zero, 0x14($s2)
/* EDB5C 8004464C AE400018 */  sw         $zero, 0x18($s2)
/* EDB60 80044650 E6540028 */  swc1       $f20, 0x28($s2)
/* EDB64 80044654 AE40001C */  sw         $zero, 0x1C($s2)
/* EDB68 80044658 AE400020 */  sw         $zero, 0x20($s2)
/* EDB6C 8004465C AE400024 */  sw         $zero, 0x24($s2)
/* EDB70 80044660 A6500074 */  sh         $s0, 0x74($s2)
/* EDB74 80044664 A6500076 */  sh         $s0, 0x76($s2)
/* EDB78 80044668 A6500078 */  sh         $s0, 0x78($s2)
/* EDB7C 8004466C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDB80 80044670 A650007A */   sh        $s0, 0x7A($s2)
/* EDB84 80044674 8E420004 */  lw         $v0, 0x4($s2)
/* EDB88 80044678 A0400067 */  sb         $zero, 0x67($v0)
/* EDB8C 8004467C 8E430004 */  lw         $v1, 0x4($s2)
/* EDB90 80044680 90620066 */  lbu        $v0, 0x66($v1)
/* EDB94 80044684 24040004 */  addiu      $a0, $zero, 0x4
/* EDB98 80044688 34420003 */  ori        $v0, $v0, 0x3
/* EDB9C 8004468C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDBA0 80044690 A0620066 */   sb        $v0, 0x66($v1)
/* EDBA4 80044694 00409021 */  addu       $s2, $v0, $zero
/* EDBA8 80044698 02402021 */  addu       $a0, $s2, $zero
/* EDBAC 8004469C 240500F7 */  addiu      $a1, $zero, 0xF7
/* EDBB0 800446A0 AE400010 */  sw         $zero, 0x10($s2)
/* EDBB4 800446A4 AE400014 */  sw         $zero, 0x14($s2)
/* EDBB8 800446A8 AE400018 */  sw         $zero, 0x18($s2)
/* EDBBC 800446AC E6540028 */  swc1       $f20, 0x28($s2)
/* EDBC0 800446B0 AE40001C */  sw         $zero, 0x1C($s2)
/* EDBC4 800446B4 AE400020 */  sw         $zero, 0x20($s2)
/* EDBC8 800446B8 AE400024 */  sw         $zero, 0x24($s2)
/* EDBCC 800446BC A6500074 */  sh         $s0, 0x74($s2)
/* EDBD0 800446C0 A6500076 */  sh         $s0, 0x76($s2)
/* EDBD4 800446C4 A6500078 */  sh         $s0, 0x78($s2)
/* EDBD8 800446C8 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDBDC 800446CC A650007A */   sh        $s0, 0x7A($s2)
/* EDBE0 800446D0 8E420004 */  lw         $v0, 0x4($s2)
/* EDBE4 800446D4 A0400067 */  sb         $zero, 0x67($v0)
/* EDBE8 800446D8 8E430004 */  lw         $v1, 0x4($s2)
/* EDBEC 800446DC 90620066 */  lbu        $v0, 0x66($v1)
/* EDBF0 800446E0 24040005 */  addiu      $a0, $zero, 0x5
/* EDBF4 800446E4 34420003 */  ori        $v0, $v0, 0x3
/* EDBF8 800446E8 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDBFC 800446EC A0620066 */   sb        $v0, 0x66($v1)
/* EDC00 800446F0 00409021 */  addu       $s2, $v0, $zero
/* EDC04 800446F4 3C01C160 */  lui        $at, (0xC1600000 >> 16)
/* EDC08 800446F8 44810000 */  mtc1       $at, $f0
/* EDC0C 800446FC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* EDC10 80044700 44811000 */  mtc1       $at, $f2
/* EDC14 80044704 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* EDC18 80044708 44812000 */  mtc1       $at, $f4
/* EDC1C 8004470C 02402021 */  addu       $a0, $s2, $zero
/* EDC20 80044710 2405010B */  addiu      $a1, $zero, 0x10B
/* EDC24 80044714 24020090 */  addiu      $v0, $zero, 0x90
/* EDC28 80044718 AE400010 */  sw         $zero, 0x10($s2)
/* EDC2C 8004471C E6540028 */  swc1       $f20, 0x28($s2)
/* EDC30 80044720 AE400020 */  sw         $zero, 0x20($s2)
/* EDC34 80044724 AE400024 */  sw         $zero, 0x24($s2)
/* EDC38 80044728 A6500074 */  sh         $s0, 0x74($s2)
/* EDC3C 8004472C A6500076 */  sh         $s0, 0x76($s2)
/* EDC40 80044730 A6500078 */  sh         $s0, 0x78($s2)
/* EDC44 80044734 A642007A */  sh         $v0, 0x7A($s2)
/* EDC48 80044738 E6400014 */  swc1       $f0, 0x14($s2)
/* EDC4C 8004473C E6420018 */  swc1       $f2, 0x18($s2)
/* EDC50 80044740 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDC54 80044744 E644001C */   swc1      $f4, 0x1C($s2)
/* EDC58 80044748 8E420004 */  lw         $v0, 0x4($s2)
/* EDC5C 8004474C 2411000A */  addiu      $s1, $zero, 0xA
/* EDC60 80044750 A0510067 */  sb         $s1, 0x67($v0)
/* EDC64 80044754 8E430004 */  lw         $v1, 0x4($s2)
/* EDC68 80044758 90620066 */  lbu        $v0, 0x66($v1)
/* EDC6C 8004475C 24040006 */  addiu      $a0, $zero, 0x6
/* EDC70 80044760 34420023 */  ori        $v0, $v0, 0x23
/* EDC74 80044764 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDC78 80044768 A0620066 */   sb        $v0, 0x66($v1)
/* EDC7C 8004476C 00409021 */  addu       $s2, $v0, $zero
/* EDC80 80044770 3C01C180 */  lui        $at, (0xC1800000 >> 16)
/* EDC84 80044774 44811000 */  mtc1       $at, $f2
/* EDC88 80044778 3C014220 */  lui        $at, (0x42200000 >> 16)
/* EDC8C 8004477C 4481B000 */  mtc1       $at, $f22
/* EDC90 80044780 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* EDC94 80044784 44810000 */  mtc1       $at, $f0
/* EDC98 80044788 02402021 */  addu       $a0, $s2, $zero
/* EDC9C 8004478C 2405010D */  addiu      $a1, $zero, 0x10D
/* EDCA0 80044790 24020070 */  addiu      $v0, $zero, 0x70
/* EDCA4 80044794 AE400010 */  sw         $zero, 0x10($s2)
/* EDCA8 80044798 E6540028 */  swc1       $f20, 0x28($s2)
/* EDCAC 8004479C AE400020 */  sw         $zero, 0x20($s2)
/* EDCB0 800447A0 AE400024 */  sw         $zero, 0x24($s2)
/* EDCB4 800447A4 A6500074 */  sh         $s0, 0x74($s2)
/* EDCB8 800447A8 A6500076 */  sh         $s0, 0x76($s2)
/* EDCBC 800447AC A6500078 */  sh         $s0, 0x78($s2)
/* EDCC0 800447B0 A642007A */  sh         $v0, 0x7A($s2)
/* EDCC4 800447B4 E6560018 */  swc1       $f22, 0x18($s2)
/* EDCC8 800447B8 E6420014 */  swc1       $f2, 0x14($s2)
/* EDCCC 800447BC 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDCD0 800447C0 E640001C */   swc1      $f0, 0x1C($s2)
/* EDCD4 800447C4 8E420004 */  lw         $v0, 0x4($s2)
/* EDCD8 800447C8 A0510067 */  sb         $s1, 0x67($v0)
/* EDCDC 800447CC 8E430004 */  lw         $v1, 0x4($s2)
/* EDCE0 800447D0 90620066 */  lbu        $v0, 0x66($v1)
/* EDCE4 800447D4 24040007 */  addiu      $a0, $zero, 0x7
/* EDCE8 800447D8 34420023 */  ori        $v0, $v0, 0x23
/* EDCEC 800447DC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDCF0 800447E0 A0620066 */   sb        $v0, 0x66($v1)
/* EDCF4 800447E4 00409021 */  addu       $s2, $v0, $zero
/* EDCF8 800447E8 3C01C190 */  lui        $at, (0xC1900000 >> 16)
/* EDCFC 800447EC 44810000 */  mtc1       $at, $f0
/* EDD00 800447F0 02402021 */  addu       $a0, $s2, $zero
/* EDD04 800447F4 2405010F */  addiu      $a1, $zero, 0x10F
/* EDD08 800447F8 24020080 */  addiu      $v0, $zero, 0x80
/* EDD0C 800447FC AE400010 */  sw         $zero, 0x10($s2)
/* EDD10 80044800 E6560018 */  swc1       $f22, 0x18($s2)
/* EDD14 80044804 E6540028 */  swc1       $f20, 0x28($s2)
/* EDD18 80044808 AE40001C */  sw         $zero, 0x1C($s2)
/* EDD1C 8004480C AE400020 */  sw         $zero, 0x20($s2)
/* EDD20 80044810 AE400024 */  sw         $zero, 0x24($s2)
/* EDD24 80044814 A6500074 */  sh         $s0, 0x74($s2)
/* EDD28 80044818 A6500076 */  sh         $s0, 0x76($s2)
/* EDD2C 8004481C A6500078 */  sh         $s0, 0x78($s2)
/* EDD30 80044820 A642007A */  sh         $v0, 0x7A($s2)
/* EDD34 80044824 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDD38 80044828 E6400014 */   swc1      $f0, 0x14($s2)
/* EDD3C 8004482C 8E420004 */  lw         $v0, 0x4($s2)
/* EDD40 80044830 3C01C200 */  lui        $at, (0xC2000000 >> 16)
/* EDD44 80044834 44810000 */  mtc1       $at, $f0
/* EDD48 80044838 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EDD4C 8004483C 44811000 */  mtc1       $at, $f2
/* EDD50 80044840 A0510067 */  sb         $s1, 0x67($v0)
/* EDD54 80044844 8E430004 */  lw         $v1, 0x4($s2)
/* EDD58 80044848 3C01C0E0 */  lui        $at, (0xC0E00000 >> 16)
/* EDD5C 8004484C 44812000 */  mtc1       $at, $f4
/* EDD60 80044850 3C01C334 */  lui        $at, (0xC3340000 >> 16)
/* EDD64 80044854 44813000 */  mtc1       $at, $f6
/* EDD68 80044858 90620066 */  lbu        $v0, 0x66($v1)
/* EDD6C 8004485C 3C01C332 */  lui        $at, (0xC3320000 >> 16)
/* EDD70 80044860 44814000 */  mtc1       $at, $f8
/* EDD74 80044864 34420023 */  ori        $v0, $v0, 0x23
/* EDD78 80044868 A0620066 */  sb         $v0, 0x66($v1)
/* EDD7C 8004486C 3C018015 */  lui        $at, %hi(D_8014A064)
/* EDD80 80044870 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EDD84 80044874 3C018015 */  lui        $at, %hi(D_8014A068)
/* EDD88 80044878 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* EDD8C 8004487C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EDD90 80044880 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EDD94 80044884 3C018015 */  lui        $at, %hi(D_8014A070)
/* EDD98 80044888 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EDD9C 8004488C 3C018015 */  lui        $at, %hi(D_8014A074)
/* EDDA0 80044890 E422A074 */  swc1       $f2, %lo(D_8014A074)($at)
/* EDDA4 80044894 3C018015 */  lui        $at, %hi(D_8014A078)
/* EDDA8 80044898 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EDDAC 8004489C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EDDB0 800448A0 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* EDDB4 800448A4 3C018015 */  lui        $at, %hi(D_8014A080)
/* EDDB8 800448A8 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* EDDBC 800448AC 3C018015 */  lui        $at, %hi(D_8014A084)
/* EDDC0 800448B0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EDDC4 800448B4 3C018015 */  lui        $at, %hi(D_8014A088)
/* EDDC8 800448B8 0C00E339 */  jal        func_80038CE4_ovl3
/* EDDCC 800448BC E428A088 */   swc1      $f8, %lo(D_8014A088)($at)
/* EDDD0 800448C0 3C014120 */  lui        $at, (0x41200000 >> 16)
/* EDDD4 800448C4 44810000 */  mtc1       $at, $f0
/* EDDD8 800448C8 27A40010 */  addiu      $a0, $sp, 0x10
/* EDDDC 800448CC 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EDDE0 800448D0 3C028007 */  lui        $v0, %hi(D_80069050_ovl3)
/* EDDE4 800448D4 24429050 */  addiu      $v0, $v0, %lo(D_80069050_ovl3)
/* EDDE8 800448D8 AFA20010 */  sw         $v0, 0x10($sp)
/* EDDEC 800448DC 2402FFFC */  addiu      $v0, $zero, -0x4
/* EDDF0 800448E0 A3A20014 */  sb         $v0, 0x14($sp)
/* EDDF4 800448E4 24020001 */  addiu      $v0, $zero, 0x1
/* EDDF8 800448E8 A3A20016 */  sb         $v0, 0x16($sp)
/* EDDFC 800448EC 24020003 */  addiu      $v0, $zero, 0x3
/* EDE00 800448F0 3C018015 */  lui        $at, %hi(D_8014A054)
/* EDE04 800448F4 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EDE08 800448F8 3C018015 */  lui        $at, %hi(D_8014A050)
/* EDE0C 800448FC AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EDE10 80044900 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EDE14 80044904 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EDE18 80044908 3C018017 */  lui        $at, %hi(D_8016E568)
/* EDE1C 8004490C AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* EDE20 80044910 A3A00015 */  sb         $zero, 0x15($sp)
/* EDE24 80044914 A3A20017 */  sb         $v0, 0x17($sp)
/* EDE28 80044918 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EDE2C 8004491C E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EDE30 80044920 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EDE34 80044924 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* EDE38 80044928 0C00DE82 */  jal        func_80037A08_ovl3
/* EDE3C 8004492C 24060003 */   addiu     $a2, $zero, 0x3
/* EDE40 80044930 8FBF0064 */  lw         $ra, 0x64($sp)
/* EDE44 80044934 8FB20060 */  lw         $s2, 0x60($sp)
/* EDE48 80044938 8FB1005C */  lw         $s1, 0x5C($sp)
/* EDE4C 8004493C 8FB00058 */  lw         $s0, 0x58($sp)
/* EDE50 80044940 D7B60070 */  ldc1       $f22, 0x70($sp)
/* EDE54 80044944 D7B40068 */  ldc1       $f20, 0x68($sp)
/* EDE58 80044948 03E00008 */  jr         $ra
/* EDE5C 8004494C 27BD0078 */   addiu     $sp, $sp, 0x78
.size func_800445A4_ovl3, . - func_800445A4_ovl3
