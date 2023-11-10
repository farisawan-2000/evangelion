glabel func_800C0070
/* 2AC70 800C0070 00803021 */  addu       $a2, $a0, $zero
/* 2AC74 800C0074 90C30016 */  lbu        $v1, 0x16($a2)
/* 2AC78 800C0078 24020002 */  addiu      $v0, $zero, 0x2
/* 2AC7C 800C007C 14620002 */  bne        $v1, $v0, .L800C0088
/* 2AC80 800C0080 24070200 */   addiu     $a3, $zero, 0x200
/* 2AC84 800C0084 24070100 */  addiu      $a3, $zero, 0x100
.L800C0088:
/* 2AC88 800C0088 90C30017 */  lbu        $v1, 0x17($a2)
/* 2AC8C 800C008C 24020006 */  addiu      $v0, $zero, 0x6
/* 2AC90 800C0090 94C40014 */  lhu        $a0, 0x14($a2)
/* 2AC94 800C0094 00432823 */  subu       $a1, $v0, $v1
/* 2AC98 800C0098 24020033 */  addiu      $v0, $zero, 0x33
/* 2AC9C 800C009C 54820027 */  bnel       $a0, $v0, .L800C013C
/* 2ACA0 800C00A0 30A5FFFF */   andi      $a1, $a1, 0xFFFF
/* 2ACA4 800C00A4 94C20002 */  lhu        $v0, 0x2($a2)
/* 2ACA8 800C00A8 00A21007 */  srav       $v0, $v0, $a1
/* 2ACAC 800C00AC 3043FFFF */  andi       $v1, $v0, 0xFFFF
/* 2ACB0 800C00B0 00E3001B */  divu       $zero, $a3, $v1
/* 2ACB4 800C00B4 14600002 */  bnez       $v1, .L800C00C0
/* 2ACB8 800C00B8 00000000 */   nop
/* 2ACBC 800C00BC 0007000D */  break      7
.L800C00C0:
/* 2ACC0 800C00C0 00001812 */  mflo       $v1
/* 2ACC4 800C00C4 A4C2001C */  sh         $v0, 0x1C($a2)
/* 2ACC8 800C00C8 94C2001C */  lhu        $v0, 0x1C($a2)
/* 2ACCC 800C00CC 240407FF */  addiu      $a0, $zero, 0x7FF
/* 2ACD0 800C00D0 0082001A */  div        $zero, $a0, $v0
/* 2ACD4 800C00D4 14400002 */  bnez       $v0, .L800C00E0
/* 2ACD8 800C00D8 00000000 */   nop
/* 2ACDC 800C00DC 0007000D */  break      7
.L800C00E0:
/* 2ACE0 800C00E0 2401FFFF */  addiu      $at, $zero, -0x1
/* 2ACE4 800C00E4 14410004 */  bne        $v0, $at, .L800C00F8
/* 2ACE8 800C00E8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2ACEC 800C00EC 14810002 */  bne        $a0, $at, .L800C00F8
/* 2ACF0 800C00F0 00000000 */   nop
/* 2ACF4 800C00F4 0006000D */  break      6
.L800C00F8:
/* 2ACF8 800C00F8 00002012 */  mflo       $a0
/* 2ACFC 800C00FC 00031880 */  sll        $v1, $v1, 2
/* 2AD00 800C0100 A4C3001E */  sh         $v1, 0x1E($a2)
/* 2AD04 800C0104 94C3001C */  lhu        $v1, 0x1C($a2)
/* 2AD08 800C0108 94C2001E */  lhu        $v0, 0x1E($a2)
/* 2AD0C 800C010C 00031840 */  sll        $v1, $v1, 1
/* 2AD10 800C0110 00430018 */  mult       $v0, $v1
/* 2AD14 800C0114 00001012 */  mflo       $v0
/* 2AD18 800C0118 24840001 */  addiu      $a0, $a0, 0x1
/* 2AD1C 800C011C A4C30024 */  sh         $v1, 0x24($a2)
/* 2AD20 800C0120 A4C40022 */  sh         $a0, 0x22($a2)
/* 2AD24 800C0124 A4C20026 */  sh         $v0, 0x26($a2)
/* 2AD28 800C0128 3042FFFE */  andi       $v0, $v0, 0xFFFE
/* 2AD2C 800C012C 00021042 */  srl        $v0, $v0, 1
/* 2AD30 800C0130 2442FFFF */  addiu      $v0, $v0, -0x1
/* 2AD34 800C0134 08030069 */  j          .L800C01A4
/* 2AD38 800C0138 A4C20020 */   sh        $v0, 0x20($a2)
.L800C013C:
/* 2AD3C 800C013C 94C40006 */  lhu        $a0, 0x6($a2)
/* 2AD40 800C0140 00A42007 */  srav       $a0, $a0, $a1
/* 2AD44 800C0144 24840003 */  addiu      $a0, $a0, 0x3
/* 2AD48 800C0148 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 2AD4C 800C014C 00E2001B */  divu       $zero, $a3, $v0
/* 2AD50 800C0150 14400002 */  bnez       $v0, .L800C015C
/* 2AD54 800C0154 00000000 */   nop
/* 2AD58 800C0158 0007000D */  break      7
.L800C015C:
/* 2AD5C 800C015C 00001012 */  mflo       $v0
/* 2AD60 800C0160 94C30002 */  lhu        $v1, 0x2($a2)
/* 2AD64 800C0164 00A31807 */  srav       $v1, $v1, $a1
/* 2AD68 800C0168 00021080 */  sll        $v0, $v0, 2
/* 2AD6C 800C016C A4C2001E */  sh         $v0, 0x1E($a2)
/* 2AD70 800C0170 94C5001E */  lhu        $a1, 0x1E($a2)
/* 2AD74 800C0174 00031840 */  sll        $v1, $v1, 1
/* 2AD78 800C0178 3062FFFE */  andi       $v0, $v1, 0xFFFE
/* 2AD7C 800C017C 00A20018 */  mult       $a1, $v0
/* 2AD80 800C0180 00002812 */  mflo       $a1
/* 2AD84 800C0184 94C2001E */  lhu        $v0, 0x1E($a2)
/* 2AD88 800C0188 A4C4001C */  sh         $a0, 0x1C($a2)
/* 2AD8C 800C018C A4C30024 */  sh         $v1, 0x24($a2)
/* 2AD90 800C0190 2442FFFF */  addiu      $v0, $v0, -0x1
/* 2AD94 800C0194 A4C20022 */  sh         $v0, 0x22($a2)
/* 2AD98 800C0198 00051402 */  srl        $v0, $a1, 16
/* 2AD9C 800C019C A4C20026 */  sh         $v0, 0x26($a2)
/* 2ADA0 800C01A0 A4C50020 */  sh         $a1, 0x20($a2)
.L800C01A4:
/* 2ADA4 800C01A4 03E00008 */  jr         $ra
/* 2ADA8 800C01A8 00000000 */   nop
/* 2ADAC 800C01AC 00000000 */  nop
.size func_800C0070, . - func_800C0070
