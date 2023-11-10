glabel func_800C97A0
/* 343A0 800C97A0 90A20000 */  lbu        $v0, 0x0($a1)
/* 343A4 800C97A4 00C03825 */  or         $a3, $a2, $zero
/* 343A8 800C97A8 00801825 */  or         $v1, $a0, $zero
/* 343AC 800C97AC 5040000C */  beql       $v0, $zero, .L800C97E0
/* 343B0 800C97B0 A0600000 */   sb        $zero, 0x0($v1)
/* 343B4 800C97B4 10E00009 */  beqz       $a3, .L800C97DC
/* 343B8 800C97B8 24E7FFFF */   addiu     $a3, $a3, -0x1
.L800C97BC:
/* 343BC 800C97BC A0620000 */  sb         $v0, 0x0($v1)
/* 343C0 800C97C0 90A20001 */  lbu        $v0, 0x1($a1)
/* 343C4 800C97C4 24630001 */  addiu      $v1, $v1, 0x1
/* 343C8 800C97C8 24A50001 */  addiu      $a1, $a1, 0x1
/* 343CC 800C97CC 10400003 */  beqz       $v0, .L800C97DC
/* 343D0 800C97D0 00E03025 */   or        $a2, $a3, $zero
/* 343D4 800C97D4 14E0FFF9 */  bnez       $a3, .L800C97BC
/* 343D8 800C97D8 24E7FFFF */   addiu     $a3, $a3, -0x1
.L800C97DC:
/* 343DC 800C97DC A0600000 */  sb         $zero, 0x0($v1)
.L800C97E0:
/* 343E0 800C97E0 03E00008 */  jr         $ra
/* 343E4 800C97E4 00801025 */   or        $v0, $a0, $zero
/* 343E8 800C97E8 00000000 */  nop
/* 343EC 800C97EC 00000000 */  nop
.size func_800C97A0, . - func_800C97A0
