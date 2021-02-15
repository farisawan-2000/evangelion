.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800ADD60
/* 18960 800ADD60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18964 800ADD64 00042400 */  sll        $a0, $a0, 0x10
/* 18968 800ADD68 00042403 */  sra        $a0, $a0, 0x10
/* 1896C 800ADD6C 24020001 */  addiu      $v0, $zero, 1
/* 18970 800ADD70 1082000B */  beq        $a0, $v0, .L800ADDA0
/* 18974 800ADD74 AFBF0010 */   sw        $ra, 0x10($sp)
/* 18978 800ADD78 24020002 */  addiu      $v0, $zero, 2
/* 1897C 800ADD7C 14820010 */  bne        $a0, $v0, .L800ADDC0
/* 18980 800ADD80 24040002 */   addiu     $a0, $zero, 2
/* 18984 800ADD84 0C02B996 */  jal        func_800AE658
/* 18988 800ADD88 24050019 */   addiu     $a1, $zero, 0x19
/* 1898C 800ADD8C 24040001 */  addiu      $a0, $zero, 1
/* 18990 800ADD90 0C02B996 */  jal        func_800AE658
/* 18994 800ADD94 24050019 */   addiu     $a1, $zero, 0x19
/* 18998 800ADD98 0802B770 */  j          .L800ADDC0
/* 1899C 800ADD9C 00000000 */   nop
.L800ADDA0:
/* 189A0 800ADDA0 2402001C */  addiu      $v0, $zero, 0x1c
/* 189A4 800ADDA4 14A20006 */  bne        $a1, $v0, .L800ADDC0
/* 189A8 800ADDA8 00000000 */   nop
/* 189AC 800ADDAC 3C01800F */  lui        $at, %hi(D_800F1210)
/* 189B0 800ADDB0 A0201210 */  sb         $zero, %lo(D_800F1210)($at)
/* 189B4 800ADDB4 3C048017 */  lui        $a0, %hi(D_8016D030)
/* 189B8 800ADDB8 0C02D784 */  jal        func_800B5E10
/* 189BC 800ADDBC 2484D030 */   addiu     $a0, $a0, %lo(D_8016D030)
.L800ADDC0:
/* 189C0 800ADDC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 189C4 800ADDC4 03E00008 */  jr         $ra
/* 189C8 800ADDC8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 189CC 800ADDCC 00000000 */  nop
