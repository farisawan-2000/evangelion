.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7D10
/* 32910 800C7D10 40085000 */  mfc0       $t0, $10
/* 32914 800C7D14 2409001E */  addiu      $t1, $zero, 0x1e
/* 32918 800C7D18 3C0A8000 */  lui        $t2, 0x8000
/* 3291C 800C7D1C 408A5000 */  mtc0       $t2, $10
/* 32920 800C7D20 40801000 */  mtc0       $zero, $2
/* 32924 800C7D24 40801800 */  mtc0       $zero, $3
.L800C7D28:
/* 32928 800C7D28 40890000 */  mtc0       $t1, $0
/* 3292C 800C7D2C 00000000 */  nop
/* 32930 800C7D30 42000002 */  tlbwi
/* 32934 800C7D34 00000000 */  nop
/* 32938 800C7D38 00000000 */  nop
/* 3293C 800C7D3C 2129FFFF */  addi       $t1, $t1, -1
/* 32940 800C7D40 0521FFF9 */  bgez       $t1, .L800C7D28
/* 32944 800C7D44 00000000 */   nop
/* 32948 800C7D48 40885000 */  mtc0       $t0, $10
/* 3294C 800C7D4C 03E00008 */  jr         $ra
/* 32950 800C7D50 00000000 */   nop
/* 32954 800C7D54 00000000 */  nop
/* 32958 800C7D58 00000000 */  nop
/* 3295C 800C7D5C 00000000 */  nop
