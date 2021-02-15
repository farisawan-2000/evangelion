.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009FD9C
/* A99C 8009FD9C 24870010 */  addiu      $a3, $a0, 0x10
/* A9A0 8009FDA0 00A03021 */  addu       $a2, $a1, $zero
/* A9A4 8009FDA4 24C80040 */  addiu      $t0, $a2, 0x40
.L8009FDA8:
/* A9A8 8009FDA8 8CC20000 */  lw         $v0, ($a2)
/* A9AC 8009FDAC 8CC30004 */  lw         $v1, 4($a2)
/* A9B0 8009FDB0 8CC40008 */  lw         $a0, 8($a2)
/* A9B4 8009FDB4 8CC5000C */  lw         $a1, 0xc($a2)
/* A9B8 8009FDB8 ACE20000 */  sw         $v0, ($a3)
/* A9BC 8009FDBC ACE30004 */  sw         $v1, 4($a3)
/* A9C0 8009FDC0 ACE40008 */  sw         $a0, 8($a3)
/* A9C4 8009FDC4 ACE5000C */  sw         $a1, 0xc($a3)
/* A9C8 8009FDC8 24C60010 */  addiu      $a2, $a2, 0x10
/* A9CC 8009FDCC 14C8FFF6 */  bne        $a2, $t0, .L8009FDA8
/* A9D0 8009FDD0 24E70010 */   addiu     $a3, $a3, 0x10
/* A9D4 8009FDD4 03E00008 */  jr         $ra
/* A9D8 8009FDD8 00000000 */   nop
