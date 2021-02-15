.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B998
/* 6598 8009B998 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 659C 8009B99C 28A20100 */  slti       $v0, $a1, 0x100
/* 65A0 8009B9A0 14400003 */  bnez       $v0, .L8009B9B0
/* 65A4 8009B9A4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 65A8 8009B9A8 08026E6F */  j          .L8009B9BC
/* 65AC 8009B9AC 240500FF */   addiu     $a1, $zero, 0xff
.L8009B9B0:
/* 65B0 8009B9B0 00051027 */  nor        $v0, $zero, $a1
/* 65B4 8009B9B4 000217C3 */  sra        $v0, $v0, 0x1f
/* 65B8 8009B9B8 00A22824 */  and        $a1, $a1, $v0
.L8009B9BC:
/* 65BC 8009B9BC 0C02BA2C */  jal        func_800AE8B0
/* 65C0 8009B9C0 00000000 */   nop
/* 65C4 8009B9C4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 65C8 8009B9C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 65CC 8009B9CC 03E00008 */  jr         $ra
/* 65D0 8009B9D0 00000000 */   nop
