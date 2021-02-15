.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C9760
/* 34360 800C9760 90A20000 */  lbu        $v0, ($a1)
/* 34364 800C9764 00801825 */  or         $v1, $a0, $zero
/* 34368 800C9768 50400008 */  beql       $v0, $zero, .L800C978C
/* 3436C 800C976C A0600000 */   sb        $zero, ($v1)
/* 34370 800C9770 A0620000 */  sb         $v0, ($v1)
.L800C9774:
/* 34374 800C9774 90A20001 */  lbu        $v0, 1($a1)
/* 34378 800C9778 24630001 */  addiu      $v1, $v1, 1
/* 3437C 800C977C 24A50001 */  addiu      $a1, $a1, 1
/* 34380 800C9780 5440FFFC */  bnezl      $v0, .L800C9774
/* 34384 800C9784 A0620000 */   sb        $v0, ($v1)
/* 34388 800C9788 A0600000 */  sb         $zero, ($v1)
.L800C978C:
/* 3438C 800C978C 03E00008 */  jr         $ra
/* 34390 800C9790 00801025 */   or        $v0, $a0, $zero
/* 34394 800C9794 00000000 */  nop
/* 34398 800C9798 00000000 */  nop
/* 3439C 800C979C 00000000 */  nop
