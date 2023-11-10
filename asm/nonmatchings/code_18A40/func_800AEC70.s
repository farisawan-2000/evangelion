glabel func_800AEC70
/* 19870 800AEC70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 19874 800AEC74 AFB00018 */  sw         $s0, 0x18($sp)
/* 19878 800AEC78 00808021 */  addu       $s0, $a0, $zero
/* 1987C 800AEC7C 24020001 */  addiu      $v0, $zero, 0x1
/* 19880 800AEC80 1600000A */  bnez       $s0, .L800AECAC
/* 19884 800AEC84 AFBF001C */   sw        $ra, 0x1C($sp)
/* 19888 800AEC88 3C038010 */  lui        $v1, %hi(D_80102974)
/* 1988C 800AEC8C 8C632974 */  lw         $v1, %lo(D_80102974)($v1)
/* 19890 800AEC90 24020002 */  addiu      $v0, $zero, 0x2
/* 19894 800AEC94 A3A20010 */  sb         $v0, 0x10($sp)
/* 19898 800AEC98 AFA30014 */  sw         $v1, 0x14($sp)
/* 1989C 800AEC9C 3C018010 */  lui        $at, %hi(D_80102974)
/* 198A0 800AECA0 AC232974 */  sw         $v1, %lo(D_80102974)($at)
/* 198A4 800AECA4 0C02BBD9 */  jal        func_800AEF64
/* 198A8 800AECA8 27A40010 */   addiu     $a0, $sp, 0x10
.L800AECAC:
/* 198AC 800AECAC 10400003 */  beqz       $v0, .L800AECBC
/* 198B0 800AECB0 00000000 */   nop
/* 198B4 800AECB4 3C018010 */  lui        $at, %hi(D_80102970)
/* 198B8 800AECB8 AC302970 */  sw         $s0, %lo(D_80102970)($at)
.L800AECBC:
/* 198BC 800AECBC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 198C0 800AECC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 198C4 800AECC4 03E00008 */  jr         $ra
/* 198C8 800AECC8 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800AEC70, . - func_800AEC70
