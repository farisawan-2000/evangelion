.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BFF40
/* 2AB40 800BFF40 3084FFFF */  andi       $a0, $a0, 0xffff
/* 2AB44 800BFF44 00042102 */  srl        $a0, $a0, 4
/* 2AB48 800BFF48 30820400 */  andi       $v0, $a0, 0x400
/* 2AB4C 800BFF4C 10400004 */  beqz       $v0, .L800BFF60
/* 2AB50 800BFF50 00802821 */   addu      $a1, $a0, $zero
/* 2AB54 800BFF54 00041027 */  nor        $v0, $zero, $a0
/* 2AB58 800BFF58 0802FFD9 */  j          .L800BFF64
/* 2AB5C 800BFF5C 304203FF */   andi      $v0, $v0, 0x3ff
.L800BFF60:
/* 2AB60 800BFF60 308203FF */  andi       $v0, $a0, 0x3ff
.L800BFF64:
/* 2AB64 800BFF64 00021040 */  sll        $v0, $v0, 1
/* 2AB68 800BFF68 3C03800F */  lui        $v1, %hi(D_800F6180)
/* 2AB6C 800BFF6C 00621821 */  addu       $v1, $v1, $v0
/* 2AB70 800BFF70 94636180 */  lhu        $v1, %lo(D_800F6180)($v1)
/* 2AB74 800BFF74 30A20800 */  andi       $v0, $a1, 0x800
/* 2AB78 800BFF78 14400003 */  bnez       $v0, .L800BFF88
/* 2AB7C 800BFF7C 00031023 */   negu      $v0, $v1
/* 2AB80 800BFF80 0802FFE3 */  j          .L800BFF8C
/* 2AB84 800BFF84 00031400 */   sll       $v0, $v1, 0x10
.L800BFF88:
/* 2AB88 800BFF88 00021400 */  sll        $v0, $v0, 0x10
.L800BFF8C:
/* 2AB8C 800BFF8C 03E00008 */  jr         $ra
/* 2AB90 800BFF90 00021403 */   sra       $v0, $v0, 0x10
/* 2AB94 800BFF94 00000000 */  nop
/* 2AB98 800BFF98 00000000 */  nop
/* 2AB9C 800BFF9C 00000000 */  nop
