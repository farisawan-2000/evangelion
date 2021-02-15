.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800964BC
/* 10BC 800964BC 3C03800D */  lui        $v1, %hi(D_800D3890)
/* 10C0 800964C0 8C633890 */  lw         $v1, %lo(D_800D3890)($v1)
/* 10C4 800964C4 000310C0 */  sll        $v0, $v1, 3
/* 10C8 800964C8 00431023 */  subu       $v0, $v0, $v1
/* 10CC 800964CC 24420005 */  addiu      $v0, $v0, 5
/* 10D0 800964D0 3C01800D */  lui        $at, %hi(D_800D3890)
/* 10D4 800964D4 AC223890 */  sw         $v0, %lo(D_800D3890)($at)
/* 10D8 800964D8 00021402 */  srl        $v0, $v0, 0x10
/* 10DC 800964DC 30420001 */  andi       $v0, $v0, 1
/* 10E0 800964E0 14400002 */  bnez       $v0, .L800964EC
/* 10E4 800964E4 27BDFFF8 */   addiu     $sp, $sp, -8
/* 10E8 800964E8 00042023 */  negu       $a0, $a0
.L800964EC:
/* 10EC 800964EC 00801021 */  addu       $v0, $a0, $zero
/* 10F0 800964F0 27BD0008 */  addiu      $sp, $sp, 8
/* 10F4 800964F4 03E00008 */  jr         $ra
/* 10F8 800964F8 00000000 */   nop
