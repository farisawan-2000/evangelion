.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C18D4
/* 2C4D4 800C18D4 3C02800F */  lui        $v0, %hi(D_800F69A0)
/* 2C4D8 800C18D8 8C4269A0 */  lw         $v0, %lo(D_800F69A0)($v0)
/* 2C4DC 800C18DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C4E0 800C18E0 1440000F */  bnez       $v0, .L800C1920
/* 2C4E4 800C18E4 AFBF0018 */   sw        $ra, 0x18($sp)
/* 2C4E8 800C18E8 24020001 */  addiu      $v0, $zero, 1
/* 2C4EC 800C18EC 3C01800F */  lui        $at, %hi(D_800F69A0)
/* 2C4F0 800C18F0 AC2269A0 */  sw         $v0, %lo(D_800F69A0)($at)
/* 2C4F4 800C18F4 3C048017 */  lui        $a0, %hi(D_801765A0)
/* 2C4F8 800C18F8 248465A0 */  addiu      $a0, $a0, %lo(D_801765A0)
/* 2C4FC 800C18FC 3C058015 */  lui        $a1, %hi(D_80148860)
/* 2C500 800C1900 24A58860 */  addiu      $a1, $a1, %lo(D_80148860)
/* 2C504 800C1904 0C0301A4 */  jal        func_800C0690
/* 2C508 800C1908 24060001 */   addiu     $a2, $zero, 1
/* 2C50C 800C190C 3C048017 */  lui        $a0, %hi(D_801765A0)
/* 2C510 800C1910 248465A0 */  addiu      $a0, $a0, %lo(D_801765A0)
/* 2C514 800C1914 00002821 */  addu       $a1, $zero, $zero
/* 2C518 800C1918 0C03024C */  jal        func_800C0930
/* 2C51C 800C191C 00003021 */   addu      $a2, $zero, $zero
.L800C1920:
/* 2C520 800C1920 3C048017 */  lui        $a0, %hi(D_801765A0)
/* 2C524 800C1924 248465A0 */  addiu      $a0, $a0, %lo(D_801765A0)
/* 2C528 800C1928 27A50010 */  addiu      $a1, $sp, 0x10
/* 2C52C 800C192C 0C030200 */  jal        func_800C0800
/* 2C530 800C1930 24060001 */   addiu     $a2, $zero, 1
/* 2C534 800C1934 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2C538 800C1938 03E00008 */  jr         $ra
/* 2C53C 800C193C 27BD0020 */   addiu     $sp, $sp, 0x20
