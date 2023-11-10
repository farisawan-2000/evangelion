glabel func_800A1D10
/* C910 800A1D10 8C820008 */  lw         $v0, 0x8($a0)
/* C914 800A1D14 00052C00 */  sll        $a1, $a1, 16
/* C918 800A1D18 00052B83 */  sra        $a1, $a1, 14
/* C91C 800A1D1C 00A22821 */  addu       $a1, $a1, $v0
/* C920 800A1D20 8CA20000 */  lw         $v0, 0x0($a1)
/* C924 800A1D24 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* C928 800A1D28 93A4001B */  lbu        $a0, 0x1B($sp)
/* C92C 800A1D2C 8C430010 */  lw         $v1, 0x10($v0)
/* C930 800A1D30 8C42000C */  lw         $v0, 0xC($v0)
/* C934 800A1D34 00031902 */  srl        $v1, $v1, 4
/* C938 800A1D38 10600017 */  beqz       $v1, .L800A1D98
/* C93C 800A1D3C 00002821 */   addu      $a1, $zero, $zero
/* C940 800A1D40 30C600FF */  andi       $a2, $a2, 0xFF
/* C944 800A1D44 30E700FF */  andi       $a3, $a3, 0xFF
/* C948 800A1D48 308800FF */  andi       $t0, $a0, 0xFF
/* C94C 800A1D4C 2444000E */  addiu      $a0, $v0, 0xE
.L800A1D50:
/* C950 800A1D50 10C00004 */  beqz       $a2, .L800A1D64
/* C954 800A1D54 00000000 */   nop
/* C958 800A1D58 9082FFFE */  lbu        $v0, -0x2($a0)
/* C95C 800A1D5C 00021023 */  negu       $v0, $v0
/* C960 800A1D60 A082FFFE */  sb         $v0, -0x2($a0)
.L800A1D64:
/* C964 800A1D64 10E00004 */  beqz       $a3, .L800A1D78
/* C968 800A1D68 00000000 */   nop
/* C96C 800A1D6C 9082FFFF */  lbu        $v0, -0x1($a0)
/* C970 800A1D70 00021023 */  negu       $v0, $v0
/* C974 800A1D74 A082FFFF */  sb         $v0, -0x1($a0)
.L800A1D78:
/* C978 800A1D78 11000004 */  beqz       $t0, .L800A1D8C
/* C97C 800A1D7C 24A50001 */   addiu     $a1, $a1, 0x1
/* C980 800A1D80 90820000 */  lbu        $v0, 0x0($a0)
/* C984 800A1D84 00021023 */  negu       $v0, $v0
/* C988 800A1D88 A0820000 */  sb         $v0, 0x0($a0)
.L800A1D8C:
/* C98C 800A1D8C 00A3102A */  slt        $v0, $a1, $v1
/* C990 800A1D90 1440FFEF */  bnez       $v0, .L800A1D50
/* C994 800A1D94 24840010 */   addiu     $a0, $a0, 0x10
.L800A1D98:
/* C998 800A1D98 27BD0008 */  addiu      $sp, $sp, 0x8
/* C99C 800A1D9C 03E00008 */  jr         $ra
/* C9A0 800A1DA0 00000000 */   nop
.size func_800A1D10, . - func_800A1D10
