.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6AC0
/* 216C0 800B6AC0 00041080 */  sll        $v0, $a0, 2
/* 216C4 800B6AC4 00441021 */  addu       $v0, $v0, $a0
/* 216C8 800B6AC8 00021080 */  sll        $v0, $v0, 2
/* 216CC 800B6ACC 00441023 */  subu       $v0, $v0, $a0
/* 216D0 800B6AD0 00021100 */  sll        $v0, $v0, 4
/* 216D4 800B6AD4 00441023 */  subu       $v0, $v0, $a0
/* 216D8 800B6AD8 00021080 */  sll        $v0, $v0, 2
/* 216DC 800B6ADC 00441023 */  subu       $v0, $v0, $a0
/* 216E0 800B6AE0 00021040 */  sll        $v0, $v0, 1
/* 216E4 800B6AE4 3C01800F */  lui        $at, %hi(D_800F1830)
/* 216E8 800B6AE8 00220821 */  addu       $at, $at, $v0
/* 216EC 800B6AEC 03E00008 */  jr         $ra
/* 216F0 800B6AF0 A0251830 */   sb        $a1, %lo(D_800F1830)($at)
/* 216F4 800B6AF4 00000000 */  nop
/* 216F8 800B6AF8 00000000 */  nop
/* 216FC 800B6AFC 00000000 */  nop
