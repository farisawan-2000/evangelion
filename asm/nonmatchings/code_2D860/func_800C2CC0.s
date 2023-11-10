glabel func_800C2CC0
/* 2D8C0 800C2CC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2D8C4 800C2CC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 2D8C8 800C2CC8 00808821 */  addu       $s1, $a0, $zero
/* 2D8CC 800C2CCC AFB3001C */  sw         $s3, 0x1C($sp)
/* 2D8D0 800C2CD0 00A09821 */  addu       $s3, $a1, $zero
/* 2D8D4 800C2CD4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2D8D8 800C2CD8 AFB20018 */  sw         $s2, 0x18($sp)
/* 2D8DC 800C2CDC AFB00010 */  sw         $s0, 0x10($sp)
/* 2D8E0 800C2CE0 8E220008 */  lw         $v0, 0x8($s1)
/* 2D8E4 800C2CE4 8E230000 */  lw         $v1, 0x0($s1)
/* 2D8E8 800C2CE8 3C048015 */  lui        $a0, %hi(D_80149A90)
/* 2D8EC 800C2CEC 24849A90 */  addiu      $a0, $a0, %lo(D_80149A90)
/* 2D8F0 800C2CF0 00021180 */  sll        $v0, $v0, 6
/* 2D8F4 800C2CF4 30630008 */  andi       $v1, $v1, 0x8
/* 2D8F8 800C2CF8 14600003 */  bnez       $v1, .L800C2D08
/* 2D8FC 800C2CFC 00449021 */   addu      $s2, $v0, $a0
/* 2D900 800C2D00 08030B7A */  j          .L800C2DE8
/* 2D904 800C2D04 24020005 */   addiu     $v0, $zero, 0x5
.L800C2D08:
/* 2D908 800C2D08 0C030635 */  jal        func_800C18D4
/* 2D90C 800C2D0C 00000000 */   nop
/* 2D910 800C2D10 8E220008 */  lw         $v0, 0x8($s1)
/* 2D914 800C2D14 24030001 */  addiu      $v1, $zero, 0x1
/* 2D918 800C2D18 00021180 */  sll        $v0, $v0, 6
/* 2D91C 800C2D1C 3C018015 */  lui        $at, %hi(D_80149ACC)
/* 2D920 800C2D20 00220821 */  addu       $at, $at, $v0
/* 2D924 800C2D24 AC239ACC */  sw         $v1, %lo(D_80149ACC)($at)
/* 2D928 800C2D28 8E220008 */  lw         $v0, 0x8($s1)
/* 2D92C 800C2D2C 2403001F */  addiu      $v1, $zero, 0x1F
/* 2D930 800C2D30 02429021 */  addu       $s2, $s2, $v0
/* 2D934 800C2D34 2642001F */  addiu      $v0, $s2, 0x1F
.L800C2D38:
/* 2D938 800C2D38 A0530006 */  sb         $s3, 0x6($v0)
/* 2D93C 800C2D3C 2463FFFF */  addiu      $v1, $v1, -0x1
/* 2D940 800C2D40 0461FFFD */  bgez       $v1, .L800C2D38
/* 2D944 800C2D44 2442FFFF */   addiu     $v0, $v0, -0x1
/* 2D948 800C2D48 8E250008 */  lw         $a1, 0x8($s1)
/* 2D94C 800C2D4C 24040001 */  addiu      $a0, $zero, 0x1
/* 2D950 800C2D50 240200FE */  addiu      $v0, $zero, 0xFE
/* 2D954 800C2D54 3C108015 */  lui        $s0, %hi(D_80149A90)
/* 2D958 800C2D58 26109A90 */  addiu      $s0, $s0, %lo(D_80149A90)
/* 2D95C 800C2D5C 3C018017 */  lui        $at, %hi(D_8016D064)
/* 2D960 800C2D60 A022D064 */  sb         $v0, %lo(D_8016D064)($at)
/* 2D964 800C2D64 00052980 */  sll        $a1, $a1, 6
/* 2D968 800C2D68 0C0305F4 */  jal        func_800C17D0
/* 2D96C 800C2D6C 00B02821 */   addu      $a1, $a1, $s0
/* 2D970 800C2D70 8E240004 */  lw         $a0, 0x4($s1)
/* 2D974 800C2D74 00002821 */  addu       $a1, $zero, $zero
/* 2D978 800C2D78 0C030200 */  jal        func_800C0800
/* 2D97C 800C2D7C 24060001 */   addiu     $a2, $zero, 0x1
/* 2D980 800C2D80 8E250008 */  lw         $a1, 0x8($s1)
/* 2D984 800C2D84 00002021 */  addu       $a0, $zero, $zero
/* 2D988 800C2D88 00052980 */  sll        $a1, $a1, 6
/* 2D98C 800C2D8C 0C0305F4 */  jal        func_800C17D0
/* 2D990 800C2D90 00B02821 */   addu      $a1, $a1, $s0
/* 2D994 800C2D94 8E240004 */  lw         $a0, 0x4($s1)
/* 2D998 800C2D98 00002821 */  addu       $a1, $zero, $zero
/* 2D99C 800C2D9C 0C030200 */  jal        func_800C0800
/* 2D9A0 800C2DA0 24060001 */   addiu     $a2, $zero, 0x1
/* 2D9A4 800C2DA4 92420002 */  lbu        $v0, 0x2($s2)
/* 2D9A8 800C2DA8 305000C0 */  andi       $s0, $v0, 0xC0
/* 2D9AC 800C2DAC 1600000B */  bnez       $s0, .L800C2DDC
/* 2D9B0 800C2DB0 00000000 */   nop
/* 2D9B4 800C2DB4 16600006 */  bnez       $s3, .L800C2DD0
/* 2D9B8 800C2DB8 240200EB */   addiu     $v0, $zero, 0xEB
/* 2D9BC 800C2DBC 92420026 */  lbu        $v0, 0x26($s2)
/* 2D9C0 800C2DC0 10400006 */  beqz       $v0, .L800C2DDC
/* 2D9C4 800C2DC4 00000000 */   nop
/* 2D9C8 800C2DC8 08030B77 */  j          .L800C2DDC
/* 2D9CC 800C2DCC 24100004 */   addiu     $s0, $zero, 0x4
.L800C2DD0:
/* 2D9D0 800C2DD0 92430026 */  lbu        $v1, 0x26($s2)
/* 2D9D4 800C2DD4 54620001 */  bnel       $v1, $v0, .L800C2DDC
/* 2D9D8 800C2DD8 24100004 */   addiu     $s0, $zero, 0x4
.L800C2DDC:
/* 2D9DC 800C2DDC 0C030650 */  jal        func_800C1940
/* 2D9E0 800C2DE0 00000000 */   nop
/* 2D9E4 800C2DE4 02001021 */  addu       $v0, $s0, $zero
.L800C2DE8:
/* 2D9E8 800C2DE8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2D9EC 800C2DEC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2D9F0 800C2DF0 8FB20018 */  lw         $s2, 0x18($sp)
/* 2D9F4 800C2DF4 8FB10014 */  lw         $s1, 0x14($sp)
/* 2D9F8 800C2DF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D9FC 800C2DFC 03E00008 */  jr         $ra
/* 2DA00 800C2E00 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800C2CC0, . - func_800C2CC0
