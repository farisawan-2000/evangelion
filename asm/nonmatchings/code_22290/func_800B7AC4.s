.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7AC4
/* 226C4 800B7AC4 00002821 */  addu       $a1, $zero, $zero
/* 226C8 800B7AC8 24060004 */  addiu      $a2, $zero, 4
/* 226CC 800B7ACC 3C038015 */  lui        $v1, %hi(D_8014A007)
/* 226D0 800B7AD0 2463A007 */  addiu      $v1, $v1, %lo(D_8014A007)
/* 226D4 800B7AD4 00002021 */  addu       $a0, $zero, $zero
.L800B7AD8:
/* 226D8 800B7AD8 3C018015 */  lui        $at, %hi(D_8014A006)
/* 226DC 800B7ADC 00240821 */  addu       $at, $at, $a0
/* 226E0 800B7AE0 A026A006 */  sb         $a2, %lo(D_8014A006)($at)
/* 226E4 800B7AE4 90620000 */  lbu        $v0, ($v1)
/* 226E8 800B7AE8 2484000A */  addiu      $a0, $a0, 0xa
/* 226EC 800B7AEC 24A50001 */  addiu      $a1, $a1, 1
/* 226F0 800B7AF0 34420080 */  ori        $v0, $v0, 0x80
/* 226F4 800B7AF4 A0620000 */  sb         $v0, ($v1)
/* 226F8 800B7AF8 2CA20004 */  sltiu      $v0, $a1, 4
/* 226FC 800B7AFC 1440FFF6 */  bnez       $v0, .L800B7AD8
/* 22700 800B7B00 2463000A */   addiu     $v1, $v1, 0xa
/* 22704 800B7B04 03E00008 */  jr         $ra
/* 22708 800B7B08 00001021 */   addu      $v0, $zero, $zero
