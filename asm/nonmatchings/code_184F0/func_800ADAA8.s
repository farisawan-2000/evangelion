glabel func_800ADAA8
/* 186A8 800ADAA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 186AC 800ADAAC 3C03800F */  lui        $v1, %hi(D_800F1210)
/* 186B0 800ADAB0 90631210 */  lbu        $v1, %lo(D_800F1210)($v1)
/* 186B4 800ADAB4 00803021 */  addu       $a2, $a0, $zero
/* 186B8 800ADAB8 24020001 */  addiu      $v0, $zero, 0x1
/* 186BC 800ADABC 14620018 */  bne        $v1, $v0, .L800ADB20
/* 186C0 800ADAC0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 186C4 800ADAC4 8CC20000 */  lw         $v0, 0x0($a2)
/* 186C8 800ADAC8 3C058015 */  lui        $a1, %hi(D_80149F70)
/* 186CC 800ADACC 24A59F70 */  addiu      $a1, $a1, %lo(D_80149F70)
/* 186D0 800ADAD0 ACA20000 */  sw         $v0, 0x0($a1)
/* 186D4 800ADAD4 8CC20004 */  lw         $v0, 0x4($a2)
/* 186D8 800ADAD8 3C018015 */  lui        $at, %hi(D_80149F74)
/* 186DC 800ADADC AC229F74 */  sw         $v0, %lo(D_80149F74)($at)
/* 186E0 800ADAE0 8CC20008 */  lw         $v0, 0x8($a2)
/* 186E4 800ADAE4 3C048017 */  lui        $a0, %hi(D_8016DC74)
/* 186E8 800ADAE8 2484DC74 */  addiu      $a0, $a0, %lo(D_8016DC74)
/* 186EC 800ADAEC 3C018015 */  lui        $at, %hi(D_80149F50)
/* 186F0 800ADAF0 AC229F50 */  sw         $v0, %lo(D_80149F50)($at)
/* 186F4 800ADAF4 8CC2000C */  lw         $v0, 0xC($a2)
/* 186F8 800ADAF8 24A5FFC0 */  addiu      $a1, $a1, -0x40
/* 186FC 800ADAFC 3C018015 */  lui        $at, %hi(D_80149F58)
/* 18700 800ADB00 AC229F58 */  sw         $v0, %lo(D_80149F58)($at)
/* 18704 800ADB04 0C03024C */  jal        func_800C0930
/* 18708 800ADB08 24060001 */   addiu     $a2, $zero, 0x1
/* 1870C 800ADB0C 3C048015 */  lui        $a0, %hi(D_80149D88)
/* 18710 800ADB10 24849D88 */  addiu      $a0, $a0, %lo(D_80149D88)
/* 18714 800ADB14 00002821 */  addu       $a1, $zero, $zero
/* 18718 800ADB18 0C030200 */  jal        func_800C0800
/* 1871C 800ADB1C 24060001 */   addiu     $a2, $zero, 0x1
.L800ADB20:
/* 18720 800ADB20 3C02800F */  lui        $v0, %hi(D_800F1214)
/* 18724 800ADB24 8C421214 */  lw         $v0, %lo(D_800F1214)($v0)
/* 18728 800ADB28 1040000C */  beqz       $v0, .L800ADB5C
/* 1872C 800ADB2C 00000000 */   nop
/* 18730 800ADB30 3C05800F */  lui        $a1, %hi(D_800F1211)
/* 18734 800ADB34 90A51211 */  lbu        $a1, %lo(D_800F1211)($a1)
/* 18738 800ADB38 10A00008 */  beqz       $a1, .L800ADB5C
/* 1873C 800ADB3C 00000000 */   nop
/* 18740 800ADB40 0040F809 */  jalr       $v0
/* 18744 800ADB44 24040001 */   addiu     $a0, $zero, 0x1
/* 18748 800ADB48 3C02800F */  lui        $v0, %hi(D_800F1211)
/* 1874C 800ADB4C 90421211 */  lbu        $v0, %lo(D_800F1211)($v0)
/* 18750 800ADB50 24420001 */  addiu      $v0, $v0, 0x1
/* 18754 800ADB54 3C01800F */  lui        $at, %hi(D_800F1211)
/* 18758 800ADB58 A0221211 */  sb         $v0, %lo(D_800F1211)($at)
.L800ADB5C:
/* 1875C 800ADB5C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18760 800ADB60 03E00008 */  jr         $ra
/* 18764 800ADB64 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18768 800ADB68 00000000 */  nop
/* 1876C 800ADB6C 00000000 */  nop
.size func_800ADAA8, . - func_800ADAA8
