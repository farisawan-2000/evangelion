.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AD7B0
/* 183B0 800AD7B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 183B4 800AD7B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 183B8 800AD7B8 AFBE0018 */  sw         $fp, 0x18($sp)
/* 183BC 800AD7BC 0C031544 */  jal        func_800C5510
/* 183C0 800AD7C0 03A0F021 */   addu      $fp, $sp, $zero
/* 183C4 800AD7C4 3C028010 */  lui        $v0, %hi(D_80102910)
/* 183C8 800AD7C8 24422910 */  addiu      $v0, $v0, %lo(D_80102910)
/* 183CC 800AD7CC AFA20010 */  sw         $v0, 0x10($sp)
/* 183D0 800AD7D0 2402000A */  addiu      $v0, $zero, 0xa
/* 183D4 800AD7D4 AFA20014 */  sw         $v0, 0x14($sp)
/* 183D8 800AD7D8 3C048010 */  lui        $a0, %hi(D_801005B0)
/* 183DC 800AD7DC 248405B0 */  addiu      $a0, $a0, %lo(D_801005B0)
/* 183E0 800AD7E0 24050001 */  addiu      $a1, $zero, 1
/* 183E4 800AD7E4 3C06800B */  lui        $a2, %hi(func_800AD814)
/* 183E8 800AD7E8 24C6D814 */  addiu      $a2, $a2, %lo(func_800AD814)
/* 183EC 800AD7EC 0C03065C */  jal        func_800C1970
/* 183F0 800AD7F0 00003821 */   addu      $a3, $zero, $zero
/* 183F4 800AD7F4 3C048010 */  lui        $a0, %hi(D_801005B0)
/* 183F8 800AD7F8 0C0306CC */  jal        func_800C1B30
/* 183FC 800AD7FC 248405B0 */   addiu     $a0, $a0, %lo(D_801005B0)
/* 18400 800AD800 03C0E821 */  addu       $sp, $fp, $zero
/* 18404 800AD804 8FBF001C */  lw         $ra, 0x1c($sp)
/* 18408 800AD808 8FBE0018 */  lw         $fp, 0x18($sp)
/* 1840C 800AD80C 03E00008 */  jr         $ra
/* 18410 800AD810 27BD0020 */   addiu     $sp, $sp, 0x20
