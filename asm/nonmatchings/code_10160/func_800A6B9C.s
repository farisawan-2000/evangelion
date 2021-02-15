.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A6B9C
/* 1179C 800A6B9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117A0 800A6BA0 24040018 */  addiu      $a0, $zero, 0x18
/* 117A4 800A6BA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117A8 800A6BA8 0C032663 */  jal        func_800C998C
/* 117AC 800A6BAC AFB00010 */   sw        $s0, 0x10($sp)
/* 117B0 800A6BB0 24040004 */  addiu      $a0, $zero, 4
/* 117B4 800A6BB4 24050001 */  addiu      $a1, $zero, 1
/* 117B8 800A6BB8 00003021 */  addu       $a2, $zero, $zero
/* 117BC 800A6BBC 0C028CB7 */  jal        func_800A32DC
/* 117C0 800A6BC0 00408021 */   addu      $s0, $v0, $zero
/* 117C4 800A6BC4 24040003 */  addiu      $a0, $zero, 3
/* 117C8 800A6BC8 24050001 */  addiu      $a1, $zero, 1
/* 117CC 800A6BCC 00003021 */  addu       $a2, $zero, $zero
/* 117D0 800A6BD0 0C028CB7 */  jal        func_800A32DC
/* 117D4 800A6BD4 AE020000 */   sw        $v0, ($s0)
/* 117D8 800A6BD8 24040003 */  addiu      $a0, $zero, 3
/* 117DC 800A6BDC 24050001 */  addiu      $a1, $zero, 1
/* 117E0 800A6BE0 00003021 */  addu       $a2, $zero, $zero
/* 117E4 800A6BE4 0C028CB7 */  jal        func_800A32DC
/* 117E8 800A6BE8 AE020004 */   sw        $v0, 4($s0)
/* 117EC 800A6BEC 24040003 */  addiu      $a0, $zero, 3
/* 117F0 800A6BF0 24050001 */  addiu      $a1, $zero, 1
/* 117F4 800A6BF4 00003021 */  addu       $a2, $zero, $zero
/* 117F8 800A6BF8 0C028CB7 */  jal        func_800A32DC
/* 117FC 800A6BFC AE020008 */   sw        $v0, 8($s0)
/* 11800 800A6C00 8E030004 */  lw         $v1, 4($s0)
/* 11804 800A6C04 AE02000C */  sw         $v0, 0xc($s0)
/* 11808 800A6C08 8C630014 */  lw         $v1, 0x14($v1)
/* 1180C 800A6C0C 3402F801 */  ori        $v0, $zero, 0xf801
/* 11810 800A6C10 A4620002 */  sh         $v0, 2($v1)
/* 11814 800A6C14 8E020008 */  lw         $v0, 8($s0)
/* 11818 800A6C18 8C430014 */  lw         $v1, 0x14($v0)
/* 1181C 800A6C1C 240207C1 */  addiu      $v0, $zero, 0x7c1
/* 11820 800A6C20 A4620002 */  sh         $v0, 2($v1)
/* 11824 800A6C24 8E02000C */  lw         $v0, 0xc($s0)
/* 11828 800A6C28 8C440014 */  lw         $a0, 0x14($v0)
/* 1182C 800A6C2C 2403003F */  addiu      $v1, $zero, 0x3f
/* 11830 800A6C30 02001021 */  addu       $v0, $s0, $zero
/* 11834 800A6C34 A4830002 */  sh         $v1, 2($a0)
/* 11838 800A6C38 240300FF */  addiu      $v1, $zero, 0xff
/* 1183C 800A6C3C A4400010 */  sh         $zero, 0x10($v0)
/* 11840 800A6C40 A0430012 */  sb         $v1, 0x12($v0)
/* 11844 800A6C44 A0430013 */  sb         $v1, 0x13($v0)
/* 11848 800A6C48 A0430014 */  sb         $v1, 0x14($v0)
/* 1184C 800A6C4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11850 800A6C50 8FB00010 */  lw         $s0, 0x10($sp)
/* 11854 800A6C54 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11858 800A6C58 03E00008 */  jr         $ra
/* 1185C 800A6C5C 00000000 */   nop
