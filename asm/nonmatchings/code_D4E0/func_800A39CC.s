glabel func_800A39CC
/* E5CC 800A39CC 00003021 */  addu       $a2, $zero, $zero
/* E5D0 800A39D0 240A0001 */  addiu      $t2, $zero, 0x1
/* E5D4 800A39D4 30A500FF */  andi       $a1, $a1, 0xFF
/* E5D8 800A39D8 28A70002 */  slti       $a3, $a1, 0x2
/* E5DC 800A39DC 24090002 */  addiu      $t1, $zero, 0x2
/* E5E0 800A39E0 24080003 */  addiu      $t0, $zero, 0x3
/* E5E4 800A39E4 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* E5E8 800A39E8 3C03800D */  lui        $v1, %hi(D_800D3DC0)
/* E5EC 800A39EC 24633DC0 */  addiu      $v1, $v1, %lo(D_800D3DC0)
.L800A39F0:
/* E5F0 800A39F0 94620000 */  lhu        $v0, 0x0($v1)
/* E5F4 800A39F4 50AA000F */  beql       $a1, $t2, .L800A3A34
/* E5F8 800A39F8 3042FFFF */   andi      $v0, $v0, 0xFFFF
/* E5FC 800A39FC 10E00005 */  beqz       $a3, .L800A3A14
/* E600 800A3A00 00000000 */   nop
/* E604 800A3A04 10A00009 */  beqz       $a1, .L800A3A2C
/* E608 800A3A08 3042FFFF */   andi      $v0, $v0, 0xFFFF
/* E60C 800A3A0C 08028E91 */  j          .L800A3A44
/* E610 800A3A10 00000000 */   nop
.L800A3A14:
/* E614 800A3A14 10A9000B */  beq        $a1, $t1, .L800A3A44
/* E618 800A3A18 3042FFFF */   andi      $v0, $v0, 0xFFFF
/* E61C 800A3A1C 10A80007 */  beq        $a1, $t0, .L800A3A3C
/* E620 800A3A20 00000000 */   nop
/* E624 800A3A24 08028E91 */  j          .L800A3A44
/* E628 800A3A28 00000000 */   nop
.L800A3A2C:
/* E62C 800A3A2C 08028E90 */  j          .L800A3A40
/* E630 800A3A30 00021080 */   sll       $v0, $v0, 2
.L800A3A34:
/* E634 800A3A34 08028E90 */  j          .L800A3A40
/* E638 800A3A38 00021040 */   sll       $v0, $v0, 1
.L800A3A3C:
/* E63C 800A3A3C 00021042 */  srl        $v0, $v0, 1
.L800A3A40:
/* E640 800A3A40 3042FFFF */  andi       $v0, $v0, 0xFFFF
.L800A3A44:
/* E644 800A3A44 54820003 */  bnel       $a0, $v0, .L800A3A54
/* E648 800A3A48 24C60001 */   addiu     $a2, $a2, 0x1
/* E64C 800A3A4C 08028E99 */  j          .L800A3A64
/* E650 800A3A50 24020033 */   addiu     $v0, $zero, 0x33
.L800A3A54:
/* E654 800A3A54 28C20020 */  slti       $v0, $a2, 0x20
/* E658 800A3A58 1440FFE5 */  bnez       $v0, .L800A39F0
/* E65C 800A3A5C 24630002 */   addiu     $v1, $v1, 0x2
/* E660 800A3A60 3402FFF4 */  ori        $v0, $zero, 0xFFF4
.L800A3A64:
/* E664 800A3A64 03E00008 */  jr         $ra
/* E668 800A3A68 00000000 */   nop
.size func_800A39CC, . - func_800A39CC
