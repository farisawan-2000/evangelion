.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_800280B0_D15C0
/* D15C0 800280B0 3C028006 */  lui        $v0, %hi(D_80067390)
/* D15C4 800280B4 8C427390 */  lw         $v0, %lo(D_80067390)($v0)
/* D15C8 800280B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D15CC 800280BC 14400005 */  bnez       $v0, .L800280D4
/* D15D0 800280C0 AFBF0010 */   sw        $ra, 0x10($sp)
/* D15D4 800280C4 0C00A042 */  jal        func_80028108_D1618
/* D15D8 800280C8 00000000 */   nop
/* D15DC 800280CC 0800A03F */  j          .L800280FC
/* D15E0 800280D0 00001021 */   addu      $v0, $zero, $zero
.L800280D4:
/* D15E4 800280D4 84420004 */  lh         $v0, 4($v0)
/* D15E8 800280D8 10400005 */  beqz       $v0, .L800280F0
/* D15EC 800280DC 00000000 */   nop
/* D15F0 800280E0 0C00A076 */  jal        func_800281D8_D16E8
/* D15F4 800280E4 00000000 */   nop
/* D15F8 800280E8 0800A03F */  j          .L800280FC
/* D15FC 800280EC 00001021 */   addu      $v0, $zero, $zero
.L800280F0:
/* D1600 800280F0 0C00A064 */  jal        func_80028190_D16A0
/* D1604 800280F4 00000000 */   nop
/* D1608 800280F8 24020001 */  addiu      $v0, $zero, 1
.L800280FC:
/* D160C 800280FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D1610 80028100 03E00008 */  jr         $ra
/* D1614 80028104 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80028108_D1618
/* D1618 80028108 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D161C 8002810C AFBF0010 */  sw         $ra, 0x10($sp)
/* D1620 80028110 0C032663 */  jal        func_800C998C
/* D1624 80028114 24040008 */   addiu     $a0, $zero, 8
/* D1628 80028118 00402021 */  addu       $a0, $v0, $zero
/* D162C 8002811C 3C018006 */  lui        $at, %hi(D_80067390)
/* D1630 80028120 AC247390 */  sw         $a0, %lo(D_80067390)($at)
/* D1634 80028124 0C030134 */  jal        bzero
/* D1638 80028128 24050008 */   addiu     $a1, $zero, 8
/* D163C 8002812C 2404018A */  addiu      $a0, $zero, 0x18a
/* D1640 80028130 24050005 */  addiu      $a1, $zero, 5
/* D1644 80028134 0C028CB7 */  jal        func_800A32DC
/* D1648 80028138 00003021 */   addu      $a2, $zero, $zero
/* D164C 8002813C 00402021 */  addu       $a0, $v0, $zero
/* D1650 80028140 3C028006 */  lui        $v0, %hi(D_80067390)
/* D1654 80028144 8C427390 */  lw         $v0, %lo(D_80067390)($v0)
/* D1658 80028148 2405037C */  addiu      $a1, $zero, 0x37c
/* D165C 8002814C 24060214 */  addiu      $a2, $zero, 0x214
/* D1660 80028150 0C028D89 */  jal        func_800A3624
/* D1664 80028154 AC440000 */   sw        $a0, ($v0)
/* D1668 80028158 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D166C 8002815C 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D1670 80028160 24040002 */  addiu      $a0, $zero, 2
/* D1674 80028164 3C058006 */  lui        $a1, %hi(D_80067390)
/* D1678 80028168 8CA57390 */  lw         $a1, %lo(D_80067390)($a1)
/* D167C 8002816C 00031080 */  sll        $v0, $v1, 2
/* D1680 80028170 00431021 */  addu       $v0, $v0, $v1
/* D1684 80028174 0C026449 */  jal        func_80099124
/* D1688 80028178 A4A20004 */   sh        $v0, 4($a1)
/* D168C 8002817C 0C02A5AF */  jal        func_800A96BC
/* D1690 80028180 24040014 */   addiu     $a0, $zero, 0x14
/* D1694 80028184 8FBF0010 */  lw         $ra, 0x10($sp)
/* D1698 80028188 03E00008 */  jr         $ra
/* D169C 8002818C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80028190_D16A0
/* D16A0 80028190 3C028006 */  lui        $v0, %hi(D_80067390)
/* D16A4 80028194 8C427390 */  lw         $v0, %lo(D_80067390)($v0)
/* D16A8 80028198 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D16AC 8002819C AFBF0010 */  sw         $ra, 0x10($sp)
/* D16B0 800281A0 0C028D30 */  jal        func_800A34C0
/* D16B4 800281A4 8C440000 */   lw        $a0, ($v0)
/* D16B8 800281A8 3C048006 */  lui        $a0, %hi(D_80067390)
/* D16BC 800281AC 0C0326A1 */  jal        func_800C9A84
/* D16C0 800281B0 8C847390 */   lw        $a0, %lo(D_80067390)($a0)
/* D16C4 800281B4 3C018006 */  lui        $at, %hi(D_80067390)
/* D16C8 800281B8 AC207390 */  sw         $zero, %lo(D_80067390)($at)
/* D16CC 800281BC 0C026449 */  jal        func_80099124
/* D16D0 800281C0 24040002 */   addiu     $a0, $zero, 2
/* D16D4 800281C4 0C02DB14 */  jal        func_800B6C50
/* D16D8 800281C8 00002021 */   addu      $a0, $zero, $zero
/* D16DC 800281CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D16E0 800281D0 03E00008 */  jr         $ra
/* D16E4 800281D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800281D8_D16E8
/* D16E8 800281D8 3C028006 */  lui        $v0, %hi(D_80067390)
/* D16EC 800281DC 8C427390 */  lw         $v0, %lo(D_80067390)($v0)
/* D16F0 800281E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D16F4 800281E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* D16F8 800281E8 0C028A40 */  jal        func_800A2900
/* D16FC 800281EC 8C440000 */   lw        $a0, ($v0)
/* D1700 800281F0 3C048006 */  lui        $a0, %hi(D_80067390)
/* D1704 800281F4 8C847390 */  lw         $a0, %lo(D_80067390)($a0)
/* D1708 800281F8 94820004 */  lhu        $v0, 4($a0)
/* D170C 800281FC 2442FFFF */  addiu      $v0, $v0, -1
/* D1710 80028200 A4820004 */  sh         $v0, 4($a0)
/* D1714 80028204 00021400 */  sll        $v0, $v0, 0x10
/* D1718 80028208 00021C03 */  sra        $v1, $v0, 0x10
/* D171C 8002820C 24020014 */  addiu      $v0, $zero, 0x14
/* D1720 80028210 14620005 */  bne        $v1, $v0, .L80028228
/* D1724 80028214 28620015 */   slti      $v0, $v1, 0x15
/* D1728 80028218 0C02A5E5 */  jal        func_800A9794
/* D172C 8002821C 24040014 */   addiu     $a0, $zero, 0x14
/* D1730 80028220 0800A092 */  j          .L80028248
/* D1734 80028224 00000000 */   nop
.L80028228:
/* D1738 80028228 14400007 */  bnez       $v0, .L80028248
/* D173C 8002822C 00000000 */   nop
/* D1740 80028230 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D1744 80028234 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D1748 80028238 30421000 */  andi       $v0, $v0, 0x1000
/* D174C 8002823C 10400002 */  beqz       $v0, .L80028248
/* D1750 80028240 24020015 */   addiu     $v0, $zero, 0x15
/* D1754 80028244 A4820004 */  sh         $v0, 4($a0)
.L80028248:
/* D1758 80028248 8FBF0010 */  lw         $ra, 0x10($sp)
/* D175C 8002824C 03E00008 */  jr         $ra
/* D1760 80028250 27BD0018 */   addiu     $sp, $sp, 0x18
/* D1764 80028254 00000000 */  nop
/* D1768 80028258 00000000 */  nop
/* D176C 8002825C 00000000 */  nop