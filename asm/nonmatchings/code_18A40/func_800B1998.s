.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1998
/* 1C598 800B1998 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C59C 800B199C 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C5A0 800B19A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C5A4 800B19A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C5A8 800B19A8 00048400 */  sll        $s0, $a0, 0x10
/* 1C5AC 800B19AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C5B0 800B19B0 8C420034 */  lw         $v0, 0x34($v0)
/* 1C5B4 800B19B4 00108383 */  sra        $s0, $s0, 0xe
/* 1C5B8 800B19B8 26040024 */  addiu      $a0, $s0, 0x24
/* 1C5BC 800B19BC 0C02C67A */  jal        func_800B19E8
/* 1C5C0 800B19C0 00442021 */   addu      $a0, $v0, $a0
/* 1C5C4 800B19C4 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1C5C8 800B19C8 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1C5CC 800B19CC 8C420034 */  lw         $v0, 0x34($v0)
/* 1C5D0 800B19D0 02028021 */  addu       $s0, $s0, $v0
/* 1C5D4 800B19D4 8E020024 */  lw         $v0, 0x24($s0)
/* 1C5D8 800B19D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C5DC 800B19DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C5E0 800B19E0 03E00008 */  jr         $ra
/* 1C5E4 800B19E4 27BD0018 */   addiu     $sp, $sp, 0x18
