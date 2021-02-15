.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7BD0
/* 327D0 800C7BD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 327D4 800C7BD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 327D8 800C7BD8 00808021 */  addu       $s0, $a0, $zero
/* 327DC 800C7BDC AFBF0018 */  sw         $ra, 0x18($sp)
/* 327E0 800C7BE0 0C0319D0 */  jal        func_800C6740
/* 327E4 800C7BE4 AFB10014 */   sw        $s1, 0x14($sp)
/* 327E8 800C7BE8 16000004 */  bnez       $s0, .L800C7BFC
/* 327EC 800C7BEC 00408821 */   addu      $s1, $v0, $zero
/* 327F0 800C7BF0 3C10800F */  lui        $s0, %hi(D_800F69C0)
/* 327F4 800C7BF4 08031F06 */  j          .L800C7C18
/* 327F8 800C7BF8 8E1069C0 */   lw        $s0, %lo(D_800F69C0)($s0)
.L800C7BFC:
/* 327FC 800C7BFC 96030010 */  lhu        $v1, 0x10($s0)
/* 32800 800C7C00 24020001 */  addiu      $v0, $zero, 1
/* 32804 800C7C04 10620004 */  beq        $v1, $v0, .L800C7C18
/* 32808 800C7C08 00000000 */   nop
/* 3280C 800C7C0C 8E040008 */  lw         $a0, 8($s0)
/* 32810 800C7C10 0C030744 */  jal        func_800C1D10
/* 32814 800C7C14 02002821 */   addu      $a1, $s0, $zero
.L800C7C18:
/* 32818 800C7C18 3C02800F */  lui        $v0, %hi(D_800F69BC)
/* 3281C 800C7C1C 8C4269BC */  lw         $v0, %lo(D_800F69BC)($v0)
/* 32820 800C7C20 14500008 */  bne        $v0, $s0, .L800C7C44
/* 32824 800C7C24 00402021 */   addu      $a0, $v0, $zero
/* 32828 800C7C28 8E02000C */  lw         $v0, 0xc($s0)
/* 3282C 800C7C2C 3C01800F */  lui        $at, %hi(D_800F69BC)
/* 32830 800C7C30 08031F1D */  j          .L800C7C74
/* 32834 800C7C34 AC2269BC */   sw        $v0, %lo(D_800F69BC)($at)
.L800C7C38:
/* 32838 800C7C38 8E02000C */  lw         $v0, 0xc($s0)
/* 3283C 800C7C3C 08031F1D */  j          .L800C7C74
/* 32840 800C7C40 AC82000C */   sw        $v0, 0xc($a0)
.L800C7C44:
/* 32844 800C7C44 8C830004 */  lw         $v1, 4($a0)
/* 32848 800C7C48 2402FFFF */  addiu      $v0, $zero, -1
/* 3284C 800C7C4C 10620009 */  beq        $v1, $v0, .L800C7C74
/* 32850 800C7C50 00000000 */   nop
/* 32854 800C7C54 2403FFFF */  addiu      $v1, $zero, -1
.L800C7C58:
/* 32858 800C7C58 8C82000C */  lw         $v0, 0xc($a0)
/* 3285C 800C7C5C 1050FFF6 */  beq        $v0, $s0, .L800C7C38
/* 32860 800C7C60 00000000 */   nop
/* 32864 800C7C64 00402021 */  addu       $a0, $v0, $zero
/* 32868 800C7C68 8C820004 */  lw         $v0, 4($a0)
/* 3286C 800C7C6C 1443FFFA */  bne        $v0, $v1, .L800C7C58
/* 32870 800C7C70 00000000 */   nop
.L800C7C74:
/* 32874 800C7C74 3C02800F */  lui        $v0, %hi(D_800F69C0)
/* 32878 800C7C78 8C4269C0 */  lw         $v0, %lo(D_800F69C0)($v0)
/* 3287C 800C7C7C 16020003 */  bne        $s0, $v0, .L800C7C8C
/* 32880 800C7C80 00000000 */   nop
/* 32884 800C7C84 0C03196B */  jal        func_800C65AC
/* 32888 800C7C88 00000000 */   nop
.L800C7C8C:
/* 3288C 800C7C8C 0C0319EC */  jal        func_800C67B0
/* 32890 800C7C90 02202021 */   addu      $a0, $s1, $zero
/* 32894 800C7C94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 32898 800C7C98 8FB10014 */  lw         $s1, 0x14($sp)
/* 3289C 800C7C9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 328A0 800C7CA0 03E00008 */  jr         $ra
/* 328A4 800C7CA4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 328A8 800C7CA8 00000000 */  nop
/* 328AC 800C7CAC 00000000 */  nop
