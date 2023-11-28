glabel func_8004A884_ovl3
/* F3D94 8004A884 3C028007 */  lui        $v0, %hi(D_800691B0_ovl3)
/* F3D98 8004A888 904291B0 */  lbu        $v0, %lo(D_800691B0_ovl3)($v0)
/* F3D9C 8004A88C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F3DA0 8004A890 1040000D */  beqz       $v0, .L8004A8C8_ovl3
/* F3DA4 8004A894 AFBF0010 */   sw        $ra, 0x10($sp)
/* F3DA8 8004A898 3C048004 */  lui        $a0, %hi(func_80047090_ovl3)
/* F3DAC 8004A89C 24847090 */  addiu      $a0, $a0, %lo(func_80047090_ovl3)
/* F3DB0 8004A8A0 00002821 */  addu       $a1, $zero, $zero
/* F3DB4 8004A8A4 2406012C */  addiu      $a2, $zero, 0x12C
/* F3DB8 8004A8A8 3C018007 */  lui        $at, %hi(D_8006C3C8_ovl3)
/* F3DBC 8004A8AC A020C3C8 */  sb         $zero, %lo(D_8006C3C8_ovl3)($at)
/* F3DC0 8004A8B0 0C025D06 */  jal        func_80097418
/* F3DC4 8004A8B4 00003821 */   addu      $a3, $zero, $zero
/* F3DC8 8004A8B8 0C02A5D2 */  jal        func_800A9748
/* F3DCC 8004A8BC 24040001 */   addiu     $a0, $zero, 0x1
/* F3DD0 8004A8C0 3C018007 */  lui        $at, %hi(D_800691B0_ovl3)
/* F3DD4 8004A8C4 A02091B0 */  sb         $zero, %lo(D_800691B0_ovl3)($at)
.L8004A8C8_ovl3:
/* F3DD8 8004A8C8 3C038007 */  lui        $v1, %hi(D_8006C3C8_ovl3)
/* F3DDC 8004A8CC 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8_ovl3)($v1)
/* F3DE0 8004A8D0 24020001 */  addiu      $v0, $zero, 0x1
/* F3DE4 8004A8D4 14620005 */  bne        $v1, $v0, .L8004A8EC_ovl3
/* F3DE8 8004A8D8 00001021 */   addu      $v0, $zero, $zero
/* F3DEC 8004A8DC 24020001 */  addiu      $v0, $zero, 0x1
/* F3DF0 8004A8E0 3C018007 */  lui        $at, %hi(D_800691B0_ovl3)
/* F3DF4 8004A8E4 A02291B0 */  sb         $v0, %lo(D_800691B0_ovl3)($at)
/* F3DF8 8004A8E8 24020001 */  addiu      $v0, $zero, 0x1
.L8004A8EC_ovl3:
/* F3DFC 8004A8EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* F3E00 8004A8F0 03E00008 */  jr         $ra
/* F3E04 8004A8F4 27BD0018 */   addiu     $sp, $sp, 0x18
/* F3E08 8004A8F8 00000000 */  nop
/* F3E0C 8004A8FC 00000000 */  nop
.size func_8004A884_ovl3, . - func_8004A884_ovl3
