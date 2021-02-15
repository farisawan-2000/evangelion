.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AB8D4
/* 164D4 800AB8D4 3C02800D */  lui        $v0, %hi(D_800D5116)
/* 164D8 800AB8D8 94425116 */  lhu        $v0, %lo(D_800D5116)($v0)
/* 164DC 800AB8DC 3C03800D */  lui        $v1, %hi(D_800D5114)
/* 164E0 800AB8E0 94635114 */  lhu        $v1, %lo(D_800D5114)($v1)
/* 164E4 800AB8E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 164E8 800AB8E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 164EC 800AB8EC AFB10014 */  sw         $s1, 0x14($sp)
/* 164F0 800AB8F0 1043000B */  beq        $v0, $v1, .L800AB920
/* 164F4 800AB8F4 AFB00010 */   sw        $s0, 0x10($sp)
/* 164F8 800AB8F8 00031040 */  sll        $v0, $v1, 1
/* 164FC 800AB8FC 3C04800D */  lui        $a0, %hi(D_800D5068)
/* 16500 800AB900 00822021 */  addu       $a0, $a0, $v0
/* 16504 800AB904 84845068 */  lh         $a0, %lo(D_800D5068)($a0)
/* 16508 800AB908 0C02ADB0 */  jal        func_800AB6C0
/* 1650C 800AB90C 00000000 */   nop
/* 16510 800AB910 3C02800D */  lui        $v0, %hi(D_800D5114)
/* 16514 800AB914 94425114 */  lhu        $v0, %lo(D_800D5114)($v0)
/* 16518 800AB918 3C01800D */  lui        $at, %hi(D_800D5116)
/* 1651C 800AB91C A4225116 */  sh         $v0, %lo(D_800D5116)($at)
.L800AB920:
/* 16520 800AB920 3C03800D */  lui        $v1, %hi(D_800D5114)
/* 16524 800AB924 94635114 */  lhu        $v1, %lo(D_800D5114)($v1)
/* 16528 800AB928 2C620056 */  sltiu      $v0, $v1, 0x56
/* 1652C 800AB92C 1040060C */  beqz       $v0, .L800AD160
/* 16530 800AB930 00031080 */   sll       $v0, $v1, 2
/* 16534 800AB934 3C018010 */  lui        $at, %hi(D_800FB280)
/* 16538 800AB938 00220821 */  addu       $at, $at, $v0
/* 1653C 800AB93C 8C22B280 */  lw         $v0, %lo(D_800FB280)($at)
/* 16540 800AB940 00400008 */  jr         $v0
/* 16544 800AB944 00000000 */   nop
/* 16548 800AB948 0802B456 */  j          .L800AD158
/* 1654C 800AB94C 24020015 */   addiu     $v0, $zero, 0x15
/* 16550 800AB950 0C00B6E8 */  jal        func_8002DBA0
/* 16554 800AB954 00000000 */   nop
/* 16558 800AB958 00402021 */  addu       $a0, $v0, $zero
/* 1655C 800AB95C 24020001 */  addiu      $v0, $zero, 1
/* 16560 800AB960 14820003 */  bne        $a0, $v0, .L800AB970
/* 16564 800AB964 24020006 */   addiu     $v0, $zero, 6
/* 16568 800AB968 0802B456 */  j          .L800AD158
/* 1656C 800AB96C 24020002 */   addiu     $v0, $zero, 2
.L800AB970:
/* 16570 800AB970 148205FB */  bne        $a0, $v0, .L800AD160
/* 16574 800AB974 24020004 */   addiu     $v0, $zero, 4
/* 16578 800AB978 0802B456 */  j          .L800AD158
/* 1657C 800AB97C 00000000 */   nop
/* 16580 800AB980 0C00B730 */  jal        func_8002DCC0
/* 16584 800AB984 00000000 */   nop
/* 16588 800AB988 00402021 */  addu       $a0, $v0, $zero
/* 1658C 800AB98C 24020001 */  addiu      $v0, $zero, 1
/* 16590 800AB990 14820003 */  bne        $a0, $v0, .L800AB9A0
/* 16594 800AB994 24020006 */   addiu     $v0, $zero, 6
/* 16598 800AB998 0802B456 */  j          .L800AD158
/* 1659C 800AB99C 24020003 */   addiu     $v0, $zero, 3
.L800AB9A0:
/* 165A0 800AB9A0 148205EF */  bne        $a0, $v0, .L800AD160
/* 165A4 800AB9A4 24020004 */   addiu     $v0, $zero, 4
/* 165A8 800AB9A8 0802B456 */  j          .L800AD158
/* 165AC 800AB9AC 00000000 */   nop
/* 165B0 800AB9B0 0C00B77E */  jal        func_8002DDF8
/* 165B4 800AB9B4 00000000 */   nop
/* 165B8 800AB9B8 00402021 */  addu       $a0, $v0, $zero
/* 165BC 800AB9BC 24020001 */  addiu      $v0, $zero, 1
/* 165C0 800AB9C0 14820003 */  bne        $a0, $v0, .L800AB9D0
/* 165C4 800AB9C4 24020006 */   addiu     $v0, $zero, 6
/* 165C8 800AB9C8 0802B456 */  j          .L800AD158
/* 165CC 800AB9CC 24020001 */   addiu     $v0, $zero, 1
.L800AB9D0:
/* 165D0 800AB9D0 148205E3 */  bne        $a0, $v0, .L800AD160
/* 165D4 800AB9D4 24020004 */   addiu     $v0, $zero, 4
/* 165D8 800AB9D8 0802B456 */  j          .L800AD158
/* 165DC 800AB9DC 00000000 */   nop
/* 165E0 800AB9E0 0C00B7C6 */  jal        func_8002DF18
/* 165E4 800AB9E4 00000000 */   nop
/* 165E8 800AB9E8 00402021 */  addu       $a0, $v0, $zero
/* 165EC 800AB9EC 24020001 */  addiu      $v0, $zero, 1
/* 165F0 800AB9F0 14820003 */  bne        $a0, $v0, .L800ABA00
/* 165F4 800AB9F4 24020007 */   addiu     $v0, $zero, 7
/* 165F8 800AB9F8 0802B456 */  j          .L800AD158
/* 165FC 800AB9FC 24020001 */   addiu     $v0, $zero, 1
.L800ABA00:
/* 16600 800ABA00 14820003 */  bne        $a0, $v0, .L800ABA10
/* 16604 800ABA04 24020008 */   addiu     $v0, $zero, 8
/* 16608 800ABA08 0802B456 */  j          .L800AD158
/* 1660C 800ABA0C 24020006 */   addiu     $v0, $zero, 6
.L800ABA10:
/* 16610 800ABA10 14820003 */  bne        $a0, $v0, .L800ABA20
/* 16614 800ABA14 24020009 */   addiu     $v0, $zero, 9
/* 16618 800ABA18 0802B456 */  j          .L800AD158
/* 1661C 800ABA1C 24020007 */   addiu     $v0, $zero, 7
.L800ABA20:
/* 16620 800ABA20 14820003 */  bne        $a0, $v0, .L800ABA30
/* 16624 800ABA24 2402000A */   addiu     $v0, $zero, 0xa
/* 16628 800ABA28 0802B456 */  j          .L800AD158
/* 1662C 800ABA2C 24020008 */   addiu     $v0, $zero, 8
.L800ABA30:
/* 16630 800ABA30 14820003 */  bne        $a0, $v0, .L800ABA40
/* 16634 800ABA34 2402000B */   addiu     $v0, $zero, 0xb
/* 16638 800ABA38 0802B456 */  j          .L800AD158
/* 1663C 800ABA3C 24020009 */   addiu     $v0, $zero, 9
.L800ABA40:
/* 16640 800ABA40 14820003 */  bne        $a0, $v0, .L800ABA50
/* 16644 800ABA44 2402000C */   addiu     $v0, $zero, 0xc
/* 16648 800ABA48 0802B456 */  j          .L800AD158
/* 1664C 800ABA4C 2402000A */   addiu     $v0, $zero, 0xa
.L800ABA50:
/* 16650 800ABA50 14820003 */  bne        $a0, $v0, .L800ABA60
/* 16654 800ABA54 2402000D */   addiu     $v0, $zero, 0xd
/* 16658 800ABA58 0802B456 */  j          .L800AD158
/* 1665C 800ABA5C 2402000B */   addiu     $v0, $zero, 0xb
.L800ABA60:
/* 16660 800ABA60 14820003 */  bne        $a0, $v0, .L800ABA70
/* 16664 800ABA64 2402000E */   addiu     $v0, $zero, 0xe
/* 16668 800ABA68 0802B456 */  j          .L800AD158
/* 1666C 800ABA6C 2402000E */   addiu     $v0, $zero, 0xe
.L800ABA70:
/* 16670 800ABA70 14820003 */  bne        $a0, $v0, .L800ABA80
/* 16674 800ABA74 2402000F */   addiu     $v0, $zero, 0xf
/* 16678 800ABA78 0802B456 */  j          .L800AD158
/* 1667C 800ABA7C 2402000C */   addiu     $v0, $zero, 0xc
.L800ABA80:
/* 16680 800ABA80 14820003 */  bne        $a0, $v0, .L800ABA90
/* 16684 800ABA84 24020010 */   addiu     $v0, $zero, 0x10
/* 16688 800ABA88 0802B456 */  j          .L800AD158
/* 1668C 800ABA8C 24020015 */   addiu     $v0, $zero, 0x15
.L800ABA90:
/* 16690 800ABA90 148205B3 */  bne        $a0, $v0, .L800AD160
/* 16694 800ABA94 2402000D */   addiu     $v0, $zero, 0xd
/* 16698 800ABA98 0802B456 */  j          .L800AD158
/* 1669C 800ABA9C 00000000 */   nop
/* 166A0 800ABAA0 0C00BA80 */  jal        func_8002EA00
/* 166A4 800ABAA4 00000000 */   nop
/* 166A8 800ABAA8 00402021 */  addu       $a0, $v0, $zero
/* 166AC 800ABAAC 24020001 */  addiu      $v0, $zero, 1
/* 166B0 800ABAB0 14820003 */  bne        $a0, $v0, .L800ABAC0
/* 166B4 800ABAB4 24020021 */   addiu     $v0, $zero, 0x21
/* 166B8 800ABAB8 0802B456 */  j          .L800AD158
/* 166BC 800ABABC 24020016 */   addiu     $v0, $zero, 0x16
.L800ABAC0:
/* 166C0 800ABAC0 14820003 */  bne        $a0, $v0, .L800ABAD0
/* 166C4 800ABAC4 24020022 */   addiu     $v0, $zero, 0x22
/* 166C8 800ABAC8 0802B456 */  j          .L800AD158
/* 166CC 800ABACC 2402002B */   addiu     $v0, $zero, 0x2b
.L800ABAD0:
/* 166D0 800ABAD0 14820003 */  bne        $a0, $v0, .L800ABAE0
/* 166D4 800ABAD4 24020023 */   addiu     $v0, $zero, 0x23
/* 166D8 800ABAD8 0802B456 */  j          .L800AD158
/* 166DC 800ABADC 2402002C */   addiu     $v0, $zero, 0x2c
.L800ABAE0:
/* 166E0 800ABAE0 14820003 */  bne        $a0, $v0, .L800ABAF0
/* 166E4 800ABAE4 24020024 */   addiu     $v0, $zero, 0x24
/* 166E8 800ABAE8 0802B456 */  j          .L800AD158
/* 166EC 800ABAEC 2402002D */   addiu     $v0, $zero, 0x2d
.L800ABAF0:
/* 166F0 800ABAF0 14820003 */  bne        $a0, $v0, .L800ABB00
/* 166F4 800ABAF4 24020025 */   addiu     $v0, $zero, 0x25
/* 166F8 800ABAF8 0802B456 */  j          .L800AD158
/* 166FC 800ABAFC 2402002E */   addiu     $v0, $zero, 0x2e
.L800ABB00:
/* 16700 800ABB00 14820003 */  bne        $a0, $v0, .L800ABB10
/* 16704 800ABB04 24020026 */   addiu     $v0, $zero, 0x26
/* 16708 800ABB08 0802B456 */  j          .L800AD158
/* 1670C 800ABB0C 2402002F */   addiu     $v0, $zero, 0x2f
.L800ABB10:
/* 16710 800ABB10 14820003 */  bne        $a0, $v0, .L800ABB20
/* 16714 800ABB14 24020027 */   addiu     $v0, $zero, 0x27
/* 16718 800ABB18 0802B456 */  j          .L800AD158
/* 1671C 800ABB1C 24020030 */   addiu     $v0, $zero, 0x30
.L800ABB20:
/* 16720 800ABB20 14820003 */  bne        $a0, $v0, .L800ABB30
/* 16724 800ABB24 24020028 */   addiu     $v0, $zero, 0x28
/* 16728 800ABB28 0802B456 */  j          .L800AD158
/* 1672C 800ABB2C 24020031 */   addiu     $v0, $zero, 0x31
.L800ABB30:
/* 16730 800ABB30 14820003 */  bne        $a0, $v0, .L800ABB40
/* 16734 800ABB34 24020029 */   addiu     $v0, $zero, 0x29
/* 16738 800ABB38 0802B456 */  j          .L800AD158
/* 1673C 800ABB3C 24020032 */   addiu     $v0, $zero, 0x32
.L800ABB40:
/* 16740 800ABB40 14820003 */  bne        $a0, $v0, .L800ABB50
/* 16744 800ABB44 2402002A */   addiu     $v0, $zero, 0x2a
/* 16748 800ABB48 0802B456 */  j          .L800AD158
/* 1674C 800ABB4C 24020033 */   addiu     $v0, $zero, 0x33
.L800ABB50:
/* 16750 800ABB50 14820003 */  bne        $a0, $v0, .L800ABB60
/* 16754 800ABB54 2402002B */   addiu     $v0, $zero, 0x2b
/* 16758 800ABB58 0802B456 */  j          .L800AD158
/* 1675C 800ABB5C 24020034 */   addiu     $v0, $zero, 0x34
.L800ABB60:
/* 16760 800ABB60 14820003 */  bne        $a0, $v0, .L800ABB70
/* 16764 800ABB64 2402002C */   addiu     $v0, $zero, 0x2c
/* 16768 800ABB68 0802B456 */  j          .L800AD158
/* 1676C 800ABB6C 24020035 */   addiu     $v0, $zero, 0x35
.L800ABB70:
/* 16770 800ABB70 14820003 */  bne        $a0, $v0, .L800ABB80
/* 16774 800ABB74 2402002D */   addiu     $v0, $zero, 0x2d
/* 16778 800ABB78 0802B456 */  j          .L800AD158
/* 1677C 800ABB7C 24020036 */   addiu     $v0, $zero, 0x36
.L800ABB80:
/* 16780 800ABB80 14820003 */  bne        $a0, $v0, .L800ABB90
/* 16784 800ABB84 2402002E */   addiu     $v0, $zero, 0x2e
/* 16788 800ABB88 0802B456 */  j          .L800AD158
/* 1678C 800ABB8C 24020037 */   addiu     $v0, $zero, 0x37
.L800ABB90:
/* 16790 800ABB90 14820003 */  bne        $a0, $v0, .L800ABBA0
/* 16794 800ABB94 2402002F */   addiu     $v0, $zero, 0x2f
/* 16798 800ABB98 0802B456 */  j          .L800AD158
/* 1679C 800ABB9C 24020038 */   addiu     $v0, $zero, 0x38
.L800ABBA0:
/* 167A0 800ABBA0 14820003 */  bne        $a0, $v0, .L800ABBB0
/* 167A4 800ABBA4 24020030 */   addiu     $v0, $zero, 0x30
/* 167A8 800ABBA8 0802B456 */  j          .L800AD158
/* 167AC 800ABBAC 24020039 */   addiu     $v0, $zero, 0x39
.L800ABBB0:
/* 167B0 800ABBB0 14820003 */  bne        $a0, $v0, .L800ABBC0
/* 167B4 800ABBB4 24020031 */   addiu     $v0, $zero, 0x31
/* 167B8 800ABBB8 0802B456 */  j          .L800AD158
/* 167BC 800ABBBC 2402003A */   addiu     $v0, $zero, 0x3a
.L800ABBC0:
/* 167C0 800ABBC0 14820003 */  bne        $a0, $v0, .L800ABBD0
/* 167C4 800ABBC4 24020032 */   addiu     $v0, $zero, 0x32
/* 167C8 800ABBC8 0802B456 */  j          .L800AD158
/* 167CC 800ABBCC 2402003B */   addiu     $v0, $zero, 0x3b
.L800ABBD0:
/* 167D0 800ABBD0 14820003 */  bne        $a0, $v0, .L800ABBE0
/* 167D4 800ABBD4 24020033 */   addiu     $v0, $zero, 0x33
/* 167D8 800ABBD8 0802B456 */  j          .L800AD158
/* 167DC 800ABBDC 2402003C */   addiu     $v0, $zero, 0x3c
.L800ABBE0:
/* 167E0 800ABBE0 14820003 */  bne        $a0, $v0, .L800ABBF0
/* 167E4 800ABBE4 24020034 */   addiu     $v0, $zero, 0x34
/* 167E8 800ABBE8 0802B456 */  j          .L800AD158
/* 167EC 800ABBEC 2402003D */   addiu     $v0, $zero, 0x3d
.L800ABBF0:
/* 167F0 800ABBF0 14820003 */  bne        $a0, $v0, .L800ABC00
/* 167F4 800ABBF4 24020035 */   addiu     $v0, $zero, 0x35
/* 167F8 800ABBF8 0802B456 */  j          .L800AD158
/* 167FC 800ABBFC 2402003E */   addiu     $v0, $zero, 0x3e
.L800ABC00:
/* 16800 800ABC00 14820003 */  bne        $a0, $v0, .L800ABC10
/* 16804 800ABC04 24020036 */   addiu     $v0, $zero, 0x36
/* 16808 800ABC08 0802B456 */  j          .L800AD158
/* 1680C 800ABC0C 2402003F */   addiu     $v0, $zero, 0x3f
.L800ABC10:
/* 16810 800ABC10 14820003 */  bne        $a0, $v0, .L800ABC20
/* 16814 800ABC14 24020037 */   addiu     $v0, $zero, 0x37
/* 16818 800ABC18 0802B456 */  j          .L800AD158
/* 1681C 800ABC1C 24020040 */   addiu     $v0, $zero, 0x40
.L800ABC20:
/* 16820 800ABC20 14820003 */  bne        $a0, $v0, .L800ABC30
/* 16824 800ABC24 24020038 */   addiu     $v0, $zero, 0x38
/* 16828 800ABC28 0802B456 */  j          .L800AD158
/* 1682C 800ABC2C 24020041 */   addiu     $v0, $zero, 0x41
.L800ABC30:
/* 16830 800ABC30 14820003 */  bne        $a0, $v0, .L800ABC40
/* 16834 800ABC34 24020039 */   addiu     $v0, $zero, 0x39
/* 16838 800ABC38 0802B456 */  j          .L800AD158
/* 1683C 800ABC3C 24020042 */   addiu     $v0, $zero, 0x42
.L800ABC40:
/* 16840 800ABC40 14820003 */  bne        $a0, $v0, .L800ABC50
/* 16844 800ABC44 2402003A */   addiu     $v0, $zero, 0x3a
/* 16848 800ABC48 0802B456 */  j          .L800AD158
/* 1684C 800ABC4C 24020043 */   addiu     $v0, $zero, 0x43
.L800ABC50:
/* 16850 800ABC50 14820003 */  bne        $a0, $v0, .L800ABC60
/* 16854 800ABC54 2402003B */   addiu     $v0, $zero, 0x3b
/* 16858 800ABC58 0802B456 */  j          .L800AD158
/* 1685C 800ABC5C 24020044 */   addiu     $v0, $zero, 0x44
.L800ABC60:
/* 16860 800ABC60 14820003 */  bne        $a0, $v0, .L800ABC70
/* 16864 800ABC64 2402003C */   addiu     $v0, $zero, 0x3c
/* 16868 800ABC68 0802B456 */  j          .L800AD158
/* 1686C 800ABC6C 24020045 */   addiu     $v0, $zero, 0x45
.L800ABC70:
/* 16870 800ABC70 14820003 */  bne        $a0, $v0, .L800ABC80
/* 16874 800ABC74 2402003D */   addiu     $v0, $zero, 0x3d
/* 16878 800ABC78 0802B456 */  j          .L800AD158
/* 1687C 800ABC7C 24020046 */   addiu     $v0, $zero, 0x46
.L800ABC80:
/* 16880 800ABC80 14820003 */  bne        $a0, $v0, .L800ABC90
/* 16884 800ABC84 2402003E */   addiu     $v0, $zero, 0x3e
/* 16888 800ABC88 0802B456 */  j          .L800AD158
/* 1688C 800ABC8C 24020047 */   addiu     $v0, $zero, 0x47
.L800ABC90:
/* 16890 800ABC90 14820003 */  bne        $a0, $v0, .L800ABCA0
/* 16894 800ABC94 2402003F */   addiu     $v0, $zero, 0x3f
/* 16898 800ABC98 0802B456 */  j          .L800AD158
/* 1689C 800ABC9C 24020048 */   addiu     $v0, $zero, 0x48
.L800ABCA0:
/* 168A0 800ABCA0 14820003 */  bne        $a0, $v0, .L800ABCB0
/* 168A4 800ABCA4 24020040 */   addiu     $v0, $zero, 0x40
/* 168A8 800ABCA8 0802B456 */  j          .L800AD158
/* 168AC 800ABCAC 24020049 */   addiu     $v0, $zero, 0x49
.L800ABCB0:
/* 168B0 800ABCB0 14820003 */  bne        $a0, $v0, .L800ABCC0
/* 168B4 800ABCB4 24020041 */   addiu     $v0, $zero, 0x41
/* 168B8 800ABCB8 0802B456 */  j          .L800AD158
/* 168BC 800ABCBC 2402004A */   addiu     $v0, $zero, 0x4a
.L800ABCC0:
/* 168C0 800ABCC0 14820003 */  bne        $a0, $v0, .L800ABCD0
/* 168C4 800ABCC4 24020042 */   addiu     $v0, $zero, 0x42
/* 168C8 800ABCC8 0802B456 */  j          .L800AD158
/* 168CC 800ABCCC 2402004B */   addiu     $v0, $zero, 0x4b
.L800ABCD0:
/* 168D0 800ABCD0 14820003 */  bne        $a0, $v0, .L800ABCE0
/* 168D4 800ABCD4 24020043 */   addiu     $v0, $zero, 0x43
/* 168D8 800ABCD8 0802B456 */  j          .L800AD158
/* 168DC 800ABCDC 2402004C */   addiu     $v0, $zero, 0x4c
.L800ABCE0:
/* 168E0 800ABCE0 14820003 */  bne        $a0, $v0, .L800ABCF0
/* 168E4 800ABCE4 24020044 */   addiu     $v0, $zero, 0x44
/* 168E8 800ABCE8 0802B456 */  j          .L800AD158
/* 168EC 800ABCEC 2402004D */   addiu     $v0, $zero, 0x4d
.L800ABCF0:
/* 168F0 800ABCF0 14820003 */  bne        $a0, $v0, .L800ABD00
/* 168F4 800ABCF4 24020045 */   addiu     $v0, $zero, 0x45
/* 168F8 800ABCF8 0802B456 */  j          .L800AD158
/* 168FC 800ABCFC 2402004E */   addiu     $v0, $zero, 0x4e
.L800ABD00:
/* 16900 800ABD00 14820003 */  bne        $a0, $v0, .L800ABD10
/* 16904 800ABD04 24020046 */   addiu     $v0, $zero, 0x46
/* 16908 800ABD08 0802B456 */  j          .L800AD158
/* 1690C 800ABD0C 2402004F */   addiu     $v0, $zero, 0x4f
.L800ABD10:
/* 16910 800ABD10 14820003 */  bne        $a0, $v0, .L800ABD20
/* 16914 800ABD14 24020047 */   addiu     $v0, $zero, 0x47
/* 16918 800ABD18 0802B456 */  j          .L800AD158
/* 1691C 800ABD1C 24020050 */   addiu     $v0, $zero, 0x50
.L800ABD20:
/* 16920 800ABD20 14820003 */  bne        $a0, $v0, .L800ABD30
/* 16924 800ABD24 24020048 */   addiu     $v0, $zero, 0x48
/* 16928 800ABD28 0802B456 */  j          .L800AD158
/* 1692C 800ABD2C 24020051 */   addiu     $v0, $zero, 0x51
.L800ABD30:
/* 16930 800ABD30 14820003 */  bne        $a0, $v0, .L800ABD40
/* 16934 800ABD34 24020049 */   addiu     $v0, $zero, 0x49
/* 16938 800ABD38 0802B456 */  j          .L800AD158
/* 1693C 800ABD3C 24020052 */   addiu     $v0, $zero, 0x52
.L800ABD40:
/* 16940 800ABD40 14820003 */  bne        $a0, $v0, .L800ABD50
/* 16944 800ABD44 2402004A */   addiu     $v0, $zero, 0x4a
/* 16948 800ABD48 0802B456 */  j          .L800AD158
/* 1694C 800ABD4C 24020053 */   addiu     $v0, $zero, 0x53
.L800ABD50:
/* 16950 800ABD50 14820003 */  bne        $a0, $v0, .L800ABD60
/* 16954 800ABD54 2402004B */   addiu     $v0, $zero, 0x4b
/* 16958 800ABD58 0802B456 */  j          .L800AD158
/* 1695C 800ABD5C 24020054 */   addiu     $v0, $zero, 0x54
.L800ABD60:
/* 16960 800ABD60 14820003 */  bne        $a0, $v0, .L800ABD70
/* 16964 800ABD64 24020015 */   addiu     $v0, $zero, 0x15
/* 16968 800ABD68 0802B456 */  j          .L800AD158
/* 1696C 800ABD6C 24020055 */   addiu     $v0, $zero, 0x55
.L800ABD70:
/* 16970 800ABD70 14820003 */  bne        $a0, $v0, .L800ABD80
/* 16974 800ABD74 24020016 */   addiu     $v0, $zero, 0x16
/* 16978 800ABD78 0802B456 */  j          .L800AD158
/* 1697C 800ABD7C 24020018 */   addiu     $v0, $zero, 0x18
.L800ABD80:
/* 16980 800ABD80 14820003 */  bne        $a0, $v0, .L800ABD90
/* 16984 800ABD84 24020017 */   addiu     $v0, $zero, 0x17
/* 16988 800ABD88 0802B456 */  j          .L800AD158
/* 1698C 800ABD8C 24020019 */   addiu     $v0, $zero, 0x19
.L800ABD90:
/* 16990 800ABD90 14820003 */  bne        $a0, $v0, .L800ABDA0
/* 16994 800ABD94 24020005 */   addiu     $v0, $zero, 5
/* 16998 800ABD98 0802B456 */  j          .L800AD158
/* 1699C 800ABD9C 2402001A */   addiu     $v0, $zero, 0x1a
.L800ABDA0:
/* 169A0 800ABDA0 14820003 */  bne        $a0, $v0, .L800ABDB0
/* 169A4 800ABDA4 24020010 */   addiu     $v0, $zero, 0x10
/* 169A8 800ABDA8 0802B456 */  j          .L800AD158
/* 169AC 800ABDAC 24020025 */   addiu     $v0, $zero, 0x25
.L800ABDB0:
/* 169B0 800ABDB0 14820003 */  bne        $a0, $v0, .L800ABDC0
/* 169B4 800ABDB4 2402004C */   addiu     $v0, $zero, 0x4c
/* 169B8 800ABDB8 0802B456 */  j          .L800AD158
/* 169BC 800ABDBC 2402000D */   addiu     $v0, $zero, 0xd
.L800ABDC0:
/* 169C0 800ABDC0 14820003 */  bne        $a0, $v0, .L800ABDD0
/* 169C4 800ABDC4 2402004D */   addiu     $v0, $zero, 0x4d
/* 169C8 800ABDC8 0802B456 */  j          .L800AD158
/* 169CC 800ABDCC 24020028 */   addiu     $v0, $zero, 0x28
.L800ABDD0:
/* 169D0 800ABDD0 148204E3 */  bne        $a0, $v0, .L800AD160
/* 169D4 800ABDD4 2402002A */   addiu     $v0, $zero, 0x2a
/* 169D8 800ABDD8 0802B456 */  j          .L800AD158
/* 169DC 800ABDDC 00000000 */   nop
/* 169E0 800ABDE0 0C009700 */  jal        func_80025C00
/* 169E4 800ABDE4 00000000 */   nop
/* 169E8 800ABDE8 24030001 */  addiu      $v1, $zero, 1
/* 169EC 800ABDEC 144304DC */  bne        $v0, $v1, .L800AD160
/* 169F0 800ABDF0 24020004 */   addiu     $v0, $zero, 4
/* 169F4 800ABDF4 0802B456 */  j          .L800AD158
/* 169F8 800ABDF8 00000000 */   nop
/* 169FC 800ABDFC 0C009700 */  jal        func_80025C00
/* 16A00 800ABE00 00000000 */   nop
/* 16A04 800ABE04 24030001 */  addiu      $v1, $zero, 1
/* 16A08 800ABE08 144304D5 */  bne        $v0, $v1, .L800AD160
/* 16A0C 800ABE0C 24020004 */   addiu     $v0, $zero, 4
/* 16A10 800ABE10 0802B456 */  j          .L800AD158
/* 16A14 800ABE14 00000000 */   nop
/* 16A18 800ABE18 0C009700 */  jal        func_80025C00
/* 16A1C 800ABE1C 00000000 */   nop
/* 16A20 800ABE20 24030001 */  addiu      $v1, $zero, 1
/* 16A24 800ABE24 144304CE */  bne        $v0, $v1, .L800AD160
/* 16A28 800ABE28 24020004 */   addiu     $v0, $zero, 4
/* 16A2C 800ABE2C 0802B456 */  j          .L800AD158
/* 16A30 800ABE30 00000000 */   nop
/* 16A34 800ABE34 0C009700 */  jal        func_80025C00
/* 16A38 800ABE38 00000000 */   nop
/* 16A3C 800ABE3C 24030001 */  addiu      $v1, $zero, 1
/* 16A40 800ABE40 144304C7 */  bne        $v0, $v1, .L800AD160
/* 16A44 800ABE44 24020004 */   addiu     $v0, $zero, 4
/* 16A48 800ABE48 0802B456 */  j          .L800AD158
/* 16A4C 800ABE4C 00000000 */   nop
/* 16A50 800ABE50 0C009700 */  jal        func_80025C00
/* 16A54 800ABE54 00000000 */   nop
/* 16A58 800ABE58 24030001 */  addiu      $v1, $zero, 1
/* 16A5C 800ABE5C 144304C0 */  bne        $v0, $v1, .L800AD160
/* 16A60 800ABE60 24020004 */   addiu     $v0, $zero, 4
/* 16A64 800ABE64 0802B456 */  j          .L800AD158
/* 16A68 800ABE68 00000000 */   nop
/* 16A6C 800ABE6C 0C009700 */  jal        func_80025C00
/* 16A70 800ABE70 00000000 */   nop
/* 16A74 800ABE74 24030001 */  addiu      $v1, $zero, 1
/* 16A78 800ABE78 144304B9 */  bne        $v0, $v1, .L800AD160
/* 16A7C 800ABE7C 24020004 */   addiu     $v0, $zero, 4
/* 16A80 800ABE80 0802B456 */  j          .L800AD158
/* 16A84 800ABE84 00000000 */   nop
/* 16A88 800ABE88 0C00BA04 */  jal        func_8002E810
/* 16A8C 800ABE8C 00000000 */   nop
/* 16A90 800ABE90 24030001 */  addiu      $v1, $zero, 1
/* 16A94 800ABE94 144304B2 */  bne        $v0, $v1, .L800AD160
/* 16A98 800ABE98 24020004 */   addiu     $v0, $zero, 4
/* 16A9C 800ABE9C 0802B456 */  j          .L800AD158
/* 16AA0 800ABEA0 00000000 */   nop
/* 16AA4 800ABEA4 0C009700 */  jal        func_80025C00
/* 16AA8 800ABEA8 00000000 */   nop
/* 16AAC 800ABEAC 24030001 */  addiu      $v1, $zero, 1
/* 16AB0 800ABEB0 144304AB */  bne        $v0, $v1, .L800AD160
/* 16AB4 800ABEB4 24020005 */   addiu     $v0, $zero, 5
/* 16AB8 800ABEB8 0802B456 */  j          .L800AD158
/* 16ABC 800ABEBC 00000000 */   nop
/* 16AC0 800ABEC0 0C00B80C */  jal        func_8002E030
/* 16AC4 800ABEC4 00000000 */   nop
/* 16AC8 800ABEC8 00402021 */  addu       $a0, $v0, $zero
/* 16ACC 800ABECC 24020001 */  addiu      $v0, $zero, 1
/* 16AD0 800ABED0 14820003 */  bne        $a0, $v0, .L800ABEE0
/* 16AD4 800ABED4 24020006 */   addiu     $v0, $zero, 6
/* 16AD8 800ABED8 0802B456 */  j          .L800AD158
/* 16ADC 800ABEDC 24020010 */   addiu     $v0, $zero, 0x10
.L800ABEE0:
/* 16AE0 800ABEE0 1482049F */  bne        $a0, $v0, .L800AD160
/* 16AE4 800ABEE4 24020004 */   addiu     $v0, $zero, 4
/* 16AE8 800ABEE8 0802B456 */  j          .L800AD158
/* 16AEC 800ABEEC 00000000 */   nop
/* 16AF0 800ABEF0 0C00B854 */  jal        func_8002E150
/* 16AF4 800ABEF4 00000000 */   nop
/* 16AF8 800ABEF8 00402021 */  addu       $a0, $v0, $zero
/* 16AFC 800ABEFC 24020001 */  addiu      $v0, $zero, 1
/* 16B00 800ABF00 14820003 */  bne        $a0, $v0, .L800ABF10
/* 16B04 800ABF04 24020006 */   addiu     $v0, $zero, 6
/* 16B08 800ABF08 0802B456 */  j          .L800AD158
/* 16B0C 800ABF0C 2402000E */   addiu     $v0, $zero, 0xe
.L800ABF10:
/* 16B10 800ABF10 14820493 */  bne        $a0, $v0, .L800AD160
/* 16B14 800ABF14 24020004 */   addiu     $v0, $zero, 4
/* 16B18 800ABF18 0802B456 */  j          .L800AD158
/* 16B1C 800ABF1C 00000000 */   nop
/* 16B20 800ABF20 0C00B89C */  jal        func_8002E270
/* 16B24 800ABF24 00000000 */   nop
/* 16B28 800ABF28 00402021 */  addu       $a0, $v0, $zero
/* 16B2C 800ABF2C 24020001 */  addiu      $v0, $zero, 1
/* 16B30 800ABF30 14820003 */  bne        $a0, $v0, .L800ABF40
/* 16B34 800ABF34 24020006 */   addiu     $v0, $zero, 6
/* 16B38 800ABF38 0802B456 */  j          .L800AD158
/* 16B3C 800ABF3C 24020013 */   addiu     $v0, $zero, 0x13
.L800ABF40:
/* 16B40 800ABF40 14820487 */  bne        $a0, $v0, .L800AD160
/* 16B44 800ABF44 24020004 */   addiu     $v0, $zero, 4
/* 16B48 800ABF48 0802B456 */  j          .L800AD158
/* 16B4C 800ABF4C 00000000 */   nop
/* 16B50 800ABF50 0C00B8E4 */  jal        func_8002E390
/* 16B54 800ABF54 00000000 */   nop
/* 16B58 800ABF58 00402021 */  addu       $a0, $v0, $zero
/* 16B5C 800ABF5C 24020001 */  addiu      $v0, $zero, 1
/* 16B60 800ABF60 14820003 */  bne        $a0, $v0, .L800ABF70
/* 16B64 800ABF64 24020006 */   addiu     $v0, $zero, 6
/* 16B68 800ABF68 0802B456 */  j          .L800AD158
/* 16B6C 800ABF6C 2402000F */   addiu     $v0, $zero, 0xf
.L800ABF70:
/* 16B70 800ABF70 1482047B */  bne        $a0, $v0, .L800AD160
/* 16B74 800ABF74 24020004 */   addiu     $v0, $zero, 4
/* 16B78 800ABF78 0802B456 */  j          .L800AD158
/* 16B7C 800ABF7C 00000000 */   nop
/* 16B80 800ABF80 0C00B92C */  jal        func_8002E4B0
/* 16B84 800ABF84 00000000 */   nop
/* 16B88 800ABF88 00402021 */  addu       $a0, $v0, $zero
/* 16B8C 800ABF8C 24020001 */  addiu      $v0, $zero, 1
/* 16B90 800ABF90 14820003 */  bne        $a0, $v0, .L800ABFA0
/* 16B94 800ABF94 24020006 */   addiu     $v0, $zero, 6
/* 16B98 800ABF98 0802B456 */  j          .L800AD158
/* 16B9C 800ABF9C 2402000F */   addiu     $v0, $zero, 0xf
.L800ABFA0:
/* 16BA0 800ABFA0 1482046F */  bne        $a0, $v0, .L800AD160
/* 16BA4 800ABFA4 24020004 */   addiu     $v0, $zero, 4
/* 16BA8 800ABFA8 0802B456 */  j          .L800AD158
/* 16BAC 800ABFAC 00000000 */   nop
/* 16BB0 800ABFB0 0C00B974 */  jal        func_8002E5D0
/* 16BB4 800ABFB4 00000000 */   nop
/* 16BB8 800ABFB8 00402021 */  addu       $a0, $v0, $zero
/* 16BBC 800ABFBC 24020001 */  addiu      $v0, $zero, 1
/* 16BC0 800ABFC0 14820003 */  bne        $a0, $v0, .L800ABFD0
/* 16BC4 800ABFC4 24020006 */   addiu     $v0, $zero, 6
/* 16BC8 800ABFC8 0802B456 */  j          .L800AD158
/* 16BCC 800ABFCC 24020001 */   addiu     $v0, $zero, 1
.L800ABFD0:
/* 16BD0 800ABFD0 14820463 */  bne        $a0, $v0, .L800AD160
/* 16BD4 800ABFD4 24020004 */   addiu     $v0, $zero, 4
/* 16BD8 800ABFD8 0802B456 */  j          .L800AD158
/* 16BDC 800ABFDC 00000000 */   nop
/* 16BE0 800ABFE0 0C00B9BC */  jal        func_8002E6F0
/* 16BE4 800ABFE4 00000000 */   nop
/* 16BE8 800ABFE8 00402021 */  addu       $a0, $v0, $zero
/* 16BEC 800ABFEC 24020001 */  addiu      $v0, $zero, 1
/* 16BF0 800ABFF0 14820003 */  bne        $a0, $v0, .L800AC000
/* 16BF4 800ABFF4 24020006 */   addiu     $v0, $zero, 6
/* 16BF8 800ABFF8 0802B456 */  j          .L800AD158
/* 16BFC 800ABFFC 24020001 */   addiu     $v0, $zero, 1
.L800AC000:
/* 16C00 800AC000 14820457 */  bne        $a0, $v0, .L800AD160
/* 16C04 800AC004 24020004 */   addiu     $v0, $zero, 4
/* 16C08 800AC008 0802B456 */  j          .L800AD158
/* 16C0C 800AC00C 00000000 */   nop
/* 16C10 800AC010 0C00975C */  jal        func_80025D70
/* 16C14 800AC014 00000000 */   nop
/* 16C18 800AC018 24030001 */  addiu      $v1, $zero, 1
/* 16C1C 800AC01C 14430450 */  bne        $v0, $v1, .L800AD160
/* 16C20 800AC020 00000000 */   nop
/* 16C24 800AC024 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 16C28 800AC028 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 16C2C 800AC02C 30422000 */  andi       $v0, $v0, 0x2000
/* 16C30 800AC030 10400449 */  beqz       $v0, .L800AD158
/* 16C34 800AC034 24020016 */   addiu     $v0, $zero, 0x16
/* 16C38 800AC038 3C02800D */  lui        $v0, %hi(D_800D511D)
/* 16C3C 800AC03C 9042511D */  lbu        $v0, %lo(D_800D511D)($v0)
/* 16C40 800AC040 14400445 */  bnez       $v0, .L800AD158
/* 16C44 800AC044 24020005 */   addiu     $v0, $zero, 5
/* 16C48 800AC048 0802B456 */  j          .L800AD158
/* 16C4C 800AC04C 24020016 */   addiu     $v0, $zero, 0x16
/* 16C50 800AC050 0C00FF58 */  jal        func_8003FD60
/* 16C54 800AC054 00000000 */   nop
/* 16C58 800AC058 00402021 */  addu       $a0, $v0, $zero
/* 16C5C 800AC05C 24020001 */  addiu      $v0, $zero, 1
/* 16C60 800AC060 14820003 */  bne        $a0, $v0, .L800AC070
/* 16C64 800AC064 24020011 */   addiu     $v0, $zero, 0x11
/* 16C68 800AC068 0802B456 */  j          .L800AD158
/* 16C6C 800AC06C 24020017 */   addiu     $v0, $zero, 0x17
.L800AC070:
/* 16C70 800AC070 1482043B */  bne        $a0, $v0, .L800AD160
/* 16C74 800AC074 2402001C */   addiu     $v0, $zero, 0x1c
/* 16C78 800AC078 0802B456 */  j          .L800AD158
/* 16C7C 800AC07C 00000000 */   nop
/* 16C80 800AC080 0C00A055 */  jal        func_80028154
/* 16C84 800AC084 00000000 */   nop
/* 16C88 800AC088 00402021 */  addu       $a0, $v0, $zero
/* 16C8C 800AC08C 24020001 */  addiu      $v0, $zero, 1
/* 16C90 800AC090 14820003 */  bne        $a0, $v0, .L800AC0A0
/* 16C94 800AC094 24020002 */   addiu     $v0, $zero, 2
/* 16C98 800AC098 0802B456 */  j          .L800AD158
/* 16C9C 800AC09C 2402001B */   addiu     $v0, $zero, 0x1b
.L800AC0A0:
/* 16CA0 800AC0A0 1482042F */  bne        $a0, $v0, .L800AD160
/* 16CA4 800AC0A4 00000000 */   nop
/* 16CA8 800AC0A8 3C028015 */  lui        $v0, %hi(D_80149E31)
/* 16CAC 800AC0AC 90429E31 */  lbu        $v0, %lo(D_80149E31)($v0)
/* 16CB0 800AC0B0 10400429 */  beqz       $v0, .L800AD158
/* 16CB4 800AC0B4 2402001C */   addiu     $v0, $zero, 0x1c
/* 16CB8 800AC0B8 3C028015 */  lui        $v0, %hi(D_80149E42)
/* 16CBC 800AC0BC 90429E42 */  lbu        $v0, %lo(D_80149E42)($v0)
/* 16CC0 800AC0C0 10400425 */  beqz       $v0, .L800AD158
/* 16CC4 800AC0C4 2402001C */   addiu     $v0, $zero, 0x1c
/* 16CC8 800AC0C8 3C028015 */  lui        $v0, %hi(D_8014CFB8)
/* 16CCC 800AC0CC 9442CFB8 */  lhu        $v0, %lo(D_8014CFB8)($v0)
/* 16CD0 800AC0D0 30420030 */  andi       $v0, $v0, 0x30
/* 16CD4 800AC0D4 14400420 */  bnez       $v0, .L800AD158
/* 16CD8 800AC0D8 24020055 */   addiu     $v0, $zero, 0x55
/* 16CDC 800AC0DC 0802B456 */  j          .L800AD158
/* 16CE0 800AC0E0 2402001C */   addiu     $v0, $zero, 0x1c
/* 16CE4 800AC0E4 0C00A370 */  jal        func_80028DC0
/* 16CE8 800AC0E8 00000000 */   nop
/* 16CEC 800AC0EC 24030001 */  addiu      $v1, $zero, 1
/* 16CF0 800AC0F0 1443041B */  bne        $v0, $v1, .L800AD160
/* 16CF4 800AC0F4 24020016 */   addiu     $v0, $zero, 0x16
/* 16CF8 800AC0F8 0802B456 */  j          .L800AD158
/* 16CFC 800AC0FC 00000000 */   nop
/* 16D00 800AC100 0C00A404 */  jal        func_80029010
/* 16D04 800AC104 00000000 */   nop
/* 16D08 800AC108 00402021 */  addu       $a0, $v0, $zero
/* 16D0C 800AC10C 24020002 */  addiu      $v0, $zero, 2
/* 16D10 800AC110 14820003 */  bne        $a0, $v0, .L800AC120
/* 16D14 800AC114 24020012 */   addiu     $v0, $zero, 0x12
/* 16D18 800AC118 0802B456 */  j          .L800AD158
/* 16D1C 800AC11C 24020016 */   addiu     $v0, $zero, 0x16
.L800AC120:
/* 16D20 800AC120 14820003 */  bne        $a0, $v0, .L800AC130
/* 16D24 800AC124 24020013 */   addiu     $v0, $zero, 0x13
/* 16D28 800AC128 0802B456 */  j          .L800AD158
/* 16D2C 800AC12C 2402001D */   addiu     $v0, $zero, 0x1d
.L800AC130:
/* 16D30 800AC130 10820408 */  beq        $a0, $v0, .L800AD154
/* 16D34 800AC134 24020014 */   addiu     $v0, $zero, 0x14
/* 16D38 800AC138 14820409 */  bne        $a0, $v0, .L800AD160
/* 16D3C 800AC13C 2402001F */   addiu     $v0, $zero, 0x1f
/* 16D40 800AC140 0802B456 */  j          .L800AD158
/* 16D44 800AC144 00000000 */   nop
/* 16D48 800AC148 0C00A740 */  jal        func_80029D00
/* 16D4C 800AC14C 00000000 */   nop
/* 16D50 800AC150 00402021 */  addu       $a0, $v0, $zero
/* 16D54 800AC154 24020002 */  addiu      $v0, $zero, 2
/* 16D58 800AC158 14820003 */  bne        $a0, $v0, .L800AC168
/* 16D5C 800AC15C 24020018 */   addiu     $v0, $zero, 0x18
/* 16D60 800AC160 0802B456 */  j          .L800AD158
/* 16D64 800AC164 2402001C */   addiu     $v0, $zero, 0x1c
.L800AC168:
/* 16D68 800AC168 5482000B */  bnel       $a0, $v0, .L800AC198
/* 16D6C 800AC16C 24020019 */   addiu     $v0, $zero, 0x19
/* 16D70 800AC170 24020001 */  addiu      $v0, $zero, 1
/* 16D74 800AC174 3C018017 */  lui        $at, %hi(D_801765B8)
/* 16D78 800AC178 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 16D7C 800AC17C 2402002B */  addiu      $v0, $zero, 0x2b
/* 16D80 800AC180 3C01800D */  lui        $at, %hi(D_800D511A)
/* 16D84 800AC184 A422511A */  sh         $v0, %lo(D_800D511A)($at)
/* 16D88 800AC188 3C018015 */  lui        $at, %hi(D_80149D78)
/* 16D8C 800AC18C AC209D78 */  sw         $zero, %lo(D_80149D78)($at)
/* 16D90 800AC190 0802B456 */  j          .L800AD158
/* 16D94 800AC194 24020023 */   addiu     $v0, $zero, 0x23
.L800AC198:
/* 16D98 800AC198 148203F1 */  bne        $a0, $v0, .L800AD160
/* 16D9C 800AC19C 00000000 */   nop
/* 16DA0 800AC1A0 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 16DA4 800AC1A4 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 16DA8 800AC1A8 000310C0 */  sll        $v0, $v1, 3
/* 16DAC 800AC1AC 00431023 */  subu       $v0, $v0, $v1
/* 16DB0 800AC1B0 000210C0 */  sll        $v0, $v0, 3
/* 16DB4 800AC1B4 3C038017 */  lui        $v1, %hi(D_8016D6D1)
/* 16DB8 800AC1B8 00621821 */  addu       $v1, $v1, $v0
/* 16DBC 800AC1BC 9063D6D1 */  lbu        $v1, %lo(D_8016D6D1)($v1)
/* 16DC0 800AC1C0 3C018015 */  lui        $at, %hi(D_80149D78)
/* 16DC4 800AC1C4 AC209D78 */  sw         $zero, %lo(D_80149D78)($at)
/* 16DC8 800AC1C8 3C018015 */  lui        $at, %hi(D_80149E28)
/* 16DCC 800AC1CC A0239E28 */  sb         $v1, %lo(D_80149E28)($at)
/* 16DD0 800AC1D0 3C038017 */  lui        $v1, %hi(D_8016D6D0)
/* 16DD4 800AC1D4 00621821 */  addu       $v1, $v1, $v0
/* 16DD8 800AC1D8 9063D6D0 */  lbu        $v1, %lo(D_8016D6D0)($v1)
/* 16DDC 800AC1DC 0802B0A3 */  j          .L800AC28C
/* 16DE0 800AC1E0 24630001 */   addiu     $v1, $v1, 1
/* 16DE4 800AC1E4 0C00A747 */  jal        func_80029D1C
/* 16DE8 800AC1E8 00000000 */   nop
/* 16DEC 800AC1EC 00402021 */  addu       $a0, $v0, $zero
/* 16DF0 800AC1F0 24020002 */  addiu      $v0, $zero, 2
/* 16DF4 800AC1F4 14820003 */  bne        $a0, $v0, .L800AC204
/* 16DF8 800AC1F8 2402001A */   addiu     $v0, $zero, 0x1a
/* 16DFC 800AC1FC 0802B456 */  j          .L800AD158
/* 16E00 800AC200 2402001C */   addiu     $v0, $zero, 0x1c
.L800AC204:
/* 16E04 800AC204 108203D3 */  beq        $a0, $v0, .L800AD154
/* 16E08 800AC208 2402001B */   addiu     $v0, $zero, 0x1b
/* 16E0C 800AC20C 14820003 */  bne        $a0, $v0, .L800AC21C
/* 16E10 800AC210 2402001C */   addiu     $v0, $zero, 0x1c
/* 16E14 800AC214 0802B456 */  j          .L800AD158
/* 16E18 800AC218 24020026 */   addiu     $v0, $zero, 0x26
.L800AC21C:
/* 16E1C 800AC21C 14820003 */  bne        $a0, $v0, .L800AC22C
/* 16E20 800AC220 2402001D */   addiu     $v0, $zero, 0x1d
/* 16E24 800AC224 0802B456 */  j          .L800AD158
/* 16E28 800AC228 24020027 */   addiu     $v0, $zero, 0x27
.L800AC22C:
/* 16E2C 800AC22C 14820003 */  bne        $a0, $v0, .L800AC23C
/* 16E30 800AC230 2402001E */   addiu     $v0, $zero, 0x1e
/* 16E34 800AC234 0802B456 */  j          .L800AD158
/* 16E38 800AC238 24020028 */   addiu     $v0, $zero, 0x28
.L800AC23C:
/* 16E3C 800AC23C 148203C8 */  bne        $a0, $v0, .L800AD160
/* 16E40 800AC240 24020029 */   addiu     $v0, $zero, 0x29
/* 16E44 800AC244 0802B456 */  j          .L800AD158
/* 16E48 800AC248 00000000 */   nop
/* 16E4C 800AC24C 0C00A74E */  jal        func_80029D38
/* 16E50 800AC250 00000000 */   nop
/* 16E54 800AC254 00402021 */  addu       $a0, $v0, $zero
/* 16E58 800AC258 24020002 */  addiu      $v0, $zero, 2
/* 16E5C 800AC25C 14820003 */  bne        $a0, $v0, .L800AC26C
/* 16E60 800AC260 2402001F */   addiu     $v0, $zero, 0x1f
/* 16E64 800AC264 0802B456 */  j          .L800AD158
/* 16E68 800AC268 2402001C */   addiu     $v0, $zero, 0x1c
.L800AC26C:
/* 16E6C 800AC26C 14820003 */  bne        $a0, $v0, .L800AC27C
/* 16E70 800AC270 24020020 */   addiu     $v0, $zero, 0x20
/* 16E74 800AC274 0802B456 */  j          .L800AD158
/* 16E78 800AC278 24020020 */   addiu     $v0, $zero, 0x20
.L800AC27C:
/* 16E7C 800AC27C 148203B8 */  bne        $a0, $v0, .L800AD160
/* 16E80 800AC280 00000000 */   nop
/* 16E84 800AC284 3C038015 */  lui        $v1, %hi(D_80149D78)
/* 16E88 800AC288 8C639D78 */  lw         $v1, %lo(D_80149D78)($v1)
.L800AC28C:
/* 16E8C 800AC28C 00031040 */  sll        $v0, $v1, 1
/* 16E90 800AC290 3C04800D */  lui        $a0, %hi(D_800D5120)
/* 16E94 800AC294 00822021 */  addu       $a0, $a0, $v0
/* 16E98 800AC298 94845120 */  lhu        $a0, %lo(D_800D5120)($a0)
/* 16E9C 800AC29C 24020023 */  addiu      $v0, $zero, 0x23
/* 16EA0 800AC2A0 3C01800D */  lui        $at, %hi(D_800D5114)
/* 16EA4 800AC2A4 A4225114 */  sh         $v0, %lo(D_800D5114)($at)
/* 16EA8 800AC2A8 3C018017 */  lui        $at, %hi(D_801765B8)
/* 16EAC 800AC2AC AC2365B8 */  sw         $v1, %lo(D_801765B8)($at)
/* 16EB0 800AC2B0 3C01800D */  lui        $at, %hi(D_800D511A)
/* 16EB4 800AC2B4 A424511A */  sh         $a0, %lo(D_800D511A)($at)
/* 16EB8 800AC2B8 0802B458 */  j          .L800AD160
/* 16EBC 800AC2BC 00000000 */   nop
/* 16EC0 800AC2C0 0C00D424 */  jal        func_80035090
/* 16EC4 800AC2C4 00000000 */   nop
/* 16EC8 800AC2C8 00402021 */  addu       $a0, $v0, $zero
/* 16ECC 800AC2CC 24020002 */  addiu      $v0, $zero, 2
/* 16ED0 800AC2D0 14820003 */  bne        $a0, $v0, .L800AC2E0
/* 16ED4 800AC2D4 24020001 */   addiu     $v0, $zero, 1
/* 16ED8 800AC2D8 0802B456 */  j          .L800AD158
/* 16EDC 800AC2DC 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC2E0:
/* 16EE0 800AC2E0 1482039F */  bne        $a0, $v0, .L800AD160
/* 16EE4 800AC2E4 24020021 */   addiu     $v0, $zero, 0x21
/* 16EE8 800AC2E8 0802B456 */  j          .L800AD158
/* 16EEC 800AC2EC 00000000 */   nop
/* 16EF0 800AC2F0 3C048017 */  lui        $a0, %hi(D_8016D7EC)
/* 16EF4 800AC2F4 8C84D7EC */  lw         $a0, %lo(D_8016D7EC)($a0)
/* 16EF8 800AC2F8 0C00F744 */  jal        func_8003DD10
/* 16EFC 800AC2FC 00000000 */   nop
/* 16F00 800AC300 24030001 */  addiu      $v1, $zero, 1
/* 16F04 800AC304 14430396 */  bne        $v0, $v1, .L800AD160
/* 16F08 800AC308 2402001F */   addiu     $v0, $zero, 0x1f
/* 16F0C 800AC30C 0802B456 */  j          .L800AD158
/* 16F10 800AC310 00000000 */   nop
/* 16F14 800AC314 24100001 */  addiu      $s0, $zero, 1
/* 16F18 800AC318 3C018017 */  lui        $at, %hi(D_801765B8)
/* 16F1C 800AC31C AC3065B8 */  sw         $s0, %lo(D_801765B8)($at)
/* 16F20 800AC320 0C012A21 */  jal        func_8004A884
/* 16F24 800AC324 00000000 */   nop
/* 16F28 800AC328 1450038D */  bne        $v0, $s0, .L800AD160
/* 16F2C 800AC32C 2402002C */   addiu     $v0, $zero, 0x2c
/* 16F30 800AC330 0802B456 */  j          .L800AD158
/* 16F34 800AC334 00000000 */   nop
/* 16F38 800AC338 24100001 */  addiu      $s0, $zero, 1
/* 16F3C 800AC33C 3C018017 */  lui        $at, %hi(D_801765B8)
/* 16F40 800AC340 AC3065B8 */  sw         $s0, %lo(D_801765B8)($at)
/* 16F44 800AC344 0C01343E */  jal        func_8004D0F8
/* 16F48 800AC348 00000000 */   nop
/* 16F4C 800AC34C 14500384 */  bne        $v0, $s0, .L800AD160
/* 16F50 800AC350 2402002D */   addiu     $v0, $zero, 0x2d
/* 16F54 800AC354 0802B456 */  j          .L800AD158
/* 16F58 800AC358 00000000 */   nop
/* 16F5C 800AC35C 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 16F60 800AC360 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 16F64 800AC364 24020001 */  addiu      $v0, $zero, 1
/* 16F68 800AC368 3C018017 */  lui        $at, %hi(D_801765B8)
/* 16F6C 800AC36C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 16F70 800AC370 0C009FB0 */  jal        func_80027EC0
/* 16F74 800AC374 00000000 */   nop
/* 16F78 800AC378 00402021 */  addu       $a0, $v0, $zero
/* 16F7C 800AC37C 24020005 */  addiu      $v0, $zero, 5
/* 16F80 800AC380 108202DD */  beq        $a0, $v0, .L800ACEF8
/* 16F84 800AC384 24020003 */   addiu     $v0, $zero, 3
/* 16F88 800AC388 14820375 */  bne        $a0, $v0, .L800AD160
/* 16F8C 800AC38C 2402002E */   addiu     $v0, $zero, 0x2e
/* 16F90 800AC390 3C01800D */  lui        $at, %hi(D_800D511C)
/* 16F94 800AC394 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 16F98 800AC398 0802B456 */  j          .L800AD158
/* 16F9C 800AC39C 00000000 */   nop
/* 16FA0 800AC3A0 24100001 */  addiu      $s0, $zero, 1
/* 16FA4 800AC3A4 3C018017 */  lui        $at, %hi(D_801765B8)
/* 16FA8 800AC3A8 AC3065B8 */  sw         $s0, %lo(D_801765B8)($at)
/* 16FAC 800AC3AC 0C010CB5 */  jal        func_800432D4
/* 16FB0 800AC3B0 2411002F */   addiu     $s1, $zero, 0x2f
/* 16FB4 800AC3B4 1450036A */  bne        $v0, $s0, .L800AD160
/* 16FB8 800AC3B8 00000000 */   nop
/* 16FBC 800AC3BC 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 16FC0 800AC3C0 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 16FC4 800AC3C4 10400005 */  beqz       $v0, .L800AC3DC
/* 16FC8 800AC3C8 00000000 */   nop
/* 16FCC 800AC3CC 0C02AB72 */  jal        func_800AADC8
/* 16FD0 800AC3D0 00000000 */   nop
/* 16FD4 800AC3D4 0802B456 */  j          .L800AD158
/* 16FD8 800AC3D8 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC3DC:
/* 16FDC 800AC3DC 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 16FE0 800AC3E0 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 16FE4 800AC3E4 0C02AD7C */  jal        func_800AB5F0
/* 16FE8 800AC3E8 00000000 */   nop
/* 16FEC 800AC3EC 3C01800D */  lui        $at, %hi(D_800D511A)
/* 16FF0 800AC3F0 A431511A */  sh         $s1, %lo(D_800D511A)($at)
/* 16FF4 800AC3F4 0802B456 */  j          .L800AD158
/* 16FF8 800AC3F8 24020022 */   addiu     $v0, $zero, 0x22
/* 16FFC 800AC3FC 24020002 */  addiu      $v0, $zero, 2
/* 17000 800AC400 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17004 800AC404 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17008 800AC408 0C013EF9 */  jal        func_8004FBE4
/* 1700C 800AC40C 00000000 */   nop
/* 17010 800AC410 24030001 */  addiu      $v1, $zero, 1
/* 17014 800AC414 14430352 */  bne        $v0, $v1, .L800AD160
/* 17018 800AC418 24020030 */   addiu     $v0, $zero, 0x30
/* 1701C 800AC41C 0802B456 */  j          .L800AD158
/* 17020 800AC420 00000000 */   nop
/* 17024 800AC424 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17028 800AC428 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 1702C 800AC42C 24020002 */  addiu      $v0, $zero, 2
/* 17030 800AC430 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17034 800AC434 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17038 800AC438 0C009FCC */  jal        func_80027F30
/* 1703C 800AC43C 00000000 */   nop
/* 17040 800AC440 3C038017 */  lui        $v1, %hi(D_8016E58C)
/* 17044 800AC444 8C63E58C */  lw         $v1, %lo(D_8016E58C)($v1)
/* 17048 800AC448 00402021 */  addu       $a0, $v0, $zero
/* 1704C 800AC44C 14600002 */  bnez       $v1, .L800AC458
/* 17050 800AC450 24050032 */   addiu     $a1, $zero, 0x32
/* 17054 800AC454 24050031 */  addiu      $a1, $zero, 0x31
.L800AC458:
/* 17058 800AC458 24020005 */  addiu      $v0, $zero, 5
/* 1705C 800AC45C 108202A6 */  beq        $a0, $v0, .L800ACEF8
/* 17060 800AC460 24020003 */   addiu     $v0, $zero, 3
/* 17064 800AC464 1082004F */  beq        $a0, $v0, .L800AC5A4
/* 17068 800AC468 00000000 */   nop
/* 1706C 800AC46C 0802B458 */  j          .L800AD160
/* 17070 800AC470 00000000 */   nop
/* 17074 800AC474 24020002 */  addiu      $v0, $zero, 2
/* 17078 800AC478 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1707C 800AC47C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17080 800AC480 0C010CD3 */  jal        func_8004334C
/* 17084 800AC484 24100033 */   addiu     $s0, $zero, 0x33
/* 17088 800AC488 24030001 */  addiu      $v1, $zero, 1
/* 1708C 800AC48C 14430334 */  bne        $v0, $v1, .L800AD160
/* 17090 800AC490 00000000 */   nop
/* 17094 800AC494 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17098 800AC498 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 1709C 800AC49C 10400005 */  beqz       $v0, .L800AC4B4
/* 170A0 800AC4A0 00000000 */   nop
/* 170A4 800AC4A4 0C02AB72 */  jal        func_800AADC8
/* 170A8 800AC4A8 00000000 */   nop
/* 170AC 800AC4AC 0802B456 */  j          .L800AD158
/* 170B0 800AC4B0 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC4B4:
/* 170B4 800AC4B4 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 170B8 800AC4B8 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 170BC 800AC4BC 0C02AD7C */  jal        func_800AB5F0
/* 170C0 800AC4C0 00000000 */   nop
/* 170C4 800AC4C4 3C01800D */  lui        $at, %hi(D_800D511A)
/* 170C8 800AC4C8 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 170CC 800AC4CC 0802B456 */  j          .L800AD158
/* 170D0 800AC4D0 24020022 */   addiu     $v0, $zero, 0x22
/* 170D4 800AC4D4 24020002 */  addiu      $v0, $zero, 2
/* 170D8 800AC4D8 3C018017 */  lui        $at, %hi(D_801765B8)
/* 170DC 800AC4DC AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 170E0 800AC4E0 0C00FD29 */  jal        func_8003F4A4
/* 170E4 800AC4E4 24100033 */   addiu     $s0, $zero, 0x33
/* 170E8 800AC4E8 24030001 */  addiu      $v1, $zero, 1
/* 170EC 800AC4EC 1443031C */  bne        $v0, $v1, .L800AD160
/* 170F0 800AC4F0 00000000 */   nop
/* 170F4 800AC4F4 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 170F8 800AC4F8 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 170FC 800AC4FC 10400005 */  beqz       $v0, .L800AC514
/* 17100 800AC500 00000000 */   nop
/* 17104 800AC504 0C02AB72 */  jal        func_800AADC8
/* 17108 800AC508 00000000 */   nop
/* 1710C 800AC50C 0802B456 */  j          .L800AD158
/* 17110 800AC510 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC514:
/* 17114 800AC514 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17118 800AC518 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 1711C 800AC51C 0C02AD7C */  jal        func_800AB5F0
/* 17120 800AC520 00000000 */   nop
/* 17124 800AC524 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17128 800AC528 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 1712C 800AC52C 0802B456 */  j          .L800AD158
/* 17130 800AC530 24020022 */   addiu     $v0, $zero, 0x22
/* 17134 800AC534 24020003 */  addiu      $v0, $zero, 3
/* 17138 800AC538 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1713C 800AC53C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17140 800AC540 0C016A22 */  jal        func_8005A888
/* 17144 800AC544 00000000 */   nop
/* 17148 800AC548 24030001 */  addiu      $v1, $zero, 1
/* 1714C 800AC54C 14430304 */  bne        $v0, $v1, .L800AD160
/* 17150 800AC550 24020034 */   addiu     $v0, $zero, 0x34
/* 17154 800AC554 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 17158 800AC558 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 1715C 800AC55C 0802B320 */  j          .L800ACC80
/* 17160 800AC560 00000000 */   nop
/* 17164 800AC564 24100003 */  addiu      $s0, $zero, 3
/* 17168 800AC568 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1716C 800AC56C AC3065B8 */  sw         $s0, %lo(D_801765B8)($at)
/* 17170 800AC570 0C00B8C4 */  jal        func_8002E310
/* 17174 800AC574 00000000 */   nop
/* 17178 800AC578 3C038017 */  lui        $v1, %hi(D_8016E58C)
/* 1717C 800AC57C 8C63E58C */  lw         $v1, %lo(D_8016E58C)($v1)
/* 17180 800AC580 00402021 */  addu       $a0, $v0, $zero
/* 17184 800AC584 14600002 */  bnez       $v1, .L800AC590
/* 17188 800AC588 24050036 */   addiu     $a1, $zero, 0x36
/* 1718C 800AC58C 24050035 */  addiu      $a1, $zero, 0x35
.L800AC590:
/* 17190 800AC590 24020005 */  addiu      $v0, $zero, 5
/* 17194 800AC594 10820258 */  beq        $a0, $v0, .L800ACEF8
/* 17198 800AC598 00000000 */   nop
/* 1719C 800AC59C 149002F0 */  bne        $a0, $s0, .L800AD160
/* 171A0 800AC5A0 00000000 */   nop
.L800AC5A4:
/* 171A4 800AC5A4 3C01800D */  lui        $at, %hi(D_800D511C)
/* 171A8 800AC5A8 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 171AC 800AC5AC 3C01800D */  lui        $at, %hi(D_800D5114)
/* 171B0 800AC5B0 A4255114 */  sh         $a1, %lo(D_800D5114)($at)
/* 171B4 800AC5B4 0802B458 */  j          .L800AD160
/* 171B8 800AC5B8 00000000 */   nop
/* 171BC 800AC5BC 24020003 */  addiu      $v0, $zero, 3
/* 171C0 800AC5C0 3C018017 */  lui        $at, %hi(D_801765B8)
/* 171C4 800AC5C4 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 171C8 800AC5C8 0C010146 */  jal        func_80040518
/* 171CC 800AC5CC 24100037 */   addiu     $s0, $zero, 0x37
/* 171D0 800AC5D0 24030001 */  addiu      $v1, $zero, 1
/* 171D4 800AC5D4 144302E2 */  bne        $v0, $v1, .L800AD160
/* 171D8 800AC5D8 00000000 */   nop
/* 171DC 800AC5DC 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 171E0 800AC5E0 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 171E4 800AC5E4 10400005 */  beqz       $v0, .L800AC5FC
/* 171E8 800AC5E8 00000000 */   nop
/* 171EC 800AC5EC 0C02AB72 */  jal        func_800AADC8
/* 171F0 800AC5F0 00000000 */   nop
/* 171F4 800AC5F4 0802B456 */  j          .L800AD158
/* 171F8 800AC5F8 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC5FC:
/* 171FC 800AC5FC 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17200 800AC600 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17204 800AC604 0C02AD7C */  jal        func_800AB5F0
/* 17208 800AC608 00000000 */   nop
/* 1720C 800AC60C 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17210 800AC610 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17214 800AC614 0802B456 */  j          .L800AD158
/* 17218 800AC618 24020022 */   addiu     $v0, $zero, 0x22
/* 1721C 800AC61C 24020003 */  addiu      $v0, $zero, 3
/* 17220 800AC620 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17224 800AC624 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17228 800AC628 0C010329 */  jal        func_80040CA4
/* 1722C 800AC62C 24100037 */   addiu     $s0, $zero, 0x37
/* 17230 800AC630 24030001 */  addiu      $v1, $zero, 1
/* 17234 800AC634 144302CA */  bne        $v0, $v1, .L800AD160
/* 17238 800AC638 00000000 */   nop
/* 1723C 800AC63C 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17240 800AC640 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17244 800AC644 10400005 */  beqz       $v0, .L800AC65C
/* 17248 800AC648 00000000 */   nop
/* 1724C 800AC64C 0C02AB72 */  jal        func_800AADC8
/* 17250 800AC650 00000000 */   nop
/* 17254 800AC654 0802B456 */  j          .L800AD158
/* 17258 800AC658 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC65C:
/* 1725C 800AC65C 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17260 800AC660 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17264 800AC664 0C02AD7C */  jal        func_800AB5F0
/* 17268 800AC668 00000000 */   nop
/* 1726C 800AC66C 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17270 800AC670 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17274 800AC674 0802B456 */  j          .L800AD158
/* 17278 800AC678 24020022 */   addiu     $v0, $zero, 0x22
/* 1727C 800AC67C 24020004 */  addiu      $v0, $zero, 4
/* 17280 800AC680 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17284 800AC684 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17288 800AC688 0C00CF16 */  jal        func_80033C58
/* 1728C 800AC68C 00000000 */   nop
/* 17290 800AC690 24030001 */  addiu      $v1, $zero, 1
/* 17294 800AC694 144302B2 */  bne        $v0, $v1, .L800AD160
/* 17298 800AC698 24020038 */   addiu     $v0, $zero, 0x38
/* 1729C 800AC69C 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 172A0 800AC6A0 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 172A4 800AC6A4 0802B320 */  j          .L800ACC80
/* 172A8 800AC6A8 00000000 */   nop
/* 172AC 800AC6AC 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 172B0 800AC6B0 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 172B4 800AC6B4 24020004 */  addiu      $v0, $zero, 4
/* 172B8 800AC6B8 3C018017 */  lui        $at, %hi(D_801765B8)
/* 172BC 800AC6BC AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 172C0 800AC6C0 0C009BE8 */  jal        func_80026FA0
/* 172C4 800AC6C4 00000000 */   nop
/* 172C8 800AC6C8 00402021 */  addu       $a0, $v0, $zero
/* 172CC 800AC6CC 24020005 */  addiu      $v0, $zero, 5
/* 172D0 800AC6D0 10820209 */  beq        $a0, $v0, .L800ACEF8
/* 172D4 800AC6D4 24020003 */   addiu     $v0, $zero, 3
/* 172D8 800AC6D8 148202A1 */  bne        $a0, $v0, .L800AD160
/* 172DC 800AC6DC 24020039 */   addiu     $v0, $zero, 0x39
/* 172E0 800AC6E0 3C01800D */  lui        $at, %hi(D_800D511C)
/* 172E4 800AC6E4 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 172E8 800AC6E8 0802B456 */  j          .L800AD158
/* 172EC 800AC6EC 00000000 */   nop
/* 172F0 800AC6F0 24020004 */  addiu      $v0, $zero, 4
/* 172F4 800AC6F4 3C018017 */  lui        $at, %hi(D_801765B8)
/* 172F8 800AC6F8 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 172FC 800AC6FC 0C00CFBF */  jal        func_80033EFC
/* 17300 800AC700 2410003A */   addiu     $s0, $zero, 0x3a
/* 17304 800AC704 24030001 */  addiu      $v1, $zero, 1
/* 17308 800AC708 14430295 */  bne        $v0, $v1, .L800AD160
/* 1730C 800AC70C 00000000 */   nop
/* 17310 800AC710 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17314 800AC714 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17318 800AC718 10400005 */  beqz       $v0, .L800AC730
/* 1731C 800AC71C 00000000 */   nop
/* 17320 800AC720 0C02AB72 */  jal        func_800AADC8
/* 17324 800AC724 00000000 */   nop
/* 17328 800AC728 0802B456 */  j          .L800AD158
/* 1732C 800AC72C 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC730:
/* 17330 800AC730 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17334 800AC734 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17338 800AC738 0C02AD7C */  jal        func_800AB5F0
/* 1733C 800AC73C 00000000 */   nop
/* 17340 800AC740 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17344 800AC744 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17348 800AC748 0802B456 */  j          .L800AD158
/* 1734C 800AC74C 24020022 */   addiu     $v0, $zero, 0x22
/* 17350 800AC750 24020005 */  addiu      $v0, $zero, 5
/* 17354 800AC754 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17358 800AC758 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 1735C 800AC75C 0C00B31E */  jal        func_8002CC78
/* 17360 800AC760 00000000 */   nop
/* 17364 800AC764 24030001 */  addiu      $v1, $zero, 1
/* 17368 800AC768 1443027D */  bne        $v0, $v1, .L800AD160
/* 1736C 800AC76C 2402003B */   addiu     $v0, $zero, 0x3b
/* 17370 800AC770 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 17374 800AC774 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 17378 800AC778 0802B320 */  j          .L800ACC80
/* 1737C 800AC77C 00000000 */   nop
/* 17380 800AC780 3C03800D */  lui        $v1, %hi(D_800D511C)
/* 17384 800AC784 9063511C */  lbu        $v1, %lo(D_800D511C)($v1)
/* 17388 800AC788 24020005 */  addiu      $v0, $zero, 5
/* 1738C 800AC78C 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17390 800AC790 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17394 800AC794 10600005 */  beqz       $v1, .L800AC7AC
/* 17398 800AC798 00000000 */   nop
/* 1739C 800AC79C 0C00F92C */  jal        func_8003E4B0
/* 173A0 800AC7A0 00000000 */   nop
/* 173A4 800AC7A4 0802B1EE */  j          .L800AC7B8
/* 173A8 800AC7A8 00402021 */   addu      $a0, $v0, $zero
.L800AC7AC:
/* 173AC 800AC7AC 0C00F925 */  jal        func_8003E494
/* 173B0 800AC7B0 00000000 */   nop
/* 173B4 800AC7B4 00402021 */  addu       $a0, $v0, $zero
.L800AC7B8:
/* 173B8 800AC7B8 24020005 */  addiu      $v0, $zero, 5
/* 173BC 800AC7BC 108201CE */  beq        $a0, $v0, .L800ACEF8
/* 173C0 800AC7C0 24020003 */   addiu     $v0, $zero, 3
/* 173C4 800AC7C4 14820266 */  bne        $a0, $v0, .L800AD160
/* 173C8 800AC7C8 2402003C */   addiu     $v0, $zero, 0x3c
/* 173CC 800AC7CC 3C01800D */  lui        $at, %hi(D_800D511C)
/* 173D0 800AC7D0 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 173D4 800AC7D4 0802B456 */  j          .L800AD158
/* 173D8 800AC7D8 00000000 */   nop
/* 173DC 800AC7DC 24020005 */  addiu      $v0, $zero, 5
/* 173E0 800AC7E0 3C018017 */  lui        $at, %hi(D_801765B8)
/* 173E4 800AC7E4 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 173E8 800AC7E8 0C00BAEF */  jal        func_8002EBBC
/* 173EC 800AC7EC 2410003D */   addiu     $s0, $zero, 0x3d
/* 173F0 800AC7F0 24030001 */  addiu      $v1, $zero, 1
/* 173F4 800AC7F4 1443025A */  bne        $v0, $v1, .L800AD160
/* 173F8 800AC7F8 00000000 */   nop
/* 173FC 800AC7FC 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17400 800AC800 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17404 800AC804 10400005 */  beqz       $v0, .L800AC81C
/* 17408 800AC808 00000000 */   nop
/* 1740C 800AC80C 0C02AB72 */  jal        func_800AADC8
/* 17410 800AC810 00000000 */   nop
/* 17414 800AC814 0802B456 */  j          .L800AD158
/* 17418 800AC818 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC81C:
/* 1741C 800AC81C 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17420 800AC820 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17424 800AC824 0C02AD7C */  jal        func_800AB5F0
/* 17428 800AC828 00000000 */   nop
/* 1742C 800AC82C 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17430 800AC830 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17434 800AC834 0802B456 */  j          .L800AD158
/* 17438 800AC838 24020022 */   addiu     $v0, $zero, 0x22
/* 1743C 800AC83C 24020006 */  addiu      $v0, $zero, 6
/* 17440 800AC840 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17444 800AC844 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17448 800AC848 0C00A83D */  jal        func_8002A0F4
/* 1744C 800AC84C 00000000 */   nop
/* 17450 800AC850 24030001 */  addiu      $v1, $zero, 1
/* 17454 800AC854 14430242 */  bne        $v0, $v1, .L800AD160
/* 17458 800AC858 2402003E */   addiu     $v0, $zero, 0x3e
/* 1745C 800AC85C 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 17460 800AC860 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 17464 800AC864 0802B320 */  j          .L800ACC80
/* 17468 800AC868 00000000 */   nop
/* 1746C 800AC86C 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17470 800AC870 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 17474 800AC874 24020006 */  addiu      $v0, $zero, 6
/* 17478 800AC878 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1747C 800AC87C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17480 800AC880 0C00E108 */  jal        func_80038420
/* 17484 800AC884 00000000 */   nop
/* 17488 800AC888 00402021 */  addu       $a0, $v0, $zero
/* 1748C 800AC88C 24020005 */  addiu      $v0, $zero, 5
/* 17490 800AC890 10820199 */  beq        $a0, $v0, .L800ACEF8
/* 17494 800AC894 24020003 */   addiu     $v0, $zero, 3
/* 17498 800AC898 14820231 */  bne        $a0, $v0, .L800AD160
/* 1749C 800AC89C 2402003F */   addiu     $v0, $zero, 0x3f
/* 174A0 800AC8A0 3C01800D */  lui        $at, %hi(D_800D511C)
/* 174A4 800AC8A4 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 174A8 800AC8A8 0802B456 */  j          .L800AD158
/* 174AC 800AC8AC 00000000 */   nop
/* 174B0 800AC8B0 24020006 */  addiu      $v0, $zero, 6
/* 174B4 800AC8B4 3C018017 */  lui        $at, %hi(D_801765B8)
/* 174B8 800AC8B8 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 174BC 800AC8BC 0C00A8BE */  jal        func_8002A2F8
/* 174C0 800AC8C0 24100040 */   addiu     $s0, $zero, 0x40
/* 174C4 800AC8C4 24030001 */  addiu      $v1, $zero, 1
/* 174C8 800AC8C8 14430225 */  bne        $v0, $v1, .L800AD160
/* 174CC 800AC8CC 00000000 */   nop
/* 174D0 800AC8D0 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 174D4 800AC8D4 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 174D8 800AC8D8 10400005 */  beqz       $v0, .L800AC8F0
/* 174DC 800AC8DC 00000000 */   nop
/* 174E0 800AC8E0 0C02AB72 */  jal        func_800AADC8
/* 174E4 800AC8E4 00000000 */   nop
/* 174E8 800AC8E8 0802B456 */  j          .L800AD158
/* 174EC 800AC8EC 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC8F0:
/* 174F0 800AC8F0 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 174F4 800AC8F4 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 174F8 800AC8F8 0C02AD7C */  jal        func_800AB5F0
/* 174FC 800AC8FC 00000000 */   nop
/* 17500 800AC900 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17504 800AC904 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17508 800AC908 0802B456 */  j          .L800AD158
/* 1750C 800AC90C 24020022 */   addiu     $v0, $zero, 0x22
/* 17510 800AC910 24020007 */  addiu      $v0, $zero, 7
/* 17514 800AC914 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17518 800AC918 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 1751C 800AC91C 0C00ACED */  jal        func_8002B3B4
/* 17520 800AC920 00000000 */   nop
/* 17524 800AC924 24030001 */  addiu      $v1, $zero, 1
/* 17528 800AC928 1443020D */  bne        $v0, $v1, .L800AD160
/* 1752C 800AC92C 24020041 */   addiu     $v0, $zero, 0x41
/* 17530 800AC930 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 17534 800AC934 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 17538 800AC938 0802B320 */  j          .L800ACC80
/* 1753C 800AC93C 00000000 */   nop
/* 17540 800AC940 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17544 800AC944 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 17548 800AC948 24020007 */  addiu      $v0, $zero, 7
/* 1754C 800AC94C 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17550 800AC950 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17554 800AC954 0C00DBC8 */  jal        func_80036F20
/* 17558 800AC958 00000000 */   nop
/* 1755C 800AC95C 00402021 */  addu       $a0, $v0, $zero
/* 17560 800AC960 24020005 */  addiu      $v0, $zero, 5
/* 17564 800AC964 10820164 */  beq        $a0, $v0, .L800ACEF8
/* 17568 800AC968 24020003 */   addiu     $v0, $zero, 3
/* 1756C 800AC96C 148201FC */  bne        $a0, $v0, .L800AD160
/* 17570 800AC970 24020042 */   addiu     $v0, $zero, 0x42
/* 17574 800AC974 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17578 800AC978 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 1757C 800AC97C 0802B456 */  j          .L800AD158
/* 17580 800AC980 00000000 */   nop
/* 17584 800AC984 24020007 */  addiu      $v0, $zero, 7
/* 17588 800AC988 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1758C 800AC98C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17590 800AC990 0C00ADD2 */  jal        func_8002B748
/* 17594 800AC994 24100043 */   addiu     $s0, $zero, 0x43
/* 17598 800AC998 24030001 */  addiu      $v1, $zero, 1
/* 1759C 800AC99C 144301F0 */  bne        $v0, $v1, .L800AD160
/* 175A0 800AC9A0 00000000 */   nop
/* 175A4 800AC9A4 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 175A8 800AC9A8 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 175AC 800AC9AC 10400005 */  beqz       $v0, .L800AC9C4
/* 175B0 800AC9B0 00000000 */   nop
/* 175B4 800AC9B4 0C02AB72 */  jal        func_800AADC8
/* 175B8 800AC9B8 00000000 */   nop
/* 175BC 800AC9BC 0802B456 */  j          .L800AD158
/* 175C0 800AC9C0 2402001F */   addiu     $v0, $zero, 0x1f
.L800AC9C4:
/* 175C4 800AC9C4 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 175C8 800AC9C8 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 175CC 800AC9CC 0C02AD7C */  jal        func_800AB5F0
/* 175D0 800AC9D0 00000000 */   nop
/* 175D4 800AC9D4 3C01800D */  lui        $at, %hi(D_800D511A)
/* 175D8 800AC9D8 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 175DC 800AC9DC 0802B456 */  j          .L800AD158
/* 175E0 800AC9E0 24020022 */   addiu     $v0, $zero, 0x22
/* 175E4 800AC9E4 24020008 */  addiu      $v0, $zero, 8
/* 175E8 800AC9E8 3C018017 */  lui        $at, %hi(D_801765B8)
/* 175EC 800AC9EC AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 175F0 800AC9F0 0C00BA21 */  jal        func_8002E884
/* 175F4 800AC9F4 00000000 */   nop
/* 175F8 800AC9F8 24030001 */  addiu      $v1, $zero, 1
/* 175FC 800AC9FC 144301D8 */  bne        $v0, $v1, .L800AD160
/* 17600 800ACA00 24020044 */   addiu     $v0, $zero, 0x44
/* 17604 800ACA04 0802B456 */  j          .L800AD158
/* 17608 800ACA08 00000000 */   nop
/* 1760C 800ACA0C 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17610 800ACA10 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 17614 800ACA14 24020008 */  addiu      $v0, $zero, 8
/* 17618 800ACA18 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1761C 800ACA1C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17620 800ACA20 0C009FE9 */  jal        func_80027FA4
/* 17624 800ACA24 00000000 */   nop
/* 17628 800ACA28 00402021 */  addu       $a0, $v0, $zero
/* 1762C 800ACA2C 24020005 */  addiu      $v0, $zero, 5
/* 17630 800ACA30 10820131 */  beq        $a0, $v0, .L800ACEF8
/* 17634 800ACA34 24020003 */   addiu     $v0, $zero, 3
/* 17638 800ACA38 148201C9 */  bne        $a0, $v0, .L800AD160
/* 1763C 800ACA3C 24020045 */   addiu     $v0, $zero, 0x45
/* 17640 800ACA40 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17644 800ACA44 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 17648 800ACA48 0802B456 */  j          .L800AD158
/* 1764C 800ACA4C 00000000 */   nop
/* 17650 800ACA50 24020008 */  addiu      $v0, $zero, 8
/* 17654 800ACA54 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17658 800ACA58 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 1765C 800ACA5C 0C00BA7F */  jal        func_8002E9FC
/* 17660 800ACA60 24100046 */   addiu     $s0, $zero, 0x46
/* 17664 800ACA64 24030001 */  addiu      $v1, $zero, 1
/* 17668 800ACA68 144301BD */  bne        $v0, $v1, .L800AD160
/* 1766C 800ACA6C 00000000 */   nop
/* 17670 800ACA70 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17674 800ACA74 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17678 800ACA78 10400005 */  beqz       $v0, .L800ACA90
/* 1767C 800ACA7C 00000000 */   nop
/* 17680 800ACA80 0C02AB72 */  jal        func_800AADC8
/* 17684 800ACA84 00000000 */   nop
/* 17688 800ACA88 0802B456 */  j          .L800AD158
/* 1768C 800ACA8C 2402001F */   addiu     $v0, $zero, 0x1f
.L800ACA90:
/* 17690 800ACA90 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17694 800ACA94 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17698 800ACA98 0C02AD7C */  jal        func_800AB5F0
/* 1769C 800ACA9C 00000000 */   nop
/* 176A0 800ACAA0 3C01800D */  lui        $at, %hi(D_800D511A)
/* 176A4 800ACAA4 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 176A8 800ACAA8 0802B456 */  j          .L800AD158
/* 176AC 800ACAAC 24020022 */   addiu     $v0, $zero, 0x22
/* 176B0 800ACAB0 24020009 */  addiu      $v0, $zero, 9
/* 176B4 800ACAB4 3C018017 */  lui        $at, %hi(D_801765B8)
/* 176B8 800ACAB8 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 176BC 800ACABC 0C00C854 */  jal        func_80032150
/* 176C0 800ACAC0 00000000 */   nop
/* 176C4 800ACAC4 24030001 */  addiu      $v1, $zero, 1
/* 176C8 800ACAC8 144301A5 */  bne        $v0, $v1, .L800AD160
/* 176CC 800ACACC 24020047 */   addiu     $v0, $zero, 0x47
/* 176D0 800ACAD0 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 176D4 800ACAD4 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 176D8 800ACAD8 0802B320 */  j          .L800ACC80
/* 176DC 800ACADC 00000000 */   nop
/* 176E0 800ACAE0 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 176E4 800ACAE4 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 176E8 800ACAE8 24020009 */  addiu      $v0, $zero, 9
/* 176EC 800ACAEC 3C018017 */  lui        $at, %hi(D_801765B8)
/* 176F0 800ACAF0 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 176F4 800ACAF4 0C00F16C */  jal        func_8003C5B0
/* 176F8 800ACAF8 00000000 */   nop
/* 176FC 800ACAFC 00402021 */  addu       $a0, $v0, $zero
/* 17700 800ACB00 24020005 */  addiu      $v0, $zero, 5
/* 17704 800ACB04 108200FC */  beq        $a0, $v0, .L800ACEF8
/* 17708 800ACB08 24020003 */   addiu     $v0, $zero, 3
/* 1770C 800ACB0C 14820194 */  bne        $a0, $v0, .L800AD160
/* 17710 800ACB10 24020048 */   addiu     $v0, $zero, 0x48
/* 17714 800ACB14 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17718 800ACB18 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 1771C 800ACB1C 0802B456 */  j          .L800AD158
/* 17720 800ACB20 00000000 */   nop
/* 17724 800ACB24 24020009 */  addiu      $v0, $zero, 9
/* 17728 800ACB28 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1772C 800ACB2C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17730 800ACB30 0C00C9A1 */  jal        func_80032684
/* 17734 800ACB34 24100049 */   addiu     $s0, $zero, 0x49
/* 17738 800ACB38 24030001 */  addiu      $v1, $zero, 1
/* 1773C 800ACB3C 14430188 */  bne        $v0, $v1, .L800AD160
/* 17740 800ACB40 00000000 */   nop
/* 17744 800ACB44 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17748 800ACB48 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 1774C 800ACB4C 10400005 */  beqz       $v0, .L800ACB64
/* 17750 800ACB50 00000000 */   nop
/* 17754 800ACB54 0C02AB72 */  jal        func_800AADC8
/* 17758 800ACB58 00000000 */   nop
/* 1775C 800ACB5C 0802B456 */  j          .L800AD158
/* 17760 800ACB60 2402001F */   addiu     $v0, $zero, 0x1f
.L800ACB64:
/* 17764 800ACB64 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17768 800ACB68 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 1776C 800ACB6C 0C02AD7C */  jal        func_800AB5F0
/* 17770 800ACB70 00000000 */   nop
/* 17774 800ACB74 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17778 800ACB78 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 1777C 800ACB7C 0802B456 */  j          .L800AD158
/* 17780 800ACB80 24020022 */   addiu     $v0, $zero, 0x22
/* 17784 800ACB84 2402000A */  addiu      $v0, $zero, 0xa
/* 17788 800ACB88 3C018017 */  lui        $at, %hi(D_801765B8)
/* 1778C 800ACB8C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17790 800ACB90 0C00BEEB */  jal        func_8002FBAC
/* 17794 800ACB94 00000000 */   nop
/* 17798 800ACB98 24030001 */  addiu      $v1, $zero, 1
/* 1779C 800ACB9C 14430170 */  bne        $v0, $v1, .L800AD160
/* 177A0 800ACBA0 2402004A */   addiu     $v0, $zero, 0x4a
/* 177A4 800ACBA4 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 177A8 800ACBA8 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* 177AC 800ACBAC 0802B320 */  j          .L800ACC80
/* 177B0 800ACBB0 00000000 */   nop
/* 177B4 800ACBB4 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 177B8 800ACBB8 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 177BC 800ACBBC 2402000A */  addiu      $v0, $zero, 0xa
/* 177C0 800ACBC0 3C018017 */  lui        $at, %hi(D_801765B8)
/* 177C4 800ACBC4 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 177C8 800ACBC8 0C00EC24 */  jal        func_8003B090
/* 177CC 800ACBCC 00000000 */   nop
/* 177D0 800ACBD0 00402021 */  addu       $a0, $v0, $zero
/* 177D4 800ACBD4 24020005 */  addiu      $v0, $zero, 5
/* 177D8 800ACBD8 108200C7 */  beq        $a0, $v0, .L800ACEF8
/* 177DC 800ACBDC 24020003 */   addiu     $v0, $zero, 3
/* 177E0 800ACBE0 1482015F */  bne        $a0, $v0, .L800AD160
/* 177E4 800ACBE4 2402004B */   addiu     $v0, $zero, 0x4b
/* 177E8 800ACBE8 3C01800D */  lui        $at, %hi(D_800D511C)
/* 177EC 800ACBEC A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 177F0 800ACBF0 0802B456 */  j          .L800AD158
/* 177F4 800ACBF4 00000000 */   nop
/* 177F8 800ACBF8 2402000A */  addiu      $v0, $zero, 0xa
/* 177FC 800ACBFC 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17800 800ACC00 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17804 800ACC04 0C00CA01 */  jal        func_80032804
/* 17808 800ACC08 2410004C */   addiu     $s0, $zero, 0x4c
/* 1780C 800ACC0C 24030001 */  addiu      $v1, $zero, 1
/* 17810 800ACC10 14430153 */  bne        $v0, $v1, .L800AD160
/* 17814 800ACC14 00000000 */   nop
/* 17818 800ACC18 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 1781C 800ACC1C 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17820 800ACC20 10400005 */  beqz       $v0, .L800ACC38
/* 17824 800ACC24 00000000 */   nop
/* 17828 800ACC28 0C02AB72 */  jal        func_800AADC8
/* 1782C 800ACC2C 00000000 */   nop
/* 17830 800ACC30 0802B456 */  j          .L800AD158
/* 17834 800ACC34 2402001F */   addiu     $v0, $zero, 0x1f
.L800ACC38:
/* 17838 800ACC38 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 1783C 800ACC3C 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17840 800ACC40 0C02AD7C */  jal        func_800AB5F0
/* 17844 800ACC44 00000000 */   nop
/* 17848 800ACC48 3C01800D */  lui        $at, %hi(D_800D511A)
/* 1784C 800ACC4C A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17850 800ACC50 0802B456 */  j          .L800AD158
/* 17854 800ACC54 24020022 */   addiu     $v0, $zero, 0x22
/* 17858 800ACC58 2402000B */  addiu      $v0, $zero, 0xb
/* 1785C 800ACC5C 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17860 800ACC60 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17864 800ACC64 0C00C10F */  jal        func_8003043C
/* 17868 800ACC68 00000000 */   nop
/* 1786C 800ACC6C 24030001 */  addiu      $v1, $zero, 1
/* 17870 800ACC70 1443013B */  bne        $v0, $v1, .L800AD160
/* 17874 800ACC74 2402004D */   addiu     $v0, $zero, 0x4d
/* 17878 800ACC78 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* 1787C 800ACC7C 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
.L800ACC80:
/* 17880 800ACC80 3C048017 */  lui        $a0, %hi(D_8016D6D2)
/* 17884 800ACC84 2484D6D2 */  addiu      $a0, $a0, %lo(D_8016D6D2)
/* 17888 800ACC88 3C01800D */  lui        $at, %hi(D_800D5114)
/* 1788C 800ACC8C A4225114 */  sh         $v0, %lo(D_800D5114)($at)
/* 17890 800ACC90 000310C0 */  sll        $v0, $v1, 3
/* 17894 800ACC94 00431023 */  subu       $v0, $v0, $v1
/* 17898 800ACC98 3C038017 */  lui        $v1, %hi(D_801765B8)
/* 1789C 800ACC9C 8C6365B8 */  lw         $v1, %lo(D_801765B8)($v1)
/* 178A0 800ACCA0 000210C0 */  sll        $v0, $v0, 3
/* 178A4 800ACCA4 00441021 */  addu       $v0, $v0, $a0
/* 178A8 800ACCA8 00031840 */  sll        $v1, $v1, 1
/* 178AC 800ACCAC 00621821 */  addu       $v1, $v1, $v0
/* 178B0 800ACCB0 0802B458 */  j          .L800AD160
/* 178B4 800ACCB4 A4600000 */   sh        $zero, ($v1)
/* 178B8 800ACCB8 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 178BC 800ACCBC 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 178C0 800ACCC0 2402000B */  addiu      $v0, $zero, 0xb
/* 178C4 800ACCC4 3C018017 */  lui        $at, %hi(D_801765B8)
/* 178C8 800ACCC8 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 178CC 800ACCCC 0C011D18 */  jal        func_80047460
/* 178D0 800ACCD0 00000000 */   nop
/* 178D4 800ACCD4 00402021 */  addu       $a0, $v0, $zero
/* 178D8 800ACCD8 24020005 */  addiu      $v0, $zero, 5
/* 178DC 800ACCDC 10820086 */  beq        $a0, $v0, .L800ACEF8
/* 178E0 800ACCE0 24020003 */   addiu     $v0, $zero, 3
/* 178E4 800ACCE4 1482011E */  bne        $a0, $v0, .L800AD160
/* 178E8 800ACCE8 2402004E */   addiu     $v0, $zero, 0x4e
/* 178EC 800ACCEC 3C01800D */  lui        $at, %hi(D_800D511C)
/* 178F0 800ACCF0 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 178F4 800ACCF4 0802B456 */  j          .L800AD158
/* 178F8 800ACCF8 00000000 */   nop
/* 178FC 800ACCFC 2402000B */  addiu      $v0, $zero, 0xb
/* 17900 800ACD00 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17904 800ACD04 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17908 800ACD08 0C00C1D6 */  jal        func_80030758
/* 1790C 800ACD0C 2410004F */   addiu     $s0, $zero, 0x4f
/* 17910 800ACD10 24030001 */  addiu      $v1, $zero, 1
/* 17914 800ACD14 14430112 */  bne        $v0, $v1, .L800AD160
/* 17918 800ACD18 00000000 */   nop
/* 1791C 800ACD1C 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17920 800ACD20 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17924 800ACD24 10400005 */  beqz       $v0, .L800ACD3C
/* 17928 800ACD28 00000000 */   nop
/* 1792C 800ACD2C 0C02AB72 */  jal        func_800AADC8
/* 17930 800ACD30 00000000 */   nop
/* 17934 800ACD34 0802B456 */  j          .L800AD158
/* 17938 800ACD38 2402001F */   addiu     $v0, $zero, 0x1f
.L800ACD3C:
/* 1793C 800ACD3C 3C048017 */  lui        $a0, %hi(D_801765BA)
/* 17940 800ACD40 848465BA */  lh         $a0, %lo(D_801765BA)($a0)
/* 17944 800ACD44 0C02AD7C */  jal        func_800AB5F0
/* 17948 800ACD48 00000000 */   nop
/* 1794C 800ACD4C 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17950 800ACD50 A430511A */  sh         $s0, %lo(D_800D511A)($at)
/* 17954 800ACD54 0802B456 */  j          .L800AD158
/* 17958 800ACD58 24020022 */   addiu     $v0, $zero, 0x22
/* 1795C 800ACD5C 2402000C */  addiu      $v0, $zero, 0xc
/* 17960 800ACD60 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17964 800ACD64 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17968 800ACD68 0C00E578 */  jal        func_800395E0
/* 1796C 800ACD6C 00000000 */   nop
/* 17970 800ACD70 24030001 */  addiu      $v1, $zero, 1
/* 17974 800ACD74 144300FA */  bne        $v0, $v1, .L800AD160
/* 17978 800ACD78 24020050 */   addiu     $v0, $zero, 0x50
/* 1797C 800ACD7C 0802B456 */  j          .L800AD158
/* 17980 800ACD80 00000000 */   nop
/* 17984 800ACD84 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17988 800ACD88 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 1798C 800ACD8C 2402000C */  addiu      $v0, $zero, 0xc
/* 17990 800ACD90 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17994 800ACD94 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17998 800ACD98 0C00A006 */  jal        func_80028018
/* 1799C 800ACD9C 00000000 */   nop
/* 179A0 800ACDA0 00402021 */  addu       $a0, $v0, $zero
/* 179A4 800ACDA4 24020005 */  addiu      $v0, $zero, 5
/* 179A8 800ACDA8 10820053 */  beq        $a0, $v0, .L800ACEF8
/* 179AC 800ACDAC 24020003 */   addiu     $v0, $zero, 3
/* 179B0 800ACDB0 148200EB */  bne        $a0, $v0, .L800AD160
/* 179B4 800ACDB4 00000000 */   nop
/* 179B8 800ACDB8 3C01800D */  lui        $at, %hi(D_800D511C)
/* 179BC 800ACDBC A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 179C0 800ACDC0 0C02AD7C */  jal        func_800AB5F0
/* 179C4 800ACDC4 2404000C */   addiu     $a0, $zero, 0xc
/* 179C8 800ACDC8 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 179CC 800ACDCC 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 179D0 800ACDD0 144000E1 */  bnez       $v0, .L800AD158
/* 179D4 800ACDD4 24020018 */   addiu     $v0, $zero, 0x18
/* 179D8 800ACDD8 3C028015 */  lui        $v0, %hi(D_80149E28)
/* 179DC 800ACDDC 90429E28 */  lbu        $v0, %lo(D_80149E28)($v0)
/* 179E0 800ACDE0 144000DD */  bnez       $v0, .L800AD158
/* 179E4 800ACDE4 24020051 */   addiu     $v0, $zero, 0x51
/* 179E8 800ACDE8 0802B456 */  j          .L800AD158
/* 179EC 800ACDEC 24020018 */   addiu     $v0, $zero, 0x18
/* 179F0 800ACDF0 2402000D */  addiu      $v0, $zero, 0xd
/* 179F4 800ACDF4 3C018017 */  lui        $at, %hi(D_801765B8)
/* 179F8 800ACDF8 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 179FC 800ACDFC 0C00EBBB */  jal        func_8003AEEC
/* 17A00 800ACE00 00000000 */   nop
/* 17A04 800ACE04 24030001 */  addiu      $v1, $zero, 1
/* 17A08 800ACE08 144300D5 */  bne        $v0, $v1, .L800AD160
/* 17A0C 800ACE0C 24020052 */   addiu     $v0, $zero, 0x52
/* 17A10 800ACE10 0802B456 */  j          .L800AD158
/* 17A14 800ACE14 00000000 */   nop
/* 17A18 800ACE18 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17A1C 800ACE1C 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 17A20 800ACE20 2402000D */  addiu      $v0, $zero, 0xd
/* 17A24 800ACE24 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17A28 800ACE28 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17A2C 800ACE2C 0C00A023 */  jal        func_8002808C
/* 17A30 800ACE30 00000000 */   nop
/* 17A34 800ACE34 00402021 */  addu       $a0, $v0, $zero
/* 17A38 800ACE38 24020005 */  addiu      $v0, $zero, 5
/* 17A3C 800ACE3C 1082002E */  beq        $a0, $v0, .L800ACEF8
/* 17A40 800ACE40 24020003 */   addiu     $v0, $zero, 3
/* 17A44 800ACE44 148200C6 */  bne        $a0, $v0, .L800AD160
/* 17A48 800ACE48 00000000 */   nop
/* 17A4C 800ACE4C 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17A50 800ACE50 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 17A54 800ACE54 0C02AD7C */  jal        func_800AB5F0
/* 17A58 800ACE58 2404000D */   addiu     $a0, $zero, 0xd
/* 17A5C 800ACE5C 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17A60 800ACE60 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17A64 800ACE64 144000BC */  bnez       $v0, .L800AD158
/* 17A68 800ACE68 24020019 */   addiu     $v0, $zero, 0x19
/* 17A6C 800ACE6C 3C038015 */  lui        $v1, %hi(D_80149E28)
/* 17A70 800ACE70 90639E28 */  lbu        $v1, %lo(D_80149E28)($v1)
/* 17A74 800ACE74 24020001 */  addiu      $v0, $zero, 1
/* 17A78 800ACE78 14620003 */  bne        $v1, $v0, .L800ACE88
/* 17A7C 800ACE7C 2402000E */   addiu     $v0, $zero, 0xe
/* 17A80 800ACE80 0802B456 */  j          .L800AD158
/* 17A84 800ACE84 24020019 */   addiu     $v0, $zero, 0x19
.L800ACE88:
/* 17A88 800ACE88 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17A8C 800ACE8C AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17A90 800ACE90 24020053 */  addiu      $v0, $zero, 0x53
/* 17A94 800ACE94 3C01800D */  lui        $at, %hi(D_800D511A)
/* 17A98 800ACE98 A422511A */  sh         $v0, %lo(D_800D511A)($at)
/* 17A9C 800ACE9C 0802B456 */  j          .L800AD158
/* 17AA0 800ACEA0 24020023 */   addiu     $v0, $zero, 0x23
/* 17AA4 800ACEA4 2402000E */  addiu      $v0, $zero, 0xe
/* 17AA8 800ACEA8 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17AAC 800ACEAC AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17AB0 800ACEB0 0C00F44F */  jal        func_8003D13C
/* 17AB4 800ACEB4 00000000 */   nop
/* 17AB8 800ACEB8 24030001 */  addiu      $v1, $zero, 1
/* 17ABC 800ACEBC 144300A8 */  bne        $v0, $v1, .L800AD160
/* 17AC0 800ACEC0 24020054 */   addiu     $v0, $zero, 0x54
/* 17AC4 800ACEC4 0802B456 */  j          .L800AD158
/* 17AC8 800ACEC8 00000000 */   nop
/* 17ACC 800ACECC 3C04800D */  lui        $a0, %hi(D_800D511C)
/* 17AD0 800ACED0 9084511C */  lbu        $a0, %lo(D_800D511C)($a0)
/* 17AD4 800ACED4 2402000E */  addiu      $v0, $zero, 0xe
/* 17AD8 800ACED8 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17ADC 800ACEDC AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17AE0 800ACEE0 0C00A040 */  jal        func_80028100
/* 17AE4 800ACEE4 00000000 */   nop
/* 17AE8 800ACEE8 00402021 */  addu       $a0, $v0, $zero
/* 17AEC 800ACEEC 24020005 */  addiu      $v0, $zero, 5
/* 17AF0 800ACEF0 1482000C */  bne        $a0, $v0, .L800ACF24
/* 17AF4 800ACEF4 24020003 */   addiu     $v0, $zero, 3
.L800ACEF8:
/* 17AF8 800ACEF8 3C03800D */  lui        $v1, %hi(D_800D5114)
/* 17AFC 800ACEFC 94635114 */  lhu        $v1, %lo(D_800D5114)($v1)
/* 17B00 800ACF00 24020024 */  addiu      $v0, $zero, 0x24
/* 17B04 800ACF04 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17B08 800ACF08 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 17B0C 800ACF0C 3C01800D */  lui        $at, %hi(D_800D5114)
/* 17B10 800ACF10 A4225114 */  sh         $v0, %lo(D_800D5114)($at)
/* 17B14 800ACF14 3C01800D */  lui        $at, %hi(D_800D5118)
/* 17B18 800ACF18 A4235118 */  sh         $v1, %lo(D_800D5118)($at)
/* 17B1C 800ACF1C 0802B458 */  j          .L800AD160
/* 17B20 800ACF20 00000000 */   nop
.L800ACF24:
/* 17B24 800ACF24 1482008E */  bne        $a0, $v0, .L800AD160
/* 17B28 800ACF28 00000000 */   nop
/* 17B2C 800ACF2C 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17B30 800ACF30 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 17B34 800ACF34 0C02AD7C */  jal        func_800AB5F0
/* 17B38 800ACF38 2404000E */   addiu     $a0, $zero, 0xe
/* 17B3C 800ACF3C 0802B456 */  j          .L800AD158
/* 17B40 800ACF40 2402001A */   addiu     $v0, $zero, 0x1a
/* 17B44 800ACF44 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17B48 800ACF48 AC2065B8 */  sw         $zero, %lo(D_801765B8)($at)
/* 17B4C 800ACF4C 0C00A6C4 */  jal        func_80029B10
/* 17B50 800ACF50 00000000 */   nop
/* 17B54 800ACF54 24030005 */  addiu      $v1, $zero, 5
/* 17B58 800ACF58 14430081 */  bne        $v0, $v1, .L800AD160
/* 17B5C 800ACF5C 24020015 */   addiu     $v0, $zero, 0x15
/* 17B60 800ACF60 0802B456 */  j          .L800AD158
/* 17B64 800ACF64 00000000 */   nop
/* 17B68 800ACF68 0C009944 */  jal        func_80026510
/* 17B6C 800ACF6C 00000000 */   nop
/* 17B70 800ACF70 24030001 */  addiu      $v1, $zero, 1
/* 17B74 800ACF74 1443007A */  bne        $v0, $v1, .L800AD160
/* 17B78 800ACF78 24030023 */   addiu     $v1, $zero, 0x23
/* 17B7C 800ACF7C 3C028017 */  lui        $v0, %hi(D_801765B8)
/* 17B80 800ACF80 8C4265B8 */  lw         $v0, %lo(D_801765B8)($v0)
/* 17B84 800ACF84 3C01800D */  lui        $at, %hi(D_800D5114)
/* 17B88 800ACF88 A4235114 */  sh         $v1, %lo(D_800D5114)($at)
/* 17B8C 800ACF8C 24420001 */  addiu      $v0, $v0, 1
/* 17B90 800ACF90 3C018017 */  lui        $at, %hi(D_801765B8)
/* 17B94 800ACF94 AC2265B8 */  sw         $v0, %lo(D_801765B8)($at)
/* 17B98 800ACF98 0802B458 */  j          .L800AD160
/* 17B9C 800ACF9C 00000000 */   nop
/* 17BA0 800ACFA0 0C009FAC */  jal        func_80027EB0
/* 17BA4 800ACFA4 00000000 */   nop
/* 17BA8 800ACFA8 24030001 */  addiu      $v1, $zero, 1
/* 17BAC 800ACFAC 1443006C */  bne        $v0, $v1, .L800AD160
/* 17BB0 800ACFB0 00000000 */   nop
/* 17BB4 800ACFB4 3C02800D */  lui        $v0, %hi(D_800D511A)
/* 17BB8 800ACFB8 9442511A */  lhu        $v0, %lo(D_800D511A)($v0)
/* 17BBC 800ACFBC 0802B456 */  j          .L800AD158
/* 17BC0 800ACFC0 00000000 */   nop
/* 17BC4 800ACFC4 0C00A098 */  jal        func_80028260
/* 17BC8 800ACFC8 00000000 */   nop
/* 17BCC 800ACFCC 00402021 */  addu       $a0, $v0, $zero
/* 17BD0 800ACFD0 24020004 */  addiu      $v0, $zero, 4
/* 17BD4 800ACFD4 1482000A */  bne        $a0, $v0, .L800AD000
/* 17BD8 800ACFD8 24020005 */   addiu     $v0, $zero, 5
/* 17BDC 800ACFDC 3C03800D */  lui        $v1, %hi(D_800D5118)
/* 17BE0 800ACFE0 94635118 */  lhu        $v1, %lo(D_800D5118)($v1)
/* 17BE4 800ACFE4 24020001 */  addiu      $v0, $zero, 1
/* 17BE8 800ACFE8 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17BEC 800ACFEC A022511C */  sb         $v0, %lo(D_800D511C)($at)
/* 17BF0 800ACFF0 3C01800D */  lui        $at, %hi(D_800D5114)
/* 17BF4 800ACFF4 A4235114 */  sh         $v1, %lo(D_800D5114)($at)
/* 17BF8 800ACFF8 0802B458 */  j          .L800AD160
/* 17BFC 800ACFFC 00000000 */   nop
.L800AD000:
/* 17C00 800AD000 14820057 */  bne        $a0, $v0, .L800AD160
/* 17C04 800AD004 00000000 */   nop
/* 17C08 800AD008 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17C0C 800AD00C 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17C10 800AD010 14400051 */  bnez       $v0, .L800AD158
/* 17C14 800AD014 2402001F */   addiu     $v0, $zero, 0x1f
/* 17C18 800AD018 3C01800D */  lui        $at, %hi(D_800D511C)
/* 17C1C 800AD01C A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 17C20 800AD020 0802B456 */  j          .L800AD158
/* 17C24 800AD024 24020025 */   addiu     $v0, $zero, 0x25
/* 17C28 800AD028 0C00A298 */  jal        func_80028A60
/* 17C2C 800AD02C 00000000 */   nop
/* 17C30 800AD030 24030001 */  addiu      $v1, $zero, 1
/* 17C34 800AD034 1443004A */  bne        $v0, $v1, .L800AD160
/* 17C38 800AD038 24020015 */   addiu     $v0, $zero, 0x15
/* 17C3C 800AD03C 0802B456 */  j          .L800AD158
/* 17C40 800AD040 00000000 */   nop
/* 17C44 800AD044 3C018015 */  lui        $at, %hi(D_80149E28)
/* 17C48 800AD048 A0209E28 */  sb         $zero, %lo(D_80149E28)($at)
/* 17C4C 800AD04C 0C00F67C */  jal        func_8003D9F0
/* 17C50 800AD050 00000000 */   nop
/* 17C54 800AD054 24030001 */  addiu      $v1, $zero, 1
/* 17C58 800AD058 14430041 */  bne        $v0, $v1, .L800AD160
/* 17C5C 800AD05C 00000000 */   nop
/* 17C60 800AD060 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17C64 800AD064 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17C68 800AD068 1440003B */  bnez       $v0, .L800AD158
/* 17C6C 800AD06C 2402001F */   addiu     $v0, $zero, 0x1f
/* 17C70 800AD070 0802B456 */  j          .L800AD158
/* 17C74 800AD074 24020025 */   addiu     $v0, $zero, 0x25
/* 17C78 800AD078 24020001 */  addiu      $v0, $zero, 1
/* 17C7C 800AD07C 3C018015 */  lui        $at, %hi(D_80149E28)
/* 17C80 800AD080 A0229E28 */  sb         $v0, %lo(D_80149E28)($at)
/* 17C84 800AD084 0C00F67C */  jal        func_8003D9F0
/* 17C88 800AD088 00000000 */   nop
/* 17C8C 800AD08C 24030001 */  addiu      $v1, $zero, 1
/* 17C90 800AD090 14430033 */  bne        $v0, $v1, .L800AD160
/* 17C94 800AD094 00000000 */   nop
/* 17C98 800AD098 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17C9C 800AD09C 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17CA0 800AD0A0 1440002D */  bnez       $v0, .L800AD158
/* 17CA4 800AD0A4 2402001F */   addiu     $v0, $zero, 0x1f
/* 17CA8 800AD0A8 0802B456 */  j          .L800AD158
/* 17CAC 800AD0AC 24020025 */   addiu     $v0, $zero, 0x25
/* 17CB0 800AD0B0 24020002 */  addiu      $v0, $zero, 2
/* 17CB4 800AD0B4 3C018015 */  lui        $at, %hi(D_80149E28)
/* 17CB8 800AD0B8 A0229E28 */  sb         $v0, %lo(D_80149E28)($at)
/* 17CBC 800AD0BC 0C00F67C */  jal        func_8003D9F0
/* 17CC0 800AD0C0 00000000 */   nop
/* 17CC4 800AD0C4 24030001 */  addiu      $v1, $zero, 1
/* 17CC8 800AD0C8 14430025 */  bne        $v0, $v1, .L800AD160
/* 17CCC 800AD0CC 00000000 */   nop
/* 17CD0 800AD0D0 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 17CD4 800AD0D4 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 17CD8 800AD0D8 1440001F */  bnez       $v0, .L800AD158
/* 17CDC 800AD0DC 2402001F */   addiu     $v0, $zero, 0x1f
/* 17CE0 800AD0E0 0802B456 */  j          .L800AD158
/* 17CE4 800AD0E4 24020025 */   addiu     $v0, $zero, 0x25
/* 17CE8 800AD0E8 0C00B0B0 */  jal        func_8002C2C0
/* 17CEC 800AD0EC 00000000 */   nop
/* 17CF0 800AD0F0 0802B453 */  j          .L800AD14C
/* 17CF4 800AD0F4 24030001 */   addiu     $v1, $zero, 1
/* 17CF8 800AD0F8 0C013E00 */  jal        func_8004F800
/* 17CFC 800AD0FC 00000000 */   nop
/* 17D00 800AD100 0802B453 */  j          .L800AD14C
/* 17D04 800AD104 24030001 */   addiu     $v1, $zero, 1
/* 17D08 800AD108 0C00C00C */  jal        func_80030030
/* 17D0C 800AD10C 00000000 */   nop
/* 17D10 800AD110 0802B453 */  j          .L800AD14C
/* 17D14 800AD114 24030001 */   addiu     $v1, $zero, 1
/* 17D18 800AD118 0C00B50C */  jal        func_8002D430
/* 17D1C 800AD11C 00000000 */   nop
/* 17D20 800AD120 00402021 */  addu       $a0, $v0, $zero
/* 17D24 800AD124 24020002 */  addiu      $v0, $zero, 2
/* 17D28 800AD128 1082000A */  beq        $a0, $v0, .L800AD154
/* 17D2C 800AD12C 24020001 */   addiu     $v0, $zero, 1
/* 17D30 800AD130 1482000B */  bne        $a0, $v0, .L800AD160
/* 17D34 800AD134 24020015 */   addiu     $v0, $zero, 0x15
/* 17D38 800AD138 0802B456 */  j          .L800AD158
/* 17D3C 800AD13C 00000000 */   nop
/* 17D40 800AD140 0C00BA04 */  jal        func_8002E810
/* 17D44 800AD144 00000000 */   nop
/* 17D48 800AD148 24030001 */  addiu      $v1, $zero, 1
.L800AD14C:
/* 17D4C 800AD14C 14430004 */  bne        $v0, $v1, .L800AD160
/* 17D50 800AD150 00000000 */   nop
.L800AD154:
/* 17D54 800AD154 2402001E */  addiu      $v0, $zero, 0x1e
.L800AD158:
/* 17D58 800AD158 3C01800D */  lui        $at, %hi(D_800D5114)
/* 17D5C 800AD15C A4225114 */  sh         $v0, %lo(D_800D5114)($at)
.L800AD160:
/* 17D60 800AD160 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17D64 800AD164 8FB10014 */  lw         $s1, 0x14($sp)
/* 17D68 800AD168 8FB00010 */  lw         $s0, 0x10($sp)
/* 17D6C 800AD16C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 17D70 800AD170 03E00008 */  jr         $ra
/* 17D74 800AD174 00000000 */   nop
/* 17D78 800AD178 00000000 */  nop
/* 17D7C 800AD17C 00000000 */  nop
