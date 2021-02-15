.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009BF40
/* 6B40 8009BF40 3C038017 */  lui        $v1, %hi(D_8016D7F1)
/* 6B44 8009BF44 9063D7F1 */  lbu        $v1, %lo(D_8016D7F1)($v1)
/* 6B48 8009BF48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B4C 8009BF4C 30620080 */  andi       $v0, $v1, 0x80
/* 6B50 8009BF50 10400042 */  beqz       $v0, .L8009C05C
/* 6B54 8009BF54 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6B58 8009BF58 30620001 */  andi       $v0, $v1, 1
/* 6B5C 8009BF5C 3C018017 */  lui        $at, %hi(D_8016D7F1)
/* 6B60 8009BF60 A022D7F1 */  sb         $v0, %lo(D_8016D7F1)($at)
/* 6B64 8009BF64 304200FF */  andi       $v0, $v0, 0xff
/* 6B68 8009BF68 10400015 */  beqz       $v0, .L8009BFC0
/* 6B6C 8009BF6C 00000000 */   nop
/* 6B70 8009BF70 3C04800F */  lui        $a0, %hi(D_800F6D70)
/* 6B74 8009BF74 24846D70 */  addiu      $a0, $a0, %lo(D_800F6D70)
/* 6B78 8009BF78 0C0309BC */  jal        func_800C26F0
/* 6B7C 8009BF7C 00000000 */   nop
/* 6B80 8009BF80 24020280 */  addiu      $v0, $zero, 0x280
/* 6B84 8009BF84 3C018015 */  lui        $at, %hi(D_8014A0BC)
/* 6B88 8009BF88 AC22A0BC */  sw         $v0, %lo(D_8014A0BC)($at)
/* 6B8C 8009BF8C 240201E0 */  addiu      $v0, $zero, 0x1e0
/* 6B90 8009BF90 3C018015 */  lui        $at, %hi(D_80149DB8)
/* 6B94 8009BF94 AC229DB8 */  sw         $v0, %lo(D_80149DB8)($at)
/* 6B98 8009BF98 24020020 */  addiu      $v0, $zero, 0x20
/* 6B9C 8009BF9C 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 6BA0 8009BFA0 AC229FB0 */  sw         $v0, %lo(D_80149FB0)($at)
/* 6BA4 8009BFA4 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 6BA8 8009BFA8 AC229FA4 */  sw         $v0, %lo(D_80149FA4)($at)
/* 6BAC 8009BFAC 24020260 */  addiu      $v0, $zero, 0x260
/* 6BB0 8009BFB0 3C018017 */  lui        $at, %hi(D_8016D040)
/* 6BB4 8009BFB4 AC22D040 */  sw         $v0, %lo(D_8016D040)($at)
/* 6BB8 8009BFB8 08027003 */  j          .L8009C00C
/* 6BBC 8009BFBC 240201C0 */   addiu     $v0, $zero, 0x1c0
.L8009BFC0:
/* 6BC0 8009BFC0 3C04800F */  lui        $a0, %hi(D_800F6AA0)
/* 6BC4 8009BFC4 24846AA0 */  addiu      $a0, $a0, %lo(D_800F6AA0)
/* 6BC8 8009BFC8 0C0309BC */  jal        func_800C26F0
/* 6BCC 8009BFCC 00000000 */   nop
/* 6BD0 8009BFD0 24020140 */  addiu      $v0, $zero, 0x140
/* 6BD4 8009BFD4 3C018015 */  lui        $at, %hi(D_8014A0BC)
/* 6BD8 8009BFD8 AC22A0BC */  sw         $v0, %lo(D_8014A0BC)($at)
/* 6BDC 8009BFDC 240200F0 */  addiu      $v0, $zero, 0xf0
/* 6BE0 8009BFE0 3C018015 */  lui        $at, %hi(D_80149DB8)
/* 6BE4 8009BFE4 AC229DB8 */  sw         $v0, %lo(D_80149DB8)($at)
/* 6BE8 8009BFE8 24020010 */  addiu      $v0, $zero, 0x10
/* 6BEC 8009BFEC 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 6BF0 8009BFF0 AC229FB0 */  sw         $v0, %lo(D_80149FB0)($at)
/* 6BF4 8009BFF4 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 6BF8 8009BFF8 AC229FA4 */  sw         $v0, %lo(D_80149FA4)($at)
/* 6BFC 8009BFFC 24020130 */  addiu      $v0, $zero, 0x130
/* 6C00 8009C000 3C018017 */  lui        $at, %hi(D_8016D040)
/* 6C04 8009C004 AC22D040 */  sw         $v0, %lo(D_8016D040)($at)
/* 6C08 8009C008 240200E0 */  addiu      $v0, $zero, 0xe0
.L8009C00C:
/* 6C0C 8009C00C 3C018015 */  lui        $at, %hi(D_8014A2C8)
/* 6C10 8009C010 AC22A2C8 */  sw         $v0, %lo(D_8014A2C8)($at)
/* 6C14 8009C014 3C028015 */  lui        $v0, %hi(D_8014A0BC)
/* 6C18 8009C018 8C42A0BC */  lw         $v0, %lo(D_8014A0BC)($v0)
/* 6C1C 8009C01C 3C038015 */  lui        $v1, %hi(D_80149DB8)
/* 6C20 8009C020 8C639DB8 */  lw         $v1, %lo(D_80149DB8)($v1)
/* 6C24 8009C024 00021040 */  sll        $v0, $v0, 1
/* 6C28 8009C028 00031840 */  sll        $v1, $v1, 1
/* 6C2C 8009C02C 3C01800D */  lui        $at, %hi(D_800D3BB8)
/* 6C30 8009C030 A4223BB8 */  sh         $v0, %lo(D_800D3BB8)($at)
/* 6C34 8009C034 3C01800D */  lui        $at, %hi(D_800D3BB0)
/* 6C38 8009C038 A4223BB0 */  sh         $v0, %lo(D_800D3BB0)($at)
/* 6C3C 8009C03C 3C01800D */  lui        $at, %hi(D_800D3BBA)
/* 6C40 8009C040 A4233BBA */  sh         $v1, %lo(D_800D3BBA)($at)
/* 6C44 8009C044 3C01800D */  lui        $at, %hi(D_800D3BB2)
/* 6C48 8009C048 A4233BB2 */  sh         $v1, %lo(D_800D3BB2)($at)
/* 6C4C 8009C04C 0C0309D0 */  jal        func_800C2740
/* 6C50 8009C050 2404005A */   addiu     $a0, $zero, 0x5a
/* 6C54 8009C054 0C02DA8C */  jal        func_800B6A30
/* 6C58 8009C058 00000000 */   nop
.L8009C05C:
/* 6C5C 8009C05C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6C60 8009C060 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6C64 8009C064 03E00008 */  jr         $ra
/* 6C68 8009C068 00000000 */   nop
