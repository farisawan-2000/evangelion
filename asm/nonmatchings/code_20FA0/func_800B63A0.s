glabel func_800B63A0
/* 20FA0 800B63A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20FA4 800B63A4 3C048017 */  lui        $a0, %hi(D_8016E570)
/* 20FA8 800B63A8 2484E570 */  addiu      $a0, $a0, %lo(D_8016E570)
/* 20FAC 800B63AC 3C058011 */  lui        $a1, %hi(D_8010CF60)
/* 20FB0 800B63B0 24A5CF60 */  addiu      $a1, $a1, %lo(D_8010CF60)
/* 20FB4 800B63B4 24060008 */  addiu      $a2, $zero, 0x8
/* 20FB8 800B63B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20FBC 800B63BC AFB20020 */  sw         $s2, 0x20($sp)
/* 20FC0 800B63C0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 20FC4 800B63C4 0C0301A4 */  jal        func_800C0690
/* 20FC8 800B63C8 AFB00018 */   sw        $s0, 0x18($sp)
/* 20FCC 800B63CC 24120004 */  addiu      $s2, $zero, 0x4
/* 20FD0 800B63D0 24110008 */  addiu      $s1, $zero, 0x8
/* 20FD4 800B63D4 24100001 */  addiu      $s0, $zero, 0x1
.L800B63D8:
/* 20FD8 800B63D8 3C048017 */  lui        $a0, %hi(D_8016E570)
/* 20FDC 800B63DC 2484E570 */  addiu      $a0, $a0, %lo(D_8016E570)
/* 20FE0 800B63E0 27A50010 */  addiu      $a1, $sp, 0x10
/* 20FE4 800B63E4 0C030200 */  jal        func_800C0800
/* 20FE8 800B63E8 24060001 */   addiu     $a2, $zero, 0x1
/* 20FEC 800B63EC 8FA40010 */  lw         $a0, 0x10($sp)
/* 20FF0 800B63F0 8C820054 */  lw         $v0, 0x54($a0)
/* 20FF4 800B63F4 84420000 */  lh         $v0, 0x0($v0)
/* 20FF8 800B63F8 10520005 */  beq        $v0, $s2, .L800B6410
/* 20FFC 800B63FC 00000000 */   nop
/* 21000 800B6400 10510013 */  beq        $v0, $s1, .L800B6450
/* 21004 800B6404 00000000 */   nop
/* 21008 800B6408 0802D8F6 */  j          .L800B63D8
/* 2100C 800B640C 00000000 */   nop
.L800B6410:
/* 21010 800B6410 3C02800F */  lui        $v0, %hi(D_800F1824)
/* 21014 800B6414 8C421824 */  lw         $v0, %lo(D_800F1824)($v0)
/* 21018 800B6418 10400003 */  beqz       $v0, .L800B6428
/* 2101C 800B641C 00000000 */   nop
/* 21020 800B6420 0040F809 */  jalr       $v0
/* 21024 800B6424 00000000 */   nop
.L800B6428:
/* 21028 800B6428 3C028015 */  lui        $v0, %hi(D_80149FC8)
/* 2102C 800B642C 8C429FC8 */  lw         $v0, %lo(D_80149FC8)($v0)
/* 21030 800B6430 30420080 */  andi       $v0, $v0, 0x80
/* 21034 800B6434 1040000C */  beqz       $v0, .L800B6468
/* 21038 800B6438 00000000 */   nop
/* 2103C 800B643C 0C030B18 */  jal        func_800C2C60
/* 21040 800B6440 00002021 */   addu      $a0, $zero, $zero
/* 21044 800B6444 3C018015 */  lui        $at, %hi(D_80149FC8)
/* 21048 800B6448 0802D91A */  j          .L800B6468
/* 2104C 800B644C AC309FC8 */   sw        $s0, %lo(D_80149FC8)($at)
.L800B6450:
/* 21050 800B6450 3C02800F */  lui        $v0, %hi(D_800F1828)
/* 21054 800B6454 8C421828 */  lw         $v0, %lo(D_800F1828)($v0)
/* 21058 800B6458 10400003 */  beqz       $v0, .L800B6468
/* 2105C 800B645C 00000000 */   nop
/* 21060 800B6460 0040F809 */  jalr       $v0
/* 21064 800B6464 00000000 */   nop
.L800B6468:
/* 21068 800B6468 0C02E2DC */  jal        func_800B8B70
/* 2106C 800B646C 24040001 */   addiu     $a0, $zero, 0x1
/* 21070 800B6470 3C038017 */  lui        $v1, %hi(D_8016D060)
/* 21074 800B6474 8C63D060 */  lw         $v1, %lo(D_8016D060)($v1)
/* 21078 800B6478 00402021 */  addu       $a0, $v0, $zero
/* 2107C 800B647C 2463FFFF */  addiu      $v1, $v1, -0x1
/* 21080 800B6480 3C018017 */  lui        $at, %hi(D_8016D060)
/* 21084 800B6484 AC23D060 */  sw         $v1, %lo(D_8016D060)($at)
/* 21088 800B6488 3C028017 */  lui        $v0, %hi(D_8016D060)
/* 2108C 800B648C 0C02E2DC */  jal        func_800B8B70
/* 21090 800B6490 8C42D060 */   lw        $v0, %lo(D_8016D060)($v0)
/* 21094 800B6494 0802D8F6 */  j          .L800B63D8
/* 21098 800B6498 00000000 */   nop
/* 2109C 800B649C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 210A0 800B64A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 210A4 800B64A4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 210A8 800B64A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 210AC 800B64AC 03E00008 */  jr         $ra
/* 210B0 800B64B0 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800B63A0, . - func_800B63A0