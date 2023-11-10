glabel func_800BCB50
/* 27750 800BCB50 30A3000F */  andi       $v1, $a1, 0xF
/* 27754 800BCB54 24020010 */  addiu      $v0, $zero, 0x10
/* 27758 800BCB58 00431823 */  subu       $v1, $v0, $v1
/* 2775C 800BCB5C 10620003 */  beq        $v1, $v0, .L800BCB6C
/* 27760 800BCB60 00A31021 */   addu      $v0, $a1, $v1
/* 27764 800BCB64 0802F2DC */  j          .L800BCB70
/* 27768 800BCB68 AC820000 */   sw        $v0, 0x0($a0)
.L800BCB6C:
/* 2776C 800BCB6C AC850000 */  sw         $a1, 0x0($a0)
.L800BCB70:
/* 27770 800BCB70 8C820000 */  lw         $v0, 0x0($a0)
/* 27774 800BCB74 AC860008 */  sw         $a2, 0x8($a0)
/* 27778 800BCB78 AC80000C */  sw         $zero, 0xC($a0)
/* 2777C 800BCB7C 03E00008 */  jr         $ra
/* 27780 800BCB80 AC820004 */   sw        $v0, 0x4($a0)
/* 27784 800BCB84 00000000 */  nop
/* 27788 800BCB88 00000000 */  nop
/* 2778C 800BCB8C 00000000 */  nop
.size func_800BCB50, . - func_800BCB50
