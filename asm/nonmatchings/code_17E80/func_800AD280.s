glabel func_800AD280
/* 17E80 800AD280 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 17E84 800AD284 3C048039 */  lui        $a0, %hi(D_8038F800)
/* 17E88 800AD288 2484F800 */  addiu      $a0, $a0, %lo(D_8038F800)
/* 17E8C 800AD28C 3C05803A */  lui        $a1, %hi(D_8039E630)
/* 17E90 800AD290 24A5E630 */  addiu      $a1, $a1, %lo(D_8039E630)
/* 17E94 800AD294 00A42823 */  subu       $a1, $a1, $a0
/* 17E98 800AD298 AFB50024 */  sw         $s5, 0x24($sp)
/* 17E9C 800AD29C 3C15001A */  lui        $s5, %hi(rom_addr_001A1880)
/* 17EA0 800AD2A0 26B51880 */  addiu      $s5, $s5, %lo(rom_addr_001A1880)
/* 17EA4 800AD2A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 17EA8 800AD2A8 3C12001C */  lui        $s2, %hi(yay0_001BB280_ROM_START)
/* 17EAC 800AD2AC 2652B280 */  addiu      $s2, $s2, %lo(yay0_001BB280_ROM_START)
/* 17EB0 800AD2B0 02559023 */  subu       $s2, $s2, $s5
/* 17EB4 800AD2B4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 17EB8 800AD2B8 3C13803A */  lui        $s3, %hi(D_8039E630)
/* 17EBC 800AD2BC 2673E630 */  addiu      $s3, $s3, %lo(D_8039E630)
/* 17EC0 800AD2C0 AFB00010 */  sw         $s0, 0x10($sp)
/* 17EC4 800AD2C4 3C10803B */  lui        $s0, %hi(D_803A9200)
/* 17EC8 800AD2C8 26109200 */  addiu      $s0, $s0, %lo(D_803A9200)
/* 17ECC 800AD2CC 02138023 */  subu       $s0, $s0, $s3
/* 17ED0 800AD2D0 AFB40020 */  sw         $s4, 0x20($sp)
/* 17ED4 800AD2D4 3C14803B */  lui        $s4, %hi(D_803A9200)
/* 17ED8 800AD2D8 26949200 */  addiu      $s4, $s4, %lo(D_803A9200)
/* 17EDC 800AD2DC AFB10014 */  sw         $s1, 0x14($sp)
/* 17EE0 800AD2E0 3C11803B */  lui        $s1, %hi(D_803B3EC0)
/* 17EE4 800AD2E4 26313EC0 */  addiu      $s1, $s1, %lo(D_803B3EC0)
/* 17EE8 800AD2E8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 17EEC 800AD2EC 0C02F4F0 */  jal        func_800BD3C0
/* 17EF0 800AD2F0 02348823 */   subu      $s1, $s1, $s4
/* 17EF4 800AD2F4 02602021 */  addu       $a0, $s3, $zero
/* 17EF8 800AD2F8 0C02F4C4 */  jal        func_800BD310
/* 17EFC 800AD2FC 02002821 */   addu      $a1, $s0, $zero
/* 17F00 800AD300 02A02021 */  addu       $a0, $s5, $zero
/* 17F04 800AD304 3C058039 */  lui        $a1, %hi(D_8038F800)
/* 17F08 800AD308 24A5F800 */  addiu      $a1, $a1, %lo(D_8038F800)
/* 17F0C 800AD30C 0C02645D */  jal        func_80099174
/* 17F10 800AD310 02403021 */   addu      $a2, $s2, $zero
/* 17F14 800AD314 02802021 */  addu       $a0, $s4, $zero
/* 17F18 800AD318 0C030134 */  jal        bzero
/* 17F1C 800AD31C 02202821 */   addu      $a1, $s1, $zero
/* 17F20 800AD320 8FBF0028 */  lw         $ra, 0x28($sp)
/* 17F24 800AD324 8FB50024 */  lw         $s5, 0x24($sp)
/* 17F28 800AD328 8FB40020 */  lw         $s4, 0x20($sp)
/* 17F2C 800AD32C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 17F30 800AD330 8FB20018 */  lw         $s2, 0x18($sp)
/* 17F34 800AD334 8FB10014 */  lw         $s1, 0x14($sp)
/* 17F38 800AD338 8FB00010 */  lw         $s0, 0x10($sp)
/* 17F3C 800AD33C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 17F40 800AD340 03E00008 */  jr         $ra
/* 17F44 800AD344 00000000 */   nop
.size func_800AD280, . - func_800AD280
