glabel func_8004D560_ovl3
/* F6A70 8004D560 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* F6A74 8004D564 AFBF0030 */  sw         $ra, 0x30($sp)
/* F6A78 8004D568 AFB3002C */  sw         $s3, 0x2C($sp)
/* F6A7C 8004D56C AFB20028 */  sw         $s2, 0x28($sp)
/* F6A80 8004D570 AFB10024 */  sw         $s1, 0x24($sp)
/* F6A84 8004D574 AFB00020 */  sw         $s0, 0x20($sp)
/* F6A88 8004D578 F7B60040 */  sdc1       $f22, 0x40($sp)
/* F6A8C 8004D57C F7B40038 */  sdc1       $f20, 0x38($sp)
/* F6A90 8004D580 0C00E109 */  jal        func_80038424_ovl3
/* F6A94 8004D584 241000FF */   addiu     $s0, $zero, 0xFF
/* F6A98 8004D588 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6A9C 8004D58C 24040001 */   addiu     $a0, $zero, 0x1
/* F6AA0 8004D590 00408821 */  addu       $s1, $v0, $zero
/* F6AA4 8004D594 3C01C040 */  lui        $at, (0xC0400000 >> 16)
/* F6AA8 8004D598 4481A000 */  mtc1       $at, $f20
/* F6AAC 8004D59C 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* F6AB0 8004D5A0 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* F6AB4 8004D5A4 4481B000 */  mtc1       $at, $f22
/* F6AB8 8004D5A8 02202021 */  addu       $a0, $s1, $zero
/* F6ABC 8004D5AC 240500E5 */  addiu      $a1, $zero, 0xE5
/* F6AC0 8004D5B0 AE200014 */  sw         $zero, 0x14($s1)
/* F6AC4 8004D5B4 AE200018 */  sw         $zero, 0x18($s1)
/* F6AC8 8004D5B8 AE20001C */  sw         $zero, 0x1C($s1)
/* F6ACC 8004D5BC AE200020 */  sw         $zero, 0x20($s1)
/* F6AD0 8004D5C0 AE200024 */  sw         $zero, 0x24($s1)
/* F6AD4 8004D5C4 A6300074 */  sh         $s0, 0x74($s1)
/* F6AD8 8004D5C8 A6300076 */  sh         $s0, 0x76($s1)
/* F6ADC 8004D5CC A6300078 */  sh         $s0, 0x78($s1)
/* F6AE0 8004D5D0 A630007A */  sh         $s0, 0x7A($s1)
/* F6AE4 8004D5D4 E6340010 */  swc1       $f20, 0x10($s1)
/* F6AE8 8004D5D8 0C00DFE6 */  jal        func_80037F98_ovl3
/* F6AEC 8004D5DC E6360028 */   swc1      $f22, 0x28($s1)
/* F6AF0 8004D5E0 8E220004 */  lw         $v0, 0x4($s1)
/* F6AF4 8004D5E4 A0400067 */  sb         $zero, 0x67($v0)
/* F6AF8 8004D5E8 8E230004 */  lw         $v1, 0x4($s1)
/* F6AFC 8004D5EC 90620066 */  lbu        $v0, 0x66($v1)
/* F6B00 8004D5F0 24040002 */  addiu      $a0, $zero, 0x2
/* F6B04 8004D5F4 34420007 */  ori        $v0, $v0, 0x7
/* F6B08 8004D5F8 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6B0C 8004D5FC A0620066 */   sb        $v0, 0x66($v1)
/* F6B10 8004D600 00408821 */  addu       $s1, $v0, $zero
/* F6B14 8004D604 02202021 */  addu       $a0, $s1, $zero
/* F6B18 8004D608 240500EA */  addiu      $a1, $zero, 0xEA
/* F6B1C 8004D60C 24020080 */  addiu      $v0, $zero, 0x80
/* F6B20 8004D610 E6340010 */  swc1       $f20, 0x10($s1)
/* F6B24 8004D614 AE200014 */  sw         $zero, 0x14($s1)
/* F6B28 8004D618 AE200018 */  sw         $zero, 0x18($s1)
/* F6B2C 8004D61C E6360028 */  swc1       $f22, 0x28($s1)
/* F6B30 8004D620 AE20001C */  sw         $zero, 0x1C($s1)
/* F6B34 8004D624 AE200020 */  sw         $zero, 0x20($s1)
/* F6B38 8004D628 AE200024 */  sw         $zero, 0x24($s1)
/* F6B3C 8004D62C A6300074 */  sh         $s0, 0x74($s1)
/* F6B40 8004D630 A6300076 */  sh         $s0, 0x76($s1)
/* F6B44 8004D634 A6300078 */  sh         $s0, 0x78($s1)
/* F6B48 8004D638 0C00DFE6 */  jal        func_80037F98_ovl3
/* F6B4C 8004D63C A622007A */   sh        $v0, 0x7A($s1)
/* F6B50 8004D640 8E230004 */  lw         $v1, 0x4($s1)
/* F6B54 8004D644 2402000A */  addiu      $v0, $zero, 0xA
/* F6B58 8004D648 A0620067 */  sb         $v0, 0x67($v1)
/* F6B5C 8004D64C 8E230004 */  lw         $v1, 0x4($s1)
/* F6B60 8004D650 90620066 */  lbu        $v0, 0x66($v1)
/* F6B64 8004D654 24040003 */  addiu      $a0, $zero, 0x3
/* F6B68 8004D658 34420020 */  ori        $v0, $v0, 0x20
/* F6B6C 8004D65C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6B70 8004D660 A0620066 */   sb        $v0, 0x66($v1)
/* F6B74 8004D664 00408821 */  addu       $s1, $v0, $zero
/* F6B78 8004D668 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* F6B7C 8004D66C 44810000 */  mtc1       $at, $f0
/* F6B80 8004D670 3C01BFC0 */  lui        $at, (0xBFC00000 >> 16)
/* F6B84 8004D674 44811000 */  mtc1       $at, $f2
/* F6B88 8004D678 3C013CAC */  lui        $at, (0x3CAC0831 >> 16)
/* F6B8C 8004D67C 34210831 */  ori        $at, $at, (0x3CAC0831 & 0xFFFF)
/* F6B90 8004D680 44812000 */  mtc1       $at, $f4
/* F6B94 8004D684 3C014100 */  lui        $at, (0x41000000 >> 16)
/* F6B98 8004D688 44813000 */  mtc1       $at, $f6
/* F6B9C 8004D68C 02202021 */  addu       $a0, $s1, $zero
/* F6BA0 8004D690 240500E6 */  addiu      $a1, $zero, 0xE6
/* F6BA4 8004D694 AE200018 */  sw         $zero, 0x18($s1)
/* F6BA8 8004D698 AE20001C */  sw         $zero, 0x1C($s1)
/* F6BAC 8004D69C AE200024 */  sw         $zero, 0x24($s1)
/* F6BB0 8004D6A0 A6300074 */  sh         $s0, 0x74($s1)
/* F6BB4 8004D6A4 A6300076 */  sh         $s0, 0x76($s1)
/* F6BB8 8004D6A8 A6300078 */  sh         $s0, 0x78($s1)
/* F6BBC 8004D6AC A630007A */  sh         $s0, 0x7A($s1)
/* F6BC0 8004D6B0 E6200010 */  swc1       $f0, 0x10($s1)
/* F6BC4 8004D6B4 E6220014 */  swc1       $f2, 0x14($s1)
/* F6BC8 8004D6B8 E6240028 */  swc1       $f4, 0x28($s1)
/* F6BCC 8004D6BC 0C00DFE6 */  jal        func_80037F98_ovl3
/* F6BD0 8004D6C0 E6260020 */   swc1      $f6, 0x20($s1)
/* F6BD4 8004D6C4 8E220004 */  lw         $v0, 0x4($s1)
/* F6BD8 8004D6C8 A0400067 */  sb         $zero, 0x67($v0)
/* F6BDC 8004D6CC 8E230004 */  lw         $v1, 0x4($s1)
/* F6BE0 8004D6D0 90620066 */  lbu        $v0, 0x66($v1)
/* F6BE4 8004D6D4 24040004 */  addiu      $a0, $zero, 0x4
/* F6BE8 8004D6D8 34420007 */  ori        $v0, $v0, 0x7
/* F6BEC 8004D6DC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6BF0 8004D6E0 A0620066 */   sb        $v0, 0x66($v1)
/* F6BF4 8004D6E4 00408821 */  addu       $s1, $v0, $zero
/* F6BF8 8004D6E8 3C014128 */  lui        $at, (0x41280000 >> 16)
/* F6BFC 8004D6EC 44810000 */  mtc1       $at, $f0
/* F6C00 8004D6F0 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* F6C04 8004D6F4 44811000 */  mtc1       $at, $f2
/* F6C08 8004D6F8 3C014170 */  lui        $at, (0x41700000 >> 16)
/* F6C0C 8004D6FC 44812000 */  mtc1       $at, $f4
/* F6C10 8004D700 02202021 */  addu       $a0, $s1, $zero
/* F6C14 8004D704 240500E7 */  addiu      $a1, $zero, 0xE7
/* F6C18 8004D708 AE200014 */  sw         $zero, 0x14($s1)
/* F6C1C 8004D70C E6360028 */  swc1       $f22, 0x28($s1)
/* F6C20 8004D710 AE20001C */  sw         $zero, 0x1C($s1)
/* F6C24 8004D714 AE200024 */  sw         $zero, 0x24($s1)
/* F6C28 8004D718 A6300074 */  sh         $s0, 0x74($s1)
/* F6C2C 8004D71C A6300076 */  sh         $s0, 0x76($s1)
/* F6C30 8004D720 A6300078 */  sh         $s0, 0x78($s1)
/* F6C34 8004D724 A630007A */  sh         $s0, 0x7A($s1)
/* F6C38 8004D728 E6200010 */  swc1       $f0, 0x10($s1)
/* F6C3C 8004D72C E6220018 */  swc1       $f2, 0x18($s1)
/* F6C40 8004D730 0C00DFE6 */  jal        func_80037F98_ovl3
/* F6C44 8004D734 E6240020 */   swc1      $f4, 0x20($s1)
/* F6C48 8004D738 8E220004 */  lw         $v0, 0x4($s1)
/* F6C4C 8004D73C A0400067 */  sb         $zero, 0x67($v0)
/* F6C50 8004D740 8E230004 */  lw         $v1, 0x4($s1)
/* F6C54 8004D744 90620066 */  lbu        $v0, 0x66($v1)
/* F6C58 8004D748 24040005 */  addiu      $a0, $zero, 0x5
/* F6C5C 8004D74C 34420007 */  ori        $v0, $v0, 0x7
/* F6C60 8004D750 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6C64 8004D754 A0620066 */   sb        $v0, 0x66($v1)
/* F6C68 8004D758 00408821 */  addu       $s1, $v0, $zero
/* F6C6C 8004D75C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* F6C70 8004D760 44810000 */  mtc1       $at, $f0
/* F6C74 8004D764 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* F6C78 8004D768 44811000 */  mtc1       $at, $f2
/* F6C7C 8004D76C 3C01C140 */  lui        $at, (0xC1400000 >> 16)
/* F6C80 8004D770 44812000 */  mtc1       $at, $f4
/* F6C84 8004D774 3C014120 */  lui        $at, (0x41200000 >> 16)
/* F6C88 8004D778 44813000 */  mtc1       $at, $f6
/* F6C8C 8004D77C 02202021 */  addu       $a0, $s1, $zero
/* F6C90 8004D780 240500E8 */  addiu      $a1, $zero, 0xE8
/* F6C94 8004D784 E6360028 */  swc1       $f22, 0x28($s1)
/* F6C98 8004D788 AE20001C */  sw         $zero, 0x1C($s1)
/* F6C9C 8004D78C AE200024 */  sw         $zero, 0x24($s1)
/* F6CA0 8004D790 A6300074 */  sh         $s0, 0x74($s1)
/* F6CA4 8004D794 A6300076 */  sh         $s0, 0x76($s1)
/* F6CA8 8004D798 A6300078 */  sh         $s0, 0x78($s1)
/* F6CAC 8004D79C A630007A */  sh         $s0, 0x7A($s1)
/* F6CB0 8004D7A0 E6200010 */  swc1       $f0, 0x10($s1)
/* F6CB4 8004D7A4 E6220014 */  swc1       $f2, 0x14($s1)
/* F6CB8 8004D7A8 E6240018 */  swc1       $f4, 0x18($s1)
/* F6CBC 8004D7AC 0C00DFE6 */  jal        func_80037F98_ovl3
/* F6CC0 8004D7B0 E6260020 */   swc1      $f6, 0x20($s1)
/* F6CC4 8004D7B4 8E220004 */  lw         $v0, 0x4($s1)
/* F6CC8 8004D7B8 3C014110 */  lui        $at, (0x41100000 >> 16)
/* F6CCC 8004D7BC 44810000 */  mtc1       $at, $f0
/* F6CD0 8004D7C0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F6CD4 8004D7C4 4481A000 */  mtc1       $at, $f20
/* F6CD8 8004D7C8 A0400067 */  sb         $zero, 0x67($v0)
/* F6CDC 8004D7CC 8E230004 */  lw         $v1, 0x4($s1)
/* F6CE0 8004D7D0 3C01C0E0 */  lui        $at, (0xC0E00000 >> 16)
/* F6CE4 8004D7D4 44811000 */  mtc1       $at, $f2
/* F6CE8 8004D7D8 3C01433E */  lui        $at, (0x433E0000 >> 16)
/* F6CEC 8004D7DC 44812000 */  mtc1       $at, $f4
/* F6CF0 8004D7E0 90620066 */  lbu        $v0, 0x66($v1)
/* F6CF4 8004D7E4 3C01C210 */  lui        $at, (0xC2100000 >> 16)
/* F6CF8 8004D7E8 44813000 */  mtc1       $at, $f6
/* F6CFC 8004D7EC 34420007 */  ori        $v0, $v0, 0x7
/* F6D00 8004D7F0 A0620066 */  sb         $v0, 0x66($v1)
/* F6D04 8004D7F4 3C018015 */  lui        $at, %hi(D_8014A064)
/* F6D08 8004D7F8 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F6D0C 8004D7FC 3C018015 */  lui        $at, %hi(D_8014A068)
/* F6D10 8004D800 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F6D14 8004D804 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F6D18 8004D808 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F6D1C 8004D80C 3C018015 */  lui        $at, %hi(D_8014A070)
/* F6D20 8004D810 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F6D24 8004D814 3C018015 */  lui        $at, %hi(D_8014A074)
/* F6D28 8004D818 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* F6D2C 8004D81C 3C018015 */  lui        $at, %hi(D_8014A078)
/* F6D30 8004D820 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F6D34 8004D824 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F6D38 8004D828 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F6D3C 8004D82C 3C018015 */  lui        $at, %hi(D_8014A080)
/* F6D40 8004D830 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F6D44 8004D834 3C018015 */  lui        $at, %hi(D_8014A084)
/* F6D48 8004D838 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F6D4C 8004D83C 3C018015 */  lui        $at, %hi(D_8014A088)
/* F6D50 8004D840 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F6D54 8004D844 0C00E339 */  jal        func_80038CE4_ovl3
/* F6D58 8004D848 24120001 */   addiu     $s2, $zero, 0x1
/* F6D5C 8004D84C 240401C7 */  addiu      $a0, $zero, 0x1C7
/* F6D60 8004D850 3C01406C */  lui        $at, (0x406CCCCD >> 16)
/* F6D64 8004D854 3421CCCD */  ori        $at, $at, (0x406CCCCD & 0xFFFF)
/* F6D68 8004D858 44810000 */  mtc1       $at, $f0
/* F6D6C 8004D85C 24050006 */  addiu      $a1, $zero, 0x6
/* F6D70 8004D860 3C018015 */  lui        $at, %hi(D_8014A054)
/* F6D74 8004D864 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F6D78 8004D868 3C018015 */  lui        $at, %hi(D_8014A050)
/* F6D7C 8004D86C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F6D80 8004D870 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F6D84 8004D874 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F6D88 8004D878 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F6D8C 8004D87C E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* F6D90 8004D880 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F6D94 8004D884 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* F6D98 8004D888 3C018017 */  lui        $at, %hi(D_8016E568)
/* F6D9C 8004D88C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F6DA0 8004D890 0C00D925 */  jal        func_80036494_ovl3
/* F6DA4 8004D894 24060021 */   addiu     $a2, $zero, 0x21
/* F6DA8 8004D898 00408821 */  addu       $s1, $v0, $zero
/* F6DAC 8004D89C 8E24000C */  lw         $a0, 0xC($s1)
/* F6DB0 8004D8A0 24050040 */  addiu      $a1, $zero, 0x40
/* F6DB4 8004D8A4 0C028D89 */  jal        func_800A3624
/* F6DB8 8004D8A8 24060040 */   addiu     $a2, $zero, 0x40
/* F6DBC 8004D8AC 8E24000C */  lw         $a0, 0xC($s1)
/* F6DC0 8004D8B0 24050200 */  addiu      $a1, $zero, 0x200
/* F6DC4 8004D8B4 0C0292D4 */  jal        func_800A4B50
/* F6DC8 8004D8B8 24060200 */   addiu     $a2, $zero, 0x200
/* F6DCC 8004D8BC 8E23000C */  lw         $v1, 0xC($s1)
/* F6DD0 8004D8C0 9462001E */  lhu        $v0, 0x1E($v1)
/* F6DD4 8004D8C4 24040008 */  addiu      $a0, $zero, 0x8
/* F6DD8 8004D8C8 24050001 */  addiu      $a1, $zero, 0x1
/* F6DDC 8004D8CC 34420104 */  ori        $v0, $v0, 0x104
/* F6DE0 8004D8D0 A462001E */  sh         $v0, 0x1E($v1)
/* F6DE4 8004D8D4 8E23000C */  lw         $v1, 0xC($s1)
/* F6DE8 8004D8D8 2406003B */  addiu      $a2, $zero, 0x3B
/* F6DEC 8004D8DC 24020001 */  addiu      $v0, $zero, 0x1
/* F6DF0 8004D8E0 0C00D925 */  jal        func_80036494_ovl3
/* F6DF4 8004D8E4 A462001C */   sh        $v0, 0x1C($v1)
/* F6DF8 8004D8E8 00408821 */  addu       $s1, $v0, $zero
/* F6DFC 8004D8EC 8E24000C */  lw         $a0, 0xC($s1)
/* F6E00 8004D8F0 24050066 */  addiu      $a1, $zero, 0x66
/* F6E04 8004D8F4 0C028F9A */  jal        func_800A3E68
/* F6E08 8004D8F8 24061400 */   addiu     $a2, $zero, 0x1400
/* F6E0C 8004D8FC 8E24000C */  lw         $a0, 0xC($s1)
/* F6E10 8004D900 24050040 */  addiu      $a1, $zero, 0x40
/* F6E14 8004D904 0C028D89 */  jal        func_800A3624
/* F6E18 8004D908 240601A0 */   addiu     $a2, $zero, 0x1A0
/* F6E1C 8004D90C AFA00010 */  sw         $zero, 0x10($sp)
/* F6E20 8004D910 8E24000C */  lw         $a0, 0xC($s1)
/* F6E24 8004D914 240500FF */  addiu      $a1, $zero, 0xFF
/* F6E28 8004D918 240600FF */  addiu      $a2, $zero, 0xFF
/* F6E2C 8004D91C 0C028E41 */  jal        func_800A3904
/* F6E30 8004D920 240700FF */   addiu     $a3, $zero, 0xFF
/* F6E34 8004D924 8E23000C */  lw         $v1, 0xC($s1)
/* F6E38 8004D928 24130043 */  addiu      $s3, $zero, 0x43
/* F6E3C 8004D92C 24020043 */  addiu      $v0, $zero, 0x43
/* F6E40 8004D930 A462001C */  sh         $v0, 0x1C($v1)
/* F6E44 8004D934 2404003B */  addiu      $a0, $zero, 0x3B
.L8004D938_ovl3:
/* F6E48 8004D938 324500FF */  andi       $a1, $s2, 0xFF
/* F6E4C 8004D93C 0C00DD19 */  jal        func_80037464_ovl3
/* F6E50 8004D940 24A5003B */   addiu     $a1, $a1, 0x3B
/* F6E54 8004D944 00408821 */  addu       $s1, $v0, $zero
/* F6E58 8004D948 8E24000C */  lw         $a0, 0xC($s1)
/* F6E5C 8004D94C 24050066 */  addiu      $a1, $zero, 0x66
/* F6E60 8004D950 0C028F9A */  jal        func_800A3E68
/* F6E64 8004D954 24061400 */   addiu     $a2, $zero, 0x1400
/* F6E68 8004D958 8E24000C */  lw         $a0, 0xC($s1)
/* F6E6C 8004D95C 24050040 */  addiu      $a1, $zero, 0x40
/* F6E70 8004D960 325000FF */  andi       $s0, $s2, 0xFF
/* F6E74 8004D964 001030C0 */  sll        $a2, $s0, 3
/* F6E78 8004D968 0C028D89 */  jal        func_800A3624
/* F6E7C 8004D96C 24C601A0 */   addiu     $a2, $a2, 0x1A0
/* F6E80 8004D970 001080C0 */  sll        $s0, $s0, 3
/* F6E84 8004D974 321000FF */  andi       $s0, $s0, 0xFF
/* F6E88 8004D978 AFB00010 */  sw         $s0, 0x10($sp)
/* F6E8C 8004D97C 8E24000C */  lw         $a0, 0xC($s1)
/* F6E90 8004D980 240500FF */  addiu      $a1, $zero, 0xFF
/* F6E94 8004D984 240600FF */  addiu      $a2, $zero, 0xFF
/* F6E98 8004D988 0C028E41 */  jal        func_800A3904
/* F6E9C 8004D98C 240700FF */   addiu     $a3, $zero, 0xFF
/* F6EA0 8004D990 8E22000C */  lw         $v0, 0xC($s1)
/* F6EA4 8004D994 26520001 */  addiu      $s2, $s2, 0x1
/* F6EA8 8004D998 A453001C */  sh         $s3, 0x1C($v0)
/* F6EAC 8004D99C 324200FF */  andi       $v0, $s2, 0xFF
/* F6EB0 8004D9A0 2C420020 */  sltiu      $v0, $v0, 0x20
/* F6EB4 8004D9A4 1440FFE4 */  bnez       $v0, .L8004D938_ovl3
/* F6EB8 8004D9A8 2404003B */   addiu     $a0, $zero, 0x3B
/* F6EBC 8004D9AC 8E24000C */  lw         $a0, 0xC($s1)
/* F6EC0 8004D9B0 24050066 */  addiu      $a1, $zero, 0x66
/* F6EC4 8004D9B4 0C028F9A */  jal        func_800A3E68
/* F6EC8 8004D9B8 24060155 */   addiu     $a2, $zero, 0x155
/* F6ECC 8004D9BC 240401BC */  addiu      $a0, $zero, 0x1BC
/* F6ED0 8004D9C0 24050002 */  addiu      $a1, $zero, 0x2
/* F6ED4 8004D9C4 0C00D925 */  jal        func_80036494_ovl3
/* F6ED8 8004D9C8 2406001F */   addiu     $a2, $zero, 0x1F
/* F6EDC 8004D9CC 00408821 */  addu       $s1, $v0, $zero
/* F6EE0 8004D9D0 8E24000C */  lw         $a0, 0xC($s1)
/* F6EE4 8004D9D4 8C82000C */  lw         $v0, 0xC($a0)
/* F6EE8 8004D9D8 84460002 */  lh         $a2, 0x2($v0)
/* F6EEC 8004D9DC 0C02912A */  jal        func_800A44A8
/* F6EF0 8004D9E0 00002821 */   addu      $a1, $zero, $zero
/* F6EF4 8004D9E4 8E24000C */  lw         $a0, 0xC($s1)
/* F6EF8 8004D9E8 24050040 */  addiu      $a1, $zero, 0x40
/* F6EFC 8004D9EC 0C028D89 */  jal        func_800A3624
/* F6F00 8004D9F0 24060380 */   addiu     $a2, $zero, 0x380
/* F6F04 8004D9F4 8FBF0030 */  lw         $ra, 0x30($sp)
/* F6F08 8004D9F8 8FB3002C */  lw         $s3, 0x2C($sp)
/* F6F0C 8004D9FC 8FB20028 */  lw         $s2, 0x28($sp)
/* F6F10 8004DA00 8FB10024 */  lw         $s1, 0x24($sp)
/* F6F14 8004DA04 8FB00020 */  lw         $s0, 0x20($sp)
/* F6F18 8004DA08 D7B60040 */  ldc1       $f22, 0x40($sp)
/* F6F1C 8004DA0C D7B40038 */  ldc1       $f20, 0x38($sp)
/* F6F20 8004DA10 03E00008 */  jr         $ra
/* F6F24 8004DA14 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_8004D560_ovl3, . - func_8004D560_ovl3
