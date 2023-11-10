glabel func_800C9EA0
/* 34AA0 800C9EA0 00801025 */  or         $v0, $a0, $zero
/* 34AA4 800C9EA4 10C00032 */  beqz       $a2, .L800C9F70
/* 34AA8 800C9EA8 00A01825 */   or        $v1, $a1, $zero
/* 34AAC 800C9EAC 30C40003 */  andi       $a0, $a2, 0x3
/* 34AB0 800C9EB0 00042023 */  negu       $a0, $a0
/* 34AB4 800C9EB4 1080000D */  beqz       $a0, .L800C9EEC
/* 34AB8 800C9EB8 00863821 */   addu      $a3, $a0, $a2
.L800C9EBC:
/* 34ABC 800C9EBC 90440000 */  lbu        $a0, 0x0($v0)
/* 34AC0 800C9EC0 90650000 */  lbu        $a1, 0x0($v1)
/* 34AC4 800C9EC4 24420001 */  addiu      $v0, $v0, 0x1
/* 34AC8 800C9EC8 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 34ACC 800C9ECC 10850003 */  beq        $a0, $a1, .L800C9EDC
/* 34AD0 800C9ED0 00000000 */   nop
/* 34AD4 800C9ED4 03E00008 */  jr         $ra
/* 34AD8 800C9ED8 00851023 */   subu      $v0, $a0, $a1
.L800C9EDC:
/* 34ADC 800C9EDC 14E6FFF7 */  bne        $a3, $a2, .L800C9EBC
/* 34AE0 800C9EE0 24630001 */   addiu     $v1, $v1, 0x1
/* 34AE4 800C9EE4 50C00023 */  beql       $a2, $zero, .L800C9F74
/* 34AE8 800C9EE8 00001025 */   or        $v0, $zero, $zero
.L800C9EEC:
/* 34AEC 800C9EEC 90440000 */  lbu        $a0, 0x0($v0)
/* 34AF0 800C9EF0 90650000 */  lbu        $a1, 0x0($v1)
/* 34AF4 800C9EF4 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 34AF8 800C9EF8 50850004 */  beql       $a0, $a1, .L800C9F0C
/* 34AFC 800C9EFC 90440001 */   lbu       $a0, 0x1($v0)
/* 34B00 800C9F00 03E00008 */  jr         $ra
/* 34B04 800C9F04 00851023 */   subu      $v0, $a0, $a1
/* 34B08 800C9F08 90440001 */  lbu        $a0, 0x1($v0)
.L800C9F0C:
/* 34B0C 800C9F0C 90650001 */  lbu        $a1, 0x1($v1)
/* 34B10 800C9F10 24420001 */  addiu      $v0, $v0, 0x1
/* 34B14 800C9F14 24630001 */  addiu      $v1, $v1, 0x1
/* 34B18 800C9F18 50850004 */  beql       $a0, $a1, .L800C9F2C
/* 34B1C 800C9F1C 90440001 */   lbu       $a0, 0x1($v0)
/* 34B20 800C9F20 03E00008 */  jr         $ra
/* 34B24 800C9F24 00851023 */   subu      $v0, $a0, $a1
/* 34B28 800C9F28 90440001 */  lbu        $a0, 0x1($v0)
.L800C9F2C:
/* 34B2C 800C9F2C 90650001 */  lbu        $a1, 0x1($v1)
/* 34B30 800C9F30 24420001 */  addiu      $v0, $v0, 0x1
/* 34B34 800C9F34 24630001 */  addiu      $v1, $v1, 0x1
/* 34B38 800C9F38 50850004 */  beql       $a0, $a1, .L800C9F4C
/* 34B3C 800C9F3C 90440001 */   lbu       $a0, 0x1($v0)
/* 34B40 800C9F40 03E00008 */  jr         $ra
/* 34B44 800C9F44 00851023 */   subu      $v0, $a0, $a1
/* 34B48 800C9F48 90440001 */  lbu        $a0, 0x1($v0)
.L800C9F4C:
/* 34B4C 800C9F4C 90650001 */  lbu        $a1, 0x1($v1)
/* 34B50 800C9F50 24420001 */  addiu      $v0, $v0, 0x1
/* 34B54 800C9F54 24420001 */  addiu      $v0, $v0, 0x1
/* 34B58 800C9F58 10850003 */  beq        $a0, $a1, .L800C9F68
/* 34B5C 800C9F5C 24630001 */   addiu     $v1, $v1, 0x1
/* 34B60 800C9F60 03E00008 */  jr         $ra
/* 34B64 800C9F64 00851023 */   subu      $v0, $a0, $a1
.L800C9F68:
/* 34B68 800C9F68 14C0FFE0 */  bnez       $a2, .L800C9EEC
/* 34B6C 800C9F6C 24630001 */   addiu     $v1, $v1, 0x1
.L800C9F70:
/* 34B70 800C9F70 00001025 */  or         $v0, $zero, $zero
.L800C9F74:
/* 34B74 800C9F74 03E00008 */  jr         $ra
/* 34B78 800C9F78 00000000 */   nop
/* 34B7C 800C9F7C 00000000 */  nop
.size func_800C9EA0, . - func_800C9EA0
