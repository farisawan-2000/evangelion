.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009C404
/* 7004 8009C404 93A20013 */  lbu        $v0, 0x13($sp)
/* 7008 8009C408 93A30017 */  lbu        $v1, 0x17($sp)
/* 700C 8009C40C 30E700FF */  andi       $a3, $a3, 0xff
/* 7010 8009C410 44870000 */  mtc1       $a3, $f0
/* 7014 8009C414 00000000 */  nop
/* 7018 8009C418 46800020 */  cvt.s.w    $f0, $f0
/* 701C 8009C41C 3C01800D */  lui        $at, %hi(D_800D3BC0)
/* 7020 8009C420 A0243BC0 */  sb         $a0, %lo(D_800D3BC0)($at)
/* 7024 8009C424 3C01800D */  lui        $at, %hi(D_800D3BC1)
/* 7028 8009C428 A0253BC1 */  sb         $a1, %lo(D_800D3BC1)($at)
/* 702C 8009C42C 3C01800D */  lui        $at, %hi(D_800D3BC2)
/* 7030 8009C430 A0263BC2 */  sb         $a2, %lo(D_800D3BC2)($at)
/* 7034 8009C434 3C01800D */  lui        $at, %hi(D_800D3BC4)
/* 7038 8009C438 A0243BC4 */  sb         $a0, %lo(D_800D3BC4)($at)
/* 703C 8009C43C 3C01800D */  lui        $at, %hi(D_800D3BC5)
/* 7040 8009C440 A0253BC5 */  sb         $a1, %lo(D_800D3BC5)($at)
/* 7044 8009C444 3C01800D */  lui        $at, %hi(D_800D3BC6)
/* 7048 8009C448 A0263BC6 */  sb         $a2, %lo(D_800D3BC6)($at)
/* 704C 8009C44C 3C01800D */  lui        $at, %hi(D_800D3BD8)
/* 7050 8009C450 E4203BD8 */  swc1       $f0, %lo(D_800D3BD8)($at)
/* 7054 8009C454 44820000 */  mtc1       $v0, $f0
/* 7058 8009C458 00000000 */  nop
/* 705C 8009C45C 46800020 */  cvt.s.w    $f0, $f0
/* 7060 8009C460 3C01800D */  lui        $at, %hi(D_800D3BDC)
/* 7064 8009C464 E4203BDC */  swc1       $f0, %lo(D_800D3BDC)($at)
/* 7068 8009C468 44830000 */  mtc1       $v1, $f0
/* 706C 8009C46C 00000000 */  nop
/* 7070 8009C470 46800020 */  cvt.s.w    $f0, $f0
/* 7074 8009C474 3C01800D */  lui        $at, %hi(D_800D3BE0)
/* 7078 8009C478 E4203BE0 */  swc1       $f0, %lo(D_800D3BE0)($at)
/* 707C 8009C47C 03E00008 */  jr         $ra
/* 7080 8009C480 00000000 */   nop
