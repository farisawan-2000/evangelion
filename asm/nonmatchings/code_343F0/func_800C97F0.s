glabel func_800C97F0
/* 343F0 800C97F0 90820000 */  lbu        $v0, 0x0($a0)
.L800C97F4:
/* 343F4 800C97F4 90A30000 */  lbu        $v1, 0x0($a1)
/* 343F8 800C97F8 24840001 */  addiu      $a0, $a0, 0x1
/* 343FC 800C97FC 24A50001 */  addiu      $a1, $a1, 0x1
/* 34400 800C9800 10620003 */  beq        $v1, $v0, .L800C9810
/* 34404 800C9804 00403825 */   or        $a3, $v0, $zero
/* 34408 800C9808 03E00008 */  jr         $ra
/* 3440C 800C980C 00E31023 */   subu      $v0, $a3, $v1
.L800C9810:
/* 34410 800C9810 5440FFF8 */  bnel       $v0, $zero, .L800C97F4
/* 34414 800C9814 90820000 */   lbu       $v0, 0x0($a0)
/* 34418 800C9818 00001025 */  or         $v0, $zero, $zero
/* 3441C 800C981C 03E00008 */  jr         $ra
/* 34420 800C9820 00000000 */   nop
/* 34424 800C9824 00000000 */  nop
/* 34428 800C9828 00000000 */  nop
/* 3442C 800C982C 00000000 */  nop
.size func_800C97F0, . - func_800C97F0