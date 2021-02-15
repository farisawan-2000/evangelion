.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AE7A4
/* 193A4 800AE7A4 14800003 */  bnez       $a0, .L800AE7B4
/* 193A8 800AE7A8 27BDFFF8 */   addiu     $sp, $sp, -8
/* 193AC 800AE7AC 0802BA14 */  j          .L800AE850
/* 193B0 800AE7B0 00001021 */   addu      $v0, $zero, $zero
.L800AE7B4:
/* 193B4 800AE7B4 14A00002 */  bnez       $a1, .L800AE7C0
/* 193B8 800AE7B8 00A04821 */   addu      $t1, $a1, $zero
/* 193BC 800AE7BC 24090001 */  addiu      $t1, $zero, 1
.L800AE7C0:
/* 193C0 800AE7C0 00004021 */  addu       $t0, $zero, $zero
/* 193C4 800AE7C4 3C028010 */  lui        $v0, %hi(D_80102944)
/* 193C8 800AE7C8 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 193CC 800AE7CC 3C068010 */  lui        $a2, %hi(D_8010294C)
/* 193D0 800AE7D0 8CC6294C */  lw         $a2, %lo(D_8010294C)($a2)
/* 193D4 800AE7D4 1840001D */  blez       $v0, .L800AE84C
/* 193D8 800AE7D8 00003821 */   addu      $a3, $zero, $zero
/* 193DC 800AE7DC 240DFFFF */  addiu      $t5, $zero, -1
/* 193E0 800AE7E0 240C0001 */  addiu      $t4, $zero, 1
/* 193E4 800AE7E4 240BFFFE */  addiu      $t3, $zero, -2
/* 193E8 800AE7E8 00405021 */  addu       $t2, $v0, $zero
/* 193EC 800AE7EC 24C30010 */  addiu      $v1, $a2, 0x10
.L800AE7F0:
/* 193F0 800AE7F0 8C620034 */  lw         $v0, 0x34($v1)
/* 193F4 800AE7F4 54440011 */  bnel       $v0, $a0, .L800AE83C
/* 193F8 800AE7F8 25080001 */   addiu     $t0, $t0, 1
/* 193FC 800AE7FC 8C620000 */  lw         $v0, ($v1)
/* 19400 800AE800 544D000E */  bnel       $v0, $t5, .L800AE83C
/* 19404 800AE804 25080001 */   addiu     $t0, $t0, 1
/* 19408 800AE808 8CC20000 */  lw         $v0, ($a2)
/* 1940C 800AE80C 30420001 */  andi       $v0, $v0, 1
/* 19410 800AE810 50400007 */  beql       $v0, $zero, .L800AE830
/* 19414 800AE814 AC69000C */   sw        $t1, 0xc($v1)
/* 19418 800AE818 AC6C000C */  sw         $t4, 0xc($v1)
/* 1941C 800AE81C AC600000 */  sw         $zero, ($v1)
/* 19420 800AE820 8CC20000 */  lw         $v0, ($a2)
/* 19424 800AE824 004B1024 */  and        $v0, $v0, $t3
/* 19428 800AE828 0802BA0D */  j          .L800AE834
/* 1942C 800AE82C ACC20000 */   sw        $v0, ($a2)
.L800AE830:
/* 19430 800AE830 AC650000 */  sw         $a1, ($v1)
.L800AE834:
/* 19434 800AE834 24E70001 */  addiu      $a3, $a3, 1
/* 19438 800AE838 25080001 */  addiu      $t0, $t0, 1
.L800AE83C:
/* 1943C 800AE83C 2463013C */  addiu      $v1, $v1, 0x13c
/* 19440 800AE840 010A102A */  slt        $v0, $t0, $t2
/* 19444 800AE844 1440FFEA */  bnez       $v0, .L800AE7F0
/* 19448 800AE848 24C6013C */   addiu     $a2, $a2, 0x13c
.L800AE84C:
/* 1944C 800AE84C 00E01021 */  addu       $v0, $a3, $zero
.L800AE850:
/* 19450 800AE850 03E00008 */  jr         $ra
/* 19454 800AE854 27BD0008 */   addiu     $sp, $sp, 8
