glabel func_800C2C60
/* 2D860 800C2C60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D864 800C2C64 AFB00010 */  sw         $s0, 0x10($sp)
/* 2D868 800C2C68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D86C 800C2C6C 0C0319D0 */  jal        __osDisableInt
/* 2D870 800C2C70 00808021 */   addu      $s0, $a0, $zero
/* 2D874 800C2C74 321000FF */  andi       $s0, $s0, 0xFF
/* 2D878 800C2C78 12000006 */  beqz       $s0, .L800C2C94
/* 2D87C 800C2C7C 00402021 */   addu      $a0, $v0, $zero
/* 2D880 800C2C80 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D884 800C2C84 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D888 800C2C88 94620000 */  lhu        $v0, 0x0($v1)
/* 2D88C 800C2C8C 08030B29 */  j          .L800C2CA4
/* 2D890 800C2C90 34420020 */   ori       $v0, $v0, 0x20
.L800C2C94:
/* 2D894 800C2C94 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D898 800C2C98 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D89C 800C2C9C 94620000 */  lhu        $v0, 0x0($v1)
/* 2D8A0 800C2CA0 3042FFDF */  andi       $v0, $v0, 0xFFDF
.L800C2CA4:
/* 2D8A4 800C2CA4 0C0319EC */  jal        __osRestoreInt
/* 2D8A8 800C2CA8 A4620000 */   sh        $v0, 0x0($v1)
/* 2D8AC 800C2CAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D8B0 800C2CB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D8B4 800C2CB4 03E00008 */  jr         $ra
/* 2D8B8 800C2CB8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2D8BC 800C2CBC 00000000 */  nop
.size func_800C2C60, . - func_800C2C60
