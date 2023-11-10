glabel func_8009EEE0
/* 9AE0 8009EEE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9AE4 8009EEE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 9AE8 8009EEE8 00808021 */  addu       $s0, $a0, $zero
/* 9AEC 8009EEEC 12000022 */  beqz       $s0, .L8009EF78
/* 9AF0 8009EEF0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 9AF4 8009EEF4 92030000 */  lbu        $v1, 0x0($s0)
/* 9AF8 8009EEF8 24020001 */  addiu      $v0, $zero, 0x1
/* 9AFC 8009EEFC 10620012 */  beq        $v1, $v0, .L8009EF48
/* 9B00 8009EF00 28620002 */   slti      $v0, $v1, 0x2
/* 9B04 8009EF04 50400005 */  beql       $v0, $zero, .L8009EF1C
/* 9B08 8009EF08 24020002 */   addiu     $v0, $zero, 0x2
/* 9B0C 8009EF0C 10600007 */  beqz       $v1, .L8009EF2C
/* 9B10 8009EF10 00000000 */   nop
/* 9B14 8009EF14 08027BDE */  j          .L8009EF78
/* 9B18 8009EF18 00000000 */   nop
.L8009EF1C:
/* 9B1C 8009EF1C 10620011 */  beq        $v1, $v0, .L8009EF64
/* 9B20 8009EF20 00000000 */   nop
/* 9B24 8009EF24 08027BDE */  j          .L8009EF78
/* 9B28 8009EF28 00000000 */   nop
.L8009EF2C:
/* 9B2C 8009EF2C 8E040004 */  lw         $a0, 0x4($s0)
/* 9B30 8009EF30 0C0326A1 */  jal        func_800C9A84
/* 9B34 8009EF34 00000000 */   nop
/* 9B38 8009EF38 0C0326A1 */  jal        func_800C9A84
/* 9B3C 8009EF3C 02002021 */   addu      $a0, $s0, $zero
/* 9B40 8009EF40 08027BDE */  j          .L8009EF78
/* 9B44 8009EF44 00000000 */   nop
.L8009EF48:
/* 9B48 8009EF48 8E040004 */  lw         $a0, 0x4($s0)
/* 9B4C 8009EF4C 0C025EC3 */  jal        func_80097B0C
/* 9B50 8009EF50 00000000 */   nop
/* 9B54 8009EF54 0C025EC3 */  jal        func_80097B0C
/* 9B58 8009EF58 02002021 */   addu      $a0, $s0, $zero
/* 9B5C 8009EF5C 08027BDE */  j          .L8009EF78
/* 9B60 8009EF60 00000000 */   nop
.L8009EF64:
/* 9B64 8009EF64 8E040004 */  lw         $a0, 0x4($s0)
/* 9B68 8009EF68 0C026187 */  jal        func_8009861C
/* 9B6C 8009EF6C 00000000 */   nop
/* 9B70 8009EF70 0C026187 */  jal        func_8009861C
/* 9B74 8009EF74 02002021 */   addu      $a0, $s0, $zero
.L8009EF78:
/* 9B78 8009EF78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B7C 8009EF7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B80 8009EF80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9B84 8009EF84 03E00008 */  jr         $ra
/* 9B88 8009EF88 00000000 */   nop
.size func_8009EEE0, . - func_8009EEE0
