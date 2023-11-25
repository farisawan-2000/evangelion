glabel func_800A6058
/* 10C58 800A6058 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10C5C 800A605C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10C60 800A6060 00043400 */  sll        $a2, $a0, 16
/* 10C64 800A6064 30A700FF */  andi       $a3, $a1, 0xFF
/* 10C68 800A6068 3C04001E */  lui        $a0, %hi(Image_ROM_START)
/* 10C6C 800A606C 24849000 */  addiu      $a0, $a0, %lo(Image_ROM_START)
/* 10C70 800A6070 3C05800D */  lui        $a1, %hi(D_800D6AD0)
/* 10C74 800A6074 24A56AD0 */  addiu      $a1, $a1, %lo(D_800D6AD0)
/* 10C78 800A6078 0C02648E */  jal        func_80099238
/* 10C7C 800A607C 00063403 */   sra       $a2, $a2, 16
/* 10C80 800A6080 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10C84 800A6084 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10C88 800A6088 03E00008 */  jr         $ra
/* 10C8C 800A608C 00000000 */   nop
.size func_800A6058, . - func_800A6058
