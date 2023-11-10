glabel func_800C1584
/* 2C184 800C1584 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C188 800C1588 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2C18C 800C158C 8C840274 */  lw         $a0, 0x274($a0)
/* 2C190 800C1590 8C830010 */  lw         $v1, 0x10($a0)
/* 2C194 800C1594 24020001 */  addiu      $v0, $zero, 0x1
/* 2C198 800C1598 14620005 */  bne        $v1, $v0, .L800C15B0
/* 2C19C 800C159C 00000000 */   nop
/* 2C1A0 800C15A0 8C820004 */  lw         $v0, 0x4($a0)
/* 2C1A4 800C15A4 34420010 */  ori        $v0, $v0, 0x10
/* 2C1A8 800C15A8 0C030354 */  jal        func_800C0D50
/* 2C1AC 800C15AC AC820004 */   sw        $v0, 0x4($a0)
.L800C15B0:
/* 2C1B0 800C15B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2C1B4 800C15B4 03E00008 */  jr         $ra
/* 2C1B8 800C15B8 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800C1584, . - func_800C1584
