glabel func_8002A0F4_ovl7
/* 179B34 8002A0F4 3C028004 */  lui        $v0, %hi(D_80043E80_ovl7 + 0x2)
/* 179B38 8002A0F8 90423E82 */  lbu        $v0, %lo(D_80043E80_ovl7 + 0x2)($v0)
/* 179B3C 8002A0FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 179B40 8002A100 10400020 */  beqz       $v0, .L8002A184_ovl7
/* 179B44 8002A104 AFBF0010 */   sw        $ra, 0x10($sp)
/* 179B48 8002A108 0C009758 */  jal        func_80025D60_ovl7
/* 179B4C 8002A10C 00000000 */   nop
/* 179B50 8002A110 3C028004 */  lui        $v0, %hi(D_80043E50_ovl7)
/* 179B54 8002A114 24423E50 */  addiu      $v0, $v0, %lo(D_80043E50_ovl7)
/* 179B58 8002A118 3C018005 */  lui        $at, %hi(D_80052000_ovl7)
/* 179B5C 8002A11C AC222000 */  sw         $v0, %lo(D_80052000_ovl7)($at)
/* 179B60 8002A120 24020006 */  addiu      $v0, $zero, 0x6
/* 179B64 8002A124 3C018005 */  lui        $at, %hi(D_80052061_ovl7)
/* 179B68 8002A128 A0222061 */  sb         $v0, %lo(D_80052061_ovl7)($at)
/* 179B6C 8002A12C 24020001 */  addiu      $v0, $zero, 0x1
/* 179B70 8002A130 3C018005 */  lui        $at, %hi(D_80052060_ovl7)
/* 179B74 8002A134 A0202060 */  sb         $zero, %lo(D_80052060_ovl7)($at)
/* 179B78 8002A138 3C018005 */  lui        $at, %hi(D_80052006_ovl7)
/* 179B7C 8002A13C A0222006 */  sb         $v0, %lo(D_80052006_ovl7)($at)
/* 179B80 8002A140 0C032663 */  jal        func_800C998C
/* 179B84 8002A144 24040008 */   addiu     $a0, $zero, 0x8
/* 179B88 8002A148 00402021 */  addu       $a0, $v0, $zero
/* 179B8C 8002A14C 3C018005 */  lui        $at, %hi(D_80052244_ovl7)
/* 179B90 8002A150 AC242244 */  sw         $a0, %lo(D_80052244_ovl7)($at)
/* 179B94 8002A154 0C030134 */  jal        bzero
/* 179B98 8002A158 24050008 */   addiu     $a1, $zero, 0x8
/* 179B9C 8002A15C 3C048003 */  lui        $a0, %hi(func_80028084_ovl7)
/* 179BA0 8002A160 24848084 */  addiu      $a0, $a0, %lo(func_80028084_ovl7)
/* 179BA4 8002A164 00002821 */  addu       $a1, $zero, $zero
/* 179BA8 8002A168 2406012C */  addiu      $a2, $zero, 0x12C
/* 179BAC 8002A16C 0C025D06 */  jal        func_80097418
/* 179BB0 8002A170 00003821 */   addu      $a3, $zero, $zero
/* 179BB4 8002A174 0C02A5D2 */  jal        func_800A9748
/* 179BB8 8002A178 24040001 */   addiu     $a0, $zero, 0x1
/* 179BBC 8002A17C 3C018004 */  lui        $at, %hi(D_80043E80_ovl7 + 0x2)
/* 179BC0 8002A180 A0203E82 */  sb         $zero, %lo(D_80043E80_ovl7 + 0x2)($at)
.L8002A184_ovl7:
/* 179BC4 8002A184 3C038005 */  lui        $v1, %hi(D_80052060_ovl7)
/* 179BC8 8002A188 90632060 */  lbu        $v1, %lo(D_80052060_ovl7)($v1)
/* 179BCC 8002A18C 24020001 */  addiu      $v0, $zero, 0x1
/* 179BD0 8002A190 14620008 */  bne        $v1, $v0, .L8002A1B4_ovl7
/* 179BD4 8002A194 00001021 */   addu      $v0, $zero, $zero
/* 179BD8 8002A198 3C048005 */  lui        $a0, %hi(D_80052244_ovl7)
/* 179BDC 8002A19C 8C842244 */  lw         $a0, %lo(D_80052244_ovl7)($a0)
/* 179BE0 8002A1A0 24020001 */  addiu      $v0, $zero, 0x1
/* 179BE4 8002A1A4 3C018004 */  lui        $at, %hi(D_80043E80_ovl7 + 0x2)
/* 179BE8 8002A1A8 0C0326A1 */  jal        func_800C9A84
/* 179BEC 8002A1AC A0223E82 */   sb        $v0, %lo(D_80043E80_ovl7 + 0x2)($at)
/* 179BF0 8002A1B0 24020001 */  addiu      $v0, $zero, 0x1
.L8002A1B4_ovl7:
/* 179BF4 8002A1B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 179BF8 8002A1B8 03E00008 */  jr         $ra
/* 179BFC 8002A1BC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_8002A0F4_ovl7, . - func_8002A0F4_ovl7
