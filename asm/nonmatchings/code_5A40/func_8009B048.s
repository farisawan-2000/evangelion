glabel func_8009B048
/* 5C48 8009B048 3C03800D */  lui        $v1, %hi(D_800D3B80)
/* 5C4C 8009B04C 8C633B80 */  lw         $v1, %lo(D_800D3B80)($v1)
/* 5C50 8009B050 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5C54 8009B054 2402FFFF */  addiu      $v0, $zero, -0x1
/* 5C58 8009B058 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5C5C 8009B05C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 5C60 8009B060 10620057 */  beq        $v1, $v0, .L8009B1C0
/* 5C64 8009B064 00000000 */   nop
/* 5C68 8009B068 3C02800D */  lui        $v0, %hi(D_800D3BA0)
/* 5C6C 8009B06C 84423BA0 */  lh         $v0, %lo(D_800D3BA0)($v0)
/* 5C70 8009B070 10400004 */  beqz       $v0, .L8009B084
/* 5C74 8009B074 00401821 */   addu      $v1, $v0, $zero
/* 5C78 8009B078 2462FFFF */  addiu      $v0, $v1, -0x1
/* 5C7C 8009B07C 3C01800D */  lui        $at, %hi(D_800D3BA0)
/* 5C80 8009B080 A4223BA0 */  sh         $v0, %lo(D_800D3BA0)($at)
.L8009B084:
/* 5C84 8009B084 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5C88 8009B088 C4223B88 */  lwc1       $f2, %lo(D_800D3B88)($at)
/* 5C8C 8009B08C 4480A000 */  mtc1       $zero, $f20
/* 5C90 8009B090 00000000 */  nop
/* 5C94 8009B094 4602A03E */  c.le.s     $f20, $f2
/* 5C98 8009B098 00000000 */  nop
/* 5C9C 8009B09C 4500001D */  bc1f       .L8009B114
/* 5CA0 8009B0A0 00000000 */   nop
/* 5CA4 8009B0A4 3C01800D */  lui        $at, %hi(D_800D3B8C)
/* 5CA8 8009B0A8 C4203B8C */  lwc1       $f0, %lo(D_800D3B8C)($at)
/* 5CAC 8009B0AC 46001081 */  sub.s      $f2, $f2, $f0
/* 5CB0 8009B0B0 4614103E */  c.le.s     $f2, $f20
/* 5CB4 8009B0B4 00000000 */  nop
/* 5CB8 8009B0B8 00000000 */  nop
/* 5CBC 8009B0BC 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5CC0 8009B0C0 E4223B88 */  swc1       $f2, %lo(D_800D3B88)($at)
/* 5CC4 8009B0C4 4500000C */  bc1f       .L8009B0F8
/* 5CC8 8009B0C8 00000000 */   nop
/* 5CCC 8009B0CC 3C048017 */  lui        $a0, %hi(D_801765D8)
/* 5CD0 8009B0D0 8C8465D8 */  lw         $a0, %lo(D_801765D8)($a0)
/* 5CD4 8009B0D4 0C026DB1 */  jal        func_8009B6C4
/* 5CD8 8009B0D8 00002821 */   addu      $a1, $zero, $zero
/* 5CDC 8009B0DC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 5CE0 8009B0E0 3C018017 */  lui        $at, %hi(D_801765D8)
/* 5CE4 8009B0E4 AC2065D8 */  sw         $zero, %lo(D_801765D8)($at)
/* 5CE8 8009B0E8 3C018017 */  lui        $at, %hi(D_8016D03C)
/* 5CEC 8009B0EC A422D03C */  sh         $v0, %lo(D_8016D03C)($at)
/* 5CF0 8009B0F0 08026C95 */  j          .L8009B254
/* 5CF4 8009B0F4 00000000 */   nop
.L8009B0F8:
/* 5CF8 8009B0F8 3C048017 */  lui        $a0, %hi(D_801765D8)
/* 5CFC 8009B0FC 8C8465D8 */  lw         $a0, %lo(D_801765D8)($a0)
/* 5D00 8009B100 4600100D */  trunc.w.s  $f0, $f2
/* 5D04 8009B104 44050000 */  mfc1       $a1, $f0
/* 5D08 8009B108 00000000 */  nop
/* 5D0C 8009B10C 08026C93 */  j          .L8009B24C
/* 5D10 8009B110 00000000 */   nop
.L8009B114:
/* 5D14 8009B114 3C02800D */  lui        $v0, %hi(D_800D3BA0)
/* 5D18 8009B118 84423BA0 */  lh         $v0, %lo(D_800D3BA0)($v0)
/* 5D1C 8009B11C 1440004D */  bnez       $v0, .L8009B254
/* 5D20 8009B120 00000000 */   nop
/* 5D24 8009B124 0C02B9C9 */  jal        func_800AE724
/* 5D28 8009B128 24040002 */   addiu     $a0, $zero, 0x2
/* 5D2C 8009B12C 14400049 */  bnez       $v0, .L8009B254
/* 5D30 8009B130 2402FFFE */   addiu     $v0, $zero, -0x2
/* 5D34 8009B134 3C04800D */  lui        $a0, %hi(D_800D3B80)
/* 5D38 8009B138 8C843B80 */  lw         $a0, %lo(D_800D3B80)($a0)
/* 5D3C 8009B13C 1082001C */  beq        $a0, $v0, .L8009B1B0
/* 5D40 8009B140 2402FFFF */   addiu     $v0, $zero, -0x1
/* 5D44 8009B144 0C026D70 */  jal        func_8009B5C0
/* 5D48 8009B148 00000000 */   nop
/* 5D4C 8009B14C 3C04800D */  lui        $a0, %hi(D_800D3B84)
/* 5D50 8009B150 8C843B84 */  lw         $a0, %lo(D_800D3B84)($a0)
/* 5D54 8009B154 0C026D95 */  jal        func_8009B654
/* 5D58 8009B158 00000000 */   nop
/* 5D5C 8009B15C 3C03800D */  lui        $v1, %hi(D_800D3B80)
/* 5D60 8009B160 8C633B80 */  lw         $v1, %lo(D_800D3B80)($v1)
/* 5D64 8009B164 3C04800D */  lui        $a0, %hi(D_800D3BA2)
/* 5D68 8009B168 90843BA2 */  lbu        $a0, %lo(D_800D3BA2)($a0)
/* 5D6C 8009B16C 3C018017 */  lui        $at, %hi(D_801765D8)
/* 5D70 8009B170 AC2265D8 */  sw         $v0, %lo(D_801765D8)($at)
/* 5D74 8009B174 3C018017 */  lui        $at, %hi(D_8016D03C)
/* 5D78 8009B178 A423D03C */  sh         $v1, %lo(D_8016D03C)($at)
/* 5D7C 8009B17C 10800003 */  beqz       $a0, .L8009B18C
/* 5D80 8009B180 4600A086 */   mov.s     $f2, $f20
/* 5D84 8009B184 3C01800D */  lui        $at, %hi(D_800D3B90)
/* 5D88 8009B188 C4223B90 */  lwc1       $f2, %lo(D_800D3B90)($at)
.L8009B18C:
/* 5D8C 8009B18C 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5D90 8009B190 E4223B88 */  swc1       $f2, %lo(D_800D3B88)($at)
/* 5D94 8009B194 00402021 */  addu       $a0, $v0, $zero
/* 5D98 8009B198 4600100D */  trunc.w.s  $f0, $f2
/* 5D9C 8009B19C 44050000 */  mfc1       $a1, $f0
/* 5DA0 8009B1A0 00000000 */  nop
/* 5DA4 8009B1A4 0C026DC4 */  jal        func_8009B710
/* 5DA8 8009B1A8 00000000 */   nop
/* 5DAC 8009B1AC 2402FFFF */  addiu      $v0, $zero, -0x1
.L8009B1B0:
/* 5DB0 8009B1B0 3C01800D */  lui        $at, %hi(D_800D3B80)
/* 5DB4 8009B1B4 AC223B80 */  sw         $v0, %lo(D_800D3B80)($at)
/* 5DB8 8009B1B8 08026C95 */  j          .L8009B254
/* 5DBC 8009B1BC 00000000 */   nop
.L8009B1C0:
/* 5DC0 8009B1C0 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5DC4 8009B1C4 C4223B88 */  lwc1       $f2, %lo(D_800D3B88)($at)
/* 5DC8 8009B1C8 3C01800D */  lui        $at, %hi(D_800D3B90)
/* 5DCC 8009B1CC C4203B90 */  lwc1       $f0, %lo(D_800D3B90)($at)
/* 5DD0 8009B1D0 46001032 */  c.eq.s     $f2, $f0
/* 5DD4 8009B1D4 00000000 */  nop
/* 5DD8 8009B1D8 4501001E */  bc1t       .L8009B254
/* 5DDC 8009B1DC 00000000 */   nop
/* 5DE0 8009B1E0 3C01800D */  lui        $at, %hi(D_800D3B94)
/* 5DE4 8009B1E4 C4203B94 */  lwc1       $f0, %lo(D_800D3B94)($at)
/* 5DE8 8009B1E8 46001000 */  add.s      $f0, $f2, $f0
/* 5DEC 8009B1EC 3C01800D */  lui        $at, %hi(D_800D3B9C)
/* 5DF0 8009B1F0 C4223B9C */  lwc1       $f2, %lo(D_800D3B9C)($at)
/* 5DF4 8009B1F4 4600103C */  c.lt.s     $f2, $f0
/* 5DF8 8009B1F8 00000000 */  nop
/* 5DFC 8009B1FC 00000000 */  nop
/* 5E00 8009B200 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5E04 8009B204 E4203B88 */  swc1       $f0, %lo(D_800D3B88)($at)
/* 5E08 8009B208 45010007 */  bc1t       .L8009B228
/* 5E0C 8009B20C 00000000 */   nop
/* 5E10 8009B210 3C01800D */  lui        $at, %hi(D_800D3B98)
/* 5E14 8009B214 C4223B98 */  lwc1       $f2, %lo(D_800D3B98)($at)
/* 5E18 8009B218 4602003C */  c.lt.s     $f0, $f2
/* 5E1C 8009B21C 00000000 */  nop
/* 5E20 8009B220 45000003 */  bc1f       .L8009B230
/* 5E24 8009B224 00000000 */   nop
.L8009B228:
/* 5E28 8009B228 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5E2C 8009B22C E4223B88 */  swc1       $f2, %lo(D_800D3B88)($at)
.L8009B230:
/* 5E30 8009B230 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 5E34 8009B234 C4203B88 */  lwc1       $f0, %lo(D_800D3B88)($at)
/* 5E38 8009B238 3C048017 */  lui        $a0, %hi(D_801765D8)
/* 5E3C 8009B23C 8C8465D8 */  lw         $a0, %lo(D_801765D8)($a0)
/* 5E40 8009B240 4600008D */  trunc.w.s  $f2, $f0
/* 5E44 8009B244 44051000 */  mfc1       $a1, $f2
/* 5E48 8009B248 00000000 */  nop
.L8009B24C:
/* 5E4C 8009B24C 0C026DC4 */  jal        func_8009B710
/* 5E50 8009B250 00000000 */   nop
.L8009B254:
/* 5E54 8009B254 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5E58 8009B258 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 5E5C 8009B25C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5E60 8009B260 03E00008 */  jr         $ra
/* 5E64 8009B264 00000000 */   nop
.size func_8009B048, . - func_8009B048
