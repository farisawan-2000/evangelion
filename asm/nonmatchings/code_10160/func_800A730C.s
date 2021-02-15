.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A730C
/* 11F0C 800A730C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 11F10 800A7310 84820000 */  lh         $v0, ($a0)
/* 11F14 800A7314 94850000 */  lhu        $a1, ($a0)
/* 11F18 800A7318 1040000A */  beqz       $v0, .L800A7344
/* 11F1C 800A731C 24060001 */   addiu     $a2, $zero, 1
.L800A7320:
/* 11F20 800A7320 24840002 */  addiu      $a0, $a0, 2
/* 11F24 800A7324 00051400 */  sll        $v0, $a1, 0x10
/* 11F28 800A7328 00021403 */  sra        $v0, $v0, 0x10
/* 11F2C 800A732C 38420001 */  xori       $v0, $v0, 1
/* 11F30 800A7330 2C420001 */  sltiu      $v0, $v0, 1
/* 11F34 800A7334 84830000 */  lh         $v1, ($a0)
/* 11F38 800A7338 94850000 */  lhu        $a1, ($a0)
/* 11F3C 800A733C 1460FFF8 */  bnez       $v1, .L800A7320
/* 11F40 800A7340 00C23021 */   addu      $a2, $a2, $v0
.L800A7344:
/* 11F44 800A7344 00C01021 */  addu       $v0, $a2, $zero
/* 11F48 800A7348 27BD0010 */  addiu      $sp, $sp, 0x10
/* 11F4C 800A734C 03E00008 */  jr         $ra
/* 11F50 800A7350 00000000 */   nop
