.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009C06C
/* 6C6C 8009C06C 3C048015 */  lui        $a0, %hi(D_80149F94)
/* 6C70 8009C070 8C849F94 */  lw         $a0, %lo(D_80149F94)($a0)
/* 6C74 8009C074 3C03800D */  lui        $v1, %hi(D_800D3D40)
/* 6C78 8009C078 80633D40 */  lb         $v1, %lo(D_800D3D40)($v1)
/* 6C7C 8009C07C 3C06DE00 */  lui        $a2, 0xde00
/* 6C80 8009C080 24820008 */  addiu      $v0, $a0, 8
/* 6C84 8009C084 3C018015 */  lui        $at, %hi(D_80149F94)
/* 6C88 8009C088 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 6C8C 8009C08C 3C02DB06 */  lui        $v0, 0xdb06
/* 6C90 8009C090 AC820000 */  sw         $v0, ($a0)
/* 6C94 8009C094 24820010 */  addiu      $v0, $a0, 0x10
/* 6C98 8009C098 3C018015 */  lui        $at, %hi(D_80149F94)
/* 6C9C 8009C09C AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 6CA0 8009C0A0 3C02000D */  lui        $v0, 0xd
/* 6CA4 8009C0A4 24423CD8 */  addiu      $v0, $v0, 0x3cd8
/* 6CA8 8009C0A8 AC800004 */  sw         $zero, 4($a0)
/* 6CAC 8009C0AC AC860008 */  sw         $a2, 8($a0)
/* 6CB0 8009C0B0 1060000A */  beqz       $v1, .L8009C0DC
/* 6CB4 8009C0B4 AC82000C */   sw        $v0, 0xc($a0)
/* 6CB8 8009C0B8 24820018 */  addiu      $v0, $a0, 0x18
/* 6CBC 8009C0BC 3C018015 */  lui        $at, %hi(D_80149F94)
/* 6CC0 8009C0C0 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 6CC4 8009C0C4 3C02000D */  lui        $v0, 0xd
/* 6CC8 8009C0C8 24423BF8 */  addiu      $v0, $v0, 0x3bf8
/* 6CCC 8009C0CC AC860010 */  sw         $a2, 0x10($a0)
/* 6CD0 8009C0D0 AC820014 */  sw         $v0, 0x14($a0)
/* 6CD4 8009C0D4 3C01800D */  lui        $at, %hi(D_800D3D40)
/* 6CD8 8009C0D8 A0203D40 */  sb         $zero, %lo(D_800D3D40)($at)
.L8009C0DC:
/* 6CDC 8009C0DC 3C014080 */  lui        $at, 0x4080
/* 6CE0 8009C0E0 44813000 */  mtc1       $at, $f6
/* 6CE4 8009C0E4 00000000 */  nop
/* 6CE8 8009C0E8 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 6CEC 8009C0EC C4209FB0 */  lwc1       $f0, %lo(D_80149FB0)($at)
/* 6CF0 8009C0F0 46800020 */  cvt.s.w    $f0, $f0
/* 6CF4 8009C0F4 46060002 */  mul.s      $f0, $f0, $f6
/* 6CF8 8009C0F8 3C058015 */  lui        $a1, %hi(D_80149F94)
/* 6CFC 8009C0FC 8CA59F94 */  lw         $a1, %lo(D_80149F94)($a1)
/* 6D00 8009C100 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 6D04 8009C104 C4229FA4 */  lwc1       $f2, %lo(D_80149FA4)($at)
/* 6D08 8009C108 468010A0 */  cvt.s.w    $f2, $f2
/* 6D0C 8009C10C 24A20008 */  addiu      $v0, $a1, 8
/* 6D10 8009C110 3C018015 */  lui        $at, %hi(D_80149F94)
/* 6D14 8009C114 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 6D18 8009C118 3C02000D */  lui        $v0, 0xd
/* 6D1C 8009C11C 24423D20 */  addiu      $v0, $v0, 0x3d20
/* 6D20 8009C120 00000000 */  nop
/* 6D24 8009C124 46061082 */  mul.s      $f2, $f2, $f6
/* 6D28 8009C128 ACA20004 */  sw         $v0, 4($a1)
/* 6D2C 8009C12C 24A20010 */  addiu      $v0, $a1, 0x10
/* 6D30 8009C130 ACA60000 */  sw         $a2, ($a1)
/* 6D34 8009C134 3C018015 */  lui        $at, %hi(D_80149F94)
/* 6D38 8009C138 AC229F94 */  sw         $v0, %lo(D_80149F94)($at)
/* 6D3C 8009C13C 4600010D */  trunc.w.s  $f4, $f0
/* 6D40 8009C140 44022000 */  mfc1       $v0, $f4
/* 6D44 8009C144 00000000 */  nop
/* 6D48 8009C148 3C018017 */  lui        $at, %hi(D_8016D040)
/* 6D4C 8009C14C C424D040 */  lwc1       $f4, %lo(D_8016D040)($at)
/* 6D50 8009C150 46802120 */  cvt.s.w    $f4, $f4
/* 6D54 8009C154 46062102 */  mul.s      $f4, $f4, $f6
/* 6D58 8009C158 30420FFF */  andi       $v0, $v0, 0xfff
/* 6D5C 8009C15C 00021300 */  sll        $v0, $v0, 0xc
/* 6D60 8009C160 4600100D */  trunc.w.s  $f0, $f2
/* 6D64 8009C164 44030000 */  mfc1       $v1, $f0
/* 6D68 8009C168 00000000 */  nop
/* 6D6C 8009C16C 30630FFF */  andi       $v1, $v1, 0xfff
/* 6D70 8009C170 3C04ED00 */  lui        $a0, 0xed00
/* 6D74 8009C174 3C018015 */  lui        $at, %hi(D_8014A2C8)
/* 6D78 8009C178 C420A2C8 */  lwc1       $f0, %lo(D_8014A2C8)($at)
/* 6D7C 8009C17C 46800020 */  cvt.s.w    $f0, $f0
/* 6D80 8009C180 46060002 */  mul.s      $f0, $f0, $f6
/* 6D84 8009C184 00641825 */  or         $v1, $v1, $a0
/* 6D88 8009C188 00431025 */  or         $v0, $v0, $v1
/* 6D8C 8009C18C ACA20008 */  sw         $v0, 8($a1)
/* 6D90 8009C190 4600208D */  trunc.w.s  $f2, $f4
/* 6D94 8009C194 44021000 */  mfc1       $v0, $f2
/* 6D98 8009C198 00000000 */  nop
/* 6D9C 8009C19C 30420FFF */  andi       $v0, $v0, 0xfff
/* 6DA0 8009C1A0 00021300 */  sll        $v0, $v0, 0xc
/* 6DA4 8009C1A4 4600008D */  trunc.w.s  $f2, $f0
/* 6DA8 8009C1A8 44031000 */  mfc1       $v1, $f2
/* 6DAC 8009C1AC 00000000 */  nop
/* 6DB0 8009C1B0 30630FFF */  andi       $v1, $v1, 0xfff
/* 6DB4 8009C1B4 00431025 */  or         $v0, $v0, $v1
/* 6DB8 8009C1B8 03E00008 */  jr         $ra
/* 6DBC 8009C1BC ACA2000C */   sw        $v0, 0xc($a1)
