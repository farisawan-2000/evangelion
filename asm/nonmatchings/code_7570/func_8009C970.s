.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009C970
/* 7570 8009C970 3C01C2C8 */  lui        $at, 0xc2c8
/* 7574 8009C974 44810000 */  mtc1       $at, $f0
/* 7578 8009C978 00000000 */  nop
/* 757C 8009C97C 24020021 */  addiu      $v0, $zero, 0x21
/* 7580 8009C980 3C018015 */  lui        $at, %hi(D_80149D7C)
/* 7584 8009C984 AC229D7C */  sw         $v0, %lo(D_80149D7C)($at)
/* 7588 8009C988 24020014 */  addiu      $v0, $zero, 0x14
/* 758C 8009C98C 3C018015 */  lui        $at, %hi(D_8014CF88)
/* 7590 8009C990 AC22CF88 */  sw         $v0, %lo(D_8014CF88)($at)
/* 7594 8009C994 240203E8 */  addiu      $v0, $zero, 0x3e8
/* 7598 8009C998 3C018015 */  lui        $at, %hi(D_8014A058)
/* 759C 8009C99C AC20A058 */  sw         $zero, %lo(D_8014A058)($at)
/* 75A0 8009C9A0 3C018015 */  lui        $at, %hi(D_8014A05C)
/* 75A4 8009C9A4 AC20A05C */  sw         $zero, %lo(D_8014A05C)($at)
/* 75A8 8009C9A8 3C018015 */  lui        $at, %hi(D_8014A060)
/* 75AC 8009C9AC AC20A060 */  sw         $zero, %lo(D_8014A060)($at)
/* 75B0 8009C9B0 3C018015 */  lui        $at, %hi(D_8014A064)
/* 75B4 8009C9B4 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 75B8 8009C9B8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 75BC 8009C9BC AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 75C0 8009C9C0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 75C4 8009C9C4 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 75C8 8009C9C8 3C018015 */  lui        $at, %hi(D_8014A070)
/* 75CC 8009C9CC AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* 75D0 8009C9D0 3C018015 */  lui        $at, %hi(D_8014A074)
/* 75D4 8009C9D4 AC20A074 */  sw         $zero, %lo(D_8014A074)($at)
/* 75D8 8009C9D8 3C018015 */  lui        $at, %hi(D_8014A078)
/* 75DC 8009C9DC AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* 75E0 8009C9E0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 75E4 8009C9E4 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 75E8 8009C9E8 3C018015 */  lui        $at, %hi(D_8014A080)
/* 75EC 8009C9EC AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 75F0 8009C9F0 3C018015 */  lui        $at, %hi(D_8014A084)
/* 75F4 8009C9F4 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 75F8 8009C9F8 3C018015 */  lui        $at, %hi(D_8014A08C)
/* 75FC 8009C9FC A020A08C */  sb         $zero, %lo(D_8014A08C)($at)
/* 7600 8009CA00 3C018015 */  lui        $at, %hi(D_80149FE8)
/* 7604 8009CA04 AC229FE8 */  sw         $v0, %lo(D_80149FE8)($at)
/* 7608 8009CA08 3C018015 */  lui        $at, %hi(D_8014A088)
/* 760C 8009CA0C E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 7610 8009CA10 03E00008 */  jr         $ra
/* 7614 8009CA14 00000000 */   nop
