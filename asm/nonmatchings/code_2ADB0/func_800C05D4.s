.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C05D4
/* 2B1D4 800C05D4 10C00007 */  beqz       $a2, .L800C05F4
/* 2B1D8 800C05D8 00801821 */   addu      $v1, $a0, $zero
.L800C05DC:
/* 2B1DC 800C05DC 90A20000 */  lbu        $v0, ($a1)
/* 2B1E0 800C05E0 24A50001 */  addiu      $a1, $a1, 1
/* 2B1E4 800C05E4 24C6FFFF */  addiu      $a2, $a2, -1
/* 2B1E8 800C05E8 A0620000 */  sb         $v0, ($v1)
/* 2B1EC 800C05EC 14C0FFFB */  bnez       $a2, .L800C05DC
/* 2B1F0 800C05F0 24630001 */   addiu     $v1, $v1, 1
.L800C05F4:
/* 2B1F4 800C05F4 03E00008 */  jr         $ra
/* 2B1F8 800C05F8 00801021 */   addu      $v0, $a0, $zero
/* 2B1FC 800C05FC 00000000 */  nop
