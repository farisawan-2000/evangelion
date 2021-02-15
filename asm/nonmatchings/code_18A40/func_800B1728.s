.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1728
/* 1C328 800B1728 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1C32C 800B172C 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1C330 800B1730 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1C334 800B1734 AFB20030 */  sw         $s2, 0x30($sp)
/* 1C338 800B1738 00809021 */  addu       $s2, $a0, $zero
/* 1C33C 800B173C AFBF0038 */  sw         $ra, 0x38($sp)
/* 1C340 800B1740 AFB30034 */  sw         $s3, 0x34($sp)
/* 1C344 800B1744 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1C348 800B1748 AFB00028 */  sw         $s0, 0x28($sp)
/* 1C34C 800B174C 8E530014 */  lw         $s3, 0x14($s2)
/* 1C350 800B1750 AC600000 */  sw         $zero, ($v1)
/* 1C354 800B1754 8E420004 */  lw         $v0, 4($s2)
/* 1C358 800B1758 00002021 */  addu       $a0, $zero, $zero
/* 1C35C 800B175C 00002821 */  addu       $a1, $zero, $zero
/* 1C360 800B1760 AC600020 */  sw         $zero, 0x20($v1)
/* 1C364 800B1764 AC60001C */  sw         $zero, 0x1c($v1)
/* 1C368 800B1768 AC620038 */  sw         $v0, 0x38($v1)
/* 1C36C 800B176C 8E460018 */  lw         $a2, 0x18($s2)
/* 1C370 800B1770 24070001 */  addiu      $a3, $zero, 1
/* 1C374 800B1774 240200B8 */  addiu      $v0, $zero, 0xb8
/* 1C378 800B1778 AC620044 */  sw         $v0, 0x44($v1)
/* 1C37C 800B177C AC660040 */  sw         $a2, 0x40($v1)
/* 1C380 800B1780 8E480010 */  lw         $t0, 0x10($s2)
/* 1C384 800B1784 24020001 */  addiu      $v0, $zero, 1
/* 1C388 800B1788 02603021 */  addu       $a2, $s3, $zero
/* 1C38C 800B178C AC62004C */  sw         $v0, 0x4c($v1)
/* 1C390 800B1790 24020044 */  addiu      $v0, $zero, 0x44
/* 1C394 800B1794 AC600048 */  sw         $zero, 0x48($v1)
/* 1C398 800B1798 AC680024 */  sw         $t0, 0x24($v1)
/* 1C39C 800B179C 0C02F2E4 */  jal        func_800BCB90
/* 1C3A0 800B17A0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C3A4 800B17A4 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1C3A8 800B17A8 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1C3AC 800B17AC AC620034 */  sw         $v0, 0x34($v1)
/* 1C3B0 800B17B0 AC400014 */  sw         $zero, 0x14($v0)
/* 1C3B4 800B17B4 8C630034 */  lw         $v1, 0x34($v1)
/* 1C3B8 800B17B8 8E420004 */  lw         $v0, 4($s2)
/* 1C3BC 800B17BC 00002021 */  addu       $a0, $zero, $zero
/* 1C3C0 800B17C0 AC620018 */  sw         $v0, 0x18($v1)
/* 1C3C4 800B17C4 24020004 */  addiu      $v0, $zero, 4
/* 1C3C8 800B17C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1C3CC 800B17CC 8E470004 */  lw         $a3, 4($s2)
/* 1C3D0 800B17D0 00002821 */  addu       $a1, $zero, $zero
/* 1C3D4 800B17D4 0C02F2E4 */  jal        func_800BCB90
/* 1C3D8 800B17D8 02603021 */   addu      $a2, $s3, $zero
/* 1C3DC 800B17DC 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1C3E0 800B17E0 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1C3E4 800B17E4 00002021 */  addu       $a0, $zero, $zero
/* 1C3E8 800B17E8 00002821 */  addu       $a1, $zero, $zero
/* 1C3EC 800B17EC 8C630034 */  lw         $v1, 0x34($v1)
/* 1C3F0 800B17F0 02603021 */  addu       $a2, $s3, $zero
/* 1C3F4 800B17F4 24070001 */  addiu      $a3, $zero, 1
/* 1C3F8 800B17F8 AC62001C */  sw         $v0, 0x1c($v1)
/* 1C3FC 800B17FC 24020014 */  addiu      $v0, $zero, 0x14
/* 1C400 800B1800 0C02F2E4 */  jal        func_800BCB90
/* 1C404 800B1804 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C408 800B1808 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1C40C 800B180C 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1C410 800B1810 00402021 */  addu       $a0, $v0, $zero
/* 1C414 800B1814 AC640030 */  sw         $a0, 0x30($v1)
/* 1C418 800B1818 9242001C */  lbu        $v0, 0x1c($s2)
/* 1C41C 800B181C 1040000D */  beqz       $v0, .L800B1854
/* 1C420 800B1820 02402821 */   addu      $a1, $s2, $zero
/* 1C424 800B1824 00002021 */  addu       $a0, $zero, $zero
/* 1C428 800B1828 0C02C666 */  jal        func_800B1998
/* 1C42C 800B182C 02603021 */   addu      $a2, $s3, $zero
/* 1C430 800B1830 3C04800F */  lui        $a0, %hi(D_800F17F4)
/* 1C434 800B1834 8C8417F4 */  lw         $a0, %lo(D_800F17F4)($a0)
/* 1C438 800B1838 8C830034 */  lw         $v1, 0x34($a0)
/* 1C43C 800B183C AC620020 */  sw         $v0, 0x20($v1)
/* 1C440 800B1840 8C830030 */  lw         $v1, 0x30($a0)
/* 1C444 800B1844 3C02800B */  lui        $v0, %hi(D_800B42E0)
/* 1C448 800B1848 244242E0 */  addiu      $v0, $v0, %lo(D_800B42E0)
/* 1C44C 800B184C 0802C618 */  j          .L800B1860
/* 1C450 800B1850 AC620004 */   sw        $v0, 4($v1)
.L800B1854:
/* 1C454 800B1854 3C02800B */  lui        $v0, %hi(D_800B2A50)
/* 1C458 800B1858 24422A50 */  addiu      $v0, $v0, %lo(D_800B2A50)
/* 1C45C 800B185C AC820004 */  sw         $v0, 4($a0)
.L800B1860:
/* 1C460 800B1860 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C464 800B1864 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C468 800B1868 00002021 */  addu       $a0, $zero, $zero
/* 1C46C 800B186C AC400004 */  sw         $zero, 4($v0)
/* 1C470 800B1870 AC400008 */  sw         $zero, 8($v0)
/* 1C474 800B1874 AC400014 */  sw         $zero, 0x14($v0)
/* 1C478 800B1878 AC400018 */  sw         $zero, 0x18($v0)
/* 1C47C 800B187C AC40000C */  sw         $zero, 0xc($v0)
/* 1C480 800B1880 AC400010 */  sw         $zero, 0x10($v0)
/* 1C484 800B1884 2402008C */  addiu      $v0, $zero, 0x8c
/* 1C488 800B1888 AFA20010 */  sw         $v0, 0x10($sp)
/* 1C48C 800B188C 8E470004 */  lw         $a3, 4($s2)
/* 1C490 800B1890 00002821 */  addu       $a1, $zero, $zero
/* 1C494 800B1894 0C02F2E4 */  jal        func_800BCB90
/* 1C498 800B1898 02603021 */   addu      $a2, $s3, $zero
/* 1C49C 800B189C 8E430004 */  lw         $v1, 4($s2)
/* 1C4A0 800B18A0 1860001D */  blez       $v1, .L800B1918
/* 1C4A4 800B18A4 00008021 */   addu      $s0, $zero, $zero
/* 1C4A8 800B18A8 00408821 */  addu       $s1, $v0, $zero
.L800B18AC:
/* 1C4AC 800B18AC 3C05800F */  lui        $a1, %hi(D_800F17F4)
/* 1C4B0 800B18B0 8CA517F4 */  lw         $a1, %lo(D_800F17F4)($a1)
/* 1C4B4 800B18B4 02202021 */  addu       $a0, $s1, $zero
/* 1C4B8 800B18B8 0C02F2BF */  jal        func_800BCAFC
/* 1C4BC 800B18BC 24A50004 */   addiu     $a1, $a1, 4
/* 1C4C0 800B18C0 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C4C4 800B18C4 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C4C8 800B18C8 AE200008 */  sw         $zero, 8($s1)
/* 1C4CC 800B18CC 8C450024 */  lw         $a1, 0x24($v0)
/* 1C4D0 800B18D0 02202021 */  addu       $a0, $s1, $zero
/* 1C4D4 800B18D4 0C02CBB7 */  jal        func_800B2EDC
/* 1C4D8 800B18D8 02603021 */   addu      $a2, $s3, $zero
/* 1C4DC 800B18DC 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C4E0 800B18E0 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C4E4 800B18E4 8C440034 */  lw         $a0, 0x34($v0)
/* 1C4E8 800B18E8 8C830014 */  lw         $v1, 0x14($a0)
/* 1C4EC 800B18EC 8C85001C */  lw         $a1, 0x1c($a0)
/* 1C4F0 800B18F0 24620001 */  addiu      $v0, $v1, 1
/* 1C4F4 800B18F4 00031880 */  sll        $v1, $v1, 2
/* 1C4F8 800B18F8 00651821 */  addu       $v1, $v1, $a1
/* 1C4FC 800B18FC AC820014 */  sw         $v0, 0x14($a0)
/* 1C500 800B1900 AC710000 */  sw         $s1, ($v1)
/* 1C504 800B1904 8E420004 */  lw         $v0, 4($s2)
/* 1C508 800B1908 26100001 */  addiu      $s0, $s0, 1
/* 1C50C 800B190C 0202102A */  slt        $v0, $s0, $v0
/* 1C510 800B1910 1440FFE6 */  bnez       $v0, .L800B18AC
/* 1C514 800B1914 2631008C */   addiu     $s1, $s1, 0x8c
.L800B1918:
/* 1C518 800B1918 00002021 */  addu       $a0, $zero, $zero
/* 1C51C 800B191C 2402001C */  addiu      $v0, $zero, 0x1c
/* 1C520 800B1920 AFA20010 */  sw         $v0, 0x10($sp)
/* 1C524 800B1924 8E470008 */  lw         $a3, 8($s2)
/* 1C528 800B1928 00002821 */  addu       $a1, $zero, $zero
/* 1C52C 800B192C 0C02F2E4 */  jal        func_800BCB90
/* 1C530 800B1930 02603021 */   addu      $a2, $s3, $zero
/* 1C534 800B1934 3C04800F */  lui        $a0, %hi(D_800F17F4)
/* 1C538 800B1938 8C8417F4 */  lw         $a0, %lo(D_800F17F4)($a0)
/* 1C53C 800B193C AC80002C */  sw         $zero, 0x2c($a0)
/* 1C540 800B1940 8E430008 */  lw         $v1, 8($s2)
/* 1C544 800B1944 1860000A */  blez       $v1, .L800B1970
/* 1C548 800B1948 00008021 */   addu      $s0, $zero, $zero
/* 1C54C 800B194C 00401821 */  addu       $v1, $v0, $zero
.L800B1950:
/* 1C550 800B1950 8C82002C */  lw         $v0, 0x2c($a0)
/* 1C554 800B1954 AC620000 */  sw         $v0, ($v1)
/* 1C558 800B1958 AC83002C */  sw         $v1, 0x2c($a0)
/* 1C55C 800B195C 8E420008 */  lw         $v0, 8($s2)
/* 1C560 800B1960 26100001 */  addiu      $s0, $s0, 1
/* 1C564 800B1964 0202102A */  slt        $v0, $s0, $v0
/* 1C568 800B1968 1440FFF9 */  bnez       $v0, .L800B1950
/* 1C56C 800B196C 2463001C */   addiu     $v1, $v1, 0x1c
.L800B1970:
/* 1C570 800B1970 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C574 800B1974 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C578 800B1978 AC530028 */  sw         $s3, 0x28($v0)
/* 1C57C 800B197C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 1C580 800B1980 8FB30034 */  lw         $s3, 0x34($sp)
/* 1C584 800B1984 8FB20030 */  lw         $s2, 0x30($sp)
/* 1C588 800B1988 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1C58C 800B198C 8FB00028 */  lw         $s0, 0x28($sp)
/* 1C590 800B1990 03E00008 */  jr         $ra
/* 1C594 800B1994 27BD0040 */   addiu     $sp, $sp, 0x40
