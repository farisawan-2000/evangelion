glabel func_800AD3AC
/* 17FAC 800AD3AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17FB0 800AD3B0 AFB20018 */  sw         $s2, 0x18($sp)
/* 17FB4 800AD3B4 00809021 */  addu       $s2, $a0, $zero
/* 17FB8 800AD3B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 17FBC 800AD3BC 3C108015 */  lui        $s0, %hi(D_80149F20)
/* 17FC0 800AD3C0 26109F20 */  addiu      $s0, $s0, %lo(D_80149F20)
/* 17FC4 800AD3C4 24020001 */  addiu      $v0, $zero, 0x1
/* 17FC8 800AD3C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 17FCC 800AD3CC AFB10014 */  sw         $s1, 0x14($sp)
/* 17FD0 800AD3D0 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17FD4 800AD3D4 AC229FA8 */  sw         $v0, %lo(D_80149FA8)($at)
/* 17FD8 800AD3D8 0C025C49 */  jal        func_80097124
/* 17FDC 800AD3DC 02002021 */   addu      $a0, $s0, $zero
/* 17FE0 800AD3E0 02002021 */  addu       $a0, $s0, $zero
/* 17FE4 800AD3E4 0C025C4C */  jal        func_80097130
/* 17FE8 800AD3E8 24050001 */   addiu     $a1, $zero, 0x1
/* 17FEC 800AD3EC 3C118039 */  lui        $s1, %hi(D_80390F50)
/* 17FF0 800AD3F0 26310F50 */  addiu      $s1, $s1, %lo(D_80390F50)
/* 17FF4 800AD3F4 02202021 */  addu       $a0, $s1, $zero
/* 17FF8 800AD3F8 02002821 */  addu       $a1, $s0, $zero
/* 17FFC 800AD3FC 2406012C */  addiu      $a2, $zero, 0x12C
/* 18000 800AD400 0C025D06 */  jal        func_80097418
/* 18004 800AD404 24070001 */   addiu     $a3, $zero, 0x1
/* 18008 800AD408 26100008 */  addiu      $s0, $s0, 0x8
/* 1800C 800AD40C 3C018017 */  lui        $at, %hi(D_8016D07C)
/* 18010 800AD410 AC22D07C */  sw         $v0, %lo(D_8016D07C)($at)
/* 18014 800AD414 0C025C49 */  jal        func_80097124
/* 18018 800AD418 02002021 */   addu      $a0, $s0, $zero
/* 1801C 800AD41C 02002021 */  addu       $a0, $s0, $zero
/* 18020 800AD420 0C025C4C */  jal        func_80097130
/* 18024 800AD424 2405000B */   addiu     $a1, $zero, 0xB
/* 18028 800AD428 02202021 */  addu       $a0, $s1, $zero
/* 1802C 800AD42C 02002821 */  addu       $a1, $s0, $zero
/* 18030 800AD430 2406012C */  addiu      $a2, $zero, 0x12C
/* 18034 800AD434 0C025D06 */  jal        func_80097418
/* 18038 800AD438 24070001 */   addiu     $a3, $zero, 0x1
/* 1803C 800AD43C 3C108015 */  lui        $s0, %hi(D_80149FB8)
/* 18040 800AD440 26109FB8 */  addiu      $s0, $s0, %lo(D_80149FB8)
/* 18044 800AD444 3C018017 */  lui        $at, %hi(D_8016D080)
/* 18048 800AD448 AC22D080 */  sw         $v0, %lo(D_8016D080)($at)
/* 1804C 800AD44C 0C025C49 */  jal        func_80097124
/* 18050 800AD450 02002021 */   addu      $a0, $s0, $zero
/* 18054 800AD454 02002021 */  addu       $a0, $s0, $zero
/* 18058 800AD458 0C025C4C */  jal        func_80097130
/* 1805C 800AD45C 00002821 */   addu      $a1, $zero, $zero
/* 18060 800AD460 3C048039 */  lui        $a0, %hi(D_80391F50)
/* 18064 800AD464 24841F50 */  addiu      $a0, $a0, %lo(D_80391F50)
/* 18068 800AD468 02002821 */  addu       $a1, $s0, $zero
/* 1806C 800AD46C 2406012C */  addiu      $a2, $zero, 0x12C
/* 18070 800AD470 0C025D06 */  jal        func_80097418
/* 18074 800AD474 24070001 */   addiu     $a3, $zero, 0x1
/* 18078 800AD478 3C048039 */  lui        $a0, %hi(D_80396B60)
/* 1807C 800AD47C 24846B60 */  addiu      $a0, $a0, %lo(D_80396B60)
/* 18080 800AD480 00002821 */  addu       $a1, $zero, $zero
/* 18084 800AD484 24060064 */  addiu      $a2, $zero, 0x64
/* 18088 800AD488 3C018017 */  lui        $at, %hi(D_8016D0C4)
/* 1808C 800AD48C AC22D0C4 */  sw         $v0, %lo(D_8016D0C4)($at)
/* 18090 800AD490 0C025D06 */  jal        func_80097418
/* 18094 800AD494 24070001 */   addiu     $a3, $zero, 0x1
/* 18098 800AD498 3C108015 */  lui        $s0, %hi(D_80149E10)
/* 1809C 800AD49C 26109E10 */  addiu      $s0, $s0, %lo(D_80149E10)
/* 180A0 800AD4A0 3C118010 */  lui        $s1, %hi(D_801005A0)
/* 180A4 800AD4A4 263105A0 */  addiu      $s1, $s1, %lo(D_801005A0)
/* 180A8 800AD4A8 3C018015 */  lui        $at, %hi(D_80149EC4)
/* 180AC 800AD4AC AC229EC4 */  sw         $v0, %lo(D_80149EC4)($at)
/* 180B0 800AD4B0 24020087 */  addiu      $v0, $zero, 0x87
/* 180B4 800AD4B4 A6220000 */  sh         $v0, 0x0($s1)
/* 180B8 800AD4B8 240200B2 */  addiu      $v0, $zero, 0xB2
/* 180BC 800AD4BC 3C018010 */  lui        $at, %hi(D_801005A2)
/* 180C0 800AD4C0 A42205A2 */  sh         $v0, %lo(D_801005A2)($at)
/* 180C4 800AD4C4 24020001 */  addiu      $v0, $zero, 0x1
/* 180C8 800AD4C8 3C018010 */  lui        $at, %hi(D_801005A4)
/* 180CC 800AD4CC A02205A4 */  sb         $v0, %lo(D_801005A4)($at)
/* 180D0 800AD4D0 3C028015 */  lui        $v0, %hi(D_8014A2D4)
/* 180D4 800AD4D4 2442A2D4 */  addiu      $v0, $v0, %lo(D_8014A2D4)
/* 180D8 800AD4D8 3C018010 */  lui        $at, %hi(D_801005A5)
/* 180DC 800AD4DC A02005A5 */  sb         $zero, %lo(D_801005A5)($at)
/* 180E0 800AD4E0 3C018010 */  lui        $at, %hi(D_801005A6)
/* 180E4 800AD4E4 A43205A6 */  sh         $s2, %lo(D_801005A6)($at)
/* 180E8 800AD4E8 3C018010 */  lui        $at, %hi(D_801005A8)
/* 180EC 800AD4EC A42005A8 */  sh         $zero, %lo(D_801005A8)($at)
/* 180F0 800AD4F0 3C018010 */  lui        $at, %hi(D_801005AA)
/* 180F4 800AD4F4 A42005AA */  sh         $zero, %lo(D_801005AA)($at)
/* 180F8 800AD4F8 3C018010 */  lui        $at, %hi(D_801005AC)
/* 180FC 800AD4FC AC2205AC */  sw         $v0, %lo(D_801005AC)($at)
/* 18100 800AD500 0C025C49 */  jal        func_80097124
/* 18104 800AD504 02002021 */   addu      $a0, $s0, $zero
/* 18108 800AD508 02002021 */  addu       $a0, $s0, $zero
/* 1810C 800AD50C 0C025C4C */  jal        func_80097130
/* 18110 800AD510 02202821 */   addu      $a1, $s1, $zero
/* 18114 800AD514 3C048039 */  lui        $a0, %hi(D_80395500)
/* 18118 800AD518 24845500 */  addiu      $a0, $a0, %lo(D_80395500)
/* 1811C 800AD51C 02002821 */  addu       $a1, $s0, $zero
/* 18120 800AD520 2406012C */  addiu      $a2, $zero, 0x12C
/* 18124 800AD524 0C025D06 */  jal        func_80097418
/* 18128 800AD528 24070001 */   addiu     $a3, $zero, 0x1
/* 1812C 800AD52C 3C108015 */  lui        $s0, %hi(D_8014A0B0)
/* 18130 800AD530 2610A0B0 */  addiu      $s0, $s0, %lo(D_8014A0B0)
/* 18134 800AD534 3C018015 */  lui        $at, %hi(D_8014A2D4)
/* 18138 800AD538 AC22A2D4 */  sw         $v0, %lo(D_8014A2D4)($at)
/* 1813C 800AD53C 0C025C49 */  jal        func_80097124
/* 18140 800AD540 02002021 */   addu      $a0, $s0, $zero
/* 18144 800AD544 02002021 */  addu       $a0, $s0, $zero
/* 18148 800AD548 0C025C4C */  jal        func_80097130
/* 1814C 800AD54C 00002821 */   addu      $a1, $zero, $zero
/* 18150 800AD550 3C048039 */  lui        $a0, %hi(D_8038FD40)
/* 18154 800AD554 2484FD40 */  addiu      $a0, $a0, %lo(D_8038FD40)
/* 18158 800AD558 02002821 */  addu       $a1, $s0, $zero
/* 1815C 800AD55C 2406012C */  addiu      $a2, $zero, 0x12C
/* 18160 800AD560 0C025D06 */  jal        func_80097418
/* 18164 800AD564 24070001 */   addiu     $a3, $zero, 0x1
/* 18168 800AD568 3C108015 */  lui        $s0, %hi(D_8014CF80)
/* 1816C 800AD56C 2610CF80 */  addiu      $s0, $s0, %lo(D_8014CF80)
/* 18170 800AD570 3C018015 */  lui        $at, %hi(D_8014A2C0)
/* 18174 800AD574 AC22A2C0 */  sw         $v0, %lo(D_8014A2C0)($at)
/* 18178 800AD578 0C025C49 */  jal        func_80097124
/* 1817C 800AD57C 02002021 */   addu      $a0, $s0, $zero
/* 18180 800AD580 02002021 */  addu       $a0, $s0, $zero
/* 18184 800AD584 0C025C4C */  jal        func_80097130
/* 18188 800AD588 00002821 */   addu      $a1, $zero, $zero
/* 1818C 800AD58C 3C048039 */  lui        $a0, %hi(D_803936D0)
/* 18190 800AD590 248436D0 */  addiu      $a0, $a0, %lo(D_803936D0)
/* 18194 800AD594 02002821 */  addu       $a1, $s0, $zero
/* 18198 800AD598 2406012C */  addiu      $a2, $zero, 0x12C
/* 1819C 800AD59C 0C025D06 */  jal        func_80097418
/* 181A0 800AD5A0 24070001 */   addiu     $a3, $zero, 0x1
/* 181A4 800AD5A4 3C108015 */  lui        $s0, %hi(D_80149D80)
/* 181A8 800AD5A8 26109D80 */  addiu      $s0, $s0, %lo(D_80149D80)
/* 181AC 800AD5AC 3C018015 */  lui        $at, %hi(D_80149DC0)
/* 181B0 800AD5B0 AC229DC0 */  sw         $v0, %lo(D_80149DC0)($at)
/* 181B4 800AD5B4 0C025C49 */  jal        func_80097124
/* 181B8 800AD5B8 02002021 */   addu      $a0, $s0, $zero
/* 181BC 800AD5BC 02002021 */  addu       $a0, $s0, $zero
/* 181C0 800AD5C0 0C025C4C */  jal        func_80097130
/* 181C4 800AD5C4 00002821 */   addu      $a1, $zero, $zero
/* 181C8 800AD5C8 3C048039 */  lui        $a0, %hi(D_80393AE0)
/* 181CC 800AD5CC 24843AE0 */  addiu      $a0, $a0, %lo(D_80393AE0)
/* 181D0 800AD5D0 02002821 */  addu       $a1, $s0, $zero
/* 181D4 800AD5D4 2406012C */  addiu      $a2, $zero, 0x12C
/* 181D8 800AD5D8 0C025D06 */  jal        func_80097418
/* 181DC 800AD5DC 24070001 */   addiu     $a3, $zero, 0x1
/* 181E0 800AD5E0 3C108015 */  lui        $s0, %hi(D_8014A254)
/* 181E4 800AD5E4 2610A254 */  addiu      $s0, $s0, %lo(D_8014A254)
/* 181E8 800AD5E8 3C018017 */  lui        $at, %hi(D_8016D084)
/* 181EC 800AD5EC AC22D084 */  sw         $v0, %lo(D_8016D084)($at)
/* 181F0 800AD5F0 0C025C49 */  jal        func_80097124
/* 181F4 800AD5F4 02002021 */   addu      $a0, $s0, $zero
/* 181F8 800AD5F8 02002021 */  addu       $a0, $s0, $zero
/* 181FC 800AD5FC 0C025C4C */  jal        func_80097130
/* 18200 800AD600 00002821 */   addu      $a1, $zero, $zero
/* 18204 800AD604 3C048039 */  lui        $a0, %hi(D_803926D0)
/* 18208 800AD608 248426D0 */  addiu      $a0, $a0, %lo(D_803926D0)
/* 1820C 800AD60C 02002821 */  addu       $a1, $s0, $zero
/* 18210 800AD610 2406012C */  addiu      $a2, $zero, 0x12C
/* 18214 800AD614 0C025D06 */  jal        func_80097418
/* 18218 800AD618 24070001 */   addiu     $a3, $zero, 0x1
/* 1821C 800AD61C 3C108017 */  lui        $s0, %hi(D_8016D1A0)
/* 18220 800AD620 2610D1A0 */  addiu      $s0, $s0, %lo(D_8016D1A0)
/* 18224 800AD624 3C018015 */  lui        $at, %hi(D_80149FB4)
/* 18228 800AD628 AC229FB4 */  sw         $v0, %lo(D_80149FB4)($at)
/* 1822C 800AD62C 0C025C49 */  jal        func_80097124
/* 18230 800AD630 02002021 */   addu      $a0, $s0, $zero
/* 18234 800AD634 02002021 */  addu       $a0, $s0, $zero
/* 18238 800AD638 0C025C4C */  jal        func_80097130
/* 1823C 800AD63C 00002821 */   addu      $a1, $zero, $zero
/* 18240 800AD640 3C048039 */  lui        $a0, %hi(D_8038F800)
/* 18244 800AD644 2484F800 */  addiu      $a0, $a0, %lo(D_8038F800)
/* 18248 800AD648 02002821 */  addu       $a1, $s0, $zero
/* 1824C 800AD64C 2406012C */  addiu      $a2, $zero, 0x12C
/* 18250 800AD650 0C025D06 */  jal        func_80097418
/* 18254 800AD654 24070001 */   addiu     $a3, $zero, 0x1
/* 18258 800AD658 3C018017 */  lui        $at, %hi(D_8016E548)
/* 1825C 800AD65C AC22E548 */  sw         $v0, %lo(D_8016E548)($at)
/* 18260 800AD660 8FBF001C */  lw         $ra, 0x1C($sp)
/* 18264 800AD664 8FB20018 */  lw         $s2, 0x18($sp)
/* 18268 800AD668 8FB10014 */  lw         $s1, 0x14($sp)
/* 1826C 800AD66C 8FB00010 */  lw         $s0, 0x10($sp)
/* 18270 800AD670 27BD0020 */  addiu      $sp, $sp, 0x20
/* 18274 800AD674 03E00008 */  jr         $ra
/* 18278 800AD678 00000000 */   nop
.size func_800AD3AC, . - func_800AD3AC
