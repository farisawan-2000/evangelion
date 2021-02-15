.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B16C0
/* 1C2C0 800B16C0 3C02800F */  lui        $v0, %hi(D_800F17F0)
/* 1C2C4 800B16C4 8C4217F0 */  lw         $v0, %lo(D_800F17F0)($v0)
/* 1C2C8 800B16C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C2CC 800B16CC AFB00010 */  sw         $s0, 0x10($sp)
/* 1C2D0 800B16D0 00A08021 */  addu       $s0, $a1, $zero
/* 1C2D4 800B16D4 14400010 */  bnez       $v0, .L800B1718
/* 1C2D8 800B16D8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1C2DC 800B16DC 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C2E0 800B16E0 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C2E4 800B16E4 3C01800F */  lui        $at, %hi(D_800F17F0)
/* 1C2E8 800B16E8 1440000B */  bnez       $v0, .L800B1718
/* 1C2EC 800B16EC AC2417F0 */   sw        $a0, %lo(D_800F17F0)($at)
/* 1C2F0 800B16F0 0C02C784 */  jal        func_800B1E10
/* 1C2F4 800B16F4 02002021 */   addu      $a0, $s0, $zero
/* 1C2F8 800B16F8 3C02800F */  lui        $v0, %hi(D_800F17F0)
/* 1C2FC 800B16FC 8C4217F0 */  lw         $v0, %lo(D_800F17F0)($v0)
/* 1C300 800B1700 3C018017 */  lui        $at, %hi(D_8016D7F8)
/* 1C304 800B1704 AC22D7F8 */  sw         $v0, %lo(D_8016D7F8)($at)
/* 1C308 800B1708 3C01800F */  lui        $at, %hi(D_800F17F4)
/* 1C30C 800B170C AC2217F4 */  sw         $v0, %lo(D_800F17F4)($at)
/* 1C310 800B1710 0C02C5CA */  jal        func_800B1728
/* 1C314 800B1714 02002021 */   addu      $a0, $s0, $zero
.L800B1718:
/* 1C318 800B1718 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C31C 800B171C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C320 800B1720 03E00008 */  jr         $ra
/* 1C324 800B1724 27BD0018 */   addiu     $sp, $sp, 0x18
