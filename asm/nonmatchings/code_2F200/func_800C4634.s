.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C4634
/* 2F234 800C4634 2487001C */  addiu      $a3, $a0, 0x1c
/* 2F238 800C4638 A4C00000 */  sh         $zero, ($a2)
/* 2F23C 800C463C A4A00000 */  sh         $zero, ($a1)
.L800C4640:
/* 2F240 800C4640 94830000 */  lhu        $v1, ($a0)
/* 2F244 800C4644 94A20000 */  lhu        $v0, ($a1)
/* 2F248 800C4648 00431021 */  addu       $v0, $v0, $v1
/* 2F24C 800C464C A4A20000 */  sh         $v0, ($a1)
/* 2F250 800C4650 94C20000 */  lhu        $v0, ($a2)
/* 2F254 800C4654 24840002 */  addiu      $a0, $a0, 2
/* 2F258 800C4658 00031827 */  nor        $v1, $zero, $v1
/* 2F25C 800C465C 00431021 */  addu       $v0, $v0, $v1
/* 2F260 800C4660 A4C20000 */  sh         $v0, ($a2)
/* 2F264 800C4664 0087102B */  sltu       $v0, $a0, $a3
/* 2F268 800C4668 1440FFF5 */  bnez       $v0, .L800C4640
/* 2F26C 800C466C 00000000 */   nop
/* 2F270 800C4670 03E00008 */  jr         $ra
/* 2F274 800C4674 00001021 */   addu      $v0, $zero, $zero
