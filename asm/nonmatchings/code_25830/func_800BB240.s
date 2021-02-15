.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BB240
/* 25E40 800BB240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25E44 800BB244 AFBF0010 */  sw         $ra, 0x10($sp)
/* 25E48 800BB248 24020003 */  addiu      $v0, $zero, 3
/* 25E4C 800BB24C 10A2000F */  beq        $a1, $v0, .L800BB28C
/* 25E50 800BB250 00801821 */   addu      $v1, $a0, $zero
/* 25E54 800BB254 28A20004 */  slti       $v0, $a1, 4
/* 25E58 800BB258 10400005 */  beqz       $v0, .L800BB270
/* 25E5C 800BB25C 24020001 */   addiu     $v0, $zero, 1
/* 25E60 800BB260 50A20028 */  beql       $a1, $v0, .L800BB304
/* 25E64 800BB264 AC860000 */   sw        $a2, ($a0)
/* 25E68 800BB268 0802ECBB */  j          .L800BB2EC
/* 25E6C 800BB26C 00000000 */   nop
.L800BB270:
/* 25E70 800BB270 24020004 */  addiu      $v0, $zero, 4
/* 25E74 800BB274 10A2000B */  beq        $a1, $v0, .L800BB2A4
/* 25E78 800BB278 24020009 */   addiu     $v0, $zero, 9
/* 25E7C 800BB27C 10A20014 */  beq        $a1, $v0, .L800BB2D0
/* 25E80 800BB280 24020001 */   addiu     $v0, $zero, 1
/* 25E84 800BB284 0802ECBB */  j          .L800BB2EC
/* 25E88 800BB288 00000000 */   nop
.L800BB28C:
/* 25E8C 800BB28C 8C820040 */  lw         $v0, 0x40($a0)
/* 25E90 800BB290 50400002 */  beql       $v0, $zero, .L800BB29C
/* 25E94 800BB294 AC86003C */   sw        $a2, 0x3c($a0)
/* 25E98 800BB298 AC460000 */  sw         $a2, ($v0)
.L800BB29C:
/* 25E9C 800BB29C 0802ECC1 */  j          .L800BB304
/* 25EA0 800BB2A0 AC660040 */   sw        $a2, 0x40($v1)
.L800BB2A4:
/* 25EA4 800BB2A4 8C830000 */  lw         $v1, ($a0)
/* 25EA8 800BB2A8 24020001 */  addiu      $v0, $zero, 1
/* 25EAC 800BB2AC AC820038 */  sw         $v0, 0x38($a0)
/* 25EB0 800BB2B0 24020001 */  addiu      $v0, $zero, 1
/* 25EB4 800BB2B4 AC800048 */  sw         $zero, 0x48($a0)
/* 25EB8 800BB2B8 10600012 */  beqz       $v1, .L800BB304
/* 25EBC 800BB2BC A482001A */   sh        $v0, 0x1a($a0)
/* 25EC0 800BB2C0 00602021 */  addu       $a0, $v1, $zero
/* 25EC4 800BB2C4 8C820008 */  lw         $v0, 8($a0)
/* 25EC8 800BB2C8 0802ECBF */  j          .L800BB2FC
/* 25ECC 800BB2CC 24050004 */   addiu     $a1, $zero, 4
.L800BB2D0:
/* 25ED0 800BB2D0 8C830000 */  lw         $v1, ($a0)
/* 25ED4 800BB2D4 1060000B */  beqz       $v1, .L800BB304
/* 25ED8 800BB2D8 AC820048 */   sw        $v0, 0x48($a0)
/* 25EDC 800BB2DC 00602021 */  addu       $a0, $v1, $zero
/* 25EE0 800BB2E0 8C820008 */  lw         $v0, 8($a0)
/* 25EE4 800BB2E4 0802ECBF */  j          .L800BB2FC
/* 25EE8 800BB2E8 24050009 */   addiu     $a1, $zero, 9
.L800BB2EC:
/* 25EEC 800BB2EC 8C840000 */  lw         $a0, ($a0)
/* 25EF0 800BB2F0 10800004 */  beqz       $a0, .L800BB304
/* 25EF4 800BB2F4 00000000 */   nop
/* 25EF8 800BB2F8 8C820008 */  lw         $v0, 8($a0)
.L800BB2FC:
/* 25EFC 800BB2FC 0040F809 */  jalr       $v0
/* 25F00 800BB300 00000000 */   nop
.L800BB304:
/* 25F04 800BB304 8FBF0010 */  lw         $ra, 0x10($sp)
/* 25F08 800BB308 00001021 */  addu       $v0, $zero, $zero
/* 25F0C 800BB30C 03E00008 */  jr         $ra
/* 25F10 800BB310 27BD0018 */   addiu     $sp, $sp, 0x18
