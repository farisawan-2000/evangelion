.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800ADA18
/* 18618 800ADA18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1861C 800ADA1C AFB1001C */  sw         $s1, 0x1c($sp)
/* 18620 800ADA20 24110001 */  addiu      $s1, $zero, 1
/* 18624 800ADA24 AFB00018 */  sw         $s0, 0x18($sp)
/* 18628 800ADA28 24100002 */  addiu      $s0, $zero, 2
/* 1862C 800ADA2C AFBF0020 */  sw         $ra, 0x20($sp)
.L800ADA30:
/* 18630 800ADA30 3C048017 */  lui        $a0, %hi(D_8016D088)
/* 18634 800ADA34 2484D088 */  addiu      $a0, $a0, %lo(D_8016D088)
/* 18638 800ADA38 27A50010 */  addiu      $a1, $sp, 0x10
/* 1863C 800ADA3C 0C030200 */  jal        func_800C0800
/* 18640 800ADA40 24060001 */   addiu     $a2, $zero, 1
/* 18644 800ADA44 8FA20010 */  lw         $v0, 0x10($sp)
/* 18648 800ADA48 84420000 */  lh         $v0, ($v0)
/* 1864C 800ADA4C 10510011 */  beq        $v0, $s1, .L800ADA94
/* 18650 800ADA50 00000000 */   nop
/* 18654 800ADA54 1450FFF6 */  bne        $v0, $s0, .L800ADA30
/* 18658 800ADA58 00000000 */   nop
/* 1865C 800ADA5C 3C02800F */  lui        $v0, %hi(D_800F1214)
/* 18660 800ADA60 8C421214 */  lw         $v0, %lo(D_800F1214)($v0)
/* 18664 800ADA64 10400005 */  beqz       $v0, .L800ADA7C
/* 18668 800ADA68 00000000 */   nop
/* 1866C 800ADA6C 3C05800F */  lui        $a1, %hi(D_800F1211)
/* 18670 800ADA70 90A51211 */  lbu        $a1, %lo(D_800F1211)($a1)
/* 18674 800ADA74 0040F809 */  jalr       $v0
/* 18678 800ADA78 24040002 */   addiu     $a0, $zero, 2
.L800ADA7C:
/* 1867C 800ADA7C 3C02800F */  lui        $v0, %hi(D_800F1211)
/* 18680 800ADA80 90421211 */  lbu        $v0, %lo(D_800F1211)($v0)
/* 18684 800ADA84 24420001 */  addiu      $v0, $v0, 1
/* 18688 800ADA88 3C01800F */  lui        $at, %hi(D_800F1211)
/* 1868C 800ADA8C 0802B68C */  j          .L800ADA30
/* 18690 800ADA90 A0221211 */   sb        $v0, %lo(D_800F1211)($at)
.L800ADA94:
/* 18694 800ADA94 8FBF0020 */  lw         $ra, 0x20($sp)
/* 18698 800ADA98 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1869C 800ADA9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 186A0 800ADAA0 03E00008 */  jr         $ra
/* 186A4 800ADAA4 27BD0028 */   addiu     $sp, $sp, 0x28
