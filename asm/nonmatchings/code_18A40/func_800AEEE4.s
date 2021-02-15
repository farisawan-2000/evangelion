.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEEE4
/* 19AE4 800AEEE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19AE8 800AEEE8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 19AEC 800AEEEC 90830000 */  lbu        $v1, ($a0)
/* 19AF0 800AEEF0 24020001 */  addiu      $v0, $zero, 1
/* 19AF4 800AEEF4 10620010 */  beq        $v1, $v0, .L800AEF38
/* 19AF8 800AEEF8 28620002 */   slti      $v0, $v1, 2
/* 19AFC 800AEEFC 50400005 */  beql       $v0, $zero, .L800AEF14
/* 19B00 800AEF00 24020002 */   addiu     $v0, $zero, 2
/* 19B04 800AEF04 10600007 */  beqz       $v1, .L800AEF24
/* 19B08 800AEF08 2405FFFE */   addiu     $a1, $zero, -2
/* 19B0C 800AEF0C 0802BBD6 */  j          .L800AEF58
/* 19B10 800AEF10 00000000 */   nop
.L800AEF14:
/* 19B14 800AEF14 1062000E */  beq        $v1, $v0, .L800AEF50
/* 19B18 800AEF18 00000000 */   nop
/* 19B1C 800AEF1C 0802BBD6 */  j          .L800AEF58
/* 19B20 800AEF20 00000000 */   nop
.L800AEF24:
/* 19B24 800AEF24 8C840004 */  lw         $a0, 4($a0)
/* 19B28 800AEF28 0C02C322 */  jal        func_800B0C88
/* 19B2C 800AEF2C 24060001 */   addiu     $a2, $zero, 1
/* 19B30 800AEF30 0802BBD6 */  j          .L800AEF58
/* 19B34 800AEF34 00000000 */   nop
.L800AEF38:
/* 19B38 800AEF38 8C840004 */  lw         $a0, 4($a0)
/* 19B3C 800AEF3C 2405FFFE */  addiu      $a1, $zero, -2
/* 19B40 800AEF40 0C02C322 */  jal        func_800B0C88
/* 19B44 800AEF44 00003021 */   addu      $a2, $zero, $zero
/* 19B48 800AEF48 0802BBD6 */  j          .L800AEF58
/* 19B4C 800AEF4C 00000000 */   nop
.L800AEF50:
/* 19B50 800AEF50 0C02C7AC */  jal        func_800B1EB0
/* 19B54 800AEF54 8C840004 */   lw        $a0, 4($a0)
.L800AEF58:
/* 19B58 800AEF58 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19B5C 800AEF5C 03E00008 */  jr         $ra
/* 19B60 800AEF60 27BD0018 */   addiu     $sp, $sp, 0x18
