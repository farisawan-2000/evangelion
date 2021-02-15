.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEB98
/* 19798 800AEB98 14800006 */  bnez       $a0, .L800AEBB4
/* 1979C 800AEB9C 27BDFFF8 */   addiu     $sp, $sp, -8
/* 197A0 800AEBA0 0802BAFB */  j          .L800AEBEC
/* 197A4 800AEBA4 00001021 */   addu      $v0, $zero, $zero
.L800AEBA8:
/* 197A8 800AEBA8 8CA2007C */  lw         $v0, 0x7c($a1)
/* 197AC 800AEBAC 0802BAFB */  j          .L800AEBEC
/* 197B0 800AEBB0 00000000 */   nop
.L800AEBB4:
/* 197B4 800AEBB4 3C028010 */  lui        $v0, %hi(D_80102944)
/* 197B8 800AEBB8 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 197BC 800AEBBC 3C058010 */  lui        $a1, %hi(D_8010294C)
/* 197C0 800AEBC0 8CA5294C */  lw         $a1, %lo(D_8010294C)($a1)
/* 197C4 800AEBC4 18400008 */  blez       $v0, .L800AEBE8
/* 197C8 800AEBC8 00001821 */   addu      $v1, $zero, $zero
/* 197CC 800AEBCC 00403021 */  addu       $a2, $v0, $zero
.L800AEBD0:
/* 197D0 800AEBD0 8CA20044 */  lw         $v0, 0x44($a1)
/* 197D4 800AEBD4 1044FFF4 */  beq        $v0, $a0, .L800AEBA8
/* 197D8 800AEBD8 24630001 */   addiu     $v1, $v1, 1
/* 197DC 800AEBDC 0066102A */  slt        $v0, $v1, $a2
/* 197E0 800AEBE0 1440FFFB */  bnez       $v0, .L800AEBD0
/* 197E4 800AEBE4 24A5013C */   addiu     $a1, $a1, 0x13c
.L800AEBE8:
/* 197E8 800AEBE8 00001021 */  addu       $v0, $zero, $zero
.L800AEBEC:
/* 197EC 800AEBEC 03E00008 */  jr         $ra
/* 197F0 800AEBF0 27BD0008 */   addiu     $sp, $sp, 8
