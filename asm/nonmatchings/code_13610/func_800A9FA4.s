.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9FA4
/* 14BA4 800A9FA4 3083FFFF */  andi       $v1, $a0, 0xffff
/* 14BA8 800A9FA8 00031040 */  sll        $v0, $v1, 1
/* 14BAC 800A9FAC 3C018010 */  lui        $at, %hi(D_80100558)
/* 14BB0 800A9FB0 00220821 */  addu       $at, $at, $v0
/* 14BB4 800A9FB4 94220558 */  lhu        $v0, %lo(D_80100558)($at)
/* 14BB8 800A9FB8 30428000 */  andi       $v0, $v0, 0x8000
/* 14BBC 800A9FBC 10400011 */  beqz       $v0, .L800AA004
/* 14BC0 800A9FC0 00002821 */   addu      $a1, $zero, $zero
/* 14BC4 800A9FC4 00031080 */  sll        $v0, $v1, 2
/* 14BC8 800A9FC8 00431021 */  addu       $v0, $v0, $v1
/* 14BCC 800A9FCC 000218C0 */  sll        $v1, $v0, 3
/* 14BD0 800A9FD0 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 14BD4 800A9FD4 00431021 */  addu       $v0, $v0, $v1
/* 14BD8 800A9FD8 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 14BDC 800A9FDC 30428000 */  andi       $v0, $v0, 0x8000
/* 14BE0 800A9FE0 54400008 */  bnezl      $v0, .L800AA004
/* 14BE4 800A9FE4 3083FFFF */   andi      $v1, $a0, 0xffff
/* 14BE8 800A9FE8 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 14BEC 800A9FEC 00431021 */  addu       $v0, $v0, $v1
/* 14BF0 800A9FF0 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 14BF4 800A9FF4 30420004 */  andi       $v0, $v0, 4
/* 14BF8 800A9FF8 54400018 */  bnezl      $v0, .L800AA05C
/* 14BFC 800A9FFC 24050001 */   addiu     $a1, $zero, 1
/* 14C00 800AA000 3083FFFF */  andi       $v1, $a0, 0xffff
.L800AA004:
/* 14C04 800AA004 00031040 */  sll        $v0, $v1, 1
/* 14C08 800AA008 3C018010 */  lui        $at, %hi(D_80100558)
/* 14C0C 800AA00C 00220821 */  addu       $at, $at, $v0
/* 14C10 800AA010 94220558 */  lhu        $v0, %lo(D_80100558)($at)
/* 14C14 800AA014 30420004 */  andi       $v0, $v0, 4
/* 14C18 800AA018 10400010 */  beqz       $v0, .L800AA05C
/* 14C1C 800AA01C 00031080 */   sll       $v0, $v1, 2
/* 14C20 800AA020 00431021 */  addu       $v0, $v0, $v1
/* 14C24 800AA024 000218C0 */  sll        $v1, $v0, 3
/* 14C28 800AA028 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 14C2C 800AA02C 00431021 */  addu       $v0, $v0, $v1
/* 14C30 800AA030 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 14C34 800AA034 30420004 */  andi       $v0, $v0, 4
/* 14C38 800AA038 14400009 */  bnez       $v0, .L800AA060
/* 14C3C 800AA03C 3082FFFF */   andi      $v0, $a0, 0xffff
/* 14C40 800AA040 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 14C44 800AA044 00431021 */  addu       $v0, $v0, $v1
/* 14C48 800AA048 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 14C4C 800AA04C 30428000 */  andi       $v0, $v0, 0x8000
/* 14C50 800AA050 1040000D */  beqz       $v0, .L800AA088
/* 14C54 800AA054 3082FFFF */   andi      $v0, $a0, 0xffff
/* 14C58 800AA058 24050001 */  addiu      $a1, $zero, 1
.L800AA05C:
/* 14C5C 800AA05C 3082FFFF */  andi       $v0, $a0, 0xffff
.L800AA060:
/* 14C60 800AA060 00021880 */  sll        $v1, $v0, 2
/* 14C64 800AA064 00621821 */  addu       $v1, $v1, $v0
/* 14C68 800AA068 000318C0 */  sll        $v1, $v1, 3
/* 14C6C 800AA06C 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 14C70 800AA070 00431021 */  addu       $v0, $v0, $v1
/* 14C74 800AA074 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 14C78 800AA078 30428000 */  andi       $v0, $v0, 0x8000
/* 14C7C 800AA07C 1440000B */  bnez       $v0, .L800AA0AC
/* 14C80 800AA080 00000000 */   nop
/* 14C84 800AA084 3082FFFF */  andi       $v0, $a0, 0xffff
.L800AA088:
/* 14C88 800AA088 00021880 */  sll        $v1, $v0, 2
/* 14C8C 800AA08C 00621821 */  addu       $v1, $v1, $v0
/* 14C90 800AA090 000318C0 */  sll        $v1, $v1, 3
/* 14C94 800AA094 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 14C98 800AA098 00431021 */  addu       $v0, $v0, $v1
/* 14C9C 800AA09C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 14CA0 800AA0A0 30420004 */  andi       $v0, $v0, 4
/* 14CA4 800AA0A4 10400008 */  beqz       $v0, .L800AA0C8
/* 14CA8 800AA0A8 00000000 */   nop
.L800AA0AC:
/* 14CAC 800AA0AC 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* 14CB0 800AA0B0 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* 14CB4 800AA0B4 3082FFFF */  andi       $v0, $a0, 0xffff
/* 14CB8 800AA0B8 00021040 */  sll        $v0, $v0, 1
/* 14CBC 800AA0BC 3C018010 */  lui        $at, %hi(D_80100558)
/* 14CC0 800AA0C0 00220821 */  addu       $at, $at, $v0
/* 14CC4 800AA0C4 A4230558 */  sh         $v1, %lo(D_80100558)($at)
.L800AA0C8:
/* 14CC8 800AA0C8 03E00008 */  jr         $ra
/* 14CCC 800AA0CC 00A01021 */   addu      $v0, $a1, $zero
