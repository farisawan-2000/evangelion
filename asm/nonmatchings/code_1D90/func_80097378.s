.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097378
/* 1F78 80097378 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F7C 8009737C 308400FF */  andi       $a0, $a0, 0xff
/* 1F80 80097380 3C038010 */  lui        $v1, %hi(D_800FF360)
/* 1F84 80097384 2463F360 */  addiu      $v1, $v1, %lo(D_800FF360)
/* 1F88 80097388 00041080 */  sll        $v0, $a0, 2
/* 1F8C 8009738C 00431821 */  addu       $v1, $v0, $v1
/* 1F90 80097390 00042140 */  sll        $a0, $a0, 5
/* 1F94 80097394 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1F98 80097398 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F9C 8009739C AFB10014 */  sw         $s1, 0x14($sp)
/* 1FA0 800973A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FA4 800973A4 AC600000 */  sw         $zero, ($v1)
/* 1FA8 800973A8 3C108010 */  lui        $s0, %hi(D_800FF2E4)
/* 1FAC 800973AC 02048021 */  addu       $s0, $s0, $a0
/* 1FB0 800973B0 8E10F2E4 */  lw         $s0, %lo(D_800FF2E4)($s0)
/* 1FB4 800973B4 8E020004 */  lw         $v0, 4($s0)
/* 1FB8 800973B8 10400010 */  beqz       $v0, .L800973FC
/* 1FBC 800973BC 00609021 */   addu      $s2, $v1, $zero
.L800973C0:
/* 1FC0 800973C0 8E420000 */  lw         $v0, ($s2)
/* 1FC4 800973C4 24420001 */  addiu      $v0, $v0, 1
/* 1FC8 800973C8 AE420000 */  sw         $v0, ($s2)
/* 1FCC 800973CC 8E020008 */  lw         $v0, 8($s0)
/* 1FD0 800973D0 0040F809 */  jalr       $v0
/* 1FD4 800973D4 02002021 */   addu      $a0, $s0, $zero
/* 1FD8 800973D8 8E110004 */  lw         $s1, 4($s0)
/* 1FDC 800973DC 50400004 */  beql       $v0, $zero, .L800973F0
/* 1FE0 800973E0 02208021 */   addu      $s0, $s1, $zero
/* 1FE4 800973E4 0C025D4D */  jal        func_80097534
/* 1FE8 800973E8 02002021 */   addu      $a0, $s0, $zero
/* 1FEC 800973EC 02208021 */  addu       $s0, $s1, $zero
.L800973F0:
/* 1FF0 800973F0 8E020004 */  lw         $v0, 4($s0)
/* 1FF4 800973F4 1440FFF2 */  bnez       $v0, .L800973C0
/* 1FF8 800973F8 00000000 */   nop
.L800973FC:
/* 1FFC 800973FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2000 80097400 8FB20018 */  lw         $s2, 0x18($sp)
/* 2004 80097404 8FB10014 */  lw         $s1, 0x14($sp)
/* 2008 80097408 8FB00010 */  lw         $s0, 0x10($sp)
/* 200C 8009740C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2010 80097410 03E00008 */  jr         $ra
/* 2014 80097414 00000000 */   nop
