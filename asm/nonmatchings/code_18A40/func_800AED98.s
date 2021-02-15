.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AED98
/* 19998 800AED98 10800015 */  beqz       $a0, .L800AEDF0
/* 1999C 800AED9C 27BDFFF8 */   addiu     $sp, $sp, -8
/* 199A0 800AEDA0 3C038010 */  lui        $v1, %hi(D_80102944)
/* 199A4 800AEDA4 8C632944 */  lw         $v1, %lo(D_80102944)($v1)
/* 199A8 800AEDA8 3C028010 */  lui        $v0, %hi(D_8010294C)
/* 199AC 800AEDAC 8C42294C */  lw         $v0, %lo(D_8010294C)($v0)
/* 199B0 800AEDB0 1860000F */  blez       $v1, .L800AEDF0
/* 199B4 800AEDB4 00002821 */   addu      $a1, $zero, $zero
/* 199B8 800AEDB8 00603021 */  addu       $a2, $v1, $zero
/* 199BC 800AEDBC 24430078 */  addiu      $v1, $v0, 0x78
.L800AEDC0:
/* 199C0 800AEDC0 8C62FFCC */  lw         $v0, -0x34($v1)
/* 199C4 800AEDC4 54440007 */  bnel       $v0, $a0, .L800AEDE4
/* 199C8 800AEDC8 24A50001 */   addiu     $a1, $a1, 1
/* 199CC 800AEDCC 8C62FFFC */  lw         $v0, -4($v1)
/* 199D0 800AEDD0 14400002 */  bnez       $v0, .L800AEDDC
/* 199D4 800AEDD4 00000000 */   nop
/* 199D8 800AEDD8 8C620000 */  lw         $v0, ($v1)
.L800AEDDC:
/* 199DC 800AEDDC 0802BB7D */  j          .L800AEDF4
/* 199E0 800AEDE0 8C420008 */   lw        $v0, 8($v0)
.L800AEDE4:
/* 199E4 800AEDE4 00A6102A */  slt        $v0, $a1, $a2
/* 199E8 800AEDE8 1440FFF5 */  bnez       $v0, .L800AEDC0
/* 199EC 800AEDEC 2463013C */   addiu     $v1, $v1, 0x13c
.L800AEDF0:
/* 199F0 800AEDF0 00001021 */  addu       $v0, $zero, $zero
.L800AEDF4:
/* 199F4 800AEDF4 03E00008 */  jr         $ra
/* 199F8 800AEDF8 27BD0008 */   addiu     $sp, $sp, 8
