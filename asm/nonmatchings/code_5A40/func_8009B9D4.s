.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B9D4
/* 65D4 8009B9D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65D8 8009B9D8 28A20100 */  slti       $v0, $a1, 0x100
/* 65DC 8009B9DC 14400003 */  bnez       $v0, .L8009B9EC
/* 65E0 8009B9E0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 65E4 8009B9E4 08026E7E */  j          .L8009B9F8
/* 65E8 8009B9E8 240500FF */   addiu     $a1, $zero, 0xff
.L8009B9EC:
/* 65EC 8009B9EC 00051027 */  nor        $v0, $zero, $a1
/* 65F0 8009B9F0 000217C3 */  sra        $v0, $v0, 0x1f
/* 65F4 8009B9F4 00A22824 */  and        $a1, $a1, $v0
.L8009B9F8:
/* 65F8 8009B9F8 0C02BA44 */  jal        func_800AE910
/* 65FC 8009B9FC 00000000 */   nop
/* 6600 8009BA00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6604 8009BA04 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6608 8009BA08 03E00008 */  jr         $ra
/* 660C 8009BA0C 00000000 */   nop
