.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEA7C
/* 1967C 800AEA7C 14800003 */  bnez       $a0, .L800AEA8C
/* 19680 800AEA80 27BDFFF8 */   addiu     $sp, $sp, -8
/* 19684 800AEA84 0802BABF */  j          .L800AEAFC
/* 19688 800AEA88 00001021 */   addu      $v0, $zero, $zero
.L800AEA8C:
/* 1968C 800AEA8C 04A10003 */  bgez       $a1, .L800AEA9C
/* 19690 800AEA90 28A20080 */   slti      $v0, $a1, 0x80
/* 19694 800AEA94 0802BAA9 */  j          .L800AEAA4
/* 19698 800AEA98 00002821 */   addu      $a1, $zero, $zero
.L800AEA9C:
/* 1969C 800AEA9C 50400001 */  beql       $v0, $zero, .L800AEAA4
/* 196A0 800AEAA0 2405007F */   addiu     $a1, $zero, 0x7f
.L800AEAA4:
/* 196A4 800AEAA4 00003821 */  addu       $a3, $zero, $zero
/* 196A8 800AEAA8 3C028010 */  lui        $v0, %hi(D_80102944)
/* 196AC 800AEAAC 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 196B0 800AEAB0 3C038010 */  lui        $v1, %hi(D_8010294C)
/* 196B4 800AEAB4 8C63294C */  lw         $v1, %lo(D_8010294C)($v1)
/* 196B8 800AEAB8 1840000F */  blez       $v0, .L800AEAF8
/* 196BC 800AEABC 00003021 */   addu      $a2, $zero, $zero
/* 196C0 800AEAC0 240800FF */  addiu      $t0, $zero, 0xff
/* 196C4 800AEAC4 246300CC */  addiu      $v1, $v1, 0xcc
.L800AEAC8:
/* 196C8 800AEAC8 8C62FF78 */  lw         $v0, -0x88($v1)
/* 196CC 800AEACC 14440004 */  bne        $v0, $a0, .L800AEAE0
/* 196D0 800AEAD0 00000000 */   nop
/* 196D4 800AEAD4 24C60001 */  addiu      $a2, $a2, 1
/* 196D8 800AEAD8 A065FFFF */  sb         $a1, -1($v1)
/* 196DC 800AEADC A0680000 */  sb         $t0, ($v1)
.L800AEAE0:
/* 196E0 800AEAE0 3C028010 */  lui        $v0, %hi(D_80102944)
/* 196E4 800AEAE4 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 196E8 800AEAE8 24E70001 */  addiu      $a3, $a3, 1
/* 196EC 800AEAEC 00E2102A */  slt        $v0, $a3, $v0
/* 196F0 800AEAF0 1440FFF5 */  bnez       $v0, .L800AEAC8
/* 196F4 800AEAF4 2463013C */   addiu     $v1, $v1, 0x13c
.L800AEAF8:
/* 196F8 800AEAF8 00C01021 */  addu       $v0, $a2, $zero
.L800AEAFC:
/* 196FC 800AEAFC 03E00008 */  jr         $ra
/* 19700 800AEB00 27BD0008 */   addiu     $sp, $sp, 8
