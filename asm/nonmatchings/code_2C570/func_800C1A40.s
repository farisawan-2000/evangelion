.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1A40
/* 2C640 800C1A40 14800003 */  bnez       $a0, .L800C1A50
/* 2C644 800C1A44 00000000 */   nop
/* 2C648 800C1A48 3C04800F */  lui        $a0, %hi(D_800F69C0)
/* 2C64C 800C1A4C 8C8469C0 */  lw         $a0, %lo(D_800F69C0)($a0)
.L800C1A50:
/* 2C650 800C1A50 03E00008 */  jr         $ra
/* 2C654 800C1A54 8C820004 */   lw        $v0, 4($a0)
/* 2C658 800C1A58 00000000 */  nop
/* 2C65C 800C1A5C 00000000 */  nop
