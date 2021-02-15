.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0CFC
/* 1B8FC 800B0CFC 90A60000 */  lbu        $a2, ($a1)
/* 1B900 800B0D00 30C20080 */  andi       $v0, $a2, 0x80
/* 1B904 800B0D04 10400006 */  beqz       $v0, .L800B0D20
/* 1B908 800B0D08 24A50001 */   addiu     $a1, $a1, 1
/* 1B90C 800B0D0C 90A30000 */  lbu        $v1, ($a1)
/* 1B910 800B0D10 24A50001 */  addiu      $a1, $a1, 1
/* 1B914 800B0D14 30C2007F */  andi       $v0, $a2, 0x7f
/* 1B918 800B0D18 00021200 */  sll        $v0, $v0, 8
/* 1B91C 800B0D1C 00623025 */  or         $a2, $v1, $v0
.L800B0D20:
/* 1B920 800B0D20 A48600AE */  sh         $a2, 0xae($a0)
/* 1B924 800B0D24 03E00008 */  jr         $ra
/* 1B928 800B0D28 00A01021 */   addu      $v0, $a1, $zero
