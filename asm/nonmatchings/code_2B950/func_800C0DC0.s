glabel func_800C0DC0
/* 2B9C0 800C0DC0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2B9C4 800C0DC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 2B9C8 800C0DC8 00808021 */  addu       $s0, $a0, $zero
/* 2B9CC 800C0DCC AFB40028 */  sw         $s4, 0x28($sp)
/* 2B9D0 800C0DD0 00A0A021 */  addu       $s4, $a1, $zero
/* 2B9D4 800C0DD4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2B9D8 800C0DD8 00C0A821 */  addu       $s5, $a2, $zero
/* 2B9DC 800C0DDC AFB20020 */  sw         $s2, 0x20($sp)
/* 2B9E0 800C0DE0 26120040 */  addiu      $s2, $s0, 0x40
/* 2B9E4 800C0DE4 02402021 */  addu       $a0, $s2, $zero
/* 2B9E8 800C0DE8 26050058 */  addiu      $a1, $s0, 0x58
/* 2B9EC 800C0DEC 24060008 */  addiu      $a2, $zero, 0x8
/* 2B9F0 800C0DF0 24020001 */  addiu      $v0, $zero, 0x1
/* 2B9F4 800C0DF4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 2B9F8 800C0DF8 AFB30024 */  sw         $s3, 0x24($sp)
/* 2B9FC 800C0DFC AFB1001C */  sw         $s1, 0x1C($sp)
/* 2BA00 800C0E00 A6020000 */  sh         $v0, 0x0($s0)
/* 2BA04 800C0E04 24020004 */  addiu      $v0, $zero, 0x4
/* 2BA08 800C0E08 AE000274 */  sw         $zero, 0x274($s0)
/* 2BA0C 800C0E0C AE000278 */  sw         $zero, 0x278($s0)
/* 2BA10 800C0E10 AE000260 */  sw         $zero, 0x260($s0)
/* 2BA14 800C0E14 AE00027C */  sw         $zero, 0x27C($s0)
/* 2BA18 800C0E18 AE000264 */  sw         $zero, 0x264($s0)
/* 2BA1C 800C0E1C AE000268 */  sw         $zero, 0x268($s0)
/* 2BA20 800C0E20 AE00026C */  sw         $zero, 0x26C($s0)
/* 2BA24 800C0E24 AE000270 */  sw         $zero, 0x270($s0)
/* 2BA28 800C0E28 A6020020 */  sh         $v0, 0x20($s0)
/* 2BA2C 800C0E2C 93B3004B */  lbu        $s3, 0x4B($sp)
/* 2BA30 800C0E30 0C0301A4 */  jal        func_800C0690
/* 2BA34 800C0E34 00E08821 */   addu      $s1, $a3, $zero
/* 2BA38 800C0E38 26040078 */  addiu      $a0, $s0, 0x78
/* 2BA3C 800C0E3C 26050090 */  addiu      $a1, $s0, 0x90
/* 2BA40 800C0E40 0C0301A4 */  jal        func_800C0690
/* 2BA44 800C0E44 24060008 */   addiu     $a2, $zero, 0x8
/* 2BA48 800C0E48 0C0308D4 */  jal        func_800C2350
/* 2BA4C 800C0E4C 240400FE */   addiu     $a0, $zero, 0xFE
/* 2BA50 800C0E50 323100FF */  andi       $s1, $s1, 0xFF
/* 2BA54 800C0E54 00112080 */  sll        $a0, $s1, 2
/* 2BA58 800C0E58 00912021 */  addu       $a0, $a0, $s1
/* 2BA5C 800C0E5C 00042100 */  sll        $a0, $a0, 4
/* 2BA60 800C0E60 3C02800F */  lui        $v0, %hi(D_800F6A00)
/* 2BA64 800C0E64 24426A00 */  addiu      $v0, $v0, %lo(D_800F6A00)
/* 2BA68 800C0E68 0C0309BC */  jal        func_800C26F0
/* 2BA6C 800C0E6C 00822021 */   addu      $a0, $a0, $v0
/* 2BA70 800C0E70 0C030B18 */  jal        func_800C2C60
/* 2BA74 800C0E74 24040001 */   addiu     $a0, $zero, 0x1
/* 2BA78 800C0E78 24040004 */  addiu      $a0, $zero, 0x4
/* 2BA7C 800C0E7C 02402821 */  addu       $a1, $s2, $zero
/* 2BA80 800C0E80 0C030298 */  jal        func_800C0A60
/* 2BA84 800C0E84 2406029B */   addiu     $a2, $zero, 0x29B
/* 2BA88 800C0E88 24040009 */  addiu      $a0, $zero, 0x9
/* 2BA8C 800C0E8C 02402821 */  addu       $a1, $s2, $zero
/* 2BA90 800C0E90 0C030298 */  jal        func_800C0A60
/* 2BA94 800C0E94 2406029C */   addiu     $a2, $zero, 0x29C
/* 2BA98 800C0E98 2404000E */  addiu      $a0, $zero, 0xE
/* 2BA9C 800C0E9C 02402821 */  addu       $a1, $s2, $zero
/* 2BAA0 800C0EA0 0C030298 */  jal        func_800C0A60
/* 2BAA4 800C0EA4 2406029D */   addiu     $a2, $zero, 0x29D
/* 2BAA8 800C0EA8 02402021 */  addu       $a0, $s2, $zero
/* 2BAAC 800C0EAC 2405029A */  addiu      $a1, $zero, 0x29A
/* 2BAB0 800C0EB0 0C0309A4 */  jal        func_800C2690
/* 2BAB4 800C0EB4 02603021 */   addu      $a2, $s3, $zero
/* 2BAB8 800C0EB8 261100B0 */  addiu      $s1, $s0, 0xB0
/* 2BABC 800C0EBC 02202021 */  addu       $a0, $s1, $zero
/* 2BAC0 800C0EC0 24050004 */  addiu      $a1, $zero, 0x4
/* 2BAC4 800C0EC4 3C06800C */  lui        $a2, %hi(func_800C0FF8)
/* 2BAC8 800C0EC8 24C60FF8 */  addiu      $a2, $a2, %lo(func_800C0FF8)
/* 2BACC 800C0ECC 02003821 */  addu       $a3, $s0, $zero
/* 2BAD0 800C0ED0 AFB40010 */  sw         $s4, 0x10($sp)
/* 2BAD4 800C0ED4 0C03065C */  jal        osCreateThread
/* 2BAD8 800C0ED8 AFB50014 */   sw        $s5, 0x14($sp)
/* 2BADC 800C0EDC 0C0306CC */  jal        osStartThread
/* 2BAE0 800C0EE0 02202021 */   addu      $a0, $s1, $zero
/* 2BAE4 800C0EE4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 2BAE8 800C0EE8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2BAEC 800C0EEC 8FB40028 */  lw         $s4, 0x28($sp)
/* 2BAF0 800C0EF0 8FB30024 */  lw         $s3, 0x24($sp)
/* 2BAF4 800C0EF4 8FB20020 */  lw         $s2, 0x20($sp)
/* 2BAF8 800C0EF8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2BAFC 800C0EFC 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BB00 800C0F00 03E00008 */  jr         $ra
/* 2BB04 800C0F04 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800C0DC0, . - func_800C0DC0
