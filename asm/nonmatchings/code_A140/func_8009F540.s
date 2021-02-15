.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009F540
/* A140 8009F540 3C05800F */  lui        $a1, %hi(D_800EF138)
/* A144 8009F544 8CA5F138 */  lw         $a1, %lo(D_800EF138)($a1)
/* A148 8009F548 18A00010 */  blez       $a1, .L8009F58C
/* A14C 8009F54C 00041400 */   sll       $v0, $a0, 0x10
/* A150 8009F550 00023403 */  sra        $a2, $v0, 0x10
/* A154 8009F554 3C04800F */  lui        $a0, %hi(D_800EECF0)
/* A158 8009F558 2484ECF0 */  addiu      $a0, $a0, %lo(D_800EECF0)
/* A15C 8009F55C 00001821 */  addu       $v1, $zero, $zero
/* A160 8009F560 000528C0 */  sll        $a1, $a1, 3
.L8009F564:
/* A164 8009F564 3C02800F */  lui        $v0, %hi(D_800EECF0)
/* A168 8009F568 00431021 */  addu       $v0, $v0, $v1
/* A16C 8009F56C 8442ECF0 */  lh         $v0, %lo(D_800EECF0)($v0)
/* A170 8009F570 54460003 */  bnel       $v0, $a2, .L8009F580
/* A174 8009F574 24630008 */   addiu     $v1, $v1, 8
/* A178 8009F578 08027D64 */  j          .L8009F590
/* A17C 8009F57C 00801021 */   addu      $v0, $a0, $zero
.L8009F580:
/* A180 8009F580 0065102A */  slt        $v0, $v1, $a1
/* A184 8009F584 1440FFF7 */  bnez       $v0, .L8009F564
/* A188 8009F588 24840008 */   addiu     $a0, $a0, 8
.L8009F58C:
/* A18C 8009F58C 00001021 */  addu       $v0, $zero, $zero
.L8009F590:
/* A190 8009F590 03E00008 */  jr         $ra
/* A194 8009F594 00000000 */   nop
