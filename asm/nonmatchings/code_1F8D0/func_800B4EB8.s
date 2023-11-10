glabel func_800B4EB8
/* 1FAB8 800B4EB8 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FABC 800B4EBC 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FAC0 800B4EC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FAC4 800B4EC4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1FAC8 800B4EC8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FACC 800B4ECC AFB00010 */  sw         $s0, 0x10($sp)
/* 1FAD0 800B4ED0 8C500014 */  lw         $s0, 0x14($v0)
/* 1FAD4 800B4ED4 00803021 */  addu       $a2, $a0, $zero
/* 1FAD8 800B4ED8 16000004 */  bnez       $s0, .L800B4EEC
/* 1FADC 800B4EDC 00008821 */   addu      $s1, $zero, $zero
/* 1FAE0 800B4EE0 8C500004 */  lw         $s0, 0x4($v0)
/* 1FAE4 800B4EE4 1200000B */  beqz       $s0, .L800B4F14
/* 1FAE8 800B4EE8 00000000 */   nop
.L800B4EEC:
/* 1FAEC 800B4EEC 02002021 */  addu       $a0, $s0, $zero
/* 1FAF0 800B4EF0 0C02F2C7 */  jal        func_800BCB1C
/* 1FAF4 800B4EF4 ACD00000 */   sw        $s0, 0x0($a2)
/* 1FAF8 800B4EF8 3C05800F */  lui        $a1, %hi(D_800F17F4)
/* 1FAFC 800B4EFC 8CA517F4 */  lw         $a1, %lo(D_800F17F4)($a1)
/* 1FB00 800B4F00 02002021 */  addu       $a0, $s0, $zero
/* 1FB04 800B4F04 0C02F2BF */  jal        func_800BCAFC
/* 1FB08 800B4F08 24A5000C */   addiu     $a1, $a1, 0xC
/* 1FB0C 800B4F0C 0802D3D9 */  j          .L800B4F64
/* 1FB10 800B4F10 02201021 */   addu      $v0, $s1, $zero
.L800B4F14:
/* 1FB14 800B4F14 8C50000C */  lw         $s0, 0xC($v0)
/* 1FB18 800B4F18 12000012 */  beqz       $s0, .L800B4F64
/* 1FB1C 800B4F1C 02201021 */   addu      $v0, $s1, $zero
.L800B4F20:
/* 1FB20 800B4F20 8E020008 */  lw         $v0, 0x8($s0)
/* 1FB24 800B4F24 84430016 */  lh         $v1, 0x16($v0)
/* 1FB28 800B4F28 00051400 */  sll        $v0, $a1, 16
/* 1FB2C 800B4F2C 00021403 */  sra        $v0, $v0, 16
/* 1FB30 800B4F30 0043102A */  slt        $v0, $v0, $v1
/* 1FB34 800B4F34 14400008 */  bnez       $v0, .L800B4F58
/* 1FB38 800B4F38 00000000 */   nop
/* 1FB3C 800B4F3C 8E020088 */  lw         $v0, 0x88($s0)
/* 1FB40 800B4F40 14400005 */  bnez       $v0, .L800B4F58
/* 1FB44 800B4F44 00000000 */   nop
/* 1FB48 800B4F48 ACD00000 */  sw         $s0, 0x0($a2)
/* 1FB4C 800B4F4C 8E020008 */  lw         $v0, 0x8($s0)
/* 1FB50 800B4F50 24110001 */  addiu      $s1, $zero, 0x1
/* 1FB54 800B4F54 94450016 */  lhu        $a1, 0x16($v0)
.L800B4F58:
/* 1FB58 800B4F58 8E100000 */  lw         $s0, 0x0($s0)
/* 1FB5C 800B4F5C 1600FFF0 */  bnez       $s0, .L800B4F20
/* 1FB60 800B4F60 02201021 */   addu      $v0, $s1, $zero
.L800B4F64:
/* 1FB64 800B4F64 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1FB68 800B4F68 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FB6C 800B4F6C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FB70 800B4F70 03E00008 */  jr         $ra
/* 1FB74 800B4F74 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FB78 800B4F78 00000000 */  nop
/* 1FB7C 800B4F7C 00000000 */  nop
.size func_800B4EB8, . - func_800B4EB8
