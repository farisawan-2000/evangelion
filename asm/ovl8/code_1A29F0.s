.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.18.0 */

glabel D_80390970
/* 1A29F0 80390970 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A29F4 80390974 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1A29F8 80390978 00808821 */  addu       $s1, $a0, $zero
/* 1A29FC 8039097C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1A2A00 80390980 AFB20020 */  sw         $s2, 0x20($sp)
/* 1A2A04 80390984 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2A08 80390988 8E300014 */  lw         $s0, 0x14($s1)
/* 1A2A0C 8039098C 9623001C */  lhu        $v1, 0x1C($s1)
/* 1A2A10 80390990 8E32000C */  lw         $s2, 0xC($s1)
/* 1A2A14 80390994 24020002 */  addiu      $v0, $zero, 0x2
/* 1A2A18 80390998 10620039 */  beq        $v1, $v0, .L80390A80_ovl8
/* 1A2A1C 8039099C 28620003 */   slti      $v0, $v1, 0x3
/* 1A2A20 803909A0 50400007 */  beql       $v0, $zero, .L803909C0_ovl8
/* 1A2A24 803909A4 24020003 */   addiu     $v0, $zero, 0x3
/* 1A2A28 803909A8 1060000B */  beqz       $v1, .L803909D8_ovl8
/* 1A2A2C 803909AC 24020001 */   addiu     $v0, $zero, 0x1
/* 1A2A30 803909B0 10620019 */  beq        $v1, $v0, .L80390A18_ovl8
/* 1A2A34 803909B4 00001021 */   addu      $v0, $zero, $zero
/* 1A2A38 803909B8 080E42C6 */  j          .L80390B18_ovl8
/* 1A2A3C 803909BC 00000000 */   nop
.L803909C0_ovl8:
/* 1A2A40 803909C0 10620042 */  beq        $v1, $v0, .L80390ACC_ovl8
/* 1A2A44 803909C4 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 1A2A48 803909C8 1062004B */  beq        $v1, $v0, .L80390AF8_ovl8
/* 1A2A4C 803909CC 00001021 */   addu      $v0, $zero, $zero
/* 1A2A50 803909D0 080E42C6 */  j          .L80390B18_ovl8
/* 1A2A54 803909D4 00000000 */   nop
.L803909D8_ovl8:
/* 1A2A58 803909D8 0C032663 */  jal        func_800C998C
/* 1A2A5C 803909DC 24040024 */   addiu     $a0, $zero, 0x24
/* 1A2A60 803909E0 00402021 */  addu       $a0, $v0, $zero
/* 1A2A64 803909E4 24050024 */  addiu      $a1, $zero, 0x24
/* 1A2A68 803909E8 0C030134 */  jal        bzero
/* 1A2A6C 803909EC AE240014 */   sw        $a0, 0x14($s1)
/* 1A2A70 803909F0 8E300014 */  lw         $s0, 0x14($s1)
/* 1A2A74 803909F4 0C025C53 */  jal        func_8009714C
/* 1A2A78 803909F8 02402021 */   addu      $a0, $s2, $zero
/* 1A2A7C 803909FC 02002021 */  addu       $a0, $s0, $zero
/* 1A2A80 80390A00 0C0E42CD */  jal        func_80390B34
/* 1A2A84 80390A04 A0820022 */   sb        $v0, 0x22($a0)
/* 1A2A88 80390A08 00001021 */  addu       $v0, $zero, $zero
/* 1A2A8C 80390A0C 24030001 */  addiu      $v1, $zero, 0x1
/* 1A2A90 80390A10 080E42C6 */  j          .L80390B18_ovl8
/* 1A2A94 80390A14 A623001C */   sh        $v1, 0x1C($s1)
.L80390A18_ovl8:
/* 1A2A98 80390A18 0C025C53 */  jal        func_8009714C
/* 1A2A9C 80390A1C 02402021 */   addu      $a0, $s2, $zero
/* 1A2AA0 80390A20 240303E7 */  addiu      $v1, $zero, 0x3E7
/* 1A2AA4 80390A24 14430003 */  bne        $v0, $v1, .L80390A34_ovl8
/* 1A2AA8 80390A28 3402FFFF */   ori       $v0, $zero, 0xFFFF
.L80390A2C_ovl8:
/* 1A2AAC 80390A2C 080E42C5 */  j          .L80390B14_ovl8
/* 1A2AB0 80390A30 A622001C */   sh        $v0, 0x1C($s1)
.L80390A34_ovl8:
/* 1A2AB4 80390A34 0C0E433A */  jal        func_80390CE8
/* 1A2AB8 80390A38 02002021 */   addu      $a0, $s0, $zero
/* 1A2ABC 80390A3C 1040000C */  beqz       $v0, .L80390A70_ovl8
/* 1A2AC0 80390A40 24020002 */   addiu     $v0, $zero, 0x2
/* 1A2AC4 80390A44 44801000 */  mtc1       $zero, $f2
/* 1A2AC8 80390A48 00000000 */  nop
/* 1A2ACC 80390A4C 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2AD0 80390A50 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2AD4 80390A54 46800020 */  cvt.s.w    $f0, $f0
/* 1A2AD8 80390A58 46001083 */  div.s      $f2, $f2, $f0
.L80390A5C_ovl8:
/* 1A2ADC 80390A5C A622001C */  sh         $v0, 0x1C($s1)
/* 1A2AE0 80390A60 4600100D */  trunc.w.s  $f0, $f2
/* 1A2AE4 80390A64 44020000 */  mfc1       $v0, $f0
/* 1A2AE8 80390A68 00000000 */  nop
.L80390A6C_ovl8:
/* 1A2AEC 80390A6C A6020020 */  sh         $v0, 0x20($s0)
.L80390A70_ovl8:
/* 1A2AF0 80390A70 0C0E439C */  jal        func_80390E70
/* 1A2AF4 80390A74 02002021 */   addu      $a0, $s0, $zero
/* 1A2AF8 80390A78 080E42C6 */  j          .L80390B18_ovl8
/* 1A2AFC 80390A7C 00001021 */   addu      $v0, $zero, $zero
.L80390A80_ovl8:
/* 1A2B00 80390A80 0C025C53 */  jal        func_8009714C
/* 1A2B04 80390A84 02402021 */   addu      $a0, $s2, $zero
/* 1A2B08 80390A88 240303E7 */  addiu      $v1, $zero, 0x3E7
/* 1A2B0C 80390A8C 1043FFE7 */  beq        $v0, $v1, .L80390A2C_ovl8
/* 1A2B10 80390A90 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 1A2B14 80390A94 86020020 */  lh         $v0, 0x20($s0)
/* 1A2B18 80390A98 10400003 */  beqz       $v0, .L80390AA8_ovl8
/* 1A2B1C 80390A9C 00401821 */   addu      $v1, $v0, $zero
/* 1A2B20 80390AA0 080E429B */  j          .L80390A6C_ovl8
/* 1A2B24 80390AA4 2462FFFF */   addiu     $v0, $v1, -0x1
.L80390AA8_ovl8:
/* 1A2B28 80390AA8 3C014170 */  lui        $at, (0x41700000 >> 16)
/* 1A2B2C 80390AAC 44811000 */  mtc1       $at, $f2
/* 1A2B30 80390AB0 00000000 */  nop
/* 1A2B34 80390AB4 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2B38 80390AB8 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2B3C 80390ABC 46800020 */  cvt.s.w    $f0, $f0
/* 1A2B40 80390AC0 46001083 */  div.s      $f2, $f2, $f0
/* 1A2B44 80390AC4 080E4297 */  j          .L80390A5C_ovl8
/* 1A2B48 80390AC8 24020003 */   addiu     $v0, $zero, 0x3
.L80390ACC_ovl8:
/* 1A2B4C 80390ACC 0C025C53 */  jal        func_8009714C
/* 1A2B50 80390AD0 02402021 */   addu      $a0, $s2, $zero
/* 1A2B54 80390AD4 240303E7 */  addiu      $v1, $zero, 0x3E7
/* 1A2B58 80390AD8 1043FFD4 */  beq        $v0, $v1, .L80390A2C_ovl8
/* 1A2B5C 80390ADC 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 1A2B60 80390AE0 0C0E434D */  jal        func_80390D34
/* 1A2B64 80390AE4 02002021 */   addu      $a0, $s0, $zero
/* 1A2B68 80390AE8 1040FFE1 */  beqz       $v0, .L80390A70_ovl8
/* 1A2B6C 80390AEC 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 1A2B70 80390AF0 080E429C */  j          .L80390A70_ovl8
/* 1A2B74 80390AF4 A622001C */   sh        $v0, 0x1C($s1)
.L80390AF8_ovl8:
/* 1A2B78 80390AF8 0C0E432B */  jal        func_80390CAC
/* 1A2B7C 80390AFC 02002021 */   addu      $a0, $s0, $zero
/* 1A2B80 80390B00 8E240014 */  lw         $a0, 0x14($s1)
/* 1A2B84 80390B04 0C0326A1 */  jal        func_800C9A84
/* 1A2B88 80390B08 00000000 */   nop
/* 1A2B8C 80390B0C 080E42C6 */  j          .L80390B18_ovl8
/* 1A2B90 80390B10 24020001 */   addiu     $v0, $zero, 0x1
.L80390B14_ovl8:
/* 1A2B94 80390B14 00001021 */  addu       $v0, $zero, $zero
.L80390B18_ovl8:
/* 1A2B98 80390B18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A2B9C 80390B1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1A2BA0 80390B20 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1A2BA4 80390B24 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2BA8 80390B28 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A2BAC 80390B2C 03E00008 */  jr         $ra
/* 1A2BB0 80390B30 00000000 */   nop
.size D_80390970, . - D_80390970

glabel func_80390B34
/* 1A2BB4 80390B34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A2BB8 80390B38 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2BBC 80390B3C 00808021 */  addu       $s0, $a0, $zero
/* 1A2BC0 80390B40 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1A2BC4 80390B44 92020022 */  lbu        $v0, 0x22($s0)
/* 1A2BC8 80390B48 00021080 */  sll        $v0, $v0, 2
/* 1A2BCC 80390B4C 3C04803A */  lui        $a0, %hi(D_8039E630)
/* 1A2BD0 80390B50 00822021 */  addu       $a0, $a0, $v0
/* 1A2BD4 80390B54 9484E630 */  lhu        $a0, %lo(D_8039E630)($a0)
/* 1A2BD8 80390B58 24050002 */  addiu      $a1, $zero, 0x2
/* 1A2BDC 80390B5C 0C028CB7 */  jal        func_800A32DC
/* 1A2BE0 80390B60 00003021 */   addu      $a2, $zero, $zero
/* 1A2BE4 80390B64 AE020000 */  sw         $v0, 0x0($s0)
/* 1A2BE8 80390B68 8C43000C */  lw         $v1, 0xC($v0)
/* 1A2BEC 80390B6C 94650000 */  lhu        $a1, 0x0($v1)
/* 1A2BF0 80390B70 94660002 */  lhu        $a2, 0x2($v1)
/* 1A2BF4 80390B74 00402021 */  addu       $a0, $v0, $zero
/* 1A2BF8 80390B78 00052842 */  srl        $a1, $a1, 1
/* 1A2BFC 80390B7C 0C02912A */  jal        func_800A44A8
/* 1A2C00 80390B80 00063042 */   srl       $a2, $a2, 1
/* 1A2C04 80390B84 24020002 */  addiu      $v0, $zero, 0x2
/* 1A2C08 80390B88 AFA20010 */  sw         $v0, 0x10($sp)
/* 1A2C0C 80390B8C 8E040000 */  lw         $a0, 0x0($s0)
/* 1A2C10 80390B90 240500FF */  addiu      $a1, $zero, 0xFF
/* 1A2C14 80390B94 240600FF */  addiu      $a2, $zero, 0xFF
/* 1A2C18 80390B98 0C028E41 */  jal        func_800A3904
/* 1A2C1C 80390B9C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1A2C20 80390BA0 92020022 */  lbu        $v0, 0x22($s0)
/* 1A2C24 80390BA4 00021080 */  sll        $v0, $v0, 2
/* 1A2C28 80390BA8 3C04803A */  lui        $a0, %hi(D_8039E630)
/* 1A2C2C 80390BAC 00822021 */  addu       $a0, $a0, $v0
/* 1A2C30 80390BB0 9484E630 */  lhu        $a0, %lo(D_8039E630)($a0)
/* 1A2C34 80390BB4 24050002 */  addiu      $a1, $zero, 0x2
/* 1A2C38 80390BB8 0C028CB7 */  jal        func_800A32DC
/* 1A2C3C 80390BBC 00003021 */   addu      $a2, $zero, $zero
/* 1A2C40 80390BC0 AE020004 */  sw         $v0, 0x4($s0)
/* 1A2C44 80390BC4 8C43000C */  lw         $v1, 0xC($v0)
/* 1A2C48 80390BC8 94650000 */  lhu        $a1, 0x0($v1)
/* 1A2C4C 80390BCC 94660002 */  lhu        $a2, 0x2($v1)
/* 1A2C50 80390BD0 00402021 */  addu       $a0, $v0, $zero
/* 1A2C54 80390BD4 00052842 */  srl        $a1, $a1, 1
/* 1A2C58 80390BD8 0C02912A */  jal        func_800A44A8
/* 1A2C5C 80390BDC 00063042 */   srl       $a2, $a2, 1
/* 1A2C60 80390BE0 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 1A2C64 80390BE4 44811000 */  mtc1       $at, $f2
/* 1A2C68 80390BE8 00000000 */  nop
/* 1A2C6C 80390BEC 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2C70 80390BF0 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2C74 80390BF4 46800020 */  cvt.s.w    $f0, $f0
/* 1A2C78 80390BF8 46001083 */  div.s      $f2, $f2, $f0
/* 1A2C7C 80390BFC 3C014364 */  lui        $at, (0x43640000 >> 16)
/* 1A2C80 80390C00 44812000 */  mtc1       $at, $f4
/* 1A2C84 80390C04 00000000 */  nop
/* 1A2C88 80390C08 46022103 */  div.s      $f4, $f4, $f2
/* 1A2C8C 80390C0C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A2C90 80390C10 44815000 */  mtc1       $at, $f10
/* 1A2C94 80390C14 00000000 */  nop
/* 1A2C98 80390C18 460A1000 */  add.s      $f0, $f2, $f10
/* 1A2C9C 80390C1C 46002187 */  neg.s      $f6, $f4
/* 1A2CA0 80390C20 46003183 */  div.s      $f6, $f6, $f0
/* 1A2CA4 80390C24 8E020004 */  lw         $v0, 0x4($s0)
/* 1A2CA8 80390C28 3C0142BC */  lui        $at, (0x42BC0000 >> 16)
/* 1A2CAC 80390C2C 44814000 */  mtc1       $at, $f8
/* 1A2CB0 80390C30 00000000 */  nop
/* 1A2CB4 80390C34 3C038015 */  lui        $v1, %hi(D_80149FA8)
/* 1A2CB8 80390C38 8C639FA8 */  lw         $v1, %lo(D_80149FA8)($v1)
/* 1A2CBC 80390C3C 8C420014 */  lw         $v0, 0x14($v0)
/* 1A2CC0 80390C40 3C01C280 */  lui        $at, (0xC2800000 >> 16)
/* 1A2CC4 80390C44 44810000 */  mtc1       $at, $f0
/* 1A2CC8 80390C48 00000000 */  nop
/* 1A2CCC 80390C4C A4400002 */  sh         $zero, 0x2($v0)
/* 1A2CD0 80390C50 E608000C */  swc1       $f8, 0xC($s0)
/* 1A2CD4 80390C54 E60A0018 */  swc1       $f10, 0x18($s0)
/* 1A2CD8 80390C58 AE00001C */  sw         $zero, 0x1C($s0)
/* 1A2CDC 80390C5C E6040010 */  swc1       $f4, 0x10($s0)
/* 1A2CE0 80390C60 E6000008 */  swc1       $f0, 0x8($s0)
/* 1A2CE4 80390C64 4600100D */  trunc.w.s  $f0, $f2
/* 1A2CE8 80390C68 44020000 */  mfc1       $v0, $f0
/* 1A2CEC 80390C6C 00000000 */  nop
/* 1A2CF0 80390C70 A6020020 */  sh         $v0, 0x20($s0)
/* 1A2CF4 80390C74 10600008 */  beqz       $v1, .L80390C98_ovl8
/* 1A2CF8 80390C78 E6060014 */   swc1      $f6, 0x14($s0)
/* 1A2CFC 80390C7C 92020022 */  lbu        $v0, 0x22($s0)
/* 1A2D00 80390C80 00021080 */  sll        $v0, $v0, 2
/* 1A2D04 80390C84 3C04803A */  lui        $a0, %hi(D_8039E632)
/* 1A2D08 80390C88 00822021 */  addu       $a0, $a0, $v0
/* 1A2D0C 80390C8C 8484E632 */  lh         $a0, %lo(D_8039E632)($a0)
/* 1A2D10 80390C90 0C026DD5 */  jal        func_8009B754
/* 1A2D14 80390C94 00000000 */   nop
.L80390C98_ovl8:
/* 1A2D18 80390C98 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1A2D1C 80390C9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2D20 80390CA0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A2D24 80390CA4 03E00008 */  jr         $ra
/* 1A2D28 80390CA8 00000000 */   nop
.size func_80390B34, . - func_80390B34

glabel func_80390CAC
/* 1A2D2C 80390CAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A2D30 80390CB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A2D34 80390CB4 00808021 */  addu       $s0, $a0, $zero
/* 1A2D38 80390CB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A2D3C 80390CBC 8E040000 */  lw         $a0, 0x0($s0)
/* 1A2D40 80390CC0 0C028D30 */  jal        func_800A34C0
/* 1A2D44 80390CC4 00000000 */   nop
/* 1A2D48 80390CC8 8E040004 */  lw         $a0, 0x4($s0)
/* 1A2D4C 80390CCC 0C028D30 */  jal        func_800A34C0
/* 1A2D50 80390CD0 00000000 */   nop
/* 1A2D54 80390CD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A2D58 80390CD8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A2D5C 80390CDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A2D60 80390CE0 03E00008 */  jr         $ra
/* 1A2D64 80390CE4 00000000 */   nop
.size func_80390CAC, . - func_80390CAC

glabel func_80390CE8
/* 1A2D68 80390CE8 84820020 */  lh         $v0, 0x20($a0)
/* 1A2D6C 80390CEC 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1A2D70 80390CF0 14400003 */  bnez       $v0, .L80390D00_ovl8
/* 1A2D74 80390CF4 00401821 */   addu      $v1, $v0, $zero
/* 1A2D78 80390CF8 080E434A */  j          .L80390D28_ovl8
/* 1A2D7C 80390CFC 24020001 */   addiu     $v0, $zero, 0x1
.L80390D00_ovl8:
/* 1A2D80 80390D00 C4820010 */  lwc1       $f2, 0x10($a0)
/* 1A2D84 80390D04 C4800014 */  lwc1       $f0, 0x14($a0)
/* 1A2D88 80390D08 46001080 */  add.s      $f2, $f2, $f0
/* 1A2D8C 80390D0C C4800008 */  lwc1       $f0, 0x8($a0)
/* 1A2D90 80390D10 2463FFFF */  addiu      $v1, $v1, -0x1
/* 1A2D94 80390D14 46020000 */  add.s      $f0, $f0, $f2
/* 1A2D98 80390D18 00001021 */  addu       $v0, $zero, $zero
/* 1A2D9C 80390D1C A4830020 */  sh         $v1, 0x20($a0)
/* 1A2DA0 80390D20 E4820010 */  swc1       $f2, 0x10($a0)
/* 1A2DA4 80390D24 E4800008 */  swc1       $f0, 0x8($a0)
.L80390D28_ovl8:
/* 1A2DA8 80390D28 27BD0008 */  addiu      $sp, $sp, 0x8
/* 1A2DAC 80390D2C 03E00008 */  jr         $ra
/* 1A2DB0 80390D30 00000000 */   nop
.size func_80390CE8, . - func_80390CE8

glabel func_80390D34
/* 1A2DB4 80390D34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A2DB8 80390D38 AFB00018 */  sw         $s0, 0x18($sp)
/* 1A2DBC 80390D3C 00808021 */  addu       $s0, $a0, $zero
/* 1A2DC0 80390D40 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1A2DC4 80390D44 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1A2DC8 80390D48 86020020 */  lh         $v0, 0x20($s0)
/* 1A2DCC 80390D4C 10400040 */  beqz       $v0, .L80390E50_ovl8
/* 1A2DD0 80390D50 00401821 */   addu      $v1, $v0, $zero
/* 1A2DD4 80390D54 3C014170 */  lui        $at, (0x41700000 >> 16)
/* 1A2DD8 80390D58 44810000 */  mtc1       $at, $f0
/* 1A2DDC 80390D5C 00000000 */  nop
/* 1A2DE0 80390D60 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2DE4 80390D64 C4229F90 */  lwc1       $f2, %lo(D_80149F90)($at)
/* 1A2DE8 80390D68 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2DEC 80390D6C 46020003 */  div.s      $f0, $f0, $f2
/* 1A2DF0 80390D70 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A2DF4 80390D74 44812000 */  mtc1       $at, $f4
/* 1A2DF8 80390D78 00000000 */  nop
/* 1A2DFC 80390D7C 46002003 */  div.s      $f0, $f4, $f0
/* 1A2E00 80390D80 C6020018 */  lwc1       $f2, 0x18($s0)
/* 1A2E04 80390D84 46001081 */  sub.s      $f2, $f2, $f0
/* 1A2E08 80390D88 2462FFFF */  addiu      $v0, $v1, -0x1
/* 1A2E0C 80390D8C 4602203C */  c.lt.s     $f4, $f2
/* 1A2E10 80390D90 00000000 */  nop
/* 1A2E14 80390D94 00000000 */  nop
/* 1A2E18 80390D98 A6020020 */  sh         $v0, 0x20($s0)
/* 1A2E1C 80390D9C 45000003 */  bc1f       .L80390DAC_ovl8
/* 1A2E20 80390DA0 E6020018 */   swc1      $f2, 0x18($s0)
/* 1A2E24 80390DA4 080E4374 */  j          .L80390DD0_ovl8
/* 1A2E28 80390DA8 E6040018 */   swc1      $f4, 0x18($s0)
.L80390DAC_ovl8:
/* 1A2E2C 80390DAC 3C013D4C */  lui        $at, (0x3D4CCCCD >> 16)
/* 1A2E30 80390DB0 3421CCCD */  ori        $at, $at, (0x3D4CCCCD & 0xFFFF)
/* 1A2E34 80390DB4 44810000 */  mtc1       $at, $f0
/* 1A2E38 80390DB8 00000000 */  nop
/* 1A2E3C 80390DBC 4600103C */  c.lt.s     $f2, $f0
/* 1A2E40 80390DC0 00000000 */  nop
/* 1A2E44 80390DC4 00000000 */  nop
/* 1A2E48 80390DC8 45030001 */  bc1tl      .L80390DD0_ovl8
/* 1A2E4C 80390DCC E6000018 */   swc1      $f0, 0x18($s0)
.L80390DD0_ovl8:
/* 1A2E50 80390DD0 3C014526 */  lui        $at, (0x4526AAAB >> 16)
/* 1A2E54 80390DD4 3421AAAB */  ori        $at, $at, (0x4526AAAB & 0xFFFF)
/* 1A2E58 80390DD8 44811000 */  mtc1       $at, $f2
/* 1A2E5C 80390DDC 00000000 */  nop
/* 1A2E60 80390DE0 3C018015 */  lui        $at, %hi(D_80149F90)
/* 1A2E64 80390DE4 C4209F90 */  lwc1       $f0, %lo(D_80149F90)($at)
/* 1A2E68 80390DE8 46800020 */  cvt.s.w    $f0, $f0
/* 1A2E6C 80390DEC 46020002 */  mul.s      $f0, $f0, $f2
/* 1A2E70 80390DF0 8E040000 */  lw         $a0, 0x0($s0)
/* 1A2E74 80390DF4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A2E78 80390DF8 4481A000 */  mtc1       $at, $f20
/* 1A2E7C 80390DFC 00000000 */  nop
/* 1A2E80 80390E00 C602001C */  lwc1       $f2, 0x1C($s0)
/* 1A2E84 80390E04 468010A0 */  cvt.s.w    $f2, $f2
/* 1A2E88 80390E08 46001080 */  add.s      $f2, $f2, $f0
/* 1A2E8C 80390E0C 8E070018 */  lw         $a3, 0x18($s0)
/* 1A2E90 80390E10 4406A000 */  mfc1       $a2, $f20
/* 1A2E94 80390E14 00000000 */  nop
/* 1A2E98 80390E18 4600100D */  trunc.w.s  $f0, $f2
/* 1A2E9C 80390E1C 44050000 */  mfc1       $a1, $f0
/* 1A2EA0 80390E20 00000000 */  nop
/* 1A2EA4 80390E24 0C02915B */  jal        func_800A456C
/* 1A2EA8 80390E28 AE05001C */   sw        $a1, 0x1C($s0)
/* 1A2EAC 80390E2C 8E040004 */  lw         $a0, 0x4($s0)
/* 1A2EB0 80390E30 8E05001C */  lw         $a1, 0x1C($s0)
/* 1A2EB4 80390E34 8E070018 */  lw         $a3, 0x18($s0)
/* 1A2EB8 80390E38 4406A000 */  mfc1       $a2, $f20
/* 1A2EBC 80390E3C 00000000 */  nop
/* 1A2EC0 80390E40 0C02915B */  jal        func_800A456C
/* 1A2EC4 80390E44 00000000 */   nop
/* 1A2EC8 80390E48 080E4396 */  j          .L80390E58_ovl8
/* 1A2ECC 80390E4C 00001021 */   addu      $v0, $zero, $zero
.L80390E50_ovl8:
/* 1A2ED0 80390E50 AE000018 */  sw         $zero, 0x18($s0)
/* 1A2ED4 80390E54 24020001 */  addiu      $v0, $zero, 0x1
.L80390E58_ovl8:
/* 1A2ED8 80390E58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1A2EDC 80390E5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1A2EE0 80390E60 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1A2EE4 80390E64 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1A2EE8 80390E68 03E00008 */  jr         $ra
/* 1A2EEC 80390E6C 00000000 */   nop
.size func_80390D34, . - func_80390D34

glabel func_80390E70
/* 1A2EF0 80390E70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A2EF4 80390E74 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A2EF8 80390E78 00808021 */  addu       $s0, $a0, $zero
/* 1A2EFC 80390E7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A2F00 80390E80 C6000008 */  lwc1       $f0, 0x8($s0)
/* 1A2F04 80390E84 8E040000 */  lw         $a0, 0x0($s0)
/* 1A2F08 80390E88 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F0C 80390E8C 44051000 */  mfc1       $a1, $f2
/* 1A2F10 80390E90 00000000 */  nop
/* 1A2F14 80390E94 C600000C */  lwc1       $f0, 0xC($s0)
/* 1A2F18 80390E98 00052C80 */  sll        $a1, $a1, 18
/* 1A2F1C 80390E9C 00052C03 */  sra        $a1, $a1, 16
/* 1A2F20 80390EA0 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F24 80390EA4 44061000 */  mfc1       $a2, $f2
/* 1A2F28 80390EA8 00000000 */  nop
/* 1A2F2C 80390EAC 00063480 */  sll        $a2, $a2, 18
/* 1A2F30 80390EB0 0C028D89 */  jal        func_800A3624
/* 1A2F34 80390EB4 00063403 */   sra       $a2, $a2, 16
/* 1A2F38 80390EB8 C6000008 */  lwc1       $f0, 0x8($s0)
/* 1A2F3C 80390EBC 8E040004 */  lw         $a0, 0x4($s0)
/* 1A2F40 80390EC0 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F44 80390EC4 44051000 */  mfc1       $a1, $f2
/* 1A2F48 80390EC8 00000000 */  nop
/* 1A2F4C 80390ECC C600000C */  lwc1       $f0, 0xC($s0)
/* 1A2F50 80390ED0 00052C80 */  sll        $a1, $a1, 18
/* 1A2F54 80390ED4 00052C03 */  sra        $a1, $a1, 16
/* 1A2F58 80390ED8 4600008D */  trunc.w.s  $f2, $f0
/* 1A2F5C 80390EDC 44061000 */  mfc1       $a2, $f2
/* 1A2F60 80390EE0 00000000 */  nop
/* 1A2F64 80390EE4 00063480 */  sll        $a2, $a2, 18
/* 1A2F68 80390EE8 0C028D89 */  jal        func_800A3624
/* 1A2F6C 80390EEC 00063403 */   sra       $a2, $a2, 16
/* 1A2F70 80390EF0 3C028015 */  lui        $v0, %hi(D_80149FA8)
/* 1A2F74 80390EF4 8C429FA8 */  lw         $v0, %lo(D_80149FA8)($v0)
/* 1A2F78 80390EF8 1040000E */  beqz       $v0, .L80390F34_ovl8
/* 1A2F7C 80390EFC 00000000 */   nop
/* 1A2F80 80390F00 C6020018 */  lwc1       $f2, 0x18($s0)
/* 1A2F84 80390F04 44800000 */  mtc1       $zero, $f0
/* 1A2F88 80390F08 00000000 */  nop
/* 1A2F8C 80390F0C 4602003C */  c.lt.s     $f0, $f2
/* 1A2F90 80390F10 00000000 */  nop
/* 1A2F94 80390F14 45000007 */  bc1f       .L80390F34_ovl8
/* 1A2F98 80390F18 00000000 */   nop
/* 1A2F9C 80390F1C 8E040000 */  lw         $a0, 0x0($s0)
/* 1A2FA0 80390F20 0C028A40 */  jal        func_800A2900
/* 1A2FA4 80390F24 00000000 */   nop
/* 1A2FA8 80390F28 8E040004 */  lw         $a0, 0x4($s0)
/* 1A2FAC 80390F2C 0C028A40 */  jal        func_800A2900
/* 1A2FB0 80390F30 00000000 */   nop
.L80390F34_ovl8:
/* 1A2FB4 80390F34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A2FB8 80390F38 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A2FBC 80390F3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A2FC0 80390F40 03E00008 */  jr         $ra
/* 1A2FC4 80390F44 00000000 */   nop
/* 1A2FC8 80390F48 00000000 */  nop
/* 1A2FCC 80390F4C 00000000 */  nop
.size func_80390E70, . - func_80390E70