.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AD180
/* 17D80 800AD180 00042400 */  sll        $a0, $a0, 0x10
/* 17D84 800AD184 00042403 */  sra        $a0, $a0, 0x10
/* 17D88 800AD188 00041080 */  sll        $v0, $a0, 2
/* 17D8C 800AD18C 3C01800D */  lui        $at, %hi(D_800D5140)
/* 17D90 800AD190 00220821 */  addu       $at, $at, $v0
/* 17D94 800AD194 C4225140 */  lwc1       $f2, %lo(D_800D5140)($at)
/* 17D98 800AD198 2C840013 */  sltiu      $a0, $a0, 0x13
/* 17D9C 800AD19C 10800033 */  beqz       $a0, .L800AD26C
/* 17DA0 800AD1A0 00000000 */   nop
/* 17DA4 800AD1A4 3C018010 */  lui        $at, %hi(D_800FB3D8)
/* 17DA8 800AD1A8 00220821 */  addu       $at, $at, $v0
/* 17DAC 800AD1AC 8C22B3D8 */  lw         $v0, %lo(D_800FB3D8)($at)
/* 17DB0 800AD1B0 00400008 */  jr         $v0
/* 17DB4 800AD1B4 00000000 */   nop
/* 17DB8 800AD1B8 3C038015 */  lui        $v1, %hi(D_80149E28)
/* 17DBC 800AD1BC 90639E28 */  lbu        $v1, %lo(D_80149E28)($v1)
/* 17DC0 800AD1C0 24020001 */  addiu      $v0, $zero, 1
/* 17DC4 800AD1C4 10620007 */  beq        $v1, $v0, .L800AD1E4
/* 17DC8 800AD1C8 28620002 */   slti      $v0, $v1, 2
/* 17DCC 800AD1CC 14400027 */  bnez       $v0, .L800AD26C
/* 17DD0 800AD1D0 24020002 */   addiu     $v0, $zero, 2
/* 17DD4 800AD1D4 10620009 */  beq        $v1, $v0, .L800AD1FC
/* 17DD8 800AD1D8 00000000 */   nop
/* 17DDC 800AD1DC 0802B49B */  j          .L800AD26C
/* 17DE0 800AD1E0 00000000 */   nop
.L800AD1E4:
/* 17DE4 800AD1E4 3C013F4C */  lui        $at, 0x3f4c
/* 17DE8 800AD1E8 3421CCCD */  ori        $at, $at, 0xcccd
/* 17DEC 800AD1EC 44810000 */  mtc1       $at, $f0
/* 17DF0 800AD1F0 00000000 */  nop
/* 17DF4 800AD1F4 0802B49B */  j          .L800AD26C
/* 17DF8 800AD1F8 46001082 */   mul.s     $f2, $f2, $f0
.L800AD1FC:
/* 17DFC 800AD1FC 3C013F33 */  lui        $at, 0x3f33
/* 17E00 800AD200 34213333 */  ori        $at, $at, 0x3333
/* 17E04 800AD204 44810000 */  mtc1       $at, $f0
/* 17E08 800AD208 00000000 */  nop
/* 17E0C 800AD20C 0802B49B */  j          .L800AD26C
/* 17E10 800AD210 46001082 */   mul.s     $f2, $f2, $f0
/* 17E14 800AD214 3C038015 */  lui        $v1, %hi(D_80149E28)
/* 17E18 800AD218 90639E28 */  lbu        $v1, %lo(D_80149E28)($v1)
/* 17E1C 800AD21C 24020001 */  addiu      $v0, $zero, 1
/* 17E20 800AD220 10620007 */  beq        $v1, $v0, .L800AD240
/* 17E24 800AD224 28620002 */   slti      $v0, $v1, 2
/* 17E28 800AD228 14400010 */  bnez       $v0, .L800AD26C
/* 17E2C 800AD22C 24020002 */   addiu     $v0, $zero, 2
/* 17E30 800AD230 10620009 */  beq        $v1, $v0, .L800AD258
/* 17E34 800AD234 00000000 */   nop
/* 17E38 800AD238 0802B49B */  j          .L800AD26C
/* 17E3C 800AD23C 00000000 */   nop
.L800AD240:
/* 17E40 800AD240 3C013F99 */  lui        $at, 0x3f99
/* 17E44 800AD244 3421999A */  ori        $at, $at, 0x999a
/* 17E48 800AD248 44810000 */  mtc1       $at, $f0
/* 17E4C 800AD24C 00000000 */  nop
/* 17E50 800AD250 0802B49B */  j          .L800AD26C
/* 17E54 800AD254 46001082 */   mul.s     $f2, $f2, $f0
.L800AD258:
/* 17E58 800AD258 3C013FB3 */  lui        $at, 0x3fb3
/* 17E5C 800AD25C 34213333 */  ori        $at, $at, 0x3333
/* 17E60 800AD260 44810000 */  mtc1       $at, $f0
/* 17E64 800AD264 00000000 */  nop
/* 17E68 800AD268 46001082 */  mul.s      $f2, $f2, $f0
.L800AD26C:
/* 17E6C 800AD26C 03E00008 */  jr         $ra
/* 17E70 800AD270 46001006 */   mov.s     $f0, $f2
/* 17E74 800AD274 00000000 */  nop
/* 17E78 800AD278 00000000 */  nop
/* 17E7C 800AD27C 00000000 */  nop
