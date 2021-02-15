.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B584
/* 6184 8009B584 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6188 8009B588 14800005 */  bnez       $a0, .L8009B5A0
/* 618C 8009B58C AFBF0010 */   sw        $ra, 0x10($sp)
/* 6190 8009B590 3C048010 */  lui        $a0, %hi(D_800FF3B8)
/* 6194 8009B594 8C84F3B8 */  lw         $a0, %lo(D_800FF3B8)($a0)
/* 6198 8009B598 08026D6A */  j          .L8009B5A8
/* 619C 8009B59C 00000000 */   nop
.L8009B5A0:
/* 61A0 8009B5A0 3C048010 */  lui        $a0, %hi(D_800FF3BC)
/* 61A4 8009B5A4 8C84F3BC */  lw         $a0, %lo(D_800FF3BC)($a0)
.L8009B5A8:
/* 61A8 8009B5A8 0C02BB59 */  jal        func_800AED64
/* 61AC 8009B5AC 00000000 */   nop
/* 61B0 8009B5B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61B4 8009B5B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 61B8 8009B5B8 03E00008 */  jr         $ra
/* 61BC 8009B5BC 00000000 */   nop
