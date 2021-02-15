.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009EBE8
/* 97E8 8009EBE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97EC 8009EBEC 10800009 */  beqz       $a0, .L8009EC14
/* 97F0 8009EBF0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 97F4 8009EBF4 9082002D */  lbu        $v0, 0x2d($a0)
/* 97F8 8009EBF8 10400006 */  beqz       $v0, .L8009EC14
/* 97FC 8009EBFC 240200FF */   addiu     $v0, $zero, 0xff
/* 9800 8009EC00 8483001E */  lh         $v1, 0x1e($a0)
/* 9804 8009EC04 10620003 */  beq        $v1, $v0, .L8009EC14
/* 9808 8009EC08 A080002D */   sb        $zero, 0x2d($a0)
/* 980C 8009EC0C 0C02799A */  jal        func_8009E668
/* 9810 8009EC10 00000000 */   nop
.L8009EC14:
/* 9814 8009EC14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9818 8009EC18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 981C 8009EC1C 03E00008 */  jr         $ra
/* 9820 8009EC20 00000000 */   nop
