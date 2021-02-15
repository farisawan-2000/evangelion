.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BA020
/* 24C20 800BA020 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24C24 800BA024 AFB00010 */  sw         $s0, 0x10($sp)
/* 24C28 800BA028 00808021 */  addu       $s0, $a0, $zero
/* 24C2C 800BA02C AFB20018 */  sw         $s2, 0x18($sp)
/* 24C30 800BA030 00A09021 */  addu       $s2, $a1, $zero
/* 24C34 800BA034 AFB10014 */  sw         $s1, 0x14($sp)
/* 24C38 800BA038 00C08821 */  addu       $s1, $a2, $zero
/* 24C3C 800BA03C 3C05800C */  lui        $a1, %hi(D_800BAC30)
/* 24C40 800BA040 24A5AC30 */  addiu      $a1, $a1, %lo(D_800BAC30)
/* 24C44 800BA044 3C06800C */  lui        $a2, %hi(D_800BAD0C)
/* 24C48 800BA048 24C6AD0C */  addiu      $a2, $a2, %lo(D_800BAD0C)
/* 24C4C 800BA04C AFBF001C */  sw         $ra, 0x1c($sp)
/* 24C50 800BA050 0C02EE7C */  jal        func_800BB9F0
/* 24C54 800BA054 24070006 */   addiu     $a3, $zero, 6
/* 24C58 800BA058 AE000014 */  sw         $zero, 0x14($s0)
/* 24C5C 800BA05C AE110018 */  sw         $s1, 0x18($s0)
/* 24C60 800BA060 AE12001C */  sw         $s2, 0x1c($s0)
/* 24C64 800BA064 8FBF001C */  lw         $ra, 0x1c($sp)
/* 24C68 800BA068 8FB20018 */  lw         $s2, 0x18($sp)
/* 24C6C 800BA06C 8FB10014 */  lw         $s1, 0x14($sp)
/* 24C70 800BA070 8FB00010 */  lw         $s0, 0x10($sp)
/* 24C74 800BA074 03E00008 */  jr         $ra
/* 24C78 800BA078 27BD0020 */   addiu     $sp, $sp, 0x20
