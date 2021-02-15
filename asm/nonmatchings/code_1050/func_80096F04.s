.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80096F04
/* 1B04 80096F04 2482FFBF */  addiu      $v0, $a0, -0x41
/* 1B08 80096F08 304200FF */  andi       $v0, $v0, 0xff
/* 1B0C 80096F0C 2C42001A */  sltiu      $v0, $v0, 0x1a
/* 1B10 80096F10 10400004 */  beqz       $v0, .L80096F24
/* 1B14 80096F14 00801821 */   addu      $v1, $a0, $zero
/* 1B18 80096F18 24820020 */  addiu      $v0, $a0, 0x20
/* 1B1C 80096F1C 08025BCA */  j          .L80096F28
/* 1B20 80096F20 304200FF */   andi      $v0, $v0, 0xff
.L80096F24:
/* 1B24 80096F24 306200FF */  andi       $v0, $v1, 0xff
.L80096F28:
/* 1B28 80096F28 03E00008 */  jr         $ra
/* 1B2C 80096F2C 00000000 */   nop
