.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C17D0
/* 2C3D0 800C17D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C3D4 800C17D4 3C02A480 */  lui        $v0, 0xa480
/* 2C3D8 800C17D8 34420018 */  ori        $v0, $v0, 0x18
/* 2C3DC 800C17DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 2C3E0 800C17E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C3E4 800C17E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C3E8 800C17E8 8C420000 */  lw         $v0, ($v0)
/* 2C3EC 800C17EC 00808021 */  addu       $s0, $a0, $zero
/* 2C3F0 800C17F0 30420003 */  andi       $v0, $v0, 3
/* 2C3F4 800C17F4 10400003 */  beqz       $v0, .L800C1804
/* 2C3F8 800C17F8 00A08821 */   addu      $s1, $a1, $zero
/* 2C3FC 800C17FC 08030618 */  j          .L800C1860
/* 2C400 800C1800 2402FFFF */   addiu     $v0, $zero, -1
.L800C1804:
/* 2C404 800C1804 24020001 */  addiu      $v0, $zero, 1
/* 2C408 800C1808 16020003 */  bne        $s0, $v0, .L800C1818
/* 2C40C 800C180C 02202021 */   addu      $a0, $s1, $zero
/* 2C410 800C1810 0C031B14 */  jal        func_800C6C50
/* 2C414 800C1814 24050040 */   addiu     $a1, $zero, 0x40
.L800C1818:
/* 2C418 800C1818 0C02F680 */  jal        func_800BDA00
/* 2C41C 800C181C 02202021 */   addu      $a0, $s1, $zero
/* 2C420 800C1820 3C03A480 */  lui        $v1, 0xa480
/* 2C424 800C1824 AC620000 */  sw         $v0, ($v1)
/* 2C428 800C1828 56000003 */  bnezl      $s0, .L800C1838
/* 2C42C 800C182C 3C03A480 */   lui       $v1, 0xa480
/* 2C430 800C1830 0803060F */  j          .L800C183C
/* 2C434 800C1834 34630004 */   ori       $v1, $v1, 4
.L800C1838:
/* 2C438 800C1838 34630010 */  ori        $v1, $v1, 0x10
.L800C183C:
/* 2C43C 800C183C 3C021FC0 */  lui        $v0, 0x1fc0
/* 2C440 800C1840 344207C0 */  ori        $v0, $v0, 0x7c0
/* 2C444 800C1844 AC620000 */  sw         $v0, ($v1)
/* 2C448 800C1848 16000005 */  bnez       $s0, .L800C1860
/* 2C44C 800C184C 00001021 */   addu      $v0, $zero, $zero
/* 2C450 800C1850 02202021 */  addu       $a0, $s1, $zero
/* 2C454 800C1854 0C02F4C4 */  jal        func_800BD310
/* 2C458 800C1858 24050040 */   addiu     $a1, $zero, 0x40
/* 2C45C 800C185C 00001021 */  addu       $v0, $zero, $zero
.L800C1860:
/* 2C460 800C1860 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2C464 800C1864 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C468 800C1868 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C46C 800C186C 03E00008 */  jr         $ra
/* 2C470 800C1870 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2C474 800C1874 00000000 */  nop
/* 2C478 800C1878 00000000 */  nop
/* 2C47C 800C187C 00000000 */  nop
