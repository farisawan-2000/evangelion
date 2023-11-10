glabel func_800A60A8
/* 10CA8 800A60A8 24A8FFFF */  addiu      $t0, $a1, -0x1
/* 10CAC 800A60AC 00052C00 */  sll        $a1, $a1, 16
/* 10CB0 800A60B0 10A00023 */  beqz       $a1, .L800A6140
/* 10CB4 800A60B4 00803821 */   addu      $a3, $a0, $zero
/* 10CB8 800A60B8 3C0AAAAA */  lui        $t2, (0xAAAAAAAB >> 16)
/* 10CBC 800A60BC 354AAAAB */  ori        $t2, $t2, (0xAAAAAAAB & 0xFFFF)
/* 10CC0 800A60C0 2409F800 */  addiu      $t1, $zero, -0x800
.L800A60C4:
/* 10CC4 800A60C4 94E50000 */  lhu        $a1, 0x0($a3)
/* 10CC8 800A60C8 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 10CCC 800A60CC 00021A02 */  srl        $v1, $v0, 8
/* 10CD0 800A60D0 306300F8 */  andi       $v1, $v1, 0xF8
/* 10CD4 800A60D4 000210C2 */  srl        $v0, $v0, 3
/* 10CD8 800A60D8 304200F8 */  andi       $v0, $v0, 0xF8
/* 10CDC 800A60DC 00621821 */  addu       $v1, $v1, $v0
/* 10CE0 800A60E0 00051080 */  sll        $v0, $a1, 2
/* 10CE4 800A60E4 304200F8 */  andi       $v0, $v0, 0xF8
/* 10CE8 800A60E8 00621821 */  addu       $v1, $v1, $v0
/* 10CEC 800A60EC 006A0019 */  multu      $v1, $t2
/* 10CF0 800A60F0 01003021 */  addu       $a2, $t0, $zero
/* 10CF4 800A60F4 2508FFFF */  addiu      $t0, $t0, -0x1
/* 10CF8 800A60F8 00063400 */  sll        $a2, $a2, 16
/* 10CFC 800A60FC 30A50001 */  andi       $a1, $a1, 0x1
/* 10D00 800A6100 00005810 */  mfhi       $t3
/* 10D04 800A6104 00000000 */  nop
/* 10D08 800A6108 00000000 */  nop
/* 10D0C 800A610C 000B1842 */  srl        $v1, $t3, 1
/* 10D10 800A6110 00032200 */  sll        $a0, $v1, 8
/* 10D14 800A6114 00892024 */  and        $a0, $a0, $t1
/* 10D18 800A6118 000310C0 */  sll        $v0, $v1, 3
/* 10D1C 800A611C 304207C0 */  andi       $v0, $v0, 0x7C0
/* 10D20 800A6120 00822025 */  or         $a0, $a0, $v0
/* 10D24 800A6124 00031882 */  srl        $v1, $v1, 2
/* 10D28 800A6128 3063003E */  andi       $v1, $v1, 0x3E
/* 10D2C 800A612C 00832025 */  or         $a0, $a0, $v1
/* 10D30 800A6130 00852025 */  or         $a0, $a0, $a1
/* 10D34 800A6134 A4E40000 */  sh         $a0, 0x0($a3)
/* 10D38 800A6138 14C0FFE2 */  bnez       $a2, .L800A60C4
/* 10D3C 800A613C 24E70002 */   addiu     $a3, $a3, 0x2
.L800A6140:
/* 10D40 800A6140 03E00008 */  jr         $ra
/* 10D44 800A6144 00000000 */   nop
.size func_800A60A8, . - func_800A60A8
