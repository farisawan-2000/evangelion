glabel func_800B6B40
/* 21740 800B6B40 30A5000F */  andi       $a1, $a1, 0xF
/* 21744 800B6B44 00041080 */  sll        $v0, $a0, 2
/* 21748 800B6B48 00441021 */  addu       $v0, $v0, $a0
/* 2174C 800B6B4C 00021080 */  sll        $v0, $v0, 2
/* 21750 800B6B50 00441023 */  subu       $v0, $v0, $a0
/* 21754 800B6B54 00021100 */  sll        $v0, $v0, 4
/* 21758 800B6B58 00441023 */  subu       $v0, $v0, $a0
/* 2175C 800B6B5C 00021080 */  sll        $v0, $v0, 2
/* 21760 800B6B60 00441023 */  subu       $v0, $v0, $a0
/* 21764 800B6B64 00021040 */  sll        $v0, $v0, 1
/* 21768 800B6B68 3C01800F */  lui        $at, %hi(D_800F1836)
/* 2176C 800B6B6C 00220821 */  addu       $at, $at, $v0
/* 21770 800B6B70 03E00008 */  jr         $ra
/* 21774 800B6B74 A0251836 */   sb        $a1, %lo(D_800F1836)($at)
/* 21778 800B6B78 00000000 */  nop
/* 2177C 800B6B7C 00000000 */  nop
.size func_800B6B40, . - func_800B6B40