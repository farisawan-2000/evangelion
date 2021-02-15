.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9180
/* 13D80 800A9180 3C038000 */  lui        $v1, %hi(D_80000300)
/* 13D84 800A9184 8C630300 */  lw         $v1, %lo(D_80000300)($v1)
/* 13D88 800A9188 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D8C 800A918C 24020001 */  addiu      $v0, $zero, 1
/* 13D90 800A9190 10620014 */  beq        $v1, $v0, .L800A91E4
/* 13D94 800A9194 AFBF0010 */   sw        $ra, 0x10($sp)
/* 13D98 800A9198 28620002 */  slti       $v0, $v1, 2
/* 13D9C 800A919C 50400005 */  beql       $v0, $zero, .L800A91B4
/* 13DA0 800A91A0 24020002 */   addiu     $v0, $zero, 2
/* 13DA4 800A91A4 10600007 */  beqz       $v1, .L800A91C4
/* 13DA8 800A91A8 00000000 */   nop
/* 13DAC 800A91AC 0802A479 */  j          .L800A91E4
/* 13DB0 800A91B0 00000000 */   nop
.L800A91B4:
/* 13DB4 800A91B4 10620007 */  beq        $v1, $v0, .L800A91D4
/* 13DB8 800A91B8 00000000 */   nop
/* 13DBC 800A91BC 0802A479 */  j          .L800A91E4
/* 13DC0 800A91C0 00000000 */   nop
.L800A91C4:
/* 13DC4 800A91C4 3C048010 */  lui        $a0, %hi(D_800FAF50)
/* 13DC8 800A91C8 2484AF50 */  addiu      $a0, $a0, %lo(D_800FAF50)
/* 13DCC 800A91CC 0802A477 */  j          .L800A91DC
/* 13DD0 800A91D0 00000000 */   nop
.L800A91D4:
/* 13DD4 800A91D4 3C048010 */  lui        $a0, %hi(D_800FAF5C)
/* 13DD8 800A91D8 2484AF5C */  addiu      $a0, $a0, %lo(D_800FAF5C)
.L800A91DC:
/* 13DDC 800A91DC 0C02A793 */  jal        func_800A9E4C
/* 13DE0 800A91E0 00000000 */   nop
.L800A91E4:
/* 13DE4 800A91E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13DE8 800A91E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13DEC 800A91EC 03E00008 */  jr         $ra
/* 13DF0 800A91F0 00000000 */   nop
